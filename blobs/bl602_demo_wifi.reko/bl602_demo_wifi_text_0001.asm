;;; Segment .text (23000300)

;; process_wpa_ie: 23010304
;;   Called from:
;;     2300AF92 (in scanu_frame_handler)
;;     23024068 (in bl_rx_scanu_result_ind)
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
	lui	s3,0002308E
	bne	a5,a4,000000002301036C

l23010334:
	c.li	a5,00000016
	sb	a5,a0,+00000001
	addi	s5,a0,+00000012
	c.li	a5,00000001
	sb	a5,a0,+0000000C
	sb	zero,a0,+0000000D
	c.li	a2,00000004
	addi	a1,s3,-00000244
	c.mv	a0,s5
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010360

l23010356:
	c.li	a2,00000004
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023070C7C

l23010360:
	c.li	a2,00000008
	addi	a1,s0,+00000016
	c.mv	a0,s5
	jal	ra,0000000023070C7C

l2301036C:
	c.li	a2,00000004
	addi	a1,s3,-00000244
	c.mv	a0,s4
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230103C0

l2301037A:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000008

l23010382:
	sb	a5,s2,+00000000

l23010386:
	addi	s2,s0,+00000008
	c.li	a2,00000004
	addi	a1,s3,-00000244
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230103DC

l23010398:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l230103A0:
	sb	a5,s1,+00000000

l230103A4:
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

l230103C0:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000248
	c.mv	a0,s4
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010386

l230103D2:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023010382

l230103DC:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000248
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230103F8

l230103EE:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	00000000230103A0

l230103F8:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000240
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010414

l2301040A:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	00000000230103A0

l23010414:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-0000024C
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230103A4

l23010426:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	00000000230103A0

;; keyMgmtStaRsnSecuredTimeoutHandler: 23010430
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
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,+000002F8
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.beqz	s1,0000000023010472

l23010460:
	c.lw	s1,120(a5)
	c.bnez	a5,0000000023010472

l23010464:
	lw	a5,s1,+00000118
	c.li	a1,0000000F
	lbu	a0,a5,+00000001
	jal	ra,000000002300C52A

l23010472:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000002F8
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; supplicantGenerateRand: 2301049A
;;   Called from:
;;     230113E8 (in GetKeyMsgNonceFromEAPOL)
;;     2301278C (in GeneratePWKMsg1)
;;     23012C3E (in GenerateGTK_internal)
;;     23012C56 (in GenerateGTK_internal)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+000000A8
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,0000000023033FB2
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,+000000A8
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; ComputeEAPOL_MIC: 230104FE
;;   Called from:
;;     23010880 (in IsEAPOL_MICValid)
;;     23010964 (in KeyMgmtSta_PopulateEAPOLLengthMic)
ComputeEAPOL_MIC proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000004
	c.swsp	a0,00000084
	c.mv	a7,a2
	c.bnez	a4,0000000023010510

l2301050A:
	lbu	a4,a0,+00000006
	c.andi	a4,00000007

l23010510:
	c.li	a2,00000001
	addi	a5,a0,+00000051
	beq	a4,a2,000000002301052E

l2301051A:
	c.li	a2,00000002
	beq	a4,a2,000000002301053C

l23010520:
	c.mv	a2,a1
	c.mv	a3,a5
	c.mv	a1,a0
	c.mv	a0,a7
	jal	ra,000000002301FBA2
	c.j	0000000023010536

l2301052E:
	c.mv	a4,a5
	c.mv	a2,a7
	jal	ra,000000002301FF2E

l23010536:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2301053C:
	c.mv	a4,a3
	c.li	a6,00000010
	c.mv	a3,a7
	c.li	a2,00000001
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,000000002302004E
	c.j	0000000023010536

;; keyMgmtGetKeySize_internal: 2301054E
;;   Called from:
;;     2300F8EC (in keyMgmtGetKeySize)
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
	lui	s0,00023076
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,00023076
	addi	a2,s0,+000000C0
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.mv	a2,s0
	beq	s2,zero,00000000230105C2

l23010586:
	lbu	a5,s1,+00000004
	addi	s0,zero,+00000020
	c.andi	a5,00000008
	c.beqz	a5,0000000023010594

l23010592:
	c.li	s0,00000010

l23010594:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	addi	a2,a2,+000000C0
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230105C2:
	lbu	a5,s1,+00000003
	c.li	s0,00000010
	andi	a4,a5,+00000008
	c.bnez	a4,0000000023010594

l230105CE:
	andi	a4,a5,+00000002
	c.li	s0,0000000D
	c.bnez	a4,0000000023010594

l230105D6:
	c.andi	a5,00000001
	addi	s0,zero,+00000020
	c.beqz	a5,0000000023010594

l230105DE:
	c.li	s0,00000005
	c.j	0000000023010594

;; isApReplayCounterFresh: 230105E2
;;   Called from:
;;     23010CC4 (in KeyMgmtSta_IsRxEAPOLValid)
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
	lui	s0,00023076
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,00023076
	addi	a2,s0,+000000DC
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
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
	bltu	a1,a3,0000000023010696

l2301065C:
	c.li	s0,00000000
	bne	a1,a3,0000000023010696

l23010662:
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
	bltu	a4,a5,0000000023010696

l23010686:
	c.li	s0,00000000
	bne	a4,a5,0000000023010696

l2301068C:
	c.or	a1,a4
	c.bnez	a1,0000000023010696

l23010690:
	c.lw	s1,104(s0)
	sltiu	s0,s0,+00000001

l23010696:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	addi	a2,a2,+000000DC
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; updateApReplayCounter: 230106C4
;;   Called from:
;;     2300F736 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     2300FBD8 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     2300FF00 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
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
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,+000000F4
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
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
	c.bnez	a5,0000000023010758

l23010754:
	c.li	a5,00000001
	c.sw	s1,104(a5)

l23010758:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s0,+000000F4
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; formEAPOLEthHdr: 23010784
;;   Called from:
;;     23010D76 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     2301270E (in PrepDefaultEapolMsg)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s4,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,+0000010C
	jal	ra,000000002301F8C0
	c.mv	a1,s5
	c.li	a2,00000006
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.mv	a1,s4
	c.li	a2,00000006
	addi	a0,s0,+00000006
	jal	ra,0000000023070C7C
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
	addi	a2,s2,+0000010C
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; IsEAPOL_MICValid: 2301080C
;;   Called from:
;;     23010D04 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23012902 (in ProcessPWKMsg4)
;;     23012A26 (in ProcessPWKMsg2)
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
	lui	s3,00023076
	lui	a0,00023076
	addi	a2,s3,+0000011C
	addi	a0,a0,-0000029C
	addi	s1,s0,+00000051
	jal	ra,000000002301F8C0
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
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
	jal	ra,00000000230104FE
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230108BC

l23010890:
	lw	a1,s4,+00000120
	lui	a0,00023076
	addi	a0,a0,-00000288
	srl	a1,a1,s2
	addi	a2,s3,+0000011C
	jal	ra,000000002301F8C0
	c.li	a0,00000001

l230108AA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230108BC:
	c.li	a0,00000000
	c.j	00000000230108AA

;; KeyMgmtSta_PopulateEAPOLLengthMic: 230108C0
;;   Called from:
;;     2300F602 (in GeneratePWKMsg2)
;;     2300FB22 (in GenerateGrpMsg2)
;;     2300FE0C (in GeneratePWKMsg4)
;;     230128C6 (in GeneratePWKMsg3)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s6,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,+00000130
	c.li	s4,00000000
	jal	ra,000000002301F8C0
	c.beqz	s0,0000000023010980

l23010902:
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
	jal	ra,00000000230104FE
	lw	a1,s3,+00000120
	lui	a0,00023076
	addi	a2,s2,+00000130
	srl	a1,a1,s1
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0

l23010980:
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

;; parseKeyKDE: 23010996
;;   Called from:
;;     23010AB0 (in parseKeyKDE_DataType)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+00000154
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lbu	a4,s0,+00000000
	addi	a5,zero,+000000DD
	beq	a4,a5,00000000230109FE

l230109D0:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s1,+00000154
	addi	a0,a0,-00000288
	c.li	s0,00000000
	jal	ra,000000002301F8C0

l230109F2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230109FE:
	lbu	a4,s0,+00000001
	c.li	a5,00000007
	bgeu	a5,a4,00000000230109D0

l23010A08:
	lui	a1,0002308E
	c.li	a2,00000003
	addi	a1,a1,-0000026C
	addi	a0,s0,+00000002
	jal	ra,0000000023070BF4
	c.beqz	a0,00000000230109F2

l23010A1C:
	c.j	00000000230109D0

;; parseKeyKDE_DataType: 23010A1E
;;   Called from:
;;     23010B14 (in parseKeyDataGTK)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s5,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,+00000160
	jal	ra,000000002301F8C0
	c.beqz	s0,0000000023010A8E

l23010A5E:
	c.mv	s1,s0
	c.li	s4,00000002
	addi	s6,zero,+000000DD
	c.li	s7,FFFFFFFE

l23010A68:
	blt	s4,s3,0000000023010AA6

l23010A6C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s2,+00000160
	addi	a0,a0,-00000288
	c.li	s0,00000000
	jal	ra,000000002301F8C0

l23010A8E:
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

l23010AA6:
	lbu	a5,s1,+00000000
	bne	a5,s6,0000000023010AC8

l23010AAE:
	c.mv	a0,s1
	jal	ra,0000000023010996
	c.mv	s0,a0
	c.beqz	a0,0000000023010AC0

l23010AB8:
	lbu	a5,a0,+00000005
	beq	a5,s5,0000000023010A8E

l23010AC0:
	lbu	a5,s1,+00000001
	c.bnez	a5,0000000023010AC8

l23010AC6:
	c.li	s3,00000002

l23010AC8:
	lbu	a5,s1,+00000001
	sub	a4,s7,a5
	c.addi	a5,00000002
	c.add	s3,a4
	c.add	s1,a5
	c.j	0000000023010A68

;; parseKeyDataGTK: 23010AD8
;;   Called from:
;;     230114B6 (in ProcessRxEAPOL_PwkMsg3)
;;     23011566 (in ProcessRxEAPOL_GrpMsg1)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s0,a2
	addi	a2,s2,+00000178
	jal	ra,000000002301F8C0
	c.mv	a0,s1
	c.li	a2,00000001
	c.mv	a1,s3
	jal	ra,0000000023010A1E
	c.mv	s1,a0
	c.beqz	a0,0000000023010B5A

l23010B1C:
	lbu	a2,a0,+00000001
	addi	a1,a0,+00000008
	c.mv	a0,s0
	c.addi	a2,FFFFFFFA
	jal	ra,0000000023070C7C
	lbu	a5,s1,+00000006
	addi	s3,s0,+00000018
	c.li	a2,00000008
	c.andi	a5,00000003
	sh	a5,s0,+00000026
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	c.addi	s0,00000010
	c.li	a2,00000008
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023070C7C

l23010B5A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s2,+00000178
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; KeyMgmtSta_ApplyKEK: 23010B8A
;;   Called from:
;;     23011496 (in ProcessRxEAPOL_PwkMsg3)
;;     23011538 (in ProcessRxEAPOL_GrpMsg1)
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
	lui	s1,00023076
	lui	a0,00023076
	c.mv	s3,a2
	addi	a0,a0,-0000029C
	addi	a2,s1,+00000188
	jal	ra,000000002301F8C0
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
	bne	a5,a2,0000000023010C4A

l23010C0E:
	addi	a5,zero,+00000100
	c.li	a2,00000010
	addi	a1,s0,+00000031
	c.mv	a0,s3
	jal	ra,00000000230120CC

l23010C1E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,s1,+00000188
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l23010C4A:
	srli	a2,a4,00000003
	c.mv	a5,a3
	c.li	a4,00000000
	c.addi	a2,FFFFFFFF
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,000000002301FE02
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
	c.j	0000000023010C1E

;; KeyMgmtSta_IsRxEAPOLValid: 23010C7A
;;   Called from:
;;     230113C4 (in GetKeyMsgNonceFromEAPOL)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,+0000019C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.bnez	s1,0000000023010CBC

l23010CAE:
	c.li	a0,00000000

l23010CB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23010CBC:
	c.beqz	s0,0000000023010CAE

l23010CBE:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,00000000230105E2
	c.beqz	a0,0000000023010CAE

l23010CCA:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023010CF6

l23010CD2:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	addi	a2,s2,+0000019C
	jal	ra,000000002301F8C0
	c.li	a0,00000001
	c.j	0000000023010CB0

l23010CF6:
	lbu	a5,s0,+00000006
	c.andi	a5,00000008
	c.bnez	a5,0000000023010D0C

l23010CFE:
	addi	a1,s1,+00000040
	c.mv	a0,s0
	jal	ra,000000002301080C
	c.bnez	a0,0000000023010CD2

l23010D0A:
	c.j	0000000023010CAE

l23010D0C:
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,s0,+00000011
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023010CFE

l23010D1C:
	c.j	0000000023010CAE

;; KeyMgmtSta_PrepareEAPOLFrame: 23010D1E
;;   Called from:
;;     2300F5C8 (in GeneratePWKMsg2)
;;     2300FB14 (in GenerateGrpMsg2)
;;     2300FDFE (in GeneratePWKMsg4)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s4,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,+000001B8
	c.mv	s5,a3
	c.mv	s3,a4
	jal	ra,000000002301F8C0
	beq	s0,zero,0000000023010E6C

l23010D60:
	beq	s1,zero,0000000023010E6C

l23010D64:
	addi	a2,zero,+00000072
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023010784
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
	beq	s3,zero,0000000023010E3C

l23010E2E:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+0000001F
	jal	ra,0000000023070C7C

l23010E3C:
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
	addi	a2,s2,+000001B8
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l23010E6C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; supplicantAkmIsWpaWpa2: 23010E7E
;;   Called from:
;;     2300F6C4 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23010FA6 (in supplicantAkmIsWpaWpa2Psk)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+000001D8
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lui	a1,0002308E
	c.li	a2,00000003
	addi	a1,a1,-00000250
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010ED2

l23010EC2:
	c.li	a0,00000001

l23010EC4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23010ED2:
	lui	a1,0002308E
	c.li	a2,00000003
	addi	a1,a1,-0000026C
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023010EC2

l23010EE4:
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a0,a0,-00000288
	srl	a1,a1,s0
	addi	a2,s1,+000001D8
	jal	ra,000000002301F8C0
	c.li	a0,00000000
	c.j	0000000023010EC4

;; supplicantAkmIsWpa2: 23010F00
;;   Called from:
;;     23011022 (in supplicantAkmUsesKdf)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+000001F0
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lui	a1,0002308E
	c.li	a2,00000003
	addi	a1,a1,-0000026C
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023010F6C

l23010F44:
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a0,a0,-00000288
	srl	a1,a1,s0
	addi	a2,s1,+000001F0
	jal	ra,000000002301F8C0
	c.li	a0,00000000

l23010F5E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23010F6C:
	c.li	a0,00000001
	c.j	0000000023010F5E

;; supplicantAkmIsWpaWpa2Psk: 23010F70
;;   Called from:
;;     2300F6D4 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s2,+00000204
	jal	ra,000000002301F8C0
	c.mv	a0,s4
	jal	ra,0000000023010E7E
	c.beqz	a0,0000000023010FD6

l23010FAC:
	lbu	a5,s4,+00000003
	c.li	a4,00000002
	c.li	s0,00000001
	andi	a3,a5,+000000FB
	beq	a3,a4,0000000023010FC4

l23010FBC:
	addi	s0,a5,-00000004
	sltiu	s0,s0,+00000001

l23010FC4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23010FD6:
	lw	a1,s3,+00000120
	c.mv	s0,a0
	lui	a0,00023076
	srl	a1,a1,s1
	addi	a2,s2,+00000204
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	0000000023010FC4

;; supplicantAkmUsesKdf: 23010FF2
;;   Called from:
;;     2300F6F4 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
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
	lui	s0,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s0,+00000220
	jal	ra,000000002301F8C0
	c.mv	a0,s1
	jal	ra,0000000023010F00
	c.beqz	a0,000000002301103A

l23011028:
	lbu	a5,s1,+00000003
	c.li	a4,00000003
	c.li	a0,00000001
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bgeu	a4,a5,000000002301105C

l2301103A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	addi	a2,s0,+00000220
	jal	ra,000000002301F8C0
	c.li	a0,00000000

l2301105C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; supplicantConstructContext: 23011066
;;   Called from:
;;     2301119E (in KeyMgmt_DerivePTK)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s2,a2
	addi	a2,s1,+00000238
	c.mv	s0,a4
	c.mv	s3,a3
	addi	s6,s0,+00000006
	jal	ra,000000002301F8C0
	c.li	a2,00000006
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023070BF4
	c.li	a2,00000006
	bge	a0,zero,000000002301112E

l230110BA:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s5

l230110C6:
	c.mv	a0,s6
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	addi	a5,s0,+0000000C
	addi	a2,zero,+00000020
	addi	s0,s0,+0000002C
	bge	a0,zero,000000002301113C

l230110E8:
	c.mv	a1,s2
	c.mv	a0,a5
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000020
	c.mv	a1,s3

l230110F6:
	c.mv	a0,s0
	jal	ra,0000000023070C7C
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
	addi	a2,s1,+00000238
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l2301112E:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s4
	c.j	00000000230110C6

l2301113C:
	c.mv	a1,s3
	c.mv	a0,a5
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.j	00000000230110F6

;; KeyMgmt_DerivePTK: 2301114C
;;   Called from:
;;     23011294 (in KeyMgmtSta_DeriveKeys)
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
	lui	s0,00023076
	lui	a0,00023076
	c.mv	s6,a2
	addi	a0,a0,-0000029C
	addi	a2,s0,+00000254
	c.mv	s2,a4
	addi	s1,s2,+000000C8
	jal	ra,000000002301F8C0
	c.lwsp	a2,000000A4
	c.mv	a2,s6
	c.mv	a4,s1
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023011066
	c.lwsp	s0,00000008
	lui	a2,00023076
	beq	a6,zero,00000000230111F8

l230111AC:
	addi	a7,zero,+00000180
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+00000090
	addi	a1,zero,+00000020
	c.mv	a0,s3
	c.jal	0000000023011816

l230111C6:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+00000254
	srl	a1,a1,a5
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000030
	jal	zero,000000002301F8C0

l230111F8:
	addi	a7,zero,+00000040
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+00000090
	addi	a1,zero,+00000020
	c.mv	a0,s3
	jal	ra,00000000230201B6
	c.j	00000000230111C6

;; KeyMgmtSta_DeriveKeys: 23011216
;;   Called from:
;;     2300F712 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23012F86 (in KeyMgmtAp_DerivePTK)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s7,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,+00000268
	c.mv	s9,a3
	c.mv	s4,a5
	c.mv	s6,a6
	c.mv	s0,a7
	jal	ra,000000002301F8C0
	beq	s5,zero,00000000230112E6

l2301127E:
	beq	s4,zero,00000000230112E6

l23011282:
	c.beqz	s0,00000000230112E6

l23011284:
	lw	a6,sp,+00000240
	c.lwsp	a2,000000A4
	c.mv	a5,s5
	c.addi4spn	a4,0000001C
	c.mv	a2,s9
	c.mv	a1,s8
	c.mv	a0,s7
	jal	ra,000000002301114C
	c.li	a2,00000010
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.li	a2,00000010
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	jal	ra,0000000023070C7C
	c.li	a2,00000010
	c.addi4spn	a1,0000003C
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,0000004C
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,00000054
	addi	a0,s0,+00000018
	jal	ra,0000000023070C7C
	lw	a1,s3,+00000120
	lui	a0,00023076
	addi	a2,s2,+00000268
	srl	a1,a1,s1
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0

l230112E6:
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

;; SetEAPOLKeyDescTypeVersion: 23011318
;;   Called from:
;;     23012730 (in PrepDefaultEapolMsg)
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
	lui	s3,00023076
	lui	a0,00023076
	c.mv	s0,a2
	addi	a0,a0,-0000029C
	addi	a2,s3,+00000280
	jal	ra,000000002301F8C0
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
	addi	a2,s3,+00000280
	c.lwsp	a2,00000068
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; GetKeyMsgNonceFromEAPOL: 2301138C
;;   Called from:
;;     2300F698 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23011456 (in ProcessRxEAPOL_PwkMsg3)
;;     230114EC (in ProcessRxEAPOL_GrpMsg1)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s1,+0000029C
	jal	ra,000000002301F8C0
	c.lw	s0,8(s0)
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023010C7A
	c.beqz	a0,000000002301141A

l230113CA:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,00000000230113EC

l230113D2:
	addi	a1,s0,+00000011
	addi	a2,zero,+00000020
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	addi	a1,zero,+00000020
	addi	a0,s2,+00000020
	jal	ra,000000002301049A

l230113EC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s1,+0000029C
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0

l2301140C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301141A:
	c.li	s0,00000000
	c.j	000000002301140C

;; ProcessRxEAPOL_PwkMsg3: 2301141E
;;   Called from:
;;     2300FEDE (in KeyMgmtStaHsk_Recvd_PWKMsg3)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s2,+000002B4
	jal	ra,000000002301F8C0
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002301138C
	c.bnez	a0,000000002301146E

l2301145C:
	c.li	s0,00000000

l2301145E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301146E:
	c.li	a5,00000001
	sh	a5,s1,+000000F8
	sw	zero,s1,+000000F4
	lbu	a5,a0,+00000005
	c.mv	s0,a0
	c.andi	a5,00000010
	c.beqz	a5,00000000230114BA

l23011482:
	addi	a0,s1,+00000108
	jal	ra,00000000230037DC
	addi	s3,s1,+000000AC
	c.mv	a1,s3
	c.mv	a0,s0
	addi	a2,s1,+00000050
	jal	ra,0000000023010B8A
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300F074
	c.beqz	a0,000000002301145C

l230114A4:
	lbu	a5,s0,+00000062
	lbu	a1,s0,+00000061
	c.mv	a2,s3
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,s0,+00000063
	jal	ra,0000000023010AD8

l230114BA:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s2,+000002B4
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	000000002301145E

;; ProcessRxEAPOL_GrpMsg1: 230114DC
;;   Called from:
;;     2300FBAA (in KeyMgmtStaHsk_Recvd_GrpMsg1)
ProcessRxEAPOL_GrpMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a1
	jal	ra,000000002301138C
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,+000002CC
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.bnez	s0,000000002301152C

l23011518:
	c.li	s0,00000000

l2301151A:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2301152C:
	addi	s3,s1,+000000AC
	addi	a2,s1,+00000050
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023010B8A
	c.li	a5,00000001
	c.sw	s1,116(a5)
	addi	a0,s1,+00000108
	jal	ra,00000000230037DC
	lbu	a3,s0,+00000004
	c.li	a4,00000002
	addi	a0,s0,+00000063
	lbu	a5,s0,+00000061
	lbu	a2,s0,+00000062
	bne	a3,a4,0000000023011596

l2301155E:
	slli	a1,a2,00000008
	c.or	a1,a5
	c.mv	a2,s3
	jal	ra,0000000023010AD8
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300F074
	c.beqz	a0,0000000023011518

l23011574:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s2,+000002CC
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	000000002301151A

l23011596:
	c.slli	a2,08
	c.or	a2,a5
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,0000000023070C7C
	addi	s4,s1,+000000C4
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	addi	s3,s1,+000000BC
	c.li	a2,00000008
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	jal	ra,0000000023070C7C
	lbu	a5,s0,+00000006
	c.srli	a5,00000004
	c.andi	a5,00000003
	sh	a5,s1,+000000D2
	c.j	0000000023011574

;; KeyMgmtResetCounter: 230115D6
;;   Called from:
;;     2300F7CC (in supplicantInit)
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
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,+000002E4
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.beqz	s1,000000002301160E

l23011606:
	sw	zero,s1,+00000070
	sw	zero,s1,+0000006C

l2301160E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000002E4
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; keyMgmtSta_StartSession_internal: 23011636
;;   Called from:
;;     2300F196 (in keyMgmtSta_StartSession)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+0000031C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a5,s0,+00000104
	c.bnez	a5,000000002301167E

l23011670:
	lw	a1,s2,+00000120
	addi	a0,s0,+00000108
	c.add	a1,s3
	jal	ra,0000000023003726

l2301167E:
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
	addi	a2,s1,+0000031C
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; KeyMgmtSta_InitSession: 230116B6
;;   Called from:
;;     2300F102 (in KeyMgmtInitSta)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,+00000340
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lui	a5,00023010
	addi	a5,a5,+00000430
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
	addi	a2,s2,+00000340
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; set_psk: 2301172C
;;   Called from:
;;     2300260C (in mm_sta_add)
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
	lui	s1,0002308E
	lui	a0,00023076
	c.mv	s3,a2
	addi	a0,a0,-0000029C
	addi	a2,s1,-0000023C
	jal	ra,000000002301F8C0
	lui	a0,00042048
	addi	a2,zero,+00000043
	addi	a1,zero,+000000FF
	addi	a0,a0,-0000015C
	jal	ra,0000000023070EB8
	c.mv	a0,s3
	jal	ra,000000002307132C
	c.mv	a2,s3
	c.mv	a1,s5
	andi	a3,a0,+000000FF
	c.mv	a0,s4
	c.jal	000000002301197A
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-0000023C
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; remove_psk: 230117B4
;;   Called from:
;;     2300283C (in mm_sta_del)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+00000358
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.mv	a1,s4
	c.mv	a0,s3
	c.jal	0000000023011E12
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,+00000358
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; bl_sha256_crypto_kdf: 23011816
;;   Called from:
;;     230111C4 (in KeyMgmt_DerivePTK)
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

l23011862:
	lhu	a5,sp,+0000001E
	bgeu	s0,a5,0000000023011896

l2301186A:
	lhu	a2,sp,+0000000E
	c.mv	a1,s2
	c.mv	a0,a6
	c.srli	a2,00000003
	jal	ra,0000000023070C7C
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

l23011896:
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
	jal	ra,0000000023012530
	lhu	a5,sp,+0000001E
	addi	s1,s1,+00000020
	c.lwsp	s0,00000008
	c.addi	a5,00000001
	sh	a5,sp,+0000001E
	c.j	0000000023011862

;; pmkCacheFindPSK: 230118CA
;;   Called from:
;;     2300F6E4 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,+00000364
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023011CAC
	c.mv	s0,a0
	c.beqz	a0,0000000023011940

l2301190A:
	addi	s0,a0,+00000020

l2301190E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s1,+00000364
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23011940:
	lui	s4,00042048
	lbu	a5,s4,-00000090
	c.beqz	a5,000000002301190E

l2301194A:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023011D72
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023011CAC
	c.mv	s0,a0
	addi	a0,s4,-00000090
	jal	ra,000000002307132C
	addi	s0,s0,+00000020
	andi	a3,a0,+000000FF
	c.mv	a4,s0
	addi	a2,s4,-00000090
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023011F04
	c.j	000000002301190E

;; pmkCacheSetPassphrase: 2301197A
;;   Called from:
;;     2301178A (in set_psk)
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
	lui	s0,00023076
	lui	a0,00023076
	c.mv	s1,a2
	addi	a0,a0,-0000029C
	addi	a2,s0,+00000374
	c.mv	s3,a3
	jal	ra,000000002301F8C0
	c.beqz	s1,00000000230119EA

l230119B8:
	lui	s2,00042048
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,s2,-00000090
	jal	ra,0000000023070C7C
	c.mv	a3,s3
	c.mv	a2,s1
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023011D72
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023011CAC
	lbu	a1,a0,+00000040
	addi	a4,a0,+00000020
	c.mv	a3,s3
	addi	a2,s2,-00000090
	c.jal	0000000023011F04

l230119EA:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+00000374
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; pmkCacheInit: 23011A1A
;;   Called from:
;;     23021D6C (in supplicantRestoreDefaults)
pmkCacheInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023076
	srl	a1,a1,s0
	lui	a0,00023076
	addi	a2,s1,+0000038C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lui	a0,00042048
	addi	a2,zero,+00000086
	c.li	a1,00000000
	addi	a0,a0,-00000118
	jal	ra,0000000023070EB8
	lui	a0,00042048
	addi	a2,zero,+00000040
	c.li	a1,00000000
	addi	a0,a0,-00000090
	jal	ra,0000000023070EB8
	lui	a5,00042048
	sb	zero,a5,+00000FB0
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,+0000038C
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; pmkCacheRomInit: 23011A96
;;   Called from:
;;     23021D70 (in supplicantRestoreDefaults)
pmkCacheRomInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023076
	srl	a1,a1,s0
	lui	a0,00023076
	addi	a2,s1,+0000039C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lui	a5,00042048
	c.li	a4,00000002
	sw	a4,a5,+00000FBC
	lui	a5,00042048
	lui	a4,00042048
	addi	a5,a5,-00000118
	sw	a5,a4,+00000FB8
	lui	a5,00042048
	lui	a4,00042048
	addi	a5,a5,-00000090
	sw	a5,a4,+00000FB4
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,+0000039C
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; pmkCacheNewElement: 23011B10
;;   Called from:
;;     23011DBA (in pmkCacheAddPSK)
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
	lui	s8,00023076
	srl	a1,a1,a5
	lui	a0,00023076
	addi	a2,s8,+000003AC
	addi	a0,a0,-0000029C
	c.li	s3,00000000
	c.li	s0,00000000
	lui	s5,00042048
	lui	s2,00042048
	lui	s4,00042048
	addi	s6,zero,+00000043
	jal	ra,000000002301F8C0

l23011B5E:
	lw	a5,s5,-00000044
	blt	s0,a5,0000000023011BA0

l23011B66:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s8,+000003AC
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
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

l23011BA0:
	lb	a4,s2,-00000050
	bne	a4,a5,0000000023011BBC

l23011BA8:
	add	a5,s0,s6
	lw	a4,s4,-00000048
	c.add	a5,a4
	lbu	a4,a5,+00000042
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000042

l23011BBC:
	bne	s3,zero,0000000023011BFE

l23011BC0:
	add	s7,s0,s6
	lw	s1,s4,-00000048
	c.add	s1,s7
	lb	a5,s1,+00000042
	c.bnez	a5,0000000023011BFE

l23011BD0:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	lb	a5,s2,-00000050
	lw	a4,s5,-00000044
	bge	a5,a4,0000000023011BEE

l23011BE8:
	c.addi	a5,00000001
	sb	a5,s2,+00000FB0

l23011BEE:
	lw	a5,s4,-00000048
	lbu	a4,s2,-00000050
	c.mv	s3,s1
	c.add	a5,s7
	sb	a4,a5,+00000042

l23011BFE:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023011B5E

;; pmkCacheUpdateReplacementRank: 23011C06
;;   Called from:
;;     23011D04 (in pmkCacheFindPSKElement)
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
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,+000003C0
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.beqz	s1,0000000023011C64

l23011C36:
	lui	a5,00042048
	lb	a2,a5,-00000050
	lb	a5,s1,+00000042
	beq	a5,a2,0000000023011C64

l23011C46:
	lui	a5,00042048
	lw	a1,a5,-00000044
	lui	a5,00042048
	lw	a0,a5,-00000048
	addi	a6,zero,+00000043
	c.li	a5,00000000

l23011C5C:
	blt	a5,a1,0000000023011C8C

l23011C60:
	sb	a2,s1,+00000042

l23011C64:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000003C0
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

l23011C8C:
	add	a4,a5,a6
	lb	a7,s1,+00000042
	c.add	a4,a0
	lb	a3,a4,+00000042
	bge	a7,a3,0000000023011CA4

l23011C9E:
	c.addi	a3,FFFFFFFF
	sb	a3,a4,+00000042

l23011CA4:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.j	0000000023011C5C

;; pmkCacheFindPSKElement: 23011CAC
;;   Called from:
;;     23011904 (in pmkCacheFindPSK)
;;     23011958 (in pmkCacheFindPSK)
;;     230119D8 (in pmkCacheSetPassphrase)
;;     23011DB2 (in pmkCacheAddPSK)
;;     23011E1A (in pmkCacheDeletePSK)
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
	lui	s5,00023076
	lui	a0,00023076
	addi	a2,s5,+000003E0
	addi	a0,a0,-0000029C
	c.li	s1,00000000
	c.li	s0,00000000
	lui	s7,00042048
	addi	s8,zero,+00000043
	lui	s3,00042048
	jal	ra,000000002301F8C0

l23011CFA:
	lw	a5,s7,-00000044
	blt	s0,a5,0000000023011D42

l23011D02:
	c.mv	a0,s1
	jal	ra,0000000023011C06
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s5,+000003E0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
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

l23011D42:
	add	s4,s0,s8
	lw	a0,s3,-00000048
	c.add	a0,s4
	lb	a5,a0,+00000042
	c.beqz	a5,0000000023011D6A

l23011D52:
	lbu	a5,a0,+00000040
	bne	a5,s2,0000000023011D6A

l23011D5A:
	c.mv	a2,s2
	c.mv	a1,s6
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023011D6A

l23011D64:
	lw	s1,s3,-00000048
	c.add	s1,s4

l23011D6A:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023011CFA

;; pmkCacheAddPSK: 23011D72
;;   Called from:
;;     23011952 (in pmkCacheFindPSK)
;;     230119D2 (in pmkCacheSetPassphrase)
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
	lui	s1,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s3,a2
	addi	a2,s1,+000003F8
	c.mv	s5,a3
	jal	ra,000000002301F8C0
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023011CAC
	c.mv	s0,a0
	c.bnez	a0,0000000023011DCC

l23011DBA:
	jal	ra,0000000023011B10
	c.mv	s0,a0
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,0000000023070C7C
	sb	s2,s0,+00000040

l23011DCC:
	beq	s3,zero,0000000023011DE2

l23011DD0:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+00000020
	jal	ra,0000000023070C7C
	sb	s5,s0,+00000041

l23011DE2:
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
	addi	a2,s1,+000003F8
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; pmkCacheDeletePSK: 23011E12
;;   Called from:
;;     230117EE (in remove_psk)
pmkCacheDeletePSK proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023011CAC
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,+00000408
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.beqz	s1,0000000023011E60

l23011E46:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	lui	a4,00042048
	lbu	a5,a4,-00000050
	c.addi	a5,FFFFFFFF
	sb	a5,a4,+00000FB0

l23011E60:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+00000408
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; pmkCacheGetHexNibble: 23011E88
;;   Called from:
;;     23011FA6 (in pmkCacheGeneratePSK)
;;     23011FB0 (in pmkCacheGeneratePSK)
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
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,+0000041C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	addi	a5,zero,+00000060
	bgeu	a5,s0,0000000023011ED8

l23011EC2:
	addi	s0,s0,-00000057

l23011EC6:
	andi	a0,s0,+000000FF
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23011ED8:
	addi	a5,zero,+00000040
	bgeu	a5,s0,0000000023011EE6

l23011EE0:
	addi	s0,s0,-00000037
	c.j	0000000023011EC6

l23011EE6:
	lw	a1,s3,+00000120
	lui	a0,00023076
	addi	a2,s2,+0000041C
	srl	a1,a1,s1
	addi	a0,a0,-00000288
	addi	s0,s0,-00000030
	jal	ra,000000002301F8C0
	c.j	0000000023011EC6

;; pmkCacheGeneratePSK: 23011F04
;;   Called from:
;;     23011976 (in pmkCacheFindPSK)
;;     230119E8 (in pmkCacheSetPassphrase)
;;     230126B6 (in KeyMgmtInit)
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
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s0,a2
	c.mv	s4,a4
	addi	a2,s2,+00000434
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	beq	s4,zero,0000000023011F62

l23011F46:
	c.beqz	s0,0000000023011F62

l23011F48:
	c.lwsp	a2,000000A4
	addi	a4,zero,+00000037
	addi	a5,a3,-00000008
	bltu	a4,a5,0000000023011F92

l23011F56:
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304BE02

l23011F62:
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
	addi	a2,s2,+00000434
	c.lwsp	zero,00000158
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000030
	jal	zero,000000002301F8C0

l23011F92:
	addi	a5,zero,+00000040
	bne	a3,a5,0000000023011F62

l23011F9A:
	c.li	s3,00000000
	addi	s5,zero,+00000040

l23011FA0:
	lbu	a0,s0,+00000000
	c.addi	s0,00000002
	jal	ra,0000000023011E88
	c.mv	s1,a0
	lbu	a0,s0,-00000001
	jal	ra,0000000023011E88
	srai	a2,s3,00000001
	slli	a5,s1,00000004
	c.add	a2,s4
	c.or	a0,a5
	sb	a0,a2,+00000000
	c.addi	s3,00000002
	bne	s3,s5,0000000023011FA0

l23011FCA:
	c.j	0000000023011F62

;; prepare_key: 23011FCC
;;   Called from:
;;     23012110 (in RC4_Encrypt)
prepare_key proc
	c.li	a5,00000000
	addi	a4,zero,+00000100

l23011FD2:
	add	a3,a2,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023011FD2

l23011FE0:
	sb	zero,a2,+00000100
	sb	zero,a2,+00000101
	c.mv	a3,a2
	addi	t1,a2,+00000100
	c.li	a7,00000000
	c.li	a4,00000000

l23011FF2:
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
	bne	t1,a3,0000000023011FF2

l23012028:
	c.jr	ra

;; rc4: 2301202A
;;   Called from:
;;     2301211E (in RC4_Encrypt)
rc4 proc
	lbu	t3,a3,+00000100
	lbu	a4,a3,+00000101
	c.li	a5,00000000

l23012034:
	add	a6,t3,a5
	andi	a6,a6,+000000FF
	blt	a5,a2,0000000023012058

l23012040:
	c.li	a7,00000000

l23012042:
	add	a5,a6,a7
	andi	a5,a5,+000000FF
	blt	a7,a1,0000000023012082

l2301204E:
	sb	a5,a3,+00000100
	sb	a4,a3,+00000101
	c.jr	ra

l23012058:
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
	c.j	0000000023012034

l23012082:
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
	c.j	0000000023012042

;; RC4_Encrypt: 230120CC
;;   Called from:
;;     23010C1A (in KeyMgmtSta_ApplyKEK)
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
	blt	a7,s5,0000000023012122

l230120E8:
	c.mv	s4,a0
	c.mv	a0,sp
	c.mv	s1,a3
	c.mv	s0,a2
	c.mv	s3,a5
	c.mv	s2,a4
	jal	ra,0000000023070C7C
	c.li	a2,00000010
	c.mv	a1,s4
	add	a0,sp,s0
	jal	ra,0000000023070C7C
	lui	s0,00042011
	addi	a2,s0,+000006D8
	c.mv	a1,s5
	c.mv	a0,sp
	jal	ra,0000000023011FCC
	addi	a3,s0,+000006D8
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002301202A

l23012122:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; sha256_compress: 23012134
;;   Called from:
;;     230123D6 (in sha256_vector)
;;     2301242C (in sha256_vector)
;;     230124A2 (in sha256_vector)
;;     230124F4 (in sha256_vector)
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
	jal	ra,0000000023070C7C
	addi	a2,s4,+00000040
	c.mv	a3,s0

l23012162:
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
	bne	s4,a2,0000000023012162

l23012196:
	addi	a4,s0,+00000040

l2301219A:
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
	bne	s2,a4,000000002301219A

l230121EE:
	lui	a0,00023076
	c.li	a1,00000000
	addi	a0,a0,+00000448
	addi	a6,zero,+00000100

l230121FC:
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
	bne	a1,a6,00000000230121FC

l230122C0:
	addi	s3,s3,+00000028

l230122C4:
	c.lw	s1,0(a5)
	lw	a4,s2,+00000000
	c.addi	s1,00000004
	c.addi	s2,00000004
	c.add	a5,a4
	sw	a5,s1,+00000FFC
	bne	s3,s1,00000000230122C4

l230122D8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; sha256_init: 230122EA
;;   Called from:
;;     23012378 (in sha256_vector)
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

;; sha256_vector: 2301234A
;;   Called from:
;;     23012574 (in hmac_sha256_vector)
;;     230125DC (in hmac_sha256_vector)
;;     2301262C (in hmac_sha256_vector)
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
	jal	ra,00000000230122EA
	c.li	s8,00000000
	addi	s6,zero,+00000040
	addi	s7,s0,+0000002C
	addi	s10,zero,+0000003F

l2301238A:
	c.lw	s0,40(a5)
	bne	s8,s5,000000002301247E

l23012390:
	addi	a4,zero,+0000003F
	bltu	a4,a5,0000000023012460

l23012398:
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
	bgeu	a5,a4,00000000230123DE

l230123C4:
	addi	a4,zero,+0000003F

l230123C8:
	c.lw	s0,40(a5)
	bgeu	a4,a5,0000000023012514

l230123CE:
	c.mv	a2,s4
	addi	a1,s0,+0000002C
	c.mv	a0,s0
	jal	ra,0000000023012134
	sw	zero,s0,+00000028

l230123DE:
	addi	a4,zero,+00000037

l230123E2:
	c.lw	s0,40(a5)
	bgeu	a4,a5,0000000023012522

l230123E8:
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
	jal	ra,0000000023012134
	addi	a5,s0,+00000008
	addi	s0,s0,+00000028

l23012438:
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
	bne	a5,s0,0000000023012438

l23012460:
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

l2301247E:
	c.lwsp	a2,000000C4
	add	a3,a4,s8
	lw	s3,a3,+00000000
	add	a3,s9,s8
	c.lw	a3,0(s1)
	bgeu	s6,a5,00000000230124C4

l23012492:
	c.addi	s8,00000004
	c.j	000000002301238A

l23012496:
	c.bnez	a0,00000000230124CA

l23012498:
	bgeu	s10,s1,00000000230124CA

l2301249C:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023012134
	blt	a0,zero,0000000023012492

l230124AA:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	addi	s3,s3,+00000040
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	addi	s1,s1,-00000040

l230124C4:
	c.lw	s0,40(a0)
	c.bnez	s1,0000000023012496

l230124C8:
	c.j	0000000023012492

l230124CA:
	sub	s11,s6,a0
	bgeu	s1,s11,00000000230124D4

l230124D2:
	c.mv	s11,s1

l230124D4:
	c.mv	a1,s3
	c.mv	a2,s11
	c.add	a0,s7
	jal	ra,0000000023070C7C
	c.lw	s0,40(a5)
	c.add	s3,s11
	sub	s1,s1,s11
	c.add	a5,s11
	c.sw	s0,40(a5)
	bne	a5,s6,00000000230124C4

l230124EE:
	c.mv	a2,s4
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023012134
	blt	a0,zero,0000000023012492

l230124FC:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	sw	zero,s0,+00000028
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	c.j	00000000230124C4

l23012514:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	00000000230123C8

l23012522:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	00000000230123E2

;; hmac_sha256_vector: 23012530
;;   Called from:
;;     230118B4 (in bl_sha256_crypto_kdf)
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
	bgeu	a5,a1,0000000023012580

l2301256A:
	c.addi4spn	a4,000000AC
	c.mv	a3,s0
	c.addi4spn	a2,00000008
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,000000002301234A
	addi	a5,zero,+00000020
	c.swsp	s0,00000084
	c.swsp	a5,00000004

l23012580:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,0000000023070EB8
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,0000000023070C7C
	lui	a3,00036363
	c.addi4spn	a4,0000004C
	addi	a3,a3,+00000636

l230125A0:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,00000000230125A0

l230125B0:
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

l230125C8:
	c.addi	a2,00000004
	c.addi	a3,00000004
	bne	a4,a5,0000000023012656

l230125D0:
	c.addi4spn	a4,000000AC
	c.mv	a3,s1
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,s2,+00000001
	jal	ra,000000002301234A
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,0000000023070EB8
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,0000000023070C7C
	lui	a3,0005C5C6
	c.addi4spn	a4,0000004C
	addi	a3,a3,-000003A4

l23012600:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,0000000023012600

l23012610:
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
	jal	ra,000000002301234A
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

l23012656:
	add	a1,s3,a4
	c.lw	a1,0(a1)
	c.sw	a2,0(a1)
	add	a1,s4,a4
	c.lw	a1,0(a1)
	c.addi	a4,00000004
	c.sw	a3,0(a1)
	c.j	00000000230125C8

;; KeyMgmtInit: 2301266A
;;   Called from:
;;     23012BB0 (in InitGroupKey)
KeyMgmtInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s1,a0
	jal	ra,000000002301306C
	c.mv	s0,a0
	addi	a1,a0,+000000F4
	addi	a2,s1,+00000046
	addi	a0,a0,+000000CC
	jal	ra,000000002301300E
	lw	a4,s0,+000000B8
	c.li	a5,00000001
	bne	a4,a5,00000000230126BE

l23012694:
	lbu	a1,s1,+0000002C
	addi	a2,s0,+00000018
	c.mv	a0,a2
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002307132C
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	andi	a3,a0,+000000FF
	addi	a4,s0,+00000059
	addi	a0,s1,+0000000C
	jal	ra,0000000023011F04
	sw	zero,s0,+000000B8

l230126BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; PrepDefaultEapolMsg: 230126C8
;;   Called from:
;;     23012766 (in GeneratePWKMsg1)
;;     2301280A (in GeneratePWKMsg3)
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
	jal	ra,0000000023013080
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,000000002301306C
	c.lwsp	a2,00000084
	c.mv	s4,a0
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,000000002300EF62
	c.mv	s1,a0
	c.beqz	a0,000000002301273A

l230126F8:
	c.lwsp	t3,00000044
	addi	a2,zero,+00000072
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lwsp	t3,00000044
	addi	a1,s0,+00000040
	addi	a2,s0,+00000046
	jal	ra,0000000023010784
	lw	a1,s2,+00000010
	lbu	a5,s2,+00000014
	c.lwsp	t3,00000044
	c.srli	a1,00000015
	c.andi	a5,00000008
	c.andi	a1,00000001
	c.li	a3,00000001
	c.bnez	a5,000000002301272E

l23012726:
	lbu	a3,s4,+00000008
	c.srli	a3,00000003
	c.andi	a3,00000001

l2301272E:
	c.li	a2,00000000
	jal	ra,0000000023011318
	c.lwsp	t3,000000E4
	sw	a5,s3,+00000000

l2301273A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; GeneratePWKMsg1: 2301274C
;;   Called from:
;;     23012990 (in GenerateApEapolMsg)
GeneratePWKMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.swsp	a1,00000084
	jal	ra,0000000023013080
	c.lwsp	a2,00000084
	c.mv	s0,a0
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,00000000230126C8
	c.beqz	a0,00000000230127F2

l2301276C:
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,000000002301277C

l23012776:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l2301277C:
	c.lw	s0,32(a4)
	addi	s1,s1,+000000A4
	addi	a1,zero,+00000020
	c.mv	a0,s1
	c.swsp	a5,0000008C
	c.swsp	a4,0000000C
	jal	ra,000000002301049A
	c.lwsp	s4,00000044
	c.lui	a2,00001000
	c.mv	a4,s1
	c.addi4spn	a3,00000018
	addi	a2,a2,-00000800
	addi	a1,s0,+00000014
	c.jal	0000000023012CAA
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
	jal	ra,000000002300EFF6
	c.li	a0,00000000

l230127E6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230127F2:
	c.li	a0,00000001
	c.j	00000000230127E6

;; GeneratePWKMsg3: 230127F6
;;   Called from:
;;     230129B8 (in GenerateApEapolMsg)
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
	jal	ra,00000000230126C8
	c.beqz	a0,0000000023012890

l23012810:
	c.mv	s1,a0
	c.mv	a0,s4
	jal	ra,0000000023013080
	c.mv	s0,a0
	c.mv	a0,s4
	jal	ra,000000002301306C
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,0000000023012830

l2301282A:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l23012830:
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
	c.jal	0000000023012CAA
	lhu	a5,s0,+00000012
	c.li	a3,00000000
	andi	a4,a5,+00000008
	c.bnez	a4,0000000023012876

l23012868:
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023012876

l2301286E:
	lui	a3,0004201D
	addi	a3,a3,+000000F8

l23012876:
	c.lwsp	tp,00000044
	c.li	a2,00000000
	addi	a1,s0,+00000012
	jal	ra,0000000023012FE4
	c.bnez	a0,0000000023012894

l23012884:
	c.lw	s1,8(a0)
	jal	ra,0000000023032272
	c.mv	a0,s1
	jal	ra,0000000023032272

l23012890:
	c.li	a0,00000001
	c.j	00000000230128D4

l23012894:
	lhu	a5,s0,+00000012
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230128B6

l2301289E:
	c.lwsp	tp,00000044
	addi	a2,s2,+00000008
	addi	a1,s2,+000000CC
	c.jal	0000000023012DB6
	c.lwsp	tp,00000044
	c.mv	a2,s3
	addi	a1,s0,+00000044
	c.jal	0000000023012EC4
	c.beqz	a0,0000000023012884

l230128B6:
	c.lwsp	tp,00000044
	lbu	a2,s0,+00000054
	addi	a1,s0,+00000034
	lbu	a3,a0,+00000014
	c.andi	a3,00000007
	jal	ra,00000000230108C0
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,000000002300EFF6
	c.li	a0,00000000

l230128D4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; ProcessPWKMsg4: 230128E4
;;   Called from:
;;     23012B38 (in ProcessKeyMgmtDataAp)
ProcessPWKMsg4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023013080
	c.mv	s1,a0
	addi	a1,a0,+00000034
	lw	a0,s2,+00000008
	jal	ra,000000002301080C
	c.beqz	a0,0000000023012954

l23012908:
	c.li	a5,00000001
	sb	a5,s0,+000000E8
	c.li	a1,00000001
	sb	zero,s0,+000000E9
	sb	zero,s0,+000000E4
	sb	zero,s0,+000000E5
	sb	zero,s0,+000000E6
	sb	zero,s0,+000000E7
	c.mv	a0,s0
	jal	ra,000000002300F8F0
	lbu	a0,s0,+00000001
	jal	ra,000000002300D72A
	lhu	a5,s1,+00000012
	sb	zero,s1,+00000018
	c.li	a0,00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023012948

l23012942:
	c.li	a5,0000000A
	sb	a5,s1,+00000016

l23012948:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23012954:
	c.li	a0,00000001
	c.j	0000000023012948

;; GenerateApEapolMsg: 23012958
;;   Called from:
;;     23012A50 (in ProcessPWKMsg2)
;;     23012A80 (in SendEAPOLMsgUsingBufDesc)
GenerateApEapolMsg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.swsp	a2,00000084
	jal	ra,0000000023013080
	andi	a5,s0,+00000001
	c.mv	s1,a0
	c.lwsp	a2,00000064
	c.bnez	a5,000000002301297C

l23012976:
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF

l2301297C:
	lbu	a4,s1,+0000000C
	sb	s0,s1,+00000016
	c.li	a5,00000001
	beq	a4,a5,00000000230129A2

l2301298A:
	bne	s0,a5,00000000230129B0

l2301298E:
	c.mv	a0,s2
	jal	ra,000000002301274C

l23012994:
	c.mv	s0,a0
	c.bnez	a0,00000000230129D2

l23012998:
	lbu	a5,s1,+00000016
	c.addi	a5,00000001
	sb	a5,s1,+00000016

l230129A2:
	lbu	a5,s1,+00000018
	c.li	s0,00000000
	c.addi	a5,00000001
	sb	a5,s1,+00000018
	c.j	00000000230129D2

l230129B0:
	c.li	a5,00000003
	bne	s0,a5,00000000230129BE

l230129B6:
	c.mv	a0,s2
	jal	ra,00000000230127F6
	c.j	0000000023012994

l230129BE:
	c.li	s0,00000001
	c.beqz	a1,00000000230129D2

l230129C2:
	c.lw	a1,8(a0)
	c.swsp	a1,00000084
	jal	ra,0000000023032272
	c.lwsp	a2,00000064
	c.mv	a0,a1
	jal	ra,0000000023032272

l230129D2:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; ProcessPWKMsg2: 230129E0
;;   Called from:
;;     23012B2A (in ProcessKeyMgmtDataAp)
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
	c.jal	0000000023013080
	c.mv	s2,a0
	c.mv	a0,s0
	c.jal	000000002301306C
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
	c.jal	0000000023012F78
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002301080C
	c.beqz	a0,0000000023012A54

l23012A2C:
	sb	zero,s2,+00000018
	lbu	a5,s1,+00000064
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi	a5,00000002
	lui	a4,0004200E
	sb	a5,a4,+00000CB4
	c.li	a2,00000000
	c.li	a1,00000003
	c.addi16sp	00000030
	jal	zero,0000000023012958

l23012A54:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000001
	c.addi16sp	00000030
	c.jr	ra

;; SendEAPOLMsgUsingBufDesc: 23012A64
;;   Called from:
;;     2301F012 (in apm_sta_add_cfm_handler)
SendEAPOLMsgUsingBufDesc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.jal	0000000023013080
	lbu	a1,a0,+00000016
	c.lwsp	a2,00000084
	c.li	a0,00000000
	andi	a4,a1,+00000001
	c.beqz	a4,0000000023012A86

l23012A7E:
	c.mv	a0,s0
	jal	ra,0000000023012958
	c.li	a0,00000001

l23012A86:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ProcessKeyMgmtDataAp: 23012A8E
;;   Called from:
;;     2301003A (in ProcessEAPoLPkt)
ProcessKeyMgmtDataAp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	0000000023013080
	lw	s2,s0,+00000008
	lbu	a5,s2,+00000005
	c.andi	a5,00000004
	c.beqz	a5,0000000023012AB8

l23012AAA:
	c.li	a0,00000001

l23012AAC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23012AB8:
	c.mv	s1,a0
	c.li	a2,00000004
	addi	a1,s2,+00000009
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	addi	a1,s2,+0000000D
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
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
	bne	a5,a4,0000000023012AAA

l23012AFE:
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
	bne	a4,a5,0000000023012AAA

l23012B1E:
	lbu	a5,s1,+00000016
	c.li	a4,00000002
	bne	a5,a4,0000000023012B30

l23012B28:
	c.mv	a0,s0
	jal	ra,00000000230129E0
	c.j	0000000023012AAC

l23012B30:
	c.li	a4,00000004
	bne	a5,a4,0000000023012AAA

l23012B36:
	c.mv	a0,s0
	jal	ra,00000000230128E4
	c.j	0000000023012AAC

;; InitStaKeyInfo: 23012B3E
;;   Called from:
;;     2300DDEC (in apm_assoc_req_handler)
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
	c.jal	0000000023013080
	addi	s1,a0,+00000010
	c.mv	s0,a0
	addi	a2,zero,+00000048
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	000000002301301C
	c.li	a5,00000001
	sb	a5,s0,+00000054
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; RemoveAPKeyInfo: 23012B86
;;   Called from:
;;     2301F324 (in apm_stop_req_handler)
RemoveAPKeyInfo proc
	lbu	a0,a0,+00000003
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023012B96

l23012B92:
	jal	zero,00000000230022CC

l23012B96:
	c.jr	ra

;; InitGroupKey: 23012B98
;;   Called from:
;;     2301F5D2 (in apm_start_req_handler)
InitGroupKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.jal	000000002301306C
	c.mv	s0,a0
	sw	zero,a0,+00000114
	sw	zero,a0,+00000118
	c.mv	a0,s1
	jal	ra,000000002301266A
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023012BE8

l23012BB8:
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
	jal	ra,000000002306D260
	c.addi	a0,00000001
	sw	a0,s0,+00000114
	sw	a0,s0,+00000118

l23012BE8:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002300F8F0
	c.lwsp	s0,00000004
	sb	a0,s1,+00000003
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,+00000548
	c.addi	sp,00000010
	jal	zero,0000000023052118

;; GenerateGTK_internal: 23012C0A
;;   Called from:
;;     23013018 (in ROM_InitGTK)
GenerateGTK_internal proc
	c.addi16sp	FFFFFF70
	c.swsp	s1,000000C0
	c.mv	s1,a1
	lui	a1,00023076
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,+0000055C
	c.li	a2,00000014
	c.addi4spn	a0,00000004
	c.swsp	ra,000000C4
	jal	ra,0000000023070C7C
	c.beqz	s0,0000000023012C9E

l23012C2C:
	c.beqz	s1,0000000023012C9E

l23012C2E:
	c.li	a2,00000006
	c.mv	a1,s2
	c.addi4spn	a0,00000058
	jal	ra,0000000023070C7C
	addi	a1,zero,+00000020
	c.mv	a0,s1
	jal	ra,000000002301049A
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,sp,+0000005E
	jal	ra,0000000023070C7C
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,000000002301049A
	c.addi4spn	a0,00000004
	jal	ra,000000002307132C
	c.mv	a3,a0
	addi	a7,zero,+00000020
	addi	a6,sp,+00000018
	addi	a5,zero,+00000026
	c.addi4spn	a4,00000058
	c.addi4spn	a2,00000004
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,00000000230201B6
	c.li	a2,00000010
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,00000028
	addi	a0,s0,+00000018
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	c.addi4spn	a1,00000030
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C

l23012C9E:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.addi16sp	00000090
	c.jr	ra

;; PopulateKeyMsg: 23012CAA
;;   Called from:
;;     230127A0 (in GeneratePWKMsg1)
;;     2301285A (in GeneratePWKMsg3)
PopulateKeyMsg proc
	beq	a0,zero,0000000023012DB4

l23012CAE:
	beq	a1,zero,0000000023012DB4

l23012CB2:
	lbu	a5,a1,+00000000
	andi	a1,a5,+00000004
	c.beqz	a1,0000000023012D96

l23012CBC:
	sb	zero,a0,+00000015
	addi	a5,zero,+00000020

l23012CC4:
	sb	a5,a0,+00000016

l23012CC8:
	lbu	a1,a0,+00000014
	ori	a5,a1,-00000080
	sb	a5,a0,+00000014
	slli	a5,a2,00000014
	bge	a5,zero,0000000023012DA2

l23012CDC:
	ori	a5,a1,-00000078
	sb	a5,a0,+00000014
	andi	a5,a2,+00000080
	c.beqz	a5,0000000023012D0E

l23012CEA:
	lbu	a5,a0,+00000013
	ori	a1,a1,-00000038
	c.srli	a2,0000000F
	ori	a5,a5,+00000001
	sb	a1,a0,+00000014
	andi	a5,a5,+000000ED
	slli	a1,a2,00000001
	c.or	a5,a1
	c.slli	a2,04

l23012D08:
	c.or	a2,a5
	sb	a2,a0,+00000013

l23012D0E:
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
	jal	zero,0000000023070C7C

l23012D96:
	c.andi	a5,00000008
	c.beqz	a5,0000000023012CC8

l23012D9A:
	sb	zero,a0,+00000015
	c.li	a5,00000010
	c.j	0000000023012CC4

l23012DA2:
	lbu	a5,a0,+00000013
	c.srli	a2,0000000F
	c.slli	a2,04
	andi	a5,a5,+000000EC
	ori	a5,a5,+00000003
	c.j	0000000023012D08

l23012DB4:
	c.jr	ra

;; prepareKDE: 23012DB6
;;   Called from:
;;     230128A8 (in GeneratePWKMsg3)
prepareKDE proc
	beq	a0,zero,0000000023012EC2

l23012DBA:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a1
	c.beqz	a1,0000000023012EB4

l23012DCA:
	c.beqz	a2,0000000023012EB4

l23012DCC:
	lbu	a5,a0,+0000006F
	addi	s1,a0,+00000071
	c.mv	s3,a2
	c.add	s1,a5
	addi	a5,zero,-00000023
	sb	a5,s1,+00000000
	c.li	a5,00000016
	sb	a5,s1,+00000001
	lui	a5,0002308E
	lbu	a4,a5,-0000026C
	addi	a5,a5,-0000026C
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
	jal	ra,0000000023070C7C
	lbu	a5,s3,+00000000
	addi	a0,s1,+00000018
	c.andi	a5,00000004
	c.beqz	a5,0000000023012E58

l23012E32:
	lbu	a5,s1,+00000001
	c.li	a2,00000008
	addi	a1,s0,+00000018
	c.addi	a5,00000010
	sb	a5,s1,+00000001
	jal	ra,0000000023070C7C
	c.li	a2,00000008
	addi	a1,s0,+00000010
	addi	a0,s1,+00000020
	jal	ra,0000000023070C7C
	addi	a0,s1,+00000028

l23012E58:
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
	c.beqz	s0,0000000023012EB4

l23012E84:
	addi	a5,zero,-00000023
	sb	a5,a0,+00000000
	addi	a2,s0,-00000001
	c.li	a1,00000000
	c.addi	a0,00000001
	jal	ra,0000000023070EB8
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

l23012EB4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23012EC2:
	c.jr	ra

;; Encrypt_keyData: 23012EC4
;;   Called from:
;;     230128B2 (in GeneratePWKMsg3)
Encrypt_keyData proc
	c.bnez	a0,0000000023012EDA

l23012EC6:
	c.li	a0,00000000
	c.jr	ra

l23012ECA:
	c.li	a0,00000000

l23012ECC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23012EDA:
	c.beqz	a1,0000000023012EC6

l23012EDC:
	c.beqz	a2,0000000023012EC6

l23012EDE:
	lbu	a5,a2,+00000000
	andi	a4,a5,+00000008
	c.beqz	a4,0000000023012F70

l23012EE8:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.li	a0,0000000C
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,000000002303218A
	c.mv	s1,a0
	c.beqz	a0,0000000023012ECA

l23012F02:
	addi	a0,zero,+00000190
	jal	ra,000000002303218A
	c.sw	s1,8(a0)
	c.mv	s2,a0
	c.beqz	a0,0000000023012ECA

l23012F10:
	c.mv	a1,s3
	c.li	a2,00000010
	c.mv	a0,sp
	jal	ra,0000000023070C7C
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
	jal	ra,000000002301FD1E
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
	jal	ra,0000000023070C7C
	c.lw	s1,8(a0)
	jal	ra,0000000023032272
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.li	a0,00000001
	c.j	0000000023012ECC

l23012F70:
	srli	a0,a5,00000002
	c.andi	a0,00000001
	c.jr	ra

;; KeyMgmtAp_DerivePTK: 23012F78
;;   Called from:
;;     23012A20 (in ProcessPWKMsg2)
KeyMgmtAp_DerivePTK proc
	c.addi16sp	FFFFFFD0
	c.lwsp	a6,000001D0
	c.swsp	s0,00000014
	c.mv	s0,a7
	c.swsp	t1,00000000
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,0000000023011216
	addi	s1,s0,+00000010
	c.mv	a1,s1
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	jal	ra,0000000023070C7C
	c.addi	s0,00000018
	c.mv	a1,s0
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; KeyData_CopyWPAWP2: 23012FB8
;;   Called from:
;;     23012FFE (in KeyData_UpdateKeyMaterial)
KeyData_CopyWPAWP2 proc
	c.beqz	a1,0000000023012FE0

l23012FBA:
	lbu	a2,a1,+00000001
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.addi	a2,00000002
	srli	a5,a2,00000008
	sb	a2,a0,+0000006F
	sb	a5,a0,+00000070
	addi	a0,a0,+00000071
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23012FE0:
	c.li	a0,00000000
	c.jr	ra

;; KeyData_UpdateKeyMaterial: 23012FE4
;;   Called from:
;;     2301287E (in GeneratePWKMsg3)
KeyData_UpdateKeyMaterial proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	c.mv	a1,a2
	andi	a4,a5,+00000018
	c.bnez	a4,0000000023012FFE

l23012FF4:
	andi	a5,a5,+00000020
	c.li	a4,00000001
	c.beqz	a5,0000000023013006

l23012FFC:
	c.mv	a1,a3

l23012FFE:
	jal	ra,0000000023012FB8
	sltu	a4,zero,a0

l23013006:
	c.lwsp	a2,00000020
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; ROM_InitGTK: 2301300E
;;   Called from:
;;     23012686 (in KeyMgmtInit)
ROM_InitGTK proc
	c.lui	a5,00010000
	c.addi	a5,00000001
	sw	zero,a0,+00000020
	c.sw	a0,36(a5)
	jal	zero,0000000023012C0A

;; InitKeyMgmtInfo: 2301301C
;;   Called from:
;;     23012B70 (in InitStaKeyInfo)
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
	jal	ra,0000000023070C7C
	c.li	a2,00000001
	c.mv	a1,s2
	addi	a0,s0,+00000004
	jal	ra,0000000023070C7C
	c.lwsp	s0,000000C4
	sb	a4,s0,+00000005
	lbu	a5,s1,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023013060

l2301305A:
	c.lwsp	a2,000000A4
	sh	a3,s0,+00000000

l23013060:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; cm_GetApInfo: 2301306C
;;   Called from:
;;     2300F984 (in add_key_to_mac)
;;     23012674 (in KeyMgmtInit)
;;     230126E4 (in PrepDefaultEapolMsg)
;;     2301281C (in GeneratePWKMsg3)
;;     230129F8 (in ProcessPWKMsg2)
;;     23012BA2 (in InitGroupKey)
;;     23021DFA (in ap_setpsk)
;;     23021E50 (in ap_resetConfiguration)
cm_GetApInfo proc
	c.beqz	a0,000000002301307E

l2301306E:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002301307C

l23013078:
	c.lw	a0,76(a0)
	c.jr	ra

l2301307C:
	c.li	a0,00000000

l2301307E:
	c.jr	ra

;; cm_GetApData: 23013080
;;   Called from:
;;     230126DC (in PrepDefaultEapolMsg)
;;     2301275A (in GeneratePWKMsg1)
;;     23012814 (in GeneratePWKMsg3)
;;     230128F4 (in ProcessPWKMsg4)
;;     23012968 (in GenerateApEapolMsg)
;;     230129F2 (in ProcessPWKMsg2)
;;     23012A6E (in SendEAPOLMsgUsingBufDesc)
;;     23012A9C (in ProcessKeyMgmtDataAp)
;;     23012B52 (in InitStaKeyInfo)
;;     230130A2 (in cm_AllocAPResources)
;;     2301319C (in cm_DeleteConnection)
;;     23021E58 (in ap_resetConfiguration)
cm_GetApData proc
	c.beqz	a0,0000000023013094

l23013082:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023013092

l2301308C:
	addi	a0,a0,+0000004C
	c.jr	ra

l23013092:
	c.li	a0,00000000

l23013094:
	c.jr	ra

;; cm_AllocAPResources: 23013096
;;   Called from:
;;     230130E6 (in cm_AllocResources)
cm_AllocAPResources proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a0
	jal	ra,0000000023013080
	c.lw	a0,4(a5)
	c.bnez	a5,00000000230130CE

l230130AA:
	c.mv	s1,a0
	c.li	a0,0000000C
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.li	a0,00000001
	c.beqz	s0,00000000230130D0

l230130B8:
	addi	a0,zero,+00000120
	jal	ra,000000002303218A
	c.sw	s0,8(a0)
	c.sw	s1,4(s0)
	c.lw	s0,8(a5)
	c.mv	a0,s2
	c.sw	s1,0(a5)
	jal	ra,0000000023021EDE

l230130CE:
	c.li	a0,00000000

l230130D0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; cm_AllocResources: 230130DC
;;   Called from:
;;     2301311C (in cm_InitConnection)
cm_AllocResources proc
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,00000000230130EA

l230130E6:
	jal	zero,0000000023013096

l230130EA:
	c.li	a0,00000000
	c.jr	ra

;; cm_InitConnection: 230130EE
;;   Called from:
;;     2301F58C (in apm_start_req_handler)
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
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.beqz	a0,000000002301312E

l2301310C:
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.mv	a0,s0
	sb	s3,s0,+00000000
	jal	ra,00000000230130DC
	c.li	a5,00000001
	bne	a0,a5,000000002301313E

l23013126:
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.li	s0,00000000

l2301312E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301313E:
	beq	s2,zero,000000002301314E

l23013142:
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000040
	jal	ra,0000000023070C7C

l2301314E:
	addi	s2,s0,+00000030
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,0000000023070EB8
	sb	zero,s0,+0000002C
	c.beqz	s1,000000002301312E

l23013170:
	c.mv	a1,s1
	c.li	a2,00000006
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,s0,+00000046
	jal	ra,0000000023070C7C
	c.j	000000002301312E

;; cm_DeleteConnection: 23013188
;;   Called from:
;;     2301F32C (in apm_stop_req_handler)
cm_DeleteConnection proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	c.mv	s1,a0
	bne	a4,a5,00000000230131BA

l2301319C:
	jal	ra,0000000023013080
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230131BA

l230131A6:
	c.lw	a5,8(a0)
	jal	ra,0000000023032272
	c.lw	s0,4(a0)
	jal	ra,0000000023032272
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000

l230131BA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; cm_SetPeerAddr: 230131C8
;;   Called from:
;;     2300DDF8 (in apm_assoc_req_handler)
cm_SetPeerAddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	c.beqz	a1,00000000230131E0

l230131D6:
	c.li	a2,00000006
	addi	a0,a0,+00000030
	jal	ra,0000000023070C7C

l230131E0:
	c.beqz	s1,00000000230131F6

l230131E2:
	addi	a0,s0,+00000040
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.li	a2,00000006
	c.addi	sp,00000010
	jal	zero,0000000023070C7C

l230131F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; cm_SetComData: 23013200
;;   Called from:
;;     2301F5A6 (in apm_start_req_handler)
cm_SetComData proc
	c.beqz	a1,000000002301323C

l23013202:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	sb	a0,s0,+0000002C
	addi	a2,zero,+00000020
	addi	a0,s0,+0000000C
	jal	ra,0000000023070C7C
	lbu	a0,s0,+0000002C
	c.li	a5,0000001F
	bltu	a5,a0,0000000023013234

l2301322E:
	c.add	s0,a0
	sb	zero,s0,+0000000C

l23013234:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2301323C:
	c.jr	ra

;; assert_rec: 2301323E
;;   Called from:
;;     23001BF6 (in hal_machw_rx_duration)
;;     230041BE (in rxl_mpdu_transfer)
;;     23004280 (in rxl_timer_int_handler)
;;     2300436A (in rxl_mpdu_free)
;;     2300443A (in rxl_cntrl_evt)
;;     23005BEC (in txl_payload_handle_backup)
;;     230063CA (in txl_frame_get)
;;     2300A42A (in rxu_cntrl_frame_handle)
;;     2301A82A (in hal_machw_idle_req)
;;     2301AF08 (in hal_machw_gen_handler)
;;     2301AF5E (in hal_machw_gen_handler)
;;     2301AF7C (in hal_machw_gen_handler)
;;     2301AFA2 (in hal_machw_gen_handler)
assert_rec proc
	lui	a5,0004200E
	lbu	a4,a5,-00000358
	c.li	a5,00000001
	bne	a4,a5,000000002301327C

l2301324C:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201C
	lw	a5,a5,-000003A8
	blt	a5,zero,0000000023013276

l2301325C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301ACCE
	lui	a0,00080000
	jal	ra,000000002300E49C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23013276:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l2301327C:
	c.jr	ra

;; assert_err: 2301327E
;;   Called from:
;;     23001AFA (in blmac_encr_cntrl_pack.constprop.8)
;;     23001B1C (in blmac_encr_cntrl_pack.constprop.8)
;;     23001BA0 (in hal_machw_rx_duration)
;;     23001DC6 (in mm_tbtt_evt)
;;     2300226A (in mm_sec_machwkey_wr)
;;     230022C2 (in mm_sec_machwkey_wr)
;;     230024FC (in mm_back_to_host_idle)
;;     23003270 (in mm_bcn_transmit)
;;     2300365E (in mm_bcn_transmitted)
;;     23003882 (in mm_timer_schedule)
;;     23004A7C (in rxl_hd_append)
;;     23004AF4 (in rxl_pd_append)
;;     230056B8 (in blmac_abs_timer_set)
;;     23005858 (in txl_cntrl_halt_ac)
;;     23005EFC (in txl_transmit_trigger)
;;     230064C8 (in txl_frame_push)
;;     23006530 (in txl_frame_push_force)
;;     230069B8 (in txl_frame_send_eapol_frame)
;;     23007784 (in me_mic_end)
;;     23007A22 (in me_init_bcmc_rate)
;;     23007E2C (in me_beacon_check)
;;     23007EFC (in me_sta_bw_nss_max_upd)
;;     23008666 (in rc_update_counters)
;;     230086C8 (in rc_update_counters)
;;     2300881E (in rc_update_bw_nss_max)
;;     23008852 (in rc_update_bw_nss_max)
;;     23008876 (in rc_update_bw_nss_max)
;;     23008E7C (in rc_init)
;;     23008F1A (in rc_init)
;;     23008F6A (in rc_init)
;;     23008FA0 (in rc_init)
;;     2300900E (in rc_init)
;;     23009052 (in rc_init)
;;     2300907A (in rc_init)
;;     230090E2 (in rc_init)
;;     23009118 (in rc_init)
;;     2300914C (in rc_init)
;;     230091FA (in rc_init)
;;     23009446 (in rc_check)
;;     2300B9E4 (in sm_send_next_bss_param)
;;     2300CEC8 (in txu_cntrl_cfm)
;;     2300D26A (in apm_send_next_bss_param)
;;     2300E2A4 (in co_list_push_back)
;;     2300E2E6 (in co_list_push_front)
;;     2300E32C (in co_list_extract)
;;     2300E402 (in co_list_remove)
;;     2300E422 (in co_list_remove)
;;     2300E450 (in co_list_remove)
;;     2300E59A (in ke_evt_schedule)
;;     2300E630 (in ke_malloc)
;;     2300E65C (in ke_malloc)
;;     2300E6CE (in ke_free)
;;     2300E736 (in ke_free)
;;     2300E79E (in ke_msg_alloc)
;;     2300E800 (in ke_msg_send)
;;     2300E892 (in ke_task_local)
;;     2300E8EE (in ke_handler_search)
;;     2300E936 (in ke_state_set)
;;     2300E956 (in ke_state_set)
;;     2300E986 (in ke_state_set)
;;     2300E9AA (in ke_state_set)
;;     2300EA2E (in ke_state_get)
;;     2300EA4E (in ke_state_get)
;;     2300EA7E (in ke_state_get)
;;     2300EAEA (in ke_task_schedule)
;;     2300EB0A (in ke_task_schedule)
;;     2300EB3A (in ke_task_schedule)
;;     2300EB56 (in ke_task_schedule)
;;     2300EBDE (in ke_task_schedule)
;;     2300ECB2 (in ke_timer_set)
;;     2300ED1A (in ke_timer_set)
;;     2300EE14 (in ke_timer_clear)
;;     2300FA16 (in add_key_to_mac)
;;     230134F6 (in ipc_emb_notify)
;;     230135A2 (in ipc_emb_init)
;;     230138FE (in ipc_emb_msg_evt)
;;     23013958 (in ipc_emb_msg_evt)
;;     23013968 (in ipc_emb_msg_evt)
;;     230139E6 (in mdm_txcbwmax_setf)
;;     23013FD0 (in phy_hw_set_channel)
;;     23013FEC (in phy_hw_set_channel)
;;     23014232 (in phy_init)
;;     23014278 (in phy_init)
;;     2301433C (in phy_init)
;;     23014382 (in phy_init)
;;     23018E9E (in intc_spurious)
;;     23018F92 (in mac_irq)
;;     23018FE2 (in blmac_pwr_mgt_setf)
;;     2301907E (in chan_get_next_chan)
;;     2301910A (in chan_get_next_chan)
;;     23019214 (in chan_tbtt_insert)
;;     2301927A (in chan_tbtt_insert)
;;     23019432 (in chan_conn_less_delay_evt)
;;     23019478 (in chan_conn_less_delay_evt)
;;     23019AFA (in chan_tx_cfm)
;;     23019D7A (in chan_scan_req)
;;     2301A05C (in chan_ctxt_del)
;;     2301A084 (in chan_ctxt_del)
;;     2301A2A0 (in chan_bcn_detect_start)
;;     2301A496 (in chan_ctxt_link)
;;     2301A4C4 (in chan_ctxt_link)
;;     2301A59E (in chan_ctxt_unlink)
;;     2301A7C2 (in blmac_soft_reset_getf)
;;     2301A93A (in hal_machw_init)
;;     2301A9F4 (in hal_machw_init)
;;     2301AACC (in hal_machw_init)
;;     2301AB26 (in hal_machw_init)
;;     2301AB7C (in hal_machw_init)
;;     2301ABCE (in hal_machw_init)
;;     2301AC96 (in hal_machw_init)
;;     2301AE94 (in hal_machw_sleep_check)
;;     2301B380 (in mm_cfg_rssi_req_handler)
;;     2301B3F8 (in mm_set_ps_options_req_handler)
;;     2301B53C (in mm_key_del_req_handler)
;;     2301B598 (in mm_key_add_req_handler)
;;     2301B5BC (in mm_key_add_req_handler)
;;     2301B5DE (in mm_key_add_req_handler)
;;     2301B6E6 (in mm_set_idle_req_handler)
;;     2301B7BE (in mm_start_req_handler)
;;     2301B8CC (in mm_force_idle_req_handler)
;;     2301B934 (in mm_hw_config_handler)
;;     2301B974 (in mm_hw_config_handler)
;;     2301BACC (in mm_hw_config_handler)
;;     2301BCB0 (in mm_hw_config_handler)
;;     2301C100 (in scan_start_req_handler)
;;     2301C166 (in mm_scan_channel_end_ind_handler)
;;     2301C228 (in mm_scan_channel_start_ind_handler)
;;     2301C5EA (in txl_cfm_evt)
;;     2301D35E (in me_extract_rate_set)
;;     2301DD58 (in me_rc_set_rate_req_handler)
;;     2301E0C0 (in mm_set_ps_mode_cfm_handler)
;;     2301E11A (in mm_set_idle_cfm_handler)
;;     2301E6DE (in scanu_join_req_handler)
;;     2301E79A (in me_set_ps_disable_cfm_handler)
;;     2301E7DA (in mm_bss_param_setting_handler)
;;     2301E83E (in scanu_start_cfm_handler)
;;     2301E8F8 (in scanu_join_cfm_handler)
;;     2301EAA4 (in sm_connect_req_handler)
;;     2301EAC2 (in sm_connect_req_handler)
;;     2301EB84 (in sm_connect_req_handler)
;;     2301EBAE (in sm_connect_req_handler)
;;     2301ED94 (in me_set_active_cfm_handler)
;;     2301EE1E (in mm_sta_add_cfm_handler)
;;     2301F230 (in me_set_ps_disable_cfm_handler)
;;     2301F270 (in mm_bss_param_setting_handler)
;;     2301F2A4 (in mm_bcn_change_cfm_handler)
;;     2301F3DA (in apm_start_req_handler)
;;     2301F6D6 (in me_set_active_cfm_handler)
;;     2301F704 (in me_set_active_cfm_handler)
;;     2301F964 (in dbg_test_print)
assert_err proc
	c.j	000000002301327E

;; assert_warn: 23013280
;;   Called from:
;;     23007994 (in me_legacy_rate_bitfield_build)
;;     230098AA (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     23009D1C (in rxu_mgt_frame_check)
;;     2300C2EC (in sm_auth_handler)
;;     2300D5C8 (in apm_tx_int_ps_get_postpone)
;;     230196CE (in chan_cde_evt)
;;     2301C874 (in bam_send_air_action_frame)
assert_warn proc
	c.jr	ra

;; coex_dump_pta: 23013282
;;   Called from:
;;     23001A38 (in cmd_coex_dump)
coex_dump_pta proc
	lui	a5,00044920
	c.lw	a5,4(a5)
	c.jr	ra

;; coex_dump_wifi: 2301328A
;;   Called from:
;;     23001A40 (in cmd_coex_dump)
coex_dump_wifi proc
	lui	a5,00044B00
	lw	a4,a5,+00000400
	lw	a4,a5,+00000404
	lw	a5,a5,+00000408
	c.jr	ra

;; coex_wifi_rf_forece_enable: 2301329C
;;   Called from:
;;     230277CE (in cmd_wifi_coex_rf_force_off)
;;     230277D4 (in cmd_wifi_coex_rf_force_on)
coex_wifi_rf_forece_enable proc
	c.li	a1,00000000
	c.beqz	a0,00000000230132A2

l230132A0:
	c.li	a0,00000001

l230132A2:
	jal	zero,00000000230157B4

;; coex_wifi_pti_forece_enable: 230132A6
;;   Called from:
;;     230277C2 (in cmd_wifi_coex_pti_force_off)
;;     230277C8 (in cmd_wifi_coex_pti_force_on)
coex_wifi_pti_forece_enable proc
	lui	a5,00044B00
	lw	a4,a5,+00000400
	c.beqz	a0,00000000230132E6

l230132B0:
	lui	a3,000F0000
	c.or	a4,a3
	sw	a4,a5,+00000400
	lw	a4,a5,+00000400
	ori	a4,a4,+00000010

l230132C2:
	sw	a4,a5,+00000400
	lw	a2,a5,+00000400
	lui	a4,000FC000
	addi	a3,a4,-00000001
	slli	a4,a2,00000004
	bge	a4,zero,00000000230132EA

l230132DA:
	lw	a4,a5,+00000400
	c.and	a4,a3

l230132E0:
	sw	a4,a5,+00000400
	c.jr	ra

l230132E6:
	c.andi	a4,FFFFFFEF
	c.j	00000000230132C2

l230132EA:
	lw	a4,a5,+00000400
	c.and	a4,a3
	lui	a3,00004000
	c.or	a4,a3
	c.j	00000000230132E0

;; coex_wifi_pta_forece_enable: 230132F8
;;   Called from:
;;     230134C0 (in wifi_main)
;;     230277B6 (in cmd_wifi_coex_pta_force_off)
;;     230277BC (in cmd_wifi_coex_pta_force_on)
coex_wifi_pta_forece_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	lw	a5,s1,-000006FC
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,a0,0000000023013342

l23013312:
	lui	s0,0004200E
	addi	s1,s1,-000006FC
	c.mv	s2,a0
	addi	s0,s0,-0000033C
	c.bnez	a5,0000000023013352

l23013322:
	jal	ra,00000000230302E8
	lui	a4,0004200E
	addi	a4,a4,-00000344
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)

l23013338:
	sw	s2,s1,+00000000
	jal	ra,00000000230302E8
	c.sw	s0,0(a0)

l23013342:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23013352:
	c.li	a4,00000001
	bne	a5,a4,0000000023013338

l23013358:
	jal	ra,00000000230302E8
	lui	a4,0004200E
	addi	a4,a4,-00000340
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)
	csrrci	zero,mstatus,00000008
	jal	ra,000000002301BFAC
	c.mv	s4,a0
	csrrsi	zero,mstatus,00000008
	addi	s3,zero,+000003E8
	bgeu	s3,a0,0000000023013338

l23013384:
	auipc	ra,0001EFF9
	jalr	ra,ra,+00000164
	srl	a0,s4,s3
	jal	ra,0000000023030630
	auipc	ra,0001EFF9
	jalr	ra,ra,+0000015E
	c.j	0000000023013338

;; wifi_main: 2301339E
wifi_main proc
	lui	a0,00002626
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000600
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s0,00044B00
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	jal	ra,000000002301503E
	lw	a5,s0,+00000400
	lui	s2,00044B00
	lui	s3,0004201C
	ori	a5,a5,+00000001
	sw	a5,s0,+00000400
	jal	ra,0000000023014608
	jal	ra,0000000023018E6A
	jal	ra,0000000023018EB8
	c.jal	0000000023013548
	jal	ra,000000002301BEB8
	lui	a5,0000024F
	addi	a5,a5,+00000037
	sw	a5,s0,+00000404
	c.li	a5,00000001
	sw	a5,s0,+00000400
	sw	zero,s0,+00000400
	addi	a5,zero,+00000069
	sw	a5,s0,+00000400
	lw	a5,s0,+00000400
	lui	a4,00044920
	lui	s4,0004200E
	andi	a5,a5,-00000021
	sw	a5,s0,+00000400
	lui	a5,00050100
	c.addi	a5,0000001F
	c.sw	a4,4(a5)
	lui	s0,00044900
	lui	s5,00040007
	lui	s1,00040000
	lui	s6,000005C2

l23013430:
	lw	a5,s2,+00000120
	slli	a4,a5,0000000C
	lw	a5,s0,+00000084
	bge	a4,zero,00000000230134C6

l23013440:
	ori	a5,a5,+00000001

l23013444:
	sw	a5,s0,+00000084
	addi	a5,s3,-000003A8
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023013452

l23013450:
	c.jal	0000000023013528

l23013452:
	addi	a4,s4,-00000348
	c.lw	a4,0(a5)
	addi	a3,a5,+00000001
	c.sw	a4,0(a3)
	c.andi	a5,0000000F
	c.bnez	a5,00000000230134B4

l23013462:
	lw	a5,s5,+00000018
	c.srli	a5,00000018
	andi	a4,a5,+00000007
	c.beqz	a4,0000000023013496

l2301346E:
	c.li	a3,00000003
	beq	a4,a3,000000002301347E

l23013474:
	c.lw	s1,20(a3)
	lui	a2,00000040
	c.or	a3,a2
	c.sw	s1,20(a3)

l2301347E:
	c.beqz	a4,0000000023013496

l23013480:
	c.li	a3,00000003
	beq	a4,a3,0000000023013496

l23013486:
	lui	a4,00040002
	c.lw	a4,64(a3)
	c.andi	a3,FFFFFFFC
	c.sw	a4,64(a3)
	c.lw	a4,68(a3)
	c.andi	a3,FFFFFFFE
	c.sw	a4,68(a3)

l23013496:
	c.andi	a5,00000004
	c.beqz	a5,00000000230134B4

l2301349A:
	c.lw	s1,20(a5)
	lui	a4,00040010
	or	a5,a5,s6
	c.sw	s1,20(a5)
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sw	a5,a4,+0000090C

l230134B4:
	jal	ra,000000002300E52E
	jal	ra,000000002301BF4A
	c.beqz	a0,00000000230134CA

l230134BE:
	c.li	a0,00000000

l230134C0:
	jal	ra,00000000230132F8
	c.j	0000000023013430

l230134C6:
	c.andi	a5,FFFFFFFE
	c.j	0000000023013444

l230134CA:
	c.li	a0,00000001
	c.j	00000000230134C0

;; ipc_emb_notify: 230134CE
;;   Called from:
;;     23018F9E (in mac_irq)
;;     23018FB8 (in bl_irq_handler)
ipc_emb_notify proc
	lui	a5,0004200E
	lw	a4,a5,-00000338
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	s0,a5,-00000338
	c.bnez	a4,00000000230134FA

l230134E2:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000093
	addi	a1,a1,+000002DC
	addi	a0,a0,+000005F0
	jal	ra,000000002301327E

l230134FA:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.lw	s0,0(a0)
	c.beqz	a5,000000002301351C

l23013506:
	c.addi4spn	a1,0000000C
	jal	ra,000000002303153C
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023013514

l23013510:
	jal	ra,0000000023030672

l23013514:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2301351C:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,00000000230312F2
	c.j	0000000023013514

;; ipc_emb_wait: 23013528
;;   Called from:
;;     23013450 (in wifi_main)
ipc_emb_wait proc
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002303116C
	lui	a4,0004201D
	lw	a5,a4,+00000114
	c.lwsp	a2,00000020
	c.addi	a5,00000001
	sw	a5,a4,+00000114
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_init: 23013548
;;   Called from:
;;     230133E0 (in wifi_main)
ipc_emb_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023030D24
	lui	a5,0004200E
	lui	s0,0004201D
	sw	a0,a5,+00000CC8
	addi	a2,zero,+00000020
	addi	a0,s0,+00000118
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	lui	a5,00042042
	addi	a5,a5,+00000204
	addi	s0,s0,+00000118
	c.sw	s0,28(a5)
	lui	a5,00044800
	lw	a4,a5,+00000140
	lui	a5,00049504
	addi	a5,a5,+00000332
	beq	a4,a5,00000000230135A6

l2301358E:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000BB
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000584
	jal	ra,000000002301327E

l230135A6:
	lui	a5,00044800
	sw	zero,a5,+00000114
	sw	zero,a5,+00000118
	lw	a4,a5,+00000114
	c.lui	a3,FFFFF000
	addi	a3,a3,+000003FF
	c.andi	a4,FFFFFFFC
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	lui	a2,000FFFD0
	c.addi	a2,FFFFFFFF
	c.andi	a4,FFFFFFF3
	ori	a4,a4,+00000004
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	andi	a4,a4,-00000301
	ori	a4,a4,+00000200
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	c.and	a4,a3
	c.lui	a3,00001000
	addi	a3,a3,-00000800
	c.or	a4,a3
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	c.lui	a3,FFFFD000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.lui	a3,00002000
	c.or	a4,a3
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	addi	a3,a3,-000000FD
	c.and	a4,a2
	lui	a2,00000030
	c.or	a4,a2
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	lui	a2,000FFF40
	c.addi	a2,FFFFFFFF
	c.and	a4,a2
	lui	a2,000000C0
	c.or	a4,a2
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	lui	a2,000FFD00
	c.addi	a2,FFFFFFFF
	c.and	a4,a2
	lui	a2,00000300
	c.or	a4,a2
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	lui	a2,000FF400
	c.addi	a2,FFFFFFFF
	c.and	a4,a2
	lui	a2,00000C00
	c.or	a4,a2
	sw	a4,a5,+00000114
	lw	a4,a5,+00000114
	lui	a2,000FD000
	c.addi	a2,FFFFFFFF
	c.and	a4,a2
	lui	a2,00003000
	c.or	a4,a2
	sw	a4,a5,+00000114
	sw	a3,a5,+0000010C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_tx_irq: 23013682
ipc_emb_tx_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,00044800
	lw	s0,s1,+0000011C
	c.lui	a5,00002000
	addi	a5,a5,-00000100
	c.and	s0,a5
	c.beqz	s0,00000000230136AC

l2301369C:
	srli	a0,s0,00000001
	jal	ra,000000002300E49C
	sw	s0,s1,+00000110
	sw	s0,s1,+00000108

l230136AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_tx_evt: 230136B6
ipc_emb_tx_evt proc
	lui	a5,00023076
	c.slli	a0,02
	addi	a5,a5,+00000570
	c.addi16sp	FFFFFFD0
	c.add	a5,a0
	c.swsp	s2,00000010
	lw	s2,a5,+00000000
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	a0,s2
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	lui	s8,0004201D
	c.swsp	s9,00000080
	jal	ra,000000002300E4B4
	addi	a5,s8,+00000118
	c.lw	a5,24(s0)
	lw	s4,a5,+0000001C
	addi	a5,zero,+00000330
	c.andi	s0,00000003
	add	s0,s0,a5
	c.lui	s1,00001000
	addi	s1,s1,-00000800
	lui	s3,00000441
	addi	s8,s8,+00000118
	c.li	s5,FFFFFFFF
	and	s1,s2,s1
	lui	s6,0004201C
	addi	s3,s3,-00000800
	lui	s7,00044800
	c.add	s0,s4

l2301371E:
	c.lw	s0,0(a5)
	beq	a5,s5,000000002301374A

l23013724:
	lui	a5,00044800
	addi	a4,zero,+00000100
	sw	a4,a5,+0000010C
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

l2301374A:
	c.bnez	s1,0000000023013776

l2301374C:
	addi	a5,s6,-000003A8
	c.lw	a5,0(a5)
	and	a5,a5,s3
	c.beqz	a5,0000000023013776

l23013758:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	jal	zero,000000002300E49C

l23013776:
	addi	a5,zero,+00000100
	addi	s9,s0,+00000054
	sw	a5,s7,+00000108
	addi	a2,zero,+000002CC
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,0000000023070EB8
	addi	a5,s0,+0000010C
	sw	a5,s0,+000000C4
	addi	a5,s0,+000000C4
	sw	a5,s0,+000000C0
	addi	a5,s0,+00000004

l230137A2:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.sw	a5,80(a4)
	bne	s9,a5,00000000230137A2

l230137AC:
	lw	a5,s0,+000000C0
	sw	zero,s0,+000000B8
	c.li	a1,00000000
	c.lw	a5,0(a5)
	c.mv	a0,s9
	sw	zero,a5,+00000010
	sw	zero,s0,+000000F0
	sw	zero,s0,+000000F4
	sw	zero,s0,+000000F8
	sw	zero,s0,+000000A8
	jal	ra,000000002300CB86
	c.li	a5,00000001
	c.sw	s0,0(a5)
	lw	s0,s8,+00000018
	addi	a5,zero,+00000330
	c.addi	s0,00000001
	sw	s0,s8,+00000018
	c.andi	s0,00000003
	add	s0,s0,a5
	c.add	s0,s4
	c.j	000000002301371E

;; ipc_emb_cfmback_irq: 230137EE
ipc_emb_cfmback_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044800
	lw	s0,a5,+0000011C
	andi	a4,s0,+00000020
	c.beqz	a4,0000000023013816

l23013802:
	addi	a4,zero,+00000020
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	lui	a0,00000040
	jal	ra,000000002300E49C

l23013816:
	c.andi	s0,00000010
	c.beqz	s0,0000000023013836

l2301381A:
	lui	a5,00044800
	c.li	a4,00000010
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00000080
	c.addi	sp,00000010
	jal	zero,000000002300E49C

l23013836:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_txcfm_ind: 2301383E
;;   Called from:
;;     2301C626 (in txl_cfm_evt)
;;     2301C6BC (in txl_cfm_flush)
ipc_emb_txcfm_ind proc
	c.slli	a0,07
	lui	a5,00044800
	sw	a0,a5,+00000100
	c.jr	ra

;; ipc_emb_msg_irq: 2301384A
ipc_emb_msg_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00044800
	lw	a5,s0,+0000011C
	c.andi	a5,00000002
	c.beqz	a5,000000002301386A

l2301385C:
	lui	a0,00002000
	jal	ra,000000002300E49C
	c.li	a5,00000002
	sw	a5,s0,+00000110

l2301386A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_msg_evt: 23013872
ipc_emb_msg_evt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s7,00000084
	lui	a5,00044800
	lw	a5,a5,+00000104
	lui	s1,00042042
	lui	s2,0004201D
	addi	s1,s1,+00000000
	lui	s3,00023074
	lui	s4,00023076
	addi	s2,s2,+00000118
	lui	s5,00023076
	lui	s6,00023076

l230138AE:
	c.andi	a5,00000002
	c.bnez	a5,00000000230138DA

l230138B2:
	lui	a0,00002000
	jal	ra,000000002300E4B4
	lui	a5,00044800
	c.li	a4,00000002
	sw	a4,a5,+0000010C
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

l230138DA:
	lui	a5,00044800
	c.li	a4,00000002
	sw	a4,a5,+00000108
	lhu	a0,s1,+0000000A
	c.addi	a0,0000000C
	jal	ra,000000002300E602
	c.mv	s0,a0
	c.bnez	a0,0000000023013902

l230138F2:
	addi	a2,zero,+000001D9
	addi	a1,s3,+000002DC
	addi	a0,s4,+000005B8
	jal	ra,000000002301327E

l23013902:
	sw	zero,s0,+00000000
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000004
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000006
	c.li	a5,0000000D
	sh	a5,s0,+00000008
	lhu	a5,s1,+0000000A
	sh	a5,s0,+0000000A
	c.li	a5,0000000C

l23013926:
	lhu	a3,s0,+0000000A
	addi	a4,a5,-0000000C
	blt	a4,a3,000000002301396E

l23013932:
	lbu	a5,s2,+00000015
	addi	a4,a5,+00000001
	sb	a4,s2,+00000015
	sh	a5,s1,+00000008
	lhu	a5,s0,+00000006
	c.li	a4,0000000E
	bgeu	a4,a5,000000002301397E

l2301394C:
	addi	a2,zero,+000000B6
	addi	a1,s3,+000002DC
	addi	a0,s6,-0000048C
	jal	ra,000000002301327E

l2301395C:
	addi	a2,zero,+000001ED
	addi	a1,s3,+000002DC
	addi	a0,s5,+000005CC
	jal	ra,000000002301327E
	c.j	0000000023013984

l2301396E:
	add	a4,s1,a5
	c.lw	a4,0(a3)
	add	a4,s0,a5
	c.addi	a5,00000004
	c.sw	a4,0(a3)
	c.j	0000000023013926

l2301397E:
	c.li	a4,0000000C
	bltu	a4,a5,000000002301395C

l23013984:
	c.li	a5,00000004
	lui	s7,00044800
	sw	a5,s7,+00000100
	addi	a0,s0,+0000000C
	jal	ra,000000002300E7D4
	lw	a5,s7,+00000104
	c.j	00000000230138AE

;; ipc_emb_msg_dma_int_handler: 2301399C
ipc_emb_msg_dma_int_handler proc
	c.jr	ra

;; ipc_emb_dbg_dma_int_handler: 2301399E
ipc_emb_dbg_dma_int_handler proc
	lui	a5,00044A00
	addi	a4,zero,+00000080
	c.sw	a5,32(a4)
	lui	a5,00044800
	c.li	a4,00000001
	sw	a4,a5,+00000100
	c.jr	ra

;; ipc_emb_dump: 230139B4
;;   Called from:
;;     2300E4FC (in bl_fw_statistic_dump)
ipc_emb_dump proc
	c.jr	ra

;; rf_set_channel: 230139B6
;;   Called from:
;;     230140AC (in phy_hw_set_channel)
rf_set_channel proc
	c.mv	a0,a1
	jal	zero,0000000023015672

;; rf_dump_status: 230139BC
;;   Called from:
;;     23007A8A (in me_tx_cfm_singleton)
rf_dump_status proc
	c.jr	ra

;; mdm_txcbwmax_setf: 230139BE
;;   Called from:
;;     23014092 (in phy_hw_set_channel)
;;     230143A6 (in phy_init)
mdm_txcbwmax_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a5,000FC000
	slli	s0,a0,00000018
	c.swsp	ra,00000084
	c.and	a5,s0
	c.beqz	a5,00000000230139EA

l230139D0:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,a2,-000004A8
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000608
	jal	ra,000000002301327E

l230139EA:
	lui	a4,00044C01
	lw	a0,a4,-000007DC
	lui	a5,000FD000
	c.addi	a5,FFFFFFFF
	c.and	a0,a5
	c.or	a0,s0
	sw	a0,a4,+00000824
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_config_rxgain: 23013A08
;;   Called from:
;;     23013E7E (in agc_config)
;;     23014DA0 (in phy_tcal_handle)
phy_config_rxgain proc
	lui	a4,0004200E
	addi	a4,a4,-000006F4
	lb	a5,a4,+00000000
	beq	a5,a0,0000000023013B24

l23013A18:
	c.slli	a0,18
	c.srai	a0,00000018
	sb	a0,a4,+00000000
	lui	a5,00044C0C
	lw	a3,a5,+00000080
	c.addi	a0,00000003
	andi	a0,a0,+000000FF
	andi	a3,a3,-00000100
	c.or	a0,a3
	sw	a0,a5,+00000080
	lw	a3,a5,+00000080
	c.lui	t1,FFFF0000
	addi	t1,t1,+000000FF
	and	a1,a3,t1
	lb	a3,a4,+00000000
	c.lui	a2,00010000
	addi	a7,a2,-00000001
	c.addi	a3,0000000B
	c.slli	a3,08
	and	a3,a3,a7
	c.or	a3,a1
	sw	a3,a5,+00000080
	lw	a1,a5,+00000080
	lui	a6,000FF010
	c.addi	a6,FFFFFFFF
	and	a3,a1,a6
	lb	a1,a4,+00000000
	lui	t3,00000FF0
	lui	a0,00001000
	c.addi	a1,00000012
	c.slli	a1,10
	and	a1,a1,t3
	c.or	a1,a3
	sw	a1,a5,+00000080
	lw	a1,a5,+00000080
	c.addi	a0,FFFFFFFF
	and	a3,a1,a0
	lb	a1,a4,+00000000
	c.addi	a1,00000019
	c.slli	a1,18
	c.or	a1,a3
	sw	a1,a5,+00000080
	lw	a1,a5,+00000084
	andi	a3,a1,-00000100
	lb	a1,a4,+00000000
	addi	a1,a1,+00000020
	andi	a1,a1,+000000FF
	c.or	a1,a3
	sw	a1,a5,+00000084
	lw	a2,a5,+00000084
	and	t1,a2,t1
	lb	a2,a4,+00000000
	addi	a2,a2,+00000027
	c.slli	a2,08
	and	a2,a2,a7
	or	a2,a2,t1
	sw	a2,a5,+00000084
	lw	a3,a5,+00000084
	and	a6,a3,a6
	lb	a3,a4,+00000000
	addi	a3,a3,+0000002D
	c.slli	a3,10
	and	a3,a3,t3
	or	a3,a3,a6
	sw	a3,a5,+00000084
	lw	a3,a5,+00000084
	c.and	a0,a3
	lb	a3,a4,+00000000
	addi	a3,a3,+00000035
	c.slli	a3,18
	c.or	a3,a0
	sw	a3,a5,+00000084
	lb	a4,a4,+00000000
	lw	a3,a5,+00000088
	addi	a4,a4,+0000003B
	andi	a3,a3,-00000100
	andi	a4,a4,+000000FF
	c.or	a4,a3
	sw	a4,a5,+00000088

l23013B24:
	c.jr	ra

;; agc_config: 23013B26
;;   Called from:
;;     230144C6 (in phy_init)
agc_config proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s0,00044C0B
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	a5,s0,+00000390
	c.lui	s2,FFFF0000
	addi	a4,s2,-00000001
	c.and	a5,a4
	sw	a5,s0,+00000390
	lw	a5,s0,+00000390
	addi	s2,s2,+000000FF
	lui	a3,000FF010
	andi	a5,a5,-00000401
	sw	a5,s0,+00000390
	lw	a5,s0,+000003A4
	c.addi	a3,FFFFFFFF
	lui	a4,00000F80
	andi	a5,a5,-00000100
	sw	a5,s0,+000003A4
	lw	a5,s0,+000003A4
	c.lui	s4,0000A000
	lui	a7,00003700
	and	a5,a5,s2
	sw	a5,s0,+000003A4
	lw	a5,s0,+00000394
	lui	a2,00004000
	addi	a0,a2,-00000001
	c.and	a5,a3
	c.or	a5,a4
	sw	a5,s0,+00000394
	lw	a5,s0,+00000398
	addi	a4,s4,-00000200
	lui	s1,00044C0D
	and	a5,a5,s2
	c.or	a5,a4
	sw	a5,s0,+00000398
	lw	a5,s0,+000003C4
	addi	s4,s4,+00000300
	andi	a5,a5,-00000100
	ori	a5,a5,+000000CE
	sw	a5,s0,+000003C4
	lw	a4,s0,+00000364
	lui	a5,000E1000
	c.addi	a5,FFFFFFFF
	c.and	a4,a5
	lui	a5,00008000
	c.or	a4,a5
	sw	a4,s0,+00000364
	lw	a4,s0,+00000364
	lui	a5,000FFC10
	c.addi	a5,FFFFFFFF
	c.and	a4,a5
	lui	a5,000003C0
	c.or	a4,a5
	sw	a4,s0,+00000364
	lw	a4,s0,+00000364
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	c.and	a4,a5
	c.lui	a5,00004000
	addi	a5,a5,-00000800
	c.or	a4,a5
	sw	a4,s0,+00000364
	lw	a4,s0,+00000364
	lui	a5,000FFC01
	c.addi	a5,FFFFFFFF
	andi	a4,a4,-00000040
	ori	a4,a4,+00000039
	sw	a4,s0,+00000364
	lw	a4,s0,+00000368
	c.and	a4,a5
	lui	a5,00000070
	c.or	a4,a5
	sw	a4,s0,+00000368
	lw	a4,s0,+00000368
	andi	a4,a4,-00000400
	ori	a4,a4,+00000070
	sw	a4,s0,+00000368
	lw	a4,s0,+0000036C
	andi	a4,a4,-00000100
	ori	a4,a4,+00000012
	sw	a4,s0,+0000036C
	lw	a4,s0,+0000036C
	andi	a4,a4,-00000701
	ori	a4,a4,+00000500
	sw	a4,s0,+0000036C
	lw	a5,s0,+0000036C
	lui	a4,00000280
	c.and	a5,a3
	c.or	a5,a4
	sw	a5,s0,+0000036C
	lw	a5,s0,+0000036C
	lui	a4,000F9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00007000
	c.or	a5,a4
	sw	a5,s0,+0000036C
	lw	a5,s0,+00000370
	lui	a4,000FF810
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000580
	c.or	a5,a4
	sw	a5,s0,+00000370
	lw	a5,s0,+000003C0
	lui	a4,00018000
	lui	a3,000000F8
	c.slli	a5,08
	c.srli	a5,00000008
	c.or	a5,a4
	sw	a5,s0,+000003C0
	lw	a5,s0,+00000380
	lui	a4,000FFF04
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.or	a5,a3
	sw	a5,s0,+00000380
	lw	a5,s0,+00000380
	lui	a3,000FC100
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	or	a5,a5,a7
	sw	a5,s0,+00000380
	lw	a5,s0,+00000380
	c.and	a5,a0
	c.or	a5,a2
	sw	a5,s0,+00000380
	lw	a1,s0,+00000380
	c.lui	a5,FFFFE000
	addi	a6,a5,-00000001
	and	a1,a1,a6
	sw	a1,s0,+00000380
	lw	a1,s0,+00000380
	addi	a5,a5,+000003FF
	lui	a2,000E4000
	c.and	a1,a5
	ori	a1,a1,+00000400
	sw	a1,s0,+00000380
	lw	a1,s0,+00000384
	c.and	a1,a0
	c.or	a1,a2
	sw	a1,s0,+00000384
	lw	a2,s0,+00000384
	lui	a1,00000050
	c.and	a2,a3
	or	a2,a2,a7
	sw	a2,s0,+00000384
	lw	a2,s0,+00000384
	lui	a7,0003C000
	c.and	a2,a4
	c.or	a2,a1
	sw	a2,s0,+00000384
	lw	a2,s0,+00000384
	and	a2,a2,a6
	sw	a2,s0,+00000384
	lw	a1,s0,+00000384
	c.lui	a2,00001000
	addi	s3,a2,-00000800
	c.and	a1,a5
	or	a1,a1,s3
	sw	a1,s0,+00000384
	lw	a1,s0,+00000388
	addi	a2,a2,+00000400
	c.and	a1,a0
	or	a1,a1,a7
	sw	a1,s0,+00000388
	lw	a1,s0,+00000388
	lui	a7,00001700
	c.and	a1,a3
	or	a1,a1,a7
	sw	a1,s0,+00000388
	lw	a1,s0,+00000388
	lui	a7,000000A8
	c.and	a1,a4
	or	a1,a1,a7
	sw	a1,s0,+00000388
	lw	a1,s0,+00000388
	and	a6,a1,a6
	sw	a6,s0,+00000388
	lw	a1,s0,+00000388
	lui	a6,00064000
	c.and	a1,a5
	c.or	a1,a2
	sw	a1,s0,+00000388
	lw	a1,s0,+0000038C
	c.and	a1,a0
	or	a1,a1,a6
	sw	a1,s0,+0000038C
	lw	a1,s0,+0000038C
	lui	a6,00000038
	c.and	a1,a3
	sw	a1,s0,+0000038C
	lw	a1,s0,+0000038C
	c.and	a1,a4
	or	a1,a1,a6
	sw	a1,s0,+0000038C
	lw	a1,s0,+0000038C
	c.and	a1,a5
	or	a1,a1,s3
	sw	a1,s0,+0000038C
	lw	a1,s1,-000007D0
	c.and	a1,a0
	lui	a0,000FC000
	c.or	a1,a0
	sw	a1,s1,+00000830
	lw	a1,s1,-000007D0
	c.li	a0,00000000
	c.and	a3,a1
	lui	a1,00000100
	c.or	a3,a1
	sw	a3,s1,+00000830
	lw	a3,s1,-000007D0
	c.and	a4,a3
	lui	a3,000000D8
	c.or	a4,a3
	sw	a4,s1,+00000830
	lw	a4,s1,-000007D0
	lui	a3,000FE100
	c.addi	a3,FFFFFFFF
	c.and	a5,a4
	c.or	a5,a2
	sw	a5,s1,+00000830
	lw	a5,s1,-000007EC
	c.andi	a5,FFFFFFFC
	sw	a5,s1,+00000814
	lw	a5,s1,-000007EC
	andi	a5,a5,-0000003D
	ori	a5,a5,+00000008
	sw	a5,s1,+00000814
	lw	a5,s1,-000007EC
	andi	a5,a5,-0000003D
	ori	a5,a5,+00000008
	sw	a5,s1,+00000814
	lui	a5,00044C0C
	c.lw	a5,64(a4)
	c.and	a4,a3
	lui	a3,00000C00
	c.or	a4,a3
	c.sw	a5,64(a4)
	c.lw	a5,64(a4)
	lui	a3,000FFF08
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.lui	a3,00018000
	c.or	a4,a3
	c.sw	a5,64(a4)
	c.lw	a5,68(a4)
	and	a4,a4,s2
	or	a4,a4,s3
	c.sw	a5,68(a4)
	c.lw	a5,68(a4)
	andi	a4,a4,-00000100
	c.sw	a5,68(a4)
	jal	ra,0000000023013A08
	lw	a4,s0,+000003A0
	lui	a3,00080000
	xori	a2,a3,-00000001
	andi	a4,a4,-00000100
	ori	a4,a4,+0000009E
	sw	a4,s0,+000003A0
	lw	a4,s0,+000003C0
	andi	a4,a4,-00000100
	ori	a4,a4,+000000A4
	sw	a4,s0,+000003C0
	lw	a4,s0,+000003C0
	and	s2,a4,s2
	or	s2,s2,s4
	sw	s2,s0,+000003C0
	lw	a4,s1,-000007D4
	andi	a4,a4,-00000100
	ori	a4,a4,+000000B5
	sw	a4,s1,+0000082C
	lw	a5,s1,-000007D4
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	ori	a5,a5,+00000100
	sw	a5,s1,+0000082C
	lw	a5,s1,-000007D4
	c.and	a5,a4
	or	a5,a5,s3
	sw	a5,s1,+0000082C
	lw	a4,s1,-000007C8
	lui	a5,000FFF80
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,s1,+00000838
	lw	a4,s1,-000007C8
	c.and	a4,a5
	ori	a4,a4,+00000100
	sw	a4,s1,+00000838
	lw	a4,s1,-000007C4
	lui	a5,000FFF00
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,s1,+0000083C
	lw	a4,s1,-000007C4
	c.and	a4,a5
	ori	a4,a4,+0000017C
	sw	a4,s1,+0000083C
	lw	a5,s1,-000007C0
	lui	a4,000FFC00
	c.and	a5,a2
	c.or	a5,a3
	sw	a5,s1,+00000840
	lw	a5,s1,-000007C0
	c.and	a5,a4
	ori	a5,a5,+00000100
	sw	a5,s1,+00000840
	lw	a5,s1,-000007D4
	lui	a4,000FF008
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000200
	c.or	a5,a4
	sw	a5,s1,+0000082C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; mdm_reset: 23013F6A
;;   Called from:
;;     23014014 (in phy_hw_set_channel)
;;     230141F8 (in phy_init)
;;     2301461E (in phy_rc_isr)
mdm_reset proc
	c.lui	a5,00001000
	lui	a4,00044C01
	addi	a5,a5,+00000111
	sw	a5,a4,+00000888
	sw	zero,a4,+00000888
	c.jr	ra

;; phy_powroffset_set: 23013F7E
;;   Called from:
;;     2303885C (in hal_board_cfg)
phy_powroffset_set proc
	lui	a4,00042011
	c.li	a5,00000000
	addi	a4,a4,+000007DC
	c.li	a3,0000000E

l23013F8A:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023013F8A

l23013FA0:
	c.jr	ra

;; phy_hw_set_channel: 23013FA2
;;   Called from:
;;     23014192 (in phy_set_channel)
phy_hw_set_channel proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s4,a0
	c.mv	s1,a1
	c.mv	s3,a2
	c.mv	s5,a3
	c.beqz	a3,0000000023013FD4

l23013FBC:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000144
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000644
	jal	ra,000000002301327E

l23013FD4:
	beq	s4,zero,0000000023013FF0

l23013FD8:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000145
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000660
	jal	ra,000000002301327E

l23013FF0:
	lui	s2,00044C0B
	lw	a5,s2,+00000390
	lui	s0,00044C01
	andi	a5,a5,-00000101
	sw	a5,s2,+00000390
	lw	a5,s0,-000007E0
	ori	a5,a5,+00000001
	sw	a5,s0,+00000820
	sw	zero,s0,+00000800
	jal	ra,0000000023013F6A
	addi	a5,zero,+000000B4
	sw	a5,s0,+00000838
	c.lui	a5,00002000
	addi	a5,a5,-000003ED
	sw	a5,s0,+0000088C
	lui	a5,00002D00
	addi	a5,a5,+00000438
	sw	a5,s0,+00000898
	lw	a5,s0,-000007A8
	lui	a4,00006000
	c.mv	a0,s5
	andi	a5,a5,-00000100
	sw	a5,s0,+00000858
	c.lui	a5,00001000
	addi	a5,a5,-000000F1
	sw	a5,s0,+0000081C
	lw	a5,s0,-000007E4
	andi	a5,a5,-00000080
	ori	a5,a5,+00000007
	sw	a5,s0,+0000081C
	lw	a5,s0,-000007CC
	c.slli	a5,08
	c.srli	a5,00000008
	c.or	a5,a4
	sw	a5,s0,+00000834
	lui	a5,00001881
	addi	a5,a5,-000003FA
	sw	a5,s0,+00000818
	c.lui	a5,00008000
	addi	a5,a5,-000000FD
	sw	a5,s0,+00000860
	sw	zero,s2,+00000340
	sw	zero,s2,+00000344
	sw	zero,s2,+00000348
	jal	ra,00000000230139BE
	lw	a5,s2,+00000000
	slli	a4,a5,0000000A
	bge	a4,zero,00000000230140A8

l230140A2:
	c.li	a5,00000001
	sw	a5,s2,+00000118

l230140A8:
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,00000000230139B6
	bne	s4,zero,000000002301410C

l230140B4:
	c.lui	a5,FFFFF000
	addi	a4,a5,+00000694
	c.add	a4,s1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a0,00000000
	bltu	a3,a4,00000000230140E2

l230140CA:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a0,0000000E
	beq	s1,a4,00000000230140E2

l230140D6:
	addi	a0,a5,+00000699

l230140DA:
	c.add	s1,a0
	c.li	a0,00000005
	xor	a0,s1,a0

l230140E2:
	lui	a1,00042011
	andi	a0,a0,+000000FF
	addi	a1,a1,+000007DC
	jal	ra,00000000230158C4
	c.lwsp	s8,00000004
	slli	a0,s3,00000018
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.srai	a0,00000018
	c.addi16sp	00000020
	jal	zero,0000000023014C70

l2301410C:
	c.li	a5,00000001
	c.li	a0,00000000
	bne	s4,a5,00000000230140E2

l23014114:
	c.lui	a4,FFFFF000
	addi	a5,a4,-0000038D
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a3,zero,+00000334
	bltu	a3,a5,00000000230140E2

l23014128:
	addi	a0,a4,-00000388
	c.j	00000000230140DA

;; phy_get_channel: 2301412E
;;   Called from:
;;     23003A46 (in ps_send_pspoll)
;;     23004172 (in rxl_mpdu_transfer)
;;     2300667E (in txl_frame_send_null_frame)
;;     2300678A (in txl_frame_send_qosnull_frame)
;;     230068B6 (in txl_frame_send_eapol_frame)
;;     23009CFA (in rxu_mgt_frame_check)
;;     2301C768 (in bam_send_air_action_frame)
phy_get_channel proc
	lui	a5,0004201D
	addi	a5,a5,+00000138
	lbu	a4,a5,+0000000B
	lhu	a3,a5,+00000004
	c.slli	a4,08
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,a5,+0000000A
	c.or	a4,a3
	c.sw	a0,0(a4)
	lhu	a4,a5,+00000006
	lhu	a5,a5,+00000008
	c.slli	a5,10
	c.or	a5,a4
	c.sw	a0,4(a5)
	c.jr	ra

;; phy_set_channel: 2301415C
;;   Called from:
;;     230198AC (in chan_pre_switch_channel)
;;     2301A144 (in chan_ctxt_update)
;;     2301B268 (in mm_monitor_channel_req_handler)
;;     2301B320 (in mm_monitor_enable_req_handler)
;;     2301B7D8 (in mm_start_req_handler)
;;     2301B9B6 (in mm_hw_config_handler)
phy_set_channel proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+00000048
	bgeu	a4,a5,0000000023014172

l23014170:
	c.beqz	a0,00000000230141BC

l23014172:
	c.li	a5,00000001
	bltu	a5,a0,00000000230141BC

l23014178:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a3
	c.mv	s2,a2
	c.swsp	s3,00000084
	c.mv	a3,a1
	c.mv	s3,a1
	c.mv	a2,s1
	c.mv	a1,s2
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023013FA2
	lui	a5,0004201D
	addi	a5,a5,+00000138
	sb	s0,a5,+0000000A
	sb	s3,a5,+0000000B
	sh	s2,a5,+00000004
	sh	s1,a5,+00000006
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230141BC:
	c.jr	ra

;; phy_get_version: 230141BE
;;   Called from:
;;     2301B776 (in mm_version_req_handler)
phy_get_version proc
	lui	a5,00044C00
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	sw	zero,a1,+00000000
	c.jr	ra

;; phy_vht_supported: 230141CC
;;   Called from:
;;     230142AA (in phy_init)
;;     230143C0 (in phy_init)
phy_vht_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a4)
	c.li	a0,00000001
	slli	a3,a4,00000009
	blt	a3,zero,00000000230141E2

l230141DC:
	c.lw	a5,0(a0)
	c.srli	a0,00000019
	c.andi	a0,00000001

l230141E2:
	c.jr	ra

;; phy_init: 230141E4
;;   Called from:
;;     2301B30C (in mm_monitor_enable_req_handler)
;;     2301B7C4 (in mm_start_req_handler)
phy_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,00044C01
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	sw	zero,s0,+00000800
	c.mv	s2,a0
	jal	ra,0000000023013F6A
	addi	a5,zero,+0000020D
	sw	a5,s0,+00000820
	lui	a5,00044C00
	c.lw	a5,0(s0)
	c.srli	s0,00000008
	c.andi	s0,0000000F
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF
	c.slli	s0,04
	andi	a5,s0,-00000071
	c.beqz	a5,0000000023014236

l2301421C:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,a2,-000005F7
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000678
	jal	ra,000000002301327E

l23014236:
	lui	a4,00044C01
	lw	a5,a4,-000007E0
	andi	a5,a5,-00000071
	c.or	s0,a5
	sw	s0,a4,+00000820
	lui	a5,00044C00
	c.lw	a5,0(s1)
	lui	a5,000000F8
	c.srli	s1,0000000C
	c.andi	s1,0000000F
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	c.slli	s1,0C
	c.and	a5,s1
	c.beqz	a5,000000002301427C

l23014262:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,a2,-00000679
	addi	a1,a1,+000002DC
	addi	a0,a0,+000006B4
	jal	ra,000000002301327E

l2301427C:
	lui	s0,00044C01
	lw	a5,s0,-000007E0
	c.lui	a4,FFFF9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.or	s1,a5
	sw	s1,s0,+00000820
	lui	s1,00044C00
	c.lw	s1,0(a5)
	lw	a4,s0,-000007E0
	c.srli	a5,00000013
	andi	a4,a4,-00000101
	andi	a5,a5,+00000100
	c.or	a5,a4
	sw	a5,s0,+00000820
	jal	ra,00000000230141CC
	lw	a5,s0,-000007E0
	c.slli	a0,01
	c.lui	a3,FFFF0000
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	sw	a0,s0,+00000820
	c.lw	s1,0(a5)
	lw	a4,s0,-000007E0
	c.addi	a3,FFFFFFFF
	c.srli	a5,0000001E
	c.andi	a5,00000001
	c.and	a4,a3
	c.slli	a5,10
	c.or	a5,a4
	sw	a5,s0,+00000820
	c.lw	s1,0(a5)
	lw	a4,s0,-000007E0
	lui	a3,000FFF00
	c.srli	a5,0000001E
	c.addi	a3,FFFFFFFF
	c.andi	a5,00000001
	c.and	a4,a3
	c.slli	a5,14
	c.or	a5,a4
	sw	a5,s0,+00000820
	lui	a3,00044C03
	c.lw	a3,36(a5)
	lui	a4,000FFC10
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,000002D0
	c.or	a5,a4
	c.sw	a3,36(a5)
	c.li	a5,FFFFFFFF
	sw	a5,s0,+0000089C
	addi	a5,zero,+0000020D
	sw	a5,s0,+00000824
	c.lw	s1,0(s0)
	c.srli	s0,00000008
	c.andi	s0,0000000F
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF
	c.slli	s0,04
	andi	a5,s0,-00000071
	c.beqz	a5,0000000023014340

l23014326:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,a2,-000003F2
	addi	a1,a1,+000002DC
	addi	a0,a0,+000006F4
	jal	ra,000000002301327E

l23014340:
	lui	a4,00044C01
	lw	a5,a4,-000007DC
	andi	a5,a5,-00000071
	c.or	s0,a5
	sw	s0,a4,+00000824
	lui	a5,00044C00
	c.lw	a5,0(s1)
	lui	a5,0000F800
	c.srli	s1,00000004
	c.andi	s1,0000000F
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	c.slli	s1,14
	c.and	a5,s1
	c.beqz	a5,0000000023014386

l2301436C:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,a2,-0000048E
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000730
	jal	ra,000000002301327E

l23014386:
	lui	s0,00044C01
	lw	a5,s0,-000007DC
	lui	a4,000FF900
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.or	s1,a5
	sw	s1,s0,+00000824
	lui	s1,00044C00
	c.lw	s1,0(a0)
	c.srli	a0,00000018
	c.andi	a0,00000003
	jal	ra,00000000230139BE
	c.lw	s1,0(a5)
	lw	a4,s0,-000007DC
	c.srli	a5,00000012
	andi	a4,a4,-00000101
	andi	a5,a5,+00000100
	c.or	a5,a4
	sw	a5,s0,+00000824
	jal	ra,00000000230141CC
	lw	a5,s0,-000007DC
	c.slli	a0,01
	c.lui	a4,FFFF0000
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	sw	a0,s0,+00000824
	c.lw	s1,0(a5)
	lw	a3,s0,-000007DC
	addi	a2,a4,-00000001
	c.srli	a5,0000001F
	c.and	a3,a2
	c.slli	a5,10
	c.or	a5,a3
	sw	a5,s0,+00000824
	lw	a5,s0,-000007CC
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFF
	ori	a5,a5,+00000001
	sw	a5,s0,+00000834
	lw	a5,s0,-000007E8
	addi	a4,a4,+000000FF
	c.lui	a2,00002000
	c.and	a5,a3
	sw	a5,s0,+00000818
	lw	a5,s0,-000007D0
	lui	a3,000F8000
	c.addi	a3,FFFFFFFF
	c.and	a5,a4
	addi	a4,a2,-00000500
	c.or	a5,a4
	sw	a5,s0,+00000830
	lw	a5,s0,-000007D0
	lui	a4,00008000
	andi	a5,a5,-00000100
	ori	a5,a5,+0000000F
	sw	a5,s0,+00000830
	lui	a5,00004920
	addi	a5,a5,+00000492
	sw	a5,s0,+0000083C
	lw	a5,s0,-0000078C
	c.and	a5,a3
	c.or	a5,a4
	sw	a5,s0,+00000874
	lui	a5,00044C0B
	lw	a4,a5,+00000500
	c.lui	a3,FFFFD000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.or	a4,a2
	sw	a4,a5,+00000500
	c.lw	a5,0(a4)
	slli	a3,a4,0000000A
	bge	a3,zero,0000000023014498

l2301446C:
	lw	a4,a5,+00000110
	c.andi	a4,FFFFFFF7
	sw	a4,a5,+00000110
	lw	a4,a5,+00000110
	c.andi	a4,FFFFFFFB
	sw	a4,a5,+00000110
	lw	a4,a5,+00000110
	c.andi	a4,FFFFFFFD
	sw	a4,a5,+00000110
	lw	a4,a5,+00000110
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+00000110
	sw	zero,a5,+00000118

l23014498:
	lui	s0,00044C0B
	c.li	a5,00000001
	c.sw	s0,4(a5)
	lw	a5,s0,+00000390
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000001
	sw	a5,s0,+00000390
	lui	a5,000003D1
	addi	a5,a5,-00000700
	sw	a5,s0,+000003BC
	lw	a5,s0,+00000414
	ori	a5,a5,+00000100
	sw	a5,s0,+00000414
	jal	ra,0000000023013B26
	lw	a5,s0,+00000390
	c.lui	a4,FFFFF000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00001000
	c.or	a5,a4
	lui	a3,00044C01
	sw	a5,s0,+00000390
	lw	a5,a3,-0000078C
	lui	a4,000E0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00020000
	c.or	a5,a4
	sw	a5,a3,+00000874
	lui	a5,00023076
	lui	a3,00054C0B
	addi	a5,a5,+000007B0
	lui	a4,00054C0A
	addi	a3,a3,-00000800

l2301450A:
	c.lw	a5,0(a2)
	c.addi	a4,00000004
	c.addi	a5,00000004
	sw	a2,a4,+00000FFC
	bne	a4,a3,000000002301450A

l23014518:
	lui	a3,00044C01
	lw	a5,a3,-0000078C
	lui	a4,000E0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	a5,a3,+00000874
	lui	a3,00044C0B
	lw	a5,a3,+00000390
	c.lui	a4,FFFFF000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	a5,a3,+00000390
	lui	a3,00044C0C
	c.lw	a3,32(a5)
	lui	a4,000FC010
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000140
	c.or	a5,a4
	c.sw	a3,32(a5)
	lw	a4,s2,+00000000
	lui	a5,0004201D
	addi	a5,a5,+00000138
	c.sw	a5,0(a4)
	lui	a4,00000FF0
	addi	a4,a4,+000000FF
	c.sw	a5,4(a4)
	lui	a4,00005000
	addi	a4,a4,+000000FF
	c.sw	a5,8(a4)
	c.jal	0000000023014B0C
	c.jal	0000000023014624
	jal	ra,0000000023014CC4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023014CFC

;; phy_get_nss: 2301458C
;;   Called from:
;;     2301E1A8 (in me_config_req_handler)
phy_get_nss proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000008
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_get_ntx: 2301459E
;;   Called from:
;;     230062C2 (in txl_frame_init)
;;     230062CA (in txl_frame_init)
;;     2300631A (in txl_frame_init)
;;     23006322 (in txl_frame_init)
;;     23008E9E (in rc_init)
;;     230092E4 (in rc_init)
;;     2301AC70 (in hal_machw_init)
;;     2301C2CA (in txl_buffer_init)
;;     2301C2D2 (in txl_buffer_init)
;;     2301C360 (in txl_buffer_init)
;;     2301C368 (in txl_buffer_init)
phy_get_ntx proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000004
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_stop: 230145B0
;;   Called from:
;;     2301B71E (in mm_reset_req_handler)
phy_stop proc
	c.jr	ra

;; phy_ldpc_tx_supported: 230145B2
;;   Called from:
;;     23008FBA (in rc_init)
phy_ldpc_tx_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,0000001A
	c.andi	a0,00000001
	c.jr	ra

;; phy_get_mac_freq: 230145BE
;;   Called from:
;;     2301A8DE (in hal_machw_init)
phy_get_mac_freq proc
	addi	a0,zero,+00000028
	c.jr	ra

;; phy_get_rf_gain_idx: 230145C4
;;   Called from:
;;     230055A4 (in tpc_update_vif_tx_power)
;;     230055C0 (in tpc_update_vif_tx_power)
phy_get_rf_gain_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	lb	a1,a0,+00000000
	c.li	a5,0000000A
	c.li	a0,00000002
	add	a1,a1,a5
	jal	ra,0000000023015814
	sb	a0,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_get_rf_gain_capab: 230145E8
;;   Called from:
;;     2301CFFE (in me_build_associate_req)
phy_get_rf_gain_capab proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.jal	0000000023014B48
	sb	a0,s0,+00000000
	c.jal	0000000023014B52
	c.lwsp	a2,00000064
	sb	a0,a1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; mpif_clk_init: 23014608
;;   Called from:
;;     230133D4 (in wifi_main)
mpif_clk_init proc
	c.jr	ra

;; phy_mdm_isr: 2301460A
phy_mdm_isr proc
	c.jr	ra

;; phy_rc_isr: 2301460C
phy_rc_isr proc
	lui	a4,00044C0B
	lw	a5,a4,+0000041C
	sw	a5,a4,+00000420
	andi	a5,a5,+00000100
	c.beqz	a5,0000000023014622

l2301461E:
	jal	zero,0000000023013F6A

l23014622:
	c.jr	ra

;; pa_init: 23014624
;;   Called from:
;;     23014578 (in phy_init)
pa_init proc
	lui	a5,00042011
	addi	a5,a5,+000007EC
	addi	a2,a5,+00000230

l23014630:
	sb	zero,a5,+00000073
	sw	zero,a5,+00000078
	sw	zero,a5,+0000006C
	sb	zero,a5,+00000068
	sb	zero,a5,+00000087
	sw	zero,a5,+00000080
	sb	zero,a5,+00000088
	sb	zero,a5,+00000089
	c.mv	a4,a5
	c.li	a3,00000008

l23014654:
	sb	zero,a4,+00000010
	sb	zero,a4,+00000008
	sb	zero,a4,+00000009
	sw	zero,a4,+0000000C
	c.addi	a3,FFFFFFFF
	c.addi	a4,0000000C
	c.bnez	a3,0000000023014654

l2301466A:
	addi	a5,a5,+0000008C
	bne	a5,a2,0000000023014630

l23014672:
	c.jr	ra

;; pa_input: 23014674
;;   Called from:
;;     23004574 (in rxl_cntrl_evt)
pa_input proc
	c.li	a2,00000003
	bltu	a2,a0,0000000023014774

l2301467A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a4,zero,+0000008C
	c.mv	s0,a0
	add	a3,s0,a4
	c.swsp	s1,00000080
	lui	s1,00042011
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	addi	a5,s1,+000007EC
	c.lw	a1,32(a0)
	addi	s1,s1,+000007EC
	add	a4,a5,a3
	lb	s2,a4,+00000068
	c.sw	a4,108(a0)
	c.li	a4,0000000C
	add	a4,s2,a4
	c.add	a4,a3
	c.add	a5,a4
	c.li	a4,00000001
	sb	a4,a5,+00000010
	lb	a4,a1,+00000033
	sb	a4,a5,+00000008
	c.lw	a1,52(a4)
	c.slli	a4,14
	c.srai	a4,0000001C
	sb	a4,a5,+00000009
	c.lw	a1,44(a4)
	lui	a5,00000070
	c.and	a5,a4
	c.bnez	a5,000000002301473A

l230146D2:
	c.lw	a1,40(a5)
	lbu	a0,a1,+0000003B
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	bltu	a2,a5,000000002301473A

l230146E0:
	c.slli	a0,18
	c.srai	a0,00000018
	jal	ra,00000000230705D8
	lui	a5,00023076
	lw	a2,a5,+00000790
	lw	a3,a5,+00000794
	jal	ra,000000002306F140

l230146F8:
	jal	ra,0000000023070818
	c.li	a5,0000000C
	addi	a4,zero,+0000008C
	add	a4,s0,a4
	add	a5,s2,a5
	c.add	a5,a4
	c.add	a5,s1
	c.fsw	a5,12(a0)
	c.li	a4,00000007
	c.li	a5,00000000
	beq	s2,a4,0000000023014720

l23014718:
	c.addi	s2,00000001
	slli	a5,s2,00000018
	c.srai	a5,00000018

l23014720:
	addi	a0,zero,+0000008C
	add	s0,s0,a0
	c.add	s0,s1
	sb	a5,s0,+00000068
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301473A:
	lbu	a0,a1,+0000003C
	lbu	a5,a1,+0000003B
	c.slli	a0,08
	c.add	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	sub	a0,zero,a0
	jal	ra,00000000230705D8
	lui	a5,00023076
	lw	a2,a5,+00000798
	lw	a3,a5,+0000079C
	jal	ra,000000002306F140
	lui	a5,00023076
	lw	a2,a5,+000007A0
	lw	a3,a5,+000007A4
	jal	ra,000000002306E5F4
	c.j	00000000230146F8

l23014774:
	c.jr	ra

;; pa_adapt: 23014776
;;   Called from:
;;     2300457A (in rxl_cntrl_evt)
pa_adapt proc
	c.li	a5,00000003
	bltu	a5,a0,0000000023014A16

l2301477C:
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000084
	c.swsp	s5,00000004
	c.swsp	s6,00000080
	c.swsp	s7,00000000
	addi	a5,a5,-00000334
	c.lw	a5,0(a2)
	lui	s0,00042011
	addi	a4,s0,+000007EC
	c.addi	a2,00000001
	c.sw	a5,0(a2)
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	addi	s0,s0,+000007EC
	c.add	a4,a5
	lb	t3,a4,+00000068
	bne	t3,zero,0000000023014920

l230147BA:
	addi	a4,a5,+0000005C
	c.add	a4,s0

l230147C0:
	lbu	a5,a4,+00000008
	beq	a5,zero,000000002301490C

l230147C8:
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	lb	s2,a4,+00000000
	add	a5,s0,a3
	lb	a1,a5,+00000073
	beq	a1,zero,0000000023014968

l230147E0:
	lbu	a1,a5,+00000074
	c.li	a3,00000004
	bgeu	a3,a1,0000000023014934

l230147EA:
	sb	zero,a5,+00000074
	sb	zero,a5,+00000073
	sw	zero,a5,+00000078

l230147F6:
	c.andi	a2,0000000F
	c.li	a5,0000000F
	bne	a2,a5,000000002301490C

l230147FE:
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	c.li	a3,00000014
	c.mv	s1,a0
	c.add	a5,s0
	lb	a5,a5,+00000070
	sub	a5,s2,a5
	c.addi	a5,0000000A
	bltu	a3,a5,0000000023014884

l2301481A:
	c.flw	fa4,4(a0)
	fmv.w.x	fa5,zero
	fle.s	a5,fa5,fa0
	beq	a5,zero,00000000230149D6

l23014828:
	lui	a5,00023076
	flw	fa5,1900(a5)
	flt.s	a5,fa5,fa0

l23014834:
	c.beqz	a5,0000000023014884

l23014836:
	jal	ra,0000000023070708
	addi	a5,zero,-00000055
	c.mv	s4,a0
	c.mv	s5,a1
	bge	s2,a5,00000000230149E4

l23014846:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,0000000023070708
	lui	a5,00023076
	lw	a2,a5,+00000780
	lw	a3,a5,+00000784
	c.mv	s6,a0
	c.mv	s7,a1

l23014868:
	c.mv	a0,s4
	c.mv	a1,s5
	jal	ra,000000002306F140
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s6
	c.mv	a1,s7
	jal	ra,000000002306DAA4
	jal	ra,0000000023070818
	fsw	fa0,512(a0)

l23014884:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	fle.s	a5,fa4,fa5
	beq	a5,zero,0000000023014A08

l2301489E:
	lui	a5,00023076
	flw	fa4,1908(a5)
	flt.s	a5,fa5,fa4

l230148AA:
	c.bnez	a5,000000002301490C

l230148AC:
	csrrci	zero,mstatus,00000008
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa4,fa5
	c.beqz	a5,00000000230148D2

l230148C8:
	c.jal	0000000023014A18
	c.beqz	a0,00000000230148D2

l230148CC:
	c.jal	0000000023014A18
	c.addi	a0,FFFFFFFF
	c.jal	0000000023014A28

l230148D2:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa5,fa4
	c.beqz	a5,00000000230148FA

l230148EA:
	c.jal	0000000023014A18
	addi	a5,zero,+0000003E
	bltu	a5,a0,00000000230148FA

l230148F4:
	c.jal	0000000023014A18
	c.addi	a0,00000001
	c.jal	0000000023014A28

l230148FA:
	addi	a0,zero,+0000008C
	add	s1,s1,a0
	c.add	s0,s1
	sw	zero,s0,+00000080
	csrrsi	zero,mstatus,00000008

l2301490C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000088
	c.lwsp	s0,000000A8
	c.lwsp	tp,000000C8
	c.lwsp	zero,000000E8
	c.addi16sp	00000020
	c.jr	ra

l23014920:
	addi	a4,t3,-00000001
	c.li	a3,0000000C
	add	a4,a4,a3
	c.addi	a5,00000008
	c.add	a5,a4
	add	a4,s0,a5
	c.j	00000000230147C0

l23014934:
	addi	a3,s2,+00000064
	addi	a6,zero,+00000064
	bltu	a6,a3,00000000230147F6

l23014940:
	lb	a6,a5,+00000070
	c.li	a7,00000014
	sub	a3,s2,a6
	addi	t1,a3,+0000000A
	bgeu	a7,t1,000000002301495A

l23014952:
	c.addi	a1,00000001
	sb	a1,a5,+00000074
	c.j	00000000230147F6

l2301495A:
	c.srai	a3,00000002
	c.add	a3,a6
	sb	zero,a5,+00000074
	sb	a3,a5,+00000070
	c.j	00000000230147F6

l23014968:
	c.lw	a5,120(a1)
	c.li	a6,00000006
	bgeu	a6,a1,00000000230149D0

l23014970:
	c.li	a1,00000001
	sb	a1,a5,+00000073
	c.li	a6,00000001
	addi	a7,zero,+00000064
	addi	t1,zero,-00000064
	c.li	a5,00000000
	c.li	t5,00000008
	c.li	t6,0000000C
	c.mv	a1,a3
	c.li	t4,00000007

l2301498A:
	sub	a3,t3,a6
	or	a3,a3,t5
	add	a3,a3,t6
	c.add	a3,a1
	c.add	a3,s0
	lb	a3,a3,+00000008
	c.add	a5,a3
	bge	t1,a3,00000000230149A6

l230149A4:
	c.mv	t1,a3

l230149A6:
	bge	a3,a7,00000000230149AC

l230149AA:
	c.mv	a7,a3

l230149AC:
	c.addi	a6,00000001
	bne	a6,t4,000000002301498A

l230149B2:
	sub	a5,a5,t1
	sub	a5,a5,a7
	c.li	a1,00000004
	xor	a5,a5,a1
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	c.add	a3,s0
	sb	a5,a3,+00000070
	c.j	00000000230147F6

l230149D0:
	c.addi	a1,00000001
	c.sw	a5,120(a1)
	c.j	00000000230147F6

l230149D6:
	lui	a5,00023076
	flw	fa5,1904(a5)
	flt.s	a5,fa0,fa5
	c.j	0000000023014834

l230149E4:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,0000000023070708
	lui	a5,00023076
	c.mv	s6,a0
	c.mv	s7,a1
	lw	a2,a5,+00000788
	lw	a3,a5,+0000078C
	c.j	0000000023014868

l23014A08:
	lui	a5,00023076
	flw	fa4,1912(a5)
	flt.s	a5,fa4,fa5
	c.j	00000000230148AA

l23014A16:
	c.jr	ra

;; hal_get_capcode: 23014A18
;;   Called from:
;;     230148C8 (in pa_adapt)
;;     230148CC (in pa_adapt)
;;     230148EA (in pa_adapt)
;;     230148F4 (in pa_adapt)
hal_get_capcode proc
	lui	a5,00040010
	lw	a0,a5,-0000077C
	c.srli	a0,00000016
	andi	a0,a0,+0000003F
	c.jr	ra

;; hal_set_capcode: 23014A28
;;   Called from:
;;     230148D0 (in pa_adapt)
;;     230148F8 (in pa_adapt)
hal_set_capcode proc
	lui	a2,00040010
	lw	a4,a2,-0000077C
	lui	a3,000F0010
	slli	a5,a0,00000010
	c.addi	a3,FFFFFFFF
	c.slli	a0,16
	c.or	a5,a0
	c.and	a4,a3
	c.or	a5,a4
	sw	a5,a2,+00000884
	c.jr	ra

;; hal_get_temperature: 23014A48
;;   Called from:
;;     23014D32 (in phy_tcal_handle)
hal_get_temperature proc
	lui	a5,0004200E
	lhu	a5,a5,-00000330
	sh	a5,a0,+00000000
	c.li	a0,00000001
	c.jr	ra

;; hal_set_temperature: 23014A58
;;   Called from:
;;     23014DD8 (in phy_tcal_callback)
hal_set_temperature proc
	lui	a5,0004200E
	sh	a0,a5,+00000CD0
	c.jr	ra

;; trpc_update_power: 23014A62
;;   Called from:
;;     230054D8 (in bl_tpc_update_power_table)
trpc_update_power proc
	lui	a5,0004200D
	addi	a5,a5,-00000104
	c.li	a3,00000000
	c.li	a1,00000008
	c.li	a2,00000018

l23014A70:
	add	t1,a0,a3
	c.li	a4,00000000

l23014A76:
	add	a6,t1,a4
	lb	a7,a6,+00000000
	add	a6,a5,a4
	c.addi	a4,00000001
	sb	a7,a6,+00000000
	bne	a4,a1,0000000023014A76

l23014A8C:
	c.addi	a3,00000008
	c.addi	a5,00000008
	bne	a3,a2,0000000023014A70

l23014A94:
	c.jr	ra

;; trpc_power_get: 23014A96
;;   Called from:
;;     2300550E (in bl_tpc_power_table_get)
trpc_power_get proc
	lui	a1,0004200D
	c.li	a2,00000018
	addi	a1,a1,-00000104
	jal	zero,0000000023070C7C

;; trpc_update_power_11b: 23014AA4
;;   Called from:
;;     2300552E (in bl_tpc_update_power_rate_11b)
trpc_update_power_11b proc
	lui	a4,0004200D
	c.li	a5,00000000
	addi	a4,a4,-00000104
	c.li	a3,00000004

l23014AB0:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023014AB0

l23014AC6:
	c.jr	ra

;; trpc_update_power_11g: 23014AC8
;;   Called from:
;;     23005532 (in bl_tpc_update_power_rate_11g)
trpc_update_power_11g proc
	lui	a5,0004200D
	addi	a5,a5,-00000104
	c.li	a4,00000000
	c.li	a3,00000008

l23014AD4:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+00000007
	bne	a4,a3,0000000023014AD4

l23014AE8:
	c.jr	ra

;; trpc_update_power_11n: 23014AEA
;;   Called from:
;;     23005536 (in bl_tpc_update_power_rate_11n)
trpc_update_power_11n proc
	lui	a5,0004200D
	addi	a5,a5,-00000104
	c.li	a4,00000000
	c.li	a3,00000008

l23014AF6:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+0000000F
	bne	a4,a3,0000000023014AF6

l23014B0A:
	c.jr	ra

;; trpc_init: 23014B0C
;;   Called from:
;;     23014576 (in phy_init)
trpc_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a5,00001000
	lui	s0,0004201D
	addi	s0,s0,+00000144
	addi	a5,a5,-00000676
	c.swsp	ra,00000084
	sh	a5,s0,+00000004
	jal	ra,0000000023017BF2
	sb	a0,s0,+00000000
	jal	ra,0000000023017C10
	c.li	a5,0000001E
	sb	a5,s0,+00000002
	c.li	a5,00000019
	sb	a0,s0,+00000001
	sh	a5,s0,+00000006
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_rf_max_power: 23014B48
;;   Called from:
;;     230145F2 (in phy_get_rf_gain_capab)
trpc_get_rf_max_power proc
	lui	a5,0004201D
	lb	a0,a5,+00000144
	c.jr	ra

;; trpc_get_rf_min_power: 23014B52
;;   Called from:
;;     230145F8 (in phy_get_rf_gain_capab)
trpc_get_rf_min_power proc
	lui	a5,0004201D
	lb	a0,a5,+00000145
	c.jr	ra

;; trpc_get_power_idx: 23014B5C
;;   Called from:
;;     23014C6C (in trpc_get_default_power_idx)
trpc_get_power_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a0
	c.li	a4,00000002
	bltu	a5,a0,0000000023014B70

l23014B6C:
	andi	a4,a0,+000000FF

l23014B70:
	c.li	a7,00000003
	c.beqz	s0,0000000023014B76

l23014B74:
	c.li	a7,00000007

l23014B76:
	lui	a3,0004201D
	addi	a5,a3,+00000144
	lb	a0,a5,+00000000
	lbu	a5,a5,+00000002
	addi	a6,a3,+00000144
	slli	t1,a5,00000018
	srai	t1,t1,00000018
	bge	a0,t1,0000000023014B98

l23014B96:
	c.mv	a5,a0

l23014B98:
	slli	a3,a5,00000018
	c.srai	a3,00000018
	bge	a2,a3,0000000023014BA4

l23014BA2:
	c.mv	a5,a2

l23014BA4:
	c.slli	a5,18
	c.srai	a5,00000018
	bge	a7,a1,0000000023014BAE

l23014BAC:
	c.mv	a1,a7

l23014BAE:
	slli	a3,a4,00000003
	lui	a4,0004200D
	addi	a4,a4,-00000104
	c.add	a4,a3
	c.add	a1,a4
	lbu	a4,a1,+00000000
	slli	a3,a4,00000018
	c.srai	a3,00000018
	bge	a5,a3,0000000023014BCE

l23014BCC:
	c.mv	a4,a5

l23014BCE:
	lbu	a5,a6,+00000001
	slli	a3,a4,00000018
	c.srai	a3,00000018
	slli	a2,a5,00000018
	c.srai	a2,00000018
	bge	a2,a3,0000000023014BE4

l23014BE2:
	c.mv	a5,a4

l23014BE4:
	c.slli	a5,18
	addi	a4,zero,-000001FE
	c.srai	a5,00000018
	add	a5,a5,a4
	c.add	a5,a0
	addi	a0,zero,+00000200
	xor	a0,a5,a0
	jal	ra,00000000230705D8
	lui	a5,00023076
	lw	a2,a5,+000007A8
	lw	a3,a5,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070414
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	c.beqz	s0,0000000023014C1C

l23014C1A:
	c.li	a5,00000000

l23014C1C:
	c.add	a5,a0
	andi	a5,a5,+000000FF
	c.li	a4,0000000F
	c.mv	a0,a5
	bgeu	a4,a5,0000000023014C2C

l23014C2A:
	c.li	a0,0000000F

l23014C2C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	a0,02
	andi	a0,a0,+000000FC
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_default_power_idx: 23014C3A
;;   Called from:
;;     23005544 (in tpc_update_tx_power)
;;     2300555E (in tpc_update_tx_power)
;;     23005634 (in tpc_get_vif_tx_power_vs_rate)
trpc_get_default_power_idx proc
	c.li	a5,00000002
	andi	a4,a0,+000000FF
	bgeu	a5,a0,0000000023014C46

l23014C44:
	c.li	a4,00000002

l23014C46:
	c.li	a5,00000003
	c.beqz	a0,0000000023014C4C

l23014C4A:
	c.li	a5,00000007

l23014C4C:
	bge	a5,a1,0000000023014C52

l23014C50:
	c.mv	a1,a5

l23014C52:
	lui	a5,0004200D
	slli	a3,a4,00000003
	addi	a5,a5,-00000104
	c.add	a5,a3
	c.add	a5,a1
	lb	a2,a5,+00000000
	andi	a1,a1,+000000FF
	c.mv	a0,a4
	jal	zero,0000000023014B5C

;; trpc_update_vs_channel: 23014C70
;;   Called from:
;;     23014108 (in phy_hw_set_channel)
trpc_update_vs_channel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	s0,s0,+00000144
	c.swsp	ra,00000084
	sh	a0,s0,+00000004
	jal	ra,0000000023017BF2
	sb	a0,s0,+00000000
	jal	ra,0000000023017C10
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_update_vs_temperature: 23014C9A
;;   Called from:
;;     23014D20 (in phy_tcal_txpwr)
trpc_update_vs_temperature proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	s0,s0,+00000144
	c.swsp	ra,00000084
	sb	a0,s0,+00000006
	jal	ra,0000000023017BF2
	sb	a0,s0,+00000000
	jal	ra,0000000023017C10
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_tcal_reset: 23014CC4
;;   Called from:
;;     2301457A (in phy_init)
phy_tcal_reset proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042012
	c.swsp	s0,00000004
	addi	a2,zero,+00000038
	addi	s0,a0,-000005E4
	c.li	a1,00000000
	addi	a0,a0,-000005E4
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	c.li	a5,00000019
	c.sw	s0,20(a5)
	c.sw	s0,24(a5)
	c.sw	s0,28(a5)
	c.sw	s0,32(a5)
	sh	a5,s0,+00000000
	c.li	a5,00000001
	sb	a5,s0,+00000034
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_tcal_start: 23014CFC
;;   Called from:
;;     23014588 (in phy_init)
phy_tcal_start proc
	lui	a5,00042012
	c.li	a4,00000001
	sb	a4,a5,+00000A50
	c.jr	ra

;; phy_tcal_txpwr: 23014D08
;;   Called from:
;;     23014D3C (in phy_tcal_handle)
phy_tcal_txpwr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023017CB8
	slli	a0,s0,00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.srai	a0,00000018
	c.addi	sp,00000010
	jal	zero,0000000023014C9A

;; phy_tcal_handle: 23014D24
;;   Called from:
;;     23014DEA (in phy_tcal_callback)
phy_tcal_handle proc
	c.addi	sp,FFFFFFE0
	addi	a0,sp,+0000000E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023014A48
	c.beqz	a0,0000000023014DB6

l23014D38:
	lh	a0,sp,+0000000E
	jal	ra,0000000023014D08
	lhu	a5,sp,+0000000E
	addi	a4,zero,+0000007D
	slli	a3,a5,00000010
	c.srai	a3,00000010
	bge	a4,a3,0000000023014D56

l23014D52:
	addi	a5,zero,+0000007D

l23014D56:
	slli	a4,a5,00000010
	c.srai	a4,00000010
	addi	a3,zero,-00000028
	bge	a4,a3,0000000023014D68

l23014D64:
	addi	a5,zero,-00000028

l23014D68:
	slli	s2,a5,00000010
	sh	a5,sp,+0000000E
	c.addi	a5,FFFFFFE7
	c.slli	a5,10
	c.srai	a5,00000010
	srai	s2,s2,00000010
	blt	zero,a5,0000000023014DC2

l23014D7E:
	c.li	s0,FFFFFFFA
	add	a5,a5,s0
	srai	s0,a5,00000008

l23014D88:
	lui	s1,00042012
	addi	a5,s1,-000005E4
	c.lw	a5,44(a5)
	addi	s1,s1,-000005E4
	beq	s0,a5,0000000023014DAE

l23014D9A:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s0
	jal	ra,0000000023013A08
	csrrsi	zero,mstatus,00000008
	sw	s2,s1,+0000001C
	c.sw	s1,44(s0)

l23014DAE:
	lhu	a5,sp,+0000000E
	sh	a5,s1,+00000000

l23014DB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23014DC2:
	c.li	s0,00000006
	add	s0,a5,s0
	c.srai	s0,00000008
	sub	s0,zero,s0
	c.slli	s0,10
	c.srai	s0,00000010
	c.j	0000000023014D88

;; phy_tcal_callback: 23014DD4
;;   Called from:
;;     230261E4 (in wifi_mgmr_start)
phy_tcal_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023014A58
	lui	a5,00042012
	lbu	a5,a5,-000005B0
	c.beqz	a5,0000000023014DEE

l23014DE6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014D24

l23014DEE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rf_fsm_ctrl_en_setf: 23014DF4
;;   Called from:
;;     23015544 (in rfc_init)
;;     230156E6 (in rfc_config_channel)
;;     230156F2 (in rfc_config_channel)
;;     230157C0 (in rfc_coex_force_to)
;;     23015810 (in rfc_coex_force_to)
rf_fsm_ctrl_en_setf proc
	lui	a4,00040001
	c.lw	a4,4(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,4(a0)
	c.jr	ra

;; rf_fsm_st_dbg_en_setf: 23014E04
;;   Called from:
;;     23015530 (in rfc_init)
;;     23015712 (in rfc_config_channel)
;;     23015734 (in rfc_config_channel)
rf_fsm_st_dbg_en_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000026C
	c.slli	a0,03
	c.andi	a5,FFFFFFF7
	c.or	a0,a5
	sw	a0,a4,+0000026C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc3_setf: 23014E18
;;   Called from:
;;     23015352 (in rfc_init)
;;     2301585A (in rfc_apply_tx_dvga)
;;     230159A4 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc3_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000630
	lui	a4,00081000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,18
	lui	a4,0007F000
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc2_setf: 23014E38
;;   Called from:
;;     2301532C (in rfc_init)
;;     23015852 (in rfc_apply_tx_dvga)
;;     2301597E (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc2_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000630
	lui	a4,000FF810
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	lui	a4,000007F0
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc1_setf: 23014E58
;;   Called from:
;;     230152F8 (in rfc_init)
;;     2301584A (in rfc_apply_tx_dvga)
;;     2301594E (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc1_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000630
	c.lui	a4,FFFF8000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.lui	a4,00008000
	c.slli	a0,08
	addi	a4,a4,-00000100
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc0_setf: 23014E7A
;;   Called from:
;;     230152BE (in rfc_init)
;;     23015842 (in rfc_apply_tx_dvga)
;;     23015914 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc0_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000630
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc7_setf: 23014E92
;;   Called from:
;;     230153E8 (in rfc_init)
;;     2301587A (in rfc_apply_tx_dvga)
;;     23015A3A (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc7_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000634
	lui	a4,00081000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,18
	lui	a4,0007F000
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc6_setf: 23014EB2
;;   Called from:
;;     230153C4 (in rfc_init)
;;     23015872 (in rfc_apply_tx_dvga)
;;     23015A16 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc6_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000634
	lui	a4,000FF810
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	lui	a4,000007F0
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc5_setf: 23014ED2
;;   Called from:
;;     2301539E (in rfc_init)
;;     2301586A (in rfc_apply_tx_dvga)
;;     230159F0 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc5_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000634
	c.lui	a4,FFFF8000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.lui	a4,00008000
	c.slli	a0,08
	addi	a4,a4,-00000100
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc4_setf: 23014EF4
;;   Called from:
;;     23015378 (in rfc_init)
;;     23015862 (in rfc_apply_tx_dvga)
;;     230159CA (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc4_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000634
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc11_setf: 23014F0C
;;   Called from:
;;     2301547E (in rfc_init)
;;     2301589A (in rfc_apply_tx_dvga)
;;     23015AD0 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc11_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000638
	lui	a4,00081000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,18
	lui	a4,0007F000
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc10_setf: 23014F2C
;;   Called from:
;;     23015456 (in rfc_init)
;;     23015892 (in rfc_apply_tx_dvga)
;;     23015AA8 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc10_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000638
	lui	a4,000FF810
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	lui	a4,000007F0
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc9_setf: 23014F4C
;;   Called from:
;;     23015430 (in rfc_init)
;;     2301588A (in rfc_apply_tx_dvga)
;;     23015A82 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc9_setf proc
	lui	a3,00040001
	lw	a5,a3,+00000638
	c.lui	a4,FFFF8000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.lui	a4,00008000
	c.slli	a0,08
	addi	a4,a4,-00000100
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc8_setf: 23014F6E
;;   Called from:
;;     2301540A (in rfc_init)
;;     23015882 (in rfc_apply_tx_dvga)
;;     23015A5C (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc8_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000638
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc15_setf: 23014F86
;;   Called from:
;;     2301551E (in rfc_init)
;;     230158C0 (in rfc_apply_tx_dvga)
;;     23015B6E (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc15_setf proc
	lui	a3,00040001
	lw	a5,a3,+0000063C
	lui	a4,00081000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,18
	lui	a4,0007F000
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+0000063C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc14_setf: 23014FA6
;;   Called from:
;;     230154F6 (in rfc_init)
;;     230158B2 (in rfc_apply_tx_dvga)
;;     23015B48 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc14_setf proc
	lui	a3,00040001
	lw	a5,a3,+0000063C
	lui	a4,000FF810
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	lui	a4,000007F0
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+0000063C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc13_setf: 23014FC6
;;   Called from:
;;     230154CE (in rfc_init)
;;     230158AA (in rfc_apply_tx_dvga)
;;     23015B20 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc13_setf proc
	lui	a3,00040001
	lw	a5,a3,+0000063C
	c.lui	a4,FFFF8000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.lui	a4,00008000
	c.slli	a0,08
	addi	a4,a4,-00000100
	c.and	a0,a4
	c.or	a0,a5
	sw	a0,a3,+0000063C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc12_setf: 23014FE8
;;   Called from:
;;     230154A6 (in rfc_init)
;;     230158A2 (in rfc_apply_tx_dvga)
;;     23015AF8 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc12_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000063C
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+0000063C
	c.jr	ra

;; wait_us: 23015000
;;   Called from:
;;     23015022 (in _print_channel_info)
;;     23015030 (in _print_channel_info)
;;     230155E0 (in rfc_init)
;;     230155F0 (in rfc_init)
;;     230156D0 (in rfc_config_channel)
;;     230156E0 (in rfc_config_channel)
;;     230156EC (in rfc_config_channel)
;;     230156F8 (in rfc_config_channel)
;;     2301570C (in rfc_config_channel)
;;     23015718 (in rfc_config_channel)
;;     2301572E (in rfc_config_channel)
;;     2301573A (in rfc_config_channel)
;;     230157C6 (in rfc_coex_force_to)
;;     23015804 (in rfc_coex_force_to)
wait_us proc
	c.addi	sp,FFFFFFF0
	c.slli	a0,04
	c.swsp	a0,00000084

l23015006:
	c.lwsp	a2,000000E4
	addi	a4,a5,-00000001
	c.swsp	a4,00000084
	c.bnez	a5,0000000023015006

l23015010:
	c.addi	sp,00000010
	c.jr	ra

;; _print_channel_info: 23015014
;;   Called from:
;;     2301573E (in rfc_config_channel)
_print_channel_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000008

l2301501C:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023015000
	c.bnez	s0,000000002301501C

l23015028:
	c.li	s0,00000008

l2301502A:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023015000
	c.bnez	s0,000000002301502A

l23015036:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rfc_init: 2301503E
;;   Called from:
;;     230133BC (in wifi_main)
rfc_init proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
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
	c.sdsp	s0,00000118
	c.sdsp	s1,00000018
	lui	a4,00040001
	lw	a5,a4,+00000220
	lui	a3,000FC000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	sw	a5,a4,+00000220
	lw	a5,a4,+00000220
	lui	a3,000F8000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00008000
	c.or	a5,a3
	sw	a5,a4,+00000220
	lui	a5,00001E85
	addi	a5,a5,-00000800
	c.mv	s1,a0
	beq	a0,a5,00000000230150E0

l23015096:
	bltu	a5,a0,00000000230150BA

l2301509A:
	lui	a5,000016E3
	addi	a5,a5,+00000600
	c.li	a0,00000000
	beq	s1,a5,00000000230150E2

l230150A8:
	lui	a5,000018CC
	addi	a5,a5,-00000580
	c.li	a0,00000001
	beq	s1,a5,00000000230150E2

l230150B6:
	c.li	a0,00000004
	c.j	00000000230150E2

l230150BA:
	lui	a5,00002626
	addi	a5,a5,-00000600
	beq	a0,a5,00000000230150B6

l230150C6:
	lui	a5,00003197
	addi	a5,a5,+00000500
	c.li	a0,00000005
	beq	s1,a5,00000000230150E2

l230150D4:
	lui	a5,0000249F
	bne	s1,a5,00000000230150B6

l230150DC:
	c.li	a0,00000003
	c.j	00000000230150E2

l230150E0:
	c.li	a0,00000002

l230150E2:
	lui	s0,0004200E
	jal	ra,0000000023016F3A
	addi	s0,s0,-0000032C
	lbu	a0,s0,+00000000
	c.li	a1,00000001
	lui	s2,0004200E
	sltiu	a0,a0,+00000001
	jal	ra,0000000023018BC0
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lui	s0,000000F4
	addi	s0,s0,+00000240
	srl	s0,s1,s0
	c.mv	a0,s0
	jal	ra,0000000023070684
	lui	a5,00002626
	sw	a0,s2,+00000910
	sw	a1,s2,+00000914
	addi	a5,a5,-00000600
	beq	s1,a5,0000000023015622

l2301512C:
	lui	a5,00023077
	flw	fa0,4036(a5)

l23015134:
	fcvt.s.w	fs0,s0
	lui	s0,00040001
	lw	a5,s0,+000001C0
	c.lui	a4,FFFFF000
	c.lui	s1,00001000
	c.and	a4,a5
	fcvt.wu.s	a5,fa0
	addi	a3,s1,-00000001
	lui	s2,000E0000
	c.and	a5,a3
	c.or	a5,a4
	sw	a5,s0,+000001C0
	lui	a5,00023077
	flw	fa5,4040(a5)
	lui	a5,00023077
	lw	a0,s0,+000001C4
	fmul.s	fa0,fa0,fa5
	flw	fa5,4044(a5)
	lui	a5,00023077
	flw	fs1,4048(a5)
	lui	s4,00023076
	fdiv.s	fa0,fa0,fa5
	and	s2,a0,s2
	lui	s3,000FFF00
	addi	s1,s1,-0000069C
	c.mv	s7,s1
	addi	s0,s0,+0000013C
	fdiv.s	fa0,fa0,fs0
	fmul.s	fa0,fa0,fs1
	jal	ra,0000000023070708
	lw	a2,s4,+000007A8
	lw	a3,s4,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070510
	lui	a5,00023077
	flw	fa0,4052(a5)
	c.slli	a0,03
	c.srli	a0,00000003
	fdiv.s	fa0,fa0,fs0
	or	a0,a0,s2
	sw	a0,s0,+00000088
	lw	a0,s0,+0000008C
	lui	s2,00000100
	c.addi	s2,FFFFFFFF
	and	s5,a0,s3
	fmul.s	fa0,fa0,fs1
	jal	ra,0000000023070708
	lw	a2,s4,+000007A8
	lw	a3,s4,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070510
	lui	a5,00023077
	flw	fa0,4056(a5)
	and	a0,a0,s2
	or	a0,a0,s5
	fdiv.s	fa0,fa0,fs0
	sw	a0,s0,+0000008C
	lw	a0,s0,+00000090
	c.li	s5,00000000
	and	s3,a0,s3
	fmul.s	fa0,fa0,fs1
	jal	ra,0000000023070708
	lw	a2,s4,+000007A8
	lw	a3,s4,+000007AC
	c.li	s4,00000000
	jal	ra,000000002306DAA4
	jal	ra,0000000023070510
	and	a0,a0,s2
	or	a0,a0,s3
	c.lui	s3,00001000
	sw	a0,s0,+00000090
	addi	s8,s3,-0000064C
	addi	s6,s3,-00000648

l23015240:
	c.mv	a0,s1
	jal	ra,0000000023017B5E
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023017BA8
	bne	s1,s7,0000000023015254

l23015252:
	c.addi	s2,00000001

l23015254:
	c.slli	s2,08
	andi	a5,s4,+00000001
	or	a0,s2,a0
	beq	a5,zero,000000002301562C

l23015262:
	srai	a5,s4,00000001
	c.slli	a0,10
	c.slli	a5,02
	or	s5,s5,a0
	c.add	a5,s0
	sw	s5,a5,+00000000

l23015274:
	bne	s1,s8,0000000023015284

l23015278:
	srai	a5,s4,00000001
	c.slli	a5,02
	c.add	a5,s0
	sw	s5,a5,+00000000

l23015284:
	c.addi	s1,00000004
	c.addi	s4,00000001
	bne	s1,s6,0000000023015240

l2301528C:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	c.lui	s11,FFFF9000
	c.addi	s11,FFFFFFFF
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.lui	s10,00007000
	lui	s9,000FFF90
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	c.addi	s9,FFFFFFFF
	lui	s8,00000070
	jal	ra,0000000023014E7A
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	lui	s7,000FF900
	c.addi	s7,FFFFFFFF
	andi	a4,a5,-00000071
	c.lwsp	s0,000000E4
	lui	s6,00000700
	lui	s5,000F9000
	c.slli	a5,04
	andi	a5,a5,+00000070
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	c.addi	s5,FFFFFFFF
	lui	s4,00007000
	jal	ra,0000000023014E58
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	lui	s2,00090000
	lui	s1,00070000
	andi	a4,a5,-00000701
	c.lwsp	s0,000000E4
	c.addi	s2,FFFFFFFF
	addi	s3,s3,+00000040
	c.slli	a5,08
	andi	a5,a5,+00000700
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E38
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s11
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s10
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E18
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s9
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s8
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014EF4
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s7
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s6
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014ED2
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s5
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014EB2
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023017C66
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E92
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023017C66
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F6E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000009
	jal	ra,0000000023017C66
	lw	a5,s0,+00000644
	andi	a4,a5,-00000071
	c.lwsp	s0,000000E4
	c.slli	a5,04
	andi	a5,a5,+00000070
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F4C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F2C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	and	s11,a2,s11
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s10
	or	a2,a2,s11
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F0C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	and	s9,a2,s9
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s8
	or	a2,a2,s9
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FE8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023017C66
	lw	a3,s0,+00000644
	and	s7,a3,s7
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s6
	or	a3,a3,s7
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FC6
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023017C66
	lw	a4,s0,+00000644
	and	s5,a4,s5
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s4
	or	a4,a4,s5
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FA6
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023017C66
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	c.lui	s1,FFFF0000
	jal	ra,0000000023014F86
	c.lw	s0,4(a5)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.sw	s0,4(a5)
	c.li	a0,00000000
	jal	ra,0000000023014E04
	lw	a5,s0,+00000268
	c.li	a0,00000001
	c.and	a5,s1
	or	s3,a5,s3
	sw	s3,s0,+00000268
	jal	ra,0000000023014DF4
	c.lw	s0,12(a4)
	lui	a5,00080000
	lui	a3,00081000
	ori	a4,a4,+00000004
	c.sw	s0,12(a4)
	lw	a4,s0,+00000600
	c.addi	a3,FFFFFFFF
	c.li	a0,00000001
	c.or	a4,a5
	sw	a4,s0,+00000600
	lw	a4,s0,+00000600
	c.and	a4,a3
	sw	a4,s0,+00000600
	c.lw	s0,12(a4)
	ori	a4,a4,+00000020
	c.sw	s0,12(a4)
	c.lw	s0,12(a4)
	ori	a4,a4,+00000002
	c.sw	s0,12(a4)
	lui	a4,00044C0C
	lw	a5,a4,+00000218
	c.and	a5,s1
	sw	a5,a4,+00000218
	lui	a5,00044C03
	lui	a4,0000A028
	sw	zero,a5,+00000030
	addi	a4,a4,-00000081
	c.sw	a5,52(a4)
	lui	a4,00023282
	addi	a4,a4,+00000317
	c.sw	a5,56(a4)
	lui	a4,0007F021
	addi	a4,a4,-000005E9
	c.sw	a5,60(a4)
	addi	a4,zero,+0000007F
	c.sw	a5,64(a4)
	lw	a5,s0,+00000220
	lui	a4,000F8000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	a5,s0,+00000220
	c.lw	s0,4(a5)
	lui	s1,0004000E
	c.andi	a5,FFFFFFF3
	c.sw	s0,4(a5)
	lw	a5,s1,+0000041C
	andi	a5,a5,-00000041
	sw	a5,s1,+0000041C
	jal	ra,0000000023015000
	c.lw	s0,4(a5)
	c.li	a0,00000001
	c.andi	a5,FFFFFFF3
	ori	a5,a5,+00000004
	c.sw	s0,4(a5)
	jal	ra,0000000023015000
	lw	a5,s1,+0000041C
	ori	a5,a5,+00000040
	sw	a5,s1,+0000041C
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
	c.ldsp	t3,00000008
	c.ldsp	s8,00000048
	c.addi16sp	00000060
	c.jr	ra

l23015622:
	lui	a5,00023077
	flw	fa0,4032(a5)
	c.j	0000000023015134

l2301562C:
	c.mv	s5,a0
	c.j	0000000023015274

;; rfc_rxdfe_set_notch0: 23015630
;;   Called from:
;;     2301579A (in rfc_config_channel)
rfc_rxdfe_set_notch0 proc
	lui	a5,00040001
	lw	a4,a5,+00000700
	c.andi	a1,00000007
	c.lui	a3,FFFF0000
	c.andi	a4,FFFFFFF8
	c.or	a1,a4
	sw	a1,a5,+00000700
	lw	a4,a5,+00000700
	addi	a3,a3,+000000FF
	c.slli	a2,08
	c.and	a4,a3
	c.lui	a3,00010000
	c.addi	a3,FFFFFFFF
	c.and	a2,a3
	c.or	a2,a4
	sw	a2,a5,+00000700
	lw	a4,a5,+00000700
	c.slli	a0,06
	andi	a0,a0,+00000040
	andi	a4,a4,-00000041
	c.or	a0,a4
	sw	a0,a5,+00000700
	c.jr	ra

;; rfc_config_channel: 23015672
;;   Called from:
;;     230139B8 (in rf_set_channel)
rfc_config_channel proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s0,00040001
	c.swsp	s2,00000008
	lw	a5,s0,+00000228
	c.lui	a4,FFFFF000
	c.lui	s1,FFFE0000
	ori	a5,a5,+00000008
	sw	a5,s0,+00000228
	c.lw	s0,12(a5)
	c.addi	s1,FFFFFFFF
	c.mv	s2,a0
	ori	a5,a5,+00000040
	c.sw	s0,12(a5)
	c.lw	s0,12(a5)
	ori	a5,a5,+00000200
	c.sw	s0,12(a5)
	c.lw	s0,12(a5)
	ori	a5,a5,+00000001
	c.sw	s0,12(a5)
	lw	a5,s0,+00000264
	c.and	a4,a5
	slli	a5,a0,00000014
	c.srli	a5,00000014
	c.or	a5,a4
	sw	a5,s0,+00000264
	lw	a5,s0,+00000268
	lui	a4,00000020
	c.li	a0,0000000A
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000268
	jal	ra,0000000023015000
	lw	a5,s0,+00000268
	c.li	a0,0000000A
	c.and	s1,a5
	sw	s1,s0,+00000268
	jal	ra,0000000023015000
	c.li	a0,00000000
	jal	ra,0000000023014DF4
	c.li	a0,0000000A
	jal	ra,0000000023015000
	c.li	a0,00000001
	jal	ra,0000000023014DF4
	c.li	a0,0000000A
	jal	ra,0000000023015000
	lw	a5,s0,+0000026C
	c.li	a0,0000000A
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000001
	sw	a5,s0,+0000026C
	jal	ra,0000000023015000
	c.li	a0,00000001
	jal	ra,0000000023014E04
	c.li	a0,0000000A
	jal	ra,0000000023015000
	lw	a5,s0,+0000026C
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000002
	sw	a5,s0,+0000026C
	jal	ra,0000000023015000
	c.li	a0,00000000
	jal	ra,0000000023014E04
	c.li	a0,0000000A
	jal	ra,0000000023015000
	jal	ra,0000000023015014
	c.mv	a0,s2
	jal	ra,0000000023016C76
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.mv	a0,s2
	jal	ra,0000000023016C42
	c.lwsp	a2,00000044
	jal	ra,00000000230705D8
	lui	a5,00023077
	lw	a2,a5,-00000050
	lw	a3,a5,-0000004C
	jal	ra,000000002306E5F4
	lui	a5,00023077
	lw	a2,a5,-00000048
	lw	a3,a5,-00000044
	jal	ra,000000002306F140
	lui	a5,00023076
	lw	a2,a5,+000007A8
	lw	a3,a5,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070414
	slli	a2,a0,00000018
	lbu	a0,sp,+0000000B
	c.srai	a2,00000018
	c.li	a1,00000001
	jal	ra,0000000023015630
	lw	a5,s0,+00000228
	c.andi	a5,FFFFFFF7
	sw	a5,s0,+00000228
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; rfc_coex_force_to: 230157B4
;;   Called from:
;;     230132A2 (in coex_wifi_rf_forece_enable)
rfc_coex_force_to proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023014DF4
	c.li	a0,0000000A
	jal	ra,0000000023015000
	lui	a5,00040001
	lw	a4,a5,+00000220
	c.lwsp	a2,00000064
	lui	a3,000FC000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.slli	a1,1A
	lui	a3,00004000
	c.and	a1,a3
	c.or	a1,a4
	sw	a1,a5,+00000220
	lw	a4,a5,+00000220
	lui	a3,000F8000
	c.addi	a3,FFFFFFFF
	sltu	s0,zero,s0
	c.and	a4,a3
	c.slli	s0,1B
	c.or	s0,a4
	sw	s0,a5,+00000220
	c.li	a0,0000000A
	jal	ra,0000000023015000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023014DF4

;; rfc_get_power_level: 23015814
;;   Called from:
;;     230145D8 (in phy_get_rf_gain_idx)
rfc_get_power_level proc
	c.addi	sp,FFFFFFF0
	c.mv	a5,a0
	c.swsp	ra,00000084
	c.mv	a0,a1
	c.li	a1,00000000
	c.beqz	a5,000000002301582A

l23015820:
	c.li	a4,00000001
	c.li	a1,00000001
	beq	a5,a4,000000002301582A

l23015828:
	c.li	a1,00000002

l2301582A:
	jal	ra,0000000023017C2E
	c.lwsp	a2,00000020
	c.slli	a0,02
	c.addi	sp,00000010
	c.jr	ra

;; rfc_apply_tx_dvga: 23015836
;;   Called from:
;;     23017D0E (in rf_pri_tx_gain_comp)
rfc_apply_tx_dvga proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	lb	a0,a0,+00000000
	jal	ra,0000000023014E7A
	lb	a0,s0,+00000001
	jal	ra,0000000023014E58
	lb	a0,s0,+00000002
	jal	ra,0000000023014E38
	lb	a0,s0,+00000003
	jal	ra,0000000023014E18
	lb	a0,s0,+00000004
	jal	ra,0000000023014EF4
	lb	a0,s0,+00000005
	jal	ra,0000000023014ED2
	lb	a0,s0,+00000006
	jal	ra,0000000023014EB2
	lb	a0,s0,+00000007
	jal	ra,0000000023014E92
	lb	a0,s0,+00000008
	jal	ra,0000000023014F6E
	lb	a0,s0,+00000009
	jal	ra,0000000023014F4C
	lb	a0,s0,+0000000A
	jal	ra,0000000023014F2C
	lb	a0,s0,+0000000B
	jal	ra,0000000023014F0C
	lb	a0,s0,+0000000C
	jal	ra,0000000023014FE8
	lb	a0,s0,+0000000D
	jal	ra,0000000023014FC6
	lb	a0,s0,+0000000E
	jal	ra,0000000023014FA6
	lb	a0,s0,+0000000F
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014F86

;; rfc_apply_tx_power_offset: 230158C4
;;   Called from:
;;     230140EE (in phy_hw_set_channel)
rfc_apply_tx_power_offset proc
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
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	jal	ra,0000000023016BD8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	c.lui	s10,FFFF9000
	c.addi	s10,FFFFFFFF
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.lui	s9,00007000
	lui	s8,000FFF90
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	c.addi	s8,FFFFFFFF
	lui	s7,00000070
	jal	ra,0000000023014E7A
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	lui	s6,000FF900
	c.addi	s6,FFFFFFFF
	andi	a4,a5,-00000071
	c.lwsp	s0,000000E4
	lui	s5,00000700
	lui	s4,000F9000
	c.slli	a5,04
	andi	a5,a5,+00000070
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	c.addi	s4,FFFFFFFF
	lui	s3,00007000
	jal	ra,0000000023014E58
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	lui	s2,00090000
	lui	s1,00070000
	andi	a4,a5,-00000701
	c.lwsp	s0,000000E4
	c.addi	s2,FFFFFFFF
	c.slli	a5,08
	andi	a5,a5,+00000700
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E38
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s10
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s9
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E18
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s8
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s7
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014EF4
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s6
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s5
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014ED2
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023017C66
	lw	a5,s0,+00000640
	and	a4,a5,s4
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s3
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014EB2
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023017C66
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023014E92
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023017C66
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F6E
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,00000009
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	andi	a5,a2,-00000071
	c.lwsp	s0,00000084
	c.slli	a2,04
	andi	a2,a2,+00000070
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F4C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F2C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	and	s10,a2,s10
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s9
	or	a2,a2,s10
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F0C
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023017C66
	lw	a2,s0,+00000644
	and	s8,a2,s8
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s7
	or	a2,a2,s8
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FE8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023017C66
	lw	a3,s0,+00000644
	and	s6,a3,s6
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s5
	or	a3,a3,s6
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FC6
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023017C66
	lw	a4,s0,+00000644
	and	s4,a4,s4
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s3
	or	a4,a4,s4
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014FA6
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023017C66
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023014F86
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

;; rf_pri_set_gain_table_regs: 23015B8E
;;   Called from:
;;     23016C3E (in rf_pri_update_tx_power_offset)
;;     23018D8A (in rf_pri_init)
rf_pri_set_gain_table_regs proc
	lui	a4,00040001
	lui	a5,00042012
	addi	a5,a5,-0000048C
	lw	a2,a4,+00000118
	lw	a3,a5,+00000194
	c.lui	a1,FFFFD000
	c.andi	a2,FFFFFFE0
	c.or	a2,a3
	lw	a3,a5,+00000190
	andi	a2,a2,-00000701
	addi	t6,a1,-00000001
	c.slli	a3,08
	c.or	a3,a2
	and	a2,a3,t6
	lw	a3,a5,+0000018C
	c.lui	a0,FFFF4000
	addi	t5,a0,-00000001
	c.slli	a3,0C
	c.or	a3,a2
	lw	a2,a5,+00000188
	and	a3,a3,t5
	lui	a1,000FFE10
	c.slli	a2,0E
	addi	t4,a1,-00000001
	c.or	a2,a3
	and	a3,a2,t4
	lw	a2,a5,+0000015C
	lui	t1,000D0000
	c.addi	t1,FFFFFFFF
	c.slli	a2,10
	c.or	a2,a3
	lui	a3,000F9000
	addi	t3,a3,-00000001
	and	a3,a2,t3
	lw	a2,a5,+00000158
	c.slli	a2,18
	c.or	a2,a3
	lw	a3,a5,+00000154
	and	a2,a2,t1
	c.slli	a3,1C
	c.or	a2,a3
	lui	a3,00040000
	addi	a7,a3,-00000001
	and	a3,a2,a7
	lw	a2,a5,+00000150
	c.slli	a2,1E
	c.or	a3,a2
	sw	a3,a4,+00000118
	lw	a2,a4,+0000011C
	lw	a3,a5,+00000124
	c.andi	a2,FFFFFFE0
	c.or	a2,a3
	lw	a3,a5,+00000120
	andi	a2,a2,-00000701
	c.slli	a3,08
	c.or	a3,a2
	and	a2,a3,t6
	lw	a3,a5,+0000011C
	c.slli	a3,0C
	c.or	a3,a2
	lw	a2,a5,+00000118
	and	a3,a3,t5
	c.slli	a2,0E
	c.or	a2,a3
	and	a3,a2,t4
	lw	a2,a5,+000000EC
	c.slli	a2,10
	c.or	a2,a3
	lw	a3,a5,+000000E8
	and	a2,a2,t3
	c.slli	a3,18
	c.or	a3,a2
	and	a2,a3,t1
	lw	a3,a5,+000000E4
	c.slli	a3,1C
	c.or	a3,a2
	lw	a2,a5,+000000E0
	and	a3,a3,a7
	c.slli	a2,1E
	c.or	a3,a2
	sw	a3,a4,+0000011C
	lw	a2,a4,+00000120
	lw	a6,a5,+000000B4
	c.lw	a5,112(a3)
	c.andi	a2,FFFFFFE0
	or	a2,a2,a6
	lw	a6,a5,+000000B0
	andi	a2,a2,-00000701
	c.slli	a3,1E
	c.slli	a6,08
	or	a6,a6,a2
	and	a2,a6,t6
	lw	a6,a5,+000000AC
	c.slli	a6,0C
	or	a6,a6,a2
	lw	a2,a5,+000000A8
	and	a6,a6,t5
	c.slli	a2,0E
	or	a2,a2,a6
	and	a6,a2,t4
	c.lw	a5,124(a2)
	c.slli	a2,10
	or	a2,a2,a6
	lw	a6,a5,+00000078
	and	a2,a2,t3
	c.slli	a6,18
	or	a6,a6,a2
	and	a2,a6,t1
	lw	a6,a5,+00000074
	c.slli	a6,1C
	or	a6,a6,a2
	and	a6,a6,a7
	or	a6,a3,a6
	sw	a6,a4,+00000120
	lw	a6,a4,+00000124
	c.lw	a5,68(a1)
	andi	a6,a6,-00000020
	or	a6,a6,a1
	c.lw	a5,64(a1)
	c.lw	a5,60(a0)
	andi	a6,a6,-00000701
	c.slli	a1,08
	or	a1,a1,a6
	c.slli	a0,0C
	and	a1,a1,t6
	c.or	a1,a0
	and	a0,a1,t5
	c.lw	a5,56(a1)
	c.lw	a5,12(a3)
	c.lw	a5,8(a2)
	c.slli	a1,0E
	c.or	a1,a0
	and	a1,a1,t4
	c.slli	a3,10
	c.or	a3,a1
	c.slli	a2,18
	and	a3,a3,t3
	c.or	a3,a2
	and	a2,a3,t1
	c.lw	a5,4(a3)
	c.lw	a5,0(a5)
	c.slli	a3,1C
	c.or	a3,a2
	and	a3,a3,a7
	c.slli	a5,1E
	c.or	a3,a5
	sw	a3,a4,+00000124
	c.jr	ra

;; rf_pri_manu_pu: 23015D58
;;   Called from:
;;     23017E3A (in rf_pri_txcal)
;;     230181B0 (in rf_pri_roscal)
;;     230183D8 (in rf_pri_rccal)
;;     2301861A (in rf_pri_lo_acal)
;;     23018796 (in rf_pri_fcal)
rf_pri_manu_pu proc
	lui	a5,00040001
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	sw	zero,a5,+0000000C
	c.li	a4,00000005
	beq	a0,a4,0000000023015DC6

l23015D6C:
	bltu	a4,a0,0000000023015D94

l23015D70:
	c.li	a4,00000004
	beq	a0,a4,0000000023015DB0

l23015D76:
	lui	a3,00040001
	c.lw	a3,48(a5)
	lui	a4,0002DF10
	addi	a4,a4,-00000101
	c.and	a5,a4
	lui	a4,00025F07
	addi	a4,a4,-00000200
	c.or	a5,a4
	c.sw	a3,48(a5)
	c.jr	ra

l23015D94:
	c.li	a4,00000007
	bltu	a4,a0,0000000023015D76

l23015D9A:
	c.lw	a5,48(a4)
	lui	a3,00008F09
	addi	a3,a3,+000000FF
	c.and	a4,a3
	lui	a3,00000F00

l23015DAA:
	c.or	a4,a3
	c.sw	a5,48(a4)
	c.jr	ra

l23015DB0:
	c.lw	a5,48(a4)
	lui	a3,0002CF90
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,00024F87

l23015DC0:
	addi	a3,a3,-00000800
	c.j	0000000023015DAA

l23015DC6:
	c.lw	a5,48(a4)
	lui	a3,000CF000
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,000C6FF7
	c.j	0000000023015DC0

;; rf_pri_save_state_for_cal: 23015DD8
;;   Called from:
;;     23017E34 (in rf_pri_txcal)
;;     230181AA (in rf_pri_roscal)
;;     230183D2 (in rf_pri_rccal)
;;     23018612 (in rf_pri_lo_acal)
;;     23018790 (in rf_pri_fcal)
rf_pri_save_state_for_cal proc
	lui	a5,00040001
	c.lw	a5,4(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D10
	c.lw	a5,12(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D1C
	c.lw	a5,28(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D18
	c.lw	a5,48(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D08
	lw	a3,a5,+000000B8
	lui	a4,0004200E
	sw	a3,a4,+00000D00
	lw	a3,a5,+000000C0
	lui	a4,0004200E
	sw	a3,a4,+00000D24
	lw	a3,a5,+000000C4
	lui	a4,0004200E
	sw	a3,a4,+00000D28
	lw	a3,a5,+00000084
	lui	a4,0004200E
	sw	a3,a4,+00000D0C
	lw	a3,a5,+0000008C
	lui	a4,0004200E
	sw	a3,a4,+00000CEC
	lw	a3,a5,+00000600
	lui	a4,0004200E
	sw	a3,a4,+00000CF0
	lw	a3,a5,+0000060C
	lui	a4,0004200E
	sw	a3,a4,+00000CF4
	lw	a3,a5,+00000618
	lui	a4,0004200E
	sw	a3,a4,+00000CF8
	lw	a3,a5,+0000061C
	lui	a4,0004200E
	sw	a3,a4,+00000CFC
	c.lw	a5,72(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D4C
	lw	a3,a5,+0000020C
	lui	a4,0004200E
	sw	a3,a4,+00000D2C
	lw	a3,a5,+00000214
	lui	a4,0004200E
	sw	a3,a4,+00000D30
	lw	a3,a5,+00000218
	lui	a4,0004200E
	sw	a3,a4,+00000D34
	lw	a3,a5,+0000023C
	lui	a4,0004200E
	sw	a3,a4,+00000D38
	lw	a3,a5,+00000240
	lui	a4,0004200E
	sw	a3,a4,+00000D3C
	lw	a3,a5,+00000244
	lui	a4,0004200E
	sw	a3,a4,+00000D40
	lw	a3,a5,+000000F0
	lui	a4,0004200E
	sw	a3,a4,+00000D14
	c.lw	a5,100(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D04
	c.lw	a5,88(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D48
	lw	a3,a5,+00000220
	lui	a4,0004200E
	sw	a3,a4,+00000D20
	c.lw	a5,112(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000D44
	lw	a4,a5,+000000A4
	lui	a5,0004200E
	sw	a4,a5,+00000D50
	c.jr	ra

;; rf_pri_restore_state_for_cal: 23015F06
;;   Called from:
;;     230180D6 (in rf_pri_txcal)
;;     23018386 (in rf_pri_roscal)
;;     230185AC (in rf_pri_rccal)
;;     23018702 (in rf_pri_lo_acal)
;;     2301897C (in rf_pri_fcal)
rf_pri_restore_state_for_cal proc
	lui	a5,0004200E
	lw	a4,a5,-000002F0
	lui	a5,00040001
	c.sw	a5,4(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002E4
	c.sw	a5,12(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002E8
	c.sw	a5,28(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002F8
	c.sw	a5,48(a4)
	lui	a4,0004200E
	lw	a4,a4,-00000300
	sw	a4,a5,+000000B8
	lui	a4,0004200E
	lw	a4,a4,-000002DC
	sw	a4,a5,+000000C0
	lui	a4,0004200E
	lw	a4,a4,-000002D8
	sw	a4,a5,+000000C4
	lui	a4,0004200E
	lw	a4,a4,-000002F4
	sw	a4,a5,+00000084
	lui	a4,0004200E
	lw	a4,a4,-00000314
	sw	a4,a5,+0000008C
	lui	a4,0004200E
	lw	a4,a4,-00000310
	sw	a4,a5,+00000600
	lui	a4,0004200E
	lw	a4,a4,-0000030C
	sw	a4,a5,+0000060C
	lui	a4,0004200E
	lw	a4,a4,-00000308
	sw	a4,a5,+00000618
	lui	a4,0004200E
	lw	a4,a4,-00000304
	sw	a4,a5,+0000061C
	lui	a4,0004200E
	lw	a4,a4,-000002B4
	c.sw	a5,72(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002D4
	sw	a4,a5,+0000020C
	lui	a4,0004200E
	lw	a4,a4,-000002D0
	sw	a4,a5,+00000214
	lui	a4,0004200E
	lw	a4,a4,-000002CC
	sw	a4,a5,+00000218
	lui	a4,0004200E
	lw	a4,a4,-000002C8
	sw	a4,a5,+0000023C
	lui	a4,0004200E
	lw	a4,a4,-000002C4
	sw	a4,a5,+00000240
	lui	a4,0004200E
	lw	a4,a4,-000002C0
	sw	a4,a5,+00000244
	lui	a4,0004200E
	lw	a4,a4,-000002EC
	sw	a4,a5,+000000F0
	lui	a4,0004200E
	lw	a4,a4,-000002FC
	c.sw	a5,100(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002B8
	c.sw	a5,88(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002E0
	sw	a4,a5,+00000220
	lui	a4,0004200E
	lw	a4,a4,-000002BC
	c.sw	a5,112(a4)
	lui	a4,0004200E
	lw	a4,a4,-000002B0
	sw	a4,a5,+000000A4
	c.jr	ra

;; rf_pri_singen_start: 23016034
;;   Called from:
;;     230166D4 (in rf_pri_rccal_iq)
;;     2301672E (in rf_pri_rccal_iq)
;;     23017F34 (in rf_pri_txcal)
rf_pri_singen_start proc
	lui	a5,00040001
	lw	a3,a5,+0000020C
	lui	a2,00080000
	xori	a4,a2,-00000001
	c.and	a3,a4
	sw	a3,a5,+0000020C
	lw	a4,a5,+0000020C
	c.or	a4,a2
	sw	a4,a5,+0000020C
	c.jr	ra

;; rf_pri_pm_pwr: 23016056
;;   Called from:
;;     2301655E (in rf_pri_txcal_search_core)
;;     230165A8 (in rf_pri_txcal_search_core)
;;     230165C2 (in rf_pri_txcal_search_core)
;;     230166FA (in rf_pri_rccal_iq)
;;     23016760 (in rf_pri_rccal_iq)
;;     23016782 (in rf_pri_rccal_iq)
rf_pri_pm_pwr proc
	lui	a5,00040001
	lw	a4,a5,+00000618
	lui	a3,000DFF00
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	sw	a4,a5,+00000618
	lw	a4,a5,+00000618
	lui	a3,00020100
	c.or	a4,a3
	sw	a4,a5,+00000618

l23016078:
	lw	a4,a5,+00000618
	addi	a2,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,0000000023016078

l23016088:
	lw	a0,a5,+00000620
	lw	a5,a5,+00000624
	c.lw	a2,0(a4)
	c.slli	a0,07
	c.slli	a5,07
	c.srai	a0,00000010
	c.srai	a5,00000010
	add	a5,a5,a5
	lui	a3,000DFF00
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a2,0(a4)
	add	a0,a0,a0
	c.add	a0,a5
	c.jr	ra

;; rf_pri_start_txdfe: 230160B0
;;   Called from:
;;     230166D8 (in rf_pri_rccal_iq)
;;     23016732 (in rf_pri_rccal_iq)
;;     23017F38 (in rf_pri_txcal)
;;     23018A18 (in rf_pri_full_cal)
rf_pri_start_txdfe proc
	lui	a5,00040001
	lw	a4,a5,+00000220
	c.lui	a3,FFFFE000
	addi	a3,a3,+000007FF
	andi	a4,a4,-00000181
	sw	a4,a5,+00000220
	lw	a4,a5,+00000220
	c.and	a4,a3
	c.lui	a3,00001000
	addi	a3,a3,+00000082
	c.or	a4,a3
	sw	a4,a5,+00000220
	lw	a4,a5,+00000220
	ori	a4,a4,+00000100
	sw	a4,a5,+00000220
	c.jr	ra

;; rf_pri_pm_pwr_avg: 230160E6
;;   Called from:
;;     230166F6 (in rf_pri_rccal_iq)
;;     23016964 (in rf_pri_roscal_iq.isra.3)
;;     230169A0 (in rf_pri_roscal_iq.isra.3)
;;     23017F4C (in rf_pri_txcal)
;;     23017F8C (in rf_pri_txcal)
rf_pri_pm_pwr_avg proc
	lui	a5,00040001
	lw	a4,a5,+00000618
	lui	a3,000DFF00
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	sw	a4,a5,+00000618
	lw	a4,a5,+0000061C
	c.slli	a1,10
	lui	a3,00020000
	c.slli	a4,10
	c.srli	a4,00000010
	c.or	a1,a4
	sw	a1,a5,+0000061C
	lw	a4,a5,+00000618
	c.or	a4,a3
	sw	a4,a5,+00000618

l23016118:
	lw	a4,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,0000000023016118

l23016124:
	c.beqz	a0,0000000023016144

l23016126:
	lw	a0,a5,+00000620

l2301612A:
	lui	a3,00040001
	lw	a5,a3,+00000618
	lui	a4,000DFF00
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,07
	sw	a5,a3,+00000618
	c.srai	a0,00000007
	c.jr	ra

l23016144:
	lw	a0,a5,+00000624
	c.j	000000002301612A

;; rf_pri_txcal_config_hw: 2301614A
;;   Called from:
;;     230180C8 (in rf_pri_txcal)
;;     23018B56 (in rf_pri_restore_cal_reg)
rf_pri_txcal_config_hw proc
	lui	a4,0004200E
	lw	a1,a4,-000006D4
	lui	a5,00040001
	lw	a3,a5,+00000180
	c.lw	a1,104(a2)
	c.lui	a7,FFFFC000
	andi	a3,a3,-00000040
	andi	a2,a2,+0000003F
	addi	a7,a7,+000000FF
	c.or	a2,a3
	and	a3,a2,a7
	c.lw	a1,104(a2)
	lui	a0,000C1000
	c.addi	a0,FFFFFFFF
	c.srli	a2,00000006
	andi	a2,a2,+0000003F
	c.slli	a2,08
	c.or	a2,a3
	lui	a3,000FFC10
	addi	a6,a3,-00000001
	c.lw	a1,112(a3)
	and	a2,a2,a6
	andi	a3,a3,+0000003F
	c.slli	a3,10
	c.or	a2,a3
	and	a3,a2,a0
	c.lw	a1,112(a2)
	c.srli	a2,00000006
	andi	a2,a2,+0000003F
	c.slli	a2,18
	c.or	a2,a3
	sw	a2,a5,+00000180
	lw	a1,a4,-000006D4
	lw	a3,a5,+00000184
	c.lw	a1,120(a2)
	andi	a3,a3,-00000040
	andi	a2,a2,+0000003F
	c.or	a2,a3
	and	a3,a2,a7
	c.lw	a1,120(a2)
	c.srli	a2,00000006
	andi	a2,a2,+0000003F
	c.slli	a2,08
	c.or	a2,a3
	lw	a3,a1,+00000080
	and	a2,a2,a6
	andi	a3,a3,+0000003F
	c.slli	a3,10
	c.or	a2,a3
	and	a3,a2,a0
	lw	a2,a1,+00000080
	c.srli	a2,00000006
	andi	a2,a2,+0000003F
	c.slli	a2,18
	c.or	a2,a3
	sw	a2,a5,+00000184
	lw	t1,a4,-000006D4
	lw	a3,a5,+00000188
	lw	a2,t1,+00000088
	andi	a3,a3,-00000040
	andi	a2,a2,+0000003F
	c.or	a2,a3
	and	a3,a2,a7
	lw	a2,t1,+00000088
	lw	a1,t1,+00000090
	c.srli	a2,00000006
	andi	a2,a2,+0000003F
	c.slli	a2,08
	c.or	a2,a3
	andi	a1,a1,+0000003F
	c.slli	a1,10
	and	a2,a2,a6
	c.or	a2,a1
	lw	a1,t1,+00000090
	c.and	a2,a0
	c.srli	a1,00000006
	andi	a1,a1,+0000003F
	c.slli	a1,18
	c.or	a1,a2
	sw	a1,a5,+00000188
	lw	a3,a5,+0000018C
	lw	a1,a4,-000006D4
	andi	a2,a3,-00000040
	lw	a3,a1,+00000098
	andi	a3,a3,+0000003F
	c.or	a3,a2
	and	a7,a3,a7
	lw	a3,a1,+00000098
	lw	a2,a1,+000000A0
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,08
	or	a3,a3,a7
	andi	a2,a2,+0000003F
	c.slli	a2,10
	and	a3,a3,a6
	c.or	a3,a2
	and	a2,a3,a0
	lw	a3,a1,+000000A0
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,18
	c.or	a3,a2
	sw	a3,a5,+0000018C
	lw	a0,a4,-000006D4
	lw	a3,a5,+00000190
	lui	a2,000F8010
	c.addi	a2,FFFFFFFF
	and	a1,a3,a2
	c.lw	a0,104(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	c.lw	a0,108(a1)
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+00000190
	lw	a3,a5,+00000194
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	c.lw	a0,112(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	c.lw	a0,116(a1)
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+00000194
	lw	a3,a5,+00000198
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	c.lw	a0,120(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	c.lw	a0,124(a1)
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+00000198
	lw	a3,a5,+0000019C
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	lw	a3,a0,+00000080
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	lw	a1,a0,+00000084
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+0000019C
	lw	a3,a5,+000001A0
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	lw	a3,a0,+00000088
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	lw	a1,a0,+0000008C
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+000001A0
	lw	a3,a5,+000001A4
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	lw	a3,a0,+00000090
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	lw	a1,a0,+00000094
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+000001A4
	lw	a3,a5,+000001A8
	lw	a0,a4,-000006D4
	and	a1,a3,a2
	lw	a3,a0,+00000098
	c.srli	a3,0000000C
	andi	a3,a3,+000007FF
	c.slli	a3,10
	c.or	a3,a1
	lw	a1,a0,+0000009C
	andi	a3,a3,-00000400
	andi	a1,a1,+000003FF
	c.or	a3,a1
	sw	a3,a5,+000001A8
	lw	a3,a5,+000001AC
	c.and	a2,a3
	lw	a3,a4,-000006D4
	lw	a4,a3,+000000A0
	lw	a3,a3,+000000A4
	c.srli	a4,0000000C
	andi	a4,a4,+000007FF
	c.slli	a4,10
	c.or	a4,a2
	andi	a4,a4,-00000400
	andi	a3,a3,+000003FF
	c.or	a4,a3
	sw	a4,a5,+000001AC
	c.jr	ra

;; rf_pri_fcal_meas: 230163EC
;;   Called from:
;;     2301885E (in rf_pri_fcal)
;;     23018878 (in rf_pri_fcal)
;;     2301889E (in rf_pri_fcal)
rf_pri_fcal_meas proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00040001
	lw	a5,s0,+000000A0
	andi	a5,a5,-00000100
	c.or	a0,a5
	sw	a0,s0,+000000A0
	addi	a0,zero,+00000064
	auipc	ra,0001EFF6
	jalr	ra,ra,+000000FE
	lw	a5,s0,+000000AC
	ori	a5,a5,+00000010
	sw	a5,s0,+000000AC
	lui	a5,00040001

l23016420:
	lw	a3,a5,+000000AC
	addi	a4,a5,+000000AC
	slli	a2,a3,0000000B
	bge	a2,zero,0000000023016420

l23016430:
	lw	a0,a5,+000000A8
	lw	a5,a5,+000000AC
	c.srli	a0,00000010
	c.andi	a5,FFFFFFEF
	c.sw	a4,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_rccal_config.part.0: 23016446
;;   Called from:
;;     23016472 (in rf_pri_rccal_config)
;;     23018568 (in rf_pri_rccal)
rf_pri_rccal_config.part.0 proc
	lui	a3,00040001
	lw	a5,a3,+00000080
	lui	a4,000C1000
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	slli	a5,a0,00000018
	c.or	a5,a4
	c.lui	a4,FFFFC000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	sw	a0,a3,+00000080
	c.jr	ra

;; rf_pri_rccal_config: 2301646E
;;   Called from:
;;     2301675C (in rf_pri_rccal_iq)
;;     2301677E (in rf_pri_rccal_iq)
;;     2301857A (in rf_pri_rccal)
rf_pri_rccal_config proc
	c.beqz	a0,0000000023016476

l23016470:
	c.mv	a0,a1
	jal	zero,0000000023016446

l23016476:
	lui	a3,00040001
	lw	a5,a3,+00000080
	lui	a4,000FFC10
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	slli	a5,a1,00000010
	c.or	a5,a4
	andi	a5,a5,-00000040
	c.or	a5,a1
	sw	a5,a3,+00000080
	c.jr	ra

;; rf_pri_txcal_config: 23016498
;;   Called from:
;;     23016538 (in rf_pri_txcal_search_core)
;;     23016596 (in rf_pri_txcal_search_core)
;;     230165B4 (in rf_pri_txcal_search_core)
;;     23017FA6 (in rf_pri_txcal)
;;     23017FDE (in rf_pri_txcal)
;;     23017FFA (in rf_pri_txcal)
;;     23018012 (in rf_pri_txcal)
;;     2301802C (in rf_pri_txcal)
;;     23018046 (in rf_pri_txcal)
rf_pri_txcal_config proc
	c.li	a5,00000002
	bne	a0,a5,00000000230164BE

l2301649E:
	lui	a3,00040001
	lw	a5,a3,+00000600
	lui	a4,000FF801
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,0C
	c.or	a1,a5
	lui	a5,00000800
	c.or	a1,a5
	sw	a1,a3,+00000600
	c.jr	ra

l230164BE:
	c.li	a5,00000003
	bne	a0,a5,00000000230164E4

l230164C4:
	bge	a1,zero,00000000230164CC

l230164C8:
	addi	a1,a1,+00000400

l230164CC:
	lui	a4,00040001
	lw	a5,a4,+00000600
	andi	a5,a5,-00000400
	c.or	a1,a5
	ori	a1,a1,+00000400
	sw	a1,a4,+00000600
	c.jr	ra

l230164E4:
	c.bnez	a0,00000000230164FC

l230164E6:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000C1000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,18

l230164F6:
	c.or	a1,a5
	c.sw	a3,112(a1)

l230164FA:
	c.jr	ra

l230164FC:
	c.li	a5,00000001
	bne	a0,a5,00000000230164FA

l23016502:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000FFC10
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,10
	c.j	00000000230164F6

;; rf_pri_txcal_search_core: 23016514
;;   Called from:
;;     23017F9C (in rf_pri_txcal)
;;     23017FB6 (in rf_pri_txcal)
;;     23017FD4 (in rf_pri_txcal)
;;     23017FF0 (in rf_pri_txcal)
;;     2301800A (in rf_pri_txcal)
;;     23018022 (in rf_pri_txcal)
;;     2301803C (in rf_pri_txcal)
rf_pri_txcal_search_core proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	a3,00000084
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.mv	s2,a1
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s10,a2
	c.mv	s3,a0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	jal	ra,0000000023016498
	c.li	a0,0000000A
	auipc	ra,0001EFF6
	jalr	ra,ra,-00000038
	lui	a4,00040001
	lw	a5,a4,+00000618
	c.lwsp	a2,000000A4
	lui	a2,000FFF00
	c.and	a5,a2
	c.slli	a3,0A
	c.or	a3,a5
	sw	a3,a4,+00000618
	jal	ra,0000000023016056
	c.mv	s11,a0
	c.li	s4,00000001
	c.li	s5,00000002
	addi	s6,zero,-00000200
	addi	s7,zero,+000001FF
	addi	s8,zero,+000007FF
	addi	s9,zero,+0000003F

l23016578:
	sub	s0,s2,s10
	add	s1,s2,s10
	bltu	s4,s3,00000000230165F2

l23016584:
	bge	s0,zero,000000002301658A

l23016588:
	c.li	s0,00000000

l2301658A:
	bge	s9,s1,0000000023016592

l2301658E:
	addi	s1,zero,+0000003F

l23016592:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023016498
	c.li	a0,0000000A
	srai	s10,s10,00000001
	auipc	ra,0001EFF6
	jalr	ra,ra,-0000009A
	jal	ra,0000000023016056
	bltu	a0,s11,0000000023016618

l230165B0:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023016498
	c.li	a0,0000000A
	auipc	ra,0001EFF6
	jalr	ra,ra,-000000B4
	jal	ra,0000000023016056
	bgeu	a0,s11,00000000230165CE

l230165CA:
	c.mv	s11,a0
	c.mv	s2,s1

l230165CE:
	bne	s10,zero,0000000023016578

l230165D2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
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

l230165F2:
	bne	s3,s5,0000000023016606

l230165F6:
	bge	s0,zero,00000000230165FC

l230165FA:
	c.li	s0,00000000

l230165FC:
	bge	s8,s1,0000000023016592

l23016600:
	addi	s1,zero,+000007FF
	c.j	0000000023016592

l23016606:
	bge	s0,s6,000000002301660E

l2301660A:
	addi	s0,zero,-00000200

l2301660E:
	bge	s7,s1,0000000023016592

l23016612:
	addi	s1,zero,+000001FF
	c.j	0000000023016592

l23016618:
	c.mv	s11,a0
	c.mv	s2,s0
	c.j	00000000230165CE

;; rf_pri_singen_config.constprop.8: 2301661E
;;   Called from:
;;     230166AC (in rf_pri_rccal_iq)
;;     2301672A (in rf_pri_rccal_iq)
;;     23017E8E (in rf_pri_txcal)
rf_pri_singen_config.constprop.8 proc
	lui	a5,00040001
	lw	a4,a5,+0000020C
	lui	a3,000FC010
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.slli	a0,10
	c.or	a0,a4
	sw	a0,a5,+0000020C
	lw	a2,a5,+00000214
	lui	a4,00000400
	addi	a3,a4,-00000001
	and	a4,a2,a3
	sw	a4,a5,+00000214
	lw	a4,a5,+00000218
	c.and	a4,a3
	lui	a3,000C0000
	c.or	a4,a3
	sw	a4,a5,+00000218
	c.jr	ra

;; rf_pri_rccal_iq: 2301665C
;;   Called from:
;;     2301840E (in rf_pri_rccal)
;;     23018416 (in rf_pri_rccal)
rf_pri_rccal_iq proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	a5,00040001
	lw	a4,a5,+0000060C
	c.mv	s2,a0
	beq	a0,zero,000000002301679A

l2301667C:
	andi	a4,a4,-00000401
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,00004000
	c.or	a4,a3

l2301668E:
	lui	s0,00040001
	sw	a4,a5,+0000060C
	c.lw	s0,72(a5)
	c.lui	a4,FFFF9000
	addi	s1,a4,-00000301
	c.lui	a4,00003000
	addi	a4,a4,+00000100
	c.and	a5,s1
	c.or	a5,a4
	c.li	a0,00000003
	c.sw	s0,72(a5)
	jal	ra,000000002301661E
	lw	a5,s0,+00000214
	lui	s4,000FFF00
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000218
	jal	ra,0000000023016034
	jal	ra,00000000230160B0
	lw	a3,s0,+00000618
	c.lui	a4,00001000
	addi	a4,a4,-00000400
	and	a3,a3,s4
	c.or	a3,a4
	sw	a3,s0,+00000618
	addi	a1,zero,+00000400
	c.mv	a0,s2
	jal	ra,00000000230160E6
	jal	ra,0000000023016056
	jal	ra,0000000023070684
	lui	a5,00023077
	lw	a3,a5,+000000E4
	lw	a2,a5,+000000E0
	jal	ra,000000002306F140
	jal	ra,0000000023070510
	c.lw	s0,72(a4)
	c.lui	a3,00006000
	addi	a3,a3,+00000200
	c.and	a4,s1
	c.or	a4,a3
	c.sw	s0,72(a4)
	c.mv	s3,a0
	addi	a0,zero,+000000B5
	jal	ra,000000002301661E
	jal	ra,0000000023016034
	jal	ra,00000000230160B0
	lw	a5,s0,+00000618
	lui	a4,0000002D
	addi	a4,a4,+00000400
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000618
	c.li	s1,00000000
	c.li	s0,00000006
	addi	s4,zero,+00000020

l23016754:
	add	s5,s4,s1
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002301646E
	jal	ra,0000000023016056
	bgeu	s3,a0,000000002301676A

l23016768:
	c.mv	s1,s5

l2301676A:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,0000000023016754

l23016772:
	addi	s4,zero,+0000003F
	c.li	s5,0000000A
	c.li	s6,00000005

l2301677A:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002301646E
	jal	ra,0000000023016056
	c.slli	s0,01
	bgeu	s3,a0,00000000230167B0

l2301678C:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s1,00000001
	bne	s0,s6,00000000230167B8

l23016796:
	c.li	a0,00000003
	c.j	00000000230167C0

l2301679A:
	ori	a4,a4,+00000400
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,000FC000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.j	000000002301668E

l230167B0:
	c.andi	s0,0000000F
	c.addi	s1,FFFFFFFF
	beq	s0,s5,0000000023016796

l230167B8:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,000000002301677A

l230167BE:
	c.li	a0,00000002

l230167C0:
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

;; rf_pri_config_channel.constprop.9: 230167D4
;;   Called from:
;;     23017E3E (in rf_pri_txcal)
;;     230181C4 (in rf_pri_roscal)
rf_pri_config_channel.constprop.9 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	lw	a2,s1,-000006D4
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	lui	a4,00040001
	lw	a3,a4,+000000A0
	lhu	a5,a2,+0000002E
	c.lui	s2,FFFF0000
	andi	a3,a3,-00000100
	andi	a5,a5,+000000FF
	c.or	a5,a3
	lui	a3,000FFE10
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	lhu	a5,a2,+0000002E
	lui	s3,000F0000
	lui	s0,00040001
	c.srli	a5,00000008
	c.andi	a5,0000001F
	c.slli	a5,10
	c.or	a5,a3
	sw	a5,a4,+000000A0
	lw	a5,a4,+000000BC
	lui	a3,000FF100
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	lw	a5,s1,-000006D4
	c.lui	s5,00010000
	c.addi	s2,FFFFFFFF
	lhu	a5,a5,+0000002E
	lui	s6,00010000
	c.addi	s3,FFFFFFFF
	andi	a5,a5,+000000FF
	c.srli	a5,00000004
	c.slli	a5,14
	c.or	a5,a3
	sw	a5,a4,+000000BC
	lw	a5,a4,+000000C4
	lui	a3,000C0000
	lui	s7,00001100
	c.and	a5,a3
	lui	a3,0004200D
	lw	a3,a3,-0000009C
	lui	s4,0002308B
	c.or	a5,a3
	sw	a5,a4,+000000C4
	lw	a5,a4,+000000C0
	c.lui	a3,FFFFF000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	sw	a5,a4,+000000C0

l23016882:
	lw	a5,s0,+000000B8
	c.li	a0,0000000A
	or	a5,a5,s5
	sw	a5,s0,+000000B8
	auipc	ra,0001EFF6
	jalr	ra,ra,-0000038A
	lw	a5,s0,+000000B8
	addi	a0,zero,+00000032
	and	a5,a5,s2
	sw	a5,s0,+000000B8
	auipc	ra,0001EFF6
	jalr	ra,ra,-000003A2
	lw	a5,s0,+000000B0
	c.li	a0,0000000A
	or	a5,a5,s6
	sw	a5,s0,+000000B0
	auipc	ra,0001EFF6
	jalr	ra,ra,-000003B8
	lw	a5,s0,+000000B0
	addi	a0,zero,+00000032
	and	a5,a5,s3
	sw	a5,s0,+000000B0
	auipc	ra,0001EFF6
	jalr	ra,ra,-000003D0
	lw	a5,s0,+000000B4
	and	a5,a5,s7
	c.beqz	a5,00000000230168F2

l230168E8:
	addi	a0,s4,-000004D4
	jal	ra,0000000023052118
	c.j	0000000023016882

l230168F2:
	lw	a5,s1,-000006D4
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	lhu	a2,a5,+0000002E
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	lui	a0,00023077
	andi	a2,a2,+000000FF
	c.li	a1,00000009
	addi	a0,a0,+00000024
	c.addi16sp	00000030
	jal	zero,0000000023052118

;; rf_pri_roscal_iq.isra.3: 23016920
;;   Called from:
;;     230181DC (in rf_pri_roscal)
;;     230182B8 (in rf_pri_roscal)
rf_pri_roscal_iq.isra.3 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.lui	s5,FFFFC000
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.mv	s3,a0
	c.li	s0,00000006
	c.li	s2,00000000
	addi	s4,zero,+00000020
	lui	s1,00040001
	addi	s5,s5,+000000FF

l23016948:
	c.lw	s1,124(a5)
	add	s6,s4,s2
	beq	s3,zero,00000000230169CC

l23016952:
	and	a4,a5,s5
	slli	a5,s6,00000008
	c.or	a5,a4

l2301695C:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,00000000230160E6
	blt	zero,a0,000000002301696E

l2301696C:
	c.mv	s2,s6

l2301696E:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,0000000023016948

l23016976:
	c.lui	s5,FFFFC000
	addi	s4,zero,+0000003F
	lui	s1,00040001
	addi	s5,s5,+000000FF
	c.li	s6,0000000A
	c.li	s7,00000005

l23016988:
	c.lw	s1,124(a5)
	beq	s3,zero,00000000230169D6

l2301698E:
	and	a4,a5,s5
	slli	a5,s2,00000008
	c.or	a5,a4

l23016998:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,00000000230160E6
	c.slli	s0,01
	bge	zero,a0,00000000230169E0

l230169AA:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s2,FFFFFFFF
	bne	s0,s7,00000000230169E8

l230169B4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l230169CC:
	andi	a5,a5,-00000040
	or	a5,s6,a5
	c.j	000000002301695C

l230169D6:
	andi	a5,a5,-00000040
	or	a5,a5,s2
	c.j	0000000023016998

l230169E0:
	c.andi	s0,0000000F
	c.addi	s2,00000001
	beq	s0,s6,00000000230169B4

l230169E8:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,0000000023016988

l230169EE:
	c.j	00000000230169B4

;; rf_pri_chipv: 230169F0
;;   Called from:
;;     23018BCE (in rf_pri_init)
rf_pri_chipv proc
	c.bnez	a0,0000000023016AE4

l230169F2:
	lui	a5,0004200E
	lui	a4,00000060
	addi	a5,a5,-000006DC
	c.addi	a4,00000003
	c.sw	a5,0(a4)
	lui	a3,00023077
	c.li	a4,00000006
	lui	a2,00042012
	lui	a1,00042012
	sh	a4,a5,+00000004
	addi	a3,a3,+0000022C
	c.li	a4,0000001C
	addi	a2,a2,-0000048C
	addi	a1,a1,-000002CC
	addi	a6,zero,+000001DC

l23016A26:
	addi	a5,a4,-0000001C

l23016A2A:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a4,a5,0000000023016A2A

l23016A46:
	c.addi	a4,0000001C
	bne	a4,a6,0000000023016A26

l23016A4C:
	lui	a3,00042012
	lui	a4,00023077
	c.li	a5,00000000
	addi	a3,a3,-000004FC
	addi	a4,a4,+000001F4
	addi	a2,zero,+00000038

l23016A62:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023016A62

l23016A74:
	lui	a5,00023077
	addi	a5,a5,+000005AC
	lui	a4,00042012
	addi	a4,a4,-0000010C
	addi	a3,a5,+00000080

l23016A88:
	c.lw	a5,0(a2)
	c.addi	a5,00000010
	c.addi	a4,00000010
	sw	a2,a4,+00000FF0
	lw	a2,a5,-0000000C
	sw	a2,a4,+00000FF4
	lw	a2,a5,-00000008
	sw	a2,a4,+00000FF8
	lw	a2,a5,-00000004
	sw	a2,a4,+00000FFC
	bne	a3,a5,0000000023016A88

l23016AAE:
	lui	a5,0004200E
	addi	a5,a5,-000006E0
	c.lw	a5,0(a4)
	c.li	a3,0000000A
	c.sw	a4,0(a3)
	c.lw	a5,0(a5)
	c.li	a4,00000003
	c.sw	a5,4(a4)
	c.sw	a5,8(a3)
	c.sw	a5,12(a4)
	c.sw	a5,16(a3)
	c.sw	a5,20(a4)
	c.sw	a5,24(a3)
	c.sw	a5,28(a4)
	sw	zero,a5,+00000020
	sw	zero,a5,+00000024
	sw	zero,a5,+00000024
	sw	zero,a5,+0000002C
	sw	zero,a5,+00000030
	c.jr	ra

l23016AE4:
	c.li	a5,00000001
	bne	a0,a5,0000000023016BD6

l23016AEA:
	lui	a5,0004200E
	lui	a4,00000050
	addi	a5,a5,-000006DC
	c.addi	a4,00000005
	c.sw	a5,0(a4)
	lui	a3,00023077
	c.li	a4,00000005
	lui	a2,00042012
	lui	a1,00042012
	sh	a4,a5,+00000004
	addi	a3,a3,+000003EC
	c.li	a4,0000001C
	addi	a2,a2,-0000048C
	addi	a1,a1,-000002CC
	addi	a6,zero,+000001DC

l23016B1E:
	addi	a5,a4,-0000001C

l23016B22:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a5,a4,0000000023016B22

l23016B3E:
	addi	a4,a5,+0000001C
	bne	a4,a6,0000000023016B1E

l23016B46:
	lui	a3,00042012
	lui	a4,00042012
	c.li	a5,00000000
	addi	a3,a3,-000004FC
	addi	a4,a4,-000004C4
	addi	a2,zero,+00000038

l23016B5C:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023016B5C

l23016B6E:
	lui	a5,00023077
	addi	a5,a5,+0000062C
	lui	a4,00042012
	addi	a4,a4,-0000010C
	addi	a3,a5,+00000080

l23016B82:
	c.lw	a5,0(a2)
	c.addi	a5,00000010
	c.addi	a4,00000010
	sw	a2,a4,+00000FF0
	lw	a2,a5,-0000000C
	sw	a2,a4,+00000FF4
	lw	a2,a5,-00000008
	sw	a2,a4,+00000FF8
	lw	a2,a5,-00000004
	sw	a2,a4,+00000FFC
	bne	a5,a3,0000000023016B82

l23016BA8:
	lui	a5,0004200E
	addi	a5,a5,-000006E0
	c.lw	a5,0(a4)
	c.li	a3,0000000C
	c.sw	a4,0(a3)
	c.lw	a5,0(a5)
	c.li	a4,00000005
	c.sw	a5,4(a4)
	c.sw	a5,8(a3)
	c.sw	a5,12(a4)
	c.sw	a5,16(a3)
	c.sw	a5,20(a4)
	c.sw	a5,24(a3)
	c.sw	a5,28(a4)
	c.li	a4,00000001
	c.sw	a5,32(a4)
	c.sw	a5,36(a4)
	c.sw	a5,36(a4)
	c.sw	a5,44(a4)
	c.li	a4,00000002
	c.sw	a5,48(a4)

l23016BD6:
	c.jr	ra

;; rf_pri_update_tx_power_offset: 23016BD8
;;   Called from:
;;     230158DE (in rfc_apply_tx_power_offset)
rf_pri_update_tx_power_offset proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.add	a1,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lb	s1,a1,+00000000
	lui	s0,00042012
	lui	a1,00042012
	c.li	s2,00000004
	addi	a2,zero,+000001C0
	addi	a1,a1,-000002CC
	addi	a0,s0,-0000048C
	jal	ra,0000000023070C7C
	or	s3,s1,s2
	c.li	a5,FFFFFFF6
	xor	s1,s1,s2
	add	s1,s1,a5
	addi	a5,s0,-0000048C
	addi	a3,a5,+000001C0

l23016C1A:
	c.lw	a5,20(a4)
	c.addi	a5,0000001C
	c.add	a4,s3
	sw	a4,a5,+00000FF8
	lw	a4,a5,-00000004
	c.add	a4,s1
	sw	a4,a5,+00000FFC
	bne	a5,a3,0000000023016C1A

l23016C32:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023015B8E

;; rf_pri_get_notch_param: 23016C42
;;   Called from:
;;     23015750 (in rfc_config_channel)
rf_pri_get_notch_param proc
	c.lui	a4,00001000
	addi	a4,a4,-00000658
	c.li	a5,0000000D
	bltu	a4,a0,0000000023016C5C

l23016C4E:
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a0,a5
	c.li	a5,00000005
	srl	a5,a0,a5

l23016C5C:
	slli	a0,a5,00000003
	lui	a5,0004200D
	addi	a5,a5,-0000006C
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	sb	a4,a1,+00000000
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_param: 23016C76
;;   Called from:
;;     23015744 (in rfc_config_channel)
rf_pri_update_param proc
	lui	a5,0004200E
	sw	zero,a5,+00000CE0
	lui	a5,0004200E
	sw	zero,a5,+00000CE4
	lui	a5,0004200E
	sw	zero,a5,+00000CDC
	lui	a5,0004200E
	sw	zero,a5,+00000D5C
	c.lui	a5,00001000
	addi	a4,a5,-00000695
	bgeu	a4,a0,0000000023016E46

l23016CA0:
	addi	a4,a5,-00000690
	bgeu	a4,a0,0000000023016E46

l23016CA8:
	addi	a4,a5,-00000686
	bgeu	a4,a0,0000000023016E3A

l23016CB0:
	addi	a4,a5,-00000677
	bgeu	a4,a0,0000000023016E3E

l23016CB8:
	addi	a4,a5,-00000668
	bgeu	a4,a0,0000000023016E42

l23016CC0:
	addi	a3,a5,-00000659
	c.li	a4,00000008
	c.li	a5,00000007
	bltu	a3,a0,0000000023016D38

l23016CCC:
	c.li	a5,00000004

l23016CCE:
	lui	a4,00023077
	addi	a3,a4,+0000000C
	slli	a2,a5,00000002
	c.add	a3,a2
	lw	a7,a3,+00000000
	addi	a4,a4,+0000000C
	c.li	a6,00000000
	beq	a7,a0,0000000023016CEE

l23016CEA:
	sub	a6,a0,a7

l23016CEE:
	c.addi	a5,00000001
	lui	a3,00023077
	c.slli	a5,02
	addi	a3,a3,-00000024
	add	a1,a3,a2
	c.add	a4,a5
	c.add	a3,a5
	lw	t1,a1,+00000000
	c.lw	a4,0(a1)
	c.lw	a3,0(a4)
	lui	a3,00023077
	addi	a3,a3,-0000000C
	c.add	a2,a3
	c.add	a3,a5
	c.lw	a2,0(a2)
	c.lw	a3,0(a5)
	sub	a4,a4,t1
	add	a4,a4,a6
	c.sub	a5,a2
	sub	a1,a1,a7
	add	a5,a5,a6
	srl	a4,a4,a1
	srl	a5,a5,a1
	c.add	a4,t1
	c.add	a5,a2

l23016D38:
	lui	a1,0004200D
	addi	a2,a1,+00000004
	addi	a3,a5,+0000000F
	c.sw	a2,16(a3)
	addi	a3,zero,+00000037
	c.sub	a3,a4
	addi	a7,a1,+00000004
	addi	t1,a1,+00000004
	c.li	a1,00000014
	c.sw	a2,20(a3)
	c.li	a6,00000000
	c.li	a3,0000000A
	sub	a5,a1,a5
	c.li	t3,FFFFFFF6

l23016D62:
	lw	a1,a7,+00000010
	c.add	a1,a6
	c.sub	a1,a5
	c.li	a6,00000000
	bge	a3,a1,0000000023016D74

l23016D70:
	sub	a6,a1,a3

l23016D74:
	bge	a3,a1,0000000023016D7A

l23016D78:
	c.mv	a1,a3

l23016D7A:
	sw	a1,a7,+0000000C
	c.addi	a3,FFFFFFFB
	c.addi	a7,FFFFFFFC
	bne	a3,t3,0000000023016D62

l23016D86:
	c.li	a5,00000004
	xor	a5,a4,a5
	addi	a3,zero,+00000038
	c.li	a7,00000000
	addi	t4,zero,+0000005F
	addi	t3,zero,+0000005B
	sub	a5,zero,a5
	addi	a6,a5,+00000005
	c.li	a5,00000014
	sub	a4,a5,a4

l23016DA8:
	c.lw	a2,20(a5)
	sub	a5,a5,a7
	c.add	a5,a4
	blt	t4,a5,0000000023016E4A

l23016DB4:
	c.sw	a2,24(a5)
	c.lw	a2,24(a1)
	c.li	a7,00000000
	bge	a1,a3,0000000023016DC2

l23016DBE:
	sub	a7,a3,a1

l23016DC2:
	bge	a1,a3,0000000023016DC8

l23016DC6:
	c.mv	a1,a3

l23016DC8:
	c.sw	a2,24(a1)
	c.addi	a3,00000005
	c.addi	a2,00000004
	bne	a3,t3,0000000023016DA8

l23016DD2:
	c.li	a5,0000000F
	sw	a5,t1,+00000010
	c.lui	a4,00001000
	addi	a5,zero,+00000033
	sw	a5,t1,+00000014
	addi	a4,a4,-0000067B
	lui	a5,0004200E
	addi	a5,a5,-000006DC
	lui	a3,00040001
	bltu	a4,a0,0000000023016E4E

l23016DF6:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000002
	c.andi	a4,FFFFFFF8

l23016DFE:
	c.or	a5,a4
	c.sw	a3,108(a5)
	c.lui	a5,00001000
	lui	a4,0004200E
	addi	a3,a5,-00000676
	addi	a4,a4,-000002AC
	beq	a0,a3,0000000023016EFE

l23016E14:
	bltu	a3,a0,0000000023016E7A

l23016E18:
	addi	a3,a5,-0000068A
	beq	a0,a3,0000000023016EE0

l23016E20:
	bltu	a3,a0,0000000023016E58

l23016E24:
	addi	a3,a5,-00000694
	beq	a0,a3,0000000023016ECA

l23016E2C:
	addi	a5,a5,-0000068F
	beq	a0,a5,0000000023016ED6

l23016E34:
	sw	zero,a4,+00000000
	c.jr	ra

l23016E3A:
	c.li	a5,00000001
	c.j	0000000023016CCE

l23016E3E:
	c.li	a5,00000002
	c.j	0000000023016CCE

l23016E42:
	c.li	a5,00000003
	c.j	0000000023016CCE

l23016E46:
	c.li	a5,00000000
	c.j	0000000023016CCE

l23016E4A:
	c.add	a5,a6
	c.j	0000000023016DB4

l23016E4E:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000004
	c.andi	a4,FFFFFFF8
	c.j	0000000023016DFE

l23016E58:
	addi	a3,a5,-00000680
	beq	a0,a3,0000000023016EEA

l23016E60:
	addi	a3,a5,-0000067B
	beq	a0,a3,0000000023016EF4

l23016E68:
	addi	a5,a5,-00000685
	bne	a0,a5,0000000023016E34

l23016E70:
	lui	a5,00042012
	lw	a5,a5,-000004F0
	c.j	0000000023016ED2

l23016E7A:
	addi	a3,a5,-00000662
	beq	a0,a3,0000000023016F1C

l23016E82:
	bltu	a3,a0,0000000023016EA8

l23016E86:
	addi	a3,a5,-0000066C
	beq	a0,a3,0000000023016F08

l23016E8E:
	addi	a3,a5,-00000667
	beq	a0,a3,0000000023016F12

l23016E96:
	addi	a5,a5,-00000671
	bne	a0,a5,0000000023016E34

l23016E9E:
	lui	a5,00042012
	lw	a5,a5,-000004E0
	c.j	0000000023016ED2

l23016EA8:
	addi	a3,a5,-00000658
	beq	a0,a3,0000000023016F26

l23016EB0:
	addi	a3,a5,-0000064C
	beq	a0,a3,0000000023016F30

l23016EB8:
	addi	a5,a5,-0000065D
	bne	a0,a5,0000000023016E34

l23016EC0:
	lui	a5,00042012
	lw	a5,a5,-000004D0
	c.j	0000000023016ED2

l23016ECA:
	lui	a5,00042012
	lw	a5,a5,-000004FC

l23016ED2:
	c.sw	a4,0(a5)
	c.jr	ra

l23016ED6:
	lui	a5,00042012
	lw	a5,a5,-000004F8
	c.j	0000000023016ED2

l23016EE0:
	lui	a5,00042012
	lw	a5,a5,-000004F4
	c.j	0000000023016ED2

l23016EEA:
	lui	a5,00042012
	lw	a5,a5,-000004EC
	c.j	0000000023016ED2

l23016EF4:
	lui	a5,00042012
	lw	a5,a5,-000004E8
	c.j	0000000023016ED2

l23016EFE:
	lui	a5,00042012
	lw	a5,a5,-000004E4
	c.j	0000000023016ED2

l23016F08:
	lui	a5,00042012
	lw	a5,a5,-000004DC
	c.j	0000000023016ED2

l23016F12:
	lui	a5,00042012
	lw	a5,a5,-000004D8
	c.j	0000000023016ED2

l23016F1C:
	lui	a5,00042012
	lw	a5,a5,-000004D4
	c.j	0000000023016ED2

l23016F26:
	lui	a5,00042012
	lw	a5,a5,-000004CC
	c.j	0000000023016ED2

l23016F30:
	lui	a5,00042012
	lw	a5,a5,-000004C8
	c.j	0000000023016ED2

;; rf_pri_xtalfreq: 23016F3A
;;   Called from:
;;     230150E6 (in rfc_init)
rf_pri_xtalfreq proc
	bne	a0,zero,0000000023017142

l23016F3E:
	lui	a5,0004200D
	lui	a4,00021639
	addi	a5,a5,-000000C0
	addi	a4,a4,-000001C7
	c.sw	a5,0(a4)
	lui	a4,0002171C
	addi	a4,a4,+0000071C
	c.sw	a5,4(a4)
	lui	a4,00021800
	c.sw	a5,8(a4)
	lui	a4,000218E4
	addi	a4,a4,-0000071C
	c.sw	a5,12(a4)
	lui	a4,000219C7
	addi	a4,a4,+000001C7
	c.sw	a5,16(a4)
	lui	a4,00021AAB
	addi	a4,a4,-00000555
	c.sw	a5,20(a4)
	lui	a4,00021B8E
	addi	a4,a4,+0000038E
	c.sw	a5,24(a4)
	lui	a4,00021C72
	addi	a4,a4,-0000038E
	c.sw	a5,28(a4)
	lui	a4,00021D55
	addi	a4,a4,+00000555
	c.sw	a5,32(a4)
	lui	a4,00021E39
	addi	a4,a4,-000001C7
	c.sw	a5,36(a4)
	lui	a4,00021F1C
	addi	a4,a4,+0000071C
	c.sw	a5,40(a4)
	lui	a4,00022000
	c.sw	a5,44(a4)
	lui	a4,000220E4
	addi	a4,a4,-0000071C
	c.sw	a5,48(a4)
	lui	a4,000221C7
	addi	a4,a4,+000001C7
	c.sw	a5,52(a4)
	lui	a4,000222AB
	addi	a4,a4,-00000555
	c.sw	a5,56(a4)
	lui	a4,0002238E
	addi	a4,a4,+0000038E
	c.sw	a5,60(a4)
	lui	a4,00022472
	addi	a4,a4,-0000038E
	c.sw	a5,64(a4)
	lui	a4,00022555
	addi	a4,a4,+00000555
	c.sw	a5,68(a4)
	lui	a4,00022639
	addi	a4,a4,-000001C7
	c.sw	a5,72(a4)
	lui	a4,0002271C
	addi	a4,a4,+0000071C
	c.sw	a5,76(a4)
	lui	a4,00022800
	c.sw	a5,80(a4)
	lui	a5,0004200D
	lui	a4,000A739A
	addi	a5,a5,-000000EC
	addi	a4,a4,+000006F2
	c.sw	a5,0(a4)
	lui	a4,000A7C7A
	addi	a4,a4,+00000780
	c.sw	a5,4(a4)
	lui	a4,000A855B
	addi	a4,a4,-000007F2
	c.sw	a5,8(a4)
	lui	a4,000A8E4B
	addi	a4,a4,-00000764
	c.sw	a5,12(a4)
	lui	a4,000A972B
	addi	a4,a4,-000006D5
	c.sw	a5,16(a4)
	lui	a4,000AA00B
	addi	a4,a4,-00000647
	c.sw	a5,20(a4)
	lui	a4,000AA8EB
	addi	a4,a4,-000005B9
	c.sw	a5,24(a4)
	lui	a4,000AB1CB
	addi	a4,a4,-0000052B
	c.sw	a5,28(a4)
	lui	a4,000ABABB
	addi	a4,a4,-0000049C
	c.sw	a5,32(a4)
	lui	a4,000AC39B
	addi	a4,a4,-0000040E
	c.sw	a5,36(a4)
	c.lui	a4,FFFFB000
	addi	a3,a4,-00000380
	sh	a3,a5,+00000028
	lui	a5,0004200E
	lui	a3,000A6E7A
	addi	a5,a5,-000006E8
	addi	a4,a4,-00000319
	addi	a3,a3,+000006A7
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200E
	addi	a4,zero,+00000500
	sh	a4,a5,+0000091E
	lui	a5,0004200D
	addi	a5,a5,-0000006C
	c.li	a4,00000001
	c.sw	a5,8(a4)
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	c.sw	a5,32(a4)
	c.sw	a5,48(a4)
	c.sw	a5,56(a4)
	c.sw	a5,64(a4)
	c.sw	a5,72(a4)
	c.sw	a5,88(a4)
	c.sw	a5,96(a4)
	lui	a4,000006AD
	addi	a4,a4,-00000040
	c.sw	a5,12(a4)
	lui	a4,000001E8
	addi	a4,a4,+00000480
	c.sw	a5,20(a4)
	lui	a4,000FFD24
	addi	a4,a4,-000006C0
	c.sw	a5,28(a4)
	lui	a4,000FF85F
	addi	a4,a4,-00000200
	c.sw	a5,36(a4)
	lui	a4,000005B9
	addi	a4,a4,-00000280
	c.sw	a5,52(a4)
	lui	a4,000000F4
	addi	a4,a4,+00000240
	c.sw	a5,60(a4)
	lui	a4,000FFC2F
	addi	a4,a4,+00000700
	c.sw	a5,68(a4)
	lui	a4,000FF76B
	addi	a4,a4,-00000440
	c.sw	a5,76(a4)
	lui	a4,000004C5
	sw	zero,a5,+00000000
	sw	zero,a5,+00000028
	sw	zero,a5,+00000050
	sw	zero,a5,+00000068
	sw	zero,a5,+00000004
	sw	zero,a5,+0000002C
	sw	zero,a5,+00000054
	addi	a4,a4,-000004C0

l2301713A:
	c.sw	a5,92(a4)

l2301713C:
	sw	zero,a5,+00000064
	c.j	000000002301735E

l23017142:
	c.li	a4,00000001
	bne	a0,a4,0000000023017364

l23017148:
	lui	a5,0004200D
	lui	a4,0001ED21
	addi	a5,a5,-000000C0
	addi	a4,a4,-000002DF
	c.sw	a5,0(a4)
	lui	a4,0001EDF3
	addi	a4,a4,-0000020D
	c.sw	a5,4(a4)
	lui	a4,0001EEC5
	addi	a4,a4,-0000013B
	c.sw	a5,8(a4)
	lui	a4,0001EF97
	addi	a4,a4,-00000069
	c.sw	a5,12(a4)
	lui	a4,0001F069
	addi	a4,a4,+00000069
	c.sw	a5,16(a4)
	lui	a4,0001F13B
	addi	a4,a4,+0000013B
	c.sw	a5,20(a4)
	lui	a4,0001F20D
	addi	a4,a4,+0000020D
	c.sw	a5,24(a4)
	lui	a4,0001F2DF
	addi	a4,a4,+000002DF
	c.sw	a5,28(a4)
	lui	a4,0001F3B1
	addi	a4,a4,+000003B1
	c.sw	a5,32(a4)
	lui	a4,0001F483
	addi	a4,a4,+00000483
	c.sw	a5,36(a4)
	lui	a4,0001F555
	addi	a4,a4,+00000555
	c.sw	a5,40(a4)
	lui	a4,0001F627
	addi	a4,a4,+00000627
	c.sw	a5,44(a4)
	lui	a4,0001F6F9
	addi	a4,a4,+000006F9
	c.sw	a5,48(a4)
	lui	a4,0001F7CB
	addi	a4,a4,+000007CB
	c.sw	a5,52(a4)
	lui	a4,0001F89E
	addi	a4,a4,-00000762
	c.sw	a5,56(a4)
	lui	a4,0001F970
	addi	a4,a4,-00000690
	c.sw	a5,60(a4)
	lui	a4,0001FA42
	addi	a4,a4,-000005BE
	c.sw	a5,64(a4)
	lui	a4,0001FB14
	addi	a4,a4,-000004EC
	c.sw	a5,68(a4)
	lui	a4,0001FBE6
	addi	a4,a4,-0000041A
	c.sw	a5,72(a4)
	lui	a4,0001FCB8
	addi	a4,a4,-00000348
	c.sw	a5,76(a4)
	lui	a4,0001FD8A
	addi	a4,a4,-00000276
	c.sw	a5,80(a4)
	lui	a5,0004200D
	lui	a4,000A743A
	addi	a5,a5,-000000EC
	addi	a4,a4,+000006FC
	c.sw	a5,0(a4)
	lui	a4,000A7D1A
	addi	a4,a4,+0000078A
	c.sw	a5,4(a4)
	lui	a4,000A860B
	addi	a4,a4,-000007E7
	c.sw	a5,8(a4)
	lui	a4,000A8EEB
	addi	a4,a4,-00000759
	c.sw	a5,12(a4)
	lui	a4,000A97CB
	addi	a4,a4,-000006CB
	c.sw	a5,16(a4)
	lui	a4,000AA0AB
	addi	a4,a4,-0000063D
	c.sw	a5,20(a4)
	lui	a4,000AA99B
	addi	a4,a4,-000005AE
	c.sw	a5,24(a4)
	lui	a4,000AB27B
	addi	a4,a4,-00000520
	c.sw	a5,28(a4)
	lui	a4,000ABB5B
	addi	a4,a4,-00000492
	c.sw	a5,32(a4)
	lui	a4,000AC43B
	addi	a4,a4,-00000404
	c.sw	a5,36(a4)
	c.lui	a4,FFFFB000
	addi	a3,a4,-00000375
	sh	a3,a5,+00000028
	lui	a5,0004200E
	lui	a3,000A6F1A
	addi	a5,a5,-000006E8
	addi	a4,a4,-0000030E
	addi	a3,a3,+000006B1
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200E
	addi	a4,zero,+0000056B
	sh	a4,a5,+0000091E
	lui	a5,0004200D
	lui	a4,000005B9
	addi	a5,a5,-0000006C
	addi	a4,a4,-00000280
	c.sw	a5,4(a4)
	lui	a4,000000F4
	addi	a4,a4,+00000240
	c.sw	a5,12(a4)
	lui	a4,000FFC2F
	addi	a4,a4,+00000700
	c.sw	a5,20(a4)
	lui	a4,000FF76B
	addi	a4,a4,-00000440
	c.sw	a5,28(a4)
	lui	a4,000006AD
	addi	a4,a4,-00000040
	c.sw	a5,44(a4)
	lui	a4,000001E8
	addi	a4,a4,+00000480
	c.sw	a5,52(a4)
	lui	a4,000FFD24
	addi	a4,a4,-000006C0
	c.sw	a5,60(a4)
	lui	a4,000FF85F
	addi	a4,a4,-00000200
	c.sw	a5,68(a4)
	lui	a4,000007A1
	addi	a4,a4,+00000200
	c.sw	a5,84(a4)
	lui	a4,000002DC
	addi	a4,a4,+000006C0
	c.sw	a5,92(a4)
	lui	a4,000FFE18
	c.sw	a5,0(a0)
	c.sw	a5,8(a0)
	c.sw	a5,16(a0)
	c.sw	a5,24(a0)
	sw	zero,a5,+00000020
	c.sw	a5,40(a0)
	c.sw	a5,48(a0)
	c.sw	a5,56(a0)
	c.sw	a5,64(a0)
	sw	zero,a5,+00000048
	c.sw	a5,80(a0)
	c.sw	a5,88(a0)
	c.sw	a5,96(a0)
	sw	zero,a5,+00000068
	sw	zero,a5,+00000024
	sw	zero,a5,+0000004C
	addi	a4,a4,-00000480

l2301735C:
	c.sw	a5,100(a4)

l2301735E:
	sw	zero,a5,+0000006C

l23017362:
	c.jr	ra

l23017364:
	c.li	a5,00000002
	bne	a0,a5,0000000023017556

l2301736A:
	lui	a5,0004200D
	lui	a3,000190AB
	addi	a5,a5,-000000C0
	addi	a3,a3,-00000555
	c.sw	a5,0(a3)
	lui	a3,00019155
	addi	a3,a3,+00000555
	c.sw	a5,4(a3)
	lui	a3,00019200
	c.sw	a5,8(a3)
	lui	a3,000192AB
	addi	a3,a3,-00000555
	c.sw	a5,12(a3)
	lui	a3,00019355
	addi	a3,a3,+00000555
	c.sw	a5,16(a3)
	lui	a3,00019400
	c.sw	a5,20(a3)
	lui	a3,000194AB
	addi	a3,a3,-00000555
	c.sw	a5,24(a3)
	lui	a3,00019555
	addi	a3,a3,+00000555
	c.sw	a5,28(a3)
	lui	a3,00019600
	c.sw	a5,32(a3)
	lui	a3,000196AB
	addi	a3,a3,-00000555
	c.sw	a5,36(a3)
	lui	a3,00019755
	addi	a3,a3,+00000555
	c.sw	a5,40(a3)
	lui	a3,00019800
	c.sw	a5,44(a3)
	lui	a3,000198AB
	addi	a3,a3,-00000555
	c.sw	a5,48(a3)
	lui	a3,00019955
	addi	a3,a3,+00000555
	c.sw	a5,52(a3)
	lui	a3,00019A00
	c.sw	a5,56(a3)
	lui	a3,00019AAB
	addi	a3,a3,-00000555
	c.sw	a5,60(a3)
	lui	a3,00019B55
	addi	a3,a3,+00000555
	c.sw	a5,64(a3)
	lui	a3,00019C00
	c.sw	a5,68(a3)
	lui	a3,00019CAB
	addi	a3,a3,-00000555
	c.sw	a5,72(a3)
	lui	a3,00019D55
	addi	a3,a3,+00000555
	c.sw	a5,76(a3)
	lui	a3,00019E00
	c.sw	a5,80(a3)
	lui	a5,0004200D
	lui	a3,000A741A
	addi	a5,a5,-000000EC
	addi	a3,a3,+000006FA
	c.sw	a5,0(a3)
	lui	a3,000A7D0A
	addi	a3,a3,+00000788
	c.sw	a5,4(a3)
	lui	a3,000A85EB
	addi	a3,a3,-000007E9
	c.sw	a5,8(a3)
	lui	a3,000A8ECB
	addi	a3,a3,-0000075B
	c.sw	a5,12(a3)
	lui	a3,000A97AB
	addi	a3,a3,-000006CD
	c.sw	a5,16(a3)
	lui	a3,000AA09B
	addi	a3,a3,-0000063F
	c.sw	a5,20(a3)
	lui	a3,000AA97B
	addi	a3,a3,-000005B0
	c.sw	a5,24(a3)
	lui	a3,000AB25B
	addi	a3,a3,-00000522
	c.sw	a5,28(a3)
	lui	a3,000ABB3B
	addi	a3,a3,-00000494
	c.sw	a5,32(a3)
	lui	a3,000AC42B
	addi	a3,a3,-00000406
	c.sw	a5,36(a3)
	c.lui	a3,FFFFB000
	addi	a2,a3,-00000377
	sh	a2,a5,+00000028
	lui	a5,0004200E
	lui	a2,000A6EFA
	addi	a5,a5,-000006E8
	addi	a3,a3,-00000310
	addi	a2,a2,+000006AF
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	lui	a5,0004200E
	addi	a3,zero,+000006AB
	sh	a3,a5,+0000091E
	lui	a5,0004200D
	addi	a5,a5,-0000006C
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	c.sw	a5,32(a4)
	c.sw	a5,40(a4)
	c.sw	a5,48(a4)
	c.sw	a5,72(a4)
	c.sw	a5,80(a4)
	c.sw	a5,88(a4)
	c.sw	a5,96(a4)
	lui	a4,00000989
	addi	a4,a4,+00000680
	c.sw	a5,20(a4)
	lui	a4,000004C5
	addi	a4,a4,-000004C0
	c.sw	a5,28(a4)
	lui	a4,000FFB3B
	addi	a4,a4,+000004C0
	c.sw	a5,44(a4)
	lui	a4,000FF677
	addi	a4,a4,-00000680
	c.sw	a5,52(a4)
	lui	a4,000006AD
	addi	a4,a4,-00000040
	c.sw	a5,76(a4)
	lui	a4,000001E8
	addi	a4,a4,+00000480
	c.sw	a5,84(a4)
	lui	a4,000FFD24
	addi	a4,a4,-000006C0
	c.sw	a5,92(a4)
	lui	a4,000FF85F
	sw	zero,a5,+00000000
	sw	zero,a5,+00000008
	sw	zero,a5,+00000038
	sw	zero,a5,+00000040
	sw	zero,a5,+00000068
	sw	zero,a5,+00000004
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000024
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000044
	addi	a4,a4,-00000200
	c.j	000000002301735C

l23017556:
	c.li	a5,00000003
	bne	a0,a5,0000000023017758

l2301755C:
	lui	a5,0004200D
	lui	a3,00014DE4
	addi	a5,a5,-000000C0
	addi	a3,a3,-0000071C
	c.sw	a5,0(a3)
	lui	a3,00014E72
	addi	a3,a3,-0000038E
	c.sw	a5,4(a3)
	lui	a3,00014F00
	c.sw	a5,8(a3)
	lui	a3,00014F8E
	addi	a3,a3,+0000038E
	c.sw	a5,12(a3)
	lui	a3,0001501C
	addi	a3,a3,+0000071C
	c.sw	a5,16(a3)
	lui	a3,000150AB
	addi	a3,a3,-00000555
	c.sw	a5,20(a3)
	lui	a3,00015139
	addi	a3,a3,-000001C7
	c.sw	a5,24(a3)
	lui	a3,000151C7
	addi	a3,a3,+000001C7
	c.sw	a5,28(a3)
	lui	a3,00015255
	addi	a3,a3,+00000555
	c.sw	a5,32(a3)
	lui	a3,000152E4
	addi	a3,a3,-0000071C
	c.sw	a5,36(a3)
	lui	a3,00015372
	addi	a3,a3,-0000038E
	c.sw	a5,40(a3)
	lui	a3,00015400
	c.sw	a5,44(a3)
	lui	a3,0001548E
	addi	a3,a3,+0000038E
	c.sw	a5,48(a3)
	lui	a3,0001551C
	addi	a3,a3,+0000071C
	c.sw	a5,52(a3)
	lui	a3,000155AB
	addi	a3,a3,-00000555
	c.sw	a5,56(a3)
	lui	a3,00015639
	addi	a3,a3,-000001C7
	c.sw	a5,60(a3)
	lui	a3,000156C7
	addi	a3,a3,+000001C7
	c.sw	a5,64(a3)
	lui	a3,00015755
	addi	a3,a3,+00000555
	c.sw	a5,68(a3)
	lui	a3,000157E4
	addi	a3,a3,-0000071C
	c.sw	a5,72(a3)
	lui	a3,00015872
	addi	a3,a3,-0000038E
	c.sw	a5,76(a3)
	lui	a3,00015900
	c.sw	a5,80(a3)
	lui	a5,0004200D
	lui	a3,000A739A
	addi	a5,a5,-000000EC
	addi	a3,a3,+000006F2
	c.sw	a5,0(a3)
	lui	a3,000A7C7A
	addi	a3,a3,+00000780
	c.sw	a5,4(a3)
	lui	a3,000A855B
	addi	a3,a3,-000007F2
	c.sw	a5,8(a3)
	lui	a3,000A8E4B
	addi	a3,a3,-00000764
	c.sw	a5,12(a3)
	lui	a3,000A972B
	addi	a3,a3,-000006D5
	c.sw	a5,16(a3)
	lui	a3,000AA00B
	addi	a3,a3,-00000647
	c.sw	a5,20(a3)
	lui	a3,000AA8EB
	addi	a3,a3,-000005B9
	c.sw	a5,24(a3)
	lui	a3,000AB1CB
	addi	a3,a3,-0000052B
	c.sw	a5,28(a3)
	lui	a3,000ABABB
	addi	a3,a3,-0000049C
	c.sw	a5,32(a3)
	lui	a3,000AC39B
	addi	a3,a3,-0000040E
	c.sw	a5,36(a3)
	c.lui	a3,FFFFB000
	addi	a2,a3,-00000380
	sh	a2,a5,+00000028
	lui	a5,0004200E
	lui	a2,000A6E7A
	addi	a5,a5,-000006E8
	addi	a3,a3,-00000319
	addi	a2,a2,+000006A7
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	lui	a3,0004200E
	sh	a5,a3,+0000091E
	lui	a5,0004200D
	addi	a5,a5,-0000006C
	c.sw	a5,0(a4)
	c.sw	a5,8(a4)
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	c.sw	a5,64(a4)
	c.sw	a5,72(a4)
	c.sw	a5,80(a4)
	c.sw	a5,88(a4)
	lui	a4,000006DE
	addi	a4,a4,-00000300
	c.sw	a5,4(a4)
	lui	a4,00000219
	addi	a4,a4,+000001C0
	c.sw	a5,12(a4)
	lui	a4,000FFD54
	addi	a4,a4,+00000680
	c.sw	a5,20(a4)
	lui	a4,000FF890
	addi	a4,a4,-000004C0
	c.sw	a5,28(a4)
	lui	a4,00000557
	addi	a4,a4,+00000300
	c.sw	a5,68(a4)
	lui	a4,00000092
	addi	a4,a4,+000007C0
	c.sw	a5,76(a4)
	lui	a4,000FFBCE
	addi	a4,a4,-00000380
	c.sw	a5,84(a4)
	lui	a4,000FF709
	sw	zero,a5,+00000020
	sw	zero,a5,+00000028
	sw	zero,a5,+00000030
	sw	zero,a5,+00000038
	sw	zero,a5,+00000060
	sw	zero,a5,+00000068
	sw	zero,a5,+00000024
	sw	zero,a5,+0000002C
	sw	zero,a5,+00000034
	sw	zero,a5,+0000003C
	addi	a4,a4,+00000140
	c.j	000000002301713A

l23017758:
	c.li	a5,00000004
	bne	a0,a5,000000002301795C

l2301775E:
	lui	a5,0004200D
	lui	a3,00014089
	addi	a5,a5,-000000C0
	addi	a3,a3,-00000777
	c.sw	a5,0(a3)
	lui	a3,00014111
	addi	a3,a3,+00000111
	c.sw	a5,4(a3)
	lui	a3,0001419A
	addi	a3,a3,-00000666
	c.sw	a5,8(a3)
	lui	a3,00014222
	addi	a3,a3,+00000222
	c.sw	a5,12(a3)
	lui	a3,000142AB
	addi	a3,a3,-00000555
	c.sw	a5,16(a3)
	lui	a3,00014333
	addi	a3,a3,+00000333
	c.sw	a5,20(a3)
	lui	a3,000143BC
	addi	a3,a3,-00000444
	c.sw	a5,24(a3)
	lui	a3,00014444
	addi	a3,a3,+00000444
	c.sw	a5,28(a3)
	lui	a3,000144CD
	addi	a3,a3,-00000333
	c.sw	a5,32(a3)
	lui	a3,00014555
	addi	a3,a3,+00000555
	c.sw	a5,36(a3)
	lui	a3,000145DE
	addi	a3,a3,-00000222
	c.sw	a5,40(a3)
	lui	a3,00014666
	addi	a3,a3,+00000666
	c.sw	a5,44(a3)
	lui	a3,000146EF
	addi	a3,a3,-00000111
	c.sw	a5,48(a3)
	lui	a3,00014777
	addi	a3,a3,+00000777
	c.sw	a5,52(a3)
	lui	a3,00014800
	c.sw	a5,56(a3)
	lui	a3,00014889
	addi	a3,a3,-00000777
	c.sw	a5,60(a3)
	lui	a3,00014911
	addi	a3,a3,+00000111
	c.sw	a5,64(a3)
	lui	a3,0001499A
	addi	a3,a3,-00000666
	c.sw	a5,68(a3)
	lui	a3,00014A22
	addi	a3,a3,+00000222
	c.sw	a5,72(a3)
	lui	a3,00014AAB
	addi	a3,a3,-00000555
	c.sw	a5,76(a3)
	lui	a3,00014B33
	addi	a3,a3,+00000333
	c.sw	a5,80(a3)
	lui	a5,0004200D
	lui	a3,000A732A
	addi	a5,a5,-000000EC
	addi	a3,a3,+000006EB
	c.sw	a5,0(a3)
	lui	a3,000A7C0A
	addi	a3,a3,+00000779
	c.sw	a5,4(a3)
	lui	a3,000A84FB
	addi	a3,a3,-000007F8
	c.sw	a5,8(a3)
	lui	a3,000A8DDB
	addi	a3,a3,-0000076A
	c.sw	a5,12(a3)
	lui	a3,000A96BB
	addi	a3,a3,-000006DC
	c.sw	a5,16(a3)
	lui	a3,000A9F9B
	addi	a3,a3,-0000064E
	c.sw	a5,20(a3)
	lui	a3,000AA87B
	addi	a3,a3,-000005C0
	c.sw	a5,24(a3)
	lui	a3,000AB16B
	addi	a3,a3,-00000531
	c.sw	a5,28(a3)
	lui	a3,000ABA4B
	addi	a3,a3,-000004A3
	c.sw	a5,32(a3)
	lui	a3,000AC32B
	addi	a3,a3,-00000415
	c.sw	a5,36(a3)
	c.lui	a3,FFFFB000
	addi	a2,a3,-00000387
	sh	a2,a5,+00000028
	lui	a5,0004200E
	lui	a2,000A6E0A
	addi	a5,a5,-000006E8
	addi	a3,a3,-00000320
	addi	a2,a2,+000006A0
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	lui	a3,0004200E
	addi	a5,a5,-000007AB
	sh	a5,a3,+0000091E
	lui	a5,0004200D
	lui	a3,000002DC
	addi	a5,a5,-0000006C
	addi	a3,a3,+000006C0
	c.sw	a5,32(a4)
	c.sw	a5,40(a4)
	c.sw	a5,48(a4)
	c.sw	a5,56(a4)
	c.sw	a5,96(a4)
	c.sw	a5,104(a4)
	c.sw	a5,44(a3)
	lui	a4,000007A1
	lui	a3,000FFE18
	addi	a4,a4,+00000200
	addi	a3,a3,-00000480
	c.sw	a5,36(a4)
	c.sw	a5,52(a3)
	c.sw	a5,100(a4)
	lui	a3,000FF953
	lui	a4,000FFC2F
	addi	a3,a3,+00000040
	addi	a4,a4,+00000700
	sw	zero,a5,+00000000
	sw	zero,a5,+00000008
	sw	zero,a5,+00000010
	sw	zero,a5,+00000018
	sw	zero,a5,+00000040
	sw	zero,a5,+00000048
	sw	zero,a5,+00000050
	sw	zero,a5,+00000058
	sw	zero,a5,+00000004
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000014
	sw	zero,a5,+0000001C
	c.sw	a5,60(a3)
	sw	zero,a5,+00000044
	sw	zero,a5,+0000004C
	sw	zero,a5,+00000054
	sw	zero,a5,+0000005C
	c.sw	a5,108(a4)
	c.jr	ra

l2301795C:
	c.li	a5,00000005
	bne	a0,a5,0000000023017362

l23017962:
	lui	a5,0004200D
	lui	a3,0000F690
	addi	a5,a5,-000000C0
	addi	a3,a3,+00000690
	c.sw	a5,0(a3)
	lui	a3,0000F6F9
	addi	a3,a3,+000006F9
	c.sw	a5,4(a3)
	lui	a3,0000F762
	addi	a3,a3,+00000762
	c.sw	a5,8(a3)
	lui	a3,0000F7CB
	addi	a3,a3,+000007CB
	c.sw	a5,12(a3)
	lui	a3,0000F835
	addi	a3,a3,-000007CB
	c.sw	a5,16(a3)
	lui	a3,0000F89E
	addi	a3,a3,-00000762
	c.sw	a5,20(a3)
	lui	a3,0000F907
	addi	a3,a3,-000006F9
	c.sw	a5,24(a3)
	lui	a3,0000F970
	addi	a3,a3,-00000690
	c.sw	a5,28(a3)
	lui	a3,0000F9D9
	addi	a3,a3,-00000627
	c.sw	a5,32(a3)
	lui	a3,0000FA42
	addi	a3,a3,-000005BE
	c.sw	a5,36(a3)
	lui	a3,0000FAAB
	addi	a3,a3,-00000555
	c.sw	a5,40(a3)
	lui	a3,0000FB14
	addi	a3,a3,-000004EC
	c.sw	a5,44(a3)
	lui	a3,0000FB7D
	addi	a3,a3,-00000483
	c.sw	a5,48(a3)
	lui	a3,0000FBE6
	addi	a3,a3,-0000041A
	c.sw	a5,52(a3)
	lui	a3,0000FC4F
	addi	a3,a3,-000003B1
	c.sw	a5,56(a3)
	lui	a3,0000FCB8
	addi	a3,a3,-00000348
	c.sw	a5,60(a3)
	lui	a3,0000FD21
	addi	a3,a3,-000002DF
	c.sw	a5,64(a3)
	lui	a3,0000FD8A
	addi	a3,a3,-00000276
	c.sw	a5,68(a3)
	lui	a3,0000FDF3
	addi	a3,a3,-0000020D
	c.sw	a5,72(a3)
	lui	a3,0000FE5C
	addi	a3,a3,-000001A4
	c.sw	a5,76(a3)
	lui	a3,0000FEC5
	addi	a3,a3,-0000013B
	c.sw	a5,80(a3)
	lui	a5,0004200D
	lui	a3,000A734A
	addi	a5,a5,-000000EC
	addi	a3,a3,+000006ED
	c.sw	a5,0(a3)
	lui	a3,000A7C2A
	addi	a3,a3,+0000077B
	c.sw	a5,4(a3)
	lui	a3,000A850B
	addi	a3,a3,-000007F7
	c.sw	a5,8(a3)
	lui	a3,000A8DEB
	addi	a3,a3,-00000769
	c.sw	a5,12(a3)
	lui	a3,000A96DB
	addi	a3,a3,-000006DB
	c.sw	a5,16(a3)
	lui	a3,000A9FBB
	addi	a3,a3,-0000064C
	c.sw	a5,20(a3)
	lui	a3,000AA89B
	addi	a3,a3,-000005BE
	c.sw	a5,24(a3)
	lui	a3,000AB17B
	addi	a3,a3,-00000530
	c.sw	a5,28(a3)
	lui	a3,000ABA5B
	addi	a3,a3,-000004A2
	c.sw	a5,32(a3)
	lui	a3,000AC34B
	addi	a3,a3,-00000414
	c.sw	a5,36(a3)
	c.lui	a3,FFFFB000
	addi	a2,a3,-00000385
	sh	a2,a5,+00000028
	lui	a5,0004200E
	lui	a2,000A6E2A
	addi	a5,a5,-000006E8
	addi	a3,a3,-0000031E
	addi	a2,a2,+000006A2
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-0000052B
	lui	a3,0004200E
	sh	a5,a3,+0000091E
	lui	a5,0004200D
	addi	a5,a5,-0000006C
	c.sw	a5,40(a4)
	c.sw	a5,48(a4)
	c.sw	a5,56(a4)
	c.sw	a5,64(a4)
	lui	a4,000006AD
	addi	a4,a4,-00000040
	c.sw	a5,44(a4)
	lui	a4,000001E8
	addi	a4,a4,+00000480
	c.sw	a5,52(a4)
	lui	a4,000FFD24
	addi	a4,a4,-000006C0
	c.sw	a5,60(a4)
	lui	a4,000FF85F
	addi	a4,a4,-00000200
	sw	zero,a5,+00000000
	sw	zero,a5,+00000008
	sw	zero,a5,+00000010
	sw	zero,a5,+00000018
	sw	zero,a5,+00000020
	sw	zero,a5,+00000048
	sw	zero,a5,+00000050
	sw	zero,a5,+00000058
	sw	zero,a5,+00000060
	sw	zero,a5,+00000068
	sw	zero,a5,+00000004
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000014
	sw	zero,a5,+0000001C
	sw	zero,a5,+00000024
	c.sw	a5,68(a4)
	sw	zero,a5,+0000004C
	sw	zero,a5,+00000054
	sw	zero,a5,+0000005C
	jal	zero,000000002301713C

;; rf_pri_get_vco_freq_cw: 23017B5E
;;   Called from:
;;     23015242 (in rfc_init)
rf_pri_get_vco_freq_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023070684
	lui	a5,00023076
	lw	a2,a5,+000007A8
	lw	a3,a5,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070414
	c.li	a5,00000014
	bge	a5,a0,0000000023017B8C

l23017B8A:
	c.li	a0,00000014

l23017B8C:
	lui	a5,0004200E
	lw	a5,a5,-000006D4
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	andi	a0,a0,+000000FF
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_vco_idac_cw: 23017BA8
;;   Called from:
;;     2301524A (in rfc_init)
rf_pri_get_vco_idac_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023070684
	lui	a5,00023076
	lw	a2,a5,+000007A8
	lw	a3,a5,+000007AC
	jal	ra,000000002306DAA4
	jal	ra,0000000023070414
	c.li	a5,00000014
	bge	a5,a0,0000000023017BD6

l23017BD4:
	c.li	a0,00000014

l23017BD6:
	lui	a5,0004200E
	lw	a5,a5,-000006D4
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	c.srli	a0,00000008
	c.andi	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_txgain_max: 23017BF2
;;   Called from:
;;     23014B24 (in trpc_init)
;;     23014C82 (in trpc_update_vs_channel)
;;     23014CAC (in trpc_update_vs_temperature)
rf_pri_get_txgain_max proc
	lui	a4,0004200E
	lui	a5,00042012
	lw	a0,a4,-000002AC
	lw	a5,a5,-00000474
	lui	a4,0004200E
	c.add	a5,a0
	lw	a0,a4,-000002A8
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_min: 23017C10
;;   Called from:
;;     23014B2C (in trpc_init)
;;     23014C8A (in trpc_update_vs_channel)
;;     23014CB4 (in trpc_update_vs_temperature)
rf_pri_get_txgain_min proc
	lui	a4,0004200E
	lui	a5,00042012
	lw	a0,a4,-000002AC
	lw	a5,a5,-000002D0
	lui	a4,0004200E
	c.add	a5,a0
	lw	a0,a4,-000002A8
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_index: 23017C2E
;;   Called from:
;;     2301582A (in rfc_get_power_level)
rf_pri_get_txgain_index proc
	c.bnez	a1,0000000023017C32

l23017C30:
	c.addi	a0,FFFFFFE2

l23017C32:
	lui	a5,0004200E
	lw	a1,a5,-000002AC
	lui	a4,00042012
	lui	a5,0004200E
	lw	a6,a5,-000002A8
	addi	a4,a4,-0000048C
	c.li	a5,00000000
	c.li	a2,00000010

l23017C4E:
	c.lw	a4,24(a3)
	c.add	a3,a1
	c.add	a3,a6
	bge	a0,a3,0000000023017C62

l23017C58:
	c.addi	a5,00000001
	c.addi	a4,0000001C
	bne	a5,a2,0000000023017C4E

l23017C60:
	c.li	a5,0000000F

l23017C62:
	c.mv	a0,a5
	c.jr	ra

;; rf_pri_query_txgain_table: 23017C66
;;   Called from:
;;     23015296 (in rfc_init)
;;     230152C8 (in rfc_init)
;;     23015302 (in rfc_init)
;;     23015336 (in rfc_init)
;;     2301535C (in rfc_init)
;;     23015382 (in rfc_init)
;;     230153A8 (in rfc_init)
;;     230153CE (in rfc_init)
;;     230153F2 (in rfc_init)
;;     23015414 (in rfc_init)
;;     2301543A (in rfc_init)
;;     23015460 (in rfc_init)
;;     23015488 (in rfc_init)
;;     230154B0 (in rfc_init)
;;     230154D8 (in rfc_init)
;;     23015500 (in rfc_init)
;;     230158EC (in rfc_apply_tx_power_offset)
;;     2301591E (in rfc_apply_tx_power_offset)
;;     23015958 (in rfc_apply_tx_power_offset)
;;     23015988 (in rfc_apply_tx_power_offset)
;;     230159AE (in rfc_apply_tx_power_offset)
;;     230159D4 (in rfc_apply_tx_power_offset)
;;     230159FA (in rfc_apply_tx_power_offset)
;;     23015A20 (in rfc_apply_tx_power_offset)
;;     23015A44 (in rfc_apply_tx_power_offset)
;;     23015A66 (in rfc_apply_tx_power_offset)
;;     23015A8C (in rfc_apply_tx_power_offset)
;;     23015AB2 (in rfc_apply_tx_power_offset)
;;     23015ADA (in rfc_apply_tx_power_offset)
;;     23015B02 (in rfc_apply_tx_power_offset)
;;     23015B2A (in rfc_apply_tx_power_offset)
;;     23015B52 (in rfc_apply_tx_power_offset)
rf_pri_query_txgain_table proc
	c.li	a5,0000000F
	bgeu	a5,a0,0000000023017C6E

l23017C6C:
	c.li	a0,0000000F

l23017C6E:
	srli	a4,a0,00000001
	c.li	a5,00000007
	c.sub	a5,a4
	c.sw	a1,0(a5)
	c.li	a5,0000001C
	add	a0,a0,a5
	lui	a5,00042012
	addi	a5,a5,-0000048C
	c.add	a0,a5
	c.lw	a0,20(a5)
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_dvga_os: 23017C8E
;;   Called from:
;;     23017CFE (in rf_pri_tx_gain_comp)
rf_pri_update_dvga_os proc
	lui	a5,00042012
	lui	a2,0004200D
	addi	a5,a5,-0000048C
	c.li	a4,00000000
	addi	a2,a2,+00000038
	c.li	a1,00000010

l23017CA2:
	c.lw	a5,20(a3)
	add	a6,a2,a4
	c.addi	a4,00000001
	c.add	a3,a0
	sb	a3,a6,+00000000
	c.addi	a5,0000001C
	bne	a4,a1,0000000023017CA2

l23017CB6:
	c.jr	ra

;; rf_pri_tx_gain_comp: 23017CB8
;;   Called from:
;;     23014D10 (in phy_tcal_txpwr)
rf_pri_tx_gain_comp proc
	lui	a6,0004200E
	lw	a5,a6,-000002A4
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a4,00000001
	addi	a6,a6,-000002A4
	bne	a5,a4,0000000023017D12

l23017CCE:
	lui	a5,0004200E
	lw	a5,a5,-00000328
	bge	a0,a5,0000000023017D2A

l23017CDA:
	c.addi	a5,FFFFFFFB
	bge	a5,a0,0000000023017D2A

l23017CE0:
	lui	a5,0004200E
	lw	a5,a5,-00000320
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200E
	sw	a5,a4,+00000D58
	lui	a5,0004200E
	lb	a0,a5,-00000324

l23017CFE:
	jal	ra,0000000023017C8E
	c.lwsp	a2,00000020
	lui	a0,0004200D
	addi	a0,a0,+00000038
	c.addi	sp,00000010
	jal	zero,0000000023015836

l23017D12:
	c.li	a4,FFFFFFFF
	bne	a5,a4,0000000023017D2A

l23017D18:
	lui	a5,0004200E
	lw	a5,a5,-00000328
	bge	a5,a0,0000000023017D2A

l23017D24:
	c.addi	a5,00000005
	blt	a0,a5,0000000023017CE0

l23017D2A:
	lui	a2,0004200D
	addi	a5,a2,+00000004
	c.li	a4,0000000C
	addi	a2,a2,+00000004
	c.li	a3,FFFFFFFF

l23017D3A:
	c.lw	a5,48(a1)
	bge	a0,a1,0000000023017D48

l23017D40:
	c.addi	a4,FFFFFFFF
	c.addi	a5,FFFFFFFC
	bne	a4,a3,0000000023017D3A

l23017D48:
	bge	a4,zero,0000000023017D4E

l23017D4C:
	c.li	a4,00000000

l23017D4E:
	slli	a3,a4,00000002
	c.add	a3,a2
	lui	a1,0004200E
	addi	a7,zero,+00000022
	addi	a5,a4,-00000004
	c.lw	a3,0(a3)
	addi	a1,a1,-00000328
	bge	a7,a0,0000000023017DC6

l23017D6A:
	addi	a0,zero,+00000023
	blt	a0,a3,0000000023017D7C

l23017D72:
	c.addi	a4,00000001
	slli	a3,a4,00000002
	c.add	a3,a2
	c.lw	a3,0(a3)

l23017D7C:
	c.sw	a1,0(a3)

l23017D7E:
	lui	a4,0004200E
	lw	a3,a4,-0000031C
	addi	a4,a4,-0000031C
	bge	a3,a5,0000000023017DE2

l23017D8E:
	c.li	a3,00000001

l23017D90:
	sw	a3,a6,+00000000

l23017D94:
	c.sw	a4,0(a5)
	bge	zero,a5,0000000023017DEA

l23017D9A:
	c.addi	a5,00000001
	andi	a0,a5,+00000001
	c.bnez	a0,0000000023017DA4

l23017DA2:
	c.li	a0,FFFFFFFF

l23017DA4:
	c.srai	a5,00000001

l23017DA6:
	lui	a4,0004200E
	sw	a5,a4,+00000CE0
	lui	a4,0004200E
	sw	a0,a4,+00000CDC
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200E
	sw	a5,a4,+00000D58
	c.j	0000000023017CFE

l23017DC6:
	blt	a3,a0,0000000023017DD0

l23017DCA:
	addi	a5,a4,-00000005
	c.j	0000000023017D7C

l23017DD0:
	c.addi	a4,00000001
	c.slli	a4,02
	c.add	a4,a2
	c.lw	a4,0(a4)
	bge	a7,a4,0000000023017DDE

l23017DDC:
	c.mv	a4,a3

l23017DDE:
	c.sw	a1,0(a4)
	c.j	0000000023017D7E

l23017DE2:
	bge	a5,a3,0000000023017D94

l23017DE6:
	c.li	a3,FFFFFFFF
	c.j	0000000023017D90

l23017DEA:
	c.li	a0,00000000
	c.beqz	a5,0000000023017DA6

l23017DEE:
	andi	a4,a5,+00000001
	c.li	a0,FFFFFFFF
	c.beqz	a4,0000000023017DF8

l23017DF6:
	c.li	a0,00000001

l23017DF8:
	c.addi	a5,FFFFFFFF
	c.li	a4,00000002
	xor	a5,a5,a4
	c.j	0000000023017DA6

;; rf_pri_txcal: 23017E02
;;   Called from:
;;     23018A2C (in rf_pri_full_cal)
rf_pri_txcal proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	lui	s0,00040001
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
	c.lw	s0,20(a5)
	lui	a4,000FF100
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000500
	c.or	a5,a4
	c.sw	s0,20(a5)
	jal	ra,0000000023015DD8
	c.li	a0,00000005
	jal	ra,0000000023015D58
	jal	ra,00000000230167D4
	c.lw	s0,28(a5)
	c.lui	a4,00003000
	addi	a0,zero,+0000003D
	c.or	a5,a4
	c.sw	s0,28(a5)
	lw	a5,s0,+00000084
	lui	a4,00080000
	lui	s4,000FFC40
	c.or	a5,a4
	sw	a5,s0,+00000084
	c.lw	s0,100(a5)
	lui	a4,00000400
	lui	s5,000FFF90
	c.or	a5,a4
	c.sw	s0,100(a5)
	c.lw	s0,108(a5)
	lui	s6,000D0000
	lui	s7,000FE090
	andi	a4,a5,-00000008
	lui	a5,0004200E
	lhu	a5,a5,-000006DC
	lui	s1,000FFC10
	c.li	s2,00000007
	c.or	a5,a4
	c.sw	s0,108(a5)
	jal	ra,000000002301661E
	lui	a5,00010000
	lui	a6,00042012
	lui	a7,00042012
	c.addi	a5,FFFFFFFF
	addi	s3,a6,-0000010C
	addi	s8,a7,-0000048C
	c.swsp	a5,00000084
	c.addi	s4,FFFFFFFF
	c.addi	s5,FFFFFFFF
	c.addi	s6,FFFFFFFF
	c.addi	s7,FFFFFFFF
	c.addi	s1,FFFFFFFF

l23017EB4:
	c.lw	s0,100(a5)
	c.lwsp	a2,000000C4
	c.li	a0,0000000A
	c.and	a4,a5
	lw	a5,s3,+00000000
	c.slli	a5,1C
	c.or	a5,a4
	lw	a4,s3,+00000008
	and	a5,a5,s4
	c.slli	a4,12
	c.or	a5,a4
	c.sw	s0,100(a5)
	c.lw	s0,88(a5)
	and	a4,a5,s5
	lw	a5,s3,+00000004
	c.slli	a5,10
	c.or	a5,a4
	c.sw	s0,88(a5)
	c.lw	s0,72(a5)
	and	a4,a5,s6
	lw	a5,s8,+00000000
	c.slli	a5,1C
	c.or	a5,a4
	lw	a4,s8,+0000000C
	and	a5,a5,s7
	c.slli	a4,14
	c.or	a5,a4
	lui	a4,00000070
	c.or	a5,a4
	c.sw	s0,72(a5)
	auipc	ra,0001EFF4
	jalr	ra,ra,+00000602
	lw	s9,s3,+0000000C
	srli	s10,s9,00000001

l23017F14:
	lw	a5,s0,+00000214
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000218
	jal	ra,0000000023016034
	jal	ra,00000000230160B0
	c.li	a0,0000000A
	auipc	ra,0001EFF4
	jalr	ra,ra,+000005C8
	addi	a1,zero,+00000400
	c.li	a0,00000001
	jal	ra,00000000230160E6
	srai	s11,a0,0000000A
	lui	a5,00023077
	c.mv	a3,s11
	c.mv	a2,s10
	c.mv	a1,s9
	addi	a0,a5,+00000188
	jal	ra,0000000023052118
	addi	a4,zero,+00000140
	addi	t1,zero,+000000BF
	bge	a4,s11,0000000023017F80

l23017F72:
	sub	s9,s9,s10

l23017F76:
	beq	s10,zero,0000000023017F88

l23017F7A:
	srli	s10,s10,00000001
	c.j	0000000023017F14

l23017F80:
	blt	t1,s11,0000000023017F88

l23017F84:
	c.add	s9,s10
	c.j	0000000023017F76

l23017F88:
	c.lui	a1,00001000
	c.li	a0,00000001
	jal	ra,00000000230160E6
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000000
	jal	ra,0000000023016514
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000000
	jal	ra,0000000023016498
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,0000000023016514
	c.lw	s0,112(a5)
	c.swsp	a0,0000008C
	addi	a3,zero,+0000003D
	and	a4,a5,s1
	slli	a5,a0,00000010
	c.or	a5,a4
	c.sw	s0,112(a5)
	c.li	a2,00000002
	c.mv	a1,s9
	c.li	a0,00000000
	jal	ra,0000000023016514
	c.mv	a1,a0
	c.swsp	a0,0000000C
	c.li	a0,00000000
	jal	ra,0000000023016498
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000080
	addi	a1,zero,+00000400
	c.li	a0,00000002
	jal	ra,0000000023016514
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000002
	jal	ra,0000000023016498
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,0000000023016514
	c.mv	a1,a0
	c.li	a0,00000003
	jal	ra,0000000023016498
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.mv	a1,s9
	c.li	a0,00000002
	jal	ra,0000000023016514
	c.mv	a1,a0
	c.swsp	a0,00000088
	c.li	a0,00000002
	jal	ra,0000000023016498
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,0000000023016514
	c.mv	a1,a0
	c.swsp	a0,00000008
	c.li	a0,00000003
	jal	ra,0000000023016498
	lui	s11,0004200E
	lw	a3,s11,-000006D4
	addi	a5,s2,+0000000C
	c.slli	a5,03
	c.add	a5,a3
	c.lw	a5,8(a3)
	c.lwsp	s8,000000C0
	c.lui	a1,FFFFF000
	andi	a3,a3,-00000040
	andi	a2,t1,+0000003F
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lwsp	t3,0000008C
	c.lw	a5,8(a3)
	addi	a1,a1,+0000003F
	andi	a2,t3,+0000003F
	c.slli	a2,06
	c.and	a3,a1
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lwsp	s4,000000AC
	c.lw	a5,8(a3)
	lui	s9,000FF801
	andi	a2,t4,+000007FF
	c.addi	s9,FFFFFFFF
	c.slli	a2,0C
	and	a3,a3,s9
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lw	a5,12(a3)
	c.lwsp	a6,000000C4
	lui	a0,00023077
	andi	a3,a3,-00000400
	andi	a2,a4,+000003FF
	c.or	a3,a2
	c.sw	a5,12(a3)
	c.mv	a2,t3
	c.mv	a3,t4
	c.mv	a1,t1
	addi	a0,a0,+000001AC
	jal	ra,0000000023052118
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s3,00000010
	addi	s8,s8,+00000038
	bne	s2,a5,0000000023017EB4

l230180C8:
	jal	ra,000000002301614A
	c.lw	s0,28(a5)
	c.lui	a4,FFFFD000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.sw	s0,28(a5)
	jal	ra,0000000023015F06
	c.lw	s0,20(a5)
	lui	a4,00000F00
	c.or	a5,a4
	c.sw	s0,20(a5)
	c.lw	s0,112(a5)
	lw	a3,s11,-000006D4
	lui	a4,000C1000
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	lw	a5,a3,+00000080
	andi	a5,a5,+0000003F
	c.slli	a5,18
	c.or	a5,a4
	c.and	a5,s1
	lw	s1,a3,+00000080
	lui	a3,000007FF
	c.srli	s1,00000006
	andi	s1,s1,+0000003F
	c.slli	s1,10
	c.or	s1,a5
	c.sw	s0,112(s1)
	lw	a5,s0,+00000600
	lw	a4,s11,-000006D4
	and	a5,a5,s9
	lw	s9,a4,+00000080
	and	s9,s9,a3
	or	s9,s9,a5
	lw	a5,a4,+00000084
	andi	s9,s9,-00000400
	andi	a5,a5,+000003FF
	or	s9,a5,s9
	sw	s9,s0,+00000600
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

;; rf_pri_roscal: 2301815E
;;   Called from:
;;     23018A24 (in rf_pri_full_cal)
rf_pri_roscal proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lui	s0,00040001
	c.lw	s0,32(a3)
	c.lui	a5,FFFF4000
	addi	a4,a5,-00000001
	c.lw	s0,20(a5)
	andi	a3,a3,+00000100
	c.and	a5,a4
	c.bnez	a3,00000000230181A4

l2301818A:
	c.sw	s0,20(a5)
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

l230181A4:
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s0,20(a5)
	jal	ra,0000000023015DD8
	c.li	a0,00000003
	jal	ra,0000000023015D58
	c.lw	s0,28(a5)
	lui	s1,0004200E
	lui	s5,000FFC10
	ori	a5,a5,+00000200
	c.sw	s0,28(a5)
	jal	ra,00000000230167D4
	c.lw	s0,72(a5)
	c.lui	a4,FFFF9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00006000
	addi	a4,a4,+00000300
	c.or	a5,a4
	c.sw	s0,72(a5)
	c.li	a0,00000001
	jal	ra,0000000023016920
	lw	a4,s1,-000006D4
	andi	s3,a0,+0000003F
	c.addi	s5,FFFFFFFF
	c.lw	a4,96(a5)
	slli	s4,a0,00000010
	c.mv	s2,a0
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,96(a5)
	lw	a5,s0,+0000016C
	c.mv	a1,a0
	lui	a0,00023077
	and	a5,a5,s5
	or	a5,a5,s4
	sw	a5,s0,+0000016C
	addi	a0,a0,+000000E8
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	lui	a0,00023077
	c.mv	a1,s2
	c.lw	a4,88(a5)
	addi	a0,a0,+000000FC
	lui	s8,000C1000
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,88(a5)
	lw	a5,s0,+0000016C
	c.addi	s8,FFFFFFFF
	c.lui	s6,FFFFC000
	andi	a5,a5,-00000040
	or	a5,s2,a5
	sw	a5,s0,+0000016C
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	lui	a0,00023077
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,+00000110
	addi	s6,s6,+000000FF
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s5,a5,s5
	or	s4,s4,s5
	sw	s4,s0,+00000168
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	lui	a0,00023077
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,+00000124
	c.lui	s4,FFFFF000
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,72(a5)
	lw	a5,s0,+00000168
	addi	s4,s4,+0000003F
	andi	a5,a5,-00000040
	or	a5,s2,a5
	sw	a5,s0,+00000168
	jal	ra,0000000023052118
	c.li	a0,00000000
	jal	ra,0000000023016920
	lw	a4,s1,-000006D4
	andi	s3,a0,+0000003F
	c.slli	s3,06
	c.lw	a4,96(a5)
	slli	s7,a0,00000018
	c.mv	s2,a0
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,96(a5)
	lw	a5,s0,+0000016C
	c.mv	a1,a0
	lui	a0,00023077
	and	a5,a5,s8
	or	a5,a5,s7
	sw	a5,s0,+0000016C
	addi	a0,a0,+00000138
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	slli	s5,s2,00000008
	lui	a0,00023077
	c.lw	a4,88(a5)
	c.mv	a1,s2
	addi	a0,a0,+0000014C
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,88(a5)
	lw	a5,s0,+0000016C
	and	a5,a5,s6
	or	a5,a5,s5
	sw	a5,s0,+0000016C
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	lui	a0,00023077
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,+00000160
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s8,a5,s8
	or	s7,s7,s8
	sw	s7,s0,+00000168
	jal	ra,0000000023052118
	lw	a4,s1,-000006D4
	lui	a0,00023077
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,+00000174
	and	s4,a5,s4
	or	s3,s4,s3
	sw	s3,a4,+00000048
	lw	a5,s0,+00000168
	and	s6,a5,s6
	or	s5,s5,s6
	sw	s5,s0,+00000168
	jal	ra,0000000023052118
	jal	ra,0000000023015F06
	c.lw	s0,20(a5)
	c.lui	a4,0000C000
	c.or	a5,a4
	c.j	000000002301818A

;; rf_pri_rccal: 23018392
;;   Called from:
;;     23018A28 (in rf_pri_full_cal)
rf_pri_rccal proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	s2,00040001
	lw	a3,s2,+00000020
	lui	a5,000FFF40
	addi	a4,a5,-00000001
	lw	a5,s2,+00000014
	andi	a3,a3,+00000400
	c.and	a5,a4
	c.bnez	a3,00000000230183C8

l230183B8:
	sw	a5,s2,+00000014

l230183BC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230183C8:
	lui	a4,00000040
	c.or	a5,a4
	sw	a5,s2,+00000014
	jal	ra,0000000023015DD8
	c.li	a0,00000004
	jal	ra,0000000023015D58
	lw	a5,s2,+00000084
	lui	a4,000FD000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00002000
	c.or	a5,a4
	sw	a5,s2,+00000084
	lw	a4,s2,+0000008C
	c.lui	a5,00001000
	c.li	a0,00000001
	c.or	a4,a5
	sw	a4,s2,+0000008C
	lw	a4,s2,+0000001C
	addi	a5,a5,-00000800
	c.or	a5,a4
	sw	a5,s2,+0000001C
	jal	ra,000000002301665C
	c.mv	s1,a0
	c.li	a0,00000000
	jal	ra,000000002301665C
	lw	a4,s2,+00000080
	lui	s2,0004200E
	lw	a5,s2,-000006D4
	srli	a2,a4,00000018
	andi	a2,a2,+0000003F
	c.lw	a5,8(a3)
	c.lui	a1,FFFFF000
	addi	a1,a1,+0000003F
	andi	a3,a3,-00000040
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lw	a5,8(a3)
	srli	a2,a4,00000010
	andi	a2,a2,+0000003F
	c.slli	a2,06
	c.and	a3,a1
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lw	a5,8(a3)
	srli	a2,a4,00000008
	lui	a1,000FFFC1
	c.addi	a1,FFFFFFFF
	andi	a2,a2,+0000003F
	c.slli	a2,0C
	c.and	a3,a1
	c.or	a3,a2
	c.sw	a5,8(a3)
	c.lw	a5,8(a3)
	lui	a2,000FF040
	c.addi	a2,FFFFFFFF
	andi	a4,a4,+0000003F
	c.and	a3,a2
	c.slli	a4,12
	c.or	a4,a3
	c.sw	a5,8(a4)
	c.lw	a5,8(a1)
	c.lw	a5,8(a2)
	c.lw	a5,8(a3)
	c.lw	a5,8(a4)
	c.mv	s0,a0
	c.srli	a2,0000000C
	c.srli	a3,00000006
	c.srli	a4,00000012
	lui	a0,00023077
	andi	a4,a4,+0000003F
	andi	a3,a3,+0000003F
	andi	a2,a2,+0000003F
	andi	a1,a1,+0000003F
	addi	a0,a0,+00000094
	jal	ra,0000000023052118
	lw	a4,s2,-000006D4
	c.lw	a4,8(a5)
	c.lw	a4,8(a3)
	andi	a5,a5,+0000003F
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	bgeu	a5,a3,00000000230184C6

l230184BE:
	c.lw	a4,8(a5)
	c.srli	a5,00000006
	andi	a5,a5,+0000003F

l230184C6:
	c.lw	a4,8(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+0000003F
	bgeu	a5,a3,00000000230184DA

l230184D2:
	c.lw	a4,8(a5)
	c.srli	a5,0000000C
	andi	a5,a5,+0000003F

l230184DA:
	c.lw	a4,8(a3)
	c.srli	a3,00000012
	andi	a3,a3,+0000003F
	bgeu	a5,a3,00000000230184EE

l230184E6:
	c.lw	a4,8(a5)
	c.srli	a5,00000012
	andi	a5,a5,+0000003F

l230184EE:
	addi	a2,zero,+00000027
	c.li	a3,00000018
	bge	a2,a5,00000000230184FE

l230184F8:
	addi	a3,zero,+0000003F
	c.sub	a3,a5

l230184FE:
	c.lw	a4,8(a2)
	c.lw	a4,8(a5)
	andi	a3,a3,+000000FF
	c.add	a2,a3
	andi	a2,a2,+0000003F
	andi	a5,a5,-00000040
	c.or	a5,a2
	c.sw	a4,8(a5)
	c.lw	a4,8(a5)
	c.lw	a4,8(a2)
	c.lui	a1,FFFFF000
	c.srli	a5,00000006
	c.add	a5,a3
	addi	a1,a1,+0000003F
	andi	a5,a5,+0000003F
	c.and	a2,a1
	c.slli	a5,06
	c.or	a5,a2
	c.sw	a4,8(a5)
	c.lw	a4,8(a5)
	c.lw	a4,8(a2)
	lui	a1,000FFFC1
	c.srli	a5,0000000C
	c.add	a5,a3
	c.addi	a1,FFFFFFFF
	andi	a5,a5,+0000003F
	c.and	a2,a1
	c.slli	a5,0C
	c.or	a5,a2
	c.sw	a4,8(a5)
	c.lw	a4,8(a5)
	lui	a2,000FF040
	c.addi	a2,FFFFFFFF
	c.srli	a5,00000012
	c.add	a5,a3
	c.lw	a4,8(a3)
	andi	a5,a5,+0000003F
	c.slli	a5,12
	c.and	a3,a2
	c.or	a5,a3
	c.sw	a4,8(a5)
	c.lw	a4,8(a0)
	andi	a0,a0,+0000003F
	jal	ra,0000000023016446
	lw	a5,s2,-000006D4
	c.li	a0,00000000
	c.lw	a5,8(a1)
	c.srli	a1,00000006
	andi	a1,a1,+0000003F
	jal	ra,000000002301646E
	lw	a5,s2,-000006D4
	lui	a0,00023077
	addi	a0,a0,+00000090
	c.lw	a5,8(a1)
	c.lw	a5,8(a2)
	c.lw	a5,8(a3)
	c.lw	a5,8(a4)
	c.srli	a2,0000000C
	c.srli	a3,00000006
	c.srli	a4,00000012
	andi	a4,a4,+0000003F
	andi	a3,a3,+0000003F
	andi	a2,a2,+0000003F
	andi	a1,a1,+0000003F
	jal	ra,0000000023052118
	jal	ra,0000000023015F06
	c.li	a5,00000002
	beq	s1,a5,00000000230185BA

l230185B6:
	bne	s0,a5,00000000230185D2

l230185BA:
	lui	a3,00040001
	c.lw	a3,20(a5)
	lui	a4,000FFF40
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000080
	c.or	a5,a4
	c.sw	a3,20(a5)
	c.j	00000000230183BC

l230185D2:
	lui	a4,00040001
	c.lw	a4,20(a5)
	lui	a3,000000C0
	c.or	a5,a3
	c.sw	a4,20(a5)
	c.j	00000000230183BC

;; rf_pri_lo_acal: 230185E2
;;   Called from:
;;     23018A20 (in rf_pri_full_cal)
rf_pri_lo_acal proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	a4,00040001
	c.swsp	s1,00000090
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.lw	a4,20(a5)
	lui	s3,0004200D
	lui	s4,000FFE10
	andi	a5,a5,-000000C1
	ori	a5,a5,+00000040
	c.sw	a4,20(a5)
	jal	ra,0000000023015DD8
	c.li	a0,00000006
	c.lui	s5,FFFFE000
	jal	ra,0000000023015D58
	addi	s3,s3,-000000C0
	c.li	s2,00000000
	lui	s0,00040001
	c.addi	s4,FFFFFFFF
	lui	s6,0004200E
	addi	s5,s5,+000000FF

l23018632:
	c.lw	s0,28(a5)
	lui	a4,00000100
	addi	s7,s2,+00000008
	ori	a5,a5,+00000010
	c.sw	s0,28(a5)
	lw	a5,s0,+000000A4
	slli	a3,s7,00000001
	c.li	a0,00000001
	andi	a5,a5,-00000701
	ori	a5,a5,+00000400
	sw	a5,s0,+000000A4
	lw	a5,s0,+000000A0
	c.li	s8,00000003
	c.li	s1,00000010
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+000000A0
	lw	a5,s0,+000000A0
	c.li	s9,FFFFFFFF
	andi	a4,a5,-00000100
	lw	a5,s6,-000006D4
	c.add	a5,a3
	lhu	a5,a5,+0000000C
	andi	a5,a5,+000000FF
	c.or	a5,a4
	sw	a5,s0,+000000A0
	lw	a5,s3,+00000000
	sw	a5,s0,+000000C4
	auipc	ra,0001EFF4
	jalr	ra,ra,-0000018A

l23018698:
	lw	a5,s0,+000000A0
	slli	a3,s1,00000010
	c.li	a0,00000001
	and	a5,a5,s4
	c.or	a5,a3
	sw	a5,s0,+000000A0
	bne	s8,s9,000000002301872C

l230186B0:
	auipc	ra,0001EFF4
	jalr	ra,ra,-000001AA
	lw	a5,s0,+000000A4
	slli	a4,a5,00000013
	blt	a4,zero,00000000230186CC

l230186C4:
	c.li	a5,0000001E
	bltu	a5,s1,00000000230186CC

l230186CA:
	c.addi	s1,00000001

l230186CC:
	lw	a5,s6,-000006D4
	c.slli	s7,01
	andi	a4,s1,+0000001F
	c.add	s7,a5
	lhu	a5,s7,+0000000C
	c.slli	a4,08
	lui	a0,00023077
	and	a5,a5,s5
	c.or	a5,a4
	sh	a5,s7,+0000000C
	c.mv	a1,s2
	c.mv	a2,s1
	addi	a0,a0,+00000070
	jal	ra,0000000023052118
	c.addi	s2,00000001
	c.li	a5,00000015
	c.addi	s3,00000004
	bne	s2,a5,0000000023018632

l23018702:
	jal	ra,0000000023015F06
	lui	a4,00040001
	c.lw	a4,20(a5)
	ori	a5,a5,+000000C0
	c.sw	a4,20(a5)
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

l2301872C:
	auipc	ra,0001EFF4
	jalr	ra,ra,-00000226
	lw	a4,s0,+000000A4
	c.li	a5,00000001
	sll	a5,a5,s8
	slli	a3,a4,00000013
	bge	a3,zero,000000002301874C

l23018746:
	c.sub	s1,a5

l23018748:
	c.addi	s8,FFFFFFFF
	c.j	0000000023018698

l2301874C:
	c.add	s1,a5
	c.j	0000000023018748

;; rf_pri_fcal: 23018750
;;   Called from:
;;     23018A1C (in rf_pri_full_cal)
rf_pri_fcal proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200E
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,00040001
	c.swsp	s2,00000010
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	addi	a5,a5,-000006E8
	lhu	s4,a5,+00000000
	lhu	s5,a5,+00000002
	lhu	s3,a5,+00000004
	c.lw	s0,20(a5)
	c.lui	s1,FFFF0000
	c.lui	s2,00010000
	andi	a5,a5,-00000031
	ori	a5,a5,+00000010
	c.sw	s0,20(a5)
	jal	ra,0000000023015DD8
	c.li	a0,00000007
	jal	ra,0000000023015D58
	c.lw	s0,28(a5)
	c.lui	a4,FFFFD000
	c.addi	a4,FFFFFFFF
	ori	a5,a5,+00000008
	c.sw	s0,28(a5)
	lw	a5,s0,+000000A0
	c.li	a0,0000000A
	c.li	s9,FFFFFFFF
	andi	a5,a5,-00000100
	ori	a5,a5,+00000080
	sw	a5,s0,+000000A0
	lw	a5,s0,+000000B8
	c.li	s6,00000001
	c.li	s8,0000000E
	c.and	a5,a4
	sw	a5,s0,+000000B8
	lw	a5,s0,+000000A8
	lui	s7,00023077
	and	a4,a5,s1
	lui	a5,0004200E
	lhu	a5,a5,-000006E2
	c.addi	s1,FFFFFFFF
	c.or	a5,a4
	sw	a5,s0,+000000A8
	lui	a5,00001000
	sw	a5,s0,+000000C4
	lw	a5,s0,+000000C0
	c.lui	a4,00001000
	c.or	a5,a4
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000C0
	c.and	a5,s1
	sw	a5,s0,+000000C0
	lw	a4,s0,+000000B8
	or	a4,a4,s2
	sw	a4,s0,+000000B8
	auipc	ra,0001EFF4
	jalr	ra,ra,-00000308
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001EFF4
	jalr	ra,ra,-0000032A
	lw	a5,s0,+000000A4
	addi	a0,zero,+00000032
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000002
	sw	a5,s0,+000000A4
	auipc	ra,0001EFF4
	jalr	ra,ra,-00000344

l23018852:
	c.li	s2,00000006
	addi	s0,zero,+00000080

l23018858:
	beq	s2,s9,000000002301886A

l2301885C:
	c.mv	a0,s0
	jal	ra,00000000230163EC
	bltu	a0,s4,00000000230188D4

l23018866:
	bltu	s5,a0,00000000230188E2

l2301886A:
	bgeu	s8,s0,00000000230188EA

l2301886E:
	addi	s1,s0,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,00000000230163EC
	addi	s2,s0,-00000026
	lui	a5,00042012
	c.slli	s2,10
	sh	a0,a5,+00000A54
	addi	s4,a5,-000005AC
	srli	s2,s2,00000010
	addi	s5,a5,-000005AC

l23018896:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,00000000230163EC
	sh	a0,s4,+00000002
	bltu	s3,a0,00000000230188B0

l230188AA:
	c.addi	s4,00000002
	bne	s1,s2,0000000023018896

l230188B0:
	lui	a2,0004200D
	lui	s1,00042012
	c.li	a3,00000000
	c.li	a5,00000000
	addi	a2,a2,-000000EC
	addi	s1,s1,-0000055C
	c.addi	s0,00000002
	addi	a6,zero,+0000002A

l230188CA:
	add	a4,a2,a3
	lhu	a0,a4,+00000000
	c.j	0000000023018948

l230188D4:
	sll	a1,s6,s2
	c.sub	s0,a1

l230188DA:
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s2,FFFFFFFF
	c.j	0000000023018858

l230188E2:
	sll	a1,s6,s2
	c.add	s0,a1
	c.j	00000000230188DA

l230188EA:
	c.mv	a1,s0
	addi	a0,s7,+00000038
	lui	s0,00040001
	jal	ra,0000000023052118
	lw	a5,s0,+000000C0
	c.lui	s2,00010000
	addi	a0,zero,+00000032
	c.and	a5,s1
	sw	a5,s0,+000000C0
	lw	a4,s0,+000000B8
	or	a4,a4,s2
	sw	a4,s0,+000000B8
	auipc	ra,0001EFF4
	jalr	ra,ra,-0000040E
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001EFF4
	jalr	ra,ra,-00000430
	c.j	0000000023018852

l23018940:
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010

l23018948:
	slli	a1,a5,00000001
	c.add	a1,s5
	lhu	a1,a1,+00000000
	slli	a4,a5,00000010
	c.srli	a4,00000010
	bltu	a1,a0,0000000023018940

l2301895C:
	add	a1,s1,a3
	sub	a0,s0,a4
	sh	a0,a1,+00000000
	bge	zero,a5,00000000230189E6

l2301896C:
	addi	a5,a4,-00000001
	c.slli	a5,10
	c.srai	a5,00000010

l23018974:
	c.addi	a3,00000002
	bne	a3,a6,00000000230188CA

l2301897A:
	c.mv	s0,s1
	jal	ra,0000000023015F06
	c.li	s1,00000000
	lui	s4,0004200E
	lui	s3,00023077
	c.li	s2,00000015

l2301898C:
	lw	a4,s4,-000006D4
	addi	a5,s1,+00000008
	c.slli	a5,01
	c.add	a4,a5
	lhu	a2,s0,+00000000
	lhu	a5,a4,+0000000C
	c.addi	s1,00000001
	andi	a3,a2,+000000FF
	andi	a5,a5,-00000100
	c.or	a5,a3
	sh	a5,a4,+0000000C
	c.mv	a1,s1
	addi	a0,s3,+0000004C
	jal	ra,0000000023052118
	c.addi	s0,00000002
	bne	s1,s2,000000002301898C

l230189C0:
	lui	a4,00040001
	c.lw	a4,20(a5)
	ori	a5,a5,+00000030
	c.sw	a4,20(a5)
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

l230189E6:
	c.li	a5,00000000
	c.j	0000000023018974

;; rf_pri_full_cal: 230189EA
;;   Called from:
;;     23018DC0 (in rf_pri_init)
rf_pri_full_cal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s0,00040001
	lw	a5,s0,+00000220
	andi	a5,a5,-00000061
	sw	a5,s0,+00000220
	lw	a5,s0,+00000220
	ori	a5,a5,+00000021
	sw	a5,s0,+00000220
	lw	a5,s0,+00000220
	ori	a5,a5,+00000040
	sw	a5,s0,+00000220
	jal	ra,00000000230160B0
	jal	ra,0000000023018750
	jal	ra,00000000230185E2
	jal	ra,000000002301815E
	jal	ra,0000000023018392
	jal	ra,0000000023017E02
	c.lw	s0,12(a5)
	c.lui	a4,FFFFE000
	addi	a4,a4,+0000067D
	ori	a5,a5,+00000006
	c.sw	s0,12(a5)
	lw	a5,s0,+00000220
	andi	a5,a5,-00000062
	sw	a5,s0,+00000220
	lw	a5,s0,+00000220
	c.and	a5,a4
	sw	a5,s0,+00000220
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_restore_cal_reg: 23018A5C
;;   Called from:
;;     23018DB2 (in rf_pri_init)
rf_pri_restore_cal_reg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	lw	a2,s1,-000006D4
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s0,00040001
	lw	a4,s0,+00000168
	c.lw	a2,72(a3)
	c.lui	a5,FFFFC000
	andi	a4,a4,-00000040
	andi	a3,a3,+0000003F
	addi	a5,a5,+000000FF
	c.or	a3,a4
	and	a4,a3,a5
	c.lw	a2,72(a3)
	lui	s3,000C1000
	c.addi	s3,FFFFFFFF
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,08
	c.or	a3,a4
	lui	a4,000FFC10
	addi	s2,a4,-00000001
	c.lw	a2,80(a4)
	and	a3,a3,s2
	andi	a4,a4,+0000003F
	c.slli	a4,10
	c.or	a3,a4
	and	a4,a3,s3
	c.lw	a2,80(a3)
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,18
	c.or	a3,a4
	sw	a3,s0,+00000168
	lw	a1,s1,-000006D4
	lw	a4,s0,+0000016C
	c.lw	a1,88(a3)
	andi	a4,a4,-00000040
	andi	a3,a3,+0000003F
	c.or	a3,a4
	and	a4,a3,a5
	c.lw	a1,88(a3)
	c.lw	a1,96(a2)
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,08
	c.or	a3,a4
	andi	a2,a2,+0000003F
	and	a3,a3,s2
	c.slli	a2,10
	c.or	a3,a2
	and	a2,a3,s3
	c.lw	a1,96(a3)
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	c.slli	a3,18
	c.or	a3,a2
	sw	a3,s0,+0000016C
	lw	a4,s0,+00000080
	lw	a3,s1,-000006D4
	and	a2,a4,s3
	c.lw	a3,8(a4)
	andi	a4,a4,+0000003F
	c.slli	a4,18
	c.or	a4,a2
	c.and	a4,a5
	c.lw	a3,8(a5)
	c.srli	a5,0000000C
	andi	a5,a5,+0000003F
	c.slli	a5,08
	c.or	a5,a4
	and	a4,a5,s2
	c.lw	a3,8(a5)
	c.srli	a5,00000006
	andi	a5,a5,+0000003F
	c.slli	a5,10
	c.or	a5,a4
	c.lw	a3,8(a4)
	andi	a5,a5,-00000040
	c.srli	a4,00000012
	andi	a4,a4,+0000003F
	c.or	a5,a4
	sw	a5,s0,+00000080
	jal	ra,000000002301614A
	lw	a3,s1,-000006D4
	c.lw	s0,112(a4)
	lui	a2,000007FF
	lw	a5,a3,+00000080
	and	a4,a4,s3
	andi	a5,a5,+0000003F
	c.slli	a5,18
	c.or	a5,a4
	and	a4,a5,s2
	lw	a5,a3,+00000080
	c.srli	a5,00000006
	andi	a5,a5,+0000003F
	c.slli	a5,10
	c.or	a5,a4
	c.sw	s0,112(a5)
	lw	a5,s0,+00000600
	lw	a3,s1,-000006D4
	lui	a4,000FF801
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	lw	a5,a3,+00000080
	c.and	a5,a2
	c.or	a5,a4
	lw	a4,a3,+00000084
	andi	a5,a5,-00000400
	andi	a4,a4,+000003FF
	c.or	a5,a4
	sw	a5,s0,+00000600
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; rf_pri_init: 23018BC0
;;   Called from:
;;     230150FC (in rfc_init)
rf_pri_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,00000000230169F0
	lui	a4,0004200E
	addi	a4,a4,-00000318
	sltiu	a5,s0,+00000001
	c.sw	a4,0(a5)
	lui	a3,00040010
	lw	a5,a3,-000007EC
	c.lui	a2,FFFFF000
	addi	a2,a2,+000000FF
	c.and	a5,a2
	ori	a5,a5,+00000300
	sw	a5,a3,+00000814
	lui	a1,0004000F
	c.lw	a1,48(a5)
	lui	a2,000F1000
	c.addi	a2,FFFFFFFF
	c.and	a5,a2
	lui	a2,00008000
	c.or	a5,a2
	c.sw	a1,48(a5)
	lui	a1,00040001
	c.lw	a1,48(a5)
	c.lui	a2,00001000
	c.addi	a2,00000001
	c.or	a5,a2
	c.sw	a1,48(a5)
	lw	a5,a3,-0000077C
	ori	a5,a5,+00000004
	sw	a5,a3,+00000884
	c.lw	a4,0(a5)
	c.bnez	a5,0000000023018C36

l23018C2C:
	c.li	a0,0000000A
	auipc	ra,0001EFF4
	jalr	ra,ra,-0000071E

l23018C36:
	lui	a2,0004200E
	addi	a2,a2,-000006E0
	c.lw	a2,0(a4)
	lui	a3,00040001
	c.lw	a3,100(a5)
	c.lw	a4,0(a1)
	c.lui	a0,FFFF8000
	c.lw	a4,4(a4)
	addi	a0,a0,+000000FF
	c.and	a5,a0
	c.slli	a1,08
	c.or	a5,a1
	c.slli	a4,04
	andi	a5,a5,-000000F8
	c.or	a5,a4
	c.lui	a4,00004000
	c.addi	a4,00000002
	c.or	a5,a4
	c.sw	a3,100(a5)
	c.lw	a2,0(a5)
	lw	a4,a3,+00000128
	lui	t1,00000400
	c.lw	a5,8(a1)
	lw	a6,a5,+0000000C
	lui	a5,000FF810
	addi	a0,a5,-00000001
	c.and	a4,a0
	slli	a5,a1,00000010
	c.or	a4,a5
	c.lui	a5,FFFF1000
	addi	a1,a5,-00000001
	c.and	a4,a1
	slli	a5,a6,0000000C
	c.or	a4,a5
	or	a4,a4,t1
	sw	a4,a3,+00000128
	lw	a6,a2,+00000000
	lw	a4,a3,+0000012C
	c.lui	s2,00010000
	lw	a5,a6,+00000010
	lw	t3,a6,+00000014
	andi	a4,a4,-00000800
	c.slli	a5,04
	lw	a7,a6,+00000018
	c.or	a4,a5
	or	a5,a4,t3
	lw	a6,a6,+0000001C
	c.and	a5,a0
	slli	a4,a7,00000010
	ori	a5,a5,+00000400
	c.or	a5,a4
	c.and	a5,a1
	slli	a4,a6,0000000C
	c.or	a5,a4
	or	a5,a5,t1
	sw	a5,a3,+0000012C
	lw	a5,a3,+00000090
	lui	s1,0004000E
	or	a5,a5,s2
	sw	a5,a3,+00000090
	lw	a5,a3,+000000B8
	andi	a4,a5,-00000011
	c.lw	a2,0(a5)
	c.lw	a5,32(a5)
	c.slli	a5,04
	c.or	a5,a4
	sw	a5,a3,+000000B8
	c.lw	a2,0(a1)
	lw	a5,a3,+00000138
	c.lw	a1,36(a4)
	c.andi	a5,FFFFFFFC
	c.slli	a4,01
	c.or	a5,a4
	c.lw	a1,36(a4)
	c.or	a5,a4
	sw	a5,a3,+00000138
	lw	a5,a3,+00000138
	lui	a4,000FFFD0
	c.addi	a4,FFFFFFF7
	c.and	a5,a4
	ori	a5,a5,+00000300
	sw	a5,a3,+00000138
	lw	a5,a3,+00000130
	c.lui	a4,FFFF0000
	c.addi	a4,FFFFFFFE
	c.and	a5,a4
	sw	a5,a3,+00000130
	lw	a5,s1,+00000400
	andi	a4,a5,-00000003
	c.lw	a2,0(a5)
	c.lw	a5,44(a5)
	c.slli	a5,01
	c.or	a5,a4
	sw	a5,s1,+00000400
	lw	a5,s1,+00000418
	lui	a4,000FD000
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	c.lw	a2,0(a5)
	c.lw	a5,48(a5)
	c.slli	a5,18
	c.or	a5,a4
	sw	a5,s1,+00000418
	lw	a5,a3,+0000008C
	lui	a4,000FFF10
	c.addi	a4,FFFFFFFF
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000002
	sw	a5,a3,+0000008C
	lui	a3,0004000F
	c.lw	a3,48(a5)
	c.and	a5,a4
	lui	a4,000000C0
	c.or	a5,a4
	c.sw	a3,48(a5)
	jal	ra,0000000023015B8E
	lw	a5,s1,+00000404
	or	a5,a5,s2
	sw	a5,s1,+00000404
	lw	a5,s1,+0000041C
	ori	a5,a5,+000000FF
	sw	a5,s1,+0000041C
	c.bnez	s0,0000000023018DB6

l23018DA8:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023018A5C

l23018DB6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230189EA

;; rf_pri_update_power_offset: 23018DC4
;;   Called from:
;;     230054EC (in bl_tpc_update_power_table)
rf_pri_update_power_offset proc
	lui	a3,00042012
	lui	a4,00042012
	c.li	a5,00000000
	addi	a3,a3,-000004C4
	addi	a4,a4,-000004FC
	addi	a1,zero,+00000038

l23018DDA:
	add	a2,a0,a5
	c.lw	a2,0(a2)
	add	a6,a3,a5
	sw	a2,a6,+00000000
	add	a6,a4,a5
	sw	a2,a6,+00000000
	c.addi	a5,00000004
	bne	a5,a1,0000000023018DDA

l23018DF6:
	c.jr	ra

;; phyif_utils_decode: 23018DF8
;;   Called from:
;;     23009A7E (in rxu_mgt_frame_check)
phyif_utils_decode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,+00000006
	c.li	a3,00000001
	c.mv	s0,a1
	c.andi	a4,00000007
	lbu	a5,a0,+00000013
	bgeu	a3,a4,0000000023018E3A

l23018E10:
	lbu	a0,a0,+00000014
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	addi	a5,zero,+0000007A
	xor	a0,a0,a5

l23018E24:
	fcvt.s.w	fa5,a0
	c.lwsp	a2,00000020
	fcvt.w.s	a0,fa5
	sb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23018E3A:
	c.lw	a0,0(a4)
	c.li	a3,00000003
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	bltu	a3,a4,0000000023018E10

l23018E46:
	slli	a0,a5,00000018
	c.srai	a0,00000018
	sub	a0,zero,a0
	jal	ra,00000000230705D8
	lui	a5,00023076
	lw	a2,a5,+00000790
	lw	a3,a5,+00000794
	jal	ra,000000002306F140
	jal	ra,0000000023070414
	c.j	0000000023018E24

;; sysctrl_init: 23018E6A
;;   Called from:
;;     230133D8 (in wifi_main)
sysctrl_init proc
	lui	a4,00080000
	lui	a5,00044900
	c.addi	a4,0000000C
	c.sw	a5,104(a4)
	lw	a4,a5,+000000E0
	lui	a3,00000020
	addi	a3,a3,-00000100
	c.or	a4,a3
	sw	a4,a5,+000000E0
	c.jr	ra

;; intc_spurious: 23018E8A
intc_spurious proc
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000036
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	zero,000000002301327E

;; intc_enable_irq: 23018EA2
;;   Called from:
;;     23018EC0 (in intc_init)
;;     23018EC8 (in intc_init)
;;     23018ED0 (in intc_init)
;;     23018ED6 (in intc_init)
;;     23018EDC (in intc_init)
;;     23018EE2 (in intc_init)
;;     23018EE8 (in intc_init)
;;     23018EEE (in intc_init)
;;     23018EF4 (in intc_init)
;;     23018EFA (in intc_init)
;;     23018F00 (in intc_init)
;;     23018F08 (in intc_init)
;;     23018F10 (in intc_init)
;;     23018F18 (in intc_init)
;;     23018F20 (in intc_init)
;;     23018F28 (in intc_init)
;;     23018F30 (in intc_init)
;;     23018F38 (in intc_init)
;;     23018F40 (in intc_init)
;;     23018F46 (in intc_init)
;;     23018F50 (in intc_init)
intc_enable_irq proc
	c.li	a5,00000001
	lui	a4,00011244
	sll	a5,a5,a0
	c.addi	a4,00000004
	c.srai	a0,00000005
	c.add	a0,a4
	c.slli	a0,02
	c.sw	a0,0(a5)
	c.jr	ra

;; intc_init: 23018EB8
;;   Called from:
;;     230133DC (in wifi_main)
intc_init proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+0000003F
	c.swsp	ra,00000084
	jal	ra,0000000023018EA2
	addi	a0,zero,+0000003E
	jal	ra,0000000023018EA2
	addi	a0,zero,+0000003D
	jal	ra,0000000023018EA2
	c.li	a0,00000018
	jal	ra,0000000023018EA2
	c.li	a0,00000019
	jal	ra,0000000023018EA2
	c.li	a0,0000001A
	jal	ra,0000000023018EA2
	c.li	a0,0000001B
	jal	ra,0000000023018EA2
	c.li	a0,0000001C
	jal	ra,0000000023018EA2
	c.li	a0,0000001D
	jal	ra,0000000023018EA2
	c.li	a0,0000001E
	jal	ra,0000000023018EA2
	c.li	a0,0000001F
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000020
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000021
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000023
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000037
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000035
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000032
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000034
	jal	ra,0000000023018EA2
	addi	a0,zero,+00000036
	jal	ra,0000000023018EA2
	c.li	a0,0000000A
	jal	ra,0000000023018EA2
	c.lwsp	a2,00000020
	c.li	a0,0000000B
	c.addi	sp,00000010
	jal	zero,0000000023018EA2

;; mac_irq: 23018F54
mac_irq proc
	lui	a5,00044910
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023018F60

l23018F5C:
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023018FA2

l23018F60:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	a5,00044910
	c.lw	a5,64(a5)
	slli	a4,a5,00000002
	lui	a5,00023077
	addi	a5,a5,+000006AC
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.bnez	s0,0000000023018F96

l23018F7E:
	lui	a1,00023074
	lui	a0,00023077
	addi	a2,zero,+0000009D
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007AC
	jal	ra,000000002301327E

l23018F96:
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230134CE

l23018FA2:
	c.jr	ra

;; bl_irq_handler: 23018FA4
;;   Called from:
;;     23024648 (in bl_output)
bl_irq_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230223DC
	lui	a0,00040000
	jal	ra,000000002300E49C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230134CE

;; blmac_pwr_mgt_setf: 23018FBC
;;   Called from:
;;     23019922 (in chan_pre_switch_channel)
;;     2301993E (in chan_pre_switch_channel)
;;     23019A42 (in chan_goto_idle_cb)
;;     23019BD8 (in chan_ctxt_op_evt)
blmac_pwr_mgt_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	slli	s0,a0,00000002
	c.swsp	ra,00000084
	andi	a5,s0,-00000005
	c.beqz	a5,0000000023018FE6

l23018FCC:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023077
	addi	a2,a2,-000006AE
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007D0
	jal	ra,000000002301327E

l23018FE6:
	lui	a5,00044B00
	c.lw	a5,76(a0)
	c.andi	a0,FFFFFFFB
	c.or	a0,s0
	c.sw	a5,76(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_get_next_chan: 23018FFA
;;   Called from:
;;     23019720 (in chan_cde_evt)
;;     23019BB6 (in chan_ctxt_op_evt)
;;     2301A24C (in chan_bcn_to_evt)
chan_get_next_chan proc
	c.addi	sp,FFFFFFF0
	lui	a3,0004201D
	addi	a5,a3,+000001D8
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a5,32(s0)
	c.lw	a5,16(s1)
	lui	a5,00044B00
	lw	s2,a5,+00000120
	addi	a3,a3,+000001D8
	c.beqz	s0,0000000023019044

l2301901E:
	c.beqz	s1,000000002301902A

l23019020:
	lbu	a4,s1,+0000000A
	c.li	a5,00000002
	beq	a4,a5,000000002301910E

l2301902A:
	c.lui	a4,00001000
	c.lw	a3,68(a5)
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,000000002301910E

l2301903A:
	lbu	a4,s0,+00000016
	c.li	a5,00000004
	beq	a4,a5,000000002301910E

l23019044:
	c.beqz	s1,00000000230190B6

l23019046:
	c.lw	s1,4(a5)
	c.lw	a3,68(a4)
	c.sub	a5,a4
	bge	a5,zero,00000000230190B6

l23019050:
	lbu	a5,s1,+00000008
	addi	a3,zero,+000005D8
	lui	a4,0004201A
	add	a5,a5,a3
	addi	a4,a4,+00000410
	c.add	a4,a5
	c.lw	a4,64(s0)
	c.bnez	s0,0000000023019082

l2301906A:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000129
	addi	a1,a1,+000002DC
	addi	a0,a0,-000006A8
	jal	ra,000000002301327E

l23019082:
	c.lw	s1,4(a5)
	c.lui	a4,00001000
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,00000000230190F4

l23019092:
	lhu	a4,s0,+00000012
	lhu	a2,s0,+00000014
	c.li	a3,00000000
	bgeu	a2,a4,00000000230190A8

l230190A0:
	c.sub	a4,a2
	slli	a3,a4,00000010
	c.srli	a3,00000010

l230190A8:
	sub	a5,a5,s2
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,000000002301910E

l230190B6:
	lui	a3,0004201D
	addi	a5,a3,+0000014C
	lbu	a2,a5,+00000016
	c.li	a4,00000000
	c.beqz	a2,00000000230190CE

l230190C6:
	lhu	a4,a5,+00000012
	addi	s0,a3,+0000014C

l230190CE:
	lbu	a3,a5,+00000032
	c.beqz	a3,00000000230190E6

l230190D4:
	lhu	a3,a5,+0000002E
	bltu	a3,a4,00000000230190E6

l230190DC:
	lui	s0,0004201D
	c.mv	a4,a3
	addi	s0,s0,+00000168

l230190E6:
	lbu	a3,a5,+0000004E
	c.beqz	a3,00000000230190F4

l230190EC:
	lhu	a5,a5,+0000004A
	bgeu	a5,a4,000000002301911C

l230190F4:
	c.bnez	s0,000000002301910E

l230190F6:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000175
	addi	a1,a1,+000002DC
	addi	a0,a0,-000006A8
	jal	ra,000000002301327E

l2301910E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301911C:
	lui	s0,0004201D
	addi	s0,s0,+00000184
	c.j	000000002301910E

;; chan_conn_less_delay_prog: 23019126
;;   Called from:
;;     23019C10 (in chan_ctxt_op_evt)
;;     23019DD0 (in chan_scan_req)
;;     23019EAE (in chan_roc_req)
chan_conn_less_delay_prog proc
	lui	a5,0004201D
	addi	a5,a5,+000001D8
	lbu	a4,a5,+00000070
	lui	a0,0004201D
	addi	a0,a0,+00000230
	ori	a4,a4,+00000010
	sb	a4,a5,+00000070
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00007000
	addi	a5,a5,+00000530
	c.add	a1,a5
	jal	zero,0000000023003726

;; chan_upd_nb_rem_slots.isra.3: 23019156
;;   Called from:
;;     230194FC (in chan_tbtt_switch_evt)
;;     23019BAE (in chan_ctxt_op_evt)
;;     2301A226 (in chan_bcn_to_evt)
chan_upd_nb_rem_slots.isra.3 proc
	lui	a5,0004201D
	lw	a5,a5,+00000244
	lhu	a4,a0,+00000000
	c.sub	a1,a5
	c.srli	a1,0000000A
	c.slli	a1,10
	c.srli	a1,00000010
	bgeu	a4,a1,0000000023019170

l2301916E:
	c.mv	a1,a4

l23019170:
	sub	a1,a4,a1
	sh	a1,a0,+00000000
	c.jr	ra

;; chan_tbtt_detect_conflict.isra.8: 2301917A
;;   Called from:
;;     2301922C (in chan_tbtt_insert)
;;     2301925E (in chan_tbtt_insert)
chan_tbtt_detect_conflict.isra.8 proc
	sub	a4,a0,a1
	c.mv	a3,a0
	blt	a4,zero,0000000023019194

l23019184:
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.add	a5,a1
	c.sub	a5,a0
	c.li	a0,00000001
	bge	a5,zero,00000000230191AA

l23019194:
	c.sub	a1,a3
	c.li	a0,00000000
	blt	a1,zero,00000000230191AA

l2301919C:
	c.lui	a0,00003000
	addi	a0,a0,-00000800
	c.add	a0,a4
	xori	a0,a0,-00000001
	c.srli	a0,0000001F

l230191AA:
	c.jr	ra

;; chan_tbtt_insert: 230191AC
;;   Called from:
;;     2301957E (in chan_tbtt_schedule)
;;     230195D4 (in chan_tbtt_schedule)
chan_tbtt_insert proc
	c.addi16sp	FFFFFFC0
	lui	a5,0004201D
	c.swsp	s2,00000018
	lw	s2,a5,+000001E8
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
	lui	s7,00023074
	lui	s8,00023078
	c.li	s9,00000002

l230191E2:
	bne	s2,zero,0000000023019204

l230191E6:
	c.li	s2,00000001

l230191E8:
	addi	s4,zero,+000000FF
	lui	s5,00023074
	lui	s7,00023078
	c.li	s8,00000001
	lui	s9,0004201D
	lui	s10,0004201D
	lui	s11,0004201D
	c.j	00000000230192AC

l23019204:
	bne	s2,s3,0000000023019218

l23019208:
	addi	a2,zero,+00000668
	addi	a1,s7,+000002DC
	addi	a0,s8,-0000066C
	jal	ra,000000002301327E

l23019218:
	lbu	a5,s2,+0000000A
	lw	s4,s3,+00000004
	lw	s5,s2,+00000004
	beq	a5,s9,0000000023019256

l23019228:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002301917A
	c.beqz	a0,000000002301924E

l23019232:
	lbu	a4,s3,+00000009
	lbu	a5,s2,+00000009
	bgeu	a5,a4,0000000023019264

l2301923E:
	c.bnez	s0,0000000023019242

l23019240:
	c.mv	s0,s2

l23019242:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l23019248:
	lw	s2,s2,+00000000
	c.j	00000000230191E2

l2301924E:
	bltu	s4,s5,00000000230191E6

l23019252:
	c.mv	s6,s2
	c.j	0000000023019248

l23019256:
	bltu	s4,s5,0000000023019264

l2301925A:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002301917A
	c.beqz	a0,0000000023019252

l23019264:
	c.mv	s0,s3
	c.li	s1,00000001
	c.li	s2,00000000
	c.j	00000000230191E8

l2301926C:
	c.bnez	s0,000000002301927E

l2301926E:
	addi	a2,zero,+000006B1
	addi	a1,s5,+000002DC
	addi	a0,s7,-00000654
	jal	ra,000000002301327E

l2301927E:
	beq	s0,s3,00000000230192A0

l23019282:
	lbu	a5,s0,+0000000A
	bne	a5,s8,0000000023019296

l2301928A:
	addi	a0,s10,+00000200
	jal	ra,00000000230037DC
	sb	zero,s0,+0000000A

l23019296:
	c.mv	a1,s0
	addi	a0,s9,+000001E8
	jal	ra,000000002300E30A

l230192A0:
	c.mv	a1,s0
	addi	a0,s11,+000001F0
	jal	ra,000000002300E282
	c.lw	s0,0(s0)

l230192AC:
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	bne	s1,s4,000000002301926C

l230192B6:
	beq	s2,zero,00000000230192E6

l230192BA:
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
	lui	a0,0004201D
	addi	a0,a0,+000001E8
	c.addi16sp	00000040
	jal	zero,000000002300E3B6

l230192E6:
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

;; chan_upd_ctxt_status: 23019304
;;   Called from:
;;     230193C6 (in chan_switch_start)
;;     230193D6 (in chan_switch_start)
;;     2301971C (in chan_cde_evt)
;;     230198C8 (in chan_pre_switch_channel)
;;     23019A5E (in chan_goto_idle_cb)
chan_upd_ctxt_status proc
	lui	a5,00044B00
	lw	a3,a5,+00000120
	c.li	a4,00000002
	bne	a1,a4,000000002301933C

l23019312:
	lbu	a4,a0,+00000017
	c.li	a5,00000000
	bltu	a1,a4,0000000023019324

l2301931C:
	c.lui	a5,00001000
	addi	a5,a5,-00000060

l23019322:
	c.add	a5,a3

l23019324:
	sb	a1,a0,+00000016
	c.bnez	a5,000000002301938A

l2301932A:
	c.li	a5,00000003
	beq	a1,a5,00000000230193A0

l23019330:
	lui	a0,0004201D
	addi	a0,a0,+00000220
	jal	zero,00000000230037DC

l2301933C:
	c.li	a2,00000004
	c.li	a5,00000000
	bne	a1,a2,0000000023019324

l23019344:
	lbu	a2,a0,+00000017
	bltu	a4,a2,000000002301937E

l2301934C:
	lui	a2,0004201D
	addi	a2,a2,+000001D8
	lbu	a6,a2,+00000072
	c.li	a4,00000001
	bgeu	a4,a6,0000000023019386

l2301935E:
	lhu	a4,a0,+00000012
	lhu	a6,a0,+00000014
	bgeu	a6,a4,0000000023019386

l2301936A:
	sub	a4,a4,a6
	c.slli	a4,10
	c.srli	a4,00000010
	bgeu	a1,a4,0000000023019386

l23019376:
	c.sw	a2,108(a3)
	slli	a5,a4,0000000A
	c.j	0000000023019322

l2301937E:
	lhu	a5,a0,+00000012
	c.slli	a5,0A
	c.j	0000000023019322

l23019386:
	c.li	a1,00000005
	c.j	0000000023019324

l2301938A:
	lui	a4,0004201D
	sw	a0,a4,+00000228
	lui	a0,0004201D
	c.mv	a1,a5
	addi	a0,a0,+00000220
	jal	zero,0000000023003726

l230193A0:
	c.jr	ra

;; chan_switch_start: 230193A2
;;   Called from:
;;     23019456 (in chan_conn_less_delay_evt)
;;     23019530 (in chan_tbtt_switch_evt)
;;     23019734 (in chan_cde_evt)
;;     23019B9A (in chan_ctxt_op_evt)
;;     23019E8E (in chan_roc_req)
;;     2301A264 (in chan_bcn_to_evt)
;;     2301A538 (in chan_ctxt_link)
;;     2301A672 (in chan_ctxt_unlink)
chan_switch_start proc
	lui	a5,0004201D
	addi	a5,a5,+000001D8
	c.lw	a5,32(a3)
	bne	a3,a0,00000000230193CA

l230193B0:
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,00000000230193FC

l230193BA:
	lbu	a4,a3,+00000017
	c.li	a5,00000002
	bltu	a5,a4,00000000230193FC

l230193C4:
	c.li	a1,00000004
	jal	zero,0000000023019304

l230193CA:
	c.lw	a5,36(a3)
	c.bnez	a3,00000000230193FC

l230193CE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a1,00000002
	c.sw	a5,36(a0)
	jal	ra,0000000023019304
	c.li	a3,00000004
	addi	a2,zero,+000000FF
	c.li	a1,00000000
	addi	a0,zero,+00000060
	jal	ra,000000002300E768
	lui	a5,0002301A
	addi	a5,a5,-00000614
	c.sw	a0,0(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

l230193FC:
	c.jr	ra

;; chan_conn_less_delay_evt: 230193FE
chan_conn_less_delay_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a5,s0,+000001D8
	c.swsp	ra,00000084
	lbu	a5,a5,+00000070
	addi	s0,s0,+000001D8
	andi	a4,a5,+00000001
	c.beqz	a4,000000002301945A

l2301941A:
	c.andi	a5,00000004
	c.beqz	a5,0000000023019436

l2301941E:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000002C0
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000794
	jal	ra,000000002301327E

l23019436:
	lbu	a5,s0,+00000070
	lui	a0,0004201D
	addi	a0,a0,+000001BC
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sb	a5,s0,+00000070

l2301944C:
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023019494

l23019450:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230193A2

l2301945A:
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023019494

l23019460:
	c.andi	a5,00000008
	c.beqz	a5,000000002301947C

l23019464:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000002CE
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000760
	jal	ra,000000002301327E

l2301947C:
	lbu	a5,s0,+00000070
	lui	a0,0004201D
	addi	a0,a0,+000001A0
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000070
	c.j	000000002301944C

l23019494:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_evt: 2301949C
;;   Called from:
;;     2301960E (in chan_tbtt_schedule)
chan_tbtt_switch_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a5,00044B00
	lui	s0,0004201D
	lw	s3,a5,+00000120
	addi	a5,s0,+000001D8
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,0000000023019534

l230194C2:
	addi	s0,s0,+000001D8
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,0000000023019534

l230194CE:
	lbu	a4,a0,+00000008
	addi	a3,zero,+000005D8
	lui	a5,0004201A
	add	a4,a4,a3
	addi	a5,a5,+00000410
	c.add	a5,a4
	lw	s2,a5,+00000040
	c.lw	s0,36(a5)
	c.beqz	a5,00000000230194F0

l230194EC:
	bne	a5,s2,0000000023019534

l230194F0:
	sb	zero,a0,+00000009
	c.mv	s1,a0
	c.lw	s0,32(a0)
	c.mv	a1,s3
	c.addi	a0,00000012
	jal	ra,0000000023019156
	lhu	a5,s2,+00000014
	c.li	a3,0000000A
	c.mv	a4,a5
	bgeu	a3,a5,000000002301950E

l2301950C:
	c.li	a4,0000000A

l2301950E:
	c.sub	a5,a4
	sh	a5,s2,+00000014
	sw	s3,s0,+0000006C
	c.li	a5,00000002
	sb	a5,s1,+0000000A
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023019534

l23019522:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230193A2

l23019534:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_tbtt_schedule: 23019542
;;   Called from:
;;     2301A1B8 (in chan_tbtt_switch_update)
;;     2301A210 (in chan_bcn_to_evt)
;;     2301A658 (in chan_ctxt_unlink)
chan_tbtt_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,0004201D
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s0,s0,+000001D8
	c.bnez	a0,0000000023019576

l2301955E:
	c.lw	s0,16(a0)
	c.bnez	a0,00000000230195E2

l23019562:
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

l23019576:
	lui	s1,0004201A
	lui	s2,00042019
	jal	ra,00000000230191AC
	lui	s3,0004201D
	addi	s1,s1,+00000410
	addi	s4,zero,+000005D8
	addi	s2,s2,-000000E0
	addi	s5,zero,+000001B0
	c.li	s6,00000004

l23019598:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002301955E

l2301959C:
	addi	a0,s3,+000001F0
	jal	ra,000000002300E2FE
	lbu	a5,a0,+00000008
	add	a5,a5,s4
	c.add	a5,s1
	lbu	a4,a5,+00000056
	c.bnez	a4,00000000230195DA

l230195B4:
	lbu	a5,a5,+00000060
	add	a5,a5,s5
	c.add	a5,s2
	c.lw	a5,4(a5)

l230195C0:
	c.lw	a0,4(a4)
	c.add	a5,a4
	c.sw	a0,4(a5)
	lbu	a5,a0,+00000009
	bltu	s6,a5,00000000230195D4

l230195CE:
	c.addi	a5,00000001
	sb	a5,a0,+00000009

l230195D4:
	jal	ra,00000000230191AC
	c.j	0000000023019598

l230195DA:
	lhu	a5,a5,+0000033E
	c.slli	a5,0A
	c.j	00000000230195C0

l230195E2:
	lbu	a5,a0,+0000000A
	c.bnez	a5,0000000023019562

l230195E8:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	a0,4(a5)
	c.sub	a5,a4
	addi	a5,a5,-000007D0
	bge	a5,zero,0000000023019612

l230195FC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002301949C

l23019612:
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
	lui	a0,0004201D
	addi	a0,a0,+00000200
	c.addi16sp	00000020
	jal	zero,0000000023003726

;; chan_cde_evt: 2301963A
;;   Called from:
;;     23019888 (in chan_pre_switch_channel)
;;     23019C5E (in chan_ctxt_op_evt)
;;     2301A552 (in chan_ctxt_link)
;;     2301A62E (in chan_ctxt_unlink)
chan_cde_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	lui	s2,0004201D
	lw	s3,a5,+00000120
	addi	a5,s2,+000001D8
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,00000000230197E8

l23019662:
	addi	s2,s2,+000001D8
	lbu	s0,s2,+00000070
	andi	s0,s0,+0000002C
	bne	s0,zero,00000000230197E8

l23019672:
	lw	a1,s2,+00000068
	c.mv	s1,a0
	lui	a0,0004201D
	c.add	a1,s3
	addi	a0,a0,+00000210
	jal	ra,0000000023003726
	lui	a4,0004201B
	addi	a5,a4,-00000040
	c.lw	a5,8(a5)
	lui	a3,0004201A
	sw	s3,s2,+0000006C
	addi	s4,a4,-00000040
	c.li	s3,00000000
	addi	a3,a3,+00000360
	addi	a1,zero,+00000024

l230196A6:
	c.bnez	a5,0000000023019738

l230196A8:
	lw	a5,s2,+00000068
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	srl	a5,a5,a4
	beq	s0,a5,00000000230196D2

l230196BA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000268
	addi	a1,a1,+000002DC
	addi	a0,a0,-000007E4
	jal	ra,0000000023013280

l230196D2:
	beq	s3,zero,000000002301976C

l230196D6:
	beq	s0,s3,000000002301976C

l230196DA:
	sub	s0,s0,s3
	addi	a5,zero,+00000028
	add	s0,s0,a5
	c.li	a1,0000000A
	c.slli	s0,10
	c.srli	s0,00000010
	xor	s0,s0,s3

l230196F0:
	lw	a4,s4,+00000008
	lui	a0,0004201A
	lui	a6,00042019
	addi	a0,a0,+00000360
	addi	a7,zero,+00000024
	c.li	t1,0000000A
	addi	a6,a6,-000000E0
	addi	t3,zero,+000001B0
	addi	s0,s0,+00000032

l23019712:
	c.bnez	a4,0000000023019774

l23019714:
	lw	a0,s2,+00000020
	c.beqz	a0,0000000023019720

l2301971A:
	c.li	a1,00000001
	jal	ra,0000000023019304

l23019720:
	jal	ra,0000000023018FFA
	c.bnez	s1,00000000230197E4

l23019726:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,00000000230193A2

l23019738:
	c.lw	a5,64(a2)
	c.beqz	a2,0000000023019768

l2301973C:
	lbu	a4,a5,+00000057
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	add	a4,a4,a1
	c.add	a4,a3
	lbu	a4,a4,+00000021
	c.andi	a4,00000003
	c.bnez	a4,000000002301975A

l23019754:
	lbu	a4,a5,+00000058
	c.bnez	a4,0000000023019760

l2301975A:
	c.addi	s3,00000001
	andi	s3,s3,+000000FF

l23019760:
	sh	zero,a2,+00000010
	sh	zero,a2,+00000014

l23019768:
	c.lw	a5,0(a5)
	c.j	00000000230196A6

l2301976C:
	c.li	s0,00000000
	addi	a1,zero,+00000032
	c.j	00000000230196F0

l23019774:
	c.lw	a4,64(a3)
	c.beqz	a3,00000000230197D2

l23019778:
	lbu	a2,a4,+00000057
	lhu	a5,a3,+00000010
	add	a2,a2,a7
	c.add	a2,a0
	lbu	a2,a2,+00000021
	c.andi	a2,00000003
	c.bnez	a2,0000000023019794

l2301978E:
	lbu	a2,a4,+00000058
	c.bnez	a2,00000000230197D6

l23019794:
	c.add	a5,s0

l23019796:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+00000010
	sh	a5,a3,+00000012
	lbu	a5,a4,+00000056
	c.bnez	a5,00000000230197DA

l230197A8:
	lbu	a5,a4,+00000060
	add	a5,a5,t3
	c.add	a5,a6
	c.lw	a5,4(a2)

l230197B4:
	lw	a5,s2,+00000068
	srl	a5,a5,a2
	c.bnez	a5,00000000230197C0

l230197BE:
	c.li	a5,00000001

l230197C0:
	andi	a5,a5,+000000FF
	add	a5,a5,t1
	lhu	a2,a3,+00000014
	c.add	a5,a2
	sh	a5,a3,+00000014

l230197D2:
	c.lw	a4,0(a4)
	c.j	0000000023019712

l230197D6:
	c.add	a5,a1
	c.j	0000000023019796

l230197DA:
	lhu	a5,a4,+0000033E
	slli	a2,a5,0000000A
	c.j	00000000230197B4

l230197E4:
	sw	a0,s2,+00000024

l230197E8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_pre_switch_channel: 230197F8
;;   Called from:
;;     23019ACA (in chan_goto_idle_cb)
;;     23019B18 (in chan_tx_cfm)
chan_pre_switch_channel proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+00000220
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,0004201D
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,00000000230037DC
	addi	a5,s0,+000001D8
	lbu	a5,a5,+00000070
	addi	s0,s0,+000001D8
	andi	a5,a5,+00000020
	c.beqz	a5,000000002301984C

l2301982A:
	lbu	a5,s0,+00000072
	c.li	a4,00000001
	bgeu	a4,a5,0000000023019840

l23019834:
	c.lw	s0,36(a5)
	c.beqz	a5,0000000023019840

l23019838:
	sb	a4,a5,+00000016
	sw	zero,s0,+00000024

l23019840:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000021
	sb	a5,s0,+00000070

l2301984C:
	lbu	a5,s0,+00000070
	c.lw	s0,36(a4)
	andi	a3,a5,+00000008
	c.bnez	a3,0000000023019870

l23019858:
	c.andi	a5,00000004
	c.beqz	a5,000000002301987A

l2301985C:
	lui	a5,0004201D
	addi	a5,a5,+000001BC

l23019864:
	c.beqz	a4,000000002301986C

l23019866:
	c.li	a3,00000001
	sb	a3,a4,+00000016

l2301986C:
	c.sw	s0,36(a5)
	c.j	000000002301988C

l23019870:
	lui	a5,0004201D
	addi	a5,a5,+000001A0
	c.j	0000000023019864

l2301987A:
	c.bnez	a4,000000002301988C

l2301987C:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,0000000023019928

l23019886:
	c.li	a0,00000001
	jal	ra,000000002301963A

l2301988C:
	c.lw	s0,36(s1)
	beq	s1,zero,00000000230199DA

l23019892:
	lhu	a4,s1,+0000000A
	lhu	a3,s1,+00000008
	lhu	a2,s1,+00000006
	lbu	a1,s1,+00000005
	lbu	a0,s1,+00000004
	c.li	a5,00000000
	lui	s2,00044B00
	jal	ra,000000002301415C
	lb	a0,s1,+0000000C
	jal	ra,000000002300553A
	c.li	a5,00000010
	sw	a5,s2,+000000DC
	c.li	a1,00000004
	c.mv	a0,s1
	c.sw	s0,32(s1)
	sw	zero,s0,+00000024
	jal	ra,0000000023019304
	lbu	a5,s1,+00000017
	c.li	a4,00000003
	beq	a5,a4,00000000230199C6

l230198D6:
	c.li	a4,00000004
	beq	a5,a4,00000000230198FA

l230198DC:
	lui	a5,00042019
	addi	a5,a5,-00000150
	lbu	a4,a5,+00000000
	c.beqz	a4,0000000023019930

l230198EA:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,0000000023019930

l230198F0:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bgeu	a5,a4,000000002301996C

l230198FA:
	csrrci	zero,mstatus,00000008
	lui	a5,00042019
	addi	a5,a5,-00000150
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
	jal	ra,0000000023018FBC
	c.j	0000000023019990

l23019928:
	bne	a4,a5,000000002301988C

l2301992C:
	c.lw	s0,8(a5)
	c.j	000000002301986C

l23019930:
	lui	a5,0004201B
	c.li	a0,00000000
	lw	s2,a5,-00000038
	lw	s3,s0,+00000020
	jal	ra,0000000023018FBC

l23019942:
	beq	s2,zero,00000000230198F0

l23019946:
	lw	a5,s2,+00000040
	bne	s3,a5,0000000023019966

l2301994E:
	lbu	a5,s2,+00000056
	c.bnez	a5,0000000023019966

l23019954:
	lbu	a5,s2,+00000058
	c.beqz	a5,0000000023019966

l2301995A:
	lbu	a0,s2,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002300664A

l23019966:
	lw	s2,s2,+00000000
	c.j	0000000023019942

l2301996C:
	lui	a5,0004201B
	lw	s2,a5,-00000038
	lui	s3,0004201A
	addi	s3,s3,+00000360
	addi	s4,zero,+00000024
	c.li	s5,00000001

l23019982:
	bne	s2,zero,00000000230199A4

l23019986:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bltu	a5,a4,00000000230198FA

l23019990:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023001D60

l230199A4:
	lw	a5,s2,+00000040
	bne	s1,a5,00000000230199C0

l230199AC:
	lbu	a5,s2,+00000057
	c.mv	a0,s2
	add	a5,a5,s4
	c.add	a5,s3
	sb	s5,a5,+00000023
	jal	ra,0000000023007244

l230199C0:
	lw	s2,s2,+00000000
	c.j	0000000023019982

l230199C6:
	sw	zero,s2,+00000220
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	addi	a0,zero,+00000061
	jal	ra,000000002300E83E
	c.j	0000000023019986

l230199DA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; chan_goto_idle_cb: 230199EC
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
	lui	s1,0004201D
	jal	ra,000000002300251E
	addi	a5,s1,+000001D8
	lw	s2,a5,+00000020
	beq	s2,zero,0000000023019AB6

l23019A14:
	addi	s1,s1,+000001D8
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000020
	c.bnez	a5,0000000023019AB6

l23019A22:
	lui	a5,00042019
	addi	a5,a5,-00000150
	lbu	a4,a5,+00000000
	c.beqz	a4,0000000023019A36

l23019A30:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.beqz	a5,0000000023019AB6

l23019A36:
	lui	a5,0004201B
	c.li	a0,00000001
	lw	s0,a5,-00000038
	c.li	s3,00000000
	jal	ra,0000000023018FBC
	addi	s4,zero,+000000FF
	c.li	s5,00000006
	lui	s6,0002301A

l23019A50:
	c.bnez	s0,0000000023019A7A

l23019A52:
	sb	s3,s1,+00000071
	beq	s3,zero,0000000023019AB6

l23019A5A:
	c.lw	s1,36(a0)
	c.li	a1,00000003
	jal	ra,0000000023019304
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
	jal	zero,0000000023001D60

l23019A7A:
	c.lw	s0,64(a5)
	bne	s2,a5,0000000023019AB2

l23019A80:
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023019AB2

l23019A86:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023019AB2

l23019A8C:
	lbu	a5,s0,+00000060
	beq	a5,s4,0000000023019AB2

l23019A94:
	lbu	s7,s2,+00000016
	sb	s5,s2,+00000016
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	addi	a1,s6,-00000532
	jal	ra,000000002300664A
	c.bnez	a0,0000000023019AAE

l23019AAC:
	c.addi	s3,00000001

l23019AAE:
	sb	s7,s2,+00000016

l23019AB2:
	c.lw	s0,0(s0)
	c.j	0000000023019A50

l23019AB6:
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
	jal	zero,00000000230197F8

;; chan_tx_cfm: 23019ACE
chan_tx_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a5,s0,+000001D8
	c.swsp	ra,00000084
	lbu	a5,a5,+00000071
	addi	s0,s0,+000001D8
	c.bnez	a5,0000000023019AFE

l23019AE6:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000048F
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000644
	jal	ra,000000002301327E

l23019AFE:
	lbu	a5,s0,+00000071
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000071
	c.bnez	a5,0000000023019B1C

l23019B0E:
	jal	ra,000000002300251E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230197F8

l23019B1C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_ctxt_op_evt: 23019B24
;;   Called from:
;;     23019F34 (in chan_roc_req)
chan_ctxt_op_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s2,a0,+00000016
	c.li	a5,00000002
	bltu	s2,a5,0000000023019B46

l23019B3A:
	c.li	s3,00000003
	bgeu	s3,s2,0000000023019B54

l23019B40:
	c.li	a4,00000004
	beq	s2,a4,0000000023019B6A

l23019B46:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23019B54:
	lui	a5,0004201D
	addi	a5,a5,+000001D8
	lbu	a4,a5,+00000070
	ori	a4,a4,+00000020
	sb	a4,a5,+00000070
	c.j	0000000023019B46

l23019B6A:
	lbu	a4,a0,+00000017
	lui	s0,0004201D
	c.mv	s1,a0
	addi	s0,s0,+000001D8
	bltu	a5,a4,0000000023019BBE

l23019B7C:
	c.li	a5,00000001
	sb	a5,a0,+00000016
	lbu	a4,s0,+00000072
	bne	a4,a5,0000000023019B9E

l23019B8A:
	c.lw	s0,8(s1)

l23019B8C:
	c.mv	a0,s1

l23019B8E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230193A2

l23019B9E:
	bgeu	a5,a4,0000000023019B8C

l23019BA2:
	lui	a5,00044B00
	lw	s2,a5,+00000120
	c.addi	a0,00000012
	c.mv	a1,s2
	jal	ra,0000000023019156
	sw	s2,s0,+0000006C
	jal	ra,0000000023018FFA
	c.mv	s1,a0
	c.j	0000000023019B8C

l23019BBE:
	csrrci	zero,mstatus,00000008
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000073
	jal	ra,0000000023018FBC
	sw	zero,s0,+00000020
	lbu	a5,s1,+00000017
	bne	a5,s3,0000000023019C22

l23019BE8:
	lbu	a5,s0,+00000070
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	c.andi	a5,FFFFFFF7
	addi	a0,zero,+00000062
	sb	a5,s0,+00000070
	jal	ra,000000002300E83E

l23019C00:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000017
	lbu	a5,s0,+00000070
	andi	a4,a5,+00000003
	c.beqz	a4,0000000023019C44

l23019C10:
	jal	ra,0000000023019126

l23019C14:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bne	a4,a5,0000000023019C4C

l23019C1E:
	c.lw	s0,8(a0)
	c.j	0000000023019B8E

l23019C22:
	bne	a5,s2,0000000023019C00

l23019C26:
	lhu	a5,s1,+0000000E
	c.bnez	a5,0000000023019C38

l23019C2C:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000041
	sb	a5,s0,+00000070

l23019C38:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	0000000023019C00

l23019C44:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	0000000023019C14

l23019C4C:
	bgeu	a5,a4,0000000023019C62

l23019C50:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002301963A

l23019C62:
	jal	ra,000000002300251E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230024D8

;; chan_init: 23019C76
;;   Called from:
;;     23001D50 (in mm_init)
chan_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201D
	c.swsp	s3,0000008C
	addi	a2,zero,+00000074
	lui	s3,0004201D
	c.li	a1,00000000
	addi	a0,s0,+000001D8
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	addi	s1,s3,+0000014C
	jal	ra,0000000023070EB8
	c.li	s2,00000000
	addi	s3,s3,+0000014C
	addi	s5,zero,+000000FF
	c.li	s6,FFFFFFFF
	c.li	s7,00000002
	c.li	s8,00000003
	c.li	s4,00000005

l23019CB8:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	sh	s5,s1,+0000000E
	sb	s6,s1,+00000017
	blt	s7,s2,0000000023019D28

l23019CCE:
	c.mv	a1,s1
	addi	a0,s0,+000001D8
	jal	ra,000000002300E282

l23019CD8:
	c.addi	s2,00000001
	c.addi	s1,0000001C
	bne	s2,s4,0000000023019CB8

l23019CE0:
	lui	a4,00023019
	addi	a5,s0,+000001D8
	addi	a4,a4,+0000049C
	c.sw	a5,44(a4)
	lui	a4,00023019
	addi	a4,a4,+0000063A
	c.sw	a5,60(a4)
	lui	a4,0002301A
	addi	a4,a4,-000004DC
	c.sw	a5,76(a4)
	lui	a4,00023019
	addi	a4,a4,+000003FE
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

l23019D28:
	bne	s2,s8,0000000023019CD8

l23019D2C:
	sh	zero,s3,+0000005E
	sb	zero,s3,+00000059
	c.j	0000000023019CD8

;; chan_scan_req: 23019D36
;;   Called from:
;;     23004C12 (in scan_set_channel_request)
chan_scan_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201D
	addi	a5,s0,+0000014C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s2,a2
	lbu	a2,a5,+0000006B
	addi	a5,zero,+000000FF
	c.mv	s3,a0
	c.mv	s1,a1
	addi	s0,s0,+0000014C
	beq	a2,a5,0000000023019D82

l23019D60:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-0000075F
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000694
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,000000002301327E
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4

l23019D82:
	addi	a5,zero,+000000FF
	sb	a4,s0,+0000006D
	lui	a4,0004201D
	addi	a4,a4,+000001D8
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
	c.bnez	a5,0000000023019DD4

l23019DC4:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,0000000023019126

l23019DD4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; chan_roc_req: 23019DE2
;;   Called from:
;;     2301B46C (in mm_remain_on_channel_req_handler)
chan_roc_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+00000000
	c.beqz	s1,0000000023019DFC

l23019DF2:
	c.li	a5,00000001
	beq	s1,a5,0000000023019EB4

l23019DF8:
	c.li	s1,00000001
	c.j	0000000023019E92

l23019DFC:
	lui	a5,0004201D
	addi	a5,a5,+0000014C
	lbu	a3,a5,+00000087
	addi	a4,zero,+000000FF
	bne	a3,a4,0000000023019DF8

l23019E10:
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
	lui	a5,0004201D
	addi	a5,a5,+000001D8
	lbu	a4,a5,+00000070
	c.bnez	a1,0000000023019EA0

l23019E76:
	ori	a4,a4,+00000004
	sb	a4,a5,+00000070
	c.lw	a5,36(a5)
	c.beqz	a5,0000000023019E86

l23019E82:
	c.li	s1,00000000
	c.j	0000000023019E92

l23019E86:
	lui	a0,0004201D
	addi	a0,a0,+000001BC
	jal	ra,00000000230193A2

l23019E92:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23019EA0:
	ori	a3,a4,+00000001
	sb	a3,a5,+00000070
	andi	s1,a4,+00000010
	c.bnez	s1,0000000023019E82

l23019EAE:
	jal	ra,0000000023019126
	c.j	0000000023019E92

l23019EB4:
	lui	s2,0004201D
	addi	a5,s2,+0000014C
	lbu	a4,a5,+00000087
	addi	a5,zero,+000000FF
	addi	s2,s2,+0000014C
	beq	a4,a5,0000000023019E82

l23019ECC:
	lbu	a5,s2,+00000086
	lui	s0,0004201D
	c.li	a4,00000003
	addi	s0,s0,+000001D8
	bltu	a4,a5,0000000023019F1A

l23019EDE:
	c.li	a4,00000002
	bgeu	a5,a4,0000000023019F46

l23019EE4:
	beq	a5,s1,0000000023019F3A

l23019EE8:
	c.li	a5,FFFFFFFF
	sb	a5,s2,+00000087
	lbu	a5,s0,+00000070
	c.li	a4,00000010
	andi	a3,a5,+00000012
	bne	a3,a4,0000000023019E82

l23019EFC:
	lui	a0,0004201D
	c.andi	a5,FFFFFFEF
	addi	a0,a0,+00000230
	sb	a5,s0,+00000070
	jal	ra,00000000230037DC
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	0000000023019E82

l23019F1A:
	c.li	a4,00000004
	bne	a5,a4,0000000023019EE8

l23019F20:
	lui	a0,0004201D
	addi	a0,a0,+00000220
	jal	ra,00000000230037DC
	lui	a0,0004201D
	addi	a0,a0,+000001BC
	jal	ra,0000000023019B24
	c.j	0000000023019EE8

l23019F3A:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000070
	c.j	0000000023019EE8

l23019F46:
	lbu	a5,s0,+00000070
	sw	zero,s0,+00000024
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	0000000023019EE8

;; chan_ctxt_add: 23019F56
;;   Called from:
;;     230073D4 (in vif_mgmt_switch_channel)
;;     23007FCC (in me_add_chan_ctx)
;;     2300B9B0 (in sm_add_chan_ctx)
;;     2301F1D2 (in apm_start_cac_req_handler)
chan_ctxt_add proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201D
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
	addi	s3,a5,+0000014C
	c.li	s2,00000000
	addi	s0,a5,+0000014C
	addi	s6,zero,+000000FF
	c.li	s5,00000003

l23019F80:
	lbu	a5,s3,+00000017
	beq	a5,s6,0000000023019FAE

l23019F88:
	c.li	a2,00000008
	addi	a1,s3,+00000004
	c.mv	a0,s1
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023019FAE

l23019F96:
	sb	s2,s4,+00000000

l23019F9A:
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

l23019FAE:
	c.addi	s2,00000001
	c.addi	s3,0000001C
	bne	s2,s5,0000000023019F80

l23019FB6:
	lui	a0,0004201D
	addi	a0,a0,+000001D8
	jal	ra,000000002300E2FE
	c.mv	a4,a0
	c.li	a0,00000001
	c.beqz	a4,0000000023019F9A

l23019FC8:
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
	c.j	0000000023019F9A

;; chan_ctxt_del: 2301A01A
;;   Called from:
;;     2301A652 (in chan_ctxt_unlink)
chan_ctxt_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,0000001C
	add	s1,a0,s1
	lui	a5,0004201D
	addi	a4,a5,+0000014C
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	addi	s0,a5,+0000014C
	c.add	s1,a4
	lbu	a3,s1,+00000017
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002301A060

l2301A046:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-00000677
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000072C
	jal	ra,000000002301327E

l2301A060:
	c.li	a5,0000001C
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a5,a5,+00000018
	c.beqz	a5,000000002301A088

l2301A06E:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-00000675
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000704
	jal	ra,000000002301327E

l2301A088:
	lui	a0,0004201D
	c.mv	a1,s1
	addi	a0,a0,+000001D8
	jal	ra,000000002300E282
	c.mv	a0,s1
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
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

;; chan_ctxt_update: 2301A0C2
;;   Called from:
;;     2301BDF4 (in mm_hw_config_handler)
chan_ctxt_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a2,0000001C
	lbu	a3,a0,+00000001
	add	a4,a4,a2
	lui	a5,0004201D
	addi	a5,a5,+0000014C
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
	lui	a4,0004201D
	lw	s1,a4,+000001F8
	bne	s1,a5,000000002301A158

l2301A11A:
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300421C
	c.li	a0,00000000
	jal	ra,0000000023004384
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000001
	lhu	a4,s0,+00000008
	lhu	a3,s0,+00000006
	lhu	a2,s0,+00000004
	lbu	a1,s0,+00000002
	c.li	a5,00000000
	jal	ra,000000002301415C
	c.lwsp	s0,00000004
	lb	a0,s1,+0000000C
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300553A

l2301A158:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_update: 2301A162
;;   Called from:
;;     23001E4C (in mm_tbtt_evt)
;;     23002D1E (in mm_sta_tbtt)
;;     230045A6 (in rxl_cntrl_evt)
chan_tbtt_switch_update proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002301A1BC

l2301A166:
	lbu	a5,a5,+00000016
	c.beqz	a5,000000002301A1BC

l2301A16C:
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000063C
	c.add	a1,a5
	c.lw	a0,72(a5)
	beq	a5,a1,000000002301A1BC

l2301A17A:
	lui	a5,0004201D
	c.sw	a0,72(a1)
	lbu	a4,a5,+0000024A
	c.li	a5,00000001
	bgeu	a5,a4,000000002301A1BC

l2301A18A:
	lbu	a4,a0,+0000004E
	c.li	a5,00000002
	beq	a4,a5,000000002301A1BC

l2301A194:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,a0,+00000044
	sb	zero,a0,+0000004E
	lui	a0,0004201D
	c.mv	a1,s0
	addi	a0,a0,+000001E8
	jal	ra,000000002300E30A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023019542

l2301A1BC:
	c.jr	ra

;; chan_bcn_to_evt: 2301A1BE
;;   Called from:
;;     23006D80 (in vif_mgmt_bcn_to_evt)
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
	bne	a4,a5,000000002301A268

l2301A1DE:
	addi	s3,a0,+00000044
	lui	s0,0004201D
	sb	zero,a0,+0000004E
	lui	a0,0004201D
	addi	s4,s0,+000001D8
	c.mv	a1,s3
	addi	a0,a0,+000001E8
	lw	s2,s4,+00000020
	jal	ra,000000002300E30A
	lbu	a4,s4,+00000072
	c.li	a5,00000001
	addi	s0,s0,+000001D8
	bgeu	a5,a4,000000002301A268

l2301A20E:
	c.mv	a0,s3
	jal	ra,0000000023019542
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002301A268

l2301A21C:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002301A268

l2301A220:
	c.mv	a1,s1
	addi	a0,s2,+00000012
	jal	ra,0000000023019156
	lhu	a4,s2,+00000014
	c.beqz	a4,000000002301A24A

l2301A230:
	c.lw	s0,108(a5)
	sub	a5,s1,a5
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a4,a5,000000002301A242

l2301A240:
	c.mv	a5,a4

l2301A242:
	sub	a5,a4,a5
	sh	a5,s2,+00000014

l2301A24A:
	c.sw	s0,108(s1)
	jal	ra,0000000023018FFA
	c.lw	s0,32(a5)
	beq	a5,a0,000000002301A268

l2301A256:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,00000000230193A2

l2301A268:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_bcn_detect_start: 2301A278
;;   Called from:
;;     23002D70 (in mm_sta_tbtt)
;;     2301BD72 (in mm_hw_config_handler)
chan_bcn_detect_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,64(s0)
	c.mv	s3,a0
	c.bnez	s0,000000002301A2A4

l2301A28A:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-000004E7
	addi	a1,a1,+000002DC
	addi	a0,a0,-000007F4
	jal	ra,000000002301327E

l2301A2A4:
	lui	s1,0004201D
	addi	s1,s1,+000001D8
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000040
	c.bnez	a5,000000002301A344

l2301A2B6:
	lbu	a4,s1,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002301A344

l2301A2C0:
	c.li	a3,00000014
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,zero,+00000046
	lbu	s2,s3,+00000060
	jal	ra,000000002300E768
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
	lui	a4,00042019
	addi	a4,a4,-000000E0
	c.add	a4,s2
	c.lw	a4,4(a4)
	c.add	a4,a3
	addi	a3,zero,+000003E8
	srl	a4,a4,a3
	c.sw	a0,12(a4)
	lb	a4,s0,+0000000C
	sb	a4,a0,+00000010
	jal	ra,000000002300E7D4
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000040
	sb	a5,s1,+00000070

l2301A344:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_is_on_channel: 2301A352
;;   Called from:
;;     23002D24 (in mm_sta_tbtt)
;;     2300391A (in ps_uapsd_timer_handle)
;;     230039FE (in ps_dpsm_update)
;;     23003BD4 (in ps_set_mode)
;;     230055DC (in tpc_update_vif_tx_power)
;;     2301A386 (in chan_is_tx_allowed)
;;     2301BF9E (in bl_sleep)
chan_is_on_channel proc
	lui	a5,0004201D
	lw	a5,a5,+000001F8
	c.beqz	a5,000000002301A37E

l2301A35C:
	lbu	a3,a5,+00000017
	c.li	a4,00000002
	bltu	a4,a3,000000002301A370

l2301A366:
	c.lw	a0,64(a0)
	c.sub	a0,a5

l2301A36A:
	sltiu	a0,a0,+00000001
	c.jr	ra

l2301A370:
	lbu	a5,a5,+00000019
	lbu	a0,a0,+00000057
	sub	a0,a5,a0
	c.j	000000002301A36A

l2301A37E:
	c.li	a0,00000000
	c.jr	ra

;; chan_is_tx_allowed: 2301A382
;;   Called from:
;;     2300578C (in txl_cntrl_tx_check)
chan_is_tx_allowed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301A352
	c.beqz	a0,000000002301A3A4

l2301A38C:
	lui	a5,0004201D
	addi	a5,a5,+000001D8
	c.lw	a5,36(a4)
	c.beqz	a4,000000002301A3A4

l2301A398:
	c.lw	a5,32(a5)
	lbu	a0,a5,+00000016
	c.addi	a0,FFFFFFFA
	sltiu	a0,a0,+00000001

l2301A3A4:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; chan_is_on_operational_channel: 2301A3AA
;;   Called from:
;;     230033B0 (in mm_bcn_transmit)
chan_is_on_operational_channel proc
	lui	a5,0004201D
	lw	a4,a5,+000001F8
	c.li	a5,00000000
	c.beqz	a4,000000002301A3CA

l2301A3B6:
	lbu	a2,a4,+00000017
	c.li	a3,00000002
	c.li	a5,00000000
	bltu	a3,a2,000000002301A3CA

l2301A3C2:
	c.lw	a0,64(a5)
	c.sub	a5,a4
	sltiu	a5,a5,+00000001

l2301A3CA:
	c.mv	a0,a5
	c.jr	ra

;; chan_update_tx_power: 2301A3CE
;;   Called from:
;;     230055D6 (in tpc_update_vif_tx_power)
;;     2301A54C (in chan_ctxt_link)
;;     2301A668 (in chan_ctxt_unlink)
chan_update_tx_power proc
	lbu	a5,a0,+00000018
	c.beqz	a5,000000002301A43E

l2301A3D4:
	lui	a4,0004201A
	addi	a5,a4,+00000410
	c.lw	a5,64(a3)
	addi	a4,a4,+00000410
	addi	a5,zero,+0000007F
	bne	a0,a3,000000002301A408

l2301A3EA:
	lbu	a3,a4,+00000059
	lbu	a5,a4,+0000005A
	slli	a2,a3,00000018
	slli	a1,a5,00000018
	c.srai	a1,00000018
	c.srai	a2,00000018
	bge	a2,a1,000000002301A404

l2301A402:
	c.mv	a5,a3

l2301A404:
	c.slli	a5,18
	c.srai	a5,00000018

l2301A408:
	lw	a3,a4,+00000618
	bne	a0,a3,000000002301A42E

l2301A410:
	lbu	a3,a4,+00000632
	slli	a2,a3,00000018
	c.srai	a2,00000018
	bge	a5,a2,000000002301A420

l2301A41E:
	c.mv	a3,a5

l2301A420:
	lb	a4,a4,+00000631
	slli	a5,a3,00000018
	c.srai	a5,00000018
	blt	a4,a5,000000002301A438

l2301A42E:
	addi	a4,zero,+0000007F
	bne	a5,a4,000000002301A43A

l2301A436:
	c.jr	ra

l2301A438:
	c.mv	a5,a4

l2301A43A:
	sb	a5,a0,+0000000C

l2301A43E:
	c.jr	ra

;; chan_ctxt_link: 2301A440
;;   Called from:
;;     230073FA (in vif_mgmt_switch_channel)
;;     2300741E (in vif_mgmt_switch_channel)
;;     2301E942 (in scanu_join_cfm_handler)
;;     2301F1E2 (in apm_start_cac_req_handler)
;;     2301F462 (in apm_start_req_handler)
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
	lui	a1,0004201D
	addi	a5,a1,+0000014C
	lui	a0,0004201A
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	add	a4,s3,a4
	c.add	s2,a5
	addi	a5,a0,+00000410
	c.swsp	ra,0000008C
	addi	s0,a1,+0000014C
	addi	s4,a0,+00000410
	c.add	a5,a4
	c.lw	a5,64(a5)
	c.beqz	a5,000000002301A49A

l2301A480:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-00000664
	addi	a1,a1,+000002DC
	addi	a0,a0,-000006E0
	jal	ra,000000002301327E

l2301A49A:
	c.li	a5,0000001C
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a4,a5,+00000017
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002301A4C8

l2301A4AE:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-00000663
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000072C
	jal	ra,000000002301327E

l2301A4C8:
	c.li	a1,0000001C
	add	a1,s1,a1
	addi	a0,zero,+000005D8
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	add	a0,s3,a0
	c.add	a1,s0
	lui	s0,0004201D
	lbu	s1,a1,+00000018
	addi	s0,s0,+000001D8
	c.lw	s0,104(a5)
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.add	a5,a4
	c.sw	s0,104(a5)
	c.add	a0,s4
	sw	s2,a0,+00000040
	sb	s1,a1,+00000018
	c.li	a5,00000001
	bne	s1,a5,000000002301A53C

l2301A506:
	lbu	a5,s0,+00000072
	lui	a0,0004201D
	sb	s1,a1,+00000016
	c.addi	a5,00000001
	c.mv	a1,s2
	addi	a0,a0,+000001E0
	sb	a5,s0,+00000072
	jal	ra,000000002300E282
	c.lw	s0,36(a5)
	c.bnez	a5,000000002301A558

l2301A526:
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002301A53C

l2301A52E:
	lbu	a5,s0,+00000072
	bne	a5,s1,000000002301A550

l2301A536:
	c.mv	a0,s2
	jal	ra,00000000230193A2

l2301A53C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002301A3CE

l2301A550:
	c.li	a0,00000000
	jal	ra,000000002301963A
	c.j	000000002301A53C

l2301A558:
	sb	s1,a5,+00000016
	sw	zero,s0,+00000024
	c.j	000000002301A53C

;; chan_ctxt_unlink: 2301A562
;;   Called from:
;;     2300738A (in vif_mgmt_switch_channel)
;;     2300B61C (in sm_delete_resources)
;;     2300D42E (in apm_stop)
;;     2301F0CC (in apm_stop_cac_req_handler)
chan_ctxt_unlink proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201A
	addi	a5,s1,+00000410
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s2,a0
	addi	s1,s1,+00000410
	c.add	a5,a4
	c.lw	a5,64(s0)
	c.bnez	s0,000000002301A5A2

l2301A588:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-0000061C
	addi	a1,a1,+000002DC
	addi	a0,a0,-000006C0
	jal	ra,000000002301327E

l2301A5A2:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	a0,0004201D
	addi	a0,a0,+000001E8
	addi	a1,s2,+00000044
	c.add	a1,s1
	c.add	s1,s2
	jal	ra,000000002300E30A
	sb	zero,s1,+0000004E
	sw	zero,s1,+00000040
	lbu	a5,s0,+00000018
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000018
	lbu	a5,s0,+00000016
	c.beqz	a5,000000002301A648

l2301A5D6:
	lui	s1,0004201D
	addi	a3,s1,+000001D8
	c.lw	a3,104(a5)
	c.lui	a4,FFFF4000
	addi	a4,a4,-00000800
	c.add	a5,a4
	c.sw	a3,104(a5)
	lbu	a5,s0,+00000018
	addi	s1,s1,+000001D8
	c.bnez	a5,000000002301A656

l2301A5F4:
	lui	a0,0004201D
	c.mv	a1,s0
	addi	a0,a0,+000001E0
	lw	s2,s1,+00000024
	jal	ra,000000002300E30A
	sb	zero,s0,+00000016
	lbu	a5,s1,+00000072
	c.lw	s1,32(a4)
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s1,+00000072
	bne	a4,s0,000000002301A634

l2301A61E:
	sw	zero,s1,+00000020

l2301A622:
	bne	s2,zero,000000002301A63C

l2301A626:
	c.li	a4,00000001
	bgeu	a4,a5,000000002301A66C

l2301A62C:
	c.li	a0,00000000
	jal	ra,000000002301963A
	c.j	000000002301A648

l2301A634:
	bne	s2,s0,000000002301A622

l2301A638:
	sw	zero,s1,+00000024

l2301A63C:
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000020
	sb	a5,s1,+00000070

l2301A648:
	lbu	a5,s0,+00000018
	c.bnez	a5,000000002301A656

l2301A64E:
	lbu	a0,s0,+00000017
	jal	ra,000000002301A01A

l2301A656:
	c.li	a0,00000000
	jal	ra,0000000023019542
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002301A3CE

l2301A66C:
	bne	a5,a4,000000002301A648

l2301A670:
	c.lw	s1,8(a0)
	jal	ra,00000000230193A2
	c.j	000000002301A648

;; hal_dma_init: 2301A678
;;   Called from:
;;     23001D54 (in mm_init)
hal_dma_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a0,s0,+0000024C
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002300E278
	lui	s1,00044A00
	lw	a5,s1,+000000A4
	lui	a0,0004201D
	addi	s0,s0,+0000024C
	addi	a0,a0,+00000254
	sh	a5,s0,+00000018
	jal	ra,000000002300E278
	lw	a5,s1,+000000AC
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hal_dma_push: 2301A6BA
;;   Called from:
;;     2300B56C (in scanu_start)
hal_dma_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,8(a5)
	c.mv	s1,a1
	c.lw	a0,4(s0)
	c.beqz	a5,000000002301A72E

l2301A6CA:
	lui	a5,0002308E
	addi	a5,a5,-00000230
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
	lui	a0,0004201D
	addi	a0,a0,+0000024C
	c.add	a0,a5
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008

l2301A704:
	lhu	a2,s0,+00000008
	c.lw	s0,0(a1)
	c.lw	s0,4(a0)
	jal	ra,0000000023070C7C
	c.beqz	s1,000000002301A734

l2301A712:
	c.li	a5,00000001
	beq	s1,a5,000000002301A744

l2301A718:
	lui	s0,00023078

l2301A71C:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	addi	a0,s0,-00000630
	jal	ra,00000000230520DC
	c.j	000000002301A71C

l2301A72E:
	sh	zero,s0,+0000000A
	c.j	000000002301A704

l2301A734:
	addi	a0,zero,+00000040

l2301A738:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300E49C

l2301A744:
	lui	a0,00010000
	c.j	000000002301A738

;; hal_dma_evt: 2301A74A
hal_dma_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.bnez	a0,000000002301A786

l2301A756:
	addi	a0,zero,+00000040

l2301A75A:
	jal	ra,000000002300E4B4
	csrrci	zero,mstatus,00000008
	lui	a5,0004201D
	slli	s0,s1,00000003
	addi	a5,a5,+0000024C
	c.add	s0,a5

l2301A770:
	c.mv	a0,s0
	jal	ra,000000002300E2FE
	csrrsi	zero,mstatus,00000008
	c.bnez	a0,000000002301A78C

l2301A77C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301A786:
	lui	a0,00010000
	c.j	000000002301A75A

l2301A78C:
	c.lw	a0,8(a5)
	c.beqz	a5,000000002301A796

l2301A790:
	c.lw	a0,12(a0)
	c.mv	a1,s1
	c.jalr	a5

l2301A796:
	csrrci	zero,mstatus,00000008
	c.j	000000002301A770

;; blmac_soft_reset_getf: 2301A79C
;;   Called from:
;;     2301A880 (in hal_machw_stop)
;;     2301A89E (in hal_machw_init)
blmac_soft_reset_getf proc
	c.addi	sp,FFFFFFF0
	lui	a5,00044B08
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,80(s0)
	andi	a5,s0,-00000002
	c.beqz	a5,000000002301A7C6

l2301A7AE:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000011D
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005F8
	jal	ra,000000002301327E

l2301A7C6:
	andi	a0,s0,+000000FF
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; blmac_wt_2_crypt_clk_ratio_setf: 2301A7D2
;;   Called from:
;;     2301AA36 (in hal_machw_init)
blmac_wt_2_crypt_clk_ratio_setf proc
	lui	a4,00044B00
	lw	a5,a4,+000000F0
	c.andi	a5,FFFFFFFC
	c.or	a0,a5
	sw	a0,a4,+000000F0
	c.jr	ra

;; blmac_rx_flow_cntrl_en_setf.constprop.9: 2301A7E4
;;   Called from:
;;     2301AC12 (in hal_machw_init)
;;     2301AD36 (in hal_machw_reset)
blmac_rx_flow_cntrl_en_setf.constprop.9 proc
	lui	a3,00044B00
	c.lw	a3,84(a5)
	c.lui	a4,FFFF0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	a3,84(a5)
	c.jr	ra

;; blmac_key_sto_ram_reset_setf.constprop.12: 2301A7F8
;;   Called from:
;;     2301AC5C (in hal_machw_init)
;;     2301AE26 (in hal_machw_monitor_mode)
blmac_key_sto_ram_reset_setf.constprop.12 proc
	lui	a3,00044B00
	c.lw	a3,76(a5)
	c.lui	a4,FFFFE000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00002000
	c.or	a5,a4
	c.sw	a3,76(a5)
	c.jr	ra

;; hal_machw_idle_req: 2301A80C
;;   Called from:
;;     2301B6BA (in mm_set_idle_req_handler)
;;     2301B80E (in mm_start_req_handler)
;;     2301B896 (in mm_force_idle_req_handler)
;;     2301BE20 (in mm_hw_config_handler)
hal_machw_idle_req proc
	lui	a5,00044B00
	c.lw	a5,56(a4)
	c.andi	a4,0000000F
	c.bnez	a4,000000002301A82E

l2301A816:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000000E1
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000260
	jal	zero,000000002301323E

l2301A82E:
	csrrci	zero,mstatus,00000008
	lw	a4,a5,+00000120
	c.lui	a3,0000C000
	addi	a3,a3,+00000350
	c.add	a4,a3
	sw	a4,a5,+0000013C
	addi	a3,zero,+00000020
	lui	a4,00044B08
	sw	a3,a4,+00000088
	lw	a3,a4,+0000008C
	ori	a3,a3,+00000020
	sw	a3,a4,+0000008C
	sw	zero,a5,+00000038
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	ori	a4,a4,+00000004
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; hal_machw_stop: 2301A874
;;   Called from:
;;     2301B71A (in mm_reset_req_handler)
hal_machw_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l2301A880:
	jal	ra,000000002301A79C
	c.bnez	a0,000000002301A880

l2301A886:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_machw_init: 2301A88C
;;   Called from:
;;     23001D2A (in mm_init)
hal_machw_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l2301A89E:
	jal	ra,000000002301A79C
	c.bnez	a0,000000002301A89E

l2301A8A4:
	lui	a5,0000024F
	lui	s2,00044B00
	addi	a5,a5,+00000637
	sw	a5,s2,+00000404
	c.li	a5,00000001
	sw	a5,s2,+00000400
	sw	zero,s2,+00000400
	addi	a5,zero,+00000069
	sw	a5,s2,+00000400
	lw	a5,s2,+00000400
	lui	a4,00044920
	andi	a5,a5,-00000021
	sw	a5,s2,+00000400
	lui	a5,00050100
	c.addi	a5,0000001F
	c.sw	a4,4(a5)
	jal	ra,00000000230145BE
	lw	s0,s2,+000000E4
	lw	a5,s2,+000000E4
	lui	a4,00000FC0
	andi	s0,s0,+000000FF
	andi	a5,a5,-00000100
	ori	a5,a5,+00000028
	sw	a5,s2,+000000E4
	lw	a5,s2,+000000E4
	lui	s2,00001000
	addi	s2,s2,-00000100
	c.srli	a5,00000008
	andi	a5,a5,+000003FF
	add	a5,a5,a0
	c.mv	s1,a0
	srl	a5,a5,s0
	c.slli	a5,08
	and	s2,a5,s2
	c.and	a5,a4
	c.beqz	a5,000000002301A93E

l2301A924:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-000002A7
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000238
	jal	ra,000000002301327E

l2301A93E:
	lui	a4,00044B00
	lw	a5,a4,+000000E4
	lui	a3,000FFFC0
	addi	a3,a3,+000000FF
	c.and	a5,a3
	or	a5,a5,s2
	sw	a5,a4,+000000E4
	lw	a5,a4,+000000E4
	lui	a3,000F0040
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00002200
	c.or	a5,a3
	sw	a5,a4,+000000E4
	lw	a5,a4,+000000E8
	lui	a2,00001000
	lw	a3,a4,+000000E8
	c.srli	a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	add	a5,a5,s1
	addi	a2,a2,-00000100
	lui	s2,00004000
	addi	s2,s2,-00000400
	srl	a5,a5,s0
	c.slli	a5,08
	c.and	a5,a2
	lui	a2,000FF000
	addi	a2,a2,+000000FF
	c.and	a3,a2
	c.or	a5,a3
	sw	a5,a4,+000000E8
	lw	a5,a4,+000000EC
	lui	a3,000C0100
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00002700
	c.or	a5,a3
	sw	a5,a4,+000000EC
	lw	a5,a4,+000000EC
	lui	a4,00003F00
	c.srli	a5,0000000A
	andi	a5,a5,+000003FF
	add	a5,a5,s1
	srl	a5,a5,s0
	c.slli	a5,0A
	and	s2,a5,s2
	c.and	a5,a4
	c.beqz	a5,000000002301A9F8

l2301A9DE:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-0000015E
	addi	a1,a1,+000002DC
	addi	a0,a0,-000001F4
	jal	ra,000000002301327E

l2301A9F8:
	lui	a4,00044B00
	lw	a5,a4,+000000EC
	lui	a3,000FFF00
	addi	a3,a3,+000003FF
	c.and	a5,a3
	or	a5,a5,s2
	sw	a5,a4,+000000EC
	lw	a5,a4,+000000EC
	c.li	a0,00000003
	andi	a5,a5,-00000400
	ori	a5,a5,+000000B4
	sw	a5,a4,+000000EC
	c.li	a5,0000001D
	bgeu	a5,s1,000000002301AA36

l2301AA2A:
	addi	a5,zero,+0000003B
	c.li	a0,00000002
	bgeu	a5,s1,000000002301AA36

l2301AA34:
	c.li	a0,00000001

l2301AA36:
	jal	ra,000000002301A7D2
	lui	a3,00044B00
	lw	a4,a3,+000000F4
	c.lui	a5,00010000
	addi	a0,a5,-00000001
	c.srli	a4,00000008
	c.and	a4,a0
	add	a4,a4,s1
	lw	a6,a3,+000000F4
	lui	a5,00001000
	lui	a2,000FF000
	addi	a1,a5,-00000100
	addi	a2,a2,+000000FF
	and	a5,a6,a2
	srl	a4,a4,s0
	c.slli	a4,08
	c.and	a4,a1
	c.or	a4,a5
	sw	a4,a3,+000000F4
	lw	a5,a3,+000000F8
	lw	a4,a3,+000000F8
	c.srli	a5,00000008
	c.and	a5,a0
	add	a5,a5,s1
	c.and	a2,a4
	srl	a5,a5,s0
	c.slli	a5,08
	c.and	a5,a1
	c.or	a5,a2
	sw	a5,a3,+000000F8
	lw	s2,a3,+00000104
	lui	a5,000C0000
	srli	s2,s2,00000014
	andi	s2,s2,+000003FF
	add	s2,s2,s1
	srl	s2,s2,s0
	c.slli	s2,14
	and	a5,s2,a5
	c.beqz	a5,000000002301AAD0

l2301AAB6:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,+0000028A
	addi	a1,a1,+000002DC
	addi	a0,a0,-000001AC
	jal	ra,000000002301327E

l2301AAD0:
	lui	a4,00044B00
	lw	a5,a4,+00000104
	lui	a3,000C0100
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	or	s2,a5,s2
	sw	s2,a4,+00000104
	lw	a5,a4,+00000104
	lui	s2,00004000
	addi	s2,s2,-00000400
	c.srli	a5,0000000A
	andi	a5,a5,+000003FF
	add	a5,a5,s1
	lui	a4,00003F00
	srl	a5,a5,s0
	c.slli	a5,0A
	and	s2,a5,s2
	c.and	a5,a4
	c.beqz	a5,000000002301AB2A

l2301AB10:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,+000002A4
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000168
	jal	ra,000000002301327E

l2301AB2A:
	lui	a4,00044B00
	lw	a5,a4,+00000104
	lui	a3,000FFF00
	addi	a3,a3,+000003FF
	c.and	a5,a3
	or	a5,a5,s2
	sw	a5,a4,+00000104
	lw	a5,a4,+00000104
	andi	a5,a5,+000003FF
	add	s1,a5,s1
	srl	s0,s1,s0
	c.lui	s1,00010000
	addi	s1,s1,-00000400
	slli	s2,s0,00000010
	c.and	s0,s1
	srli	s2,s2,00000010
	c.beqz	s0,000000002301AB80

l2301AB66:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,+000002BE
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000128
	jal	ra,000000002301327E

l2301AB80:
	lui	a5,00044B00
	lw	a4,a5,+00000104
	lui	a3,00044B08
	andi	a4,a4,-00000400
	or	a4,a4,s2
	sw	a4,a5,+00000104
	lui	a4,0008373F
	addi	a4,a4,+0000014C
	c.sw	a3,116(a4)
	c.lw	a5,76(a4)
	c.lui	a3,FFFFF000
	addi	a3,a3,+000007FF
	c.and	a4,a3
	c.sw	a5,76(a4)
	lw	a5,a5,+000000D8
	c.li	a4,00000010
	c.srli	a5,00000018
	bltu	a4,a5,000000002301ABD2

l2301ABBA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000124
	addi	a1,a1,+000002DC
	addi	a0,a0,-000000E0
	jal	ra,000000002301327E

l2301ABD2:
	lui	a0,00023078
	c.li	a3,00000008
	c.li	a2,00000011
	c.li	a1,00000002
	addi	a0,a0,-00000098
	jal	ra,0000000023052118
	lui	a5,00000021
	lui	s0,00044B00
	addi	a5,a5,+00000108
	sw	a5,s0,+000000D8
	lui	a5,000800A0
	lui	a4,00044B08
	addi	a5,a5,+000007C0
	sw	a5,a4,+00000080
	c.lw	s0,76(a5)
	lui	a4,00004000
	addi	a4,a4,+00000780
	c.or	a5,a4
	c.sw	s0,76(a5)
	jal	ra,000000002301A7E4
	lui	a5,00080000
	xori	a5,a5,-00000022
	c.sw	s0,96(a5)
	lui	a5,00000030
	addi	a5,a5,+0000010A
	sw	a5,s0,+00000114
	lui	a5,000FF900
	addi	a5,a5,+00000064
	c.sw	s0,100(a5)
	c.lui	s2,00001000
	sw	s2,s0,+00000150
	c.lui	s1,00002000
	sw	zero,s0,+00000224
	addi	a5,s1,+00000020
	sw	a5,s0,+000000A0
	c.lw	s0,76(a5)
	c.lui	a4,FFFFF000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	or	a5,a5,s2
	c.sw	s0,76(a5)
	addi	s1,s1,-000003DB
	jal	ra,000000002301A7F8
	sw	s1,s0,+00000510
	lw	a5,s0,+00000310
	ori	a5,a5,+00000080
	sw	a5,s0,+00000310
	jal	ra,000000002301459E
	c.addi	a0,00000001
	slli	s0,a0,0000001A
	lui	a5,000E0000
	c.and	a5,s0
	c.beqz	a5,000000002301AC9A

l2301AC82:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,s2,+00000539
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000060
	jal	ra,000000002301327E

l2301AC9A:
	lui	a4,00044B00
	lw	a0,a4,+0000009C
	lui	a5,000E4000
	c.addi	a5,FFFFFFFF
	c.and	a0,a5
	c.or	a0,s0
	sw	a0,a4,+0000009C
	c.lw	a4,76(a5)
	lui	a3,000FE000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00002000
	c.or	a5,a3
	c.sw	a4,76(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; hal_machw_disable_int: 2301ACCE
;;   Called from:
;;     23013260 (in assert_rec)
hal_machw_disable_int proc
	lui	a5,00044B08
	c.lw	a5,116(a3)
	lui	a4,00080000
	xori	a4,a4,-00000001
	c.and	a3,a4
	c.sw	a5,116(a3)
	lw	a3,a5,+00000080
	c.and	a4,a3
	sw	a4,a5,+00000080
	c.jr	ra

;; hal_machw_reset: 2301ACEC
;;   Called from:
;;     23002526 (in mm_force_idle_req)
;;     2301BF2C (in bl_reset_evt)
hal_machw_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301AD08

l2301ACFC:
	lui	a0,00023078
	addi	a0,a0,-00000608
	jal	ra,0000000023022052

l2301AD08:
	lui	a5,00044B00
	c.lw	a5,76(a4)
	lui	s0,00044B00
	andi	a4,a4,-00000081
	c.sw	a5,76(a4)
	sw	zero,a5,+00000038
	addi	a4,zero,+0000007C
	c.sw	a5,84(a4)

l2301AD22:
	c.lw	s0,56(a5)
	c.andi	a5,0000000F
	c.bnez	a5,000000002301AD22

l2301AD28:
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,000000002301A7E4
	lui	a5,00044B08
	lw	a4,a5,+0000008C
	lui	a2,00080000
	xori	a1,a2,-00000001
	andi	a4,a4,-00000040
	sw	a4,a5,+0000008C
	c.li	a4,FFFFFFFF
	c.sw	a5,124(a4)
	lui	a4,000037FF
	addi	a4,a4,+00000187
	c.sw	a5,112(a4)
	c.lw	a5,116(a3)
	c.and	a3,a1
	c.or	a3,a2
	c.sw	a5,116(a3)
	lw	a4,a5,+00000080
	c.and	a4,a1
	c.or	a4,a2
	sw	a4,a5,+00000080
	c.lw	s0,76(a5)
	ori	a5,a5,+00000080
	c.sw	s0,76(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hal_machw_search_addr: 2301AD84
;;   Called from:
;;     2300A16C (in rxu_cntrl_frame_handle)
;;     2300DB24 (in apm_auth_handler)
hal_machw_search_addr proc
	lbu	a4,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a0,+00000002
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a0,+00000003
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,00044B00
	sw	a5,a4,+000000BC
	lbu	a5,a0,+00000005
	lbu	a3,a0,+00000004
	c.slli	a5,08
	c.or	a5,a3
	sw	a5,a4,+000000C0
	lui	a5,00020000
	sw	a5,a4,+000000C4

l2301ADC0:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000002
	blt	a3,zero,000000002301ADC0

l2301ADCC:
	slli	a4,a5,00000003
	addi	a0,zero,+000000FF
	blt	a4,zero,000000002301ADE2

l2301ADD8:
	srli	a0,a5,00000010
	c.addi	a0,FFFFFFF8
	andi	a0,a0,+000000FF

l2301ADE2:
	c.jr	ra

;; hal_machw_monitor_mode: 2301ADE4
;;   Called from:
;;     2301BB3C (in mm_hw_config_handler)
hal_machw_monitor_mode proc
	lui	a5,00044B08
	c.lw	a5,116(a4)
	lui	a3,00042019
	addi	a3,a3,-000001A8
	c.andi	a4,FFFFFFFE
	c.sw	a5,116(a4)
	c.lw	a5,116(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,116(a4)
	lui	a5,00044B00
	c.lw	a5,76(a4)
	ori	a4,a4,+00000700
	c.sw	a5,76(a4)
	lui	a4,00080000
	xori	a4,a4,-00000022
	c.sw	a3,0(a4)
	c.lw	a3,4(a3)
	c.or	a4,a3
	c.sw	a5,96(a4)
	c.lw	a5,76(a4)
	c.lui	a3,FFFE4000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.lui	a3,0000C000
	c.or	a4,a3
	c.sw	a5,76(a4)
	jal	zero,000000002301A7F8

;; hal_machw_sleep_check: 2301AE2A
;;   Called from:
;;     2301BF96 (in bl_sleep)
hal_machw_sleep_check proc
	c.addi	sp,FFFFFFF0
	lui	a5,00044B08
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a2,00044B00
	lw	a0,a5,+0000008C
	c.li	a6,00000001
	c.li	a5,00000000
	addi	a7,a2,+00000128
	addi	t1,zero,-000007D0
	c.li	a1,00000009

l2301AE4A:
	sll	a4,a6,a5
	c.and	a4,a0
	c.beqz	a4,000000002301AEA2

l2301AE52:
	slli	a3,a5,00000002
	c.add	a3,a7
	lw	t4,a3,+00000000
	lw	a4,a2,+00000120
	sub	a4,t1,a4
	c.add	a4,t4
	bge	a4,zero,000000002301AEA2

l2301AE6A:
	c.lw	a3,0(a4)
	lw	a3,a2,+00000120
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.sub	a5,a3
	c.add	a5,a4
	c.li	s0,00000000
	bge	a5,zero,000000002301AE98

l2301AE80:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000208
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000020
	jal	ra,000000002301327E

l2301AE98:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301AEA2:
	c.addi	a5,00000001
	bne	a5,a1,000000002301AE4A

l2301AEA8:
	c.li	s0,00000001
	c.j	000000002301AE98

;; hal_machw_gen_handler: 2301AEAC
hal_machw_gen_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,00044B08
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a5,108(a4)
	c.lw	a5,116(s0)
	c.and	s0,a4
	c.sw	a5,112(s0)
	lui	a5,00000040
	c.addi	a5,00000001
	c.and	a5,s0
	c.beqz	a5,000000002301AED2

l2301AECA:
	lui	a0,00000400
	jal	ra,000000002300E49C

l2301AED2:
	lui	a5,00000080
	c.addi	a5,00000002
	c.and	a5,s0
	c.beqz	a5,000000002301AEE4

l2301AEDC:
	lui	a0,00000200
	jal	ra,000000002300E49C

l2301AEE4:
	andi	a5,s0,+00000004
	c.beqz	a5,000000002301AF0C

l2301AEEA:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301AFA6

l2301AEF4:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000008C
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005CC
	jal	ra,000000002301323E

l2301AF0C:
	andi	a5,s0,+00000008
	c.beqz	a5,000000002301AF80

l2301AF12:
	lui	a5,00044B08
	lw	s1,a5,+00000084
	sw	s1,a5,+00000088
	andi	a5,s1,+00000100
	c.beqz	a5,000000002301AF2C

l2301AF24:
	lui	a0,00004000
	jal	ra,000000002300E49C

l2301AF2C:
	andi	a5,s1,+00000040
	c.beqz	a5,000000002301AF36

l2301AF32:
	jal	ra,00000000230042D0

l2301AF36:
	andi	a5,s1,+00000080
	c.beqz	a5,000000002301AF44

l2301AF3C:
	lui	a0,00008000
	jal	ra,000000002300E49C

l2301AF44:
	andi	a5,s1,+00000001
	c.beqz	a5,000000002301AF62

l2301AF4A:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000022F
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005A4
	jal	ra,000000002301323E

l2301AF62:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002301AFCE

l2301AF68:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000232
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000588

l2301AF7C:
	jal	ra,000000002301323E

l2301AF80:
	andi	a5,s0,+00000080
	c.beqz	a5,000000002301B03E

l2301AF86:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000278
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004C0

l2301AF9A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301323E

l2301AFA6:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	lui	a0,00000800
	andi	a5,a5,-00000021
	sw	a5,a4,+0000008C
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,000000002300E49C
	c.j	000000002301AF0C

l2301AFCE:
	andi	a5,s1,+00000004
	c.beqz	a5,000000002301AFEA

l2301AFD4:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000233
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000560
	c.j	000000002301AF7C

l2301AFEA:
	andi	a5,s1,+00000008
	c.beqz	a5,000000002301B006

l2301AFF0:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000234
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000538
	c.j	000000002301AF7C

l2301B006:
	andi	a5,s1,+00000010
	c.beqz	a5,000000002301B022

l2301B00C:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000235
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000510
	c.j	000000002301AF7C

l2301B022:
	andi	s1,s1,+00000020
	c.beqz	s1,000000002301AF80

l2301B028:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000236
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004E8
	c.j	000000002301AF7C

l2301B03E:
	andi	a5,s0,+00000100
	c.beqz	a5,000000002301B05A

l2301B044:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000279
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000494
	c.j	000000002301AF9A

l2301B05A:
	slli	a5,s0,00000013
	bge	a5,zero,000000002301B078

l2301B062:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027A
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000464
	c.j	000000002301AF9A

l2301B078:
	slli	a5,s0,00000012
	bge	a5,zero,000000002301B096

l2301B080:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027B
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000043C
	c.j	000000002301AF9A

l2301B096:
	slli	a5,s0,00000011
	bge	a5,zero,000000002301B0B4

l2301B09E:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027C
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000040C
	c.j	000000002301AF9A

l2301B0B4:
	slli	a5,s0,00000010
	bge	a5,zero,000000002301B0D2

l2301B0BC:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027D
	addi	a1,a1,+000002DC
	addi	a0,a0,-000003DC
	c.j	000000002301AF9A

l2301B0D2:
	slli	a5,s0,0000000F
	bge	a5,zero,000000002301B0F0

l2301B0DA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027E
	addi	a1,a1,+000002DC
	addi	a0,a0,-000003AC
	c.j	000000002301AF9A

l2301B0F0:
	slli	a5,s0,0000000E
	bge	a5,zero,000000002301B10E

l2301B0F8:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000027F
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000037C
	c.j	000000002301AF9A

l2301B10E:
	slli	a5,s0,0000000A
	bge	a5,zero,000000002301B12C

l2301B116:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000280
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000034C
	c.j	000000002301AF9A

l2301B12C:
	slli	a5,s0,00000009
	bge	a5,zero,000000002301B14A

l2301B134:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000281
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000318
	c.j	000000002301AF9A

l2301B14A:
	slli	a5,s0,00000007
	bge	a5,zero,000000002301B168

l2301B152:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000282
	addi	a1,a1,+000002DC
	addi	a0,a0,-000002F0
	c.j	000000002301AF9A

l2301B168:
	slli	a5,s0,00000006
	bge	a5,zero,000000002301B186

l2301B170:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000283
	addi	a1,a1,+000002DC
	addi	a0,a0,-000002BC
	c.j	000000002301AF9A

l2301B186:
	slli	a5,s0,0000000B
	bge	a5,zero,000000002301B1A4

l2301B18E:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000284
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000288
	c.j	000000002301AF9A

l2301B1A4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; hal_mib_dump: 2301B1AE
;;   Called from:
;;     2300E510 (in bl_fw_statistic_dump)
;;     230277DE (in cmd_wifi_mib)
hal_mib_dump proc
	lui	a0,00023078
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000024
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a5,0004200E
	lw	a5,a5,-000006D0
	lui	a0,00023078
	addi	a0,a0,+0000004C
	c.lw	a5,12(a1)
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	lui	a0,00023072
	addi	a0,a0,+000007FC
	c.addi	sp,00000010
	jal	zero,00000000230520DC

;; mm_monitor_channel_req_handler: 2301B1E4
mm_monitor_channel_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a0,zero,+0000005F
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002300E768
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
	c.bnez	a1,000000002301B282

l2301B25A:
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a5,00000000
	c.li	a4,00000000
	sltu	a1,zero,a1
	c.li	a0,00000000
	jal	ra,000000002301415C
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B282:
	c.lw	s1,8(a5)
	addi	a3,a2,+0000000A
	c.bnez	a5,000000002301B25A

l2301B28A:
	addi	a3,a2,-0000000A
	c.j	000000002301B25A

;; mm_monitor_enable_req_handler: 2301B290
mm_monitor_enable_req_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	jal	ra,000000002300E768
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
	jal	ra,0000000023070EB8
	c.mv	a0,sp
	c.swsp	zero,00000000
	jal	ra,00000000230141E4
	c.lui	a3,00001000
	addi	a3,a3,-0000067B
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a2,a3
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002301415C
	jal	ra,0000000023001D60
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,000000002300E7D4
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; mm_cfg_rssi_req_handler: 2301B33E
mm_cfg_rssi_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	s1,a1,+00000000
	addi	a3,zero,+000005D8
	lui	a5,0004201A
	add	a3,s1,a3
	addi	a4,a5,+00000410
	c.mv	s2,a1
	addi	s0,a5,+00000410
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.beqz	a4,000000002301B384

l2301B36A:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-00000702
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000078
	jal	ra,000000002301327E

l2301B384:
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

;; mm_set_ps_options_req_handler: 2301B3B0
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
	lui	a5,0004201A
	addi	a4,a5,+00000410
	c.mv	s2,a1
	addi	s0,a5,+00000410
	c.add	a4,a2
	lbu	a4,a4,+00000056
	c.beqz	a4,000000002301B3FE

l2301B3E0:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-000007EB
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000078
	c.swsp	a3,00000084
	jal	ra,000000002301327E
	c.lwsp	a2,000000A4

l2301B3FE:
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
	jal	ra,000000002300E83E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; mm_tim_update_req_handler: 2301B434
mm_tim_update_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,0000000023003210
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_req_handler: 2301B446
mm_bcn_change_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,00000000230036B4
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_remain_on_channel_req_handler: 2301B458
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
	jal	ra,0000000023019DE2
	c.lwsp	a2,00000084
	c.beqz	s0,000000002301B498

l2301B474:
	c.mv	s2,a0
	c.li	a3,00000003
	c.mv	a1,s0
	addi	a0,zero,+00000047
	jal	ra,000000002300E768
	lbu	a4,s1,+00000000
	sb	s2,a0,+00000001
	sb	a4,a0,+00000000
	c.li	a4,00000004
	sb	a4,a0,+00000002
	jal	ra,000000002300E7D4

l2301B498:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_del_req_handler: 2301B4A6
mm_sta_del_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a0,a1,+00000000
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	jal	ra,000000002300279A
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,0000000D
	c.mv	a1,a3
	jal	ra,000000002300E83E
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_add_req_handler: 2301B4CA
mm_sta_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	a0,0000000B
	c.mv	s1,a1
	c.mv	a1,a3
	c.li	a3,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300E768
	c.mv	s0,a0
	addi	a2,a0,+00000002
	addi	a1,a0,+00000001
	c.mv	a0,s1
	jal	ra,000000002300254C
	sb	a0,s0,+00000000
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_del_req_handler: 2301B504
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
	bge	a5,a4,000000002301B540

l2301B528:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000056E
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000298
	jal	ra,000000002301327E

l2301B540:
	lbu	a0,s0,+00000000
	jal	ra,00000000230022CC
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,zero,+00000027
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_add_req_handler: 2301B562
mm_key_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000025
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000002
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	lbu	a4,s0,+00000000
	c.li	a5,00000003
	c.mv	s1,a0
	bgeu	a5,a4,000000002301B59C

l2301B584:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000053D
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000214
	jal	ra,000000002301327E

l2301B59C:
	lbu	a4,s0,+00000004
	addi	a5,zero,+00000020
	bgeu	a5,a4,000000002301B5C0

l2301B5A8:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000541
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000023C
	jal	ra,000000002301327E

l2301B5C0:
	lbu	a4,s0,+00000028
	c.li	a5,00000005
	bgeu	a5,a4,000000002301B5E2

l2301B5CA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000544
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000264
	jal	ra,000000002301327E

l2301B5E2:
	c.mv	a0,s0
	jal	ra,000000002300219C
	sb	a0,s1,+00000001
	sb	zero,s1,+00000000
	c.mv	a0,s1
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_power_req_handler: 2301B602
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
	jal	ra,000000002300E768
	addi	a4,zero,+000005D8
	add	s1,s1,a4
	c.mv	s0,a0
	lb	a5,s2,+00000001
	lui	a0,0004201A
	addi	a0,a0,+00000410
	c.mv	a2,s0
	addi	a1,s0,+00000001
	c.add	a0,s1
	sb	a5,a0,+0000005A
	lb	a5,a0,+00000059
	sb	a5,s0,+00000001
	addi	a5,zero,+0000007F
	sb	a5,a0,+00000059
	jal	ra,000000002300557E
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_req_handler: 2301B668
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
	jal	ra,000000002300EA02
	c.li	a5,00000003
	c.lwsp	a2,00000064
	bne	a0,a5,000000002301B696

l2301B686:
	c.li	s1,00000002

l2301B688:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301B696:
	lbu	a4,a1,+00000000
	lui	a5,00042019
	addi	a3,a5,-000001A8
	sb	a4,a3,+00000022
	addi	s1,a5,-000001A8
	c.mv	a0,s0
	c.beqz	a4,000000002301B6FE

l2301B6AE:
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301B6C8

l2301B6B4:
	c.li	s1,00000002
	beq	a0,s1,000000002301B688

l2301B6BA:
	jal	ra,000000002301A80C
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002300E902
	c.j	000000002301B688

l2301B6C8:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B6EA

l2301B6D2:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000047D
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005CC
	jal	ra,000000002301327E

l2301B6EA:
	sh	zero,s1,+00000012

l2301B6EE:
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,zero,+00000023
	jal	ra,000000002300E83E
	c.li	s1,00000000
	c.j	000000002301B688

l2301B6FE:
	jal	ra,000000002300EA02
	c.li	a5,00000002
	beq	a0,a5,000000002301B686

l2301B708:
	jal	ra,0000000023001D60
	c.j	000000002301B6EE

;; mm_reset_req_handler: 2301B70E
mm_reset_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	csrrci	zero,mstatus,00000008
	jal	ra,000000002301A874
	jal	ra,00000000230145B0
	jal	ra,0000000023007498
	jal	ra,0000000023001D26
	csrrsi	zero,mstatus,00000008
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,00000001
	c.mv	a1,a3
	jal	ra,000000002300E83E
	c.li	a0,00000000
	c.li	a1,00000000
	jal	ra,000000002300E902
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_version_req_handler: 2301B74A
mm_version_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	c.li	a0,00000005
	c.li	a3,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300E768
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
	jal	ra,00000000230141BE
	c.lui	a5,00009000
	addi	a5,a5,-00000621
	c.mv	a0,s0
	c.sw	s0,20(a5)
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_start_req_handler: 2301B792
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
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301B7C2

l2301B7AA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000135
	addi	a1,a1,+000002DC
	addi	a0,a0,+000002C0
	jal	ra,000000002301327E

l2301B7C2:
	c.mv	a0,s1
	jal	ra,00000000230141E4
	c.lui	a3,00001000
	addi	a3,a3,-00000694
	c.mv	a2,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002301415C
	c.li	a0,00000010
	jal	ra,000000002300553A
	c.lw	s1,64(a5)
	addi	a4,zero,+000003E8
	c.mv	a2,s0
	add	a5,a5,a4
	lui	a4,00042019
	c.mv	a1,s2
	c.li	a0,00000003
	sw	a5,a4,+00000ED0
	lhu	a4,s1,+00000044
	lui	a5,00042019
	sh	a4,a5,+00000E78
	jal	ra,000000002300E83E
	jal	ra,0000000023001D60
	jal	ra,000000002301A80C
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,000000002300E902
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_ps_mode_req_handler: 2301B828
mm_set_ps_mode_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a0,a1,+00000000
	c.li	a5,00000003
	bne	a0,a5,000000002301B874

l2301B838:
	lui	a5,0004201B
	lw	s0,a5,-00000038

l2301B840:
	c.bnez	s0,000000002301B85E

l2301B842:
	lui	a5,00042019
	lhu	a1,a5,-0000014E
	c.li	a2,00000000
	addi	a0,zero,+00000032
	jal	ra,000000002300E83E

l2301B854:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B85E:
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002301B870

l2301B864:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002301B870

l2301B86A:
	c.mv	a0,s0
	jal	ra,0000000023003DC6

l2301B870:
	c.lw	s0,0(s0)
	c.j	000000002301B840

l2301B874:
	c.mv	a1,a3
	jal	ra,0000000023003B20
	c.j	000000002301B854

;; mm_force_idle_req_handler: 2301B87C
mm_force_idle_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.mv	s1,a2
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301B8AE

l2301B890:
	c.li	s0,00000002
	beq	a0,s0,000000002301B8A2

l2301B896:
	jal	ra,000000002301A80C
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002300E902

l2301B8A2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301B8AE:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B8D0

l2301B8B8:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000004C0
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005CC
	jal	ra,000000002301327E

l2301B8D0:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002300E902
	c.lw	s0,0(a5)
	c.li	s0,00000000
	c.jalr	a5
	c.j	000000002301B8A2

;; mm_hw_config_handler: 2301B8E0
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
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301B916

l2301B906:
	c.addi	a0,FFFFFFFE
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000001
	bltu	a5,a0,000000002301BE02

l2301B912:
	c.li	s0,00000002
	c.j	000000002301BAE2

l2301B916:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002301B938

l2301B920:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000077B
	addi	a1,a1,+000002DC
	addi	a0,a0,-000005CC
	jal	ra,000000002301327E

l2301B938:
	lui	s4,00042019
	c.li	a5,00000016
	addi	s4,s4,-000001A8
	beq	s2,a5,000000002301BB48

l2301B946:
	bltu	a5,s2,000000002301B9C2

l2301B94A:
	c.li	a5,0000000E
	beq	s2,a5,000000002301BA8E

l2301B950:
	bltu	a5,s2,000000002301B97C

l2301B954:
	c.li	a5,00000006
	beq	s2,a5,000000002301BAFC

l2301B95A:
	c.li	a5,00000008
	beq	s2,a5,000000002301BB24

l2301B960:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000007AE
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	ra,000000002301327E
	c.li	s0,00000002
	c.j	000000002301BAAC

l2301B97C:
	c.li	a5,00000012
	beq	s2,a5,000000002301BBC6

l2301B982:
	c.li	a5,00000014
	beq	s2,a5,000000002301BB7E

l2301B988:
	c.li	a5,00000010
	bne	s2,a5,000000002301B960

l2301B98E:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000011
	jal	ra,000000002300E768
	lbu	a5,s0,+00000008
	c.mv	s2,a0
	c.beqz	a5,000000002301B9BA

l2301B9A2:
	lhu	a4,s0,+00000006
	lhu	a3,s0,+00000004
	lhu	a2,s0,+00000002
	lbu	a1,s0,+00000001
	lbu	a0,s0,+00000000
	jal	ra,000000002301415C

l2301B9BA:
	c.mv	a0,s2

l2301B9BC:
	jal	ra,000000002300E7D4
	c.j	000000002301BAAA

l2301B9C2:
	c.li	a5,0000001E
	beq	s2,a5,000000002301BCCC

l2301B9C8:
	bltu	a5,s2,000000002301BA50

l2301B9CC:
	c.li	a5,0000001A
	beq	s2,a5,000000002301BBF2

l2301B9D2:
	c.li	a5,0000001C
	beq	s2,a5,000000002301BC8A

l2301B9D8:
	c.li	a5,00000018
	bne	s2,a5,000000002301B960

l2301B9DE:
	lbu	a5,s0,+00000006
	addi	a0,zero,+000005D8
	c.li	a2,00000006
	add	a5,a5,a0
	lui	a0,0004201A
	addi	a0,a0,+00000410
	c.mv	a1,s0
	addi	a5,a5,+00000038
	c.add	a0,a5
	jal	ra,0000000023070C7C
	lui	a5,0004201B
	addi	a5,a5,-00000040
	lbu	a4,a5,+00000011
	lbu	a5,a5,+00000010
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,000000002301BA48

l2301BA18:
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

l2301BA48:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000019
	c.j	000000002301BAA6

l2301BA50:
	addi	a5,zero,+00000028
	beq	s2,a5,000000002301BDB8

l2301BA58:
	addi	a5,zero,+0000003B
	beq	s2,a5,000000002301BDF2

l2301BA60:
	addi	a5,zero,+00000020
	bne	s2,a5,000000002301B960

l2301BA68:
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
	c.j	000000002301BAA6

l2301BA8E:
	c.lw	s0,0(a5)
	lw	a4,s4,+00000004
	c.mv	a2,s1
	sw	a5,s4,+00000000
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.mv	a1,s3
	c.li	a0,0000000F

l2301BAA6:
	jal	ra,000000002300E83E

l2301BAAA:
	c.li	s0,00000000

l2301BAAC:
	lbu	s2,s4,+00000013
	c.slli	s2,04
	andi	a5,s2,-000000F1
	c.beqz	a5,000000002301BAD0

l2301BAB8:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000005B9
	addi	a1,a1,+000002DC
	addi	a0,a0,+000001D8
	jal	ra,000000002301327E

l2301BAD0:
	lui	a5,00044B00
	sw	s2,a5,+00000038
	lbu	a1,s4,+00000012
	c.mv	a0,s1
	jal	ra,000000002300E902

l2301BAE2:
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

l2301BAFC:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000007
	jal	ra,000000002300E768
	lbu	a2,s0,+00000007
	lbu	a1,s0,+00000000
	c.mv	s2,a0
	addi	a3,a0,+00000001
	addi	a0,s0,+00000001
	jal	ra,0000000023006E42
	sb	a0,s2,+00000000
	c.j	000000002301B9BA

l2301BB24:
	lbu	a0,s0,+00000000
	c.li	a5,00000001
	bltu	a5,a0,000000002301BB32

l2301BB2E:
	jal	ra,0000000023006FB2

l2301BB32:
	lui	a5,0004201B
	lw	a5,a5,-00000038
	c.bnez	a5,000000002301BB40

l2301BB3C:
	jal	ra,000000002301ADE4

l2301BB40:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000009
	c.j	000000002301BAA6

l2301BB48:
	lui	a5,0004201D
	lw	a4,a5,+000001F8
	lbu	a5,s0,+00000005
	c.lw	s0,0(a3)
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,s4
	c.sw	a5,4(a3)
	c.beqz	a4,000000002301BB76

l2301BB60:
	lbu	a4,a4,+00000004
	lbu	a5,s0,+00000005
	bne	a4,a5,000000002301BB76

l2301BB6C:
	lui	a5,00044B00
	c.li	a4,00000010
	sw	a4,a5,+000000DC

l2301BB76:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000017
	c.j	000000002301BAA6

l2301BB7E:
	lbu	a5,s0,+00000002
	addi	a4,zero,+000005D8
	lui	a0,0004201A
	add	a5,a5,a4
	addi	a0,a0,+00000410
	lhu	a1,s0,+00000000
	c.add	a0,a5
	lbu	a5,a0,+00000056
	c.bnez	a5,000000002301BBC0

l2301BB9E:
	lbu	a4,a0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a3
	addi	a5,a5,-000000E0
	c.slli	a1,0A
	c.add	a5,a4
	c.sw	a5,4(a1)

l2301BBB8:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000015
	c.j	000000002301BAA6

l2301BBC0:
	jal	ra,00000000230072DC
	c.j	000000002301BBB8

l2301BBC6:
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
	c.j	000000002301BAA6

l2301BBF2:
	lbu	s5,s0,+00000006
	addi	a5,zero,+00000176
	lbu	a2,s0,+00000005
	add	a5,s5,a5
	lui	a0,0004201A
	c.lw	s0,0(a3)
	addi	a4,a0,+00000410
	addi	s2,a0,+00000410
	c.add	a5,a2
	c.slli	a5,02
	c.add	a5,a4
	c.sw	a5,8(a3)
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a4,a5
	lbu	a5,a4,+00000058
	c.beqz	a5,000000002301BC52

l2301BC28:
	lbu	a4,s0,+00000005
	c.li	a3,00000001
	c.lw	s0,0(a5)
	beq	a4,a3,000000002301BC76

l2301BC34:
	c.beqz	a4,000000002301BC46

l2301BC36:
	c.li	a3,00000002
	beq	a4,a3,000000002301BC80

l2301BC3C:
	lui	a4,00044B00
	sw	a5,a4,+0000020C
	c.j	000000002301BC4E

l2301BC46:
	lui	a4,00044B00
	sw	a5,a4,+00000200

l2301BC4E:
	jal	ra,0000000023001C12

l2301BC52:
	addi	a0,zero,+000005D8
	add	a0,s5,a0
	c.add	a0,s2
	lbu	a5,a0,+00000056
	c.bnez	a5,000000002301BC6E

l2301BC62:
	lbu	a2,s0,+00000004
	lbu	a1,s0,+00000005
	jal	ra,0000000023004038

l2301BC6E:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001B
	c.j	000000002301BAA6

l2301BC76:
	lui	a4,00044B00
	sw	a5,a4,+00000204
	c.j	000000002301BC4E

l2301BC80:
	lui	a4,00044B00
	sw	a5,a4,+00000208
	c.j	000000002301BC4E

l2301BC8A:
	lbu	a5,s0,+00000000
	slli	s0,a5,0000000E
	lui	a5,000003E0
	c.and	a5,s0
	c.beqz	a5,000000002301BCB4

l2301BC9A:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,a2,-000007CC
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000019C
	jal	ra,000000002301327E

l2301BCB4:
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
	c.j	000000002301BAA6

l2301BCCC:
	lbu	s7,s0,+00000003
	addi	a0,zero,+000005D8
	lui	a5,0004201A
	add	a0,s7,a0
	addi	s2,a5,+00000410
	addi	s5,a5,+00000410
	c.add	s2,a0
	lbu	a4,s2,+00000056
	c.bnez	a4,000000002301BD76

l2301BCEC:
	lbu	a5,s0,+00000002
	c.addi	a0,00000018
	c.add	a0,s5
	c.beqz	a5,000000002301BDB2

l2301BCF6:
	lbu	a5,s2,+00000060
	addi	a4,zero,+000001B0
	lui	s6,00042019
	add	a5,a5,a4
	addi	s6,s6,-000000E0
	lui	s8,00044B00
	lw	a1,s8,+00000120
	c.add	s6,a5
	lw	a5,s6,+00000004
	c.add	a1,a5
	jal	ra,0000000023003726
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
	jal	ra,000000002301A278

l2301BD76:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	lbu	a4,s0,+00000002
	c.add	a5,s5
	sb	a4,a5,+00000058
	c.beqz	a4,000000002301BDAA

l2301BD8A:
	c.lw	a5,20(a3)
	lui	a4,00044B00
	sw	a3,a4,+00000200
	c.lw	a5,20(a3)
	sw	a3,a4,+00000204
	c.lw	a5,20(a3)
	sw	a3,a4,+00000208
	c.lw	a5,20(a5)
	sw	a5,a4,+0000020C
	jal	ra,0000000023001C12

l2301BDAA:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001F
	c.j	000000002301BAA6

l2301BDB2:
	jal	ra,00000000230037DC
	c.j	000000002301BD76

l2301BDB8:
	lbu	a5,s0,+00000000
	c.li	s2,00000005
	c.beqz	a5,000000002301BDCE

l2301BDC0:
	lui	a4,00044B00
	c.lw	a4,84(a5)
	c.li	s2,00000000
	ori	a5,a5,+00000080
	c.sw	a4,84(a5)

l2301BDCE:
	c.li	a3,00000003
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+00000029
	jal	ra,000000002300E768
	lbu	a4,s0,+00000001
	sb	a4,a0,+00000000
	lbu	a4,s0,+00000002
	sb	s2,a0,+00000002
	sb	a4,a0,+00000001
	c.j	000000002301B9BC

l2301BDF2:
	c.mv	a0,s0
	jal	ra,000000002301A0C2
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+0000003C
	c.j	000000002301BAA6

l2301BE02:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	lui	s0,00042019
	addi	s0,s0,-000001A8
	c.andi	a5,0000000F
	c.mv	a0,s1
	sb	a5,s0,+00000013
	jal	ra,000000002300EA02
	sb	a0,s0,+00000012
	jal	ra,000000002301A80C
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002300E902
	c.j	000000002301B912

;; bl60x_edca_get: 2301BE2E
;;   Called from:
;;     23027440 (in wifi_edca_dump_cmd)
;;     2302747C (in wifi_edca_dump_cmd)
;;     230274B4 (in wifi_edca_dump_cmd)
;;     230274EC (in wifi_edca_dump_cmd)
bl60x_edca_get proc
	c.li	a5,00000001
	beq	a0,a5,000000002301BE80

l2301BE34:
	blt	a5,a0,000000002301BE3E

l2301BE38:
	c.beqz	a0,000000002301BE54

l2301BE3A:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2301BE3E:
	c.li	a5,00000002
	beq	a0,a5,000000002301BEAE

l2301BE44:
	c.li	a5,00000003
	bne	a0,a5,000000002301BE3A

l2301BE4A:
	lui	a5,00044B00
	lw	a5,a5,+0000020C
	c.j	000000002301BE88

l2301BE54:
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

l2301BE80:
	lui	a5,00044B00
	lw	a5,a5,+00000204

l2301BE88:
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

l2301BEAE:
	lui	a5,00044B00
	lw	a5,a5,+00000208
	c.j	000000002301BE88

;; bl_init: 2301BEB8
;;   Called from:
;;     230133E2 (in wifi_main)
bl_init proc
	lui	a5,0004201D
	lui	a4,0004200E
	addi	a5,a5,+00000274
	c.addi	sp,FFFFFFF0
	sw	a5,a4,+00000D60
	lui	a5,0004201D
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sw	zero,a5,+00000270
	lui	s0,0004201C
	jal	ra,000000002301F896
	jal	ra,0000000023007498
	jal	ra,0000000023001D26
	jal	ra,000000002300E5AA
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	addi	a0,s0,-00000728
	jal	ra,0000000023070EB8
	addi	a5,s0,-00000728
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000004
	sb	zero,a5,+00000000
	sb	a4,a5,+00000003
	jal	ra,0000000023021D9A
	addi	a0,s0,-00000728
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300F7F6

;; bl_reset_evt: 2301BF1C
bl_reset_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	lui	a0,00080000
	jal	ra,000000002300E4B4
	jal	ra,000000002301ACEC
	jal	ra,000000002300477C
	jal	ra,000000002300601E
	jal	ra,0000000023001D72
	jal	ra,000000002300726C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sleep: 2301BF4A
;;   Called from:
;;     230134B8 (in wifi_main)
bl_sleep proc
	lui	a5,0004201C
	lw	a5,a5,-000003A8
	c.beqz	a5,000000002301BF62

l2301BF54:
	c.li	a0,00000000
	c.jr	ra

l2301BF58:
	c.li	a0,00000000

l2301BF5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301BF62:
	c.addi	sp,FFFFFFF0
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300EA02
	c.bnez	a0,000000002301BF58

l2301BF70:
	lui	a5,00042019
	addi	a5,a5,-00000150
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002301BF58

l2301BF7E:
	c.lw	a5,4(a5)
	c.bnez	a5,000000002301BF58

l2301BF82:
	lui	a5,0004201B
	lw	s0,a5,-00000038

l2301BF8A:
	c.bnez	s0,000000002301BF9C

l2301BF8C:
	lui	a5,0004201A
	lw	a5,a5,+000003F8
	c.bnez	a5,000000002301BF58

l2301BF96:
	jal	ra,000000002301AE2A
	c.j	000000002301BF5A

l2301BF9C:
	c.mv	a0,s0
	jal	ra,000000002301A352
	c.beqz	a0,000000002301BFA8

l2301BFA4:
	c.lw	s0,4(a5)
	c.bnez	a5,000000002301BF58

l2301BFA8:
	c.lw	s0,0(s0)
	c.j	000000002301BF8A

;; bl_nap_calculate: 2301BFAC
;;   Called from:
;;     23013372 (in coex_wifi_pta_forece_enable)
bl_nap_calculate proc
	lui	a5,00044B08
	lw	a6,a5,+0000008C
	lui	a2,00044B00
	c.li	a4,00000000
	c.li	a0,FFFFFFFF
	c.li	a7,00000001
	addi	t1,a2,+00000128
	c.li	a1,00000009

l2301BFC4:
	sll	a5,a7,a4
	and	a5,a5,a6
	c.beqz	a5,000000002301BFE6

l2301BFCE:
	slli	a5,a4,00000002
	c.add	a5,t1
	c.lw	a5,0(a5)
	lw	a3,a2,+00000120
	bgeu	a3,a5,000000002301BFEE

l2301BFDE:
	c.sub	a5,a3

l2301BFE0:
	bgeu	a5,a0,000000002301BFE6

l2301BFE4:
	c.mv	a0,a5

l2301BFE6:
	c.addi	a4,00000001
	bne	a4,a1,000000002301BFC4

l2301BFEC:
	c.jr	ra

l2301BFEE:
	c.addi	a3,FFFFFFFF
	sub	a5,a3,a5
	c.j	000000002301BFE0

;; rx_swdesc_init: 2301BFF6
;;   Called from:
;;     230041DE (in rxl_init)
rx_swdesc_init proc
	lui	a5,0004201D
	lui	a4,00042043
	addi	a5,a5,+00000280
	addi	a4,a4,+00000000
	c.sw	a5,4(a4)
	lui	a4,00042043
	addi	a4,a4,+00000064
	c.sw	a5,36(a4)
	lui	a4,00042043
	addi	a4,a4,+000000C8
	c.sw	a5,68(a4)
	lui	a4,00042043
	addi	a4,a4,+0000012C
	c.sw	a5,100(a4)
	lui	a4,00042043
	addi	a4,a4,+00000190
	sw	a4,a5,+00000084
	lui	a4,00042043
	addi	a4,a4,+000001F4
	sw	a4,a5,+000000A4
	lui	a4,00042043
	addi	a4,a4,+00000258
	sw	a4,a5,+000000C4
	lui	a4,00042043
	addi	a4,a4,+000002BC
	sw	a4,a5,+000000E4
	lui	a4,00042043
	addi	a4,a4,+00000320
	sw	a4,a5,+00000104
	lui	a4,00042043
	addi	a4,a4,+00000384
	sw	a4,a5,+00000124
	lui	a4,00042043
	addi	a4,a4,+000003E8
	sw	a4,a5,+00000144
	lui	a4,00042043
	addi	a4,a4,+0000044C
	sw	a4,a5,+00000164
	lui	a4,00042043
	addi	a4,a4,+000004B0
	sw	a4,a5,+00000184
	c.jr	ra

;; scan_cancel_req_handler: 2301C094
scan_cancel_req_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000002
	c.swsp	a3,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002300EA02
	c.lwsp	a2,000000A4
	c.beqz	a0,000000002301C0B6

l2301C0A4:
	lui	a5,00042019
	c.li	a4,00000001
	sb	a4,a5,+00000F13

l2301C0AE:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301C0B6:
	c.mv	a1,a3
	c.li	a0,00000001
	jal	ra,0000000023004E24
	c.j	000000002301C0AE

;; scan_start_req_handler: 2301C0C0
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
	jal	ra,000000002300E768
	c.mv	s0,a0
	c.li	a0,00000002
	jal	ra,000000002300EA02
	c.bnez	a0,000000002301C136

l2301C0E6:
	lbu	a5,s1,+0000014F
	c.bnez	a5,000000002301C104

l2301C0EC:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000046
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000038C
	jal	ra,000000002301327E

l2301C104:
	lui	a5,00042019
	sb	zero,s0,+00000000
	addi	a5,a5,-00000108
	c.mv	a0,s1
	c.sw	a5,16(s1)
	sb	zero,a5,+0000001A
	sh	s2,a5,+00000018
	c.li	s1,00000001
	jal	ra,0000000023004C98

l2301C122:
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C136:
	c.li	a5,00000008
	sb	a5,s0,+00000000
	c.li	s1,00000000
	c.j	000000002301C122

;; mm_scan_channel_end_ind_handler: 2301C140
mm_scan_channel_end_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300EA02
	c.li	a5,00000003
	beq	a0,a5,000000002301C16A

l2301C152:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000000C4
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000304
	jal	ra,000000002301327E

l2301C16A:
	lui	a4,00042019
	addi	a4,a4,-000001A8
	c.lw	a4,4(a5)
	c.lui	a3,FFFFE000
	addi	a3,a3,-00000201
	c.and	a5,a3
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	lui	s0,00042019
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	addi	a4,s0,-00000108
	lbu	a5,a4,+0000001A
	c.lw	a4,16(a0)
	addi	s0,s0,-00000108
	c.addi	a5,00000001
	lbu	a3,a0,+0000014F
	andi	a5,a5,+000000FF
	sb	a5,a4,+0000001A
	bgeu	a5,a3,000000002301C1C0

l2301C1AC:
	lbu	a5,a4,+0000001B
	c.bnez	a5,000000002301C1C0

l2301C1B2:
	jal	ra,0000000023004BDE

l2301C1B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301C1C0:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002300E860
	lbu	a5,s0,+0000001B
	lhu	a1,s0,+00000018
	c.beqz	a5,000000002301C1E4

l2301C1D0:
	c.li	a0,00000000
	jal	ra,0000000023004E24
	sb	zero,s0,+0000001B

l2301C1DA:
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,000000002300E902
	c.j	000000002301C1B6

l2301C1E4:
	c.lui	a0,00001000
	c.li	a2,00000002
	addi	a0,a0,-000007FE
	jal	ra,000000002300E83E
	c.j	000000002301C1DA

;; mm_scan_channel_start_ind_handler: 2301C1F2
mm_scan_channel_start_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042019
	addi	a5,a5,-00000108
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a0,00000002
	c.lw	a5,16(s0)
	lbu	s1,a5,+0000001A
	jal	ra,000000002300EA02
	c.li	a5,00000002
	beq	a0,a5,000000002301C22C

l2301C214:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+0000009D
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000033C
	jal	ra,000000002301327E

l2301C22C:
	lui	a4,00042019
	addi	a4,a4,-000001A8
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
	c.bnez	a5,000000002301C25E

l2301C25A:
	jal	ra,0000000023004CC6

l2301C25E:
	c.li	a0,00000002
	c.li	a1,00000003
	jal	ra,000000002300E902
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; txl_buffer_reinit: 2301C272
;;   Called from:
;;     230060AE (in txl_reset)
;;     2301C2AC (in txl_buffer_init)
txl_buffer_reinit proc
	lui	a5,0004201D
	addi	a5,a5,+00000424
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_init: 2301C284
;;   Called from:
;;     2300571C (in txl_cntrl_init)
txl_buffer_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042046
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
	jal	ra,000000002301C272
	addi	s4,s4,-000004E2
	c.li	s7,00000001
	addi	s3,s3,+00000704
	lui	s1,00044B00
	addi	s2,s2,+00000200
	lui	s6,000003F0

l2301C2C6:
	sw	s4,s0,+00000000
	jal	ra,000000002301459E
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002301459E
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
	bne	s0,s5,000000002301C2C6

l2301C338:
	lui	s0,00042046
	addi	s0,s0,+000003C4
	lui	s2,000BADCB
	c.lui	s1,FFFF0000
	addi	s3,s0,+00000078
	addi	s2,s2,-000004E2
	c.li	s6,00000001
	addi	s1,s1,+00000704
	lui	s5,00044B00
	lui	s4,000003F0

l2301C35C:
	sw	s2,s0,+00000000
	jal	ra,000000002301459E
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002301459E
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
	bne	s0,s3,000000002301C35C

l2301C3B4:
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

;; txl_buffer_reset: 2301C3CA
;;   Called from:
;;     230058B6 (in txl_cntrl_flush_ac)
txl_buffer_reset proc
	lui	a5,0004201D
	addi	a5,a5,+00000424
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_alloc: 2301C3DC
;;   Called from:
;;     23005E9A (in txl_cntrl_push)
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
	c.bnez	a5,000000002301C420

l2301C416:
	addi	a1,a0,+00000218
	c.add	a1,a4
	jal	ra,000000002300C86C

l2301C420:
	c.lw	s0,84(a1)
	c.li	a5,00000000
	addi	a4,zero,+0000003C

l2301C428:
	add	a3,a1,a5
	c.lw	a3,0(a2)
	add	a3,s0,a5
	c.addi	a5,00000004
	sw	a2,a3,+000001BC
	bne	a5,a4,000000002301C428

l2301C43C:
	lui	a5,0004201D
	addi	a4,a5,+00000424
	lw	a4,a4,+000000B4
	addi	a5,a5,+00000424
	c.bnez	a4,000000002301C466

l2301C44E:
	sw	s1,a5,+000000B4

l2301C452:
	sw	s1,a5,+000000B8
	sw	zero,s0,+000000DC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C466:
	lw	a4,a5,+000000B8
	c.sw	a4,16(s1)
	c.j	000000002301C452

;; txl_buffer_update_thd: 2301C46E
;;   Called from:
;;     23005EA4 (in txl_cntrl_push)
txl_buffer_update_thd proc
	c.lw	a0,104(a5)
	lui	a6,000CAFF0
	lw	a7,a0,+0000006C
	addi	a4,a5,+0000004C
	addi	a0,a0,+00000034
	c.li	a1,00000000
	c.mv	t1,a4
	addi	a6,a6,-00000522

l2301C488:
	c.lw	a0,0(a3)
	c.bnez	a3,000000002301C4A8

l2301C48C:
	c.bnez	a1,000000002301C4CE

l2301C48E:
	lui	a1,00023078
	lui	a0,00023078
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000003A0
	addi	a0,a0,+000003B8
	c.swsp	ra,00000084
	jal	ra,0000000023052118

l2301C4A6:
	c.j	000000002301C4A6

l2301C4A8:
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
	c.j	000000002301C488

l2301C4CE:
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

;; txl_cfm_init: 2301C508
;;   Called from:
;;     23005720 (in txl_cntrl_init)
;;     230060B2 (in txl_reset)
txl_cfm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,+00000500
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	addi	a0,s0,+00000500
	jal	ra,000000002300E278
	lui	a0,0004201D
	addi	a0,a0,+00000508
	jal	ra,000000002300E278
	lui	a0,0004201D
	addi	a0,a0,+00000510
	jal	ra,000000002300E278
	lui	a0,0004201D
	addi	a0,a0,+00000518
	jal	ra,000000002300E278
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201D
	addi	a0,a0,+00000520
	c.addi	sp,00000010
	jal	zero,000000002300E278

;; txl_cfm_push: 2301C55E
;;   Called from:
;;     23005FE4 (in txl_transmit_trigger)
;;     2300CD1E (in txu_cntrl_push)
txl_cfm_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,108(a5)
	slli	a4,a2,00000003
	c.swsp	a2,00000084
	c.lw	a5,0(a5)
	c.sw	a5,16(a1)
	lui	a5,0004201D
	addi	a5,a5,+00000500
	c.mv	a1,a0
	add	a0,a5,a4
	jal	ra,000000002300E282
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	slli	a5,a2,00000002
	lui	a2,00023078
	addi	a2,a2,+000003F4
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.addi16sp	00000020
	jal	zero,000000002300E49C

;; txl_cfm_evt: 2301C59A
txl_cfm_evt proc
	lui	a5,00023078
	slli	a4,a0,00000002
	addi	a5,a5,+000003F4
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s0,0000000C
	c.lw	a5,0(s0)
	lui	a5,0004201D
	addi	a5,a5,+00000500
	c.swsp	s1,00000088
	slli	s1,a0,00000003
	c.add	s1,a5
	lui	a5,0004201C
	lw	a5,a5,-000003A8
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.li	s2,00000001
	c.swsp	s3,00000084
	c.and	a5,s0
	sll	s2,s2,a0
	c.bnez	a5,000000002301C5EE

l2301C5D6:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000168
	addi	a1,a1,+000002DC
	addi	a0,a0,+000003DC
	jal	ra,000000002301327E

l2301C5EE:
	c.mv	a0,s0
	lui	s0,0004201A
	jal	ra,000000002300E4B4
	addi	s0,s0,+000003A8

l2301C5FC:
	lw	s3,s1,+00000000
	beq	s3,zero,000000002301C62C

l2301C604:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s1
	jal	ra,000000002300E2FE
	csrrsi	zero,mstatus,00000008
	c.mv	a0,s3
	jal	ra,0000000023007A62
	c.mv	a0,s3
	jal	ra,000000002300CE6C
	c.lw	s0,80(a5)
	c.mv	a0,s2
	c.addi	a5,FFFFFFFF
	c.sw	s0,80(a5)
	jal	ra,000000002301383E
	c.j	000000002301C5FC

l2301C62C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cfm_flush: 2301C63A
;;   Called from:
;;     23005894 (in txl_cntrl_flush_ac)
;;     230058AA (in txl_cntrl_flush_ac)
;;     23006090 (in txl_reset)
;;     2300609E (in txl_reset)
txl_cfm_flush proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s2,00000001
	lui	s3,0003C000
	lui	s1,0004201A
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s5,a1
	c.mv	s4,a2
	sll	s2,s2,a0
	or	s3,a2,s3
	addi	s1,s1,+000003A8

l2301C664:
	c.mv	a0,s5
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	c.beqz	a0,000000002301C6A6

l2301C66E:
	c.lw	a0,108(a5)
	c.lw	a0,100(a4)
	c.lw	a5,0(a5)
	c.beqz	a4,000000002301C686

l2301C676:
	sw	s3,a5,+00000010

l2301C67A:
	c.lw	s0,8(a5)
	c.mv	a0,s0
	c.bnez	a5,000000002301C692

l2301C680:
	jal	ra,000000002300656E
	c.j	000000002301C664

l2301C686:
	c.lw	a5,16(a4)
	blt	a4,zero,000000002301C67A

l2301C68C:
	sw	s4,a5,+00000010
	c.j	000000002301C67A

l2301C692:
	jal	ra,000000002300CE6C
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	c.lw	s0,104(a5)
	c.beqz	a5,000000002301C664

l2301C6A0:
	sw	zero,s0,+00000068
	c.j	000000002301C664

l2301C6A6:
	jal	ra,00000000230065D0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002301383E

;; txl_cfm_dma_int_handler: 2301C6C0
txl_cfm_dma_int_handler proc
	lui	a4,00044A00
	c.lw	a4,36(a5)
	andi	a5,a5,+00000100
	c.sw	a4,32(a5)
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)
	c.jr	ra

;; txl_cfm_dump: 2301C6DC
;;   Called from:
;;     2300E504 (in bl_fw_statistic_dump)
txl_cfm_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	s0,s0,+00000500
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+00000028

l2301C6F0:
	c.mv	a0,s0
	jal	ra,000000002300E35E
	c.beqz	a0,000000002301C6FC

l2301C6F8:
	c.lw	s0,0(a5)

l2301C6FA:
	c.bnez	a5,000000002301C70C

l2301C6FC:
	c.addi	s0,00000008
	bne	s0,s1,000000002301C6F0

l2301C702:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C70C:
	c.lw	a5,0(a5)
	c.j	000000002301C6FA

;; bam_init: 2301C710
;;   Called from:
;;     230074C6 (in me_init)
bam_init proc
	lui	a5,0004201D
	c.li	a4,FFFFFFFF
	c.li	a1,00000000
	c.li	a0,00000008
	sb	a4,a5,+00000534
	jal	zero,000000002300E902

;; bam_send_air_action_frame: 2301C722
;;   Called from:
;;     2301C9CA (in rxu_mgt_ind_handler)
bam_send_air_action_frame proc
	c.addi16sp	FFFFFFA0
	c.swsp	s5,000000A0
	addi	s5,zero,+000001B0
	add	s5,a0,s5
	c.swsp	s8,0000001C
	lui	s8,00042019
	addi	s8,s8,-000000E0
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
	jal	ra,000000002301412E
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	beq	a0,zero,000000002301C8D2

l2301C780:
	addi	s7,zero,+000005D8
	add	s7,s4,s7
	lui	a5,0004201A
	addi	s11,a5,+00000410
	c.mv	a1,a0
	c.mv	s10,a0
	c.addi	s5,0000001E
	c.add	s8,s5
	add	a4,s7,s11
	c.mv	a0,a4
	c.swsp	a4,00000004
	jal	ra,000000002300563C
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
	bne	a2,a4,000000002301C87C

l2301C804:
	lhu	a4,a5,+00000000
	sh	a4,a1,+0000015C
	lhu	a4,a5,+00000002
	sh	a4,a1,+0000015E
	lhu	a5,a5,+00000004

l2301C818:
	sh	a5,a1,+00000160
	lui	a5,0004201A
	addi	a5,a5,+000003A8
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
	beq	s9,a5,000000002301C8F0

l2301C856:
	beq	s9,zero,000000002301C892

l2301C85A:
	c.li	a5,00000002
	beq	s9,a5,000000002301C902

l2301C860:
	lui	a1,00023074
	lui	a0,00023076
	addi	a0,a0,+00000768
	addi	a2,zero,+0000025D
	addi	a1,a1,+000002DC
	jal	ra,0000000023013280
	c.li	a0,00000018
	c.j	000000002301C8FE

l2301C87C:
	lhu	a5,s8,+00000000
	sh	a5,a1,+0000015C
	lhu	a5,s8,+00000002
	sh	a5,a1,+0000015E
	lhu	a5,s8,+00000004
	c.j	000000002301C818

l2301C892:
	lui	a5,00023076
	c.srai	s0,00000002
	c.andi	s0,0000000F
	addi	a5,a5,-000002C0
	c.add	a5,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	lbu	s0,a5,+00000000
	jal	ra,000000002301D20A
	c.addi	a0,00000018

l2301C8AE:
	lw	a4,s10,+0000006C
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,24(a5)
	c.sw	a4,28(a0)
	beq	s2,zero,000000002301C8CA

l2301C8C2:
	sw	s2,s10,+000002CC
	sw	s1,s10,+000002D0

l2301C8CA:
	c.mv	a1,s0
	c.mv	a0,s10
	jal	ra,000000002300649E

l2301C8D2:
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

l2301C8F0:
	c.mv	a4,s6
	c.mv	a2,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,000000002301D262

l2301C8FC:
	c.addi	a0,00000018

l2301C8FE:
	c.li	s0,00000003
	c.j	000000002301C8AE

l2301C902:
	c.mv	a2,s6
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,000000002301D2AA
	c.j	000000002301C8FC

;; rxu_mgt_ind_handler: 2301C90E
rxu_mgt_ind_handler proc
	lbu	a4,a1,+0000001D
	c.bnez	a4,000000002301C9E2

l2301C914:
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
	lui	s4,00023078
	c.slli	s0,08
	c.or	s0,a3
	andi	a5,s0,+00000001
	lbu	s1,a1,+00000007
	lbu	s2,a1,+0000001E
	addi	a1,s4,+00000408
	c.beqz	a5,000000002301C94E

l2301C946:
	lui	a1,00023078
	addi	a1,a1,+0000040C

l2301C94E:
	lui	s5,00023078
	andi	a5,s0,+00000002
	addi	a2,s5,+00000418
	c.bnez	a5,000000002301C964

l2301C95C:
	lui	a2,00023078
	addi	a2,a2,+0000042C

l2301C964:
	srli	s3,s0,00000006
	srai	a3,s0,00000002
	lui	a0,00023078
	c.andi	a3,0000000F
	c.mv	a4,s3
	addi	a0,a0,+00000440
	jal	ra,0000000023052118
	c.li	a5,00000008
	c.mv	a3,s3
	bgeu	a5,s3,000000002301C986

l2301C984:
	c.li	a3,00000008

l2301C986:
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
	lui	a0,00023078
	srli	a4,s0,00000006
	addi	a2,s5,+00000418
	addi	a1,s4,+00000408
	c.andi	a3,0000000F
	addi	a0,a0,+000004B8
	jal	ra,0000000023052118
	c.mv	a0,s1
	c.mv	a4,s0
	c.mv	a3,s2
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	jal	ra,000000002301C722
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

l2301C9E2:
	c.li	a0,00000000
	c.jr	ra

;; co_pack8p: 2301C9E6
;;   Called from:
;;     2301CAC8 (in me_add_ie_ssid)
;;     2301CB18 (in me_add_ie_supp_rates)
;;     2301CB58 (in me_add_ie_ext_supp_rates)
;;     2301CDEA (in me_add_ie_ht_capa)
;;     2301CE0C (in me_add_ie_ht_capa)
;;     2301D112 (in me_build_associate_req)
;;     2301D80A (in me_build_beacon)
;;     2301DA5E (in me_build_probe_rsp)
;;     2301DC4E (in me_build_associate_rsp)
co_pack8p proc
	c.li	a5,00000000

l2301C9E8:
	bne	a2,a5,000000002301C9EE

l2301C9EC:
	c.jr	ra

l2301C9EE:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002301C9E8

;; phy_freq_to_channel: 2301CA02
;;   Called from:
;;     2301CE52 (in me_add_ie_ht_oper)
;;     2301D1A4 (in me_build_associate_req)
;;     2301D404 (in me_extract_country_reg)
;;     2301D9B4 (in me_build_probe_rsp)
phy_freq_to_channel proc
	c.bnez	a0,000000002301CA36

l2301CA04:
	c.lui	a0,FFFFF000
	addi	a4,a0,+00000694
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a5,00000000
	bltu	a3,a4,000000002301CA32

l2301CA1A:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a5,0000000E
	beq	a1,a4,000000002301CA32

l2301CA26:
	addi	a5,a0,+00000699

l2301CA2A:
	c.add	a1,a5
	c.li	a5,00000005
	xor	a5,a1,a5

l2301CA32:
	c.mv	a0,a5
	c.jr	ra

l2301CA36:
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a0,a4,000000002301CA32

l2301CA3E:
	c.lui	a0,FFFFF000
	addi	a4,a0,-0000038D
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000334
	bltu	a3,a4,000000002301CA32

l2301CA52:
	addi	a5,a0,-00000388
	c.j	000000002301CA2A

;; phy_channel_to_freq: 2301CA58
;;   Called from:
;;     2301D51E (in me_extract_csa)
;;     2301D550 (in me_extract_csa)
;;     2301D560 (in me_extract_csa)
phy_channel_to_freq proc
	addi	a5,a1,-00000001
	c.bnez	a0,000000002301CA7E

l2301CA5E:
	c.li	a4,0000000D
	bltu	a4,a5,000000002301CA9C

l2301CA64:
	c.li	a5,0000000E
	beq	a1,a5,000000002301CA94

l2301CA6A:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,-00000699

l2301CA76:
	c.add	a0,a1
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

l2301CA7E:
	addi	a4,zero,+000000A4
	bltu	a4,a5,000000002301CA9C

l2301CA86:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.j	000000002301CA76

l2301CA94:
	c.lui	a0,00001000
	addi	a0,a0,-0000064C
	c.jr	ra

l2301CA9C:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

;; me_add_ie_ssid: 2301CAA2
;;   Called from:
;;     2301CFA4 (in me_build_associate_req)
;;     2301D6CA (in me_build_beacon)
;;     2301D970 (in me_build_probe_rsp)
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
	c.beqz	a1,000000002301CACC

l2301CAC0:
	c.lw	a0,0(a0)
	c.mv	a1,a2
	c.mv	a2,a5
	c.addi	a0,00000002
	jal	ra,000000002301C9E6

l2301CACC:
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_supp_rates: 2301CADE
;;   Called from:
;;     2301CFAE (in me_build_associate_req)
;;     2301D6E0 (in me_build_beacon)
;;     2301D97A (in me_build_probe_rsp)
;;     2301DBB6 (in me_build_associate_rsp)
me_add_ie_supp_rates proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a1,+00000000
	c.li	a4,00000008
	c.mv	s0,a0
	c.li	a2,00000008
	bltu	a4,a5,000000002301CAF6

l2301CAF4:
	c.mv	a2,a5

l2301CAF6:
	c.lw	s0,0(a4)
	c.li	a3,00000001
	c.li	a0,00000008
	sb	a3,a4,+00000000
	addi	s1,a2,+00000002
	c.lw	s0,0(a3)
	c.mv	a4,a5
	bgeu	a0,a5,000000002301CB0E

l2301CB0C:
	c.li	a4,00000008

l2301CB0E:
	sb	a4,a3,+00000001
	c.lw	s0,0(a0)
	c.addi	a1,00000001
	c.addi	a0,00000002
	jal	ra,000000002301C9E6
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ext_supp_rates: 2301CB2E
;;   Called from:
;;     2301CFC8 (in me_build_associate_req)
;;     2301D704 (in me_build_beacon)
;;     2301D994 (in me_build_probe_rsp)
;;     2301DBD0 (in me_build_associate_rsp)
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
	jal	ra,000000002301C9E6
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ds: 2301CB6E
;;   Called from:
;;     2301D736 (in me_build_beacon)
;;     2301D9BE (in me_build_probe_rsp)
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

;; me_add_ie_erp: 2301CB8E
;;   Called from:
;;     2301D77A (in me_build_beacon)
;;     2301D9D4 (in me_build_probe_rsp)
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

;; me_add_ie_rsn: 2301CBB0
;;   Called from:
;;     2301D75C (in me_build_beacon)
;;     2301D9C8 (in me_build_probe_rsp)
me_add_ie_rsn proc
	c.li	a6,00000001
	c.mv	a5,a0
	c.lw	a0,0(a4)
	bne	a1,a6,000000002301CC3C

l2301CBBA:
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

l2301CC34:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

l2301CC3C:
	c.li	a3,00000002
	c.li	a0,00000000
	bne	a1,a3,000000002301CC34

l2301CC44:
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
	c.j	000000002301CC34

;; me_add_ie_wpa: 2301CCD0
;;   Called from:
;;     2301D7B4 (in me_build_beacon)
;;     2301DA08 (in me_build_probe_rsp)
me_add_ie_wpa proc
	c.li	a4,00000002
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a1,a4,000000002301CD70

l2301CCDA:
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

l2301CD70:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

;; me_add_ie_tim: 2301CD78
;;   Called from:
;;     2301D74A (in me_build_beacon)
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

;; me_add_ie_ht_capa: 2301CD98
;;   Called from:
;;     2301D140 (in me_build_associate_req)
;;     2301D798 (in me_build_beacon)
;;     2301D9EC (in me_build_probe_rsp)
;;     2301DBE4 (in me_build_associate_rsp)
me_add_ie_ht_capa proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	lui	s1,0004201B
	addi	s1,s1,-0000002C
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
	lui	a1,0004201B
	c.li	a2,00000010
	sb	a4,a5,+00000004
	c.lw	a0,0(a0)
	addi	a1,a1,-0000001D
	c.addi	a0,00000005
	jal	ra,000000002301C9E6
	lhu	a5,s1,+00000020
	c.lw	s0,0(a4)
	lui	a1,0004201B
	c.li	a2,00000004
	sb	a5,a4,+00000015
	c.srli	a5,00000008
	sb	a5,a4,+00000016
	c.lw	s0,0(a0)
	addi	a1,a1,-00000008
	c.addi	a0,00000017
	jal	ra,000000002301C9E6
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

;; me_add_ie_ht_oper: 2301CE2C
;;   Called from:
;;     2301D7A4 (in me_build_beacon)
;;     2301D9F8 (in me_build_probe_rsp)
;;     2301DBF6 (in me_build_associate_rsp)
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
	jal	ra,000000002301CA02
	c.lw	s0,0(a5)
	sb	a0,a5,+00000002
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002301CE72

l2301CE62:
	lhu	a3,s1,+00000006
	lhu	a4,s1,+00000008
	c.li	a5,00000007
	bltu	a4,a3,000000002301CE72

l2301CE70:
	c.li	a5,00000005

l2301CE72:
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

;; me_build_authenticate: 2301CEA8
;;   Called from:
;;     2300BFDE (in sm_auth_send)
;;     2300D85E (in apm_send_mlme)
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
	c.beqz	a4,000000002301CEFA

l2301CEC8:
	c.li	a5,00000010
	sb	a5,a0,+00000006
	addi	a5,zero,-00000080
	sb	a5,a0,+00000007
	addi	a3,zero,+00000080
	c.addi	a0,00000008
	c.li	a5,00000000

l2301CEDE:
	add	a2,a4,a5
	lbu	a1,a2,+00000000
	add	a2,a0,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,000000002301CEDE

l2301CEF4:
	addi	a0,zero,+00000088
	c.jr	ra

l2301CEFA:
	c.li	a0,00000006
	c.jr	ra

;; me_build_deauthenticate: 2301CEFE
;;   Called from:
;;     2300BCF2 (in sm_disconnect)
;;     2300C632 (in sm_handle_supplicant_result)
;;     2300D8C0 (in apm_send_mlme)
me_build_deauthenticate proc
	sb	a1,a0,+00000000
	c.srli	a1,00000008
	sb	a1,a0,+00000001
	c.li	a0,00000002
	c.jr	ra

;; me_build_associate_req: 2301CF0C
;;   Called from:
;;     2300C154 (in sm_assoc_req_send)
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
	c.bnez	s0,000000002301CF42

l2301CF40:
	c.li	s0,00000005

l2301CF42:
	c.mv	a0,a3
	c.swsp	a2,00000000
	jal	ra,00000000230079A8
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
	c.beqz	a2,000000002301CF8C

l2301CF6C:
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

l2301CF8C:
	c.lwsp	t3,000000E4
	addi	a2,s3,+00000027
	c.addi4spn	a0,0000001C
	c.add	a5,s0
	sw	a5,s6,+00000000
	lbu	a1,s3,+00000026
	c.swsp	a5,0000008C
	addi	s9,s3,+00000058
	jal	ra,000000002301CAA2
	c.mv	s4,a0
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002301CADE
	c.add	a0,s4
	lbu	a4,s3,+00000058
	c.add	s0,a0
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301CFD2

l2301CFC4:
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002301CB2E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301CFD2:
	andi	s2,s2,+00000100
	beq	s2,zero,000000002301D0AA

l2301CFDA:
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
	jal	ra,00000000230145E8
	lw	a5,s3,+0000004C
	lb	a4,sp,+00000030
	lb	a5,a5,+00000004
	bge	a5,a4,000000002301D016

l2301D012:
	sb	a5,sp,+00000030

l2301D016:
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
	lui	a5,0004201B
	addi	a5,a5,-0000002C
	bne	a4,zero,000000002301D176

l2301D062:
	lbu	a6,a5,+0000012C
	lui	s2,0004201B
	addi	s2,s2,+00000004
	c.li	t3,00000001

l2301D070:
	c.li	a7,00000000
	c.li	s4,00000000
	c.li	s10,00000000
	c.li	t1,00000000
	c.li	a5,00000000

l2301D07A:
	c.lwsp	t3,0000006C
	addi	s9,a7,+00000002
	andi	s9,s9,+000000FF
	addi	a2,s11,+00000001
	bne	s10,a6,000000002301D186

l2301D08C:
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

l2301D0AA:
	c.lwsp	t3,000000E4
	add	a4,s1,s5
	c.mv	a6,s1
	c.sub	a5,s1

l2301D0B4:
	bne	a4,a6,000000002301D1FA

l2301D0B8:
	c.lwsp	t3,000000E4
	c.add	s0,s5
	c.slli	s0,10
	c.add	s5,a5
	lw	a5,s3,+00000088
	c.swsp	s5,0000008C
	c.srli	s0,00000010
	c.andi	a5,00000001
	c.beqz	a5,000000002301D12C

l2301D0CC:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000032
	jal	ra,0000000023070EB8
	addi	a5,zero,+000007DD
	sh	a5,sp,+00000030
	addi	a5,zero,+00000050
	sb	a5,sp,+00000033
	addi	a5,zero,+000002F2
	sh	a5,sp,+00000034
	c.li	a5,00000001
	sb	a5,sp,+00000037
	lui	a5,00042019
	lw	a5,a5,-00000130
	c.beqz	a5,000000002301D10C

l2301D100:
	lb	a5,s3,+00000068
	bge	a5,zero,000000002301D10C

l2301D108:
	sb	s8,sp,+00000038

l2301D10C:
	c.mv	a0,s5
	c.li	a2,00000009
	c.addi4spn	a1,00000030
	jal	ra,000000002301C9E6
	lbu	a4,sp,+00000031
	c.lwsp	t3,000000E4
	addi	a0,a4,+00000002
	c.add	s0,a0
	c.addi	a5,00000002
	c.slli	s0,10
	c.add	a5,a4
	c.srli	s0,00000010
	c.swsp	a5,0000008C

l2301D12C:
	lw	a5,s3,+00000088
	c.andi	a5,00000002
	c.beqz	a5,000000002301D14A

l2301D134:
	lui	a5,0004201B
	lbu	a5,a5,+00000002
	c.beqz	a5,000000002301D14A

l2301D13E:
	c.addi4spn	a0,0000001C
	jal	ra,000000002301CD98
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D14A:
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

l2301D176:
	lui	s2,0004201B
	lbu	a6,a5,+0000012D
	addi	s2,s2,+00000058
	c.li	t3,00000004
	c.j	000000002301D070

l2301D186:
	lbu	a4,s2,+00000003
	c.swsp	a2,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002301D1F2

l2301D190:
	lhu	a1,s2,+00000000
	lbu	a0,s2,+00000002
	c.swsp	a6,00000088
	c.swsp	a7,00000008
	c.swsp	t3,00000084
	c.swsp	a5,00000080
	c.swsp	a3,00000000
	c.swsp	t1,00000004
	jal	ra,000000002301CA02
	andi	a4,a0,+000000FF
	c.lwsp	zero,000000A4
	c.lwsp	a2,0000008C
	c.lwsp	a6,00000028
	c.lwsp	s4,00000008
	c.mv	a5,a4
	beq	s4,zero,000000002301D1E8

l2301D1BA:
	c.lwsp	s0,000000C0
	andi	a0,a0,+000000FF
	c.lwsp	tp,000000E4
	sub	a0,a0,t1
	beq	a0,t3,000000002301D1E8

l2301D1CA:
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

l2301D1E8:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s2,00000006
	c.mv	t1,a4

l2301D1F2:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	000000002301D07A

l2301D1FA:
	lbu	a2,a6,+00000040
	add	a3,a5,a6
	c.addi	a6,00000001
	sb	a2,a3,+00000000
	c.j	000000002301D0B4

;; me_build_add_ba_req: 2301D20A
;;   Called from:
;;     2301C8A8 (in bam_send_air_action_frame)
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

;; me_build_add_ba_rsp: 2301D262
;;   Called from:
;;     2301C8F8 (in bam_send_air_action_frame)
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
	c.beqz	a4,000000002301D29A

l2301D28E:
	sb	zero,a0,+00000007
	sb	zero,a5,+00000001

l2301D296:
	c.li	a0,00000009
	c.jr	ra

l2301D29A:
	addi	a4,zero,-00000030
	sb	a4,a0,+00000007
	c.li	a4,00000007
	sb	a4,a5,+00000001
	c.j	000000002301D296

;; me_build_del_ba: 2301D2AA
;;   Called from:
;;     2301C908 (in bam_send_air_action_frame)
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
	bne	a1,a4,000000002301D2DA

l2301D2CE:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2301D2DA:
	sb	zero,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a3,+00000001
	sb	a2,a0,+00000004
	c.srli	a2,00000008
	sb	a2,a0,+00000005
	c.li	a0,00000006
	c.jr	ra

;; me_extract_rate_set: 2301D2F2
;;   Called from:
;;     2300AC1A (in scanu_frame_handler)
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
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002301D386

l2301D30E:
	lbu	a4,a0,+00000001
	c.li	a5,0000000C
	bltu	a5,a4,000000002301D386

l2301D318:
	addi	a5,s0,+00000001
	c.mv	a3,a4
	c.li	a1,FFFFFFFF

l2301D320:
	c.addi	a3,FFFFFFFF
	bne	a3,a1,000000002301D392

l2301D326:
	c.mv	a1,s2
	sb	a4,s0,+00000000
	addi	a2,zero,+00000032
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.mv	s2,a0
	c.beqz	a0,000000002301D386

l2301D33A:
	lbu	s1,a0,+00000001
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	c.add	a5,s1
	bge	a4,a5,000000002301D362

l2301D34A:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000396
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000054C
	jal	ra,000000002301327E

l2301D362:
	lbu	a5,s0,+00000000
	c.li	a4,0000000C
	add	a3,a5,s1
	blt	a4,a3,000000002301D386

l2301D370:
	addi	a4,a5,+00000001
	c.addi	s2,00000002
	c.li	a5,00000000

l2301D378:
	bne	s1,a5,000000002301D3A4

l2301D37C:
	lbu	a5,s0,+00000000
	c.add	s1,a5
	sb	s1,s0,+00000000

l2301D386:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301D392:
	c.addi	a5,00000001
	sub	a2,a5,s0
	c.add	a2,a0
	lbu	a2,a2,+00000000
	sb	a2,a5,+00000FFF
	c.j	000000002301D320

l2301D3A4:
	add	a3,s2,a5
	lbu	a2,a3,+00000000
	add	a3,a4,a5
	c.add	a3,s0
	sb	a2,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002301D378

;; me_extract_power_constraint: 2301D3BA
;;   Called from:
;;     23007DBE (in me_beacon_check)
;;     2300B0B2 (in scanu_frame_handler)
me_extract_power_constraint proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,000000002300EEE8
	c.li	a5,00000000
	c.beqz	a0,000000002301D3D2

l2301D3CE:
	lbu	a5,a0,+00000002

l2301D3D2:
	sb	a5,s0,+00000084
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_extract_country_reg: 2301D3DE
;;   Called from:
;;     2300B0BC (in scanu_frame_handler)
me_extract_country_reg proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.li	a2,00000007
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002301D43E

l2301D3F2:
	c.lw	s0,76(s0)
	c.mv	s1,a0
	c.li	s2,00000001
	lbu	a0,s0,+00000002
	c.beqz	a0,000000002301D400

l2301D3FE:
	c.li	s2,00000004

l2301D400:
	lhu	a1,s0,+00000000
	jal	ra,000000002301CA02
	lbu	a2,s1,+00000001
	andi	a0,a0,+000000FF
	c.li	a5,00000005
	c.addi	a2,00000001

l2301D414:
	blt	a2,a5,000000002301D43E

l2301D418:
	add	a1,a5,s1
	lbu	a3,a1,+00000000
	lbu	a6,a1,+00000001
	c.li	a4,00000000

l2301D426:
	bne	a4,a6,000000002301D432

l2301D42A:
	c.addi	a5,00000003
	andi	a5,a5,+000000FF
	c.j	000000002301D414

l2301D432:
	bne	a3,a0,000000002301D44A

l2301D436:
	lbu	a5,a1,+00000002
	sb	a5,s0,+00000004

l2301D43E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301D44A:
	c.add	a3,s2
	c.addi	a4,00000001
	andi	a3,a3,+000000FF
	andi	a4,a4,+000000FF
	c.j	000000002301D426

;; me_extract_mobility_domain: 2301D458
;;   Called from:
;;     2300B0C6 (in scanu_frame_handler)
me_extract_mobility_domain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	addi	a2,zero,+00000036
	c.swsp	ra,00000084
	jal	ra,000000002300EEE8
	c.bnez	a0,000000002301D47A

l2301D46A:
	sh	zero,s0,+0000008C
	sb	zero,s0,+0000008E

l2301D472:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301D47A:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008C
	lbu	a5,a0,+00000004
	sb	a5,s0,+0000008E
	c.j	000000002301D472

;; me_extract_csa: 2301D494
;;   Called from:
;;     23007D72 (in me_beacon_check)
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
	jal	ra,000000002300EEE8
	c.mv	s2,a0
	addi	a2,zero,+0000003C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300EEE8
	or	a5,s2,a0
	beq	a5,zero,000000002301D5CE

l2301D4CC:
	addi	a2,zero,+0000003E
	c.mv	a1,s1
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,000000002300EEE8
	c.mv	s6,a0
	addi	a2,zero,+000000C4
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002300EEE8
	c.mv	s0,a0
	c.beqz	a0,000000002301D4FC

l2301D4EC:
	lbu	a1,a0,+00000001
	addi	a2,zero,+000000C2
	c.addi	a0,00000002
	jal	ra,000000002300EEE8
	c.mv	s0,a0

l2301D4FC:
	beq	s2,zero,000000002301D58E

l2301D500:
	lbu	a5,s2,+00000002
	lbu	s1,s2,+00000004
	sb	a5,s5,+00000000
	lbu	a1,s2,+00000003

l2301D510:
	c.bnez	s1,000000002301D514

l2301D512:
	c.li	s1,00000002

l2301D514:
	sltiu	s3,a1,+0000000F
	xori	s3,s3,+00000001
	c.mv	a0,s3
	jal	ra,000000002301CA58
	c.mv	s5,a0
	c.beqz	s0,000000002301D5A0

l2301D526:
	lbu	a5,s0,+00000002
	c.li	a4,00000002
	lbu	a1,s0,+00000003
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	lbu	s6,s0,+00000004
	c.li	s2,00000001
	bltu	a4,a5,000000002301D54E

l2301D540:
	lui	a4,0002308E
	addi	a4,a4,-0000020C
	c.add	a5,a4
	lbu	s2,a5,+00000000

l2301D54E:
	c.mv	a0,s3
	jal	ra,000000002301CA58
	c.mv	s0,a0
	c.li	a0,00000000
	beq	s6,zero,000000002301D564

l2301D55C:
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,000000002301CA58

l2301D564:
	sh	a0,s4,+00000006
	sb	s3,s4,+00000000
	sb	s2,s4,+00000001
	sh	s5,s4,+00000002
	sh	s0,s4,+00000004
	c.mv	a0,s1

l2301D57A:
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

l2301D58E:
	lbu	a5,s3,+00000002
	lbu	s1,s3,+00000005
	sb	a5,s5,+00000000
	lbu	a1,s3,+00000004
	c.j	000000002301D510

l2301D5A0:
	beq	s6,zero,000000002301D5C6

l2301D5A4:
	lbu	a5,s6,+00000002
	c.li	a4,00000001
	addi	s0,a0,+0000000A
	beq	a5,a4,000000002301D5BC

l2301D5B2:
	c.li	a4,00000003
	bne	a5,a4,000000002301D5C6

l2301D5B8:
	addi	s0,a0,-0000000A

l2301D5BC:
	c.slli	s0,10
	c.srli	s0,00000010
	c.li	a0,00000000
	c.li	s2,00000001
	c.j	000000002301D564

l2301D5C6:
	c.mv	s0,s5
	c.li	a0,00000000
	c.li	s2,00000000
	c.j	000000002301D564

l2301D5CE:
	c.li	a0,00000000
	c.j	000000002301D57A

;; me_build_beacon: 2301D5D2
;;   Called from:
;;     2301F562 (in apm_start_req_handler)
me_build_beacon proc
	c.addi16sp	FFFFFFB0
	c.swsp	s4,0000001C
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000020
	lui	s2,0004201A
	c.swsp	s7,00000094
	addi	s7,s2,+00000410
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
	lui	a1,0002308E
	lbu	s3,s7,+00000418
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	sb	zero,a0,+00000003
	addi	a1,a1,-00000274
	c.mv	s6,a2
	c.addi	a0,00000004
	c.li	a2,00000006
	c.swsp	a4,00000004
	c.mv	s5,a3
	addi	s8,s7,+00000050
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+0000000A
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C
	lui	a3,0004201A
	addi	a3,a3,+000003A8
	lhu	a5,a3,+00000054
	c.mv	a0,s1
	addi	s2,s2,+00000410
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
	jal	ra,00000000230079A8
	c.lwsp	s0,000000C4
	beq	s3,zero,000000002301D698

l2301D690:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301D698:
	c.lwsp	a2,000000E4
	addi	a2,s4,+0000037F
	c.add	a2,s2
	sb	a0,a5,+00000022
	c.srli	a0,00000008
	sb	a0,a5,+00000023
	c.lwsp	a2,000000E4
	addi	a5,a5,+00000024
	c.swsp	a5,00000084
	beq	a4,zero,000000002301D8E2

l2301D6B6:
	lui	a0,00023078
	c.mv	a1,a2
	addi	a0,a0,+00000530
	jal	ra,0000000023052118
	c.li	a2,00000000
	c.li	a1,00000000

l2301D6C8:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CAA2
	addi	s7,s4,+000003B0
	addi	a0,a0,+00000024
	c.add	s7,s2
	slli	s0,a0,00000010
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CADE
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	a5,s2
	lbu	a4,a5,+000003B0
	c.li	a5,00000008
	bgeu	a5,a4,000000002301D70E

l2301D700:
	c.mv	a1,s7
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB2E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D70E:
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
	jal	ra,000000002301CB6E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	sh	s0,s6,+00000000
	lbu	a1,s7,+000003AC
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CD78
	andi	a0,a0,+000000FF
	sb	a0,s5,+00000000
	c.add	s0,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CBB0
	c.lwsp	a2,00000064
	andi	a2,a0,+000000FF
	c.mv	s5,a0
	lui	a0,0004201D
	c.sub	a1,a2
	addi	a0,a0,+000000F8
	jal	ra,0000000023070C7C
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB8E
	c.slli	s0,10
	c.srli	s0,00000010
	lw	a5,s7,+000003E0
	c.add	s0,a0
	andi	s5,s5,+000000FF
	c.add	s0,s5
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,000000002301D7B0

l2301D796:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CD98
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CE2C
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D7B0:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CCD0
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,000000002301D8C8

l2301D7D2:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,0000000023070EB8
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
	jal	ra,000000002301C9E6
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

l2301D8C8:
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

l2301D8E2:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s2
	lbu	a1,a5,+0000037E
	c.j	000000002301D6C8

;; me_build_probe_rsp: 2301D8F2
;;   Called from:
;;     2300D8D6 (in apm_send_mlme)
me_build_probe_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	addi	s4,zero,+000005D8
	add	s4,a1,s4
	c.swsp	s2,00000018
	lui	s2,0004201A
	addi	a5,s2,+00000410
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
	jal	ra,00000000230079A8
	addi	s2,s2,+00000410
	beq	s3,zero,000000002301D942

l2301D93A:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301D942:
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
	jal	ra,000000002301CAA2
	c.mv	s0,a0
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CADE
	c.add	s0,a0
	lbu	a4,s5,+000003B0
	c.addi	s0,0000000C
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301D99E

l2301D990:
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB2E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301D99E:
	addi	s5,zero,+000005D8
	add	s5,s1,s5
	c.add	s5,s2
	lw	a5,s5,+000003A4
	lhu	a1,a5,+00000000
	lbu	a0,a5,+00000002
	jal	ra,000000002301CA02
	andi	a1,a0,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB6E
	c.mv	s6,a0
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CBB0
	c.add	a0,s6
	c.add	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB8E
	c.slli	s0,10
	lw	a5,s5,+000003E0
	c.srli	s0,00000010
	c.add	s0,a0
	c.slli	s0,10
	c.andi	a5,00000002
	c.srli	s0,00000010
	c.beqz	a5,000000002301DA04

l2301D9EA:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CD98
	c.mv	s5,a0
	add	a1,s2,s4
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CE2C
	c.add	a0,s5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301DA04:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CCD0
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.add	s2,s1
	lw	a5,s2,+000003E0
	c.andi	a5,00000001
	beq	a5,zero,000000002301DB1C

l2301DA26:
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,0000000023070EB8
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
	jal	ra,000000002301C9E6
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

l2301DB1C:
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

;; me_build_associate_rsp: 2301DB32
;;   Called from:
;;     2300D8F4 (in apm_send_mlme)
me_build_associate_rsp proc
	addi	a4,zero,+000005D8
	add	a4,a1,a4
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	lui	s3,0004201A
	addi	a5,s3,+00000410
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
	jal	ra,00000000230079A8
	addi	s3,s3,+00000410
	c.lwsp	s0,00000084
	c.beqz	s0,000000002301DB74

l2301DB6C:
	ori	a0,a0,+00000010
	c.slli	a0,10
	c.srli	a0,00000010

l2301DB74:
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
	bne	a2,zero,000000002301DD04

l2301DBAE:
	addi	s1,s4,+00000006
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CADE
	lbu	a4,s4,+00000006
	c.addi	a0,00000006
	slli	s0,a0,00000010
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002301DBDA

l2301DBCC:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CB2E
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301DBDA:
	lw	a5,s4,+00000040
	c.andi	a5,00000002
	c.beqz	a5,000000002301DC02

l2301DBE2:
	c.addi4spn	a0,0000000C
	jal	ra,000000002301CD98
	addi	a1,zero,+000005D8
	add	a1,s2,a1
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	c.add	a1,s3
	jal	ra,000000002301CE2C
	c.add	a0,s1
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2301DC02:
	lw	a5,s4,+00000040
	c.andi	a5,00000001
	beq	a5,zero,000000002301DD04

l2301DC0C:
	addi	s1,zero,+000005D8
	add	s1,s2,s1
	c.li	a2,0000000E
	c.li	a1,00000000
	addi	a0,sp,+00000012
	jal	ra,0000000023070EB8
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
	jal	ra,000000002301C9E6
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

l2301DD04:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; me_rc_set_rate_req_handler: 2301DD16
me_rc_set_rate_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lbu	s2,a1,+00000000
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a3,s2,a3
	addi	a4,a5,-000000E0
	c.mv	s3,a1
	addi	s1,a5,-000000E0
	c.add	a4,a3
	lw	s0,a4,+00000110
	c.bnez	s0,000000002301DD5C

l2301DD44:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000031D
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000064
	jal	ra,000000002301327E

l2301DD5C:
	lhu	s3,s3,+00000002
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	s3,a5,000000002301DD96

l2301DD68:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300897C
	c.beqz	a0,000000002301DD86

l2301DD72:
	lbu	a5,s0,+000000AF
	sh	s3,s0,+000000C6
	andi	a5,a5,-00000061
	ori	a5,a5,+00000020
	sb	a5,s0,+000000AF

l2301DD86:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301DD96:
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
	jal	ra,00000000230087D8
	c.j	000000002301DD86

;; me_rc_stats_req_handler: 2301DDC4
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
	jal	ra,000000002300E768
	lbu	a3,s1,+00000000
	addi	a4,zero,+000001B0
	lui	a5,00042019
	add	a4,a3,a4
	addi	a5,a5,-000000E0
	c.mv	s0,a0
	c.add	a5,a4
	lw	s1,a5,+00000110
	sb	a3,a0,+00000000
	c.beqz	s1,000000002301DE8C

l2301DE02:
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
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000078
	addi	a1,s1,+00000004
	addi	a0,s0,+00000030
	jal	ra,0000000023070C7C

l2301DE52:
	lhu	a5,s1,+000000C0
	bltu	s2,a5,000000002301DE6E

l2301DE5A:
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301DE6E:
	andi	a1,s2,+000000FF
	c.mv	a0,s1
	jal	ra,0000000023008A16
	addi	a5,s2,+00000028
	c.slli	a5,02
	c.addi	s2,00000001
	c.add	a5,s0
	c.slli	s2,10
	c.sw	a5,8(a0)
	srli	s2,s2,00000010
	c.j	000000002301DE52

l2301DE8C:
	sh	zero,a0,+00000002
	c.j	000000002301DE5A

;; me_traffic_ind_req_handler: 2301DE92
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
	lui	s0,00042019
	add	a5,s1,a5
	c.mv	s4,a2
	lbu	a2,a1,+00000002
	addi	a4,s0,-000000E0
	c.mv	s3,a3
	c.mv	s2,a1
	lbu	a3,a1,+00000001
	addi	s0,s0,-000000E0
	c.add	a4,a5
	lbu	a5,a4,+00000032
	c.beqz	a2,000000002301DF44

l2301DECE:
	andi	a4,a5,+000000FB
	c.beqz	a3,000000002301DED8

l2301DED4:
	ori	a4,a5,+00000004

l2301DED8:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.add	a5,s0
	sb	a4,a5,+00000032
	lbu	a4,a5,+000000F2
	c.li	a5,0000000F
	bne	a4,a5,000000002301DF24

l2301DEF0:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,000000002300E768
	addi	a4,zero,+000001B0
	add	s1,s1,a4
	c.add	s0,s1
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	lbu	a4,s2,+00000001
	sb	a4,a0,+00000002
	jal	ra,000000002300E7D4

l2301DF24:
	c.lui	a0,00001000
	c.mv	a2,s4
	c.mv	a1,s3
	addi	a0,a0,+0000040D
	jal	ra,000000002300E83E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301DF44:
	c.beqz	a3,000000002301DF50

l2301DF46:
	ori	a5,a5,+00000001

l2301DF4A:
	sb	a5,a4,+00000032
	c.j	000000002301DEF0

l2301DF50:
	c.andi	a5,FFFFFFFE
	c.j	000000002301DF4A

;; me_sta_del_req_handler: 2301DF54
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
	jal	ra,000000002300E768
	lbu	a5,s0,+00000000
	sb	a5,a0,+00000000
	jal	ra,000000002300E7D4
	lbu	a5,s0,+00000001
	c.beqz	a5,000000002301DFB8

l2301DF82:
	c.lui	a0,00001000
	c.li	a2,00000006
	c.li	a3,00000002
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,000000002300E768
	sb	zero,a0,+00000000
	lbu	a4,s0,+00000000
	addi	a2,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a2
	addi	a5,a5,-000000E0
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,a0,+00000001
	jal	ra,000000002300E7D4

l2301DFB8:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+0000040A
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_set_control_port_req_handler: 2301DFD4
me_set_control_port_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	addi	a4,zero,+000001B0
	lui	s0,00042019
	add	a5,a5,a4
	addi	s0,s0,-000000E0
	c.mv	s1,a3
	c.mv	s2,a2
	addi	a2,zero,+000005D8
	lui	a4,0004201A
	addi	a4,a4,+00000410
	c.add	s0,a5
	lbu	a3,s0,+0000001A
	lbu	a5,a1,+00000001
	add	a3,a3,a2
	sltu	a5,zero,a5
	c.addi	a5,00000001
	sb	a5,s0,+00000031
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.bnez	a4,000000002301E048

l2301E022:
	c.li	a4,00000002
	bne	a5,a4,000000002301E048

l2301E028:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,000000002300E768
	sb	zero,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000001
	jal	ra,000000002300E7D4

l2301E048:
	c.lui	a0,00001000
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+00000405
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_chan_config_req_handler: 2301E064
me_chan_config_req_handler proc
	c.addi	sp,FFFFFFE0
	lui	a0,0004201B
	c.swsp	s0,0000000C
	addi	a0,a0,+00000004
	c.mv	s0,a2
	addi	a2,zero,+000000FE
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000A4
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000403
	c.mv	a1,a3
	jal	ra,000000002300E83E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_set_ps_mode_cfm_handler: 2301E098
mm_set_ps_mode_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301E0C4

l2301E0AC:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000002BB
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000600
	jal	ra,000000002301327E

l2301E0C4:
	lui	a5,0004201B
	lhu	a1,a5,-00000024
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002301E0E0

l2301E0D4:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000414
	jal	ra,000000002300E83E

l2301E0E0:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002300E902
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_cfm_handler: 2301E0F2
mm_set_idle_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301E11E

l2301E106:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000252
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000600
	jal	ra,000000002301327E

l2301E11E:
	lui	a5,0004201B
	lhu	a1,a5,-00000024
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002301E13A

l2301E12E:
	c.lui	a0,00001000
	c.mv	a2,s0
	addi	a0,a0,+00000412
	jal	ra,000000002300E83E

l2301E13A:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002300E902
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; me_config_req_handler: 2301E14C
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
	jal	ra,000000002300E768
	lbu	a5,s1,+0000002E
	lui	s0,0004201B
	addi	s2,s0,-0000002C
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	s3,a0
	addi	a0,s2,+0000000C
	sb	a5,s2,+0000002E
	jal	ra,0000000023070C7C
	c.lui	a0,00001000
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,+00000401
	jal	ra,000000002300E83E
	lbu	a5,s2,+0000002E
	addi	s0,s0,-0000002C
	c.beqz	a5,000000002301E202

l2301E1A8:
	jal	ra,000000002301458C
	lhu	a5,s0,+0000000C
	c.addi	a0,00000001
	c.srai	a0,00000001
	c.srli	a5,00000001
	c.andi	a5,00000001
	sb	a0,s0,+0000012E
	sb	a5,s0,+0000012F

l2301E1C0:
	lhu	a5,s1,+0000002C
	sh	a5,s0,+0000002C
	lbu	a5,s1,+00000030
	sb	a5,s0,+00000130
	c.beqz	a5,000000002301E1EE

l2301E1D2:
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000008
	c.li	a5,00000002
	c.mv	a0,s3
	sb	a5,s3,+00000000
	jal	ra,000000002300E7D4
	c.li	a1,00000001
	c.li	a0,00000005
	jal	ra,000000002300E902

l2301E1EE:
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

l2301E202:
	sh	zero,s0,+0000012E
	c.j	000000002301E1C0

;; me_set_ps_disable_req_handler: 2301E208
me_set_ps_disable_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	c.swsp	s4,00000004
	addi	s4,s0,-0000002C
	lbu	a5,s4,+00000130
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s1,a2
	c.mv	s2,a3
	c.bnez	a5,000000002301E24A

l2301E228:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000414
	jal	ra,000000002300E83E

l2301E236:
	c.li	a4,00000000

l2301E238:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l2301E24A:
	c.li	a0,00000005
	c.mv	s3,a1
	jal	ra,000000002300EA02
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,000000002301E238

l2301E25A:
	lw	a4,s4,+00000004
	addi	s0,s0,-0000002C
	lbu	a3,s3,+00000000
	c.beqz	a4,000000002301E2AA

l2301E268:
	c.bnez	a3,000000002301E2BE

l2301E26A:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000031
	jal	ra,000000002300E768
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,000000002301E2AE

l2301E282:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	c.or	a5,a4

l2301E28C:
	c.sw	s0,4(a5)
	sltiu	a5,a5,+00000001
	sh	s2,s0,+00000008
	c.slli	a5,01
	sb	a5,a0,+00000000
	jal	ra,000000002300E7D4
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002300E902
	c.j	000000002301E236

l2301E2AA:
	c.beqz	a3,000000002301E228

l2301E2AC:
	c.j	000000002301E26A

l2301E2AE:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,4(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	000000002301E28C

l2301E2BE:
	lbu	a3,s3,+00000001
	sll	a5,a5,a3
	c.or	a5,a4
	sw	a5,s4,+00000004
	c.j	000000002301E228

;; me_set_active_req_handler: 2301E2CE
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
	jal	ra,000000002300EA02
	c.li	a5,00000001
	c.li	a4,00000002
	beq	a0,a5,000000002301E354

l2301E2EE:
	lui	s0,0004201B
	addi	a4,s0,-0000002C
	c.lw	a4,0(a3)
	lbu	a2,s3,+00000000
	addi	s0,s0,-0000002C
	c.beqz	a3,000000002301E342

l2301E302:
	c.bnez	a2,000000002301E374

l2301E304:
	c.li	a3,00000001
	c.mv	a2,s1
	c.li	a1,00000000
	addi	a0,zero,+00000022
	jal	ra,000000002300E768
	lbu	a5,s3,+00000000
	lbu	a4,s3,+00000001
	c.beqz	a5,000000002301E364

l2301E31C:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	c.or	a5,a4

l2301E326:
	c.sw	s0,0(a5)
	sh	s2,s0,+00000008
	sltiu	a5,a5,+00000001
	sb	a5,a0,+00000000
	jal	ra,000000002300E7D4
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002300E902
	c.j	000000002301E352

l2301E342:
	c.bnez	a2,000000002301E304

l2301E344:
	c.lui	a0,00001000
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+00000412
	jal	ra,000000002300E83E

l2301E352:
	c.li	a4,00000000

l2301E354:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a4
	c.addi16sp	00000020
	c.jr	ra

l2301E364:
	c.li	a5,00000001
	sll	a5,a5,a4
	c.lw	s0,0(a4)
	xori	a5,a5,-00000001
	c.and	a5,a4
	c.j	000000002301E326

l2301E374:
	lbu	a2,s3,+00000001
	sll	a5,a5,a2
	c.or	a5,a3
	c.sw	a4,0(a5)
	c.j	000000002301E344

;; me_sta_add_req_handler: 2301E382
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
	jal	ra,000000002300E768
	c.mv	s5,a0
	jal	ra,000000002300A6BC
	c.lw	s0,64(a5)
	c.mv	s6,a0
	lbu	s4,s0,+00000049
	c.andi	a5,00000002
	beq	a5,zero,000000002301E58C

l2301E3BE:
	lbu	a5,s0,+00000016
	c.li	a4,00000002
	c.li	s2,00000001
	andi	s1,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a4,a5,000000002301E3DC

l2301E3D2:
	c.addi	a5,FFFFFFFD
	sll	a5,s2,a5
	andi	s2,a5,+000000FF

l2301E3DC:
	addi	a5,s1,+0000000D
	c.li	s1,00000001
	sll	s1,s1,a5
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010

l2301E3EC:
	c.li	a2,00000006
	c.mv	a1,s0
	addi	a0,sp,+0000001A
	c.swsp	zero,00000088
	jal	ra,0000000023070C7C
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
	jal	ra,000000002300254C
	sb	a0,s5,+00000001
	bne	a0,zero,000000002301E56A

l2301E434:
	lbu	s1,s5,+00000000
	addi	s2,zero,+000001B0
	lui	s3,00042019
	add	s2,s1,s2
	addi	a5,s3,-000000E0
	c.li	a2,0000000D
	addi	a1,s0,+00000006
	lui	s7,0004201A
	addi	s3,s3,-000000E0
	addi	s7,s7,+00000410
	c.add	s2,a5
	addi	a0,s2,+000000B0
	jal	ra,0000000023070C7C
	c.lw	s0,64(a5)
	c.andi	a5,00000001
	bne	a5,zero,000000002301E592

l2301E46C:
	c.li	s9,00000000

l2301E46E:
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
	jal	ra,0000000023007C34
	c.lw	s0,64(a5)
	c.andi	a5,00000010
	c.beqz	a5,000000002301E4B8

l2301E49C:
	lbu	a1,s0,+00000048
	slli	a5,a1,00000018
	c.srai	a5,00000018
	blt	a5,zero,000000002301E4B8

l2301E4AA:
	lbu	a0,s8,+0000001B
	srli	a2,a1,00000004
	c.andi	a1,00000003
	jal	ra,0000000023007EAE

l2301E4B8:
	beq	s9,zero,000000002301E4D4

l2301E4BC:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	c.li	a2,00000000
	addi	a1,zero,+000000FF
	c.add	a5,s3
	lbu	a0,a5,+0000001B
	jal	ra,0000000023007EAE

l2301E4D4:
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
	beq	s6,zero,000000002301E56A

l2301E51C:
	sb	s6,a5,+0000001C
	lbu	a5,a4,+0000034A
	c.bnez	a5,000000002301E556

l2301E526:
	lbu	s0,a4,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s0,0000000A
	andi	s0,s0,+000000FF
	add	s2,s0,s2
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,000000002300E768
	c.li	a4,00000001
	c.add	s3,s2
	sb	a4,s3,+0000001C
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	jal	ra,000000002300E7D4

l2301E556:
	addi	a5,zero,+000005D8
	add	s4,s4,a5
	c.add	s7,s4
	lbu	a5,s7,+0000034A
	c.addi	a5,00000001
	sb	a5,s7,+0000034A

l2301E56A:
	c.mv	a0,s5
	jal	ra,000000002300E7D4
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

l2301E58C:
	c.li	s2,00000000
	c.li	s1,00000000
	c.j	000000002301E3EC

l2301E592:
	lw	a5,s2,+000000EC
	ori	a4,a5,+00000001
	sw	a4,s2,+000000EC
	c.lw	s0,64(a4)
	c.andi	a4,00000002
	beq	a4,zero,000000002301E46C

l2301E5A6:
	lui	a4,0004201B
	lbu	a4,a4,+00000002
	beq	a4,zero,000000002301E46C

l2301E5B2:
	ori	a5,a5,+00000003
	sw	a5,s2,+000000EC
	addi	a2,zero,+00000020
	addi	a1,s0,+00000014
	addi	a0,s2,+000000C0
	jal	ra,0000000023070C7C
	addi	a1,zero,+000005D8
	add	a1,s4,a1
	c.mv	a0,s2
	addi	a1,a1,+00000358
	c.add	a1,s7
	jal	ra,00000000230077B0
	c.mv	s9,a0
	c.j	000000002301E46E

;; cfm_raw_send: 2301E5E2
cfm_raw_send proc
	lui	a0,00023078
	addi	a0,a0,+00000624
	jal	zero,0000000023052118

;; scanu_raw_send_req_handler: 2301E5EE
scanu_raw_send_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s0,a1
	c.lw	a1,4(a2)
	c.lw	a1,0(a1)
	lui	a0,00023078
	addi	a0,a0,+00000698
	c.swsp	a3,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,000000A4
	c.li	a0,00000000
	c.mv	a1,a3
	jal	ra,000000002300A86C
	addi	a1,zero,+00000100
	c.li	a0,00000000
	lw	s2,s0,+00000000
	c.lw	s0,4(s1)
	jal	ra,0000000023006372
	c.beqz	a0,000000002301E672

l2301E628:
	c.mv	s0,a0
	c.lw	a0,104(a0)
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,a0,+0000014C
	jal	ra,0000000023070C7C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000030
	lui	a5,0002301E
	addi	a5,a5,+000005E2
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
	jal	ra,0000000023006506

l2301E672:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; scanu_join_req_handler: 2301E680
scanu_join_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+0000014E
	addi	a2,zero,+000005D8
	lui	a5,0004201A
	add	a4,a4,a2
	addi	a5,a5,+00000410
	c.add	a5,a4
	sw	zero,a5,+000003E0
	lui	a5,0004201C
	addi	a5,a5,-000005BC
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
	c.beqz	a5,000000002301E6E2

l2301E6CA:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000000B6
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000678
	jal	ra,000000002301327E

l2301E6E2:
	jal	ra,000000002300B4F0
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; scanu_start_req_handler: 2301E6EE
scanu_start_req_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201C
	c.swsp	ra,00000084
	addi	a5,a5,-000005BC
	sh	a3,a5,+00000168
	sh	zero,a5,+0000016A
	lw	a4,a1,+00000140
	c.sw	a5,0(a1)
	sw	a4,a5,+0000016C
	lhu	a4,a1,+00000144
	sh	a4,a5,+00000170
	jal	ra,000000002300B4F0
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; rxu_mgt_ind_handler: 2301E720
rxu_mgt_ind_handler proc
	c.mv	a0,a1
	jal	zero,000000002300A94C

;; scan_done_ind_handler: 2301E726
scan_done_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201C
	c.swsp	ra,00000084
	addi	a5,a5,-000005BC
	lbu	a4,a5,+0000016B
	c.addi	a4,00000001
	sb	a4,a5,+0000016B
	jal	ra,000000002300B22C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; scan_start_cfm_handler: 2301E748
scan_start_cfm_handler proc
	lbu	a0,a1,+00000000
	c.beqz	a0,000000002301E75E

l2301E74E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300A7E4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301E75E:
	c.li	a0,00000000
	c.jr	ra

;; me_set_ps_disable_cfm_handler: 2301E762
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000004
	beq	a0,a5,000000002301E79E

l2301E772:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301E79E

l2301E77A:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000008
	beq	a0,a5,000000002301E79E

l2301E786:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000001DB
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000748
	jal	ra,000000002301327E

l2301E79E:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000004
	bne	a0,a5,000000002301E7AE

l2301E7AA:
	jal	ra,000000002300B9BA

l2301E7AE:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 2301E7B6
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000004
	beq	a0,a5,000000002301E7DE

l2301E7C6:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+000001FA
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007D0
	jal	ra,000000002301327E

l2301E7DE:
	jal	ra,000000002300B9BA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; sm_rsp_timeout_ind_handler: 2301E7EA
sm_rsp_timeout_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000005
	bne	a0,a5,000000002301E808

l2301E7FA:
	c.li	a0,0000000B
	jal	ra,000000002300BD44

l2301E800:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301E808:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000006
	beq	a0,a5,000000002301E7FA

l2301E814:
	c.j	000000002301E800

;; scanu_start_cfm_handler: 2301E816
scanu_start_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301E842

l2301E82A:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+0000010A
	addi	a1,a1,+000002DC
	addi	a0,a0,-000007B4
	jal	ra,000000002301327E

l2301E842:
	c.addi4spn	a0,00000008
	c.addi4spn	a1,0000000C
	jal	ra,000000002300B68C
	c.lwsp	s0,00000044
	c.beqz	a0,000000002301E860

l2301E84E:
	c.lwsp	a2,00000064
	c.beqz	a1,000000002301E860

l2301E852:
	c.li	a2,00000000
	jal	ra,000000002300B8B6

l2301E858:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301E860:
	c.li	a0,0000000C
	jal	ra,000000002300BD44
	c.j	000000002301E858

;; mm_connection_loss_ind_handler: 2301E868
mm_connection_loss_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	a0,00000006
	lbu	s2,a1,+00000000
	jal	ra,000000002300EA02
	c.li	s1,00000002
	c.bnez	a0,000000002301E8B0

l2301E880:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	s0,0004201A
	addi	s0,s0,+00000410
	c.li	s1,00000000
	c.add	s0,s2
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002301E8B0

l2301E89A:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002301E8B0

l2301E8A0:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002300E902
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,000000002300BBB4

l2301E8B0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; scanu_join_cfm_handler: 2301E8BE
scanu_join_cfm_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.li	a0,00000006
	lui	s0,0004201C
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	lw	s3,s0,-00000428
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	jal	ra,000000002300EA02
	c.li	a5,00000002
	addi	s0,s0,-00000428
	beq	a0,a5,000000002301E8FC

l2301E8E4:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000134
	addi	a1,a1,+000002DC
	addi	a0,a0,-000007D8
	jal	ra,000000002301327E

l2301E8FC:
	lbu	s4,s3,+0000003D
	addi	a5,zero,+000005D8
	lui	s2,0004201A
	add	a5,s4,a5
	addi	a0,s2,+00000410
	addi	s2,s2,+00000410
	add	s1,a0,a5
	lw	a4,s1,+000003E0
	bge	a4,zero,000000002301E9EA

l2301E920:
	addi	a0,sp,+0000000F
	jal	ra,000000002300B958
	c.bnez	a0,000000002301E9E2

l2301E92A:
	addi	a3,zero,+00000020
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000A
	jal	ra,000000002300E768
	c.mv	s0,a0
	lbu	a1,sp,+0000000F
	lbu	a0,s3,+0000003D
	jal	ra,000000002301A440
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	addi	a1,s1,+00000378
	sb	a5,s0,+00000011
	addi	a0,s0,+0000000A
	jal	ra,0000000023070C7C
	sb	zero,s0,+00000012
	lw	a5,s1,+000003E0
	c.andi	a5,00000002
	c.beqz	a5,000000002301E99A

l2301E968:
	lbu	a5,s1,+0000035A
	c.li	a2,00000002
	c.li	a4,00000001
	andi	a3,a5,+00000003
	c.srai	a5,00000002
	c.andi	a5,00000007
	bge	a2,a5,000000002301E986

l2301E97C:
	c.addi	a5,FFFFFFFD
	sll	a5,a4,a5
	andi	a4,a5,+000000FF

l2301E986:
	sb	a4,s0,+00000010
	c.li	a5,00000001
	addi	a4,a3,+0000000D
	sll	a5,a5,a4
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000008

l2301E99A:
	c.mv	a0,s0
	sw	zero,s0,+00000004
	jal	ra,000000002300E7D4
	c.li	a1,00000003
	c.li	a0,00000006
	jal	ra,000000002300E902

l2301E9AC:
	addi	a5,zero,+000005D8
	add	a5,s4,a5
	lw	a4,s3,+00000030
	c.add	a5,s2
	sw	a4,a5,+000005C4
	lw	a4,s3,+00000030
	c.andi	a4,00000004
	c.beqz	a4,000000002301E9D0

l2301E9C6:
	lw	a4,a5,+000003E0
	c.andi	a4,FFFFFFF9
	sw	a4,a5,+000003E0

l2301E9D0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301E9E2:
	c.li	a0,0000000D
	jal	ra,000000002300BD44
	c.j	000000002301E9AC

l2301E9EA:
	lbu	a4,s0,+00000010
	c.beqz	a4,000000002301EA02

l2301E9F0:
	lw	a1,s1,+000003A4
	addi	a5,a5,+00000378
	c.li	a2,00000001
	c.add	a0,a5
	jal	ra,000000002300B8B6
	c.j	000000002301E9D0

l2301EA02:
	c.li	a0,0000000E
	jal	ra,000000002300BD44
	c.j	000000002301E9D0

;; sm_connect_req_handler: 2301EA0A
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
	jal	ra,000000002300EA02
	c.li	a5,00000008
	c.li	s1,00000002
	beq	a0,a5,000000002301EB48

l2301EA38:
	c.lui	a0,00002000
	c.li	a3,00000001
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FF
	jal	ra,000000002300E768
	c.mv	s4,a0
	c.li	a0,00000006
	jal	ra,000000002300EA02
	bne	a0,zero,000000002301EBEC

l2301EA54:
	addi	a4,zero,+000005D8
	add	a4,s3,a4
	lui	s2,0004201A
	addi	a5,s2,+00000410
	lbu	a3,s0,+0000003B
	addi	s2,s2,+00000410
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,000000002301EA7C

l2301EA74:
	lbu	a4,a5,+00000058
	beq	a4,zero,000000002301EB5E

l2301EA7C:
	c.li	a5,00000002
	bne	a3,a5,000000002301EBF2

l2301EA82:
	lui	s1,0004201C
	lw	a5,s1,-00000428
	addi	s1,s1,-00000428
	c.beqz	a5,000000002301EAA8

l2301EA90:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+0000005D
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000750
	jal	ra,000000002301327E

l2301EAA8:
	c.lw	s1,4(a5)
	c.sw	s1,0(s0)
	c.beqz	a5,000000002301EAC6

l2301EAAE:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000061
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000730
	jal	ra,000000002301327E

l2301EAC6:
	c.lui	a0,00002000
	addi	a3,zero,+00000354
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,a0,-000007FE
	jal	ra,000000002300E768
	lbu	a1,s0,+0000003D
	c.sw	s1,4(a0)
	lui	a0,00023079
	c.li	a5,FFFFFFFF
	addi	a0,a0,-00000714
	c.sw	s1,20(a5)
	sb	zero,s1,+00000011
	jal	ra,0000000023052118
	lbu	a4,s0,+0000003B
	c.li	a5,00000002
	bne	a4,a5,000000002301EBB4

l2301EAFC:
	lbu	a1,s0,+0000003D
	c.li	a5,00000001
	sb	a5,s1,+00000011
	addi	s1,zero,+000005D8
	add	a1,a1,s1
	lui	a0,0004201C
	c.li	a2,00000006
	addi	a0,a0,-00000410
	addi	a1,a1,+00000038
	c.add	a1,s2
	jal	ra,0000000023070C7C
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002300E902
	lbu	a0,s0,+0000003D
	c.li	a1,00000000
	add	a0,a0,s1
	c.add	a0,s2
	jal	ra,000000002300BBB4

l2301EB3A:
	c.li	s1,00000001
	c.li	a5,00000000

l2301EB3E:
	sb	a5,s4,+00000000
	c.mv	a0,s4
	jal	ra,000000002300E7D4

l2301EB48:
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

l2301EB5E:
	c.li	a4,00000002
	beq	a3,a4,000000002301EA82

l2301EB64:
	lbu	a4,a5,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002301EB88

l2301EB70:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000059
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000078C
	jal	ra,000000002301327E

l2301EB88:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	c.add	s3,s2
	lw	a5,s3,+00000040
	beq	a5,zero,000000002301EA82

l2301EB9A:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+0000005A
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000768
	jal	ra,000000002301327E
	c.j	000000002301EA82

l2301EBB4:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002301EBDC

l2301EBC0:
	addi	a5,s0,+00000022
	addi	s0,s0,+00000028
	c.swsp	a5,00000004
	c.swsp	s0,00000084

l2301EBCC:
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.beqz	a0,000000002301EBE6

l2301EBD2:
	c.beqz	a1,000000002301EBE6

l2301EBD4:
	c.li	a2,00000000
	jal	ra,000000002300B8B6
	c.j	000000002301EB3A

l2301EBDC:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	jal	ra,000000002300B68C
	c.j	000000002301EBCC

l2301EBE6:
	jal	ra,000000002300B7AA
	c.j	000000002301EB3A

l2301EBEC:
	c.li	s1,00000000
	c.li	a5,00000008
	c.j	000000002301EB3E

l2301EBF2:
	c.li	s1,00000000
	c.li	a5,00000009
	c.j	000000002301EB3E

;; rxu_mgt_ind_handler: 2301EBF8
rxu_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	andi	a5,a5,+000000FC
	addi	a4,zero,+000000B0
	c.mv	s0,a1
	bne	a5,a4,000000002301EC2C

l2301EC10:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000005
	bne	a0,a5,000000002301EC22

l2301EC1C:
	c.mv	a0,s0
	jal	ra,000000002300C238

l2301EC22:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301EC2C:
	c.li	a4,00000010
	bne	a5,a4,000000002301EC46

l2301EC32:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000006
	bne	a0,a5,000000002301EC22

l2301EC3E:
	c.mv	a0,s0
	jal	ra,000000002300C336
	c.j	000000002301EC22

l2301EC46:
	addi	a4,zero,+00000030
	beq	a5,a4,000000002301EC32

l2301EC4E:
	addi	a4,zero,+000000C0
	beq	a5,a4,000000002301EC5E

l2301EC56:
	addi	a4,zero,+000000A0
	bne	a5,a4,000000002301EC22

l2301EC5E:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.bnez	a0,000000002301EC22

l2301EC66:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300C48E

;; mm_set_vif_state_cfm_handler: 2301EC72
mm_set_vif_state_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,000000002300EA02
	c.li	a5,00000007
	bne	a0,a5,000000002301ED52

l2301EC8C:
	lui	a5,0004201C
	lw	s1,a5,-00000428
	addi	a5,zero,+000005D8
	lui	s0,0004201A
	lbu	s2,s1,+0000003D
	addi	s3,s0,+00000410
	c.li	a3,00000006
	add	a5,s2,a5
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,zero,+0000004B
	addi	s0,s0,+00000410
	c.add	s3,a5
	lbu	s4,s3,+00000060
	jal	ra,000000002300E768
	lbu	a4,s1,+0000003A
	sb	a4,a0,+00000004
	lhu	a4,s1,+00000038
	sh	a4,a0,+00000002
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000000
	jal	ra,000000002300E7D4
	addi	a3,zero,+000001B0
	add	s4,s4,a3
	lw	a5,s3,+000005C4
	lui	a4,00042019
	addi	a4,a4,-000000E0
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
	bne	a5,a4,000000002301ED34

l2301ED14:
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,a0,+00000413
	jal	ra,000000002300E768
	sb	zero,a0,+00000000
	lbu	a4,s1,+0000003D
	sb	a4,a0,+00000001
	jal	ra,000000002300E7D4

l2301ED34:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.add	s0,s2
	lw	a5,s0,+000003E8
	c.and	a5,a4
	c.bnez	a5,000000002301ED52

l2301ED4C:
	c.li	a0,00000000
	jal	ra,000000002300BD44

l2301ED52:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; me_set_active_cfm_handler: 2301ED64
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000006
	c.swsp	ra,0000008C
	jal	ra,000000002300EA02
	c.li	a5,00000004
	beq	a0,a5,000000002301ED98

l2301ED74:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.li	a5,00000008
	beq	a0,a5,000000002301ED98

l2301ED80:
	lui	a1,00023074
	lui	a0,00023078
	addi	a2,zero,+00000216
	addi	a1,a1,+000002DC
	addi	a0,a0,+000006E8
	jal	ra,000000002301327E

l2301ED98:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	lui	a5,0004201C
	addi	a5,a5,-00000428
	c.li	a4,00000008
	lbu	a5,a5,+00000011
	bne	a0,a4,000000002301EDDA

l2301EDB0:
	c.beqz	a5,000000002301EDD0

l2301EDB2:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002300B68C
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	c.li	a2,00000000
	jal	ra,000000002300B8B6

l2301EDC8:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301EDD0:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,000000002300E902
	c.j	000000002301EDC8

l2301EDDA:
	c.beqz	a5,000000002301EDE2

l2301EDDC:
	jal	ra,000000002300C056
	c.j	000000002301EDC8

l2301EDE2:
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002300BED6
	c.j	000000002301EDC8

;; mm_sta_add_cfm_handler: 2301EDEC
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
	jal	ra,000000002300EA02
	c.li	a5,00000003
	beq	a0,a5,000000002301EE22

l2301EE0A:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+0000019C
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000800
	jal	ra,000000002301327E

l2301EE22:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002301EEDA

l2301EE28:
	lbu	s4,s0,+00000001
	addi	a5,zero,+000001B0
	lui	s0,00042019
	add	a5,s4,a5
	addi	s2,s0,-000000E0
	lui	s3,0004201A
	addi	s5,s3,+00000410
	c.li	a2,0000000D
	addi	s0,s0,-000000E0
	addi	s3,s3,+00000410
	c.add	s2,a5
	lbu	s1,s2,+0000001A
	addi	a5,zero,+000005D8
	addi	a0,s2,+000000B0
	add	a5,s1,a5
	c.add	s5,a5
	addi	a1,s5,+000003B0
	jal	ra,0000000023070C7C
	lw	a5,s5,+000003E0
	andi	a4,a5,+00000001
	c.beqz	a4,000000002301EE80

l2301EE74:
	lw	a4,s2,+000000EC
	ori	a4,a4,+00000001
	sw	a4,s2,+000000EC

l2301EE80:
	c.andi	a5,00000002
	c.beqz	a5,000000002301EEC2

l2301EE84:
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
	jal	ra,0000000023070C7C
	addi	a1,s1,+00000358
	c.add	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230077B0

l2301EEC2:
	jal	ra,000000002300B9F6

l2301EEC6:
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

l2301EEDA:
	c.li	a0,0000000F
	jal	ra,000000002300BD44
	c.j	000000002301EEC6

;; sm_disconnect_req_handler: 2301EEE2
sm_disconnect_req_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000006
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002300EA02
	c.li	a5,00000002
	c.bnez	a0,000000002301EF10

l2301EEF4:
	lhu	a1,s0,+00000000
	lbu	a0,s0,+00000002
	jal	ra,000000002300BC0C
	c.lui	a0,00002000
	c.li	a2,00000006
	c.li	a1,0000000D
	addi	a0,a0,-000007FC
	jal	ra,000000002300E83E
	c.li	a5,00000000

l2301EF10:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; apm_sta_connect_timeout_ind_handler: 2301EF1A
apm_sta_connect_timeout_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	s1,00042019
	jal	ra,00000000230302E8
	c.lui	s2,00007000
	c.mv	s4,a0
	addi	s1,s1,-000000E0
	c.li	s0,00000000
	addi	s2,s2,+00000530
	c.li	s3,0000000C

l2301EF40:
	lw	a5,s1,+000001A8
	c.beqz	a5,000000002301EF54

l2301EF46:
	sub	a5,s4,a5
	bge	s2,a5,000000002301EF54

l2301EF4E:
	c.mv	a0,s0
	jal	ra,000000002300D712

l2301EF54:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+000001B0
	bne	s0,s3,000000002301EF40

l2301EF62:
	lui	a2,000004C5
	c.lui	a0,00002000
	addi	a0,a0,-000003F6
	addi	a2,a2,-000004C0
	c.li	a1,00000007
	jal	ra,000000002300EC82
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; rxu_mgt_ind_handler: 2301EF88
rxu_mgt_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	c.mv	a0,a1
	andi	a5,a5,+000000FC
	bne	a5,a4,000000002301EFAA

l2301EF9E:
	jal	ra,000000002300D9E0

l2301EFA2:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301EFAA:
	addi	a4,zero,+000000B0
	bne	a5,a4,000000002301EFB8

l2301EFB2:
	jal	ra,000000002300DAF6
	c.j	000000002301EFA2

l2301EFB8:
	c.li	a1,00000000
	c.beqz	a5,000000002301EFC6

l2301EFBC:
	addi	a4,zero,+00000020
	bne	a5,a4,000000002301EFCC

l2301EFC4:
	c.li	a1,00000001

l2301EFC6:
	jal	ra,000000002300DB5A
	c.j	000000002301EFA2

l2301EFCC:
	addi	a4,zero,+000000C0
	bne	a5,a4,000000002301EFDA

l2301EFD4:
	jal	ra,000000002300DF2C
	c.j	000000002301EFA2

l2301EFDA:
	addi	a4,zero,+000000A0
	bne	a5,a4,000000002301EFE8

l2301EFE2:
	jal	ra,000000002300DF4C
	c.j	000000002301EFA2

l2301EFE8:
	addi	a4,zero,+00000080
	bne	a5,a4,000000002301EFA2

l2301EFF0:
	jal	ra,000000002300DFA4
	c.j	000000002301EFA2

;; apm_sta_add_cfm_handler: 2301EFF6
apm_sta_add_cfm_handler proc
	lui	a5,0004201C
	lw	a4,a5,-0000063C
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a1,+00000000
	c.beqz	a4,000000002301F01E

l2301F008:
	sb	a0,a4,+00000001
	lw	a0,a5,-0000063C
	c.li	a1,00000000
	jal	ra,0000000023012A64

l2301F016:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301F01E:
	jal	ra,000000002300D72A
	c.j	000000002301F016

;; apm_sta_del_req_handler: 2301F024
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
	jal	ra,000000002300E768
	c.mv	s0,a0
	lbu	a0,s1,+00000000
	addi	a4,zero,+000005D8
	lui	a5,0004201A
	add	a4,a0,a4
	addi	a5,a5,+00000410
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002301F082

l2301F05E:
	lbu	a1,s1,+00000001
	c.li	a5,0000000C
	bltu	a5,a1,000000002301F082

l2301F068:
	jal	ra,000000002300DFA6
	sb	zero,s0,+00000000

l2301F070:
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301F082:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000000
	c.j	000000002301F070

;; apm_stop_cac_req_handler: 2301F08A
apm_stop_cac_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	a4,a1,+00000000
	c.mv	s1,a3
	addi	a3,zero,+000005D8
	add	a4,a4,a3
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301F0E8

l2301F0B4:
	lbu	a5,a5,+00000058
	c.bnez	a5,000000002301F0E8

l2301F0BA:
	c.li	a0,00000007
	c.swsp	a2,00000084
	c.mv	s0,a1
	jal	ra,000000002300EA02
	c.lwsp	a2,00000084
	c.bnez	a0,000000002301F0E8

l2301F0C8:
	lbu	a0,s0,+00000000
	jal	ra,000000002301A562
	csrrci	zero,mstatus,00000008
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFEF
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000084

l2301F0E8:
	c.lui	a0,00002000
	c.mv	a1,s1
	addi	a0,a0,-000003F9
	jal	ra,000000002300E83E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; apm_conf_max_sta_req_handler: 2301F100
apm_conf_max_sta_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a1,+00000000
	c.li	a1,0000000C
	lui	a5,0004201C
	bgeu	a1,a4,000000002301F114

l2301F112:
	c.li	a4,0000000C

l2301F114:
	c.lui	a0,00002000
	addi	a5,a5,-00000408
	addi	a0,a0,-000003F2
	c.mv	a1,a3
	sb	a4,a5,+00000017
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_start_cac_req_handler: 2301F130
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
	lui	a5,0004201A
	addi	a5,a5,+00000410
	sb	zero,sp,+00000003
	c.mv	s3,a2
	c.li	s1,00000004
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301F16E

l2301F166:
	lbu	a5,a5,+00000058
	c.beqz	a5,000000002301F19E

l2301F16C:
	c.li	s1,00000008

l2301F16E:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	c.li	a3,00000002
	addi	a0,a0,-000003FB
	jal	ra,000000002300E768
	sb	s1,a0,+00000000
	lbu	a4,sp,+00000003
	sb	a4,a0,+00000001
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301F19E:
	c.li	a0,00000007
	c.mv	s0,a1
	jal	ra,000000002300EA02
	c.bnez	a0,000000002301F16C

l2301F1A8:
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
	jal	ra,0000000023019F56
	c.mv	s1,a0
	c.bnez	a0,000000002301F200

l2301F1DA:
	lbu	a1,sp,+00000003
	lbu	a0,s0,+00000011
	jal	ra,000000002301A440
	csrrci	zero,mstatus,00000008
	lui	a5,00042019
	addi	a5,a5,-00000150
	c.lw	a5,4(a4)
	ori	a4,a4,+00000010
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.j	000000002301F16E

l2301F200:
	c.li	s1,00000001
	c.j	000000002301F16E

;; me_set_ps_disable_cfm_handler: 2301F204
me_set_ps_disable_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301F234

l2301F214:
	c.li	a0,00000007
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301F234

l2301F21C:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+000000EE
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000524
	jal	ra,000000002301327E

l2301F234:
	c.li	a0,00000007
	jal	ra,000000002300EA02
	c.li	a5,00000001
	bne	a0,a5,000000002301F244

l2301F240:
	jal	ra,000000002300D240

l2301F244:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bss_param_setting_handler: 2301F24C
mm_bss_param_setting_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301F274

l2301F25C:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000110
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000049C
	jal	ra,000000002301327E

l2301F274:
	jal	ra,000000002300D240
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_cfm_handler: 2301F280
mm_bcn_change_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000002
	beq	a0,a5,000000002301F2A8

l2301F290:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000156
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004C8
	jal	ra,000000002301327E

l2301F2A8:
	c.li	a0,00000000
	jal	ra,000000002300D112
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; apm_stop_req_handler: 2301F2B6
apm_stop_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lbu	s0,a1,+00000000
	addi	a4,zero,+000005D8
	lui	a0,0004201A
	add	a4,s0,a4
	addi	a5,a0,+00000410
	c.mv	s2,a3
	c.mv	s3,a2
	c.add	a5,a4
	lbu	a3,a5,+00000056
	c.li	a4,00000002
	bne	a3,a4,000000002301F334

l2301F2E6:
	lbu	a5,a5,+00000058
	c.beqz	a5,000000002301F334

l2301F2EC:
	addi	s1,a0,+00000410
	c.li	a0,00000007
	jal	ra,000000002300EA02
	c.li	a5,00000002
	c.bnez	a0,000000002301F344

l2301F2FA:
	lui	a5,0004201C
	addi	a5,a5,-00000408
	lbu	a4,a5,+00000014
	c.beqz	a4,000000002301F30C

l2301F308:
	sb	zero,a5,+00000014

l2301F30C:
	addi	a0,zero,+000005D8
	add	a0,s0,a0
	lui	s0,0004201C
	c.add	a0,s1
	jal	ra,000000002300D3B8
	lw	a0,s0,-0000063C
	c.beqz	a0,000000002301F334

l2301F324:
	jal	ra,0000000023012B86
	lw	a0,s0,-0000063C
	jal	ra,0000000023013188
	sw	zero,s0,+000009C4

l2301F334:
	c.lui	a0,00002000
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,a0,-000003FD
	jal	ra,000000002300E83E
	c.li	a5,00000000

l2301F344:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; apm_start_req_handler: 2301F354
apm_start_req_handler proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	a0,00023079
	lui	s7,00023079
	c.swsp	s0,0000001C
	c.swsp	s8,0000000C
	c.mv	s0,a1
	c.mv	s8,a2
	addi	a1,s7,-0000066C
	addi	a2,zero,+0000004C
	addi	a0,a0,-000005D4
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s6,00000010
	c.swsp	s9,00000088
	c.mv	s5,a3
	jal	ra,0000000023052118
	lbu	s3,s0,+00000033
	addi	a5,zero,+000005D8
	lui	s2,0004201A
	add	a5,s3,a5
	addi	s1,s2,+00000410
	c.li	s4,00000004
	c.add	s1,a5
	lbu	a4,s1,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002301F66E

l2301F3AC:
	c.li	a0,00000007
	jal	ra,000000002300EA02
	bne	a0,zero,000000002301F66C

l2301F3B6:
	lbu	a5,s1,+00000058
	bne	a5,zero,000000002301F6A6

l2301F3BE:
	c.lw	s1,64(a5)
	addi	s2,s2,+00000410
	c.beqz	a5,000000002301F3DE

l2301F3C6:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000067
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000768
	jal	ra,000000002301327E

l2301F3DE:
	lbu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	lui	s6,0004201C
	addi	a1,s0,+0000000E
	addi	a0,sp,+0000000D
	sw	s0,s6,+00000BF8
	jal	ra,0000000023007FA0
	addi	s6,s6,-00000408
	c.li	s4,00000001
	bne	a0,zero,000000002301F66E

l2301F404:
	lhu	a1,s0,+0000000E
	lbu	a0,s0,+00000010
	jal	ra,00000000230074CA
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
	bne	a5,a4,000000002301F43E

l2301F43C:
	c.li	a5,00000003

l2301F43E:
	addi	s4,zero,+000005D8
	add	s4,s3,s4
	lbu	a1,sp,+0000000D
	add	s5,s2,s4
	sb	a5,s5,+000003DA
	lbu	a5,s0,+0000001C
	sb	zero,s5,+000003DC
	sb	a5,s5,+000003DB
	lbu	a0,s0,+00000033
	jal	ra,000000002301A440
	lbu	a5,s0,+00000034
	c.mv	a0,s5
	sb	a5,s6,+00000014
	lbu	a5,s0,+0000001D
	sb	a5,s6,+00000015
	jal	ra,000000002300D910
	beq	a0,zero,000000002301F5D6

l2301F480:
	addi	s9,s0,+00000035
	c.mv	a1,s0
	c.mv	a0,s9
	jal	ra,00000000230078EA
	lbu	a5,s0,+00000043
	c.beqz	a5,000000002301F49E

l2301F492:
	lw	a5,s5,+000003E0
	ori	a5,a5,+00000001
	sw	a5,s5,+000003E0

l2301F49E:
	lui	a5,0004201B
	lbu	a5,a5,+00000002
	c.beqz	a5,000000002301F4BE

l2301F4A8:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.add	a5,s2
	lw	a4,a5,+000003E0
	ori	a4,a4,+00000002
	sw	a4,a5,+000003E0

l2301F4BE:
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
	jal	ra,0000000023070C7C
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
	jal	ra,0000000023070C7C
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
	lui	a5,0004201B
	addi	a5,a5,-000007F0
	c.add	s8,a5
	c.lui	a5,FFFF0000
	sw	a5,s8,+00000014
	jal	ra,000000002300E602
	lbu	a1,s1,+00000057
	lbu	a4,s6,+00000015
	addi	a3,s0,+00000032
	addi	a2,s0,+00000026
	sw	a0,s6,+00000010
	jal	ra,000000002301D5D2
	lbu	a5,s0,+00000066
	sh	a0,s0,+00000024
	lui	s1,0004201C
	beq	a5,zero,000000002301F654

l2301F576:
	addi	a3,s4,+00000378
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.add	a3,s2
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000002
	addi	s6,s4,+0000037F
	jal	ra,00000000230130EE
	c.add	s6,s2
	addi	a2,s0,+00000067
	c.mv	a1,s6
	sw	a0,s1,+000009C4
	jal	ra,0000000023021DEE
	lw	a0,s1,-0000063C
	c.mv	a1,s6
	jal	ra,0000000023013200
	lw	a5,s1,-0000063C
	lbu	a4,s0,+00000033
	lui	a0,00023079
	addi	a1,s7,-0000066C
	sb	a4,a5,+00000002
	lw	a5,s1,-0000063C
	addi	a0,a0,-000005B4
	lbu	a2,a5,+00000002
	jal	ra,0000000023052118
	lw	a0,s1,-0000063C
	jal	ra,0000000023012B98

l2301F5D6:
	lbu	a5,s0,+00000010
	c.bnez	a5,000000002301F604

l2301F5DC:
	addi	a0,s4,+000003B0
	c.li	a1,00000001
	c.add	a0,s2
	jal	ra,0000000023007922
	c.andi	a0,0000000F
	c.beqz	a0,000000002301F65A

l2301F5EC:
	jal	ra,000000002306C8C0
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,0000001F
	sub	a0,a4,a0
	c.add	a5,s2
	sb	a0,a5,+000003D7

l2301F604:
	jal	ra,000000002300D27C
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	c.mv	a0,s5
	c.add	s2,s3
	lw	a5,s2,+000003A4
	lbu	a5,a5,+00000004
	sb	a5,sp,+0000000E
	jal	ra,000000002300557E
	lui	a0,00023079
	addi	a0,a0,-00000590
	jal	ra,0000000023052118
	c.li	a0,00000001

l2301F63A:
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

l2301F654:
	sw	zero,s1,+000009C4
	c.j	000000002301F5D6

l2301F65A:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a4,00000001
	c.add	a5,s2
	sb	a4,a5,+000003D7
	c.j	000000002301F604

l2301F66C:
	c.li	s4,00000008

l2301F66E:
	lui	a0,00023079
	addi	a2,zero,+000000CC
	addi	a1,s7,-0000066C
	addi	a0,a0,-0000056C
	jal	ra,0000000023052118
	c.lui	a0,00002000
	c.li	a3,00000004
	c.mv	a2,s8
	c.mv	a1,s5
	addi	a0,a0,-000003FF
	jal	ra,000000002300E768
	sb	s4,a0,+00000000
	lbu	a4,s0,+00000033
	sb	a4,a0,+00000001
	jal	ra,000000002300E7D4
	c.li	a0,00000000
	c.j	000000002301F63A

l2301F6A6:
	c.li	s4,00000009
	c.j	000000002301F66E

;; me_set_active_cfm_handler: 2301F6AA
me_set_active_cfm_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000007
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000001
	beq	a0,a5,000000002301F6DA

l2301F6BA:
	c.li	a0,00000007
	jal	ra,000000002300EA02
	c.beqz	a0,000000002301F6DA

l2301F6C2:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+0000012F
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000524
	jal	ra,000000002301327E

l2301F6DA:
	c.li	a0,00000007
	jal	ra,000000002300EA02
	c.li	a5,00000001
	bne	a0,a5,000000002301F70C

l2301F6E6:
	lui	a5,0004201C
	lw	a5,a5,-00000404
	c.beqz	a5,000000002301F708

l2301F6F0:
	lui	a1,00023074
	lui	a0,00023079
	addi	a2,zero,+00000135
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000054C
	jal	ra,000000002301327E

l2301F708:
	jal	ra,000000002300D934

l2301F70C:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hostapd_mgt_ind_handler: 2301F714
hostapd_mgt_ind_handler proc
	lhu	a5,a1,+00000002
	addi	a4,zero,+00000040
	andi	a5,a5,+000000FC
	bne	a5,a4,000000002301F736

l2301F724:
	c.addi	sp,FFFFFFF0
	c.li	a0,0000000A
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301F736:
	addi	a4,zero,+000000B0
	beq	a5,a4,000000002301F724

l2301F73E:
	c.li	a0,00000000
	c.jr	ra

;; dump_cfg_entries: 2301F742
;;   Called from:
;;     2301F890 (in cfg_start_req_handler)
dump_cfg_entries proc
	c.addi16sp	FFFFFFC0
	lui	a0,00023079
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	addi	a0,a0,-00000448
	lui	s0,0002308E
	lui	s1,0002308E
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	addi	s0,s0,+000003E0
	jal	ra,00000000230520DC
	addi	s1,s1,+00000434
	lui	s2,00023079
	lui	s3,00023079
	lui	s4,00023079
	lui	s5,00023079
	lui	s6,00023079
	lui	s7,00023079
	lui	s8,00023079

l2301F790:
	bltu	s0,s1,000000002301F7B8

l2301F794:
	lui	a0,0002307F
	addi	a0,a0,-0000009C
	jal	ra,00000000230520DC
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

l2301F7B8:
	c.mv	a1,s0
	addi	a0,s2,-00000418
	jal	ra,0000000023052118
	c.lw	s0,0(a1)
	addi	a0,s3,-0000040C
	c.addi	s0,0000001C
	jal	ra,0000000023052118
	lhu	a1,s0,-00000018
	addi	a0,s4,-000003F8
	jal	ra,0000000023052118
	lhu	a1,s0,-00000016
	addi	a0,s5,-000003E4
	jal	ra,0000000023052118
	lw	a1,s0,-00000014
	addi	a0,s6,-000003D0
	jal	ra,0000000023052118
	lbu	a1,s0,-00000016
	lw	a0,s0,-00000010
	c.mv	a2,sp
	jal	ra,000000002300DFF6
	c.mv	a1,a0
	addi	a0,s7,-000003BC
	jal	ra,0000000023052118
	c.mv	a1,sp
	addi	a0,s8,-000003A8
	jal	ra,0000000023052118
	lui	a0,0002307E
	addi	a0,a0,+000007F8
	jal	ra,00000000230520DC
	c.j	000000002301F790

;; cfg_start_req_handler: 2301F822
cfg_start_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a1,0(a5)
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a5,000000002301F85E

l2301F834:
	c.li	a4,00000002
	bltu	a4,a5,000000002301F890

l2301F83A:
	c.lui	a0,00003000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a3,00000001
	c.addi	a0,00000001
	jal	ra,000000002300E768
	sb	zero,a0,+00000000
	jal	ra,000000002300E7D4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301F85E:
	c.mv	s0,a1
	lhu	a2,a1,+0000000C
	c.lw	a1,16(a1)
	c.addi4spn	a3,0000000C
	addi	a0,s0,+00000014
	jal	ra,000000002304BFAE
	c.lwsp	a2,00000084
	c.mv	a1,a0
	lui	a0,00023079
	addi	a0,a0,-0000046C
	jal	ra,0000000023052118
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.lw	s0,4(a0)
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	jal	ra,000000002300E1F2
	c.j	000000002301F83A

l2301F890:
	jal	ra,000000002301F742
	c.j	000000002301F83A

;; dbg_init: 2301F896
;;   Called from:
;;     2301BEDA (in bl_init)
dbg_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a0,s0,+000005A4
	c.li	a2,00000008
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	addi	s0,s0,+000005A4
	c.li	a5,FFFFFFFF
	c.sw	s0,0(a5)
	c.li	a5,00000002
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; dbg_test_print: 2301F8C0
;;   Called from:
;;     2300EF94 (in GetTxEAPOLBuffer)
;;     2300EFF0 (in GetTxEAPOLBuffer)
;;     2300F028 (in UpdateEAPOLWcbLenAndTransmit)
;;     2300F070 (in UpdateEAPOLWcbLenAndTransmit)
;;     2300F09E (in keyMgmtProcessMsgExt)
;;     2300F0B6 (in keyMgmtProcessMsgExt)
;;     2300F0F6 (in KeyMgmtInitSta)
;;     2300F126 (in KeyMgmtInitSta)
;;     2300F162 (in keyMgmtSta_StartSession)
;;     2300F1C0 (in keyMgmtSta_StartSession)
;;     2300F1F2 (in init_customApp_mibs)
;;     2300F23A (in init_customApp_mibs)
;;     2300F26C (in supplicantIsEnabled)
;;     2300F28A (in supplicantIsEnabled)
;;     2300F2DE (in supplicantInitSession)
;;     2300F338 (in supplicantInitSession)
;;     2300F36A (in supplicantDisable)
;;     2300F3B2 (in supplicantDisable)
;;     2300F402 (in supplicantEnable)
;;     2300F4B0 (in supplicantEnable)
;;     2300F530 (in keyMgmtFormatWpaRsnIe)
;;     2300F548 (in keyMgmtFormatWpaRsnIe)
;;     2300F59E (in GeneratePWKMsg2)
;;     2300F62A (in GeneratePWKMsg2)
;;     2300F688 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     2300F75A (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     2300F798 (in supplicantInit)
;;     2300F7F2 (in supplicantInit)
;;     2300F822 (in allocSupplicantData)
;;     2300F858 (in allocSupplicantData)
;;     2300F8B8 (in keyMgmtGetKeySize)
;;     2300F8D0 (in keyMgmtGetKeySize)
;;     2300FA46 (in keyMgmtKeyGroupTxDone.isra.1)
;;     2300FAA2 (in keyMgmtKeyGroupTxDone.isra.1)
;;     2300FAE8 (in GenerateGrpMsg2)
;;     2300FB4A (in GenerateGrpMsg2)
;;     2300FBA2 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     2300FBF0 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     2300FCC4 (in keyMgmtPlumbPairwiseKey)
;;     2300FD22 (in keyMgmtPlumbPairwiseKey)
;;     2300FD54 (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     2300FD80 (in keyMgmtKeyPairwiseTxDone.isra.2)
;;     2300FDD2 (in GeneratePWKMsg4)
;;     2300FE34 (in GeneratePWKMsg4)
;;     2300FE54 (in GeneratePWKMsg4)
;;     2300FE70 (in GeneratePWKMsg4)
;;     2300FED0 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     2300FF1A (in KeyMgmtStaHsk_Recvd_PWKMsg3)
;;     2300FF6A (in ProcessKeyMgmtDataSta)
;;     2300FFAE (in ProcessKeyMgmtDataSta)
;;     23010004 (in ProcessEAPoLPkt)
;;     23010028 (in ProcessEAPoLPkt)
;;     23010058 (in ProcessEAPoLPkt)
;;     23010074 (in ProcessEAPoLPkt)
;;     2301045A (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     23010496 (in keyMgmtStaRsnSecuredTimeoutHandler)
;;     230104CC (in supplicantGenerateRand)
;;     230104FA (in supplicantGenerateRand)
;;     2301057C (in keyMgmtGetKeySize_internal)
;;     230105B0 (in keyMgmtGetKeySize_internal)
;;     23010610 (in isApReplayCounterFresh)
;;     230106B2 (in isApReplayCounterFresh)
;;     230106F2 (in updateApReplayCounter)
;;     23010774 (in updateApReplayCounter)
;;     230107BA (in formEAPOLEthHdr)
;;     23010808 (in formEAPOLEthHdr)
;;     23010844 (in IsEAPOL_MICValid)
;;     230108A4 (in IsEAPOL_MICValid)
;;     230108FC (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     2301097C (in KeyMgmtSta_PopulateEAPOLLengthMic)
;;     230109C0 (in parseKeyKDE)
;;     230109EE (in parseKeyKDE)
;;     23010A58 (in parseKeyKDE_DataType)
;;     23010A8A (in parseKeyKDE_DataType)
;;     23010B0A (in parseKeyDataGTK)
;;     23010B76 (in parseKeyDataGTK)
;;     23010BBC (in KeyMgmtSta_ApplyKEK)
;;     23010C46 (in KeyMgmtSta_ApplyKEK)
;;     23010CA8 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23010CEE (in KeyMgmtSta_IsRxEAPOLValid)
;;     23010D58 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23010E68 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23010EAC (in supplicantAkmIsWpaWpa2)
;;     23010EF8 (in supplicantAkmIsWpaWpa2)
;;     23010F2E (in supplicantAkmIsWpa2)
;;     23010F58 (in supplicantAkmIsWpa2)
;;     23010FA0 (in supplicantAkmIsWpaWpa2Psk)
;;     23010FEC (in supplicantAkmIsWpaWpa2Psk)
;;     2301101C (in supplicantAkmUsesKdf)
;;     23011056 (in supplicantAkmUsesKdf)
;;     230110A6 (in supplicantConstructContext)
;;     2301112A (in supplicantConstructContext)
;;     23011190 (in KeyMgmt_DerivePTK)
;;     230111F4 (in KeyMgmt_DerivePTK)
;;     23011276 (in KeyMgmtSta_DeriveKeys)
;;     230112E2 (in KeyMgmtSta_DeriveKeys)
;;     2301134A (in SetEAPOLKeyDescTypeVersion)
;;     23011388 (in SetEAPOLKeyDescTypeVersion)
;;     230113BA (in GetKeyMsgNonceFromEAPOL)
;;     23011408 (in GetKeyMsgNonceFromEAPOL)
;;     2301144E (in ProcessRxEAPOL_PwkMsg3)
;;     230114D6 (in ProcessRxEAPOL_PwkMsg3)
;;     23011512 (in ProcessRxEAPOL_GrpMsg1)
;;     23011590 (in ProcessRxEAPOL_GrpMsg1)
;;     23011600 (in KeyMgmtResetCounter)
;;     23011632 (in KeyMgmtResetCounter)
;;     23011666 (in keyMgmtSta_StartSession_internal)
;;     230116B2 (in keyMgmtSta_StartSession_internal)
;;     230116E4 (in KeyMgmtSta_InitSession)
;;     23011728 (in KeyMgmtSta_InitSession)
;;     23011762 (in set_psk)
;;     230117B0 (in set_psk)
;;     230117E6 (in remove_psk)
;;     23011812 (in remove_psk)
;;     230118FC (in pmkCacheFindPSK)
;;     2301192A (in pmkCacheFindPSK)
;;     230119B2 (in pmkCacheSetPassphrase)
;;     23011A16 (in pmkCacheSetPassphrase)
;;     23011A44 (in pmkCacheInit)
;;     23011A92 (in pmkCacheInit)
;;     23011AC0 (in pmkCacheRomInit)
;;     23011B0C (in pmkCacheRomInit)
;;     23011B5A (in pmkCacheNewElement)
;;     23011B82 (in pmkCacheNewElement)
;;     23011C30 (in pmkCacheUpdateReplacementRank)
;;     23011C88 (in pmkCacheUpdateReplacementRank)
;;     23011CF6 (in pmkCacheFindPSKElement)
;;     23011D24 (in pmkCacheFindPSKElement)
;;     23011DAA (in pmkCacheAddPSK)
;;     23011E0E (in pmkCacheAddPSK)
;;     23011E40 (in pmkCacheDeletePSK)
;;     23011E84 (in pmkCacheDeletePSK)
;;     23011EB6 (in pmkCacheGetHexNibble)
;;     23011EFE (in pmkCacheGetHexNibble)
;;     23011F3E (in pmkCacheGeneratePSK)
;;     23011F8E (in pmkCacheGeneratePSK)
;;     23021D68 (in supplicantRestoreDefaults)
;;     23021D88 (in supplicantRestoreDefaults)
;;     23021DC4 (in supplicantFuncInit)
;;     23021DEA (in supplicantFuncInit)
dbg_test_print proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,00000098
	lui	s1,0004201D
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
	addi	a5,s1,+000005A4
	c.lw	a5,4(a5)
	c.beqz	a5,000000002301F918

l2301F8EE:
	c.mv	s2,a0
	addi	s1,s1,+000005A4
	addi	s3,a0,+00000002
	addi	s4,zero,+00000087
	c.li	s5,00000005
	lui	s6,00023074
	lui	s7,00023079

l2301F906:
	lbu	s0,s2,+00000000
	slli	a5,s0,00000018
	c.srai	a5,00000018
	blt	a5,zero,000000002301F92E

l2301F914:
	c.addi4spn	a5,00000044
	c.swsp	a5,00000084

l2301F918:
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

l2301F92E:
	bltu	s4,s0,000000002301F94C

l2301F932:
	c.lw	s1,0(a5)
	addi	s0,s0,-00000080
	xori	a5,a5,-00000001
	srl	s0,a5,s0
	c.andi	s0,00000001
	c.bnez	s0,000000002301F918

l2301F944:
	c.addi	s2,00000001
	bne	s3,s2,000000002301F906

l2301F94A:
	c.j	000000002301F914

l2301F94C:
	addi	a5,s0,+00000066
	andi	a5,a5,+000000FF
	bgeu	s5,a5,000000002301F968

l2301F958:
	addi	a2,zero,+00000297
	addi	a1,s6,+000002DC
	addi	a0,s7,-00000394
	jal	ra,000000002301327E

l2301F968:
	c.lw	s1,4(a5)
	addi	s0,s0,-0000009A
	bltu	s0,a5,000000002301F944

l2301F972:
	c.j	000000002301F918

;; dbg_get_sys_stat_req_handler: 2301F974
dbg_get_sys_stat_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	addi	a0,zero,+0000040A
	c.li	a3,0000000C
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_write_req_handler: 2301F99C
dbg_mem_write_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000403
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	c.lw	s0,0(a4)
	c.lw	s0,4(a3)
	c.sw	a4,0(a3)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_mem_read_req_handler: 2301F9CC
dbg_mem_read_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000401
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000008
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	c.lw	s0,0(a4)
	c.lw	a4,0(a4)
	c.sw	a0,4(a4)
	c.lw	s0,0(a4)
	c.sw	a0,0(a4)
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_sev_filter_req_handler: 2301F9F8
dbg_set_sev_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,0004201D
	addi	a0,zero,+00000407
	c.mv	a1,a3
	sw	a4,a5,+000005A8
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; dbg_set_mod_filter_req_handler: 2301FA18
dbg_set_mod_filter_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,0(a4)
	lui	a5,0004201D
	addi	a0,zero,+00000405
	c.mv	a1,a3
	sw	a4,a5,+000005A4
	jal	ra,000000002300E83E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; ke_queue_extract: 2301FA38
;;   Called from:
;;     2300E9D0 (in ke_state_set)
;;     2300ECF4 (in ke_timer_set)
;;     2300EE38 (in ke_timer_clear)
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

l2301FA4C:
	c.beqz	s0,000000002301FA68

l2301FA4E:
	c.mv	a1,a2
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.jalr	s3
	c.lw	s0,0(a5)
	c.lwsp	a2,00000084
	c.beqz	a0,000000002301FA84

l2301FA5C:
	c.beqz	s1,000000002301FA78

l2301FA5E:
	c.sw	s1,0(a5)

l2301FA60:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002301FA7E

l2301FA64:
	sw	zero,s0,+00000000

l2301FA68:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2301FA78:
	sw	a5,s2,+00000000
	c.j	000000002301FA60

l2301FA7E:
	sw	s1,s2,+00000004
	c.j	000000002301FA68

l2301FA84:
	c.mv	s1,s0
	c.mv	s0,a5
	c.j	000000002301FA4C

;; bl_aes_128: 2301FA8A
;;   Called from:
;;     2301FB02 (in generate_subkey)
;;     2301FC04 (in bl_aes_cmac)
;;     2301FC64 (in bl_aes_cmac)
bl_aes_128 proc
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000002
	c.j	000000002301FCE2

;; xor_128: 2301FA92
;;   Called from:
;;     2301FB46 (in generate_subkey)
;;     2301FB60 (in generate_subkey)
;;     2301FBDE (in bl_aes_cmac)
;;     2301FBFA (in bl_aes_cmac)
;;     2301FC5A (in bl_aes_cmac)
xor_128 proc
	c.li	a5,00000000
	c.li	a3,00000010

l2301FA96:
	add	a4,a0,a5
	add	a7,a1,a5
	lbu	a4,a4,+00000000
	lbu	a7,a7,+00000000
	add	a6,a2,a5
	c.addi	a5,00000001
	xor	a4,a4,a7
	sb	a4,a6,+00000000
	bne	a5,a3,000000002301FA96

l2301FAB8:
	c.jr	ra

;; leftshift_onebit: 2301FABA
;;   Called from:
;;     2301FB12 (in generate_subkey)
;;     2301FB22 (in generate_subkey)
;;     2301FB36 (in generate_subkey)
;;     2301FB50 (in generate_subkey)
leftshift_onebit proc
	c.li	a5,00000000
	c.li	a4,0000000F
	c.li	a6,FFFFFFFF

l2301FAC0:
	add	a2,a0,a4
	lbu	a3,a2,+00000000
	add	a7,a1,a4
	c.addi	a4,FFFFFFFF
	c.slli	a3,01
	c.or	a5,a3
	sb	a5,a7,+00000000
	lbu	a5,a2,+00000000
	c.srli	a5,00000007
	bne	a4,a6,000000002301FAC0

l2301FAE0:
	c.jr	ra

;; generate_subkey: 2301FAE2
;;   Called from:
;;     2301FBBC (in bl_aes_cmac)
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
	jal	ra,0000000023070EB8
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,000000002301FA8A
	lb	a5,sp,+00000000
	blt	a5,zero,000000002301FB32

l2301FB0E:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002301FABA

l2301FB16:
	lb	a5,s0,+00000000
	blt	a5,zero,000000002301FB4C

l2301FB1E:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002301FABA

l2301FB26:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2301FB32:
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,000000002301FABA
	lui	a1,00023079
	c.mv	a2,s0
	addi	a1,a1,-0000033C
	c.addi4spn	a0,00000020
	jal	ra,000000002301FA92
	c.j	000000002301FB16

l2301FB4C:
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002301FABA
	lui	a1,00023079
	c.mv	a2,s1
	addi	a1,a1,-0000033C
	c.addi4spn	a0,00000020
	jal	ra,000000002301FA92
	c.j	000000002301FB26

;; padding: 2301FB66
;;   Called from:
;;     2301FC44 (in bl_aes_cmac)
padding proc
	c.li	a5,00000000
	add	a3,a1,a2
	addi	a6,zero,-00000080
	c.li	a4,00000010

l2301FB72:
	bge	a5,a2,000000002301FB8E

l2301FB76:
	add	a7,a0,a5
	lbu	t1,a7,+00000000
	add	a7,a1,a5
	sb	t1,a7,+00000000

l2301FB86:
	c.addi	a5,00000001
	bne	a5,a4,000000002301FB72

l2301FB8C:
	c.jr	ra

l2301FB8E:
	bne	a2,a5,000000002301FB98

l2301FB92:
	sb	a6,a3,+00000000
	c.j	000000002301FB86

l2301FB98:
	add	a7,a1,a5
	sb	zero,a7,+00000000
	c.j	000000002301FB86

;; bl_aes_cmac: 2301FBA2
;;   Called from:
;;     23010528 (in ComputeEAPOL_MIC)
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
	jal	ra,000000002301FAE2
	addi	s0,s1,+0000000F
	c.li	a5,00000010
	xor	s0,s0,a5
	c.beqz	s0,000000002301FC32

l2301FBCC:
	andi	a5,s1,+0000000F
	c.bnez	a5,000000002301FC34

l2301FBD2:
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000040
	c.add	a0,s2

l2301FBDE:
	jal	ra,000000002301FA92
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.li	s1,00000000
	c.addi	s0,FFFFFFFF

l2301FBF0:
	blt	s1,s0,000000002301FC50

l2301FBF4:
	c.addi4spn	a2,00000010
	c.addi4spn	a1,00000020
	c.mv	a0,sp
	jal	ra,000000002301FA92
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002301FA8A
	c.li	a5,00000000
	c.li	a4,00000010

l2301FC0C:
	add	a2,sp,a5
	lbu	a2,a2,+00000000
	add	a3,s3,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,000000002301FC0C

l2301FC22:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.addi16sp	00000080
	c.jr	ra

l2301FC32:
	c.li	s0,00000001

l2301FC34:
	c.li	a2,00000010
	or	a2,s1,a2
	addi	a0,s0,-00000001
	c.slli	a0,04
	c.addi4spn	a1,00000030
	c.add	a0,s2
	jal	ra,000000002301FB66
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000050
	c.addi4spn	a0,00000030
	c.j	000000002301FBDE

l2301FC50:
	slli	a1,s1,00000004
	c.addi4spn	a2,00000010
	c.add	a1,s2
	c.mv	a0,sp
	jal	ra,000000002301FA92
	c.mv	a2,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002301FA8A
	c.addi	s1,00000001
	c.j	000000002301FBF0

;; BL_AES_MEMCMP: 2301FC6C
;;   Called from:
;;     2301FEB0 (in BL_AesUnWrap)
BL_AES_MEMCMP proc
	c.mv	a6,a2
	c.li	a5,00000000

l2301FC70:
	bne	a6,a5,000000002301FC7E

l2301FC74:
	sltu	a2,zero,a2
	sub	a0,zero,a2
	c.jr	ra

l2301FC7E:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	bne	a3,a4,000000002301FC94

l2301FC92:
	c.addi	a2,FFFFFFFF

l2301FC94:
	c.addi	a5,00000001
	c.j	000000002301FC70

;; BL_AES_MEMSET: 2301FC98
;;   Called from:
;;     2301FD4E (in BL_AesWrap)
;;     2301FE3E (in BL_AesUnWrap)
;;     2301FE48 (in BL_AesUnWrap)
BL_AES_MEMSET proc
	c.add	a2,a0

l2301FC9A:
	bne	a0,a2,000000002301FCA0

l2301FC9E:
	c.jr	ra

l2301FCA0:
	c.addi	a0,00000001
	sb	a1,a0,+00000FFF
	c.j	000000002301FC9A

;; BL_AES_MEMCPY: 2301FCA8
;;   Called from:
;;     2301FD62 (in BL_AesWrap)
;;     2301FD72 (in BL_AesWrap)
;;     2301FD86 (in BL_AesWrap)
;;     2301FD90 (in BL_AesWrap)
;;     2301FDA6 (in BL_AesWrap)
;;     2301FDC0 (in BL_AesWrap)
;;     2301FDE0 (in BL_AesWrap)
;;     2301FE52 (in BL_AesUnWrap)
;;     2301FE70 (in BL_AesUnWrap)
;;     2301FEEA (in BL_AesUnWrap)
;;     2301FF02 (in BL_AesUnWrap)
;;     2301FF16 (in BL_AesUnWrap)
;;     2301FF20 (in BL_AesUnWrap)
BL_AES_MEMCPY proc
	c.li	a5,FFFFFFFF
	bgeu	a0,a1,000000002301FCDA

l2301FCAE:
	c.li	a5,00000000

l2301FCB0:
	bne	a5,a2,000000002301FCB6

l2301FCB4:
	c.jr	ra

l2301FCB6:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002301FCB0

l2301FCCA:
	add	a4,a1,a2
	lbu	a3,a4,+00000000
	add	a4,a0,a2
	sb	a3,a4,+00000000

l2301FCDA:
	c.addi	a2,FFFFFFFF
	bne	a2,a5,000000002301FCCA

l2301FCE0:
	c.jr	ra

;; BL_AesEncrypt: 2301FCE2
;;   Called from:
;;     2301FA90 (in bl_aes_128)
;;     2301FD9C (in BL_AesWrap)
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
	jal	ra,0000000023020DA2
	c.mv	a0,sp
	c.mv	a2,s1
	c.mv	a1,s0
	jal	ra,0000000023021408
	lw	ra,sp,+0000019C
	lw	s0,sp,+00000198
	lw	s1,sp,+00000194
	c.li	a0,00000000
	c.addi16sp	000001A0
	c.jr	ra

;; BL_AesWrap: 2301FD1E
;;   Called from:
;;     23012F36 (in Encrypt_keyData)
BL_AesWrap proc
	beq	a2,zero,000000002301FDFE

l2301FD22:
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
	jal	ra,000000002301FC98
	c.li	a2,00000008
	c.mv	a1,s1
	c.bnez	s1,000000002301FD60

l2301FD58:
	lui	a1,0002308E
	addi	a1,a1,-000001C0

l2301FD60:
	c.addi4spn	a0,00000008
	jal	ra,000000002301FCA8
	slli	a2,s0,00000003
	c.mv	a1,s3
	c.mv	a0,s4
	andi	s8,s0,+000000FF
	jal	ra,000000002301FCA8
	c.li	s3,00000000
	c.li	s5,00000006
	c.addi	s0,00000001

l2301FD7C:
	c.li	s1,00000001
	c.j	000000002301FDC4

l2301FD80:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,000000002301FCA8
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000018
	jal	ra,000000002301FCA8
	c.addi4spn	a3,00000010
	c.mv	a2,a3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,000000002301FCE2
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,000000002301FCA8
	lbu	a4,sp,+0000000F
	add	a5,s3,s1
	c.li	a2,00000008
	c.xor	a5,a4
	c.addi4spn	a1,00000018
	c.mv	a0,s4
	sb	a5,sp,+0000000F
	c.addi	s1,00000001
	jal	ra,000000002301FCA8

l2301FDC4:
	slli	s4,s1,00000003
	c.add	s4,s2
	bne	s1,s0,000000002301FD80

l2301FDCE:
	c.add	s3,s8
	c.addi	s5,FFFFFFFF
	andi	s3,s3,+000000FF
	bne	s5,zero,000000002301FD7C

l2301FDDA:
	c.mv	a0,s2
	c.addi4spn	a1,00000008
	c.li	a2,00000008
	jal	ra,000000002301FCA8
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

l2301FDFE:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; BL_AesUnWrap: 2301FE02
;;   Called from:
;;     23010C58 (in KeyMgmtSta_ApplyKEK)
BL_AesUnWrap proc
	beq	a2,zero,000000002301FF2A

l2301FE06:
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
	jal	ra,000000002301FC98
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002301FC98
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,000000002301FCA8
	slli	s1,s2,00000003
	c.mv	a2,s1
	c.addi	s1,FFFFFFF8
	c.mv	a0,s0
	c.add	s1,s0
	andi	s7,s2,+000000FF
	c.li	s0,00000005
	add	s0,s7,s0
	addi	a1,s4,+00000008
	jal	ra,000000002301FCA8
	slli	a2,s6,00000006
	c.li	a3,00000000
	c.mv	a1,s5
	c.addi4spn	a0,00000020
	jal	ra,0000000023020DA2
	c.li	s6,00000006
	andi	s0,s0,+000000FF

l2301FE88:
	c.mv	s4,s2
	c.mv	s5,s1

l2301FE8C:
	blt	zero,s4,000000002301FEE4

l2301FE90:
	sub	s0,s0,s7
	c.addi	s6,FFFFFFFF
	andi	s0,s0,+000000FF
	bne	s6,zero,000000002301FE88

l2301FE9E:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	bne	s3,zero,000000002301FEB0

l2301FEA8:
	lui	a0,0002308E
	addi	a0,a0,-000001C0

l2301FEB0:
	jal	ra,000000002301FC6C
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

l2301FEE4:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000010
	jal	ra,000000002301FCA8
	lbu	a4,sp,+00000017
	add	a5,s0,s4
	c.mv	a1,s5
	c.xor	a5,a4
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	sb	a5,sp,+00000017
	jal	ra,000000002301FCA8
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.addi4spn	a0,00000020
	jal	ra,0000000023020FC6
	c.li	a2,00000008
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,000000002301FCA8
	c.mv	a0,s5
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,000000002301FCA8
	c.addi	s5,FFFFFFF8
	c.addi	s4,FFFFFFFF
	c.j	000000002301FE8C

l2301FF2A:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; Bl_hmac_md5: 2301FF2E
;;   Called from:
;;     23010532 (in ComputeEAPOL_MIC)
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
	bge	a5,a3,000000002301FF80

l2301FF64:
	c.addi4spn	a0,00000008
	jal	ra,0000000023020B5C
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023020B8E
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000138
	jal	ra,0000000023020C38
	c.li	s3,00000010
	c.addi4spn	s1,00000138

l2301FF80:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,0000000023070EB8
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,0000000023070C7C
	c.addi4spn	s0,000000A0
	lui	a3,00036363
	addi	s2,sp,+000000E0
	c.mv	a5,s0
	addi	a3,a3,+00000636

l2301FFA6:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.xor	a4,a3
	sw	a4,a5,+00000FFC
	bne	a5,s2,000000002301FFA6

l2301FFB4:
	c.mv	a0,s2
	jal	ra,0000000023020B5C
	addi	a2,zero,+00000040
	c.addi4spn	a1,000000A0
	c.mv	a0,s2
	jal	ra,0000000023020B8E
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023020B8E
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023020C38
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,000000A0
	jal	ra,0000000023070EB8
	c.mv	a2,s3
	c.mv	a1,s1
	c.addi4spn	a0,000000A0
	jal	ra,0000000023070C7C
	lui	a4,0005C5C6
	addi	a4,a4,-000003A4

l2301FFF6:
	c.lw	s0,0(a5)
	c.addi	s0,00000004
	c.xor	a5,a4
	sw	a5,s0,+00000FFC
	bne	s0,s2,000000002301FFF6

l23020004:
	c.mv	a0,s0
	jal	ra,0000000023020B5C
	c.addi4spn	a1,000000A0
	c.mv	a0,s0
	addi	a2,zero,+00000040
	jal	ra,0000000023020B8E
	c.mv	a1,s4
	c.mv	a0,s0
	c.li	a2,00000010
	jal	ra,0000000023020B8E
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,0000000023020C38
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

;; Bl_hmac_sha1: 2302004E
;;   Called from:
;;     23010548 (in ComputeEAPOL_MIC)
;;     2302028A (in Bl_PRF)
;;     23054ECC (in Bl_F)
;;     23054F0A (in Bl_F)
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
	bge	a5,a4,00000000230200AC

l23020092:
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B14
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,0000000023021CA8
	c.mv	a1,s2
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B5C
	c.li	s1,00000014

l230200AC:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	lui	a4,00036363
	c.mv	s0,sp
	addi	s4,sp,+00000040
	c.mv	a5,sp
	addi	a4,a4,+00000636

l230200D2:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,00000000230200D2

l230200EA:
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B14
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,00000054
	jal	ra,0000000023021CA8
	c.li	s3,00000000

l230200FE:
	blt	s3,s7,000000002302019E

l23020102:
	c.mv	a1,s4
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B5C
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	lui	a5,0005C5C6
	addi	a5,a5,-000003A4

l23020128:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,0000000023020128

l23020140:
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B14
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,00000054
	jal	ra,0000000023021CA8
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,0000000023021CA8
	c.mv	a1,s0
	c.addi4spn	a0,00000054
	jal	ra,0000000023021B5C
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,0000000023070C7C
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

l2302019E:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,00000054
	c.addi	s3,00000001
	jal	ra,0000000023021CA8
	c.j	00000000230200FE

;; Bl_PRF: 230201B6
;;   Called from:
;;     23011210 (in KeyMgmt_DerivePTK)
;;     23012C78 (in GenerateGTK_internal)
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
	jal	ra,0000000023070EB8
	beq	s8,zero,0000000023020260

l230201F4:
	c.mv	a2,s0
	c.mv	a1,s8
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	c.addi4spn	a5,00000080
	c.add	a5,s0
	c.addi	s0,00000001
	add	a0,s5,s0
	c.mv	a2,s6
	c.mv	a1,s7
	c.add	s0,s6
	sb	zero,a5,+00000F88
	jal	ra,0000000023070C7C
	c.swsp	s0,00000000

l23020218:
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

l23020238:
	add	a5,s5,s8
	c.add	a5,s1
	c.slli	a5,18
	c.srai	a5,00000018
	blt	s5,s6,000000002302026E

l23020246:
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

l23020260:
	c.mv	a2,s6
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	c.swsp	s6,00000000
	c.j	0000000023020218

l2302026E:
	c.mv	s0,a5
	bge	s9,a5,0000000023020276

l23020274:
	c.li	s0,00000014

l23020276:
	c.slli	s0,18
	c.srai	s0,00000018
	add	a5,s4,s7
	c.mv	a4,s3
	c.mv	a6,s0
	c.mv	a3,s2
	c.li	a2,00000001
	c.mv	a1,sp
	c.addi4spn	a0,00000004
	jal	ra,000000002302004E
	c.lwsp	zero,000000E4
	c.addi4spn	a4,00000080
	c.add	s7,s0
	c.addi	a5,FFFFFFFF
	c.add	a5,a4
	lbu	a4,a5,-00000078
	c.addi	s5,00000001
	c.addi	a4,00000001
	sb	a4,a5,+00000F88
	c.j	0000000023020238

;; wpa_MD5Transform: 230202A6
;;   Called from:
;;     23020BE6 (in wpa_MD5Update)
;;     23020C2A (in wpa_MD5Update)
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
	jal	zero,0000000023070EB8
