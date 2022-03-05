;;; Segment .text (23000300)

l23030320:
	c.li	a4,0000000A
	add	s2,s5,a4
	lui	a4,00028008
	addi	a4,a4,+000002CA
	c.add	a4,s2
	lhu	a4,a4,+00000000
	c.srli	a4,0000000F
	c.beqz	a4,0000000023030372

l23030338:
	lui	s3,00042026
	addi	a4,s3,+00000428
	slli	s4,s5,00000002
	c.add	a4,s4
	c.lw	a4,0(a4)
	addi	s3,s3,+00000428
	lbu	a4,a4,+000000A5
	andi	a3,a4,+00000004
	beq	a3,zero,0000000023030522

l23030358:
	andi	s6,a4,+00000020

l2303035C:
	lbu	a0,s0,+0000000C
	beq	s6,zero,000000002303051A

l23030364:
	jal	ra,0000000023037560
	c.andi	a0,00000002

l2303036A:
	bne	a0,zero,0000000023030522

l2303036E:
	c.lw	s0,0(s0)
	c.bnez	s0,000000002303035C

l23030372:
	lhu	a2,s7,+0000004C
	c.li	s0,00000001
	bltu	s0,a2,0000000023030398

l2303037C:
	lui	a3,00042026
	slli	a4,s5,00000002
	addi	a3,a3,+00000428
	c.add	a4,a3
	c.lw	a4,0(a4)
	lbu	s0,a4,+000000A5
	c.srli	s0,00000002
	xori	s0,s0,+00000001
	c.andi	s0,00000001

l23030398:
	lw	a4,s7,+00000008
	beq	a4,zero,000000002303066E

l230303A0:
	beq	s0,zero,000000002303066E

l230303A4:
	addi	a5,s7,+00000008
	c.swsp	a5,00000004
	c.li	a4,00000001
	bltu	a4,a2,0000000023030712

l230303B0:
	lui	s1,00042026
	addi	a0,s1,+000002C8
	jal	ra,000000002302A53C
	lw	s6,s7,+00000008
	c.swsp	s1,0000000C
	c.mv	s4,a0
	beq	s6,zero,000000002303071C

l230303C8:
	lhu	a2,s7,+0000004C
	lui	a3,00042026
	addi	a3,a3,+00000428
	c.slli	a2,02
	c.add	a3,a2
	c.lw	a3,0(a3)
	lbu	s1,a3,+000000A5
	lw	a3,s6,+00000000
	sw	a3,s7,+00000008
	c.bnez	a3,00000000230303EC

l230303E8:
	sw	zero,s7,+0000000C

l230303EC:
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

l23030406:
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
	bgeu	a3,a2,0000000023030440

l23030428:
	c.lwsp	a6,000000E4
	c.sub	a1,s1
	c.sub	a3,a5
	addi	a3,a3,-00000050
	c.srai	a3,00000003
	andi	a2,a3,+000000FF
	blt	a1,a2,0000000023030630

l2303043C:
	andi	s9,a3,+000000FF

l23030440:
	bge	s9,s8,0000000023030448

l23030444:
	andi	s9,s9,+000000FE

l23030448:
	addi	s2,s8,-00000001
	xor	s2,s2,s9
	c.addi	s2,00000001
	andi	s2,s2,+000000FF
	slli	a5,s2,00000010
	c.srli	a5,00000010
	c.swsp	a5,00000088
	bltu	s4,a5,000000002303065C

l23030462:
	slli	a5,s9,00000010
	c.srli	a5,00000010
	c.mv	a3,s0
	c.li	s11,00000000
	c.li	s10,00000000
	c.swsp	a5,00000000

l23030470:
	c.lwsp	s8,000000E4
	c.swsp	a3,0000008C
	addi	a0,a5,+000002C8
	jal	ra,000000002302A36A
	c.lwsp	t3,000000A4
	c.mv	a1,a0
	beq	a3,zero,000000002303063A

l23030484:
	lbu	a3,s6,+0000000A
	c.li	a5,00000001
	c.andi	a3,00000003
	beq	a3,a5,0000000023030492

l23030490:
	c.li	a3,00000002

l23030492:
	sb	a3,a1,+0000000A
	lw	a3,s6,+0000000C
	lhu	s10,a3,+00000006
	lhu	s11,a3,+00000004

l230304A2:
	c.mv	a3,s9
	blt	s9,s8,00000000230304AC

l230304A8:
	andi	a3,s8,+000000FF

l230304AC:
	c.lwsp	zero,000000E4
	sb	a3,a1,+0000000B
	sh	s11,a1,+00000006
	sub	a7,s8,a5
	slli	s8,a7,00000010
	sh	s10,a1,+00000008
	srai	s8,s8,00000010
	c.lwsp	tp,000000A4
	blt	zero,s8,0000000023030650

l230304CC:
	c.li	a2,00000001
	c.mv	a0,s7
	jal	ra,0000000023030166
	c.lwsp	s4,000000E4
	lw	a3,s7,+00000010
	c.add	s3,s2
	sub	s4,s4,a5
	c.slli	s4,10
	andi	s3,s3,+000000FF
	srli	s4,s4,00000010
	bne	a3,zero,0000000023030708

l230304EE:
	sw	s6,s7,+00000010

l230304F2:
	sw	s6,s7,+00000014
	sw	zero,s6,+00000000
	c.li	a5,0000000A
	bltu	a5,s3,000000002303066E

l23030500:
	lw	s6,s7,+00000008
	beq	s6,zero,000000002303071C

l23030508:
	lw	a3,s6,+00000000
	sw	a3,s7,+00000008
	bne	a3,zero,0000000023030406

l23030514:
	sw	zero,s7,+0000000C
	c.j	0000000023030406

l2303051A:
	jal	ra,0000000023037560
	c.andi	a0,00000001
	c.j	000000002303036A

l23030522:
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s7,+00000018
	jal	ra,000000002302A39E
	lw	s6,s0,+00000008
	c.li	a3,0000000C
	lbu	a4,s6,+00000000
	add	a3,a4,a3
	lui	a4,000230B6
	addi	a4,a4,-00000764
	c.add	a4,a3
	c.lw	a4,4(a2)
	beq	a2,zero,0000000023030372

l2303054C:
	addi	a1,sp,+0000002F
	c.mv	a0,s6
	jal	ra,000000002302FD84
	bne	a0,zero,0000000023030372

l2303055A:
	lhu	a4,s0,+00000004
	c.li	a3,0000000A
	c.mv	a1,s6
	add	a4,a4,a3
	lui	a3,00028008
	addi	a2,a3,+000002CE
	c.add	s3,s4
	c.add	a4,a2
	lhu	a0,a4,+00000000
	lui	a4,0004200F
	lw	a4,a4,+000003D0
	lbu	a2,sp,+0000002F
	c.add	a0,a3
	c.jalr	a4
	c.lw	s0,8(a0)
	jal	ra,000000002302BB4A
	lw	a4,s3,+00000000
	lbu	a4,a4,+000000A5
	c.andi	a4,00000001
	c.beqz	a4,00000000230305A2

l23030598:
	lbu	a4,sp,+0000002F
	c.addi	a4,00000004
	sb	a4,sp,+0000002F

l230305A2:
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
	c.beqz	a3,000000002303061C

l230305EE:
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

l2303061C:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002302A2FE
	lbu	a4,s7,+00000048
	c.addi	a4,00000001
	sb	a4,s7,+00000048
	c.j	0000000023030372

l23030630:
	sub	a6,s9,s1
	andi	s9,a6,+000000FF
	c.j	0000000023030440

l2303063A:
	c.li	a5,00000001
	sb	a5,a0,+0000000A
	c.lwsp	zero,000000E4
	add	t1,a5,s10
	slli	s10,t1,00000010
	srli	s10,s10,00000010
	c.j	00000000230304A2

l23030650:
	c.li	a2,00000000
	c.mv	a0,s7
	jal	ra,0000000023030166
	c.li	a3,00000000
	c.j	0000000023030470

l2303065C:
	lw	a3,s7,+00000008
	c.bnez	a3,0000000023030666

l23030662:
	sw	s6,s7,+0000000C

l23030666:
	sw	a3,s6,+00000000
	sw	s6,s7,+00000008

l2303066E:
	addi	a4,zero,+0000005C
	add	s5,s5,a4
	lw	a5,s7,+00000020
	lui	a4,00028008
	addi	a2,a4,+0000008E
	c.add	a2,s5
	c.beqz	a5,000000002303072C

l23030686:
	c.li	a0,0000000A
	addi	a3,a4,+000002CA

l2303068C:
	lhu	a4,a5,+00000004
	add	a1,a4,a0
	c.add	a1,a3
	lhu	a1,a1,+00000000
	c.srli	a1,0000000F
	c.bnez	a1,0000000023030724

l2303069E:
	c.li	a5,0000000A
	add	a4,a4,a5
	addi	a4,a4,+000002CA
	c.slli	a4,10
	c.srli	a4,00000010

l230306AC:
	lui	a5,000230CC
	lbu	a3,a5,-0000068F
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

l230306DC:
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

l23030708:
	lw	a3,s7,+00000014
	sw	s6,a3,+00000000
	c.j	00000000230304F2

l23030712:
	addi	a1,s7,+00000008
	c.mv	a0,s1
	jal	ra,000000002302A49E

l2303071C:
	c.lwsp	s0,00000044
	jal	ra,000000002302A2D6
	c.j	000000002303066E

l23030724:
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303068C

l23030728:
	c.li	a4,00000000
	c.j	00000000230306AC

l2303072C:
	lui	a5,000230CC
	lbu	a4,a5,-00000690
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
	c.j	00000000230306DC

;; lld_pdu_tx_flush: 23030760
;;   Called from:
;;     2302E026 (in lld_evt_init)
;;     2302E158 (in lld_evt_elt_delete)
;;     2303958A (in hci_flush_cmd_handler)
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

l2303077A:
	c.lw	s1,24(a5)
	c.bnez	a5,00000000230307BE

l2303077E:
	csrrw	zero,mstatus,zero
	addi	a0,s1,+00000020
	jal	ra,000000002302FEB2
	c.mv	s0,a0
	addi	a0,s1,+00000008
	jal	ra,000000002302FEB2
	c.add	s0,a0
	addi	a0,s1,+00000010
	jal	ra,000000002302FEB2
	andi	s0,s0,+000000FF
	c.add	a0,s0
	andi	a1,a0,+000000FF
	c.beqz	a1,00000000230307D4

l230307AA:
	c.lwsp	s8,00000004
	lhu	a0,s1,+0000004C
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002302D6B6

l230307BE:
	c.mv	a0,s3
	jal	ra,000000002302A36A
	c.mv	s0,a0
	c.lw	a0,8(a0)
	jal	ra,000000002302BB4A
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.j	000000002303077A

l230307D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_pdu_adv_pack: 230307E2
;;   Called from:
;;     23031944 (in lld_con_start)
lld_pdu_adv_pack proc
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,000230B6
	addi	a5,a5,-000007B8
	c.mv	a4,a1
	c.mv	a1,a2
	c.add	a5,a0
	c.lw	a5,4(a2)
	c.beqz	a2,0000000023030800

l230307FA:
	c.mv	a0,a4
	jal	zero,000000002302FD84

l23030800:
	c.li	a0,00000002
	c.jr	ra

;; lld_pdu_rx_handler: 23030804
;;   Called from:
;;     2302F6D0 (in lld_evt_end)
;;     2302F872 (in lld_evt_rx)
;;     2302F8B4 (in lld_evt_rx_afs)
lld_pdu_rx_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s6,00000018
	lui	s6,00042026
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s11,0000008C
	addi	a5,s6,+000002C8
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	lbu	s2,a5,+0000015C
	lui	s7,00042026
	lui	s8,000230B6
	c.mv	s3,a0
	c.mv	s4,a1
	addi	s6,s6,+000002C8
	lui	s5,00028008
	addi	s7,s7,+00000428
	lui	s11,0004200F
	addi	s8,s8,-00000764

l2303084C:
	c.addi	s4,FFFFFFFF
	andi	s4,s4,+000000FF
	addi	a5,zero,+000000FF
	bne	s4,a5,000000002303087C

l2303085A:
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

l2303087C:
	lbu	a5,s3,+00000056
	c.andi	a5,00000010
	bne	a5,zero,0000000023030A8E

l23030886:
	c.li	a1,00000000
	c.li	a0,00000010
	jal	ra,000000002302BA5A
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
	c.beqz	a2,0000000023030908

l230308FC:
	andi	a4,a4,+00000040
	c.bnez	a4,0000000023030908

l23030902:
	c.andi	a5,FFFFFFFE
	sb	a5,s3,+00000056

l23030908:
	lhu	a5,s0,+00000006
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a4,a5,0000000023030A78

l23030918:
	srli	a5,a3,00000008
	sb	a5,s0,+0000000A
	lbu	a5,s3,+00000056
	andi	a4,a5,+00000002
	c.beqz	a4,000000002303094E

l2303092A:
	lhu	a4,s0,+00000008
	c.andi	a4,00000001
	c.bnez	a4,000000002303094E

l23030932:
	c.andi	a5,FFFFFFFD
	sb	a5,s3,+00000056
	lhu	a5,s0,+00000006
	c.slli	a5,02
	c.add	a5,s7
	c.lw	a5,0(a4)
	lhu	a5,a4,+0000005C
	ori	a5,a5,+00000100
	sh	a5,a4,+0000005C

l2303094E:
	lhu	a5,s0,+00000008
	andi	a5,a5,+0000013F
	c.bnez	a5,00000000230309FE

l23030958:
	lbu	a5,s0,+0000000A
	c.beqz	a5,00000000230309FE

l2303095E:
	lhu	s1,s0,+00000006
	andi	a4,a3,+00000003
	slli	a3,s1,00000002
	c.add	a3,s7
	c.lw	a3,0(a3)
	lbu	a3,a3,+000000A5
	c.andi	a3,00000002
	c.beqz	a3,000000002303097C

l23030976:
	c.addi	a5,FFFFFFFC
	sb	a5,s0,+0000000A

l2303097C:
	c.beqz	a4,00000000230309FE

l2303097E:
	c.li	a5,00000002
	bgeu	a5,a4,0000000023030A3C

l23030984:
	c.li	a5,00000003
	bne	a4,a5,00000000230309FE

l2303098A:
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
	jal	ra,000000002302BC8C
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
	lw	a5,s11,+000003D0
	c.slli	a4,10
	c.srli	a4,00000010
	add	a1,a4,s5
	c.swsp	a4,00000004
	c.jalr	a5
	lbu	a5,s9,+00000002
	c.li	a3,00000015
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000008
	bgeu	a3,a5,0000000023030A0E

l230309E4:
	c.li	a5,00000019

l230309E6:
	sb	a5,s9,+00000000

l230309EA:
	lbu	a1,s9,+00000000
	c.li	a3,00000001
	c.mv	a2,s10
	c.mv	a0,s1
	jal	ra,00000000230374A8
	c.mv	a0,s9
	jal	ra,000000002302BCFA

l230309FE:
	lbu	a0,s0,+00000004
	jal	ra,000000002302CC48
	c.li	a5,00000001
	sb	a5,s0,+00000005
	c.j	0000000023030A78

l23030A0E:
	c.li	a3,0000000C
	add	a5,a5,a3
	c.add	a5,s8
	lbu	a1,a5,+00000000
	beq	a1,a6,0000000023030A22

l23030A1E:
	c.li	a5,0000001E
	c.j	00000000230309E6

l23030A22:
	addi	a0,a4,+00000001
	c.lw	a5,8(a5)
	c.addi	a1,FFFFFFFF
	c.slli	a0,10
	sb	zero,s9,+00000000
	c.mv	a2,s10
	andi	a1,a1,+000000FF
	c.srli	a0,00000010
	c.jalr	a5
	c.j	00000000230309EA

l23030A3C:
	slli	a2,s1,00000008
	ori	a2,a2,+00000001
	c.slli	a2,10
	c.srli	a2,00000010
	c.li	a3,00000008
	c.mv	a1,a2
	addi	a0,zero,+00000100
	c.swsp	a4,00000004
	jal	ra,000000002302BC8C
	lhu	a3,s0,+00000006
	c.lwsp	s0,000000C4
	sh	a3,a0,+00000000
	lbu	a3,s0,+0000000A
	sb	a4,a0,+00000002
	sh	a3,a0,+00000004
	lbu	a4,s0,+00000004
	sb	a4,a0,+00000006
	jal	ra,000000002302BCFA

l23030A78:
	lui	a5,00042026
	c.mv	a1,s0
	addi	a0,a5,+00000448
	jal	ra,000000002302A2FE

l23030A86:
	c.addi	s2,00000001
	andi	s2,s2,+00000007
	c.j	000000002303084C

l23030A8E:
	c.mv	a0,s2
	jal	ra,000000002302CC48
	c.j	0000000023030A86

;; lld_sleep_init: 23030A96
;;   Called from:
;;     230311B6 (in lld_init)
lld_sleep_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFE0
	lui	a0,00042013
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	a2,00000014
	c.li	a1,00000000
	addi	s3,a0,+000001B8
	addi	a0,a0,+000001B8
	c.jalr	a5
	c.lui	s1,00001000
	addi	a0,s1,+00000388
	jal	ra,000000002302A2C6
	c.mv	s2,a0
	addi	a0,s1,+00000388
	jal	ra,000000002302A2C6
	c.mv	s0,a0
	addi	a0,zero,+00000271
	jal	ra,000000002302A2C6
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
	jal	ra,000000002302A206
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

;; lld_sleep_wakeup: 23030B1E
;;   Called from:
;;     2302A24C (in rwip_wakeup)
lld_sleep_wakeup proc
	lui	a4,00028000
	c.lw	a4,48(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.sw	a4,48(a5)
	lui	a5,00042013
	addi	a5,a5,+000001B8
	lbu	a3,a5,+00000009
	c.beqz	a3,0000000023030B58

l23030B38:
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

l23030B58:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a4,56(a0)
	lbu	a4,a5,+00000008
	c.beqz	a4,0000000023030BCE

l23030B64:
	c.lw	a5,4(a4)
	sb	zero,a5,+00000008
	c.sub	a0,a4

l23030B6C:
	jal	ra,000000002302A29A
	lui	a3,00042026
	addi	a5,a3,+00000430
	lbu	a5,a5,+0000002A
	addi	a4,zero,+00000271
	addi	a3,a3,+00000430
	c.add	a0,a5
	srl	a4,a0,a4
	addi	a5,zero,+00000271
	add	a5,a4,a5
	sub	a0,a5,a0
	addi	a0,a0,+00000270
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000000
	c.bnez	a0,0000000023030BAA

l23030BA2:
	c.addi	a4,00000001
	c.li	a5,00000001
	addi	a0,zero,+00000270

l23030BAA:
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

l23030BCE:
	c.sw	a5,4(a0)
	c.j	0000000023030B6C

;; lld_sleep_wakeup_end: 23030BD2
;;   Called from:
;;     2302A284 (in rwip_wakeup_end)
lld_sleep_wakeup_end proc
	lui	a5,00042013
	lw	a4,a5,+000001B8
	lui	a5,00028000
	c.sw	a5,12(a4)
	c.jr	ra

;; lld_util_instant_get: 23030BE2
;;   Called from:
;;     23035E8A (in llc_llcp_ch_map_update_pdu_send)
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

;; lld_util_set_bd_address: 23030C02
;;   Called from:
;;     23032ABE (in llm_util_apply_bd_addr)
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

;; lld_util_freq2chnl: 23030C48
;;   Called from:
;;     23032788 (in lld_test_mode_tx)
;;     23032938 (in lld_test_mode_rx)
lld_util_freq2chnl proc
	c.li	a5,0000000C
	beq	a0,a5,0000000023030C6A

l23030C4E:
	addi	a5,zero,+00000027
	beq	a0,a5,0000000023030C74

l23030C56:
	c.beqz	a0,0000000023030C70

l23030C58:
	c.li	a5,0000000B
	bltu	a5,a0,0000000023030C66

l23030C5E:
	c.addi	a0,FFFFFFFF

l23030C60:
	andi	a0,a0,+000000FF
	c.jr	ra

l23030C66:
	c.addi	a0,FFFFFFFE
	c.j	0000000023030C60

l23030C6A:
	addi	a0,zero,+00000026
	c.jr	ra

l23030C70:
	addi	a0,zero,+00000025

l23030C74:
	c.jr	ra

;; lld_util_get_local_offset: 23030C76
;;   Called from:
;;     23031FA2 (in lld_con_update_after_param_req)
;;     230321FE (in lld_con_param_rsp)
lld_util_get_local_offset proc
	and	a2,a2,a1
	c.add	a0,a2
	or	a0,a0,a1
	c.jr	ra

;; lld_util_get_peer_offset: 23030C82
;;   Called from:
;;     2302F388 (in lld_evt_move_to_slave)
;;     23032012 (in lld_con_update_after_param_req)
;;     23032242 (in lld_con_param_rsp)
;;     2303232C (in lld_con_param_req)
lld_util_get_peer_offset proc
	and	a2,a2,a1
	c.add	a0,a1
	c.sub	a0,a2
	or	a0,a0,a1
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; lld_util_connection_param_set: 23030C94
;;   Called from:
;;     2302F052 (in lld_evt_update_create)
;;     230315CC (in lld_scan_start)
;;     23031976 (in lld_con_start)
lld_util_connection_param_set proc
	lhu	a5,a1,+00000000
	lbu	a4,a0,+00000019
	c.lw	a1,4(a3)
	sub	a4,a5,a4
	bgeu	a4,a3,0000000023030CA8

l23030CA6:
	c.sw	a1,4(a4)

l23030CA8:
	c.lw	a1,4(a4)
	c.bnez	a4,0000000023030CB0

l23030CAC:
	c.li	a4,00000002
	c.sw	a1,4(a4)

l23030CB0:
	c.lw	a1,4(a4)
	addi	a3,zero,+00000271
	add	a4,a4,a3
	lhu	a3,a1,+00000008
	c.sw	a1,4(a4)
	c.lw	a0,8(a4)
	and	a4,a4,a5
	bltu	a3,a4,0000000023030CDA

l23030CCA:
	c.bnez	a4,0000000023030CD4

l23030CCC:
	c.bnez	a3,0000000023030CD4

l23030CCE:
	sh	a5,a1,+00000008
	c.jr	ra

l23030CD4:
	sub	a5,a3,a4
	c.j	0000000023030CCE

l23030CDA:
	c.add	a5,a3
	c.sub	a5,a4
	c.j	0000000023030CCE

;; lld_util_dle_set_cs_fields: 23030CE0
;;   Called from:
;;     2302DD1C (in lld_evt_schedule)
lld_util_dle_set_cs_fields proc
	addi	a5,zero,+0000005C
	add	a5,a0,a5
	lui	a2,00028008
	lui	a4,00042026
	addi	a1,a2,+000000B0
	addi	a4,a4,+00000428
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

;; lld_util_anchor_point_move: 23030D28
;;   Called from:
;;     23038308 (in llc_util_bw_mgt)
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
	jal	ra,0000000023029704
	c.bnez	a0,0000000023030E22

l23030D86:
	lhu	a1,s0,+00000074
	addi	a3,zero,+00000022
	c.li	a2,00000002
	c.slli	a1,08
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a0,zero,+00000109
	jal	ra,000000002302BC8C
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
	jal	ra,000000002302BCFA

l23030E22:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; lld_util_flush_list: 23030E2A
;;   Called from:
;;     2302DF74 (in lld_evt_init)
;;     2302DF7C (in lld_evt_init)
;;     23033F42 (in llm_set_scan_en)
;;     230341BE (in llm_init)
;;     230341CA (in llm_init)
lld_util_flush_list proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l23030E32:
	c.mv	a0,s0
	jal	ra,000000002302A36A
	c.beqz	a0,0000000023030E40

l23030E3A:
	jal	ra,000000002302BB4A
	c.j	0000000023030E32

l23030E40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_util_instant_ongoing: 23030E48
;;   Called from:
;;     230368EC (in llcp_channel_map_ind_handler)
;;     23036A5A (in llcp_con_upd_ind_handler)
lld_util_instant_ongoing proc
	lbu	a0,a0,+0000006D
	sltu	a0,zero,a0
	c.jr	ra

;; lld_util_compute_ce_max: 23030E52
;;   Called from:
;;     23031D74 (in lld_move_to_master)
;;     230320A4 (in lld_con_update_after_param_req)
;;     230325B2 (in lld_move_to_slave)
;;     230362A4 (in llc_llcp_start_enc_rsp_pdu_send)
;;     23036592 (in llcp_length_rsp_handler)
;;     230373E6 (in llcp_length_req_handler)
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
	bne	t1,a4,0000000023030E9E

l23030E90:
	lui	a4,00028000
	c.lw	a4,0(a4)
	c.srli	a4,00000004
	c.andi	a4,0000000F

l23030E9A:
	c.srai	a4,00000001
	c.j	0000000023030EBE

l23030E9E:
	addi	a2,a2,+000000A2
	c.add	a2,a3
	lhu	a4,a2,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	slli	a2,a4,00000010
	c.srai	a2,00000010
	bge	a2,zero,0000000023030E9A

l23030EB6:
	c.slli	a4,11
	c.srli	a4,00000012
	add	a4,a4,a7

l23030EBE:
	andi	a2,a6,+00000200
	c.sub	a5,a4
	addi	a4,a1,+0000015C
	c.beqz	a2,0000000023030ECE

l23030ECA:
	addi	a4,a1,+0000017C

l23030ECE:
	srli	a2,a4,00000001
	srl	a5,a5,a4
	add	a5,a5,a4
	addi	a4,a4,-00000271
	c.sub	a5,a2
	addi	a2,zero,+00000271
	srl	a5,a5,a2
	addi	a2,zero,+00000096
	add	a4,a4,a5
	bge	a2,a4,0000000023030EF6

l23030EF4:
	c.addi	a5,FFFFFFFF

l23030EF6:
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
	bgeu	a5,a3,0000000023030F28

l23030F24:
	sh	a1,a4,+00000000

l23030F28:
	c.jr	ra

;; lld_util_priority_set: 23030F2A
;;   Called from:
;;     2302EDB4 (in lld_evt_scan_create)
;;     2302EF7C (in lld_evt_move_to_master)
;;     2302F29C (in lld_evt_move_to_slave)
;;     2302F600 (in lld_evt_adv_create)
;;     230317A0 (in lld_con_start)
lld_util_priority_set proc
	lui	a5,000230B5
	c.li	a4,00000006
	addi	a5,a5,-00000100
	bltu	a4,a1,0000000023030F56

l23030F38:
	lui	a4,000230B6
	addi	a4,a4,-00000604
	c.slli	a1,02
	c.add	a1,a4
	c.lw	a1,0(a4)
	c.jr	a4
23030F48                         37 67 02 42 03 27 47 47         7g.B.'GG
23030F50 03 47 17 02 01 C7                               .G....         

l23030F56:
	lbu	a5,a5,+0000000A
	c.j	0000000023030F60
23030F5C                                     83 C7 C7 00             ....

l23030F60:
	sb	a5,a0,+00000016
	sb	a5,a0,+0000007D
	c.jr	ra
23030F6A                               83 C7 07 00 CD BF           ......
23030F70 83 C7 67 00 F5 B7 83 C7 87 00 DD B7 83 C7 27 00 ..g...........'.
23030F80 C5 B7 83 C7 47 00 E9 BF                         ....G...       

;; lld_util_get_tx_pkt_cnt: 23030F88
;;   Called from:
;;     23035A02 (in llcp_pause_enc_req_handler)
;;     23035B88 (in llcp_enc_req_handler)
;;     23038112 (in llc_check_trafic_paused)
;;     23038FCE (in hci_le_start_enc_cmd_handler)
lld_util_get_tx_pkt_cnt proc
	lbu	a0,a0,+00000070
	c.jr	ra

;; lld_util_eff_tx_time_set: 23030F8E
;;   Called from:
;;     23031D66 (in lld_move_to_master)
;;     230325A4 (in lld_move_to_slave)
;;     230365D4 (in llcp_length_rsp_handler)
;;     23037428 (in llcp_length_req_handler)
lld_util_eff_tx_time_set proc
	sh	a1,a0,+00000068
	sh	a2,a0,+0000006A
	c.jr	ra

;; lld_init: 23030F98
;;   Called from:
;;     2302922E (in rwble_init)
;;     23029274 (in rwble_reset)
lld_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.bnez	a0,0000000023030FB2

l23030FA4:
	lui	a1,000230B6
	addi	a1,a1,-000005E8
	c.li	a0,00000002
	jal	ra,0000000023035342

l23030FB2:
	lui	a5,00028000
	c.lw	a5,0(a4)
	lui	a3,000FC010
	c.addi	a3,FFFFFFFF
	andi	a4,a4,-000000F1
	ori	a4,a4,+000000E0
	c.sw	a5,0(a4)
	lw	a4,a5,+000000F0
	lui	s0,0004200F
	lui	a0,000230CC
	andi	a4,a4,-00000200
	ori	a4,a4,+000000D2
	sw	a4,a5,+000000F0
	lw	a4,a5,+000000F0
	addi	a1,s0,+000003E4
	addi	a0,a0,-00000688
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
	jal	ra,000000002302A58E
	bne	a0,zero,000000002303125C

l23031020:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.li	a2,00000006
	addi	a1,s0,+000003E4

l2303102E:
	c.addi4spn	a0,00000008
	c.jalr	a5
	lui	a0,00042026
	c.li	a1,00000000
	addi	a0,a0,+00000513
	jal	ra,000000002302B664
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
	lui	a2,00042025
	c.sw	a4,44(a3)
	addi	a2,a2,+0000072C
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

l230311A2:
	sh	zero,a5,+00000000
	sh	zero,a5,+00000002
	c.addi	a5,00000004
	bne	a5,a4,00000000230311A2

l230311B0:
	c.mv	a0,s1
	jal	ra,000000002302DF44
	jal	ra,0000000023030A96
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
	jal	ra,0000000023028E48
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

l2303125C:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,00000006
	c.li	a1,00000007
	c.j	000000002303102E

;; lld_core_reset: 2303126A
;;   Called from:
;;     2302926E (in rwble_reset)
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

l23031288:
	c.lw	a4,0(a5)
	blt	a5,zero,0000000023031288

l2303128E:
	c.lw	a4,0(a5)
	lui	a3,000C0000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00040000
	c.or	a5,a3
	c.sw	a4,0(a5)
	lui	a4,00028000

l230312A4:
	c.lw	a4,0(a5)
	slli	a3,a5,00000001
	blt	a3,zero,00000000230312A4

l230312AE:
	lui	a4,00028008
	lui	a5,00028008
	addi	a3,a4,+00000040

l230312BA:
	sh	zero,a4,+00000000
	sh	zero,a4,+00000002
	c.addi	a4,00000004
	bne	a4,a3,00000000230312BA

l230312C8:
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
	jal	ra,0000000023028E48
	lui	a5,00028000
	sw	zero,a5,+0000000C
	c.li	a4,FFFFFFFF
	c.sw	a5,24(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; lld_adv_start: 23031358
;;   Called from:
;;     23033C1E (in llm_set_adv_en)
;;     23033C4E (in llm_set_adv_en)
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
	bne	a4,a5,000000002303150C

l2303137E:
	lbu	a3,a0,+00000021
	addi	s7,zero,+000005DC
	c.bnez	a3,0000000023031396

l23031388:
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	sh	a5,a0,+00000018
	addi	s7,zero,+000004E2

l23031396:
	lhu	a2,s2,+00000018
	lhu	a1,s2,+00000016
	c.li	a0,00000002
	jal	ra,000000002302F5B4
	c.mv	s1,a0
	beq	a0,zero,00000000230314F4

l230313AA:
	lui	a4,00028008
	lhu	a5,a4,+0000014A
	addi	s5,a0,+00000028
	c.li	a1,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000002
	sh	a5,a4,+0000014A
	lui	a5,000230CC
	lbu	a4,a5,-0000068E
	lbu	a0,s2,+0000001C
	srli	a3,a4,00000001
	andi	a5,a4,+00000001
	c.srli	a4,00000002
	andi	a2,a3,+00000001
	c.andi	a4,00000001
	c.li	a3,00000004
	bne	a0,a1,00000000230313F2

l230313E8:
	lbu	a3,s2,+00000021
	sltiu	a3,a3,+00000001
	c.addi	a3,00000004

l230313F2:
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
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	jal	ra,000000002303028A
	beq	s3,zero,00000000230314C4

l230314BC:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002303028A

l230314C4:
	c.mv	a0,s5
	jal	ra,0000000023030120
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002302EAA0
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

l230314F4:
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

l2303150C:
	c.li	a3,00000001
	addi	s7,zero,+000005DC
	c.j	0000000023031396

;; lld_adv_stop: 23031514
;;   Called from:
;;     23033C98 (in llm_set_adv_en)
lld_adv_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302E0A8
	c.bnez	a0,0000000023031540

l23031526:
	lbu	a5,s0,+0000007E
	lui	a4,00028000
	lui	a3,00002000
	ori	a5,a5,+00000010
	sb	a5,s0,+0000007E
	c.lw	a4,0(a5)
	c.or	a5,a3
	c.sw	a4,0(a5)

l23031540:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_scan_start: 23031548
;;   Called from:
;;     23033FEC (in llm_set_scan_en)
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
	jal	ra,000000002302ED70
	c.mv	s0,a0
	beq	a0,zero,00000000230316A4

l2303156E:
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
	jal	ra,0000000023029DE2
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sh	zero,sp,+00000024
	sb	zero,sp,+0000002C
	jal	ra,0000000023029704
	bne	a0,zero,00000000230316B2

l230315B8:
	lhu	a5,sp,+0000001A
	c.lwsp	t3,000000C4
	c.addi4spn	a1,0000000C
	sh	a5,s0,+00000078
	c.mv	a0,s0
	sh	a5,sp,+0000000C
	c.swsp	a4,00000008
	jal	ra,0000000023030C94
	lui	a5,00028008
	lhu	a4,a5,+000001A6
	sltu	a1,zero,s1
	c.addi	a1,00000008
	c.slli	a4,10
	c.srli	a4,00000010
	c.andi	a4,FFFFFFE0
	ori	a4,a4,+00000003
	sh	a4,a5,+000001A6
	lui	a4,000230CC
	lbu	a3,a4,-0000068D
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
	c.beqz	s1,0000000023031676

l23031666:
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002303028A
	addi	a0,s0,+00000028
	jal	ra,0000000023030120

l23031676:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302EAA0
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

l230316A4:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l230316B2:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002302DD8C
	c.li	s0,00000000
	c.j	00000000230316A4

;; lld_scan_stop: 230316C0
;;   Called from:
;;     2302EE66 (in lld_evt_move_to_master)
;;     23033F36 (in llm_set_scan_en)
;;     2303A3EE (in hci_le_create_con_cancel_cmd_handler)
lld_scan_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302E0A8
	c.bnez	a0,00000000230316EC

l230316D2:
	lbu	a5,s0,+0000007E
	lui	a4,00028000
	lui	a3,00001000
	ori	a5,a5,+00000010
	sb	a5,s0,+0000007E
	c.lw	a4,0(a5)
	c.or	a5,a3
	c.sw	a4,0(a5)

l230316EC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_con_start: 230316F4
;;   Called from:
;;     230344DA (in llm_create_con)
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
	jal	ra,000000002302965E
	c.mv	s0,a0
	addi	a0,zero,+00000058
	jal	ra,000000002302965E
	sh	zero,sp,+00000004
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	beq	s0,zero,0000000023031D0C

l23031736:
	c.mv	s3,a0
	beq	a0,zero,0000000023031D08

l2303173C:
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
	lui	s8,0002302E
	lui	s7,0002302F
	lui	s6,0002302E
	addi	s4,zero,+0000005C
	c.sw	s0,84(a5)
	jal	ra,000000002302E056
	sh	s1,s0,+00000074
	sb	s10,s0,+0000007B
	lhu	a5,s2,+00000000
	c.li	a1,00000001
	c.mv	a0,s0
	sh	a5,s0,+00000078
	addi	a5,zero,+000001A2
	sh	a5,s0,+00000076
	jal	ra,0000000023030F2A
	addi	a5,s8,-000003EA
	c.sw	s0,28(a5)
	addi	a5,s7,-000004EA
	c.sw	s0,36(a5)
	addi	a5,s6,-00000512
	c.sw	s0,32(a5)
	c.lui	a5,00006000
	sh	a5,s0,+00000010
	jal	ra,000000002302988C
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
	jal	ra,0000000023029DE2
	c.addi4spn	a1,00000004
	c.addi4spn	a0,00000028
	sh	zero,sp,+00000034
	sb	zero,sp,+0000003C
	jal	ra,0000000023029704
	addi	s8,s8,-000003EA
	addi	s7,s7,-000004EA
	addi	s6,s6,-00000512
	beq	a0,s10,0000000023031CF8

l2303183E:
	jal	ra,0000000023065C28
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
	jal	ra,0000000023065C28
	lui	a4,00042026
	addi	a4,a4,+00000460
	lbu	a5,a4,+00000042
	lui	a3,000230CC
	addi	a3,a3,-0000067C
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
	lui	a2,000230CC
	addi	a2,a2,-00000680
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
	jal	ra,0000000023032AEC
	andi	a0,s10,+0000000F
	c.li	a5,00000004
	bltu	a5,a0,0000000023031918

l23031916:
	c.addi	a0,00000005

l23031918:
	lui	a5,00042026
	lbu	a5,a5,+00000458
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
	jal	ra,00000000230307E2
	lhu	a0,s1,+000002EC
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lbu	a2,sp,+00000003
	c.addi4spn	a1,00000010
	c.add	a0,s1
	c.jalr	a5
	lbu	a0,s2,+0000000C
	jal	ra,0000000023032AA8
	c.mv	a1,s9
	c.mv	a0,s0
	sw	s3,s0,+00000004
	jal	ra,000000002303028A
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023030C94
	lhu	a5,s1,+000001A6
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000003
	sh	a5,s1,+000001A6
	lui	a5,000230CC
	lbu	a4,a5,-0000068C
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
	bltu	a4,a5,0000000023031A5C

l23031A50:
	lhu	a4,sp,+0000001A
	c.slli	a4,01
	c.add	a5,a4
	sh	a5,sp,+0000000C

l23031A5C:
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
	jal	ra,000000002302E056
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
	c.beqz	a5,0000000023031AE6

l23031AD8:
	addi	a4,zero,+00000271
	add	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010

l23031AE6:
	lui	a5,000230B5
	lbu	a5,a5,-000000FA
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
	lui	a4,00042025
	lbu	a3,a4,+00000758
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
	jal	ra,0000000023032A54
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
	jal	ra,000000002302EAA0
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

l23031CD8:
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

l23031CF8:
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.mv	a0,s3

l23031D00:
	jal	ra,000000002302BB4A
	c.li	s0,00000000
	c.j	0000000023031CD8

l23031D08:
	c.mv	a0,s0
	c.j	0000000023031D00

l23031D0C:
	jal	ra,000000002302BB4A
	c.j	0000000023031CD8

;; lld_move_to_master: 23031D12
;;   Called from:
;;     23033590 (in llm_con_req_tx_cfm)
lld_move_to_master proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a3
	c.mv	s3,a1
	jal	ra,000000002302EE14
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
	jal	ra,0000000023030F8E
	c.mv	a0,s2
	addi	a2,zero,+00000148
	addi	a1,zero,+00000148
	jal	ra,0000000023030E52
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
	jal	ra,000000002302EAA0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_con_update_req: 23031E70
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
	bgeu	a1,a6,0000000023031EA8

l23031EA6:
	c.li	a1,00000002

l23031EA8:
	c.slli	a1,10
	addi	a6,sp,+00000008
	c.srli	a1,00000010
	jal	ra,000000002302EFA6
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

;; lld_con_update_after_param_req: 23031EF0
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
	jal	ra,0000000023029DE2
	lhu	a0,s1,+00000016
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	lw	a2,s5,+00000008
	lhu	a1,sp,+0000000C
	beq	a0,a5,0000000023032102

l23031F82:
	lhu	a4,s5,+00000060
	lhu	a5,s1,+00000014
	lhu	a3,s5,+00000078
	bgeu	a5,a4,00000000230320F8

l23031F92:
	sub	a5,a4,a5
	add	a5,a5,a3
	c.sub	a2,a5

l23031F9C:
	c.slli	a0,01
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023030C76
	sh	a0,sp,+00000024

l23031FAA:
	lbu	a5,sp,+00000024
	lbu	a4,sp,+00000026
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	c.li	a5,00000001
	beq	a4,a5,000000002303210C

l23031FBE:
	c.li	s4,00000000

l23031FC0:
	addi	a0,zero,+00000058
	jal	ra,000000002302965E
	c.mv	s7,a0
	beq	a0,zero,000000002303212E

l23031FCE:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.mv	a1,s5
	addi	a2,zero,+0000002C
	c.jalr	a5
	addi	a0,s7,+00000028
	jal	ra,000000002302E056
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
	bne	a0,a5,0000000023032148

l2303200A:
	lw	a2,s5,+00000008
	lhu	a0,sp,+00000014
	jal	ra,0000000023030C82
	c.srli	a0,00000001
	lhu	a5,s5,+00000060
	c.slli	a0,10
	c.srli	a0,00000010

l23032020:
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
	bgeu	s6,a5,000000002303214E

l2303205A:
	sub	a5,a5,s6
	add	s0,a5,s0
	c.add	s0,a0

l23032064:
	or	s0,s0,a3
	c.li	s8,00000001
	c.mv	a0,s7
	c.slli	s0,10
	c.srli	s0,00000010
	add	a5,s0,a4
	c.slli	a5,05
	c.srli	a5,00000005
	sw	a5,s7,+00000008
	lui	a5,00042026
	slli	a4,s3,00000002
	addi	s3,a5,+00000428
	sw	s7,s5,+00000004
	c.add	s3,a4
	lw	a5,s3,+00000000
	sh	s6,s5,+0000005C
	sb	s8,s5,+0000006D
	lhu	a2,a5,+00000050
	lhu	a1,a5,+0000004E
	c.srli	s0,00000001
	jal	ra,0000000023030E52
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
	c.j	000000002303212E

l230320F8:
	c.sub	a5,a4
	add	a5,a5,a3
	c.add	a2,a5
	c.j	0000000023031F9C

l23032102:
	and	a2,a2,a1
	sh	a2,sp,+00000024
	c.j	0000000023031FAA

l2303210C:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023029704
	beq	a0,zero,0000000023031FBE

l23032118:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sb	zero,sp,+00000026
	jal	ra,0000000023029704
	beq	a0,zero,0000000023031FBE

l23032128:
	c.li	s4,0000001F
	bne	s0,zero,0000000023031FC0

l2303212E:
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

l23032148:
	lhu	a5,s1,+00000014
	c.j	0000000023032020

l2303214E:
	sub	a5,s6,a5
	add	s0,a5,s0
	c.sub	s0,a0
	or	s0,s0,a3
	sub	s0,a3,s0
	c.j	0000000023032064

;; lld_con_param_rsp: 23032162
;;   Called from:
;;     23036F42 (in llcp_con_param_req_handler)
;;     23038C98 (in hci_le_rem_con_param_req_reply_cmd_handler)
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
	jal	ra,0000000023029DE2
	lhu	a0,s0,+00000016
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.lw	s1,8(a2)
	lhu	a1,sp,+0000000C
	beq	a0,a5,0000000023032282

l230321DE:
	lhu	a4,s1,+00000060
	lhu	a5,s0,+00000014
	lhu	a3,s1,+00000078
	bgeu	a5,a4,0000000023032278

l230321EE:
	sub	a5,a4,a5
	add	a5,a5,a3
	c.sub	a2,a5

l230321F8:
	c.slli	a0,01
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023030C76
	sh	a0,sp,+00000024

l23032206:
	lbu	a5,sp,+00000024
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	jal	ra,0000000023029704
	c.mv	s2,a0
	c.bnez	a0,000000002303228C

l2303221C:
	lhu	a1,sp,+0000000C
	lhu	a4,s0,+00000016
	sb	zero,s0,+00000012
	srli	a5,a1,00000001
	sh	a5,s0,+0000000E
	sh	a5,s0,+00000010
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,0000000023032254

l2303223C:
	c.lw	s1,8(a2)
	lhu	a0,sp,+00000014
	jal	ra,0000000023030C82
	c.srli	a0,00000001
	sh	a0,s0,+00000016
	lhu	a5,s1,+00000060
	sh	a5,s0,+00000014

l23032254:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000018
	sh	a5,s0,+0000001A
	sh	a5,s0,+0000001C
	sh	a5,s0,+0000001E
	sh	a5,s0,+00000020

l2303226A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23032278:
	c.sub	a5,a4
	add	a5,a5,a3
	c.add	a2,a5
	c.j	00000000230321F8

l23032282:
	and	a2,a2,a1
	sh	a2,sp,+00000024
	c.j	0000000023032206

l2303228C:
	c.li	s2,0000001F
	c.j	000000002303226A

;; lld_con_param_req: 23032290
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
	c.bnez	a5,00000000230322BA

l230322B6:
	lhu	a5,a1,+00000064

l230322BA:
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
	jal	ra,0000000023029DE2
	lhu	a4,sp,+0000000C
	c.lw	s1,8(a5)
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	and	a5,a5,a4
	sh	a5,sp,+00000024
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	jal	ra,0000000023029704
	lhu	a5,sp,+00000024
	c.bnez	a0,0000000023032364

l23032318:
	lhu	a1,sp,+0000000C

l2303231C:
	srli	a4,a1,00000001
	sh	a4,s0,+0000000E
	sh	a4,s0,+00000010
	c.lw	s1,8(a2)
	c.mv	a0,a5
	jal	ra,0000000023030C82
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

l23032364:
	lhu	a1,sp,+0000001A
	c.j	000000002303231C

;; lld_con_stop: 2303236A
;;   Called from:
;;     23038204 (in llc_util_dicon_procedure)
lld_con_stop proc
	c.li	a2,00000001
	c.li	a1,00000001
	jal	zero,000000002302DD8C

;; lld_get_mode: 23032372
;;   Called from:
;;     2302CEC6 (in llc_le_con_cmp_evt_send)
;;     2302D020 (in llc_le_con_cmp_evt_send)
;;     2302D872 (in llc_con_update_finished)
;;     2302D91A (in llc_map_update_finished)
;;     230355D0 (in llcp_terminate_ind_handler)
;;     2303579C (in llc_llcp_reject_ind)
;;     2303581C (in llc_llcp_reject_ind)
;;     23035998 (in llcp_pause_enc_req_handler)
;;     23035B1A (in llcp_enc_req_handler)
;;     23035C9A (in fn23035C80)
;;     23036336 (in llcp_start_enc_rsp_handler)
;;     23036386 (in llcp_start_enc_rsp_handler)
;;     230366C0 (in llcp_con_param_rsp_handler)
;;     23036918 (in llcp_channel_map_ind_handler)
;;     23036A7C (in llcp_con_upd_ind_handler)
;;     23036D40 (in llcp_con_param_req_handler)
;;     23036E6E (in llcp_con_param_req_handler)
;;     23036ED0 (in llcp_con_param_req_handler)
;;     23036F82 (in llc_llcp_feats_req_pdu_send)
;;     2303717E (in llcp_feats_req_handler)
;;     2303720A (in llcp_slave_feature_req_handler)
;;     230375D2 (in llm_enc_ind_handler)
;;     230375DE (in llm_enc_ind_handler)
;;     23037634 (in llm_enc_ind_handler)
;;     23037662 (in llm_enc_ind_handler)
;;     23037AEE (in llc_enc_mgt_ind_handler)
;;     230382E6 (in llc_util_bw_mgt)
;;     23038BC6 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038C64 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038F5E (in hci_le_start_enc_cmd_handler)
;;     23039320 (in hci_le_con_update_cmd_handler)
lld_get_mode proc
	c.li	a5,00000002
	bne	a0,a5,000000002303238A

l23032378:
	lui	a5,00042026
	lw	a5,a5,+000004A8

l23032380:
	c.li	a0,00000008
	c.beqz	a5,0000000023032388

l23032384:
	lbu	a0,a5,+0000007B

l23032388:
	c.jr	ra

l2303238A:
	c.li	a5,00000003
	bne	a0,a5,000000002303239A

l23032390:
	lui	a5,00042026
	lw	a5,a5,+000004B4
	c.j	0000000023032380

l2303239A:
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.li	a0,00000008
	c.beqz	a5,0000000023032388

l230323AC:
	c.lw	a5,16(a5)
	c.j	0000000023032380

;; lld_move_to_slave: 230323B0
;;   Called from:
;;     230330C6 (in llm_con_req_ind)
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
	lui	a5,00042025
	lbu	a4,a5,+00000758
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
	c.jal	0000000023032A54
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
	jal	ra,000000002302F110
	c.li	a2,0000001B
	addi	a1,zero,+00000148
	c.mv	s3,a0
	jal	ra,0000000023030F8E
	c.mv	a0,s3
	addi	a2,zero,+00000148
	addi	a1,zero,+00000148
	jal	ra,0000000023030E52
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
	jal	ra,000000002302EAA0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; lld_ch_map_ind: 2303265C
;;   Called from:
;;     23036962 (in llcp_channel_map_ind_handler)
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
	bne	a3,a4,000000002303268C

l23032682:
	ori	a5,a5,+00000009
	sb	a5,a0,+0000007E
	c.jr	ra

l2303268C:
	bne	a3,a1,00000000230326B4

l23032690:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a0,a0,+00000074
	jal	ra,000000002302D7B4
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000008
	sb	a5,s0,+0000007E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230326B4:
	c.jr	ra

;; lld_con_update_ind: 230326B6
;;   Called from:
;;     23036ACC (in llcp_con_upd_ind_handler)
lld_con_update_ind proc
	c.mv	a5,a1
	c.mv	a1,a0
	c.mv	a0,a5
	jal	zero,000000002302F436

;; lld_crypt_isr: 230326C0
;;   Called from:
;;     230293D4 (in rwble_isr)
lld_crypt_isr proc
	c.li	a0,00000001
	jal	zero,000000002302B838

;; lld_test_mode_tx: 230326C6
;;   Called from:
;;     230337DC (in llm_test_mode_start_tx)
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
	jal	ra,000000002302F5B4
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
	jal	ra,0000000023030C48
	lhu	a5,s0,+00000156
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,s0,+00000156
	c.beqz	s1,00000000230327DA

l230327A4:
	c.li	a5,00000004
	bne	s1,a5,0000000023032804

l230327AA:
	lhu	a5,s0,+000001A0
	c.li	s1,00000003
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	ori	a5,a5,+00000010
	sh	a5,s0,+000001A0

l230327C0:
	lui	a4,00028008
	lhu	a5,a4,+000001A0
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFFC
	c.or	s1,a5
	sh	s1,a4,+000001A0

l230327DA:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303028A
	addi	a0,s2,+00000028
	jal	ra,0000000023030120
	c.mv	a0,s2
	c.li	a1,00000001
	jal	ra,000000002302EAA0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23032804:
	c.li	a5,00000003
	bne	s1,a5,00000000230327C0

l2303280A:
	lhu	a5,s0,+000001A0
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000001A0
	c.j	00000000230327C0

;; lld_test_mode_rx: 23032820
;;   Called from:
;;     2303390E (in llm_test_mode_start_rx)
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
	jal	ra,000000002302F5B4
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
	lui	a3,00042026
	c.mv	s1,a0
	andi	a4,a4,+0000003F
	sb	a4,a3,+0000045D
	lw	a4,a5,+000001AC
	lui	a3,00042026
	lui	a0,00010000
	andi	a4,a4,-00000040
	ori	a4,a4,+0000000F
	sw	a4,a5,+000001AC
	c.lw	a5,120(a4)
	lui	a1,00040003
	c.addi	a2,FFFFFFFF
	c.srli	a4,0000001C
	sb	a4,a3,+0000045C
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
	jal	ra,0000000023030C48
	lhu	a5,s0,+00000156
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,s0,+00000156
	lui	a5,00042025
	lw	a5,a5,+00000730
	c.li	a0,00000000
	c.jalr	a5
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,000000002302EAA0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; lld_test_stop: 23032974
;;   Called from:
;;     2303A388 (in hci_le_test_end_cmd_handler)
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
	lui	a5,00042025
	lw	a5,a5,+00000730
	c.jalr	a5
	sw	zero,s0,+000000E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llm_util_bd_addr_wl_position: 230329A0
;;   Called from:
;;     23032C2E (in llm_util_bd_addr_in_wl)
;;     23032C94 (in llm_util_bl_add)
;;     23034244 (in llm_wl_dev_add)
;;     23034284 (in llm_wl_dev_rem)
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
	lui	s4,0004200F
	c.li	s0,00000000
	c.li	s6,00000006
	lui	s2,00028008
	c.bnez	a1,0000000023032A08

l230329C4:
	addi	s2,s2,+000001FE
	c.li	s5,00000004

l230329CA:
	add	a1,s0,s6
	lw	a5,s4,+000003D0
	c.li	a2,00000006
	c.addi4spn	a0,00000008
	slli	s1,s0,00000010
	c.srli	s1,00000010
	c.add	a1,s2
	c.jalr	a5
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002302A58E
	c.bnez	a0,00000000230329F2

l230329EA:
	c.addi	s0,00000001
	bne	s0,s5,00000000230329CA

l230329F0:
	c.li	s1,00000004

l230329F2:
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

l23032A08:
	addi	s2,s2,+00000216
	c.li	s5,00000004

l23032A0E:
	add	a1,s0,s6
	lw	a5,s4,+000003D0
	c.li	a2,00000006
	c.addi4spn	a0,00000008
	slli	s1,s0,00000010
	c.srli	s1,00000010
	c.add	a1,s2
	c.jalr	a5
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002302A58E
	c.bnez	a0,00000000230329F2

l23032A2E:
	c.addi	s0,00000001
	bne	s0,s5,0000000023032A0E

l23032A34:
	c.j	00000000230329F0

;; llm_util_check_address_validity: 23032A36
llm_util_check_address_validity proc
	lui	a1,000230CC
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000688
	c.swsp	ra,00000084
	jal	ra,000000002302A58E
	c.beqz	a0,0000000023032A50

l23032A48:
	c.li	a0,00000012

l23032A4A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23032A50:
	c.li	a0,00000000
	c.j	0000000023032A4A

;; llm_util_check_map_validity: 23032A54
;;   Called from:
;;     2302D7D8 (in llc_map_update_ind)
;;     23031C86 (in lld_con_start)
;;     230324E6 (in lld_move_to_slave)
;;     23039F20 (in hci_le_set_host_ch_class_cmd_handler)
llm_util_check_map_validity proc
	lbu	a5,a0,+00000000
	andi	a5,a5,+000000F8
	c.beqz	a5,0000000023032A66

l23032A5E:
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a1,a4,0000000023032A74

l23032A66:
	c.li	a4,00000000
	c.li	a7,00000004
	c.li	t1,00000008

l23032A6C:
	andi	a3,a4,+000000FF
	bltu	a3,a1,0000000023032A78

l23032A74:
	c.mv	a0,a5
	c.jr	ra

l23032A78:
	add	a2,a0,a4
	lbu	a6,a2,+00000000
	bne	a3,a7,0000000023032A8A

l23032A84:
	andi	a3,a6,+000000E0
	c.bnez	a3,0000000023032AA2

l23032A8A:
	c.li	a3,00000000

l23032A8C:
	sra	a2,a6,a3
	c.andi	a2,00000001
	c.add	a5,a2
	c.addi	a3,00000001
	andi	a5,a5,+000000FF
	bne	a3,t1,0000000023032A8C

l23032A9E:
	c.addi	a4,00000001
	c.j	0000000023032A6C

l23032AA2:
	addi	a5,zero,+00000026
	c.j	0000000023032A74

;; llm_util_apply_bd_addr: 23032AA8
;;   Called from:
;;     23031962 (in lld_con_start)
;;     23033BC2 (in llm_set_adv_en)
;;     23033FC0 (in llm_set_scan_en)
llm_util_apply_bd_addr proc
	c.li	a5,00000001
	beq	a0,a5,0000000023032AB4

l23032AAE:
	c.li	a5,00000003
	bne	a0,a5,0000000023032AC2

l23032AB4:
	lui	a0,00042026
	c.li	a1,00000001
	addi	a0,a0,+000004BB

l23032ABE:
	jal	zero,0000000023030C02

l23032AC2:
	lui	a0,00042026
	c.li	a1,00000000
	addi	a0,a0,+000004C1
	c.j	0000000023032ABE

;; llm_util_check_evt_mask: 23032ACE
;;   Called from:
;;     2302CE90 (in llc_le_con_cmp_evt_send)
;;     2302CE98 (in llc_le_con_cmp_evt_send)
;;     2302CF74 (in llc_le_con_cmp_evt_send)
;;     2302D1B4 (in llc_le_ch_sel_algo_evt_send)
;;     2302D4C2 (in llc_feats_rd_event_send)
;;     2302D724 (in llc_con_update_ind)
;;     2303325C (in llm_le_adv_report_ind)
;;     23033378 (in llm_le_adv_report_ind)
;;     2303585E (in llc_llcp_reject_ind)
;;     23035CCC (in fn23035C80)
;;     23035D06 (in fn23035CEA)
;;     230365E8 (in llcp_length_rsp_handler)
;;     2303676A (in llcp_con_param_rsp_handler)
;;     23036DE4 (in llcp_con_param_req_handler)
;;     2303744C (in llcp_length_req_handler)
;;     23037CD6 (in llc_enc_mgt_ind_handler)
;;     230380C8 (in fn230380C6)
;;     23038610 (in llm_ecc_result_ind_handler)
;;     2303866A (in llm_ecc_result_ind_handler)
;;     23039440 (in hci_le_con_update_cmd_handler)
llm_util_check_evt_mask proc
	lui	a5,00042026
	srli	a4,a0,00000003
	addi	a5,a5,+00000460
	c.add	a5,a4
	lbu	a5,a5,+00000038
	c.slli	a4,03
	c.sub	a0,a4
	sra	a0,a5,a0
	c.andi	a0,00000001
	c.jr	ra

;; llm_util_get_channel_map: 23032AEC
;;   Called from:
;;     2302D266 (in llc_start)
;;     2302D26E (in llc_start)
;;     23031908 (in lld_con_start)
;;     23037DBE (in llc_chnl_assess_timer_handler)
llm_util_get_channel_map proc
	lui	a5,0004200F
	lw	t1,a5,+000003D0
	lui	a1,00042026
	c.li	a2,00000005
	addi	a1,a1,+00000492
	c.jr	t1

;; llm_util_get_supp_features: 23032B00
;;   Called from:
;;     2302D2DE (in llc_start)
;;     23036F98 (in llc_llcp_feats_req_pdu_send)
;;     23036FC4 (in llc_llcp_feats_rsp_pdu_send)
llm_util_get_supp_features proc
	lui	a5,0004200F
	lw	t1,a5,+000003D0
	lui	a1,000230CC
	c.li	a2,00000008
	addi	a1,a1,-00000668
	c.jr	t1

;; llm_util_adv_data_update: 23032B14
;;   Called from:
;;     2302DC56 (in lld_evt_schedule)
llm_util_adv_data_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042026
	c.swsp	ra,00000084
	addi	a5,s0,+00000460
	c.lw	a5,20(a5)
	addi	s0,s0,+00000460
	c.lw	a5,0(a0)
	c.beqz	a0,0000000023032B40

l23032B2C:
	c.addi	a0,0000000C
	jal	ra,0000000023033C9E
	c.lw	s0,20(a5)
	c.lw	a5,0(a0)
	jal	ra,000000002302BDCE
	c.lw	s0,20(a5)
	sw	zero,a5,+00000000

l23032B40:
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023032B5A

l23032B46:
	c.addi	a0,0000000C
	jal	ra,0000000023033D70
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	jal	ra,000000002302BDCE
	c.lw	s0,20(a5)
	sw	zero,a5,+00000004

l23032B5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llm_util_bl_check: 23032B62
;;   Called from:
;;     23032C12 (in llm_util_bd_addr_in_wl)
;;     23033062 (in llm_con_req_ind)
;;     23034310 (in llm_wl_dev_add_hdl)
;;     2303436C (in llm_wl_dev_rem_hdl)
;;     230343C8 (in llm_create_con)
;;     23039EC2 (in hci_le_wl_mngt_cmd_handler)
llm_util_bl_check proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042026
	c.swsp	s0,00000014
	lw	s0,a5,+00000478
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s1,a0
	andi	s2,a1,+00000001
	c.li	s3,00000001

l23032B7E:
	c.bnez	s0,0000000023032B84

l23032B80:
	c.li	a0,00000000
	c.j	0000000023032BD2

l23032B84:
	c.bnez	s1,0000000023032B92

l23032B86:
	bne	a3,s3,0000000023032B92

l23032B8A:
	sb	zero,s0,+0000000D

l23032B8E:
	c.lw	s0,0(s0)
	c.j	0000000023032B7E

l23032B92:
	addi	a1,s0,+00000004
	c.mv	a0,s1
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,000000002302A58E
	c.lwsp	tp,00000084
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	c.beqz	a0,0000000023032B8E

l23032BAA:
	lbu	a5,s0,+0000000C
	bne	a5,s2,0000000023032B8E

l23032BB2:
	c.beqz	a2,0000000023032BBC

l23032BB4:
	lhu	a5,s0,+0000000A
	sh	a5,a2,+00000000

l23032BBC:
	c.li	a5,00000001
	bne	a3,a5,0000000023032BE0

l23032BC2:
	sb	zero,s0,+0000000D

l23032BC6:
	c.li	a0,0000000B
	c.beqz	a4,0000000023032BD2

l23032BCA:
	lbu	a5,s0,+0000000D
	sb	a5,a4,+00000000

l23032BD2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23032BE0:
	c.li	a2,00000002
	bne	a3,a2,0000000023032BC6

l23032BE6:
	sb	a5,s0,+0000000D
	c.j	0000000023032BC6

;; llm_util_bd_addr_in_wl: 23032BEC
;;   Called from:
;;     230342E8 (in llm_wl_dev_add_hdl)
;;     23034356 (in llm_wl_dev_rem_hdl)
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
	c.beqz	a2,0000000023032C06

l23032C02:
	sb	zero,a2,+00000000

l23032C06:
	addi	a4,sp,+0000000F
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023032B62
	c.li	a5,0000000B
	bne	a0,a5,0000000023032C24

l23032C1C:
	c.beqz	s0,0000000023032C24

l23032C1E:
	c.li	a5,00000001
	sb	a5,s0,+00000000

l23032C24:
	lbu	a5,sp,+0000000F
	c.bnez	a5,0000000023032C3E

l23032C2A:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230329A0
	c.li	a5,00000003
	bltu	a5,a0,0000000023032C3E

l23032C38:
	c.li	a5,00000001
	sb	a5,sp,+0000000F

l23032C3E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; llm_util_bl_add: 23032C4E
;;   Called from:
;;     23033072 (in llm_con_req_ind)
;;     23033580 (in llm_con_req_tx_cfm)
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
	jal	ra,000000002302BA5A
	c.li	s0,00000007
	c.beqz	a0,0000000023032CBE

l23032C6E:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	jal	ra,00000000230329A0
	sltiu	a0,a0,+00000004
	sb	a0,s0,+0000000D
	lui	a0,00042026
	c.mv	a1,s0
	addi	a0,a0,+00000478
	jal	ra,000000002302A2FE
	lbu	a5,s0,+0000000D
	c.li	s0,00000000
	c.beqz	a5,0000000023032CBE

l23032CB6:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303427C

l23032CBE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; llm_util_bl_rem: 23032CD0
;;   Called from:
;;     2302CDF0 (in llc_stop)
llm_util_bl_rem proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042026
	c.swsp	s0,00000004
	lw	s0,a5,+00000478
	c.swsp	ra,00000084

l23032CDE:
	c.bnez	s0,0000000023032CEA

l23032CE0:
	c.li	a0,00000002

l23032CE2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23032CEA:
	lhu	a5,s0,+0000000A
	beq	a5,a0,0000000023032CF6

l23032CF2:
	c.lw	s0,0(s0)
	c.j	0000000023032CDE

l23032CF6:
	lui	a0,00042026
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,a0,+00000478
	jal	ra,000000002302A39E
	lbu	a5,s0,+0000000D
	c.beqz	a5,0000000023032D18

l23032D0C:
	lbu	a1,s0,+0000000C
	addi	a0,s0,+00000004
	jal	ra,0000000023034230

l23032D18:
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.li	a0,00000000
	c.j	0000000023032CE2

;; llm_end_evt_defer: 23032D22
;;   Called from:
;;     2302DEE6 (in lld_evt_deffered_elt_handler)
llm_end_evt_defer proc
	c.addi16sp	FFFFFFD0
	c.li	a0,00000000
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	jal	ra,0000000023035412
	lui	s0,00042026
	andi	a0,a0,+000000F0
	c.li	a5,00000010
	addi	s0,s0,+00000460
	bne	a0,a5,0000000023032D92

l23032D40:
	c.lw	s0,20(a1)
	c.li	a5,00000001
	lbu	a4,a1,+0000001C
	bne	a4,a5,0000000023032D92

l23032D4C:
	lbu	a5,a1,+00000021
	c.bnez	a5,0000000023032D92

l23032D52:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	jal	ra,000000002302CE78
	c.lw	s0,72(a0)
	c.li	a1,00000001
	c.li	a2,00000000
	jal	ra,000000002302DD8C
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+0000000F
	c.li	a0,00000000
	jal	ra,00000000230353A2

l23032D92:
	lbu	a4,s0,+0000005A
	c.li	a5,00000003
	beq	a4,a5,0000000023032E58

l23032D9C:
	lbu	a5,s0,+00000059
	c.beqz	a5,0000000023032E58

l23032DA2:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.li	a3,00000004
	c.addi	a2,0000001F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002302BC8C
	lui	a5,00028000
	sb	zero,s0,+00000059
	c.lw	a5,0(a4)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	lbu	a3,s0,+0000005A
	c.li	a4,00000001
	bne	a3,a4,0000000023032E16

l23032DD2:
	lw	a4,a5,+000001AC
	lui	a3,00042026
	lbu	a3,a3,+0000045D
	andi	a4,a4,-00000040
	c.or	a4,a3
	sw	a4,a5,+000001AC
	c.lw	a5,120(a3)
	lui	a4,00042026
	lbu	a4,a4,+0000045C
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

l23032E16:
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
	c.beqz	a4,0000000023032E3C

l23032E30:
	lui	a5,00028008
	lhu	a5,a5,+0000018A
	c.slli	a5,10
	c.srli	a5,00000010

l23032E3C:
	sh	a5,a0,+00000002
	c.li	a5,00000003
	sb	a5,s0,+0000005A
	sb	zero,a0,+00000000
	jal	ra,0000000023029E8E
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002302BD84

l23032E58:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; llm_pdu_defer: 23032E60
;;   Called from:
;;     2303010E (in lld_pdu_check)
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
	jal	ra,0000000023035412
	andi	a3,a0,+0000000F
	c.li	a5,00000002
	c.lwsp	a2,00000084
	bne	a3,a5,0000000023032EA6

l23032E82:
	andi	a5,s2,+00000003
	c.bnez	a5,0000000023032F0C

l23032E88:
	c.li	s0,00000000
	c.beqz	a2,0000000023032E92

l23032E8C:
	c.mv	a0,s1
	c.jal	00000000230334A4
	c.li	s0,00000001

l23032E92:
	c.mv	a0,s1
	jal	ra,000000002302CC48
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23032EA6:
	addi	a5,zero,+00000023
	c.li	s0,00000000
	beq	a0,a5,0000000023032E92

l23032EB0:
	c.beqz	a0,0000000023032E92

l23032EB2:
	addi	a5,zero,+00000024
	c.li	s0,00000000
	beq	a0,a5,0000000023032E92

l23032EBC:
	andi	a5,s2,+0000001F
	c.bnez	a5,0000000023032E92

l23032EC2:
	c.li	a5,0000000E
	add	a5,s1,a5
	lui	a4,00028008
	addi	a4,a4,+000003D2
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.li	a4,00000006
	c.andi	a5,0000000F
	bltu	a4,a5,0000000023032E92

l23032EDE:
	c.li	a4,00000001
	sll	a5,a4,a5
	andi	a2,a5,+00000057
	c.bnez	a2,0000000023032F02

l23032EEA:
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023032E92

l23032EF0:
	andi	a0,a0,+000000F0
	c.li	a5,00000010
	bne	a0,a5,0000000023032E92

l23032EFA:
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023032F74
	c.j	0000000023032E92

l23032F02:
	bne	a3,a4,0000000023032E92

l23032F06:
	c.mv	a0,s1
	c.jal	000000002303311C
	c.j	0000000023032E92

l23032F0C:
	addi	a5,zero,+00000023
	bne	a0,a5,0000000023032EB2

l23032F14:
	c.li	s0,00000000
	c.j	0000000023032E92

;; llm_wlpub_addr_set: 23032F18
;;   Called from:
;;     2303403C (in llm_wl_clr)
;;     2303426E (in llm_wl_dev_add)
;;     230342BA (in llm_wl_dev_rem)
llm_wlpub_addr_set proc
	c.li	a5,00000006
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+000001FE
	addi	a4,a1,+00000006
	c.add	a0,a5

l23032F2C:
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.addi	a1,00000002
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000000
	c.addi	a0,00000002
	bne	a4,a1,0000000023032F2C

l23032F44:
	c.jr	ra

;; llm_wlpriv_addr_set: 23032F46
;;   Called from:
;;     23034024 (in llm_wl_clr)
;;     23034276 (in llm_wl_dev_add)
;;     2303429C (in llm_wl_dev_rem)
llm_wlpriv_addr_set proc
	c.li	a5,00000006
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+00000216
	addi	a4,a1,+00000006
	c.add	a0,a5

l23032F5A:
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.addi	a1,00000002
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000000
	c.addi	a0,00000002
	bne	a4,a1,0000000023032F5A

l23032F72:
	c.jr	ra

;; llm_con_req_ind: 23032F74
;;   Called from:
;;     23032EFE (in llm_pdu_defer)
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
	lui	s2,0004200F
	c.add	a5,s1
	lhu	a1,a5,+00000000
	lw	a5,s2,+000003D0
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
	bltu	a2,a3,00000000230330F2

l23032FC2:
	lhu	a1,sp,+00000032
	addi	a4,a4,-00000386
	addi	a2,a1,-00000006
	c.slli	a2,10
	c.srli	a2,00000010
	bltu	a4,a2,00000000230330F2

l23032FD6:
	lhu	a3,sp,+00000034
	addi	a4,zero,+000001F3
	bltu	a4,a3,00000000230330F2

l23032FE2:
	c.addi	a3,00000001
	add	a3,a3,a1
	c.slli	a5,02
	bgeu	a3,a5,00000000230330F2

l23032FEE:
	addi	a0,sp,+00000006
	jal	ra,0000000023038150
	bne	a0,zero,00000000230330F2

l23032FFA:
	andi	s0,s0,+00000200
	bne	s0,zero,0000000023033102

l23033002:
	addi	a5,s4,+000003D8
	c.add	a5,s1
	lhu	s0,a5,+00000000
	c.slli	s0,10
	c.srli	s0,00000010
	beq	s0,zero,0000000023033102

l23033014:
	addi	a1,s0,+00000018
	lw	a5,s2,+000003D0
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

l23033054:
	lbu	a1,sp,+00000016
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,sp,+00000006
	c.addi4spn	a0,0000001C
	jal	ra,0000000023032B62
	c.bnez	a0,00000000230330F2

l23033068:
	lhu	a2,sp,+00000006
	lbu	a1,sp,+00000016
	c.addi4spn	a0,0000001C
	jal	ra,0000000023032C4E
	c.bnez	a0,00000000230330E2

l23033078:
	lhu	a5,sp,+00000032
	sh	s0,sp,+0000000E
	c.li	a2,00000006
	sh	a5,sp,+00000008
	lhu	a5,sp,+00000034
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000010
	sh	a5,sp,+0000000A
	lhu	a5,sp,+00000036
	lui	s0,00042026
	addi	s0,s0,+00000460
	sh	a5,sp,+0000000C
	lbu	a5,sp,+0000003D
	srli	a4,a5,00000005
	c.andi	a5,0000001F
	sb	a5,sp,+00000017
	lw	a5,s2,+000003D0
	sb	a4,sp,+00000018
	c.jalr	a5
	lhu	a3,sp,+00000006
	c.lw	s0,72(a2)
	c.mv	a4,s3
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000008
	jal	ra,00000000230323B0
	c.mv	a1,a0
	c.sw	s0,72(a0)
	c.addi4spn	a0,00000008
	jal	ra,000000002302D1EE
	lhu	a0,sp,+00000006
	c.addi4spn	a1,00000038
	sw	zero,s0,+00000048
	jal	ra,0000000023038216

l230330E2:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+0000000F
	c.li	a0,00000000
	jal	ra,00000000230353A2

l230330F2:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l23033102:
	lui	a5,00028008
	addi	a5,a5,+000003D2
	c.add	s1,a5
	lhu	a5,s1,+00000000
	c.li	s0,00000000
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,sp,+00000016
	c.j	0000000023033054

;; llm_le_adv_report_ind: 2303311C
;;   Called from:
;;     23032F08 (in llm_pdu_defer)
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
	lui	s2,0004200F
	lhu	a1,s4,+00000000
	lw	a4,s2,+000003D0
	c.li	a2,00000006
	c.add	a1,a5
	c.addi4spn	a0,00000008
	c.jalr	a4
	lui	s7,00042026
	addi	a5,s7,+00000460
	c.lw	a5,16(a5)
	c.andi	s1,0000000F
	addi	s7,s7,+00000460
	lbu	a4,a5,+0000000A
	c.li	a5,00000001
	beq	a4,a5,000000002303317E

l2303317A:
	bne	s1,a5,00000000230331BC

l2303317E:
	lw	s0,s7,+00000008

l23033182:
	bne	s0,zero,0000000023033332

l23033186:
	lui	s6,00042026
	addi	a0,s6,+00000468
	jal	ra,000000002302A53C
	c.li	a5,0000000A
	beq	a0,a5,000000002303331A

l23033198:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002302BA5A
	lw	a5,s2,+000003D0
	c.mv	s0,a0
	c.addi4spn	a1,00000008
	c.li	a2,00000006
	c.addi	a0,00000005
	c.jalr	a5
	c.mv	a1,s0
	sb	s1,s0,+00000004
	addi	a0,s6,+00000468
	jal	ra,000000002302A2FE

l230331BC:
	lui	a5,0004200F
	lbu	a5,a5,+000003BC
	andi	a5,a5,+000000FF
	bne	a5,zero,000000002303331A

l230331CC:
	jal	ra,000000002302BD48
	c.li	a5,00000014
	bltu	a5,a0,000000002303331A

l230331D6:
	lui	s8,00028008
	addi	a5,s8,+000003D8
	c.add	a5,s5
	lhu	s0,a5,+00000000
	addi	a5,s8,+000003D0
	c.add	a5,s5
	lhu	s6,a5,+00000000
	lhu	a1,s4,+00000000
	lw	a5,s2,+000003D0
	c.li	a2,00000006
	c.addi	a1,00000006
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a1,s8
	c.addi4spn	a0,00000010
	c.jalr	a5
	lhu	a1,s4,+00000000
	lw	a5,s2,+000003D0
	c.li	a2,00000006
	c.add	a1,s8
	c.addi4spn	a0,00000018
	c.jalr	a5
	c.slli	s0,10
	c.slli	s6,10
	c.li	a5,00000001
	c.srli	s0,00000010
	srli	s6,s6,00000010
	bne	s1,a5,0000000023033376

l23033224:
	lw	a5,s7,+00000010
	lbu	a5,a5,+00000008
	bgeu	s1,a5,0000000023033376

l23033230:
	lhu	a5,s3,+00000000
	c.srli	a5,00000007
	c.andi	a5,00000001
	beq	a5,zero,0000000023033376

l2303323C:
	lbu	a5,sp,+00000015
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,0000000023033376

l2303324C:
	c.beqz	s0,000000002303325A

l2303324E:
	andi	a5,s6,+00000600
	addi	a4,zero,+00000600
	bne	a5,a4,0000000023033376

l2303325A:
	c.li	a0,0000000A
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303331A

l23033262:
	c.lui	a0,00001000
	c.li	a3,00000012
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,0000000B
	lui	s6,00028008
	sb	a5,a0,+00000000
	c.li	s7,00000001
	addi	a5,s6,+000003D4
	sb	s7,a0,+00000001
	c.add	s5,a5
	c.mv	s1,a0
	lui	a5,00042025
	lhu	a0,s5,+00000000
	lw	a5,a5,+00000748
	addi	s5,s1,+0000000B
	andi	a0,a0,+000000FF
	c.jalr	a5
	sb	a0,s1,+00000011
	lhu	a5,s3,+00000000
	addi	a0,s1,+00000004
	c.andi	a5,0000000F
	sb	a5,s1,+00000002
	c.beqz	s0,000000002303334A

l230332B4:
	addi	a1,s0,+00000018
	lw	a5,s2,+000003D0
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
	bne	a4,a3,0000000023033302

l230332FA:
	ori	a5,a5,+00000002
	sb	a5,s1,+00000003

l23033302:
	lw	a5,s2,+000003D0
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.mv	a0,s5
	c.jalr	a5
	c.li	a5,00000001
	sb	a5,s1,+0000000A

l23033314:
	c.mv	a0,s1
	jal	ra,0000000023029E8E

l2303331A:
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

l23033332:
	addi	a1,s0,+00000005
	c.addi4spn	a0,00000008
	jal	ra,000000002302A58E
	c.beqz	a0,0000000023033346

l2303333E:
	lbu	a5,s0,+00000004
	beq	a5,s1,000000002303331A

l23033346:
	c.lw	s0,0(s0)
	c.j	0000000023033182

l2303334A:
	lhu	a1,s4,+00000000
	lw	a5,s2,+000003D0
	c.li	a2,00000006
	c.add	a1,s6
	c.jalr	a5
	lhu	a5,s3,+00000000
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,s1,+00000003
	lw	a5,s2,+000003D0
	c.mv	a0,s5
	c.jalr	a5
	sb	s7,s1,+0000000A
	c.j	0000000023033314

l23033376:
	c.li	a0,00000001
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303331A

l2303337E:
	c.lui	a0,00001000
	addi	a3,zero,+0000002B
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,00000001
	sb	a5,a0,+00000001
	lui	a5,00028008
	addi	a5,a5,+000003D4
	c.li	s7,00000002
	sb	s7,a0,+00000000
	c.add	s5,a5
	c.mv	s1,a0
	lui	a5,00042025
	lhu	a0,s5,+00000000
	lw	a5,a5,+00000748
	andi	a0,a0,+000000FF
	c.jalr	a5
	sb	a0,s1,+0000002A
	lhu	a5,s3,+00000000
	c.andi	a5,0000000F
	beq	a5,s7,0000000023033412

l230333C8:
	c.li	a4,00000006
	beq	a5,a4,0000000023033416

l230333CE:
	sb	a5,s1,+00000002

l230333D2:
	lbu	a4,s1,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002303341C

l230333DC:
	sb	zero,s1,+0000000A

l230333E0:
	addi	a0,s1,+00000004
	lw	a5,s2,+000003D0
	c.beqz	s0,00000000230333F6

l230333EA:
	andi	s6,s6,+00000600
	addi	a4,zero,+00000200
	bne	s6,a4,0000000023033458

l230333F6:
	lhu	a4,s4,+00000000
	lui	a1,00028008
	c.li	a2,00000006
	c.add	a1,a4
	c.jalr	a5
	lhu	a5,s3,+00000000
	c.srli	a5,00000006
	c.andi	a5,00000001

l2303340C:
	sb	a5,s1,+00000003
	c.j	0000000023033314

l23033412:
	c.li	a5,00000003
	c.j	00000000230333CE

l23033416:
	sb	s7,s1,+00000002
	c.j	00000000230333D2

l2303341C:
	lhu	a5,s3,+00000000
	c.li	a4,0000001F
	c.srli	a5,00000008
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023033452

l2303342E:
	sb	a5,s1,+0000000A

l23033432:
	lhu	a5,s4,+00000000
	lw	a4,s2,+000003D0
	lbu	a2,s1,+0000000A
	c.addi	a5,00000006
	c.slli	a5,10
	c.srli	a5,00000010
	lui	a1,00028008
	c.add	a1,a5
	addi	a0,s1,+0000000B
	c.jalr	a4
	c.j	00000000230333E0

l23033452:
	sb	a4,s1,+0000000A
	c.j	0000000023033432

l23033458:
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
	bne	a4,a3,0000000023033314

l2303349E:
	ori	a5,a5,+00000002
	c.j	000000002303340C

;; llm_con_req_tx_cfm: 230334A4
;;   Called from:
;;     23032E8E (in llm_pdu_defer)
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
	lui	s4,0004200F
	c.li	a2,00000006
	c.add	a5,s1
	lhu	a1,a5,+00000000
	lw	a5,s4,+000003D0
	c.mv	s2,a0
	c.add	a1,s0
	c.addi4spn	a0,00000008
	c.jalr	a5
	lhu	a1,s0,+000002EC
	lw	a5,s4,+000003D0
	c.li	a2,00000016
	c.add	a1,s0
	c.addi4spn	a0,00000028
	c.jalr	a5
	addi	a5,s0,+000003D8
	c.add	a5,s1
	lhu	s3,a5,+00000000
	c.slli	s3,10
	srli	s3,s3,00000010
	beq	s3,zero,00000000230335C2

l230334FC:
	addi	a1,s3,+00000018
	lw	a5,s4,+000003D0
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

l2303353C:
	lhu	a5,sp,+00000032
	lui	s0,00042026
	addi	s0,s0,+00000460
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
	c.beqz	a5,00000000230335A2

l23033576:
	lhu	a2,s0,+00000044
	lbu	a1,sp,+00000022
	c.addi4spn	a0,0000001C
	jal	ra,0000000023032C4E
	c.bnez	a0,00000000230335A2

l23033586:
	lhu	a1,s0,+00000044
	c.lw	s0,84(a0)
	c.mv	a3,s2
	c.addi4spn	a2,00000014
	jal	ra,0000000023031D12
	c.mv	a1,a0
	c.sw	s0,84(a0)
	c.addi4spn	a0,00000014
	jal	ra,000000002302D1EE
	sw	zero,s0,+00000054

l230335A2:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+000000F0
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l230335C2:
	addi	s0,s0,+000003D2
	c.add	s0,s1
	lhu	a5,s0,+00000000
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,sp,+00000022
	lw	a5,s4,+000003D0
	c.addi4spn	a0,0000001C
	c.jalr	a5
	c.j	000000002303353C

;; llm_common_cmd_complete_send: 230335E2
;;   Called from:
;;     23038748 (in lld_stop_ind_handler)
;;     23038794 (in lld_stop_ind_handler)
;;     230387BC (in lld_stop_ind_handler)
;;     23039742 (in hci_vsc_set_tx_pwr)
;;     2303976E (in hci_le_wr_rfpath_compensation_cmd_handler)
;;     2303979A (in hci_wr_le_host_supp_cmd_handler)
;;     230397EE (in hci_le_wr_suggted_dft_data_len_cmd_handler)
;;     2303981A (in hci_le_set_evt_mask_cmd_handler)
;;     23039C4E (in hci_host_nb_cmp_pkts_cmd_handler)
;;     23039C94 (in hci_host_buf_size_cmd_handler)
;;     23039CB4 (in hci_set_evt_mask_page_2_cmd_handler)
;;     23039CD4 (in hci_set_evt_mask_cmd_handler)
;;     23039D0A (in hci_set_ctrl_to_host_flow_ctrl_cmd_handler)
;;     23039D26 (in hci_reset_cmd_handler)
;;     23039D58 (in hci_le_tx_test_cmd_handler)
;;     23039D90 (in hci_le_rx_test_cmd_handler)
;;     23039ECA (in hci_le_wl_mngt_cmd_handler)
;;     23039F56 (in hci_le_set_host_ch_class_cmd_handler)
;;     2303A056 (in hci_le_set_scan_en_cmd_handler)
;;     2303A0EE (in hci_le_set_scan_param_cmd_handler)
;;     2303A158 (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2303A1FE (in hci_le_set_adv_en_cmd_handler)
;;     2303A260 (in hci_le_set_adv_data_cmd_handler)
;;     2303A2AC (in hci_le_set_adv_param_cmd_handler)
;;     2303A2FE (in hci_le_set_rand_add_cmd_handler)
;;     2303A42E (in hci_le_create_con_cancel_cmd_handler)
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
	jal	ra,000000002302BC8C
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llm_common_cmd_status_send: 23033608
;;   Called from:
;;     23039C10 (in hci_le_generate_dhkey_cmd_handler)
;;     23039FE0 (in hci_le_create_con_cmd_handler)
;;     2303A334 (in hci_le_rd_local_p256_public_key_cmd_handler)
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
	jal	ra,000000002302BC8C
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llm_test_mode_start_tx: 2303362E
;;   Called from:
;;     23039D50 (in hci_le_tx_test_cmd_handler)
llm_test_mode_start_tx proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000027
	bltu	a5,a4,0000000023033864

l2303363A:
	lbu	a4,a0,+00000001
	c.li	a5,00000012
	beq	a4,zero,0000000023033866

l23033644:
	c.addi16sp	FFFFFEE0
	sw	s3,sp,+0000010C
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s4,sp,+00000108
	lbu	a4,a0,+00000002
	c.li	s3,00000007
	bltu	s3,a4,00000000230337EC

l23033668:
	c.mv	s0,a0
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,00042026
	addi	a0,a0,+000002D0
	jal	ra,000000002302A36A
	c.mv	s1,a0
	csrrw	zero,mstatus,zero
	lui	s2,00042026
	addi	a0,s2,+000002C8
	jal	ra,000000002302A36A
	c.mv	s4,a0
	c.li	a5,00000007
	beq	s1,zero,00000000230337EC

l23033698:
	beq	a0,zero,00000000230337EC

l2303369C:
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
	jal	ra,00000000230353A2
	lui	a4,00028000
	c.lw	a4,0(a5)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00000040
	c.or	a5,a3
	c.sw	a4,0(a5)
	lbu	a5,s0,+00000002
	bltu	s3,a5,0000000023033736

l230336FE:
	c.li	a3,00000001
	sll	a3,a3,a5
	andi	a2,a3,+000000F6
	bne	a2,zero,000000002303380A

l2303370C:
	c.andi	a3,00000009
	c.beqz	a3,0000000023033736

l23033710:
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

l23033736:
	lui	s1,00042026
	addi	a5,s1,+00000460
	c.lw	a5,20(a5)
	addi	s1,s1,+00000460
	c.bnez	a5,00000000230337A0

l23033746:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l230337A0:
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
	addi	a0,s2,+000002C8
	c.addi	a5,00000010
	c.add	a0,a5
	jal	ra,00000000230326C6
	c.sw	s1,72(a0)
	c.li	a5,0000001F
	c.beqz	a0,00000000230337EC

l230337E6:
	sb	zero,s1,+0000005A
	c.li	a5,00000000

l230337EC:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	lw	s3,sp,+0000010C
	lw	s4,sp,+00000108
	c.mv	a0,a5
	c.addi16sp	00000120
	c.jr	ra

l2303380A:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000006
	lbu	a2,s0,+00000001
	c.li	a1,00000000
	bltu	a4,a5,000000002303382A

l2303381C:
	lui	a4,000230CC
	addi	a4,a4,-00000678
	c.add	a5,a4
	lbu	a1,a5,+00000000

l2303382A:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.mv	a0,sp
	c.jalr	a5
	lhu	a0,s1,+00000006
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	c.j	0000000023033736

l23033864:
	c.li	a5,00000012

l23033866:
	c.mv	a0,a5
	c.jr	ra

;; llm_test_mode_start_rx: 2303386A
;;   Called from:
;;     23039D88 (in hci_le_rx_test_cmd_handler)
llm_test_mode_start_rx proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000027
	bltu	a5,a4,000000002303392C

l23033876:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042026
	c.swsp	s1,00000080
	addi	a5,s0,+00000460
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000460
	c.bnez	a5,00000000230338EA

l23033890:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l230338EA:
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
	jal	ra,00000000230353A2
	lbu	a0,s1,+00000000
	jal	ra,0000000023032820
	c.sw	s0,72(a0)
	c.li	a5,0000001F
	c.beqz	a0,0000000023033920

l23033918:
	c.li	a5,00000001
	sb	a5,s0,+0000005A
	c.li	a5,00000000

l23033920:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303392C:
	c.li	a5,00000012
	c.mv	a0,a5
	c.jr	ra

;; llm_set_adv_param: 23033932
;;   Called from:
;;     2303A2A4 (in hci_le_set_adv_param_cmd_handler)
llm_set_adv_param proc
	lhu	a4,a0,+00000000
	lhu	a5,a0,+00000002
	bgeu	a5,a4,0000000023033954

l2303393E:
	c.li	a0,00000012
	c.jr	ra
23033942       49 45                                       IE           

l23033944:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23033954:
	lbu	a2,a0,+0000000D
	c.li	a3,00000007
	bltu	a3,a2,000000002303393E

l2303395E:
	lbu	a2,a0,+0000000E
	c.li	a3,00000003
	bltu	a3,a2,000000002303393E

l23033968:
	lbu	a3,a0,+00000004
	andi	a2,a3,+000000FB
	c.bnez	a2,0000000023033978

l23033972:
	c.li	a2,0000001F
	bgeu	a2,a4,000000002303393E

l23033978:
	lbu	a2,a0,+00000005
	c.li	a4,00000003
	bltu	a4,a2,000000002303393E

l23033982:
	lbu	a2,a0,+00000006
	c.li	a4,00000001
	bltu	a4,a2,000000002303393E

l2303398C:
	beq	a3,a4,0000000023033996

l23033990:
	c.lui	a4,00004000
	bltu	a4,a5,000000002303393E

l23033996:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042026
	c.swsp	s0,0000000C
	addi	a5,s1,+00000460
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a5,20(a5)
	c.mv	s0,a0
	addi	s1,s1,+00000460
	c.bnez	a5,0000000023033A10

l230339B6:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l23033A10:
	c.lw	s1,20(a5)
	c.li	a4,00000008
	c.li	a3,00000004
	sb	a4,a5,+0000001C
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a4,s0,+00000004
	c.li	a0,00000012
	bltu	a3,a4,0000000023033944

l23033A2A:
	lui	a3,000230B6
	c.slli	a4,02
	addi	a3,a3,-000005D8
	c.add	a4,a3
	c.lw	a4,0(a4)
	addi	s3,s0,+00000007
	lui	s4,0004200F
	c.jr	a4
23033A42       05 47 23 8E E7 00 85 67 37 89 00 28 93 87   .G#....g7..(..
23033A50 17 C2 23 10 F9 2E 83 45 64 00 4E 85 EF E0 BF FD ..#....Ed.N.....
23033A60 0D E5 03 57 09 2E 83 47 64 00 19 46 42 07 41 83 ...W...Gd..FB.A.
23033A70 9E 07 13 77 F7 F7 D9 8F 23 10 F9 2E 03 55 29 2E ...w....#....U).
23033A80 83 27 0A 3D CE 85 4A 95 82 97 83 46 44 00 11 47 .'.=..J....FD..G
23033A90 DC 48 63 9B E6 00 03 57 24 00 23 9C E7 00 03 57 .Hc....W$.#....W
23033AA0 04 00 23 9B E7 00 19 A0 A3 80 07 02 C8 48 83 47 ..#..........H.G
23033AB0 64 00 CE 85 19 46 23 00 F5 02 83 27 0A 3D 41 05 d....F#....'.=A.
23033AC0 82 97 03 47 54 00 DC 48 85 45 13 05 D4 00 A3 8F ...GT..H.E......
23033AD0 E7 00 EF E0 3F F8 E3 06 05 E6 03 47 D4 00 DC 48 ....?......G...H
23033AE0 01 45 23 8D E7 00 B9 BD 19 47 23 8E E7 00 83 C6 .E#......G#.....
23033AF0 C7 01 19 47 63 84 E6 00 23 8E 07 00 03 C7 C7 01 ...Gc...#.......
23033B00 99 46 63 06 D7 00 01 C7 09 47 23 8E E7 00 03 47 .Fc......G#....G
23033B10 E4 00 A3 8D E7 00 41 B7                         ......A.       

;; llm_set_adv_en: 23033B18
;;   Called from:
;;     2303A1D2 (in hci_le_set_adv_en_cmd_handler)
llm_set_adv_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	s1,a0,+00000000
	lui	s0,00042026
	addi	s0,s0,+00000460
	beq	s1,zero,0000000023033C82

l23033B30:
	c.lw	s0,20(a5)
	c.bnez	a5,0000000023033B8E

l23033B34:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l23033B8E:
	lui	a1,000230CC
	lui	a0,00042026
	addi	a1,a1,-00000688
	addi	a0,a0,+000004BB
	jal	ra,000000002302A58E
	c.beqz	a0,0000000023033BBC

l23033BA4:
	c.lw	s0,20(a5)
	lbu	a5,a5,+0000001F
	c.andi	a5,00000001
	c.beqz	a5,0000000023033BBC

l23033BAE:
	c.li	s1,00000012

l23033BB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23033BBC:
	c.lw	s0,20(a5)
	lbu	a0,a5,+0000001F
	jal	ra,0000000023032AA8
	c.lw	s0,20(a0)
	c.li	a5,00000001
	lbu	a4,a0,+0000001C
	beq	a4,a5,0000000023033C6E

l23033BD2:
	c.beqz	a4,0000000023033BE2

l23033BD4:
	c.li	a5,00000002
	beq	a4,a5,0000000023033BE2

l23033BDA:
	c.li	a5,00000006
	c.li	s1,00000012
	bne	a4,a5,0000000023033BB0

l23033BE2:
	lbu	a5,a0,+0000001D
	lui	a3,00028008
	lui	a1,00042026
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a5,a4
	ori	a5,a5,+00000020
	sh	a5,a3,+000002FE
	c.lw	s0,20(a0)
	lui	a4,00042025
	c.li	a5,00000002
	lbu	a2,a0,+0000001C
	addi	a4,a4,+0000072C
	bne	a2,a5,0000000023033C28

l23033C14:
	lbu	a3,a4,+0000002C
	c.li	a2,00000000
	addi	a1,a1,+00000314

l23033C1E:
	jal	ra,0000000023031358
	c.sw	s0,72(a0)
	c.bnez	a0,0000000023033C56

l23033C26:
	c.j	0000000023033BAE

l23033C28:
	lbu	a5,a0,+0000001E
	lui	a2,00042026
	addi	a2,a2,+00000308
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	ori	a5,a5,+00000024
	sh	a5,a3,+000002F4
	lbu	a3,a4,+0000002C
	addi	a1,a1,+00000314
	c.li	s1,0000001F
	jal	ra,0000000023031358
	c.sw	s0,72(a0)
	c.beqz	a0,0000000023033BB0

l23033C56:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+0000000F
	ori	a1,a1,+00000010
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.li	s1,00000000
	c.j	0000000023033BB0

l23033C6E:
	lui	a5,00042025
	lui	a1,00042026
	lbu	a3,a5,+00000758
	c.li	a2,00000000
	addi	a1,a1,+000002F0
	c.j	0000000023033C1E

l23033C82:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+0000000F
	ori	a1,a1,+00000020
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.lw	s0,72(a0)
	jal	ra,0000000023031514
	c.j	0000000023033BB0

;; llm_set_adv_data: 23033C9E
;;   Called from:
;;     23032B2E (in llm_util_adv_data_update)
;;     2303A276 (in hci_le_set_adv_data_cmd_handler)
llm_set_adv_data proc
	lbu	a4,a0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,0000000023033D6C

l23033CA8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042026
	c.swsp	s1,00000080
	addi	a5,s0,+00000460
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000460
	c.bnez	a5,0000000023033D1C

l23033CC2:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l23033D1C:
	lbu	a2,s1,+00000000
	c.lw	s0,20(a5)
	sb	a2,a5,+0000001D
	c.beqz	a2,0000000023033D40

l23033D28:
	lui	a5,00028008
	lhu	a0,a5,+00000300
	lui	a4,0004200F
	lw	a4,a4,+000003D0
	addi	a1,s1,+00000001
	c.add	a0,a5
	c.jalr	a4

l23033D40:
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

l23033D6C:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_rsp_data: 23033D70
;;   Called from:
;;     23032B48 (in llm_util_adv_data_update)
;;     2303A16E (in hci_le_set_scan_rsp_data_cmd_handler)
llm_set_scan_rsp_data proc
	lbu	a4,a0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,0000000023033E3E

l23033D7A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042026
	c.swsp	s1,00000080
	addi	a5,s0,+00000460
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000460
	c.bnez	a5,0000000023033DEE

l23033D94:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
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

l23033DEE:
	lbu	a2,s1,+00000000
	c.lw	s0,20(a5)
	sb	a2,a5,+0000001E
	c.beqz	a2,0000000023033E12

l23033DFA:
	lui	a5,00028008
	lhu	a0,a5,+000002F6
	lui	a4,0004200F
	lw	a4,a4,+000003D0
	addi	a1,s1,+00000001
	c.add	a0,a5
	c.jalr	a4

l23033E12:
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

l23033E3E:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_param: 23033E42
;;   Called from:
;;     2303A0E4 (in hci_le_set_scan_param_cmd_handler)
llm_set_scan_param proc
	lhu	a4,a0,+00000004
	lhu	a5,a0,+00000002
	bltu	a5,a4,0000000023033F04

l23033E4E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a2,a0,+00000000
	c.li	a3,00000001
	c.mv	s0,a0
	c.li	a0,00000012
	bltu	a3,a2,0000000023033EFA

l23033E64:
	c.addi	a4,FFFFFFFC
	c.slli	a4,10
	c.lui	a3,00004000
	c.srli	a4,00000010
	c.addi	a3,FFFFFFFC
	bltu	a3,a4,0000000023033EFA

l23033E72:
	c.addi	a5,FFFFFFFC
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a3,a5,0000000023033EFA

l23033E7C:
	lbu	a4,s0,+00000007
	c.li	a5,00000003
	bltu	a5,a4,0000000023033EFA

l23033E86:
	lui	s1,00042026
	addi	a5,s1,+00000460
	c.lw	a5,16(a5)
	addi	s1,s1,+00000460
	c.bnez	a5,0000000023033EAE

l23033E96:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.sw	s1,16(a0)
	c.li	a2,0000000C
	c.li	a1,00000000
	c.jalr	a5

l23033EAE:
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
	bne	a4,a5,0000000023033EFA

l23033EEC:
	c.lui	a5,00001000
	lui	a4,00028008
	addi	a5,a5,-000003FD
	sh	a5,a4,+000002EA

l23033EFA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23033F04:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_en: 23033F08
;;   Called from:
;;     2303A042 (in hci_le_set_scan_en_cmd_handler)
llm_set_scan_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+00000000
	lui	s0,00042026
	addi	s0,s0,+00000460
	c.bnez	s1,0000000023033F54

l23033F20:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000003
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.lw	s0,84(a0)
	jal	ra,00000000230316C0
	lui	a0,00042026
	addi	a0,a0,+00000468
	jal	ra,0000000023030E2A

l23033F46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23033F54:
	c.lw	s0,16(a5)
	c.mv	s2,a0
	c.bnez	a5,0000000023033F84

l23033F5A:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002302BA5A
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

l23033F84:
	lui	a1,000230CC
	lui	a0,00042026
	addi	a1,a1,-00000688
	addi	a0,a0,+000004BB
	jal	ra,000000002302A58E
	c.beqz	a0,0000000023033FB0

l23033F9A:
	c.lw	s0,16(a4)
	lbu	a5,a4,+0000000B
	c.andi	a5,00000001
	c.beqz	a5,0000000023033FB0

l23033FA4:
	lbu	a4,a4,+00000009
	c.li	a5,00000001
	c.li	s1,00000012
	beq	a4,a5,0000000023033F46

l23033FB0:
	c.lw	s0,16(a5)
	lbu	a4,s2,+00000001
	sb	a4,a5,+0000000A
	c.lw	s0,16(a5)
	lbu	a0,a5,+0000000B
	jal	ra,0000000023032AA8
	c.lw	s0,16(a0)
	lbu	a5,a0,+00000009
	c.beqz	a5,0000000023033FEA

l23033FCC:
	c.li	a4,00000001
	beq	a5,a4,0000000023033FF8

l23033FD2:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000001
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.li	s1,00000000
	c.j	0000000023033F46

l23033FEA:
	c.li	a1,00000000

l23033FEC:
	jal	ra,0000000023031548
	c.sw	s0,84(a0)
	c.li	s1,0000001F
	c.bnez	a0,0000000023033FD2

l23033FF6:
	c.j	0000000023033F46

l23033FF8:
	lui	a1,00042026
	addi	a1,a1,+000002FC
	c.j	0000000023033FEC

;; llm_wl_clr: 23034002
;;   Called from:
;;     2303410C (in llm_init)
;;     23039EB2 (in hci_le_wl_mngt_cmd_handler)
llm_wl_clr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,000230CC
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	s0,00000000
	c.li	s3,00000004
	c.mv	s2,s1

l23034018:
	c.mv	a0,s0
	c.addi	s0,00000001
	c.slli	s0,10
	addi	a1,s1,-00000670
	c.srli	s0,00000010
	jal	ra,0000000023032F46
	bne	s0,s3,0000000023034018

l2303402C:
	c.li	s0,00000000
	c.li	s1,00000004

l23034030:
	c.mv	a0,s0
	c.addi	s0,00000001
	c.slli	s0,10
	addi	a1,s2,-00000670
	c.srli	s0,00000010
	jal	ra,0000000023032F18
	bne	s0,s1,0000000023034030

l23034044:
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
	lui	a5,00042026
	addi	a5,a5,+00000460
	sb	zero,a5,+00000071
	sb	zero,a5,+00000072
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llm_init: 23034088
;;   Called from:
;;     23029238 (in rwble_init)
;;     2302927E (in rwble_reset)
llm_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,00042026
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	addi	s0,s1,+00000460
	lui	s3,00042026
	bne	a0,zero,0000000023034196

l230340A6:
	lui	a1,000230B6
	addi	a1,a1,-000005C4
	jal	ra,0000000023035342
	lui	a1,00023034
	addi	a1,a1,+000005AE
	c.li	a0,00000001
	jal	ra,000000002302B7EA

l230340C0:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.li	a5,00000003
	lui	s2,0004200F
	sb	a5,s0,+0000005A
	sb	zero,s0,+0000004C
	sw	zero,s0,+00000054
	sb	zero,s0,+00000059
	jal	ra,0000000023065C28
	lw	a5,s2,+000003D4
	sb	a0,s0,+00000040
	lui	a0,00042026
	c.li	a2,00000004
	addi	a1,zero,+000000FF
	sb	zero,s0,+00000041
	sb	zero,s0,+00000042
	addi	a0,a0,+00000492
	c.jalr	a5
	c.li	s4,0000001F
	sb	s4,s0,+00000036
	sw	zero,s0,+00000048
	jal	ra,0000000023034002
	c.li	a5,00000010
	sh	a5,s0,+0000006A
	lw	a5,s2,+000003D4
	lui	a0,00042026
	c.li	a2,00000007
	c.li	a1,00000000
	sb	zero,s0,+000000D3
	sb	s4,s0,+00000038
	addi	a0,a0,+00000499
	c.jalr	a5
	addi	a0,s3,+00000468
	sb	zero,s0,+00000058
	sw	zero,s0,+00000010
	jal	ra,000000002302A2D6
	lw	a5,s2,+000003D4
	lui	a0,00042026
	sw	zero,s0,+00000014
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,a0,+000004BB
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

l23034186:
	addi	a0,s1,+00000460
	jal	ra,000000002302A36A
	c.beqz	a0,00000000230341D0

l23034190:
	jal	ra,000000002302BDCE
	c.j	0000000023034186

l23034196:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230341B2

l2303419A:
	c.lw	a5,0(a0)
	c.beqz	a0,00000000230341A2

l2303419E:
	jal	ra,000000002302BDCE

l230341A2:
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	c.beqz	a0,00000000230341AC

l230341A8:
	jal	ra,000000002302BDCE

l230341AC:
	c.lw	s0,20(a0)
	jal	ra,000000002302BB4A

l230341B2:
	c.lw	s0,16(a0)
	c.beqz	a0,00000000230341BA

l230341B6:
	jal	ra,000000002302BB4A

l230341BA:
	addi	a0,s3,+00000468
	jal	ra,0000000023030E2A
	lui	a0,00042026
	addi	a0,a0,+00000478
	jal	ra,0000000023030E2A
	c.j	00000000230340C0

l230341D0:
	addi	a0,s1,+00000460
	jal	ra,000000002302A2D6
	lui	a0,00042026
	addi	a0,a0,+00000478
	jal	ra,000000002302A2D6
	lui	a1,000230B6
	addi	a0,s0,+00000020
	c.li	a2,0000000C
	addi	a1,a1,-00000574
	jal	ra,00000000230A382C
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

;; llm_wl_dev_add: 23034230
;;   Called from:
;;     23032D14 (in llm_util_bl_rem)
;;     2303431E (in llm_wl_dev_add_hdl)
llm_wl_dev_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230CC
	c.swsp	s1,00000080
	addi	a0,a0,-00000670
	c.mv	s1,a1
	c.swsp	ra,00000084
	jal	ra,00000000230329A0
	c.beqz	s1,000000002303426C

l2303424A:
	c.li	a5,00000001
	beq	s1,a5,0000000023034274

l23034250:
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+00000072
	c.addi	a4,00000001
	sb	a4,a5,+00000072
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303426C:
	c.mv	a1,s0
	jal	ra,0000000023032F18
	c.j	0000000023034250

l23034274:
	c.mv	a1,s0
	jal	ra,0000000023032F46
	c.j	0000000023034250

;; llm_wl_dev_rem: 2303427C
;;   Called from:
;;     23032CBA (in llm_util_bl_add)
;;     2303438A (in llm_wl_dev_rem_hdl)
llm_wl_dev_rem proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230329A0
	c.li	a5,00000003
	bltu	a5,a0,00000000230342B2

l2303428E:
	lui	a1,000230CC
	c.li	a5,00000001
	addi	a1,a1,-00000670
	bne	s0,a5,00000000230342BA

l2303429C:
	jal	ra,0000000023032F46

l230342A0:
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+00000072
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000072

l230342B2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230342BA:
	jal	ra,0000000023032F18
	c.j	00000000230342A0

;; llm_wl_dev_add_hdl: 230342C0
;;   Called from:
;;     23039EE6 (in hci_le_wl_mngt_cmd_handler)
llm_wl_dev_add_hdl proc
	c.li	a5,00000001
	bgeu	a5,a1,00000000230342D8

l230342C6:
	c.li	a0,00000012
	c.jr	ra

l230342CA:
	c.li	a0,00000012

l230342CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230342D8:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s2,a0
	c.mv	s1,a1
	jal	ra,0000000023032BEC
	c.bnez	a0,00000000230342CA

l230342EE:
	lui	s0,00042026
	addi	a5,s0,+00000460
	lbu	a4,a5,+00000071
	c.li	a5,00000003
	addi	s0,s0,+00000460
	c.li	a0,00000007
	bltu	a5,a4,00000000230342CC

l23034306:
	c.li	a4,00000000
	c.li	a3,00000002
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023032B62
	c.li	a5,0000000B
	beq	a0,a5,0000000023034322

l2303431A:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023034230

l23034322:
	lbu	a5,s0,+00000071
	c.li	a0,00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000071
	c.j	00000000230342CC

;; llm_wl_dev_rem_hdl: 23034330
;;   Called from:
;;     23039EF6 (in hci_le_wl_mngt_cmd_handler)
llm_wl_dev_rem_hdl proc
	c.li	a5,00000001
	bgeu	a5,a1,0000000023034346

l23034336:
	c.li	a0,00000012
	c.jr	ra

l2303433A:
	c.li	a0,00000012

l2303433C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23034346:
	c.addi	sp,FFFFFFE0
	addi	a2,sp,+0000000F
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023032BEC
	c.beqz	a0,000000002303433A

l2303435C:
	lbu	a5,sp,+0000000F
	c.beqz	a5,0000000023034386

l23034362:
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023032B62

l23034370:
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+00000071
	c.li	a0,00000000
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000071
	c.j	000000002303433C

l23034386:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303427C
	c.j	0000000023034370

;; llm_create_con: 23034390
;;   Called from:
;;     23039FB8 (in hci_le_create_con_cmd_handler)
llm_create_con proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,00042026
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,s2,+000004A4
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023038150
	c.li	s1,00000009
	c.bnez	a0,00000000230343D0

l230343AC:
	lbu	a4,s0,+00000004
	c.li	a5,00000001
	c.mv	s1,a0
	beq	a4,a5,00000000230343DE

l230343B8:
	lbu	a1,s0,+00000005
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,s2,+000004A4
	addi	a0,s0,+00000006
	jal	ra,0000000023032B62
	c.beqz	a0,00000000230343F8

l230343CE:
	c.mv	s1,a0

l230343D0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230343DE:
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+00000072
	c.bnez	a4,00000000230343F8

l230343EC:
	lbu	s1,a5,+00000071
	sltiu	s1,s1,+00000001
	c.addi	s1,0000000B
	c.j	00000000230343D0

l230343F8:
	lhu	a3,s0,+00000002
	lhu	a4,s0,+00000000
	bgeu	a4,a3,0000000023034408

l23034404:
	c.li	s1,00000012
	c.j	00000000230343D0

l23034408:
	lhu	a5,s0,+0000000E
	lhu	a1,s0,+00000010
	bltu	a1,a5,0000000023034404

l23034414:
	c.addi	a3,FFFFFFFC
	c.slli	a3,10
	c.lui	a2,00004000
	c.srli	a3,00000010
	c.addi	a2,FFFFFFFC
	bltu	a2,a3,0000000023034404

l23034422:
	c.addi	a4,FFFFFFFC
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a2,a4,0000000023034404

l2303442C:
	lhu	a3,s0,+00000016
	lhu	a4,s0,+00000018
	bltu	a4,a3,0000000023034404

l23034438:
	c.li	a4,00000005
	bgeu	a4,a5,0000000023034404

l2303443E:
	c.lui	a3,00001000
	addi	a5,a3,-00000380
	bltu	a5,a1,0000000023034404

l23034448:
	lhu	a4,s0,+00000014
	addi	a3,a3,-0000038A
	addi	a5,a4,-0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a3,a5,0000000023034404

l2303445C:
	lhu	a5,s0,+00000012
	addi	a3,zero,+000001F3
	bltu	a3,a5,0000000023034404

l23034468:
	c.addi	a5,00000001
	add	a5,a5,a1
	c.slli	a4,02
	bgeu	a5,a4,0000000023034404

l23034474:
	lui	a1,000230CC
	lui	a0,00042026
	addi	a1,a1,-00000688
	addi	a0,a0,+000004BB
	jal	ra,000000002302A58E
	lbu	a5,s0,+0000000C
	c.beqz	a0,0000000023034494

l2303448E:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023034404

l23034494:
	lui	s2,00042026
	addi	a4,s2,+00000460
	lbu	a4,a4,+0000006F
	c.andi	a5,00000002
	addi	s2,s2,+00000460
	c.andi	a4,00000001
	c.bnez	a4,00000000230344B6

l230344AA:
	c.bnez	a5,0000000023034404

l230344AC:
	lbu	a5,s0,+00000005
	c.andi	a5,00000002
	c.beqz	a5,00000000230344B8

l230344B4:
	c.j	0000000023034404

l230344B6:
	c.beqz	a5,00000000230344AC

l230344B8:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000002
	c.li	a0,00000000
	jal	ra,00000000230353A2
	lhu	a2,s2,+00000044
	lui	a1,00042026
	addi	a1,a1,+000002FC
	c.mv	a0,s0
	jal	ra,00000000230316F4
	sw	a0,s2,+00000054
	bne	a0,zero,00000000230343D0

l230344E6:
	c.li	s1,0000001F
	c.j	00000000230343D0

;; llm_encryption_start: 230344EA
;;   Called from:
;;     23034630 (in llm_encryption_done)
;;     230386D8 (in llm_enc_req_handler)
;;     23039E3C (in hci_le_enc_cmd_handler)
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
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	addi	a0,a0,+0000006E
	c.jalr	a5
	addi	a5,zero,+0000006E
	sw	a5,s0,+000000D4
	c.li	a5,00000001
	sw	a5,s0,+000000C0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a4,00042026
	sb	a5,a4,+000004B8
	c.li	a0,00000010
	c.addi	sp,00000010
	jal	zero,000000002302A21E

;; llm_encryption_done: 230345AE
llm_encryption_done proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042026
	addi	a0,s0,+00000460
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002302A36A
	c.mv	s3,a0
	c.li	a0,00000001
	jal	ra,000000002302B894
	beq	s3,zero,0000000023034666

l230345D2:
	lhu	a1,s3,+00000008
	c.li	a5,00000001
	lui	s2,0004200F
	andi	a4,a1,+000000FF
	c.li	a3,00000011
	beq	a4,a5,0000000023034634

l230345E6:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	a2,00000017
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002302BC8C
	lw	a5,s2,+000003D0
	lui	a1,00028008
	c.mv	s1,a0
	c.li	a2,00000010
	addi	a1,a1,+0000007E
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s1
	sb	zero,s1,+00000000
	jal	ra,0000000023029E8E

l23034614:
	c.mv	a0,s3
	jal	ra,000000002302BDCE
	addi	s0,s0,+00000460
	c.lw	s0,0(a0)
	c.beqz	a0,000000002303465C

l23034622:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,0000000C
	c.addi16sp	00000020
	jal	zero,00000000230344EA

l23034634:
	c.li	a2,00000000
	c.li	a0,00000005
	jal	ra,000000002302BC8C
	lw	a5,s2,+000003D0
	lui	a1,00028008
	c.mv	s1,a0
	c.li	a2,00000010
	addi	a1,a1,+0000007E
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s1
	sb	zero,s1,+00000000
	jal	ra,000000002302BCFA
	c.j	0000000023034614

l2303465C:
	c.li	a0,00000010
	jal	ra,000000002302A250
	sb	zero,s0,+00000058

l23034666:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; hci_fc_init: 23034674
;;   Called from:
;;     2302A0DA (in hci_init)
;;     2302A110 (in hci_reset)
hci_fc_init proc
	lui	a5,0004200F
	lw	t1,a5,+000003D4
	lui	a0,00042026
	c.li	a2,0000000A
	c.li	a1,00000000
	addi	a0,a0,+00000534
	c.jr	t1

;; hci_fc_acl_buf_size_set: 2303468A
;;   Called from:
;;     23039C8A (in hci_host_buf_size_cmd_handler)
hci_fc_acl_buf_size_set proc
	c.li	a5,00000012
	c.beqz	a0,00000000230346AC

l2303468E:
	c.beqz	a1,00000000230346AC

l23034690:
	addi	a4,zero,+000003FC
	c.li	a5,00000011
	bgeu	a4,a0,00000000230346AC

l2303469A:
	lui	a5,00042026
	addi	a5,a5,+00000534
	sh	a0,a5,+00000002
	sh	a1,a5,+00000004
	c.li	a5,00000000

l230346AC:
	c.mv	a0,a5
	c.jr	ra

;; hci_fc_acl_en: 230346B0
;;   Called from:
;;     23039D00 (in hci_set_ctrl_to_host_flow_ctrl_cmd_handler)
hci_fc_acl_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023035412
	addi	a5,zero,+0000007F
	beq	a0,a5,00000000230346D4

l230346C8:
	c.li	a0,0000000C

l230346CA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230346D4:
	c.mv	s0,a0
	addi	a0,zero,+00000101
	jal	ra,0000000023035412
	bne	a0,s0,00000000230346C8

l230346E2:
	lui	a5,00042026
	sb	s1,a5,+00000534
	c.li	a0,00000000
	c.j	00000000230346CA

;; hci_fc_host_nb_acl_pkts_complete: 230346EE
;;   Called from:
;;     23039C42 (in hci_host_nb_cmp_pkts_cmd_handler)
hci_fc_host_nb_acl_pkts_complete proc
	lui	a5,00042026
	addi	a4,a5,+00000534
	lhu	a4,a4,+00000008
	addi	a5,a5,+00000534
	c.li	a3,00000000
	bgeu	a0,a4,000000002303470C

l23034704:
	c.sub	a4,a0
	slli	a3,a4,00000010
	c.srli	a3,00000010

l2303470C:
	sh	a3,a5,+00000008
	c.jr	ra

;; hci_pack_bytes: 23034712
;;   Called from:
;;     230347A8 (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     23034800 (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     23034816 (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     23034864 (in hci_le_adv_report_evt_pkupk)
;;     2303487C (in hci_le_adv_report_evt_pkupk)
;;     230348CC (in hci_le_adv_report_evt_pkupk)
;;     230348E2 (in hci_le_adv_report_evt_pkupk)
;;     230348F8 (in hci_le_adv_report_evt_pkupk)
;;     2303490A (in hci_le_adv_report_evt_pkupk)
;;     23034922 (in hci_le_adv_report_evt_pkupk)
;;     23034938 (in hci_le_adv_report_evt_pkupk)
;;     23034986 (in hci_le_dir_adv_report_evt_pkupk)
;;     2303499E (in hci_le_dir_adv_report_evt_pkupk)
;;     230349EE (in hci_le_dir_adv_report_evt_pkupk)
;;     23034A04 (in hci_le_dir_adv_report_evt_pkupk)
;;     23034A1A (in hci_le_dir_adv_report_evt_pkupk)
;;     23034A30 (in hci_le_dir_adv_report_evt_pkupk)
;;     23034A46 (in hci_le_dir_adv_report_evt_pkupk)
;;     23034A58 (in hci_le_dir_adv_report_evt_pkupk)
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
	bltu	a2,a5,0000000023034762

l2303472C:
	c.mv	s1,a4
	c.mv	s3,a0
	c.li	s0,00000000
	c.beqz	a3,000000002303474E

l23034734:
	lw	a0,s2,+00000000
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	add	s0,a0,a4
	sltu	s0,a3,s0
	c.mv	a2,a4
	c.slli	s0,01
	c.jalr	a5

l2303474E:
	lw	a5,s3,+00000000
	c.add	a5,s1
	sw	a5,s3,+00000000
	lw	a4,s2,+00000000
	c.add	s1,a4
	sw	s1,s2,+00000000

l23034762:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; hci_host_nb_cmp_pkts_cmd_pkupk: 23034772
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
	c.beqz	a1,0000000023034826

l2303478E:
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
	jal	ra,0000000023034712
	c.mv	s5,a0
	c.bnez	a0,00000000230347C4

l230347B0:
	c.li	a5,00000000
	c.li	s8,0000000E

l230347B4:
	c.lwsp	a2,000000C4
	lbu	a3,s3,+00000000
	c.sub	a4,s0
	bgeu	a5,a3,00000000230347C4

l230347C0:
	bgeu	s8,a4,00000000230347E8

l230347C4:
	c.lwsp	a2,00000044
	sub	s0,a0,s0
	sh	s0,s6,+00000000

l230347CE:
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

l230347E8:
	addi	s2,a5,+00000001
	slli	s4,s2,00000001
	add	a5,s0,s4
	c.li	a4,00000002
	c.mv	a3,s7
	c.mv	a2,s1
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034822

l23034806:
	c.addi	s4,00000006
	c.add	s4,s0
	c.li	a4,00000002
	c.mv	a3,s7
	c.mv	a2,s1
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	s4,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034822

l2303481C:
	andi	a5,s2,+000000FF
	c.j	00000000230347B4

l23034822:
	c.mv	s5,a0
	c.j	00000000230347C4

l23034826:
	c.li	a5,0000000E
	sh	a5,a2,+00000000
	c.li	s5,00000000
	c.j	00000000230347CE

;; hci_le_adv_report_evt_pkupk: 23034830
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
	beq	a1,zero,000000002303494A

l23034848:
	c.mv	s3,a0
	c.beqz	a0,00000000230348B2

l2303484C:
	lhu	s1,a2,+00000000
	c.add	s1,a0

l23034852:
	add	s2,a1,a3
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	s3,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023034712
	c.mv	s0,a0
	c.bnez	a0,0000000023034892

l2303486C:
	addi	a5,s3,+00000001
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.mv	s0,a0
	c.bnez	a0,0000000023034892

l23034884:
	addi	s4,s3,+0000000A
	c.li	s6,00000000

l2303488A:
	lbu	a5,s3,+00000001
	blt	s6,a5,00000000230348BC

l23034892:
	c.lwsp	a6,000000E4
	sub	s3,a5,s3
	sh	s3,s5,+00000000

l2303489C:
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

l230348B2:
	addi	s1,sp,+0000003F
	addi	s3,sp,+00000014
	c.j	0000000023034852

l230348BC:
	addi	a5,s4,-00000008
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034946

l230348D2:
	addi	a5,s4,-00000007
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034946

l230348E8:
	addi	a5,s4,-00000006
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034946

l230348FE:
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	s4,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034946

l23034910:
	lbu	a4,s4,+00000000
	addi	a5,s4,+00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034946

l23034928:
	addi	a5,s4,+00000020
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023034712
	addi	s4,s4,+00000029
	c.bnez	a0,0000000023034946

l23034942:
	c.addi	s6,00000001
	c.j	000000002303488A

l23034946:
	c.mv	s0,a0
	c.j	0000000023034892

l2303494A:
	sh	zero,a2,+00000000
	c.li	s0,00000000
	c.j	000000002303489C

;; hci_le_dir_adv_report_evt_pkupk: 23034952
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
	beq	a1,zero,0000000023034A68

l2303496A:
	c.mv	s3,a0
	c.beqz	a0,00000000230349D4

l2303496E:
	lhu	s1,a2,+00000000
	c.add	s1,a0

l23034974:
	add	s2,a1,a3
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	s3,00000004
	c.swsp	s3,00000080
	jal	ra,0000000023034712
	c.mv	s0,a0
	c.bnez	a0,00000000230349B4

l2303498E:
	addi	a5,s3,+00000001
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.mv	s0,a0
	c.bnez	a0,00000000230349B4

l230349A6:
	addi	s4,s3,+00000011
	c.li	s6,00000000

l230349AC:
	lbu	a5,s3,+00000001
	blt	s6,a5,00000000230349DE

l230349B4:
	c.lwsp	s0,000000E4
	sub	s3,a5,s3
	sh	s3,s5,+00000000

l230349BE:
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

l230349D4:
	addi	s1,sp,+0000001E
	addi	s3,sp,+0000000C
	c.j	0000000023034974

l230349DE:
	addi	a5,s4,-0000000F
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034A64

l230349F4:
	addi	a5,s4,-0000000E
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034A64

l23034A0A:
	addi	a5,s4,-0000000D
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034A64

l23034A20:
	addi	a5,s4,-00000007
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034A64

l23034A36:
	addi	a5,s4,-00000006
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,0000000023034712
	c.bnez	a0,0000000023034A64

l23034A4C:
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	s4,00000080
	jal	ra,0000000023034712
	c.addi	s4,00000010
	c.bnez	a0,0000000023034A64

l23034A60:
	c.addi	s6,00000001
	c.j	00000000230349AC

l23034A64:
	c.mv	s0,a0
	c.j	00000000230349B4

l23034A68:
	sh	zero,a2,+00000000
	c.li	s0,00000000
	c.j	00000000230349BE

;; hci_look_for_cmd_desc: 23034A70
;;   Called from:
;;     23029FEC (in hci_send_2_controller)
;;     23034EC2 (in hci_build_cc_evt)
;;     23084872 (in bt_onchiphci_send)
hci_look_for_cmd_desc proc
	srli	a5,a0,0000000A
	c.li	a4,00000001
	andi	a2,a0,+000003FF
	beq	a5,a4,0000000023034ABA

l23034A7E:
	c.li	a4,00000003
	beq	a5,a4,0000000023034ABE

l23034A84:
	c.li	a4,00000004
	beq	a5,a4,0000000023034AC2

l23034A8A:
	c.li	a4,00000005
	beq	a5,a4,0000000023034AC6

l23034A90:
	c.li	a4,00000008
	beq	a5,a4,0000000023034ACA

l23034A96:
	addi	a4,zero,+0000003F
	c.li	a0,00000000
	bne	a5,a4,0000000023034AE8

l23034AA0:
	c.li	a5,00000005

l23034AA2:
	lui	a4,000230B6
	c.slli	a5,03
	addi	a4,a4,-00000568
	c.add	a5,a4
	c.lw	a5,4(a0)
	lhu	a3,a5,+00000002
	c.li	a5,00000000
	c.bnez	a0,0000000023034AE2

l23034AB8:
	c.jr	ra

l23034ABA:
	c.li	a5,00000000
	c.j	0000000023034AA2

l23034ABE:
	c.li	a5,00000001
	c.j	0000000023034AA2

l23034AC2:
	c.li	a5,00000002
	c.j	0000000023034AA2

l23034AC6:
	c.li	a5,00000003
	c.j	0000000023034AA2

l23034ACA:
	c.li	a5,00000004
	c.j	0000000023034AA2

l23034ACE:
	lhu	a4,a0,+00000000
	andi	a4,a4,+000003FF
	beq	a4,a2,0000000023034AE8

l23034ADA:
	c.addi	a5,00000001
	c.slli	a5,10
	c.addi	a0,0000000C
	c.srli	a5,00000010

l23034AE2:
	bne	a5,a3,0000000023034ACE

l23034AE6:
	c.li	a0,00000000

l23034AE8:
	c.jr	ra

;; hci_look_for_evt_desc: 23034AEA
;;   Called from:
;;     23034F2E (in hci_build_evt)
hci_look_for_evt_desc proc
	lui	a5,000230B6
	addi	a3,a5,-000001D8
	c.li	a4,00000000
	addi	a5,a5,-000001D8
	c.li	a2,00000009

l23034AFA:
	lbu	a1,a3,+00000000
	bne	a1,a0,0000000023034B0A

l23034B02:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l23034B0A:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023034AFA

l23034B12:
	c.li	a0,00000000
	c.jr	ra

;; hci_look_for_le_evt_desc: 23034B16
;;   Called from:
;;     23034F8A (in hci_build_le_evt)
hci_look_for_le_evt_desc proc
	lui	a5,000230B6
	addi	a3,a5,-00000190
	c.li	a4,00000000
	addi	a5,a5,-00000190
	c.li	a2,0000000C

l23034B26:
	lbu	a1,a3,+00000000
	bne	a1,a0,0000000023034B36

l23034B2E:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l23034B36:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023034B26

l23034B3E:
	c.li	a0,00000000
	c.jr	ra

;; hci_tl_init: 23034B42
;;   Called from:
;;     2302A0D2 (in hci_init)
;;     2302A108 (in hci_reset)
hci_tl_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	s1,00042013
	addi	s0,s1,+000001CC
	c.bnez	a0,0000000023034B7C

l23034B54:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s1,+000001CC
	c.jalr	a5
	addi	a0,s1,+000001CC
	jal	ra,000000002302A2D6
	addi	a0,s0,+00000008
	jal	ra,000000002302A2D6
	c.li	a5,00000001
	sb	a5,s0,+00000018

l23034B7C:
	c.li	a5,00000005
	sb	a5,s0,+00000019
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; hci_util_read_array_size: 23034B8C
;;   Called from:
;;     23034C52 (in hci_util_pack)
;;     23034DB0 (in hci_util_unpack)
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

l23034BA4:
	c.lw	a0,0(a3)
	lbu	a4,a3,+00000000
	addi	a4,a4,-00000030
	andi	a4,a4,+000000FF
	bgeu	a2,a4,0000000023034BBA

l23034BB6:
	c.mv	a0,a5
	c.jr	ra

l23034BBA:
	add	a5,a5,a1
	addi	a4,a3,+00000001
	c.sw	a0,0(a4)
	lbu	a4,a3,+00000000
	addi	a4,a4,-00000030
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023034BA4

;; hci_util_pack: 23034BD4
;;   Called from:
;;     23034EE6 (in hci_build_cc_evt)
;;     23034F4A (in hci_build_evt)
;;     23034FA6 (in hci_build_le_evt)
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
	lui	s11,0004200F

l23034C16:
	c.lwsp	t3,000000E4
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023034D12

l23034C1E:
	beq	s2,zero,0000000023034C42

l23034C22:
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

l23034C42:
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	c.li	a4,00000000
	bltu	s6,a5,0000000023034C58

l23034C50:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023034B8C
	c.mv	a4,a0

l23034C58:
	c.lwsp	t3,000000E4
	addi	a3,a5,+00000001
	c.swsp	a3,0000008C
	lbu	a5,a5,+00000000
	beq	a5,s7,0000000023034CA8

l23034C68:
	beq	a5,s9,0000000023034CCE

l23034C6C:
	bne	a5,s10,0000000023034D00

l23034C70:
	addi	a1,s1,+00000001
	beq	s3,zero,0000000023034C84

l23034C78:
	bltu	s4,a1,0000000023034D0E

l23034C7C:
	lbu	a5,s1,+00000000
	sb	a5,s0,+00000000

l23034C84:
	addi	a0,s0,+00000001
	bgeu	s8,a4,0000000023034D04

l23034C8C:
	c.add	s1,a4
	beq	s3,zero,0000000023034CA4

l23034C92:
	bltu	s4,s1,0000000023034D0A

l23034C96:
	lw	a5,s11,+000003D0
	addi	a2,a4,-00000001
	c.swsp	a4,00000084
	c.jalr	a5
	c.lwsp	a2,000000C4

l23034CA4:
	c.add	s0,a4
	c.j	0000000023034C16

l23034CA8:
	addi	a5,s1,+00000001
	c.andi	a5,FFFFFFFE
	addi	a4,a5,+00000002
	beq	s3,zero,0000000023034CC8

l23034CB6:
	bltu	s4,a4,0000000023034D0E

l23034CBA:
	lhu	a5,a5,+00000000
	sb	a5,s0,+00000000
	c.srli	a5,00000008
	sb	a5,s0,+00000001

l23034CC8:
	c.addi	s0,00000002

l23034CCA:
	c.mv	s1,a4
	c.j	0000000023034C16

l23034CCE:
	addi	a5,s1,+00000003
	c.andi	a5,FFFFFFFC
	addi	a4,a5,+00000004
	beq	s3,zero,0000000023034CFC

l23034CDC:
	bltu	s4,a4,0000000023034D0E

l23034CE0:
	c.lw	a5,0(a5)
	srli	a3,a5,00000008
	sb	a5,s0,+00000000
	sb	a3,s0,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+00000002
	sb	a5,s0,+00000003

l23034CFC:
	c.addi	s0,00000004
	c.j	0000000023034CCA

l23034D00:
	c.li	s2,00000003
	c.j	0000000023034C16

l23034D04:
	c.mv	s0,a0
	c.mv	s1,a1
	c.j	0000000023034C16

l23034D0A:
	c.mv	s0,a0
	c.mv	s1,a1

l23034D0E:
	c.li	s2,00000001
	c.j	0000000023034C16

l23034D12:
	bne	s2,zero,0000000023034C22

l23034D16:
	sub	s0,s0,s3
	sh	s0,s5,+00000000
	c.j	0000000023034C22

;; hci_util_unpack: 23034D20
;;   Called from:
;;     230848BC (in bt_onchiphci_send)
;;     230848FA (in bt_onchiphci_send)
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
	c.bnez	a0,0000000023034D56

l23034D54:
	c.li	s5,00000000

l23034D56:
	c.mv	s1,s4
	c.li	s2,00000000
	c.li	s6,00000001
	addi	s7,zero,+0000004C
	lui	s8,0004200F

l23034D64:
	c.lwsp	a2,000000E4
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023034D70

l23034D6C:
	beq	s2,zero,0000000023034D9E

l23034D70:
	bgeu	s11,s0,0000000023034D76

l23034D74:
	c.li	s2,00000001

l23034D76:
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

l23034D9E:
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	c.li	a4,00000009
	c.li	s10,00000000
	bltu	a4,a5,0000000023034DB6

l23034DAE:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023034B8C
	c.mv	s10,a0

l23034DB6:
	c.lwsp	a2,000000E4
	addi	a4,zero,+00000048
	addi	a3,a5,+00000001
	c.swsp	a3,00000084
	lbu	a5,a5,+00000000
	beq	a5,a4,0000000023034E1A

l23034DCA:
	beq	a5,s7,0000000023034E4C

l23034DCE:
	addi	a3,zero,+00000042
	bne	a5,a3,0000000023034E8C

l23034DD6:
	addi	a1,s0,+00000001
	beq	s5,zero,0000000023034DF2

l23034DDE:
	bltu	s11,a1,0000000023034E98

l23034DE2:
	addi	a5,s1,+00000001
	bltu	s9,a5,0000000023034EA0

l23034DEA:
	lbu	a5,s0,+00000000
	sb	a5,s1,+00000000

l23034DF2:
	addi	a0,s1,+00000001
	bgeu	s6,s10,0000000023034E90

l23034DFA:
	c.add	s0,s10
	beq	s5,zero,0000000023034E16

l23034E00:
	bltu	s11,s0,0000000023034E94

l23034E04:
	add	a5,s1,s10
	bltu	s9,a5,0000000023034E9C

l23034E0C:
	lw	a5,s8,+000003D0
	addi	a2,s10,-00000001
	c.jalr	a5

l23034E16:
	c.add	s1,s10
	c.j	0000000023034D64

l23034E1A:
	addi	a5,s1,+00000001
	c.andi	a5,FFFFFFFE
	addi	a2,s0,+00000002
	beq	s5,zero,0000000023034E44

l23034E28:
	bltu	s11,a2,0000000023034E98

l23034E2C:
	addi	a3,a5,+00000002
	bltu	s9,a3,0000000023034EA0

l23034E34:
	lbu	a3,s0,+00000001
	lbu	a1,s0,+00000000
	c.slli	a3,08
	c.or	a3,a1
	sh	a3,a5,+00000000

l23034E44:
	addi	s1,a5,+00000002
	c.mv	s0,a2
	c.j	0000000023034D64

l23034E4C:
	addi	a3,s1,+00000003
	c.andi	a3,FFFFFFFC
	addi	a1,s0,+00000004
	beq	s5,zero,0000000023034E84

l23034E5A:
	bltu	s11,a1,0000000023034E98

l23034E5E:
	addi	a5,a3,+00000004
	bltu	s9,a5,0000000023034EA0

l23034E66:
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

l23034E84:
	addi	s1,a3,+00000004

l23034E88:
	c.mv	s0,a1
	c.j	0000000023034D64

l23034E8C:
	c.li	s2,00000003
	c.j	0000000023034D64

l23034E90:
	c.mv	s1,a0
	c.j	0000000023034E88

l23034E94:
	c.mv	s1,a0
	c.mv	s0,a1

l23034E98:
	c.li	s2,00000001
	c.j	0000000023034D64

l23034E9C:
	c.mv	s1,a0
	c.mv	s0,a1

l23034EA0:
	c.li	s2,00000002
	c.j	0000000023034D64

;; hci_build_cc_evt: 23034EA4
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
	jal	ra,0000000023034A70
	c.beqz	a0,0000000023034F0A

l23034EC8:
	lhu	a3,sp,+0000000E
	c.beqz	a3,0000000023034F0A

l23034ECE:
	c.lw	a0,8(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023034EEA

l23034ED4:
	lb	a4,a4,+00000002
	addi	a0,s0,+0000000C
	blt	a4,zero,0000000023034F00

l23034EE0:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023034BD4

l23034EEA:
	lhu	a5,sp,+0000000E
	c.lwsp	t3,00000020
	c.mv	a0,s2
	sh	a5,s0,+0000000A
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23034F00:
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	c.j	0000000023034EEA

l23034F0A:
	c.beqz	s1,0000000023034EEA

l23034F0C:
	c.li	a5,00000001
	sb	a5,s0,+0000000C
	c.j	0000000023034EEA

;; hci_build_evt: 23034F14
;;   Called from:
;;     23029F4C (in hci_send_2_host)
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
	jal	ra,0000000023034AEA
	c.beqz	a0,0000000023034F56

l23034F34:
	c.lw	a0,4(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023034F4E

l23034F3A:
	lbu	a4,a4,+00000002
	addi	a0,s0,+0000000C
	c.bnez	a4,0000000023034F62

l23034F44:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023034BD4

l23034F4E:
	lhu	a5,sp,+0000000E
	sh	a5,s0,+0000000A

l23034F56:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23034F62:
	lhu	a3,sp,+0000000E
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	c.j	0000000023034F4E

;; hci_build_le_evt: 23034F70
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
	jal	ra,0000000023034B16
	c.beqz	a0,0000000023034FB4

l23034F90:
	c.lw	a0,4(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023034FB4

l23034F96:
	lbu	a4,a4,+00000002
	addi	a0,s0,+0000000C
	c.bnez	a4,0000000023034FC0

l23034FA0:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023034BD4

l23034FAA:
	c.bnez	a0,0000000023034FB4

l23034FAC:
	lhu	a5,sp,+0000000E
	sh	a5,s0,+0000000A

l23034FB4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23034FC0:
	lhu	a3,sp,+0000000E
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	andi	a0,a0,+000000FF
	c.j	0000000023034FAA

;; hci_build_acl_rx_data: 23034FD2
;;   Called from:
;;     2308498C (in bt_onchiphci_hanlde_rx_acl)
hci_build_acl_rx_data proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lbu	a0,a0,+00000012
	jal	ra,000000002302CC66
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

;; ble_ke_queue_extract: 2303501C
;;   Called from:
;;     2302C09C (in ble_ke_timer_set)
;;     2302C1B0 (in ble_ke_timer_clear)
;;     23035158 (in ble_ke_task_saved_update)
ble_ke_queue_extract proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.beqz	a0,0000000023035052

l23035042:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	a2,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23035052:
	c.lw	s1,0(a5)
	c.li	s0,00000000
	c.swsp	a5,00000084

l23035058:
	c.lwsp	a2,00000044
	c.beqz	a0,0000000023035042

l2303505C:
	c.mv	a1,s3
	c.jalr	s2
	c.lwsp	a2,000000E4
	c.beqz	a0,000000002303507E

l23035064:
	c.lw	a5,0(a5)
	c.beqz	s0,0000000023035076

l23035068:
	c.sw	s0,0(a5)

l2303506A:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a4)
	c.beqz	a4,000000002303507A

l23035070:
	sw	zero,a5,+00000000
	c.j	0000000023035042

l23035076:
	c.sw	s1,0(a5)
	c.j	000000002303506A

l2303507A:
	c.sw	s1,4(s0)
	c.j	0000000023035042

l2303507E:
	c.mv	s0,a5
	c.lw	a5,0(a5)
	c.swsp	a5,00000084
	c.j	0000000023035058

;; ble_ke_queue_insert: 23035086
;;   Called from:
;;     2302C0D2 (in ble_ke_timer_set)
ble_ke_queue_insert proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.bnez	a0,00000000230350D2

l230350AE:
	lw	s1,s2,+00000000
	c.li	s3,00000000

l230350B4:
	c.beqz	s1,00000000230350C4

l230350B6:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	s4
	c.bnez	a0,00000000230350C8

l230350BE:
	c.mv	s3,s1
	c.lw	s1,0(s1)
	c.j	00000000230350B4

l230350C4:
	sw	s0,s2,+00000004

l230350C8:
	c.sw	s0,0(s1)
	beq	s3,zero,00000000230350E2

l230350CE:
	sw	s0,s3,+00000000

l230350D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230350E2:
	sw	s0,s2,+00000000
	c.j	00000000230350D2

;; ble_cmp_dest_id: 230350E8
ble_cmp_dest_id proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.beqz	a0,0000000023035116

l23035108:
	lbu	a0,sp,+0000000F

l2303510C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23035116:
	lhu	a0,s1,+00000006
	c.sub	a0,s0
	sltiu	a0,a0,+00000001
	c.j	000000002303510C

;; ble_ke_task_saved_update: 23035122
;;   Called from:
;;     230353FE (in ble_ke_state_set)
ble_ke_task_saved_update proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.bnez	a0,000000002303517C

l23035142:
	lui	s3,00023035
	lui	s4,00042026
	lui	s2,00042026

l2303514E:
	addi	a1,s3,+000000E8
	c.mv	a2,s0
	addi	a0,s4,+000002AC
	jal	ra,000000002303501C
	c.mv	a1,a0
	c.beqz	a0,000000002303517C

l23035160:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	addi	a0,s2,+000002A4
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	c.li	a0,00000002
	jal	ra,000000002302B838
	c.j	000000002303514E

l2303517C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ble_ke_handler_search: 2303518C
;;   Called from:
;;     23035246 (in ble_ke_task_handler_get)
;;     23035256 (in ble_ke_task_handler_get)
ble_ke_handler_search proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.beqz	a0,00000000230351B6

l230351AA:
	c.lwsp	a2,00000044

l230351AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230351B6:
	lhu	a5,s0,+00000004
	c.lui	a2,00010000
	c.li	a1,FFFFFFFF
	c.addi	a5,FFFFFFFF
	c.addi	a2,FFFFFFFF

l230351C2:
	bne	a5,a1,00000000230351CA

l230351C6:
	c.li	a0,00000000
	c.j	00000000230351AC

l230351CA:
	c.lw	s0,0(a3)
	slli	a4,a5,00000003
	c.add	a4,a3
	lhu	a3,a4,+00000000
	bne	s1,a3,00000000230351DE

l230351DA:
	c.lw	a4,4(a0)
	c.j	00000000230351AC

l230351DE:
	beq	a3,a2,00000000230351DA

l230351E2:
	c.addi	a5,FFFFFFFF
	c.j	00000000230351C2

;; ble_ke_task_handler_get: 230351E6
;;   Called from:
;;     230352A4 (in ble_ke_task_schedule)
ble_ke_task_handler_get proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.beqz	a0,0000000023035216

l23035208:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	a2,00000044
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23035216:
	lui	a5,00042026
	andi	a4,s0,+000000FF
	c.slli	a4,02
	addi	a5,a5,+00000540
	c.add	a5,a4
	c.lw	a5,0(s1)
	lhu	a5,s1,+0000000E
	c.beqz	a5,0000000023035208

l2303522E:
	c.srli	s0,00000008
	bgeu	s0,a5,0000000023035208

l23035234:
	c.lw	s1,0(a1)
	c.beqz	a1,000000002303524C

l23035238:
	c.lw	s1,8(a5)
	c.mv	a0,s2
	c.add	s0,a5
	lbu	a5,s0,+00000000
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,000000002303518C
	c.swsp	a0,00000084

l2303524C:
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023035208

l23035250:
	c.lw	s1,4(a1)
	c.beqz	a1,0000000023035208

l23035254:
	c.mv	a0,s2
	jal	ra,000000002303518C
	c.swsp	a0,00000084
	c.j	0000000023035208

;; ble_ke_task_schedule: 2303525E
ble_ke_task_schedule proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,00000000230352DE

l23035276:
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,00042026
	addi	a0,s1,+000002A4
	jal	ra,000000002302A36A
	c.mv	s0,a0
	csrrw	zero,mstatus,zero
	c.beqz	a0,00000000230352C6

l23035292:
	c.li	a5,FFFFFFFF
	c.sw	a0,0(a5)
	jal	ra,000000002302BC54
	c.bnez	a0,00000000230352C6

l2303529C:
	lhu	a1,s0,+00000006
	lhu	a0,s0,+00000004
	jal	ra,00000000230351E6
	c.mv	a5,a0
	c.beqz	a0,00000000230352EA

l230352AC:
	lhu	a3,s0,+00000008
	lhu	a2,s0,+00000006
	lhu	a0,s0,+00000004
	addi	a1,s0,+0000000C
	c.jalr	a5
	c.beqz	a0,00000000230352EA

l230352C0:
	c.li	a5,00000002
	beq	a0,a5,00000000230352F2

l230352C6:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a5,s1,+000002A4
	c.bnez	a5,00000000230352DA

l230352D4:
	c.li	a0,00000002
	jal	ra,000000002302B894

l230352DA:
	csrrw	zero,mstatus,zero

l230352DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230352EA:
	c.mv	a0,s0
	jal	ra,000000002302BDCE
	c.j	00000000230352C6

l230352F2:
	lui	a0,00042026
	c.mv	a1,s0
	addi	a0,a0,+000002AC
	jal	ra,000000002302A2FE
	c.j	00000000230352C6

;; ble_ke_task_init: 23035302
;;   Called from:
;;     2302C280 (in ble_ke_init)
ble_ke_task_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002303533C

l23035314:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	lui	a0,00042026
	c.li	a1,00000000
	c.li	a2,00000014
	addi	a0,a0,+00000540
	c.jalr	a5
	c.lwsp	a2,00000020
	lui	a1,00023035
	addi	a1,a1,+0000025E
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002302B7EA

l2303533C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_task_create: 23035342
;;   Called from:
;;     2302CD46 (in llc_init)
;;     23030FAE (in lld_init)
;;     230340AE (in llm_init)
;;     23084840 (in bt_onchiphci_interface_init)
ble_ke_task_create proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.beqz	a0,0000000023035374

l23035366:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23035374:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a5,00000004
	bgeu	a5,s0,000000002303538E

l23035382:
	c.li	a5,00000003

l23035384:
	sb	a5,sp,+0000000F

l23035388:
	csrrw	zero,mstatus,zero
	c.j	0000000023035366

l2303538E:
	lui	a0,00042026
	c.slli	s0,02
	addi	a0,a0,+00000540
	c.add	a0,s0
	c.lw	a0,0(a3)
	c.bnez	a3,0000000023035384

l2303539E:
	c.sw	a0,0(s1)
	c.j	0000000023035388

;; ble_ke_state_set: 230353A2
;;   Called from:
;;     2302CD50 (in llc_init)
;;     2302CD5C (in llc_init)
;;     2302CD9E (in llc_stop)
;;     2302D2F6 (in llc_start)
;;     2302D896 (in llc_con_update_finished)
;;     2302D8C6 (in llc_con_update_finished)
;;     2302D934 (in llc_map_update_finished)
;;     2302D962 (in llc_map_update_finished)
;;     23032D8E (in llm_end_evt_defer)
;;     230330EE (in llm_con_req_ind)
;;     230335AE (in llm_con_req_tx_cfm)
;;     230336DC (in llm_test_mode_start_tx)
;;     23033906 (in llm_test_mode_start_rx)
;;     23033C66 (in llm_set_adv_en)
;;     23033C92 (in llm_set_adv_en)
;;     23033F30 (in llm_set_scan_en)
;;     23033FE2 (in llm_set_scan_en)
;;     230340C4 (in llm_init)
;;     230344C8 (in llm_create_con)
;;     23035576 (in llcp_ping_rsp_handler)
;;     230355CA (in llcp_terminate_ind_handler)
;;     230357CE (in llc_llcp_reject_ind)
;;     230357F0 (in llc_llcp_reject_ind)
;;     23035882 (in llc_llcp_reject_ind)
;;     230358DE (in llc_llcp_reject_ind)
;;     230359B4 (in llcp_pause_enc_req_handler)
;;     230359CC (in llcp_pause_enc_req_handler)
;;     230359DA (in llcp_pause_enc_req_handler)
;;     23035B40 (in llcp_enc_req_handler)
;;     23035B4E (in llcp_enc_req_handler)
;;     23035C54 (in fn23035C3C)
;;     23035D72 (in fn23035D62)
;;     23035E52 (in llcp_vers_ind_handler)
;;     230363F4 (in llcp_start_enc_rsp_handler)
;;     23036420 (in llcp_start_enc_rsp_handler)
;;     23036512 (in llcp_length_rsp_handler)
;;     23036784 (in llcp_con_param_rsp_handler)
;;     2303684C (in llcp_feats_rsp_handler)
;;     230369C4 (in fn2303696E)
;;     23036B06 (in fn23036ADA)
;;     23036B8A (in fn23036ADA)
;;     23036F56 (in llcp_con_param_req_handler)
;;     230370DE (in llc_llcp_terminate_ind_pdu_send)
;;     2303771C (in llc_chmap_update_req_ind_handler)
;;     23037A3A (in llc_length_req_ind_handler)
;;     23037D2E (in llc_enc_mgt_ind_handler)
;;     23037D38 (in llc_enc_mgt_ind_handler)
;;     23037EF0 (in llc_auth_payl_nearly_to_ind_handler)
;;     230381EA (in llc_util_dicon_procedure)
;;     23038436 (in llc_pdu_llcp_tx_ack_defer)
;;     23038440 (in llc_pdu_llcp_tx_ack_defer)
;;     2303880A (in lld_stop_ind_handler)
;;     23038B26 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     23038C1C (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038F9A (in hci_le_start_enc_cmd_handler)
;;     23038FAA (in hci_le_start_enc_cmd_handler)
;;     2303905A (in hci_le_rd_rem_used_feats_cmd_handler)
;;     23039630 (in hci_rd_rem_ver_info_cmd_handler)
;;     2303A392 (in hci_le_test_end_cmd_handler)
;;     2303A41A (in hci_le_create_con_cancel_cmd_handler)
ble_ke_state_set proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.bnez	a0,0000000023035408

l230353C0:
	andi	a4,s0,+000000FF
	c.li	a5,00000004
	bltu	a5,a4,0000000023035402

l230353CA:
	lui	a5,00042026
	c.slli	a4,02
	addi	a5,a5,+00000540
	c.add	a5,a4
	c.lw	a5,0(a5)
	srli	a3,s0,00000008
	lhu	a4,a5,+0000000E
	bgeu	a3,a4,0000000023035408

l230353E4:
	c.lw	a5,8(a5)
	c.add	a5,a3
	lbu	a4,a5,+00000000
	beq	a4,s1,0000000023035408

l230353F0:
	sb	s1,a5,+00000000
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023035122

l23035402:
	lhu	a5,zero,+0000000E
	c.ebreak

l23035408:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_state_get: 23035412
;;   Called from:
;;     2302CE0C (in llc_reset)
;;     2302CE22 (in llc_reset)
;;     2302D860 (in llc_con_update_finished)
;;     2302D908 (in llc_map_update_finished)
;;     23032D2A (in llm_end_evt_defer)
;;     23032D84 (in llm_end_evt_defer)
;;     23032E72 (in llm_pdu_defer)
;;     230330E4 (in llm_con_req_ind)
;;     230335A4 (in llm_con_req_tx_cfm)
;;     23033C58 (in llm_set_adv_en)
;;     23033C84 (in llm_set_adv_en)
;;     23033F22 (in llm_set_scan_en)
;;     23033FD4 (in llm_set_scan_en)
;;     230344BA (in llm_create_con)
;;     230346BC (in hci_fc_acl_en)
;;     230346DA (in hci_fc_acl_en)
;;     2303552C (in llcp_ping_rsp_handler)
;;     23035612 (in llcp_enc_rsp_handler)
;;     23035748 (in llc_llcp_reject_ind)
;;     23035954 (in llcp_pause_enc_req_handler)
;;     23035A3A (in llcp_start_enc_req_handler)
;;     23035ACA (in llcp_enc_req_handler)
;;     23035BC8 (in llcp_unknown_rsp_handler)
;;     23035DC2 (in llcp_vers_ind_handler)
;;     23035F6E (in llcp_pause_enc_rsp_handler)
;;     230362D8 (in llcp_start_enc_rsp_handler)
;;     230364AE (in llcp_length_rsp_handler)
;;     23036666 (in llcp_con_param_rsp_handler)
;;     230367AC (in llcp_feats_rsp_handler)
;;     2303688A (in llcp_channel_map_ind_handler)
;;     23036A04 (in llcp_con_upd_ind_handler)
;;     23036CEA (in llcp_con_param_req_handler)
;;     230370B6 (in llc_llcp_terminate_ind_pdu_send)
;;     230374BE (in llc_llcp_recv_handler)
;;     23037596 (in llm_enc_ind_handler)
;;     230376B6 (in llc_chmap_update_req_ind_handler)
;;     2303773C (in llc_auth_payl_real_to_ind_handler)
;;     230377C0 (in llc_con_upd_req_ind_handler)
;;     230379D0 (in llc_length_req_ind_handler)
;;     23037AD8 (in llc_enc_mgt_ind_handler)
;;     23037D80 (in llc_chnl_assess_timer_handler)
;;     23037E2C (in llc_link_sup_to_ind_handler)
;;     23037E8C (in llc_auth_payl_nearly_to_ind_handler)
;;     23037F30 (in llc_data_ind_handler)
;;     23037FA8 (in lld_stop_ind_handler)
;;     23037FFA (in lld_stop_ind_handler)
;;     23038160 (in llc_util_get_free_conhdl)
;;     2303816C (in llc_util_get_free_conhdl)
;;     23038196 (in llc_util_get_nb_active_link)
;;     230381A6 (in llc_util_get_nb_active_link)
;;     2303833E (in llc_end_evt_defer)
;;     230383A6 (in llc_pdu_llcp_tx_ack_defer)
;;     230383CC (in llc_pdu_llcp_tx_ack_defer)
;;     230386F0 (in lld_stop_ind_handler)
;;     23038702 (in lld_stop_ind_handler)
;;     23038710 (in lld_stop_ind_handler)
;;     2303875E (in lld_stop_ind_handler)
;;     230387EA (in lld_stop_ind_handler)
;;     23038818 (in lld_stop_ind_handler)
;;     23038A20 (in hci_le_set_data_len_cmd_handler)
;;     23038AD6 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     23038B84 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038CDA (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     23038DA8 (in hci_le_ltk_req_reply_cmd_handler)
;;     23038E56 (in hci_disconnect_cmd_handler)
;;     23038F10 (in hci_le_start_enc_cmd_handler)
;;     2303901E (in hci_le_rd_rem_used_feats_cmd_handler)
;;     230390F4 (in hci_le_rd_chnl_map_cmd_handler)
;;     2303915A (in hci_rd_auth_payl_to_cmd_handler)
;;     230391E0 (in hci_rd_rssi_cmd_handler)
;;     23039258 (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     230392FA (in hci_le_con_update_cmd_handler)
;;     2303948C (in hci_wr_auth_payl_to_cmd_handler)
;;     230395BE (in hci_rd_rem_ver_info_cmd_handler)
;;     2303969A (in llc_hci_acl_data_tx_handler)
;;     23039D3E (in hci_le_tx_test_cmd_handler)
;;     23039D76 (in hci_le_rx_test_cmd_handler)
;;     23039E60 (in hci_le_wl_mngt_cmd_handler)
;;     23039F78 (in hci_le_create_con_cmd_handler)
;;     23039FCE (in hci_le_create_con_cmd_handler)
;;     23039FF8 (in hci_le_set_scan_en_cmd_handler)
;;     2303A026 (in hci_le_set_scan_en_cmd_handler)
;;     2303A0C6 (in hci_le_set_scan_param_cmd_handler)
;;     2303A10E (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2303A18A (in hci_le_set_adv_en_cmd_handler)
;;     2303A1BC (in hci_le_set_adv_en_cmd_handler)
;;     2303A216 (in hci_le_set_adv_data_cmd_handler)
;;     2303A290 (in hci_le_set_adv_param_cmd_handler)
;;     2303A2CA (in hci_le_set_rand_add_cmd_handler)
;;     2303A36C (in hci_le_test_end_cmd_handler)
;;     2303A3CC (in hci_le_create_con_cancel_cmd_handler)
;;     2303A40C (in hci_le_create_con_cancel_cmd_handler)
ble_ke_state_get proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,0000000023035438

l2303542C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.addi16sp	00000020
	c.jr	ra

l23035438:
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F
	andi	a4,s0,+000000FF
	c.li	a5,00000004
	bltu	a5,a4,000000002303546E

l23035448:
	lui	a5,00042026
	c.slli	a4,02
	addi	a5,a5,+00000540
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.srli	s0,00000008
	lhu	a4,a5,+0000000E
	bgeu	s0,a4,000000002303542C

l23035460:
	c.lw	a5,8(a5)
	c.add	s0,a5
	lbu	a5,s0,+00000000
	sb	a5,sp,+0000000F
	c.j	000000002303542C

l2303546E:
	lhu	a5,zero,+0000000E
	c.ebreak

;; llc_llcp_send: 23035474
;;   Called from:
;;     23035472 (in send_friend_poll)
;;     23035DA4 (in llc_llcp_version_ind_pdu_send)
;;     23035EB0 (in llc_llcp_ch_map_update_pdu_send)
;;     23035EF0 (in llc_llcp_pause_enc_req_pdu_send)
;;     23035F4E (in llc_llcp_pause_enc_rsp_pdu_send)
;;     23036192 (in llc_llcp_enc_req_pdu_send)
;;     23036242 (in llc_llcp_enc_rsp_pdu_send)
;;     230362B2 (in llc_llcp_start_enc_rsp_pdu_send)
;;     23036472 (in llc_llcp_reject_ind_pdu_send)
;;     23036BD0 (in llc_llcp_con_update_pdu_send)
;;     23036C4C (in llc_llcp_con_param_req_pdu_send)
;;     23036CC8 (in llc_llcp_con_param_rsp_pdu_send)
;;     23036FA6 (in llc_llcp_feats_req_pdu_send)
;;     23036FEA (in llc_llcp_feats_rsp_pdu_send)
;;     2303707E (in llc_llcp_start_enc_req_pdu_send)
;;     230370EC (in llc_llcp_terminate_ind_pdu_send)
;;     23037120 (in llc_llcp_unknown_rsp_send_pdu)
;;     2303724A (in llc_llcp_ping_req_pdu_send)
;;     23037266 (in llc_llcp_ping_rsp_pdu_send)
;;     230372E4 (in llc_llcp_length_req_pdu_send)
;;     23037330 (in llc_llcp_length_rsp_pdu_send)
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
	jal	ra,000000002302BA5A
	c.mv	s3,a0
	c.li	a1,00000000
	c.li	a0,00000010
	jal	ra,000000002302BA5A
	beq	s3,zero,0000000023035508

l230354A2:
	c.mv	s1,a0
	c.beqz	a0,0000000023035508

l230354A6:
	lui	s0,00042026
	slli	a5,s4,00000002
	addi	s0,s0,+00000428
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.li	a2,0000001A
	c.mv	a1,s6
	lw	s2,a5,+00000010
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	jal	ra,000000002302A2FE
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
	jal	zero,000000002302EB66

l23035508:
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

;; llcp_ping_rsp_handler: 2303551C
llcp_ping_rsp_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s2,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s1)
	lbu	a5,s1,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035560

l23035548:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,00000000230381BE

l23035552:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23035560:
	andi	a5,a0,+00000001
	c.beqz	a5,0000000023035552

l23035566:
	lbu	a4,s1,+000000A3
	c.li	a5,00000005
	bne	a4,a5,0000000023035552

l23035570:
	andi	a1,a0,+000000FE
	c.mv	a0,s0
	jal	ra,00000000230353A2
	c.mv	a1,s0
	sb	zero,s1,+000000A3
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.j	0000000023035552

;; llcp_terminate_ind_handler: 2303558A
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
	jal	ra,000000002302C124
	lui	a5,00042026
	slli	a4,s0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,s1,+00000001
	c.li	a1,0000000F
	c.mv	a0,s2
	sb	a4,a5,+000000A1
	lhu	a4,a5,+0000005C
	ori	a4,a4,+00000200
	sh	a4,a5,+0000005C
	jal	ra,00000000230353A2
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,00000000230355E4

l230355DA:
	lbu	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,00000000230381BE

l230355E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_enc_rsp_handler: 230355F2
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
	lui	s2,00042026
	c.swsp	ra,00000094
	c.swsp	s7,00000084
	c.mv	s4,a1
	c.mv	s3,a3
	jal	ra,0000000023035412
	addi	a5,s2,+00000428
	slli	s5,s0,00000002
	c.add	a5,s5
	c.lw	a5,0(s1)
	c.mv	s6,a0
	addi	s2,s2,+00000428
	lbu	a5,s1,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035644

l23035630:
	lbu	a4,s1,+000000A3
	c.li	a5,0000000D
	beq	a4,a5,0000000023035644

l2303563A:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,00000000230381BE

l23035644:
	andi	s6,s6,+00000001
	beq	s6,zero,0000000023035656

l2303564C:
	lbu	a4,s1,+000000A3
	c.li	a5,0000000D
	bne	a4,a5,000000002303570A

l23035656:
	addi	a3,zero,+00000020
	c.mv	a2,s4
	c.li	a1,00000000
	c.li	a0,00000004
	jal	ra,000000002302BC8C
	lui	s7,0004200F
	lw	a5,s7,+000003D0
	c.mv	s6,a0
	addi	a1,s3,+00000001
	c.li	a2,00000008
	addi	a0,s1,+00000079
	c.jalr	a5
	lw	a5,s7,+000003D0
	addi	a1,s1,+00000081
	c.li	a2,00000010
	c.mv	a0,s6
	c.jalr	a5
	lw	a5,s7,+000003D0
	c.li	a2,00000010
	addi	a1,s1,+00000071
	addi	a0,s6,+00000010
	c.jalr	a5
	c.mv	a0,s6
	jal	ra,000000002302BCFA
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
	jal	ra,000000002302C026

l2303570A:
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

;; llc_llcp_reject_ind: 23035722
;;   Called from:
;;     2303591C (in llcp_reject_ind_ext_handler)
;;     23035932 (in llcp_reject_ind_handler)
llc_llcp_reject_ind proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	lui	s0,00042026
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
	addi	s5,s0,+00000428
	jal	ra,0000000023035412
	slli	s7,s4,00000002
	c.mv	s3,a0
	c.add	s5,s7
	c.mv	a1,s1
	addi	a0,zero,+00000102
	lw	s2,s5,+00000000
	jal	ra,000000002302C124
	andi	a5,s3,+00000001
	addi	s0,s0,+00000428
	c.lwsp	a2,000000A4
	beq	a5,zero,00000000230358BA

l23035770:
	lbu	a5,s2,+000000A3
	c.li	a4,0000000C
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230358E8

l23035780:
	lui	a4,000230B6
	c.slli	a5,02
	addi	a4,a4,-00000034
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23035790:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a0,s4
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,000000002303588A

l230357A6:
	c.add	s0,s7
	c.lw	s0,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,00000010
	bne	a5,zero,000000002303588A

l230357B4:
	c.mv	a2,s6
	c.mv	a0,s4
	sb	zero,a4,+000000A5
	c.li	a1,00000000
	c.slli	s3,18
	jal	ra,000000002302D61C
	srai	s3,s3,00000018
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
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
	jal	zero,00000000230353A2

l230357F4:
	beq	a3,zero,00000000230358E8

l230357F8:
	add	s5,s0,s7
	lw	a5,s5,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	bne	a5,zero,00000000230358E8

l2303580A:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.li	a5,0000001A
	bne	s6,a5,000000002303584A

l2303581A:
	c.mv	a0,s4
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,000000002303584A

l23035826:
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
	jal	zero,000000002302BCFA

l2303584A:
	lhu	a5,s2,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,0000000023035874

l23035854:
	andi	a5,a5,-00000041
	sh	a5,s2,+0000005C
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023035874

l23035864:
	lw	a2,s2,+00000010
	c.mv	a1,s4
	c.mv	a0,s6
	addi	a2,a2,+00000028
	jal	ra,000000002302D3C0

l23035874:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023038270

l2303587C:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
	sb	zero,s2,+000000A3

l2303588A:
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

l230358A0:
	add	a5,s0,s7
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.bnez	a5,00000000230358E8

l230358AE:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.j	000000002303587C

l230358BA:
	andi	a5,s3,+00000002
	c.beqz	a5,00000000230358E8

l230358C0:
	c.beqz	a3,00000000230358E8

l230358C2:
	lw	a5,s5,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.bnez	a5,00000000230358E8

l230358CE:
	lbu	a4,s2,+000000A4
	c.li	a5,00000003
	bne	a4,a5,000000002303588A

l230358D8:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230353A2
	sb	zero,s2,+000000A4
	c.j	000000002303588A

l230358E8:
	c.add	s0,s7
	c.lw	s0,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002303588A

l230358F4:
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
	jal	zero,00000000230381BE

;; llcp_reject_ind_ext_handler: 23035912
llcp_reject_ind_ext_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a3,+00000002
	c.li	a3,00000001
	jal	ra,0000000023035722
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_reject_ind_handler: 23035928
llcp_reject_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a3,+00000001
	c.li	a3,00000000
	jal	ra,0000000023035722
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_pause_enc_req_handler: 2303593E
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
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	a4,a5,+00000428
	slli	s3,s1,00000002
	c.add	a4,s3
	lw	s2,a4,+00000000
	lbu	a4,s2,+000000A5
	c.andi	a4,00000008
	c.beqz	a4,0000000023035990

l23035972:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE

l2303597C:
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

l23035990:
	c.mv	s4,a0
	c.mv	a0,s1
	addi	s5,a5,+00000428
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,000000002303597C

l230359A2:
	andi	a5,s4,+00000002
	c.bnez	a5,000000002303597C

l230359A8:
	ori	s1,s4,+00000002
	andi	s1,s1,+000000FF
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230353A2
	andi	a5,s4,+00000001
	c.beqz	a5,00000000230359C8

l230359BE:
	c.mv	a1,s0
	addi	a0,zero,+00000102
	jal	ra,000000002302C124

l230359C8:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230353A2
	ori	a1,s4,+00000006
	andi	a1,a1,+000000FF
	c.mv	a0,s0
	jal	ra,00000000230353A2
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
	jal	ra,0000000023030F88
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023035A1A

l23035A0C:
	lhu	a5,s2,+0000005C
	ori	a5,a5,+00000004
	sh	a5,s2,+0000005C
	c.j	000000002303597C

l23035A1A:
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	000000002303597C

;; llcp_start_enc_req_handler: 23035A28
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
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s3,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.mv	s1,a0
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035A6E

l23035A58:
	lbu	a5,s0,+000000A3
	c.addi	a5,FFFFFFF2
	andi	a5,a5,+000000FD
	c.beqz	a5,0000000023035A6E

l23035A64:
	addi	a1,zero,+0000003D
	c.mv	a0,s3
	jal	ra,00000000230381BE

l23035A6E:
	c.andi	s1,00000001
	lbu	a5,s0,+000000A3
	c.li	a4,0000000E
	c.beqz	s1,0000000023035A96

l23035A78:
	beq	a5,a4,0000000023035A9A

l23035A7C:
	c.li	a4,00000010
	bne	a5,a4,0000000023035AA0

l23035A82:
	c.li	a5,00000011
	sb	a5,s0,+000000A3
	c.mv	a2,s2
	c.mv	a1,s2
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	0000000023035AA0

l23035A96:
	bne	a5,a4,0000000023035A82

l23035A9A:
	c.li	a5,0000000F
	sb	a5,s0,+000000A3

l23035AA0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llcp_enc_req_handler: 23035AB0
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
	jal	ra,0000000023035412
	lui	a4,00042026
	addi	a5,a4,+00000428
	slli	s5,s4,00000002
	c.add	a5,s5
	c.lw	a5,0(s0)
	c.mv	s1,a0
	addi	s6,a4,+00000428
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035B18

l23035AEC:
	lbu	a4,s0,+000000A4
	c.li	a5,00000007
	beq	a4,a5,0000000023035B18

l23035AF6:
	addi	a1,zero,+0000003D
	c.mv	a0,s4
	jal	ra,00000000230381BE
	c.li	a5,00000000

l23035B02:
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

l23035B18:
	c.mv	a0,s4
	jal	ra,0000000023032372
	c.li	a4,00000004
	c.li	a5,00000000
	bne	a0,a4,0000000023035B02

l23035B26:
	andi	a4,s1,+00000002
	c.beqz	a4,0000000023035B36

l23035B2C:
	lbu	a3,s0,+000000A4
	c.li	a4,00000007
	bne	a3,a4,0000000023035B02

l23035B36:
	ori	a1,s1,+00000002
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230353A2
	ori	a1,s1,+00000006
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230353A2
	c.li	a5,00000008
	c.add	s5,s6
	sb	a5,s0,+000000A4
	lw	a5,s5,+00000000
	c.addi	s3,FFFFFFFE
	c.mv	a1,s2
	sw	s3,a5,+00000008
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a4,s5,+00000000
	lbu	a5,a4,+000000A5
	ori	a5,a5,+0000000C
	sb	a5,a4,+000000A5
	c.lw	s0,16(a0)
	jal	ra,0000000023030F88
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023035BA2

l23035B92:
	lhu	a5,s0,+0000005C
	ori	a5,a5,+00000004
	sh	a5,s0,+0000005C

l23035B9E:
	c.li	a5,00000001
	c.j	0000000023035B02

l23035BA2:
	c.mv	a2,s2
	c.mv	a1,s2
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	0000000023035B9E

;; llcp_unknown_rsp_handler: 23035BB0
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
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	a4,a5,+00000428
	slli	s5,s2,00000002
	c.add	a4,s5
	c.lw	a4,0(s0)
	c.mv	s3,a0
	addi	s4,a5,+00000428
	lbu	a4,s0,+000000A5
	c.lwsp	a2,000000A4
	andi	a2,a4,+00000008
	c.beqz	a2,0000000023035C16

l23035BEE:
	lbu	a2,s0,+000000A3
	c.li	a5,0000000D
	beq	a2,a5,0000000023035C16

l23035BF8:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,00000000230381BE

l23035C02:
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

l23035C16:
	andi	a5,s3,+00000001
	c.beqz	a5,0000000023035C02

l23035C1C:
	lbu	a5,s0,+000000A3
	c.li	a2,0000000C
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a2,a5,0000000023035C02

l23035C2C:
	lui	a2,000230B6
	c.slli	a5,02
	addi	a2,a2,+00000000
	c.add	a5,a2
	c.lw	a5,0(a5)
	c.jr	a5

;; fn23035C3C: 23035C3C
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035BFE (in llcp_unknown_rsp_handler)
;;     23035C1A (in llcp_unknown_rsp_handler)
;;     23035C28 (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     23035C64 (in fn23035C5E)
;;     23035C7E (in fn23035C5E)
;;     23035C86 (in fn23035C80)
;;     23035CB6 (in fn23035C80)
;;     23035CE8 (in fn23035C80)
;;     23035CF0 (in fn23035CEA)
;;     23035D0A (in fn23035CEA)
;;     23035D12 (in fn23035CEA)
;;     23035D60 (in fn23035CEA)
;;     23035D68 (in fn23035D62)
;;     23035D84 (in fn23035D62)
fn23035C3C proc
	c.andi	a4,00000010
	c.bnez	a4,0000000023035C02

l23035C40:
	sb	zero,s0,+000000A5
	c.li	a2,0000001A
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002302D61C

l23035C4E:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
	sb	zero,s0,+000000A3
	c.j	0000000023035C02

;; fn23035C5E: 23035C5E
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
fn23035C5E proc
	lbu	a4,a3,+00000001
	c.li	a5,0000000E
	bne	a4,a5,0000000023035C02

l23035C68:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	addi	a2,s0,+00000069
	c.mv	a1,s2
	c.li	a0,0000001A
	jal	ra,000000002302D4AE
	c.j	0000000023035C4E

;; fn23035C80: 23035C80
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
fn23035C80 proc
	lbu	a4,a3,+00000001
	c.li	a5,0000000F
	bne	a4,a5,0000000023035C02

l23035C8A:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a0,s2
	sb	zero,s0,+000000A6
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,0000000023035CB8

l23035CA4:
	add	a5,s4,s5
	c.lw	a5,0(a5)
	c.lw	a5,0(a0)
	c.li	a5,00000002
	sb	a5,a0,+00000000
	jal	ra,000000002302BCFA
	c.j	0000000023035C02

l23035CB8:
	lhu	a5,s0,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,0000000023035CE0

l23035CC2:
	andi	a5,a5,-00000041
	sh	a5,s0,+0000005C
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023035CE0

l23035CD2:
	c.lw	s0,16(a2)
	c.mv	a1,s2
	c.li	a0,0000001A
	addi	a2,a2,+00000028
	jal	ra,000000002302D3C0

l23035CE0:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023038270
	c.j	0000000023035C4E

;; fn23035CEA: 23035CEA
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
fn23035CEA proc
	lbu	a4,a3,+00000001
	c.li	a5,00000014
	bne	a4,a5,0000000023035C02

l23035CF4:
	addi	a0,zero,+00000102
	c.mv	a1,s1
	jal	ra,000000002302C124
	c.li	a5,00000001
	sb	a5,s0,+00000052
	c.li	a0,00000006
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023035C4E

l23035D0C:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	c.bnez	a5,0000000023035C4E

l23035D14:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s2
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
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
	jal	ra,0000000023029E8E
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	0000000023035C4E

;; fn23035D62: 23035D62
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
fn23035D62 proc
	lbu	a4,a3,+00000001
	c.li	a5,00000012
	bne	a4,a5,0000000023035C02

l23035D6C:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
	c.mv	a1,s1
	sb	zero,s0,+000000A3
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.j	0000000023035C02

;; llc_llcp_version_ind_pdu_send: 23035D86
;;   Called from:
;;     23035E5C (in llcp_vers_ind_handler)
;;     2303963E (in hci_rd_rem_ver_info_cmd_handler)
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
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_vers_ind_handler: 23035DAE
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
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s1,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.lwsp	a2,000000A4
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035DFA

l23035DE0:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE

l23035DEA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23035DFA:
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
	c.beqz	a5,0000000023035E58

l23035E2C:
	lbu	a3,s0,+000000A3
	c.li	a5,00000002
	bne	a3,a5,0000000023035E58

l23035E36:
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002302D518
	andi	a1,s3,+000000FE
	sb	zero,s0,+000000A3
	c.mv	a0,s2
	jal	ra,00000000230353A2
	c.j	0000000023035DEA

l23035E58:
	c.bnez	a4,0000000023035DEA

l23035E5A:
	c.mv	a0,s1
	jal	ra,0000000023035D86
	c.j	0000000023035DEA

;; llc_llcp_ch_map_update_pdu_send: 23035E62
;;   Called from:
;;     23037728 (in llc_chmap_update_req_ind_handler)
llc_llcp_ch_map_update_pdu_send proc
	lui	a5,00042026
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
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
	jal	ra,0000000023030BE2
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	sh	a0,sp,+0000000E
	addi	a1,s1,+00000063
	c.li	a2,00000005
	addi	a0,sp,+00000009
	c.jalr	a5
	lbu	a2,sp,+00000008
	c.addi4spn	a1,00000008
	andi	a0,s0,+000000FF
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_pause_enc_req_pdu_send: 23035EBE
;;   Called from:
;;     23037B52 (in llc_enc_mgt_ind_handler)
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
	jal	ra,000000002302C026
	lbu	a2,sp,+0000000C
	c.addi4spn	a1,0000000C
	andi	a0,s0,+000000FF
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_pause_enc_rsp_pdu_send: 23035EFC
;;   Called from:
;;     23035FD0 (in llcp_pause_enc_rsp_handler)
;;     23037C58 (in llc_enc_mgt_ind_handler)
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
	lui	a5,00042026
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a4)
	andi	a0,a0,+000000FF
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFFD
	sb	a5,a4,+000000A5
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_pause_enc_rsp_handler: 23035F58
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
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	s4,a5,+00000428
	slli	s5,s1,00000002
	c.add	s4,s5
	andi	a4,a0,+00000001
	lw	s2,s4,+00000000
	addi	s0,a5,+00000428
	c.beqz	a4,0000000023036006

l23035F8E:
	lbu	a4,s2,+000000A3
	c.li	a5,0000000B
	bne	a4,a5,0000000023036006

l23035F98:
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
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
	jal	ra,0000000023035EFC
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a4,s4,+00000000
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000008
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero

l23035FF2:
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

l23036006:
	lbu	a4,s2,+000000A4
	c.addi	a4,FFFFFFFA
	c.bnez	a4,000000002303606E

l2303600E:
	c.srli	a0,00000001
	c.andi	a0,00000001
	c.beqz	a0,000000002303606E

l23036014:
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
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
	jal	ra,000000002302C026
	c.j	0000000023035FF2

l2303606E:
	lbu	a5,s2,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023035FF2

l23036076:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE
	c.j	0000000023035FF2

;; llc_llcp_enc_req_pdu_send: 23036082
;;   Called from:
;;     23037B96 (in llc_enc_mgt_ind_handler)
llc_llcp_enc_req_pdu_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,00042026
	slli	a5,a0,00000002
	addi	s1,s1,+00000428
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
	lui	s4,0004200F
	c.mv	s2,a0
	sb	a5,sp,+00000011
	c.srli	a5,00000008
	sb	a5,sp,+00000012
	lw	a5,s4,+000003D0
	c.mv	s6,a1
	c.li	a2,00000008
	c.addi	a1,00000002
	addi	a0,sp,+00000009
	lw	s5,s1,+00000000
	c.jalr	a5
	lw	a5,s4,+000003D0
	addi	a1,s5,+00000091
	c.li	a2,00000004
	addi	a0,sp,+0000001B
	addi	s0,zero,+0000005C
	c.jalr	a5
	add	s0,s2,s0
	lw	a5,s4,+000003D0
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
	lw	a5,s4,+000003D0
	c.li	a2,00000010
	addi	a0,s5,+00000081
	c.jalr	a5
	lw	a5,s4,+000003D0
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
	jal	ra,000000002302C026
	lbu	a2,sp,+00000008
	c.addi4spn	a1,00000008
	andi	a0,s2,+000000FF
	jal	ra,0000000023035474
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

;; llc_llcp_enc_rsp_pdu_send: 230361AA
;;   Called from:
;;     23037CC6 (in llc_enc_mgt_ind_handler)
llc_llcp_enc_rsp_pdu_send proc
	lui	a5,00042026
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s1,00000088
	c.add	a5,a4
	c.lw	a5,0(s1)
	lui	s2,0004200F
	c.li	a5,00000004
	sb	a5,sp,+00000000
	lw	a5,s2,+000003D0
	c.mv	s0,a0
	addi	a1,s1,+00000091
	c.li	a2,00000004
	addi	a0,sp,+00000009
	c.jalr	a5
	lw	a5,s2,+000003D0
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
	lw	a5,s2,+000003D0
	c.li	a2,00000008
	c.jalr	a5
	lbu	a2,sp,+00000000
	c.mv	a1,sp
	andi	a0,s0,+000000FF
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_start_enc_rsp_pdu_send: 23036252
;;   Called from:
;;     230363AC (in llcp_start_enc_rsp_handler)
;;     23037BFE (in llc_enc_mgt_ind_handler)
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
	lui	a5,00042026
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,a5,+000000A5
	lhu	a2,a5,+00000050
	lhu	a1,a5,+0000004E
	c.lw	a5,16(a0)
	ori	a4,a4,+00000003
	sb	a4,a5,+000000A5
	jal	ra,0000000023030E52
	lbu	a2,sp,+0000000C
	c.addi4spn	a1,0000000C
	andi	a0,s0,+000000FF
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llcp_start_enc_rsp_handler: 230362BE
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
	lui	s0,00042026
	c.swsp	ra,0000008C
	c.mv	s5,a1
	jal	ra,0000000023035412
	addi	a5,s0,+00000428
	slli	s4,s2,00000002
	c.add	a5,s4
	lw	s3,a5,+00000000
	c.mv	s1,a0
	addi	s0,s0,+00000428
	lbu	a5,s3,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002303632A

l230362F8:
	lbu	a4,s3,+000000A3
	c.li	a5,00000012
	beq	a4,a5,000000002303632A

l23036302:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000B
	beq	a4,a5,000000002303632A

l2303630C:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,00000000230381BE

l23036316:
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

l2303632A:
	andi	a5,s1,+0000000F
	c.li	a4,0000000F
	bne	a5,a4,000000002303637A

l23036334:
	c.mv	a0,s2
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,0000000023036316

l23036340:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000B
	bne	a4,a5,0000000023036316

l2303634A:
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
	c.j	0000000023036316

l2303637A:
	c.mv	a1,s5
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a0,s2
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,00000000230363EA

l23036390:
	c.li	a5,0000000C
	sb	a5,s3,+000000A4
	c.andi	s1,00000001
	c.beqz	s1,00000000230363AA

l2303639A:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s5
	addi	a0,zero,+00000102
	jal	ra,000000002302C026

l230363AA:
	c.mv	a0,s2
	jal	ra,0000000023036252
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	add	a5,s0,s4
	c.lw	a5,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFF7
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero

l230363CC:
	c.add	s0,s4
	c.lw	s0,0(a4)
	lbu	a5,a4,+000000A5
	andi	a3,a5,+00000010
	c.beqz	a3,0000000023036426

l230363DA:
	c.andi	a5,FFFFFFEF
	sb	a5,a4,+000000A5
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002302D5EA
	c.j	0000000023036316

l230363EA:
	c.slli	s1,18
	c.srai	s1,00000018
	andi	a1,s1,+000000FE
	c.mv	a0,s5
	jal	ra,00000000230353A2
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
	jal	ra,00000000230353A2
	c.j	00000000230363CC

l23036426:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002302D61C
	c.j	0000000023036316

;; llc_llcp_reject_ind_pdu_send: 23036432
;;   Called from:
;;     23036546 (in llcp_length_rsp_handler)
;;     230366AC (in llcp_con_param_rsp_handler)
;;     23036752 (in llcp_con_param_rsp_handler)
;;     2303685A (in llcp_feats_rsp_handler)
;;     230369A6 (in fn23036930)
;;     23036A74 (in fn23036A6A)
;;     23036D38 (in llcp_con_param_req_handler)
;;     23037D22 (in llc_enc_mgt_ind_handler)
;;     23038B42 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     23038D8C (in hci_le_ltk_req_neg_reply_cmd_handler)
llc_llcp_reject_ind_pdu_send proc
	lui	a5,00042026
	slli	a4,a0,00000002
	c.addi	sp,FFFFFFE0
	addi	a5,a5,+00000428
	c.swsp	ra,0000008C
	c.add	a5,a4
	c.lw	a5,0(a5)
	andi	a0,a0,+000000FF
	lhu	a4,a5,+0000005C
	c.andi	a4,00000001
	c.beqz	a4,000000002303645A

l23036452:
	lbu	a4,a5,+00000069
	c.andi	a4,00000004
	c.bnez	a4,0000000023036460

l2303645A:
	c.li	a4,0000000D
	bgeu	a4,a1,000000002303647C

l23036460:
	c.li	a5,00000011
	sb	a2,sp,+0000000E
	sb	a5,sp,+0000000C
	sb	a1,sp,+0000000D
	c.li	a2,00000011

l23036470:
	c.addi4spn	a1,0000000C
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303647C:
	c.addi	a1,FFFFFFFD
	sb	a4,sp,+0000000C
	sb	a2,sp,+0000000D
	andi	a1,a1,+000000FD
	c.bnez	a1,0000000023036490

l2303648C:
	sb	zero,a5,+000000A5

l23036490:
	c.li	a2,0000000D
	c.j	0000000023036470

;; llcp_length_rsp_handler: 23036494
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
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s4,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s0)
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230364EA

l230364CA:
	addi	a1,zero,+0000003D
	c.mv	a0,s4
	jal	ra,00000000230381BE

l230364D4:
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

l230364EA:
	c.mv	s3,a0
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	andi	a5,s3,+00000001
	beq	a5,zero,0000000023036648

l230364FE:
	lbu	a4,s0,+000000A3
	c.li	a5,00000004
	bne	a4,a5,0000000023036648

l23036508:
	sb	zero,s0,+000000A3
	andi	a1,s3,+000000FE
	c.mv	a0,s2
	jal	ra,00000000230353A2
	lhu	a3,s1,+00000002
	c.li	a5,0000001A
	bgeu	a5,a3,000000002303653C

l23036520:
	lhu	a1,s1,+00000006
	bgeu	a5,a1,000000002303653C

l23036528:
	lhu	a4,s1,+00000004
	addi	a5,zero,+00000147
	bgeu	a5,a4,000000002303653C

l23036534:
	lhu	a2,s1,+00000008
	bltu	a5,a2,000000002303654C

l2303653C:
	addi	a2,zero,+00000020

l23036540:
	lbu	a1,s1,+00000000
	c.mv	a0,s4
	jal	ra,0000000023036432
	c.j	00000000230364D4

l2303654C:
	lhu	a5,s0,+00000044
	bgeu	a1,a5,0000000023036556

l23036554:
	c.mv	a5,a1

l23036556:
	lhu	s3,s0,+0000004C
	slli	s5,a5,00000010
	srli	s5,s5,00000010
	bgeu	a2,s3,0000000023036568

l23036566:
	c.mv	s3,a2

l23036568:
	lhu	s2,s0,+00000042
	c.slli	s3,10
	srli	s3,s3,00000010
	bgeu	a3,s2,0000000023036578

l23036576:
	c.mv	s2,a3

l23036578:
	lhu	s1,s0,+0000004A
	c.slli	s2,10
	srli	s2,s2,00000010
	bgeu	a4,s1,0000000023036588

l23036586:
	c.mv	s1,a4

l23036588:
	c.slli	s1,10
	c.lw	s0,16(a0)
	c.srli	s1,00000010
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023030E52
	lhu	a5,s0,+00000048
	bne	a5,s5,00000000230365B6

l2303659E:
	lhu	a5,s0,+00000050
	bne	a5,s3,00000000230365B6

l230365A6:
	lhu	a5,s0,+00000046
	bne	a5,s2,00000000230365B6

l230365AE:
	lhu	a5,s0,+0000004E
	beq	a5,s1,00000000230365E6

l230365B6:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,16(a0)
	sh	s5,s0,+00000048
	sh	s3,s0,+00000050
	sh	s2,s0,+00000046
	sh	s1,s0,+0000004E
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023030F8E
	csrrw	zero,mstatus,zero
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFD
	sb	a5,s0,+00000053

l230365E6:
	c.li	a0,00000006
	jal	ra,0000000023032ACE
	beq	a0,zero,00000000230364D4

l230365F0:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	bne	a5,zero,00000000230364D4

l230365FA:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s4
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
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
	jal	ra,0000000023029E8E
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	00000000230364D4

l23036648:
	c.li	a2,00000011
	c.j	0000000023036540

;; llcp_con_param_rsp_handler: 2303664C
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
	lui	s1,00042026
	jal	ra,0000000023035412
	slli	a5,s0,00000002
	addi	s1,s1,+00000428
	c.add	s1,a5
	c.lw	s1,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002303669A

l2303667E:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,00000000230381BE

l23036688:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2303669A:
	lbu	a4,a4,+000000A3
	c.li	a5,00000007
	beq	a4,a5,00000000230366B2

l230366A4:
	lbu	a1,s2,+00000000
	c.li	a2,0000001F
	c.mv	a0,s0
	jal	ra,0000000023036432
	c.j	0000000023036688

l230366B2:
	c.mv	a1,s3
	c.mv	s4,a0
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,0000000023036688

l230366CA:
	c.lw	s1,0(s1)
	lhu	a4,s2,+00000002
	c.lw	s1,0(a0)
	lhu	a5,a0,+00000004
	bltu	a5,a4,0000000023036746

l230366DA:
	lhu	a4,s2,+00000004
	lhu	a5,a0,+00000002
	bltu	a4,a5,0000000023036746

l230366E6:
	c.li	a5,00000004
	sb	a5,a0,+00000000
	lhu	a5,s2,+00000002
	lhu	a4,a0,+00000006
	sh	a5,a0,+00000002
	lhu	a5,s2,+00000004
	sh	a5,a0,+00000004
	lhu	a5,s2,+00000006
	bgeu	a5,a4,000000002303670A

l23036708:
	c.mv	a5,a4

l2303670A:
	sh	a5,a0,+00000006
	lhu	a4,a0,+00000008
	lhu	a5,s2,+00000008
	bgeu	a5,a4,000000002303671C

l2303671A:
	c.mv	a5,a4

l2303671C:
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
	jal	ra,000000002302BCFA
	c.j	0000000023036688

l23036746:
	addi	a2,zero,+00000020
	c.li	a1,00000010
	c.mv	a0,s0
	lw	s2,s1,+00000010
	jal	ra,0000000023036432
	lhu	a5,s1,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,000000002303677E

l23036760:
	andi	a5,a5,-00000041
	sh	a5,s1,+0000005C
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303677E

l23036770:
	addi	a2,s2,+00000028
	c.mv	a1,s0
	addi	a0,zero,+00000020
	jal	ra,000000002302D3C0

l2303677E:
	andi	a1,s4,+000000FE
	c.mv	a0,s3
	jal	ra,00000000230353A2
	c.li	a1,00000000
	sb	zero,s1,+000000A3
	c.mv	a0,s0
	jal	ra,0000000023038270
	c.j	0000000023036688

;; llcp_feats_rsp_handler: 23036796
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
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s1,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s0)
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230367E4

l230367C8:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE

l230367D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230367E4:
	andi	a5,a0,+00000001
	c.mv	s3,a0
	c.beqz	a5,0000000023036852

l230367EC:
	lbu	a4,s0,+000000A3
	c.li	a5,00000001
	bne	a4,a5,0000000023036852

l230367F6:
	slli	a1,s1,00000008
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	addi	a3,s4,+00000001
	addi	a5,s0,+00000069
	addi	a1,s0,+00000071
	c.mv	a2,a3

l23036818:
	lbu	a4,a5,+00000000
	lbu	a0,a3,+00000000
	c.addi	a5,00000001
	c.addi	a3,00000001
	c.and	a4,a0
	sb	a4,a5,+00000FFF
	bne	a5,a1,0000000023036818

l2303682E:
	lhu	a5,s0,+0000005C
	c.mv	a1,s1
	c.li	a0,00000000
	ori	a5,a5,+00000001
	sh	a5,s0,+0000005C
	jal	ra,000000002302D4AE
	andi	a1,s3,+000000FE
	sb	zero,s0,+000000A3
	c.mv	a0,s2
	jal	ra,00000000230353A2
	c.j	00000000230367D2

l23036852:
	lbu	a1,s4,+00000000
	c.li	a2,00000011
	c.mv	a0,s1
	jal	ra,0000000023036432
	c.j	00000000230367D2

;; llcp_channel_map_ind_handler: 23036860
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
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	a4,a5,+00000428
	slli	a3,s6,00000002
	c.add	a4,a3
	c.lw	a4,0(s0)
	c.slli	s3,01
	c.mv	s2,a0
	addi	a4,a5,+00000428
	c.beqz	s1,00000000230368C8

l230368A8:
	sb	zero,s5,+00000001

l230368AC:
	add	a5,a4,a3
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230368EA

l230368BA:
	c.li	a5,00000004
	sb	a5,s5,+00000001
	c.bnez	s1,00000000230368FA

;; fn230368C2: 230368C2
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368C0 (in llcp_channel_map_ind_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
fn230368C2 proc
	addi	a1,zero,+0000003D
	c.j	0000000023036994

l230368C8:
	lbu	a5,s5,+00000001
	c.beqz	a5,00000000230368AC

l230368CE:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000004
	bltu	a4,a5,00000000230368FA

l230368DA:
	lui	a4,000230B6
	c.slli	a5,02
	addi	a4,a4,+00000034
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l230368EA:
	c.lw	s0,16(a0)
	jal	ra,0000000023030E48
	c.beqz	a0,0000000023036916

l230368F2:
	c.li	a5,00000002
	sb	a5,s5,+00000001
	c.beqz	s1,000000002303699C

l230368FA:
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

l23036916:
	c.mv	a0,s6
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,0000000023036928

l23036922:
	andi	a5,s2,+00000002
	c.beqz	a5,0000000023036934

l23036928:
	c.li	a5,00000005
	sb	a5,s5,+00000001
	c.bnez	s1,00000000230368FA

;; fn23036930: 23036930
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     2303692E (in llcp_channel_map_ind_handler)
;;     2303699C (in fn2303699C)
fn23036930 proc
	c.li	a2,00000011
	c.j	00000000230369A0

l23036934:
	lw	s8,s0,+00000010
	lhu	s9,s7,+00000006
	c.lui	a4,00008000
	lhu	a5,s8,+00000060
	c.addi	a4,FFFFFFFE
	sub	a5,s9,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,0000000023036988

l23036950:
	c.li	a2,00000005
	addi	a1,s7,+00000001
	addi	a0,s0,+00000063
	jal	ra,00000000230A382C
	c.mv	a1,s9
	c.mv	a0,s8
	jal	ra,000000002303265C
	c.li	a5,00000001
	sb	a5,s5,+00000001
	c.bnez	s1,00000000230368FA

;; fn2303696E: 2303696E
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     2303696C (in llcp_channel_map_ind_handler)
fn2303696E proc
	lhu	a5,s0,+0000005C
	slli	a4,a5,00000014
	bge	a4,zero,00000000230369AC

l2303697A:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000005C
	c.j	00000000230368FA

l23036988:
	c.li	a5,00000003
	sb	a5,s5,+00000001
	c.bnez	s1,00000000230368FA

;; fn23036990: 23036990
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368C0 (in llcp_channel_map_ind_handler)
;;     230368C6 (in fn230368C2)
;;     230368D6 (in llcp_channel_map_ind_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     230368F8 (in llcp_channel_map_ind_handler)
;;     2303692E (in llcp_channel_map_ind_handler)
;;     2303696C (in llcp_channel_map_ind_handler)
;;     23036986 (in fn2303696E)
;;     2303698E (in llcp_channel_map_ind_handler)
;;     2303698E (in llcp_channel_map_ind_handler)
;;     230369AA (in fn23036930)
;;     230369C8 (in fn2303696E)
fn23036990 proc
	addi	a1,zero,+00000028

l23036994:
	c.mv	a0,s6
	jal	ra,00000000230381BE
	c.j	00000000230368FA

;; fn2303699C: 2303699C
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     230368F8 (in llcp_channel_map_ind_handler)
fn2303699C proc
	addi	a2,zero,+00000023

l230369A0:
	lbu	a1,s7,+00000000
	c.mv	a0,s6
	jal	ra,0000000023036432
	c.j	00000000230368FA

l230369AC:
	ori	a5,a5,+00000400
	sh	a5,s0,+0000005C
	ori	a1,s2,+00000002
	c.li	a5,00000001
	sb	a5,s0,+000000A4
	andi	a1,a1,+000000FF
	c.mv	a0,s4
	jal	ra,00000000230353A2
	c.j	00000000230368FA

;; llcp_con_upd_ind_handler: 230369CA
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
llcp_con_upd_ind_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s8,00000004
	lui	s8,00042026
	c.swsp	s9,00000080
	addi	a5,s8,+00000428
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
	jal	ra,0000000023035412
	c.slli	s3,01
	c.mv	s2,a0
	addi	s8,s8,+00000428
	beq	s6,zero,0000000023036A36

l23036A14:
	sb	zero,s7,+00000001

l23036A18:
	c.add	s8,s9
	lw	a5,s8,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023036A58

l23036A26:
	c.li	a5,00000004
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023036B4A

;; fn23036A30: 23036A30
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     23036A2C (in llcp_con_upd_ind_handler)
;;     23036A56 (in llcp_con_upd_ind_handler)
fn23036A30 proc
	addi	a1,zero,+0000003D
	c.j	0000000023036B6A

l23036A36:
	lbu	a5,s7,+00000001
	c.beqz	a5,0000000023036A18

l23036A3C:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000004
	bltu	a4,a5,0000000023036B4A

l23036A48:
	lui	a4,000230B6
	c.slli	a5,02
	addi	a4,a4,+00000048
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23036A58:
	c.lw	s0,16(a0)
	jal	ra,0000000023030E48
	c.beqz	a0,0000000023036A7A

l23036A60:
	c.li	a5,00000002
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023036B4A

;; fn23036A6A: 23036A6A
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     23036A56 (in llcp_con_upd_ind_handler)
;;     23036A66 (in llcp_con_upd_ind_handler)
;;     23036A92 (in fn23036A90)
fn23036A6A proc
	addi	a2,zero,+00000023

l23036A6E:
	lbu	a1,s1,+00000000
	c.mv	a0,s5
	jal	ra,0000000023036432
	c.j	0000000023036B4A

l23036A7A:
	c.mv	a0,s5
	jal	ra,0000000023032372
	c.li	a5,00000004
	beq	a0,a5,0000000023036A94

l23036A86:
	c.li	a5,00000005
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023036B4A

;; fn23036A90: 23036A90
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     23036A56 (in llcp_con_upd_ind_handler)
;;     23036A8C (in llcp_con_upd_ind_handler)
fn23036A90 proc
	c.li	a2,00000011
	c.j	0000000023036A6E

l23036A94:
	c.lw	s0,16(a3)
	lhu	a5,s1,+0000000A
	lhu	a4,a3,+00000060
	c.sub	a5,a4
	c.slli	a5,10
	c.lui	a4,00008000
	c.srli	a5,00000010
	c.addi	a4,FFFFFFFE
	bltu	a4,a5,0000000023036B40

l23036AAC:
	lhu	a5,a3,+00000078
	lbu	a4,s1,+00000001
	c.srli	a5,00000001
	bltu	a4,a5,0000000023036AC0

l23036ABA:
	c.addi	a5,FFFFFFFF
	sb	a5,s1,+00000001

l23036AC0:
	lhu	a5,s1,+00000008
	c.lw	s0,16(a0)
	c.mv	a1,s1
	sh	a5,s0,+00000056
	jal	ra,00000000230326B6
	c.li	a5,00000001
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023036B4A

;; fn23036ADA: 23036ADA
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     23036A56 (in llcp_con_upd_ind_handler)
;;     23036AD6 (in llcp_con_upd_ind_handler)
fn23036ADA proc
	andi	a5,s2,+00000001
	c.beqz	a5,0000000023036B12

l23036AE0:
	lbu	a5,s0,+000000A3
	c.li	a4,00000001
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023036B12

l23036AF0:
	c.mv	a1,s4
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	andi	s2,s2,+000000FE
	c.mv	a1,s2
	c.mv	a0,s4
	sb	zero,s0,+000000A3
	jal	ra,00000000230353A2
	c.li	a1,00000000
	c.mv	a0,s5
	jal	ra,0000000023038270

l23036B12:
	lbu	a4,s0,+000000A4
	c.li	a5,00000003
	bne	a4,a5,0000000023036B26

l23036B1C:
	c.mv	a1,s4
	addi	a0,zero,+00000102
	jal	ra,000000002302C124

l23036B26:
	lhu	a5,s0,+0000005C
	slli	a4,a5,00000014
	bge	a4,zero,0000000023036B72

l23036B32:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000005C
	c.j	0000000023036B4A

l23036B40:
	c.li	a5,00000003
	sb	a5,s7,+00000001
	beq	s6,zero,0000000023036B66

l23036B4A:
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

;; fn23036B66: 23036B66
;;   Called from:
;;     2303578E (in llc_llcp_reject_ind)
;;     23035C3A (in llcp_unknown_rsp_handler)
;;     230368E8 (in llcp_channel_map_ind_handler)
;;     23036A2C (in llcp_con_upd_ind_handler)
;;     23036A34 (in fn23036A30)
;;     23036A44 (in llcp_con_upd_ind_handler)
;;     23036A56 (in llcp_con_upd_ind_handler)
;;     23036A66 (in llcp_con_upd_ind_handler)
;;     23036A78 (in fn23036A6A)
;;     23036A8C (in llcp_con_upd_ind_handler)
;;     23036AD6 (in llcp_con_upd_ind_handler)
;;     23036B3E (in fn23036ADA)
;;     23036B46 (in llcp_con_upd_ind_handler)
;;     23036B46 (in llcp_con_upd_ind_handler)
;;     23036B8E (in fn23036ADA)
fn23036B66 proc
	addi	a1,zero,+00000028

l23036B6A:
	c.mv	a0,s5
	jal	ra,00000000230381BE
	c.j	0000000023036B4A

l23036B72:
	ori	a5,a5,+00000400
	sh	a5,s0,+0000005C
	ori	a1,s2,+00000002
	c.li	a5,00000004
	sb	a5,s0,+000000A4
	andi	a1,a1,+000000FF
	c.mv	a0,s4
	jal	ra,00000000230353A2
	c.j	0000000023036B4A

;; llc_llcp_con_update_pdu_send: 23036B90
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
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_con_param_req_pdu_send: 23036BDA
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
	jal	ra,0000000023035474
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; llc_llcp_con_param_rsp_pdu_send: 23036C56
;;   Called from:
;;     23036F5E (in llcp_con_param_req_handler)
;;     23038CA6 (in hci_le_rem_con_param_req_reply_cmd_handler)
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
	jal	ra,0000000023035474
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; llcp_con_param_req_handler: 23036CD2
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
	jal	ra,0000000023035412
	lui	a5,00042026
	slli	a4,s1,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	lw	s2,a5,+00000000
	lbu	a5,s2,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023036D26

l23036D08:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE

l23036D12:
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

l23036D26:
	andi	a5,a0,+00000002
	c.mv	s4,a0
	c.beqz	a5,0000000023036D3E

l23036D2E:
	addi	a2,zero,+00000023

l23036D32:
	lbu	a1,s0,+00000000

l23036D36:
	c.mv	a0,s1
	jal	ra,0000000023036432
	c.j	0000000023036D12

l23036D3E:
	c.mv	a0,s1
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,0000000023036D6C

l23036D4A:
	andi	a5,s4,+00000001
	c.beqz	a5,0000000023036D6C

l23036D50:
	lbu	a5,s2,+000000A3
	c.li	a4,00000007
	beq	a5,a4,0000000023036D2E

l23036D5A:
	c.li	a4,00000009
	beq	a5,a4,0000000023036D2E

l23036D60:
	c.li	a4,00000006
	bne	a5,a4,0000000023036D6C

l23036D66:
	addi	a2,zero,+0000002A
	c.j	0000000023036D32

l23036D6C:
	lhu	a1,s0,+00000002
	lhu	a4,s0,+00000004
	bltu	a4,a1,0000000023036DB8

l23036D78:
	lhu	a2,s0,+00000006
	addi	a5,zero,+000001F3
	bltu	a5,a2,0000000023036DB8

l23036D84:
	c.lui	a5,00001000
	addi	a3,a5,-00000380
	bltu	a3,a4,0000000023036DB8

l23036D8E:
	c.li	a3,00000005
	bgeu	a3,a1,0000000023036DB8

l23036D94:
	lhu	a3,s0,+00000008
	addi	a5,a5,-0000038A
	addi	a0,a3,-0000000A
	c.slli	a0,10
	c.srli	a0,00000010
	bltu	a5,a0,0000000023036DB8

l23036DA8:
	addi	a5,a2,+00000001
	add	a5,a5,a4
	slli	a0,a3,00000002
	bltu	a5,a0,0000000023036DBE

l23036DB8:
	c.li	a2,0000001E

l23036DBA:
	c.li	a1,0000000F
	c.j	0000000023036D36

l23036DBE:
	lw	a0,s2,+00000010
	lhu	a5,a0,+00000078
	c.srli	a5,00000001
	bltu	a5,a1,0000000023036DE2

l23036DCC:
	bltu	a4,a5,0000000023036DE2

l23036DD0:
	lhu	a5,a0,+0000005E
	c.addi	a5,FFFFFFFF
	bne	a2,a5,0000000023036DE2

l23036DDA:
	lhu	a5,s2,+00000054
	beq	a5,a3,0000000023036E6C

l23036DE2:
	c.li	a0,00000005
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023036E68

l23036DEA:
	addi	a3,zero,+00000022
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000109
	jal	ra,000000002302BC8C
	c.li	a4,00000003
	c.mv	a5,a0
	sb	a4,a0,+00000000

l23036E02:
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
	jal	ra,000000002302BCFA
	c.j	0000000023036D12

l23036E68:
	c.li	a2,0000001A
	c.j	0000000023036DBA

l23036E6C:
	c.mv	a0,s1
	jal	ra,0000000023032372
	c.li	s5,00000003
	bne	a0,s5,0000000023036ECE

l23036E78:
	addi	a3,zero,+00000022
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000109
	jal	ra,000000002302BC8C
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
	c.j	0000000023036E02

l23036ECE:
	c.mv	a0,s1
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,0000000023036D12

l23036EDA:
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
	jal	ra,0000000023032162
	c.bnez	a0,0000000023036F74

l23036F48:
	ori	a1,s4,+00000002
	c.mv	a0,s3
	sb	s5,s2,+000000A4
	andi	a1,a1,+000000FF
	jal	ra,00000000230353A2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023036C56
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	c.j	0000000023036D12

l23036F74:
	addi	a2,zero,+00000020
	c.j	0000000023036DBA

;; llc_llcp_feats_req_pdu_send: 23036F7A
;;   Called from:
;;     23039072 (in hci_le_rd_rem_used_feats_cmd_handler)
llc_llcp_feats_req_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023032372
	c.li	a4,00000003
	c.li	a5,0000000E
	bne	a0,a4,0000000023036F90

l23036F8E:
	c.li	a5,00000008

l23036F90:
	addi	a0,sp,+00000005
	sb	a5,sp,+00000004
	jal	ra,0000000023032B00
	lbu	a2,sp,+00000004
	c.addi4spn	a1,00000004
	andi	a0,s0,+000000FF
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_feats_rsp_pdu_send: 23036FB2
;;   Called from:
;;     230371F6 (in llcp_feats_req_handler)
llc_llcp_feats_rsp_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a5,00000009
	c.mv	s0,a0
	addi	a0,sp,+00000005
	c.swsp	ra,0000008C
	sb	a5,sp,+00000004
	jal	ra,0000000023032B00
	lui	a5,00042026
	slli	a4,s0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a2,sp,+00000004
	c.addi4spn	a1,00000004
	lbu	a5,a5,+00000069
	andi	a0,s0,+000000FF
	sb	a5,sp,+00000005
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_start_enc_req_pdu_send: 23036FF6
;;   Called from:
;;     23037D4A (in llc_enc_mgt_ind_handler)
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
	lui	a3,00042026
	slli	a2,a0,00000002
	addi	a3,a3,+00000428
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
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_terminate_ind_pdu_send: 23037088
;;   Called from:
;;     23037CFE (in llc_enc_mgt_ind_handler)
;;     23038D20 (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     23038EA2 (in hci_disconnect_cmd_handler)
llc_llcp_terminate_ind_pdu_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	slli	s0,a0,00000008
	ori	s0,s0,+00000001
	lui	a5,00042026
	c.slli	s0,10
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.srli	s0,00000010
	c.add	a5,a4
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.mv	a0,s0
	c.swsp	a1,00000084
	lw	s2,a5,+00000000
	jal	ra,0000000023035412
	c.lwsp	a2,00000064
	c.li	a4,00000013
	c.li	a5,00000016
	beq	a1,a4,00000000230370C6

l230370C4:
	c.mv	a5,a1

l230370C6:
	sb	a1,sp,+0000001D
	ori	a1,a0,+0000000F
	sb	a5,s2,+000000A1
	c.mv	a0,s0
	c.li	a5,00000002
	andi	a1,a1,+000000FF
	sb	a5,sp,+0000001C
	jal	ra,00000000230353A2
	lbu	a2,sp,+0000001C
	c.addi4spn	a1,0000001C
	andi	a0,s1,+000000FF
	jal	ra,0000000023035474
	lhu	a2,s2,+00000054
	c.mv	a1,s0
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; llc_llcp_unknown_rsp_send_pdu: 2303710A
;;   Called from:
;;     23037156 (in llc_llcp_unknown_ind_handler.isra.1)
llc_llcp_unknown_rsp_send_pdu proc
	c.addi	sp,FFFFFFE0
	sb	a1,sp,+0000000D
	c.li	a5,00000007
	c.addi4spn	a1,0000000C
	c.li	a2,00000007
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_unknown_ind_handler.isra.1: 2303712A
;;   Called from:
;;     2303719C (in llcp_feats_req_handler)
;;     2303722A (in llcp_slave_feature_req_handler)
;;     2303754E (in llc_llcp_recv_handler)
llc_llcp_unknown_ind_handler.isra.1 proc
	lui	a5,00042026
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.swsp	ra,00000084
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023037156

l23037146:
	addi	a1,zero,+0000003D
	jal	ra,00000000230381BE

l2303714E:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23037156:
	jal	ra,000000002303710A
	c.j	000000002303714E

;; llcp_feats_req_handler: 2303715C
;;   Called from:
;;     23037222 (in llcp_slave_feature_req_handler)
llcp_feats_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042026
	c.swsp	s3,0000008C
	addi	a5,s0,+00000428
	slli	s3,a0,00000002
	c.swsp	s1,00000090
	c.add	a5,s3
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	a3,00000084
	lw	s2,a5,+00000000
	c.mv	s1,a0
	jal	ra,0000000023032372
	c.li	a5,00000004
	addi	s0,s0,+00000428
	c.lwsp	a2,000000A4
	beq	a0,a5,00000000230371B0

l2303718E:
	lbu	a4,a3,+00000000
	c.li	a5,00000008
	bne	a4,a5,00000000230371B0

l23037198:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002303712A

l230371A0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l230371B0:
	c.add	s0,s3
	c.lw	s0,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230371C8

l230371BC:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,00000000230381BE
	c.j	00000000230371A0

l230371C8:
	addi	a5,s2,+00000069
	c.addi	a3,00000001
	addi	a2,s2,+00000071

l230371D2:
	lbu	a4,a5,+00000000
	lbu	a1,a3,+00000000
	c.addi	a5,00000001
	c.addi	a3,00000001
	c.and	a4,a1
	sb	a4,a5,+00000FFF
	bne	a5,a2,00000000230371D2

l230371E8:
	lhu	a5,s2,+0000005C
	c.mv	a0,s1
	ori	a5,a5,+00000001
	sh	a5,s2,+0000005C
	jal	ra,0000000023036FB2
	c.j	00000000230371A0

;; llcp_slave_feature_req_handler: 230371FC
llcp_slave_feature_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023032372
	c.li	a5,00000003
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	bne	a0,a5,0000000023037226

l2303721A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002303715C

l23037226:
	c.mv	a0,s0
	c.li	a1,0000000E
	jal	ra,000000002303712A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_ping_req_pdu_send: 23037238
;;   Called from:
;;     23037F0C (in llc_auth_payl_nearly_to_ind_handler)
llc_llcp_ping_req_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000012
	c.addi4spn	a1,0000000C
	c.li	a2,00000012
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_ping_rsp_pdu_send: 23037254
;;   Called from:
;;     2303729C (in llcp_ping_req_handler)
llc_llcp_ping_rsp_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000013
	c.addi4spn	a1,0000000C
	c.li	a2,00000013
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_ping_req_handler: 23037270
llcp_ping_req_handler proc
	lui	a5,00042026
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.swsp	ra,00000084
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002303729C

l2303728C:
	addi	a1,zero,+0000003D
	jal	ra,00000000230381BE

l23037294:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303729C:
	jal	ra,0000000023037254
	c.j	0000000023037294

;; llc_llcp_length_req_pdu_send: 230372A2
;;   Called from:
;;     23037A46 (in llc_length_req_ind_handler)
llc_llcp_length_req_pdu_send proc
	lui	a5,00042026
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
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
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_length_rsp_pdu_send: 230372EE
;;   Called from:
;;     2303743C (in llcp_length_req_handler)
llc_llcp_length_rsp_pdu_send proc
	lui	a5,00042026
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
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
	jal	ra,0000000023035474
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_length_req_handler: 2303733A
llcp_length_req_handler proc
	lui	a5,00042026
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
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
	c.beqz	a5,000000002303738E

l23037370:
	addi	a1,zero,+0000003D
	jal	ra,00000000230381BE

l23037378:
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

l2303738E:
	lhu	a4,a3,+00000006
	lhu	a5,s0,+00000044
	c.mv	s5,a0
	bgeu	a4,a5,000000002303739E

l2303739C:
	c.mv	a5,a4

l2303739E:
	slli	s4,a5,00000010
	lhu	s3,s0,+0000004C
	lhu	a5,a3,+00000008
	srli	s4,s4,00000010
	bgeu	a5,s3,00000000230373B4

l230373B2:
	c.mv	s3,a5

l230373B4:
	lhu	a5,a3,+00000002
	lhu	s2,s0,+00000042
	c.slli	s3,10
	srli	s3,s3,00000010
	bgeu	a5,s2,00000000230373C8

l230373C6:
	c.mv	s2,a5

l230373C8:
	lhu	a5,a3,+00000004
	lhu	s1,s0,+0000004A
	c.slli	s2,10
	srli	s2,s2,00000010
	bgeu	a5,s1,00000000230373DC

l230373DA:
	c.mv	s1,a5

l230373DC:
	c.slli	s1,10
	c.lw	s0,16(a0)
	c.srli	s1,00000010
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023030E52
	lhu	a5,s0,+00000048
	bne	a5,s4,000000002303740A

l230373F2:
	lhu	a5,s0,+00000050
	bne	a5,s3,000000002303740A

l230373FA:
	lhu	a5,s0,+00000046
	bne	a5,s2,000000002303740A

l23037402:
	lhu	a5,s0,+0000004E
	beq	a5,s1,000000002303743A

l2303740A:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,16(a0)
	sh	s4,s0,+00000048
	sh	s3,s0,+00000050
	sh	s2,s0,+00000046
	sh	s1,s0,+0000004E
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023030F8E
	csrrw	zero,mstatus,zero
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFD
	sb	a5,s0,+00000053

l2303743A:
	c.mv	a0,s5
	jal	ra,00000000230372EE
	lbu	a5,s0,+00000053
	c.li	a0,00000006
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000053
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023037378

l23037452:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	c.bnez	a5,0000000023037378

l2303745A:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s5
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
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
	jal	ra,0000000023029E8E
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	0000000023037378

;; llc_llcp_recv_handler: 230374A8
;;   Called from:
;;     230309F4 (in lld_pdu_rx_handler)
;;     230376A2 (in llc_llcp_recv_ind_handler)
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000007F
	addi	a5,zero,+0000007F
	c.slli	s1,01
	beq	a4,a5,0000000023037552

l230374D0:
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	bne	a0,a5,00000000230374EA

l230374DC:
	lbu	a5,s0,+00000000
	c.li	a4,00000002
	andi	a5,a5,+000000FB
	bne	a5,a4,0000000023037552

l230374EA:
	srli	a0,s2,00000008
	lui	a5,00042026
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000008
	c.bnez	a5,0000000023037552

l23037506:
	c.bnez	a1,0000000023037538

l23037508:
	lbu	a4,s0,+00000000
	lui	a5,000230B6
	addi	a5,a5,+0000005C
	c.slli	a4,03
	c.beqz	a2,0000000023037522

l23037518:
	add	a3,a5,a4
	lbu	a3,a3,+00000004
	c.beqz	a3,0000000023037552

l23037522:
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

l23037538:
	c.li	a5,00000019
	bne	a1,a5,0000000023037552

l2303753E:
	c.bnez	a2,0000000023037552

l23037540:
	lbu	a1,s0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002303712A

l23037552:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_get_autorize: 23037560
;;   Called from:
;;     23030364 (in lld_pdu_tx_prog)
;;     2303051A (in lld_pdu_tx_prog)
llc_llcp_get_autorize proc
	c.li	a5,00000015
	bltu	a5,a0,000000002303757A

l23037566:
	slli	a5,a0,00000003
	lui	a0,000230B6
	addi	a0,a0,+0000005C
	c.add	a0,a5
	lbu	a0,a0,+00000005
	c.jr	ra

l2303757A:
	c.li	a0,00000000
	c.jr	ra

;; llc_dft_handler: 2303757E
llc_dft_handler proc
	c.li	a0,00000000
	c.jr	ra

;; llm_enc_ind_handler: 23037582
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,0000000023037684

l230375A4:
	srli	s0,s1,00000008
	lui	a5,00042026
	slli	a4,s0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	lw	s3,a5,+00000000
	c.li	a5,00000013
	c.mv	s4,a0
	lbu	a4,s3,+000000A3
	beq	a4,a5,0000000023037632

l230375C6:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000E
	bne	a4,a5,00000000230375DC

l230375D0:
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000004
	beq	a0,a5,000000002303763E

l230375DC:
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,0000000023037660

l230375E8:
	andi	a5,s4,+00000002
	c.beqz	a5,0000000023037660

l230375EE:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000A
	bne	a4,a5,0000000023037660

l230375F8:
	addi	a0,zero,+0000005C
	add	a0,s0,a0
	lui	a5,00028008
	addi	a5,a5,+000000B4
	addi	a2,zero,+000000FF
	c.add	a0,a5
	c.li	a5,0000000F

l23037610:
	add	a3,s2,a5
	lbu	a4,a3,+00000000
	lbu	a3,a3,+00000001
	c.addi	a5,FFFFFFFE
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,a0,+00000000
	andi	a5,a5,+000000FF
	c.addi	a0,00000002
	bne	a5,a2,0000000023037610

l23037630:
	c.j	0000000023037652

l23037632:
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,00000000230375C6

l2303763E:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.li	a2,00000010
	addi	a1,s2,+00000001
	addi	a0,s3,+00000091
	c.jalr	a5

l23037652:
	c.mv	a2,s1
	c.mv	a1,s1
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	0000000023037684

l23037660:
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,0000000023037684

l2303766C:
	andi	s4,s4,+00000001
	beq	s4,zero,0000000023037684

l23037674:
	lbu	a5,s3,+000000A3
	c.li	a4,00000001
	c.addi	a5,FFFFFFF2
	andi	a5,a5,+000000FF
	bgeu	a4,a5,00000000230375F8

l23037684:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_recv_ind_handler: 23037696
llc_llcp_recv_ind_handler proc
	c.mv	a0,a2
	addi	a2,a1,+00000002
	lbu	a1,a1,+00000000
	c.li	a3,00000000
	jal	zero,00000000230374A8

;; llc_chmap_update_req_ind_handler: 230376A6
llc_chmap_update_req_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a2
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230376D4

l230376C4:
	c.li	a0,00000000

l230376C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230376D4:
	andi	a5,a0,+00000004
	c.mv	s0,a0
	c.bnez	a5,00000000230376C4

l230376DC:
	andi	a5,a0,+00000001
	c.li	a0,00000002
	c.bnez	a5,00000000230376C6

l230376E4:
	srli	s1,s2,00000008
	lui	a5,00042026
	slli	a4,s1,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.mv	a0,s1
	lw	s3,a5,+00000000
	jal	ra,0000000023038954
	lui	a5,0004200F
	lw	a5,a5,+000003CC
	c.li	a2,00000005
	addi	a1,s3,+00000063
	c.jalr	a5
	c.beqz	a0,00000000230376C4

l23037712:
	ori	a1,s0,+00000001
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230353A2
	c.li	a5,00000006
	sb	a5,s3,+000000A3
	c.mv	a0,s1
	jal	ra,0000000023035E62
	c.j	00000000230376C4

;; llc_auth_payl_real_to_ind_handler: 2303772E
llc_auth_payl_real_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a2
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,000000002303779A

l23037748:
	srli	s2,s1,00000008
	lui	s0,00042026
	slli	a5,s2,00000002
	addi	s0,s0,+00000428
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.mv	a1,s1
	addi	a0,zero,+00000103
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.sub	a2,a5
	jal	ra,000000002302C026
	c.lw	s0,0(a5)
	c.mv	a1,s1
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002302C026
	c.lui	a0,00001000
	c.li	a3,00000002
	addi	a2,zero,+00000057
	c.mv	a1,s2
	addi	a0,a0,-000007FD
	jal	ra,000000002302BC8C
	sh	s2,a0,+00000000
	jal	ra,0000000023029E8E

l2303779A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llc_con_upd_req_ind_handler: 230377A8
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230377E4

l230377CE:
	c.li	a0,00000000

l230377D0:
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

l230377E4:
	andi	a5,a0,+00000001
	c.mv	s1,a0
	srli	s3,s5,00000008
	c.beqz	a5,0000000023037806

l230377F0:
	lui	a4,00042026
	slli	a5,s3,00000002
	addi	a4,a4,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a0,00000002
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230377D0

l23037806:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023037828

l2303780C:
	lui	a4,00042026
	addi	a4,a4,+00000428
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a0,00000002
	lbu	a4,a5,+000000A4
	c.li	a5,00000004
	beq	a4,a5,00000000230377D0

l23037828:
	andi	a5,s1,+00000004
	c.li	a0,00000002
	c.bnez	a5,00000000230377D0

l23037830:
	lui	s2,00042026
	addi	a5,s2,+00000428
	slli	s6,s3,00000002
	c.add	a5,s6
	lw	s4,a5,+00000000
	lbu	a5,s0,+00000000
	c.li	a4,00000004
	addi	s2,s2,+00000428
	c.li	a0,00000000
	bltu	a4,a5,00000000230377D0

l23037852:
	lui	a4,000230B6
	c.slli	a5,02
	addi	a4,a4,+0000010C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23037862       83 57 4A 05 23 14 F4 00 23 09 04 00 83 47   .WJ.#...#....G
23037870 6A 0A AD CB 83 57 CA 05 85 8B A9 EF 03 47 04 00 j....W.......G..
23037880 85 47 63 0E F7 00 83 57 CA 05 83 25 0A 01 22 86 .Gc....W...%..".
23037890 93 E7 07 04 23 1E FA 04 4E 85 EF A0 7F 9F A2 85 ....#...N.......
230378A0 4E 85 EF F0 8F B3 93 E5 14 00 93 F5 F5 0F 56 85 N.............V.
230378B0 EF D0 3F AF 9D 47 05 66 A3 01 FA 0A 13 06 06 FA ..?..G.f........
230378C0 D6 85 13 05 20 10 EF 40 0F F6 5A 99 83 27 09 00 .... ..@..Z..'..
230378D0 80 C3 F1 A0 83 47 9A 06 89 8B CD F3 15 45 EF B0 .....G.......E..
230378E0 0F 9F 49 DD 83 57 24 00 4E 85 23 17 F4 00 83 57 ..I..W$.N.#....W
230378F0 44 00 23 18 F4 00 EF A0 DF A7 8D 47 E3 19 F5 EC D.#........G....
23037900 03 25 0A 01 50 00 A2 85 EF A0 8F D6 83 57 84 00 .%..P........W..
23037910 4C 00 4E 85 23 1B FA 04 EF F0 8F A7 83 57 81 00 L.N.#........W..
23037920 93 E5 14 00 93 F5 F5 0F 23 17 F4 00 83 57 A1 00 ........#....W..
23037930 56 85 23 13 F4 00 EF D0 DF A6 A5 47 A3 01 FA 0A V.#........G....
23037940 69 B7 05 65 CE 85 B1 46 13 06 E0 03 13 05 45 80 i..e...F......E.
23037950 EF 40 CF B3 19 47 23 00 E5 00 23 11 35 01 03 57 .@...G#...#.5..W
23037960 E4 00 5A 99 23 12 E5 00 03 57 04 01 23 13 E5 00 ..Z.#....W..#...
23037970 03 57 64 00 23 14 E5 00 03 57 84 00 23 15 E5 00 .Wd.#....W..#...
23037980 EF 20 EF D0 83 27 09 00 93 E5 24 00 93 F5 F5 0F . ...'....$.....
23037990 C0 C3 89 47 23 02 FA 0A 56 85 EF D0 9F A0 05 45 ...G#...V......E
230379A0 05 BD 4E 85 EF A0 FF 9C 8D 47 E3 12 F5 E2 83 25 ..N......G.....%
230379B0 0A 01 05 47 54 00 22 86 4E 85 EF A0 6F D3 B9 B7 ...GT.".N...o...

;; llc_length_req_ind_handler: 230379C0
llc_length_req_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a2
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230379EE

l230379DE:
	c.li	a0,00000000

l230379E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230379EE:
	andi	a5,a0,+00000005
	c.mv	s1,a0
	c.li	a0,00000002
	c.bnez	a5,00000000230379E0

l230379F8:
	srli	s3,s2,00000008
	lui	a5,00042026
	slli	a4,s3,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.lw	s0,12(a5)
	c.beqz	a5,0000000023037A20

l23037A10:
	lhu	a4,a5,+00000002
	sh	a4,s0,+00000042
	lhu	a5,a5,+00000004
	sh	a5,s0,+0000004A

l23037A20:
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,0000000023038270
	lbu	a5,s0,+00000053
	c.andi	a5,00000001
	c.bnez	a5,00000000230379DE

l23037A30:
	ori	a1,s1,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,00000000230353A2
	c.li	a5,00000004
	c.mv	a0,s3
	sb	a5,s0,+000000A3
	jal	ra,00000000230372A2
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	c.j	00000000230379DE

;; llc_task_random_gen_request: 23037A5C
;;   Called from:
;;     23037B6C (in llc_enc_mgt_ind_handler)
;;     23037CDE (in llc_enc_mgt_ind_handler)
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
	jal	ra,000000002302BC8C
	c.mv	s1,a0
	c.swsp	zero,00000084
	c.mv	s0,a0
	addi	s3,a0,+00000010
	lui	s2,0004200F

l23037A84:
	jal	ra,0000000023065C28
	lw	a5,s2,+000003D0
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.swsp	a0,00000084
	c.mv	a0,s0
	c.jalr	a5
	jal	ra,0000000023065C28
	lw	a5,s2,+000003D0
	c.swsp	a0,00000084
	c.li	a2,00000004
	addi	a0,s0,+00000010
	c.addi4spn	a1,0000000C
	c.addi	s0,00000004
	c.jalr	a5
	bne	s0,s3,0000000023037A84

l23037AB0:
	c.mv	a0,s1
	jal	ra,000000002302BCFA
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; llc_enc_mgt_ind_handler: 23037AC4
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,0000000023037B56

l23037AE6:
	srli	s0,s2,00000008
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,0000000023037C14

l23037AF8:
	c.andi	s1,00000001
	c.beqz	s1,0000000023037B56

l23037AFC:
	lui	s1,00042026
	addi	a5,s1,+00000428
	slli	s3,s0,00000002
	c.add	a5,s3
	c.lw	a5,0(a4)
	c.li	a3,00000009
	addi	s1,s1,+00000428
	lbu	a5,a4,+000000A3
	c.addi	a5,FFFFFFF6
	andi	a5,a5,+000000FF
	bltu	a3,a5,0000000023037B56

l23037B20:
	lui	a3,000230B6
	c.slli	a5,02
	addi	a3,a3,+00000120
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.jr	a5

l23037B30:
	lbu	a5,a4,+000000A5
	c.li	a3,00000003
	andi	a2,a5,+00000003
	bne	a2,a3,0000000023037B6A

l23037B3E:
	ori	a5,a5,+00000030
	c.add	s1,s3
	sb	a5,a4,+000000A5
	c.lw	s1,0(a5)
	c.li	a4,0000000B
	c.mv	a0,s0
	sb	a4,a5,+000000A3
	jal	ra,0000000023035EBE

l23037B56:
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

l23037B6A:
	c.mv	a0,s2
	jal	ra,0000000023037A5C
	c.add	s1,s3
	c.lw	s1,0(a5)
	c.li	a4,00000013
	sb	a4,a5,+000000A3
	c.j	0000000023037B56

l23037B7C:
	c.li	a5,0000000D
	c.add	s1,s3
	sb	a5,a4,+000000A3
	c.lw	a4,8(a1)
	c.lw	s1,0(a4)
	c.mv	a0,s0
	lbu	a5,a4,+000000A5
	andi	a5,a5,-00000021
	sb	a5,a4,+000000A5
	jal	ra,0000000023036082

l23037B9A:
	c.li	a1,00000002
	c.mv	a0,s0
	c.jal	0000000023038270
	c.j	0000000023037B56

l23037BA2:
	c.li	a5,00000010
	sb	a5,a4,+000000A3
	c.j	0000000023037B56

l23037BAA:
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
	jal	ra,0000000023036252

l23037C02:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	c.j	0000000023037B56

l23037C14:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023037B56

l23037C1A:
	lui	a3,00042026
	addi	s3,a3,+00000428
	slli	s4,s0,00000002
	c.add	s3,s4
	lw	a0,s3,+00000000
	c.li	a4,00000008
	addi	s5,a3,+00000428
	lbu	a5,a0,+000000A4
	beq	a5,a4,0000000023037CD4

l23037C3A:
	bltu	a4,a5,0000000023037C5E

l23037C3E:
	c.li	a4,00000005
	bne	a5,a4,0000000023037B56

l23037C44:
	lbu	a5,a0,+000000A5
	ori	a5,a5,+00000030
	sb	a5,a0,+000000A5
	c.li	a5,00000006
	sb	a5,a0,+000000A4
	c.mv	a0,s0
	jal	ra,0000000023035EFC
	c.j	0000000023037C02

l23037C5E:
	c.li	a4,0000000A
	beq	a5,a4,0000000023037D48

l23037C64:
	c.li	a4,0000000E
	bne	a5,a4,0000000023037B56

l23037C6A:
	c.li	a5,00000009
	c.lw	a0,8(s1)
	sb	a5,a0,+000000A4
	lui	a5,0004200F
	lw	a5,a5,+000003D0
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
	jal	ra,00000000230361AA
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002302D452
	c.j	0000000023037B9A

l23037CD4:
	c.li	a0,00000004
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023037CEE

l23037CDC:
	c.mv	a0,s2
	jal	ra,0000000023037A5C
	lw	a5,s3,+00000000
	c.li	a4,0000000E
	sb	a4,a5,+000000A4
	c.j	0000000023037B56

l23037CEE:
	lw	a5,s3,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000010
	c.beqz	a5,0000000023037D04

l23037CFA:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023037088
	c.j	0000000023037B9A

l23037D04:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023037D1A

l23037D0A:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002302C026

l23037D1A:
	c.li	a2,00000006
	c.li	a1,00000003
	c.mv	a0,s0
	c.slli	s1,18
	jal	ra,0000000023036432
	c.srai	s1,00000018
	andi	a1,s1,+000000FD
	c.mv	a0,s2
	jal	ra,00000000230353A2
	andi	a1,s1,+000000F9
	c.mv	a0,s2
	jal	ra,00000000230353A2
	add	a5,s5,s4
	c.lw	a5,0(a5)
	sb	zero,a5,+000000A4
	c.j	0000000023037B9A

l23037D48:
	c.mv	a0,s0
	jal	ra,0000000023036FF6
	lw	a5,s3,+00000000
	c.li	a4,0000000B
	sb	a4,a5,+000000A4
	c.j	0000000023037C02

;; llc_chnl_assess_timer_handler: 23037D5A
llc_chnl_assess_timer_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	a5,00042026
	srli	s3,a2,00000008
	slli	a4,s3,00000002
	addi	a5,a5,+00000428
	c.swsp	s0,00000014
	c.add	a5,a4
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	a0,a2
	lw	s2,a5,+00000000
	c.mv	s0,a2
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,0000000023037DAC

l23037D8C:
	lbu	a4,s2,+000000A3
	lui	s1,00042026
	c.li	a5,00000006
	addi	s1,s1,+00000460
	bne	a4,a5,0000000023037DBC

l23037D9E:
	lhu	a2,s1,+0000002C
	c.mv	a1,s0
	addi	a0,zero,+00000105
	jal	ra,000000002302C026

l23037DAC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23037DBC:
	c.addi4spn	a0,00000008
	jal	ra,0000000023032AEC
	c.addi4spn	a2,00000008
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,00000000230388C2
	lbu	a5,s2,+0000003A
	c.mv	a3,a0
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s2,+0000003A
	c.beqz	a5,0000000023037DE4

l23037DDE:
	c.li	a5,00000001
	bltu	a5,a0,0000000023037DEE

l23037DE4:
	c.addi4spn	a2,00000008
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,0000000023038968

l23037DEE:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.mv	a1,sp
	c.li	a2,00000005
	addi	a0,s2,+00000063
	c.jalr	a5
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000108
	jal	ra,000000002302BD84
	c.j	0000000023037D9E

;; llc_llcp_rsp_to_ind_handler: 23037E0E
llc_llcp_rsp_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	srli	a0,a2,00000008
	addi	a1,zero,+00000022
	c.swsp	ra,00000084
	c.jal	00000000230381BE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llc_link_sup_to_ind_handler: 23037E24
llc_link_sup_to_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,0000000023035412
	andi	a0,a0,+0000007F
	addi	a5,zero,+0000007F
	beq	a0,a5,0000000023037E70

l23037E3C:
	c.lwsp	a2,00000084
	lui	a5,00042026
	addi	a5,a5,+00000428
	srli	a0,a2,00000008
	slli	a4,a0,00000002
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.lw	a4,16(a5)
	lbu	a5,a5,+0000007E
	c.andi	a5,00000002
	c.beqz	a5,0000000023037E78

l23037E5C:
	lhu	a2,a4,+00000054
	slli	a1,a0,00000008
	ori	a1,a1,+00000001
	addi	a0,zero,+00000101
	jal	ra,000000002302C026

l23037E70:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23037E78:
	c.li	a1,00000008
	c.jal	00000000230381BE
	c.j	0000000023037E70

;; llc_auth_payl_nearly_to_ind_handler: 23037E7E
llc_auth_payl_nearly_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a2
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,0000000023037E9E

l23037E9A:
	c.li	a0,00000000
	c.j	0000000023037EC6

l23037E9E:
	andi	a5,a0,+00000001
	c.mv	s0,a0
	srli	s2,s1,00000008
	c.beqz	a5,0000000023037ED2

l23037EAA:
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	s2,02
	c.add	s2,a5
	lw	a5,s2,+00000000
	c.li	a0,00000002
	lbu	a4,a5,+000000A3
	c.li	a5,00000005
	beq	a4,a5,0000000023037E9A

l23037EC6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23037ED2:
	andi	a5,a0,+00000004
	c.li	a0,00000002
	c.bnez	a5,0000000023037EC6

l23037EDA:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C1C6
	c.bnez	a0,0000000023037E9A

l23037EE6:
	ori	a1,s0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s1
	jal	ra,00000000230353A2
	lui	a5,00042026
	slli	a4,s2,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a4,00000005
	c.mv	a0,s2
	sb	a4,a5,+000000A3
	jal	ra,0000000023037238
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	c.j	0000000023037E9A

;; llc_data_ind_handler: 23037F22
llc_data_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	srli	s0,a2,00000008
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.lwsp	a2,00000064
	bne	a0,a5,0000000023037F50

l23037F3E:
	lbu	a0,a1,+00000006
	jal	ra,000000002302CC48

l23037F46:
	c.li	a0,00000000

l23037F48:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23037F50:
	lui	a4,00042026
	slli	a5,s0,00000002
	addi	a4,a4,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023037F7A

l23037F68:
	lbu	a0,a1,+00000006
	jal	ra,000000002302CC48
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	c.jal	00000000230381BE
	c.j	0000000023037F46

l23037F7A:
	c.lui	a5,00001000
	addi	a5,a5,-000007FA
	c.mv	a0,a1
	sh	a5,a1,+00000FF8
	sh	s0,a1,+00000FFA
	jal	ra,0000000023029E8E
	c.li	a0,00000001
	c.j	0000000023037F48

;; lld_stop_ind_handler: 23037F92
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
	jal	ra,0000000023035412
	addi	a5,zero,+0000007F
	beq	a0,a5,0000000023038082

l23037FB4:
	srli	s0,s1,00000008
	addi	a4,zero,+0000005C
	add	a4,s0,a4
	lui	a5,00028008
	addi	a5,a5,+00000092
	lui	s3,00042026
	addi	s5,s3,+00000428
	slli	s6,s0,00000002
	c.add	s5,s6
	c.mv	a0,s1
	addi	s3,s3,+00000428
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
	jal	ra,0000000023035412
	c.li	a5,0000000F
	beq	a0,a5,0000000023038018

l23038004:
	lw	a5,s5,+00000000
	c.li	s2,00000008
	lhu	a5,a5,+0000005C
	andi	a5,a5,+00000100
	c.bnez	a5,0000000023038018

l23038014:
	addi	s2,zero,+0000003E

l23038018:
	c.andi	a0,00000001
	c.beqz	a0,0000000023038048

l2303801C:
	lbu	a5,s4,+000000A3
	c.li	a4,00000012
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023038048

l2303802C:
	lui	a4,000230B6
	c.slli	a5,02
	addi	a4,a4,+00000148
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

;; fn2303803C: 2303803C
;;   Called from:
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037FB0 (in lld_stop_ind_handler)
;;     2303801A (in lld_stop_ind_handler)
;;     23038028 (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     23038048 (in fn23038048)
;;     230380A0 (in fn23038098)
;;     230380B8 (in fn230380A2)
;;     230380C4 (in fn230380A2)
;;     230380CC (in fn230380C6)
;;     230380D6 (in fn230380C6)
;;     230380E2 (in fn230380C6)
fn2303803C proc
	addi	a2,s4,+00000069
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002302D4AE

;; fn23038048: 23038048
;;   Called from:
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23038044 (in fn2303803C)
fn23038048 proc
	c.mv	a3,s2
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002302CE3E
	c.mv	a1,s1
	addi	a0,zero,+00000101
	jal	ra,000000002302C124
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002302C124
	c.mv	a1,s1
	addi	a0,zero,+00000103
	jal	ra,000000002302C124
	addi	a0,zero,+00000104
	c.mv	a1,s1
	jal	ra,000000002302C124
	c.mv	a0,s0
	jal	ra,000000002302CD7A

l23038082:
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

;; fn23038098: 23038098
;;   Called from:
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
fn23038098 proc
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002302D518
	c.j	0000000023038048

;; fn230380A2: 230380A2
;;   Called from:
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
fn230380A2 proc
	c.add	s3,s6
	lw	a5,s3,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000010
	c.beqz	a5,00000000230380BA

l230380B0:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002302D5EA
	c.j	0000000023038048

l230380BA:
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302D61C
	c.j	0000000023038048

;; fn230380C6: 230380C6
;;   Called from:
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     23037B2E (in llc_enc_mgt_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
;;     2303803A (in lld_stop_ind_handler)
fn230380C6 proc
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,0000000023038048

l230380CE:
	lhu	a5,s4,+0000005C
	andi	a5,a5,+00000040
	c.beqz	a5,0000000023038048

l230380D8:
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002302D3C0
	c.j	0000000023038048

;; llc_check_trafic_paused: 230380E4
;;   Called from:
;;     23038412 (in llc_pdu_llcp_tx_ack_defer)
;;     230384D0 (in llc_pdu_acl_tx_ack_defer)
llc_check_trafic_paused proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042026
	slli	a5,a0,00000002
	addi	s1,s1,+00000428
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.add	s1,a5
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	c.andi	a5,00000004
	c.beqz	a5,0000000023038144

l23038106:
	c.mv	s0,a0
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a4,16(a0)
	jal	ra,0000000023030F88
	csrrw	zero,mstatus,zero
	c.bnez	a0,0000000023038144

l2303811C:
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
	jal	zero,000000002302BD84

l23038144:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_get_free_conhdl: 23038150
;;   Called from:
;;     23032FF2 (in llm_con_req_ind)
;;     230343A4 (in llm_create_con)
llc_util_get_free_conhdl proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,zero,+0000007F
	jal	ra,0000000023035412
	beq	a0,s0,000000002303818A

l23038168:
	addi	a0,zero,+00000101
	jal	ra,0000000023035412
	c.li	a5,00000009
	bne	a0,s0,000000002303817E

l23038176:
	c.li	a5,00000001

l23038178:
	sh	a5,s1,+00000000
	c.li	a5,00000000

l2303817E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303818A:
	c.li	a5,00000000
	c.j	0000000023038178

;; llc_util_get_nb_active_link: 2303818E
;;   Called from:
;;     230382F4 (in llc_util_bw_mgt)
llc_util_get_nb_active_link proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023035412
	addi	a0,a0,-0000007F
	sltu	s0,zero,a0
	addi	a0,zero,+00000101
	jal	ra,0000000023035412
	addi	a5,zero,+0000007F
	beq	a0,a5,00000000230381B4

l230381B2:
	c.addi	s0,00000001

l230381B4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_dicon_procedure: 230381BE
;;   Called from:
;;     2303554E (in llcp_ping_rsp_handler)
;;     230355E0 (in llcp_terminate_ind_handler)
;;     23035640 (in llcp_enc_rsp_handler)
;;     2303590E (in llc_llcp_reject_ind)
;;     23035978 (in llcp_pause_enc_req_handler)
;;     23035A6A (in llcp_start_enc_req_handler)
;;     23035AFC (in llcp_enc_req_handler)
;;     23035BFE (in llcp_unknown_rsp_handler)
;;     23035DE6 (in llcp_vers_ind_handler)
;;     2303607C (in llcp_pause_enc_rsp_handler)
;;     23036312 (in llcp_start_enc_rsp_handler)
;;     230364D0 (in llcp_length_rsp_handler)
;;     23036684 (in llcp_con_param_rsp_handler)
;;     230367CE (in llcp_feats_rsp_handler)
;;     23036996 (in fn23036990)
;;     23036B6C (in fn23036B66)
;;     23036D0E (in llcp_con_param_req_handler)
;;     2303714A (in llc_llcp_unknown_ind_handler.isra.1)
;;     230371C2 (in llcp_feats_req_handler)
;;     23037290 (in llcp_ping_req_handler)
;;     23037374 (in llcp_length_req_handler)
;;     23037E1A (in llc_llcp_rsp_to_ind_handler)
;;     23037E7A (in llc_link_sup_to_ind_handler)
;;     23037F76 (in llc_data_ind_handler)
;;     23038364 (in llc_end_evt_defer)
;;     230383F6 (in llc_pdu_llcp_tx_ack_defer)
;;     2303853A (in llc_pdu_defer)
llc_util_dicon_procedure proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042026
	slli	a5,a0,00000002
	addi	s1,s1,+00000428
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
	jal	ra,00000000230353A2
	c.mv	a1,s0
	addi	a0,zero,+00000105
	jal	ra,000000002302C124
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,0(a5)
	c.lw	a5,16(a0)
	jal	ra,000000002303236A
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_update_channel_map: 23038216
;;   Called from:
;;     230330DE (in llm_con_req_ind)
llc_util_update_channel_map proc
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	c.lw	a5,0(a0)
	lui	a5,0004200F
	lw	t1,a5,+000003D0
	c.li	a2,00000005
	addi	a0,a0,+0000005E
	c.jr	t1

;; llc_util_set_auth_payl_to_margin: 23038234
;;   Called from:
;;     2302D312 (in llc_start)
;;     230394F6 (in hci_wr_auth_payl_to_cmd_handler)
llc_util_set_auth_payl_to_margin proc
	lhu	a5,a0,+00000036
	lhu	a3,a0,+00000050
	lhu	a2,a0,+0000004C
	lui	a4,00042026
	add	a3,a3,a5
	c.slli	a2,02
	addi	a4,a4,+00000428
	c.add	a4,a2
	c.lw	a4,0(a2)
	lhu	a4,a2,+00000058
	slli	a5,a3,00000003
	c.slli	a4,04

l2303825C:
	bltu	a4,a5,000000002303826C

l23038260:
	c.srli	a5,00000004
	c.bnez	a5,0000000023038266

l23038264:
	c.li	a5,00000001

l23038266:
	sh	a5,a2,+0000005A
	c.jr	ra

l2303826C:
	c.sub	a5,a3
	c.j	000000002303825C

;; llc_util_clear_operation_ptr: 23038270
;;   Called from:
;;     2302D88C (in llc_con_update_finished)
;;     23035878 (in llc_llcp_reject_ind)
;;     23035CE4 (in fn23035C80)
;;     23036790 (in llcp_con_param_rsp_handler)
;;     23036B0E (in fn23036ADA)
;;     23037A24 (in llc_length_req_ind_handler)
;;     23037B9E (in llc_enc_mgt_ind_handler)
;;     23038B1C (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     23038CC0 (in hci_le_rem_con_param_req_reply_cmd_handler)
llc_util_clear_operation_ptr proc
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a0)
	c.beqz	a0,0000000023038290

l23038286:
	sw	zero,a1,+00000000
	c.addi	a0,FFFFFFF4
	jal	zero,000000002302BDCE

l23038290:
	c.jr	ra

;; llc_util_bw_mgt: 23038292
;;   Called from:
;;     23038372 (in llc_end_evt_defer)
llc_util_bw_mgt proc
	lui	a5,00042026
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023038316

l230382A4:
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
	bgeu	a5,s0,000000002303830C

l230382D6:
	addi	a3,zero,+00000271
	addi	a5,s0,+00000270
	xor	a5,a5,a3
	sh	a5,a4,+00000008
	jal	ra,0000000023032372
	c.li	a5,00000003
	bne	a0,a5,00000000230382F4

l230382F0:
	sh	s0,s1,+00000012

l230382F4:
	jal	ra,000000002303818E
	c.li	a5,00000001
	beq	a0,a5,000000002303830C

l230382FE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023030D28

l2303830C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23038316:
	c.jr	ra

;; llc_end_evt_defer: 23038318
;;   Called from:
;;     2302DE76 (in lld_evt_deffered_elt_handler)
llc_end_evt_defer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042026
	slli	a5,a0,00000002
	addi	s1,s1,+00000428
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.add	s1,a5
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023038376

l23038332:
	c.mv	s0,a0
	c.slli	a0,08
	ori	a0,a0,+00000001
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,0000000023038368

l2303834A:
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	andi	a3,a5,+00000200
	c.beqz	a3,0000000023038368

l23038356:
	lbu	a1,a4,+000000A1
	andi	a5,a5,-00000201
	sh	a5,a4,+0000005C
	c.mv	a0,s0
	jal	ra,00000000230381BE

l23038368:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023038292

l23038376:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_pdu_llcp_tx_ack_defer: 23038380
;;   Called from:
;;     2303009A (in lld_pdu_check)
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000007F
	addi	a5,zero,+0000007F
	beq	a4,a5,0000000023038490

l230383B6:
	lui	s2,00042026
	addi	s5,s2,+00000428
	slli	s7,s3,00000002
	c.mv	s1,a0
	c.add	s5,s7
	c.mv	a0,s0
	lw	s6,s5,+00000000
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	addi	s2,s2,+00000428
	bne	a0,a5,0000000023038416

l230383DC:
	lw	a4,s5,+00000000
	lhu	a5,a4,+0000005C
	andi	a5,a5,+00000200
	c.bnez	a5,00000000230383FA

l230383EA:
	c.li	a5,00000002
	bne	s4,a5,00000000230383FA

l230383F0:
	lbu	a1,a4,+000000A1
	c.mv	a0,s3
	jal	ra,00000000230381BE

l230383FA:
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
	jal	zero,00000000230380E4

l23038416:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002303846E

l2303841C:
	lbu	a5,s6,+000000A4
	c.li	a4,0000000C
	bne	a5,a4,0000000023038468

l23038426:
	c.li	a5,00000006

l23038428:
	bne	s4,a5,000000002303846E

l2303842C:
	c.slli	s1,18
	c.srai	s1,00000018
	andi	a1,s1,+000000FD
	c.mv	a0,s0
	jal	ra,00000000230353A2
	andi	a1,s1,+000000F9
	c.mv	a0,s0
	jal	ra,00000000230353A2
	sb	zero,s6,+000000A4
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.add	s2,s7
	lw	a4,s2,+00000000
	lbu	a5,a4,+000000A5
	andi	a5,a5,-00000025
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero
	c.j	00000000230383FA

l23038468:
	c.li	a4,0000000D
	beq	a5,a4,0000000023038428

l2303846E:
	c.andi	s1,00000001
	c.beqz	s1,00000000230383FA

l23038472:
	lbu	a4,s6,+000000A3
	c.li	a5,0000000C
	bne	a4,a5,00000000230383FA

l2303847C:
	c.li	a5,0000000B
	bne	s4,a5,00000000230383FA

l23038482:
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	00000000230383FA

l23038490:
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

;; llc_pdu_acl_tx_ack_defer: 230384A6
;;   Called from:
;;     2302FFC8 (in lld_pdu_check)
llc_pdu_acl_tx_ack_defer proc
	lui	a5,00042026
	slli	a2,a0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a2
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230384D4

l230384B8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a1,00000000230384C6

l230384C2:
	jal	ra,000000002302D6B6

l230384C6:
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230380E4

l230384D4:
	c.jr	ra

;; llc_pdu_defer: 230384D6
;;   Called from:
;;     230300D6 (in lld_pdu_check)
llc_pdu_defer proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,00042026
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	addi	s2,s3,+00000428
	slli	s4,a0,00000002
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.add	s2,s4
	lw	s6,s2,+00000000
	beq	s6,zero,000000002303855E

l230384FE:
	lui	a5,00042025
	lw	a5,a5,+00000748
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
	c.jal	000000002303885E
	andi	a5,s1,+0000001D
	addi	s3,s3,+00000428
	c.beqz	a5,0000000023038572

l23038530:
	c.andi	s1,00000010
	c.beqz	s1,000000002303853E

l23038534:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,00000000230381BE

l2303853E:
	c.add	s3,s4
	lw	a5,s3,+00000000
	lhu	a4,a5,+0000005C
	andi	a3,a4,+00000020
	c.beqz	a3,000000002303855E

l2303854E:
	andi	a4,a4,-00000021
	sh	a4,a5,+0000005C
	lhu	a4,a5,+00000056
	sh	a4,a5,+00000054

l2303855E:
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

l23038572:
	lw	a5,s2,+00000000
	c.slli	s0,08
	ori	s0,s0,+00000001
	c.slli	s0,10
	lhu	a2,a5,+00000054
	c.srli	s0,00000010
	c.mv	a1,s0
	addi	a0,zero,+00000101
	andi	s1,s1,+00000120
	jal	ra,000000002302C026
	c.bnez	s1,000000002303853E

l23038594:
	beq	s5,zero,000000002303853E

l23038598:
	lw	a5,s2,+00000000
	c.li	a3,00000003
	lbu	a4,a5,+000000A5
	c.andi	a4,00000003
	bne	a4,a3,000000002303853E

l230385A8:
	lhu	a4,a5,+0000005C
	c.andi	a4,00000008
	c.bnez	a4,000000002303853E

l230385B0:
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.mv	a1,s0
	addi	a0,zero,+00000103
	c.sub	a2,a5
	jal	ra,000000002302C026
	lw	a5,s2,+00000000
	c.mv	a1,s0
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002302C026
	c.j	000000002303853E

;; llm_dft_handler: 230385D8
llm_dft_handler proc
	c.li	a0,00000000
	c.jr	ra

;; llm_le_set_host_ch_class_cmd_sto_handler: 230385DC
llm_le_set_host_ch_class_cmd_sto_handler proc
	lui	a5,00042026
	c.li	a4,00000001
	sb	a4,a5,+00000497
	c.li	a0,00000000
	c.jr	ra

;; llm_ecc_result_ind_handler: 230385EA
llm_ecc_result_ind_handler proc
	c.addi	sp,FFFFFFE0
	lui	a4,00042026
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	a5,a4,+00000460
	lbu	a5,a5,+000000D3
	c.li	a3,00000002
	c.mv	s3,a1
	addi	s2,a4,+00000460
	bne	a5,a3,0000000023038662

l2303860E:
	c.li	a0,00000008
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303864E

l23038616:
	c.lui	a0,00001000
	addi	a2,zero,+0000003E
	c.li	a1,00000000
	addi	a3,zero,+00000022
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,00000009
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.addi	a0,00000002

l23038646:
	c.jalr	a5
	c.mv	a0,s0
	jal	ra,0000000023029E8E

l2303864E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sb	zero,s2,+000000D3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23038662:
	c.li	a4,00000001
	bne	a5,a4,000000002303864E

l23038668:
	c.li	a0,00000007
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303864E

l23038670:
	c.lui	a0,00001000
	addi	a3,zero,+00000042
	addi	a2,zero,+0000003E
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,00000008
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lui	s1,0004200F
	lw	a5,s1,+000003D0
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.addi	a0,00000002
	c.jalr	a5
	lw	a5,s1,+000003D0
	addi	a2,zero,+00000020
	addi	a1,s3,+00000020
	addi	a0,s0,+00000022
	c.j	0000000023038646

;; llm_enc_req_handler: 230386B4
llm_enc_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042026
	c.swsp	s1,00000080
	addi	a0,s0,+00000460
	c.mv	s1,a1
	c.addi	a1,FFFFFFF4
	c.swsp	ra,00000084
	addi	s0,s0,+00000460
	jal	ra,000000002302A2FE
	lbu	a5,s0,+00000058
	c.bnez	a5,00000000230386DC

l230386D6:
	c.mv	a0,s1
	jal	ra,00000000230344EA

l230386DC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; lld_stop_ind_handler: 230386E8
lld_stop_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023035412
	andi	a0,a0,+000000F0
	addi	a5,zero,+00000020
	bne	a0,a5,000000002303875C

l23038700:
	c.li	a0,00000000
	jal	ra,0000000023035412
	addi	a5,zero,+00000023
	beq	a0,a5,0000000023038774

l2303870E:
	c.li	a0,00000000
	jal	ra,0000000023035412
	andi	a0,a0,+000000F0
	addi	a5,zero,+00000020
	bne	a0,a5,0000000023038816

l23038720:
	lui	s0,00042026
	addi	a5,s0,+00000460
	lbu	a5,a5,+0000004C
	addi	s0,s0,+00000460
	bne	a5,zero,0000000023038816

l23038734:
	lbu	a5,s0,+0000006E
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023038756

l23038742:
	lhu	a0,s0,+0000006C
	c.li	a1,00000000
	jal	ra,00000000230335E2
	lbu	a5,s0,+0000006E
	c.andi	a5,0000000F
	sb	a5,s0,+0000006E

l23038756:
	sw	zero,s0,+00000048
	c.j	00000000230387E8

l2303875C:
	c.li	a0,00000000
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,00000003
	beq	a0,a5,0000000023038700

l2303876A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23038774:
	lui	s0,00042026
	addi	a5,s0,+00000460
	lbu	a5,a5,+0000006E
	c.li	a4,00000010
	addi	s0,s0,+00000460
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230387A2

l2303878E:
	lhu	a0,s0,+0000006C
	c.li	a1,00000000
	jal	ra,00000000230335E2
	lbu	a5,s0,+0000006E
	c.andi	a5,0000000F
	sb	a5,s0,+0000006E

l230387A2:
	lbu	a5,s0,+00000050
	sw	zero,s0,+00000048
	c.li	a4,00000001
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230387E0

l230387B6:
	lhu	a0,s0,+0000004E
	c.li	a1,00000000
	jal	ra,00000000230335E2
	lbu	a4,s0,+00000050
	c.li	a5,00000002
	bne	a4,a5,00000000230387D6

l230387CA:
	c.lui	a1,00010000
	c.li	a2,00000000
	c.addi	a1,FFFFFFFF
	c.li	a0,00000002
	jal	ra,000000002302CE78

l230387D6:
	lbu	a5,s0,+00000050
	c.andi	a5,FFFFFFF0
	sb	a5,s0,+00000050

l230387E0:
	lui	a5,00042026
	sw	zero,a5,+000004B4

l230387E8:
	c.li	a0,00000000
	jal	ra,0000000023035412
	lui	s0,00042026
	addi	a5,s0,+00000460
	c.lw	a5,72(a5)
	addi	s0,s0,+00000460
	c.bnez	a5,0000000023038852

l230387FE:
	c.lw	s0,84(a5)
	c.li	a1,00000000
	c.beqz	a5,0000000023038808

l23038804:
	andi	a1,a0,+0000000F

l23038808:
	c.li	a0,00000000
	jal	ra,00000000230353A2
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000044
	c.j	000000002303876A

l23038816:
	c.li	a0,00000000
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,00000003
	bne	a0,a5,0000000023038850

l23038824:
	lui	s0,00042026
	addi	a5,s0,+00000460
	lbu	a5,a5,+0000004C
	addi	s0,s0,+00000460
	c.beqz	a5,0000000023038850

l23038836:
	lbu	a4,s0,+00000050
	c.li	a3,00000001
	addi	a5,a4,-00000001
	andi	a5,a5,+000000FF
	bgeu	a3,a5,00000000230387B6

l23038848:
	c.li	a5,00000011
	bne	a4,a5,00000000230387E0

l2303884E:
	c.j	00000000230387B6

l23038850:
	c.j	0000000023038850

l23038852:
	c.lw	s0,84(a5)
	c.bnez	a5,000000002303885C

l23038856:
	andi	a1,a0,+000000F0
	c.j	0000000023038808

l2303885C:
	c.j	000000002303885C

;; llc_ch_assess_local: 2303885E
;;   Called from:
;;     23038524 (in llc_pdu_defer)
llc_ch_assess_local proc
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	c.lw	a5,0(a0)
	lui	a4,00042026
	andi	a6,a1,+00000001
	c.add	a3,a0
	lb	a5,a3,+00000014
	addi	a4,a4,+00000460
	beq	a6,zero,00000000230388AC

l23038882:
	lb	a1,a4,+00000030
	bge	a1,a2,0000000023038892

l2303888A:
	c.addi	a5,FFFFFFFD

l2303888C:
	sb	a5,a3,+00000014
	c.j	000000002303889A

l23038892:
	lbu	a2,a0,+00000039
	c.addi	a5,FFFFFFFF
	c.beqz	a2,000000002303888C

l2303889A:
	lb	a2,a3,+00000014
	lb	a5,a4,+0000002E
	bge	a2,a5,00000000230388B8

l230388A6:
	sb	a5,a3,+00000014
	c.j	00000000230388C0

l230388AC:
	c.andi	a1,00000008
	andi	a5,a5,+000000FF
	c.bnez	a1,000000002303888A

l230388B4:
	c.addi	a5,00000003
	c.j	000000002303888C

l230388B8:
	lb	a5,a4,+0000002F
	blt	a5,a2,00000000230388A6

l230388C0:
	c.jr	ra

;; llc_ch_assess_get_local_ch_map: 230388C2
;;   Called from:
;;     23037DC8 (in llc_chnl_assess_timer_handler)
llc_ch_assess_get_local_ch_map proc
	lui	a5,00042026
	c.addi	sp,FFFFFFF0
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.add	a5,a0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a5,0(s1)
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.mv	s0,a1
	c.mv	s2,a2
	c.li	a1,00000000
	c.li	a2,00000005
	c.mv	a0,s0
	c.jalr	a5
	lui	a2,00042026
	addi	a3,zero,+00000024
	c.li	a0,00000000
	c.li	a7,00000001
	addi	a2,a2,+00000460
	c.li	a6,FFFFFFFF

l23038900:
	slli	a4,a3,00000018
	c.srai	a4,00000018
	c.srai	a4,00000003
	add	a1,s2,a4
	andi	a5,a3,+00000007
	lbu	a1,a1,+00000000
	sll	a5,a7,a5
	andi	a5,a5,+000000FF
	c.and	a1,a5
	c.beqz	a1,0000000023038942

l23038920:
	add	a1,s1,a3
	lb	t1,a1,+00000014
	lb	a1,a2,+0000002E
	bge	a1,t1,0000000023038942

l23038930:
	c.add	a4,s0
	lbu	a1,a4,+00000000
	c.addi	a0,00000001
	andi	a0,a0,+000000FF
	c.or	a5,a1
	sb	a5,a4,+00000000

l23038942:
	c.addi	a3,FFFFFFFF
	bne	a3,a6,0000000023038900

l23038948:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_ch_assess_get_current_ch_map: 23038954
;;   Called from:
;;     230376FC (in llc_chmap_update_req_ind_handler)
llc_ch_assess_get_current_ch_map proc
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	c.lw	a5,0(a0)
	addi	a0,a0,+0000005E
	c.jr	ra

;; llc_ch_assess_reass_ch: 23038968
;;   Called from:
;;     23037DEA (in llc_chnl_assess_timer_handler)
llc_ch_assess_reass_ch proc
	lui	a5,00042026
	c.slli	a0,02
	addi	a5,a5,+00000428
	c.add	a5,a0
	lw	t5,a5,+00000000
	c.li	a4,00000002
	c.li	a0,0000000A
	lbu	a5,t5,+0000003B
	bgeu	a4,a3,000000002303898E

l23038984:
	slli	a0,a3,00000005
	addi	a0,a0,+0000007F
	c.srli	a0,00000007

l2303898E:
	lui	a4,00042026
	lbu	a4,a4,+00000491
	addi	a6,zero,+00000025
	addi	t3,zero,+00000024
	sb	a4,t5,+0000003A
	c.li	t4,00000001

l230389A4:
	addi	a4,a5,+0000000B
	andi	a4,a4,+000000FF
	bgeu	t3,a4,0000000023038A0A

l230389B0:
	c.addi	a5,FFFFFFE6
	andi	a5,a5,+000000FF

l230389B6:
	srli	a3,a5,00000003
	add	a7,a1,a3
	andi	a4,a5,+00000007
	lbu	t1,a7,+00000000
	sll	a4,t4,a4
	andi	a4,a4,+000000FF
	and	t1,a4,t1
	bne	t1,zero,00000000230389F8

l230389D6:
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.and	a3,a4
	c.beqz	a3,00000000230389F8

l230389E0:
	add	a3,t5,a5
	sb	zero,a3,+00000014
	lbu	a3,a7,+00000000
	c.addi	a0,FFFFFFFF
	c.slli	a0,10
	c.or	a4,a3
	sb	a4,a7,+00000000
	c.srli	a0,00000010

l230389F8:
	c.addi	a6,FFFFFFFF
	andi	a6,a6,+000000FF
	beq	a6,zero,0000000023038A04

l23038A02:
	c.bnez	a0,00000000230389A4

l23038A04:
	sb	a5,t5,+0000003B
	c.jr	ra

l23038A0A:
	c.mv	a5,a4
	c.j	00000000230389B6

;; hci_le_set_data_len_cmd_handler: 23038A0E
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
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,0000000023038AAE

l23038A2C:
	lhu	a0,s1,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	slli	a4,a0,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,a5,+00000052
	c.bnez	a4,0000000023038AB4

l23038A46:
	lhu	a1,s1,+00000002
	addi	a3,zero,+000000E0
	addi	a4,a1,-0000001B
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a3,a4,0000000023038AB8

l23038A5A:
	lhu	a3,s1,+00000004
	addi	a6,zero,+00000700
	addi	a4,a3,-00000148
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a6,a4,0000000023038AB8

l23038A6E:
	c.li	a4,00000002
	bltu	a4,a0,0000000023038AB8

l23038A74:
	lhu	a4,a5,+00000046
	c.lwsp	a2,00000084
	bne	a4,a1,0000000023038A86

l23038A7E:
	lhu	a4,a5,+0000004E
	beq	a4,a3,0000000023038ABC

l23038A86:
	c.mv	a1,a2
	c.sw	a5,12(s1)
	addi	a0,zero,+00000107
	jal	ra,000000002302BD84
	c.li	a1,00000000
	c.li	s0,00000001

l23038A96:
	lhu	a2,s1,+00000000
	c.mv	a0,s2
	jal	ra,000000002302D56E
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23038AAE:
	c.li	a1,0000000C

l23038AB0:
	c.li	s0,00000000
	c.j	0000000023038A96

l23038AB4:
	c.li	a1,0000001A
	c.j	0000000023038AB0

l23038AB8:
	c.li	a1,00000012
	c.j	0000000023038AB0

l23038ABC:
	c.li	a1,00000000
	c.j	0000000023038AB0

;; hci_le_rem_con_param_req_neg_reply_cmd_handler: 23038AC0
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a4,a5,0000000023038B48

l23038AE6:
	andi	a5,a0,+00000002
	c.mv	s2,a0
	c.beqz	a5,0000000023038B48

l23038AEE:
	lhu	a0,s0,+00000000
	lui	s1,00042026
	addi	s1,s1,+00000428
	slli	a5,a0,00000002
	c.add	a5,s1
	c.lw	a5,0(a5)
	lbu	a4,a5,+000000A4
	c.li	a5,00000002
	bne	a4,a5,0000000023038B48

l23038B0C:
	lbu	a4,s0,+00000002
	addi	a5,zero,+0000003B
	c.li	a1,00000012
	bne	a4,a5,0000000023038B48

l23038B1A:
	c.li	a1,00000001
	jal	ra,0000000023038270
	andi	a1,s2,+000000FD
	c.mv	a0,s4
	jal	ra,00000000230353A2
	lhu	a5,s0,+00000000
	c.li	a1,0000000F
	c.slli	a5,02
	c.add	s1,a5
	c.lw	s1,0(a5)
	sb	zero,a5,+000000A4
	lbu	a2,s0,+00000002
	lhu	a0,s0,+00000000
	jal	ra,0000000023036432
	c.li	a1,00000000

l23038B48:
	lhu	a2,s0,+00000000
	c.mv	a0,s3
	jal	ra,000000002302D56E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_rem_con_param_req_reply_cmd_handler: 23038B64
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	s4,0000000C
	beq	a4,a5,0000000023038C36

l23038B94:
	andi	a5,a0,+00000002
	c.mv	s6,a0
	c.beqz	a5,0000000023038C36

l23038B9C:
	lhu	a0,s0,+00000000
	lui	s2,00042026
	addi	a5,s2,+00000428
	slli	a4,a0,00000002
	c.add	a5,a4
	lw	s3,a5,+00000000
	c.li	a5,00000002
	addi	s2,s2,+00000428
	lbu	s9,s3,+000000A4
	bne	s9,a5,0000000023038C36

l23038BC0:
	lw	s1,s3,+00000004
	c.li	s8,00000003
	jal	ra,0000000023032372
	bne	a0,s8,0000000023038C5E

l23038BCE:
	sb	s9,s1,+00000000
	lhu	a4,s0,+00000002
	lhu	a5,s1,+0000000E
	bgeu	a4,a5,0000000023038BE0

l23038BDE:
	c.mv	a5,a4

l23038BE0:
	sh	a5,s1,+0000000E
	lhu	a4,s0,+00000004
	lhu	a5,s1,+00000010
	bgeu	a5,a4,0000000023038BF2

l23038BF0:
	c.mv	a5,a4

l23038BF2:
	sh	a5,s1,+00000010
	lhu	a5,s0,+00000006
	sh	a5,s1,+00000006
	lhu	a4,s0,+00000008
	lhu	a5,s1,+00000008
	bgeu	a5,a4,0000000023038C0C

l23038C0A:
	c.mv	a5,a4

l23038C0C:
	sh	a5,s1,+00000008
	c.mv	a0,s1
	jal	ra,000000002302BCFA
	andi	a1,s6,+000000FD
	c.mv	a0,s5
	jal	ra,00000000230353A2
	sb	zero,s3,+000000A4
	lhu	a5,s0,+00000000
	c.li	s4,00000000
	c.slli	a5,02
	c.add	s2,a5
	lw	a5,s2,+00000000
	sw	zero,a5,+00000004

l23038C36:
	lhu	a2,s0,+00000000
	c.mv	a0,s7
	c.mv	a1,s4
	jal	ra,000000002302D56E
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

l23038C5E:
	lhu	a0,s0,+00000000
	c.li	s4,00000000
	jal	ra,0000000023032372
	c.li	a5,00000004
	bne	a0,a5,0000000023038C36

l23038C6E:
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
	jal	ra,0000000023032162
	sb	s8,s3,+000000A4
	lhu	a0,s0,+00000000
	c.mv	a1,s1
	jal	ra,0000000023036C56
	c.lui	a2,00001000
	c.mv	a1,s5
	addi	a2,a2,-00000060
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,0000000023038270
	c.j	0000000023038C36

;; hci_le_ltk_req_neg_reply_cmd_handler: 23038CC6
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
	jal	ra,0000000023035412
	andi	a3,a0,+0000000F
	c.li	a4,0000000F
	c.li	s0,0000000C
	beq	a3,a4,0000000023038D26

l23038CEA:
	andi	a4,a0,+00000002
	c.mv	a5,a0
	c.beqz	a4,0000000023038D26

l23038CF2:
	lhu	a0,s2,+00000000
	lui	s1,00042026
	addi	a4,s1,+00000428
	slli	a3,a0,00000002
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.li	a3,00000009
	addi	s1,s1,+00000428
	lbu	a2,a4,+000000A4
	c.lwsp	a2,00000064
	bne	a2,a3,0000000023038D26

l23038D16:
	lbu	s0,a4,+000000A5
	c.andi	s0,00000010
	c.beqz	s0,0000000023038D42

l23038D1E:
	c.li	a1,00000006
	jal	ra,0000000023037088
	c.li	s0,00000000

l23038D26:
	lhu	a2,s2,+00000000
	c.mv	a0,s3
	c.mv	a1,s0
	jal	ra,000000002302D56E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23038D42:
	c.andi	a5,00000001
	c.beqz	a5,0000000023038D54

l23038D46:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	addi	a0,zero,+00000102
	jal	ra,000000002302C026

l23038D54:
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
	jal	ra,0000000023036432
	c.j	0000000023038D26

;; hci_le_ltk_req_reply_cmd_handler: 23038D92
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a4,a5,0000000023038E2A

l23038DB8:
	c.andi	a0,00000002
	c.beqz	a0,0000000023038E2A

l23038DBC:
	lhu	a5,s1,+00000000
	lui	s0,00042026
	addi	s0,s0,+00000428
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	c.lwsp	a2,00000084
	lbu	a4,a5,+000000A4
	c.li	a5,00000009
	bne	a4,a5,0000000023038E2A

l23038DDA:
	addi	a3,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000004
	jal	ra,000000002302BC8C
	lui	s4,0004200F
	lw	a5,s4,+000003D0
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
	lw	a5,s4,+000003D0
	addi	a1,a1,+00000071
	c.jalr	a5
	c.mv	a0,s3
	jal	ra,000000002302BCFA
	lhu	a5,s1,+00000000
	c.li	a4,0000000A
	c.li	a1,00000000
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	sb	a4,a5,+000000A4

l23038E2A:
	lhu	a2,s1,+00000000
	c.mv	a0,s2
	jal	ra,000000002302D56E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; hci_disconnect_cmd_handler: 23038E46
hci_disconnect_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s2,a3
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a0,a5,0000000023038EA8

l23038E64:
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

l23038E88:
	c.addi4spn	a3,00000008
	c.add	a3,a5
	lbu	a3,a3,+00000000
	beq	a3,a1,0000000023038E9E

l23038E94:
	c.addi	a5,00000001
	bne	a5,a4,0000000023038E88

l23038E9A:
	c.li	a1,00000012
	c.j	0000000023038EA8

l23038E9E:
	lhu	a0,s1,+00000000
	jal	ra,0000000023037088
	c.li	a1,00000000

l23038EA8:
	lhu	a2,s1,+00000000
	lui	s0,00042026
	addi	a5,s0,+00000428
	slli	a4,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	addi	s0,s0,+00000428
	lbu	a5,a5,+000000A2
	c.bnez	a5,0000000023038EDC

l23038EC6:
	c.mv	a0,s2
	jal	ra,000000002302D59E
	lhu	a5,s1,+00000000
	c.li	a4,00000001
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	sb	a4,a5,+000000A2

l23038EDC:
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

;; hci_le_start_enc_cmd_handler: 23038EF8
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,0000000023038F26

l23038F1E:
	lhu	a2,s4,+00000000

l23038F22:
	c.li	a1,0000000C
	c.j	0000000023038F36

l23038F26:
	andi	a5,a0,+00000004
	c.mv	s2,a0
	c.beqz	a5,0000000023038F50

l23038F2E:
	lhu	a2,s4,+00000000
	addi	a1,zero,+0000003A

l23038F36:
	c.mv	a0,s5
	jal	ra,000000002302D59E
	c.li	a0,00000000

l23038F3E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23038F50:
	andi	a5,a0,+00000001
	c.li	a0,00000002
	c.bnez	a5,0000000023038F3E

l23038F58:
	srli	s1,s3,00000008
	c.mv	a0,s1
	jal	ra,0000000023032372
	c.li	a5,00000003
	lhu	a2,s4,+00000000
	bne	a0,a5,0000000023038F22

l23038F6C:
	lui	s0,00042026
	addi	a5,s0,+00000428
	slli	a4,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	addi	s0,s0,+00000428
	lbu	a5,a5,+00000069
	c.andi	a5,00000001
	c.beqz	a5,0000000023038F22

l23038F88:
	c.mv	a0,s5
	c.li	a1,00000000
	jal	ra,000000002302D59E
	ori	a1,s2,+00000001
	c.mv	a0,s3
	andi	a1,a1,+000000FF
	jal	ra,00000000230353A2
	ori	a1,s2,+00000005
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	c.slli	s1,02
	jal	ra,00000000230353A2
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
	jal	ra,0000000023030F88
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023038FF8

l23038FD8:
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	ori	a5,a5,+00000004
	sh	a5,a4,+0000005C

l23038FE6:
	lhu	a5,s4,+00000000
	c.li	a0,00000001
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	sw	s4,a5,+00000008
	c.j	0000000023038F3E

l23038FF8:
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000106
	jal	ra,000000002302BD84
	c.j	0000000023038FE6

;; hci_le_rd_rem_used_feats_cmd_handler: 23039006
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
	jal	ra,0000000023035412
	lui	s0,00042026
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	addi	s0,s0,+00000428
	beq	a4,a5,00000000230390C6

l23039034:
	lhu	a5,s1,+00000000
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000001
	c.bnez	a5,00000000230390CA

l23039046:
	andi	s2,a0,+00000005
	c.li	s5,00000002
	bne	s2,zero,00000000230390B2

l23039050:
	ori	a1,a0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	jal	ra,00000000230353A2
	lhu	a5,s1,+00000000
	c.li	a4,00000001
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	sb	a4,a5,+000000A3
	lhu	a0,s1,+00000000
	jal	ra,0000000023036F7A
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002302C026

l23039086:
	lhu	a2,s1,+00000000
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002302D59E
	lhu	a1,s1,+00000000
	c.li	s5,00000000
	slli	a5,a1,00000002
	c.add	s0,a5
	c.lw	s0,0(a2)
	lhu	a5,a2,+0000005C
	c.andi	a5,00000001
	c.beqz	a5,00000000230390B2

l230390A8:
	addi	a2,a2,+00000069
	c.li	a0,00000000
	jal	ra,000000002302D4AE

l230390B2:
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

l230390C6:
	c.li	s2,0000000C
	c.j	0000000023039086

l230390CA:
	c.li	s2,00000000
	c.j	0000000023039086

;; hci_le_rd_chnl_map_cmd_handler: 230390CE
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
	jal	ra,000000002302BC8C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a4,0000000F
	c.li	a5,0000000C
	beq	a0,a4,000000002303912A

l23039102:
	lhu	a4,s1,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a1)
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.li	a2,00000005
	addi	a1,a1,+0000005E
	addi	a0,s0,+00000004
	c.jalr	a5
	c.li	a5,00000000

l2303912A:
	sb	a5,s0,+00000000
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_auth_payl_to_cmd_handler: 2303914A
hci_rd_auth_payl_to_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a2
	c.mv	s2,a1
	jal	ra,0000000023035412
	lhu	a1,s2,+00000000
	c.mv	s1,a0
	c.lui	a0,00001000
	addi	a2,a0,-00000385
	c.li	a3,00000006
	addi	a0,a0,-000007FF
	jal	ra,000000002302BC8C
	c.andi	s1,0000000F
	c.li	a5,0000000F
	bne	s1,a5,000000002303919C

l2303917C:
	c.li	a5,0000000C
	sb	a5,a0,+00000000

l23039182:
	lhu	a5,s2,+00000000
	sh	a5,a0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303919C:
	lui	a5,00042026
	c.srli	s0,00000008
	addi	a5,a5,+00000428
	c.slli	s0,02
	sb	zero,a0,+00000000
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000058
	sh	a5,a0,+00000004
	c.j	0000000023039182

;; hci_rd_rssi_cmd_handler: 230391BA
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
	jal	ra,000000002302BC8C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,0000000023039212

l230391EC:
	c.li	a5,0000000C
	sb	a5,s0,+00000000
	sb	zero,s0,+00000004

l230391F6:
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23039212:
	sb	zero,s0,+00000000
	lhu	a4,s1,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	lb	a5,a5,+00000068
	sb	a5,s0,+00000004
	c.j	00000000230391F6

;; hci_rd_tx_pwr_lvl_cmd_handler: 23039232
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
	jal	ra,000000002302BC8C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,0000000023039270

l23039264:
	c.li	a5,0000000C

l23039266:
	sb	a5,s0,+00000000
	sb	zero,s0,+00000004
	c.j	00000000230392B2

l23039270:
	sb	zero,s0,+00000000
	lbu	a5,s1,+00000002
	c.beqz	a5,0000000023039284

l2303927A:
	c.li	a4,00000001
	beq	a5,a4,00000000230392CE

l23039280:
	c.li	a5,00000012
	c.j	0000000023039266

l23039284:
	lhu	a5,s1,+00000000
	addi	a4,zero,+0000005C
	c.li	a1,00000001
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000A0
	c.add	a5,a4
	lhu	a0,a5,+00000000
	lui	a5,00042025
	lw	a5,a5,+00000740
	andi	a0,a0,+000000FF
	c.jalr	a5

l230392AE:
	sb	a0,s0,+00000004

l230392B2:
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230392CE:
	lui	a5,00042025
	addi	a5,a5,+0000072C
	c.lw	a5,20(a4)
	lbu	a0,a5,+0000002C
	c.li	a1,00000001
	c.jalr	a4
	c.j	00000000230392AE

;; hci_le_con_update_cmd_handler: 230392E2
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
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,000000002303942C

l23039306:
	lhu	a0,s0,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	slli	a4,a0,00000002
	c.add	a5,a4
	lw	s2,a5,+00000000
	lw	s5,s2,+00000010
	jal	ra,0000000023032372
	c.li	a5,00000004
	addi	s4,s5,+00000028
	c.lwsp	a2,00000084
	bne	a0,a5,000000002303934A

l23039330:
	lhu	a5,s2,+0000005C
	c.andi	a5,00000001
	c.beqz	a5,0000000023039342

l23039338:
	lbu	a1,s2,+00000069
	c.li	s1,0000001A
	c.andi	a1,00000002
	c.beqz	a1,0000000023039434

l23039342:
	lbu	a5,s2,+000000A6
	beq	a5,zero,000000002303946E

l2303934A:
	lhu	a0,s0,+00000002
	lhu	a4,s0,+00000004
	bltu	a4,a0,0000000023039472

l23039356:
	lhu	t1,s0,+0000000A
	lhu	a7,s0,+0000000C
	bltu	a7,t1,0000000023039472

l23039362:
	c.lui	a5,00001000
	addi	a3,a5,-00000380
	bltu	a3,a4,0000000023039472

l2303936C:
	c.li	a3,00000005
	bgeu	a3,a0,0000000023039472

l23039372:
	lhu	a3,s0,+00000006
	addi	a1,zero,+000001F3
	bltu	a1,a3,0000000023039472

l2303937E:
	lhu	a1,s0,+00000008
	addi	a5,a5,-0000038A
	addi	a6,a1,-0000000A
	c.slli	a6,10
	srli	a6,a6,00000010
	bltu	a5,a6,0000000023039472

l23039394:
	addi	a5,a3,+00000001
	add	a5,a5,a4
	slli	a6,a1,00000002
	bgeu	a5,a6,0000000023039472

l230393A4:
	lhu	a5,s5,+00000078
	c.srli	a5,00000001
	bltu	a5,a0,00000000230393DE

l230393AE:
	bltu	a4,a5,00000000230393DE

l230393B2:
	lw	a5,s2,+00000010
	addi	a4,zero,+000004E2
	lhu	a5,a5,+00000012
	srl	a5,a5,a4
	bltu	a5,t1,00000000230393DE

l230393C6:
	bltu	a7,a5,00000000230393DE

l230393CA:
	lhu	a5,s2,+00000054
	bne	a5,a1,00000000230393DE

l230393D2:
	lhu	a5,s5,+0000005E
	c.li	s1,00000000
	c.addi	a5,FFFFFFFF
	beq	a5,a3,0000000023039428

l230393DE:
	addi	a3,zero,+00000022
	c.mv	a1,a2
	addi	a0,zero,+00000109
	jal	ra,000000002302BC8C
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
	jal	ra,000000002302BCFA

l23039428:
	c.li	a1,00000000
	c.j	0000000023039434

l2303942C:
	c.li	s4,00000000
	addi	s1,zero,+000000FF
	c.li	a1,0000000C

l23039434:
	lhu	a2,s0,+00000000
	c.mv	a0,s3
	jal	ra,000000002302D59E
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002303945A

l23039446:
	addi	a5,zero,+000000FF
	beq	s1,a5,000000002303945A

l2303944E:
	lhu	a1,s0,+00000000
	c.mv	a2,s4
	c.mv	a0,s1
	jal	ra,000000002302D3C0

l2303945A:
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

l2303946E:
	c.li	s1,0000001A
	c.j	0000000023039428

l23039472:
	addi	s1,zero,+000000FF
	c.li	a1,00000012
	c.j	0000000023039434

;; hci_wr_auth_payl_to_cmd_handler: 2303947A
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
	jal	ra,0000000023035412
	lhu	a1,s2,+00000000
	c.mv	s0,a0
	c.lui	a0,00001000
	addi	a2,a0,-00000384
	c.li	a3,00000004
	addi	a0,a0,-000007FF
	jal	ra,000000002302BC8C
	c.andi	s0,0000000F
	c.li	a5,0000000F
	c.mv	s1,a0
	bne	s0,a5,00000000230394B8

l230394B0:
	c.li	a5,0000000C

l230394B2:
	sb	a5,s1,+00000000
	c.j	000000002303952C

l230394B8:
	srli	a5,s3,00000008
	lui	s0,00042026
	c.slli	a5,02
	addi	s0,s0,+00000428
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a4,s2,+00000002
	c.lw	a5,16(a3)
	c.slli	a4,04
	lhu	a5,a3,+00000078
	lhu	a3,a3,+0000005E
	add	a5,a5,a3
	bltu	a4,a5,000000002303954A

l230394E2:
	sb	zero,a0,+00000000
	c.lw	s0,0(a5)
	lhu	a4,s2,+00000002
	c.lw	a5,16(a0)
	sh	a4,a5,+00000058
	addi	a0,a0,+00000028
	jal	ra,0000000023038234
	c.lw	s0,0(a5)
	c.li	a3,00000003
	lbu	a4,a5,+000000A5
	c.andi	a4,00000003
	bne	a4,a3,000000002303952C

l23039508:
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.mv	a1,s3
	addi	a0,zero,+00000103
	c.sub	a2,a5
	jal	ra,000000002302C026
	c.lw	s0,0(a5)
	c.mv	a1,s3
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002302C026

l2303952C:
	lhu	a5,s2,+00000000
	c.mv	a0,s1
	sh	a5,s1,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2303954A:
	c.li	a5,00000012
	c.j	00000000230394B2

;; hci_flush_cmd_handler: 2303954E
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
	jal	ra,000000002302BC8C
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002302D5C4
	lui	a5,00042026
	slli	a4,s0,00000002
	addi	a5,a5,+00000428
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lw	a5,16(a0)
	addi	a0,a0,+00000028
	jal	ra,0000000023030760
	c.mv	a0,s1
	sh	s0,s1,+00000002
	sb	zero,s1,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_rem_ver_info_cmd_handler: 230395A8
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
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230395DA

l230395CC:
	lhu	a2,s2,+00000000
	c.li	a1,0000000C

l230395D2:
	c.mv	a0,s4
	jal	ra,000000002302D59E
	c.j	000000002303960A

l230395DA:
	srli	s1,s3,00000008
	lui	a5,00042026
	addi	a5,a5,+00000428
	slli	s0,s1,00000002
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000002
	c.beqz	a5,000000002303961E

l230395F6:
	lhu	a2,s2,+00000000
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002302D59E
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002302D518

l2303960A:
	c.li	s1,00000000

l2303960C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303961E:
	andi	a5,a0,+00000005
	c.li	s1,00000002
	c.bnez	a5,000000002303960C

l23039626:
	ori	a1,a0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	jal	ra,00000000230353A2
	c.lw	s0,0(a5)
	sb	s1,a5,+000000A3
	lhu	a0,s2,+00000000
	jal	ra,0000000023035D86
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002302C026
	lhu	a2,s2,+00000000
	c.li	a1,00000000
	c.j	00000000230395D2

;; llc_hci_command_handler: 2303965A
llc_hci_command_handler proc
	lui	a4,000230B6
	addi	a0,a4,+0000024C
	c.li	a5,00000000
	addi	a4,a4,+0000024C
	c.li	a6,00000010

l2303966A:
	lhu	a7,a0,+00000000
	bne	a7,a3,0000000023039682

l23039672:
	c.slli	a5,03
	c.add	a5,a4
	lw	t1,a5,+00000004
	beq	t1,zero,000000002303968A

l2303967E:
	c.mv	a0,a3
	c.jr	t1

l23039682:
	c.addi	a5,00000001
	c.addi	a0,00000008
	bne	a5,a6,000000002303966A

l2303968A:
	c.li	a0,00000000
	c.jr	ra

;; llc_hci_acl_data_tx_handler: 2303968E
llc_hci_acl_data_tx_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a1
	jal	ra,0000000023035412
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,00000000230396AC

l230396A6:
	lhu	a5,s0,+00000004
	c.bnez	a5,00000000230396F0

l230396AC:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,8(a5)
	lui	a1,00042026
	addi	a1,a1,+000002C8
	lhu	a5,a5,+00000004
	lui	a0,00042026
	addi	a0,a0,+000002D0
	addi	a5,a5,+00000029
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,000000002302D6B6

l230396E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230396F0:
	c.mv	a0,s0
	jal	ra,000000002303021E
	c.bnez	a0,0000000023039702

l230396F8:
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,000000002302D6B6

l23039702:
	lhu	a4,s0,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lw	a5,16(a0)
	jal	ra,000000002302EB66
	c.j	00000000230396E4

;; hci_vsc_set_tx_pwr: 2303971C
hci_vsc_set_tx_pwr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lb	a0,a1,+00000000
	c.li	a5,00000014
	c.li	a1,00000012
	andi	a4,a0,+000000FF
	bltu	a5,a4,0000000023039740

l23039730:
	lui	a5,00042025
	lw	a5,a5,+0000073C
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	a2,000000A4
	c.li	a1,00000000

l23039740:
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_wr_rfpath_compensation_cmd_handler: 2303974E
hci_le_wr_rfpath_compensation_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a4,a1,+00000000
	lui	a5,0004200F
	c.mv	a0,a3
	sh	a4,a5,+000003EE
	lhu	a4,a1,+00000002
	lui	a5,0004200F
	c.li	a1,00000000
	sh	a4,a5,+000003EC
	jal	ra,00000000230335E2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_wr_le_host_supp_cmd_handler: 2303977A
hci_wr_le_host_supp_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,0004200D
	lbu	a5,a1,+00000000
	addi	a4,a4,+000004A0
	lbu	a2,a4,+00000008
	c.slli	a5,01
	c.mv	a0,a3
	c.or	a5,a2
	c.li	a1,00000000
	sb	a5,a4,+00000008
	jal	ra,00000000230335E2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_wr_suggted_dft_data_len_cmd_handler: 230397A6
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
	bltu	a0,a5,00000000230397EC

l230397C2:
	lhu	a5,a4,+00000002
	addi	a0,zero,+00000700
	addi	a5,a5,-00000148
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a0,a5,00000000230397EC

l230397D6:
	lui	a5,00042026
	addi	a5,a5,+00000460
	sh	a2,a5,+00000020
	lhu	a4,a4,+00000002
	c.li	a1,00000000
	sh	a4,a5,+00000022

l230397EC:
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_set_evt_mask_cmd_handler: 230397FA
hci_le_set_evt_mask_cmd_handler proc
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.addi	sp,FFFFFFE0
	lui	a0,00042026
	c.swsp	ra,0000008C
	c.li	a2,00000008
	addi	a0,a0,+00000498
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_rd_rfpath_compensation_cmd_handler: 23039826
hci_le_rd_rfpath_compensation_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	addi	a2,a2,+0000004C
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	lui	a4,0004200F
	lhu	a4,a4,+000003EE
	sh	a4,a0,+00000002
	lui	a4,0004200F
	lhu	a4,a4,+000003EC
	sb	zero,a0,+00000000
	sh	a4,a0,+00000004
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_trans_pwr_cmd_handler: 23039866
hci_le_rd_trans_pwr_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000003
	addi	a2,a2,+0000004B
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sb	zero,a0,+00000001
	lui	a4,00042025
	lbu	a4,a4,+00000758
	sb	zero,a0,+00000000
	sb	a4,a0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_buff_size_cmd_handler: 2303989E
hci_rd_buff_size_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	addi	a2,a0,+00000005
	c.li	a3,0000000A
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sh	zero,a0,+00000006
	sh	zero,a0,+00000002
	sb	zero,a0,+00000004
	sh	zero,a0,+00000008
	sb	zero,a0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_supp_feats_cmd_handler: 230398D4
hci_rd_local_supp_feats_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.mv	a2,a3
	c.li	a1,00000000
	c.li	a3,00000009
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302BC8C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a1,0004200D
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,+000004A0
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_supp_cmds_cmd_handler: 23039916
hci_rd_local_supp_cmds_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	addi	a3,zero,+00000041
	addi	a2,a0,+00000002
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302BC8C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a1,000230B6
	c.mv	s0,a0
	addi	a2,zero,+00000040
	addi	a1,a1,-000005B4
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_ver_info_cmd_handler: 2303995E
hci_rd_local_ver_info_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00001000
	addi	a2,s0,+00000001
	c.li	a3,0000000A
	c.li	a1,00000000
	addi	a0,s0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	addi	a4,zero,+00000321
	sh	a4,a0,+00000008
	sh	a4,a0,+00000002
	addi	a3,zero,+000007AF
	addi	s0,s0,-00000700
	c.li	a4,00000009
	sh	s0,a0,+00000000
	sh	a3,a0,+00000006
	sb	a4,a0,+00000004
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_bd_addr_cmd_handler: 230399A6
hci_rd_bd_addr_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000007
	addi	a2,a0,+00000009
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302BC8C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a1,00042026
	c.mv	s0,a0
	c.li	a2,00000006
	addi	a1,a1,+000004C1
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_max_data_len_cmd_handler: 230399EA
hci_le_rd_max_data_len_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,0000000A
	addi	a2,a2,+0000002F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	lui	a5,00042026
	addi	a5,a5,+00000460
	lhu	a3,a5,+00000028
	sh	a3,a0,+00000006
	lhu	a3,a5,+0000002A
	sh	a3,a0,+00000008
	lhu	a3,a5,+00000024
	sh	a3,a0,+00000002
	lhu	a5,a5,+00000026
	sb	zero,a0,+00000000
	sh	a5,a0,+00000004
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_suggted_dft_data_len_cmd_handler: 23039A3A
hci_le_rd_suggted_dft_data_len_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	addi	a2,a2,+00000023
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	lui	a5,00042026
	addi	a5,a5,+00000460
	lhu	a3,a5,+00000020
	sh	a3,a0,+00000002
	lhu	a5,a5,+00000022
	sb	zero,a0,+00000000
	sh	a5,a0,+00000004
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_supp_states_cmd_handler: 23039A7A
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
	jal	ra,000000002302BC8C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a1,000230CC
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,-00000660
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_wl_size_cmd_handler: 23039ABE
hci_le_rd_wl_size_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.addi	a2,0000000F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	c.li	a4,00000004
	sb	zero,a0,+00000000
	sb	a4,a0,+00000001
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_adv_ch_tx_pw_cmd_handler: 23039AEA
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
	jal	ra,000000002302BC8C
	lui	a5,00042025
	addi	a5,a5,+0000072C
	c.mv	s0,a0
	c.lw	a5,20(a4)
	lbu	a0,a5,+0000002C
	c.li	a1,00000001
	c.jalr	a4
	sb	a0,s0,+00000001
	sb	zero,s0,+00000000
	c.mv	a0,s0
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_local_supp_feats_cmd_handler: 23039B2E
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
	jal	ra,000000002302BC8C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a1,000230CC
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,-00000668
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_buff_size_cmd_handler: 23039B72
hci_le_rd_buff_size_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	c.addi	a2,00000002
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	c.li	a4,00000002
	sb	a4,a0,+00000004
	lui	a4,00042026
	lhu	a4,a4,+00000484
	sb	zero,a0,+00000000
	sh	a4,a0,+00000002
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_generate_dhkey_cmd_handler: 23039BAA
hci_le_generate_dhkey_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	a2,a1
	c.mv	s0,a3
	c.li	a5,00000000
	addi	a4,zero,+00000020

l23039BBA:
	add	a3,a2,a5
	lbu	a3,a3,+00000000
	c.bnez	a3,0000000023039C1E

l23039BC4:
	c.addi	a5,00000001
	bne	a5,a4,0000000023039BBA

l23039BCA:
	c.li	a0,00000012

l23039BCC:
	addi	a5,a2,+00000020
	addi	a4,a2,+00000040
	c.mv	a3,a5

l23039BD6:
	lbu	a1,a5,+00000000
	c.bnez	a1,0000000023039BE4

l23039BDC:
	c.addi	a5,00000001
	bne	a4,a5,0000000023039BD6

l23039BE2:
	c.li	a0,00000012

l23039BE4:
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+000000D3
	c.bnez	a4,0000000023039C22

l23039BF2:
	c.bnez	a0,0000000023039C0C

l23039BF4:
	c.li	a4,00000002
	lui	a1,00042026
	sb	a4,a5,+000000D3
	addi	a1,a1,+00000513
	c.li	a5,00000000
	c.li	a4,00000006
	c.li	a0,00000002
	jal	ra,000000002302B1B0

l23039C0C:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023033608
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23039C1E:
	c.li	a0,00000000
	c.j	0000000023039BCC

l23039C22:
	c.li	a0,0000000C
	c.j	0000000023039C0C

;; hci_host_nb_cmp_pkts_cmd_handler: 23039C26
hci_host_nb_cmp_pkts_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a2,a1,+00000000
	addi	a5,a1,+00000002
	c.li	a0,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	a6,00000001

l23039C3A:
	bne	a2,a4,0000000023039C5A

l23039C3E:
	c.swsp	a3,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230346EE
	c.lwsp	s0,00000064
	c.lwsp	a2,000000A4
	c.beqz	a1,0000000023039C52

l23039C4C:
	c.mv	a0,a3
	jal	ra,00000000230335E2

l23039C52:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039C5A:
	lhu	a7,a5,+00000000
	bltu	a6,a7,0000000023039C76

l23039C62:
	lhu	a7,a5,+00000006
	c.add	a0,a7
	c.slli	a0,10
	c.srli	a0,00000010

l23039C6C:
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.addi	a5,00000002
	c.j	0000000023039C3A

l23039C76:
	c.li	a1,00000012
	c.j	0000000023039C6C

;; hci_host_buf_size_cmd_handler: 23039C7A
hci_host_buf_size_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	a5,a1
	lhu	a0,a5,+00000000
	lhu	a1,a1,+00000004
	c.swsp	a3,00000084
	jal	ra,000000002303468A
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_evt_mask_page_2_cmd_handler: 23039CA0
hci_set_evt_mask_page_2_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002302A032
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_evt_mask_cmd_handler: 23039CC0
hci_set_evt_mask_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.li	a1,00000003
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002302A032
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_ctrl_to_host_flow_ctrl_cmd_handler: 23039CE0
hci_set_ctrl_to_host_flow_ctrl_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000000
	c.li	a4,00000003
	c.li	a1,00000012
	bltu	a4,a5,0000000023039D08

l23039CF0:
	c.li	a4,00000001
	c.li	a0,00000001
	beq	a5,a4,0000000023039CFE

l23039CF8:
	c.addi	a5,FFFFFFFD
	sltiu	a0,a5,+00000001

l23039CFE:
	c.swsp	a3,00000084
	jal	ra,00000000230346B0
	c.lwsp	a2,000000A4
	c.mv	a1,a0

l23039D08:
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_reset_cmd_handler: 23039D16
hci_reset_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002302A114
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.mv	a0,a3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_tx_test_cmd_handler: 23039D32
hci_le_tx_test_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,0000000023035412
	c.bnez	a0,0000000023039D66

l23039D44:
	c.lui	a5,00002000
	c.addi	a5,0000001E
	c.lwsp	a2,00000064
	bne	s0,a5,0000000023039D54

l23039D4E:
	c.mv	a0,a1
	jal	ra,000000002303362E

l23039D54:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039D66:
	c.li	a0,0000000C
	c.j	0000000023039D54

;; hci_le_rx_test_cmd_handler: 23039D6A
hci_le_rx_test_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,0000000023035412
	c.bnez	a0,0000000023039D9E

l23039D7C:
	c.lui	a5,00002000
	c.addi	a5,0000001D
	c.lwsp	a2,00000064
	bne	s0,a5,0000000023039D8C

l23039D86:
	c.mv	a0,a1
	jal	ra,000000002303386A

l23039D8C:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039D9E:
	c.li	a0,0000000C
	c.j	0000000023039D8C

;; hci_le_rand_cmd_handler: 23039DA2
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
	jal	ra,000000002302BC8C
	c.mv	s0,a0
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000001
	sb	a5,s0,+00000002
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000003
	sb	a0,s0,+00000004
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000005
	sb	a5,s0,+00000006
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s0,+00000008
	sb	a5,s0,+00000007
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,0000000023029E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_enc_cmd_handler: 23039E0C
hci_le_enc_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000004
	sh	a5,a1,+00000FF8
	lui	s1,00042026
	c.li	a5,00000008
	sh	a5,a1,+00000FFC
	addi	a0,s1,+00000460
	c.mv	s0,a1
	c.addi	a1,FFFFFFF4
	jal	ra,000000002302A2FE
	addi	s1,s1,+00000460
	lbu	a5,s1,+00000058
	c.bnez	a5,0000000023039E40

l23039E3A:
	c.mv	a0,s0
	jal	ra,00000000230344EA

l23039E40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_wl_mngt_cmd_handler: 23039E4C
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
	jal	ra,0000000023035412
	andi	a4,a0,+000000F0
	c.li	a5,00000010
	bne	a4,a5,0000000023039E7E

l23039E6E:
	lui	a5,00042026
	lw	a5,a5,+00000474
	c.li	s0,0000000C
	lbu	a5,a5,+0000001B
	c.bnez	a5,0000000023039EC6

l23039E7E:
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	c.li	a5,00000001
	bltu	a5,a0,0000000023039E98

l23039E88:
	lui	a5,00042026
	lw	a5,a5,+00000470
	c.li	s0,0000000C
	lbu	a5,a5,+00000008
	c.bnez	a5,0000000023039EC6

l23039E98:
	c.lui	a5,00002000
	addi	a4,a5,+00000011
	beq	s2,a4,0000000023039EDE

l23039EA2:
	addi	a4,a5,+00000012
	beq	s2,a4,0000000023039EEE

l23039EAA:
	c.addi	a5,00000010
	c.li	s0,00000000
	bne	s2,a5,0000000023039EC6

l23039EB2:
	jal	ra,0000000023034002
	c.li	a4,00000000
	c.li	a3,00000001
	addi	a2,sp,+0000000E
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023032B62

l23039EC6:
	c.mv	a0,s3
	c.mv	a1,s0
	jal	ra,00000000230335E2
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23039EDE:
	lbu	a1,s1,+00000000
	addi	a0,s1,+00000001
	jal	ra,00000000230342C0

l23039EEA:
	c.mv	s0,a0
	c.j	0000000023039EC6

l23039EEE:
	lbu	a1,s1,+00000000
	addi	a0,s1,+00000001
	jal	ra,0000000023034330
	c.j	0000000023039EEA

;; hci_le_set_host_ch_class_cmd_handler: 23039EFC
hci_le_set_host_ch_class_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042026
	addi	s0,s0,+00000460
	lbu	a5,s0,+00000037
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a1
	c.mv	s3,a3
	c.li	a1,0000000C
	c.beqz	a5,0000000023039F54

l23039F1C:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,0000000023032A54
	c.mv	s1,a0
	c.li	a1,00000000
	addi	a2,zero,+00000064
	c.li	a0,00000000
	jal	ra,000000002302C026
	c.addi	s1,FFFFFFFE
	sb	zero,s0,+00000037
	andi	s1,s1,+000000FF
	addi	a5,zero,+00000023
	c.li	a1,00000012
	bltu	a5,s1,0000000023039F54

l23039F46:
	c.mv	a1,s2
	c.li	a2,00000005
	addi	a0,s0,+00000032
	jal	ra,00000000230A382C
	c.li	a1,00000000

l23039F54:
	c.mv	a0,s3
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_create_con_cmd_handler: 23039F6A
hci_le_create_con_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a3
	jal	ra,0000000023035412
	c.li	a4,00000010
	c.lwsp	a2,00000064
	beq	a0,a4,0000000023039FB6

l23039F84:
	c.mv	a5,a0
	bltu	a4,a0,0000000023039FA0

l23039F8A:
	c.beqz	a0,0000000023039FB6

l23039F8C:
	c.li	a4,00000003
	c.li	a0,00000002

l23039F90:
	c.li	a1,0000000C
	bne	a5,a4,0000000023039FDE

l23039F96:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23039FA0:
	addi	a4,zero,+00000020
	beq	a0,a4,0000000023039FB6

l23039FA8:
	addi	a4,zero,+00000023
	c.li	a0,00000002
	beq	a5,a4,0000000023039F96

l23039FB2:
	c.li	a4,00000013
	c.j	0000000023039F90

l23039FB6:
	c.mv	a0,a1
	jal	ra,0000000023034390
	c.mv	a1,a0
	c.bnez	a0,0000000023039FDE

l23039FC0:
	lui	s0,00042026
	addi	s0,s0,+00000460
	c.swsp	a0,00000084
	sh	s1,s0,+0000004E
	jal	ra,0000000023035412
	c.lwsp	a2,00000064
	c.li	a5,00000001
	sb	a0,s0,+00000050
	sb	a5,s0,+0000004C

l23039FDE:
	c.mv	a0,s1
	jal	ra,0000000023033608
	c.li	a0,00000000
	c.j	0000000023039F96

;; hci_le_set_scan_en_cmd_handler: 23039FE8
hci_le_set_scan_en_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a1
	c.mv	s1,a3
	jal	ra,0000000023035412
	c.li	a4,00000012
	beq	a0,a4,000000002303A0B6

l2303A002:
	c.mv	a5,a0
	bltu	a4,a0,000000002303A082

l2303A008:
	c.li	a4,00000002
	beq	a0,a4,000000002303A0B6

l2303A00E:
	bltu	a4,a0,000000002303A076

l2303A012:
	c.li	a4,00000001

l2303A014:
	beq	a5,a4,000000002303A0B0

l2303A018:
	lbu	a3,s0,+00000000
	c.li	a4,00000001
	c.li	a1,0000000C
	bne	a3,a4,000000002303A054

l2303A024:
	c.li	a0,00000000
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	a5,a5,+00000460
	sb	a0,a5,+00000050
	c.li	s2,00000001
	c.mv	a0,s0
	sh	s1,a5,+0000004E
	sb	s2,a5,+0000004C
	jal	ra,0000000023033F08
	c.mv	a1,a0
	c.bnez	a0,000000002303A054

l2303A04A:
	lbu	a4,s0,+00000000
	c.li	a0,00000000
	bne	a4,s2,000000002303A096

l2303A054:
	c.mv	a0,s1
	jal	ra,00000000230335E2
	lui	a5,00042026
	addi	a5,a5,+00000460
	lbu	a4,a5,+00000050
	c.li	a0,00000000
	c.andi	a4,FFFFFFF0
	sb	a4,a5,+00000050
	c.li	a4,00000001
	sb	a4,a5,+0000004C
	c.j	000000002303A096

l2303A076:
	c.li	a4,00000003
	c.li	a0,00000002
	beq	a5,a4,000000002303A096

l2303A07E:
	c.li	a4,00000011
	c.j	000000002303A014

l2303A082:
	addi	a4,zero,+00000021
	beq	a0,a4,000000002303A0B0

l2303A08A:
	bltu	a4,a0,000000002303A0A2

l2303A08E:
	c.li	a4,00000013

l2303A090:
	c.li	a0,00000002
	bne	a5,a4,000000002303A018

l2303A096:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303A0A2:
	addi	a4,zero,+00000022
	beq	a0,a4,000000002303A0B6

l2303A0AA:
	addi	a4,zero,+00000023
	c.j	000000002303A090

l2303A0B0:
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002303A024

l2303A0B6:
	c.li	a1,0000000C
	c.j	000000002303A054

;; hci_le_set_scan_param_cmd_handler: 2303A0BA
hci_le_set_scan_param_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,0000000023035412
	c.li	a4,00000011
	c.li	a5,0000000C
	beq	a0,a4,000000002303A0EA

l2303A0D2:
	addi	a4,zero,+00000021
	beq	a0,a4,000000002303A0EA

l2303A0DA:
	c.li	a4,00000001
	beq	a0,a4,000000002303A0EA

l2303A0E0:
	c.lwsp	a2,00000064
	c.mv	a0,a1
	jal	ra,0000000023033E42
	c.mv	a5,a0

l2303A0EA:
	c.mv	a0,s0
	c.mv	a1,a5
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_set_scan_rsp_data_cmd_handler: 2303A0FC
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
	jal	ra,0000000023035412
	c.addi	a0,FFFFFFF0
	c.li	a5,00000003
	bltu	a5,a0,000000002303A16C

l2303A11A:
	lbu	a4,s0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,000000002303A178

l2303A124:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,00042026
	addi	a5,s1,+00000460
	c.lw	a5,20(a5)
	addi	s1,s1,+00000460
	c.lw	a5,4(a0)
	c.beqz	a0,000000002303A148

l2303A13E:
	jal	ra,000000002302BDCE
	c.lw	s1,20(a5)
	sw	zero,a5,+00000004

l2303A148:
	csrrw	zero,mstatus,zero
	c.lw	s1,20(a5)
	c.addi	s0,FFFFFFF4
	c.li	a1,00000000
	c.sw	a5,4(s0)
	c.li	s0,00000001

l2303A156:
	c.mv	a0,s2
	jal	ra,00000000230335E2
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303A16C:
	c.mv	a0,s0
	jal	ra,0000000023033D70
	c.mv	a1,a0

l2303A174:
	c.li	s0,00000000
	c.j	000000002303A156

l2303A178:
	c.li	a1,00000012
	c.j	000000002303A174

;; hci_le_set_adv_en_cmd_handler: 2303A17C
hci_le_set_adv_en_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.mv	s1,a3
	jal	ra,0000000023035412
	c.li	a5,00000010
	bltu	a0,a5,000000002303A1EE

l2303A194:
	c.li	a5,00000013
	bgeu	a5,a0,000000002303A1B2

l2303A19A:
	c.addi	a0,FFFFFFE0
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	bltu	a5,a0,000000002303A1EE

l2303A1A6:
	c.li	a0,00000002

l2303A1A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303A1B2:
	lbu	a5,s0,+00000000
	c.li	a0,0000000C
	c.bnez	a5,000000002303A1FA

l2303A1BA:
	c.li	a0,00000000
	jal	ra,0000000023035412
	lui	a5,00042026
	addi	a5,a5,+00000460
	sb	a0,a5,+0000006E
	c.mv	a0,s0
	sh	s1,a5,+0000006C
	jal	ra,0000000023033B18
	c.bnez	a0,000000002303A1FA

l2303A1D8:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	beq	a4,a5,000000002303A1FA

l2303A1E2:
	lui	a5,00042026
	sb	zero,a5,+000004AC
	c.li	a0,00000000
	c.j	000000002303A1A8

l2303A1EE:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	c.li	a0,0000000C
	beq	a4,a5,000000002303A1BA

l2303A1FA:
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,00000000230335E2
	c.j	000000002303A1E2

;; hci_le_set_adv_data_cmd_handler: 2303A204
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
	jal	ra,0000000023035412
	c.addi	a0,FFFFFFF0
	c.li	a5,00000003
	bltu	a5,a0,000000002303A274

l2303A222:
	lbu	a4,s0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,000000002303A280

l2303A22C:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,00042026
	addi	a5,s1,+00000460
	c.lw	a5,20(a5)
	addi	s1,s1,+00000460
	c.lw	a5,0(a0)
	c.beqz	a0,000000002303A250

l2303A246:
	jal	ra,000000002302BDCE
	c.lw	s1,20(a5)
	sw	zero,a5,+00000000

l2303A250:
	csrrw	zero,mstatus,zero
	c.lw	s1,20(a5)
	c.addi	s0,FFFFFFF4
	c.li	a1,00000000
	c.sw	a5,0(s0)
	c.li	s0,00000001

l2303A25E:
	c.mv	a0,s2
	jal	ra,00000000230335E2
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303A274:
	c.mv	a0,s0
	jal	ra,0000000023033C9E
	c.mv	a1,a0

l2303A27C:
	c.li	s0,00000000
	c.j	000000002303A25E

l2303A280:
	c.li	a1,00000012
	c.j	000000002303A27C

;; hci_le_set_adv_param_cmd_handler: 2303A284
hci_le_set_adv_param_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a3
	jal	ra,0000000023035412
	addi	a4,a0,-00000010
	c.li	a5,00000003
	c.lwsp	a2,00000064
	c.li	a0,0000000C
	bgeu	a5,a4,000000002303A2A8

l2303A2A2:
	c.mv	a0,a1
	jal	ra,0000000023033932

l2303A2A8:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230335E2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_set_rand_add_cmd_handler: 2303A2BA
hci_le_set_rand_add_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s2,a3
	jal	ra,0000000023035412
	c.li	s0,0000000C
	c.bnez	a0,000000002303A2FA

l2303A2D2:
	lui	a1,000230CC
	c.mv	s0,a0
	addi	a1,a1,-00000688
	c.mv	a0,s1
	jal	ra,000000002302A58E
	c.bnez	a0,000000002303A310

l2303A2E4:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	a0,00042026
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,a0,+000004BB
	c.jalr	a5

l2303A2FA:
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,00000000230335E2
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303A310:
	c.li	s0,00000012
	c.j	000000002303A2FA

;; hci_le_rd_local_p256_public_key_cmd_handler: 2303A314
hci_le_rd_local_p256_public_key_cmd_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042026
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	a4,a5,+00000460
	lbu	s1,a4,+000000D3
	addi	s0,a5,+00000460
	c.beqz	s1,000000002303A330

l2303A32E:
	c.li	s1,0000000C

l2303A330:
	c.mv	a1,s1
	c.mv	a0,a3
	jal	ra,0000000023033608
	c.bnez	s1,000000002303A35A

l2303A33A:
	lui	s1,00042026
	c.li	a1,00000000
	addi	a0,s1,+00000513
	jal	ra,000000002302B664
	c.li	a5,00000001
	c.li	a2,00000000
	c.li	a1,00000006
	addi	a0,s1,+00000513
	sb	a5,s0,+000000D3
	jal	ra,000000002302B648

l2303A35A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_test_end_cmd_handler: 2303A366
hci_le_test_end_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023035412
	addi	a5,zero,+00000024
	bne	a0,a5,000000002303A39E

l2303A378:
	lui	a5,00042026
	addi	a5,a5,+00000460
	c.lw	a5,72(a0)
	c.li	a4,00000001
	sb	a4,a5,+00000059
	jal	ra,0000000023032974
	addi	a1,zero,+00000023
	c.li	a0,00000000
	jal	ra,00000000230353A2

l2303A396:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303A39E:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.li	a3,00000004
	c.addi	a2,0000001F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002302BC8C
	c.li	a4,0000000C
	sh	zero,a0,+00000002
	sb	a4,a0,+00000000
	jal	ra,0000000023029E8E
	c.j	000000002303A396

;; hci_le_create_con_cancel_cmd_handler: 2303A3C0
hci_le_create_con_cancel_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a3
	jal	ra,0000000023035412
	c.li	a5,00000012
	beq	a0,a5,000000002303A3E4

l2303A3D6:
	addi	a5,zero,+00000022
	beq	a0,a5,000000002303A3E4

l2303A3DE:
	c.li	a5,00000002
	bne	a0,a5,000000002303A42A

l2303A3E4:
	lui	s0,00042026
	addi	s0,s0,+00000460
	c.lw	s0,84(a0)
	jal	ra,00000000230316C0
	lbu	a5,s0,+00000050
	c.li	a0,00000000
	sh	s1,s0,+0000004E
	c.andi	a5,FFFFFFF0
	ori	a5,a5,+00000002
	sb	a5,s0,+00000050
	c.li	a5,00000001
	sb	a5,s0,+0000004C
	jal	ra,0000000023035412
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000003
	c.li	a0,00000000
	jal	ra,00000000230353A2

l2303A41E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303A42A:
	c.li	a1,0000000C
	c.mv	a0,s1
	jal	ra,00000000230335E2
	c.j	000000002303A41E

;; hci_command_handler: 2303A434
hci_command_handler proc
	lui	a4,000230B6
	addi	a2,a4,+000002CC
	c.li	a5,00000000
	addi	a4,a4,+000002CC
	addi	a0,zero,+0000002D

l2303A446:
	lhu	a6,a2,+00000000
	bne	a6,a3,000000002303A460

l2303A44E:
	c.slli	a5,03
	c.add	a5,a4
	lw	t1,a5,+00000004
	beq	t1,zero,000000002303A468

l2303A45A:
	c.mv	a2,a3
	c.mv	a0,a3
	c.jr	t1

l2303A460:
	c.addi	a5,00000001
	c.addi	a2,00000008
	bne	a5,a0,000000002303A446

l2303A468:
	c.li	a0,00000000
	c.jr	ra

;; bearer2str: 2303A46C
;;   Called from:
;;     2303A58A (in link_close)
;;     2303A5A4 (in link_open)
;;     2303ACB2 (in blemesh_pb)
;;     2303ACC8 (in blemesh_pb)
;;     2303ACEA (in blemesh_pb)
;;     2303ACFC (in blemesh_pb)
bearer2str proc
	c.li	a5,00000001
	beq	a0,a5,000000002303A482

l2303A472:
	c.li	a5,00000002
	beq	a0,a5,000000002303A48C

l2303A478:
	lui	a0,000230B6
	addi	a0,a0,+00000434
	c.jr	ra

l2303A482:
	lui	a0,000230B6
	addi	a0,a0,+0000043C
	c.jr	ra

l2303A48C:
	lui	a0,000230B6
	addi	a0,a0,+00000444
	c.jr	ra

;; fault_test: 2303A496
fault_test proc
	addi	a5,zero,+000005F1
	c.li	a0,FFFFFFEA
	bne	a2,a5,000000002303A4A4

l2303A4A0:
	c.bnez	a1,000000002303A4A4

l2303A4A2:
	c.li	a0,00000000

l2303A4A4:
	c.jr	ra

;; attn_on: 2303A4A6
attn_on proc
	c.jr	ra

;; lpn_cb: 2303A4A8
lpn_cb proc
	c.beqz	a1,000000002303A4B8

l2303A4AA:
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-00000630

l2303A4B4:
	jal	zero,0000000023082388

l2303A4B8:
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-000005FC
	c.j	000000002303A4B4

;; fault_get_reg: 2303A4C4
fault_get_reg proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	addi	a5,zero,+000005F1
	beq	a1,a5,000000002303A4E4

l2303A4D0:
	lui	a0,000230B7
	addi	a0,a0,-000007A4
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l2303A4DE:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303A4E4:
	lui	a0,000230B7
	addi	a0,a0,-00000770
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,0000000023082388
	c.lwsp	tp,00000084
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4
	sb	zero,a2,+00000000
	lui	a2,0004200F
	lbu	a0,a4,+00000000
	c.li	a5,00000000
	sb	zero,a4,+00000000
	addi	a2,a2,+0000040C
	c.li	a6,00000008

l2303A514:
	lbu	a1,a4,+00000000
	bgeu	a1,a0,000000002303A53C

l2303A51C:
	add	a1,a2,a5
	lbu	a1,a1,+00000000
	c.beqz	a1,000000002303A536

l2303A526:
	sb	a1,a3,+00000000
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.addi	a1,00000001
	sb	a1,a4,+00000000

l2303A536:
	c.addi	a5,00000001
	bne	a5,a6,000000002303A514

l2303A53C:
	c.li	a0,00000000
	c.j	000000002303A4DE

;; prov_reset: 2303A540
prov_reset proc
	lui	a0,000230B7
	addi	a0,a0,-00000558
	jal	zero,0000000023082388

;; prov_complete: 2303A54C
prov_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.mv	s1,a0
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-000005A4
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a5,0004200F
	addi	a5,a5,+000003FC
	sh	s1,a5,+00000004
	sh	s0,a5,+00000000
	sh	s0,a5,+00000002
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; link_close: 2303A586
link_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303A46C
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-00000678
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; link_open: 2303A5A0
link_open proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303A46C
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-00000654
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; prov_input_complete: 2303A5BA
prov_input_complete proc
	lui	a0,000230B7
	addi	a0,a0,-0000056C
	jal	zero,0000000023082388

;; input: 2303A5C6
input proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000004
	c.mv	s0,a0
	c.mv	s1,a1
	beq	a0,a5,000000002303A5F2

l2303A5D8:
	c.li	a5,00000008
	beq	a0,a5,000000002303A61A

l2303A5DE:
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-000006A8
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA
	c.j	000000002303A610

l2303A5F2:
	lui	a0,000230B7
	addi	a0,a0,-00000718

l2303A5FA:
	jal	ra,0000000023082388
	lui	a5,0004200F
	sb	s0,a5,+000003F8
	lui	a5,0004200F
	sb	s1,a5,+000003F9
	c.li	a0,00000000

l2303A610:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303A61A:
	lui	a0,000230B7
	addi	a0,a0,-000006E0
	c.j	000000002303A5FA

;; output_string: 2303A624
output_string proc
	c.mv	a1,a0
	lui	a0,000230B7
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000005B8
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; output_number: 2303A63E
output_number proc
	lui	a0,000230B7
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000005CC
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; vendor_data_set: 2303A656
vendor_data_set proc
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.mv	s1,a0
	c.mv	s2,a1
	c.lw	a2,0(a0)
	lhu	a1,a2,+00000004
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	lui	a5,00000480
	c.swsp	a5,00000008
	c.addi4spn	a5,00000018
	c.mv	s0,a2
	c.swsp	a5,00000088
	jal	ra,0000000023049580
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,+000001A4
	jal	ra,0000000023082388
	lui	a1,00000C20
	c.addi4spn	a0,0000000C
	addi	a1,a1,+0000003F
	jal	ra,000000002303C6A0
	lhu	a2,s0,+00000004
	c.lw	s0,0(a1)
	c.addi4spn	a0,0000000C
	jal	ra,00000000230492F0
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s1
	c.li	a4,00000000
	c.li	a3,00000000
	jal	ra,000000002303C700
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.addi16sp	00000070
	c.jr	ra

;; blemesh_lpn_set: 2303A6C0
blemesh_lpn_set proc
	c.addi	sp,FFFFFFE0
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000000F
	lui	s0,0004200F
	addi	s0,s0,+000003FA
	c.beqz	a5,000000002303A71C

l2303A6E0:
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002303A6FA

l2303A6E6:
	lui	a0,000230B6
	addi	a0,a0,+00000668

l2303A6EE:
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303A6FA:
	c.li	a0,00000001
	jal	ra,000000002303B7A4
	c.beqz	a0,000000002303A70C

l2303A702:
	lui	a0,000230B6
	addi	a0,a0,+00000680
	c.j	000000002303A6EE

l2303A70C:
	c.li	a5,00000001
	lui	a0,000230B6
	sb	a5,s0,+00000000
	addi	a0,a0,+00000698
	c.j	000000002303A6EE

l2303A71C:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002303A72C

l2303A722:
	lui	a0,000230B6
	addi	a0,a0,+000006B4
	c.j	000000002303A6EE

l2303A72C:
	c.li	a0,00000000
	jal	ra,000000002303B7A4
	c.beqz	a0,000000002303A73E

l2303A734:
	lui	a0,000230B6
	addi	a0,a0,+000006CC
	c.j	000000002303A6EE

l2303A73E:
	lui	a0,000230B6
	sb	zero,s0,+00000000
	addi	a0,a0,+000006E4
	c.j	000000002303A6EE

;; blemesh_rpl_clr: 2303A74C
blemesh_rpl_clr proc
	lui	a0,0004200E
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,a0,-00000578
	jal	zero,00000000230A3A68

;; fault_clear: 2303A75E
fault_clear proc
	addi	a5,zero,+000005F1
	bne	a1,a5,000000002303A782

l2303A766:
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,a0,+0000040C
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303A782:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; blemesh_seg_send: 2303A786
blemesh_seg_send proc
	c.addi16sp	FFFFFF60
	c.addi4spn	a5,00000048
	c.swsp	a5,00000084
	lui	a5,00000480
	c.swsp	a5,00000008
	c.addi4spn	a5,00000048
	c.swsp	a5,00000088
	c.swsp	zero,0000000C
	c.li	a5,FFFFFFFF
	sb	a5,sp,+00000018
	c.swsp	ra,000000CC
	c.swsp	s0,0000004C
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	c.li	a5,00000003
	beq	a2,a5,000000002303A7C0

l2303A7AC:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303A7B4:
	jal	ra,0000000023082388

l2303A7B8:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.addi16sp	000000A0
	c.jr	ra

l2303A7C0:
	c.mv	s0,a3
	jal	ra,0000000023041D26
	c.bnez	a0,000000002303A7D2

l2303A7C8:
	lui	a0,000230B6
	addi	a0,a0,+000007DC
	c.j	000000002303A7B4

l2303A7D2:
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000004
	jal	ra,000000002307A91C
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000008
	jal	ra,000000002307A91C
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+00000036
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	lhu	a0,a5,+00000400
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	lhu	a3,a4,+000001B4
	c.lui	a4,00010000
	sh	a0,sp,+00000030
	c.addi	a4,FFFFFFFF
	addi	a5,a5,+000006BC
	bne	a3,a4,000000002303A886

l2303A818:
	lhu	a4,a5,+000001DC
	beq	a4,a3,000000002303A830

l2303A820:
	c.li	a4,00000001

l2303A822:
	addi	a3,zero,+00000028
	add	a4,a4,a3
	c.add	a5,a4
	lhu	a4,a5,+000001B6

l2303A830:
	lhu	a5,sp,+0000000A
	sh	a4,sp,+00000032
	c.swsp	zero,00000090
	sh	a5,sp,+00000034
	c.li	a5,00000001
	sb	a5,sp,+0000003A
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,0000000023042056
	c.addi4spn	a5,00000030
	c.swsp	a5,00000014
	lhu	a5,sp,+00000008
	c.swsp	a0,00000090
	sh	a5,sp,+0000002C
	jal	ra,000000002303FC54
	sb	a0,sp,+0000002E
	lui	a0,000230B7
	addi	a0,a0,-00000800
	jal	ra,0000000023082388
	c.addi4spn	a1,00000018
	c.li	a2,0000000C
	c.addi4spn	a0,0000000C
	jal	ra,00000000230492F0
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000024
	jal	ra,00000000230463E0
	c.j	000000002303A7B8

l2303A886:
	c.li	a4,00000000
	c.j	000000002303A822

;; blemesh_net_send: 2303A88A
blemesh_net_send proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.li	a5,00000005
	beq	a2,a5,000000002303A8B6

l2303A8A0:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303A8A8:
	jal	ra,0000000023082388

l2303A8AC:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	c.jr	ra

l2303A8B6:
	c.mv	s0,a3
	jal	ra,0000000023041D26
	c.bnez	a0,000000002303A8C8

l2303A8BE:
	lui	a0,000230B6
	addi	a0,a0,+000007DC
	c.j	000000002303A8A8

l2303A8C8:
	addi	a1,sp,+00000006
	addi	a0,s0,+00000004
	jal	ra,000000002307A8F6
	addi	a1,sp,+00000007
	addi	a0,s0,+00000008
	jal	ra,000000002307A8F6
	c.addi4spn	a1,00000008
	addi	a0,s0,+0000000C
	jal	ra,000000002307A91C
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000010
	jal	ra,000000002307A91C
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+0000002E
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	lhu	a0,a5,+00000400
	lbu	a5,sp,+00000007
	sh	a0,sp,+00000028
	c.bnez	a5,000000002303A964

l2303A914:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE

l2303A918:
	sh	a5,sp,+0000002A
	lhu	a5,sp,+0000000A
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	sh	a5,sp,+0000002C
	lbu	a5,sp,+00000006
	c.swsp	zero,00000088
	sb	a5,sp,+00000033
	jal	ra,0000000023042056
	c.addi4spn	a5,00000028
	c.swsp	a5,00000008
	lhu	a5,sp,+00000008
	c.swsp	a0,00000084
	sh	a5,sp,+00000014
	jal	ra,000000002303FC54
	c.mv	a1,a0
	sb	a0,sp,+00000016
	c.li	a2,00000000
	c.li	a0,00000001
	jal	ra,000000002303CD12
	c.mv	s0,a0
	c.bnez	a0,000000002303A96A

l2303A95A:
	lui	a0,000230B6
	addi	a0,a0,+00000700
	c.j	000000002303A8A8

l2303A964:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.j	000000002303A918

l2303A96A:
	lui	a0,000230B6
	addi	a0,a0,+0000071C
	jal	ra,0000000023082388
	addi	s1,s0,+00000008
	c.mv	a0,s1
	c.li	a1,00000009
	jal	ra,00000000230490EC
	c.addi4spn	a1,00000018
	c.li	a2,00000010
	c.mv	a0,s1
	jal	ra,00000000230492F0
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,0000000023042BEE
	c.j	000000002303A8AC

;; blemesh_reset: 2303A99A
blemesh_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023041C9C
	c.lwsp	a2,00000020
	lui	a0,000230B6
	addi	a0,a0,+00000798
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; blemesh_input_str: 2303A9B2
blemesh_input_str proc
	c.li	a5,00000002
	beq	a2,a5,000000002303A9C4

l2303A9B8:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303A9C0:
	jal	zero,0000000023082388

l2303A9C4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000003F8
	lbu	a4,s0,+00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	a5,00000008
	beq	a4,a5,000000002303A9F0

l2303A9DE:
	c.lwsp	s0,00000004
	lui	a0,000230B6
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a0,a0,+00000578
	c.addi	sp,00000010
	c.j	000000002303A9C0

l2303A9F0:
	c.lw	a3,4(a0)
	c.mv	s1,a3
	jal	ra,00000000230A4220
	lui	a5,0004200F
	lbu	a1,a5,+000003F9
	bgeu	a0,a1,000000002303AA18

l2303AA04:
	lui	a0,000230B6
	addi	a0,a0,+0000059C

l2303AA0C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2303AA18:
	c.lw	s1,4(a0)
	jal	ra,0000000023044714
	c.mv	a1,a0
	c.beqz	a0,000000002303AA2C

l2303AA22:
	lui	a0,000230B6
	addi	a0,a0,+000005C8
	c.j	000000002303AA0C

l2303AA2C:
	sb	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; blemesh_input_num: 2303AA3A
blemesh_input_num proc
	c.li	a5,00000002
	beq	a2,a5,000000002303AA4C

l2303AA40:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303AA48:
	jal	zero,0000000023082388

l2303AA4C:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,0000000A
	c.li	a1,00000000
	lui	s0,0004200F
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a3
	addi	s0,s0,+000003F8
	jal	ra,00000000230A4FE8
	lbu	a4,s0,+00000000
	c.li	a5,00000004
	c.mv	s2,a0
	beq	a4,a5,000000002303AA8A

l2303AA76:
	c.lwsp	s0,00000004
	lui	a0,000230B6
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a0,a0,+0000050C
	c.addi	sp,00000010
	c.j	000000002303AA48

l2303AA8A:
	c.lw	s1,4(a0)
	jal	ra,00000000230A4220
	lui	a5,0004200F
	lbu	a1,a5,+000003F9
	bgeu	a0,a1,000000002303AAB2

l2303AA9C:
	lui	a0,000230B6
	addi	a0,a0,+00000530

l2303AAA4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2303AAB2:
	c.mv	a0,s2
	jal	ra,00000000230446C0
	c.mv	a1,a0
	c.beqz	a0,000000002303AAC6

l2303AABC:
	lui	a0,000230B6
	addi	a0,a0,+00000558
	c.j	000000002303AAA4

l2303AAC6:
	sb	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; blemesh_ivu_test: 2303AAD6
blemesh_ivu_test proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.li	a5,00000002
	beq	a2,a5,000000002303AAF2

l2303AAE0:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303AAE8:
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303AAF2:
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000000F
	c.beqz	a5,000000002303AB0E

l2303AB04:
	lui	a0,000230B6
	addi	a0,a0,+00000628
	c.j	000000002303AAE8

l2303AB0E:
	lui	a0,000230B6
	addi	a0,a0,+00000648
	c.j	000000002303AAE8

;; blemesh_set_dev_uuid: 2303AB18
blemesh_set_dev_uuid proc
	c.li	a5,00000002
	beq	a2,a5,000000002303AB2A

l2303AB1E:
	lui	a0,000230B6
	addi	a0,a0,+000007B4
	jal	zero,0000000023082388

l2303AB2A:
	c.lw	a3,4(a1)
	lui	a0,000230B7
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000007E4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	jal	ra,0000000023082388
	addi	a0,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0004200D
	c.li	a2,00000010
	addi	a1,a1,+00000530
	c.addi	sp,00000010
	jal	zero,000000002307A8A6

;; blemesh_fault_set: 2303AB58
blemesh_fault_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	a5,00000003
	beq	a2,a5,000000002303AB84

l2303AB6A:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303AB72:
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303AB84:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000F
	c.mv	s1,a3
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000000F
	addi	s2,s1,+00000008
	c.lw	s1,8(a0)
	lui	s3,000230B6
	c.bnez	a5,000000002303AC06

l2303ABA2:
	jal	ra,00000000230A4220
	c.li	a5,00000007
	lui	s0,0004200F
	c.li	a2,00000004
	bgeu	a5,a0,000000002303ABF0

l2303ABB2:
	addi	a1,s0,+000003F4
	c.mv	a0,s2
	jal	ra,000000002307A8A6
	lui	a0,000230B6
	addi	a0,a0,+0000044C
	jal	ra,0000000023082388
	c.li	s1,00000000
	addi	s0,s0,+000003F4
	c.li	s2,00000004

l2303ABD0:
	add	a5,s0,s1
	lbu	a1,a5,+00000000
	addi	a0,s3,+0000045C
	c.addi	s1,00000001
	jal	ra,0000000023082388
	bne	s1,s2,000000002303ABD0

l2303ABE6:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	c.j	000000002303AB72

l2303ABF0:
	c.li	a1,00000000
	addi	a0,s0,+000003F4
	jal	ra,00000000230A3A68
	c.lw	s1,8(a0)
	jal	ra,00000000230A4220
	srli	a2,a0,00000001
	c.j	000000002303ABB2

l2303AC06:
	jal	ra,00000000230A4220
	c.li	a5,0000000F
	lui	s0,0004200F
	c.li	a2,00000008
	bgeu	a5,a0,000000002303AC4C

l2303AC16:
	addi	a1,s0,+0000040C
	c.mv	a0,s2
	jal	ra,000000002307A8A6
	lui	a0,000230B6
	addi	a0,a0,+00000464
	jal	ra,0000000023082388
	c.li	s1,00000000
	addi	s0,s0,+0000040C
	c.li	s2,00000008

l2303AC34:
	add	a5,s0,s1
	lbu	a1,a5,+00000000
	addi	a0,s3,+0000045C
	c.addi	s1,00000001
	jal	ra,0000000023082388
	bne	s1,s2,000000002303AC34

l2303AC4A:
	c.j	000000002303ABE6

l2303AC4C:
	c.li	a1,00000000
	addi	a0,s0,+0000040C
	jal	ra,00000000230A3A68
	c.lw	s1,8(a0)
	jal	ra,00000000230A4220
	srli	a2,a0,00000001
	c.j	000000002303AC16

;; blemesh_pb: 2303AC62
blemesh_pb proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.li	a5,00000003
	beq	a2,a5,000000002303AC7E

l2303AC6C:
	lui	a0,000230B6
	addi	a0,a0,+000007B4
	jal	ra,0000000023082388

l2303AC78:
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

l2303AC7E:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000001E
	c.swsp	a3,00000084
	jal	ra,000000002307A8F6
	c.lwsp	a2,000000A4
	addi	a1,sp,+0000001F
	addi	a0,a3,+00000008
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000001F
	lbu	a0,sp,+0000001E
	c.beqz	a5,000000002303ACDC

l2303ACA4:
	jal	ra,0000000023041D3E
	c.mv	a2,a0
	c.swsp	a2,00000084
	lbu	a0,sp,+0000001E
	c.beqz	a2,000000002303ACC8

l2303ACB2:
	jal	ra,000000002303A46C
	c.lwsp	a2,00000084
	c.mv	a1,a0
	lui	a0,000230B6
	addi	a0,a0,+00000738

l2303ACC2:
	jal	ra,0000000023082388
	c.j	000000002303AC78

l2303ACC8:
	jal	ra,000000002303A46C
	c.mv	a1,a0
	lui	a0,000230B6
	addi	a0,a0,+00000758

l2303ACD6:
	jal	ra,0000000023082388
	c.j	000000002303AC78

l2303ACDC:
	jal	ra,0000000023041D9C
	c.mv	a2,a0
	c.swsp	a2,00000084
	lbu	a0,sp,+0000001E
	c.beqz	a2,000000002303ACFC

l2303ACEA:
	jal	ra,000000002303A46C
	c.mv	a1,a0
	lui	a0,000230B6
	c.lwsp	a2,00000084
	addi	a0,a0,+00000768
	c.j	000000002303ACC2

l2303ACFC:
	jal	ra,000000002303A46C
	c.mv	a1,a0
	lui	a0,000230B6
	addi	a0,a0,+00000788
	c.j	000000002303ACD6

;; blemesh_init: 2303AD0C
blemesh_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200F
	addi	s0,s0,+000003F0
	lbu	a5,s0,+00000000
	c.swsp	ra,00000094
	c.beqz	a5,000000002303AD34

l2303AD20:
	lui	a0,000230B6
	addi	a0,a0,+00000478

l2303AD28:
	jal	ra,0000000023082388

l2303AD2C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2303AD34:
	c.addi4spn	a0,00000008
	jal	ra,0000000023050B40
	c.lui	a5,0000B000
	addi	a5,a5,-000000F9
	c.swsp	a5,00000008
	lui	a5,00022221
	addi	a5,a5,+00000111
	c.swsp	a5,00000088
	c.lui	a5,00003000
	addi	a5,a5,+00000333
	sh	a5,sp,+00000018
	lbu	a5,sp,+0000000E
	lui	a0,0004200D
	c.addi4spn	a1,00000010
	sb	a5,sp,+0000001A
	lbu	a5,sp,+0000000D
	c.li	a2,00000010
	addi	a0,a0,+00000530
	sb	a5,sp,+0000001B
	lbu	a5,sp,+0000000C
	sb	a5,sp,+0000001C
	lbu	a5,sp,+0000000B
	sb	a5,sp,+0000001D
	lbu	a5,sp,+0000000A
	sb	a5,sp,+0000001E
	lbu	a5,sp,+00000009
	sb	a5,sp,+0000001F
	jal	ra,00000000230A382C
	lui	a1,000230B7
	lui	a0,0004200D
	addi	a1,a1,-000007D0
	addi	a0,a0,+000005DC
	jal	ra,0000000023041DD6
	c.beqz	a0,000000002303ADB6

l2303ADAC:
	lui	a0,000230B6
	addi	a0,a0,+0000048C
	c.j	000000002303AD28

l2303ADB6:
	lui	a0,000230B6
	c.li	a5,00000001
	addi	a0,a0,+000004A0
	sb	a5,s0,+00000000
	jal	ra,0000000023082388
	jal	ra,0000000023041D26
	c.beqz	a0,000000002303ADE8

l2303ADCE:
	lui	a0,000230B6
	addi	a0,a0,+000004B8

l2303ADD6:
	jal	ra,0000000023082388
	lui	a0,0002303A
	addi	a0,a0,+000004A8
	jal	ra,000000002303BE82
	c.j	000000002303AD2C

l2303ADE8:
	lui	a0,000230B6
	addi	a0,a0,+000004DC
	c.j	000000002303ADD6

;; attn_off: 2303ADF2
attn_off proc
	c.jr	ra

;; blemesh_iv_update: 2303ADF4
blemesh_iv_update proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.li	a5,00000002
	beq	a2,a5,000000002303AE14

l2303AE00:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2303AE08:
	jal	ra,0000000023082388

l2303AE0C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2303AE14:
	c.swsp	a3,00000084
	jal	ra,0000000023041D26
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002303AE28

l2303AE1E:
	lui	a0,000230B6
	addi	a0,a0,+000007DC
	c.j	000000002303AE08

l2303AE28:
	addi	a1,sp,+0000001F
	addi	a0,a3,+00000004
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000001F
	lui	s0,0004200D
	c.beqz	a5,000000002303AE60

l2303AE3E:
	lui	a0,000230B6
	addi	a0,a0,+000005E8
	jal	ra,0000000023082388
	addi	a0,s0,+000006C4
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	c.andi	a0,00000001
	c.bnez	a0,000000002303AE0C

l2303AE58:
	c.li	a0,00000001

l2303AE5A:
	jal	ra,000000002303D12E
	c.j	000000002303AE0C

l2303AE60:
	lui	a0,000230B6
	addi	a0,a0,+00000608
	jal	ra,0000000023082388
	addi	a0,s0,+000006C4
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	c.andi	a0,00000001
	c.beqz	a0,000000002303AE0C

l2303AE7A:
	c.li	a0,00000000
	c.j	000000002303AE5A

;; fault_get_cur: 2303AE7E
fault_get_cur proc
	lui	a0,000230B7
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-000007C0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	a4,00000000
	c.swsp	ra,0000008C
	jal	ra,0000000023082388
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	c.lwsp	zero,000000C4
	sb	zero,a1,+00000000
	addi	a5,zero,+000005F1
	c.lwsp	tp,000000A4
	sh	a5,a2,+00000000
	lui	a2,0004200F
	lbu	a0,a4,+00000000
	c.li	a5,00000000
	sb	zero,a4,+00000000
	addi	a2,a2,+000003F4
	c.li	a6,00000004

l2303AEBE:
	lbu	a1,a4,+00000000
	bgeu	a1,a0,000000002303AEE6

l2303AEC6:
	add	a1,a2,a5
	lbu	a1,a1,+00000000
	c.beqz	a1,000000002303AEE0

l2303AED0:
	sb	a1,a3,+00000000
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.addi	a1,00000001
	sb	a1,a4,+00000000

l2303AEE0:
	c.addi	a5,00000001
	bne	a5,a6,000000002303AEBE

l2303AEE6:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; show_faults: 2303AEEE
;;   Called from:
;;     2303AF74 (in health_current_status)
show_faults proc
	c.bnez	a3,000000002303AF00

l2303AEF0:
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,000230B7
	addi	a0,a0,-0000051C
	jal	zero,0000000023082388

l2303AF00:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,000230B7
	c.swsp	s1,00000080
	addi	a0,a0,-000004E4
	c.mv	s1,a3
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.add	s1,s0
	jal	ra,0000000023082388
	lui	s2,000230B7

l2303AF24:
	bne	s0,s1,000000002303AF34

l2303AF28:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303AF34:
	lbu	a1,s0,+00000000
	addi	a0,s2,-000004A8
	c.addi	s0,00000001
	jal	ra,0000000023082388
	c.j	000000002303AF24

;; health_current_status: 2303AF44
health_current_status proc
	lui	a0,000230B7
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000754
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a2
	c.mv	s1,a3
	c.swsp	a4,00000084
	c.swsp	a5,00000004
	jal	ra,0000000023082388
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.mv	a3,a5
	c.mv	a2,a4
	c.addi16sp	00000020
	jal	zero,000000002303AEEE

;; blemesh_cli_register: 2303AF78
;;   Called from:
;;     23000F0E (in bt_enable_cb)
blemesh_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; send_friend_poll: 2303AF7C
;;   Called from:
;;     2303B83E (in bt_mesh_lpn_msg_received)
;;     2303B8F8 (in bt_mesh_lpn_friend_offer)
;;     2303BC20 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BE4C (in bt_mesh_lpn_friend_update)
;;     2303BE7A (in bt_mesh_lpn_poll)
send_friend_poll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+0000001E
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	c.swsp	ra,0000009C
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000220
	c.swsp	zero,00000088
	sh	a5,sp,+00000018
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000001A
	lhu	a5,s0,+0000012C
	sh	a5,sp,+0000001C
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.swsp	a5,00000084
	c.addi4spn	a5,00000018
	c.swsp	a5,00000008
	jal	ra,000000002303C3B0
	lhu	a5,sp,+00000016
	sh	a0,sp,+00000014
	andi	a5,a5,-00000200
	ori	a5,a5,+00000109
	sh	a5,sp,+00000016
	lw	a5,s0,+00000134
	c.srli	a5,00000003
	c.andi	a5,00000001
	sb	a5,sp,+0000000B
	lbu	a5,s0,+0000012B
	c.beqz	a5,000000002303B002

l2303AFE6:
	c.li	a4,00000001
	c.li	a0,00000000
	beq	a5,a4,000000002303AFFA

l2303AFEE:
	lbu	a5,s0,+00000134
	ori	a5,a5,+00000002
	sb	a5,s0,+00000134

l2303AFFA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l2303B002:
	lui	a5,000230CC
	c.li	a6,00000000
	addi	a5,a5,-00000638
	c.li	a4,00000000
	c.li	a3,00000001
	addi	a2,sp,+0000000B
	c.li	a1,00000001
	c.addi4spn	a0,0000000C
	jal	ra,000000002304696E
	c.bnez	a0,000000002303AFFA

l2303B01E:
	lbu	a5,s0,+00000134
	c.andi	a5,FFFFFFFD
	sb	a5,s0,+00000134
	c.li	a5,00000001
	sb	a5,s0,+0000012B
	c.j	000000002303AFFA

;; group_zero: 2303B030
;;   Called from:
;;     2303B16A (in clear_friendship)
;;     2303B176 (in clear_friendship)
;;     2303B182 (in clear_friendship)
;;     2303B2C6 (in req_sent)
;;     2303B3E4 (in sub_update)
;;     2303BBEC (in bt_mesh_lpn_friend_sub_cfm)
group_zero proc
	c.li	a1,00000000
	jal	zero,0000000023048E70

;; clear_friendship: 2303B036
;;   Called from:
;;     2303B278 (in friend_clear_sent)
;;     2303B79E (in bt_mesh_lpn_disable)
;;     2303B9D2 (in bt_mesh_lpn_friend_clear_cfm)
clear_friendship proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.mv	s2,a0
	c.mv	s1,a1
	lui	s0,0004200D
	jal	ra,000000002304058C
	c.mv	s3,a0
	addi	s0,s0,+000006BC
	bne	s2,zero,000000002303B10A

l2303B058:
	lw	a5,s0,+00000134
	c.li	a4,00000010
	andi	a5,a5,+00000030
	bne	a5,a4,000000002303B10A

l2303B066:
	lbu	a4,s0,+0000012F
	c.li	a5,00000001
	bltu	a5,a4,000000002303B10A

l2303B070:
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+0000001E
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000220
	c.swsp	zero,00000088
	c.andi	s1,00000001
	sh	a5,sp,+00000018
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000001A
	lhu	a5,s0,+0000012C
	sh	a5,sp,+0000001C
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.swsp	a5,00000084
	c.addi4spn	a5,00000018
	c.swsp	a5,00000008
	jal	ra,000000002303C3B0
	sh	a0,sp,+00000014
	jal	ra,000000002303FC54
	lhu	a5,sp,+00000014
	sb	a0,sp,+00000016
	c.li	a6,00000000
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000008
	lhu	a5,s0,+00000136
	c.li	a3,00000004
	c.addi4spn	a2,00000008
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000A
	lui	a5,000230CC
	addi	a5,a5,-00000648
	c.li	a4,00000000
	c.li	a1,00000005
	c.addi4spn	a0,0000000C
	jal	ra,000000002304696E
	slli	a5,s1,00000002
	lbu	s1,s0,+00000134
	c.andi	s1,FFFFFFFB
	c.or	s1,a5
	sb	s1,s0,+00000134

l2303B0FC:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l2303B10A:
	jal	ra,000000002304724A
	lui	s2,0004200D
	addi	a0,s2,+000007F8
	jal	ra,000000002304986E
	lhu	a1,s0,+0000012C
	lhu	a0,s0,+00000220
	jal	ra,0000000023042390
	lbu	a5,s0,+00000134
	c.li	a4,00000000
	andi	a5,a5,+00000020
	c.bnez	a5,000000002303B136

l2303B132:
	lhu	a4,s0,+0000012C

l2303B136:
	lui	a5,0004200F
	lw	a5,a5,+00000414
	sh	a4,s0,+00000138
	c.beqz	a5,000000002303B14E

l2303B144:
	lhu	a0,s0,+0000012C
	c.beqz	a0,000000002303B14E

l2303B14A:
	c.li	a1,00000000
	c.jalr	a5

l2303B14E:
	lhu	a5,s0,+00000134
	lui	a0,0004200E
	addi	a0,a0,-000007D4
	andi	a5,a5,+000000C3
	sh	a5,s0,+00000134
	sb	zero,s0,+0000012B
	sw	zero,s0,+0000012C
	jal	ra,000000002303B030
	lui	a0,0004200E
	addi	a0,a0,-000007D0
	jal	ra,000000002303B030
	lui	a0,0004200E
	addi	a0,a0,-000007CC
	jal	ra,000000002303B030
	lbu	a5,s0,+00000134
	ori	a5,a5,+00000001
	sb	a5,s0,+00000134
	lhu	a5,s3,+00000036
	c.andi	a5,00000008
	c.beqz	a5,000000002303B19E

l2303B19A:
	jal	ra,000000002304731E

l2303B19E:
	c.beqz	s1,000000002303B1A6

l2303B1A0:
	sb	zero,s0,+00000128
	c.j	000000002303B0FC

l2303B1A6:
	c.lui	a1,00002000
	c.li	a5,00000003
	addi	a1,a1,-000000C0
	addi	a0,s2,+000007F8
	sb	a5,s0,+00000128
	jal	ra,00000000230498CA
	c.j	000000002303B0FC

;; atomic_test_and_clear_bit: 2303B1BC
;;   Called from:
;;     2303BC70 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BC7C (in bt_mesh_lpn_friend_sub_cfm)
atomic_test_and_clear_bit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	s0,00000001
	sll	s0,s0,a1
	xori	a1,s0,-00000001
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.and	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; atomic_test_bit: 2303B1DE
;;   Called from:
;;     2303B3B6 (in sub_update)
;;     2303B3F0 (in sub_update)
;;     2303BAFC (in bt_mesh_lpn_group_del)
;;     2303BB2C (in bt_mesh_lpn_group_del)
;;     2303BD2A (in bt_mesh_lpn_friend_update)
;;     2303BD36 (in bt_mesh_lpn_friend_update)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; friend_req_sent: 2303B1F6
friend_req_sent proc
	c.beqz	a1,000000002303B204

l2303B1F8:
	lui	a0,000230B7
	addi	a0,a0,+00000448
	jal	zero,0000000023082388

l2303B204:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	sh	a0,s0,+0000013A
	addi	a1,a0,+0000044C
	lui	a0,0004200D
	addi	a0,a0,+000007F8
	c.swsp	ra,00000084
	jal	ra,00000000230498CA
	c.li	a5,00000005
	sb	a5,s0,+00000128
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; friend_clear_sent: 2303B234
friend_clear_sent proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002303CDD4
	lbu	a5,s0,+0000012F
	c.lwsp	a2,00000064
	c.addi	a5,00000001
	sb	a5,s0,+0000012F
	c.beqz	a1,000000002303B27C

l2303B256:
	lui	a0,000230B7
	addi	a0,a0,+00000448
	jal	ra,0000000023082388
	lw	a1,s0,+00000134
	c.li	a5,00000003
	sb	a5,s0,+00000128
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.srli	a1,00000002
	c.andi	a1,00000001
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002303B036

l2303B27C:
	c.li	a5,00000001
	sb	a5,s0,+00000128
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,0004200D
	addi	a1,zero,+0000044C
	addi	a0,a0,+000007F8
	c.addi16sp	00000020
	jal	zero,00000000230498CA

;; req_sent: 2303B298
req_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	c.beqz	a1,000000002303B2CA

l2303B2A8:
	lui	a0,000230B7
	addi	a0,a0,+00000544
	jal	ra,0000000023082388
	sb	zero,s0,+0000012B
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004200E
	addi	a0,a0,-000007D0
	c.addi	sp,00000010
	jal	zero,000000002303B030

l2303B2CA:
	lbu	a5,s0,+0000012F
	sh	a0,s0,+0000013A
	lui	a4,0004200D
	c.addi	a5,00000001
	sb	a5,s0,+0000012F
	lbu	a5,s0,+00000134
	c.andi	a5,00000010
	c.beqz	a5,000000002303B2FC

l2303B2E4:
	c.li	a5,00000007
	sb	a5,s0,+00000128
	addi	a1,zero,+0000005A

l2303B2EE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a0,a4,+000007F8
	c.addi	sp,00000010
	jal	zero,00000000230498CA

l2303B2FC:
	lbu	a5,s0,+0000012E
	addi	a1,a0,+00000064
	c.add	a1,a5
	c.j	000000002303B2EE

;; sub_update: 2303B308
;;   Called from:
;;     2303BA3A (in bt_mesh_lpn_group_add)
;;     2303BAD8 (in bt_mesh_lpn_group_del)
;;     2303BBFE (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BC04 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BE2C (in bt_mesh_lpn_friend_update)
;;     2303BE32 (in bt_mesh_lpn_friend_update)
sub_update proc
	c.addi16sp	FFFFFF80
	c.swsp	s3,000000B4
	lui	s3,0004200E
	c.swsp	s4,00000034
	c.mv	s4,a0
	addi	a0,s3,-000007D4
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s6,00000030
	c.swsp	s2,00000038
	c.swsp	s5,000000B0
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	jal	ra,0000000023048E6C
	c.li	a2,00000012
	c.li	a1,00000000
	c.mv	s6,a0
	lui	s0,0004200D
	addi	a0,sp,+0000002E
	jal	ra,00000000230A3A68
	addi	s1,s0,+000006BC
	lhu	a5,s1,+00000220
	c.swsp	zero,00000090
	sh	a5,sp,+00000028
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000002A
	lhu	a5,s1,+0000012C
	sh	a5,sp,+0000002C
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.swsp	a5,0000008C
	c.addi4spn	a5,00000028
	c.swsp	a5,00000010
	jal	ra,000000002303C3B0
	lhu	a5,sp,+00000026
	sh	a0,sp,+00000024
	andi	a5,a5,-00000200
	ori	a5,a5,+00000109
	sh	a5,sp,+00000026
	lbu	a5,s1,+0000012B
	c.bnez	a5,000000002303B3E8

l2303B38C:
	addi	s2,s0,+000006BC
	c.li	s5,00000000
	addi	s0,s0,+000006BC
	c.li	s1,00000000
	c.li	s7,00000007
	lui	s8,0004200E
	c.li	s9,00000001
	lui	s10,0004200E
	c.li	s11,00000005

l2303B3A6:
	lhu	a5,s0,+00000160
	c.beqz	a5,000000002303B3F6

l2303B3AC:
	c.mv	a1,s1
	bne	s4,s7,000000002303B3EC

l2303B3B2:
	addi	a0,s3,-000007D4
	jal	ra,000000002303B1DE
	c.bnez	a0,000000002303B3F6

l2303B3BC:
	c.mv	a0,s6
	jal	ra,000000002309F2C8
	lbu	a5,s2,+00000135
	c.add	a0,s5
	bltu	a0,a5,000000002303B402

l2303B3CC:
	lui	a0,000230B7
	addi	a0,a0,+00000568
	jal	ra,0000000023082388

l2303B3D8:
	bne	s5,zero,000000002303B442

l2303B3DC:
	lui	a0,0004200E
	addi	a0,a0,-000007D0
	jal	ra,000000002303B030

l2303B3E8:
	c.li	a0,00000000
	c.j	000000002303B480

l2303B3EC:
	addi	a0,s8,-000007CC
	jal	ra,000000002303B1DE
	c.bnez	a0,000000002303B3BC

l2303B3F6:
	c.addi	s1,00000001
	c.li	a5,00000008
	c.addi	s0,00000002
	bne	s1,a5,000000002303B3A6

l2303B400:
	c.j	000000002303B3D8

l2303B402:
	lhu	a4,s0,+00000160
	c.addi4spn	a5,00000040
	slli	a3,s5,00000001
	c.add	a3,a5
	srli	a5,a4,00000008
	c.slli	a4,08
	c.or	a5,a4
	addi	a2,s5,+00000001
	c.slli	a5,10
	c.swsp	a2,00000084
	c.srli	a5,00000010
	sb	a5,a3,+00000FD1
	c.srli	a5,00000008
	sb	a5,a3,+00000FD2
	sll	a1,s9,s1
	addi	a0,s10,-000007D0
	jal	ra,0000000023048EBA
	c.lwsp	a2,00000084
	beq	a2,s11,000000002303B440

l2303B43C:
	c.mv	s5,a2
	c.j	000000002303B3F6

l2303B440:
	c.li	s5,00000005

l2303B442:
	lbu	a5,s2,+00000129
	slli	a3,s5,00000001
	c.li	a6,00000000
	addi	a4,a5,+00000001
	sb	a5,sp,+00000010
	lui	a5,000230CC
	sb	a4,s2,+00000129
	addi	a5,a5,-00000638
	c.li	a4,00000000
	c.addi	a3,00000001
	c.addi4spn	a2,00000010
	c.mv	a1,s4
	c.addi4spn	a0,0000001C
	jal	ra,000000002304696E
	blt	a0,zero,000000002303B3DC

l2303B472:
	lbu	a5,sp,+00000010
	sb	s4,s2,+0000012B
	c.li	a0,00000001
	sb	a5,s2,+0000012A

l2303B480:
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

;; friend_response_received.constprop.7: 2303B49E
;;   Called from:
;;     2303B836 (in bt_mesh_lpn_msg_received)
;;     2303BBF0 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BDB0 (in bt_mesh_lpn_friend_update)
friend_response_received.constprop.7 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	c.swsp	ra,00000084
	lbu	a4,a5,+0000012B
	c.li	a5,00000001
	addi	s0,s0,+000006BC
	bne	a4,a5,000000002303B4C6

l2303B4BA:
	lbu	a5,s0,+00000134
	xori	a5,a5,+00000008
	sb	a5,s0,+00000134

l2303B4C6:
	lui	a0,0004200D
	addi	a0,a0,+000007F8
	jal	ra,000000002304986E
	jal	ra,000000002303CE24
	c.li	a5,00000006
	sb	a5,s0,+00000128
	sb	zero,s0,+0000012F
	sb	zero,s0,+0000012B
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; send_friend_req.constprop.8: 2303B4EC
;;   Called from:
;;     2303B7EE (in bt_mesh_lpn_set)
;;     2303BEB6 (in bt_mesh_lpn_init)
send_friend_req.constprop.8 proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	jal	ra,000000002303CA30
	c.mv	s1,a0
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+0000001E
	lui	s0,0004200D
	jal	ra,00000000230A3A68
	addi	s0,s0,+000006BC
	lhu	a5,s0,+00000220
	c.swsp	zero,00000088
	sh	a5,sp,+00000018
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000001A
	c.li	a5,FFFFFFFD
	sh	a5,sp,+0000001C
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.swsp	a5,00000084
	c.addi4spn	a5,00000018
	c.swsp	a5,00000008
	jal	ra,000000002303C3B0
	c.li	a5,00000009
	sb	a5,sp,+00000016
	lui	a5,00001006
	addi	a5,a5,+00000401
	c.swsp	a5,00000000
	addi	a5,zero,+0000002C
	sb	a5,sp,+00000004
	lw	a5,s0,+00000138
	sh	a0,sp,+00000014
	c.mv	a2,sp
	sb	a5,sp,+00000005
	c.srli	a5,00000008
	sb	a5,sp,+00000006
	c.lw	s1,8(a5)
	c.addi4spn	a0,0000000C
	c.li	a6,00000000
	sb	a5,sp,+00000007
	lhu	a5,s0,+00000136
	c.li	a3,0000000A
	c.li	a1,00000003
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000008
	lui	a5,000230CC
	addi	a5,a5,-00000640
	c.li	a4,00000000
	jal	ra,000000002304696E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; lpn_timeout: 2303B598
lpn_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	c.swsp	ra,00000084
	addi	a5,s0,+000006BC
	lbu	a5,a5,+00000128
	c.li	a4,00000007
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002303B60C

l2303B5B6:
	lui	a4,000230B7
	c.slli	a5,02
	addi	a4,a4,+000001B0
	c.add	a5,a4
	c.lw	a5,0(a5)
	addi	s0,s0,+000006BC
	c.jr	a5
2303B5CA                               83 25 44 13 89 81           .%D...
2303B5D0 85 89 22 44 B2 40 01 45 41 01 6F F0 DF A5 8D 47 .."D.@.EA.o....G
2303B5E0 23 04 F4 12 22 44 B2 40 41 01 6F F0 3F F0 EF 10 #..."D.@A.o.?...
2303B5F0 60 7E 83 55 A4 13 37 D5 00 42 13 05 85 7F 93 85 `~.U..7..B......
2303B600 85 3E EF E0 80 2C 95 47 23 04 F4 12             .>...,.G#...   

l2303B60C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra
2303B614             37 75 0B 23 13 05 45 47 EF 60 D4 56     7u.#..EG.`.V
2303B620 83 57 64 13 89 65 A3 05 04 12 85 07 23 1B F4 12 .Wd..e......#...
2303B630 8D 47 23 04 F4 12 93 85 05 F4 22 44 B2 40 37 D5 .G#......."D.@7.
2303B640 00 42 13 05 85 7F 41 01 6F E0 20 28 83 57 A4 13 .B....A.o. (.W..
2303B650 03 47 E4 12 83 45 F4 12 93 87 47 06 3E 97 89 67 .G...E....G.>..g
2303B660 93 87 87 CE 99 8F 05 67 8A 07 13 07 77 BB 89 46 .......g....w..F
2303B670 63 53 F7 00 91 46 63 D3 D5 02 03 45 B4 12 85 47 cS...Fc....E...G
2303B680 A3 05 04 12 63 E7 A7 00 22 44 B2 40 41 01 6F F0 ....c..."D.@A.o.
2303B690 FF 8E 22 44 B2 40 41 01 6F F0 1F C7 37 75 0B 23 .."D.@A.o...7u.#
2303B6A0 13 05 C5 49 EF 60 54 4E A3 07 04 12 81 45 15 B7 ...I.`TN.....E..
2303B6B0 83 57 A4 13 83 45 E4 12 37 D5 00 42 A9 07 BE 95 .W...E..7..B....
2303B6C0 13 05 85 7F EF E0 60 20 EF 10 C0 70 A1 47 2D BF ......` ...p.G-.
2303B6D0 83 47 44 13 C1 8B 99 CF 37 75 0B 23 13 05 85 4C .GD.....7u.#...L
2303B6E0 EF 60 94 4A EF 10 00 74 99 47 23 04 F4 12 93 05 .`.J...t.G#.....
2303B6F0 40 06 A1 B7 03 47 F4 12 95 47 63 F9 E7 00 37 75 @....G...Gc...7u
2303B700 0B 23 13 05 85 4F EF 60 34 48 4D B7 37 75 0B 23 .#...O.`4HM.7u.#
2303B710 13 05 45 52 EF 60 54 47 A3 05 04 12 EF F0 1F 86 ..ER.`TG........
2303B720 79 FD ED B5                                     y...           

;; poll_timeout.constprop.4: 2303B724
;;   Called from:
;;     2303BC2C (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BE5A (in bt_mesh_lpn_friend_update)
poll_timeout.constprop.4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304637C
	lui	a5,0004200D
	addi	a5,a5,+000006BC
	c.beqz	a0,000000002303B760

l2303B736:
	lhu	a0,a5,+0000013A
	lbu	a5,a5,+0000012E
	addi	a0,a0,+00000064
	c.add	a5,a0
	c.lui	a0,00002000
	addi	a0,a0,-00000318
	c.sub	a0,a5
	c.slli	a0,02
	addi	a5,zero,+000003E8
	bge	a5,a0,000000002303B75A

l2303B756:
	addi	a0,zero,+000003E8

l2303B75A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303B760:
	lhu	a4,a5,+0000013A
	lbu	a2,a5,+0000012E
	lw	a3,a5,+00000130
	addi	a4,a4,+00000064
	c.add	a2,a4
	c.lui	a4,00002000
	addi	a4,a4,-00000318
	c.sub	a4,a2
	c.slli	a4,02
	bge	a3,a4,000000002303B78C

l2303B780:
	c.slli	a3,01
	bge	a4,a3,000000002303B788

l2303B786:
	c.mv	a3,a4

l2303B788:
	sw	a3,a5,+00000130

l2303B78C:
	lw	a0,a5,+00000130
	c.j	000000002303B75A

;; bt_mesh_lpn_disable: 2303B792
;;   Called from:
;;     2303B7F6 (in bt_mesh_lpn_set)
;;     23041CE8 (in bt_mesh_reset)
bt_mesh_lpn_disable proc
	lui	a5,0004200D
	lbu	a5,a5,+000007E4
	c.beqz	a5,000000002303B7A2

l2303B79C:
	c.li	a1,00000001
	jal	zero,000000002303B036

l2303B7A2:
	c.jr	ra

;; bt_mesh_lpn_set: 2303B7A4
;;   Called from:
;;     2303A6FC (in blemesh_lpn_set)
;;     2303A72E (in blemesh_lpn_set)
bt_mesh_lpn_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a5,+00000128
	addi	s0,s0,+000006BC
	c.beqz	a0,000000002303B7CC

l2303B7BE:
	c.beqz	a5,000000002303B7CE

l2303B7C0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303B7CC:
	c.beqz	a5,000000002303B7C0

l2303B7CE:
	c.mv	s1,a0
	jal	ra,0000000023041D26
	c.bnez	a0,000000002303B7E6

l2303B7D6:
	c.beqz	s1,000000002303B7E0

l2303B7D8:
	c.li	a5,00000003
	sb	a5,s0,+00000128
	c.j	000000002303B7C0

l2303B7E0:
	sb	zero,s0,+00000128
	c.j	000000002303B7C0

l2303B7E6:
	c.beqz	s1,000000002303B7F4

l2303B7E8:
	c.li	a5,00000003
	sb	a5,s0,+00000128
	jal	ra,000000002303B4EC
	c.j	000000002303B7C0

l2303B7F4:
	c.li	a0,00000000
	jal	ra,000000002303B792
	c.j	000000002303B7C0

;; bt_mesh_lpn_msg_received: 2303B7FC
;;   Called from:
;;     23046EB0 (in bt_mesh_trans_recv)
bt_mesh_lpn_msg_received proc
	lui	a5,0004200D
	addi	a5,a5,+000006BC
	lbu	a3,a5,+00000128
	c.li	a4,00000002
	bne	a3,a4,000000002303B81C

l2303B80E:
	lui	a0,0004200D
	c.li	a1,00000000
	addi	a0,a0,+000007F8
	jal	zero,00000000230498CA

l2303B81C:
	lbu	a4,a5,+0000012B
	c.li	a5,00000001
	beq	a4,a5,000000002303B832

l2303B826:
	lui	a0,000230B7
	addi	a0,a0,+00000418
	jal	zero,0000000023082388

l2303B832:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303B49E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303AF7C

;; bt_mesh_lpn_friend_offer: 2303B842
;;   Called from:
;;     230462CE (in ctl_recv)
bt_mesh_lpn_friend_offer proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a3,a1,+00000004
	c.li	a5,00000005
	bltu	a5,a3,000000002303B866

l2303B856:
	lui	a0,000230B7
	addi	a0,a0,+00000250

l2303B85E:
	jal	ra,0000000023082388
	c.li	s1,FFFFFFEA
	c.j	000000002303B884

l2303B866:
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	lbu	a3,s0,+00000128
	beq	a3,a5,000000002303B892

l2303B876:
	lui	a0,000230B7
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	c.li	s1,00000000

l2303B884:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303B892:
	c.lw	a1,0(s1)
	lbu	a5,s1,+00000000
	c.bnez	a5,000000002303B8A4

l2303B89A:
	lui	a0,000230B7
	addi	a0,a0,+00000290
	c.j	000000002303B85E

l2303B8A4:
	lbu	a5,s1,+00000005
	lbu	a3,s1,+00000004
	c.mv	a4,a0
	c.slli	a5,08
	c.or	a5,a3
	srli	a3,a5,00000008
	c.slli	a5,08
	c.lw	a0,0(a0)
	lhu	a1,a4,+00000008
	c.or	a3,a5
	lhu	a2,s0,+00000136
	c.slli	a3,10
	c.srli	a3,00000010
	sh	a1,s0,+0000012C
	jal	ra,00000000230422E4
	c.mv	s2,a0
	c.bnez	a0,000000002303B8DC

l2303B8D4:
	sh	zero,s0,+0000012C
	c.li	s1,FFFFFFF4
	c.j	000000002303B884

l2303B8DC:
	lui	a0,0004200D
	addi	a0,a0,+000007F8
	jal	ra,000000002304986E
	lbu	a5,s1,+00000000
	sb	a5,s0,+0000012E
	lbu	a5,s1,+00000001
	sb	a5,s0,+00000135
	jal	ra,000000002303AF7C
	c.mv	s1,a0
	c.beqz	a0,000000002303B914

l2303B900:
	c.mv	a0,s2
	jal	ra,00000000230422C6
	sh	zero,s0,+0000012C
	sb	zero,s0,+0000012E
	sb	zero,s0,+00000135
	c.j	000000002303B884

l2303B914:
	lhu	a5,s0,+00000136
	c.addi	a5,00000001
	sh	a5,s0,+00000136
	c.j	000000002303B884

;; bt_mesh_lpn_friend_clear_cfm: 2303B920
;;   Called from:
;;     230462FE (in ctl_recv)
bt_mesh_lpn_friend_clear_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a1,+00000004
	c.li	a5,00000003
	bltu	a5,a4,000000002303B94E

l2303B934:
	lui	a0,000230B7
	addi	a0,a0,+000001D0
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l2303B942:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303B94E:
	lui	s2,0004200D
	addi	s2,s2,+000006BC
	lbu	a4,s2,+00000128
	c.li	a5,00000001
	beq	a4,a5,000000002303B970

l2303B960:
	lui	a0,000230B7
	addi	a0,a0,+000001F4

l2303B968:
	jal	ra,0000000023082388

l2303B96C:
	c.li	a0,00000000
	c.j	000000002303B942

l2303B970:
	c.lw	a1,0(a5)
	lbu	s1,a5,+00000001
	lbu	a4,a5,+00000000
	lbu	s0,a5,+00000003
	c.slli	s1,08
	c.or	s1,a4
	lbu	a4,a5,+00000002
	c.slli	s0,08
	c.or	s0,a4
	jal	ra,000000002303C3B0
	srli	a5,s1,00000008
	c.slli	s1,08
	c.or	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	bne	a0,s1,000000002303B9B2

l2303B99E:
	srli	a5,s0,00000008
	c.slli	s0,08
	c.or	s0,a5
	lhu	a5,s2,+00000136
	c.slli	s0,10
	c.srli	s0,00000010
	beq	a5,s0,000000002303B9BC

l2303B9B2:
	lui	a0,000230B7
	addi	a0,a0,+00000220
	c.j	000000002303B968

l2303B9BC:
	lbu	a5,s2,+00000134
	c.li	a0,00000000
	ori	a5,a5,+00000020
	sb	a5,s2,+00000134
	lw	a1,s2,+00000134
	c.srli	a1,00000002
	c.andi	a1,00000001
	jal	ra,000000002303B036
	c.j	000000002303B96C

;; bt_mesh_lpn_group_add: 2303B9D8
;;   Called from:
;;     2303EEE6 (in mod_sub_add)
;;     2303F268 (in mod_sub_va_add)
;;     230404C2 (in mod_sub_va_overwrite)
;;     23040580 (in mod_sub_overwrite)
bt_mesh_lpn_group_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	a4,s0,+000006BC
	c.swsp	ra,00000084
	c.li	a1,00000000
	c.li	a5,00000000
	addi	s0,s0,+000006BC
	c.li	a2,00000008

l2303B9F0:
	bne	a1,a2,000000002303BA04

l2303B9F4:
	c.bnez	a5,000000002303BA4C

l2303B9F6:
	lui	a0,000230B7
	addi	a0,a0,+000003F0
	jal	ra,0000000023082388
	c.j	000000002303BA22

l2303BA04:
	lhu	a3,a4,+00000160
	bne	a0,a3,000000002303BA3E

l2303BA0C:
	c.li	a5,00000001
	sll	a1,a5,a1
	lui	a0,0004200E
	xori	a1,a1,-00000001
	addi	a0,a0,-000007CC
	jal	ra,0000000023048EE2

l2303BA22:
	lw	a5,s0,+00000134
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,000000002303BA5E

l2303BA2C:
	lbu	a5,s0,+0000012B
	c.bnez	a5,000000002303BA5E

l2303BA32:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002303B308

l2303BA3E:
	c.bnez	a5,000000002303BA46

l2303BA40:
	c.bnez	a3,000000002303BA46

l2303BA42:
	addi	a5,a4,+00000160

l2303BA46:
	c.addi	a1,00000001
	c.addi	a4,00000002
	c.j	000000002303B9F0

l2303BA4C:
	sh	a0,a5,+00000000
	lbu	a5,s0,+00000134
	ori	a5,a5,+00000001
	sb	a5,s0,+00000134
	c.j	000000002303BA22

l2303BA5E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_lpn_group_del: 2303BA66
;;   Called from:
;;     2303EE0E (in mod_sub_del)
;;     2303EFB0 (in mod_sub_va_del)
;;     230403F8 (in mod_sub_del_all)
;;     230404A0 (in mod_sub_va_overwrite)
;;     23040570 (in mod_sub_overwrite)
bt_mesh_lpn_group_del proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.slli	a1,01
	lui	s4,0004200D
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s6,00000010
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.mv	s1,a0
	add	s3,a0,a1
	addi	s5,s4,+000006BC
	lui	s7,0004200E
	lui	s8,0004200E
	lui	s9,0004200E

l2303BA9E:
	bne	s1,s3,000000002303BADC

l2303BAA2:
	lui	a4,0004200D
	addi	a4,a4,+000006BC
	lw	a5,a4,+00000134
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,000000002303BB38

l2303BAB4:
	lbu	a5,a4,+0000012B
	c.bnez	a5,000000002303BB38

l2303BABA:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
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
	c.li	a0,00000008
	c.addi16sp	00000040
	jal	zero,000000002303B308

l2303BADC:
	lhu	s6,s1,+00000000
	beq	s6,zero,000000002303BB22

l2303BAE4:
	addi	s2,s4,+000006BC
	c.li	s0,00000000
	c.li	s11,00000001
	c.li	s10,00000008

l2303BAEE:
	lhu	a5,s2,+00000160
	bne	a5,s6,000000002303BB1A

l2303BAF6:
	c.mv	a1,s0
	addi	a0,s7,-000007D4
	jal	ra,000000002303B1DE
	c.beqz	a0,000000002303BB26

l2303BB02:
	sll	a1,s11,s0
	addi	a0,s9,-000007CC
	jal	ra,0000000023048EBA
	lbu	a5,s5,+00000134
	ori	a5,a5,+00000001
	sb	a5,s5,+00000134

l2303BB1A:
	c.addi	s0,00000001
	c.addi	s2,00000002
	bne	s0,s10,000000002303BAEE

l2303BB22:
	c.addi	s1,00000002
	c.j	000000002303BA9E

l2303BB26:
	c.mv	a1,s0
	addi	a0,s8,-000007D0
	jal	ra,000000002303B1DE
	c.bnez	a0,000000002303BB02

l2303BB32:
	sh	zero,s2,+00000160
	c.j	000000002303BB1A

l2303BB38:
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

;; bt_mesh_lpn_friend_sub_cfm: 2303BB56
;;   Called from:
;;     23046364 (in ctl_recv)
bt_mesh_lpn_friend_sub_cfm proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lhu	a5,a1,+00000004
	c.bnez	a5,000000002303BB8A

l2303BB6A:
	lui	a0,000230B7
	addi	a0,a0,+000002B4
	jal	ra,0000000023082388
	c.li	s0,FFFFFFEA

l2303BB78:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303BB8A:
	lui	s0,0004200D
	addi	a4,s0,+000006BC
	lbu	a5,a4,+0000012B
	addi	s0,s0,+000006BC
	c.bnez	a5,000000002303BBAA

l2303BB9C:
	lui	a0,000230B7
	addi	a0,a0,+000002DC

l2303BBA4:
	jal	ra,0000000023082388
	c.j	000000002303BBC4

l2303BBAA:
	c.lw	a1,0(a3)
	lbu	a2,a4,+0000012A
	lbu	a1,a3,+00000000
	beq	a1,a2,000000002303BBC8

l2303BBB8:
	lui	a0,000230B7
	addi	a0,a0,+00000304
	jal	ra,0000000023082388

l2303BBC4:
	c.li	s0,00000000
	c.j	000000002303BB78

l2303BBC8:
	c.li	a4,00000007
	bne	a5,a4,000000002303BC40

l2303BBCE:
	lui	s1,0004200E
	addi	a0,s1,-000007D0
	jal	ra,0000000023048E6C
	c.mv	a1,a0
	lui	a0,0004200E
	addi	a0,a0,-000007D4
	jal	ra,0000000023048EBA
	addi	a0,s1,-000007D0
	jal	ra,000000002303B030

l2303BBF0:
	jal	ra,000000002303B49E
	lbu	a5,s0,+00000134
	c.andi	a5,00000001
	c.beqz	a5,000000002303BC18

l2303BBFC:
	c.li	a0,00000007
	jal	ra,000000002303B308
	c.li	a0,00000008
	jal	ra,000000002303B308
	lbu	a5,s0,+0000012B
	c.bnez	a5,000000002303BC18

l2303BC0E:
	lbu	a5,s0,+00000134
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000134

l2303BC18:
	lbu	a5,s0,+00000134
	c.andi	a5,00000002
	c.beqz	a5,000000002303BC24

l2303BC20:
	jal	ra,000000002303AF7C

l2303BC24:
	lbu	a5,s0,+0000012B
	c.li	s0,00000000
	c.bnez	a5,000000002303BB78

l2303BC2C:
	jal	ra,000000002303B724
	c.mv	a1,a0
	lui	a0,0004200D
	addi	a0,a0,+000007F8
	jal	ra,00000000230498CA
	c.j	000000002303BB78

l2303BC40:
	c.li	a4,00000008
	bne	a5,a4,000000002303BC94

l2303BC46:
	lui	s2,0004200E
	addi	a0,s2,-000007D0
	jal	ra,0000000023048E6C
	xori	a1,a0,-00000001
	lui	a0,0004200E
	addi	a0,a0,-000007D4
	jal	ra,0000000023048EE2
	c.li	s1,00000000
	lui	s4,0004200E
	c.li	s3,00000008

l2303BC6A:
	c.mv	a1,s1
	addi	a0,s2,-000007D0
	jal	ra,000000002303B1BC
	c.beqz	a0,000000002303BC8C

l2303BC76:
	c.mv	a1,s1
	addi	a0,s4,-000007CC
	jal	ra,000000002303B1BC
	c.beqz	a0,000000002303BC8C

l2303BC82:
	slli	a5,s1,00000001
	c.add	a5,s0
	sh	zero,a5,+00000160

l2303BC8C:
	c.addi	s1,00000001
	bne	s1,s3,000000002303BC6A

l2303BC92:
	c.j	000000002303BBF0

l2303BC94:
	lui	a0,000230B7
	addi	a0,a0,+00000330
	c.j	000000002303BBA4

;; bt_mesh_lpn_friend_update: 2303BC9E
;;   Called from:
;;     23046346 (in ctl_recv)
bt_mesh_lpn_friend_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lhu	a4,a1,+00000004
	c.li	a5,00000005
	bltu	a5,a4,000000002303BCC6

l2303BCB6:
	lui	a0,000230B7
	addi	a0,a0,+0000035C

l2303BCBE:
	jal	ra,0000000023082388
	c.li	s0,FFFFFFEA
	c.j	000000002303BCEA

l2303BCC6:
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	lbu	a4,a5,+0000012B
	c.li	a5,00000001
	addi	s0,s0,+000006BC
	beq	a4,a5,000000002303BCFC

l2303BCDC:
	lui	a0,000230B7
	addi	a0,a0,+00000378

l2303BCE4:
	jal	ra,0000000023082388
	c.li	s0,00000000

l2303BCEA:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303BCFC:
	lw	s4,a0,+00000000
	c.li	a5,00000002
	c.mv	s3,a0
	lbu	a4,s4,+0000001F
	bne	a4,a5,000000002303BD1E

l2303BD0C:
	lbu	a5,a0,+00000020
	c.andi	a5,00000002
	c.bnez	a5,000000002303BD1E

l2303BD14:
	lui	a0,000230B7
	addi	a0,a0,+00000394
	c.j	000000002303BCE4

l2303BD1E:
	lui	s2,0004200D
	c.lw	a1,0(s1)
	addi	a0,s2,+000006C4
	c.li	a1,00000003
	jal	ra,000000002303B1DE
	c.beqz	a0,000000002303BD4C

l2303BD30:
	c.li	a1,00000002
	addi	a0,s2,+000006C4
	jal	ra,000000002303B1DE
	lbu	a5,s1,+00000000
	c.srli	a5,00000001
	c.andi	a5,00000001
	bne	a0,a5,000000002303BD4C

l2303BD46:
	c.li	a0,00000000
	jal	ra,000000002303D12E

l2303BD4C:
	lbu	a5,s0,+00000134
	c.andi	a5,00000010
	c.bnez	a5,000000002303BDB0

l2303BD54:
	jal	ra,000000002304058C
	lbu	a5,s3,+00000020
	c.andi	a5,00000004
	c.bnez	a5,000000002303BD6A

l2303BD60:
	lui	a0,000230B7
	addi	a0,a0,+000003C8
	c.j	000000002303BCBE

l2303BD6A:
	lbu	a5,s0,+00000134
	ori	a5,a5,+00000010
	sb	a5,s0,+00000134
	lhu	a5,a0,+00000036
	c.andi	a5,00000008
	c.beqz	a5,000000002303BD82

l2303BD7E:
	jal	ra,000000002304731E

l2303BD82:
	lui	a5,0004200F
	lw	a5,a5,+00000414
	c.beqz	a5,000000002303BD94

l2303BD8C:
	lhu	a0,s0,+0000012C
	c.li	a1,00000001
	c.jalr	a5

l2303BD94:
	lhu	a5,s0,+0000013A
	lbu	a4,s0,+0000012E
	addi	a5,a5,+00000064
	c.add	a4,a5
	c.lui	a5,00002000
	addi	a5,a5,-00000318
	c.sub	a5,a4
	c.slli	a5,02
	sw	a5,s0,+00000130

l2303BDB0:
	jal	ra,000000002303B49E
	lbu	a4,s1,+00000002
	lbu	a5,s1,+00000001
	c.lui	a3,00010000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000003
	lw	a2,s3,+00000020
	addi	a3,a3,-00000100
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000004
	lbu	a1,s1,+00000000
	c.srli	a2,00000001
	c.slli	a5,18
	c.or	a5,a4
	slli	a4,a5,00000018
	srli	s2,a5,00000018
	or	s2,s2,a4
	srli	a4,a5,00000008
	c.and	a4,a3
	or	s2,s2,a4
	c.slli	a5,08
	lui	a4,00000FF0
	c.and	a5,a4
	c.andi	a2,00000001
	c.andi	a1,00000001
	c.mv	a0,s4
	or	s2,s2,a5
	jal	ra,0000000023042606
	c.beqz	a0,000000002303BE14

l2303BE0E:
	c.mv	a0,s4
	jal	ra,000000002304249E

l2303BE14:
	lbu	a1,s1,+00000000
	c.mv	a0,s2
	c.srli	a1,00000001
	c.andi	a1,00000001
	jal	ra,00000000230426F0
	lbu	a5,s0,+00000134
	c.andi	a5,00000001
	c.beqz	a5,000000002303BE46

l2303BE2A:
	c.li	a0,00000007
	jal	ra,000000002303B308
	c.li	a0,00000008
	jal	ra,000000002303B308
	lbu	a5,s0,+0000012B
	c.bnez	a5,000000002303BE46

l2303BE3C:
	lbu	a5,s0,+00000134
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000134

l2303BE46:
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002303BE50

l2303BE4C:
	jal	ra,000000002303AF7C

l2303BE50:
	lbu	a5,s0,+0000012B
	c.li	s0,00000000
	bne	a5,zero,000000002303BCEA

l2303BE5A:
	jal	ra,000000002303B724
	c.mv	a1,a0
	lui	a0,0004200D
	addi	a0,a0,+000007F8
	jal	ra,00000000230498CA
	c.j	000000002303BCEA

;; bt_mesh_lpn_poll: 2303BE6E
;;   Called from:
;;     23046718 (in bt_mesh_trans_send)
bt_mesh_lpn_poll proc
	lui	a5,0004200D
	lbu	a5,a5,+000007F0
	c.andi	a5,00000010
	c.beqz	a5,000000002303BE7E

l2303BE7A:
	jal	zero,000000002303AF7C

l2303BE7E:
	c.li	a0,FFFFFFF5
	c.jr	ra

;; bt_mesh_lpn_set_cb: 2303BE82
;;   Called from:
;;     2303ADE2 (in blemesh_init)
bt_mesh_lpn_set_cb proc
	lui	a5,0004200F
	sw	a0,a5,+00000414
	c.jr	ra

;; bt_mesh_lpn_init: 2303BE8C
;;   Called from:
;;     23043376 (in bt_mesh_net_start)
bt_mesh_lpn_init proc
	lui	a1,0002303B
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+00000598
	addi	a0,a0,+000007F8
	c.swsp	ra,00000084
	jal	ra,0000000023049780
	lui	a5,0004200D
	lbu	a4,a5,+000007E4
	c.li	a5,00000003
	bne	a4,a5,000000002303BEC2

l2303BEB2:
	jal	ra,000000002303CDD4
	jal	ra,000000002303B4EC

l2303BEBA:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303BEC2:
	jal	ra,000000002303CDD4
	c.j	000000002303BEBA

;; gen_onoff_set.isra.0: 2303BEC8
;;   Called from:
;;     2303BF7A (in gen_onoff_set_unack)
;;     2303BFEE (in gen_onoff_set_with_ack)
gen_onoff_set.isra.0 proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.bnez	a0,000000002303BEFC

l2303BED8:
	lui	a1,000230B7
	lui	a0,000230B7
	addi	a1,a1,+000005AC
	addi	a0,a0,+000005EC
	jal	ra,0000000023082388

l2303BEEC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l2303BEFC:
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	a2,00000084
	c.mv	s1,a1
	jal	ra,0000000023049414
	c.li	a5,00000001
	c.mv	s0,a0
	c.lwsp	a2,00000084
	bgeu	a5,a0,000000002303BF2A

l2303BF12:
	c.mv	a2,a0
	lui	a1,000230B7
	lui	a0,000230B7
	addi	a1,a1,+000005AC
	addi	a0,a0,+0000060C
	jal	ra,0000000023082388
	c.j	000000002303BEEC

l2303BF2A:
	c.mv	a0,a2
	jal	ra,0000000023049414
	lhu	a2,s1,+00000006
	lhu	a1,s1,+00000004
	addi	s3,s2,+00000008
	c.mv	a4,s3
	c.addi4spn	a3,00000018
	c.mv	s4,a0
	jal	ra,00000000230489D6
	c.bnez	a0,000000002303BEEC

l2303BF48:
	lbu	a5,s2,+00000004
	beq	a5,s0,000000002303BF62

l2303BF50:
	lui	a5,00042026
	lw	a5,a5,+000005A0
	sb	s0,s2,+00000004
	c.beqz	a5,000000002303BF62

l2303BF5E:
	c.mv	a0,s0
	c.jalr	a5

l2303BF62:
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	lhu	a3,s1,+00000006
	lhu	a2,s1,+00000004
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,00000000230489C4
	c.j	000000002303BEEC

;; gen_onoff_set_unack: 2303BF78
gen_onoff_set_unack proc
	c.lw	a0,24(a0)
	jal	zero,000000002303BEC8

;; send_onoff_status: 2303BF7E
;;   Called from:
;;     2303BFFE (in gen_onoff_set_with_ack)
;;     2303C01A (in gen_onoff_get)
send_onoff_status proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.addi4spn	a5,00000008
	lw	s2,a0,+00000018
	c.mv	s1,a1
	c.swsp	a5,00000088
	c.lui	a1,00008000
	lui	a5,00000090
	c.mv	s0,a0
	c.swsp	a5,0000000C
	addi	a1,a1,+00000204
	c.addi4spn	a5,00000008
	c.addi4spn	a0,00000014
	c.swsp	a5,0000008C
	c.jal	000000002303C6A0
	lbu	a1,s2,+00000004
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	c.jal	000000002303C700
	c.beqz	a0,000000002303BFD4

l2303BFC0:
	lui	a1,000230B7
	lui	a0,000230B7
	addi	a1,a1,+00000588
	addi	a0,a0,+00000630
	jal	ra,0000000023082388

l2303BFD4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; gen_onoff_set_with_ack: 2303BFE0
gen_onoff_set_with_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.mv	s1,a1
	jal	ra,000000002303BEC8
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303BF7E

;; gen_onoff_get: 2303C002
gen_onoff_get proc
	c.lw	a0,24(a5)
	c.bnez	a5,000000002303C01A

l2303C006:
	lui	a1,000230B7
	lui	a0,000230B7
	addi	a1,a1,+0000059C
	addi	a0,a0,+000005EC
	jal	zero,0000000023082388

l2303C01A:
	jal	zero,000000002303BF7E

;; publish_start: 2303C01E
publish_start proc
	c.beqz	a1,000000002303C02C

l2303C020:
	lui	a0,000230B8
	addi	a0,a0,-000007BC
	jal	zero,0000000023082388

l2303C02C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lw	a2,8(s0)
	c.swsp	ra,00000084
	c.lw	s0,12(a4)
	lbu	a5,s0,+00000009
	c.andi	a4,00000007
	c.andi	a5,00000007
	bne	a4,a5,000000002303C048

l2303C042:
	jal	ra,0000000023048D2E
	c.sw	s0,16(a0)

l2303C048:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; model_send: 2303C050
;;   Called from:
;;     2303C74A (in bt_mesh_model_send)
;;     2303C86E (in bt_mesh_model_publish)
model_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s0,a3
	c.mv	s3,a4
	c.mv	s4,a5
	jal	ra,0000000023041D26
	c.bnez	a0,000000002303C092

l2303C072:
	lui	a0,000230B6
	addi	a0,a0,+000007DC
	jal	ra,0000000023082388
	c.li	a0,FFFFFFF5

l2303C080:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303C092:
	c.mv	a0,s0
	jal	ra,00000000230494E0
	c.li	a5,00000003
	bltu	a5,a0,000000002303C0AE

l2303C09E:
	lui	a0,000230B7
	addi	a0,a0,+000007B4
	jal	ra,0000000023082388

l2303C0AA:
	c.li	a0,FFFFFFEA
	c.j	000000002303C080

l2303C0AE:
	lhu	a4,s0,+00000004
	addi	a5,zero,+00000044
	bgeu	a5,a4,000000002303C0CC

l2303C0BA:
	lui	a0,000230B7
	addi	a0,a0,+000007D8
	jal	ra,0000000023082388
	addi	a0,zero,-00000024
	c.j	000000002303C080

l2303C0CC:
	bne	s5,zero,000000002303C0F4

l2303C0D0:
	c.lw	s1,4(a5)
	lhu	a1,a5,+00000002
	lhu	a5,s2,+0000000C
	beq	a5,a1,000000002303C0F4

l2303C0DE:
	lhu	a5,s2,+0000000E
	beq	a5,a1,000000002303C0F4

l2303C0E6:
	lui	a0,000230B7
	addi	a0,a0,+000007EC
	jal	ra,0000000023082388
	c.j	000000002303C0AA

l2303C0F4:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	tp,000000A8
	c.mv	a3,s4
	c.mv	a2,s3
	c.lwsp	s0,00000088
	c.lwsp	a2,00000068
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230463E0

;; mod_init: 2303C110
mod_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.lw	a0,8(a5)
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a3
	c.beqz	a5,000000002303C13A

l2303C124:
	c.sw	a5,0(a0)
	c.lw	a0,8(a0)
	lui	a1,0002303D
	addi	a1,a1,-00000778
	c.addi	a0,0000001C
	c.swsp	a2,00000084
	jal	ra,0000000023049780
	c.lwsp	a2,00000084

l2303C13A:
	c.li	a5,FFFFFFFF
	c.sw	s0,12(a5)
	lui	a5,0004200F
	lw	a5,a5,+00000418
	c.lw	a5,12(a5)
	sub	a5,s1,a5
	c.srai	a5,00000004
	sb	a5,s0,+00000004
	c.beqz	a2,000000002303C178

l2303C154:
	c.lw	s1,12(a5)
	lui	a4,000B6DB7
	addi	a4,a4,-00000249
	sub	a5,s0,a5
	c.srai	a5,00000002
	add	a5,a5,a4
	sb	a5,s0,+00000005

l2303C16C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303C178:
	c.lw	s1,8(a5)
	lui	a4,000B6DB7
	addi	a4,a4,-00000249
	sub	a5,s0,a5
	c.srai	a5,00000002
	add	a5,a5,a4
	sb	a5,s0,+00000005
	lhu	a5,s0,+00000000
	c.bnez	a5,000000002303C19E

l2303C196:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303FB14

l2303C19E:
	lhu	a4,s0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002303C16C

l2303C1A8:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023041A62

;; bt_mesh_model_foreach: 2303C1BA
;;   Called from:
;;     2303C358 (in bt_mesh_comp_register)
;;     2303C3AC (in bt_mesh_comp_unprovision)
;;     2303FA4E (in bt_mesh_app_key_del)
;;     230406FE (in bt_mesh_cfg_reset)
bt_mesh_model_foreach proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s7,00000084
	c.mv	s3,a0
	c.mv	s4,a1
	c.li	s1,00000000
	lui	s6,0004200F
	c.li	s5,0000001C

l2303C1DA:
	lw	a5,s6,+00000418
	c.lw	a5,8(a4)
	bltu	s1,a4,000000002303C1FA

l2303C1E4:
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

l2303C1FA:
	c.lw	a5,12(a5)
	slli	s0,s1,00000004
	c.li	s2,00000000
	c.add	s0,a5
	sltiu	s7,s1,+00000001

l2303C208:
	lbu	a5,s0,+00000004
	blt	s2,a5,000000002303C222

l2303C210:
	c.li	s2,00000000
	sltiu	s7,s1,+00000001

l2303C216:
	lbu	a5,s0,+00000005
	blt	s2,a5,000000002303C238

l2303C21E:
	c.addi	s1,00000001
	c.j	000000002303C1DA

l2303C222:
	add	a5,s2,s5
	c.lw	s0,8(a0)
	c.mv	a4,s4
	c.mv	a3,s7
	c.li	a2,00000000
	c.mv	a1,s0
	c.addi	s2,00000001
	c.add	a0,a5
	c.jalr	s3
	c.j	000000002303C208

l2303C238:
	add	a5,s2,s5
	c.lw	s0,12(a0)
	c.mv	a4,s4
	c.mv	a3,s7
	c.li	a2,00000001
	c.mv	a1,s0
	c.addi	s2,00000001
	c.add	a0,a5
	c.jalr	s3
	c.j	000000002303C216

;; bt_mesh_model_pub_period_get: 2303C24E
;;   Called from:
;;     2303C2EE (in publish_sent)
;;     2303C89E (in mod_publish)
;;     2303E6D4 (in _mod_pub_set.isra.1)
bt_mesh_model_pub_period_get proc
	c.lw	a0,8(a5)
	c.beqz	a5,000000002303C2AE

l2303C252:
	lbu	a0,a5,+0000000A
	c.li	a3,00000002
	srli	a4,a0,00000006
	beq	a4,a3,000000002303C294

l2303C260:
	c.li	a3,00000003
	beq	a4,a3,000000002303C2A0

l2303C266:
	c.li	a3,00000001
	beq	a4,a3,000000002303C28A

l2303C26C:
	addi	a4,zero,+00000064

l2303C270:
	add	a0,a0,a4
	lbu	a4,a5,+0000000B
	andi	a4,a4,+00000020
	c.beqz	a4,000000002303C2B0

l2303C27E:
	lbu	a5,a5,+0000000B
	c.andi	a5,0000000F
	sra	a0,a0,a5
	c.jr	ra

l2303C28A:
	andi	a0,a0,+0000003F
	addi	a4,zero,+000003E8
	c.j	000000002303C270

l2303C294:
	c.lui	a4,00002000
	andi	a0,a0,+0000003F
	addi	a4,a4,+00000710
	c.j	000000002303C270

l2303C2A0:
	lui	a4,00000092
	andi	a0,a0,+0000003F
	addi	a4,a4,+000007C0
	c.j	000000002303C270

l2303C2AE:
	c.li	a0,00000000

l2303C2B0:
	c.jr	ra

;; publish_sent: 2303C2B2
;;   Called from:
;;     2303C882 (in bt_mesh_model_publish)
publish_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lw	s2,a1,+00000008
	c.mv	s1,a1
	lbu	a5,s2,+0000000C
	c.andi	a5,00000007
	c.beqz	a5,000000002303C2EC

l2303C2CA:
	lbu	a5,s2,+00000009
	addi	a0,zero,+00000032
	c.srli	a5,00000003
	c.addi	a5,00000001
	add	a1,a5,a0

l2303C2DA:
	c.lw	s1,8(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	a0,0000001C
	c.addi	sp,00000010
	jal	zero,00000000230498CA

l2303C2EC:
	c.mv	a0,a1
	jal	ra,000000002303C24E
	c.mv	s0,a0
	c.beqz	a0,000000002303C31E

l2303C2F6:
	jal	ra,0000000023048D2E
	lw	a5,s2,+00000010
	sub	a4,a0,a5
	bgeu	s0,a4,000000002303C316

l2303C306:
	lui	a0,000230B8
	addi	a0,a0,-000007F0
	jal	ra,0000000023082388
	c.li	a1,00000001
	c.j	000000002303C2DA

l2303C316:
	c.add	a5,s0
	sub	a1,a5,a0
	c.bnez	a1,000000002303C2DA

l2303C31E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_model_elem: 2303C32A
;;   Called from:
;;     2303C726 (in bt_mesh_model_send)
;;     2303C786 (in bt_mesh_model_publish)
;;     2303C8E4 (in mod_publish)
;;     23047366 (in bt_mesh_heartbeat_send)
bt_mesh_model_elem proc
	lui	a5,0004200F
	lw	a4,a5,+00000418
	lbu	a5,a0,+00000004
	c.lw	a4,12(a0)
	c.slli	a5,04
	c.add	a0,a5
	c.jr	ra

;; bt_mesh_comp_register: 2303C33E
;;   Called from:
;;     23041DE2 (in bt_mesh_init)
bt_mesh_comp_register proc
	c.lw	a0,8(a5)
	c.beqz	a5,000000002303C364

l2303C342:
	lui	a5,0004200F
	sw	a0,a5,+00000418
	lui	a0,0002303C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000110
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002303C1BA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303C364:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_mesh_comp_provision: 2303C368
;;   Called from:
;;     23041C82 (in bt_mesh_provision)
bt_mesh_comp_provision proc
	lui	a5,0004200F
	sh	a0,a5,+0000041C
	lui	a5,0004200F
	lw	a2,a5,+00000418
	c.li	a5,00000000

l2303C37A:
	c.lw	a2,8(a3)
	add	a4,a0,a5
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a3,000000002303C38A

l2303C388:
	c.jr	ra

l2303C38A:
	c.lw	a2,12(a3)
	slli	a1,a5,00000004
	c.addi	a5,00000001
	c.add	a3,a1
	sh	a4,a3,+00000000
	c.j	000000002303C37A

;; bt_mesh_comp_unprovision: 2303C39A
;;   Called from:
;;     23041D10 (in bt_mesh_reset)
bt_mesh_comp_unprovision proc
	lui	a0,0002303C
	lui	a5,0004200F
	c.li	a1,00000000
	addi	a0,a0,+00000110
	sh	zero,a5,+0000041C
	jal	zero,000000002303C1BA

;; bt_mesh_primary_addr: 2303C3B0
;;   Called from:
;;     2303AFBC (in send_friend_poll)
;;     2303B0A4 (in clear_friendship)
;;     2303B36E (in sub_update)
;;     2303B532 (in send_friend_req.constprop.8)
;;     2303B98A (in bt_mesh_lpn_friend_clear_cfm)
;;     2303F980 (in heartbeat_sub_set)
;;     23042168 (in friend_cred_set)
;;     230421F4 (in friend_cred_set)
;;     23043386 (in bt_mesh_net_start)
;;     23044F1C (in send_filter_status)
;;     23045890 (in bt_mesh_proxy_adv_start)
;;     23046A7E (in send_ack)
;;     23047496 (in send_friend_clear)
;;     230478F4 (in encode_friend_ctl)
;;     23047D54 (in bt_mesh_friend_clear)
bt_mesh_primary_addr proc
	lui	a5,0004200F
	lhu	a0,a5,+0000041C
	c.jr	ra

;; bt_mesh_model_find_group: 2303C3BA
;;   Called from:
;;     2303EE18 (in mod_sub_del)
;;     2303EECA (in mod_sub_add)
;;     2303EFBA (in mod_sub_va_del)
;;     2303F246 (in mod_sub_va_add)
bt_mesh_model_find_group proc
	lhu	a5,a0,+00000010
	beq	a5,a1,000000002303C3D8

l2303C3C2:
	lhu	a4,a0,+00000012
	c.li	a5,00000000
	bne	a4,a1,000000002303C3D4

l2303C3CC:
	c.li	a5,00000001

l2303C3CE:
	c.addi	a5,00000008
	c.slli	a5,01
	c.add	a5,a0

l2303C3D4:
	c.mv	a0,a5
	c.jr	ra

l2303C3D8:
	c.li	a5,00000000
	c.j	000000002303C3CE

;; bt_mesh_elem_find: 2303C3DC
;;   Called from:
;;     2303E2BE (in mod_sub_get)
;;     2303E3A0 (in mod_sub_get_vnd)
;;     2303E958 (in mod_app_get)
;;     2303EA60 (in mod_app_unbind)
;;     2303EB28 (in mod_app_bind)
;;     2303EC70 (in mod_pub_set)
;;     2303ED12 (in mod_pub_get)
;;     2303EDB4 (in mod_sub_del)
;;     2303EE7A (in mod_sub_add)
;;     2303EF4E (in mod_sub_va_del)
;;     2303F106 (in mod_pub_va_set)
;;     2303F1EA (in mod_sub_va_add)
;;     230403BA (in mod_sub_del_all)
;;     23040460 (in mod_sub_va_overwrite)
;;     2304051E (in mod_sub_overwrite)
;;     23042CBA (in bt_mesh_net_send)
;;     23043084 (in bt_mesh_net_decode)
;;     23043106 (in bt_mesh_net_recv)
;;     23048378 (in bt_mesh_friend_req)
bt_mesh_elem_find proc
	lui	a5,0004200F
	lw	t1,a5,+00000418
	c.lui	a6,00008000
	c.lui	a7,00008000
	lw	t4,t1,+00000008
	c.li	a3,00000000
	xor	a6,a0,a6
	addi	a7,a7,-00000100
	c.li	t3,0000001C

l2303C3F8:
	bne	a3,t4,000000002303C400

l2303C3FC:
	c.li	a5,00000000
	c.j	000000002303C466

l2303C400:
	lw	a4,t1,+0000000C
	slli	a5,a3,00000004
	c.add	a5,a4
	bltu	a7,a6,000000002303C45E

l2303C40E:
	lbu	t5,a5,+00000004
	c.li	a4,00000000

l2303C414:
	blt	a4,t5,000000002303C426

l2303C418:
	lbu	t5,a5,+00000005
	c.li	a4,00000000

l2303C41E:
	blt	a4,t5,000000002303C442

l2303C422:
	c.addi	a3,00000001
	c.j	000000002303C3F8

l2303C426:
	add	a2,a4,t3
	c.lw	a5,8(a1)
	c.add	a2,a1
	lhu	a1,a2,+00000010
	beq	a1,a0,000000002303C466

l2303C436:
	lhu	a2,a2,+00000012
	beq	a2,a0,000000002303C466

l2303C43E:
	c.addi	a4,00000001
	c.j	000000002303C414

l2303C442:
	add	a2,a4,t3
	c.lw	a5,12(a1)
	c.add	a2,a1
	lhu	a1,a2,+00000010
	beq	a1,a0,000000002303C466

l2303C452:
	lhu	a2,a2,+00000012
	beq	a2,a0,000000002303C466

l2303C45A:
	c.addi	a4,00000001
	c.j	000000002303C41E

l2303C45E:
	lhu	a4,a5,+00000000
	bne	a4,a0,000000002303C422

l2303C466:
	c.mv	a0,a5
	c.jr	ra

;; bt_mesh_elem_count: 2303C46A
;;   Called from:
;;     2304397C (in prov_invite)
bt_mesh_elem_count proc
	lui	a5,0004200F
	lw	a5,a5,+00000418
	lbu	a0,a5,+00000008
	c.jr	ra

;; bt_mesh_fixed_group_match: 2303C478
;;   Called from:
;;     2303C5E4 (in bt_mesh_model_recv)
;;     23042C7A (in bt_mesh_net_send)
;;     230430FA (in bt_mesh_net_recv)
bt_mesh_fixed_group_match proc
	c.addi	sp,FFFFFFF0
	c.lui	a5,00010000
	c.swsp	ra,00000084
	addi	a3,a5,-00000002
	beq	a0,a3,000000002303C4A6

l2303C486:
	c.mv	a4,a0
	c.li	a0,00000001
	bltu	a3,a4,000000002303C4A0

l2303C48E:
	c.addi	a5,FFFFFFFD
	c.li	a0,00000000
	bne	a4,a5,000000002303C4A0

l2303C496:
	jal	ra,000000002303FD44

l2303C49A:
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001

l2303C4A0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303C4A6:
	jal	ra,000000002303FD32
	c.j	000000002303C49A

;; bt_mesh_model_recv: 2303C4AC
;;   Called from:
;;     23045D8A (in sdu_recv)
bt_mesh_model_recv proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a1,0(a5)
	c.mv	s3,a0
	c.mv	s0,a1
	lbu	a4,a5,+00000000
	c.li	a5,00000002
	srli	a3,a4,00000006
	beq	a3,a5,000000002303C568

l2303C4DC:
	c.li	a2,00000003
	beq	a3,a2,000000002303C584

l2303C4E2:
	addi	a5,zero,+0000007F
	bne	a4,a5,000000002303C51E

l2303C4EA:
	lui	a0,000230B7
	addi	a0,a0,+000006A0

l2303C4F2:
	jal	ra,0000000023082388
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
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
	lui	a0,000230B7
	addi	a0,a0,+00000708
	c.addi16sp	00000050
	jal	zero,0000000023082388

l2303C51E:
	c.mv	a0,a1
	jal	ra,0000000023049414

l2303C524:
	c.mv	s2,a0

l2303C526:
	c.lui	s5,00008000
	c.lui	s6,00010000
	c.li	s11,00000000
	lui	s7,0004200F
	addi	s5,s5,-00000100
	addi	s8,s3,+00000004
	addi	s9,s6,-00000001
	lui	s10,000230B7

l2303C540:
	lw	a5,s7,+00000418
	c.lw	a5,8(a4)
	bltu	s11,a4,000000002303C5AC

l2303C54A:
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

l2303C568:
	lhu	a4,a1,+00000004
	c.li	a5,00000001
	bltu	a5,a4,000000002303C57C

l2303C572:
	lui	a0,000230B7
	addi	a0,a0,+000006B8
	c.j	000000002303C4F2

l2303C57C:
	c.mv	a0,a1
	jal	ra,0000000023049454
	c.j	000000002303C524

l2303C584:
	lhu	a4,a1,+00000004
	bltu	a5,a4,000000002303C596

l2303C58C:
	lui	a0,000230B7
	addi	a0,a0,+000006E0
	c.j	000000002303C4F2

l2303C596:
	c.mv	a0,a1
	jal	ra,0000000023049414
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.slli	s2,10
	or	s2,s2,a0
	c.j	000000002303C526

l2303C5AC:
	c.lw	a5,12(a5)
	lhu	a0,s3,+0000000A
	slli	s4,s11,00000004
	c.add	s4,a5
	slli	a5,a0,00000010
	c.srai	a5,00000010
	bge	zero,a5,000000002303C5D8

l2303C5C2:
	lhu	a5,s4,+00000000
	bne	a5,a0,000000002303C5EA

l2303C5CA:
	bltu	s2,s6,000000002303C5EE

l2303C5CE:
	lw	s1,s4,+0000000C
	lbu	a2,s4,+00000005
	c.j	000000002303C5F6

l2303C5D8:
	c.lui	a5,00008000
	c.xor	a5,a0
	bgeu	s5,a5,000000002303C5CA

l2303C5E0:
	bne	s11,zero,000000002303C5EA

l2303C5E4:
	jal	ra,000000002303C478
	c.bnez	a0,000000002303C5CA

l2303C5EA:
	c.addi	s11,00000001
	c.j	000000002303C540

l2303C5EE:
	lw	s1,s4,+00000008
	lbu	a2,s4,+00000004

l2303C5F6:
	lhu	a4,s3,+0000000A
	lhu	a1,s3,+00000006
	c.lui	a3,00008000
	c.li	a5,00000000
	c.xor	a3,a4

l2303C604:
	beq	a2,a5,000000002303C5EA

l2303C608:
	bltu	s5,a3,000000002303C61C

l2303C60C:
	lhu	a0,s1,+00000010
	beq	a0,a4,000000002303C61C

l2303C614:
	lhu	a0,s1,+00000012
	bne	a0,a4,000000002303C636

l2303C61C:
	lhu	a0,s1,+0000000C
	beq	a0,a1,000000002303C62C

l2303C624:
	lhu	a0,s1,+0000000E
	bne	a0,a1,000000002303C636

l2303C62C:
	lw	s4,s1,+00000014

l2303C630:
	lw	a0,s4,+00000008
	c.bnez	a0,000000002303C640

l2303C636:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.addi	s1,0000001C
	c.j	000000002303C604

l2303C640:
	lw	a0,s4,+00000000
	beq	a0,s2,000000002303C688

l2303C648:
	c.addi	s4,0000000C
	c.j	000000002303C630

l2303C64C:
	c.li	a5,00000001
	sb	a5,s3,+00000018
	sw	s2,s3,+00000010
	sw	s1,s3,+00000014
	c.mv	a0,s0
	jal	ra,00000000230494D6
	lhu	a4,s0,+00000004
	lw	a3,s4,+00000008
	c.swsp	a0,00000084
	c.mv	a2,s0
	c.mv	a0,s1
	c.mv	a1,s8
	c.swsp	a4,00000004
	c.jalr	a3
	c.lwsp	a2,000000E4
	c.lw	s0,8(a0)
	c.lwsp	s0,000000C4
	and	a5,a5,s9
	c.add	a0,a5
	c.sw	s0,0(a0)
	sh	a4,s0,+00000004
	c.j	000000002303C5EA

l2303C688:
	lhu	a4,s0,+00000004
	lw	a5,s4,+00000004
	bgeu	a4,a5,000000002303C64C

l2303C694:
	c.mv	a1,s2
	addi	a0,s10,+00000724
	jal	ra,0000000023082388
	c.j	000000002303C5EA

;; bt_mesh_model_msg_init: 2303C6A0
;;   Called from:
;;     2303A696 (in vendor_data_set)
;;     2303BFA6 (in send_onoff_status)
;;     2303DB2A (in send_krp_status)
;;     2303DB98 (in send_friend_status)
;;     2303DBF4 (in net_key_get)
;;     2303DC76 (in send_net_key_status)
;;     2303DD56 (in node_identity_get)
;;     2303DDF6 (in app_key_get)
;;     2303DEA8 (in hb_pub_send_status)
;;     2303DF8E (in send_mod_sub_status)
;;     2303E124 (in lpn_timeout_get)
;;     2303E220 (in node_reset)
;;     2303E2B8 (in mod_sub_get)
;;     2303E39A (in mod_sub_get_vnd)
;;     2303E766 (in create_mod_app_status.isra.5)
;;     2303E7E6 (in send_mod_pub_status.isra.7)
;;     2303E97E (in mod_app_get)
;;     2303F2B6 (in dev_comp_data_get)
;;     2303F504 (in app_key_update)
;;     2303F586 (in app_key_add)
;;     2303F82C (in hb_sub_send_status.constprop.14)
;;     2303FAD2 (in app_key_del)
;;     2303FC98 (in net_transmit_set)
;;     2303FCFC (in net_transmit_get)
;;     2303FD9A (in relay_set)
;;     2303FE4A (in relay_get)
;;     2303FECE (in beacon_set)
;;     2303FF58 (in beacon_get)
;;     23040016 (in node_identity_set)
;;     230400AC (in send_gatt_proxy_status)
;;     230401F0 (in default_ttl_set)
;;     23040278 (in default_ttl_get)
;;     2304160A (in send_attention_status)
;;     230416B0 (in send_health_period_status)
;;     230417A2 (in health_get_registered)
;;     23041996 (in health_pub_update)
bt_mesh_model_msg_init proc
	c.lw	a0,8(a5)
	c.bnez	a5,000000002303C6AA

l2303C6A4:
	addi	a5,a0,+0000000C
	c.sw	a0,8(a5)

l2303C6AA:
	c.lw	a0,8(a5)
	sh	zero,a0,+00000004
	c.sw	a0,0(a5)
	addi	a5,zero,+000000FF
	bltu	a5,a1,000000002303C6C2

l2303C6BA:
	andi	a1,a1,+000000FF
	jal	zero,0000000023049306

l2303C6C2:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	slli	s1,a1,00000010
	c.swsp	s0,00000004
	c.lui	a5,00010000
	c.srli	s1,00000010
	bgeu	a1,a5,000000002303C6E4

l2303C6D6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023049336

l2303C6E4:
	c.srli	a1,00000010
	andi	a1,a1,+000000FF
	c.mv	s0,a0
	jal	ra,0000000023049306
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304931C

;; bt_mesh_model_send: 2303C700
;;   Called from:
;;     2303A6B0 (in vendor_data_set)
;;     2303BFBC (in send_onoff_status)
;;     2303DB56 (in send_krp_status)
;;     2303DBB0 (in send_friend_status)
;;     2303DC24 (in net_key_get)
;;     2303DC98 (in send_net_key_status)
;;     2303DD86 (in node_identity_get)
;;     2303DE54 (in app_key_get)
;;     2303DED4 (in hb_pub_send_status)
;;     2303DFD0 (in send_mod_sub_status)
;;     2303E180 (in lpn_timeout_get)
;;     2303E22E (in node_reset)
;;     2303E31E (in mod_sub_get)
;;     2303E412 (in mod_sub_get_vnd)
;;     2303E830 (in send_mod_pub_status.isra.7)
;;     2303E9D4 (in mod_app_get)
;;     2303EA90 (in mod_app_unbind)
;;     2303EB58 (in mod_app_bind)
;;     2303F30A (in dev_comp_data_get)
;;     2303F538 (in app_key_update)
;;     2303F5BA (in app_key_add)
;;     2303F8BA (in hb_sub_send_status.constprop.14)
;;     2303FAF6 (in app_key_del)
;;     2303FCB2 (in net_transmit_set)
;;     2303FD16 (in net_transmit_get)
;;     2303FDC0 (in relay_set)
;;     2303FE70 (in relay_get)
;;     2303FEE8 (in beacon_set)
;;     2303FF72 (in beacon_get)
;;     23040046 (in node_identity_set)
;;     230400C6 (in send_gatt_proxy_status)
;;     2304020A (in default_ttl_set)
;;     23040292 (in default_ttl_get)
;;     2304162A (in send_attention_status)
;;     230416CC (in send_health_period_status)
;;     230418A0 (in health_fault_test)
;;     23041902 (in health_fault_clear)
;;     23041956 (in health_fault_get)
bt_mesh_model_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s0,a0
	lhu	a0,a1,+00000000
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	a4,00000080
	c.swsp	a1,00000000
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,0000000023042056
	c.lwsp	zero,00000064
	c.swsp	a0,00000088
	c.mv	a0,s0
	c.swsp	a1,0000000C
	jal	ra,000000002303C32A
	lhu	a4,a0,+00000000
	sh	a4,sp,+0000001C
	jal	ra,000000002303FC54
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.lwsp	tp,000000E4
	sb	a0,sp,+0000001E
	c.mv	a4,a3
	c.addi4spn	a1,00000014
	c.mv	a3,a2
	c.mv	a0,s0
	c.li	a2,00000000
	jal	ra,000000002303C050
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_model_publish: 2303C756
;;   Called from:
;;     2303C9BE (in mod_publish)
bt_mesh_model_publish proc
	c.addi16sp	FFFFFF70
	c.addi4spn	a5,00000038
	c.swsp	a5,00000004
	lui	a5,00000480
	c.swsp	a5,00000084
	c.addi4spn	a5,00000038
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s0,00000044
	c.swsp	a5,00000008
	c.addi4spn	a5,00000020
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	s2,a0
	c.lw	a0,8(s0)
	c.mv	a0,a5
	jal	ra,00000000230A3A68
	c.swsp	a0,0000000C
	c.mv	a0,s2
	c.swsp	zero,00000088
	c.swsp	zero,0000008C
	jal	ra,000000002303C32A
	lhu	a5,a0,+00000000
	addi	s1,zero,-00000023
	sh	a5,sp,+0000001C
	jal	ra,000000002303FC54
	sb	a0,sp,+0000001E
	c.beqz	s0,000000002303C7AA

l2303C7A0:
	lhu	a5,s0,+00000004
	c.bnez	a5,000000002303C7B8

l2303C7A6:
	addi	s1,zero,-00000031

l2303C7AA:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s1
	c.lwsp	sp,00000048
	c.lwsp	t1,00000024
	c.addi16sp	00000090
	c.jr	ra

l2303C7B8:
	lhu	a0,s0,+00000006
	jal	ra,0000000023046394
	c.mv	s1,a0
	c.beqz	a0,000000002303C7A6

l2303C7C4:
	c.lw	s0,20(a5)
	lhu	a4,a5,+00000004
	addi	a5,zero,+00000044
	bgeu	a5,a4,000000002303C7E4

l2303C7D2:
	lui	a0,000230B7
	addi	a0,a0,+00000654
	jal	ra,0000000023082388
	addi	s1,zero,-00000024
	c.j	000000002303C7AA

l2303C7E4:
	lbu	a5,s0,+0000000C
	c.andi	a5,00000007
	c.beqz	a5,000000002303C800

l2303C7EC:
	lui	a0,000230B7
	addi	a0,a0,+0000067C
	jal	ra,0000000023082388
	addi	a0,s0,+0000001C
	jal	ra,000000002304986E

l2303C800:
	c.lw	s0,20(a5)
	c.addi4spn	a0,00000008
	lhu	a2,a5,+00000004
	c.lw	a5,0(a1)
	jal	ra,00000000230492F0
	lhu	a5,s0,+00000004
	sh	a5,sp,+00000024
	lbu	a5,s0,+00000008
	sb	a5,sp,+0000002B
	lhu	a5,s1,+00000002
	lhu	a0,s1,+00000000
	sh	a5,sp,+00000022
	c.lw	s0,8(a5)
	sh	a0,sp,+00000020
	c.srli	a5,0000001C
	andi	a4,a5,+00000001
	lbu	a5,sp,+0000001F
	c.andi	a5,FFFFFFFE
	c.or	a5,a4
	sb	a5,sp,+0000001F
	jal	ra,0000000023042056
	lbu	a5,s0,+00000009
	c.swsp	a0,00000088
	c.addi4spn	a3,00000008
	andi	a4,a5,+00000007
	lbu	a5,s0,+0000000C
	c.li	a2,00000001
	c.addi4spn	a1,00000014
	c.andi	a5,FFFFFFF8
	c.or	a5,a4
	lui	a4,000230CC
	sb	a5,s0,+0000000C
	addi	a4,a4,-00000630
	c.mv	a5,s2
	c.mv	a0,s2
	jal	ra,000000002303C050
	c.mv	s1,a0
	c.beqz	a0,000000002303C7AA

l2303C876:
	lbu	a5,s0,+0000000C
	c.mv	a1,s2
	c.andi	a5,FFFFFFF8
	sb	a5,s0,+0000000C
	jal	ra,000000002303C2B2
	c.j	000000002303C7AA

;; mod_publish: 2303C888
mod_publish proc
	c.addi16sp	FFFFFF60
	c.swsp	s1,000000C8
	c.swsp	s3,000000C4
	c.swsp	ra,000000CC
	c.swsp	s0,0000004C
	c.swsp	s2,00000048
	c.swsp	s4,00000044
	lw	s2,a0,-0000001C
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002303C24E
	lbu	a5,s1,-00000010
	c.mv	s3,a0
	c.andi	a5,00000007
	beq	a5,zero,000000002303C9A0

l2303C8AE:
	c.addi4spn	a5,00000038
	c.swsp	a5,00000004
	lui	a5,00000480
	c.swsp	a5,00000084
	c.addi4spn	a5,00000038
	c.swsp	a5,00000008
	lw	s0,s2,+00000008
	c.addi4spn	a5,00000020
	c.li	a1,00000000
	c.li	a2,00000018
	c.mv	a0,a5
	jal	ra,00000000230A3A68
	lhu	a4,s0,+00000004
	c.swsp	a0,0000000C
	c.mv	a0,s2
	sh	a4,sp,+00000024
	lbu	a4,s0,+00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000008C
	sb	a4,sp,+0000002B
	jal	ra,000000002303C32A
	lhu	a5,a0,+00000000
	sh	a5,sp,+0000001C
	jal	ra,000000002303FC54
	sb	a0,sp,+0000001E
	c.lw	s0,8(a5)
	c.srli	a5,0000001C
	andi	a4,a5,+00000001
	lbu	a5,sp,+0000001F
	c.andi	a5,FFFFFFFE
	c.or	a5,a4
	sb	a5,sp,+0000001F
	lhu	a0,s0,+00000006
	jal	ra,0000000023046394
	c.mv	s4,a0
	addi	a1,zero,-00000031
	c.beqz	a0,000000002303C96E

l2303C91C:
	lhu	a0,a0,+00000000
	jal	ra,0000000023042056
	c.swsp	a0,00000088
	lhu	a5,s4,+00000000
	c.addi4spn	a0,00000008
	sh	a5,sp,+00000020
	lhu	a5,s4,+00000002
	sh	a5,sp,+00000022
	c.lw	s0,20(a5)
	lhu	a2,a5,+00000004
	c.lw	a5,0(a1)
	jal	ra,00000000230492F0
	c.lw	s0,12(a5)
	lui	a2,000230CC
	c.addi4spn	a1,00000008
	c.addi	a5,00000007
	andi	a4,a5,+00000007
	lbu	a5,s0,+0000000C
	c.mv	a3,s2
	addi	a2,a2,-00000630
	c.andi	a5,FFFFFFF8
	c.or	a5,a4
	sb	a5,s0,+0000000C
	c.addi4spn	a0,00000014
	jal	ra,00000000230463E0
	c.mv	a1,a0
	c.beqz	a0,000000002303C990

l2303C96E:
	lui	a0,000230B7
	addi	a0,a0,+0000074C
	jal	ra,0000000023082388
	lbu	a5,s1,-00000010
	c.andi	a5,FFFFFFF8
	sb	a5,s1,+00000FF0
	beq	s3,zero,000000002303C990

l2303C988:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230498CA

l2303C990:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.addi16sp	000000A0
	c.jr	ra

l2303C9A0:
	c.beqz	a0,000000002303C990

l2303C9A2:
	lw	a5,s1,-00000004
	c.mv	a0,s2
	c.jalr	a5
	c.beqz	a0,000000002303C9BA

l2303C9AC:
	lui	a0,000230B7
	addi	a0,a0,+0000076C
	jal	ra,0000000023082388
	c.j	000000002303C990

l2303C9BA:
	lw	a0,s1,-0000001C
	jal	ra,000000002303C756
	c.mv	a1,a0
	c.beqz	a0,000000002303C990

l2303C9C6:
	lui	a0,000230B7
	addi	a0,a0,+00000794
	jal	ra,0000000023082388
	c.j	000000002303C990

;; bt_mesh_model_find_vnd: 2303C9D4
;;   Called from:
;;     2303E3AC (in mod_sub_get_vnd)
;;     2303E8FC (in get_model)
bt_mesh_model_find_vnd proc
	lbu	a6,a0,+00000005
	c.li	a3,00000000
	c.li	a7,0000001C

l2303C9DC:
	andi	a5,a3,+000000FF
	bltu	a5,a6,000000002303C9EA

l2303C9E4:
	c.li	a5,00000000

l2303C9E6:
	c.mv	a0,a5
	c.jr	ra

l2303C9EA:
	add	a5,a3,a7
	c.lw	a0,12(a4)
	c.add	a5,a4
	lhu	a4,a5,+00000000
	bne	a4,a1,000000002303CA02

l2303C9FA:
	lhu	a4,a5,+00000002
	beq	a4,a2,000000002303C9E6

l2303CA02:
	c.addi	a3,00000001
	c.j	000000002303C9DC

;; bt_mesh_model_find: 2303CA06
;;   Called from:
;;     2303E2C8 (in mod_sub_get)
;;     2303E8D6 (in get_model)
bt_mesh_model_find proc
	lbu	a3,a0,+00000004
	c.li	a4,00000000
	c.li	a2,0000001C

l2303CA0E:
	andi	a5,a4,+000000FF
	bltu	a5,a3,000000002303CA1A

l2303CA16:
	c.li	a5,00000000
	c.j	000000002303CA2C

l2303CA1A:
	add	a6,a4,a2
	c.lw	a0,8(a5)
	c.addi	a4,00000001
	c.add	a5,a6
	lhu	a6,a5,+00000000
	bne	a6,a1,000000002303CA0E

l2303CA2C:
	c.mv	a0,a5
	c.jr	ra

;; bt_mesh_comp_get: 2303CA30
;;   Called from:
;;     2303B4F4 (in send_friend_req.constprop.8)
;;     2303F2C2 (in dev_comp_data_get)
;;     230419AE (in health_pub_update)
bt_mesh_comp_get proc
	lui	a5,0004200F
	lw	a0,a5,+00000418
	c.jr	ra

;; adv_alloc: 2303CA3A
adv_alloc proc
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042013
	addi	a5,a5,+00000218
	c.add	a0,a5
	c.jr	ra

;; adv_thread: 2303CA4C
adv_thread proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	lui	s1,0004200E
	lui	s3,0004200F
	lui	s2,000230CC
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.mv	s5,s3
	addi	s1,s1,-000002A0
	addi	s2,s2,-00000628
	lui	s6,000230B8
	lui	s7,000230B8

l2303CA84:
	c.li	a1,00000000
	addi	a0,s3,-00000158
	jal	ra,00000000230490A4
	c.mv	s9,a0

l2303CA90:
	beq	s9,zero,000000002303CB60

l2303CA94:
	lw	a4,s9,+00000014
	lbu	a5,a4,+00000008
	andi	a3,a5,+00000004
	beq	a3,zero,000000002303CB9E

l2303CAA4:
	c.andi	a5,FFFFFFFB
	sb	a5,a4,+00000008
	lbu	a3,s1,+00000010
	c.li	a4,00000008
	c.li	a5,00000014
	bltu	a4,a3,000000002303CABA

l2303CAB6:
	addi	a5,zero,+00000064

l2303CABA:
	lw	a3,s9,+00000014
	c.li	a1,0000000A
	lbu	a4,a3,+00000009
	c.lw	a3,0(s0)
	lw	s4,a3,+00000004
	srli	a2,a4,00000003
	c.addi	a2,00000001
	add	a1,a2,a1
	blt	a1,a5,000000002303CB76

l2303CAD8:
	c.li	a5,0000000A
	add	a5,a2,a5

l2303CADE:
	andi	s8,a4,+00000007
	c.addi	s8,00000001
	addi	a4,a5,+0000000A
	c.slli	a5,03
	c.li	a2,00000001
	c.addi4spn	a1,00000008
	c.mv	a0,sp
	sh	zero,sp,+00000000
	add	s8,s8,a4
	c.lw	a3,8(a4)
	c.li	a3,00000000
	c.andi	a4,00000003
	c.add	a4,s2
	lbu	a4,a4,+00000000
	sb	a4,sp,+00000008
	lhu	a4,s9,+0000000C
	c.addi	s8,0000001E
	c.slli	s8,10
	sb	a4,sp,+00000009
	lw	a4,s9,+00000008
	srli	s8,s8,00000010
	c.swsp	a4,00000084
	c.li	a4,00000005
	xor	a5,a5,a4
	c.li	a4,00000000
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,sp,+00000002
	sh	a5,sp,+00000004
	jal	ra,0000000023050B70
	c.mv	s10,a0
	c.mv	a0,s9
	jal	ra,00000000230491C0
	c.beqz	s0,000000002303CB4C

l2303CB40:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002303CB4C

l2303CB44:
	c.mv	a2,s4
	c.mv	a1,s10
	c.mv	a0,s8
	c.jalr	a5

l2303CB4C:
	beq	s10,zero,000000002303CB7C

l2303CB50:
	c.mv	a1,s10
	addi	a0,s7,-000007A0

l2303CB56:
	jal	ra,0000000023082388

l2303CB5A:
	jal	ra,0000000023048C3C
	c.j	000000002303CA84

l2303CB60:
	jal	ra,00000000230456C8
	c.mv	a1,a0
	addi	a0,s5,-00000158
	jal	ra,00000000230490A4
	c.mv	s9,a0
	jal	ra,00000000230459D0
	c.j	000000002303CA90

l2303CB76:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002303CADE

l2303CB7C:
	c.mv	a0,s8
	jal	ra,0000000023048C44
	jal	ra,0000000023050B80
	c.mv	s8,a0
	c.beqz	s0,000000002303CB92

l2303CB8A:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002303CB92

l2303CB8E:
	c.mv	a1,s4
	c.jalr	a5

l2303CB92:
	beq	s8,zero,000000002303CB5A

l2303CB96:
	c.mv	a1,s8
	addi	a0,s6,-00000780
	c.j	000000002303CB56

l2303CB9E:
	c.mv	a0,s9
	jal	ra,00000000230491C0
	c.j	000000002303CB5A

;; bt_mesh_scan_cb: 2303CBA6
bt_mesh_scan_cb proc
	c.li	a5,00000003
	bne	a2,a5,000000002303CC92

l2303CBAC:
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.lui	s2,00010000
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s0,a3
	c.mv	s3,a1
	c.li	s5,00000001
	addi	s6,zero,+0000002A
	addi	s7,zero,+0000002B
	addi	s8,zero,+00000029
	c.addi	s2,FFFFFFFF

l2303CBDC:
	lhu	a5,s0,+00000004
	bltu	s5,a5,000000002303CC00

l2303CBE4:
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

l2303CC00:
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s4,a0
	c.beqz	a0,000000002303CBE4

l2303CC0A:
	lhu	a5,s0,+00000004
	slli	s1,a0,00000010
	c.srli	s1,00000010
	bgeu	a5,s1,000000002303CC3E

l2303CC18:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
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
	lui	a0,000230B8
	addi	a0,a0,-0000071C
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303CC3E:
	c.mv	a0,s0
	jal	ra,00000000230494D6
	c.mv	s10,a0
	c.addi	s1,FFFFFFFF
	c.mv	a0,s0
	lhu	s9,s0,+00000004
	jal	ra,0000000023049414
	sh	s1,s0,+00000004
	beq	a0,s6,000000002303CC6A

l2303CC5A:
	beq	a0,s7,000000002303CC8C

l2303CC5E:
	bne	a0,s8,000000002303CC74

l2303CC62:
	c.mv	a0,s0
	jal	ra,0000000023044900
	c.j	000000002303CC74

l2303CC6A:
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023043094

l2303CC74:
	c.lw	s0,8(a0)
	and	s10,s10,s2
	sh	s9,s0,+00000004
	c.add	a0,s10
	c.sw	s0,0(a0)
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230493EC
	c.j	000000002303CBDC

l2303CC8C:
	c.mv	a0,s0
	c.jal	000000002303D178
	c.j	000000002303CC74

l2303CC92:
	c.jr	ra

;; bt_mesh_adv_create_from_pool: 2303CC94
;;   Called from:
;;     2303CD28 (in bt_mesh_adv_create)
;;     23047548 (in create_friend_pdu)
bt_mesh_adv_create_from_pool proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	lui	a0,0004200D
	addi	a0,a0,+000006C4
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a4,00000084
	c.swsp	ra,00000094
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	s3,a3
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.lwsp	a2,000000C4
	c.beqz	a0,000000002303CCDC

l2303CCBE:
	lui	a0,000230B8
	addi	a0,a0,-00000758
	jal	ra,0000000023082388
	c.li	s0,00000000

l2303CCCC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303CCDC:
	c.mv	a0,s0
	c.mv	a1,a4
	jal	ra,0000000023049098
	c.mv	s0,a0
	c.beqz	a0,000000002303CCCC

l2303CCE8:
	jal	ra,0000000023048F1E
	c.jalr	s1
	c.li	a2,0000000C
	c.sw	s0,20(a0)
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,00000000230A3A68
	lbu	a2,s1,+00000008
	andi	s2,s2,+00000003
	sb	s3,s1,+00000009
	c.andi	a2,FFFFFFFC
	or	a2,a2,s2
	sb	a2,s1,+00000008
	c.j	000000002303CCCC

;; bt_mesh_adv_create: 2303CD12
;;   Called from:
;;     2303A952 (in blemesh_net_send)
;;     2303CD36 (in bt_mesh_adv_update)
;;     2303CF9A (in beacon_send)
;;     2303D030 (in beacon_send)
;;     2303D0C2 (in beacon_send)
;;     230431D4 (in bt_mesh_net_recv)
;;     23043420 (in adv_buf_create)
;;     2304676C (in bt_mesh_trans_send)
;;     23046880 (in bt_mesh_trans_send)
;;     2304699A (in bt_mesh_ctl_send)
bt_mesh_adv_create proc
	c.mv	a4,a2
	c.mv	a3,a1
	c.mv	a2,a0
	lui	a1,0002303D
	lui	a0,0004200F
	addi	a1,a1,-000005C6
	addi	a0,a0,-00000118
	jal	zero,000000002303CC94

;; bt_mesh_adv_update: 2303CD2C
;;   Called from:
;;     2303E5C4 (in net_key_add)
;;     2304007C (in node_identity_set)
;;     2304019C (in gatt_proxy_set)
;;     23041D8C (in bt_mesh_prov_enable)
;;     23043372 (in bt_mesh_net_start)
;;     23044C6C (in proxy_disconnected)
;;     23044CD2 (in proxy_connected)
;;     23045398 (in bt_mesh_proxy_identity_enable)
;;     2304548E (in bt_mesh_proxy_prov_disable)
bt_mesh_adv_update proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a2,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002303CD12
	c.lw	a0,20(a4)
	lbu	a5,a4,+00000008
	c.andi	a5,FFFFFFFB
	sb	a5,a4,+00000008
	jal	ra,000000002304926E
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,0004200F
	addi	a0,a0,-00000158
	c.addi	sp,00000010
	jal	zero,00000000230491A6

;; bt_mesh_adv_send: 2303CD5C
;;   Called from:
;;     2303CFE4 (in beacon_send)
;;     2303D0AC (in beacon_send)
;;     2303D114 (in beacon_send)
;;     23042A2C (in bt_mesh_net_resend)
;;     23042CD2 (in bt_mesh_net_send)
;;     23043312 (in bt_mesh_net_recv)
;;     230434FA (in send_reliable)
;;     23043A96 (in gen_prov_ack_send)
;;     230440E8 (in prov_retransmit)
;;     23047872 (in friend_timeout)
bt_mesh_adv_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a4)
	c.sw	a4,0(a1)
	c.lw	a0,20(a4)
	c.sw	a4,4(a2)
	c.lw	a0,20(a4)
	lbu	a5,a4,+00000008
	ori	a5,a5,+00000004
	sb	a5,a4,+00000008
	jal	ra,000000002304926E
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,0004200F
	addi	a0,a0,-00000158
	c.addi	sp,00000010
	jal	zero,00000000230491A6

;; bt_mesh_adv_init: 2303CD8C
;;   Called from:
;;     23041E00 (in bt_mesh_init)
bt_mesh_adv_init proc
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+0000003C
	addi	a0,a0,-00000118
	c.swsp	ra,00000084
	jal	ra,0000000023048A3E
	lui	a0,0004200F
	c.li	a1,00000014
	addi	a0,a0,-00000158
	jal	ra,0000000023048A3E
	c.lwsp	a2,00000020
	lui	a3,0002303D
	lui	a1,000230B8
	lui	a0,0004200F
	c.li	a4,0000001C
	addi	a3,a3,-000005B4
	addi	a2,zero,+00000400
	addi	a1,a1,-00000728
	addi	a0,a0,+00000420
	c.addi	sp,00000010
	jal	zero,0000000023048BE6

;; bt_mesh_scan_enable: 2303CDD4
;;   Called from:
;;     2303B244 (in friend_clear_sent)
;;     2303BEB2 (in bt_mesh_lpn_init)
;;     2303BEC2 (in bt_mesh_lpn_init)
;;     23041D7A (in bt_mesh_prov_enable)
bt_mesh_scan_enable proc
	lui	a5,0004200F
	addi	a5,a5,-00000190
	c.lw	a5,0(a4)
	lhu	a5,a5,+00000004
	c.addi	sp,FFFFFFE0
	lui	a1,0002303D
	addi	a1,a1,-0000045A
	c.addi4spn	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a4,00000004
	sh	a5,sp,+0000000C
	jal	ra,0000000023050BD6
	c.mv	s0,a0
	c.beqz	a0,000000002303CE16

l2303CE00:
	addi	a5,zero,-00000045
	beq	a0,a5,000000002303CE20

l2303CE08:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,-000006EC
	jal	ra,0000000023082388

l2303CE16:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303CE20:
	c.li	s0,00000000
	c.j	000000002303CE16

;; bt_mesh_scan_disable: 2303CE24
;;   Called from:
;;     2303B4D2 (in friend_response_received.constprop.7)
;;     23041D08 (in bt_mesh_reset)
;;     23041DBA (in bt_mesh_prov_disable)
bt_mesh_scan_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023050CD6
	c.mv	s0,a0
	c.beqz	a0,000000002303CE48

l2303CE32:
	addi	a5,zero,-00000045
	beq	a0,a5,000000002303CE52

l2303CE3A:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,-0000070C
	jal	ra,0000000023082388

l2303CE48:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303CE52:
	c.li	s0,00000000
	c.j	000000002303CE48

;; beacon_complete: 2303CE56
beacon_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023048D2E
	c.lwsp	a2,00000064
	c.sw	a1,0(a0)
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_beacon_create: 2303CE6A
;;   Called from:
;;     2303CFD8 (in beacon_send)
;;     23044E8E (in beacon_send)
bt_mesh_beacon_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,000000002304247C
	c.mv	s3,a0
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023049306
	lbu	a5,s1,+0000001E
	addi	s2,s1,+00000089
	c.bnez	a5,000000002303CE96

l2303CE92:
	addi	s2,s1,+00000030

l2303CE96:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023049306
	c.li	a2,00000008
	addi	a1,s2,+00000021
	c.mv	a0,s0
	jal	ra,00000000230492F0
	lui	a5,0004200D
	lw	a1,a5,+000006BC
	c.mv	a0,s0
	jal	ra,0000000023049352
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a1,s1,+00000028
	c.lwsp	s4,00000024
	c.li	a2,00000008
	c.addi16sp	00000020
	jal	zero,00000000230492F0

;; beacon_send: 2303CED0
beacon_send proc
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	jal	ra,00000000230448E6
	c.beqz	a0,000000002303CEF4

l2303CEEC:
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.j	000000002303CFBE

l2303CEF4:
	jal	ra,0000000023041D26
	beq	a0,zero,000000002303D022

l2303CEFC:
	lui	a4,0004200F
	addi	a4,a4,+00000424
	lbu	a5,a4,+00000000
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	xori	a5,a5,+00000001
	sb	a5,a4,+00000000
	c.bnez	a5,000000002303CF4A

l2303CF1A:
	lhu	a4,s0,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002303CF32

l2303CF26:
	lbu	a5,s0,+00000209
	sb	zero,s0,+00000209
	sb	a5,s0,+00000208

l2303CF32:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002303CF4A

l2303CF3E:
	lbu	a5,s0,+000002ED
	sb	zero,s0,+000002ED
	sb	a5,s0,+000002EC

l2303CF4A:
	jal	ra,0000000023048D2E
	c.lui	s1,00010000
	lui	s2,00000092
	c.lui	s3,00002000
	c.lui	s4,FFFFF000
	c.mv	s6,a0
	addi	s5,s0,+000001C8
	c.addi	s1,FFFFFFFF
	addi	s2,s2,+000007BF
	lui	s7,000230CC
	addi	s3,s3,+00000710
	addi	s4,s4,-00000388

l2303CF70:
	lhu	a5,s0,+00000220
	beq	a5,s1,000000002303CFEE

l2303CF78:
	lw	a4,s0,+00000204
	sub	a4,s6,a4
	bltu	s2,a4,000000002303CF94

l2303CF84:
	lbu	a5,s0,+00000208
	c.addi	a5,00000001
	add	a5,a5,s3
	c.add	a5,s4
	bltu	a4,a5,000000002303CFEE

l2303CF94:
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000002
	jal	ra,000000002303CD12
	c.mv	s8,a0
	c.bnez	a0,000000002303CFCC

l2303CFA2:
	lui	a0,000230B8
	addi	a0,a0,-000006CC
	jal	ra,0000000023082388

l2303CFAE:
	jal	ra,000000002303FE8C
	c.li	a5,00000001
	bne	a0,a5,000000002303CFF8

l2303CFB8:
	c.lui	a1,00002000
	addi	a1,a1,+00000710

l2303CFBE:
	lui	a0,00042014
	addi	a0,a0,+00000334
	jal	ra,00000000230498CA
	c.j	000000002303D00A

l2303CFCC:
	addi	a2,s0,+00000204
	addi	a1,a0,+00000008
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,000000002303CE6A
	c.lwsp	a2,00000084
	c.mv	a0,s8
	addi	a1,s7,-00000614
	jal	ra,000000002303CD5C
	c.mv	a0,s8
	jal	ra,00000000230491C0

l2303CFEE:
	addi	s0,s0,+000000E4
	beq	s0,s5,000000002303CFAE

l2303CFF6:
	c.j	000000002303CF70

l2303CFF8:
	lui	a0,0004200D
	addi	a0,a0,+000006C4
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	c.andi	a0,00000001
	c.bnez	a0,000000002303CFB8

l2303D00A:
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
	c.addi16sp	00000070
	c.jr	ra

l2303D022:
	c.li	a2,00000000
	c.li	a1,0000000A
	c.li	a0,00000002
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,000000002303CD12
	c.mv	s1,a0
	c.bnez	a0,000000002303D046

l2303D038:
	lui	a0,000230B8
	addi	a0,a0,-000006CC

l2303D040:
	jal	ra,0000000023082388
	c.j	000000002303CEEC

l2303D046:
	jal	ra,00000000230448DC
	addi	s2,s1,+00000008
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023049306
	c.lw	s0,0(a1)
	c.li	a2,00000010
	c.mv	a0,s2
	jal	ra,00000000230492F0
	lw	s3,s0,+00000004
	beq	s3,zero,000000002303D0D4

l2303D06A:
	c.mv	a0,s3
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	jal	ra,00000000230A4220
	c.swsp	a0,0000008C
	c.addi4spn	a3,00000020
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000030
	c.swsp	s3,0000000C
	jal	ra,0000000023040D34
	c.bnez	a0,000000002303D0D4

l2303D08A:
	lhu	a1,s0,+00000008
	ori	a1,a1,+00000002

l2303D092:
	c.mv	a0,s2
	jal	ra,0000000023049336
	c.lw	s0,4(a5)
	c.beqz	a5,000000002303D0A6

l2303D09C:
	c.li	a2,00000004
	c.addi4spn	a1,00000020
	c.mv	a0,s2
	jal	ra,00000000230492F0

l2303D0A6:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303CD5C
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.lw	s0,4(a5)
	beq	a5,zero,000000002303CEEC

l2303D0BC:
	c.li	a2,00000000
	c.li	a1,0000000A
	c.li	a0,00000003
	jal	ra,000000002303CD12
	c.mv	s1,a0
	c.bnez	a0,000000002303D0DA

l2303D0CA:
	lui	a0,000230B8
	addi	a0,a0,-000006A8
	c.j	000000002303D040

l2303D0D4:
	lhu	a1,s0,+00000008
	c.j	000000002303D092

l2303D0DA:
	c.lw	s0,4(a0)
	addi	s2,s1,+00000008
	jal	ra,00000000230A4220
	c.swsp	a0,00000084
	c.mv	a0,s2
	jal	ra,00000000230494E0
	c.lwsp	a2,00000084
	bgeu	a0,a2,000000002303D106

l2303D0F2:
	lui	a0,000230B8
	addi	a0,a0,-00000688
	jal	ra,0000000023082388

l2303D0FE:
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.j	000000002303CEEC

l2303D106:
	c.lw	s0,4(a1)
	c.mv	a0,s2
	jal	ra,00000000230492F0
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303CD5C
	c.j	000000002303D0FE

;; bt_mesh_beacon_init: 2303D11A
;;   Called from:
;;     23041DFC (in bt_mesh_init)
bt_mesh_beacon_init proc
	lui	a1,0002303D
	lui	a0,00042014
	addi	a1,a1,-00000130
	addi	a0,a0,+00000334
	jal	zero,0000000023049780

;; bt_mesh_beacon_ivu_initiator: 2303D12E
;;   Called from:
;;     2303AE5A (in blemesh_iv_update)
;;     2303BD48 (in bt_mesh_lpn_friend_update)
;;     2303D2CC (in bt_mesh_beacon_recv)
;;     23042876 (in ivu_refresh)
;;     230428CE (in bt_mesh_next_seq)
bt_mesh_beacon_ivu_initiator proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,0004200D
	c.beqz	a0,000000002303D152

l2303D138:
	c.li	a1,00000008
	addi	a0,a5,+000006C4
	jal	ra,0000000023048EBA
	c.lwsp	a2,00000020
	lui	a0,00042014
	addi	a0,a0,+00000334
	c.addi	sp,00000010
	jal	zero,0000000023049772

l2303D152:
	c.li	a1,FFFFFFF7
	addi	a0,a5,+000006C4
	jal	ra,0000000023048EE2
	jal	ra,000000002303FE8C
	c.bnez	a0,000000002303D172

l2303D162:
	c.lwsp	a2,00000020
	lui	a0,00042014
	addi	a0,a0,+00000334
	c.addi	sp,00000010
	jal	zero,000000002304986E

l2303D172:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_beacon_recv: 2303D178
;;   Called from:
;;     2303CC8E (in bt_mesh_scan_cb)
;;     23044FF4 (in proxy_complete_pdu)
bt_mesh_beacon_recv proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lhu	a5,a0,+00000004
	c.bnez	a5,000000002303D19C

l2303D18E:
	lui	a0,000230B8
	addi	a0,a0,-00000660

l2303D196:
	jal	ra,0000000023082388
	c.j	000000002303D21E

l2303D19C:
	c.mv	s0,a0
	jal	ra,0000000023049414
	c.mv	a1,a0
	c.beqz	a0,000000002303D21E

l2303D1A6:
	c.li	a5,00000001
	bne	a0,a5,000000002303D318

l2303D1AC:
	lhu	a1,s0,+00000004
	c.li	a5,00000014
	bltu	a5,a1,000000002303D1C4

l2303D1B6:
	lui	a0,000230B8
	addi	a0,a0,-0000064C

l2303D1BE:
	jal	ra,0000000023082388
	c.j	000000002303D21E

l2303D1C4:
	lui	s1,0004200D
	addi	a5,s1,+000006BC
	lhu	a4,a5,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	lw	s2,s0,+00000000
	addi	s1,s1,+000006BC
	bne	a4,a5,000000002303D230

l2303D1E0:
	lhu	a4,s1,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,000000002303D24C

l2303D1EC:
	c.mv	a0,s0
	lw	s4,s0,+00000000
	jal	ra,0000000023049414
	c.li	a1,00000008
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049400
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,0000000023049482
	c.lw	s0,0(a3)
	c.mv	a2,a0
	c.mv	s3,a0
	addi	a4,sp,+0000000F
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,0000000023042CE6
	c.mv	s0,a0
	c.bnez	a0,000000002303D268

l2303D21E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303D230:
	lui	a0,0004200E
	c.li	a2,00000015
	c.mv	a1,s2
	addi	a0,a0,-0000073A
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002303D1E0

l2303D242:
	lui	s0,0004200E
	addi	s0,s0,-00000740
	c.j	000000002303D2FA

l2303D24C:
	lui	a0,0004200E
	c.li	a2,00000015
	c.mv	a1,s2
	addi	a0,a0,-00000656
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002303D1EC

l2303D25E:
	lui	s0,0004200E
	addi	s0,s0,-0000065C
	c.j	000000002303D2FA

l2303D268:
	lbu	a4,a0,+0000001F
	c.li	a5,00000002
	bne	a4,a5,000000002303D282

l2303D272:
	lbu	a5,sp,+0000000F
	c.bnez	a5,000000002303D282

l2303D278:
	lui	a0,000230B7
	addi	a0,a0,+00000394
	c.j	000000002303D196

l2303D282:
	c.li	a2,00000015
	c.mv	a1,s4
	addi	a0,s0,+00000006
	jal	ra,00000000230A382C
	c.li	a0,00000000
	jal	ra,0000000023042056
	c.beqz	a0,000000002303D2A2

l2303D296:
	lhu	a5,s0,+0000001C
	c.beqz	a5,000000002303D2A2

l2303D29C:
	c.lw	s1,0(a5)
	bltu	a5,s3,000000002303D2FA

l2303D2A2:
	lui	s4,0004200D
	addi	a0,s4,+000006C4
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	srli	s1,s2,00000001
	c.andi	a0,00000001
	c.andi	s1,00000001
	c.beqz	a0,000000002303D2D0

l2303D2BA:
	addi	a0,s4,+000006C4
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	c.andi	a0,00000001
	bne	s1,a0,000000002303D2D0

l2303D2CA:
	c.li	a0,00000000
	jal	ra,000000002303D12E

l2303D2D0:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,00000000230426F0
	lbu	a2,sp,+0000000F
	c.mv	s1,a0
	andi	a1,s2,+00000001
	c.mv	a0,s0
	jal	ra,0000000023042606
	c.beqz	a0,000000002303D322

l2303D2EA:
	c.mv	a0,s0
	jal	ra,000000002304249E
	c.mv	a0,s0
	c.beqz	s1,000000002303D2F6

l2303D2F4:
	c.li	a0,00000000

l2303D2F6:
	jal	ra,00000000230426BA

l2303D2FA:
	jal	ra,000000002303FE8C
	c.li	a5,00000001
	bne	a0,a5,000000002303D21E

l2303D304:
	lbu	a5,s0,+00000005
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303D21E

l2303D310:
	c.addi	a5,00000001
	sb	a5,s0,+00000005
	c.j	000000002303D21E

l2303D318:
	lui	a0,000230B8
	addi	a0,a0,-00000628
	c.j	000000002303D1BE

l2303D322:
	c.beqz	s1,000000002303D2FA

l2303D324:
	c.j	000000002303D2F4

;; bt_mesh_beacon_enable: 2303D326
;;   Called from:
;;     2303FF16 (in beacon_set)
;;     23041D7E (in bt_mesh_prov_enable)
;;     23043360 (in bt_mesh_net_start)
bt_mesh_beacon_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023041D26
	c.beqz	a0,000000002303D376

l2303D332:
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	lhu	a4,a5,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	s0,s0,+000006BC
	beq	a4,a5,000000002303D35A

l2303D34A:
	lui	a0,0004200E
	addi	a0,a0,-00000740
	sh	zero,s0,+00000208
	jal	ra,000000002304249E

l2303D35A:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002303D376

l2303D366:
	lui	a0,0004200E
	addi	a0,a0,-0000065C
	sh	zero,s0,+000002EC
	jal	ra,000000002304249E

l2303D376:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042014
	addi	a0,a0,+00000334
	c.addi	sp,00000010
	jal	zero,0000000023049772

;; bt_mesh_beacon_disable: 2303D388
;;   Called from:
;;     2303FF1C (in beacon_set)
;;     23041D0C (in bt_mesh_reset)
;;     23041DB6 (in bt_mesh_prov_disable)
;;     23043398 (in bt_mesh_net_start)
bt_mesh_beacon_disable proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006C4
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	c.andi	a0,00000001
	c.bnez	a0,000000002303D3AE

l2303D39E:
	c.lwsp	a2,00000020
	lui	a0,00042014
	addi	a0,a0,+00000334
	c.addi	sp,00000010
	jal	zero,000000002304986E

l2303D3AE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hb_pub_status: 2303D3B4
hb_pub_status proc
	lui	a4,0004200F
	lw	a5,a4,+00000428
	c.li	a3,00000006
	c.lw	a5,16(a1)
	beq	a1,a3,000000002303D3D0

l2303D3C4:
	lui	a0,000230B8
	addi	a0,a0,-000004E8
	jal	zero,0000000023082388

l2303D3D0:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a5,20(s1)
	c.mv	a0,a2
	addi	s3,a4,+00000428
	lw	s2,s1,+00000000
	c.mv	s0,a2
	jal	ra,0000000023049414
	sb	a0,s2,+00000000
	lw	s2,s1,+00000004
	beq	s2,zero,000000002303D446

l2303D3FA:
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,s2,+00000000
	lw	s2,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s2,+00000002
	lw	s2,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s2,+00000003
	lw	s2,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s2,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.lw	s1,4(a5)
	sh	a0,a5,+00000006
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.lw	s1,4(a5)
	sh	a0,a5,+00000008

l2303D446:
	lw	a0,s3,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; hb_sub_status: 2303D45C
hb_sub_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	addi	s2,s2,+00000428
	lw	a4,s2,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a4,16(a3)
	c.lui	a5,00008000
	addi	a5,a5,+0000003C
	beq	a3,a5,000000002303D498

l2303D480:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B8
	addi	a0,a0,-000004B4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303D498:
	c.lw	a4,20(s1)
	c.mv	a0,a2
	c.mv	s0,a2
	lw	s3,s1,+00000000
	jal	ra,0000000023049414
	sb	a0,s3,+00000000
	lw	s3,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,s3,+00000000
	lw	s3,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,s3,+00000002
	lw	s3,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s3,+00000004
	lw	s3,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s3,+00000005
	lw	s3,s1,+00000004
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s3,+00000006
	c.lw	s1,4(s1)
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s1,+00000007
	c.lwsp	s8,00000004
	lw	a0,s2,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; mod_pub_status: 2303D512
mod_pub_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	lw	a4,s2,+00000428
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a4,16(a3)
	c.lui	a5,00008000
	c.addi	a5,00000019
	beq	a3,a5,000000002303D548

l2303D530:
	lui	a0,000230B8
	addi	a0,a0,-0000042C

l2303D538:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303D548:
	c.lw	a4,20(s1)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	lhu	a1,s1,+00000002
	addi	s2,s2,+00000428
	lhu	a4,a2,+00000004
	beq	a1,a5,000000002303D59E

l2303D55E:
	c.li	a5,0000000D
	bltu	a5,a4,000000002303D56E

l2303D564:
	lui	a0,000230B8
	addi	a0,a0,-00000404
	c.j	000000002303D538

l2303D56E:
	c.lw	a2,0(a3)
	lbu	a4,a3,+0000000B
	lbu	a5,a3,+0000000A
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+0000000D
	lbu	a3,a3,+0000000C
	c.slli	a5,08
	c.or	a5,a3

l2303D588:
	lhu	a3,s1,+00000000
	bne	a3,a5,000000002303D594

l2303D590:
	beq	a1,a4,000000002303D5C0

l2303D594:
	lui	a0,000230B8
	addi	a0,a0,-000003A8
	c.j	000000002303D538

l2303D59E:
	c.li	a5,0000000C
	bgeu	a5,a4,000000002303D5AE

l2303D5A4:
	lui	a0,000230B8
	addi	a0,a0,-000003D8
	c.j	000000002303D538

l2303D5AE:
	c.lw	a2,0(a4)
	lbu	a5,a4,+0000000B
	lbu	a4,a4,+0000000A
	c.slli	a5,08
	c.or	a5,a4
	c.mv	a4,a1
	c.j	000000002303D588

l2303D5C0:
	c.mv	a0,a2
	c.mv	s0,a2
	jal	ra,0000000023049414
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	lhu	a5,s1,+00000004
	c.mv	a1,a0
	beq	a5,a0,000000002303D5F2

l2303D5DA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B8
	addi	a0,a0,-0000037C
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303D5F2:
	c.lw	s1,8(a5)
	c.beqz	a5,000000002303D5FA

l2303D5F6:
	sb	s3,a5,+00000000

l2303D5FA:
	lw	s3,s1,+0000000C
	beq	s3,zero,000000002303D65E

l2303D602:
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,s3,+00000000
	lw	s3,s1,+0000000C
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,s3,+00000002
	c.lw	s1,12(a4)
	c.mv	a0,s0
	lhu	a5,a4,+00000002
	c.srli	a5,0000000C
	c.andi	a5,00000001
	sb	a5,a4,+00000004
	c.lw	s1,12(a4)
	lhu	a5,a4,+00000002
	c.slli	a5,14
	c.srli	a5,00000014
	sh	a5,a4,+00000002
	lw	s3,s1,+0000000C
	jal	ra,0000000023049414
	sb	a0,s3,+00000005
	lw	s3,s1,+0000000C
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s3,+00000006
	c.lw	s1,12(s1)
	c.mv	a0,s0
	jal	ra,0000000023049414
	sb	a0,s1,+00000007

l2303D65E:
	lw	a0,s2,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; relay_status: 2303D674
relay_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+00000428
	c.lw	s0,0(a4)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a4,16(a3)
	c.lui	a5,00008000
	addi	a5,a5,+00000028
	beq	a3,a5,000000002303D6AE

l2303D696:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B8
	addi	a0,a0,-00000290
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303D6AE:
	lw	s2,a4,+00000014
	c.mv	a0,a2
	c.mv	s1,a2
	lw	s3,s2,+00000000
	jal	ra,0000000023049414
	sb	a0,s3,+00000000
	lw	s2,s2,+00000004
	c.mv	a0,s1
	jal	ra,0000000023049414
	sb	a0,s2,+00000000
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; key_idx_unpack: 2303D6E4
;;   Called from:
;;     2303D75C (in app_key_status)
;;     2303D7E0 (in net_key_status)
key_idx_unpack proc
	c.lw	a0,0(a3)
	lbu	a5,a3,+00000001
	lbu	a3,a3,+00000000
	c.slli	a5,08
	c.or	a5,a3
	c.slli	a5,14
	c.srli	a5,00000014
	sh	a5,a1,+00000000
	c.lw	a0,0(a4)
	c.li	a1,00000003
	lbu	a5,a4,+00000002
	lbu	a4,a4,+00000001
	c.slli	a5,08
	c.or	a5,a4
	c.srli	a5,00000004
	sh	a5,a2,+00000000
	jal	zero,00000000230493EC

;; app_key_status: 2303D714
app_key_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+00000428
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a5,16(a4)
	c.lui	a5,00008000
	c.addi	a5,00000003
	beq	a4,a5,000000002303D74A

l2303D732:
	lui	a0,000230B8
	addi	a0,a0,-00000608

l2303D73A:
	jal	ra,0000000023082388

l2303D73E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303D74A:
	c.mv	a0,a2
	c.mv	s1,a2
	jal	ra,0000000023049414
	c.mv	s2,a0
	addi	a2,sp,+0000000E
	c.mv	a0,s1
	c.addi4spn	a1,0000000C
	jal	ra,000000002303D6E4
	c.lw	s0,0(a0)
	lhu	a4,sp,+0000000C
	c.lw	a0,20(a5)
	lhu	a3,a5,+00000004
	bne	a3,a4,000000002303D77C

l2303D770:
	lhu	a3,a5,+00000006
	lhu	a4,sp,+0000000E
	beq	a3,a4,000000002303D786

l2303D77C:
	lui	a0,000230B8
	addi	a0,a0,-000005E4
	c.j	000000002303D73A

l2303D786:
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303D78E

l2303D78A:
	sb	s2,a5,+00000000

l2303D78E:
	c.addi	a0,00000004
	jal	ra,0000000023048B7E
	c.j	000000002303D73E

;; net_key_status: 2303D796
net_key_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+00000428
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a5,16(a4)
	c.lui	a5,00008000
	addi	a5,a5,+00000044
	beq	a4,a5,000000002303D7CE

l2303D7B6:
	lui	a0,000230B8
	addi	a0,a0,-000002E0

l2303D7BE:
	jal	ra,0000000023082388

l2303D7C2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303D7CE:
	c.mv	a0,a2
	c.mv	s1,a2
	jal	ra,0000000023049414
	c.mv	s2,a0
	addi	a2,sp,+0000000E
	c.mv	a0,s1
	c.addi4spn	a1,0000000C
	jal	ra,000000002303D6E4
	c.lw	s0,0(a0)
	lhu	a4,sp,+0000000C
	c.lw	a0,20(a5)
	lhu	a3,a5,+00000004
	beq	a3,a4,000000002303D7FE

l2303D7F4:
	lui	a0,000230B8
	addi	a0,a0,-000002BC
	c.j	000000002303D7BE

l2303D7FE:
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303D806

l2303D802:
	sb	s2,a5,+00000000

l2303D806:
	c.addi	a0,00000004
	jal	ra,0000000023048B7E
	c.j	000000002303D7C2

;; comp_data_status: 2303D80E
comp_data_status proc
	lui	a5,0004200F
	lw	a4,a5,+00000428
	c.li	a3,00000002
	c.lw	a4,16(a1)
	beq	a1,a3,000000002303D82A

l2303D81E:
	lui	a0,000230B8
	addi	a0,a0,-00000510
	jal	zero,0000000023082388

l2303D82A:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s2,a4,+00000014
	c.mv	a0,a2
	c.mv	s0,a2
	lw	s3,s2,+00000000
	addi	s1,a5,+00000428
	jal	ra,0000000023049414
	sb	a0,s3,+00000000
	lw	a0,s2,+00000004
	jal	ra,00000000230494E0
	lhu	a2,s0,+00000004
	bgeu	a0,a2,000000002303D868

l2303D85E:
	lw	a0,s2,+00000004
	jal	ra,00000000230494E0
	c.mv	a2,a0

l2303D868:
	c.lw	s0,0(a1)
	lw	a0,s2,+00000004
	jal	ra,00000000230492F0
	c.lw	s1,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; mod_sub_status: 2303D886
mod_sub_status proc
	lui	a4,0004200F
	lw	a5,a4,+00000428
	c.lw	a5,16(a3)
	c.lui	a5,00008000
	c.addi	a5,0000001F
	beq	a3,a5,000000002303D8A4

l2303D898:
	lui	a0,000230B8
	addi	a0,a0,-00000348

l2303D8A0:
	jal	zero,0000000023082388

l2303D8A4:
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	addi	s2,a4,+00000428
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s1,00000088
	jal	ra,0000000023049414
	c.mv	s4,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	lhu	a4,s0,+00000004
	c.li	a5,00000003
	c.mv	s3,a0
	bgeu	a5,a4,000000002303D92E

l2303D8DC:
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s1,a0

l2303D8E4:
	c.mv	a0,s0
	jal	ra,0000000023049430
	lw	a4,s2,+00000000
	c.lw	a4,20(a5)
	lhu	a3,a5,+00000004
	bne	a3,s5,000000002303D914

l2303D8F8:
	lhu	a3,a5,+00000010
	bne	a3,a0,000000002303D914

l2303D900:
	c.lw	a5,12(a3)
	c.beqz	a3,000000002303D90C

l2303D904:
	lhu	a3,a3,+00000000
	bne	a3,s3,000000002303D914

l2303D90C:
	lhu	a3,a5,+00000012
	beq	a3,s1,000000002303D934

l2303D914:
	c.lwsp	s8,00000004
	lui	a0,000230B8
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a0,a0,-00000318
	c.addi16sp	00000020
	c.j	000000002303D8A0

l2303D92E:
	c.lui	s1,00010000
	c.addi	s1,FFFFFFFF
	c.j	000000002303D8E4

l2303D934:
	c.lw	a5,8(a3)
	c.beqz	a3,000000002303D93C

l2303D938:
	sh	s3,a3,+00000000

l2303D93C:
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303D944

l2303D940:
	sb	s4,a5,+00000000

l2303D944:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a0,a4,+00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; mod_app_status: 2303D95C
mod_app_status proc
	lui	a4,0004200F
	lw	a5,a4,+00000428
	c.lw	a5,16(a3)
	c.lui	a5,00008000
	addi	a5,a5,+0000003E
	beq	a3,a5,000000002303D97C

l2303D970:
	lui	a0,000230B8
	addi	a0,a0,-00000480

l2303D978:
	jal	zero,0000000023082388

l2303D97C:
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	addi	s2,a4,+00000428
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s1,00000088
	jal	ra,0000000023049414
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	lhu	a4,s0,+00000004
	c.li	a5,00000003
	c.mv	s4,a0
	bgeu	a5,a4,000000002303DA02

l2303D9B4:
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s1,a0

l2303D9BC:
	c.mv	a0,s0
	jal	ra,0000000023049430
	lw	a4,s2,+00000000
	c.lw	a4,20(a5)
	lhu	a3,a5,+00000004
	bne	a3,s5,000000002303D9E8

l2303D9D0:
	lhu	a3,a5,+00000006
	bne	a3,s4,000000002303D9E8

l2303D9D8:
	lhu	a3,a5,+00000008
	bne	a3,a0,000000002303D9E8

l2303D9E0:
	lhu	a3,a5,+0000000A
	beq	a3,s1,000000002303DA08

l2303D9E8:
	c.lwsp	s8,00000004
	lui	a0,000230B8
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a0,a0,-00000458
	c.addi16sp	00000020
	c.j	000000002303D978

l2303DA02:
	c.lui	s1,00010000
	c.addi	s1,FFFFFFFF
	c.j	000000002303D9BC

l2303DA08:
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303DA10

l2303DA0C:
	sb	s3,a5,+00000000

l2303DA10:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a0,a4,+00000004
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

;; state_status_u8.isra.2: 2303DA28
;;   Called from:
;;     2303DA76 (in gatt_proxy_status)
;;     2303DA80 (in friend_status)
;;     2303DA8A (in ttl_status)
;;     2303DA94 (in beacon_status)
state_status_u8.isra.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000428
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	a2,a1
	c.lw	a5,16(a1)
	beq	a1,a2,000000002303DA56

l2303DA42:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230B8
	addi	a0,a0,-0000026C
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2303DA56:
	c.lw	a5,20(s1)
	jal	ra,0000000023049414
	sb	a0,s1,+00000000
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,00000004
	c.addi	sp,00000010
	jal	zero,0000000023048B7E

;; gatt_proxy_status: 2303DA70
gatt_proxy_status proc
	c.lui	a1,00008000
	c.addi	a1,00000014
	c.mv	a0,a2
	jal	zero,000000002303DA28

;; friend_status: 2303DA7A
friend_status proc
	c.lui	a1,00008000
	c.addi	a1,00000011
	c.mv	a0,a2
	jal	zero,000000002303DA28

;; ttl_status: 2303DA84
ttl_status proc
	c.lui	a1,00008000
	c.addi	a1,0000000E
	c.mv	a0,a2
	jal	zero,000000002303DA28

;; beacon_status: 2303DA8E
beacon_status proc
	c.lui	a1,00008000
	c.addi	a1,0000000B
	c.mv	a0,a2
	jal	zero,000000002303DA28

;; app_key_is_valid: 2303DA98
;;   Called from:
;;     2303EAB2 (in mod_app_unbind)
;;     2303EB8E (in mod_app_bind)
;;     2303F7B4 (in _mod_unbind)
app_key_is_valid proc
	lui	a4,0004200D
	addi	a5,a4,+000006BC
	lhu	a1,a5,+000001B4
	c.lui	a3,00010000
	c.addi	a3,FFFFFFFF
	c.mv	a2,a0
	addi	a4,a4,+000006BC
	beq	a1,a3,000000002303DABC

l2303DAB2:
	lhu	a5,a5,+000001B6
	c.li	a0,00000001
	beq	a5,a2,000000002303DAD6

l2303DABC:
	lhu	a5,a4,+000001DC
	c.lui	a3,00010000
	c.addi	a3,FFFFFFFF
	c.li	a0,00000000
	beq	a5,a3,000000002303DAD6

l2303DACA:
	lhu	a5,a4,+000001DE
	sub	a0,a5,a2
	sltiu	a0,a0,+00000001

l2303DAD6:
	c.jr	ra

;; key_idx_pack: 2303DAD8
;;   Called from:
;;     2303DC16 (in net_key_get)
;;     2303DE46 (in app_key_get)
;;     2303F52A (in app_key_update)
;;     2303F5AC (in app_key_add)
;;     2303FAE8 (in app_key_del)
key_idx_pack proc
	slli	a5,a2,0000000C
	c.or	a1,a5
	c.slli	a1,10
	c.addi	sp,FFFFFFE0
	c.srli	a1,00000010
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a2,00000084
	jal	ra,000000002304931C
	c.lwsp	a2,00000084
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.srli	a2,00000004
	andi	a1,a2,+000000FF
	c.addi16sp	00000020
	jal	zero,0000000023049306

;; send_krp_status: 2303DB04
;;   Called from:
;;     2303DCFA (in krp_get)
;;     2303E060 (in krp_set)
send_krp_status proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000018
	c.swsp	s1,00000098
	c.swsp	a5,00000090
	c.mv	s1,a1
	lui	a5,000000A0
	c.lui	a1,00008000
	c.swsp	s0,0000001C
	c.swsp	a5,00000014
	c.mv	s0,a0
	c.addi4spn	a5,00000018
	c.addi	a1,00000017
	c.addi4spn	a0,00000024
	c.swsp	ra,0000009C
	c.swsp	a3,00000004
	c.swsp	a5,00000094
	c.swsp	a2,00000084
	c.swsp	a4,00000080
	jal	ra,000000002303C6A0
	c.lwsp	tp,000000C4
	c.addi4spn	a0,00000024
	c.mv	a1,a4
	jal	ra,0000000023049306
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000024
	c.mv	a1,a2
	jal	ra,000000002304931C
	c.lwsp	s0,000000A4
	c.addi4spn	a0,00000024
	c.mv	a1,a3
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000024
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DB68

l2303DB5C:
	lui	a0,000230B8
	addi	a0,a0,+00000798
	jal	ra,0000000023082388

l2303DB68:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; send_friend_status: 2303DB72
;;   Called from:
;;     2303DBCE (in friend_get)
;;     2303E1D6 (in friend_set)
send_friend_status proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.addi4spn	a5,0000000C
	lw	s2,a0,+00000018
	c.mv	s1,a1
	c.swsp	a5,00000088
	c.lui	a1,00008000
	lui	a5,00000070
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi	a1,00000011
	c.addi4spn	a5,0000000C
	c.addi4spn	a0,00000014
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	lbu	a1,s2,+00000009
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DBC2

l2303DBB6:
	lui	a0,000230B8
	addi	a0,a0,+00000754
	jal	ra,0000000023082388

l2303DBC2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; friend_get: 2303DBCE
friend_get proc
	jal	zero,000000002303DB72

;; net_key_get: 2303DBD2
net_key_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,00000008
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000090
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.swsp	a5,0000000C
	addi	a1,a1,+00000043
	c.addi4spn	a5,00000008
	c.mv	s0,a0
	c.addi4spn	a0,00000014
	c.swsp	a5,0000008C
	c.swsp	ra,00000094
	jal	ra,000000002303C6A0
	lui	a5,0004200D
	addi	a5,a5,+000006BC
	lhu	a2,a5,+00000304
	lhu	a1,a5,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a2,a5,000000002303DC40

l2303DC10:
	beq	a1,a5,000000002303DC46

l2303DC14:
	c.addi4spn	a0,00000014
	jal	ra,000000002303DAD8

l2303DC1A:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DC36

l2303DC2A:
	lui	a0,000230B8
	addi	a0,a0,+000005F4
	jal	ra,0000000023082388

l2303DC36:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2303DC40:
	beq	a1,a2,000000002303DC1A

l2303DC44:
	c.mv	a2,a1

l2303DC46:
	c.mv	a1,a2
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.j	000000002303DC1A

;; send_net_key_status: 2303DC50
;;   Called from:
;;     2303E492 (in net_key_update)
;;     2303E59C (in net_key_add)
;;     2304068C (in net_key_del)
send_net_key_status proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000018
	c.swsp	s1,00000098
	c.swsp	a5,00000090
	c.mv	s1,a1
	lui	a5,00000090
	c.lui	a1,00008000
	c.swsp	s0,0000001C
	c.swsp	a5,00000014
	c.mv	s0,a0
	c.addi4spn	a5,00000018
	addi	a1,a1,+00000044
	c.addi4spn	a0,00000024
	c.swsp	ra,0000009C
	c.swsp	a2,00000084
	c.swsp	a5,00000094
	c.swsp	a3,00000004
	jal	ra,000000002303C6A0
	c.lwsp	s0,000000A4
	c.addi4spn	a0,00000024
	c.mv	a1,a3
	jal	ra,0000000023049306
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000024
	c.mv	a1,a2
	jal	ra,000000002304931C
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000024
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DCAA

l2303DC9E:
	lui	a0,000230B9
	addi	a0,a0,-000007E4
	jal	ra,0000000023082388

l2303DCAA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; krp_get: 2303DCB4
krp_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	a1,00000004
	c.swsp	ra,0000008C
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.lwsp	s0,00000064
	bltu	a0,a5,000000002303DCE0

l2303DCCC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303DCE0:
	c.swsp	a1,00000004
	c.swsp	a0,00000084
	jal	ra,0000000023042056
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.bnez	a0,000000002303DCFE

l2303DCEE:
	c.li	a4,00000004
	c.li	a3,00000000

l2303DCF2:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002303DB04

l2303DCFE:
	c.li	a4,00000000
	lbu	a3,a0,+0000001F
	c.j	000000002303DCF2

;; node_identity_get: 2303DD06
node_identity_get proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000008
	c.swsp	a5,00000088
	lui	a5,000000A0
	c.swsp	s2,00000018
	c.swsp	a5,0000000C
	c.mv	s2,a0
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	a5,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.mv	s3,a1
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s0,a0
	bltu	a0,a5,000000002303DD4E

l2303DD32:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	jal	ra,0000000023082388

l2303DD40:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303DD4E:
	c.lui	a1,00008000
	addi	a1,a1,+00000048
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.mv	a0,s0
	jal	ra,0000000023042056
	c.mv	s1,a0
	c.bnez	a0,000000002303DD9A

l2303DD64:
	c.li	a1,00000004
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306

l2303DD6C:
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DD40

l2303DD8C:
	lui	a0,000230B8
	addi	a0,a0,+00000670
	jal	ra,0000000023082388
	c.j	000000002303DD40

l2303DD9A:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lbu	s1,s1,+00000020
	c.j	000000002303DD6C

;; app_key_get: 2303DDA8
app_key_get proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000008
	c.swsp	a5,00000088
	lui	a5,000000C0
	c.swsp	s2,00000018
	c.swsp	a5,0000000C
	c.mv	s2,a0
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	a5,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.mv	s3,a1
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s0,a0
	bltu	a0,a5,000000002303DDF0

l2303DDD4:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	jal	ra,0000000023082388

l2303DDE2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303DDF0:
	c.lui	a1,00008000
	c.addi	a1,00000002
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.mv	a0,s0
	jal	ra,0000000023042056
	sltiu	s1,a0,+00000001
	c.slli	s1,02
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.bnez	s1,000000002303DE4A

l2303DE18:
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	lhu	a4,a4,+000001B4
	addi	a5,a5,+000006BC
	bne	a4,s0,000000002303DE68

l2303DE2C:
	lhu	a1,a5,+000001B6

l2303DE30:
	lhu	a4,a5,+000001DC
	bne	a4,s0,000000002303DE70

l2303DE38:
	lhu	a2,a5,+000001DE
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a1,a5,000000002303DE6E

l2303DE44:
	c.addi4spn	a0,00000014
	jal	ra,000000002303DAD8

l2303DE4A:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DDE2

l2303DE5A:
	lui	a0,000230B8
	addi	a0,a0,-00000244
	jal	ra,0000000023082388
	c.j	000000002303DDE2

l2303DE68:
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.j	000000002303DE30

l2303DE6E:
	c.mv	a1,a2

l2303DE70:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a1,a5,000000002303DE4A

l2303DE78:
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.j	000000002303DE4A

;; hb_pub_send_status: 2303DE80
;;   Called from:
;;     2303DF5E (in heartbeat_pub_get)
;;     2303F792 (in heartbeat_pub_set)
hb_pub_send_status proc
	c.addi16sp	FFFFFFB0
	c.addi4spn	a5,00000020
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	a5,00000088
	lui	a5,000000F0
	c.swsp	a5,0000000C
	c.lw	a0,24(s0)
	c.addi4spn	a5,00000020
	c.mv	s1,a0
	c.mv	s3,a1
	c.addi4spn	a0,00000014
	c.li	a1,00000006
	c.swsp	a2,00000084
	c.mv	s2,a3
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000014
	c.mv	a1,a2
	jal	ra,0000000023049306
	beq	s2,zero,000000002303DEF4

l2303DEBA:
	c.li	a1,00000009
	c.addi4spn	a0,00000014
	jal	ra,00000000230492DE
	c.li	a2,00000009
	c.mv	a1,s2
	jal	ra,00000000230A382C

l2303DECA:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DEE6

l2303DEDA:
	lui	a0,000230B8
	addi	a0,a0,+000002FC
	jal	ra,0000000023082388

l2303DEE6:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l2303DEF4:
	lhu	a1,s0,+00000030
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	lhu	a0,s0,+00000032
	c.li	a1,00000000
	c.beqz	a0,000000002303DF2A

l2303DF06:
	c.li	a5,00000001
	c.li	a1,00000001
	beq	a0,a5,000000002303DF2A

l2303DF0E:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	a1,zero,+000000FF
	beq	a0,a5,000000002303DF2A

l2303DF1A:
	c.addi	a0,FFFFFFFF
	jal	ra,000000002309F27C
	addi	a1,zero,+00000021
	c.sub	a1,a0
	andi	a1,a1,+000000FF

l2303DF2A:
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lbu	a1,s0,+00000034
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lbu	a1,s0,+00000035
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lhu	a1,s0,+00000036
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	lhu	a1,s0,+00000038
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.j	000000002303DECA

;; heartbeat_pub_get: 2303DF5A
heartbeat_pub_get proc
	c.li	a3,00000000
	c.li	a2,00000000
	jal	zero,000000002303DE80

;; send_mod_sub_status: 2303DF62
;;   Called from:
;;     2303EDDA (in mod_sub_del)
;;     2303EE9E (in mod_sub_add)
;;     2303EF78 (in mod_sub_va_del)
;;     2303F216 (in mod_sub_va_add)
;;     230403DE (in mod_sub_del_all)
;;     23040486 (in mod_sub_va_overwrite)
;;     23040542 (in mod_sub_overwrite)
send_mod_sub_status proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a5
	c.addi4spn	a5,00000020
	c.swsp	s2,00000018
	c.swsp	a5,00000088
	c.mv	s2,a1
	lui	a5,000000F0
	c.lui	a1,00008000
	c.swsp	s1,00000098
	c.swsp	a5,0000000C
	c.addi	a1,0000001F
	c.addi4spn	a5,00000020
	c.mv	s1,a0
	c.addi4spn	a0,00000014
	c.swsp	a6,00000000
	c.swsp	ra,0000009C
	c.swsp	a4,00000080
	c.swsp	a5,0000008C
	c.swsp	a3,00000004
	c.swsp	a2,00000084
	jal	ra,000000002303C6A0
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000014
	c.mv	a1,a2
	jal	ra,0000000023049306
	c.lwsp	s0,000000A4
	c.addi4spn	a0,00000014
	c.mv	a1,a3
	jal	ra,000000002304931C
	c.lwsp	tp,000000C4
	c.addi4spn	a0,00000014
	c.mv	a1,a4
	jal	ra,000000002304931C
	c.lwsp	zero,00000008
	beq	a6,zero,000000002303DFEE

l2303DFB6:
	c.li	a1,00000004
	c.addi4spn	a0,00000014
	jal	ra,00000000230492DE
	c.li	a2,00000004

l2303DFC0:
	c.mv	a1,s0
	jal	ra,00000000230A382C
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303DFE2

l2303DFD6:
	lui	a0,000230B8
	addi	a0,a0,+000007F0
	jal	ra,0000000023082388

l2303DFE2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2303DFEE:
	c.li	a1,00000002
	c.addi4spn	a0,00000014
	jal	ra,00000000230492DE
	c.li	a2,00000002
	c.j	000000002303DFC0

;; krp_set: 2303DFFA
krp_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	a2,00000084
	c.mv	s2,a1
	c.swsp	s0,00000014
	jal	ra,0000000023049430
	c.lwsp	a2,00000084
	c.mv	s1,a0
	c.mv	a0,a2
	jal	ra,0000000023049414
	c.lui	a5,00001000
	bltu	s1,a5,000000002303E03C

l2303E022:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a1,s1
	c.lwsp	tp,00000134
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303E03C:
	c.swsp	a0,00000084
	c.mv	a0,s1
	jal	ra,0000000023042056
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,000000002303E064

l2303E04A:
	c.li	a4,00000004
	c.li	a3,00000000

l2303E04E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.mv	a2,s1
	c.mv	a1,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.mv	a0,s3
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,000000002303DB04

l2303E064:
	addi	a4,a2,-00000002
	andi	a4,a4,+000000FF
	c.li	a3,00000001
	lbu	a1,a0,+0000001F
	bltu	a3,a4,000000002303E07E

l2303E076:
	c.bnez	a1,000000002303E096

l2303E078:
	c.li	a4,00000002
	bne	a2,a4,000000002303E0AC

l2303E07E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	lui	a0,000230B8
	addi	a0,a0,+00000408
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303E096:
	bne	a1,a3,000000002303E0B4

l2303E09A:
	c.li	a5,00000002
	bne	a2,a5,000000002303E0BA

l2303E0A0:
	addi	a5,zero,+00000201
	sh	a5,a0,+0000001E

l2303E0A8:
	jal	ra,000000002304249E

l2303E0AC:
	c.li	a4,00000000
	lbu	a3,s0,+0000001F
	c.j	000000002303E04E

l2303E0B4:
	c.li	a4,00000002
	bne	a1,a4,000000002303E0AC

l2303E0BA:
	c.li	a5,00000003
	bne	a2,a5,000000002303E0AC

l2303E0C0:
	c.mv	a0,s0
	jal	ra,000000002304258E
	lhu	a0,s2,+00000000
	jal	ra,00000000230421FA
	c.mv	a0,s0
	sh	zero,s0,+0000001E
	c.j	000000002303E0A8

;; lpn_timeout_get: 2303E0D6
lpn_timeout_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,00000008
	c.swsp	a5,00000088
	lui	a5,000000B0
	c.swsp	s1,00000090
	c.swsp	a5,0000000C
	c.mv	s1,a0
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	c.swsp	s2,00000010
	c.swsp	a5,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a1
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303E11A

l2303E102:
	lui	a0,000230B8
	addi	a0,a0,+0000042C

l2303E10A:
	jal	ra,0000000023082388

l2303E10E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2303E11A:
	c.lui	a1,00008000
	c.mv	s0,a0
	addi	a1,a1,+0000002E
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.lui	a0,00010000
	c.mv	a1,s0
	c.li	a3,00000001
	c.li	a2,00000001
	c.addi	a0,FFFFFFFF
	jal	ra,0000000023047BF8
	c.li	s0,00000000
	c.beqz	a0,000000002303E150

l2303E142:
	c.addi	a0,00000018
	jal	ra,00000000230497AA
	addi	s0,zero,+00000064
	xor	s0,a0,s0

l2303E150:
	andi	a1,s0,+000000FF
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	srai	a1,s0,00000008
	andi	a1,a1,+000000FF
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	srai	a1,s0,00000010
	andi	a1,a1,+000000FF
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E10E

l2303E186:
	lui	a0,000230B8
	addi	a0,a0,+00000450
	c.j	000000002303E10A

;; friend_set: 2303E190
friend_set proc
	c.lw	a2,0(a5)
	c.li	a4,00000001
	lbu	a5,a5,+00000000
	bgeu	a4,a5,000000002303E1AA

l2303E19C:
	lui	a0,000230B8
	c.mv	a1,a5
	addi	a0,a0,+0000028C
	jal	zero,0000000023082388

l2303E1AA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,24(s1)
	c.mv	s2,a1
	c.mv	s0,a0
	c.bnez	s1,000000002303E1DA

l2303E1BC:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l2303E1C8:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,s2
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002303DB72

l2303E1DA:
	lbu	a4,s1,+00000009
	beq	a4,a5,000000002303E1C8

l2303E1E2:
	sb	a5,s1,+00000009
	c.bnez	a5,000000002303E1F0

l2303E1E8:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	jal	ra,0000000023047C7A

l2303E1F0:
	lhu	a5,s1,+00000036
	c.andi	a5,00000004
	c.beqz	a5,000000002303E1C8

l2303E1F8:
	jal	ra,000000002304731E
	c.j	000000002303E1C8

;; node_reset: 2303E1FE
node_reset proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000060
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.swsp	a5,0000000C
	c.mv	s0,a0
	c.addi4spn	a5,0000000C
	addi	a1,a1,+0000004A
	c.addi4spn	a0,00000014
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E240

l2303E234:
	lui	a0,000230B8
	addi	a0,a0,+000006B8
	jal	ra,0000000023082388

l2303E240:
	addi	a0,zero,+000001F4
	jal	ra,0000000023062CC4
	jal	ra,0000000023041C9C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; mod_sub_get: 2303E256
mod_sub_get proc
	c.addi16sp	FFFFFFB0
	c.addi4spn	a5,00000020
	c.swsp	a5,00000088
	lui	a5,000000F0
	c.swsp	s3,0000009C
	c.swsp	a5,0000000C
	c.mv	s3,a0
	c.addi4spn	a5,00000020
	c.mv	a0,a2
	c.swsp	s4,0000001C
	c.swsp	a5,0000008C
	c.swsp	a2,00000084
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.mv	s4,a1
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	c.lwsp	a2,00000084
	blt	zero,a5,000000002303E2A6

l2303E28A:
	lui	a0,000230B8
	addi	a0,a0,+00000560

l2303E292:
	jal	ra,0000000023082388

l2303E296:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l2303E2A6:
	c.mv	s0,a0
	c.mv	a0,a2
	jal	ra,0000000023049430
	c.lui	a1,00008000
	addi	a1,a1,+0000002A
	c.mv	s1,a0
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.mv	a0,s0
	jal	ra,000000002303C3DC
	c.li	a1,00000001
	c.beqz	a0,000000002303E2D2

l2303E2C6:
	c.mv	a1,s1
	jal	ra,000000002303CA06
	c.mv	s2,a0
	c.bnez	a0,000000002303E2EA

l2303E2D0:
	c.li	a1,00000002

l2303E2D2:
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.mv	a1,s1

l2303E2E2:
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.j	000000002303E314

l2303E2EA:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C
	lhu	a1,s2,+00000010
	c.beqz	a1,000000002303E30E

l2303E308:
	c.addi4spn	a0,00000014
	jal	ra,000000002304931C

l2303E30E:
	lhu	a1,s2,+00000012
	c.bnez	a1,000000002303E2E2

l2303E314:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E296

l2303E324:
	lui	a0,000230B8
	addi	a0,a0,+00000580
	c.j	000000002303E292

;; mod_sub_get_vnd: 2303E32E
mod_sub_get_vnd proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000000
	lui	a5,00000110
	c.swsp	s4,00000014
	c.swsp	a5,00000080
	c.mv	s4,a0
	c.addi4spn	a5,0000000C
	c.mv	a0,a2
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	a5,00000004
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s5,a1
	c.mv	s1,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303E380

l2303E362:
	lui	a0,000230B8
	addi	a0,a0,+00000560

l2303E36A:
	jal	ra,0000000023082388

l2303E36E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2303E380:
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,0000000023049430
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023049430
	c.lui	a1,00008000
	addi	a1,a1,+0000002C
	c.mv	s1,a0
	c.mv	a0,sp
	jal	ra,000000002303C6A0
	c.mv	a0,s0
	jal	ra,000000002303C3DC
	c.li	a1,00000001
	c.beqz	a0,000000002303E3B6

l2303E3A8:
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,000000002303C9D4
	c.mv	s3,a0
	c.bnez	a0,000000002303E3D6

l2303E3B4:
	c.li	a1,00000002

l2303E3B6:
	c.mv	a0,sp
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002304931C
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002304931C
	c.mv	a1,s1

l2303E3CE:
	c.mv	a0,sp
	jal	ra,000000002304931C
	c.j	000000002303E408

l2303E3D6:
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002304931C
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002304931C
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,000000002304931C
	lhu	a1,s3,+00000010
	c.beqz	a1,000000002303E402

l2303E3FC:
	c.mv	a0,sp
	jal	ra,000000002304931C

l2303E402:
	lhu	a1,s3,+00000012
	c.bnez	a1,000000002303E3CE

l2303E408:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,sp
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E36E

l2303E418:
	lui	a0,000230B8
	addi	a0,a0,+000005AC
	c.j	000000002303E36A

;; net_key_update: 2303E422
net_key_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a1
	c.mv	s4,a2
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s1,a0
	bltu	a0,a5,000000002303E460

l2303E444:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303E460:
	jal	ra,0000000023042056
	c.mv	s0,a0
	c.li	a3,00000004
	c.beqz	a0,000000002303E47E

l2303E46A:
	lbu	a5,a0,+0000001F
	c.li	a4,00000001
	beq	a5,a4,000000002303E4B6

l2303E474:
	c.beqz	a5,000000002303E496

l2303E476:
	c.li	a4,00000003
	bltu	a4,a5,000000002303E4CA

l2303E47C:
	c.li	a3,0000000B

l2303E47E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s0,00000088
	c.mv	a2,s1
	c.mv	a1,s3
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002303DC50

l2303E496:
	addi	a1,a0,+00000030
	lw	a0,s4,+00000000
	c.li	a2,00000010
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002303E4CA

l2303E4A6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303E4B6:
	addi	a1,a0,+00000089
	lw	a0,s4,+00000000
	c.li	a2,00000010
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002303E47C

l2303E4C6:
	c.li	a3,00000000
	c.j	000000002303E47E

l2303E4CA:
	lw	a1,s4,+00000000
	addi	a0,s0,+00000089
	jal	ra,0000000023042096
	c.beqz	a0,000000002303E4DC

l2303E4D8:
	c.li	a3,00000010
	c.j	000000002303E47E

l2303E4DC:
	c.mv	a0,s0
	jal	ra,000000002304225E
	c.bnez	a0,000000002303E4D8

l2303E4E4:
	c.li	a5,00000001
	sb	a5,s0,+0000001F
	c.mv	a0,s0
	jal	ra,000000002304249E
	c.j	000000002303E4C6

;; net_key_add: 2303E4F2
net_key_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a1
	c.mv	s4,a2
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s1,a0
	bltu	a0,a5,000000002303E530

l2303E514:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303E530:
	jal	ra,0000000023042056
	c.mv	s0,a0
	c.bnez	a0,000000002303E56A

l2303E538:
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	lhu	a4,a5,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	s0,s0,+000006BC
	beq	a4,a5,000000002303E5A0

l2303E550:
	lhu	a4,s0,+00000304
	c.li	a3,00000005
	bne	a4,a5,000000002303E588

l2303E55A:
	c.li	a5,00000001

l2303E55C:
	addi	a4,zero,+000000E4
	add	a5,a5,a4
	addi	a5,a5,+00000204
	c.add	s0,a5

l2303E56A:
	lhu	a4,s0,+0000001C
	addi	a5,s0,+00000030
	lw	a0,s4,+00000000
	bne	a4,s1,000000002303E5A4

l2303E57A:
	c.li	a2,00000010
	c.mv	a1,a5
	jal	ra,00000000230A37A4
	c.li	a3,00000006
	c.bnez	a0,000000002303E588

l2303E586:
	c.li	a3,00000000

l2303E588:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s0,00000088
	c.mv	a2,s1
	c.mv	a1,s3
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002303DC50

l2303E5A0:
	c.li	a5,00000000
	c.j	000000002303E55C

l2303E5A4:
	c.mv	a1,a0
	c.mv	a0,a5
	jal	ra,0000000023042096
	c.li	a3,00000010
	c.bnez	a0,000000002303E588

l2303E5B0:
	sh	s1,s0,+0000001C
	c.mv	a0,s0
	jal	ra,000000002304249E
	c.mv	a0,s0
	sb	zero,s0,+00000020
	jal	ra,0000000023045270
	jal	ra,000000002303CD2C
	c.j	000000002303E586

;; key_idx_unpack: 2303E5CA
;;   Called from:
;;     2303F4FA (in app_key_update)
;;     2303F57C (in app_key_add)
;;     2303FA9A (in app_key_del)
key_idx_unpack proc
	c.lw	a0,0(a3)
	lbu	a5,a3,+00000001
	lbu	a3,a3,+00000000
	c.slli	a5,08
	c.or	a5,a3
	c.slli	a5,14
	c.srli	a5,00000014
	sh	a5,a1,+00000000
	c.lw	a0,0(a4)
	c.li	a1,00000003
	lbu	a5,a4,+00000002
	lbu	a4,a4,+00000001
	c.slli	a5,08
	c.or	a5,a4
	c.srli	a5,00000004
	sh	a5,a2,+00000000
	jal	zero,00000000230493EC

;; _mod_pub_set.isra.1: 2303E5FA
;;   Called from:
;;     2303E72E (in mod_unbind.isra.2.part.3)
;;     2303ECC4 (in mod_pub_set)
;;     2303F182 (in mod_pub_va_set)
_mod_pub_set.isra.1 proc
	lw	t1,a0,+00000008
	beq	t1,zero,000000002303E6E6

l2303E602:
	lw	a7,t1,+00000018
	bne	a7,zero,000000002303E60E

l2303E60A:
	c.li	a7,00000007
	c.bnez	a5,000000002303E6E8

l2303E60E:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.mv	s5,a6
	c.mv	s2,a5
	c.mv	s6,a4
	c.mv	s1,a3
	c.mv	s3,a2
	c.mv	s4,a1
	c.mv	s0,a0
	c.bnez	a1,000000002303E690

l2303E630:
	lhu	a5,t1,+00000004
	c.bnez	a5,000000002303E64E

l2303E636:
	c.li	a7,00000000

l2303E638:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,a7
	c.addi16sp	00000020
	c.jr	ra

l2303E64E:
	sh	zero,t1,+00000004
	c.lw	a0,8(a5)
	sh	zero,a5,+00000006
	c.lw	a0,8(a4)
	lbu	a5,a4,+0000000B
	c.andi	a5,FFFFFFEF
	sb	a5,a4,+0000000B
	c.lw	a0,8(a5)
	sb	zero,a5,+00000008
	c.lw	a0,8(a5)
	sb	zero,a5,+0000000A
	c.lw	a0,8(a5)
	sb	zero,a5,+00000009
	c.lw	a0,8(a4)
	lbu	a5,a4,+0000000C
	c.andi	a5,FFFFFFF8
	sb	a5,a4,+0000000C
	c.lw	a0,8(a0)
	c.lw	a0,24(a5)
	c.addi	a0,0000001C
	c.beqz	a5,000000002303E636

l2303E68A:
	jal	ra,000000002304986E
	c.j	000000002303E636

l2303E690:
	c.mv	a0,a2
	jal	ra,0000000023046394
	c.li	a7,00000003
	c.beqz	a0,000000002303E638

l2303E69A:
	c.lw	s0,8(a5)
	andi	a3,s1,+00000001
	c.slli	a3,04
	sh	s4,a5,+00000004
	c.lw	s0,8(a5)
	sh	s3,a5,+00000006
	c.lw	s0,8(a5)
	lbu	s1,a5,+0000000B
	c.andi	s1,FFFFFFEF
	c.or	a3,s1
	sb	a3,a5,+0000000B
	c.lw	s0,8(a5)
	sb	s6,a5,+00000008
	c.lw	s0,8(a5)
	sb	s2,a5,+0000000A
	c.lw	s0,8(a5)
	sb	s5,a5,+00000009
	c.lw	s0,8(a5)
	c.lw	a5,24(a5)
	c.beqz	a5,000000002303E636

l2303E6D2:
	c.mv	a0,s0
	jal	ra,000000002303C24E
	c.mv	a1,a0
	c.lw	s0,8(a0)
	c.addi	a0,0000001C
	c.beqz	a1,000000002303E68A

l2303E6E0:
	jal	ra,00000000230498CA
	c.j	000000002303E636

l2303E6E6:
	c.li	a7,00000007

l2303E6E8:
	c.mv	a0,a7
	c.jr	ra

;; mod_unbind.isra.2.part.3: 2303E6EC
;;   Called from:
;;     2303EABE (in mod_app_unbind)
;;     2303F7C4 (in _mod_unbind)
mod_unbind.isra.2.part.3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,a0,+0000000C
	addi	s3,a0,+00000010
	c.li	s4,FFFFFFFF

l2303E708:
	lhu	a5,s0,+00000000
	bne	a5,s2,000000002303E732

l2303E710:
	sh	s4,s0,+00000000
	c.lw	s1,8(a5)
	c.beqz	a5,000000002303E732

l2303E718:
	lhu	a5,a5,+00000006
	bne	a5,s2,000000002303E732

l2303E720:
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303E5FA

l2303E732:
	c.addi	s0,00000002
	bne	s0,s3,000000002303E708

l2303E738:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; create_mod_app_status.isra.5: 2303E74A
;;   Called from:
;;     2303EA82 (in mod_app_unbind)
;;     2303EB4A (in mod_app_bind)
create_mod_app_status.isra.5 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a1
	c.lui	a1,00008000
	addi	a1,a1,+0000003E
	c.swsp	ra,0000008C
	c.swsp	a3,00000004
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.mv	s1,a5
	c.swsp	a4,00000080
	jal	ra,000000002303C6A0
	c.lwsp	tp,000000C4
	c.mv	a0,s0
	c.mv	a1,a4
	jal	ra,0000000023049306
	c.lwsp	a2,00000084
	c.mv	a0,s0
	c.mv	a1,a2
	jal	ra,000000002304931C
	c.lwsp	s0,000000A4
	c.mv	a0,s0
	c.mv	a1,a3
	jal	ra,000000002304931C
	beq	s2,zero,000000002303E7A6

l2303E78C:
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230492DE
	c.li	a2,00000004

l2303E796:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230A382C

l2303E7A6:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,00000000230492DE
	c.li	a2,00000002
	c.j	000000002303E796

;; send_mod_pub_status.isra.7: 2303E7B2
;;   Called from:
;;     2303EC9A (in mod_pub_set)
;;     2303ED54 (in mod_pub_get)
;;     2303F138 (in mod_pub_va_set)
send_mod_pub_status.isra.7 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a5
	c.addi4spn	a5,0000001C
	c.swsp	s4,0000001C
	c.swsp	a5,00000008
	c.mv	s4,a1
	lui	a5,00000140
	c.lui	a1,00008000
	c.swsp	s3,0000009C
	c.swsp	a5,00000088
	c.addi	a1,00000019
	c.addi4spn	a5,0000001C
	c.mv	s3,a0
	c.addi4spn	a0,00000010
	c.swsp	a3,00000004
	c.swsp	ra,000000A4
	c.swsp	a2,00000084
	c.swsp	a5,0000000C
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.mv	s1,a7
	c.mv	s2,a6
	c.swsp	s5,00000098
	c.mv	s5,a4
	jal	ra,000000002303C6A0
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,0000000023049306
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000010
	c.mv	a1,a2
	jal	ra,000000002304931C
	c.lwsp	s0,000000A4
	beq	s2,zero,000000002303E854

l2303E802:
	c.li	a1,00000007
	c.addi4spn	a0,00000010
	jal	ra,00000000230492DE
	c.li	a2,00000007
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2303E812:
	beq	s5,zero,000000002303E898

l2303E816:
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	jal	ra,00000000230492DE
	c.li	a2,00000004

l2303E820:
	c.mv	a1,s1
	jal	ra,00000000230A382C
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E842

l2303E836:
	lui	a0,000230B8
	addi	a0,a0,+000007C4
	jal	ra,0000000023082388

l2303E842:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2303E854:
	c.mv	a1,a3
	c.addi4spn	a0,00000010
	jal	ra,000000002304931C
	c.lw	s0,0(a5)
	c.addi4spn	a0,00000010
	c.lw	a5,8(a4)
	lhu	a1,a5,+00000006
	c.srli	a4,0000001C
	c.andi	a4,00000001
	c.slli	a4,0C
	c.or	a1,a4
	jal	ra,000000002304931C
	c.lw	s0,0(a5)
	c.addi4spn	a0,00000010
	lbu	a1,a5,+00000008
	jal	ra,0000000023049306
	c.lw	s0,0(a5)
	c.addi4spn	a0,00000010
	lbu	a1,a5,+0000000A
	jal	ra,0000000023049306
	c.lw	s0,0(a5)
	c.addi4spn	a0,00000010
	lbu	a1,a5,+00000009
	jal	ra,0000000023049306
	c.j	000000002303E812

l2303E898:
	c.li	a1,00000002
	c.addi4spn	a0,00000010
	jal	ra,00000000230492DE
	c.li	a2,00000002
	c.j	000000002303E820

;; get_model: 2303E8A4
;;   Called from:
;;     2303E9EA (in mod_app_get)
;;     2303EAA6 (in mod_app_unbind)
;;     2303EB6E (in mod_app_bind)
;;     2303ECA6 (in mod_pub_set)
;;     2303ED34 (in mod_pub_get)
;;     2303EDE6 (in mod_sub_del)
;;     2303EEAA (in mod_sub_add)
;;     2303EF84 (in mod_sub_va_del)
;;     2303F144 (in mod_pub_va_set)
;;     2303F222 (in mod_sub_va_add)
;;     230403EA (in mod_sub_del_all)
;;     23040492 (in mod_sub_va_overwrite)
;;     2304054E (in mod_sub_overwrite)
get_model proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lhu	a4,a1,+00000004
	c.li	a5,00000003
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s2,a2
	c.mv	a0,a1
	bltu	a5,a4,000000002303E8DA

l2303E8C0:
	jal	ra,0000000023049430
	c.lwsp	s8,00000004
	sb	zero,s2,+00000000
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002303CA06

l2303E8DA:
	jal	ra,0000000023049430
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.li	a5,00000001
	c.lwsp	s8,00000004
	sb	a5,s2,+00000000
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a2,a0
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002303C9D4

;; mod_app_get: 2303E900
mod_app_get proc
	c.addi16sp	FFFFFFB0
	c.addi4spn	a5,0000001C
	c.swsp	a5,00000008
	lui	a5,00000130
	c.swsp	s2,00000020
	c.swsp	a5,00000088
	c.mv	s2,a0
	c.addi4spn	a5,0000001C
	c.mv	a0,a2
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	a5,0000000C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s3,a1
	c.mv	s1,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303E952

l2303E934:
	lui	a0,000230B8
	addi	a0,a0,+00000560

l2303E93C:
	jal	ra,0000000023082388

l2303E940:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2303E952:
	c.mv	s5,a0
	lw	s4,s1,+00000000
	jal	ra,000000002303C3DC
	c.mv	s0,a0
	c.bnez	a0,000000002303E9E4

l2303E960:
	lhu	a5,s1,+00000004
	c.li	s1,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000F

l2303E970:
	lbu	a5,sp,+0000000F
	c.lui	a1,00008000
	c.beqz	a5,000000002303E9F8

l2303E978:
	addi	a1,a1,+0000004E

l2303E97C:
	c.addi4spn	a0,00000010
	jal	ra,000000002303C6A0
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,0000000023049306
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002304931C
	lbu	a5,sp,+0000000F
	c.li	a2,00000004
	c.bnez	a5,000000002303E99C

l2303E99A:
	c.li	a2,00000002

l2303E99C:
	c.mv	a1,s4
	c.addi4spn	a0,00000010
	jal	ra,00000000230492F0
	c.beqz	s0,000000002303E9CA

l2303E9A6:
	lhu	a1,s0,+0000000C
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a1,a5,000000002303E9B8

l2303E9B2:
	c.addi4spn	a0,00000010
	jal	ra,000000002304931C

l2303E9B8:
	lhu	a1,s0,+0000000E
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a1,a5,000000002303E9CA

l2303E9C4:
	c.addi4spn	a0,00000010
	jal	ra,000000002304931C

l2303E9CA:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303C700
	c.beqz	a0,000000002303E940

l2303E9DA:
	lui	a0,000230B8
	addi	a0,a0,+000004E0
	c.j	000000002303E93C

l2303E9E4:
	c.mv	a1,s1
	addi	a2,sp,+0000000F
	jal	ra,000000002303E8A4
	sltiu	s1,a0,+00000001
	c.mv	s0,a0
	c.slli	s1,01
	c.j	000000002303E970

l2303E9F8:
	addi	a1,a1,+0000004C
	c.j	000000002303E97C

;; mod_app_unbind: 2303E9FE
mod_app_unbind proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000010
	c.swsp	a5,00000080
	lui	a5,000000F0
	c.swsp	s3,00000094
	c.swsp	a5,00000004
	c.mv	s3,a0
	c.addi4spn	a5,00000010
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	c.swsp	a5,00000084
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.mv	s4,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EA50

l2303EA32:
	lui	a0,000230B8
	addi	a0,a0,+00000560

l2303EA3A:
	jal	ra,0000000023082388

l2303EA3E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2303EA50:
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s2,a0
	c.mv	a0,s1
	lw	s5,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303EAA0

l2303EA66:
	lhu	a5,s0,+00000004
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+00000003

l2303EA76:
	lbu	a1,sp,+00000003
	c.mv	a3,s2
	c.mv	a2,s1
	c.addi4spn	a0,00000004
	c.mv	a5,s5
	jal	ra,000000002303E74A
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303C700
	c.beqz	a0,000000002303EA3E

l2303EA96:
	lui	a0,000230B8
	addi	a0,a0,+00000510
	c.j	000000002303EA3A

l2303EAA0:
	c.mv	a1,s0
	addi	a2,sp,+00000003
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a4,00000002
	c.beqz	a0,000000002303EA76

l2303EAB0:
	c.mv	a0,s2
	jal	ra,000000002303DA98
	c.li	a4,00000003
	c.beqz	a0,000000002303EA76

l2303EABA:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303E6EC
	c.mv	a4,a0
	c.j	000000002303EA76

;; mod_app_bind: 2303EAC6
mod_app_bind proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000010
	c.swsp	a5,00000080
	lui	a5,000000F0
	c.swsp	s3,00000094
	c.swsp	a5,00000004
	c.mv	s3,a0
	c.addi4spn	a5,00000010
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	c.swsp	a5,00000084
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.mv	s4,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EB18

l2303EAFA:
	lui	a0,000230B8
	addi	a0,a0,+00000560

l2303EB02:
	jal	ra,0000000023082388

l2303EB06:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2303EB18:
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s1,a0
	c.mv	a0,s2
	lw	s5,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303EB68

l2303EB2E:
	lhu	a5,s0,+00000004
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+00000003

l2303EB3E:
	lbu	a1,sp,+00000003
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a0,00000004
	c.mv	a5,s5
	jal	ra,000000002303E74A
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303C700
	c.beqz	a0,000000002303EB06

l2303EB5E:
	lui	a0,000230B8
	addi	a0,a0,+000004B0
	c.j	000000002303EB02

l2303EB68:
	c.mv	a1,s0
	addi	a2,sp,+00000003
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a4,00000002
	c.beqz	a0,000000002303EB3E

l2303EB78:
	bne	a0,s3,000000002303EB8C

l2303EB7C:
	lui	a0,000230B8
	addi	a0,a0,+00000478
	jal	ra,0000000023082388
	c.li	a4,0000000D
	c.j	000000002303EB3E

l2303EB8C:
	c.mv	a0,s1
	jal	ra,000000002303DA98
	c.li	a4,00000003
	c.beqz	a0,000000002303EB3E

l2303EB96:
	lhu	a2,s0,+0000000C
	c.li	a4,00000000
	beq	s1,a2,000000002303EB3E

l2303EBA0:
	lhu	a3,s0,+0000000E
	beq	s1,a3,000000002303EB3E

l2303EBA8:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a2,a5,000000002303EBC4

l2303EBB0:
	c.li	a4,00000005
	bne	a3,a5,000000002303EB3E

l2303EBB6:
	c.li	a5,00000001

l2303EBB8:
	c.slli	a5,01
	c.add	s0,a5
	sh	s1,s0,+0000000C
	c.li	a4,00000000
	c.j	000000002303EB3E

l2303EBC4:
	c.li	a5,00000000
	c.j	000000002303EBB8

;; mod_pub_set: 2303EBC8
mod_pub_set proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	c.mv	s5,a0
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.mv	s6,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EC20

l2303EBF8:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303EC04:
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
	c.addi16sp	00000040
	c.jr	ra

l2303EC20:
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s4,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049414
	addi	a5,a0,-00000080
	andi	a5,a5,+000000FF
	addi	a4,zero,+0000007E
	c.mv	s8,a0
	bltu	a4,a5,000000002303EC5A

l2303EC4A:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+00000544
	jal	ra,0000000023082388
	c.j	000000002303EC04

l2303EC5A:
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s9,a0
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s10,a0
	c.mv	a0,s3
	lw	s7,s0,+00000000
	jal	ra,000000002303C3DC
	c.mv	s1,a0
	c.bnez	a0,000000002303ECA0

l2303EC78:
	lhu	a5,s0,+00000004
	c.li	a6,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000F

l2303EC88:
	lbu	a4,sp,+0000000F
	c.mv	a7,s7
	addi	a5,s1,+00000008
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002303E7B2
	c.j	000000002303EC04

l2303ECA0:
	addi	a2,sp,+0000000F
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s1,a0
	c.li	a6,00000002
	c.beqz	a0,000000002303EC88

l2303ECB0:
	srli	a3,s2,0000000C
	slli	a2,s2,00000014
	c.mv	a6,s10
	c.mv	a5,s9
	c.mv	a4,s8
	c.andi	a3,00000001
	c.srli	a2,00000014
	c.mv	a1,s4
	jal	ra,000000002303E5FA
	c.mv	a6,a0
	c.j	000000002303EC88

;; mod_pub_get: 2303ECCC
mod_pub_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303ED0C

l2303ECF0:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303ECFC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303ED0C:
	c.mv	s1,a0
	lw	s4,s0,+00000000
	jal	ra,000000002303C3DC
	c.mv	a5,a0
	c.bnez	a0,000000002303ED2E

l2303ED1A:
	lhu	a4,s0,+00000004
	c.li	a6,00000001
	c.addi	a4,FFFFFFFC
	sltiu	a4,a4,+00000001
	sb	a4,sp,+0000000F

l2303ED2A:
	c.li	a3,00000000
	c.j	000000002303ED46

l2303ED2E:
	addi	a2,sp,+0000000F
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	a5,a0
	c.beqz	a0,000000002303ED5A

l2303ED3C:
	c.lw	a0,8(a4)
	c.beqz	a4,000000002303ED5E

l2303ED40:
	lhu	a3,a4,+00000004
	c.li	a6,00000000

l2303ED46:
	lbu	a4,sp,+0000000F
	c.mv	a7,s4
	c.addi	a5,00000008
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303E7B2
	c.j	000000002303ECFC

l2303ED5A:
	c.li	a6,00000002
	c.j	000000002303ED2A

l2303ED5E:
	c.li	a6,00000007
	c.j	000000002303ED2A

;; mod_sub_del: 2303ED62
mod_sub_del proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EDA2

l2303ED86:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303ED92:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303EDA2:
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	sh	a0,sp,+0000000E
	c.mv	a0,s1
	lw	s4,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303EDE0

l2303EDBA:
	lhu	a5,s0,+00000004
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000D

l2303EDCA:
	lbu	a6,sp,+0000000D
	lhu	a4,sp,+0000000E
	c.mv	a5,s4
	c.mv	a3,s1
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303DF62
	c.j	000000002303ED92

l2303EDE0:
	addi	a2,sp,+0000000D
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a2,00000002
	c.beqz	a0,000000002303EDCA

l2303EDF0:
	lhu	a5,sp,+0000000E
	c.lui	a4,00004000
	c.li	a2,00000001
	c.add	a5,a4
	c.slli	a5,10
	c.lui	a4,00004000
	c.srli	a5,00000010
	addi	a4,a4,-00000100
	bltu	a4,a5,000000002303EDCA

l2303EE08:
	c.li	a1,00000001
	addi	a0,sp,+0000000E
	jal	ra,000000002303BA66
	lhu	a1,sp,+0000000E
	c.mv	a0,s0
	jal	ra,000000002303C3BA
	c.li	a2,00000000
	c.beqz	a0,000000002303EDCA

l2303EE20:
	sh	zero,a0,+00000000
	c.j	000000002303EDCA

;; mod_sub_add: 2303EE26
mod_sub_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.mv	s4,a1
	c.mv	s1,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EE6A

l2303EE4C:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303EE58:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303EE6A:
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023049430
	c.mv	s0,a0
	c.mv	a0,s2
	lw	s5,s1,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303EEA4

l2303EE80:
	lhu	a5,s1,+00000004
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000F

l2303EE90:
	lbu	a6,sp,+0000000F
	c.mv	a5,s5
	c.mv	a4,s0
	c.mv	a3,s2
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303DF62
	c.j	000000002303EE58

l2303EEA4:
	addi	a2,sp,+0000000F
	c.mv	a1,s1
	jal	ra,000000002303E8A4
	c.mv	s1,a0
	c.li	a2,00000002
	c.beqz	a0,000000002303EE90

l2303EEB4:
	c.lui	a5,00004000
	c.add	a5,s0
	c.slli	a5,10
	c.lui	a4,00004000
	c.srli	a5,00000010
	addi	a4,a4,-00000100
	c.li	a2,00000001
	bltu	a4,a5,000000002303EE90

l2303EEC8:
	c.mv	a1,s0
	jal	ra,000000002303C3BA
	c.li	a2,00000000
	c.bnez	a0,000000002303EE90

l2303EED2:
	lhu	a5,s1,+00000010
	c.beqz	a5,000000002303EEEE

l2303EED8:
	lhu	a5,s1,+00000012
	c.li	a2,00000005
	c.bnez	a5,000000002303EE90

l2303EEE0:
	sh	s0,s1,+00000012

l2303EEE4:
	c.mv	a0,s0
	jal	ra,000000002303B9D8
	c.li	a2,00000000
	c.j	000000002303EE90

l2303EEEE:
	sh	s0,s1,+00000010
	c.j	000000002303EEE4

;; mod_sub_va_del: 2303EEF4
mod_sub_va_del proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303EF3C

l2303EF1C:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303EF28:
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

l2303EF3C:
	c.mv	s1,a0
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023049400
	c.mv	s6,a0
	c.mv	a0,s1
	lw	s4,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303EF7E

l2303EF54:
	lhu	a5,s0,+00000004
	sh	zero,sp,+0000000E
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000D

l2303EF68:
	lbu	a6,sp,+0000000D
	lhu	a4,sp,+0000000E
	c.mv	a5,s4
	c.mv	a3,s1
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303DF62
	c.j	000000002303EF28

l2303EF7E:
	addi	a2,sp,+0000000D
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s5,a0
	c.bnez	a0,000000002303EFCA

l2303EF8C:
	sh	zero,sp,+0000000E
	c.li	a2,00000002
	c.j	000000002303EF68

l2303EF94:
	lhu	a5,s0,+00000000
	lhu	a4,s0,+00000002
	c.li	a2,00000000
	c.addi	a5,FFFFFFFF
	sh	a4,sp,+0000000E
	sh	a5,s0,+00000000
	c.beqz	a4,000000002303EF68

l2303EFAA:
	c.li	a1,00000001
	addi	a0,sp,+0000000E
	jal	ra,000000002303BA66
	lhu	a1,sp,+0000000E
	c.mv	a0,s5
	jal	ra,000000002303C3BA
	c.li	a2,0000000C
	c.beqz	a0,000000002303EF68

l2303EFC2:
	sh	zero,a0,+00000000
	c.li	a2,00000000
	c.j	000000002303EF68

l2303EFCA:
	lui	s0,00042014
	addi	s0,s0,+00000358
	c.li	a2,00000010
	c.mv	a1,s6
	addi	a0,s0,+00000004
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002303EF94

l2303EFE0:
	sh	zero,sp,+0000000E
	c.li	a2,0000000C
	c.j	000000002303EF68

;; va_add: 2303EFE8
;;   Called from:
;;     2303F18E (in mod_pub_va_set)
;;     2303F238 (in mod_sub_va_add)
;;     230404B0 (in mod_sub_va_overwrite)
va_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	addi	s0,s0,+00000358
	lhu	a5,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a5,000000002303F036

l2303F004:
	c.mv	a1,a0
	c.li	a2,00000010
	addi	a0,s0,+00000004
	jal	ra,00000000230A37A4
	c.li	a5,00000005
	c.bnez	a0,000000002303F028

l2303F014:
	lhu	a5,s0,+00000002
	sh	a5,s2,+00000000
	lhu	a5,s0,+00000000
	c.addi	a5,00000001
	sh	a5,s0,+00000000

l2303F026:
	c.li	a5,00000000

l2303F028:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303F036:
	jal	ra,0000000023041324
	c.li	a5,00000010
	blt	a0,zero,000000002303F028

l2303F040:
	c.li	a5,00000001
	sh	a5,s0,+00000000
	lhu	a5,s2,+00000000
	c.li	a2,00000010
	c.mv	a1,s1
	addi	a0,s0,+00000004
	sh	a5,s0,+00000002
	jal	ra,00000000230A382C
	c.j	000000002303F026

;; mod_pub_va_set: 2303F05C
mod_pub_va_set proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.mv	s4,a0
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.mv	s5,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303F0B4

l2303F08C:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303F098:
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
	c.addi16sp	00000040
	c.jr	ra

l2303F0B4:
	c.li	a1,00000010
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023049400
	c.mv	s8,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049414
	addi	a5,a0,-00000080
	andi	a5,a5,+000000FF
	addi	a4,zero,+0000007E
	c.mv	s7,a0
	bltu	a4,a5,000000002303F0F0

l2303F0E0:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+00000544
	jal	ra,0000000023082388
	c.j	000000002303F098

l2303F0F0:
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s9,a0
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s10,a0
	c.mv	a0,s3
	lw	s6,s0,+00000000
	jal	ra,000000002303C3DC
	c.mv	s1,a0
	c.bnez	a0,000000002303F13E

l2303F10E:
	lhu	a5,s0,+00000004
	sh	zero,sp,+0000000E
	c.li	a0,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000D

l2303F122:
	lbu	a4,sp,+0000000D
	lhu	a3,sp,+0000000E
	c.mv	a6,a0
	c.mv	a7,s6
	addi	a5,s1,+00000008
	c.mv	a2,s3
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002303E7B2
	c.j	000000002303F098

l2303F13E:
	addi	a2,sp,+0000000D
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s1,a0
	c.bnez	a0,000000002303F154

l2303F14C:
	sh	zero,sp,+0000000E
	c.li	a0,00000002
	c.j	000000002303F122

l2303F154:
	addi	a1,sp,+0000000E
	c.mv	a0,s8
	jal	ra,0000000023041324
	bge	a0,zero,000000002303F16A

l2303F162:
	sh	zero,sp,+0000000E
	c.li	a0,00000010
	c.j	000000002303F122

l2303F16A:
	lhu	a1,sp,+0000000E
	srli	a3,s2,0000000C
	slli	a2,s2,00000014
	c.mv	a6,s10
	c.mv	a5,s9
	c.mv	a4,s7
	c.andi	a3,00000001
	c.srli	a2,00000014
	c.mv	a0,s1
	jal	ra,000000002303E5FA
	c.bnez	a0,000000002303F122

l2303F188:
	addi	a1,sp,+0000000E
	c.mv	a0,s8
	jal	ra,000000002303EFE8
	c.j	000000002303F122

;; mod_sub_va_add: 2303F194
mod_sub_va_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.mv	s4,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002303F1D8

l2303F1BA:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2303F1C6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303F1D8:
	c.mv	s2,a0
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023049400
	c.mv	s1,a0
	c.mv	a0,s2
	lw	s5,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002303F21C

l2303F1F0:
	lhu	a5,s0,+00000004
	sh	zero,sp,+0000000E
	c.li	s1,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000D

l2303F204:
	lbu	a6,sp,+0000000D
	lhu	a4,sp,+0000000E
	c.mv	a5,s5
	c.mv	a3,s2
	c.mv	a2,s1
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303DF62
	c.j	000000002303F1C6

l2303F21C:
	c.mv	a1,s0
	addi	a2,sp,+0000000D
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.bnez	a0,000000002303F232

l2303F22A:
	sh	zero,sp,+0000000E
	c.li	s1,00000002
	c.j	000000002303F204

l2303F232:
	c.mv	a0,s1
	addi	a1,sp,+0000000E
	jal	ra,000000002303EFE8
	c.mv	s1,a0
	c.bnez	a0,000000002303F204

l2303F240:
	lhu	a1,sp,+0000000E
	c.mv	a0,s0
	jal	ra,000000002303C3BA
	c.bnez	a0,000000002303F204

l2303F24C:
	lhu	a5,s0,+00000010
	c.beqz	a5,000000002303F26E

l2303F252:
	lhu	a5,s0,+00000012
	c.bnez	a5,000000002303F272

l2303F258:
	c.li	a5,00000001

l2303F25A:
	lhu	a0,sp,+0000000E
	c.addi	a5,00000008
	c.slli	a5,01
	c.add	s0,a5
	sh	a0,s0,+00000000
	jal	ra,000000002303B9D8
	c.j	000000002303F204

l2303F26E:
	c.li	a5,00000000
	c.j	000000002303F25A

l2303F272:
	c.li	s1,00000005
	c.j	000000002303F204

;; dev_comp_data_get: 2303F276
dev_comp_data_get proc
	c.addi16sp	FFFFFF70
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	lui	a5,00000480
	c.swsp	s5,000000B8
	c.swsp	a5,00000008
	c.mv	s5,a0
	c.addi4spn	a5,00000018
	c.mv	a0,a2
	c.swsp	s6,00000038
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s7,000000B4
	c.mv	s6,a1
	c.swsp	a5,00000088
	jal	ra,0000000023049414
	c.beqz	a0,000000002303F2B2

l2303F2A4:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000001F0
	jal	ra,0000000023082388

l2303F2B2:
	c.li	a1,00000002
	c.addi4spn	a0,0000000C
	jal	ra,000000002303C6A0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023049306
	jal	ra,000000002303CA30
	lhu	a1,a0,+00000000
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	jal	ra,000000002304931C
	lhu	a1,s1,+00000002
	c.addi4spn	a0,0000000C
	c.li	s2,00000000
	jal	ra,000000002304931C
	lhu	a1,s1,+00000004
	c.addi4spn	a0,0000000C
	c.li	s4,0000001C
	jal	ra,000000002304931C
	c.li	a1,00000005
	c.addi4spn	a0,0000000C
	jal	ra,000000002304931C
	c.li	a1,0000000F
	c.addi4spn	a0,0000000C
	jal	ra,000000002304931C

l2303F2FA:
	c.lw	s1,8(a5)
	bltu	s2,a5,000000002303F31A

l2303F300:
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002303C700
	c.beqz	a0,000000002303F352

l2303F310:
	lui	a0,000230B8
	addi	a0,a0,+00000258
	c.j	000000002303F34E

l2303F31A:
	c.lw	s1,12(a5)
	slli	s0,s2,00000004
	c.addi4spn	a0,0000000C
	c.add	s0,a5
	jal	ra,00000000230494E0
	lbu	a5,s0,+00000004
	lbu	a4,s0,+00000005
	c.add	a5,a4
	c.addi	a5,00000002
	c.slli	a5,01
	bgeu	a0,a5,000000002303F368

l2303F33A:
	lui	a0,000230B8
	addi	a0,a0,+00000214
	jal	ra,0000000023082388
	lui	a0,000230B8
	addi	a0,a0,+00000234

l2303F34E:
	jal	ra,0000000023082388

l2303F352:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.lwsp	s5,000001B8
	c.lwsp	a7,000001D8
	c.lwsp	a3,000001F8
	c.addi16sp	00000090
	c.jr	ra

l2303F368:
	lhu	a1,s0,+00000002
	c.addi4spn	a0,0000000C
	c.li	s3,00000000
	jal	ra,000000002304931C
	lbu	a1,s0,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023049306
	lbu	a1,s0,+00000005
	c.addi4spn	a0,0000000C
	jal	ra,0000000023049306

l2303F388:
	lbu	a5,s0,+00000004
	blt	s3,a5,000000002303F39E

l2303F390:
	c.li	s3,00000000

l2303F392:
	lbu	a5,s0,+00000005
	blt	s3,a5,000000002303F3B4

l2303F39A:
	c.addi	s2,00000001
	c.j	000000002303F2FA

l2303F39E:
	add	a4,s3,s4
	c.lw	s0,8(a5)
	c.addi4spn	a0,0000000C
	c.addi	s3,00000001
	c.add	a5,a4
	lhu	a1,a5,+00000000
	jal	ra,000000002304931C
	c.j	000000002303F388

l2303F3B4:
	add	a5,s3,s4
	lw	s7,s0,+0000000C
	c.addi4spn	a0,0000000C
	c.addi	s3,00000001
	c.add	s7,a5
	lhu	a1,s7,+00000000
	jal	ra,000000002304931C
	lhu	a1,s7,+00000002
	c.addi4spn	a0,0000000C
	jal	ra,000000002304931C
	c.j	000000002303F392

;; app_key_set: 2303F3D6
;;   Called from:
;;     2303F514 (in app_key_update)
;;     2303F596 (in app_key_add)
app_key_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s5,00000080
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s4,a3
	jal	ra,0000000023042056
	c.beqz	a0,000000002303F4AC

l2303F3F4:
	c.mv	s5,a0
	c.mv	a0,s3
	jal	ra,0000000023046394
	c.mv	s0,a0
	beq	s4,zero,000000002303F464

l2303F402:
	c.li	a0,00000003
	c.beqz	s0,000000002303F41C

l2303F406:
	lhu	a5,s0,+00000000
	c.li	a0,00000011
	bne	a5,s2,000000002303F41C

l2303F410:
	lbu	a5,s5,+0000001F
	c.li	a4,00000001
	beq	a5,a4,000000002303F42E

l2303F41A:
	c.li	a0,0000000B

l2303F41C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303F42E:
	lbu	a4,s0,+00000004
	c.beqz	a4,000000002303F446

l2303F434:
	c.li	a2,00000010
	c.mv	a1,s1
	addi	a0,s0,+00000017
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002303F41A

l2303F442:
	c.li	a0,00000000
	c.j	000000002303F41C

l2303F446:
	addi	s5,s0,+00000016
	sb	a5,s0,+00000004

l2303F44E:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023040F4E
	c.beqz	a0,000000002303F4B0

l2303F458:
	c.li	a0,00000009
	beq	s4,zero,000000002303F41C

l2303F45E:
	sb	zero,s0,+00000004
	c.j	000000002303F41C

l2303F464:
	c.bnez	a0,000000002303F48E

l2303F466:
	lui	a4,0004200D
	addi	a4,a4,+000006BC
	lhu	a3,a4,+000001B4
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a3,a5,000000002303F4C6

l2303F47A:
	lhu	a4,a4,+000001DC
	c.li	a0,00000005
	bne	a4,a5,000000002303F41C

l2303F484:
	lui	s0,0004200E
	addi	s0,s0,-00000768
	c.j	000000002303F4CE

l2303F48E:
	lhu	s3,a0,+00000000
	bne	s3,s2,000000002303F4AC

l2303F496:
	c.li	a2,00000010
	c.mv	a1,s1
	c.addi	a0,00000006
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002303F442

l2303F4A2:
	lhu	a5,s0,+00000000
	c.li	a0,00000006
	beq	a5,s3,000000002303F41C

l2303F4AC:
	c.li	a0,00000004
	c.j	000000002303F41C

l2303F4B0:
	sh	s2,s0,+00000000
	sh	s3,s0,+00000002
	c.li	a2,00000010
	c.mv	a1,s1
	addi	a0,s5,+00000001
	jal	ra,00000000230A382C
	c.j	000000002303F442

l2303F4C6:
	lui	s0,0004200E
	addi	s0,s0,-00000790

l2303F4CE:
	addi	s5,s0,+00000005
	c.j	000000002303F44E

;; app_key_update: 2303F4D4
app_key_update proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,00000008
	c.swsp	s0,00000014
	c.swsp	a5,00000088
	c.mv	s0,a2
	lui	a5,000000A0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	addi	a2,sp,+00000006
	c.mv	s1,a0
	c.mv	s2,a1
	c.swsp	a5,0000000C
	c.addi4spn	a1,00000004
	c.addi4spn	a5,00000008
	c.mv	a0,s0
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303E5CA
	c.lui	a1,00008000
	c.addi	a1,00000003
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.lw	s0,0(a2)
	lhu	a1,sp,+00000006
	lhu	a0,sp,+00000004
	c.li	a3,00000001
	jal	ra,000000002303F3D6
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lhu	a2,sp,+00000006
	lhu	a1,sp,+00000004
	c.addi4spn	a0,00000014
	jal	ra,000000002303DAD8
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303F54A

l2303F53E:
	lui	a0,000230B8
	addi	a0,a0,-00000224
	jal	ra,0000000023082388

l2303F54A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; app_key_add: 2303F556
app_key_add proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,00000008
	c.swsp	s0,00000014
	c.swsp	a5,00000088
	c.mv	s0,a2
	lui	a5,000000A0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	addi	a2,sp,+00000006
	c.mv	s1,a0
	c.mv	s2,a1
	c.swsp	a5,0000000C
	c.addi4spn	a1,00000004
	c.addi4spn	a5,00000008
	c.mv	a0,s0
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303E5CA
	c.lui	a1,00008000
	c.addi	a1,00000003
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.lw	s0,0(a2)
	lhu	a1,sp,+00000006
	lhu	a0,sp,+00000004
	c.li	a3,00000000
	jal	ra,000000002303F3D6
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lhu	a2,sp,+00000006
	lhu	a1,sp,+00000004
	c.addi4spn	a0,00000014
	jal	ra,000000002303DAD8
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303F5CC

l2303F5C0:
	lui	a0,000230B8
	addi	a0,a0,-00000224
	jal	ra,0000000023082388

l2303F5CC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; hb_pwr2.constprop.15: 2303F5D8
;;   Called from:
;;     2303F63E (in hb_publish)
;;     2303F758 (in heartbeat_pub_set)
;;     2303FA12 (in heartbeat_sub_set)
hb_pwr2.constprop.15 proc
	c.beqz	a0,000000002303F5F8

l2303F5DA:
	addi	a5,zero,+000000FF
	beq	a0,a5,000000002303F5FC

l2303F5E2:
	c.li	a5,00000011
	beq	a0,a5,000000002303F5FC

l2303F5E8:
	addi	a5,a0,-00000001
	c.li	a0,00000001
	sll	a0,a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

l2303F5F8:
	c.li	a0,00000000
	c.jr	ra

l2303F5FC:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

;; hb_publish: 2303F602
hb_publish proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lhu	a0,a0,+0000002C
	jal	ra,0000000023042056
	c.bnez	a0,000000002303F634

l2303F616:
	lhu	a1,s0,+0000002C
	lui	a0,000230B8
	addi	a0,a0,+0000032C
	jal	ra,0000000023082388
	sh	zero,s0,+00000024

l2303F62A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303F634:
	lhu	s1,s0,+00000026
	c.beqz	s1,000000002303F62A

l2303F63A:
	lbu	a0,s0,+00000028
	jal	ra,000000002303F5D8
	addi	a1,zero,+000003E8
	add	a1,a0,a1
	c.slli	a1,10
	c.srli	a1,00000010
	c.beqz	a1,000000002303F65C

l2303F650:
	c.li	a5,00000001
	bgeu	a5,s1,000000002303F65C

l2303F656:
	c.mv	a0,s0
	jal	ra,00000000230498CA

l2303F65C:
	jal	ra,000000002304731E
	lhu	a5,s0,+00000026
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a5,a4,000000002303F62A

l2303F66C:
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000026
	c.j	000000002303F62A

;; heartbeat_pub_set: 2303F674
heartbeat_pub_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a2,0(s0)
	c.lui	a4,00004000
	c.mv	s4,a0
	lbu	s2,s0,+00000001
	lbu	a5,s0,+00000000
	c.mv	s5,a1
	c.slli	s2,08
	or	s2,s2,a5
	c.lui	a5,00008000
	xor	a5,s2,a5
	bltu	a5,a4,000000002303F796

l2303F6A4:
	lbu	a5,s0,+00000002
	addi	a4,zero,+000000EC
	c.addi	a5,FFFFFFEE
	andi	a5,a5,+000000FF
	bgeu	a4,a5,000000002303F79C

l2303F6B6:
	lbu	a4,s0,+00000003
	c.li	a5,00000010
	bltu	a5,a4,000000002303F79C

l2303F6C0:
	lbu	a1,s0,+00000004
	addi	a5,zero,+0000007E
	xori	a4,a1,+00000080
	bltu	a5,a4,000000002303F6EC

l2303F6D0:
	lui	a0,000230B8
	addi	a0,a0,+00000544

l2303F6D8:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303F6EC:
	lbu	a1,s0,+00000008
	lbu	a5,s0,+00000007
	c.slli	a1,08
	c.or	a1,a5
	c.lui	a5,00001000
	bltu	a1,a5,000000002303F708

l2303F6FE:
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.j	000000002303F6D8

l2303F708:
	lbu	s3,s0,+00000006
	lbu	a5,s0,+00000005
	c.lw	a0,24(s1)
	c.slli	s3,08
	c.mv	a0,a1
	or	s3,s3,a5
	c.swsp	a1,00000084
	jal	ra,0000000023042056
	c.beqz	a0,000000002303F7A0

l2303F722:
	sh	s2,s1,+00000030
	lbu	a5,s0,+00000003
	c.lwsp	a2,00000064
	andi	s3,s3,+0000000F
	sh	s3,s1,+00000036
	sb	a5,s1,+00000034
	sh	a1,s1,+00000038
	addi	s3,s1,+0000000C
	bne	s2,zero,000000002303F754

l2303F744:
	sw	zero,s1,+00000030
	sh	zero,s1,+00000034
	c.mv	a0,s3

l2303F74E:
	jal	ra,000000002304986E
	c.j	000000002303F77A

l2303F754:
	lbu	a0,s0,+00000002
	jal	ra,000000002303F5D8
	sh	a0,s1,+00000032
	lbu	a5,s0,+00000004
	c.mv	a0,s3
	sb	a5,s1,+00000035
	lbu	a5,s0,+00000003
	c.beqz	a5,000000002303F74E

l2303F770:
	lbu	a5,s0,+00000002
	c.beqz	a5,000000002303F74E

l2303F776:
	jal	ra,0000000023049772

l2303F77A:
	c.li	a3,00000000
	c.li	a2,00000000

l2303F77E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a1,s5
	c.mv	a0,s4
	c.lwsp	s4,000000A8
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,000000002303DE80

l2303F796:
	c.li	a2,00000001

l2303F798:
	c.mv	a3,s0
	c.j	000000002303F77E

l2303F79C:
	c.li	a2,0000000F
	c.j	000000002303F798

l2303F7A0:
	c.li	a2,00000004
	c.j	000000002303F798

;; _mod_unbind: 2303F7A4
_mod_unbind proc
	lhu	a1,a4,+00000000
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303DA98
	c.beqz	a0,000000002303F7C8

l2303F7BA:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002303E6EC

l2303F7C8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; hb_sub_send_status.constprop.14: 2303F7D0
;;   Called from:
;;     2303F8F4 (in heartbeat_sub_get)
;;     2303F9E6 (in heartbeat_sub_set)
hb_sub_send_status.constprop.14 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.addi4spn	a5,00000010
	c.lw	a0,24(s0)
	c.swsp	a5,00000080
	lui	a5,000000F0
	c.swsp	a5,00000004
	c.addi4spn	a5,00000010
	c.swsp	a5,00000084
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,0000000023048D2A
	c.lw	s0,68(a4)
	c.lw	s0,64(a5)
	blt	a4,a1,000000002303F8DA

l2303F7FC:
	bne	a1,a4,000000002303F804

l2303F800:
	bltu	a5,a0,000000002303F8DA

l2303F804:
	sub	a0,a5,a0
	sltu	a5,a5,a0
	sub	a1,a4,a1
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	c.sub	a1,a5
	jal	ra,000000002309F398
	slli	s3,a0,00000010
	srli	s3,s3,00000010

l2303F824:
	c.lui	a1,00008000
	addi	a1,a1,+0000003C
	c.addi4spn	a0,00000004
	jal	ra,000000002303C6A0
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023049306
	lhu	a1,s0,+00000048
	c.addi4spn	a0,00000004
	jal	ra,000000002304931C
	lhu	a1,s0,+0000004A
	c.addi4spn	a0,00000004
	jal	ra,000000002304931C
	c.li	a1,00000000
	beq	s3,zero,000000002303F86E

l2303F852:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	a1,zero,+000000FF
	beq	s3,a5,000000002303F86E

l2303F85E:
	c.mv	a0,s3
	jal	ra,000000002309F27C
	addi	a1,zero,+00000020
	c.sub	a1,a0
	andi	a1,a1,+000000FF

l2303F86E:
	c.addi4spn	a0,00000004
	jal	ra,0000000023049306
	lhu	a0,s0,+0000004C
	c.li	a1,00000000
	c.beqz	a0,000000002303F896

l2303F87C:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	a1,zero,+000000FF
	beq	a0,a5,000000002303F896

l2303F888:
	jal	ra,000000002309F27C
	addi	a1,zero,+00000020
	c.sub	a1,a0
	andi	a1,a1,+000000FF

l2303F896:
	c.addi4spn	a0,00000004
	jal	ra,0000000023049306
	lbu	a1,s0,+0000004E
	c.addi4spn	a0,00000004
	jal	ra,0000000023049306
	lbu	a1,s0,+0000004F
	c.addi4spn	a0,00000004
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303F8CC

l2303F8C0:
	lui	a0,000230B8
	addi	a0,a0,+00000350
	jal	ra,0000000023082388

l2303F8CC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303F8DA:
	c.li	s3,00000000
	c.j	000000002303F824

;; heartbeat_sub_get: 2303F8DE
heartbeat_sub_get proc
	c.lw	a0,24(a5)
	lhu	a4,a5,+00000048
	c.beqz	a4,000000002303F8EC

l2303F8E6:
	lhu	a4,a5,+0000004A
	c.bnez	a4,000000002303F8F4

l2303F8EC:
	sw	zero,a5,+00000048
	sw	zero,a5,+0000004C

l2303F8F4:
	jal	zero,000000002303F7D0

;; heartbeat_sub_set: 2303F8F8
heartbeat_sub_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s0,00000014
	c.lw	a0,24(s0)
	c.mv	s2,a0
	c.mv	a0,a2
	c.mv	s5,a2
	c.mv	s3,a1
	jal	ra,0000000023049430
	c.mv	s4,a0
	c.mv	a0,s5
	jal	ra,0000000023049430
	c.mv	s1,a0
	c.mv	a0,s5
	jal	ra,0000000023049414
	slli	a5,s4,00000010
	bge	a5,zero,000000002303F94A

l2303F92E:
	lui	a0,000230B8
	addi	a0,a0,+00000380

l2303F936:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303F94A:
	c.lui	a5,FFFF8000
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	c.lui	a4,00004000
	bgeu	a5,a4,000000002303F962

l2303F958:
	lui	a0,000230B8
	addi	a0,a0,+0000039C
	c.j	000000002303F936

l2303F962:
	addi	a5,s1,+00000100
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+000000FB
	bgeu	a4,a5,000000002303F958

l2303F972:
	slli	a5,s1,00000010
	c.srai	a5,00000010
	c.mv	a1,a0
	bge	zero,a5,000000002303F98A

l2303F97E:
	c.swsp	a0,00000084
	jal	ra,000000002303C3B0
	c.lwsp	a2,00000064
	bne	a0,s1,000000002303F958

l2303F98A:
	c.li	a5,00000011
	bgeu	a5,a1,000000002303F9AC

l2303F990:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	lui	a0,000230B8
	addi	a0,a0,+000003C0
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2303F9AC:
	beq	s4,zero,000000002303F9B4

l2303F9B0:
	c.beqz	s1,000000002303F9B4

l2303F9B2:
	c.bnez	a1,000000002303FA02

l2303F9B4:
	addi	a5,zero,+0000007F
	sw	zero,s0,+00000048
	sb	a5,s0,+0000004E
	c.li	s1,00000000

l2303F9C2:
	lhu	a0,s0,+0000004A
	jal	ra,0000000023046372
	c.beqz	s1,000000002303FA20

l2303F9CC:
	jal	ra,0000000023048D2A
	c.add	a0,s1
	srai	a5,s1,0000001F
	sltu	a4,a0,s1
	c.add	a5,a1
	c.add	a5,a4
	c.sw	s0,64(a0)
	c.sw	s0,68(a5)

l2303F9E2:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303F7D0
	c.bnez	s1,000000002303F9F0

l2303F9EC:
	sb	zero,s0,+0000004E

l2303F9F0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303FA02:
	lui	a5,000007F0
	sh	s1,s0,+0000004A
	sh	s4,s0,+00000048
	c.sw	s0,76(a5)
	c.mv	a0,a1
	jal	ra,000000002303F5D8
	addi	s1,zero,+000003E8
	add	s1,a0,s1
	c.j	000000002303F9C2

l2303FA20:
	c.li	a5,00000000
	c.li	a6,00000000
	c.sw	s0,64(a5)
	sw	a6,s0,+00000044
	c.j	000000002303F9E2

;; bt_mesh_app_key_del: 2303FA2C
;;   Called from:
;;     2303FAC6 (in app_key_del)
;;     230405EA (in bt_mesh_subnet_del)
;;     23040604 (in bt_mesh_subnet_del)
bt_mesh_app_key_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	a5,a0,+00000002
	c.mv	s0,a0
	lui	a0,0002303F
	sb	a1,sp,+0000000E
	addi	a0,a0,+000007A4
	c.addi4spn	a1,0000000C
	sh	a5,sp,+0000000C
	c.li	s1,FFFFFFFF
	jal	ra,000000002303C1BA
	addi	a0,s0,+00000005
	sh	s1,s0,+00000000
	addi	a2,zero,+00000022
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lwsp	t3,00000020
	sh	s1,s0,+00000002
	sb	zero,s0,+00000004
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; app_key_del: 2303FA76
app_key_del proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,00000008
	c.swsp	a5,00000088
	lui	a5,000000A0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	a5,0000000C
	c.mv	s1,a0
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	c.mv	s2,a1
	addi	a2,sp,+00000006
	c.addi4spn	a1,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a5,0000008C
	jal	ra,000000002303E5CA
	lhu	a0,sp,+00000004
	c.li	s0,00000004
	jal	ra,0000000023042056
	c.beqz	a0,000000002303FACC

l2303FAAA:
	lhu	a0,sp,+00000006
	c.li	s0,00000000
	jal	ra,0000000023046394
	c.beqz	a0,000000002303FACC

l2303FAB6:
	lhu	a4,a0,+00000000
	lhu	a5,sp,+00000004
	c.li	s0,00000011
	bne	a4,a5,000000002303FACC

l2303FAC4:
	c.li	a1,00000001
	jal	ra,000000002303FA2C
	c.li	s0,00000000

l2303FACC:
	c.lui	a1,00008000
	c.addi	a1,00000003
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	lhu	a2,sp,+00000006
	lhu	a1,sp,+00000004
	c.addi4spn	a0,00000014
	jal	ra,000000002303DAD8
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FB08

l2303FAFC:
	lui	a0,000230B8
	addi	a0,a0,-00000224
	jal	ra,0000000023082388

l2303FB08:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_cfg_srv_init: 2303FB14
;;   Called from:
;;     2303C19A (in mod_init)
bt_mesh_cfg_srv_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,24(s0)
	c.bnez	s0,000000002303FB30

l2303FB20:
	lui	a0,000230B8
	addi	a0,a0,-000001A0

l2303FB28:
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA
	c.j	000000002303FB80

l2303FB30:
	lbu	a4,s0,+00000005
	c.li	a5,00000002
	bltu	a5,a4,000000002303FB8A

l2303FB3A:
	lbu	a4,s0,+00000007
	c.li	a5,00000001
	bltu	a5,a4,000000002303FB8A

l2303FB44:
	lb	a5,s0,+0000000A
	blt	a5,zero,000000002303FB8A

l2303FB4C:
	c.li	a5,FFFFFFFE
	lui	a1,0002303F
	sh	a5,a0,+0000000C
	c.mv	s1,a0
	addi	a1,a1,+00000602
	addi	a0,s0,+0000000C
	jal	ra,0000000023049780
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000038
	c.li	a5,00000000
	c.li	a6,00000000
	c.sw	s0,64(a5)
	lui	a5,0004200F
	sw	a6,s0,+00000044
	c.sw	s0,0(s1)
	sw	s0,a5,+0000042C
	c.li	a0,00000000

l2303FB80:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303FB8A:
	lui	a0,000230B8
	addi	a0,a0,-00000174
	c.j	000000002303FB28

;; bt_mesh_heartbeat: 2303FB94
;;   Called from:
;;     23046200 (in ctl_recv)
bt_mesh_heartbeat proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	s0,0000000C
	lw	s0,a5,+0000042C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.bnez	s0,000000002303FBBE

l2303FBA8:
	lui	a0,000230B8
	addi	a0,a0,+000000F0

l2303FBB0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2303FBBE:
	lhu	a5,s0,+00000048
	bne	a5,a0,000000002303FBCE

l2303FBC6:
	lhu	a5,s0,+0000004A
	beq	a5,a1,000000002303FBD8

l2303FBCE:
	lui	a0,000230B8
	addi	a0,a0,+00000120
	c.j	000000002303FBB0

l2303FBD8:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.mv	s2,a1
	c.mv	s1,a0
	jal	ra,0000000023048D2A
	c.lw	s0,68(a5)
	blt	a5,a1,000000002303FBF8

l2303FBEA:
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	bne	a5,a1,000000002303FC02

l2303FBF2:
	c.lw	s0,64(a5)
	bgeu	a5,a0,000000002303FC02

l2303FBF8:
	lui	a0,000230B8
	addi	a0,a0,+0000014C
	c.j	000000002303FBB0

l2303FC02:
	lbu	a5,s0,+0000004E
	bgeu	a2,a5,000000002303FC0C

l2303FC0A:
	c.mv	a5,a2

l2303FC0C:
	sb	a5,s0,+0000004E
	lbu	a5,s0,+0000004F
	bgeu	a5,a2,000000002303FC1A

l2303FC18:
	c.mv	a5,a2

l2303FC1A:
	sb	a5,s0,+0000004F
	lhu	a5,s0,+0000004C
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a5,a4,000000002303FC30

l2303FC2A:
	c.addi	a5,00000001
	sh	a5,s0,+0000004C

l2303FC30:
	lw	t1,s0,+00000050
	beq	t1,zero,000000002303FC48

l2303FC38:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,s2
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l2303FC48:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_net_transmit_get: 2303FC54
;;   Called from:
;;     2303A85A (in blemesh_seg_send)
;;     2303A944 (in blemesh_net_send)
;;     2303B0AC (in clear_friendship)
;;     2303C732 (in bt_mesh_model_send)
;;     2303C796 (in bt_mesh_model_publish)
;;     2303C8F0 (in mod_publish)
;;     2303FC9C (in net_transmit_set)
;;     2303FD00 (in net_transmit_get)
;;     230431BA (in bt_mesh_net_recv)
;;     23046A86 (in send_ack)
;;     23047372 (in bt_mesh_heartbeat_send)
;;     2304749E (in send_friend_clear)
;;     23047D5C (in bt_mesh_friend_clear)
bt_mesh_net_transmit_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000000
	c.beqz	a5,000000002303FC64

l2303FC60:
	lbu	a0,a5,+00000004

l2303FC64:
	c.jr	ra

;; net_transmit_set: 2303FC66
net_transmit_set proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	a5,0000000C
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000008C
	c.lw	a0,24(a5)
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002303FCCE

l2303FC84:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l2303FC90:
	c.lui	a1,00008000
	addi	a1,a1,+00000025
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	jal	ra,000000002303FC54
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FCC4

l2303FCB8:
	lui	a0,000230B8
	addi	a0,a0,+00000644
	jal	ra,0000000023082388

l2303FCC4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2303FCCE:
	c.lw	a2,0(a4)
	lbu	a4,a4,+00000000
	sb	a4,a5,+00000004
	c.j	000000002303FC90

;; net_transmit_get: 2303FCDA
net_transmit_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000070
	c.lui	a1,00008000
	c.swsp	s0,00000014
	addi	a1,a1,+00000025
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	jal	ra,000000002303FC54
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FD28

l2303FD1C:
	lui	a0,000230B8
	addi	a0,a0,+00000614
	jal	ra,0000000023082388

l2303FD28:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_relay_get: 2303FD32
;;   Called from:
;;     2303C4A6 (in bt_mesh_fixed_group_match)
;;     2303FD9E (in relay_set)
;;     2303FE4E (in relay_get)
;;     230431A8 (in bt_mesh_net_recv)
;;     23043300 (in bt_mesh_net_recv)
;;     23047388 (in bt_mesh_heartbeat_send)
bt_mesh_relay_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000002
	c.beqz	a5,000000002303FD42

l2303FD3E:
	lbu	a0,a5,+00000005

l2303FD42:
	c.jr	ra

;; bt_mesh_friend_get: 2303FD44
;;   Called from:
;;     2303C496 (in bt_mesh_fixed_group_match)
;;     230473A0 (in bt_mesh_heartbeat_send)
;;     2304865A (in bt_mesh_friend_enqueue_rx)
;;     230487D6 (in bt_mesh_friend_enqueue_tx)
bt_mesh_friend_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000002
	c.beqz	a5,000000002303FD54

l2303FD50:
	lbu	a0,a5,+00000009

l2303FD54:
	c.jr	ra

;; bt_mesh_relay_retransmit_get: 2303FD56
;;   Called from:
;;     2303FDAA (in relay_set)
;;     2303FE5A (in relay_get)
;;     230431CA (in bt_mesh_net_recv)
bt_mesh_relay_retransmit_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000000
	c.beqz	a5,000000002303FD66

l2303FD62:
	lbu	a0,a5,+00000006

l2303FD66:
	c.jr	ra

;; relay_set: 2303FD68
relay_set proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000080
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	a5,0000000C
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000008C
	c.lw	a0,24(a5)
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002303FDD4

l2303FD86:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l2303FD92:
	c.lui	a1,00008000
	addi	a1,a1,+00000028
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	jal	ra,000000002303FD32
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	jal	ra,000000002303FD56
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FE1E

l2303FDC6:
	lui	a0,000230B8
	addi	a0,a0,+0000072C
	jal	ra,0000000023082388
	c.j	000000002303FE1E

l2303FDD4:
	c.lw	a2,0(a4)
	lbu	a1,a4,+00000000
	c.li	a4,00000001
	bltu	a4,a1,000000002303FE12

l2303FDE0:
	lbu	a4,a5,+00000005
	c.li	a0,00000002
	c.li	a3,00000000
	beq	a4,a0,000000002303FE02

l2303FDEC:
	sub	a4,a1,a4
	sb	a1,a5,+00000005
	sltu	a3,zero,a4
	c.lw	a2,0(a4)
	lbu	a4,a4,+00000001
	sb	a4,a5,+00000006

l2303FE02:
	lhu	a5,a5,+00000036
	c.andi	a5,00000001
	c.beqz	a5,000000002303FD92

l2303FE0A:
	c.beqz	a3,000000002303FD92

l2303FE0C:
	jal	ra,000000002304731E
	c.j	000000002303FD92

l2303FE12:
	lui	a0,000230B8
	addi	a0,a0,+0000070C
	jal	ra,0000000023082388

l2303FE1E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; relay_get: 2303FE28
relay_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000080
	c.lui	a1,00008000
	c.swsp	s0,00000014
	addi	a1,a1,+00000028
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	jal	ra,000000002303FD32
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	jal	ra,000000002303FD56
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FE82

l2303FE76:
	lui	a0,000230B8
	addi	a0,a0,+000006DC
	jal	ra,0000000023082388

l2303FE82:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_beacon_get: 2303FE8C
;;   Called from:
;;     2303CFAE (in beacon_send)
;;     2303D15C (in bt_mesh_beacon_ivu_initiator)
;;     2303D2FA (in bt_mesh_beacon_recv)
;;     2303FED2 (in beacon_set)
;;     2303FF5C (in beacon_get)
;;     23043356 (in bt_mesh_net_start)
bt_mesh_beacon_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000000
	c.beqz	a5,000000002303FE9C

l2303FE98:
	lbu	a0,a5,+00000007

l2303FE9C:
	c.jr	ra

;; beacon_set: 2303FE9E
beacon_set proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	a5,0000000C
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000008C
	c.lw	a0,24(a5)
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002303FEFC

l2303FEBC:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l2303FEC8:
	c.lui	a1,00008000
	c.addi	a1,0000000B
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	jal	ra,000000002303FE8C
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FF2E

l2303FEEE:
	lui	a0,000230B8
	addi	a0,a0,-000001D0
	jal	ra,0000000023082388
	c.j	000000002303FF2E

l2303FEFC:
	c.lw	a2,0(a4)
	lbu	a1,a4,+00000000
	c.li	a4,00000001
	bltu	a4,a1,000000002303FF22

l2303FF08:
	lbu	a4,a5,+00000007
	beq	a4,a1,000000002303FEC8

l2303FF10:
	sb	a1,a5,+00000007
	c.beqz	a1,000000002303FF1C

l2303FF16:
	jal	ra,000000002303D326
	c.j	000000002303FEC8

l2303FF1C:
	jal	ra,000000002303D388
	c.j	000000002303FEC8

l2303FF22:
	lui	a0,000230B8
	addi	a0,a0,-000001F8
	jal	ra,0000000023082388

l2303FF2E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; beacon_get: 2303FF38
beacon_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000070
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.addi	a1,0000000B
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	jal	ra,000000002303FE8C
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FF84

l2303FF78:
	lui	a0,000230B8
	addi	a0,a0,-000001D0
	jal	ra,0000000023082388

l2303FF84:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_gatt_proxy_get: 2303FF8E
;;   Called from:
;;     2304006A (in node_identity_set)
;;     230400B0 (in send_gatt_proxy_status)
;;     2304011C (in gatt_proxy_set)
;;     230426CC (in bt_mesh_net_sec_update)
;;     230431C0 (in bt_mesh_net_recv)
;;     230432B8 (in bt_mesh_net_recv)
;;     230432E4 (in bt_mesh_net_recv)
;;     23043364 (in bt_mesh_net_start)
;;     23044BD2 (in next_sub.part.6)
;;     23044C2A (in next_sub.part.6)
;;     230458EE (in bt_mesh_proxy_adv_start)
;;     2304596E (in bt_mesh_proxy_adv_start)
;;     230459C6 (in bt_mesh_proxy_adv_start)
;;     23047392 (in bt_mesh_heartbeat_send)
bt_mesh_gatt_proxy_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000002
	c.beqz	a5,000000002303FF9E

l2303FF9A:
	lbu	a0,a5,+00000008

l2303FF9E:
	c.jr	ra

;; node_identity_set: 2303FFA0
node_identity_set proc
	c.addi16sp	FFFFFFB0
	c.addi4spn	a5,00000018
	c.swsp	a5,00000090
	lui	a5,000000A0
	c.swsp	s4,0000001C
	c.swsp	a5,00000014
	c.mv	s4,a0
	c.addi4spn	a5,00000018
	c.mv	a0,a2
	c.swsp	s0,00000024
	c.swsp	s5,00000098
	c.swsp	a5,00000094
	c.swsp	a2,00000084
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.mv	s5,a1
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s0,a0
	c.lwsp	a2,00000084
	bltu	a0,a5,000000002303FFF4

l2303FFD4:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8

l2303FFDE:
	jal	ra,0000000023082388

l2303FFE2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2303FFF4:
	c.mv	a0,a2
	jal	ra,0000000023049414
	c.li	s3,00000001
	c.mv	s2,a0
	bgeu	s3,a0,000000002304000E

l23040002:
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+00000698
	c.j	000000002303FFDE

l2304000E:
	c.lui	a1,00008000
	addi	a1,a1,+00000048
	c.addi4spn	a0,00000024
	jal	ra,000000002303C6A0
	c.mv	a0,s0
	jal	ra,0000000023042056
	c.mv	s1,a0
	c.bnez	a0,000000002304005A

l23040024:
	c.li	a1,00000004
	c.addi4spn	a0,00000024
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.addi4spn	a0,00000024
	jal	ra,000000002304931C
	c.mv	a1,s2

l23040036:
	c.addi4spn	a0,00000024
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000024
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002303C700
	c.beqz	a0,000000002303FFE2

l2304004C:
	lui	a0,000230B8
	addi	a0,a0,+00000670
	jal	ra,0000000023082388
	c.j	000000002303FFE2

l2304005A:
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.addi4spn	a0,00000024
	jal	ra,000000002304931C
	jal	ra,000000002303FF8E
	bne	a0,s3,0000000023040080

l23040072:
	c.mv	a0,s1
	beq	s2,zero,0000000023040086

l23040078:
	jal	ra,00000000230452F0

l2304007C:
	jal	ra,000000002303CD2C

l23040080:
	lbu	a1,s1,+00000020
	c.j	0000000023040036

l23040086:
	jal	ra,000000002304532C
	c.j	000000002304007C

;; send_gatt_proxy_status: 2304008C
;;   Called from:
;;     230400E2 (in gatt_proxy_get)
;;     2304014A (in gatt_proxy_set)
send_gatt_proxy_status proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000070
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.addi	a1,00000014
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	jal	ra,000000002303FF8E
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,00000000230400D8

l230400CC:
	lui	a0,000230B8
	addi	a0,a0,+00000774
	jal	ra,0000000023082388

l230400D8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; gatt_proxy_get: 230400E2
gatt_proxy_get proc
	jal	zero,000000002304008C

;; gatt_proxy_set: 230400E6
gatt_proxy_set proc
	c.lw	a2,0(a5)
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s0,a5,+00000000
	c.li	a5,00000001
	bgeu	a5,s0,0000000023040118

l230400FE:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B8
	addi	a0,a0,+000002D8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23040118:
	c.mv	s3,a1
	c.mv	s1,a0
	jal	ra,000000002303FF8E
	c.li	a5,00000002
	beq	a0,a5,000000002304013A

l23040126:
	lw	s2,s1,+00000018
	bne	s2,zero,000000002304014E

l2304012E:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l2304013A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304008C

l2304014E:
	lbu	a5,s2,+00000008
	beq	a5,s0,000000002304013A

l23040156:
	sb	s0,s2,+00000008
	c.bnez	s0,000000002304019C

l2304015C:
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	lhu	a3,a4,+00000220
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	addi	s0,a5,+000006BC
	beq	a3,a4,0000000023040180

l23040174:
	lui	a0,0004200E
	addi	a0,a0,-00000740
	jal	ra,000000002304532C

l23040180:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023040198

l2304018C:
	lui	a0,0004200E
	addi	a0,a0,-0000065C
	jal	ra,000000002304532C

l23040198:
	jal	ra,0000000023045512

l2304019C:
	jal	ra,000000002303CD2C
	lhu	a5,s2,+00000036
	c.andi	a5,00000002
	c.beqz	a5,000000002304013A

l230401A8:
	jal	ra,000000002304731E
	c.j	000000002304013A

;; bt_mesh_default_ttl_get: 230401AE
;;   Called from:
;;     230401F4 (in default_ttl_set)
;;     2304027C (in default_ttl_get)
;;     23042C16 (in bt_mesh_net_send)
;;     23045BCA (in ack_timeout)
;;     2304666A (in bt_mesh_trans_send)
bt_mesh_default_ttl_get proc
	lui	a5,0004200F
	lw	a5,a5,+0000042C
	c.li	a0,00000007
	c.beqz	a5,00000000230401BE

l230401BA:
	lbu	a0,a5,+0000000A

l230401BE:
	c.jr	ra

;; default_ttl_set: 230401C0
default_ttl_set proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	a5,0000000C
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000008C
	c.lw	a0,24(a5)
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002304021E

l230401DE:
	lui	a0,000230B8
	addi	a0,a0,+000002AC
	jal	ra,0000000023082388

l230401EA:
	c.lui	a1,00008000
	c.addi	a1,0000000E
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	jal	ra,00000000230401AE
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002304024E

l23040210:
	lui	a0,000230B8
	addi	a0,a0,+000001C0
	jal	ra,0000000023082388
	c.j	000000002304024E

l2304021E:
	c.lw	a2,0(a4)
	lbu	a1,a4,+00000000
	slli	a4,a1,00000018
	c.srai	a4,00000018
	blt	a4,zero,0000000023040242

l2304022E:
	c.li	a4,00000001
	beq	a1,a4,0000000023040242

l23040234:
	lbu	a4,a5,+0000000A
	beq	a4,a1,00000000230401EA

l2304023C:
	sb	a1,a5,+0000000A
	c.j	00000000230401EA

l23040242:
	lui	a0,000230B8
	addi	a0,a0,+00000198
	jal	ra,0000000023082388

l2304024E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; default_ttl_get: 23040258
default_ttl_get proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000070
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.addi	a1,0000000E
	c.mv	s0,a0
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	jal	ra,00000000230401AE
	c.mv	a1,a0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,00000000230402A4

l23040298:
	lui	a0,000230B8
	addi	a0,a0,+000001C0
	jal	ra,0000000023082388

l230402A4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_label_uuid_get: 230402AE
;;   Called from:
;;     23040346 (in mod_sub_list_clear)
;;     23045C7C (in sdu_recv)
;;     2304648E (in bt_mesh_trans_send)
bt_mesh_label_uuid_get proc
	lui	a5,00042014
	addi	a5,a5,+00000358
	lhu	a4,a5,+00000002
	beq	a4,a0,00000000230402D8

l230402BE:
	c.mv	a1,a0
	lui	a0,000230B8
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000174
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230402D8:
	addi	a0,a5,+00000004
	c.jr	ra

;; mod_sub_list_clear: 230402DE
;;   Called from:
;;     230403FE (in mod_sub_del_all)
;;     230404A6 (in mod_sub_va_overwrite)
;;     23040576 (in mod_sub_overwrite)
;;     23040588 (in mod_reset)
mod_sub_list_clear proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042014
	addi	s2,s2,+00000358
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,a0,+00000010
	addi	s3,a0,+00000014
	c.li	s1,00000000
	c.lui	s4,FFFF8000
	c.lui	s5,00004000
	lui	s6,000230B8
	addi	s7,s2,+00000004
