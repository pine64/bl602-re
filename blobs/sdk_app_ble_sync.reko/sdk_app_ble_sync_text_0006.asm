;;; Segment .text (23000300)

l2306030A:
	c.li	a7,00000000
	c.li	s4,00000000
	c.li	s10,00000000
	c.li	t1,00000000
	c.li	a5,00000000

l23060314:
	c.lwsp	t3,0000006C
	addi	s9,a7,+00000002
	andi	s9,s9,+000000FF
	addi	a2,s11,+00000001
	bne	s10,a6,0000000023060420

l23060326:
	c.swsp	a2,0000008C
	sb	a5,s11,+00000000
	c.lwsp	t3,000000E4
	c.addi	s0,00000006
	c.add	s0,s9
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	sb	s4,a5,+00000000
	c.slli	s0,10
	sb	s9,a3,+00000000
	c.srli	s0,00000010

l23060344:
	c.lwsp	t3,000000E4
	add	a4,s1,s5
	c.mv	a6,s1
	c.sub	a5,s1

l2306034E:
	bne	a4,a6,0000000023060494

l23060352:
	c.lwsp	t3,000000E4
	c.add	s0,s5
	c.slli	s0,10
	c.add	s5,a5
	lw	a5,s3,+00000088
	c.swsp	s5,0000008C
	c.srli	s0,00000010
	c.andi	a5,00000001
	c.beqz	a5,00000000230603C6

l23060366:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000032
	jal	ra,000000002306D1BC
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000030
	addi	a5,zero,+00000050
	sb	a5,sp,+00000033
	addi	a5,zero,+000002F2
	sh	a5,sp,+00000034
	c.li	a5,00000001
	sb	a5,sp,+00000037
	lui	a5,0004201A
	lw	a5,a5,+000007D8
	c.beqz	a5,00000000230603A6

l2306039A:
	lb	a5,s3,+00000068
	bge	a5,zero,00000000230603A6

l230603A2:
	sb	s8,sp,+00000038

l230603A6:
	c.mv	a0,s5
	c.li	a2,00000009
	c.addi4spn	a1,00000030
	jal	ra,000000002305FC80
	lbu	a4,sp,+00000031
	c.lwsp	t3,000000E4
	addi	a0,a4,+00000002
	c.add	s0,a0
	c.addi	a5,00000002
	c.slli	s0,10
	c.add	a5,a4
	c.srli	s0,00000010
	c.swsp	a5,0000008C

l230603C6:
	lw	a5,s3,+00000088
	c.andi	a5,00000002
	c.beqz	a5,00000000230603E4

l230603CE:
	lui	a5,0004201D
	lbu	a5,a5,-00000716
	c.beqz	a5,00000000230603E4

l230603D8:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023060032
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l230603E4:
	lw	a4,s6,+00000000
	c.lwsp	t3,000000E4
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.sub	a5,a4
	sh	a5,s7,+00000000
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

l23060410:
	lui	s2,0004201D
	lbu	a6,a5,+0000012D
	addi	s2,s2,-000006C0
	c.li	t3,00000004
	c.j	000000002306030A

l23060420:
	lbu	a4,s2,+00000003
	c.swsp	a2,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002306048C

l2306042A:
	lhu	a1,s2,+00000000
	lbu	a0,s2,+00000002
	c.swsp	a6,00000088
	c.swsp	a7,00000008
	c.swsp	t3,00000084
	c.swsp	a5,00000080
	c.swsp	a3,00000000
	c.swsp	t1,00000004
	jal	ra,000000002305FC9C
	andi	a4,a0,+000000FF
	c.lwsp	zero,000000A4
	c.lwsp	a2,0000008C
	c.lwsp	a6,00000028
	c.lwsp	s4,00000008
	c.mv	a5,a4
	beq	s4,zero,0000000023060482

l23060454:
	c.lwsp	s0,000000C0
	andi	a0,a0,+000000FF
	c.lwsp	tp,000000E4
	sub	a0,a0,t1
	beq	a0,t3,0000000023060482

l23060464:
	c.lwsp	s8,00000084
	addi	a1,s4,+00000001
	c.mv	a7,s9
	c.swsp	a2,0000008C
	sb	a5,s11,+00000000
	c.lwsp	t3,00000084
	addi	a0,a2,+00000001
	c.swsp	a0,0000008C
	sb	s4,a2,+00000000
	andi	s4,a1,+000000FF

l23060482:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s2,00000006
	c.mv	t1,a4

l2306048C:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	0000000023060314

l23060494:
	lbu	a2,a6,+00000040
	add	a3,a5,a6
	c.addi	a6,00000001
	sb	a2,a3,+00000000
	c.j	000000002306034E

;; me_build_add_ba_req: 230604A4
;;   Called from:
;;     2305FB42 (in bam_send_air_action_frame)
me_build_add_ba_req proc
	c.li	a5,00000003
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lbu	a5,a1,+00000011
	sb	a5,a0,+00000002
	lbu	a5,a1,+0000000E
	lbu	a4,a1,+00000010
	c.slli	a5,01
	c.slli	a4,02
	c.or	a5,a4
	lbu	a4,a1,+0000000F
	c.slli	a4,06
	c.or	a5,a4
	sb	a5,a0,+00000003
	c.srli	a5,00000008
	sb	a5,a0,+00000004
	lhu	a5,a1,+0000000A
	sb	a5,a0,+00000005
	c.srli	a5,00000008
	sb	a5,a0,+00000006
	lhu	a5,a1,+00000008
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000007
	c.srli	a5,00000008
	sb	a5,a0,+00000008
	c.li	a0,00000009
	c.jr	ra

;; me_build_add_ba_rsp: 230604FC
;;   Called from:
;;     2305FB92 (in bam_send_air_action_frame)
me_build_add_ba_rsp proc
	c.li	a5,00000003
	sb	a5,a0,+00000000
	c.li	a5,00000001
	sb	a5,a0,+00000001
	sb	a2,a0,+00000005
	srli	a5,a4,00000008
	c.srli	a2,00000008
	sb	a5,a0,+00000004
	sb	a3,a0,+00000002
	sb	a4,a0,+00000003
	sb	a2,a0,+00000006
	addi	a5,a0,+00000007
	c.beqz	a4,0000000023060534

l23060528:
	sb	zero,a0,+00000007
	sb	zero,a5,+00000001

l23060530:
	c.li	a0,00000009
	c.jr	ra

l23060534:
	addi	a4,zero,-00000030
	sb	a4,a0,+00000007
	c.li	a4,00000007
	sb	a4,a5,+00000001
	c.j	0000000023060530

;; me_build_del_ba: 23060544
;;   Called from:
;;     2305FBA2 (in bam_send_air_action_frame)
me_build_del_ba proc
	c.li	a5,00000003
	sb	a5,a0,+00000000
	c.li	a5,00000002
	sb	a5,a0,+00000001
	lbu	a5,a1,+00000010
	lbu	a1,a1,+0000000D
	c.li	a4,00000001
	c.slli	a5,0C
	c.slli	a5,10
	addi	a3,a0,+00000002
	c.srli	a5,00000010
	bne	a1,a4,0000000023060574

l23060568:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l23060574:
	sb	zero,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a3,+00000001
	sb	a2,a0,+00000004
	c.srli	a2,00000008
	sb	a2,a0,+00000005
	c.li	a0,00000006
	c.jr	ra

;; me_extract_rate_set: 2306058C
;;   Called from:
;;     2304CBD8 (in scanu_frame_handler)
me_extract_rate_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a2
	sb	zero,a2,+00000000
	c.li	a2,00000001
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,0000000023050BF4
	c.beqz	a0,0000000023060620

l230605A8:
	lbu	a4,a0,+00000001
	c.li	a5,0000000C
	bltu	a5,a4,0000000023060620

l230605B2:
	addi	a5,s0,+00000001
	c.mv	a3,a4
	c.li	a1,FFFFFFFF

l230605BA:
	c.addi	a3,FFFFFFFF
	bne	a3,a1,000000002306062C

l230605C0:
	c.mv	a1,s2
	sb	a4,s0,+00000000
	addi	a2,zero,+00000032
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.mv	s2,a0
	c.beqz	a0,0000000023060620

l230605D4:
	lbu	s1,a0,+00000001
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	c.add	a5,s1
	bge	a4,a5,00000000230605FC

l230605E4:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000396
	addi	a1,a1,+00000388
	addi	a0,a0,-000003B8
	jal	ra,0000000023054FF4

l230605FC:
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	add	a3,a5,s1
	blt	a4,a3,0000000023060620

l2306060A:
	addi	a4,a5,+00000001
	c.addi	s2,00000002
	c.li	a5,00000000

l23060612:
	bne	s1,a5,000000002306063E

l23060616:
	lbu	a5,s0,+00000000
	c.add	s1,a5
	sb	s1,s0,+00000000

l23060620:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306062C:
	c.addi	a5,00000001
	sub	a2,a5,s0
	c.add	a2,a0
	lbu	a2,a2,+00000000
	sb	a2,a5,+00000FFF
	c.j	00000000230605BA

l2306063E:
	add	a3,s2,a5
	lbu	a2,a3,+00000000
	add	a3,a4,a5
	c.add	a3,s0
	sb	a2,a3,+00000000
	c.addi	a5,00000001
	c.j	0000000023060612

;; me_extract_power_constraint: 23060654
;;   Called from:
;;     2304D070 (in scanu_frame_handler)
;;     23061E86 (in me_beacon_check)
me_extract_power_constraint proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,0000000023050BF4
	c.li	a5,00000000
	c.beqz	a0,000000002306066C

l23060668:
	lbu	a5,a0,+00000002

l2306066C:
	sb	a5,s0,+00000084
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_extract_country_reg: 23060678
;;   Called from:
;;     2304D07A (in scanu_frame_handler)
me_extract_country_reg proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.li	a2,00000007
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,0000000023050BF4
	c.beqz	a0,00000000230606D8

l2306068C:
	c.lw	s0,76(s0)
	c.mv	s1,a0
	c.li	s2,00000001
	lbu	a0,s0,+00000002
	c.beqz	a0,000000002306069A

l23060698:
	c.li	s2,00000004

l2306069A:
	lhu	a1,s0,+00000000
	jal	ra,000000002305FC9C
	lbu	a2,s1,+00000001
	andi	a0,a0,+000000FF
	c.li	a5,00000005
	c.addi	a2,00000001

l230606AE:
	blt	a2,a5,00000000230606D8

l230606B2:
	add	a1,a5,s1
	lbu	a3,a1,+00000000
	lbu	a6,a1,+00000001
	c.li	a4,00000000

l230606C0:
	bne	a4,a6,00000000230606CC

l230606C4:
	c.addi	a5,00000003
	andi	a5,a5,+000000FF
	c.j	00000000230606AE

l230606CC:
	bne	a3,a0,00000000230606E4

l230606D0:
	lbu	a5,a1,+00000002
	sb	a5,s0,+00000004

l230606D8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230606E4:
	c.add	a3,s2
	c.addi	a4,00000001
	andi	a3,a3,+000000FF
	andi	a4,a4,+000000FF
	c.j	00000000230606C0

;; me_extract_mobility_domain: 230606F2
;;   Called from:
;;     2304D084 (in scanu_frame_handler)
me_extract_mobility_domain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000036
	c.swsp	ra,00000084
	jal	ra,0000000023050BF4
	c.bnez	a0,0000000023060714

l23060704:
	sh	zero,s0,+0000008C
	sb	zero,s0,+0000008E

l2306070C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23060714:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008C
	lbu	a5,a0,+00000004
	sb	a5,s0,+0000008E
	c.j	000000002306070C

;; me_extract_csa: 2306072E
;;   Called from:
;;     23061E3A (in me_beacon_check)
me_extract_csa proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a2
	addi	a2,zero,+00000025
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s4,a3
	c.swsp	s3,00000084
	c.swsp	s6,00000000
	jal	ra,0000000023050BF4
	c.mv	s2,a0
	addi	a2,zero,+0000003C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023050BF4
	or	a5,s2,a0
	beq	a5,zero,0000000023060868

l23060766:
	addi	a2,zero,+0000003E
	c.mv	a1,s1
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023050BF4
	c.mv	s6,a0
	addi	a2,zero,+000000C4
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023050BF4
	c.mv	s0,a0
	c.beqz	a0,0000000023060796

l23060786:
	lbu	a1,a0,+00000001
	addi	a2,zero,+000000C2
	c.addi	a0,00000002
	jal	ra,0000000023050BF4
	c.mv	s0,a0

l23060796:
	beq	s2,zero,0000000023060828

l2306079A:
	lbu	a5,s2,+00000002
	lbu	s1,s2,+00000004
	sb	a5,s5,+00000000
	lbu	a1,s2,+00000003

l230607AA:
	c.bnez	s1,00000000230607AE

l230607AC:
	c.li	s1,00000002

l230607AE:
	sltiu	s3,a1,+0000000F
	xori	s3,s3,+00000001
	c.mv	a0,s3
	jal	ra,000000002305FCF2
	c.mv	s5,a0
	c.beqz	s0,000000002306083A

l230607C0:
	lbu	a5,s0,+00000002
	c.li	a4,00000002
	lbu	a1,s0,+00000003
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	lbu	s6,s0,+00000004
	c.li	s2,00000001
	bltu	a4,a5,00000000230607E8

l230607DA:
	lui	a4,00023083
	addi	a4,a4,-000007B0
	c.add	a5,a4
	lbu	s2,a5,+00000000

l230607E8:
	c.mv	a0,s3
	jal	ra,000000002305FCF2
	c.mv	s0,a0
	c.li	a0,00000000
	beq	s6,zero,00000000230607FE

l230607F6:
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,000000002305FCF2

l230607FE:
	sh	a0,s4,+00000006
	sb	s3,s4,+00000000
	sb	s2,s4,+00000001
	sh	s5,s4,+00000002
	sh	s0,s4,+00000004
	c.mv	a0,s1

l23060814:
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

l23060828:
	lbu	a5,s3,+00000002
	lbu	s1,s3,+00000005
	sb	a5,s5,+00000000
	lbu	a1,s3,+00000004
	c.j	00000000230607AA

l2306083A:
	beq	s6,zero,0000000023060860

l2306083E:
	lbu	a5,s6,+00000002
	c.li	a4,00000001
	addi	s0,a0,+0000000A
	beq	a5,a4,0000000023060856

l2306084C:
	c.li	a4,00000003
	bne	a5,a4,0000000023060860

l23060852:
	addi	s0,a0,-0000000A

l23060856:
	c.slli	s0,10
	c.srli	s0,00000010
	c.li	a0,00000000
	c.li	s2,00000001
	c.j	00000000230607FE

l23060860:
	c.mv	s0,s5
	c.li	a0,00000000
	c.li	s2,00000000
	c.j	00000000230607FE

l23060868:
	c.li	a0,00000000
	c.j	0000000023060814

;; me_build_beacon: 2306086C
;;   Called from:
;;     23064712 (in apm_start_req_handler)
me_build_beacon proc
	c.addi16sp	FFFFFFB0
	c.swsp	s4,0000001C
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000020
	lui	s2,0004201C
	c.swsp	s7,00000094
	addi	s7,s2,-00000308
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s8,00000014
	c.swsp	s3,0000009C
	c.swsp	a0,00000084
	addi	a5,zero,-00000080
	c.add	s7,s4
	c.mv	s1,a1
	lui	a1,00023082
	lbu	s3,s7,+00000418
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	sb	zero,a0,+00000003
	addi	a1,a1,+000007F0
	c.mv	s6,a2
	c.addi	a0,00000004
	c.li	a2,00000006
	c.swsp	a4,00000004
	c.mv	s5,a3
	addi	s8,s7,+00000050
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+0000000A
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80
	lui	a3,0004201C
	addi	a3,a3,-00000370
	lhu	a5,a3,+00000054
	c.mv	a0,s1
	addi	s2,s2,-00000308
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+00000054
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000016
	c.srli	a5,00000008
	sb	a5,s0,+00000017
	lhu	a5,s7,+00000412
	c.lwsp	a2,000000A4
	sb	a5,a3,+00000020
	c.srli	a5,00000008
	sb	a5,a3,+00000021
	jal	ra,0000000023061A70
	c.lwsp	s0,000000C4
	beq	s3,zero,0000000023060932

l2306092A:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l23060932:
	c.lwsp	a2,000000E4
	addi	a2,s4,+0000037F
	c.add	a2,s2
	sb	a0,a5,+00000022
	c.srli	a0,00000008
	sb	a0,a5,+00000023
	c.lwsp	a2,000000E4
	addi	a5,a5,+00000024
	c.swsp	a5,00000084
	beq	a4,zero,0000000023060B7C

l23060950:
	lui	a0,0002307F
	c.mv	a1,a2
	addi	a0,a0,-000003D4
	jal	ra,0000000023003AC6
	c.li	a2,00000000
	c.li	a1,00000000

l23060962:
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FD3C
	addi	s7,s4,+000003B0
	addi	a0,a0,+00000024
	c.add	s7,s2
	slli	s0,a0,00000010
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FD78
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	a5,s2
	lbu	a4,a5,+000003B0
	c.li	a5,00000008
	bgeu	a5,a4,00000000230609A8

l2306099A:
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FDC8
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l230609A8:
	addi	s7,zero,+000005D8
	add	s7,s1,s7
	c.addi4spn	a0,0000000C
	c.add	s7,s2
	lw	a5,s7,+000003A4
	lhu	a1,a5,+00000000
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a1,a5
	c.li	a5,00000005
	xor	a1,a1,a5
	c.addi	a1,00000001
	andi	a1,a1,+000000FF
	jal	ra,000000002305FE08
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	sh	s0,s6,+00000000
	lbu	a1,s7,+000003AC
	c.addi4spn	a0,0000000C
	jal	ra,0000000023060012
	andi	a0,a0,+000000FF
	sb	a0,s5,+00000000
	c.add	s0,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FE4A
	c.lwsp	a2,00000064
	andi	a2,a0,+000000FF
	c.mv	s5,a0
	lui	a0,0004201E
	c.sub	a1,a2
	addi	a0,a0,+000001F0
	jal	ra,000000002306CF80
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FE28
	c.slli	s0,10
	c.srli	s0,00000010
	lw	a5,s7,+000003E0
	c.add	s0,a0
	andi	s5,s5,+000000FF
	c.add	s0,s5
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,0000000023060A4A

l23060A30:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023060032
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,00000000230600C6
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060A4A:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FF6A
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,0000000023060B62

l23060A6C:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,000000002306D1BC
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000010
	addi	a5,zero,+00000050
	sb	a5,sp,+00000013
	addi	a5,zero,+000002F2
	sh	a5,sp,+00000014
	c.li	a5,00000001
	sb	a5,sp,+00000017
	c.lwsp	a2,00000044
	lbu	a5,s2,+000003C0
	c.li	a2,00000009
	c.addi4spn	a1,00000010
	sb	a5,sp,+00000018
	jal	ra,000000002305FC80
	c.lwsp	a2,000000C4
	lbu	a5,a4,+00000001
	c.addi	a5,00000011
	sb	a5,a4,+00000001
	c.lwsp	a2,000000E4
	lbu	a4,sp,+00000011
	c.addi	a5,00000002
	c.add	a5,a4
	c.swsp	a5,00000084
	sb	zero,a5,+00000000
	c.lwsp	a2,000000A4
	lw	a5,s2,+0000000C
	addi	a4,a3,+00000001
	c.swsp	a4,00000084
	sb	a5,a3,+00000001
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	lw	a5,s2,+00000008
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	lw	a5,s2,+00000010
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	lw	a5,s2,+00000014
	c.lwsp	a2,000000C4
	srli	a3,a5,00000008
	sb	a5,a4,+00000004
	sb	a3,a4,+00000005
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000006
	sb	a5,a4,+00000007
	lbu	a0,sp,+00000011
	c.addi	a0,00000013
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060B62:
	c.mv	a0,s0
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

l23060B7C:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s2
	lbu	a1,a5,+0000037E
	c.j	0000000023060962

;; me_build_probe_rsp: 23060B8C
;;   Called from:
;;     2304F894 (in apm_send_mlme)
me_build_probe_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000018
	lui	s2,0004201C
	addi	a5,s2,-00000308
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.add	a5,s4
	lbu	s3,a5,+00000418
	lhu	a5,a5,+00000412
	c.swsp	a0,00000084
	c.mv	s1,a1
	sb	a5,a0,+00000008
	c.srli	a5,00000008
	sb	a5,a0,+00000009
	c.mv	a0,a1
	jal	ra,0000000023061A70
	addi	s2,s2,-00000308
	beq	s3,zero,0000000023060BDC

l23060BD4:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l23060BDC:
	addi	s5,zero,+000005D8
	add	s5,s1,s5
	c.lwsp	a2,000000E4
	addi	a2,s4,+0000037F
	c.add	a2,s2
	sb	a0,a5,+0000000A
	c.srli	a0,00000008
	sb	a0,a5,+0000000B
	c.lwsp	a2,000000E4
	c.addi4spn	a0,0000000C
	addi	s6,s4,+000003B0
	c.add	s5,s2
	lbu	a1,s5,+0000037E
	c.addi	a5,0000000C
	c.swsp	a5,00000084
	c.add	s6,s2
	jal	ra,000000002305FD3C
	c.mv	s0,a0
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FD78
	c.add	s0,a0
	lbu	a4,s5,+000003B0
	c.addi	s0,0000000C
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,0000000023060C38

l23060C2A:
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FDC8
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060C38:
	addi	s5,zero,+000005D8
	add	s5,s1,s5
	c.add	s5,s2
	lw	a5,s5,+000003A4
	lhu	a1,a5,+00000000
	lbu	a0,a5,+00000002
	jal	ra,000000002305FC9C
	andi	a1,a0,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FE08
	c.mv	s6,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FE4A
	c.add	a0,s6
	c.add	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FE28
	c.slli	s0,10
	lw	a5,s5,+000003E0
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,0000000023060C9E

l23060C84:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023060032
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,00000000230600C6
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060C9E:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FF6A
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,0000000023060DB6

l23060CC0:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,000000002306D1BC
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000010
	addi	a5,zero,+00000050
	sb	a5,sp,+00000013
	addi	a5,zero,+000002F2
	sh	a5,sp,+00000014
	c.li	a5,00000001
	sb	a5,sp,+00000017
	c.lwsp	a2,00000044
	lbu	a5,s2,+000003C0
	c.li	a2,00000009
	c.addi4spn	a1,00000010
	sb	a5,sp,+00000018
	jal	ra,000000002305FC80
	c.lwsp	a2,000000C4
	lbu	a5,a4,+00000001
	c.addi	a5,00000011
	sb	a5,a4,+00000001
	c.lwsp	a2,000000E4
	lbu	a4,sp,+00000011
	c.addi	a5,00000002
	c.add	a5,a4
	c.swsp	a5,00000084
	sb	zero,a5,+00000000
	c.lwsp	a2,000000A4
	lw	a5,s2,+0000000C
	addi	a4,a3,+00000001
	c.swsp	a4,00000084
	sb	a5,a3,+00000001
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	lw	a5,s2,+00000008
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	lw	a5,s2,+00000010
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	lw	a5,s2,+00000014
	c.lwsp	a2,000000C4
	srli	a3,a5,00000008
	sb	a5,a4,+00000004
	sb	a3,a4,+00000005
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000006
	sb	a5,a4,+00000007
	lbu	a0,sp,+00000011
	c.addi	a0,00000013
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060DB6:
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

;; me_build_associate_rsp: 23060DCC
;;   Called from:
;;     2304F8B2 (in apm_send_mlme)
me_build_associate_rsp proc
	addi	a4,zero,+000005D8
	add	a4,a1,a4
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	lui	s3,0004201C
	addi	a5,s3,-00000308
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.add	a5,a4
	lbu	s0,a5,+00000418
	c.swsp	a0,00000084
	c.mv	a0,a1
	c.swsp	a2,00000004
	c.mv	s2,a1
	c.mv	s4,a3
	jal	ra,0000000023061A70
	addi	s3,s3,-00000308
	c.lwsp	s0,00000084
	c.beqz	s0,0000000023060E0E

l23060E06:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l23060E0E:
	c.lwsp	a2,000000E4
	srli	a4,a2,00000008
	c.lui	a3,0000C000
	sb	a0,a5,+00000000
	c.srli	a0,00000008
	sb	a0,a5,+00000001
	c.lwsp	a2,000000E4
	c.li	s0,00000006
	sb	a2,a5,+00000002
	sb	a4,a5,+00000003
	lhu	a5,s4,+00000044
	c.lwsp	a2,000000C4
	c.or	a5,a3
	sb	a5,a4,+00000004
	c.srli	a5,00000008
	sb	a5,a4,+00000005
	c.lwsp	a2,000000E4
	c.addi	a5,00000006
	c.swsp	a5,00000084
	bne	a2,zero,0000000023060F9E

l23060E48:
	addi	s1,s4,+00000006
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FD78
	lbu	a4,s4,+00000006
	c.addi	a0,00000006
	slli	s0,a0,00000010
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,0000000023060E74

l23060E66:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002305FDC8
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060E74:
	lw	a5,s4,+00000040
	c.andi	a5,00000002
	c.beqz	a5,0000000023060E9C

l23060E7C:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023060032
	addi	a1,zero,+000005D8
	add	a1,s2,a1
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	c.add	a1,s3
	jal	ra,00000000230600C6
	c.add	a0,s1
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060E9C:
	lw	a5,s4,+00000040
	c.andi	a5,00000001
	beq	a5,zero,0000000023060F9E

l23060EA6:
	addi	s1,zero,+000005D8
	add	s1,s2,s1
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,000000002306D1BC
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000010
	addi	a5,zero,+00000050
	sb	a5,sp,+00000013
	addi	a5,zero,+000002F2
	c.add	s1,s3
	sh	a5,sp,+00000014
	c.li	a5,00000001
	sb	a5,sp,+00000017
	c.lwsp	a2,00000044
	lbu	a5,s1,+000003C0
	c.li	a2,00000009
	c.addi4spn	a1,00000010
	sb	a5,sp,+00000018
	jal	ra,000000002305FC80
	c.lwsp	a2,000000C4
	lbu	a5,a4,+00000001
	c.addi	a5,00000011
	sb	a5,a4,+00000001
	c.lwsp	a2,000000E4
	lbu	a4,sp,+00000011
	c.addi	a5,00000002
	c.add	a5,a4
	c.swsp	a5,00000084
	sb	zero,a5,+00000000
	c.lwsp	a2,000000A4
	c.lw	s1,12(a5)
	addi	a4,a3,+00000001
	c.swsp	a4,00000084
	sb	a5,a3,+00000001
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	c.lw	s1,8(a5)
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lwsp	a2,000000A4
	c.lw	s1,16(a5)
	addi	a4,a3,+00000004
	c.swsp	a4,00000084
	sb	a5,a3,+00000004
	srli	a3,a5,00000008
	sb	a3,a4,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003
	c.lw	s1,20(a5)
	c.lwsp	a2,000000C4
	srli	a3,a5,00000008
	sb	a5,a4,+00000004
	sb	a3,a4,+00000005
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000006
	sb	a5,a4,+00000007
	lbu	a0,sp,+00000011
	c.addi	a0,00000013
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l23060F9E:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; me_rc_set_rate_req_handler: 23060FB0
me_rc_set_rate_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lbu	s2,a1,+00000000
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a3,s2,a3
	addi	a4,a5,-000007F8
	c.mv	s3,a1
	addi	s1,a5,-000007F8
	c.add	a4,a3
	lw	s0,a4,+00000110
	c.bnez	s0,0000000023060FF6

l23060FDE:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000031D
	addi	a1,a1,+00000388
	addi	a0,a0,-00000304
	jal	ra,0000000023054FF4

l23060FF6:
	lhu	s3,s3,+00000002
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	s3,a5,0000000023061030

l23061002:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023062A44
	c.beqz	a0,0000000023061020

l2306100C:
	lbu	a5,s0,+000000AF
	sh	s3,s0,+000000C6
	andi	a5,a5,-00000061
	ori	a5,a5,+00000020
	sb	a5,s0,+000000AF

l23061020:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23061030:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+000000C6
	lbu	a5,s0,+000000AF
	lbu	a2,s0,+000000BC
	lbu	a1,s0,+000000BB
	andi	a5,a5,-00000061
	sb	a5,s0,+000000AF
	addi	a5,zero,+000001B0
	add	a5,s2,a5
	c.add	a5,s1
	lbu	a0,a5,+0000001B
	jal	ra,00000000230628A0
	c.j	0000000023061020

;; me_rc_stats_req_handler: 2306105E
me_rc_stats_req_handler proc
	c.addi	sp,FFFFFFF0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	addi	a0,a0,+0000040F
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+000000D0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,0000000023050474
	lbu	a3,s1,+00000000
	addi	a4,zero,+000001B0
	lui	a5,0004201B
	add	a4,a3,a4
	addi	a5,a5,-000007F8
	c.mv	s0,a0
	c.add	a5,a4
	lw	s1,a5,+00000110
	sb	a3,a0,+00000000
	c.beqz	s1,0000000023061126

l2306109C:
	lhu	a5,s1,+000000C0
	addi	a2,zero,+00000020
	addi	a1,s1,+0000007C
	sh	a5,a0,+00000002
	lhu	a5,s1,+000000A4
	c.addi	a0,00000010
	c.li	s2,00000000
	sh	a5,a0,+00000FF4
	lhu	a5,s1,+000000A6
	sh	a5,a0,+00000FF6
	lw	a5,s1,+000000A8
	sw	a5,a0,+00000FF8
	lbu	a5,s1,+000000B0
	sb	a5,a0,+00000FFC
	lbu	a5,s1,+000000AC
	sb	a5,a0,+00000FFD
	jal	ra,000000002306CF80
	addi	a2,zero,+00000078
	addi	a1,s1,+00000004
	addi	a0,s0,+00000030
	jal	ra,000000002306CF80

l230610EC:
	lhu	a5,s1,+000000C0
	bltu	s2,a5,0000000023061108

l230610F4:
	c.mv	a0,s0
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23061108:
	andi	a1,s2,+000000FF
	c.mv	a0,s1
	jal	ra,0000000023062ADE
	addi	a5,s2,+00000028
	c.slli	a5,02
	c.addi	s2,00000001
	c.add	a5,s0
	c.slli	s2,10
	c.sw	a5,8(a0)
	srli	s2,s2,00000010
	c.j	00000000230610EC

l23061126:
	sh	zero,a0,+00000002
	c.j	00000000230610F4

;; me_traffic_ind_req_handler: 2306112C
me_traffic_ind_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lbu	s1,a1,+00000000
	addi	a5,zero,+000001B0
	lui	s0,0004201B
	add	a5,s1,a5
	c.mv	s4,a2
	lbu	a2,a1,+00000002
	addi	a4,s0,-000007F8
	c.mv	s3,a3
	c.mv	s2,a1
	lbu	a3,a1,+00000001
	addi	s0,s0,-000007F8
	c.add	a4,a5
	lbu	a5,a4,+00000032
	c.beqz	a2,00000000230611DE

l23061168:
	andi	a4,a5,+000000FB
	c.beqz	a3,0000000023061172

l2306116E:
	ori	a4,a5,+00000004

l23061172:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.add	a5,s0
	sb	a4,a5,+00000032
	lbu	a4,a5,+000000F2
	c.li	a5,0000000F
	bne	a4,a5,00000000230611BE

l2306118A:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,0000000023050474
	addi	a4,zero,+000001B0
	add	s1,s1,a4
	c.add	s0,s1
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	lbu	a4,s2,+00000001
	sb	a4,a0,+00000002
	jal	ra,00000000230504E0

l230611BE:
	c.lui	a0,00001000
	c.mv	a2,s4
	c.mv	a1,s3
	addi	a0,a0,+0000040D
	jal	ra,000000002305054A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230611DE:
	c.beqz	a3,00000000230611EA

l230611E0:
	ori	a5,a5,+00000001

l230611E4:
	sb	a5,a4,+00000032
	c.j	000000002306118A

l230611EA:
	c.andi	a5,FFFFFFFE
	c.j	00000000230611E4

;; me_sta_del_req_handler: 230611EE
me_sta_del_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.swsp	s2,00000000
	c.li	a1,00000000
	c.mv	s2,a2
	c.mv	s1,a3
	c.li	a2,00000005
	c.li	a3,00000001
	c.li	a0,0000000C
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	lbu	a5,s0,+00000000
	sb	a5,a0,+00000000
	jal	ra,00000000230504E0
	lbu	a5,s0,+00000001
	c.beqz	a5,0000000023061252

l2306121C:
	c.lui	a0,00001000
	c.li	a2,00000006
	c.li	a3,00000002
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,0000000023050474
	sb	zero,a0,+00000000
	lbu	a4,s0,+00000000
	addi	a2,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a2
	addi	a5,a5,-000007F8
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,a0,+00000001
	jal	ra,00000000230504E0

l23061252:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+0000040A
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_set_control_port_req_handler: 2306126E
me_set_control_port_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	addi	a4,zero,+000001B0
	lui	s0,0004201B
	add	a5,a5,a4
	addi	s0,s0,-000007F8
	c.mv	s1,a3
	c.mv	s2,a2
	addi	a2,zero,+000005D8
	lui	a4,0004201C
	addi	a4,a4,-00000308
	c.add	s0,a5
	lbu	a3,s0,+0000001A
	lbu	a5,a1,+00000001
	add	a3,a3,a2
	sltu	a5,zero,a5
	c.addi	a5,00000001
	sb	a5,s0,+00000031
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.bnez	a4,00000000230612E2

l230612BC:
	c.li	a4,00000002
	bne	a5,a4,00000000230612E2

l230612C2:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,0000000023050474
	sb	zero,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000001
	jal	ra,00000000230504E0

l230612E2:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+00000405
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_chan_config_req_handler: 230612FE
me_chan_config_req_handler proc
	c.addi	sp,FFFFFFE0
	lui	a0,0004201D
	c.swsp	s0,0000000C
	addi	a0,a0,-00000714
	c.mv	s0,a2
	addi	a2,zero,+000000FE
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002306CF80
	c.lwsp	a2,000000A4
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000403
	c.mv	a1,a3
	jal	ra,000000002305054A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_set_ps_mode_cfm_handler: 23061332
mm_set_ps_mode_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,000000002306135E

l23061346:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000002BB
	addi	a1,a1,+00000388
	addi	a0,a0,-000002F4
	jal	ra,0000000023054FF4

l2306135E:
	lui	a5,0004201D
	lhu	a1,a5,-0000073C
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002306137A

l2306136E:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000414
	jal	ra,000000002305054A

l2306137A:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002305060E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_cfm_handler: 2306138C
mm_set_idle_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,00000000230613B8

l230613A0:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000252
	addi	a1,a1,+00000388
	addi	a0,a0,-000002F4
	jal	ra,0000000023054FF4

l230613B8:
	lui	a5,0004201D
	lhu	a1,a5,-0000073C
	addi	a5,zero,+000000FF
	beq	a1,a5,00000000230613D4

l230613C8:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000412
	jal	ra,000000002305054A

l230613D4:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002305060E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_config_req_handler: 230613E6
me_config_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a1
	c.swsp	s5,00000080
	c.mv	s4,a3
	c.mv	s5,a2
	c.li	a3,00000001
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000031
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023050474
	lbu	a5,s1,+0000002E
	lui	s0,0004201D
	addi	s2,s0,-00000744
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	s3,a0
	addi	a0,s2,+0000000C
	sb	a5,s2,+0000002E
	jal	ra,000000002306CF80
	c.lui	a0,00001000
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,+00000401
	jal	ra,000000002305054A
	lbu	a5,s2,+0000002E
	addi	s0,s0,-00000744
	c.beqz	a5,000000002306149C

l23061442:
	jal	ra,00000000230562E0
	lhu	a5,s0,+0000000C
	c.addi	a0,00000001
	c.srai	a0,00000001
	c.srli	a5,00000001
	c.andi	a5,00000001
	sb	a0,s0,+0000012E
	sb	a5,s0,+0000012F

l2306145A:
	lhu	a5,s1,+0000002C
	sh	a5,s0,+0000002C
	lbu	a5,s1,+00000030
	sb	a5,s0,+00000130
	c.beqz	a5,0000000023061488

l2306146C:
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000008
	c.li	a5,00000002
	c.mv	a0,s3
	sb	a5,s3,+00000000
	jal	ra,00000000230504E0
	c.li	a1,00000001
	c.li	a0,00000005
	jal	ra,000000002305060E

l23061488:
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

l2306149C:
	sh	zero,s0,+0000012E
	c.j	000000002306145A

;; me_set_ps_disable_req_handler: 230614A2
me_set_ps_disable_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201D
	c.swsp	s4,00000004
	addi	s4,s0,-00000744
	lbu	a5,s4,+00000130
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s1,a2
	c.mv	s2,a3
	c.bnez	a5,00000000230614E4

l230614C2:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000414
	jal	ra,000000002305054A

l230614D0:
	c.li	a4,00000000

l230614D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l230614E4:
	c.li	a0,00000005
	c.mv	s3,a1
	jal	ra,000000002305070E
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,00000000230614D2

l230614F4:
	lw	a4,s4,+00000004
	addi	s0,s0,-00000744
	lbu	a3,s3,+00000000
	c.beqz	a4,0000000023061544

l23061502:
	c.bnez	a3,0000000023061558

l23061504:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000031
	jal	ra,0000000023050474
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,0000000023061548

l2306151C:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	c.or	a5,a4

l23061526:
	c.sw	s0,4(a5)
	sltiu	a5,a5,+00000001
	sh	s2,s0,+00000008
	c.slli	a5,01
	sb	a5,a0,+00000000
	jal	ra,00000000230504E0
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002305060E
	c.j	00000000230614D0

l23061544:
	c.beqz	a3,00000000230614C2

l23061546:
	c.j	0000000023061504

l23061548:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	0000000023061526

l23061558:
	lbu	a3,s3,+00000001
	sll	a5,a5,a3
	c.or	a5,a4
	sw	a5,s4,+00000004
	c.j	00000000230614C2

;; me_set_active_req_handler: 23061568
me_set_active_req_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000005
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s2,a3
	jal	ra,000000002305070E
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,00000000230615EE

l23061588:
	lui	s0,0004201D
	addi	a4,s0,-00000744
	c.lw	a4,0(a3)
	lbu	a2,s3,+00000000
	addi	s0,s0,-00000744
	c.beqz	a3,00000000230615DC

l2306159C:
	c.bnez	a2,000000002306160E

l2306159E:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000022
	jal	ra,0000000023050474
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,00000000230615FE

l230615B6:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	c.or	a5,a4

l230615C0:
	c.sw	s0,0(a5)
	sh	s2,s0,+00000008
	sltiu	a5,a5,+00000001
	sb	a5,a0,+00000000
	jal	ra,00000000230504E0
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002305060E
	c.j	00000000230615EC

l230615DC:
	c.bnez	a2,000000002306159E

l230615DE:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000412
	jal	ra,000000002305054A

l230615EC:
	c.li	a4,00000000

l230615EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l230615FE:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	00000000230615C0

l2306160E:
	lbu	a2,s3,+00000001
	sll	a5,a5,a2
	c.or	a5,a3
	c.sw	a4,0(a5)
	c.j	00000000230615DE

;; me_sta_add_req_handler: 2306161C
me_sta_add_req_handler proc
	c.addi16sp	FFFFFFA0
	c.lui	a0,00001000
	c.swsp	s0,0000002C
	addi	a0,a0,+00000408
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000003
	c.swsp	ra,000000AC
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	jal	ra,0000000023050474
	c.mv	s5,a0
	jal	ra,000000002304C67A
	c.lw	s0,64(a5)
	c.mv	s6,a0
	lbu	s4,s0,+00000049
	c.andi	a5,00000002
	beq	a5,zero,0000000023061824

l23061658:
	lbu	a5,s0,+00000016
	c.li	a4,00000002
	c.li	s2,00000001
	andi	s1,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a4,a5,0000000023061676

l2306166C:
	c.addi	a5,FFFFFFFD
	sll	a5,s2,a5
	andi	s2,a5,+000000FF

l23061676:
	addi	a5,s1,+0000000D
	c.li	s1,00000001
	sll	s1,s1,a5
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010

l23061686:
	c.li	a2,00000006
	c.mv	a1,s0
	addi	a0,sp,+0000001A
	c.swsp	zero,00000088
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000054
	addi	a2,sp,+0000000F
	c.mv	a1,s5
	sb	a5,sp,+00000023
	c.lw	s0,76(a5)
	c.addi4spn	a0,00000010
	sh	s1,sp,+00000018
	c.swsp	a5,00000090
	c.lw	s0,80(a5)
	c.swsp	zero,00000008
	sb	s2,sp,+00000020
	c.swsp	a5,00000014
	lbu	a5,s0,+00000055
	sb	s4,sp,+00000021
	sb	a5,sp,+0000002C
	jal	ra,000000002305DCD6
	sb	a0,s5,+00000001
	bne	a0,zero,0000000023061802

l230616CE:
	lbu	s1,s5,+00000000
	addi	s2,zero,+000001B0
	lui	s3,0004201B
	add	s2,s1,s2
	addi	a5,s3,-000007F8
	c.li	a2,0000000D
	addi	a1,s0,+00000006
	lui	s7,0004201C
	addi	s3,s3,-000007F8
	addi	s7,s7,-00000308
	c.add	s2,a5
	addi	a0,s2,+000000B0
	jal	ra,000000002306CF80
	c.lw	s0,64(a5)
	c.andi	a5,00000001
	bne	a5,zero,000000002306182A

l23061706:
	c.li	s9,00000000

l23061708:
	addi	s8,zero,+000001B0
	add	s8,s1,s8
	lbu	a5,s0,+00000046
	c.mv	a0,s2
	c.add	s8,s3
	sb	a5,s8,+000000F2
	lbu	a5,s0,+00000047
	sb	a5,s8,+000000F3
	lhu	a5,s0,+00000044
	sh	a5,s8,+00000018
	c.jal	0000000023061CFC
	c.lw	s0,64(a5)
	c.andi	a5,00000010
	c.beqz	a5,0000000023061750

l23061734:
	lbu	a1,s0,+00000048
	slli	a5,a1,00000018
	c.srai	a5,00000018
	blt	a5,zero,0000000023061750

l23061742:
	lbu	a0,s8,+0000001B
	srli	a2,a1,00000004
	c.andi	a1,00000003
	jal	ra,0000000023061F76

l23061750:
	beq	s9,zero,000000002306176C

l23061754:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.li	a2,00000000
	addi	a1,zero,+000000FF
	c.add	a5,s3
	lbu	a0,a5,+0000001B
	jal	ra,0000000023061F76

l2306176C:
	addi	s2,zero,+000001B0
	add	a5,s1,s2
	c.add	a5,s3
	lbu	a4,a5,+0000011A
	ori	a4,a4,+00000010
	sb	a4,a5,+0000011A
	addi	a4,zero,+000005D8
	add	a4,s4,a4
	c.add	a4,s7
	lw	a3,a4,+000005C4
	c.andi	a3,00000001
	sltiu	a3,a3,+00000001
	c.addi	a3,00000001
	sb	a3,a5,+00000031
	lhu	a3,a4,+0000034C
	slli	a2,a3,00000008
	c.srli	a3,00000008
	c.or	a3,a2
	sh	a3,a5,+00000038
	sb	s6,s5,+00000002
	beq	s6,zero,0000000023061802

l230617B4:
	sb	s6,a5,+0000001C
	lbu	a5,a4,+0000034A
	c.bnez	a5,00000000230617EE

l230617BE:
	lbu	s0,a4,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s0,0000000A
	andi	s0,s0,+000000FF
	add	s2,s0,s2
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,0000000023050474
	c.li	a4,00000001
	c.add	s3,s2
	sb	a4,s3,+0000001C
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	jal	ra,00000000230504E0

l230617EE:
	addi	a5,zero,+000005D8
	add	s4,s4,a5
	c.add	s7,s4
	lbu	a5,s7,+0000034A
	c.addi	a5,00000001
	sb	a5,s7,+0000034A

l23061802:
	c.mv	a0,s5
	jal	ra,00000000230504E0
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.lwsp	s4,0000013C
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l23061824:
	c.li	s2,00000000
	c.li	s1,00000000
	c.j	0000000023061686

l2306182A:
	lw	a5,s2,+000000EC
	ori	a4,a5,+00000001
	sw	a4,s2,+000000EC
	c.lw	s0,64(a4)
	c.andi	a4,00000002
	beq	a4,zero,0000000023061706

l2306183E:
	lui	a4,0004201D
	lbu	a4,a4,-00000716
	beq	a4,zero,0000000023061706

l2306184A:
	ori	a5,a5,+00000003
	sw	a5,s2,+000000EC
	addi	a2,zero,+00000020
	addi	a1,s0,+00000014
	addi	a0,s2,+000000C0
	jal	ra,000000002306CF80
	addi	a1,zero,+000005D8
	add	a1,s4,a1
	c.mv	a0,s2
	addi	a1,a1,+00000358
	c.add	a1,s7
	c.jal	0000000023061878
	c.mv	s9,a0
	c.j	0000000023061708

;; me_set_sta_ht_vht_param: 23061878
;;   Called from:
;;     23061872 (in me_sta_add_req_handler)
;;     2306406E (in mm_sta_add_cfm_handler)
me_set_sta_ht_vht_param proc
	lhu	a5,a0,+000000C0
	lui	a4,0004201D
	addi	a6,a4,-00000744
	lbu	a7,a6,+0000012F
	srli	a3,a5,00000001
	srai	a2,a5,00000008
	c.andi	a3,00000001
	c.andi	a2,00000003
	bgeu	a7,a3,000000002306189A

l23061898:
	c.mv	a3,a7

l2306189A:
	sb	a3,a0,+000000F0
	lbu	a4,a1,+00000083
	c.li	a1,00000004
	bne	a4,a1,00000000230618AA

l230618A8:
	c.li	a4,00000002

l230618AA:
	bgeu	a3,a4,00000000230618B0

l230618AE:
	c.mv	a4,a3

l230618B0:
	sb	a4,a0,+000000F1
	lbu	a4,a6,+0000012E
	bgeu	a2,a4,00000000230618BE

l230618BC:
	c.mv	a4,a2

l230618BE:
	sb	a4,a0,+000000F4
	andi	a0,a5,+0000000C
	c.addi	a0,FFFFFFF4
	sltu	a0,zero,a0
	c.jr	ra

;; me_11n_nss_max: 230618CE
;;   Called from:
;;     23061FD6 (in me_sta_bw_nss_max_upd)
;;     23061FE4 (in me_sta_bw_nss_max_upd)
;;     23062F9E (in rc_init)
;;     23062FAC (in rc_init)
me_11n_nss_max proc
	lbu	a5,a0,+00000003
	c.bnez	a5,00000000230618E8

l230618D4:
	lbu	a4,a0,+00000002
	c.li	a5,00000002
	c.bnez	a4,00000000230618E4

l230618DC:
	lbu	a5,a0,+00000001
	c.beqz	a5,00000000230618E4

l230618E2:
	c.li	a5,00000001

l230618E4:
	c.mv	a0,a5
	c.jr	ra

l230618E8:
	c.li	a5,00000003
	c.j	00000000230618E4

;; me_legacy_ridx_min: 230618EC
;;   Called from:
;;     2306300E (in rc_init)
;;     23063186 (in rc_init)
me_legacy_ridx_min proc
	c.li	a5,00000000
	c.li	a2,0000000C

l230618F0:
	sra	a4,a0,a5
	c.andi	a4,00000001
	andi	a3,a5,+000000FF
	c.bnez	a4,0000000023061904

l230618FC:
	c.addi	a5,00000001
	bne	a5,a2,00000000230618F0

l23061902:
	c.li	a3,0000000C

l23061904:
	c.mv	a0,a3
	c.jr	ra

;; me_legacy_ridx_max: 23061908
;;   Called from:
;;     23063044 (in rc_init)
;;     230631BC (in rc_init)
me_legacy_ridx_max proc
	c.beqz	a0,0000000023061932

l2306190A:
	c.li	a5,0000000B
	c.li	a1,0000000B
	c.li	a2,FFFFFFFF

l23061910:
	sra	a3,a0,a5
	sub	a4,a1,a5
	c.andi	a3,00000001
	andi	a4,a4,+000000FF
	c.bnez	a3,0000000023061928

l23061920:
	c.addi	a5,FFFFFFFF
	bne	a5,a2,0000000023061910

l23061926:
	c.li	a4,0000000C

l23061928:
	c.li	a0,0000000B
	c.sub	a0,a4
	andi	a0,a0,+000000FF
	c.jr	ra

l23061932:
	c.li	a0,0000000C
	c.jr	ra

;; me_rate_translate: 23061936
;;   Called from:
;;     2304FE08 (in apm_assoc_req_handler)
;;     23061A48 (in me_legacy_rate_bitfield_build)
;;     23061AFA (in me_init_bcmc_rate)
me_rate_translate proc
	andi	a5,a0,+0000007F
	c.li	a4,00000016
	beq	a5,a4,00000000230619AE

l23061940:
	bltu	a4,a5,0000000023061974

l23061944:
	c.li	a4,0000000B
	c.li	a0,00000002
	beq	a5,a4,00000000230619B0

l2306194C:
	bltu	a4,a5,0000000023061966

l23061950:
	c.li	a4,00000002
	c.li	a0,00000000
	beq	a5,a4,00000000230619B0

l23061958:
	c.li	a4,00000004
	c.li	a0,00000001

l2306195C:
	beq	a5,a4,00000000230619B0

l23061960:
	addi	a0,zero,+000000FF
	c.jr	ra

l23061966:
	c.li	a4,0000000C
	c.li	a0,00000004
	beq	a5,a4,00000000230619B0

l2306196E:
	c.li	a4,00000012
	c.li	a0,00000005
	c.j	000000002306195C

l23061974:
	addi	a4,zero,+00000030
	c.li	a0,00000008
	beq	a5,a4,00000000230619B0

l2306197E:
	bltu	a4,a5,0000000023061992

l23061982:
	c.li	a4,00000018
	c.li	a0,00000006
	beq	a5,a4,00000000230619B0

l2306198A:
	addi	a4,zero,+00000024
	c.li	a0,00000007
	c.j	000000002306195C

l23061992:
	addi	a4,zero,+00000060
	c.li	a0,0000000A
	beq	a5,a4,00000000230619B0

l2306199C:
	addi	a4,zero,+0000006C
	c.li	a0,0000000B
	beq	a5,a4,00000000230619B0

l230619A6:
	addi	a4,zero,+00000048
	c.li	a0,00000009
	c.j	000000002306195C

l230619AE:
	c.li	a0,00000003

l230619B0:
	c.jr	ra

;; me_get_basic_rates: 230619B2
;;   Called from:
;;     23064638 (in apm_start_req_handler)
me_get_basic_rates proc
	sb	zero,a1,+00000000
	c.li	a5,00000000

l230619B8:
	lbu	a4,a0,+00000000
	blt	a5,a4,00000000230619C2

l230619C0:
	c.jr	ra

l230619C2:
	add	a4,a0,a5
	lbu	a3,a4,+00000001
	slli	a4,a3,00000018
	c.srai	a4,00000018
	bge	a4,zero,00000000230619E6

l230619D4:
	lbu	a4,a1,+00000000
	add	a2,a1,a4
	sb	a3,a2,+00000001
	c.addi	a4,00000001
	sb	a4,a1,+00000000

l230619E6:
	c.addi	a5,00000001
	c.j	00000000230619B8

;; me_legacy_rate_bitfield_build: 230619EA
;;   Called from:
;;     2304CBEA (in scanu_frame_handler)
;;     2304DA94 (in sm_set_bss_param)
;;     2304F304 (in apm_set_bss_param)
;;     2304FC9C (in apm_assoc_req_handler)
;;     23062F8A (in rc_init)
;;     2306317E (in rc_init)
;;     23064794 (in apm_start_req_handler)
me_legacy_rate_bitfield_build proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s4,a1
	c.li	s0,00000000
	c.li	s1,00000000
	c.li	s5,0000000B
	c.li	s3,00000001
	lui	s6,0002307B
	lui	s7,0002307F

l23061A12:
	lbu	a5,s2,+00000000
	blt	s1,a5,0000000023061A32

l23061A1A:
	c.mv	a0,s0
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

l23061A32:
	add	a5,s2,s1
	lbu	a0,a5,+00000001
	beq	s4,zero,0000000023061A48

l23061A3E:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	bge	a5,zero,0000000023061A60

l23061A48:
	jal	ra,0000000023061936
	bge	s5,a0,0000000023061A64

l23061A50:
	addi	a2,zero,+000001C6
	addi	a1,s6,+00000388
	addi	a0,s7,-000002A4
	jal	ra,0000000023054FF6

l23061A60:
	c.addi	s1,00000001
	c.j	0000000023061A12

l23061A64:
	sll	a0,s3,a0
	c.or	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.j	0000000023061A60

;; me_build_capability: 23061A70
;;   Called from:
;;     230601E0 (in me_build_associate_req)
;;     23060920 (in me_build_beacon)
;;     23060BC8 (in me_build_probe_rsp)
;;     23060DFA (in me_build_associate_rsp)
me_build_capability proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	lui	a5,0004201C
	addi	a3,a5,-00000308
	addi	a5,a5,-00000308
	c.add	a3,a4
	lbu	a2,a3,+00000056
	c.li	a4,00000011
	c.beqz	a2,0000000023061AA6

l23061A8E:
	c.li	a1,00000002
	c.li	a4,00000001
	bne	a2,a1,0000000023061AA6

l23061A96:
	lw	a3,a3,+000003E8
	c.lui	a2,00013000
	addi	a2,a2,-00000600
	c.and	a3,a2
	c.beqz	a3,0000000023061AA6

l23061AA4:
	c.li	a4,00000011

l23061AA6:
	addi	a3,zero,+000005D8
	add	a0,a0,a3
	c.add	a5,a0
	lw	a5,a5,+000003A4
	ori	a0,a4,+00000520
	lbu	a3,a5,+00000002
	c.li	a5,00000001
	beq	a3,a5,0000000023061AC6

l23061AC2:
	ori	a0,a4,+00000420

l23061AC6:
	c.jr	ra

;; me_init_bcmc_rate: 23061AC8
;;   Called from:
;;     2304F190 (in apm_start_cfm)
me_init_bcmc_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+000000B0
	c.mv	s0,a0
	c.bnez	a5,0000000023061AEE

l23061AD6:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000229
	addi	a1,a1,+00000388
	addi	a0,a0,-000002B8
	jal	ra,0000000023054FF4

l23061AEE:
	lbu	a3,s0,+000000B0
	c.li	a5,00000000
	c.li	a0,00000000

l23061AF6:
	blt	a5,a3,0000000023061B12

l23061AFA:
	jal	ra,0000000023061936
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023062A1A
	c.lwsp	a2,00000020
	sb	zero,s0,+0000011A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23061B12:
	add	a4,s0,a5
	lbu	a4,a4,+000000B1
	andi	a2,a4,-00000081
	bge	a0,a2,0000000023061B26

l23061B22:
	andi	a0,a4,+0000007F

l23061B26:
	c.addi	a5,00000001
	c.j	0000000023061AF6

;; me_tx_cfm_singleton: 23061B2A
;;   Called from:
;;     2305F8AE (in txl_cfm_evt)
me_tx_cfm_singleton proc
	c.lw	a0,108(a5)
	c.lui	a4,00010000
	c.lw	a5,0(a5)
	c.lw	a5,16(a5)
	srli	a2,a5,00000008
	c.and	a5,a4
	andi	a2,a2,+000000FF
	sltu	a4,zero,a5
	addi	a1,a2,+00000001
	c.add	a2,a4
	c.beqz	a5,0000000023061B6C

l23061B48:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023067434
	c.lwsp	a2,00000044
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lwsp	t3,00000020
	lbu	a0,a0,+00000030
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi16sp	00000020

l23061B68:
	jal	zero,00000000230626CC

l23061B6C:
	c.li	a4,00000000
	c.li	a3,00000000
	lbu	a0,a0,+00000030
	c.j	0000000023061B68

;; me_check_rc: 23061B76
;;   Called from:
;;     2304ECAE (in txu_cntrl_push)
me_check_rc proc
	jal	zero,00000000230634B8

;; me_update_buffer_control: 23061B7A
;;   Called from:
;;     2304ECC0 (in txu_cntrl_push)
;;     23061D10 (in me_init_rate)
me_update_buffer_control proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	lbu	a2,a0,+0000011A
	lw	s3,a0,+0000010C
	beq	a2,zero,0000000023061CDC

l23061B98:
	lw	s2,s3,+00000004
	addi	s1,s3,+00000014
	c.mv	a4,s1
	c.li	a5,00000000
	addi	s4,sp,+00000010
	c.li	a3,00000010

l23061BAA:
	lw	a6,a4,+00000000
	add	a1,sp,a5
	c.addi	a4,00000004
	sw	a6,a1,+00000000
	lw	a6,a4,+0000000C
	add	a1,s4,a5
	c.addi	a5,00000004
	sw	a6,a1,+00000000
	bne	a5,a3,0000000023061BAA

l23061BCA:
	andi	a5,a2,+00000001
	c.beqz	a5,0000000023061C5A

l23061BD0:
	lw	a7,a0,+00000110
	lbu	t6,a0,+000000F4
	c.lui	t1,00004000
	lbu	t5,a7,+000000B0
	c.mv	a6,sp
	c.li	s0,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	t0,0000000C
	c.addi	t1,FFFFFFFF
	lui	t2,00080000
	lui	t4,0001FFFC
	c.li	t3,00000004

l23061BF4:
	add	a5,t5,a1
	c.andi	a5,00000003
	c.addi	a5,0000000E
	c.slli	a5,03
	c.add	a5,a7
	lhu	a5,a5,+00000010
	add	a5,a5,t0
	c.add	a5,a7
	lhu	a5,a5,+0000000A
	and	a5,t1,a5
	or	a5,a5,t2
	srli	a3,a5,0000000B
	c.andi	a3,00000006
	c.beqz	a3,0000000023061C2E

l23061C1E:
	srli	a3,a5,00000003
	c.andi	a3,00000003
	c.bnez	a1,0000000023061CF2

l23061C26:
	bgeu	a3,t6,0000000023061C2E

l23061C2A:
	c.mv	a4,a3
	c.li	s0,00000001

l23061C2E:
	lw	a3,a6,+00000000
	c.addi	a1,00000001
	c.addi	a6,00000004
	and	a3,t4,a3
	c.or	a5,a3
	sw	a5,a6,+00000FFC
	bne	a1,t3,0000000023061BF4

l23061C44:
	andi	s2,s2,-00000181
	c.beqz	s0,0000000023061C52

l23061C4A:
	c.addi	a4,00000001
	c.slli	a4,07
	or	s2,s2,a4

l23061C52:
	ori	a2,a2,+00000002
	sb	a2,a0,+0000011A

l23061C5A:
	lbu	a2,a0,+0000011A
	andi	a5,a2,+00000002
	c.beqz	a5,0000000023061C8E

l23061C64:
	lui	a1,000E0004
	c.mv	a4,sp
	c.addi	a1,FFFFFFFF

l23061C6C:
	c.lw	a4,0(a5)
	srli	a3,a5,0000000B
	c.andi	a3,00000007
	andi	a6,a5,+0000007C
	or	a3,a3,a6
	c.beqz	a3,0000000023061C88

l23061C7E:
	lw	a3,a0,+00000114
	c.and	a5,a1
	c.or	a5,a3
	c.sw	a4,0(a5)

l23061C88:
	c.addi	a4,00000004
	bne	s4,a4,0000000023061C6C

l23061C8E:
	c.andi	a2,00000010
	c.mv	s0,a0
	c.beqz	a2,0000000023061CAE

l23061C94:
	c.li	s5,00000000
	c.li	s6,00000010

l23061C98:
	add	a5,sp,s5
	c.lw	a5,0(a0)
	jal	ra,00000000230494F0
	add	a5,s4,s5
	c.sw	a5,0(a0)
	c.addi	s5,00000004
	bne	s5,s6,0000000023061C98

l23061CAE:
	csrrci	zero,mstatus,00000008
	c.li	a5,00000000
	sw	s2,s3,+00000004
	c.li	a4,00000010

l23061CBA:
	add	a3,sp,a5
	c.lw	a3,0(a3)
	c.addi	s1,00000004
	sw	a3,s1,+00000FFC
	add	a3,s4,a5
	c.lw	a3,0(a3)
	c.addi	a5,00000004
	c.sw	s1,12(a3)
	bne	a5,a4,0000000023061CBA

l23061CD4:
	csrrsi	zero,mstatus,00000008
	sb	zero,s0,+0000011A

l23061CDC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23061CF2:
	c.beqz	s0,0000000023061C2E

l23061CF4:
	c.sub	a3,a4
	sltiu	s0,a3,+00000001
	c.j	0000000023061C2E

;; me_init_rate: 23061CFC
;;   Called from:
;;     2304E398 (in sm_assoc_rsp_handler)
;;     2306172C (in me_sta_add_req_handler)
me_init_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023062EFC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023061B7A

;; me_bw_check: 23061D14
;;   Called from:
;;     2304D066 (in scanu_frame_handler)
;;     23061E28 (in me_beacon_check)
me_bw_check proc
	c.lw	a2,76(a5)
	lhu	a4,a5,+00000000
	c.li	a5,00000000
	c.beqz	a0,0000000023061D42

l23061D1E:
	lui	a5,0004201D
	lbu	a5,a5,-00000615
	c.beqz	a5,0000000023061D42

l23061D28:
	lbu	a5,a0,+00000003
	c.andi	a5,00000003
	c.beqz	a5,0000000023061D42

l23061D30:
	c.li	a1,00000001
	c.li	a3,0000000A
	beq	a5,a1,0000000023061D3A

l23061D38:
	c.li	a3,FFFFFFF6

l23061D3A:
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a5,00000001

l23061D42:
	sb	a5,a2,+00000082
	sb	a5,a2,+00000083
	sh	a4,a2,+00000050
	sh	zero,a2,+00000052
	c.jr	ra

;; me_beacon_check: 23061D54
;;   Called from:
;;     2304BBA0 (in rxu_mgt_frame_check)
;;     2305EC66 (in mm_bcn_updated)
me_beacon_check proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	addi	s7,zero,+000005D8
	add	s7,a0,s7
	c.swsp	s0,0000001C
	lui	s0,0004201C
	c.swsp	s1,00000098
	addi	s1,s0,-00000308
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.add	s1,s7
	lw	a5,s1,+000003A4
	sh	zero,s1,+000003D8
	addi	a1,a1,-00000024
	lbu	a5,a5,+00000002
	slli	s3,a1,00000010
	c.mv	s2,a0
	lbu	s5,s1,+000003DB
	lbu	s6,s1,+000003DC
	addi	s4,a2,+00000024
	srli	s3,s3,00000010
	addi	s0,s0,-00000308
	c.bnez	a5,0000000023061E06

l23061DA8:
	addi	a2,zero,+0000002A
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023050BF4
	c.beqz	a0,0000000023061E06

l23061DB6:
	lhu	a5,s1,+000003D8
	lbu	a4,a0,+00000002
	c.andi	a5,FFFFFFF8
	c.slli	a5,10
	andi	a3,a4,+00000001
	c.srli	a5,00000010
	bne	a3,zero,0000000023061F64

l23061DCC:
	sh	a5,s1,+000003D8
	andi	a5,a4,+00000002
	c.beqz	a5,0000000023061DEC

l23061DD6:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a3,a5,+000003D8
	ori	a3,a3,+00000002
	sh	a3,a5,+000003D8

l23061DEC:
	c.andi	a4,00000004
	c.beqz	a4,0000000023061E06

l23061DF0:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a4,a5,+000003D8
	ori	a4,a4,+00000004
	sh	a4,a5,+000003D8

l23061E06:
	lui	a5,0004201D
	lbu	a5,a5,-00000716
	c.li	a0,00000000
	c.beqz	a5,0000000023061E1E

l23061E12:
	addi	a2,zero,+0000003D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023050BF4

l23061E1E:
	addi	s8,s7,+00000358
	c.add	s8,s0
	c.mv	a2,s8
	c.li	a1,00000000
	jal	ra,0000000023061D14
	addi	a3,s7,+000005C8
	c.add	a3,s0
	addi	a2,sp,+0000000D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002306072E
	andi	s7,a0,+000000FF
	beq	s7,zero,0000000023061E80

l23061E46:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	bne	a4,zero,0000000023061F6A

l23061E58:
	lbu	a4,a5,+00000079
	c.bnez	a4,0000000023061E72

l23061E5E:
	lbu	a3,sp,+0000000D
	c.li	a4,00000001
	bne	a3,a4,0000000023061E72

l23061E68:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	ra,000000002305E1CA

l23061E72:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	sb	s7,a5,+00000079

l23061E80:
	c.mv	a2,s8
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023060654
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+000003DC
	beq	a4,s6,0000000023061EB8

l23061E9C:
	lw	a5,a5,+000003A4
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	lbu	a5,a5,+00000004
	c.mv	a0,s1
	c.sub	a5,a4
	sb	a5,sp,+0000000E
	jal	ra,0000000023049456

l23061EB8:
	addi	s4,zero,+000005D8
	add	s4,s2,s4
	c.add	s4,s0
	lbu	a5,s4,+000003DB
	bgeu	s5,a5,0000000023061F4C

l23061ECA:
	c.li	a3,0000000C
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+0000003B
	jal	ra,0000000023050474
	lw	a5,s4,+00000040
	c.mv	s3,a0
	c.bnez	a5,0000000023061EF8

l23061EE0:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000039
	addi	a1,a1,+00000388
	addi	a0,a0,-000002D0
	jal	ra,0000000023054FF4

l23061EF8:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.mv	a0,s3
	c.add	s0,s2
	c.lw	s0,64(a5)
	lbu	a5,a5,+00000017
	sb	a5,s3,+00000000
	lw	a5,s1,+000003A4
	lbu	a5,a5,+00000002
	sb	a5,s3,+00000001
	lbu	a5,s1,+000003DB
	sb	a5,s3,+00000002
	lw	a5,s1,+000003A4
	lhu	a5,a5,+00000000
	sh	a5,s3,+00000004
	lhu	a5,s1,+000003A8
	sh	a5,s3,+00000006
	lhu	a5,s1,+000003AA
	sh	a5,s3,+00000008
	c.lw	s0,64(a5)
	lb	a5,a5,+0000000C
	sb	a5,s3,+0000000A
	jal	ra,00000000230504E0

l23061F4C:
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

l23061F64:
	ori	a5,a5,+00000001
	c.j	0000000023061DCC

l23061F6A:
	c.li	a3,00000002
	bne	a4,a3,0000000023061E80

l23061F70:
	sb	s7,a5,+00000347
	c.j	0000000023061E80

;; me_sta_bw_nss_max_upd: 23061F76
;;   Called from:
;;     2304BC28 (in rxu_mgt_frame_check)
;;     2306174C (in me_sta_add_req_handler)
;;     23061768 (in me_sta_add_req_handler)
me_sta_bw_nss_max_upd proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	addi	a5,s0,-000007F8
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.add	a5,a4
	c.swsp	s5,00000080
	lbu	s3,a5,+0000001A
	lui	a5,0004201D
	lbu	a5,a5,-00000716
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	addi	s0,s0,-000007F8
	c.bnez	a5,0000000023061FC8

l23061FB0:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000429
	addi	a1,a1,+00000388
	addi	a0,a0,-00000288
	jal	ra,0000000023054FF4

l23061FC8:
	addi	a0,zero,+000001B0
	add	a0,s1,a0
	addi	a0,a0,+000000C3
	c.add	a0,s0
	jal	ra,00000000230618CE
	c.mv	s5,a0
	lui	a0,0004201D
	addi	a0,a0,-00000735
	jal	ra,00000000230618CE
	bgeu	s5,a0,0000000023061FEE

l23061FEC:
	c.mv	a0,s5

l23061FEE:
	bgeu	s4,a0,0000000023061FF4

l23061FF2:
	c.mv	a0,s4

l23061FF4:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	andi	a2,a0,+000000FF
	c.add	a5,s0
	lbu	a4,a5,+000000F0
	c.li	a5,00000004
	bne	a4,a5,000000002306200E

l2306200C:
	c.li	a4,00000003

l2306200E:
	addi	a3,zero,+000005D8
	add	s3,s3,a3
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.add	a5,s3
	lbu	a1,a5,+000003DA
	bgeu	s2,a1,000000002306202A

l23062028:
	c.mv	a1,s2

l2306202A:
	bgeu	a4,a1,0000000023062030

l2306202E:
	c.mv	a1,a4

l23062030:
	addi	a5,zero,+000001B0
	add	s1,s1,a5
	andi	a1,a1,+000000FF
	c.add	s0,s1
	lbu	a0,s0,+0000001B
	sb	a1,s0,+000000F1
	jal	ra,00000000230628A0
	lbu	a5,s0,+0000011A
	ori	a5,a5,+00000008
	sb	a5,s0,+0000011A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; me_add_chan_ctx: 23062068
;;   Called from:
;;     230645A6 (in apm_start_req_handler)
me_add_chan_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000002
	sb	a4,sp,+00000005
	sh	a2,sp,+00000008
	sb	a5,sp,+00000004
	lhu	a5,a1,+00000000
	sh	a3,sp,+0000000A
	sh	a5,sp,+00000006
	lbu	a5,a1,+00000004
	c.mv	a1,a0
	c.addi4spn	a0,00000004
	sb	a5,sp,+0000000C
	jal	ra,000000002305C242
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; rc_get_nss: 2306209E
;;   Called from:
;;     2306216C (in rc_set_next_mcs_index)
;;     23062544 (in rc_check_valid_rate)
;;     23062836 (in rc_get_duration)
;;     23062A8A (in rc_check_fixed_rate_config)
;;     230636A0 (in rc_check)
;;     230636A8 (in rc_check)
rc_get_nss proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.addi	a5,FFFFFFFE
	c.li	a4,00000001
	bltu	a4,a5,00000000230620B2

l230620AC:
	c.srai	a0,00000003
	c.andi	a0,00000003
	c.jr	ra

l230620B2:
	c.li	a0,00000000
	c.jr	ra

;; rc_get_mcs_index: 230620B6
;;   Called from:
;;     230620EA (in rc_set_previous_mcs_index)
;;     2306214C (in rc_set_next_mcs_index)
;;     230621D2 (in is_cck_group)
;;     23062550 (in rc_check_valid_rate)
;;     2306255C (in rc_check_valid_rate)
;;     2306281C (in rc_get_duration)
rc_get_mcs_index proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.li	a4,00000001
	bgeu	a4,a5,00000000230620D0

l230620C2:
	c.li	a3,00000003
	c.li	a4,00000000
	bltu	a3,a5,00000000230620D4

l230620CA:
	andi	a4,a0,+00000007
	c.j	00000000230620D4

l230620D0:
	andi	a4,a0,+0000007F

l230620D4:
	c.mv	a0,a4
	c.jr	ra

;; rc_set_previous_mcs_index: 230620D8
rc_set_previous_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	srai	s0,a1,0000000B
	c.swsp	ra,0000008C
	jal	ra,00000000230620B6
	c.andi	s0,00000007
	c.li	a5,00000001
	c.lwsp	a2,00000064
	bgeu	a5,s0,0000000023062116

l230620F8:
	c.li	a5,00000003
	bltu	a5,s0,000000002306212A

l230620FE:
	c.beqz	a0,000000002306212A

l23062100:
	c.andi	a1,FFFFFFF8
	c.addi	a0,FFFFFFFF
	lbu	a5,s1,+000000BD
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010
	c.beqz	a5,000000002306212A

l23062110:
	ori	a1,a1,+00000200
	c.j	000000002306212A

l23062116:
	lbu	a5,s1,+000000B9
	bgeu	a5,a0,000000002306212A

l2306211E:
	andi	a1,a1,-00000080
	c.addi	a0,FFFFFFFF
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010

l2306212A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

;; rc_set_next_mcs_index: 23062136
rc_set_next_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	srai	s3,a1,0000000B
	c.mv	s0,a1
	jal	ra,00000000230620B6
	andi	s3,s3,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s3,0000000023062194

l2306215C:
	c.li	a5,00000003
	bltu	a5,s3,00000000230621B6

l23062162:
	lbu	a5,s2,+000000B8
	bgeu	a0,a5,00000000230621B6

l2306216A:
	c.mv	a0,s0
	jal	ra,000000002306209E
	c.add	a0,s2
	lbu	a5,a0,+000000B2
	c.addi	s1,00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,00000000230621B6

l23062180:
	c.andi	s0,FFFFFFF8
	lbu	a5,s2,+000000BD
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010
	c.beqz	a5,00000000230621B6

l2306218E:
	ori	s0,s0,+00000200
	c.j	00000000230621B6

l23062194:
	lbu	a5,s2,+000000BA
	bgeu	a0,a5,00000000230621B6

l2306219C:
	lhu	a5,s2,+000000B6
	addi	s1,a0,+00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,00000000230621B6

l230621AC:
	andi	s0,s0,-00000080
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010

l230621B6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; is_cck_group: 230621C6
;;   Called from:
;;     23062236 (in rc_update_retry_chain)
;;     2306231C (in rc_update_retry_chain)
;;     23062B0A (in rc_calc_tp)
is_cck_group proc
	srli	a5,a0,0000000B
	c.andi	a5,00000006
	c.bnez	a5,00000000230621E0

l230621CE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230620B6
	c.lwsp	a2,00000020
	sltiu	a0,a0,+00000004
	c.addi	sp,00000010
	c.jr	ra

l230621E0:
	c.li	a0,00000000
	c.jr	ra

;; rc_update_retry_chain: 230621E4
;;   Called from:
;;     2306299C (in rc_update_bw_nss_max)
;;     23062C5E (in rc_update_stats)
rc_update_retry_chain proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	lhu	s4,a0,+000000C0
	lbu	a4,a0,+000000AF
	c.mv	s0,a0
	slli	a5,s4,00000002
	c.addi	a5,FFFFFFFC
	c.andi	a4,00000004
	c.mv	s5,a1
	c.add	a5,a1
	c.bnez	a4,0000000023062302

l23062214:
	c.lw	a1,0(a3)
	c.lw	a5,0(a4)
	bgeu	a4,a3,0000000023062302

l2306221C:
	sh	zero,a0,+00000080
	sw	zero,a0,+0000007C
	c.li	s1,00000001

l23062226:
	lhu	s7,s0,+00000080
	c.li	s2,0000000C
	add	s2,s7,s2
	c.add	s2,s0
	lhu	a0,s2,+0000000A
	jal	ra,00000000230621C6
	c.bnez	a0,000000002306224E

l2306223C:
	addi	s8,s4,-00000001
	c.li	s3,00000000
	c.li	s9,0000000C

l23062244:
	blt	s3,s8,0000000023062312

l23062248:
	c.li	a5,00000001
	sb	a5,s2,+0000000F

l2306224E:
	c.lw	s0,124(a5)
	sh	s7,s0,+00000088
	sub	a4,s4,s1
	sw	a5,s0,+00000084
	c.li	a1,0000000C

l2306225E:
	addi	a5,s1,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s1,s4,000000002306228C

l2306226A:
	addi	a2,a4,-00000001
	add	a3,a2,a1
	c.add	a3,s0
	lbu	a3,a3,+0000001B
	c.beqz	a3,0000000023062330

l2306227A:
	sub	s1,s4,s1
	c.slli	a4,02
	sh	s1,s0,+00000088
	c.add	a4,s5
	c.lw	a4,0(a4)
	sw	a4,s0,+00000084

l2306228C:
	lhu	t1,s0,+00000088
	sub	a5,s4,a5
	c.li	a2,0000000C

l23062296:
	sub	a4,s4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a4,s4,0000000023062336

l230622A2:
	c.mv	a5,t1

l230622A4:
	slli	a4,a5,00000002
	c.add	a4,s5
	c.lw	a4,0(a1)
	c.li	a4,0000000C
	add	a4,a5,a4
	c.lui	a6,0000F000
	addi	a3,s0,+00000008
	addi	a6,a6,+00000332
	c.add	a4,s0
	lhu	a0,a4,+00000008
	c.li	a4,00000000

l230622C4:
	slli	a2,a4,00000010
	c.srli	a2,00000010
	bltu	a2,t1,000000002306234A

l230622CE:
	sh	a5,s0,+00000090
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a5)
	sh	zero,s0,+00000098
	c.lwsp	a2,00000130
	sw	a5,s0,+0000008C
	lw	a5,s5,+00000000
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	sw	a5,s0,+00000094
	c.lwsp	s0,00000114
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23062302:
	addi	a4,s4,-00000001
	sh	a4,s0,+00000080
	c.lw	a5,0(a5)
	c.li	s1,00000002
	c.sw	s0,124(a5)
	c.j	0000000023062226

l23062312:
	add	s6,s3,s9
	c.add	s6,s0
	lhu	a0,s6,+0000000A
	jal	ra,00000000230621C6
	c.beqz	a0,0000000023062326

l23062322:
	sb	zero,s6,+0000000F

l23062326:
	c.addi	s3,00000001
	c.slli	s3,10
	srli	s3,s3,00000010
	c.j	0000000023062244

l23062330:
	c.mv	a4,a2
	c.mv	s1,a5
	c.j	000000002306225E

l23062336:
	addi	a3,a5,-00000001
	add	a4,a3,a2
	c.add	a4,s0
	lbu	a4,a4,+0000001B
	c.bnez	a4,00000000230622A4

l23062346:
	c.mv	a5,a3
	c.j	0000000023062296

l2306234A:
	lbu	a7,a3,+00000007
	beq	a7,zero,0000000023062372

l23062352:
	beq	a2,s7,0000000023062372

l23062356:
	lhu	a2,a3,+00000000
	bgeu	a6,a2,0000000023062378

l2306235E:
	slli	a7,a4,00000002
	c.add	a7,s5
	lw	a7,a7,+00000000
	bltu	a7,a1,0000000023062372

l2306236C:
	c.mv	a0,a2
	c.mv	a1,a7

l23062370:
	c.mv	a5,a4

l23062372:
	c.addi	a4,00000001
	c.addi	a3,0000000C
	c.j	00000000230622C4

l23062378:
	bltu	a2,a0,0000000023062372

l2306237C:
	slli	a5,a4,00000002
	c.add	a5,s5
	c.lw	a5,0(a1)
	c.mv	a0,a2
	c.j	0000000023062370

;; rc_get_lowest_rate_config: 23062388
;;   Called from:
;;     23062950 (in rc_update_bw_nss_max)
;;     230632DA (in rc_init)
rc_get_lowest_rate_config proc
	lbu	a4,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,a4,00000000230623AC

l23062392:
	c.li	a3,00000003
	c.li	a5,00000000
	bltu	a3,a4,00000000230623BC

l2306239A:
	lbu	a3,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a3,00000000230623BC

l230623A4:
	slli	a5,a4,0000000B
	c.slli	a5,10
	c.j	00000000230623BA

l230623AC:
	lbu	a4,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a4,00000000230623BC

l230623B6:
	slli	a5,a4,00000010

l230623BA:
	c.srli	a5,00000010

l230623BC:
	c.mv	a0,a5
	c.jr	ra

;; rc_sort_samples_tp: 230623C0
;;   Called from:
;;     23062994 (in rc_update_bw_nss_max)
;;     23062C56 (in rc_update_stats)
rc_sort_samples_tp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	lhu	a5,a0,+000000C0
	c.mv	s6,a1
	addi	s3,a0,+00000010
	addi	s4,a5,-00000001
	c.slli	s4,10
	srli	s4,s4,00000010

l230623E6:
	c.beqz	a5,000000002306243A

l230623E8:
	c.mv	s2,s3
	addi	s0,s6,+00000004
	c.li	a5,00000000
	c.li	s1,00000001
	c.j	0000000023062432

l230623F4:
	c.lw	s0,0(a3)
	c.lw	s0,4(a4)
	addi	s5,s2,+0000000C
	bgeu	a4,a3,0000000023062428

l23062400:
	c.li	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000004
	jal	ra,000000002306D09C
	c.li	a2,0000000C
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002306D09C
	c.li	a2,0000000C
	c.addi4spn	a1,00000004
	c.mv	a0,s5
	jal	ra,000000002306D09C
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,4(a5)
	c.sw	s0,0(a4)
	c.mv	a5,s1

l23062428:
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	s2,s5
	c.addi	s0,00000004

l23062432:
	bltu	s1,s4,00000000230623F4

l23062436:
	c.mv	s4,a5
	c.j	00000000230623E6

l2306243A:
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

;; rc_get_initial_rate_config: 2306244E
;;   Called from:
;;     2306295A (in rc_update_bw_nss_max)
;;     230632E4 (in rc_init)
rc_get_initial_rate_config proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,s1,00000000230624A0

l23062462:
	c.li	a4,00000003
	c.li	a5,00000000
	bltu	a4,s1,00000000230624B6

l2306246A:
	lbu	s2,a0,+000000BC
	c.mv	s0,a0
	c.slli	s1,0B
	add	a5,a0,s2
	lbu	a0,a5,+000000B2
	c.slli	s2,03
	jal	ra,0000000023068C40
	lbu	a5,s0,+000000BD
	lbu	a4,s0,+000000BB
	c.slli	a5,09
	c.slli	a4,07
	c.or	a5,s1
	c.or	a5,a4
	c.li	a4,0000001F
	sub	a0,a4,a0
	or	a5,a5,s2
	andi	a0,a0,+000000FF
	c.j	00000000230624B0

l230624A0:
	lbu	a4,a0,+000000BE
	lbu	a0,a0,+000000BA
	slli	a5,s1,0000000B
	c.slli	a4,0A
	c.or	a5,a4

l230624B0:
	c.or	a5,a0
	c.slli	a5,10
	c.srli	a5,00000010

l230624B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; rc_calc_prob_ewma: 230624C4
;;   Called from:
;;     23062BF6 (in rc_update_stats)
;;     23062C28 (in rc_update_stats)
rc_calc_prob_ewma proc
	lhu	a3,a0,+00000000
	c.beqz	a3,000000002306250E

l230624CA:
	lhu	a5,a0,+00000002
	lbu	a2,a0,+00000009
	sb	zero,a0,+00000008
	c.slli	a5,10
	srl	a4,a5,a3
	c.bnez	a2,00000000230624F6

l230624DE:
	bltu	a5,a3,00000000230624F0

l230624E2:
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000004

l230624E8:
	c.li	a5,00000001
	sb	a5,a0,+00000009
	c.jr	ra

l230624F0:
	sh	zero,a0,+00000004
	c.j	00000000230624E8

l230624F6:
	lhu	a5,a0,+00000004
	addi	a3,zero,+00000060
	c.slli	a4,05
	add	a5,a5,a3
	c.add	a5,a4
	c.srli	a5,00000007
	sh	a5,a0,+00000004
	c.j	00000000230624E8

l2306250E:
	lbu	a5,a0,+00000008
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023062520

l2306251A:
	c.addi	a5,00000001
	sb	a5,a0,+00000008

l23062520:
	c.jr	ra

;; rc_check_valid_rate: 23062522
;;   Called from:
;;     23062AA0 (in rc_check_fixed_rate_config)
rc_check_valid_rate proc
	c.addi	sp,FFFFFFE0
	srai	a5,a1,0000000B
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.andi	a5,00000007
	c.li	a4,00000001
	c.mv	s0,a0
	bgeu	a4,a5,000000002306255A

l23062538:
	c.li	a4,00000003
	c.li	a0,00000001
	bltu	a4,a5,000000002306256A

l23062540:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002306209E
	c.lwsp	a2,00000064
	c.mv	s1,a0
	c.add	s0,s1
	c.mv	a0,a1
	jal	ra,00000000230620B6
	lbu	a5,s0,+000000B2
	c.j	0000000023062564

l2306255A:
	c.mv	a0,a1
	jal	ra,00000000230620B6
	lhu	a5,s0,+000000B6

l23062564:
	srl	a0,a5,a0
	c.andi	a0,00000001

l2306256A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; rc_new_random_rate: 23062574
;;   Called from:
;;     230629C8 (in rc_update_bw_nss_max)
;;     23062CEE (in rc_update_stats)
;;     23063486 (in rc_init)
rc_new_random_rate proc
	lui	a4,0004200E
	addi	a4,a4,-0000033C
	c.lw	a4,0(a5)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	a5,a5,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	lbu	a1,a0,+000000BB
	c.li	a7,00000000
	c.add	a5,a3
	lbu	a3,a0,+000000B1
	c.sw	a4,0(a5)
	c.srli	a5,00000010
	slli	a4,a3,0000000B
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a1,00000000230625B2

l230625AA:
	addi	a7,a1,-00000001
	andi	a7,a7,+000000FF

l230625B2:
	c.li	a2,00000001
	bgeu	a2,a3,000000002306260A

l230625B8:
	c.li	a6,00000003
	bltu	a6,a3,0000000023062640

l230625BE:
	lbu	a2,a0,+000000B9
	bltu	a6,a2,0000000023062660

l230625C6:
	slli	a3,a5,00000014
	bge	a3,zero,0000000023062660

l230625CE:
	lbu	a1,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a4,a1,a2
	c.addi	a4,00000001
	or	a3,a3,a4
	lhu	a4,a0,+000000B6
	c.add	a3,a2
	andi	a3,a3,+000000FF
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.bnez	a4,00000000230625F4

l230625F2:
	c.mv	a3,a1

l230625F4:
	addi	a4,zero,+00000400
	c.beqz	a3,0000000023062640

l230625FA:
	lbu	a4,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a4,0A
	c.or	a4,a5
	c.or	a4,a3
	c.j	000000002306263C

l2306260A:
	lbu	a2,a0,+000000B9
	lbu	a6,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a1,a6,a2
	c.addi	a1,00000001
	or	a3,a3,a1
	c.add	a3,a2
	lhu	a2,a0,+000000B6
	andi	a3,a3,+000000FF
	srl	a2,a2,a3
	c.andi	a2,00000001
	c.bnez	a2,0000000023062634

l23062632:
	c.mv	a3,a6

l23062634:
	c.or	a4,a3
	c.bnez	a3,0000000023062644

l23062638:
	ori	a4,a4,+00000400

l2306263C:
	c.slli	a4,10
	c.srli	a4,00000010

l23062640:
	c.mv	a0,a4
	c.jr	ra

l23062644:
	c.addi	a3,FFFFFFFF
	andi	a3,a3,+000000FF
	c.li	a2,00000002
	bltu	a2,a3,0000000023062640

l23062650:
	lbu	a0,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a0,0A
	c.or	a5,a0
	c.or	a4,a5
	c.j	000000002306263C

l23062660:
	lbu	a2,a0,+000000BC
	srai	a3,a5,00000003
	c.andi	a3,00000003
	c.addi	a2,00000001
	lbu	a6,a0,+000000B8
	or	a3,a3,a2
	andi	a2,a5,+00000007
	addi	t1,a6,+00000001
	lbu	t3,a0,+000000BD
	or	a2,a2,t1
	c.add	a0,a3
	lbu	t1,a0,+000000B2
	srl	t1,t1,a2
	andi	t1,t1,+00000001
	beq	t1,zero,000000002306269A

l23062696:
	andi	a6,a2,+000000FF

l2306269A:
	srai	a0,a5,00000009
	c.andi	a0,00000001
	c.addi	t3,00000001
	c.srai	a5,00000007
	sub	a1,a1,a7
	or	a0,a0,t3
	c.andi	a5,00000003
	c.addi	a1,00000001
	c.slli	a3,03
	or	a5,a5,a1
	c.slli	a0,09
	c.or	a0,a3
	c.or	a4,a0
	c.add	a5,a7
	c.slli	a5,07
	c.or	a4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	or	a4,a4,a6
	c.j	0000000023062640

;; rc_update_counters: 230626CC
;;   Called from:
;;     23061B68 (in me_tx_cfm_singleton)
rc_update_counters proc
	c.li	a5,00000009
	bltu	a5,a0,000000002306280A

l230626D2:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201B
	addi	a5,s2,-000007F8
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.add	a5,a4
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a3,a5,+0000001A
	addi	a4,zero,+000000FF
	c.mv	s3,a0
	addi	s2,s2,-000007F8
	beq	a3,a4,00000000230627E6

l23062710:
	lw	s0,a5,+00000110
	c.mv	s1,a1
	c.mv	s4,a2
	c.bnez	s0,0000000023062732

l2306271A:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000007CE
	addi	a1,a1,+00000388
	addi	a0,a0,-00000304
	jal	ra,0000000023054FF4

l23062732:
	lhu	a5,s0,+000000A6
	addi	s5,s0,+00000080
	addi	s6,s0,+000000A0
	c.addi	a5,00000001
	sh	a5,s0,+000000A6
	lhu	a5,s0,+000000A4
	c.li	s7,0000000C
	c.li	s8,00000003
	c.addi	a5,00000001
	sh	a5,s0,+000000A4
	lui	s9,0002307B
	lui	s10,0002307F

l2306275A:
	c.beqz	s1,000000002306279A

l2306275C:
	lhu	a5,s5,+00000000
	add	a5,a5,s7
	c.add	a5,s0
	lhu	a4,a5,+00000004
	bgeu	s8,s4,00000000230627BC

l2306276E:
	c.addi	a4,00000004
	sh	a4,a5,+00000004
	c.addi	s1,FFFFFFFC
	c.addi	s4,FFFFFFFC

l23062778:
	lhu	a4,a5,+00000004
	lhu	a5,a5,+00000006
	bgeu	a4,a5,0000000023062794

l23062784:
	addi	a2,zero,+000007FA
	addi	a1,s9,+00000388
	addi	a0,s10,+000000D0
	jal	ra,0000000023054FF4

l23062794:
	c.addi	s5,00000008
	bne	s5,s6,000000002306275A

l2306279A:
	lbu	a5,s0,+000000AE
	c.beqz	a5,00000000230627DA

l230627A0:
	c.li	a4,00000002
	bne	a5,a4,00000000230627E6

l230627A6:
	addi	a5,zero,+000001B0
	add	s3,s3,a5
	c.add	s3,s2
	lbu	a5,s3,+0000011A
	c.andi	a5,00000001
	c.bnez	a5,00000000230627E6

l230627B8:
	c.li	a5,00000003
	c.j	0000000023062804

l230627BC:
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a4,s1
	sh	a4,a5,+00000004
	lhu	a4,a5,+00000006
	sub	s1,s1,s4
	c.li	s4,00000000
	c.add	s1,a4
	sh	s1,a5,+00000006
	c.li	s1,00000000
	c.j	0000000023062778

l230627DA:
	lbu	a5,s0,+000000AC
	c.beqz	a5,0000000023062802

l230627E0:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+000000AC

l230627E6:
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

l23062802:
	c.li	a5,00000001

l23062804:
	sb	a5,s0,+000000AE
	c.j	00000000230627E6

l2306280A:
	c.jr	ra

;; rc_get_duration: 2306280C
;;   Called from:
;;     23062B22 (in rc_calc_tp)
;;     230635F4 (in rc_check)
;;     2306360E (in rc_check)
;;     2306368A (in rc_check)
;;     230636C0 (in rc_check)
rc_get_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	srai	s2,a0,0000000B
	c.mv	s0,a0
	jal	ra,00000000230620B6
	andi	s2,s2,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s2,0000000023062862

l2306282C:
	c.li	a5,00000003
	c.li	a0,00000000
	bltu	a5,s2,0000000023062880

l23062834:
	c.mv	a0,s0
	jal	ra,000000002306209E
	srli	a5,s0,00000006
	c.srli	s0,00000009
	c.andi	a5,00000006
	c.andi	s0,00000001
	c.or	s0,a5
	c.slli	s1,03
	c.or	s1,s0
	lui	s0,0002307F
	c.slli	s1,02
	addi	s0,s0,-00000240
	c.add	s1,s0
	addi	a5,a0,+00000001
	c.lw	s1,0(a0)
	srl	a0,a0,a5
	c.j	0000000023062880

l23062862:
	c.li	a5,00000003
	bltu	a5,a0,000000002306288C

l23062868:
	c.srai	s0,0000000A
	slli	s1,a0,00000001
	c.andi	s0,00000001
	c.or	s0,s1
	lui	a5,0002307F
	c.slli	s0,02
	addi	a5,a5,-00000260
	c.add	s0,a5
	c.lw	s0,0(a0)

l23062880:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306288C:
	addi	s1,a0,-00000004
	lui	a5,0002307F
	c.slli	s1,02
	addi	a5,a5,-00000100
	c.add	s1,a5
	c.lw	s1,0(a0)
	c.j	0000000023062880

;; rc_update_bw_nss_max: 230628A0
;;   Called from:
;;     23061058 (in me_rc_set_rate_req_handler)
;;     23062046 (in me_sta_bw_nss_max_upd)
rc_update_bw_nss_max proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	addi	a4,zero,+000001B0
	c.mv	s3,a0
	add	a4,s3,a4
	lui	a0,0004201B
	addi	a5,a0,-000007F8
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.mv	s4,a1
	c.mv	s1,a2
	c.add	a5,a4
	lw	s0,a5,+00000110
	addi	s2,a0,-000007F8
	c.bnez	s0,00000000230628EA

l230628D0:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000697
	addi	a1,a1,+00000388
	addi	a0,a0,-00000304
	jal	ra,0000000023054FF4

l230628EA:
	lbu	a5,s0,+000000BB
	bne	a5,s4,00000000230628FA

l230628F2:
	lbu	a5,s0,+000000BC
	beq	a5,s1,00000000230629B6

l230628FA:
	sb	s4,s0,+000000BB
	c.li	a5,00000003
	bgeu	a5,s4,000000002306291E

l23062904:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000691
	addi	a1,a1,+00000388
	addi	a0,a0,+000000A0
	jal	ra,0000000023054FF4

l2306291E:
	sb	s1,s0,+000000BC
	c.li	a5,00000007
	bgeu	a5,s1,0000000023062942

l23062928:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000068F
	addi	a1,a1,+00000388
	addi	a0,a0,+000000BC
	jal	ra,0000000023054FF4

l23062942:
	lhu	a4,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,00000000230629B6

l2306294E:
	c.mv	a0,s0
	jal	ra,0000000023062388
	sh	a0,s0,+0000000A
	c.mv	a0,s0
	jal	ra,000000002306244E
	lhu	a5,s0,+000000C0
	c.li	a4,0000000C
	c.li	s1,00000001
	c.addi	a5,FFFFFFFF
	add	a5,a5,a4
	c.li	s4,0000000C
	c.add	a5,s0
	sh	a0,a5,+0000000A

l23062974:
	lhu	a2,s0,+000000C0
	addi	a5,a2,-00000001
	blt	s1,a5,00000000230629C6

l23062980:
	c.addi4spn	a3,00000008
	addi	a5,s0,+00000008
	c.li	a4,00000000
	c.mv	s1,a3
	c.li	a1,00000001

l2306298C:
	bne	a2,a4,00000000230629FA

l23062990:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230623C0
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,00000000230621E4
	addi	a0,zero,+000001B0
	add	a0,s3,a0
	c.add	a0,s2
	lbu	a5,a0,+0000011A
	ori	a5,a5,+00000001
	sb	a5,a0,+0000011A

l230629B6:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l230629C6:
	c.mv	a0,s0
	jal	ra,0000000023062574
	lhu	a3,s0,+000000C0
	addi	a4,s0,+0000000A
	c.li	a5,00000000

l230629D6:
	bltu	a5,a3,00000000230629EC

l230629DA:
	add	a5,s1,s4
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a5,s0
	sh	a0,a5,+0000000A
	c.j	0000000023062974

l230629EC:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,00000000230629C6

l230629F6:
	c.addi	a5,00000001
	c.j	00000000230629D6

l230629FA:
	c.addi	a4,00000001
	sb	zero,a5,+00000006
	sb	a1,a5,+00000007
	sh	zero,a5,+00000000
	sb	zero,a5,+00000005
	c.slli	a4,10
	sw	zero,a3,+00000000
	c.srli	a4,00000010
	c.addi	a5,0000000C
	c.addi	a3,00000004
	c.j	000000002306298C

;; rc_init_bcmc_rate: 23062A1A
;;   Called from:
;;     23061B02 (in me_init_bcmc_rate)
rc_init_bcmc_rate proc
	c.li	a2,00000003
	lw	a4,a0,+0000010C
	lhu	a3,a0,+00000118
	c.li	a5,00000000
	bltu	a2,a1,0000000023062A32

l23062A2A:
	andi	a5,a3,+00000400
	c.slli	a5,10
	c.srai	a5,00000010

l23062A32:
	c.or	a1,a5
	lui	a5,00020000
	c.or	a1,a5
	c.sw	a4,20(a1)
	c.sw	a4,24(a1)
	c.sw	a4,28(a1)
	c.sw	a4,32(a1)
	c.jr	ra

;; rc_check_fixed_rate_config: 23062A44
;;   Called from:
;;     23061006 (in me_rc_set_rate_req_handler)
rc_check_fixed_rate_config proc
	lbu	a5,a0,+000000B1
	srli	a4,a1,0000000B
	andi	a3,a4,+00000007
	bltu	a5,a3,0000000023062ADA

l23062A54:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.li	a2,00000004
	c.mv	s0,a0
	bne	a5,a2,0000000023062AA4

l23062A62:
	bne	a3,a5,0000000023062AD0

l23062A66:
	c.andi	a4,00000006
	c.beqz	a4,0000000023062ABE

l23062A6A:
	srli	a5,a1,00000009
	c.andi	a5,00000001
	c.beqz	a5,0000000023062A78

l23062A72:
	lbu	a5,s0,+000000BD
	c.beqz	a5,0000000023062AD0

l23062A78:
	lbu	a4,s0,+000000BB
	srai	a5,a1,00000007
	c.andi	a5,00000003
	bltu	a4,a5,0000000023062AD0

l23062A86:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002306209E
	lbu	a5,s0,+000000BC
	c.lwsp	a2,00000064
	bltu	a5,a0,0000000023062AD0

l23062A98:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023062522

l23062AA4:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	c.li	a3,00000001
	bltu	a3,a5,0000000023062A66

l23062AB0:
	c.andi	a4,00000006
	c.bnez	a4,0000000023062A6A

l23062AB4:
	lbu	a4,a0,+000000B9
	c.li	a5,00000003
	bltu	a5,a4,0000000023062AD0

l23062ABE:
	srai	a5,a1,0000000A
	c.andi	a5,00000001
	c.bnez	a5,0000000023062A98

l23062AC6:
	lbu	a4,s0,+000000BE
	c.li	a5,00000001
	bne	a4,a5,0000000023062A98

l23062AD0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23062ADA:
	c.li	a0,00000000
	c.jr	ra

;; rc_calc_tp: 23062ADE
;;   Called from:
;;     2306110E (in me_rc_stats_req_handler)
;;     23062C32 (in rc_update_stats)
;;     2306371A (in rc_check)
rc_calc_tp proc
	c.li	a5,0000000C
	add	a1,a1,a5
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lui	a5,00002000
	addi	a5,a5,-00000668
	c.add	a1,a0
	lhu	s0,a1,+00000008
	bgeu	a5,s0,0000000023062B50

l23062B00:
	lhu	s3,a1,+0000000A
	c.mv	s2,a0
	c.li	s1,00000000
	c.mv	a0,s3
	jal	ra,00000000230621C6
	c.bnez	a0,0000000023062B20

l23062B10:
	lhu	a0,s2,+000000AA
	lui	s1,00000035
	addi	s1,s1,+00000390
	srl	s1,s1,a0

l23062B20:
	c.mv	a0,s3
	jal	ra,000000002306280C
	addi	a5,zero,+000003E8
	c.add	a0,s1
	add	s0,s0,a5
	srl	s0,s0,a0
	lui	a0,000000F4
	addi	a0,a0,+00000240
	add	a0,s0,a0
	c.srli	a0,00000010

l23062B42:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23062B50:
	c.li	a0,00000000
	c.j	0000000023062B42

;; rc_update_stats: 23062B54
;;   Called from:
;;     23063340 (in rc_init)
;;     23063530 (in rc_check)
rc_update_stats proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000020
	addi	a1,a0,+0000007C
	c.addi4spn	a0,00000028
	c.swsp	ra,000000D4
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.swsp	s9,000000C0
	c.swsp	s10,00000040
	c.swsp	s11,000000BC
	jal	ra,000000002306CF80
	lhu	a4,s0,+000000A6
	c.beqz	a4,0000000023062BAC

l23062B88:
	lhu	a5,s0,+000000A4
	lw	a3,s0,+000000A8
	sw	zero,s0,+000000A4
	c.slli	a5,10
	xor	a5,a5,a4
	addi	a4,zero,+00000060
	add	a4,a4,a3
	c.slli	a5,05
	c.add	a5,a4
	c.srli	a5,00000007
	sw	a5,s0,+000000A8

l23062BAC:
	lhu	a2,s0,+000000C0
	c.addi4spn	a3,00000048
	sb	zero,s0,+000000AD
	addi	a5,s0,+0000000E
	c.li	a4,00000000
	c.mv	s3,a3
	c.li	a1,00000001

l23062BC0:
	bne	a2,a4,0000000023062C08

l23062BC4:
	lhu	a1,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.li	s2,00000000
	c.li	s4,0000000C
	beq	a1,a5,0000000023062C4A

l23062BD4:
	lbu	a3,s0,+000000AF
	c.li	a5,00000000
	c.li	a0,0000000C
	andi	a2,a3,+00000020
	bne	a2,zero,0000000023062E8C

l23062BE4:
	lbu	s1,s0,+00000080
	c.li	a5,0000000C
	add	s1,s1,a5
	addi	a0,s1,+00000004
	c.add	a0,s0
	c.add	s1,s0
	jal	ra,00000000230624C4
	sh	zero,s1,+00000004
	sh	zero,s1,+00000006
	sw	zero,s0,+00000004
	c.j	0000000023062C64

l23062C08:
	c.addi	a4,00000001
	c.slli	a4,10
	sw	zero,a3,+00000000
	sb	zero,a5,+00000000
	sb	a1,a5,+00000001
	c.srli	a4,00000010
	c.addi	a3,00000004
	c.addi	a5,0000000C
	c.j	0000000023062BC0

l23062C20:
	add	a0,s2,s4
	c.addi	a0,00000004
	c.add	a0,s0
	jal	ra,00000000230624C4
	andi	a1,s2,+000000FF
	c.mv	a0,s0
	jal	ra,0000000023062ADE
	slli	a5,s2,00000002
	c.addi4spn	a4,00000070
	c.addi	s2,00000001
	c.add	a5,a4
	c.slli	s2,10
	sw	a0,a5,+00000FD8
	srli	s2,s2,00000010

l23062C4A:
	lhu	a5,s0,+000000C0
	bltu	s2,a5,0000000023062C20

l23062C52:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230623C0
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230621E4
	c.beqz	s1,0000000023062C68

l23062C64:
	c.li	s1,00000000
	c.j	0000000023062D1C

l23062C68:
	lhu	a3,s0,+000000C0
	c.li	a5,00000009
	bltu	a5,a3,0000000023062C8E

l23062C72:
	addi	a4,s0,+00000004
	c.li	a5,00000000

l23062C78:
	beq	a3,a5,0000000023062C64

l23062C7C:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a4,+00000000
	sh	zero,a4,+00000002
	c.srli	a5,00000010
	c.addi	a4,0000000C
	c.j	0000000023062C78

l23062C8E:
	lhu	a4,s0,+00000080
	c.li	a3,0000000C
	lhu	a5,s0,+00000088
	add	a4,a4,a3
	c.li	a2,0000000C
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,0000001C
	lui	s6,0002307F
	c.li	s3,00000000
	c.li	s7,00000004
	addi	s6,s6,-00000274
	c.li	s8,00000001
	add	a5,a5,a3
	c.add	a4,s0
	lhu	s2,a4,+0000000A
	srai	s5,s2,0000000B
	andi	s5,s5,+00000006
	andi	s9,s2,+00000200
	andi	s10,s2,-00000201
	ori	s11,s2,+00000200
	c.add	a5,s0
	lhu	s4,a5,+0000000A
	jal	ra,000000002306D1BC

l23062CD8:
	addi	a5,s3,-00000001
	andi	a5,a5,+000000FF
	bltu	s7,a5,0000000023062CEC

l23062CE4:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5

l23062CEC:
	c.mv	a0,s0
	jal	ra,0000000023062574
	sh	a0,sp,+0000001C
	c.addi	s3,00000001
	andi	s3,s3,+000000FF
	c.li	a5,00000006
	bne	s3,a5,0000000023062CD8

l23062D02:
	lhu	a7,s0,+000000C0
	c.lui	a1,00010000
	c.li	a5,00000001
	c.li	a3,00000000
	c.li	t1,0000000C
	c.li	t3,00000005
	c.addi	a1,FFFFFFFF
	c.li	t4,0000000A

l23062D14:
	bltu	a5,a7,0000000023062DF8

l23062D18:
	sw	zero,s0,+00000004

l23062D1C:
	addi	a5,s0,+00000080
	c.addi4spn	a4,00000028
	addi	s0,s0,+000000A0

l23062D26:
	lhu	a2,a4,+00000004
	lhu	a3,a5,+00000000
	bne	a2,a3,0000000023062EF8

l23062D32:
	c.addi	a5,00000008
	c.addi	a4,00000008
	bne	a5,s0,0000000023062D26

l23062D3A:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.mv	a0,s1
	c.lwsp	sp,00000158
	c.lwsp	t1,00000134
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.lwsp	s6,000000A8
	c.lwsp	s2,000000C8
	c.lwsp	a4,000000E8
	c.lwsp	a0,0000000C
	c.lwsp	t1,0000002C
	c.lwsp	sp,0000004C
	c.lwsp	t4,0000017C
	c.addi16sp	000000B0
	c.jr	ra
23062D5A                               E3 8E 0A F8 83 47           .....G
23062D60 D4 0B E3 9A 87 F9 63 95 0C 00 23 1F B1 01 61 B7 ......c...#...a.
23062D70 23 1F A1 01 49 B7 CA 85 22 85 EF F0 CF BB E3 0C #...I...".......
23062D80 A9 F6 AA 85 2A C6 22 85 EF F0 AF F9 2D D5 B2 47 ....*.".....-..G
23062D90 23 10 F1 02 8D B7 CA 85 22 85 EF F0 EF B3 E3 0C #.......".......
23062DA0 A9 F4 AA 85 2A C6 22 85 EF F0 AF F7 29 D5 B2 47 ....*.".....)..G
23062DB0 23 11 F1 02 89 B7 D2 85 22 85 EF F0 CF B7 E3 0C #.......".......
23062DC0 AA F2 AA 85 2A C6 22 85 EF F0 AF F5 0D D5 B2 47 ....*."........G
23062DD0 23 12 F1 02 0D B7 D2 85 22 85 EF F0 EF AF E3 0C #.......".......
23062DE0 AA F0 AA 85 2A C6 22 85 EF F0 AF F3 E3 05 05 F0 ....*.".........
23062DF0 B2 47 23 13 F1 02 01 B7                         .G#.....       

l23062DF8:
	add	a4,a5,t1
	c.add	a4,s0
	lh	a2,a4,+00000008
	bge	a2,zero,0000000023062E0E

l23062E06:
	lbu	a2,a4,+0000000C
	bgeu	t4,a2,0000000023062E70

l23062E0E:
	lhu	a2,s0,+00000080
	beq	a2,a5,0000000023062E70

l23062E16:
	lhu	a2,s0,+00000088
	beq	a2,a5,0000000023062E70

l23062E1E:
	lhu	a2,s0,+00000090
	beq	a2,a5,0000000023062E70

l23062E26:
	bltu	t3,a3,0000000023062E70

l23062E2A:
	slli	a2,a3,00000001
	c.addi4spn	a0,00000070
	c.add	a2,a0
	lhu	a2,a2,-00000054
	beq	a2,a1,0000000023062E56

l23062E3A:
	addi	a6,s0,+0000000A
	c.li	a0,00000000

l23062E40:
	bltu	a0,a7,0000000023062E62

l23062E44:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	a2,a4,+0000000A
	sh	zero,a4,+00000008
	sb	zero,a4,+0000000D
	c.srli	a5,00000010

l23062E56:
	c.addi	a3,00000001

l23062E58:
	sh	zero,a4,+00000004
	sh	zero,a4,+00000006
	c.j	0000000023062D14

l23062E62:
	c.addi	a6,0000000C
	lhu	t5,a6,-0000000C
	beq	t5,a2,0000000023062E56

l23062E6C:
	c.addi	a0,00000001
	c.j	0000000023062E40

l23062E70:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023062E58

l23062E78:
	add	a2,a5,a0
	c.add	a2,s0
	lhu	a2,a2,+0000000A
	beq	a2,a1,0000000023062EB0

l23062E86:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23062E8C:
	slli	a2,a5,00000010
	c.srli	a2,00000010
	bltu	a2,a4,0000000023062E78

l23062E96:
	bne	a4,a2,0000000023062EB0

l23062E9A:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a2,0000000C
	add	a2,a5,a2
	c.add	a2,s0
	sh	a1,a2,+0000000A
	sh	zero,a2,+00000008

l23062EB0:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000080
	sh	a5,s0,+00000088
	sh	a5,s0,+00000090
	sw	zero,s0,+0000007C
	sw	zero,s0,+00000084
	sw	zero,s0,+0000008C
	addi	a2,s0,+00000004
	c.li	a5,00000000

l23062ED2:
	bne	a4,a5,0000000023062EE6

l23062ED6:
	andi	a3,a3,-00000061
	ori	a3,a3,+00000040
	sb	a3,s0,+000000AF
	c.li	s1,00000001
	c.j	0000000023062D1C

l23062EE6:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a2,+00000000
	sh	zero,a2,+00000002
	c.srli	a5,00000010
	c.addi	a2,0000000C
	c.j	0000000023062ED2

l23062EF8:
	c.li	s1,00000001
	c.j	0000000023062D3A

;; rc_init: 23062EFC
;;   Called from:
;;     23061D04 (in me_init_rate)
rc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a5,a0,+0000001B
	c.li	a4,00000009
	c.mv	s0,a0
	addi	s5,a5,+00000008
	lw	s4,a0,+0000010C
	andi	s5,s5,+000000FF
	bgeu	a4,a5,0000000023062F48

l23062F2E:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-000007A1
	addi	a1,a1,+00000388
	addi	a0,a0,-000000E0
	jal	ra,0000000023054FF4

l23062F48:
	lbu	s2,s0,+0000001B
	addi	s7,zero,+000000C8
	lui	s1,0004201E
	add	s7,s2,s7
	addi	s3,s1,+000006F0
	addi	s1,s1,+000006F0
	c.add	s3,s7
	sw	s3,s0,+00000110
	jal	ra,00000000230562F2
	c.li	a1,00000000
	slli	s6,a0,0000000E
	addi	a2,zero,+000000C8
	c.mv	a0,s3
	jal	ra,000000002306D1BC
	lw	a5,s0,+000000EC
	addi	a0,s0,+000000B0
	c.li	a1,00000000
	c.andi	a5,00000002
	beq	a5,zero,000000002306317E

l23062F8A:
	jal	ra,00000000230619EA
	c.li	a5,00000002
	addi	s9,s0,+000000C3
	sb	a5,s3,+000000B1
	sh	a0,s3,+000000B6
	c.mv	a0,s9
	jal	ra,00000000230618CE
	c.mv	s8,a0
	lui	a0,0004201D
	addi	a0,a0,-00000735
	jal	ra,00000000230618CE
	c.mv	a5,s8
	bgeu	a0,s8,0000000023062FB8

l23062FB6:
	c.mv	a5,a0

l23062FB8:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sb	a5,a4,+000000BC
	c.li	a4,00000003
	bgeu	a4,a5,0000000023062FE6

l23062FCC:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000075A
	addi	a1,a1,+00000388
	addi	a0,a0,-000000B8
	jal	ra,0000000023054FF4

l23062FE6:
	addi	a0,s7,+000000B2
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.li	a2,00000004
	c.mv	a1,s9
	c.add	a0,s1
	jal	ra,000000002306CF80
	c.li	a5,FFFFFFFF
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	sb	a5,s7,+000000B2
	c.li	a5,00000007
	sb	a5,s7,+000000B8
	jal	ra,00000000230618EC
	sb	a0,s7,+000000B9
	c.li	a5,0000000C
	bgeu	a5,a0,0000000023063036

l2306301C:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000748
	addi	a1,a1,+00000388
	addi	a0,a0,-000000A4
	jal	ra,0000000023054FF4

l23063036:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,0000000023061908
	sb	a0,s7,+000000BA
	c.li	a5,0000000C
	bgeu	a5,a0,000000002306306C

l23063052:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000742
	addi	a1,a1,+00000388
	addi	a0,a0,-00000054
	jal	ra,0000000023054FF4

l2306306C:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	jal	ra,0000000023056306
	lhu	a5,s0,+000000C0
	c.beqz	a0,0000000023063096

l2306308C:
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023063096

l23063092:
	ori	s6,s6,+00000040

l23063096:
	slli	a4,a5,00000014
	blt	a4,zero,0000000023063148

l2306309E:
	c.lui	a4,00001000

l230630A0:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	addi	a4,a4,-00000101
	c.add	a5,s1
	sh	a4,a5,+000000C2
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.li	a5,00000003
	bgeu	a5,a4,00000000230630DA

l230630C0:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000072B
	addi	a1,a1,+00000388
	addi	a0,a0,+000000A0
	jal	ra,0000000023054FF4

l230630DA:
	lbu	a4,s0,+000000F1
	c.beqz	a4,000000002306314C

l230630E0:
	c.li	a5,00000001
	beq	a4,a5,0000000023063168

l230630E6:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a5,00000001
	c.add	a4,s1
	lbu	a3,a4,+000000B1
	bgeu	a5,a3,0000000023063230

l230630FA:
	c.li	a2,00000003
	bgeu	a2,a3,00000000230633FA

l23063100:
	sh	zero,a4,+000000C0

l23063104:
	c.lui	s8,00001000
	lui	s7,0002307B
	lui	a0,0002307F
	addi	a2,s8,-00000701
	addi	a1,s7,+00000388
	addi	a0,a0,+00000060
	jal	ra,0000000023054FF4
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	lhu	a4,a5,+000000C0
	c.li	a5,0000000A
	bgeu	a5,a4,0000000023063290

l23063132:
	lui	a0,0002307F
	addi	a2,s8,-00000700
	addi	a1,s7,+00000388
	addi	a0,a0,+00000078
	jal	ra,0000000023054FF4
	c.j	0000000023063290

l23063148:
	c.lui	a4,00002000
	c.j	00000000230630A0

l2306314C:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230630E6

l23063156:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,00000001
	c.add	a5,s1

l23063162:
	sb	a4,a5,+000000BD
	c.j	00000000230630E6

l23063168:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000040
	c.beqz	a5,00000000230630E6

l23063172:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	c.j	0000000023063162

l2306317E:
	jal	ra,00000000230619EA
	sh	a0,s3,+000000B6
	jal	ra,00000000230618EC
	sb	a0,s3,+000000B9
	c.li	a5,0000000B
	bgeu	a5,a0,00000000230631AE

l23063194:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000070C
	addi	a1,a1,+00000388
	addi	a0,a0,-00000004
	jal	ra,0000000023054FF4

l230631AE:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,0000000023061908
	sb	a0,s7,+000000BA
	c.li	a5,0000000B
	bgeu	a5,a0,00000000230631E4

l230631CA:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000070A
	addi	a1,a1,+00000388
	addi	a0,a0,+00000020
	jal	ra,0000000023054FF4

l230631E4:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,FFFFFFFF
	c.add	a5,s1
	sb	a4,a5,+000000B8
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.beqz	a4,0000000023063218

l230631FE:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000707
	addi	a1,a1,+00000388
	addi	a0,a0,+00000044
	jal	ra,0000000023054FF4

l23063218:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	c.j	00000000230630E6

l23063230:
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.li	a1,0000000C
	sub	a4,a5,a4
	srai	a5,a3,00000002
	andi	a2,a5,+00000001
	srai	a5,a3,00000001
	c.andi	a5,00000001
	c.add	a5,a2
	sll	a5,a5,a4
	andi	a2,a3,+00000001
	c.add	a5,a2
	srai	a2,a3,00000003
	c.andi	a2,00000001
	sll	a4,a2,a4
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000004

l2306326A:
	sra	a2,a3,a4
	c.andi	a2,00000001
	c.add	a5,a2
	c.slli	a5,10
	c.addi	a4,00000001
	c.srli	a5,00000010
	bne	a4,a1,000000002306326A

l2306327C:
	c.li	a4,0000000A
	bgeu	a4,a5,0000000023063460

l23063282:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	sh	a4,a5,+000000C0

l23063290:
	lbu	a4,s0,+0000001B
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a3
	addi	a5,a5,-000007F8
	c.add	a5,a4
	lw	s7,a5,+00000110
	bne	s7,zero,00000000230632C6

l230632AE:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000006E4
	addi	a1,a1,+00000388
	addi	a0,a0,-00000304
	jal	ra,0000000023054FF4

l230632C6:
	lhu	a4,s7,+000000C0
	addi	s9,s7,+0000000A
	c.mv	a5,s9
	c.li	s8,00000000
	c.li	a3,FFFFFFFF

l230632D4:
	bne	s8,a4,0000000023063474

l230632D8:
	c.mv	a0,s7
	jal	ra,0000000023062388
	sh	a0,s7,+0000000A
	c.mv	a0,s7
	jal	ra,000000002306244E
	c.addi	s8,FFFFFFFF
	c.li	a5,0000000C
	add	s8,s8,a5
	c.li	s10,0000000C
	c.add	s8,s7
	sh	a0,s8,+0000000A
	c.li	s8,00000001

l230632FA:
	lhu	a5,s7,+000000C0
	addi	a4,a5,-00000001
	blt	s8,a4,0000000023063484

l23063306:
	sh	a4,s7,+00000080
	addi	a4,a5,-00000002
	c.addi	a5,FFFFFFFD
	sh	a5,s7,+00000090
	c.lui	a5,00010000
	sw	a5,s7,+000000A8
	c.li	a5,FFFFFFFF
	sh	a4,s7,+00000088
	sh	a5,s7,+000000C6
	c.li	a1,00000001
	sw	zero,s7,+0000007C
	sw	zero,s7,+00000084
	sw	zero,s7,+0000008C
	sh	zero,s7,+00000098
	sw	zero,s7,+00000094
	sb	zero,s7,+000000AF
	c.mv	a0,s7
	jal	ra,0000000023062B54
	c.li	a5,00000005
	sb	a5,s7,+000000AC
	addi	a5,zero,+000000C8
	add	s2,s2,a5
	addi	a4,s4,+00000014
	addi	a3,s4,+00000024
	c.li	a1,0000000C
	lui	a2,00080000

l23063360:
	lbu	a5,s3,+00000080
	c.addi	a4,00000004
	c.addi	s3,00000008
	add	a5,a5,a1
	c.add	a5,s2
	c.add	a5,s1
	lhu	a5,a5,+0000000A
	c.or	a5,a2
	sw	a5,a4,+00000FFC
	bne	a4,a3,0000000023063360

l2306337E:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.add	s2,s1
	c.slli	s5,0A
	sw	a5,s2,+00000000
	lui	a5,000BADCB
	addi	a5,a5,-000004E2
	sw	a5,s4,+00000000
	c.lui	a5,FFFF0000
	addi	a5,a5,+00000704
	sw	s5,s4,+0000000C
	sw	a5,s4,+00000010
	sw	s6,s4,+00000004
	jal	ra,00000000230562F2
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	c.addi	a5,FFFFFFFF
	sw	a5,s4,+00000008
	lw	a4,s0,+0000010C
	c.lui	a5,00002000
	addi	a5,a5,+00000200
	c.sw	a4,52(a5)
	lw	a5,s0,+0000010C
	c.lw	s0,16(a4)
	c.sw	a5,56(a4)
	lbu	a5,s0,+0000011A
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	ori	a5,a5,+00000011
	sb	a5,s0,+0000011A
	c.lwsp	s0,00000114
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

l230633FA:
	lbu	a3,a4,+000000BD
	lbu	a1,a4,+000000B2
	c.li	a2,00000008
	sll	a3,a5,a3
	c.li	a5,00000000

l2306340A:
	andi	a4,a1,+00000001
	add	a4,a3,a4
	c.addi	a2,FFFFFFFF
	c.srli	a1,00000001
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a2,000000002306340A

l2306341E:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a2,00000001
	c.add	a4,s1
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.sub	a2,a4
	srai	a4,a3,00000002
	andi	a1,a4,+00000001
	srai	a4,a3,00000001
	c.andi	a4,00000001
	c.add	a4,a1
	andi	a1,a3,+00000001
	c.srai	a3,00000003
	sll	a4,a4,a2
	c.andi	a3,00000001
	c.add	a4,a1
	sll	a3,a3,a2
	c.add	a4,a3
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002306327C

l23063460:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sh	a5,a4,+000000C0
	bne	a5,zero,0000000023063290

l23063472:
	c.j	0000000023063104

l23063474:
	c.addi	s8,00000001
	c.slli	s8,10
	sh	a3,a5,+00000000
	srli	s8,s8,00000010
	c.addi	a5,0000000C
	c.j	00000000230632D4

l23063484:
	c.mv	a0,s7
	jal	ra,0000000023062574
	lhu	a3,s7,+000000C0
	c.mv	a4,s9
	c.li	a5,00000000

l23063492:
	bltu	a5,a3,00000000230634AA

l23063496:
	add	a5,s8,s10
	c.addi	s8,00000001
	c.slli	s8,10
	srli	s8,s8,00000010
	c.add	a5,s7
	sh	a0,a5,+0000000A
	c.j	00000000230632FA

l230634AA:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,00000000230632FA

l230634B4:
	c.addi	a5,00000001
	c.j	0000000023063492

;; rc_check: 230634B8
;;   Called from:
;;     23061B76 (in me_check_rc)
rc_check proc
	c.li	a5,00000009
	bltu	a5,a0,0000000023063790

l230634BE:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	lui	s3,0004201B
	addi	a5,s3,-000007F8
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.add	a5,a4
	lw	s0,a5,+00000110
	c.mv	s4,a0
	addi	s3,s3,-000007F8
	c.bnez	s0,0000000023063512

l230634F8:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-000007DA
	addi	a1,a1,+00000388
	addi	a0,a0,-00000304
	jal	ra,0000000023054FF4

l23063512:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	c.lui	a5,00018000
	addi	a5,a5,+000006A0
	c.sub	a5,a4
	c.lw	s0,0(a4)
	c.li	s6,00000000
	c.add	a5,a4
	bge	a5,zero,000000002306354E

l2306352C:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023062B54
	lbu	a5,s0,+000000AF
	sb	zero,s0,+000000AE
	sb	zero,s0,+000000B0
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+000000AF
	lw	a5,s1,+00000120
	c.mv	s6,a0
	c.sw	s0,0(a5)

l2306354E:
	lbu	a5,s0,+000000AE
	c.li	a4,00000001
	bne	a5,a4,0000000023063752

l23063558:
	lbu	a4,s0,+000000AF
	andi	a4,a4,+00000040
	bne	a4,zero,00000000230636EE

l23063564:
	lbu	a4,s0,+000000B1
	lhu	s5,s0,+00000080
	bltu	a5,a4,0000000023063670

l23063570:
	c.li	a5,0000000C
	add	a5,s5,a5
	c.lui	a3,FFFFE000
	addi	a3,a3,+00000667
	c.add	a5,s0
	lhu	a5,a5,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.lui	a3,0000E000
	c.srli	a5,00000010
	addi	a3,a3,-00000666
	bgeu	a3,a5,000000002306366C

l23063592:
	c.li	a5,00000005

l23063594:
	sb	a5,s0,+000000AC
	lui	a5,0004200E
	addi	a5,a5,-0000033C
	c.lw	a5,0(s1)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	s1,s1,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	c.swsp	a4,00000084
	c.add	s1,a3
	c.sw	a5,0(s1)
	lhu	a5,s0,+000000C0
	c.srli	s1,00000010
	and	s1,s1,a5
	beq	s1,s5,00000000230636EE

l230635C8:
	lhu	s7,s0,+00000088
	beq	s1,s7,00000000230636EE

l230635D0:
	lhu	s9,s0,+00000090
	beq	s1,s9,00000000230636EE

l230635D8:
	c.li	s8,0000000C
	add	s2,s1,s8
	c.lui	a5,0000F000
	addi	a5,a5,+00000333
	c.add	s2,s0
	lhu	a3,s2,+00000008
	bltu	a5,a3,00000000230636EE

l230635EE:
	lhu	s11,s2,+0000000A
	c.mv	a0,s11
	jal	ra,000000002306280C
	add	a5,s5,s8
	c.lwsp	a2,000000C4
	c.li	a3,00000001
	c.mv	s10,a0
	c.add	a5,s0
	lhu	a5,a5,+0000000A
	bltu	a3,a4,000000002306367A

l2306360C:
	c.mv	a0,a5
	jal	ra,000000002306280C
	bgeu	a0,s10,000000002306373A

l23063616:
	lbu	a5,s2,+0000000C
	c.li	a0,00000000
	sltiu	a5,a5,+00000014
	xori	a5,a5,+00000001

l23063624:
	lw	a4,s0,+00000084
	sh	s7,s0,+000000A0
	sw	a4,s0,+0000009C
	lbu	a4,s0,+000000AF
	beq	a5,zero,0000000023063740

l23063638:
	c.lw	s0,124(a5)
	c.andi	a4,FFFFFFFD
	sb	a4,s0,+000000AF
	sw	a5,s0,+00000084
	sh	s5,s0,+00000088
	c.sw	s0,124(a0)
	sh	s1,s0,+00000080

l2306364E:
	c.li	a5,00000002
	sb	a5,s0,+000000AE

l23063654:
	addi	a0,zero,+000001B0
	add	s4,s4,a0
	c.add	s3,s4
	lbu	a5,s3,+0000011A
	ori	a5,a5,+00000001
	sb	a5,s3,+0000011A
	c.j	00000000230636F6

l2306366C:
	c.li	a5,0000000A
	c.j	0000000023063594

l23063670:
	lhu	a5,s0,+000000AA
	c.addi	a5,00000008
	c.slli	a5,01
	c.j	0000000023063594

l2306367A:
	add	s8,s7,s8
	c.swsp	a5,00000084
	c.add	s8,s0
	lhu	a0,s8,+0000000A
	addi	s8,zero,+00000020
	jal	ra,000000002306280C
	lbu	a4,s2,+0000000D
	c.lwsp	a2,000000E4
	c.bnez	a4,000000002306369A

l23063696:
	lhu	s8,s0,+000000AA

l2306369A:
	bltu	s10,a0,0000000023063714

l2306369E:
	c.mv	a0,a5
	jal	ra,000000002306209E
	c.swsp	a0,00000084
	c.mv	a0,s11
	jal	ra,000000002306209E
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	bltu	a5,a0,00000000230636C8

l230636B4:
	c.li	a5,0000000C
	add	s9,s9,a5
	c.add	s9,s0
	lhu	a0,s9,+0000000A
	jal	ra,000000002306280C
	bltu	s10,a0,0000000023063714

l230636C8:
	lbu	a5,s2,+0000000C
	bltu	a5,s8,00000000230636EE

l230636D0:
	lbu	a5,s0,+000000AD
	c.li	a4,00000002
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000AD
	bgeu	a4,a5,0000000023063714

l230636E4:
	c.li	a4,0000000F
	bgeu	a4,a5,00000000230636EE

l230636EA:
	sb	a4,s0,+000000AD

l230636EE:
	sb	zero,s0,+000000AE

l230636F2:
	bne	s6,zero,0000000023063654

l230636F6:
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

l23063714:
	andi	a1,s1,+000000FF
	c.mv	a0,s0
	jal	ra,0000000023062ADE
	lbu	a4,s2,+0000000E
	c.li	a3,00000009
	c.li	a5,00000001
	c.andi	a4,0000000F
	bltu	a3,a4,0000000023063624

l2306372C:
	lbu	a5,s2,+0000000C
	sltu	a5,a5,s8
	xori	a5,a5,+00000001
	c.j	0000000023063624

l2306373A:
	c.li	a0,00000000
	c.li	a5,00000001
	c.j	0000000023063624

l23063740:
	ori	a4,a4,+00000002
	sb	a4,s0,+000000AF
	sw	a0,s0,+00000084
	sh	s1,s0,+00000088
	c.j	000000002306364E

l23063752:
	c.li	a4,00000003
	bne	a5,a4,00000000230636F2

l23063758:
	lbu	a5,s0,+000000AF
	c.andi	a5,00000002
	c.bnez	a5,000000002306376E

l23063760:
	lhu	a5,s0,+00000088
	sh	a5,s0,+00000080
	lw	a5,s0,+00000084
	c.sw	s0,124(a5)

l2306376E:
	lhu	a5,s0,+000000A0
	sb	zero,s0,+000000AE
	sh	a5,s0,+00000088
	lw	a5,s0,+0000009C
	sw	zero,s0,+0000009C
	sw	a5,s0,+00000084
	addi	a5,zero,+000000FF
	sh	a5,s0,+000000A0
	c.j	0000000023063654

l23063790:
	c.jr	ra

;; cfm_raw_send: 23063792
cfm_raw_send proc
	lui	a0,0002307F
	addi	a0,a0,+000000F4
	jal	zero,0000000023003AC6

;; scanu_raw_send_req_handler: 2306379E
scanu_raw_send_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s0,a1
	c.lw	a1,4(a2)
	c.lw	a1,0(a1)
	lui	a0,0002307F
	addi	a0,a0,+00000168
	c.swsp	a3,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000A4
	c.li	a0,00000000
	c.mv	a1,a3
	jal	ra,000000002304C82A
	addi	a1,zero,+00000100
	c.li	a0,00000000
	lw	s2,s0,+00000000
	c.lw	s0,4(s1)
	jal	ra,000000002304A24A
	c.beqz	a0,0000000023063822

l230637D8:
	c.mv	s0,a0
	c.lw	a0,104(a0)
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+0000014C
	jal	ra,000000002306CF80
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000030
	lui	a5,00023063
	addi	a5,a5,+00000792
	sw	a5,s0,+000002CC
	c.lw	s0,108(a5)
	sb	zero,s0,+0000002F
	sb	zero,s0,+0000005E
	sb	zero,s0,+00000060
	sw	s0,s0,+000002D0
	c.lw	a5,20(a4)
	addi	a3,s1,-00000001
	c.addi	s1,00000004
	c.add	a4,a3
	c.sw	a5,24(a4)
	c.sw	a5,28(s1)
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002304A3DE

l23063822:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; scanu_join_req_handler: 23063830
scanu_join_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+0000014E
	addi	a2,zero,+000005D8
	lui	a5,0004201C
	add	a4,a4,a2
	addi	a5,a5,-00000308
	c.add	a5,a4
	sw	zero,a5,+000003E0
	lui	a5,0004201D
	addi	a5,a5,-000004A4
	c.li	a4,00000001
	sh	a3,a5,+00000168
	sh	a4,a5,+0000016A
	lw	a4,a1,+00000140
	c.sw	a5,0(a1)
	sw	a4,a5,+0000016C
	lhu	a4,a1,+00000144
	sh	a4,a5,+00000170
	lbu	a5,a1,+00000140
	c.andi	a5,00000001
	c.beqz	a5,0000000023063892

l2306387A:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000000B6
	addi	a1,a1,+00000388
	addi	a0,a0,+00000148
	jal	ra,0000000023054FF4

l23063892:
	jal	ra,000000002304D4AE
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; scanu_start_req_handler: 2306389E
scanu_start_req_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201D
	c.swsp	ra,00000084
	addi	a5,a5,-000004A4
	sh	a3,a5,+00000168
	sh	zero,a5,+0000016A
	lw	a4,a1,+00000140
	c.sw	a5,0(a1)
	sw	a4,a5,+0000016C
	lhu	a4,a1,+00000144
	sh	a4,a5,+00000170
	jal	ra,000000002304D4AE
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; rxu_mgt_ind_handler: 230638D0
rxu_mgt_ind_handler proc
	c.mv	a0,a1
	jal	zero,000000002304C90A

;; scan_done_ind_handler: 230638D6
scan_done_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201D
	c.swsp	ra,00000084
	addi	a5,a5,-000004A4
	lbu	a4,a5,+0000016B
	c.addi	a4,00000001
	sb	a4,a5,+0000016B
	jal	ra,000000002304D1EA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; scan_start_cfm_handler: 230638F8
scan_start_cfm_handler proc
	lbu	a0,a1,+00000000
	c.beqz	a0,000000002306390E

l230638FE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304C7A2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2306390E:
	c.li	a0,00000000
	c.jr	ra

;; me_set_ps_disable_cfm_handler: 23063912
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000004
	beq	a0,a5,000000002306394E

l23063922:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.beqz	a0,000000002306394E

l2306392A:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000008
	beq	a0,a5,000000002306394E

l23063936:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000001DB
	addi	a1,a1,+00000388
	addi	a0,a0,+00000218
	jal	ra,0000000023054FF4

l2306394E:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000004
	bne	a0,a5,000000002306395E

l2306395A:
	jal	ra,000000002304D978

l2306395E:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 23063966
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000004
	beq	a0,a5,000000002306398E

l23063976:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000001FA
	addi	a1,a1,+00000388
	addi	a0,a0,+000002A0
	jal	ra,0000000023054FF4

l2306398E:
	jal	ra,000000002304D978
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; sm_rsp_timeout_ind_handler: 2306399A
sm_rsp_timeout_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000005
	bne	a0,a5,00000000230639B8

l230639AA:
	c.li	a0,0000000B
	jal	ra,000000002304DD02

l230639B0:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230639B8:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000006
	beq	a0,a5,00000000230639AA

l230639C4:
	c.j	00000000230639B0

;; scanu_start_cfm_handler: 230639C6
scanu_start_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,00000000230639F2

l230639DA:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000010A
	addi	a1,a1,+00000388
	addi	a0,a0,+0000031C
	jal	ra,0000000023054FF4

l230639F2:
	c.addi4spn	a0,00000008
	c.addi4spn	a1,0000000C
	jal	ra,000000002304D64A
	c.lwsp	s0,00000044
	c.beqz	a0,0000000023063A10

l230639FE:
	c.lwsp	a2,00000064
	c.beqz	a1,0000000023063A10

l23063A02:
	c.li	a2,00000000
	jal	ra,000000002304D874

l23063A08:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23063A10:
	c.li	a0,0000000C
	jal	ra,000000002304DD02
	c.j	0000000023063A08

;; mm_connection_loss_ind_handler: 23063A18
mm_connection_loss_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	a0,00000006
	lbu	s2,a1,+00000000
	jal	ra,000000002305070E
	c.li	s1,00000002
	c.bnez	a0,0000000023063A60

l23063A30:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	s0,0004201C
	addi	s0,s0,-00000308
	c.li	s1,00000000
	c.add	s0,s2
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023063A60

l23063A4A:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023063A60

l23063A50:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002305060E
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,000000002304DB72

l23063A60:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; scanu_join_cfm_handler: 23063A6E
scanu_join_cfm_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.li	a0,00000006
	lui	s0,0004201D
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	lw	s3,s0,-00000310
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	jal	ra,000000002305070E
	c.li	a5,00000002
	addi	s0,s0,-00000310
	beq	a0,a5,0000000023063AAC

l23063A94:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000134
	addi	a1,a1,+00000388
	addi	a0,a0,+000002F8
	jal	ra,0000000023054FF4

l23063AAC:
	lbu	s4,s3,+0000003D
	addi	a5,zero,+000005D8
	lui	s2,0004201C
	add	a5,s4,a5
	addi	a0,s2,-00000308
	addi	s2,s2,-00000308
	add	s1,a0,a5
	lw	a4,s1,+000003E0
	bge	a4,zero,0000000023063B9A

l23063AD0:
	addi	a0,sp,+0000000F
	jal	ra,000000002304D916
	c.bnez	a0,0000000023063B92

l23063ADA:
	addi	a3,zero,+00000020
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000A
	jal	ra,0000000023050474
	c.mv	s0,a0
	lbu	a1,sp,+0000000F
	lbu	a0,s3,+0000003D
	jal	ra,000000002305C72C
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	addi	a1,s1,+00000378
	sb	a5,s0,+00000011
	addi	a0,s0,+0000000A
	jal	ra,000000002306CF80
	sb	zero,s0,+00000012
	lw	a5,s1,+000003E0
	c.andi	a5,00000002
	c.beqz	a5,0000000023063B4A

l23063B18:
	lbu	a5,s1,+0000035A
	c.li	a2,00000002
	c.li	a4,00000001
	andi	a3,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a2,a5,0000000023063B36

l23063B2C:
	c.addi	a5,FFFFFFFD
	sll	a5,a4,a5
	andi	a4,a5,+000000FF

l23063B36:
	sb	a4,s0,+00000010
	c.li	a5,00000001
	addi	a4,a3,+0000000D
	sll	a5,a5,a4
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000008

l23063B4A:
	c.mv	a0,s0
	sw	zero,s0,+00000004
	jal	ra,00000000230504E0
	c.li	a1,00000003
	c.li	a0,00000006
	jal	ra,000000002305060E

l23063B5C:
	addi	a5,zero,+000005D8
	add	a5,s4,a5
	lw	a4,s3,+00000030
	c.add	a5,s2
	sw	a4,a5,+000005C4
	lw	a4,s3,+00000030
	c.andi	a4,00000004
	c.beqz	a4,0000000023063B80

l23063B76:
	lw	a4,a5,+000003E0
	c.andi	a4,FFFFFFF9
	sw	a4,a5,+000003E0

l23063B80:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23063B92:
	c.li	a0,0000000D
	jal	ra,000000002304DD02
	c.j	0000000023063B5C

l23063B9A:
	lbu	a4,s0,+00000010
	c.beqz	a4,0000000023063BB2

l23063BA0:
	lw	a1,s1,+000003A4
	addi	a5,a5,+00000378
	c.li	a2,00000001
	c.add	a0,a5
	jal	ra,000000002304D874
	c.j	0000000023063B80

l23063BB2:
	c.li	a0,0000000E
	jal	ra,000000002304DD02
	c.j	0000000023063B80

;; sm_connect_req_handler: 23063BBA
sm_connect_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	a0,00000006
	c.mv	s0,a1
	c.mv	s6,a2
	c.mv	s5,a3
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	lbu	s3,a1,+0000003D
	jal	ra,000000002305070E
	c.li	a5,00000008
	c.li	s1,00000002
	beq	a0,a5,0000000023063CF8

l23063BE8:
	c.lui	a0,00002000
	c.li	a3,00000001
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FF
	jal	ra,0000000023050474
	c.mv	s4,a0
	c.li	a0,00000006
	jal	ra,000000002305070E
	bne	a0,zero,0000000023063D9C

l23063C04:
	addi	a4,zero,+000005D8
	add	a4,s3,a4
	lui	s2,0004201C
	addi	a5,s2,-00000308
	lbu	a3,s0,+0000003B
	addi	s2,s2,-00000308
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,0000000023063C2C

l23063C24:
	lbu	a4,a5,+00000058
	beq	a4,zero,0000000023063D0E

l23063C2C:
	c.li	a5,00000002
	bne	a3,a5,0000000023063DA2

l23063C32:
	lui	s1,0004201D
	lw	a5,s1,-00000310
	addi	s1,s1,-00000310
	c.beqz	a5,0000000023063C58

l23063C40:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000005D
	addi	a1,a1,+00000388
	addi	a0,a0,+00000380
	jal	ra,0000000023054FF4

l23063C58:
	c.lw	s1,4(a5)
	c.sw	s1,0(s0)
	c.beqz	a5,0000000023063C76

l23063C5E:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000061
	addi	a1,a1,+00000388
	addi	a0,a0,+000003A0
	jal	ra,0000000023054FF4

l23063C76:
	c.lui	a0,00002000
	addi	a3,zero,+00000354
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FE
	jal	ra,0000000023050474
	lbu	a1,s0,+0000003D
	c.sw	s1,4(a0)
	lui	a0,0002307F
	c.li	a5,FFFFFFFF
	addi	a0,a0,+000003BC
	c.sw	s1,20(a5)
	sb	zero,s1,+00000011
	jal	ra,0000000023003AC6
	lbu	a4,s0,+0000003B
	c.li	a5,00000002
	bne	a4,a5,0000000023063D64

l23063CAC:
	lbu	a1,s0,+0000003D
	c.li	a5,00000001
	sb	a5,s1,+00000011
	addi	s1,zero,+000005D8
	add	a1,a1,s1
	lui	a0,0004201D
	c.li	a2,00000006
	addi	a0,a0,-000002F8
	addi	a1,a1,+00000038
	c.add	a1,s2
	jal	ra,000000002306CF80
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002305060E
	lbu	a0,s0,+0000003D
	c.li	a1,00000000
	add	a0,a0,s1
	c.add	a0,s2
	jal	ra,000000002304DB72

l23063CEA:
	c.li	s1,00000001
	c.li	a5,00000000

l23063CEE:
	sb	a5,s4,+00000000
	c.mv	a0,s4
	jal	ra,00000000230504E0

l23063CF8:
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

l23063D0E:
	c.li	a4,00000002
	beq	a3,a4,0000000023063C32

l23063D14:
	lbu	a4,a5,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,0000000023063D38

l23063D20:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000059
	addi	a1,a1,+00000388
	addi	a0,a0,+00000344
	jal	ra,0000000023054FF4

l23063D38:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	c.add	s3,s2
	lw	a5,s3,+00000040
	beq	a5,zero,0000000023063C32

l23063D4A:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000005A
	addi	a1,a1,+00000388
	addi	a0,a0,+00000368
	jal	ra,0000000023054FF4
	c.j	0000000023063C32

l23063D64:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023063D8C

l23063D70:
	addi	a5,s0,+00000022
	addi	s0,s0,+00000028
	c.swsp	a5,00000004
	c.swsp	s0,00000084

l23063D7C:
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.beqz	a0,0000000023063D96

l23063D82:
	c.beqz	a1,0000000023063D96

l23063D84:
	c.li	a2,00000000
	jal	ra,000000002304D874
	c.j	0000000023063CEA

l23063D8C:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	jal	ra,000000002304D64A
	c.j	0000000023063D7C

l23063D96:
	jal	ra,000000002304D768
	c.j	0000000023063CEA

l23063D9C:
	c.li	s1,00000000
	c.li	a5,00000008
	c.j	0000000023063CEE

l23063DA2:
	c.li	s1,00000000
	c.li	a5,00000009
	c.j	0000000023063CEE

;; rxu_mgt_ind_handler: 23063DA8
rxu_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	andi	a5,a5,+000000FC
	addi	a4,zero,+000000B0
	c.mv	s0,a1
	bne	a5,a4,0000000023063DDC

l23063DC0:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000005
	bne	a0,a5,0000000023063DD2

l23063DCC:
	c.mv	a0,s0
	jal	ra,000000002304E1F6

l23063DD2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23063DDC:
	c.li	a4,00000010
	bne	a5,a4,0000000023063DF6

l23063DE2:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000006
	bne	a0,a5,0000000023063DD2

l23063DEE:
	c.mv	a0,s0
	jal	ra,000000002304E2F4
	c.j	0000000023063DD2

l23063DF6:
	addi	a4,zero,+00000030
	beq	a5,a4,0000000023063DE2

l23063DFE:
	addi	a4,zero,+000000C0
	beq	a5,a4,0000000023063E0E

l23063E06:
	addi	a4,zero,+000000A0
	bne	a5,a4,0000000023063DD2

l23063E0E:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.bnez	a0,0000000023063DD2

l23063E16:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304E44C

;; mm_set_vif_state_cfm_handler: 23063E22
mm_set_vif_state_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,000000002305070E
	c.li	a5,00000007
	bne	a0,a5,0000000023063F02

l23063E3C:
	lui	a5,0004201D
	lw	s1,a5,-00000310
	addi	a5,zero,+000005D8
	lui	s0,0004201C
	lbu	s2,s1,+0000003D
	addi	s3,s0,-00000308
	c.li	a3,00000006
	add	a5,s2,a5
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,zero,+0000004B
	addi	s0,s0,-00000308
	c.add	s3,a5
	lbu	s4,s3,+00000060
	jal	ra,0000000023050474
	lbu	a4,s1,+0000003A
	sb	a4,a0,+00000004
	lhu	a4,s1,+00000038
	sh	a4,a0,+00000002
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000000
	jal	ra,00000000230504E0
	addi	a3,zero,+000001B0
	add	s4,s4,a3
	lw	a5,s3,+000005C4
	lui	a4,0004201B
	addi	a4,a4,-000007F8
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.addi	a5,00000001
	c.add	a4,s4
	sb	a5,a4,+00000031
	lhu	a3,s1,+00000034
	slli	a2,a3,00000008
	c.srli	a3,00000008
	c.or	a3,a2
	sh	a3,a4,+00000038
	c.li	a4,00000002
	bne	a5,a4,0000000023063EE4

l23063EC4:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,0000000023050474
	sb	zero,a0,+00000000
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000001
	jal	ra,00000000230504E0

l23063EE4:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.add	s0,s2
	lw	a5,s0,+000003E8
	c.and	a5,a4
	c.bnez	a5,0000000023063F02

l23063EFC:
	c.li	a0,00000000
	jal	ra,000000002304DD02

l23063F02:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; me_set_active_cfm_handler: 23063F14
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	jal	ra,000000002305070E
	c.li	a5,00000004
	beq	a0,a5,0000000023063F48

l23063F24:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.li	a5,00000008
	beq	a0,a5,0000000023063F48

l23063F30:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000216
	addi	a1,a1,+00000388
	addi	a0,a0,+000001B8
	jal	ra,0000000023054FF4

l23063F48:
	c.li	a0,00000006
	jal	ra,000000002305070E
	lui	a5,0004201D
	addi	a5,a5,-00000310
	c.li	a4,00000008
	lbu	a5,a5,+00000011
	bne	a0,a4,0000000023063F8A

l23063F60:
	c.beqz	a5,0000000023063F80

l23063F62:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002304D64A
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	c.li	a2,00000000
	jal	ra,000000002304D874

l23063F78:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23063F80:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,000000002305060E
	c.j	0000000023063F78

l23063F8A:
	c.beqz	a5,0000000023063F92

l23063F8C:
	jal	ra,000000002304E014
	c.j	0000000023063F78

l23063F92:
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002304DE94
	c.j	0000000023063F78

;; mm_sta_add_cfm_handler: 23063F9C
mm_sta_add_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a1
	jal	ra,000000002305070E
	c.li	a5,00000003
	beq	a0,a5,0000000023063FD2

l23063FBA:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000019C
	addi	a1,a1,+00000388
	addi	a0,a0,+000002D0
	jal	ra,0000000023054FF4

l23063FD2:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002306408A

l23063FD8:
	lbu	s4,s0,+00000001
	addi	a5,zero,+000001B0
	lui	s0,0004201B
	add	a5,s4,a5
	addi	s2,s0,-000007F8
	lui	s3,0004201C
	addi	s5,s3,-00000308
	c.li	a2,0000000D
	addi	s0,s0,-000007F8
	addi	s3,s3,-00000308
	c.add	s2,a5
	lbu	s1,s2,+0000001A
	addi	a5,zero,+000005D8
	addi	a0,s2,+000000B0
	add	a5,s1,a5
	c.add	s5,a5
	addi	a1,s5,+000003B0
	jal	ra,000000002306CF80
	lw	a5,s5,+000003E0
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023064030

l23064024:
	lw	a4,s2,+000000EC
	ori	a4,a4,+00000001
	sw	a4,s2,+000000EC

l23064030:
	c.andi	a5,00000002
	c.beqz	a5,0000000023064072

l23064034:
	addi	a5,zero,+000001B0
	add	s4,s4,a5
	addi	a1,zero,+000005D8
	addi	a2,zero,+00000020
	add	s1,s1,a1
	c.add	s0,s4
	lw	a5,s0,+000000EC
	addi	a0,s0,+000000C0
	ori	a5,a5,+00000002
	sw	a5,s0,+000000EC
	add	a1,s3,s1
	addi	a1,a1,+00000358
	jal	ra,000000002306CF80
	addi	a1,s1,+00000358
	c.add	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023061878

l23064072:
	jal	ra,000000002304D9B4

l23064076:
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

l2306408A:
	c.li	a0,0000000F
	jal	ra,000000002304DD02
	c.j	0000000023064076

;; sm_disconnect_req_handler: 23064092
sm_disconnect_req_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002305070E
	c.li	a5,00000002
	c.bnez	a0,00000000230640C0

l230640A4:
	lhu	a1,s0,+00000000
	lbu	a0,s0,+00000002
	jal	ra,000000002304DBCA
	c.lui	a0,00002000
	c.li	a2,00000006
	c.li	a1,0000000D
	addi	a0,a0,-000007FC
	jal	ra,000000002305054A
	c.li	a5,00000000

l230640C0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; apm_sta_connect_timeout_ind_handler: 230640CA
apm_sta_connect_timeout_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	s1,0004201B
	jal	ra,0000000023033AF0
	c.lui	s2,00007000
	c.mv	s4,a0
	addi	s1,s1,-000007F8
	c.li	s0,00000000
	addi	s2,s2,+00000530
	c.li	s3,0000000C

l230640F0:
	lw	a5,s1,+000001A8
	c.beqz	a5,0000000023064104

l230640F6:
	sub	a5,s4,a5
	bge	s2,a5,0000000023064104

l230640FE:
	c.mv	a0,s0
	jal	ra,000000002304F6D0

l23064104:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+000001B0
	bne	s0,s3,00000000230640F0

l23064112:
	lui	a2,000004C5
	c.lui	a0,00002000
	addi	a0,a0,-000003F6
	addi	a2,a2,-000004C0
	c.li	a1,00000007
	jal	ra,000000002305098E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; rxu_mgt_ind_handler: 23064138
rxu_mgt_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	c.mv	a0,a1
	andi	a5,a5,+000000FC
	bne	a5,a4,000000002306415A

l2306414E:
	jal	ra,000000002304F99E

l23064152:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2306415A:
	addi	a4,zero,+000000B0
	bne	a5,a4,0000000023064168

l23064162:
	jal	ra,000000002304FAB4
	c.j	0000000023064152

l23064168:
	c.li	a1,00000000
	c.beqz	a5,0000000023064176

l2306416C:
	addi	a4,zero,+00000020
	bne	a5,a4,000000002306417C

l23064174:
	c.li	a1,00000001

l23064176:
	jal	ra,000000002304FB18
	c.j	0000000023064152

l2306417C:
	addi	a4,zero,+000000C0
	bne	a5,a4,000000002306418A

l23064184:
	jal	ra,000000002304FEEA
	c.j	0000000023064152

l2306418A:
	addi	a4,zero,+000000A0
	bne	a5,a4,0000000023064198

l23064192:
	jal	ra,000000002304FF0A
	c.j	0000000023064152

l23064198:
	addi	a4,zero,+00000080
	bne	a5,a4,0000000023064152

l230641A0:
	jal	ra,000000002304FF62
	c.j	0000000023064152

;; apm_sta_add_cfm_handler: 230641A6
apm_sta_add_cfm_handler proc
	lui	a5,0004201D
	lw	a4,a5,-00000524
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a1,+00000000
	c.beqz	a4,00000000230641CE

l230641B8:
	sb	a0,a4,+00000001
	lw	a0,a5,-00000524
	c.li	a1,00000000
	jal	ra,00000000230547DA

l230641C6:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230641CE:
	jal	ra,000000002304F6E8
	c.j	00000000230641C6

;; apm_sta_del_req_handler: 230641D4
apm_sta_del_req_handler proc
	c.addi	sp,FFFFFFF0
	c.lui	a0,00002000
	c.swsp	s1,00000080
	addi	a0,a0,-000003F4
	c.mv	s1,a1
	c.mv	a1,a3
	c.li	a3,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.mv	s0,a0
	lbu	a0,s1,+00000000
	addi	a4,zero,+000005D8
	lui	a5,0004201C
	add	a4,a0,a4
	addi	a5,a5,-00000308
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,0000000023064232

l2306420E:
	lbu	a1,s1,+00000001
	c.li	a5,0000000C
	bltu	a5,a1,0000000023064232

l23064218:
	jal	ra,000000002304FF64
	sb	zero,s0,+00000000

l23064220:
	c.mv	a0,s0
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23064232:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000000
	c.j	0000000023064220

;; apm_stop_cac_req_handler: 2306423A
apm_stop_cac_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	a4,a1,+00000000
	c.mv	s1,a3
	addi	a3,zero,+000005D8
	add	a4,a4,a3
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,0000000023064298

l23064264:
	lbu	a5,a5,+00000058
	c.bnez	a5,0000000023064298

l2306426A:
	c.li	a0,00000007
	c.swsp	a2,00000084
	c.mv	s0,a1
	jal	ra,000000002305070E
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023064298

l23064278:
	lbu	a0,s0,+00000000
	jal	ra,000000002305C84E
	csrrci	zero,mstatus,00000008
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFEF
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000084

l23064298:
	c.lui	a0,00002000
	c.mv	a1,s1
	addi	a0,a0,-000003F9
	jal	ra,000000002305054A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; apm_conf_max_sta_req_handler: 230642B0
apm_conf_max_sta_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+00000000
	c.li	a1,0000000C
	lui	a5,0004201D
	bgeu	a1,a4,00000000230642C4

l230642C2:
	c.li	a4,0000000C

l230642C4:
	c.lui	a0,00002000
	addi	a5,a5,-000002F0
	addi	a0,a0,-000003F2
	c.mv	a1,a3
	sb	a4,a5,+00000017
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_start_cac_req_handler: 230642E0
apm_start_cac_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	lbu	a4,a1,+00000011
	c.mv	s2,a3
	addi	a3,zero,+000005D8
	add	a4,a4,a3
	lui	a5,0004201C
	addi	a5,a5,-00000308
	sb	zero,sp,+00000003
	c.mv	s3,a2
	c.li	s1,00000004
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002306431E

l23064316:
	lbu	a5,a5,+00000058
	c.beqz	a5,000000002306434E

l2306431C:
	c.li	s1,00000008

l2306431E:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	c.li	a3,00000002
	addi	a0,a0,-000003FB
	jal	ra,0000000023050474
	sb	s1,a0,+00000000
	lbu	a4,sp,+00000003
	sb	a4,a0,+00000001
	jal	ra,00000000230504E0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2306434E:
	c.li	a0,00000007
	c.mv	s0,a1
	jal	ra,000000002305070E
	c.bnez	a0,000000002306431C

l23064358:
	lbu	a5,s0,+00000002
	addi	a1,sp,+00000003
	c.addi4spn	a0,00000004
	sb	a5,sp,+00000004
	lbu	a5,s0,+00000010
	sb	a5,sp,+00000005
	lhu	a5,s0,+00000000
	sh	a5,sp,+00000006
	c.lw	s0,8(a5)
	sh	a5,sp,+00000008
	c.lw	s0,12(a5)
	sh	a5,sp,+0000000A
	jal	ra,000000002305C242
	c.mv	s1,a0
	c.bnez	a0,00000000230643B0

l2306438A:
	lbu	a1,sp,+00000003
	lbu	a0,s0,+00000011
	jal	ra,000000002305C72C
	csrrci	zero,mstatus,00000008
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	ori	a4,a4,+00000010
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.j	000000002306431E

l230643B0:
	c.li	s1,00000001
	c.j	000000002306431E

;; me_set_ps_disable_cfm_handler: 230643B4
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,00000000230643E4

l230643C4:
	c.li	a0,00000007
	jal	ra,000000002305070E
	c.beqz	a0,00000000230643E4

l230643CC:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000000EE
	addi	a1,a1,+00000388
	addi	a0,a0,+000005AC
	jal	ra,0000000023054FF4

l230643E4:
	c.li	a0,00000007
	jal	ra,000000002305070E
	c.li	a5,00000001
	bne	a0,a5,00000000230643F4

l230643F0:
	jal	ra,000000002304F1FE

l230643F4:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 230643FC
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,0000000023064424

l2306440C:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000110
	addi	a1,a1,+00000388
	addi	a0,a0,+00000634
	jal	ra,0000000023054FF4

l23064424:
	jal	ra,000000002304F1FE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_cfm_handler: 23064430
mm_bcn_change_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000002
	beq	a0,a5,0000000023064458

l23064440:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000156
	addi	a1,a1,+00000388
	addi	a0,a0,+00000608
	jal	ra,0000000023054FF4

l23064458:
	c.li	a0,00000000
	jal	ra,000000002304F0D0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_stop_req_handler: 23064466
apm_stop_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lbu	s0,a1,+00000000
	addi	a4,zero,+000005D8
	lui	a0,0004201C
	add	a4,s0,a4
	addi	a5,a0,-00000308
	c.mv	s2,a3
	c.mv	s3,a2
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,00000000230644E4

l23064496:
	lbu	a5,a5,+00000058
	c.beqz	a5,00000000230644E4

l2306449C:
	addi	s1,a0,-00000308
	c.li	a0,00000007
	jal	ra,000000002305070E
	c.li	a5,00000002
	c.bnez	a0,00000000230644F4

l230644AA:
	lui	a5,0004201D
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000014
	c.beqz	a4,00000000230644BC

l230644B8:
	sb	zero,a5,+00000014

l230644BC:
	addi	a0,zero,+000005D8
	add	a0,s0,a0
	lui	s0,0004201D
	c.add	a0,s1
	jal	ra,000000002304F376
	lw	a0,s0,-00000524
	c.beqz	a0,00000000230644E4

l230644D4:
	jal	ra,00000000230548FC
	lw	a0,s0,-00000524
	jal	ra,0000000023054EFE
	sw	zero,s0,+00000ADC

l230644E4:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,a0,-000003FD
	jal	ra,000000002305054A
	c.li	a5,00000000

l230644F4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; apm_start_req_handler: 23064504
apm_start_req_handler proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	a0,0002307F
	lui	s7,0002307F
	c.swsp	s0,0000001C
	c.swsp	s8,0000000C
	c.mv	s0,a1
	c.mv	s8,a2
	addi	a1,s7,+00000464
	addi	a2,zero,+0000004C
	addi	a0,a0,+000004FC
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s6,00000010
	c.swsp	s9,00000088
	c.mv	s5,a3
	jal	ra,0000000023003AC6
	lbu	s3,s0,+00000033
	addi	a5,zero,+000005D8
	lui	s2,0004201C
	add	a5,s3,a5
	addi	s1,s2,-00000308
	c.li	s4,00000004
	c.add	s1,a5
	lbu	a4,s1,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002306481E

l2306455C:
	c.li	a0,00000007
	jal	ra,000000002305070E
	bne	a0,zero,000000002306481C

l23064566:
	lbu	a5,s1,+00000058
	bne	a5,zero,0000000023064856

l2306456E:
	c.lw	s1,64(a5)
	addi	s2,s2,-00000308
	c.beqz	a5,000000002306458E

l23064576:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000067
	addi	a1,a1,+00000388
	addi	a0,a0,+00000368
	jal	ra,0000000023054FF4

l2306458E:
	lbu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	lui	s6,0004201D
	addi	a1,s0,+0000000E
	addi	a0,sp,+0000000D
	sw	s0,s6,+00000D10
	jal	ra,0000000023062068
	addi	s6,s6,-000002F0
	c.li	s4,00000001
	bne	a0,zero,000000002306481E

l230645B4:
	lhu	a1,s0,+0000000E
	lbu	a0,s0,+00000010
	jal	ra,000000002304B3A2
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.add	a5,s2
	sw	a0,a5,+000003A4
	lb	a4,s0,+00000012
	sb	a4,a0,+00000004
	c.lw	s0,20(a4)
	sh	a4,a5,+000003A8
	c.lw	s0,24(a4)
	sh	a4,a5,+000003AA
	lbu	a5,s0,+0000001C
	c.li	a4,00000004
	bne	a5,a4,00000000230645EE

l230645EC:
	c.li	a5,00000003

l230645EE:
	addi	s4,zero,+000005D8
	add	s4,s3,s4
	lbu	a1,sp,+0000000D
	add	s5,s2,s4
	sb	a5,s5,+000003DA
	lbu	a5,s0,+0000001C
	sb	zero,s5,+000003DC
	sb	a5,s5,+000003DB
	lbu	a0,s0,+00000033
	jal	ra,000000002305C72C
	lbu	a5,s0,+00000034
	c.mv	a0,s5
	sb	a5,s6,+00000014
	lbu	a5,s0,+0000001D
	sb	a5,s6,+00000015
	jal	ra,000000002304F8CE
	beq	a0,zero,0000000023064786

l23064630:
	addi	s9,s0,+00000035
	c.mv	a1,s0
	c.mv	a0,s9
	jal	ra,00000000230619B2
	lbu	a5,s0,+00000043
	c.beqz	a5,000000002306464E

l23064642:
	lw	a5,s5,+000003E0
	ori	a5,a5,+00000001
	sw	a5,s5,+000003E0

l2306464E:
	lui	a5,0004201D
	lbu	a5,a5,-00000716
	c.beqz	a5,000000002306466E

l23064658:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.add	a5,s2
	lw	a4,a5,+000003E0
	ori	a4,a4,+00000002
	sw	a4,a5,+000003E0

l2306466E:
	addi	s8,zero,+000005D8
	add	s8,s3,s8
	lhu	a5,s0,+00000028
	addi	a2,zero,+00000022
	addi	a1,s0,+00000044
	add	s1,s2,s8
	sh	a5,s1,+00000412
	lbu	a5,s0,+00000042
	addi	a0,s1,+0000037E
	sh	a5,s1,+000003AC
	lbu	a5,s0,+00000066
	sb	a5,s1,+00000418
	jal	ra,000000002306CF80
	lbu	a5,s1,+0000037E
	c.li	a2,0000000D
	c.mv	a1,s9
	c.add	a5,s1
	sb	zero,a5,+0000037F
	c.lw	s1,80(a5)
	addi	a0,s1,+000003B0
	sw	a5,s1,+00000378
	lhu	a5,s1,+00000054
	sh	a5,s1,+0000037C
	jal	ra,000000002306CF80
	lui	a5,00044B00
	lw	a4,a5,+00000200
	addi	a0,zero,+0000014D
	c.sw	s1,8(a4)
	lw	a4,a5,+00000204
	c.sw	s1,12(a4)
	lw	a4,a5,+00000208
	c.sw	s1,16(a4)
	lw	a5,a5,+0000020C
	sb	zero,s1,+000003C0
	c.sw	s1,20(a5)
	lui	a5,0004201C
	addi	a5,a5,+000000F8
	c.add	s8,a5
	c.lui	a5,FFFF0000
	sw	a5,s8,+00000014
	jal	ra,000000002305030E
	lbu	a1,s1,+00000057
	lbu	a4,s6,+00000015
	addi	a3,s0,+00000032
	addi	a2,s0,+00000026
	sw	a0,s6,+00000010
	jal	ra,000000002306086C
	lbu	a5,s0,+00000066
	sh	a0,s0,+00000024
	lui	s1,0004201D
	beq	a5,zero,0000000023064804

l23064726:
	addi	a3,s4,+00000378
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.add	a3,s2
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000002
	addi	s6,s4,+0000037F
	jal	ra,0000000023054E64
	c.add	s6,s2
	addi	a2,s0,+00000067
	c.mv	a1,s6
	sw	a0,s1,+00000ADC
	jal	ra,000000002306733A
	lw	a0,s1,-00000524
	c.mv	a1,s6
	jal	ra,0000000023054F76
	lw	a5,s1,-00000524
	lbu	a4,s0,+00000033
	lui	a0,0002307F
	addi	a1,s7,+00000464
	sb	a4,a5,+00000002
	lw	a5,s1,-00000524
	addi	a0,a0,+0000051C
	lbu	a2,a5,+00000002
	jal	ra,0000000023003AC6
	lw	a0,s1,-00000524
	jal	ra,000000002305490E

l23064786:
	lbu	a5,s0,+00000010
	c.bnez	a5,00000000230647B4

l2306478C:
	addi	a0,s4,+000003B0
	c.li	a1,00000001
	c.add	a0,s2
	jal	ra,00000000230619EA
	c.andi	a0,0000000F
	c.beqz	a0,000000002306480A

l2306479C:
	jal	ra,0000000023068C40
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,0000001F
	sub	a0,a4,a0
	c.add	a5,s2
	sb	a0,a5,+000003D7

l230647B4:
	jal	ra,000000002304F23A
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	c.mv	a0,s5
	c.add	s2,s3
	lw	a5,s2,+000003A4
	lbu	a5,a5,+00000004
	sb	a5,sp,+0000000E
	jal	ra,0000000023049456
	lui	a0,0002307F
	addi	a0,a0,+00000540
	jal	ra,0000000023003AC6
	c.li	a0,00000001

l230647EA:
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
	c.addi16sp	00000040
	c.jr	ra

l23064804:
	sw	zero,s1,+00000ADC
	c.j	0000000023064786

l2306480A:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,00000001
	c.add	a5,s2
	sb	a4,a5,+000003D7
	c.j	00000000230647B4

l2306481C:
	c.li	s4,00000008

l2306481E:
	lui	a0,0002307F
	addi	a2,zero,+000000CC
	addi	a1,s7,+00000464
	addi	a0,a0,+00000564
	jal	ra,0000000023003AC6
	c.lui	a0,00002000
	c.li	a3,00000004
	c.mv	a2,s8
	c.mv	a1,s5
	addi	a0,a0,-000003FF
	jal	ra,0000000023050474
	sb	s4,a0,+00000000
	lbu	a4,s0,+00000033
	sb	a4,a0,+00000001
	jal	ra,00000000230504E0
	c.li	a0,00000000
	c.j	00000000230647EA

l23064856:
	c.li	s4,00000009
	c.j	000000002306481E

;; me_set_active_cfm_handler: 2306485A
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000001
	beq	a0,a5,000000002306488A

l2306486A:
	c.li	a0,00000007
	jal	ra,000000002305070E
	c.beqz	a0,000000002306488A

l23064872:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000012F
	addi	a1,a1,+00000388
	addi	a0,a0,+000005AC
	jal	ra,0000000023054FF4

l2306488A:
	c.li	a0,00000007
	jal	ra,000000002305070E
	c.li	a5,00000001
	bne	a0,a5,00000000230648BC

l23064896:
	lui	a5,0004201D
	lw	a5,a5,-000002EC
	c.beqz	a5,00000000230648B8

l230648A0:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000135
	addi	a1,a1,+00000388
	addi	a0,a0,+00000584
	jal	ra,0000000023054FF4

l230648B8:
	jal	ra,000000002304F8F2

l230648BC:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hostapd_mgt_ind_handler: 230648C4
hostapd_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	andi	a5,a5,+000000FC
	bne	a5,a4,00000000230648E6

l230648D4:
	c.addi	sp,FFFFFFF0
	c.li	a0,0000000A
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230648E6:
	addi	a4,zero,+000000B0
	beq	a5,a4,00000000230648D4

l230648EE:
	c.li	a0,00000000
	c.jr	ra

;; dump_cfg_entries: 230648F2
;;   Called from:
;;     23064A3C (in cfg_start_req_handler)
dump_cfg_entries proc
	c.addi16sp	FFFFFFC0
	lui	a0,0002307F
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	addi	a0,a0,+00000688
	lui	s0,00023083
	lui	s1,00023083
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	addi	s0,s0,-00000308
	jal	ra,0000000023003A8A
	addi	s1,s1,-000002B4
	lui	s2,0002307F
	lui	s3,0002307F
	lui	s4,0002307F
	lui	s5,0002307F
	lui	s6,0002307F
	lui	s7,0002307F
	lui	s8,0002307F

l23064940:
	bltu	s0,s1,0000000023064968

l23064944:
	lui	a0,00023073
	addi	a0,a0,+00000254
	jal	ra,0000000023003A8A
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

l23064968:
	c.mv	a1,s0
	addi	a0,s2,+000006B8
	jal	ra,0000000023003AC6
	c.lw	s0,0(a1)
	addi	a0,s3,+000006C4
	c.addi	s0,0000001C
	jal	ra,0000000023003AC6
	lhu	a1,s0,-00000018
	addi	a0,s4,+000006D8
	jal	ra,0000000023003AC6
	lhu	a1,s0,-00000016
	addi	a0,s5,+000006EC
	jal	ra,0000000023003AC6
	lw	a1,s0,-00000014
	addi	a0,s6,+00000700
	jal	ra,0000000023003AC6
	lbu	a1,s0,-00000016
	lw	a0,s0,-00000010
	c.mv	a2,sp
	c.jal	0000000023064A42
	c.mv	a1,a0
	addi	a0,s7,+00000714
	jal	ra,0000000023003AC6
	c.mv	a1,sp
	addi	a0,s8,+00000728
	jal	ra,0000000023003AC6
	lui	a0,00023071
	addi	a0,a0,-00000240
	jal	ra,0000000023003A8A
	c.j	0000000023064940

;; cfg_start_req_handler: 230649D0
cfg_start_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a1,0(a5)
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a5,0000000023064A0C

l230649E2:
	c.li	a4,00000002
	bltu	a4,a5,0000000023064A3C

l230649E8:
	c.lui	a0,00003000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a3,00000001
	c.addi	a0,00000001
	jal	ra,0000000023050474
	sb	zero,a0,+00000000
	jal	ra,00000000230504E0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23064A0C:
	c.mv	s0,a1
	lhu	a2,a1,+0000000C
	c.lw	a1,16(a1)
	c.addi4spn	a3,0000000C
	addi	a0,s0,+00000014
	jal	ra,0000000023044B68
	c.lwsp	a2,00000084
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+00000664
	jal	ra,0000000023003AC6
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.lw	s0,4(a0)
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	c.jal	0000000023064C3E
	c.j	00000000230649E8

l23064A3C:
	jal	ra,00000000230648F2
	c.j	00000000230649E8

;; cfg_api_element_dump: 23064A42
;;   Called from:
;;     230649AC (in dump_cfg_entries)
cfg_api_element_dump proc
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a5,00000007
	bltu	a5,a1,0000000023064BCA

l23064A4E:
	lui	a5,0002307F
	addi	a5,a5,+0000073C
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.jr	a5
23064A66                   83 47 05 00 9D EB B7 F6 07 23       .G.......#
23064A70 93 86 06 78 37 76 07 23 13 06 06 77 BD 45 22 85 ...x7v.#...w.E".
23064A80 EF F0 89 89 63 53 05 00 01 45 22 95 23 00 05 00 ....cS...E".#...
23064A90 37 F5 07 23 13 05 85 78 B2 40 22 44 41 01 82 80 7..#...x.@"DA...
23064AA0 B7 F6 07 23 93 86 86 77 F1 B7 83 06 05 00 37 76 ...#...w......7v
23064AB0 07 23 13 06 86 64 BD 45 22 85 EF F0 E9 85 63 53 .#...d.E".....cS
23064AC0 05 00 01 45 22 95 23 00 05 00 37 F5 07 23 13 05 ...E".#...7..#..
23064AD0 05 79 D9 B7 83 46 05 00 37 A6 07 23 13 06 06 93 .y...F..7..#....
23064AE0 BD 45 22 85 EF F0 49 83 63 53 05 00 01 45 22 95 .E"...I.cS...E".
23064AF0 23 00 05 00 37 F5 07 23 13 05 85 79 71 BF 83 16 #...7..#...yq...
23064B00 05 00 37 76 07 23 13 06 86 64 BD 45 22 85 EF F0 ..7v.#...d.E"...
23064B10 A9 80 63 53 05 00 01 45 22 95 23 00 05 00 37 F5 ..cS...E".#...7.
23064B20 07 23 13 05 05 7A 8D BF 83 56 05 00 37 A6 07 23 .#...z...V..7..#
23064B30 13 06 06 93 BD 45 22 85 EF E0 19 FE 63 53 05 00 .....E".....cS..
23064B40 01 45 22 95 23 00 05 00 37 F5 07 23 13 05 85 7A .E".#...7..#...z
23064B50 A1 B7 14 41 37 F6 07 23 13 06 86 7C BD 45 22 85 ...A7..#...|.E".
23064B60 EF E0 99 FB 63 53 05 00 01 45 22 95 23 00 05 00 ....cS...E".#...
23064B70 37 F5 07 23 13 05 05 7B 05 B7 14 41 37 F6 07 23 7..#...{...A7..#
23064B80 13 06 C6 7C BD 45 22 85 EF E0 19 F9 63 53 05 00 ...|.E".....cS..
23064B90 01 45 22 95 23 00 05 00 37 F5 07 23 13 05 85 7B .E".#...7..#...{
23064BA0 E5 BD 14 41 37 F6 07 23 13 06 C6 7C BD 45 22 85 ...A7..#...|.E".
23064BB0 EF E0 99 F6 63 53 05 00 01 45 2A 94 37 F5 07 23 ....cS...E*.7..#
23064BC0 23 00 04 00 13 05 05 7C C1 BD                   #......|..     

l23064BCA:
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_general_set: 23064BCE
cfg_api_element_general_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.lw	a0,8(a1)
	c.mv	s1,a0
	lui	a0,0002307F
	addi	a0,a0,+000007D0
	jal	ra,0000000023003AC6
	lhu	a5,s1,+00000006
	c.li	a4,00000006
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,0000000023064C12

l23064BF8:
	lui	a4,0002307F
	addi	a4,a4,+0000075C
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.lw	s1,12(a5)
	c.jr	a4
23064C0A                               03 07 04 00 23 80           ....#.
23064C10 E7 00                                           ..             

l23064C12:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra
23064C1E                                           03 47               .G
23064C20 04 00 F5 B7 03 17 04 00 23 90 E7 00 DD B7 03 57 ........#......W
23064C30 04 00 DD BF 18 40 98 C3 E9 BF                   .....@....     

;; cfg_api_element_general_get: 23064C3A
cfg_api_element_general_get proc
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_set: 23064C3E
;;   Called from:
;;     23064A38 (in cfg_start_req_handler)
cfg_api_element_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,00023083
	lui	s1,00023083
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s5,a3
	c.mv	s6,a4
	addi	s0,s0,-00000308
	addi	s1,s1,-000002B4
	lui	s7,0002307F

l23064C70:
	bltu	s0,s1,0000000023064C7A

l23064C74:
	bne	s0,s1,0000000023064C90

l23064C78:
	c.j	0000000023064C9A

l23064C7A:
	c.lw	s0,0(a5)
	bne	a5,s2,0000000023064CC0

l23064C80:
	lhu	a5,s0,+00000004
	bne	a5,s3,0000000023064CC0

l23064C88:
	lhu	a4,s0,+00000006
	bne	a4,s4,0000000023064CB2

l23064C90:
	c.lw	s0,16(a5)
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	c.jalr	a5

l23064C9A:
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

l23064CB2:
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s4
	addi	a0,s7,+000007EC
	jal	ra,0000000023003AC6

l23064CC0:
	c.addi	s0,0000001C
	c.j	0000000023064C70

;; co_crc32: 23064CC4
;;   Called from:
;;     2305E29E (in mm_check_beacon)
;;     2305E430 (in mm_check_beacon)
co_crc32 proc
	lui	a3,00023080
	c.li	a4,00000000
	addi	a3,a3,-000007E4

l23064CCE:
	bne	a4,a1,0000000023064CD6

l23064CD2:
	c.mv	a0,a2
	c.jr	ra

l23064CD6:
	add	a5,a4,a0
	lbu	a5,a5,+00000000
	slli	a6,a2,00000008
	c.srli	a2,00000018
	c.xor	a2,a5
	c.slli	a2,02
	c.add	a2,a3
	c.lw	a2,0(a2)
	c.addi	a4,00000001
	xor	a2,a6,a2
	c.j	0000000023064CCE

;; dbg_init: 23064CF4
;;   Called from:
;;     2305EE7E (in bl_init)
dbg_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a0,s0,-0000012C
	c.li	a2,00000008
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	addi	s0,s0,-0000012C
	c.li	a5,FFFFFFFF
	c.sw	s0,0(a5)
	c.li	a5,00000002
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; dbg_test_print: 23064D1E
;;   Called from:
;;     23050CA0 (in GetTxEAPOLBuffer)
;;     23050CFC (in GetTxEAPOLBuffer)
;;     23050D34 (in UpdateEAPOLWcbLenAndTransmit)
;;     23050D7C (in UpdateEAPOLWcbLenAndTransmit)
;;     23050DAA (in keyMgmtProcessMsgExt)
;;     23050DC2 (in keyMgmtProcessMsgExt)
;;     23050E02 (in KeyMgmtInitSta)
;;     23050E32 (in KeyMgmtInitSta)
;;     23050E6E (in keyMgmtSta_StartSession)
;;     23050ECC (in keyMgmtSta_StartSession)
;;     23050EFE (in init_customApp_mibs)
;;     23050F46 (in init_customApp_mibs)
;;     23050F78 (in supplicantIsEnabled)
;;     23050F96 (in supplicantIsEnabled)
;;     23050FEA (in supplicantInitSession)
;;     23051044 (in supplicantInitSession)
;;     23051076 (in supplicantDisable)
;;     230510BE (in supplicantDisable)
;;     2305110E (in supplicantEnable)
;;     230511BC (in supplicantEnable)
;;     2305123C (in keyMgmtFormatWpaRsnIe)
;;     23051254 (in keyMgmtFormatWpaRsnIe)
;;     230512AA (in GeneratePWKMsg2)
;;     23051336 (in GeneratePWKMsg2)
;;     23051394 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23051466 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     230514A4 (in supplicantInit)
;;     230514FE (in supplicantInit)
;;     2305152E (in allocSupplicantData)
;;     23051564 (in allocSupplicantData)
;;     230515C4 (in keyMgmtGetKeySize)
;;     230515DC (in keyMgmtGetKeySize)
;;     23051752 (in keyMgmtKeyGroupTxDone.isra.1)
;;     230517AE (in keyMgmtKeyGroupTxDone.isra.1)
;;     230517F4 (in GenerateGrpMsg2)
;;     23051856 (in GenerateGrpMsg2)
;;     230518AE (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     230518FC (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     230519D0 (in keyMgmtPlumbPairwiseKey)
;;     23051A2E (in keyMgmtPlumbPairwiseKey)
;;     23051A60 (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     23051A8C (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     23051ADE (in GeneratePWKMsg4)
;;     23051B40 (in GeneratePWKMsg4)
;;     23051B60 (in GeneratePWKMsg4)
;;     23051B7C (in GeneratePWKMsg4)
;;     23051BDC (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     23051C26 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     23051C76 (in ProcessKeyMgmtDataSta)
;;     23051CBA (in ProcessKeyMgmtDataSta)
;;     23051D10 (in ProcessEAPoLPkt)
;;     23051D34 (in ProcessEAPoLPkt)
;;     23051D64 (in ProcessEAPoLPkt)
;;     23051D80 (in ProcessEAPoLPkt)
;;     23052166 (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     230521A2 (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     230521D8 (in supplicantGenerateRand)
;;     23052206 (in supplicantGenerateRand)
;;     23052288 (in keyMgmtGetKeySize_internal)
;;     230522BC (in keyMgmtGetKeySize_internal)
;;     2305231C (in isApReplayCounterFresh)
;;     230523BE (in isApReplayCounterFresh)
;;     230523FE (in updateApReplayCounter)
;;     23052480 (in updateApReplayCounter)
;;     230524C6 (in formEAPOLEthHdr)
;;     23052514 (in formEAPOLEthHdr)
;;     23052550 (in IsEAPOL_MICValid)
;;     230525B0 (in IsEAPOL_MICValid)
;;     23052608 (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     23052688 (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     230526CC (in parseKeyKDE)
;;     230526FA (in parseKeyKDE)
;;     23052764 (in parseKeyKDE_DataType)
;;     23052796 (in parseKeyKDE_DataType)
;;     23052816 (in parseKeyDataGTK)
;;     23052882 (in parseKeyDataGTK)
;;     230528C8 (in KeyMgmtSta_ApplyKEK)
;;     23052952 (in KeyMgmtSta_ApplyKEK)
;;     230529B4 (in KeyMgmtSta_IsRxEAPOLValid)
;;     230529FA (in KeyMgmtSta_IsRxEAPOLValid)
;;     23052A64 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23052B74 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23052BB8 (in supplicantAkmIsWpaWpa2)
;;     23052C04 (in supplicantAkmIsWpaWpa2)
;;     23052C3A (in supplicantAkmIsWpa2)
;;     23052C64 (in supplicantAkmIsWpa2)
;;     23052CAC (in supplicantAkmIsWpaWpa2Psk)
;;     23052CF8 (in supplicantAkmIsWpaWpa2Psk)
;;     23052D28 (in supplicantAkmUsesKdf)
;;     23052D62 (in supplicantAkmUsesKdf)
;;     23052DB2 (in supplicantConstructContext)
;;     23052E36 (in supplicantConstructContext)
;;     23052E9C (in KeyMgmt_DerivePTK)
;;     23052F00 (in KeyMgmt_DerivePTK)
;;     23052F82 (in KeyMgmtSta_DeriveKeys)
;;     23052FEE (in KeyMgmtSta_DeriveKeys)
;;     23053056 (in SetEAPOLKeyDescTypeVersion)
;;     23053094 (in SetEAPOLKeyDescTypeVersion)
;;     230530C6 (in GetKeyMsgNonceFromEAPOL)
;;     23053114 (in GetKeyMsgNonceFromEAPOL)
;;     2305315A (in ProcessRxEAPOL_PwkMsg3)
;;     230531E2 (in ProcessRxEAPOL_PwkMsg3)
;;     2305321E (in ProcessRxEAPOL_GrpMsg1)
;;     2305329C (in ProcessRxEAPOL_GrpMsg1)
;;     2305330C (in KeyMgmtResetCounter)
;;     2305333E (in KeyMgmtResetCounter)
;;     23053372 (in keyMgmtSta_StartSession_internal)
;;     230533BE (in keyMgmtSta_StartSession_internal)
;;     230533F0 (in KeyMgmtSta_InitSession)
;;     23053434 (in KeyMgmtSta_InitSession)
;;     23053672 (in pmkCacheFindPSK)
;;     230536A0 (in pmkCacheFindPSK)
;;     23053728 (in pmkCacheSetPassphrase)
;;     2305378C (in pmkCacheSetPassphrase)
;;     230537BA (in pmkCacheInit)
;;     23053808 (in pmkCacheInit)
;;     23053836 (in pmkCacheRomInit)
;;     23053882 (in pmkCacheRomInit)
;;     230538D0 (in pmkCacheNewElement)
;;     230538F8 (in pmkCacheNewElement)
;;     230539A6 (in pmkCacheUpdateReplacementRank)
;;     230539FE (in pmkCacheUpdateReplacementRank)
;;     23053A6C (in pmkCacheFindPSKElement)
;;     23053A9A (in pmkCacheFindPSKElement)
;;     23053B20 (in pmkCacheAddPSK)
;;     23053B84 (in pmkCacheAddPSK)
;;     23053BB6 (in pmkCacheDeletePSK)
;;     23053BFA (in pmkCacheDeletePSK)
;;     23053C2C (in pmkCacheGetHexNibble)
;;     23053C74 (in pmkCacheGetHexNibble)
;;     23053CB4 (in pmkCacheGeneratePSK)
;;     23053D04 (in pmkCacheGeneratePSK)
;;     2306573A (in set_psk)
;;     2306578A (in set_psk)
;;     230657C0 (in remove_psk)
;;     230657EE (in remove_psk)
;;     230672B4 (in supplicantRestoreDefaults)
;;     230672D4 (in supplicantRestoreDefaults)
;;     23067310 (in supplicantFuncInit)
;;     23067336 (in supplicantFuncInit)
dbg_test_print proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,00000098
	lui	s1,0004201F
	c.swsp	a5,000000A8
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	a1,000000A0
	c.swsp	a2,00000024
	c.swsp	a3,000000A4
	c.swsp	a4,00000028
	c.swsp	a6,0000002C
	c.swsp	a7,000000AC
	addi	a5,s1,-0000012C
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023064D76

l23064D4C:
	c.mv	s2,a0
	addi	s1,s1,-0000012C
	addi	s3,a0,+00000002
	addi	s4,zero,+00000087
	c.li	s5,00000005
	lui	s6,0002307B
	lui	s7,00023080

l23064D64:
	lbu	s0,s2,+00000000
	slli	a5,s0,00000018
	c.srai	a5,00000018
	blt	a5,zero,0000000023064D8C

l23064D72:
	c.addi4spn	a5,00000044
	c.swsp	a5,00000084

l23064D76:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000060
	c.jr	ra

l23064D8C:
	bltu	s4,s0,0000000023064DAA

l23064D90:
	c.lw	s1,0(a5)
	addi	s0,s0,-00000080
	xori	a5,a5,-00000001
	srl	s0,a5,s0
	c.andi	s0,00000001
	c.bnez	s0,0000000023064D76

l23064DA2:
	c.addi	s2,00000001
	bne	s3,s2,0000000023064D64

l23064DA8:
	c.j	0000000023064D72

l23064DAA:
	addi	a5,s0,+00000066
	andi	a5,a5,+000000FF
	bgeu	s5,a5,0000000023064DC6

l23064DB6:
	addi	a2,zero,+00000297
	addi	a1,s6,+00000388
	addi	a0,s7,-000003E4
	jal	ra,0000000023054FF4

l23064DC6:
	c.lw	s1,4(a5)
	addi	s0,s0,-0000009A
	bltu	s0,a5,0000000023064DA2

l23064DD0:
	c.j	0000000023064D76

;; dbg_get_sys_stat_req_handler: 23064DD2
dbg_get_sys_stat_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	addi	a0,zero,+0000040A
	c.li	a3,0000000C
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_write_req_handler: 23064DFA
dbg_mem_write_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000403
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.lw	s0,0(a4)
	c.lw	s0,4(a3)
	c.sw	a4,0(a3)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_read_req_handler: 23064E2A
dbg_mem_read_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000401
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.lw	s0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_sev_filter_req_handler: 23064E56
dbg_set_sev_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,0004201F
	addi	a0,zero,+00000407
	c.mv	a1,a3
	sw	a4,a5,+00000ED8
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_mod_filter_req_handler: 23064E76
dbg_set_mod_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,0004201F
	addi	a0,zero,+00000405
	c.mv	a1,a3
	sw	a4,a5,+00000ED4
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; ke_queue_extract: 23064E96
;;   Called from:
;;     230506DC (in ke_state_set)
;;     23050A00 (in ke_timer_set)
;;     23050B44 (in ke_timer_clear)
ke_queue_extract proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	s3,a1
	c.li	s1,00000000

l23064EAA:
	c.beqz	s0,0000000023064EC6

l23064EAC:
	c.mv	a1,a2
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.jalr	s3
	c.lw	s0,0(a5)
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023064EE2

l23064EBA:
	c.beqz	s1,0000000023064ED6

l23064EBC:
	c.sw	s1,0(a5)

l23064EBE:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023064EDC

l23064EC2:
	sw	zero,s0,+00000000

l23064EC6:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23064ED6:
	sw	a5,s2,+00000000
	c.j	0000000023064EBE

l23064EDC:
	sw	s1,s2,+00000004
	c.j	0000000023064EC6

l23064EE2:
	c.mv	s1,s0
	c.mv	s0,a5
	c.j	0000000023064EAA

;; bl_aes_128: 23064EE8
;;   Called from:
;;     23064F60 (in generate_subkey)
;;     23065062 (in bl_aes_cmac)
;;     230650C2 (in bl_aes_cmac)
bl_aes_128 proc
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000002
	c.j	0000000023065140

;; xor_128: 23064EF0
;;   Called from:
;;     23064FA4 (in generate_subkey)
;;     23064FBE (in generate_subkey)
;;     2306503C (in bl_aes_cmac)
;;     23065058 (in bl_aes_cmac)
;;     230650B8 (in bl_aes_cmac)
xor_128 proc
	c.li	a5,00000000
	c.li	a3,00000010

l23064EF4:
	add	a4,a0,a5
	add	a7,a1,a5
	lbu	a4,a4,+00000000
	lbu	a7,a7,+00000000
	add	a6,a2,a5
	c.addi	a5,00000001
	xor	a4,a4,a7
	sb	a4,a6,+00000000
	bne	a5,a3,0000000023064EF4

l23064F16:
	c.jr	ra

;; leftshift_onebit: 23064F18
;;   Called from:
;;     23064F70 (in generate_subkey)
;;     23064F80 (in generate_subkey)
;;     23064F94 (in generate_subkey)
;;     23064FAE (in generate_subkey)
leftshift_onebit proc
	c.li	a5,00000000
	c.li	a4,0000000F
	c.li	a6,FFFFFFFF

l23064F1E:
	add	a2,a0,a4
	lbu	a3,a2,+00000000
	add	a7,a1,a4
	c.addi	a4,FFFFFFFF
	c.slli	a3,01
	c.or	a5,a3
	sb	a5,a7,+00000000
	lbu	a5,a2,+00000000
	c.srli	a5,00000007
	bne	a4,a6,0000000023064F1E

l23064F3E:
	c.jr	ra

;; generate_subkey: 23064F40
;;   Called from:
;;     2306501A (in bl_aes_cmac)
generate_subkey proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s0,a1
	c.mv	s2,a0
	c.li	a1,00000000
	c.mv	s1,a2
	c.addi4spn	a0,00000010
	c.li	a2,00000010
	c.swsp	ra,0000009C
	jal	ra,000000002306D1BC
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023064EE8
	lb	a5,sp,+00000000
	blt	a5,zero,0000000023064F90

l23064F6C:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,0000000023064F18

l23064F74:
	lb	a5,s0,+00000000
	blt	a5,zero,0000000023064FAA

l23064F7C:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023064F18

l23064F84:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23064F90:
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,0000000023064F18
	lui	a1,00023080
	c.mv	a2,s0
	addi	a1,a1,-0000038C
	c.addi4spn	a0,00000020
	jal	ra,0000000023064EF0
	c.j	0000000023064F74

l23064FAA:
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023064F18
	lui	a1,00023080
	c.mv	a2,s1
	addi	a1,a1,-0000038C
	c.addi4spn	a0,00000020
	jal	ra,0000000023064EF0
	c.j	0000000023064F84

;; padding: 23064FC4
;;   Called from:
;;     230650A2 (in bl_aes_cmac)
padding proc
	c.li	a5,00000000
	add	a3,a1,a2
	addi	a6,zero,-00000080
	c.li	a4,00000010

l23064FD0:
	bge	a5,a2,0000000023064FEC

l23064FD4:
	add	a7,a0,a5
	lbu	t1,a7,+00000000
	add	a7,a1,a5
	sb	t1,a7,+00000000

l23064FE4:
	c.addi	a5,00000001
	bne	a5,a4,0000000023064FD0

l23064FEA:
	c.jr	ra

l23064FEC:
	bne	a2,a5,0000000023064FF6

l23064FF0:
	sb	a6,a3,+00000000
	c.j	0000000023064FE4

l23064FF6:
	add	a7,a1,a5
	sb	zero,a7,+00000000
	c.j	0000000023064FE4

;; bl_aes_cmac: 23065000
;;   Called from:
;;     23052234 (in ComputeEAPOL_MIC)
bl_aes_cmac proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.mv	s1,a2
	c.mv	s2,a1
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000040
	c.swsp	s0,0000003C
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	ra,000000BC
	c.mv	s4,a0
	c.mv	s3,a3
	jal	ra,0000000023064F40
	addi	s0,s1,+0000000F
	c.li	a5,00000010
	xor	s0,s0,a5
	c.beqz	s0,0000000023065090

l2306502A:
	andi	a5,s1,+0000000F
	c.bnez	a5,0000000023065092

l23065030:
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000040
	c.add	a0,s2

l2306503C:
	jal	ra,0000000023064EF0
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.li	s1,00000000
	c.addi	s0,FFFFFFFF

l2306504E:
	blt	s1,s0,00000000230650AE

l23065052:
	c.addi4spn	a2,00000010
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,0000000023064EF0
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,0000000023064EE8
	c.li	a5,00000000
	c.li	a4,00000010

l2306506A:
	add	a2,sp,a5
	lbu	a2,a2,+00000000
	add	a3,s3,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,000000002306506A

l23065080:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.addi16sp	00000080
	c.jr	ra

l23065090:
	c.li	s0,00000001

l23065092:
	c.li	a2,00000010
	or	a2,s1,a2
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a1,00000030
	c.add	a0,s2
	jal	ra,0000000023064FC4
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000050
	c.addi4spn	a0,00000030
	c.j	000000002306503C

l230650AE:
	slli	a1,s1,00000004
	c.addi4spn	a2,00000010
	c.add	a1,s2
	c.mv	a0,sp
	jal	ra,0000000023064EF0
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,0000000023064EE8
	c.addi	s1,00000001
	c.j	000000002306504E

;; BL_AES_MEMCMP: 230650CA
;;   Called from:
;;     2306530E (in BL_AesUnWrap)
BL_AES_MEMCMP proc
	c.mv	a6,a2
	c.li	a5,00000000

l230650CE:
	bne	a6,a5,00000000230650DC

l230650D2:
	sltu	a2,zero,a2
	sub	a0,zero,a2
	c.jr	ra

l230650DC:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	bne	a3,a4,00000000230650F2

l230650F0:
	c.addi	a2,FFFFFFFF

l230650F2:
	c.addi	a5,00000001
	c.j	00000000230650CE

;; BL_AES_MEMSET: 230650F6
;;   Called from:
;;     230651AC (in BL_AesWrap)
;;     2306529C (in BL_AesUnWrap)
;;     230652A6 (in BL_AesUnWrap)
BL_AES_MEMSET proc
	c.add	a2,a0

l230650F8:
	bne	a0,a2,00000000230650FE

l230650FC:
	c.jr	ra

l230650FE:
	c.addi	a0,00000001
	sb	a1,a0,+00000FFF
	c.j	00000000230650F8

;; BL_AES_MEMCPY: 23065106
;;   Called from:
;;     230651C0 (in BL_AesWrap)
;;     230651D0 (in BL_AesWrap)
;;     230651E4 (in BL_AesWrap)
;;     230651EE (in BL_AesWrap)
;;     23065204 (in BL_AesWrap)
;;     2306521E (in BL_AesWrap)
;;     2306523E (in BL_AesWrap)
;;     230652B0 (in BL_AesUnWrap)
;;     230652CE (in BL_AesUnWrap)
;;     23065348 (in BL_AesUnWrap)
;;     23065360 (in BL_AesUnWrap)
;;     23065374 (in BL_AesUnWrap)
;;     2306537E (in BL_AesUnWrap)
BL_AES_MEMCPY proc
	c.li	a5,FFFFFFFF
	bgeu	a0,a1,0000000023065138

l2306510C:
	c.li	a5,00000000

l2306510E:
	bne	a5,a2,0000000023065114

l23065112:
	c.jr	ra

l23065114:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002306510E

l23065128:
	add	a4,a1,a2
	lbu	a3,a4,+00000000
	add	a4,a0,a2
	sb	a3,a4,+00000000

l23065138:
	c.addi	a2,FFFFFFFF
	bne	a2,a5,0000000023065128

l2306513E:
	c.jr	ra

;; BL_AesEncrypt: 23065140
;;   Called from:
;;     23064EEE (in bl_aes_128)
;;     230651FA (in BL_AesWrap)
BL_AesEncrypt proc
	c.addi16sp	FFFFFE60
	sw	s0,sp,+00000198
	sw	s1,sp,+00000194
	c.mv	s0,a2
	c.mv	s1,a3
	slli	a2,a1,00000006
	c.li	a3,00000001
	c.mv	a1,a0
	c.mv	a0,sp
	sw	ra,sp,+0000019C
	jal	ra,00000000230662EE
	c.mv	a0,sp
	c.mv	a2,s1
	c.mv	a1,s0
	jal	ra,0000000023066954
	lw	ra,sp,+0000019C
	lw	s0,sp,+00000198
	lw	s1,sp,+00000194
	c.li	a0,00000000
	c.addi16sp	000001A0
	c.jr	ra

;; BL_AesWrap: 2306517C
;;   Called from:
;;     23054CAC (in Encrypt_keyData)
BL_AesWrap proc
	beq	a2,zero,000000002306525C

l23065180:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.mv	s0,a2
	c.mv	s7,a1
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	s6,a0
	c.addi4spn	a0,00000010
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s1,a4
	c.swsp	ra,000000A4
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.mv	s2,a5
	c.mv	s3,a3
	addi	s4,a5,+00000008
	jal	ra,00000000230650F6
	c.li	a2,00000008
	c.mv	a1,s1
	c.bnez	s1,00000000230651BE

l230651B6:
	lui	a1,00023083
	addi	a1,a1,-00000764

l230651BE:
	c.addi4spn	a0,00000008
	jal	ra,0000000023065106
	slli	a2,s0,00000003
	c.mv	a1,s3
	c.mv	a0,s4
	andi	s8,s0,+000000FF
	jal	ra,0000000023065106
	c.li	s3,00000000
	c.li	s5,00000006
	c.addi	s0,00000001

l230651DA:
	c.li	s1,00000001
	c.j	0000000023065222

l230651DE:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,0000000023065106
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000018
	jal	ra,0000000023065106
	c.addi4spn	a3,00000010
	c.mv	a2,a3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,0000000023065140
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,0000000023065106
	lbu	a4,sp,+0000000F
	add	a5,s3,s1
	c.li	a2,00000008
	c.xor	a5,a4
	c.addi4spn	a1,00000018
	c.mv	a0,s4
	sb	a5,sp,+0000000F
	c.addi	s1,00000001
	jal	ra,0000000023065106

l23065222:
	slli	s4,s1,00000003
	c.add	s4,s2
	bne	s1,s0,00000000230651DE

l2306522C:
	c.add	s3,s8
	c.addi	s5,FFFFFFFF
	andi	s3,s3,+000000FF
	bne	s5,zero,00000000230651DA

l23065238:
	c.mv	a0,s2
	c.addi4spn	a1,00000008
	c.li	a2,00000008
	jal	ra,0000000023065106
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
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l2306525C:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; BL_AesUnWrap: 23065260
;;   Called from:
;;     23052964 (in KeyMgmtSta_ApplyKEK)
BL_AesUnWrap proc
	beq	a2,zero,0000000023065388

l23065264:
	c.addi16sp	FFFFFE20
	sw	s2,sp,+000001D0
	sw	s5,sp,+000001C4
	c.mv	s2,a2
	sw	s6,sp,+000001C0
	c.mv	s5,a0
	c.mv	s6,a1
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	sw	ra,sp,+000001DC
	sw	s0,sp,+000001D8
	sw	s1,sp,+000001D4
	c.mv	s0,a5
	sw	s3,sp,+000001CC
	sw	s4,sp,+000001C8
	c.mv	s3,a4
	c.mv	s4,a3
	sw	s7,sp,+000001BC
	jal	ra,00000000230650F6
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230650F6
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,0000000023065106
	slli	s1,s2,00000003
	c.mv	a2,s1
	c.addi	s1,FFFFFFF8
	c.mv	a0,s0
	c.add	s1,s0
	andi	s7,s2,+000000FF
	c.li	s0,00000005
	add	s0,s7,s0
	addi	a1,s4,+00000008
	jal	ra,0000000023065106
	slli	a2,s6,00000006
	c.li	a3,00000000
	c.mv	a1,s5
	c.addi4spn	a0,00000020
	jal	ra,00000000230662EE
	c.li	s6,00000006
	andi	s0,s0,+000000FF

l230652E6:
	c.mv	s4,s2
	c.mv	s5,s1

l230652EA:
	blt	zero,s4,0000000023065342

l230652EE:
	sub	s0,s0,s7
	c.addi	s6,FFFFFFFF
	andi	s0,s0,+000000FF
	bne	s6,zero,00000000230652E6

l230652FC:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	bne	s3,zero,000000002306530E

l23065306:
	lui	a0,00023083
	addi	a0,a0,-00000764

l2306530E:
	jal	ra,00000000230650CA
	lw	ra,sp,+000001DC
	lw	s0,sp,+000001D8
	sltu	a0,zero,a0
	lw	s1,sp,+000001D4
	lw	s2,sp,+000001D0
	lw	s3,sp,+000001CC
	lw	s4,sp,+000001C8
	lw	s5,sp,+000001C4
	lw	s6,sp,+000001C0
	lw	s7,sp,+000001BC
	sub	a0,zero,a0
	c.addi16sp	000001E0
	c.jr	ra

l23065342:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,0000000023065106
	lbu	a4,sp,+00000017
	add	a5,s0,s4
	c.mv	a1,s5
	c.xor	a5,a4
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	sb	a5,sp,+00000017
	jal	ra,0000000023065106
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.addi4spn	a0,00000020
	jal	ra,0000000023066512
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,0000000023065106
	c.mv	a0,s5
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,0000000023065106
	c.addi	s5,FFFFFFF8
	c.addi	s4,FFFFFFFF
	c.j	00000000230652EA

l23065388:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; Bl_hmac_md5: 2306538C
;;   Called from:
;;     2305223E (in ComputeEAPOL_MIC)
Bl_hmac_md5 proc
	addi	sp,sp,-00000250
	sw	s1,sp,+00000244
	sw	s3,sp,+0000023C
	sw	s4,sp,+00000238
	sw	s5,sp,+00000234
	sw	s6,sp,+00000230
	sw	ra,sp,+0000024C
	sw	s0,sp,+00000248
	sw	s2,sp,+00000240
	addi	a5,zero,+00000040
	c.mv	s5,a0
	c.mv	s6,a1
	c.mv	s1,a2
	c.mv	s3,a3
	c.mv	s4,a4
	bge	a5,a3,00000000230653DE

l230653C2:
	c.addi4spn	a0,00000008
	jal	ra,00000000230660A8
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230660DA
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000138
	jal	ra,0000000023066184
	c.li	s3,00000010
	c.addi4spn	s1,00000138

l230653DE:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,000000002306D1BC
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,000000002306CF80
	c.addi4spn	s0,000000A0
	lui	a3,00036363
	addi	s2,sp,+000000E0
	c.mv	a5,s0
	addi	a3,a3,+00000636

l23065404:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.xor	a4,a3
	sw	a4,a5,+00000FFC
	bne	a5,s2,0000000023065404

l23065412:
	c.mv	a0,s2
	jal	ra,00000000230660A8
	addi	a2,zero,+00000040
	c.addi4spn	a1,000000A0
	c.mv	a0,s2
	jal	ra,00000000230660DA
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230660DA
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023066184
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,000000002306D1BC
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,000000002306CF80
	lui	a4,0005C5C6
	addi	a4,a4,-000003A4

l23065454:
	c.lw	s0,0(a5)
	c.addi	s0,00000004
	c.xor	a5,a4
	sw	a5,s0,+00000FFC
	bne	s0,s2,0000000023065454

l23065462:
	c.mv	a0,s0
	jal	ra,00000000230660A8
	c.addi4spn	a1,000000A0
	c.mv	a0,s0
	addi	a2,zero,+00000040
	jal	ra,00000000230660DA
	c.mv	a1,s4
	c.mv	a0,s0
	c.li	a2,00000010
	jal	ra,00000000230660DA
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,0000000023066184
	lw	ra,sp,+0000024C
	lw	s0,sp,+00000248
	lw	s1,sp,+00000244
	lw	s2,sp,+00000240
	lw	s3,sp,+0000023C
	lw	s4,sp,+00000238
	lw	s5,sp,+00000234
	lw	s6,sp,+00000230
	addi	sp,sp,+00000250
	c.jr	ra

;; Bl_hmac_sha1: 230654AC
;;   Called from:
;;     23052254 (in ComputeEAPOL_MIC)
;;     2305355C (in Bl_F)
;;     2305359A (in Bl_F)
;;     230656E8 (in Bl_PRF)
Bl_hmac_sha1 proc
	c.addi16sp	FFFFFE40
	sw	s1,sp,+000001B4
	sw	s2,sp,+000001B0
	sw	s5,sp,+000001A4
	sw	s6,sp,+000001A0
	sw	s7,sp,+0000019C
	sw	s8,sp,+00000198
	sw	s9,sp,+00000194
	c.mv	s5,a5
	sw	ra,sp,+000001BC
	sw	s0,sp,+000001B8
	sw	s3,sp,+000001AC
	sw	s4,sp,+000001A8
	addi	a5,zero,+00000040
	c.mv	s8,a0
	c.mv	s9,a1
	c.mv	s7,a2
	c.mv	s2,a3
	c.mv	s1,a4
	c.mv	s6,a6
	bge	a5,a4,000000002306550A

l230654F0:
	c.addi4spn	a0,00000054
	jal	ra,0000000023067060
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,00000000230671F4
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,00000000230670A8
	c.li	s1,00000014

l2306550A:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002306CF80
	lui	a4,00036363
	c.mv	s0,sp
	addi	s4,sp,+00000040
	c.mv	a5,sp
	addi	a4,a4,+00000636

l23065530:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,0000000023065530

l23065548:
	c.addi4spn	a0,00000054
	jal	ra,0000000023067060
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,00000054
	jal	ra,00000000230671F4
	c.li	s3,00000000

l2306555C:
	blt	s3,s7,00000000230655FC

l23065560:
	c.mv	a1,s4
	c.addi4spn	a0,00000054
	jal	ra,00000000230670A8
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002306CF80
	lui	a5,0005C5C6
	addi	a5,a5,-000003A4

l23065586:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,0000000023065586

l2306559E:
	c.addi4spn	a0,00000054
	jal	ra,0000000023067060
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,00000054
	jal	ra,00000000230671F4
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,00000000230671F4
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,00000000230670A8
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,000000002306CF80
	lw	ra,sp,+000001BC
	lw	s0,sp,+000001B8
	lw	s1,sp,+000001B4
	lw	s2,sp,+000001B0
	lw	s3,sp,+000001AC
	lw	s4,sp,+000001A8
	lw	s5,sp,+000001A4
	lw	s6,sp,+000001A0
	lw	s7,sp,+0000019C
	lw	s8,sp,+00000198
	lw	s9,sp,+00000194
	c.addi16sp	000001C0
	c.jr	ra

l230655FC:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,00000054
	c.addi	s3,00000001
	jal	ra,00000000230671F4
	c.j	000000002306555C

;; Bl_PRF: 23065614
;;   Called from:
;;     23052F1C (in KeyMgmt_DerivePTK)
;;     230549EE (in GenerateGTK_internal)
Bl_PRF proc
	c.addi16sp	FFFFFF50
	c.swsp	s5,000000C8
	addi	s5,sp,+00000008
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s8,00000044
	c.mv	s2,a0
	c.mv	s8,a2
	c.mv	s3,a1
	addi	a2,zero,+00000078
	c.li	a1,00000000
	c.mv	a0,s5
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.swsp	s4,0000004C
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	ra,000000D4
	c.swsp	s9,000000C0
	c.mv	s0,a3
	c.mv	s7,a4
	c.mv	s6,a5
	c.mv	s4,a6
	c.mv	s1,a7
	c.swsp	s5,00000080
	jal	ra,000000002306D1BC
	beq	s8,zero,00000000230656BE

l23065652:
	c.mv	a2,s0
	c.mv	a1,s8
	c.mv	a0,s5
	jal	ra,000000002306CF80
	c.addi4spn	a5,00000080
	c.add	a5,s0
	c.addi	s0,00000001
	add	a0,s5,s0
	c.mv	a2,s6
	c.mv	a1,s7
	c.add	s0,s6
	sb	zero,a5,+00000F88
	jal	ra,000000002306CF80
	c.swsp	s0,00000000

l23065676:
	c.lwsp	zero,000000E4
	c.addi4spn	a4,00000080
	addi	s6,s1,+00000013
	c.add	a4,a5
	c.addi	a5,00000001
	c.swsp	a5,00000000
	c.li	a5,00000014
	xor	s6,s6,a5
	sb	zero,a4,+00000F88
	c.li	s7,00000000
	c.li	s5,00000000
	c.li	s8,FFFFFFEC
	c.li	s9,00000014

l23065696:
	add	a5,s5,s8
	c.add	a5,s1
	c.slli	a5,18
	c.srai	a5,00000018
	blt	s5,s6,00000000230656CC

l230656A4:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.lwsp	t1,00000134
	c.lwsp	sp,00000158
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.lwsp	s6,000000A8
	c.lwsp	s2,000000C8
	c.lwsp	a4,000000E8
	c.lwsp	a0,0000000C
	c.lwsp	t1,0000002C
	c.addi16sp	000000B0
	c.jr	ra

l230656BE:
	c.mv	a2,s6
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,000000002306CF80
	c.swsp	s6,00000000
	c.j	0000000023065676

l230656CC:
	c.mv	s0,a5
	bge	s9,a5,00000000230656D4

l230656D2:
	c.li	s0,00000014

l230656D4:
	c.slli	s0,18
	c.srai	s0,00000018
	add	a5,s4,s7
	c.mv	a4,s3
	c.mv	a6,s0
	c.mv	a3,s2
	c.li	a2,00000001
	c.mv	a1,sp
	c.addi4spn	a0,00000004
	jal	ra,00000000230654AC
	c.lwsp	zero,000000E4
	c.addi4spn	a4,00000080
	c.add	s7,s0
	c.addi	a5,FFFFFFFF
	c.add	a5,a4
	lbu	a4,a5,-00000078
	c.addi	s5,00000001
	c.addi	a4,00000001
	sb	a4,a5,+00000F88
	c.j	0000000023065696

;; set_psk: 23065704
;;   Called from:
;;     2305DD96 (in mm_sta_add)
set_psk proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	s2,00044B00
	c.mv	s5,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s0
	lui	s1,00023083
	lui	a0,0002307C
	c.mv	s3,a2
	addi	a0,a0,+000003BC
	addi	a2,s1,-0000075C
	jal	ra,0000000023064D1E
	lui	a0,00042046
	addi	a2,zero,+00000043
	addi	a1,zero,+000000FF
	addi	a0,a0,-0000015C
	jal	ra,000000002306D1BC
	c.mv	a0,s3
	jal	ra,000000002306D630
	c.mv	a2,s3
	c.mv	a1,s5
	andi	a3,a0,+000000FF
	c.mv	a0,s4
	jal	ra,00000000230536F0
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-0000075C
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; remove_psk: 2306578E
;;   Called from:
;;     2305DFC6 (in mm_sta_del)
remove_psk proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s4,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,00023080
	lui	a0,0002307C
	addi	a2,s1,-0000037C
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,0000000023053B88
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,-0000037C
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; wpa_MD5Transform: 230657F2
;;   Called from:
;;     23066132 (in wpa_MD5Update)
;;     23066176 (in wpa_MD5Update)
wpa_MD5Transform proc
	c.addi16sp	FFFFFFD0
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.mv	a7,a0
	lw	s8,a1,+00000000
	lw	s9,a7,+00000008
	lw	s10,a7,+0000000C
	lw	a4,a7,+00000000
	lui	a5,000D76AA
	lw	a6,a7,+00000004
	addi	a5,a5,+00000478
	c.add	a5,s8
	c.add	a4,a5
	xor	a5,s9,s10
	and	a5,a5,a6
	c.lw	a1,4(s1)
	xor	a5,a5,s10
	c.add	a5,a4
	lui	a3,000E8C7B
	slli	a4,a5,00000007
	addi	a3,a3,+00000756
	c.srli	a5,00000019
	c.add	a3,s1
	c.or	a5,a4
	c.add	a5,a6
	add	a4,a3,s10
	xor	a3,a6,s9
	c.and	a3,a5
	lw	t3,a1,+00000008
	xor	a3,a3,s9
	c.add	a3,a4
	lui	a2,00024207
	slli	a4,a3,0000000C
	addi	a2,a2,+000000DB
	c.srli	a3,00000014
	c.or	a3,a4
	c.add	a2,t3
	c.add	a3,a5
	add	a4,a2,s9
	xor	a2,a6,a5
	c.and	a2,a3
	xor	a2,a2,a6
	c.add	a2,a4
	lw	s3,a1,+0000000C
	srli	a4,a2,0000000F
	c.slli	a2,11
	c.or	a2,a4
	lui	a4,000C1BDD
	addi	a4,a4,-00000112
	c.add	a4,s3
	c.mv	a0,a1
	c.add	a2,a3
	add	a1,a4,a6
	xor	a4,a5,a3
	c.and	a4,a2
	c.xor	a4,a5
	c.add	a4,a1
	lw	t5,a0,+00000010
	srli	a1,a4,0000000A
	c.slli	a4,16
	c.or	a4,a1
	lui	a1,000F57C1
	addi	a1,a1,-00000051
	c.add	a1,t5
	c.add	a4,a2
	c.add	a1,a5
	xor	a5,a3,a2
	c.and	a5,a4
	c.xor	a5,a3
	c.add	a5,a1
	lw	s5,a0,+00000014
	slli	a1,a5,00000007
	c.srli	a5,00000019
	c.or	a5,a1
	lui	a1,0004787C
	addi	a1,a1,+0000062A
	c.add	a1,s5
	c.add	a5,a4
	c.add	a1,a3
	xor	a3,a2,a4
	c.and	a3,a5
	c.xor	a3,a2
	c.add	a3,a1
	lw	t0,a0,+00000018
	slli	a1,a3,0000000C
	c.srli	a3,00000014
	c.or	a3,a1
	lui	a1,000A8304
	addi	a1,a1,+00000613
	c.add	a1,t0
	c.add	a3,a5
	c.add	a1,a2
	xor	a2,a4,a5
	c.and	a2,a3
	c.xor	a2,a4
	c.add	a2,a1
	lw	s7,a0,+0000001C
	srli	a1,a2,0000000F
	c.slli	a2,11
	c.or	a2,a1
	lui	a1,000FD469
	addi	a1,a1,+00000501
	c.add	a1,s7
	c.add	a2,a3
	c.add	a1,a4
	xor	a4,a5,a3
	c.and	a4,a2
	c.xor	a4,a5
	c.add	a4,a1
	c.lw	a0,32(s0)
	srli	a1,a4,0000000A
	c.slli	a4,16
	c.or	a4,a1
	lui	a1,0006980A
	addi	a1,a1,-00000728
	c.add	a1,s0
	c.add	a4,a2
	c.add	a1,a5
	xor	a5,a3,a2
	c.and	a5,a4
	c.xor	a5,a3
	c.add	a5,a1
	lw	t1,a0,+00000024
	slli	a1,a5,00000007
	c.srli	a5,00000019
	c.or	a5,a1
	lui	a1,0008B44F
	addi	a1,a1,+000007AF
	c.add	a1,t1
	c.add	a5,a4
	c.add	a1,a3
	xor	a3,a2,a4
	c.and	a3,a5
	c.xor	a3,a2
	c.add	a3,a1
	lw	s2,a0,+00000028
	slli	a1,a3,0000000C
	c.srli	a3,00000014
	c.or	a3,a1
	c.lui	a1,FFFF6000
	addi	a1,a1,-0000044F
	c.add	a1,s2
	c.add	a3,a5
	c.add	a1,a2
	xor	a2,a4,a5
	c.and	a2,a3
	c.xor	a2,a4
	c.add	a2,a1
	lw	t4,a0,+0000002C
	srli	a1,a2,0000000F
	c.slli	a2,11
	c.or	a2,a1
	lui	a1,000895CD
	addi	a1,a1,+000007BE
	c.add	a1,t4
	c.add	a2,a3
	c.add	a1,a4
	xor	a4,a5,a3
	c.and	a4,a2
	c.xor	a4,a5
	c.add	a4,a1
	lw	s4,a0,+00000030
	srli	a1,a4,0000000A
	c.slli	a4,16
	c.or	a4,a1
	lui	a1,0006B901
	addi	a1,a1,+00000122
	c.add	a1,s4
	c.add	a4,a2
	c.add	a1,a5
	xor	a5,a3,a2
	c.and	a5,a4
	c.xor	a5,a3
	c.add	a5,a1
	lw	t6,a0,+00000034
	slli	a1,a5,00000007
	c.srli	a5,00000019
	c.or	a5,a1
	lui	a1,000FD987
	addi	a1,a1,+00000193
	c.add	a1,t6
	c.add	a5,a4
	c.add	a1,a3
	xor	a3,a2,a4
	c.and	a3,a5
	c.xor	a3,a2
	c.add	a3,a1
	lw	s6,a0,+00000038
	slli	a1,a3,0000000C
	c.srli	a3,00000014
	c.or	a3,a1
	lui	a1,000A6794
	addi	a1,a1,+0000038E
	c.add	a1,s6
	c.add	a3,a5
	c.add	a1,a2
	xor	a2,a4,a5
	c.and	a2,a3
	c.xor	a2,a4
	c.add	a2,a1
	lw	t2,a0,+0000003C
	srli	a1,a2,0000000F
	c.slli	a2,11
	c.or	a2,a1
	lui	a1,00049B41
	addi	a1,a1,-000007DF
	c.add	a1,t2
	c.add	a2,a3
	c.add	a1,a4
	xor	a4,a5,a3
	c.and	a4,a2
	c.xor	a4,a5
	c.add	a4,a1
	srli	a1,a4,0000000A
	c.slli	a4,16
	c.or	a4,a1
	lui	a1,000F61E2
	addi	a1,a1,+00000562
	c.add	a4,a2
	c.add	a1,s1
	c.add	a1,a5
	xor	a5,a2,a4
	c.and	a5,a3
	c.xor	a5,a2
	c.add	a5,a1
	slli	a1,a5,00000005
	c.srli	a5,0000001B
	c.or	a5,a1
	lui	a1,000C040B
	addi	a1,a1,+00000340
	c.add	a5,a4
	c.add	a1,t0
	c.add	a1,a3
	xor	a3,a4,a5
	c.and	a3,a2
	c.xor	a3,a4
	c.add	a3,a1
	slli	a1,a3,00000009
	c.srli	a3,00000017
	c.or	a3,a1
	lui	a1,000265E6
	addi	a1,a1,-000005AF
	c.add	a3,a5
	c.add	a1,t4
	c.add	a1,a2
	xor	a2,a5,a3
	c.and	a2,a4
	c.xor	a2,a5
	c.add	a2,a1
	slli	a1,a2,0000000E
	c.srli	a2,00000012
	c.or	a2,a1
	lui	a1,000E9B6C
	addi	a1,a1,+000007AA
	c.add	a2,a3
	c.add	a1,s8
	c.add	a1,a4
	xor	a4,a3,a2
	c.and	a4,a5
	c.xor	a4,a3
	c.add	a4,a1
	srli	a1,a4,0000000C
	c.slli	a4,14
	c.or	a4,a1
	lui	a1,000D62F1
	addi	a1,a1,+0000005D
	c.add	a4,a2
	c.add	a1,s5
	c.add	a1,a5
	xor	a5,a2,a4
	c.and	a5,a3
	c.xor	a5,a2
	c.add	a5,a1
	slli	a1,a5,00000005
	c.srli	a5,0000001B
	c.or	a5,a1
	lui	a1,00002441
	addi	a1,a1,+00000453
	c.add	a5,a4
	c.add	a1,s2
	c.add	a1,a3
	xor	a3,a4,a5
	c.and	a3,a2
	c.xor	a3,a4
	c.add	a3,a1
	slli	a1,a3,00000009
	c.srli	a3,00000017
	c.or	a3,a1
	lui	a1,000D8A1E
	addi	a1,a1,+00000681
	c.add	a3,a5
	c.add	a1,t2
	c.add	a1,a2
	xor	a2,a5,a3
	c.and	a2,a4
	c.xor	a2,a5
	c.add	a2,a1
	slli	a1,a2,0000000E
	c.srli	a2,00000012
	c.or	a2,a1
	lui	a1,000E7D40
	addi	a1,a1,-00000438
	c.add	a2,a3
	c.add	a1,t5
	c.add	a1,a4
	xor	a4,a3,a2
	c.and	a4,a5
	c.xor	a4,a3
	c.add	a4,a1
	srli	a1,a4,0000000C
	c.slli	a4,14
	c.or	a4,a1
	lui	a1,00021E1D
	addi	a1,a1,-0000021A
	c.add	a4,a2
	c.add	a1,t1
	c.add	a1,a5
	xor	a5,a2,a4
	c.and	a5,a3
	c.xor	a5,a2
	c.add	a5,a1
	slli	a1,a5,00000005
	c.srli	a5,0000001B
	c.or	a5,a1
	lui	a1,000C3370
	addi	a1,a1,+000007D6
	c.add	a5,a4
	c.add	a1,s6
	c.add	a1,a3
	xor	a3,a4,a5
	c.and	a3,a2
	c.xor	a3,a4
	c.add	a3,a1
	slli	a1,a3,00000009
	c.srli	a3,00000017
	c.or	a3,a1
	lui	a1,000F4D51
	addi	a1,a1,-00000279
	c.add	a3,a5
	c.add	a1,s3
	c.add	a1,a2
	xor	a2,a5,a3
	c.and	a2,a4
	c.xor	a2,a5
	c.add	a2,a1
	slli	a1,a2,0000000E
	c.srli	a2,00000012
	c.or	a2,a1
	lui	a1,000455A1
	addi	a1,a1,+000004ED
	c.add	a2,a3
	c.add	a1,s0
	c.add	a1,a4
	xor	a4,a3,a2
	c.and	a4,a5
	c.xor	a4,a3
	c.add	a4,a1
	srli	a1,a4,0000000C
	c.slli	a4,14
	c.or	a4,a1
	lui	a1,000A9E3F
	addi	a1,a1,-000006FB
	c.add	a4,a2
	c.add	a1,t6
	c.add	a1,a5
	xor	a5,a2,a4
	c.and	a5,a3
	c.xor	a5,a2
	c.add	a5,a1
	slli	a1,a5,00000005
	c.srli	a5,0000001B
	c.or	a5,a1
	lui	a1,000FCEFA
	addi	a1,a1,+000003F8
	c.add	a5,a4
	c.add	a1,t3
	c.add	a1,a3
	xor	a3,a4,a5
	c.and	a3,a2
	c.xor	a3,a4
	c.add	a3,a1
	slli	a1,a3,00000009
	c.srli	a3,00000017
	c.or	a3,a1
	lui	a1,000676F0
	addi	a1,a1,+000002D9
	c.add	a3,a5
	c.add	a1,s7
	c.add	a2,a1
	xor	a1,a5,a3
	c.and	a1,a4
	c.xor	a1,a5
	c.add	a1,a2
	slli	s11,a1,0000000E
	c.srli	a1,00000012
	or	a1,a1,s11
	lui	s11,0008D2A5
	c.add	a1,a3
	addi	s11,s11,-00000376
	xor	a2,a3,a1
	c.add	s11,s4
	c.add	s11,a4
	and	a4,a5,a2
	c.xor	a4,a3
	c.add	a4,s11
	srli	s11,a4,0000000C
	c.slli	a4,14
	or	a4,a4,s11
	lui	s11,000FFFA4
	addi	s11,s11,-000006BE
	c.add	a4,a1
	c.add	s11,s5
	c.xor	a2,a4
	c.add	a5,s11
	c.add	a5,a2
	lui	a2,0008771F
	slli	s11,a5,00000004
	addi	a2,a2,+00000681
	c.srli	a5,0000001C
	or	a5,a5,s11
	c.add	a2,s0
	c.add	a5,a4
	c.add	a2,a3
	xor	a3,a1,a4
	c.xor	a3,a5
	c.add	a3,a2
	slli	a2,a3,0000000B
	c.srli	a3,00000015
	c.or	a3,a2
	lui	a2,0006D9D6
	addi	a2,a2,+00000122
	c.add	a2,t4
	c.add	a3,a5
	c.add	a2,a1
	xor	a1,a4,a5
	c.xor	a1,a3
	c.add	a1,a2
	slli	a2,a1,00000010
	c.srli	a1,00000010
	c.or	a1,a2
	lui	a2,000FDE54
	addi	a2,a2,-000007F4
	c.add	a2,s6
	c.add	a1,a3
	c.add	a2,a4
	xor	a4,a5,a3
	c.xor	a4,a1
	c.add	a4,a2
	srli	a2,a4,00000009
	c.slli	a4,17
	c.or	a4,a2
	lui	a2,000A4BEF
	addi	a2,a2,-000005BC
	c.add	a2,s1
	c.add	a4,a1
	c.add	a2,a5
	xor	a5,a3,a1
	c.xor	a5,a4
	c.add	a5,a2
	slli	a2,a5,00000004
	c.srli	a5,0000001C
	c.or	a5,a2
	lui	a2,0004BDED
	addi	a2,a2,-00000057
	c.add	a2,t5
	c.add	a5,a4
	c.add	a3,a2
	xor	a2,a1,a4
	c.xor	a2,a5
	c.add	a2,a3
	lui	a3,000F6BB5
	slli	s11,a2,0000000B
	addi	a3,a3,-000004A0
	c.srli	a2,00000015
	c.add	a3,s7
	or	a2,a2,s11
	c.add	a2,a5
	c.add	a1,a3
	xor	a3,a4,a5
	c.xor	a3,a2
	c.add	a3,a1
	lui	a1,000BEBFC
	slli	s11,a3,00000010
	addi	a1,a1,-00000390
	c.srli	a3,00000010
	or	a3,a3,s11
	c.add	a1,s2
	c.add	a3,a2
	c.add	a1,a4
	xor	a4,a5,a2
	c.xor	a4,a3
	c.add	a4,a1
	srli	a1,a4,00000009
	c.slli	a4,17
	c.or	a4,a1
	lui	a1,000289B8
	addi	a1,a1,-0000013A
	c.add	a1,t6
	c.add	a4,a3
	c.add	a5,a1
	xor	a1,a2,a3
	c.xor	a1,a4
	c.add	a1,a5
	lui	a5,000EAA12
	slli	s11,a1,00000004
	addi	a5,a5,+000007FA
	c.srli	a1,0000001C
	c.add	a5,s8
	or	a1,a1,s11
	c.add	a1,a4
	c.add	a2,a5
	xor	a5,a3,a4
	c.xor	a5,a1
	c.add	a5,a2
	lui	a2,000D4EF3
	slli	s11,a5,0000000B
	addi	a2,a2,+00000085
	c.srli	a5,00000015
	or	a5,a5,s11
	c.add	a2,s3
	c.add	a5,a1
	c.add	a2,a3
	xor	a3,a4,a1
	c.xor	a3,a5
	c.add	a3,a2
	slli	a2,a3,00000010
	c.srli	a3,00000010
	c.or	a3,a2
	lui	a2,00004882
	addi	a2,a2,-000002FB
	c.add	a2,t0
	c.add	a3,a5
	c.add	a4,a2
	xor	a2,a1,a5
	c.xor	a2,a3
	c.add	a2,a4
	lui	a4,000D9D4D
	srli	s11,a2,00000009
	addi	a4,a4,+00000039
	c.slli	a2,17
	c.add	a4,t1
	or	a2,a2,s11
	c.add	a2,a3
	c.add	a1,a4
	xor	a4,a5,a3
	c.xor	a4,a2
	c.add	a4,a1
	lui	a1,000E6DBA
	slli	s11,a4,00000004
	addi	a1,a1,-0000061B
	c.srli	a4,0000001C
	c.add	a1,s4
	or	a4,a4,s11
	c.add	a4,a2
	c.add	a5,a1
	xor	a1,a3,a2
	c.xor	a1,a4
	c.add	a1,a5
	lui	a5,0001FA28
	slli	s11,a1,0000000B
	addi	a5,a5,-00000308
	c.srli	a1,00000015
	or	a1,a1,s11
	c.add	a5,t2
	c.add	a1,a4
	c.add	a5,a3
	xor	a3,a2,a4
	c.xor	a3,a1
	c.add	a3,a5
	slli	a5,a3,00000010
	c.srli	a3,00000010
	c.or	a3,a5
	lui	a5,000C4AC5
	addi	a5,a5,+00000665
	c.add	a5,t3
	c.add	a3,a1
	c.add	a2,a5
	xor	a5,a4,a1
	c.xor	a5,a3
	c.add	a5,a2
	lui	a2,000F4292
	srli	s11,a5,00000009
	addi	a2,a2,+00000244
	c.slli	a5,17
	or	a5,a5,s11
	c.add	s8,a2
	c.add	a5,a3
	c.add	s8,a4
	xori	a4,a1,-00000001
	c.or	a4,a5
	c.xor	a4,a3
	c.add	a4,s8
	slli	a2,a4,00000006
	c.srli	a4,0000001A
	c.or	a4,a2
	lui	a2,000432B0
	addi	a2,a2,-00000069
	c.add	s7,a2
	c.add	a4,a5
	c.add	s7,a1
	xori	a1,a3,-00000001
	c.or	a1,a4
	c.xor	a1,a5
	c.add	a1,s7
	slli	a2,a1,0000000A
	c.srli	a1,00000016
	c.or	a1,a2
	lui	a2,000AB942
	addi	a2,a2,+000003A7
	c.add	s6,a2
	c.add	a1,a4
	c.add	s6,a3
	xori	a3,a5,-00000001
	c.or	a3,a1
	c.xor	a3,a4
	c.add	a3,s6
	slli	a2,a3,0000000F
	c.srli	a3,00000011
	c.or	a3,a2
	lui	a2,000FC93A
	addi	a2,a2,+00000039
	c.add	a2,s5
	c.add	a3,a1
	c.add	a5,a2
	xori	a2,a4,-00000001
	c.or	a2,a3
	c.xor	a2,a1
	c.add	a2,a5
	srli	a5,a2,0000000B
	c.slli	a2,15
	c.or	a2,a5
	lui	a5,000655B6
	addi	a5,a5,-0000063D
	c.add	a5,s4
	c.add	a2,a3
	c.add	a4,a5
	xori	a5,a1,-00000001
	c.or	a5,a2
	c.xor	a5,a3
	c.add	a5,a4
	slli	a4,a5,00000006
	c.srli	a5,0000001A
	c.or	a5,a4
	lui	a4,0008F0CD
	addi	a4,a4,-0000036E
	c.add	a4,s3
	c.add	a5,a2
	c.add	a1,a4
	xori	a4,a3,-00000001
	c.or	a4,a5
	c.xor	a4,a2
	c.add	a4,a1
	slli	a1,a4,0000000A
	c.srli	a4,00000016
	c.or	a4,a1
	lui	a1,000FFEFF
	addi	a1,a1,+0000047D
	c.add	s2,a1
	c.add	a4,a5
	c.add	s2,a3
	xori	a3,a2,-00000001
	c.or	a3,a4
	c.xor	a3,a5
	c.add	a3,s2
	slli	a1,a3,0000000F
	c.srli	a3,00000011
	c.or	a3,a1
	lui	a1,00085846
	addi	a1,a1,-0000022F
	c.add	s1,a1
	c.add	a3,a4
	c.add	s1,a2
	xori	a2,a5,-00000001
	c.or	a2,a3
	c.xor	a2,a4
	c.add	a2,s1
	srli	a1,a2,0000000B
	c.slli	a2,15
	c.or	a2,a1
	lui	a1,0006FA88
	addi	a1,a1,-000001B1
	c.add	s0,a1
	c.add	a2,a3
	c.add	a5,s0
	xori	s0,a4,-00000001
	c.or	s0,a2
	c.xor	s0,a3
	c.add	s0,a5
	slli	a5,s0,00000006
	c.srli	s0,0000001A
	c.or	s0,a5
	lui	a5,000FE2CE
	addi	a5,a5,+000006E0
	c.add	t2,a5
	c.add	s0,a2
	c.add	a4,t2
	xori	t2,a3,-00000001
	or	t2,t2,s0
	xor	t2,t2,a2
	c.add	t2,a4
	lui	a1,000A3014
	slli	a5,t2,0000000A
	addi	a1,a1,+00000314
	srli	t2,t2,00000016
	or	t2,t2,a5
	c.add	a1,t0
	c.add	t2,s0
	c.add	a3,a1
	xori	a1,a2,-00000001
	or	a1,a1,t2
	c.xor	a1,s0
	c.add	a1,a3
	slli	a5,a1,0000000F
	c.srli	a1,00000011
	c.or	a1,a5
	lui	a5,0004E081
	addi	a5,a5,+000001A1
	c.add	t6,a5
	c.add	a1,t2
	c.add	t6,a2
	xori	a2,s0,-00000001
	c.or	a2,a1
	xor	a2,a2,t2
	c.add	a2,t6
	srli	a5,a2,0000000B
	c.slli	a2,15
	c.or	a2,a5
	lui	a5,000F7538
	addi	a5,a5,-0000017E
	c.add	a5,t5
	c.add	a2,a1
	c.add	s0,a5
	xori	a5,t2,-00000001
	c.or	a5,a2
	c.xor	a5,a1
	c.add	a5,s0
	slli	a4,a5,00000006
	c.srli	a5,0000001A
	c.or	a5,a4
	lui	a4,000BD3AF
	addi	a4,a4,+00000235
	c.add	a4,t4
	c.add	a5,a2
	c.add	t2,a4
	xori	a4,a1,-00000001
	c.or	a4,a5
	c.xor	a4,a2
	c.add	a4,t2
	slli	a3,a4,0000000A
	c.srli	a4,00000016
	c.or	a4,a3
	lui	a3,0002AD7D
	addi	a3,a3,+000002BB
	c.add	a3,t3
	c.add	a4,a5
	c.add	a1,a3
	xori	a3,a2,-00000001
	c.or	a3,a4
	c.xor	a3,a5
	c.add	a3,a1
	slli	a1,a3,0000000F
	c.srli	a3,00000011
	c.or	a3,a1
	lui	a1,000EB86D
	addi	a1,a1,+00000391
	c.add	t1,a1
	c.add	a3,a4
	lw	a1,a7,+00000000
	c.add	t1,a2
	xori	a2,a5,-00000001
	c.or	a2,a3
	c.xor	a2,a4
	c.add	a5,a1
	c.add	a2,t1
	sw	a5,a7,+00000000
	srli	a5,a2,0000000B
	c.slli	a2,15
	c.or	a2,a5
	c.add	s9,a3
	c.add	s10,a4
	c.lwsp	a2,00000114
	c.add	a6,a3
	c.add	a6,a2
	sw	s9,a7,+00000008
	sw	s10,a7,+0000000C
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.lwsp	a6,000000E8
	c.lwsp	a2,0000000C
	c.lwsp	s0,0000002C
	c.lwsp	tp,0000004C
	c.lwsp	zero,0000006C
	sw	a6,a7,+00000004
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi16sp	00000030
	jal	zero,000000002306D1BC

;; wpa_MD5Init: 230660A8
;;   Called from:
;;     230653C4 (in Bl_hmac_md5)
;;     23065414 (in Bl_hmac_md5)
;;     23065464 (in Bl_hmac_md5)
wpa_MD5Init proc
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,0(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,4(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,8(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	sw	zero,a0,+00000014
	sw	zero,a0,+00000010
	c.sw	a0,12(a5)
	c.jr	ra

;; wpa_MD5Update: 230660DA
;;   Called from:
;;     230653CE (in Bl_hmac_md5)
;;     23065420 (in Bl_hmac_md5)
;;     2306542A (in Bl_hmac_md5)
;;     23065470 (in Bl_hmac_md5)
;;     2306547A (in Bl_hmac_md5)
;;     230661BC (in wpa_MD5Final)
;;     230661C6 (in wpa_MD5Final)
wpa_MD5Update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.lw	a0,16(a5)
	slli	a4,a2,00000003
	c.mv	s0,a0
	srli	a0,a5,00000003
	c.add	a5,a4
	c.sw	s0,16(a5)
	c.mv	s3,a1
	c.mv	s2,a2
	andi	a0,a0,+0000003F
	bgeu	a5,a4,000000002306610A

l23066104:
	c.lw	s0,20(a5)
	c.addi	a5,00000001
	c.sw	s0,20(a5)

l2306610A:
	c.lw	s0,20(a4)
	srli	a5,s2,0000001D
	addi	s1,zero,+00000040
	c.add	a5,a4
	c.sw	s0,20(a5)
	c.sub	s1,a0
	bltu	s2,s1,0000000023066180

l2306611E:
	addi	a0,a0,+00000058
	c.mv	a2,s1
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002306CF80
	addi	a1,s0,+00000058
	c.mv	a0,s0
	jal	ra,00000000230657F2
	addi	s4,s0,+00000018

l2306613A:
	addi	a5,s1,+0000003F
	add	a1,s3,s1
	bltu	a5,s2,0000000023066168

l23066146:
	c.li	a0,00000000

l23066148:
	addi	a0,a0,+00000058
	c.add	a0,s0
	c.lwsp	s8,00000004
	sub	a2,s2,s1
	add	a1,s3,s1
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002306CF80

l23066168:
	addi	a2,zero,+00000040
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230657F2
	addi	s1,s1,+00000040
	c.j	000000002306613A

l23066180:
	c.li	s1,00000000
	c.j	0000000023066148

;; wpa_MD5Final: 23066184
;;   Called from:
;;     230653D6 (in Bl_hmac_md5)
;;     23065432 (in Bl_hmac_md5)
;;     23065482 (in Bl_hmac_md5)
wpa_MD5Final proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.li	a2,00000008
	c.mv	s1,a0
	c.addi	a1,00000010
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,000000002306CF80
	c.lw	s0,16(a2)
	addi	a5,zero,+00000037
	c.srli	a2,00000003
	andi	a2,a2,+0000003F
	bltu	a5,a2,00000000230661EA

l230661AA:
	addi	a5,zero,+00000038

l230661AE:
	lui	a1,00023080
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,-00000370
	jal	ra,00000000230660DA
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,00000000230660DA
	c.mv	a1,s0
	c.li	a2,00000010
	c.mv	a0,s1
	jal	ra,000000002306CF80
	c.mv	a0,s0
	addi	a2,zero,+00000098
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230661EA:
	addi	a5,zero,+00000078
	c.j	00000000230661AE

;; rijndaelKeySetupEnc: 230661F0
;;   Called from:
;;     2306630A (in rijndael_set_key)
;;     23066334 (in rijndael_set_key)
rijndaelKeySetupEnc proc
	lbu	a5,a1,+00000000
	lbu	a4,a1,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+00000003
	c.xor	a5,a4
	lbu	a4,a1,+00000002
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,0(a5)
	lbu	a5,a1,+00000004
	lbu	a4,a1,+00000005
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+00000007
	c.xor	a5,a4
	lbu	a4,a1,+00000006
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,4(a5)
	lbu	a5,a1,+00000008
	lbu	a4,a1,+00000009
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+0000000B
	c.xor	a5,a4
	lbu	a4,a1,+0000000A
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,8(a5)
	lbu	a5,a1,+0000000C
	lbu	a4,a1,+0000000D
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+0000000F
	c.xor	a5,a4
	lbu	a4,a1,+0000000E
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,12(a5)
	addi	a5,zero,+00000080
	bne	a2,a5,00000000230662E6

l23066270:
	lui	a3,00023082
	lui	a4,00023082
	addi	a3,a3,-00000130
	addi	a6,a0,+00000090
	addi	a4,a4,-00000230

l23066284:
	c.lw	a3,0(a1)
	c.lw	a0,12(a2)
	c.lw	a0,0(a5)
	c.addi	a3,00000004
	c.xor	a5,a1
	srli	a1,a2,00000018
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.xor	a5,a1
	andi	a1,a2,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,08
	c.xor	a5,a1
	srli	a1,a2,00000010
	andi	a1,a1,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,18
	c.xor	a5,a1
	srli	a1,a2,00000008
	andi	a1,a1,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,10
	c.xor	a5,a1
	c.lw	a0,4(a1)
	c.sw	a0,16(a5)
	c.xor	a5,a1
	c.lw	a0,8(a1)
	c.sw	a0,20(a5)
	c.xor	a5,a1
	c.sw	a0,24(a5)
	c.xor	a5,a2
	c.sw	a0,28(a5)
	beq	a0,a6,00000000230662EA

l230662E2:
	c.addi	a0,00000010
	c.j	0000000023066284

l230662E6:
	c.li	a0,00000000
	c.jr	ra

l230662EA:
	c.li	a0,0000000A
	c.jr	ra

;; rijndael_set_key: 230662EE
;;   Called from:
;;     2306515C (in BL_AesEncrypt)
;;     230652DC (in BL_AesUnWrap)
rijndael_set_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	addi	s1,a0,+00000008
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s2,a3
	jal	ra,00000000230661F0
	c.sw	s0,4(a0)
	beq	s2,zero,0000000023066328

l23066314:
	sw	zero,s0,+00000000

l23066318:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23066328:
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.bnez	a0,0000000023066338

l2306632E:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230661F0

l23066338:
	slli	a5,a0,00000004
	c.mv	a4,s1
	slli	a2,a0,00000002
	c.add	a5,s0

l23066344:
	sub	a3,a2,s2
	c.addi	a5,FFFFFFF0
	blt	s2,a3,00000000230664E2

l2306634E:
	lui	a2,00023080
	lui	a5,00023082
	lui	a1,00023081
	lui	a6,00023080
	lui	a7,00023080
	c.li	t1,00000001
	addi	a2,a2,-00000330
	addi	a5,a5,-00000230
	addi	a1,a1,-00000730
	addi	a6,a6,+000000D0
	addi	a7,a7,+000004D0

l23066378:
	bge	t1,a0,0000000023066318

l2306637C:
	c.addi	s1,00000010
	c.lw	s1,0(a4)
	c.addi	t1,00000001
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,0(a4)
	c.lw	s1,4(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,4(a4)
	c.lw	s1,8(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,8(a4)
	c.lw	s1,12(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,12(a4)
	c.j	0000000023066378

l230664E2:
	c.lw	a5,24(a1)
	c.lw	a4,0(a3)
	c.addi	s2,00000004
	c.sw	a4,0(a1)
	c.sw	a5,24(a3)
	c.lw	a5,28(a1)
	c.lw	a4,4(a3)
	c.addi	a4,00000010
	sw	a1,a4,+00000FF4
	c.sw	a5,28(a3)
	c.lw	a5,32(a1)
	lw	a3,a4,-00000008
	sw	a1,a4,+00000FF8
	c.sw	a5,32(a3)
	c.lw	a5,36(a1)
	lw	a3,a4,-00000004
	sw	a1,a4,+00000FFC
	c.sw	a5,36(a3)
	c.j	0000000023066344

;; rijndael_decrypt: 23066512
;;   Called from:
;;     2306536A (in BL_AesUnWrap)
rijndael_decrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000000
	lbu	a5,a1,+00000001
	lbu	t3,a1,+00000004
	c.slli	a4,18
	c.slli	a5,10
	c.xor	a4,a5
	lbu	a5,a1,+00000003
	c.slli	t3,18
	lbu	a7,a1,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a7,18
	lbu	a3,a1,+0000000D
	c.slli	a5,08
	c.xor	a4,a5
	c.lw	a0,8(a5)
	c.slli	a3,10
	addi	s8,a0,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000005
	lui	s2,00023080
	lui	s1,00023081
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,00023080
	lui	t0,00023080
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-00000330
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,-00000730
	addi	t2,t2,+000000D0
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+000004D0
	c.slli	a5,10
	xor	a7,a7,a5
	lbu	a5,a1,+0000000B
	xor	a7,a7,a5
	lbu	a5,a1,+0000000A
	c.slli	a5,08
	xor	a7,a7,a5
	c.lw	a0,16(a5)
	xor	a7,a7,a5
	lbu	a5,a1,+0000000C
	c.slli	a5,18
	c.xor	a5,a3
	lbu	a3,a1,+0000000F
	c.xor	a5,a3
	lbu	a3,a1,+0000000E
	c.slli	a3,08
	c.xor	a5,a3
	c.lw	a0,20(a3)
	lw	a6,a0,+00000004
	c.xor	a5,a3
	srai	a6,a6,00000001
	c.mv	s7,a6

l230665EC:
	srli	a1,a4,00000018
	andi	a3,t3,+000000FF
	c.slli	a1,02
	c.slli	a3,02
	c.add	a1,s2
	c.add	a3,s1
	c.lw	a1,0(a0)
	c.lw	a3,0(a3)
	srli	a1,t3,00000018
	c.slli	a1,02
	c.xor	a0,a3
	c.lw	s0,16(a3)
	c.add	a1,s2
	c.lw	a1,0(a1)
	c.xor	a0,a3
	srli	a3,a5,0000000E
	andi	a3,a3,+000003FC
	c.add	a3,t2
	c.lw	a3,0(a3)
	andi	t1,a5,+000000FF
	c.slli	t1,02
	c.xor	a0,a3
	srli	a3,a7,00000006
	andi	a3,a3,+000003FC
	c.add	a3,t0
	c.lw	a3,0(a3)
	c.add	t1,s1
	lw	t1,t1,+00000000
	c.xor	a0,a3
	andi	a3,a7,+000000FF
	c.slli	a3,02
	c.add	a3,s1
	c.lw	a3,0(a3)
	srli	t4,a0,00000010
	addi	s0,s0,+00000020
	c.xor	a1,a3
	lw	a3,s0,-0000000C
	c.addi	s7,FFFFFFFF
	srli	s9,a0,00000018
	c.xor	a1,a3
	srli	a3,a4,0000000E
	andi	a3,a3,+000003FC
	c.add	a3,t2
	c.lw	a3,0(a3)
	andi	t4,t4,+000000FF
	c.xor	a1,a3
	srli	a3,a5,00000006
	andi	a3,a3,+000003FC
	c.add	a3,t0
	c.lw	a3,0(a3)
	c.srli	a5,00000018
	c.slli	a5,02
	c.xor	a1,a3
	srli	a3,a7,00000018
	c.slli	a3,02
	c.add	a3,s2
	c.lw	a3,0(a3)
	c.add	a5,s2
	c.lw	a5,0(a5)
	xor	a3,a3,t1
	lw	t1,s0,-00000008
	srli	a7,a7,0000000E
	andi	a7,a7,+000003FC
	xor	a3,a3,t1
	srli	t1,t3,0000000E
	andi	t1,t1,+000003FC
	c.add	t1,t2
	lw	t1,t1,+00000000
	c.add	a7,t2
	srli	t3,t3,00000006
	xor	a3,a3,t1
	srli	t1,a4,00000006
	andi	a4,a4,+000000FF
	c.slli	a4,02
	c.add	a4,s1
	c.lw	a4,0(a4)
	andi	t1,t1,+000003FC
	andi	t3,t3,+000003FC
	c.xor	a5,a4
	lw	a4,s0,-00000004
	c.add	t3,t0
	c.add	t1,t0
	c.xor	a5,a4
	lw	a4,a7,+00000000
	lw	t1,t1,+00000000
	srli	a7,a0,00000008
	c.xor	a5,a4
	lw	a4,t3,+00000000
	xor	a3,a3,t1
	srli	t5,a3,00000008
	c.xor	a5,a4
	srli	t6,a5,00000010
	srli	t3,a5,00000008
	srli	t1,a1,00000010
	andi	a4,a1,+000000FF
	srli	s6,a1,00000018
	andi	s5,a3,+000000FF
	srli	s4,a3,00000018
	c.srli	a1,00000008
	c.srli	a3,00000010
	andi	s3,a5,+000000FF
	andi	t6,t6,+000000FF
	andi	t5,t5,+000000FF
	lw	s10,s0,+00000000
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	andi	a7,a7,+000000FF
	c.srli	a5,00000018
	andi	a3,a3,+000000FF
	andi	a1,a1,+000000FF
	andi	a0,a0,+000000FF
	beq	s7,zero,0000000023066800

l23066742:
	c.slli	a4,02
	c.slli	s9,02
	c.add	s9,s2
	add	s11,s1,a4
	lw	a4,s9,+00000000
	lw	s9,s11,+00000000
	c.slli	t6,02
	c.add	t6,t2
	xor	a4,a4,s9
	c.slli	t5,02
	xor	a4,a4,s10
	c.add	t5,t0
	lw	s10,t6,+00000000
	lw	t5,t5,+00000000
	c.slli	s6,02
	c.slli	s5,02
	xor	a4,a4,s10
	c.add	s6,s2
	c.add	s5,s1
	lw	t6,s5,+00000000
	xor	a4,a4,t5
	lw	t5,s6,+00000000
	c.slli	t4,02
	c.add	t4,t2
	xor	t5,t5,t6
	c.slli	t3,02
	lw	t6,s0,+00000004
	lw	t4,t4,+00000000
	c.add	t3,t0
	c.slli	a5,02
	c.slli	a0,02
	lw	t3,t3,+00000000
	c.add	a5,s2
	c.add	a0,s1
	xor	t5,t5,t6
	c.lw	a0,0(a0)
	c.slli	s4,02
	c.slli	s3,02
	c.lw	a5,0(a5)
	xor	t4,t5,t4
	c.add	s4,s2
	c.add	s3,s1
	lw	t5,s3,+00000000
	xor	t3,t4,t3
	c.slli	a3,02
	lw	t4,s4,+00000000
	c.xor	a5,a0
	c.add	a3,t2
	c.lw	s0,12(a0)
	c.lw	a3,0(a3)
	c.slli	t1,02
	xor	t4,t4,t5
	c.add	t1,t2
	lw	t5,s0,+00000008
	c.slli	a7,02
	c.slli	a1,02
	lw	t1,t1,+00000000
	c.add	a7,t0
	c.xor	a5,a0
	c.add	a1,t0
	c.xor	a5,a3
	lw	a7,a7,+00000000
	c.lw	a1,0(a3)
	xor	t4,t4,t5
	xor	t1,t4,t1
	xor	a7,t1,a7
	c.xor	a5,a3
	c.j	00000000230665EC

l23066800:
	lui	t0,00023081
	addi	t0,t0,-00000330
	c.slli	a6,05
	c.add	s9,t0
	c.add	t6,t0
	c.add	s8,a6
	lbu	t6,t6,+00000000
	lbu	a6,s9,+00000000
	c.add	a4,t0
	lbu	a4,a4,+00000000
	c.slli	a6,18
	c.slli	t6,10
	xor	a6,a6,t6
	c.add	t5,t0
	xor	a4,a6,a4
	lbu	a6,t5,+00000000
	c.add	s6,t0
	c.add	t4,t0
	c.slli	a6,08
	xor	a4,a4,a6
	xor	s10,a4,s10
	srli	a4,s10,00000018
	sb	a4,a2,+00000000
	srli	a4,s10,00000010
	sb	a4,a2,+00000001
	srli	a4,s10,00000008
	sb	a4,a2,+00000002
	lbu	a6,t4,+00000000
	lbu	a4,s6,+00000000
	c.add	s5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s5,+00000000
	c.add	t3,t0
	sb	s10,a2,+00000003
	xor	a4,a4,a6
	lbu	a6,t3,+00000000
	c.add	s4,t0
	c.add	t1,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000004
	c.add	s3,t0
	c.add	a7,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000004
	srli	a6,a4,00000010
	sb	a6,a2,+00000005
	srli	a6,a4,00000008
	sb	a6,a2,+00000006
	sb	a4,a2,+00000007
	lbu	a6,t1,+00000000
	lbu	a4,s4,+00000000
	c.add	a5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s3,+00000000
	c.add	a3,t0
	lbu	a5,a5,+00000000
	xor	a4,a4,a6
	lbu	a6,a7,+00000000
	c.slli	a5,18
	c.add	a0,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000008
	c.add	a1,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000008
	srli	a6,a4,00000010
	sb	a6,a2,+00000009
	sb	a4,a2,+0000000B
	srli	a6,a4,00000008
	lbu	a4,a3,+00000000
	sb	a6,a2,+0000000A
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	lbu	a4,a1,+00000000
	c.slli	a4,08
	c.xor	a5,a4
	lw	a4,s8,+0000000C
	c.xor	a5,a4
	srli	a4,a5,00000018
	sb	a4,a2,+0000000C
	srli	a4,a5,00000010
	sb	a4,a2,+0000000D
	c.lwsp	a2,00000114
	srli	a4,a5,00000008
	sb	a4,a2,+0000000E
	sb	a5,a2,+0000000F
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.lwsp	a6,000000E8
	c.lwsp	a2,0000000C
	c.lwsp	s0,0000002C
	c.lwsp	tp,0000004C
	c.lwsp	zero,0000006C
	c.addi16sp	00000030
	c.jr	ra

;; rijndael_encrypt: 23066954
;;   Called from:
;;     23065166 (in BL_AesEncrypt)
rijndael_encrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000000
	lbu	a5,a1,+00000001
	lbu	t3,a1,+00000004
	c.slli	a4,18
	c.slli	a5,10
	c.xor	a4,a5
	lbu	a5,a1,+00000003
	c.slli	t3,18
	lbu	a7,a1,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a7,18
	lbu	a3,a1,+0000000D
	c.slli	a5,08
	c.xor	a4,a5
	c.lw	a0,8(a5)
	c.slli	a3,10
	addi	s8,a0,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000005
	lui	s2,00023081
	lui	s1,00023082
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,00023081
	lui	t0,00023081
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-00000230
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,-00000630
	addi	t2,t2,+000001D0
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+000005D0
	c.slli	a5,10
	xor	a7,a7,a5
	lbu	a5,a1,+0000000B
	xor	a7,a7,a5
	lbu	a5,a1,+0000000A
	c.slli	a5,08
	xor	a7,a7,a5
	c.lw	a0,16(a5)
	xor	a7,a7,a5
	lbu	a5,a1,+0000000C
	c.slli	a5,18
	c.xor	a5,a3
	lbu	a3,a1,+0000000F
	c.xor	a5,a3
	lbu	a3,a1,+0000000E
	c.slli	a3,08
	c.xor	a5,a3
	c.lw	a0,20(a3)
	lw	a6,a0,+00000004
	c.xor	a5,a3
	srai	a6,a6,00000001
	c.mv	s7,a6

l23066A2E:
	srli	a3,a4,00000018
	andi	a1,a5,+000000FF
	c.slli	a3,02
	c.slli	a1,02
	c.add	a3,s2
	c.add	a1,s1
	c.lw	a1,0(a1)
	c.lw	a3,0(a3)
	andi	a0,a4,+000000FF
	c.slli	a0,02
	c.xor	a3,a1
	c.lw	s0,16(a1)
	c.add	a0,s1
	c.lw	a0,0(a0)
	c.xor	a3,a1
	srli	a1,t3,0000000E
	andi	a1,a1,+000003FC
	c.add	a1,t2
	c.lw	a1,0(a1)
	andi	t1,t3,+000000FF
	c.slli	t1,02
	c.xor	a3,a1
	srli	a1,a7,00000006
	andi	a1,a1,+000003FC
	c.add	a1,t0
	c.lw	a1,0(a1)
	c.add	t1,s1
	lw	t1,t1,+00000000
	c.xor	a3,a1
	srli	a1,t3,00000018
	c.slli	a1,02
	c.add	a1,s2
	c.lw	a1,0(a1)
	srli	t3,t3,00000006
	andi	t3,t3,+000003FC
	c.xor	a1,a0
	c.lw	s0,20(a0)
	c.add	t3,t0
	addi	s0,s0,+00000020
	c.xor	a1,a0
	srli	a0,a7,0000000E
	andi	a0,a0,+000003FC
	c.add	a0,t2
	c.lw	a0,0(a0)
	srli	s9,a3,00000018
	andi	s5,a3,+000000FF
	c.xor	a1,a0
	srli	a0,a5,00000006
	andi	a0,a0,+000003FC
	c.add	a0,t0
	c.lw	a0,0(a0)
	c.addi	s7,FFFFFFFF
	c.xor	a1,a0
	srli	a0,a7,00000018
	c.slli	a0,02
	c.add	a0,s2
	c.lw	a0,0(a0)
	andi	a7,a7,+000000FF
	c.slli	a7,02
	xor	a0,a0,t1
	lw	t1,s0,-00000008
	c.add	a7,s1
	lw	a7,a7,+00000000
	xor	a0,a0,t1
	srli	t1,a5,0000000E
	andi	t1,t1,+000003FC
	c.add	t1,t2
	c.srli	a5,00000018
	lw	t1,t1,+00000000
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	xor	a0,a0,t1
	srli	t1,a4,00000006
	c.srli	a4,0000000E
	andi	a4,a4,+000003FC
	xor	a5,a5,a7
	c.add	a4,t2
	lw	a7,s0,-00000004
	c.lw	a4,0(a4)
	andi	t1,t1,+000003FC
	xor	a5,a5,a7
	c.add	t1,t0
	lw	t1,t1,+00000000
	c.xor	a5,a4
	lw	a4,t3,+00000000
	xor	a0,a0,t1
	srli	t6,a1,00000010
	c.xor	a5,a4
	srli	t5,a0,00000008
	srli	t4,a0,00000010
	srli	t3,a5,00000008
	srli	t1,a5,00000010
	srli	a7,a3,00000008
	srli	s6,a1,00000018
	andi	s3,a1,+000000FF
	c.srli	a3,00000010
	c.srli	a1,00000008
	andi	a4,a5,+000000FF
	srli	s4,a0,00000018
	andi	t6,t6,+000000FF
	andi	t5,t5,+000000FF
	lw	s10,s0,+00000000
	andi	t4,t4,+000000FF
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	andi	a7,a7,+000000FF
	c.srli	a5,00000018
	andi	a3,a3,+000000FF
	andi	a1,a1,+000000FF
	andi	a0,a0,+000000FF
	beq	s7,zero,0000000023066C42

l23066B84:
	c.slli	a4,02
	c.slli	s9,02
	c.add	s9,s2
	add	s11,s1,a4
	lw	a4,s9,+00000000
	lw	s9,s11,+00000000
	c.slli	t6,02
	c.add	t6,t2
	xor	a4,a4,s9
	c.slli	t5,02
	xor	a4,a4,s10
	c.add	t5,t0
	lw	s10,t6,+00000000
	lw	t5,t5,+00000000
	c.slli	s6,02
	c.slli	s5,02
	xor	a4,a4,s10
	c.add	s6,s2
	c.add	s5,s1
	lw	t6,s5,+00000000
	xor	a4,a4,t5
	lw	t5,s6,+00000000
	c.slli	t4,02
	c.add	t4,t2
	xor	t5,t5,t6
	c.slli	t3,02
	lw	t6,s0,+00000004
	lw	t4,t4,+00000000
	c.add	t3,t0
	c.slli	a5,02
	c.slli	a0,02
	lw	t3,t3,+00000000
	c.add	a5,s2
	c.add	a0,s1
	xor	t5,t5,t6
	c.lw	a0,0(a0)
	c.slli	s4,02
	c.slli	s3,02
	c.lw	a5,0(a5)
	xor	t4,t5,t4
	c.add	s4,s2
	c.add	s3,s1
	lw	t5,s3,+00000000
	xor	t3,t4,t3
	c.slli	a3,02
	lw	t4,s4,+00000000
	c.xor	a5,a0
	c.add	a3,t2
	c.lw	s0,12(a0)
	c.lw	a3,0(a3)
	c.slli	t1,02
	xor	t4,t4,t5
	c.add	t1,t2
	lw	t5,s0,+00000008
	c.slli	a7,02
	c.slli	a1,02
	lw	t1,t1,+00000000
	c.add	a7,t0
	c.xor	a5,a0
	c.add	a1,t0
	c.xor	a5,a3
	lw	a7,a7,+00000000
	c.lw	a1,0(a3)
	xor	t4,t4,t5
	xor	t1,t4,t1
	xor	a7,t1,a7
	c.xor	a5,a3
	c.j	0000000023066A2E

l23066C42:
	lui	t0,00023082
	addi	t0,t0,-00000230
	c.slli	a6,05
	c.add	s9,t0
	c.add	t6,t0
	c.add	s8,a6
	lbu	t6,t6,+00000000
	lbu	a6,s9,+00000000
	c.add	a4,t0
	lbu	a4,a4,+00000000
	c.slli	a6,18
	c.slli	t6,10
	xor	a6,a6,t6
	c.add	t5,t0
	xor	a4,a6,a4
	lbu	a6,t5,+00000000
	c.add	s6,t0
	c.add	t4,t0
	c.slli	a6,08
	xor	a4,a4,a6
	xor	s10,a4,s10
	srli	a4,s10,00000018
	sb	a4,a2,+00000000
	srli	a4,s10,00000010
	sb	a4,a2,+00000001
	srli	a4,s10,00000008
	sb	a4,a2,+00000002
	lbu	a6,t4,+00000000
	lbu	a4,s6,+00000000
	c.add	s5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s5,+00000000
	c.add	t3,t0
	sb	s10,a2,+00000003
	xor	a4,a4,a6
	lbu	a6,t3,+00000000
	c.add	s4,t0
	c.add	t1,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000004
	c.add	s3,t0
	c.add	a7,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000004
	srli	a6,a4,00000010
	sb	a6,a2,+00000005
	srli	a6,a4,00000008
	sb	a6,a2,+00000006
	sb	a4,a2,+00000007
	lbu	a6,t1,+00000000
	lbu	a4,s4,+00000000
	c.add	a5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s3,+00000000
	c.add	a3,t0
	lbu	a5,a5,+00000000
	xor	a4,a4,a6
	lbu	a6,a7,+00000000
	c.slli	a5,18
	c.add	a0,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000008
	c.add	a1,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000008
	srli	a6,a4,00000010
	sb	a6,a2,+00000009
	sb	a4,a2,+0000000B
	srli	a6,a4,00000008
	lbu	a4,a3,+00000000
	sb	a6,a2,+0000000A
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	lbu	a4,a1,+00000000
	c.slli	a4,08
	c.xor	a5,a4
	lw	a4,s8,+0000000C
	c.xor	a5,a4
	srli	a4,a5,00000018
	sb	a4,a2,+0000000C
	srli	a4,a5,00000010
	sb	a4,a2,+0000000D
	c.lwsp	a2,00000114
	srli	a4,a5,00000008
	sb	a4,a2,+0000000E
	sb	a5,a2,+0000000F
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.lwsp	a6,000000E8
	c.lwsp	a2,0000000C
	c.lwsp	s0,0000002C
	c.lwsp	tp,0000004C
	c.lwsp	zero,0000006C
	c.addi16sp	00000030
	c.jr	ra

;; Bl_SHA1ProcessMessageBlock: 23066D96
;;   Called from:
;;     230670FE (in Bl_SHA1Final)
;;     23067150 (in Bl_SHA1Final)
;;     23067280 (in Bl_SHA1Update)
Bl_SHA1ProcessMessageBlock proc
	addi	a2,a0,+0000001C
	c.mv	a4,a2
	addi	a1,a0,+0000005C

l23066DA0:
	lbu	a5,a4,+00000040
	lbu	a3,a4,+00000041
	c.addi	a4,00000004
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	lbu	a3,a4,+0000003E
	c.slli	a3,08
	c.or	a5,a3
	lbu	a3,a4,+0000003F
	c.or	a5,a3
	sw	a5,a4,+00000FFC
	bne	a1,a4,0000000023066DA0

l23066DC6:
	lw	a6,a0,+00000000
	lw	t3,a0,+00000004
	lw	t1,a0,+00000008
	lw	t4,a0,+0000000C
	lw	t6,a0,+00000010
	lui	t5,0005A828
	c.li	a5,00000000
	addi	t5,t5,-00000667
	c.li	t0,00000014

l23066DE6:
	xor	a3,t1,t4
	and	a3,a3,t3
	xor	a1,a3,t4
	srli	a4,a6,0000001B
	slli	a3,a6,00000005
	c.or	a3,a4
	add	a4,a3,t5
	add	a3,a1,a4
	andi	a4,a5,+00000030
	beq	a4,zero,000000002306703E

l23066E0C:
	addi	a4,a5,+0000000D
	addi	a1,a5,+00000008
	c.andi	a4,0000000F
	c.andi	a1,0000000F
	c.slli	a4,02
	c.slli	a1,02
	c.add	a4,a2
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.lw	a4,0(a4)
	andi	a7,a5,+0000000F
	c.slli	a7,02
	c.add	a7,a2
	c.xor	a4,a1
	lw	a1,a7,+00000000
	c.xor	a4,a1
	addi	a1,a5,+00000002
	c.andi	a1,0000000F
	c.slli	a1,02
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.xor	a4,a1
	slli	a1,a4,00000001
	c.srli	a4,0000001F
	c.or	a4,a1
	sw	a4,a7,+00000000

l23066E4E:
	c.add	a4,a3
	slli	a7,t3,0000001E
	srli	a3,t3,00000002
	c.addi	a5,00000001
	c.add	a4,t6
	or	a7,a7,a3
	c.mv	t3,a6
	c.mv	t6,t4
	bne	a5,t0,0000000023067036

l23066E68:
	lui	t5,0006ED9F
	addi	t5,t5,-0000045F
	addi	t6,zero,+00000028

l23066E74:
	addi	a1,a5,+0000000D
	addi	a3,a5,+00000008
	c.andi	a1,0000000F
	c.andi	a3,0000000F
	c.slli	a1,02
	c.slli	a3,02
	c.add	a1,a2
	c.add	a3,a2
	c.lw	a3,0(a3)
	andi	t3,a5,+0000000F
	c.lw	a1,0(a1)
	c.slli	t3,02
	c.add	t3,a2
	c.xor	a1,a3
	lw	a3,t3,+00000000
	srli	t0,a4,0000001B
	c.xor	a1,a3
	addi	a3,a5,+00000002
	c.andi	a3,0000000F
	c.slli	a3,02
	c.add	a3,a2
	c.lw	a3,0(a3)
	c.addi	a5,00000001
	c.xor	a1,a3
	slli	a3,a1,00000001
	c.srli	a1,0000001F
	c.or	a1,a3
	sw	a1,t3,+00000000
	slli	t3,a4,00000005
	xor	a3,a6,a7
	or	t3,t3,t0
	c.add	t3,t5
	xor	a3,a3,t1
	c.add	a3,t3
	c.add	a3,a1
	slli	t3,a6,0000001E
	srli	a1,a6,00000002
	c.add	a3,t4
	or	t3,t3,a1
	c.mv	a6,a4
	c.mv	t4,t1
	bne	a5,t6,0000000023067048

l23066EE8:
	lui	t5,0008F1BC
	addi	t5,t5,-00000324
	addi	t6,zero,+0000003C

l23066EF4:
	addi	a6,a5,+0000000D
	addi	a1,a5,+00000008
	andi	a6,a6,+0000000F
	c.andi	a1,0000000F
	c.slli	a6,02
	c.slli	a1,02
	c.add	a6,a2
	c.add	a1,a2
	c.lw	a1,0(a1)
	andi	t4,a5,+0000000F
	lw	a6,a6,+00000000
	c.slli	t4,02
	c.add	t4,a2
	xor	a6,a6,a1
	lw	a1,t4,+00000000
	srli	t0,a3,0000001B
	xor	a6,a6,a1
	addi	a1,a5,+00000002
	c.andi	a1,0000000F
	c.slli	a1,02
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.addi	a5,00000001
	xor	a6,a6,a1
	slli	a1,a6,00000001
	srli	a6,a6,0000001F
	or	a6,a6,a1
	or	a1,t3,a7
	sw	a6,t4,+00000000
	c.and	a1,a4
	and	t4,t3,a7
	or	a1,a1,t4
	slli	t4,a3,00000005
	or	t4,t4,t0
	c.add	t4,t5
	c.add	a1,t4
	c.add	a1,a6
	slli	t4,a4,0000001E
	srli	a6,a4,00000002
	c.add	a1,t1
	or	t4,t4,a6
	c.mv	a4,a3
	c.mv	t1,a7
	bne	a5,t6,0000000023067050

l23066F7C:
	lui	t5,000CA62C
	addi	t5,t5,+000001D6
	addi	t6,zero,+00000050

l23066F88:
	addi	a4,a5,+0000000D
	addi	a6,a5,+00000008
	c.andi	a4,0000000F
	andi	a6,a6,+0000000F
	c.slli	a4,02
	c.slli	a6,02
	c.add	a4,a2
	c.add	a6,a2
	lw	a6,a6,+00000000
	andi	t1,a5,+0000000F
	c.lw	a4,0(a4)
	c.slli	t1,02
	c.add	t1,a2
	xor	a4,a4,a6
	lw	a6,t1,+00000000
	srli	t0,a1,0000001B
	xor	a4,a4,a6
	addi	a6,a5,+00000002
	andi	a6,a6,+0000000F
	c.slli	a6,02
	c.add	a6,a2
	lw	a6,a6,+00000000
	c.addi	a5,00000001
	xor	a4,a4,a6
	slli	a6,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,a6
	sw	a4,t1,+00000000
	slli	t1,a1,00000005
	xor	a6,a3,t4
	or	t1,t1,t0
	xor	a6,a6,t3
	c.add	t1,t5
	c.add	a6,t1
	c.add	a4,a6
	c.add	a4,a7
	slli	a6,a3,0000001E
	srli	a7,a3,00000002
	or	a6,a6,a7
	c.mv	a3,a1
	c.mv	a7,t3
	bne	a5,t6,0000000023067058

l2306700C:
	c.lw	a0,0(a5)
	sh	zero,a0,+0000009C
	c.add	a4,a5
	c.lw	a0,4(a5)
	c.sw	a0,0(a4)
	c.add	a1,a5
	c.lw	a0,8(a5)
	c.sw	a0,4(a1)
	c.add	a6,a5
	c.lw	a0,12(a5)
	sw	a6,a0,+00000008
	c.add	t4,a5
	c.lw	a0,16(a5)
	sw	t4,a0,+0000000C
	c.add	t3,a5
	sw	t3,a0,+00000010
	c.jr	ra

l23067036:
	c.mv	t4,t1
	c.mv	a6,a4
	c.mv	t1,a7
	c.j	0000000023066DE6

l2306703E:
	slli	a4,a5,00000002
	c.add	a4,a0
	c.lw	a4,28(a4)
	c.j	0000000023066E4E

l23067048:
	c.mv	t1,a7
	c.mv	a4,a3
	c.mv	a7,t3
	c.j	0000000023066E74

l23067050:
	c.mv	a7,t3
	c.mv	a3,a1
	c.mv	t3,t4
	c.j	0000000023066EF4

l23067058:
	c.mv	t3,t4
	c.mv	a1,a4
	c.mv	t4,a6
	c.j	0000000023066F88

;; Bl_SHA1Init: 23067060
;;   Called from:
;;     230654F2 (in Bl_hmac_sha1)
;;     2306554A (in Bl_hmac_sha1)
;;     230655A0 (in Bl_hmac_sha1)
Bl_SHA1Init proc
	c.beqz	a0,00000000230670A4

l23067062:
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,0(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,4(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,8(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	c.sw	a0,12(a5)
	lui	a5,000C3D2E
	addi	a5,a5,+000001F0
	sw	zero,a0,+00000014
	sw	zero,a0,+00000018
	c.sw	a0,16(a5)
	sw	zero,a0,+0000009C
	c.li	a0,00000000
	c.jr	ra

l230670A4:
	c.li	a0,00000001
	c.jr	ra

;; Bl_SHA1Final: 230670A8
;;   Called from:
;;     23065504 (in Bl_hmac_sha1)
;;     23065564 (in Bl_hmac_sha1)
;;     230655BE (in Bl_hmac_sha1)
Bl_SHA1Final proc
	c.li	a5,00000001
	beq	a0,zero,00000000230671F0

l230670AE:
	beq	a1,zero,00000000230671F0

l230670B2:
	lbu	a5,a0,+0000009F
	bne	a5,zero,00000000230671F0

l230670BA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+0000009E
	c.mv	s1,a1
	c.mv	s0,a0
	c.bnez	a5,0000000023067174

l230670CC:
	lh	a4,a0,+0000009C
	addi	a2,zero,+00000037
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,a0,+0000009C
	add	a3,a0,a4
	addi	a5,zero,-00000080
	sb	a5,a3,+0000005C
	bge	a2,a4,00000000230671D4

l230670F0:
	addi	a4,zero,+0000003F

l230670F4:
	lh	a5,s0,+0000009C
	bge	a4,a5,00000000230671B4

l230670FC:
	c.mv	a0,s0
	jal	ra,0000000023066D96
	addi	a4,zero,+00000037

l23067106:
	lh	a5,s0,+0000009C
	bge	a4,a5,00000000230671C4

l2306710E:
	lhu	a5,s0,+00000018
	c.mv	a0,s0
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.lw	s0,24(a5)
	sh	a4,s0,+00000096
	srli	a3,a5,00000018
	c.srli	a5,00000010
	sb	a5,s0,+00000095
	lhu	a5,s0,+00000014
	sb	a3,s0,+00000094
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.lw	s0,20(a5)
	sh	a4,s0,+0000009A
	srli	a3,a5,00000018
	c.srli	a5,00000010
	sb	a5,s0,+00000099
	sb	a3,s0,+00000098
	jal	ra,0000000023066D96
	addi	a5,s0,+0000005C
	addi	a4,s0,+0000009C

l2306715C:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a4,a5,000000002306715C

l23067166:
	c.li	a5,00000001
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sb	a5,s0,+0000009E

l23067174:
	c.li	a5,00000000
	c.li	a2,00000014

l23067178:
	andi	a3,a5,-00000004
	c.add	a3,s0
	xori	a4,a5,-00000001
	c.lw	a3,0(a3)
	c.andi	a4,00000003
	c.slli	a4,03
	add	a1,s1,a5
	srl	a4,a3,a4
	sb	a4,a1,+00000000
	c.addi	a5,00000001
	bne	a5,a2,0000000023067178

l2306719A:
	c.mv	a0,s0
	addi	a2,zero,+000000A0
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230671B4:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	00000000230670F4

l230671C4:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	0000000023067106

l230671D4:
	addi	a4,zero,+00000037

l230671D8:
	lh	a5,s0,+0000009C
	blt	a4,a5,000000002306710E

l230671E0:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	00000000230671D8

l230671F0:
	c.mv	a0,a5
	c.jr	ra

;; Bl_SHA1Update: 230671F4
;;   Called from:
;;     230654FC (in Bl_hmac_sha1)
;;     23065556 (in Bl_hmac_sha1)
;;     230655AC (in Bl_hmac_sha1)
;;     230655B6 (in Bl_hmac_sha1)
;;     2306560E (in Bl_hmac_sha1)
Bl_SHA1Update proc
	c.bnez	a2,00000000230671FA

l230671F6:
	c.li	a0,00000000
	c.jr	ra

l230671FA:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	a0,00000001
	c.beqz	s0,000000002306723C

l2306720C:
	c.beqz	a1,000000002306723C

l2306720E:
	lbu	a5,s0,+0000009E
	c.beqz	a5,000000002306721E

l23067214:
	c.li	a5,00000003
	sb	a5,s0,+0000009F
	c.li	a0,00000003
	c.j	000000002306723C

l2306721E:
	lbu	a5,s0,+0000009F
	c.mv	a0,a5
	c.bnez	a5,000000002306723C

l23067226:
	add	s1,a1,a2
	c.li	s2,00000001
	addi	s3,zero,+00000040

l23067230:
	beq	a1,s1,000000002306723A

l23067234:
	lbu	a5,s0,+0000009F
	c.beqz	a5,000000002306724A

l2306723A:
	c.li	a0,00000000

l2306723C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2306724A:
	lh	a4,s0,+0000009C
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,s0,+0000009C
	lbu	a3,a1,+00000000
	c.add	a4,s0
	sb	a3,a4,+0000005C
	c.lw	s0,20(a4)
	c.addi	a4,00000008
	c.sw	s0,20(a4)
	c.bnez	a4,0000000023067278

l2306726C:
	c.lw	s0,24(a4)
	c.addi	a4,00000001
	c.sw	s0,24(a4)
	c.bnez	a4,0000000023067278

l23067274:
	sb	s2,s0,+0000009F

l23067278:
	bne	a5,s3,0000000023067286

l2306727C:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,0000000023066D96
	c.lwsp	a2,00000064

l23067286:
	c.addi	a1,00000001
	c.j	0000000023067230

;; supplicantRestoreDefaults: 2306728A
;;   Called from:
;;     23067314 (in supplicantFuncInit)
supplicantRestoreDefaults proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023082
	srl	a1,a1,s0
	lui	a0,0002307C
	addi	a2,s1,-00000108
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	jal	ra,0000000023053790
	jal	ra,000000002305380C
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a2,s1,-00000108
	srl	a1,a1,s0
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; supplicantFuncInit: 230672E6
;;   Called from:
;;     2305EEAE (in bl_init)
supplicantFuncInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023082
	srl	a1,a1,s0
	lui	a0,0002307C
	addi	a2,s1,-000000EC
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	jal	ra,000000002306728A
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-000000EC
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; ap_setpsk: 2306733A
;;   Called from:
;;     2306474C (in apm_start_req_handler)
ap_setpsk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s1,a2
	jal	ra,0000000023054DE2
	c.beqz	a0,0000000023067388

l2306734C:
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.mv	a0,a1
	jal	ra,000000002306D630
	c.lwsp	a2,00000064
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,000000002306CF80
	c.mv	a0,s1
	jal	ra,000000002306D630
	sb	a0,s0,+00000058
	addi	a0,s0,+00000018
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	addi	a2,zero,+00000040
	c.addi16sp	00000020
	jal	zero,000000002306CF80

l23067388:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; ap_resetConfiguration: 23067392
;;   Called from:
;;     2306742A (in InitializeAp)
ap_resetConfiguration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,0000000023054DE2
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,0000000023054DF6
	c.beqz	s0,0000000023067420

l230673AA:
	c.beqz	a0,0000000023067420

l230673AC:
	lui	s1,00023082
	addi	a0,s1,-000000D8
	jal	ra,000000002306D630
	addi	a1,s1,-000000D8
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,000000002306CF80
	c.li	s1,00000001
	sw	s1,s0,+000000B8
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	addi	a0,s0,+00000008
	jal	ra,000000002306D1BC
	lhu	a5,s0,+00000008
	sh	s1,s0,+00000010
	andi	a5,a5,+000000F7
	ori	a5,a5,+00000108
	sh	a5,s0,+00000008
	lhu	a5,s0,+0000000C
	andi	a5,a5,+000000F7
	ori	a5,a5,+00000108
	sh	a5,s0,+0000000C
	c.li	a5,00000003
	sb	a5,s0,+00000079
	sb	a5,s0,+0000007A
	addi	a5,zero,+00000064
	c.sw	s0,124(a5)
	sw	a5,s0,+00000080
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	c.sw	s0,20(a5)

l23067420:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; InitializeAp: 2306742A
;;   Called from:
;;     23054E40 (in cm_AllocAPResources)
InitializeAp proc
	jal	zero,0000000023067392

;; rf_set_channel: 2306742E
;;   Called from:
;;     23055E00 (in phy_hw_set_channel)
rf_set_channel proc
	c.mv	a0,a1
	jal	zero,00000000230577E8

;; rf_dump_status: 23067434
;;   Called from:
;;     23061B52 (in me_tx_cfm_singleton)
rf_dump_status proc
	c.jr	ra

;; bt_hcionchip_recv: 23067436
bt_hcionchip_recv proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+000007FF
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000005
	bltu	a5,a0,000000002306748A

l23067448:
	lui	a5,00023082
	addi	a5,a5,-000000C4
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.mv	a2,a1
	c.jr	a5
2306745A                               0D 45 41 11 06 C6           .EA...
23067460 B7 E7 00 42 B6 85 83 A7 C7 43 83 46 E6 FF 01 47 ...B.....C.F...G
23067470 82 97 B2 40 01 45 41 01 82 80 11 45 C5 B7 15 45 ...@.EA....E...E
23067480 F1 BF 05 45 E1 BF 09 45 D1 BF                   ...E...E..     

l2306748A:
	c.li	a0,00000000
	c.jr	ra

;; bt_onchiphci_interface_init: 2306748E
;;   Called from:
;;     230266E4 (in bl_onchiphci_interface_init)
bt_onchiphci_interface_init proc
	lui	a5,0004200E
	lui	a1,00023082
	sw	a0,a5,+0000043C
	addi	a1,a1,-000000AC
	c.li	a0,00000004
	jal	zero,000000002301725C

;; bt_onchiphci_send: 230674A4
;;   Called from:
;;     2302677C (in bl_onchiphci_send_2_controller)
bt_onchiphci_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a2
	c.beqz	a0,00000000230674CC

l230674B4:
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a0,a5,0000000023067576

l230674BC:
	c.li	a0,FFFFFFFF

l230674BE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230674CC:
	lhu	a0,a2,+00000000
	c.mv	s3,a1
	jal	ra,000000002301698A
	lbu	s1,s0,+00000008
	sh	zero,sp,+00000006
	c.mv	s2,a0
	c.bnez	s1,000000002306753E

l230674E2:
	lhu	a3,sp,+00000006
	lhu	a2,s0,+00000000
	c.lui	a0,00001000
	c.mv	a1,s3
	addi	a0,a0,-000007FB
	jal	ra,000000002300DB74
	c.mv	s3,a0
	c.beqz	a0,00000000230674BC

l230674FA:
	lhu	a5,sp,+00000006
	c.beqz	a5,0000000023067520

l23067500:
	lw	a4,s2,+00000004
	c.beqz	a4,0000000023067520

l23067506:
	lbu	a5,s2,+00000002
	slli	a3,s1,00000010
	c.srli	a3,00000010
	andi	a5,a5,+00000040
	c.lw	s0,4(a1)
	addi	a2,sp,+00000006
	c.bnez	a5,0000000023067572

l2306751C:
	jal	ra,0000000023016C3A

l23067520:
	c.li	a5,00000001
	sb	a5,sp,+00000008
	c.swsp	s3,00000084

l23067528:
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,00000008
	jal	ra,000000002300AF24
	xori	a0,a0,+00000001
	andi	a0,a0,+000000FF
	sub	a0,zero,a0
	c.j	00000000230674BE

l2306753E:
	c.lw	a0,4(a4)
	c.beqz	a4,00000000230674E2

l23067542:
	lbu	a5,a0,+00000002
	slli	a3,s1,00000010
	c.srli	a3,00000010
	andi	a5,a5,+00000040
	addi	a2,sp,+00000006
	c.bnez	a5,0000000023067566

l23067556:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023016C3A

l2306755E:
	c.li	a5,00000001
	bne	a0,a5,00000000230674E2

l23067564:
	c.j	00000000230674BC

l23067566:
	c.lw	s0,4(a1)
	c.li	a0,00000000
	c.jalr	a4
	andi	a0,a0,+000000FF
	c.j	000000002306755E

l23067572:
	c.jalr	a4
	c.j	0000000023067520

l23067576:
	c.lui	a0,00001000
	c.li	a3,0000000C
	c.li	a2,00000000
	addi	a0,a0,-000007F9
	jal	ra,000000002300DB74
	c.mv	s1,a0
	c.beqz	a0,00000000230674BC

l23067588:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,0004201A
	addi	a0,a0,+000001C8
	jal	ra,000000002300C252
	csrrw	zero,mstatus,zero
	c.sw	s1,8(a0)
	beq	a0,zero,00000000230674BC

l230675A6:
	lhu	a5,s0,+00000000
	lui	a4,00028008
	sh	a5,s1,+00000000
	lbu	a5,s0,+00000002
	sb	a5,s1,+00000002
	lhu	a2,s0,+00000004
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	sh	a2,s1,+00000004
	lhu	a0,a0,+00000006
	c.lw	s0,8(a1)
	c.add	a0,a4
	c.jalr	a5
	sb	s2,sp,+00000008
	c.swsp	s1,00000084
	c.j	0000000023067528

;; bt_onchiphci_hanlde_rx_acl: 230675DC
bt_onchiphci_hanlde_rx_acl proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.addi	a0,FFFFFFF4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s2,a1
	jal	ra,0000000023016EEC
	lbu	s0,a0,+00000002
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.addi	s0,00000004
	andi	s0,s0,+000000FF
	c.mv	a1,a0
	c.mv	a2,s0
	c.mv	a0,s2
	c.jalr	a5
	lbu	a0,s1,+00000006
	jal	ra,000000002300EB30
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_open: 23067620
;;   Called from:
;;     23031E40 (in ef_port_init)
;;     230445EA (in romfs_register)
bl_mtd_open proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	addi	a0,zero,+00000020
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a1
	c.mv	s2,a2
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002303598A
	beq	a0,zero,00000000230677B6

l23067642:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,000000002306D1BC
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002306D7AC
	andi	a5,s2,+00000002
	andi	s2,s2,+00000001
	beq	s2,zero,00000000230676CE

l23067664:
	c.beqz	a5,00000000230676C8

l23067666:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023000616
	c.mv	a2,a0
	c.bnez	a0,0000000023067678

l23067674:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023067696

l23067678:
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000074
	jal	ra,0000000023003AC6
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000040
	jal	ra,0000000023003AC6

l23067694:
	c.j	0000000023067694

l23067696:
	c.sw	s0,28(a5)

l23067698:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023000746
	c.mv	a2,a0
	c.bnez	a0,00000000230676AA

l230676A6:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023067738

l230676AA:
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000074
	jal	ra,0000000023003AC6
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000040
	jal	ra,0000000023003AC6

l230676C6:
	c.j	00000000230676C6

l230676C8:
	sw	zero,s0,+0000001C
	c.j	0000000023067698

l230676CE:
	c.beqz	a5,0000000023067732

l230676D0:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,00000000230005DC
	c.mv	a2,a0
	c.bnez	a0,00000000230676E2

l230676DE:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023067700

l230676E2:
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000074
	jal	ra,0000000023003AC6
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000040
	jal	ra,0000000023003AC6

l230676FE:
	c.j	00000000230676FE

l23067700:
	c.sw	s0,28(a5)

l23067702:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002300070C
	c.mv	a2,a0
	c.bnez	a0,0000000023067714

l23067710:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023067738

l23067714:
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000074
	jal	ra,0000000023003AC6
	lui	a0,00023082
	c.mv	a1,s1
	addi	a0,a0,-00000040
	jal	ra,0000000023003AC6

l23067730:
	c.j	0000000023067730

l23067732:
	sw	zero,s0,+0000001C
	c.j	0000000023067702

l23067738:
	c.sw	s0,20(a5)
	c.lwsp	a2,000000E4
	lui	a0,00023082
	addi	a0,a0,+00000004
	c.sw	s0,24(a5)
	jal	ra,0000000023003A8A
	lui	a0,00023082
	c.mv	a1,s0
	addi	a0,a0,+0000002C
	jal	ra,0000000023003AC6
	c.lw	s0,16(a1)
	lui	a0,00023082
	addi	a0,a0,+0000003C
	jal	ra,0000000023003AC6
	c.lw	s0,20(a2)
	lui	a0,00023082
	addi	a0,a0,+0000004C
	c.mv	a1,a2
	jal	ra,0000000023003AC6
	c.lw	s0,24(a1)
	lui	a0,00023082
	addi	a0,a0,+00000064
	srli	a2,a1,0000000A
	jal	ra,0000000023003AC6
	c.lw	s0,28(a1)
	lui	a0,00023082
	addi	a0,a0,+00000080
	jal	ra,0000000023003AC6
	lui	a0,00023082
	addi	a0,a0,+00000094
	jal	ra,0000000023003A8A
	c.li	a0,00000000
	sw	s0,s3,+00000000

l230677A8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230677B6:
	c.li	a0,FFFFFFFF
	c.j	00000000230677A8

;; bl_mtd_info: 230677BA
;;   Called from:
;;     23031E74 (in ef_port_init)
;;     23044648 (in romfs_register)
bl_mtd_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s1,00000080
	c.mv	a1,a0
	c.mv	s1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,000000002306D580
	c.lw	s1,20(a5)
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.sw	s0,16(a5)
	c.lw	s1,24(a5)
	c.sw	s0,20(a5)
	c.lw	s1,28(a5)
	c.lwsp	tp,00000024
	c.sw	s0,24(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_erase: 230677E6
;;   Called from:
;;     23031DF0 (in ef_port_erase)
bl_mtd_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a2
	jal	ra,0000000023000800
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_write: 230677FC
;;   Called from:
;;     23031D5E (in ef_port_write)
bl_mtd_write proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.lw	a0,20(s1)
	c.mv	a0,a3
	c.mv	s0,a2
	c.mv	s2,a3
	c.add	s1,a1
	jal	ra,00000000230361DE
	c.beqz	a0,0000000023067894

l2306781A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023067866

l23067824:
	jal	ra,0000000023033B12

l23067828:
	c.mv	a1,a0
	lui	a3,00023082
	lui	a2,00023078
	lui	a0,00023082
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000C9
	addi	a3,a3,+000000BC
	addi	a2,a2,+000001B4
	addi	a0,a0,+000000C8
	jal	ra,00000000230018FA
	addi	s4,zero,+00000040

l23067852:
	c.bnez	s0,000000002306786C

l23067854:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l23067866:
	jal	ra,0000000023033AF0
	c.j	0000000023067828

l2306786C:
	c.mv	s3,s0
	bgeu	s4,s0,0000000023067876

l23067872:
	addi	s3,zero,+00000040

l23067876:
	c.mv	a1,s2
	c.mv	a2,s3
	c.mv	a0,sp
	jal	ra,000000002306CF80
	c.mv	a0,s1
	c.mv	a2,s3
	c.mv	a1,sp
	jal	ra,0000000023000830
	c.add	s1,s3
	c.add	s2,s3
	sub	s0,s0,s3
	c.j	0000000023067852

l23067894:
	c.mv	a2,s0
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023000830
	c.j	0000000023067854

;; bl_mtd_read: 230678A0
;;   Called from:
;;     23031D3E (in ef_port_read)
bl_mtd_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a3
	jal	ra,0000000023000862
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_init: 230678B6
;;   Called from:
;;     2303A05A (in looprt_start)
bloop_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a2,zero,+000004A0
	c.mv	s0,a0
	c.li	a1,00000000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,s0,+00000110
	jal	ra,000000002306D1BC
	addi	s2,s0,+00000210

l230678D4:
	c.mv	a0,s1
	c.addi	s1,00000008
	jal	ra,0000000023044794
	bne	s1,s2,00000000230678D4

l230678E0:
	addi	a5,s0,+00000490
	sw	a5,s0,+00000494
	sw	a5,s0,+00000490
	lui	a0,00023082
	addi	a5,s0,+00000498
	sw	a5,s0,+0000049C
	sw	a5,s0,+00000498
	addi	a1,zero,+00000020
	addi	a0,a0,+0000010C
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_handler_register: 23067916
;;   Called from:
;;     2303A06C (in looprt_start)
;;     2303A0B8 (in looprt_handler_register)
bloop_handler_register proc
	c.li	a5,0000001F
	bltu	a5,a2,0000000023067930

l2306791C:
	c.slli	a2,02
	c.add	a2,a0
	lw	a5,a2,+00000410
	c.li	a0,FFFFFFFF
	c.bnez	a5,0000000023067932

l23067928:
	sw	a1,a2,+00000410
	c.li	a0,00000000
	c.jr	ra

l23067930:
	c.li	a0,FFFFFFFF

l23067932:
	c.jr	ra

;; bloop_timer_init: 23067934
;;   Called from:
;;     2303A3B4 (in loopset_led_trigger)
bloop_timer_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a2,zero,+00000024
	c.mv	s1,a1
	c.li	a1,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306D1BC
	sltu	a1,zero,s1
	c.slli	a1,01
	c.sw	s0,0(s0)
	c.sw	s0,4(s0)
	sb	a1,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bloop_timer_configure: 23067962
;;   Called from:
;;     2303A3D0 (in loopset_led_trigger)
bloop_timer_configure proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	a1,0000008C
	c.swsp	a2,0000000C
	c.swsp	a3,00000088
	c.swsp	a4,00000008
	c.swsp	a5,00000084
	jal	ra,0000000023033AF0
	c.lwsp	t3,00000064
	c.lwsp	s8,00000084
	c.lwsp	s4,000000A4
	c.lwsp	a6,000000C4
	c.lwsp	a2,000000E4
	c.sw	s0,12(a0)
	c.add	a0,a1
	c.sw	s0,16(a0)
	c.sw	s0,28(a2)
	c.sw	s0,32(a3)
	c.sw	s0,20(a4)
	c.sw	s0,24(a5)
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; bloop_timer_repeat_enable: 23067998
;;   Called from:
;;     2303A3BA (in loopset_led_trigger)
bloop_timer_repeat_enable proc
	lbu	a5,a0,+00000008
	ori	a5,a5,+00000001
	sb	a5,a0,+00000008
	c.jr	ra

;; bloop_timer_repeat_reconfigure: 230679A6
;;   Called from:
;;     23067D82 (in bloop_run)
bloop_timer_repeat_reconfigure proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.lw	a0,16(s0)
	c.lw	a0,12(a0)
	c.sub	s0,a0
	jal	ra,0000000023033AF0
	c.add	s0,a0
	c.sw	s1,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.sw	s1,12(a0)
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bloop_timer_register: 230679CA
;;   Called from:
;;     2303A0CE (in looprt_timer_register)
;;     23067D8A (in bloop_run)
bloop_timer_register proc
	lw	a2,a0,+00000494
	addi	a3,a0,+00000490
	bne	a3,a2,0000000023067A16

l230679D6:
	c.sw	a1,4(a3)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	sw	a1,a0,+00000490
	c.jr	ra

l230679E4:
	lw	a6,a1,+00000010
	lw	a7,a4,+00000010
	sub	a6,a6,a7
	blt	zero,a6,0000000023067A02

l230679F4:
	c.bnez	a5,0000000023067A0A

l230679F6:
	c.sw	a1,4(a2)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	c.sw	a2,0(a1)
	c.jr	ra

l23067A02:
	c.mv	a5,a4
	c.lw	a4,4(a4)

l23067A06:
	bne	a3,a4,00000000230679E4

l23067A0A:
	c.lw	a5,4(a4)
	c.sw	a1,0(a5)
	c.sw	a1,4(a4)
	c.sw	a5,4(a1)
	c.sw	a4,0(a1)
	c.jr	ra

l23067A16:
	c.mv	a4,a2
	c.li	a5,00000000
	c.j	0000000023067A06

;; bloop_wait_startup: 23067A1C
;;   Called from:
;;     2303A096 (in looprt_start)
bloop_wait_startup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l23067A24:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023067A30

l23067A28:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23067A30:
	c.li	a0,00000001
	jal	ra,0000000023033E10
	c.j	0000000023067A24

;; bloop_evt_set_async: 23067A38
;;   Called from:
;;     2303A034 (in looprt_evt_notify_async)
bloop_evt_set_async proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023067A5E

l23067A44:
	lui	a1,00023082
	lui	a0,0002307B
	addi	a2,zero,+0000015A
	addi	a1,a1,+000000FC
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6

l23067A5C:
	c.j	0000000023067A5C

l23067A5E:
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230347A4
	c.lwsp	s0,00000064
	c.li	a4,00000001
	c.lwsp	a2,00000084
	sll	a3,a4,a1
	c.lw	s0,4(a4)
	c.slli	a1,02
	c.add	a1,s0
	c.or	a4,a3
	c.sw	s0,4(a4)
	c.lw	a1,16(a5)
	c.or	a5,a2
	c.sw	a1,16(a5)
	jal	ra,00000000230347B8
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023034A8C

;; bloop_evt_set_sync: 23067A98
;;   Called from:
;;     23067D0E (in bloop_run)
bloop_evt_set_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023067ABC

l23067A9E:
	lui	a1,00023082
	lui	a0,0002307B
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000177
	addi	a1,a1,+000000FC
	addi	a0,a0,-000005E0
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6

l23067ABA:
	c.j	0000000023067ABA

l23067ABC:
	c.li	a4,00000001
	sll	a3,a4,a1
	c.lw	a0,8(a4)
	c.slli	a1,02
	c.or	a4,a3
	c.sw	a0,8(a4)
	c.add	a0,a1
	c.lw	a0,16(a5)
	c.or	a5,a2
	c.sw	a0,16(a5)
	c.jr	ra

;; bloop_evt_unset_sync: 23067AD4
;;   Called from:
;;     23067C18 (in bloop_run)
bloop_evt_unset_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023067AF8

l23067ADA:
	lui	a1,00023082
	lui	a0,0002307B
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+0000017F
	addi	a1,a1,+000000FC
	addi	a0,a0,-000005E0
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6

l23067AF6:
	c.j	0000000023067AF6

l23067AF8:
	c.li	a5,00000001
	sll	a5,a5,a1
	c.lw	a0,8(a1)
	xori	a5,a5,-00000001
	c.and	a5,a1
	c.sw	a0,8(a5)
	c.jr	ra

;; bloop_run: 23067B0A
;;   Called from:
;;     2303A012 (in proc_entry_looprt)
bloop_run proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s0,a0
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	jal	ra,00000000230344BE
	c.sw	s0,0(a0)
	lui	s2,0004201F
	lui	s3,0004201F
	lui	s4,0004200E
	lui	s5,00023082

l23067B3E:
	addi	s7,s0,+00000490

l23067B42:
	jal	ra,00000000230347A4
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	sw	zero,s0,+00000004
	c.or	a5,a4
	c.sw	s0,8(a5)
	jal	ra,00000000230347B8
	c.lw	s0,8(a5)
	c.bnez	a5,0000000023067C1E

l23067B5A:
	lw	a5,s0,+00000494
	c.li	a1,FFFFFFFF
	beq	a5,s7,0000000023067B72

l23067B64:
	c.lw	a5,16(s1)
	jal	ra,0000000023033AF0
	sub	a1,s1,a0
	bge	zero,a1,0000000023067C1E

l23067B72:
	c.li	a0,00000001
	jal	ra,0000000023034906
	c.j	0000000023067B42

l23067B7A:
	c.li	a5,0000001F
	sub	s1,a5,s1
	c.li	a5,FFFFFFFF
	beq	s1,a5,0000000023067C38

l23067B86:
	slli	s6,s1,00000002
	c.add	s6,s0
	lw	a1,s6,+00000410
	c.bnez	a1,0000000023067BAC

l23067B92:
	lui	a1,00023082
	lui	a0,0002307B
	addi	a2,zero,+00000105
	addi	a1,a1,+000000FC
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6

l23067BAA:
	c.j	0000000023067BAA

l23067BAC:
	c.swsp	a1,00000084
	jal	ra,00000000230347A4
	lw	a4,s6,+00000010
	lw	a5,s6,+00000090
	sw	zero,s6,+00000010
	c.or	a5,a4
	sw	a5,s6,+00000090
	jal	ra,00000000230347B8
	jal	ra,000000002306847E
	c.lwsp	a2,00000064
	addi	a3,s1,+00000024
	c.slli	a3,02
	c.lw	a1,4(a5)
	c.mv	s6,a0
	c.add	a3,s0
	addi	a2,s0,+00000008
	c.mv	a0,s0
	c.jalr	a5
	jal	ra,000000002306847E
	slli	a5,s1,00000004
	c.add	a5,s0
	lw	a4,a5,+00000218
	sub	a0,a0,s6
	sw	a0,a5,+00000214
	c.add	a4,a0
	sw	a4,a5,+00000218
	lw	a4,a5,+00000210
	bgeu	a4,a0,0000000023067C0A

l23067C06:
	sw	a0,a5,+00000210

l23067C0A:
	lw	a4,a5,+0000021C
	c.mv	a1,s1
	c.mv	a0,s0
	c.addi	a4,00000001
	sw	a4,a5,+0000021C
	jal	ra,0000000023067AD4
	c.j	0000000023067B3E

l23067C1E:
	lw	a5,s0,+00000494
	bne	a5,s7,0000000023067C6E

l23067C26:
	c.lw	s0,8(a0)
	jal	ra,0000000023068C40
	c.mv	s1,a0
	c.lw	s0,12(a0)
	jal	ra,0000000023068C40
	bge	a0,s1,0000000023067B7A

l23067C38:
	c.li	a5,0000001F
	sub	a0,a5,a0
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023067B3E

l23067C44:
	addi	a0,a0,+00000022
	c.slli	a0,03
	c.add	a0,s0
	jal	ra,00000000230447B2
	bne	a0,zero,0000000023067B3E

l23067C54:
	lui	a1,00023082
	lui	a0,0002307B
	addi	a2,zero,+00000124
	addi	a1,a1,+000000FC
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6

l23067C6C:
	c.j	0000000023067C6C

l23067C6E:
	jal	ra,0000000023033AF0
	lw	s1,s0,+00000494
	c.mv	s9,a0
	c.li	s6,00000000
	c.beqz	s1,0000000023067C80

l23067C7C:
	lw	s6,s1,+00000004

l23067C80:
	addi	s8,s0,+00000498

l23067C84:
	bne	s1,s7,0000000023067CFE

l23067C88:
	lw	s1,s0,+0000049C
	c.li	s6,00000000
	c.beqz	s1,0000000023067C94

l23067C90:
	lw	s6,s1,+00000004

l23067C94:
	c.li	s7,00000001
	lui	s9,00023079
	lui	s10,00023082
	lui	s11,00023082

l23067CA2:
	beq	s1,s8,0000000023067C26

l23067CA6:
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lbu	a5,s1,+00000008
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023067D4C

l23067CB8:
	lbu	a5,s2,-00000104
	bltu	s7,a5,0000000023067CE8

l23067CC0:
	lbu	a5,s3,-00000103
	bltu	s7,a5,0000000023067CE8

l23067CC8:
	lw	a5,s4,+00000244
	c.beqz	a5,0000000023067D46

l23067CCE:
	jal	ra,0000000023033B12

l23067CD2:
	c.mv	a1,a0
	addi	a4,zero,+000000B8
	addi	a3,s5,+000000FC
	addi	a2,s9,+000003F8
	addi	a0,s11,+00000124
	jal	ra,00000000230018FA

l23067CE8:
	c.mv	a0,s1
	jal	ra,0000000023035A72

l23067CEE:
	c.li	a5,00000000
	beq	s6,zero,0000000023067CF8

l23067CF4:
	lw	a5,s6,+00000004

l23067CF8:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023067CA2

l23067CFE:
	c.lw	s1,16(a5)
	sub	a5,s9,a5
	blt	a5,zero,0000000023067C88

l23067D08:
	c.lw	s1,24(a2)
	c.lw	s1,20(a1)
	c.mv	a0,s0
	jal	ra,0000000023067A98
	c.lw	s1,28(a5)
	c.beqz	a5,0000000023067D1E

l23067D16:
	c.lw	s1,32(a2)
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5

l23067D1E:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	a5,s0,+0000049C
	sw	s8,s1,+00000000
	c.sw	s1,4(a5)
	sw	s1,s0,+0000049C
	c.sw	a5,0(s1)
	c.li	a5,00000000
	beq	s6,zero,0000000023067D40

l23067D3C:
	lw	a5,s6,+00000004

l23067D40:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023067C84

l23067D46:
	jal	ra,0000000023033AF0
	c.j	0000000023067CD2

l23067D4C:
	c.andi	a5,00000001
	c.beqz	a5,0000000023067CEE

l23067D50:
	lbu	a5,s2,-00000104
	bltu	s7,a5,0000000023067D80

l23067D58:
	lbu	a5,s3,-00000103
	bltu	s7,a5,0000000023067D80

l23067D60:
	lw	a5,s4,+00000244
	c.beqz	a5,0000000023067D90

l23067D66:
	jal	ra,0000000023033B12

l23067D6A:
	c.mv	a1,a0
	addi	a4,zero,+000000BB
	addi	a3,s5,+000000FC
	addi	a2,s9,+000003F8
	addi	a0,s10,+00000144
	jal	ra,00000000230018FA

l23067D80:
	c.mv	a0,s1
	jal	ra,00000000230679A6
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230679CA
	c.j	0000000023067CEE

l23067D90:
	jal	ra,0000000023033AF0
	c.j	0000000023067D6A

;; bloop_status_dump: 23067D96
;;   Called from:
;;     2303A040 (in looprt_evt_status_dump)
;;     23067F48 (in loop_evt_entity_sys_evt)
bloop_status_dump proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a0
	lui	a0,00023082
	addi	a0,a0,+00000170
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	jal	ra,0000000023003A8A
	c.lw	s0,8(a1)
	lui	a0,00023082
	addi	a0,a0,+0000018C
	jal	ra,0000000023003AC6
	c.lw	s0,12(a1)
	lui	a0,00023082
	addi	a0,a0,+000001A0
	jal	ra,0000000023003AC6
	jal	ra,0000000023033AF0
	c.mv	s4,a0
	lui	a0,00023082
	addi	a0,a0,+000001B4
	jal	ra,0000000023003A8A
	lw	s1,s0,+00000494
	addi	s3,s0,+00000490
	c.li	s2,00000000
	lui	s5,00023082

l23067DFC:
	bne	s3,s1,0000000023067ED0

l23067E00:
	lui	a0,00023082
	addi	a1,zero,+00000020
	addi	a0,a0,+00000218
	lui	s3,00023082
	addi	s1,s0,+0000008C
	jal	ra,0000000023003AC6
	addi	s0,s0,+00000400
	c.li	s2,0000001F
	addi	s3,s3,+00000168
	lui	s5,00023082
	lui	s6,00023082
	lui	s7,00023082
	lui	s8,00023082
	lui	s9,00023082
	lui	s10,00023082

l23067E3A:
	lw	a5,s1,+00000400
	c.mv	a2,s3
	c.beqz	a5,0000000023067E44

l23067E42:
	c.lw	a5,0(a2)

l23067E44:
	c.mv	a1,s2
	addi	a0,s5,+00000228
	jal	ra,0000000023003AC6
	lw	s4,s1,+00000400
	beq	s4,zero,0000000023067EA4

l23067E56:
	lw	a2,s1,+00000080
	lw	a1,s4,+00000004
	addi	a0,s6,+00000240
	c.swsp	a2,00000084
	lw	s11,s1,+00000000
	jal	ra,0000000023003AC6
	lw	a1,s4,+00000008
	addi	a0,s7,+00000258
	jal	ra,0000000023003AC6
	c.lw	s0,12(a1)
	addi	a0,s8,+0000026C
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000084
	c.mv	a1,s11
	addi	a0,s9,+00000280
	jal	ra,0000000023003AC6
	c.lw	s0,8(a2)
	addi	a5,zero,+000003E8
	c.lw	s0,0(a3)
	srl	a2,a2,a5
	c.lw	s0,4(a1)
	addi	a0,s10,+0000029C
	jal	ra,0000000023003AC6

l23067EA4:
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s1,FFFFFFFC
	c.addi	s0,FFFFFFF0
	bne	s2,a5,0000000023067E3A

l23067EB0:
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
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23067ED0:
	c.lw	s1,16(a2)
	lw	a6,s1,+0000001C
	c.lw	s1,24(a5)
	c.lw	s1,20(a4)
	c.mv	a1,s2
	sub	a3,s4,a2
	addi	a0,s5,+000001CC
	jal	ra,0000000023003AC6
	c.addi	s2,00000001
	c.lw	s1,4(s1)
	c.j	0000000023067DFC

;; loop_evt_entity_sys_handler: 23067EEE
loop_evt_entity_sys_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.mv	a1,a2
	lw	a6,a2,+0000000C
	c.lw	a2,8(a5)
	lbu	a4,a2,+00000007
	lbu	a3,a2,+00000006
	lbu	a1,a1,+00000004
	lbu	a2,a2,+00000005
	lui	a0,00023082
	addi	a0,a0,+00000338
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; loop_evt_entity_sys_evt: 23067F1E
loop_evt_entity_sys_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a3,0(s0)
	c.lw	a2,0(a1)
	c.mv	s2,a0
	lui	a0,00023082
	c.mv	a2,s0
	addi	a0,a0,+000002E4
	c.mv	s1,a3
	jal	ra,0000000023003AC6

l23067F3E:
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023067F60

l23067F44:
	c.mv	a0,s2
	c.andi	s0,FFFFFFFE
	jal	ra,0000000023067D96
	c.bnez	s0,0000000023067F3E

l23067F4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sw	zero,s1,+00000000
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23067F60:
	c.beqz	s0,0000000023067F4E

l23067F62:
	lui	a1,00023082
	lui	a0,0002307B
	addi	a2,zero,+0000002E
	addi	a1,a1,+00000324
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6

l23067F7A:
	c.j	0000000023067F7A

;; bl_sys_time_sync_state: 23067F7C
;;   Called from:
;;     23033B36 (in xTaskIncrementTick)
bl_sys_time_sync_state proc
	lui	a5,0004200E
	lw	a5,a5,+00000448
	c.beqz	a5,0000000023067FD8

l23067F86:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	jal	ra,00000000230347A4
	jal	ra,0000000023033AF0
	c.mv	s2,a0
	c.jal	00000000230684BA
	c.mv	s0,a0
	jal	ra,00000000230347B8
	lui	a5,0004200E
	lui	a4,0004200E
	lw	a5,a5,+00000444
	lw	a4,a4,+00000440
	c.li	a0,00000000
	sub	a3,s2,a5
	sub	a4,s0,a4
	bgeu	a3,a4,0000000023067FCC

l23067FC2:
	sub	a5,a5,s2
	c.add	a5,a4
	c.sw	s1,0(a5)
	c.li	a0,00000001

l23067FCC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23067FD8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; misaligned_load_trap: 23067FDC
;;   Called from:
;;     23036940 (in exception_entry)
misaligned_load_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,0000000023067FFE

l23067FEE:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,0000000023068012

l23067FF8:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023068012

l23067FFE:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,0000000023068012

l2306800A:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l23068012:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.mv	t4,a2
	c.mv	t6,a5
	c.li	t3,00000004
	beq	a1,a4,0000000023068026

l23068024:
	c.li	t3,00000002

l23068026:
	c.add	t3,t4
	csrrs	t5,mtval,gp
	c.lui	a4,00007000
	c.lui	a2,00002000
	addi	a4,a4,+0000007F
	c.and	a4,a5
	addi	a1,a2,+00000003
	beq	a4,a1,00000000230680F2

l2306803E:
	c.addi	a2,00000007
	beq	a4,a2,000000002306807A

l23068044:
	c.lui	a2,00001000
	c.addi	a2,00000003
	beq	a4,a2,0000000023068102

l2306804C:
	c.lui	a2,00005000
	c.addi	a2,00000003
	beq	a4,a2,00000000230680FA

l23068054:
	c.lui	a4,0000E000
	c.addi	a4,00000003
	c.and	a4,a5
	c.lui	a2,00004000
	beq	a4,a2,000000002306810A

l23068060:
	c.addi	a2,00000002
	beq	a4,a2,00000000230680EC

l23068066:
	c.lui	a2,00006000
	beq	a4,a2,000000002306811C

l2306806C:
	c.addi	a2,00000002
	beq	a4,a2,000000002306807A

l23068072:
	csrrwi	zero,mcause,00000005
	c.ebreak

l23068078:
	c.j	0000000023068078

l2306807A:
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000

l23068080:
	c.addi	sp,FFFFFFF0
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	c.add	a6,t5
	c.mv	a5,t5

l2306808E:
	sub	a4,a5,t5
	c.addi4spn	a2,00000008
	c.add	a4,a2
	lui	a1,00000020
	c.mv	a2,t4
	c.addi	a5,00000001
	csrrs	a3,mstatus,zero
	lbu	t0,a5,-00000001
	csrrw	zero,mstatus,zero
	sb	t0,a4,+00000000
	bne	a6,a5,000000002306808E

l230680B2:
	c.lwsp	s0,000000C4
	bne	t1,zero,00000000230680D6

l230680B8:
	srli	a5,t6,00000005
	andi	a5,a5,+0000007C
	sll	a4,a4,a7
	c.add	a5,a0
	sra	a7,a4,a7
	sw	a7,a5,+0000007C
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l230680D6:
	srli	a5,t6,00000007
	c.andi	a5,0000001F
	c.addi	a5,00000001
	c.slli	a5,02
	c.add	a5,a0
	c.sw	a5,0(a4)
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l230680EC:
	c.srli	a5,00000007
	c.andi	a5,0000001F
	c.beqz	a5,0000000023068072

l230680F2:
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	0000000023068080

l230680FA:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	0000000023068080

l23068102:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000010
	c.j	0000000023068080

l2306810A:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	0000000023068080

l2306811C:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000
	c.j	0000000023068080

;; misaligned_store_trap: 2306812E
;;   Called from:
;;     23036958 (in exception_entry)
misaligned_store_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,0000000023068150

l23068140:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,0000000023068164

l2306814A:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023068164

l23068150:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,0000000023068164

l2306815C:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l23068164:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.addi	sp,FFFFFFF0
	c.mv	t3,a0
	c.mv	t1,a2
	c.li	t4,00000004
	beq	a1,a4,000000002306817A

l23068178:
	c.li	t4,00000002

l2306817A:
	srli	a4,a5,00000012
	addi	a0,t3,+0000007C
	andi	a4,a4,+0000007C
	c.add	a4,a0
	c.lw	a4,0(a4)
	c.lui	a2,00002000
	addi	a1,a2,+00000023
	c.swsp	a4,00000004
	c.lui	a4,00007000
	addi	a4,a4,+0000007F
	c.and	a4,a5
	c.add	t4,t1
	beq	a4,a1,0000000023068220

l230681A0:
	addi	a2,a2,+00000027
	beq	a4,a2,00000000230681D8

l230681A8:
	c.lui	a2,00001000
	addi	a2,a2,+00000023
	beq	a4,a2,0000000023068230

l230681B2:
	c.lui	a2,0000E000
	addi	a4,a2,+00000003
	c.and	a4,a5
	c.lui	a1,0000C000
	beq	a4,a1,0000000023068224

l230681C0:
	c.addi	a1,00000002
	beq	a4,a1,000000002306824E

l230681C6:
	beq	a4,a2,0000000023068234

l230681CA:
	c.addi	a2,00000002
	beq	a4,a2,0000000023068264

l230681D0:
	csrrwi	zero,mcause,00000007
	c.ebreak

l230681D6:
	c.j	00000000230681D6

l230681D8:
	c.srli	a5,00000011
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000009A
230681EA                               2A C4                       *.   

l230681EC:
	csrrs	a7,mtval,gp
	c.addi4spn	a5,00000008
	c.add	a4,a5
	sub	a7,a7,a5

l230681F8:
	add	a6,a7,a5
	lbu	a0,a5,+00000000
	lui	a1,00000020
	c.mv	a2,t1
	csrrs	a3,mstatus,zero
	sb	a0,a6,+00000000
	csrrw	zero,mstatus,zero
	c.addi	a5,00000001
	bne	a4,a5,00000000230681F8

l23068218:
	sw	t4,t3,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23068220:
	c.li	a4,00000004
	c.j	00000000230681EC

l23068224:
	c.andi	a5,0000001C
	c.add	a5,a0
	c.lw	a5,32(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	00000000230681EC

l23068230:
	c.li	a4,00000002
	c.j	00000000230681EC

l23068234:
	srli	a0,a5,00000002
	c.andi	a0,00000007
	c.addi	a0,00000008
	c.slli	a0,03
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000003A
2306824A                               2A C4 45 B7                 *.E. 

l2306824E:
	srli	a4,a5,00000007
	c.andi	a4,0000001F
	c.beqz	a4,00000000230681D0

l23068256:
	andi	a5,a5,+0000007C
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	00000000230681EC

l23068264:
	c.slli	a5,01
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000000E
23068276                   2A C4 95 BF 53 05 00 E0 67 80       *...S...g.
23068280 02 00 53 85 00 E0 67 80 02 00 53 05 01 E0 67 80 ..S...g...S...g.
23068290 02 00 53 85 01 E0 67 80 02 00 53 05 02 E0 67 80 ..S...g...S...g.
230682A0 02 00 53 85 02 E0 67 80 02 00 53 05 03 E0 67 80 ..S...g...S...g.
230682B0 02 00 53 85 03 E0 67 80 02 00                   ..S...g...     

l230682BA:
	fmv.x.w	a0,fs0
	jalr	zero,t0,+00000000

l230682C2:
	fmv.x.w	a0,fs1
	jalr	zero,t0,+00000000

l230682CA:
	fmv.x.w	a0,fa0
	jalr	zero,t0,+00000000

l230682D2:
	fmv.x.w	a0,fa1
	jalr	zero,t0,+00000000

l230682DA:
	fmv.x.w	a0,fa2
	jalr	zero,t0,+00000000

l230682E2:
	fmv.x.w	a0,fa3
	jalr	zero,t0,+00000000

l230682EA:
	fmv.x.w	a0,fa4
	jalr	zero,t0,+00000000

l230682F2:
	fmv.x.w	a0,fa5
	jalr	zero,t0,+00000000
230682FA                               53 05 08 E0 67 80           S...g.
23068300 02 00 53 85 08 E0 67 80 02 00 53 05 09 E0 67 80 ..S...g...S...g.
23068310 02 00 53 85 09 E0 67 80 02 00 53 05 0A E0 67 80 ..S...g...S...g.
23068320 02 00 53 85 0A E0 67 80 02 00 53 05 0B E0 67 80 ..S...g...S...g.
23068330 02 00 53 85 0B E0 67 80 02 00 53 05 0C E0 67 80 ..S...g...S...g.
23068340 02 00 53 85 0C E0 67 80 02 00 53 05 0D E0 67 80 ..S...g...S...g.
23068350 02 00 53 85 0D E0 67 80 02 00 53 05 0E E0 67 80 ..S...g...S...g.
23068360 02 00 53 85 0E E0 67 80 02 00 53 05 0F E0 67 80 ..S...g...S...g.
23068370 02 00 53 85 0F E0 67 80 02 00 53 00 05 F0 67 80 ..S...g...S...g.
23068380 02 00 D3 00 05 F0 67 80 02 00 53 01 05 F0 67 80 ......g...S...g.
23068390 02 00 D3 01 05 F0 67 80 02 00 53 02 05 F0 67 80 ......g...S...g.
230683A0 02 00 D3 02 05 F0 67 80 02 00 53 03 05 F0 67 80 ......g...S...g.
230683B0 02 00 D3 03 05 F0 67 80 02 00 53 04 05 F0 67 80 ......g...S...g.
230683C0 02 00 D3 04 05 F0 67 80 02 00 53 05 05 F0 67 80 ......g...S...g.
230683D0 02 00 D3 05 05 F0 67 80 02 00 53 06 05 F0 67 80 ......g...S...g.
230683E0 02 00 D3 06 05 F0 67 80 02 00 53 07 05 F0 67 80 ......g...S...g.
230683F0 02 00 D3 07 05 F0 67 80 02 00 53 08 05 F0 67 80 ......g...S...g.
23068400 02 00 D3 08 05 F0 67 80 02 00 53 09 05 F0 67 80 ......g...S...g.
23068410 02 00 D3 09 05 F0 67 80 02 00 53 0A 05 F0 67 80 ......g...S...g.
23068420 02 00 D3 0A 05 F0 67 80 02 00 53 0B 05 F0 67 80 ......g...S...g.
23068430 02 00 D3 0B 05 F0 67 80 02 00 53 0C 05 F0 67 80 ......g...S...g.
23068440 02 00 D3 0C 05 F0 67 80 02 00 53 0D 05 F0 67 80 ......g...S...g.
23068450 02 00 D3 0D 05 F0 67 80 02 00 53 0E 05 F0 67 80 ......g...S...g.
23068460 02 00 D3 0E 05 F0 67 80 02 00 53 0F 05 F0 67 80 ......g...S...g.
23068470 02 00 D3 0F 05 F0 67 80 02 00                   ......g...     

;; backtrace_riscv: 2306847A
;;   Called from:
;;     230369BE (in exception_entry)
backtrace_riscv proc
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_timer_now_us: 2306847E
;;   Called from:
;;     23067BC8 (in bloop_run)
;;     23067BE2 (in bloop_run)
bl_timer_now_us proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,0000200C

l23068486:
	lw	a1,a5,-00000004
	lw	a0,a5,-00000008
	lw	a4,a5,-00000004
	bne	a1,a4,0000000023068486

l23068496:
	c.li	a2,0000000A
	c.li	a3,00000000
	jal	ra,0000000023069564
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_rtc_get_counter: 230684A4
;;   Called from:
;;     230684BE (in bl_rtc_get_timestamp_ms)
bl_rtc_get_counter proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023045FE8
	c.lwsp	t3,00000020
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.addi16sp	00000020
	c.jr	ra

;; bl_rtc_get_timestamp_ms: 230684BA
;;   Called from:
;;     23067F9C (in bl_sys_time_sync_state)
bl_rtc_get_timestamp_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230684A4
	slli	a5,a1,0000001B
	srli	a4,a0,00000005
	c.or	a4,a5
	slli	a2,a1,00000015
	srli	a5,a0,0000000B
	slli	a6,a1,00000014
	c.srli	a0,0000000C
	c.or	a5,a2
	or	a0,a6,a0
	srli	a3,a1,00000005
	srli	a2,a1,0000000B
	c.add	a0,a5
	c.srli	a1,0000000C
	sltu	a5,a0,a5
	c.add	a1,a2
	c.lwsp	a2,00000020
	c.add	a5,a1
	sub	a0,a4,a0
	sltu	a4,a4,a0
	sub	a5,a3,a5
	sub	a1,a5,a4
	c.addi	sp,00000010
	c.jr	ra

;; set_if: 2306850A
;;   Called from:
;;     23043A96 (in dhcpd_start)
set_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a1,000000002306852E

l2306851C:
	c.mv	a0,a1
	c.addi4spn	a1,0000000C
	jal	ra,000000002303D78A
	c.beqz	a0,000000002306852E

l23068526:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303E038

l2306852E:
	beq	s2,zero,0000000023068544

l23068532:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002303D78A
	c.beqz	a0,0000000023068544

l2306853C:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303E06E

l23068544:
	c.beqz	s1,0000000023068558

l23068546:
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303D78A
	c.beqz	a0,0000000023068558

l23068550:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303E056

l23068558:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; Bl_F_fast.constprop.0: 23068564
;;   Called from:
;;     23068666 (in utils_wifi_psk_cal_fast_bin)
;;     23068684 (in utils_wifi_psk_cal_fast_bin)
Bl_F_fast.constprop.0 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,0000009C
	c.swsp	a5,00000004
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a4
	c.mv	s2,a1
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.mv	s3,a2
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.mv	s5,a6
	c.swsp	a3,00000084
	jal	ra,000000002306D630
	c.lwsp	a2,000000A4
	addi	a4,s0,+00000004
	c.mv	a2,s0
	c.mv	a1,a3
	c.mv	s4,a0
	c.mv	a0,s1
	c.swsp	a4,0000000C
	c.swsp	s1,0000008C
	jal	ra,000000002306CF80
	c.lwsp	s0,000000E4
	add	a4,s1,s0
	sb	zero,a4,+00000000
	sb	a5,a4,+00000003
	sb	zero,a4,+00000001
	sb	zero,a4,+00000002
	c.jal	00000000230687E8
	c.li	a6,00000014
	c.mv	a5,s2
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.jal	000000002306869C
	c.li	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s5
	c.lui	s0,00001000
	jal	ra,000000002306CF80
	c.addi	s0,FFFFFFFF
	c.swsp	s2,0000008C
	c.li	s6,00000014

l230685DA:
	c.mv	a5,s1
	c.li	a6,00000014
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.swsp	s6,0000000C
	c.jal	000000002306869C
	c.li	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306CF80
	c.li	a5,00000000

l230685F8:
	add	a3,s5,a5
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	lbu	a2,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s6,00000000230685F8

l23068614:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,00000000230685DA

l23068618:
	c.jal	000000002306885E
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

;; utils_wifi_psk_cal_fast_bin: 2306862E
;;   Called from:
;;     23053CD4 (in pmkCacheGeneratePSK)
utils_wifi_psk_cal_fast_bin proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	ra,000000AC
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s0,a3
	jal	ra,000000002306D630
	addi	a5,zero,+0000003F
	bltu	a5,a0,0000000023068698

l2306864E:
	addi	a5,zero,+00000020
	c.li	a0,FFFFFFFF
	blt	a5,s1,000000002306868A

l23068658:
	c.mv	a6,s0
	c.li	a5,00000002
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000001C
	jal	ra,0000000023068564
	c.li	a2,0000000C
	c.mv	a1,s0
	addi	a0,s0,+00000014
	jal	ra,000000002306CF80
	c.addi4spn	a0,0000001C
	c.mv	a6,s0
	c.li	a5,00000001
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	jal	ra,0000000023068564
	c.li	a0,00000000

l2306868A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

l23068698:
	c.li	a0,FFFFFFFF
	c.j	000000002306868A

;; utils_hmac_sha1_fast: 2306869C
;;   Called from:
;;     230685C6 (in Bl_F_fast.constprop.0)
;;     230685EA (in Bl_F_fast.constprop.0)
utils_hmac_sha1_fast proc
	c.addi16sp	FFFFFEE0
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s5,sp,+00000104
	sw	s6,sp,+00000100
	c.swsp	s7,000000FC
	c.swsp	s8,0000007C
	c.swsp	s9,000000F8
	c.mv	s5,a5
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	s3,sp,+0000010C
	sw	s4,sp,+00000108
	addi	a5,zero,+00000040
	c.mv	s8,a0
	c.mv	s9,a1
	c.mv	s7,a2
	c.mv	s2,a3
	c.mv	s1,a4
	c.mv	s6,a6
	bge	a5,a4,00000000230686F0

l230686DA:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	c.jal	00000000230688D8
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	c.jal	00000000230688F6
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	c.jal	000000002306890A
	c.li	s1,00000014

l230686F0:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002306CF80
	lui	a4,00036363
	c.mv	s0,sp
	addi	s4,sp,+00000040
	c.mv	a5,sp
	addi	a4,a4,+00000636

l23068716:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,0000000023068716

l2306872E:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	c.jal	00000000230688D8
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,0000005C
	c.jal	00000000230688F6
	c.li	s3,00000000

l23068740:
	blt	s3,s7,00000000230687D2

l23068744:
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	c.jal	000000002306890A
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,000000002306CF80
	lui	a5,0005C5C6
	addi	a5,a5,-000003A4

l23068768:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,0000000023068768

l23068780:
	c.addi4spn	a0,0000005C
	c.li	a1,00000002
	c.jal	00000000230688D8
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,0000005C
	c.jal	00000000230688F6
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	c.jal	00000000230688F6
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	c.jal	000000002306890A
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,000000002306CF80
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	lw	s3,sp,+0000010C
	lw	s4,sp,+00000108
	lw	s5,sp,+00000104
	lw	s6,sp,+00000100
	c.lwsp	t6,000001F8
	c.lwsp	s11,0000011C
	c.lwsp	s7,0000013C
	c.addi16sp	00000120
	c.jr	ra

l230687D2:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,0000005C
	c.addi	s3,00000001
	c.jal	00000000230688F6
	c.j	0000000023068740

;; bl_sha_mutex_take: 230687E8
;;   Called from:
;;     230685B6 (in Bl_F_fast.constprop.0)
bl_sha_mutex_take proc
	lui	a5,0004200E
	lw	a0,a5,+00000274
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.swsp	ra,00000084
	jal	ra,000000002303296C
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,0000000023068850

l23068802:
	lui	a5,00042017
	lbu	a3,a5,-0000006C
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,0000000023068850

l23068812:
	lui	a3,0004201F
	lbu	a3,a3,-00000102
	bltu	a4,a3,0000000023068850

l2306881E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023068858

l23068828:
	jal	ra,0000000023033B12

l2306882C:
	c.mv	a1,a0
	lui	a3,00023082
	lui	a2,00023079
	lui	a0,00023082
	addi	a4,zero,+00000036
	addi	a3,a3,+000003E8
	addi	a2,a2,-000001B4
	addi	a0,a0,+000003F8
	jal	ra,00000000230018FA
	c.li	a5,FFFFFFFF

l23068850:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23068858:
	jal	ra,0000000023033AF0
	c.j	000000002306882C

;; bl_sha_mutex_give: 2306885E
;;   Called from:
;;     23068618 (in Bl_F_fast.constprop.0)
bl_sha_mutex_give proc
	lui	a5,0004200E
	lw	a0,a5,+00000274
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023032528
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,00000000230688CA

l2306887C:
	lui	a5,00042017
	lbu	a3,a5,-0000006C
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,00000000230688CA

l2306888C:
	lui	a3,0004201F
	lbu	a3,a3,-00000102
	bltu	a4,a3,00000000230688CA

l23068898:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230688D2

l230688A2:
	jal	ra,0000000023033B12

l230688A6:
	c.mv	a1,a0
	lui	a3,00023082
	lui	a2,00023079
	lui	a0,00023082
	addi	a4,zero,+0000003F
	addi	a3,a3,+000003E8
	addi	a2,a2,-000001B4
	addi	a0,a0,+000003BC
	jal	ra,00000000230018FA
	c.li	a5,FFFFFFFF

l230688CA:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230688D2:
	jal	ra,0000000023033AF0
	c.j	00000000230688A6

;; bl_sha_init: 230688D8
;;   Called from:
;;     230686DE (in utils_hmac_sha1_fast)
;;     23068732 (in utils_hmac_sha1_fast)
;;     23068784 (in utils_hmac_sha1_fast)
bl_sha_init proc
	c.addi	sp,FFFFFFF0
	addi	a4,a0,+00000054
	addi	a3,a0,+00000014
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023045BAA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023045BFA

;; bl_sha_update: 230688F6
;;   Called from:
;;     230686E6 (in utils_hmac_sha1_fast)
;;     2306873C (in utils_hmac_sha1_fast)
;;     2306878E (in utils_hmac_sha1_fast)
;;     23068796 (in utils_hmac_sha1_fast)
;;     230687E4 (in utils_hmac_sha1_fast)
bl_sha_update proc
	c.addi	sp,FFFFFFF0
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023045C0C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sha_finish: 2306890A
;;   Called from:
;;     230686EC (in utils_hmac_sha1_fast)
;;     23068748 (in utils_hmac_sha1_fast)
;;     2306879C (in utils_hmac_sha1_fast)
bl_sha_finish proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023045C1A
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; fabs: 2306891C
;;   Called from:
;;     2302E424 (in print_number)
;;     2302E4B6 (in print_number)
;;     2302E4CE (in print_number)
;;     2302E50E (in print_number)
;;     2302E538 (in print_number)
fabs proc
	slli	a1,a1,00000001
	srli	a1,a1,00000001
	jalr	zero,ra,+00000000

;; floor: 23068928
;;   Called from:
;;     2302E4AA (in print_number)
floor proc
	srai	a5,a1,00000014
	addi	sp,sp,-00000020
	andi	a5,a5,+000007FF
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	sw	ra,sp,+0000001C
	sw	s5,sp,+00000004
	sw	s6,sp,+00000000
	addi	s1,a5,-000003FF
	addi	a4,zero,+00000013
	addi	s0,a1,+00000000
	addi	s3,a0,+00000000
	addi	s2,a1,+00000000
	addi	s4,a0,+00000000
	blt	a4,s1,0000000023068A3C

l23068970:
	blt	s1,zero,0000000023068A08

l23068974:
	lui	s6,00000100
	addi	s5,s6,-00000001
	sra	s5,s5,s1
	and	a5,s5,a1
	or	a5,a5,a0
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	beq	a5,zero,00000000230689D8

l23068994:
	auipc	a5,0001EFA5
	addi	a5,a5,+0000035C
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,0000000023069DA8
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,000000002306B26C
	bge	zero,a0,00000000230689D0

l230689B8:
	bge	s0,zero,00000000230689C4

l230689BC:
	sra	s1,s6,s1
	add	s2,s1,s0

l230689C4:
	xori	s5,s5,-00000001
	and	s2,s2,s5
	addi	s4,zero,+00000000

l230689D0:
	addi	a3,s4,+00000000
	addi	a4,s2,+00000000

l230689D8:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	lw	s5,sp,+00000004
	lw	s6,sp,+00000000
	addi	a0,a3,+00000000
	addi	a1,a4,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l23068A08:
	auipc	a5,0001EFA5
	addi	a5,a5,+000002E8
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,0000000023069DA8
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,000000002306B26C
	bge	zero,a0,00000000230689D0

l23068A2C:
	blt	s0,zero,0000000023068ABC

l23068A30:
	addi	s4,zero,+00000000
	addi	s2,zero,+00000000
	jal	zero,00000000230689D0

l23068A3C:
	addi	a4,zero,+00000033
	bge	a4,s1,0000000023068A6C

l23068A44:
	addi	a5,zero,+00000400
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	bne	s1,a5,00000000230689D8

l23068A54:
	addi	a3,a1,+00000000
	addi	a2,a0,+00000000
	jal	ra,0000000023069DA8
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	jal	zero,00000000230689D8

l23068A6C:
	addi	a5,a5,-00000413
	addi	s5,zero,-00000001
	srl	s5,s5,a5
	and	a5,s5,a0
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	beq	a5,zero,00000000230689D8

l23068A88:
	auipc	a5,0001EFA5
	addi	a5,a5,+00000268
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,0000000023069DA8
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,000000002306B26C
	bge	zero,a0,00000000230689D0

l23068AAC:
	blt	s0,zero,0000000023068AD8

l23068AB0:
	xori	a5,s5,-00000001
	and	s4,s4,a5
	jal	zero,00000000230689D0

l23068ABC:
	slli	s0,s0,00000001
	srli	s0,s0,00000001
	or	s0,s0,s3
	addi	s4,zero,+00000000
	beq	s0,zero,00000000230689D0

l23068AD0:
	lui	s2,000BFF00
	jal	zero,00000000230689D0

l23068AD8:
	addi	a5,zero,+00000014
	beq	s1,a5,0000000023068B04

l23068AE0:
	addi	a5,zero,+00000034
	sub	a5,a5,s1
	addi	s1,zero,+00000001
	sll	s1,s1,a5
	add	s3,s1,s3
	bgeu	s3,s4,0000000023068B0C

l23068AF8:
	addi	s2,s0,+00000001
	addi	s4,s3,+00000000
	jal	zero,0000000023068AB0

l23068B04:
	addi	s2,s0,+00000001
	jal	zero,0000000023068AB0

l23068B0C:
	addi	s4,s3,+00000000
	jal	zero,0000000023068AB0

;; modf: 23068B14
;;   Called from:
;;     23002F26 (in cvt)
;;     23002FAE (in cvt)
;;     23003092 (in cvt)
modf proc
	srai	a4,a1,00000014
	addi	sp,sp,-00000010
	andi	a4,a4,+000007FF
	sw	ra,sp,+0000000C
	addi	a6,a4,-000003FF
	addi	a7,zero,+00000013
	addi	a5,a1,+00000000
	addi	a3,a0,+00000000
	blt	a7,a6,0000000023068B7C

l23068B38:
	blt	a6,zero,0000000023068BE0

l23068B3C:
	lui	a4,00000100
	addi	a4,a4,-00000001
	sra	a6,a4,a6
	and	a4,a6,a1
	or	a4,a4,a0
	bne	a4,zero,0000000023068BAC

l23068B54:
	lw	ra,sp,+0000000C
	addi	a1,a5,+00000000
	lui	a4,00080000
	sw	a1,a2,+00000004
	and	a5,a4,a5
	sw	a3,a2,+00000000
	addi	a0,zero,+00000000
	addi	a1,a5,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l23068B7C:
	addi	a7,zero,+00000033
	blt	a7,a6,0000000023068B54

l23068B84:
	addi	a6,zero,-00000001
	addi	a4,a4,-00000413
	srl	a4,a6,a4
	and	a6,a4,a0
	beq	a6,zero,0000000023068B54

l23068B98:
	xori	a4,a4,-00000001
	and	a3,a4,a0
	addi	t1,a3,+00000000
	addi	a6,a3,+00000000
	jal	zero,0000000023068BC0

l23068BAC:
	xori	a6,a6,-00000001
	addi	a4,zero,+00000000
	and	a5,a6,a1
	addi	t1,a4,+00000000
	addi	a6,a4,+00000000

l23068BC0:
	sw	t1,a2,+00000000
	sw	a5,a2,+00000004
	addi	a3,a5,+00000000
	addi	a2,a6,+00000000
	jal	ra,000000002306BBE0
	lw	ra,sp,+0000000C
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l23068BE0:
	lw	ra,sp,+0000000C
	lui	a4,00080000
	and	a4,a4,a1
	addi	a0,zero,+00000000
	sw	a0,a2,+00000000
	sw	a4,a2,+00000004
	addi	a0,a3,+00000000
	addi	a1,a5,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; __lshrdi3: 23068C08
;;   Called from:
;;     23046402 (in EF_Ctrl_Read_PowerOffset_Opt)
__lshrdi3 proc
	beq	a2,zero,0000000023068C28

l23068C0C:
	addi	a5,zero,+00000020
	sub	a5,a5,a2
	blt	zero,a5,0000000023068C2C

l23068C18:
	addi	a0,a2,-00000020
	addi	a4,zero,+00000000
	srl	a0,a1,a0

l23068C24:
	addi	a1,a4,+00000000

l23068C28:
	jalr	zero,ra,+00000000

l23068C2C:
	srl	a4,a1,a2
	srl	a0,a0,a2
	sll	a1,a1,a5
	or	a0,a0,a1
	jal	zero,0000000023068C24

;; __clzsi2: 23068C40
;;   Called from:
;;     23033EBC (in vTaskSwitchContext)
;;     23049872 (in txl_payload_handle)
;;     23049DAE (in txl_transmit_trigger)
;;     2304CBF4 (in scanu_frame_handler)
;;     23050282 (in ke_evt_schedule)
;;     2306247C (in rc_get_initial_rate_config)
;;     2306479C (in apm_start_req_handler)
;;     23067C28 (in bloop_run)
;;     23067C30 (in bloop_run)
;;     2306A5F4 (in __adddf3)
;;     2306A668 (in __adddf3)
;;     2306A990 (in __divdf3)
;;     2306A9C8 (in __divdf3)
;;     2306AAB8 (in __divdf3)
;;     2306AAF4 (in __divdf3)
;;     2306B4DC (in __muldf3)
;;     2306B514 (in __muldf3)
;;     2306B608 (in __muldf3)
;;     2306B644 (in __muldf3)
;;     2306C4E4 (in __subdf3)
;;     2306C558 (in __subdf3)
;;     2306C904 (in __floatsidf)
;;     2306C99C (in __floatunsidf)
;;     2306CAA8 (in __extendsfdf2)
__clzsi2 proc
	lui	a5,00000010
	bgeu	a0,a5,0000000023068C78

l23068C48:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a0
	slli	a5,a5,00000003

l23068C54:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	srl	a5,a0,a5
	auipc	a0,0000001A
	addi	a0,a0,-000007B0
	add	a5,a0,a5
	lbu	a0,a5,+00000000
	sub	a0,a4,a0
	jalr	zero,ra,+00000000

l23068C78:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a0,a4,0000000023068C54

l23068C84:
	addi	a5,zero,+00000018
	jal	zero,0000000023068C54

;; __divdi3: 23068C8C
;;   Called from:
;;     2302F770 (in uptime_cmd)
;;     2302F790 (in uptime_cmd)
;;     2302F7AE (in uptime_cmd)
;;     2302F7C0 (in uptime_cmd)
__divdi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,0000000023068CA8

l23068C94:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l23068CA8:
	bge	a3,zero,0000000023068CC0

l23068CAC:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	xori	a7,a7,-00000001
	sub	a3,a3,a5

l23068CC0:
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	addi	t3,a1,+00000000
	bne	a3,zero,0000000023068F74

l23068CD4:
	auipc	a3,00000019
	addi	a3,a3,+000007DC
	bgeu	a1,a2,0000000023068DC8

l23068CE0:
	lui	a5,00000010
	bgeu	a2,a5,0000000023068DB4

l23068CE8:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a2
	slli	a5,a5,00000003

l23068CF4:
	srl	a4,a2,a5
	add	a3,a3,a4
	lbu	a4,a3,+00000000
	add	a5,a4,a5
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	beq	a4,zero,0000000023068D24

l23068D10:
	sll	a1,a1,a4
	srl	a5,a0,a5
	sll	a6,a2,a4
	or	t3,a5,a1
	sll	t1,a0,a4

l23068D24:
	srli	a2,a6,00000010
	and	a5,t3,a2
	slli	a1,a6,00000010
	srli	a1,a1,00000010
	srli	a4,t1,00000010
	srl	t3,t3,a2
	slli	a5,a5,00000010
	or	a4,a5,a4
	add	a3,a1,t3
	addi	a5,t3,+00000000
	bgeu	a4,a3,0000000023068D68

l23068D50:
	add	a4,a4,a6
	addi	a5,t3,-00000001
	bltu	a4,a6,0000000023068D68

l23068D5C:
	bgeu	a4,a3,0000000023068D68

l23068D60:
	addi	a5,t3,-00000002
	add	a4,a4,a6

l23068D68:
	sub	a4,a4,a3
	and	a3,a4,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a4,a4,a2
	slli	a3,a3,00000010
	or	t1,a3,t1
	add	a1,a1,a4
	addi	a0,a4,+00000000
	bgeu	t1,a1,0000000023068DA4

l23068D90:
	add	t1,a6,t1
	addi	a0,a4,-00000001
	bltu	t1,a6,0000000023068DA4

l23068D9C:
	bgeu	t1,a1,0000000023068DA4

l23068DA0:
	addi	a0,a4,-00000002

l23068DA4:
	slli	a5,a5,00000010
	or	a5,a5,a0

l23068DAC:
	addi	t3,zero,+00000000
	jal	zero,0000000023068E94

l23068DB4:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a2,a4,0000000023068CF4

l23068DC0:
	addi	a5,zero,+00000018
	jal	zero,0000000023068CF4

l23068DC8:
	bne	a2,zero,0000000023068DD4

l23068DCC:
	addi	a6,zero,+00000001
	srl	a6,a6,a4

l23068DD4:
	lui	a5,00000010
	bgeu	a6,a5,0000000023068EB4

l23068DDC:
	addi	a5,zero,+000000FF
	bgeu	a5,a6,0000000023068DE8

l23068DE4:
	addi	a4,zero,+00000008

l23068DE8:
	srl	a5,a6,a4
	add	a3,a3,a5
	lbu	a5,a3,+00000000
	addi	a3,zero,+00000020
	add	a5,a5,a4
	sub	a3,a3,a5
	bne	a3,zero,0000000023068EC8

l23068E04:
	sub	a1,a1,a6
	addi	t3,zero,+00000001

l23068E0C:
	srli	a0,a6,00000010
	slli	a2,a6,00000010
	srli	a2,a2,00000010
	srli	a3,t1,00000010
	srl	a4,a1,a0
	and	a5,a1,a0
	add	a1,a2,a4
	slli	a5,a5,00000010
	or	a3,a5,a3
	addi	a5,a4,+00000000
	bgeu	a3,a1,0000000023068E50

l23068E38:
	add	a3,a3,a6
	addi	a5,a4,-00000001
	bltu	a3,a6,0000000023068E50

l23068E44:
	bgeu	a3,a1,0000000023068E50

l23068E48:
	addi	a5,a4,-00000002
	add	a3,a3,a6

l23068E50:
	sub	a3,a3,a1
	and	a4,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	or	t1,a4,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,0000000023068E8C

l23068E78:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,0000000023068E8C

l23068E84:
	bgeu	t1,a1,0000000023068E8C

l23068E88:
	addi	a0,a3,-00000002

l23068E8C:
	slli	a5,a5,00000010
	or	a5,a5,a0

l23068E94:
	addi	a0,a5,+00000000
	addi	a1,t3,+00000000
	beq	a7,zero,0000000023068EB0

l23068EA0:
	sub	a0,zero,a5
	sltu	a5,zero,a0
	sub	a1,zero,t3
	sub	a1,a1,a5

l23068EB0:
	jalr	zero,ra,+00000000

l23068EB4:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a6,a5,0000000023068DE8

l23068EC0:
	addi	a4,zero,+00000018
	jal	zero,0000000023068DE8

l23068EC8:
	sll	a6,a6,a3
	srl	a4,a1,a5
	sll	t1,a0,a3
	sll	a1,a1,a3
	srl	a5,a0,a5
	srli	a0,a6,00000010
	or	a2,a5,a1
	and	a5,a4,a0
	slli	a1,a6,00000010
	srli	a1,a1,00000010
	srli	t3,a2,00000010
	srl	a4,a4,a0
	slli	a5,a5,00000010
	or	a5,a5,t3
	add	a3,a1,a4
	addi	t3,a4,+00000000
	bgeu	a5,a3,0000000023068F24

l23068F0C:
	add	a5,a5,a6
	addi	t3,a4,-00000001
	bltu	a5,a6,0000000023068F24

l23068F18:
	bgeu	a5,a3,0000000023068F24

l23068F1C:
	addi	t3,a4,-00000002
	add	a5,a5,a6

l23068F24:
	sub	a3,a5,a3
	and	a5,a3,a0
	slli	a2,a2,00000010
	srli	a2,a2,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	add	a4,a1,a3
	or	a1,a5,a2
	addi	a5,a3,+00000000
	bgeu	a1,a4,0000000023068F64

l23068F4C:
	add	a1,a1,a6
	addi	a5,a3,-00000001
	bltu	a1,a6,0000000023068F64

l23068F58:
	bgeu	a1,a4,0000000023068F64

l23068F5C:
	addi	a5,a3,-00000002
	add	a1,a1,a6

l23068F64:
	slli	t3,t3,00000010
	sub	a1,a1,a4
	or	t3,t3,a5
	jal	zero,0000000023068E0C

l23068F74:
	bltu	a1,a3,0000000023069100

l23068F78:
	lui	a5,00000010
	bgeu	a3,a5,0000000023068FC4

l23068F80:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l23068F8C:
	srl	a6,a3,a4
	auipc	a5,00000019
	addi	a5,a5,+00000520
	add	a5,a5,a6
	lbu	a6,a5,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,0000000023068FD8

l23068FB0:
	addi	a5,zero,+00000001
	bltu	a3,a1,0000000023068E94

l23068FB8:
	sltu	a0,a0,a2
	xori	a5,a0,+00000001
	jal	zero,0000000023068E94

l23068FC4:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a3,a5,0000000023068F8C

l23068FD0:
	addi	a4,zero,+00000018
	jal	zero,0000000023068F8C

l23068FD8:
	srl	a5,a2,a6
	sll	a3,a3,t3
	or	a3,a5,a3
	sll	a4,a1,t3
	srl	a5,a1,a6
	srli	t6,a3,00000010
	srl	a6,a0,a6
	or	a1,a6,a4
	and	a6,a5,t6
	slli	t5,a3,00000010
	srli	t5,t5,00000010
	srli	a4,a1,00000010
	sll	a2,a2,t3
	srl	a5,a5,t6
	slli	a6,a6,00000010
	or	a4,a6,a4
	add	t1,t5,a5
	addi	t4,a5,+00000000
	bgeu	a4,t1,000000002306903C

l23069024:
	add	a4,a4,a3
	addi	t4,a5,-00000001
	bltu	a4,a3,000000002306903C

l23069030:
	bgeu	a4,t1,000000002306903C

l23069034:
	addi	t4,a5,-00000002
	add	a4,a4,a3

l2306903C:
	sub	a4,a4,t1
	and	t1,a4,t6
	slli	a1,a1,00000010
	srli	a1,a1,00000010
	srl	a4,a4,t6
	slli	t1,t1,00000010
	or	a6,t1,a1
	add	t5,t5,a4
	addi	a5,a4,+00000000
	bgeu	a6,t5,000000002306907C

l23069064:
	add	a6,a6,a3
	addi	a5,a4,-00000001
	bltu	a6,a3,000000002306907C

l23069070:
	bgeu	a6,t5,000000002306907C

l23069074:
	addi	a5,a4,-00000002
	add	a6,a6,a3

l2306907C:
	slli	t4,t4,00000010
	sub	a6,a6,t5
	lui	t5,00000010
	or	a5,t4,a5
	addi	a3,t5,-00000001
	and	t1,a5,a3
	srli	a1,a5,00000010
	and	a3,a2,a3
	srli	a2,a2,00000010
	add	t4,t1,a3
	add	a3,a1,a3
	srli	a4,t4,00000010
	add	t1,t1,a2
	add	t1,t1,a3
	add	a4,a4,t1
	add	a1,a1,a2
	bgeu	a4,a3,00000000230690C4

l230690C0:
	add	a1,a1,t5

l230690C4:
	srli	a3,a4,00000010
	add	a1,a3,a1
	bltu	a6,a1,00000000230690F8

l230690D0:
	bne	a6,a1,0000000023068DAC

l230690D4:
	lui	a3,00000010
	addi	a3,a3,-00000001
	and	a4,a4,a3
	slli	a4,a4,00000010
	and	t4,t4,a3
	sll	a0,a0,t3
	add	a4,a4,t4
	addi	t3,zero,+00000000
	bgeu	a0,a4,0000000023068E94

l230690F8:
	addi	a5,a5,-00000001
	jal	zero,0000000023068DAC

l23069100:
	addi	t3,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,0000000023068E94

;; __moddi3: 2306910C
;;   Called from:
;;     2302F77A (in uptime_cmd)
;;     2302F798 (in uptime_cmd)
;;     2302F7CA (in uptime_cmd)
__moddi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,0000000023069128

l23069114:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l23069128:
	bge	a3,zero,000000002306913C

l2306912C:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	sub	a3,a3,a5

l2306913C:
	addi	t1,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,000000002306939C

l23069150:
	auipc	a3,00000019
	addi	a3,a3,+00000360
	bgeu	a1,a2,0000000023069248

l2306915C:
	lui	t3,00000010
	bgeu	a2,t3,0000000023069234

l23069164:
	addi	t3,zero,+000000FF
	bgeu	t3,a2,0000000023069170

l2306916C:
	addi	a4,zero,+00000008

l23069170:
	srl	t3,a2,a4
	add	a3,a3,t3
	lbu	a3,a3,+00000000
	addi	t3,zero,+00000020
	add	a4,a3,a4
	sub	t3,t3,a4
	beq	t3,zero,00000000230691A0

l2306918C:
	sll	a1,a1,t3
	srl	a4,a0,a4
	sll	t1,a2,t3
	or	a6,a4,a1
	sll	a5,a0,t3

l230691A0:
	srli	a2,t1,00000010
	srl	a1,a6,a2
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a4,a5,00000010
	and	a3,a6,a2
	add	a1,a0,a1
	slli	a3,a3,00000010
	or	a4,a3,a4
	bgeu	a4,a1,00000000230691D8

l230691C8:
	add	a4,a4,t1
	bltu	a4,t1,00000000230691D8

l230691D0:
	bgeu	a4,a1,00000000230691D8

l230691D4:
	add	a4,a4,t1

l230691D8:
	sub	a4,a4,a1
	and	a3,a4,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a4,a4,a2
	add	a4,a0,a4
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a4,000000002306920C

l230691FC:
	add	a5,a5,t1
	bltu	a5,t1,000000002306920C

l23069204:
	bgeu	a5,a4,000000002306920C

l23069208:
	add	a5,a5,t1

l2306920C:
	sub	a5,a5,a4

l23069210:
	srl	a0,a5,t3
	addi	a1,zero,+00000000

l23069218:
	beq	a7,zero,0000000023069230

l2306921C:
	sub	a5,zero,a0
	sltu	a4,zero,a5
	sub	a1,zero,a1
	addi	a0,a5,+00000000
	sub	a1,a1,a4

l23069230:
	jalr	zero,ra,+00000000

l23069234:
	lui	t3,00001000
	addi	a4,zero,+00000010
	bltu	a2,t3,0000000023069170

l23069240:
	addi	a4,zero,+00000018
	jal	zero,0000000023069170

l23069248:
	bne	a2,zero,0000000023069254

l2306924C:
	addi	t1,zero,+00000001
	srl	t1,t1,a4

l23069254:
	lui	a2,00000010
	bgeu	t1,a2,00000000230692FC

l2306925C:
	addi	a2,zero,+000000FF
	bgeu	a2,t1,0000000023069268

l23069264:
	addi	a4,zero,+00000008

l23069268:
	srl	a2,t1,a4
	add	a3,a3,a2
	lbu	a6,a3,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,0000000023069310

l23069284:
	sub	a1,a1,t1

l23069288:
	srli	a3,t1,00000010
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a4,a1,a3
	srl	a1,a1,a3
	slli	a4,a4,00000010
	or	a4,a4,a2
	add	a1,a0,a1
	bgeu	a4,a1,00000000230692C0

l230692B0:
	add	a4,a4,t1
	bltu	a4,t1,00000000230692C0

l230692B8:
	bgeu	a4,a1,00000000230692C0

l230692BC:
	add	a4,a4,t1

l230692C0:
	sub	a1,a4,a1
	and	a4,a1,a3
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a3
	add	a1,a0,a1
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a1,00000000230692F4

l230692E4:
	add	a5,a5,t1
	bltu	a5,t1,00000000230692F4

l230692EC:
	bgeu	a5,a1,00000000230692F4

l230692F0:
	add	a5,a5,t1

l230692F4:
	sub	a5,a5,a1
	jal	zero,0000000023069210

l230692FC:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	t1,a2,0000000023069268

l23069308:
	addi	a4,zero,+00000018
	jal	zero,0000000023069268

l23069310:
	sll	t1,t1,t3
	srl	a2,a1,a6
	sll	a5,a0,t3
	srl	a6,a0,a6
	srli	a0,t1,00000010
	and	a4,a2,a0
	sll	a1,a1,t3
	or	a6,a6,a1
	slli	a1,t1,00000010
	srli	a1,a1,00000010
	srli	a3,a6,00000010
	srl	a2,a2,a0
	slli	a4,a4,00000010
	or	a4,a4,a3
	add	a2,a1,a2
	bgeu	a4,a2,0000000023069360

l23069350:
	add	a4,a4,t1
	bltu	a4,t1,0000000023069360

l23069358:
	bgeu	a4,a2,0000000023069360

l2306935C:
	add	a4,a4,t1

l23069360:
	sub	a3,a4,a2
	and	a4,a3,a0
	slli	a6,a6,00000010
	srli	a6,a6,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a3,a1,a3
	or	a1,a4,a6
	bgeu	a1,a3,0000000023069394

l23069384:
	add	a1,a1,t1
	bltu	a1,t1,0000000023069394

l2306938C:
	bgeu	a1,a3,0000000023069394

l23069390:
	add	a1,a1,t1

l23069394:
	sub	a1,a1,a3
	jal	zero,0000000023069288

l2306939C:
	bltu	a1,a3,0000000023069218

l230693A0:
	lui	a4,00000010
	bgeu	a3,a4,00000000230693FC

l230693A8:
	addi	t5,zero,+000000FF
	sltu	a4,t5,a3
	slli	a4,a4,00000003

l230693B4:
	srl	t3,a3,a4
	auipc	t1,00000019
	addi	t1,t1,+000000F8
	add	t1,t1,t3
	lbu	t5,t1,+00000000
	addi	t4,zero,+00000020
	add	t5,t5,a4
	sub	t4,t4,t5
	bne	t4,zero,0000000023069410

l230693D8:
	bltu	a3,a1,00000000230693E0

l230693DC:
	bltu	a0,a2,00000000230693F0

l230693E0:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l230693F0:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,0000000023069218

l230693FC:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a3,t1,00000000230693B4

l23069408:
	addi	a4,zero,+00000018
	jal	zero,00000000230693B4

l23069410:
	srl	a4,a2,t5
	sll	a3,a3,t4
	or	a3,a4,a3
	srli	a6,a3,00000010
	srl	a4,a1,t5
	and	t3,a4,a6
	sll	a1,a1,t4
	srl	a5,a0,t5
	or	a5,a5,a1
	slli	a1,a3,00000010
	srli	a1,a1,00000010
	srli	t1,a5,00000010
	sll	a2,a2,t4
	sll	a0,a0,t4
	srl	a4,a4,a6
	slli	t3,t3,00000010
	or	t1,t3,t1
	add	t6,a1,a4
	addi	t3,a4,+00000000
	bgeu	t1,t6,0000000023069478

l23069460:
	add	t1,t1,a3
	addi	t3,a4,-00000001
	bltu	t1,a3,0000000023069478

l2306946C:
	bgeu	t1,t6,0000000023069478

l23069470:
	addi	t3,a4,-00000002
	add	t1,t1,a3

l23069478:
	sub	t1,t1,t6
	and	t6,t1,a6
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	t1,t1,a6
	slli	t6,t6,00000010
	or	t6,t6,a5
	add	a1,a1,t1
	addi	a5,t1,+00000000
	bgeu	t6,a1,00000000230694B8

l230694A0:
	add	t6,t6,a3
	addi	a5,t1,-00000001
	bltu	t6,a3,00000000230694B8

l230694AC:
	bgeu	t6,a1,00000000230694B8

l230694B0:
	addi	a5,t1,-00000002
	add	t6,t6,a3

l230694B8:
	sub	a1,t6,a1
	slli	t3,t3,00000010
	lui	t6,00000010
	or	t3,t3,a5
	addi	a5,t6,-00000001
	and	t1,t3,a5
	srli	a6,a2,00000010
	srli	t3,t3,00000010
	and	a5,a2,a5
	add	a4,t1,a5
	add	a5,t3,a5
	add	t1,t1,a6
	add	t3,t3,a6
	add	t1,t1,a5
	srli	a6,a4,00000010
	add	a6,a6,t1
	bgeu	a6,a5,0000000023069500

l230694FC:
	add	t3,t3,t6

l23069500:
	srli	a5,a6,00000010
	add	t3,a5,t3
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t3,000000002306952C

l23069524:
	bne	a1,t3,0000000023069540

l23069528:
	bgeu	a0,a4,0000000023069540

l2306952C:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t3,t3,a4
	addi	a4,a2,+00000000

l23069540:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t3
	sub	a1,a1,a0
	sll	a5,a1,t5
	srl	a4,a4,t4
	or	a0,a5,a4
	srl	a1,a1,t4
	jal	zero,0000000023069218

;; __udivdi3: 23069564
;;   Called from:
;;     23002E16 (in format_int)
;;     23002E9A (in format_int)
;;     23054950 (in InitGroupKey)
;;     2305E34E (in mm_check_beacon)
;;     2306849A (in bl_timer_now_us)
__udivdi3 proc
	addi	a5,a1,+00000000
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	bne	a3,zero,0000000023069800

l23069578:
	auipc	a7,00000019
	addi	a7,a7,-000000C8
	bgeu	a1,a2,000000002306966C

l23069584:
	lui	a4,00000010
	bgeu	a2,a4,0000000023069658

l2306958C:
	addi	a4,zero,+000000FF
	sltu	a4,a4,a2
	slli	a4,a4,00000003

l23069598:
	srl	a3,a2,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a4,a3,a4
	addi	a3,zero,+00000020
	sub	a3,a3,a4
	beq	a3,zero,00000000230695C8

l230695B4:
	sll	a5,a5,a3
	srl	a4,a0,a4
	sll	a6,a2,a3
	or	a1,a4,a5
	sll	t1,a0,a3

l230695C8:
	srli	a0,a6,00000010
	and	a4,a1,a0
	slli	a2,a6,00000010
	srli	a2,a2,00000010
	srli	a3,t1,00000010
	srl	a1,a1,a0
	slli	a4,a4,00000010
	or	a3,a4,a3
	add	a5,a2,a1
	addi	a4,a1,+00000000
	bgeu	a3,a5,000000002306960C

l230695F4:
	add	a3,a3,a6
	addi	a4,a1,-00000001
	bltu	a3,a6,000000002306960C

l23069600:
	bgeu	a3,a5,000000002306960C

l23069604:
	addi	a4,a1,-00000002
	add	a3,a3,a6

l2306960C:
	sub	a3,a3,a5
	and	a5,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,0000000023069648

l23069634:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,0000000023069648

l23069640:
	bgeu	t1,a1,0000000023069648

l23069644:
	addi	a0,a3,-00000002

l23069648:
	slli	a4,a4,00000010
	or	a4,a4,a0

l23069650:
	addi	a1,zero,+00000000
	jal	zero,0000000023069738

l23069658:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a2,a3,0000000023069598

l23069664:
	addi	a4,zero,+00000018
	jal	zero,0000000023069598

l2306966C:
	bne	a2,zero,0000000023069678

l23069670:
	addi	a3,zero,+00000001
	srl	a6,a3,a2

l23069678:
	lui	a3,00000010
	bgeu	a6,a3,0000000023069740

l23069680:
	addi	a3,zero,+000000FF
	bgeu	a3,a6,000000002306968C

l23069688:
	addi	a4,zero,+00000008

l2306968C:
	srl	a3,a6,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a3,a3,a4
	addi	a4,zero,+00000020
	sub	a4,a4,a3
	bne	a4,zero,0000000023069754

l230696A8:
	sub	a5,a5,a6
	addi	a1,zero,+00000001

l230696B0:
	srli	a2,a6,00000010
	slli	a7,a6,00000010
	srli	a7,a7,00000010
	srli	a3,t1,00000010
	and	a4,a5,a2
	srl	a5,a5,a2
	slli	a4,a4,00000010
	or	a3,a4,a3
	add	a0,a7,a5
	addi	a4,a5,+00000000
	bgeu	a3,a0,00000000230696F4

l230696DC:
	add	a3,a3,a6
	addi	a4,a5,-00000001
	bltu	a3,a6,00000000230696F4

l230696E8:
	bgeu	a3,a0,00000000230696F4

l230696EC:
	addi	a4,a5,-00000002
	add	a3,a3,a6

l230696F4:
	sub	a3,a3,a0
	and	a5,a3,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a2
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a7,a7,a3
	addi	a0,a3,+00000000
	bgeu	t1,a7,0000000023069730

l2306971C:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,0000000023069730

l23069728:
	bgeu	t1,a7,0000000023069730

l2306972C:
	addi	a0,a3,-00000002

l23069730:
	slli	a4,a4,00000010
	or	a4,a4,a0

l23069738:
	addi	a0,a4,+00000000
	jalr	zero,ra,+00000000

l23069740:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a6,a3,000000002306968C

l2306974C:
	addi	a4,zero,+00000018
	jal	zero,000000002306968C

l23069754:
	sll	a6,a6,a4
	srl	a1,a5,a3
	sll	t1,a0,a4
	srl	a3,a0,a3
	srli	a0,a6,00000010
	sll	a5,a5,a4
	and	a4,a1,a0
	or	a7,a3,a5
	slli	a5,a6,00000010
	srli	a5,a5,00000010
	srli	a2,a7,00000010
	srl	a1,a1,a0
	slli	a4,a4,00000010
	or	a4,a4,a2
	add	a3,a5,a1
	addi	a2,a1,+00000000
	bgeu	a4,a3,00000000230697B0

l23069798:
	add	a4,a4,a6
	addi	a2,a1,-00000001
	bltu	a4,a6,00000000230697B0

l230697A4:
	bgeu	a4,a3,00000000230697B0

l230697A8:
	addi	a2,a1,-00000002
	add	a4,a4,a6

l230697B0:
	sub	a3,a4,a3
	and	a4,a3,a0
	slli	a7,a7,00000010
	srli	a7,a7,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a1,a5,a3
	or	a5,a4,a7
	addi	a4,a3,+00000000
	bgeu	a5,a1,00000000230697F0

l230697D8:
	add	a5,a5,a6
	addi	a4,a3,-00000001
	bltu	a5,a6,00000000230697F0

l230697E4:
	bgeu	a5,a1,00000000230697F0

l230697E8:
	addi	a4,a3,-00000002
	add	a5,a5,a6

l230697F0:
	sub	a5,a5,a1
	slli	a1,a2,00000010
	or	a1,a1,a4
	jal	zero,00000000230696B0

l23069800:
	bltu	a1,a3,000000002306998C

l23069804:
	lui	a4,00000010
	bgeu	a3,a4,0000000023069850

l2306980C:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l23069818:
	srl	a6,a3,a4
	auipc	a1,00000019
	addi	a1,a1,-0000036C
	add	a1,a1,a6
	lbu	a6,a1,+00000000
	addi	a1,zero,+00000020
	add	a6,a6,a4
	sub	a1,a1,a6
	bne	a1,zero,0000000023069864

l2306983C:
	addi	a4,zero,+00000001
	bltu	a3,a5,0000000023069738

l23069844:
	sltu	a0,a0,a2
	xori	a4,a0,+00000001
	jal	zero,0000000023069738

l23069850:
	lui	a1,00001000
	addi	a4,zero,+00000010
	bltu	a3,a1,0000000023069818

l2306985C:
	addi	a4,zero,+00000018
	jal	zero,0000000023069818

l23069864:
	srl	a4,a2,a6
	sll	a3,a3,a1
	or	a3,a4,a3
	srli	t4,a3,00000010
	srl	a4,a5,a6
	and	a7,a4,t4
	sll	a5,a5,a1
	srl	a6,a0,a6
	or	t1,a6,a5
	slli	a5,a3,00000010
	srli	a5,a5,00000010
	srli	a6,t1,00000010
	sll	a2,a2,a1
	srl	a4,a4,t4
	slli	a7,a7,00000010
	or	a6,a7,a6
	add	t5,a5,a4
	addi	t3,a4,+00000000
	bgeu	a6,t5,00000000230698C8

l230698B0:
	add	a6,a6,a3
	addi	t3,a4,-00000001
	bltu	a6,a3,00000000230698C8

l230698BC:
	bgeu	a6,t5,00000000230698C8

l230698C0:
	addi	t3,a4,-00000002
	add	a6,a6,a3

l230698C8:
	sub	a6,a6,t5
	and	a7,a6,t4
	srl	a6,a6,t4
	slli	a7,a7,00000010
	add	t4,a5,a6
	slli	a5,t1,00000010
	srli	a5,a5,00000010
	or	a5,a7,a5
	addi	a4,a6,+00000000
	bgeu	a5,t4,0000000023069908

l230698F0:
	add	a5,a5,a3
	addi	a4,a6,-00000001
	bltu	a5,a3,0000000023069908

l230698FC:
	bgeu	a5,t4,0000000023069908

l23069900:
	addi	a4,a6,-00000002
	add	a5,a5,a3

l23069908:
	slli	t3,t3,00000010
	sub	a5,a5,t4
	lui	t4,00000010
	or	a4,t3,a4
	addi	a6,t4,-00000001
	and	t1,a4,a6
	srli	a7,a4,00000010
	and	a6,a2,a6
	srli	a2,a2,00000010
	add	t3,t1,a6
	add	a6,a7,a6
	srli	a3,t3,00000010
	add	t1,t1,a2
	add	t1,t1,a6
	add	a3,a3,t1
	add	a7,a7,a2
	bgeu	a3,a6,0000000023069950

l2306994C:
	add	a7,a7,t4

l23069950:
	srli	a2,a3,00000010
	add	a7,a2,a7
	bltu	a5,a7,0000000023069984

l2306995C:
	bne	a5,a7,0000000023069650

l23069960:
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a3,a3,a5
	slli	a3,a3,00000010
	and	t3,t3,a5
	sll	a0,a0,a1
	add	a3,a3,t3
	addi	a1,zero,+00000000
	bgeu	a0,a3,0000000023069738

l23069984:
	addi	a4,a4,-00000001
	jal	zero,0000000023069650

l2306998C:
	addi	a1,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,0000000023069738

;; __umoddi3: 23069998
;;   Called from:
;;     23002E7E (in format_int)
__umoddi3 proc
	addi	a7,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,0000000023069BE0

l230699AC:
	auipc	a3,00000019
	addi	a3,a3,-000004FC
	bgeu	a1,a2,0000000023069A8C

l230699B8:
	lui	t1,00000010
	bgeu	a2,t1,0000000023069A78

l230699C0:
	addi	t1,zero,+000000FF
	bgeu	t1,a2,00000000230699CC

l230699C8:
	addi	a4,zero,+00000008

l230699CC:
	srl	t1,a2,a4
	add	a3,a3,t1
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	beq	t1,zero,00000000230699FC

l230699E8:
	sll	a1,a1,t1
	srl	t3,a0,t3
	sll	a7,a2,t1
	or	a6,t3,a1
	sll	a5,a0,t1

l230699FC:
	srli	a2,a7,00000010
	and	a4,a6,a2
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a3,a5,00000010
	srl	a6,a6,a2
	slli	a4,a4,00000010
	or	a3,a4,a3
	add	a6,a0,a6
	bgeu	a3,a6,0000000023069A34

l23069A24:
	add	a3,a3,a7
	bltu	a3,a7,0000000023069A34

l23069A2C:
	bgeu	a3,a6,0000000023069A34

l23069A30:
	add	a3,a3,a7

l23069A34:
	sub	a3,a3,a6
	and	a4,a3,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a3,a3,a2
	add	a3,a0,a3
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a3,0000000023069A68

l23069A58:
	add	a5,a5,a7
	bltu	a5,a7,0000000023069A68

l23069A60:
	bgeu	a5,a3,0000000023069A68

l23069A64:
	add	a5,a5,a7

l23069A68:
	sub	a5,a5,a3

l23069A6C:
	srl	a0,a5,t1
	addi	a1,zero,+00000000

l23069A74:
	jalr	zero,ra,+00000000

l23069A78:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a2,t1,00000000230699CC

l23069A84:
	addi	a4,zero,+00000018
	jal	zero,00000000230699CC

l23069A8C:
	bne	a2,zero,0000000023069A98

l23069A90:
	addi	a2,zero,+00000001
	srl	a7,a2,a7

l23069A98:
	lui	a2,00000010
	bgeu	a7,a2,0000000023069B40

l23069AA0:
	addi	a2,zero,+000000FF
	bgeu	a2,a7,0000000023069AAC

l23069AA8:
	addi	a4,zero,+00000008

l23069AAC:
	srl	a2,a7,a4
	add	a3,a3,a2
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	bne	t1,zero,0000000023069B54

l23069AC8:
	sub	a1,a1,a7

l23069ACC:
	srli	a4,a7,00000010
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a3,a1,a4
	srl	a1,a1,a4
	slli	a3,a3,00000010
	or	a3,a3,a2
	add	a1,a0,a1
	bgeu	a3,a1,0000000023069B04

l23069AF4:
	add	a3,a3,a7
	bltu	a3,a7,0000000023069B04

l23069AFC:
	bgeu	a3,a1,0000000023069B04

l23069B00:
	add	a3,a3,a7

l23069B04:
	sub	a1,a3,a1
	and	a3,a1,a4
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a4
	add	a1,a0,a1
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a1,0000000023069B38

l23069B28:
	add	a5,a5,a7
	bltu	a5,a7,0000000023069B38

l23069B30:
	bgeu	a5,a1,0000000023069B38

l23069B34:
	add	a5,a5,a7

l23069B38:
	sub	a5,a5,a1
	jal	zero,0000000023069A6C

l23069B40:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	a7,a2,0000000023069AAC

l23069B4C:
	addi	a4,zero,+00000018
	jal	zero,0000000023069AAC

l23069B54:
	sll	a7,a7,t1
	srl	a4,a1,t3
	sll	a5,a0,t1
	srl	t3,a0,t3
	srli	a0,a7,00000010
	and	a3,a4,a0
	sll	a1,a1,t1
	or	t3,t3,a1
	slli	a1,a7,00000010
	srli	a1,a1,00000010
	srli	a2,t3,00000010
	srl	a4,a4,a0
	slli	a3,a3,00000010
	or	a3,a3,a2
	add	a4,a1,a4
	bgeu	a3,a4,0000000023069BA4

l23069B94:
	add	a3,a3,a7
	bltu	a3,a7,0000000023069BA4

l23069B9C:
	bgeu	a3,a4,0000000023069BA4

l23069BA0:
	add	a3,a3,a7

l23069BA4:
	sub	a2,a3,a4
	and	a3,a2,a0
	slli	t3,t3,00000010
	srli	t3,t3,00000010
	srl	a2,a2,a0
	slli	a3,a3,00000010
	add	a2,a1,a2
	or	a1,a3,t3
	bgeu	a1,a2,0000000023069BD8

l23069BC8:
	add	a1,a1,a7
	bltu	a1,a7,0000000023069BD8

l23069BD0:
	bgeu	a1,a2,0000000023069BD8

l23069BD4:
	add	a1,a1,a7

l23069BD8:
	sub	a1,a1,a2
	jal	zero,0000000023069ACC

l23069BE0:
	bltu	a1,a3,0000000023069A74

l23069BE4:
	lui	a4,00000010
	bgeu	a3,a4,0000000023069C40

l23069BEC:
	addi	t4,zero,+000000FF
	sltu	a4,t4,a3
	slli	a4,a4,00000003

l23069BF8:
	srl	t1,a3,a4
	auipc	a7,00000019
	addi	a7,a7,-0000074C
	add	a7,a7,t1
	lbu	t4,a7,+00000000
	addi	t3,zero,+00000020
	add	t4,t4,a4
	sub	t3,t3,t4
	bne	t3,zero,0000000023069C54

l23069C1C:
	bltu	a3,a1,0000000023069C24

l23069C20:
	bltu	a0,a2,0000000023069C34

l23069C24:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l23069C34:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,0000000023069A74

l23069C40:
	lui	a7,00001000
	addi	a4,zero,+00000010
	bltu	a3,a7,0000000023069BF8

l23069C4C:
	addi	a4,zero,+00000018
	jal	zero,0000000023069BF8

l23069C54:
	srl	a4,a2,t4
	sll	a3,a3,t3
	or	a3,a4,a3
	srli	a6,a3,00000010
	srl	a4,a1,t4
	and	t1,a4,a6
	sll	a1,a1,t3
	srl	a5,a0,t4
	or	a5,a5,a1
	slli	a1,a3,00000010
	srli	a1,a1,00000010
	srli	a7,a5,00000010
	sll	a2,a2,t3
	sll	a0,a0,t3
	srl	a4,a4,a6
	slli	t1,t1,00000010
	or	a7,t1,a7
	add	t5,a1,a4
	addi	t1,a4,+00000000
	bgeu	a7,t5,0000000023069CBC

l23069CA4:
	add	a7,a7,a3
	addi	t1,a4,-00000001
	bltu	a7,a3,0000000023069CBC

l23069CB0:
	bgeu	a7,t5,0000000023069CBC

l23069CB4:
	addi	t1,a4,-00000002
	add	a7,a7,a3

l23069CBC:
	sub	a7,a7,t5
	and	t5,a7,a6
	srl	a7,a7,a6
	slli	t5,t5,00000010
	add	a6,a1,a7
	slli	a1,a5,00000010
	srli	a1,a1,00000010
	or	a1,t5,a1
	addi	a5,a7,+00000000
	bgeu	a1,a6,0000000023069CFC

l23069CE4:
	add	a1,a1,a3
	addi	a5,a7,-00000001
	bltu	a1,a3,0000000023069CFC

l23069CF0:
	bgeu	a1,a6,0000000023069CFC

l23069CF4:
	addi	a5,a7,-00000002
	add	a1,a1,a3

l23069CFC:
	slli	t1,t1,00000010
	lui	t5,00000010
	or	t1,t1,a5
	addi	a5,t5,-00000001
	and	a7,t1,a5
	sub	a1,a1,a6
	srli	t1,t1,00000010
	srli	a6,a2,00000010
	and	a5,a2,a5
	add	a4,a7,a5
	add	a5,t1,a5
	add	a7,a7,a6
	add	t1,t1,a6
	add	a7,a7,a5
	srli	a6,a4,00000010
	add	a6,a6,a7
	bgeu	a6,a5,0000000023069D44

l23069D40:
	add	t1,t1,t5

l23069D44:
	srli	a5,a6,00000010
	add	t1,a5,t1
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t1,0000000023069D70

l23069D68:
	bne	a1,t1,0000000023069D84

l23069D6C:
	bgeu	a0,a4,0000000023069D84

l23069D70:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t1,t1,a4
	addi	a4,a2,+00000000

l23069D84:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t1
	sub	a1,a1,a0
	sll	a5,a1,t4
	srl	a4,a4,t3
	or	a0,a5,a4
	srl	a1,a1,t3
	jal	zero,0000000023069A74

;; __adddf3: 23069DA8
;;   Called from:
;;     23002FBA (in cvt)
;;     23056698 (in pa_adapt)
;;     23056A2A (in trpc_get_power_idx)
;;     2305731E (in rfc_init)
;;     2305735C (in rfc_init)
;;     23057398 (in rfc_init)
;;     230578FC (in rfc_config_channel)
;;     23059E68 (in rf_pri_get_vco_freq_cw)
;;     23059EB2 (in rf_pri_get_vco_idac_cw)
;;     230689A4 (in floor)
;;     23068A18 (in floor)
;;     23068A5C (in floor)
;;     23068A98 (in floor)
__adddf3 proc
	addi	sp,sp,-00000020
	sw	ra,sp,+0000001C
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	csrrs	s1,frm,sp
	lui	a4,00000100
	addi	a4,a4,-00000001
	and	t3,a4,a1
	srli	a5,a0,0000001D
	srli	s3,a1,00000014
	slli	t1,a0,00000003
	and	a0,a4,a3
	srli	a4,a3,00000014
	slli	t3,t3,00000003
	andi	s3,s3,+000007FF
	andi	a4,a4,+000007FF
	srli	s2,a1,0000001F
	slli	a0,a0,00000003
	or	a1,a5,t3
	srli	t3,a3,0000001F
	srli	a5,a2,0000001D
	sub	a3,s3,a4
	or	a5,a5,a0
	slli	a7,a2,00000003
	addi	a6,a3,+00000000
	bne	s2,t3,000000002306A234

l23069E1C:
	bge	zero,a3,0000000023069F84

l23069E20:
	bne	a4,zero,0000000023069E88

l23069E24:
	or	a3,a5,a7
	bne	a3,zero,0000000023069E40

l23069E2C:
	addi	a5,zero,+000007FF
	beq	a6,a5,0000000023069E68

l23069E34:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306A194

l23069E40:
	addi	a3,a6,-00000001
	bne	a3,zero,0000000023069E60

l23069E48:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	t1,a7,t1
	add	a5,a5,t1

l23069E58:
	addi	a6,zero,+00000001
	jal	zero,0000000023069F08

l23069E60:
	addi	a2,zero,+000007FF
	bne	a6,a2,0000000023069EC0

l23069E68:
	or	a7,a1,t1
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306A848

l23069E74:
	slli	a5,a1,00000009
	blt	a5,zero,000000002306A758

l23069E7C:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,0000000023069EAC

l23069E88:
	addi	a4,zero,+000007FF
	bne	s3,a4,0000000023069EB8

l23069E90:
	or	a7,a1,t1
	beq	a7,zero,000000002306A768

l23069E98:
	slli	a5,a1,00000009
	blt	a5,zero,000000002306A770

l23069EA0:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+000007FF

l23069EAC:
	addi	s3,zero,+00000000

l23069EB0:
	addi	a4,zero,+00000010
	jal	zero,0000000023069FB8

l23069EB8:
	lui	a4,00000800
	or	a5,a5,a4

l23069EC0:
	addi	a4,zero,+00000038
	blt	a4,a3,0000000023069F78

l23069EC8:
	addi	a4,zero,+0000001F
	blt	a4,a3,0000000023069F44

l23069ED0:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l23069EF4:
	add	a7,a7,t1
	add	a3,a3,a1
	sltu	a5,a7,t1
	add	a5,a3,a5
	addi	a6,s3,+00000000

l23069F08:
	slli	a4,a5,00000008
	bge	a4,zero,000000002306A6C4

l23069F10:
	addi	a6,a6,+00000001
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306A204

l23069F1C:
	lui	a0,000FF800
	addi	a0,a0,-00000001
	and	a0,a5,a0
	srli	a4,a7,00000001
	andi	a7,a7,+00000001
	slli	a5,a0,0000001F
	or	a7,a4,a7
	or	a7,a5,a7
	srli	a5,a0,00000001
	jal	zero,000000002306A194

l23069F44:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,0000000023069F64

l23069F58:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l23069F64:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l23069F70:
	addi	a3,zero,+00000000
	jal	zero,0000000023069EF4

l23069F78:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,0000000023069F70

l23069F84:
	beq	a3,zero,000000002306A0BC

l23069F88:
	sub	a6,a4,s3
	bne	s3,zero,000000002306A04C

l23069F90:
	or	a3,a1,t1
	bne	a3,zero,0000000023069FD4

l23069F98:
	addi	a4,zero,+000007FF
	bne	a6,a4,000000002306A6C4

l23069FA0:
	or	a4,a5,a7
	beq	a4,zero,000000002306A780

l23069FA8:
	lui	a4,00000400
	and	a4,a5,a4
	sltiu	a4,a4,+00000001
	slli	a4,a4,00000004

l23069FB8:
	andi	a3,a7,+00000007
	bne	a3,zero,000000002306A1D4

l23069FC0:
	beq	s3,zero,000000002306A848

l23069FC4:
	andi	a3,a4,+00000001
	beq	a3,zero,000000002306A848

l23069FCC:
	ori	a4,a4,+00000002
	jal	zero,000000002306A848

l23069FD4:
	addi	a3,a6,-00000001
	bne	a3,zero,0000000023069FF4

l23069FDC:
	add	t1,t1,a7
	sltu	a7,t1,a7
	add	a5,a1,a5
	add	a5,a5,a7
	addi	a7,t1,+00000000
	jal	zero,0000000023069E58

l23069FF4:
	addi	a2,zero,+000007FF
	beq	a6,a2,0000000023069FA0

l23069FFC:
	addi	a2,zero,+00000038
	blt	a2,a3,000000002306A0B0

l2306A004:
	addi	a2,zero,+0000001F
	blt	a2,a3,000000002306A07C

l2306A00C:
	addi	a0,zero,+00000020
	sub	a0,a0,a3
	srl	s0,t1,a3
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,s0
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,a3

l2306A030:
	add	t1,t1,a7
	add	a3,a3,a5
	sltu	a5,t1,a7
	add	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	jal	zero,0000000023069F08

l2306A04C:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306A06C

l2306A054:
	or	a4,a5,a7
	beq	a4,zero,000000002306A724

l2306A05C:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF

l2306A064:
	addi	s3,zero,+00000000
	jal	zero,000000002306A39C

l2306A06C:
	lui	a3,00000800
	or	a1,a1,a3
	addi	a3,a6,+00000000
	jal	zero,0000000023069FFC

l2306A07C:
	addi	a2,a3,-00000020
	addi	a6,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	a3,a6,000000002306A09C

l2306A090:
	addi	a0,zero,+00000040
	sub	a3,a0,a3
	sll	a0,a1,a3

l2306A09C:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l2306A0A8:
	addi	a3,zero,+00000000
	jal	zero,000000002306A030

l2306A0B0:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,000000002306A0A8

l2306A0BC:
	addi	a6,s3,+00000001
	andi	a3,a6,+000007FE
	bne	a3,zero,000000002306A16C

l2306A0C8:
	or	a3,a1,t1
	bne	s3,zero,000000002306A10C

l2306A0D0:
	beq	a3,zero,000000002306A6C8

l2306A0D4:
	or	a4,a5,a7
	beq	a4,zero,000000002306A498

l2306A0DC:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	a3,a7,t1
	add	a1,a5,a3
	slli	a5,a1,00000008
	bge	a5,zero,000000002306A6CC

l2306A0F4:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,a1,a5
	addi	a4,zero,+00000000
	addi	a6,zero,+00000001
	jal	zero,0000000023069FB8

l2306A10C:
	addi	a2,zero,+000007FF
	bne	s3,a2,000000002306A144

l2306A114:
	beq	a3,zero,000000002306A8EC

l2306A118:
	lui	a6,00000400
	and	a6,a1,a6
	sltiu	a6,a6,+00000001
	slli	a6,a6,00000004
	bne	a4,s3,000000002306A150

l2306A12C:
	or	a4,a5,a7
	beq	a4,zero,000000002306A8E4

l2306A134:
	slli	a4,a5,00000009
	blt	a4,zero,000000002306A14C

l2306A13C:
	addi	a6,zero,+00000010
	jal	zero,000000002306A14C

l2306A144:
	addi	a6,zero,+00000000
	beq	a4,a2,000000002306A12C

l2306A14C:
	beq	a3,zero,000000002306A160

l2306A150:
	or	a5,a5,a7
	bne	a5,zero,000000002306A738

l2306A158:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306A160:
	addi	s3,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306A7B8

l2306A16C:
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306A19C

l2306A174:
	add	a7,t1,a7
	add	a3,a1,a5
	sltu	a5,a7,t1
	add	t1,a3,a5
	slli	a5,t1,0000001F
	srli	a7,a7,00000001
	or	a7,a5,a7
	srli	a5,t1,00000001

l2306A194:
	addi	s3,zero,+00000000
	jal	zero,000000002306A3A0

l2306A19C:
	beq	s1,zero,000000002306A1AC

l2306A1A0:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306A1B4

l2306A1A8:
	bne	s2,zero,000000002306A1C0

l2306A1AC:
	addi	a6,zero,+000007FF
	jal	zero,000000002306A214

l2306A1B4:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306A1C0

l2306A1BC:
	bne	s2,zero,000000002306A1AC

l2306A1C0:
	addi	s3,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE

l2306A1D0:
	addi	a4,zero,+00000005

l2306A1D4:
	addi	a3,zero,+00000002
	ori	a4,a4,+00000001
	beq	s1,a3,000000002306A7E4

l2306A1E0:
	addi	a3,zero,+00000003
	beq	s1,a3,000000002306A7CC

l2306A1E8:
	bne	s1,zero,000000002306A1FC

l2306A1EC:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	addi	a1,a7,+00000004
	bne	a3,a2,000000002306A7D4

l2306A1FC:
	bne	s3,zero,0000000023069FCC

l2306A200:
	jal	zero,000000002306A848

l2306A204:
	beq	s1,zero,000000002306A214

l2306A208:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306A224

l2306A210:
	bne	s2,zero,000000002306A744

l2306A214:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a4,zero,+00000005
	jal	zero,000000002306A848

l2306A224:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306A744

l2306A22C:
	bne	s2,zero,000000002306A214

l2306A230:
	jal	zero,000000002306A1C0

l2306A234:
	bge	zero,a3,000000002306A328

l2306A238:
	bne	a4,zero,000000002306A2D4

l2306A23C:
	or	a3,a5,a7
	beq	a3,zero,0000000023069E2C

l2306A244:
	addi	a3,a6,-00000001
	bne	a3,zero,000000002306A264

l2306A24C:
	sub	a7,t1,a7
	sub	a5,a1,a5
	sltu	t1,t1,a7
	sub	a5,a5,t1

l2306A25C:
	addi	a6,zero,+00000001
	jal	zero,000000002306A2B4

l2306A264:
	addi	a2,zero,+000007FF
	beq	a6,a2,0000000023069E68

l2306A26C:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306A31C

l2306A274:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306A2E8

l2306A27C:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l2306A2A0:
	sub	a7,t1,a7
	sub	a3,a1,a3
	sltu	a5,t1,a7
	sub	a5,a3,a5
	addi	a6,s3,+00000000

l2306A2B4:
	slli	a4,a5,00000008
	bge	a4,zero,000000002306A6C4

l2306A2BC:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,a7,+00000000
	addi	s3,a6,+00000000
	jal	zero,000000002306A5EC

l2306A2D4:
	addi	a4,zero,+000007FF
	beq	s3,a4,0000000023069E90

l2306A2DC:
	lui	a4,00000800
	or	a5,a5,a4
	jal	zero,000000002306A26C

l2306A2E8:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,000000002306A308

l2306A2FC:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l2306A308:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306A314:
	addi	a3,zero,+00000000
	jal	zero,000000002306A2A0

l2306A31C:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,000000002306A314

l2306A328:
	beq	a3,zero,000000002306A468

l2306A32C:
	sub	a6,a4,s3
	bne	s3,zero,000000002306A3A8

l2306A334:
	or	a3,a1,t1
	bne	a3,zero,000000002306A360

l2306A33C:
	addi	a4,zero,+000007FF
	addi	s2,t3,+00000000
	bne	a6,a4,000000002306A6C4

l2306A348:
	or	a4,a5,a7
	beq	a4,zero,000000002306A780

l2306A350:
	slli	a3,a5,00000009
	addi	a4,zero,+00000000
	blt	a3,zero,0000000023069FB8

l2306A35C:
	jal	zero,0000000023069EB0

l2306A360:
	addi	s0,a6,-00000001
	bne	s0,zero,000000002306A384

l2306A368:
	sub	t1,a7,t1
	sltu	a7,a7,t1
	sub	a5,a5,a1
	sub	a5,a5,a7
	addi	s2,t3,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306A25C

l2306A384:
	addi	a3,zero,+000007FF
	bne	a6,a3,000000002306A3D4

l2306A38C:
	or	a4,a5,a7
	beq	a4,zero,000000002306A78C

l2306A394:
	slli	a4,a5,00000009
	addi	s2,t3,+00000000

l2306A39C:
	bge	a4,zero,0000000023069EB0

l2306A3A0:
	addi	a4,zero,+00000000
	jal	zero,0000000023069FB8

l2306A3A8:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306A3C8

l2306A3B0:
	or	a4,a5,a7
	beq	a4,zero,000000002306A79C

l2306A3B8:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF
	addi	s2,t3,+00000000
	jal	zero,000000002306A064

l2306A3C8:
	lui	a3,00000800
	or	a1,a1,a3
	addi	s0,a6,+00000000

l2306A3D4:
	addi	a3,zero,+00000038
	blt	a3,s0,000000002306A45C

l2306A3DC:
	addi	a3,zero,+0000001F
	blt	a3,s0,000000002306A428

l2306A3E4:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,t1,s0
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,a3
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,s0

l2306A408:
	sub	t1,a7,t1
	sub	a3,a5,a3
	sltu	a5,a7,t1
	sub	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	addi	s2,t3,+00000000
	jal	zero,000000002306A2B4

l2306A428:
	addi	a2,s0,-00000020
	addi	a3,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	s0,a3,000000002306A448

l2306A43C:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,a1,s0

l2306A448:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l2306A454:
	addi	a3,zero,+00000000
	jal	zero,000000002306A408

l2306A45C:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,000000002306A454

l2306A468:
	addi	a3,s3,+00000001
	andi	a3,a3,+000007FE
	bne	a3,zero,000000002306A5C0

l2306A474:
	or	a0,a1,t1
	or	a2,a5,a7
	bne	s3,zero,000000002306A554

l2306A480:
	bne	a0,zero,000000002306A508

l2306A484:
	bne	a2,zero,000000002306A6D4

l2306A488:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001
	addi	a1,zero,+00000000
	addi	t1,zero,+00000000

l2306A498:
	or	a7,t1,a1
	beq	a7,zero,000000002306A7C0

l2306A4A0:
	srli	a5,t1,0000001F
	slli	s3,a1,00000001
	add	s3,s3,a5
	slli	a5,t1,00000001
	andi	a3,a5,+00000007
	addi	a4,zero,+00000000
	beq	a3,zero,000000002306A4EC

l2306A4BC:
	addi	a4,zero,+00000002
	beq	s1,a4,000000002306A708

l2306A4C4:
	addi	a4,zero,+00000003
	beq	s1,a4,000000002306A6EC

l2306A4CC:
	addi	a4,zero,+00000001
	bne	s1,zero,000000002306A4EC

l2306A4D4:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306A4EC

l2306A4E0:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	s3,s3,a5

l2306A4EC:
	srli	s3,s3,00000018
	xori	s3,s3,+00000001
	andi	s3,s3,+00000001
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	jal	zero,0000000023069FB8

l2306A508:
	beq	a2,zero,000000002306A498

l2306A50C:
	sub	a3,t1,a7
	sltu	a2,t1,a3
	sub	a4,a1,a5
	sub	a4,a4,a2
	slli	a2,a4,00000008
	bge	a2,zero,000000002306A53C

l2306A524:
	sub	t1,a7,t1
	sub	a5,a5,a1
	sltu	a3,a7,t1
	sub	a1,a5,a3

l2306A534:
	addi	s2,t3,+00000000
	jal	zero,000000002306A498

l2306A53C:
	or	t1,a3,a4
	bne	t1,zero,000000002306A6E0

l2306A544:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001

l2306A54C:
	addi	a1,zero,+00000000
	jal	zero,000000002306A498

l2306A554:
	addi	a3,zero,+000007FF
	bne	s3,a3,000000002306A57C

l2306A55C:
	beq	a0,zero,000000002306A824

l2306A560:
	lui	a3,00000400
	and	a3,a1,a3
	sltiu	a3,a3,+00000001
	slli	a3,a3,00000004
	bne	a4,s3,000000002306A830

l2306A574:
	addi	a4,a3,+00000000
	jal	zero,000000002306A584

l2306A57C:
	bne	a4,a3,000000002306A5B8

l2306A580:
	addi	a4,zero,+00000000

l2306A584:
	beq	a2,zero,000000002306A594

l2306A588:
	slli	a3,a5,00000009
	blt	a3,zero,000000002306A594

l2306A590:
	addi	a4,zero,+00000010

l2306A594:
	bne	a0,zero,000000002306A834

l2306A598:
	addi	s2,t3,+00000000
	bne	a2,zero,000000002306A7B4

l2306A5A0:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a6,zero,+000007FF
	addi	a4,zero,+00000010
	jal	zero,000000002306A848

l2306A5B8:
	addi	a4,zero,+00000000
	jal	zero,000000002306A594

l2306A5C0:
	sub	s4,t1,a7
	sub	s0,a1,a5
	sltu	a3,t1,s4
	sub	s0,s0,a3
	slli	a4,s0,00000008
	bge	a4,zero,000000002306A658

l2306A5D8:
	sub	s4,a7,t1
	sub	a3,a5,a1
	sltu	a5,a7,s4
	sub	s0,a3,a5
	addi	s2,t3,+00000000

l2306A5EC:
	beq	s0,zero,000000002306A664

l2306A5F0:
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40

l2306A5F8:
	addi	a6,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a6,000000002306A674

l2306A604:
	addi	a5,zero,+00000020
	sub	a5,a5,a6
	sll	s0,s0,a6
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	a7,s4,a6

l2306A61C:
	blt	a6,s3,000000002306A6B4

l2306A620:
	sub	a6,a6,s3
	addi	a3,a6,+00000001
	addi	a5,zero,+0000001F
	blt	a5,a3,000000002306A684

l2306A630:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	sll	t1,s0,a2
	srl	a5,a7,a3
	sll	a2,a7,a2
	or	a5,t1,a5
	sltu	a2,zero,a2
	or	t1,a5,a2
	srl	a1,s0,a3
	jal	zero,000000002306A498

l2306A658:
	or	t1,s4,s0
	bne	t1,zero,000000002306A5EC

l2306A660:
	jal	zero,000000002306A544

l2306A664:
	addi	a0,s4,+00000000
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306A5F8

l2306A674:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	a7,zero,+00000000
	jal	zero,000000002306A61C

l2306A684:
	addi	a6,a6,-0000001F
	addi	a5,zero,+00000020
	srl	a6,s0,a6
	addi	a4,zero,+00000000
	beq	a3,a5,000000002306A6A4

l2306A698:
	addi	a4,zero,+00000040
	sub	a4,a4,a3
	sll	a4,s0,a4

l2306A6A4:
	or	a5,a7,a4
	sltu	a5,zero,a5
	or	t1,a6,a5
	jal	zero,000000002306A54C

l2306A6B4:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a6,s3,a6
	and	a5,s0,a5

l2306A6C4:
	bne	a6,zero,000000002306A194

l2306A6C8:
	addi	a1,a5,+00000000

l2306A6CC:
	addi	t1,a7,+00000000
	jal	zero,000000002306A498

l2306A6D4:
	addi	a1,a5,+00000000
	addi	t1,a7,+00000000
	jal	zero,000000002306A534

l2306A6E0:
	addi	a1,a4,+00000000
	addi	t1,a3,+00000000
	jal	zero,000000002306A498

l2306A6EC:
	addi	a4,s2,+00000000
	bne	s2,zero,000000002306A4EC

l2306A6F4:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,zero,+00000001
	jal	zero,000000002306A4EC

l2306A708:
	addi	a4,zero,+00000001
	beq	s2,zero,000000002306A4EC

l2306A710:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,s2,+00000000
	jal	zero,000000002306A4EC

l2306A724:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l2306A72C:
	addi	a6,zero,+000007FF

l2306A730:
	addi	a4,zero,+00000000
	jal	zero,000000002306A848

l2306A738:
	addi	s2,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306A83C

l2306A744:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	addi	s3,zero,+00000000
	jal	zero,000000002306A1D0

l2306A758:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	s3,zero,+00000000
	jal	zero,0000000023069FB8

l2306A768:
	addi	a5,zero,+00000000
	jal	zero,000000002306A72C

l2306A770:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306A778:
	addi	a6,zero,+000007FF
	jal	zero,000000002306A194

l2306A780:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	jal	zero,000000002306A730

l2306A78C:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l2306A794:
	addi	s2,t3,+00000000
	jal	zero,000000002306A730

l2306A79C:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF
	jal	zero,000000002306A794

l2306A7AC:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306A7B4:
	addi	s3,zero,+00000000

l2306A7B8:
	addi	a6,zero,+000007FF
	jal	zero,0000000023069FB8

l2306A7C0:
	addi	a5,zero,+00000000
	addi	a6,zero,+00000000
	jal	zero,000000002306A730

l2306A7CC:
	bne	s2,zero,000000002306A1FC

l2306A7D0:
	addi	a1,a7,+00000008

l2306A7D4:
	sltu	a7,a1,a7
	add	a5,a5,a7
	addi	a7,a1,+00000000
	jal	zero,000000002306A1FC

l2306A7E4:
	beq	s2,zero,000000002306A1FC

l2306A7E8:
	jal	zero,000000002306A7D0

l2306A7EC:
	addi	a7,zero,+00000000
	beq	s1,zero,000000002306A818

l2306A7F4:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306A80C

l2306A7FC:
	beq	s2,zero,000000002306A818

l2306A800:
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	jal	zero,000000002306A818

l2306A80C:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306A800

l2306A814:
	beq	s2,zero,000000002306A800

l2306A818:
	ori	a4,a4,+00000005
	addi	a5,a7,+00000000
	jal	zero,000000002306A868

l2306A824:
	beq	a4,s3,000000002306A580

l2306A828:
	addi	a4,zero,+00000000
	jal	zero,000000002306A598

l2306A830:
	addi	a4,a3,+00000000

l2306A834:
	beq	a2,zero,000000002306A7AC

l2306A838:
	addi	s2,zero,+00000000

l2306A83C:
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF

l2306A848:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306A868

l2306A850:
	addi	a6,a6,+00000001
	addi	a3,zero,+000007FF
	beq	a6,a3,000000002306A7EC

l2306A85C:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l2306A868:
	slli	a1,a5,0000001D
	srli	a7,a7,00000003
	addi	a3,zero,+000007FF
	or	a7,a1,a7
	srli	a5,a5,00000003
	bne	a6,a3,000000002306A898

l2306A880:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306A898

l2306A88C:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l2306A898:
	slli	a5,a5,0000000C
	andi	a6,a6,+000007FF
	slli	a6,a6,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a6
	or	a3,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a3,+00000000
	beq	a4,zero,000000002306A8C4

l2306A8C0:
	csrrs	zero,fflags,ra

l2306A8C4:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l2306A8E4:
	beq	a3,zero,000000002306A160

l2306A8E8:
	jal	zero,000000002306A158

l2306A8EC:
	bne	a4,s3,000000002306A778

l2306A8F0:
	addi	a6,zero,+00000000
	jal	zero,000000002306A12C

;; __divdf3: 2306A8F8
;;   Called from:
;;     23002FA8 (in cvt)
;;     23045944 (in TSEN_Get_Temp)
;;     2305658E (in pa_input)
;;     230578DC (in rfc_config_channel)
__divdf3 proc
	addi	sp,sp,-00000030
	sw	s0,sp,+00000028
	sw	s5,sp,+00000014
	sw	s9,sp,+00000004
	sw	ra,sp,+0000002C
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	sw	s4,sp,+00000018
	sw	s6,sp,+00000010
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	addi	s0,a0,+00000000
	addi	s9,a2,+00000000
	addi	s5,a3,+00000000
	csrrs	s2,frm,sp
	srli	a6,a1,00000014
	slli	s7,a1,0000000C
	andi	a6,a6,+000007FF
	srli	s7,s7,0000000C
	srli	s4,a1,0000001F
	beq	a6,zero,000000002306A980

l2306A950:
	addi	a5,zero,+000007FF
	beq	a6,a5,000000002306A9E4

l2306A958:
	srli	a4,a0,0000001D
	slli	s7,s7,00000003
	or	s7,a4,s7
	lui	a5,00000800
	or	s7,s7,a5
	slli	s3,a0,00000003
	addi	s6,a6,-000003FF

l2306A974:
	addi	s8,zero,+00000000

l2306A978:
	addi	s1,zero,+00000000
	jal	zero,000000002306AA04

l2306A980:
	or	a5,s7,a0
	beq	a5,zero,000000002306AA80

l2306A988:
	beq	s7,zero,000000002306A9C8

l2306A98C:
	addi	a0,s7,+00000000
	jal	ra,0000000023068C40

l2306A994:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306A9D4

l2306A9A0:
	addi	a4,zero,+0000001D
	addi	s3,a0,-00000008
	sub	a4,a4,a3
	sll	s7,s7,s3
	srl	a4,s0,a4
	or	s7,a4,s7
	sll	s3,s0,s3

l2306A9BC:
	addi	a6,zero,-000003F3
	sub	s6,a6,a0
	jal	zero,000000002306A974

l2306A9C8:
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306A994

l2306A9D4:
	addi	s7,a0,-00000028
	sll	s7,s0,s7
	addi	s3,zero,+00000000
	jal	zero,000000002306A9BC

l2306A9E4:
	or	s0,s7,a0
	beq	s0,zero,000000002306AA94

l2306A9EC:
	slli	a5,s7,0000000C
	addi	s3,a0,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,000000002306A978

l2306AA04:
	srli	a0,s5,00000014
	slli	s0,s5,0000000C
	andi	a6,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s5,s5,0000001F
	beq	a6,zero,000000002306AAA8

l2306AA20:
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306AB10

l2306AA28:
	srli	a5,s9,0000001D
	slli	a0,s0,00000003
	or	a0,a5,a0
	lui	s0,00000800
	or	s0,a0,s0
	slli	a5,s9,00000003
	addi	a0,a6,-000003FF

l2306AA44:
	addi	a4,zero,+00000000

l2306AA48:
	slli	a3,s8,00000002
	or	a3,a3,a4
	addi	a3,a3,-00000001
	addi	a1,zero,+0000000E
	xor	a2,s4,s5
	sub	a6,s6,a0
	bltu	a1,a3,000000002306AB60

l2306AA64:
	auipc	a1,00000018
	addi	a1,a1,-0000062C
	slli	a3,a3,00000002
	add	a3,a3,a1
	lw	a3,a3,+00000000
	add	a3,a3,a1
	jalr	zero,a3,+00000000

l2306AA80:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,000000002306A978

l2306AA94:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,000000002306A978

l2306AAA8:
	or	a5,s0,s9
	beq	a5,zero,000000002306AB30

l2306AAB0:
	beq	s0,zero,000000002306AAF0

l2306AAB4:
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40

l2306AABC:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306AB00

l2306AAC8:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l2306AAE4:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,000000002306AA44

l2306AAF0:
	addi	a0,s9,+00000000
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306AABC

l2306AB00:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,000000002306AAE4

l2306AB10:
	or	a2,s0,s9
	beq	a2,zero,000000002306AB44

l2306AB18:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,000000002306AB58

l2306AB24:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,000000002306AA48

l2306AB30:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306AA48

l2306AB44:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,000000002306AA48

l2306AB58:
	addi	a4,zero,+00000003
	jal	zero,000000002306AA48

l2306AB60:
	bltu	s0,s7,000000002306AB6C

l2306AB64:
	bne	s7,s0,000000002306AE50

l2306AB68:
	bltu	s3,a5,000000002306AE50

l2306AB6C:
	slli	a1,s7,0000001F
	srli	a4,s3,00000001
	slli	a3,s3,0000001F
	srli	s7,s7,00000001
	or	s3,a1,a4

l2306AB80:
	slli	a0,s0,00000008
	srli	s0,a5,00000018
	or	a0,s0,a0
	srli	t5,a0,00000010
	srl	t1,s7,t5
	slli	t4,a0,00000010
	srli	t4,t4,00000010
	slli	a1,a5,00000008
	srli	a5,s3,00000010
	and	s7,s7,t5
	addi	a7,t1,+00000000
	add	a4,t4,t1
	slli	s7,s7,00000010
	or	a5,a5,s7
	bgeu	a5,a4,000000002306ABD4

l2306ABBC:
	add	a5,a5,a0
	addi	a7,t1,-00000001
	bltu	a5,a0,000000002306ABD4

l2306ABC8:
	bgeu	a5,a4,000000002306ABD4

l2306ABCC:
	addi	a7,t1,-00000002
	add	a5,a5,a0

l2306ABD4:
	sub	a5,a5,a4
	srl	t3,a5,t5
	slli	a4,s3,00000010
	srli	a4,a4,00000010
	and	a5,a5,t5
	addi	s3,t3,+00000000
	add	t1,t4,t3
	slli	a5,a5,00000010
	or	a4,a4,a5
	bgeu	a4,t1,000000002306AC14

l2306ABFC:
	add	a4,a4,a0
	addi	s3,t3,-00000001
	bltu	a4,a0,000000002306AC14

l2306AC08:
	bgeu	a4,t1,000000002306AC14

l2306AC0C:
	addi	s3,t3,-00000002
	add	a4,a4,a0

l2306AC14:
	slli	a7,a7,00000010
	or	s3,a7,s3
	lui	a7,00000010
	addi	t3,a7,-00000001
	srli	t0,s3,00000010
	srli	t6,a1,00000010
	sub	a4,a4,t1
	and	t1,s3,t3
	and	t3,a1,t3
	add	a5,t3,t1
	add	s0,t0,t3
	add	t1,t6,t1
	add	t2,t1,s0
	srli	t1,a5,00000010
	add	t1,t1,t2
	add	t0,t0,t6
	bgeu	t1,s0,000000002306AC5C

l2306AC58:
	add	t0,t0,a7

l2306AC5C:
	lui	t2,00000010
	srli	a7,t1,00000010
	addi	t2,t2,-00000001
	add	t0,a7,t0
	and	a7,t1,t2
	slli	a7,a7,00000010
	and	a5,a5,t2
	add	a7,a7,a5
	bltu	a4,t0,000000002306AC8C

l2306AC80:
	addi	s0,s3,+00000000
	bne	a4,t0,000000002306ACCC

l2306AC88:
	bgeu	a3,a7,000000002306ACCC

l2306AC8C:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	add	a4,a4,a5
	addi	s0,s3,-00000001
	bltu	a0,a4,000000002306ACAC

l2306ACA4:
	bne	a0,a4,000000002306ACCC

l2306ACA8:
	bltu	a3,a1,000000002306ACCC

l2306ACAC:
	bltu	a4,t0,000000002306ACB8

l2306ACB0:
	bne	t0,a4,000000002306ACCC

l2306ACB4:
	bgeu	a3,a7,000000002306ACCC

l2306ACB8:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	addi	s0,s3,-00000002
	add	a4,a4,a5

l2306ACCC:
	sub	a7,a3,a7
	sub	a4,a4,t0
	sltu	a3,a3,a7
	sub	a4,a4,a3
	addi	a5,zero,-00000001
	beq	a0,a4,000000002306AE08

l2306ACE4:
	srl	t0,a4,t5
	srli	a5,a7,00000010
	and	a4,a4,t5
	addi	a3,t0,+00000000
	add	t1,t4,t0
	slli	a4,a4,00000010
	or	a4,a5,a4
	bgeu	a4,t1,000000002306AD1C

l2306AD04:
	add	a4,a4,a0
	addi	a3,t0,-00000001
	bltu	a4,a0,000000002306AD1C

l2306AD10:
	bgeu	a4,t1,000000002306AD1C

l2306AD14:
	addi	a3,t0,-00000002
	add	a4,a4,a0

l2306AD1C:
	sub	a4,a4,t1
	srl	t1,a4,t5
	slli	a5,a7,00000010
	srli	a5,a5,00000010
	and	a4,a4,t5
	add	t4,t4,t1
	slli	a4,a4,00000010
	or	a4,a5,a4
	addi	a5,t1,+00000000
	bgeu	a4,t4,000000002306AD5C

l2306AD44:
	add	a4,a4,a0
	addi	a5,t1,-00000001
	bltu	a4,a0,000000002306AD5C

l2306AD50:
	bgeu	a4,t4,000000002306AD5C

l2306AD54:
	addi	a5,t1,-00000002
	add	a4,a4,a0

l2306AD5C:
	slli	a3,a3,00000010
	or	a3,a3,a5
	slli	a5,a3,00000010
	srli	a5,a5,00000010
	srli	t1,a3,00000010
	add	t5,a5,t3
	sub	a4,a4,t4
	add	t3,t1,t3
	add	t4,t6,t1
	add	t6,t6,a5
	srli	a5,t5,00000010
	add	t6,t6,t3
	add	a5,a5,t6
	bgeu	a5,t3,000000002306AD9C

l2306AD94:
	lui	a7,00000010
	add	t4,t4,a7

l2306AD9C:
	lui	t3,00000010
	addi	t3,t3,-00000001
	srli	t1,a5,00000010
	and	a7,a5,t3
	slli	a7,a7,00000010
	and	t5,t5,t3
	add	t1,t1,t4
	add	a7,a7,t5
	bltu	a4,t1,000000002306ADCC

l2306ADC0:
	bne	a4,t1,000000002306B19C

l2306ADC4:
	addi	a5,a3,+00000000
	beq	a7,zero,000000002306AE08

l2306ADCC:
	add	a4,a0,a4
	addi	a5,a3,-00000001
	bltu	a4,a0,000000002306ADFC

l2306ADD8:
	bltu	a4,t1,000000002306ADE4

l2306ADDC:
	bne	a4,t1,000000002306B198

l2306ADE0:
	bgeu	a1,a7,000000002306AE00

l2306ADE4:
	addi	a5,a3,-00000002
	slli	a3,a1,00000001
	sltu	a1,a3,a1
	add	a0,a1,a0
	add	a4,a4,a0
	addi	a1,a3,+00000000

l2306ADFC:
	bne	a4,t1,000000002306AE04

l2306AE00:
	beq	a1,a7,000000002306AE08

l2306AE04:
	ori	a5,a5,+00000001

l2306AE08:
	addi	a1,a6,+000003FF
	bge	zero,a1,000000002306AFA4

l2306AE10:
	andi	a4,a5,+00000007
	beq	a4,zero,000000002306AED0

l2306AE18:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306AECC

l2306AE24:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306AEC0

l2306AE2C:
	bne	s2,zero,000000002306AED0

l2306AE30:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,000000002306AED0

l2306AE3C:
	addi	a4,a5,+00000004

l2306AE40:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,000000002306AED0

l2306AE50:
	addi	a6,a6,-00000001
	addi	a3,zero,+00000000
	jal	zero,000000002306AB80
2306AE5C                                     13 06 0A 00             ....
2306AE60 13 84 0B 00 93 87 09 00 13 07 0C 00 93 06 20 00 .............. .
2306AE70 63 06 D7 02 93 06 30 00 63 06 D7 30 93 06 10 00 c.....0.c..0....
2306AE80 E3 14 D7 F8 13 05 00 00 93 07 00 00 6F 00 C0 2C ............o..,
2306AE90 13 86 0A 00 6F F0 9F FD 93 E4 84 00 13 05 00 00 ....o...........
2306AEA0 93 07 00 00 13 07 F0 7F 6F 00 C0 05 37 04 08 00 ........o...7...
2306AEB0 93 07 00 00 13 06 00 00 13 07 30 00 6F F0 1F FB ..........0.o...

l2306AEC0:
	bne	a2,zero,000000002306AED0

l2306AEC4:
	addi	a4,a5,+00000008
	jal	zero,000000002306AE40

l2306AECC:
	bne	a2,zero,000000002306AEC4

l2306AED0:
	slli	a4,s0,00000007
	bge	a4,zero,000000002306AEE8

l2306AED8:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a6,+00000400

l2306AEE8:
	addi	a4,zero,+000007FE
	blt	a4,a1,000000002306AF64

l2306AEF0:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	a0,s0,00000003
	addi	a4,a1,+00000000

l2306AF04:
	slli	a0,a0,0000000C
	andi	a4,a4,+000007FF
	slli	a3,a4,00000014
	srli	a4,a0,0000000C
	slli	a2,a2,0000001F
	or	a4,a4,a3
	or	a3,a4,a2
	addi	a0,a5,+00000000
	addi	a1,a3,+00000000
	beq	s1,zero,000000002306AF30

l2306AF2C:
	csrrs	zero,fflags,ra

l2306AF30:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	lw	s8,sp,+00000008
	lw	s9,sp,+00000004
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l2306AF64:
	addi	a5,zero,+00000002
	beq	s2,a5,000000002306AF9C

l2306AF6C:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306AF8C

l2306AF74:
	beq	s2,zero,000000002306AF90

l2306AF78:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l2306AF80:
	ori	s1,s1,+00000005
	addi	a0,a5,+00000000
	jal	zero,000000002306AF04

l2306AF8C:
	bne	a2,zero,000000002306AF78

l2306AF90:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306AF80

l2306AF9C:
	bne	a2,zero,000000002306AF90

l2306AFA0:
	jal	zero,000000002306AF78

l2306AFA4:
	addi	a4,zero,+00000001
	bne	a1,zero,000000002306B014

l2306AFAC:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,000000002306B008

l2306AFB8:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306B000

l2306AFC4:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306AFF0

l2306AFCC:
	addi	a4,s0,+00000000
	bne	s2,zero,000000002306B008

l2306AFD4:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,000000002306B008

l2306AFE0:
	sltiu	a4,a5,-00000004

l2306AFE4:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,000000002306B008

l2306AFF0:
	addi	a4,s0,+00000000
	bne	a2,zero,000000002306B008

l2306AFF8:
	sltiu	a4,a5,-00000008
	jal	zero,000000002306AFE4

l2306B000:
	addi	a4,s0,+00000000
	bne	a2,zero,000000002306AFF8

l2306B008:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l2306B014:
	addi	a0,zero,+00000001
	sub	a0,a0,a1
	addi	a3,zero,+00000038
	blt	a3,a0,000000002306B118

l2306B024:
	addi	a3,zero,+0000001F
	blt	a3,a0,000000002306B08C

l2306B02C:
	addi	a6,a6,+0000041E
	srl	a1,a5,a0
	sll	a3,s0,a6
	sll	a5,a5,a6
	or	a3,a3,a1
	sltu	a5,zero,a5
	or	a5,a3,a5
	srl	a0,s0,a0

l2306B04C:
	andi	a3,a5,+00000007
	beq	a3,zero,000000002306B0D0

l2306B054:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,000000002306B0CC

l2306B060:
	addi	a3,zero,+00000003
	beq	s2,a3,000000002306B0C0

l2306B068:
	bne	s2,zero,000000002306B0D0

l2306B06C:
	andi	a3,a5,+0000000F
	addi	a1,zero,+00000004
	beq	a3,a1,000000002306B0D0

l2306B078:
	addi	a3,a5,+00000004

l2306B07C:
	sltu	a5,a3,a5
	add	a0,a0,a5
	addi	a5,a3,+00000000
	jal	zero,000000002306B0D0

l2306B08C:
	addi	a3,zero,-0000001F
	sub	a3,a3,a1
	addi	a7,zero,+00000020
	srl	a3,s0,a3
	addi	a1,zero,+00000000
	beq	a0,a7,000000002306B0AC

l2306B0A4:
	addi	a6,a6,+0000043E
	sll	a1,s0,a6

l2306B0AC:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a3,a5
	addi	a0,zero,+00000000
	jal	zero,000000002306B04C

l2306B0C0:
	bne	a2,zero,000000002306B0D0

l2306B0C4:
	addi	a3,a5,+00000008
	jal	zero,000000002306B07C

l2306B0CC:
	bne	a2,zero,000000002306B0C4

l2306B0D0:
	slli	a3,a0,00000008
	bge	a3,zero,000000002306B0F0

l2306B0D8:
	ori	s1,s1,+00000001
	addi	a0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,000000002306B110

l2306B0E8:
	addi	a4,zero,+00000001
	jal	zero,000000002306AF04

l2306B0F0:
	srli	a3,a5,00000003
	slli	a5,a0,0000001D
	or	a5,a5,a3
	srli	a0,a0,00000003
	beq	a4,zero,000000002306AF04

l2306B104:
	andi	a4,s1,+00000001
	beq	a4,zero,000000002306AF04

l2306B10C:
	addi	a4,zero,+00000000

l2306B110:
	ori	s1,s1,+00000002
	jal	zero,000000002306AF04

l2306B118:
	or	a5,a5,s0
	beq	a5,zero,000000002306B150

l2306B120:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,000000002306B160

l2306B12C:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306B144

l2306B134:
	addi	a5,zero,+00000005
	beq	s2,zero,000000002306B14C

l2306B13C:
	addi	a5,zero,+00000001
	jal	zero,000000002306B14C

l2306B144:
	addi	a5,zero,+00000009
	bne	a2,zero,000000002306B13C

l2306B14C:
	srli	a5,a5,00000003

l2306B150:
	ori	s1,s1,+00000002
	addi	a0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306AF04

l2306B160:
	addi	a5,zero,+00000009
	bne	a2,zero,000000002306B14C

l2306B168:
	jal	zero,000000002306B13C
2306B16C                                     37 05 08 00             7...
2306B170 93 07 00 00 13 07 F0 7F 13 06 00 00 93 04 00 01 ................
2306B180 6F F0 5F D8 37 05 08 00 93 07 00 00 13 07 F0 7F o._.7...........
2306B190 13 06 00 00 6F F0 1F D7                         ....o...       

l2306B198:
	addi	a3,a5,+00000000

l2306B19C:
	addi	a5,a3,+00000000
	jal	zero,000000002306AE04

;; __eqdf2: 2306B1A4
;;   Called from:
;;     23002F3A (in cvt)
;;     23002FE4 (in cvt)
;;     2300322E (in flt)
;;     2302E3D0 (in print_number)
__eqdf2 proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a4,a1,00000014
	addi	a5,a5,-00000001
	srli	a7,a3,00000014
	andi	a4,a4,+000007FF
	addi	t1,zero,+000007FF
	and	a6,a5,a1
	addi	t4,a0,+00000000
	and	a5,a5,a3
	srli	a1,a1,0000001F
	addi	t3,a2,+00000000
	andi	a7,a7,+000007FF
	srli	a3,a3,0000001F
	bne	a4,t1,000000002306B1F0

l2306B1E0:
	or	t1,a6,a0
	bne	t1,zero,000000002306B240

l2306B1E8:
	bne	a7,a4,000000002306B264

l2306B1EC:
	jal	zero,000000002306B1F4

l2306B1F0:
	bne	a7,t1,000000002306B1FC

l2306B1F4:
	or	t1,a5,a2
	bne	t1,zero,000000002306B230

l2306B1FC:
	addi	a0,zero,+00000001
	bne	a4,a7,000000002306B268

l2306B204:
	bne	a6,a5,000000002306B268

l2306B208:
	bne	t3,t4,000000002306B268

l2306B20C:
	beq	a1,a3,000000002306B228

l2306B210:
	bne	a4,zero,000000002306B268

l2306B214:
	or	a0,a6,a2
	sltu	a0,zero,a0
	jalr	zero,ra,+00000000

l2306B220:
	csrrsi	zero,fflags,00000010
	jal	zero,000000002306B264

l2306B228:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306B230:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306B25C

l2306B238:
	or	a0,a6,a0
	beq	a0,zero,000000002306B25C

l2306B240:
	slli	a4,a6,0000000C
	bge	a4,zero,000000002306B220

l2306B248:
	addi	a4,zero,+000007FF
	addi	a0,zero,+00000001
	bne	a7,a4,000000002306B268

l2306B254:
	or	a2,a5,a2
	beq	a2,zero,000000002306B268

l2306B25C:
	slli	a4,a5,0000000C
	bge	a4,zero,000000002306B220

l2306B264:
	addi	a0,zero,+00000001

l2306B268:
	jalr	zero,ra,+00000000

;; __gedf2: 2306B26C
;;   Called from:
;;     23002F4A (in cvt)
;;     2302E460 (in print_number)
;;     2302E548 (in print_number)
;;     230689B0 (in floor)
;;     23068A24 (in floor)
;;     23068AA4 (in floor)
__gedf2 proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a6,a1,00000014
	addi	a5,a5,-00000001
	srli	a4,a3,00000014
	andi	a6,a6,+000007FF
	addi	t4,zero,+000007FF
	and	a7,a5,a1
	addi	t1,a0,+00000000
	and	a5,a5,a3
	srli	a1,a1,0000001F
	addi	t3,a2,+00000000
	andi	a4,a4,+000007FF
	srli	a3,a3,0000001F
	bne	a6,t4,000000002306B2BC

l2306B2A8:
	or	t4,a7,a0
	beq	t4,zero,000000002306B348

l2306B2B0:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,-00000002
	jal	zero,000000002306B304

l2306B2BC:
	bne	a4,t4,000000002306B2C8

l2306B2C0:
	or	t4,a5,a2
	bne	t4,zero,000000002306B2B0

l2306B2C8:
	bne	a6,zero,000000002306B34C

l2306B2CC:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,000000002306B2E0

l2306B2D8:
	or	a2,a5,a2
	beq	a2,zero,000000002306B338

l2306B2E0:
	bne	a0,zero,000000002306B2F8

l2306B2E4:
	bne	a1,a3,000000002306B2EC

l2306B2E8:
	bge	a4,a6,000000002306B30C

l2306B2EC:
	beq	a1,zero,000000002306B330

l2306B2F0:
	addi	a1,zero,-00000001
	jal	zero,000000002306B304

l2306B2F8:
	addi	a1,zero,-00000001
	beq	a3,zero,000000002306B304

l2306B300:
	addi	a1,a3,+00000000

l2306B304:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306B30C:
	bge	a6,a4,000000002306B318

l2306B310:
	bne	a1,zero,000000002306B304

l2306B314:
	jal	zero,000000002306B2F0

l2306B318:
	bltu	a5,a7,000000002306B2EC

l2306B31C:
	bne	a7,a5,000000002306B340

l2306B320:
	bltu	t3,t1,000000002306B2EC

l2306B324:
	bltu	t1,t3,000000002306B310

l2306B328:
	addi	a1,zero,+00000000
	jal	zero,000000002306B304

l2306B330:
	addi	a1,zero,+00000001
	jal	zero,000000002306B304

l2306B338:
	bne	a0,zero,000000002306B328

l2306B33C:
	jal	zero,000000002306B2EC

l2306B340:
	bltu	a7,a5,000000002306B310

l2306B344:
	jal	zero,000000002306B328

l2306B348:
	beq	a4,a6,000000002306B2C0

l2306B34C:
	bne	a4,zero,000000002306B2E4

l2306B350:
	addi	a0,zero,+00000000
	jal	zero,000000002306B2D8

;; __ledf2: 2306B358
;;   Called from:
;;     23002F12 (in cvt)
;;     23002F80 (in cvt)
;;     23003160 (in flt)
;;     2302E430 (in print_number)
;;     2302E448 (in print_number)
;;     2302E4C2 (in print_number)
;;     2302E4DE (in print_number)
;;     2302E51E (in print_number)
__ledf2 proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a6,a1,00000014
	addi	a5,a5,-00000001
	srli	a4,a3,00000014
	andi	a6,a6,+000007FF
	addi	t4,zero,+000007FF
	and	a7,a5,a1
	addi	t1,a0,+00000000
	and	a5,a5,a3
	srli	a1,a1,0000001F
	addi	t3,a2,+00000000
	andi	a4,a4,+000007FF
	srli	a3,a3,0000001F
	bne	a6,t4,000000002306B3A8

l2306B394:
	or	t4,a7,a0
	beq	t4,zero,000000002306B434

l2306B39C:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,+00000002
	jal	zero,000000002306B3F0

l2306B3A8:
	bne	a4,t4,000000002306B3B4

l2306B3AC:
	or	t4,a5,a2
	bne	t4,zero,000000002306B39C

l2306B3B4:
	bne	a6,zero,000000002306B438

l2306B3B8:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,000000002306B3CC

l2306B3C4:
	or	a2,a5,a2
	beq	a2,zero,000000002306B424

l2306B3CC:
	bne	a0,zero,000000002306B3E4

l2306B3D0:
	bne	a1,a3,000000002306B3D8

l2306B3D4:
	bge	a4,a6,000000002306B3F8

l2306B3D8:
	beq	a1,zero,000000002306B41C

l2306B3DC:
	addi	a1,zero,-00000001
	jal	zero,000000002306B3F0

l2306B3E4:
	addi	a1,zero,-00000001
	beq	a3,zero,000000002306B3F0

l2306B3EC:
	addi	a1,a3,+00000000

l2306B3F0:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306B3F8:
	bge	a6,a4,000000002306B404

l2306B3FC:
	bne	a1,zero,000000002306B3F0

l2306B400:
	jal	zero,000000002306B3DC

l2306B404:
	bltu	a5,a7,000000002306B3D8

l2306B408:
	bne	a7,a5,000000002306B42C

l2306B40C:
	bltu	t3,t1,000000002306B3D8

l2306B410:
	bltu	t1,t3,000000002306B3FC

l2306B414:
	addi	a1,zero,+00000000
	jal	zero,000000002306B3F0

l2306B41C:
	addi	a1,zero,+00000001
	jal	zero,000000002306B3F0

l2306B424:
	bne	a0,zero,000000002306B414

l2306B428:
	jal	zero,000000002306B3D8

l2306B42C:
	bltu	a7,a5,000000002306B3FC

l2306B430:
	jal	zero,000000002306B414

l2306B434:
	beq	a4,a6,000000002306B3AC

l2306B438:
	bne	a4,zero,000000002306B3D0

l2306B43C:
	addi	a0,zero,+00000000
	jal	zero,000000002306B3C4

;; __muldf3: 2306B444
;;   Called from:
;;     23002F74 (in cvt)
;;     23002FC2 (in cvt)
;;     2300308C (in cvt)
;;     2300A254 (in tcpip_stack_input)
;;     2304559A (in ADC_Parse_Result)
;;     230455B2 (in ADC_Parse_Result)
;;     2304568E (in ADC_Parse_Result)
;;     230456A6 (in ADC_Parse_Result)
;;     23056514 (in pa_input)
;;     2305657E (in pa_input)
;;     2305668C (in pa_adapt)
;;     230578EC (in rfc_config_channel)
;;     230589FA (in rf_pri_rccal_iq)
;;     2305B14C (in phyif_utils_decode)
__muldf3 proc
	addi	sp,sp,-00000030
	sw	s0,sp,+00000028
	sw	s6,sp,+00000010
	sw	s9,sp,+00000004
	sw	ra,sp,+0000002C
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	sw	s4,sp,+00000018
	sw	s5,sp,+00000014
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	addi	s0,a0,+00000000
	addi	s9,a2,+00000000
	addi	s6,a3,+00000000
	csrrs	s2,frm,sp
	srli	s7,a1,00000014
	slli	s3,a1,0000000C
	andi	s7,s7,+000007FF
	srli	s3,s3,0000000C
	srli	s5,a1,0000001F
	beq	s7,zero,000000002306B4CC

l2306B49C:
	addi	a5,zero,+000007FF
	beq	s7,a5,000000002306B530

l2306B4A4:
	srli	a5,a0,0000001D
	slli	s3,s3,00000003
	or	s3,a5,s3
	lui	a5,00000800
	or	s3,s3,a5
	slli	s4,a0,00000003
	addi	s7,s7,-000003FF

l2306B4C0:
	addi	s8,zero,+00000000

l2306B4C4:
	addi	s1,zero,+00000000
	jal	zero,000000002306B550

l2306B4CC:
	or	a5,s3,a0
	beq	a5,zero,000000002306B5D0

l2306B4D4:
	beq	s3,zero,000000002306B514

l2306B4D8:
	addi	a0,s3,+00000000
	jal	ra,0000000023068C40

l2306B4E0:
	addi	a4,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a4,000000002306B520

l2306B4EC:
	addi	a5,zero,+0000001D
	addi	s4,a0,-00000008
	sub	a5,a5,a4
	sll	s3,s3,s4
	srl	a5,s0,a5
	or	s3,a5,s3
	sll	s4,s0,s4

l2306B508:
	addi	s7,zero,-000003F3
	sub	s7,s7,a0
	jal	zero,000000002306B4C0

l2306B514:
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306B4E0

l2306B520:
	addi	s3,a0,-00000028
	sll	s3,s0,s3
	addi	s4,zero,+00000000
	jal	zero,000000002306B508

l2306B530:
	or	s0,s3,a0
	beq	s0,zero,000000002306B5E4

l2306B538:
	slli	a5,s3,0000000C
	addi	s4,a0,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,000000002306B4C4

l2306B550:
	srli	a0,s6,00000014
	slli	s0,s6,0000000C
	andi	a0,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s6,s6,0000001F
	beq	a0,zero,000000002306B5F8

l2306B56C:
	addi	a4,zero,+000007FF
	beq	a0,a4,000000002306B660

l2306B574:
	srli	a5,s9,0000001D
	slli	s0,s0,00000003
	or	s0,a5,s0
	lui	a5,00000800
	or	s0,s0,a5
	addi	a0,a0,-000003FF
	slli	a5,s9,00000003

l2306B590:
	addi	a4,zero,+00000000

l2306B594:
	slli	a3,s8,00000002
	or	a3,a3,a4
	add	a0,s7,a0
	addi	a3,a3,-00000001
	addi	a2,zero,+0000000E
	xor	a6,s5,s6
	addi	a7,a0,+00000001
	bltu	a2,a3,000000002306B724

l2306B5B4:
	auipc	a2,00000017
	addi	a2,a2,-00000140
	slli	a3,a3,00000002
	add	a3,a3,a2
	lw	a3,a3,+00000000
	add	a3,a3,a2
	jalr	zero,a3,+00000000

l2306B5D0:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,000000002306B4C4

l2306B5E4:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,000000002306B4C4

l2306B5F8:
	or	a5,s0,s9
	beq	a5,zero,000000002306B680

l2306B600:
	beq	s0,zero,000000002306B640

l2306B604:
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40

l2306B60C:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306B650

l2306B618:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l2306B634:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,000000002306B590

l2306B640:
	addi	a0,s9,+00000000
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306B60C

l2306B650:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,000000002306B634

l2306B660:
	or	a2,s0,s9
	beq	a2,zero,000000002306B694

l2306B668:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,000000002306B6A8

l2306B674:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,000000002306B594

l2306B680:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306B594

l2306B694:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,000000002306B594

l2306B6A8:
	addi	a4,zero,+00000003
	jal	zero,000000002306B594
2306B6B0 37 04 08 00 93 07 00 00 13 07 F0 7F 13 08 00 00 7...............
2306B6C0 93 04 00 01                                     ....           

l2306B6C4:
	slli	s0,s0,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	s0,s0,0000000C
	slli	a6,a6,0000001F
	or	s0,s0,a4
	or	a4,s0,a6
	addi	a0,a5,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,000000002306B6F0

l2306B6EC:
	csrrs	zero,fflags,ra

l2306B6F0:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	lw	s8,sp,+00000008
	lw	s9,sp,+00000004
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l2306B724:
	lui	t1,00000010
	addi	t6,t1,-00000001
	srli	a4,s4,00000010
	srli	a3,a5,00000010
	and	s4,s4,t6
	and	t5,a5,t6
	add	a2,a3,s4
	add	a5,t5,s4
	add	t4,a4,t5
	add	a1,a2,t4
	srli	a2,a5,00000010
	add	a2,a2,a1
	add	t3,a4,a3
	bgeu	a2,t4,000000002306B760

l2306B75C:
	add	t3,t3,t1

l2306B760:
	srli	t0,a2,00000010
	and	a2,a2,t6
	and	a5,a5,t6
	srli	t4,s0,00000010
	and	t6,s0,t6
	slli	a2,a2,00000010
	add	a2,a2,a5
	add	a1,s4,t6
	add	a5,a4,t6
	add	s4,t4,s4
	add	t1,s4,a5
	srli	s4,a1,00000010
	add	s4,s4,t1
	add	a4,a4,t4
	bgeu	s4,a5,000000002306B7A4

l2306B79C:
	lui	a5,00000010
	add	a4,a4,a5

l2306B7A4:
	srli	t1,s4,00000010
	lui	a5,00000010
	add	t1,t1,a4
	addi	a4,a5,-00000001
	srli	s0,s3,00000010
	and	s3,s3,a4
	and	a1,a1,a4
	and	s4,s4,a4
	add	t2,t5,s3
	slli	s4,s4,00000010
	add	s4,s4,a1
	add	t0,t0,s4
	add	a4,s0,t5
	add	t5,a3,s0
	add	a3,a3,s3
	add	a1,a3,a4
	srli	a3,t2,00000010
	add	a3,a3,a1
	bgeu	a3,a4,000000002306B7F4

l2306B7F0:
	add	t5,t5,a5

l2306B7F4:
	srli	a5,a3,00000010
	lui	a4,00000010
	add	t5,a5,t5
	addi	a5,a4,-00000001
	and	a3,a3,a5
	and	t2,t2,a5
	slli	a3,a3,00000010
	add	a5,s0,t6
	add	a3,a3,t2
	add	t2,s3,t6
	add	s3,t4,s3
	add	a1,t4,s0
	add	s3,s3,a5
	srli	s0,t2,00000010
	add	s3,s0,s3
	bgeu	s3,a5,000000002306B838

l2306B834:
	add	a1,a1,a4

l2306B838:
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a4,s3,a5
	and	t2,t2,a5
	slli	a4,a4,00000010
	add	t3,t3,t0
	add	a4,a4,t2
	sltu	s4,t3,s4
	add	a4,a4,t1
	add	s0,a4,s4
	add	t3,t3,a3
	sltu	a3,t3,a3
	add	t4,s0,t5
	add	t6,t4,a3
	sltu	a4,a4,t1
	sltu	s0,s0,s4
	or	s0,a4,s0
	sltu	a3,t6,a3
	srli	s3,s3,00000010
	sltu	t5,t4,t5
	add	s0,s0,s3
	or	a3,t5,a3
	add	s0,s0,a3
	add	s0,s0,a1
	srli	a5,t6,00000017
	slli	s0,s0,00000009
	or	s0,s0,a5
	slli	a5,t3,00000009
	or	a5,a5,a2
	sltu	a5,zero,a5
	srli	t3,t3,00000017
	or	a5,a5,t3
	slli	t6,t6,00000009
	slli	a4,s0,00000007
	or	a5,a5,t6
	bge	a4,zero,000000002306B964

l2306B8C8:
	srli	a4,a5,00000001
	andi	a5,a5,+00000001
	or	a5,a4,a5
	slli	a4,s0,0000001F
	or	a5,a5,a4
	srli	s0,s0,00000001

l2306B8E0:
	addi	a1,a7,+000003FF
	bge	zero,a1,000000002306B9F4

l2306B8E8:
	andi	a4,a5,+00000007
	beq	a4,zero,000000002306B97C

l2306B8F0:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306B978

l2306B8FC:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306B96C

l2306B904:
	bne	s2,zero,000000002306B97C

l2306B908:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,000000002306B97C

l2306B914:
	addi	a4,a5,+00000004

l2306B918:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,000000002306B97C
2306B928                         13 88 0A 00 13 84 09 00         ........
2306B930 93 07 0A 00 13 07 0C 00 93 06 20 00 63 00 D7 28 .......... .c..(
2306B940 93 06 30 00 63 04 D7 28 93 06 10 00 E3 1A D7 F8 ..0.c..(........
2306B950 13 04 00 00 93 07 00 00 6F 00 00 25 13 08 0B 00 ........o..%....
2306B960 6F F0 9F FD                                     o...           

l2306B964:
	addi	a7,a0,+00000000
	jal	zero,000000002306B8E0

l2306B96C:
	bne	a6,zero,000000002306B97C

l2306B970:
	addi	a4,a5,+00000008
	jal	zero,000000002306B918

l2306B978:
	bne	a6,zero,000000002306B970

l2306B97C:
	slli	a4,s0,00000007
	bge	a4,zero,000000002306B994

l2306B984:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a7,+00000400

l2306B994:
	addi	a4,zero,+000007FE
	blt	a4,a1,000000002306B9B4

l2306B99C:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	s0,s0,00000003
	addi	a4,a1,+00000000
	jal	zero,000000002306B6C4

l2306B9B4:
	addi	a5,zero,+00000002
	beq	s2,a5,000000002306B9EC

l2306B9BC:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306B9DC

l2306B9C4:
	beq	s2,zero,000000002306B9E0

l2306B9C8:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l2306B9D0:
	ori	s1,s1,+00000005
	addi	s0,a5,+00000000
	jal	zero,000000002306B6C4

l2306B9DC:
	bne	a6,zero,000000002306B9C8

l2306B9E0:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306B9D0

l2306B9EC:
	bne	a6,zero,000000002306B9E0

l2306B9F0:
	jal	zero,000000002306B9C8

l2306B9F4:
	addi	a4,zero,+00000001
	bne	a1,zero,000000002306BA64

l2306B9FC:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,000000002306BA58

l2306BA08:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306BA50

l2306BA14:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306BA40

l2306BA1C:
	addi	a4,s0,+00000000
	bne	s2,zero,000000002306BA58

l2306BA24:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306BA58

l2306BA30:
	sltiu	a4,a5,-00000004

l2306BA34:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,000000002306BA58

l2306BA40:
	addi	a4,s0,+00000000
	bne	a6,zero,000000002306BA58

l2306BA48:
	sltiu	a4,a5,-00000008
	jal	zero,000000002306BA34

l2306BA50:
	addi	a4,s0,+00000000
	bne	a6,zero,000000002306BA48

l2306BA58:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l2306BA64:
	addi	a3,zero,+00000001
	sub	a3,a3,a1
	addi	a2,zero,+00000038
	blt	a2,a3,000000002306BB68

l2306BA74:
	addi	a2,zero,+0000001F
	blt	a2,a3,000000002306BADC

l2306BA7C:
	addi	a7,a7,+0000041E
	sll	a2,s0,a7
	srl	a1,a5,a3
	sll	a5,a5,a7
	or	a2,a2,a1
	sltu	a5,zero,a5
	or	a5,a2,a5
	srl	s0,s0,a3

l2306BA9C:
	andi	a3,a5,+00000007
	beq	a3,zero,000000002306BB20

l2306BAA4:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,000000002306BB1C

l2306BAB0:
	addi	a3,zero,+00000003
	beq	s2,a3,000000002306BB10

l2306BAB8:
	bne	s2,zero,000000002306BB20

l2306BABC:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306BB20

l2306BAC8:
	addi	a3,a5,+00000004

l2306BACC:
	sltu	a5,a3,a5
	add	s0,s0,a5
	addi	a5,a3,+00000000
	jal	zero,000000002306BB20

l2306BADC:
	addi	a2,zero,-0000001F
	sub	a2,a2,a1
	addi	a0,zero,+00000020
	srl	a2,s0,a2
	addi	a1,zero,+00000000
	beq	a3,a0,000000002306BAFC

l2306BAF4:
	addi	a7,a7,+0000043E
	sll	a1,s0,a7

l2306BAFC:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a2,a5
	addi	s0,zero,+00000000
	jal	zero,000000002306BA9C

l2306BB10:
	bne	a6,zero,000000002306BB20

l2306BB14:
	addi	a3,a5,+00000008
	jal	zero,000000002306BACC

l2306BB1C:
	bne	a6,zero,000000002306BB14

l2306BB20:
	slli	a3,s0,00000008
	bge	a3,zero,000000002306BB40

l2306BB28:
	ori	s1,s1,+00000001
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,000000002306BB60

l2306BB38:
	addi	a4,zero,+00000001
	jal	zero,000000002306B6C4

l2306BB40:
	srli	a3,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a3
	srli	s0,s0,00000003
	beq	a4,zero,000000002306B6C4

l2306BB54:
	andi	a4,s1,+00000001
	beq	a4,zero,000000002306B6C4

l2306BB5C:
	addi	a4,zero,+00000000

l2306BB60:
	ori	s1,s1,+00000002
	jal	zero,000000002306B6C4

l2306BB68:
	or	a5,a5,s0
	beq	a5,zero,000000002306BBA0

l2306BB70:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,000000002306BBB0

l2306BB7C:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306BB94

l2306BB84:
	addi	a5,zero,+00000005
	beq	s2,zero,000000002306BB9C

l2306BB8C:
	addi	a5,zero,+00000001
	jal	zero,000000002306BB9C

l2306BB94:
	addi	a5,zero,+00000009
	bne	a6,zero,000000002306BB8C

l2306BB9C:
	srli	a5,a5,00000003

l2306BBA0:
	ori	s1,s1,+00000002
	addi	s0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306B6C4

l2306BBB0:
	addi	a5,zero,+00000009
	bne	a6,zero,000000002306BB9C

l2306BBB8:
	jal	zero,000000002306BB8C
2306BBBC                                     13 04 00 00             ....
2306BBC0 93 07 00 00 13 07 F0 7F 6F F0 DF AF 37 04 08 00 ........o...7...
2306BBD0 93 07 00 00 13 07 F0 7F 13 08 00 00 6F F0 9F AE ............o...

;; __subdf3: 2306BBE0
;;   Called from:
;;     2302E420 (in print_number)
;;     2302E4B2 (in print_number)
;;     23068BD0 (in modf)
__subdf3 proc
	addi	sp,sp,-00000020
	sw	ra,sp,+0000001C
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	csrrs	s3,frm,sp
	lui	a6,00000100
	addi	a6,a6,-00000001
	and	a4,a6,a3
	and	t3,a6,a1
	slli	a4,a4,00000003
	srli	a6,a3,00000014
	srli	a5,a2,0000001D
	srli	s1,a1,00000014
	slli	t3,t3,00000003
	srli	s0,a0,0000001D
	or	a5,a5,a4
	andi	a6,a6,+000007FF
	addi	a4,zero,+000007FF
	andi	s1,s1,+000007FF
	srli	s2,a1,0000001F
	or	t3,s0,t3
	slli	a7,a0,00000003
	srli	a3,a3,0000001F
	slli	t1,a2,00000003
	bne	a6,a4,000000002306BC58

l2306BC50:
	or	a4,a5,t1
	bne	a4,zero,000000002306BC5C

l2306BC58:
	xori	a3,a3,+00000001

l2306BC5C:
	sub	a4,s1,a6
	bne	a3,s2,000000002306C07C

l2306BC64:
	bge	zero,a4,000000002306BDBC

l2306BC68:
	bne	a6,zero,000000002306BCCC

l2306BC6C:
	or	a3,a5,t1
	bne	a3,zero,000000002306BC88

l2306BC74:
	addi	a5,zero,+000007FF
	beq	a4,a5,000000002306BCB0

l2306BC7C:
	addi	a5,t3,+00000000

l2306BC80:
	addi	s1,zero,+00000000
	jal	zero,000000002306BF34

l2306BC88:
	addi	a3,a4,-00000001
	bne	a3,zero,000000002306BCA8

l2306BC90:
	add	t1,t1,a7
	add	a5,t3,a5
	sltu	a7,t1,a7
	add	a5,a5,a7

l2306BCA0:
	addi	a4,zero,+00000001
	jal	zero,000000002306BD40

l2306BCA8:
	addi	a2,zero,+000007FF
	bne	a4,a2,000000002306BCF8

l2306BCB0:
	or	a5,t3,a7
	beq	a5,zero,000000002306C628

l2306BCB8:
	slli	a5,t3,00000009
	blt	a5,zero,000000002306BC7C

l2306BCC0:
	addi	a5,t3,+00000000

l2306BCC4:
	addi	s1,zero,+00000010
	jal	zero,000000002306BF34

l2306BCCC:
	addi	a3,zero,+000007FF
	bne	s1,a3,000000002306BCEC

l2306BCD4:
	or	a5,t3,a7
	beq	a5,zero,000000002306C634

l2306BCDC:
	slli	a5,t3,00000009
	blt	a5,zero,000000002306C63C

l2306BCE4:
	addi	a5,t3,+00000000
	jal	zero,000000002306BE88

l2306BCEC:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000

l2306BCF8:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306BDB0

l2306BD00:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306BD7C

l2306BD08:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l2306BD2C:
	add	t1,t1,a7
	add	a5,a3,t3
	sltu	a7,t1,a7
	add	a5,a5,a7
	addi	a4,s1,+00000000

l2306BD40:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306C194

l2306BD48:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306C04C

l2306BD54:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	srli	a7,t1,00000001
	and	a3,a5,a3
	andi	t1,t1,+00000001
	slli	a5,a3,0000001F
	or	t1,a7,t1
	or	a7,a5,t1
	srli	a5,a3,00000001
	jal	zero,000000002306BFD4

l2306BD7C:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,000000002306BD9C

l2306BD90:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l2306BD9C:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l2306BDA8:
	addi	a3,zero,+00000000
	jal	zero,000000002306BD2C

l2306BDB0:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,000000002306BDA8

l2306BDBC:
	beq	a4,zero,000000002306BEE4

l2306BDC0:
	sub	a4,a6,s1
	bne	s1,zero,000000002306BE6C

l2306BDC8:
	or	a3,t3,a7
	bne	a3,zero,000000002306BDF4

l2306BDD0:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306C194

l2306BDD8:
	or	a7,a5,t1
	beq	a7,zero,000000002306C648

l2306BDE0:
	slli	a3,a5,00000009
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	blt	a3,zero,000000002306BF34

l2306BDF0:
	jal	zero,000000002306BCC4

l2306BDF4:
	addi	s0,a4,-00000001
	bne	s0,zero,000000002306BE14

l2306BDFC:
	add	a7,a7,t1
	sltu	t1,a7,t1
	add	a5,t3,a5
	add	a5,a5,t1
	addi	t1,a7,+00000000
	jal	zero,000000002306BCA0

l2306BE14:
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306BDD8

l2306BE1C:
	addi	a4,zero,+00000038
	blt	a4,s0,000000002306BED8

l2306BE24:
	addi	a4,zero,+0000001F
	blt	a4,s0,000000002306BEA4

l2306BE2C:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a3
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l2306BE50:
	add	a7,a7,t1
	add	s0,s0,a5
	sltu	a5,a7,t1
	add	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306BD40

l2306BE6C:
	addi	a3,zero,+000007FF
	bne	a6,a3,000000002306BE94

l2306BE74:
	or	a7,a5,t1
	beq	a7,zero,000000002306C608

l2306BE7C:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,000000002306C640

l2306BE88:
	addi	a4,zero,+000007FF

l2306BE8C:
	addi	a6,zero,+00000000
	jal	zero,000000002306BCC4

l2306BE94:
	lui	a3,00000800
	or	t3,t3,a3
	addi	s0,a4,+00000000
	jal	zero,000000002306BE1C

l2306BEA4:
	addi	a4,s0,-00000020
	addi	a3,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a3,000000002306BEC4

l2306BEB8:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l2306BEC4:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306BED0:
	addi	s0,zero,+00000000
	jal	zero,000000002306BE50

l2306BED8:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,000000002306BED0

l2306BEE4:
	addi	a4,s1,+00000001
	andi	a3,a4,+000007FE
	bne	a3,zero,000000002306BFAC

l2306BEF0:
	or	a3,t3,a7
	bne	s1,zero,000000002306BF50

l2306BEF8:
	beq	a3,zero,000000002306C198

l2306BEFC:
	or	a4,a5,t1
	beq	a4,zero,000000002306C2E8

l2306BF04:
	add	t1,a7,t1
	add	a5,t3,a5
	sltu	s0,t1,a7
	add	t3,a5,s0
	slli	a5,t3,00000008
	bge	a5,zero,000000002306C19C

l2306BF1C:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,t3,a5
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	addi	a4,zero,+00000001

l2306BF34:
	andi	a3,a7,+00000007
	bne	a3,zero,000000002306C014

l2306BF3C:
	beq	a6,zero,000000002306C414

l2306BF40:
	andi	a3,s1,+00000001
	beq	a3,zero,000000002306C414

l2306BF48:
	ori	s1,s1,+00000002
	jal	zero,000000002306C414

l2306BF50:
	addi	a2,zero,+000007FF
	bne	s1,a2,000000002306BF88

l2306BF58:
	beq	a3,zero,000000002306C70C

l2306BF5C:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a2,000000002306BF94

l2306BF70:
	or	a4,a5,t1
	beq	a4,zero,000000002306C700

l2306BF78:
	slli	a4,a5,00000009
	blt	a4,zero,000000002306BF90

l2306BF80:
	addi	s1,zero,+00000010
	jal	zero,000000002306BF90

l2306BF88:
	addi	s1,zero,+00000000
	beq	a6,a2,000000002306BF70

l2306BF90:
	beq	a3,zero,000000002306C704

l2306BF94:
	or	a5,a5,t1
	bne	a5,zero,000000002306C404

l2306BF9C:
	addi	a5,t3,+00000000
	jal	zero,000000002306C3EC

l2306BFA4:
	addi	s1,zero,+00000000
	jal	zero,000000002306BF70

l2306BFAC:
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306BFDC

l2306BFB4:
	add	t1,a7,t1
	add	s0,t3,a5
	sltu	a5,t1,a7
	add	t3,s0,a5
	slli	a5,t3,0000001F
	srli	t1,t1,00000001
	or	a7,a5,t1
	srli	a5,t3,00000001

l2306BFD4:
	addi	a6,zero,+00000000
	jal	zero,000000002306BC80

l2306BFDC:
	beq	s3,zero,000000002306BFEC

l2306BFE0:
	addi	a5,zero,+00000003
	bne	s3,a5,000000002306BFF4

l2306BFE8:
	bne	s2,zero,000000002306C000

l2306BFEC:
	addi	a4,zero,+000007FF
	jal	zero,000000002306C05C

l2306BFF4:
	addi	a5,zero,+00000002
	bne	s3,a5,000000002306C000

l2306BFFC:
	bne	s2,zero,000000002306BFEC

l2306C000:
	addi	a6,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE

l2306C010:
	addi	s1,zero,+00000005

l2306C014:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s3,a3,000000002306C6B0

l2306C020:
	addi	a3,zero,+00000003
	beq	s3,a3,000000002306C6A4

l2306C028:
	bne	s3,zero,000000002306C6B4

l2306C02C:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306C6B4

l2306C038:
	addi	a3,a7,+00000004

l2306C03C:
	sltu	a7,a3,a7
	add	a5,a5,a7
	addi	a7,a3,+00000000
	jal	zero,000000002306C6B4

l2306C04C:
	beq	s3,zero,000000002306C05C

l2306C050:
	addi	a5,zero,+00000003
	bne	s3,a5,000000002306C06C

l2306C058:
	bne	s2,zero,000000002306C614

l2306C05C:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	s1,zero,+00000005
	jal	zero,000000002306C414

l2306C06C:
	addi	a5,zero,+00000002
	bne	s3,a5,000000002306C614

l2306C074:
	bne	s2,zero,000000002306C05C

l2306C078:
	jal	zero,000000002306C000

l2306C07C:
	bge	zero,a4,000000002306C174

l2306C080:
	bne	a6,zero,000000002306C11C

l2306C084:
	or	a3,a5,t1
	beq	a3,zero,000000002306BC74

l2306C08C:
	addi	a3,a4,-00000001
	bne	a3,zero,000000002306C0AC

l2306C094:
	sub	t1,a7,t1
	sub	a5,t3,a5
	sltu	a7,a7,t1
	sub	a5,a5,a7

l2306C0A4:
	addi	a4,zero,+00000001
	jal	zero,000000002306C0FC

l2306C0AC:
	addi	a2,zero,+000007FF
	beq	a4,a2,000000002306BCB0

l2306C0B4:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306C168

l2306C0BC:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306C134

l2306C0C4:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l2306C0E8:
	sub	t1,a7,t1
	sub	a5,t3,a3
	sltu	a7,a7,t1
	sub	a5,a5,a7
	addi	a4,s1,+00000000

l2306C0FC:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306C194

l2306C104:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,t1,+00000000
	addi	s1,a4,+00000000
	jal	zero,000000002306C4DC

l2306C11C:
	addi	a3,zero,+000007FF
	beq	s1,a3,000000002306BCD4

l2306C124:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000
	jal	zero,000000002306C0B4

l2306C134:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,000000002306C154

l2306C148:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l2306C154:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l2306C160:
	addi	a3,zero,+00000000
	jal	zero,000000002306C0E8

l2306C168:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,000000002306C160

l2306C174:
	beq	a4,zero,000000002306C2B8

l2306C178:
	sub	a4,a6,s1
	bne	s1,zero,000000002306C1F0

l2306C180:
	or	a2,t3,a7
	bne	a2,zero,000000002306C1A4

l2306C188:
	addi	a2,zero,+000007FF
	addi	s2,a3,+00000000
	beq	a4,a2,000000002306BDD8

l2306C194:
	bne	a4,zero,000000002306C690

l2306C198:
	addi	t3,a5,+00000000

l2306C19C:
	addi	a7,t1,+00000000
	jal	zero,000000002306C2E8

l2306C1A4:
	addi	s0,a4,-00000001
	bne	s0,zero,000000002306C1C8

l2306C1AC:
	sub	a7,t1,a7
	sltu	t1,t1,a7
	sub	a5,a5,t3
	sub	a5,a5,t1
	addi	s2,a3,+00000000
	addi	t1,a7,+00000000
	jal	zero,000000002306C0A4

l2306C1C8:
	addi	a2,zero,+000007FF
	bne	a4,a2,000000002306C224

l2306C1D0:
	or	a7,a5,t1
	beq	a7,zero,000000002306C650

l2306C1D8:
	slli	a2,a5,00000009
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000
	addi	a6,zero,+00000000
	blt	a2,zero,000000002306BF34

l2306C1EC:
	jal	zero,000000002306BCC4

l2306C1F0:
	addi	a2,zero,+000007FF
	bne	a6,a2,000000002306C218

l2306C1F8:
	or	a7,a5,t1
	beq	a7,zero,000000002306C65C

l2306C200:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,000000002306C66C

l2306C20C:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,000000002306BE8C

l2306C218:
	lui	a2,00000800
	or	t3,t3,a2
	addi	s0,a4,+00000000

l2306C224:
	addi	a4,zero,+00000038
	blt	a4,s0,000000002306C2AC

l2306C22C:
	addi	a4,zero,+0000001F
	blt	a4,s0,000000002306C278

l2306C234:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a2,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l2306C258:
	sub	a7,t1,a7
	sub	s0,a5,s0
	sltu	a5,t1,a7
	sub	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	addi	s2,a3,+00000000
	jal	zero,000000002306C0FC

l2306C278:
	addi	a4,s0,-00000020
	addi	a2,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a2,000000002306C298

l2306C28C:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l2306C298:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306C2A4:
	addi	s0,zero,+00000000
	jal	zero,000000002306C258

l2306C2AC:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,000000002306C2A4

l2306C2B8:
	addi	a4,s1,+00000001
	andi	a4,a4,+000007FE
	bne	a4,zero,000000002306C4B0

l2306C2C4:
	or	a1,t3,a7
	or	a2,a5,t1
	bne	s1,zero,000000002306C3A0

l2306C2D0:
	bne	a1,zero,000000002306C354

l2306C2D4:
	bne	a2,zero,000000002306C5B8

l2306C2D8:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001
	addi	t3,zero,+00000000
	addi	a7,zero,+00000000

l2306C2E8:
	or	a5,a7,t3
	beq	a5,zero,000000002306C698

l2306C2F0:
	srli	a5,a7,0000001F
	slli	a6,t3,00000001
	add	a6,a6,a5
	slli	a5,a7,00000001
	andi	a4,a5,+00000007
	addi	s1,zero,+00000000
	beq	a4,zero,000000002306C33C

l2306C30C:
	addi	a4,zero,+00000002
	beq	s3,a4,000000002306C5EC

l2306C314:
	addi	a4,zero,+00000003
	beq	s3,a4,000000002306C5D0

l2306C31C:
	addi	s1,zero,+00000001
	bne	s3,zero,000000002306C33C

l2306C324:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,000000002306C33C

l2306C330:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	a6,a6,a5

l2306C33C:
	srli	a6,a6,00000018
	xori	a6,a6,+00000001
	andi	a6,a6,+00000001
	addi	a5,t3,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306BF34

l2306C354:
	beq	a2,zero,000000002306C2E8

l2306C358:
	sub	a2,a7,t1
	sltu	a1,a7,a2
	sub	a4,t3,a5
	sub	a4,a4,a1
	slli	a1,a4,00000008
	bge	a1,zero,000000002306C388

l2306C370:
	sub	a7,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,a7
	sub	t3,s0,a5

l2306C380:
	addi	s2,a3,+00000000
	jal	zero,000000002306C2E8

l2306C388:
	or	a7,a2,a4
	bne	a7,zero,000000002306C5C4

l2306C390:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001

l2306C398:
	addi	t3,zero,+00000000
	jal	zero,000000002306C2E8

l2306C3A0:
	addi	a0,zero,+000007FF
	bne	s1,a0,000000002306C3D4

l2306C3A8:
	beq	a1,zero,000000002306C6F4

l2306C3AC:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a0,000000002306C400

l2306C3C0:
	beq	a2,zero,000000002306C3DC

l2306C3C4:
	slli	a4,a5,00000009
	blt	a4,zero,000000002306C3DC

l2306C3CC:
	addi	s1,zero,+00000010
	jal	zero,000000002306C3DC

l2306C3D4:
	addi	s1,zero,+00000000
	beq	a6,a0,000000002306C3C0

l2306C3DC:
	bne	a1,zero,000000002306C400

l2306C3E0:
	beq	a2,zero,000000002306C678

l2306C3E4:
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000

l2306C3EC:
	addi	a6,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306BF34

l2306C3F8:
	addi	s1,zero,+00000000
	jal	zero,000000002306C3C0

l2306C400:
	beq	a2,zero,000000002306BF9C

l2306C404:
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a4,zero,+000007FF

l2306C414:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306C434

l2306C41C:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306C6BC

l2306C428:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l2306C434:
	slli	a3,a5,0000001D
	srli	a7,a7,00000003
	or	a7,a3,a7
	addi	a3,zero,+000007FF
	srli	a5,a5,00000003
	bne	a4,a3,000000002306C464

l2306C44C:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306C464

l2306C458:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l2306C464:
	slli	a5,a5,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a4
	or	a4,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,000000002306C490

l2306C48C:
	csrrs	zero,fflags,ra

l2306C490:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l2306C4B0:
	sub	s4,a7,t1
	sub	s0,t3,a5
	sltu	a2,a7,s4
	sub	s0,s0,a2
	slli	a4,s0,00000008
	bge	a4,zero,000000002306C548

l2306C4C8:
	sub	s4,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,s4
	sub	s0,s0,a5
	addi	s2,a3,+00000000

l2306C4DC:
	beq	s0,zero,000000002306C554

l2306C4E0:
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40

l2306C4E8:
	addi	a4,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a4,000000002306C564

l2306C4F4:
	addi	a5,zero,+00000020
	sub	a5,a5,a4
	sll	s0,s0,a4
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	t1,s4,a4

l2306C50C:
	blt	a4,s1,000000002306C5A4

l2306C510:
	sub	a4,a4,s1
	addi	a5,a4,+00000001
	addi	a3,zero,+0000001F
	blt	a3,a5,000000002306C574

l2306C520:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	sll	a7,s0,a4
	srl	a0,t1,a5
	sll	a4,t1,a4
	or	a7,a7,a0
	sltu	a4,zero,a4
	or	a7,a7,a4
	srl	t3,s0,a5
	jal	zero,000000002306C2E8

l2306C548:
	or	a7,s4,s0
	bne	a7,zero,000000002306C4DC

l2306C550:
	jal	zero,000000002306C390

l2306C554:
	addi	a0,s4,+00000000
	jal	ra,0000000023068C40
	addi	a0,a0,+00000020
	jal	zero,000000002306C4E8

l2306C564:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	t1,zero,+00000000
	jal	zero,000000002306C50C

l2306C574:
	addi	a4,a4,-0000001F
	addi	a2,zero,+00000020
	srl	a4,s0,a4
	addi	a3,zero,+00000000
	beq	a5,a2,000000002306C594

l2306C588:
	addi	a3,zero,+00000040
	sub	a3,a3,a5
	sll	a3,s0,a3

l2306C594:
	or	a5,t1,a3
	sltu	a5,zero,a5
	or	a7,a4,a5
	jal	zero,000000002306C398

l2306C5A4:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a4,s1,a4
	and	a5,s0,a5
	jal	zero,000000002306C194

l2306C5B8:
	addi	t3,a5,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306C380

l2306C5C4:
	addi	t3,a4,+00000000
	addi	a7,a2,+00000000
	jal	zero,000000002306C2E8

l2306C5D0:
	addi	s1,s2,+00000000
	bne	s2,zero,000000002306C33C

l2306C5D8:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,zero,+00000001
	jal	zero,000000002306C33C

l2306C5EC:
	addi	s1,zero,+00000001
	beq	s2,zero,000000002306C33C

l2306C5F4:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,s2,+00000000
	jal	zero,000000002306C33C

l2306C608:
	addi	a5,zero,+00000000

l2306C60C:
	addi	a4,zero,+000007FF
	jal	zero,000000002306C62C

l2306C614:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	addi	a6,zero,+00000000
	jal	zero,000000002306C010

l2306C628:
	addi	a7,zero,+00000000

l2306C62C:
	addi	s1,zero,+00000000
	jal	zero,000000002306C414

l2306C634:
	addi	a7,zero,+00000000
	jal	zero,000000002306C60C

l2306C63C:
	addi	a5,t3,+00000000

l2306C640:
	addi	a4,zero,+000007FF
	jal	zero,000000002306BFD4

l2306C648:
	addi	a5,zero,+00000000
	jal	zero,000000002306C414

l2306C650:
	addi	a5,zero,+00000000
	addi	s2,a3,+00000000
	jal	zero,000000002306C414

l2306C65C:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,000000002306C62C

l2306C66C:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,000000002306BFD4

l2306C678:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a4,zero,+000007FF
	addi	s1,zero,+00000010
	jal	zero,000000002306C414

l2306C690:
	addi	a7,t1,+00000000
	jal	zero,000000002306BFD4

l2306C698:
	addi	a7,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306C62C

l2306C6A4:
	bne	s2,zero,000000002306C6B4

l2306C6A8:
	addi	a3,a7,+00000008
	jal	zero,000000002306C03C

l2306C6B0:
	bne	s2,zero,000000002306C6A8

l2306C6B4:
	bne	a6,zero,000000002306BF48

l2306C6B8:
	jal	zero,000000002306C414

l2306C6BC:
	addi	a7,zero,+00000000
	beq	s3,zero,000000002306C6E8

l2306C6C4:
	addi	a5,zero,+00000003
	bne	s3,a5,000000002306C6DC

l2306C6CC:
	beq	s2,zero,000000002306C6E8

l2306C6D0:
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	jal	zero,000000002306C6E8

l2306C6DC:
	addi	a5,zero,+00000002
	bne	s3,a5,000000002306C6D0

l2306C6E4:
	beq	s2,zero,000000002306C6D0

l2306C6E8:
	ori	s1,s1,+00000005
	addi	a5,a7,+00000000
	jal	zero,000000002306C434

l2306C6F4:
	beq	a6,s1,000000002306C3F8

l2306C6F8:
	addi	s1,zero,+00000000
	jal	zero,000000002306C3E0

l2306C700:
	bne	a3,zero,000000002306BF9C

l2306C704:
	addi	a7,t1,+00000000
	jal	zero,000000002306C3EC

l2306C70C:
	beq	a6,s1,000000002306BFA4

l2306C710:
	addi	a7,t1,+00000000
	jal	zero,000000002306C640

;; __fixdfsi: 2306C718
;;   Called from:
;;     23002FC6 (in cvt)
;;     230030A0 (in cvt)
;;     2300A258 (in tcpip_stack_input)
;;     2302EFE4 (in cJSON_CreateNumber)
;;     23056A2E (in trpc_get_power_idx)
;;     23057900 (in rfc_config_channel)
;;     23059E6C (in rf_pri_get_vco_freq_cw)
;;     23059EB6 (in rf_pri_get_vco_idac_cw)
;;     2305B150 (in phyif_utils_decode)
__fixdfsi proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a3,a1,00000014
	addi	a2,a5,-00000001
	andi	a3,a3,+000007FF
	addi	a4,zero,+000003FE
	and	a2,a2,a1
	srli	a1,a1,0000001F
	blt	a4,a3,000000002306C750

l2306C73C:
	bne	a3,zero,000000002306C800

l2306C740:
	or	a5,a2,a0
	bne	a5,zero,000000002306C800

l2306C748:
	addi	a0,a5,+00000000
	jalr	zero,ra,+00000000

l2306C750:
	addi	a4,zero,+0000041D
	bge	a4,a3,000000002306C794

l2306C758:
	lui	a4,00080000
	xori	a4,a4,-00000001
	add	a5,a1,a4
	beq	a1,zero,000000002306C80C

l2306C768:
	addi	a6,zero,+0000041E
	addi	a4,zero,+00000010
	bne	a3,a6,000000002306C7CC

l2306C774:
	slli	a2,a2,0000000B
	srli	a3,a0,00000015
	or	a2,a2,a3
	bne	a2,zero,000000002306C7CC

l2306C784:
	slli	a4,a0,0000000B
	beq	a4,zero,000000002306C748

l2306C78C:
	addi	a4,a1,+00000000
	jal	zero,000000002306C7CC

l2306C794:
	or	a5,a2,a5
	addi	a2,zero,+00000433
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,000000002306C7D4

l2306C7A8:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a5,a5,a0

l2306C7C0:
	beq	a1,zero,000000002306C7C8

l2306C7C4:
	sub	a5,zero,a5

l2306C7C8:
	beq	a4,zero,000000002306C748

l2306C7CC:
	csrrs	zero,fflags,ra
	jal	zero,000000002306C748

l2306C7D4:
	addi	a6,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a6,000000002306C7E8

l2306C7E0:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l2306C7E8:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a3,a0,a3
	sltu	a4,zero,a4
	srl	a5,a5,a3
	jal	zero,000000002306C7C0

l2306C800:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306C7CC

l2306C80C:
	addi	a4,zero,+00000010
	jal	zero,000000002306C7CC

;; __fixunsdfsi: 2306C814
;;   Called from:
;;     23057322 (in rfc_init)
;;     23057360 (in rfc_init)
;;     2305739C (in rfc_init)
;;     230589FE (in rf_pri_rccal_iq)
__fixunsdfsi proc
	csrrs	a5,frm,sp
	lui	a4,00000100
	srli	a3,a1,00000014
	addi	a5,a4,-00000001
	andi	a3,a3,+000007FF
	addi	a2,zero,+000003FE
	and	a5,a5,a1
	srli	a1,a1,0000001F
	blt	a2,a3,000000002306C848

l2306C838:
	bne	a3,zero,000000002306C8B8

l2306C83C:
	or	a0,a5,a0
	bne	a0,zero,000000002306C8B8

l2306C844:
	jalr	zero,ra,+00000000

l2306C848:
	bne	a1,zero,000000002306C8C4

l2306C84C:
	addi	a2,zero,+0000041E
	blt	a2,a3,000000002306C8D0

l2306C854:
	addi	a2,zero,+00000433
	or	a5,a5,a4
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,000000002306C88C

l2306C868:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a0,a5,a0

l2306C880:
	beq	a4,zero,000000002306C8D8

l2306C884:
	csrrs	zero,fflags,ra
	jalr	zero,ra,+00000000

l2306C88C:
	addi	a1,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a1,000000002306C8A0

l2306C898:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l2306C8A0:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a0,a0,a3
	sltu	a4,zero,a4
	srl	a0,a5,a0
	jal	zero,000000002306C880

l2306C8B8:
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306C884

l2306C8C4:
	addi	a0,zero,+00000000

l2306C8C8:
	addi	a4,zero,+00000010
	jal	zero,000000002306C884

l2306C8D0:
	addi	a0,zero,-00000001
	jal	zero,000000002306C8C8

l2306C8D8:
	jalr	zero,ra,+00000000

;; __floatsidf: 2306C8DC
;;   Called from:
;;     2300A244 (in tcpip_stack_input)
;;     2302E418 (in print_number)
;;     23045592 (in ADC_Parse_Result)
;;     23045686 (in ADC_Parse_Result)
;;     230456DA (in ADC_Parse_Result)
;;     23045700 (in ADC_Parse_Result)
;;     2304572C (in ADC_Parse_Result)
;;     23045754 (in ADC_Parse_Result)
;;     23056504 (in pa_input)
;;     2305656E (in pa_input)
;;     23056A1A (in trpc_get_power_idx)
;;     230578CC (in rfc_config_channel)
;;     2305B13C (in phyif_utils_decode)
__floatsidf proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	beq	a0,zero,000000002306C97C

l2306C8F0:
	srai	a5,a0,0000001F
	xor	s0,a5,a0
	sub	s0,s0,a5
	srli	s1,a0,0000001F
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,000000002306C968

l2306C918:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0
	addi	a0,s1,+00000000

l2306C930:
	slli	a5,a5,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	a5,a5,0000000C
	slli	a0,a0,0000001F
	or	a5,a5,a4
	or	a4,a5,a0
	lw	ra,sp,+0000000C
	addi	a0,s0,+00000000
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	addi	a1,a4,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306C968:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	a0,s1,+00000000

l2306C974:
	addi	s0,zero,+00000000
	jal	zero,000000002306C930

l2306C97C:
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,000000002306C974

;; __floatunsidf: 2306C988
;;   Called from:
;;     2305728A (in rfc_init)
;;     230589EA (in rf_pri_rccal_iq)
;;     23059E58 (in rf_pri_get_vco_freq_cw)
;;     23059EA2 (in rf_pri_get_vco_idac_cw)
__floatunsidf proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	s0,a0,+00000000
	beq	a0,zero,000000002306CA00

l2306C99C:
	jal	ra,0000000023068C40
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,000000002306C9F0

l2306C9B0:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0

l2306C9C4:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	slli	a5,a5,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	a5,a5,0000000C
	or	a3,a5,a4
	addi	a1,a3,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306C9F0:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	s0,zero,+00000000
	jal	zero,000000002306C9C4

l2306CA00:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306C9C4

;; __extendsfdf2: 2306CA0C
;;   Called from:
;;     2300A104 (in tcpip_stack_input)
;;     2300A206 (in tcpip_stack_input)
;;     2300A27C (in tcpip_stack_input)
;;     23039F08 (in bl_tsen_adc_get)
;;     230455A6 (in ADC_Parse_Result)
;;     2304569A (in ADC_Parse_Result)
;;     23045938 (in TSEN_Get_Temp)
;;     23056656 (in pa_adapt)
;;     23056674 (in pa_adapt)
;;     23056812 (in pa_adapt)
;;     23057312 (in rfc_init)
;;     23057350 (in rfc_init)
;;     2305738A (in rfc_init)
__extendsfdf2 proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	s2,sp,+00000000
	fmv.x.w	a5,fa0
	csrrs	a4,frm,sp
	srli	a0,a5,00000017
	andi	a0,a0,+000000FF
	addi	s1,a0,+00000001
	slli	s0,a5,00000009
	andi	s1,s1,+000000FE
	srli	s0,s0,00000009
	srli	s2,a5,0000001F
	beq	s1,zero,000000002306CA9C

l2306CA48:
	srli	a5,s0,00000003
	addi	a0,a0,+00000380
	slli	s0,s0,0000001D
	addi	s1,zero,+00000000

l2306CA58:
	slli	a5,a5,0000000C
	andi	a0,a0,+000007FF
	slli	a0,a0,00000014
	srli	a5,a5,0000000C
	or	a5,a5,a0
	slli	s2,s2,0000001F
	or	a4,a5,s2
	addi	a0,s0,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,000000002306CA84

l2306CA80:
	csrrs	zero,fflags,ra

l2306CA84:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306CA9C:
	bne	a0,zero,000000002306CAE4

l2306CAA0:
	beq	s0,zero,000000002306CB10

l2306CAA4:
	addi	a0,s0,+00000000
	jal	ra,0000000023068C40
	addi	a5,zero,+0000000A
	blt	a5,a0,000000002306CAD4

l2306CAB4:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a4,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a4

l2306CAC8:
	addi	a4,zero,+00000389
	sub	a0,a4,a0
	jal	zero,000000002306CA58

l2306CAD4:
	addi	a5,a0,-0000000B
	sll	a5,s0,a5
	addi	s0,zero,+00000000
	jal	zero,000000002306CAC8

l2306CAE4:
	addi	a5,zero,+00000000
	beq	s0,zero,000000002306CB08

l2306CAEC:
	slli	a5,s0,00000009
	blt	a5,zero,000000002306CAF8

l2306CAF4:
	addi	s1,zero,+00000010

l2306CAF8:
	srli	a5,s0,00000003
	lui	a4,00000080
	slli	s0,s0,0000001D
	or	a5,a5,a4

l2306CB08:
	addi	a0,zero,+000007FF
	jal	zero,000000002306CA58

l2306CB10:
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	jal	zero,000000002306CA58

;; __truncdfsf2: 2306CB1C
;;   Called from:
;;     230455B6 (in ADC_Parse_Result)
;;     230456AA (in ADC_Parse_Result)
;;     23045948 (in TSEN_Get_Temp)
;;     23056518 (in pa_input)
;;     2305669C (in pa_adapt)
__truncdfsf2 proc
	csrrs	a7,frm,sp
	slli	a4,a1,0000000C
	srli	t1,a1,00000014
	srli	a4,a4,0000000C
	slli	a4,a4,00000003
	andi	t1,t1,+000007FF
	srli	a3,a0,0000001D
	or	a3,a3,a4
	addi	a4,t1,+00000001
	andi	a4,a4,+000007FE
	srli	a1,a1,0000001F
	slli	a5,a0,00000003
	beq	a4,zero,000000002306CD20

l2306CB50:
	addi	a6,t1,-00000380
	addi	a4,zero,+000000FE
	bge	a4,a6,000000002306CC2C

l2306CB5C:
	beq	a7,zero,000000002306CBBC

l2306CB60:
	addi	a5,zero,+00000003
	bne	a7,a5,000000002306CBB0

l2306CB68:
	beq	a1,zero,000000002306CBBC

l2306CB6C:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	addi	a4,zero,+00000000
	addi	a2,zero,+00000005

l2306CB7C:
	addi	a3,zero,+00000002
	ori	a2,a2,+00000001
	beq	a7,a3,000000002306CDB8

l2306CB88:
	addi	a3,zero,+00000003
	beq	a7,a3,000000002306CDAC

l2306CB90:
	bne	a7,zero,000000002306CBA4

l2306CB94:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,000000002306CBA4

l2306CBA0:
	addi	a5,a5,+00000004

l2306CBA4:
	beq	a4,zero,000000002306CBC8

l2306CBA8:
	ori	a2,a2,+00000002
	jal	zero,000000002306CBC8

l2306CBB0:
	addi	a5,zero,+00000002
	bne	a7,a5,000000002306CB6C

l2306CBB8:
	beq	a1,zero,000000002306CB6C

l2306CBBC:
	addi	a5,zero,+00000000
	addi	a6,zero,+000000FF
	addi	a2,zero,+00000005

l2306CBC8:
	slli	a4,a5,00000005
	bge	a4,zero,000000002306CBE8

l2306CBD0:
	addi	a6,a6,+00000001
	addi	a4,zero,+000000FF
	beq	a6,a4,000000002306CDC0

l2306CBDC:
	lui	a4,000FC000
	addi	a4,a4,-00000001
	and	a5,a5,a4

l2306CBE8:
	addi	a4,zero,+000000FF
	srli	a5,a5,00000003
	bne	a6,a4,000000002306CC00

l2306CBF4:
	beq	a5,zero,000000002306CC00

l2306CBF8:
	lui	a5,00000400
	addi	a1,zero,+00000000

l2306CC00:
	slli	a5,a5,00000009
	andi	a6,a6,+000000FF
	slli	a6,a6,00000017
	srli	a5,a5,00000009
	slli	a1,a1,0000001F
	or	a5,a5,a6
	or	a5,a5,a1
	beq	a2,zero,000000002306CC24

l2306CC20:
	csrrs	zero,fflags,ra

l2306CC24:
	fmv.w.x	fa0,a5
	jalr	zero,ra,+00000000

l2306CC2C:
	blt	zero,a6,000000002306CCEC

l2306CC30:
	addi	a4,zero,-00000017
	blt	a6,a4,000000002306CD64

l2306CC38:
	lui	a4,00000800
	addi	a2,zero,+0000001E
	or	a3,a3,a4
	sub	a2,a2,a6
	addi	a4,zero,+0000001F
	blt	a4,a2,000000002306CCBC

l2306CC50:
	addi	t1,t1,-0000037E
	srl	a2,a5,a2
	sll	a5,a5,t1
	sltu	a5,zero,a5
	sll	a3,a3,t1
	or	a3,a5,a3
	or	a5,a2,a3

l2306CC6C:
	beq	a5,zero,000000002306CDA0

l2306CC70:
	slli	a4,a5,00000001
	andi	a3,a4,+00000007
	addi	a2,zero,+00000000
	beq	a3,zero,000000002306CCA8

l2306CC80:
	addi	a3,zero,+00000002
	beq	a7,a3,000000002306CD80

l2306CC88:
	addi	a3,zero,+00000003
	beq	a7,a3,000000002306CD6C

l2306CC90:
	addi	a2,zero,+00000001
	bne	a7,zero,000000002306CCA8

l2306CC98:
	andi	a3,a4,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,000000002306CCA8

l2306CCA4:
	addi	a4,a4,+00000004

l2306CCA8:
	srli	a4,a4,0000001B
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001
	addi	a6,zero,+00000000
	jal	zero,000000002306CD0C

l2306CCBC:
	addi	a4,zero,-00000002
	sub	a6,a4,a6
	addi	a0,zero,+00000020
	srl	a6,a3,a6
	addi	a4,zero,+00000000
	beq	a2,a0,000000002306CCDC

l2306CCD4:
	addi	t1,t1,-0000035E
	sll	a4,a3,t1

l2306CCDC:
	or	a5,a4,a5
	sltu	a5,zero,a5
	or	a5,a6,a5
	jal	zero,000000002306CC6C

l2306CCEC:
	slli	a0,a0,00000006
	sltu	a0,zero,a0
	slli	a3,a3,00000003
	srli	a5,a5,0000001D
	or	a3,a0,a3
	or	a5,a3,a5
	addi	a4,zero,+00000000
	addi	a2,zero,+00000000

l2306CD0C:
	andi	a3,a5,+00000007
	bne	a3,zero,000000002306CB7C

l2306CD14:
	beq	a4,zero,000000002306CBC8

l2306CD18:
	andi	a4,a2,+00000001
	jal	zero,000000002306CBA4

l2306CD20:
	or	a5,a3,a5
	bne	t1,zero,000000002306CD30

l2306CD28:
	sltu	a5,zero,a5
	jal	zero,000000002306CC6C

l2306CD30:
	beq	a5,zero,000000002306CD94

l2306CD34:
	addi	a5,zero,+000007FF
	addi	a2,zero,+00000000
	bne	t1,a5,000000002306CD50

l2306CD40:
	lui	a2,00000400
	and	a2,a3,a2
	sltiu	a2,a2,+00000001
	slli	a2,a2,00000004

l2306CD50:
	slli	a3,a3,00000003
	lui	a5,00002000
	or	a5,a3,a5
	addi	a6,zero,+000000FF
	jal	zero,000000002306CD0C

l2306CD64:
	addi	a5,zero,+00000001
	jal	zero,000000002306CC70

l2306CD6C:
	addi	a2,a1,+00000000
	bne	a1,zero,000000002306CCA8

l2306CD74:
	addi	a4,a4,+00000008
	addi	a2,zero,+00000001
	jal	zero,000000002306CCA8

l2306CD80:
	addi	a2,zero,+00000001
	beq	a1,zero,000000002306CCA8

l2306CD88:
	addi	a4,a4,+00000008
	addi	a2,a1,+00000000
	jal	zero,000000002306CCA8

l2306CD94:
	addi	a2,zero,+00000000
	addi	a6,zero,+000000FF
	jal	zero,000000002306CBC8

l2306CDA0:
	addi	a6,zero,+00000000
	addi	a2,zero,+00000000
	jal	zero,000000002306CBC8

l2306CDAC:
	bne	a1,zero,000000002306CBA4

l2306CDB0:
	addi	a5,a5,+00000008
	jal	zero,000000002306CBA4

l2306CDB8:
	beq	a1,zero,000000002306CBA4

l2306CDBC:
	jal	zero,000000002306CDB0

l2306CDC0:
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306CDEC

l2306CDC8:
	addi	a4,zero,+00000003
	bne	a7,a4,000000002306CDE0

l2306CDD0:
	beq	a1,zero,000000002306CDEC

l2306CDD4:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	jal	zero,000000002306CDEC

l2306CDE0:
	addi	a4,zero,+00000002
	bne	a7,a4,000000002306CDD4

l2306CDE8:
	beq	a1,zero,000000002306CDD4

l2306CDEC:
	ori	a2,a2,+00000005
	jal	zero,000000002306CBE8

;; atoi: 2306CDF4
;;   Called from:
;;     230067CC (in cmd_wifi_cfg)
;;     230067E2 (in cmd_wifi_cfg)
;;     23006820 (in cmd_wifi_cfg)
;;     2300682A (in cmd_wifi_cfg)
;;     2300697C (in cmd_wifi_ap_start)
;;     23006C2E (in cmd_wifi_ap_conf_max_sta)
;;     23006C8E (in wifi_rc_fixed_enable)
;;     23006C9A (in wifi_rc_fixed_enable)
;;     23006CA6 (in wifi_rc_fixed_enable)
;;     23006EE8 (in wifi_capcode_cmd)
;;     23024A24 (in ble_auth_passkey)
atoi proc
	addi	a2,zero,+0000000A
	addi	a1,zero,+00000000
	jal	zero,000000002306E1E0

;; _atoi_r: 2306CE00
_atoi_r proc
	addi	a3,zero,+0000000A
	addi	a2,zero,+00000000
	jal	zero,000000002306E1C0

;; __errno: 2306CE0C
;;   Called from:
;;     230023F4 (in aos_loop_run)
;;     2306E2D8 (in _stat)
__errno proc
	auipc	a5,0001EFA1
	addi	a5,a5,-00000144
	lw	a0,a5,+00000000
	jalr	zero,ra,+00000000

;; memchr: 2306CE1C
;;   Called from:
;;     2302C38C (in fdt_get_string)
;;     2302C4C8 (in fdt_subnode_offset_namelen)
memchr proc
	andi	a5,a0,+00000003
	andi	a6,a1,+000000FF
	beq	a5,zero,000000002306CEF0

l2306CE28:
	addi	a5,a2,-00000001
	beq	a2,zero,000000002306CE88

l2306CE30:
	lbu	a4,a0,+00000000
	beq	a4,a6,000000002306CE8C

l2306CE38:
	addi	a3,zero,-00000001
	jal	zero,000000002306CE50

l2306CE40:
	addi	a5,a5,-00000001
	beq	a5,a3,000000002306CE88

l2306CE48:
	lbu	a4,a0,+00000000
	beq	a4,a6,000000002306CE8C

l2306CE50:
	addi	a0,a0,+00000001
	andi	a4,a0,+00000003
	bne	a4,zero,000000002306CE40

l2306CE5C:
	addi	a4,zero,+00000003
	bltu	a4,a5,000000002306CE90

l2306CE64:
	beq	a5,zero,000000002306CE88

l2306CE68:
	lbu	a4,a0,+00000000
	beq	a4,a6,000000002306CE8C

l2306CE70:
	add	a5,a0,a5
	jal	zero,000000002306CE80

l2306CE78:
	lbu	a4,a0,+00000000
	beq	a4,a6,000000002306CE8C

l2306CE80:
	addi	a0,a0,+00000001
	bne	a5,a0,000000002306CE78

l2306CE88:
	addi	a0,zero,+00000000

l2306CE8C:
	jalr	zero,ra,+00000000

l2306CE90:
	lui	a4,00000010
	slli	a7,a1,00000008
	addi	a4,a4,-00000001
	and	a7,a7,a4
	andi	a1,a1,+000000FF
	or	a1,a7,a1
	slli	a7,a1,00000010
	or	a7,a7,a1
	lui	a2,00080808
	lui	a1,000FEFF0
	addi	a1,a1,-00000101
	addi	a2,a2,+00000080
	addi	t1,zero,+00000003

l2306CEC4:
	lw	a4,a0,+00000000
	xor	a4,a7,a4
	add	a3,a4,a1
	xori	a4,a4,-00000001
	and	a4,a3,a4
	and	a4,a4,a2
	bne	a4,zero,000000002306CE68

l2306CEE0:
	addi	a5,a5,-00000004
	addi	a0,a0,+00000004
	bltu	t1,a5,000000002306CEC4

l2306CEEC:
	jal	zero,000000002306CE64

l2306CEF0:
	addi	a5,a2,+00000000
	jal	zero,000000002306CE5C

;; memcmp: 2306CEF8
;;   Called from:
;;     2300468C (in stateGlobalGuard_scan_beacon)
;;     2300A334 (in bl_utils_idx_lookup)
;;     2301CC74 (in id_find)
;;     2301CF10 (in set_random_address)
;;     2301D3D4 (in bt_unpair)
;;     2301D810 (in id_create.isra.25)
;;     2301E92A (in bt_id_create)
;;     2301EAD0 (in init_work)
;;     2301EAF0 (in init_work)
;;     2301EEA8 (in bt_le_adv_start_internal)
;;     23022B70 (in smp_public_key)
;;     23022E2E (in smp_pairing_random)
;;     230231B8 (in bt_smp_request_ltk)
;;     230231CC (in bt_smp_request_ltk)
;;     230232C8 (in bt_smp_sign_verify)
;;     230238F0 (in bt_keys_find_addr.part.2)
;;     23023900 (in bt_keys_find_addr.part.2)
;;     23023956 (in bt_keys_find.part.1)
;;     23023976 (in bt_keys_find.part.1)
;;     230239C8 (in bt_keys_get_addr)
;;     230239DE (in bt_keys_get_addr)
;;     23023A00 (in bt_keys_get_addr)
;;     23023A1E (in bt_keys_get_addr)
;;     23023A5A (in bt_keys_get_addr)
;;     23023BBA (in bt_keys_find_irk)
;;     23023BDA (in bt_keys_find_irk)
;;     23025D92 (in bt_rpa_irk_matches)
;;     2302638C (in bl_find_valid_queued_entry)
;;     2302732C (in bt_conn_addr_le_cmp)
;;     2302734C (in bt_conn_addr_le_cmp)
;;     23027F6A (in find_ccc_cfg)
;;     23027FC6 (in find_ccc_cfg)
;;     23028350 (in find_sc_cfg)
;;     230286DE (in notify_cb)
;;     2302A3FA (in bt_uuid_cmp)
;;     2302AEA2 (in find_type_cb)
;;     2302C4B2 (in fdt_subnode_offset_namelen)
;;     2302C5D0 (in fdt_get_property_namelen_)
;;     2302F622 (in ls_cmd)
;;     2303755E (in vfs_uart_init)
;;     230379B6 (in vfs_uart_init)
;;     23037E20 (in hal_gpio_init_from_dts)
;;     23037EFE (in hal_gpio_init_from_dts)
;;     23037F34 (in hal_gpio_init_from_dts)
;;     23037F6C (in hal_gpio_init_from_dts)
;;     2303801E (in hal_gpio_init_from_dts)
;;     2303806A (in hal_gpio_init_from_dts)
;;     23042B28 (in ethernet_input)
;;     2304365A (in dhcp_server_recv)
;;     230437EA (in dhcp_server_recv)
;;     2304389E (in dhcp_server_recv)
;;     230438C8 (in dhcp_server_recv)
;;     23043D3A (in file_info)
;;     23043D94 (in file_info)
;;     2304404C (in dirent_file)
;;     23044698 (in romfs_register)
;;     2304C0A2 (in rxu_cntrl_frame_handle)
;;     2304C26A (in rxu_cntrl_frame_handle)
;;     2304C546 (in rxu_cntrl_frame_handle)
;;     2304C618 (in rxu_cntrl_frame_handle)
;;     2304CAEA (in scanu_frame_handler)
;;     2304D14C (in scanu_search_by_ssid)
;;     2304D1C0 (in scanu_rm_exist_ssid)
;;     2304EF76 (in _aid_list_delete)
;;     2304F9F4 (in apm_probe_req_handler)
;;     2304FC42 (in apm_assoc_req_handler)
;;     2304FE8E (in apm_assoc_req_handler)
;;     23051E0E (in process_rsn_ie)
;;     23051E7A (in process_rsn_ie)
;;     23051EF6 (in process_rsn_ie)
;;     23051F14 (in process_rsn_ie)
;;     23051F62 (in process_rsn_ie)
;;     23051F82 (in process_rsn_ie)
;;     23051FAC (in process_rsn_ie)
;;     23051FC8 (in process_rsn_ie)
;;     23051FE4 (in process_rsn_ie)
;;     23052000 (in process_rsn_ie)
;;     2305205C (in process_wpa_ie)
;;     23052080 (in process_wpa_ie)
;;     2305209E (in process_wpa_ie)
;;     230520D8 (in process_wpa_ie)
;;     230520F4 (in process_wpa_ie)
;;     23052110 (in process_wpa_ie)
;;     2305212C (in process_wpa_ie)
;;     23052596 (in IsEAPOL_MICValid)
;;     23052722 (in parseKeyKDE)
;;     23052A22 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23052BC8 (in supplicantAkmIsWpaWpa2)
;;     23052BEA (in supplicantAkmIsWpaWpa2)
;;     23052C4A (in supplicantAkmIsWpa2)
;;     23052DBC (in supplicantConstructContext)
;;     23052DE0 (in supplicantConstructContext)
;;     23053AD4 (in pmkCacheFindPSKElement)
;;     2305C27C (in chan_ctxt_add)
;;     2306DA64 (in two_way_long_needle)
;;     2306DEA4 (in strstr)
memcmp proc
	addi	a5,zero,+00000003
	bgeu	a5,a2,000000002306CF2C

l2306CF00:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	addi	a3,zero,+00000003
	bne	a5,zero,000000002306CF70

l2306CF10:
	lw	a4,a0,+00000000
	lw	a5,a1,+00000000
	bne	a4,a5,000000002306CF70

l2306CF1C:
	addi	a2,a2,-00000004
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	a3,a2,000000002306CF10

l2306CF2C:
	addi	a5,a2,-00000001
	beq	a2,zero,000000002306CF68

l2306CF34:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	bne	a4,a3,000000002306CF78

l2306CF40:
	addi	a4,a5,+00000001
	addi	a5,a0,+00000001
	add	a0,a0,a4
	jal	zero,000000002306CF60

l2306CF50:
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	addi	a5,a5,+00000001
	bne	a4,a3,000000002306CF78

l2306CF60:
	addi	a1,a1,+00000001
	bne	a5,a0,000000002306CF50

l2306CF68:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306CF70:
	addi	a5,a2,-00000001
	jal	zero,000000002306CF34

l2306CF78:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

;; memcpy: 2306CF80
;;   Called from:
;;     23000BB6 (in scan_item_cb)
;;     23000BC2 (in scan_item_cb)
;;     23000C4A (in wifiprov_wifi_state_get)
;;     23000C56 (in wifiprov_wifi_state_get)
;;     23002130 (in inode_reserve)
;;     230022B6 (in aos_poll_read_fd)
;;     230022CA (in aos_poll_read_fd)
;;     230029A6 (in _event_write.isra.0)
;;     23002ACE (in event_read)
;;     2300463A (in stateGlobalGuard_scan_beacon)
;;     2300533C (in wifi_mgmr_ap_sta_info_get_internal)
;;     23005406 (in wifi_mgmr_api_connect)
;;     2300542A (in wifi_mgmr_api_connect)
;;     2300548E (in wifi_mgmr_api_connect)
;;     230054B0 (in wifi_mgmr_api_connect)
;;     230055DC (in wifi_mgmr_api_cfg_req)
;;     23005B90 (in wifi_mgmr_api_scan_item_beacon)
;;     23005BBC (in wifi_mgmr_api_scan_item_beacon)
;;     23005E7A (in wifi_mgmr_api_ap_start)
;;     23005EAA (in wifi_mgmr_api_ap_start)
;;     2300612A (in cmd_wifi_power_table_update)
;;     23007136 (in wifi_mgmr_sta_enable)
;;     23007178 (in wifi_mgmr_sta_enable)
;;     230072F6 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     2300731E (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23007334 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     230073E0 (in wifi_mgmr_sta_ssid_set)
;;     23007412 (in wifi_mgmr_sta_psk_set)
;;     23007492 (in wifi_mgmr_ap_enable)
;;     230074D6 (in wifi_mgmr_ap_enable)
;;     230075AA (in wifi_mgmr_ap_sta_info_get)
;;     23007722 (in wifi_mgmr_scan_ap_all)
;;     2300773A (in wifi_mgmr_scan_ap_all)
;;     2300786E (in wifi_mgmr_profile_add)
;;     2300787E (in wifi_mgmr_profile_add)
;;     2300788E (in wifi_mgmr_profile_add)
;;     2300789C (in wifi_mgmr_profile_add)
;;     23007972 (in wifi_mgmr_profile_get)
;;     23007984 (in wifi_mgmr_profile_get)
;;     23007996 (in wifi_mgmr_profile_get)
;;     230079A6 (in wifi_mgmr_profile_get)
;;     23007F9E (in bl_main_apm_sta_info_get)
;;     230089D4 (in bl_send_start)
;;     23008A38 (in bl_send_add_if)
;;     23008CC6 (in bl_send_sm_connect_req)
;;     23008DA2 (in bl_send_sm_connect_req)
;;     23008DF4 (in bl_send_sm_connect_req)
;;     23008E06 (in bl_send_sm_connect_req)
;;     23008F2C (in bl_send_apm_start_req)
;;     23008FD6 (in bl_send_apm_start_req)
;;     23008FE8 (in bl_send_apm_start_req)
;;     23009004 (in bl_send_apm_start_req)
;;     23009354 (in bl_rx_apm_sta_add_ind)
;;     230097FC (in bl_rx_scanu_result_ind)
;;     23009872 (in bl_rx_scanu_result_ind)
;;     230098BA (in bl_rx_scanu_result_ind)
;;     23009DE0 (in bl_output)
;;     23009DEE (in bl_output)
;;     2300A7CE (in ipc_host_init)
;;     2300AAF4 (in cmd_mgr_msgind)
;;     2300F71A (in llc_map_update_ind)
;;     2301610C (in llm_init)
;;     23018874 (in llcp_channel_map_ind_handler)
;;     2301BE68 (in hci_le_set_host_ch_class_cmd_handler)
;;     2301C4A0 (in bt_addr_le_copy)
;;     2301C4DC (in le_pkey_complete)
;;     2301C5B8 (in le_remote_feat_complete)
;;     2301CF4C (in set_random_address)
;;     2301CFCE (in hci_id_add)
;;     2301D26E (in set_ad)
;;     2301DDF4 (in le_ltk_request)
;;     2301E09A (in enh_conn_complete)
;;     2301E2BC (in le_legacy_conn_complete)
;;     2301E2EA (in le_legacy_conn_complete)
;;     2301E31E (in le_legacy_conn_complete)
;;     2301EA3E (in init_work)
;;     2301EAFE (in init_work)
;;     2301EB30 (in init_work)
;;     2301EB8A (in init_work)
;;     2301F530 (in bt_dh_key_gen)
;;     2301FD70 (in l2cap_chan_le_send_sdu)
;;     23020106 (in l2cap_chan_le_recv_seg)
;;     23020150 (in l2cap_chan_le_recv_seg)
;;     23020B4E (in smp_sign_buf)
;;     23020B60 (in smp_sign_buf)
;;     23020DA0 (in smp_f6)
;;     23020DC4 (in smp_f6)
;;     23020E5E (in smp_g2)
;;     230210EC (in smp_ident_info)
;;     23021158 (in smp_encrypt_info)
;;     230215A6 (in sc_smp_send_dhkey_check)
;;     23021882 (in smp_dhkey_check)
;;     230218D2 (in smp_send_pairing_random)
;;     23021922 (in sc_send_public_key)
;;     23021934 (in sc_send_public_key)
;;     23021978 (in send_pairing_rsp)
;;     23021A4A (in bt_smp_distribute_keys)
;;     23021A94 (in bt_smp_distribute_keys)
;;     23021A9E (in bt_smp_distribute_keys)
;;     23021ACC (in bt_smp_distribute_keys)
;;     23021AD8 (in bt_smp_distribute_keys)
;;     23021AE4 (in bt_smp_distribute_keys)
;;     23021B14 (in bt_smp_distribute_keys)
;;     23021B90 (in smp_signing_info)
;;     23021C2A (in smp_master_ident)
;;     23021C38 (in smp_master_ident)
;;     23021DD4 (in smp_send_pairing_req)
;;     23021F5A (in smp_pairing_req)
;;     23022246 (in bt_smp_dhkey_ready)
;;     23022556 (in smp_c1)
;;     23022564 (in smp_c1)
;;     230225A0 (in smp_c1)
;;     230225AE (in smp_c1)
;;     230226D8 (in smp_pairing_confirm)
;;     230227C6 (in smp_pairing_rsp)
;;     23022A0E (in smp_ident_addr_info)
;;     23022A30 (in smp_ident_addr_info)
;;     23022A3A (in smp_ident_addr_info)
;;     23022B4E (in smp_public_key)
;;     23022B5E (in smp_public_key)
;;     23022DD4 (in smp_pairing_random)
;;     23022E46 (in smp_pairing_random)
;;     23022E50 (in smp_pairing_random)
;;     23022EB0 (in smp_pairing_random)
;;     23022EBA (in smp_pairing_random)
;;     23022ED0 (in smp_pairing_random)
;;     23023100 (in bt_smp_request_ltk)
;;     2302317C (in bt_smp_request_ltk)
;;     230231E2 (in bt_smp_request_ltk)
;;     2302323C (in bt_smp_sign_verify)
;;     23023288 (in bt_smp_sign_verify)
;;     2302334E (in bt_smp_sign)
;;     230233D4 (in bt_smp_auth_passkey_entry)
;;     2302383E (in bt_smp_update_keys)
;;     23023A92 (in bt_keys_get_addr)
;;     23023C4C (in bt_keys_find_irk)
;;     23024878 (in read_func)
;;     230248CE (in data_cb)
;;     23025890 (in net_buf_simple_add_mem)
;;     23025D66 (in bt_rpa_irk_matches)
;;     23025D88 (in bt_rpa_irk_matches)
;;     23026332 (in _copy)
;;     230264A4 (in bl_onchiphci_rx_packet_handler)
;;     23026BE6 (in bt_conn_le_start_encryption)
;;     23026BF2 (in bt_conn_le_start_encryption)
;;     23026BFE (in bt_conn_le_start_encryption)
;;     2302709A (in bt_conn_add_le)
;;     230277FC (in bt_conn_create_le)
;;     23027824 (in bt_conn_create_le)
;;     2302801E (in gatt_notify)
;;     23028196 (in gatt_indicate)
;;     230282E4 (in disconnected_cb)
;;     23028308 (in disconnected_cb)
;;     2302842A (in read_appearance)
;;     23028468 (in read_ppcp)
;;     230284BA (in read_name)
;;     2302850E (in bt_gatt_attr_read_ccc)
;;     23028552 (in bt_gatt_attr_read_service)
;;     230285D2 (in sc_save)
;;     2302887C (in bt_gatt_attr_write_ccc)
;;     230288B6 (in bt_gatt_attr_write_ccc)
;;     230289BA (in bt_gatt_attr_read)
;;     23028A70 (in bt_gatt_attr_read_chrc)
;;     23028A8C (in bt_gatt_attr_read_chrc)
;;     23028B40 (in bt_gatt_foreach_attr_type)
;;     230295CE (in gatt_read_group_rsp)
;;     23029864 (in gatt_read_type_rsp)
;;     230298D0 (in read_included_uuid_cb)
;;     23029A50 (in gatt_find_info_rsp)
;;     23029D66 (in bt_gatt_write_without_response_cb)
;;     23029E42 (in bt_gatt_write)
;;     23029EB2 (in bt_gatt_write)
;;     23029FA6 (in bt_gatt_subscribe)
;;     2302A332 (in bt_gatt_disconnected)
;;     2302A37A (in uuid_to_uuid128)
;;     2302A39A (in uuid_to_uuid128)
;;     2302A3CA (in uuid_to_uuid128)
;;     2302A496 (in bt_uuid_create)
;;     2302A4FC (in bt_uuid_to_str)
;;     2302A508 (in bt_uuid_to_str)
;;     2302A516 (in bt_uuid_to_str)
;;     2302A522 (in bt_uuid_to_str)
;;     2302A530 (in bt_uuid_to_str)
;;     2302A53C (in bt_uuid_to_str)
;;     2302A864 (in tc_aes128_set_encrypt_key)
;;     2302AF1E (in find_info_cb)
;;     2302D136 (in scan_complete_cb)
;;     2302D20E (in __recv_event)
;;     2302D5EA (in wifi_state_get_cb)
;;     2302D652 (in write_data)
;;     2302D746 (in __ble_bytes_send)
;;     2302DD3C (in __protocol_send)
;;     2302DE0C (in pro_trans_read)
;;     2302E052 (in pro_trans_layer_ack_read)
;;     2302E1D6 (in __payload_write)
;;     2302E210 (in __payload_write)
;;     2302E24E (in __payload_read)
;;     2302E33E (in ensure)
;;     2302E37A (in cJSON_strdup)
;;     2302E944 (in print_array.isra.4)
;;     2302EE0E (in print_object.isra.3)
;;     2303014E (in cli_main_input)
;;     23030414 (in cli_main_input)
;;     23032218 (in prvCopyDataToQueue)
;;     23032242 (in prvCopyDataToQueue)
;;     230322A2 (in prvCopyDataFromQueue)
;;     23032CB8 (in prvWriteBytesToBuffer)
;;     23032CD0 (in prvWriteBytesToBuffer)
;;     23032D1A (in prvWriteBytesToBuffer)
;;     23032D36 (in prvWriteBytesToBuffer)
;;     23032D7E (in prvReadBytesFromBuffer)
;;     23032D94 (in prvReadBytesFromBuffer)
;;     23035D32 (in bl_uart_init)
;;     23035F3A (in bl_uart_setconfig)
;;     230360A0 (in bl_chip_info)
;;     230360B2 (in bl_chip_info)
;;     230360FE (in bl_chip_info)
;;     23036D18 (in bl_rand_stream)
;;     23036EAC (in bl_wifi_sta_mac_addr_set)
;;     23036EC8 (in bl_wifi_ap_mac_addr_set)
;;     23036EE2 (in bl_wifi_mac_addr_get)
;;     23036F2A (in bl_wifi_ap_info_set)
;;     23036F3C (in bl_wifi_ap_info_set)
;;     23036F94 (in bl_wifi_sta_info_set)
;;     23036FA6 (in bl_wifi_sta_info_set)
;;     23037426 (in vfs_uart_init)
;;     23038454 (in hal_board_cfg)
;;     23038840 (in hal_board_cfg)
;;     23038930 (in hal_board_cfg)
;;     23038FA0 (in hal_board_cfg)
;;     230390AE (in hal_board_cfg)
;;     2303917C (in hal_board_cfg)
;;     23039C28 (in hal_board_cfg)
;;     23039CB0 (in hal_board_cfg)
;;     23039D92 (in hal_board_cfg)
;;     23039E1A (in hal_board_cfg)
;;     23039E7C (in bl_tsen_adc_get)
;;     2303C678 (in etharp_raw)
;;     2303C684 (in etharp_raw)
;;     2303C690 (in etharp_raw)
;;     2303C69C (in etharp_raw)
;;     2303C7CA (in etharp_input)
;;     2303C7D6 (in etharp_input)
;;     2303C83A (in etharp_input)
;;     2303D56A (in ip4_output_if_opt_src)
;;     2303E846 (in pbuf_copy)
;;     2303E91E (in pbuf_copy_partial)
;;     2303E976 (in pbuf_take)
;;     2303E9D8 (in pbuf_take_at)
;;     2303ED10 (in tcp_seg_copy)
;;     23042BA8 (in ethernet_output)
;;     23042BB4 (in ethernet_output)
;;     230432BE (in icmp_input)
;;     2304343C (in icmp_dest_unreach)
;;     230434F0 (in dhcp_client_find_by_ip.isra.0)
;;     2304367A (in dhcp_server_recv)
;;     230436B6 (in dhcp_server_recv)
;;     230436E8 (in dhcp_server_recv)
;;     23043716 (in dhcp_server_recv)
;;     23043736 (in dhcp_server_recv)
;;     2304374C (in dhcp_server_recv)
;;     23043764 (in dhcp_server_recv)
;;     2304377C (in dhcp_server_recv)
;;     2304381A (in dhcp_server_recv)
;;     2304387A (in dhcp_server_recv)
;;     23043918 (in dhcp_server_recv)
;;     2304394A (in dhcp_server_recv)
;;     23043AA8 (in dhcpd_start)
;;     23043C98 (in romfs_read)
;;     23043CC2 (in romfs_read)
;;     230441CA (in dirent_file)
;;     23046B8E (in mfg_flash_read_macaddr)
;;     230473E4 (in mm_hw_config_handler)
;;     23047C70 (in ps_send_pspoll)
;;     23047C7E (in ps_send_pspoll)
;;     23048E80 (in sta_mgmt_register)
;;     2304A308 (in txl_frame_get)
;;     2304A5AA (in txl_frame_send_null_frame)
;;     2304A5B8 (in txl_frame_send_null_frame)
;;     2304A5C4 (in txl_frame_send_null_frame)
;;     2304A6B6 (in txl_frame_send_qosnull_frame)
;;     2304A6C6 (in txl_frame_send_qosnull_frame)
;;     2304A6E2 (in txl_frame_send_qosnull_frame)
;;     2304A992 (in txl_frame_send_eapol_frame)
;;     2304AA60 (in txl_frame_send_eapol_frame)
;;     2304AB8E (in txl_frame_send_eapol_frame)
;;     2304ABB4 (in txl_frame_send_eapol_frame)
;;     2304AD60 (in vif_mgmt_register)
;;     2304C064 (in rxu_cntrl_frame_handle)
;;     2304C48A (in rxu_cntrl_frame_handle)
;;     2304CBB2 (in scanu_frame_handler)
;;     2304CE8A (in scanu_frame_handler)
;;     2304CF46 (in scanu_frame_handler)
;;     2304D02A (in scanu_frame_handler)
;;     2304D432 (in scanu_scan_next)
;;     2304D44A (in scanu_scan_next)
;;     2304D7AE (in sm_scan_bss)
;;     2304D7CC (in sm_scan_bss)
;;     2304D7D8 (in sm_scan_bss)
;;     2304D85C (in sm_scan_bss)
;;     2304D8AA (in sm_join_bss)
;;     2304D8BC (in sm_join_bss)
;;     2304D8DC (in sm_join_bss)
;;     2304DA64 (in sm_set_bss_param)
;;     2304DC62 (in sm_disconnect)
;;     2304DC70 (in sm_disconnect)
;;     2304DC7C (in sm_disconnect)
;;     2304DD56 (in sm_connect_ind)
;;     2304DF22 (in sm_auth_send)
;;     2304DF30 (in sm_auth_send)
;;     2304DF3C (in sm_auth_send)
;;     2304E0C4 (in sm_assoc_req_send)
;;     2304E0DC (in sm_assoc_req_send)
;;     2304E0E8 (in sm_assoc_req_send)
;;     2304E5A6 (in sm_handle_supplicant_result)
;;     2304E5B4 (in sm_handle_supplicant_result)
;;     2304E5C0 (in sm_handle_supplicant_result)
;;     2304E7E8 (in txu_cntrl_sechdr_len_compute)
;;     2304E81E (in txu_cntrl_sechdr_len_compute)
;;     2304F184 (in apm_start_cfm)
;;     2304F2E0 (in apm_set_bss_param)
;;     2304F72E (in apm_sta_add)
;;     2304F7C2 (in apm_send_mlme)
;;     2304F7D2 (in apm_send_mlme)
;;     2304F7DE (in apm_send_mlme)
;;     2304F96A (in apm_bcn_set)
;;     2304F998 (in apm_bcn_set)
;;     2304FB6C (in apm_assoc_req_handler)
;;     2304FEDC (in apm_assoc_req_handler)
;;     23050E84 (in keyMgmtSta_StartSession)
;;     23050E92 (in keyMgmtSta_StartSession)
;;     23051004 (in supplicantInitSession)
;;     2305115C (in supplicantEnable)
;;     2305116A (in supplicantEnable)
;;     2305118A (in supplicantEnable)
;;     230511E4 (in supplicantEnable)
;;     230511F2 (in supplicantEnable)
;;     23051652 (in add_key_to_mac)
;;     23051952 (in add_mfp_key_to_mac)
;;     230519E2 (in keyMgmtPlumbPairwiseKey)
;;     23051E1A (in process_rsn_ie)
;;     23051E26 (in process_rsn_ie)
;;     23051E32 (in process_rsn_ie)
;;     23051E62 (in process_rsn_ie)
;;     23051E88 (in process_rsn_ie)
;;     23051E94 (in process_rsn_ie)
;;     23051EDC (in process_rsn_ie)
;;     23052068 (in process_wpa_ie)
;;     23052074 (in process_wpa_ie)
;;     23052326 (in isApReplayCounterFresh)
;;     23052332 (in isApReplayCounterFresh)
;;     23052408 (in updateApReplayCounter)
;;     23052414 (in updateApReplayCounter)
;;     230524D0 (in formEAPOLEthHdr)
;;     230524DC (in formEAPOLEthHdr)
;;     2305255A (in IsEAPOL_MICValid)
;;     23052834 (in parseKeyDataGTK)
;;     2305284C (in parseKeyDataGTK)
;;     23052858 (in parseKeyDataGTK)
;;     23052862 (in parseKeyDataGTK)
;;     23052B44 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23052DCA (in supplicantConstructContext)
;;     23052DD4 (in supplicantConstructContext)
;;     23052DF8 (in supplicantConstructContext)
;;     23052E04 (in supplicantConstructContext)
;;     23052E3E (in supplicantConstructContext)
;;     23052E4C (in supplicantConstructContext)
;;     23052FAA (in KeyMgmtSta_DeriveKeys)
;;     23052FB4 (in KeyMgmtSta_DeriveKeys)
;;     23052FBE (in KeyMgmtSta_DeriveKeys)
;;     23052FCA (in KeyMgmtSta_DeriveKeys)
;;     23052FD6 (in KeyMgmtSta_DeriveKeys)
;;     230530E8 (in GetKeyMsgNonceFromEAPOL)
;;     230532AA (in ProcessRxEAPOL_GrpMsg1)
;;     230532B8 (in ProcessRxEAPOL_GrpMsg1)
;;     230532C6 (in ProcessRxEAPOL_GrpMsg1)
;;     230532D0 (in ProcessRxEAPOL_GrpMsg1)
;;     23053496 (in bl_sha256_crypto_kdf)
;;     23053528 (in Bl_F)
;;     23053566 (in Bl_F)
;;     230535A4 (in Bl_F)
;;     23053610 (in Bl_PasswordHash)
;;     2305373C (in pmkCacheSetPassphrase)
;;     23053B3A (in pmkCacheAddPSK)
;;     23053B50 (in pmkCacheAddPSK)
;;     23053E6A (in RC4_Encrypt)
;;     23053E76 (in RC4_Encrypt)
;;     23053ECE (in sha256_compress)
;;     23054250 (in sha256_vector)
;;     23054308 (in hmac_sha256_vector)
;;     23054368 (in hmac_sha256_vector)
;;     23054838 (in ProcessKeyMgmtDataAp)
;;     23054844 (in ProcessKeyMgmtDataAp)
;;     2305499C (in GenerateGTK_internal)
;;     230549AA (in GenerateGTK_internal)
;;     230549C2 (in GenerateGTK_internal)
;;     230549F8 (in GenerateGTK_internal)
;;     23054A04 (in GenerateGTK_internal)
;;     23054A10 (in GenerateGTK_internal)
;;     23054B08 (in PopulateKeyMsg)
;;     23054B98 (in prepareKDE)
;;     23054BB8 (in prepareKDE)
;;     23054BC6 (in prepareKDE)
;;     23054C8C (in Encrypt_keyData)
;;     23054CD2 (in Encrypt_keyData)
;;     23054D0A (in KeyMgmtAp_DerivePTK)
;;     23054D16 (in KeyMgmtAp_DerivePTK)
;;     23054D20 (in KeyMgmtAp_DerivePTK)
;;     23054D4A (in KeyData_CopyWPAWP2)
;;     23054DB0 (in InitKeyMgmtInfo)
;;     23054DBC (in InitKeyMgmtInfo)
;;     23054EC0 (in cm_InitConnection)
;;     23054EEC (in cm_InitConnection)
;;     23054EF8 (in cm_InitConnection)
;;     23054F52 (in cm_SetPeerAddr)
;;     23054F68 (in cm_SetPeerAddr)
;;     23054F96 (in cm_SetComData)
;;     230568C0 (in trpc_power_get)
;;     23058EEC (in rf_pri_update_tx_power_offset)
;;     2305C9F8 (in hal_dma_push)
;;     2305DE70 (in mm_sta_add)
;;     2305E54C (in mm_get_rsn_wpa_ie)
;;     2305ED88 (in mm_bcn_update)
;;     2305F268 (in scan_probe_req_tx)
;;     2305F274 (in scan_probe_req_tx)
;;     2305F282 (in scan_probe_req_tx)
;;     230608C8 (in me_build_beacon)
;;     230608D4 (in me_build_beacon)
;;     230608E0 (in me_build_beacon)
;;     23060A0C (in me_build_beacon)
;;     230610D8 (in me_rc_stats_req_handler)
;;     230610E8 (in me_rc_stats_req_handler)
;;     23061314 (in me_chan_config_req_handler)
;;     23061426 (in me_config_req_handler)
;;     23061690 (in me_sta_add_req_handler)
;;     230616FA (in me_sta_add_req_handler)
;;     2306185E (in me_sta_add_req_handler)
;;     23062B7E (in rc_update_stats)
;;     23062FF8 (in rc_init)
;;     230637E4 (in scanu_raw_send_req_handler)
;;     23063B08 (in scanu_join_cfm_handler)
;;     23063CCE (in sm_connect_req_handler)
;;     23064016 (in mm_sta_add_cfm_handler)
;;     23064062 (in mm_sta_add_cfm_handler)
;;     2306469E (in apm_start_req_handler)
;;     230646C2 (in apm_start_req_handler)
;;     230653F0 (in Bl_hmac_md5)
;;     23065448 (in Bl_hmac_md5)
;;     2306551C (in Bl_hmac_sha1)
;;     2306557A (in Bl_hmac_sha1)
;;     230655C8 (in Bl_hmac_sha1)
;;     23065658 (in Bl_PRF)
;;     23065670 (in Bl_PRF)
;;     230656C4 (in Bl_PRF)
;;     23066128 (in wpa_MD5Update)
;;     23066164 (in wpa_MD5Update)
;;     2306616E (in wpa_MD5Update)
;;     23066196 (in wpa_MD5Final)
;;     230661D0 (in wpa_MD5Final)
;;     23067364 (in ap_setpsk)
;;     23067384 (in ap_setpsk)
;;     230673C8 (in ap_resetConfiguration)
;;     2306787C (in bl_mtd_write)
;;     2306859C (in Bl_F_fast.constprop.0)
;;     230685D0 (in Bl_F_fast.constprop.0)
;;     230685F2 (in Bl_F_fast.constprop.0)
;;     23068672 (in utils_wifi_psk_cal_fast_bin)
;;     23068702 (in utils_hmac_sha1_fast)
;;     2306875C (in utils_hmac_sha1_fast)
;;     230687A4 (in utils_hmac_sha1_fast)
memcpy proc
	xor	a5,a1,a0
	andi	a5,a5,+00000003
	add	a7,a0,a2
	bne	a5,zero,000000002306CFF0

l2306CF90:
	addi	a5,zero,+00000003
	bgeu	a5,a2,000000002306CFF0

l2306CF98:
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,000000002306D010

l2306CFA4:
	andi	a2,a7,-00000004
	addi	a5,a2,-00000020
	bltu	a4,a5,000000002306D044

l2306CFB0:
	bgeu	a4,a2,000000002306CFE8

l2306CFB4:
	addi	a3,a1,+00000000
	addi	a5,a4,+00000000

l2306CFBC:
	lw	a6,a3,+00000000
	addi	a5,a5,+00000004
	addi	a3,a3,+00000004
	sw	a6,a5,+00000FFC
	bltu	a5,a2,000000002306CFBC

l2306CFD0:
	addi	a5,a2,-00000001
	sub	a5,a5,a4
	andi	a5,a5,-00000004
	addi	a5,a5,+00000004
	add	a4,a4,a5
	add	a1,a1,a5

l2306CFE8:
	bltu	a4,a7,000000002306CFF8

l2306CFEC:
	jalr	zero,ra,+00000000

l2306CFF0:
	addi	a4,a0,+00000000
	bgeu	a0,a7,000000002306CFEC

l2306CFF8:
	lbu	a5,a1,+00000000
	addi	a4,a4,+00000001
	addi	a1,a1,+00000001
	sb	a5,a4,+00000FFF
	bltu	a4,a7,000000002306CFF8

l2306D00C:
	jalr	zero,ra,+00000000

l2306D010:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	beq	a5,zero,000000002306CFA4

l2306D028:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	bne	a5,zero,000000002306D010

l2306D040:
	jal	zero,000000002306CFA4

l2306D044:
	lw	a3,a1,+00000000
	lw	t0,a1,+00000004
	lw	t6,a1,+00000008
	lw	t5,a1,+0000000C
	lw	t4,a1,+00000010
	lw	t3,a1,+00000014
	lw	t1,a1,+00000018
	lw	a6,a1,+0000001C
	addi	a1,a1,+00000024
	sw	a3,a4,+00000000
	lw	a3,a1,-00000004
	sw	t0,a4,+00000004
	sw	t6,a4,+00000008
	sw	t5,a4,+0000000C
	sw	t4,a4,+00000010
	sw	t3,a4,+00000014
	sw	t1,a4,+00000018
	sw	a6,a4,+0000001C
	addi	a4,a4,+00000024
	sw	a3,a4,+00000FFC
	bltu	a4,a5,000000002306D044

l2306D098:
	jal	zero,000000002306CFB0

;; memmove: 2306D09C
;;   Called from:
;;     23062406 (in rc_sort_samples_tp)
;;     23062410 (in rc_sort_samples_tp)
;;     2306241A (in rc_sort_samples_tp)
memmove proc
	bgeu	a1,a0,000000002306D0C8

l2306D0A0:
	add	a5,a1,a2
	bgeu	a0,a5,000000002306D0C8

l2306D0A8:
	add	a4,a0,a2
	beq	a2,zero,000000002306D1A0

l2306D0B0:
	addi	a5,a5,-00000001
	lbu	a3,a5,+00000000
	addi	a4,a4,-00000001
	sb	a3,a4,+00000000
	bne	a1,a5,000000002306D0B0

l2306D0C4:
	jalr	zero,ra,+00000000

l2306D0C8:
	addi	a5,zero,+0000000F
	bltu	a5,a2,000000002306D0FC

l2306D0D0:
	addi	a5,a0,+00000000

l2306D0D4:
	addi	a3,a2,-00000001
	beq	a2,zero,000000002306D1B0

l2306D0DC:
	addi	a3,a3,+00000001
	add	a3,a5,a3

l2306D0E4:
	addi	a1,a1,+00000001
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	bne	a5,a3,000000002306D0E4

l2306D0F8:
	jalr	zero,ra,+00000000

l2306D0FC:
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,000000002306D1A4

l2306D108:
	addi	a7,a2,-00000010
	andi	a7,a7,-00000010
	addi	a7,a7,+00000010
	add	a6,a0,a7
	addi	a4,a1,+00000000
	addi	a5,a0,+00000000

l2306D120:
	lw	a3,a4,+00000000
	addi	a5,a5,+00000010
	addi	a4,a4,+00000010
	sw	a3,a5,+00000FF0
	lw	a3,a4,-0000000C
	sw	a3,a5,+00000FF4
	lw	a3,a4,-00000008
	sw	a3,a5,+00000FF8
	lw	a3,a4,-00000004
	sw	a3,a5,+00000FFC
	bne	a6,a5,000000002306D120

l2306D14C:
	andi	a4,a2,+0000000C
	add	a1,a1,a7
	andi	a6,a2,+0000000F
	beq	a4,zero,000000002306D1B4

l2306D15C:
	addi	a4,a1,+00000000
	addi	a7,a5,+00000000
	addi	t3,zero,+00000003

l2306D168:
	addi	a4,a4,+00000004
	lw	t1,a4,-00000004
	addi	a7,a7,+00000004
	sub	a3,a6,a4
	sw	t1,a7,+00000FFC
	add	a3,a1,a3
	bltu	t3,a3,000000002306D168

l2306D184:
	addi	a4,a6,-00000004
	andi	a4,a4,-00000004
	addi	a4,a4,+00000004
	andi	a2,a2,+00000003
	add	a5,a5,a4
	add	a1,a1,a4
	jal	zero,000000002306D0D4

l2306D1A0:
	jalr	zero,ra,+00000000

l2306D1A4:
	addi	a3,a2,-00000001
	addi	a5,a0,+00000000
	jal	zero,000000002306D0DC

l2306D1B0:
	jalr	zero,ra,+00000000

l2306D1B4:
	addi	a2,a6,+00000000
	jal	zero,000000002306D0D4

;; memset: 2306D1BC
;;   Called from:
;;     23000BEA (in wifiprov_wifi_state_get)
;;     23000BF6 (in wifiprov_wifi_state_get)
;;     23000D3C (in _connect_wifi)
;;     23000D48 (in _connect_wifi)
;;     23000D54 (in _connect_wifi)
;;     23000D64 (in _connect_wifi)
;;     23000D6E (in _connect_wifi)
;;     23000D78 (in _connect_wifi)
;;     23000D84 (in _connect_wifi)
;;     23000DB8 (in _connect_wifi)
;;     23000DEE (in _connect_wifi)
;;     23000E66 (in _connect_wifi)
;;     23000E92 (in _connect_wifi)
;;     23001FBC (in inode_init)
;;     230021D6 (in aos_loop_init)
;;     2300263C (in aos_task_new)
;;     23002648 (in aos_task_new)
;;     23002934 (in event_open)
;;     230045D0 (in stateGlobalGuard_scan_beacon)
;;     23004608 (in stateGlobalGuard_scan_beacon)
;;     2300530A (in wifi_mgmr_ap_sta_info_get_internal)
;;     23005390 (in wifi_mgmr_api_connect)
;;     230054E2 (in wifi_mgmr_api_cfg_req)
;;     2300561A (in wifi_mgmr_api_ip_got)
;;     2300571C (in wifi_mgmr_api_ip_update)
;;     2300578E (in wifi_mgmr_api_reconnect)
;;     23005800 (in wifi_mgmr_api_disable_autoreconnect)
;;     23005872 (in wifi_mgmr_api_enable_autoreconnect)
;;     230058E4 (in wifi_mgmr_api_disconnect)
;;     2300595A (in wifi_mgmr_api_rate_config)
;;     230059C6 (in wifi_mgmr_api_conf_max_sta)
;;     23005A2C (in wifi_mgmr_api_ifaceup)
;;     23005A9E (in wifi_mgmr_api_sniffer_enable)
;;     23005B2A (in wifi_mgmr_api_scan_item_beacon)
;;     23005C00 (in wifi_mgmr_api_fw_disconnect)
;;     23005C72 (in wifi_mgmr_api_fw_tsen_reload)
;;     23005CE2 (in wifi_mgmr_api_fw_scan)
;;     23005D58 (in wifi_mgmr_api_fw_powersaving)
;;     23005DE2 (in wifi_mgmr_api_ap_start)
;;     23005EE4 (in wifi_mgmr_api_ap_stop)
;;     23005F56 (in wifi_mgmr_api_idle)
;;     23005FC6 (in wifi_mgmr_api_denoise_enable)
;;     2300602C (in wifi_mgmr_api_denoise_disable)
;;     23006098 (in wifi_mgmr_api_raw_send)
;;     23006496 (in wifi_ap_sta_list_get_cmd)
;;     23006664 (in wifi_ap_sta_delete_cmd)
;;     2300691C (in cmd_wifi_ap_start)
;;     2300692E (in cmd_wifi_ap_start)
;;     23007578 (in wifi_mgmr_ap_sta_info_get)
;;     230077F8 (in wifi_mgmr_profile_add)
;;     230078F4 (in wifi_mgmr_profile_get)
;;     23007A48 (in cb_disconnect_ind)
;;     23007AE0 (in cb_connect_ind)
;;     23007C8C (in bl_main_monitor)
;;     23007E62 (in bl_main_apm_start)
;;     23007FE2 (in bl_main_apm_sta_delete)
;;     23008018 (in bl_main_apm_sta_delete)
;;     23008110 (in bl_main_connect)
;;     23008538 (in bl_send_msg)
;;     230085D4 (in bl_msg_zalloc.constprop.3)
;;     230093C8 (in notify_event_scan_done)
;;     230093D2 (in notify_event_scan_done)
;;     23009436 (in bl_rx_chan_switch_ind)
;;     23009440 (in bl_rx_chan_switch_ind)
;;     230095E0 (in bl_rx_sm_connect_ind)
;;     23009712 (in bl_rx_sm_disconnect_ind)
;;     2300979E (in bl_rx_scanu_result_ind)
;;     230097CA (in bl_rx_scanu_result_ind)
;;     23009DD2 (in bl_output)
;;     2300A13A (in tcpip_stack_input)
;;     2300A2B8 (in tcpip_stack_input)
;;     2300A35E (in bl_ipc_init)
;;     2300A70C (in bl606a0_wifi_init)
;;     2300A75C (in bl606a0_wifi_init)
;;     2300A7C0 (in ipc_host_init)
;;     2300A812 (in ipc_host_init)
;;     2301CFDA (in hci_id_add)
;;     2301D1B2 (in set_ad)
;;     2301D966 (in start_le_scan)
;;     2301DC4C (in le_adv_report)
;;     2301DF54 (in le_conn_param_req)
;;     2301EF20 (in bt_le_adv_start_internal)
;;     2301F2F6 (in bt_set_tx_pwr)
;;     2301F6D6 (in l2cap_chan_tx_init)
;;     23020464 (in l2cap_recv)
;;     23020C6E (in smp_f5)
;;     230212A6 (in bt_smp_disconnected)
;;     230215DA (in compute_and_send_master_dhcheck)
;;     2302168E (in compute_and_check_and_send_slave_dhcheck)
;;     230217A4 (in smp_dhkey_check)
;;     23021A60 (in bt_smp_distribute_keys)
;;     23021CA0 (in smp_init)
;;     230225B8 (in smp_c1)
;;     23022E66 (in smp_pairing_random)
;;     23022E70 (in smp_pairing_random)
;;     23023114 (in bt_smp_request_ltk)
;;     23023192 (in bt_smp_request_ltk)
;;     230231F6 (in bt_smp_request_ltk)
;;     2302384C (in bt_smp_update_keys)
;;     23023866 (in bt_smp_update_keys)
;;     23023C88 (in bt_keys_clear)
;;     23023E1E (in write_func)
;;     230240BC (in ble_connect)
;;     230243F0 (in discover_func)
;;     2302483C (in read_func)
;;     2302485C (in read_func)
;;     23024CF6 (in device_found)
;;     23025D72 (in bt_rpa_irk_matches)
;;     23026346 (in _set)
;;     23026376 (in bl_find_valid_queued_entry)
;;     23026660 (in bl_handle_queued_msg)
;;     230266C6 (in bl_onchiphci_interface_init)
;;     23026C12 (in bt_conn_le_start_encryption)
;;     23027058 (in bt_conn_add_le)
;;     2302785A (in bt_conn_le_conn_update)
;;     2302862A (in sc_ccc_cfg_write)
;;     2302906A (in update_ccc)
;;     2302A4CA (in bt_uuid_to_str)
;;     2302AB28 (in att_req_destroy)
;;     2302B2BA (in bt_att_accept)
;;     2302BA70 (in att_read_group_req)
;;     2302BB36 (in att_read_mult_req)
;;     2302BBF2 (in att_read_rsp)
;;     2302BD24 (in att_read_type_req)
;;     2302BE5A (in att_find_type_req)
;;     2302BEFA (in att_find_info_req)
;;     2302BF9E (in att_write_rsp.constprop.10)
;;     2302CA1C (in cmd_blog_info_dump)
;;     2302CAE0 (in cmd_blog_info_dump)
;;     2302D1FC (in __recv_event)
;;     2302D23C (in __recv_event)
;;     2302DA40 (in bl_ble_sync_start)
;;     2302E084 (in pro_trans_init)
;;     2302E2A8 (in cJSON_New_Item)
;;     2302E898 (in print_array.isra.4)
;;     2302ECE0 (in print_object.isra.3)
;;     2302ECEA (in print_object.isra.3)
;;     2302F1FE (in hexdump_cmd)
;;     2302F250 (in aos_cli_init)
;;     2302F3A2 (in aos_cli_printf)
;;     2302F48E (in proc_onecmd)
;;     2302F53E (in ls_cmd)
;;     2302F54A (in ls_cmd)
;;     2302F672 (in ls_cmd)
;;     2302FCC2 (in cli_getchar)
;;     2302FD84 (in cli_main_input)
;;     2302FD8E (in cli_main_input)
;;     2302FD98 (in cli_main_input)
;;     230305B0 (in get_dns_request)
;;     23030742 (in dns_server_init)
;;     23030A4C (in write_status)
;;     23030C54 (in format_sector.constprop.16)
;;     23030C60 (in format_sector.constprop.16)
;;     23030C72 (in format_sector.constprop.16)
;;     23031460 (in move_env)
;;     23031700 (in create_env_blob)
;;     230317AC (in create_env_blob)
;;     230317F6 (in create_env_blob)
;;     23031E6A (in ef_port_init)
;;     23032C50 (in prvInitialiseNewStreamBuffer)
;;     23032C64 (in prvInitialiseNewStreamBuffer)
;;     23032F20 (in vStreamBufferDelete)
;;     23032F4A (in vStreamBufferDelete)
;;     23033386 (in prvInitialiseNewTask.isra.2)
;;     23036F1E (in bl_wifi_ap_info_set)
;;     23036F88 (in bl_wifi_sta_info_set)
;;     23037174 (in dev_uart_init)
;;     230371D2 (in dev_uart_init)
;;     23037D7E (in hal_gpio_init_from_dts)
;;     23038FF6 (in hal_board_cfg)
;;     23039000 (in hal_board_cfg)
;;     2303A3A4 (in loopset_led_trigger)
;;     2303A86E (in dns_send)
;;     2303AFBC (in dhcp_create_msg)
;;     2303B98E (in dhcp_recv)
;;     2303C192 (in dhcp_start)
;;     2303D57E (in ip4_output_if_opt_src)
;;     2303E172 (in netif_add)
;;     2303F0EE (in tcp_alloc)
;;     23042A1E (in udp_new)
;;     2304384A (in dhcp_server_recv)
;;     230439C0 (in dhcp_server_start)
;;     230441BE (in dirent_file)
;;     230442B0 (in romfs_opendir)
;;     2304463E (in romfs_register)
;;     23044C14 (in aos_register_driver)
;;     23044C9A (in aos_register_fs)
;;     23045BC8 (in Sec_Eng_SHA256_Init)
;;     23046702 (in mfg_efuse_read_poweroffset)
;;     23046A1E (in mfg_flash_read_poweroffset)
;;     23046CEC (in mm_monitor_enable_req_handler)
;;     23047CD4 (in ps_init)
;;     23048D3C (in sta_mgmt_entry_init)
;;     23049064 (in sta_mgmt_add_key)
;;     230492B8 (in td_reset)
;;     23049610 (in txl_cntrl_init)
;;     23049F9C (in txl_reset)
;;     2304A056 (in txl_frame_init_desc)
;;     2304A126 (in txl_frame_init)
;;     2304AC7A (in vif_mgmt_init)
;;     2304ACA0 (in vif_mgmt_init)
;;     2304ACE2 (in vif_mgmt_init)
;;     2304AF50 (in vif_mgmt_unregister)
;;     2304B006 (in vif_mgmt_add_key)
;;     2304B382 (in me_init)
;;     2304C712 (in rxu_swdesc_upload_evt)
;;     2304C866 (in scanu_init)
;;     2304CE0E (in scanu_frame_handler)
;;     2304CE26 (in scanu_frame_handler)
;;     2304CE30 (in scanu_frame_handler)
;;     2304CE42 (in scanu_frame_handler)
;;     2304CE54 (in scanu_frame_handler)
;;     2304D1DA (in scanu_rm_exist_ssid)
;;     2304EF84 (in _aid_list_delete)
;;     2304F0AC (in apm_init)
;;     2304FB62 (in apm_assoc_req_handler)
;;     2304FD54 (in apm_assoc_req_handler)
;;     2304FD5E (in apm_assoc_req_handler)
;;     230504CA (in ke_msg_alloc)
;;     23050CC6 (in GetTxEAPOLBuffer)
;;     23050F0A (in init_customApp_mibs)
;;     23050F16 (in init_customApp_mibs)
;;     230514B8 (in supplicantInit)
;;     230514C4 (in supplicantInit)
;;     23051622 (in add_key_to_mac)
;;     23051920 (in add_mfp_key_to_mac)
;;     23052564 (in IsEAPOL_MICValid)
;;     23052A78 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230537CC (in pmkCacheInit)
;;     230537DE (in pmkCacheInit)
;;     2305394E (in pmkCacheNewElement)
;;     23053BC4 (in pmkCacheDeletePSK)
;;     230542FE (in hmac_sha256_vector)
;;     2305435E (in hmac_sha256_vector)
;;     23054476 (in PrepDefaultEapolMsg)
;;     230548D8 (in InitStaKeyInfo)
;;     23054C0A (in prepareKDE)
;;     23054E88 (in cm_InitConnection)
;;     23054ECE (in cm_InitConnection)
;;     23054EDC (in cm_InitConnection)
;;     230552C4 (in ipc_emb_init)
;;     230554E6 (in ipc_emb_tx_evt)
;;     23056AFC (in phy_tcal_reset)
;;     2305BF8E (in chan_init)
;;     2305BFAA (in chan_init)
;;     2305C388 (in chan_ctxt_del)
;;     2305D74A (in mm_env_init)
;;     2305DE22 (in mm_sta_add)
;;     2305DFB8 (in mm_sta_del)
;;     2305E81C (in mm_bcn_init)
;;     2305E962 (in mm_bcn_init_vif)
;;     2305EE98 (in bl_init)
;;     2305F076 (in scan_init)
;;     2305F7B6 (in txl_cfm_init)
;;     2306036E (in me_build_associate_req)
;;     23060A74 (in me_build_beacon)
;;     23060CC8 (in me_build_probe_rsp)
;;     23060EB6 (in me_build_associate_rsp)
;;     23062CD4 (in rc_update_stats)
;;     23062F76 (in rc_init)
;;     23064D06 (in dbg_init)
;;     23064F56 (in generate_subkey)
;;     23065046 (in bl_aes_cmac)
;;     230653E6 (in Bl_hmac_md5)
;;     2306543E (in Bl_hmac_md5)
;;     23065512 (in Bl_hmac_sha1)
;;     23065570 (in Bl_hmac_sha1)
;;     2306564A (in Bl_PRF)
;;     2306574E (in set_psk)
;;     230660A4 (in wpa_MD5Transform)
;;     230661DC (in wpa_MD5Final)
;;     230671A2 (in Bl_SHA1Final)
;;     230673DC (in ap_resetConfiguration)
;;     2306764A (in bl_mtd_open)
;;     230678CC (in bloop_init)
;;     23067946 (in bloop_timer_init)
;;     230686F8 (in utils_hmac_sha1_fast)
;;     23068752 (in utils_hmac_sha1_fast)
;;     2306DE10 (in strstr)
memset proc
	addi	t1,zero,+0000000F
	addi	a4,a0,+00000000
	bgeu	t1,a2,000000002306D200

l2306D1C8:
	andi	a5,a4,+0000000F
	bne	a5,zero,000000002306D26C

l2306D1D0:
	bne	a1,zero,000000002306D254

l2306D1D4:
	andi	a3,a2,-00000010
	andi	a2,a2,+0000000F
	add	a3,a3,a4

l2306D1E0:
	sw	a1,a4,+00000000
	sw	a1,a4,+00000004
	sw	a1,a4,+00000008
	sw	a1,a4,+0000000C
	addi	a4,a4,+00000010
	bltu	a4,a3,000000002306D1E0

l2306D1F8:
	bne	a2,zero,000000002306D200

l2306D1FC:
	jalr	zero,ra,+00000000

l2306D200:
	sub	a3,t1,a2
	slli	a3,a3,00000002
	auipc	t0,00000000
	add	a3,a3,t0

;; fn2306D210: 2306D210
;;   Called from:
;;     2306D278 (in memset)
fn2306D210 proc
	jalr	zero,a3,+0000000C

;; fn2306D214: 2306D214
;;   Called from:
;;     2306D278 (in memset)
fn2306D214 proc
	sb	a1,a4,+0000000E

;; fn2306D218: 2306D218
;;   Called from:
;;     2306D278 (in memset)
fn2306D218 proc
	sb	a1,a4,+0000000D

;; fn2306D21C: 2306D21C
;;   Called from:
;;     2306D278 (in memset)
fn2306D21C proc
	sb	a1,a4,+0000000C

;; fn2306D220: 2306D220
;;   Called from:
;;     2306D278 (in memset)
fn2306D220 proc
	sb	a1,a4,+0000000B

;; fn2306D224: 2306D224
;;   Called from:
;;     2306D278 (in memset)
fn2306D224 proc
	sb	a1,a4,+0000000A

;; fn2306D228: 2306D228
;;   Called from:
;;     2306D278 (in memset)
fn2306D228 proc
	sb	a1,a4,+00000009

;; fn2306D22C: 2306D22C
;;   Called from:
;;     2306D278 (in memset)
fn2306D22C proc
	sb	a1,a4,+00000008

;; fn2306D230: 2306D230
;;   Called from:
;;     2306D278 (in memset)
fn2306D230 proc
	sb	a1,a4,+00000007

;; fn2306D234: 2306D234
;;   Called from:
;;     2306D278 (in memset)
fn2306D234 proc
	sb	a1,a4,+00000006

;; fn2306D238: 2306D238
;;   Called from:
;;     2306D278 (in memset)
fn2306D238 proc
	sb	a1,a4,+00000005

;; fn2306D23C: 2306D23C
;;   Called from:
;;     2306D278 (in memset)
fn2306D23C proc
	sb	a1,a4,+00000004

;; fn2306D240: 2306D240
;;   Called from:
;;     2306D278 (in memset)
fn2306D240 proc
	sb	a1,a4,+00000003

;; fn2306D244: 2306D244
;;   Called from:
;;     2306D278 (in memset)
fn2306D244 proc
	sb	a1,a4,+00000002

;; fn2306D248: 2306D248
;;   Called from:
;;     2306D278 (in memset)
fn2306D248 proc
	sb	a1,a4,+00000001

;; fn2306D24C: 2306D24C
;;   Called from:
;;     2306D278 (in memset)
fn2306D24C proc
	sb	a1,a4,+00000000
	jalr	zero,ra,+00000000

l2306D254:
	andi	a1,a1,+000000FF
	slli	a3,a1,00000008
	or	a1,a1,a3
	slli	a3,a1,00000010
	or	a1,a1,a3
	jal	zero,000000002306D1D4

l2306D26C:
	slli	a3,a5,00000002
	auipc	t0,00000000
	add	a3,a3,t0
	addi	t0,ra,+00000000
	jalr	ra,a3,-00000060
	addi	ra,t0,+00000000
	addi	a5,a5,-00000010
	sub	a4,a4,a5
	add	a2,a2,a5
	bgeu	t1,a2,000000002306D200

l2306D294:
	jal	zero,000000002306D1D0

;; strchr: 2306D298
;;   Called from:
;;     23000FF2 (in _connect_wifi)
;;     2302E64C (in print_string_ptr)
;;     2302F438 (in proc_onecmd)
;;     23043ABE (in dhcpd_start)
;;     23043AE6 (in dhcpd_start)
;;     23043AF2 (in dhcpd_start)
;;     23044108 (in dirent_file)
;;     2306D8F0 (in strrchr)
;;     2306D910 (in strrchr)
;;     2306DF64 (in strstr)
strchr proc
	andi	a3,a1,+000000FF
	andi	a5,a0,+00000003
	beq	a3,zero,000000002306D378

l2306D2A4:
	beq	a5,zero,000000002306D2D0

l2306D2A8:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D370

l2306D2B0:
	bne	a3,a5,000000002306D2C4

l2306D2B4:
	jal	zero,000000002306D400

l2306D2B8:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D370

l2306D2C0:
	beq	a5,a3,000000002306D374

l2306D2C4:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,000000002306D2B8

l2306D2D0:
	andi	a1,a1,+000000FF
	slli	a5,a1,00000008
	or	a1,a1,a5
	lw	a4,a0,+00000000
	slli	t1,a1,00000010
	or	t1,t1,a1
	lui	a6,000FEFF0
	xor	a2,t1,a4
	addi	a6,a6,-00000101
	xori	a5,a4,-00000001
	xori	a1,a2,-00000001
	add	a4,a4,a6
	add	a2,a2,a6
	and	a5,a5,a4
	and	a2,a1,a2
	lui	a7,00080808
	or	a5,a5,a2
	addi	a7,a7,+00000080
	and	a5,a5,a7
	bne	a5,zero,000000002306D350

l2306D320:
	addi	a0,a0,+00000004
	lw	a4,a0,+00000000
	xor	a2,a4,t1
	add	a5,a4,a6
	add	a1,a2,a6
	xori	a4,a4,-00000001
	xori	a2,a2,-00000001
	and	a5,a5,a4
	and	a2,a1,a2
	or	a5,a5,a2
	and	a5,a5,a7
	beq	a5,zero,000000002306D320

l2306D350:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D370

l2306D358:
	bne	a3,a5,000000002306D364

l2306D35C:
	jal	zero,000000002306D374

l2306D360:
	beq	a5,a3,000000002306D3F8

l2306D364:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,000000002306D360

l2306D370:
	addi	a0,zero,+00000000

l2306D374:
	jalr	zero,ra,+00000000

l2306D378:
	beq	a5,zero,000000002306D39C

l2306D37C:
	lbu	a5,a0,+00000000
	bne	a5,zero,000000002306D390

l2306D384:
	jal	zero,000000002306D3FC

l2306D388:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D374

l2306D390:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,000000002306D388

l2306D39C:
	lw	a4,a0,+00000000
	lui	a2,000FEFF0
	addi	a2,a2,-00000101
	add	a5,a4,a2
	lui	a3,00080808
	xori	a4,a4,-00000001
	and	a5,a5,a4
	addi	a3,a3,+00000080
	and	a5,a5,a3
	bne	a5,zero,000000002306D3E0

l2306D3C4:
	addi	a0,a0,+00000004
	lw	a4,a0,+00000000
	add	a5,a4,a2
	xori	a4,a4,-00000001
	and	a5,a5,a4
	and	a5,a5,a3
	beq	a5,zero,000000002306D3C4

l2306D3E0:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D374

l2306D3E8:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,000000002306D3E8

l2306D3F4:
	jalr	zero,ra,+00000000

l2306D3F8:
	jalr	zero,ra,+00000000

l2306D3FC:
	jalr	zero,ra,+00000000

l2306D400:
	jalr	zero,ra,+00000000

;; strcmp: 2306D404
;;   Called from:
;;     230004C0 (in hal_boot2_partition_bus_addr)
;;     23000536 (in hal_boot2_partition_bus_addr)
;;     230006A2 (in hal_boot2_partition_addr)
;;     23002040 (in inode_open)
;;     2300469A (in stateGlobalGuard_scan_beacon)
;;     230067F0 (in cmd_wifi_cfg)
;;     230067FC (in cmd_wifi_cfg)
;;     23006808 (in cmd_wifi_cfg)
;;     23006814 (in cmd_wifi_cfg)
;;     23008616 (in bl_msg_update_channel_cfg)
;;     2301E770 (in bt_set_name)
;;     2302CACA (in cmd_blog_info_dump)
;;     2302CB22 (in cmd_blog_info_dump)
;;     2302CBDC (in cmd_blog_set_level)
;;     2302CBEC (in cmd_blog_set_level)
;;     2302CBFE (in cmd_blog_set_level)
;;     2302CC10 (in cmd_blog_set_level)
;;     2302CC22 (in cmd_blog_set_level)
;;     2302CC34 (in cmd_blog_set_level)
;;     2302CC46 (in cmd_blog_set_level)
;;     2302CD00 (in cmd_blog_set_level)
;;     2302F482 (in proc_onecmd)
;;     2302F560 (in ls_cmd)
;;     2302F70C (in ls_cmd)
;;     2302F942 (in echo_cmd)
;;     2302F974 (in echo_cmd)
strcmp proc
	or	a4,a0,a1
	addi	t2,zero,-00000001
	andi	a4,a4,+00000003
	bne	a4,zero,000000002306D510

l2306D414:
	lui	a5,0007F7F8
	addi	a5,a5,-00000081

l2306D41C:
	lw	a2,a0,+00000000
	lw	a3,a1,+00000000
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002306D538

l2306D438:
	bne	a2,a3,000000002306D4C4

l2306D43C:
	lw	a2,a0,+00000004
	lw	a3,a1,+00000004
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002306D530

l2306D458:
	bne	a2,a3,000000002306D4C4

l2306D45C:
	lw	a2,a0,+00000008
	lw	a3,a1,+00000008
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002306D544

l2306D478:
	bne	a2,a3,000000002306D4C4

l2306D47C:
	lw	a2,a0,+0000000C
	lw	a3,a1,+0000000C
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002306D558

l2306D498:
	bne	a2,a3,000000002306D4C4

l2306D49C:
	lw	a2,a0,+00000010
	lw	a3,a1,+00000010
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002306D56C

l2306D4B8:
	addi	a0,a0,+00000014
	addi	a1,a1,+00000014
	beq	a2,a3,000000002306D41C

l2306D4C4:
	slli	a4,a2,00000010
	slli	a5,a3,00000010
	bne	a4,a5,000000002306D4E8

l2306D4D0:
	srli	a4,a2,00000010
	srli	a5,a3,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,000000002306D500

l2306D4E4:
	jalr	zero,ra,+00000000

l2306D4E8:
	srli	a4,a4,00000010
	srli	a5,a5,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,000000002306D500

l2306D4FC:
	jalr	zero,ra,+00000000

l2306D500:
	andi	a4,a4,+000000FF
	andi	a5,a5,+000000FF
	sub	a0,a4,a5
	jalr	zero,ra,+00000000

l2306D510:
	lbu	a2,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a0,a0,+00000001
	addi	a1,a1,+00000001
	bne	a2,a3,000000002306D528

l2306D524:
	bne	a2,zero,000000002306D510

l2306D528:
	sub	a0,a2,a3
	jalr	zero,ra,+00000000

l2306D530:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004

l2306D538:
	bne	a2,a3,000000002306D510

l2306D53C:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306D544:
	addi	a0,a0,+00000008
	addi	a1,a1,+00000008
	bne	a2,a3,000000002306D510

l2306D550:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306D558:
	addi	a0,a0,+0000000C
	addi	a1,a1,+0000000C
	bne	a2,a3,000000002306D510

l2306D564:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306D56C:
	addi	a0,a0,+00000010
	addi	a1,a1,+00000010
	bne	a2,a3,000000002306D510

l2306D578:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; strcpy: 2306D580
;;   Called from:
;;     23000C20 (in wifiprov_wifi_state_get)
;;     23000C2E (in wifiprov_wifi_state_get)
;;     23000C3C (in wifiprov_wifi_state_get)
;;     23024C84 (in bt_addr_le_to_str.constprop.14)
;;     23025AA6 (in bt_addr_le_str_real)
;;     2302CB02 (in cmd_blog_info_dump)
;;     2302E3EC (in print_number)
;;     2302E5B4 (in print_string_ptr)
;;     2302E60A (in print_string_ptr)
;;     2302E7A2 (in print_array.isra.4)
;;     2302EE34 (in print_object.isra.3)
;;     2302F2FE (in ps_cmd)
;;     2302F32E (in ps_cmd)
;;     2302F3BC (in aos_cli_printf)
;;     2303484C (in vTaskList)
;;     2303615A (in bl_chip_memory_ram)
;;     23036180 (in bl_chip_memory_ram)
;;     230361A4 (in bl_chip_memory_ram)
;;     230677CA (in bl_mtd_info)
strcpy proc
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,000000002306D60C

l2306D58C:
	lw	a4,a1,+00000000
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	addi	a2,zero,-00000001
	bne	a5,a2,000000002306D628

l2306D5B0:
	addi	a2,a0,+00000000
	addi	a6,zero,-00000001

l2306D5B8:
	addi	a2,a2,+00000004
	addi	a1,a1,+00000004
	sw	a4,a2,+00000FFC
	lw	a4,a1,+00000000
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	beq	a5,a6,000000002306D5B8

l2306D5DC:
	lbu	a5,a1,+00000000
	lbu	a4,a1,+00000001
	lbu	a3,a1,+00000002
	sb	a5,a2,+00000000
	beq	a5,zero,000000002306D600

l2306D5F0:
	sb	a4,a2,+00000001
	beq	a4,zero,000000002306D600

l2306D5F8:
	sb	a3,a2,+00000002
	bne	a3,zero,000000002306D604

l2306D600:
	jalr	zero,ra,+00000000

l2306D604:
	sb	zero,a2,+00000003
	jalr	zero,ra,+00000000

l2306D60C:
	addi	a5,a0,+00000000

l2306D610:
	lbu	a4,a1,+00000000
	addi	a5,a5,+00000001
	addi	a1,a1,+00000001
	sb	a4,a5,+00000FFF
	bne	a4,zero,000000002306D610

l2306D624:
	jalr	zero,ra,+00000000

l2306D628:
	addi	a2,a0,+00000000
	jal	zero,000000002306D5DC

;; strlen: 2306D630
;;   Called from:
;;     23000B54 (in app_delayed_action_bleadv)
;;     23000B6A (in app_delayed_action_bleadv)
;;     23000E40 (in _connect_wifi)
;;     23000ECA (in _connect_wifi)
;;     23000F18 (in _connect_wifi)
;;     23000F20 (in _connect_wifi)
;;     2300100C (in _connect_wifi)
;;     23001014 (in _connect_wifi)
;;     230012A0 (in event_cb_cli)
;;     230012B6 (in event_cb_cli)
;;     230012D2 (in event_cb_cli)
;;     23001B4A (in aos_open)
;;     2300204A (in inode_open)
;;     2300205C (in inode_open)
;;     2300211A (in inode_reserve)
;;     23004624 (in stateGlobalGuard_scan_beacon)
;;     230053EE (in wifi_mgmr_api_connect)
;;     23005462 (in wifi_mgmr_api_connect)
;;     23005496 (in wifi_mgmr_api_connect)
;;     23005DE8 (in wifi_mgmr_api_ap_start)
;;     23005E86 (in wifi_mgmr_api_ap_start)
;;     230065B6 (in wifi_ap_sta_delete_cmd)
;;     230072DE (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23007306 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     230073C2 (in wifi_mgmr_sta_ssid_set)
;;     230073CA (in wifi_mgmr_sta_ssid_set)
;;     230073F4 (in wifi_mgmr_sta_psk_set)
;;     230073FC (in wifi_mgmr_sta_psk_set)
;;     2300772C (in wifi_mgmr_scan_ap_all)
;;     23008FB6 (in bl_send_apm_start_req)
;;     23008FCA (in bl_send_apm_start_req)
;;     23008FDC (in bl_send_apm_start_req)
;;     23008FEE (in bl_send_apm_start_req)
;;     2301D2D0 (in le_adv_update)
;;     2301E756 (in bt_set_name)
;;     2301E7A4 (in bt_set_name)
;;     23024246 (in ble_start_advertise)
;;     23024BA6 (in ble_set_device_name)
;;     23024BAE (in ble_set_device_name)
;;     23024BDE (in ble_set_device_name)
;;     2302848C (in read_name)
;;     2302C440 (in fdt_get_name)
;;     2302C50C (in fdt_subnode_offset)
;;     2302C652 (in fdt_getprop)
;;     2302CA92 (in cmd_blog_info_dump)
;;     2302CAD6 (in cmd_blog_info_dump)
;;     2302CC64 (in cmd_blog_set_level)
;;     2302CE2E (in blog_hexdump_out)
;;     2302CE40 (in blog_hexdump_out)
;;     2302E35C (in cJSON_strdup)
;;     2302E39E (in update)
;;     2302E8F0 (in print_array.isra.4)
;;     2302E936 (in print_array.isra.4)
;;     2302ED86 (in print_object.isra.3)
;;     2302ED8E (in print_object.isra.3)
;;     2302EE00 (in print_object.isra.3)
;;     2302EE3C (in print_object.isra.3)
;;     2302F2A8 (in cli_putstr)
;;     2302F304 (in ps_cmd)
;;     2302F310 (in ps_cmd)
;;     2302F336 (in ps_cmd)
;;     2302F3C4 (in aos_cli_printf)
;;     2302F616 (in ls_cmd)
;;     2302F68A (in ls_cmd)
;;     2302F69C (in ls_cmd)
;;     2302F6AA (in ls_cmd)
;;     2302F6B2 (in ls_cmd)
;;     2302FD66 (in cli_main_input)
;;     2302FFA4 (in cli_main_input)
;;     23030130 (in cli_main_input)
;;     23030262 (in cli_main_input)
;;     23030406 (in cli_main_input)
;;     2303093C (in find_env_cb)
;;     2303126C (in find_env)
;;     230313EE (in del_env)
;;     230316C6 (in create_env_blob)
;;     23031710 (in create_env_blob)
;;     230318C2 (in ef_get_env_blob)
;;     230318E0 (in ef_get_env_blob)
;;     230319C2 (in ef_set_env_blob)
;;     230319E0 (in ef_set_env_blob)
;;     23031A5A (in ef_set_env_blob)
;;     23031ADE (in ef_set_env)
;;     23031BD0 (in ef_env_set_default)
;;     23034852 (in vTaskList)
;;     2303488C (in vTaskList)
;;     230384A4 (in hal_board_cfg)
;;     23038858 (in hal_board_cfg)
;;     23039006 (in hal_board_cfg)
;;     2303A84A (in dns_send)
;;     2303B40C (in dhcp_option_hostname.isra.0)
;;     23043C20 (in romfs_ioctl)
;;     23043C68 (in romfs_read)
;;     23043CF0 (in file_info)
;;     23043D10 (in file_info)
;;     23043D2E (in file_info)
;;     23043D44 (in file_info)
;;     23043D88 (in file_info)
;;     23043D9C (in file_info)
;;     2304402A (in dirent_file)
;;     23044034 (in dirent_file)
;;     23044040 (in dirent_file)
;;     23044090 (in dirent_file)
;;     2304412C (in dirent_file)
;;     230442CE (in romfs_opendir)
;;     2304444C (in romfs_open)
;;     23044456 (in romfs_open)
;;     2304468C (in romfs_register)
;;     230464D6 (in bflb_platform_printf)
;;     23053512 (in Bl_F)
;;     230535DE (in Bl_PasswordHash)
;;     230536D6 (in pmkCacheFindPSK)
;;     23054418 (in KeyMgmtInit)
;;     230549D2 (in GenerateGTK_internal)
;;     23054F84 (in cm_SetComData)
;;     2305DE00 (in mm_sta_add)
;;     2305DE3E (in mm_sta_add)
;;     23065754 (in set_psk)
;;     23067352 (in ap_setpsk)
;;     2306736A (in ap_setpsk)
;;     230673B4 (in ap_resetConfiguration)
;;     23068586 (in Bl_F_fast.constprop.0)
;;     23068642 (in utils_wifi_psk_cal_fast_bin)
;;     2306DDDC (in strstr)
strlen proc
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,000000002306D690

l2306D63C:
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	addi	a1,zero,-00000001

l2306D648:
	addi	a4,a4,+00000004
	lw	a2,a4,-00000004
	and	a5,a2,a3
	add	a5,a5,a3
	or	a5,a5,a2
	or	a5,a5,a3
	beq	a5,a1,000000002306D648

l2306D664:
	lbu	a3,a4,-00000004
	sub	a5,a4,a0
	lbu	a2,a4,-00000003
	lbu	a0,a4,-00000002
	beq	a3,zero,000000002306D6B4

l2306D678:
	beq	a2,zero,000000002306D6AC

l2306D67C:
	sltu	a0,zero,a0
	add	a0,a0,a5
	addi	a0,a0,-00000002
	jalr	zero,ra,+00000000

l2306D68C:
	beq	a3,zero,000000002306D63C

l2306D690:
	lbu	a5,a4,+00000000
	addi	a4,a4,+00000001
	andi	a3,a4,+00000003
	bne	a5,zero,000000002306D68C

l2306D6A0:
	sub	a4,a4,a0
	addi	a0,a4,-00000001
	jalr	zero,ra,+00000000

l2306D6AC:
	addi	a0,a5,-00000003
	jalr	zero,ra,+00000000

l2306D6B4:
	addi	a0,a5,-00000004
	jalr	zero,ra,+00000000

;; strncmp: 2306D6BC
;;   Called from:
;;     23002054 (in inode_open)
;;     2302F474 (in proc_onecmd)
;;     230301A0 (in cli_main_input)
;;     2303096E (in find_env_cb)
;;     230312B4 (in find_env)
;;     23044462 (in romfs_open)
strncmp proc
	beq	a2,zero,000000002306D790

l2306D6C0:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,000000002306D748

l2306D6CC:
	addi	a5,zero,+00000003
	bgeu	a5,a2,000000002306D748

l2306D6D4:
	lw	a5,a0,+00000000
	lw	a4,a1,+00000000
	bne	a5,a4,000000002306D798

l2306D6E0:
	addi	a2,a2,-00000004
	beq	a2,zero,000000002306D790

l2306D6E8:
	lui	t1,000FEFF0
	addi	t1,t1,-00000101
	add	a4,a5,t1
	lui	a7,00080808
	xori	a5,a5,-00000001
	and	a5,a4,a5
	addi	a7,a7,+00000080
	and	a5,a5,a7
	bne	a5,zero,000000002306D790

l2306D70C:
	addi	t3,zero,+00000003
	jal	zero,000000002306D73C

l2306D714:
	lw	a4,a0,+00000000
	lw	a3,a1,+00000000
	add	a5,a4,t1
	xori	a6,a4,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a4,a3,000000002306D798

l2306D730:
	addi	a2,a2,-00000004
	beq	a2,zero,000000002306D790

l2306D738:
	bne	a5,zero,000000002306D790

l2306D73C:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	t3,a2,000000002306D714

l2306D748:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	bne	a3,a4,000000002306D788

l2306D758:
	beq	a2,zero,000000002306D790

l2306D75C:
	beq	a4,zero,000000002306D790

l2306D760:
	addi	a5,a0,+00000001
	add	a2,a0,a2
	jal	zero,000000002306D778

l2306D76C:
	beq	a2,a5,000000002306D790

l2306D770:
	addi	a5,a5,+00000001
	beq	a4,zero,000000002306D790

l2306D778:
	addi	a1,a1,+00000001
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	beq	a4,a3,000000002306D76C

l2306D788:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

l2306D790:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306D798:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	beq	a3,a4,000000002306D75C

l2306D7A8:
	jal	zero,000000002306D788

;; strncpy: 2306D7AC
;;   Called from:
;;     23000DAC (in _connect_wifi)
;;     23000DE2 (in _connect_wifi)
;;     23000E14 (in _connect_wifi)
;;     23000EB6 (in _connect_wifi)
;;     23000FDA (in _connect_wifi)
;;     2300265C (in aos_task_new)
;;     2300461A (in stateGlobalGuard_scan_beacon)
;;     230052CA (in wifi_mgmr_set_country_code_internal)
;;     2301E78A (in bt_set_name)
;;     2302CED6 (in blog_hexdump_out)
;;     23030294 (in cli_main_input)
;;     230302D6 (in cli_main_input)
;;     2303146C (in move_env)
;;     23043F7C (in romfs_readdir)
;;     23044AD0 (in get_bytearray_from_string)
;;     23067654 (in bl_mtd_open)
strncpy proc
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,000000002306D828

l2306D7B8:
	addi	a5,zero,+00000003
	addi	a4,a0,+00000000
	bltu	a5,a2,000000002306D830

l2306D7C4:
	beq	a2,zero,000000002306D824

l2306D7C8:
	lbu	a6,a1,+00000000
	addi	a3,a2,-00000001
	addi	a1,a1,+00000001
	sb	a6,a4,+00000000
	addi	a5,a4,+00000001
	beq	a6,zero,000000002306D80C

l2306D7E0:
	add	a2,a4,a2
	add	a3,a4,a3
	jal	zero,000000002306D7FC

l2306D7EC:
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	beq	a4,zero,000000002306D810

l2306D7FC:
	addi	a1,a1,+00000001
	sub	a6,a3,a5
	bne	a5,a2,000000002306D7EC

l2306D808:
	jalr	zero,ra,+00000000

l2306D80C:
	addi	a6,a3,+00000000

l2306D810:
	add	a4,a5,a6
	beq	a6,zero,000000002306D874

l2306D818:
	addi	a5,a5,+00000001
	sb	zero,a5,+00000FFF
	bne	a5,a4,000000002306D818

l2306D824:
	jalr	zero,ra,+00000000

l2306D828:
	addi	a4,a0,+00000000
	jal	zero,000000002306D7C4

l2306D830:
	lui	t1,000FEFF0
	lui	a7,00080808
	addi	t1,t1,-00000101
	addi	a7,a7,+00000080
	addi	t3,zero,+00000003

l2306D844:
	lw	a3,a1,+00000000
	add	a5,a3,t1
	xori	a6,a3,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a5,zero,000000002306D7C8

l2306D85C:
	addi	a4,a4,+00000004
	addi	a2,a2,-00000004
	sw	a3,a4,+00000FFC
	addi	a1,a1,+00000004
	bltu	t3,a2,000000002306D844

l2306D870:
	jal	zero,000000002306D7C4

l2306D874:
	jalr	zero,ra,+00000000

;; strnlen: 2306D878
;;   Called from:
;;     23003418 (in flt)
;;     23003548 (in flt)
;;     2302C69E (in fdt_stringlist_count)
;;     2302C6FC (in fdt_stringlist_get)
;;     2306DAE0 (in two_way_long_needle)
;;     2306DC84 (in two_way_long_needle)
;;     2306DDEC (in strstr)
;;     2306DFD0 (in strstr)
strnlen proc
	beq	a1,zero,000000002306D8A0

l2306D87C:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306D8B4

l2306D884:
	add	a3,a0,a1
	addi	a5,a0,+00000000
	jal	zero,000000002306D898

l2306D890:
	lbu	a4,a5,+00000000
	beq	a4,zero,000000002306D8A8

l2306D898:
	addi	a5,a5,+00000001
	bne	a5,a3,000000002306D890

l2306D8A0:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306D8A8:
	sub	a1,a5,a0
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306D8B4:
	addi	a1,zero,+00000000
	jal	zero,000000002306D8A0

;; strrchr: 2306D8BC
;;   Called from:
;;     2302C430 (in fdt_get_name)
strrchr proc
	beq	a1,zero,000000002306D910

l2306D8C0:
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	addi	s0,a1,+00000000
	addi	a5,a0,+00000000
	addi	s1,zero,+00000000
	jal	zero,000000002306D8E8

l2306D8E0:
	addi	a5,a0,+00000001
	addi	s1,a0,+00000000

l2306D8E8:
	addi	a0,a5,+00000000
	addi	a1,s0,+00000000
	jal	ra,000000002306D298
	bne	a0,zero,000000002306D8E0

l2306D8F8:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306D910:
	jal	zero,000000002306D298

;; two_way_long_needle: 2306D914
;;   Called from:
;;     2306DFFC (in strstr)
two_way_long_needle proc
	addi	sp,sp,-00000450
	sw	s0,sp,+00000448
	sw	s1,sp,+00000444
	sw	s7,sp,+0000042C
	sw	s9,sp,+00000424
	sw	s10,sp,+00000420
	sw	s11,sp,+0000041C
	addi	s1,a2,+00000000
	addi	s9,a3,+00000000
	sw	ra,sp,+0000044C
	sw	s2,sp,+00000440
	sw	s3,sp,+0000043C
	sw	s4,sp,+00000438
	sw	s5,sp,+00000434
	sw	s6,sp,+00000430
	sw	s8,sp,+00000428
	addi	s0,a0,+00000000
	addi	s10,a1,+00000000
	addi	s7,zero,+00000001
	addi	a3,zero,+00000001
	addi	a2,zero,+00000000
	addi	s11,zero,-00000001

l2306D96C:
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bgeu	a5,s9,000000002306D9AC

l2306D980:
	lbu	a1,a1,+00000000
	lbu	a4,a4,+00000000
	bgeu	a1,a4,000000002306DB78

l2306D98C:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	s7,a5,s11
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bltu	a5,s9,000000002306D980

l2306D9AC:
	addi	a7,zero,+00000001
	addi	a3,zero,+00000001
	addi	a2,zero,+00000000
	addi	a1,zero,-00000001

l2306D9BC:
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bgeu	a5,s9,000000002306D9FC

l2306D9D0:
	lbu	a0,a0,+00000000
	lbu	a4,a4,+00000000
	bgeu	a4,a0,000000002306DB90

l2306D9DC:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	a7,a5,a1
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bltu	a5,s9,000000002306D9D0

l2306D9FC:
	addi	a1,a1,+00000001
	addi	s11,s11,+00000001
	bltu	a1,s11,000000002306DA10

l2306DA08:
	addi	s7,a7,+00000000
	addi	s11,a1,+00000000

l2306DA10:
	addi	a5,sp,+00000010
	addi	a4,sp,+00000410

l2306DA18:
	sw	s9,a5,+00000000
	addi	a5,a5,+00000004
	bne	a4,a5,000000002306DA18

l2306DA24:
	addi	s2,s9,-00000001
	add	a1,s1,s9
	addi	a4,s1,+00000000
	add	a2,s1,s2
	beq	s9,zero,000000002306DA58

l2306DA38:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000410
	sub	a3,a2,a4
	slli	a5,a5,00000002
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sw	a3,a5,+00000C00
	bne	a4,a1,000000002306DA38

l2306DA58:
	addi	a2,s11,+00000000
	add	a1,s1,s7
	addi	a0,s1,+00000000
	jal	ra,000000002306CEF8
	bne	a0,zero,000000002306DC1C

l2306DA6C:
	addi	s5,s11,-00000001
	add	a5,s0,s5
	lui	s3,00000001
	sw	a5,sp,+00000008
	addi	s4,zero,+00000001
	add	a5,s1,s5
	addi	s3,s3,-00000800
	addi	s6,zero,+00000000
	addi	s8,zero,+00000000
	sw	a5,sp,+0000000C
	sub	s4,s4,s11
	or	s3,s9,s3

l2306DA9C:
	add	a2,s0,s8
	add	a5,a2,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,000000002306DB30

l2306DABC:
	beq	s6,zero,000000002306DAC8

l2306DAC0:
	bgeu	a5,s7,000000002306DAC8

l2306DAC4:
	sub	a5,s9,s7

l2306DAC8:
	add	s8,s8,a5
	addi	s6,zero,+00000000

l2306DAD0:
	sub	a5,s10,s9
	bgeu	a5,s8,000000002306DA9C

l2306DAD8:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,000000002306D878
	add	s10,s10,a0
	sub	a5,s10,s9
	bgeu	a5,s8,000000002306DA9C

l2306DAF0:
	addi	a0,zero,+00000000

l2306DAF4:
	lw	ra,sp,+0000044C
	lw	s0,sp,+00000448
	lw	s1,sp,+00000444
	lw	s2,sp,+00000440
	lw	s3,sp,+0000043C
	lw	s4,sp,+00000438
	lw	s5,sp,+00000434
	lw	s6,sp,+00000430
	lw	s7,sp,+0000042C
	lw	s8,sp,+00000428
	lw	s9,sp,+00000424
	lw	s10,sp,+00000420
	lw	s11,sp,+0000041C
	addi	sp,sp,+00000450
	jalr	zero,ra,+00000000

l2306DB30:
	addi	a5,s6,+00000000
	bgeu	s6,s11,000000002306DB3C

l2306DB38:
	addi	a5,s11,+00000000

l2306DB3C:
	bgeu	a5,s2,000000002306DBA8

l2306DB40:
	add	a3,s0,a5
	add	a3,a3,s8
	add	a4,s1,a5
	jal	zero,000000002306DB64

l2306DB50:
	addi	a5,a5,+00000001
	add	a4,a5,s8
	add	a3,s1,a5
	add	a4,s0,a4
	bgeu	a5,s2,000000002306DBA8

l2306DB64:
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	beq	a3,a4,000000002306DB50

l2306DB70:
	add	s8,s4,s8
	jal	zero,000000002306DAC8

l2306DB78:
	beq	a1,a4,000000002306DC04

l2306DB7C:
	addi	s11,a2,+00000000
	addi	s7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,000000002306D96C

l2306DB90:
	beq	a0,a4,000000002306DC10

l2306DB94:
	addi	a1,a2,+00000000
	addi	a7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,000000002306D9BC

l2306DBA8:
	addi	a3,s5,+00000000
	bgeu	s6,s11,000000002306DD6C

l2306DBB0:
	lw	a5,sp,+00000008
	add	a5,a5,s8
	lbu	a4,a5,+00000000
	lw	a5,sp,+0000000C
	lbu	a5,a5,+00000000
	beq	a4,a5,000000002306DBDC

l2306DBC8:
	jal	zero,000000002306DD6C

l2306DBCC:
	lbu	a1,a1,+00000000
	lbu	a5,a5,+00000000
	bne	a1,a5,000000002306DBF0

l2306DBD8:
	addi	a3,a4,+00000000

l2306DBDC:
	addi	a4,a3,-00000001
	add	a5,a4,s8
	add	a1,s1,a4
	add	a5,s0,a5
	bne	s6,a3,000000002306DBCC

l2306DBF0:
	addi	a7,s6,+00000001
	bltu	a3,a7,000000002306DD78

l2306DBF8:
	add	s8,s8,s7
	sub	s6,s9,s7
	jal	zero,000000002306DAD0

l2306DC04:
	beq	a3,s7,000000002306DD60

l2306DC08:
	addi	a3,a3,+00000001
	jal	zero,000000002306D96C

l2306DC10:
	beq	a3,a7,000000002306DD54

l2306DC14:
	addi	a3,a3,+00000001
	jal	zero,000000002306D9BC

l2306DC1C:
	sub	s7,s9,s11
	bltu	s7,s11,000000002306DD4C

l2306DC24:
	addi	s5,s11,-00000001
	lui	s3,00000001
	add	a5,s1,s5
	addi	s4,zero,+00000001
	addi	s3,s3,-00000800
	addi	s7,s7,+00000001
	addi	s8,zero,+00000000
	sw	a5,sp,+00000008
	addi	s6,s11,-00000002
	sub	s4,s4,s11
	or	s3,s9,s3

l2306DC50:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,000000002306DCB4

l2306DC70:
	add	s8,s8,a5

l2306DC74:
	sub	a5,s10,s9
	bgeu	a5,s8,000000002306DC50

l2306DC7C:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,000000002306D878
	add	s10,s10,a0
	sub	a5,s10,s9
	bltu	a5,s8,000000002306DAF0

l2306DC94:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	bne	a5,zero,000000002306DC70

l2306DCB4:
	bgeu	s11,s2,000000002306DCF4

l2306DCB8:
	add	a4,a1,s11
	add	a5,s1,s11
	lbu	a2,a4,+00000000
	lbu	a4,a5,+00000000
	addi	a5,s11,+00000000
	beq	a2,a4,000000002306DCE0

l2306DCD0:
	jal	zero,000000002306DD40

l2306DCD4:
	lbu	a2,a2,+00000000
	lbu	a4,a4,+00000000
	bne	a2,a4,000000002306DD40

l2306DCE0:
	addi	a5,a5,+00000001
	add	a4,s8,a5
	add	a2,s1,a5
	add	a4,s0,a4
	bltu	a5,s2,000000002306DCD4

l2306DCF4:
	addi	a5,zero,-00000001
	beq	s5,a5,000000002306DD80

l2306DCFC:
	add	a5,a1,s5
	lbu	a4,a5,+00000000
	lw	a5,sp,+00000008
	lbu	a5,a5,+00000000
	bne	a4,a5,000000002306DD38

l2306DD10:
	add	a4,s8,s6
	add	a5,s1,s6
	add	a4,s0,a4
	addi	a6,s1,-00000001

l2306DD20:
	beq	a5,a6,000000002306DD80

l2306DD24:
	lbu	a0,a5,+00000000
	lbu	a2,a4,+00000000
	addi	a5,a5,-00000001
	addi	a4,a4,-00000001
	beq	a0,a2,000000002306DD20

l2306DD38:
	add	s8,s8,s7
	jal	zero,000000002306DC74

l2306DD40:
	add	a3,s4,s8
	add	s8,a3,a5
	jal	zero,000000002306DC74

l2306DD4C:
	addi	s7,s11,+00000000
	jal	zero,000000002306DC24

l2306DD54:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,000000002306D9BC

l2306DD60:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,000000002306D96C

l2306DD6C:
	addi	a3,s11,+00000000
	addi	a7,s6,+00000001
	bgeu	a3,a7,000000002306DBF8

l2306DD78:
	addi	a0,a2,+00000000
	jal	zero,000000002306DAF4

l2306DD80:
	addi	a0,a1,+00000000
	jal	zero,000000002306DAF4

;; strstr: 2306DD88
;;   Called from:
;;     2302CB0E (in cmd_blog_info_dump)
;;     2302CB46 (in cmd_blog_info_dump)
strstr proc
	addi	sp,sp,-00000060
	sw	s0,sp,+00000058
	sw	s1,sp,+00000054
	sw	ra,sp,+0000005C
	sw	s2,sp,+00000050
	sw	s3,sp,+0000004C
	sw	s4,sp,+00000048
	sw	s5,sp,+00000044
	addi	s1,a1,+00000000
	lbu	a1,a1,+00000000
	addi	s0,a0,+00000000
	beq	a1,zero,000000002306DEAC

l2306DDB8:
	lbu	a3,s1,+00000001
	beq	a3,zero,000000002306DF64

l2306DDC0:
	lbu	a2,s1,+00000002
	beq	a2,zero,000000002306DED4

l2306DDC8:
	lbu	a4,s1,+00000003
	beq	a4,zero,000000002306DF70

l2306DDD0:
	lbu	a5,s1,+00000004
	beq	a5,zero,000000002306DF14

l2306DDD8:
	addi	a0,s1,+00000000
	jal	ra,000000002306D630
	addi	s2,a0,+00000000
	ori	a1,a0,+00000200
	addi	a0,s0,+00000000
	jal	ra,000000002306D878
	bltu	a0,s2,000000002306DF5C

l2306DDF4:
	addi	a5,zero,+000000FE
	bltu	a5,s2,000000002306DFEC

l2306DDFC:
	sub	s3,a0,s2
	addi	a2,zero,+00000040
	addi	a1,s2,+00000001
	addi	a0,sp,+00000000
	add	s3,s0,s3
	jal	ra,000000002306D1BC
	beq	s2,zero,000000002306DE48

l2306DE18:
	andi	a2,s2,+000000FF
	addi	a4,s1,+00000000
	add	a1,s2,s1
	add	a2,s1,a2

l2306DE28:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000040
	sub	a3,a2,a4
	andi	a5,a5,+0000003F
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sb	a3,a5,+00000FC0
	bne	a1,a4,000000002306DE28

l2306DE48:
	lui	s5,00000001
	addi	s5,s5,-00000800

l2306DE50:
	addi	s0,s0,-00000001
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	lbu	a5,a5,-00000040
	add	s0,s0,a5
	bgeu	s3,s0,000000002306DE80

l2306DE74:
	jal	zero,000000002306DFC0

l2306DE78:
	add	s0,s0,s4
	bltu	s3,s0,000000002306DFC0

l2306DE80:
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	addi	a0,s0,+00000000
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	addi	a2,s2,+00000000
	addi	a1,s1,+00000000
	lbu	s4,a5,-00000040
	jal	ra,000000002306CEF8
	bne	a0,zero,000000002306DE78

l2306DEAC:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000005C
	lw	s0,sp,+00000058
	lw	s1,sp,+00000054
	lw	s2,sp,+00000050
	lw	s3,sp,+0000004C
	lw	s4,sp,+00000048
	lw	s5,sp,+00000044
	addi	sp,sp,+00000060
	jalr	zero,ra,+00000000

l2306DED4:
	lbu	a5,a0,+00000000
	slli	a1,a1,00000010
	or	a1,a1,a3
	beq	a5,zero,000000002306DF5C

l2306DEE4:
	addi	a3,a0,+00000001
	lbu	a4,a0,+00000001
	jal	zero,000000002306DEF4

l2306DEF0:
	addi	a3,a2,+00000000

l2306DEF4:
	slli	a5,a5,00000010
	or	a5,a4,a5
	beq	a4,zero,000000002306DF5C

l2306DF00:
	addi	a2,a3,+00000001
	lbu	a4,a3,+00000001
	bne	a1,a5,000000002306DEF0

l2306DF0C:
	addi	s0,a3,-00000001
	jal	zero,000000002306DEAC

l2306DF14:
	slli	a5,a3,00000010
	slli	a1,a1,00000018
	lbu	a3,a0,+00000000
	or	a5,a1,a5
	or	a5,a5,a4
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a3,zero,000000002306DF5C

l2306DF34:
	addi	a4,zero,+00000000
	jal	zero,000000002306DF44

l2306DF3C:
	beq	a5,a4,000000002306DFE4

l2306DF40:
	addi	s0,a2,+00000000

l2306DF44:
	slli	a4,a4,00000008
	or	a4,a3,a4
	lbu	a3,s0,+00000001
	addi	a2,s0,+00000001
	bne	a3,zero,000000002306DF3C

l2306DF58:
	beq	a5,a4,000000002306DFE4

l2306DF5C:
	addi	s0,zero,+00000000
	jal	zero,000000002306DEAC

l2306DF64:
	jal	ra,000000002306D298
	addi	s0,a0,+00000000
	jal	zero,000000002306DEAC

l2306DF70:
	lbu	a4,a0,+00000000
	slli	a5,a1,00000018
	slli	a1,a3,00000010
	or	a5,a5,a1
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a4,zero,000000002306DF5C

l2306DF8C:
	slli	a4,a4,00000008
	addi	a2,a0,+00000001
	lbu	a3,a0,+00000001
	jal	zero,000000002306DFA0

l2306DF9C:
	addi	a2,a1,+00000000

l2306DFA0:
	or	a4,a3,a4
	slli	a4,a4,00000008
	beq	a3,zero,000000002306DF5C

l2306DFAC:
	addi	a1,a2,+00000001
	lbu	a3,a2,+00000001
	bne	a5,a4,000000002306DF9C

l2306DFB8:
	addi	s0,a2,-00000002
	jal	zero,000000002306DEAC

l2306DFC0:
	add	a0,s3,s2
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002306DF5C

l2306DFCC:
	addi	a1,s5,+00000000
	jal	ra,000000002306D878
	add	s3,s3,a0
	bgeu	s3,s0,000000002306DE50

l2306DFDC:
	addi	s0,zero,+00000000
	jal	zero,000000002306DEAC

l2306DFE4:
	addi	s0,s0,-00000003
	jal	zero,000000002306DEAC

l2306DFEC:
	addi	a1,a0,+00000000
	addi	a3,s2,+00000000
	addi	a0,s0,+00000000
	addi	a2,s1,+00000000
	jal	ra,000000002306D914
	addi	s0,a0,+00000000
	jal	zero,000000002306DEAC

;; _strtol_l.isra.0: 2306E008
;;   Called from:
;;     2306E1C0 (in _strtol_r)
;;     2306E1DC (in strtol_l)
;;     2306E1F8 (in strtol)
_strtol_l.isra.0 proc
	addi	sp,sp,-00000010
	sw	s0,sp,+0000000C
	sw	s1,sp,+00000008
	addi	t2,a0,+00000000
	addi	t1,a1,+00000000
	auipc	t3,00000014
	addi	t3,t3,+00000595
	jal	zero,000000002306E02C

l2306E028:
	addi	t1,a4,+00000000

l2306E02C:
	addi	a4,t1,+00000001
	lbu	a5,a4,-00000001
	add	a6,t3,a5
	lbu	a7,a6,+00000000
	andi	a7,a7,+00000008
	bne	a7,zero,000000002306E028

l2306E044:
	addi	a0,zero,+0000002D
	beq	a5,a0,000000002306E158

l2306E04C:
	addi	a0,zero,+0000002B
	beq	a5,a0,000000002306E0D4

l2306E054:
	addi	a6,a5,+00000000
	addi	s0,zero,+00000000

l2306E05C:
	beq	a3,zero,000000002306E0E4

l2306E060:
	addi	a5,zero,+00000010
	addi	t6,a3,+00000000
	beq	a3,a5,000000002306E170

l2306E06C:
	lui	t0,00080000
	bne	s0,zero,000000002306E078

l2306E074:
	xori	t0,t0,-00000001

l2306E078:
	and	s1,t0,t6
	addi	a7,zero,+00000000
	addi	a0,zero,+00000000
	addi	t1,zero,+00000009
	addi	t5,zero,+00000019
	addi	t3,zero,-00000001
	srl	t4,t0,t6

l2306E094:
	addi	a5,a6,-00000030
	bgeu	t1,a5,000000002306E0A8

l2306E09C:
	addi	a5,a6,-00000041
	bltu	t5,a5,000000002306E0F8

l2306E0A4:
	addi	a5,a6,-00000037

l2306E0A8:
	bge	a5,a3,000000002306E108

l2306E0AC:
	beq	a7,t3,000000002306E0C8

l2306E0B0:
	addi	a7,zero,-00000001
	bltu	t4,a0,000000002306E0C8

l2306E0B8:
	beq	t4,a0,000000002306E134

l2306E0BC:
	addi	a7,zero,+00000001
	add	a6,t6,a0
	add	a0,a5,a6

l2306E0C8:
	addi	a4,a4,+00000001
	lbu	a6,a4,-00000001
	jal	zero,000000002306E094

l2306E0D4:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000000
	addi	a4,t1,+00000002
	bne	a3,zero,000000002306E060

l2306E0E4:
	addi	a5,zero,+00000030
	beq	a6,a5,000000002306E1A4

l2306E0EC:
	addi	t6,zero,+0000000A
	addi	a3,zero,+0000000A
	jal	zero,000000002306E06C

l2306E0F8:
	addi	a5,a6,-00000061
	bltu	t5,a5,000000002306E108

l2306E100:
	addi	a5,a6,-00000057
	blt	a5,a3,000000002306E0AC

l2306E108:
	addi	a5,zero,-00000001
	beq	a7,a5,000000002306E13C

l2306E110:
	beq	s0,zero,000000002306E118

l2306E114:
	sub	a0,zero,a0

l2306E118:
	beq	a2,zero,000000002306E124

l2306E11C:
	bne	a7,zero,000000002306E168

l2306E120:
	sw	a1,a2,+00000000

l2306E124:
	lw	s0,sp,+0000000C
	lw	s1,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306E134:
	blt	s1,a5,000000002306E0C8

l2306E138:
	jal	zero,000000002306E0BC

l2306E13C:
	addi	a5,zero,+00000022
	sw	a5,t2,+00000000
	addi	a0,t0,+00000000
	beq	a2,zero,000000002306E124

l2306E14C:
	addi	a1,a4,-00000001
	addi	a0,t0,+00000000
	jal	zero,000000002306E120

l2306E158:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000001
	addi	a4,t1,+00000002
	jal	zero,000000002306E05C

l2306E168:
	addi	t0,a0,+00000000
	jal	zero,000000002306E14C

l2306E170:
	addi	a5,zero,+00000030
	bne	a6,a5,000000002306E188

l2306E178:
	lbu	a5,a4,+00000000
	addi	a0,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a0,000000002306E190

l2306E188:
	addi	t6,zero,+00000010
	jal	zero,000000002306E06C

l2306E190:
	lbu	a6,a4,+00000001
	addi	t6,zero,+00000010
	addi	a4,a4,+00000002
	addi	a3,zero,+00000010
	jal	zero,000000002306E06C

l2306E1A4:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a3,000000002306E190

l2306E1B4:
	addi	t6,zero,+00000008
	addi	a3,zero,+00000008
	jal	zero,000000002306E06C

;; _strtol_r: 2306E1C0
;;   Called from:
;;     2306CE08 (in _atoi_r)
_strtol_r proc
	jal	zero,000000002306E008

;; strtol_l: 2306E1C4
strtol_l proc
	auipc	a5,0001EFA0
	addi	a5,a5,-000004FC
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,000000002306E008

;; strtol: 2306E1E0
;;   Called from:
;;     2302F9BC (in mmem_cmd)
;;     2302F9CA (in mmem_cmd)
;;     2302F9D8 (in mmem_cmd)
;;     2302FA90 (in pmem_cmd)
;;     2302FACC (in pmem_cmd)
;;     2302FADA (in pmem_cmd)
;;     23044ADE (in get_bytearray_from_string)
;;     2306CDFC (in atoi)
strtol proc
	auipc	a5,0001EFA0
	addi	a5,a5,-00000518
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,000000002306E008

;; stat: 2306E1FC
stat proc
	auipc	a5,0001EFA0
	addi	a5,a5,-00000534
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,000000002306E214

;; _stat_r: 2306E214
;;   Called from:
;;     2306E210 (in stat)
_stat_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EFAC
	sw	zero,a5,+00000560
	jal	ra,000000002306E278
	addi	a5,zero,-00000001
	beq	a0,a5,000000002306E254

l2306E244:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306E254:
	auipc	a5,0001EFAC
	addi	a5,a5,+0000053C
	lw	a5,a5,+00000000
	beq	a5,zero,000000002306E244

l2306E264:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _stat: 2306E278
;;   Called from:
;;     2306E238 (in _stat_r)
_stat proc
	addi	sp,sp,-00000090
	sw	s1,sp,+00000084
	sw	ra,sp,+0000008C
	addi	s1,a1,+00000000
	sw	s0,sp,+00000088
	addi	a2,zero,+00000000
	addi	a1,sp,+00000000
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+0000040E
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,000000002306E2D4

l2306E2B0:
	addi	a0,s1,+00000000
	addi	a1,sp,+00000000
	jal	ra,000000002306E2E8
	addi	a0,s0,+00000000
	lw	ra,sp,+0000008C
	lw	s0,sp,+00000088
	lw	s1,sp,+00000084
	addi	sp,sp,+00000090
	jalr	zero,ra,+00000000

l2306E2D4:
	sub	s0,zero,s0
	jal	ra,000000002306CE0C
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,000000002306E2B0

;; _conv_stat: 2306E2E8
;;   Called from:
;;     2306E2B8 (in _stat)
_conv_stat proc
	addi	sp,sp,-00000010
	lw	t2,a1,+00000014
	lw	t0,a1,+00000018
	lw	t6,a1,+0000001C
	lw	t5,a1,+00000020
	lw	t4,a1,+00000030
	lw	t3,a1,+00000040
	lw	t1,a1,+00000038
	lw	a6,a1,+00000048
	lw	a7,a1,+0000004C
	lw	a2,a1,+00000058
	sw	s0,sp,+0000000C
	sw	s1,sp,+00000008
	lw	s0,a1,+00000010
	lw	s1,a1,+00000008
	sw	s2,sp,+00000004
	lw	s2,a1,+00000000
	lw	a3,a1,+0000005C
	lw	a4,a1,+00000068
	lw	a5,a1,+0000006C
	sh	s2,a0,+00000000
	sh	s1,a0,+00000002
	sw	s0,a0,+00000004
	sh	t2,a0,+00000008
	sh	t0,a0,+0000000A
	sh	t6,a0,+0000000C
	sh	t5,a0,+0000000E
	sw	t4,a0,+00000010
	sw	t3,a0,+00000048
	sw	t1,a0,+00000044
	sw	a6,a0,+00000018
	sw	a7,a0,+0000001C
	sw	a2,a0,+00000028
	sw	a3,a0,+0000002C
	lw	s0,sp,+0000000C
	sw	a4,a0,+00000038
	sw	a5,a0,+0000003C
	lw	s1,sp,+00000008
	lw	s2,sp,+00000004
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000
