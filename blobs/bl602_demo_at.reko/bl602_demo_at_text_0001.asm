;;; Segment .text (23000300)

l23010308:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002300F90E
	c.bnez	a0,00000000230102C6

l23010312:
	c.j	000000002301002C

l23010314:
	srli	s7,s5,0000000F
	c.addi	s7,FFFFFFF8
	andi	s7,s7,+000000FF
	addi	a4,zero,+000001B0
	add	a4,s7,a4
	lui	s4,0004201F
	addi	a5,s4,-000005A0
	addi	s4,s4,-000005A0
	c.add	a5,a4
	lbu	s3,a5,+0000001D
	beq	s3,zero,000000002301002C

l2301033C:
	lbu	a5,a5,+0000001A
	addi	a3,zero,+000005D8
	sw	s5,s0,+00000018
	sb	a5,s0,+0000000A
	add	a5,a5,a3
	lui	s5,00042020
	addi	a4,s5,-00000088
	sb	s7,s0,+00000009
	addi	s5,s5,-00000088
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,0000000023010384

l2301036C:
	lbu	a5,s0,+00000024
	c.andi	a5,00000001
	c.bnez	a5,0000000023010384

l23010374:
	lui	a0,00042021
	addi	a0,a0,+00000554
	jal	ra,00000000230077AA
	sb	a0,s0,+0000000B

l23010384:
	andi	a5,s8,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002301039C

l23010390:
	lw	a5,s6,+0000004C
	ori	a5,a5,+00000004
	sw	a5,s6,+0000004C

l2301039C:
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,00000000230103C2

l230103A8:
	andi	s6,s8,+0000000C
	beq	s6,zero,00000000230103CE

l230103B0:
	c.li	a5,00000008
	bne	s6,a5,000000002301002C

l230103B6:
	andi	a5,s8,+00000040
	c.beqz	a5,0000000023010422

l230103BC:
	jal	ra,00000000230087A8
	c.j	000000002301002C

l230103C2:
	c.lw	s0,24(a1)
	c.mv	a0,s1
	jal	ra,000000002300F90E
	c.bnez	a0,00000000230103A8

l230103CC:
	c.j	000000002301002C

l230103CE:
	slli	a5,s8,00000014
	lhu	a4,s0,+00000002
	bge	a5,zero,00000000230103EC

l230103DA:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	c.add	a5,s4
	lhu	a5,a5,+00000188
	beq	a5,a4,000000002301002C

l230103EC:
	addi	a1,zero,+000001B0
	add	s7,s7,a1
	lbu	a5,s0,+00000030
	c.andi	a5,00000002
	c.add	s4,s7
	sh	a4,s4,+00000188
	c.beqz	a5,000000002301041C

l23010402:
	c.lw	s0,32(a5)
	c.lw	s0,20(a4)
	c.lw	s0,16(a3)
	c.lw	a5,68(a2)
	bltu	a2,a4,0000000023010418

l2301040E:
	bne	a2,a4,000000002301002C

l23010412:
	c.lw	a5,64(a2)
	bgeu	a2,a3,000000002301002C

l23010418:
	c.sw	a5,64(a3)
	c.sw	a5,68(a4)

l2301041C:
	lbu	a1,s0,+00000009
	c.j	00000000230102CA

l23010422:
	andi	a5,s8,+00000080
	beq	a5,zero,000000002301054A

l2301042A:
	addi	a4,zero,+000000D8
	add	a4,s7,a4
	lbu	a5,s0,+00000007
	addi	a5,a5,+000000C5
	c.add	a5,a4
	c.slli	a5,01

l2301043E:
	slli	a4,s8,00000014
	c.add	a5,s4
	lhu	a3,s0,+00000002
	bge	a4,zero,0000000023010454

l2301044C:
	lhu	a4,a5,+00000000
	beq	a4,a3,000000002301002C

l23010454:
	sh	a3,a5,+00000000
	lbu	a5,s0,+00000030
	lbu	a4,s0,+0000000A
	c.andi	a5,00000002
	c.beqz	a5,0000000023010488

l23010464:
	lbu	a5,s0,+00000007
	c.lw	s0,20(a3)
	c.lw	s0,16(a1)
	slli	a2,a5,00000003
	c.lw	s0,32(a5)
	c.add	a5,a2
	c.lw	a5,4(a2)
	bltu	a2,a3,0000000023010484

l2301047A:
	bne	a2,a3,000000002301002C

l2301047E:
	c.lw	a5,0(a2)
	bgeu	a2,a1,000000002301002C

l23010484:
	c.sw	a5,0(a1)
	c.sw	a5,4(a3)

l23010488:
	addi	a5,zero,+000005D8
	add	a5,a4,a5
	c.add	a5,s5
	lbu	a5,a5,+000003E8
	c.bnez	a5,00000000230104A2

l23010498:
	lui	a5,00042021
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023010576

l230104A2:
	lw	a5,s2,+00000004
	lbu	s8,s0,+00000008
	lui	a1,000230CC
	c.lw	a5,8(a5)
	c.li	a2,00000006
	addi	a1,a1,-0000077C
	c.lw	a5,8(s1)
	c.add	s8,s1
	c.mv	a0,s8
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023010576

l230104C2:
	lhu	a4,s8,+00000006
	c.lui	a5,00009000
	addi	a5,a5,-00000178
	bne	a4,a5,0000000023010576

l230104D0:
	addi	a1,zero,+000001B0
	add	a1,s7,a1
	addi	a5,zero,+000005D8
	c.add	s4,a1
	lbu	a4,s4,+0000001A
	add	a5,a4,a5
	c.add	s5,a5
	lbu	a5,s5,+00000056
	c.bnez	a5,0000000023010558

l230104EE:
	lui	a5,00042021
	addi	a5,a5,+00000440
	c.lw	a5,8(a3)
	lbu	a3,a3,+00000005
	beq	a3,zero,000000002301002C

l23010500:
	sb	s7,a5,+00000001
	sb	a4,a5,+00000002

l23010508:
	lw	a3,s2,+00000004
	c.swsp	a5,00000004
	lbu	a4,s0,+00000008
	lhu	a3,a3,+0000001C
	c.li	a5,FFFFFFF8
	c.sub	a5,a4
	c.addi	a4,00000008
	c.add	a5,a3
	c.add	s1,a4
	c.swsp	s1,00000008
	sh	a5,sp,+0000000C
	lui	s1,00044B00
	lw	a5,s1,+00000120
	lui	a2,00042021
	lui	a1,00042021
	addi	a2,a2,+00000554
	addi	a1,a1,+0000055A
	c.addi4spn	a0,00000008
	jal	ra,0000000023016200
	lw	a5,s1,+00000120
	c.j	000000002301002C

l2301054A:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	addi	a5,a5,+00000188
	c.j	000000002301043E

l23010558:
	lui	a5,00042021
	lw	a4,a5,+0000052C
	sb	s7,a4,+00000001
	lw	a4,a5,+0000052C
	lbu	a3,s4,+0000001A
	sb	a3,a4,+00000002
	lw	a5,a5,+0000052C
	c.j	0000000023010508

l23010576:
	lui	a5,0004201F
	lw	a4,a5,-000005D4
	c.li	a5,0000000D
	c.sub	a5,a4
	c.li	a4,00000005
	bgeu	a4,a5,000000002301002C

l23010588:
	lhu	a5,s0,+00000000
	andi	a5,a5,+00000400
	bne	a5,zero,000000002301002C

l23010594:
	lbu	a5,s0,+00000006
	bne	a5,zero,000000002301002C

l2301059C:
	lbu	a5,s0,+00000030
	c.andi	a5,00000001
	beq	a5,zero,000000002301070A

l230105A6:
	c.lw	s0,32(a1)
	lbu	a4,s0,+00000007
	lui	a3,00042021
	lui	a2,00042021
	addi	a3,a3,+0000055A
	addi	a2,a2,+00000554
	addi	a1,a1,+00000058
	c.addi4spn	a0,00000008
	jal	ra,000000002300D774
	lw	a5,s2,+00000004
	lbu	s1,s0,+00000008
	c.li	s5,FFFFFFF8
	lw	s7,a5,+00000008
	lhu	a5,a5,+0000001C
	sub	s5,s5,s1
	addi	s9,zero,+00000350
	c.add	s5,a5
	c.slli	s5,10
	srli	s5,s5,00000010
	addi	s10,zero,+00000350

l230105EC:
	lw	a1,s7,+00000008
	add	a5,s5,s1
	c.mv	s8,s5
	c.add	a1,s1
	bge	s9,a5,0000000023010606

l230105FC:
	sub	s8,s10,s1
	c.slli	s8,10
	srli	s8,s8,00000010

l23010606:
	sub	s5,s5,s8
	c.slli	s5,10
	srli	s5,s5,00000010
	c.mv	a2,s8
	c.addi4spn	a0,00000008
	jal	ra,000000002300D826
	beq	s5,zero,0000000023010640

l2301061C:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,00000000230105EC

l23010626:
	addi	a2,zero,+00000369

l2301062A:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000354
	jal	ra,00000000230011F4
	c.j	000000002301002C

l23010640:
	c.add	s1,s8
	c.slli	s1,10
	c.mv	a3,sp
	c.srli	s1,00000010
	addi	a0,zero,+00000350
	addi	a6,zero,+00000350

l23010650:
	lw	a4,s7,+00000008
	add	a5,s6,s1
	c.mv	a1,s6
	c.add	a4,s1
	bge	a0,a5,000000002301066A

l23010660:
	sub	s1,a6,s1
	slli	a1,s1,00000010
	c.srli	a1,00000010

l2301066A:
	c.li	a5,00000000

l2301066C:
	add	a2,a5,a3
	bne	a5,a1,0000000023010694

l23010674:
	sub	s6,s6,a5
	c.slli	s6,10
	srli	s6,s6,00000010
	c.mv	a3,a2
	beq	s6,zero,00000000230106A4

l23010684:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,0000000023010650

l2301068E:
	addi	a2,zero,+00000392
	c.j	000000002301062A

l23010694:
	add	a7,a5,a4
	lbu	a7,a7,+00000000
	c.addi	a5,00000001
	sb	a7,a2,+00000000
	c.j	000000002301066C

l230106A4:
	c.addi4spn	a0,00000008
	jal	ra,000000002300D96A
	c.lwsp	zero,000000C4
	c.lwsp	s0,000000E4
	bne	a4,a5,00000000230106BA

l230106B2:
	c.lwsp	tp,000000C4
	c.lwsp	a2,000000E4
	beq	a4,a5,000000002301070A

l230106BA:
	c.lui	a0,00001000
	c.li	a3,00000018
	c.li	a2,00000005
	c.li	a1,0000000D
	addi	a0,a0,+00000406
	jal	ra,00000000230149A2
	lbu	a1,s0,+00000009
	addi	a4,zero,+000001B0
	c.li	a2,00000006
	add	a1,a1,a4
	c.add	a1,s4
	c.addi	a1,0000001E
	jal	ra,00000000230A382C
	c.lw	s0,16(a2)
	c.lw	s0,20(a3)
	c.sw	a0,8(a2)
	c.sw	a0,12(a3)
	c.lw	s0,24(a4)
	c.srli	a4,0000000A
	c.andi	a4,00000001
	sb	a4,a0,+00000010
	lbu	a4,s0,+0000000A
	sb	a4,a0,+00000012
	c.lw	s0,32(a4)
	lbu	a4,a4,+00000061
	sb	a4,a0,+00000011
	jal	ra,0000000023014A0E
	c.j	000000002301002C

l2301070A:
	lbu	a5,s0,+00000009
	lbu	a4,s0,+0000000A
	lw	a3,s2,+00000004
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	lbu	a4,s0,+0000000B
	lbu	s4,s0,+00000008
	c.slli	a4,18
	c.or	a5,a4
	c.lw	a3,76(a4)
	c.or	a5,a4
	c.sw	a3,76(a5)
	lw	a3,s2,+00000004
	c.lw	a3,8(a5)
	c.lw	a3,76(a4)
	c.lw	a5,8(s1)
	andi	a2,a4,-00000071
	c.sw	a3,76(a2)
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a1,a5,+000000FC
	addi	a4,zero,+00000088
	bne	a1,a4,000000002301077E

l23010756:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,00000000230107EC

l23010762:
	lbu	a4,s1,+0000001E
	lbu	a5,s1,+0000001F

l2301076A:
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000007
	c.slli	a4,04
	andi	a5,a5,+00000080
	c.or	a4,a2
	c.bnez	a5,00000000230107F6

l2301077C:
	c.sw	a3,76(a4)

l2301077E:
	slli	s5,s4,00000010
	srli	s5,s5,00000010
	andi	a5,s5,+000000FE
	c.add	s1,a5
	lui	a1,000230CC
	c.li	a2,00000006
	addi	a1,a1,-0000077C
	c.mv	a0,s1
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301085E

l2301079E:
	lhu	a4,s1,+00000006
	c.lui	a5,00008000
	addi	a5,a5,+00000137
	beq	a4,a5,000000002301085E

l230107AC:
	c.addi	s4,FFFFFFFA
	addi	a4,s1,-00000006
	andi	s4,s4,+000000FF
	sb	zero,s0,+00000031

l230107BA:
	lhu	a5,s0,+00000024
	sh	a5,a4,+00000000
	lhu	a5,s0,+00000026
	sh	a5,a4,+00000002
	lhu	a5,s0,+00000028
	sh	a5,a4,+00000004
	lhu	a5,s0,+0000002A
	sh	a5,a4,+00000006
	lhu	a5,s0,+0000002C
	sh	a5,a4,+00000008
	lhu	a5,s0,+0000002E
	sh	a5,a4,+0000000A
	c.j	00000000230107FC

l230107EC:
	lbu	a4,s1,+00000018
	lbu	a5,s1,+00000019
	c.j	000000002301076A

l230107F6:
	ori	a4,a4,+00000001
	c.sw	a3,76(a4)

l230107FC:
	lw	a4,s2,+00000004
	c.mv	a0,s2
	lhu	a5,a4,+0000001C
	sub	a5,a5,s4
	sh	a5,a4,+0000001C
	lw	a5,s2,+00000004
	sb	s4,s0,+00000032
	sw	s4,a5,+00000054
	lui	a5,00042021
	sw	s4,a5,+000005A8
	jal	ra,000000002300A15E
	csrrci	zero,mstatus,00000008
	c.lw	s0,72(a4)
	lw	a5,s2,+00000004
	c.li	a3,00000003
	sb	a3,s2,+0000001C
	sw	a4,s2,+00000014
	lhu	a5,a5,+0000001C
	sw	a5,s2,+00000018
	csrrci	zero,mstatus,00000008
	lui	a0,00042021
	c.mv	a1,s2
	addi	a0,a0,+00000570
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	csrrsi	zero,mstatus,00000008
	c.j	0000000023010266

l2301085E:
	lui	a1,000230CC
	c.li	a2,00000006
	addi	a1,a1,-00000784
	c.mv	a0,s1
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230107AC

l23010870:
	lw	a5,s2,+00000004
	c.addi	s4,FFFFFFF2
	andi	s4,s4,+000000FF
	lhu	a5,a5,+0000001C
	addi	a4,s1,-0000000E
	sub	a5,a5,s5
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s1,+00000FFE
	c.srli	a5,00000008
	sb	a5,s1,+00000FFF
	c.li	a5,00000001
	sb	a5,s0,+00000031
	c.j	00000000230107BA

;; rxu_cntrl_monitor_pm: 2301089C
;;   Called from:
;;     2300BCBE (in txl_payload_handle_backup)
rxu_cntrl_monitor_pm proc
	lui	a5,00042021
	addi	a5,a5,+00000530
	lbu	a4,a5,+0000006F
	c.bnez	a4,00000000230108CA

l230108AA:
	lhu	a4,a0,+00000000
	sh	a4,a5,+00000068
	lhu	a4,a0,+00000002
	sh	a4,a5,+0000006A
	lhu	a4,a0,+00000004
	sh	a4,a5,+0000006C
	addi	a4,zero,+00000100
	sh	a4,a5,+0000006E

l230108CA:
	c.jr	ra

;; rxu_cntrl_get_pm: 230108CC
;;   Called from:
;;     230130AA (in txu_cntrl_cfm)
;;     2301DEEC (in me_sta_add_req_handler)
rxu_cntrl_get_pm proc
	lui	a5,00042021
	addi	a5,a5,+00000530
	lbu	a0,a5,+0000006E
	sh	zero,a5,+0000006E
	c.jr	ra

;; rxu_cntrl_evt: 230108DE
rxu_cntrl_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000080
	c.swsp	ra,00000084
	jal	ra,00000000230146EE
	lui	a5,00042021
	lw	a5,a5,+00000570
	c.beqz	a5,0000000023010900

l230108F4:
	c.lwsp	a2,00000020
	lui	a0,00020000
	c.addi	sp,00000010
	jal	zero,00000000230146D6

l23010900:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxu_swdesc_upload_evt: 23010906
rxu_swdesc_upload_evt proc
	c.addi16sp	FFFFFFB0
	lui	a0,00020000
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s1,000000A0
	lui	s2,00042021
	jal	ra,00000000230146EE
	addi	a0,s2,+00000570
	jal	ra,000000002301450E
	lui	s3,0004201F
	c.mv	s0,a0
	addi	s5,sp,+00000018
	c.li	s4,00000001
	addi	s6,zero,+0000034F
	addi	s3,s3,-000005E8

l23010940:
	c.bnez	s0,0000000023010956

l23010942:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.addi16sp	00000050
	c.jr	ra

l23010956:
	c.lw	s0,4(a5)
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	lhu	s1,a5,+0000001C
	jal	ra,00000000230A3A68
	c.lw	s0,4(a5)
	c.addi4spn	a4,00000008
	c.mv	a2,a4
	c.lw	a5,8(a5)

l23010970:
	c.bnez	s1,00000000230109A2

l23010972:
	c.lw	s0,4(a5)
	sb	s4,s0,+0000001E
	c.addi4spn	a4,00000008
	sw	s4,a5,+00000060
	c.lw	s0,4(a2)
	lbu	a1,s0,+0000001C
	c.mv	a0,s0
	c.lw	a2,84(a3)
	c.addi	a2,0000001C
	jal	ra,0000000023023E5E
	c.beqz	a0,00000000230109DC

l23010990:
	c.mv	a0,s0
	jal	ra,000000002300A326

l23010996:
	addi	a0,s2,+00000570
	jal	ra,000000002301450E
	c.mv	s0,a0
	c.j	0000000023010940

l230109A2:
	beq	a4,s5,0000000023010972

l230109A6:
	lbu	a3,s0,+0000001D
	c.addi	a3,00000001
	sb	a3,s0,+0000001D
	c.lw	a5,8(a1)
	c.sw	a4,0(a1)
	c.lw	a5,12(a3)
	c.addi	a3,00000001
	c.sub	a3,a1
	sh	a3,a2,+00000020
	addi	a3,a5,+0000001C
	c.sw	a4,16(a3)
	sw	s4,a5,+00000014
	bgeu	s6,s1,00000000230109D8

l230109CC:
	addi	s1,s1,-00000350

l230109D0:
	c.lw	a5,4(a5)
	c.addi	a4,00000004
	c.addi	a2,00000002
	c.j	0000000023010970

l230109D8:
	c.li	s1,00000000
	c.j	00000000230109D0

l230109DC:
	jal	ra,0000000023063658
	lw	a5,s3,+00000014
	lbu	a4,s0,+0000001D
	c.add	a5,a4
	sw	a5,s3,+00000014
	jal	ra,000000002306366C
	c.j	0000000023010996

;; scanu_confirm: 230109F4
;;   Called from:
;;     230116F8 (in scanu_scan_next)
;;     2301E292 (in scan_start_cfm_handler)
scanu_confirm proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042021
	c.swsp	s3,00000084
	addi	a5,s0,+000005AC
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lhu	a1,a5,+00000168
	lbu	a5,a5,+0000016A
	c.mv	s3,a0
	addi	s0,s0,+000005AC
	c.li	a3,00000001
	c.li	a2,00000004
	c.beqz	a5,0000000023010A6E

l23010A1C:
	c.lui	s1,00001000
	addi	a0,s1,+00000003
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.li	a3,00000001
	addi	a0,s1,+00000003
	c.li	a2,00000004
	c.li	a1,0000000D
	jal	ra,00000000230149A2
	c.mv	s1,a0

l23010A38:
	sb	s3,s2,+00000000
	c.lw	s0,0(a0)
	c.addi	a0,FFFFFFF4
	jal	ra,0000000023014A9A
	c.mv	a0,s2
	sw	zero,s0,+00000000
	jal	ra,0000000023014A0E
	c.beqz	s1,0000000023010A5A

l23010A50:
	sb	s3,s1,+00000000
	c.mv	a0,s1
	jal	ra,0000000023014A0E

l23010A5A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.li	a0,00000004
	c.addi16sp	00000020
	jal	zero,0000000023014B3C

l23010A6E:
	c.lui	a0,00001000
	c.addi	a0,00000001
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.li	s1,00000000
	c.j	0000000023010A38

;; scanu_raw_send_cfm: 23010A7C
;;   Called from:
;;     2301E152 (in scanu_raw_send_req_handler)
scanu_raw_send_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000004
	c.li	a2,00000004
	c.addi	a0,00000006
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.sw	a0,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; scanu_init: 23010A9C
;;   Called from:
;;     2300D6C6 (in me_init)
scanu_init proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023014B3C
	lui	s0,00042021
	addi	a0,s0,+000005AC
	addi	a2,zero,+00000194
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	lui	a4,00023011
	addi	a5,s0,+000005AC
	addi	a4,a4,+000006FC
	c.sw	a5,12(a4)
	lui	a4,00042046
	addi	a4,a4,-00000234
	sw	zero,a5,+00000010
	c.sw	a5,8(a4)
	lui	a5,00042046
	addi	a5,a5,-00000224
	c.sw	a4,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scanu_find_result: 23010AEA
;;   Called from:
;;     23010BEC (in scanu_frame_handler)
;;     23011344 (in scanu_search_by_bssid)
scanu_find_result proc
	lui	a5,00042021
	lui	a3,00042021
	c.mv	a4,a0
	addi	a5,a5,+000005C4
	addi	a3,a3,+00000714

l23010AFC:
	lbu	a2,a5,+00000034
	c.mv	a0,a5
	c.beqz	a2,0000000023010B4E

l23010B04:
	lbu	a6,a5,+00000000
	lbu	a2,a4,+00000000
	bne	a6,a2,0000000023010B50

l23010B10:
	lbu	a6,a5,+00000001
	lbu	a2,a4,+00000001
	bne	a6,a2,0000000023010B50

l23010B1C:
	lbu	a6,a5,+00000002
	lbu	a2,a4,+00000002
	bne	a6,a2,0000000023010B50

l23010B28:
	lbu	a6,a5,+00000003
	lbu	a2,a4,+00000003
	bne	a6,a2,0000000023010B50

l23010B34:
	lbu	a6,a5,+00000004
	lbu	a2,a4,+00000004
	bne	a6,a2,0000000023010B50

l23010B40:
	lbu	a6,a5,+00000005
	lbu	a2,a4,+00000005
	bne	a6,a2,0000000023010B50

l23010B4C:
	c.jr	ra

l23010B4E:
	c.bnez	a1,0000000023010B5A

l23010B50:
	addi	a5,a5,+00000038
	bne	a5,a3,0000000023010AFC

l23010B58:
	c.li	a0,00000000

l23010B5A:
	c.jr	ra

;; scanu_frame_handler: 23010B5C
;;   Called from:
;;     2301E262 (in rxu_mgt_ind_handler)
scanu_frame_handler proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s4,0000003C
	c.swsp	s6,00000038
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s5,000000B8
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	lhu	a1,a0,+00000000
	lui	s4,00042021
	lw	a5,s4,+000005AC
	addi	a1,a1,-00000024
	addi	s6,a0,+00000040
	c.slli	a1,10
	c.mv	s0,a0
	c.li	a2,00000000
	c.srli	a1,00000010
	c.mv	a0,s6
	c.swsp	a5,00000080
	lbu	s5,a5,+0000014E
	jal	ra,0000000023015122
	addi	s4,s4,+000005AC
	c.beqz	a0,0000000023010BDA

l23010BA6:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,0000000023010CF2

l23010BB2:
	c.beqz	a5,0000000023010BDA

l23010BB4:
	lbu	a4,a0,+00000002
	addi	a3,a0,+00000002
	c.beqz	a4,0000000023010BDA

l23010BBE:
	sb	a5,sp,+0000002C
	c.addi4spn	a4,0000002C
	c.li	a2,FFFFFFFF

l23010BC6:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a2,0000000023010CF8

l23010BCE:
	lbu	a5,sp,+0000002C
	c.addi4spn	a4,00000050
	c.add	a5,a4
	sb	zero,a5,+00000FDD

l23010BDA:
	c.li	a0,00000004
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	bne	a0,a5,0000000023011310

l23010BE6:
	c.li	a1,00000001
	addi	a0,s0,+0000002C
	jal	ra,0000000023010AEA
	c.mv	s8,a0
	beq	a0,zero,0000000023011310

l23010BF6:
	lbu	a5,s4,+0000016C
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023010C44

l23010C00:
	lbu	a4,s0,+0000002C
	bne	a4,a5,0000000023011310

l23010C08:
	lbu	a4,s0,+0000002D
	lbu	a5,s4,+0000016D
	bne	a4,a5,0000000023011310

l23010C14:
	lbu	a4,s0,+0000002E
	lbu	a5,s4,+0000016E
	bne	a4,a5,0000000023011310

l23010C20:
	lbu	a4,s0,+0000002F
	lbu	a5,s4,+0000016F
	bne	a4,a5,0000000023011310

l23010C2C:
	lbu	a4,s0,+00000030
	lbu	a5,s4,+00000170
	bne	a4,a5,0000000023011310

l23010C38:
	lbu	a4,s0,+00000031
	lbu	a5,s4,+00000171
	bne	a4,a5,0000000023011310

l23010C44:
	lhu	a5,s0,+0000002C
	sh	a5,s8,+00000000
	lhu	a5,s0,+0000002E
	sh	a5,s8,+00000002
	lhu	a5,s0,+00000030
	sh	a5,s8,+00000004
	lbu	a5,s0,+0000003D
	lbu	a4,s0,+0000003C
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s8,+00000030
	lbu	a5,s0,+0000003F
	lbu	a4,s0,+0000003E
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s8,+00000032
	c.andi	a5,00000001
	c.bnez	a5,0000000023010C82

l23010C80:
	c.li	a5,00000002

l23010C82:
	sh	a5,s8,+00000028
	lhu	s2,s0,+00000000
	c.li	a2,00000000
	c.mv	a0,s6
	addi	s2,s2,-00000024
	c.slli	s2,10
	srli	s2,s2,00000010
	c.mv	a1,s2
	jal	ra,0000000023015122
	c.beqz	a0,0000000023010D30

l23010CA0:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,0000000023010D04

l23010CAC:
	c.bnez	a5,0000000023010D08

l23010CAE:
	lb	a5,s0,+0000001A
	sb	a5,s8,+00000036
	lb	a5,s0,+00000019
	sb	a5,s8,+00000037
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,0000000023010D4C

l23010CC6:
	c.lwsp	tp,000000E4
	c.li	s1,00000000
	addi	s7,s8,+00000007
	addi	s3,a5,+000000FC

l23010CD2:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	bge	s1,a5,0000000023010D42

l23010CDC:
	lbu	a5,s3,+00000000
	c.beqz	a5,0000000023010D4C

l23010CE2:
	lbu	a2,s8,+00000006
	beq	a2,a5,0000000023010D36

l23010CEA:
	c.addi	s1,00000001
	addi	s3,s3,+00000022
	c.j	0000000023010CD2

l23010CF2:
	addi	a5,zero,+00000020
	c.j	0000000023010BB4

l23010CF8:
	lbu	a1,a3,+00000000
	c.addi	a3,00000001
	sb	a1,a4,+00000000
	c.j	0000000023010BC6

l23010D04:
	addi	a5,zero,+00000020

l23010D08:
	lbu	a3,a0,+00000002
	addi	a4,a0,+00000002
	c.beqz	a3,0000000023010CAE

l23010D12:
	sb	a5,s8,+00000006
	addi	a3,s8,+00000007
	c.li	a2,FFFFFFFF

l23010D1C:
	c.addi	a5,FFFFFFFF
	beq	a5,a2,0000000023010CAE

l23010D22:
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a1,a3,+00000FFF
	c.j	0000000023010D1C

l23010D30:
	sb	zero,s8,+00000006
	c.j	0000000023010CAE

l23010D36:
	c.mv	a1,s7
	addi	a0,s3,+00000001
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023010CEA

l23010D42:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	beq	a5,s1,0000000023011310

l23010D4C:
	c.li	a2,00000003
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023015122
	beq	a0,zero,0000000023011200

l23010D5A:
	lbu	a1,a0,+00000002
	lbu	a0,s0,+00000006
	bne	a0,zero,00000000230111D0

l23010D66:
	addi	a5,a1,-00000001
	c.li	a4,0000000D
	bltu	a4,a5,00000000230111FA

l23010D70:
	c.li	a5,0000000E
	beq	a1,a5,00000000230111F2

l23010D76:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010

l23010D88:
	jal	ra,000000002300D6DA
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	lb	a4,s8,+00000035
	bge	a4,a5,0000000023010DA0

l23010D9C:
	sb	a5,s8,+00000035

l23010DA0:
	lbu	a5,s4,+0000016A
	beq	a5,zero,00000000230112F2

l23010DA8:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	lui	s1,00042020
	addi	s11,s1,-00000088
	addi	a2,zero,+00000022
	addi	a1,s8,+00000006
	addi	s1,s1,-00000088
	addi	s9,s3,+00000358
	add	a5,s9,s11
	c.swsp	a5,00000004
	lhu	a5,s8,+00000028
	add	s7,s11,s3
	addi	a0,s7,+0000037E
	sh	a5,s7,+000003A0
	lw	a5,s8,+00000000
	addi	s10,s3,+000003B0
	c.add	s10,s11
	sw	a5,s7,+00000378
	lhu	a5,s8,+00000004
	sh	a5,s7,+0000037C
	lhu	a5,s8,+00000032
	sh	a5,s7,+000003AE
	lhu	a5,s8,+00000030
	sh	a5,s7,+000003AC
	jal	ra,00000000230A382C
	lw	a5,s8,+0000002C
	sw	zero,s7,+000003E0
	c.mv	a2,s10
	sw	a5,s7,+000003A4
	lb	a5,s8,+00000036
	c.mv	a1,s2
	c.mv	a0,s6
	sb	a5,s7,+000003D5
	lb	a5,s8,+00000037
	sb	a5,s7,+000003D6
	jal	ra,000000002301CE32
	lw	a5,s8,+0000002C
	lbu	a5,a5,+00000002
	c.bnez	a5,0000000023010E54

l23010E38:
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,000000002300DB32
	c.andi	a0,0000000F
	beq	a0,zero,0000000023011222

l23010E46:
	jal	ra,000000002309F27C
	c.li	a5,0000001F
	sub	a0,a5,a0
	sb	a0,s7,+000003D7

l23010E54:
	lui	a2,000230AC
	c.li	a3,00000005
	addi	a2,a2,+000005C8
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301513E
	beq	a0,zero,000000002301122A

l23010E6A:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	lbu	a4,a0,+00000008
	c.add	a5,s1
	sb	a4,a5,+000003C0
	lhu	a4,a5,+000003AE
	ori	a4,a4,+00000200
	sh	a4,a5,+000003AE
	lbu	a4,a0,+0000000B
	lbu	a3,a0,+0000000A
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,a0,+0000000C
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,a0,+0000000D
	c.slli	a3,18
	c.or	a3,a4
	srli	a2,a3,00000008
	srli	a4,a3,00000003
	c.slli	a2,04
	c.andi	a3,0000000F
	andi	a1,a4,+00000002
	c.or	a3,a2
	sb	a1,a5,+000003C1
	sw	a3,a5,+000003C8
	lbu	a2,a0,+0000000F
	lbu	a3,a0,+0000000E
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000010
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000011
	c.slli	a3,18
	c.or	a3,a2
	srli	a4,a3,00000004
	srli	a2,a3,00000008
	c.slli	a2,04
	c.andi	a4,00000001
	c.andi	a3,0000000F
	c.or	a3,a2
	c.or	a4,a1
	sb	a4,a5,+000003C1
	sw	a3,a5,+000003C4
	lbu	a2,a0,+00000013
	lbu	a3,a0,+00000012
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000014
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000015
	c.slli	a3,18
	c.or	a3,a2
	srli	a2,a3,00000002
	c.andi	a2,00000004
	c.or	a4,a2
	srli	a2,a3,00000008
	c.slli	a2,04
	c.andi	a3,0000000F
	c.or	a3,a2
	sb	a4,a5,+000003C1
	sw	a3,a5,+000003CC
	lbu	a2,a0,+00000017
	lbu	a3,a0,+00000016
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000018
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000019
	c.slli	a3,18
	c.or	a3,a2
	srli	a2,a3,00000001
	c.andi	a2,00000008
	c.or	a4,a2
	sb	a4,a5,+000003C1
	srli	a4,a3,00000008
	c.slli	a4,04
	c.andi	a3,0000000F
	c.or	a3,a4
	lw	a4,a5,+000003E0
	sw	a3,a5,+000003D0
	ori	a4,a4,+00000001
	sw	a4,a5,+000003E0

l23010F6C:
	lui	a5,00042021
	lbu	a5,a5,-00000496
	c.li	s10,00000000
	c.beqz	a5,0000000023011024

l23010F78:
	addi	s7,zero,+000005D8
	add	s7,s5,s7
	c.add	s7,s1
	lw	s10,s7,+000003E0
	andi	s10,s10,+00000001
	beq	s10,zero,0000000023011024

l23010F8E:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023015122
	c.beqz	a0,0000000023011016

l23010F9C:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	addi	a1,s3,+0000035B
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s7,+00000358
	lbu	a5,a0,+00000004
	addi	a7,a0,+00000005
	c.li	a3,00000010
	sb	a5,s7,+0000035A
	c.li	a5,00000000

l23010FC0:
	add	a4,a7,a5
	lbu	a2,a4,+00000000
	add	a4,a5,a1
	c.add	a4,s1
	sb	a2,a4,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023010FC0

l23010FD8:
	lbu	a4,a0,+00000016
	lbu	a5,a0,+00000015
	c.slli	a4,08
	c.or	a4,a5
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a5,s1
	sh	a4,a5,+0000036C
	lbu	a4,a0,+00000018
	lbu	a3,a0,+00000017
	c.slli	a4,08
	c.or	a4,a3
	sw	a4,a5,+00000370
	lbu	a4,a0,+0000001B
	sb	a4,a5,+00000374
	lw	a4,a5,+000003E0
	ori	a4,a4,+00000002
	sw	a4,a5,+000003E0

l23011016:
	addi	a2,zero,+0000003D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023015122
	c.mv	s10,a0

l23011024:
	addi	a7,zero,+000005D8
	add	a7,s5,a7
	lui	a4,00042021
	lw	a5,a4,+00000740
	addi	a4,a4,+00000740
	c.swsp	a4,0000000C
	lbu	a5,a5,+00000140
	add	s9,s1,a7
	sb	a5,s9,+000003E8
	beq	a5,zero,00000000230112B2

l2301104A:
	lw	a5,s9,+000003E0
	blt	a5,zero,00000000230112B2

l23011052:
	addi	a4,s3,+000003E9
	c.add	a4,s1
	c.mv	a0,a4
	c.li	a2,00000002
	c.li	a1,00000000
	c.swsp	a4,0000008C
	jal	ra,00000000230A3A68
	addi	a5,s3,+000003ED
	c.add	a5,s1
	c.mv	a0,a5
	c.li	a2,00000001
	c.li	a1,00000000
	addi	s11,s3,+000003EE
	c.swsp	a5,00000084
	c.add	s11,s1
	jal	ra,00000000230A3A68
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s11
	jal	ra,00000000230A3A68
	addi	a5,s3,+000003EB
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000008
	jal	ra,00000000230A3A68
	addi	a5,s3,+000003EC
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000088
	jal	ra,00000000230A3A68
	c.mv	a1,s2
	sb	zero,s9,+00000411
	sb	zero,s9,+000003EF
	sb	zero,s9,+000003F0
	addi	a2,zero,+00000030
	c.mv	a0,s6
	jal	ra,0000000023015122
	addi	s7,s3,+000003F1
	c.mv	a1,a0
	c.add	s7,s1
	c.beqz	a0,0000000023011156

l230110CC:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s9,+00000411
	jal	ra,00000000230A382C
	lbu	a5,s9,+000003F0
	c.lwsp	t3,000000C4
	c.lwsp	a2,00000064
	addi	a3,s3,+000003EF
	c.add	a3,s1
	c.mv	a2,s11
	c.mv	a0,s7
	jal	ra,00000000230162DA
	lw	a1,s9,+000003EC
	sb	a0,s9,+00000411
	lui	a0,000230AC
	srli	a4,a1,00000010
	srli	a3,a1,00000011
	srli	a2,a1,00000012
	c.srli	a1,00000013
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	c.andi	a1,00000001
	addi	a0,a0,+000005D8
	jal	ra,0000000023082388
	lw	a1,s9,+000003EC
	lui	a0,000230AC
	addi	a0,a0,+00000614
	srli	a4,a1,00000008
	srli	a3,a1,00000009
	srli	a2,a1,0000000A
	c.srli	a1,0000000B
	c.andi	a1,00000001
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	jal	ra,0000000023082388
	lbu	a1,s9,+000003EF
	lui	a0,000230AC
	addi	a0,a0,+0000064C
	jal	ra,0000000023082388

l23011156:
	lui	a2,000230AC
	c.mv	a1,s2
	c.li	a3,00000004
	addi	a2,a2,+000005D0
	c.mv	a0,s6
	jal	ra,000000002301513E
	c.mv	a1,a0
	c.beqz	a0,00000000230111AA

l2301116C:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.add	s3,s1
	lbu	a5,s3,+000003E9
	ori	a5,a5,+00000008
	sb	a5,s3,+000003E9
	lbu	a5,s3,+00000411
	c.bnez	a5,00000000230111AA

l23011188:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s3,+00000411
	jal	ra,00000000230A382C
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.mv	a0,s7
	jal	ra,000000002301653E
	sb	a0,s3,+00000411

l230111AA:
	c.lwsp	s8,000000E4
	c.lui	a3,00013000
	addi	a3,a3,-00000800
	c.lw	a5,0(a0)
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	sw	zero,a0,+00000030
	c.add	a5,s1
	lw	a4,a5,+000003E8
	c.and	a4,a3
	c.beqz	a4,000000002301124C

l230111CA:
	c.li	a5,00000009

l230111CC:
	c.sw	a0,48(a5)
	c.j	0000000023011268

l230111D0:
	c.li	a5,00000001
	bne	a0,a5,00000000230111FA

l230111D6:
	addi	a5,a1,-00000001
	addi	a4,zero,+000000A4
	bltu	a4,a5,00000000230111FA

l230111E2:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.add	a1,a5
	c.j	0000000023010D88

l230111F2:
	c.lui	a1,00001000
	addi	a1,a1,-0000064C
	c.j	0000000023010D88

l230111FA:
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.j	0000000023010D88

l23011200:
	lb	a4,s0,+00000018
	lb	a5,s8,+00000035
	bge	a5,a4,0000000023010DA0

l2301120C:
	lhu	a1,s0,+00000004
	lbu	a0,s0,+00000006
	jal	ra,000000002300D6DA
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	c.j	0000000023010D9C

l23011222:
	c.li	a5,00000001
	sb	a5,s7,+000003D7
	c.j	0000000023010E54

l2301122A:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.lui	a4,00001000
	addi	a4,a4,-000005BD
	c.add	a5,s1
	sw	a4,a5,+000003C4
	sw	a4,a5,+000003C8
	sw	a4,a5,+000003CC
	sw	a4,a5,+000003D0
	c.j	0000000023010F6C

l2301124C:
	lhu	a4,a5,+000003AE
	c.andi	a4,00000010
	beq	a4,zero,000000002301133E

l23011256:
	lbu	a4,a5,+000003E9
	ori	a4,a4,+00000002
	sb	a4,a5,+000003E9
	c.li	a5,00000001
	sb	a5,a0,+0000003B

l23011268:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.mv	a1,s7
	addi	a0,a0,+00000040
	c.add	s3,s1
	lbu	a2,s3,+00000411
	jal	ra,00000000230A382C
	c.lwsp	s8,000000E4
	lbu	a4,s3,+00000411
	lui	a0,000230AC
	c.lw	a5,0(a5)
	addi	a0,a0,+0000066C
	sh	a4,a5,+00000036
	lw	a1,s3,+000003E8
	srli	a4,a1,00000010
	srli	a3,a1,0000000D
	srli	a2,a1,0000000B
	c.srli	a1,00000009
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	c.andi	a1,00000001
	jal	ra,0000000023082388

l230112B2:
	c.lwsp	s0,00000084
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,000000002300DE5C
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301CEFA
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301CF1E
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301CF98
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	lui	a4,00080000
	c.add	s1,s5
	lw	a5,s1,+000003E0
	c.or	a5,a4
	sw	a5,s1,+000003E0

l230112F2:
	lbu	a5,s8,+00000034
	c.bnez	a5,0000000023011302

l230112F8:
	lhu	a5,s4,+00000014
	c.addi	a5,00000001
	sh	a5,s4,+00000014

l23011302:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,0000000023011310

l2301130A:
	c.li	a5,00000001
	sb	a5,s8,+00000034

l23011310:
	c.lui	a1,00001000
	c.mv	a0,s0
	c.li	a3,00000004
	c.li	a2,0000000D
	c.addi	a1,00000004
	jal	ra,0000000023014A8A
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.lwsp	s5,000001B8
	c.lwsp	a7,000001D8
	c.lwsp	a3,000001F8
	c.lwsp	s1,0000011C
	c.lwsp	t0,0000013C
	c.lwsp	ra,0000015C
	c.lwsp	t4,0000006C
	c.li	a0,00000001
	c.addi16sp	00000090
	c.jr	ra

l2301133E:
	c.li	a5,00000002
	c.j	00000000230111CC

;; scanu_search_by_bssid: 23011342
;;   Called from:
;;     2301199C (in sm_get_bss_params)
scanu_search_by_bssid proc
	c.li	a1,00000000
	jal	zero,0000000023010AEA

;; scanu_search_by_ssid: 23011348
;;   Called from:
;;     2301193C (in sm_get_bss_params)
scanu_search_by_ssid proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lbu	a5,a0,+00000000
	c.li	s3,00000000
	c.beqz	a5,00000000230113BA

l23011364:
	lui	s0,00042021
	c.mv	s4,a1
	c.mv	s1,a0
	addi	s0,s0,+000005AC
	c.li	s2,00000000
	c.li	s3,00000000
	addi	s5,zero,-00000080
	addi	s7,a0,+00000001
	c.li	s6,00000006

l2301137E:
	lbu	a5,s0,+0000004C
	c.beqz	a5,00000000230113BA

l23011384:
	lb	a5,s0,+0000004D
	bge	s5,a5,00000000230113B0

l2301138C:
	lbu	a5,s0,+0000001E
	lbu	a2,s1,+00000000
	bne	a2,a5,00000000230113B0

l23011398:
	c.mv	a1,s7
	addi	a0,s0,+0000001F
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230113B0

l230113A4:
	lb	s5,s0,+0000004D
	addi	s3,s0,+00000018
	sw	s2,s4,+00000000

l230113B0:
	c.addi	s2,00000001
	addi	s0,s0,+00000038
	bne	s2,s6,000000002301137E

l230113BA:
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
	c.addi16sp	00000030
	c.jr	ra

;; scanu_rm_exist_ssid: 230113D2
;;   Called from:
;;     230120A8 (in sm_connect_ind)
scanu_rm_exist_ssid proc
	blt	a1,zero,000000002301143A

l230113D6:
	c.beqz	a0,000000002301143A

l230113D8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+00000038
	add	s0,a1,s0
	c.swsp	s1,00000080
	lui	s1,00042021
	addi	s1,s1,+000005AC
	c.swsp	ra,00000084
	add	a5,s1,s0
	lbu	a4,a5,+0000004C
	c.beqz	a4,0000000023011430

l230113FA:
	lbu	a5,a5,+0000001E
	lbu	a2,a0,+00000000
	bne	a2,a5,0000000023011430

l23011406:
	addi	a5,s0,+0000001F
	addi	a1,a0,+00000001
	add	a0,s1,a5
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023011430

l23011418:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.add	a0,s1
	c.lwsp	tp,00000024
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

l23011430:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301143A:
	c.jr	ra

;; scanu_scan_next: 2301143C
;;   Called from:
;;     230116FC (in scanu_dma_cb)
;;     2301175A (in scanu_start)
;;     2301E27C (in scan_done_ind_handler)
scanu_scan_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,00042021
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lw	s1,s2,+000005AC
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s2,s2,+000005AC
	c.li	a2,00000001

l2301145A:
	lbu	a5,s2,+0000016B
	bltu	a2,a5,00000000230116E6

l23011462:
	lbu	a3,s1,+0000014F
	addi	a4,s1,+00000002
	c.li	s3,00000000

l2301146C:
	blt	s3,a3,000000002301147C

l23011470:
	bne	a3,s3,000000002301148A

l23011474:
	c.addi	a5,00000001
	sb	a5,s2,+0000016B
	c.j	000000002301145A

l2301147C:
	c.addi	a4,00000006
	lbu	a1,a4,-00000006
	beq	a1,a5,000000002301148A

l23011486:
	c.addi	s3,00000001
	c.j	000000002301146C

l2301148A:
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.li	a2,00000004
	c.li	a1,00000002
	addi	a0,a0,-00000800
	jal	ra,00000000230149A2
	lbu	a5,s1,+0000014E
	c.mv	s0,a0
	c.li	s5,00000006
	sb	a5,a0,+0000014E
	lw	a5,s1,+00000140
	sw	a5,a0,+00000140
	lhu	a5,s1,+00000144
	sh	a5,a0,+00000144
	lbu	a5,s1,+00000150
	sb	a5,a0,+00000150
	lbu	a5,s1,+00000151
	sb	a5,a0,+00000151

l230114C8:
	lbu	a5,s1,+0000014F
	blt	s3,a5,0000000023011664

l230114D0:
	addi	s3,zero,+000000FC
	c.li	s4,00000000

l230114D6:
	lbu	a5,s1,+00000150
	blt	s4,a5,0000000023011690

l230114DE:
	lw	a4,s2,+00000000
	lui	a5,00042046
	lui	a2,00042046
	lhu	a3,a4,+0000014C
	addi	a7,a5,-000002FC
	addi	a5,zero,+000000C8
	addi	a2,a2,-00000224
	bgeu	a5,a3,0000000023011500

l230114FE:
	c.li	a3,00000000

l23011500:
	lbu	a1,s2,+0000016B
	c.li	a5,00000001
	beq	a1,a5,00000000230116A8

l2301150A:
	lbu	a5,a4,+00000151
	bne	a5,zero,00000000230116A8

l23011512:
	c.li	t1,00000000
	c.li	a4,0000000C

l23011516:
	lui	a5,00042046
	c.li	a1,00000001
	sb	a1,a5,+00000D04
	lui	a1,000230AD
	c.li	a5,00000008
	addi	a0,a1,+00000224
	lui	a1,00042046
	sb	a5,a7,+00000001
	addi	a1,a1,-000002FA
	c.li	a5,00000000
	c.li	t3,00000008

l2301153A:
	add	a6,t1,a5
	c.add	a6,a0
	lbu	t4,a6,+00000000
	add	a6,a5,a1
	c.addi	a5,00000001
	sb	t4,a6,+00000000
	bne	a5,t3,000000002301153A

l23011552:
	addi	a5,a7,+0000000A
	c.beqz	a3,0000000023011590

l23011558:
	lui	a6,00042046
	addi	a1,a6,-00000234
	lbu	t1,a1,+00000010
	c.li	a1,0000000A
	bne	t1,a1,0000000023011590

l2301156A:
	lbu	a1,a2,+00000001
	c.mv	t3,a5
	addi	a6,a6,-00000234
	c.addi	a1,00000002
	andi	a1,a1,+000000FF
	c.mv	t1,a1
	c.li	t4,FFFFFFFF

l2301157E:
	c.addi	t1,FFFFFFFF
	c.addi	a6,00000001
	bne	t1,t4,00000000230116AE

l23011586:
	c.sub	a3,a1
	c.slli	a3,10
	c.add	a5,a1
	c.add	a2,a1
	c.srli	a3,00000010

l23011590:
	c.li	a1,00000008
	beq	a4,a1,00000000230115BE

l23011596:
	c.addi	a4,FFFFFFF8
	andi	a4,a4,+000000FF
	addi	a1,zero,+00000032
	sb	a1,a5,+00000000
	sb	a4,a5,+00000001
	c.mv	a1,a0
	addi	t1,a4,+00000002
	addi	a6,a5,+00000002
	c.li	a0,FFFFFFFF

l230115B4:
	c.addi	a4,FFFFFFFF
	c.addi	a1,00000001
	bne	a4,a0,00000000230116BA

l230115BC:
	c.add	a5,t1

l230115BE:
	lbu	a4,s2,+0000016B
	c.bnez	a4,00000000230115D2

l230115C4:
	c.li	a4,00000003
	sb	a4,a5,+00000000
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.addi	a5,00000003

l230115D2:
	c.beqz	a3,00000000230115FA

l230115D4:
	lbu	a1,a2,+00000000
	addi	a4,zero,+0000003B
	bne	a1,a4,00000000230115FA

l230115E0:
	lbu	a4,a2,+00000001
	c.li	a1,00000000
	c.addi	a4,00000002
	andi	a4,a4,+000000FF

l230115EC:
	bne	a4,a1,00000000230116C6

l230115F0:
	c.sub	a3,a4
	c.slli	a3,10
	c.add	a5,a4
	c.add	a2,a4
	c.srli	a3,00000010

l230115FA:
	lui	a4,00042021
	addi	a1,a4,-000004C4
	lbu	a1,a1,+0000002E
	c.beqz	a1,0000000023011626

l23011608:
	addi	a1,zero,+0000002D
	sb	a1,a5,+00000000
	c.li	a1,0000001A
	sb	a1,a5,+00000001
	addi	a4,a4,-000004C4
	addi	a1,a5,+0000001C
	c.addi	a5,00000002

l23011620:
	c.addi	a4,00000001
	bne	a1,a5,00000000230116DA

l23011626:
	c.beqz	a3,0000000023011642

l23011628:
	c.li	a4,00000000

l2301162A:
	add	a1,a2,a4
	lbu	a0,a1,+00000000
	add	a1,a5,a4
	c.addi	a4,00000001
	sb	a0,a1,+00000000
	bne	a3,a4,000000002301162A

l23011640:
	c.add	a5,a3

l23011642:
	sub	a5,a5,a7
	sh	a5,s0,+0000014C
	sw	zero,s0,+00000148
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023014A0E

l23011664:
	add	a1,s3,s5
	lbu	a5,s2,+0000016B
	c.add	a1,s1
	lbu	a4,a1,+00000002
	bne	a4,a5,000000002301168C

l23011676:
	lbu	s4,s0,+0000014F
	c.li	a2,00000006
	add	a0,s4,s5
	c.addi	s4,00000001
	c.add	a0,s0
	jal	ra,00000000230A382C
	sb	s4,s0,+0000014F

l2301168C:
	c.addi	s3,00000001
	c.j	00000000230114C8

l23011690:
	add	a1,s1,s3
	add	a0,s0,s3
	addi	a2,zero,+00000022
	jal	ra,00000000230A382C
	c.addi	s4,00000001
	addi	s3,s3,+00000022
	c.j	00000000230114D6

l230116A8:
	c.li	t1,00000004
	c.li	a4,00000008
	c.j	0000000023011516

l230116AE:
	lbu	t5,a6,+0000000F
	c.addi	t3,00000001
	sb	t5,t3,+00000FFF
	c.j	000000002301157E

l230116BA:
	lbu	t3,a1,+00000007
	c.addi	a6,00000001
	sb	t3,a6,+00000FFF
	c.j	00000000230115B4

l230116C6:
	add	a0,a2,a1
	lbu	a6,a0,+00000000
	add	a0,a5,a1
	c.addi	a1,00000001
	sb	a6,a0,+00000000
	c.j	00000000230115EC

l230116DA:
	lbu	a0,a4,+0000000B
	c.addi	a5,00000001
	sb	a0,a5,+00000FFF
	c.j	0000000023011620

l230116E6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,00000000230109F4

;; scanu_dma_cb: 230116FC
scanu_dma_cb proc
	jal	zero,000000002301143C

;; scanu_start: 23011700
;;   Called from:
;;     2301E222 (in scanu_join_req_handler)
;;     2301E254 (in scanu_start_req_handler)
scanu_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042021
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,a5,+000005AC
	lbu	a4,a4,+0000016A
	addi	s0,a5,+000005AC
	c.bnez	a4,0000000023011738

l23011718:
	addi	a5,a5,+000005AC
	addi	a4,s0,+00000150
	addi	a3,zero,-00000080

l23011724:
	sb	zero,a5,+0000004C
	sb	a3,a5,+0000004D
	addi	a5,a5,+00000038
	bne	a5,a4,0000000023011724

l23011734:
	sh	zero,s0,+00000014

l23011738:
	c.li	a1,00000001
	c.li	a0,00000004
	jal	ra,0000000023014B3C
	c.lw	s0,0(a5)
	lw	a3,a5,+00000148
	c.beqz	a3,0000000023011754

l23011748:
	lhu	a4,a5,+0000014C
	addi	a5,zero,+000000C8
	bgeu	a5,a4,000000002301175E

l23011754:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301143C

l2301175E:
	lui	a5,00042046
	addi	a5,a5,-00000234
	c.sw	a5,0(a3)
	sh	a4,a5,+00000008
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042021
	c.li	a1,00000000
	addi	a0,a0,+000005B0
	c.addi	sp,00000010
	jal	zero,000000002301AF52

;; txl_get_seq_ctrl: 23011780
;;   Called from:
;;     23011ED2 (in sm_disconnect)
;;     23012192 (in sm_auth_send)
;;     2301233E (in sm_assoc_req_send)
;;     23012816 (in sm_handle_supplicant_result)
txl_get_seq_ctrl proc
	lui	a5,00042020
	addi	a5,a5,-000000F0
	lhu	a0,a5,+00000054
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,a5,+00000054
	c.slli	a0,04
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; sm_delete_resources: 2301179E
;;   Called from:
;;     23011DE6 (in sm_disconnect_process)
;;     230120BC (in sm_connect_ind)
sm_delete_resources proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s0,00000004
	c.li	a3,00000002
	c.mv	s0,a0
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000413
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,00000000230149A2
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	s1,a0
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,0000000023014A0E
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023011800

l230117E4:
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,00000000230149A2
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,0000000023014A0E

l23011800:
	lbu	a4,s0,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,0000000023011824

l2301180C:
	c.li	a3,00000001
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,00000000230149A2
	lbu	a5,s0,+00000060
	sb	a5,a0,+00000000
	jal	ra,0000000023014A0E

l23011824:
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023011830

l23011828:
	lbu	a0,s0,+00000057
	jal	ra,000000002301ADFA

l23011830:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	sw	zero,s0,+000003E0
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sm_frame_tx_cfm_handler: 23011852
sm_frame_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000006
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,0000000023014C3C
	c.lwsp	a2,00000064
	lui	a5,00040030
	c.and	a1,a5
	c.beqz	a1,0000000023011882

l2301186E:
	c.addi	a0,FFFFFFFB
	c.li	s1,00000001
	bltu	s1,a0,0000000023011882

l23011876:
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002300C6AE
	sb	s1,s0,+000002D6

l23011882:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sm_init: 2301188C
;;   Called from:
;;     2300D6CE (in me_init)
sm_init proc
	lui	a5,00042021
	c.li	a1,00000000
	c.li	a0,00000006
	sw	zero,a5,+00000740
	jal	zero,0000000023014B3C

;; sm_get_bss_params: 2301189C
;;   Called from:
;;     2301E386 (in scanu_start_cfm_handler)
;;     2301E720 (in sm_connect_req_handler)
;;     2301E8FA (in me_set_active_cfm_handler)
sm_get_bss_params proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,00042021
	c.swsp	s0,0000001C
	lw	s0,s5,+00000740
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	sw	zero,a0,+00000000
	c.mv	s6,a0
	lui	a0,000230AC
	c.li	a5,FFFFFFFF
	sw	zero,a1,+00000000
	addi	a0,a0,+000007DC
	addi	s2,s0,+00000022
	c.mv	s4,a1
	c.swsp	a5,00000084
	c.li	s1,00000000
	jal	ra,0000000023082388
	addi	s5,s5,+00000740
	c.mv	s3,s2
	lui	s8,000230AC
	c.li	s7,00000003

l230118E8:
	lhu	a2,s2,+00000000
	c.mv	a1,s1
	addi	a0,s8,+000007FC
	c.addi	s1,00000001
	jal	ra,0000000023082388
	c.addi	s2,00000002
	bne	s1,s7,00000000230118E8

l230118FE:
	lbu	a5,s0,+00000022
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023011928

l23011908:
	c.bnez	a5,000000002301198A

l2301190A:
	lbu	a5,s0,+00000023
	c.bnez	a5,000000002301198A

l23011910:
	lbu	a5,s0,+00000024
	c.bnez	a5,000000002301198A

l23011916:
	lbu	a5,s0,+00000025
	c.bnez	a5,000000002301198A

l2301191C:
	lbu	a5,s0,+00000026
	c.bnez	a5,000000002301198A

l23011922:
	lbu	a5,s0,+00000027
	c.bnez	a5,000000002301198A

l23011928:
	lui	a0,000230AD
	addi	a1,s0,+00000001
	addi	a0,a0,-000007F0
	jal	ra,0000000023082388
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023011348
	c.lwsp	a2,00000064
	c.mv	s1,a0
	lui	a0,000230AD
	addi	a0,a0,-000007DC
	jal	ra,0000000023082388
	c.beqz	s1,00000000230119A4

l23011952:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023011960

l23011958:
	sw	s1,s6,+00000000
	sw	a5,s5,+00000014

l23011960:
	c.lw	s1,44(a5)
	sw	a5,s4,+00000000

l23011966:
	lui	a0,000230AD
	addi	a0,a0,-000007AC
	jal	ra,0000000023082388
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

l2301198A:
	lui	a0,000230AD
	addi	a0,a0,-000007C0
	jal	ra,0000000023082388
	c.mv	a0,s3
	sw	s3,s6,+00000000
	jal	ra,0000000023011342
	c.mv	s1,a0
	c.bnez	a0,0000000023011960

l230119A4:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023011966

l230119B0:
	addi	s0,s0,+00000028
	sw	s0,s4,+00000000
	c.j	0000000023011966

;; sm_scan_bss: 230119BA
;;   Called from:
;;     2301E726 (in sm_connect_req_handler)
sm_scan_bss proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042021
	c.swsp	s3,0000008C
	lw	s3,a5,+00000740
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	addi	a3,zero,+00000154
	c.mv	s2,a0
	c.li	a2,00000006
	c.mv	s1,a1
	c.lui	a0,00001000
	c.li	a1,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,00000000230149A2
	lbu	a5,s3,+0000003D
	c.mv	s0,a0
	sw	zero,a0,+00000148
	sb	a5,a0,+0000014E
	sh	zero,a0,+0000014C
	addi	a2,zero,+00000022
	c.mv	a1,s3
	addi	a0,a0,+000000FC
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s0,+00000150
	addi	a0,s0,+00000140
	c.li	a2,00000006
	c.mv	a1,s2
	bne	s2,zero,0000000023011A1E

l23011A16:
	lui	a1,000230CC
	addi	a1,a1,-00000770

l23011A1E:
	jal	ra,00000000230A382C
	c.beqz	s1,0000000023011A52

l23011A24:
	c.li	a2,00000006
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s0,+0000014F

l23011A34:
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.li	a1,00000001
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,0000000023014B3C

l23011A52:
	lui	a5,00042021
	addi	a5,a5,-00000494
	c.swsp	a5,00000004
	lui	a5,00042021
	addi	a5,a5,-00000440
	c.swsp	a5,00000084
	lui	a5,00042021
	lhu	a5,a5,-00000398
	sb	zero,s0,+0000014F
	addi	s2,sp,+00000004
	sh	a5,sp,+00000004
	addi	s3,sp,+00000008
	addi	s5,sp,+00000006
	c.li	s4,00000006

l23011A84:
	c.li	s1,00000000
	c.j	0000000023011AB4

l23011A88:
	add	a1,s1,s4
	lw	a5,s3,+00000000
	c.add	a1,a5
	lbu	a5,a1,+00000003
	c.andi	a5,00000002
	c.bnez	a5,0000000023011AB2

l23011A9A:
	lbu	a0,s0,+0000014F
	c.li	a2,00000006
	addi	a5,a0,+00000001
	add	a0,a0,s4
	sb	a5,s0,+0000014F
	c.add	a0,s0
	jal	ra,00000000230A382C

l23011AB2:
	c.addi	s1,00000001

l23011AB4:
	lbu	a5,s2,+00000000
	blt	s1,a5,0000000023011A88

l23011ABC:
	c.addi	s2,00000001
	c.addi	s3,00000004
	bne	s2,s5,0000000023011A84

l23011AC4:
	c.j	0000000023011A34

;; sm_join_bss: 23011AC6
;;   Called from:
;;     2301E394 (in scanu_start_cfm_handler)
;;     2301E53C (in scanu_join_cfm_handler)
;;     2301E716 (in sm_connect_req_handler)
;;     2301E904 (in me_set_active_cfm_handler)
sm_join_bss proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	lui	s1,00042021
	c.mv	s4,a1
	c.mv	s2,a2
	c.li	a1,00000004
	c.li	a2,00000006
	c.addi	a0,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	lw	s3,s1,+00000740
	jal	ra,00000000230149A2
	c.mv	a1,s4
	c.li	a2,00000006
	c.mv	s0,a0
	c.li	s4,00000001
	jal	ra,00000000230A382C
	addi	a2,zero,+00000022
	c.mv	a1,s3
	sb	s4,s0,+0000014F
	addi	a0,s0,+000000FC
	jal	ra,00000000230A382C
	sb	s4,s0,+00000150
	sh	zero,s0,+0000014C
	sw	zero,s0,+00000148
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	c.mv	a1,s5
	sb	a5,s0,+0000014E
	addi	a0,s0,+00000140
	jal	ra,00000000230A382C
	addi	s1,s1,+00000740
	beq	s2,zero,0000000023011B46

l23011B3A:
	lbu	a5,s0,+00000003
	ori	a5,a5,+00000001
	sb	a5,s0,+00000003

l23011B46:
	c.mv	a0,s0
	sb	s2,s1,+00000010
	jal	ra,0000000023014A0E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a1,00000002
	c.li	a0,00000006
	c.addi16sp	00000020
	jal	zero,0000000023014B3C

;; sm_add_chan_ctx: 23011B68
;;   Called from:
;;     2301E464 (in scanu_join_cfm_handler)
sm_add_chan_ctx proc
	lui	a5,00042021
	lw	a5,a5,+00000740
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a5,+0000003D
	addi	a3,zero,+000005D8
	lui	a4,00042020
	add	a5,a5,a3
	addi	a4,a4,-00000088
	c.mv	a1,a0
	c.addi4spn	a0,00000004
	c.add	a4,a5
	lw	a3,a4,+000003A4
	lbu	a4,a4,+000003DB
	lbu	a2,a3,+00000002
	sb	a4,sp,+00000005
	sb	a2,sp,+00000004
	lhu	a4,a3,+00000000
	sh	a4,sp,+00000006
	lui	a4,00042020
	addi	a4,a4,+00000318
	c.add	a5,a4
	c.lw	a5,8(a5)
	c.swsp	a5,00000004
	lb	a5,a3,+00000004
	sb	a5,sp,+0000000C
	jal	ra,000000002301A7EE
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; sm_send_next_bss_param: 23011BCA
;;   Called from:
;;     23011DA2 (in sm_set_bss_param)
;;     2301E2EA (in me_set_ps_disable_cfm_handler)
;;     2301E31E (in mm_bss_param_setting_handler)
sm_send_next_bss_param proc
	lui	a0,00042021
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000748
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002301450E
	c.mv	s0,a0
	c.bnez	a0,0000000023011BF8

l23011BE0:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000001A0
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000071C
	jal	ra,0000000023001234

l23011BF8:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; sm_set_bss_param: 23011C06
;;   Called from:
;;     2301EA02 (in mm_sta_add_cfm_handler)
sm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042021
	c.swsp	s2,00000010
	lw	s2,a5,+00000740
	c.swsp	s1,00000090
	c.lui	s1,00001000
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s3,0000008C
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000413
	lbu	s3,s2,+0000003D
	jal	ra,00000000230149A2
	c.mv	s0,a0
	c.li	a3,00000007
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,00000000230149A2
	c.mv	s8,a0
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,00000000230149A2
	c.mv	s5,a0
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,00000000230149A2
	c.li	a3,00000002
	c.mv	s7,a0
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,00000000230149A2
	lui	s1,00042021
	c.mv	s4,a0
	addi	a0,s1,+00000748
	jal	ra,0000000023014488
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s0,-0000000C
	addi	a0,s1,+00000748
	sb	a5,s0,+00000001
	jal	ra,0000000023014492
	addi	a0,zero,+000005D8
	add	s3,s3,a0
	lui	s6,00042020
	addi	s6,s6,-00000088
	c.li	a2,00000006
	c.mv	a0,s8
	add	s0,s6,s3
	addi	a1,s0,+00000378
	jal	ra,00000000230A382C
	lbu	a5,s2,+0000003D
	addi	a1,s8,-0000000C
	addi	a0,s1,+00000748
	sb	a5,s8,+00000006
	jal	ra,0000000023014492
	lw	a5,s0,+000003A4
	addi	a0,s3,+000003B0
	c.li	a1,00000001
	lbu	a5,a5,+00000002
	c.add	a0,s6
	lui	s6,000230CC
	sb	a5,s5,+00000005
	jal	ra,000000002300DB32
	sw	a0,s5,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s5,-0000000C
	addi	a0,s1,+00000748
	sb	a5,s5,+00000004
	jal	ra,0000000023014492
	lhu	a5,s0,+000003AC
	addi	a1,s7,-0000000C
	addi	a0,s1,+00000748
	sh	a5,s7,+00000000
	lbu	a5,s2,+0000003D
	lui	s5,0004201F
	c.li	s3,00000000
	sb	a5,s7,+00000002
	jal	ra,0000000023014492
	addi	s5,s5,-00000624
	c.mv	s8,s0
	addi	s6,s6,-00000774
	c.li	s7,00000004

l23011D30:
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001A
	jal	ra,00000000230149A2
	lw	a5,s0,+000003C4
	sb	s3,a0,+00000005
	c.sw	a0,0(a5)
	lbu	a5,s2,+0000003D
	sb	a5,a0,+00000006
	lw	a4,s5,+00000020
	c.li	a5,00000000
	c.beqz	a4,0000000023011D70

l23011D56:
	lb	a4,s8,+000003C0
	bge	a4,zero,0000000023011D70

l23011D5E:
	add	a5,s3,s6
	lbu	a5,a5,+00000000
	lbu	a4,s2,+0000003C
	c.and	a5,a4
	sltu	a5,zero,a5

l23011D70:
	sb	a5,a0,+00000004
	addi	a1,a0,-0000000C
	c.addi	s3,00000001
	addi	a0,s1,+00000748
	jal	ra,0000000023014492
	c.addi	s0,00000004
	bne	s3,s7,0000000023011D30

l23011D88:
	c.li	a5,00000001
	sb	a5,s4,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s4,-0000000C
	addi	a0,s1,+00000748
	sb	a5,s4,+00000001
	jal	ra,0000000023014492
	jal	ra,0000000023011BCA
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
	c.li	a1,00000004
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,0000000023014B3C

;; sm_disconnect_process: 23011DC4
;;   Called from:
;;     23011E18 (in sm_deauth_cfm)
;;     23011F36 (in sm_disconnect)
;;     23012734 (in sm_deauth_handler)
;;     2301E3EC (in mm_connection_loss_ind_handler)
;;     2301E676 (in sm_connect_req_handler)
sm_disconnect_process proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lui	a0,00002000
	c.swsp	s2,00000000
	c.li	a3,00000004
	c.mv	s2,a1
	c.li	a2,00000006
	c.li	a1,0000000D
	addi	a0,a0,-000007FB
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230149A2
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002301179E
	sh	s2,s0,+00000000
	lbu	a5,s1,+00000057
	sb	a5,s0,+00000002
	lui	a5,00042021
	lbu	a5,a5,+00000751
	c.beqz	a5,0000000023011E06

l23011E00:
	c.li	a5,00000001
	sb	a5,s0,+00000003

l23011E06:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; sm_deauth_cfm: 23011E16
sm_deauth_cfm proc
	c.li	a1,00000000
	jal	zero,0000000023011DC4

;; sm_disconnect: 23011E1C
;;   Called from:
;;     2301EA3C (in sm_disconnect_req_handler)
sm_disconnect proc
	addi	a5,zero,+000005D8
	add	a5,a0,a5
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042020
	addi	s0,s0,-00000088
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	s0,a5
	lbu	a5,s0,+00000056
	bne	a5,zero,0000000023011F40

l23011E48:
	lbu	a5,s0,+00000058
	beq	a5,zero,0000000023011F40

l23011E50:
	c.mv	s5,a1
	c.mv	s4,a0
	c.li	a1,00000008
	c.li	a0,00000006
	lbu	s6,s0,+00000060
	jal	ra,0000000023014B3C
	lw	a5,s0,+000003A4
	addi	a1,zero,+00000100
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	c.mv	s1,a0
	c.beqz	a0,0000000023011F3A

l23011E78:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002300B644
	lw	s2,s1,+00000068
	addi	a5,zero,-00000040
	lui	s3,0004201F
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s6,s6,a5
	addi	s3,s3,-000005A0
	c.li	a2,00000006
	sb	zero,s2,+0000014D
	sb	zero,s2,+0000014E
	sb	zero,s2,+0000014F
	addi	a0,s2,+00000150
	c.add	s3,s6
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s0,+00000050
	addi	a0,s2,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s2,+0000015C
	jal	ra,00000000230A382C
	jal	ra,0000000023011780
	sb	a0,s2,+00000162
	lui	a5,00023012
	c.srli	a0,00000008
	sb	a0,s2,+00000163
	addi	a5,a5,-000001EA
	sw	a5,s1,+000002CC
	sw	s0,s1,+000002D0
	sb	s4,s1,+0000002F
	lbu	a5,s0,+00000060
	c.mv	a1,s5
	addi	a0,s2,+00000164
	sb	a5,s1,+00000030
	jal	ra,000000002301CA3E
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002300C6AE
	c.bnez	a0,0000000023011F40

l23011F1E:
	lw	a0,s1,+000002D0
	c.li	a1,00000000

l23011F24:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,0000000023011DC4

l23011F3A:
	c.li	a1,00000000
	c.mv	a0,s0
	c.j	0000000023011F24

l23011F40:
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

;; sm_connect_ind: 23011F54
;;   Called from:
;;     230120E2 (in sm_supplicant_deauth_cfm)
;;     23012262 (in sm_auth_send)
;;     230123FE (in sm_assoc_req_send)
;;     230124DC (in sm_auth_handler)
;;     23012538 (in sm_auth_handler)
;;     23012698 (in sm_assoc_rsp_handler)
;;     230126EC (in sm_deauth_handler)
;;     2301277E (in sm_handle_supplicant_result)
;;     2301E33C (in sm_rsp_timeout_ind_handler)
;;     2301E3A2 (in scanu_start_cfm_handler)
;;     2301E524 (in scanu_join_cfm_handler)
;;     2301E544 (in scanu_join_cfm_handler)
;;     2301E88E (in mm_set_vif_state_cfm_handler)
;;     2301EA1C (in mm_sta_add_cfm_handler)
sm_connect_ind proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042021
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	a5,s2,+00000740
	lw	s5,a5,+00000000
	c.lw	a5,4(s0)
	lw	s7,a5,+00000014
	lbu	s3,s5,+0000003D
	addi	a5,zero,+000005D8
	lui	s4,00042020
	add	a5,s3,a5
	addi	s1,s4,-00000088
	c.li	a2,00000006
	c.mv	s6,a0
	sb	s3,s0,+00000009
	addi	a0,s0,+00000002
	addi	s2,s2,+00000740
	addi	s4,s4,-00000088
	c.add	s1,a5
	addi	a1,s1,+00000378
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000060
	lui	a0,000230AC
	c.mv	a1,s0
	sb	a5,s0,+0000000A
	c.lw	s1,64(a2)
	addi	a0,a0,+00000734
	jal	ra,0000000023082388
	c.lw	s1,64(a5)
	sb	zero,s0,+0000000B
	c.beqz	a5,0000000023012064

l23011FCC:
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000004
	sb	a5,s0,+00000336
	c.lw	s1,64(a5)
	lhu	a5,a5,+00000006
	sh	a5,s0,+00000338
	c.lw	s1,64(a5)
	lhu	a5,a5,+00000008
	sw	a5,s0,+0000033C
	c.lw	s1,64(a5)
	lhu	a5,a5,+0000000A
	sw	a5,s0,+00000340
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000005
	sb	a5,s0,+0000033A

l23011FFE:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a3,00000000
	c.add	a5,s4
	lw	a4,a5,+000003E0
	c.andi	a4,00000001
	sb	a4,s0,+0000000C
	c.beqz	a4,000000002301201A

l23012016:
	lbu	a3,a5,+000003C1

l2301201A:
	sb	a3,s0,+0000000D
	sb	zero,s0,+00000008
	bne	s6,zero,000000002301207A

l23012026:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,0000000023014B3C

l2301202E:
	lw	a0,s2,+00000000
	c.addi	a0,FFFFFFF4
	jal	ra,0000000023014A9A
	sw	zero,s2,+00000000
	sb	zero,s2,+00000011
	sh	s6,s0,+00000000
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	zero,s2,+00000004
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23012064:
	sb	zero,s0,+00000336
	sh	zero,s0,+00000338
	sw	zero,s0,+0000033C
	sw	zero,s0,+00000340
	sb	zero,s0,+0000033A
	c.j	0000000023011FFE

l2301207A:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023014B3C
	lui	a0,000230AC
	c.mv	a2,s7
	addi	a1,s5,+00000001
	addi	a0,a0,+00000754
	jal	ra,0000000023082388
	blt	s7,zero,00000000230120B2

l23012098:
	lui	a0,000230AC
	addi	a0,a0,+00000780
	jal	ra,0000000023082388
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,00000000230113D2
	c.li	a5,FFFFFFFF
	sw	a5,s2,+00000014

l230120B2:
	addi	a0,zero,+000005D8
	add	a0,s3,a0
	c.add	a0,s4
	jal	ra,000000002301179E
	c.j	000000002301202E

;; sm_supplicant_deauth_cfm: 230120C2
sm_supplicant_deauth_cfm proc
	slli	a5,a1,00000008
	c.li	a0,00000008
	blt	a5,zero,00000000230120E2

l230120CC:
	lui	a0,000230AD
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000710
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000008
	c.addi	sp,00000010

l230120E2:
	jal	zero,0000000023011F54

;; sm_auth_send: 230120E6
;;   Called from:
;;     230124C2 (in sm_auth_handler)
;;     2301E926 (in me_set_active_cfm_handler)
sm_auth_send proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042021
	c.swsp	s4,0000000C
	lw	s4,a5,+00000740
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	lbu	a5,s4,+0000003D
	addi	a4,zero,+000005D8
	lui	s2,00042020
	add	a5,a5,a4
	addi	s2,s2,-00000088
	c.mv	s5,a0
	c.mv	s6,a1
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	s7,s2,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	beq	a0,zero,000000002301224C

l23012138:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002300B644
	c.lw	s0,104(s1)
	addi	a5,zero,-00000050
	lui	s3,0004201F
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s7,s7,a5
	addi	s3,s3,-000005A0
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	c.li	a2,00000006
	addi	a0,s1,+00000150
	c.add	s3,s7
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,00000000230A382C
	addi	a1,s2,+00000050
	c.li	a2,00000006
	addi	a0,s1,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,00000000230A382C
	jal	ra,0000000023011780
	sb	a0,s1,+00000162
	c.srli	a0,00000008
	sb	a0,s1,+00000163
	lbu	a5,s2,+00000057
	addi	s1,s1,+0000014C
	sb	a5,s0,+0000002F
	lbu	a5,s2,+00000060
	sb	zero,s0,+0000005E
	sb	zero,s0,+00000060
	sb	a5,s0,+00000030
	lbu	a4,s4,+0000003B
	c.li	a5,00000001
	c.li	s2,00000018
	bne	a4,a5,00000000230121E0

l230121C8:
	c.li	a5,00000003
	bne	s5,a5,00000000230121E0

l230121CE:
	c.li	a2,00000018
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023013132
	lbu	a5,s0,+0000005E
	addi	s2,a5,+00000018

l230121E0:
	lbu	a1,s4,+0000003B
	c.mv	a2,s5
	c.mv	a4,s6
	c.li	a3,00000000
	add	a0,s1,s2
	jal	ra,000000002301C9E8
	lbu	a5,s0,+00000060
	c.lw	s0,108(a4)
	sw	s0,s0,+000002D0
	c.add	a5,s2
	c.add	a0,a5
	lui	a5,00023012
	addi	a5,a5,-000007AE
	sw	a5,s0,+000002CC
	c.lw	a4,20(a5)
	c.li	a1,00000003
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s0
	jal	ra,000000002300C6AE
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,0000000023014EBC
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a1,00000005
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,0000000023014B3C

l2301224C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a0,00000001
	c.addi16sp	00000030
	jal	zero,0000000023011F54

;; sm_assoc_req_send: 23012266
;;   Called from:
;;     23012486 (in sm_auth_handler)
;;     2301E91C (in me_set_active_cfm_handler)
sm_assoc_req_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	s7,00042021
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	addi	s7,s7,+00000740
	lw	s6,s7,+00000000
	addi	s4,zero,+000005D8
	lui	s5,00042020
	lbu	s2,s6,+0000003D
	addi	s1,s5,-00000088
	addi	a1,zero,+00000100
	add	s4,s2,s4
	c.add	s1,s4
	lw	a5,s1,+000003A4
	lbu	s9,s1,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	beq	a0,zero,00000000230123FC

l230122BE:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s1
	lw	s8,s7,+00000004
	jal	ra,000000002300B644
	lbu	a5,s7,+00000011
	c.lw	s0,104(s1)
	addi	s5,s5,-00000088
	c.li	s7,00000000
	addi	s10,s1,+0000014C
	c.beqz	a5,00000000230122EA

l230122DE:
	lui	s7,00042021
	addi	a5,zero,+00000020
	addi	s7,s7,+00000758

l230122EA:
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s9,s9,a5
	lui	s3,0004201F
	addi	s3,s3,-000005A0
	c.li	a2,00000006
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	addi	a0,s1,+00000150
	c.add	s3,s9
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,00000000230A382C
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.li	a2,00000006
	addi	a0,s1,+00000156
	c.add	s2,s5
	addi	a1,s2,+00000050
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,00000000230A382C
	jal	ra,0000000023011780
	sb	a0,s1,+00000162
	c.srli	a0,00000008
	sb	a0,s1,+00000163
	lbu	a3,s2,+00000057
	addi	a1,s4,+00000358
	addi	a5,sp,+0000000A
	c.addi4spn	a4,0000000C
	c.mv	a6,s6
	c.mv	a2,s7
	c.add	a1,s5
	addi	a0,s10,+00000018
	jal	ra,000000002301CA4C
	lbu	a5,s2,+00000057
	c.lw	s0,108(a4)
	c.lwsp	a2,000000A4
	sb	a5,s0,+0000002F
	lbu	a5,s2,+00000060
	sw	s0,s0,+000002D0
	sub	a3,a3,s8
	sb	a5,s0,+00000030
	lui	a5,00023012
	addi	a5,a5,-000007AE
	sw	a5,s0,+000002CC
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,24(a5)
	c.sw	a4,28(a0)
	lhu	a4,sp,+0000000A
	c.mv	a5,s8
	c.add	a4,s8

l230123A4:
	bne	a5,a4,00000000230123EC

l230123A8:
	lhu	a5,sp,+0000000A
	c.li	a1,00000003
	c.mv	a0,s0
	sh	a5,s8,+0000000E
	jal	ra,000000002300C6AE
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,0000000023014EBC
	c.li	a1,00000006
	c.li	a0,00000006
	jal	ra,0000000023014B3C

l230123D0:
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

l230123EC:
	add	a2,a3,a5
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	sb	a2,a5,+00000013
	c.j	00000000230123A4

l230123FC:
	c.li	a0,00000004
	jal	ra,0000000023011F54
	c.j	00000000230123D0

;; sm_assoc_done: 23012404
;;   Called from:
;;     230125D4 (in sm_assoc_rsp_handler)
sm_assoc_done proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a5,00042021
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a0,0000001E
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a5,+00000740
	jal	ra,00000000230149A2
	c.li	a4,00000001
	sh	s1,a0,+00000000
	sb	a4,a0,+00000002
	lbu	a4,s0,+0000003D
	sb	a4,a0,+00000003
	jal	ra,0000000023014A0E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000007
	c.li	a0,00000006
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

;; sm_auth_handler: 23012448
;;   Called from:
;;     2301E75E (in rxu_mgt_ind_handler)
sm_auth_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	addi	s1,a0,+0000001C
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	c.swsp	ra,00000084
	jal	ra,0000000023014FF0
	lbu	a1,s1,+00000005
	lbu	a5,s1,+00000004
	c.slli	a1,08
	c.or	a1,a5
	c.bnez	a1,0000000023012500

l23012470:
	lbu	a5,s0,+0000001D
	lbu	a4,s0,+0000001C
	c.slli	a5,08
	c.or	a5,a4
	c.bnez	a5,000000002301248A

l2301247E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023012266

l2301248A:
	c.li	a4,00000001
	bne	a5,a4,000000002301253C

l23012490:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000004
	beq	a5,a4,000000002301247E

l230124A2:
	c.li	a4,00000002
	bne	a5,a4,00000000230124DA

l230124A8:
	lhu	a1,s0,+00000000
	addi	a5,zero,+00000087
	bgeu	a5,a1,00000000230124C6

l230124B4:
	addi	a1,s0,+00000024
	c.li	a0,00000003

l230124BA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230120E6

l230124C6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230AC
	addi	a0,a0,+000006D4
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230124DA:
	c.li	a0,00000003
	jal	ra,0000000023011F54
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000374
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	c.addi	sp,00000010
	jal	zero,0000000023001236

l23012500:
	lui	a5,00042021
	lw	a5,a5,+00000740
	c.li	a4,00000001
	lbu	a3,a5,+0000003B
	bne	a3,a4,0000000023012522

l23012512:
	lbu	a4,a5,+00000140
	c.beqz	a4,0000000023012522

l23012518:
	sb	zero,a5,+0000003B
	c.li	a1,00000000
	c.li	a0,00000001
	c.j	00000000230124BA

l23012522:
	lui	a0,000230AC
	addi	a0,a0,+000006FC
	jal	ra,0000000023082388
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,0000000023011F54

l2301253C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sm_assoc_rsp_handler: 23012546
;;   Called from:
;;     2301E780 (in rxu_mgt_ind_handler)
sm_assoc_rsp_handler proc
	c.addi16sp	FFFFFFC0
	lui	a5,00042021
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	addi	a5,a5,+00000740
	lw	s6,a5,+00000004
	c.lw	a5,0(a5)
	addi	a4,zero,+000005D8
	lui	s1,00042020
	lbu	s7,a5,+0000003D
	addi	s2,a0,+0000001C
	c.mv	s5,a0
	add	a4,s7,a4
	addi	a5,s1,-00000088
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	sb	zero,sp,+0000000E
	c.add	a5,a4
	lbu	s4,a5,+00000060
	jal	ra,0000000023014FF0
	lbu	s0,s2,+00000003
	lbu	a5,s2,+00000002
	c.slli	s0,08
	c.or	s0,a5
	c.bnez	s0,0000000023012688

l230125A6:
	lhu	a4,s5,+00000000
	c.li	a5,00000005
	addi	s1,s1,-00000088
	bgeu	a5,a4,00000000230125BC

l230125B4:
	addi	s0,a4,-00000006
	c.slli	s0,10
	c.srli	s0,00000010

l230125BC:
	lbu	a0,s2,+00000005
	lbu	a5,s2,+00000004
	addi	a1,zero,+000005D8
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,12
	c.srli	a0,00000012
	add	s3,s7,a1
	jal	ra,0000000023012404
	addi	a4,zero,+000001B0
	lui	a0,0004201F
	addi	a0,a0,-000005A0
	add	a4,s4,a4
	c.add	a0,a4
	jal	ra,000000002300DE44
	add	a0,s1,s3
	lw	a5,a0,+000003A4
	addi	a2,sp,+0000000E
	addi	a1,sp,+0000000F
	lbu	a4,a5,+00000004
	lbu	a5,a0,+000003DC
	c.sub	a4,a5
	sb	a4,sp,+0000000F
	jal	ra,000000002300B586
	lhu	a3,s6,+0000000E
	addi	a5,s6,+00000014
	c.li	a4,00000000
	c.add	a3,a5

l2301261C:
	bne	s0,a4,0000000023012674

l23012620:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	sh	s0,s6,+00000010
	c.lui	a3,00013000
	addi	a3,a3,-00000600
	c.add	a5,s1
	lw	a4,a5,+000003E8
	c.and	a4,a3
	c.beqz	a4,000000002301265E

l2301263C:
	lbu	a2,a5,+0000037E
	addi	a4,s3,+00000050
	addi	a3,s3,+00000378
	addi	a1,s3,+0000037F
	lui	a0,00042021
	c.add	a4,s1
	c.add	a3,s1
	c.add	a1,s1
	addi	a0,a0,+00000440
	jal	ra,00000000230154DE

l2301265E:
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

l23012674:
	add	a5,s5,a4
	lbu	a2,a5,+00000022
	add	a5,a3,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000000
	c.j	000000002301261C

l23012688:
	lui	a0,000230AC
	c.mv	a1,s0
	addi	a0,a0,+000006A0
	jal	ra,0000000023082388
	c.li	a0,00000005
	jal	ra,0000000023011F54
	c.j	000000002301265E

;; sm_deauth_handler: 2301269E
;;   Called from:
;;     2301E7AE (in rxu_mgt_ind_handler)
sm_deauth_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	a5,00042021
	lbu	s1,a0,+00000008
	c.mv	s2,a0
	c.li	a0,00000006
	lw	s0,a5,+00000740
	jal	ra,0000000023014C3C
	c.li	a5,00000008
	bne	a0,a5,00000000230126D6

l230126C4:
	c.li	s3,00000002

l230126C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230126D6:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.beqz	a0,00000000230126F4

l230126DE:
	lbu	a4,s0,+0000003D
	lbu	a5,s2,+00000008
	bne	a4,a5,00000000230126C4

l230126EA:
	c.li	a0,00000006
	jal	ra,0000000023011F54
	c.li	s3,00000000
	c.j	00000000230126C6

l230126F4:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lui	s0,00042020
	addi	s0,s0,-00000088
	c.li	s3,00000000
	c.add	s0,s1
	lbu	a5,s0,+00000058
	c.beqz	a5,00000000230126C6

l2301270E:
	lbu	s1,s2,+0000001D
	lbu	a5,s2,+0000001C
	c.li	a1,00000008
	c.li	a0,00000006
	c.slli	s1,08
	c.or	s1,a5
	jal	ra,0000000023014B3C
	lui	a0,000230AC
	c.mv	a1,s1
	addi	a0,a0,+000007B0
	jal	ra,0000000023082388
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023011DC4
	c.j	00000000230126C6

;; sm_handle_supplicant_result: 2301273A
;;   Called from:
;;     23015CBC (in keyMgmtKeyGroupTxDone.isra.1)
;;     230166A8 (in keyMgmtStaRsnSecuredTimeoutHandler)
sm_handle_supplicant_result proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,0004201F
	addi	a5,s3,-000005A0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	a5,a4
	lbu	s6,a5,+0000001A
	c.bnez	a1,0000000023012782

l23012764:
	c.li	a4,00000002
	sb	a4,a5,+00000031
	c.li	a0,00000000

l2301276C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,0000000023011F54

l23012782:
	c.li	a5,0000000F
	c.mv	s4,a1
	addi	s3,s3,-000005A0
	c.mv	s5,a0
	bne	a1,a5,000000002301279C

l23012790:
	lui	a0,000230AD
	addi	a0,a0,-0000078C
	jal	ra,0000000023082388

l2301279C:
	addi	a5,zero,+000005D8
	add	a5,s6,a5
	lui	s2,00042020
	addi	s2,s2,-00000088
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	c.mv	s1,a0
	c.beqz	a0,0000000023012862

l230127C6:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002300B644
	c.lw	s1,104(s0)
	addi	a5,zero,-00000040
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	addi	a5,zero,+000001B0
	add	a5,s5,a5
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	c.add	s3,a5
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s2,+00000050
	addi	a0,s0,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+0000015C
	jal	ra,00000000230A382C
	jal	ra,0000000023011780
	sb	a0,s0,+00000162
	lui	a5,00023012
	c.srli	a0,00000008
	sb	a0,s0,+00000163
	addi	a5,a5,+000000C2
	sw	a5,s1,+000002CC
	c.mv	a1,s4
	sw	s2,s1,+000002D0
	sb	s6,s1,+0000002F
	sb	s5,s1,+00000030
	addi	a0,s0,+00000164
	jal	ra,000000002301CA3E
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002300C6AE
	c.bnez	a0,0000000023012866

l2301285E:
	c.li	a0,00000009
	c.j	000000002301276C

l23012862:
	c.li	a0,0000000A
	c.j	000000002301276C

l23012866:
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

;; txu_cntrl_sec_hdr_append: 2301287A
;;   Called from:
;;     23012ABE (in txu_cntrl_frame_build)
;;     2301317C (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sec_hdr_append proc
	lbu	a5,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a4,0004201F
	add	a5,a5,a3
	addi	a4,a4,-000005A0
	lbu	a6,a0,+0000002F
	c.add	a4,a5
	lw	a5,a4,+000000AC
	c.lw	a5,0(a5)
	c.beqz	a5,000000002301291E

l2301289C:
	addi	a7,zero,+000005D8
	add	a6,a6,a7
	lui	a3,00042020
	addi	a3,a3,-00000088
	c.add	a3,a6
	lw	a3,a3,+000005C4
	c.andi	a3,00000002
	c.beqz	a3,00000000230128D4

l230128B6:
	lhu	a6,a0,+00000020
	slli	a3,a6,00000008
	srli	a6,a6,00000008
	or	a3,a3,a6
	lhu	a6,a4,+00000038
	slli	a4,a3,00000010
	c.srli	a4,00000010
	beq	a6,a4,000000002301291E

l230128D4:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,0000000023012922

l230128DE:
	c.beqz	a4,00000000230128EC

l230128E0:
	c.li	a3,00000002
	beq	a4,a3,000000002301296A

l230128E6:
	c.li	a3,00000003
	bne	a4,a3,0000000023012906

l230128EC:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFFC
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	lhu	a3,a0,+00000024
	c.slli	a4,0E
	c.or	a4,a3
	sh	a4,a1,+00000002

l23012906:
	c.beqz	a2,0000000023012980

l23012908:
	c.lw	a0,84(a4)

l2301290A:
	c.lw	a4,12(a3)
	lbu	a5,a5,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a3,a2
	c.or	a5,a3
	c.sw	a4,12(a5)

l2301291E:
	c.mv	a0,a1
	c.jr	ra

l23012922:
	lhu	a6,a0,+00000022
	c.lui	t1,00002000
	c.lui	a7,00008000
	or	a3,a6,t1
	addi	a7,a7,-00000100
	and	a3,a3,a7
	srli	a6,a6,00000008
	or	a3,a3,a6
	c.addi	a1,FFFFFFF8
	sh	a3,a1,+00000000
	lbu	a3,a5,+00000061
	lbu	a4,a0,+00000022
	c.slli	a3,0E
	c.or	a4,a3
	or	a4,a4,t1

l23012954:
	sh	a4,a1,+00000002
	lhu	a4,a0,+00000024
	sh	a4,a1,+00000004
	lhu	a4,a0,+00000026
	sh	a4,a1,+00000006
	c.j	0000000023012906

l2301296A:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFF8
	c.lui	a3,00002000
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	c.slli	a4,0E
	c.or	a4,a3
	c.j	0000000023012954

l23012980:
	c.lw	a0,104(a4)
	addi	a4,a4,+000000F0
	c.j	000000002301290A

;; txu_cntrl_sechdr_len_compute: 23012988
;;   Called from:
;;     23012EC0 (in txu_cntrl_push)
;;     23013148 (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sechdr_len_compute proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000030
	addi	a6,zero,+000001B0
	lui	a4,0004201F
	add	a5,a5,a6
	addi	a4,a4,-000005A0
	lbu	a2,a0,+0000002F
	c.li	s0,00000000
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a5)
	sw	zero,a1,+00000000
	c.beqz	a5,0000000023012A3E

l230129B6:
	addi	a7,zero,+000005D8
	add	a2,a2,a7
	lui	a3,00042020
	addi	a3,a3,-00000088
	c.add	a3,a2
	lw	a2,a3,+000005C4
	c.andi	a2,00000002
	c.beqz	a2,00000000230129F6

l230129D0:
	lbu	a3,a0,+00000030
	lhu	a2,a0,+00000020
	c.li	s0,00000000
	add	a3,a3,a6
	c.add	a4,a3
	slli	a3,a2,00000008
	c.srli	a2,00000008
	c.or	a3,a2
	lhu	a2,a4,+00000038
	slli	a4,a3,00000010
	c.srli	a4,00000010
	beq	a2,a4,0000000023012A3E

l230129F6:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,0000000023012A48

l23012A00:
	c.beqz	a4,0000000023012A10

l23012A02:
	c.li	a3,00000002
	beq	a4,a3,0000000023012A78

l23012A08:
	c.li	a3,00000003
	c.li	s0,00000000
	bne	a4,a3,0000000023012A3E

l23012A10:
	c.li	a4,00000004
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.li	s0,00000004
	c.andi	a4,00000001
	c.bnez	a4,0000000023012A3E

l23012A1E:
	c.lw	a5,72(a4)
	c.lw	a5,76(a2)
	addi	a1,a5,+00000048
	addi	a3,a4,+00000001
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	a5,72(a3)
	c.sw	a5,76(a4)
	c.li	a2,00000004
	addi	a0,a0,+00000022
	jal	ra,00000000230A382C

l23012A3E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23012A48:
	c.li	a4,0000000C

l23012A4A:
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.andi	a4,00000001
	c.bnez	a4,0000000023012A74

l23012A54:
	c.lw	a5,72(a4)
	c.lw	a5,76(a2)
	addi	a1,a5,+00000048
	addi	a3,a4,+00000001
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	a5,72(a3)
	c.sw	a5,76(a4)
	c.li	a2,00000006
	addi	a0,a0,+00000022
	jal	ra,00000000230A382C

l23012A74:
	c.li	s0,00000008
	c.j	0000000023012A3E

l23012A78:
	c.li	a4,00000008
	c.j	0000000023012A4A

;; txu_cntrl_frame_build: 23012A7C
;;   Called from:
;;     2301C164 (in txl_buffer_alloc)
txu_cntrl_frame_build proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,+00000020
	c.mv	s0,a0
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+000005FF
	bgeu	a4,a5,0000000023012ABA

l23012A9C:
	c.lui	a5,FFFFB000
	c.addi	a1,FFFFFFF8
	addi	a5,a5,-00000556
	sh	a5,a1,+00000000
	c.li	a5,00000003
	sh	a5,a1,+00000002
	sh	zero,a1,+00000004
	lhu	a5,a0,+00000020
	sh	a5,a1,+00000006

l23012ABA:
	c.li	a2,00000001
	c.mv	a0,s0
	jal	ra,000000002301287A
	lbu	a3,s0,+00000030
	addi	a4,zero,+000001B0
	lui	a1,0004201F
	add	a4,a3,a4
	addi	a5,a1,-000005A0
	lbu	t1,s0,+0000002E
	lbu	a6,s0,+0000002F
	addi	a1,a1,-000005A0
	c.add	a5,a4
	lw	a5,a5,+000000AC
	addi	a4,zero,+000000FF
	lw	a7,a5,+00000000
	addi	a5,a0,-0000001A
	bne	t1,a4,0000000023012AFC

l23012AF8:
	addi	a5,a0,-00000018

l23012AFC:
	lhu	a4,s0,+00000032
	addi	a0,a5,+00000018
	c.li	a2,00000000
	andi	a4,a4,+00000100
	c.beqz	a4,0000000023012B10

l23012B0C:
	c.addi	a5,FFFFFFFA
	c.mv	a2,a5

l23012B10:
	addi	a4,zero,+000000FF
	beq	t1,a4,0000000023012C8E

l23012B18:
	addi	a4,zero,-00000080
	sb	a4,a5,+00000000
	sb	zero,a5,+00000001
	lbu	a4,s0,+0000002E
	sh	a4,a0,+00000000
	lhu	a4,s0,+0000002A
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,a5,+00000016
	c.srli	a4,00000008
	sb	a4,a5,+00000017
	lhu	a4,s0,+00000032
	andi	a4,a4,+00000200
	c.beqz	a4,0000000023012B56

l23012B4A:
	lhu	a4,a0,+00000000
	ori	a4,a4,+00000010
	sh	a4,a0,+00000000

l23012B56:
	lbu	a4,a5,+00000001
	lbu	a0,a5,+00000000
	c.slli	a4,08
	c.or	a4,a0
	ori	a0,a4,+00000008
	sb	a0,a5,+00000000
	c.srli	a0,00000008
	sb	a0,a5,+00000001
	lhu	t1,s0,+00000032
	lui	a0,00042020
	addi	a0,a0,-00000088
	slli	t3,t1,00000014
	bge	t3,zero,0000000023012CA0

l23012B84:
	andi	a4,a4,-00000301
	ori	a4,a4,+00000008

l23012B8C:
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l23012B96:
	lhu	a4,s0,+00000032
	c.andi	a4,00000004
	c.beqz	a4,0000000023012BBC

l23012B9E:
	lbu	a4,a5,+00000001
	lbu	t1,a5,+00000000
	c.slli	a4,08
	or	a4,a4,t1
	c.lui	t1,00002000
	or	a4,a4,t1
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l23012BBC:
	addi	a4,zero,+000005D8
	add	a4,a6,a4
	addi	t1,a4,+00000050
	c.add	t1,a0
	lhu	t3,t1,+00000000
	sh	t3,a5,+0000000A
	lhu	t3,t1,+00000002
	sh	t3,a5,+0000000C
	lhu	t1,t1,+00000004
	addi	t3,zero,+00000100
	sh	t1,a5,+0000000E
	lbu	t1,a5,+00000001
	c.slli	t1,08
	andi	t1,t1,+00000300
	bne	t1,t3,0000000023012CD2

l23012BF4:
	addi	a4,zero,+000001B0
	add	a3,a3,a4
	c.addi	a3,0000001E
	c.add	a3,a1
	lhu	a4,a3,+00000000
	sh	a4,a5,+00000004
	lhu	a4,a3,+00000002
	sh	a4,a5,+00000006
	lhu	a4,a3,+00000004
	sh	a4,a5,+00000008
	lhu	a4,s0,+00000014
	sh	a4,a5,+00000010
	lhu	a4,s0,+00000016
	sh	a4,a5,+00000012
	lhu	a4,s0,+00000018

l23012C2C:
	sh	a4,a5,+00000014

l23012C30:
	beq	a7,zero,0000000023012C86

l23012C34:
	addi	a4,zero,+000005D8
	add	a6,a6,a4
	c.add	a0,a6
	lw	a4,a0,+000005C4
	c.andi	a4,00000002
	c.beqz	a4,0000000023012C6C

l23012C46:
	lhu	a3,s0,+00000020
	addi	a2,zero,+000001B0
	slli	a4,a3,00000008
	c.srli	a3,00000008
	c.or	a4,a3
	lbu	a3,s0,+00000030
	c.slli	a4,10
	c.srli	a4,00000010
	add	a3,a3,a2
	c.add	a1,a3
	lhu	a3,a1,+00000038
	beq	a3,a4,0000000023012C86

l23012C6C:
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000000
	c.slli	a4,08
	c.or	a4,a3
	c.lui	a3,00004000
	c.or	a4,a3
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l23012C86:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23012C8E:
	sb	zero,a5,+00000000
	sb	zero,a5,+00000001
	sb	zero,a5,+00000016
	sb	zero,a5,+00000017
	c.j	0000000023012B56

l23012CA0:
	andi	t1,t1,+00000100
	beq	t1,zero,0000000023012CAE

l23012CA8:
	ori	a4,a4,+00000308
	c.j	0000000023012B8C

l23012CAE:
	addi	t1,zero,+000005D8
	add	t1,a6,t1
	c.add	t1,a0
	lbu	t1,t1,+00000056
	bne	t1,zero,0000000023012CC6

l23012CC0:
	ori	a4,a4,+00000108
	c.j	0000000023012B8C

l23012CC6:
	c.li	t3,00000002
	bne	t1,t3,0000000023012B96

l23012CCC:
	ori	a4,a4,+00000208
	c.j	0000000023012B8C

l23012CD2:
	addi	t3,zero,+00000200
	bne	t1,t3,0000000023012D08

l23012CDA:
	lhu	a4,s0,+00000014
	sh	a4,a5,+00000004
	lhu	a4,s0,+00000016
	sh	a4,a5,+00000006
	lhu	a4,s0,+00000018
	sh	a4,a5,+00000008
	lhu	a4,s0,+0000001A
	sh	a4,a5,+00000010
	lhu	a4,s0,+0000001C
	sh	a4,a5,+00000012
	lhu	a4,s0,+0000001E
	c.j	0000000023012C2C

l23012D08:
	bne	t1,zero,0000000023012D40

l23012D0C:
	lhu	a3,s0,+00000014
	addi	a4,a4,+00000378
	c.add	a4,a0
	sh	a3,a5,+00000004
	lhu	a3,s0,+00000016
	sh	a3,a5,+00000006
	lhu	a3,s0,+00000018
	sh	a3,a5,+00000008
	lhu	a3,a4,+00000000
	sh	a3,a5,+00000010
	lhu	a3,a4,+00000002
	sh	a3,a5,+00000012
	lhu	a4,a4,+00000004
	c.j	0000000023012C2C

l23012D40:
	addi	a4,zero,+000001B0
	add	a4,a3,a4
	c.addi	a4,0000001E
	c.add	a4,a1
	lhu	a3,a4,+00000000
	sh	a3,a2,+00000004
	lhu	a3,a4,+00000002
	sh	a3,a2,+00000006
	lhu	a4,a4,+00000004
	sh	a4,a2,+00000008
	lhu	a4,s0,+00000014
	sh	a4,a2,+00000010
	lhu	a4,s0,+00000016
	sh	a4,a2,+00000012
	lhu	a4,s0,+00000018
	sh	a4,a2,+00000014
	lhu	a4,s0,+0000001A
	sh	a4,a2,+00000018
	lhu	a4,s0,+0000001C
	sh	a4,a2,+0000001A
	lhu	a4,s0,+0000001E
	sh	a4,a2,+0000001C
	c.j	0000000023012C30

;; txu_cntrl_push: 23012D96
;;   Called from:
;;     2300177E (in ipc_emb_tx_evt)
txu_cntrl_push proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	lbu	s1,a0,+0000002F
	addi	a5,zero,+000005D8
	c.mv	s0,a0
	add	s1,s1,a5
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.mv	s3,a1
	c.add	s1,a5
	c.mv	a0,s1
	jal	ra,000000002300B992
	beq	a0,zero,0000000023012F1E

l23012DC6:
	lhu	a4,s0,+00000032
	andi	a5,a4,+00000008
	c.beqz	a5,0000000023012E26

l23012DD0:
	c.andi	a4,00000010
	c.beqz	a4,0000000023012E14

l23012DD4:
	lui	a5,00042046
	addi	a5,a5,-000005D4

l23012DDC:
	c.sw	s0,84(a5)
	c.lw	s0,84(a5)
	c.lw	a5,20(a0)
	jal	ra,000000002300B620
	c.lw	s0,84(a5)
	c.sw	a5,36(a0)
	c.lw	s0,84(a5)
	c.sw	a5,40(a0)
	c.lw	s0,84(a5)
	c.sw	a5,44(a0)
	c.lw	s0,84(a5)
	c.sw	a5,48(a0)
	sb	zero,s0,+0000005E
	sb	zero,s0,+00000060

l23012DFE:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300C002

l23012E06:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23012E14:
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000004
	c.bnez	a5,0000000023012DD4

l23012E1C:
	lui	a5,00042045
	addi	a5,a5,+000000B4
	c.j	0000000023012DDC

l23012E26:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	lhu	a1,s0,+00000020
	add	a3,a5,a3
	lui	s2,0004201F
	addi	a2,s2,-000005A0
	addi	s2,s2,-000005A0
	c.add	a2,a3
	slli	a3,a1,00000008
	c.srli	a1,00000008
	lbu	a6,a2,+00000031
	c.or	a3,a1
	lhu	a2,a2,+00000038
	c.slli	a3,10
	c.srli	a3,00000010
	bne	a2,a3,0000000023012F1A

l23012E5C:
	andi	a4,a4,-00000101
	sh	a4,s0,+00000032

l23012E64:
	c.li	a4,00000002
	beq	a6,a4,0000000023012E72

l23012E6A:
	c.li	a4,00000001
	bne	a6,a4,0000000023012F1E

l23012E70:
	c.beqz	a0,0000000023012F1E

l23012E72:
	lbu	a3,s0,+0000002E
	addi	a4,zero,+000000FF
	c.li	s1,00000018
	beq	a3,a4,0000000023012EB0

l23012E80:
	lhu	a4,s0,+00000032
	c.li	s1,0000001A
	c.andi	a4,00000001
	c.bnez	a4,0000000023012EB0

l23012E8A:
	addi	a4,zero,+000000D8
	add	a5,a5,a4
	c.add	a5,a3
	addi	a5,a5,+00000078
	c.slli	a5,01
	c.add	a5,s2
	lhu	a3,a5,+00000008
	addi	a4,a3,+00000001
	c.slli	a4,14
	c.srli	a4,00000014
	sh	a4,a5,+00000008
	sh	a3,s0,+0000002A

l23012EB0:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000100
	c.beqz	a5,0000000023012EBC

l23012EBA:
	c.addi	s1,00000006

l23012EBC:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023012988
	lhu	a4,s0,+00000020
	addi	a3,zero,+00000600
	c.add	a0,s1
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000000
	bgeu	a3,a5,0000000023012EE4

l23012EE0:
	c.addi	a0,00000008
	c.li	a4,00000008

l23012EE4:
	lhu	a5,s0,+0000000C
	sb	a0,s0,+0000005E
	lbu	a0,s0,+00000030
	sh	a5,s0,+0000005C
	c.lwsp	a2,000000E4
	sb	a4,s0,+0000005F
	c.li	a1,00000000
	sb	a5,s0,+00000060
	jal	ra,000000002300DCBE
	lbu	a0,s0,+00000030
	addi	a5,zero,+000001B0
	add	a0,a0,a5
	c.add	a0,s2
	jal	ra,000000002300DCC2
	c.sw	s0,84(a0)
	c.j	0000000023012DFE

l23012F1A:
	c.li	a0,00000000
	c.j	0000000023012E64

l23012F1E:
	jal	ra,000000002300BB72
	csrrci	zero,mstatus,00000008
	lui	a1,000C0000
	c.mv	a2,s3
	c.mv	a0,s0
	jal	ra,000000002300B6B4
	csrrsi	zero,mstatus,00000008
	c.li	a0,00000000
	c.j	0000000023012E06

;; txu_cntrl_tkip_mic_append: 23012F3A
;;   Called from:
;;     2300BD4A (in txl_payload_handle_backup)
txu_cntrl_tkip_mic_append proc
	lbu	a4,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a3
	addi	a5,a5,-000005A0
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a1)
	beq	a1,zero,000000002301307A

l23012F5A:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a5,a1,+00000060
	c.li	a4,00000001
	c.lw	a0,104(s0)
	beq	a5,a4,0000000023012FB0

l23012F74:
	c.beqz	a5,0000000023012F7C

l23012F76:
	c.li	a4,00000003
	bne	a5,a4,0000000023013044

l23012F7C:
	addi	a5,s0,+00000038

l23012F80:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002301306A

l23012F84:
	addi	a4,s0,+0000012C
	c.sw	a5,4(a4)
	addi	a5,s0,+00000140
	sw	a5,s0,+00000134
	addi	a5,s0,+00000143
	sw	a5,s0,+00000138
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,s0,+0000012C
	sw	zero,s0,+0000013C
	sw	zero,s0,+00000130
	c.j	0000000023013044

l23012FB0:
	addi	a5,s0,+00000038

l23012FB4:
	c.lw	a5,4(a4)
	c.bnez	a4,0000000023013054

l23012FB8:
	addi	a4,s0,+0000012C
	lbu	s3,a0,+0000005E
	lbu	s4,a0,+0000005F
	c.sw	a5,4(a4)
	addi	a5,s0,+00000140
	sw	a5,s0,+00000134
	addi	a5,s0,+0000014B
	sw	a5,s0,+00000138
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,s0,+0000012C
	sw	zero,s0,+0000013C
	sw	zero,s0,+00000130
	lbu	a4,a0,+0000002E
	lw	s2,a0,+00000068
	addi	a3,a0,+0000001A
	addi	a2,a0,+00000014
	c.mv	s1,a0
	addi	a1,a1,+00000050
	c.mv	a0,sp
	jal	ra,000000002300D774
	addi	a1,s0,+0000014C
	lbu	a2,s1,+0000005F
	sub	a1,a1,s4
	c.add	a1,s3
	c.mv	a0,sp
	jal	ra,000000002300D826
	lw	s0,s2,+0000003C

l2301301E:
	c.beqz	s0,000000002301306E

l23013020:
	c.lw	s0,4(s1)
	c.bnez	s1,0000000023013058

l23013024:
	c.mv	a0,sp
	jal	ra,000000002300D96A
	c.lw	s0,8(a2)
	c.li	a5,00000008

l2301302E:
	add	a4,sp,s1
	lbu	a3,a4,+00000000
	add	a4,a2,s1
	c.addi	s1,00000001
	sb	a3,a4,+00000000
	bne	s1,a5,000000002301302E

l23013044:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23013054:
	c.mv	a5,a4
	c.j	0000000023012FB4

l23013058:
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.mv	a0,sp
	c.addi	a2,00000001
	c.sub	a2,a1
	jal	ra,000000002300D826
	c.lw	s0,4(s0)
	c.j	000000002301301E

l2301306A:
	c.mv	a5,a4
	c.j	0000000023012F80

l2301306E:
	c.mv	a0,sp
	jal	ra,000000002300D96A
	lw	a5,zero,+00000008
	c.ebreak

l2301307A:
	c.jr	ra

;; txu_cntrl_cfm: 2301307C
;;   Called from:
;;     2300B770 (in txl_cfm_evt)
;;     2300B7E8 (in txl_cfm_flush)
txu_cntrl_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,108(a5)
	c.mv	s0,a0
	lw	s2,a0,+00000010
	c.lw	a5,0(s1)
	lhu	a5,a0,+00000032
	andi	a4,a5,+00000008
	c.beqz	a4,0000000023013106

l2301309A:
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230130AE

l230130A0:
	c.lw	s1,16(a5)
	slli	a4,a5,00000008
	blt	a4,zero,00000000230130AE

l230130AA:
	jal	ra,00000000230108CC

l230130AE:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000200
	c.beqz	a5,000000002301310C

l230130B8:
	lbu	a4,s0,+00000030
	addi	a5,zero,+000000FF
	bne	a4,a5,00000000230130DC

l230130C4:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000003A9
	addi	a1,a1,+0000020C
	addi	a0,a0,-000006EC
	jal	ra,0000000023001234

l230130DC:
	lbu	a0,s0,+00000030
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000017
	jal	ra,000000002300C95E

l230130EA:
	lbu	a4,s0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a3
	addi	a5,a5,-000005A0
	c.add	a5,a4
	sw	zero,a5,+00000034
	c.j	000000002301310C

l23013106:
	andi	a5,a5,+00000200
	c.bnez	a5,00000000230130EA

l2301310C:
	c.lw	s1,16(a5)
	ori	a5,a5,+00000001
	c.sw	s1,16(a5)
	addi	a5,zero,+00000101
	sh	a5,s1,+0000000C
	sw	zero,s0,+00000FAC
	c.lw	s1,16(a5)
	sw	a5,s2,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; txu_cntrl_protect_mgmt_frame: 23013132
;;   Called from:
;;     230121D4 (in sm_auth_send)
txu_cntrl_protect_mgmt_frame proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a1
	lbu	a1,a0,+0000005E
	c.mv	s0,a0
	c.bnez	a1,000000002301318A

l23013144:
	c.addi4spn	a1,0000001C
	c.swsp	a2,00000084
	jal	ra,0000000023012988
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000084
	sb	a0,s0,+0000005E
	sb	a5,s0,+00000060

l23013158:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	add	a1,a2,s1
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00004000
	c.or	a5,a4
	sb	a5,s1,+00000000
	c.srli	a5,00000008
	sb	a5,s1,+00000001
	c.add	a1,a0
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,000000002301287A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2301318A:
	lbu	a5,s0,+00000060
	c.mv	a0,a1
	c.swsp	a5,0000008C
	c.j	0000000023013158

;; _aid_list_delete: 23013194
;;   Called from:
;;     2301323E (in apm_sta_delete)
;;     230132B2 (in apm_tx_cfm_handler)
_aid_list_delete proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042021
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s6,a0
	addi	s2,a5,+00000760
	c.li	s0,00000000
	addi	s1,a5,+00000760
	c.li	s5,0000000A

l230131B8:
	lbu	a5,s2,+0000001E
	c.beqz	a5,00000000230131FC

l230131BE:
	addi	s4,s2,+00000018
	c.li	a2,00000006
	c.mv	a1,s6
	c.mv	a0,s4
	jal	ra,00000000230A37A4
	c.mv	s3,a0
	c.bnez	a0,00000000230131FC

l230131D0:
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,00000000230A3A68
	c.li	a5,00000007
	add	s0,s0,a5
	c.add	s0,s1
	sb	zero,s0,+0000001E

l230131E6:
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

l230131FC:
	c.addi	s0,00000001
	c.addi	s2,00000007
	bne	s0,s5,00000000230131B8

l23013204:
	c.li	s3,FFFFFFFF
	c.j	00000000230131E6

;; apm_sta_delete: 23013208
;;   Called from:
;;     23013936 (in apm_sta_fw_delete)
;;     23013D3E (in apm_auth_handler)
;;     23014156 (in apm_deauth_handler)
;;     23014180 (in apm_disassoc_handler)
;;     23014202 (in apm_sta_remove)
apm_sta_delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.lui	a0,00001000
	c.swsp	s3,00000084
	c.li	a3,00000002
	c.mv	s3,a1
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,a0,+00000409
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	jal	ra,00000000230149A2
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a3,00000001
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003F7
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.mv	a0,s3
	jal	ra,0000000023013194
	addi	a0,s1,+00000008
	andi	a0,a0,+000000FF
	jal	ra,0000000023008190
	lui	a5,00042021
	addi	a5,a5,+00000760
	lbu	a4,a5,+00000016
	c.mv	a0,s2
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	sb	s1,s2,+00000000
	jal	ra,0000000023014A0E
	sb	s1,s0,+00000000
	sb	zero,s0,+00000001
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023014A0E

;; apm_tx_cfm_handler: 23013284
apm_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	slli	a5,a1,00000008
	c.mv	s0,a0
	bge	a5,zero,00000000230132B0

l23013294:
	lhu	a4,a0,+00000044
	c.beqz	a4,00000000230132A4

l2301329A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023014A0E

l230132A4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a0,FFFFFFF4
	c.addi16sp	00000020
	jal	zero,0000000023014A9A

l230132B0:
	c.swsp	a1,00000084
	jal	ra,0000000023013194
	addi	a0,s0,-0000000C
	jal	ra,0000000023014A9A
	lhu	a2,s0,+00000044
	c.lwsp	a2,00000064
	lui	a0,000230AD
	addi	a0,a0,-000006B4
	jal	ra,0000000023082388
	lui	a5,00042021
	addi	a5,a5,+00000760
	lbu	a4,a5,+00000016
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_init: 230132EA
;;   Called from:
;;     2300D6CA (in me_init)
apm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042021
	c.li	a1,00000000
	addi	a0,s0,+00000760
	addi	a2,zero,+00000060
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.lui	a5,00001000
	addi	s0,s0,+00000760
	addi	a5,a5,-00000400
	sb	zero,s0,+0000000C
	sh	a5,s0,+00000016
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

;; apm_start_cfm: 23013322
;;   Called from:
;;     2301EDEA (in mm_bcn_change_cfm_handler)
apm_start_cfm proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	c.mv	s6,a0
	c.lui	a0,00002000
	c.swsp	s4,0000000C
	c.li	a3,00000004
	lui	s4,00042021
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003FF
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lw	s2,s4,+00000760
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	jal	ra,00000000230149A2
	c.mv	s3,a0
	addi	s4,s4,+00000760
	bne	s6,zero,0000000023013400

l2301335C:
	c.li	a3,00000004
	lbu	s5,s2,+00000033
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,00000000230149A2
	addi	a4,zero,+000005D8
	addi	s7,s5,+0000000A
	add	s5,s5,a4
	lui	s1,00042020
	c.li	s8,00000001
	addi	s1,s1,-00000088
	sb	s8,a0,+00000002
	lui	s0,0004201F
	addi	s0,s0,-000005A0
	c.add	s1,s5
	lbu	a4,s1,+00000057
	sb	a4,a0,+00000003
	jal	ra,0000000023014A0E
	lw	a5,s2,+0000002C
	c.li	a2,0000000D
	c.mv	a1,s2
	sw	a5,s1,+000005C4
	lhu	a5,s2,+00000030
	sb	zero,s1,+0000034A
	sh	a5,s1,+0000034C
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000017
	sb	a5,s3,+00000002
	lbu	a5,s2,+00000033
	c.addi	a5,0000000A
	sb	a5,s3,+00000003
	addi	a5,zero,+000001B0
	add	s7,s7,a5
	c.add	s0,s7
	addi	a0,s0,+000000B0
	jal	ra,00000000230A382C
	c.li	a5,00000002
	sb	a5,s0,+00000031
	c.mv	a0,s0
	jal	ra,000000002300DC10
	lbu	a5,s0,+0000011A
	sh	s8,s0,+0000001E
	ori	a5,a5,+00000010
	sb	a5,s0,+0000011A
	lbu	a5,s2,+00000033
	c.addi	a5,0000000A
	sb	a5,s0,+0000001B

l23013400:
	sb	s6,s3,+00000000
	lbu	a5,s2,+00000033
	lui	a2,000004C5
	c.lui	a0,00002000
	sb	a5,s3,+00000001
	c.li	a1,00000007
	addi	a2,a2,-000004C0
	addi	a0,a0,-000003F6
	jal	ra,0000000023014EBC
	c.mv	a0,s3
	jal	ra,0000000023014A0E
	addi	a0,s2,-0000000C
	jal	ra,0000000023014A9A
	c.lwsp	s0,00000114
	sw	zero,s4,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a1,00000000
	c.li	a0,00000007
	c.addi16sp	00000030
	jal	zero,0000000023014B3C

;; apm_send_next_bss_param: 23013450
;;   Called from:
;;     230135A6 (in apm_set_bss_param)
;;     2301ED80 (in me_set_ps_disable_cfm_handler)
;;     2301EDB4 (in mm_bss_param_setting_handler)
apm_send_next_bss_param proc
	lui	a0,00042021
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000764
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002301450E
	c.mv	s0,a0
	c.bnez	a0,000000002301347E

l23013466:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000BF
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000071C
	jal	ra,0000000023001234

l2301347E:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; apm_set_bss_param: 2301348C
;;   Called from:
;;     2301F144 (in apm_start_req_handler)
apm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042021
	c.swsp	s0,00000014
	lw	s0,a5,+00000760
	c.swsp	s1,00000090
	c.lui	s1,00001000
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s7,00000084
	c.li	a3,00000002
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000413
	lbu	s7,s0,+00000033
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.li	a3,00000007
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,00000000230149A2
	c.mv	s6,a0
	c.li	a3,00000008
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,00000000230149A2
	c.mv	s3,a0
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,00000000230149A2
	c.li	a3,00000002
	c.mv	s5,a0
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,00000000230149A2
	addi	a5,zero,+000005D8
	add	s7,s7,a5
	lui	s1,00042020
	c.li	s8,00000001
	addi	s1,s1,-00000088
	sb	s8,s2,+00000000
	addi	a1,s2,-0000000C
	c.mv	s4,a0
	c.add	s1,s7
	lbu	a5,s1,+00000057
	sb	a5,s2,+00000001
	lui	s2,00042021
	addi	a0,s2,+00000764
	jal	ra,0000000023014492
	c.li	a2,00000006
	addi	a1,s1,+00000050
	c.mv	a0,s6
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000033
	addi	a1,s6,-0000000C
	addi	a0,s2,+00000764
	sb	a5,s6,+00000006
	jal	ra,0000000023014492
	lbu	a5,s0,+00000010
	c.li	a1,00000001
	c.mv	a0,s0
	sb	a5,s3,+00000005
	jal	ra,000000002300DB32
	sw	a0,s3,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s3,-0000000C
	addi	a0,s2,+00000764
	sb	a5,s3,+00000004
	jal	ra,0000000023014492
	lhu	a5,s0,+00000028
	addi	a1,s5,-0000000C
	addi	a0,s2,+00000764
	sh	a5,s5,+00000000
	lbu	a5,s0,+00000033
	sb	a5,s5,+00000002
	jal	ra,0000000023014492
	sb	s8,s4,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s4,-0000000C
	addi	a0,s2,+00000764
	sb	a5,s4,+00000001
	jal	ra,0000000023014492
	jal	ra,0000000023013450
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
	c.li	a1,00000001
	c.li	a0,00000007
	c.addi16sp	00000030
	jal	zero,0000000023014B3C

;; apm_stop: 230135C8
;;   Called from:
;;     2301EE5A (in apm_stop_req_handler)
apm_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s0,00000004
	c.li	a3,00000002
	c.mv	s0,a0
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000413
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230149A2
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,00000000230149A2
	c.mv	s1,a0
	c.lui	a0,00002000
	c.li	a1,00000007
	addi	a0,a0,-000003F6
	jal	ra,0000000023014FF0
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,0000000023014A0E
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023013636

l2301361A:
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,00000000230149A2
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,0000000023014A0E

l23013636:
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023013642

l2301363A:
	lbu	a0,s0,+00000057
	jal	ra,000000002301ADFA

l23013642:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; apm_tx_int_ps_check: 2301365E
;;   Called from:
;;     2300B27C (in sta_mgmt_send_postponed_frame)
;;     2300BF2C (in txl_cntrl_push_int)
apm_tx_int_ps_check proc
	lbu	a4,a0,+0000002F
	addi	a3,zero,+000005D8
	lui	a5,00042020
	add	a4,a4,a3
	addi	a5,a5,-00000088
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,00000000230136BC

l2301367E:
	lbu	a3,a0,+00000030
	c.li	a5,0000000B
	c.li	a4,00000001
	bltu	a5,a3,00000000230136B8

l2301368A:
	addi	a2,zero,+000001B0
	add	a3,a3,a2
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.add	a5,a3
	lbu	a3,a5,+0000001C
	bne	a3,a4,00000000230136B8

l230136A4:
	c.lw	a5,52(a5)
	c.andi	a5,00000003
	c.bnez	a5,00000000230136B8

l230136AA:
	lhu	a5,a0,+00000032
	c.lui	a4,00001000
	c.or	a5,a4
	sh	a5,a0,+00000032
	c.li	a4,00000000

l230136B8:
	c.mv	a0,a4
	c.jr	ra

l230136BC:
	c.li	a4,00000001
	c.j	00000000230136B8

;; apm_tx_int_ps_postpone: 230136C0
;;   Called from:
;;     2300BF9E (in txl_cntrl_push_int)
apm_tx_int_ps_postpone proc
	lhu	a5,a0,+00000032
	slli	a4,a5,00000013
	bge	a4,zero,00000000230136F8

l230136CC:
	lbu	a2,a0,+0000002E
	lui	a4,000230CC
	addi	a6,a4,-00000774
	c.add	a2,a6
	lbu	a3,a1,+000000F2
	lbu	a2,a2,+00000000
	lbu	a5,a1,+00000032
	addi	a4,a4,-00000774
	c.and	a2,a3
	c.beqz	a2,00000000230136FA

l230136EE:
	andi	a2,a5,+00000008
	ori	a5,a5,+00000008
	c.beqz	a2,0000000023013704

l230136F8:
	c.jr	ra

l230136FA:
	andi	a2,a5,+00000002
	c.bnez	a2,00000000230136F8

l23013700:
	ori	a5,a5,+00000002

l23013704:
	sb	a5,a1,+00000032
	lbu	a5,a0,+0000002E
	c.add	a4,a5
	lbu	a5,a4,+00000000
	c.and	a5,a3
	c.beqz	a5,000000002301371C

l23013716:
	c.li	a5,0000000F
	bne	a3,a5,00000000230136F8

l2301371C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000004
	c.mv	s0,a1
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	c.li	a4,00000001
	sb	a4,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; apm_tx_int_ps_get_postpone: 23013752
;;   Called from:
;;     2300B288 (in sta_mgmt_send_postponed_frame)
apm_tx_int_ps_get_postpone proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lbu	s2,a0,+00000056
	c.li	a5,00000002
	bne	s2,a5,0000000023013772

l2301376E:
	c.lw	a1,52(a5)
	c.bnez	a5,000000002301378E

l23013772:
	sw	zero,a2,+00000000

l23013776:
	c.li	s1,00000000

l23013778:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2301378E:
	andi	a4,a5,+00000001
	c.li	s4,00000001
	c.bnez	a4,000000002301379A

l23013796:
	c.li	s4,00000004
	c.li	s2,00000008

l2301379A:
	lbu	a4,a1,+00000032
	and	a4,s2,a4
	c.bnez	a4,00000000230137AA

l230137A4:
	c.li	a5,00000001
	c.sw	a2,0(a5)
	c.j	0000000023013776

l230137AA:
	lw	s1,a1,+0000019C
	lui	s5,000230CC
	c.addi	a5,FFFFFFFE
	c.mv	s3,a2
	c.mv	s0,a1
	c.li	s6,00000000
	addi	s5,s5,-00000774
	sltiu	a5,a5,+00000001

l230137C2:
	c.bnez	s1,00000000230137E4

l230137C4:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000016F
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000688
	jal	ra,0000000023001236
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.j	0000000023013778

l230137E4:
	lbu	a4,s1,+0000002E
	lbu	a3,s0,+000000F2
	c.add	a4,s5
	lbu	a4,a4,+00000000
	c.and	a4,a3
	sltiu	a4,a4,+00000001
	bne	a4,a5,000000002301388A

l230137FC:
	c.mv	s6,s1
	c.lw	s1,0(s1)
	c.j	00000000230137C2

l23013802:
	lw	a5,s6,+00000000

l23013806:
	c.bnez	a5,000000002301383E

l23013808:
	lbu	a5,s0,+00000032
	xori	s2,s2,-00000001
	and	s2,s2,a5
	sb	s2,s0,+00000032
	and	s2,s2,s4
	beq	s2,zero,0000000023013862

l23013820:
	c.lw	s1,104(a4)
	lbu	a5,a4,+0000014D
	lbu	a3,a4,+0000014C
	c.slli	a5,08
	c.or	a5,a3
	c.lui	a3,00002000
	c.or	a5,a3
	sb	a5,a4,+0000014C
	c.srli	a5,00000008
	sb	a5,a4,+0000014D
	c.j	0000000023013778

l2301383E:
	lbu	a4,a5,+0000002E
	c.add	a4,s5
	lbu	a3,a4,+00000000
	lbu	a4,s0,+000000F2
	c.and	a3,a4
	c.lw	s0,52(a4)
	sltiu	a3,a3,+00000001
	c.addi	a4,FFFFFFFE
	sltiu	a4,a4,+00000001
	bne	a3,a4,0000000023013820

l2301385E:
	c.lw	a5,0(a5)
	c.j	0000000023013806

l23013862:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,00000000230149A2
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	jal	ra,0000000023014A0E
	c.j	0000000023013778

l2301388A:
	c.mv	a2,s1
	c.mv	a1,s6
	addi	a0,s0,+0000019C
	jal	ra,00000000230145EC
	c.lw	s0,52(a5)
	c.andi	a5,00000008
	sltu	a5,zero,a5
	c.addi	a5,00000003
	sb	a5,s1,+0000002E
	bne	s6,zero,0000000023013802

l230138A8:
	lw	a5,s0,+0000019C
	c.j	0000000023013806

;; apm_tx_int_ps_clear: 230138AE
;;   Called from:
;;     230087A2 (in mm_sta_del)
;;     2300A50A (in rxl_cntrl_evt)
;;     2300A530 (in rxl_cntrl_evt)
apm_tx_int_ps_clear proc
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	bne	a4,a5,0000000023013920

l230138B8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a1,0004201F
	addi	a1,a1,-000005A0
	c.li	a2,00000000
	c.swsp	ra,00000084
	c.add	s0,a1
	c.mv	a1,s0
	jal	ra,000000002300B24C
	lbu	a5,s0,+00000032
	andi	a4,a5,+0000000A
	c.beqz	a4,0000000023013918

l230138E2:
	andi	a5,a5,+000000F5
	sb	a5,s0,+00000032
	c.bnez	a5,0000000023013918

l230138EC:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,00000000230149A2
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

l23013918:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23013920:
	c.jr	ra

;; apm_sta_fw_delete: 23013922
;;   Called from:
;;     2301EA90 (in apm_sta_connect_timeout_ind_handler)
apm_sta_fw_delete proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	lui	a1,0004201F
	addi	a1,a1,-000005A0
	c.addi	a5,0000001E
	c.add	a1,a5
	jal	zero,0000000023013208

;; apm_sta_add: 2301393A
;;   Called from:
;;     23018C18 (in ProcessPWKMsg4)
;;     2301EB5E (in apm_sta_add_cfm_handler)
apm_sta_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.lui	a0,00002000
	c.li	a3,0000001C
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003F8
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,00000000230149A2
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	lui	s0,0004201F
	addi	s0,s0,-000005A0
	c.li	a5,00000002
	c.mv	s1,a0
	c.li	a2,00000006
	c.addi	a0,00000004
	c.add	s0,s2
	sb	a5,s0,+00000031
	lw	a5,s0,+000000EC
	addi	a1,s0,+0000001E
	sw	a5,a0,+00000FFC
	jal	ra,00000000230A382C
	lbu	a5,s0,+0000001B
	c.mv	a0,s1
	sb	a5,s1,+0000000B
	lbu	a5,s0,+0000001A
	sb	a5,s1,+0000000A
	lb	a5,s0,+00000024
	sb	a5,s1,+0000000C
	c.lw	s0,40(a5)
	c.sw	s1,16(a5)
	c.lw	s0,44(a5)
	c.sw	s1,20(a5)
	lbu	a5,s0,+00000030
	sb	a5,s1,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; apm_send_mlme: 230139BC
;;   Called from:
;;     23010204 (in rxu_cntrl_frame_handle)
;;     23013C7A (in apm_probe_req_handler)
;;     23013D5A (in apm_auth_handler)
;;     23013E56 (in apm_assoc_req_handler)
;;     230141A8 (in apm_disassoc_handler)
;;     230141F2 (in apm_sta_remove)
apm_send_mlme proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.mv	s5,a5
	lw	a5,a0,+000003A4
	c.mv	s1,a0
	c.mv	s6,a1
	lbu	a0,a5,+00000002
	addi	a1,zero,+00000100
	c.mv	s7,a2
	sltu	a0,zero,a0
	c.mv	s3,a3
	c.mv	s2,a4
	jal	ra,000000002300C582
	beq	a0,zero,0000000023013B0A

l230139F4:
	c.lw	a0,104(s0)
	srli	a5,s6,00000008
	c.mv	a1,s7
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	s4,a0
	sb	s6,s0,+0000014C
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,00000000230A382C
	addi	s7,s1,+00000050
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,00000000230A382C
	lui	a5,00042020
	addi	a5,a5,-000000F0
	lhu	a4,a5,+00000054
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000054
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s0,+00000162
	c.srli	a4,00000008
	sb	a4,s0,+00000163
	addi	a5,zero,+000000B0
	bne	s6,a5,0000000023013AC2

l23013A62:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,s0,+00000164
	jal	ra,000000002301C9E8

l23013A72:
	c.addi	a0,00000018
	c.slli	a0,10
	c.srli	a0,00000010

l23013A78:
	lw	a4,s4,+0000006C
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	lbu	a5,s1,+00000057
	sb	zero,s4,+0000005E
	sb	zero,s4,+00000060
	sb	a5,s4,+0000002F
	c.li	a5,FFFFFFFF
	sb	a5,s4,+00000030
	sw	s3,s4,+000002CC
	sw	s2,s4,+000002D0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.mv	a0,s4
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,000000002300C6AE

l23013AC2:
	addi	a5,zero,+000000C0
	bne	s6,a5,0000000023013AD6

l23013ACA:
	c.mv	a1,s5
	addi	a0,s0,+00000164
	jal	ra,000000002301CA3E
	c.j	0000000023013A72

l23013AD6:
	addi	a5,zero,+00000050
	bne	s6,a5,0000000023013AEC

l23013ADE:
	lbu	a1,s1,+00000057
	addi	a0,s0,+00000164
	jal	ra,000000002301D432
	c.j	0000000023013A72

l23013AEC:
	andi	s6,s6,-00000021
	c.li	a5,00000010
	c.li	a0,00000018
	bne	s6,a5,0000000023013A78

l23013AF8:
	lbu	a1,s1,+00000057
	c.mv	a3,s2
	c.mv	a2,s5
	addi	a0,s0,+00000164
	jal	ra,000000002301D672
	c.j	0000000023013A72

l23013B0A:
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

;; apm_embedded_enabled: 23013B20
;;   Called from:
;;     2300FD50 (in rxu_mgt_frame_check)
;;     2300FE16 (in rxu_mgt_frame_check)
;;     23013BA8 (in apm_bcn_set)
;;     2301EFB8 (in apm_start_req_handler)
apm_embedded_enabled proc
	c.beqz	a0,0000000023013B3A

l23013B22:
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	c.li	a0,00000000
	bne	a4,a5,0000000023013B36

l23013B2E:
	lui	a5,00042021
	lbu	a0,a5,+00000774

l23013B36:
	c.andi	a0,00000001
	c.jr	ra

l23013B3A:
	lui	a5,00042021
	lbu	a0,a5,+00000774
	c.jr	ra

;; apm_bcn_set: 23013B44
;;   Called from:
;;     2301F248 (in me_set_active_cfm_handler)
apm_bcn_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,00042021
	addi	s2,s2,+00000760
	c.swsp	s0,00000004
	lw	s0,s2,+00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lhu	a3,s0,+00000024
	c.li	a2,00000007
	c.li	a1,00000000
	c.addi	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+0000003F
	jal	ra,00000000230149A2
	c.lw	s0,32(a5)
	c.mv	s1,a0
	c.sw	a0,0(a5)
	lhu	a5,s0,+00000024
	sh	a5,a0,+00000004
	lhu	a5,s0,+00000026
	sh	a5,a0,+00000006
	lbu	a5,s0,+00000032
	sb	a5,a0,+00000008
	lbu	a0,s0,+00000033
	addi	a5,zero,+000005D8
	sb	a0,s1,+00000009
	add	a0,a0,a5
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.add	a0,a5
	jal	ra,0000000023013B20
	lhu	a2,s0,+00000024
	addi	a5,s1,+0000000C
	c.beqz	a0,0000000023013BE4

l23013BB6:
	lw	a1,s2,+00000010
	c.mv	a0,a5
	jal	ra,00000000230A382C
	lw	a0,s2,+00000010
	jal	ra,00000000230148D0
	sw	zero,s2,+00000010

l23013BCC:
	c.mv	a0,s1
	jal	ra,0000000023014A0E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a1,00000002
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

l23013BE4:
	addi	a1,s0,+000000A7
	c.mv	a0,a5
	jal	ra,00000000230A382C
	c.j	0000000023013BCC

;; apm_probe_req_handler: 23013BF0
;;   Called from:
;;     2301EADE (in rxu_mgt_ind_handler)
apm_probe_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	beq	s0,a5,0000000023013C7E

l23013C08:
	addi	a5,zero,+000005D8
	add	s0,s0,a5
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.add	s0,a5

l23013C1A:
	lhu	a1,s1,+00000000
	addi	s2,s1,+00000034
	c.li	a2,00000000
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023015122
	c.beqz	a0,0000000023013C92

l23013C32:
	lbu	a5,a0,+00000001
	c.beqz	a5,0000000023013C92

l23013C38:
	lbu	a2,s0,+0000037E
	bne	a2,a5,0000000023013C86

l23013C40:
	addi	a1,s0,+0000037F
	c.addi	a0,00000002
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023013C86

l23013C4C:
	lhu	a1,s1,+00000000
	c.li	a2,00000003
	c.mv	a0,s2
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,0000000023015122
	c.bnez	a0,0000000023013C9E

l23013C60:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a2,s1,+00000026
	c.lwsp	tp,00000024
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+00000050
	c.addi	sp,00000010
	jal	zero,00000000230139BC

l23013C7E:
	jal	ra,000000002300D684
	c.mv	s0,a0
	c.bnez	a0,0000000023013C1A

l23013C86:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23013C92:
	lui	a5,00042021
	lbu	a5,a5,+00000775
	c.beqz	a5,0000000023013C4C

l23013C9C:
	c.j	0000000023013C86

l23013C9E:
	lw	a5,s0,+000003A4
	lbu	a1,a0,+00000002
	lbu	a3,a5,+00000002
	lhu	a4,a5,+00000000
	c.bnez	a3,0000000023013CE4

l23013CB0:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,0000000023013CDE

l23013CC6:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,0000000023013CDE

l23013CD2:
	addi	a5,a2,+00000699

l23013CD6:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l23013CDE:
	bne	a1,a5,0000000023013C86

l23013CE2:
	c.j	0000000023013C60

l23013CE4:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,0000000023013CDE

l23013CEC:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,0000000023013CDE

l23013D00:
	addi	a5,a2,-00000388
	c.j	0000000023013CD6

;; apm_auth_handler: 23013D06
;;   Called from:
;;     2301EAF2 (in rxu_mgt_ind_handler)
apm_auth_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a5,a0,+00000008
	addi	s2,zero,+000000FF
	beq	a5,s2,0000000023013D5E

l23013D1C:
	addi	s1,zero,+000005D8
	add	a5,a5,s1
	addi	s0,a0,+00000026
	lui	s1,00042020
	addi	s1,s1,-00000088
	c.mv	a0,s0
	c.add	s1,a5
	jal	ra,00000000230077AA
	beq	a0,s2,0000000023013D42

l23013D3C:
	c.mv	a1,s0
	jal	ra,0000000023013208

l23013D42:
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+000000B0
	c.addi	sp,00000010
	jal	zero,00000000230139BC

l23013D5E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; apm_assoc_req_handler: 23013D6A
;;   Called from:
;;     2301EB06 (in rxu_mgt_ind_handler)
apm_assoc_req_handler proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	lbu	s8,a0,+00000008
	addi	a5,zero,+000000FF
	beq	s8,a5,0000000023013E5A

l23013D92:
	c.mv	s1,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000058
	c.li	a2,00000007
	c.mv	s5,a1
	addi	a0,a0,+00000407
	c.li	a1,00000005
	jal	ra,00000000230149A2
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.mv	s0,a0
	addi	s4,s1,+00000026
	jal	ra,00000000230A3A68
	c.li	a2,00000006
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000008
	addi	s7,zero,+000005D8
	add	s7,s8,s7
	sb	a5,s0,+00000049
	c.lw	s1,16(a5)
	lui	s3,00042020
	addi	s6,s3,-00000088
	c.sw	s0,76(a5)
	c.lw	s1,20(a5)
	addi	s3,s3,-00000088
	c.sw	s0,80(a5)
	lb	a5,s1,+00000018
	c.add	s6,s7
	sb	a5,s0,+00000054
	lbu	a5,s1,+0000001B
	sb	a5,s0,+00000055
	lbu	a5,s1,+00000037
	lbu	a4,s1,+00000036
	lhu	s2,s1,+00000000
	c.slli	a5,08
	c.or	a4,a5
	beq	s5,zero,0000000023013E78

l23013E0C:
	addi	s1,s1,+0000003E
	addi	s2,s2,-00000022

l23013E14:
	addi	s9,zero,+000005D8
	add	s9,s8,s9
	addi	a5,zero,+00000033
	c.add	s9,s3
	lhu	a3,s9,+00000416
	bltu	a3,a4,0000000023013E3E

l23013E2A:
	c.slli	s2,10
	srli	s2,s2,00000010
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.bnez	a0,0000000023013E80

l23013E3C:
	c.li	a5,00000001

l23013E3E:
	lui	a3,00023013
	c.mv	a4,s0
	addi	a3,a3,+00000284
	c.mv	a2,s4
	addi	a1,zero,+00000030
	bne	s5,zero,0000000023013E54

l23013E52:
	c.li	a1,00000010

l23013E54:
	c.mv	a0,s6
	jal	ra,00000000230139BC

l23013E5A:
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
	c.lwsp	a6,0000015C
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l23013E78:
	addi	s1,s1,+00000038
	c.addi	s2,FFFFFFE4
	c.j	0000000023013E14

l23013E80:
	lbu	a5,a0,+00000001
	lbu	a2,s9,+0000037E
	bne	a2,a5,0000000023013E3C

l23013E8C:
	addi	a1,s7,+0000037F
	c.add	a1,s3
	c.addi	a0,00000002
	jal	ra,00000000230A37A4
	c.mv	s7,a0
	c.bnez	a0,0000000023013E3C

l23013E9C:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.li	a5,00000012
	c.beqz	a0,0000000023013E3E

l23013EAA:
	lbu	a5,a0,+00000001
	c.addi4spn	a4,00000010
	c.addi	a0,00000002
	sb	a5,sp,+00000010
	c.mv	s9,a4
	c.li	a3,FFFFFFFF

l23013EBA:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a3,000000002301402C

l23013EC2:
	addi	a2,zero,+00000032
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.beqz	a0,0000000023013EEA

l23013ED0:
	lbu	a2,sp,+00000010
	lbu	a4,a0,+00000001
	c.li	a5,00000000
	c.addi	a0,00000002

l23013EDC:
	bne	a4,a5,0000000023014038

l23013EE0:
	lbu	a5,sp,+00000010
	c.add	a4,a5
	sb	a4,sp,+00000010

l23013EEA:
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,000000002300DB32
	addi	a5,zero,+000005D8
	add	s8,s8,a5
	c.mv	s11,a0
	sb	zero,s0,+00000006
	c.li	s10,00000000
	c.add	s3,s8

l23013F04:
	lbu	a5,s3,+000003B0
	bltu	s10,a5,0000000023014052

l23013F0C:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.beqz	a0,0000000023013F70

l23013F1A:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	addi	a3,s0,+00000027
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000014
	lbu	a5,a0,+00000004
	addi	a4,a0,+00000005
	sb	a5,s0,+00000016
	addi	a5,s0,+00000017

l23013F3E:
	bne	a5,a3,0000000023014090

l23013F42:
	lbu	a5,a0,+00000016
	lbu	a4,a0,+00000015
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000028
	lbu	a5,a0,+00000018
	lbu	a4,a0,+00000017
	c.slli	a5,08
	c.or	a5,a4
	c.sw	s0,44(a5)
	lbu	a5,a0,+0000001B
	sb	a5,s0,+00000030
	c.lw	s0,64(a5)
	ori	a5,a5,+00000002
	c.sw	s0,64(a5)

l23013F70:
	lui	a2,000230AD
	c.li	a3,00000004
	addi	a2,a2,-000006C4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002301513E
	c.beqz	a0,0000000023013FA0

l23013F84:
	c.lw	s0,64(a4)
	lbu	a5,a0,+00000008
	ori	a4,a4,+00000001
	c.sw	s0,64(a4)
	andi	a4,a5,+0000000F
	c.srli	a5,00000004
	c.andi	a5,00000006
	sb	a4,s0,+00000046
	sb	a5,s0,+00000047

l23013FA0:
	c.li	a2,00000002
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,00000000230A3A68
	c.li	a2,00000001
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000030
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.beqz	a0,000000002301409E

l23013FC2:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000020
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000008

l23013FD6:
	sb	a5,sp,+0000000C

l23013FDA:
	lui	s1,00042021
	lw	a0,s1,+0000052C
	c.beqz	a0,000000002301400C

l23013FE4:
	lbu	a4,sp,+00000010
	addi	a5,zero,+0000002E
	andi	a4,a4,+00000028
	beq	a4,zero,0000000023013E3E

l23013FF4:
	c.addi4spn	a2,0000000C
	c.mv	a1,s9
	c.li	a4,00000000
	c.li	a3,00000000
	jal	ra,0000000023018E28
	lw	a0,s1,+0000052C
	c.mv	a2,s0
	c.li	a1,00000000
	jal	ra,00000000230194B2

l2301400C:
	lui	s2,00042021
	addi	a5,s2,+00000760
	lbu	a4,a5,+00000016
	lbu	a5,a5,+00000017
	sh	zero,s0,+00000044
	addi	s3,s2,+00000760
	bltu	a4,a5,00000000230140C8

l23014028:
	c.li	a5,00000011
	c.j	0000000023013E3E

l2301402C:
	lbu	a2,a0,+00000000
	c.addi	a0,00000001
	sb	a2,a4,+00000000
	c.j	0000000023013EBA

l23014038:
	add	a3,a0,a5
	lbu	a1,a3,+00000000
	addi	a6,sp,+00000011
	add	a3,a2,a5
	c.add	a3,a6
	sb	a1,a3,+00000000
	c.addi	a5,00000001
	c.j	0000000023013EDC

l23014052:
	add	s8,s3,s10
	lbu	a0,s8,+000003B1
	jal	ra,000000002300DA7E
	sra	a0,s11,a0
	c.andi	a0,00000001
	c.beqz	a0,0000000023014084

l23014066:
	lbu	a5,s0,+00000006
	lbu	a3,s8,+000003B1
	add	a4,s0,a5
	sb	a3,a4,+00000007
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2301407C:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	0000000023013F04

l23014084:
	lb	a5,s8,+000003B1
	bge	a5,zero,000000002301407C

l2301408C:
	c.li	a5,00000012
	c.j	0000000023013E3E

l23014090:
	lbu	a2,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a2,a5,+00000FFF
	c.j	0000000023013F3E

l2301409E:
	lui	a2,000230AD
	c.li	a3,00000004
	addi	a2,a2,-000006BC
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002301513E
	c.beqz	a0,0000000023013FDA

l230140B2:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000008
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000004
	c.j	0000000023013FD6

l230140C8:
	addi	s2,s2,+00000760
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s8,0000000A

l230140D2:
	lbu	a5,s2,+0000001E
	c.beqz	a5,000000002301410A

l230140D8:
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023014110

l230140E6:
	c.li	a5,00000007
	add	a5,s7,a5
	c.li	a4,00000001
	c.mv	s1,s7
	c.add	a5,s3
	sb	a4,a5,+0000001E

l230140F6:
	lbu	a5,s3,+00000016
	c.addi	s1,00000001
	sh	s1,s0,+00000044
	c.addi	a5,00000001
	sb	a5,s3,+00000016
	c.li	a5,00000000
	c.j	0000000023013E3E

l2301410A:
	bne	s1,s9,0000000023014110

l2301410E:
	c.mv	s1,s7

l23014110:
	c.addi	s7,00000001
	c.addi	s2,00000007
	bne	s7,s8,00000000230140D2

l23014118:
	c.li	a5,FFFFFFFF
	beq	s1,a5,0000000023014028

l2301411E:
	c.li	s2,00000007
	add	s2,s1,s2
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	c.add	a0,s3
	jal	ra,00000000230A382C
	c.add	s2,s3
	c.li	a5,00000001
	sb	a5,s2,+0000001E
	c.j	00000000230140F6

;; apm_deauth_handler: 2301413C
;;   Called from:
;;     2301EB14 (in rxu_mgt_ind_handler)
apm_deauth_handler proc
	lbu	a4,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	a1,a0
	beq	a4,a5,000000002301415A

l2301414A:
	lbu	a0,a0,+00000007
	beq	a0,a5,000000002301415A

l23014152:
	addi	a1,a1,+00000026
	jal	zero,0000000023013208

l2301415A:
	c.jr	ra

;; apm_disassoc_handler: 2301415C
;;   Called from:
;;     2301EB22 (in rxu_mgt_ind_handler)
apm_disassoc_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	beq	s0,a5,00000000230141AC

l2301416E:
	c.mv	a2,a0
	lbu	a0,a0,+00000007
	beq	a0,a5,00000000230141AC

l23014178:
	addi	a2,a2,+00000026
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,0000000023013208
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a0,00042020
	addi	a0,a0,-00000088
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+000000C0
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	jal	zero,00000000230139BC

l230141AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_beacon_handler: 230141B4
;;   Called from:
;;     2301EB30 (in rxu_mgt_ind_handler)
apm_beacon_handler proc
	c.jr	ra

;; apm_sta_remove: 230141B6
;;   Called from:
;;     2301EBA8 (in apm_sta_del_req_handler)
apm_sta_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	lui	a6,00042020
	addi	a6,a6,-00000088
	c.swsp	s1,00000080
	c.li	a4,00000000
	c.mv	s1,a1
	c.li	a3,00000000
	addi	a1,zero,+000000C0
	c.addi	s0,0000001E
	c.add	s0,a5
	addi	a5,zero,+000005D8
	add	a0,a0,a5
	c.mv	a2,s0
	c.li	a5,00000002
	c.swsp	ra,00000084
	c.add	a0,a6
	jal	ra,00000000230139BC
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023013208

;; cfg_api_element_dump: 23014206
;;   Called from:
;;     2301F33C (in dump_cfg_entries)
cfg_api_element_dump proc
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a5,00000007
	bltu	a5,a1,000000002301438E

l23014212:
	lui	a5,000230AD
	addi	a5,a5,-00000680
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.jr	a5
2301422A                               83 47 05 00 9D EB           .G....
23014230 B7 D6 0A 23 93 86 46 9C 37 76 0C 23 13 06 86 97 ...#..F.7v.#....
23014240 BD 45 22 85 EF E0 66 19 63 53 05 00 01 45 22 95 .E"...f.cS...E".
23014250 23 00 05 00 37 D5 0A 23 13 05 C5 9C B2 40 22 44 #...7..#.....@"D
23014260 41 01 82 80 B7 D6 0A 23 93 86 C6 9B F1 B7 83 06 A......#........
23014270 05 00 37 86 0C 23 13 06 46 89 BD 45 22 85 EF E0 ..7..#..F..E"...
23014280 C6 15 63 53 05 00 01 45 22 95 23 00 05 00 37 D5 ..cS...E".#...7.
23014290 0A 23 13 05 45 9D D9 B7 83 46 05 00 37 26 0C 23 .#..E....F..7&.#
230142A0 13 06 C6 0E BD 45 22 85 EF E0 26 13 63 53 05 00 .....E"...&.cS..
230142B0 01 45 22 95 23 00 05 00 37 D5 0A 23 13 05 C5 9D .E".#...7..#....
230142C0 71 BF 83 16 05 00 37 86 0C 23 13 06 46 89 BD 45 q.....7..#..F..E
230142D0 22 85 EF E0 86 10 63 53 05 00 01 45 22 95 23 00 ".....cS...E".#.
230142E0 05 00 37 D5 0A 23 13 05 45 9E 8D BF 83 56 05 00 ..7..#..E....V..
230142F0 37 26 0C 23 13 06 C6 0E BD 45 22 85 EF E0 E6 0D 7&.#.....E".....
23014300 63 53 05 00 01 45 22 95 23 00 05 00 37 D5 0A 23 cS...E".#...7..#
23014310 13 05 C5 9E A1 B7 14 41 37 D6 0A 23 13 06 C6 A0 .......A7..#....
23014320 BD 45 22 85 EF E0 66 0B 63 53 05 00 01 45 22 95 .E"...f.cS...E".
23014330 23 00 05 00 37 D5 0A 23 13 05 45 9F 05 B7 14 41 #...7..#..E....A
23014340 37 A6 0C 23 13 06 46 28 BD 45 22 85 EF E0 E6 08 7..#..F(.E".....
23014350 63 53 05 00 01 45 22 95 23 00 05 00 37 D5 0A 23 cS...E".#...7..#
23014360 13 05 C5 9F E5 BD 14 41 37 A6 0C 23 13 06 46 28 .......A7..#..F(
23014370 BD 45 22 85 EF E0 66 06 63 53 05 00 01 45 2A 94 .E"...f.cS...E*.
23014380 37 D5 0A 23 23 00 04 00 13 05 45 A0 C1 BD       7..##.....E... 

l2301438E:
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_general_set: 23014392
cfg_api_element_general_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.lw	a0,8(a1)
	c.mv	s1,a0
	lui	a0,000230AD
	addi	a0,a0,-000005F0
	jal	ra,0000000023082388
	lhu	a5,s1,+00000006
	c.li	a4,00000006
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,00000000230143D6

l230143BC:
	lui	a4,000230AD
	addi	a4,a4,-00000660
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.lw	s1,12(a5)
	c.jr	a4
230143CE                                           03 07               ..
230143D0 04 00 23 80 E7 00                               ..#...         

l230143D6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra
230143E2       03 47 04 00 F5 B7 03 17 04 00 23 90 E7 00   .G........#...
230143F0 DD B7 03 57 04 00 DD BF 18 40 98 C3 E9 BF       ...W.....@.... 

;; cfg_api_element_general_get: 230143FE
cfg_api_element_general_get proc
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_set: 23014402
;;   Called from:
;;     2301F3CA (in cfg_start_req_handler)
cfg_api_element_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,000230CC
	lui	s1,000230CC
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
	addi	s0,s0,+00000188
	addi	s1,s1,+000001DC
	lui	s7,000230AD

l23014434:
	bltu	s0,s1,000000002301443E

l23014438:
	bne	s0,s1,0000000023014454

l2301443C:
	c.j	000000002301445E

l2301443E:
	c.lw	s0,0(a5)
	bne	a5,s2,0000000023014484

l23014444:
	lhu	a5,s0,+00000004
	bne	a5,s3,0000000023014484

l2301444C:
	lhu	a4,s0,+00000006
	bne	a4,s4,0000000023014476

l23014454:
	c.lw	s0,16(a5)
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	c.jalr	a5

l2301445E:
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

l23014476:
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s4
	addi	a0,s7,-000005D4
	jal	ra,0000000023082388

l23014484:
	c.addi	s0,0000001C
	c.j	0000000023014434

;; co_list_init: 23014488
;;   Called from:
;;     23008F80 (in mm_bcn_init)
;;     230095EA (in mm_timer_init)
;;     2300A1F0 (in rxl_init)
;;     2300A792 (in rxl_reset)
;;     2300A7A2 (in rxl_reset)
;;     2300AEC8 (in sta_mgmt_init)
;;     2300B67A (in txl_cfm_init)
;;     2300B686 (in txl_cfm_init)
;;     2300B692 (in txl_cfm_init)
;;     2300B69E (in txl_cfm_init)
;;     2300B6B0 (in txl_cfm_init)
;;     2300B964 (in txl_cntrl_init)
;;     2300C2EC (in txl_reset)
;;     2300C3FE (in txl_frame_init)
;;     2300C426 (in txl_frame_init)
;;     2300CFBA (in vif_mgmt_init)
;;     2300CFC6 (in vif_mgmt_init)
;;     2300FFC2 (in rxu_cntrl_init)
;;     2300FFCE (in rxu_cntrl_init)
;;     2300FFDA (in rxu_cntrl_init)
;;     2300FFE6 (in rxu_cntrl_init)
;;     23011C7C (in sm_set_bss_param)
;;     2301AF20 (in hal_dma_init)
;;     2301AF3C (in hal_dma_init)
co_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; co_list_push_back: 23014492
;;   Called from:
;;     230090EE (in mm_tim_update)
;;     2300A274 (in rxl_timer_int_handler)
;;     2300AEE0 (in sta_mgmt_init)
;;     2300B0BA (in sta_mgmt_register)
;;     2300B142 (in sta_mgmt_unregister)
;;     2300B6D2 (in txl_cfm_push)
;;     2300BF5E (in txl_cntrl_push_int)
;;     2300BF94 (in txl_cntrl_push_int)
;;     2300BFE4 (in txl_cntrl_push_int_force)
;;     2300C074 (in txl_cntrl_push)
;;     2300C49C (in txl_frame_init)
;;     2300C78C (in txl_frame_cfm)
;;     2300C7B8 (in txl_frame_release)
;;     2300C846 (in txl_frame_evt)
;;     2300D00C (in vif_mgmt_init)
;;     2300D04E (in vif_mgmt_init)
;;     2300D10C (in vif_mgmt_register)
;;     2300D2C0 (in vif_mgmt_unregister)
;;     2300FB3A (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     23010850 (in rxu_cntrl_frame_handle)
;;     23011C96 (in sm_set_bss_param)
;;     23011CCA (in sm_set_bss_param)
;;     23011CFE (in sm_set_bss_param)
;;     23011D20 (in sm_set_bss_param)
;;     23011D7E (in sm_set_bss_param)
;;     23011D9E (in sm_set_bss_param)
;;     23013526 (in apm_set_bss_param)
;;     23013546 (in apm_set_bss_param)
;;     2301356E (in apm_set_bss_param)
;;     2301358A (in apm_set_bss_param)
;;     230135A2 (in apm_set_bss_param)
;;     23014A64 (in ke_msg_send)
;;     23014C1A (in ke_state_set)
;;     23014E34 (in ke_task_schedule)
;;     23019B3E (in chan_tbtt_insert)
;;     2301A56C (in chan_init)
;;     2301A92A (in chan_ctxt_del)
;;     2301ADB6 (in chan_ctxt_link)
;;     2301AF94 (in hal_dma_push)
co_list_push_back proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,00000000230144B8

l230144A0:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000047
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000594
	jal	ra,0000000023001234

l230144B8:
	c.lw	s1,0(a5)
	c.bnez	a5,00000000230144CE

l230144BC:
	c.sw	s1,0(s0)

l230144BE:
	c.sw	s1,4(s0)
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230144CE:
	c.lw	s1,4(a5)
	c.sw	a5,0(s0)
	c.j	00000000230144BE

;; co_list_push_front: 230144D4
;;   Called from:
;;     230145CE (in co_list_insert_after)
co_list_push_front proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,00000000230144FA

l230144E2:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000005E
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000594
	jal	ra,0000000023001234

l230144FA:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023014500

l230144FE:
	c.sw	s1,4(s0)

l23014500:
	c.sw	s0,0(a5)
	c.sw	s1,0(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; co_list_pop_front: 2301450E
;;   Called from:
;;     23009564 (in mm_bcn_transmitted)
;;     23009636 (in mm_timer_set)
;;     230096BA (in mm_timer_clear)
;;     23009736 (in mm_timer_schedule)
;;     2300A418 (in rxl_cntrl_evt)
;;     2300AE98 (in sta_mgmt_entry_init)
;;     2300AF9C (in sta_mgmt_register)
;;     2300B294 (in sta_mgmt_send_postponed_frame)
;;     2300B760 (in txl_cfm_evt)
;;     2300B7BC (in txl_cfm_flush)
;;     2300C1CE (in txl_transmit_trigger)
;;     2300C59C (in txl_frame_get)
;;     2300C80C (in txl_frame_evt)
;;     2300D086 (in vif_mgmt_register)
;;     23010928 (in rxu_swdesc_upload_evt)
;;     2301099A (in rxu_swdesc_upload_evt)
;;     23011BD8 (in sm_send_next_bss_param)
;;     2301345E (in apm_send_next_bss_param)
;;     23014CEE (in ke_task_schedule)
;;     2301501C (in ke_timer_clear)
;;     230150D2 (in ke_timer_schedule)
;;     23019E38 (in chan_tbtt_schedule)
;;     2301A856 (in chan_ctxt_add)
;;     2301B00A (in hal_dma_evt)
co_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023014516

l23014512:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l23014516:
	c.mv	a0,a5
	c.jr	ra

;; co_list_extract: 2301451A
;;   Called from:
;;     2300968E (in mm_timer_set)
;;     230096D8 (in mm_timer_clear)
;;     2300B128 (in sta_mgmt_unregister)
;;     2300D1F0 (in vif_mgmt_unregister)
;;     23019B34 (in chan_tbtt_insert)
;;     2301AA44 (in chan_tbtt_switch_update)
;;     2301AA94 (in chan_bcn_to_evt)
;;     2301AE52 (in chan_ctxt_unlink)
;;     2301AE9A (in chan_ctxt_unlink)
co_list_extract proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a0,0000000023014540

l23014528:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000081
	addi	a1,a1,+0000020C
	addi	a0,a0,-000005A4
	jal	ra,0000000023001234

l23014540:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002301454C

l23014544:
	bne	a5,s1,0000000023014558

l23014548:
	c.lw	s1,0(a5)
	c.sw	s0,0(a5)

l2301454C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23014556:
	c.mv	a5,a4

l23014558:
	c.lw	a5,0(a4)
	c.beqz	a4,000000002301454C

l2301455C:
	bne	a4,s1,0000000023014556

l23014560:
	c.lw	s0,4(a4)
	bne	a4,s1,0000000023014568

l23014566:
	c.sw	s0,4(a5)

l23014568:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)
	c.j	000000002301454C

;; co_list_cnt: 2301456E
;;   Called from:
;;     2300A20A (in rxl_cntrl_dump)
;;     2300B848 (in txl_cfm_dump)
;;     2300C340 (in txl_cntrl_env_dump)
;;     2300C692 (in txl_frame_get)
;;     2300C6A0 (in txl_frame_get)
;;     2300CF62 (in txl_frame_dump)
co_list_cnt proc
	c.lw	a0,0(a5)
	c.li	a0,00000000

l23014572:
	c.bnez	a5,0000000023014576

l23014574:
	c.jr	ra

l23014576:
	c.addi	a0,00000001
	c.lw	a5,0(a5)
	c.j	0000000023014572

;; co_list_insert: 2301457C
;;   Called from:
;;     2300964E (in mm_timer_set)
;;     23014F7A (in ke_timer_set)
co_list_insert proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	s1,a1
	c.li	s3,00000000

l23014590:
	c.beqz	s0,00000000230145A4

l23014592:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a2,00000084
	c.jalr	a2
	c.bnez	a0,00000000230145A8

l2301459C:
	c.mv	s3,s0
	c.lwsp	a2,00000084
	c.lw	s0,0(s0)
	c.j	0000000023014590

l230145A4:
	sw	s1,s2,+00000004

l230145A8:
	c.sw	s1,0(s0)
	beq	s3,zero,00000000230145C0

l230145AE:
	sw	s1,s3,+00000000

l230145B2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230145C0:
	sw	s1,s2,+00000000
	c.j	00000000230145B2

;; co_list_insert_after: 230145C6
;;   Called from:
;;     23019B7A (in chan_tbtt_insert)
co_list_insert_after proc
	c.mv	a4,a0
	c.lw	a0,0(a5)
	c.bnez	a1,00000000230145D8

l230145CC:
	c.mv	a1,a2
	jal	zero,00000000230144D4

l230145D2:
	beq	a5,a1,00000000230145E0

l230145D6:
	c.lw	a5,0(a5)

l230145D8:
	c.bnez	a5,00000000230145D2

l230145DA:
	c.jr	ra

l230145DC:
	c.sw	a4,4(a2)
	c.jr	ra

l230145E0:
	c.lw	a5,0(a3)
	c.sw	a2,0(a3)
	c.sw	a5,0(a2)
	c.lw	a2,0(a5)
	c.beqz	a5,00000000230145DC

l230145EA:
	c.jr	ra

;; co_list_remove: 230145EC
;;   Called from:
;;     23013892 (in apm_tx_int_ps_get_postpone)
co_list_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a0,0000000023014616

l230145FE:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000168
	addi	a1,a1,+0000020C
	addi	a0,a0,-000005A4
	jal	ra,0000000023001234

l23014616:
	c.beqz	s1,000000002301464A

l23014618:
	c.lw	s1,0(a5)
	beq	a5,s0,0000000023014636

l2301461E:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000169
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000580
	jal	ra,0000000023001234

l23014636:
	c.beqz	s0,000000002301464C

l23014638:
	c.lw	s0,0(a5)
	c.sw	s1,0(a5)
	lw	a5,s2,+00000004
	bne	a5,s0,000000002301466C

l23014644:
	sw	s1,s2,+00000004
	c.j	000000002301466C

l2301464A:
	c.bnez	s0,0000000023014666

l2301464C:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000016A
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000544
	jal	ra,0000000023001234
	c.bnez	s1,0000000023014638

l23014666:
	c.lw	s0,0(a5)
	sw	a5,s2,+00000000

l2301466C:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; co_crc32: 2301467C
;;   Called from:
;;     230089D8 (in mm_check_beacon)
;;     23008B6A (in mm_check_beacon)
co_crc32 proc
	lui	a3,000230AD
	c.li	a4,00000000
	addi	a3,a3,-00000534

l23014686:
	bne	a4,a1,000000002301468E

l2301468A:
	c.mv	a0,a2
	c.jr	ra

l2301468E:
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
	c.j	0000000023014686

;; dbg_init: 230146AC
;;   Called from:
;;     23009FFE (in bl_init)
dbg_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042021
	addi	a0,s0,+000007C0
	c.li	a2,00000008
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	addi	s0,s0,+000007C0
	c.li	a5,FFFFFFFF
	c.sw	s0,0(a5)
	c.li	a5,00000002
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ke_evt_set: 230146D6
;;   Called from:
;;     2300121E (in assert_rec)
;;     23001650 (in ipc_emb_tx_irq)
;;     23001722 (in ipc_emb_tx_evt)
;;     230017C2 (in ipc_emb_cfmback_irq)
;;     230017E2 (in ipc_emb_cfmback_irq)
;;     23001810 (in ipc_emb_msg_irq)
;;     230071B6 (in bl_irq_handler)
;;     230078F4 (in hal_machw_gen_handler)
;;     23007906 (in hal_machw_gen_handler)
;;     2300794E (in hal_machw_gen_handler)
;;     23007966 (in hal_machw_gen_handler)
;;     230079EE (in hal_machw_gen_handler)
;;     23009684 (in mm_timer_set)
;;     2300A2C2 (in rxl_timer_int_handler)
;;     2300A3EE (in rxl_cntrl_evt)
;;     2300B6EC (in txl_cfm_push)
;;     2300C798 (in txl_frame_cfm)
;;     2301026E (in rxu_cntrl_frame_handle)
;;     230108FC (in rxu_cntrl_evt)
;;     23014764 (in bl60x_fw_dump_statistic)
;;     23014A74 (in ke_msg_send)
;;     23014C26 (in ke_state_set)
;;     23014FB6 (in ke_timer_set)
;;     2301AFD8 (in hal_dma_push)
ke_evt_set proc
	csrrci	zero,mstatus,00000008
	lui	a5,00042021
	addi	a5,a5,+000007C8
	c.lw	a5,0(a4)
	c.or	a4,a0
	c.sw	a5,0(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; ke_evt_clear: 230146EE
;;   Called from:
;;     23001694 (in ipc_emb_tx_evt)
;;     23001866 (in ipc_emb_msg_evt)
;;     23007F5E (in mm_tbtt_evt)
;;     230082A0 (in mm_hw_idle_evt)
;;     23009702 (in mm_timer_schedule)
;;     2300A04C (in bl_reset_evt)
;;     2300A2F2 (in rxl_dma_evt)
;;     2300A3DA (in rxl_cntrl_evt)
;;     2300B74A (in txl_cfm_evt)
;;     2300C254 (in txl_reset)
;;     2300C7F8 (in txl_frame_evt)
;;     230108E6 (in rxu_cntrl_evt)
;;     23010920 (in rxu_swdesc_upload_evt)
;;     23014712 (in bl_event_handle)
;;     23014726 (in bl_fw_statistic_dump)
;;     23014812 (in ke_init)
;;     23014DB4 (in ke_task_schedule)
;;     230150A4 (in ke_timer_schedule)
;;     2301AFF2 (in hal_dma_evt)
ke_evt_clear proc
	csrrci	zero,mstatus,00000008
	lui	a5,00042021
	addi	a5,a5,+000007C8
	c.lw	a5,0(a4)
	xori	a0,a0,-00000001
	c.and	a0,a4
	c.sw	a5,0(a0)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; bl_event_handle: 2301470A
bl_event_handle proc
	c.addi	sp,FFFFFFF0
	lui	a0,00040000
	c.swsp	ra,00000084
	jal	ra,00000000230146EE
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230220C4

;; bl_fw_statistic_dump: 2301471E
;;   Called from:
;;     2301475C (in bl60x_fw_dump_statistic)
bl_fw_statistic_dump proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,00000000230146EE
	csrrci	zero,mstatus,00000008
	jal	ra,0000000023024326
	jal	ra,000000002300CF54
	jal	ra,0000000023001964
	jal	ra,000000002300C320
	jal	ra,000000002300B832
	jal	ra,000000002300A7A6
	jal	ra,000000002300A1FC
	jal	ra,000000002301B034
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl60x_fw_dump_statistic: 23014758
;;   Called from:
;;     230274A8 (in cmd_wifi_dump)
bl60x_fw_dump_statistic proc
	c.beqz	a0,0000000023014760

l2301475A:
	c.li	a0,00000000
	jal	zero,000000002301471E

l23014760:
	addi	a0,zero,+00000020
	jal	zero,00000000230146D6

;; ke_evt_schedule: 23014768
;;   Called from:
;;     2300146A (in wifi_main)
ke_evt_schedule proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042021
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a4,a5,+000007C8
	c.lw	a4,0(a0)
	lui	s1,000230AD
	addi	s0,a5,+000007C8
	addi	s1,s1,-00000134
	c.li	s4,0000001A
	lui	s5,000230AA
	lui	s6,000230AD

l2301479A:
	c.bnez	a0,00000000230147B0

l2301479C:
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

l230147B0:
	jal	ra,000000002309F27C
	slli	s2,a0,00000003
	add	a5,s1,s2
	lw	s3,a5,+00000000
	blt	s4,a0,00000000230147C8

l230147C4:
	bne	s3,zero,00000000230147D8

l230147C8:
	addi	a2,zero,+000000DD
	addi	a1,s5,+0000020C
	addi	a0,s6,-00000034
	jal	ra,0000000023001234

l230147D8:
	c.add	s2,s1
	lw	a0,s2,+00000004
	c.jalr	s3
	c.lw	s0,0(a0)
	c.j	000000002301479A

;; ke_init: 230147E4
;;   Called from:
;;     2300A00A (in bl_init)
ke_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	0000000023014816
	lui	a5,00042021
	addi	a5,a5,+000007C8
	c.sw	a5,28(a0)
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000010
	sw	zero,a5,+00000004
	sw	zero,a5,+00000008
	sw	zero,a5,+00000014
	sw	zero,a5,+00000018
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	jal	zero,00000000230146EE

;; ke_mem_init: 23014816
;;   Called from:
;;     230147E8 (in ke_init)
ke_mem_init proc
	lui	a0,00042021
	addi	a0,a0,+000007EB
	c.andi	a0,FFFFFFFC
	csrrci	zero,mstatus,00000008
	lui	a5,00042023
	addi	a5,a5,-00000398
	c.andi	a5,FFFFFFFC
	c.sub	a5,a0
	c.sw	a0,4(a5)
	sw	zero,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; ke_malloc: 2301483C
;;   Called from:
;;     2300189A (in ipc_emb_msg_evt)
;;     230149BC (in ke_msg_alloc)
;;     23014F38 (in ke_timer_set)
;;     230151D6 (in GetTxEAPOLBuffer)
;;     230151FC (in GetTxEAPOLBuffer)
;;     2301F08A (in apm_start_req_handler)
ke_malloc proc
	c.addi	sp,FFFFFFF0
	c.addi	a0,00000003
	c.swsp	s1,00000080
	andi	s1,a0,-00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s2,s1,+00000004
	c.li	a5,00000007
	bltu	a5,s2,000000002301486E

l23014856:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000079
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000034
	jal	ra,0000000023001234

l2301486E:
	lui	a5,00042021
	lw	a5,a5,+000007E4
	csrrci	zero,mstatus,00000008
	c.li	s0,00000000
	c.addi	s1,0000000C

l2301487E:
	c.bnez	a5,00000000230148BA

l23014880:
	c.bnez	s0,000000002301489A

l23014882:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000095
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000005C
	jal	ra,0000000023001234

l2301489A:
	c.lw	s0,4(a0)
	sub	a0,a0,s2
	c.sw	s0,4(a0)
	c.add	a0,s0
	sw	s2,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230148BA:
	c.lw	a5,4(a4)
	bltu	a4,s1,00000000230148C8

l230148C0:
	c.beqz	s0,00000000230148CC

l230148C2:
	c.lw	s0,4(a3)
	bltu	a4,a3,00000000230148CC

l230148C8:
	c.lw	a5,0(a5)
	c.j	000000002301487E

l230148CC:
	c.mv	s0,a5
	c.j	00000000230148C8

;; ke_free: 230148D0
;;   Called from:
;;     23013BC4 (in apm_bcn_set)
;;     23014A50 (in ke_msg_send)
;;     23014A9A (in ke_msg_free)
;;     2301505C (in ke_timer_clear)
;;     230150EA (in ke_timer_schedule)
;;     2301527E (in UpdateEAPOLWcbLenAndTransmit)
;;     23015284 (in UpdateEAPOLWcbLenAndTransmit)
ke_free proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042021
	c.swsp	s0,0000000C
	lw	s0,a5,+000007E4
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s1,a0
	addi	s2,a0,-00000004
	lw	s3,a0,-00000004
	bltu	s0,a0,000000002301490C

l230148F4:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000C5
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000004
	jal	ra,0000000023001234

l2301490C:
	csrrci	zero,mstatus,00000008
	c.li	s4,00000000

l23014912:
	c.bnez	s0,000000002301491E

l23014914:
	sw	s2,s4,+00000000
	sw	zero,s1,+00000FFC
	c.j	0000000023014996

l2301491E:
	c.lw	s0,4(a5)
	add	a4,a5,s0
	bne	a4,s2,0000000023014954

l23014928:
	c.lw	s0,0(a4)
	c.add	a5,s3
	c.sw	s0,4(a5)
	add	a3,s0,a5
	bne	a4,a3,0000000023014940

l23014936:
	c.lw	a4,4(a3)
	c.add	a5,a3
	c.sw	s0,4(a5)
	c.lw	a4,0(a5)
	c.sw	s0,0(a5)

l23014940:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23014954:
	bgeu	s2,s0,000000002301499C

l23014958:
	bne	s4,zero,0000000023014974

l2301495C:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000E0
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000020
	jal	ra,0000000023001234

l23014974:
	sw	s2,s4,+00000000
	add	a5,s2,s3
	bne	s0,a5,0000000023014992

l23014980:
	c.lw	s0,0(a5)
	sw	a5,s1,+00000FFC
	c.lw	s0,4(a5)
	sub	s2,a5,s2
	c.add	s0,s2
	c.sw	s1,0(s0)
	c.j	0000000023014940

l23014992:
	sw	s0,s1,+00000FFC

l23014996:
	sw	s3,s1,+00000000
	c.j	0000000023014940

l2301499C:
	c.mv	s4,s0
	c.lw	s0,0(s0)
	c.j	0000000023014912

;; ke_msg_alloc: 230149A2
;;   Called from:
;;     23008780 (in mm_sta_del)
;;     230087D8 (in mm_send_connection_loss_ind)
;;     23008878 (in mm_check_rssi)
;;     230088C4 (in mm_check_rssi)
;;     2300891A (in mm_send_csa_traffic_ind)
;;     2300928E (in mm_bcn_transmit)
;;     23009316 (in mm_bcn_transmit)
;;     2300A130 (in mm_ps_change_ind)
;;     2300A6A0 (in rxl_cntrl_evt)
;;     2300A6E0 (in rxl_cntrl_evt)
;;     2300AE3C (in scan_send_cancel_cfm)
;;     2300D58A (in vif_mgmt_switch_channel)
;;     2300E01C (in me_beacon_check)
;;     2300FE32 (in rxu_mgt_frame_check)
;;     230106C6 (in rxu_cntrl_frame_handle)
;;     23010A22 (in scanu_confirm)
;;     23010A32 (in scanu_confirm)
;;     23010A72 (in scanu_confirm)
;;     23010A8C (in scanu_raw_send_cfm)
;;     23011498 (in scanu_scan_next)
;;     230117B6 (in sm_delete_resources)
;;     230117C6 (in sm_delete_resources)
;;     230117EC (in sm_delete_resources)
;;     23011814 (in sm_delete_resources)
;;     230119E0 (in sm_scan_bss)
;;     23011AF0 (in sm_join_bss)
;;     23011C34 (in sm_set_bss_param)
;;     23011C42 (in sm_set_bss_param)
;;     23011C50 (in sm_set_bss_param)
;;     23011C5E (in sm_set_bss_param)
;;     23011C6E (in sm_set_bss_param)
;;     23011D38 (in sm_set_bss_param)
;;     23011DDE (in sm_disconnect_process)
;;     2301241E (in sm_assoc_done)
;;     23013224 (in apm_sta_delete)
;;     23013236 (in apm_sta_delete)
;;     2301334E (in apm_start_cfm)
;;     23013368 (in apm_start_cfm)
;;     230134BA (in apm_set_bss_param)
;;     230134C8 (in apm_set_bss_param)
;;     230134D6 (in apm_set_bss_param)
;;     230134E4 (in apm_set_bss_param)
;;     230134F4 (in apm_set_bss_param)
;;     230135E0 (in apm_stop)
;;     230135F0 (in apm_stop)
;;     23013622 (in apm_stop)
;;     2301372E (in apm_tx_int_ps_postpone)
;;     2301386C (in apm_tx_int_ps_get_postpone)
;;     230138F6 (in apm_tx_int_ps_clear)
;;     23013952 (in apm_sta_add)
;;     23013B6C (in apm_bcn_set)
;;     23013DA4 (in apm_assoc_req_handler)
;;     23014A7E (in ke_msg_send_basic)
;;     23019C7E (in chan_switch_start)
;;     2301AB66 (in chan_bcn_detect_start)
;;     2301B07E (in mm_monitor_channel_req_handler)
;;     2301B12A (in mm_monitor_enable_req_handler)
;;     2301B304 (in mm_remain_on_channel_req_handler)
;;     2301B360 (in mm_sta_add_req_handler)
;;     2301B3FA (in mm_key_add_req_handler)
;;     2301B4A0 (in mm_set_power_req_handler)
;;     2301B5DC (in mm_version_req_handler)
;;     2301B81C (in mm_hw_config_handler)
;;     2301B98A (in mm_hw_config_handler)
;;     2301BC5E (in mm_hw_config_handler)
;;     2301BE20 (in scan_start_req_handler)
;;     2301D91C (in me_rc_stats_req_handler)
;;     2301DA3A (in me_traffic_ind_req_handler)
;;     2301DAAC (in me_sta_del_req_handler)
;;     2301DACE (in me_sta_del_req_handler)
;;     2301DB74 (in me_set_control_port_req_handler)
;;     2301DCAC (in me_config_req_handler)
;;     2301DDB4 (in me_set_ps_disable_req_handler)
;;     2301DE4E (in me_set_active_req_handler)
;;     2301DEE6 (in me_sta_add_req_handler)
;;     2301E07E (in me_sta_add_req_handler)
;;     2301E474 (in scanu_join_cfm_handler)
;;     2301E584 (in sm_connect_req_handler)
;;     2301E614 (in sm_connect_req_handler)
;;     2301E7FC (in mm_set_vif_state_cfm_handler)
;;     2301E860 (in mm_set_vif_state_cfm_handler)
;;     2301EB78 (in apm_sta_del_req_handler)
;;     2301ECBA (in apm_start_cac_req_handler)
;;     2301F1CE (in apm_start_req_handler)
;;     2301F384 (in cfg_start_req_handler)
;;     2301F496 (in dbg_get_sys_stat_req_handler)
;;     2301F4C2 (in dbg_mem_write_req_handler)
;;     2301F4F2 (in dbg_mem_read_req_handler)
ke_msg_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,a3,+0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.mv	s2,a2
	c.mv	s1,a3
	jal	ra,000000002301483C
	c.mv	s0,a0
	c.bnez	a0,00000000230149DC

l230149C4:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000050
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000071C
	jal	ra,0000000023001234

l230149DC:
	sh	s4,s0,+00000004
	sh	s3,s0,+00000006
	sh	s2,s0,+00000008
	sh	s1,s0,+0000000A
	sw	zero,s0,+00000000
	c.addi	s0,0000000C
	c.mv	a2,s1
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_msg_send: 23014A0E
;;   Called from:
;;     23001942 (in ipc_emb_msg_evt)
;;     23008792 (in mm_sta_del)
;;     230087EA (in mm_send_connection_loss_ind)
;;     23008898 (in mm_check_rssi)
;;     230088D8 (in mm_check_rssi)
;;     2300892E (in mm_send_csa_traffic_ind)
;;     230092A2 (in mm_bcn_transmit)
;;     23009322 (in mm_bcn_transmit)
;;     2300A15A (in mm_ps_change_ind)
;;     2300A6B2 (in rxl_cntrl_evt)
;;     2300A6F4 (in rxl_cntrl_evt)
;;     2300AE4A (in scan_send_cancel_cfm)
;;     2300D66C (in vif_mgmt_switch_channel)
;;     2300E090 (in me_beacon_check)
;;     2300FFA0 (in rxu_mgt_frame_check)
;;     23010704 (in rxu_cntrl_frame_handle)
;;     23010A4A (in scanu_confirm)
;;     23010A56 (in scanu_confirm)
;;     23010A98 (in scanu_raw_send_cfm)
;;     23011660 (in scanu_scan_next)
;;     230117DA (in sm_delete_resources)
;;     230117FC (in sm_delete_resources)
;;     23011820 (in sm_delete_resources)
;;     2301183E (in sm_delete_resources)
;;     23011A36 (in sm_scan_bss)
;;     23011B4C (in sm_join_bss)
;;     23011C02 (in sm_send_next_bss_param)
;;     23011E12 (in sm_disconnect_process)
;;     23012046 (in sm_connect_ind)
;;     23012434 (in sm_assoc_done)
;;     23013266 (in apm_sta_delete)
;;     23013280 (in apm_sta_delete)
;;     230132A0 (in apm_tx_cfm_handler)
;;     23013398 (in apm_start_cfm)
;;     23013422 (in apm_start_cfm)
;;     23013488 (in apm_send_next_bss_param)
;;     23013610 (in apm_stop)
;;     23013632 (in apm_stop)
;;     2301365A (in apm_stop)
;;     2301374E (in apm_tx_int_ps_postpone)
;;     23013884 (in apm_tx_int_ps_get_postpone)
;;     23013914 (in apm_tx_int_ps_clear)
;;     230139B8 (in apm_sta_add)
;;     23013BCE (in apm_bcn_set)
;;     23014A86 (in ke_msg_send_basic)
;;     23014A96 (in ke_msg_forward_and_change_id)
;;     23019C90 (in chan_switch_start)
;;     2301ABCC (in chan_bcn_detect_start)
;;     2301B0F8 (in mm_monitor_channel_req_handler)
;;     2301B1B4 (in mm_monitor_enable_req_handler)
;;     2301B31A (in mm_remain_on_channel_req_handler)
;;     2301B37A (in mm_sta_add_req_handler)
;;     2301B478 (in mm_key_add_req_handler)
;;     2301B4DC (in mm_set_power_req_handler)
;;     2301B60A (in mm_version_req_handler)
;;     2301B842 (in mm_hw_config_handler)
;;     2301BE6C (in scan_start_req_handler)
;;     2301D99C (in me_rc_stats_req_handler)
;;     2301DA60 (in me_traffic_ind_req_handler)
;;     2301DAB8 (in me_sta_del_req_handler)
;;     2301DAF4 (in me_sta_del_req_handler)
;;     2301DB84 (in me_set_control_port_req_handler)
;;     2301DD22 (in me_config_req_handler)
;;     2301DDDC (in me_set_ps_disable_req_handler)
;;     2301DE74 (in me_set_active_req_handler)
;;     2301E092 (in me_sta_add_req_handler)
;;     2301E0AC (in me_sta_add_req_handler)
;;     2301E4E0 (in scanu_join_cfm_handler)
;;     2301E684 (in sm_connect_req_handler)
;;     2301E818 (in mm_set_vif_state_cfm_handler)
;;     2301E870 (in mm_set_vif_state_cfm_handler)
;;     2301EBB2 (in apm_sta_del_req_handler)
;;     2301ECCA (in apm_start_cac_req_handler)
;;     2301F1DE (in apm_start_req_handler)
;;     2301F38C (in cfg_start_req_handler)
;;     2301F4A6 (in dbg_get_sys_stat_req_handler)
;;     2301F4D4 (in dbg_mem_write_req_handler)
;;     2301F500 (in dbg_mem_read_req_handler)
ke_msg_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,-00000006
	c.li	a4,0000000E
	c.mv	s0,a0
	addi	s1,a0,-0000000C
	bgeu	a4,a5,0000000023014A54

l23014A26:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+000000B6
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001D8
	jal	ra,0000000023001234

l23014A3E:
	addi	a0,s0,-00000008
	jal	ra,0000000023023A70
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230148D0

l23014A54:
	c.li	a4,0000000C
	bltu	a4,a5,0000000023014A3E

l23014A5A:
	lui	a0,00042021
	c.mv	a1,s1
	addi	a0,a0,+000007CC
	jal	ra,0000000023014492
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00001000
	c.addi	sp,00000010
	jal	zero,00000000230146D6

;; ke_msg_send_basic: 23014A78
;;   Called from:
;;     23008CD2 (in mm_tim_update_proceed)
;;     23009360 (in mm_bcn_updated)
;;     23009B52 (in ps_enable_cfm)
;;     23009C32 (in ps_disable_cfm)
;;     230150E4 (in ke_timer_schedule)
;;     2301A26C (in chan_pre_switch_channel)
;;     2301A494 (in chan_ctxt_op_evt)
;;     2301B2A6 (in mm_set_ps_options_req_handler)
;;     2301B344 (in mm_sta_del_req_handler)
;;     2301B3D6 (in mm_key_del_req_handler)
;;     2301B57C (in mm_set_idle_req_handler)
;;     2301B5BC (in mm_reset_req_handler)
;;     2301B68C (in mm_start_req_handler)
;;     2301B6D6 (in mm_set_ps_mode_req_handler)
;;     2301B92C (in mm_hw_config_handler)
;;     2301BF34 (in mm_scan_channel_end_ind_handler)
;;     2301DA6E (in me_traffic_ind_req_handler)
;;     2301DB02 (in me_sta_del_req_handler)
;;     2301DB92 (in me_set_control_port_req_handler)
;;     2301DBCA (in me_chan_config_req_handler)
;;     2301DC1C (in mm_set_ps_mode_cfm_handler)
;;     2301DC76 (in mm_set_idle_cfm_handler)
;;     2301DCDA (in me_config_req_handler)
;;     2301DD72 (in me_set_ps_disable_req_handler)
;;     2301DE8E (in me_set_active_req_handler)
;;     2301EA4A (in sm_disconnect_req_handler)
;;     2301EC30 (in apm_stop_cac_req_handler)
;;     2301EC64 (in apm_conf_max_sta_req_handler)
;;     2301EE7E (in apm_stop_req_handler)
;;     2301F522 (in dbg_set_sev_filter_req_handler)
;;     2301F542 (in dbg_set_mod_filter_req_handler)
ke_msg_send_basic proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; ke_msg_forward_and_change_id: 23014A8A
;;   Called from:
;;     2301131A (in scanu_frame_handler)
ke_msg_forward_and_change_id proc
	sh	a1,a0,+00000FF8
	sh	a2,a0,+00000FFA
	sh	a3,a0,+00000FFC
	jal	zero,0000000023014A0E

;; ke_msg_free: 23014A9A
;;   Called from:
;;     23008CE0 (in mm_tim_update_proceed)
;;     2300948C (in mm_bcn_updated)
;;     23010A40 (in scanu_confirm)
;;     23012034 (in sm_connect_ind)
;;     230132AC (in apm_tx_cfm_handler)
;;     230132BA (in apm_tx_cfm_handler)
;;     2301342A (in apm_start_cfm)
;;     23014D9E (in ke_task_schedule)
;;     2301BF0A (in mm_scan_channel_end_ind_handler)
ke_msg_free proc
	jal	zero,00000000230148D0

;; cmp_dest_id: 23014A9E
cmp_dest_id proc
	lhu	a0,a0,+00000006
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; ke_task_local: 23014AAA
;;   Called from:
;;     23014B76 (in ke_state_set)
;;     23014C6E (in ke_state_get)
;;     23014D2A (in ke_task_schedule)
ke_task_local proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000E
	c.mv	s0,a0
	bgeu	a5,a0,0000000023014AD0

l23014AB8:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+000000B6
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001D8
	jal	ra,0000000023001234

l23014AD0:
	sltiu	a0,s0,+0000000D
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ke_handler_search: 23014ADC
;;   Called from:
;;     23014DDC (in ke_task_schedule)
;;     23014E20 (in ke_task_schedule)
ke_handler_search proc
	lhu	a5,a1,+00000004
	c.li	a3,FFFFFFFF
	c.addi	a5,FFFFFFFF
	bne	a5,a3,0000000023014AF6

l23014AE8:
	c.li	a0,00000000
	c.jr	ra

l23014AEC:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,0000000023014AFE

l23014AF2:
	c.li	a0,00000000
	c.j	0000000023014B32

l23014AF6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080

l23014AFE:
	c.lw	a1,0(a4)
	slli	s1,a5,00000003
	c.add	a4,s1
	lhu	a2,a4,+00000000
	bne	a2,a0,0000000023014AEC

l23014B0E:
	c.lw	a4,4(a5)
	c.mv	s0,a1
	c.bnez	a5,0000000023014B2C

l23014B14:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000F4
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000014C
	jal	ra,0000000023001234

l23014B2C:
	c.lw	s0,0(a5)
	c.add	a5,s1
	c.lw	a5,4(a0)

l23014B32:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_state_set: 23014B3C
;;   Called from:
;;     23007EFE (in mm_active)
;;     23007F22 (in mm_reset)
;;     230082AC (in mm_hw_idle_evt)
;;     230083DE (in mm_back_to_host_idle)
;;     230083FA (in mm_force_idle_req)
;;     2300AB9E (in scan_init)
;;     2300AC68 (in scan_set_channel_request)
;;     2300D6C2 (in me_init)
;;     23010A6A (in scanu_confirm)
;;     23010AA6 (in scanu_init)
;;     2301173C (in scanu_start)
;;     23011898 (in sm_init)
;;     23011A4E (in sm_scan_bss)
;;     23011B64 (in sm_join_bss)
;;     23011DC0 (in sm_set_bss_param)
;;     23011E5C (in sm_disconnect)
;;     2301202A (in sm_connect_ind)
;;     2301207E (in sm_connect_ind)
;;     23012248 (in sm_auth_send)
;;     230123CC (in sm_assoc_req_send)
;;     23012444 (in sm_assoc_done)
;;     2301271E (in sm_deauth_handler)
;;     2301331E (in apm_init)
;;     2301344C (in apm_start_cfm)
;;     230135C4 (in apm_set_bss_param)
;;     23013BE0 (in apm_bcn_set)
;;     2301B548 (in mm_set_idle_req_handler)
;;     2301B5C4 (in mm_reset_req_handler)
;;     2301B69C (in mm_start_req_handler)
;;     2301B724 (in mm_force_idle_req_handler)
;;     2301B75A (in mm_force_idle_req_handler)
;;     2301B964 (in mm_hw_config_handler)
;;     2301BCAE (in mm_hw_config_handler)
;;     2301BF26 (in mm_scan_channel_end_ind_handler)
;;     2301BFAA (in mm_scan_channel_start_ind_handler)
;;     2301C25E (in bam_init)
;;     2301DC24 (in mm_set_ps_mode_cfm_handler)
;;     2301DC7E (in mm_set_idle_cfm_handler)
;;     2301DD2A (in me_config_req_handler)
;;     2301DDE4 (in me_set_ps_disable_req_handler)
;;     2301DE7C (in me_set_active_req_handler)
;;     2301E3E4 (in mm_connection_loss_ind_handler)
;;     2301E4E8 (in scanu_join_cfm_handler)
;;     2301E666 (in sm_connect_req_handler)
;;     2301E914 (in me_set_active_cfm_handler)
ke_state_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	andi	s1,a0,+000000FF
	c.li	a5,0000000D
	c.mv	s3,a0
	c.mv	s4,a1
	srli	s2,a0,00000008
	bgeu	a5,s1,0000000023014B74

l23014B5C:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000B2
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000170
	jal	ra,0000000023001234

l23014B74:
	c.mv	a0,s1
	jal	ra,0000000023014AAA
	c.bnez	a0,0000000023014B94

l23014B7C:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000B3
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000180
	jal	ra,0000000023001234

l23014B94:
	lui	a5,000230AD
	addi	a4,a5,+0000006C
	c.slli	s1,04
	c.add	a4,s1
	lhu	a4,a4,+0000000E
	addi	s0,a5,+0000006C
	bltu	s2,a4,0000000023014BC4

l23014BAC:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000B4
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000194
	jal	ra,0000000023001234

l23014BC4:
	add	a5,s0,s1
	c.lw	a5,8(s0)
	c.slli	s2,01
	c.add	s0,s2
	c.bnez	s0,0000000023014BE8

l23014BD0:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000B9
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001B4
	jal	ra,0000000023001234

l23014BE8:
	lhu	a5,s0,+00000000
	beq	a5,s4,0000000023014C2C

l23014BF0:
	sh	s4,s0,+00000000
	lui	s1,00023015
	lui	s2,00042021
	lui	s0,00042021

l23014C00:
	addi	a1,s1,-00000562
	c.mv	a2,s3
	addi	a0,s2,+000007D4
	jal	ra,000000002301F54E
	c.mv	a1,a0
	c.beqz	a0,0000000023014C2C

l23014C12:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,+000007CC
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	lui	a0,00001000
	jal	ra,00000000230146D6
	c.j	0000000023014C00

l23014C2C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_state_get: 23014C3C
;;   Called from:
;;     23007F08 (in mm_reset)
;;     230083A2 (in mm_back_to_host_idle)
;;     2300A08E (in bl_sleep)
;;     2300FDCE (in rxu_mgt_frame_check)
;;     2300FE0A (in rxu_mgt_frame_check)
;;     23010BDC (in scanu_frame_handler)
;;     23011860 (in sm_frame_tx_cfm_handler)
;;     230126BA (in sm_deauth_handler)
;;     230126D8 (in sm_deauth_handler)
;;     2301B500 (in mm_set_idle_req_handler)
;;     2301B534 (in mm_set_idle_req_handler)
;;     2301B584 (in mm_set_idle_req_handler)
;;     2301B62A (in mm_start_req_handler)
;;     2301B710 (in mm_force_idle_req_handler)
;;     2301B786 (in mm_hw_config_handler)
;;     2301BC9E (in mm_hw_config_handler)
;;     2301BDE4 (in scan_cancel_req_handler)
;;     2301BE28 (in scan_start_req_handler)
;;     2301BE90 (in mm_scan_channel_end_ind_handler)
;;     2301BF52 (in mm_scan_channel_start_ind_handler)
;;     2301DBE2 (in mm_set_ps_mode_cfm_handler)
;;     2301DC3C (in mm_set_idle_cfm_handler)
;;     2301DD8E (in me_set_ps_disable_req_handler)
;;     2301DE22 (in me_set_active_req_handler)
;;     2301E2A8 (in me_set_ps_disable_cfm_handler)
;;     2301E2B4 (in me_set_ps_disable_cfm_handler)
;;     2301E2BC (in me_set_ps_disable_cfm_handler)
;;     2301E2E0 (in me_set_ps_disable_cfm_handler)
;;     2301E2FC (in mm_bss_param_setting_handler)
;;     2301E330 (in sm_rsp_timeout_ind_handler)
;;     2301E34A (in sm_rsp_timeout_ind_handler)
;;     2301E360 (in scanu_start_cfm_handler)
;;     2301E3B8 (in mm_connection_loss_ind_handler)
;;     2301E416 (in scanu_join_cfm_handler)
;;     2301E56C (in sm_connect_req_handler)
;;     2301E58C (in sm_connect_req_handler)
;;     2301E752 (in rxu_mgt_ind_handler)
;;     2301E774 (in rxu_mgt_ind_handler)
;;     2301E7A0 (in rxu_mgt_ind_handler)
;;     2301E7C2 (in mm_set_vif_state_cfm_handler)
;;     2301E8AA (in me_set_active_cfm_handler)
;;     2301E8B6 (in me_set_active_cfm_handler)
;;     2301E8DA (in me_set_active_cfm_handler)
;;     2301E940 (in mm_sta_add_cfm_handler)
;;     2301EA2C (in sm_disconnect_req_handler)
;;     2301EC00 (in apm_stop_cac_req_handler)
;;     2301ECE2 (in apm_start_cac_req_handler)
;;     2301ED4A (in me_set_ps_disable_cfm_handler)
;;     2301ED56 (in me_set_ps_disable_cfm_handler)
;;     2301ED76 (in me_set_ps_disable_cfm_handler)
;;     2301ED92 (in mm_bss_param_setting_handler)
;;     2301EDC6 (in mm_bcn_change_cfm_handler)
;;     2301EE32 (in apm_stop_req_handler)
;;     2301EEEE (in apm_start_req_handler)
;;     2301F1F0 (in me_set_active_cfm_handler)
;;     2301F1FC (in me_set_active_cfm_handler)
;;     2301F21C (in me_set_active_cfm_handler)
;;     2301F26A (in hostapd_mgt_ind_handler)
ke_state_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	s0,a0,+000000FF
	c.li	a5,0000000D
	srli	s2,a0,00000008
	bgeu	a5,s0,0000000023014C6C

l23014C54:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000D7
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000170
	jal	ra,0000000023001234

l23014C6C:
	c.mv	a0,s0
	jal	ra,0000000023014AAA
	c.bnez	a0,0000000023014C8C

l23014C74:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000D8
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000180
	jal	ra,0000000023001234

l23014C8C:
	lui	a5,000230AD
	addi	a4,a5,+0000006C
	c.slli	s0,04
	c.add	a4,s0
	lhu	a4,a4,+0000000E
	addi	s1,a5,+0000006C
	bltu	s2,a4,0000000023014CBC

l23014CA4:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000D9
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000194
	jal	ra,0000000023001234

l23014CBC:
	c.add	s0,s1
	c.lw	s0,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	s2,01
	c.add	s2,a5
	lhu	a0,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ke_task_schedule: 23014CD4
ke_task_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	csrrci	zero,mstatus,00000008
	lui	a0,00042021
	addi	a0,a0,+000007CC
	jal	ra,000000002301450E
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,0000000023014DA2

l23014CF8:
	lhu	s2,a0,+00000006
	c.li	a5,0000000D
	c.mv	s0,a0
	andi	s3,s2,+000000FF
	lhu	s4,a0,+00000004
	srli	s2,s2,00000008
	bgeu	a5,s3,0000000023014D28

l23014D10:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000110
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000170
	jal	ra,0000000023001234

l23014D28:
	c.mv	a0,s3
	jal	ra,0000000023014AAA
	c.bnez	a0,0000000023014D48

l23014D30:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000111
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000180
	jal	ra,0000000023001234

l23014D48:
	lui	a5,000230AD
	addi	a4,a5,+0000006C
	c.slli	s3,04
	c.add	a4,s3
	lhu	a4,a4,+0000000E
	addi	s1,a5,+0000006C
	bltu	s2,a4,0000000023014D78

l23014D60:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000112
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000194
	jal	ra,0000000023001234

l23014D78:
	c.add	s1,s3
	c.bnez	s1,0000000023014D94

l23014D7C:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+00000116
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001C4
	jal	ra,0000000023001234

l23014D94:
	c.lw	s1,0(a1)
	c.bnez	a1,0000000023014DCC

l23014D98:
	c.lw	s1,4(a1)
	c.bnez	a1,0000000023014E1E

l23014D9C:
	c.mv	a0,s0
	jal	ra,0000000023014A9A

l23014DA2:
	csrrci	zero,mstatus,00000008
	lui	a5,00042021
	lw	a5,a5,+000007CC
	c.bnez	a5,0000000023014DB8

l23014DB0:
	lui	a0,00001000
	jal	ra,00000000230146EE

l23014DB8:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23014DCC:
	c.lw	s1,8(a5)
	c.slli	s2,01
	c.mv	a0,s4
	c.add	s2,a5
	lhu	a5,s2,+00000000
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,0000000023014ADC
	c.mv	a5,a0
	c.beqz	a0,0000000023014D98

l23014DE4:
	lhu	a3,s0,+00000008
	lhu	a2,s0,+00000006
	lhu	a0,s0,+00000004
	addi	a1,s0,+0000000C
	c.jalr	a5
	c.li	a5,00000001
	beq	a0,a5,0000000023014DA2

l23014DFC:
	c.li	a5,00000002
	beq	a0,a5,0000000023014E2A

l23014E02:
	c.beqz	a0,0000000023014D9C

l23014E04:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+0000016C
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	ra,0000000023001234
	c.j	0000000023014DA2

l23014E1E:
	c.mv	a0,s4
	jal	ra,0000000023014ADC
	c.mv	a5,a0
	c.bnez	a0,0000000023014DE4

l23014E28:
	c.j	0000000023014D9C

l23014E2A:
	lui	a0,00042021
	c.mv	a1,s0
	addi	a0,a0,+000007D4
	jal	ra,0000000023014492
	c.j	0000000023014DA2

;; ke_msg_discard: 23014E3A
ke_msg_discard proc
	c.li	a0,00000000
	c.jr	ra

;; ke_msg_save: 23014E3E
ke_msg_save proc
	c.li	a0,00000002
	c.jr	ra

;; ke_timer_hw_set: 23014E42
;;   Called from:
;;     23014F8E (in ke_timer_set)
;;     23015024 (in ke_timer_clear)
;;     230150BA (in ke_timer_schedule)
;;     230150F2 (in ke_timer_schedule)
ke_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,0000000023014E76

l23014E48:
	c.lw	a0,8(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000148
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000100
	c.bnez	a3,0000000023014E70

l23014E60:
	addi	a3,zero,+00000100
	sw	a3,a4,+00000088
	ori	a5,a5,+00000100

l23014E6C:
	sw	a5,a4,+0000008C

l23014E70:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l23014E76:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000101
	c.j	0000000023014E6C

;; cmp_abs_time: 23014E84
cmp_abs_time proc
	c.lw	a1,8(a5)
	c.lw	a0,8(a0)
	c.sub	a0,a5
	lui	a5,00011E1A
	addi	a5,a5,+00000301
	sltu	a0,a0,a5
	xori	a0,a0,+00000001
	c.jr	ra

;; cmp_timer_id: 23014E9C
cmp_timer_id proc
	lhu	a4,a0,+00000004
	srli	a5,a1,00000010
	bne	a4,a5,0000000023014EB8

l23014EA8:
	lhu	a0,a0,+00000006
	c.slli	a1,10
	c.srli	a1,00000010
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

l23014EB8:
	c.li	a0,00000000
	c.jr	ra

;; ke_timer_set: 23014EBC
;;   Called from:
;;     2301222C (in sm_auth_send)
;;     230123C4 (in sm_assoc_req_send)
;;     2301341C (in apm_start_cfm)
;;     2301EAB2 (in apm_sta_connect_timeout_ind_handler)
ke_timer_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s6,a0
	c.mv	s5,a1
	c.mv	s0,a2
	bne	a2,zero,0000000023014FBA

l23014ED8:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000008C
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001F4

l23014EEC:
	jal	ra,0000000023001234

l23014EF0:
	lui	s3,00042021
	addi	a5,s3,+000007C8
	c.lw	a5,20(a5)
	addi	s3,s3,+000007C8
	c.li	s2,00000000
	c.beqz	a5,0000000023014F16

l23014F02:
	lhu	a4,a5,+00000004
	bne	a4,s6,0000000023014F16

l23014F0A:
	lhu	s2,a5,+00000006
	sub	s2,s2,s5
	sltiu	s2,s2,+00000001

l23014F16:
	slli	a2,s6,00000010
	lui	a1,00023015
	lui	s4,00042021
	or	a2,a2,s5
	addi	a1,a1,-00000164
	addi	a0,s4,+000007DC
	jal	ra,000000002301F54E
	c.mv	s1,a0
	c.bnez	a0,0000000023014F60

l23014F36:
	c.li	a0,0000000C
	jal	ra,000000002301483C
	c.mv	s1,a0
	c.bnez	a0,0000000023014F58

l23014F40:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000009D
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000021C
	jal	ra,0000000023001234

l23014F58:
	sh	s6,s1,+00000004
	sh	s5,s1,+00000006

l23014F60:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	lui	a2,00023015
	addi	a2,a2,-0000017C
	c.add	s0,a5
	c.sw	s1,8(s0)
	c.mv	a1,s1
	addi	a0,s4,+000007DC
	jal	ra,000000002301457C
	bne	s2,zero,0000000023014F8A

l23014F82:
	lw	a5,s3,+00000014
	bne	a5,s1,0000000023014F92

l23014F8A:
	lw	a0,s3,+00000014
	jal	ra,0000000023014E42

l23014F92:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,0000000023014FDC

l23014FA0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00004000
	c.addi16sp	00000020
	jal	zero,00000000230146D6

l23014FBA:
	lui	a5,00011E1A
	addi	a5,a5,+000002FF
	bgeu	a5,a2,0000000023014EF0

l23014FC6:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+0000008D
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000200
	c.j	0000000023014EEC

l23014FDC:
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

;; ke_timer_clear: 23014FF0
;;   Called from:
;;     2301245E (in sm_auth_handler)
;;     23012594 (in sm_assoc_rsp_handler)
;;     230135FE (in apm_stop)
ke_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042021
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s1,s1,+000007C8
	c.lw	s1,20(s0)
	c.beqz	s0,000000002301507A

l23015004:
	lhu	a4,s0,+00000004
	lui	a5,00042021
	bne	a4,a0,0000000023015060

l23015010:
	lhu	a4,s0,+00000006
	bne	a4,a1,0000000023015060

l23015018:
	addi	a0,a5,+000007DC
	jal	ra,000000002301450E
	c.lw	s1,20(s1)
	c.mv	a0,s1
	jal	ra,0000000023014E42
	c.beqz	s1,0000000023015052

l2301502A:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	s1,8(a5)
	c.sub	a5,a4
	bge	a5,zero,0000000023015052

l2301503A:
	lui	a1,000230AA
	lui	a0,000230AD
	addi	a2,zero,+000000D7
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001CC
	jal	ra,0000000023001234

l23015052:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230148D0

l23015060:
	slli	a2,a0,00000010
	c.or	a2,a1
	lui	a1,00023015
	addi	a1,a1,-00000164
	addi	a0,a5,+000007DC
	jal	ra,000000002301F54E
	c.mv	s0,a0
	c.bnez	a0,0000000023015052

l2301507A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_timer_schedule: 23015084
ke_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042021
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	addi	s1,s1,+000007C8
	lui	s2,00044B00
	lui	s3,00042021

l230150A0:
	lui	a0,00004000
	jal	ra,00000000230146EE
	c.lw	s1,20(s0)
	c.bnez	s0,00000000230150BE

l230150AC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023014E42

l230150BE:
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,00000000230150F0

l230150CE:
	addi	a0,s3,+000007DC
	jal	ra,000000002301450E
	c.mv	s0,a0
	lhu	a1,a0,+00000006
	lhu	a0,a0,+00000004
	addi	a2,zero,+000000FF
	jal	ra,0000000023014A78
	c.mv	a0,s0
	jal	ra,00000000230148D0
	c.j	00000000230150A0

l230150F0:
	c.mv	a0,s0
	jal	ra,0000000023014E42
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	blt	a5,zero,00000000230150CE

l23015102:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl60x_current_time_us: 23015110
;;   Called from:
;;     2300883C (in mm_check_rssi)
bl60x_current_time_us proc
	lui	a5,00044B08
	lw	a4,a5,+000000A4
	lw	a5,a5,+000000A8
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; mac_ie_find: 23015122
;;   Called from:
;;     2300AB76 (in scan_search_ds)
;;     2300DEF8 (in me_beacon_check)
;;     2300DF62 (in me_beacon_check)
;;     23010B9C (in scanu_frame_handler)
;;     23010C9A (in scanu_frame_handler)
;;     23010D52 (in scanu_frame_handler)
;;     23010F96 (in scanu_frame_handler)
;;     2301101E (in scanu_frame_handler)
;;     230110BE (in scanu_frame_handler)
;;     23013C2C (in apm_probe_req_handler)
;;     23013C5A (in apm_probe_req_handler)
;;     23013E36 (in apm_assoc_req_handler)
;;     23013EA2 (in apm_assoc_req_handler)
;;     23013ECA (in apm_assoc_req_handler)
;;     23013F14 (in apm_assoc_req_handler)
;;     23013FBC (in apm_assoc_req_handler)
;;     2301CE48 (in me_extract_rate_set)
;;     2301CE72 (in me_extract_rate_set)
;;     2301CF06 (in me_extract_power_constraint)
;;     2301CF2C (in me_extract_country_reg)
;;     2301CFA4 (in me_extract_mobility_domain)
;;     2301CFF2 (in me_extract_csa)
;;     2301D000 (in me_extract_csa)
;;     2301D016 (in me_extract_csa)
;;     2301D024 (in me_extract_csa)
;;     2301D036 (in me_extract_csa)
;;     230237A4 (in bl_rx_scanu_result_ind)
mac_ie_find proc
	c.add	a1,a0

l23015124:
	bltu	a0,a1,000000002301512C

l23015128:
	c.li	a0,00000000

l2301512A:
	c.jr	ra

l2301512C:
	lbu	a5,a0,+00000000
	beq	a5,a2,000000002301512A

l23015134:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	0000000023015124

;; mac_vsie_find: 2301513E
;;   Called from:
;;     23010E62 (in scanu_frame_handler)
;;     23011164 (in scanu_frame_handler)
;;     23013F7E (in apm_assoc_req_handler)
;;     230140AC (in apm_assoc_req_handler)
;;     230237EA (in bl_rx_scanu_result_ind)
mac_vsie_find proc
	c.add	a1,a0
	addi	a4,zero,+000000DD

l23015144:
	bltu	a0,a1,0000000023015164

l23015148:
	beq	a0,a1,0000000023015198

l2301514C:
	lui	a0,000230AD
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+0000023C
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23015164:
	lbu	a5,a0,+00000000
	bne	a5,a4,000000002301518E

l2301516C:
	addi	a6,a0,+00000002
	c.li	a5,00000000

l23015172:
	bne	a3,a5,0000000023015178

l23015176:
	c.jr	ra

l23015178:
	add	a7,a6,a5
	c.addi	a5,00000001
	add	t1,a2,a5
	lbu	a7,a7,+00000000
	lbu	t1,t1,-00000001
	beq	t1,a7,0000000023015172

l2301518E:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	0000000023015144

l23015198:
	c.li	a0,00000000
	c.jr	ra

;; GetTxEAPOLBuffer: 2301519C
;;   Called from:
;;     230157EA (in GeneratePWKMsg2)
;;     23015D34 (in GenerateGrpMsg2)
;;     2301601E (in GeneratePWKMsg4)
;;     230189DA (in PrepDefaultEapolMsg)
GetTxEAPOLBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	c.mv	s0,a2
	addi	a0,a0,+00000254
	addi	a2,s1,+000002A0
	jal	ra,000000002301F3D6
	c.bnez	s0,0000000023015204

l230151D4:
	c.li	a0,0000000C
	jal	ra,000000002301483C
	c.mv	s0,a0
	c.bnez	a0,00000000230151F0

l230151DE:
	c.li	s0,00000000

l230151E0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230151F0:
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	a0,zero,+00000200
	jal	ra,000000002301483C
	c.sw	s0,8(a0)
	c.beqz	a0,00000000230151DE

l23015204:
	c.lw	s0,8(a5)
	sw	s3,s0,+00000000
	lui	a0,000230AD
	sw	a5,s2,+00000000
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s1,+000002A0
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	00000000230151E0

;; UpdateEAPOLWcbLenAndTransmit: 23015230
;;   Called from:
;;     23015844 (in GeneratePWKMsg2)
;;     23015D6C (in GenerateGrpMsg2)
;;     2301604E (in GeneratePWKMsg4)
;;     23018ACA (in GeneratePWKMsg1)
;;     23018BB8 (in GeneratePWKMsg3)
UpdateEAPOLWcbLenAndTransmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	c.mv	s4,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+000002C8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.lw	s0,0(a5)
	c.lw	s0,8(a3)
	addi	a4,s4,+00000004
	lbu	a0,a5,+00000001
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	a3,0000000E
	jal	ra,000000002300CA86
	c.lw	s0,8(a0)
	jal	ra,00000000230148D0
	c.mv	a0,s0
	jal	ra,00000000230148D0
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,+000002C8
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; keyMgmtProcessMsgExt: 230152AE
;;   Called from:
;;     230176D8 (in ProcessRxEAPOL_PwkMsg3)
;;     230177A8 (in ProcessRxEAPOL_GrpMsg1)
keyMgmtProcessMsgExt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AD
	srl	a1,a1,s0
	lui	a0,000230AD
	addi	a2,s1,+000002E8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a2,s1,+000002E8
	srl	a1,a1,s0
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; KeyMgmtInitSta: 23015302
;;   Called from:
;;     23015526 (in supplicantInitSession)
KeyMgmtInitSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+00000300
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a0,s3,+00000008
	addi	a0,a0,+00000054
	jal	ra,00000000230178F0
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	addi	a2,s1,+00000300
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; keyMgmtSta_StartSession: 23015364
;;   Called from:
;;     23015542 (in supplicantInitSession)
keyMgmtSta_StartSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s6,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+000003AC
	jal	ra,000000002301F3D6
	lw	s4,s0,+00000008
	c.mv	a1,s6
	c.li	a2,00000006
	sw	s0,s4,+0000016C
	c.lw	s0,8(a0)
	addi	a0,a0,+0000002C
	jal	ra,00000000230A382C
	c.lw	s0,8(a0)
	c.li	a2,00000006
	c.mv	a1,s5
	addi	a0,a0,+00000026
	jal	ra,00000000230A382C
	lui	a1,00000989
	addi	a0,s4,+00000054
	addi	a1,a1,+00000680
	jal	ra,0000000023017870
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s2,+000003AC
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; init_customApp_mibs: 230153FE
;;   Called from:
;;     230155C8 (in supplicantDisable)
;;     230159D8 (in supplicantInit)
init_customApp_mibs proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+000003DC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.li	a2,00000003
	c.li	a1,00000000
	addi	a0,s0,+00000032
	jal	ra,00000000230A3A68
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,+00000035
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000036
	c.lwsp	t3,00000020
	addi	a2,s2,+000003DC
	ori	a5,a5,+00000001
	sh	a5,s0,+00000036
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	a6,00000048
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; supplicantIsEnabled: 23015478
;;   Called from:
;;     2301551E (in supplicantInitSession)
;;     230155AA (in supplicantDisable)
supplicantIsEnabled proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s2,+000003F0
	jal	ra,000000002301F3D6
	c.lw	s0,8(a5)
	c.li	a0,00000000
	c.beqz	a5,00000000230154D0

l230154B0:
	lw	a1,s3,+00000120
	lui	a0,000230AD
	addi	a0,a0,+00000268
	srl	a1,a1,s1
	addi	a2,s2,+000003F0
	jal	ra,000000002301F3D6
	c.lw	s0,8(a5)
	c.lw	a5,52(a0)
	c.srli	a0,00000008
	c.andi	a0,00000001

l230154D0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantInitSession: 230154DE
;;   Called from:
;;     2301265A (in sm_assoc_rsp_handler)
supplicantInitSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s2,a2
	addi	a2,s1,+000003C4
	c.mv	s3,a3
	c.mv	s4,a4
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	jal	ra,0000000023015478
	c.beqz	a0,0000000023015546

l23015524:
	c.mv	a0,s0
	jal	ra,0000000023015302
	c.lw	s0,8(a0)
	c.mv	a2,s2
	c.mv	a1,s5
	c.addi	a0,00000006
	jal	ra,00000000230A382C
	c.lw	s0,8(a5)
	c.mv	a2,s4
	c.mv	a1,s3
	sb	s2,a5,+00000005
	c.mv	a0,s0
	jal	ra,0000000023015364

l23015546:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,+000003C4
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; supplicantDisable: 23015576
;;   Called from:
;;     230086E2 (in mm_sta_del)
supplicantDisable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s2,+00000404
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	jal	ra,0000000023015478
	c.beqz	a0,00000000230155F0

l230155B0:
	c.lw	s0,8(a0)
	addi	a0,a0,+0000015C
	jal	ra,00000000230096A4
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	c.andi	a5,FFFFFFFE
	sb	a5,a4,+00000035
	c.lw	s0,8(a0)
	jal	ra,00000000230153FE
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	addi	a2,s2,+00000404
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l230155F0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantEnable: 230155FE
;;   Called from:
;;     23008502 (in mm_sta_add)
supplicantEnable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s6,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	c.mv	s5,a2
	addi	a0,a0,+00000254
	addi	a2,s1,+00000418
	c.mv	s4,a4
	c.mv	s3,a3
	c.li	s2,00000002
	jal	ra,000000002301F3D6
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000001
	sb	a5,a4,+00000035
	addi	a5,s6,-00000004
	bltu	s2,a5,00000000230156F4

l23015656:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000020
	sh	a5,a4,+00000036
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000004
	sb	a5,a4,+00000035
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000004E
	ori	a5,a5,+00000001
	sh	a5,a4,+0000004E
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,00000000230A382C
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,00000000230A382C
	c.lw	s0,8(a5)
	beq	s4,zero,00000000230156EE

l230156A2:
	c.li	a4,00000006
	sb	a4,a5,+0000003D

l230156A8:
	c.lw	s0,8(a0)
	lui	a1,000230CC
	c.li	a2,00000003
	addi	a1,a1,-00000768

l230156B4:
	addi	a0,a0,+0000003A
	jal	ra,00000000230A382C

l230156BC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s1,+00000418
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l230156EE:
	sb	s2,a5,+0000003D
	c.j	00000000230156A8

l230156F4:
	c.li	a5,00000003
	bne	s6,a5,00000000230156BC

l230156FA:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000008
	sh	a5,a4,+00000036
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,00000000230A382C
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,00000000230A382C
	c.lw	s0,8(a5)
	lui	a1,000230CC
	c.li	a2,00000003
	sb	s2,a5,+0000003D
	c.lw	s0,8(a0)
	addi	a1,a1,-0000074C
	c.j	00000000230156B4

;; keyMgmtFormatWpaRsnIe: 23015738
;;   Called from:
;;     23015826 (in GeneratePWKMsg2)
keyMgmtFormatWpaRsnIe proc
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
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+0000042C
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a2,s1,+0000042C
	srl	a1,a1,s0
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	s8,00000004
	lbu	a0,s3,+00000001
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s4
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023008C48

;; GeneratePWKMsg2: 2301579E
;;   Called from:
;;     2301595E (in KeyMgmtStaHsk_Recvd_PWKMsg1)
GeneratePWKMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s3,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s4,a2
	addi	a2,s3,+00000310
	c.mv	s5,a3
	jal	ra,000000002301F3D6
	lw	s1,s2,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	lw	s6,s2,+00000008
	jal	ra,000000002301519C
	c.beqz	a0,000000002301587E

l230157F0:
	c.lw	s1,8(a2)
	c.lwsp	a2,000000C4
	c.mv	s2,a0
	c.lwsp	t3,00000044
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023016F58
	c.lwsp	t3,00000004
	c.li	a5,00000001
	lbu	a4,s0,+00000012
	beq	a4,a5,0000000023015834

l23015812:
	c.lw	s1,8(a2)
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	addi	a1,s0,+00000071
	addi	a2,a2,+00000026
	c.mv	a0,s1
	jal	ra,0000000023015738
	sb	a0,s0,+0000006F
	c.srli	a0,00000008
	sb	a0,s0,+00000070

l23015834:
	c.lwsp	t3,00000044
	c.mv	a3,s5
	c.li	a2,00000001
	c.mv	a1,s4
	jal	ra,0000000023016AFA
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023015230
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	addi	a2,s3,+00000310
	jal	ra,000000002301F3D6
	c.li	a0,00000000

l2301586A:
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

l2301587E:
	c.li	a0,00000001
	c.j	000000002301586A

;; KeyMgmtStaHsk_Recvd_PWKMsg1: 23015882
;;   Called from:
;;     230161F2 (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg1 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	lui	a5,00044B00
	c.mv	s8,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000000
	srl	a1,a1,a5
	c.mv	s4,a0
	lui	s6,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s7,a2
	addi	a2,s6,+00000340
	jal	ra,000000002301F3D6
	lw	s0,s2,+00000008
	c.mv	a0,s4
	addi	s3,s0,+00000054
	c.mv	a1,s3
	jal	ra,00000000230175C6
	c.bnez	a0,00000000230158F4

l230158D8:
	c.li	s1,00000000

l230158DA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l230158F4:
	c.mv	s5,a0
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,00000000230170B8
	c.mv	s1,a0
	c.beqz	a0,0000000023015952

l23015906:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,00000000230171AA
	c.beqz	a0,00000000230158D8

l23015914:
	lw	a0,s2,+00000008
	lbu	a1,a0,+00000005
	c.addi	a0,00000006
	jal	ra,0000000023017B04
	c.mv	s1,a0
	c.beqz	a0,00000000230158D8

l23015926:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,000000002301722C
	c.swsp	a0,00000000
	addi	a7,s0,+00000128
	c.mv	a0,s1
	addi	a6,s0,+000000A4
	addi	a5,s0,+00000094
	addi	a4,s0,+00000074
	c.mv	a3,s3
	c.mv	a2,s8
	c.mv	a1,s7
	jal	ra,0000000023017450
	c.li	s1,00000001

l23015952:
	c.li	a3,00000000
	addi	a2,s0,+00000094
	addi	a1,s0,+00000074
	c.mv	a0,s4
	jal	ra,000000002301579E
	c.bnez	a0,000000002301599A

l23015964:
	c.li	a5,00000001
	bne	s1,a5,0000000023015978

l2301596A:
	addi	a1,s5,+00000009
	c.mv	a0,s3
	jal	ra,00000000230168FE
	sw	zero,s0,+000000CC

l23015978:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s6,+00000340
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	00000000230158DA

l2301599A:
	c.li	s1,00000000
	c.j	0000000023015978

;; supplicantInit: 2301599E
;;   Called from:
;;     23015AAA (in allocSupplicantData)
supplicantInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+00000444
	addi	a0,a0,+00000254
	addi	s4,s0,+00000054
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	jal	ra,00000000230153FE
	c.li	a2,00000004
	addi	a1,zero,+000000FF
	addi	a0,s0,+00000198
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000144
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,00000000230A3A68
	c.li	a5,00000001
	c.mv	a0,s4
	sw	zero,s0,+00000158
	sw	a5,s0,+00000154
	sb	zero,s0,+00000150
	jal	ra,0000000023017810
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,+00000444
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; allocSupplicantData: 23015A30
;;   Called from:
;;     2300A03C (in bl_init)
allocSupplicantData proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	addi	a2,s0,+000002B4
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a5,s2,+00000008
	c.bnez	a5,0000000023015AB4

l23015A66:
	lbu	a5,s2,+00000000
	c.beqz	a5,0000000023015A96

l23015A6C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000002B4
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

l23015A96:
	lui	a0,00042013
	addi	s1,a0,-000003E8
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023015A6C

l23015AA2:
	c.li	a5,00000001
	addi	a0,a0,-000003E8
	c.sw	s1,0(a5)
	jal	ra,000000002301599E
	sw	s1,s2,+00000008
	c.j	0000000023015A6C

l23015AB4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; keyMgmtGetKeySize: 23015AC0
;;   Called from:
;;     23015B40 (in add_key_to_mac)
;;     23015E3E (in add_mfp_key_to_mac)
keyMgmtGetKeySize proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s3,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s0
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+00000454
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a2,s1,+00000454
	srl	a1,a1,s0
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	lw	a0,s4,+00000008
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.mv	a1,s3
	c.lwsp	a2,00000068
	addi	a0,a0,+00000035
	c.addi16sp	00000020
	jal	zero,0000000023016788

;; add_key_to_mac: 23015B2A
;;   Called from:
;;     23015C9A (in keyMgmtKeyGroupTxDone.isra.1)
;;     23015F18 (in keyMgmtPlumbPairwiseKey)
;;     23018C10 (in ProcessPWKMsg4)
;;     23018ED6 (in InitGroupKey)
add_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	lbu	a5,a0,+00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	s0,00000010
	c.bnez	a5,0000000023015B48

l23015B40:
	jal	ra,0000000023015AC0
	andi	s0,a0,+000000FF

l23015B48:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	sltu	a5,zero,s2
	sb	a5,sp,+0000002F
	lbu	a4,s1,+00000002
	lbu	a5,s1,+00000000
	beq	s2,zero,0000000023015B9E

l23015B68:
	lbu	a3,s1,+00000001
	sb	a4,sp,+0000002D
	sb	a3,sp,+00000005
	c.bnez	a5,0000000023015B96

l23015B76:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	addi	a1,a1,+000000D8

l23015B7E:
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.li	a5,00000010
	sb	s0,sp,+00000008
	bne	s0,a5,0000000023015BD2

l23015B8E:
	c.li	a5,00000002

l23015B90:
	sb	a5,sp,+0000002C
	c.j	0000000023015BF4

l23015B96:
	c.mv	a2,s0
	addi	a1,s1,+000000C4
	c.j	0000000023015B7E

l23015B9E:
	c.li	a3,FFFFFFFF
	sb	a3,sp,+00000005
	sb	a4,sp,+0000002D
	c.bnez	a5,0000000023015BBC

l23015BAA:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	lhu	a5,a1,+00000126
	addi	a1,a1,+00000100
	sb	a5,sp,+00000004
	c.j	0000000023015B7E

l23015BBC:
	c.mv	a0,s1
	jal	ra,0000000023019356
	lhu	a5,a0,+000000F2
	c.mv	a2,s0
	addi	a1,a0,+000000CC
	sb	a5,sp,+00000004
	c.j	0000000023015B7E

l23015BD2:
	addi	a5,zero,+00000020
	bne	s0,a5,0000000023015C26

l23015BDA:
	c.li	a5,00000001
	sb	a5,sp,+0000002C
	beq	s2,zero,0000000023015BF4

l23015BE4:
	c.lwsp	tp,000001B4
	c.lwsp	t3,000000C4
	c.lwsp	zero,000001F4
	c.swsp	a3,0000008C
	c.lwsp	s0,000001B4
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a3,00000010

l23015BF4:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,000230AD
	addi	a0,a0,+000004D4
	jal	ra,0000000023082388
	c.addi4spn	a0,00000004
	jal	ra,0000000023008060
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23015C26:
	c.li	a5,0000000D
	bne	s0,a5,0000000023015C30

l23015C2C:
	c.li	a5,00000003
	c.j	0000000023015B90

l23015C30:
	c.li	a5,00000005
	bne	s0,a5,0000000023015C3C

l23015C36:
	sb	zero,sp,+0000002C
	c.j	0000000023015BF4

l23015C3C:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000783
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	ra,0000000023001234
	c.j	0000000023015BF4

;; keyMgmtKeyGroupTxDone.isra.1: 23015C56
;;   Called from:
;;     23015D64 (in GenerateGrpMsg2)
;;     2301607A (in GeneratePWKMsg4)
keyMgmtKeyGroupTxDone.isra.1 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s1,+00000480
	jal	ra,000000002301F3D6
	c.lw	s0,0(s0)
	addi	a5,zero,+000000FF
	lbu	a0,s0,+00000003
	beq	a0,a5,0000000023015C96

l23015C92:
	jal	ra,0000000023008190

l23015C96:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023015B2A
	c.lw	s0,8(a5)
	sb	a0,s0,+00000003
	c.li	a4,00000001
	sw	a4,a5,+000000C8
	c.lw	s0,8(a5)
	lw	a3,a5,+000000CC
	c.bnez	a3,0000000023015CC0

l23015CB2:
	sw	a4,a5,+000000CC
	lbu	a0,s0,+00000001
	c.li	a1,00000000
	jal	ra,000000002301273A

l23015CC0:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s1,+00000480
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GenerateGrpMsg2: 23015CEC
;;   Called from:
;;     23015E06 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
GenerateGrpMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+00000330
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	lw	s6,s0,+00000008
	jal	ra,000000002301519C
	c.beqz	a0,0000000023015D9E

l23015D3A:
	lw	a2,s4,+00000008
	c.mv	s0,a0
	c.lwsp	t3,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023016F58
	c.lwsp	t3,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s5,+00000040
	jal	ra,0000000023016AFA
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,0000000023015C56
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,0000000023015230
	lw	a1,s3,+00000120
	lui	a0,000230AD
	addi	a0,a0,+00000268
	srl	a1,a1,s1
	addi	a2,s2,+00000330
	jal	ra,000000002301F3D6
	c.li	a0,00000000

l23015D8A:
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

l23015D9E:
	c.li	a0,00000001
	c.j	0000000023015D8A

;; KeyMgmtStaHsk_Recvd_GrpMsg1: 23015DA2
;;   Called from:
;;     230161FA (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_GrpMsg1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(a5)
	srl	a1,a1,s3
	c.mv	s2,a0
	c.lw	a5,8(s0)
	lui	s4,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s4,+00000378
	addi	s0,s0,+00000054
	jal	ra,000000002301F3D6
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023017716
	c.bnez	a0,0000000023015E00

l23015DEA:
	c.li	s1,00000000

l23015DEC:
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

l23015E00:
	c.mv	s1,a0
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023015CEC
	c.bnez	a0,0000000023015DEA

l23015E0C:
	addi	a1,s1,+00000009
	c.mv	a0,s0
	jal	ra,00000000230168FE
	lw	a1,s5,+00000120
	lui	a0,000230AD
	addi	a2,s4,+00000378
	srl	a1,a1,s3
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	0000000023015DEC

;; add_mfp_key_to_mac: 23015E30
;;   Called from:
;;     23015F30 (in keyMgmtPlumbPairwiseKey)
add_mfp_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.swsp	s2,00000018
	c.mv	s2,a1
	jal	ra,0000000023015AC0
	andi	s1,a0,+000000FF
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lbu	a5,s0,+00000002
	sb	s1,sp,+00000008
	sb	a5,sp,+0000002D
	c.li	a5,00000005
	sb	a5,sp,+0000002C
	addi	a5,zero,-000000FC
	sh	a5,sp,+00000004
	lbu	a5,s0,+00000000
	beq	s2,zero,0000000023015EC8

l23015E74:
	c.bnez	a5,0000000023015E84

l23015E76:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+000000D8

l23015E7E:
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C

l23015E84:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,000230AD
	addi	a0,a0,+00000520
	jal	ra,0000000023082388
	c.addi4spn	a0,00000004
	jal	ra,0000000023008060
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,000230AD
	addi	a0,a0,+00000570
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23015EC8:
	c.bnez	a5,0000000023015E84

l23015ECA:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+00000100
	c.j	0000000023015E7E

;; keyMgmtPlumbPairwiseKey: 23015ED4
;;   Called from:
;;     23015F98 (in keyMgmtKeyPairwiseTxDone.isra.2)
keyMgmtPlumbPairwiseKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+00000468
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.lw	s0,8(a0)
	addi	a2,zero,+00000028
	addi	a1,a0,+00000128
	addi	a0,a0,+000000D8
	jal	ra,00000000230A382C
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023015B2A
	c.lw	s0,8(a5)
	sb	a0,s0,+00000004
	lbu	a4,a5,+0000003D
	c.li	a5,00000006
	bne	a4,a5,0000000023015F38

l23015F2C:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023015E30
	sb	a0,s0,+00000005

l23015F38:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s0,00000004
	srl	a1,a1,a5
	c.lwsp	a2,00000020
	addi	a2,s1,+00000468
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; keyMgmtKeyPairwiseTxDone.isra.2: 23015F60
;;   Called from:
;;     23016074 (in GeneratePWKMsg4)
;;     230160CC (in GeneratePWKMsg4)
keyMgmtKeyPairwiseTxDone.isra.2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AD
	srl	a1,a1,s0
	c.mv	s3,a0
	lui	a0,000230AD
	addi	a2,s1,+00000498
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	s3,s3,+00000000
	c.mv	a0,s3
	jal	ra,0000000023015ED4
	lw	a5,s3,+00000008
	c.li	a4,00000001
	lui	a0,000230AD
	sw	a4,a5,+000000D0
	lw	a1,s2,+00000120
	addi	a2,s1,+00000498
	addi	a0,a0,+00000268
	srl	a1,a1,s0
	jal	ra,000000002301F3D6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; GeneratePWKMsg4: 23015FCE
;;   Called from:
;;     2301612E (in KeyMgmtStaHsk_Recvd_PWKMsg3)
GeneratePWKMsg4 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	lui	s2,00044B00
	c.mv	s8,a1
	lw	a1,s2,+00000120
	addi	s1,zero,+000003E8
	lui	s6,000230AD
	srl	a1,a1,s1
	lui	s5,000230AD
	c.mv	s0,a0
	c.mv	s7,a2
	addi	a0,s5,+00000254
	addi	a2,s6,+00000320
	jal	ra,000000002301F3D6
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	lw	s9,s0,+00000008
	jal	ra,000000002301519C
	c.beqz	a0,00000000230160D2

l23016024:
	lw	a2,s4,+00000008
	c.mv	s3,a0
	c.lwsp	a2,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s9
	addi	a2,a2,+00000026
	jal	ra,0000000023016F58
	c.lwsp	a2,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s8,+00000040
	jal	ra,0000000023016AFA
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,0000000023015230
	lui	s3,000230AD
	beq	s7,zero,00000000230160CA

l2301605A:
	lw	a1,s2,+00000120
	lui	s4,000230AD
	addi	a2,s4,+000004B4
	srl	a1,a1,s1
	addi	a0,s5,+00000254
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	jal	ra,0000000023015F60
	c.mv	a0,s0
	jal	ra,0000000023015C56
	lw	a1,s2,+00000120
	addi	a2,s4,+000004B4
	addi	a0,s3,+00000268
	srl	a1,a1,s1
	jal	ra,000000002301F3D6

l23016092:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s3,+00000268
	srl	a1,a1,a5
	addi	a2,s6,+00000320
	jal	ra,000000002301F3D6
	c.li	a0,00000000

l230160B0:
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

l230160CA:
	c.mv	a0,s0
	jal	ra,0000000023015F60
	c.j	0000000023016092

l230160D2:
	c.li	a0,00000001
	c.j	00000000230160B0

;; KeyMgmtStaHsk_Recvd_PWKMsg3: 230160D6
;;   Called from:
;;     230161BA (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s0,0000000C
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(s0)
	srl	a1,a1,s3
	c.mv	s2,a0
	lui	s4,000230AD
	lui	a0,000230AD
	addi	a2,s4,+0000035C
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.lw	s0,8(s1)
	c.mv	a0,s2
	addi	s1,s1,+00000054
	c.mv	a1,s1
	jal	ra,0000000023017658
	c.mv	s0,a0
	c.beqz	a0,0000000023016158

l23016120:
	lbu	a2,a0,+00000004
	c.mv	a1,s1
	c.mv	a0,s2
	c.addi	a2,FFFFFFFE
	sltiu	a2,a2,+00000001
	jal	ra,0000000023015FCE
	c.bnez	a0,0000000023016158

l23016134:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,00000000230168FE
	lw	a1,s5,+00000120
	lui	a0,000230AD
	addi	a2,s4,+0000035C
	srl	a1,a1,s3
	addi	a0,a0,+00000268
	c.li	s0,00000000
	jal	ra,000000002301F3D6

l23016158:
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

;; ProcessKeyMgmtDataSta: 2301616C
;;   Called from:
;;     230162D0 (in ProcessEAPoLPkt)
ProcessKeyMgmtDataSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000008
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	s0,000230AD
	lui	a0,000230AD
	c.mv	s4,a2
	addi	a0,a0,+00000254
	addi	a2,s0,+00000394
	jal	ra,000000002301F3D6
	lbu	a5,s2,+00000006
	c.andi	a5,00000008
	c.beqz	a5,00000000230161F8

l230161B0:
	lbu	a5,s2,+00000005
	c.andi	a5,00000001
	c.beqz	a5,00000000230161EC

l230161B8:
	c.mv	a0,s1
	jal	ra,00000000230160D6

l230161BE:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+00000394
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l230161EC:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023015882
	c.j	00000000230161BE

l230161F8:
	c.mv	a0,s1
	jal	ra,0000000023015DA2
	c.j	00000000230161BE

;; ProcessEAPoLPkt: 23016200
;;   Called from:
;;     23010540 (in rxu_cntrl_frame_handle)
ProcessEAPoLPkt proc
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
	lui	s0,00044B00
	c.mv	s6,a1
	lw	a1,s0,+00000120
	addi	s3,zero,+000003E8
	lui	s4,000230AD
	srl	a1,a1,s3
	lui	s2,000230AD
	c.mv	s1,a0
	c.mv	s7,a2
	addi	a0,s2,+00000254
	addi	a2,s4,+00000290
	lui	s5,000230AD
	jal	ra,000000002301F3D6
	c.lw	s1,8(a5)
	lbu	a4,a5,+00000001
	c.li	a5,00000003
	bne	a4,a5,00000000230162D6

l2301624E:
	lw	a1,s0,+00000120
	lui	s0,000230AD
	addi	a2,s0,+0000027C
	srl	a1,a1,s3
	addi	a0,s2,+00000254
	jal	ra,000000002301F3D6
	c.lw	s1,0(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000002
	bne	a4,a5,00000000230162CA

l23016272:
	c.mv	a0,s1
	jal	ra,0000000023018D78

l23016278:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+0000027C
	srl	a1,a1,a5
	addi	a0,s5,+00000268
	c.li	s0,00000001
	jal	ra,000000002301F3D6

l23016296:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s5,+00000268
	srl	a1,a1,a5
	addi	a2,s4,+00000290
	jal	ra,000000002301F3D6
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

l230162CA:
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s1
	jal	ra,000000002301616C
	c.j	0000000023016278

l230162D6:
	c.li	s0,00000000
	c.j	0000000023016296

;; process_rsn_ie: 230162DA
;;   Called from:
;;     230110F2 (in scanu_frame_handler)
;;     230237D6 (in bl_rx_scanu_result_ind)
process_rsn_ie proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s7,a5
	lbu	a5,a0,+00000009
	c.mv	s2,a4
	lbu	a4,a0,+00000008
	c.slli	a5,08
	c.mv	s0,a0
	c.or	a5,a4
	c.li	a4,00000002
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s8,a3
	addi	s4,a0,+0000000E
	addi	s6,a0,+0000000A
	bne	a5,a4,0000000023016358

l2301631C:
	lbu	a5,a0,+00000001
	lui	a1,000230CC
	sb	zero,a0,+00000009
	c.addi	a5,FFFFFFFC
	sb	a5,a0,+00000001
	c.li	a5,00000001
	sb	a5,a0,+00000008
	c.li	a2,00000004
	addi	a1,a1,-0000075C
	c.mv	a0,s4
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301634C

l23016342:
	c.li	a2,00000004
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,00000000230A382C

l2301634C:
	c.li	a2,0000000C
	addi	a1,s0,+00000012
	c.mv	a0,s4
	jal	ra,00000000230A382C

l23016358:
	c.li	a2,00000002
	c.mv	a1,s4
	addi	a0,sp,+0000000E
	jal	ra,00000000230A382C
	c.li	a5,00000000
	lui	s9,000230CC
	lui	s10,000230CC

l2301636E:
	lhu	a4,sp,+0000000E
	bltu	a5,a4,000000002301647C

l23016376:
	c.li	a5,00000002
	bne	a4,a5,00000000230163C6

l2301637C:
	c.li	a5,00000014
	sb	a5,s0,+00000001
	c.li	a2,00000002
	c.li	a5,00000001
	addi	a1,sp,+0000000E
	c.mv	a0,s4
	sh	a5,sp,+0000000E
	jal	ra,00000000230A382C
	addi	s3,s0,+00000014
	c.li	a2,00000004
	beq	s7,zero,00000000230164C4

l2301639E:
	lui	a1,000230CC
	addi	a1,a1,-00000760

l230163A6:
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230163BA

l230163AE:
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+00000010
	jal	ra,00000000230A382C

l230163BA:
	c.li	a2,00000002
	addi	a1,s0,+00000018
	c.mv	a0,s3
	jal	ra,00000000230A382C

l230163C6:
	lbu	a5,s2,+00000001
	c.andi	a5,00000001
	c.beqz	a5,0000000023016418

l230163CE:
	lbu	a5,s2,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230163DC

l230163D8:
	bne	s7,zero,0000000023016418

l230163DC:
	c.li	a5,00000001
	sb	a5,s8,+00000000
	addi	a5,zero,-00000040
	sb	a5,s0,+00000014
	lbu	a5,s0,+00000001
	lui	a1,000230CC
	sb	zero,s0,+00000016
	c.addi	a5,00000002
	sb	a5,s0,+00000001
	sb	zero,s0,+00000017
	c.li	a2,00000004
	addi	a1,a1,-00000754
	addi	a0,s0,+00000018
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000001
	c.addi	a5,00000004
	sb	a5,s0,+00000001

l23016418:
	lui	s3,000230CC
	c.li	a2,00000004
	addi	a1,s3,-0000075C
	c.mv	a0,s6
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230164CE

l2301642A:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000008

l23016432:
	sb	a5,s5,+00000000

l23016436:
	addi	s2,s0,+00000004
	c.li	a2,00000004
	addi	a1,s3,-0000075C
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230164EA

l23016448:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l23016450:
	sb	a5,s1,+00000000

l23016454:
	lbu	a0,s0,+00000001
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi	a0,00000002
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
	andi	a0,a0,+000000FF
	c.addi16sp	00000050
	c.jr	ra

l2301647C:
	addi	s3,a5,+00000001
	slli	s11,s3,00000002
	c.addi	s11,00000002
	c.add	s11,s6
	c.li	a2,00000004
	addi	a1,s9,-00000760
	c.mv	a0,s11
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230164A8

l23016496:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000020
	sb	a5,s2,+00000000

l230164A2:
	andi	a5,s3,+000000FF
	c.j	000000002301636E

l230164A8:
	c.li	a2,00000004
	addi	a1,s10,-00000750
	c.mv	a0,s11
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230164A2

l230164B6:
	lbu	a5,s2,+00000001
	ori	a5,a5,+00000001
	sb	a5,s2,+00000001
	c.j	00000000230164A2

l230164C4:
	lui	a1,000230CC
	addi	a1,a1,-00000750
	c.j	00000000230163A6

l230164CE:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000760
	c.mv	a0,s6
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016436

l230164E0:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023016432

l230164EA:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000760
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016506

l230164FC:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023016450

l23016506:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000758
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016522

l23016518:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	0000000023016450

l23016522:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000764
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016454

l23016534:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	0000000023016450

;; process_wpa_ie: 2301653E
;;   Called from:
;;     230111A2 (in scanu_frame_handler)
;;     2302381C (in bl_rx_scanu_result_ind)
process_wpa_ie proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s5,00000080
	lbu	a5,a0,+0000000D
	lbu	a4,a0,+0000000C
	c.mv	s0,a0
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000002
	c.mv	s1,a1
	c.mv	s2,a2
	addi	s4,a0,+0000000E
	lui	s3,000230CC
	bne	a5,a4,00000000230165A6

l2301656E:
	c.li	a5,00000016
	sb	a5,a0,+00000001
	addi	s5,a0,+00000012
	c.li	a5,00000001
	sb	a5,a0,+0000000C
	sb	zero,a0,+0000000D
	c.li	a2,00000004
	addi	a1,s3,-00000740
	c.mv	a0,s5
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301659A

l23016590:
	c.li	a2,00000004
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230A382C

l2301659A:
	c.li	a2,00000008
	addi	a1,s0,+00000016
	c.mv	a0,s5
	jal	ra,00000000230A382C

l230165A6:
	c.li	a2,00000004
	addi	a1,s3,-00000740
	c.mv	a0,s4
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230165FA

l230165B4:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000008

l230165BC:
	sb	a5,s2,+00000000

l230165C0:
	addi	s2,s0,+00000008
	c.li	a2,00000004
	addi	a1,s3,-00000740
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016616

l230165D2:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l230165DA:
	sb	a5,s1,+00000000

l230165DE:
	lbu	a0,s0,+00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi	a0,00000002
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	andi	a0,a0,+000000FF
	c.addi16sp	00000020
	c.jr	ra

l230165FA:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000744
	c.mv	a0,s4
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230165C0

l2301660C:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000004
	c.j	00000000230165BC

l23016616:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000744
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016632

l23016628:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	00000000230165DA

l23016632:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-0000073C
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301664E

l23016644:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	00000000230165DA

l2301664E:
	lui	a1,000230CC
	c.li	a2,00000004
	addi	a1,a1,-00000748
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230165DE

l23016660:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	00000000230165DA

;; keyMgmtStaRsnSecuredTimeoutHandler: 2301666A
keyMgmtStaRsnSecuredTimeoutHandler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	addi	a2,s0,+000007E8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.beqz	s1,00000000230166AC

l2301669A:
	c.lw	s1,120(a5)
	c.bnez	a5,00000000230166AC

l2301669E:
	lw	a5,s1,+00000118
	c.li	a1,0000000F
	lbu	a0,a5,+00000001
	jal	ra,000000002301273A

l230166AC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000007E8
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; supplicantGenerateRand: 230166D4
;;   Called from:
;;     23017622 (in GetKeyMsgNonceFromEAPOL)
;;     23018A76 (in GeneratePWKMsg1)
;;     23018F28 (in GenerateGTK_internal)
;;     23018F40 (in GenerateGTK_internal)
supplicantGenerateRand proc
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
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+00000598
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,0000000023065B90
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,+00000598
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; ComputeEAPOL_MIC: 23016738
;;   Called from:
;;     23016ABA (in IsEAPOL_MICValid)
;;     23016B9E (in KeyMgmtSta_PopulateEAPOLLengthMic)
ComputeEAPOL_MIC proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000004
	c.swsp	a0,00000084
	c.mv	a7,a2
	c.bnez	a4,000000002301674A

l23016744:
	lbu	a4,a0,+00000006
	c.andi	a4,00000007

l2301674A:
	c.li	a2,00000001
	addi	a5,a0,+00000051
	beq	a4,a2,0000000023016768

l23016754:
	c.li	a2,00000002
	beq	a4,a2,0000000023016776

l2301675A:
	c.mv	a2,a1
	c.mv	a3,a5
	c.mv	a1,a0
	c.mv	a0,a7
	jal	ra,000000002301F6B8
	c.j	0000000023016770

l23016768:
	c.mv	a4,a5
	c.mv	a2,a7
	jal	ra,000000002301FA44

l23016770:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23016776:
	c.mv	a4,a3
	c.li	a6,00000010
	c.mv	a3,a7
	c.li	a2,00000001
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,000000002301FB64
	c.j	0000000023016770

;; keyMgmtGetKeySize_internal: 23016788
;;   Called from:
;;     23015B26 (in keyMgmtGetKeySize)
keyMgmtGetKeySize_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s0,000230AD
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,000230AD
	addi	a2,s0,+000005B0
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.mv	a2,s0
	beq	s2,zero,00000000230167FC

l230167C0:
	lbu	a5,s1,+00000004
	addi	s0,zero,+00000020
	c.andi	a5,00000008
	c.beqz	a5,00000000230167CE

l230167CC:
	c.li	s0,00000010

l230167CE:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	addi	a2,a2,+000005B0
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230167FC:
	lbu	a5,s1,+00000003
	c.li	s0,00000010
	andi	a4,a5,+00000008
	c.bnez	a4,00000000230167CE

l23016808:
	andi	a4,a5,+00000002
	c.li	s0,0000000D
	c.bnez	a4,00000000230167CE

l23016810:
	c.andi	a5,00000001
	addi	s0,zero,+00000020
	c.beqz	a5,00000000230167CE

l23016818:
	c.li	s0,00000005
	c.j	00000000230167CE

;; isApReplayCounterFresh: 2301681C
;;   Called from:
;;     23016EFE (in KeyMgmtSta_IsRxEAPOLValid)
isApReplayCounterFresh proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s0,000230AD
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,000230AD
	addi	a2,s0,+000005CC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.lwsp	s0,000000C4
	lui	a6,00000FF0
	slli	a3,a4,00000018
	srli	a5,a4,00000018
	slli	a2,a4,00000008
	srli	a1,a4,00000008
	c.lui	a4,00010000
	and	a2,a2,a6
	c.add	a3,a5
	addi	a0,a4,-00000100
	c.add	a3,a2
	c.and	a1,a0
	c.add	a3,a1
	c.lw	s1,100(a1)
	c.mv	a2,s0
	c.li	s0,00000001
	bltu	a1,a3,00000000230168D0

l23016896:
	c.li	s0,00000000
	bne	a1,a3,00000000230168D0

l2301689C:
	c.lwsp	a2,000000C4
	c.li	s0,00000001
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.add	a5,a3
	slli	a3,a4,00000008
	and	a3,a3,a6
	c.srli	a4,00000008
	c.and	a4,a0
	c.add	a5,a3
	c.add	a5,a4
	c.lw	s1,96(a4)
	bltu	a4,a5,00000000230168D0

l230168C0:
	c.li	s0,00000000
	bne	a4,a5,00000000230168D0

l230168C6:
	c.or	a1,a4
	c.bnez	a1,00000000230168D0

l230168CA:
	c.lw	s1,104(s0)
	sltiu	s0,s0,+00000001

l230168D0:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	addi	a2,a2,+000005CC
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; updateApReplayCounter: 230168FE
;;   Called from:
;;     23015970 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23015E12 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     2301613A (in KeyMgmtStaHsk_Recvd_PWKMsg3)
updateApReplayCounter proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	addi	a2,s0,+000005E4
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.lwsp	s0,000000A4
	lui	a0,00000FF0
	srli	a4,a3,00000018
	slli	a5,a3,00000018
	slli	a2,a3,00000008
	c.add	a5,a4
	c.and	a2,a0
	srli	a1,a3,00000008
	c.lui	a3,00010000
	c.add	a5,a2
	addi	a2,a3,-00000100
	c.lwsp	a2,000000A4
	c.and	a1,a2
	c.add	a5,a1
	slli	a4,a3,00000018
	srli	a1,a3,00000018
	c.add	a4,a1
	slli	a1,a3,00000008
	c.and	a1,a0
	c.srli	a3,00000008
	c.add	a4,a1
	c.and	a3,a2
	c.add	a4,a3
	c.sw	s1,100(a5)
	c.sw	s1,96(a4)
	c.or	a5,a4
	c.bnez	a5,0000000023016992

l2301698E:
	c.li	a5,00000001
	c.sw	s1,104(a5)

l23016992:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s0,+000005E4
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; formEAPOLEthHdr: 230169BE
;;   Called from:
;;     23016FB0 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230189F8 (in PrepDefaultEapolMsg)
formEAPOLEthHdr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s4,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+000005FC
	jal	ra,000000002301F3D6
	c.mv	a1,s5
	c.li	a2,00000006
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.mv	a1,s4
	c.li	a2,00000006
	addi	a0,s0,+00000006
	jal	ra,00000000230A382C
	addi	a5,zero,-00000078
	sb	a5,s0,+0000000C
	addi	a5,zero,-00000072
	sb	a5,s0,+0000000D
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s2,+000005FC
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; IsEAPOL_MICValid: 23016A46
;;   Called from:
;;     23016F3E (in KeyMgmtSta_IsRxEAPOLValid)
;;     23018BEC (in ProcessPWKMsg4)
;;     23018D10 (in ProcessPWKMsg2)
IsEAPOL_MICValid proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lui	s4,00044B00
	c.mv	s5,a1
	lw	a1,s4,+00000120
	addi	s2,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s2
	lui	s3,000230AD
	lui	a0,000230AD
	addi	a2,s3,+0000060C
	addi	a0,a0,+00000254
	addi	s1,s0,+00000051
	jal	ra,000000002301F3D6
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	lbu	a5,s0,+00000003
	lbu	a1,s0,+00000002
	c.mv	a2,s5
	c.slli	a5,08
	c.or	a5,a1
	slli	a1,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a1
	addi	a1,a5,+00000004
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s0
	c.li	a4,00000000
	c.li	a3,00000010
	jal	ra,0000000023016738
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023016AF6

l23016ACA:
	lw	a1,s4,+00000120
	lui	a0,000230AD
	addi	a0,a0,+00000268
	srl	a1,a1,s2
	addi	a2,s3,+0000060C
	jal	ra,000000002301F3D6
	c.li	a0,00000001

l23016AE4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23016AF6:
	c.li	a0,00000000
	c.j	0000000023016AE4

;; KeyMgmtSta_PopulateEAPOLLengthMic: 23016AFA
;;   Called from:
;;     2301583C (in GeneratePWKMsg2)
;;     23015D5C (in GenerateGrpMsg2)
;;     23016046 (in GeneratePWKMsg4)
;;     23018BB0 (in GeneratePWKMsg3)
KeyMgmtSta_PopulateEAPOLLengthMic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	a3,00000084
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s6,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+00000620
	c.li	s4,00000000
	jal	ra,000000002301F3D6
	c.beqz	s0,0000000023016BBA

l23016B3C:
	lbu	a1,s0,+00000070
	lbu	a5,s0,+0000006F
	c.lwsp	a2,000000C4
	c.slli	a1,08
	c.or	a1,a5
	addi	s4,a1,+0000005F
	c.slli	s4,10
	srli	s4,s4,00000010
	c.li	a5,00000003
	sb	a5,s0,+0000000F
	srli	a3,s4,00000008
	slli	a5,s4,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000010
	c.srli	a5,00000008
	srli	a3,a1,00000008
	sb	a5,s0,+00000011
	slli	a5,a1,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a1,a1,+00000063
	sb	a5,s0,+0000006F
	c.slli	a1,10
	c.srli	a5,00000008
	c.mv	a2,s5
	c.srli	a1,00000010
	addi	a0,s0,+0000000E
	sb	s6,s0,+0000000E
	sb	a5,s0,+00000070
	c.li	a3,00000010
	jal	ra,0000000023016738
	lw	a1,s3,+00000120
	lui	a0,000230AD
	addi	a2,s2,+00000620
	srl	a1,a1,s1
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6

l23016BBA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s4
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

;; parseKeyKDE: 23016BD0
;;   Called from:
;;     23016CEA (in parseKeyKDE_DataType)
parseKeyKDE proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+00000644
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lbu	a4,s0,+00000000
	addi	a5,zero,+000000DD
	beq	a4,a5,0000000023016C38

l23016C0A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s1,+00000644
	addi	a0,a0,+00000268
	c.li	s0,00000000
	jal	ra,000000002301F3D6

l23016C2C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23016C38:
	lbu	a4,s0,+00000001
	c.li	a5,00000007
	bgeu	a5,a4,0000000023016C0A

l23016C42:
	lui	a1,000230CC
	c.li	a2,00000003
	addi	a1,a1,-00000768
	addi	a0,s0,+00000002
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023016C2C

l23016C56:
	c.j	0000000023016C0A

;; parseKeyKDE_DataType: 23016C58
;;   Called from:
;;     23016D4E (in parseKeyDataGTK)
parseKeyKDE_DataType proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s5,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+00000650
	jal	ra,000000002301F3D6
	c.beqz	s0,0000000023016CC8

l23016C98:
	c.mv	s1,s0
	c.li	s4,00000002
	addi	s6,zero,+000000DD
	c.li	s7,FFFFFFFE

l23016CA2:
	blt	s4,s3,0000000023016CE0

l23016CA6:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s2,+00000650
	addi	a0,a0,+00000268
	c.li	s0,00000000
	jal	ra,000000002301F3D6

l23016CC8:
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

l23016CE0:
	lbu	a5,s1,+00000000
	bne	a5,s6,0000000023016D02

l23016CE8:
	c.mv	a0,s1
	jal	ra,0000000023016BD0
	c.mv	s0,a0
	c.beqz	a0,0000000023016CFA

l23016CF2:
	lbu	a5,a0,+00000005
	beq	a5,s5,0000000023016CC8

l23016CFA:
	lbu	a5,s1,+00000001
	c.bnez	a5,0000000023016D02

l23016D00:
	c.li	s3,00000002

l23016D02:
	lbu	a5,s1,+00000001
	sub	a4,s7,a5
	c.addi	a5,00000002
	c.add	s3,a4
	c.add	s1,a5
	c.j	0000000023016CA2

;; parseKeyDataGTK: 23016D12
;;   Called from:
;;     230176F0 (in ProcessRxEAPOL_PwkMsg3)
;;     230177A0 (in ProcessRxEAPOL_GrpMsg1)
parseKeyDataGTK proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s0,a2
	addi	a2,s2,+00000668
	jal	ra,000000002301F3D6
	c.mv	a0,s1
	c.li	a2,00000001
	c.mv	a1,s3
	jal	ra,0000000023016C58
	c.mv	s1,a0
	c.beqz	a0,0000000023016D94

l23016D56:
	lbu	a2,a0,+00000001
	addi	a1,a0,+00000008
	c.mv	a0,s0
	c.addi	a2,FFFFFFFA
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000006
	addi	s3,s0,+00000018
	c.li	a2,00000008
	c.andi	a5,00000003
	sh	a5,s0,+00000026
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.addi	s0,00000010
	c.li	a2,00000008
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,00000000230A382C

l23016D94:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s2,+00000668
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; KeyMgmtSta_ApplyKEK: 23016DC4
;;   Called from:
;;     230176D0 (in ProcessRxEAPOL_PwkMsg3)
;;     23017772 (in ProcessRxEAPOL_GrpMsg1)
KeyMgmtSta_ApplyKEK proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	c.mv	s3,a2
	addi	a0,a0,+00000254
	addi	a2,s1,+00000678
	jal	ra,000000002301F3D6
	lbu	a5,s0,+00000042
	c.li	a2,00000001
	addi	a3,s0,+00000063
	c.slli	a5,08
	sh	a5,s2,+00000024
	lbu	a4,s0,+00000041
	c.or	a5,a4
	sh	a5,s2,+00000024
	c.li	a5,FFFFFFFF
	sw	a5,s2,+00000020
	lbu	a5,s0,+00000062
	lbu	a4,s0,+00000061
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	srli	a5,a4,00000008
	sb	a5,s0,+00000062
	lbu	a5,s0,+00000006
	sb	a4,s0,+00000061
	c.andi	a5,00000007
	bne	a5,a2,0000000023016E84

l23016E48:
	addi	a5,zero,+00000100
	c.li	a2,00000010
	addi	a1,s0,+00000031
	c.mv	a0,s3
	jal	ra,0000000023018306

l23016E58:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,s1,+00000678
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l23016E84:
	srli	a2,a4,00000003
	c.mv	a5,a3
	c.li	a4,00000000
	c.addi	a2,FFFFFFFF
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,000000002301F918
	lbu	a5,s0,+00000062
	lbu	a4,s0,+00000061
	c.slli	a5,08
	c.or	a5,a4
	c.addi	a5,FFFFFFF8
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000061
	c.srli	a5,00000008
	sb	a5,s0,+00000062
	c.j	0000000023016E58

;; KeyMgmtSta_IsRxEAPOLValid: 23016EB4
;;   Called from:
;;     230175FE (in GetKeyMsgNonceFromEAPOL)
KeyMgmtSta_IsRxEAPOLValid proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s0,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+0000068C
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.bnez	s1,0000000023016EF6

l23016EE8:
	c.li	a0,00000000

l23016EEA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23016EF6:
	c.beqz	s0,0000000023016EE8

l23016EF8:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,000000002301681C
	c.beqz	a0,0000000023016EE8

l23016F04:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023016F30

l23016F0C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	addi	a2,s2,+0000068C
	jal	ra,000000002301F3D6
	c.li	a0,00000001
	c.j	0000000023016EEA

l23016F30:
	lbu	a5,s0,+00000006
	c.andi	a5,00000008
	c.bnez	a5,0000000023016F46

l23016F38:
	addi	a1,s1,+00000040
	c.mv	a0,s0
	jal	ra,0000000023016A46
	c.bnez	a0,0000000023016F0C

l23016F44:
	c.j	0000000023016EE8

l23016F46:
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,s0,+00000011
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023016F38

l23016F56:
	c.j	0000000023016EE8

;; KeyMgmtSta_PrepareEAPOLFrame: 23016F58
;;   Called from:
;;     23015802 (in GeneratePWKMsg2)
;;     23015D4E (in GenerateGrpMsg2)
;;     23016038 (in GeneratePWKMsg4)
KeyMgmtSta_PrepareEAPOLFrame proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s1,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s4,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+000006A8
	c.mv	s5,a3
	c.mv	s3,a4
	jal	ra,000000002301F3D6
	beq	s0,zero,00000000230170A6

l23016F9A:
	beq	s1,zero,00000000230170A6

l23016F9E:
	addi	a2,zero,+00000072
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230169BE
	lbu	a5,s1,+00000004
	sb	a5,s0,+00000012
	lbu	a5,s1,+00000006
	andi	a4,a5,+00000008
	lbu	a5,s0,+00000014
	c.andi	a5,FFFFFFF7
	c.or	a5,a4
	lbu	a4,s0,+00000013
	sb	a5,s0,+00000014
	c.andi	a5,FFFFFFF8
	ori	a4,a4,+00000001
	sb	a4,s0,+00000013
	lbu	a3,s1,+00000005
	c.andi	a4,FFFFFFFD
	c.andi	a3,00000002
	c.or	a4,a3
	sb	a4,s0,+00000013
	lbu	a4,s1,+0000000A
	lbu	a3,s1,+00000009
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,s1,+0000000B
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,s1,+0000000C
	c.slli	a3,18
	c.or	a3,a4
	srli	a4,a3,00000008
	sb	a3,s0,+00000017
	sb	a4,s0,+00000018
	srli	a4,a3,00000010
	c.srli	a3,00000018
	sb	a4,s0,+00000019
	sb	a3,s0,+0000001A
	lbu	a4,s1,+0000000E
	lbu	a3,s1,+0000000D
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,s1,+0000000F
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,s1,+00000010
	c.slli	a3,18
	c.or	a3,a4
	srli	a4,a3,00000008
	sb	a3,s0,+0000001B
	sb	a4,s0,+0000001C
	srli	a4,a3,00000010
	c.srli	a3,00000018
	sb	a4,s0,+0000001D
	sb	a3,s0,+0000001E
	lbu	a4,s1,+00000006
	c.andi	a4,00000007
	c.or	a5,a4
	sb	a5,s0,+00000014
	beq	s3,zero,0000000023017076

l23017068:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+0000001F
	jal	ra,00000000230A382C

l23017076:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s2,+000006A8
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l230170A6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; supplicantAkmIsWpaWpa2: 230170B8
;;   Called from:
;;     230158FE (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     230171E0 (in supplicantAkmIsWpaWpa2Psk)
supplicantAkmIsWpaWpa2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+000006C8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lui	a1,000230CC
	c.li	a2,00000003
	addi	a1,a1,-0000074C
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301710C

l230170FC:
	c.li	a0,00000001

l230170FE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301710C:
	lui	a1,000230CC
	c.li	a2,00000003
	addi	a1,a1,-00000768
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230170FC

l2301711E:
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a0,a0,+00000268
	srl	a1,a1,s0
	addi	a2,s1,+000006C8
	jal	ra,000000002301F3D6
	c.li	a0,00000000
	c.j	00000000230170FE

;; supplicantAkmIsWpa2: 2301713A
;;   Called from:
;;     2301725C (in supplicantAkmUsesKdf)
supplicantAkmIsWpa2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a2,s1,+000006E0
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lui	a1,000230CC
	c.li	a2,00000003
	addi	a1,a1,-00000768
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230171A6

l2301717E:
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a0,a0,+00000268
	srl	a1,a1,s0
	addi	a2,s1,+000006E0
	jal	ra,000000002301F3D6
	c.li	a0,00000000

l23017198:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230171A6:
	c.li	a0,00000001
	c.j	0000000023017198

;; supplicantAkmIsWpaWpa2Psk: 230171AA
;;   Called from:
;;     2301590E (in KeyMgmtStaHsk_Recvd_PWKMsg1)
supplicantAkmIsWpaWpa2Psk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s2,+000006F4
	jal	ra,000000002301F3D6
	c.mv	a0,s4
	jal	ra,00000000230170B8
	c.beqz	a0,0000000023017210

l230171E6:
	lbu	a5,s4,+00000003
	c.li	a4,00000002
	c.li	s0,00000001
	andi	a3,a5,+000000FB
	beq	a3,a4,00000000230171FE

l230171F6:
	addi	s0,a5,-00000004
	sltiu	s0,s0,+00000001

l230171FE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23017210:
	lw	a1,s3,+00000120
	c.mv	s0,a0
	lui	a0,000230AD
	srl	a1,a1,s1
	addi	a2,s2,+000006F4
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	00000000230171FE

;; supplicantAkmUsesKdf: 2301722C
;;   Called from:
;;     2301592E (in KeyMgmtStaHsk_Recvd_PWKMsg1)
supplicantAkmUsesKdf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s0,+00000710
	jal	ra,000000002301F3D6
	c.mv	a0,s1
	jal	ra,000000002301713A
	c.beqz	a0,0000000023017274

l23017262:
	lbu	a5,s1,+00000003
	c.li	a4,00000003
	c.li	a0,00000001
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023017296

l23017274:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a0,a0,+00000268
	addi	a2,s0,+00000710
	jal	ra,000000002301F3D6
	c.li	a0,00000000

l23017296:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; supplicantConstructContext: 230172A0
;;   Called from:
;;     230173D8 (in KeyMgmt_DerivePTK)
supplicantConstructContext proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s2,a2
	addi	a2,s1,+00000728
	c.mv	s0,a4
	c.mv	s3,a3
	addi	s6,s0,+00000006
	jal	ra,000000002301F3D6
	c.li	a2,00000006
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230A37A4
	c.li	a2,00000006
	bge	a0,zero,0000000023017368

l230172F4:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s5

l23017300:
	c.mv	a0,s6
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	addi	a5,s0,+0000000C
	addi	a2,zero,+00000020
	addi	s0,s0,+0000002C
	bge	a0,zero,0000000023017376

l23017322:
	c.mv	a1,s2
	c.mv	a0,a5
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.mv	a1,s3

l23017330:
	c.mv	a0,s0
	jal	ra,00000000230A382C
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s1,+00000728
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

l23017368:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s4
	c.j	0000000023017300

l23017376:
	c.mv	a1,s3
	c.mv	a0,a5
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.j	0000000023017330

;; KeyMgmt_DerivePTK: 23017386
;;   Called from:
;;     230174CE (in KeyMgmtSta_DeriveKeys)
KeyMgmt_DerivePTK proc
	c.addi16sp	FFFFFFD0
	c.swsp	a6,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	a3,00000084
	c.mv	s3,a5
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	c.mv	s6,a2
	addi	a0,a0,+00000254
	addi	a2,s0,+00000744
	c.mv	s2,a4
	addi	s1,s2,+000000C8
	jal	ra,000000002301F3D6
	c.lwsp	a2,000000A4
	c.mv	a2,s6
	c.mv	a4,s1
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230172A0
	c.lwsp	s0,00000008
	lui	a2,000230AD
	beq	a6,zero,0000000023017432

l230173E6:
	addi	a7,zero,+00000180
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+00000580
	addi	a1,zero,+00000020
	c.mv	a0,s3
	c.jal	0000000023017A50

l23017400:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+00000744
	srl	a1,a1,a5
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000030
	jal	zero,000000002301F3D6

l23017432:
	addi	a7,zero,+00000040
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+00000580
	addi	a1,zero,+00000020
	c.mv	a0,s3
	jal	ra,000000002301FCCC
	c.j	0000000023017400

;; KeyMgmtSta_DeriveKeys: 23017450
;;   Called from:
;;     2301594C (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23019270 (in KeyMgmtAp_DerivePTK)
KeyMgmtSta_DeriveKeys proc
	addi	sp,sp,-00000240
	sw	s0,sp,+00000238
	sw	s1,sp,+00000234
	sw	s2,sp,+00000230
	sw	s3,sp,+0000022C
	sw	s4,sp,+00000228
	sw	s5,sp,+00000224
	sw	s6,sp,+00000220
	sw	s7,sp,+0000021C
	sw	s8,sp,+00000218
	sw	s9,sp,+00000214
	sw	ra,sp,+0000023C
	c.swsp	a4,00000084
	lui	s3,00044B00
	c.mv	s8,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s5,a0
	srl	a1,a1,s1
	lui	s2,000230AD
	lui	a0,000230AD
	c.mv	s7,a2
	addi	a0,a0,+00000254
	addi	a2,s2,+00000758
	c.mv	s9,a3
	c.mv	s4,a5
	c.mv	s6,a6
	c.mv	s0,a7
	jal	ra,000000002301F3D6
	beq	s5,zero,0000000023017520

l230174B8:
	beq	s4,zero,0000000023017520

l230174BC:
	c.beqz	s0,0000000023017520

l230174BE:
	lw	a6,sp,+00000240
	c.lwsp	a2,000000A4
	c.mv	a5,s5
	c.addi4spn	a4,0000001C
	c.mv	a2,s9
	c.mv	a1,s8
	c.mv	a0,s7
	jal	ra,0000000023017386
	c.li	a2,00000010
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.addi4spn	a1,0000003C
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,0000004C
	addi	a0,s0,+00000010
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,00000054
	addi	a0,s0,+00000018
	jal	ra,00000000230A382C
	lw	a1,s3,+00000120
	lui	a0,000230AD
	addi	a2,s2,+00000758
	srl	a1,a1,s1
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6

l23017520:
	lw	ra,sp,+0000023C
	lw	s0,sp,+00000238
	lw	s1,sp,+00000234
	lw	s2,sp,+00000230
	lw	s3,sp,+0000022C
	lw	s4,sp,+00000228
	lw	s5,sp,+00000224
	lw	s6,sp,+00000220
	lw	s7,sp,+0000021C
	lw	s8,sp,+00000218
	lw	s9,sp,+00000214
	addi	sp,sp,+00000240
	c.jr	ra

;; SetEAPOLKeyDescTypeVersion: 23017552
;;   Called from:
;;     23018A1A (in PrepDefaultEapolMsg)
SetEAPOLKeyDescTypeVersion proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	s4,00044B00
	lw	a1,s4,+00000120
	addi	s2,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,s2
	lui	s3,000230AD
	lui	a0,000230AD
	c.mv	s0,a2
	addi	a0,a0,+00000254
	addi	a2,s3,+00000770
	jal	ra,000000002301F3D6
	lbu	a2,s1,+00000014
	c.li	a5,00000002
	sb	a5,s1,+00000012
	sltu	a5,zero,s0
	c.addi	a5,00000002
	c.andi	a2,FFFFFFF8
	c.or	a2,a5
	sb	a2,s1,+00000014
	lw	a1,s4,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	addi	a2,s3,+00000770
	c.lwsp	a2,00000068
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; GetKeyMsgNonceFromEAPOL: 230175C6
;;   Called from:
;;     230158D2 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23017690 (in ProcessRxEAPOL_PwkMsg3)
;;     23017726 (in ProcessRxEAPOL_GrpMsg1)
GetKeyMsgNonceFromEAPOL proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s1,+0000078C
	jal	ra,000000002301F3D6
	c.lw	s0,8(s0)
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023016EB4
	c.beqz	a0,0000000023017654

l23017604:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023017626

l2301760C:
	addi	a1,s0,+00000011
	addi	a2,zero,+00000020
	c.mv	a0,s2
	jal	ra,00000000230A382C
	addi	a1,zero,+00000020
	addi	a0,s2,+00000020
	jal	ra,00000000230166D4

l23017626:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s1,+0000078C
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6

l23017646:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23017654:
	c.li	s0,00000000
	c.j	0000000023017646

;; ProcessRxEAPOL_PwkMsg3: 23017658
;;   Called from:
;;     23016118 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
ProcessRxEAPOL_PwkMsg3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lui	a5,00044B00
	c.mv	s1,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a0,a0,+00000254
	addi	a2,s2,+000007A4
	jal	ra,000000002301F3D6
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230175C6
	c.bnez	a0,00000000230176A8

l23017696:
	c.li	s0,00000000

l23017698:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230176A8:
	c.li	a5,00000001
	sh	a5,s1,+000000F8
	sw	zero,s1,+000000F4
	lbu	a5,a0,+00000005
	c.mv	s0,a0
	c.andi	a5,00000010
	c.beqz	a5,00000000230176F4

l230176BC:
	addi	a0,s1,+00000108
	jal	ra,00000000230096A4
	addi	s3,s1,+000000AC
	c.mv	a1,s3
	c.mv	a0,s0
	addi	a2,s1,+00000050
	jal	ra,0000000023016DC4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230152AE
	c.beqz	a0,0000000023017696

l230176DE:
	lbu	a5,s0,+00000062
	lbu	a1,s0,+00000061
	c.mv	a2,s3
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,s0,+00000063
	jal	ra,0000000023016D12

l230176F4:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s2,+000007A4
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	0000000023017698

;; ProcessRxEAPOL_GrpMsg1: 23017716
;;   Called from:
;;     23015DE4 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
ProcessRxEAPOL_GrpMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a1
	jal	ra,00000000230175C6
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,000230AD
	lui	a0,000230AD
	addi	a2,s2,+000007BC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.bnez	s0,0000000023017766

l23017752:
	c.li	s0,00000000

l23017754:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23017766:
	addi	s3,s1,+000000AC
	addi	a2,s1,+00000050
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023016DC4
	c.li	a5,00000001
	c.sw	s1,116(a5)
	addi	a0,s1,+00000108
	jal	ra,00000000230096A4
	lbu	a3,s0,+00000004
	c.li	a4,00000002
	addi	a0,s0,+00000063
	lbu	a5,s0,+00000061
	lbu	a2,s0,+00000062
	bne	a3,a4,00000000230177D0

l23017798:
	slli	a1,a2,00000008
	c.or	a1,a5
	c.mv	a2,s3
	jal	ra,0000000023016D12
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230152AE
	c.beqz	a0,0000000023017752

l230177AE:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s2,+000007BC
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.j	0000000023017754

l230177D0:
	c.slli	a2,08
	c.or	a2,a5
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,00000000230A382C
	addi	s4,s1,+000000C4
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	addi	s3,s1,+000000BC
	c.li	a2,00000008
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000006
	c.srli	a5,00000004
	c.andi	a5,00000003
	sh	a5,s1,+000000D2
	c.j	00000000230177AE

;; KeyMgmtResetCounter: 23017810
;;   Called from:
;;     23015A06 (in supplicantInit)
KeyMgmtResetCounter proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AD
	lui	a0,000230AD
	addi	a2,s0,+000007D4
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.beqz	s1,0000000023017848

l23017840:
	sw	zero,s1,+00000070
	sw	zero,s1,+0000006C

l23017848:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000007D4
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; keyMgmtSta_StartSession_internal: 23017870
;;   Called from:
;;     230153D0 (in keyMgmtSta_StartSession)
keyMgmtSta_StartSession_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	c.mv	s3,a1
	lw	a1,s2,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,000230AE
	lui	a0,000230AD
	addi	a2,s1,-000007F4
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lw	a5,s0,+00000104
	c.bnez	a5,00000000230178B8

l230178AA:
	lw	a1,s2,+00000120
	addi	a0,s0,+00000108
	c.add	a1,s3
	jal	ra,00000000230095EE

l230178B8:
	sw	zero,s0,+00000060
	sw	zero,s0,+00000064
	sw	zero,s0,+00000068
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,s1,-000007F4
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; KeyMgmtSta_InitSession: 230178F0
;;   Called from:
;;     2301533C (in KeyMgmtInitSta)
KeyMgmtSta_InitSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AE
	lui	a0,000230AD
	addi	a2,s2,-000007D0
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lui	a5,00023016
	addi	a5,a5,+0000066A
	sw	zero,s0,+00000074
	sw	zero,s0,+00000078
	sw	zero,s0,+00000080
	sw	zero,s0,+0000007C
	sw	a5,s0,+0000010C
	sw	s0,s0,+00000110
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	addi	a2,s2,-000007D0
	c.lwsp	a6,00000048
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; set_psk: 23017966
;;   Called from:
;;     230084D0 (in mm_sta_add)
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
	lui	s1,000230CC
	lui	a0,000230AD
	c.mv	s3,a2
	addi	a0,a0,+00000254
	addi	a2,s1,-00000738
	jal	ra,000000002301F3D6
	lui	a0,00042046
	addi	a2,zero,+00000043
	addi	a1,zero,+000000FF
	addi	a0,a0,-0000015C
	jal	ra,00000000230A3A68
	c.mv	a0,s3
	jal	ra,00000000230A4220
	c.mv	a2,s3
	c.mv	a1,s5
	andi	a3,a0,+000000FF
	c.mv	a0,s4
	c.jal	0000000023017BB4
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-00000738
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; remove_psk: 230179EE
;;   Called from:
;;     23008700 (in mm_sta_del)
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
	lui	s1,000230AE
	lui	a0,000230AD
	addi	a2,s1,-000007B8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.mv	a1,s4
	c.mv	a0,s3
	c.jal	000000002301804C
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,-000007B8
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; bl_sha256_crypto_kdf: 23017A50
;;   Called from:
;;     230173FE (in KeyMgmt_DerivePTK)
bl_sha256_crypto_kdf proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	addi	s0,a7,+000000FF
	c.swsp	s2,00000038
	c.swsp	s4,00000034
	add	s2,a4,a5
	c.mv	s4,a5
	c.srai	s0,00000008
	c.li	a5,00000001
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.swsp	ra,000000BC
	c.mv	s6,a0
	c.mv	s7,a1
	c.mv	s8,a2
	c.mv	s9,a3
	c.mv	s3,a4
	sh	a7,sp,+0000000E
	sh	a5,sp,+0000001E
	c.mv	s1,s2
	andi	s0,s0,+000000FF
	addi	s10,sp,+0000001E
	c.li	s5,00000002
	addi	s11,sp,+0000000E

l23017A9C:
	lhu	a5,sp,+0000001E
	bgeu	s0,a5,0000000023017AD0

l23017AA4:
	lhu	a2,sp,+0000000E
	c.mv	a1,s2
	c.mv	a0,a6
	c.srli	a2,00000003
	jal	ra,00000000230A382C
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

l23017AD0:
	c.mv	a5,s1
	c.addi4spn	a4,00000030
	c.addi4spn	a3,00000020
	c.li	a2,00000004
	c.mv	a1,s7
	c.mv	a0,s6
	c.swsp	a6,00000004
	c.swsp	s10,00000010
	c.swsp	s5,00000018
	c.swsp	s8,00000090
	c.swsp	s9,00000098
	c.swsp	s3,00000014
	c.swsp	s4,0000001C
	c.swsp	s11,00000094
	c.swsp	s5,0000009C
	jal	ra,000000002301876A
	lhu	a5,sp,+0000001E
	addi	s1,s1,+00000020
	c.lwsp	s0,00000008
	c.addi	a5,00000001
	sh	a5,sp,+0000001E
	c.j	0000000023017A9C

;; pmkCacheFindPSK: 23017B04
;;   Called from:
;;     2301591E (in KeyMgmtStaHsk_Recvd_PWKMsg1)
pmkCacheFindPSK proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s1,000230AE
	lui	a0,000230AD
	addi	a2,s1,-000007AC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023017EE6
	c.mv	s0,a0
	c.beqz	a0,0000000023017B7A

l23017B44:
	addi	s0,a0,+00000020

l23017B48:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s1,-000007AC
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23017B7A:
	lui	s4,00042046
	lbu	a5,s4,-00000090
	c.beqz	a5,0000000023017B48

l23017B84:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023017FAC
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023017EE6
	c.mv	s0,a0
	addi	a0,s4,-00000090
	jal	ra,00000000230A4220
	addi	s0,s0,+00000020
	andi	a3,a0,+000000FF
	c.mv	a4,s0
	addi	a2,s4,-00000090
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	000000002301813E
	c.j	0000000023017B48

;; pmkCacheSetPassphrase: 23017BB4
;;   Called from:
;;     230179C4 (in set_psk)
pmkCacheSetPassphrase proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s0,000230AE
	lui	a0,000230AD
	c.mv	s1,a2
	addi	a0,a0,+00000254
	addi	a2,s0,-0000079C
	c.mv	s3,a3
	jal	ra,000000002301F3D6
	c.beqz	s1,0000000023017C24

l23017BF2:
	lui	s2,00042046
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,s2,-00000090
	jal	ra,00000000230A382C
	c.mv	a3,s3
	c.mv	a2,s1
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023017FAC
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023017EE6
	lbu	a1,a0,+00000040
	addi	a4,a0,+00000020
	c.mv	a3,s3
	addi	a2,s2,-00000090
	c.jal	000000002301813E

l23017C24:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-0000079C
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; pmkCacheInit: 23017C54
;;   Called from:
;;     230188D2 (in supplicantRestoreDefaults)
pmkCacheInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AE
	srl	a1,a1,s0
	lui	a0,000230AD
	addi	a2,s1,-00000784
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lui	a0,00042046
	addi	a2,zero,+00000086
	c.li	a1,00000000
	addi	a0,a0,-00000118
	jal	ra,00000000230A3A68
	lui	a0,00042046
	addi	a2,zero,+00000040
	c.li	a1,00000000
	addi	a0,a0,-00000090
	jal	ra,00000000230A3A68
	lui	a5,00042046
	sb	zero,a5,+00000FB0
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-00000784
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; pmkCacheRomInit: 23017CD0
;;   Called from:
;;     230188D6 (in supplicantRestoreDefaults)
pmkCacheRomInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AE
	srl	a1,a1,s0
	lui	a0,000230AD
	addi	a2,s1,-00000774
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	lui	a5,00042046
	c.li	a4,00000002
	sw	a4,a5,+00000FBC
	lui	a5,00042046
	lui	a4,00042046
	addi	a5,a5,-00000118
	sw	a5,a4,+00000FB8
	lui	a5,00042046
	lui	a4,00042046
	addi	a5,a5,-00000090
	sw	a5,a4,+00000FB4
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-00000774
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; pmkCacheNewElement: 23017D4A
;;   Called from:
;;     23017FF4 (in pmkCacheAddPSK)
pmkCacheNewElement proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s7,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s8,000230AE
	srl	a1,a1,a5
	lui	a0,000230AD
	addi	a2,s8,-00000764
	addi	a0,a0,+00000254
	c.li	s3,00000000
	c.li	s0,00000000
	lui	s5,00042046
	lui	s2,00042046
	lui	s4,00042046
	addi	s6,zero,+00000043
	jal	ra,000000002301F3D6

l23017D98:
	lw	a5,s5,-00000044
	blt	s0,a5,0000000023017DDA

l23017DA0:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s8,-00000764
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
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
	c.addi16sp	00000030
	c.jr	ra

l23017DDA:
	lb	a4,s2,-00000050
	bne	a4,a5,0000000023017DF6

l23017DE2:
	add	a5,s0,s6
	lw	a4,s4,-00000048
	c.add	a5,a4
	lbu	a4,a5,+00000042
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000042

l23017DF6:
	bne	s3,zero,0000000023017E38

l23017DFA:
	add	s7,s0,s6
	lw	s1,s4,-00000048
	c.add	s1,s7
	lb	a5,s1,+00000042
	c.bnez	a5,0000000023017E38

l23017E0A:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	lb	a5,s2,-00000050
	lw	a4,s5,-00000044
	bge	a5,a4,0000000023017E28

l23017E22:
	c.addi	a5,00000001
	sb	a5,s2,+00000FB0

l23017E28:
	lw	a5,s4,-00000048
	lbu	a4,s2,-00000050
	c.mv	s3,s1
	c.add	a5,s7
	sb	a4,a5,+00000042

l23017E38:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023017D98

;; pmkCacheUpdateReplacementRank: 23017E40
;;   Called from:
;;     23017F3E (in pmkCacheFindPSKElement)
pmkCacheUpdateReplacementRank proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AE
	lui	a0,000230AD
	addi	a2,s0,-00000750
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.beqz	s1,0000000023017E9E

l23017E70:
	lui	a5,00042046
	lb	a2,a5,-00000050
	lb	a5,s1,+00000042
	beq	a5,a2,0000000023017E9E

l23017E80:
	lui	a5,00042046
	lw	a1,a5,-00000044
	lui	a5,00042046
	lw	a0,a5,-00000048
	addi	a6,zero,+00000043
	c.li	a5,00000000

l23017E96:
	blt	a5,a1,0000000023017EC6

l23017E9A:
	sb	a2,s1,+00000042

l23017E9E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-00000750
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

l23017EC6:
	add	a4,a5,a6
	lb	a7,s1,+00000042
	c.add	a4,a0
	lb	a3,a4,+00000042
	bge	a7,a3,0000000023017EDE

l23017ED8:
	c.addi	a3,FFFFFFFF
	sb	a3,a4,+00000042

l23017EDE:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.j	0000000023017E96

;; pmkCacheFindPSKElement: 23017EE6
;;   Called from:
;;     23017B3E (in pmkCacheFindPSK)
;;     23017B92 (in pmkCacheFindPSK)
;;     23017C12 (in pmkCacheSetPassphrase)
;;     23017FEC (in pmkCacheAddPSK)
;;     23018054 (in pmkCacheDeletePSK)
pmkCacheFindPSKElement proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s6,a0
	srl	a1,a1,a5
	lui	s5,000230AE
	lui	a0,000230AD
	addi	a2,s5,-00000730
	addi	a0,a0,+00000254
	c.li	s1,00000000
	c.li	s0,00000000
	lui	s7,00042046
	addi	s8,zero,+00000043
	lui	s3,00042046
	jal	ra,000000002301F3D6

l23017F34:
	lw	a5,s7,-00000044
	blt	s0,a5,0000000023017F7C

l23017F3C:
	c.mv	a0,s1
	jal	ra,0000000023017E40
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,000230AD
	srl	a1,a1,a5
	addi	a2,s5,-00000730
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
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
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l23017F7C:
	add	s4,s0,s8
	lw	a0,s3,-00000048
	c.add	a0,s4
	lb	a5,a0,+00000042
	c.beqz	a5,0000000023017FA4

l23017F8C:
	lbu	a5,a0,+00000040
	bne	a5,s2,0000000023017FA4

l23017F94:
	c.mv	a2,s2
	c.mv	a1,s6
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023017FA4

l23017F9E:
	lw	s1,s3,-00000048
	c.add	s1,s4

l23017FA4:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023017F34

;; pmkCacheAddPSK: 23017FAC
;;   Called from:
;;     23017B8C (in pmkCacheFindPSK)
;;     23017C0C (in pmkCacheSetPassphrase)
pmkCacheAddPSK proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s1,000230AE
	lui	a0,000230AD
	addi	a0,a0,+00000254
	c.mv	s3,a2
	addi	a2,s1,-00000718
	c.mv	s5,a3
	jal	ra,000000002301F3D6
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023017EE6
	c.mv	s0,a0
	c.bnez	a0,0000000023018006

l23017FF4:
	jal	ra,0000000023017D4A
	c.mv	s0,a0
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,00000000230A382C
	sb	s2,s0,+00000040

l23018006:
	beq	s3,zero,000000002301801C

l2301800A:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+00000020
	jal	ra,00000000230A382C
	sb	s5,s0,+00000041

l2301801C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-00000718
	c.lwsp	s4,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000020
	jal	zero,000000002301F3D6

;; pmkCacheDeletePSK: 2301804C
;;   Called from:
;;     23017A28 (in remove_psk)
pmkCacheDeletePSK proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023017EE6
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,000230AE
	lui	a0,000230AD
	addi	a2,s0,-00000708
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	c.beqz	s1,000000002301809A

l23018080:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	lui	a4,00042046
	lbu	a5,a4,-00000050
	c.addi	a5,FFFFFFFF
	sb	a5,a4,+00000FB0

l2301809A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-00000708
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; pmkCacheGetHexNibble: 230180C2
;;   Called from:
;;     230181E0 (in pmkCacheGeneratePSK)
;;     230181EA (in pmkCacheGeneratePSK)
pmkCacheGetHexNibble proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,000230AE
	lui	a0,000230AD
	addi	a2,s2,-000006F4
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	addi	a5,zero,+00000060
	bgeu	a5,s0,0000000023018112

l230180FC:
	addi	s0,s0,-00000057

l23018100:
	andi	a0,s0,+000000FF
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23018112:
	addi	a5,zero,+00000040
	bgeu	a5,s0,0000000023018120

l2301811A:
	addi	s0,s0,-00000037
	c.j	0000000023018100

l23018120:
	lw	a1,s3,+00000120
	lui	a0,000230AD
	addi	a2,s2,-000006F4
	srl	a1,a1,s1
	addi	a0,a0,+00000268
	addi	s0,s0,-00000030
	jal	ra,000000002301F3D6
	c.j	0000000023018100

;; pmkCacheGeneratePSK: 2301813E
;;   Called from:
;;     23017BB0 (in pmkCacheFindPSK)
;;     23017C22 (in pmkCacheSetPassphrase)
;;     230189A0 (in KeyMgmtInit)
pmkCacheGeneratePSK proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s5,00000088
	lui	a5,00044B00
	c.swsp	a3,00000084
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,000230AE
	lui	a0,000230AD
	c.mv	s0,a2
	c.mv	s4,a4
	addi	a2,s2,-000006DC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	beq	s4,zero,000000002301819C

l23018180:
	c.beqz	s0,000000002301819C

l23018182:
	c.lwsp	a2,000000A4
	addi	a4,zero,+00000037
	addi	a5,a3,-00000008
	bltu	a4,a5,00000000230181CC

l23018190:
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002307AA10

l2301819C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s0,00000114
	srl	a1,a1,a5
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	addi	a2,s2,-000006DC
	c.lwsp	zero,00000158
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi16sp	00000030
	jal	zero,000000002301F3D6

l230181CC:
	addi	a5,zero,+00000040
	bne	a3,a5,000000002301819C

l230181D4:
	c.li	s3,00000000
	addi	s5,zero,+00000040

l230181DA:
	lbu	a0,s0,+00000000
	c.addi	s0,00000002
	jal	ra,00000000230180C2
	c.mv	s1,a0
	lbu	a0,s0,-00000001
	jal	ra,00000000230180C2
	srai	a2,s3,00000001
	slli	a5,s1,00000004
	c.add	a2,s4
	c.or	a0,a5
	sb	a0,a2,+00000000
	c.addi	s3,00000002
	bne	s3,s5,00000000230181DA

l23018204:
	c.j	000000002301819C

;; prepare_key: 23018206
;;   Called from:
;;     2301834A (in RC4_Encrypt)
prepare_key proc
	c.li	a5,00000000
	addi	a4,zero,+00000100

l2301820C:
	add	a3,a2,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002301820C

l2301821A:
	sb	zero,a2,+00000100
	sb	zero,a2,+00000101
	c.mv	a3,a2
	addi	t1,a2,+00000100
	c.li	a7,00000000
	c.li	a4,00000000

l2301822C:
	add	a5,a0,a4
	c.addi	a4,00000001
	or	a4,a4,a1
	lbu	a6,a3,+00000000
	lbu	a5,a5,+00000000
	c.addi	a3,00000001
	c.add	a5,a6
	c.add	a5,a7
	andi	a7,a5,+000000FF
	andi	a5,a5,+000000FF
	c.add	a5,a2
	lbu	t3,a5,+00000000
	sb	t3,a3,+00000FFF
	sb	a6,a5,+00000000
	andi	a4,a4,+000000FF
	bne	t1,a3,000000002301822C

l23018262:
	c.jr	ra

;; rc4: 23018264
;;   Called from:
;;     23018358 (in RC4_Encrypt)
rc4 proc
	lbu	t3,a3,+00000100
	lbu	a4,a3,+00000101
	c.li	a5,00000000

l2301826E:
	add	a6,t3,a5
	andi	a6,a6,+000000FF
	blt	a5,a2,0000000023018292

l2301827A:
	c.li	a7,00000000

l2301827C:
	add	a5,a6,a7
	andi	a5,a5,+000000FF
	blt	a7,a1,00000000230182BC

l23018288:
	sb	a5,a3,+00000100
	sb	a4,a3,+00000101
	c.jr	ra

l23018292:
	c.addi	a6,00000001
	andi	a6,a6,+000000FF
	c.add	a6,a3
	lbu	t1,a6,+00000000
	c.addi	a5,00000001
	c.slli	a5,10
	c.add	a4,t1
	andi	a4,a4,+000000FF
	add	a7,a3,a4
	lbu	t4,a7,+00000000
	c.srai	a5,00000010
	sb	t4,a6,+00000000
	sb	t1,a7,+00000000
	c.j	000000002301826E

l230182BC:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.add	a5,a3
	lbu	a2,a5,+00000000
	c.add	a4,a2
	andi	a4,a4,+000000FF
	add	t1,a3,a4
	lbu	t3,t1,+00000000
	sb	t3,a5,+00000000
	sb	a2,t1,+00000000
	lbu	a5,a5,+00000000
	add	t1,a0,a7
	c.addi	a7,00000001
	c.add	a2,a5
	andi	a2,a2,+000000FF
	c.add	a2,a3
	lbu	a5,a2,+00000000
	lbu	a2,t1,+00000000
	c.slli	a7,10
	srai	a7,a7,00000010
	c.xor	a5,a2
	sb	a5,t1,+00000000
	c.j	000000002301827C

;; RC4_Encrypt: 23018306
;;   Called from:
;;     23016E54 (in KeyMgmtSta_ApplyKEK)
RC4_Encrypt proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	addi	s5,a2,+00000010
	addi	a7,zero,+00000020
	blt	a7,s5,000000002301835C

l23018322:
	c.mv	s4,a0
	c.mv	a0,sp
	c.mv	s1,a3
	c.mv	s0,a2
	c.mv	s3,a5
	c.mv	s2,a4
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.mv	a1,s4
	add	a0,sp,s0
	jal	ra,00000000230A382C
	lui	s0,00042013
	addi	a2,s0,-0000024C
	c.mv	a1,s5
	c.mv	a0,sp
	jal	ra,0000000023018206
	addi	a3,s0,-0000024C
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023018264

l2301835C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; sha256_compress: 2301836E
;;   Called from:
;;     23018610 (in sha256_vector)
;;     23018666 (in sha256_vector)
;;     230186DC (in sha256_vector)
;;     2301872E (in sha256_vector)
sha256_compress proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	s1,a0,+00000008
	addi	s2,a2,+00000100
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a2
	c.mv	s4,a1
	addi	a2,zero,+00000020
	c.mv	s3,a0
	c.mv	a1,s1
	c.mv	a0,s2
	c.swsp	ra,0000008C
	jal	ra,00000000230A382C
	addi	a2,s4,+00000040
	c.mv	a3,s0

l2301839C:
	lbu	a5,s4,+00000001
	lbu	a4,s4,+00000000
	c.addi	s4,00000004
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	lbu	a4,s4,-00000002
	c.srli	a5,00000010
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,s4,-00000001
	c.slli	a5,08
	c.addi	a3,00000004
	c.or	a5,a4
	sw	a5,a3,+00000FFC
	bne	s4,a2,000000002301839C

l230183D0:
	addi	a4,s0,+00000040

l230183D4:
	lw	a3,a4,-00000008
	lw	a2,a4,-0000003C
	c.addi	a4,00000004
	srli	a1,a3,00000011
	slli	a5,a3,0000000F
	srli	a0,a3,00000013
	c.or	a5,a1
	slli	a1,a3,0000000D
	c.or	a1,a0
	c.xor	a5,a1
	c.srli	a3,0000000A
	lw	a1,a4,-00000044
	c.xor	a5,a3
	lw	a3,a4,-00000020
	srli	a0,a2,00000012
	c.add	a3,a1
	c.add	a5,a3
	slli	a1,a2,00000019
	srli	a3,a2,00000007
	c.or	a3,a1
	slli	a1,a2,0000000E
	c.or	a1,a0
	c.xor	a3,a1
	c.srli	a2,00000003
	c.xor	a3,a2
	c.add	a5,a3
	sw	a5,a4,+00000FFC
	bne	s2,a4,00000000230183D4

l23018428:
	lui	a0,000230AE
	c.li	a1,00000000
	addi	a0,a0,-000006C8
	addi	a6,zero,+00000100

l23018436:
	lw	a2,s0,+00000110
	lw	t3,s0,+00000118
	lw	t4,s0,+00000114
	slli	a4,a2,0000001A
	srli	a5,a2,00000006
	slli	a3,a2,00000015
	c.or	a5,a4
	srli	a4,a2,0000000B
	c.or	a4,a3
	c.xor	a5,a4
	srli	a3,a2,00000019
	slli	a4,a2,00000007
	c.or	a4,a3
	c.xor	a5,a4
	xor	a4,t3,t4
	c.and	a4,a2
	xor	a4,a4,t3
	c.add	a5,a4
	lw	a4,s0,+0000011C
	lw	a3,s0,+00000100
	lw	t1,s0,+0000010C
	c.add	a5,a4
	add	a4,a0,a1
	c.lw	a4,0(a4)
	lw	a7,s0,+00000104
	lw	t5,s0,+00000108
	c.add	a5,a4
	add	a4,s0,a1
	c.lw	a4,0(a4)
	sw	a2,s0,+00000114
	slli	a2,a3,0000001E
	c.add	a5,a4
	c.add	t1,a5
	srli	a4,a3,00000002
	c.or	a4,a2
	sw	t1,s0,+00000110
	slli	a2,a3,00000013
	srli	t1,a3,0000000D
	or	t1,t1,a2
	xor	a4,a4,t1
	srli	a2,a3,00000016
	slli	t1,a3,0000000A
	or	t1,t1,a2
	or	a2,a3,a7
	sw	a3,s0,+00000104
	and	a2,a2,t5
	and	a3,a3,a7
	xor	a4,a4,t1
	c.or	a3,a2
	c.add	a4,a3
	c.add	a5,a4
	sw	t3,s0,+0000011C
	sw	t4,s0,+00000118
	sw	t5,s0,+0000010C
	sw	a7,s0,+00000108
	sw	a5,s0,+00000100
	c.addi	a1,00000004
	bne	a1,a6,0000000023018436

l230184FA:
	addi	s3,s3,+00000028

l230184FE:
	c.lw	s1,0(a5)
	lw	a4,s2,+00000000
	c.addi	s1,00000004
	c.addi	s2,00000004
	c.add	a5,a4
	sw	a5,s1,+00000FFC
	bne	s3,s1,00000000230184FE

l23018512:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; sha256_init: 23018524
;;   Called from:
;;     230185B2 (in sha256_vector)
sha256_init proc
	c.li	a5,00000000
	c.sw	a0,0(a5)
	lui	a5,0006A09E
	addi	a5,a5,+00000667
	c.sw	a0,8(a5)
	lui	a5,000BB67B
	addi	a5,a5,-0000017B
	c.sw	a0,12(a5)
	lui	a5,0003C6EF
	addi	a5,a5,+00000372
	c.sw	a0,16(a5)
	lui	a5,000A54FF
	addi	a5,a5,+0000053A
	c.sw	a0,20(a5)
	lui	a5,000510E5
	addi	a5,a5,+0000027F
	c.sw	a0,24(a5)
	lui	a5,0009B057
	addi	a5,a5,-00000774
	c.sw	a0,28(a5)
	lui	a5,0001F83E
	addi	a5,a5,-00000655
	c.sw	a0,32(a5)
	lui	a5,0005BE0D
	c.li	a6,00000000
	addi	a5,a5,-000002E7
	sw	zero,a0,+00000028
	sw	a6,a0,+00000004
	c.sw	a0,36(a5)
	c.jr	ra

;; sha256_vector: 23018584
;;   Called from:
;;     230187AE (in hmac_sha256_vector)
;;     23018816 (in hmac_sha256_vector)
;;     23018866 (in hmac_sha256_vector)
sha256_vector proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s5,00000098
	c.mv	s0,a4
	c.mv	s5,a0
	c.mv	a0,a4
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s11,0000008C
	c.swsp	a1,00000084
	c.mv	s9,a2
	c.mv	s2,a3
	addi	s4,a4,+00000070
	c.slli	s5,02
	jal	ra,0000000023018524
	c.li	s8,00000000
	addi	s6,zero,+00000040
	addi	s7,s0,+0000002C
	addi	s10,zero,+0000003F

l230185C4:
	c.lw	s0,40(a5)
	bne	s8,s5,00000000230186B8

l230185CA:
	addi	a4,zero,+0000003F
	bltu	a4,a5,000000002301869A

l230185D2:
	c.lw	s0,0(a4)
	c.lw	s0,4(a2)
	slli	a3,a5,00000003
	c.add	a3,a4
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	s0,4(a4)
	addi	a4,a5,+00000001
	c.sw	s0,0(a3)
	c.add	a5,s0
	c.sw	s0,40(a4)
	addi	a3,zero,-00000080
	sb	a3,a5,+0000002C
	addi	a5,zero,+00000038
	bgeu	a5,a4,0000000023018618

l230185FE:
	addi	a4,zero,+0000003F

l23018602:
	c.lw	s0,40(a5)
	bgeu	a4,a5,000000002301874E

l23018608:
	c.mv	a2,s4
	addi	a1,s0,+0000002C
	c.mv	a0,s0
	jal	ra,000000002301836E
	sw	zero,s0,+00000028

l23018618:
	addi	a4,zero,+00000037

l2301861C:
	c.lw	s0,40(a5)
	bgeu	a4,a5,000000002301875C

l23018622:
	c.lw	s0,0(a5)
	addi	a1,s0,+0000002C
	c.mv	a0,s0
	srli	a4,a5,00000018
	sb	a4,s0,+00000068
	srli	a4,a5,00000010
	sb	a4,s0,+00000069
	sb	a5,s0,+0000006B
	srli	a4,a5,00000008
	c.lw	s0,4(a5)
	sb	a4,s0,+0000006A
	c.mv	a2,s4
	srli	a4,a5,00000018
	sb	a4,s0,+00000064
	srli	a4,a5,00000010
	sb	a4,s0,+00000065
	srli	a4,a5,00000008
	sb	a5,s0,+00000067
	sb	a4,s0,+00000066
	jal	ra,000000002301836E
	addi	a5,s0,+00000008
	addi	s0,s0,+00000028

l23018672:
	c.addi	a5,00000004
	lw	a4,a5,-00000004
	c.addi	s2,00000004
	srli	a3,a4,00000018
	sb	a3,s2,+00000FFC
	srli	a3,a4,00000010
	sb	a3,s2,+00000FFD
	srli	a3,a4,00000008
	sb	a3,s2,+00000FFE
	sb	a4,s2,+00000FFF
	bne	a5,s0,0000000023018672

l2301869A:
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

l230186B8:
	c.lwsp	a2,000000C4
	add	a3,a4,s8
	lw	s3,a3,+00000000
	add	a3,s9,s8
	c.lw	a3,0(s1)
	bgeu	s6,a5,00000000230186FE

l230186CC:
	c.addi	s8,00000004
	c.j	00000000230185C4

l230186D0:
	c.bnez	a0,0000000023018704

l230186D2:
	bgeu	s10,s1,0000000023018704

l230186D6:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002301836E
	blt	a0,zero,00000000230186CC

l230186E4:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	addi	s3,s3,+00000040
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	addi	s1,s1,-00000040

l230186FE:
	c.lw	s0,40(a0)
	c.bnez	s1,00000000230186D0

l23018702:
	c.j	00000000230186CC

l23018704:
	sub	s11,s6,a0
	bgeu	s1,s11,000000002301870E

l2301870C:
	c.mv	s11,s1

l2301870E:
	c.mv	a1,s3
	c.mv	a2,s11
	c.add	a0,s7
	jal	ra,00000000230A382C
	c.lw	s0,40(a5)
	c.add	s3,s11
	sub	s1,s1,s11
	c.add	a5,s11
	c.sw	s0,40(a5)
	bne	a5,s6,00000000230186FE

l23018728:
	c.mv	a2,s4
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,000000002301836E
	blt	a0,zero,00000000230186CC

l23018736:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	sw	zero,s0,+00000028
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	c.j	00000000230186FE

l2301874E:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	0000000023018602

l2301875C:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	000000002301861C

;; hmac_sha256_vector: 2301876A
;;   Called from:
;;     23017AEE (in bl_sha256_crypto_kdf)
hmac_sha256_vector proc
	addi	sp,sp,-00000260
	sw	s0,sp,+00000258
	sw	s1,sp,+00000254
	sw	s2,sp,+00000250
	sw	s3,sp,+0000024C
	sw	s4,sp,+00000248
	c.mv	s1,a5
	sw	ra,sp,+0000025C
	sw	s5,sp,+00000244
	sw	s6,sp,+00000240
	c.swsp	a0,00000084
	c.swsp	a1,00000004
	addi	a5,zero,+00000040
	c.mv	s2,a2
	c.mv	s3,a3
	c.mv	s4,a4
	c.addi4spn	s0,0000008C
	bgeu	a5,a1,00000000230187BA

l230187A4:
	c.addi4spn	a4,000000AC
	c.mv	a3,s0
	c.addi4spn	a2,00000008
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,0000000023018584
	addi	a5,zero,+00000020
	c.swsp	s0,00000084
	c.swsp	a5,00000004

l230187BA:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,00000000230A3A68
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,00000000230A382C
	lui	a3,00036363
	c.addi4spn	a4,0000004C
	addi	a3,a3,+00000636

l230187DA:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,00000000230187DA

l230187EA:
	c.addi4spn	a5,0000004C
	c.swsp	a5,0000008C
	c.addi4spn	a2,0000001C
	addi	a5,zero,+00000040
	c.addi4spn	a3,00000034
	c.swsp	a5,00000098
	c.li	a4,00000000
	slli	a5,s2,00000002
	c.mv	s5,a2
	c.mv	s6,a3

l23018802:
	c.addi	a2,00000004
	c.addi	a3,00000004
	bne	a4,a5,0000000023018890

l2301880A:
	c.addi4spn	a4,000000AC
	c.mv	a3,s1
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,s2,+00000001
	jal	ra,0000000023018584
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,00000000230A3A68
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,00000000230A382C
	lui	a3,0005C5C6
	c.addi4spn	a4,0000004C
	addi	a3,a3,-000003A4

l2301883A:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,000000002301883A

l2301884A:
	c.addi4spn	a5,0000004C
	c.swsp	a5,0000008C
	addi	a5,zero,+00000040
	c.swsp	a5,00000098
	c.addi4spn	a4,000000AC
	addi	a5,zero,+00000020
	c.mv	a3,s1
	c.mv	a2,s6
	c.mv	a1,s5
	c.li	a0,00000002
	c.swsp	s1,00000010
	c.swsp	a5,0000001C
	jal	ra,0000000023018584
	lw	ra,sp,+0000025C
	lw	s0,sp,+00000258
	lw	s1,sp,+00000254
	lw	s2,sp,+00000250
	lw	s3,sp,+0000024C
	lw	s4,sp,+00000248
	lw	s5,sp,+00000244
	lw	s6,sp,+00000240
	addi	sp,sp,+00000260
	c.jr	ra

l23018890:
	add	a1,s3,a4
	c.lw	a1,0(a1)
	c.sw	a2,0(a1)
	add	a1,s4,a4
	c.lw	a1,0(a1)
	c.addi	a4,00000004
	c.sw	a3,0(a1)
	c.j	0000000023018802

;; supplicantRestoreDefaults: 230188A4
;;   Called from:
;;     2301892E (in supplicantFuncInit)
supplicantRestoreDefaults proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AE
	srl	a1,a1,s0
	lui	a0,000230AD
	addi	a2,s1,-000005C8
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	jal	ra,0000000023017C54
	jal	ra,0000000023017CD0
	lw	a1,s2,+00000120
	lui	a0,000230AD
	addi	a2,s1,-000005C8
	srl	a1,a1,s0
	addi	a0,a0,+00000268
	jal	ra,000000002301F3D6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; supplicantFuncInit: 23018900
;;   Called from:
;;     2300A02E (in bl_init)
supplicantFuncInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,000230AE
	srl	a1,a1,s0
	lui	a0,000230AD
	addi	a2,s1,-000005AC
	addi	a0,a0,+00000254
	jal	ra,000000002301F3D6
	jal	ra,00000000230188A4
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-000005AC
	c.lwsp	tp,00000024
	lui	a0,000230AD
	addi	a0,a0,+00000268
	c.addi	sp,00000010
	jal	zero,000000002301F3D6

;; KeyMgmtInit: 23018954
;;   Called from:
;;     23018E9A (in InitGroupKey)
KeyMgmtInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s1,a0
	jal	ra,0000000023019356
	c.mv	s0,a0
	addi	a1,a0,+000000F4
	addi	a2,s1,+00000046
	addi	a0,a0,+000000CC
	jal	ra,00000000230192F8
	lw	a4,s0,+000000B8
	c.li	a5,00000001
	bne	a4,a5,00000000230189A8

l2301897E:
	lbu	a1,s1,+0000002C
	addi	a2,s0,+00000018
	c.mv	a0,a2
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,00000000230A4220
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	andi	a3,a0,+000000FF
	addi	a4,s0,+00000059
	addi	a0,s1,+0000000C
	jal	ra,000000002301813E
	sw	zero,s0,+000000B8

l230189A8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; PrepDefaultEapolMsg: 230189B2
;;   Called from:
;;     23018A50 (in GeneratePWKMsg1)
;;     23018AF4 (in GeneratePWKMsg3)
PrepDefaultEapolMsg proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a2,00000084
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.mv	s3,a1
	jal	ra,000000002301936A
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023019356
	c.lwsp	a2,00000084
	c.mv	s4,a0
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,000000002301519C
	c.mv	s1,a0
	c.beqz	a0,0000000023018A24

l230189E2:
	c.lwsp	t3,00000044
	addi	a2,zero,+00000072
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lwsp	t3,00000044
	addi	a1,s0,+00000040
	addi	a2,s0,+00000046
	jal	ra,00000000230169BE
	lw	a1,s2,+00000010
	lbu	a5,s2,+00000014
	c.lwsp	t3,00000044
	c.srli	a1,00000015
	c.andi	a5,00000008
	c.andi	a1,00000001
	c.li	a3,00000001
	c.bnez	a5,0000000023018A18

l23018A10:
	lbu	a3,s4,+00000008
	c.srli	a3,00000003
	c.andi	a3,00000001

l23018A18:
	c.li	a2,00000000
	jal	ra,0000000023017552
	c.lwsp	t3,000000E4
	sw	a5,s3,+00000000

l23018A24:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; GeneratePWKMsg1: 23018A36
;;   Called from:
;;     23018C7A (in GenerateApEapolMsg)
GeneratePWKMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.swsp	a1,00000084
	jal	ra,000000002301936A
	c.lwsp	a2,00000084
	c.mv	s0,a0
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,00000000230189B2
	c.beqz	a0,0000000023018ADC

l23018A56:
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,0000000023018A66

l23018A60:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l23018A66:
	c.lw	s0,32(a4)
	addi	s1,s1,+000000A4
	addi	a1,zero,+00000020
	c.mv	a0,s1
	c.swsp	a5,0000008C
	c.swsp	a4,0000000C
	jal	ra,00000000230166D4
	c.lwsp	s4,00000044
	c.lui	a2,00001000
	c.mv	a4,s1
	c.addi4spn	a3,00000018
	addi	a2,a2,-00000800
	addi	a1,s0,+00000014
	c.jal	0000000023018F94
	c.lwsp	s4,000000C4
	c.mv	a0,s2
	lbu	a1,a4,+00000070
	lbu	a5,a4,+0000006F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000054
	addi	a1,a1,+0000005F
	c.slli	a1,10
	c.srli	a1,00000010
	sb	a5,a4,+0000000E
	c.li	a5,00000003
	sb	a5,a4,+0000000F
	srli	a3,a1,00000008
	slli	a5,a1,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+00000010
	c.srli	a5,00000008
	sb	a5,a4,+00000011
	jal	ra,0000000023015230
	c.li	a0,00000000

l23018AD0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23018ADC:
	c.li	a0,00000001
	c.j	0000000023018AD0

;; GeneratePWKMsg3: 23018AE0
;;   Called from:
;;     23018CA2 (in GenerateApEapolMsg)
GeneratePWKMsg3 proc
	c.addi16sp	FFFFFFD0
	c.mv	a2,a1
	c.addi4spn	a1,00000004
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s4,a0
	jal	ra,00000000230189B2
	c.beqz	a0,0000000023018B7A

l23018AFA:
	c.mv	s1,a0
	c.mv	a0,s4
	jal	ra,000000002301936A
	c.mv	s0,a0
	c.mv	a0,s4
	jal	ra,0000000023019356
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,0000000023018B1A

l23018B14:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l23018B1A:
	lhu	a2,s0,+00000012
	c.swsp	a5,00000084
	c.lui	a5,FFFF8000
	c.slli	a2,0A
	c.and	a2,a5
	c.lui	a5,00001000
	c.lw	s0,32(a4)
	addi	a5,a5,-00000780
	c.or	a2,a5
	c.lwsp	tp,00000044
	addi	s3,s0,+00000014
	c.slli	a2,10
	c.swsp	a4,00000004
	c.addi4spn	a3,00000008
	addi	a4,s4,+000000A4
	c.srli	a2,00000010
	c.mv	a1,s3
	c.jal	0000000023018F94
	lhu	a5,s0,+00000012
	c.li	a3,00000000
	andi	a4,a5,+00000008
	c.bnez	a4,0000000023018B60

l23018B52:
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023018B60

l23018B58:
	lui	a3,00042023
	addi	a3,a3,-00000398

l23018B60:
	c.lwsp	tp,00000044
	c.li	a2,00000000
	addi	a1,s0,+00000012
	jal	ra,00000000230192CE
	c.bnez	a0,0000000023018B7E

l23018B6E:
	c.lw	s1,8(a0)
	jal	ra,0000000023064972
	c.mv	a0,s1
	jal	ra,0000000023064972

l23018B7A:
	c.li	a0,00000001
	c.j	0000000023018BBE

l23018B7E:
	lhu	a5,s0,+00000012
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023018BA0

l23018B88:
	c.lwsp	tp,00000044
	addi	a2,s2,+00000008
	addi	a1,s2,+000000CC
	c.jal	00000000230190A0
	c.lwsp	tp,00000044
	c.mv	a2,s3
	addi	a1,s0,+00000044
	c.jal	00000000230191AE
	c.beqz	a0,0000000023018B6E

l23018BA0:
	c.lwsp	tp,00000044
	lbu	a2,s0,+00000054
	addi	a1,s0,+00000034
	lbu	a3,a0,+00000014
	c.andi	a3,00000007
	jal	ra,0000000023016AFA
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,0000000023015230
	c.li	a0,00000000

l23018BBE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; ProcessPWKMsg4: 23018BCE
;;   Called from:
;;     23018E22 (in ProcessKeyMgmtDataAp)
ProcessPWKMsg4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,000000002301936A
	c.mv	s1,a0
	addi	a1,a0,+00000034
	lw	a0,s2,+00000008
	jal	ra,0000000023016A46
	c.beqz	a0,0000000023018C3E

l23018BF2:
	c.li	a5,00000001
	sb	a5,s0,+000000E8
	c.li	a1,00000001
	sb	zero,s0,+000000E9
	sb	zero,s0,+000000E4
	sb	zero,s0,+000000E5
	sb	zero,s0,+000000E6
	sb	zero,s0,+000000E7
	c.mv	a0,s0
	jal	ra,0000000023015B2A
	lbu	a0,s0,+00000001
	jal	ra,000000002301393A
	lhu	a5,s1,+00000012
	sb	zero,s1,+00000018
	c.li	a0,00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023018C32

l23018C2C:
	c.li	a5,0000000A
	sb	a5,s1,+00000016

l23018C32:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23018C3E:
	c.li	a0,00000001
	c.j	0000000023018C32

;; GenerateApEapolMsg: 23018C42
;;   Called from:
;;     23018D3A (in ProcessPWKMsg2)
;;     23018D6A (in SendEAPOLMsgUsingBufDesc)
GenerateApEapolMsg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.swsp	a2,00000084
	jal	ra,000000002301936A
	andi	a5,s0,+00000001
	c.mv	s1,a0
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023018C66

l23018C60:
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF

l23018C66:
	lbu	a4,s1,+0000000C
	sb	s0,s1,+00000016
	c.li	a5,00000001
	beq	a4,a5,0000000023018C8C

l23018C74:
	bne	s0,a5,0000000023018C9A

l23018C78:
	c.mv	a0,s2
	jal	ra,0000000023018A36

l23018C7E:
	c.mv	s0,a0
	c.bnez	a0,0000000023018CBC

l23018C82:
	lbu	a5,s1,+00000016
	c.addi	a5,00000001
	sb	a5,s1,+00000016

l23018C8C:
	lbu	a5,s1,+00000018
	c.li	s0,00000000
	c.addi	a5,00000001
	sb	a5,s1,+00000018
	c.j	0000000023018CBC

l23018C9A:
	c.li	a5,00000003
	bne	s0,a5,0000000023018CA8

l23018CA0:
	c.mv	a0,s2
	jal	ra,0000000023018AE0
	c.j	0000000023018C7E

l23018CA8:
	c.li	s0,00000001
	c.beqz	a1,0000000023018CBC

l23018CAC:
	c.lw	a1,8(a0)
	c.swsp	a1,00000084
	jal	ra,0000000023064972
	c.lwsp	a2,00000064
	c.mv	a0,a1
	jal	ra,0000000023064972

l23018CBC:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; ProcessPWKMsg2: 23018CCA
;;   Called from:
;;     23018E14 (in ProcessKeyMgmtDataAp)
ProcessPWKMsg2 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s0,00000014
	c.lw	a0,0(s0)
	c.mv	s1,a0
	c.mv	a0,s0
	c.jal	000000002301936A
	c.mv	s2,a0
	c.mv	a0,s0
	c.jal	0000000023019356
	c.lw	s1,8(s1)
	addi	s3,s2,+00000034
	addi	a1,s0,+00000040
	addi	a0,a0,+00000059
	c.swsp	zero,00000000
	addi	a7,s0,+000000C4
	addi	a6,s2,+00000044
	c.mv	a5,s3
	addi	a4,s1,+00000011
	addi	a3,s0,+000000A4
	addi	a2,s0,+00000030
	c.jal	0000000023019262
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023016A46
	c.beqz	a0,0000000023018D3E

l23018D16:
	sb	zero,s2,+00000018
	lbu	a5,s1,+00000064
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi	a5,00000002
	lui	a4,0004200F
	sb	a5,a4,+00000330
	c.li	a2,00000000
	c.li	a1,00000003
	c.addi16sp	00000030
	jal	zero,0000000023018C42

l23018D3E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000001
	c.addi16sp	00000030
	c.jr	ra

;; SendEAPOLMsgUsingBufDesc: 23018D4E
;;   Called from:
;;     2301EB52 (in apm_sta_add_cfm_handler)
SendEAPOLMsgUsingBufDesc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.jal	000000002301936A
	lbu	a1,a0,+00000016
	c.lwsp	a2,00000084
	c.li	a0,00000000
	andi	a4,a1,+00000001
	c.beqz	a4,0000000023018D70

l23018D68:
	c.mv	a0,s0
	jal	ra,0000000023018C42
	c.li	a0,00000001

l23018D70:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ProcessKeyMgmtDataAp: 23018D78
;;   Called from:
;;     23016274 (in ProcessEAPoLPkt)
ProcessKeyMgmtDataAp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	000000002301936A
	lw	s2,s0,+00000008
	lbu	a5,s2,+00000005
	c.andi	a5,00000004
	c.beqz	a5,0000000023018DA2

l23018D94:
	c.li	a0,00000001

l23018D96:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23018DA2:
	c.mv	s1,a0
	c.li	a2,00000004
	addi	a1,s2,+00000009
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.li	a2,00000004
	addi	a1,s2,+0000000D
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.lwsp	s0,000000E4
	lui	a1,00000FF0
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.add	a4,a3
	slli	a3,a5,00000008
	c.and	a3,a1
	c.add	a3,a4
	srli	a4,a5,00000008
	c.lui	a5,00010000
	addi	a2,a5,-00000100
	c.lw	s1,32(a5)
	c.and	a4,a2
	c.add	a4,a3
	bne	a5,a4,0000000023018D94

l23018DE8:
	c.lwsp	a2,000000E4
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.add	a4,a3
	slli	a3,a5,00000008
	c.and	a3,a1
	c.srli	a5,00000008
	c.add	a4,a3
	c.and	a5,a2
	c.add	a5,a4
	c.lw	s1,28(a4)
	bne	a4,a5,0000000023018D94

l23018E08:
	lbu	a5,s1,+00000016
	c.li	a4,00000002
	bne	a5,a4,0000000023018E1A

l23018E12:
	c.mv	a0,s0
	jal	ra,0000000023018CCA
	c.j	0000000023018D96

l23018E1A:
	c.li	a4,00000004
	bne	a5,a4,0000000023018D94

l23018E20:
	c.mv	a0,s0
	jal	ra,0000000023018BCE
	c.j	0000000023018D96

;; InitStaKeyInfo: 23018E28
;;   Called from:
;;     23013FFC (in apm_assoc_req_handler)
InitStaKeyInfo proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.jal	000000002301936A
	addi	s1,a0,+00000010
	c.mv	s0,a0
	addi	a2,zero,+00000048
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023019306
	c.li	a5,00000001
	sb	a5,s0,+00000054
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; RemoveAPKeyInfo: 23018E70
;;   Called from:
;;     2301EE64 (in apm_stop_req_handler)
RemoveAPKeyInfo proc
	lbu	a0,a0,+00000003
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023018E80

l23018E7C:
	jal	zero,0000000023008190

l23018E80:
	c.jr	ra

;; InitGroupKey: 23018E82
;;   Called from:
;;     2301F112 (in apm_start_req_handler)
InitGroupKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.jal	0000000023019356
	c.mv	s0,a0
	sw	zero,a0,+00000114
	sw	zero,a0,+00000118
	c.mv	a0,s1
	jal	ra,0000000023018954
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023018ED2

l23018EA2:
	c.lui	a4,0001F000
	addi	a4,a4,-000007B8
	add	a1,a5,a4
	lhu	a2,s0,+000000A6
	c.li	a3,00000000
	c.slli	a2,07
	sltu	a5,a5,a4
	addi	a0,a1,-0000007D
	sltu	a1,a0,a1
	c.addi	a5,FFFFFFFF
	c.add	a1,a5
	jal	ra,000000002309FC70
	c.addi	a0,00000001
	sw	a0,s0,+00000114
	sw	a0,s0,+00000118

l23018ED2:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023015B2A
	c.lwsp	s0,00000004
	sb	a0,s1,+00000003
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,a0
	lui	a0,000230AE
	addi	a0,a0,-00000598
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; GenerateGTK_internal: 23018EF4
;;   Called from:
;;     23019302 (in ROM_InitGTK)
GenerateGTK_internal proc
	c.addi16sp	FFFFFF70
	c.swsp	s1,000000C0
	c.mv	s1,a1
	lui	a1,000230AE
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,-00000584
	c.li	a2,00000014
	c.addi4spn	a0,00000004
	c.swsp	ra,000000C4
	jal	ra,00000000230A382C
	c.beqz	s0,0000000023018F88

l23018F16:
	c.beqz	s1,0000000023018F88

l23018F18:
	c.li	a2,00000006
	c.mv	a1,s2
	c.addi4spn	a0,00000058
	jal	ra,00000000230A382C
	addi	a1,zero,+00000020
	c.mv	a0,s1
	jal	ra,00000000230166D4
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,sp,+0000005E
	jal	ra,00000000230A382C
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,00000000230166D4
	c.addi4spn	a0,00000004
	jal	ra,00000000230A4220
	c.mv	a3,a0
	addi	a7,zero,+00000020
	addi	a6,sp,+00000018
	addi	a5,zero,+00000026
	c.addi4spn	a4,00000058
	c.addi4spn	a2,00000004
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,000000002301FCCC
	c.li	a2,00000010
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,00000028
	addi	a0,s0,+00000018
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.addi4spn	a1,00000030
	addi	a0,s0,+00000010
	jal	ra,00000000230A382C

l23018F88:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.addi16sp	00000090
	c.jr	ra

;; PopulateKeyMsg: 23018F94
;;   Called from:
;;     23018A8A (in GeneratePWKMsg1)
;;     23018B44 (in GeneratePWKMsg3)
PopulateKeyMsg proc
	beq	a0,zero,000000002301909E

l23018F98:
	beq	a1,zero,000000002301909E

l23018F9C:
	lbu	a5,a1,+00000000
	andi	a1,a5,+00000004
	c.beqz	a1,0000000023019080

l23018FA6:
	sb	zero,a0,+00000015
	addi	a5,zero,+00000020

l23018FAE:
	sb	a5,a0,+00000016

l23018FB2:
	lbu	a1,a0,+00000014
	ori	a5,a1,-00000080
	sb	a5,a0,+00000014
	slli	a5,a2,00000014
	bge	a5,zero,000000002301908C

l23018FC6:
	ori	a5,a1,-00000078
	sb	a5,a0,+00000014
	andi	a5,a2,+00000080
	c.beqz	a5,0000000023018FF8

l23018FD4:
	lbu	a5,a0,+00000013
	ori	a1,a1,-00000038
	c.srli	a2,0000000F
	ori	a5,a5,+00000001
	sb	a1,a0,+00000014
	andi	a5,a5,+000000ED
	slli	a1,a2,00000001
	c.or	a5,a1
	c.slli	a2,04

l23018FF2:
	c.or	a2,a5
	sb	a2,a0,+00000013

l23018FF8:
	lw	a6,a3,+00000000
	lui	a7,00000FF0
	c.addi	a0,0000001F
	srli	a5,a6,00000018
	slli	a2,a6,00000018
	slli	a1,a6,00000008
	c.add	a2,a5
	and	a1,a1,a7
	c.add	a2,a1
	c.lui	a1,00010000
	addi	a1,a1,-00000100
	srli	a6,a6,00000008
	and	a6,a6,a1
	c.add	a2,a6
	srli	a5,a2,00000008
	sb	a2,a0,+00000FF8
	sb	a5,a0,+00000FF9
	srli	a5,a2,00000010
	c.srli	a2,00000018
	sb	a5,a0,+00000FFA
	sb	a2,a0,+00000FFB
	c.lw	a3,4(a3)
	srli	a2,a3,00000018
	slli	a5,a3,00000018
	c.add	a5,a2
	slli	a2,a3,00000008
	and	a2,a2,a7
	c.srli	a3,00000008
	c.and	a3,a1
	c.add	a5,a2
	c.add	a5,a3
	srli	a3,a5,00000008
	sb	a5,a0,+00000FFC
	sb	a3,a0,+00000FFD
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a0,+00000FFE
	sb	a5,a0,+00000FFF
	addi	a2,zero,+00000020
	c.mv	a1,a4
	jal	zero,00000000230A382C

l23019080:
	c.andi	a5,00000008
	c.beqz	a5,0000000023018FB2

l23019084:
	sb	zero,a0,+00000015
	c.li	a5,00000010
	c.j	0000000023018FAE

l2301908C:
	lbu	a5,a0,+00000013
	c.srli	a2,0000000F
	c.slli	a2,04
	andi	a5,a5,+000000EC
	ori	a5,a5,+00000003
	c.j	0000000023018FF2

l2301909E:
	c.jr	ra

;; prepareKDE: 230190A0
;;   Called from:
;;     23018B92 (in GeneratePWKMsg3)
prepareKDE proc
	beq	a0,zero,00000000230191AC

l230190A4:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a1
	c.beqz	a1,000000002301919E

l230190B4:
	c.beqz	a2,000000002301919E

l230190B6:
	lbu	a5,a0,+0000006F
	addi	s1,a0,+00000071
	c.mv	s3,a2
	c.add	s1,a5
	addi	a5,zero,-00000023
	sb	a5,s1,+00000000
	c.li	a5,00000016
	sb	a5,s1,+00000001
	lui	a5,000230CC
	lbu	a4,a5,-00000768
	addi	a5,a5,-00000768
	c.mv	s2,a0
	sb	a4,s1,+00000002
	lbu	a4,a5,+00000001
	lbu	a5,a5,+00000002
	c.li	a2,00000010
	sb	a4,s1,+00000003
	sb	a5,s1,+00000004
	c.li	a5,00000001
	sb	a5,s1,+00000005
	lbu	a5,s1,+00000006
	addi	a0,s1,+00000008
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000001
	sb	a5,s1,+00000006
	jal	ra,00000000230A382C
	lbu	a5,s3,+00000000
	addi	a0,s1,+00000018
	c.andi	a5,00000004
	c.beqz	a5,0000000023019142

l2301911C:
	lbu	a5,s1,+00000001
	c.li	a2,00000008
	addi	a1,s0,+00000018
	c.addi	a5,00000010
	sb	a5,s1,+00000001
	jal	ra,00000000230A382C
	c.li	a2,00000008
	addi	a1,s0,+00000010
	addi	a0,s1,+00000020
	jal	ra,00000000230A382C
	addi	a0,s1,+00000028

l23019142:
	lbu	s0,s2,+00000070
	lbu	a5,s2,+0000006F
	c.slli	s0,08
	c.or	s0,a5
	lbu	a5,s1,+00000001
	c.addi	s0,00000002
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	srli	a5,s0,00000008
	sb	s0,s2,+0000006F
	sub	s0,zero,s0
	sb	a5,s2,+00000070
	c.andi	s0,00000007
	c.beqz	s0,000000002301919E

l2301916E:
	addi	a5,zero,-00000023
	sb	a5,a0,+00000000
	addi	a2,s0,-00000001
	c.li	a1,00000000
	c.addi	a0,00000001
	jal	ra,00000000230A3A68
	lbu	a5,s2,+00000070
	lbu	a4,s2,+0000006F
	c.slli	a5,08
	c.or	a5,a4
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	sb	s0,s2,+0000006F
	c.srli	s0,00000008
	sb	s0,s2,+00000070

l2301919E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230191AC:
	c.jr	ra

;; Encrypt_keyData: 230191AE
;;   Called from:
;;     23018B9C (in GeneratePWKMsg3)
Encrypt_keyData proc
	c.bnez	a0,00000000230191C4

l230191B0:
	c.li	a0,00000000
	c.jr	ra

l230191B4:
	c.li	a0,00000000

l230191B6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230191C4:
	c.beqz	a1,00000000230191B0

l230191C6:
	c.beqz	a2,00000000230191B0

l230191C8:
	lbu	a5,a2,+00000000
	andi	a4,a5,+00000008
	c.beqz	a4,000000002301925A

l230191D2:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.li	a0,0000000C
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.beqz	a0,00000000230191B4

l230191EC:
	addi	a0,zero,+00000190
	jal	ra,000000002306488A
	c.sw	s1,8(a0)
	c.mv	s2,a0
	c.beqz	a0,00000000230191B4

l230191FA:
	c.mv	a1,s3
	c.li	a2,00000010
	c.mv	a0,sp
	jal	ra,00000000230A382C
	lbu	a2,s0,+00000070
	lbu	a5,s0,+0000006F
	addi	s3,s0,+00000071
	c.slli	a2,08
	c.or	a2,a5
	c.li	a4,00000000
	c.mv	a3,s3
	c.mv	a5,s2
	c.srli	a2,00000003
	c.li	a1,00000002
	c.mv	a0,sp
	jal	ra,000000002301F834
	lbu	a2,s0,+00000070
	lbu	a5,s0,+0000006F
	c.mv	a1,s2
	c.slli	a2,08
	c.or	a2,a5
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	srli	a5,a2,00000008
	sb	a2,s0,+0000006F
	sb	a5,s0,+00000070
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.lw	s1,8(a0)
	jal	ra,0000000023064972
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.li	a0,00000001
	c.j	00000000230191B6

l2301925A:
	srli	a0,a5,00000002
	c.andi	a0,00000001
	c.jr	ra

;; KeyMgmtAp_DerivePTK: 23019262
;;   Called from:
;;     23018D0A (in ProcessPWKMsg2)
KeyMgmtAp_DerivePTK proc
	c.addi16sp	FFFFFFD0
	c.lwsp	a6,000001D0
	c.swsp	s0,00000014
	c.mv	s0,a7
	c.swsp	t1,00000000
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,0000000023017450
	addi	s1,s0,+00000010
	c.mv	a1,s1
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	jal	ra,00000000230A382C
	c.addi	s0,00000018
	c.mv	a1,s0
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,00000000230A382C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; KeyData_CopyWPAWP2: 230192A2
;;   Called from:
;;     230192E8 (in KeyData_UpdateKeyMaterial)
KeyData_CopyWPAWP2 proc
	c.beqz	a1,00000000230192CA

l230192A4:
	lbu	a2,a1,+00000001
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.addi	a2,00000002
	srli	a5,a2,00000008
	sb	a2,a0,+0000006F
	sb	a5,a0,+00000070
	addi	a0,a0,+00000071
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230192CA:
	c.li	a0,00000000
	c.jr	ra

;; KeyData_UpdateKeyMaterial: 230192CE
;;   Called from:
;;     23018B68 (in GeneratePWKMsg3)
KeyData_UpdateKeyMaterial proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	c.mv	a1,a2
	andi	a4,a5,+00000018
	c.bnez	a4,00000000230192E8

l230192DE:
	andi	a5,a5,+00000020
	c.li	a4,00000001
	c.beqz	a5,00000000230192F0

l230192E6:
	c.mv	a1,a3

l230192E8:
	jal	ra,00000000230192A2
	sltu	a4,zero,a0

l230192F0:
	c.lwsp	a2,00000020
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; ROM_InitGTK: 230192F8
;;   Called from:
;;     23018970 (in KeyMgmtInit)
ROM_InitGTK proc
	c.lui	a5,00010000
	c.addi	a5,00000001
	sw	zero,a0,+00000020
	c.sw	a0,36(a5)
	jal	zero,0000000023018EF4

;; InitKeyMgmtInfo: 23019306
;;   Called from:
;;     23018E5A (in InitStaKeyInfo)
InitKeyMgmtInfo proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000001
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	sb	a5,a0,+00000006
	c.mv	s0,a0
	c.mv	s2,a2
	c.addi	a0,00000002
	c.li	a2,00000002
	c.mv	s1,a1
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,00000000230A382C
	c.li	a2,00000001
	c.mv	a1,s2
	addi	a0,s0,+00000004
	jal	ra,00000000230A382C
	c.lwsp	s0,000000C4
	sb	a4,s0,+00000005
	lbu	a5,s1,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,000000002301934A

l23019344:
	c.lwsp	a2,000000A4
	sh	a3,s0,+00000000

l2301934A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; cm_GetApInfo: 23019356
;;   Called from:
;;     23015BBE (in add_key_to_mac)
;;     2301895E (in KeyMgmtInit)
;;     230189CE (in PrepDefaultEapolMsg)
;;     23018B06 (in GeneratePWKMsg3)
;;     23018CE2 (in ProcessPWKMsg2)
;;     23018E8C (in InitGroupKey)
;;     23021860 (in ap_setpsk)
;;     230218B6 (in ap_resetConfiguration)
cm_GetApInfo proc
	c.beqz	a0,0000000023019368

l23019358:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023019366

l23019362:
	c.lw	a0,76(a0)
	c.jr	ra

l23019366:
	c.li	a0,00000000

l23019368:
	c.jr	ra

;; cm_GetApData: 2301936A
;;   Called from:
;;     230189C6 (in PrepDefaultEapolMsg)
;;     23018A44 (in GeneratePWKMsg1)
;;     23018AFE (in GeneratePWKMsg3)
;;     23018BDE (in ProcessPWKMsg4)
;;     23018C52 (in GenerateApEapolMsg)
;;     23018CDC (in ProcessPWKMsg2)
;;     23018D58 (in SendEAPOLMsgUsingBufDesc)
;;     23018D86 (in ProcessKeyMgmtDataAp)
;;     23018E3C (in InitStaKeyInfo)
;;     2301938C (in cm_AllocAPResources)
;;     23019486 (in cm_DeleteConnection)
;;     230218BE (in ap_resetConfiguration)
cm_GetApData proc
	c.beqz	a0,000000002301937E

l2301936C:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002301937C

l23019376:
	addi	a0,a0,+0000004C
	c.jr	ra

l2301937C:
	c.li	a0,00000000

l2301937E:
	c.jr	ra

;; cm_AllocAPResources: 23019380
;;   Called from:
;;     230193D0 (in cm_AllocResources)
cm_AllocAPResources proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a0
	jal	ra,000000002301936A
	c.lw	a0,4(a5)
	c.bnez	a5,00000000230193B8

l23019394:
	c.mv	s1,a0
	c.li	a0,0000000C
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.li	a0,00000001
	c.beqz	s0,00000000230193BA

l230193A2:
	addi	a0,zero,+00000120
	jal	ra,000000002306488A
	c.sw	s0,8(a0)
	c.sw	s1,4(s0)
	c.lw	s0,8(a5)
	c.mv	a0,s2
	c.sw	s1,0(a5)
	jal	ra,0000000023021944

l230193B8:
	c.li	a0,00000000

l230193BA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; cm_AllocResources: 230193C6
;;   Called from:
;;     23019406 (in cm_InitConnection)
cm_AllocResources proc
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,00000000230193D4

l230193D0:
	jal	zero,0000000023019380

l230193D4:
	c.li	a0,00000000
	c.jr	ra

;; cm_InitConnection: 230193D8
;;   Called from:
;;     2301F0CC (in apm_start_req_handler)
cm_InitConnection proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,zero,+000000EC
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s1,a3
	c.mv	s2,a4
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,0000000023019418

l230193F6:
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.mv	a0,s0
	sb	s3,s0,+00000000
	jal	ra,00000000230193C6
	c.li	a5,00000001
	bne	a0,a5,0000000023019428

l23019410:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.li	s0,00000000

l23019418:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23019428:
	beq	s2,zero,0000000023019438

l2301942C:
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000040
	jal	ra,00000000230A382C

l23019438:
	addi	s2,s0,+00000030
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,00000000230A3A68
	sb	zero,s0,+0000002C
	c.beqz	s1,0000000023019418

l2301945A:
	c.mv	a1,s1
	c.li	a2,00000006
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,s0,+00000046
	jal	ra,00000000230A382C
	c.j	0000000023019418

;; cm_DeleteConnection: 23019472
;;   Called from:
;;     2301EE6C (in apm_stop_req_handler)
cm_DeleteConnection proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	c.mv	s1,a0
	bne	a4,a5,00000000230194A4

l23019486:
	jal	ra,000000002301936A
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230194A4

l23019490:
	c.lw	a5,8(a0)
	jal	ra,0000000023064972
	c.lw	s0,4(a0)
	jal	ra,0000000023064972
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000

l230194A4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; cm_SetPeerAddr: 230194B2
;;   Called from:
;;     23014008 (in apm_assoc_req_handler)
cm_SetPeerAddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	c.beqz	a1,00000000230194CA

l230194C0:
	c.li	a2,00000006
	addi	a0,a0,+00000030
	jal	ra,00000000230A382C

l230194CA:
	c.beqz	s1,00000000230194E0

l230194CC:
	addi	a0,s0,+00000040
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.li	a2,00000006
	c.addi	sp,00000010
	jal	zero,00000000230A382C

l230194E0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; cm_SetComData: 230194EA
;;   Called from:
;;     2301F0E6 (in apm_start_req_handler)
cm_SetComData proc
	c.beqz	a1,0000000023019526

l230194EC:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230A4220
	c.lwsp	a2,00000064
	sb	a0,s0,+0000002C
	addi	a2,zero,+00000020
	addi	a0,s0,+0000000C
	jal	ra,00000000230A382C
	lbu	a0,s0,+0000002C
	c.li	a5,0000001F
	bltu	a5,a0,000000002301951E

l23019518:
	c.add	s0,a0
	sb	zero,s0,+0000000C

l2301951E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23019526:
	c.jr	ra

;; rf_set_channel: 23019528
;;   Called from:
;;     23002052 (in phy_hw_set_channel)
rf_set_channel proc
	c.mv	a0,a1
	jal	zero,0000000023003774

;; rf_dump_status: 2301952E
;;   Called from:
;;     2300DC9A (in me_tx_cfm_singleton)
rf_dump_status proc
	c.jr	ra

;; bl60x_check_mac_status: 23019530
;;   Called from:
;;     230254C6 (in stateDisconnect_enter)
bl60x_check_mac_status proc
	lui	a5,0004200F
	lbu	a3,a5,+00000331
	lui	a5,00042013
	addi	a5,a5,-00000148
	c.li	a4,00000000
	lui	a2,0008801E

l23019546:
	blt	a4,a3,0000000023019550

l2301954A:
	sw	zero,a0,+00000000
	c.j	0000000023019560

l23019550:
	addi	a5,a5,+00000028
	lw	a1,a5,-00000014
	beq	a1,a2,0000000023019564

l2301955C:
	c.li	a5,00000001
	c.sw	a0,0(a5)

l23019560:
	c.li	a0,00000000
	c.jr	ra

l23019564:
	c.addi	a4,00000001
	c.j	0000000023019546

;; helper_record_dump: 23019568
;;   Called from:
;;     230254E2 (in stateDisconnect_enter)
helper_record_dump proc
	c.addi16sp	FFFFFFD0
	lui	a0,000230AE
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	addi	a0,a0,-00000570
	lui	s0,00042013
	lui	s2,000230AE
	lui	s3,000230AE
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,-00000148
	jal	ra,000000002308234C
	c.li	s1,00000000
	lui	s6,0004200F
	lui	s7,000230AE
	lui	s4,000230AE
	lui	s5,000230AE
	addi	s2,s2,-0000044C
	addi	s3,s3,-0000046C

l230195B2:
	lbu	a5,s6,+00000331
	blt	s1,a5,00000000230195DA

l230195BA:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	lui	a0,000230AE
	addi	a0,a0,-00000474
	c.addi16sp	00000030
	jal	zero,0000000023082388

l230195DA:
	c.lw	s0,4(a3)
	c.lw	s0,0(a2)
	c.mv	a1,s1
	addi	a0,s7,-00000550
	jal	ra,0000000023082388
	c.lw	s0,20(a2)
	lbu	a4,s0,+00000017
	c.lw	s0,20(a1)
	srli	a3,a2,00000008
	andi	a3,a3,+000001FF
	andi	a2,a2,+0000003F
	addi	a0,s4,-00000534
	jal	ra,0000000023082388
	lhu	a4,s0,+0000001E
	lhu	a3,s0,+0000001C
	lhu	a2,s0,+0000001A
	lhu	a1,s0,+00000018
	addi	a0,s5,-000004F8
	c.addi	s1,00000001
	jal	ra,0000000023082388
	lhu	a4,s0,+00000026
	lhu	a3,s0,+00000024
	lhu	a2,s0,+00000022
	lhu	a1,s0,+00000020
	lui	a0,000230AE
	addi	a0,a0,-000004C4
	jal	ra,0000000023082388
	c.lw	s0,12(a4)
	c.lw	s0,8(a5)
	lui	a0,000230AE
	c.slli	a4,02
	c.slli	a5,02
	c.add	a4,s2
	c.add	a5,s3
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	addi	a0,a0,-00000488
	addi	s0,s0,+00000028
	jal	ra,0000000023082388
	c.j	00000000230195B2

;; helper_record_rc_rf_states: 2301965C
;;   Called from:
;;     230196E2 (in helper_record_all_states)
helper_record_rc_rf_states proc
	lui	a5,00040001
	lw	a3,a5,+00000220
	lui	a4,00010000
	addi	a2,a4,-00000001
	c.and	a3,a2
	c.or	a3,a4
	sw	a3,a5,+00000220
	lw	a4,a5,+00000224
	lw	a4,a5,+00000220
	lui	a3,00020000
	c.addi	sp,FFFFFFF0
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,a5,+00000220
	lw	a5,a5,+00000224
	srli	a4,a5,0000001C
	c.andi	a4,00000007
	c.srli	a5,00000019
	c.sw	a0,0(a4)
	c.andi	a5,00000007
	c.sw	a1,0(a5)
	c.addi	sp,00000010
	c.jr	ra

;; helper_record_all_states: 230196A0
;;   Called from:
;;     2300772A (in hal_machw_reset)
helper_record_all_states proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004200F
	addi	s2,s2,+00000331
	lbu	a5,s2,+00000000
	addi	a2,zero,+00000028
	c.swsp	s0,00000004
	add	a5,a5,a2
	lui	s0,00044B00
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a4,00042013
	lw	a3,s0,+00000120
	addi	a4,a4,-00000148
	add	s1,a4,a5
	c.sw	s1,4(a0)
	addi	a1,a5,+0000000C
	addi	a0,a5,+00000008
	c.sw	s1,0(a3)
	c.add	a1,a4
	c.add	a0,a4
	jal	ra,000000002301965C
	lw	a5,s0,+00000500
	c.lui	a2,FFFF0000
	c.sw	s1,16(a5)
	lw	a5,s0,+00000504
	c.sw	s1,20(a5)
	lw	a5,s0,+00000510
	andi	a5,a5,-00000100
	ori	a5,a5,+00000031
	sw	a5,s0,+00000510
	lw	a3,s0,+00000510
	addi	a5,a2,+000000FF
	c.and	a3,a5
	sw	a3,s0,+00000510
	lw	a4,s0,+0000050C
	c.sw	s1,24(a4)
	lw	a3,s0,+00000510
	andi	a3,a3,-00000100
	ori	a3,a3,+0000000B
	sw	a3,s0,+00000510
	lw	a4,s0,+00000510
	c.lui	a3,00003000
	addi	a3,a3,-00000100
	c.and	a4,a5
	c.or	a4,a3
	sw	a4,s0,+00000510
	lw	a5,s0,+0000050C
	lui	a4,00044900
	c.sw	s1,28(a5)
	addi	a5,zero,+0000033A
	c.sw	a4,116(a5)
	c.lw	a4,104(a5)
	c.and	a5,a2
	ori	a5,a5,+00000014
	c.sw	a4,104(a5)
	lui	a5,00040000
	lw	a3,a5,+000000D0
	c.li	a3,00000004
	sw	a3,a5,+000000D0
	lw	a3,a5,+000000D4
	addi	a3,a5,+00000004
	sw	a3,a5,+000000D4
	lw	a3,a5,+000000D8
	lui	a3,00080000
	c.addi	a3,00000004
	sw	a3,a5,+000000D8
	lw	a3,a5,+000000DC
	lui	a3,000C0000
	c.addi	a3,00000004
	sw	a3,a5,+000000DC
	lw	a3,a5,+000000E0
	c.andi	a3,FFFFFFFE
	sw	a3,a5,+000000E0
	lw	a3,a5,+000000E0
	srli	a2,a3,00000011
	c.srli	a3,00000001
	sh	a3,s1,+00000022
	c.lui	a3,00001000
	sh	a2,s1,+00000020
	addi	a3,a3,-000004F7
	c.sw	a4,116(a3)
	lw	a4,a5,+000000E0
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+000000E0
	lw	a5,a5,+000000E0
	srli	a4,a5,00000011
	c.srli	a5,00000001
	sh	a5,s1,+00000024
	lbu	a5,s2,+00000000
	sh	a4,s1,+00000026
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	a5,00000001
	c.andi	a5,0000000F
	sb	a5,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; phyif_utils_decode: 230197E2
;;   Called from:
;;     2300FC8E (in rxu_mgt_frame_check)
phyif_utils_decode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,+00000006
	c.li	a3,00000001
	c.mv	s0,a1
	c.andi	a4,00000007
	lbu	a5,a0,+00000013
	bgeu	a3,a4,0000000023019824

l230197FA:
	lbu	a0,a0,+00000014
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	addi	a5,zero,+0000007A
	xor	a0,a0,a5

l2301980E:
	fcvt.s.w	fa5,a0
	c.lwsp	a2,00000020
	fcvt.w.s	a0,fa5
	sb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23019824:
	c.lw	a0,0(a4)
	c.li	a3,00000003
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	bltu	a3,a4,00000000230197FA

l23019830:
	slli	a0,a5,00000018
	c.srai	a0,00000018
	sub	a0,zero,a0
	jal	ra,00000000230A307C
	lui	a5,000230AA
	lw	a2,a5,+000003B0
	lw	a3,a5,+000003B4
	jal	ra,00000000230A1B50
	jal	ra,00000000230A2EB8
	c.j	000000002301980E

;; blmac_pwr_mgt_setf: 23019854
;;   Called from:
;;     2301A1BA (in chan_pre_switch_channel)
;;     2301A1D6 (in chan_pre_switch_channel)
;;     2301A2DA (in chan_goto_idle_cb)
;;     2301A470 (in chan_ctxt_op_evt)
blmac_pwr_mgt_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	slli	s0,a0,00000002
	c.swsp	ra,00000084
	andi	a5,s0,-00000005
	c.beqz	a5,000000002301987E

l23019864:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-000006AE
	addi	a1,a1,+0000020C
	addi	a0,a0,-000003AC
	jal	ra,0000000023001234

l2301987E:
	lui	a5,00044B00
	c.lw	a5,76(a0)
	c.andi	a0,FFFFFFFB
	c.or	a0,s0
	c.sw	a5,76(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_get_next_chan: 23019892
;;   Called from:
;;     23019FB8 (in chan_cde_evt)
;;     2301A44E (in chan_ctxt_op_evt)
;;     2301AAE4 (in chan_bcn_to_evt)
chan_get_next_chan proc
	c.addi	sp,FFFFFFF0
	lui	a3,00042023
	addi	a5,a3,-000002F0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a5,32(s0)
	c.lw	a5,16(s1)
	lui	a5,00044B00
	lw	s2,a5,+00000120
	addi	a3,a3,-000002F0
	c.beqz	s0,00000000230198DC

l230198B6:
	c.beqz	s1,00000000230198C2

l230198B8:
	lbu	a4,s1,+0000000A
	c.li	a5,00000002
	beq	a4,a5,00000000230199A6

l230198C2:
	c.lui	a4,00001000
	c.lw	a3,68(a5)
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,00000000230199A6

l230198D2:
	lbu	a4,s0,+00000016
	c.li	a5,00000004
	beq	a4,a5,00000000230199A6

l230198DC:
	c.beqz	s1,000000002301994E

l230198DE:
	c.lw	s1,4(a5)
	c.lw	a3,68(a4)
	c.sub	a5,a4
	bge	a5,zero,000000002301994E

l230198E8:
	lbu	a5,s1,+00000008
	addi	a3,zero,+000005D8
	lui	a4,00042020
	add	a5,a5,a3
	addi	a4,a4,-00000088
	c.add	a4,a5
	c.lw	a4,64(s0)
	c.bnez	s0,000000002301991A

l23019902:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000129
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000224
	jal	ra,0000000023001234

l2301991A:
	c.lw	s1,4(a5)
	c.lui	a4,00001000
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,000000002301998C

l2301992A:
	lhu	a4,s0,+00000012
	lhu	a2,s0,+00000014
	c.li	a3,00000000
	bgeu	a2,a4,0000000023019940

l23019938:
	c.sub	a4,a2
	slli	a3,a4,00000010
	c.srli	a3,00000010

l23019940:
	sub	a5,a5,s2
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,00000000230199A6

l2301994E:
	lui	a3,00042023
	addi	a5,a3,-0000037C
	lbu	a2,a5,+00000016
	c.li	a4,00000000
	c.beqz	a2,0000000023019966

l2301995E:
	lhu	a4,a5,+00000012
	addi	s0,a3,-0000037C

l23019966:
	lbu	a3,a5,+00000032
	c.beqz	a3,000000002301997E

l2301996C:
	lhu	a3,a5,+0000002E
	bltu	a3,a4,000000002301997E

l23019974:
	lui	s0,00042023
	c.mv	a4,a3
	addi	s0,s0,-00000360

l2301997E:
	lbu	a3,a5,+0000004E
	c.beqz	a3,000000002301998C

l23019984:
	lhu	a5,a5,+0000004A
	bgeu	a5,a4,00000000230199B4

l2301998C:
	c.bnez	s0,00000000230199A6

l2301998E:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000175
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000224
	jal	ra,0000000023001234

l230199A6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230199B4:
	lui	s0,00042023
	addi	s0,s0,-00000344
	c.j	00000000230199A6

;; chan_conn_less_delay_prog: 230199BE
;;   Called from:
;;     2301A4A8 (in chan_ctxt_op_evt)
;;     2301A668 (in chan_scan_req)
;;     2301A746 (in chan_roc_req)
chan_conn_less_delay_prog proc
	lui	a5,00042023
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000070
	lui	a0,00042023
	addi	a0,a0,-00000298
	ori	a4,a4,+00000010
	sb	a4,a5,+00000070
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00007000
	addi	a5,a5,+00000530
	c.add	a1,a5
	jal	zero,00000000230095EE

;; chan_upd_nb_rem_slots.isra.3: 230199EE
;;   Called from:
;;     23019D94 (in chan_tbtt_switch_evt)
;;     2301A446 (in chan_ctxt_op_evt)
;;     2301AABE (in chan_bcn_to_evt)
chan_upd_nb_rem_slots.isra.3 proc
	lui	a5,00042023
	lw	a5,a5,-00000284
	lhu	a4,a0,+00000000
	c.sub	a1,a5
	c.srli	a1,0000000A
	c.slli	a1,10
	c.srli	a1,00000010
	bgeu	a4,a1,0000000023019A08

l23019A06:
	c.mv	a1,a4

l23019A08:
	sub	a1,a4,a1
	sh	a1,a0,+00000000
	c.jr	ra

;; chan_tbtt_detect_conflict.isra.8: 23019A12
;;   Called from:
;;     23019AC4 (in chan_tbtt_insert)
;;     23019AF6 (in chan_tbtt_insert)
chan_tbtt_detect_conflict.isra.8 proc
	sub	a4,a0,a1
	c.mv	a3,a0
	blt	a4,zero,0000000023019A2C

l23019A1C:
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.add	a5,a1
	c.sub	a5,a0
	c.li	a0,00000001
	bge	a5,zero,0000000023019A42

l23019A2C:
	c.sub	a1,a3
	c.li	a0,00000000
	blt	a1,zero,0000000023019A42

l23019A34:
	c.lui	a0,00003000
	addi	a0,a0,-00000800
	c.add	a0,a4
	xori	a0,a0,-00000001
	c.srli	a0,0000001F

l23019A42:
	c.jr	ra

;; chan_tbtt_insert: 23019A44
;;   Called from:
;;     23019E16 (in chan_tbtt_schedule)
;;     23019E6C (in chan_tbtt_schedule)
chan_tbtt_insert proc
	c.addi16sp	FFFFFFC0
	lui	a5,00042023
	c.swsp	s2,00000018
	lw	s2,a5,-000002E0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.mv	s3,a0
	c.li	s6,00000000
	c.li	s0,00000000
	c.li	s1,00000000
	lui	s7,000230AA
	lui	s8,000230AE
	c.li	s9,00000002

l23019A7A:
	bne	s2,zero,0000000023019A9C

l23019A7E:
	c.li	s2,00000001

l23019A80:
	addi	s4,zero,+000000FF
	lui	s5,000230AA
	lui	s7,000230AE
	c.li	s8,00000001
	lui	s9,00042023
	lui	s10,00042023
	lui	s11,00042023
	c.j	0000000023019B44

l23019A9C:
	bne	s2,s3,0000000023019AB0

l23019AA0:
	addi	a2,zero,+00000668
	addi	a1,s7,+0000020C
	addi	a0,s8,-000001E8
	jal	ra,0000000023001234

l23019AB0:
	lbu	a5,s2,+0000000A
	lw	s4,s3,+00000004
	lw	s5,s2,+00000004
	beq	a5,s9,0000000023019AEE

l23019AC0:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023019A12
	c.beqz	a0,0000000023019AE6

l23019ACA:
	lbu	a4,s3,+00000009
	lbu	a5,s2,+00000009
	bgeu	a5,a4,0000000023019AFC

l23019AD6:
	c.bnez	s0,0000000023019ADA

l23019AD8:
	c.mv	s0,s2

l23019ADA:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l23019AE0:
	lw	s2,s2,+00000000
	c.j	0000000023019A7A

l23019AE6:
	bltu	s4,s5,0000000023019A7E

l23019AEA:
	c.mv	s6,s2
	c.j	0000000023019AE0

l23019AEE:
	bltu	s4,s5,0000000023019AFC

l23019AF2:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023019A12
	c.beqz	a0,0000000023019AEA

l23019AFC:
	c.mv	s0,s3
	c.li	s1,00000001
	c.li	s2,00000000
	c.j	0000000023019A80

l23019B04:
	c.bnez	s0,0000000023019B16

l23019B06:
	addi	a2,zero,+000006B1
	addi	a1,s5,+0000020C
	addi	a0,s7,-000001D0
	jal	ra,0000000023001234

l23019B16:
	beq	s0,s3,0000000023019B38

l23019B1A:
	lbu	a5,s0,+0000000A
	bne	a5,s8,0000000023019B2E

l23019B22:
	addi	a0,s10,-000002C8
	jal	ra,00000000230096A4
	sb	zero,s0,+0000000A

l23019B2E:
	c.mv	a1,s0
	addi	a0,s9,-000002E0
	jal	ra,000000002301451A

l23019B38:
	c.mv	a1,s0
	addi	a0,s11,-000002D8
	jal	ra,0000000023014492
	c.lw	s0,0(s0)

l23019B44:
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	bne	s1,s4,0000000023019B04

l23019B4E:
	beq	s2,zero,0000000023019B7E

l23019B52:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.lwsp	a6,0000004C
	c.lwsp	a2,0000006C
	c.mv	a2,s3
	c.mv	a1,s6
	c.lwsp	a2,00000178
	c.lwsp	zero,000001D8
	lui	a0,00042023
	addi	a0,a0,-000002E0
	c.addi16sp	00000040
	jal	zero,00000000230145C6

l23019B7E:
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

;; chan_upd_ctxt_status: 23019B9C
;;   Called from:
;;     23019C5E (in chan_switch_start)
;;     23019C6E (in chan_switch_start)
;;     23019FB4 (in chan_cde_evt)
;;     2301A160 (in chan_pre_switch_channel)
;;     2301A2F6 (in chan_goto_idle_cb)
chan_upd_ctxt_status proc
	lui	a5,00044B00
	lw	a3,a5,+00000120
	c.li	a4,00000002
	bne	a1,a4,0000000023019BD4

l23019BAA:
	lbu	a4,a0,+00000017
	c.li	a5,00000000
	bltu	a1,a4,0000000023019BBC

l23019BB4:
	c.lui	a5,00001000
	addi	a5,a5,-00000060

l23019BBA:
	c.add	a5,a3

l23019BBC:
	sb	a1,a0,+00000016
	c.bnez	a5,0000000023019C22

l23019BC2:
	c.li	a5,00000003
	beq	a1,a5,0000000023019C38

l23019BC8:
	lui	a0,00042023
	addi	a0,a0,-000002A8
	jal	zero,00000000230096A4

l23019BD4:
	c.li	a2,00000004
	c.li	a5,00000000
	bne	a1,a2,0000000023019BBC

l23019BDC:
	lbu	a2,a0,+00000017
	bltu	a4,a2,0000000023019C16

l23019BE4:
	lui	a2,00042023
	addi	a2,a2,-000002F0
	lbu	a6,a2,+00000072
	c.li	a4,00000001
	bgeu	a4,a6,0000000023019C1E

l23019BF6:
	lhu	a4,a0,+00000012
	lhu	a6,a0,+00000014
	bgeu	a6,a4,0000000023019C1E

l23019C02:
	sub	a4,a4,a6
	c.slli	a4,10
	c.srli	a4,00000010
	bgeu	a1,a4,0000000023019C1E

l23019C0E:
	c.sw	a2,108(a3)
	slli	a5,a4,0000000A
	c.j	0000000023019BBA

l23019C16:
	lhu	a5,a0,+00000012
	c.slli	a5,0A
	c.j	0000000023019BBA

l23019C1E:
	c.li	a1,00000005
	c.j	0000000023019BBC

l23019C22:
	lui	a4,00042023
	sw	a0,a4,+00000D60
	lui	a0,00042023
	c.mv	a1,a5
	addi	a0,a0,-000002A8
	jal	zero,00000000230095EE

l23019C38:
	c.jr	ra

;; chan_switch_start: 23019C3A
;;   Called from:
;;     23019CEE (in chan_conn_less_delay_evt)
;;     23019DC8 (in chan_tbtt_switch_evt)
;;     23019FCC (in chan_cde_evt)
;;     2301A432 (in chan_ctxt_op_evt)
;;     2301A726 (in chan_roc_req)
;;     2301AAFC (in chan_bcn_to_evt)
;;     2301ADD0 (in chan_ctxt_link)
;;     2301AF0A (in chan_ctxt_unlink)
chan_switch_start proc
	lui	a5,00042023
	addi	a5,a5,-000002F0
	c.lw	a5,32(a3)
	bne	a3,a0,0000000023019C62

l23019C48:
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,0000000023019C94

l23019C52:
	lbu	a4,a3,+00000017
	c.li	a5,00000002
	bltu	a5,a4,0000000023019C94

l23019C5C:
	c.li	a1,00000004
	jal	zero,0000000023019B9C

l23019C62:
	c.lw	a5,36(a3)
	c.bnez	a3,0000000023019C94

l23019C66:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a1,00000002
	c.sw	a5,36(a0)
	jal	ra,0000000023019B9C
	c.li	a3,00000004
	addi	a2,zero,+000000FF
	c.li	a1,00000000
	addi	a0,zero,+00000060
	jal	ra,00000000230149A2
	lui	a5,0002301A
	addi	a5,a5,+00000284
	c.sw	a0,0(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

l23019C94:
	c.jr	ra

;; chan_conn_less_delay_evt: 23019C96
chan_conn_less_delay_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042023
	addi	a5,s0,-000002F0
	c.swsp	ra,00000084
	lbu	a5,a5,+00000070
	addi	s0,s0,-000002F0
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023019CF2

l23019CB2:
	c.andi	a5,00000004
	c.beqz	a5,0000000023019CCE

l23019CB6:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000002C0
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000310
	jal	ra,0000000023001234

l23019CCE:
	lbu	a5,s0,+00000070
	lui	a0,00042023
	addi	a0,a0,-0000030C
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sb	a5,s0,+00000070

l23019CE4:
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023019D2C

l23019CE8:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023019C3A

l23019CF2:
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023019D2C

l23019CF8:
	c.andi	a5,00000008
	c.beqz	a5,0000000023019D14

l23019CFC:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000002CE
	addi	a1,a1,+0000020C
	addi	a0,a0,-000002DC
	jal	ra,0000000023001234

l23019D14:
	lbu	a5,s0,+00000070
	lui	a0,00042023
	addi	a0,a0,-00000328
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000070
	c.j	0000000023019CE4

l23019D2C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_evt: 23019D34
;;   Called from:
;;     23019EA6 (in chan_tbtt_schedule)
chan_tbtt_switch_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a5,00044B00
	lui	s0,00042023
	lw	s3,a5,+00000120
	addi	a5,s0,-000002F0
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,0000000023019DCC

l23019D5A:
	addi	s0,s0,-000002F0
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,0000000023019DCC

l23019D66:
	lbu	a4,a0,+00000008
	addi	a3,zero,+000005D8
	lui	a5,00042020
	add	a4,a4,a3
	addi	a5,a5,-00000088
	c.add	a5,a4
	lw	s2,a5,+00000040
	c.lw	s0,36(a5)
	c.beqz	a5,0000000023019D88

l23019D84:
	bne	a5,s2,0000000023019DCC

l23019D88:
	sb	zero,a0,+00000009
	c.mv	s1,a0
	c.lw	s0,32(a0)
	c.mv	a1,s3
	c.addi	a0,00000012
	jal	ra,00000000230199EE
	lhu	a5,s2,+00000014
	c.li	a3,0000000A
	c.mv	a4,a5
	bgeu	a3,a5,0000000023019DA6

l23019DA4:
	c.li	a4,0000000A

l23019DA6:
	c.sub	a5,a4
	sh	a5,s2,+00000014
	sw	s3,s0,+0000006C
	c.li	a5,00000002
	sb	a5,s1,+0000000A
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023019DCC

l23019DBA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023019C3A

l23019DCC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_tbtt_schedule: 23019DDA
;;   Called from:
;;     2301AA50 (in chan_tbtt_switch_update)
;;     2301AAA8 (in chan_bcn_to_evt)
;;     2301AEF0 (in chan_ctxt_unlink)
chan_tbtt_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,00042023
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s0,s0,-000002F0
	c.bnez	a0,0000000023019E0E

l23019DF6:
	c.lw	s0,16(a0)
	c.bnez	a0,0000000023019E7A

l23019DFA:
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

l23019E0E:
	lui	s1,00042020
	lui	s2,0004201F
	jal	ra,0000000023019A44
	lui	s3,00042023
	addi	s1,s1,-00000088
	addi	s4,zero,+000005D8
	addi	s2,s2,-000005A0
	addi	s5,zero,+000001B0
	c.li	s6,00000004

l23019E30:
	c.lw	s0,24(a5)
	c.beqz	a5,0000000023019DF6

l23019E34:
	addi	a0,s3,-000002D8
	jal	ra,000000002301450E
	lbu	a5,a0,+00000008
	add	a5,a5,s4
	c.add	a5,s1
	lbu	a4,a5,+00000056
	c.bnez	a4,0000000023019E72

l23019E4C:
	lbu	a5,a5,+00000060
	add	a5,a5,s5
	c.add	a5,s2
	c.lw	a5,4(a5)

l23019E58:
	c.lw	a0,4(a4)
	c.add	a5,a4
	c.sw	a0,4(a5)
	lbu	a5,a0,+00000009
	bltu	s6,a5,0000000023019E6C

l23019E66:
	c.addi	a5,00000001
	sb	a5,a0,+00000009

l23019E6C:
	jal	ra,0000000023019A44
	c.j	0000000023019E30

l23019E72:
	lhu	a5,a5,+0000033E
	c.slli	a5,0A
	c.j	0000000023019E58

l23019E7A:
	lbu	a5,a0,+0000000A
	c.bnez	a5,0000000023019DFA

l23019E80:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	a0,4(a5)
	c.sub	a5,a4
	addi	a5,a5,-000007D0
	bge	a5,zero,0000000023019EAA

l23019E94:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,0000000023019D34

l23019EAA:
	c.sw	s0,48(a0)
	c.li	a5,00000001
	sb	a5,a0,+0000000A
	c.lwsp	s8,00000004
	c.lw	a0,4(a1)
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00042023
	addi	a0,a0,-000002C8
	c.addi16sp	00000020
	jal	zero,00000000230095EE

;; chan_cde_evt: 23019ED2
;;   Called from:
;;     2301A120 (in chan_pre_switch_channel)
;;     2301A4F6 (in chan_ctxt_op_evt)
;;     2301ADEA (in chan_ctxt_link)
;;     2301AEC6 (in chan_ctxt_unlink)
chan_cde_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	lui	s2,00042023
	lw	s3,a5,+00000120
	addi	a5,s2,-000002F0
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002301A080

l23019EFA:
	addi	s2,s2,-000002F0
	lbu	s0,s2,+00000070
	andi	s0,s0,+0000002C
	bne	s0,zero,000000002301A080

l23019F0A:
	lw	a1,s2,+00000068
	c.mv	s1,a0
	lui	a0,00042023
	c.add	a1,s3
	addi	a0,a0,-000002B8
	jal	ra,00000000230095EE
	lui	a4,00042021
	addi	a5,a4,-000004D8
	c.lw	a5,8(a5)
	lui	a3,00042020
	sw	s3,s2,+0000006C
	addi	s4,a4,-000004D8
	c.li	s3,00000000
	addi	a3,a3,-00000160
	addi	a1,zero,+00000024

l23019F3E:
	c.bnez	a5,0000000023019FD0

l23019F40:
	lw	a5,s2,+00000068
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	srl	a5,a5,a4
	beq	s0,a5,0000000023019F6A

l23019F52:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000268
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000360
	jal	ra,0000000023001236

l23019F6A:
	beq	s3,zero,000000002301A004

l23019F6E:
	beq	s0,s3,000000002301A004

l23019F72:
	sub	s0,s0,s3
	addi	a5,zero,+00000028
	add	s0,s0,a5
	c.li	a1,0000000A
	c.slli	s0,10
	c.srli	s0,00000010
	xor	s0,s0,s3

l23019F88:
	lw	a4,s4,+00000008
	lui	a0,00042020
	lui	a6,0004201F
	addi	a0,a0,-00000160
	addi	a7,zero,+00000024
	c.li	t1,0000000A
	addi	a6,a6,-000005A0
	addi	t3,zero,+000001B0
	addi	s0,s0,+00000032

l23019FAA:
	c.bnez	a4,000000002301A00C

l23019FAC:
	lw	a0,s2,+00000020
	c.beqz	a0,0000000023019FB8

l23019FB2:
	c.li	a1,00000001
	jal	ra,0000000023019B9C

l23019FB8:
	jal	ra,0000000023019892
	c.bnez	s1,000000002301A07C

l23019FBE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023019C3A

l23019FD0:
	c.lw	a5,64(a2)
	c.beqz	a2,000000002301A000

l23019FD4:
	lbu	a4,a5,+00000057
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	add	a4,a4,a1
	c.add	a4,a3
	lbu	a4,a4,+00000021
	c.andi	a4,00000003
	c.bnez	a4,0000000023019FF2

l23019FEC:
	lbu	a4,a5,+00000058
	c.bnez	a4,0000000023019FF8

l23019FF2:
	c.addi	s3,00000001
	andi	s3,s3,+000000FF

l23019FF8:
	sh	zero,a2,+00000010
	sh	zero,a2,+00000014

l2301A000:
	c.lw	a5,0(a5)
	c.j	0000000023019F3E

l2301A004:
	c.li	s0,00000000
	addi	a1,zero,+00000032
	c.j	0000000023019F88

l2301A00C:
	c.lw	a4,64(a3)
	c.beqz	a3,000000002301A06A

l2301A010:
	lbu	a2,a4,+00000057
	lhu	a5,a3,+00000010
	add	a2,a2,a7
	c.add	a2,a0
	lbu	a2,a2,+00000021
	c.andi	a2,00000003
	c.bnez	a2,000000002301A02C

l2301A026:
	lbu	a2,a4,+00000058
	c.bnez	a2,000000002301A06E

l2301A02C:
	c.add	a5,s0

l2301A02E:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+00000010
	sh	a5,a3,+00000012
	lbu	a5,a4,+00000056
	c.bnez	a5,000000002301A072

l2301A040:
	lbu	a5,a4,+00000060
	add	a5,a5,t3
	c.add	a5,a6
	c.lw	a5,4(a2)

l2301A04C:
	lw	a5,s2,+00000068
	srl	a5,a5,a2
	c.bnez	a5,000000002301A058

l2301A056:
	c.li	a5,00000001

l2301A058:
	andi	a5,a5,+000000FF
	add	a5,a5,t1
	lhu	a2,a3,+00000014
	c.add	a5,a2
	sh	a5,a3,+00000014

l2301A06A:
	c.lw	a4,0(a4)
	c.j	0000000023019FAA

l2301A06E:
	c.add	a5,a1
	c.j	000000002301A02E

l2301A072:
	lhu	a5,a4,+0000033E
	slli	a2,a5,0000000A
	c.j	000000002301A04C

l2301A07C:
	sw	a0,s2,+00000024

l2301A080:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_pre_switch_channel: 2301A090
;;   Called from:
;;     2301A362 (in chan_goto_idle_cb)
;;     2301A3B0 (in chan_tx_cfm)
chan_pre_switch_channel proc
	lui	a0,00042023
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-000002A8
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,00042023
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,00000000230096A4
	addi	a5,s0,-000002F0
	lbu	a5,a5,+00000070
	addi	s0,s0,-000002F0
	andi	a5,a5,+00000020
	c.beqz	a5,000000002301A0E4

l2301A0C2:
	lbu	a5,s0,+00000072
	c.li	a4,00000001
	bgeu	a4,a5,000000002301A0D8

l2301A0CC:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002301A0D8

l2301A0D0:
	sb	a4,a5,+00000016
	sw	zero,s0,+00000024

l2301A0D8:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000021
	sb	a5,s0,+00000070

l2301A0E4:
	lbu	a5,s0,+00000070
	c.lw	s0,36(a4)
	andi	a3,a5,+00000008
	c.bnez	a3,000000002301A108

l2301A0F0:
	c.andi	a5,00000004
	c.beqz	a5,000000002301A112

l2301A0F4:
	lui	a5,00042023
	addi	a5,a5,-0000030C

l2301A0FC:
	c.beqz	a4,000000002301A104

l2301A0FE:
	c.li	a3,00000001
	sb	a3,a4,+00000016

l2301A104:
	c.sw	s0,36(a5)
	c.j	000000002301A124

l2301A108:
	lui	a5,00042023
	addi	a5,a5,-00000328
	c.j	000000002301A0FC

l2301A112:
	c.bnez	a4,000000002301A124

l2301A114:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002301A1C0

l2301A11E:
	c.li	a0,00000001
	jal	ra,0000000023019ED2

l2301A124:
	c.lw	s0,36(s1)
	beq	s1,zero,000000002301A272

l2301A12A:
	lhu	a4,s1,+0000000A
	lhu	a3,s1,+00000008
	lhu	a2,s1,+00000006
	lbu	a1,s1,+00000005
	lbu	a0,s1,+00000004
	c.li	a5,00000000
	lui	s2,00044B00
	jal	ra,0000000023002102
	lb	a0,s1,+0000000C
	jal	ra,000000002300B542
	c.li	a5,00000010
	sw	a5,s2,+000000DC
	c.li	a1,00000004
	c.mv	a0,s1
	c.sw	s0,32(s1)
	sw	zero,s0,+00000024
	jal	ra,0000000023019B9C
	lbu	a5,s1,+00000017
	c.li	a4,00000003
	beq	a5,a4,000000002301A25E

l2301A16E:
	c.li	a4,00000004
	beq	a5,a4,000000002301A192

l2301A174:
	lui	a5,0004201F
	addi	a5,a5,-00000624
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002301A1C8

l2301A182:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,000000002301A1C8

l2301A188:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bgeu	a5,a4,000000002301A204

l2301A192:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	ori	a4,a4,+00000002
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	lui	a5,00044B00
	c.lw	a5,76(a5)
	c.li	a0,00000000
	c.srli	a5,00000002
	c.andi	a5,00000001
	sb	a5,s0,+00000073
	jal	ra,0000000023019854
	c.j	000000002301A228

l2301A1C0:
	bne	a4,a5,000000002301A124

l2301A1C4:
	c.lw	s0,8(a5)
	c.j	000000002301A104

l2301A1C8:
	lui	a5,00042021
	c.li	a0,00000000
	lw	s2,a5,-000004D0
	lw	s3,s0,+00000020
	jal	ra,0000000023019854

l2301A1DA:
	beq	s2,zero,000000002301A188

l2301A1DE:
	lw	a5,s2,+00000040
	bne	s3,a5,000000002301A1FE

l2301A1E6:
	lbu	a5,s2,+00000056
	c.bnez	a5,000000002301A1FE

l2301A1EC:
	lbu	a5,s2,+00000058
	c.beqz	a5,000000002301A1FE

l2301A1F2:
	lbu	a0,s2,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002300C85A

l2301A1FE:
	lw	s2,s2,+00000000
	c.j	000000002301A1DA

l2301A204:
	lui	a5,00042021
	lw	s2,a5,-000004D0
	lui	s3,00042020
	addi	s3,s3,-00000160
	addi	s4,zero,+00000024
	c.li	s5,00000001

l2301A21A:
	bne	s2,zero,000000002301A23C

l2301A21E:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bltu	a5,a4,000000002301A192

l2301A228:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023007EF0

l2301A23C:
	lw	a5,s2,+00000040
	bne	s1,a5,000000002301A258

l2301A244:
	lbu	a5,s2,+00000057
	c.mv	a0,s2
	add	a5,a5,s4
	c.add	a5,s3
	sb	s5,a5,+00000023
	jal	ra,000000002300D454

l2301A258:
	lw	s2,s2,+00000000
	c.j	000000002301A21A

l2301A25E:
	sw	zero,s2,+00000220
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	addi	a0,zero,+00000061
	jal	ra,0000000023014A78
	c.j	000000002301A21E

l2301A272:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; chan_goto_idle_cb: 2301A284
chan_goto_idle_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lui	s1,00042023
	jal	ra,00000000230083E2
	addi	a5,s1,-000002F0
	lw	s2,a5,+00000020
	beq	s2,zero,000000002301A34E

l2301A2AC:
	addi	s1,s1,-000002F0
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000020
	c.bnez	a5,000000002301A34E

l2301A2BA:
	lui	a5,0004201F
	addi	a5,a5,-00000624
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002301A2CE

l2301A2C8:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.beqz	a5,000000002301A34E

l2301A2CE:
	lui	a5,00042021
	c.li	a0,00000001
	lw	s0,a5,-000004D0
	c.li	s3,00000000
	jal	ra,0000000023019854
	addi	s4,zero,+000000FF
	c.li	s5,00000006
	lui	s6,0002301A

l2301A2E8:
	c.bnez	s0,000000002301A312

l2301A2EA:
	sb	s3,s1,+00000071
	beq	s3,zero,000000002301A34E

l2301A2F2:
	c.lw	s1,36(a0)
	c.li	a1,00000003
	jal	ra,0000000023019B9C
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	jal	zero,0000000023007EF0

l2301A312:
	c.lw	s0,64(a5)
	bne	s2,a5,000000002301A34A

l2301A318:
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002301A34A

l2301A31E:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002301A34A

l2301A324:
	lbu	a5,s0,+00000060
	beq	a5,s4,000000002301A34A

l2301A32C:
	lbu	s7,s2,+00000016
	sb	s5,s2,+00000016
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	addi	a1,s6,+00000366
	jal	ra,000000002300C85A
	c.bnez	a0,000000002301A346

l2301A344:
	c.addi	s3,00000001

l2301A346:
	sb	s7,s2,+00000016

l2301A34A:
	c.lw	s0,0(s0)
	c.j	000000002301A2E8

l2301A34E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	jal	zero,000000002301A090

;; chan_tx_cfm: 2301A366
chan_tx_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042023
	addi	a5,s0,-000002F0
	c.swsp	ra,00000084
	lbu	a5,a5,+00000071
	addi	s0,s0,-000002F0
	c.bnez	a5,000000002301A396

l2301A37E:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000048F
	addi	a1,a1,+0000020C
	addi	a0,a0,-000001C0
	jal	ra,0000000023001234

l2301A396:
	lbu	a5,s0,+00000071
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000071
	c.bnez	a5,000000002301A3B4

l2301A3A6:
	jal	ra,00000000230083E2
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301A090

l2301A3B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_ctxt_op_evt: 2301A3BC
;;   Called from:
;;     2301A7CC (in chan_roc_req)
chan_ctxt_op_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s2,a0,+00000016
	c.li	a5,00000002
	bltu	s2,a5,000000002301A3DE

l2301A3D2:
	c.li	s3,00000003
	bgeu	s3,s2,000000002301A3EC

l2301A3D8:
	c.li	a4,00000004
	beq	s2,a4,000000002301A402

l2301A3DE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301A3EC:
	lui	a5,00042023
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000070
	ori	a4,a4,+00000020
	sb	a4,a5,+00000070
	c.j	000000002301A3DE

l2301A402:
	lbu	a4,a0,+00000017
	lui	s0,00042023
	c.mv	s1,a0
	addi	s0,s0,-000002F0
	bltu	a5,a4,000000002301A456

l2301A414:
	c.li	a5,00000001
	sb	a5,a0,+00000016
	lbu	a4,s0,+00000072
	bne	a4,a5,000000002301A436

l2301A422:
	c.lw	s0,8(s1)

l2301A424:
	c.mv	a0,s1

l2301A426:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023019C3A

l2301A436:
	bgeu	a5,a4,000000002301A424

l2301A43A:
	lui	a5,00044B00
	lw	s2,a5,+00000120
	c.addi	a0,00000012
	c.mv	a1,s2
	jal	ra,00000000230199EE
	sw	s2,s0,+0000006C
	jal	ra,0000000023019892
	c.mv	s1,a0
	c.j	000000002301A424

l2301A456:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000073
	jal	ra,0000000023019854
	sw	zero,s0,+00000020
	lbu	a5,s1,+00000017
	bne	a5,s3,000000002301A4BA

l2301A480:
	lbu	a5,s0,+00000070
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	c.andi	a5,FFFFFFF7
	addi	a0,zero,+00000062
	sb	a5,s0,+00000070
	jal	ra,0000000023014A78

l2301A498:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000017
	lbu	a5,s0,+00000070
	andi	a4,a5,+00000003
	c.beqz	a4,000000002301A4DC

l2301A4A8:
	jal	ra,00000000230199BE

l2301A4AC:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bne	a4,a5,000000002301A4E4

l2301A4B6:
	c.lw	s0,8(a0)
	c.j	000000002301A426

l2301A4BA:
	bne	a5,s2,000000002301A498

l2301A4BE:
	lhu	a5,s1,+0000000E
	c.bnez	a5,000000002301A4D0

l2301A4C4:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000041
	sb	a5,s0,+00000070

l2301A4D0:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	000000002301A498

l2301A4DC:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	000000002301A4AC

l2301A4E4:
	bgeu	a5,a4,000000002301A4FA

l2301A4E8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023019ED2

l2301A4FA:
	jal	ra,00000000230083E2
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300839C

;; chan_init: 2301A50E
;;   Called from:
;;     23007EE0 (in mm_init)
chan_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042023
	c.swsp	s3,0000008C
	addi	a2,zero,+00000074
	lui	s3,00042023
	c.li	a1,00000000
	addi	a0,s0,-000002F0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	addi	s1,s3,-0000037C
	jal	ra,00000000230A3A68
	c.li	s2,00000000
	addi	s3,s3,-0000037C
	addi	s5,zero,+000000FF
	c.li	s6,FFFFFFFF
	c.li	s7,00000002
	c.li	s8,00000003
	c.li	s4,00000005

l2301A550:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	sh	s5,s1,+0000000E
	sb	s6,s1,+00000017
	blt	s7,s2,000000002301A5C0

l2301A566:
	c.mv	a1,s1
	addi	a0,s0,-000002F0
	jal	ra,0000000023014492

l2301A570:
	c.addi	s2,00000001
	c.addi	s1,0000001C
	bne	s2,s4,000000002301A550

l2301A578:
	lui	a4,0002301A
	addi	a5,s0,-000002F0
	addi	a4,a4,-000002CC
	c.sw	a5,44(a4)
	lui	a4,0002301A
	addi	a4,a4,-0000012E
	c.sw	a5,60(a4)
	lui	a4,0002301A
	addi	a4,a4,+000003BC
	c.sw	a5,76(a4)
	lui	a4,0002301A
	addi	a4,a4,-0000036A
	sw	zero,a5,+00000040
	c.sw	a5,92(a4)
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

l2301A5C0:
	bne	s2,s8,000000002301A570

l2301A5C4:
	sh	zero,s3,+0000005E
	sb	zero,s3,+00000059
	c.j	000000002301A570

;; chan_scan_req: 2301A5CE
;;   Called from:
;;     2300AC18 (in scan_set_channel_request)
chan_scan_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042023
	addi	a5,s0,-0000037C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s2,a2
	lbu	a2,a5,+0000006B
	addi	a5,zero,+000000FF
	c.mv	s3,a0
	c.mv	s1,a1
	addi	s0,s0,-0000037C
	beq	a2,a5,000000002301A61A

l2301A5F8:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-0000075F
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000210
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,0000000023001234
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4

l2301A61A:
	addi	a5,zero,+000000FF
	sb	a4,s0,+0000006D
	lui	a4,00042023
	addi	a4,a4,-000002F0
	sh	a5,s0,+00000062
	addi	a5,zero,+00000301
	sh	a5,s0,+0000006A
	lbu	a5,a4,+00000070
	c.srli	a3,0000000A
	sh	a3,s0,+00000066
	ori	a3,a5,+00000002
	sb	s3,s0,+00000058
	sh	s1,s0,+0000005C
	sh	s1,s0,+0000005A
	sb	s2,s0,+00000060
	sb	a3,a4,+00000070
	c.andi	a5,00000010
	c.bnez	a5,000000002301A66C

l2301A65C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,00000000230199BE

l2301A66C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; chan_roc_req: 2301A67A
;;   Called from:
;;     2301B2F2 (in mm_remain_on_channel_req_handler)
chan_roc_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+00000000
	c.beqz	s1,000000002301A694

l2301A68A:
	c.li	a5,00000001
	beq	s1,a5,000000002301A74C

l2301A690:
	c.li	s1,00000001
	c.j	000000002301A72A

l2301A694:
	lui	a5,00042023
	addi	a5,a5,-0000037C
	lbu	a3,a5,+00000087
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002301A690

l2301A6A8:
	c.li	a4,00000004
	sb	a4,a5,+00000087
	lbu	a4,a0,+00000002
	sb	a4,a5,+00000074
	lbu	a4,a0,+00000003
	sb	a4,a5,+00000075
	lhu	a4,a0,+00000004
	sh	a4,a5,+00000076
	lhu	a4,a0,+00000006
	sh	a4,a5,+00000078
	lhu	a4,a0,+00000008
	sh	a1,a5,+0000007E
	sh	a4,a5,+0000007A
	c.li	a4,00000001
	sb	a4,a5,+00000086
	c.lw	a0,12(a3)
	addi	a4,zero,+000003E8
	add	a4,a4,a3
	c.srli	a4,0000000A
	sh	a4,a5,+00000082
	lbu	a4,a0,+00000001
	sb	a4,a5,+00000089
	lb	a4,a0,+00000010
	sb	a4,a5,+0000007C
	lui	a5,00042023
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000070
	c.bnez	a1,000000002301A738

l2301A70E:
	ori	a4,a4,+00000004
	sb	a4,a5,+00000070
	c.lw	a5,36(a5)
	c.beqz	a5,000000002301A71E

l2301A71A:
	c.li	s1,00000000
	c.j	000000002301A72A

l2301A71E:
	lui	a0,00042023
	addi	a0,a0,-0000030C
	jal	ra,0000000023019C3A

l2301A72A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301A738:
	ori	a3,a4,+00000001
	sb	a3,a5,+00000070
	andi	s1,a4,+00000010
	c.bnez	s1,000000002301A71A

l2301A746:
	jal	ra,00000000230199BE
	c.j	000000002301A72A

l2301A74C:
	lui	s2,00042023
	addi	a5,s2,-0000037C
	lbu	a4,a5,+00000087
	addi	a5,zero,+000000FF
	addi	s2,s2,-0000037C
	beq	a4,a5,000000002301A71A

l2301A764:
	lbu	a5,s2,+00000086
	lui	s0,00042023
	c.li	a4,00000003
	addi	s0,s0,-000002F0
	bltu	a4,a5,000000002301A7B2

l2301A776:
	c.li	a4,00000002
	bgeu	a5,a4,000000002301A7DE

l2301A77C:
	beq	a5,s1,000000002301A7D2

l2301A780:
	c.li	a5,FFFFFFFF
	sb	a5,s2,+00000087
	lbu	a5,s0,+00000070
	c.li	a4,00000010
	andi	a3,a5,+00000012
	bne	a3,a4,000000002301A71A

l2301A794:
	lui	a0,00042023
	c.andi	a5,FFFFFFEF
	addi	a0,a0,-00000298
	sb	a5,s0,+00000070
	jal	ra,00000000230096A4
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	000000002301A71A

l2301A7B2:
	c.li	a4,00000004
	bne	a5,a4,000000002301A780

l2301A7B8:
	lui	a0,00042023
	addi	a0,a0,-000002A8
	jal	ra,00000000230096A4
	lui	a0,00042023
	addi	a0,a0,-0000030C
	jal	ra,000000002301A3BC
	c.j	000000002301A780

l2301A7D2:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000070
	c.j	000000002301A780

l2301A7DE:
	lbu	a5,s0,+00000070
	sw	zero,s0,+00000024
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	000000002301A780

;; chan_ctxt_add: 2301A7EE
;;   Called from:
;;     2300D5E4 (in vif_mgmt_switch_channel)
;;     2300E1DC (in me_add_chan_ctx)
;;     23011BC0 (in sm_add_chan_ctx)
;;     2301ED12 (in apm_start_cac_req_handler)
chan_ctxt_add proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042023
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s4,a1
	addi	s3,a5,-0000037C
	c.li	s2,00000000
	addi	s0,a5,-0000037C
	addi	s6,zero,+000000FF
	c.li	s5,00000003

l2301A818:
	lbu	a5,s3,+00000017
	beq	a5,s6,000000002301A846

l2301A820:
	c.li	a2,00000008
	addi	a1,s3,+00000004
	c.mv	a0,s1
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002301A846

l2301A82E:
	sb	s2,s4,+00000000

l2301A832:
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

l2301A846:
	c.addi	s2,00000001
	c.addi	s3,0000001C
	bne	s2,s5,000000002301A818

l2301A84E:
	lui	a0,00042023
	addi	a0,a0,-000002F0
	jal	ra,000000002301450E
	c.mv	a4,a0
	c.li	a0,00000001
	c.beqz	a4,000000002301A832

l2301A860:
	sub	a5,a4,s0
	lui	s0,000B6DB7
	c.srai	a5,00000002
	addi	s0,s0,-00000249
	add	a5,a5,s0
	c.li	a0,00000000
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000017
	sb	a5,s4,+00000000
	lbu	a5,s1,+00000000
	sb	a5,a4,+00000004
	lbu	a5,s1,+00000001
	sb	a5,a4,+00000005
	lhu	a5,s1,+00000004
	sh	a5,a4,+00000008
	lhu	a5,s1,+00000006
	sh	a5,a4,+0000000A
	lhu	a5,s1,+00000002
	sh	a5,a4,+00000006
	lb	a5,s1,+00000008
	sb	a5,a4,+0000000C
	c.j	000000002301A832

;; chan_ctxt_del: 2301A8B2
;;   Called from:
;;     2301AEEA (in chan_ctxt_unlink)
chan_ctxt_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,0000001C
	add	s1,a0,s1
	lui	a5,00042023
	addi	a4,a5,-0000037C
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	addi	s0,a5,-0000037C
	c.add	s1,a4
	lbu	a3,s1,+00000017
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002301A8F8

l2301A8DE:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-00000677
	addi	a1,a1,+0000020C
	addi	a0,a0,-000002A8
	jal	ra,0000000023001234

l2301A8F8:
	c.li	a5,0000001C
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a5,a5,+00000018
	c.beqz	a5,000000002301A920

l2301A906:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-00000675
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000280
	jal	ra,0000000023001234

l2301A920:
	lui	a0,00042023
	c.mv	a1,s1
	addi	a0,a0,-000002F0
	jal	ra,0000000023014492
	c.mv	a0,s1
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a0,0000001C
	add	a0,s2,a0
	addi	a5,zero,+000000FF
	c.add	s0,a0
	sh	a5,s0,+0000000E
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000017
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; chan_ctxt_update: 2301A95A
;;   Called from:
;;     2301BC7A (in mm_hw_config_handler)
chan_ctxt_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a2,0000001C
	lbu	a3,a0,+00000001
	add	a4,a4,a2
	lui	a5,00042023
	addi	a5,a5,-0000037C
	c.add	a5,a4
	sb	a3,a5,+00000004
	lbu	a4,a0,+00000002
	sb	a4,a5,+00000005
	lhu	a4,a0,+00000006
	sh	a4,a5,+00000008
	lhu	a4,a0,+00000008
	sh	a4,a5,+0000000A
	lhu	a4,a0,+00000004
	sh	a4,a5,+00000006
	lb	a4,a0,+0000000A
	sb	a4,a5,+0000000C
	lui	a4,00042023
	lw	s1,a4,-000002D0
	bne	s1,a5,000000002301A9F0

l2301A9B2:
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300A222
	c.li	a0,00000000
	jal	ra,000000002300A38A
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000001
	lhu	a4,s0,+00000008
	lhu	a3,s0,+00000006
	lhu	a2,s0,+00000004
	lbu	a1,s0,+00000002
	c.li	a5,00000000
	jal	ra,0000000023002102
	c.lwsp	s0,00000004
	lb	a0,s1,+0000000C
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300B542

l2301A9F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_update: 2301A9FA
;;   Called from:
;;     23007FDE (in mm_tbtt_evt)
;;     23008BE6 (in mm_sta_tbtt)
;;     2300A5AC (in rxl_cntrl_evt)
chan_tbtt_switch_update proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002301AA54

l2301A9FE:
	lbu	a5,a5,+00000016
	c.beqz	a5,000000002301AA54

l2301AA04:
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000063C
	c.add	a1,a5
	c.lw	a0,72(a5)
	beq	a5,a1,000000002301AA54

l2301AA12:
	lui	a5,00042023
	c.sw	a0,72(a1)
	lbu	a4,a5,-0000027E
	c.li	a5,00000001
	bgeu	a5,a4,000000002301AA54

l2301AA22:
	lbu	a4,a0,+0000004E
	c.li	a5,00000002
	beq	a4,a5,000000002301AA54

l2301AA2C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,a0,+00000044
	sb	zero,a0,+0000004E
	lui	a0,00042023
	c.mv	a1,s0
	addi	a0,a0,-000002E0
	jal	ra,000000002301451A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023019DDA

l2301AA54:
	c.jr	ra

;; chan_bcn_to_evt: 2301AA56
;;   Called from:
;;     2300CF90 (in vif_mgmt_bcn_to_evt)
chan_bcn_to_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	lbu	a4,a0,+0000004E
	lw	s1,a5,+00000120
	c.li	a5,00000002
	bne	a4,a5,000000002301AB00

l2301AA76:
	addi	s3,a0,+00000044
	lui	s0,00042023
	sb	zero,a0,+0000004E
	lui	a0,00042023
	addi	s4,s0,-000002F0
	c.mv	a1,s3
	addi	a0,a0,-000002E0
	lw	s2,s4,+00000020
	jal	ra,000000002301451A
	lbu	a4,s4,+00000072
	c.li	a5,00000001
	addi	s0,s0,-000002F0
	bgeu	a5,a4,000000002301AB00

l2301AAA6:
	c.mv	a0,s3
	jal	ra,0000000023019DDA
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002301AB00

l2301AAB4:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002301AB00

l2301AAB8:
	c.mv	a1,s1
	addi	a0,s2,+00000012
	jal	ra,00000000230199EE
	lhu	a4,s2,+00000014
	c.beqz	a4,000000002301AAE2

l2301AAC8:
	c.lw	s0,108(a5)
	sub	a5,s1,a5
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a4,a5,000000002301AADA

l2301AAD8:
	c.mv	a5,a4

l2301AADA:
	sub	a5,a4,a5
	sh	a5,s2,+00000014

l2301AAE2:
	c.sw	s0,108(s1)
	jal	ra,0000000023019892
	c.lw	s0,32(a5)
	beq	a5,a0,000000002301AB00

l2301AAEE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023019C3A

l2301AB00:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_bcn_detect_start: 2301AB10
;;   Called from:
;;     23008C38 (in mm_sta_tbtt)
;;     2301BBF8 (in mm_hw_config_handler)
chan_bcn_detect_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,64(s0)
	c.mv	s3,a0
	c.bnez	s0,000000002301AB3C

l2301AB22:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-000004E7
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000370
	jal	ra,0000000023001234

l2301AB3C:
	lui	s1,00042023
	addi	s1,s1,-000002F0
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000040
	c.bnez	a5,000000002301ABDC

l2301AB4E:
	lbu	a4,s1,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002301ABDC

l2301AB58:
	c.li	a3,00000014
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,zero,+00000046
	lbu	s2,s3,+00000060
	jal	ra,00000000230149A2
	sb	zero,a0,+00000000
	lbu	a4,s3,+00000057
	addi	a3,zero,+000001B0
	add	s2,s2,a3
	sb	a4,a0,+00000001
	lbu	a4,s0,+00000004
	c.lui	a3,FFFFF000
	addi	a3,a3,-00000388
	sb	a4,a0,+00000002
	lbu	a4,s0,+00000005
	sb	a4,a0,+00000003
	lhu	a4,s0,+00000006
	sh	a4,a0,+00000004
	lhu	a4,s0,+00000008
	sh	a4,a0,+00000006
	lhu	a4,s0,+0000000A
	sh	a4,a0,+00000008
	lui	a4,0004201F
	addi	a4,a4,-000005A0
	c.add	a4,s2
	c.lw	a4,4(a4)
	c.add	a4,a3
	addi	a3,zero,+000003E8
	srl	a4,a4,a3
	c.sw	a0,12(a4)
	lb	a4,s0,+0000000C
	sb	a4,a0,+00000010
	jal	ra,0000000023014A0E
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000040
	sb	a5,s1,+00000070

l2301ABDC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_is_on_channel: 2301ABEA
;;   Called from:
;;     23008BEC (in mm_sta_tbtt)
;;     230097E2 (in ps_uapsd_timer_handle)
;;     230098C6 (in ps_dpsm_update)
;;     23009A9C (in ps_set_mode)
;;     2300A0C2 (in bl_sleep)
;;     2300B5E4 (in tpc_update_vif_tx_power)
;;     2301AC1E (in chan_is_tx_allowed)
chan_is_on_channel proc
	lui	a5,00042023
	lw	a5,a5,-000002D0
	c.beqz	a5,000000002301AC16

l2301ABF4:
	lbu	a3,a5,+00000017
	c.li	a4,00000002
	bltu	a4,a3,000000002301AC08

l2301ABFE:
	c.lw	a0,64(a0)
	c.sub	a0,a5

l2301AC02:
	sltiu	a0,a0,+00000001
	c.jr	ra

l2301AC08:
	lbu	a5,a5,+00000019
	lbu	a0,a0,+00000057
	sub	a0,a5,a0
	c.j	000000002301AC02

l2301AC16:
	c.li	a0,00000000
	c.jr	ra

;; chan_is_tx_allowed: 2301AC1A
;;   Called from:
;;     2300B99C (in txl_cntrl_tx_check)
chan_is_tx_allowed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301ABEA
	c.beqz	a0,000000002301AC3C

l2301AC24:
	lui	a5,00042023
	addi	a5,a5,-000002F0
	c.lw	a5,36(a4)
	c.beqz	a4,000000002301AC3C

l2301AC30:
	c.lw	a5,32(a5)
	lbu	a0,a5,+00000016
	c.addi	a0,FFFFFFFA
	sltiu	a0,a0,+00000001

l2301AC3C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; chan_is_on_operational_channel: 2301AC42
;;   Called from:
;;     23009278 (in mm_bcn_transmit)
chan_is_on_operational_channel proc
	lui	a5,00042023
	lw	a4,a5,-000002D0
	c.li	a5,00000000
	c.beqz	a4,000000002301AC62

l2301AC4E:
	lbu	a2,a4,+00000017
	c.li	a3,00000002
	c.li	a5,00000000
	bltu	a3,a2,000000002301AC62

l2301AC5A:
	c.lw	a0,64(a5)
	c.sub	a5,a4
	sltiu	a5,a5,+00000001

l2301AC62:
	c.mv	a0,a5
	c.jr	ra

;; chan_update_tx_power: 2301AC66
;;   Called from:
;;     2300B5DE (in tpc_update_vif_tx_power)
;;     2301ADE4 (in chan_ctxt_link)
;;     2301AF00 (in chan_ctxt_unlink)
chan_update_tx_power proc
	lbu	a5,a0,+00000018
	c.beqz	a5,000000002301ACD6

l2301AC6C:
	lui	a4,00042020
	addi	a5,a4,-00000088
	c.lw	a5,64(a3)
	addi	a4,a4,-00000088
	addi	a5,zero,+0000007F
	bne	a0,a3,000000002301ACA0

l2301AC82:
	lbu	a3,a4,+00000059
	lbu	a5,a4,+0000005A
	slli	a2,a3,00000018
	slli	a1,a5,00000018
	c.srai	a1,00000018
	c.srai	a2,00000018
	bge	a2,a1,000000002301AC9C

l2301AC9A:
	c.mv	a5,a3

l2301AC9C:
	c.slli	a5,18
	c.srai	a5,00000018

l2301ACA0:
	lw	a3,a4,+00000618
	bne	a0,a3,000000002301ACC6

l2301ACA8:
	lbu	a3,a4,+00000632
	slli	a2,a3,00000018
	c.srai	a2,00000018
	bge	a5,a2,000000002301ACB8

l2301ACB6:
	c.mv	a3,a5

l2301ACB8:
	lb	a4,a4,+00000631
	slli	a5,a3,00000018
	c.srai	a5,00000018
	blt	a4,a5,000000002301ACD0

l2301ACC6:
	addi	a4,zero,+0000007F
	bne	a5,a4,000000002301ACD2

l2301ACCE:
	c.jr	ra

l2301ACD0:
	c.mv	a5,a4

l2301ACD2:
	sb	a5,a0,+0000000C

l2301ACD6:
	c.jr	ra

;; chan_ctxt_link: 2301ACD8
;;   Called from:
;;     2300D60A (in vif_mgmt_switch_channel)
;;     2300D62E (in vif_mgmt_switch_channel)
;;     2301E482 (in scanu_join_cfm_handler)
;;     2301ED22 (in apm_start_cac_req_handler)
;;     2301EFA2 (in apm_start_req_handler)
chan_ctxt_link proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.li	s2,0000001C
	c.swsp	s3,00000084
	add	s2,a1,s2
	c.mv	s3,a0
	addi	a4,zero,+000005D8
	c.swsp	s1,00000088
	c.mv	s1,a1
	lui	a1,00042023
	addi	a5,a1,-0000037C
	lui	a0,00042020
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	add	a4,s3,a4
	c.add	s2,a5
	addi	a5,a0,-00000088
	c.swsp	ra,0000008C
	addi	s0,a1,-0000037C
	addi	s4,a0,-00000088
	c.add	a5,a4
	c.lw	a5,64(a5)
	c.beqz	a5,000000002301AD32

l2301AD18:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-00000664
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000025C
	jal	ra,0000000023001234

l2301AD32:
	c.li	a5,0000001C
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a4,a5,+00000017
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002301AD60

l2301AD46:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-00000663
	addi	a1,a1,+0000020C
	addi	a0,a0,-000002A8
	jal	ra,0000000023001234

l2301AD60:
	c.li	a1,0000001C
	add	a1,s1,a1
	addi	a0,zero,+000005D8
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	add	a0,s3,a0
	c.add	a1,s0
	lui	s0,00042023
	lbu	s1,a1,+00000018
	addi	s0,s0,-000002F0
	c.lw	s0,104(a5)
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.add	a5,a4
	c.sw	s0,104(a5)
	c.add	a0,s4
	sw	s2,a0,+00000040
	sb	s1,a1,+00000018
	c.li	a5,00000001
	bne	s1,a5,000000002301ADD4

l2301AD9E:
	lbu	a5,s0,+00000072
	lui	a0,00042023
	sb	s1,a1,+00000016
	c.addi	a5,00000001
	c.mv	a1,s2
	addi	a0,a0,-000002E8
	sb	a5,s0,+00000072
	jal	ra,0000000023014492
	c.lw	s0,36(a5)
	c.bnez	a5,000000002301ADF0

l2301ADBE:
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002301ADD4

l2301ADC6:
	lbu	a5,s0,+00000072
	bne	a5,s1,000000002301ADE8

l2301ADCE:
	c.mv	a0,s2
	jal	ra,0000000023019C3A

l2301ADD4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002301AC66

l2301ADE8:
	c.li	a0,00000000
	jal	ra,0000000023019ED2
	c.j	000000002301ADD4

l2301ADF0:
	sb	s1,a5,+00000016
	sw	zero,s0,+00000024
	c.j	000000002301ADD4

;; chan_ctxt_unlink: 2301ADFA
;;   Called from:
;;     2300D59A (in vif_mgmt_switch_channel)
;;     2301182C (in sm_delete_resources)
;;     2301363E (in apm_stop)
;;     2301EC0C (in apm_stop_cac_req_handler)
chan_ctxt_unlink proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042020
	addi	a5,s1,-00000088
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s2,a0
	addi	s1,s1,-00000088
	c.add	a5,a4
	c.lw	a5,64(s0)
	c.bnez	s0,000000002301AE3A

l2301AE20:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-0000061C
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000023C
	jal	ra,0000000023001234

l2301AE3A:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	a0,00042023
	addi	a0,a0,-000002E0
	addi	a1,s2,+00000044
	c.add	a1,s1
	c.add	s1,s2
	jal	ra,000000002301451A
	sb	zero,s1,+0000004E
	sw	zero,s1,+00000040
	lbu	a5,s0,+00000018
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000018
	lbu	a5,s0,+00000016
	c.beqz	a5,000000002301AEE0

l2301AE6E:
	lui	s1,00042023
	addi	a3,s1,-000002F0
	c.lw	a3,104(a5)
	c.lui	a4,FFFF4000
	addi	a4,a4,-00000800
	c.add	a5,a4
	c.sw	a3,104(a5)
	lbu	a5,s0,+00000018
	addi	s1,s1,-000002F0
	c.bnez	a5,000000002301AEEE

l2301AE8C:
	lui	a0,00042023
	c.mv	a1,s0
	addi	a0,a0,-000002E8
	lw	s2,s1,+00000024
	jal	ra,000000002301451A
	sb	zero,s0,+00000016
	lbu	a5,s1,+00000072
	c.lw	s1,32(a4)
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s1,+00000072
	bne	a4,s0,000000002301AECC

l2301AEB6:
	sw	zero,s1,+00000020

l2301AEBA:
	bne	s2,zero,000000002301AED4

l2301AEBE:
	c.li	a4,00000001
	bgeu	a4,a5,000000002301AF04

l2301AEC4:
	c.li	a0,00000000
	jal	ra,0000000023019ED2
	c.j	000000002301AEE0

l2301AECC:
	bne	s2,s0,000000002301AEBA

l2301AED0:
	sw	zero,s1,+00000024

l2301AED4:
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000020
	sb	a5,s1,+00000070

l2301AEE0:
	lbu	a5,s0,+00000018
	c.bnez	a5,000000002301AEEE

l2301AEE6:
	lbu	a0,s0,+00000017
	jal	ra,000000002301A8B2

l2301AEEE:
	c.li	a0,00000000
	jal	ra,0000000023019DDA
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002301AC66

l2301AF04:
	bne	a5,a4,000000002301AEE0

l2301AF08:
	c.lw	s1,8(a0)
	jal	ra,0000000023019C3A
	c.j	000000002301AEE0

;; hal_dma_init: 2301AF10
;;   Called from:
;;     23007EE4 (in mm_init)
hal_dma_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042023
	addi	a0,s0,-0000027C
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023014488
	lui	s1,00044A00
	lw	a5,s1,+000000A4
	lui	a0,00042023
	addi	s0,s0,-0000027C
	addi	a0,a0,-00000274
	sh	a5,s0,+00000018
	jal	ra,0000000023014488
	lw	a5,s1,+000000AC
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hal_dma_push: 2301AF52
;;   Called from:
;;     2301177C (in scanu_start)
hal_dma_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,8(a5)
	c.mv	s1,a1
	c.lw	a0,4(s0)
	c.beqz	a5,000000002301AFC6

l2301AF62:
	lui	a5,000230CC
	addi	a5,a5,-00000730
	c.add	a5,a1
	lbu	a5,a5,+00000000
	ori	a4,a5,+00000010
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00001000
	c.or	a5,a4
	sh	a5,s0,+0000000A
	csrrci	zero,mstatus,00000008
	slli	a5,a1,00000003
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,-0000027C
	c.add	a0,a5
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008

l2301AF9C:
	lhu	a2,s0,+00000008
	c.lw	s0,0(a1)
	c.lw	s0,4(a0)
	jal	ra,00000000230A382C
	c.beqz	s1,000000002301AFCC

l2301AFAA:
	c.li	a5,00000001
	beq	s1,a5,000000002301AFDC

l2301AFB0:
	lui	s0,000230AE

l2301AFB4:
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	addi	a0,s0,-000001AC
	jal	ra,000000002308234C
	c.j	000000002301AFB4

l2301AFC6:
	sh	zero,s0,+0000000A
	c.j	000000002301AF9C

l2301AFCC:
	addi	a0,zero,+00000040

l2301AFD0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230146D6

l2301AFDC:
	lui	a0,00010000
	c.j	000000002301AFD0

;; hal_dma_evt: 2301AFE2
hal_dma_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.bnez	a0,000000002301B01E

l2301AFEE:
	addi	a0,zero,+00000040

l2301AFF2:
	jal	ra,00000000230146EE
	csrrci	zero,mstatus,00000008
	lui	a5,00042023
	slli	s0,s1,00000003
	addi	a5,a5,-0000027C
	c.add	s0,a5

l2301B008:
	c.mv	a0,s0
	jal	ra,000000002301450E
	csrrsi	zero,mstatus,00000008
	c.bnez	a0,000000002301B024

l2301B014:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301B01E:
	lui	a0,00010000
	c.j	000000002301AFF2

l2301B024:
	c.lw	a0,8(a5)
	c.beqz	a5,000000002301B02E

l2301B028:
	c.lw	a0,12(a0)
	c.mv	a1,s1
	c.jalr	a5

l2301B02E:
	csrrci	zero,mstatus,00000008
	c.j	000000002301B008

;; hal_mib_dump: 2301B034
;;   Called from:
;;     2301474A (in bl_fw_statistic_dump)
;;     23026FA2 (in cmd_wifi_mib)
hal_mib_dump proc
	lui	a0,000230AE
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000184
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	lui	a5,0004200F
	lw	a5,a5,-000004D0
	lui	a0,000230AE
	addi	a0,a0,-0000015C
	c.lw	a5,12(a1)
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	lui	a0,000230C7
	addi	a0,a0,-00000700
	c.addi	sp,00000010
	jal	zero,000000002308234C

;; mm_monitor_channel_req_handler: 2301B06A
mm_monitor_channel_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a0,zero,+0000005F
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.li	a5,00000001
	c.lw	s1,0(a3)
	c.sw	a0,0(a5)
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	a0,12(a5)
	lui	a5,00022222
	addi	a5,a5,+00000222
	c.sw	a0,16(a5)
	lui	a5,00033333
	addi	a5,a5,+00000333
	c.sw	a0,20(a5)
	lui	a5,00044444
	addi	a5,a5,+00000444
	c.sw	a0,24(a5)
	lui	a5,00055555
	addi	a5,a5,+00000555
	c.sw	a0,28(a5)
	lui	a5,00066666
	addi	a5,a5,+00000666
	c.sw	a0,32(a5)
	lui	a5,00077777
	addi	a5,a5,+00000777
	sw	zero,a0,+00000008
	c.sw	a0,36(a5)
	c.lw	s1,0(a2)
	c.mv	s0,a0
	c.sw	a0,4(a2)
	c.lw	s1,4(a1)
	c.slli	a2,10
	c.srli	a2,00000010
	c.bnez	a1,000000002301B108

l2301B0E0:
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a5,00000000
	c.li	a4,00000000
	sltu	a1,zero,a1
	c.li	a0,00000000
	jal	ra,0000000023002102
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B108:
	c.lw	s1,8(a5)
	addi	a3,a2,+0000000A
	c.bnez	a5,000000002301B0E0

l2301B110:
	addi	a3,a2,-0000000A
	c.j	000000002301B0E0

;; mm_monitor_enable_req_handler: 2301B116
mm_monitor_enable_req_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	jal	ra,00000000230149A2
	c.li	a5,00000001
	c.sw	a0,0(a5)
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	a0,12(a5)
	lui	a5,00022222
	addi	a5,a5,+00000222
	c.sw	a0,16(a5)
	lui	a5,00033333
	addi	a5,a5,+00000333
	c.sw	a0,20(a5)
	lui	a5,00044444
	addi	a5,a5,+00000444
	c.sw	a0,24(a5)
	lui	a5,00055555
	addi	a5,a5,+00000555
	c.sw	a0,28(a5)
	lui	a5,00066666
	addi	a5,a5,+00000666
	c.sw	a0,32(a5)
	lui	a5,00077777
	addi	a5,a5,+00000777
	sw	zero,a0,+00000008
	c.sw	a0,36(a5)
	c.lw	s1,0(a5)
	c.mv	s0,a0
	addi	a2,zero,+00000040
	c.sw	a0,4(a5)
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.mv	a0,sp
	c.swsp	zero,00000000
	jal	ra,0000000023002188
	c.lui	a3,00001000
	addi	a3,a3,-0000067B
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a2,a3
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023002102
	jal	ra,0000000023007EF0
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,0000000023014A0E
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; mm_cfg_rssi_req_handler: 2301B1C4
mm_cfg_rssi_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	s1,a1,+00000000
	addi	a3,zero,+000005D8
	lui	a5,00042020
	add	a3,s1,a3
	addi	a4,a5,-00000088
	c.mv	s2,a1
	addi	s0,a5,-00000088
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.beqz	a4,000000002301B20A

l2301B1F0:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-00000702
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000130
	jal	ra,0000000023001234

l2301B20A:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	lb	a4,s2,+00000001
	c.li	a0,00000000
	c.add	a5,s0
	sb	a4,a5,+00000076
	lbu	a4,s2,+00000002
	sb	zero,a5,+00000078
	sb	a4,a5,+00000077
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_ps_options_req_handler: 2301B236
mm_set_ps_options_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	lbu	s1,a1,+00000000
	c.mv	s3,a2
	addi	a2,zero,+000005D8
	add	a2,s1,a2
	lui	a5,00042020
	addi	a4,a5,-00000088
	c.mv	s2,a1
	addi	s0,a5,-00000088
	c.add	a4,a2
	lbu	a4,a4,+00000056
	c.beqz	a4,000000002301B284

l2301B266:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-000007EB
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000130
	c.swsp	a3,00000084
	jal	ra,0000000023001234
	c.lwsp	a2,000000A4

l2301B284:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	lhu	a4,s2,+00000002
	c.mv	a2,s3
	addi	a0,zero,+0000004C
	c.mv	a1,a3
	c.add	a5,s0
	sh	a4,a5,+0000005C
	lbu	a4,s2,+00000004
	sb	a4,a5,+0000005E
	jal	ra,0000000023014A78
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; mm_tim_update_req_handler: 2301B2BA
mm_tim_update_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,00000000230090D8
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_req_handler: 2301B2CC
mm_bcn_change_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,000000002300957C
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_remain_on_channel_req_handler: 2301B2DE
mm_remain_on_channel_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a1
	c.mv	a0,s1
	c.mv	a1,a3
	c.swsp	s0,0000000C
	c.swsp	a2,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a3
	jal	ra,000000002301A67A
	c.lwsp	a2,00000084
	c.beqz	s0,000000002301B31E

l2301B2FA:
	c.mv	s2,a0
	c.li	a3,00000003
	c.mv	a1,s0
	addi	a0,zero,+00000047
	jal	ra,00000000230149A2
	lbu	a4,s1,+00000000
	sb	s2,a0,+00000001
	sb	a4,a0,+00000000
	c.li	a4,00000004
	sb	a4,a0,+00000002
	jal	ra,0000000023014A0E

l2301B31E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_del_req_handler: 2301B32C
mm_sta_del_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a0,a1,+00000000
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	jal	ra,000000002300865E
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,0000000D
	c.mv	a1,a3
	jal	ra,0000000023014A78
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_add_req_handler: 2301B350
mm_sta_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	a0,0000000B
	c.mv	s1,a1
	c.mv	a1,a3
	c.li	a3,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230149A2
	c.mv	s0,a0
	addi	a2,a0,+00000002
	addi	a1,a0,+00000001
	c.mv	a0,s1
	jal	ra,0000000023008410
	sb	a0,s0,+00000000
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_del_req_handler: 2301B38A
mm_key_del_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a5,a5,+000000D8
	lbu	a4,a1,+00000000
	c.mv	s0,a1
	c.srli	a5,00000018
	c.addi	a5,00000001
	c.mv	s2,a2
	c.mv	s1,a3
	bge	a5,a4,000000002301B3C6

l2301B3AE:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000056E
	addi	a1,a1,+0000020C
	addi	a0,a0,+000000F0
	jal	ra,0000000023001234

l2301B3C6:
	lbu	a0,s0,+00000000
	jal	ra,0000000023008190
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,zero,+00000027
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_add_req_handler: 2301B3E8
mm_key_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000025
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000002
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	lbu	a4,s0,+00000000
	c.li	a5,00000003
	c.mv	s1,a0
	bgeu	a5,a4,000000002301B422

l2301B40A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000053D
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000006C
	jal	ra,0000000023001234

l2301B422:
	lbu	a4,s0,+00000004
	addi	a5,zero,+00000020
	bgeu	a5,a4,000000002301B446

l2301B42E:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000541
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000094
	jal	ra,0000000023001234

l2301B446:
	lbu	a4,s0,+00000028
	c.li	a5,00000005
	bgeu	a5,a4,000000002301B468

l2301B450:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000544
	addi	a1,a1,+0000020C
	addi	a0,a0,+000000BC
	jal	ra,0000000023001234

l2301B468:
	c.mv	a0,s0
	jal	ra,0000000023008060
	sb	a0,s1,+00000001
	sb	zero,s1,+00000000
	c.mv	a0,s1
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_power_req_handler: 2301B488
mm_set_power_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a1
	c.swsp	s1,00000080
	c.mv	a1,a3
	lbu	s1,s2,+00000000
	c.li	a3,00000002
	addi	a0,zero,+0000002F
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230149A2
	addi	a4,zero,+000005D8
	add	s1,s1,a4
	c.mv	s0,a0
	lb	a5,s2,+00000001
	lui	a0,00042020
	addi	a0,a0,-00000088
	c.mv	a2,s0
	addi	a1,s0,+00000001
	c.add	a0,s1
	sb	a5,a0,+0000005A
	lb	a5,a0,+00000059
	sb	a5,s0,+00000001
	addi	a5,zero,+0000007F
	sb	a5,a0,+00000059
	jal	ra,000000002300B586
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_req_handler: 2301B4EE
mm_set_idle_req_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a2
	c.mv	s2,a3
	jal	ra,0000000023014C3C
	c.li	a5,00000003
	c.lwsp	a2,00000064
	bne	a0,a5,000000002301B51C

l2301B50C:
	c.li	s1,00000002

l2301B50E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301B51C:
	lbu	a4,a1,+00000000
	lui	a5,0004201F
	addi	a3,a5,-0000067C
	sb	a4,a3,+00000022
	addi	s1,a5,-0000067C
	c.mv	a0,s0
	c.beqz	a4,000000002301B584

l2301B534:
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301B54E

l2301B53A:
	c.li	s1,00000002
	beq	a0,s1,000000002301B50E

l2301B540:
	jal	ra,0000000023007232
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023014B3C
	c.j	000000002301B50E

l2301B54E:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B570

l2301B558:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000047D
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,0000000023001234

l2301B570:
	sh	zero,s1,+00000012

l2301B574:
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,zero,+00000023
	jal	ra,0000000023014A78
	c.li	s1,00000000
	c.j	000000002301B50E

l2301B584:
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	beq	a0,a5,000000002301B50C

l2301B58E:
	jal	ra,0000000023007EF0
	c.j	000000002301B574

;; mm_reset_req_handler: 2301B594
mm_reset_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300729A
	jal	ra,000000002300254E
	jal	ra,000000002300D6A8
	jal	ra,0000000023007EB4
	csrrsi	zero,mstatus,00000008
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,00000001
	c.mv	a1,a3
	jal	ra,0000000023014A78
	c.li	a0,00000000
	c.li	a1,00000000
	jal	ra,0000000023014B3C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_version_req_handler: 2301B5D0
mm_version_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	c.li	a0,00000005
	c.li	a3,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230149A2
	lui	a5,00005040
	c.sw	a0,0(a5)
	lui	a5,00044B00
	c.lw	a5,4(a4)
	c.mv	s0,a0
	addi	a1,a0,+00000010
	c.sw	a0,4(a4)
	c.lw	a5,8(a5)
	c.addi	a0,0000000C
	sw	a5,a0,+00000FFC
	jal	ra,0000000023002162
	c.lui	a5,00009000
	addi	a5,a5,-00000621
	c.mv	a0,s0
	c.sw	s0,20(a5)
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_start_req_handler: 2301B618
mm_start_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s0,a2
	c.mv	s2,a3
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301B648

l2301B630:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000135
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000118
	jal	ra,0000000023001234

l2301B648:
	c.mv	a0,s1
	jal	ra,0000000023002188
	c.lui	a3,00001000
	addi	a3,a3,-00000694
	c.mv	a2,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023002102
	c.li	a0,00000010
	jal	ra,000000002300B542
	c.lw	s1,64(a5)
	addi	a4,zero,+000003E8
	c.mv	a2,s0
	add	a5,a5,a4
	lui	a4,0004201F
	c.mv	a1,s2
	c.li	a0,00000003
	sw	a5,a4,+000009FC
	lhu	a4,s1,+00000044
	lui	a5,0004201F
	sh	a4,a5,+000009A4
	jal	ra,0000000023014A78
	jal	ra,0000000023007EF0
	jal	ra,0000000023007232
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023014B3C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_ps_mode_req_handler: 2301B6AE
mm_set_ps_mode_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a0,a1,+00000000
	c.li	a5,00000003
	bne	a0,a5,000000002301B6FA

l2301B6BE:
	lui	a5,00042021
	lw	s0,a5,-000004D0

l2301B6C6:
	c.bnez	s0,000000002301B6E4

l2301B6C8:
	lui	a5,0004201F
	lhu	a1,a5,-00000622
	c.li	a2,00000000
	addi	a0,zero,+00000032
	jal	ra,0000000023014A78

l2301B6DA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B6E4:
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002301B6F6

l2301B6EA:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002301B6F6

l2301B6F0:
	c.mv	a0,s0
	jal	ra,0000000023009C8E

l2301B6F6:
	c.lw	s0,0(s0)
	c.j	000000002301B6C6

l2301B6FA:
	c.mv	a1,a3
	jal	ra,00000000230099E8
	c.j	000000002301B6DA

;; mm_force_idle_req_handler: 2301B702
mm_force_idle_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.mv	s1,a2
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301B734

l2301B716:
	c.li	s0,00000002
	beq	a0,s0,000000002301B728

l2301B71C:
	jal	ra,0000000023007232
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023014B3C

l2301B728:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301B734:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B756

l2301B73E:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+000004C0
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,0000000023001234

l2301B756:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,0000000023014B3C
	c.lw	s0,0(a5)
	c.li	s0,00000000
	c.jalr	a5
	c.j	000000002301B728

;; mm_hw_config_handler: 2301B766
mm_hw_config_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.mv	s0,a1
	c.mv	s1,a2
	c.mv	s3,a3
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301B79C

l2301B78C:
	c.addi	a0,FFFFFFFE
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000001
	bltu	a5,a0,000000002301BC88

l2301B798:
	c.li	s0,00000002
	c.j	000000002301B968

l2301B79C:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B7BE

l2301B7A6:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000077B
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,0000000023001234

l2301B7BE:
	lui	s4,0004201F
	c.li	a5,00000016
	addi	s4,s4,-0000067C
	beq	s2,a5,000000002301B9CE

l2301B7CC:
	bltu	a5,s2,000000002301B848

l2301B7D0:
	c.li	a5,0000000E
	beq	s2,a5,000000002301B914

l2301B7D6:
	bltu	a5,s2,000000002301B802

l2301B7DA:
	c.li	a5,00000006
	beq	s2,a5,000000002301B982

l2301B7E0:
	c.li	a5,00000008
	beq	s2,a5,000000002301B9AA

l2301B7E6:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+000007AE
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	ra,0000000023001234
	c.li	s0,00000002
	c.j	000000002301B932

l2301B802:
	c.li	a5,00000012
	beq	s2,a5,000000002301BA4C

l2301B808:
	c.li	a5,00000014
	beq	s2,a5,000000002301BA04

l2301B80E:
	c.li	a5,00000010
	bne	s2,a5,000000002301B7E6

l2301B814:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000011
	jal	ra,00000000230149A2
	lbu	a5,s0,+00000008
	c.mv	s2,a0
	c.beqz	a5,000000002301B840

l2301B828:
	lhu	a4,s0,+00000006
	lhu	a3,s0,+00000004
	lhu	a2,s0,+00000002
	lbu	a1,s0,+00000001
	lbu	a0,s0,+00000000
	jal	ra,0000000023002102

l2301B840:
	c.mv	a0,s2

l2301B842:
	jal	ra,0000000023014A0E
	c.j	000000002301B930

l2301B848:
	c.li	a5,0000001E
	beq	s2,a5,000000002301BB52

l2301B84E:
	bltu	a5,s2,000000002301B8D6

l2301B852:
	c.li	a5,0000001A
	beq	s2,a5,000000002301BA78

l2301B858:
	c.li	a5,0000001C
	beq	s2,a5,000000002301BB10

l2301B85E:
	c.li	a5,00000018
	bne	s2,a5,000000002301B7E6

l2301B864:
	lbu	a5,s0,+00000006
	addi	a0,zero,+000005D8
	c.li	a2,00000006
	add	a5,a5,a0
	lui	a0,00042020
	addi	a0,a0,-00000088
	c.mv	a1,s0
	addi	a5,a5,+00000038
	c.add	a0,a5
	jal	ra,00000000230A382C
	lui	a5,00042021
	addi	a5,a5,-000004D8
	lbu	a4,a5,+00000011
	lbu	a5,a5,+00000010
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,000000002301B8CE

l2301B89E:
	lbu	a4,s0,+00000001
	lbu	a5,s0,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s0,+00000002
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s0,+00000003
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,32(a5)
	lbu	a5,s0,+00000005
	lbu	a3,s0,+00000004
	c.slli	a5,08
	c.or	a5,a3
	c.sw	a4,36(a5)

l2301B8CE:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000019
	c.j	000000002301B92C

l2301B8D6:
	addi	a5,zero,+00000028
	beq	s2,a5,000000002301BC3E

l2301B8DE:
	addi	a5,zero,+0000003B
	beq	s2,a5,000000002301BC78

l2301B8E6:
	addi	a5,zero,+00000020
	bne	s2,a5,000000002301B7E6

l2301B8EE:
	lui	a4,00044B00
	lw	a5,a4,+000000E4
	lbu	a3,s0,+00000000
	c.mv	a2,s1
	andi	a5,a5,+000000FF
	add	a5,a3,a5
	c.mv	a1,s3
	addi	a0,zero,+00000021
	c.slli	a5,08
	c.or	a5,a3
	sw	a5,a4,+000000E8
	c.j	000000002301B92C

l2301B914:
	c.lw	s0,0(a5)
	lw	a4,s4,+00000004
	c.mv	a2,s1
	sw	a5,s4,+00000000
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.mv	a1,s3
	c.li	a0,0000000F

l2301B92C:
	jal	ra,0000000023014A78

l2301B930:
	c.li	s0,00000000

l2301B932:
	lbu	s2,s4,+00000013
	c.slli	s2,04
	andi	a5,s2,-000000F1
	c.beqz	a5,000000002301B956

l2301B93E:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000005B9
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000030
	jal	ra,0000000023001234

l2301B956:
	lui	a5,00044B00
	sw	s2,a5,+00000038
	lbu	a1,s4,+00000012
	c.mv	a0,s1
	jal	ra,0000000023014B3C

l2301B968:
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
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l2301B982:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000007
	jal	ra,00000000230149A2
	lbu	a2,s0,+00000007
	lbu	a1,s0,+00000000
	c.mv	s2,a0
	addi	a3,a0,+00000001
	addi	a0,s0,+00000001
	jal	ra,000000002300D052
	sb	a0,s2,+00000000
	c.j	000000002301B840

l2301B9AA:
	lbu	a0,s0,+00000000
	c.li	a5,00000001
	bltu	a5,a0,000000002301B9B8

l2301B9B4:
	jal	ra,000000002300D1C2

l2301B9B8:
	lui	a5,00042021
	lw	a5,a5,-000004D0
	c.bnez	a5,000000002301B9C6

l2301B9C2:
	jal	ra,000000002300780A

l2301B9C6:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000009
	c.j	000000002301B92C

l2301B9CE:
	lui	a5,00042023
	lw	a4,a5,-000002D0
	lbu	a5,s0,+00000005
	c.lw	s0,0(a3)
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,s4
	c.sw	a5,4(a3)
	c.beqz	a4,000000002301B9FC

l2301B9E6:
	lbu	a4,a4,+00000004
	lbu	a5,s0,+00000005
	bne	a4,a5,000000002301B9FC

l2301B9F2:
	lui	a5,00044B00
	c.li	a4,00000010
	sw	a4,a5,+000000DC

l2301B9FC:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000017
	c.j	000000002301B92C

l2301BA04:
	lbu	a5,s0,+00000002
	addi	a4,zero,+000005D8
	lui	a0,00042020
	add	a5,a5,a4
	addi	a0,a0,-00000088
	lhu	a1,s0,+00000000
	c.add	a0,a5
	lbu	a5,a0,+00000056
	c.bnez	a5,000000002301BA46

l2301BA24:
	lbu	a4,a0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a3
	addi	a5,a5,-000005A0
	c.slli	a1,0A
	c.add	a5,a4
	c.sw	a5,4(a1)

l2301BA3E:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000015
	c.j	000000002301B92C

l2301BA46:
	jal	ra,000000002300D4EC
	c.j	000000002301BA3E

l2301BA4C:
	lui	a5,00044B00
	lw	a3,a5,+00000090
	lbu	a4,s0,+00000000
	c.mv	a2,s1
	andi	a3,a3,-00000100
	c.or	a4,a3
	sw	a4,a5,+00000090
	lw	a4,a5,+00000090
	lui	a3,00080000
	c.mv	a1,s3
	c.or	a4,a3
	sw	a4,a5,+00000090
	c.li	a0,00000013
	c.j	000000002301B92C

l2301BA78:
	lbu	s5,s0,+00000006
	addi	a5,zero,+00000176
	lbu	a2,s0,+00000005
	add	a5,s5,a5
	lui	a0,00042020
	c.lw	s0,0(a3)
	addi	a4,a0,-00000088
	addi	s2,a0,-00000088
	c.add	a5,a2
	c.slli	a5,02
	c.add	a5,a4
	c.sw	a5,8(a3)
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a4,a5
	lbu	a5,a4,+00000058
	c.beqz	a5,000000002301BAD8

l2301BAAE:
	lbu	a4,s0,+00000005
	c.li	a3,00000001
	c.lw	s0,0(a5)
	beq	a4,a3,000000002301BAFC

l2301BABA:
	c.beqz	a4,000000002301BACC

l2301BABC:
	c.li	a3,00000002
	beq	a4,a3,000000002301BB06

l2301BAC2:
	lui	a4,00044B00
	sw	a5,a4,+0000020C
	c.j	000000002301BAD4

l2301BACC:
	lui	a4,00044B00
	sw	a5,a4,+00000200

l2301BAD4:
	jal	ra,0000000023007D9E

l2301BAD8:
	addi	a0,zero,+000005D8
	add	a0,s5,a0
	c.add	a0,s2
	lbu	a5,a0,+00000056
	c.bnez	a5,000000002301BAF4

l2301BAE8:
	lbu	a2,s0,+00000004
	lbu	a1,s0,+00000005
	jal	ra,0000000023009F00

l2301BAF4:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001B
	c.j	000000002301B92C

l2301BAFC:
	lui	a4,00044B00
	sw	a5,a4,+00000204
	c.j	000000002301BAD4

l2301BB06:
	lui	a4,00044B00
	sw	a5,a4,+00000208
	c.j	000000002301BAD4

l2301BB10:
	lbu	a5,s0,+00000000
	slli	s0,a5,0000000E
	lui	a5,000003E0
	c.and	a5,s0
	c.beqz	a5,000000002301BB3A

l2301BB20:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,a2,-000007CC
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000000C
	jal	ra,0000000023001234

l2301BB3A:
	lui	a3,00044B00
	c.lw	a3,76(a5)
	c.lui	a4,FFFE4000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.or	a5,s0
	c.sw	a3,76(a5)
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001D
	c.j	000000002301B92C

l2301BB52:
	lbu	s7,s0,+00000003
	addi	a0,zero,+000005D8
	lui	a5,00042020
	add	a0,s7,a0
	addi	s2,a5,-00000088
	addi	s5,a5,-00000088
	c.add	s2,a0
	lbu	a4,s2,+00000056
	c.bnez	a4,000000002301BBFC

l2301BB72:
	lbu	a5,s0,+00000002
	c.addi	a0,00000018
	c.add	a0,s5
	c.beqz	a5,000000002301BC38

l2301BB7C:
	lbu	a5,s2,+00000060
	addi	a4,zero,+000001B0
	lui	s6,0004201F
	add	a5,a5,a4
	addi	s6,s6,-000005A0
	lui	s8,00044B00
	lw	a1,s8,+00000120
	c.add	s6,a5
	lw	a5,s6,+00000004
	c.add	a1,a5
	jal	ra,00000000230095EE
	lhu	a5,s0,+00000000
	lw	a4,s6,+00000004
	sh	zero,s2,+0000005C
	sh	a5,s6,+00000018
	lhu	a5,s4,+00000020
	sb	zero,s2,+0000005E
	c.mv	a0,s2
	c.addi	a5,00000014
	add	a5,a5,a4
	lui	a4,000000F4
	addi	a4,a4,+00000240
	srl	a5,a5,a4
	sh	a5,s6,+00000016
	lw	a5,s8,+00000120
	sb	zero,s2,+00000074
	sw	zero,s2,+00000070
	sw	a5,s2,+00000064
	lw	a5,s2,+00000004
	ori	a5,a5,+00000001
	sw	a5,s2,+00000004
	lw	a5,s8,+00000120
	sw	a5,s2,+0000006C
	jal	ra,000000002301AB10

l2301BBFC:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	lbu	a4,s0,+00000002
	c.add	a5,s5
	sb	a4,a5,+00000058
	c.beqz	a4,000000002301BC30

l2301BC10:
	c.lw	a5,20(a3)
	lui	a4,00044B00
	sw	a3,a4,+00000200
	c.lw	a5,20(a3)
	sw	a3,a4,+00000204
	c.lw	a5,20(a3)
	sw	a3,a4,+00000208
	c.lw	a5,20(a5)
	sw	a5,a4,+0000020C
	jal	ra,0000000023007D9E

l2301BC30:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001F
	c.j	000000002301B92C

l2301BC38:
	jal	ra,00000000230096A4
	c.j	000000002301BBFC

l2301BC3E:
	lbu	a5,s0,+00000000
	c.li	s2,00000005
	c.beqz	a5,000000002301BC54

l2301BC46:
	lui	a4,00044B00
	c.lw	a4,84(a5)
	c.li	s2,00000000
	ori	a5,a5,+00000080
	c.sw	a4,84(a5)

l2301BC54:
	c.li	a3,00000003
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+00000029
	jal	ra,00000000230149A2
	lbu	a4,s0,+00000001
	sb	a4,a0,+00000000
	lbu	a4,s0,+00000002
	sb	s2,a0,+00000002
	sb	a4,a0,+00000001
	c.j	000000002301B842

l2301BC78:
	c.mv	a0,s0
	jal	ra,000000002301A95A
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+0000003C
	c.j	000000002301B92C

l2301BC88:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	lui	s0,0004201F
	addi	s0,s0,-0000067C
	c.andi	a5,0000000F
	c.mv	a0,s1
	sb	a5,s0,+00000013
	jal	ra,0000000023014C3C
	sb	a0,s0,+00000012
	jal	ra,0000000023007232
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023014B3C
	c.j	000000002301B798

;; bl60x_edca_get: 2301BCB4
;;   Called from:
;;     23026C04 (in wifi_edca_dump_cmd)
;;     23026C40 (in wifi_edca_dump_cmd)
;;     23026C78 (in wifi_edca_dump_cmd)
;;     23026CB0 (in wifi_edca_dump_cmd)
bl60x_edca_get proc
	c.li	a5,00000001
	beq	a0,a5,000000002301BD06

l2301BCBA:
	blt	a5,a0,000000002301BCC4

l2301BCBE:
	c.beqz	a0,000000002301BCDA

l2301BCC0:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2301BCC4:
	c.li	a5,00000002
	beq	a0,a5,000000002301BD34

l2301BCCA:
	c.li	a5,00000003
	bne	a0,a5,000000002301BCC0

l2301BCD0:
	lui	a5,00044B00
	lw	a5,a5,+0000020C
	c.j	000000002301BD0E

l2301BCDA:
	lui	a5,00044B00
	lw	a5,a5,+00000200
	srli	a6,a5,0000000C
	sh	a6,a4,+00000000
	srli	a4,a5,00000008
	c.andi	a4,0000000F
	sb	a4,a3,+00000000
	srli	a4,a5,00000004
	c.andi	a4,0000000F
	sb	a4,a2,+00000000
	c.andi	a5,0000000F
	sb	a5,a1,+00000000
	c.jr	ra

l2301BD06:
	lui	a5,00044B00
	lw	a5,a5,+00000204

l2301BD0E:
	srli	a0,a5,0000000C
	sh	a0,a4,+00000000
	srli	a4,a5,00000008
	c.andi	a4,0000000F
	sb	a4,a3,+00000000
	srli	a4,a5,00000004
	c.andi	a4,0000000F
	sb	a4,a2,+00000000
	c.andi	a5,0000000F
	sb	a5,a1,+00000000
	c.li	a0,00000000
	c.jr	ra

l2301BD34:
	lui	a5,00044B00
	lw	a5,a5,+00000208
	c.j	000000002301BD0E

;; rx_swdesc_init: 2301BD3E
;;   Called from:
;;     2300A1E4 (in rxl_init)
rx_swdesc_init proc
	lui	a5,00042023
	lui	a4,00042041
	addi	a5,a5,-0000025C
	addi	a4,a4,+00000000
	c.sw	a5,4(a4)
	lui	a4,00042041
	addi	a4,a4,+00000064
	c.sw	a5,36(a4)
	lui	a4,00042041
	addi	a4,a4,+000000C8
	c.sw	a5,68(a4)
	lui	a4,00042041
	addi	a4,a4,+0000012C
	c.sw	a5,100(a4)
	lui	a4,00042041
	addi	a4,a4,+00000190
	sw	a4,a5,+00000084
	lui	a4,00042041
	addi	a4,a4,+000001F4
	sw	a4,a5,+000000A4
	lui	a4,00042041
	addi	a4,a4,+00000258
	sw	a4,a5,+000000C4
	lui	a4,00042041
	addi	a4,a4,+000002BC
	sw	a4,a5,+000000E4
	lui	a4,00042041
	addi	a4,a4,+00000320
	sw	a4,a5,+00000104
	lui	a4,00042041
	addi	a4,a4,+00000384
	sw	a4,a5,+00000124
	lui	a4,00042041
	addi	a4,a4,+000003E8
	sw	a4,a5,+00000144
	lui	a4,00042041
	addi	a4,a4,+0000044C
	sw	a4,a5,+00000164
	lui	a4,00042041
	addi	a4,a4,+000004B0
	sw	a4,a5,+00000184
	c.jr	ra

;; scan_cancel_req_handler: 2301BDDC
scan_cancel_req_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000002
	c.swsp	a3,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023014C3C
	c.lwsp	a2,000000A4
	c.beqz	a0,000000002301BDFE

l2301BDEC:
	lui	a5,0004201F
	c.li	a4,00000001
	sb	a4,a5,+00000A53

l2301BDF6:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301BDFE:
	c.mv	a1,a3
	c.li	a0,00000001
	jal	ra,000000002300AE2A
	c.j	000000002301BDF6

;; scan_start_req_handler: 2301BE08
scan_start_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.lui	a0,00001000
	c.mv	s2,a3
	c.swsp	s1,00000080
	c.li	a3,00000001
	c.mv	s1,a1
	addi	a0,a0,-000007FF
	c.mv	a1,s2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.mv	s0,a0
	c.li	a0,00000002
	jal	ra,0000000023014C3C
	c.bnez	a0,000000002301BE7E

l2301BE2E:
	lbu	a5,s1,+0000014F
	c.bnez	a5,000000002301BE4C

l2301BE34:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000046
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001E4
	jal	ra,0000000023001234

l2301BE4C:
	lui	a5,0004201F
	sb	zero,s0,+00000000
	addi	a5,a5,-000005C8
	c.mv	a0,s1
	c.sw	a5,16(s1)
	sb	zero,a5,+0000001A
	sh	s2,a5,+00000018
	c.li	s1,00000001
	jal	ra,000000002300AC9E

l2301BE6A:
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301BE7E:
	c.li	a5,00000008
	sb	a5,s0,+00000000
	c.li	s1,00000000
	c.j	000000002301BE6A

;; mm_scan_channel_end_ind_handler: 2301BE88
mm_scan_channel_end_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023014C3C
	c.li	a5,00000003
	beq	a0,a5,000000002301BEB2

l2301BE9A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000000C4
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000015C
	jal	ra,0000000023001234

l2301BEB2:
	lui	a4,0004201F
	addi	a4,a4,-0000067C
	c.lw	a4,4(a5)
	c.lui	a3,FFFFE000
	addi	a3,a3,-00000201
	c.and	a5,a3
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	lui	s0,0004201F
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	addi	a4,s0,-000005C8
	lbu	a5,a4,+0000001A
	c.lw	a4,16(a0)
	addi	s0,s0,-000005C8
	c.addi	a5,00000001
	lbu	a3,a0,+0000014F
	andi	a5,a5,+000000FF
	sb	a5,a4,+0000001A
	bgeu	a5,a3,000000002301BF08

l2301BEF4:
	lbu	a5,a4,+0000001B
	c.bnez	a5,000000002301BF08

l2301BEFA:
	jal	ra,000000002300ABE4

l2301BEFE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301BF08:
	c.addi	a0,FFFFFFF4
	jal	ra,0000000023014A9A
	lbu	a5,s0,+0000001B
	lhu	a1,s0,+00000018
	c.beqz	a5,000000002301BF2C

l2301BF18:
	c.li	a0,00000000
	jal	ra,000000002300AE2A
	sb	zero,s0,+0000001B

l2301BF22:
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,0000000023014B3C
	c.j	000000002301BEFE

l2301BF2C:
	c.lui	a0,00001000
	c.li	a2,00000002
	addi	a0,a0,-000007FE
	jal	ra,0000000023014A78
	c.j	000000002301BF22

;; mm_scan_channel_start_ind_handler: 2301BF3A
mm_scan_channel_start_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201F
	addi	a5,a5,-000005C8
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a0,00000002
	c.lw	a5,16(s0)
	lbu	s1,a5,+0000001A
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	beq	a0,a5,000000002301BF74

l2301BF5C:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000009D
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000194
	jal	ra,0000000023001234

l2301BF74:
	lui	a4,0004201F
	addi	a4,a4,-0000067C
	c.lw	a4,4(a5)
	c.lui	a3,00002000
	addi	a3,a3,+00000200
	c.or	a5,a3
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.li	a5,00000006
	add	s1,s1,a5
	c.add	s0,s1
	lbu	a5,s0,+00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002301BFA6

l2301BFA2:
	jal	ra,000000002300ACCC

l2301BFA6:
	c.li	a0,00000002
	c.li	a1,00000003
	jal	ra,0000000023014B3C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; txl_buffer_reinit: 2301BFBA
;;   Called from:
;;     2300C2BE (in txl_reset)
;;     2301BFF4 (in txl_buffer_init)
txl_buffer_reinit proc
	lui	a5,00042023
	addi	a5,a5,-000000B8
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_init: 2301BFCC
;;   Called from:
;;     2300B92C (in txl_cntrl_init)
txl_buffer_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042044
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	addi	s0,s0,+0000043C
	lui	s4,000BADCB
	c.lui	s3,FFFF0000
	c.lui	s2,00002000
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s5,s0,+00000258
	jal	ra,000000002301BFBA
	addi	s4,s4,-000004E2
	c.li	s7,00000001
	addi	s3,s3,+00000704
	lui	s1,00044B00
	addi	s2,s2,+00000200
	lui	s6,000003F0

l2301C00E:
	sw	s4,s0,+00000000
	jal	ra,000000002300253C
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002300253C
	c.addi	a0,00000001
	sll	a0,s7,a0
	c.addi	a0,FFFFFFFF
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	sw	s3,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	lw	a5,s1,+000000A0
	addi	s0,s0,+0000003C
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FE8
	lw	a5,s1,+000000A0
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FEC
	lw	a5,s1,+000000A0
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FF0
	lw	a5,s1,+000000A0
	sw	s2,s0,+00000FF8
	sw	s6,s0,+00000FFC
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FF4
	bne	s0,s5,000000002301C00E

l2301C080:
	lui	s0,00042044
	addi	s0,s0,+000003C4
	lui	s2,000BADCB
	c.lui	s1,FFFF0000
	addi	s3,s0,+00000078
	addi	s2,s2,-000004E2
	c.li	s6,00000001
	addi	s1,s1,+00000704
	lui	s5,00044B00
	lui	s4,000003F0

l2301C0A4:
	sw	s2,s0,+00000000
	jal	ra,000000002300253C
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002300253C
	c.addi	a0,00000001
	sll	a0,s6,a0
	c.addi	a0,FFFFFFFF
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	c.sw	s0,16(s1)
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	lw	a5,s5,+000000A0
	addi	s0,s0,+0000003C
	sw	zero,s0,+00000FEC
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FE8
	sw	zero,s0,+00000FF0
	sw	zero,s0,+00000FF4
	sw	zero,s0,+00000FF8
	sw	s4,s0,+00000FFC
	bne	s0,s3,000000002301C0A4

l2301C0FC:
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

;; txl_buffer_reset: 2301C112
;;   Called from:
;;     2300BAC6 (in txl_cntrl_flush_ac)
txl_buffer_reset proc
	lui	a5,00042023
	addi	a5,a5,-000000B8
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_alloc: 2301C124
;;   Called from:
;;     2300C0AA (in txl_cntrl_push)
txl_buffer_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a4,a0,+0000005E
	sb	a2,a0,+000001B8
	c.mv	s0,a0
	addi	a5,a4,+0000000F
	c.andi	a5,FFFFFFF0
	c.sub	a5,a4
	sw	a5,a0,+000000D4
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,a0,+00000104
	lhu	a5,a0,+00000032
	sw	a4,a0,+000000D0
	addi	s1,a0,+000000CC
	c.andi	a5,00000008
	c.bnez	a5,000000002301C168

l2301C15E:
	addi	a1,a0,+00000218
	c.add	a1,a4
	jal	ra,0000000023012A7C

l2301C168:
	c.lw	s0,84(a1)
	c.li	a5,00000000
	addi	a4,zero,+0000003C

l2301C170:
	add	a3,a1,a5
	c.lw	a3,0(a2)
	add	a3,s0,a5
	c.addi	a5,00000004
	sw	a2,a3,+000001BC
	bne	a5,a4,000000002301C170

l2301C184:
	lui	a5,00042023
	addi	a4,a5,-000000B8
	lw	a4,a4,+000000B4
	addi	a5,a5,-000000B8
	c.bnez	a4,000000002301C1AE

l2301C196:
	sw	s1,a5,+000000B4

l2301C19A:
	sw	s1,a5,+000000B8
	sw	zero,s0,+000000DC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C1AE:
	lw	a4,a5,+000000B8
	c.sw	a4,16(s1)
	c.j	000000002301C19A

;; txl_buffer_update_thd: 2301C1B6
;;   Called from:
;;     2300C0B4 (in txl_cntrl_push)
txl_buffer_update_thd proc
	c.lw	a0,104(a5)
	lui	a6,000CAFF0
	lw	a7,a0,+0000006C
	addi	a4,a5,+0000004C
	addi	a0,a0,+00000034
	c.li	a1,00000000
	c.mv	t1,a4
	addi	a6,a6,-00000522

l2301C1D0:
	c.lw	a0,0(a3)
	c.bnez	a3,000000002301C1F0

l2301C1D4:
	c.bnez	a1,000000002301C216

l2301C1D6:
	lui	a1,000230AE
	lui	a0,000230AE
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000001F8
	addi	a0,a0,+00000210
	c.swsp	ra,00000084
	jal	ra,0000000023082388

l2301C1EE:
	c.j	000000002301C1EE

l2301C1F0:
	sw	a6,a4,+00000000
	c.lw	a0,0(a3)
	c.mv	a2,a4
	c.addi	a4,00000014
	sw	a3,a4,+00000FF4
	lw	t3,a0,+00000010
	sw	zero,a4,+00000FFC
	c.addi	a1,00000001
	c.add	a3,t3
	c.addi	a3,FFFFFFFF
	sw	a3,a4,+00000FF8
	c.sw	a2,4(a4)
	c.addi	a0,00000004
	c.j	000000002301C1D0

l2301C216:
	c.lw	a5,4(a4)
	addi	a1,a5,+0000014C
	lui	a3,000CAFF0
	c.addi	a4,FFFFFFFF
	addi	a3,a3,-00000522
	c.add	a4,a1
	c.sw	a5,56(a3)
	c.sw	a5,64(a1)
	c.sw	a5,68(a4)
	sw	t1,a5,+0000003C
	sw	zero,a5,+00000048
	addi	a5,a5,+00000038
	sw	a5,a7,+00000010
	sw	zero,a2,+00000010
	addi	a5,zero,+00000100
	sw	a5,a7,+0000003C
	sw	zero,a2,+00000004
	c.jr	ra

;; bam_init: 2301C250
;;   Called from:
;;     2300D6D6 (in me_init)
bam_init proc
	lui	a5,00042023
	c.li	a4,FFFFFFFF
	c.li	a1,00000000
	c.li	a0,00000008
	sb	a4,a5,+00000030
	jal	zero,0000000023014B3C

;; bam_send_air_action_frame: 2301C262
;;   Called from:
;;     2301C50A (in rxu_mgt_ind_handler)
bam_send_air_action_frame proc
	c.addi16sp	FFFFFFA0
	c.swsp	s5,000000A0
	addi	s5,zero,+000001B0
	add	s5,a0,s5
	c.swsp	s8,0000001C
	lui	s8,0004201F
	addi	s8,s8,-000005A0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s6,00000020
	c.swsp	s9,00000098
	c.swsp	ra,000000AC
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.mv	s3,a0
	c.mv	s1,a1
	c.addi4spn	a0,00000018
	c.li	a1,00000000
	c.mv	s6,a5
	add	a5,s8,s5
	c.mv	s9,a2
	c.swsp	a3,00000084
	c.mv	s0,a4
	c.mv	s2,a6
	lbu	s4,a5,+0000001A
	jal	ra,00000000230020D4
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	beq	a0,zero,000000002301C412

l2301C2C0:
	addi	s7,zero,+000005D8
	add	s7,s4,s7
	lui	a5,00042020
	addi	s11,a5,-00000088
	c.mv	a1,a0
	c.mv	s10,a0
	c.addi	s5,0000001E
	c.add	s8,s5
	add	a4,s7,s11
	c.mv	a0,a4
	c.swsp	a4,00000004
	jal	ra,000000002300B644
	lw	a1,s10,+00000068
	addi	a5,zero,-00000030
	c.lwsp	s0,000000C4
	sb	a5,a1,+0000014C
	sb	zero,a1,+0000014D
	sb	zero,a1,+0000014E
	sb	zero,a1,+0000014F
	lhu	a5,s8,+00000000
	addi	a0,a1,+0000014C
	c.lwsp	a2,000000A4
	sh	a5,a1,+00000150
	lhu	a5,s8,+00000002
	sh	a5,a1,+00000152
	lhu	a5,s8,+00000004
	sh	a5,a1,+00000154
	addi	a5,s7,+00000050
	c.add	a5,s11
	lhu	a2,a5,+00000000
	sh	a2,a1,+00000156
	lhu	a2,a5,+00000002
	sh	a2,a1,+00000158
	lhu	a2,a5,+00000004
	sh	a2,a1,+0000015A
	lbu	a2,a4,+00000056
	c.li	a4,00000002
	bne	a2,a4,000000002301C3BC

l2301C344:
	lhu	a4,a5,+00000000
	sh	a4,a1,+0000015C
	lhu	a4,a5,+00000002
	sh	a4,a1,+0000015E
	lhu	a5,a5,+00000004

l2301C358:
	sh	a5,a1,+00000160
	lui	a5,00042020
	addi	a5,a5,-000000F0
	lhu	a6,a5,+00000054
	c.addi	a6,00000001
	c.slli	a6,10
	srli	a6,a6,00000010
	sh	a6,a5,+00000054
	c.slli	a6,04
	c.slli	a6,10
	srli	a6,a6,00000010
	sb	a6,a1,+00000162
	srli	a6,a6,00000008
	sb	a6,a1,+00000163
	sb	s4,s10,+0000002F
	sb	s3,s10,+00000030
	c.li	a5,00000001
	beq	s9,a5,000000002301C430

l2301C396:
	beq	s9,zero,000000002301C3D2

l2301C39A:
	c.li	a5,00000002
	beq	s9,a5,000000002301C442

l2301C3A0:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a0,a0,+0000038C
	addi	a2,zero,+0000025D
	addi	a1,a1,+0000020C
	jal	ra,0000000023001236
	c.li	a0,00000018
	c.j	000000002301C43E

l2301C3BC:
	lhu	a5,s8,+00000000
	sh	a5,a1,+0000015C
	lhu	a5,s8,+00000002
	sh	a5,a1,+0000015E
	lhu	a5,s8,+00000004
	c.j	000000002301C358

l2301C3D2:
	lui	a5,000230AD
	c.srai	s0,00000002
	c.andi	s0,0000000F
	addi	a5,a5,+00000230
	c.add	a5,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	lbu	s0,a5,+00000000
	jal	ra,000000002301CD4A
	c.addi	a0,00000018

l2301C3EE:
	lw	a4,s10,+0000006C
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,24(a5)
	c.sw	a4,28(a0)
	beq	s2,zero,000000002301C40A

l2301C402:
	sw	s2,s10,+000002CC
	sw	s1,s10,+000002D0

l2301C40A:
	c.mv	a1,s0
	c.mv	a0,s10
	jal	ra,000000002300C6AE

l2301C412:
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
	c.lwsp	a6,0000015C
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l2301C430:
	c.mv	a4,s6
	c.mv	a2,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,000000002301CDA2

l2301C43C:
	c.addi	a0,00000018

l2301C43E:
	c.li	s0,00000003
	c.j	000000002301C3EE

l2301C442:
	c.mv	a2,s6
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,000000002301CDEA
	c.j	000000002301C43C

;; rxu_mgt_ind_handler: 2301C44E
rxu_mgt_ind_handler proc
	lbu	a4,a1,+0000001D
	c.bnez	a4,000000002301C522

l2301C454:
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	lbu	s0,a1,+00000020
	lbu	a3,a1,+0000001F
	lui	s4,000230AE
	c.slli	s0,08
	c.or	s0,a3
	andi	a5,s0,+00000001
	lbu	s1,a1,+00000007
	lbu	s2,a1,+0000001E
	addi	a1,s4,+00000234
	c.beqz	a5,000000002301C48E

l2301C486:
	lui	a1,000230AE
	addi	a1,a1,+00000238

l2301C48E:
	lui	s5,000230AE
	andi	a5,s0,+00000002
	addi	a2,s5,+00000244
	c.bnez	a5,000000002301C4A4

l2301C49C:
	lui	a2,000230AE
	addi	a2,a2,+00000258

l2301C4A4:
	srli	s3,s0,00000006
	srai	a3,s0,00000002
	lui	a0,000230AE
	c.andi	a3,0000000F
	c.mv	a4,s3
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	c.li	a5,00000008
	c.mv	a3,s3
	bgeu	a5,s3,000000002301C4C6

l2301C4C4:
	c.li	a3,00000008

l2301C4C6:
	c.slli	a3,10
	c.srli	a3,00000010
	andi	s0,s0,+0000003E
	ori	s0,s0,+00000002
	c.slli	a3,06
	c.or	a3,s0
	c.slli	a3,10
	c.srai	a3,00000010
	slli	s0,a3,00000010
	c.srli	s0,00000010
	c.srai	a3,00000002
	lui	a0,000230AE
	srli	a4,s0,00000006
	addi	a2,s5,+00000244
	addi	a1,s4,+00000234
	c.andi	a3,0000000F
	addi	a0,a0,+000002E4
	jal	ra,0000000023082388
	c.mv	a0,s1
	c.mv	a4,s0
	c.mv	a3,s2
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	jal	ra,000000002301C262
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

l2301C522:
	c.li	a0,00000000
	c.jr	ra

;; co_pack8p: 2301C526
;;   Called from:
;;     2301C608 (in me_add_ie_ssid)
;;     2301C658 (in me_add_ie_supp_rates)
;;     2301C698 (in me_add_ie_ext_supp_rates)
;;     2301C92A (in me_add_ie_ht_capa)
;;     2301C94C (in me_add_ie_ht_capa)
;;     2301CC52 (in me_build_associate_req)
;;     2301D34A (in me_build_beacon)
;;     2301D59E (in me_build_probe_rsp)
;;     2301D78E (in me_build_associate_rsp)
co_pack8p proc
	c.li	a5,00000000

l2301C528:
	bne	a2,a5,000000002301C52E

l2301C52C:
	c.jr	ra

l2301C52E:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002301C528

;; phy_freq_to_channel: 2301C542
;;   Called from:
;;     2301C992 (in me_add_ie_ht_oper)
;;     2301CCE4 (in me_build_associate_req)
;;     2301CF44 (in me_extract_country_reg)
;;     2301D4F4 (in me_build_probe_rsp)
phy_freq_to_channel proc
	c.bnez	a0,000000002301C576

l2301C544:
	c.lui	a0,FFFFF000
	addi	a4,a0,+00000694
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a5,00000000
	bltu	a3,a4,000000002301C572

l2301C55A:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a5,0000000E
	beq	a1,a4,000000002301C572

l2301C566:
	addi	a5,a0,+00000699

l2301C56A:
	c.add	a1,a5
	c.li	a5,00000005
	xor	a5,a1,a5

l2301C572:
	c.mv	a0,a5
	c.jr	ra

l2301C576:
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a0,a4,000000002301C572

l2301C57E:
	c.lui	a0,FFFFF000
	addi	a4,a0,-0000038D
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000334
	bltu	a3,a4,000000002301C572

l2301C592:
	addi	a5,a0,-00000388
	c.j	000000002301C56A

;; phy_channel_to_freq: 2301C598
;;   Called from:
;;     2301D05E (in me_extract_csa)
;;     2301D090 (in me_extract_csa)
;;     2301D0A0 (in me_extract_csa)
phy_channel_to_freq proc
	addi	a5,a1,-00000001
	c.bnez	a0,000000002301C5BE

l2301C59E:
	c.li	a4,0000000D
	bltu	a4,a5,000000002301C5DC

l2301C5A4:
	c.li	a5,0000000E
	beq	a1,a5,000000002301C5D4

l2301C5AA:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,-00000699

l2301C5B6:
	c.add	a0,a1
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

l2301C5BE:
	addi	a4,zero,+000000A4
	bltu	a4,a5,000000002301C5DC

l2301C5C6:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.j	000000002301C5B6

l2301C5D4:
	c.lui	a0,00001000
	addi	a0,a0,-0000064C
	c.jr	ra

l2301C5DC:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

;; me_add_ie_ssid: 2301C5E2
;;   Called from:
;;     2301CAE4 (in me_build_associate_req)
;;     2301D20A (in me_build_beacon)
;;     2301D4B0 (in me_build_probe_rsp)
me_add_ie_ssid proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.mv	a5,a1
	sb	zero,a4,+00000000
	c.lw	a0,0(a4)
	addi	s1,a1,+00000002
	sb	a1,a4,+00000001
	c.beqz	a1,000000002301C60C

l2301C600:
	c.lw	a0,0(a0)
	c.mv	a1,a2
	c.mv	a2,a5
	c.addi	a0,00000002
	jal	ra,000000002301C526

l2301C60C:
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_supp_rates: 2301C61E
;;   Called from:
;;     2301CAEE (in me_build_associate_req)
;;     2301D220 (in me_build_beacon)
;;     2301D4BA (in me_build_probe_rsp)
;;     2301D6F6 (in me_build_associate_rsp)
me_add_ie_supp_rates proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a1,+00000000
	c.li	a4,00000008
	c.mv	s0,a0
	c.li	a2,00000008
	bltu	a4,a5,000000002301C636

l2301C634:
	c.mv	a2,a5

l2301C636:
	c.lw	s0,0(a4)
	c.li	a3,00000001
	c.li	a0,00000008
	sb	a3,a4,+00000000
	addi	s1,a2,+00000002
	c.lw	s0,0(a3)
	c.mv	a4,a5
	bgeu	a0,a5,000000002301C64E

l2301C64C:
	c.li	a4,00000008

l2301C64E:
	sb	a4,a3,+00000001
	c.lw	s0,0(a0)
	c.addi	a1,00000001
	c.addi	a0,00000002
	jal	ra,000000002301C526
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ext_supp_rates: 2301C66E
;;   Called from:
;;     2301CB08 (in me_build_associate_req)
;;     2301D244 (in me_build_beacon)
;;     2301D4D4 (in me_build_probe_rsp)
;;     2301D710 (in me_build_associate_rsp)
me_add_ie_ext_supp_rates proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	addi	a4,zero,+00000032
	lbu	a2,a1,+00000000
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	addi	s1,a2,-00000006
	c.addi	a2,FFFFFFF8
	sb	a2,a5,+00000001
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.addi	a1,00000009
	c.addi	a0,00000002
	jal	ra,000000002301C526
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ds: 2301C6AE
;;   Called from:
;;     2301D276 (in me_build_beacon)
;;     2301D4FE (in me_build_probe_rsp)
me_add_ie_ds proc
	c.lw	a0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000002
	c.lw	a0,0(a5)
	c.addi	a5,00000003
	c.sw	a0,0(a5)
	c.li	a0,00000003
	c.jr	ra

;; me_add_ie_erp: 2301C6CE
;;   Called from:
;;     2301D2BA (in me_build_beacon)
;;     2301D514 (in me_build_probe_rsp)
me_add_ie_erp proc
	c.lw	a0,0(a5)
	addi	a4,zero,+0000002A
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000002
	c.lw	a0,0(a5)
	c.addi	a5,00000003
	c.sw	a0,0(a5)
	c.li	a0,00000003
	c.jr	ra

;; me_add_ie_rsn: 2301C6F0
;;   Called from:
;;     2301D29C (in me_build_beacon)
;;     2301D508 (in me_build_probe_rsp)
me_add_ie_rsn proc
	c.li	a6,00000001
	c.mv	a5,a0
	c.lw	a0,0(a4)
	bne	a1,a6,000000002301C77C

l2301C6FA:
	addi	a3,zero,+00000030
	sb	a3,a4,+00000000
	c.lw	a0,0(a4)
	c.li	a3,00000014
	c.li	a2,0000000F
	sb	a3,a4,+00000001
	c.lw	a0,0(a4)
	addi	a3,zero,-00000054
	sb	a1,a4,+00000002
	sb	zero,a4,+00000003
	c.lw	a0,0(a4)
	c.li	a0,00000004
	sb	a3,a4,+00000006
	sb	a0,a4,+00000007
	sb	zero,a4,+00000004
	sb	a2,a4,+00000005
	c.lw	a5,0(a4)
	sb	a1,a4,+00000008
	sb	zero,a4,+00000009
	c.lw	a5,0(a4)
	sb	a3,a4,+0000000C
	sb	a0,a4,+0000000D
	sb	zero,a4,+0000000A
	sb	a2,a4,+0000000B
	c.lw	a5,0(a4)
	c.li	a0,00000016
	sb	a1,a4,+0000000E
	sb	zero,a4,+0000000F
	c.lw	a5,0(a4)
	sb	a3,a4,+00000012
	c.li	a3,00000002
	sb	zero,a4,+00000010
	sb	a2,a4,+00000011
	sb	a3,a4,+00000013
	c.lw	a5,0(a4)
	sb	zero,a4,+00000014
	sb	zero,a4,+00000015

l2301C774:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

l2301C77C:
	c.li	a3,00000002
	c.li	a0,00000000
	bne	a1,a3,000000002301C774

l2301C784:
	addi	a3,zero,+00000030
	sb	a3,a4,+00000000
	c.lw	a5,0(a4)
	c.li	a3,00000018
	c.li	a2,0000000F
	sb	a3,a4,+00000001
	c.lw	a5,0(a4)
	addi	a3,zero,-00000054
	c.li	a0,00000004
	sb	a6,a4,+00000002
	sb	zero,a4,+00000003
	c.lw	a5,0(a4)
	sb	zero,a4,+00000004
	sb	a2,a4,+00000005
	sb	a3,a4,+00000006
	sb	a1,a4,+00000007
	c.lw	a5,0(a4)
	sb	a1,a4,+00000008
	sb	zero,a4,+00000009
	c.lw	a5,0(a4)
	sb	zero,a4,+0000000A
	sb	a2,a4,+0000000B
	sb	a3,a4,+0000000C
	sb	a1,a4,+0000000D
	c.lw	a5,0(a4)
	sb	a0,a4,+00000011
	sb	zero,a4,+0000000E
	sb	a2,a4,+0000000F
	sb	a3,a4,+00000010
	c.lw	a5,0(a4)
	c.li	a0,0000001A
	sb	a6,a4,+00000012
	sb	zero,a4,+00000013
	c.lw	a5,0(a4)
	sb	zero,a4,+00000014
	sb	a2,a4,+00000015
	sb	a3,a4,+00000016
	sb	a1,a4,+00000017
	c.lw	a5,0(a4)
	sb	zero,a4,+00000018
	sb	zero,a4,+00000019
	c.j	000000002301C774

;; me_add_ie_wpa: 2301C810
;;   Called from:
;;     2301D2F4 (in me_build_beacon)
;;     2301D548 (in me_build_probe_rsp)
me_add_ie_wpa proc
	c.li	a4,00000002
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a1,a4,000000002301C8B0

l2301C81A:
	c.lw	a5,0(a4)
	addi	a3,zero,-00000023
	c.li	a0,00000001
	sb	a3,a4,+00000000
	c.lw	a5,0(a4)
	c.li	a3,0000001C
	c.li	a6,00000004
	sb	a3,a4,+00000001
	c.lw	a5,0(a2)
	addi	a3,zero,+00000050
	c.li	a4,FFFFFFF2
	sb	a0,a2,+00000005
	sb	zero,a2,+00000002
	sb	a3,a2,+00000003
	sb	a4,a2,+00000004
	c.lw	a5,0(a2)
	sb	a0,a2,+00000006
	sb	zero,a2,+00000007
	c.lw	a5,0(a2)
	sb	zero,a2,+00000008
	sb	a3,a2,+00000009
	sb	a4,a2,+0000000A
	sb	a1,a2,+0000000B
	c.lw	a5,0(a2)
	sb	a1,a2,+0000000C
	sb	zero,a2,+0000000D
	c.lw	a5,0(a2)
	sb	zero,a2,+0000000E
	sb	a3,a2,+0000000F
	sb	a4,a2,+00000010
	sb	a1,a2,+00000011
	c.lw	a5,0(a2)
	sb	zero,a2,+00000012
	sb	a3,a2,+00000013
	sb	a4,a2,+00000014
	sb	a6,a2,+00000015
	c.lw	a5,0(a2)
	sb	a0,a2,+00000016
	sb	zero,a2,+00000017
	c.lw	a5,0(a2)
	c.li	a0,0000001E
	sb	zero,a2,+00000018
	sb	a3,a2,+00000019
	sb	a4,a2,+0000001A
	sb	a1,a2,+0000001B

l2301C8B0:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

;; me_add_ie_tim: 2301C8B8
;;   Called from:
;;     2301D28A (in me_build_beacon)
me_add_ie_tim proc
	c.lw	a0,0(a5)
	c.li	a4,00000005
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000004
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000003
	c.lw	a0,0(a5)
	c.addi	a5,00000006
	c.sw	a0,0(a5)
	c.li	a0,00000006
	c.jr	ra

;; me_add_ie_ht_capa: 2301C8D8
;;   Called from:
;;     2301CC80 (in me_build_associate_req)
;;     2301D2D8 (in me_build_beacon)
;;     2301D52C (in me_build_probe_rsp)
;;     2301D724 (in me_build_associate_rsp)
me_add_ie_ht_capa proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	lui	s1,00042021
	addi	s1,s1,-000004C4
	addi	a3,zero,+0000002D
	lhu	a5,s1,+0000000C
	sb	a3,a4,+00000000
	c.lw	a0,0(a4)
	c.li	a3,0000001A
	c.andi	a5,FFFFFFF3
	sb	a3,a4,+00000001
	c.lw	a0,0(a4)
	ori	a5,a5,+0000000C
	c.mv	s0,a0
	sb	a5,a4,+00000002
	c.srli	a5,00000008
	sb	a5,a4,+00000003
	lbu	a4,s1,+0000000E
	c.lw	a0,0(a5)
	lui	a1,00042021
	c.li	a2,00000010
	sb	a4,a5,+00000004
	c.lw	a0,0(a0)
	addi	a1,a1,-000004B5
	c.addi	a0,00000005
	jal	ra,000000002301C526
	lhu	a5,s1,+00000020
	c.lw	s0,0(a4)
	lui	a1,00042021
	c.li	a2,00000004
	sb	a5,a4,+00000015
	c.srli	a5,00000008
	sb	a5,a4,+00000016
	c.lw	s0,0(a0)
	addi	a1,a1,-000004A0
	c.addi	a0,00000017
	jal	ra,000000002301C526
	c.lw	s0,0(a5)
	lbu	a4,s1,+00000028
	c.li	a0,0000001C
	sb	a4,a5,+0000001B
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,0000001C
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ht_oper: 2301C96C
;;   Called from:
;;     2301D2E4 (in me_build_beacon)
;;     2301D538 (in me_build_probe_rsp)
;;     2301D736 (in me_build_associate_rsp)
me_add_ie_ht_oper proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	addi	a4,zero,+0000003D
	c.lw	a1,64(s1)
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000016
	c.mv	s0,a0
	sb	a4,a5,+00000001
	lhu	a1,s1,+00000006
	lbu	a0,s1,+00000004
	jal	ra,000000002301C542
	c.lw	s0,0(a5)
	sb	a0,a5,+00000002
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002301C9B2

l2301C9A2:
	lhu	a3,s1,+00000006
	lhu	a4,s1,+00000008
	c.li	a5,00000007
	bltu	a4,a3,000000002301C9B2

l2301C9B0:
	c.li	a5,00000005

l2301C9B2:
	c.lw	s0,0(a4)
	c.li	a0,00000018
	sb	a5,a4,+00000003
	c.lw	s0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000004
	sb	zero,a5,+00000005
	c.lw	s0,0(a5)
	c.li	a4,FFFFFFFF
	sb	zero,a5,+00000006
	sb	zero,a5,+00000007
	c.lw	s0,0(a5)
	sb	a4,a5,+00000008
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,00000018
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_build_authenticate: 2301C9E8
;;   Called from:
;;     230121EE (in sm_auth_send)
;;     23013A6E (in apm_send_mlme)
me_build_authenticate proc
	sb	a1,a0,+00000000
	sb	a2,a0,+00000002
	c.srli	a1,00000008
	c.srli	a2,00000008
	sb	a3,a0,+00000004
	c.srli	a3,00000008
	sb	a1,a0,+00000001
	sb	a2,a0,+00000003
	sb	a3,a0,+00000005
	c.beqz	a4,000000002301CA3A

l2301CA08:
	c.li	a5,00000010
	sb	a5,a0,+00000006
	addi	a5,zero,-00000080
	sb	a5,a0,+00000007
	addi	a3,zero,+00000080
	c.addi	a0,00000008
	c.li	a5,00000000

l2301CA1E:
	add	a2,a4,a5
	lbu	a1,a2,+00000000
	add	a2,a0,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,000000002301CA1E

l2301CA34:
	addi	a0,zero,+00000088
	c.jr	ra

l2301CA3A:
	c.li	a0,00000006
	c.jr	ra

;; me_build_deauthenticate: 2301CA3E
;;   Called from:
;;     23011F02 (in sm_disconnect)
;;     23012842 (in sm_handle_supplicant_result)
;;     23013AD0 (in apm_send_mlme)
me_build_deauthenticate proc
	sb	a1,a0,+00000000
	c.srli	a1,00000008
	sb	a1,a0,+00000001
	c.li	a0,00000002
	c.jr	ra

;; me_build_associate_req: 2301CA4C
;;   Called from:
;;     23012364 (in sm_assoc_req_send)
me_build_associate_req proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	lhu	s0,a6,+00000038
	c.swsp	a0,0000008C
	c.mv	s3,a1
	c.mv	s6,a4
	c.mv	s7,a5
	c.mv	s1,a6
	lhu	s5,a6,+00000036
	lbu	s8,a6,+0000003C
	c.bnez	s0,000000002301CA82

l2301CA80:
	c.li	s0,00000005

l2301CA82:
	c.mv	a0,a3
	c.swsp	a2,00000000
	jal	ra,000000002300DBB8
	c.lwsp	t3,000000E4
	srli	a4,a0,00000008
	c.lwsp	zero,00000084
	sb	a0,a5,+00000000
	sb	a4,a5,+00000001
	c.lwsp	t3,000000E4
	c.mv	s2,a0
	sb	s0,a5,+00000002
	c.srli	s0,00000008
	sb	s0,a5,+00000003
	c.li	s0,00000004
	c.beqz	a2,000000002301CACC

l2301CAAC:
	lhu	a4,a2,+00000000
	c.lwsp	t3,000000E4
	c.li	s0,0000000A
	sh	a4,a5,+00000004
	lhu	a4,a2,+00000002
	c.lwsp	t3,000000E4
	sh	a4,a5,+00000006
	lhu	a4,a2,+00000004
	c.lwsp	t3,000000E4
	sh	a4,a5,+00000008

l2301CACC:
	c.lwsp	t3,000000E4
	addi	a2,s3,+00000027
	c.addi4spn	a0,0000001C
	c.add	a5,s0
	sw	a5,s6,+00000000
	lbu	a1,s3,+00000026
	c.swsp	a5,0000008C
	addi	s9,s3,+00000058
	jal	ra,000000002301C5E2
	c.mv	s4,a0
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002301C61E
	c.add	a0,s4
	lbu	a4,s3,+00000058
	c.add	s0,a0
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301CB12

l2301CB04:
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002301C66E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301CB12:
	andi	s2,s2,+00000100
	beq	s2,zero,000000002301CBEA

l2301CB1A:
	c.lwsp	t3,000000E4
	addi	a1,sp,+0000002F
	c.addi4spn	a0,00000030
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	addi	a4,zero,+00000021
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	c.li	a4,00000002
	sb	a4,a5,+00000000
	jal	ra,0000000023002586
	lw	a5,s3,+0000004C
	lb	a4,sp,+00000030
	lb	a5,a5,+00000004
	bge	a5,a4,000000002301CB56

l2301CB52:
	sb	a5,sp,+00000030

l2301CB56:
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	lbu	a4,sp,+0000002F
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	lbu	a4,sp,+00000030
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	addi	a4,zero,+00000024
	sb	a4,a5,+00000000
	c.lwsp	t3,000000A4
	addi	a5,a3,+00000001
	c.swsp	a5,0000008C
	lw	a5,s3,+0000004C
	lbu	a4,a5,+00000002
	lui	a5,00042021
	addi	a5,a5,-000004C4
	bne	a4,zero,000000002301CCB6

l2301CBA2:
	lbu	a6,a5,+0000012C
	lui	s2,00042021
	addi	s2,s2,-00000494
	c.li	t3,00000001

l2301CBB0:
	c.li	a7,00000000
	c.li	s4,00000000
	c.li	s10,00000000
	c.li	t1,00000000
	c.li	a5,00000000

l2301CBBA:
	c.lwsp	t3,0000006C
	addi	s9,a7,+00000002
	andi	s9,s9,+000000FF
	addi	a2,s11,+00000001
	bne	s10,a6,000000002301CCC6

l2301CBCC:
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

l2301CBEA:
	c.lwsp	t3,000000E4
	add	a4,s1,s5
	c.mv	a6,s1
	c.sub	a5,s1

l2301CBF4:
	bne	a4,a6,000000002301CD3A

l2301CBF8:
	c.lwsp	t3,000000E4
	c.add	s0,s5
	c.slli	s0,10
	c.add	s5,a5
	lw	a5,s3,+00000088
	c.swsp	s5,0000008C
	c.srli	s0,00000010
	c.andi	a5,00000001
	c.beqz	a5,000000002301CC6C

l2301CC0C:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000032
	jal	ra,00000000230A3A68
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000030
	addi	a5,zero,+00000050
	sb	a5,sp,+00000033
	addi	a5,zero,+000002F2
	sh	a5,sp,+00000034
	c.li	a5,00000001
	sb	a5,sp,+00000037
	lui	a5,0004201F
	lw	a5,a5,-00000604
	c.beqz	a5,000000002301CC4C

l2301CC40:
	lb	a5,s3,+00000068
	bge	a5,zero,000000002301CC4C

l2301CC48:
	sb	s8,sp,+00000038

l2301CC4C:
	c.mv	a0,s5
	c.li	a2,00000009
	c.addi4spn	a1,00000030
	jal	ra,000000002301C526
	lbu	a4,sp,+00000031
	c.lwsp	t3,000000E4
	addi	a0,a4,+00000002
	c.add	s0,a0
	c.addi	a5,00000002
	c.slli	s0,10
	c.add	a5,a4
	c.srli	s0,00000010
	c.swsp	a5,0000008C

l2301CC6C:
	lw	a5,s3,+00000088
	c.andi	a5,00000002
	c.beqz	a5,000000002301CC8A

l2301CC74:
	lui	a5,00042021
	lbu	a5,a5,-00000496
	c.beqz	a5,000000002301CC8A

l2301CC7E:
	c.addi4spn	a0,0000001C
	jal	ra,000000002301C8D8
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301CC8A:
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

l2301CCB6:
	lui	s2,00042021
	lbu	a6,a5,+0000012D
	addi	s2,s2,-00000440
	c.li	t3,00000004
	c.j	000000002301CBB0

l2301CCC6:
	lbu	a4,s2,+00000003
	c.swsp	a2,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002301CD32

l2301CCD0:
	lhu	a1,s2,+00000000
	lbu	a0,s2,+00000002
	c.swsp	a6,00000088
	c.swsp	a7,00000008
	c.swsp	t3,00000084
	c.swsp	a5,00000080
	c.swsp	a3,00000000
	c.swsp	t1,00000004
	jal	ra,000000002301C542
	andi	a4,a0,+000000FF
	c.lwsp	zero,000000A4
	c.lwsp	a2,0000008C
	c.lwsp	a6,00000028
	c.lwsp	s4,00000008
	c.mv	a5,a4
	beq	s4,zero,000000002301CD28

l2301CCFA:
	c.lwsp	s0,000000C0
	andi	a0,a0,+000000FF
	c.lwsp	tp,000000E4
	sub	a0,a0,t1
	beq	a0,t3,000000002301CD28

l2301CD0A:
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

l2301CD28:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s2,00000006
	c.mv	t1,a4

l2301CD32:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	000000002301CBBA

l2301CD3A:
	lbu	a2,a6,+00000040
	add	a3,a5,a6
	c.addi	a6,00000001
	sb	a2,a3,+00000000
	c.j	000000002301CBF4

;; me_build_add_ba_req: 2301CD4A
;;   Called from:
;;     2301C3E8 (in bam_send_air_action_frame)
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

;; me_build_add_ba_rsp: 2301CDA2
;;   Called from:
;;     2301C438 (in bam_send_air_action_frame)
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
	c.beqz	a4,000000002301CDDA

l2301CDCE:
	sb	zero,a0,+00000007
	sb	zero,a5,+00000001

l2301CDD6:
	c.li	a0,00000009
	c.jr	ra

l2301CDDA:
	addi	a4,zero,-00000030
	sb	a4,a0,+00000007
	c.li	a4,00000007
	sb	a4,a5,+00000001
	c.j	000000002301CDD6

;; me_build_del_ba: 2301CDEA
;;   Called from:
;;     2301C448 (in bam_send_air_action_frame)
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
	bne	a1,a4,000000002301CE1A

l2301CE0E:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2301CE1A:
	sb	zero,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a3,+00000001
	sb	a2,a0,+00000004
	c.srli	a2,00000008
	sb	a2,a0,+00000005
	c.li	a0,00000006
	c.jr	ra

;; me_extract_rate_set: 2301CE32
;;   Called from:
;;     23010E2A (in scanu_frame_handler)
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
	jal	ra,0000000023015122
	c.beqz	a0,000000002301CEC6

l2301CE4E:
	lbu	a4,a0,+00000001
	c.li	a5,0000000C
	bltu	a5,a4,000000002301CEC6

l2301CE58:
	addi	a5,s0,+00000001
	c.mv	a3,a4
	c.li	a1,FFFFFFFF

l2301CE60:
	c.addi	a3,FFFFFFFF
	bne	a3,a1,000000002301CED2

l2301CE66:
	c.mv	a1,s2
	sb	a4,s0,+00000000
	addi	a2,zero,+00000032
	c.mv	a0,s1
	jal	ra,0000000023015122
	c.mv	s2,a0
	c.beqz	a0,000000002301CEC6

l2301CE7A:
	lbu	s1,a0,+00000001
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	c.add	a5,s1
	bge	a4,a5,000000002301CEA2

l2301CE8A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000396
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000378
	jal	ra,0000000023001234

l2301CEA2:
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	add	a3,a5,s1
	blt	a4,a3,000000002301CEC6

l2301CEB0:
	addi	a4,a5,+00000001
	c.addi	s2,00000002
	c.li	a5,00000000

l2301CEB8:
	bne	s1,a5,000000002301CEE4

l2301CEBC:
	lbu	a5,s0,+00000000
	c.add	s1,a5
	sb	s1,s0,+00000000

l2301CEC6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301CED2:
	c.addi	a5,00000001
	sub	a2,a5,s0
	c.add	a2,a0
	lbu	a2,a2,+00000000
	sb	a2,a5,+00000FFF
	c.j	000000002301CE60

l2301CEE4:
	add	a3,s2,a5
	lbu	a2,a3,+00000000
	add	a3,a4,a5
	c.add	a3,s0
	sb	a2,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002301CEB8

;; me_extract_power_constraint: 2301CEFA
;;   Called from:
;;     2300DFCE (in me_beacon_check)
;;     230112C2 (in scanu_frame_handler)
me_extract_power_constraint proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,0000000023015122
	c.li	a5,00000000
	c.beqz	a0,000000002301CF12

l2301CF0E:
	lbu	a5,a0,+00000002

l2301CF12:
	sb	a5,s0,+00000084
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_extract_country_reg: 2301CF1E
;;   Called from:
;;     230112CC (in scanu_frame_handler)
me_extract_country_reg proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.li	a2,00000007
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,0000000023015122
	c.beqz	a0,000000002301CF7E

l2301CF32:
	c.lw	s0,76(s0)
	c.mv	s1,a0
	c.li	s2,00000001
	lbu	a0,s0,+00000002
	c.beqz	a0,000000002301CF40

l2301CF3E:
	c.li	s2,00000004

l2301CF40:
	lhu	a1,s0,+00000000
	jal	ra,000000002301C542
	lbu	a2,s1,+00000001
	andi	a0,a0,+000000FF
	c.li	a5,00000005
	c.addi	a2,00000001

l2301CF54:
	blt	a2,a5,000000002301CF7E

l2301CF58:
	add	a1,a5,s1
	lbu	a3,a1,+00000000
	lbu	a6,a1,+00000001
	c.li	a4,00000000

l2301CF66:
	bne	a4,a6,000000002301CF72

l2301CF6A:
	c.addi	a5,00000003
	andi	a5,a5,+000000FF
	c.j	000000002301CF54

l2301CF72:
	bne	a3,a0,000000002301CF8A

l2301CF76:
	lbu	a5,a1,+00000002
	sb	a5,s0,+00000004

l2301CF7E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301CF8A:
	c.add	a3,s2
	c.addi	a4,00000001
	andi	a3,a3,+000000FF
	andi	a4,a4,+000000FF
	c.j	000000002301CF66

;; me_extract_mobility_domain: 2301CF98
;;   Called from:
;;     230112D6 (in scanu_frame_handler)
me_extract_mobility_domain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000036
	c.swsp	ra,00000084
	jal	ra,0000000023015122
	c.bnez	a0,000000002301CFBA

l2301CFAA:
	sh	zero,s0,+0000008C
	sb	zero,s0,+0000008E

l2301CFB2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301CFBA:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008C
	lbu	a5,a0,+00000004
	sb	a5,s0,+0000008E
	c.j	000000002301CFB2

;; me_extract_csa: 2301CFD4
;;   Called from:
;;     2300DF82 (in me_beacon_check)
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
	jal	ra,0000000023015122
	c.mv	s2,a0
	addi	a2,zero,+0000003C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023015122
	or	a5,s2,a0
	beq	a5,zero,000000002301D10E

l2301D00C:
	addi	a2,zero,+0000003E
	c.mv	a1,s1
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,0000000023015122
	c.mv	s6,a0
	addi	a2,zero,+000000C4
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023015122
	c.mv	s0,a0
	c.beqz	a0,000000002301D03C

l2301D02C:
	lbu	a1,a0,+00000001
	addi	a2,zero,+000000C2
	c.addi	a0,00000002
	jal	ra,0000000023015122
	c.mv	s0,a0

l2301D03C:
	beq	s2,zero,000000002301D0CE

l2301D040:
	lbu	a5,s2,+00000002
	lbu	s1,s2,+00000004
	sb	a5,s5,+00000000
	lbu	a1,s2,+00000003

l2301D050:
	c.bnez	s1,000000002301D054

l2301D052:
	c.li	s1,00000002

l2301D054:
	sltiu	s3,a1,+0000000F
	xori	s3,s3,+00000001
	c.mv	a0,s3
	jal	ra,000000002301C598
	c.mv	s5,a0
	c.beqz	s0,000000002301D0E0

l2301D066:
	lbu	a5,s0,+00000002
	c.li	a4,00000002
	lbu	a1,s0,+00000003
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	lbu	s6,s0,+00000004
	c.li	s2,00000001
	bltu	a4,a5,000000002301D08E

l2301D080:
	lui	a4,000230CC
	addi	a4,a4,-0000070C
	c.add	a5,a4
	lbu	s2,a5,+00000000

l2301D08E:
	c.mv	a0,s3
	jal	ra,000000002301C598
	c.mv	s0,a0
	c.li	a0,00000000
	beq	s6,zero,000000002301D0A4

l2301D09C:
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,000000002301C598

l2301D0A4:
	sh	a0,s4,+00000006
	sb	s3,s4,+00000000
	sb	s2,s4,+00000001
	sh	s5,s4,+00000002
	sh	s0,s4,+00000004
	c.mv	a0,s1

l2301D0BA:
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

l2301D0CE:
	lbu	a5,s3,+00000002
	lbu	s1,s3,+00000005
	sb	a5,s5,+00000000
	lbu	a1,s3,+00000004
	c.j	000000002301D050

l2301D0E0:
	beq	s6,zero,000000002301D106

l2301D0E4:
	lbu	a5,s6,+00000002
	c.li	a4,00000001
	addi	s0,a0,+0000000A
	beq	a5,a4,000000002301D0FC

l2301D0F2:
	c.li	a4,00000003
	bne	a5,a4,000000002301D106

l2301D0F8:
	addi	s0,a0,-0000000A

l2301D0FC:
	c.slli	s0,10
	c.srli	s0,00000010
	c.li	a0,00000000
	c.li	s2,00000001
	c.j	000000002301D0A4

l2301D106:
	c.mv	s0,s5
	c.li	a0,00000000
	c.li	s2,00000000
	c.j	000000002301D0A4

l2301D10E:
	c.li	a0,00000000
	c.j	000000002301D0BA

;; me_build_beacon: 2301D112
;;   Called from:
;;     2301F0A2 (in apm_start_req_handler)
me_build_beacon proc
	c.addi16sp	FFFFFFB0
	c.swsp	s4,0000001C
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000020
	lui	s2,00042020
	c.swsp	s7,00000094
	addi	s7,s2,-00000088
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
	lui	a1,000230CC
	lbu	s3,s7,+00000418
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	sb	zero,a0,+00000003
	addi	a1,a1,-00000770
	c.mv	s6,a2
	c.addi	a0,00000004
	c.li	a2,00000006
	c.swsp	a4,00000004
	c.mv	s5,a3
	addi	s8,s7,+00000050
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+0000000A
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000010
	jal	ra,00000000230A382C
	lui	a3,00042020
	addi	a3,a3,-000000F0
	lhu	a5,a3,+00000054
	c.mv	a0,s1
	addi	s2,s2,-00000088
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
	jal	ra,000000002300DBB8
	c.lwsp	s0,000000C4
	beq	s3,zero,000000002301D1D8

l2301D1D0:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301D1D8:
	c.lwsp	a2,000000E4
	addi	a2,s4,+0000037F
	c.add	a2,s2
	sb	a0,a5,+00000022
	c.srli	a0,00000008
	sb	a0,a5,+00000023
	c.lwsp	a2,000000E4
	addi	a5,a5,+00000024
	c.swsp	a5,00000084
	beq	a4,zero,000000002301D422

l2301D1F6:
	lui	a0,000230AE
	c.mv	a1,a2
	addi	a0,a0,+0000035C
	jal	ra,0000000023082388
	c.li	a2,00000000
	c.li	a1,00000000

l2301D208:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C5E2
	addi	s7,s4,+000003B0
	addi	a0,a0,+00000024
	c.add	s7,s2
	slli	s0,a0,00000010
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C61E
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	a5,s2
	lbu	a4,a5,+000003B0
	c.li	a5,00000008
	bgeu	a5,a4,000000002301D24E

l2301D240:
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C66E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D24E:
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
	jal	ra,000000002301C6AE
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	sh	s0,s6,+00000000
	lbu	a1,s7,+000003AC
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C8B8
	andi	a0,a0,+000000FF
	sb	a0,s5,+00000000
	c.add	s0,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C6F0
	c.lwsp	a2,00000064
	andi	a2,a0,+000000FF
	c.mv	s5,a0
	lui	a0,00042023
	c.sub	a1,a2
	addi	a0,a0,-00000398
	jal	ra,00000000230A382C
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C6CE
	c.slli	s0,10
	c.srli	s0,00000010
	lw	a5,s7,+000003E0
	c.add	s0,a0
	andi	s5,s5,+000000FF
	c.add	s0,s5
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,000000002301D2F0

l2301D2D6:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C8D8
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C96C
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D2F0:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C810
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,000000002301D408

l2301D312:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,00000000230A3A68
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
	jal	ra,000000002301C526
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

l2301D408:
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

l2301D422:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s2
	lbu	a1,a5,+0000037E
	c.j	000000002301D208

;; me_build_probe_rsp: 2301D432
;;   Called from:
;;     23013AE6 (in apm_send_mlme)
me_build_probe_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000018
	lui	s2,00042020
	addi	a5,s2,-00000088
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
	jal	ra,000000002300DBB8
	addi	s2,s2,-00000088
	beq	s3,zero,000000002301D482

l2301D47A:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301D482:
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
	jal	ra,000000002301C5E2
	c.mv	s0,a0
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C61E
	c.add	s0,a0
	lbu	a4,s5,+000003B0
	c.addi	s0,0000000C
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301D4DE

l2301D4D0:
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C66E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D4DE:
	addi	s5,zero,+000005D8
	add	s5,s1,s5
	c.add	s5,s2
	lw	a5,s5,+000003A4
	lhu	a1,a5,+00000000
	lbu	a0,a5,+00000002
	jal	ra,000000002301C542
	andi	a1,a0,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C6AE
	c.mv	s6,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C6F0
	c.add	a0,s6
	c.add	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C6CE
	c.slli	s0,10
	lw	a5,s5,+000003E0
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,000000002301D544

l2301D52A:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C8D8
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C96C
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D544:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C810
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,000000002301D65C

l2301D566:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,00000000230A3A68
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
	jal	ra,000000002301C526
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

l2301D65C:
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

;; me_build_associate_rsp: 2301D672
;;   Called from:
;;     23013B04 (in apm_send_mlme)
me_build_associate_rsp proc
	addi	a4,zero,+000005D8
	add	a4,a1,a4
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	lui	s3,00042020
	addi	a5,s3,-00000088
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
	jal	ra,000000002300DBB8
	addi	s3,s3,-00000088
	c.lwsp	s0,00000084
	c.beqz	s0,000000002301D6B4

l2301D6AC:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301D6B4:
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
	bne	a2,zero,000000002301D844

l2301D6EE:
	addi	s1,s4,+00000006
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C61E
	lbu	a4,s4,+00000006
	c.addi	a0,00000006
	slli	s0,a0,00000010
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301D71A

l2301D70C:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C66E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D71A:
	lw	a5,s4,+00000040
	c.andi	a5,00000002
	c.beqz	a5,000000002301D742

l2301D722:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301C8D8
	addi	a1,zero,+000005D8
	add	a1,s2,a1
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	c.add	a1,s3
	jal	ra,000000002301C96C
	c.add	a0,s1
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D742:
	lw	a5,s4,+00000040
	c.andi	a5,00000001
	beq	a5,zero,000000002301D844

l2301D74C:
	addi	s1,zero,+000005D8
	add	s1,s2,s1
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,00000000230A3A68
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
	jal	ra,000000002301C526
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

l2301D844:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; me_rc_set_rate_req_handler: 2301D856
me_rc_set_rate_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lbu	s2,a1,+00000000
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a3,s2,a3
	addi	a4,a5,-000005A0
	c.mv	s3,a1
	addi	s1,a5,-000005A0
	c.add	a4,a3
	lw	s0,a4,+00000110
	c.bnez	s0,000000002301D89C

l2301D884:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000031D
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000055C
	jal	ra,0000000023001234

l2301D89C:
	lhu	s3,s3,+00000002
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	s3,a5,000000002301D8D6

l2301D8A8:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300EB8C
	c.beqz	a0,000000002301D8C6

l2301D8B2:
	lbu	a5,s0,+000000AF
	sh	s3,s0,+000000C6
	andi	a5,a5,-00000061
	ori	a5,a5,+00000020
	sb	a5,s0,+000000AF

l2301D8C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301D8D6:
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
	jal	ra,000000002300E9E8
	c.j	000000002301D8C6

;; me_rc_stats_req_handler: 2301D904
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
	jal	ra,00000000230149A2
	lbu	a3,s1,+00000000
	addi	a4,zero,+000001B0
	lui	a5,0004201F
	add	a4,a3,a4
	addi	a5,a5,-000005A0
	c.mv	s0,a0
	c.add	a5,a4
	lw	s1,a5,+00000110
	sb	a3,a0,+00000000
	c.beqz	s1,000000002301D9CC

l2301D942:
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
	jal	ra,00000000230A382C
	addi	a2,zero,+00000078
	addi	a1,s1,+00000004
	addi	a0,s0,+00000030
	jal	ra,00000000230A382C

l2301D992:
	lhu	a5,s1,+000000C0
	bltu	s2,a5,000000002301D9AE

l2301D99A:
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301D9AE:
	andi	a1,s2,+000000FF
	c.mv	a0,s1
	jal	ra,000000002300EC26
	addi	a5,s2,+00000028
	c.slli	a5,02
	c.addi	s2,00000001
	c.add	a5,s0
	c.slli	s2,10
	c.sw	a5,8(a0)
	srli	s2,s2,00000010
	c.j	000000002301D992

l2301D9CC:
	sh	zero,a0,+00000002
	c.j	000000002301D99A

;; me_traffic_ind_req_handler: 2301D9D2
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
	lui	s0,0004201F
	add	a5,s1,a5
	c.mv	s4,a2
	lbu	a2,a1,+00000002
	addi	a4,s0,-000005A0
	c.mv	s3,a3
	c.mv	s2,a1
	lbu	a3,a1,+00000001
	addi	s0,s0,-000005A0
	c.add	a4,a5
	lbu	a5,a4,+00000032
	c.beqz	a2,000000002301DA84

l2301DA0E:
	andi	a4,a5,+000000FB
	c.beqz	a3,000000002301DA18

l2301DA14:
	ori	a4,a5,+00000004

l2301DA18:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.add	a5,s0
	sb	a4,a5,+00000032
	lbu	a4,a5,+000000F2
	c.li	a5,0000000F
	bne	a4,a5,000000002301DA64

l2301DA30:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,00000000230149A2
	addi	a4,zero,+000001B0
	add	s1,s1,a4
	c.add	s0,s1
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	lbu	a4,s2,+00000001
	sb	a4,a0,+00000002
	jal	ra,0000000023014A0E

l2301DA64:
	c.lui	a0,00001000
	c.mv	a2,s4
	c.mv	a1,s3
	addi	a0,a0,+0000040D
	jal	ra,0000000023014A78
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301DA84:
	c.beqz	a3,000000002301DA90

l2301DA86:
	ori	a5,a5,+00000001

l2301DA8A:
	sb	a5,a4,+00000032
	c.j	000000002301DA30

l2301DA90:
	c.andi	a5,FFFFFFFE
	c.j	000000002301DA8A

;; me_sta_del_req_handler: 2301DA94
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
	jal	ra,00000000230149A2
	lbu	a5,s0,+00000000
	sb	a5,a0,+00000000
	jal	ra,0000000023014A0E
	lbu	a5,s0,+00000001
	c.beqz	a5,000000002301DAF8

l2301DAC2:
	c.lui	a0,00001000
	c.li	a2,00000006
	c.li	a3,00000002
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,00000000230149A2
	sb	zero,a0,+00000000
	lbu	a4,s0,+00000000
	addi	a2,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a2
	addi	a5,a5,-000005A0
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,a0,+00000001
	jal	ra,0000000023014A0E

l2301DAF8:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+0000040A
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_set_control_port_req_handler: 2301DB14
me_set_control_port_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	addi	a4,zero,+000001B0
	lui	s0,0004201F
	add	a5,a5,a4
	addi	s0,s0,-000005A0
	c.mv	s1,a3
	c.mv	s2,a2
	addi	a2,zero,+000005D8
	lui	a4,00042020
	addi	a4,a4,-00000088
	c.add	s0,a5
	lbu	a3,s0,+0000001A
	lbu	a5,a1,+00000001
	add	a3,a3,a2
	sltu	a5,zero,a5
	c.addi	a5,00000001
	sb	a5,s0,+00000031
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.bnez	a4,000000002301DB88

l2301DB62:
	c.li	a4,00000002
	bne	a5,a4,000000002301DB88

l2301DB68:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,00000000230149A2
	sb	zero,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000001
	jal	ra,0000000023014A0E

l2301DB88:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+00000405
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_chan_config_req_handler: 2301DBA4
me_chan_config_req_handler proc
	c.addi	sp,FFFFFFE0
	lui	a0,00042021
	c.swsp	s0,0000000C
	addi	a0,a0,-00000494
	c.mv	s0,a2
	addi	a2,zero,+000000FE
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000403
	c.mv	a1,a3
	jal	ra,0000000023014A78
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_set_ps_mode_cfm_handler: 2301DBD8
mm_set_ps_mode_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301DC04

l2301DBEC:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000002BB
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,0000000023001234

l2301DC04:
	lui	a5,00042021
	lhu	a1,a5,-000004BC
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002301DC20

l2301DC14:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000414
	jal	ra,0000000023014A78

l2301DC20:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023014B3C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_cfm_handler: 2301DC32
mm_set_idle_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301DC5E

l2301DC46:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000252
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,0000000023001234

l2301DC5E:
	lui	a5,00042021
	lhu	a1,a5,-000004BC
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002301DC7A

l2301DC6E:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000412
	jal	ra,0000000023014A78

l2301DC7A:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023014B3C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_config_req_handler: 2301DC8C
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
	jal	ra,00000000230149A2
	lbu	a5,s1,+0000002E
	lui	s0,00042021
	addi	s2,s0,-000004C4
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	s3,a0
	addi	a0,s2,+0000000C
	sb	a5,s2,+0000002E
	jal	ra,00000000230A382C
	c.lui	a0,00001000
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,+00000401
	jal	ra,0000000023014A78
	lbu	a5,s2,+0000002E
	addi	s0,s0,-000004C4
	c.beqz	a5,000000002301DD42

l2301DCE8:
	jal	ra,000000002300252A
	lhu	a5,s0,+0000000C
	c.addi	a0,00000001
	c.srai	a0,00000001
	c.srli	a5,00000001
	c.andi	a5,00000001
	sb	a0,s0,+0000012E
	sb	a5,s0,+0000012F

l2301DD00:
	lhu	a5,s1,+0000002C
	sh	a5,s0,+0000002C
	lbu	a5,s1,+00000030
	sb	a5,s0,+00000130
	c.beqz	a5,000000002301DD2E

l2301DD12:
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000008
	c.li	a5,00000002
	c.mv	a0,s3
	sb	a5,s3,+00000000
	jal	ra,0000000023014A0E
	c.li	a1,00000001
	c.li	a0,00000005
	jal	ra,0000000023014B3C

l2301DD2E:
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

l2301DD42:
	sh	zero,s0,+0000012E
	c.j	000000002301DD00

;; me_set_ps_disable_req_handler: 2301DD48
me_set_ps_disable_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042021
	c.swsp	s4,00000004
	addi	s4,s0,-000004C4
	lbu	a5,s4,+00000130
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s1,a2
	c.mv	s2,a3
	c.bnez	a5,000000002301DD8A

l2301DD68:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000414
	jal	ra,0000000023014A78

l2301DD76:
	c.li	a4,00000000

l2301DD78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l2301DD8A:
	c.li	a0,00000005
	c.mv	s3,a1
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,000000002301DD78

l2301DD9A:
	lw	a4,s4,+00000004
	addi	s0,s0,-000004C4
	lbu	a3,s3,+00000000
	c.beqz	a4,000000002301DDEA

l2301DDA8:
	c.bnez	a3,000000002301DDFE

l2301DDAA:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000031
	jal	ra,00000000230149A2
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,000000002301DDEE

l2301DDC2:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	c.or	a5,a4

l2301DDCC:
	c.sw	s0,4(a5)
	sltiu	a5,a5,+00000001
	sh	s2,s0,+00000008
	c.slli	a5,01
	sb	a5,a0,+00000000
	jal	ra,0000000023014A0E
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023014B3C
	c.j	000000002301DD76

l2301DDEA:
	c.beqz	a3,000000002301DD68

l2301DDEC:
	c.j	000000002301DDAA

l2301DDEE:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	000000002301DDCC

l2301DDFE:
	lbu	a3,s3,+00000001
	sll	a5,a5,a3
	c.or	a5,a4
	sw	a5,s4,+00000004
	c.j	000000002301DD68

;; me_set_active_req_handler: 2301DE0E
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
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,000000002301DE94

l2301DE2E:
	lui	s0,00042021
	addi	a4,s0,-000004C4
	c.lw	a4,0(a3)
	lbu	a2,s3,+00000000
	addi	s0,s0,-000004C4
	c.beqz	a3,000000002301DE82

l2301DE42:
	c.bnez	a2,000000002301DEB4

l2301DE44:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000022
	jal	ra,00000000230149A2
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,000000002301DEA4

l2301DE5C:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	c.or	a5,a4

l2301DE66:
	c.sw	s0,0(a5)
	sh	s2,s0,+00000008
	sltiu	a5,a5,+00000001
	sb	a5,a0,+00000000
	jal	ra,0000000023014A0E
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023014B3C
	c.j	000000002301DE92

l2301DE82:
	c.bnez	a2,000000002301DE44

l2301DE84:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000412
	jal	ra,0000000023014A78

l2301DE92:
	c.li	a4,00000000

l2301DE94:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l2301DEA4:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	000000002301DE66

l2301DEB4:
	lbu	a2,s3,+00000001
	sll	a5,a5,a2
	c.or	a5,a3
	c.sw	a4,0(a5)
	c.j	000000002301DE84

;; me_sta_add_req_handler: 2301DEC2
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
	jal	ra,00000000230149A2
	c.mv	s5,a0
	jal	ra,00000000230108CC
	c.lw	s0,64(a5)
	c.mv	s6,a0
	lbu	s4,s0,+00000049
	c.andi	a5,00000002
	beq	a5,zero,000000002301E0CC

l2301DEFE:
	lbu	a5,s0,+00000016
	c.li	a4,00000002
	c.li	s2,00000001
	andi	s1,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a4,a5,000000002301DF1C

l2301DF12:
	c.addi	a5,FFFFFFFD
	sll	a5,s2,a5
	andi	s2,a5,+000000FF

l2301DF1C:
	addi	a5,s1,+0000000D
	c.li	s1,00000001
	sll	s1,s1,a5
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010

l2301DF2C:
	c.li	a2,00000006
	c.mv	a1,s0
	addi	a0,sp,+0000001A
	c.swsp	zero,00000088
	jal	ra,00000000230A382C
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
	jal	ra,0000000023008410
	sb	a0,s5,+00000001
	bne	a0,zero,000000002301E0AA

l2301DF74:
	lbu	s1,s5,+00000000
	addi	s2,zero,+000001B0
	lui	s3,0004201F
	add	s2,s1,s2
	addi	a5,s3,-000005A0
	c.li	a2,0000000D
	addi	a1,s0,+00000006
	lui	s7,00042020
	addi	s3,s3,-000005A0
	addi	s7,s7,-00000088
	c.add	s2,a5
	addi	a0,s2,+000000B0
	jal	ra,00000000230A382C
	c.lw	s0,64(a5)
	c.andi	a5,00000001
	bne	a5,zero,000000002301E0D2

l2301DFAC:
	c.li	s9,00000000

l2301DFAE:
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
	jal	ra,000000002300DE44
	c.lw	s0,64(a5)
	c.andi	a5,00000010
	c.beqz	a5,000000002301DFF8

l2301DFDC:
	lbu	a1,s0,+00000048
	slli	a5,a1,00000018
	c.srai	a5,00000018
	blt	a5,zero,000000002301DFF8

l2301DFEA:
	lbu	a0,s8,+0000001B
	srli	a2,a1,00000004
	c.andi	a1,00000003
	jal	ra,000000002300E0BE

l2301DFF8:
	beq	s9,zero,000000002301E014

l2301DFFC:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.li	a2,00000000
	addi	a1,zero,+000000FF
	c.add	a5,s3
	lbu	a0,a5,+0000001B
	jal	ra,000000002300E0BE

l2301E014:
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
	beq	s6,zero,000000002301E0AA

l2301E05C:
	sb	s6,a5,+0000001C
	lbu	a5,a4,+0000034A
	c.bnez	a5,000000002301E096

l2301E066:
	lbu	s0,a4,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s0,0000000A
	andi	s0,s0,+000000FF
	add	s2,s0,s2
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,00000000230149A2
	c.li	a4,00000001
	c.add	s3,s2
	sb	a4,s3,+0000001C
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	jal	ra,0000000023014A0E

l2301E096:
	addi	a5,zero,+000005D8
	add	s4,s4,a5
	c.add	s7,s4
	lbu	a5,s7,+0000034A
	c.addi	a5,00000001
	sb	a5,s7,+0000034A

l2301E0AA:
	c.mv	a0,s5
	jal	ra,0000000023014A0E
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

l2301E0CC:
	c.li	s2,00000000
	c.li	s1,00000000
	c.j	000000002301DF2C

l2301E0D2:
	lw	a5,s2,+000000EC
	ori	a4,a5,+00000001
	sw	a4,s2,+000000EC
	c.lw	s0,64(a4)
	c.andi	a4,00000002
	beq	a4,zero,000000002301DFAC

l2301E0E6:
	lui	a4,00042021
	lbu	a4,a4,-00000496
	beq	a4,zero,000000002301DFAC

l2301E0F2:
	ori	a5,a5,+00000003
	sw	a5,s2,+000000EC
	addi	a2,zero,+00000020
	addi	a1,s0,+00000014
	addi	a0,s2,+000000C0
	jal	ra,00000000230A382C
	addi	a1,zero,+000005D8
	add	a1,s4,a1
	c.mv	a0,s2
	addi	a1,a1,+00000358
	c.add	a1,s7
	jal	ra,000000002300D9C0
	c.mv	s9,a0
	c.j	000000002301DFAE

;; cfm_raw_send: 2301E122
cfm_raw_send proc
	lui	a0,000230AE
	addi	a0,a0,+00000450
	jal	zero,0000000023082388

;; scanu_raw_send_req_handler: 2301E12E
scanu_raw_send_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s0,a1
	c.lw	a1,4(a2)
	c.lw	a1,0(a1)
	lui	a0,000230AE
	addi	a0,a0,+000004C4
	c.swsp	a3,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,000000A4
	c.li	a0,00000000
	c.mv	a1,a3
	jal	ra,0000000023010A7C
	addi	a1,zero,+00000100
	c.li	a0,00000000
	lw	s2,s0,+00000000
	c.lw	s0,4(s1)
	jal	ra,000000002300C582
	c.beqz	a0,000000002301E1B2

l2301E168:
	c.mv	s0,a0
	c.lw	a0,104(a0)
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+0000014C
	jal	ra,00000000230A382C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000030
	lui	a5,0002301E
	addi	a5,a5,+00000122
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
	jal	ra,000000002300C716

l2301E1B2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; scanu_join_req_handler: 2301E1C0
scanu_join_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+0000014E
	addi	a2,zero,+000005D8
	lui	a5,00042020
	add	a4,a4,a2
	addi	a5,a5,-00000088
	c.add	a5,a4
	sw	zero,a5,+000003E0
	lui	a5,00042021
	addi	a5,a5,+000005AC
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
	c.beqz	a5,000000002301E222

l2301E20A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000000B6
	addi	a1,a1,+0000020C
	addi	a0,a0,+000004A4
	jal	ra,0000000023001234

l2301E222:
	jal	ra,0000000023011700
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; scanu_start_req_handler: 2301E22E
scanu_start_req_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042021
	c.swsp	ra,00000084
	addi	a5,a5,+000005AC
	sh	a3,a5,+00000168
	sh	zero,a5,+0000016A
	lw	a4,a1,+00000140
	c.sw	a5,0(a1)
	sw	a4,a5,+0000016C
	lhu	a4,a1,+00000144
	sh	a4,a5,+00000170
	jal	ra,0000000023011700
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; rxu_mgt_ind_handler: 2301E260
rxu_mgt_ind_handler proc
	c.mv	a0,a1
	jal	zero,0000000023010B5C

;; scan_done_ind_handler: 2301E266
scan_done_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042021
	c.swsp	ra,00000084
	addi	a5,a5,+000005AC
	lbu	a4,a5,+0000016B
	c.addi	a4,00000001
	sb	a4,a5,+0000016B
	jal	ra,000000002301143C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; scan_start_cfm_handler: 2301E288
scan_start_cfm_handler proc
	lbu	a0,a1,+00000000
	c.beqz	a0,000000002301E29E

l2301E28E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230109F4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301E29E:
	c.li	a0,00000000
	c.jr	ra

;; me_set_ps_disable_cfm_handler: 2301E2A2
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000004
	beq	a0,a5,000000002301E2DE

l2301E2B2:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301E2DE

l2301E2BA:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000008
	beq	a0,a5,000000002301E2DE

l2301E2C6:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000001DB
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000574
	jal	ra,0000000023001234

l2301E2DE:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000004
	bne	a0,a5,000000002301E2EE

l2301E2EA:
	jal	ra,0000000023011BCA

l2301E2EE:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 2301E2F6
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000004
	beq	a0,a5,000000002301E31E

l2301E306:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+000001FA
	addi	a1,a1,+0000020C
	addi	a0,a0,+000005FC
	jal	ra,0000000023001234

l2301E31E:
	jal	ra,0000000023011BCA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; sm_rsp_timeout_ind_handler: 2301E32A
sm_rsp_timeout_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000005
	bne	a0,a5,000000002301E348

l2301E33A:
	c.li	a0,0000000B
	jal	ra,0000000023011F54

l2301E340:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301E348:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000006
	beq	a0,a5,000000002301E33A

l2301E354:
	c.j	000000002301E340

;; scanu_start_cfm_handler: 2301E356
scanu_start_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301E382

l2301E36A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000010A
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000678
	jal	ra,0000000023001234

l2301E382:
	c.addi4spn	a0,00000008
	c.addi4spn	a1,0000000C
	jal	ra,000000002301189C
	c.lwsp	s0,00000044
	c.beqz	a0,000000002301E3A0

l2301E38E:
	c.lwsp	a2,00000064
	c.beqz	a1,000000002301E3A0

l2301E392:
	c.li	a2,00000000
	jal	ra,0000000023011AC6

l2301E398:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301E3A0:
	c.li	a0,0000000C
	jal	ra,0000000023011F54
	c.j	000000002301E398

;; mm_connection_loss_ind_handler: 2301E3A8
mm_connection_loss_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	a0,00000006
	lbu	s2,a1,+00000000
	jal	ra,0000000023014C3C
	c.li	s1,00000002
	c.bnez	a0,000000002301E3F0

l2301E3C0:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	s0,00042020
	addi	s0,s0,-00000088
	c.li	s1,00000000
	c.add	s0,s2
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002301E3F0

l2301E3DA:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002301E3F0

l2301E3E0:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023014B3C
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023011DC4

l2301E3F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; scanu_join_cfm_handler: 2301E3FE
scanu_join_cfm_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.li	a0,00000006
	lui	s0,00042021
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	lw	s3,s0,+00000740
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	addi	s0,s0,+00000740
	beq	a0,a5,000000002301E43C

l2301E424:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000134
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000654
	jal	ra,0000000023001234

l2301E43C:
	lbu	s4,s3,+0000003D
	addi	a5,zero,+000005D8
	lui	s2,00042020
	add	a5,s4,a5
	addi	a0,s2,-00000088
	addi	s2,s2,-00000088
	add	s1,a0,a5
	lw	a4,s1,+000003E0
	bge	a4,zero,000000002301E52A

l2301E460:
	addi	a0,sp,+0000000F
	jal	ra,0000000023011B68
	c.bnez	a0,000000002301E522

l2301E46A:
	addi	a3,zero,+00000020
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000A
	jal	ra,00000000230149A2
	c.mv	s0,a0
	lbu	a1,sp,+0000000F
	lbu	a0,s3,+0000003D
	jal	ra,000000002301ACD8
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	addi	a1,s1,+00000378
	sb	a5,s0,+00000011
	addi	a0,s0,+0000000A
	jal	ra,00000000230A382C
	sb	zero,s0,+00000012
	lw	a5,s1,+000003E0
	c.andi	a5,00000002
	c.beqz	a5,000000002301E4DA

l2301E4A8:
	lbu	a5,s1,+0000035A
	c.li	a2,00000002
	c.li	a4,00000001
	andi	a3,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a2,a5,000000002301E4C6

l2301E4BC:
	c.addi	a5,FFFFFFFD
	sll	a5,a4,a5
	andi	a4,a5,+000000FF

l2301E4C6:
	sb	a4,s0,+00000010
	c.li	a5,00000001
	addi	a4,a3,+0000000D
	sll	a5,a5,a4
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000008

l2301E4DA:
	c.mv	a0,s0
	sw	zero,s0,+00000004
	jal	ra,0000000023014A0E
	c.li	a1,00000003
	c.li	a0,00000006
	jal	ra,0000000023014B3C

l2301E4EC:
	addi	a5,zero,+000005D8
	add	a5,s4,a5
	lw	a4,s3,+00000030
	c.add	a5,s2
	sw	a4,a5,+000005C4
	lw	a4,s3,+00000030
	c.andi	a4,00000004
	c.beqz	a4,000000002301E510

l2301E506:
	lw	a4,a5,+000003E0
	c.andi	a4,FFFFFFF9
	sw	a4,a5,+000003E0

l2301E510:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301E522:
	c.li	a0,0000000D
	jal	ra,0000000023011F54
	c.j	000000002301E4EC

l2301E52A:
	lbu	a4,s0,+00000010
	c.beqz	a4,000000002301E542

l2301E530:
	lw	a1,s1,+000003A4
	addi	a5,a5,+00000378
	c.li	a2,00000001
	c.add	a0,a5
	jal	ra,0000000023011AC6
	c.j	000000002301E510

l2301E542:
	c.li	a0,0000000E
	jal	ra,0000000023011F54
	c.j	000000002301E510

;; sm_connect_req_handler: 2301E54A
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
	jal	ra,0000000023014C3C
	c.li	a5,00000008
	c.li	s1,00000002
	beq	a0,a5,000000002301E688

l2301E578:
	c.lui	a0,00002000
	c.li	a3,00000001
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FF
	jal	ra,00000000230149A2
	c.mv	s4,a0
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	bne	a0,zero,000000002301E72C

l2301E594:
	addi	a4,zero,+000005D8
	add	a4,s3,a4
	lui	s2,00042020
	addi	a5,s2,-00000088
	lbu	a3,s0,+0000003B
	addi	s2,s2,-00000088
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,000000002301E5BC

l2301E5B4:
	lbu	a4,a5,+00000058
	beq	a4,zero,000000002301E69E

l2301E5BC:
	c.li	a5,00000002
	bne	a3,a5,000000002301E732

l2301E5C2:
	lui	s1,00042021
	lw	a5,s1,+00000740
	addi	s1,s1,+00000740
	c.beqz	a5,000000002301E5E8

l2301E5D0:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000005D
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006DC
	jal	ra,0000000023001234

l2301E5E8:
	c.lw	s1,4(a5)
	c.sw	s1,0(s0)
	c.beqz	a5,000000002301E606

l2301E5EE:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000061
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006FC
	jal	ra,0000000023001234

l2301E606:
	c.lui	a0,00002000
	addi	a3,zero,+00000354
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FE
	jal	ra,00000000230149A2
	lbu	a1,s0,+0000003D
	c.sw	s1,4(a0)
	lui	a0,000230AE
	c.li	a5,FFFFFFFF
	addi	a0,a0,+00000718
	c.sw	s1,20(a5)
	sb	zero,s1,+00000011
	jal	ra,0000000023082388
	lbu	a4,s0,+0000003B
	c.li	a5,00000002
	bne	a4,a5,000000002301E6F4

l2301E63C:
	lbu	a1,s0,+0000003D
	c.li	a5,00000001
	sb	a5,s1,+00000011
	addi	s1,zero,+000005D8
	add	a1,a1,s1
	lui	a0,00042021
	c.li	a2,00000006
	addi	a0,a0,+00000758
	addi	a1,a1,+00000038
	c.add	a1,s2
	jal	ra,00000000230A382C
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023014B3C
	lbu	a0,s0,+0000003D
	c.li	a1,00000000
	add	a0,a0,s1
	c.add	a0,s2
	jal	ra,0000000023011DC4

l2301E67A:
	c.li	s1,00000001
	c.li	a5,00000000

l2301E67E:
	sb	a5,s4,+00000000
	c.mv	a0,s4
	jal	ra,0000000023014A0E

l2301E688:
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

l2301E69E:
	c.li	a4,00000002
	beq	a3,a4,000000002301E5C2

l2301E6A4:
	lbu	a4,a5,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002301E6C8

l2301E6B0:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000059
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006A0
	jal	ra,0000000023001234

l2301E6C8:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	c.add	s3,s2
	lw	a5,s3,+00000040
	beq	a5,zero,000000002301E5C2

l2301E6DA:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000005A
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006C4
	jal	ra,0000000023001234
	c.j	000000002301E5C2

l2301E6F4:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002301E71C

l2301E700:
	addi	a5,s0,+00000022
	addi	s0,s0,+00000028
	c.swsp	a5,00000004
	c.swsp	s0,00000084

l2301E70C:
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.beqz	a0,000000002301E726

l2301E712:
	c.beqz	a1,000000002301E726

l2301E714:
	c.li	a2,00000000
	jal	ra,0000000023011AC6
	c.j	000000002301E67A

l2301E71C:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	jal	ra,000000002301189C
	c.j	000000002301E70C

l2301E726:
	jal	ra,00000000230119BA
	c.j	000000002301E67A

l2301E72C:
	c.li	s1,00000000
	c.li	a5,00000008
	c.j	000000002301E67E

l2301E732:
	c.li	s1,00000000
	c.li	a5,00000009
	c.j	000000002301E67E

;; rxu_mgt_ind_handler: 2301E738
rxu_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	andi	a5,a5,+000000FC
	addi	a4,zero,+000000B0
	c.mv	s0,a1
	bne	a5,a4,000000002301E76C

l2301E750:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000005
	bne	a0,a5,000000002301E762

l2301E75C:
	c.mv	a0,s0
	jal	ra,0000000023012448

l2301E762:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301E76C:
	c.li	a4,00000010
	bne	a5,a4,000000002301E786

l2301E772:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000006
	bne	a0,a5,000000002301E762

l2301E77E:
	c.mv	a0,s0
	jal	ra,0000000023012546
	c.j	000000002301E762

l2301E786:
	addi	a4,zero,+00000030
	beq	a5,a4,000000002301E772

l2301E78E:
	addi	a4,zero,+000000C0
	beq	a5,a4,000000002301E79E

l2301E796:
	addi	a4,zero,+000000A0
	bne	a5,a4,000000002301E762

l2301E79E:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.bnez	a0,000000002301E762

l2301E7A6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301269E

;; mm_set_vif_state_cfm_handler: 2301E7B2
mm_set_vif_state_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,0000000023014C3C
	c.li	a5,00000007
	bne	a0,a5,000000002301E892

l2301E7CC:
	lui	a5,00042021
	lw	s1,a5,+00000740
	addi	a5,zero,+000005D8
	lui	s0,00042020
	lbu	s2,s1,+0000003D
	addi	s3,s0,-00000088
	c.li	a3,00000006
	add	a5,s2,a5
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,zero,+0000004B
	addi	s0,s0,-00000088
	c.add	s3,a5
	lbu	s4,s3,+00000060
	jal	ra,00000000230149A2
	lbu	a4,s1,+0000003A
	sb	a4,a0,+00000004
	lhu	a4,s1,+00000038
	sh	a4,a0,+00000002
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000000
	jal	ra,0000000023014A0E
	addi	a3,zero,+000001B0
	add	s4,s4,a3
	lw	a5,s3,+000005C4
	lui	a4,0004201F
	addi	a4,a4,-000005A0
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
	bne	a5,a4,000000002301E874

l2301E854:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,00000000230149A2
	sb	zero,a0,+00000000
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000001
	jal	ra,0000000023014A0E

l2301E874:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.add	s0,s2
	lw	a5,s0,+000003E8
	c.and	a5,a4
	c.bnez	a5,000000002301E892

l2301E88C:
	c.li	a0,00000000
	jal	ra,0000000023011F54

l2301E892:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; me_set_active_cfm_handler: 2301E8A4
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	jal	ra,0000000023014C3C
	c.li	a5,00000004
	beq	a0,a5,000000002301E8D8

l2301E8B4:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	c.li	a5,00000008
	beq	a0,a5,000000002301E8D8

l2301E8C0:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000216
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000514
	jal	ra,0000000023001234

l2301E8D8:
	c.li	a0,00000006
	jal	ra,0000000023014C3C
	lui	a5,00042021
	addi	a5,a5,+00000740
	c.li	a4,00000008
	lbu	a5,a5,+00000011
	bne	a0,a4,000000002301E91A

l2301E8F0:
	c.beqz	a5,000000002301E910

l2301E8F2:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002301189C
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	c.li	a2,00000000
	jal	ra,0000000023011AC6

l2301E908:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301E910:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,0000000023014B3C
	c.j	000000002301E908

l2301E91A:
	c.beqz	a5,000000002301E922

l2301E91C:
	jal	ra,0000000023012266
	c.j	000000002301E908

l2301E922:
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,00000000230120E6
	c.j	000000002301E908

;; mm_sta_add_cfm_handler: 2301E92C
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
	jal	ra,0000000023014C3C
	c.li	a5,00000003
	beq	a0,a5,000000002301E962

l2301E94A:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+0000019C
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000062C
	jal	ra,0000000023001234

l2301E962:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002301EA1A

l2301E968:
	lbu	s4,s0,+00000001
	addi	a5,zero,+000001B0
	lui	s0,0004201F
	add	a5,s4,a5
	addi	s2,s0,-000005A0
	lui	s3,00042020
	addi	s5,s3,-00000088
	c.li	a2,0000000D
	addi	s0,s0,-000005A0
	addi	s3,s3,-00000088
	c.add	s2,a5
	lbu	s1,s2,+0000001A
	addi	a5,zero,+000005D8
	addi	a0,s2,+000000B0
	add	a5,s1,a5
	c.add	s5,a5
	addi	a1,s5,+000003B0
	jal	ra,00000000230A382C
	lw	a5,s5,+000003E0
	andi	a4,a5,+00000001
	c.beqz	a4,000000002301E9C0

l2301E9B4:
	lw	a4,s2,+000000EC
	ori	a4,a4,+00000001
	sw	a4,s2,+000000EC

l2301E9C0:
	c.andi	a5,00000002
	c.beqz	a5,000000002301EA02

l2301E9C4:
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
	jal	ra,00000000230A382C
	addi	a1,s1,+00000358
	c.add	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300D9C0

l2301EA02:
	jal	ra,0000000023011C06

l2301EA06:
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

l2301EA1A:
	c.li	a0,0000000F
	jal	ra,0000000023011F54
	c.j	000000002301EA06

;; sm_disconnect_req_handler: 2301EA22
sm_disconnect_req_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	c.bnez	a0,000000002301EA50

l2301EA34:
	lhu	a1,s0,+00000000
	lbu	a0,s0,+00000002
	jal	ra,0000000023011E1C
	c.lui	a0,00002000
	c.li	a2,00000006
	c.li	a1,0000000D
	addi	a0,a0,-000007FC
	jal	ra,0000000023014A78
	c.li	a5,00000000

l2301EA50:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; apm_sta_connect_timeout_ind_handler: 2301EA5A
apm_sta_connect_timeout_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	s1,0004201F
	jal	ra,00000000230629A4
	c.lui	s2,00007000
	c.mv	s4,a0
	addi	s1,s1,-000005A0
	c.li	s0,00000000
	addi	s2,s2,+00000530
	c.li	s3,0000000C

l2301EA80:
	lw	a5,s1,+000001A8
	c.beqz	a5,000000002301EA94

l2301EA86:
	sub	a5,s4,a5
	bge	s2,a5,000000002301EA94

l2301EA8E:
	c.mv	a0,s0
	jal	ra,0000000023013922

l2301EA94:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+000001B0
	bne	s0,s3,000000002301EA80

l2301EAA2:
	lui	a2,000004C5
	c.lui	a0,00002000
	addi	a0,a0,-000003F6
	addi	a2,a2,-000004C0
	c.li	a1,00000007
	jal	ra,0000000023014EBC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; rxu_mgt_ind_handler: 2301EAC8
rxu_mgt_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	c.mv	a0,a1
	andi	a5,a5,+000000FC
	bne	a5,a4,000000002301EAEA

l2301EADE:
	jal	ra,0000000023013BF0

l2301EAE2:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301EAEA:
	addi	a4,zero,+000000B0
	bne	a5,a4,000000002301EAF8

l2301EAF2:
	jal	ra,0000000023013D06
	c.j	000000002301EAE2

l2301EAF8:
	c.li	a1,00000000
	c.beqz	a5,000000002301EB06

l2301EAFC:
	addi	a4,zero,+00000020
	bne	a5,a4,000000002301EB0C

l2301EB04:
	c.li	a1,00000001

l2301EB06:
	jal	ra,0000000023013D6A
	c.j	000000002301EAE2

l2301EB0C:
	addi	a4,zero,+000000C0
	bne	a5,a4,000000002301EB1A

l2301EB14:
	jal	ra,000000002301413C
	c.j	000000002301EAE2

l2301EB1A:
	addi	a4,zero,+000000A0
	bne	a5,a4,000000002301EB28

l2301EB22:
	jal	ra,000000002301415C
	c.j	000000002301EAE2

l2301EB28:
	addi	a4,zero,+00000080
	bne	a5,a4,000000002301EAE2

l2301EB30:
	jal	ra,00000000230141B4
	c.j	000000002301EAE2

;; apm_sta_add_cfm_handler: 2301EB36
apm_sta_add_cfm_handler proc
	lui	a5,00042021
	lw	a4,a5,+0000052C
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a1,+00000000
	c.beqz	a4,000000002301EB5E

l2301EB48:
	sb	a0,a4,+00000001
	lw	a0,a5,+0000052C
	c.li	a1,00000000
	jal	ra,0000000023018D4E

l2301EB56:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301EB5E:
	jal	ra,000000002301393A
	c.j	000000002301EB56

;; apm_sta_del_req_handler: 2301EB64
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
	jal	ra,00000000230149A2
	c.mv	s0,a0
	lbu	a0,s1,+00000000
	addi	a4,zero,+000005D8
	lui	a5,00042020
	add	a4,a0,a4
	addi	a5,a5,-00000088
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002301EBC2

l2301EB9E:
	lbu	a1,s1,+00000001
	c.li	a5,0000000C
	bltu	a5,a1,000000002301EBC2

l2301EBA8:
	jal	ra,00000000230141B6
	sb	zero,s0,+00000000

l2301EBB0:
	c.mv	a0,s0
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301EBC2:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000000
	c.j	000000002301EBB0

;; apm_stop_cac_req_handler: 2301EBCA
apm_stop_cac_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	a4,a1,+00000000
	c.mv	s1,a3
	addi	a3,zero,+000005D8
	add	a4,a4,a3
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301EC28

l2301EBF4:
	lbu	a5,a5,+00000058
	c.bnez	a5,000000002301EC28

l2301EBFA:
	c.li	a0,00000007
	c.swsp	a2,00000084
	c.mv	s0,a1
	jal	ra,0000000023014C3C
	c.lwsp	a2,00000084
	c.bnez	a0,000000002301EC28

l2301EC08:
	lbu	a0,s0,+00000000
	jal	ra,000000002301ADFA
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFEF
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000084

l2301EC28:
	c.lui	a0,00002000
	c.mv	a1,s1
	addi	a0,a0,-000003F9
	jal	ra,0000000023014A78
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; apm_conf_max_sta_req_handler: 2301EC40
apm_conf_max_sta_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+00000000
	c.li	a1,0000000C
	lui	a5,00042021
	bgeu	a1,a4,000000002301EC54

l2301EC52:
	c.li	a4,0000000C

l2301EC54:
	c.lui	a0,00002000
	addi	a5,a5,+00000760
	addi	a0,a0,-000003F2
	c.mv	a1,a3
	sb	a4,a5,+00000017
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_start_cac_req_handler: 2301EC70
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
	lui	a5,00042020
	addi	a5,a5,-00000088
	sb	zero,sp,+00000003
	c.mv	s3,a2
	c.li	s1,00000004
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301ECAE

l2301ECA6:
	lbu	a5,a5,+00000058
	c.beqz	a5,000000002301ECDE

l2301ECAC:
	c.li	s1,00000008

l2301ECAE:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	c.li	a3,00000002
	addi	a0,a0,-000003FB
	jal	ra,00000000230149A2
	sb	s1,a0,+00000000
	lbu	a4,sp,+00000003
	sb	a4,a0,+00000001
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301ECDE:
	c.li	a0,00000007
	c.mv	s0,a1
	jal	ra,0000000023014C3C
	c.bnez	a0,000000002301ECAC

l2301ECE8:
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
	jal	ra,000000002301A7EE
	c.mv	s1,a0
	c.bnez	a0,000000002301ED40

l2301ED1A:
	lbu	a1,sp,+00000003
	lbu	a0,s0,+00000011
	jal	ra,000000002301ACD8
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	ori	a4,a4,+00000010
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.j	000000002301ECAE

l2301ED40:
	c.li	s1,00000001
	c.j	000000002301ECAE

;; me_set_ps_disable_cfm_handler: 2301ED44
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301ED74

l2301ED54:
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301ED74

l2301ED5C:
	lui	a1,000230AA
	lui	a0,000230AF
	addi	a2,zero,+000000EE
	addi	a1,a1,+0000020C
	addi	a0,a0,-000006F8
	jal	ra,0000000023001234

l2301ED74:
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	bne	a0,a5,000000002301ED84

l2301ED80:
	jal	ra,0000000023013450

l2301ED84:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 2301ED8C
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301EDB4

l2301ED9C:
	lui	a1,000230AA
	lui	a0,000230AF
	addi	a2,zero,+00000110
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000670
	jal	ra,0000000023001234

l2301EDB4:
	jal	ra,0000000023013450
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_cfm_handler: 2301EDC0
mm_bcn_change_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	beq	a0,a5,000000002301EDE8

l2301EDD0:
	lui	a1,000230AA
	lui	a0,000230AF
	addi	a2,zero,+00000156
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000069C
	jal	ra,0000000023001234

l2301EDE8:
	c.li	a0,00000000
	jal	ra,0000000023013322
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_stop_req_handler: 2301EDF6
apm_stop_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lbu	s0,a1,+00000000
	addi	a4,zero,+000005D8
	lui	a0,00042020
	add	a4,s0,a4
	addi	a5,a0,-00000088
	c.mv	s2,a3
	c.mv	s3,a2
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301EE74

l2301EE26:
	lbu	a5,a5,+00000058
	c.beqz	a5,000000002301EE74

l2301EE2C:
	addi	s1,a0,-00000088
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	c.li	a5,00000002
	c.bnez	a0,000000002301EE84

l2301EE3A:
	lui	a5,00042021
	addi	a5,a5,+00000760
	lbu	a4,a5,+00000014
	c.beqz	a4,000000002301EE4C

l2301EE48:
	sb	zero,a5,+00000014

l2301EE4C:
	addi	a0,zero,+000005D8
	add	a0,s0,a0
	lui	s0,00042021
	c.add	a0,s1
	jal	ra,00000000230135C8
	lw	a0,s0,+0000052C
	c.beqz	a0,000000002301EE74

l2301EE64:
	jal	ra,0000000023018E70
	lw	a0,s0,+0000052C
	jal	ra,0000000023019472
	sw	zero,s0,+0000052C

l2301EE74:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,a0,-000003FD
	jal	ra,0000000023014A78
	c.li	a5,00000000

l2301EE84:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; apm_start_req_handler: 2301EE94
apm_start_req_handler proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	a0,000230AF
	lui	s7,000230AE
	c.swsp	s0,0000001C
	c.swsp	s8,0000000C
	c.mv	s0,a1
	c.mv	s8,a2
	addi	a1,s7,+000007C0
	addi	a2,zero,+0000004C
	addi	a0,a0,-000007A8
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s6,00000010
	c.swsp	s9,00000088
	c.mv	s5,a3
	jal	ra,0000000023082388
	lbu	s3,s0,+00000033
	addi	a5,zero,+000005D8
	lui	s2,00042020
	add	a5,s3,a5
	addi	s1,s2,-00000088
	c.li	s4,00000004
	c.add	s1,a5
	lbu	a4,s1,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002301F1AE

l2301EEEC:
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	bne	a0,zero,000000002301F1AC

l2301EEF6:
	lbu	a5,s1,+00000058
	bne	a5,zero,000000002301F1E6

l2301EEFE:
	c.lw	s1,64(a5)
	addi	s2,s2,-00000088
	c.beqz	a5,000000002301EF1E

l2301EF06:
	lui	a1,000230AA
	lui	a0,000230AE
	addi	a2,zero,+00000067
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006C4
	jal	ra,0000000023001234

l2301EF1E:
	lbu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	lui	s6,00042021
	addi	a1,s0,+0000000E
	addi	a0,sp,+0000000D
	sw	s0,s6,+00000760
	jal	ra,000000002300E1B0
	addi	s6,s6,+00000760
	c.li	s4,00000001
	bne	a0,zero,000000002301F1AE

l2301EF44:
	lhu	a1,s0,+0000000E
	lbu	a0,s0,+00000010
	jal	ra,000000002300D6DA
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
	bne	a5,a4,000000002301EF7E

l2301EF7C:
	c.li	a5,00000003

l2301EF7E:
	addi	s4,zero,+000005D8
	add	s4,s3,s4
	lbu	a1,sp,+0000000D
	add	s5,s2,s4
	sb	a5,s5,+000003DA
	lbu	a5,s0,+0000001C
	sb	zero,s5,+000003DC
	sb	a5,s5,+000003DB
	lbu	a0,s0,+00000033
	jal	ra,000000002301ACD8
	lbu	a5,s0,+00000034
	c.mv	a0,s5
	sb	a5,s6,+00000014
	lbu	a5,s0,+0000001D
	sb	a5,s6,+00000015
	jal	ra,0000000023013B20
	beq	a0,zero,000000002301F116

l2301EFC0:
	addi	s9,s0,+00000035
	c.mv	a1,s0
	c.mv	a0,s9
	jal	ra,000000002300DAFA
	lbu	a5,s0,+00000043
	c.beqz	a5,000000002301EFDE

l2301EFD2:
	lw	a5,s5,+000003E0
	ori	a5,a5,+00000001
	sw	a5,s5,+000003E0

l2301EFDE:
	lui	a5,00042021
	lbu	a5,a5,-00000496
	c.beqz	a5,000000002301EFFE

l2301EFE8:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.add	a5,s2
	lw	a4,a5,+000003E0
	ori	a4,a4,+00000002
	sw	a4,a5,+000003E0

l2301EFFE:
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
	jal	ra,00000000230A382C
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
	jal	ra,00000000230A382C
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
	lui	a5,00042020
	addi	a5,a5,+00000378
	c.add	s8,a5
	c.lui	a5,FFFF0000
	sw	a5,s8,+00000014
	jal	ra,000000002301483C
	lbu	a1,s1,+00000057
	lbu	a4,s6,+00000015
	addi	a3,s0,+00000032
	addi	a2,s0,+00000026
	sw	a0,s6,+00000010
	jal	ra,000000002301D112
	lbu	a5,s0,+00000066
	sh	a0,s0,+00000024
	lui	s1,00042021
	beq	a5,zero,000000002301F194

l2301F0B6:
	addi	a3,s4,+00000378
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.add	a3,s2
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000002
	addi	s6,s4,+0000037F
	jal	ra,00000000230193D8
	c.add	s6,s2
	addi	a2,s0,+00000067
	c.mv	a1,s6
	sw	a0,s1,+0000052C
	jal	ra,0000000023021854
	lw	a0,s1,+0000052C
	c.mv	a1,s6
	jal	ra,00000000230194EA
	lw	a5,s1,+0000052C
	lbu	a4,s0,+00000033
	lui	a0,000230AF
	addi	a1,s7,+000007C0
	sb	a4,a5,+00000002
	lw	a5,s1,+0000052C
	addi	a0,a0,-00000788
	lbu	a2,a5,+00000002
	jal	ra,0000000023082388
	lw	a0,s1,+0000052C
	jal	ra,0000000023018E82

l2301F116:
	lbu	a5,s0,+00000010
	c.bnez	a5,000000002301F144

l2301F11C:
	addi	a0,s4,+000003B0
	c.li	a1,00000001
	c.add	a0,s2
	jal	ra,000000002300DB32
	c.andi	a0,0000000F
	c.beqz	a0,000000002301F19A

l2301F12C:
	jal	ra,000000002309F27C
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,0000001F
	sub	a0,a4,a0
	c.add	a5,s2
	sb	a0,a5,+000003D7

l2301F144:
	jal	ra,000000002301348C
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	c.mv	a0,s5
	c.add	s2,s3
	lw	a5,s2,+000003A4
	lbu	a5,a5,+00000004
	sb	a5,sp,+0000000E
	jal	ra,000000002300B586
	lui	a0,000230AF
	addi	a0,a0,-00000764
	jal	ra,0000000023082388
	c.li	a0,00000001

l2301F17A:
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

l2301F194:
	sw	zero,s1,+0000052C
	c.j	000000002301F116

l2301F19A:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,00000001
	c.add	a5,s2
	sb	a4,a5,+000003D7
	c.j	000000002301F144

l2301F1AC:
	c.li	s4,00000008

l2301F1AE:
	lui	a0,000230AF
	addi	a2,zero,+000000CC
	addi	a1,s7,+000007C0
	addi	a0,a0,-00000740
	jal	ra,0000000023082388
	c.lui	a0,00002000
	c.li	a3,00000004
	c.mv	a2,s8
	c.mv	a1,s5
	addi	a0,a0,-000003FF
	jal	ra,00000000230149A2
	sb	s4,a0,+00000000
	lbu	a4,s0,+00000033
	sb	a4,a0,+00000001
	jal	ra,0000000023014A0E
	c.li	a0,00000000
	c.j	000000002301F17A

l2301F1E6:
	c.li	s4,00000009
	c.j	000000002301F1AE

;; me_set_active_cfm_handler: 2301F1EA
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	beq	a0,a5,000000002301F21A

l2301F1FA:
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	c.beqz	a0,000000002301F21A

l2301F202:
	lui	a1,000230AA
	lui	a0,000230AF
	addi	a2,zero,+0000012F
	addi	a1,a1,+0000020C
	addi	a0,a0,-000006F8
	jal	ra,0000000023001234

l2301F21A:
	c.li	a0,00000007
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	bne	a0,a5,000000002301F24C

l2301F226:
	lui	a5,00042021
	lw	a5,a5,+00000764
	c.beqz	a5,000000002301F248

l2301F230:
	lui	a1,000230AA
	lui	a0,000230AF
	addi	a2,zero,+00000135
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000720
	jal	ra,0000000023001234

l2301F248:
	jal	ra,0000000023013B44

l2301F24C:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hostapd_mgt_ind_handler: 2301F254
hostapd_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	andi	a5,a5,+000000FC
	bne	a5,a4,000000002301F276

l2301F264:
	c.addi	sp,FFFFFFF0
	c.li	a0,0000000A
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301F276:
	addi	a4,zero,+000000B0
	beq	a5,a4,000000002301F264

l2301F27E:
	c.li	a0,00000000
	c.jr	ra

;; dump_cfg_entries: 2301F282
;;   Called from:
;;     2301F3D0 (in cfg_start_req_handler)
dump_cfg_entries proc
	c.addi16sp	FFFFFFC0
	lui	a0,000230AF
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	addi	a0,a0,-0000061C
	lui	s0,000230CC
	lui	s1,000230CC
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	addi	s0,s0,+00000188
	jal	ra,000000002308234C
	addi	s1,s1,+000001DC
	lui	s2,000230AF
	lui	s3,000230AF
	lui	s4,000230AF
	lui	s5,000230AF
	lui	s6,000230AF
	lui	s7,000230AF
	lui	s8,000230AF

l2301F2D0:
	bltu	s0,s1,000000002301F2F8

l2301F2D4:
	lui	a0,000230B5
	addi	a0,a0,-0000039C
	jal	ra,000000002308234C
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

l2301F2F8:
	c.mv	a1,s0
	addi	a0,s2,-000005EC
	jal	ra,0000000023082388
	c.lw	s0,0(a1)
	addi	a0,s3,-000005E0
	c.addi	s0,0000001C
	jal	ra,0000000023082388
	lhu	a1,s0,-00000018
	addi	a0,s4,-000005CC
	jal	ra,0000000023082388
	lhu	a1,s0,-00000016
	addi	a0,s5,-000005B8
	jal	ra,0000000023082388
	lw	a1,s0,-00000014
	addi	a0,s6,-000005A4
	jal	ra,0000000023082388
	lbu	a1,s0,-00000016
	lw	a0,s0,-00000010
	c.mv	a2,sp
	jal	ra,0000000023014206
	c.mv	a1,a0
	addi	a0,s7,-00000590
	jal	ra,0000000023082388
	c.mv	a1,sp
	addi	a0,s8,-0000057C
	jal	ra,0000000023082388
	lui	a0,000230B4
	addi	a0,a0,+00000438
	jal	ra,000000002308234C
	c.j	000000002301F2D0

;; cfg_start_req_handler: 2301F362
cfg_start_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a1,0(a5)
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a5,000000002301F39E

l2301F374:
	c.li	a4,00000002
	bltu	a4,a5,000000002301F3D0

l2301F37A:
	c.lui	a0,00003000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a3,00000001
	c.addi	a0,00000001
	jal	ra,00000000230149A2
	sb	zero,a0,+00000000
	jal	ra,0000000023014A0E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301F39E:
	c.mv	s0,a1
	lhu	a2,a1,+0000000C
	c.lw	a1,16(a1)
	c.addi4spn	a3,0000000C
	addi	a0,s0,+00000014
	jal	ra,000000002307AAA6
	c.lwsp	a2,00000084
	c.mv	a1,a0
	lui	a0,000230AF
	addi	a0,a0,-00000640
	jal	ra,0000000023082388
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.lw	s0,4(a0)
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	jal	ra,0000000023014402
	c.j	000000002301F37A

l2301F3D0:
	jal	ra,000000002301F282
	c.j	000000002301F37A

;; dbg_test_print: 2301F3D6
;;   Called from:
;;     230151CE (in GetTxEAPOLBuffer)
;;     2301522A (in GetTxEAPOLBuffer)
;;     23015262 (in UpdateEAPOLWcbLenAndTransmit)
;;     230152AA (in UpdateEAPOLWcbLenAndTransmit)
;;     230152D8 (in keyMgmtProcessMsgExt)
;;     230152F0 (in keyMgmtProcessMsgExt)
;;     23015330 (in KeyMgmtInitSta)
;;     23015360 (in KeyMgmtInitSta)
;;     2301539C (in keyMgmtSta_StartSession)
;;     230153FA (in keyMgmtSta_StartSession)
;;     2301542C (in init_customApp_mibs)
;;     23015474 (in init_customApp_mibs)
;;     230154A6 (in supplicantIsEnabled)
;;     230154C4 (in supplicantIsEnabled)
;;     23015518 (in supplicantInitSession)
;;     23015572 (in supplicantInitSession)
;;     230155A4 (in supplicantDisable)
;;     230155EC (in supplicantDisable)
;;     2301563C (in supplicantEnable)
;;     230156EA (in supplicantEnable)
;;     2301576A (in keyMgmtFormatWpaRsnIe)
;;     23015782 (in keyMgmtFormatWpaRsnIe)
;;     230157D8 (in GeneratePWKMsg2)
;;     23015864 (in GeneratePWKMsg2)
;;     230158C2 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23015994 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     230159D2 (in supplicantInit)
;;     23015A2C (in supplicantInit)
;;     23015A5C (in allocSupplicantData)
;;     23015A92 (in allocSupplicantData)
;;     23015AF2 (in keyMgmtGetKeySize)
;;     23015B0A (in keyMgmtGetKeySize)
;;     23015C80 (in keyMgmtKeyGroupTxDone.isra.1)
;;     23015CDC (in keyMgmtKeyGroupTxDone.isra.1)
;;     23015D22 (in GenerateGrpMsg2)
;;     23015D84 (in GenerateGrpMsg2)
;;     23015DDC (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     23015E2A (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     23015EFE (in keyMgmtPlumbPairwiseKey)
;;     23015F5C (in keyMgmtPlumbPairwiseKey)
;;     23015F8E (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     23015FBA (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     2301600C (in GeneratePWKMsg4)
;;     2301606E (in GeneratePWKMsg4)
;;     2301608E (in GeneratePWKMsg4)
;;     230160AA (in GeneratePWKMsg4)
;;     2301610A (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     23016154 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     230161A4 (in ProcessKeyMgmtDataSta)
;;     230161E8 (in ProcessKeyMgmtDataSta)
;;     2301623E (in ProcessEAPoLPkt)
;;     23016262 (in ProcessEAPoLPkt)
;;     23016292 (in ProcessEAPoLPkt)
;;     230162AE (in ProcessEAPoLPkt)
;;     23016694 (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     230166D0 (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     23016706 (in supplicantGenerateRand)
;;     23016734 (in supplicantGenerateRand)
;;     230167B6 (in keyMgmtGetKeySize_internal)
;;     230167EA (in keyMgmtGetKeySize_internal)
;;     2301684A (in isApReplayCounterFresh)
;;     230168EC (in isApReplayCounterFresh)
;;     2301692C (in updateApReplayCounter)
;;     230169AE (in updateApReplayCounter)
;;     230169F4 (in formEAPOLEthHdr)
;;     23016A42 (in formEAPOLEthHdr)
;;     23016A7E (in IsEAPOL_MICValid)
;;     23016ADE (in IsEAPOL_MICValid)
;;     23016B36 (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     23016BB6 (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     23016BFA (in parseKeyKDE)
;;     23016C28 (in parseKeyKDE)
;;     23016C92 (in parseKeyKDE_DataType)
;;     23016CC4 (in parseKeyKDE_DataType)
;;     23016D44 (in parseKeyDataGTK)
;;     23016DB0 (in parseKeyDataGTK)
;;     23016DF6 (in KeyMgmtSta_ApplyKEK)
;;     23016E80 (in KeyMgmtSta_ApplyKEK)
;;     23016EE2 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23016F28 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23016F92 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230170A2 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230170E6 (in supplicantAkmIsWpaWpa2)
;;     23017132 (in supplicantAkmIsWpaWpa2)
;;     23017168 (in supplicantAkmIsWpa2)
;;     23017192 (in supplicantAkmIsWpa2)
;;     230171DA (in supplicantAkmIsWpaWpa2Psk)
;;     23017226 (in supplicantAkmIsWpaWpa2Psk)
;;     23017256 (in supplicantAkmUsesKdf)
;;     23017290 (in supplicantAkmUsesKdf)
;;     230172E0 (in supplicantConstructContext)
;;     23017364 (in supplicantConstructContext)
;;     230173CA (in KeyMgmt_DerivePTK)
;;     2301742E (in KeyMgmt_DerivePTK)
;;     230174B0 (in KeyMgmtSta_DeriveKeys)
;;     2301751C (in KeyMgmtSta_DeriveKeys)
;;     23017584 (in SetEAPOLKeyDescTypeVersion)
;;     230175C2 (in SetEAPOLKeyDescTypeVersion)
;;     230175F4 (in GetKeyMsgNonceFromEAPOL)
;;     23017642 (in GetKeyMsgNonceFromEAPOL)
;;     23017688 (in ProcessRxEAPOL_PwkMsg3)
;;     23017710 (in ProcessRxEAPOL_PwkMsg3)
;;     2301774C (in ProcessRxEAPOL_GrpMsg1)
;;     230177CA (in ProcessRxEAPOL_GrpMsg1)
;;     2301783A (in KeyMgmtResetCounter)
;;     2301786C (in KeyMgmtResetCounter)
;;     230178A0 (in keyMgmtSta_StartSession_internal)
;;     230178EC (in keyMgmtSta_StartSession_internal)
;;     2301791E (in KeyMgmtSta_InitSession)
;;     23017962 (in KeyMgmtSta_InitSession)
;;     2301799C (in set_psk)
;;     230179EA (in set_psk)
;;     23017A20 (in remove_psk)
;;     23017A4C (in remove_psk)
;;     23017B36 (in pmkCacheFindPSK)
;;     23017B64 (in pmkCacheFindPSK)
;;     23017BEC (in pmkCacheSetPassphrase)
;;     23017C50 (in pmkCacheSetPassphrase)
;;     23017C7E (in pmkCacheInit)
;;     23017CCC (in pmkCacheInit)
;;     23017CFA (in pmkCacheRomInit)
;;     23017D46 (in pmkCacheRomInit)
;;     23017D94 (in pmkCacheNewElement)
;;     23017DBC (in pmkCacheNewElement)
;;     23017E6A (in pmkCacheUpdateReplacementRank)
;;     23017EC2 (in pmkCacheUpdateReplacementRank)
;;     23017F30 (in pmkCacheFindPSKElement)
;;     23017F5E (in pmkCacheFindPSKElement)
;;     23017FE4 (in pmkCacheAddPSK)
;;     23018048 (in pmkCacheAddPSK)
;;     2301807A (in pmkCacheDeletePSK)
;;     230180BE (in pmkCacheDeletePSK)
;;     230180F0 (in pmkCacheGetHexNibble)
;;     23018138 (in pmkCacheGetHexNibble)
;;     23018178 (in pmkCacheGeneratePSK)
;;     230181C8 (in pmkCacheGeneratePSK)
;;     230188CE (in supplicantRestoreDefaults)
;;     230188EE (in supplicantRestoreDefaults)
;;     2301892A (in supplicantFuncInit)
;;     23018950 (in supplicantFuncInit)
dbg_test_print proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,00000098
	lui	s1,00042021
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
	addi	a5,s1,+000007C0
	c.lw	a5,4(a5)
	c.beqz	a5,000000002301F42E

l2301F404:
	c.mv	s2,a0
	addi	s1,s1,+000007C0
	addi	s3,a0,+00000002
	addi	s4,zero,+00000087
	c.li	s5,00000005
	lui	s6,000230AA
	lui	s7,000230AF

l2301F41C:
	lbu	s0,s2,+00000000
	slli	a5,s0,00000018
	c.srai	a5,00000018
	blt	a5,zero,000000002301F444

l2301F42A:
	c.addi4spn	a5,00000044
	c.swsp	a5,00000084

l2301F42E:
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

l2301F444:
	bltu	s4,s0,000000002301F462

l2301F448:
	c.lw	s1,0(a5)
	addi	s0,s0,-00000080
	xori	a5,a5,-00000001
	srl	s0,a5,s0
	c.andi	s0,00000001
	c.bnez	s0,000000002301F42E

l2301F45A:
	c.addi	s2,00000001
	bne	s3,s2,000000002301F41C

l2301F460:
	c.j	000000002301F42A

l2301F462:
	addi	a5,s0,+00000066
	andi	a5,a5,+000000FF
	bgeu	s5,a5,000000002301F47E

l2301F46E:
	addi	a2,zero,+00000297
	addi	a1,s6,+0000020C
	addi	a0,s7,-00000568
	jal	ra,0000000023001234

l2301F47E:
	c.lw	s1,4(a5)
	addi	s0,s0,-0000009A
	bltu	s0,a5,000000002301F45A

l2301F488:
	c.j	000000002301F42E

;; dbg_get_sys_stat_req_handler: 2301F48A
dbg_get_sys_stat_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	addi	a0,zero,+0000040A
	c.li	a3,0000000C
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_write_req_handler: 2301F4B2
dbg_mem_write_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000403
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.lw	s0,0(a4)
	c.lw	s0,4(a3)
	c.sw	a4,0(a3)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_read_req_handler: 2301F4E2
dbg_mem_read_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000401
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	c.lw	s0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	jal	ra,0000000023014A0E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_sev_filter_req_handler: 2301F50E
dbg_set_sev_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,00042021
	addi	a0,zero,+00000407
	c.mv	a1,a3
	sw	a4,a5,+000007C4
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_mod_filter_req_handler: 2301F52E
dbg_set_mod_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,00042021
	addi	a0,zero,+00000405
	c.mv	a1,a3
	sw	a4,a5,+000007C0
	jal	ra,0000000023014A78
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; ke_queue_extract: 2301F54E
;;   Called from:
;;     23014C0A (in ke_state_set)
;;     23014F2E (in ke_timer_set)
;;     23015072 (in ke_timer_clear)
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

l2301F562:
	c.beqz	s0,000000002301F57E

l2301F564:
	c.mv	a1,a2
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.jalr	s3
	c.lw	s0,0(a5)
	c.lwsp	a2,00000084
	c.beqz	a0,000000002301F59A

l2301F572:
	c.beqz	s1,000000002301F58E

l2301F574:
	c.sw	s1,0(a5)

l2301F576:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002301F594

l2301F57A:
	sw	zero,s0,+00000000

l2301F57E:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2301F58E:
	sw	a5,s2,+00000000
	c.j	000000002301F576

l2301F594:
	sw	s1,s2,+00000004
	c.j	000000002301F57E

l2301F59A:
	c.mv	s1,s0
	c.mv	s0,a5
	c.j	000000002301F562

;; bl_aes_128: 2301F5A0
;;   Called from:
;;     2301F618 (in generate_subkey)
;;     2301F71A (in bl_aes_cmac)
;;     2301F77A (in bl_aes_cmac)
bl_aes_128 proc
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000002
	c.j	000000002301F7F8

;; xor_128: 2301F5A8
;;   Called from:
;;     2301F65C (in generate_subkey)
;;     2301F676 (in generate_subkey)
;;     2301F6F4 (in bl_aes_cmac)
;;     2301F710 (in bl_aes_cmac)
;;     2301F770 (in bl_aes_cmac)
xor_128 proc
	c.li	a5,00000000
	c.li	a3,00000010

l2301F5AC:
	add	a4,a0,a5
	add	a7,a1,a5
	lbu	a4,a4,+00000000
	lbu	a7,a7,+00000000
	add	a6,a2,a5
	c.addi	a5,00000001
	xor	a4,a4,a7
	sb	a4,a6,+00000000
	bne	a5,a3,000000002301F5AC

l2301F5CE:
	c.jr	ra

;; leftshift_onebit: 2301F5D0
;;   Called from:
;;     2301F628 (in generate_subkey)
;;     2301F638 (in generate_subkey)
;;     2301F64C (in generate_subkey)
;;     2301F666 (in generate_subkey)
leftshift_onebit proc
	c.li	a5,00000000
	c.li	a4,0000000F
	c.li	a6,FFFFFFFF

l2301F5D6:
	add	a2,a0,a4
	lbu	a3,a2,+00000000
	add	a7,a1,a4
	c.addi	a4,FFFFFFFF
	c.slli	a3,01
	c.or	a5,a3
	sb	a5,a7,+00000000
	lbu	a5,a2,+00000000
	c.srli	a5,00000007
	bne	a4,a6,000000002301F5D6

l2301F5F6:
	c.jr	ra

;; generate_subkey: 2301F5F8
;;   Called from:
;;     2301F6D2 (in bl_aes_cmac)
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
	jal	ra,00000000230A3A68
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,000000002301F5A0
	lb	a5,sp,+00000000
	blt	a5,zero,000000002301F648

l2301F624:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002301F5D0

l2301F62C:
	lb	a5,s0,+00000000
	blt	a5,zero,000000002301F662

l2301F634:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002301F5D0

l2301F63C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2301F648:
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,000000002301F5D0
	lui	a1,000230AF
	c.mv	a2,s0
	addi	a1,a1,-00000510
	c.addi4spn	a0,00000020
	jal	ra,000000002301F5A8
	c.j	000000002301F62C

l2301F662:
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002301F5D0
	lui	a1,000230AF
	c.mv	a2,s1
	addi	a1,a1,-00000510
	c.addi4spn	a0,00000020
	jal	ra,000000002301F5A8
	c.j	000000002301F63C

;; padding: 2301F67C
;;   Called from:
;;     2301F75A (in bl_aes_cmac)
padding proc
	c.li	a5,00000000
	add	a3,a1,a2
	addi	a6,zero,-00000080
	c.li	a4,00000010

l2301F688:
	bge	a5,a2,000000002301F6A4

l2301F68C:
	add	a7,a0,a5
	lbu	t1,a7,+00000000
	add	a7,a1,a5
	sb	t1,a7,+00000000

l2301F69C:
	c.addi	a5,00000001
	bne	a5,a4,000000002301F688

l2301F6A2:
	c.jr	ra

l2301F6A4:
	bne	a2,a5,000000002301F6AE

l2301F6A8:
	sb	a6,a3,+00000000
	c.j	000000002301F69C

l2301F6AE:
	add	a7,a1,a5
	sb	zero,a7,+00000000
	c.j	000000002301F69C

;; bl_aes_cmac: 2301F6B8
;;   Called from:
;;     23016762 (in ComputeEAPOL_MIC)
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
	jal	ra,000000002301F5F8
	addi	s0,s1,+0000000F
	c.li	a5,00000010
	xor	s0,s0,a5
	c.beqz	s0,000000002301F748

l2301F6E2:
	andi	a5,s1,+0000000F
	c.bnez	a5,000000002301F74A

l2301F6E8:
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000040
	c.add	a0,s2

l2301F6F4:
	jal	ra,000000002301F5A8
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.li	s1,00000000
	c.addi	s0,FFFFFFFF

l2301F706:
	blt	s1,s0,000000002301F766

l2301F70A:
	c.addi4spn	a2,00000010
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,000000002301F5A8
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002301F5A0
	c.li	a5,00000000
	c.li	a4,00000010

l2301F722:
	add	a2,sp,a5
	lbu	a2,a2,+00000000
	add	a3,s3,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,000000002301F722

l2301F738:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.addi16sp	00000080
	c.jr	ra

l2301F748:
	c.li	s0,00000001

l2301F74A:
	c.li	a2,00000010
	or	a2,s1,a2
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a1,00000030
	c.add	a0,s2
	jal	ra,000000002301F67C
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000050
	c.addi4spn	a0,00000030
	c.j	000000002301F6F4

l2301F766:
	slli	a1,s1,00000004
	c.addi4spn	a2,00000010
	c.add	a1,s2
	c.mv	a0,sp
	jal	ra,000000002301F5A8
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002301F5A0
	c.addi	s1,00000001
	c.j	000000002301F706

;; BL_AES_MEMCMP: 2301F782
;;   Called from:
;;     2301F9C6 (in BL_AesUnWrap)
BL_AES_MEMCMP proc
	c.mv	a6,a2
	c.li	a5,00000000

l2301F786:
	bne	a6,a5,000000002301F794

l2301F78A:
	sltu	a2,zero,a2
	sub	a0,zero,a2
	c.jr	ra

l2301F794:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	bne	a3,a4,000000002301F7AA

l2301F7A8:
	c.addi	a2,FFFFFFFF

l2301F7AA:
	c.addi	a5,00000001
	c.j	000000002301F786

;; BL_AES_MEMSET: 2301F7AE
;;   Called from:
;;     2301F864 (in BL_AesWrap)
;;     2301F954 (in BL_AesUnWrap)
;;     2301F95E (in BL_AesUnWrap)
BL_AES_MEMSET proc
	c.add	a2,a0

l2301F7B0:
	bne	a0,a2,000000002301F7B6

l2301F7B4:
	c.jr	ra

l2301F7B6:
	c.addi	a0,00000001
	sb	a1,a0,+00000FFF
	c.j	000000002301F7B0

;; BL_AES_MEMCPY: 2301F7BE
;;   Called from:
;;     2301F878 (in BL_AesWrap)
;;     2301F888 (in BL_AesWrap)
;;     2301F89C (in BL_AesWrap)
;;     2301F8A6 (in BL_AesWrap)
;;     2301F8BC (in BL_AesWrap)
;;     2301F8D6 (in BL_AesWrap)
;;     2301F8F6 (in BL_AesWrap)
;;     2301F968 (in BL_AesUnWrap)
;;     2301F986 (in BL_AesUnWrap)
;;     2301FA00 (in BL_AesUnWrap)
;;     2301FA18 (in BL_AesUnWrap)
;;     2301FA2C (in BL_AesUnWrap)
;;     2301FA36 (in BL_AesUnWrap)
BL_AES_MEMCPY proc
	c.li	a5,FFFFFFFF
	bgeu	a0,a1,000000002301F7F0

l2301F7C4:
	c.li	a5,00000000

l2301F7C6:
	bne	a5,a2,000000002301F7CC

l2301F7CA:
	c.jr	ra

l2301F7CC:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002301F7C6

l2301F7E0:
	add	a4,a1,a2
	lbu	a3,a4,+00000000
	add	a4,a0,a2
	sb	a3,a4,+00000000

l2301F7F0:
	c.addi	a2,FFFFFFFF
	bne	a2,a5,000000002301F7E0

l2301F7F6:
	c.jr	ra

;; BL_AesEncrypt: 2301F7F8
;;   Called from:
;;     2301F5A6 (in bl_aes_128)
;;     2301F8B2 (in BL_AesWrap)
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
	jal	ra,00000000230208B8
	c.mv	a0,sp
	c.mv	a2,s1
	c.mv	a1,s0
	jal	ra,0000000023020F1E
	lw	ra,sp,+0000019C
	lw	s0,sp,+00000198
	lw	s1,sp,+00000194
	c.li	a0,00000000
	c.addi16sp	000001A0
	c.jr	ra

;; BL_AesWrap: 2301F834
;;   Called from:
;;     23019220 (in Encrypt_keyData)
BL_AesWrap proc
	beq	a2,zero,000000002301F914

l2301F838:
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
	jal	ra,000000002301F7AE
	c.li	a2,00000008
	c.mv	a1,s1
	c.bnez	s1,000000002301F876

l2301F86E:
	lui	a1,000230CC
	addi	a1,a1,-000006C0

l2301F876:
	c.addi4spn	a0,00000008
	jal	ra,000000002301F7BE
	slli	a2,s0,00000003
	c.mv	a1,s3
	c.mv	a0,s4
	andi	s8,s0,+000000FF
	jal	ra,000000002301F7BE
	c.li	s3,00000000
	c.li	s5,00000006
	c.addi	s0,00000001

l2301F892:
	c.li	s1,00000001
	c.j	000000002301F8DA

l2301F896:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,000000002301F7BE
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000018
	jal	ra,000000002301F7BE
	c.addi4spn	a3,00000010
	c.mv	a2,a3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,000000002301F7F8
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,000000002301F7BE
	lbu	a4,sp,+0000000F
	add	a5,s3,s1
	c.li	a2,00000008
	c.xor	a5,a4
	c.addi4spn	a1,00000018
	c.mv	a0,s4
	sb	a5,sp,+0000000F
	c.addi	s1,00000001
	jal	ra,000000002301F7BE

l2301F8DA:
	slli	s4,s1,00000003
	c.add	s4,s2
	bne	s1,s0,000000002301F896

l2301F8E4:
	c.add	s3,s8
	c.addi	s5,FFFFFFFF
	andi	s3,s3,+000000FF
	bne	s5,zero,000000002301F892

l2301F8F0:
	c.mv	a0,s2
	c.addi4spn	a1,00000008
	c.li	a2,00000008
	jal	ra,000000002301F7BE
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

l2301F914:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; BL_AesUnWrap: 2301F918
;;   Called from:
;;     23016E92 (in KeyMgmtSta_ApplyKEK)
BL_AesUnWrap proc
	beq	a2,zero,000000002301FA40

l2301F91C:
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
	jal	ra,000000002301F7AE
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002301F7AE
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,000000002301F7BE
	slli	s1,s2,00000003
	c.mv	a2,s1
	c.addi	s1,FFFFFFF8
	c.mv	a0,s0
	c.add	s1,s0
	andi	s7,s2,+000000FF
	c.li	s0,00000005
	add	s0,s7,s0
	addi	a1,s4,+00000008
	jal	ra,000000002301F7BE
	slli	a2,s6,00000006
	c.li	a3,00000000
	c.mv	a1,s5
	c.addi4spn	a0,00000020
	jal	ra,00000000230208B8
	c.li	s6,00000006
	andi	s0,s0,+000000FF

l2301F99E:
	c.mv	s4,s2
	c.mv	s5,s1

l2301F9A2:
	blt	zero,s4,000000002301F9FA

l2301F9A6:
	sub	s0,s0,s7
	c.addi	s6,FFFFFFFF
	andi	s0,s0,+000000FF
	bne	s6,zero,000000002301F99E

l2301F9B4:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	bne	s3,zero,000000002301F9C6

l2301F9BE:
	lui	a0,000230CC
	addi	a0,a0,-000006C0

l2301F9C6:
	jal	ra,000000002301F782
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

l2301F9FA:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,000000002301F7BE
	lbu	a4,sp,+00000017
	add	a5,s0,s4
	c.mv	a1,s5
	c.xor	a5,a4
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	sb	a5,sp,+00000017
	jal	ra,000000002301F7BE
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.addi4spn	a0,00000020
	jal	ra,0000000023020ADC
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,000000002301F7BE
	c.mv	a0,s5
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,000000002301F7BE
	c.addi	s5,FFFFFFF8
	c.addi	s4,FFFFFFFF
	c.j	000000002301F9A2

l2301FA40:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; Bl_hmac_md5: 2301FA44
;;   Called from:
;;     2301676C (in ComputeEAPOL_MIC)
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
	bge	a5,a3,000000002301FA96

l2301FA7A:
	c.addi4spn	a0,00000008
	jal	ra,0000000023020672
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230206A4
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000138
	jal	ra,000000002302074E
	c.li	s3,00000010
	c.addi4spn	s1,00000138

l2301FA96:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,00000000230A3A68
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,00000000230A382C
	c.addi4spn	s0,000000A0
	lui	a3,00036363
	addi	s2,sp,+000000E0
	c.mv	a5,s0
	addi	a3,a3,+00000636

l2301FABC:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.xor	a4,a3
	sw	a4,a5,+00000FFC
	bne	a5,s2,000000002301FABC

l2301FACA:
	c.mv	a0,s2
	jal	ra,0000000023020672
	addi	a2,zero,+00000040
	c.addi4spn	a1,000000A0
	c.mv	a0,s2
	jal	ra,00000000230206A4
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230206A4
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002302074E
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,00000000230A3A68
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,00000000230A382C
	lui	a4,0005C5C6
	addi	a4,a4,-000003A4

l2301FB0C:
	c.lw	s0,0(a5)
	c.addi	s0,00000004
	c.xor	a5,a4
	sw	a5,s0,+00000FFC
	bne	s0,s2,000000002301FB0C

l2301FB1A:
	c.mv	a0,s0
	jal	ra,0000000023020672
	c.addi4spn	a1,000000A0
	c.mv	a0,s0
	addi	a2,zero,+00000040
	jal	ra,00000000230206A4
	c.mv	a1,s4
	c.mv	a0,s0
	c.li	a2,00000010
	jal	ra,00000000230206A4
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002302074E
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

;; Bl_hmac_sha1: 2301FB64
;;   Called from:
;;     23016782 (in ComputeEAPOL_MIC)
;;     2301FDA0 (in Bl_PRF)
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
	bge	a5,a4,000000002301FBC2

l2301FBA8:
	c.addi4spn	a0,00000054
	jal	ra,000000002302162A
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,00000000230217BE
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,0000000023021672
	c.li	s1,00000014

l2301FBC2:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,00000000230A382C
	lui	a4,00036363
	c.mv	s0,sp
	addi	s4,sp,+00000040
	c.mv	a5,sp
	addi	a4,a4,+00000636

l2301FBE8:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,000000002301FBE8

l2301FC00:
	c.addi4spn	a0,00000054
	jal	ra,000000002302162A
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,00000054
	jal	ra,00000000230217BE
	c.li	s3,00000000

l2301FC14:
	blt	s3,s7,000000002301FCB4

l2301FC18:
	c.mv	a1,s4
	c.addi4spn	a0,00000054
	jal	ra,0000000023021672
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,00000000230A382C
	lui	a5,0005C5C6
	addi	a5,a5,-000003A4

l2301FC3E:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,000000002301FC3E

l2301FC56:
	c.addi4spn	a0,00000054
	jal	ra,000000002302162A
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,00000054
	jal	ra,00000000230217BE
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,00000000230217BE
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,0000000023021672
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,00000000230A382C
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

l2301FCB4:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,00000054
	c.addi	s3,00000001
	jal	ra,00000000230217BE
	c.j	000000002301FC14

;; Bl_PRF: 2301FCCC
;;   Called from:
;;     2301744A (in KeyMgmt_DerivePTK)
;;     23018F62 (in GenerateGTK_internal)
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
	jal	ra,00000000230A3A68
	beq	s8,zero,000000002301FD76

l2301FD0A:
	c.mv	a2,s0
	c.mv	a1,s8
	c.mv	a0,s5
	jal	ra,00000000230A382C
	c.addi4spn	a5,00000080
	c.add	a5,s0
	c.addi	s0,00000001
	add	a0,s5,s0
	c.mv	a2,s6
	c.mv	a1,s7
	c.add	s0,s6
	sb	zero,a5,+00000F88
	jal	ra,00000000230A382C
	c.swsp	s0,00000000

l2301FD2E:
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

l2301FD4E:
	add	a5,s5,s8
	c.add	a5,s1
	c.slli	a5,18
	c.srai	a5,00000018
	blt	s5,s6,000000002301FD84

l2301FD5C:
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

l2301FD76:
	c.mv	a2,s6
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,00000000230A382C
	c.swsp	s6,00000000
	c.j	000000002301FD2E

l2301FD84:
	c.mv	s0,a5
	bge	s9,a5,000000002301FD8C

l2301FD8A:
	c.li	s0,00000014

l2301FD8C:
	c.slli	s0,18
	c.srai	s0,00000018
	add	a5,s4,s7
	c.mv	a4,s3
	c.mv	a6,s0
	c.mv	a3,s2
	c.li	a2,00000001
	c.mv	a1,sp
	c.addi4spn	a0,00000004
	jal	ra,000000002301FB64
	c.lwsp	zero,000000E4
	c.addi4spn	a4,00000080
	c.add	s7,s0
	c.addi	a5,FFFFFFFF
	c.add	a5,a4
	lbu	a4,a5,-00000078
	c.addi	s5,00000001
	c.addi	a4,00000001
	sb	a4,a5,+00000F88
	c.j	000000002301FD4E

;; wpa_MD5Transform: 2301FDBC
;;   Called from:
;;     230206FC (in wpa_MD5Update)
;;     23020740 (in wpa_MD5Update)
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
	jal	zero,00000000230A3A68
