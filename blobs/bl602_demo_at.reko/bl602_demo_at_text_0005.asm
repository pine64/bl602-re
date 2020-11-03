;;; Segment .text (23000300)

l23050310:
	c.mv	a1,a0
	lui	a0,000230BB
	addi	a0,a0,-0000002C
	jal	ra,0000000023082388
	c.j	0000000023050242

l23050320:
	addi	a0,s2,-00000240
	jal	ra,0000000023049772
	c.j	0000000023050242

;; bt_get_name: 2305032A
;;   Called from:
;;     23045712 (in bt_mesh_proxy_adv_start)
;;     2304BEC8 (in read_name)
;;     23055E1A (in ble_get_device_name)
;;     23055EEA (in ble_start_advertise)
bt_get_name proc
	lui	a0,0004200E
	addi	a0,a0,-000001E8
	c.jr	ra

;; bt_id_create: 23050334
;;   Called from:
;;     230503EE (in bt_setup_id_addr)
bt_id_create proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s3,a0
	c.mv	s0,a1
	c.bnez	a0,000000002305035A

l23050346:
	c.li	s1,FFFFFFEA
	c.beqz	s0,00000000230503A8

l2305034A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2305035A:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023050346

l2305036E:
	lbu	a4,s3,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023050388

l23050378:
	lbu	a5,s3,+00000006
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,0000000023050398

l23050388:
	lui	a0,000230BB
	addi	a0,a0,+0000010C
	jal	ra,0000000023082388
	c.li	s1,FFFFFFEA
	c.j	000000002305034A

l23050398:
	c.mv	a0,s3
	jal	ra,000000002304E66E
	addi	s1,zero,-00000045
	blt	a0,zero,0000000023050346

l230503A6:
	c.j	000000002305034A

l230503A8:
	lui	a0,0004200E
	addi	a0,a0,-000002A0
	lbu	s2,a0,+00000007
	c.li	a5,00000001
	c.li	s1,FFFFFFF4
	beq	s2,a5,000000002305034A

l230503BC:
	addi	a5,s2,+00000001
	sb	a5,a0,+00000007
	c.mv	s1,s2
	bne	s2,zero,00000000230503E0

l230503CA:
	addi	s0,a0,+0000006C
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,00000000230503E0

l230503D8:
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023048EBA

l230503E0:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002304F222
	c.j	000000002305034A

;; bt_setup_id_addr: 230503EA
;;   Called from:
;;     230507D8 (in init_work)
bt_setup_id_addr proc
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023050334

;; init_work: 230503F2
init_work proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	jal	ra,0000000023049FEE
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050406:
	lui	s1,0004200E
	addi	a5,s1,-000002A0
	lw	a5,a5,+000000B4
	addi	s1,s1,-000002A0
	c.lw	a5,8(a5)
	c.andi	a5,00000001
	c.bnez	a5,000000002305045C

l2305041C:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,a0,-000003FD
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050430:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a5)
	lbu	a5,a5,+00000000
	c.bnez	a5,0000000023050456

l2305043A:
	addi	s0,s1,+0000006C
	lui	a5,0004200F
	c.mv	a0,s0
	sw	zero,a5,+00000484
	jal	ra,0000000023048E6C
	andi	a1,a0,+0000000D
	c.mv	a0,s0
	jal	ra,0000000023048E70

l23050456:
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0

l2305045C:
	c.lui	s2,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000003
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050470:
	c.lwsp	a2,000000E4
	c.li	a2,00000008
	addi	a0,s1,+00000018
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,00000000230A382C
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000001
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050498:
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
	jal	ra,00000000230491C0
	c.li	a1,00000003
	addi	a0,s1,+0000006C
	jal	ra,000000002304DEC4
	c.bnez	a0,0000000023050550

l230504EC:
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000009
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,0000000023050590

l230504FC:
	c.lwsp	a2,000000E4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.lw	a5,8(s0)
	c.swsp	zero,00000008
	sh	zero,sp,+00000014
	c.addi	s0,00000001
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002305054A

l23050514:
	lui	a5,0004200F
	addi	a5,a5,-00000174
	c.lw	a5,0(a4)
	lhu	a5,a5,+00000004
	c.li	a2,00000006
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.swsp	a4,0000000C
	sh	a5,sp,+0000001C
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002305054A

l23050534:
	c.li	a2,00000006
	c.mv	a1,s0
	addi	a0,s1,+00000001
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	zero,s1,+00000000
	sb	a5,s1,+00000007

l2305054A:
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0

l23050550:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,00000002
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,0000000023050590

l23050560:
	c.lwsp	a2,000000E4
	addi	a2,zero,+00000040
	addi	a0,s1,+00000020
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,00000000230A382C
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000040
	c.bnez	a5,00000000230505AA

l23050582:
	lui	a0,000230BB
	addi	a0,a0,+00000470
	jal	ra,0000000023082388
	c.li	s0,FFFFFFED

l23050590:
	lui	a5,0004200F
	lw	a5,a5,+00000480
	c.beqz	a5,000000002305059E

l2305059A:
	c.mv	a0,s0
	c.jalr	a5

l2305059E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230505AA:
	c.lui	s2,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000003
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,0000000023050590

l230505BC:
	c.lwsp	a2,000000E4
	c.li	a2,00000008
	addi	a0,s1,+00000070
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,00000000230A382C
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000002
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,0000000023050590

l230505E2:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a4)
	lbu	a5,a4,+00000002
	lbu	a3,a4,+00000001
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s1,+00000080
	c.beqz	a5,0000000023050606

l230505F8:
	lbu	a2,a4,+00000003
	addi	a0,s1,+00000084
	c.mv	a1,a2
	jal	ra,0000000023048B2A

l23050606:
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000020
	beq	a5,zero,00000000230507EE

l23050618:
	lbu	a5,s1,+0000003C
	c.andi	a5,00000008
	c.beqz	a5,0000000023050674

l23050620:
	c.lui	a0,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,0000001C
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,0000000023050590

l23050630:
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
	jal	ra,00000000230491C0

l23050674:
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000040
	c.beqz	a5,00000000230506A2

l2305067E:
	c.lui	a0,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,a0,+0000002A
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050692:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a5,a5,+00000001
	sb	a5,s1,+00000090
	jal	ra,00000000230491C0

l230506A2:
	c.lui	s2,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+0000000F
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l230506B6:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a5,a5,+00000001
	sb	a5,s1,+00000092
	jal	ra,00000000230491C0
	c.li	a1,00000008
	addi	a0,s2,+00000001
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	beq	a0,zero,00000000230507FE

l230506D6:
	c.li	a1,00000008
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lbu	a4,s1,+00000070
	c.mv	a2,a0
	addi	a3,zero,+00000202
	andi	a5,a4,+00000040
	c.bnez	a5,00000000230506F0

l230506EE:
	c.li	a3,00000003

l230506F0:
	andi	a1,a4,+00000002
	ori	a0,a3,+0000002C
	c.bnez	a1,00000000230506FE

l230506FA:
	ori	a0,a3,+0000000C

l230506FE:
	c.andi	a4,00000001
	c.beqz	a4,0000000023050706

l23050702:
	ori	a0,a0,+00000010

l23050706:
	lbu	a4,s1,+00000042
	c.li	a3,00000006
	c.andi	a4,00000006
	bne	a4,a3,0000000023050716

l23050712:
	ori	a0,a0,+00000180

l23050716:
	c.li	a1,00000000
	jal	ra,000000002304E6C0
	c.lui	a0,00002000
	c.mv	a1,s0
	c.li	a2,00000000
	c.addi	a0,00000001
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l2305072E:
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000020
	c.bnez	a5,0000000023050786

l23050738:
	lhu	a5,s1,+00000080
	c.bnez	a5,0000000023050786

l2305073E:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,00000005
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050750:
	lhu	a5,s1,+00000080
	c.bnez	a5,0000000023050780

l23050756:
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
	jal	ra,0000000023048B2A

l23050780:
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0

l23050786:
	c.lui	a0,00001000
	c.li	a1,00000008
	addi	a0,a0,-000003FF
	jal	ra,000000002304E6F6
	c.mv	s2,a0
	addi	s0,zero,-00000037
	beq	a0,zero,0000000023050590

l2305079C:
	c.li	a1,00000008
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lbu	a5,s1,+00000070
	c.mv	a2,a0
	c.andi	a5,00000001
	c.beqz	a5,000000002305082A

l230507AE:
	lui	a5,000230BB
	lw	a0,a5,+00000468
	lw	a1,a5,+0000046C

l230507BA:
	jal	ra,000000002304E6C0
	c.lui	a0,00001000
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,a0,-000003FF
	jal	ra,000000002304E790
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l230507D2:
	lbu	a5,s1,+00000007
	c.bnez	a5,0000000023050838

l230507D8:
	jal	ra,00000000230503EA
	c.mv	s0,a0
	c.beqz	a0,0000000023050838

l230507E0:
	lui	a0,000230BB
	addi	a0,a0,+00000498
	jal	ra,0000000023082388
	c.j	0000000023050590

l230507EE:
	c.lui	s2,00001000
	c.li	a1,00000002
	addi	a0,s2,-00000393
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	c.bnez	a0,0000000023050804

l230507FE:
	addi	s0,zero,-00000037
	c.j	0000000023050590

l23050804:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a5,00000001
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.mv	a1,s0
	c.li	a2,00000000
	addi	a0,s2,-00000393
	jal	ra,000000002304E790
	c.mv	s0,a0
	beq	a0,zero,0000000023050618

l23050828:
	c.j	0000000023050590

l2305082A:
	lui	a5,000230BB
	lw	a0,a5,+00000460
	lw	a1,a5,+00000464
	c.j	00000000230507BA

l23050838:
	jal	ra,000000002304B71A
	c.mv	s0,a0
	bne	a0,zero,0000000023050590

l23050842:
	jal	ra,000000002305005A
	c.j	0000000023050590

;; bt_addr_le_is_bonded: 23050848
;;   Called from:
;;     2304BD10 (in disconnected_cb)
;;     2304DD0E (in bt_gatt_connected)
;;     2304DE2C (in bt_gatt_disconnected)
bt_addr_le_is_bonded proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230558A8
	c.beqz	a0,0000000023050860

l23050852:
	lhu	a0,a0,+0000000A
	sltu	a0,zero,a0

l2305085A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23050860:
	c.li	a0,00000000
	c.j	000000002305085A

;; bt_le_adv_start_internal: 23050864
;;   Called from:
;;     23050B78 (in bt_le_adv_start)
bt_le_adv_start_internal proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200E
	c.swsp	s2,00000020
	c.mv	s2,a0
	addi	a0,s0,-000002A0
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
	jal	ra,000000002304DEC4
	c.li	s1,FFFFFFF5
	c.beqz	a0,00000000230508B2

l230508A0:
	addi	s0,s0,-000002A0
	lbu	a0,s2,+00000000
	lbu	a5,s0,+00000007
	bltu	a0,a5,00000000230508D0

l230508B0:
	c.li	s1,FFFFFFEA

l230508B2:
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

l230508D0:
	c.li	a5,00000007
	add	a0,a0,a5
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	c.add	a0,s0
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230508B0

l230508EC:
	lbu	a5,s2,+00000001
	lui	s3,0004200E
	addi	s3,s3,-00000234
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023050914

l230508FE:
	lbu	a3,s0,+00000010
	c.li	a4,00000008
	bltu	a4,a3,0000000023050914

l23050908:
	lhu	a3,s2,+00000002
	addi	a4,zero,+0000009F
	bgeu	a4,a3,00000000230508B0

l23050914:
	lbu	a4,s0,+00000093
	c.bnez	a4,000000002305092A

l2305091A:
	andi	a4,a5,+00000040
	c.bnez	a4,00000000230508B0

l23050920:
	slli	a4,a5,00000018
	c.srai	a4,00000018
	blt	a4,zero,00000000230508B0

l2305092A:
	c.andi	a5,00000010
	c.bnez	a5,0000000023050932

l2305092E:
	bne	s5,zero,000000002305094A

l23050932:
	lhu	a4,s2,+00000002
	lhu	a5,s2,+00000004
	bltu	a5,a4,00000000230508B0

l2305093E:
	c.li	a3,0000001F
	bgeu	a3,a4,00000000230508B0

l23050944:
	c.lui	a4,00004000
	bltu	a4,a5,00000000230508B0

l2305094A:
	c.li	a1,00000006
	c.mv	a0,s3
	jal	ra,000000002304DEC4
	c.mv	s1,a0
	bne	a0,zero,0000000023050B1C

l23050958:
	c.li	a2,0000000F
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	lhu	a5,s2,+00000002
	lbu	a4,s0,+00000008
	sh	a5,sp,+00000010
	lhu	a5,s2,+00000004
	sh	a5,sp,+00000012
	lui	a5,0004200F
	lbu	a5,a5,-000003C4
	sb	a5,sp,+0000001D
	lbu	a5,s2,+00000000
	beq	a4,a5,0000000023050994

l2305098A:
	c.lui	a1,FFFF0000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s3
	jal	ra,0000000023048EE2

l23050994:
	lbu	a5,s2,+00000001
	slli	a4,a5,00000018
	andi	a5,a5,+00000040
	c.srai	a4,00000018
	c.beqz	a5,00000000230509F2

l230509A4:
	c.li	a5,00000003
	blt	a4,zero,00000000230509AC

l230509AA:
	c.li	a5,00000001

l230509AC:
	sb	a5,sp,+0000001E

l230509B0:
	lbu	s4,s2,+00000000
	sb	s4,s0,+00000008
	lbu	a5,s2,+00000001
	andi	s10,a5,+00000001
	beq	s10,zero,0000000023050ABA

l230509C4:
	c.li	a0,00000007
	add	a0,s4,a0
	add	a5,s0,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	beq	a4,a5,00000000230509FE

l230509D8:
	c.li	a5,00000007
	add	s4,s4,a5
	c.add	s4,s0
	lbu	a5,s4,+00000000
	sb	a5,sp,+00000015
	bne	s5,zero,0000000023050A0C

l230509EC:
	sb	zero,sp,+00000014
	c.j	0000000023050A44

l230509F2:
	c.li	a5,00000002
	blt	a4,zero,00000000230509AC

l230509F8:
	sb	zero,sp,+0000001E
	c.j	00000000230509B0

l230509FE:
	c.addi	a0,00000001
	c.add	a0,s0
	jal	ra,000000002304E92C
	c.mv	s1,a0
	c.beqz	a0,00000000230509D8

l23050A0A:
	c.j	00000000230508B2

l23050A0C:
	lbu	a5,s2,+00000001
	c.andi	a5,00000010
	c.beqz	a5,0000000023050A16

l23050A14:
	c.li	s10,00000004

l23050A16:
	c.mv	a1,s5
	addi	a0,sp,+00000016
	sb	s10,sp,+00000014
	jal	ra,000000002304DEDC
	lbu	a5,s0,+00000070
	andi	a5,a5,+00000040
	c.beqz	a5,0000000023050A44

l23050A2E:
	lbu	a5,s2,+00000001
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023050A44

l23050A38:
	lbu	a5,sp,+00000015
	ori	a5,a5,+00000002
	sb	a5,sp,+00000015

l23050A44:
	c.lui	s4,00002000
	c.li	a1,0000000F
	addi	a0,s4,+00000006
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	addi	s1,zero,-00000037
	beq	a0,zero,00000000230508B2

l23050A5A:
	c.li	a2,0000000F
	c.addi4spn	a1,00000010
	c.addi	a0,00000008
	jal	ra,00000000230492F0
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s4,+00000006
	jal	ra,000000002304E790
	c.mv	s1,a0
	bne	a0,zero,00000000230508B2

l23050A76:
	beq	s5,zero,0000000023050AFE

l23050A7A:
	c.li	a0,00000001
	jal	ra,000000002304EA9E
	c.mv	s1,a0
	bne	a0,zero,00000000230508B2

l23050A86:
	lbu	a2,s2,+00000001
	c.mv	a0,s3
	c.li	a1,00000009
	c.srli	a2,00000001
	xori	a2,a2,+00000001
	c.andi	a2,00000001
	jal	ra,000000002304DF60
	lbu	a2,s2,+00000001
	c.mv	a0,s3
	c.li	a1,00000007
	c.srli	a2,00000003
	c.andi	a2,00000001
	jal	ra,000000002304DF60
	lbu	a2,s2,+00000001
	c.li	a1,00000008
	c.mv	a0,s3
	c.andi	a2,00000001
	jal	ra,000000002304DF60
	c.j	00000000230508B2

l23050ABA:
	c.andi	a5,00000004
	c.bnez	a5,0000000023050ACC

l23050ABE:
	c.li	a5,00000002
	bne	s6,zero,0000000023050AC6

l23050AC4:
	c.li	a5,00000003

l23050AC6:
	sb	a5,sp,+00000014
	c.j	0000000023050A44

l23050ACC:
	c.li	a0,00000007
	add	a0,s4,a0
	add	a5,s0,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023050AEA

l23050AE0:
	c.addi	a0,00000001
	c.add	a0,s0
	jal	ra,000000002304E92C
	c.mv	s1,a0

l23050AEA:
	c.li	a5,00000007
	add	s4,s4,a5
	c.add	s0,s4
	lbu	a5,s0,+00000000
	sb	a5,sp,+00000015
	c.beqz	s1,0000000023050ABE

l23050AFC:
	c.j	00000000230508B2

l23050AFE:
	lbu	a4,s2,+00000001
	c.mv	a3,s9
	c.mv	a2,s6
	srli	a5,a4,00000003
	c.andi	a5,00000001
	c.andi	a4,00000001
	c.mv	a1,s8
	c.mv	a0,s7
	jal	ra,000000002304ECC6
	c.mv	s1,a0
	c.beqz	a0,0000000023050A7A

l23050B1A:
	c.j	00000000230508B2

l23050B1C:
	addi	s1,zero,-00000045
	c.j	00000000230508B2

;; set_adv_channel_map: 23050B22
;;   Called from:
;;     23056010 (in ble_set_adv_channel)
set_adv_channel_map proc
	addi	a5,a0,-00000001
	andi	a5,a5,+000000FF
	c.li	a4,00000006
	bltu	a4,a5,0000000023050B3C

l23050B30:
	lui	a5,0004200F
	sb	a0,a5,+00000C3C
	c.li	a0,00000000
	c.jr	ra

l23050B3C:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bt_get_local_public_address: 23050B40
;;   Called from:
;;     2303AD36 (in blemesh_init)
;;     230569E4 (in ble_read_local_address)
bt_get_local_public_address proc
	lui	a1,0004200E
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-000002A0
	c.swsp	ra,00000084
	jal	ra,000000002304DEDC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_get_local_ramdon_address: 23050B58
;;   Called from:
;;     23056A00 (in ble_read_local_address)
bt_get_local_ramdon_address proc
	lui	a1,0004200E
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000297
	c.swsp	ra,00000084
	jal	ra,000000002304DEDC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_le_adv_start: 23050B70
;;   Called from:
;;     2303CB32 (in adv_thread)
;;     230457BC (in bt_mesh_proxy_adv_start)
;;     230458D4 (in bt_mesh_proxy_adv_start)
;;     23045936 (in bt_mesh_proxy_adv_start)
;;     23055F56 (in ble_start_advertise)
bt_le_adv_start proc
	lbu	a5,a0,+00000001
	c.andi	a5,00000010
	c.bnez	a5,0000000023050B7C

l23050B78:
	jal	zero,0000000023050864

l23050B7C:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_le_adv_stop: 23050B80
;;   Called from:
;;     2303CB82 (in adv_thread)
;;     230459E4 (in bt_mesh_proxy_adv_stop)
;;     2304B09A (in bt_conn_disconnect)
;;     23055DF6 (in ble_stop_advertise)
bt_le_adv_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000234
	addi	a1,zero,-00000201
	c.mv	a0,s0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023048EE2
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,0000000023050BB2

l23050BA4:
	c.li	s1,00000000

l23050BA6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23050BB2:
	c.li	a0,00000000
	jal	ra,000000002304EA9E
	c.mv	s1,a0
	c.bnez	a0,0000000023050BA6

l23050BBC:
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.beqz	a0,0000000023050BA4

l23050BC6:
	c.li	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.beqz	a0,0000000023050BA4

l23050BD0:
	jal	ra,000000002304E9A8
	c.j	0000000023050BA6

;; bt_le_scan_start: 23050BD6
;;   Called from:
;;     2303CDF8 (in bt_mesh_scan_enable)
;;     23056820 (in ble_start_scan)
bt_le_scan_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,0004200E
	addi	s3,s3,-000002A0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a0
	c.mv	s4,a1
	addi	a0,s3,+0000006C
	c.li	a1,00000001
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	jal	ra,000000002304DEC4
	c.li	s0,FFFFFFF5
	c.beqz	a0,0000000023050C88

l23050BFE:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	c.li	s0,FFFFFFEA
	bltu	a5,a4,0000000023050C88

l23050C0A:
	lbu	a5,s1,+00000001
	andi	a4,a5,-00000004
	c.bnez	a4,0000000023050C88

l23050C14:
	lbu	a4,s3,+00000093
	lui	s2,0004200E
	addi	s2,s2,-00000234
	c.bnez	a4,0000000023050C26

l23050C22:
	c.andi	a5,00000002
	c.bnez	a5,0000000023050C88

l23050C26:
	lhu	a2,s1,+00000002
	c.lui	a5,00004000
	c.addi	a5,FFFFFFFC
	addi	a4,a2,-00000004
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	s0,FFFFFFEA
	bltu	a5,a4,0000000023050C88

l23050C3C:
	lhu	a3,s1,+00000004
	addi	a4,a3,-00000004
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a4,0000000023050C88

l23050C4C:
	bltu	a2,a3,0000000023050C88

l23050C50:
	c.lui	s0,00001000
	addi	a1,s0,-00000800
	c.mv	a0,s2
	addi	s0,s0,-00000800
	jal	ra,0000000023048EBA
	c.and	a0,s0
	addi	s0,zero,-00000045
	c.bnez	a0,0000000023050C88

l23050C68:
	c.li	a1,0000000A
	c.mv	a0,s2
	jal	ra,000000002304DEC4
	c.beqz	a0,0000000023050C9A

l23050C72:
	c.li	a0,00000000
	jal	ra,000000002304E89A
	c.mv	s0,a0
	c.beqz	a0,0000000023050C9A

l23050C7C:
	c.lui	a1,FFFFF000
	addi	a1,a1,+000007FF
	c.mv	a0,s2
	jal	ra,0000000023048EE2

l23050C88:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23050C9A:
	lbu	a2,s1,+00000001
	c.li	a1,0000000D
	c.mv	a0,s2
	c.andi	a2,00000001
	jal	ra,000000002304DF60
	lbu	a2,s1,+00000001
	c.li	a1,0000000E
	c.mv	a0,s2
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002304DF60
	lhu	a2,s1,+00000004
	lhu	a1,s1,+00000002
	lbu	a0,s1,+00000000
	jal	ra,000000002304F38A
	c.mv	s0,a0
	c.bnez	a0,0000000023050C7C

l23050CCC:
	lui	a5,0004200F
	sw	s4,a5,+00000484
	c.j	0000000023050C88

;; bt_le_scan_stop: 23050CD6
;;   Called from:
;;     2303CE2A (in bt_mesh_scan_disable)
;;     2305602E (in ble_stop_scan)
bt_le_scan_stop proc
	c.lui	a1,FFFFF000
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000007FF
	addi	a0,a0,-00000234
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	slli	a5,a0,00000014
	bge	a5,zero,0000000023050D06

l23050CF4:
	c.lwsp	a2,00000020
	lui	a5,0004200F
	sw	zero,a5,+00000484
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002304F478

l23050D06:
	c.lwsp	a2,00000020
	addi	a0,zero,-00000045
	c.addi	sp,00000010
	c.jr	ra

;; bt_set_tx_pwr: 23050D10
;;   Called from:
;;     23055A2A (in ble_set_tx_pwr)
bt_set_tx_pwr proc
	andi	a4,a0,+000000FF
	c.li	a5,00000014
	bltu	a5,a4,0000000023050D68

l23050D1A:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000001
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,00000000230A3A68
	c.lui	s1,00010000
	c.li	a1,00000001
	addi	a0,s1,-0000039F
	sb	s0,sp,+0000000C
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	addi	a0,zero,-00000037
	c.beqz	s0,0000000023050D5E

l23050D46:
	c.li	a2,00000001
	c.addi4spn	a1,0000000C
	addi	a0,s0,+00000008
	jal	ra,00000000230492F0
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,-0000039F
	jal	ra,000000002304E790

l23050D5E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23050D68:
	c.li	a0,00000012
	c.jr	ra

;; bt_buf_get_rx_avail_cnt: 23050D6C
;;   Called from:
;;     23049D6A (in bl_onchiphci_rx_packet_handler)
bt_buf_get_rx_avail_cnt proc
	c.addi	sp,FFFFFFF0
	lui	a0,0004200F
	c.swsp	s0,00000004
	addi	s0,a0,-000000C4
	addi	a0,a0,-000000C4
	c.swsp	ra,00000084
	jal	ra,0000000023048B24
	lhu	a5,s0,+0000000E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.add	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_buf_get_rx: 23050D90
;;   Called from:
;;     23049D5A (in bl_onchiphci_rx_packet_handler)
;;     23049F22 (in bl_handle_queued_msg)
;;     23050DEE (in bt_buf_get_cmd_complete)
bt_buf_get_rx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0004200F
	addi	a0,a0,-000000C4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023049098
	c.mv	s0,a0
	c.beqz	a0,0000000023050DB6

l23050DAA:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230490EC
	sb	s1,s0,+00000014

l23050DB6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_buf_get_cmd_complete: 23050DC2
;;   Called from:
;;     23049D1E (in bl_onchiphci_rx_packet_handler)
bt_buf_get_cmd_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,0000000023048C54
	lui	a5,0004200E
	addi	a5,a5,-000002A0
	lw	s0,a5,+000000A4
	sw	zero,a5,+000000A4
	jal	ra,0000000023048C64
	c.lwsp	a2,00000064
	c.bnez	s0,0000000023050DF2

l23050DE6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023050D90

l23050DF2:
	c.li	a5,00000001
	addi	a0,s0,+00000008
	sb	a5,s0,+00000014
	sh	zero,s0,+0000000C
	c.li	a1,00000001
	jal	ra,00000000230490EC
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bt_pub_key_gen: 23050E10
;;   Called from:
;;     23043828 (in reset_state)
;;     23055508 (in bt_smp_init)
bt_pub_key_gen proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	a5,s0,-000002A0
	lbu	a5,a5,+00000042
	c.li	a4,00000006
	c.andi	a5,00000006
	beq	a5,a4,0000000023050E4C

l23050E2E:
	lui	a0,000230BB
	addi	a0,a0,+000001D8
	jal	ra,0000000023082388
	addi	s2,zero,-00000023

l23050E3E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23050E4C:
	lui	s1,0004200F
	lw	a5,s1,+00000478
	addi	s0,s0,-000002A0
	addi	s1,s1,+00000478
	c.beqz	a5,0000000023050E72

l23050E5E:
	c.lw	a0,0(a3)

l23050E60:
	c.lw	a5,0(a4)
	beq	a3,a4,0000000023050E74

l23050E66:
	c.lw	a5,4(a4)
	c.bnez	a4,0000000023050E6E

l23050E6A:
	c.sw	a5,4(a0)
	c.j	0000000023050E74

l23050E6E:
	c.mv	a5,a4
	c.j	0000000023050E60

l23050E72:
	c.sw	s1,0(a0)

l23050E74:
	addi	s0,s0,+0000006C
	addi	a1,zero,+00000020
	c.mv	a0,s0
	jal	ra,0000000023048EBA
	andi	a0,a0,+00000020
	c.li	s2,00000000
	c.bnez	a0,0000000023050E3E

l23050E8A:
	c.li	a1,FFFFFFEF
	c.mv	a0,s0
	jal	ra,0000000023048EE2
	c.lui	a0,00002000
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,+00000025
	jal	ra,000000002304E790
	c.mv	s2,a0
	c.beqz	a0,0000000023050E3E

l23050EA4:
	lui	a0,000230BB
	addi	a0,a0,+000001FC
	jal	ra,0000000023082388
	addi	a1,zero,-00000021
	c.mv	a0,s0
	jal	ra,0000000023048EE2
	sw	zero,s1,+00000000
	c.j	0000000023050E3E

;; bt_pub_key_get: 23050EC0
;;   Called from:
;;     23043D88 (in prov_pub_key)
;;     230444F0 (in send_pub_key)
;;     2305390E (in smp_init)
bt_pub_key_get proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	c.li	a1,00000004
	addi	a0,a0,-00000234
	c.swsp	ra,00000084
	jal	ra,000000002304DEC4
	c.li	a5,00000000
	c.beqz	a0,0000000023050EDE

l23050ED6:
	lui	a5,00042016
	addi	a5,a5,+000007E4

l23050EDE:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_dh_key_gen: 23050EE6
;;   Called from:
;;     23043D4C (in prov_dh_key_gen)
bt_dh_key_gen proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+00000470
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.beqz	a5,0000000023050F10

l23050EFE:
	c.li	a5,FFFFFFF0

l23050F00:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23050F10:
	lui	s1,0004200E
	addi	s1,s1,-00000234
	c.mv	s3,a1
	c.mv	s2,a0
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002304DEC4
	c.bnez	a0,0000000023050EFE

l23050F26:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002304DEC4
	addi	a5,zero,-00000031
	c.beqz	a0,0000000023050F00

l23050F34:
	sw	s3,s0,+00000000
	c.lui	s3,00002000
	addi	a1,zero,+00000040
	addi	a0,s3,+00000026
	jal	ra,000000002304E6F6
	c.mv	s1,a0
	c.bnez	a0,0000000023050F54

l23050F4A:
	sw	zero,s0,+00000000
	addi	a5,zero,-00000037
	c.j	0000000023050F00

l23050F54:
	addi	a1,zero,+00000040
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	addi	a2,zero,+00000040
	c.mv	a1,s2
	jal	ra,00000000230A382C
	c.li	a2,00000000
	c.mv	a1,s1
	addi	a0,s3,+00000026
	jal	ra,000000002304E790
	c.mv	a5,a0
	c.beqz	a0,0000000023050F00

l23050F78:
	sw	zero,s0,+00000000
	c.j	0000000023050F00

;; sys_slist_remove: 23050F7E
;;   Called from:
;;     23050FF6 (in __l2cap_lookup_ident)
;;     23051068 (in l2cap_remove_rx_cid)
;;     230512A4 (in bt_l2cap_chan_remove)
sys_slist_remove proc
	c.lw	a2,0(a5)
	c.bnez	a1,0000000023050F92

l23050F82:
	c.lw	a0,4(a4)
	c.sw	a0,0(a5)
	bne	a4,a2,0000000023050F8C

l23050F8A:
	c.sw	a0,4(a5)

l23050F8C:
	sw	zero,a2,+00000000
	c.jr	ra

l23050F92:
	c.sw	a1,0(a5)
	c.lw	a0,4(a5)
	bne	a5,a2,0000000023050F8C

l23050F9A:
	c.sw	a0,4(a1)
	c.j	0000000023050F8C

;; net_buf_frags_len: 23050F9E
;;   Called from:
;;     23051614 (in l2cap_chan_le_send)
;;     2305166A (in l2cap_chan_le_send)
;;     2305175E (in l2cap_chan_le_send_sdu)
;;     23051B22 (in l2cap_chan_le_recv_seg)
;;     23051BBC (in l2cap_chan_le_recv_seg)
;;     23051BE2 (in l2cap_chan_le_recv_seg)
net_buf_frags_len proc
	c.mv	a5,a0
	c.li	a0,00000000

l23050FA2:
	c.bnez	a5,0000000023050FA6

l23050FA4:
	c.jr	ra

l23050FA6:
	lhu	a4,a5,+0000000C
	c.lw	a5,0(a5)
	c.add	a0,a4
	c.j	0000000023050FA2

;; get_ident: 23050FB0
;;   Called from:
;;     230513EE (in l2cap_chan_send_credits.isra.10)
;;     2305145C (in l2cap_le_conn_req)
;;     23051A20 (in bt_l2cap_update_conn_param)
;;     23051A9C (in bt_l2cap_chan_disconnect)
get_ident proc
	lui	a5,0004200F
	lbu	a4,a5,+0000048C
	addi	a5,a5,+0000048C
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.beqz	a4,0000000023050FCE

l23050FC4:
	sb	a4,a5,+00000000
	lbu	a0,a5,+00000000
	c.jr	ra

l23050FCE:
	c.li	a4,00000001
	c.j	0000000023050FC4

;; __l2cap_lookup_ident: 23050FD2
__l2cap_lookup_ident proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,64(s0)
	c.beqz	s0,0000000023050FFA

l23050FDC:
	c.addi	s0,FFFFFFF8
	c.li	a5,00000000

l23050FE0:
	c.beqz	s0,0000000023050FFA

l23050FE2:
	lbu	a4,s0,+0000003C
	bne	a4,a1,0000000023051004

l23050FEA:
	c.beqz	a2,0000000023050FFA

l23050FEC:
	addi	a2,s0,+00000008
	c.mv	a1,a5
	addi	a0,a0,+00000040
	jal	ra,0000000023050F7E

l23050FFA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23051004:
	c.lw	s0,8(a4)
	c.beqz	a4,0000000023051012

l23051008:
	addi	a5,s0,+00000008
	addi	s0,a4,-00000008
	c.j	0000000023050FE0

l23051012:
	c.li	s0,00000000
	c.j	0000000023050FFA

;; l2cap_server_lookup_psm: 23051016
l2cap_server_lookup_psm proc
	lui	a5,0004200F
	lw	a5,a5,+00000490

l2305101E:
	c.beqz	a5,0000000023051024

l23051020:
	c.addi	a5,FFFFFFF8
	c.bnez	a5,0000000023051028

l23051024:
	c.mv	a0,a5
	c.jr	ra

l23051028:
	lhu	a4,a5,+00000000
	beq	a4,a0,0000000023051024

l23051030:
	c.lw	a5,8(a5)
	c.j	000000002305101E

;; l2cap_remove_rx_cid: 23051034
l2cap_remove_rx_cid proc
	addi	a5,a1,-00000040
	c.addi	sp,FFFFFFF0
	c.slli	a5,10
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.srli	a5,00000010
	addi	a4,zero,+0000003F
	c.li	s0,00000000
	bltu	a4,a5,000000002305106C

l2305104C:
	c.lw	a0,64(s0)
	c.beqz	s0,000000002305106C

l23051050:
	c.addi	s0,FFFFFFF8
	c.li	a5,00000000

l23051054:
	c.beqz	s0,000000002305106C

l23051056:
	lhu	a4,s0,+00000040
	addi	a2,s0,+00000008
	bne	a4,a1,0000000023051076

l23051062:
	c.mv	a1,a5
	addi	a0,a0,+00000040
	jal	ra,0000000023050F7E

l2305106C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23051076:
	c.lw	s0,8(s0)
	c.beqz	s0,000000002305106C

l2305107A:
	c.addi	s0,FFFFFFF8
	c.mv	a5,a2
	c.j	0000000023051054

;; l2cap_chan_sdu_sent: 23051080
l2cap_chan_sdu_sent proc
	c.lw	a1,4(a5)
	lw	t1,a5,+00000014
	beq	t1,zero,000000002305108E

l2305108A:
	c.mv	a0,a1
	c.jr	t1

l2305108E:
	c.jr	ra

;; l2cap_alloc_frag: 23051090
l2cap_alloc_frag proc
	c.lw	a1,4(a5)
	c.mv	a0,a1
	lw	t1,a5,+0000000C
	c.jr	t1

;; l2cap_connected: 2305109A
l2cap_connected proc
	c.jr	ra

;; l2cap_chan_destroy: 2305109C
l2cap_chan_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002304986E
	c.lw	s0,116(a0)
	c.beqz	a0,00000000230510B8

l230510B0:
	jal	ra,00000000230491C0
	sw	zero,s0,+00000074

l230510B8:
	addi	s1,s0,+00000068

l230510BC:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230490A4
	c.bnez	a0,00000000230510EE

l230510C6:
	addi	s1,s0,+0000008C

l230510CA:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230490A4
	c.bnez	a0,00000000230510F4

l230510D4:
	c.lw	s0,120(a0)
	c.beqz	a0,00000000230510E4

l230510D8:
	jal	ra,00000000230491C0
	sw	zero,s0,+00000078
	sh	zero,s0,+0000007C

l230510E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230510EE:
	jal	ra,00000000230491C0
	c.j	00000000230510BC

l230510F4:
	jal	ra,00000000230491C0
	c.j	00000000230510CA

;; l2cap_chan_tx_init: 230510FA
l2cap_chan_tx_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000014
	c.mv	s0,a0
	c.li	a1,00000000
	addi	a0,a0,+00000054
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.li	a1,00000000
	addi	a0,s0,+0000005C
	c.li	a2,FFFFFFFF
	jal	ra,0000000023048B2A
	addi	a0,s0,+00000068
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000014
	c.addi	sp,00000010
	jal	zero,0000000023048A3E

;; l2cap_chan_rx_init: 2305112A
l2cap_chan_rx_init proc
	lhu	a5,a0,+00000042
	c.bnez	a5,0000000023051138

l23051130:
	addi	a5,zero,+000000F5
	sh	a5,a0,+00000042

l23051138:
	lhu	a5,a0,+00000046
	lhu	a4,a0,+00000042
	c.bnez	a5,0000000023051158

l23051142:
	c.lw	a0,4(a5)
	c.lw	a5,12(a5)
	c.beqz	a5,0000000023051178

l23051148:
	addi	a5,a4,+000000F6
	addi	a3,zero,+000000F7
	xor	a5,a5,a3

l23051154:
	sh	a5,a0,+00000046

l23051158:
	addi	a3,zero,+000000F5
	c.mv	a5,a4
	bgeu	a3,a4,0000000023051166

l23051162:
	addi	a5,zero,+000000F5

l23051166:
	c.addi	a5,00000002
	sh	a5,a0,+00000044
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	addi	a0,a0,+00000048
	jal	zero,0000000023048B2A

l23051178:
	c.li	a5,00000009
	c.j	0000000023051154

;; l2cap_accept: 2305117C
l2cap_accept proc
	lui	a5,00042017
	addi	a4,a5,-000007DC
	c.lw	a4,0(a3)
	addi	a5,a5,-000007DC
	c.beqz	a3,00000000230511AC

l2305118C:
	lw	a4,a4,+00000098
	c.beqz	a4,00000000230511C8

l23051192:
	c.mv	a1,a0
	lui	a0,000230BB
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006AC
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

l230511AC:
	c.li	a4,00000000

l230511AE:
	addi	a3,zero,+00000098
	add	a4,a4,a3
	c.li	a0,00000000
	c.add	a5,a4
	lui	a4,0004200E
	addi	a4,a4,-00000178
	c.sw	a5,4(a4)
	c.sw	a1,0(a5)
	c.jr	ra

l230511C8:
	c.li	a4,00000001
	c.j	00000000230511AE

;; l2cap_create_le_sig_pdu.isra.7: 230511CC
;;   Called from:
;;     230513F8 (in l2cap_chan_send_credits.isra.10)
;;     2305146A (in l2cap_le_conn_req)
;;     23051566 (in l2cap_send_reject)
;;     23051A2A (in bt_l2cap_update_conn_param)
;;     23051AAA (in bt_l2cap_chan_disconnect)
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
	jal	ra,000000002304B4A6
	c.mv	s1,a0
	c.bnez	a0,000000002305120C

l230511EE:
	lui	a0,000230BB
	c.mv	a1,s2
	addi	a0,a0,+00000728
	jal	ra,0000000023082388

l230511FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305120C:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s0,a0,+00000002
	c.srli	s0,00000008
	sb	s2,a0,+00000000
	sb	s3,a0,+00000001
	sb	s0,a0,+00000003
	c.j	00000000230511FC

;; l2cap_chan_tx_give_credits: 23051228
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

l2305123C:
	c.addi	a1,FFFFFFFF
	c.slli	a1,10
	c.srli	a1,00000010
	bne	a1,s1,0000000023051270

l23051246:
	addi	s1,s0,+00000034
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023048EBA
	c.andi	a0,00000001
	c.beqz	a0,000000002305127C

l23051256:
	c.lw	s0,4(a5)
	lw	t1,a5,+00000018
	beq	t1,zero,000000002305127C

l23051260:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l23051270:
	c.mv	a0,s2
	c.swsp	a1,00000084
	jal	ra,0000000023048B7E
	c.lwsp	a2,00000064
	c.j	000000002305123C

l2305127C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; l2cap_disconnected: 23051288
l2cap_disconnected proc
	c.jr	ra

;; bt_l2cap_chan_remove: 2305128A
;;   Called from:
;;     23051316 (in l2cap_rtx_timeout)
;;     23051502 (in bt_l2cap_encrypt_change)
bt_l2cap_chan_remove proc
	c.lw	a0,64(a5)
	c.beqz	a5,0000000023051294

l2305128E:
	c.addi	a5,FFFFFFF8
	c.li	a4,00000000

l23051292:
	c.bnez	a5,0000000023051296

l23051294:
	c.jr	ra

l23051296:
	addi	a2,a5,+00000008
	bne	a5,a1,00000000230512A8

l2305129E:
	c.mv	a1,a4
	addi	a0,a0,+00000040
	jal	zero,0000000023050F7E

l230512A8:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023051294

l230512AC:
	c.addi	a5,FFFFFFF8
	c.mv	a4,a2
	c.j	0000000023051292

;; bt_l2cap_chan_del: 230512B2
;;   Called from:
;;     23051324 (in l2cap_rtx_timeout)
;;     2305133E (in bt_l2cap_disconnected)
;;     23051508 (in bt_l2cap_encrypt_change)
bt_l2cap_chan_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230512CA

l230512BE:
	c.lw	a0,4(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,00000000230512C6

l230512C4:
	c.jalr	a5

l230512C6:
	sw	zero,s0,+00000000

l230512CA:
	c.lw	s0,12(a5)
	sb	zero,s0,+00000038
	sh	zero,s0,+0000003A
	c.beqz	a5,00000000230512DA

l230512D6:
	c.mv	a0,s0
	c.jalr	a5

l230512DA:
	c.lw	s0,32(a5)
	c.beqz	a5,00000000230512EC

l230512DE:
	addi	a0,s0,+00000010
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230497D6

l230512EC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; l2cap_rtx_timeout: 230512F4
l2cap_rtx_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	s0,a0,-00000010
	c.mv	s1,a0
	lui	a0,000230BC
	c.mv	a1,s0
	addi	a0,a0,-000006C0
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lw	a0,s1,-00000010
	c.mv	a1,s0
	jal	ra,000000002305128A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230512B2

;; bt_l2cap_disconnected: 23051328
;;   Called from:
;;     2304B35E (in conn_update_timeout)
bt_l2cap_disconnected proc
	c.lw	a0,64(a5)
	c.beqz	a5,0000000023051358

l2305132C:
	addi	a0,a5,-00000008
	c.beqz	a0,0000000023051358

l23051332:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,0(s0)
	c.beqz	s0,000000002305133E

l2305133C:
	c.addi	s0,FFFFFFF8

l2305133E:
	jal	ra,00000000230512B2
	c.beqz	s0,0000000023051350

l23051344:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002305134A

l23051348:
	c.addi	a5,FFFFFFF8

l2305134A:
	c.mv	a0,s0
	c.mv	s0,a5
	c.j	000000002305133E

l23051350:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23051358:
	c.jr	ra

;; bt_l2cap_create_pdu_timeout: 2305135A
;;   Called from:
;;     2305317E (in smp_create_pdu.isra.7)
;;     230583CC (in bt_att_create_pdu)
bt_l2cap_create_pdu_timeout proc
	c.addi	a1,00000004
	jal	zero,000000002304B4A6

;; bt_l2cap_send_cb: 23051360
;;   Called from:
;;     230513B8 (in bt_l2cap_send)
;;     2305170C (in l2cap_chan_le_send)
;;     230531BC (in smp_send.isra.9)
;;     23053E28 (in smp_error)
;;     23055382 (in bt_smp_start_security)
;;     23057C74 (in att_send)
;;     23057D04 (in att_send_req)
;;     2305810C (in bt_att_encrypt_change)
;;     23058430 (in att_indicate)
;;     23058498 (in att_mtu_req)
;;     2305851C (in send_err_rsp.part.7)
;;     23058740 (in att_read_group_req)
;;     23058798 (in att_read_mult_req)
;;     2305888E (in att_read_rsp)
;;     230589D4 (in att_read_type_req)
;;     23058AE6 (in att_find_type_req)
;;     23058B8E (in att_find_info_req)
;;     23058C5A (in att_write_rsp.constprop.10)
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
	jal	ra,0000000023049382
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
	jal	zero,000000002304A85E

;; bt_l2cap_send: 230513B4
;;   Called from:
;;     23051438 (in l2cap_chan_send_credits.isra.10)
;;     230514D6 (in l2cap_le_conn_req)
;;     230515A8 (in l2cap_send_reject)
;;     2305173A (in l2cap_chan_le_send)
;;     23051A7A (in bt_l2cap_update_conn_param)
;;     23051AEE (in bt_l2cap_chan_disconnect)
bt_l2cap_send proc
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,0000000023051360

;; l2cap_chan_send_credits.isra.10: 230513BC
;;   Called from:
;;     23051C14 (in l2cap_chan_le_recv_seg)
;;     23051C5C (in l2cap_chan_le_recv_seg)
;;     23051D48 (in l2cap_rx_process)
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
	bgeu	a1,s0,00000000230513D6

l230513D4:
	c.mv	s0,a1

l230513D6:
	c.slli	s0,10
	c.srli	s0,00000010
	c.lui	s3,00010000
	c.mv	s1,s0
	c.addi	s3,FFFFFFFF
	addi	s4,s2,+00000048

l230513E4:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s1,s3,000000002305143C

l230513EE:
	jal	ra,0000000023050FB0
	c.li	a2,00000004
	c.mv	a1,a0
	c.li	a0,00000016
	jal	ra,00000000230511CC
	c.mv	a2,a0
	c.beqz	a0,0000000023051444

l23051400:
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
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
	jal	zero,00000000230513B4

l2305143C:
	c.mv	a0,s4
	jal	ra,0000000023048B7E
	c.j	00000000230513E4

l23051444:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; l2cap_le_conn_req: 23051454
;;   Called from:
;;     2305152E (in bt_l2cap_encrypt_change)
l2cap_le_conn_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023050FB0
	c.mv	a1,a0
	sb	a0,s0,+0000003C
	c.li	a2,0000000A
	c.li	a0,00000014
	jal	ra,00000000230511CC
	c.beqz	a0,00000000230514E4

l23051470:
	c.mv	a2,a0
	c.li	a1,0000000A
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
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
	jal	ra,00000000230498CA
	c.lw	s0,0(a0)
	c.lwsp	a2,00000084
	c.li	a1,00000005
	jal	ra,00000000230513B4
	c.li	a0,00000000

l230514DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230514E4:
	c.li	a0,FFFFFFF4
	c.j	00000000230514DC

;; bt_l2cap_encrypt_change: 230514E8
;;   Called from:
;;     2304E29E (in hci_encrypt_key_refresh_complete)
;;     2304E2F4 (in hci_encrypt_key_refresh_complete)
;;     2304E346 (in hci_encrypt_change)
;;     2304E3A6 (in hci_encrypt_change)
bt_l2cap_encrypt_change proc
	c.lw	a0,64(a5)
	c.bnez	a5,0000000023051534

l230514EC:
	c.jr	ra

l230514EE:
	lbu	a5,s0,+00000038
	bne	a5,s2,000000002305150C

l230514F6:
	lbu	a5,s0,+0000003C
	c.bnez	a5,000000002305150C

l230514FC:
	c.beqz	s1,000000002305152C

l230514FE:
	c.lw	s0,0(a0)
	c.mv	a1,s0
	jal	ra,000000002305128A
	c.mv	a0,s0
	jal	ra,00000000230512B2

l2305150C:
	c.lw	s0,4(a5)
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023051518

l23051512:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5

l23051518:
	c.lw	s0,8(s0)
	c.beqz	s0,0000000023051520

l2305151C:
	c.addi	s0,FFFFFFF8

l2305151E:
	c.bnez	s0,00000000230514EE

l23051520:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305152C:
	c.mv	a0,s0
	jal	ra,0000000023051454
	c.j	000000002305150C

l23051534:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	addi	s0,a5,-00000008
	c.li	s2,00000001
	c.j	000000002305151E

;; l2cap_send_reject: 23051548
;;   Called from:
;;     2305211C (in l2cap_recv)
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
	jal	ra,00000000230511CC
	c.beqz	a0,00000000230515AC

l2305156C:
	addi	s2,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,00000000230492DE
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	beq	s3,zero,0000000023051592

l23051588:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230492F0

l23051592:
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
	jal	zero,00000000230513B4

l230515AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; l2cap_chan_le_send: 230515BE
;;   Called from:
;;     2305178A (in l2cap_chan_le_send_sdu)
;;     230517EA (in l2cap_chan_le_send_sdu)
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
	jal	ra,0000000023048B5E
	bne	a0,zero,0000000023051740

l230515E6:
	lhu	a5,s0,+0000000C
	lhu	a4,s2,+00000058
	c.add	a5,s3
	bltu	a4,a5,0000000023051646

l230515F4:
	addi	s1,s0,+00000008
	c.mv	a0,s1
	jal	ra,00000000230494D6
	addi	a5,s3,+00000009
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a0,a5,0000000023051646

l2305160A:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023051646

l2305160E:
	beq	s3,zero,0000000023051624

l23051612:
	c.mv	a0,s0
	jal	ra,0000000023050F9E
	slli	a1,a0,00000010
	c.srli	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023049396

l23051624:
	c.mv	a0,s0
	jal	ra,000000002304926E
	c.mv	s1,a0
	c.bnez	a0,00000000230516BC

l2305162E:
	c.li	s3,FFFFFFF4

l23051630:
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

l23051646:
	lbu	a0,s0,+00000006
	jal	ra,0000000023048F0C
	c.li	a1,00000000
	jal	ra,0000000023049098
	c.mv	s1,a0
	c.beqz	a0,00000000230516CE

l23051658:
	c.li	a1,00000009
	c.addi	a0,00000008
	jal	ra,00000000230490EC

l23051660:
	addi	s5,s1,+00000008
	beq	s3,zero,000000002305167A

l23051668:
	c.mv	a0,s0
	jal	ra,0000000023050F9E
	slli	a1,a0,00000010
	c.srli	a1,00000010
	c.mv	a0,s5
	jal	ra,000000002304931C

l2305167A:
	c.mv	a0,s5
	jal	ra,00000000230494E0
	lhu	a5,s2,+00000058
	sub	a5,a5,s3
	bgeu	a0,a5,00000000230516DC

l2305168C:
	c.mv	a0,s5
	jal	ra,00000000230494E0
	c.slli	a0,10

l23051694:
	lhu	a1,s0,+0000000C
	c.srli	a0,00000010
	bgeu	a0,a1,00000000230516A0

l2305169E:
	c.mv	a1,a0

l230516A0:
	slli	s4,a1,00000010
	c.lw	s0,8(a1)
	srli	s4,s4,00000010
	c.mv	a2,s4
	c.mv	a0,s5
	jal	ra,00000000230492F0
	c.mv	a1,s4
	addi	a0,s0,+00000008
	jal	ra,00000000230493EC

l230516BC:
	lw	a0,s2,+00000000
	c.bnez	a0,00000000230516E2

l230516C2:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	addi	s3,zero,-00000036
	c.j	0000000023051630

l230516CE:
	c.li	a2,FFFFFFFF
	c.li	a1,00000004
	jal	ra,000000002304B4A6
	c.mv	s1,a0
	c.bnez	a0,0000000023051660

l230516DA:
	c.j	000000002305162E

l230516DC:
	slli	a0,a5,00000010
	c.j	0000000023051694

l230516E2:
	lhu	a5,s1,+0000000C
	lhu	a1,s2,+00000054
	sub	s3,a5,s3
	beq	s0,s1,00000000230516F8

l230516F2:
	lhu	a5,s0,+0000000C
	c.bnez	a5,0000000023051738

l230516F8:
	lw	a5,s2,+00000004
	c.lw	a5,20(a5)
	c.beqz	a5,0000000023051738

l23051700:
	lui	a3,00023051
	c.mv	a4,s2
	addi	a3,a3,+00000080
	c.mv	a2,s1
	jal	ra,0000000023051360

l23051710:
	c.mv	a0,s6
	jal	ra,0000000023048BE0
	bne	a0,zero,0000000023051630

l2305171A:
	addi	s0,s2,+00000034
	c.li	a1,FFFFFFFE
	c.mv	a0,s0
	jal	ra,0000000023048EE2
	lw	a5,s2,+00000004
	c.lw	a5,24(a5)
	beq	a5,zero,0000000023051630

l23051730:
	c.mv	a1,s0
	c.mv	a0,s2
	c.jalr	a5
	c.j	0000000023051630

l23051738:
	c.mv	a2,s1
	jal	ra,00000000230513B4
	c.j	0000000023051710

l23051740:
	c.li	s3,FFFFFFF5
	c.j	0000000023051630

;; l2cap_chan_le_send_sdu: 23051744
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
	jal	ra,0000000023050F9E
	lhu	a5,sp,+0000000E
	lhu	a4,s2,+00000056
	addi	s1,zero,-00000024
	add	s4,a5,a0
	blt	a4,s4,00000000230517AC

l23051776:
	lhu	a4,s0,+0000000C
	c.bnez	a4,0000000023051782

l2305177C:
	c.lw	s0,0(a4)
	c.beqz	a4,0000000023051782

l23051780:
	c.mv	s0,a4

l23051782:
	c.bnez	a5,00000000230517C2

l23051784:
	c.li	a2,00000002
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230515BE
	c.mv	s1,a0
	bge	a0,zero,00000000230517BE

l23051794:
	c.li	a5,FFFFFFF5
	bne	s1,a5,00000000230517A8

l2305179A:
	c.li	a2,00000002
	addi	a1,sp,+0000000E
	addi	a0,s0,+00000014
	jal	ra,00000000230A382C

l230517A8:
	sw	s0,s3,+00000000

l230517AC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230517BE:
	sh	a0,sp,+0000000E

l230517C2:
	c.li	s1,00000000

l230517C4:
	lhu	a5,sp,+0000000E
	blt	a5,s4,00000000230517D4

l230517CC:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.j	00000000230517AC

l230517D4:
	lhu	a5,s0,+0000000C
	c.bnez	a5,00000000230517E4

l230517DA:
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,00000000230492BC
	c.mv	s0,a0

l230517E4:
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230515BE
	c.mv	s1,a0
	blt	a0,zero,0000000023051794

l230517F4:
	lhu	a5,sp,+0000000E
	c.add	a5,a0
	sh	a5,sp,+0000000E
	c.j	00000000230517C4

;; bt_l2cap_le_lookup_tx_cid: 23051800
;;   Called from:
;;     23053D80 (in smp_check_complete.part.16)
;;     23058138 (in att_pdu_sent)
;;     23058206 (in att_req_sent)
;;     2305823C (in att_cfm_sent)
bt_l2cap_le_lookup_tx_cid proc
	c.lw	a0,64(a0)

l23051802:
	c.beqz	a0,0000000023051808

l23051804:
	c.addi	a0,FFFFFFF8
	c.bnez	a0,000000002305180A

l23051808:
	c.jr	ra

l2305180A:
	lhu	a5,a0,+00000054
	beq	a5,a1,0000000023051808

l23051812:
	c.lw	a0,8(a0)
	c.j	0000000023051802

;; bt_l2cap_le_lookup_rx_cid: 23051816
;;   Called from:
;;     23051856 (in l2cap_chan_add)
;;     230519BC (in bt_l2cap_recv)
;;     230525B8 (in smp_chan_get)
;;     230581C2 (in att_chan_get)
bt_l2cap_le_lookup_rx_cid proc
	c.lw	a0,64(a0)

l23051818:
	c.beqz	a0,000000002305181E

l2305181A:
	c.addi	a0,FFFFFFF8
	c.bnez	a0,0000000023051820

l2305181E:
	c.jr	ra

l23051820:
	lhu	a5,a0,+00000040
	beq	a5,a1,000000002305181E

l23051828:
	c.lw	a0,8(a0)
	c.j	0000000023051818

;; l2cap_chan_add: 2305182C
;;   Called from:
;;     23051940 (in bt_l2cap_connected)
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
	c.beqz	a1,0000000023051848

l23051842:
	lhu	a5,a1,+00000040
	c.bnez	a5,0000000023051860

l23051848:
	addi	s1,zero,+00000040
	addi	s4,zero,+00000080

l23051850:
	c.beqz	s0,00000000230518D4

l23051852:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023051816
	c.bnez	a0,00000000230518D4

l2305185C:
	sh	s1,s0,+00000040

l23051860:
	lui	a1,00023051
	addi	a1,a1,+000002F4
	addi	a0,s0,+00000010
	jal	ra,0000000023049780
	sw	zero,s0,+00000008
	lw	a4,s2,+00000044
	addi	a5,s0,+00000008
	c.bnez	a4,00000000230518EE

l2305187E:
	sw	a5,s2,+00000044
	sw	a5,s2,+00000040

l23051886:
	lhu	a5,s0,+00000040
	sw	s2,s0,+00000000
	sw	s3,s0,+0000000C
	addi	a5,a5,-00000040
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+0000003F
	c.li	s1,00000001
	bltu	a4,a5,00000000230518C2

l230518A4:
	lui	a1,00023052
	addi	a1,a1,-0000039E
	addi	a0,s0,+00000080
	jal	ra,0000000023049750
	c.li	a1,00000014
	addi	a0,s0,+0000008C
	jal	ra,0000000023048A3E
	sb	s1,s0,+00000038

l230518C2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230518D4:
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s1,s4,0000000023051850

l230518DE:
	lui	a0,000230BB
	addi	a0,a0,+000006D8
	jal	ra,0000000023082388
	c.li	s1,00000000
	c.j	00000000230518C2

l230518EE:
	c.sw	a4,0(a5)
	sw	a5,s2,+00000044
	c.j	0000000023051886

;; bt_l2cap_connected: 230518F6
bt_l2cap_connected proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s0,0004200F
	lui	s1,0004200F
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s0,s0,-0000007C
	addi	s1,s1,-00000058

l23051912:
	bltu	s0,s1,0000000023051922

l23051916:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23051922:
	c.lw	s0,4(a5)
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	c.jalr	a5
	blt	a0,zero,000000002305196A

l2305192E:
	c.lwsp	a2,00000064
	lhu	a5,s0,+00000000
	c.li	a2,00000000
	c.mv	a0,s2
	sh	a5,a1,+00000040
	sh	a5,a1,+00000054
	jal	ra,000000002305182C
	c.beqz	a0,0000000023051916

l23051946:
	c.lwsp	a2,00000044
	c.lw	a0,4(a5)
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023051950

l2305194E:
	c.jalr	a5

l23051950:
	c.lwsp	a2,00000044
	c.li	a1,00000001
	addi	a0,a0,+00000034
	jal	ra,0000000023048EBA
	c.lwsp	a2,00000044
	c.lw	a0,4(a5)
	c.lw	a5,24(a5)
	c.beqz	a5,000000002305196A

l23051964:
	addi	a1,a0,+00000034
	c.jalr	a5

l2305196A:
	c.addi	s0,0000000C
	c.j	0000000023051912

;; bt_l2cap_recv: 2305196E
;;   Called from:
;;     2304A85A (in bt_conn_recv)
bt_l2cap_recv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a1,+0000000C
	c.li	a5,00000003
	c.mv	s0,a1
	bltu	a5,a4,00000000230519A0

l23051984:
	lui	a0,000230BB
	addi	a0,a0,+00000664
	jal	ra,0000000023082388

l23051990:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230491C0

l230519A0:
	c.mv	s2,a0
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,0000000023049400
	lbu	s1,a0,+00000003
	lbu	a5,a0,+00000002
	c.mv	a0,s2
	c.slli	s1,08
	c.or	s1,a5
	c.mv	a1,s1
	jal	ra,0000000023051816
	c.mv	s2,a0
	c.bnez	a0,00000000230519D4

l230519C4:
	lui	a0,000230BB
	c.mv	a1,s1
	addi	a0,a0,+00000684
	jal	ra,0000000023082388
	c.j	0000000023051990

l230519D4:
	lhu	a5,a0,+00000040
	addi	a4,zero,+0000003F
	addi	a5,a5,-00000040
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,0000000023051A0A

l230519E8:
	c.mv	a0,s0
	jal	ra,000000002304926E
	c.mv	a1,a0
	addi	a0,s2,+0000008C
	jal	ra,00000000230491A6
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a0,s2,+00000080
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023049772

l23051A0A:
	c.lw	a0,4(a5)
	c.mv	a1,s0
	c.lw	a5,16(a5)
	c.jalr	a5
	c.j	0000000023051990

;; bt_l2cap_update_conn_param: 23051A14
;;   Called from:
;;     2304B30C (in send_conn_le_param_update)
;;     2304E0C6 (in le_conn_update_complete)
bt_l2cap_update_conn_param proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s1,a0
	jal	ra,0000000023050FB0
	c.mv	a1,a0
	c.li	a2,00000008
	c.li	a0,00000012
	jal	ra,00000000230511CC
	c.beqz	a0,0000000023051A8A

l23051A30:
	c.mv	a2,a0
	c.li	a1,00000008
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
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
	jal	ra,00000000230513B4
	c.li	a0,00000000

l23051A80:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23051A8A:
	c.li	a0,FFFFFFF4
	c.j	0000000023051A80

;; bt_l2cap_init: 23051A8E
;;   Called from:
;;     2304B772 (in bt_conn_init)
bt_l2cap_init proc
	c.jr	ra

;; bt_l2cap_chan_disconnect: 23051A90
;;   Called from:
;;     23051B5E (in l2cap_chan_le_recv_seg)
;;     23051C4C (in l2cap_chan_le_recv_seg)
;;     23051CDA (in l2cap_rx_process)
bt_l2cap_chan_disconnect proc
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023051B02

l23051A94:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s0,a0
	jal	ra,0000000023050FB0
	c.mv	a1,a0
	sb	a0,s0,+0000003C
	c.li	a2,00000004
	c.li	a0,00000006
	jal	ra,00000000230511CC
	c.mv	a2,a0
	c.li	a0,FFFFFFF4
	c.beqz	a2,0000000023051AFA

l23051AB4:
	addi	a0,a2,+00000008
	c.li	a1,00000004
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
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
	jal	ra,00000000230498CA
	c.lw	s0,0(a0)
	c.lwsp	a2,00000084
	c.li	a1,00000005
	jal	ra,00000000230513B4
	c.li	a5,00000004
	sb	a5,s0,+00000038
	c.li	a0,00000000

l23051AFA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23051B02:
	addi	a0,zero,-00000039
	c.jr	ra

;; l2cap_chan_le_recv_seg: 23051B08
;;   Called from:
;;     23051CF0 (in l2cap_rx_process)
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
	jal	ra,0000000023050F9E
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.mv	s1,a0
	c.beqz	a5,0000000023051B3E

l23051B30:
	c.li	a2,00000002
	addi	a1,s3,+00000014
	addi	a0,sp,+0000000E
	jal	ra,00000000230A382C

l23051B3E:
	lhu	a5,s2,+0000000C
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s1,a5
	lhu	a5,s0,+0000007C
	bge	a5,s1,0000000023051B70

l23051B50:
	lui	a0,000230BB
	addi	a0,a0,+000006F8

l23051B58:
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,0000000023051A90

l23051B62:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23051B70:
	lhu	a5,sp,+0000000E
	c.lw	s0,120(a0)
	c.li	a2,00000002
	c.addi	a5,00000001
	addi	a1,sp,+0000000E
	c.addi	a0,00000014
	sh	a5,sp,+0000000E
	jal	ra,00000000230A382C
	lw	a2,s2,+00000008
	lhu	a1,s2,+0000000C
	c.lw	s0,120(a0)
	lui	a4,00023051
	c.mv	a5,s0
	addi	a4,a4,+00000090
	c.li	a3,00000000
	jal	ra,00000000230494F8
	lhu	a5,s2,+0000000C
	c.slli	a0,10
	c.srli	a0,00000010
	beq	a5,a0,0000000023051BB8

l23051BAE:
	lui	a0,000230BB
	addi	a0,a0,+00000710
	c.j	0000000023051B58

l23051BB8:
	c.lw	s0,120(s1)
	c.mv	a0,s1
	jal	ra,0000000023050F9E
	lhu	a5,s0,+0000007C
	bgeu	a0,a5,0000000023051C1A

l23051BC8:
	addi	s3,s0,+00000048
	c.mv	a0,s3
	jal	ra,0000000023048BE0
	c.bnez	a0,0000000023051B62

l23051BD4:
	lhu	a4,s0,+00000046
	lhu	a5,sp,+0000000E
	bne	a4,a5,0000000023051B62

l23051BE0:
	c.mv	a0,s2
	jal	ra,0000000023050F9E
	lhu	a1,s0,+00000044
	lhu	s1,s0,+0000007C
	c.add	s1,a1
	c.addi	s1,FFFFFFFF
	c.sub	s1,a0
	srl	s1,s1,a1
	c.mv	a0,s3
	jal	ra,0000000023048BE0
	sub	a0,s1,a0
	slli	a1,a0,00000010
	c.srli	a1,00000010
	slli	a5,a1,00000010
	c.srai	a5,00000010
	bge	zero,a5,0000000023051B62

l23051C12:
	c.mv	a0,s0
	jal	ra,00000000230513BC
	c.j	0000000023051B62

l23051C1A:
	c.lw	s0,4(a5)
	sw	zero,s0,+00000078
	sh	zero,s0,+0000007C
	c.lw	a5,16(a5)
	c.mv	a1,s1
	c.mv	a0,s0
	lhu	s2,sp,+0000000E
	c.jalr	a5
	c.mv	a1,a0
	bge	a0,zero,0000000023051C58

l23051C36:
	addi	a5,zero,-00000044
	beq	a0,a5,0000000023051B62

l23051C3E:
	lui	a0,000230B8
	addi	a0,a0,-0000078C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,0000000023051A90

l23051C50:
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.j	0000000023051B62

l23051C58:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230513BC
	c.j	0000000023051C50

;; l2cap_rx_process: 23051C62
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
	lui	s6,000230B8
	lui	s7,000230BC
	lui	s8,000230BC
	lui	s9,000230BC

l23051C9E:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230490A4
	c.mv	s2,a0
	c.bnez	a0,0000000023051CC6

l23051CAA:
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

l23051CC6:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023048B5E
	c.beqz	a0,0000000023051CE6

l23051CD0:
	addi	a0,s9,-000006AC

l23051CD4:
	jal	ra,0000000023082388

l23051CD8:
	c.mv	a0,s0
	jal	ra,0000000023051A90

l23051CDE:
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.j	0000000023051C9E

l23051CE6:
	lw	a5,s1,-00000008
	c.beqz	a5,0000000023051CF6

l23051CEC:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023051B08
	c.j	0000000023051CDE

l23051CF6:
	addi	a0,s2,+00000008
	jal	ra,0000000023049430
	lhu	a5,s1,-0000003E
	c.mv	s10,a0
	addi	a0,s8,-0000068C
	bltu	a5,s10,0000000023051CD4

l23051D0C:
	lw	a5,s1,-0000007C
	c.lw	a5,12(a4)
	c.beqz	a4,0000000023051D2A

l23051D14:
	c.mv	a0,s0
	c.jalr	a4
	sw	a0,s1,+00000FF8
	c.bnez	a0,0000000023051D24

l23051D1E:
	addi	a0,s7,-00000674
	c.j	0000000023051CD4

l23051D24:
	sh	s10,s1,+00000FFC
	c.j	0000000023051CEC

l23051D2A:
	c.lw	a5,16(a5)
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,0000000023051D44

l23051D36:
	beq	a0,s5,0000000023051CDE

l23051D3A:
	addi	a0,s6,-0000078C
	jal	ra,0000000023082388
	c.j	0000000023051CD8

l23051D44:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230513BC
	c.j	0000000023051CDE

;; l2cap_recv: 23051D4E
l2cap_recv proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	lhu	a4,a1,+0000000C
	c.li	a5,00000003
	bltu	a5,a4,0000000023051D7E

l23051D70:
	lui	a0,000230BB
	addi	a0,a0,+00000754

l23051D78:
	jal	ra,0000000023082388
	c.j	0000000023051DB0

l23051D7E:
	c.mv	s0,a1
	c.mv	s2,a0
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,0000000023049400
	lbu	a2,a0,+00000003
	lbu	a5,a0,+00000002
	c.mv	s3,a0
	c.slli	a2,08
	c.or	a2,a5
	lhu	a5,s0,+0000000C
	beq	a2,a5,0000000023051DCC

l23051DA2:
	lui	a0,000230BB
	c.mv	a1,a5
	addi	a0,a0,+00000774
	jal	ra,0000000023082388

l23051DB0:
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
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23051DCC:
	lbu	s1,a0,+00000001
	c.bnez	s1,0000000023051DDC

l23051DD2:
	lui	a0,000230BB
	addi	a0,a0,+00000798
	c.j	0000000023051D78

l23051DDC:
	lbu	a1,a0,+00000000
	c.li	a3,00000015
	addi	a4,a1,-00000001
	andi	a4,a4,+000000FF
	bltu	a3,a4,00000000230522F4

l23051DEE:
	lui	a3,000230BB
	c.slli	a4,02
	addi	a3,a3,+0000060C
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.jr	a4
23051DFE                                           05 47               .G
23051E00 E3 68 F7 FA 37 B5 0B 23 13 05 C5 7B B5 B7 A5 4B .h..7..#...{...K
23051E10 63 E7 FB 00 37 B5 0B 23 13 05 C5 7D B1 BF 1C 44 c...7..#...}...D
23051E20 03 CA 57 00 03 C7 47 00 22 0A 33 6A EA 00 59 47 ..W...G.".3j..YG
23051E30 63 7B 47 01 83 CA 77 00 83 C6 67 00 A2 0A B3 EA c{G...w...g.....
23051E40 DA 00 63 67 57 01 37 C5 0B 23 13 05 05 80 2D B7 ..cgW.7..#....-.
23051E50 03 C4 17 00 03 C7 07 00 03 2B 09 00 22 04 03 C9 .........+.."...
23051E60 37 00 59 8C 03 C7 27 00 83 C9 97 00 22 09 33 69 7.Y...'.....".3i
23051E70 E9 00 03 C7 87 00 A2 09 29 46 A6 85 55 45 B3 E9 ........)F..UE..
23051E80 E9 00 EF F0 AF B4 AA 8C 05 D5 A9 45 21 05 EF 70 ...........E!..p
23051E90 0F C5 29 46 81 45 AA 84 EF 10 15 3D 22 85 EF F0 ..)F.E.....="...
23051EA0 8F 97 2A 8C 89 47 01 C9 03 47 9B 00 83 47 25 00 ..*..G...G...G%.
23051EB0 63 76 F7 00 95 47 23 94 F4 00 19 A8 93 07 09 FC cv...G#.........
23051EC0 C2 07 C1 83 13 07 F0 03 63 7A F7 00 23 94 74 01 ........cz..#.t.
23051ED0 66 86 95 45 5A 85 EF F0 EF CD D9 BD CA 85 5A 85 f..EZ.........Z.
23051EE0 EF F0 1F 92 2A CC A9 47 79 F5 83 27 4C 00 2C 08 ....*..Gy..'L.,.
23051EF0 5A 85 82 97 63 57 05 02 4D 57 99 47 E3 0D E5 FA Z...cW..MW.G....
23051F00 CD 57 63 C9 A7 00 13 07 D0 FD 89 47 E3 05 E5 FA .Wc........G....
23051F10 AD 47 55 B7 51 57 91 47 E3 0F E5 F8 7D 57 9D 47 .GU.QW.G....}W.G
23051F20 F5 B7 83 47 2C 00 E2 45 37 16 05 23 13 06 C6 09 ...G,..E7..#....
23051F30 A3 8E F5 02 5A 85 EF F0 7F 8F 91 47 2D DD 62 44 ....Z......G-.bD
23051F40 22 85 EF F0 8F 9B CE 85 23 1A 24 05 23 1B 44 05 ".......#.$.#.D.
23051F50 23 1D 34 05 22 85 23 1C 54 05 EF F0 EF AC 22 85 #.4.".#.T.....".
23051F60 EF F0 AF 9C 03 59 64 04 C1 69 FD 19 13 0A 84 04 .....Yd..i......
23051F70 7D 19 42 09 13 59 09 01 63 11 39 05 62 45 83 57 }.B..Y..c.9.bE.W
23051F80 0C 00 23 1D F5 02 8D 47 23 0C F5 02 5C 41 9C 43 ..#....G#...\A.C
23051F90 91 C3 82 97 83 57 04 04 23 90 F4 00 83 57 44 04 .....W..#....WD.
23051FA0 23 92 F4 00 83 57 24 04 23 91 F4 00 83 57 64 04 #....W$.#....Wd.
23051FB0 23 94 04 00 23 93 F4 00 21 BF 52 85 EF 60 3F BC #...#...!.R..`?.
23051FC0 45 BF 25 47 63 67 F7 00 37 C5 0B 23 13 05 05 82 E.%Gcg..7..#....
23051FD0 65 B3 1C 44 83 29 09 00 93 95 04 01 03 D9 87 00 e..D.)..........
23051FE0 83 DB 07 00 03 DB 27 00 83 DA 47 00 03 DA 67 00 ......'...G...g.
23051FF0 93 77 79 FF C1 81 89 C7 95 47 05 46 63 13 F9 00 .wy......G.Fc...
23052000 01 46 4E 85 EF E0 FF FC 2A 84 09 E9 37 C5 0B 23 .FN.....*...7..#
23052010 A6 85 13 05 45 84 EF 00 23 37 59 BB 41 05 EF 70 ....E...#7Y.A..p
23052020 1F 85 95 47 23 0E 04 02 63 08 F9 04 A1 47 63 05 ...G#...c....Gc.
23052030 F9 04 63 1C 09 06 8D 47 23 0C F4 02 5C 40 23 1A ..c....G#...\@#.
23052040 74 05 23 1B 64 05 23 1C 54 05 9C 43 99 C3 22 85 t.#.d.#.T..C..".
23052050 82 97 22 85 D2 85 41 69 EF F0 0F 9D 7D 19 83 54 .."...Ai....}..T
23052060 64 04 13 04 84 04 FD 14 C2 04 C1 80 E3 82 24 D5 d.............$.
23052070 22 85 EF 60 DF B0 C5 BF 95 47 63 0C F9 02 A1 47 "..`.....Gc....G
23052080 63 11 F9 02 03 47 D4 03 85 47 63 EC E7 00 89 47 c....G...Gc....G
23052090 A3 0E F4 02 83 45 D4 03 08 40 EF 80 2F E0 E3 09 .....E...@../...
230520A0 05 D0 A2 85 4E 85 EF F0 4F 9E 22 85 EF F0 6F A0 ....N...O."...o.
230520B0 01 B3 83 47 D4 03 05 47 E3 7B F7 FC 09 47 63 94 ...G...G.{...Gc.
230520C0 E7 00 8D 47 F1 B7 0D 47 E3 9D E7 FC 91 47 C9 B7 ...G...G.....G..
230520D0 0D 47 E3 71 F7 D4 00 44 83 29 09 00 83 47 14 00 .G.q...D.)...G..
230520E0 83 45 04 00 4E 85 A2 07 DD 8D EF E0 BF F4 2A 89 .E..N.........*.
230520F0 0D E9 83 47 34 00 03 47 24 00 34 08 A2 07 D9 8F ...G4..G$.4.....
23052100 23 1C F1 00 83 47 14 00 03 47 04 00 09 46 A2 07 #....G...G...F..
23052110 D9 8F 23 1D F1 00 11 47 A6 85 4E 85             ..#....G..N.   

l2305211C:
	jal	ra,0000000023051548
	c.j	0000000023051DB0
23052122       11 46 A6 85 1D 45 EF F0 4F 8A 2A 86 E3 01   .F...E..O.*...
23052130 05 C8 91 45 21 05 32 C6 EF 70 6F 9A 83 57 09 04 ...E!.2..po..W..
23052140 23 00 F5 00 A1 83 A3 00 F5 00 83 57 49 05 23 01 #..........WI.#.
23052150 F5 00 A1 83 A3 01 F5 00 4A 85 EF F0 8F 95 32 46 ........J.....2F
23052160 95 45 4E 85 8D BB 0D 47 63 67 F7 00 37 C5 0B 23 .EN....Gcg..7..#
23052170 13 05 85 86 11 B1 1C 44 03 25 09 00 83 C5 27 00 .......D.%....'.
23052180 83 C7 37 00 A2 07 DD 8D EF E0 DF EA 05 F1 0D B1 ..7.............
23052190 0D 47 63 67 F7 00 37 C5 0B 23 13 05 05 89 E9 BE .Gcg..7..#......
230521A0 04 44 03 25 09 00 83 C7 14 00 83 C5 04 00 A2 07 .D.%............
230521B0 DD 8D EF F0 EF E4 2A 84 11 E5 37 C5 0B 23 13 05 ......*...7..#..
230521C0 45 8B 5D BE 83 C5 34 00 83 C7 24 00 13 05 C5 05 E.]...4...$.....
230521D0 A2 05 DD 8D 2E C6 EF 60 BF A0 B2 45 C1 67 2E 95 .......`...E.g..
230521E0 63 6C F5 00 37 C5 0B 23 13 05 45 8E EF 00 C3 19 cl..7..#..E.....
230521F0 22 85 EF F0 FF 89 6D BE 22 85 EF F0 EF 82 93 04 ".....m.".......
23052200 84 06 68 58 05 C5 23 2A 04 06 2A CC E3 02 05 BA ..hX..#*..*.....
23052210 03 56 45 01 2C 08 22 85 EF F0 CF D2 E3 53 05 FE .VE.,."......S..
23052220 D5 57 E3 17 F5 B8 E2 47 7C D8 59 B6 81 45 26 85 .W.....G|.Y..E&.
23052230 EF 60 5F E7 D9 BF 03 25 09 00 05 46 A6 85 EF E0 .`_....%...F....
23052240 5F D9 A9 B7 1D 47 63 67 F7 00 37 C5 0B 23 13 05 _....Gcg..7..#..
23052250 85 8F 1D B6 03 29 09 00 83 47 39 00 99 C7 01 47 .....)...G9....G
23052260 81 46 01 46 A6 85 4A 85 55 BD 1C 44 09 46 A6 85 .F.F..J.U..D.F..
23052270 03 C7 17 00 83 C6 07 00 4D 45 22 07 55 8F 23 1C ........ME".U.#.
23052280 E1 00 03 C7 37 00 83 C6 27 00 22 07 55 8F 23 1D ....7...'.".U.#.
23052290 E1 00 03 C7 57 00 83 C6 47 00 22 07 55 8F 23 1E ....W...G.".U.#.
230522A0 E1 00 03 C7 67 00 83 C7 77 00 A2 07 D9 8F 23 1F ....g...w.....#.
230522B0 F1 00 EF E0 BF F1 2A 84 E3 0C 05 AE 2C 08 4A 85 ......*.....,.J.
230522C0 EF 80 CF A0 AA 84 89 45 13 05 84 00 EF 70 2F 81 .......E.....p/.
230522D0 93 C7 14 00 23 00 F5 00 A3 00 05 00 22 86 95 45 ....#......."..E
230522E0 4A 85 EF F0 2F 8D E3 85 04 AC 2C 08 4A 85 EF 80 J.../.....,.J...
230522F0 DF F4 7D BC                                     ..}.           

l230522F4:
	lui	a0,000230BC
	addi	a0,a0,-000006E0
	jal	ra,0000000023082388
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	lbu	a1,s3,+00000001
	lw	a0,s2,+00000000
	c.j	000000002305211C

;; uuid_to_uuid128: 23052310
;;   Called from:
;;     230523AA (in bt_uuid_cmp)
;;     230523B2 (in bt_uuid_cmp)
uuid_to_uuid128 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+00000000
	c.li	a3,00000001
	c.mv	s0,a0
	c.mv	a5,a1
	beq	a4,a3,0000000023052354

l23052324:
	c.beqz	a4,0000000023052334

l23052326:
	c.li	a3,00000002
	beq	a4,a3,0000000023052384

l2305232C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23052334:
	lui	a1,000230BC
	c.li	a2,00000011
	addi	a1,a1,-00000630
	c.mv	a0,a5
	jal	ra,00000000230A382C
	lhu	a4,s0,+00000002
	sb	a4,a0,+0000000D
	c.srli	a4,00000008
	sb	a4,a0,+0000000E
	c.j	000000002305232C

l23052354:
	lui	a1,000230BC
	c.li	a2,00000011
	addi	a1,a1,-00000630
	c.mv	a0,a5
	jal	ra,00000000230A382C
	c.lw	s0,4(a4)
	slli	a3,a4,00000010
	sb	a4,a0,+0000000D
	c.srli	a3,00000010
	c.srli	a4,00000010
	c.srli	a3,00000008
	sb	a4,a0,+0000000F
	c.srli	a4,00000008
	sb	a3,a0,+0000000E
	sb	a4,a0,+00000010
	c.j	000000002305232C

l23052384:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	c.li	a2,00000011
	c.mv	a0,a5
	c.addi	sp,00000010
	jal	zero,00000000230A382C

;; bt_uuid_cmp: 23052394
;;   Called from:
;;     2304C55A (in bt_gatt_foreach_attr_type)
;;     2304C61C (in bt_gatt_foreach_attr_type)
;;     2304C676 (in bt_gatt_service_register)
;;     2304C6A6 (in bt_gatt_service_register)
;;     2304C84C (in bt_gatt_notify_cb)
;;     2304C93C (in bt_gatt_indicate)
;;     2304D2A2 (in gatt_read_type_rsp)
;;     2304D39E (in gatt_read_type_rsp)
;;     2304D44A (in read_included_uuid_cb)
;;     2304D522 (in gatt_find_info_rsp)
;;     2304D534 (in gatt_find_info_rsp)
;;     2304D546 (in gatt_find_info_rsp)
;;     2304D55C (in gatt_find_info_rsp)
;;     2304D58A (in gatt_find_info_rsp)
;;     230577BE (in read_group_cb)
;;     230577D4 (in read_group_cb)
;;     23057812 (in read_group_cb)
;;     230578D4 (in read_type_cb)
;;     230579D6 (in find_type_cb)
;;     230579EC (in find_type_cb)
;;     23057A96 (in find_type_cb)
;;     2305868C (in att_read_group_req)
;;     23058728 (in att_read_group_req)
;;     23058A48 (in att_find_type_req)
bt_uuid_cmp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	lbu	a3,a0,+00000000
	lbu	a4,a1,+00000000
	c.mv	s0,a1
	beq	a4,a3,00000000230523C6

l230523A8:
	c.addi4spn	a1,00000008
	jal	ra,0000000023052310
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,0000000023052310
	c.li	a2,00000010
	addi	a1,sp,+0000001D
	addi	a0,sp,+00000009

l230523C0:
	jal	ra,00000000230A37A4
	c.j	00000000230523EC

l230523C6:
	c.li	a3,00000001
	c.mv	a5,a0
	beq	a4,a3,00000000230523F4

l230523CE:
	c.beqz	a4,00000000230523E2

l230523D0:
	c.li	a3,00000002
	c.li	a0,FFFFFFEA
	bne	a4,a3,00000000230523EC

l230523D8:
	c.li	a2,00000010
	c.addi	a1,00000001
	addi	a0,a5,+00000001
	c.j	00000000230523C0

l230523E2:
	lhu	a0,a0,+00000002
	lhu	a5,a1,+00000002

l230523EA:
	c.sub	a0,a5

l230523EC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l230523F4:
	c.lw	a0,4(a0)
	c.lw	a1,4(a5)
	c.j	00000000230523EA

;; bt_uuid_create: 230523FA
;;   Called from:
;;     23057A5C (in find_type_cb)
;;     23057A80 (in find_type_cb)
;;     23058668 (in att_read_group_req)
;;     23058934 (in att_read_type_req)
bt_uuid_create proc
	c.li	a5,00000004
	beq	a2,a5,000000002305242A

l23052400:
	c.li	a5,00000010
	c.mv	a3,a2
	beq	a2,a5,0000000023052450

l23052408:
	c.li	a2,00000002
	c.li	a5,00000000
	bne	a3,a2,0000000023052426

l23052410:
	sb	zero,a0,+00000000
	lbu	a5,a1,+00000001
	lbu	a4,a1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+00000002

l23052424:
	c.li	a5,00000001

l23052426:
	c.mv	a0,a5
	c.jr	ra

l2305242A:
	c.li	a5,00000001
	sb	a5,a0,+00000000
	lbu	a5,a1,+00000003
	lbu	a3,a1,+00000002
	lbu	a4,a1,+00000000
	c.slli	a5,08
	c.or	a5,a3
	lbu	a3,a1,+00000001
	c.slli	a5,10
	c.slli	a3,08
	c.or	a4,a3
	c.or	a5,a4
	c.sw	a0,4(a5)
	c.j	0000000023052424

l23052450:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a5,00000002
	sb	a5,a0,+00000000
	c.addi	a0,00000001
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a5,00000001
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_uuid_to_str: 2305246A
;;   Called from:
;;     230560CA (in discover_func)
;;     230560EC (in discover_func)
;;     23056114 (in discover_func)
;;     230561DE (in discover_func)
bt_uuid_to_str proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	lbu	a5,a0,+00000000
	c.li	a4,00000001
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	beq	a5,a4,00000000230524B6

l23052484:
	c.beqz	a5,0000000023052496

l23052486:
	c.li	a4,00000002
	beq	a5,a4,00000000230524BA

l2305248C:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	c.j	00000000230524AA

l23052496:
	lhu	a3,a0,+00000002

l2305249A:
	lui	a2,000230BC
	addi	a2,a2,-00000638
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230823DA

l230524AA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230524B6:
	c.lw	a0,4(a3)
	c.j	000000002305249A

l230524BA:
	addi	a1,a0,+00000001
	c.li	a2,00000002
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	addi	a1,s0,+00000003
	c.li	a2,00000004
	c.addi4spn	a0,00000018
	jal	ra,00000000230A382C
	addi	a1,s0,+00000007
	c.li	a2,00000002
	addi	a0,sp,+00000012
	jal	ra,00000000230A382C
	addi	a1,s0,+00000009
	c.li	a2,00000002
	c.addi4spn	a0,00000014
	jal	ra,00000000230A382C
	addi	a1,s0,+0000000B
	c.li	a2,00000002
	addi	a0,sp,+00000016
	jal	ra,00000000230A382C
	addi	a1,s0,+0000000D
	c.li	a2,00000004
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A382C
	lhu	a5,sp,+00000010
	c.lwsp	s8,00000028
	lhu	a6,sp,+00000012
	c.swsp	a5,00000000
	lhu	a4,sp,+00000016
	lhu	a5,sp,+00000014
	c.lwsp	t3,000000A4
	lui	a2,000230BC
	addi	a2,a2,-00000650
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230823DA
	c.j	00000000230524AA

;; sys_memcpy_swap: 2305252E
;;   Called from:
;;     23052762 (in smp_sign_buf)
;;     230527D2 (in smp_f4)
;;     230527DE (in smp_f4)
;;     230527EE (in smp_f4)
;;     230528EC (in smp_f5)
;;     23052910 (in smp_f5)
;;     2305291C (in smp_f5)
;;     23052932 (in smp_f5)
;;     23052948 (in smp_f5)
;;     230529B8 (in smp_f6)
;;     230529C2 (in smp_f6)
;;     230529CE (in smp_f6)
;;     230529DA (in smp_f6)
;;     230529FC (in smp_f6)
;;     23052A22 (in smp_f6)
;;     23052A2C (in smp_f6)
;;     23052A72 (in smp_g2)
;;     23052A7E (in smp_g2)
;;     23052A8A (in smp_g2)
;;     23052A94 (in smp_g2)
sys_memcpy_swap proc
	addi	a5,a2,-00000001
	c.add	a1,a5
	c.add	a2,a0

l23052536:
	c.addi	a1,FFFFFFFF
	lbu	a5,a1,+00000001
	c.addi	a0,00000001
	sb	a5,a0,+00000FFF
	bne	a2,a0,0000000023052536

l23052546:
	c.jr	ra

;; sys_mem_swap: 23052548
;;   Called from:
;;     23052758 (in smp_sign_buf)
;;     23052796 (in smp_sign_buf)
;;     230527A8 (in smp_sign_buf)
;;     23052808 (in smp_f4)
;;     23052962 (in smp_f5)
;;     23052980 (in smp_f5)
;;     23052A46 (in smp_f6)
sys_mem_swap proc
	add	a5,a0,a1
	c.srli	a1,00000001
	c.add	a1,a0

l23052550:
	lbu	a3,a5,-00000001
	lbu	a4,a0,+00000000
	c.addi	a0,00000001
	sb	a3,a0,+00000FFF
	sb	a4,a5,+00000FFF
	c.addi	a5,FFFFFFFF
	bne	a0,a1,0000000023052550

l23052568:
	c.jr	ra

;; get_io_capa: 2305256A
;;   Called from:
;;     23052F3C (in get_auth.isra.0)
;;     23052F94 (in sec_level_reachable.isra.1)
;;     23052FC2 (in sec_level_reachable.isra.1)
;;     230530D6 (in get_pair_method)
;;     2305313C (in get_pair_method)
;;     230539EA (in smp_send_pairing_req)
;;     23053AF6 (in smp_security_request)
;;     23053BC8 (in smp_pairing_req)
get_io_capa proc
	lui	a5,00042026
	lw	a5,a5,+00000610
	c.li	a0,00000003
	c.beqz	a5,00000000230525AE

l23052576:
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023052590

l2305257A:
	c.lw	a5,4(a3)
	c.beqz	a3,0000000023052590

l2305257E:
	c.lw	a5,8(a3)
	c.li	a0,00000004
	c.bnez	a3,00000000230525AE

l23052584:
	lui	a3,0004200F
	lbu	a3,a3,+000004A0
	c.bnez	a3,00000000230525A2

l2305258E:
	c.jr	ra

l23052590:
	lui	a3,0004200F
	lbu	a3,a3,+000004A0
	c.beqz	a3,00000000230525A2

l2305259A:
	c.beqz	a4,00000000230525A2

l2305259C:
	c.lw	a5,8(a3)
	c.li	a0,00000001
	c.bnez	a3,00000000230525AE

l230525A2:
	c.lw	a5,4(a5)
	c.li	a0,00000002
	c.bnez	a5,00000000230525AE

l230525A8:
	c.li	a0,00000003
	c.beqz	a4,00000000230525AE

l230525AC:
	c.li	a0,00000000

l230525AE:
	c.jr	ra

;; smp_chan_get: 230525B0
;;   Called from:
;;     23053948 (in smp_send_pairing_req)
;;     23054D08 (in bt_smp_request_ltk)
;;     23054FE8 (in bt_smp_auth_passkey_entry)
;;     230550AA (in bt_smp_auth_passkey_confirm)
;;     23055124 (in bt_smp_auth_cancel)
;;     23055186 (in bt_smp_auth_pairing_confirm)
;;     23055248 (in bt_smp_start_security)
;;     230552DA (in bt_smp_start_security)
;;     230553A4 (in bt_smp_update_keys)
smp_chan_get proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000006
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023051816
	c.mv	s0,a0
	c.bnez	a0,00000000230525CC

l230525C0:
	lui	a0,000230BC
	addi	a0,a0,-000001E4
	jal	ra,0000000023082388

l230525CC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; atomic_set_bit: 230525D6
;;   Called from:
;;     2305264E (in smp_reset)
;;     23052B66 (in display_passkey)
;;     23052CCC (in smp_timeout)
;;     23052D48 (in smp_ident_info)
;;     23052DB4 (in smp_encrypt_info)
;;     23052E36 (in legacy_request_tk)
;;     23052E7A (in legacy_request_tk)
;;     2305318A (in smp_create_pdu.isra.7)
;;     230534E6 (in smp_dhkey_check)
;;     230538AE (in smp_master_ident)
;;     2305390A (in smp_init)
;;     23053A3C (in smp_send_pairing_req)
;;     23053A44 (in smp_send_pairing_req)
;;     23053A4C (in smp_send_pairing_req)
;;     23053AB4 (in smp_security_request)
;;     23053C0A (in smp_pairing_req)
;;     23053C3A (in smp_pairing_req)
;;     23053C62 (in smp_pairing_req)
;;     23053C6A (in smp_pairing_req)
;;     23053CDE (in smp_pairing_req)
;;     23053D00 (in smp_pairing_req)
;;     23053D42 (in smp_pairing_req)
;;     23053EC4 (in bt_smp_dhkey_ready)
;;     23054052 (in bt_smp_encrypt_change)
;;     23054084 (in bt_smp_encrypt_change)
;;     2305408C (in bt_smp_encrypt_change)
;;     230542DE (in legacy_pairing_confirm)
;;     230542F4 (in legacy_pairing_confirm)
;;     2305433C (in smp_pairing_confirm)
;;     23054380 (in smp_pairing_confirm)
;;     230543A2 (in smp_pairing_confirm)
;;     23054432 (in smp_pairing_rsp)
;;     23054450 (in smp_pairing_rsp)
;;     2305446A (in smp_pairing_rsp)
;;     230544BA (in smp_pairing_rsp)
;;     230544E6 (in smp_pairing_rsp)
;;     23054500 (in smp_pairing_rsp)
;;     2305455E (in smp_pairing_rsp)
;;     2305456E (in smp_pairing_rsp)
;;     230546B2 (in smp_ident_addr_info)
;;     230547E6 (in smp_public_key)
;;     23054862 (in smp_public_key)
;;     230549A8 (in bt_smp_pkey_ready)
;;     230549CA (in bt_smp_pkey_ready)
;;     23054AF8 (in smp_pairing_random)
;;     23054B2A (in smp_pairing_random)
;;     23054D6E (in bt_smp_request_ltk)
;;     23055056 (in bt_smp_auth_passkey_entry)
;;     23055082 (in bt_smp_auth_passkey_entry)
;;     230550DE (in bt_smp_auth_passkey_confirm)
;;     230551C2 (in bt_smp_auth_pairing_confirm)
;;     230551DE (in bt_smp_auth_pairing_confirm)
;;     230551EC (in bt_smp_auth_pairing_confirm)
;;     23055206 (in bt_smp_auth_pairing_confirm)
;;     23055216 (in bt_smp_auth_pairing_confirm)
;;     230552CC (in bt_smp_start_security)
;;     230552D4 (in bt_smp_start_security)
;;     2305538A (in bt_smp_start_security)
atomic_set_bit proc
	c.li	a5,00000001
	sll	a1,a5,a1
	jal	zero,0000000023048EBA

;; atomic_test_bit: 230525E0
;;   Called from:
;;     2305266A (in smp_pairing_complete)
;;     230526AA (in smp_pairing_complete)
;;     23052C04 (in update_keys_check)
;;     23052C4E (in smp_pairing_failed)
;;     23052CB4 (in smp_timeout)
;;     23052CF6 (in smp_ident_info)
;;     23052D64 (in smp_encrypt_info)
;;     230530BC (in get_pair_method)
;;     2305316C (in smp_create_pdu.isra.7)
;;     230534DC (in smp_dhkey_check)
;;     230534F2 (in smp_dhkey_check)
;;     23053636 (in bt_smp_distribute_keys)
;;     23053708 (in bt_smp_distribute_keys)
;;     23053750 (in bt_smp_distribute_keys)
;;     2305379A (in smp_signing_info)
;;     23053832 (in smp_master_ident)
;;     2305395C (in smp_send_pairing_req)
;;     23053968 (in smp_send_pairing_req)
;;     23053988 (in smp_send_pairing_req)
;;     23053A6C (in smp_security_request)
;;     23053A7A (in smp_security_request)
;;     23053B96 (in smp_pairing_req)
;;     23053CB4 (in smp_pairing_req)
;;     23053CC6 (in smp_pairing_req)
;;     23053D60 (in smp_pairing_req)
;;     23053EA2 (in bt_smp_dhkey_ready)
;;     23053EAE (in bt_smp_dhkey_ready)
;;     23053ECA (in bt_smp_dhkey_ready)
;;     23053F4E (in bt_smp_recv)
;;     2305401C (in bt_smp_encrypt_change)
;;     23054038 (in bt_smp_encrypt_change)
;;     230542D2 (in legacy_pairing_confirm)
;;     23054354 (in smp_pairing_confirm)
;;     23054398 (in smp_pairing_confirm)
;;     23054490 (in smp_pairing_rsp)
;;     230544A2 (in smp_pairing_rsp)
;;     230544DA (in smp_pairing_rsp)
;;     2305453C (in smp_pairing_rsp)
;;     230545FE (in smp_ident_addr_info)
;;     2305493E (in bt_smp_pkey_ready)
;;     2305496C (in bt_smp_pkey_ready)
;;     23054A32 (in smp_pairing_random)
;;     23054D28 (in bt_smp_request_ltk)
;;     23054D32 (in bt_smp_request_ltk)
;;     23054E5A (in bt_smp_request_ltk)
;;     23055014 (in bt_smp_auth_passkey_entry)
;;     2305508C (in bt_smp_auth_passkey_entry)
;;     230550D4 (in bt_smp_auth_passkey_confirm)
;;     230550EA (in bt_smp_auth_passkey_confirm)
;;     230550F8 (in bt_smp_auth_passkey_confirm)
;;     230551B6 (in bt_smp_auth_pairing_confirm)
;;     230551F8 (in bt_smp_auth_pairing_confirm)
;;     2305526C (in bt_smp_start_security)
;;     23055296 (in bt_smp_start_security)
;;     230552A4 (in bt_smp_start_security)
;;     230552EA (in bt_smp_start_security)
;;     230552F6 (in bt_smp_start_security)
;;     23055300 (in bt_smp_start_security)
;;     23055340 (in bt_smp_start_security)
;;     230553B6 (in bt_smp_update_keys)
;;     23055404 (in bt_smp_update_keys)
;;     2305545A (in bt_smp_update_keys)
;;     23055474 (in bt_smp_update_keys)
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

;; smp_reset: 230525F8
;;   Called from:
;;     23052688 (in smp_pairing_complete)
;;     23052F1C (in bt_smp_connected)
;;     23054030 (in bt_smp_encrypt_change)
;;     23054E6A (in bt_smp_request_ltk)
smp_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,0(s1)
	addi	a0,a0,+00000184
	jal	ra,000000002304986E
	addi	s2,s0,+00000098
	c.li	a1,00000000
	sb	zero,s0,+000000A0
	c.mv	a0,s2
	jal	ra,0000000023048E70
	c.li	a1,00000000
	addi	a0,s0,+0000009C
	jal	ra,0000000023048E70
	lbu	a5,s1,+00000009
	lbu	a4,s1,+0000000A
	beq	a4,a5,0000000023052638

l23052634:
	sb	a5,s1,+0000000A

l23052638:
	lbu	a5,s1,+00000003
	c.li	a1,0000000B
	c.beqz	a5,0000000023052642

l23052640:
	c.li	a1,00000001

l23052642:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230525D6

;; smp_pairing_complete: 23052652
;;   Called from:
;;     23052C66 (in smp_pairing_failed)
;;     23052CDE (in smp_timeout)
;;     23053812 (in smp_signing_info)
;;     230538D6 (in smp_master_ident)
;;     23053DA0 (in smp_check_complete.part.16)
;;     23053E00 (in smp_error)
;;     230540BA (in bt_smp_encrypt_change)
;;     230546DA (in smp_ident_addr_info)
smp_pairing_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lui	s2,00042026
	addi	a0,a0,+0000009C
	c.bnez	a1,000000002305268C

l23052668:
	c.li	a1,0000000C
	jal	ra,00000000230525E0
	lw	a5,s2,+00000610
	c.beqz	a5,000000002305267C

l23052674:
	c.lw	a5,24(a5)
	sltu	a1,zero,a0
	c.bnez	a5,00000000230526C4

l2305267C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230525F8

l2305268C:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a5,0000000D
	c.li	s1,00000008
	bltu	a5,a1,00000000230526A8

l2305269A:
	lui	a5,000230BC
	addi	a5,a5,-00000544
	c.add	a1,a5
	lbu	s1,a1,+00000000

l230526A8:
	c.li	a1,00000002
	jal	ra,00000000230525E0
	c.bnez	a0,00000000230526B8

l230526B0:
	c.lw	s0,0(a0)
	c.mv	a1,s1
	jal	ra,000000002304A642

l230526B8:
	lw	a5,s2,+00000610
	c.beqz	a5,000000002305267C

l230526BE:
	c.lw	a5,28(a5)
	c.beqz	a5,000000002305267C

l230526C2:
	c.mv	a1,s1

l230526C4:
	c.lw	s0,0(a0)
	c.jalr	a5
	c.j	000000002305267C

;; bt_smp_aes_cmac: 230526CA
;;   Called from:
;;     2305276E (in smp_sign_buf)
;;     230527FC (in smp_f4)
;;     23052900 (in smp_f5)
;;     23052956 (in smp_f5)
;;     23052974 (in smp_f5)
;;     23052A3A (in smp_f6)
;;     23052AA2 (in smp_g2)
bt_smp_aes_cmac proc
	c.addi16sp	FFFFFEE0
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a1,a0
	c.addi4spn	a2,00000060
	c.addi4spn	a0,00000008
	sw	s0,sp,+00000118
	sw	ra,sp,+0000011C
	c.mv	s0,a3
	jal	ra,0000000023049A7E
	c.beqz	a0,0000000023052706

l230526EE:
	c.mv	a2,s2
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023049AE8
	c.beqz	a0,0000000023052706

l230526FA:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023049BDA
	c.li	a5,00000000
	c.bnez	a0,0000000023052708

l23052706:
	c.li	a5,FFFFFFFB

l23052708:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	c.mv	a0,a5
	c.addi16sp	00000120
	c.jr	ra

;; smp_sign_buf: 2305271E
;;   Called from:
;;     23054EEE (in bt_smp_sign_verify)
;;     23054FB4 (in bt_smp_sign)
smp_sign_buf proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	add	s1,a1,a2
	c.swsp	s3,0000009C
	lbu	a4,s1,+00000001
	lbu	a5,s1,+00000000
	addi	s0,a2,+00000004
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000002
	c.mv	s2,a1
	c.mv	s3,a0
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000003
	c.mv	a1,s0
	c.mv	a0,s2
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,00000084
	jal	ra,0000000023052548
	c.mv	a1,s3
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	jal	ra,000000002305252E
	c.addi4spn	a3,00000020
	c.mv	a2,s0
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,00000000230526CA
	c.mv	s3,a0
	c.beqz	a0,0000000023052792

l23052776:
	lui	a0,000230BC
	addi	a0,a0,-00000120
	jal	ra,0000000023082388

l23052782:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s3
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l23052792:
	c.addi4spn	a0,00000020
	c.li	a1,00000010
	jal	ra,0000000023052548
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000024
	jal	ra,00000000230A382C
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023052548
	c.li	a2,0000000C
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.j	0000000023052782

;; smp_f4: 230527B8
;;   Called from:
;;     2305413E (in smp_send_pairing_confirm)
smp_f4 proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.mv	s0,a2
	c.mv	s2,a1
	addi	a2,zero,+00000020
	c.mv	a1,a0
	c.addi4spn	a0,0000002C
	c.swsp	ra,000000BC
	c.swsp	a3,00000084
	c.swsp	s1,000000B8
	c.mv	s1,a4
	jal	ra,000000002305252E
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,0000004C
	jal	ra,000000002305252E
	c.lwsp	a2,000000A4
	c.mv	a1,s0
	c.li	a2,00000010
	c.addi4spn	a0,0000001C
	sb	a3,sp,+0000006C
	jal	ra,000000002305252E
	c.mv	a3,s1
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000002C
	c.addi4spn	a0,0000001C
	jal	ra,00000000230526CA
	c.mv	s0,a0
	c.bnez	a0,000000002305280C

l23052804:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023052548

l2305280C:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.addi16sp	00000080
	c.jr	ra

;; sc_smp_check_confirm: 2305281A
;;   Called from:
;;     23054B3E (in smp_pairing_random)
sc_smp_check_confirm proc
	lbu	a5,a0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023052834

l23052824:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-0000061C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23052834:
	c.li	a5,00000008
	c.mv	a0,a5
	c.jr	ra
2305283A                               83 47 45 17 83 26           .GE..&
23052840 05 17 B3 D6 F6 00 85 8A 93 E6 06 F8 93 F6 F6 0F ................
23052850 B7 F7 00 42 83 A5 C7 49 01 11 22 CC 13 06 F5 0C ...B...I..".....
23052860 2A 84 0A 87 13 05 F5 0E 06 CE EF F0 FF F4 A1 47 *..............G
23052870 11 E9 41 46 8A 85 13 05 F4 0A EF 00 B5 72 B3 37 ..AF.........r.7
23052880 A0 00 8A 07 F2 40 62 44 3E 85 05 61 82 80 81 46 .....@bD>..a...F
23052890 C1 B7 81 47 4D B7                               ...GM.         

;; smp_f5: 23052896
smp_f5 proc
	c.addi16sp	FFFFFF60
	c.swsp	s0,0000004C
	c.swsp	s6,00000040
	c.mv	s0,a0
	c.swsp	s7,000000BC
	c.mv	s6,a2
	c.mv	s7,a1
	addi	a2,zero,+00000035
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.swsp	ra,000000CC
	c.swsp	s1,000000C8
	c.swsp	s2,00000048
	c.mv	s1,a6
	c.swsp	s3,000000C4
	c.swsp	s4,00000044
	c.swsp	s5,000000C0
	c.mv	s4,a4
	c.mv	s5,a3
	c.mv	s3,a5
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000062
	sb	a5,sp,+00000039
	c.lui	a5,00007000
	addi	a5,a5,-0000038C
	c.mv	a1,s0
	sh	a5,sp,+0000003A
	addi	a2,zero,+00000020
	addi	a5,zero,+00000065
	c.addi4spn	a0,00000018
	c.li	s2,00000001
	sb	a5,sp,+0000003C
	sb	s2,sp,+0000006B
	jal	ra,000000002305252E
	lui	a0,000230BC
	c.addi4spn	a3,00000008
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000018
	addi	a0,a0,-00000234
	jal	ra,00000000230526CA
	c.mv	s0,a0
	c.bnez	a0,0000000023052984

l23052908:
	c.li	a2,00000010
	c.mv	a1,s7
	addi	a0,sp,+0000003D
	jal	ra,000000002305252E
	c.li	a2,00000010
	c.mv	a1,s6
	addi	a0,sp,+0000004D
	jal	ra,000000002305252E
	lbu	a5,s5,+00000000
	c.li	a2,00000006
	addi	a1,s5,+00000001
	addi	a0,sp,+0000005E
	sb	a5,sp,+0000005D
	jal	ra,000000002305252E
	lbu	a5,s4,+00000000
	c.li	a2,00000006
	addi	a1,s4,+00000001
	addi	a0,sp,+00000065
	sb	a5,sp,+00000064
	jal	ra,000000002305252E
	c.mv	a3,s3
	addi	a2,zero,+00000035
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000008
	jal	ra,00000000230526CA
	c.mv	s0,a0
	c.bnez	a0,0000000023052984

l2305295E:
	c.li	a1,00000010
	c.mv	a0,s3
	jal	ra,0000000023052548
	c.mv	a3,s1
	addi	a2,zero,+00000035
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000008
	sb	s2,sp,+00000038
	jal	ra,00000000230526CA
	c.mv	s0,a0
	c.bnez	a0,0000000023052984

l2305297C:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023052548

l23052984:
	c.mv	a0,s0
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.lwsp	t1,000000A8
	c.lwsp	sp,000000C8
	c.lwsp	t4,000001F8
	c.addi16sp	000000A0
	c.jr	ra

;; smp_f6: 2305299C
smp_f6 proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.mv	s0,a2
	c.mv	s2,a0
	c.li	a2,00000010
	c.addi4spn	a0,0000002C
	c.swsp	ra,000000BC
	c.swsp	a6,00000000
	c.swsp	a5,00000080
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	c.swsp	s1,000000B8
	c.mv	s1,a7
	jal	ra,000000002305252E
	c.mv	a1,s0
	c.li	a2,00000010
	c.addi4spn	a0,0000003C
	jal	ra,000000002305252E
	c.lwsp	a2,000000A4
	c.li	a2,00000010
	c.addi4spn	a0,0000004C
	c.mv	a1,a3
	jal	ra,000000002305252E
	c.lwsp	s0,000000C4
	c.li	a2,00000003
	c.addi4spn	a0,0000005C
	c.mv	a1,a4
	jal	ra,000000002305252E
	c.lwsp	tp,000000E4
	c.li	a2,00000006
	c.addi4spn	a0,00000060
	lbu	a4,a5,+00000000
	addi	s0,a5,+00000001
	c.mv	a1,s0
	sb	a4,sp,+0000005F
	jal	ra,00000000230A382C
	c.mv	a1,s0
	c.li	a2,00000006
	c.addi4spn	a0,00000060
	jal	ra,000000002305252E
	c.lwsp	zero,00000008
	c.li	a2,00000006
	addi	a0,sp,+00000067
	lbu	a5,a6,+00000000
	addi	s0,a6,+00000001
	c.mv	a1,s0
	sb	a5,sp,+00000066
	jal	ra,00000000230A382C
	c.mv	a1,s0
	c.li	a2,00000006
	addi	a0,sp,+00000067
	jal	ra,000000002305252E
	c.li	a2,00000010
	c.mv	a1,s2
	c.addi4spn	a0,0000001C
	jal	ra,000000002305252E
	c.mv	a3,s1
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000002C
	c.addi4spn	a0,0000001C
	jal	ra,00000000230526CA
	c.mv	s0,a0
	c.bnez	a0,0000000023052A4A

l23052A42:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023052548

l23052A4A:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.addi16sp	00000080
	c.jr	ra

;; smp_g2: 23052A58
smp_g2 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+00000020
	c.mv	a1,a0
	c.addi4spn	a0,00000020
	c.swsp	ra,000000BC
	c.swsp	a3,00000084
	c.swsp	s0,0000003C
	c.mv	s0,a4
	jal	ra,000000002305252E
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,00000040
	jal	ra,000000002305252E
	c.lwsp	a2,000000A4
	c.li	a2,00000010
	c.addi4spn	a0,00000060
	c.mv	a1,a3
	jal	ra,000000002305252E
	c.mv	a1,s1
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	jal	ra,000000002305252E
	c.addi4spn	a3,00000010
	addi	a2,zero,+00000050
	c.addi4spn	a1,00000020
	c.mv	a0,a3
	jal	ra,00000000230526CA
	c.mv	s1,a0
	c.bnez	a0,0000000023052AE6

l23052AAA:
	c.li	a2,00000004
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.lw	s0,0(a3)
	c.lui	a2,00010000
	addi	a2,a2,-00000100
	slli	a4,a3,00000018
	srli	a5,a3,00000018
	c.or	a5,a4
	srli	a4,a3,00000008
	c.and	a4,a2
	c.or	a5,a4
	c.slli	a3,08
	lui	a4,00000FF0
	c.and	a3,a4
	lui	a4,000000F4
	c.or	a5,a3
	addi	a4,a4,+00000240
	and	a5,a5,a4
	c.sw	s0,0(a5)

l23052AE6:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.mv	a0,s1
	c.lwsp	a7,00000158
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; atomic_test_and_clear_bit: 23052AF4
;;   Called from:
;;     23052C3A (in smp_pairing_failed)
;;     23052C7E (in smp_pairing_failed)
;;     23053E5A (in bt_smp_dhkey_ready)
;;     23053E6A (in bt_smp_dhkey_ready)
;;     23053F98 (in bt_smp_recv)
;;     2305500A (in bt_smp_auth_passkey_entry)
;;     2305502E (in bt_smp_auth_passkey_entry)
;;     230550CA (in bt_smp_auth_passkey_confirm)
;;     2305513C (in bt_smp_auth_cancel)
;;     230551A6 (in bt_smp_auth_pairing_confirm)
atomic_test_and_clear_bit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	s0,00000001
	sll	s0,s0,a1
	c.srli	a1,00000005
	slli	a5,a1,00000002
	c.add	a0,a5
	xori	a1,s0,-00000001
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.and	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; display_passkey: 23052B1E
display_passkey proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000170
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002304B7D8
	c.li	s1,00000008
	c.bnez	a0,0000000023052B78

l23052B38:
	lw	a5,s0,+00000170
	lui	a4,000000F4
	addi	a4,a4,+00000240
	and	a5,a5,a4
	lui	s2,00042026
	sb	zero,s0,+00000174
	c.li	s1,00000000
	sw	a5,s0,+00000170
	lw	a5,s2,+00000610
	c.beqz	a5,0000000023052B78

l23052B5C:
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023052B78

l23052B60:
	c.li	a1,0000000A
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6
	lw	a5,s2,+00000610
	lw	a1,s0,+00000170
	c.lw	s0,0(a0)
	c.lw	a5,0(a5)
	c.jalr	a5

l23052B78:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; update_keys_check: 23052B86
;;   Called from:
;;     23053C7E (in smp_pairing_req)
;;     2305447E (in smp_pairing_rsp)
update_keys_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s1,a0
	lw	a5,s0,+0000009C
	c.bnez	a5,0000000023052BA8

l23052B98:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	jal	ra,00000000230555EA
	sw	a0,s0,+0000009C

l23052BA8:
	lw	a3,s0,+0000009C
	c.bnez	a3,0000000023052BBA

l23052BAE:
	c.li	a0,00000001

l23052BB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23052BBA:
	lhu	a4,a3,+0000000A
	andi	a5,a4,+00000024
	c.beqz	a5,0000000023052BAE

l23052BC4:
	lbu	a2,s1,+000000A5
	lbu	a5,s1,+000000AC
	bgeu	a2,a5,0000000023052BD2

l23052BD0:
	c.mv	a5,a2

l23052BD2:
	lbu	a3,a3,+00000008
	andi	a5,a5,+000000FF
	bgeu	a5,a3,0000000023052BE2

l23052BDE:
	c.li	a0,00000000
	c.j	0000000023052BB0

l23052BE2:
	andi	a4,a4,+00000020
	c.bnez	a4,0000000023052BFE

l23052BE8:
	lw	a5,s0,+0000009C
	lbu	a5,a5,+00000009
	c.andi	a5,00000001
	c.beqz	a5,0000000023052BAE

l23052BF4:
	lbu	a0,s1,+000000A0
	sltu	a0,zero,a0
	c.j	0000000023052BB0

l23052BFE:
	c.li	a1,00000005
	addi	a0,s1,+0000009C
	jal	ra,00000000230525E0
	c.bnez	a0,0000000023052BE8

l23052C0A:
	c.j	0000000023052BDE

;; smp_pairing_failed: 23052C0C
smp_pairing_failed proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s2,a1,+00000008
	c.mv	s0,a0
	lw	s3,a0,+00000000
	lbu	a1,s2,+00000000
	lui	a0,000230BC
	addi	a0,a0,-00000184
	jal	ra,0000000023082388
	addi	s1,s0,+0000009C
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023052AF4
	c.beqz	a0,0000000023052C7A

l23052C40:
	lui	a5,00042026
	lw	a5,a5,+00000610
	c.bnez	a5,0000000023052C86

l23052C4A:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023052C60

l23052C54:
	c.lw	s0,0(a5)
	lw	a0,a5,+0000009C
	c.beqz	a0,0000000023052C60

l23052C5C:
	jal	ra,00000000230558B8

l23052C60:
	lbu	a1,s2,+00000000
	c.mv	a0,s0
	jal	ra,0000000023052652
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23052C7A:
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,0000000023052AF4
	c.bnez	a0,0000000023052C40

l23052C84:
	c.j	0000000023052C4A

l23052C86:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023052C4A

l23052C8A:
	c.mv	a0,s3
	c.jalr	a5
	c.j	0000000023052C4A

;; smp_timeout: 23052C90
smp_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s0,a0
	addi	s2,a0,-00000184
	lui	a0,000230BC
	addi	a0,a0,-00000108
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,-000000E8
	jal	ra,0000000023082388
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023052CC8

l23052CBA:
	lw	a5,s0,-00000184
	lw	a0,a5,+0000009C
	c.beqz	a0,0000000023052CC8

l23052CC4:
	jal	ra,00000000230558B8

l23052CC8:
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,00000000230525D6
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.li	a1,00000008
	c.addi	sp,00000010
	jal	zero,0000000023052652

;; smp_ident_info: 23052CE2
smp_ident_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,0000000C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023052D42

l23052CFC:
	c.lw	s0,0(a5)
	lw	s2,s1,+00000008
	c.li	a0,00000002
	lbu	a1,a5,+00000008
	addi	s1,a5,+00000070
	c.mv	a2,s1
	jal	ra,0000000023055782
	c.bnez	a0,0000000023052D36

l23052D14:
	c.mv	a0,s1
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.li	a0,00000008

l23052D2A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23052D36:
	c.li	a2,00000010
	c.mv	a1,s2
	addi	a0,a0,+00000026
	jal	ra,00000000230A382C

l23052D42:
	addi	a0,s0,+00000098
	c.li	a1,00000009
	jal	ra,00000000230525D6
	c.li	a0,00000000
	c.j	0000000023052D2A

;; smp_encrypt_info: 23052D50
smp_encrypt_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,0000000C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023052DAE

l23052D6A:
	c.lw	s0,0(a5)
	lw	s2,s1,+00000008
	c.li	a0,00000004
	lbu	a1,a5,+00000008
	addi	s1,a5,+00000070
	c.mv	a2,s1
	jal	ra,0000000023055782
	c.bnez	a0,0000000023052DA4

l23052D82:
	c.mv	a0,s1
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.li	a0,00000008

l23052D98:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23052DA4:
	c.li	a2,00000010
	c.mv	a1,s2
	c.addi	a0,00000016
	jal	ra,00000000230A382C

l23052DAE:
	addi	a0,s0,+00000098
	c.li	a1,00000007
	jal	ra,00000000230525D6
	c.li	a0,00000000
	c.j	0000000023052D98

;; legacy_request_tk: 23052DBC
;;   Called from:
;;     23053D14 (in smp_pairing_req)
;;     230544CC (in smp_pairing_rsp)
legacy_request_tk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,0(s1)
	c.mv	s0,a0
	lbu	a0,s1,+00000008
	addi	a1,s1,+00000070
	jal	ra,00000000230558A8
	lbu	a5,s0,+000000A0
	c.beqz	a0,0000000023052DF6

l23052DDC:
	lbu	a4,a0,+00000009
	c.andi	a4,00000001
	c.beqz	a4,0000000023052DF6

l23052DE4:
	c.bnez	a5,0000000023052DF6

l23052DE6:
	lui	a0,000230BC
	addi	a0,a0,-00000284
	jal	ra,0000000023082388

l23052DF2:
	c.li	a1,00000008
	c.j	0000000023052E66

l23052DF6:
	c.li	a4,00000001
	c.mv	a1,a5
	beq	a5,a4,0000000023052E74

l23052DFE:
	c.beqz	a5,0000000023052E66

l23052E00:
	c.li	a4,00000002
	bne	a5,a4,0000000023052E8E

l23052E06:
	c.li	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002304B7D8
	c.li	a1,00000008
	c.bnez	a0,0000000023052E66

l23052E12:
	c.lwsp	a2,000000E4
	lui	a4,000000F4
	addi	a4,a4,+00000240
	and	a5,a5,a4
	lui	s2,00042026
	c.swsp	a5,00000084
	lw	a5,s2,+00000610
	c.beqz	a5,0000000023052E46

l23052E2C:
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023052E46

l23052E30:
	c.li	a1,0000000A
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6
	lw	a5,s2,+00000610
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.lw	a5,0(a5)
	c.jalr	a5

l23052E46:
	c.lwsp	a2,000000E4
	slli	a4,a5,00000010
	sb	a5,s0,+000000DF
	c.srli	a4,00000010
	c.srli	a5,00000010
	c.srli	a4,00000008
	sb	a5,s0,+000000E1
	c.srli	a5,00000008
	sb	a4,s0,+000000E0
	sb	a5,s0,+000000E2

l23052E64:
	c.li	a1,00000000

l23052E66:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

l23052E74:
	addi	a0,s0,+0000009C
	c.li	a1,00000009
	jal	ra,00000000230525D6
	lui	a5,00042026
	lw	a5,a5,+00000610
	c.mv	a0,s1
	c.lw	a5,4(a5)
	c.jalr	a5
	c.j	0000000023052E64

l23052E8E:
	lui	a0,000230BC
	addi	a0,a0,-00000254
	jal	ra,0000000023082388
	c.j	0000000023052DF2

;; bt_smp_disconnected: 23052E9C
bt_smp_disconnected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	addi	s2,a0,+00000184
	c.mv	s0,a0
	c.mv	a0,s2
	lw	s1,a5,+0000009C
	jal	ra,000000002304986E
	lw	a5,s0,+00000194
	c.beqz	a5,0000000023052EC4

l23052EBE:
	c.mv	a0,s2
	jal	ra,00000000230497D6

l23052EC4:
	c.lw	s0,32(a5)
	c.beqz	a5,0000000023052ED0

l23052EC8:
	addi	a0,s0,+00000010
	jal	ra,00000000230497D6

l23052ED0:
	c.beqz	s1,0000000023052EE6

l23052ED2:
	lhu	a5,s1,+0000000A
	c.beqz	a5,0000000023052EE0

l23052ED8:
	lbu	a5,s1,+00000009
	c.andi	a5,00000002
	c.beqz	a5,0000000023052EE6

l23052EE0:
	c.mv	a0,s1
	jal	ra,00000000230558B8

l23052EE6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a2,zero,+000001A8
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; bt_smp_connected: 23052EFC
bt_smp_connected proc
	c.addi	sp,FFFFFFF0
	lui	a1,00023053
	c.swsp	s0,00000004
	addi	a1,a1,-00000370
	c.mv	s0,a0
	addi	a0,a0,+00000184
	c.swsp	ra,00000084
	jal	ra,0000000023049780
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230525F8

;; get_auth.isra.0: 23052F20
;;   Called from:
;;     230539E2 (in smp_send_pairing_req)
;;     23053BBE (in smp_pairing_req)
;;     23055370 (in bt_smp_start_security)
get_auth.isra.0 proc
	lui	a5,0004200F
	lbu	a5,a5,+000004A0
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	andi	s0,a1,+0000000F
	c.bnez	a5,0000000023052F3C

l23052F38:
	andi	s0,a1,+00000007

l23052F3C:
	jal	ra,000000002305256A
	c.li	a5,00000003
	beq	a0,a5,0000000023052F54

l23052F46:
	lbu	a3,s1,+00000000
	c.li	a4,00000002
	ori	a5,s0,+00000004
	bltu	a4,a3,0000000023052F58

l23052F54:
	andi	a5,s0,+0000000B

l23052F58:
	lui	a4,0004200F
	lbu	a4,a4,-000003C3
	andi	a0,a5,+000000FE
	c.beqz	a4,0000000023052F6A

l23052F66:
	ori	a0,a5,+00000001

l23052F6A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sec_level_reachable.isra.1: 23052F74
;;   Called from:
;;     23053994 (in smp_send_pairing_req)
;;     2305530A (in bt_smp_start_security)
sec_level_reachable.isra.1 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000003
	c.mv	s0,a0
	beq	a0,s1,0000000023052FC2

l23052F84:
	sltu	a0,zero,a0
	bgeu	s1,s0,0000000023052FE8

l23052F8C:
	c.li	a5,00000004
	c.li	a0,00000000
	bne	s0,a5,0000000023052FE8

l23052F94:
	jal	ra,000000002305256A
	bne	a0,s1,0000000023052FB6

l23052F9C:
	lui	a5,00042026
	lw	a5,a5,+00000610
	c.li	a0,00000000
	c.beqz	a5,0000000023052FBE

l23052FA8:
	c.lw	a5,12(a5)
	c.beqz	a5,0000000023052FBE

l23052FAC:
	lui	a5,0004200F
	lbu	a5,a5,+00000498
	c.beqz	a5,0000000023052FBE

l23052FB6:
	lui	a5,0004200F
	lbu	a0,a5,+000004A0

l23052FBE:
	c.andi	a0,00000001
	c.j	0000000023052FE8

l23052FC2:
	jal	ra,000000002305256A
	c.li	a5,00000001
	bne	a0,s0,0000000023052FE4

l23052FCC:
	lui	a5,00042026
	lw	a4,a5,+00000610
	c.li	a5,00000000
	c.beqz	a4,0000000023052FE4

l23052FD8:
	c.lw	a4,12(a4)
	c.beqz	a4,0000000023052FE4

l23052FDC:
	lui	a5,0004200F
	lbu	a5,a5,+00000498

l23052FE4:
	andi	a0,a5,+00000001

l23052FE8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_smp_accept: 23052FF2
bt_smp_accept proc
	lui	a5,00042017
	addi	a4,a5,-000006AC
	c.lw	a4,0(a3)
	addi	a5,a5,-000006AC
	c.beqz	a3,0000000023053022

l23053002:
	lw	a4,a4,+000001A8
	c.beqz	a4,000000002305303E

l23053008:
	c.mv	a1,a0
	lui	a0,000230BC
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000534
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

l23053022:
	c.li	a4,00000000

l23053024:
	addi	a3,zero,+000001A8
	add	a4,a4,a3
	c.li	a0,00000000
	c.add	a5,a4
	lui	a4,0004200E
	addi	a4,a4,-0000015C
	c.sw	a5,4(a4)
	c.sw	a1,0(a5)
	c.jr	ra

l2305303E:
	c.li	a4,00000001
	c.j	0000000023053024

;; smp_keys_check.part.5: 23053042
;;   Called from:
;;     23055288 (in bt_smp_start_security)
;;     2305534A (in bt_smp_start_security)
smp_keys_check.part.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lw	a5,a0,+0000009C
	c.mv	s0,a0
	c.bnez	a5,000000002305307A

l23053052:
	lbu	a1,a0,+00000008
	addi	s1,a0,+00000070
	c.mv	a2,s1
	addi	a0,zero,+00000020
	jal	ra,000000002305577E
	sw	a0,s0,+0000009C
	c.bnez	a0,000000002305307A

l2305306A:
	lbu	a1,s0,+00000008
	c.mv	a2,s1
	c.li	a0,00000004
	jal	ra,000000002305577E
	sw	a0,s0,+0000009C

l2305307A:
	lw	a5,s0,+0000009C
	c.li	a0,00000000
	c.beqz	a5,000000002305309E

l23053082:
	lhu	a4,a5,+0000000A
	andi	a4,a4,+00000024
	c.beqz	a4,000000002305309E

l2305308C:
	lbu	a3,s0,+0000000A
	c.li	a4,00000002
	c.li	a0,00000001
	bgeu	a4,a3,000000002305309E

l23053098:
	lbu	a0,a5,+00000009
	c.andi	a0,00000001

l2305309E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; get_pair_method: 230530A8
;;   Called from:
;;     23053C74 (in smp_pairing_req)
;;     23054474 (in smp_pairing_rsp)
get_pair_method proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,00000005
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305310C

l230530C2:
	c.li	s2,00000004
	bltu	s2,s1,0000000023053100

l230530C8:
	lbu	a0,s0,+000000A4
	lbu	a5,s0,+000000AB
	c.or	a0,a5
	c.andi	a0,00000004
	c.beqz	a0,0000000023053100

l230530D6:
	jal	ra,000000002305256A
	c.li	a5,00000005
	add	s1,s1,a5
	lui	a5,000230BC
	addi	a5,a5,-0000032C
	c.add	a5,s1
	c.add	a0,a5
	lbu	a0,a0,+00000000
	bne	a0,s2,0000000023053100

l230530F4:
	c.lw	s0,0(a5)
	lbu	a0,a5,+00000003
	sltiu	a0,a0,+00000001
	c.addi	a0,00000001

l23053100:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305310C:
	lbu	a4,s0,+000000A4
	lbu	a3,s0,+000000AB
	and	a5,a4,a3
	c.andi	a5,00000008
	c.beqz	a5,000000002305312C

l2305311C:
	lbu	a5,s0,+000000A3
	lbu	a2,s0,+000000AA
	c.li	a0,00000005
	c.or	a5,a2
	c.andi	a5,00000001
	c.bnez	a5,0000000023053100

l2305312C:
	c.li	a5,00000004
	c.li	a0,00000000
	bltu	a5,s1,0000000023053100

l23053134:
	or	a0,a4,a3
	c.andi	a0,00000004
	c.beqz	a0,0000000023053100

l2305313C:
	jal	ra,000000002305256A
	c.li	a5,00000005
	add	s1,s1,a5
	lui	a5,000230BC
	addi	a5,a5,-00000310
	c.add	a5,s1
	c.add	a0,a5
	lbu	a0,a0,+00000000
	c.j	0000000023053100

;; smp_create_pdu.isra.7: 23053158
;;   Called from:
;;     230531E4 (in sc_smp_send_dhkey_check)
;;     2305350E (in smp_send_pairing_random)
;;     23053552 (in sc_send_public_key)
;;     230535B4 (in send_pairing_rsp)
;;     23053656 (in bt_smp_distribute_keys)
;;     23053676 (in bt_smp_distribute_keys)
;;     230536C4 (in bt_smp_distribute_keys)
;;     230539CA (in smp_send_pairing_req)
;;     23053E08 (in smp_error)
;;     23054114 (in smp_send_pairing_confirm)
;;     2305425A (in legacy_send_pairing_confirm)
;;     23055356 (in bt_smp_start_security)
smp_create_pdu.isra.7 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+0000009C
	c.swsp	s2,00000000
	c.mv	a0,s1
	c.mv	s2,a1
	c.li	a1,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230525E0
	c.li	a2,00000000
	c.bnez	a0,000000002305317A

l23053174:
	c.lui	a2,00007000
	addi	a2,a2,+00000530

l2305317A:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002305135A
	c.mv	s0,a0
	c.bnez	a0,000000002305319C

l23053186:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,00000000230525D6

l2305318E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305319C:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s2,a0,+00000000
	c.j	000000002305318E

;; smp_send.isra.9: 230531AA
;;   Called from:
;;     23053202 (in sc_smp_send_dhkey_check)
;;     2305352E (in smp_send_pairing_random)
;;     23053590 (in sc_send_public_key)
;;     230535D4 (in send_pairing_rsp)
;;     230536BC (in bt_smp_distribute_keys)
;;     23053700 (in bt_smp_distribute_keys)
;;     2305377A (in bt_smp_distribute_keys)
;;     23053A30 (in smp_send_pairing_req)
;;     23054152 (in smp_send_pairing_confirm)
;;     2305429A (in legacy_send_pairing_confirm)
smp_send.isra.9 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.mv	a3,a2
	c.li	a4,00000000
	c.mv	a2,a1
	c.li	a1,00000006
	jal	ra,0000000023051360
	addi	a0,s0,+00000184
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a1,00007000
	addi	a1,a1,+00000530
	c.addi	sp,00000010
	jal	zero,00000000230498CA

;; sc_smp_send_dhkey_check: 230531D4
sc_smp_send_dhkey_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a1
	c.li	a1,0000000D
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023053158
	c.beqz	a0,0000000023053214

l230531EA:
	c.mv	s0,a0
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a2,00000010
	c.mv	a1,s2
	jal	ra,00000000230A382C
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,00000000230531AA
	c.li	a0,00000000

l23053208:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23053214:
	c.li	a0,00000008
	c.j	0000000023053208

;; compute_and_send_master_dhcheck: 23053218
;;   Called from:
;;     23053EDC (in bt_smp_dhkey_ready)
;;     23055108 (in bt_smp_auth_passkey_confirm)
compute_and_send_master_dhcheck proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.li	a2,00000010
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,00000000230A3A68
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023053280

l2305323A:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-00000604
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2305324A                               11 46 93 05 04 17           .F....
23053250 08 08 EF 00 A5 5D 14 40 13 09 F4 0B 93 09 F4 0C .....].@........
23053260 93 04 F4 15 13 87 E6 07 13 08 F4 0D A6 87 93 86 ................
23053270 76 07 4E 86 CA 85 13 05 F4 12 EF F0 CF E1 01 C9 v.N.............

l23053280:
	c.li	a0,00000008
	c.j	00000000230532BE
23053284             83 25 C4 17 F9 D5 41 46 D1 B7 1C 40     .%....AF...@
23053290 8A 88 13 07 24 0A 13 88 E7 07 14 08 93 87 77 07 ....$.........w.
230532A0 4E 86 CA 85 26 85 EF F0 6F EF 79 F9 B5 45 13 05 N...&...o.y..E..
230532B0 84 09 EF F0 4F B2 8A 85 22 85 EF F0 BF F1       ....O..."..... 

l230532BE:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; compute_and_check_and_send_slave_dhcheck: 230532CC
;;   Called from:
;;     230534FA (in smp_dhkey_check)
;;     23053EF6 (in bt_smp_dhkey_ready)
;;     23055118 (in bt_smp_auth_passkey_confirm)
compute_and_check_and_send_slave_dhcheck proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.li	a2,00000010
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	jal	ra,00000000230A3A68
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023053334

l230532EE:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-000005EC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
230532FE                                           11 46               .F
23053300 93 05 04 17 08 10 EF 00 65 52 14 40 13 09 F4 0C ........eR.@....
23053310 93 09 F4 0B 93 04 F4 15 13 87 E6 07 13 08 F4 0D ................
23053320 A6 87 93 86 76 07 4E 86 CA 85 13 05 F4 12 EF F0 ....v.N.........
23053330 8F D6 01 C9                                     ....           

l23053334:
	c.li	s1,00000008
	c.j	00000000230533BE
23053338                         83 25 C4 17 F9 D5 41 46         .%....AF
23053340 D1 B7 1C 40 93 08 01 01 13 07 94 0A 13 88 77 07 ...@..........w.
23053350 14 10 93 87 E7 07 4A 86 CE 85 26 85 EF F0 0F E4 ......J...&.....
23053360 71 F9 03 47 04 0A 95 47 63 19 F7 00 83 25 84 17 q..G...Gc....%..
23053370 41 46 B1 CD 08 10 EF 00 65 4B 1C 40 8A 88 13 07 AF......eK.@....
23053380 24 0A 13 88 E7 07 14 10 93 87 77 07 4E 86 CA 85 $.........w.N...
23053390 26 85 EF F0 AF E0 59 FD 41 46 8A 85 13 05 F4 14 &.....Y.AF......
230533A0 EF 00 45 40 AD 44 01 ED 0C 08 22 85 EF F0 9F E2 ..E@.D....".....
230533B0 AA 84 11 E5 85 45 13 05 C4 09 EF F0 CF A1       .....E........ 

l230533BE:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra
230533CE                                           81 45               .E
230533D0 08 10 EF 00 65 69 55 B7                         ....eiU.       

;; smp_dhkey_check: 230533D8
smp_dhkey_check proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.lw	a0,0(a5)
	c.mv	s0,a0
	lw	s2,a1,+00000008
	lbu	s1,a5,+00000003
	c.bnez	s1,00000000230534B8

l230533F0:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,00000000230A3A68
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023053446

l23053404:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-000005D4
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23053414             11 46 93 05 04 17 08 18 EF 00 05 41     .F.........A
23053420 1C 40 93 08 01 02 13 07 94 0A 13 88 77 07 14 18 .@..........w...
23053430 93 87 E7 07 13 06 F4 0B 93 05 F4 0C 13 05 F4 15 ................
23053440 EF F0 CF D5 01 C9                               ......         

l23053446:
	c.li	s1,00000008
	c.j	00000000230534A6
2305344A                               83 25 84 17 E9 D9           .%....
23053450 41 46 E1 B7 41 46 CA 85 08 10 EF 00 A5 34 39 E9 AF..AF.......49.
23053460 83 47 54 0A 03 47 C4 0A 63 F3 E7 00 3E 87 13 77 .GT..G..c...>..w
23053470 F7 0F 09 46 81 45 48 08 3A C6 EF 00 E5 5E 21 46 ...F.EH.:....^!F
23053480 81 45 28 08 EF 00 45 5E 32 47 08 40 93 06 F4 0D .E(...E^2G.@....
23053490 50 08 2C 08 EF 70 0F 90 E3 47 05 FA 85 45 13 05 P.,..p...G...E..
230534A0 C4 09 EF F0 4F 93                               ....O.         

l230534A6:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	c.jr	ra
230534B4             AD 44 C5 BF                             .D..       

l230534B8:
	c.li	a5,00000001
	bne	s1,a5,00000000230534EA

l230534BE:
	addi	s1,a0,+0000009C
	c.lui	a1,FFFF8000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s1
	jal	ra,0000000023048EE2
	c.mv	a1,s2
	c.li	a2,00000010
	addi	a0,s0,+0000014F
	jal	ra,00000000230A382C
	c.li	a1,00000007
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230534EE

l230534E2:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,00000000230525D6

l230534EA:
	c.li	s1,00000000
	c.j	00000000230534A6

l230534EE:
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.bnez	a0,00000000230534E2

l230534F8:
	c.mv	a0,s0
	jal	ra,00000000230532CC
	c.mv	s1,a0
	c.j	00000000230534A6

;; smp_send_pairing_random: 23053502
;;   Called from:
;;     2305434C (in smp_pairing_confirm)
;;     23054B30 (in smp_pairing_random)
smp_send_pairing_random proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023053158
	c.beqz	a0,000000002305353E

l23053514:
	c.mv	s0,a0
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a2,00000010
	addi	a1,s1,+000000BF
	jal	ra,00000000230A382C
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,00000000230531AA
	c.li	a0,00000000

l23053534:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305353E:
	c.li	a0,00000008
	c.j	0000000023053534

;; sc_send_public_key: 23053542
;;   Called from:
;;     2305458C (in smp_pairing_rsp)
;;     230548F4 (in smp_public_key)
;;     23054956 (in bt_smp_pkey_ready)
;;     23054988 (in bt_smp_pkey_ready)
;;     230549BC (in bt_smp_pkey_ready)
;;     230549DA (in bt_smp_pkey_ready)
;;     230551F2 (in bt_smp_auth_pairing_confirm)
sc_send_public_key proc
	c.addi	sp,FFFFFFE0
	c.li	a1,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a0
	jal	ra,0000000023053158
	c.beqz	a0,00000000230535A4

l23053558:
	c.mv	s1,a0
	addi	a1,zero,+00000040
	c.addi	a0,00000008
	lui	s0,0004200F
	jal	ra,00000000230492DE
	addi	s0,s0,+0000049C
	c.lw	s0,0(a1)
	addi	a2,zero,+00000020
	c.mv	s3,a0
	jal	ra,00000000230A382C
	c.lw	s0,0(a1)
	addi	a2,zero,+00000020
	addi	a0,s3,+00000020
	addi	a1,a1,+00000020
	jal	ra,00000000230A382C
	c.mv	a0,s2
	c.li	a2,00000000
	c.mv	a1,s1
	jal	ra,00000000230531AA
	c.li	a0,00000000

l23053596:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230535A4:
	c.li	a0,00000008
	c.j	0000000023053596

;; send_pairing_rsp: 230535A8
;;   Called from:
;;     23053CF0 (in smp_pairing_req)
;;     23053D56 (in smp_pairing_req)
;;     2305520C (in bt_smp_auth_pairing_confirm)
;;     2305521C (in bt_smp_auth_pairing_confirm)
send_pairing_rsp proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000002
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023053158
	c.beqz	a0,00000000230535E4

l230535BA:
	c.mv	s0,a0
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a2,00000006
	addi	a1,s1,+000000A9
	jal	ra,00000000230A382C
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,00000000230531AA
	c.li	a0,00000000

l230535DA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230535E4:
	c.li	a0,00000008
	c.j	00000000230535DA

;; bt_smp_distribute_keys: 230535E8
;;   Called from:
;;     23053806 (in smp_signing_info)
;;     230538CA (in smp_master_ident)
;;     2305409E (in bt_smp_encrypt_change)
;;     230546CE (in smp_ident_addr_info)
bt_smp_distribute_keys proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lw	s2,a0,+0000009C
	bne	s2,zero,000000002305362E

l23053604:
	addi	a0,a0,+00000070
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-0000050C
	jal	ra,0000000023082388

l2305361A:
	c.li	a0,00000008

l2305361C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2305362E:
	addi	s3,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305366A

l2305363C:
	lbu	a5,s0,+00000180
	c.andi	a5,00000001
	c.beqz	a5,000000002305366A

l23053644:
	c.lw	s0,0(a5)
	c.li	a1,0000001A
	c.addi4spn	a0,00000004
	lw	s1,a5,+0000009C
	jal	ra,000000002304B7D8
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023053158
	c.mv	s4,a0
	c.bnez	a0,000000002305368C

l2305365E:
	lui	a0,000230BC
	addi	a0,a0,-000004F4

l23053666:
	jal	ra,0000000023082388

l2305366A:
	lbu	a0,s0,+00000180
	c.andi	a0,00000004
	c.beqz	a0,000000002305361C

l23053672:
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,0000000023053158
	c.mv	s1,a0
	c.bnez	a0,000000002305373C

l2305367E:
	lui	a0,000230BC
	addi	a0,a0,-0000049C
	jal	ra,0000000023082388
	c.j	000000002305361A

l2305368C:
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lbu	a2,s1,+00000008
	c.addi4spn	a1,00000004
	c.mv	s5,a0
	jal	ra,00000000230A382C
	lbu	a0,s1,+00000008
	c.li	a5,0000000F
	bltu	a5,a0,00000000230536B6

l230536AA:
	c.li	a2,00000010
	c.sub	a2,a0
	c.li	a1,00000000
	c.add	a0,s5
	jal	ra,00000000230A3A68

l230536B6:
	c.mv	a1,s4
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,00000000230531AA
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,0000000023053158
	c.mv	s4,a0
	c.bnez	a0,00000000230536D6

l230536CC:
	lui	a0,000230BC
	addi	a0,a0,-000004C8
	c.j	0000000023053666

l230536D6:
	c.li	a1,0000000A
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	s5,a0
	c.li	a2,00000008
	c.addi4spn	a1,00000014
	c.addi	a0,00000002
	jal	ra,00000000230A382C
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	c.mv	a0,s5
	jal	ra,00000000230A382C
	lui	a2,00023054
	c.mv	a1,s4
	c.mv	a0,s0
	addi	a2,a2,+00000164
	jal	ra,00000000230531AA
	c.li	a1,0000000C
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.beqz	a0,000000002305366A

l2305370E:
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,00000000230558AC
	c.addi4spn	a1,00000004
	c.li	a2,00000010
	addi	a0,s1,+0000006E
	jal	ra,00000000230A382C
	c.addi4spn	a1,00000014
	c.li	a2,00000008
	addi	a0,s1,+00000064
	jal	ra,00000000230A382C
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	addi	a0,s1,+0000006C
	jal	ra,00000000230A382C
	c.j	000000002305366A

l2305373C:
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a1,00000010
	c.mv	s4,a0
	jal	ra,000000002304B7D8
	c.li	a1,0000000C
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.beqz	a0,000000002305376E

l23053756:
	c.li	a1,00000008
	c.mv	a0,s2
	jal	ra,00000000230558AC
	c.li	a2,00000010
	c.mv	a1,s4
	addi	a0,s2,+0000003C
	jal	ra,00000000230A382C
	sw	zero,s2,+0000004C

l2305376E:
	lui	a2,00023054
	c.mv	a0,s0
	addi	a2,a2,-00000254
	c.mv	a1,s1
	jal	ra,00000000230531AA
	c.li	a0,00000000
	c.j	000000002305361C

;; smp_signing_info: 23053782
smp_signing_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.lw	a0,0(s1)
	c.li	a1,0000000C
	addi	a0,a0,+0000009C
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230537E6

l230537A0:
	lbu	a1,s1,+00000008
	lw	s3,s2,+00000008
	addi	s2,s1,+00000070
	c.mv	a2,s2
	c.li	a0,00000010
	jal	ra,0000000023055782
	c.bnez	a0,00000000230537DA

l230537B6:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.li	a0,00000008

l230537CC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230537DA:
	c.li	a2,00000010
	c.mv	a1,s3
	addi	a0,a0,+00000050
	jal	ra,00000000230A382C

l230537E6:
	lbu	a5,s0,+00000181
	andi	a5,a5,+000000FB
	sb	a5,s0,+00000181
	lbu	a4,s1,+00000003
	c.or	a5,a4
	c.beqz	a5,0000000023053804

l230537FA:
	lhu	a5,s0,+00000180
	c.beqz	a5,000000002305380E

l23053800:
	c.li	a0,00000000
	c.j	00000000230537CC

l23053804:
	c.mv	a0,s0
	jal	ra,00000000230535E8
	c.beqz	a0,00000000230537FA

l2305380C:
	c.j	00000000230537CC

l2305380E:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023052652
	c.j	0000000023053800

;; smp_master_ident: 23053818
smp_master_ident proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a0
	c.mv	s2,a1
	c.lw	a0,0(s1)
	c.li	a1,0000000C
	addi	a0,a0,+0000009C
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023053898

l23053838:
	lbu	a1,s1,+00000008
	addi	s4,s1,+00000070
	c.mv	a2,s4
	c.li	a0,00000004
	lw	s3,s2,+00000008
	jal	ra,0000000023055782
	c.mv	s2,a0
	c.bnez	a0,0000000023053876

l23053850:
	c.mv	a0,s4
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.li	a0,00000008

l23053866:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23053876:
	c.li	a2,00000002
	c.mv	a1,s3
	c.addi	a0,00000014
	jal	ra,00000000230A382C
	c.li	a2,00000008
	addi	a1,s3,+00000002
	addi	a0,s2,+0000000C
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000181
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000181

l23053898:
	lbu	a5,s0,+00000181
	c.li	a1,00000008
	andi	a4,a5,+00000002
	c.bnez	a4,00000000230538AA

l230538A4:
	c.andi	a5,00000004
	c.beqz	a5,00000000230538B2

l230538A8:
	c.li	a1,0000000A

l230538AA:
	addi	a0,s0,+00000098
	jal	ra,00000000230525D6

l230538B2:
	lbu	a5,s1,+00000003
	c.beqz	a5,00000000230538C2

l230538B8:
	lhu	a5,s0,+00000180
	c.beqz	a5,00000000230538D2

l230538BE:
	c.li	a0,00000000
	c.j	0000000023053866

l230538C2:
	lbu	a5,s0,+00000181
	c.bnez	a5,00000000230538B8

l230538C8:
	c.mv	a0,s0
	jal	ra,00000000230535E8
	c.beqz	a0,00000000230538B8

l230538D0:
	c.j	0000000023053866

l230538D2:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023052652
	c.j	00000000230538BE

;; smp_init: 230538DC
;;   Called from:
;;     230539A2 (in smp_send_pairing_req)
;;     23053CA2 (in smp_pairing_req)
;;     2305532C (in bt_smp_start_security)
smp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000098
	c.swsp	s0,00000004
	addi	a2,zero,+000000EC
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	addi	a0,s0,+000000BF
	c.li	a1,00000010
	jal	ra,000000002304B7D8
	c.li	s0,00000008
	c.bnez	a0,000000002305392A

l23053904:
	c.li	a1,00000005
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,00000000230525D6
	jal	ra,0000000023050EC0
	lui	a5,0004200F
	sw	a0,a5,+0000049C
	lui	a0,00042026
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000614
	jal	ra,0000000023048B2A

l2305392A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; smp_send_pairing_req: 23053936
;;   Called from:
;;     23053AA8 (in smp_security_request)
;;     23055282 (in bt_smp_start_security)
smp_send_pairing_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s3,a0
	jal	ra,00000000230525B0
	addi	s1,zero,-00000039
	c.beqz	a0,0000000023053970

l23053952:
	addi	s4,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,00000000230525E0
	c.li	s1,FFFFFFFB
	c.bnez	a0,0000000023053970

l23053964:
	c.li	a1,00000003
	c.mv	a0,s4
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023053984

l2305396E:
	c.li	s1,FFFFFFF0

l23053970:
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

l23053984:
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305396E

l2305398E:
	lbu	a0,s3,+0000000A
	c.li	s1,FFFFFFEA
	jal	ra,0000000023052F74
	c.beqz	a0,0000000023053970

l2305399A:
	lw	a5,s3,+0000009C
	c.beqz	a5,00000000230539B0

l230539A0:
	c.mv	a0,s0
	jal	ra,00000000230538DC
	c.mv	s1,a0
	c.beqz	a0,00000000230539C6

l230539AA:
	addi	s1,zero,-00000037
	c.j	0000000023053970

l230539B0:
	lbu	a0,s3,+00000008
	addi	a1,s3,+00000070
	c.li	s1,FFFFFFF4
	jal	ra,00000000230555EA
	sw	a0,s3,+0000009C
	c.bnez	a0,00000000230539A0

l230539C4:
	c.j	0000000023053970

l230539C6:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023053158
	c.mv	s5,a0
	c.beqz	a0,00000000230539AA

l230539D2:
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	s2,a0
	c.li	a1,00000009
	addi	a0,s3,+0000000A
	jal	ra,0000000023052F20
	sb	a0,s2,+00000002
	jal	ra,000000002305256A
	lui	a5,0004200F
	lbu	a5,a5,+00000498
	sb	a0,s2,+00000000
	c.mv	a1,s2
	sb	a5,s2,+00000001
	c.li	a5,00000010
	sb	a5,s2,+00000003
	c.li	a5,00000005
	sb	a5,s2,+00000004
	c.li	a5,00000007
	sb	a5,s2,+00000005
	addi	a5,zero,+00000705
	sh	a5,s0,+00000180
	c.li	a5,00000001
	sb	a5,s0,+000000A1
	c.li	a2,00000006
	addi	a0,s0,+000000A2
	jal	ra,00000000230A382C
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,00000000230531AA
	addi	s0,s0,+00000098
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.li	a1,0000000B
	jal	ra,00000000230525D6
	c.li	a1,00000003
	c.mv	a0,s4
	jal	ra,00000000230525D6
	c.j	0000000023053970

;; smp_security_request: 23053A52
smp_security_request proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	s1,a0,+0000009C
	c.lw	a0,0(s0)
	lw	s2,a1,+00000008
	c.mv	a0,s1
	c.li	a1,00000003
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023053A76

l23053A72:
	c.li	a0,00000000
	c.j	0000000023053B3E

l23053A76:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.bnez	a0,0000000023053A72

l23053A80:
	lui	a4,0004200F
	lbu	a5,s2,+00000000
	lbu	a4,a4,+000004A0
	andi	s2,a5,+00000007
	c.beqz	a4,0000000023053A96

l23053A92:
	andi	s2,a5,+0000000F

l23053A96:
	lw	a5,s0,+0000009C
	c.beqz	a5,0000000023053ABA

l23053A9C:
	lhu	a5,a5,+0000000A
	andi	a5,a5,+00000024
	c.bnez	a5,0000000023053AE2

l23053AA6:
	c.mv	a0,s0
	jal	ra,0000000023053936
	blt	a0,zero,0000000023053B3C

l23053AB0:
	c.li	a1,0000000E

l23053AB2:
	c.mv	a0,s1
	jal	ra,00000000230525D6
	c.j	0000000023053A72

l23053ABA:
	lbu	a1,s0,+00000008
	addi	s3,s0,+00000070
	c.mv	a2,s3
	addi	a0,zero,+00000020
	jal	ra,000000002305577E
	sw	a0,s0,+0000009C
	c.bnez	a0,0000000023053AE2

l23053AD2:
	lbu	a1,s0,+00000008
	c.mv	a2,s3
	c.li	a0,00000004
	jal	ra,000000002305577E
	sw	a0,s0,+0000009C

l23053AE2:
	lw	a1,s0,+0000009C
	c.beqz	a1,0000000023053AA6

l23053AE8:
	andi	a5,s2,+00000004
	c.beqz	a5,0000000023053B10

l23053AEE:
	lbu	a5,a1,+00000009
	c.andi	a5,00000001
	c.bnez	a5,0000000023053B10

l23053AF6:
	jal	ra,000000002305256A
	c.li	a5,00000003
	bne	a0,a5,0000000023053AA6

l23053B00:
	lui	a0,000230BC
	c.mv	a1,s2
	addi	a0,a0,-00000154
	jal	ra,0000000023082388
	c.j	0000000023053AA6

l23053B10:
	andi	s2,s2,+00000008
	beq	s2,zero,0000000023053B22

l23053B18:
	lhu	a5,a1,+0000000A
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023053AA6

l23053B22:
	lbu	a4,a1,+00000008
	addi	a3,a1,+00000016
	addi	a2,a1,+00000014
	c.mv	a0,s0
	c.addi	a1,0000000C
	jal	ra,000000002304A594
	c.li	a1,00000001
	bge	a0,zero,0000000023053AB2

l23053B3C:
	c.li	a0,00000008

l23053B3E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; smp_pairing_req: 23053B4C
smp_pairing_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a1,8(s1)
	c.li	a4,00000009
	lbu	a5,s1,+00000003
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023053B80

l23053B6C:
	c.li	s1,00000006

l23053B6E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23053B80:
	lw	s3,a0,+00000000
	c.mv	s0,a0
	lw	a5,s3,+0000009C
	beq	a5,zero,0000000023053C88

l23053B8E:
	addi	s2,s0,+0000009C
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,00000000230525E0
	beq	a0,zero,0000000023053CA0

l23053B9E:
	c.li	a5,00000001
	c.li	a2,00000006
	sb	a5,s0,+000000A1
	c.mv	a1,s1
	addi	a0,s0,+000000A2
	jal	ra,00000000230A382C
	c.li	a5,00000002
	sb	a5,s0,+000000A8
	lbu	a1,s1,+00000002
	addi	a0,s3,+0000000A
	jal	ra,0000000023052F20
	sb	a0,s0,+000000AB
	c.mv	s4,a0
	jal	ra,000000002305256A
	lui	a5,0004200F
	lbu	a5,a5,+00000498
	sb	a0,s0,+000000A9
	andi	s4,s4,+00000008
	sb	a5,s0,+000000AA
	c.li	a5,00000010
	sb	a5,s0,+000000AC
	lbu	a5,s1,+00000004
	c.andi	a5,00000007
	sb	a5,s0,+000000AD
	lbu	a5,s1,+00000005
	c.andi	a5,00000005
	sb	a5,s0,+000000AE
	beq	s4,zero,0000000023053C22

l23053BFE:
	lbu	a5,s1,+00000002
	c.andi	a5,00000008
	c.beqz	a5,0000000023053C22

l23053C06:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525D6
	lbu	a5,s0,+000000AD
	c.andi	a5,00000006
	sb	a5,s0,+000000AD
	lbu	a5,s0,+000000AE
	c.andi	a5,00000004
	sb	a5,s0,+000000AE

l23053C22:
	lbu	a5,s0,+000000AB
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023053C3E

l23053C2C:
	lbu	a5,s1,+00000002
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023053C3E

l23053C36:
	c.li	a1,00000013
	c.mv	a0,s2
	jal	ra,00000000230525D6

l23053C3E:
	lbu	a5,s0,+000000AE
	sb	a5,s0,+00000180
	lbu	a5,s0,+000000AD
	sb	a5,s0,+00000181
	lbu	a5,s0,+000000AB
	c.andi	a5,00000001
	c.beqz	a5,0000000023053C66

l23053C56:
	lbu	a5,s1,+00000002
	c.andi	a5,00000001
	c.beqz	a5,0000000023053C66

l23053C5E:
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,00000000230525D6

l23053C66:
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,00000000230525D6
	lbu	a1,s1,+00000000
	c.mv	a0,s0
	jal	ra,00000000230530A8
	sb	a0,s0,+000000A0
	c.mv	a0,s0
	jal	ra,0000000023052B86
	c.bnez	a0,0000000023053CB0

l23053C84:
	c.li	s1,00000003
	c.j	0000000023053B6E

l23053C88:
	lbu	a0,s3,+00000008
	addi	a1,s3,+00000070
	jal	ra,00000000230555EA
	sw	a0,s3,+0000009C
	bne	a0,zero,0000000023053B8E

l23053C9C:
	c.li	s1,00000008
	c.j	0000000023053B6E

l23053CA0:
	c.mv	a0,s0
	jal	ra,00000000230538DC
	beq	a0,zero,0000000023053B9E

l23053CAA:
	andi	s1,a0,+000000FF
	c.j	0000000023053B6E

l23053CB0:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525E0
	lbu	a5,s0,+000000A0
	c.mv	s1,a5
	c.bnez	a0,0000000023053D18

l23053CC0:
	c.bnez	a5,0000000023053CEE

l23053CC2:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.bnez	a0,0000000023053CEE

l23053CCC:
	lui	s3,00042026
	lw	a5,s3,+00000610
	c.beqz	a5,0000000023053CEE

l23053CD6:
	c.lw	a5,20(a5)
	c.beqz	a5,0000000023053CEE

l23053CDA:
	c.mv	a0,s2
	c.li	a1,00000009
	jal	ra,00000000230525D6
	lw	a5,s3,+00000610
	c.lw	s0,0(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	0000000023053B6E

l23053CEE:
	c.mv	a0,s0
	jal	ra,00000000230535A8
	c.mv	s1,a0
	bne	a0,zero,0000000023053B6E

l23053CFA:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023052DBC

l23053D18:
	lbu	a3,s3,+0000000A
	c.li	a4,00000004
	bne	a3,a4,0000000023053D5A

l23053D22:
	c.beqz	a5,0000000023053C84

l23053D24:
	lbu	a4,s0,+000000AC
	lbu	a5,s0,+000000A5
	bgeu	a4,a5,0000000023053D32

l23053D30:
	c.mv	a5,a4

l23053D32:
	andi	a5,a5,+000000FF
	c.li	a4,00000010
	bne	a5,a4,0000000023053B6C

l23053D3C:
	addi	a0,s0,+00000098
	c.li	a1,0000000C
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,00000000230535A8

l23053D5A:
	c.bnez	a5,0000000023053D3C

l23053D5C:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.bnez	a0,0000000023053D3C

l23053D66:
	lui	s3,00042026
	lw	a5,s3,+00000610
	c.beqz	a5,0000000023053D3C

l23053D70:
	c.lw	a5,20(a5)
	c.beqz	a5,0000000023053D3C

l23053D74:
	c.j	0000000023053CDA

;; smp_check_complete.part.16: 23053D76
;;   Called from:
;;     23053DB8 (in smp_sign_info_sent)
;;     23054170 (in smp_ident_sent)
smp_check_complete.part.16 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.li	a1,00000006
	c.swsp	ra,00000084
	jal	ra,0000000023051800
	lbu	a4,a0,+00000180
	xori	s0,s0,-00000001
	c.and	s0,a4
	sb	s0,a0,+00000180
	lhu	a5,a0,+00000180
	c.bnez	a5,0000000023053DA4

l23053D98:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023052652

l23053DA4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; smp_sign_info_sent: 23053DAC
smp_sign_info_sent proc
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023053DBC

l23053DB6:
	c.li	a1,00000004
	jal	zero,0000000023053D76

l23053DBC:
	c.jr	ra

;; le_sc_oob_config_set.isra.3.constprop.19: 23053DBE
le_sc_oob_config_set.isra.3.constprop.19 proc
	c.lw	a0,0(a5)
	lbu	a3,a0,+000000A3
	lbu	a4,a0,+000000AA
	lbu	a5,a5,+00000003
	c.andi	a3,00000001
	c.andi	a4,00000001
	c.bnez	a5,0000000023053DE0

l23053DD2:
	addi	a5,a4,+00000001
	c.bnez	a3,0000000023053DE6

l23053DD8:
	c.li	a5,00000003
	c.beqz	a4,0000000023053DE6

l23053DDC:
	c.li	a5,00000000
	c.j	0000000023053DE6

l23053DE0:
	slli	a5,a4,00000001
	c.beqz	a3,0000000023053DEC

l23053DE6:
	sb	a5,a1,+00000000
	c.jr	ra

l23053DEC:
	c.li	a5,00000003
	c.beqz	a4,0000000023053DE6

l23053DF0:
	c.li	a5,00000001
	c.j	0000000023053DE6

;; smp_error: 23053DF4
;;   Called from:
;;     23053EF2 (in bt_smp_dhkey_ready)
;;     23053F8E (in bt_smp_recv)
;;     23054962 (in bt_smp_pkey_ready)
;;     23054994 (in bt_smp_pkey_ready)
;;     230549D4 (in bt_smp_pkey_ready)
;;     230549F8 (in bt_smp_pkey_ready)
;;     23055040 (in bt_smp_auth_passkey_entry)
;;     23055074 (in bt_smp_auth_passkey_entry)
;;     23055112 (in bt_smp_auth_passkey_confirm)
;;     230553FC (in bt_smp_update_keys)
smp_error proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023052652
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,0000000023053158
	c.beqz	a0,0000000023053E38

l23053E0E:
	c.mv	a2,a0
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
	sb	s1,a0,+00000000
	c.lwsp	a2,00000084
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000006
	jal	ra,0000000023051360
	c.li	a0,00000000

l23053E2E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23053E38:
	addi	a0,zero,-00000037
	c.j	0000000023053E2E

;; bt_smp_dhkey_ready: 23053E3E
bt_smp_dhkey_ready proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042017
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,s0,-000006AC
	c.li	a1,00000007
	addi	a0,a0,+0000009C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023052AF4
	addi	s0,s0,-000006AC
	c.bnez	a0,0000000023053E74

l23053E64:
	c.li	a1,00000007
	addi	a0,s0,+00000244
	jal	ra,0000000023052AF4
	c.beqz	a0,0000000023053EFC

l23053E70:
	c.li	s1,00000001
	c.j	0000000023053E76

l23053E74:
	c.li	s1,00000000

l23053E76:
	addi	a5,zero,+000001A8
	add	s1,s1,a5
	c.li	a1,0000000B
	add	s2,s0,s1
	beq	s3,zero,0000000023053EE4

l23053E88:
	addi	a0,s1,+0000012F
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.add	a0,s0
	addi	s1,s1,+0000009C
	jal	ra,00000000230A382C
	c.add	s0,s1
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,00000000230525E0
	c.li	a1,00000008
	c.bnez	a0,0000000023053EB6

l23053EAA:
	c.li	a1,0000000F
	c.mv	a0,s0
	jal	ra,00000000230525E0
	c.li	a1,00000008
	c.beqz	a0,0000000023053EC8

l23053EB6:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230525D6

l23053EC8:
	c.mv	a0,s0
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023053EFC

l23053ED0:
	lw	a5,s2,+00000000
	c.mv	a0,s2
	lbu	a5,a5,+00000003
	c.bnez	a5,0000000023053EF6

l23053EDC:
	jal	ra,0000000023053218

l23053EE0:
	c.mv	a1,a0
	c.beqz	a0,0000000023053EFC

l23053EE4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023053DF4

l23053EF6:
	jal	ra,00000000230532CC
	c.j	0000000023053EE0

l23053EFC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_smp_recv: 23053F0A
bt_smp_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a1,+0000000C
	c.bnez	a5,0000000023053F38

l23053F1C:
	lui	a0,000230BC
	addi	a0,a0,-00000470
	jal	ra,0000000023082388

l23053F28:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23053F38:
	c.mv	s2,a1
	c.mv	s0,a0
	c.li	a1,00000001
	addi	a0,s2,+00000008
	jal	ra,0000000023049400
	c.mv	s3,a0
	c.li	a1,00000004
	addi	a0,s0,+0000009C
	jal	ra,00000000230525E0
	lbu	a1,s3,+00000000
	c.beqz	a0,0000000023053F66

l23053F58:
	lui	a0,000230BC
	addi	a0,a0,-00000450
	jal	ra,0000000023082388
	c.j	0000000023053F28

l23053F66:
	c.li	a5,0000000D
	bltu	a5,a1,0000000023053F7E

l23053F6C:
	lui	s1,000230BC
	addi	s1,s1,-000002F4
	slli	a5,a1,00000003
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023053F94

l23053F7E:
	lui	a0,000230BC
	addi	a0,a0,-0000041C
	jal	ra,0000000023082388
	c.li	a1,00000007

l23053F8C:
	c.mv	a0,s0
	jal	ra,0000000023053DF4
	c.j	0000000023053F28

l23053F94:
	addi	a0,s0,+00000098
	jal	ra,0000000023052AF4
	lbu	a2,s3,+00000000
	c.bnez	a0,0000000023053FBE

l23053FA2:
	lui	a0,000230BC
	c.mv	a1,a2
	addi	a0,a0,-00000400
	jal	ra,0000000023082388
	lbu	a4,s3,+00000000
	c.li	a5,00000005
	c.li	a1,00000008
	beq	a4,a5,0000000023053F28

l23053FBC:
	c.j	0000000023053F8C

l23053FBE:
	slli	a5,a2,00000003
	c.add	s1,a5
	lhu	a1,s2,+0000000C
	lbu	a5,s1,+00000004
	beq	a5,a1,0000000023053FE0

l23053FD0:
	lui	a0,000230BC
	addi	a0,a0,-000003E0
	jal	ra,0000000023082388
	c.li	a1,0000000A
	c.j	0000000023053F8C

l23053FE0:
	c.lw	s1,0(a5)
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,0000000023053F28

l23053FEC:
	c.j	0000000023053F8C

;; bt_smp_encrypt_change: 23053FEE
bt_smp_encrypt_change proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	addi	s1,a0,+0000009C
	c.mv	s3,a1
	c.mv	s0,a0
	lw	s2,a0,+00000000
	c.li	a1,FFFFFFFD
	c.mv	a0,s1
	jal	ra,0000000023048EE2
	bne	s3,zero,00000000230540BE

l23054012:
	lbu	a5,s2,+0000000B
	c.beqz	a5,00000000230540BE

l23054018:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.bnez	a0,0000000023054034

l23054022:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230525F8

l23054034:
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023054066

l2305403E:
	lbu	a5,s0,+00000180
	c.andi	a5,00000008
	c.beqz	a5,0000000023054056

l23054046:
	lbu	a5,s0,+00000181
	c.andi	a5,00000008
	c.beqz	a5,0000000023054056

l2305404E:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230525D6

l23054056:
	lhu	a5,s0,+00000180
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007F7
	c.and	a5,a4
	sh	a5,s0,+00000180

l23054066:
	lbu	a5,s0,+00000181
	c.li	a1,00000006
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023054080

l23054072:
	andi	a4,a5,+00000002
	c.li	a1,00000008
	c.bnez	a4,0000000023054080

l2305407A:
	c.andi	a5,00000004
	c.beqz	a5,0000000023054088

l2305407E:
	c.li	a1,0000000A

l23054080:
	addi	a0,s0,+00000098
	jal	ra,00000000230525D6

l23054088:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,00000000230525D6
	lbu	a5,s2,+00000003
	c.bnez	a5,000000002305409C

l23054096:
	lbu	a5,s0,+00000181
	c.bnez	a5,00000000230540BE

l2305409C:
	c.mv	a0,s0
	jal	ra,00000000230535E8
	c.bnez	a0,00000000230540BE

l230540A4:
	lhu	a5,s0,+00000180
	c.bnez	a5,00000000230540BE

l230540AA:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023052652

l230540BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; smp_send_pairing_confirm: 230540CC
;;   Called from:
;;     23054390 (in smp_pairing_confirm)
;;     2305506A (in bt_smp_auth_passkey_entry)
;;     23055096 (in bt_smp_auth_passkey_entry)
smp_send_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a5,a0,+000000A0
	c.li	a4,00000002
	bltu	a4,a5,00000000230540E6

l230540E0:
	c.bnez	a5,00000000230540FA

l230540E2:
	c.li	s0,00000000
	c.j	0000000023054110

l230540E6:
	c.li	a4,00000003
	beq	a5,a4,00000000230540E2

l230540EC:
	c.li	a0,00000008

l230540EE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230540FA:
	lbu	a3,a0,+00000174
	lw	s0,a0,+00000170
	srl	s0,s0,a3
	c.andi	s0,00000001
	ori	s0,s0,-00000080
	andi	s0,s0,+000000FF

l23054110:
	c.li	a1,00000003
	c.mv	s1,a0
	jal	ra,0000000023053158
	c.mv	s2,a0
	c.li	a0,00000008
	beq	s2,zero,00000000230540EE

l23054120:
	c.li	a1,00000010
	addi	a0,s2,+00000008
	jal	ra,00000000230492DE
	lui	a5,0004200F
	c.mv	a4,a0
	lw	a0,a5,+0000049C
	c.mv	a3,s0
	addi	a2,s1,+000000BF
	addi	a1,s1,+000000EF
	jal	ra,00000000230527B8
	c.beqz	a0,000000002305414C

l23054144:
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.j	00000000230540EC

l2305414C:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230531AA
	c.li	a1,FFFFFFFE
	addi	a0,s1,+0000009C
	jal	ra,0000000023048EE2
	c.li	a0,00000000
	c.j	00000000230540EE

;; smp_ident_sent: 23054164
smp_ident_sent proc
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023054174

l2305416E:
	c.li	a1,00000001
	jal	zero,0000000023053D76

l23054174:
	c.jr	ra

;; smp_c1: 23054176
;;   Called from:
;;     23054284 (in legacy_send_pairing_confirm)
;;     23054A5A (in smp_pairing_random)
smp_c1 proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s3,a5
	lbu	a5,a4,+00000000
	c.mv	s1,a0
	c.mv	s4,a1
	sb	a5,sp,+00000010
	lbu	a5,s3,+00000000
	c.mv	a1,a2
	addi	a0,sp,+00000012
	c.li	a2,00000007
	sb	a5,sp,+00000011
	c.swsp	a3,00000084
	c.mv	s2,a4
	c.mv	s0,a6
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	c.li	a2,00000007
	addi	a0,sp,+00000019
	c.mv	a1,a3
	jal	ra,00000000230A382C
	c.li	a3,00000000
	c.li	a5,00000010

l230541BE:
	c.addi4spn	a1,00000010
	add	a2,s4,a3
	c.add	a1,a3
	lbu	a2,a2,+00000000
	lbu	a1,a1,+00000000
	add	a4,s0,a3
	c.addi	a3,00000001
	c.xor	a2,a1
	sb	a2,a4,+00000000
	bne	a3,a5,00000000230541BE

l230541DE:
	c.mv	a2,s0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304B7E8
	c.bnez	a0,0000000023054224

l230541EA:
	c.li	a2,00000006
	addi	a1,s3,+00000001
	c.addi4spn	a0,00000020
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s2,+00000001
	addi	a0,sp,+00000026
	jal	ra,00000000230A382C
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,00000000230A3A68
	c.addi4spn	a5,00000020
	addi	a2,s0,+00000010
	c.mv	a4,s0

l23054216:
	bne	a2,a4,0000000023054234

l2305421A:
	c.mv	a2,s0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304B7E8

l23054224:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l23054234:
	c.addi	a4,00000001
	lbu	a3,a4,-00000001
	lbu	a1,a5,+00000000
	c.addi	a5,00000001
	c.xor	a3,a1
	sb	a3,a4,+00000FFF
	c.j	0000000023054216

;; legacy_send_pairing_confirm: 23054248
;;   Called from:
;;     230542EC (in legacy_pairing_confirm)
;;     230544F8 (in smp_pairing_rsp)
;;     230551C8 (in bt_smp_auth_pairing_confirm)
legacy_send_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a1,00000003
	c.mv	s0,a0
	lw	s2,a0,+00000000
	jal	ra,0000000023053158
	c.beqz	a0,0000000023054290

l23054260:
	c.li	a1,00000010
	c.mv	s1,a0
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	a6,a0
	addi	a5,s2,+0000007E
	addi	a4,s2,+00000077
	addi	a3,s0,+000000A8
	addi	a2,s0,+000000A1
	addi	a1,s0,+000000BF
	addi	a0,s0,+000000DF
	jal	ra,0000000023054176
	c.beqz	a0,0000000023054294

l2305428A:
	c.mv	a0,s1
	jal	ra,00000000230491C0

l23054290:
	c.li	a0,00000008
	c.j	00000000230542AA

l23054294:
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230531AA
	c.li	a1,FFFFFFFE
	addi	a0,s0,+0000009C
	jal	ra,0000000023048EE2
	c.li	a0,00000000

l230542AA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; legacy_pairing_confirm: 230542B6
;;   Called from:
;;     23054366 (in smp_pairing_confirm)
;;     23055036 (in bt_smp_auth_passkey_entry)
legacy_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.li	a1,00000003
	lbu	a5,a5,+00000003
	c.beqz	a5,00000000230542DA

l230542CA:
	addi	s1,a0,+0000009C
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.bnez	a0,00000000230542F0

l230542D8:
	c.li	a1,00000004

l230542DA:
	addi	a0,s0,+00000098
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023054248

l230542F0:
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,00000000230525D6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; smp_pairing_confirm: 23054304
smp_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a1,+00000008
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	addi	a1,zero,-00000401
	c.mv	a0,s1
	jal	ra,0000000023048EE2
	c.li	a2,00000010
	c.mv	a1,s2
	addi	a0,s0,+000000AF
	jal	ra,00000000230A382C
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000003
	c.bnez	a5,0000000023054350

l23054336:
	addi	a0,s0,+00000098
	c.li	a1,00000004
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023053502

l23054350:
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305436A

l2305435A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230542B6

l2305436A:
	lbu	a5,s0,+000000A0
	c.li	a4,00000001
	beq	a5,a4,0000000023054394

l23054374:
	c.li	a4,00000002
	bne	a5,a4,00000000230543B4

l2305437A:
	addi	a0,s0,+00000098
	c.li	a1,00000004
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230540CC

l23054394:
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,000000002305437A

l2305439E:
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,00000000230525D6
	c.li	a0,00000000

l230543A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230543B4:
	c.li	a0,00000008
	c.j	00000000230543A8

;; smp_pairing_rsp: 230543B8
smp_pairing_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,8(s1)
	c.li	a4,00000009
	lbu	a5,s1,+00000003
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bgeu	a4,a5,00000000230543E8

l230543D6:
	c.li	s1,00000006

l230543D8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230543E8:
	lbu	a4,s1,+00000004
	lbu	a5,a0,+00000180
	lw	s3,a0,+00000000
	c.mv	s0,a0
	c.and	a5,a4
	sb	a5,a0,+00000180
	lbu	a4,s1,+00000005
	lbu	a5,a0,+00000181
	c.li	a2,00000006
	c.mv	a1,s1
	c.and	a5,a4
	sb	a5,a0,+00000181
	c.li	a5,00000002
	sb	a5,a0,+000000A8
	addi	a0,a0,+000000A9
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000002
	c.andi	a5,00000008
	c.beqz	a5,0000000023054436

l23054424:
	lbu	a5,s0,+000000A4
	c.andi	a5,00000008
	c.beqz	a5,0000000023054436

l2305442C:
	c.li	a1,00000005
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6

l23054436:
	lbu	a5,s1,+00000002
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023054454

l23054440:
	lbu	a5,s0,+000000A4
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023054454

l2305444A:
	c.li	a1,00000013
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6

l23054454:
	lbu	a5,s1,+00000002
	c.andi	a5,00000001
	c.beqz	a5,000000002305446E

l2305445C:
	lbu	a5,s0,+000000A4
	c.andi	a5,00000001
	c.beqz	a5,000000002305446E

l23054464:
	c.li	a1,0000000C
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6

l2305446E:
	lbu	a1,s1,+00000000
	c.mv	a0,s0
	jal	ra,00000000230530A8
	sb	a0,s0,+000000A0
	c.mv	a0,s0
	jal	ra,0000000023052B86
	c.bnez	a0,0000000023054488

l23054484:
	c.li	s1,00000003
	c.j	00000000230543D8

l23054488:
	addi	s2,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525E0
	lbu	a4,s0,+000000A0
	c.mv	s1,a4
	c.bnez	a0,0000000023054506

l2305449C:
	c.bnez	a4,00000000230544CA

l2305449E:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230544CA

l230544A8:
	lui	s3,00042026
	lw	a5,s3,+00000610
	c.beqz	a5,00000000230544CA

l230544B2:
	c.lw	a5,20(a5)
	c.beqz	a5,00000000230544CA

l230544B6:
	c.mv	a0,s2
	c.li	a1,00000009
	jal	ra,00000000230525D6
	lw	a5,s3,+00000610
	c.lw	s0,0(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	00000000230543D8

l230544CA:
	c.mv	a0,s0
	jal	ra,0000000023052DBC
	c.mv	s1,a0
	bne	a0,zero,00000000230543D8

l230544D6:
	c.li	a1,00000009
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.bnez	a0,00000000230544FC

l230544E0:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,00000000230525D6
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023054248

l230544FC:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230525D6
	c.j	00000000230543D8

l23054506:
	lbu	a3,s3,+0000000A
	c.li	a5,00000004
	bne	a3,a5,000000002305452A

l23054510:
	c.beqz	a4,0000000023054484

l23054512:
	lbu	a3,s0,+000000A5
	lbu	a5,s0,+000000AC
	bgeu	a3,a5,0000000023054520

l2305451E:
	c.mv	a5,a3

l23054520:
	andi	a5,a5,+000000FF
	c.li	a3,00000010
	bne	a5,a3,00000000230543D6

l2305452A:
	lhu	a5,s0,+00000180
	andi	a5,a5,+00000604
	sh	a5,s0,+00000180
	c.bnez	a4,0000000023054550

l23054538:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023054550

l23054542:
	lui	s3,00042026
	lw	a5,s3,+00000610
	c.beqz	a5,0000000023054550

l2305454C:
	c.lw	a5,20(a5)
	c.bnez	a5,00000000230544B6

l23054550:
	lui	a5,0004200F
	lw	a5,a5,+0000049C
	c.bnez	a5,0000000023054566

l2305455A:
	c.li	a1,00000006
	c.mv	a0,s2
	jal	ra,00000000230525D6
	c.li	s1,00000000
	c.j	00000000230543D8

l23054566:
	addi	s1,s0,+00000098
	c.mv	a0,s1
	c.li	a1,0000000C
	jal	ra,00000000230525D6
	c.lui	a1,FFFFF000
	c.mv	a0,s1
	addi	a1,a1,+000007FF
	jal	ra,0000000023048EE2
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023053542

;; smp_ident_addr_info: 23054590
smp_ident_addr_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s2,a1,+00000008
	c.mv	s1,a0
	c.lw	a0,0(s0)
	lbu	a5,s2,+00000000
	c.beqz	a5,00000000230545F8

l230545AC:
	lbu	a5,s2,+00000006
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,00000000230545F8

l230545BC:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001C4
	jal	ra,0000000023082388
	addi	a0,s0,+00000070
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001AC
	jal	ra,0000000023082388
	c.li	a0,0000000A

l230545E8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230545F8:
	c.li	a1,0000000C
	addi	a0,s1,+0000009C
	jal	ra,00000000230525E0
	c.beqz	a0,000000002305469C

l23054604:
	lbu	a1,s0,+00000008
	addi	s4,s0,+00000070
	c.mv	a2,s4
	c.li	a0,00000002
	jal	ra,0000000023055782
	c.mv	s3,a0
	c.bnez	a0,0000000023054630

l23054618:
	c.mv	a0,s4
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.li	a0,00000008
	c.j	00000000230545E8

l23054630:
	lbu	a5,s0,+00000003
	addi	a1,s0,+00000077
	c.bnez	a5,000000002305463E

l2305463A:
	addi	a1,s0,+0000007E

l2305463E:
	lbu	a4,a1,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023054696

l23054648:
	lbu	a5,a1,+00000006
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,0000000023054696

l23054658:
	c.li	a2,00000006
	c.addi	a1,00000001
	addi	a0,s3,+00000036
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000070
	c.beqz	a5,0000000023054696

l2305466A:
	lbu	a5,s0,+00000076
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,0000000023054696

l2305467A:
	c.li	a2,00000007
	c.mv	a1,s2
	addi	a0,s3,+00000001
	jal	ra,00000000230A382C
	c.li	a2,00000007
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.mv	a0,s0
	jal	ra,000000002304A54C

l23054696:
	c.mv	a0,s3
	jal	ra,000000002304EE64

l2305469C:
	lbu	a5,s1,+00000181
	andi	a4,a5,-00000003
	sb	a4,s1,+00000181
	c.andi	a5,00000004
	c.beqz	a5,00000000230546B6

l230546AC:
	c.li	a1,0000000A
	addi	a0,s1,+00000098
	jal	ra,00000000230525D6

l230546B6:
	lbu	a5,s0,+00000003
	c.beqz	a5,00000000230546C6

l230546BC:
	lhu	a5,s1,+00000180
	c.beqz	a5,00000000230546D6

l230546C2:
	c.li	a0,00000000
	c.j	00000000230545E8

l230546C6:
	lbu	a5,s1,+00000181
	c.bnez	a5,00000000230546BC

l230546CC:
	c.mv	a0,s1
	jal	ra,00000000230535E8
	c.beqz	a0,00000000230546BC

l230546D4:
	c.j	00000000230545E8

l230546D6:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023052652
	c.j	00000000230546C2

;; smp_public_key_slave.part.15: 230546E0
;;   Called from:
;;     230548FE (in smp_public_key)
;;     230549B0 (in bt_smp_pkey_ready)
;;     230549E4 (in bt_smp_pkey_ready)
smp_public_key_slave.part.15 proc
	lbu	a5,a0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023054780

l230546EA:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-000005BC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jr	a5
23054702       91 45 13 05 85 09 EF D0 FF EC 22 85 EF F0   .E........"...
23054710 FF 9B AA 87 29 C1 B2 40 22 44 3E 85 41 01 82 80 ....)..@"D>.A...
23054720 EF E0 EF BF AA 87 8D 45 7D F5 13 05 84 09 EF D0 .......E}.......
23054730 9F EA 15 A0 8D 45 13 05 85 09 EF D0 DF E9 13 05 .....E..........
23054740 C4 09 A5 45 EF D0 3F E9 B7 67 02 42 83 A7 07 61 ...E..?..g.B...a
23054750 08 40 DC 43 82 97 B7 45 05 23 93 85 E5 E3 13 05 .@.C...E.#......
23054760 F4 0E EF C0 4F F8 A1 47 5D F5 9D 45 13 05 C4 09 ....O..G]..E....
23054770 EF D0 7F E6 81 47 45 B7 91 45 45 BF A1 47 61 BF .....GE..EE..Ga.

l23054780:
	c.li	a5,00000008
	c.mv	a0,a5
	c.jr	ra

;; smp_public_key: 23054786
smp_public_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s1,00000088
	c.lw	a1,8(s1)
	addi	s2,a0,+000000EF
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	addi	a1,s1,+00000020
	addi	a0,s0,+0000010F
	jal	ra,00000000230A382C
	lui	a1,000230BC
	addi	a2,zero,+00000040
	addi	a1,a1,-00000224
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230547E0

l230547C8:
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023054828

l230547D0:
	lui	a5,0004200F
	lw	a5,a5,+0000049C
	bne	a5,zero,00000000230548F2

l230547DC:
	c.li	a1,00000006
	c.j	000000002305485E

l230547E0:
	c.li	a1,0000000D
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6
	c.lw	s0,0(s1)
	lw	a5,s1,+0000009C
	c.bnez	a5,0000000023054802

l230547F2:
	lbu	a0,s1,+00000008
	addi	a1,s1,+00000070
	jal	ra,00000000230555EA
	sw	a0,s1,+0000009C

l23054802:
	lw	a5,s1,+0000009C
	c.beqz	a5,00000000230547C8

l23054808:
	lhu	a4,a5,+0000000A
	andi	a4,a4,+00000024
	c.beqz	a4,00000000230547C8

l23054812:
	lbu	a5,a5,+00000009
	c.li	a0,00000003
	c.andi	a5,00000002
	c.beqz	a5,00000000230547C8

l2305481C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23054828:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,00000000230548AC

l23054832:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-000005A4
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23054842       8D 45 13 05 84 09 EF D0 FF D8 B7 45 05 23   .E.........E.#
23054850 93 85 E5 E3 4A 85 EF C0 0F E9 9D 45 21 E9       ....J......E!. 

l2305485E:
	addi	a0,s0,+0000009C
	jal	ra,00000000230525D6
	c.li	a0,00000000
	c.j	000000002305481C
2305486A                               22 85 EF E0 2F AB           ".../.
23054870 55 F5 13 05 84 09 8D 45 EF D0 FF D5 22 85 EF F0 U......E...."...
23054880 FF 84 49 FD E1 B7 13 05 C4 09 A5 45 EF D0 BF D4 ..I........E....
23054890 B7 67 02 42 83 A7 07 61 08 40 DC 43 82 97 7D B7 .g.B...a.@.C..}.
230548A0 C1 45 13 05 F4 0B EF 60 3F F3 19 C1             .E.....`?...   

l230548AC:
	c.li	a0,00000008
	c.j	000000002305481C
230548B0 B7 64 02 42 83 A7 04 61 09 45 AD D3 DC 47 B9 DF .d.B...a.E...G..
230548C0 93 07 10 30 93 05 D1 00 22 85 23 16 F1 00 EF F0 ...0....".#.....
230548D0 0F CF 13 05 C4 09 23 2C 04 16 23 2E 04 16 AD 45 ......#,..#....E
230548E0 EF D0 7F CF 83 A7 04 61 08 40 6C 00 DC 47 82 97 .......a.@l..G..
230548F0 B1 BF                                           ..             

l230548F2:
	c.mv	a0,s0
	jal	ra,0000000023053542
	bne	a0,zero,000000002305481C

l230548FC:
	c.mv	a0,s0
	jal	ra,00000000230546E0
	c.j	000000002305481C

;; bt_smp_pkey_ready: 23054904
bt_smp_pkey_ready proc
	lui	a5,0004200F
	sw	a0,a5,+0000049C
	c.bnez	a0,000000002305491A

l2305490E:
	lui	a0,000230BA
	addi	a0,a0,-000006CC
	jal	zero,0000000023082388

l2305491A:
	lui	a0,00042026
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000614
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	s0,00042017
	c.swsp	s2,00000000
	jal	ra,0000000023048B7E
	addi	a0,s0,-000006AC
	c.li	a1,00000006
	addi	a0,a0,+0000009C
	jal	ra,00000000230525E0
	c.mv	s2,s0
	addi	s1,s0,-000006AC
	c.beqz	a0,0000000023054966

l2305494A:
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000003
	c.beqz	a5,00000000230549B8

l23054952:
	addi	a0,s0,-000006AC
	jal	ra,0000000023053542
	c.beqz	a0,00000000230549AC

l2305495C:
	c.mv	a1,a0
	addi	a0,s2,-000006AC
	jal	ra,0000000023053DF4

l23054966:
	c.li	a1,00000006
	addi	a0,s1,+00000244
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230549FC

l23054972:
	lw	a5,s1,+000001A8
	lui	s0,00042017
	addi	s2,s0,-00000504
	lbu	a5,a5,+00000003
	addi	a0,s0,-00000504
	c.bnez	a5,00000000230549DA

l23054988:
	jal	ra,0000000023053542
	c.mv	a1,a0
	c.beqz	a0,0000000023054998

l23054990:
	addi	a0,s0,-00000504
	jal	ra,0000000023053DF4

l23054998:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a0,s1,+00000240
	c.lwsp	tp,00000024
	c.li	a1,0000000C
	c.addi	sp,00000010
	jal	zero,00000000230525D6

l230549AC:
	addi	a0,s0,-000006AC
	jal	ra,00000000230546E0
	c.beqz	a0,0000000023054966

l230549B6:
	c.j	000000002305495C

l230549B8:
	addi	a0,s0,-000006AC
	jal	ra,0000000023053542
	c.mv	a1,a0
	c.bnez	a0,00000000230549D0

l230549C4:
	c.li	a1,0000000C
	addi	a0,s1,+00000098
	jal	ra,00000000230525D6
	c.j	0000000023054966

l230549D0:
	addi	a0,s0,-000006AC
	jal	ra,0000000023053DF4
	c.j	00000000230549C4

l230549DA:
	jal	ra,0000000023053542
	c.bnez	a0,00000000230549EA

l230549E0:
	addi	a0,s0,-00000504
	jal	ra,00000000230546E0
	c.beqz	a0,00000000230549FC

l230549EA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,a0
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023053DF4

l230549FC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; smp_pairing_random: 23054A08
smp_pairing_random proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.lw	a1,8(a1)
	addi	s3,a0,+000000CF
	c.mv	s0,a0
	c.li	a2,00000010
	c.mv	a0,s3
	jal	ra,00000000230A382C
	addi	s2,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525E0
	lw	s4,s0,+00000000
	bne	a0,zero,0000000023054B36

l23054A3E:
	addi	s5,s0,+000000DF
	addi	a6,sp,+00000010
	addi	a5,s4,+0000007E
	addi	a4,s4,+00000077
	addi	a3,s0,+000000A8
	addi	a2,s0,+000000A1
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,0000000023054176
	c.beqz	a0,0000000023054A78

l23054A60:
	c.li	s1,00000008

l23054A62:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23054A78:
	c.li	a2,00000010
	c.addi4spn	a1,00000010
	addi	a0,s0,+000000AF
	jal	ra,00000000230A37A4
	c.li	s1,00000004
	c.bnez	a0,0000000023054A62

l23054A88:
	lbu	s1,s4,+00000003
	addi	s6,s0,+000000BF
	c.li	a2,00000008
	c.bnez	s1,0000000023054AFE

l23054A94:
	c.mv	a1,s6
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s5
	jal	ra,000000002304B7E8
	c.bnez	a0,0000000023054A60

l23054AB2:
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	lbu	a5,s0,+000000A5
	lbu	a4,s0,+000000AC
	bgeu	a5,a4,0000000023054AD4

l23054AD2:
	c.mv	a4,a5

l23054AD4:
	andi	a4,a4,+000000FF
	c.addi4spn	a3,00000010
	c.addi4spn	a2,00000004
	c.addi4spn	a1,00000008
	c.mv	a0,s4
	jal	ra,000000002304A594
	c.beqz	a0,0000000023054AF4

l23054AE6:
	lui	a0,000230BC
	addi	a0,a0,-00000174
	jal	ra,0000000023082388
	c.j	0000000023054A60

l23054AF4:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,00000000230525D6
	c.j	0000000023054A62

l23054AFE:
	c.mv	a1,s3
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	c.li	a2,00000008
	c.mv	a1,s6
	c.addi4spn	a0,00000018
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s5
	jal	ra,000000002304B7E8
	c.bnez	a0,0000000023054A60

l23054B1C:
	c.addi4spn	a1,00000010
	c.li	a2,00000010
	c.mv	a0,s5
	jal	ra,00000000230A382C
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,00000000230525D6
	c.mv	a0,s0
	jal	ra,0000000023053502
	c.j	0000000023054BD2

l23054B36:
	lbu	a5,s4,+00000003
	c.bnez	a5,0000000023054BEC

l23054B3C:
	c.mv	a0,s0
	jal	ra,000000002305281A
	c.mv	s1,a0
	bne	a0,zero,0000000023054A62

l23054B48:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023054A60

l23054B52:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-0000058C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23054B62       B7 F7 00 42 03 A5 C7 49 18 08 CE 86 13 06   ...B...I......
23054B70 F4 0B 93 05 F4 0E EF D0 3F EE E3 13 05 EE 4A 85 ........?.....J.
23054B80 A5 45 EF D0 5F A5 4A 85 A1 45 EF D0 DF A4 B7 67 .E.._.J..E.....g
23054B90 02 42 83 A7 07 61 C2 45 08 40 9C 47 82 97 D1 B5 .B...a.E.@.G....
23054BA0 83 47 44 17 51 47 85 07 93 F7 F7 0F 23 0A F4 16 .GD.QG......#...
23054BB0 63 83 E7 02 C1 45 13 05 F4 0B EF 60 FF C1 E3 11 c....E.....`....
23054BC0 05 EA 13 05 84 09 8D 45 EF D0 FF A0 22 85 EF F0 .......E...."...
23054BD0 EF CF                                           ..             

l23054BD2:
	c.mv	s1,a0
	c.j	0000000023054A62
23054BD6                   9D 45 4A 85 EF D0 7F A0 A1 45       .EJ......E
23054BE0 E3 1B 05 F0 22 85 EF E0 2F E3 E5 B7             ....".../...   

l23054BEC:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023054A60

l23054BF6:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-00000574
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23054C06                   B7 F7 00 42 83 A5 C7 49 18 08       ...B...I..
23054C10 93 06 F4 0B 4E 86 13 05 F4 0E EF D0 FF E3 E3 11 ....N...........
23054C20 05 E4 A5 45 4A 85 EF D0 1F 9B B7 67 02 42 83 A7 ...EJ......g.B..
23054C30 07 61 C2 45 08 40 9C 47 82 97 B5 45 13 05 84 09 .a.E.@.G...E....
23054C40 EF D0 7F 99 BD 45 CD B5 22 85 EF D0 1F BD AA 84 .....E..".......
23054C50 E3 19 05 E0 93 09 84 09 8D 45 4E 85 EF D0 BF 97 .........EN.....
23054C60 22 85 EF E0 1F 8A AA 84 E3 1D 05 DE 83 47 44 17 "............GD.
23054C70 51 47 85 07 93 F7 F7 0F 23 0A F4 16 63 98 E7 00 QG......#...c...
23054C80 B5 45 4E 85 EF D0 3F 95 BD 45 B5 B5 C1 45 13 05 .EN...?..E...E..
23054C90 F4 0B EF 60 7F B4 E3 06 05 DC D9 B3 C1 45 13 05 ...`.........E..
23054CA0 F4 0B EF 60 7F B3 E3 1D 05 DA B7 69 02 42 83 A7 ...`.......i.B..
23054CB0 09 61 89 44 E3 87 07 DA DC 47 E3 84 07 DA 93 07 .a.D.....G......
23054CC0 10 30 93 05 11 01 22 85 23 18 F1 00 EF F0 2F 8F .0....".#...../.
23054CD0 AD 45 4A 85 23 2C 04 16 23 2E 04 16 EF D0 BF 8F .EJ.#,..#.......
23054CE0 83 A7 09 61 08 40 0C 08 DC 47 81 44 82 97 95 BB ...a.@...G.D....

;; bt_smp_request_ltk: 23054CF0
;;   Called from:
;;     2304F7F0 (in le_ltk_request)
bt_smp_request_ltk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000004
	c.swsp	a2,00000084
	c.mv	s2,a4
	sh	a3,sp,+00000006
	jal	ra,00000000230525B0
	beq	a0,zero,0000000023054E6E

l23054D10:
	lhu	a5,sp,+00000006
	c.mv	s0,a0
	c.bnez	a5,0000000023054D76

l23054D18:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.or	a5,a4
	c.bnez	a5,0000000023054D76

l23054D20:
	addi	s3,a0,+0000009C
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023054D76

l23054D2E:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023054D76

l23054D38:
	lbu	a5,s0,+000000A5
	lbu	s1,s0,+000000AC
	bgeu	a5,s1,0000000023054D46

l23054D44:
	c.mv	s1,a5

l23054D46:
	andi	s1,s1,+000000FF
	c.mv	a2,s1
	addi	a1,s0,+000000DF
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.li	a5,0000000F
	bltu	a5,s1,0000000023054D6A

l23054D5C:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,00000000230A3A68

l23054D6A:
	c.li	a1,00000001
	c.mv	a0,s3

l23054D6E:
	jal	ra,00000000230525D6
	c.li	s0,00000001
	c.j	0000000023054DE8

l23054D76:
	lw	a5,s1,+0000009C
	c.bnez	a5,0000000023054DA4

l23054D7C:
	lbu	a1,s1,+00000008
	addi	s3,s1,+00000070
	c.mv	a2,s3
	addi	a0,zero,+00000020
	jal	ra,000000002305577E
	sw	a0,s1,+0000009C
	c.bnez	a0,0000000023054DA4

l23054D94:
	lbu	a1,s1,+00000008
	c.mv	a2,s3
	c.li	a0,00000001
	jal	ra,000000002305577E
	sw	a0,s1,+0000009C

l23054DA4:
	lhu	a5,sp,+00000006
	lw	a0,s1,+0000009C
	c.bnez	a5,0000000023054DF8

l23054DAE:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.or	a5,a4
	c.bnez	a5,0000000023054DF8

l23054DB6:
	c.beqz	a0,0000000023054E54

l23054DB8:
	lhu	a5,a0,+0000000A
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023054DFA

l23054DC2:
	lbu	s1,a0,+00000008
	addi	a1,a0,+00000016
	c.mv	a0,s2
	c.mv	a2,s1
	jal	ra,00000000230A382C
	c.li	a5,0000000F
	c.li	s0,00000001
	bltu	a5,s1,0000000023054DE8

l23054DDA:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,00000000230A3A68

l23054DE8:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23054DF8:
	c.beqz	a0,0000000023054E54

l23054DFA:
	lhu	a5,a0,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,0000000023054E54

l23054E02:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	addi	a0,a0,+00000064
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023054E54

l23054E10:
	lw	a0,s1,+0000009C
	c.li	a2,00000002
	addi	a1,sp,+00000006
	addi	a0,a0,+0000006C
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023054E54

l23054E24:
	lw	a1,s1,+0000009C
	c.mv	a0,s2
	lbu	s1,a1,+00000008
	addi	a1,a1,+0000006E
	c.mv	a2,s1
	jal	ra,00000000230A382C
	c.li	a5,0000000F
	bltu	a5,s1,0000000023054E4C

l23054E3E:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,00000000230A3A68

l23054E4C:
	c.li	a1,00000001
	addi	a0,s0,+0000009C
	c.j	0000000023054D6E

l23054E54:
	c.li	a1,0000000E
	addi	a0,s0,+0000009C
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023054E68

l23054E60:
	c.lw	s0,0(a0)
	c.li	a1,00000002
	jal	ra,000000002304A642

l23054E68:
	c.mv	a0,s0
	jal	ra,00000000230525F8

l23054E6E:
	c.li	s0,00000000
	c.j	0000000023054DE8

;; bt_smp_sign_verify: 23054E72
;;   Called from:
;;     23058CE8 (in att_signed_write_cmd)
bt_smp_sign_verify proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lhu	a5,a1,+0000000C
	c.mv	s0,a1
	c.lw	a1,8(a1)
	c.addi	a5,FFFFFFF4
	c.mv	s1,a0
	c.li	a2,0000000C
	c.add	a1,a5
	c.addi4spn	a0,00000004
	jal	ra,00000000230A382C
	lbu	a1,s1,+00000008
	addi	s2,s1,+00000070
	c.mv	a2,s2
	c.li	a0,00000010
	jal	ra,000000002305577E
	c.bnez	a0,0000000023054EC6

l23054EA4:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-00000398
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFE

l23054EBA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23054EC6:
	c.lw	a0,96(a5)
	c.mv	s1,a0
	c.lw	s0,8(a0)
	c.swsp	a5,00000000
	lhu	a5,s0,+0000000C
	c.li	a2,00000004
	c.mv	a1,sp
	c.addi	a5,FFFFFFF4
	c.add	a0,a5
	jal	ra,00000000230A382C
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	addi	a0,s1,+00000050
	c.addi	a2,FFFFFFF4
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002305271E
	c.beqz	a0,0000000023054F0C

l23054EF4:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-00000374
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFB
	c.j	0000000023054EBA

l23054F0C:
	lhu	a5,s0,+0000000C
	c.lw	s0,8(a1)
	c.li	a2,0000000C
	c.addi	a5,FFFFFFF4
	c.add	a1,a5
	c.addi4spn	a0,00000004
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023054F3A

l23054F20:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-00000350
	jal	ra,0000000023082388
	addi	a0,zero,-0000004D
	c.j	0000000023054EBA

l23054F3A:
	c.lw	s1,96(a5)
	c.addi	a5,00000001
	c.sw	s1,96(a5)
	c.j	0000000023054EBA

;; bt_smp_sign: 23054F42
;;   Called from:
;;     23057C4A (in att_send)
bt_smp_sign proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	lbu	a1,a0,+00000008
	addi	s2,a0,+00000070
	c.mv	a2,s2
	c.li	a0,00000008
	jal	ra,000000002305577E
	c.bnez	a0,0000000023054F82

l23054F60:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000003BC
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFE

l23054F76:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23054F82:
	c.mv	s0,a0
	c.li	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,00000000230492DE
	c.lw	s0,76(a5)
	c.lw	s1,8(a0)
	c.li	a2,00000004
	c.swsp	a5,00000084
	lhu	a5,s1,+0000000C
	c.addi4spn	a1,0000000C
	c.addi	a5,FFFFFFF4
	c.add	a0,a5
	jal	ra,00000000230A382C
	lhu	a2,s1,+0000000C
	c.lw	s1,8(a1)
	addi	a0,s0,+0000003C
	c.addi	a2,FFFFFFF4
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002305271E
	c.beqz	a0,0000000023054FD2

l23054FBA:
	c.mv	a0,s2
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-00000374
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFB
	c.j	0000000023054F76

l23054FD2:
	c.lw	s0,76(a5)
	c.addi	a5,00000001
	c.sw	s0,76(a5)
	c.j	0000000023054F76

;; bt_smp_auth_passkey_entry: 23054FDA
;;   Called from:
;;     2304B694 (in bt_conn_auth_passkey_entry)
bt_smp_auth_passkey_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,00000000230525B0
	c.bnez	a0,0000000023055000

l23054FEE:
	c.li	s1,FFFFFFEA

l23054FF0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23055000:
	addi	s2,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s2
	jal	ra,0000000023052AF4
	c.beqz	a0,0000000023054FEE

l23055010:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.mv	s1,a0
	c.bnez	a0,000000002305505C

l2305501C:
	c.addi4spn	a1,0000000C
	c.li	a2,00000004
	addi	a0,s0,+000000DF
	c.swsp	s3,00000084
	jal	ra,00000000230A382C
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023052AF4
	c.beqz	a0,0000000023054FF0

l23055034:
	c.mv	a0,s0
	jal	ra,00000000230542B6
	c.beqz	a0,0000000023055046

l2305503C:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023053DF4
	c.j	0000000023054FF0

l23055046:
	c.lw	s0,0(a5)
	addi	a0,s0,+00000098
	c.li	a1,00000003
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023055056

l23055054:
	c.li	a1,00000004

l23055056:
	jal	ra,00000000230525D6
	c.j	0000000023054FF0

l2305505C:
	c.lw	s0,0(a5)
	sw	s3,s0,+00000170
	lbu	a5,a5,+00000003
	c.bnez	a5,0000000023055088

l23055068:
	c.mv	a0,s0
	jal	ra,00000000230540CC
	c.beqz	a0,000000002305507C

l23055070:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023053DF4

l23055078:
	c.li	s1,00000000
	c.j	0000000023054FF0

l2305507C:
	c.li	a1,00000003

l2305507E:
	addi	a0,s0,+00000098
	jal	ra,00000000230525D6
	c.j	0000000023055078

l23055088:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.mv	s1,a0
	c.beqz	a0,0000000023054FF0

l23055094:
	c.mv	a0,s0
	jal	ra,00000000230540CC
	c.li	a1,00000004
	c.beqz	a0,000000002305507E

l2305509E:
	c.j	0000000023055070

;; bt_smp_auth_passkey_confirm: 230550A0
;;   Called from:
;;     2304B6BC (in bt_conn_auth_passkey_confirm)
bt_smp_auth_passkey_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,00000000230525B0
	c.bnez	a0,00000000230550C0

l230550B0:
	c.li	s2,FFFFFFEA

l230550B2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230550C0:
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023052AF4
	c.beqz	a0,00000000230550B0

l230550D0:
	c.li	a1,00000007
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230550E6

l230550DA:
	c.li	a1,00000008
	c.mv	a0,s1

l230550DE:
	jal	ra,00000000230525D6
	c.li	s2,00000000
	c.j	00000000230550B2

l230550E6:
	c.li	a1,0000000F
	c.mv	a0,s1
	jal	ra,00000000230525E0
	c.mv	s2,a0
	c.li	a1,00000008
	c.mv	a0,s1
	bne	s2,zero,00000000230550DE

l230550F8:
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230550B2

l230550FE:
	c.lw	s0,0(a5)
	c.mv	a0,s0
	lbu	a5,a5,+00000003
	c.bnez	a5,0000000023055118

l23055108:
	jal	ra,0000000023053218

l2305510C:
	c.mv	a1,a0
	c.beqz	a0,00000000230550B2

l23055110:
	c.mv	a0,s0
	jal	ra,0000000023053DF4
	c.j	00000000230550B2

l23055118:
	jal	ra,00000000230532CC
	c.j	000000002305510C

;; bt_smp_auth_cancel: 2305511E
;;   Called from:
;;     2304B6D8 (in bt_conn_auth_cancel)
bt_smp_auth_cancel proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230525B0
	c.bnez	a0,0000000023055134

l2305512A:
	c.li	a0,FFFFFFEA

l2305512C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23055134:
	c.mv	s0,a0
	c.li	a1,00000009
	addi	a0,a0,+0000009C
	jal	ra,0000000023052AF4
	c.beqz	a0,000000002305512A

l23055142:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023055176

l2305514C:
	lui	a4,000230BC
	c.slli	a5,02
	addi	a4,a4,-0000055C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2305515C                                     85 45 22 85             .E".
23055160 22 44 B2 40 41 01 6F E0 FF C8 91 45 CD BF 89 45 "D.@A.o....E...E
23055170 FD B7 A1 45 ED B7                               ...E..         

l23055176:
	c.li	a0,00000000
	c.j	000000002305512C

;; bt_smp_auth_pairing_confirm: 2305517A
;;   Called from:
;;     2304B6F4 (in bt_conn_auth_pairing_confirm)
bt_smp_auth_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a0
	jal	ra,00000000230525B0
	c.bnez	a0,000000002305519C

l2305518C:
	c.li	a5,FFFFFFEA

l2305518E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2305519C:
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023052AF4
	c.beqz	a0,000000002305518C

l230551AC:
	lbu	a5,s2,+00000003
	c.li	a1,00000005
	c.mv	a0,s1
	c.bnez	a5,00000000230551F8

l230551B6:
	jal	ra,00000000230525E0
	c.bnez	a0,00000000230551D0

l230551BC:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,00000000230525D6
	c.mv	a0,s0
	jal	ra,0000000023054248

l230551CC:
	c.mv	a5,a0
	c.j	000000002305518E

l230551D0:
	lui	a5,0004200F
	lw	a5,a5,+0000049C
	c.bnez	a5,00000000230551E6

l230551DA:
	c.li	a1,00000006
	c.mv	a0,s1
	jal	ra,00000000230525D6
	c.li	a5,00000000
	c.j	000000002305518E

l230551E6:
	addi	a0,s0,+00000098
	c.li	a1,0000000C
	jal	ra,00000000230525D6
	c.mv	a0,s0
	jal	ra,0000000023053542
	c.j	00000000230551CC

l230551F8:
	jal	ra,00000000230525E0
	addi	a5,s0,+00000098
	c.bnez	a0,0000000023055212

l23055202:
	c.mv	a0,a5
	c.li	a1,00000003
	jal	ra,00000000230525D6
	c.mv	a0,s0
	jal	ra,00000000230535A8
	c.j	00000000230551CC

l23055212:
	c.mv	a0,a5
	c.li	a1,0000000C
	jal	ra,00000000230525D6
	c.mv	a0,s0
	jal	ra,00000000230535A8
	c.li	a5,00000000
	c.beqz	a0,000000002305518E

l23055224:
	c.li	a5,FFFFFFFB
	c.j	000000002305518E

;; bt_smp_start_security: 23055228
;;   Called from:
;;     2304A6E6 (in bt_conn_set_security)
bt_smp_start_security proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a5,a0,+00000003
	c.mv	s0,a0
	c.beqz	a5,0000000023055248

l2305523E:
	c.li	a4,00000001
	beq	a5,a4,00000000230552DA

l23055244:
	c.li	s1,FFFFFFEA
	c.j	0000000023055254

l23055248:
	jal	ra,00000000230525B0
	c.mv	s3,a0
	c.bnez	a0,0000000023055266

l23055250:
	addi	s1,zero,-00000039

l23055254:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23055266:
	c.li	a1,0000000B
	addi	a0,s0,+00000004
	jal	ra,00000000230525E0
	c.beqz	a0,0000000023055286

l23055272:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,0000000023053936

l23055286:
	c.mv	a0,s0
	jal	ra,0000000023053042
	c.beqz	a0,0000000023055272

l2305528E:
	addi	s2,s3,+0000009C
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230552A0

l2305529C:
	c.li	s1,FFFFFFF0
	c.j	0000000023055254

l230552A0:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305529C

l230552AA:
	lw	a1,s0,+0000009C
	c.mv	a0,s0
	lbu	a4,a1,+00000008
	addi	a3,a1,+00000016
	addi	a2,a1,+00000014
	c.addi	a1,0000000C
	jal	ra,000000002304A594
	c.mv	s1,a0
	c.bnez	a0,0000000023055254

l230552C6:
	c.li	a1,0000000B
	addi	a0,s3,+00000098
	jal	ra,00000000230525D6
	c.li	a1,00000001
	c.mv	a0,s2

l230552D4:
	jal	ra,00000000230525D6
	c.j	0000000023055254

l230552DA:
	jal	ra,00000000230525B0
	c.mv	s2,a0
	c.beqz	a0,0000000023055250

l230552E2:
	addi	s3,a0,+0000009C
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.li	s1,FFFFFFFB
	c.bnez	a0,0000000023055254

l230552F2:
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305529C

l230552FC:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,00000000230525E0
	c.bnez	a0,000000002305529C

l23055306:
	lbu	a0,s0,+0000000A
	jal	ra,0000000023052F74
	c.beqz	a0,000000002305533A

l23055310:
	lw	a5,s0,+0000009C
	c.bnez	a5,000000002305532A

l23055316:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	c.li	s1,FFFFFFF4
	c.jal	00000000230555EA
	sw	a0,s0,+0000009C
	beq	a0,zero,0000000023055254

l2305532A:
	c.mv	a0,s2
	jal	ra,00000000230538DC
	c.mv	s1,a0
	c.beqz	a0,0000000023055352

l23055334:
	addi	s1,zero,-00000037
	c.j	0000000023055254

l2305533A:
	c.li	a1,0000000B
	addi	a0,s0,+00000004
	jal	ra,00000000230525E0
	bne	a0,zero,0000000023055244

l23055348:
	c.mv	a0,s0
	jal	ra,0000000023053042
	c.bnez	a0,0000000023055310

l23055350:
	c.j	0000000023055244

l23055352:
	c.li	a1,0000000B
	c.mv	a0,s2
	jal	ra,0000000023053158
	c.mv	a2,a0
	c.beqz	a0,0000000023055334

l2305535E:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
	c.mv	s4,a0
	c.li	a1,00000009
	addi	a0,s0,+0000000A
	jal	ra,0000000023052F20
	c.lwsp	a2,00000084
	sb	a0,s4,+00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023051360
	c.li	a1,0000000E
	c.mv	a0,s3
	jal	ra,00000000230525D6
	c.li	a1,00000001
	addi	a0,s2,+00000098
	c.j	00000000230552D4

;; bt_smp_update_keys: 23055396
;;   Called from:
;;     2304E2DC (in hci_encrypt_key_refresh_complete)
;;     2304E38E (in hci_encrypt_change)
bt_smp_update_keys proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	jal	ra,00000000230525B0
	beq	a0,zero,00000000230554C6

l230553AC:
	addi	s2,a0,+0000009C
	c.mv	s1,a0
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,00000000230525E0
	beq	a0,zero,00000000230554C6

l230553BE:
	lw	a0,s0,+0000009C
	c.beqz	a0,00000000230553C6

l230553C4:
	c.jal	00000000230558B8

l230553C6:
	lbu	a0,s0,+00000008
	addi	s3,s0,+00000070
	c.mv	a1,s3
	c.jal	00000000230555EA
	sw	a0,s0,+0000009C
	c.bnez	a0,0000000023055400

l230553D8:
	c.mv	a0,s3
	jal	ra,00000000230495DC
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000008
	c.addi16sp	00000020
	jal	zero,0000000023053DF4

l23055400:
	c.li	a1,0000000D
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.beqz	a0,000000002305541A

l2305540A:
	lw	a4,s0,+0000009C
	lbu	a5,a4,+00000009
	ori	a5,a5,+00000002
	sb	a5,a4,+00000009

l2305541A:
	lw	a3,s0,+0000009C
	lbu	a2,s1,+000000A0
	c.li	a4,00000005
	lbu	a5,a3,+00000009
	bltu	a4,a2,00000000230554BC

l2305542C:
	c.li	a4,00000001
	sll	a4,a4,a2
	andi	a4,a4,+0000002E
	c.beqz	a4,00000000230554BC

l23055438:
	ori	a5,a5,+00000001

l2305543C:
	sb	a5,a3,+00000009
	lbu	a4,s1,+000000AC
	lbu	a5,s1,+000000A5
	lw	a3,s0,+0000009C
	bgeu	a4,a5,0000000023055452

l23055450:
	c.mv	a5,a4

l23055452:
	sb	a5,a3,+00000008
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,00000000230525E0
	lw	a5,s0,+0000009C
	lbu	a4,a5,+00000009
	c.beqz	a0,00000000230554C0

l23055468:
	ori	a4,a4,+00000010
	sb	a4,a5,+00000009
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,00000000230525E0
	c.beqz	a0,00000000230554C6

l2305547A:
	lw	a0,s0,+0000009C
	addi	a1,zero,+00000020
	c.jal	00000000230558AC
	lw	a0,s0,+0000009C
	addi	a1,s1,+000000DF
	c.li	a2,00000010
	c.addi	a0,00000016
	jal	ra,00000000230A382C
	lw	a0,s0,+0000009C
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi	a0,0000000C
	jal	ra,00000000230A3A68
	lw	a0,s0,+0000009C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi	a0,00000014
	c.addi16sp	00000020
	jal	zero,00000000230A3A68

l230554BC:
	c.andi	a5,FFFFFFFE
	c.j	000000002305543C

l230554C0:
	c.andi	a4,FFFFFFEF
	sb	a4,a5,+00000009

l230554C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_smp_init: 230554D4
;;   Called from:
;;     2304B76A (in bt_conn_init)
bt_smp_init proc
	lui	a0,00042026
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000614
	c.swsp	ra,00000084
	jal	ra,0000000023048B2A
	lui	a5,0004200E
	lbu	a5,a5,-0000025E
	lui	a0,0004200F
	lui	a4,0004200F
	c.andi	a5,00000006
	c.addi	a5,FFFFFFFA
	sltiu	a5,a5,+00000001
	addi	a0,a0,-000003C0
	sb	a5,a4,+000004A0
	jal	ra,0000000023050E10
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find_addr.part.2: 23055514
;;   Called from:
;;     230558A8 (in bt_keys_find_addr)
;;     23055916 (in bt_keys_update_usage)
bt_keys_find_addr.part.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042017
	lbu	a5,s0,-0000035C
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,s0,-0000035C
	beq	a5,a0,000000002305554C

l23055532:
	lbu	a5,s0,+00000084
	bne	a5,s1,0000000023055564

l2305553A:
	c.li	a2,00000007
	c.mv	a1,s2
	addi	a0,s0,+00000085
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023055564

l23055548:
	c.li	a0,00000001
	c.j	0000000023055558

l2305554C:
	c.li	a2,00000007
	addi	a0,s0,+00000001
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023055532

l23055558:
	addi	a5,zero,+00000084
	add	a0,a0,a5
	c.add	a0,s0
	c.j	0000000023055566

l23055564:
	c.li	a0,00000000

l23055566:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find.part.1: 23055572
;;   Called from:
;;     2305577E (in bt_keys_find)
;;     23055792 (in bt_keys_get_type)
bt_keys_find.part.1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042017
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,s0,-0000035C
	c.swsp	ra,0000008C
	lhu	a5,a5,+0000000A
	c.mv	s3,a0
	c.mv	s2,a1
	c.and	a5,a0
	c.mv	s1,a2
	addi	s0,s0,-0000035C
	c.beqz	a5,00000000230555AE

l23055598:
	lbu	a5,s0,+00000000
	bne	a5,a1,00000000230555AE

l230555A0:
	c.li	a2,00000007
	c.mv	a1,s1
	addi	a0,s0,+00000001
	jal	ra,00000000230A37A4
	c.beqz	a0,00000000230555E2

l230555AE:
	lhu	a0,s0,+0000008E
	and	a0,a0,s3
	c.beqz	a0,00000000230555E6

l230555B8:
	lbu	a5,s0,+00000084
	bne	a5,s2,00000000230555E6

l230555C0:
	c.li	a2,00000007
	c.mv	a1,s1
	addi	a0,s0,+00000085
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230555E6

l230555CE:
	addi	a0,zero,+00000084

l230555D2:
	c.add	a0,s0

l230555D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230555E2:
	c.li	a0,00000000
	c.j	00000000230555D2

l230555E6:
	c.li	a0,00000000
	c.j	00000000230555D4

;; bt_keys_get_addr: 230555EA
;;   Called from:
;;     23052BA0 (in update_keys_check)
;;     230539BA (in smp_send_pairing_req)
;;     23053C90 (in smp_pairing_req)
;;     230547FA (in smp_public_key)
;;     23055320 (in bt_smp_start_security)
;;     230553D0 (in bt_smp_update_keys)
;;     2305579C (in bt_keys_get_type)
bt_keys_get_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042017
	lbu	a5,s1,-0000035C
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a0
	c.swsp	ra,00000094
	lui	a0,00042017
	c.swsp	s2,00000010
	c.mv	s4,a1
	addi	s1,s1,-0000035C
	addi	s0,a0,-0000035B
	bne	a5,s3,0000000023055620

l23055614:
	c.li	a2,00000007
	addi	a0,a0,-0000035B
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023055704

l23055620:
	c.mv	a0,s0
	c.li	a2,00000007
	c.mv	a1,sp
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,00000000230A37A4
	c.li	s0,00000000
	c.beqz	a0,0000000023055642

l23055638:
	lbu	s0,s1,+00000008
	sltu	s0,zero,s0
	c.slli	s0,01

l23055642:
	lbu	a5,s1,+00000084
	bne	a5,s3,0000000023055658

l2305564A:
	c.li	a2,00000007
	c.mv	a1,s4
	addi	a0,s1,+00000085
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002305571A

l23055658:
	c.li	a5,00000002
	bne	s0,a5,00000000230556CA

l2305565E:
	c.li	a2,00000007
	c.mv	a1,sp
	addi	a0,s1,+00000085
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023055720

l23055676:
	lbu	a5,s1,+0000008C
	c.beqz	a5,0000000023055720

l2305567C:
	lw	a4,s1,+00000104
	lw	a5,s1,+00000080
	addi	s0,s1,+00000084
	bltu	a4,a5,000000002305568E

l2305568C:
	c.mv	s0,s1

l2305568E:
	lbu	a0,s0,+00000000
	addi	s2,s0,+00000001
	c.mv	a1,s2
	jal	ra,000000002304EDD8
	c.mv	a0,s2
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.li	s2,00000000
	c.bnez	a0,0000000023055708

l230556B4:
	c.sub	s0,s1
	lui	a0,0003E0F8
	c.srai	s0,00000002
	addi	a0,a0,+000003E1
	add	s0,s0,a0
	c.li	a5,00000001
	bltu	a5,s0,0000000023055708

l230556CA:
	addi	a0,zero,+00000084
	add	s0,s0,a0
	c.li	a2,00000007
	c.mv	a1,s4
	add	s2,s1,s0
	c.addi	s0,00000001
	sb	s3,s2,+00000000
	add	a0,s1,s0
	jal	ra,00000000230A382C
	lui	a4,0004200F
	addi	a4,a4,+000004A4
	c.lw	a4,0(a5)
	c.addi	a5,00000001
	c.sw	a4,0(a5)
	sw	a5,s2,+00000080
	lui	a5,0004200F
	sw	s2,a5,+000004A8
	c.j	0000000023055708

l23055704:
	c.li	s2,00000000

l23055706:
	c.add	s2,s1

l23055708:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2305571A:
	addi	s2,zero,+00000084
	c.j	0000000023055706

l23055720:
	c.li	s0,00000001
	c.j	00000000230556CA

;; bt_keys_foreach: 23055724
;;   Called from:
;;     2304F10A (in bt_id_del)
;;     2304FA3C (in enh_conn_complete)
;;     23055908 (in bt_keys_clear_all)
bt_keys_foreach proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	lui	a0,00042017
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	addi	a5,a0,-0000035C
	lhu	a5,a5,+0000000A
	c.mv	s0,a1
	addi	s1,a0,-0000035C
	and	a5,a5,s2
	c.beqz	a5,0000000023055754

l23055748:
	c.mv	a1,a2
	addi	a0,a0,-0000035C
	c.swsp	a2,00000084
	c.jalr	s0
	c.lwsp	a2,00000084

l23055754:
	lhu	a0,s1,+0000008E
	and	a0,a0,s2
	c.beqz	a0,0000000023055772

l2305575E:
	c.mv	t1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	addi	a0,s1,+00000084
	c.lwsp	s4,00000024
	c.mv	a1,a2
	c.addi16sp	00000020
	c.jr	t1

l23055772:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_keys_find: 2305577E
;;   Called from:
;;     23053060 (in smp_keys_check.part.5)
;;     23053072 (in smp_keys_check.part.5)
;;     23053AC8 (in smp_security_request)
;;     23053ADA (in smp_security_request)
;;     23054D8A (in bt_smp_request_ltk)
;;     23054D9C (in bt_smp_request_ltk)
;;     23054E9E (in bt_smp_sign_verify)
;;     23054F5A (in bt_smp_sign)
bt_keys_find proc
	jal	zero,0000000023055572

;; bt_keys_get_type: 23055782
;;   Called from:
;;     23052D0E (in smp_ident_info)
;;     23052D7C (in smp_encrypt_info)
;;     230537B0 (in smp_signing_info)
;;     23053848 (in smp_master_ident)
;;     23054610 (in smp_ident_addr_info)
bt_keys_get_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,0000000023055572
	c.bnez	a0,00000000230557AC

l23055798:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230555EA
	c.beqz	a0,00000000230557AC

l230557A2:
	lhu	a5,a0,+0000000A
	c.or	s0,a5
	sh	s0,a0,+0000000A

l230557AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find_irk: 230557B8
;;   Called from:
;;     2304ED72 (in bt_lookup_id_addr)
bt_keys_find_irk proc
	lbu	a4,a1,+00000000
	c.li	a5,00000001
	beq	a4,a5,00000000230557C6

l230557C2:
	c.li	a0,00000000
	c.jr	ra

l230557C6:
	lbu	a5,a1,+00000006
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,00000000230557C2

l230557D6:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042017
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	a5,s0,-0000035C
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lhu	a5,a5,+0000000A
	c.mv	s1,a1
	c.mv	s2,a0
	c.andi	a5,00000002
	addi	s0,s0,-0000035C
	c.beqz	a5,0000000023055812

l230557FA:
	lbu	a5,s0,+00000000
	bne	a5,a0,0000000023055812

l23055802:
	c.li	a2,00000006
	addi	a1,s0,+00000036
	addi	a0,s1,+00000001
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002305583A

l23055812:
	lhu	a5,s0,+0000008E
	c.andi	a5,00000002
	c.beqz	a5,000000002305583E

l2305581A:
	lbu	a5,s0,+00000084
	bne	a5,s2,000000002305583E

l23055822:
	c.li	a2,00000006
	addi	a1,s0,+000000BA
	addi	a0,s1,+00000001
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002305583E

l23055832:
	addi	a0,zero,+00000084

l23055836:
	c.add	a0,s0
	c.j	0000000023055884

l2305583A:
	c.li	a0,00000000
	c.j	0000000023055836

l2305583E:
	lhu	a5,s0,+0000000A
	c.andi	a5,00000002
	c.beqz	a5,000000002305585E

l23055846:
	lbu	a5,s0,+00000000
	bne	a5,s2,000000002305585E

l2305584E:
	addi	s3,s1,+00000001
	c.mv	a1,s3
	addi	a0,s0,+00000026
	jal	ra,0000000023057198
	c.bnez	a0,0000000023055892

l2305585E:
	lhu	a5,s0,+0000008E
	c.andi	a5,00000002
	c.beqz	a5,0000000023055882

l23055866:
	lbu	a5,s0,+00000084
	bne	a5,s2,0000000023055882

l2305586E:
	addi	s3,s1,+00000001
	c.mv	a1,s3
	addi	a0,s0,+000000AA
	jal	ra,0000000023057198
	addi	s1,zero,+00000084
	c.bnez	a0,0000000023055894

l23055882:
	c.li	a0,00000000

l23055884:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23055892:
	c.li	s1,00000000

l23055894:
	addi	a0,s1,+00000036
	c.li	a2,00000006
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,00000000230A382C
	add	a0,s0,s1
	c.j	0000000023055884

;; bt_keys_find_addr: 230558A8
;;   Called from:
;;     2304EE28 (in bt_unpair)
;;     2305084C (in bt_addr_le_is_bonded)
;;     23052DD2 (in legacy_request_tk)
bt_keys_find_addr proc
	jal	zero,0000000023055514

;; bt_keys_add_type: 230558AC
;;   Called from:
;;     23053712 (in bt_smp_distribute_keys)
;;     2305375A (in bt_smp_distribute_keys)
;;     23055482 (in bt_smp_update_keys)
bt_keys_add_type proc
	lhu	a5,a0,+0000000A
	c.or	a1,a5
	sh	a1,a0,+0000000A
	c.jr	ra

;; bt_keys_clear: 230558B8
;;   Called from:
;;     2304EE32 (in bt_unpair)
;;     23052C5C (in smp_pairing_failed)
;;     23052CC4 (in smp_timeout)
;;     23052EE2 (in bt_smp_disconnected)
;;     230553C4 (in bt_smp_update_keys)
;;     230558EA (in keys_clear_id)
bt_keys_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000000A
	c.mv	s0,a0
	c.andi	a5,00000002
	c.beqz	a5,00000000230558CC

l230558C8:
	jal	ra,000000002304EFEC

l230558CC:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,zero,+00000084
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; keys_clear_id: 230558DE
keys_clear_id proc
	lbu	a4,a1,+00000000
	lbu	a5,a0,+00000000
	bne	a4,a5,00000000230558EE

l230558EA:
	jal	zero,00000000230558B8

l230558EE:
	c.jr	ra

;; bt_keys_clear_all: 230558F0
;;   Called from:
;;     2304EDF0 (in bt_unpair)
bt_keys_clear_all proc
	c.addi	sp,FFFFFFE0
	lui	a1,00023056
	sb	a0,sp,+0000000F
	addi	a2,sp,+0000000F
	addi	a1,a1,-00000722
	addi	a0,zero,+0000003F
	c.swsp	ra,0000008C
	jal	ra,0000000023055724
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_keys_update_usage: 23055912
;;   Called from:
;;     2304A67A (in bt_conn_security_changed)
bt_keys_update_usage proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023055514
	c.beqz	a0,000000002305593E

l2305591C:
	lui	a5,0004200F
	addi	a5,a5,+000004A8
	c.lw	a5,0(a4)
	beq	a4,a0,000000002305593E

l2305592A:
	lui	a3,0004200F
	addi	a3,a3,+000004A4
	c.lw	a3,0(a4)
	c.sw	a5,0(a0)
	c.addi	a4,00000001
	c.sw	a3,0(a4)
	sw	a4,a0,+00000080

l2305593E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bt_settings_encode_key: 23055944
;;   Called from:
;;     2304DD38 (in bt_gatt_connected)
bt_settings_encode_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	t4,a4
	lbu	a5,a3,+00000005
	lbu	a4,a3,+00000006
	lbu	a6,a3,+00000004
	lbu	a7,a3,+00000003
	lbu	t1,a3,+00000002
	lbu	t3,a3,+00000001
	lbu	a3,a3,+00000000
	beq	t4,zero,0000000023055986

l2305596A:
	c.swsp	a3,00000004
	c.mv	a3,a2
	lui	a2,000230BC
	c.swsp	t4,00000084
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	addi	a2,a2,-000000F8
	jal	ra,00000000230823DA

l23055980:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23055986:
	c.swsp	a3,00000004
	c.mv	a3,a2
	lui	a2,000230BC
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	addi	a2,a2,-000000D4
	jal	ra,00000000230823DA
	c.j	0000000023055980

;; notify_func: 2305599C
notify_func proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a5,a1,+00000028
	c.bnez	a5,00000000230559C4

l230559A8:
	lui	a0,000230BD
	addi	a0,a0,-0000061C
	c.mv	s0,a1
	jal	ra,0000000023082388
	c.li	a0,00000000
	sh	zero,s0,+00000024

l230559BC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230559C4:
	lui	a0,000230BD
	c.mv	a1,a3
	addi	a0,a0,-0000060C
	jal	ra,0000000023082388
	c.li	a0,00000001
	c.j	00000000230559BC

;; le_param_updated: 230559D6
le_param_updated proc
	lui	a0,000230BD
	addi	a0,a0,-00000650
	jal	zero,0000000023082388

;; ble_set_tx_pwr: 230559E2
ble_set_tx_pwr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.li	a5,00000002
	beq	a2,a5,00000000230559FA

l230559EC:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l230559F4:
	jal	ra,0000000023082388
	c.j	0000000023055A20

l230559FA:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000F
	jal	ra,000000002307A8F6
	lbu	a0,sp,+0000000F
	c.li	a5,00000014
	bgeu	a5,a0,0000000023055A26

l23055A10:
	lui	a0,000230BC
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,a0,+0000048C
	jal	ra,0000000023082388

l23055A20:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23055A26:
	c.slli	a0,18
	c.srai	a0,00000018
	jal	ra,0000000023050D10
	c.mv	a1,a0
	c.beqz	a0,0000000023055A40

l23055A32:
	lui	a0,000230BC
	addi	a0,a0,+000004D0
	jal	ra,0000000023082388
	c.j	0000000023055A20

l23055A40:
	lui	a0,000230BC
	addi	a0,a0,+00000500
	c.j	00000000230559F4

;; ble_unsubscribe: 23055A4A
ble_unsubscribe proc
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.bnez	a0,0000000023055A60

l23055A54:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l23055A5C:
	jal	zero,0000000023082388

l23055A60:
	lui	a1,00042017
	addi	a5,a1,+0000001C
	lhu	a5,a5,+00000024
	c.bnez	a5,0000000023055A78

l23055A6E:
	lui	a0,000230BC
	addi	a0,a0,+000006EC
	c.j	0000000023055A5C

l23055A78:
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+0000001C
	c.swsp	ra,00000084
	jal	ra,000000002304DB62
	c.mv	a1,a0
	c.beqz	a0,0000000023055A98

l23055A88:
	c.lwsp	a2,00000020
	lui	a0,000230BC
	addi	a0,a0,+00000704
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23055A98:
	lui	a0,000230BC
	c.lwsp	a2,00000020
	addi	a0,a0,+00000724
	c.addi	sp,00000010
	c.j	0000000023055A5C

;; write_func: 23055AA6
write_func proc
	lui	a0,000230BD
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000036C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	lui	a0,00042017
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,a0,+00000050
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; ble_exchange_mtu: 23055ACC
ble_exchange_mtu proc
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.bnez	a0,0000000023055AE2

l23055AD6:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l23055ADE:
	jal	zero,0000000023082388

l23055AE2:
	c.addi	sp,FFFFFFF0
	lui	a1,00042017
	lui	a5,00023056
	addi	a4,a1,-00000228
	c.swsp	ra,00000084
	addi	a5,a5,-000004DE
	addi	a1,a1,-00000228
	c.sw	a4,24(a5)
	jal	ra,000000002304CBC0
	c.mv	a1,a0
	c.beqz	a0,0000000023055B14

l23055B04:
	c.lwsp	a2,00000020
	lui	a0,000230BC
	addi	a0,a0,+000001DC
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23055B14:
	lui	a0,000230BC
	c.lwsp	a2,00000020
	addi	a0,a0,+000001F8
	c.addi	sp,00000010
	c.j	0000000023055ADE

;; exchange_func: 23055B22
exchange_func proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.beqz	a1,0000000023055B4A

l23055B28:
	lui	a1,000230C8
	addi	a1,a1,-00000340

l23055B30:
	c.swsp	a1,00000084
	jal	ra,000000002304CA12
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.mv	a2,a0
	lui	a0,000230BD
	addi	a0,a0,-0000068C
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23055B4A:
	lui	a1,000230BD
	addi	a1,a1,-00000698
	c.j	0000000023055B30

;; ble_auth_pairing_confirm: 23055B54
ble_auth_pairing_confirm proc
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.bnez	a0,0000000023055B6A

l23055B5E:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	jal	zero,0000000023082388

l23055B6A:
	jal	zero,000000002304B6E0

;; ble_auth_passkey_confirm: 23055B6E
ble_auth_passkey_confirm proc
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.bnez	a0,0000000023055B84

l23055B78:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	jal	zero,0000000023082388

l23055B84:
	jal	zero,000000002304B6A8

;; ble_auth_cancel: 23055B88
ble_auth_cancel proc
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.bnez	a0,0000000023055B9E

l23055B92:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	jal	zero,0000000023082388

l23055B9E:
	jal	zero,000000002304B6C4

;; ble_auth: 23055BA2
ble_auth proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000130
	c.swsp	ra,00000084
	jal	ra,000000002304B644
	c.beqz	a0,0000000023055BC4

l23055BB4:
	lui	a0,000230BC
	addi	a0,a0,+00000010

l23055BBC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23055BC4:
	lui	a0,000230BC
	addi	a0,a0,+0000003C
	c.j	0000000023055BBC

;; ble_security: 23055BCE
ble_security proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000004
	sb	a5,sp,+0000000F
	lui	a5,0004200F
	lw	a4,a5,+000004B0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.bnez	a4,0000000023055BF2

l23055BE4:
	lui	a0,000230BC
	addi	a0,a0,+000002F8

l23055BEC:
	jal	ra,0000000023082388
	c.j	0000000023055C22

l23055BF2:
	addi	s0,a5,+000004B0
	c.li	a5,00000002
	bne	a2,a5,0000000023055C08

l23055BFC:
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	jal	ra,000000002307A8F6

l23055C08:
	lbu	a1,sp,+0000000F
	c.lw	s0,0(a0)
	jal	ra,000000002304A69C
	c.mv	a1,a0
	c.beqz	a0,0000000023055C2A

l23055C16:
	lui	a0,000230BC
	addi	a0,a0,+00000338
	jal	ra,0000000023082388

l23055C22:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23055C2A:
	lui	a0,000230BC
	addi	a0,a0,+00000360
	c.j	0000000023055BEC

;; ble_select_conn: 23055C34
ble_select_conn proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.li	a5,00000003
	beq	a2,a5,0000000023055C58

l23055C42:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23055C4A:
	jal	ra,0000000023082388

l23055C4E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23055C58:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000018
	c.swsp	a3,00000084
	jal	ra,000000002307A8F6
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	addi	a0,a3,+00000008
	jal	ra,000000002307A8A6
	c.li	a2,00000006
	addi	a1,sp,+00000019
	c.addi4spn	a0,00000010
	jal	ra,00000000230499B2
	c.addi4spn	a1,00000018
	c.li	a0,00000000
	jal	ra,000000002304ADFA
	c.mv	s1,a0
	c.bnez	a0,0000000023055C94

l23055C8A:
	lui	a0,000230BC
	addi	a0,a0,+00000380
	c.j	0000000023055C4A

l23055C94:
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	addi	s0,a5,+000004B0
	c.beqz	a0,0000000023055CA6

l23055CA2:
	jal	ra,000000002304AF4A

l23055CA6:
	c.sw	s0,0(s1)
	c.j	0000000023055C4E

;; ble_disconnect: 23055CAA
ble_disconnect proc
	c.addi16sp	FFFFFFC0
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000001F
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.li	a5,00000003
	beq	a2,a5,0000000023055CD0

l23055CBC:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23055CC4:
	jal	ra,0000000023082388

l23055CC8:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l23055CD0:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000001F
	c.swsp	a3,00000084
	jal	ra,000000002307A8F6
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000020
	addi	a0,a3,+00000008
	jal	ra,000000002307A8A6
	c.li	a2,00000006
	addi	a1,sp,+00000029
	c.addi4spn	a0,00000020
	jal	ra,00000000230499B2
	lbu	a5,sp,+0000001F
	c.addi4spn	a1,00000028
	c.li	a0,00000000
	sb	a5,sp,+00000028
	jal	ra,000000002304ADFA
	c.mv	s0,a0
	c.bnez	a0,0000000023055D16

l23055D0C:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	c.j	0000000023055CC4

l23055D16:
	c.li	a1,00000013
	jal	ra,000000002304B02C
	c.beqz	a0,0000000023055D32

l23055D1E:
	lui	a0,000230BC
	addi	a0,a0,+0000015C

l23055D26:
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	c.j	0000000023055CC8

l23055D32:
	lui	a0,000230BC
	addi	a0,a0,+00000174
	c.j	0000000023055D26

;; ble_connect: 23055D3C
ble_connect proc
	c.addi16sp	FFFFFFD0
	c.li	a5,FFFFFFFF
	sb	a5,sp,+00000007
	lui	a5,0004200F
	addi	a5,a5,-0000016C
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.swsp	s1,00000090
	c.li	a1,00000000
	c.mv	s1,a2
	c.addi4spn	a0,00000008
	c.li	a2,00000006
	c.swsp	s0,00000014
	c.swsp	a5,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s0,a3
	c.swsp	a4,0000000C
	jal	ra,00000000230A3A68
	c.li	a5,00000003
	beq	s1,a5,0000000023055D88

l23055D70:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23055D78:
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23055D88:
	addi	a0,s0,+00000004
	addi	a1,sp,+00000007
	jal	ra,000000002307A8F6
	lbu	a5,sp,+00000007
	addi	a0,s0,+00000008
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	sb	a5,sp,+00000010
	c.li	s0,00000000
	jal	ra,000000002307A8A6
	lui	s2,000230BC
	c.li	s1,00000006

l23055DB0:
	c.addi4spn	a5,00000008
	c.add	a5,s0
	lbu	a2,a5,+00000000
	c.mv	a1,s0
	addi	a0,s2,+000000C4
	c.addi	s0,00000001
	jal	ra,0000000023082388
	bne	s0,s1,0000000023055DB0

l23055DC8:
	addi	a1,sp,+00000011
	c.addi4spn	a0,00000008
	c.li	a2,00000006
	jal	ra,00000000230499B2
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000010
	jal	ra,000000002304B11E
	c.bnez	a0,0000000023055DE8

l23055DDE:
	lui	a0,000230BC
	addi	a0,a0,+000000D8
	c.j	0000000023055D78

l23055DE8:
	lui	a0,000230BC
	addi	a0,a0,+000000EC
	c.j	0000000023055D78

;; ble_stop_advertise: 23055DF2
ble_stop_advertise proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023050B80
	c.beqz	a0,0000000023055E0C

l23055DFC:
	lui	a0,000230BC
	addi	a0,a0,+00000618

l23055E04:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23055E0C:
	lui	a0,000230BC
	addi	a0,a0,+00000638
	c.j	0000000023055E04

;; ble_get_device_name: 23055E16
ble_get_device_name proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305032A
	c.beqz	a0,0000000023055E32

l23055E20:
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+00000264
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23055E32:
	c.lwsp	a2,00000020
	lui	a0,000230BC
	addi	a0,a0,+00000278
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; ble_start_advertise: 23055E42
ble_start_advertise proc
	c.addi16sp	FFFFFFC0
	addi	a5,a2,-00000003
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.andi	a5,FFFFFFFD
	c.beqz	a5,0000000023055E66

l23055E58:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23055E60:
	jal	ra,0000000023082388
	c.j	0000000023055F6A

l23055E66:
	addi	a5,zero,+000000A0
	addi	a0,a3,+00000004
	sh	a5,sp,+0000001A
	addi	a1,sp,+00000016
	addi	a5,zero,+000000F0
	sh	a5,sp,+0000001C
	c.mv	s3,a2
	c.mv	s2,a3
	sb	zero,sp,+00000018
	jal	ra,000000002307A8F6
	lbu	a1,sp,+00000016
	lui	a0,000230BC
	addi	a0,a0,+0000052C
	jal	ra,0000000023082388
	lbu	a5,sp,+00000016
	bne	a5,zero,0000000023055F7A

l23055EA2:
	c.li	a5,0000000B

l23055EA4:
	sb	a5,sp,+00000019

l23055EA8:
	addi	a1,sp,+00000017
	addi	a0,s2,+00000008
	jal	ra,000000002307A8F6
	lbu	a1,sp,+00000017
	lui	a0,000230BC
	addi	a0,a0,+00000550
	jal	ra,0000000023082388
	lbu	a5,sp,+00000017
	c.li	a4,00000002
	bltu	a4,a5,0000000023055FC4

l23055ECE:
	lui	s1,0004200E
	addi	s0,s1,-00000140
	c.bnez	a5,0000000023055F9A

l23055ED8:
	c.li	a5,00000006
	sb	a5,sp,+0000000C
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,0000000C

l23055EE8:
	c.sw	s0,4(a5)
	jal	ra,000000002305032A
	c.mv	s4,a0
	jal	ra,00000000230A4220
	c.li	a5,00000009
	sb	a5,s0,+00000008
	sb	a0,s0,+00000009
	sw	s4,s0,+0000000C
	c.li	a5,00000005
	bne	s3,a5,0000000023055F3E

l23055F08:
	addi	a1,sp,+0000001A
	addi	a0,s2,+0000000C
	jal	ra,000000002307A91C
	c.addi4spn	a1,0000001C
	addi	a0,s2,+00000010
	jal	ra,000000002307A91C
	lhu	a1,sp,+0000001A
	lui	a0,000230BC
	addi	a0,a0,+00000570
	jal	ra,0000000023082388
	lhu	a1,sp,+0000001C
	lui	a0,000230BC
	addi	a0,a0,+00000584
	jal	ra,0000000023082388

l23055F3E:
	lbu	a4,sp,+00000016
	c.li	a5,00000001
	bltu	a5,a4,0000000023055FCE

l23055F48:
	c.li	a4,00000001
	addi	a3,s1,-00000140

l23055F4E:
	c.li	a2,00000002
	addi	a1,s1,-00000140
	c.addi4spn	a0,00000018
	jal	ra,0000000023050B70
	c.beqz	a0,0000000023055FD4

l23055F5C:
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+00000598
	jal	ra,0000000023082388

l23055F6A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23055F7A:
	c.li	a4,00000001
	bne	a5,a4,0000000023055F84

l23055F80:
	c.li	a5,00000008
	c.j	0000000023055EA4

l23055F84:
	c.li	a4,00000002
	bne	a5,a4,0000000023055F90

l23055F8A:
	sb	zero,sp,+00000019
	c.j	0000000023055EA8

l23055F90:
	lui	a0,000230BC
	addi	a0,a0,+0000053C
	c.j	0000000023055E60

l23055F9A:
	c.li	a4,00000001
	bne	a5,a4,0000000023055FB2

l23055FA0:
	c.li	a5,00000004
	sb	a5,sp,+00000010
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,00000010
	c.j	0000000023055EE8

l23055FB2:
	c.li	a5,00000005
	sb	a5,sp,+00000014
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,00000014
	c.j	0000000023055EE8

l23055FC4:
	lui	a0,000230BC
	addi	a0,a0,+0000055C
	c.j	0000000023055E60

l23055FCE:
	c.li	a4,00000000
	c.li	a3,00000000
	c.j	0000000023055F4E

l23055FD4:
	lui	a0,000230BC
	addi	a0,a0,+000005C0
	c.j	0000000023055E60

;; ble_set_adv_channel: 23055FDE
ble_set_adv_channel proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000007
	sb	a5,sp,+0000000F
	c.swsp	ra,0000008C
	c.li	a5,00000002
	beq	a2,a5,0000000023056000

l23055FEE:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23055FF6:
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23056000:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000F
	jal	ra,000000002307A8F6
	lbu	a0,sp,+0000000F
	jal	ra,0000000023050B22
	c.bnez	a0,0000000023056020

l23056016:
	lui	a0,000230BC
	addi	a0,a0,+000003A0
	c.j	0000000023055FF6

l23056020:
	lui	a0,000230BC
	addi	a0,a0,+000003BC
	c.j	0000000023055FF6

;; ble_stop_scan: 2305602A
ble_stop_scan proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023050CD6
	c.beqz	a0,0000000023056046

l23056034:
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+00000650
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23056046:
	c.lwsp	a2,00000020
	lui	a0,000230BC
	addi	a0,a0,+00000674
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; ble_disable: 23056056
ble_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305014C
	c.beqz	a0,0000000023056070

l23056060:
	lui	a0,000230BC
	addi	a0,a0,+00000104

l23056068:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23056070:
	lui	a0,000230BC
	addi	a0,a0,+00000140
	c.j	0000000023056068

;; discover_func: 2305607A
discover_func proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s1,a2
	c.bnez	a1,00000000230560AC

l23056086:
	lui	a0,000230BD
	addi	a0,a0,-000007F0
	jal	ra,0000000023082388
	c.mv	a0,s1
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	s1,00000000

l230560A0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l230560AC:
	lbu	a5,a2,+00000028
	c.li	a4,00000002
	c.mv	s0,a1
	beq	a5,a4,00000000230561D4

l230560B8:
	bltu	a5,a4,00000000230560E2

l230560BC:
	c.li	a4,00000003
	beq	a5,a4,000000002305610A

l230560C2:
	c.lw	s0,0(a0)
	c.addi4spn	a1,00000008
	addi	a2,zero,+00000025
	jal	ra,000000002305246A
	lhu	a2,s0,+00000010
	lui	a0,000230BD
	c.addi4spn	a1,00000008
	addi	a0,a0,-000006BC
	jal	ra,0000000023082388
	c.j	0000000023056106

l230560E2:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002305246A
	lhu	a3,s1,+00000004
	lhu	a2,s0,+00000010
	lui	a0,000230BD
	c.addi4spn	a1,00000008
	addi	a0,a0,-000007DC
	jal	ra,0000000023082388

l23056106:
	c.li	s1,00000001
	c.j	00000000230560A0

l2305610A:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002305246A
	lhu	a2,s0,+00000010
	lhu	a3,s1,+00000004
	lui	a0,000230BD
	c.addi4spn	a1,00000008
	addi	a0,a0,-000007A8
	jal	ra,0000000023082388
	lui	a0,000230BD
	lbu	s0,s1,+00000006
	addi	a0,a0,-00000768
	jal	ra,0000000023082388
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023056150

l23056144:
	lui	a0,000230BD
	addi	a0,a0,-00000758
	jal	ra,0000000023082388

l23056150:
	andi	a5,s0,+00000002
	c.beqz	a5,0000000023056162

l23056156:
	lui	a0,000230BD
	addi	a0,a0,-0000074C
	jal	ra,0000000023082388

l23056162:
	andi	a5,s0,+00000008
	c.beqz	a5,0000000023056174

l23056168:
	lui	a0,000230BD
	addi	a0,a0,-00000740
	jal	ra,0000000023082388

l23056174:
	andi	a5,s0,+00000004
	c.beqz	a5,0000000023056186

l2305617A:
	lui	a0,000230BD
	addi	a0,a0,-00000734
	jal	ra,0000000023082388

l23056186:
	andi	a5,s0,+00000010
	c.beqz	a5,0000000023056198

l2305618C:
	lui	a0,000230BD
	addi	a0,a0,-00000720
	jal	ra,0000000023082388

l23056198:
	andi	a5,s0,+00000020
	c.beqz	a5,00000000230561AA

l2305619E:
	lui	a0,000230BD
	addi	a0,a0,-00000714
	jal	ra,0000000023082388

l230561AA:
	andi	a5,s0,+00000040
	c.beqz	a5,00000000230561BC

l230561B0:
	lui	a0,000230BD
	addi	a0,a0,-00000708
	jal	ra,0000000023082388

l230561BC:
	c.slli	s0,18
	c.srai	s0,00000018
	c.li	s1,00000001
	bge	s0,zero,00000000230560A0

l230561C6:
	lui	a0,000230BD
	addi	a0,a0,-000006FC
	jal	ra,0000000023082388
	c.j	00000000230560A0

l230561D4:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002305246A
	lhu	a4,s1,+00000006
	lhu	a3,s1,+00000004
	lhu	a2,s0,+00000010
	lui	a0,000230BD
	c.addi4spn	a1,00000008
	addi	a0,a0,-000006EC
	jal	ra,0000000023082388
	c.j	0000000023056106

;; ble_set_data_len: 230561FE
ble_set_data_len proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.li	a5,00000003
	beq	a2,a5,0000000023056218

l2305620A:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23056212:
	jal	ra,0000000023082388
	c.j	0000000023056266

l23056218:
	lui	s0,0004200F
	addi	s0,s0,+000004B0
	c.lw	s0,0(a5)
	c.bnez	a5,000000002305622E

l23056224:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	c.j	0000000023056212

l2305622E:
	addi	a0,a3,+00000004
	c.addi4spn	a1,0000001C
	c.swsp	a3,00000084
	jal	ra,000000002307A91C
	c.lwsp	a2,000000A4
	addi	a1,sp,+0000001E
	addi	a0,a3,+00000008
	jal	ra,000000002307A91C
	lhu	a1,sp,+0000001C
	lhu	a2,sp,+0000001E
	c.lw	s0,0(a0)
	jal	ra,000000002304F304
	c.mv	a1,a0
	c.beqz	a0,000000002305626E

l2305625A:
	lui	a0,000230BC
	addi	a0,a0,+000003D8
	jal	ra,0000000023082388

l23056266:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2305626E:
	lui	a0,000230BC
	addi	a0,a0,+00000408
	c.j	0000000023056212

;; ble_subscribe: 23056278
ble_subscribe proc
	c.li	a5,00000004
	beq	a2,a5,000000002305628A

l2305627E:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23056286:
	jal	zero,0000000023082388

l2305628A:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	addi	s1,s1,+000004B0
	c.lw	s1,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a5,00000000230562B8

l230562A2:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l230562AA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.j	0000000023056286

l230562B8:
	lui	s3,00042017
	addi	s2,s3,+0000001C
	addi	a0,a3,+00000004
	addi	a1,s2,+00000026
	c.mv	s0,a3
	jal	ra,000000002307A91C
	addi	a1,s2,+00000024
	addi	a0,s0,+00000008
	jal	ra,000000002307A91C
	addi	a1,s2,+00000028
	addi	a0,s0,+0000000C
	jal	ra,000000002307A91C
	c.lw	s1,0(a0)
	lui	a5,00023056
	addi	a5,a5,-00000664
	addi	a1,s3,+0000001C
	sw	a5,s2,+00000020
	jal	ra,000000002304DA98
	c.mv	a1,a0
	c.beqz	a0,0000000023056318

l23056300:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230BC
	addi	a0,a0,+00000694
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23056318:
	lui	a0,000230BC
	addi	a0,a0,+000006B0
	c.j	00000000230562AA

;; ble_write: 23056322
ble_write proc
	c.li	a5,00000005
	beq	a2,a5,0000000023056334

l23056328:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23056330:
	jal	zero,0000000023082388

l23056334:
	lui	a5,0004200F
	lw	a4,a5,+000004B0
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	addi	s4,a5,+000004B0
	c.bnez	a4,000000002305636C

l23056352:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l2305635A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.j	0000000023056330

l2305636C:
	lui	s2,00042017
	addi	a5,s2,+00000050
	c.lw	a5,24(a5)
	addi	s0,s2,+00000050
	c.beqz	a5,0000000023056386

l2305637C:
	lui	a0,000230BC
	addi	a0,a0,+0000073C
	c.j	000000002305635A

l23056386:
	addi	a0,a3,+00000004
	addi	a1,s0,+0000001C
	c.mv	s1,a3
	jal	ra,000000002307A91C
	addi	a1,s0,+0000001E
	addi	a0,s1,+00000008
	jal	ra,000000002307A91C
	addi	a1,s0,+00000024
	addi	a0,s1,+0000000C
	jal	ra,000000002307A91C
	lhu	s3,s0,+00000024
	addi	a5,zero,+00000200
	bgeu	a5,s3,00000000230563BC

l230563B8:
	addi	s3,zero,+00000200

l230563BC:
	lui	a1,00042017
	slli	a2,s3,00000010
	addi	s5,a1,-0000020C
	c.srli	a2,00000010
	addi	a1,a1,-0000020C
	addi	a0,s1,+00000010
	jal	ra,000000002307A8A6
	lw	a0,s4,+00000000
	lui	a5,00023056
	addi	a5,a5,-0000055A
	addi	a1,s2,+00000050
	sw	s5,s0,+00000020
	sh	s3,s0,+00000024
	c.sw	s0,24(a5)
	jal	ra,000000002304D8EE
	c.mv	a1,a0
	c.beqz	a0,0000000023056414

l230563F8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a0,000230BC
	addi	a0,a0,+0000074C
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23056414:
	lui	a0,000230BC
	addi	a0,a0,+00000764
	c.j	000000002305635A

;; ble_read: 2305641E
ble_read proc
	c.li	a5,00000003
	beq	a2,a5,0000000023056430

l23056424:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2305642C:
	jal	zero,0000000023082388

l23056430:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+000004B0
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a5,000000002305645E

l23056448:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l23056450:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.j	000000002305642C

l2305645E:
	lui	s3,00042017
	addi	s1,s3,-0000000C
	addi	a0,a3,+00000004
	addi	a1,s1,+00000020
	c.mv	s2,a3
	jal	ra,000000002307A91C
	addi	a1,s1,+00000022
	addi	a0,s2,+00000008
	jal	ra,000000002307A91C
	lui	a5,00023056
	c.lw	s0,0(a0)
	addi	a5,a5,+000004BE
	c.sw	s1,24(a5)
	addi	a1,s3,-0000000C
	c.li	a5,00000001
	c.sw	s1,28(a5)
	jal	ra,000000002304D5CA
	c.mv	a1,a0
	c.beqz	a0,00000000230564B4

l2305649C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230BC
	addi	a0,a0,+00000298
	c.addi16sp	00000020
	jal	zero,0000000023082388

l230564B4:
	lui	a0,000230BC
	addi	a0,a0,+000002B0
	c.j	0000000023056450

;; read_func: 230564BE
read_func proc
	c.addi16sp	FFFFFFC0
	lui	a0,000230BD
	c.swsp	s3,00000094
	addi	a0,a0,-000005EC
	c.mv	s3,a2
	c.mv	a2,a4
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a4
	c.mv	s2,a3
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	jal	ra,0000000023082388
	c.li	a2,0000000F
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	addi	a5,s1,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000015
	bgeu	a4,a5,000000002305651C

l230564F8:
	c.li	a0,00000001
	bne	s2,zero,000000002305650C

l230564FE:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230A3A68
	c.li	a0,00000000

l2305650C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l2305651C:
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	lui	a0,000230BD
	c.addi4spn	a1,00000008
	addi	a0,a0,-000005C8
	jal	ra,0000000023082388
	c.li	s0,00000000
	lui	s4,000230BD

l2305653A:
	bge	s0,s1,00000000230564F8

l2305653E:
	add	a5,s2,s0
	lbu	a1,a5,+00000000
	addi	a0,s4,-000005B4
	c.addi	s0,00000001
	jal	ra,0000000023082388
	c.j	000000002305653A

;; data_cb: 23056552
data_cb proc
	lbu	a4,a0,+00000000
	c.li	a3,00000001
	c.addi	a4,FFFFFFF8
	bltu	a3,a4,0000000023056584

l2305655E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a0,+00000001
	c.li	a4,0000001D
	c.mv	a5,a0
	bgeu	a4,a2,0000000023056570

l2305656E:
	c.li	a2,0000001D

l23056570:
	c.mv	a0,a1
	c.lw	a5,4(a1)
	andi	a2,a2,+000000FF
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23056584:
	c.li	a0,00000001
	c.jr	ra

;; ble_discover: 23056588
ble_discover proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.li	a5,00000005
	beq	a2,a5,00000000230565AC

l2305659E:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l230565A6:
	jal	ra,0000000023082388
	c.j	0000000023056656

l230565AC:
	lui	s4,0004200F
	lw	a5,s4,+000004B0
	addi	s4,s4,+000004B0
	c.bnez	a5,00000000230565C4

l230565BA:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	c.j	00000000230565A6

l230565C4:
	lui	s1,00042017
	lui	a4,00023056
	addi	a5,s1,-00000254
	addi	a4,a4,+0000007A
	c.sw	a5,28(a4)
	c.li	s2,00000001
	c.li	a4,FFFFFFFF
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	sh	s2,a5,+00000020
	sh	a4,a5,+00000026
	c.mv	s5,a3
	jal	ra,000000002307A8F6
	lbu	a5,sp,+0000000F
	addi	s0,s1,-00000254
	c.bnez	a5,0000000023056668

l230565FA:
	sb	zero,s0,+00000028

l230565FE:
	lui	s2,0004200F
	addi	s3,s2,+000004B4
	addi	a1,s3,+00000002
	addi	a0,s5,+00000008
	jal	ra,000000002307A91C
	lhu	a5,s3,+00000002
	addi	s2,s2,+000004B4
	c.bnez	a5,000000002305661E

l2305661C:
	c.li	s2,00000000

l2305661E:
	addi	a1,s0,+00000020
	addi	a0,s5,+0000000C
	sw	s2,s0,+00000018
	jal	ra,000000002307A91C
	addi	a1,s0,+00000026
	addi	a0,s5,+00000010
	jal	ra,000000002307A91C
	lw	a0,s4,+00000000
	addi	a1,s1,-00000254
	jal	ra,000000002304CC26
	c.mv	a1,a0
	c.beqz	a0,000000002305668E

l2305664A:
	lui	a0,000230BC
	addi	a0,a0,+000001AC
	jal	ra,0000000023082388

l23056656:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23056668:
	bne	a5,s2,0000000023056672

l2305666C:
	sb	a5,s0,+00000028
	c.j	00000000230565FE

l23056672:
	c.li	a4,00000002
	beq	a5,a4,000000002305666C

l23056678:
	c.li	a4,00000003
	beq	a5,a4,000000002305666C

l2305667E:
	c.li	a4,00000004
	beq	a5,a4,000000002305666C

l23056684:
	lui	a0,000230BC
	addi	a0,a0,+00000190
	c.j	00000000230565A6

l2305668E:
	lui	a0,000230BC
	addi	a0,a0,+000001C8
	c.j	00000000230565A6

;; ble_auth_passkey: 23056698
ble_auth_passkey proc
	c.li	a5,00000002
	beq	a2,a5,00000000230566AA

l2305669E:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l230566A6:
	jal	zero,0000000023082388

l230566AA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000004B0
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,00000000230566CC

l230566BC:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l230566C4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	00000000230566A6

l230566CC:
	c.lw	a3,4(a0)
	jal	ra,00000000230A3618
	lui	a5,000000F4
	addi	a5,a5,+0000023F
	c.mv	a1,a0
	bgeu	a5,a0,00000000230566EA

l230566E0:
	lui	a0,000230BC
	addi	a0,a0,+00000064
	c.j	00000000230566C4

l230566EA:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304B67A

;; ble_conn_update: 230566F6
ble_conn_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000005
	beq	a2,a5,0000000023056710

l23056702:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l2305670A:
	jal	ra,0000000023082388
	c.j	000000002305675C

l23056710:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000008
	c.mv	s0,a3
	jal	ra,000000002307A91C
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000008
	jal	ra,000000002307A91C
	c.addi4spn	a1,0000000C
	addi	a0,s0,+0000000C
	jal	ra,000000002307A91C
	addi	a1,sp,+0000000E
	addi	a0,s0,+00000010
	jal	ra,000000002307A91C
	lui	a5,0004200F
	lw	a0,a5,+000004B0
	c.addi4spn	a1,00000008
	jal	ra,000000002304B3F6
	c.mv	a1,a0
	c.beqz	a0,0000000023056764

l23056750:
	lui	a0,000230BC
	addi	a0,a0,+0000008C
	jal	ra,0000000023082388

l2305675C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23056764:
	lui	a0,000230BC
	addi	a0,a0,+000000AC
	c.j	000000002305670A

;; ble_unpair: 2305676E
ble_unpair proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.li	a5,00000003
	beq	a2,a5,000000002305678A

l23056778:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23056780:
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

l2305678A:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000018
	c.swsp	a3,00000084
	jal	ra,000000002307A8F6
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	addi	a0,a3,+00000008
	jal	ra,000000002307A8A6
	addi	a1,sp,+00000019
	c.addi4spn	a0,00000010
	c.li	a2,00000006
	jal	ra,00000000230499B2
	c.addi4spn	a1,00000018
	c.li	a0,00000000
	jal	ra,000000002304EDD8
	c.beqz	a0,00000000230567C4

l230567BA:
	lui	a0,000230BC
	addi	a0,a0,+000006C0
	c.j	0000000023056780

l230567C4:
	lui	a0,000230BC
	addi	a0,a0,+000006D4
	c.j	0000000023056780

;; ble_start_scan: 230567CE
ble_start_scan proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000005
	beq	a2,a5,00000000230567E8

l230567DA:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l230567E2:
	jal	ra,0000000023082388
	c.j	0000000023056834

l230567E8:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000008
	c.mv	s0,a3
	jal	ra,000000002307A8F6
	addi	a1,sp,+00000009
	addi	a0,s0,+00000008
	jal	ra,000000002307A8F6
	addi	a1,sp,+0000000A
	addi	a0,s0,+0000000C
	jal	ra,000000002307A91C
	c.addi4spn	a1,0000000C
	addi	a0,s0,+00000010
	jal	ra,000000002307A91C
	lui	a1,00023057
	addi	a1,a1,-00000678
	c.addi4spn	a0,00000008
	jal	ra,0000000023050BD6
	c.mv	a1,a0
	c.beqz	a0,000000002305683C

l23056828:
	lui	a0,000230BC
	addi	a0,a0,+000005D8
	jal	ra,0000000023082388

l23056834:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2305683C:
	lui	a0,000230BC
	addi	a0,a0,+000005FC
	c.j	00000000230567E2

;; ble_set_device_name: 23056846
ble_set_device_name proc
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	jal	ra,00000000230A4220
	c.beqz	a0,0000000023056886

l23056856:
	c.lw	s0,4(a0)
	jal	ra,00000000230A4220
	c.li	a5,0000001D
	bltu	a5,a0,0000000023056886

l23056862:
	c.lw	s0,4(a0)
	jal	ra,0000000023050188
	c.beqz	a0,000000002305687C

l2305686A:
	lui	a0,000230BC
	addi	a0,a0,+00000438

l23056872:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2305687C:
	lui	a0,000230BC
	addi	a0,a0,+00000454
	c.j	0000000023056872

l23056886:
	c.lw	s0,4(a0)
	jal	ra,00000000230A4220
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+00000478
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; ble_init: 230568A0
ble_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000004AC
	lbu	a5,s0,+00000000
	c.swsp	ra,00000084
	c.beqz	a5,00000000230568C6

l230568B4:
	lui	a0,000230B6
	addi	a0,a0,+00000478

l230568BC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230568C6:
	lui	a0,0004200E
	lui	a5,0004200F
	addi	a0,a0,-00000110
	sw	zero,a5,+000004B0
	jal	ra,000000002304A716
	c.li	a5,00000001
	lui	a0,000230B6
	sb	a5,s0,+00000000
	addi	a0,a0,+000004A0
	c.j	00000000230568BC

;; bt_addr_le_to_str.constprop.14: 230568EA
;;   Called from:
;;     230569BA (in device_found)
;;     230569EC (in ble_read_local_address)
;;     23056A08 (in ble_read_local_address)
;;     23056A30 (in connected)
;;     23056A7A (in disconnected)
;;     23056AB4 (in security_changed)
;;     23056ADC (in auth_passkey_display)
;;     23056B00 (in auth_passkey_entry)
;;     23056B24 (in auth_passkey_confirm)
;;     23056B48 (in auth_cancel)
;;     23056B6A (in auth_pairing_confirm)
;;     23056B90 (in auth_pairing_complete)
;;     23056BC8 (in auth_pairing_failed)
;;     23056BEC (in identity_resolved)
;;     23056BF4 (in identity_resolved)
;;     23056C2C (in ble_get_all_conn_info)
;;     23056C6E (in ble_get_all_conn_info)
bt_addr_le_to_str.constprop.14 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	lbu	a3,a0,+00000000
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s2,a1
	c.addi4spn	s1,00000014
	beq	a3,a5,000000002305696A

l23056904:
	c.beqz	a3,0000000023056924

l23056906:
	c.li	a5,00000002
	beq	a3,a5,0000000023056974

l2305690C:
	c.li	a5,00000003
	beq	a3,a5,000000002305697E

l23056912:
	lui	a2,000230BB
	addi	a2,a2,-000005E0
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,00000000230823DA
	c.j	0000000023056932

l23056924:
	lui	a1,000230BB
	addi	a1,a1,-00000608

l2305692C:
	c.mv	a0,s1
	jal	ra,00000000230A4170

l23056932:
	lbu	a5,s0,+00000001
	lbu	a7,s0,+00000002
	lbu	a6,s0,+00000003
	c.swsp	a5,00000000
	lbu	a4,s0,+00000005
	lbu	a5,s0,+00000004
	lbu	a3,s0,+00000006
	lui	a2,000230BB
	c.swsp	s1,00000080
	c.mv	a0,s2
	addi	a2,a2,-000005D8
	c.li	a1,0000001E
	jal	ra,00000000230823DA
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2305696A:
	lui	a1,000230BB
	addi	a1,a1,-00000600
	c.j	000000002305692C

l23056974:
	lui	a1,000230BB
	addi	a1,a1,-000005F8
	c.j	000000002305692C

l2305697E:
	lui	a1,000230BB
	addi	a1,a1,-000005EC
	c.j	000000002305692C

;; device_found: 23056988
device_found proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a2
	c.li	a1,00000000
	c.li	a2,0000001E
	c.addi4spn	a0,00000030
	c.swsp	ra,000000AC
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	c.lwsp	a2,000000A4
	lui	a1,00023056
	c.addi4spn	a2,00000030
	c.mv	a0,a3
	addi	a1,a1,+00000552
	jal	ra,000000002304F17E
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.addi4spn	a4,00000030
	c.mv	a3,s1
	c.mv	a2,s0
	c.addi4spn	a1,00000010
	addi	a0,a0,+000007C4
	jal	ra,0000000023082388
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.addi16sp	00000060
	c.jr	ra

;; ble_read_local_address: 230569DE
ble_read_local_address proc
	c.addi16sp	FFFFFFC0
	c.mv	a0,sp
	c.swsp	ra,0000009C
	jal	ra,0000000023050B40
	c.addi4spn	a1,00000010
	c.mv	a0,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.addi4spn	a1,00000010
	addi	a0,a0,+000002C0
	jal	ra,0000000023082388
	c.addi4spn	a0,00000008
	jal	ra,0000000023050B58
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.addi4spn	a1,00000010
	addi	a0,a0,+000002DC
	jal	ra,0000000023082388
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; connected: 23056A20
connected proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.mv	s0,a0
	jal	ra,000000002304AF52
	c.addi4spn	a1,00000010
	jal	ra,00000000230568EA
	c.lwsp	a2,00000084
	c.addi4spn	a1,00000010
	c.beqz	a2,0000000023056A4E

l23056A3A:
	lui	a0,000230BC
	addi	a0,a0,+00000790
	jal	ra,0000000023082388

l23056A46:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l23056A4E:
	lui	a0,000230BC
	addi	a0,a0,+000007B0
	jal	ra,0000000023082388
	lui	a5,0004200F
	addi	a5,a5,+000004B0
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023056A46

l23056A66:
	c.sw	a5,0(s0)
	c.j	0000000023056A46

;; disconnected: 23056A6A
disconnected proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.mv	s0,a0
	jal	ra,000000002304AF52
	c.addi4spn	a1,00000010
	jal	ra,00000000230568EA
	c.lwsp	a2,00000084
	lui	a0,000230BC
	c.addi4spn	a1,00000010
	addi	a0,a0,+000007F0
	jal	ra,0000000023082388
	lui	a5,0004200F
	addi	a5,a5,+000004B0
	c.lw	a5,0(a4)
	bne	a4,s0,0000000023056AA0

l23056A9C:
	sw	zero,a5,+00000000

l23056AA0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; security_changed: 23056AA8
security_changed proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a1,00000084
	jal	ra,000000002304AF52
	c.addi4spn	a1,00000010
	jal	ra,00000000230568EA
	c.lwsp	a2,00000084
	lui	a0,000230BD
	c.addi4spn	a1,00000010
	addi	a0,a0,-000005A4
	jal	ra,0000000023082388
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; auth_passkey_display: 23056ACE
auth_passkey_display proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s0,a1
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.mv	a1,s0
	addi	a0,a0,-00000020
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; auth_passkey_entry: 23056AF6
auth_passkey_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.mv	a1,sp
	addi	a0,a0,-00000008
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_passkey_confirm: 23056B18
auth_passkey_confirm proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a1,00000084
	jal	ra,000000002304AF52
	c.addi4spn	a1,00000010
	jal	ra,00000000230568EA
	c.lwsp	a2,00000084
	lui	a0,000230BC
	c.addi4spn	a1,00000010
	addi	a0,a0,-00000040
	jal	ra,0000000023082388
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; auth_cancel: 23056B3E
auth_cancel proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.mv	a1,sp
	addi	a0,a0,-000000B0
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_pairing_confirm: 23056B60
auth_pairing_confirm proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.mv	a1,sp
	addi	a0,a0,-00000078
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_pairing_complete: 23056B82
auth_pairing_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a1
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	c.bnez	s0,0000000023056BB4

l23056B96:
	lui	a1,000230BC
	addi	a1,a1,-00000090

l23056B9E:
	lui	a0,000230BC
	c.mv	a2,sp
	addi	a0,a0,-00000088
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l23056BB4:
	lui	a1,000230BC
	addi	a1,a1,-00000098
	c.j	0000000023056B9E

;; auth_pairing_failed: 23056BBE
auth_pairing_failed proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,000000002304AF52
	c.mv	a1,sp
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.mv	a1,sp
	addi	a0,a0,-0000005C
	jal	ra,0000000023082388
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; identity_resolved: 23056BE0
identity_resolved proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	a0,a2
	c.mv	s0,a1
	c.mv	a1,sp
	c.swsp	ra,000000A4
	jal	ra,00000000230568EA
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,00000000230568EA
	lui	a0,000230BD
	c.mv	a2,sp
	c.addi4spn	a1,00000020
	addi	a0,a0,-00000670
	jal	ra,0000000023082388
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

;; ble_get_all_conn_info: 23056C10
ble_get_all_conn_info proc
	c.addi16sp	FFFFFF80
	c.addi4spn	a0,00000028
	c.swsp	s2,00000038
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	jal	ra,000000002304AFCE
	c.mv	s2,a0
	bge	zero,a0,0000000023056C3E

l23056C28:
	c.lwsp	s4,00000154
	c.addi4spn	a1,00000008
	jal	ra,00000000230568EA
	lui	a0,000230BC
	c.addi4spn	a1,00000008
	addi	a0,a0,+0000020C
	jal	ra,0000000023082388

l23056C3E:
	lui	a0,000230BC
	c.mv	a1,s2
	addi	a0,a0,+0000022C
	jal	ra,0000000023082388
	c.addi4spn	s0,00000028
	c.li	s1,00000000
	lui	s3,000230BC

l23056C54:
	c.addi	s0,0000001C
	blt	s1,s2,0000000023056C68

l23056C5A:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

l23056C68:
	lw	a0,s0,-0000000C
	c.addi4spn	a1,00000008
	jal	ra,00000000230568EA
	c.mv	a1,s1
	c.addi4spn	a2,00000008
	addi	a0,s3,+00000250
	jal	ra,0000000023082388
	c.addi	s1,00000001
	c.j	0000000023056C54

;; ble_write_without_rsp: 23056C82
ble_write_without_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	a5,00000005
	beq	a2,a5,0000000023056CAA

l23056C92:
	lui	a0,000230B6
	addi	a0,a0,+000007B4

l23056C9A:
	jal	ra,0000000023082388

l23056C9E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23056CAA:
	lui	a5,0004200F
	lw	a4,a5,+000004B0
	addi	s0,a5,+000004B0
	c.bnez	a4,0000000023056CC2

l23056CB8:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	c.j	0000000023056C9A

l23056CC2:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000B
	c.mv	s1,a3
	jal	ra,000000002307A8F6
	c.addi4spn	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,000000002307A91C
	addi	a1,sp,+0000000E
	addi	a0,s1,+0000000C
	jal	ra,000000002307A91C
	lhu	a2,sp,+0000000E
	addi	a5,zero,+00000200
	bgeu	a5,a2,0000000023056CF6

l23056CF2:
	addi	a2,zero,+00000200

l23056CF6:
	sh	a2,sp,+0000000E
	lui	s2,00042017
	c.slli	a2,10
	addi	a1,s2,-0000020C
	addi	a0,s1,+00000010
	c.srli	a2,00000010
	jal	ra,000000002307A8A6
	lhu	a1,sp,+0000000C
	lbu	a4,sp,+0000000B
	lhu	a3,sp,+0000000E
	c.lw	s0,0(a0)
	c.li	a6,00000000
	c.li	a5,00000000
	addi	a2,s2,-0000020C
	jal	ra,000000002304D838
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+00000774
	jal	ra,0000000023082388
	c.j	0000000023056C9E

;; ble_cli_register: 23056D38
;;   Called from:
;;     23000F0A (in bt_enable_cb)
ble_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; ble_tp_recv: 23056D3C
ble_tp_recv proc
	c.li	a0,00000000
	c.jr	ra

;; ble_tp_disconnected: 23056D40
ble_tp_disconnected proc
	lui	a1,000230BD
	lui	a0,000230AC
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-0000033C
	addi	a0,a0,-000004B4
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	lui	a5,00042026
	sw	zero,a5,+00000640
	c.addi	sp,00000010
	c.jr	ra

;; ble_tp_connected: 23056D66
ble_tp_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a1,000230BD
	c.mv	s1,a0
	lui	a0,000230AC
	addi	a1,a1,-00000350
	addi	a0,a0,-000004B4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lui	a2,00001000
	lui	s0,00042026
	addi	a2,a2,-000007B8
	addi	a1,zero,+000000FB
	c.mv	a0,s1
	sw	s1,s0,+00000640
	jal	ra,000000002304F304
	c.bnez	a0,0000000023056DE0

l23056D9E:
	lui	a0,000230BD
	addi	a0,a0,-000002B4
	jal	ra,0000000023082388

l23056DAA:
	lw	a0,s0,+00000640
	lui	a1,00042026
	lui	a5,00023057
	addi	a4,a1,+00000620
	addi	a5,a5,-0000018A
	addi	a1,a1,+00000620
	c.sw	a4,24(a5)
	jal	ra,000000002304CBC0
	c.mv	a1,a0
	c.bnez	a0,0000000023056DF0

l23056DCC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230BD
	addi	a0,a0,-00000264
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23056DE0:
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,-00000290
	jal	ra,0000000023082388
	c.j	0000000023056DAA

l23056DF0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230BD
	addi	a0,a0,-00000240
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; ble_tp_ccc_cfg_changed: 23056E04
ble_tp_ccc_cfg_changed proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	a5,00000001
	lui	s0,00042026
	bne	a1,a5,0000000023056E5A

l23056E16:
	c.mv	s1,a1
	lui	a0,00023057
	lui	a1,000230BD
	addi	a5,s0,+0000063C
	c.li	a4,0000000F
	c.li	a3,00000000
	addi	a2,zero,+00000100
	addi	a1,a1,-00000328
	addi	a0,a0,-00000154
	jal	ra,00000000230626A4
	bne	a0,s1,0000000023056E50

l23056E3C:
	lui	a0,000230BD
	addi	a0,a0,-00000320

l23056E44:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23056E50:
	lui	a0,000230BD
	addi	a0,a0,-000002F8
	c.j	0000000023056E44

l23056E5A:
	lui	a0,000230BD
	addi	a0,a0,-000002D4
	jal	ra,0000000023082388
	lw	a0,s0,+0000063C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023062720

;; ble_tp_tx_mtu_size: 23056E76
ble_tp_tx_mtu_size proc
	c.bnez	a1,0000000023056EA2

l23056E78:
	lui	a5,00042026
	lw	a0,a5,+00000640
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304CA12
	lui	a5,0004200F
	sw	a0,a5,+00000C6C
	c.mv	a1,a0
	lui	a0,000230BD
	c.lwsp	a2,00000020
	addi	a0,a0,-00000214
	c.addi	sp,00000010

l23056E9E:
	jal	zero,0000000023082388

l23056EA2:
	lui	a0,000230BD
	addi	a0,a0,-000001E4
	c.j	0000000023056E9E

;; ble_tp_notify_task: 23056EAC
ble_tp_notify_task proc
	c.addi16sp	FFFFFED0
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	sw	s1,sp,+00000124
	sw	s3,sp,+0000011C
	sw	s4,sp,+00000118
	sw	s5,sp,+00000114
	sw	ra,sp,+0000012C
	sw	s0,sp,+00000128
	sw	s2,sp,+00000120
	jal	ra,00000000230A3A68
	lui	a5,00004030
	addi	a5,a5,+00000201
	c.swsp	a5,0000008C
	lui	a5,00008070
	addi	a5,a5,+00000605
	c.swsp	a5,00000010
	lui	s1,0004200E
	c.li	a5,00000009
	sb	a5,sp,+00000024
	lui	s5,00042026
	lui	s4,0004200F
	addi	s1,s1,-00000044
	addi	s3,sp,+0000001C

l23056F04:
	lw	s0,s4,-00000394
	lw	s2,s5,+00000640
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	c.addi	s0,FFFFFFFD
	jal	ra,00000000230A3A68
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi4spn	a1,00000004
	c.mv	a0,s2
	c.swsp	s1,00000004
	c.swsp	s3,00000084
	sh	s0,sp,+00000010
	jal	ra,000000002304C7C4
	c.j	0000000023056F04

;; ble_tp_init: 23056F2E
;;   Called from:
;;     23000F16 (in bt_enable_cb)
ble_tp_init proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+0000000C
	c.swsp	ra,00000084
	jal	ra,000000002304A716
	c.lwsp	a2,00000020
	lui	a0,0004200E
	addi	a0,a0,+00000028
	c.addi	sp,00000010
	jal	zero,000000002304C64A

;; polling_events.constprop.1: 23056F4E
;;   Called from:
;;     230570BE (in k_poll)
;;     230570DC (in k_poll)
polling_events.constprop.1 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s4,0000001C
	c.lui	s4,FFFF1000
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s11,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.mv	s10,a2
	c.mv	s5,a3
	c.mv	s9,a0
	c.li	s0,00000000
	c.li	s2,00000001
	c.li	s6,00000002
	c.li	s3,00000014
	c.li	s7,00000003
	c.li	s8,00000001
	c.addi	s4,FFFFFFFF

l23056F84:
	c.lwsp	a2,000000E4
	blt	s0,a5,0000000023056FAA

l23056F8A:
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

l23056FAA:
	jal	ra,0000000023048C54
	lw	a4,s9,+0000000C
	c.mv	s11,a0
	c.srli	a4,00000008
	c.andi	a4,0000000F
	beq	a4,s6,0000000023057004

l23056FBC:
	beq	a4,s7,000000002305703A

l23056FC0:
	bne	a4,s8,0000000023056FCE

l23056FC4:
	lw	a4,s9,+00000010
	c.li	a2,00000002
	c.lw	a4,8(a4)
	c.bnez	a4,0000000023057010

l23056FCE:
	beq	s10,zero,000000002305702E

l23056FD2:
	beq	s2,zero,000000002305702E

l23056FD6:
	lw	a4,s9,+0000000C
	c.srli	a4,00000008
	c.andi	a4,0000000F
	beq	a4,s6,0000000023057048

l23056FE2:
	beq	a4,s7,0000000023057048

l23056FE6:
	bne	a4,s8,0000000023057064

l23056FEA:
	add	a4,s0,s3
	lw	a3,s9,+00000010
	sw	a3,s9,+00000000
	c.lw	a3,4(a2)
	sw	a2,s9,+00000004
	c.add	a4,s1
	c.sw	a2,0(a4)
	c.sw	a3,4(a4)
	c.j	0000000023057064

l23057004:
	lw	a0,s9,+00000010
	jal	ra,0000000023048BE0
	c.beqz	a0,0000000023056FCE

l2305700E:
	c.li	a2,00000003

l23057010:
	lw	a3,s9,+0000000C
	sw	zero,s9,+00000008
	c.li	s2,00000000
	srli	a4,a3,0000000C
	c.andi	a4,0000000F
	c.or	a4,a2
	c.slli	a4,0C
	and	a3,a3,s4
	c.or	a4,a3
	sw	a4,s9,+0000000C

l2305702E:
	c.mv	a0,s11
	jal	ra,0000000023048C64
	c.addi	s0,00000001
	c.addi	s9,00000014
	c.j	0000000023056F84

l2305703A:
	lw	a0,s9,+00000010
	jal	ra,0000000023048B10
	c.bnez	a0,0000000023056FCE

l23057044:
	c.li	a2,00000004
	c.j	0000000023057010

l23057048:
	add	a4,s0,s3
	lw	a3,s9,+00000010
	addi	a2,a3,+00000004
	sw	a2,s9,+00000000
	c.lw	a3,8(a2)
	sw	a2,s9,+00000004
	c.add	a4,s1
	c.sw	a2,0(a4)
	c.sw	a3,8(a4)

l23057064:
	sw	zero,s9,+00000008
	lw	a4,s5,+00000000
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	c.j	000000002305702E

;; k_poll_event_init: 23057074
;;   Called from:
;;     2304A942 (in bt_conn_prepare_events)
;;     2304A978 (in bt_conn_prepare_events)
;;     2304A9F8 (in bt_conn_prepare_events)
k_poll_event_init proc
	c.andi	a1,0000000F
	slli	a5,a1,00000008
	c.lw	a0,12(a1)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.and	a1,a4
	c.or	a1,a5
	c.lui	a5,FFFF0000
	c.andi	a2,00000001
	c.addi	a5,FFFFFFFF
	c.slli	a2,10
	c.and	a1,a5
	c.or	a1,a2
	c.lui	a2,00011000
	c.addi	a2,FFFFFFFF
	c.and	a1,a2
	sw	zero,a0,+00000008
	c.sw	a0,12(a1)
	c.sw	a0,16(a3)
	c.jr	ra

;; k_poll: 230570A2
;;   Called from:
;;     2304FDB0 (in hci_tx_thread)
k_poll proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.addi4spn	a3,0000000C
	c.li	s2,FFFFFFFF
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.swsp	s2,00000084
	jal	ra,0000000023056F4E
	c.beqz	a0,00000000230570E0

l230570C4:
	lui	a0,00042026
	c.mv	a1,s1
	addi	a0,a0,+00000644
	jal	ra,0000000023048B5E
	c.addi4spn	a3,0000000C
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	c.swsp	s2,00000084
	jal	ra,0000000023056F4E

l230570E0:
	jal	ra,0000000023048C54
	c.lwsp	a2,00000024
	c.li	a5,00000014
	c.mv	s2,a0
	add	a5,s1,a5
	c.li	s3,00000002
	c.li	s4,00000003
	c.li	s5,00000001
	c.add	s0,a5

l230570F6:
	bge	s1,zero,0000000023057114

l230570FA:
	c.mv	a0,s2
	jal	ra,0000000023048C64
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

l23057114:
	c.lw	s0,12(a5)
	sw	zero,s0,+00000008
	c.srli	a5,00000008
	c.andi	a5,0000000F
	beq	a5,s3,000000002305712A

l23057122:
	beq	a5,s4,000000002305712A

l23057126:
	bne	a5,s5,0000000023057134

l2305712A:
	c.lw	s0,4(a4)
	c.lw	s0,0(a5)
	c.sw	a4,0(a5)
	c.lw	s0,4(a4)
	c.sw	a5,4(a4)

l23057134:
	jal	ra,0000000023048C64
	jal	ra,0000000023048C54
	c.addi	s1,FFFFFFFF
	c.addi	s0,FFFFFFEC
	c.j	00000000230570F6

;; k_poll_signal_raise: 23057142
k_poll_signal_raise proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,0000000023048C54
	c.li	a5,00000001
	c.lwsp	a2,00000064
	c.sw	s0,8(a5)
	c.lw	s0,0(a5)
	c.sw	s0,12(a1)
	bne	s0,a5,0000000023057170

l23057160:
	jal	ra,0000000023048C64
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23057170:
	c.lw	a5,4(a3)
	c.lw	a5,0(a4)
	c.mv	s1,a0
	lui	a0,00042026
	c.sw	a3,0(a4)
	c.lw	a5,4(a3)
	addi	a0,a0,+00000644
	c.sw	a4,4(a3)
	c.lw	a5,12(a4)
	c.lui	a3,00002000
	sw	zero,a5,+00000008
	c.or	a4,a3
	c.sw	a5,12(a4)
	jal	ra,0000000023048B7E
	c.mv	a0,s1
	c.j	0000000023057160

;; bt_rpa_irk_matches: 23057198
;;   Called from:
;;     23055858 (in bt_keys_find_irk)
;;     23055878 (in bt_keys_find_irk)
bt_rpa_irk_matches proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.li	a2,00000003
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,00000010
	c.addi	a1,00000003
	c.swsp	ra,00000094
	jal	ra,00000000230A382C
	c.li	a2,0000000D
	c.li	a1,00000000
	addi	a0,sp,+00000013
	jal	ra,00000000230A3A68
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,000000002304B7E8
	c.bnez	a0,00000000230571E8

l230571C6:
	c.li	a2,00000003
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.li	a2,00000003
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	sltiu	a0,a0,+00000001

l230571DE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l230571E8:
	c.li	a0,00000000
	c.j	00000000230571DE

;; u8_to_dec: 230571EC
;;   Called from:
;;     2304DD26 (in bt_gatt_connected)
u8_to_dec proc
	c.li	a3,00000004
	c.li	a5,00000000
	addi	a4,zero,+00000064
	c.li	a7,00000001
	c.li	t1,0000000A

l230571F8:
	c.beqz	a1,0000000023057202

l230571FA:
	c.addi	a3,FFFFFFFF
	c.bnez	a3,0000000023057206

l230571FE:
	sb	zero,a0,+00000000

l23057202:
	c.mv	a0,a5
	c.jr	ra

l23057206:
	srl	a6,a2,a4
	bgeu	a2,a4,0000000023057214

l2305720E:
	beq	a4,a7,0000000023057214

l23057212:
	c.beqz	a5,000000002305722A

l23057214:
	addi	a6,a6,+00000030
	c.addi	a1,FFFFFFFF
	c.addi	a5,00000001
	sb	a6,a0,+00000000
	andi	a1,a1,+000000FF
	c.addi	a0,00000001
	andi	a5,a5,+000000FF

l2305722A:
	and	a2,a2,a4
	srl	a4,a4,t1
	c.j	00000000230571F8

;; add_round_key: 23057234
;;   Called from:
;;     2305758A (in tc_aes_encrypt)
;;     230575EA (in tc_aes_encrypt)
;;     23057610 (in tc_aes_encrypt)
add_round_key proc
	lbu	a5,a1,+00000003
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	sb	a5,a0,+00000000
	lhu	a5,a1,+00000002
	lbu	a4,a0,+00000001
	c.xor	a5,a4
	sb	a5,a0,+00000001
	c.lw	a1,0(a5)
	lbu	a4,a0,+00000002
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+00000002
	c.lw	a1,0(a5)
	lbu	a4,a0,+00000003
	c.xor	a5,a4
	sb	a5,a0,+00000003
	lbu	a5,a1,+00000007
	lbu	a4,a0,+00000004
	c.xor	a5,a4
	sb	a5,a0,+00000004
	lhu	a5,a1,+00000006
	lbu	a4,a0,+00000005
	c.xor	a5,a4
	sb	a5,a0,+00000005
	c.lw	a1,4(a5)
	lbu	a4,a0,+00000006
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+00000006
	c.lw	a1,4(a5)
	lbu	a4,a0,+00000007
	c.xor	a5,a4
	sb	a5,a0,+00000007
	lbu	a5,a1,+0000000B
	lbu	a4,a0,+00000008
	c.xor	a5,a4
	sb	a5,a0,+00000008
	lbu	a4,a0,+00000009
	lhu	a5,a1,+0000000A
	c.xor	a5,a4
	sb	a5,a0,+00000009
	c.lw	a1,8(a5)
	lbu	a4,a0,+0000000A
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+0000000A
	c.lw	a1,8(a5)
	lbu	a4,a0,+0000000B
	c.xor	a5,a4
	sb	a5,a0,+0000000B
	lbu	a5,a1,+0000000F
	lbu	a4,a0,+0000000C
	c.xor	a5,a4
	sb	a5,a0,+0000000C
	lhu	a5,a1,+0000000E
	lbu	a4,a0,+0000000D
	c.xor	a5,a4
	sb	a5,a0,+0000000D
	c.lw	a1,12(a5)
	lbu	a4,a0,+0000000E
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+0000000E
	c.lw	a1,12(a5)
	lbu	a4,a0,+0000000F
	c.xor	a5,a4
	sb	a5,a0,+0000000F
	c.jr	ra

;; shift_rows: 2305730E
;;   Called from:
;;     230575B4 (in tc_aes_encrypt)
;;     23057608 (in tc_aes_encrypt)
shift_rows proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a4,a0,+00000000
	lbu	a5,a0,+0000000B
	c.mv	a2,sp
	sb	a4,sp,+00000000
	lbu	a4,a0,+00000005
	c.li	a3,00000010
	c.li	a1,00000010
	sb	a4,sp,+00000001
	lbu	a4,a0,+0000000A
	sb	a4,sp,+00000002
	lbu	a4,a0,+0000000F
	sb	a4,sp,+00000003
	lbu	a4,a0,+00000004
	sb	a4,sp,+00000004
	lbu	a4,a0,+00000009
	sb	a4,sp,+00000005
	lbu	a4,a0,+0000000E
	sb	a4,sp,+00000006
	lbu	a4,a0,+00000003
	sb	a4,sp,+00000007
	lbu	a4,a0,+00000008
	sb	a4,sp,+00000008
	lbu	a4,a0,+0000000D
	sb	a4,sp,+00000009
	lbu	a4,a0,+00000002
	sb	a4,sp,+0000000A
	lbu	a4,a0,+00000007
	sb	a4,sp,+0000000B
	lbu	a4,a0,+0000000C
	sb	a4,sp,+0000000C
	lbu	a4,a0,+00000001
	sb	a4,sp,+0000000D
	lbu	a4,a0,+00000006
	sb	a4,sp,+0000000E
	sb	a5,sp,+0000000F
	jal	ra,0000000023049C5E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mult_row_column: 230573A2
;;   Called from:
;;     230575BC (in tc_aes_encrypt)
;;     230575C4 (in tc_aes_encrypt)
;;     230575CC (in tc_aes_encrypt)
;;     230575D4 (in tc_aes_encrypt)
mult_row_column proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	lbu	a0,a1,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.swsp	s2,00000008
	jal	ra,0000000023049C86
	c.mv	s1,a0
	lbu	a0,s0,+00000001
	jal	ra,0000000023049C86
	lbu	a4,s0,+00000002
	lbu	a5,s0,+00000001
	c.xor	a5,a4
	lbu	a4,s0,+00000003
	c.xor	a5,a4
	c.xor	s1,a5
	c.xor	s1,a0
	sb	s1,s3,+00000000
	lbu	a0,s0,+00000001
	lbu	s2,s0,+00000000
	jal	ra,0000000023049C86
	c.mv	s1,a0
	lbu	a0,s0,+00000002
	jal	ra,0000000023049C86
	lbu	a5,s0,+00000002
	xor	s2,s2,a5
	lbu	a5,s0,+00000003
	xor	s2,s2,a5
	xor	s1,s1,s2
	c.xor	s1,a0
	sb	s1,s3,+00000001
	lbu	a0,s0,+00000002
	lbu	s1,s0,+00000001
	lbu	s2,s0,+00000000
	jal	ra,0000000023049C86
	xor	s2,s2,s1
	c.mv	s1,a0
	lbu	a0,s0,+00000003
	jal	ra,0000000023049C86
	lbu	a5,s0,+00000003
	xor	s2,s2,a5
	xor	s1,s1,s2
	c.xor	s1,a0
	sb	s1,s3,+00000002
	lbu	a0,s0,+00000000
	jal	ra,0000000023049C86
	lbu	a5,s0,+00000001
	lbu	s1,s0,+00000000
	c.xor	s1,a5
	lbu	a5,s0,+00000002
	c.xor	s1,a5
	c.xor	s1,a0
	lbu	a0,s0,+00000003
	andi	s1,s1,+000000FF
	jal	ra,0000000023049C86
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.xor	a0,s1
	sb	a0,s3,+00000003
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; tc_aes128_set_encrypt_key: 23057476
;;   Called from:
;;     23049AA2 (in tc_cmac_setup)
;;     2304B814 (in bt_encrypt_le)
;;     2304B882 (in bt_encrypt_be)
tc_aes128_set_encrypt_key proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a1
	lui	a1,000230BD
	c.swsp	s1,00000098
	addi	a2,zero,+0000002C
	c.mv	s1,a0
	addi	a1,a1,-000001B8
	c.addi4spn	a0,00000004
	c.swsp	ra,0000009C
	jal	ra,00000000230A382C
	c.li	a0,00000000
	c.beqz	s1,0000000023057546

l23057498:
	c.beqz	s0,0000000023057546

l2305749A:
	c.mv	a1,s0
	c.mv	a0,s1
	addi	a2,s0,+00000010
	c.mv	a4,s1

l230574A4:
	lbu	a5,a1,+00000000
	lbu	a3,a1,+00000001
	c.addi	a1,00000004
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	lbu	a3,a1,-00000001
	c.addi	a4,00000004
	c.or	a5,a3
	lbu	a3,a1,-00000002
	c.slli	a3,08
	c.or	a5,a3
	sw	a5,a4,+00000FFC
	bne	a2,a1,00000000230574A4

l230574CC:
	lui	a2,000230BD
	c.li	a1,00000004
	addi	a2,a2,-0000018C
	addi	a6,zero,+0000002C

l230574DA:
	andi	a4,a1,+00000003
	c.lw	a0,12(a5)
	c.bnez	a4,0000000023057536

l230574E2:
	slli	a4,a5,00000008
	c.srli	a5,00000018
	c.or	a5,a4
	srli	a4,a5,00000018
	andi	a3,a5,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a4,18
	c.or	a4,a3
	srli	a3,a5,00000010
	andi	a3,a3,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,10
	c.or	a3,a4
	srli	a4,a5,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a5,a4,+00000000
	c.slli	a5,08
	or	a4,a3,a5
	andi	a5,a1,-00000004
	c.addi4spn	a3,00000030
	c.add	a5,a3
	lw	a5,a5,-0000002C
	c.xor	a5,a4

l23057536:
	c.lw	a0,0(a4)
	c.addi	a1,00000001
	c.addi	a0,00000004
	c.xor	a5,a4
	c.sw	a0,12(a5)
	bne	a1,a6,00000000230574DA

l23057544:
	c.li	a0,00000001

l23057546:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; tc_aes_encrypt: 23057550
;;   Called from:
;;     23049AB4 (in tc_cmac_setup)
;;     23049B8C (in tc_cmac_update)
;;     23049BCE (in tc_cmac_update)
;;     23049C24 (in tc_cmac_final)
;;     2304B838 (in bt_encrypt_le)
;;     2304B88E (in bt_encrypt_be)
tc_aes_encrypt proc
	c.li	a5,00000000
	beq	a0,zero,0000000023057640

l23057556:
	beq	a1,zero,0000000023057640

l2305755A:
	beq	a2,zero,0000000023057640

l2305755E:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a2
	c.li	a3,00000010
	c.mv	a2,a1
	c.mv	s2,a0
	c.li	a1,00000010
	c.mv	a0,sp
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s1,00000098
	jal	ra,0000000023049C5E
	c.mv	a1,s0
	c.mv	a0,sp
	lui	s4,000230BD
	addi	s5,s0,+00000010
	jal	ra,0000000023057234
	addi	s0,s0,+000000A0
	addi	s3,sp,+00000010
	addi	s4,s4,-0000018C

l2305759A:
	c.mv	s1,sp
	c.mv	a5,sp

l2305759E:
	lbu	a4,a5,+00000000
	c.addi	a5,00000001
	c.add	a4,s4
	lbu	a4,a4,+00000000
	sb	a4,a5,+00000FFF
	bne	a5,s3,000000002305759E

l230575B2:
	c.mv	a0,sp
	jal	ra,000000002305730E
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,00000000230573A2
	c.addi4spn	a1,00000004
	c.addi4spn	a0,00000014
	jal	ra,00000000230573A2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,00000000230573A2
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,0000001C
	jal	ra,00000000230573A2
	c.li	a3,00000010
	c.mv	a2,s3
	c.li	a1,00000010
	c.mv	a0,sp
	jal	ra,0000000023049C5E
	c.mv	a1,s5
	c.mv	a0,sp
	c.addi	s5,00000010
	jal	ra,0000000023057234
	bne	s5,s0,000000002305759A

l230575F2:
	lbu	a5,s1,+00000000
	c.addi	s1,00000001
	c.add	a5,s4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000FFF
	bne	s3,s1,00000000230575F2

l23057606:
	c.mv	a0,sp
	jal	ra,000000002305730E
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,0000000023057234
	c.mv	a2,sp
	c.li	a3,00000010
	c.li	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023049C5E
	c.mv	a0,sp
	c.li	a2,00000010
	c.li	a1,00000000
	jal	ra,0000000023049C82
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.li	a5,00000001
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l23057640:
	c.mv	a0,a5
	c.jr	ra

;; att_prepare_write_req: 23057644
att_prepare_write_req proc
	c.li	a0,00000006
	c.jr	ra

;; att_op_get_type: 23057648
;;   Called from:
;;     23057BFA (in att_cb.isra.3)
;;     230583B0 (in bt_att_create_pdu)
;;     230585E2 (in bt_att_recv)
att_op_get_type proc
	c.li	a4,0000000E
	c.mv	a5,a0
	beq	a0,a4,0000000023057682

l23057650:
	bltu	a4,a0,00000000230576AE

l23057654:
	c.li	a4,00000007
	c.li	a0,00000002
	beq	a5,a4,0000000023057684

l2305765C:
	bltu	a4,a5,0000000023057686

l23057660:
	c.li	a4,00000003
	beq	a5,a4,0000000023057684

l23057666:
	bltu	a4,a5,000000002305767A

l2305766A:
	c.li	a4,00000001
	beq	a5,a4,0000000023057684

l23057670:
	c.li	a4,00000002
	c.li	a0,00000001
	bne	a5,a4,000000002305770C

l23057678:
	c.jr	ra

l2305767A:
	c.li	a4,00000005
	c.li	a0,00000002
	beq	a5,a4,0000000023057684

l23057682:
	c.li	a0,00000001

l23057684:
	c.jr	ra

l23057686:
	c.li	a4,0000000A
	c.li	a0,00000001
	beq	a5,a4,0000000023057684

l2305768E:
	bltu	a4,a5,00000000230576A2

l23057692:
	c.li	a4,00000008
	beq	a5,a4,0000000023057684

l23057698:
	c.li	a4,00000009
	c.li	a0,00000002
	bne	a5,a4,000000002305770C

l230576A0:
	c.jr	ra

l230576A2:
	c.li	a4,0000000C
	c.li	a0,00000001
	beq	a5,a4,0000000023057684

l230576AA:
	c.li	a0,00000002
	c.jr	ra

l230576AE:
	c.li	a4,00000017
	c.li	a0,00000002
	beq	a5,a4,0000000023057684

l230576B6:
	bltu	a4,a5,00000000230576EA

l230576BA:
	c.li	a4,00000011
	beq	a5,a4,0000000023057684

l230576C0:
	bltu	a4,a5,00000000230576D4

l230576C4:
	c.li	a4,0000000F
	beq	a5,a4,0000000023057684

l230576CA:
	c.li	a4,00000010
	c.li	a0,00000001
	bne	a5,a4,000000002305770C

l230576D2:
	c.jr	ra

l230576D4:
	c.li	a4,00000013
	c.li	a0,00000002
	beq	a5,a4,0000000023057684

l230576DC:
	c.li	a0,00000001
	bltu	a5,a4,0000000023057684

l230576E2:
	c.li	a4,00000016
	bne	a5,a4,000000002305770C

l230576E8:
	c.jr	ra

l230576EA:
	c.li	a4,0000001D
	c.li	a0,00000005
	beq	a5,a4,0000000023057684

l230576F2:
	bltu	a4,a5,0000000023057718

l230576F6:
	c.li	a4,00000019
	c.li	a0,00000002
	beq	a5,a4,0000000023057684

l230576FE:
	c.li	a0,00000001
	bltu	a5,a4,0000000023057684

l23057704:
	c.li	a4,0000001B
	c.li	a0,00000003

l23057708:
	beq	a5,a4,0000000023057684

l2305770C:
	andi	a5,a5,+00000040
	c.li	a0,00000006
	c.beqz	a5,0000000023057684

l23057714:
	c.li	a0,00000000
	c.jr	ra

l23057718:
	addi	a4,zero,+00000052
	c.li	a0,00000000
	beq	a5,a4,0000000023057684

l23057722:
	addi	a4,zero,+000000D2
	beq	a5,a4,0000000023057684

l2305772A:
	c.li	a4,0000001E
	c.li	a0,00000004
	c.j	0000000023057708

;; att_req_destroy: 23057730
;;   Called from:
;;     23057DB8 (in att_handle_rsp)
;;     23057FD8 (in att_reset)
;;     23058E50 (in bt_att_req_cancel)
att_req_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,16(a0)
	c.beqz	a0,0000000023057740

l2305773C:
	jal	ra,00000000230491C0

l23057740:
	c.lw	s0,8(a5)
	c.beqz	a5,0000000023057748

l23057744:
	c.mv	a0,s0
	c.jalr	a5

l23057748:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; att_notify: 23057758
att_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,0000000023049430
	c.lwsp	a2,00000064
	lhu	a3,a1,+0000000C
	c.lw	a1,8(a2)
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002304DC72
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_foreach_attr: 23057784
;;   Called from:
;;     230586D2 (in att_read_group_req)
;;     230587B2 (in att_read_mult_req)
;;     23058848 (in att_read_rsp)
;;     230589AE (in att_read_type_req)
;;     23058AB8 (in att_find_type_req)
;;     23058B6C (in att_find_info_req)
;;     23058BF6 (in att_write_rsp.constprop.10)
bt_gatt_foreach_attr proc
	c.mv	a6,a3
	c.mv	a5,a2
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	jal	zero,000000002304C4D6

;; read_group_cb: 23057792
read_group_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lw	s3,a1,+00000000
	c.mv	s1,a0
	c.lw	a0,0(a0)
	c.lui	s2,00003000
	c.mv	s0,a1
	addi	a5,s2,-00000800
	c.addi4spn	a1,00000008
	lw	s4,s3,+00000000
	sb	zero,sp,+00000008
	sh	a5,sp,+0000000A
	jal	ra,0000000023052394
	c.beqz	a0,000000002305780E

l230577C4:
	c.lw	s1,0(a0)
	addi	s2,s2,-000007FF
	c.addi4spn	a1,0000000C
	sb	zero,sp,+0000000C
	sh	s2,sp,+0000000E
	jal	ra,0000000023052394
	c.beqz	a0,000000002305780E

l230577DA:
	c.lw	s0,16(a5)
	c.li	a0,00000001
	c.beqz	a5,00000000230577FE

l230577E0:
	lbu	a3,a5,+00000003
	lbu	a2,a5,+00000002
	lhu	a4,s1,+00000010
	c.slli	a3,08
	c.or	a3,a2
	bgeu	a3,a4,00000000230577FE

l230577F4:
	sb	a4,a5,+00000002
	c.srli	a4,00000008
	sb	a4,a5,+00000003

l230577FE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2305780E:
	c.lw	s0,4(a1)
	c.lw	s1,0(a0)
	jal	ra,0000000023052394
	c.beqz	a0,0000000023057820

l23057818:
	sw	zero,s0,+00000010

l2305781C:
	c.li	a0,00000001
	c.j	00000000230577FE

l23057820:
	c.lw	s0,12(a5)
	c.lw	s0,8(a0)
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002305783C

l2305782A:
	lhu	a5,s3,+00000056
	lhu	a3,a0,+0000000C
	c.sub	a5,a3
	bge	a5,a4,000000002305783C

l23057838:
	c.li	a0,00000000
	c.j	00000000230577FE

l2305783C:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,16(a0)
	lhu	a5,s1,+00000010
	c.mv	a1,s1
	andi	a3,a5,+000000FF
	c.srli	a5,00000008
	sb	a3,a0,+00000000
	sb	a5,a0,+00000001
	c.lw	s0,16(a4)
	c.mv	a0,s4
	sb	a5,a4,+00000003
	sb	a3,a4,+00000002
	c.lw	s0,8(a4)
	lhu	a3,s3,+00000056
	lw	a6,s1,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	c.li	a4,00000000
	c.sub	a3,a5
	c.slli	a3,10
	c.srli	a3,00000010
	c.add	a2,a5
	c.jalr	a6
	c.mv	a1,a0
	blt	a0,zero,0000000023057838

l23057888:
	c.lw	s0,12(a3)
	addi	a5,a0,+00000004
	lbu	a4,a3,+00000000
	c.bnez	a4,00000000230578A2

l23057894:
	sb	a5,a3,+00000000

l23057898:
	c.lw	s0,8(a0)
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.j	000000002305781C

l230578A2:
	beq	a4,a5,0000000023057898

l230578A6:
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000000C
	c.addi	a5,FFFFFFFC
	sh	a5,a4,+0000000C
	c.j	0000000023057838

;; read_type_cb: 230578B4
read_type_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s3,a1,+00000000
	c.mv	s2,a0
	c.mv	s0,a1
	c.lw	a0,0(a0)
	c.lw	a1,4(a1)
	lw	s4,s3,+00000000
	c.li	s1,00000001
	jal	ra,0000000023052394
	c.bnez	a0,00000000230578FA

l230578DA:
	c.li	a2,00000015
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002304CA16
	sb	a0,s0,+00000014
	c.mv	s1,a0
	c.beqz	a0,000000002305790C

l230578EC:
	c.lw	s0,12(a5)
	lbu	s1,a5,+00000000
	c.beqz	s1,00000000230578FA

l230578F4:
	sb	zero,s0,+00000014
	c.li	s1,00000000

l230578FA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305790C:
	c.lw	s0,8(a0)
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,16(a0)
	lhu	a5,s2,+00000010
	c.mv	a1,s2
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s0,8(a4)
	lhu	a3,s3,+00000056
	lw	a6,s2,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	c.mv	a0,s4
	c.sub	a3,a5
	c.slli	a3,10
	c.li	a4,00000000
	c.srli	a3,00000010
	c.add	a2,a5
	c.jalr	a6
	c.mv	a1,a0
	bge	a0,zero,0000000023057968

l2305794C:
	addi	a5,a0,+000000FF
	addi	a4,zero,+000000FE
	c.li	a0,0000000E
	bltu	a4,a5,0000000023057962

l2305795A:
	sub	a1,zero,a1
	andi	a0,a1,+000000FF

l23057962:
	sb	a0,s0,+00000014
	c.j	00000000230578FA

l23057968:
	c.lw	s0,12(a3)
	addi	a5,a0,+00000002
	lbu	a4,a3,+00000000
	c.bnez	a4,0000000023057998

l23057974:
	sb	a5,a3,+00000000

l23057978:
	c.lw	s0,8(a0)
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.lw	s0,8(a5)
	lhu	s1,s3,+00000056
	lhu	a5,a5,+0000000C
	c.sub	s1,a5
	c.lw	s0,12(a5)
	lbu	a5,a5,+00000000
	slt	s1,a5,s1
	c.j	00000000230578FA

l23057998:
	beq	a4,a5,0000000023057978

l2305799C:
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000000C
	c.addi	a5,FFFFFFFE
	sh	a5,a4,+0000000C
	c.j	00000000230578FA

;; find_type_cb: 230579AA
find_type_cb proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	lw	s3,a1,+00000000
	c.mv	s1,a0
	c.lw	a0,0(a0)
	c.lui	s2,00003000
	c.mv	s0,a1
	addi	a5,s2,-000007FF
	c.mv	a1,sp
	lw	s4,s3,+00000000
	sb	zero,sp,+00000000
	sh	a5,sp,+00000002
	jal	ra,0000000023052394
	c.beqz	a0,0000000023057A72

l230579DC:
	c.lw	s1,0(a0)
	addi	s2,s2,-00000800
	c.addi4spn	a1,00000004
	sb	zero,sp,+00000004
	sh	s2,sp,+00000006
	jal	ra,0000000023052394
	c.beqz	a0,0000000023057A26

l230579F2:
	c.lw	s0,8(a5)
	c.li	a0,00000001
	c.beqz	a5,0000000023057A16

l230579F8:
	lbu	a3,a5,+00000003
	lbu	a2,a5,+00000002
	lhu	a4,s1,+00000010
	c.slli	a3,08
	c.or	a3,a2
	bgeu	a3,a4,0000000023057A16

l23057A0C:
	sb	a4,a5,+00000002
	c.srli	a4,00000008
	sb	a4,a5,+00000003

l23057A16:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l23057A26:
	c.lw	s0,4(a4)
	lhu	a5,s3,+00000056
	c.li	a0,00000000
	lhu	a4,a4,+0000000C
	c.sub	a5,a4
	c.li	a4,00000003
	bgeu	a4,a5,0000000023057A16

l23057A3A:
	c.lw	s1,4(a5)
	c.li	a4,00000000
	c.li	a3,00000010
	c.addi4spn	a2,00000008
	c.mv	a1,s1
	c.mv	a0,s4
	c.jalr	a5
	c.mv	s2,a0
	blt	a0,zero,0000000023057A72

l23057A4E:
	lbu	a2,s0,+00000010
	c.lw	s0,12(a0)
	beq	a2,s2,0000000023057ACC

l23057A58:
	c.mv	a1,a0
	c.addi4spn	a0,0000002C
	jal	ra,00000000230523FA
	c.bnez	a0,0000000023057A78

l23057A62:
	lbu	a1,s0,+00000010
	lui	a0,000230BD
	addi	a0,a0,+000000C8

l23057A6E:
	jal	ra,0000000023082388

l23057A72:
	sw	zero,s0,+00000008
	c.j	0000000023057AC8

l23057A78:
	andi	a2,s2,+000000FF
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,00000000230523FA
	c.bnez	a0,0000000023057A92

l23057A86:
	lui	a0,000230BD
	c.mv	a1,s2
	addi	a0,a0,+000000EC
	c.j	0000000023057A6E

l23057A92:
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000002C
	jal	ra,0000000023052394

l23057A9A:
	c.bnez	a0,0000000023057A72

l23057A9C:
	c.lw	s0,4(a0)
	sb	zero,s0,+00000011
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,8(a0)
	lhu	a5,s1,+00000010
	andi	a3,a5,+000000FF
	c.srli	a5,00000008
	sb	a3,a0,+00000000
	sb	a5,a0,+00000001
	c.lw	s0,8(a4)
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003

l23057AC8:
	c.li	a0,00000001
	c.j	0000000023057A16

l23057ACC:
	c.addi4spn	a1,00000008
	jal	ra,00000000230A37A4
	c.j	0000000023057A9A

;; find_info_cb: 23057AD4
find_info_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a1,8(a5)
	c.mv	s1,a0
	c.mv	s0,a1
	lw	s2,a1,+00000000
	c.bnez	a5,0000000023057B06

l23057AEA:
	c.lw	a1,4(a0)
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,8(a0)
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	sltu	a5,zero,a5
	c.addi	a5,00000001
	sb	a5,a0,+00000000

l23057B06:
	c.lw	s0,8(a5)
	c.li	a4,00000001
	lbu	a5,a5,+00000000
	beq	a5,a4,0000000023057B60

l23057B12:
	c.li	a4,00000002
	c.li	a0,00000000
	bne	a5,a4,0000000023057BAA

l23057B1A:
	c.lw	s1,0(a4)
	c.li	a0,00000000
	lbu	a4,a4,+00000000
	bne	a4,a5,0000000023057BAA

l23057B26:
	c.lw	s0,4(a0)
	c.li	a1,00000012
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,12(a0)
	lhu	a5,s1,+00000010
	c.li	a2,00000010
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s1,0(a1)
	c.lw	s0,12(a0)
	c.addi	a1,00000001
	c.addi	a0,00000002
	jal	ra,00000000230A382C
	c.lw	s0,4(a5)
	lhu	a0,s2,+00000056
	lhu	a5,a5,+0000000C
	c.sub	a0,a5
	sltiu	a0,a0,+00000013
	c.j	0000000023057BA6

l23057B60:
	c.lw	s1,0(a5)
	c.li	a0,00000000
	lbu	a5,a5,+00000000
	c.bnez	a5,0000000023057BAA

l23057B6A:
	c.lw	s0,4(a0)
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.sw	s0,12(a0)
	lhu	a5,s1,+00000010
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s1,0(a5)
	c.lw	s0,12(a4)
	lhu	a5,a5,+00000002
	sb	a5,a4,+00000002
	c.srli	a5,00000008
	sb	a5,a4,+00000003
	c.lw	s0,4(a5)
	lhu	a0,s2,+00000056
	lhu	a5,a5,+0000000C
	c.sub	a0,a5
	sltiu	a0,a0,+00000005

l23057BA6:
	xori	a0,a0,+00000001

l23057BAA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_att_connected: 23057BB6
bt_att_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000014
	c.mv	s0,a0
	addi	a0,a0,+000000D8
	c.swsp	ra,00000084
	jal	ra,0000000023048A3E
	c.li	a5,00000017
	lui	a1,00023058
	sh	a5,s0,+00000056
	sh	a5,s0,+00000042
	addi	a0,s0,+000000A8
	addi	a1,a1,+0000004C
	jal	ra,0000000023049780
	c.lwsp	a2,00000020
	sw	zero,s0,+000000A0
	sw	zero,s0,+000000A4
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; att_cb.isra.3: 23057BF2
;;   Called from:
;;     23057C58 (in att_send)
;;     23057CF6 (in att_send_req)
;;     230580FE (in bt_att_encrypt_change)
att_cb.isra.3 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023057648
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.li	a5,00000004
	bltu	a5,a0,0000000023057C1E

l23057C0A:
	lui	a5,000230BD
	c.slli	a0,02
	addi	a5,a5,-0000008C
	c.add	a0,a5
	c.lw	a0,0(a0)

l23057C18:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23057C1E:
	lui	a0,00023058
	addi	a0,a0,+00000128
	c.j	0000000023057C18

;; att_send: 23057C28
;;   Called from:
;;     2305818C (in att_pdu_sent)
;;     23058DBC (in bt_att_send)
att_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.lw	a1,8(a5)
	c.mv	s2,a0
	c.mv	s0,a1
	lbu	a4,a5,+00000000
	addi	a5,zero,+000000D2
	c.mv	s3,a3
	bne	a4,a5,0000000023057C54

l23057C48:
	c.swsp	a2,00000084
	jal	ra,0000000023054F42
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023057C78

l23057C54:
	c.bnez	a2,0000000023057C5E

l23057C56:
	c.lw	s0,8(a0)
	jal	ra,0000000023057BF2
	c.mv	a2,a0

l23057C5E:
	c.mv	a3,a2
	c.mv	a2,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.mv	a4,s3
	c.mv	a0,s2
	c.lwsp	t3,00000068
	c.lwsp	zero,00000158
	c.li	a1,00000004
	c.addi16sp	00000030
	jal	zero,0000000023051360

l23057C78:
	lui	a0,000230BD
	addi	a0,a0,-00000014
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; att_send_req: 23057C9A
;;   Called from:
;;     23057D60 (in att_handle_rsp)
;;     23058E1E (in bt_att_req_send)
att_send_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	sw	a1,a0,+0000009C
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a1,00000000
	addi	a0,a0,+000000CC
	jal	ra,0000000023048B5E
	c.lw	s0,16(a1)
	bge	a0,zero,0000000023057CD0

l23057CBA:
	addi	a0,s1,+000000D8
	jal	ra,0000000023048A8A
	c.li	s1,00000000

l23057CC4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23057CD0:
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,00000000230494D6
	c.lwsp	a2,00000064
	sh	a0,s0,+0000000C
	c.lw	s0,16(a0)
	lhu	a5,a1,+0000000C
	sh	a5,s0,+0000000E
	c.lw	s1,0(s1)
	jal	ra,000000002304926E
	c.lw	s0,16(a5)
	c.swsp	a0,00000084
	c.lw	a5,8(a0)
	jal	ra,0000000023057BF2
	c.lwsp	a2,00000084
	c.mv	a3,a0
	c.li	a4,00000000
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,0000000023051360
	c.mv	s1,a0
	c.beqz	a0,0000000023057CC4

l23057D0C:
	c.lw	s0,16(a0)
	jal	ra,00000000230491C0
	sw	zero,s0,+00000010
	c.j	0000000023057CC4

;; att_handle_rsp: 23057D18
;;   Called from:
;;     23057DC6 (in att_handle_find_info_rsp)
;;     23057E8C (in att_error_rsp)
;;     23057F42 (in att_mtu_rsp)
;;     23057FFA (in att_reset)
;;     23058084 (in bt_att_encrypt_change)
att_handle_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,a0,+000000A8
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s1,a3
	jal	ra,000000002304986E
	lw	a5,s0,+0000009C
	c.bnez	a5,0000000023057D74

l23057D3A:
	lui	a0,000230BD
	addi	a0,a0,-00000030
	jal	ra,0000000023082388

l23057D46:
	lw	a1,s0,+000000A0
	c.beqz	a1,0000000023057D64

l23057D4C:
	c.lw	a1,0(a5)
	lw	a4,s0,+000000A4
	sw	a5,s0,+000000A0
	bne	a1,a4,0000000023057D5E

l23057D5A:
	sw	a5,s0,+000000A4

l23057D5E:
	c.mv	a0,s0
	jal	ra,0000000023057C9A

l23057D64:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23057D74:
	lui	a4,00042017
	addi	a4,a4,+00000240
	bne	a5,a4,0000000023057D86

l23057D80:
	sw	zero,s0,+0000009C
	c.j	0000000023057D46

l23057D86:
	c.lw	a5,16(a0)
	c.beqz	a0,0000000023057D96

l23057D8A:
	jal	ra,00000000230491C0
	lw	a5,s0,+0000009C
	sw	zero,a5,+00000010

l23057D96:
	lw	a5,s0,+0000009C
	c.mv	a3,s3
	c.mv	a2,s2
	lw	a6,a5,+00000004
	sw	zero,a5,+00000004
	c.lw	s0,0(a0)
	lw	a4,s0,+0000009C
	c.mv	a1,s1
	c.jalr	a6
	lw	a0,s0,+0000009C
	c.lw	a0,4(a5)
	c.bnez	a5,0000000023057D80

l23057DB8:
	jal	ra,0000000023057730
	c.j	0000000023057D80

;; att_handle_find_info_rsp: 23057DBE
;;   Called from:
;;     23057DCA (in att_handle_find_type_rsp)
;;     23057DCE (in att_handle_read_type_rsp)
;;     23057DD2 (in att_handle_read_rsp)
;;     23057DD6 (in att_handle_read_blob_rsp)
;;     23057DDA (in att_handle_read_mult_rsp)
;;     23057DDE (in att_handle_read_group_rsp)
;;     23057DE2 (in att_handle_write_rsp)
;;     23057DE6 (in att_handle_prepare_write_rsp)
;;     23057DEA (in att_handle_exec_write_rsp)
;;     23057DEE (in att_confirm)
att_handle_find_info_rsp proc
	lhu	a2,a1,+0000000C
	c.lw	a1,8(a1)
	c.li	a3,00000000
	jal	zero,0000000023057D18

;; att_handle_find_type_rsp: 23057DCA
att_handle_find_type_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_read_type_rsp: 23057DCE
att_handle_read_type_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_read_rsp: 23057DD2
att_handle_read_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_read_blob_rsp: 23057DD6
att_handle_read_blob_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_read_mult_rsp: 23057DDA
att_handle_read_mult_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_read_group_rsp: 23057DDE
att_handle_read_group_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_write_rsp: 23057DE2
att_handle_write_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_prepare_write_rsp: 23057DE6
att_handle_prepare_write_rsp proc
	jal	zero,0000000023057DBE

;; att_handle_exec_write_rsp: 23057DEA
att_handle_exec_write_rsp proc
	jal	zero,0000000023057DBE

;; att_confirm: 23057DEE
att_confirm proc
	jal	zero,0000000023057DBE

;; att_error_rsp: 23057DF2
att_error_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lw	a5,a0,+0000009C
	c.mv	s0,a0
	c.beqz	a5,0000000023057E94

l23057E00:
	lui	a4,00042017
	addi	a4,a4,+00000240
	beq	a5,a4,0000000023057E94

l23057E0C:
	c.lw	a5,16(a4)
	c.lw	a1,8(a2)
	c.beqz	a4,0000000023057E24

l23057E12:
	lhu	a1,a5,+0000000C
	c.lw	a4,16(a3)
	c.add	a3,a1
	c.sw	a4,8(a3)
	lhu	a5,a5,+0000000E
	sh	a5,a4,+0000000C

l23057E24:
	lw	a5,s0,+0000009C
	lbu	a3,a2,+00000003
	lbu	a5,a5,+00000014
	c.bnez	a5,0000000023057E80

l23057E32:
	c.li	a5,00000005
	c.lw	s0,0(a0)
	beq	a3,a5,0000000023057E68

l23057E3A:
	c.li	a5,0000000F
	bne	a3,a5,0000000023057E80

l23057E40:
	lbu	a4,a0,+00000009
	c.li	a5,00000001
	bltu	a5,a4,0000000023057E80

l23057E4A:
	c.li	a1,00000002

l23057E4C:
	c.swsp	a3,00000084
	jal	ra,000000002304A69C
	c.lwsp	a2,000000A4
	c.bnez	a0,0000000023057E80

l23057E56:
	lw	a5,s0,+0000009C
	c.li	a4,00000001
	sb	a4,a5,+00000014
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23057E68:
	lbu	a5,a0,+00000009
	c.li	a4,00000001
	bgeu	a4,a5,0000000023057E4A

l23057E72:
	c.li	a4,00000002
	beq	a5,a4,0000000023057E90

l23057E78:
	c.li	a4,00000003
	c.li	a1,00000004
	beq	a5,a4,0000000023057E4C

l23057E80:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023057D18

l23057E90:
	c.li	a1,00000003
	c.j	0000000023057E4C

l23057E94:
	c.li	a3,0000000E
	c.j	0000000023057E80

;; bt_att_accept: 23057E98
bt_att_accept proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042017
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	a4,a5,+00000078
	c.lw	a4,0(a3)
	c.mv	s3,a1
	addi	s1,a5,+00000078
	c.beqz	a3,0000000023057EDA

l23057EB6:
	lw	a5,a4,+000000E4
	c.beqz	a5,0000000023057F1A

l23057EBC:
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+0000002C
	jal	ra,0000000023082388
	c.li	a0,FFFFFFF4

l23057ECC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23057EDA:
	addi	a0,a5,+00000078
	c.li	s0,00000000

l23057EE0:
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	a0,zero,+000000E4
	add	s0,s0,a0
	lui	a5,0004200E
	addi	a5,a5,+00000034
	c.li	a2,0000000A
	c.li	a1,0000000A
	add	s2,s1,s0
	addi	s0,s0,+000000CC
	sw	a5,s2,+00000004
	add	a0,s1,s0
	jal	ra,0000000023048B2A
	c.li	a0,00000000
	sw	s2,s3,+00000000
	c.j	0000000023057ECC

l23057F1A:
	addi	a0,s1,+000000E4
	c.li	s0,00000001
	c.j	0000000023057EE0

;; att_mtu_rsp: 23057F22
att_mtu_rsp proc
	c.mv	a4,a0
	c.mv	a2,a1
	c.beqz	a0,0000000023057F66

l23057F28:
	c.lw	a1,8(a1)
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.slli	a5,08
	c.or	a5,a3
	c.li	a3,00000016
	bltu	a3,a5,0000000023057F46

l23057F3C:
	c.li	a3,00000004
	c.li	a2,00000000
	c.li	a1,00000000

l23057F42:
	jal	zero,0000000023057D18

l23057F46:
	addi	a0,zero,+000000F7
	c.mv	a3,a5
	bgeu	a0,a5,0000000023057F54

l23057F50:
	addi	a3,zero,+000000F7

l23057F54:
	sh	a3,a4,+00000042
	sh	a3,a4,+00000056
	lhu	a2,a2,+0000000C
	c.li	a3,00000000
	c.mv	a0,a4
	c.j	0000000023057F42

l23057F66:
	c.jr	ra

;; att_reset: 23057F68
;;   Called from:
;;     23058006 (in bt_att_disconnected)
;;     23058064 (in att_timeout)
att_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	addi	s1,a0,+000000D8

l23057F78:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023048AE6
	c.bnez	a0,0000000023057FBC

l23057F82:
	c.li	a1,00000004
	addi	a0,s0,+00000098
	jal	ra,0000000023048EBA
	c.li	s1,0000000A
	addi	s2,s0,+000000CC

l23057F92:
	c.mv	a0,s2
	c.addi	s1,FFFFFFFF
	jal	ra,0000000023048B7E
	c.bnez	s1,0000000023057F92

l23057F9C:
	lw	s1,s0,+000000A0
	c.bnez	s1,0000000023057FC2

l23057FA2:
	lw	a5,s0,+0000009C
	sw	zero,s0,+000000A0
	sw	zero,s0,+000000A4
	c.bnez	a5,0000000023057FE8

l23057FB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23057FBC:
	jal	ra,00000000230491C0
	c.j	0000000023057F78

l23057FC2:
	lw	s2,s1,+00000000

l23057FC6:
	c.lw	s1,4(a5)
	c.beqz	a5,0000000023057FD6

l23057FCA:
	c.mv	a4,s1
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,0000000E
	c.li	a0,00000000
	c.jalr	a5

l23057FD6:
	c.mv	a0,s1
	jal	ra,0000000023057730
	beq	s2,zero,0000000023057FA2

l23057FE0:
	c.mv	s1,s2
	lw	s2,s2,+00000000
	c.j	0000000023057FC6

l23057FE8:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a3,0000000E
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023057D18

;; bt_att_disconnected: 23057FFE
bt_att_disconnected proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023057F68
	c.lw	s0,0(a0)
	jal	ra,000000002304DDCE
	lw	a5,s0,+000000B8
	c.beqz	a5,000000002305801E

l23058016:
	addi	a0,s0,+000000A8
	jal	ra,00000000230497D6

l2305801E:
	lw	a5,s0,+000000D8
	c.beqz	a5,0000000023058030

l23058024:
	addi	a0,s0,+000000D8
	jal	ra,0000000023048A92
	sw	zero,s0,+000000D8

l23058030:
	lw	a5,s0,+000000CC
	c.beqz	a5,0000000023058044

l23058036:
	addi	a0,s0,+000000CC
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023048BB0

l23058044:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; att_timeout: 2305804C
att_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230BD
	addi	a0,a0,+0000001C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	addi	a0,s0,-000000A8
	jal	ra,0000000023057F68
	lw	a0,s0,-000000A8
	jal	ra,000000002304DDCE
	c.lwsp	a2,00000020
	sw	zero,s0,+00000F58
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_att_encrypt_change: 2305807C
bt_att_encrypt_change proc
	c.beqz	a1,0000000023058088

l2305807E:
	c.li	a3,00000005
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,0000000023057D18

l23058088:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,0(s1)
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002304DDA4
	lbu	a4,s1,+00000009
	c.li	a5,00000001
	beq	a4,a5,0000000023058118

l230580A6:
	lw	a5,s0,+0000009C
	c.beqz	a5,0000000023058118

l230580AC:
	lbu	a5,a5,+00000014
	c.beqz	a5,0000000023058118

l230580B2:
	addi	s2,s0,+000000CC
	c.li	a1,FFFFFFFF
	c.mv	a0,s2
	jal	ra,0000000023048B5E
	c.lw	s0,0(a5)
	lbu	a4,a5,+0000000D
	c.li	a5,00000004
	bne	a4,a5,00000000230580F4

l230580CA:
	addi	a0,s0,+00000098
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.beqz	a0,00000000230580F4

l230580D8:
	lui	a0,000230BD
	addi	a0,a0,+0000007C
	jal	ra,0000000023082388
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

l230580F4:
	lw	a5,s0,+0000009C
	c.lw	a5,16(a2)
	c.lw	a2,8(a0)
	c.swsp	a2,00000084
	jal	ra,0000000023057BF2
	c.lwsp	a2,00000084
	c.mv	a3,a0
	c.li	a4,00000000
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,0000000023051360
	lw	a5,s0,+0000009C
	sw	zero,a5,+00000010

l23058118:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; att_exec_write_req: 23058124
att_exec_write_req proc
	c.li	a0,00000006
	c.jr	ra

;; att_pdu_sent: 23058128
;;   Called from:
;;     2305822A (in att_req_sent)
;;     2305824C (in att_cfm_sent)
att_pdu_sent proc
	c.addi16sp	FFFFFFD0
	c.li	a1,00000004
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a0
	jal	ra,0000000023051800
	c.mv	s1,a0
	addi	s2,a0,+000000D8

l23058142:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230490A4
	c.mv	a1,a0
	c.bnez	a0,0000000023058162

l2305814E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	addi	a0,s1,+000000CC
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023048B7E

l23058162:
	lw	s0,s1,+0000009C
	c.beqz	s0,0000000023058186

l23058168:
	c.lw	s0,16(a5)
	bne	a5,a1,0000000023058186

l2305816E:
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,00000000230494D6
	c.lwsp	a2,00000064
	sh	a0,s0,+0000000C
	lhu	a5,a1,+0000000C
	sh	a5,s0,+0000000E

l23058186:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a0,s3
	jal	ra,0000000023057C28
	c.bnez	a0,0000000023058142

l23058192:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; att_chan_get: 230581A0
;;   Called from:
;;     23058380 (in bt_att_create_pdu)
;;     23058D46 (in bt_att_get_mtu)
;;     23058D6E (in bt_att_send)
;;     23058DD8 (in bt_att_req_send)
;;     23058E2E (in bt_att_req_cancel)
att_chan_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	beq	a4,a5,00000000230581C0

l230581B0:
	lui	a0,000230B9
	addi	a0,a0,+00000228

l230581B8:
	jal	ra,0000000023082388
	c.li	s0,00000000
	c.j	00000000230581D6

l230581C0:
	c.li	a1,00000004
	jal	ra,0000000023051816
	c.mv	s0,a0
	c.bnez	a0,00000000230581E0

l230581CA:
	lui	a0,000230BD
	addi	a0,a0,-00000078
	jal	ra,0000000023082388

l230581D6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230581E0:
	addi	a0,a0,+00000098
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.beqz	a0,00000000230581D6

l230581EE:
	lui	a0,000230BD
	addi	a0,a0,-00000058
	c.j	00000000230581B8

;; att_req_sent: 230581F8
att_req_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000004
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023051800
	lw	a5,a0,+0000009C
	c.beqz	a5,000000002305821E

l23058210:
	c.lui	a1,00007000
	addi	a1,a1,+00000530
	addi	a0,a0,+000000A8
	jal	ra,00000000230498CA

l2305821E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023058128

;; att_cfm_sent: 2305822E
;;   Called from:
;;     23058250 (in att_rsp_sent)
att_cfm_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000004
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023051800
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023058128

;; att_rsp_sent: 23058250
att_rsp_sent proc
	jal	zero,000000002305822E

;; write_cb: 23058254
write_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s2,00000000
	c.mv	a1,a0
	c.mv	s2,a0
	c.lw	s0,0(a0)
	addi	a2,zero,+0000002A
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,000000002304CA16
	sb	a0,s0,+00000014
	c.li	s1,00000000
	c.bnez	a0,00000000230582C4

l23058276:
	lbu	a5,s0,+00000008
	c.mv	s1,a0
	lw	a6,s2,+00000008
	lhu	a4,s0,+00000012
	lhu	a3,s0,+00000010
	c.lw	s0,12(a2)
	c.lw	s0,0(a0)
	sltiu	a5,a5,+00000001
	c.slli	a5,01
	c.mv	a1,s2
	c.jalr	a6
	blt	a0,zero,00000000230582AA

l2305829A:
	lhu	a5,s0,+00000010
	bne	a0,a5,00000000230582D2

l230582A2:
	sb	zero,s0,+00000014
	c.li	s1,00000001
	c.j	00000000230582C4

l230582AA:
	addi	a4,a0,+000000FF
	addi	a3,zero,+000000FE
	c.li	a5,0000000E
	bltu	a3,a4,00000000230582C0

l230582B8:
	sub	a0,zero,a0
	andi	a5,a0,+000000FF

l230582C0:
	sb	a5,s0,+00000014

l230582C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230582D2:
	c.li	a5,0000000E
	c.j	00000000230582C0

;; read_cb: 230582D6
read_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s4,a1,+00000000
	c.mv	s2,a0
	c.lw	a1,8(a0)
	lw	s3,s4,+00000000
	c.mv	s0,a1
	c.addi	a0,00000008
	c.li	a1,00000000
	jal	ra,00000000230492DE
	c.sw	s0,12(a0)
	sb	zero,s0,+00000010
	c.li	a2,00000015
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,000000002304CA16
	sb	a0,s0,+00000010
	c.li	s1,00000000
	c.bnez	a0,0000000023058356

l23058312:
	c.lw	s0,8(a4)
	lhu	a3,s4,+00000056
	lw	a6,s2,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	lhu	a4,s0,+00000004
	c.sub	a3,a5
	c.slli	a3,10
	c.mv	a1,s2
	c.mv	s1,a0
	c.srli	a3,00000010
	c.add	a2,a5
	c.mv	a0,s3
	c.jalr	a6
	c.mv	a1,a0
	bge	a0,zero,0000000023058368

l2305833C:
	addi	a5,a0,+000000FF
	addi	a4,zero,+000000FE
	c.li	a0,0000000E
	bltu	a4,a5,0000000023058352

l2305834A:
	sub	a1,zero,a1
	andi	a0,a1,+000000FF

l23058352:
	sb	a0,s0,+00000010

l23058356:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23058368:
	c.lw	s0,8(a0)
	c.li	s1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.j	0000000023058356

;; bt_att_create_pdu: 23058374
;;   Called from:
;;     2304BA2C (in gatt_notify)
;;     2304BBA2 (in gatt_indicate)
;;     2304BDDA (in gatt_write_ccc.constprop.21)
;;     2304CBDC (in bt_gatt_exchange_mtu)
;;     2304D23A (in gatt_read_type_rsp)
;;     2304D5EE (in bt_gatt_read)
;;     2304D666 (in bt_gatt_read)
;;     2304D6BE (in bt_gatt_read)
;;     2304D6F0 (in bt_gatt_read)
;;     2304D872 (in bt_gatt_write_without_response_cb)
;;     2304D94A (in bt_gatt_write)
;;     2304D99C (in bt_gatt_write)
;;     2304DA54 (in gatt_prepare_write_rsp)
;;     2305841A (in att_indicate)
;;     23058468 (in att_mtu_req)
;;     230584DC (in send_err_rsp.part.7)
;;     230586A6 (in att_read_group_req)
;;     2305876C (in att_read_mult_req)
;;     23058828 (in att_read_rsp)
;;     2305895A (in att_read_type_req)
;;     23058A90 (in att_find_type_req)
;;     23058B30 (in att_find_info_req)
;;     23058C0E (in att_write_rsp.constprop.10)
bt_att_create_pdu proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.swsp	a2,00000084
	jal	ra,00000000230581A0
	c.mv	s0,a0
	c.beqz	a0,00000000230583A2

l23058388:
	c.lwsp	a2,00000084
	lhu	a1,a0,+00000056
	c.addi	a2,00000001
	bgeu	a1,a2,00000000230583AE

l23058394:
	lui	a0,000230BD
	addi	a0,a0,+00000054
	jal	ra,0000000023082388
	c.li	s0,00000000

l230583A2:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230583AE:
	c.mv	a0,s1
	jal	ra,0000000023057648
	c.li	a5,00000002
	beq	a0,a5,00000000230583C2

l230583BA:
	c.li	a5,00000004
	c.li	a2,FFFFFFFF
	bne	a0,a5,00000000230583C8

l230583C2:
	c.lui	a2,00007000
	addi	a2,a2,+00000530

l230583C8:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002305135A
	c.mv	s0,a0
	c.bnez	a0,00000000230583E4

l230583D4:
	lui	a0,000230BB
	c.mv	a1,s1
	addi	a0,a0,+00000728
	jal	ra,0000000023082388
	c.j	00000000230583A2

l230583E4:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s1,a0,+00000000
	c.j	00000000230583A2

;; att_indicate: 230583F2
att_indicate proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,0000000023049430
	c.lwsp	a2,00000064
	c.lw	a1,8(a2)
	lhu	a3,a1,+0000000C
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002304DC72
	c.li	a2,00000000
	c.li	a1,0000001E
	c.mv	a0,s0
	jal	ra,0000000023058374
	c.beqz	a0,0000000023058434

l23058420:
	lui	a3,00023058
	c.mv	a2,a0
	c.li	a4,00000000
	addi	a3,a3,+0000022E
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023051360

l23058434:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; att_mtu_req: 2305843E
att_mtu_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a1,8(a5)
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.li	a5,00000016
	c.slli	s0,08
	c.or	s0,a4
	bgeu	a5,s0,00000000230584C0

l2305845C:
	lw	s2,a0,+00000000
	c.li	a2,00000002
	c.mv	s1,a0
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023058374
	c.mv	a2,a0
	c.li	a0,0000000E
	c.beqz	a2,00000000230584B4

l23058472:
	c.li	a1,00000002
	addi	a0,a2,+00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
	c.lwsp	a2,00000084
	c.li	a5,FFFFFFF7
	lui	a3,00023058
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,0000000023051360
	addi	a4,zero,+000000F7
	c.mv	a5,s0
	bgeu	a4,s0,00000000230584AA

l230584A6:
	addi	a5,zero,+000000F7

l230584AA:
	sh	a5,s1,+00000042
	sh	a5,s1,+00000056
	c.li	a0,00000000

l230584B4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230584C0:
	c.li	a0,00000004
	c.j	00000000230584B4

;; send_err_rsp.part.7: 230584C4
;;   Called from:
;;     230585F4 (in bt_att_recv)
;;     230586EE (in att_read_group_req)
;;     23058710 (in att_read_group_req)
;;     230587CC (in att_read_mult_req)
;;     23058864 (in att_read_rsp)
;;     23058980 (in att_read_type_req)
;;     23058A5C (in att_find_type_req)
;;     23058B54 (in att_find_info_req)
;;     23058C42 (in att_write_rsp.constprop.10)
send_err_rsp.part.7 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a2
	c.mv	s3,a1
	c.li	a2,00000004
	c.li	a1,00000001
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s2,a3
	jal	ra,0000000023058374
	c.beqz	a0,0000000023058520

l230584E2:
	c.mv	a2,a0
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,00000000230492DE
	sb	s0,a0,+00000001
	c.srli	s0,00000008
	sb	s3,a0,+00000000
	sb	s0,a0,+00000002
	sb	s2,a0,+00000003
	c.lwsp	s0,00000114
	c.lwsp	a2,00000084
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,s1
	c.lwsp	tp,00000134
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.addi16sp	00000030
	jal	zero,0000000023051360

l23058520:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; bt_att_recv: 2305852E
bt_att_recv proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lhu	a5,a1,+0000000C
	c.bnez	a5,0000000023058560

l23058542:
	lui	a0,000230BD
	addi	a0,a0,+0000008C
	jal	ra,0000000023082388

l2305854E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23058560:
	c.mv	s2,a1
	c.mv	s4,a0
	c.li	a1,00000001
	addi	a0,s2,+00000008
	jal	ra,0000000023049400
	lbu	a2,a0,+00000000
	lui	s0,000230BD
	addi	a4,s0,+00000110
	c.mv	s3,a0
	c.li	a5,00000000
	addi	s0,s0,+00000110
	c.li	a3,0000001C

l23058584:
	lbu	a1,a4,+00000000
	bne	a1,a2,00000000230585C4

l2305858C:
	slli	s1,a5,00000003
	add	a5,s0,s1
	lhu	a1,s2,+0000000C
	lbu	a4,a5,+00000001
	bgeu	a1,a4,00000000230585FA

l230585A0:
	lui	a0,000230BC
	addi	a0,a0,-000003E0
	jal	ra,0000000023082388
	c.li	a3,00000004

l230585AE:
	c.add	s0,s1
	lbu	a4,s0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002305854E

l230585BA:
	c.beqz	a3,000000002305854E

l230585BC:
	lbu	a1,s3,+00000000
	c.beqz	a1,000000002305854E

l230585C2:
	c.j	00000000230585EE

l230585C4:
	c.addi	a5,00000001
	c.addi	a4,00000008
	bne	a5,a3,0000000023058584

l230585CC:
	lui	a0,000230BD
	c.mv	a1,a2
	addi	a0,a0,+000000AC
	jal	ra,0000000023082388
	lbu	a1,s3,+00000000
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023057648
	c.lwsp	a2,00000064
	c.beqz	a0,000000002305854E

l230585EA:
	c.li	a3,00000006
	c.beqz	a1,000000002305854E

l230585EE:
	lw	a0,s4,+00000000
	c.li	a2,00000000
	jal	ra,00000000230584C4
	c.j	000000002305854E

l230585FA:
	c.lw	a5,4(a5)
	c.mv	a1,s2
	c.mv	a0,s4
	c.jalr	a5
	c.mv	a3,a0
	c.j	00000000230585AE

;; att_read_group_req: 23058606
att_read_group_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	lbu	a2,a1,+0000000C
	c.li	a5,00000002
	c.addi	a2,FFFFFFFC
	andi	a2,a2,+000000FF
	beq	a2,a5,000000002305862E

l23058626:
	c.li	a5,00000010
	c.li	s1,00000004
	bne	a2,a5,00000000230586F2

l2305862E:
	c.mv	a5,a1
	lw	s5,a0,+00000000
	c.li	a1,00000004
	c.mv	s3,a0
	addi	a0,a5,+00000008
	c.swsp	a2,00000084
	jal	ra,0000000023049400
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	lbu	s2,a0,+00000003
	c.slli	s0,08
	c.or	s0,a5
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	addi	s4,sp,+00000018
	addi	a1,a0,+00000004
	c.slli	s2,08
	c.mv	a0,s4
	or	s2,s2,a5
	jal	ra,00000000230523FA
	c.li	s1,0000000E
	c.beqz	a0,00000000230586F2

l23058670:
	c.beqz	s0,0000000023058708

l23058672:
	beq	s2,zero,0000000023058706

l23058676:
	bltu	s2,s0,0000000023058708

l2305867A:
	c.lui	s1,00003000
	addi	a5,s1,-00000800
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sb	zero,sp,+00000010
	sh	a5,sp,+00000012
	jal	ra,0000000023052394
	c.bnez	a0,0000000023058718

l23058692:
	lw	s5,s3,+00000000
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,00000000230A3A68
	c.li	a2,00000001
	c.li	a1,00000011
	c.mv	a0,s5
	jal	ra,0000000023058374
	c.swsp	a0,00000098
	c.li	s1,0000000E
	c.beqz	a0,00000000230586F2

l230586B0:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	s3,00000094
	c.swsp	s4,00000018
	jal	ra,00000000230492DE
	c.swsp	a0,0000001C
	lui	a2,00023057
	sb	zero,a0,+00000000
	addi	a2,a2,+00000792
	c.addi4spn	a3,0000002C
	c.mv	a1,s2
	c.mv	a0,s0
	c.swsp	zero,0000009C
	jal	ra,0000000023057784
	c.lwsp	s8,000001F4
	c.lwsp	s4,00000194
	lbu	s1,a5,+00000000
	c.bnez	s1,0000000023058732

l230586E0:
	c.mv	a0,a2
	jal	ra,00000000230491C0
	c.li	a3,0000000A
	c.mv	a2,s0
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,00000000230584C4

l230586F2:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.addi16sp	00000060
	c.jr	ra

l23058706:
	c.li	s0,00000000

l23058708:
	c.li	a3,00000001

l2305870A:
	c.mv	a2,s0
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,00000000230584C4

l23058714:
	c.li	s1,00000000
	c.j	00000000230586F2

l23058718:
	addi	s1,s1,-000007FF
	c.addi4spn	a1,00000014
	c.mv	a0,s4
	sb	zero,sp,+00000014
	sh	s1,sp,+00000016
	jal	ra,0000000023052394
	c.beqz	a0,0000000023058692

l2305872E:
	c.li	a3,00000010
	c.j	000000002305870A

l23058732:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s5
	jal	ra,0000000023051360
	c.j	0000000023058714

;; att_read_mult_req: 23058746
att_read_mult_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.lw	a0,0(s0)
	c.li	a2,00000014
	c.mv	s1,a0
	c.mv	s2,a1
	c.addi4spn	a0,0000000C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a2,00000000
	c.li	a1,0000000F
	c.mv	a0,s0
	jal	ra,0000000023058374
	c.swsp	a0,00000088
	c.beqz	a0,00000000230587E4

l23058774:
	c.swsp	s1,00000084
	addi	s4,s2,+00000008
	c.li	s1,00000001
	lui	s5,00023058

l23058780:
	lhu	a5,s2,+0000000C
	bltu	s1,a5,000000002305879E

l23058788:
	c.lwsp	s4,00000084
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023051360
	c.j	00000000230587D0

l2305879E:
	c.mv	a0,s4
	jal	ra,0000000023049430
	c.addi4spn	a3,0000000C
	addi	a2,s5,+000002D6
	c.mv	a1,a0
	c.mv	s3,a0
	sb	s1,sp,+0000001C
	jal	ra,0000000023057784
	lbu	a5,sp,+0000001C
	c.beqz	a5,0000000023058780

l230587BC:
	c.lwsp	s4,00000044
	jal	ra,00000000230491C0
	lbu	a3,sp,+0000001C
	c.mv	a2,s3
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,00000000230584C4

l230587D0:
	c.li	a0,00000000

l230587D2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l230587E4:
	c.li	a0,0000000E
	c.j	00000000230587D2

;; att_read_rsp: 230587E8
;;   Called from:
;;     230588B6 (in att_read_blob_req)
;;     230588CE (in att_read_req)
att_read_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.lw	a0,0(s1)
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	a0,s1
	c.li	a1,00000001
	c.mv	s6,a2
	c.mv	s2,a3
	c.mv	s5,a4
	jal	ra,000000002304DDCA
	c.li	s0,00000012
	c.beqz	a0,000000002305886A

l23058812:
	c.li	s0,00000001
	beq	s2,zero,000000002305886A

l23058818:
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.li	a2,00000000
	c.mv	a1,s6
	c.mv	a0,s1
	jal	ra,0000000023058374
	c.swsp	a0,00000088
	c.beqz	a0,0000000023058894

l23058830:
	lui	a2,00023058
	addi	a2,a2,+000002D6
	c.addi4spn	a3,0000000C
	c.mv	a1,s2
	c.mv	a0,s2
	sb	s0,sp,+0000001C
	c.swsp	s3,00000084
	sh	s5,sp,+00000010
	jal	ra,0000000023057784
	lbu	s0,sp,+0000001C
	c.lwsp	s4,00000084
	c.beqz	s0,0000000023058880

l23058854:
	c.mv	a0,a2
	jal	ra,00000000230491C0
	lbu	a3,sp,+0000001C
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230584C4
	c.li	s0,00000000

l2305886A:
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

l23058880:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,0000000023051360
	c.j	000000002305886A

l23058894:
	c.li	s0,0000000E
	c.j	000000002305886A

;; att_read_blob_req: 23058898
att_read_blob_req proc
	c.lw	a1,8(a5)
	c.li	a1,0000000C
	lbu	a2,a5,+00000002
	lbu	a4,a5,+00000003
	lbu	a3,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a4,08
	c.or	a4,a2
	c.slli	a5,08
	c.or	a3,a5
	c.li	a2,0000000D
	jal	zero,00000000230587E8

;; att_read_req: 230588BA
att_read_req proc
	c.lw	a1,8(a5)
	c.li	a4,00000000
	c.li	a2,0000000B
	lbu	a3,a5,+00000000
	lbu	a5,a5,+00000001
	c.li	a1,0000000A
	c.slli	a5,08
	c.or	a3,a5
	jal	zero,00000000230587E8

;; att_read_type_req: 230588D2
att_read_type_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	lbu	a2,a1,+0000000C
	c.li	a5,00000002
	c.addi	a2,FFFFFFFC
	andi	a2,a2,+000000FF
	beq	a2,a5,00000000230588FA

l230588F2:
	c.li	a5,00000010
	c.li	s1,00000004
	bne	a2,a5,0000000023058962

l230588FA:
	c.mv	a5,a1
	lw	s4,a0,+00000000
	c.li	a1,00000004
	c.mv	s3,a0
	addi	a0,a5,+00000008
	c.swsp	a2,00000084
	jal	ra,0000000023049400
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	lbu	s2,a0,+00000003
	c.slli	s0,08
	c.or	s0,a5
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	addi	s5,sp,+00000014
	addi	a1,a0,+00000004
	c.slli	s2,08
	c.mv	a0,s5
	or	s2,s2,a5
	jal	ra,00000000230523FA
	c.li	s1,0000000E
	c.beqz	a0,0000000023058962

l2305893C:
	c.beqz	s0,0000000023058978

l2305893E:
	beq	s2,zero,0000000023058976

l23058942:
	bltu	s2,s0,0000000023058978

l23058946:
	lw	s4,s3,+00000000
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230A3A68
	c.li	a2,00000001
	c.li	a1,00000009
	c.mv	a0,s4
	jal	ra,0000000023058374
	c.swsp	a0,00000018
	c.bnez	a0,0000000023058988

l23058962:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.addi16sp	00000060
	c.jr	ra

l23058976:
	c.li	s0,00000000

l23058978:
	c.li	a3,00000001

l2305897A:
	c.mv	a2,s0
	c.li	a1,00000008
	c.mv	a0,s4
	jal	ra,00000000230584C4
	c.li	s1,00000000
	c.j	0000000023058962

l23058988:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	s3,00000014
	c.swsp	s5,00000094
	jal	ra,00000000230492DE
	c.swsp	a0,00000098
	lui	a2,00023058
	sb	zero,a0,+00000000
	c.li	a5,0000000A
	addi	a2,a2,-0000074C
	c.addi4spn	a3,00000028
	c.mv	a1,s2
	c.mv	a0,s0
	sb	a5,sp,+0000003C
	jal	ra,0000000023057784
	lbu	s1,sp,+0000003C
	c.lwsp	a6,00000194
	c.beqz	s1,00000000230589C6

l230589BA:
	c.mv	a0,a2
	jal	ra,00000000230491C0
	lbu	a3,sp,+0000003C
	c.j	000000002305897A

l230589C6:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,0000000023051360
	c.j	0000000023058962

;; att_find_type_req: 230589DA
att_find_type_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.mv	s4,a1
	lw	s2,a0,+00000000
	c.mv	s3,a0
	c.li	a1,00000006
	addi	a0,s4,+00000008
	jal	ra,0000000023049400
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,0000000023058A54

l23058A0C:
	lbu	s1,a0,+00000003
	lbu	a5,a0,+00000002
	c.slli	s1,08
	c.or	s1,a5
	c.beqz	s1,0000000023058A52

l23058A1A:
	bltu	s1,s0,0000000023058A54

l23058A1E:
	lbu	a5,a0,+00000005
	lbu	a4,a0,+00000004
	c.addi4spn	a1,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000006
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.addi4spn	a0,00000004
	lw	s5,s4,+00000008
	sb	zero,sp,+00000004
	sb	zero,sp,+00000008
	sh	a5,sp,+0000000A
	jal	ra,0000000023052394
	c.beqz	a0,0000000023058A78

l23058A4E:
	c.li	a3,0000000A
	c.j	0000000023058A56

l23058A52:
	c.li	s0,00000000

l23058A54:
	c.li	a3,00000001

l23058A56:
	c.mv	a2,s0
	c.li	a1,00000006
	c.mv	a0,s2

l23058A5C:
	jal	ra,00000000230584C4
	c.li	s2,00000000

l23058A62:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23058A78:
	lbu	s6,s4,+0000000C
	lw	s4,s3,+00000000
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.li	a2,00000000
	c.li	a1,00000007
	c.mv	a0,s4
	jal	ra,0000000023058374
	c.swsp	a0,00000008
	c.li	s2,0000000E
	c.beqz	a0,0000000023058A62

l23058A9A:
	lui	a2,00023058
	c.li	a5,0000000A
	addi	a2,a2,-00000656
	c.addi4spn	a3,0000000C
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	s3,00000084
	c.swsp	zero,00000088
	c.swsp	s5,0000000C
	sb	s6,sp,+0000001C
	sb	a5,sp,+0000001D
	jal	ra,0000000023057784
	lbu	s2,sp,+0000001D
	c.lwsp	a6,00000084
	beq	s2,zero,0000000023058AD8

l23058AC6:
	c.mv	a0,a2
	jal	ra,00000000230491C0
	lbu	a3,sp,+0000001D
	c.mv	a2,s0
	c.li	a1,00000006
	c.mv	a0,s4
	c.j	0000000023058A5C

l23058AD8:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,0000000023051360
	c.j	0000000023058A62

;; att_find_info_req: 23058AEC
att_find_info_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a1,8(a5)
	lw	s2,a0,+00000000
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	s0,08
	c.or	s0,a4
	c.beqz	s0,0000000023058B4C

l23058B0C:
	lbu	s1,a5,+00000003
	lbu	a4,a5,+00000002
	c.slli	s1,08
	c.or	s1,a4
	c.beqz	s1,0000000023058B4A

l23058B1A:
	bltu	s1,s0,0000000023058B4C

l23058B1E:
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	s3,a0
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.li	a2,00000000
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,0000000023058374
	c.swsp	a0,00000080
	c.li	a5,0000000E
	c.bnez	a0,0000000023058B5C

l23058B3A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23058B4A:
	c.li	s0,00000000

l23058B4C:
	c.li	a3,00000001

l23058B4E:
	c.mv	a2,s0
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,00000000230584C4

l23058B58:
	c.li	a5,00000000
	c.j	0000000023058B3A

l23058B5C:
	lui	a2,00023058
	addi	a2,a2,-0000052C
	c.mv	a3,sp
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	s3,00000000
	jal	ra,0000000023057784
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000084
	c.bnez	a5,0000000023058B80

l23058B76:
	c.mv	a0,a2
	jal	ra,00000000230491C0
	c.li	a3,0000000A
	c.j	0000000023058B4E

l23058B80:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,0000000023051360
	c.j	0000000023058B58

;; att_write_rsp.constprop.10: 23058B94
;;   Called from:
;;     23058C88 (in att_write_req)
;;     23058CB4 (in att_write_cmd)
;;     23058D1E (in att_signed_write_cmd)
att_write_rsp.constprop.10 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.mv	s2,a1
	sltu	a1,zero,a1
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s3,a3
	c.mv	s5,a4
	c.mv	s6,a5
	jal	ra,000000002304DDCA
	c.li	s0,00000012
	c.beqz	a0,0000000023058C18

l23058BBE:
	c.li	s0,00000001
	beq	s3,zero,0000000023058C18

l23058BC4:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	bne	s4,zero,0000000023058C08

l23058BD2:
	lui	a2,00023058
	c.li	a5,00000001
	c.addi4spn	a3,00000008
	addi	a2,a2,+00000254
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	s1,00000004
	sb	s2,sp,+00000010
	sh	zero,sp,+0000001A
	c.swsp	s5,00000088
	sh	s6,sp,+00000018
	sb	a5,sp,+0000001C
	jal	ra,0000000023057784
	lbu	s0,sp,+0000001C
	c.beqz	s0,0000000023058C48

l23058C00:
	bne	s4,zero,0000000023058C2E

l23058C04:
	c.li	s0,00000000
	c.j	0000000023058C18

l23058C08:
	c.li	a2,00000000
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023058374
	c.swsp	a0,00000084
	c.li	s0,0000000E
	c.bnez	a0,0000000023058BD2

l23058C18:
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

l23058C2E:
	c.lwsp	a2,00000044
	jal	ra,00000000230491C0
	beq	s2,zero,0000000023058C04

l23058C38:
	lbu	a3,sp,+0000001C
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230584C4
	c.j	0000000023058C04

l23058C48:
	c.lwsp	a2,00000084
	c.beqz	a2,0000000023058C04

l23058C4C:
	lui	a3,00023058
	c.li	a4,00000000
	addi	a3,a3,+00000250
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,0000000023051360
	c.j	0000000023058C18

;; att_write_req: 23058C60
att_write_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,0000000023049430
	c.lwsp	a2,00000064
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	lhu	a5,a1,+0000000C
	c.lw	a1,8(a4)
	c.lwsp	t3,00000020
	c.li	a2,00000013
	c.li	a1,00000012
	c.addi16sp	00000020
	jal	zero,0000000023058B94

;; att_write_cmd: 23058C8C
att_write_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,0000000023049430
	c.lwsp	a2,00000064
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	lhu	a5,a1,+0000000C
	c.lw	a1,8(a4)
	c.lwsp	t3,00000020
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023058B94

;; att_signed_write_cmd: 23058CB8
att_signed_write_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.lw	a1,8(a5)
	lw	s3,a0,+00000000
	addi	s2,a1,+00000008
	lbu	s0,a5,+00000001
	lbu	a3,a5,+00000000
	c.mv	s1,a1
	c.slli	s0,08
	c.li	a1,00000001
	c.mv	a0,s2
	c.or	s0,a3
	jal	ra,0000000023049382
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023054E72
	c.bnez	a0,0000000023058D22

l23058CEE:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,00000000230493EC
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,00000000230493EC
	lhu	a5,s1,+0000000C
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lw	s1,8(a4)
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi	a5,FFFFFFF4
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023058B94

l23058D22:
	lui	a0,000230BD
	addi	a0,a0,+00000004
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_att_init: 23058D3E
;;   Called from:
;;     2304B766 (in bt_conn_init)
bt_att_init proc
	jal	zero,000000002304C314

;; bt_att_get_mtu: 23058D42
;;   Called from:
;;     2304CA12 (in bt_gatt_get_mtu)
;;     2304D812 (in gatt_read_rsp)
;;     2304D916 (in bt_gatt_write)
;;     2304D922 (in bt_gatt_write)
;;     2304D936 (in bt_gatt_write)
bt_att_get_mtu proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230581A0
	c.beqz	a0,0000000023058D56

l23058D4C:
	lhu	a0,a0,+00000056

l23058D50:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23058D56:
	c.li	a0,00000000
	c.j	0000000023058D50

;; bt_att_send: 23058D5A
;;   Called from:
;;     2304BA7C (in gatt_notify)
;;     2304BB7E (in gatt_send.constprop.28)
;;     2304D8C0 (in bt_gatt_write_without_response_cb)
bt_att_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s0,a1
	c.mv	s2,a2
	jal	ra,00000000230581A0
	c.lwsp	a2,000000A4
	c.bnez	a0,0000000023058D90

l23058D76:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	addi	s0,zero,-00000039

l23058D80:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23058D90:
	c.mv	s1,a0
	bne	s2,zero,0000000023058DB6

l23058D96:
	c.li	a1,00000000
	addi	a0,a0,+000000CC
	c.swsp	a3,00000084
	jal	ra,0000000023048B5E
	c.lwsp	a2,000000A4
	bge	a0,zero,0000000023058DB6

l23058DA8:
	c.mv	a1,s0
	addi	a0,s1,+000000D8
	jal	ra,0000000023048A8A
	c.li	s0,00000000
	c.j	0000000023058D80

l23058DB6:
	c.mv	a1,s0
	c.mv	a2,s2
	c.mv	a0,s3
	jal	ra,0000000023057C28
	c.mv	s0,a0
	c.beqz	a0,0000000023058D80

l23058DC4:
	bne	s2,zero,0000000023058D80

l23058DC8:
	addi	a0,s1,+000000CC
	jal	ra,0000000023048B7E
	c.j	0000000023058D80

;; bt_att_req_send: 23058DD2
;;   Called from:
;;     2304BB5C (in gatt_send.constprop.28)
bt_att_req_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	jal	ra,00000000230581A0
	c.lwsp	a2,00000064
	c.bnez	a0,0000000023058DF6

l23058DE0:
	c.lw	a1,16(a0)
	jal	ra,00000000230491C0
	c.lwsp	a2,00000064
	addi	a0,zero,-00000039
	sw	zero,a1,+00000010

l23058DF0:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23058DF6:
	lw	a4,a0,+0000009C
	c.beqz	a4,0000000023058E1A

l23058DFC:
	sw	zero,a1,+00000000
	lw	a4,a0,+000000A4
	c.bnez	a4,0000000023058E12

l23058E06:
	sw	a1,a0,+000000A4
	sw	a1,a0,+000000A0

l23058E0E:
	c.li	a0,00000000
	c.j	0000000023058DF0

l23058E12:
	c.sw	a4,0(a1)
	sw	a1,a0,+000000A4
	c.j	0000000023058E0E

l23058E1A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023057C9A

;; bt_att_req_cancel: 23058E22
;;   Called from:
;;     2304DC04 (in bt_gatt_unsubscribe)
bt_att_req_cancel proc
	c.beqz	a0,0000000023058E98

l23058E24:
	c.beqz	a1,0000000023058E98

l23058E26:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230581A0
	c.beqz	a0,0000000023058E90

l23058E34:
	lw	a5,a0,+0000009C
	bne	a5,s0,0000000023058E54

l23058E3C:
	lui	a5,00042017
	addi	a5,a5,+00000240
	sw	a5,a0,+0000009C

l23058E48:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023057730

l23058E54:
	lw	a5,a0,+000000A0
	c.li	a4,00000000

l23058E5A:
	c.beqz	a5,0000000023058E48

l23058E5C:
	bne	s0,a5,0000000023058E8A

l23058E60:
	c.lw	s0,0(a5)
	c.bnez	a4,0000000023058E7A

l23058E64:
	lw	a4,a0,+000000A4
	sw	a5,a0,+000000A0
	bne	s0,a4,0000000023058E74

l23058E70:
	sw	a5,a0,+000000A4

l23058E74:
	sw	zero,s0,+00000000
	c.j	0000000023058E48

l23058E7A:
	c.sw	a4,0(a5)
	lw	a5,a0,+000000A4
	bne	s0,a5,0000000023058E74

l23058E84:
	sw	a4,a0,+000000A4
	c.j	0000000023058E74

l23058E8A:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	0000000023058E5A

l23058E90:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23058E98:
	c.jr	ra

;; fdt32_ld: 23058E9A
;;   Called from:
;;     23058F30 (in fdt_get_property_by_offset_)
;;     23058F3E (in fdt_get_property_by_offset_)
;;     23058F5A (in fdt_get_string)
;;     23058F6C (in fdt_get_string)
;;     23058F7A (in fdt_get_string)
;;     23058F92 (in fdt_get_string)
;;     23058FA0 (in fdt_get_string)
;;     23058FEA (in fdt_get_string)
;;     2305902C (in fdt_get_name)
;;     23059048 (in fdt_get_name)
;;     230591D8 (in fdt_get_property_namelen_)
;;     2305923C (in fdt_getprop_namelen)
;;     23059252 (in fdt_getprop_namelen)
fdt32_ld proc
	lbu	a5,a0,+00000000
	lbu	a4,a0,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.or	a5,a4
	lbu	a4,a0,+00000003
	lbu	a0,a0,+00000002
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; nextprop_.part.0: 23058EB8
;;   Called from:
;;     23059166 (in fdt_first_property_offset)
;;     2305918A (in fdt_next_property_offset)
nextprop_.part.0 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s0,a1
	c.li	s3,00000003
	c.li	s4,00000009
	c.li	s1,00000004

l23058ED0:
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.mv	a0,s2
	c.jal	0000000023059458
	beq	a0,s3,0000000023058EF0

l23058EDC:
	c.lwsp	a2,00000004
	bne	a0,s4,0000000023058EEA

l23058EE2:
	blt	s0,zero,0000000023058EF0

l23058EE6:
	c.li	s0,FFFFFFF5
	c.j	0000000023058EF0

l23058EEA:
	beq	a0,s1,0000000023058ED0

l23058EEE:
	c.li	s0,FFFFFFFF

l23058EF0:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; fdt_get_property_by_offset_: 23058F02
;;   Called from:
;;     230591CE (in fdt_get_property_namelen_)
fdt_get_property_by_offset_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.jal	000000002305958E
	bge	a0,zero,0000000023058F2C

l23058F18:
	c.li	s0,00000000
	c.beqz	s1,0000000023058F1E

l23058F1C:
	c.sw	s1,0(a0)

l23058F1E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23058F2C:
	addi	a0,s0,+00000008
	jal	ra,0000000023058E9A
	c.add	a0,s2
	c.add	s0,a0
	c.beqz	s1,0000000023058F1E

l23058F3A:
	addi	a0,s0,+00000004
	jal	ra,0000000023058E9A
	c.j	0000000023058F1C

;; fdt_get_string: 23058F44
;;   Called from:
;;     230591E2 (in fdt_get_property_namelen_)
fdt_get_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.addi	a0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.mv	s4,a2
	jal	ra,0000000023058E9A
	c.mv	s3,a0
	c.mv	a0,s0
	c.jal	0000000023059380
	c.bnez	a0,0000000023059004

l23058F66:
	addi	a0,s0,+00000004
	c.add	s3,s1
	jal	ra,0000000023058E9A
	bgeu	s3,a0,0000000023059010

l23058F74:
	sub	s2,a0,s3
	c.mv	a0,s0
	jal	ra,0000000023058E9A
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,0000000023058FD6

l23058F8A:
	blt	s1,zero,0000000023059010

l23058F8E:
	addi	a0,s0,+00000014
	jal	ra,0000000023058E9A
	c.li	a5,00000010
	bgeu	a5,a0,0000000023058FB0

l23058F9C:
	addi	a0,s0,+00000020
	jal	ra,0000000023058E9A
	bgeu	s1,a0,0000000023059010

l23058FA8:
	c.sub	a0,s1
	bgeu	a0,s2,0000000023058FB0

l23058FAE:
	c.mv	s2,a0

l23058FB0:
	c.add	s0,s3
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A36C8
	c.beqz	a0,0000000023059014

l23058FBE:
	c.sub	a0,s0
	bne	s4,zero,000000002305900A

l23058FC4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23058FD6:
	lui	a5,0002FF20
	addi	a5,a5,+00000112
	bne	a0,a5,0000000023059002

l23058FE2:
	bge	s1,zero,0000000023059010

l23058FE6:
	addi	a0,s0,+00000020
	jal	ra,0000000023058E9A
	sub	a0,zero,a0
	bltu	s1,a0,0000000023059010

l23058FF6:
	sub	s1,zero,s1
	bgeu	s1,s2,0000000023058FB0

l23058FFE:
	c.mv	s2,s1
	c.j	0000000023058FB0

l23059002:
	c.li	a0,FFFFFFF3

l23059004:
	c.li	s0,00000000
	beq	s4,zero,0000000023058FC4

l2305900A:
	sw	a0,s4,+00000000
	c.j	0000000023058FC4

l23059010:
	c.li	a0,FFFFFFFC
	c.j	0000000023059004

l23059014:
	c.li	a0,FFFFFFF8
	c.j	0000000023059004

;; fdt_get_name: 23059018
;;   Called from:
;;     230590CC (in fdt_subnode_offset_namelen)
fdt_get_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s2,a2
	jal	ra,0000000023058E9A
	c.mv	s3,a0
	c.mv	a0,s1
	c.jal	0000000023059380
	c.bnez	a0,0000000023059078

l23059038:
	c.mv	a1,s0
	c.mv	a0,s1
	c.jal	0000000023059566
	blt	a0,zero,0000000023059078

l23059042:
	addi	a0,s1,+00000014
	c.add	s0,s3
	jal	ra,0000000023058E9A
	c.add	s0,s1
	c.li	a5,0000000F
	c.addi	s0,00000004
	bltu	a5,a0,0000000023059066

l23059056:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,00000000230A44AC
	c.beqz	a0,0000000023059076

l23059062:
	addi	s0,a0,+00000001

l23059066:
	beq	s2,zero,000000002305907E

l2305906A:
	c.mv	a0,s0
	jal	ra,00000000230A4220

l23059070:
	sw	a0,s2,+00000000
	c.j	000000002305907E

l23059076:
	c.li	a0,FFFFFFF5

l23059078:
	c.li	s0,00000000
	bne	s2,zero,0000000023059070

l2305907E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; fdt_subnode_offset_namelen: 2305908E
;;   Called from:
;;     2305914A (in fdt_subnode_offset)
fdt_subnode_offset_namelen proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.mv	s3,a0
	c.swsp	a1,00000084
	c.mv	s4,a2
	c.mv	s2,a3
	c.jal	0000000023059380
	c.mv	s0,a0
	c.bnez	a0,0000000023059116

l230590AC:
	c.lwsp	a2,00000064
	c.swsp	zero,0000000C
	c.li	s5,00000001
	c.mv	s0,a1

l230590B4:
	c.lwsp	s8,000000E4
	blt	s0,zero,0000000023059112

l230590BA:
	bge	a5,zero,00000000230590C2

l230590BE:
	c.li	s0,FFFFFFFF
	c.j	0000000023059116

l230590C2:
	bne	a5,s5,0000000023059106

l230590C6:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023059018
	c.mv	s1,a0
	c.beqz	a0,0000000023059106

l230590D4:
	c.lwsp	t3,000000E4
	blt	a5,s2,0000000023059106

l230590DA:
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023059106

l230590E4:
	c.add	s1,s2
	lbu	a5,s1,+00000000
	c.beqz	a5,0000000023059116

l230590EC:
	c.mv	a2,s2
	addi	a1,zero,+00000040
	c.mv	a0,s4
	jal	ra,00000000230A36C8
	c.bnez	a0,0000000023059106

l230590FA:
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000040
	beq	a4,a5,0000000023059116

l23059106:
	c.mv	a1,s0
	c.addi4spn	a2,00000018
	c.mv	a0,s3
	c.jal	00000000230595B6
	c.mv	s0,a0
	c.j	00000000230590B4

l23059112:
	blt	a5,zero,00000000230590BE

l23059116:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; fdt_subnode_offset: 2305912A
;;   Called from:
;;     23000A74 (in aos_loop_proc)
;;     23000AA4 (in aos_loop_proc)
;;     23059D00 (in tc_fdt_wifi_module)
;;     23059D50 (in tc_fdt_wifi_module)
;;     23059DD8 (in tc_fdt_wifi_module)
;;     23059EB8 (in tc_fdt_wifi_module)
;;     2305A08A (in tc_fdt_wifi_module)
;;     23066854 (in vfs_uart_init)
;;     23066B34 (in vfs_uart_init)
;;     23066CA6 (in vfs_uart_init)
;;     23066DD4 (in vfs_uart_init)
;;     23067106 (in hal_gpio_init_from_dts)
;;     23067CF6 (in hal_board_cfg)
;;     23067D54 (in hal_board_cfg)
;;     2306817E (in hal_board_cfg)
;;     2306860A (in hal_board_cfg)
;;     2306869E (in hal_board_cfg)
;;     230692A6 (in hal_board_cfg)
;;     23069372 (in hal_board_cfg)
;;     2306943A (in hal_board_cfg)
;;     23069496 (in hal_board_cfg)
fdt_subnode_offset proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,00000000230A4220
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002305908E

;; fdt_first_property_offset: 2305914E
;;   Called from:
;;     230591B2 (in fdt_get_property_namelen_)
fdt_first_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	0000000023059566
	blt	a0,zero,000000002305916A

l2305915C:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023058EB8

l2305916A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_next_property_offset: 23059172
;;   Called from:
;;     230591EC (in fdt_get_property_namelen_)
fdt_next_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	000000002305958E
	blt	a0,zero,000000002305918E

l23059180:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023058EB8

l2305918E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_get_property_namelen_: 23059196
;;   Called from:
;;     23059230 (in fdt_getprop_namelen)
fdt_get_property_namelen_ proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s6,a2
	c.mv	s4,a3
	c.mv	s2,a4
	c.mv	s5,a5
	jal	ra,000000002305914E

l230591B6:
	c.mv	s0,a0
	bge	a0,zero,00000000230591C8

l230591BC:
	c.li	s1,00000000
	beq	s2,zero,000000002305920A

l230591C2:
	sw	s0,s2,+00000000
	c.j	000000002305920A

l230591C8:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023058F02
	c.mv	s1,a0
	c.beqz	a0,0000000023059220

l230591D6:
	c.addi	a0,00000008
	jal	ra,0000000023058E9A
	c.mv	a1,a0
	c.addi4spn	a2,0000000C
	c.mv	a0,s3
	jal	ra,0000000023058F44
	c.bnez	a0,00000000230591F2

l230591E8:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023059172
	c.j	00000000230591B6

l230591F2:
	c.lwsp	a2,000000E4
	bne	s4,a5,00000000230591E8

l230591F8:
	c.mv	a2,s4
	c.mv	a1,s6
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230591E8

l23059202:
	beq	s5,zero,000000002305920A

l23059206:
	sw	s0,s5,+00000000

l2305920A:
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

l23059220:
	c.li	s0,FFFFFFF3
	c.j	00000000230591BC

;; fdt_getprop_namelen: 23059224
;;   Called from:
;;     23059292 (in fdt_getprop)
fdt_getprop_namelen proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a5,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,0000000023059196
	c.mv	s0,a0
	c.beqz	a0,000000002305925E

l23059238:
	addi	a0,s1,+00000014
	jal	ra,0000000023058E9A
	c.li	a5,0000000F
	bltu	a5,a0,000000002305926A

l23059246:
	c.lwsp	a2,000000E4
	c.addi	a5,0000000C
	c.andi	a5,00000007
	c.beqz	a5,000000002305926A

l2305924E:
	addi	a0,s0,+00000004
	jal	ra,0000000023058E9A
	c.li	a5,00000007
	bgeu	a5,a0,000000002305926A

l2305925C:
	c.addi	s0,00000010

l2305925E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305926A:
	c.addi	s0,0000000C
	c.j	000000002305925E

;; fdt_getprop: 2305926E
;;   Called from:
;;     230592A2 (in fdt_stringlist_count)
;;     230592F2 (in fdt_stringlist_get)
;;     23059D68 (in tc_fdt_wifi_module)
;;     23059DF2 (in tc_fdt_wifi_module)
;;     23059E5C (in tc_fdt_wifi_module)
;;     23059FB6 (in tc_fdt_wifi_module)
;;     2305A0A4 (in tc_fdt_wifi_module)
;;     2305A102 (in tc_fdt_wifi_module)
;;     2305A31A (in tc_fdt_wifi_module)
;;     2305A3AE (in tc_fdt_wifi_module)
;;     2305A442 (in tc_fdt_wifi_module)
;;     23066A74 (in vfs_uart_init)
;;     23066ADA (in vfs_uart_init)
;;     23066B9C (in vfs_uart_init)
;;     23066BEA (in vfs_uart_init)
;;     23066F30 (in vfs_uart_init)
;;     23067058 (in hal_gpio_init_from_dts)
;;     2306723C (in hal_gpio_init_from_dts)
;;     23067392 (in hal_gpio_init_from_dts)
;;     23067EC6 (in hal_board_cfg)
;;     23067FDE (in hal_board_cfg)
;;     23068074 (in hal_board_cfg)
;;     2306810C (in hal_board_cfg)
;;     23068620 (in hal_board_cfg)
;;     230686B6 (in hal_board_cfg)
;;     23068750 (in hal_board_cfg)
;;     23068804 (in hal_board_cfg)
;;     23068A26 (in hal_board_cfg)
;;     23068A52 (in hal_board_cfg)
;;     23068E3A (in hal_board_cfg)
;;     230692EE (in hal_board_cfg)
;;     230693BA (in hal_board_cfg)
;;     230694AC (in hal_board_cfg)
fdt_getprop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,00000000230A4220
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,000000C4
	c.lwsp	tp,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023059224

;; fdt_stringlist_count: 23059296
;;   Called from:
;;     23059ED0 (in tc_fdt_wifi_module)
;;     23059F42 (in tc_fdt_wifi_module)
;;     2305A024 (in tc_fdt_wifi_module)
;;     230668B4 (in vfs_uart_init)
;;     2306697C (in vfs_uart_init)
;;     23066D08 (in vfs_uart_init)
;;     23067D6E (in hal_board_cfg)
;;     23068196 (in hal_board_cfg)
;;     230688B8 (in hal_board_cfg)
;;     230692BC (in hal_board_cfg)
;;     230692D4 (in hal_board_cfg)
;;     23069388 (in hal_board_cfg)
;;     230693A0 (in hal_board_cfg)
fdt_stringlist_count proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a3,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002305926E
	c.lwsp	a2,00000004
	c.beqz	a0,00000000230592B6

l230592AA:
	add	s2,a0,s0
	c.mv	s1,a0
	c.li	s0,00000000

l230592B2:
	bltu	s1,s2,00000000230592C4

l230592B6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230592C4:
	sub	a1,s2,s1
	c.mv	a0,s1
	jal	ra,00000000230A4468
	c.addi	a0,00000001
	c.swsp	a0,00000084
	c.add	s1,a0
	bltu	s2,s1,00000000230592DC

l230592D8:
	c.addi	s0,00000001
	c.j	00000000230592B2

l230592DC:
	c.li	s0,FFFFFFF1
	c.j	00000000230592B6

;; fdt_stringlist_get: 230592E0
;;   Called from:
;;     23059EFA (in tc_fdt_wifi_module)
;;     23059F6C (in tc_fdt_wifi_module)
;;     2305A042 (in tc_fdt_wifi_module)
;;     23066916 (in vfs_uart_init)
;;     23066A14 (in vfs_uart_init)
;;     23066D64 (in vfs_uart_init)
;;     230671A2 (in hal_gpio_init_from_dts)
;;     230672F0 (in hal_gpio_init_from_dts)
;;     23067324 (in hal_gpio_init_from_dts)
;;     2306735E (in hal_gpio_init_from_dts)
;;     23067D84 (in hal_board_cfg)
;;     230681AC (in hal_board_cfg)
;;     230688D0 (in hal_board_cfg)
;;     23069552 (in hal_board_cfg)
;;     230695DA (in hal_board_cfg)
;;     230696BC (in hal_board_cfg)
;;     23069744 (in hal_board_cfg)
fdt_stringlist_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a3
	c.addi4spn	a3,0000000C
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a4
	jal	ra,000000002305926E
	c.mv	s0,a0
	c.bnez	a0,0000000023059314

l230592FA:
	c.bnez	s1,0000000023059300

l230592FC:
	c.li	s0,00000000
	c.j	0000000023059304

l23059300:
	c.lwsp	a2,000000E4
	c.sw	s1,0(a5)

l23059304:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23059314:
	c.lwsp	a2,00000048
	c.add	s2,a0

l23059318:
	bltu	s0,s2,0000000023059322

l2305931C:
	c.beqz	s1,00000000230592FC

l2305931E:
	c.li	a5,FFFFFFFF
	c.j	000000002305933C

l23059322:
	sub	a1,s2,s0
	c.mv	a0,s0
	jal	ra,00000000230A4468
	addi	a5,a0,+00000001
	c.swsp	a5,00000084
	c.add	a5,s0
	bgeu	s2,a5,0000000023059340

l23059338:
	c.li	a5,FFFFFFF1
	c.beqz	s1,00000000230592FC

l2305933C:
	c.sw	s1,0(a5)
	c.j	00000000230592FC

l23059340:
	bne	s3,zero,000000002305934A

l23059344:
	c.beqz	s1,0000000023059304

l23059346:
	c.sw	s1,0(a0)
	c.j	0000000023059304

l2305934A:
	c.addi	s3,FFFFFFFF
	c.mv	s0,a5
	c.j	0000000023059318

;; blfdt: 23059350
blfdt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305A532
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023059846

;; blfdt_cli_init: 2305935E
;;   Called from:
;;     23000B18 (in aos_loop_proc)
blfdt_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; fdt32_ld: 23059362
;;   Called from:
;;     23059388 (in fdt_ro_probe_)
;;     2305939C (in fdt_ro_probe_)
;;     230593AC (in fdt_ro_probe_)
;;     230593D6 (in fdt_ro_probe_)
;;     230593F8 (in fdt_offset_ptr)
;;     23059414 (in fdt_offset_ptr)
;;     23059422 (in fdt_offset_ptr)
;;     23059438 (in fdt_offset_ptr)
fdt32_ld proc
	lbu	a5,a0,+00000000
	lbu	a4,a0,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.or	a5,a4
	lbu	a4,a0,+00000003
	lbu	a0,a0,+00000002
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; fdt_ro_probe_: 23059380
;;   Called from:
;;     23058F62 (in fdt_get_string)
;;     23059034 (in fdt_get_name)
;;     230590A6 (in fdt_subnode_offset_namelen)
fdt_ro_probe_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023059362
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,00000000230593C4

l23059398:
	addi	a0,s0,+00000014
	jal	ra,0000000023059362
	c.li	a4,00000001
	c.li	a5,FFFFFFF6
	bgeu	a4,a0,00000000230593BA

l230593A8:
	addi	a0,s0,+00000018
	jal	ra,0000000023059362
	c.li	a4,00000011
	c.li	a5,00000000
	bgeu	a4,a0,00000000230593BA

l230593B8:
	c.li	a5,FFFFFFF6

l230593BA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230593C4:
	lui	a4,0002FF20
	addi	a4,a4,+00000112
	c.li	a5,FFFFFFF7
	bne	a0,a4,00000000230593BA

l230593D2:
	addi	a0,s0,+00000024
	jal	ra,0000000023059362
	c.li	a5,00000000
	c.bnez	a0,00000000230593BA

l230593DE:
	c.li	a5,FFFFFFF9
	c.j	00000000230593BA

;; fdt_offset_ptr: 230593E2
;;   Called from:
;;     23059476 (in fdt_next_tag)
fdt_offset_ptr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.addi	a0,00000008
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.swsp	s4,00000004
	c.mv	s1,a2
	jal	ra,0000000023059362
	add	s2,a0,s3
	c.li	a5,00000000
	bltu	s2,s3,0000000023059446

l23059406:
	add	s4,s2,s1
	c.li	a5,00000000
	bltu	s4,s2,0000000023059446

l23059410:
	addi	a0,s0,+00000004
	jal	ra,0000000023059362
	c.li	a5,00000000
	bltu	a0,s4,0000000023059446

l2305941E:
	addi	a0,s0,+00000014
	jal	ra,0000000023059362
	c.li	a5,00000010
	bgeu	a5,a0,0000000023059442

l2305942C:
	c.add	s1,s3
	c.li	a5,00000000
	bltu	s1,s3,0000000023059446

l23059434:
	addi	a0,s0,+00000024
	jal	ra,0000000023059362
	c.li	a5,00000000
	bltu	a0,s1,0000000023059446

l23059442:
	add	a5,s0,s2

l23059446:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; fdt_next_tag: 23059458
;;   Called from:
;;     23058ED6 (in nextprop_.part.0)
;;     23059580 (in fdt_check_node_offset_)
;;     230595A8 (in fdt_check_prop_offset_)
;;     230595DE (in fdt_next_node)
fdt_next_tag proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,FFFFFFF8
	c.mv	s2,a2
	c.sw	a2,0(a5)
	c.li	a2,00000004
	c.mv	s3,a0
	c.mv	s4,a1
	jal	ra,00000000230593E2
	c.bnez	a0,0000000023059480

l2305947C:
	c.li	s1,00000009
	c.j	00000000230594F4

l23059480:
	c.lw	a0,0(a5)
	addi	s0,s4,+00000004
	srli	a4,a5,00000018
	slli	s1,a5,00000018
	c.or	s1,a4
	srli	a4,a5,00000008
	andi	a4,a4,+000000FF
	c.srli	a5,00000010
	c.slli	a4,10
	andi	a5,a5,+000000FF
	c.or	s1,a4
	c.slli	a5,08
	c.or	s1,a5
	c.li	a5,FFFFFFF5
	sw	a5,s2,+00000000
	c.li	a4,00000008
	addi	a5,s1,-00000001
	bltu	a4,a5,000000002305947C

l230594B6:
	lui	a4,000230BD
	c.slli	a5,02
	addi	a4,a4,+000001F8
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
230594C6                   05 46 A2 85 4E 85 93 0A 14 00       .F..N.....
230594D0 EF F0 3F F1 45 D5 83 47 05 00 56 84 ED F7 33 06 ..?.E..G..V...3.
230594E0 44 41 D2 85 4E 85 EF F0 DF EF 49 D9 0D 04 71 98 DA..N.....I...q.
230594F0 23 20 89 00                                     # ..           

l230594F4:
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
2305950A                               11 46 A2 85 4E 85           .F..N.
23059510 EF F0 3F ED 25 D5 1C 41 13 85 49 01 13 0B CA 00 ..?.%..A..I.....
23059520 13 D7 87 01 93 9A 87 01 B3 EA EA 00 13 D7 87 00 ................
23059530 13 77 F7 0F C1 83 42 07 93 F7 F7 0F A2 07 B3 EA .w....B.........
23059540 EA 00 B3 EA FA 00 EF F0 DF E1 BD 47 33 04 5B 01 ...........G3.[.
23059550 E3 E7 A7 F8 9D 47 E3 F4 57 F9 13 7B 7B 00 E3 00 .....G..W..{{...
23059560 0B F8 11 04 AD BF                               ......         

;; fdt_check_node_offset_: 23059566
;;   Called from:
;;     2305903C (in fdt_get_name)
;;     23059156 (in fdt_first_property_offset)
;;     230595F8 (in fdt_next_node)
fdt_check_node_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,0000000023059578

l23059570:
	c.li	a0,FFFFFFFC

l23059572:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23059578:
	andi	a5,a1,+00000003
	c.bnez	a5,0000000023059570

l2305957E:
	c.addi4spn	a2,0000000C
	jal	ra,0000000023059458
	c.li	a5,00000001
	bne	a0,a5,0000000023059570

l2305958A:
	c.lwsp	a2,00000044
	c.j	0000000023059572

;; fdt_check_prop_offset_: 2305958E
;;   Called from:
;;     23058F12 (in fdt_get_property_by_offset_)
;;     2305917A (in fdt_next_property_offset)
fdt_check_prop_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,00000000230595A0

l23059598:
	c.li	a0,FFFFFFFC

l2305959A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l230595A0:
	andi	a5,a1,+00000003
	c.bnez	a5,0000000023059598

l230595A6:
	c.addi4spn	a2,0000000C
	jal	ra,0000000023059458
	c.li	a5,00000003
	bne	a0,a5,0000000023059598

l230595B2:
	c.lwsp	a2,00000044
	c.j	000000002305959A

;; fdt_next_node: 230595B6
;;   Called from:
;;     2305910C (in fdt_subnode_offset_namelen)
fdt_next_node proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	zero,00000084
	c.mv	s2,a0
	c.mv	s1,a2
	bge	a1,zero,00000000230595F8

l230595D0:
	c.li	s3,00000002
	c.li	s4,00000009
	c.li	s5,00000001

l230595D6:
	c.lwsp	a2,00000004
	c.addi4spn	a2,0000000C
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023059458
	beq	a0,s3,0000000023059618

l230595E6:
	beq	a0,s4,0000000023059628

l230595EA:
	bne	a0,s5,00000000230595D6

l230595EE:
	c.beqz	s1,0000000023059604

l230595F0:
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.j	0000000023059604

l230595F8:
	jal	ra,0000000023059566
	c.swsp	a0,00000084
	c.mv	s0,a0
	bge	a0,zero,00000000230595D0

l23059604:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23059618:
	c.beqz	s1,00000000230595D6

l2305961A:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	bge	a5,zero,00000000230595D6

l23059624:
	c.lwsp	a2,00000004
	c.j	0000000023059604

l23059628:
	c.lwsp	a2,00000004
	bge	s0,zero,0000000023059636

l2305962E:
	c.li	a5,FFFFFFF8
	bne	s0,a5,0000000023059604

l23059634:
	c.bnez	s1,0000000023059604

l23059636:
	c.li	s0,FFFFFFFF
	c.j	0000000023059604

;; fdt32_to_cpu: 2305963A
;;   Called from:
;;     230597C6 (in utilfdt_print_data)
;;     230598F0 (in tc_blfdtdump)
;;     230598F8 (in tc_blfdtdump)
;;     23059904 (in tc_blfdtdump)
;;     2305990C (in tc_blfdtdump)
;;     23059914 (in tc_blfdtdump)
;;     23059928 (in tc_blfdtdump)
;;     23059984 (in tc_blfdtdump)
;;     2305999E (in tc_blfdtdump)
;;     230599B8 (in tc_blfdtdump)
;;     230599D2 (in tc_blfdtdump)
;;     23059B7E (in tc_blfdtdump)
;;     23059C1A (in tc_blfdtdump)
;;     23059C24 (in tc_blfdtdump)
fdt32_to_cpu proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	c.srli	a0,00000010
	c.slli	a4,10
	andi	a0,a0,+000000FF
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; fdt64_to_cpu: 2305965C
;;   Called from:
;;     230599FC (in tc_blfdtdump)
;;     23059A0C (in tc_blfdtdump)
fdt64_to_cpu proc
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	slli	a3,a0,00000018
	c.slli	a4,10
	c.or	a3,a4
	srli	a4,a0,00000010
	andi	a4,a4,+000000FF
	c.slli	a4,08
	c.or	a3,a4
	srli	a5,a1,00000018
	srli	a4,a0,00000018
	slli	a0,a1,00000018
	c.or	a5,a0
	srli	a0,a1,00000008
	andi	a0,a0,+000000FF
	c.slli	a0,10
	c.or	a0,a5
	srli	a5,a1,00000010
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a0,a5
	or	a1,a3,a4
	c.jr	ra

;; fdt32_ld: 230596A4
;;   Called from:
;;     23059A50 (in tc_blfdtdump)
;;     23059A64 (in tc_blfdtdump)
;;     23059A70 (in tc_blfdtdump)
;;     23059A7C (in tc_blfdtdump)
;;     23059A88 (in tc_blfdtdump)
;;     23059A94 (in tc_blfdtdump)
fdt32_ld proc
	lbu	a5,a0,+00000000
	lbu	a4,a0,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.or	a5,a4
	lbu	a4,a0,+00000003
	lbu	a0,a0,+00000002
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; util_is_printable_string: 230596C2
;;   Called from:
;;     2305972C (in utilfdt_print_data)
util_is_printable_string proc
	c.beqz	a1,000000002305970E

l230596C4:
	c.add	a1,a0
	lbu	a4,a1,-00000001
	c.li	a5,00000000
	c.bnez	a4,00000000230596DC

l230596CE:
	lui	a3,000230CB
	addi	a3,a3,+000005B1

l230596D6:
	bltu	a0,a1,00000000230596EA

l230596DA:
	c.li	a5,00000001

l230596DC:
	c.mv	a0,a5
	c.jr	ra

l230596E0:
	c.addi	a5,00000001
	bne	a1,a5,00000000230596EC

l230596E6:
	c.mv	a5,a1
	c.j	00000000230596FE

l230596EA:
	c.mv	a5,a0

l230596EC:
	lbu	a4,a5,+00000000
	c.beqz	a4,00000000230596FE

l230596F2:
	c.add	a4,a3
	lbu	a4,a4,+00000000
	andi	a4,a4,+00000097
	c.bnez	a4,00000000230596E0

l230596FE:
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002305970E

l23059704:
	beq	a0,a5,000000002305970E

l23059708:
	addi	a0,a5,+00000001
	c.j	00000000230596D6

l2305970E:
	c.li	a5,00000000
	c.j	00000000230596DC

;; utilfdt_print_data: 23059712
;;   Called from:
;;     23059C7A (in tc_blfdtdump)
utilfdt_print_data proc
	beq	a1,zero,0000000023059844

l23059716:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,00000000230596C2
	c.beqz	a0,000000002305976A

l23059732:
	lui	a0,000230BE
	addi	a0,a0,+000007FC
	jal	ra,0000000023082388
	lui	s3,000230BF
	c.add	s0,s1
	lui	s2,000230BF

l23059748:
	c.mv	a1,s1
	addi	a0,s3,-00000800
	jal	ra,0000000023082388
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.addi	a0,00000001
	c.add	s1,a0
	bgeu	s1,s0,0000000023059830

l23059760:
	addi	a0,s2,-000007F8
	jal	ra,0000000023082388
	c.j	0000000023059748

l2305976A:
	andi	a5,s0,+00000003
	c.bnez	a5,00000000230597E0

l23059770:
	lui	a0,000230BF
	addi	a0,a0,-000007F4
	jal	ra,0000000023082388
	c.li	a5,00000004
	xor	s0,s0,a5
	lui	s3,000230BF
	lui	s4,000230C7
	c.li	s2,00000000
	addi	s3,s3,-000002AC
	addi	s4,s4,-00000244
	lui	s6,000230BF
	addi	s5,s0,-00000001

l2305979C:
	blt	s2,s0,00000000230597BE

l230597A0:
	lui	a0,000230C9
	addi	a0,a0,-000006D4

l230597A8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l230597BE:
	slli	a5,s2,00000002
	c.add	a5,s1
	c.lw	a5,0(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	c.mv	a2,s3
	blt	s2,s5,00000000230597D4

l230597D2:
	c.mv	a2,s4

l230597D4:
	addi	a0,s6,-000007EC
	jal	ra,0000000023082388
	c.addi	s2,00000001
	c.j	000000002305979C

l230597E0:
	lui	a0,000230BF
	addi	a0,a0,-000007E0
	lui	s3,000230BF
	lui	s4,000230C7
	jal	ra,0000000023082388
	c.li	s2,00000000
	addi	s5,s0,-00000001
	addi	s3,s3,-000002AC
	addi	s4,s4,-00000244
	lui	s6,000230BF

l23059806:
	blt	s2,s0,0000000023059814

l2305980A:
	lui	a0,000230B4
	addi	a0,a0,-000006AC
	c.j	00000000230597A8

l23059814:
	add	a5,s1,s2
	lbu	a1,a5,+00000000
	c.mv	a2,s3
	blt	s2,s5,0000000023059824

l23059822:
	c.mv	a2,s4

l23059824:
	addi	a0,s6,-000007D8
	jal	ra,0000000023082388
	c.addi	s2,00000001
	c.j	0000000023059806

l23059830:
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

l23059844:
	c.jr	ra

;; tc_blfdtdump: 23059846
;;   Called from:
;;     2305935C (in blfdt)
tc_blfdtdump proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	lui	s1,000230BD
	c.swsp	s4,00000024
	lui	s2,000230BE
	lui	s4,000D00E0
	c.swsp	s0,0000002C
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	addi	s0,s1,+0000054C
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	addi	s1,s1,+0000054C
	addi	s2,s2,+000007FB
	c.li	s6,00000003
	addi	s4,s4,-00000113
	addi	s7,zero,+00000027
	lui	s8,000230BD
	lui	s9,000230BD
	c.li	s5,00000011

l2305988E:
	sub	a2,s2,s0
	blt	s6,a2,0000000023059A30

l23059896:
	beq	s0,zero,0000000023059A40

l2305989A:
	addi	a5,zero,+00000027
	bgeu	a5,a2,0000000023059A40

l230598A2:
	lui	a1,000230BD
	lui	a0,000230BD
	sub	a2,s0,s1
	addi	a1,a1,+00000288
	addi	a0,a0,+0000030C
	jal	ra,0000000023082388
	lui	a5,0004200F
	lw	a4,a5,+00000560
	c.swsp	a5,00000084
	beq	a4,zero,0000000023059B0A

l230598C8:
	jal	ra,00000000230629C6

l230598CC:
	c.mv	a1,a0
	lui	s6,000230BD
	lui	a2,000230BD
	lui	a0,000230BD
	addi	a4,zero,+00000153
	addi	a3,s6,+000002B8
	addi	a2,a2,+0000032C
	addi	a0,a0,+0000033C
	jal	ra,000000002307A208
	c.lw	s0,16(a0)
	jal	ra,000000002305963A
	c.mv	s1,a0
	c.lw	s0,8(a0)
	jal	ra,000000002305963A
	c.mv	s3,a0
	c.lw	s0,12(a0)
	add	s2,s0,s3
	jal	ra,000000002305963A
	c.mv	s11,a0
	c.lw	s0,20(a0)
	jal	ra,000000002305963A
	c.mv	s4,a0
	c.lw	s0,4(a0)
	jal	ra,000000002305963A
	c.swsp	a0,00000008
	lui	a0,000230BD
	addi	a0,a0,+0000035C
	jal	ra,0000000023082388
	c.lw	s0,0(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+00000368
	jal	ra,0000000023082388
	c.lwsp	a6,00000084
	lui	a0,000230BD
	addi	a0,a0,+0000037C
	c.mv	a1,a2
	jal	ra,0000000023082388
	lui	a0,000230BD
	c.mv	a1,s3
	addi	a0,a0,+0000039C
	jal	ra,0000000023082388
	lui	a0,000230BD
	c.mv	a1,s11
	addi	a0,a0,+000003B8
	jal	ra,0000000023082388
	lui	a0,000230BD
	c.mv	a1,s1
	addi	a0,a0,+000003D4
	jal	ra,0000000023082388
	lui	a0,000230BD
	c.mv	a1,s4
	addi	a0,a0,+000003F0
	jal	ra,0000000023082388
	c.lw	s0,24(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+00000404
	jal	ra,0000000023082388
	c.li	a5,00000001
	bgeu	a5,s4,00000000230599E4

l2305999C:
	c.lw	s0,28(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+00000420
	jal	ra,0000000023082388
	c.li	a5,00000002
	beq	s4,a5,00000000230599E4

l230599B6:
	c.lw	s0,32(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+0000043C
	jal	ra,0000000023082388
	c.li	a5,00000010
	bgeu	a5,s4,00000000230599E4

l230599D0:
	c.lw	s0,36(a0)
	jal	ra,000000002305963A
	c.mv	a1,a0
	lui	a0,000230BD
	addi	a0,a0,+00000458
	jal	ra,0000000023082388

l230599E4:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,0000000023082388
	c.add	s1,s0
	lui	s3,000230BD

l230599F6:
	c.lw	s1,0(a0)
	c.lw	s1,4(a1)
	c.addi	s1,00000010
	jal	ra,000000002305965C
	c.swsp	a0,00000088
	c.swsp	a1,00000008
	lw	a0,s1,-00000008
	lw	a1,s1,-00000004
	jal	ra,000000002305965C
	c.lwsp	s4,00000084
	c.lwsp	a6,000000A4
	c.mv	a5,a1
	or	a6,a2,a0
	c.or	a1,a3
	or	a6,a6,a1
	c.mv	a4,a0
	beq	a6,zero,0000000023059C94

l23059A26:
	addi	a0,s3,+00000474
	jal	ra,0000000023082388
	c.j	00000000230599F6

l23059A30:
	c.mv	a0,s0
	c.addi	a2,FFFFFFFC
	addi	a1,zero,+000000D0
	jal	ra,00000000230A36C8
	c.mv	s0,a0
	c.bnez	a0,0000000023059A50

l23059A40:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.bnez	a5,0000000023059AB0

l23059A4A:
	jal	ra,00000000230629A4
	c.j	0000000023059AB4

l23059A50:
	jal	ra,00000000230596A4
	bne	a0,s4,0000000023059AAC

l23059A58:
	sub	s3,s2,s0
	bgeu	s7,s3,0000000023059A9C

l23059A60:
	addi	a0,s0,+00000014
	jal	ra,00000000230596A4
	bltu	s5,a0,0000000023059A9C

l23059A6C:
	addi	a0,s0,+00000018
	jal	ra,00000000230596A4
	bltu	s5,a0,0000000023059A9C

l23059A78:
	addi	a0,s0,+00000004
	jal	ra,00000000230596A4
	bgeu	a0,s3,0000000023059A9C

l23059A84:
	addi	a0,s0,+00000008
	jal	ra,00000000230596A4
	bgeu	a0,s3,0000000023059A9C

l23059A90:
	addi	a0,s0,+0000000C
	jal	ra,00000000230596A4
	bltu	a0,s3,00000000230598A2

l23059A9C:
	sub	a2,s0,s1
	addi	a1,s8,+00000288
	addi	a0,s9,+00000290
	jal	ra,0000000023082388

l23059AAC:
	c.addi	s0,00000001
	c.j	000000002305988E

l23059AB0:
	jal	ra,00000000230629C6

l23059AB4:
	c.mv	a1,a0
	lui	a5,000230BD
	lui	a3,000230BD
	lui	a2,000230AA
	lui	a0,000230BD
	addi	a5,a5,+00000288
	addi	a4,zero,+00000149
	addi	a3,a3,+000002B8
	addi	a2,a2,-00000228
	addi	a0,a0,+000002C8
	jal	ra,000000002307A208
	lui	a0,000230BD
	addi	a0,a0,+000002FC
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFF

l23059AEC:
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

l23059B0A:
	jal	ra,00000000230629A4
	c.j	00000000230598CC

l23059B10:
	c.lwsp	a6,000000C4
	c.mv	a3,s7
	add	a1,s1,a4
	bltu	a5,s8,0000000023059B2A

l23059B1C:
	c.lwsp	s4,000000C4
	slli	a5,s8,00000002
	c.add	a5,a4
	c.lw	a5,0(a3)
	c.bnez	a3,0000000023059B2A

l23059B28:
	c.mv	a3,s7

l23059B2A:
	lui	a0,000230BD
	c.mv	a2,s8
	addi	a0,a0,+00000490
	jal	ra,0000000023082388
	c.li	a5,00000001
	lui	s5,000230C7
	bne	s8,a5,0000000023059B8C

l23059B42:
	c.mv	a0,s1
	jal	ra,00000000230A4220
	lbu	a5,s2,+00000004
	add	s8,s1,a0
	c.addi	s8,00000004
	andi	s8,s8,-00000004
	c.bnez	a5,0000000023059B5A

l23059B58:
	c.lwsp	s8,00000024

l23059B5A:
	lui	a0,000230BD
	c.mv	a3,s1
	slli	a1,s3,00000002
	addi	a2,s5,-00000244
	addi	a0,a0,+000004B0
	jal	ra,0000000023082388
	c.addi	s3,00000001
	c.mv	s1,s8

l23059B74:
	c.mv	s2,s1

l23059B76:
	lw	a0,s2,+00000000
	addi	s1,s2,+00000004
	jal	ra,000000002305963A
	c.li	a5,00000009
	c.mv	s8,a0
	bne	a0,a5,0000000023059B10

l23059B8A:
	c.j	0000000023059BFC

l23059B8C:
	c.li	a5,00000002
	bne	s8,a5,0000000023059BAA

l23059B92:
	c.addi	s3,FFFFFFFF
	lui	a0,000230BD
	addi	a2,s5,-00000244
	slli	a1,s3,00000002
	addi	a0,a0,+000004BC

l23059BA4:
	jal	ra,0000000023082388
	c.j	0000000023059B74

l23059BAA:
	c.li	a5,00000004
	slli	s10,s3,00000002
	bne	s8,a5,0000000023059BC4

l23059BB4:
	lui	a0,000230BD
	addi	a2,s5,-00000244
	c.mv	a1,s10
	addi	a0,a0,+000004C4
	c.j	0000000023059BA4

l23059BC4:
	c.li	a5,00000003
	beq	s8,a5,0000000023059C12

l23059BCA:
	c.lwsp	a2,000000E4
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023059C0C

l23059BD2:
	jal	ra,00000000230629C6

l23059BD6:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BD
	c.mv	a7,s8
	addi	a6,s5,-00000244
	c.mv	a5,s10
	addi	a4,zero,+000000F7
	addi	a3,s6,+000002B8
	addi	a2,a2,-00000228
	addi	a0,a0,+000004D4
	jal	ra,000000002307A208

l23059BFC:
	lui	a0,000230BD
	addi	a0,a0,+00000538
	jal	ra,0000000023082388
	c.li	a0,00000000
	c.j	0000000023059AEC

l23059C0C:
	jal	ra,00000000230629A4
	c.j	0000000023059BD6

l23059C12:
	lw	a0,s2,+00000004
	addi	s8,s2,+0000000C
	jal	ra,000000002305963A
	c.mv	s9,a0
	lw	a0,s2,+00000008
	jal	ra,000000002305963A
	add	a1,s11,a0
	c.li	a4,0000000F
	add	a3,s0,a1
	bltu	a4,s4,0000000023059C42

l23059C36:
	c.li	a4,00000007
	bge	a4,s9,0000000023059C42

l23059C3C:
	c.addi	s2,00000013
	andi	s8,s2,-00000008

l23059C42:
	lui	a0,000230BD
	c.mv	a2,a3
	addi	a0,a0,+00000504
	c.swsp	a3,0000008C
	jal	ra,0000000023082388
	lui	a0,000230BD
	sub	a1,s8,s0
	addi	a0,a0,+0000051C
	jal	ra,0000000023082388
	c.lwsp	t3,000000A4
	lui	a0,000230BD
	addi	a2,s5,-00000244
	c.mv	a1,s10
	addi	a0,a0,+00000530
	jal	ra,0000000023082388
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,0000000023059712
	add	s1,s8,s9
	lui	a0,000230BD
	c.addi	s1,00000003
	addi	a0,a0,+00000364
	c.andi	s1,FFFFFFFC
	jal	ra,0000000023082388
	c.j	0000000023059B74

l23059C94:
	c.li	a5,FFFFFFFC
	c.sub	a5,s0
	c.swsp	a5,00000008
	lui	a5,000230BD
	addi	a5,a5,+0000021C
	lui	s9,000230C7
	lui	s7,000230BD
	c.swsp	a5,00000088
	addi	a5,s9,-00000630
	c.li	s3,00000000
	addi	s7,s7,+00000280
	c.swsp	a5,0000000C
	c.j	0000000023059B76

;; tc_fdt_wifi_module: 23059CBA
;;   Called from:
;;     2305A538 (in tc_fdt_wifi)
tc_fdt_wifi_module proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	lui	a2,000230BF
	lui	s0,000230BD
	addi	a2,a2,-00000798
	c.li	a1,00000000
	addi	a0,s0,+0000054C
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	sw	s9,sp,+00000114
	sw	s10,sp,+00000110
	c.swsp	zero,00000084
	jal	ra,000000002305912A
	blt	zero,a0,0000000023059D40

l23059D08:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023059D3A

l23059D12:
	jal	ra,00000000230629C6

l23059D16:
	lui	a3,000230BF
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000037
	addi	a3,a3,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000780

l23059D34:
	jal	ra,000000002307A208
	c.j	000000002305A13E

l23059D3A:
	jal	ra,00000000230629A4
	c.j	0000000023059D16

l23059D40:
	lui	a2,000230BF
	c.mv	a1,a0
	c.mv	s3,a0
	addi	a2,a2,-00000760
	addi	a0,s0,+0000054C
	jal	ra,000000002305912A
	c.mv	a1,a0
	bge	zero,a0,0000000023059DCA

l23059D5A:
	lui	a2,000230BF
	c.addi4spn	a3,0000000C
	addi	a2,a2,-00000758
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	lui	a5,0004200F
	c.mv	s2,a0
	lui	s1,000230BF
	lw	a5,a5,+00000560
	beq	a0,zero,000000002305A148

l23059D7E:
	beq	a5,zero,000000002305A142

l23059D82:
	jal	ra,00000000230629C6

l23059D86:
	lw	a4,s2,+00000000
	c.lwsp	a2,00000008
	lui	a2,000230BD
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.or	a5,a3
	srli	a3,a4,00000008
	andi	a3,a3,+000000FF
	c.srli	a4,00000010
	c.slli	a3,10
	andi	a4,a4,+000000FF
	c.or	a5,a3
	c.slli	a4,08
	c.mv	a1,a0
	lui	a0,000230BF
	c.or	a5,a4
	addi	a3,s1,-00000790
	addi	a4,zero,+00000040
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000748
	jal	ra,000000002307A208

l23059DCA:
	lui	a2,000230BF
	addi	a2,a2,-000006F0
	c.mv	a1,s3
	addi	a0,s0,+0000054C
	jal	ra,000000002305912A
	c.mv	s5,a0
	bge	zero,a0,0000000023059EAA

l23059DE2:
	lui	a2,000230BF
	c.mv	a1,a0
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000006EC
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	c.li	a5,00000006
	c.mv	a1,a0
	lui	s4,0004200F
	lui	s1,000230BF
	bne	a4,a5,000000002305A176

l23059E08:
	c.li	a2,00000006
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s4,+00000560
	beq	a5,zero,000000002305A170

l23059E18:
	jal	ra,00000000230629C6

l23059E1C:
	c.mv	a1,a0
	lui	s2,000230BD
	lui	a0,000230BF
	addi	a4,zero,+0000004F
	addi	a3,s1,-00000790
	addi	a2,s2,+0000032C
	addi	a0,a0,-000006DC
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.li	a3,00000006
	c.addi4spn	a2,00000010
	addi	a1,zero,+00000050
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	lui	a2,000230BF
	c.mv	a1,s5
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000006BC
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	c.li	a5,00000006
	c.mv	a1,a0
	bne	a4,a5,0000000023059EAA

l23059E6A:
	c.li	a2,00000006
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s4,+00000560
	beq	a5,zero,000000002305A1A2

l23059E7A:
	jal	ra,00000000230629C6

l23059E7E:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+0000005C
	addi	a3,s1,-00000790
	addi	a2,s2,+0000032C
	addi	a0,a0,-00000688
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.li	a3,00000006
	c.addi4spn	a2,00000010
	addi	a1,zero,+0000005D
	addi	a0,s1,-00000790
	jal	ra,000000002307A236

l23059EAA:
	lui	a2,000230BF
	addi	a2,a2,-00000668
	c.mv	a1,s3
	addi	a0,s0,+0000054C
	jal	ra,000000002305912A
	c.mv	s5,a0
	bge	zero,a0,000000002305A27C

l23059EC2:
	lui	s2,000230BF
	c.mv	a1,a0
	addi	a2,s2,-00000664
	addi	a0,s0,+0000054C
	jal	ra,0000000023059296
	c.mv	s4,a0
	bge	zero,a0,000000002305A1AE

l23059EDA:
	c.li	s1,00000000
	lui	s6,0004200F
	lui	s7,000230BF
	lui	s8,000230BD
	lui	s9,000230BF

l23059EEC:
	c.addi4spn	a4,0000000C
	c.mv	a3,s1
	addi	a2,s2,-00000664
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,00000000230592E0
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,0000000023059F2E

l23059F06:
	lw	a5,s6,+00000560
	beq	a5,zero,000000002305A1A8

l23059F0E:
	jal	ra,00000000230629C6

l23059F12:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s1
	addi	a4,zero,+0000006A
	addi	a3,s7,-00000790
	addi	a2,s8,+0000032C
	addi	a0,s9,-0000065C
	jal	ra,000000002307A208

l23059F2E:
	c.addi	s1,00000001
	bne	s4,s1,0000000023059EEC

l23059F34:
	lui	s2,000230BF
	addi	a2,s2,-00000604
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,0000000023059296
	c.mv	s4,a0
	bge	zero,a0,000000002305A1E8

l23059F4C:
	c.li	s1,00000000
	lui	s6,0004200F
	lui	s7,000230BF
	lui	s8,000230BD
	lui	s9,000230BF

l23059F5E:
	c.addi4spn	a4,0000000C
	c.mv	a3,s1
	addi	a2,s2,-00000604
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,00000000230592E0
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,0000000023059FA0

l23059F78:
	lw	a5,s6,+00000560
	beq	a5,zero,000000002305A1E2

l23059F80:
	jal	ra,00000000230629C6

l23059F84:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s1
	addi	a4,zero,+00000079
	addi	a3,s7,-00000790
	addi	a2,s8,+0000032C
	addi	a0,s9,-00000600
	jal	ra,000000002307A208

l23059FA0:
	c.addi	s1,00000001
	bne	s4,s1,0000000023059F5E

l23059FA6:
	lui	a2,000230BF
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000005A8
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	lui	s2,0004200F
	c.mv	s4,a0
	lui	s1,000230BF
	lw	a5,s2,+00000560
	beq	a0,zero,000000002305A222

l23059FCC:
	beq	a5,zero,000000002305A21C

l23059FD0:
	jal	ra,00000000230629C6

l23059FD4:
	lw	a4,s4,+00000000
	c.mv	a1,a0
	lui	s4,000230BD
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.or	a5,a3
	srli	a3,a4,00000008
	andi	a3,a3,+000000FF
	c.srli	a4,00000010
	c.slli	a3,10
	andi	a4,a4,+000000FF
	c.or	a5,a3
	c.slli	a4,08
	lui	a0,000230BF
	c.or	a5,a4
	addi	a3,s1,-00000790
	addi	a4,zero,+00000084
	addi	a2,s4,+0000032C
	addi	a0,a0,-0000059C
	jal	ra,000000002307A208
	lui	s7,000230BF
	addi	a2,s7,-00000574
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,0000000023059296
	c.mv	s8,a0
	c.li	s6,00000000
	bge	zero,a0,000000002305A250

l2305A030:
	lui	s9,000230BF

l2305A034:
	c.addi4spn	a4,0000000C
	c.mv	a3,s6
	addi	a2,s7,-00000574
	c.mv	a1,s5
	addi	a0,s0,+0000054C
	jal	ra,00000000230592E0
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,000000002305A076

l2305A04E:
	lw	a5,s2,+00000560
	beq	a5,zero,000000002305A24A

l2305A056:
	jal	ra,00000000230629C6

l2305A05A:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s6
	addi	a4,zero,+00000090
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,s9,-00000538
	jal	ra,000000002307A208

l2305A076:
	c.addi	s6,00000001
	bne	s8,s6,000000002305A034

l2305A07C:
	lui	a2,000230BF
	c.mv	a1,s3
	addi	a2,a2,-000004C8
	addi	a0,s0,+0000054C
	jal	ra,000000002305912A
	c.mv	s3,a0
	bge	zero,a0,000000002305A504

l2305A094:
	lui	a2,000230BF
	c.mv	a1,a0
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000004C0
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	c.li	a5,00000014
	c.mv	a1,a0
	bne	a4,a5,000000002305A29C

l2305A0B2:
	c.li	a2,00000014
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s2,+00000560
	beq	a5,zero,000000002305A296

l2305A0C2:
	jal	ra,00000000230629C6

l2305A0C6:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000A5
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,a0,-000004B8
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.li	a3,00000014
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000A6
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	lui	a2,000230BF
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-0000049C
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	addi	a5,zero,+00000100
	c.mv	a1,a0
	beq	a4,a5,000000002305A2C8

l2305A112:
	lw	a5,s2,+00000560
	beq	a5,zero,000000002305A356

l2305A11A:
	jal	ra,00000000230629C6

l2305A11E:
	c.lwsp	a2,000000E4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000B4
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000438
	jal	ra,000000002307A208

l2305A13E:
	c.li	a0,FFFFFFFF
	c.j	000000002305A4C4

l2305A142:
	jal	ra,00000000230629A4
	c.j	0000000023059D86

l2305A148:
	c.beqz	a5,000000002305A16A

l2305A14A:
	jal	ra,00000000230629C6

l2305A14E:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000042
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000718
	c.j	0000000023059D34

l2305A16A:
	jal	ra,00000000230629A4
	c.j	000000002305A14E

l2305A170:
	jal	ra,00000000230629A4
	c.j	0000000023059E1C

l2305A176:
	lw	a5,s4,+00000560
	c.beqz	a5,000000002305A19C

l2305A17C:
	jal	ra,00000000230629C6

l2305A180:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000052
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-000006B0
	c.j	0000000023059D34

l2305A19C:
	jal	ra,00000000230629A4
	c.j	000000002305A180

l2305A1A2:
	jal	ra,00000000230629A4
	c.j	0000000023059E7E

l2305A1A8:
	jal	ra,00000000230629A4
	c.j	0000000023059F12

l2305A1AE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305A1DC

l2305A1B8:
	jal	ra,00000000230629C6

l2305A1BC:
	addi	a4,zero,+0000006E

l2305A1C0:
	lui	a3,000230BF
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a3,a3,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000624
	c.j	0000000023059D34

l2305A1DC:
	jal	ra,00000000230629A4
	c.j	000000002305A1BC

l2305A1E2:
	jal	ra,00000000230629A4
	c.j	0000000023059F84

l2305A1E8:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305A216

l2305A1F2:
	jal	ra,00000000230629C6

l2305A1F6:
	lui	a3,000230BF
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+0000007D
	addi	a3,a3,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-000005C8
	c.j	0000000023059D34

l2305A216:
	jal	ra,00000000230629A4
	c.j	000000002305A1F6

l2305A21C:
	jal	ra,00000000230629A4
	c.j	0000000023059FD4

l2305A222:
	c.beqz	a5,000000002305A244

l2305A224:
	jal	ra,00000000230629C6

l2305A228:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000086
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000560
	c.j	0000000023059D34

l2305A244:
	jal	ra,00000000230629A4
	c.j	000000002305A228

l2305A24A:
	jal	ra,00000000230629A4
	c.j	000000002305A05A

l2305A250:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A276

l2305A256:
	jal	ra,00000000230629C6

l2305A25A:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000094
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-000004F4
	c.j	0000000023059D34

l2305A276:
	jal	ra,00000000230629A4
	c.j	000000002305A25A

l2305A27C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305A290

l2305A286:
	jal	ra,00000000230629C6

l2305A28A:
	addi	a4,zero,+00000098
	c.j	000000002305A1C0

l2305A290:
	jal	ra,00000000230629A4
	c.j	000000002305A28A

l2305A296:
	jal	ra,00000000230629A4
	c.j	000000002305A0C6

l2305A29C:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A2C2

l2305A2A2:
	jal	ra,00000000230629C6

l2305A2A6:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000A8
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000490
	c.j	0000000023059D34

l2305A2C2:
	jal	ra,00000000230629A4
	c.j	000000002305A2A6

l2305A2C8:
	addi	a2,zero,+00000100
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A350

l2305A2D8:
	jal	ra,00000000230629C6

l2305A2DC:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000B1
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,a0,-00000470
	jal	ra,000000002307A208
	c.li	a4,00000000
	addi	a3,zero,+00000100
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000B2
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	lui	a2,000230BF
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-0000044C
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	addi	a5,zero,+0000003C
	c.mv	a1,a0
	beq	a4,a5,000000002305A35C

l2305A32A:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A3EA

l2305A330:
	jal	ra,00000000230629C6

l2305A334:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000C0
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-000003C4
	c.j	0000000023059D34

l2305A350:
	jal	ra,00000000230629A4
	c.j	000000002305A2DC

l2305A356:
	jal	ra,00000000230629A4
	c.j	000000002305A11E

l2305A35C:
	addi	a2,zero,+0000003C
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A3E4

l2305A36C:
	jal	ra,00000000230629C6

l2305A370:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000BD
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,a0,-00000404
	jal	ra,000000002307A208
	c.li	a4,00000000
	addi	a3,zero,+0000003C
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000BE
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	lui	a2,000230BF
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000003D8
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	addi	a5,zero,+00000038
	c.mv	a1,a0
	beq	a4,a5,000000002305A3F0

l2305A3BE:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A47E

l2305A3C4:
	jal	ra,00000000230629C6

l2305A3C8:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000CC
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-0000035C
	c.j	0000000023059D34

l2305A3E4:
	jal	ra,00000000230629A4
	c.j	000000002305A370

l2305A3EA:
	jal	ra,00000000230629A4
	c.j	000000002305A334

l2305A3F0:
	addi	a2,zero,+00000038
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A478

l2305A400:
	jal	ra,00000000230629C6

l2305A404:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000C9
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,a0,-00000394
	jal	ra,000000002307A208
	c.li	a4,00000000
	addi	a3,zero,+00000038
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000CA
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	lui	a2,000230BF
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-00000368
	addi	a0,s0,+0000054C
	jal	ra,000000002305926E
	c.lwsp	a2,000000C4
	c.li	a5,00000004
	c.mv	a1,a0
	beq	a4,a5,000000002305A484

l2305A450:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A4FE

l2305A456:
	jal	ra,00000000230629C6

l2305A45A:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000D8
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-00000308
	jal	zero,0000000023059D34

l2305A478:
	jal	ra,00000000230629A4
	c.j	000000002305A404

l2305A47E:
	jal	ra,00000000230629A4
	c.j	000000002305A3C8

l2305A484:
	c.li	a2,00000004
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A4F8

l2305A492:
	jal	ra,00000000230629C6

l2305A496:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000D5
	addi	a3,s1,-00000790
	addi	a2,s4,+0000032C
	addi	a0,a0,-0000032C
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.li	a3,00000004
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000D6
	addi	a0,s1,-00000790
	jal	ra,000000002307A236
	c.li	a0,00000000

l2305A4C4:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	lw	s3,sp,+0000012C
	lw	s4,sp,+00000128
	lw	s5,sp,+00000124
	lw	s6,sp,+00000120
	lw	s7,sp,+0000011C
	lw	s8,sp,+00000118
	lw	s9,sp,+00000114
	lw	s10,sp,+00000110
	c.addi16sp	00000140
	c.jr	ra

l2305A4F8:
	jal	ra,00000000230629A4
	c.j	000000002305A496

l2305A4FE:
	jal	ra,00000000230629A4
	c.j	000000002305A45A

l2305A504:
	lw	a5,s2,+00000560
	c.beqz	a5,000000002305A52C

l2305A50A:
	jal	ra,00000000230629C6

l2305A50E:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000DC
	addi	a3,s1,-00000790
	addi	a2,a2,-00000228
	addi	a0,a0,-000002E0
	jal	zero,0000000023059D34

l2305A52C:
	jal	ra,00000000230629A4
	c.j	000000002305A50E

;; tc_fdt_wifi: 2305A532
;;   Called from:
;;     23059354 (in blfdt)
tc_fdt_wifi proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023059CBA
	c.mv	s0,a0
	c.beqz	a0,000000002305A556

l2305A540:
	lui	a0,000230BF
	addi	a0,a0,-000007D0

l2305A548:
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305A556:
	lui	a0,000230BF
	addi	a0,a0,-000007B4
	c.j	000000002305A548

;; cmd_blog_info_dump: 2305A560
cmd_blog_info_dump proc
	c.addi16sp	FFFFFF50
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,000000D4
	c.swsp	s0,00000054
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.swsp	s9,000000C0
	c.swsp	s1,000000D0
	c.swsp	s2,00000050
	jal	ra,00000000230A3A68
	lui	s3,000230CC
	lui	s0,000230CC
	lui	a0,000230BF
	addi	a2,s3,+0000025C
	addi	a1,s0,+000001DC
	addi	a0,a0,-0000025C
	jal	ra,000000002307A208
	lui	s6,000230CC
	lui	s4,000230CC
	lui	a0,000230BF
	addi	a2,s6,+000002DC
	addi	a1,s4,+0000025C
	addi	a0,a0,-00000244
	jal	ra,000000002307A208
	lui	s9,000230CC
	lui	s5,000230CC
	lui	a0,000230BF
	addi	a2,s9,+000002DC
	addi	a1,s5,+000002DC
	addi	a0,a0,-0000022C
	jal	ra,000000002307A208
	addi	s0,s0,+000001DC
	addi	s3,s3,+0000025C
	addi	s8,zero,+00000080
	lui	s7,000230BF
	addi	s6,s6,+000002DC
	addi	s9,s9,+000002DC

l2305A5F0:
	bgeu	s0,s3,000000002305A60A

l2305A5F4:
	c.lw	s0,4(a0)
	jal	ra,00000000230A4220
	bgeu	s8,a0,000000002305A624

l2305A5FE:
	lui	a0,000230BF
	addi	a0,a0,-00000214
	jal	ra,000000002307A208

l2305A60A:
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

l2305A624:
	lbu	a5,sp,+00000000
	c.beqz	a5,000000002305A648

l2305A62A:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002305A638

l2305A634:
	c.addi	s0,00000008
	c.j	000000002305A5F0

l2305A638:
	c.mv	a0,sp
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68

l2305A648:
	c.lw	s0,0(a5)
	c.lw	s0,4(a1)
	addi	a0,s7,-00000200
	lbu	a2,a5,+00000000
	jal	ra,000000002307A208
	lbu	a5,sp,+00000000
	c.bnez	a5,000000002305A682

l2305A65E:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	addi	s1,s4,+0000025C
	jal	ra,00000000230A4170

l2305A66A:
	bgeu	s1,s6,000000002305A634

l2305A66E:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	jal	ra,00000000230A4978
	c.lw	s1,4(a5)
	c.mv	a1,a0
	beq	a0,a5,000000002305A68E

l2305A67E:
	c.addi	s1,00000008
	c.j	000000002305A66A

l2305A682:
	c.lw	s0,4(a0)
	c.mv	a1,sp
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002305A634

l2305A68C:
	c.j	000000002305A65E

l2305A68E:
	c.lw	s1,0(a5)
	addi	a0,s7,-00000200
	addi	s2,s5,+000002DC
	lbu	a2,a5,+00000000
	jal	ra,000000002307A208

l2305A6A0:
	bgeu	s2,s9,000000002305A67E

l2305A6A4:
	c.lw	s1,4(a1)
	lw	a0,s2,+00000004
	jal	ra,00000000230A4978
	lw	a5,s2,+00000004
	c.mv	a1,a0
	bne	a0,a5,000000002305A6C8

l2305A6B8:
	lw	a5,s2,+00000000
	addi	a0,s7,-00000200
	lbu	a2,a5,+00000000
	jal	ra,000000002307A208

l2305A6C8:
	c.addi	s2,00000008
	c.j	000000002305A6A0

;; blog_strcpy.part.0: 2305A6CC
;;   Called from:
;;     2305A968 (in blog_hexdump_out)
;;     2305A9C0 (in blog_hexdump_out)
;;     2305AA00 (in blog_hexdump_out)
;;     2305AA1E (in blog_hexdump_out)
;;     2305AA6C (in blog_hexdump_out)
blog_strcpy.part.0 proc
	c.mv	a5,a2
	c.sub	a0,a2
	addi	a3,zero,+000000FF

l2305A6D4:
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002305A6E0

l2305A6DA:
	sub	a0,a5,a2
	c.jr	ra

l2305A6E0:
	add	a6,a5,a0
	bltu	a3,a6,000000002305A6DA

l2305A6E8:
	c.addi	a1,00000001
	c.addi	a5,00000001
	sb	a4,a1,+00000FFF
	c.j	000000002305A6D4

;; cmd_blog_set_level: 2305A6F2
cmd_blog_set_level proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,00000003
	beq	a2,a5,000000002305A734

l2305A70A:
	lui	a0,000230BF
	addi	a0,a0,-000001EC
	jal	ra,000000002307A208

l2305A716:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,000230BF
	addi	a0,a0,-00000178
	c.addi16sp	00000020
	jal	zero,000000002307A208

l2305A734:
	c.lw	a3,4(a0)
	lui	a1,000230BF
	addi	a1,a1,-000001DC
	c.mv	s1,a3
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002305A7C2

l2305A746:
	c.lw	s1,4(a0)
	lui	a1,000230BF
	addi	a1,a1,-000001D8
	jal	ra,00000000230A3FF4
	c.li	s3,00000001
	c.beqz	a0,000000002305A7C4

l2305A758:
	c.lw	s1,4(a0)
	lui	a1,000230C5
	addi	a1,a1,+00000050
	jal	ra,00000000230A3FF4
	c.li	s3,00000002
	c.beqz	a0,000000002305A7C4

l2305A76A:
	c.lw	s1,4(a0)
	lui	a1,000230BF
	addi	a1,a1,-000001D0
	jal	ra,00000000230A3FF4
	c.li	s3,00000003
	c.beqz	a0,000000002305A7C4

l2305A77C:
	c.lw	s1,4(a0)
	lui	a1,000230C4
	addi	a1,a1,+000005D8
	jal	ra,00000000230A3FF4
	c.li	s3,00000004
	c.beqz	a0,000000002305A7C4

l2305A78E:
	c.lw	s1,4(a0)
	lui	a1,000230BF
	addi	a1,a1,-000001C8
	jal	ra,00000000230A3FF4
	c.li	s3,00000005
	c.beqz	a0,000000002305A7C4

l2305A7A0:
	c.lw	s1,4(a0)
	lui	a1,000230BF
	addi	a1,a1,-000001C0
	jal	ra,00000000230A3FF4
	c.li	s3,00000006
	c.beqz	a0,000000002305A7C4

l2305A7B2:
	c.lw	s1,4(a1)
	lui	a0,000230BF
	addi	a0,a0,-000001B8

l2305A7BC:
	jal	ra,000000002307A208
	c.j	000000002305A716

l2305A7C2:
	c.li	s3,00000000

l2305A7C4:
	c.lw	s1,8(s0)
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,zero,+0000002E

l2305A7D4:
	blt	a4,a0,000000002305A7F2

l2305A7D8:
	c.beqz	a5,000000002305A804

l2305A7DA:
	c.li	a4,00000001
	beq	a5,a4,000000002305A82E

l2305A7E0:
	c.li	a4,00000002
	beq	a5,a4,000000002305A840

l2305A7E6:
	lui	a0,000230BF
	c.lw	s1,8(a1)
	addi	a0,a0,-00000198
	c.j	000000002305A7BC

l2305A7F2:
	add	a2,s0,a4
	lbu	a2,a2,+00000000
	bne	a2,a3,000000002305A800

l2305A7FE:
	c.addi	a5,00000001

l2305A800:
	c.addi	a4,00000001
	c.j	000000002305A7D4

l2305A804:
	lui	s0,000230CC
	lui	s2,000230CC
	addi	s0,s0,+0000025C
	addi	s2,s2,+000001DC

l2305A814:
	sub	s0,s0,s2
	c.srai	s0,00000003
	c.addi	s0,FFFFFFFF
	c.li	s6,00000000

l2305A81E:
	c.lw	s1,8(a1)
	bge	s0,s6,000000002305A852

l2305A824:
	lui	a0,000230BF
	addi	a0,a0,-00000164
	c.j	000000002305A7BC

l2305A82E:
	lui	s0,000230CC
	lui	s2,000230CC
	addi	s0,s0,+000002DC
	addi	s2,s2,+0000025C
	c.j	000000002305A814

l2305A840:
	lui	s0,000230CC
	lui	s2,000230CC
	addi	s0,s0,+000002DC
	addi	s2,s2,+000002DC
	c.j	000000002305A814

l2305A852:
	add	s5,s6,s0
	srai	s5,s5,00000001
	slli	s4,s5,00000003
	c.add	s4,s2
	lw	a0,s4,+00000004
	jal	ra,00000000230A3FF4
	bge	a0,zero,000000002305A872

l2305A86C:
	addi	s6,s5,+00000001
	c.j	000000002305A81E

l2305A872:
	c.beqz	a0,000000002305A87A

l2305A874:
	addi	s0,s5,-00000001
	c.j	000000002305A81E

l2305A87A:
	lw	a5,s4,+00000000
	lui	a0,000230BF
	addi	a0,a0,-00000148
	sb	s3,a5,+00000000
	lw	a5,s4,+00000000
	c.lwsp	s8,00000004
	lw	a1,s4,+00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lbu	a2,a5,+00000000
	c.addi16sp	00000020
	jal	zero,000000002307A208

;; blog_port_output: 2305A8AC
;;   Called from:
;;     2305A9D4 (in blog_hexdump_out)
blog_port_output proc
	c.mv	a2,a0
	lui	a0,000230BF
	addi	a0,a0,-00000264
	jal	zero,000000002307A208

;; blog_hexdump_out: 2305A8BA
;;   Called from:
;;     2305B752 (in write_data)
;;     2305B866 (in __ble_bytes_send)
blog_hexdump_out proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s10,00000018
	c.swsp	a0,00000084
	c.mv	s8,a1
	c.mv	s9,a2
	c.mv	s6,a3
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.li	s0,00000000
	lui	s7,00042017
	lui	s11,000230BF

l2305A8EC:
	bltu	s0,s6,000000002305A90E

l2305A8F0:
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

l2305A90E:
	c.lwsp	a2,000000A4
	add	a5,s8,s0
	lui	a2,000230BF
	c.addi	a5,FFFFFFFF
	c.mv	a4,s0
	addi	a2,a2,-000002BC
	addi	a1,zero,+00000100
	addi	a0,s7,+00000258
	jal	ra,00000000230823DA
	addi	a5,zero,+00000100
	bgeu	a5,a0,000000002305A938

l2305A934:
	addi	a0,zero,+00000100

l2305A938:
	slli	s10,a0,00000010
	slli	s1,s8,00000010
	srli	s10,s10,00000010
	c.mv	s3,s0
	c.mv	s5,s0
	c.li	s4,00000000
	c.srli	s1,00000010
	addi	s2,s7,+00000258

l2305A950:
	slli	a4,s4,00000010
	c.srli	a4,00000010
	bltu	a4,s1,000000002305A9DC

l2305A95A:
	lui	a2,000230BF
	addi	a2,a2,-0000029C
	add	a1,s2,s10
	c.mv	a0,s10
	jal	ra,000000002305A6CC
	c.add	a0,s10
	slli	s4,a0,00000010
	srli	s4,s4,00000010
	addi	s5,zero,+0000005E
	lui	a4,000230BF

l2305A97E:
	sub	a5,s3,s0
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,s1,000000002305AA40

l2305A98A:
	lui	s3,000230C7
	addi	a0,s3,-00000700
	jal	ra,00000000230A4220
	c.add	a0,s4
	addi	a5,zero,+00000100
	bgeu	a5,a0,000000002305A9B6

l2305A9A0:
	addi	a0,s3,-00000700
	jal	ra,00000000230A4220
	addi	s4,zero,+00000100
	sub	s4,s4,a0
	c.slli	s4,10
	srli	s4,s4,00000010

l2305A9B6:
	addi	a2,s3,-00000700
	add	a1,s2,s4
	c.mv	a0,s4
	jal	ra,000000002305A6CC
	c.add	a0,s4
	slli	a1,a0,00000010
	c.add	s0,s1
	c.srli	a1,00000010
	addi	a0,s7,+00000258
	c.slli	s0,10
	jal	ra,000000002305A8AC
	c.srli	s0,00000010
	c.j	000000002305A8EC

l2305A9DC:
	bge	s5,s6,000000002305AA2E

l2305A9E0:
	add	a4,s9,s5
	lbu	a3,a4,+00000000
	lui	a5,000230BF
	addi	a2,a5,-000002A8
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,00000000230823DA

l2305A9F8:
	add	a1,s2,s10
	c.mv	a0,s10
	c.addi4spn	a2,00000018
	jal	ra,000000002305A6CC
	c.add	s10,a0
	c.addi	s4,00000001
	c.slli	s10,10
	andi	a4,s4,+00000007
	srli	s10,s10,00000010
	c.bnez	a4,000000002305AA2A

l2305AA14:
	add	a1,s2,s10
	c.mv	a0,s10
	addi	a2,s11,-000002AC
	jal	ra,000000002305A6CC
	c.add	s10,a0
	c.slli	s10,10
	srli	s10,s10,00000010

l2305AA2A:
	c.addi	s5,00000001
	c.j	000000002305A950

l2305AA2E:
	lui	a5,000230BF
	c.li	a2,00000008
	addi	a1,a5,-000002A0
	c.addi4spn	a0,00000018
	jal	ra,00000000230A439C
	c.j	000000002305A9F8

l2305AA40:
	bge	s3,s6,000000002305AA7C

l2305AA44:
	add	a5,s9,s3
	lbu	a3,a5,+00000000
	addi	a5,a3,-00000020
	bgeu	s5,a5,000000002305AA58

l2305AA54:
	addi	a3,zero,+0000002E

l2305AA58:
	addi	a2,a4,-00000298
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,00000000230823DA
	add	a1,s2,s4
	c.mv	a0,s4
	c.addi4spn	a2,00000018
	jal	ra,000000002305A6CC
	c.add	s4,a0
	c.slli	s4,10
	srli	s4,s4,00000010
	lui	a4,000230BF

l2305AA7C:
	c.addi	s3,00000001
	c.j	000000002305A97E

;; blog_init: 2305AA80
;;   Called from:
;;     23000DA2 (in bfl_main)
blog_init proc
	lui	a0,000230BF
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.li	a2,00000002
	c.li	a1,00000002
	addi	a0,a0,-00000294
	c.swsp	ra,00000084
	jal	ra,000000002307A208
	lui	a5,000230CC
	lui	a4,000230CC
	addi	a5,a5,+000001DC
	addi	a4,a4,+0000025C
	c.li	a3,00000002

l2305AAA8:
	bltu	a5,a4,000000002305AADE

l2305AAAC:
	lui	a5,000230CC
	lui	a4,000230CC
	addi	a5,a5,+0000025C
	addi	a4,a4,+000002DC
	c.li	a3,00000002

l2305AABE:
	bltu	a5,a4,000000002305AAE8

l2305AAC2:
	lui	a5,000230CC
	lui	a4,000230CC
	addi	a5,a5,+000002DC
	addi	a4,a4,+000002DC
	c.li	a3,00000002

l2305AAD4:
	bltu	a5,a4,000000002305AAF2

l2305AAD8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2305AADE:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002305AAA8

l2305AAE8:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002305AABE

l2305AAF2:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002305AAD4

;; ota_dump_cmd: 2305AAFC
ota_dump_cmd proc
	jal	zero,0000000023067A1C

;; ota_tcp_cmd.part.0: 2305AB00
;;   Called from:
;;     2305AFE2 (in ota_tcp_cmd)
ota_tcp_cmd.part.0 proc
	c.addi16sp	FFFFFEB0
	sw	ra,sp,+0000014C
	sw	s0,sp,+00000148
	sw	s1,sp,+00000144
	sw	s2,sp,+00000140
	sw	s3,sp,+0000013C
	sw	s4,sp,+00000138
	sw	s5,sp,+00000134
	sw	s6,sp,+00000130
	sw	s7,sp,+0000012C
	sw	s8,sp,+00000128
	sw	s9,sp,+00000124
	sw	s10,sp,+00000120
	sw	s11,sp,+0000011C
	c.lw	a0,4(a0)
	jal	ra,000000002306A806
	c.bnez	a0,000000002305AB82

l2305AB3E:
	lui	a0,000230BF
	addi	a0,a0,-000000F8

l2305AB46:
	jal	ra,000000002308234C

l2305AB4A:
	lw	ra,sp,+0000014C
	lw	s0,sp,+00000148
	lw	s1,sp,+00000144
	lw	s2,sp,+00000140
	lw	s3,sp,+0000013C
	lw	s4,sp,+00000138
	lw	s5,sp,+00000134
	lw	s6,sp,+00000130
	lw	s7,sp,+0000012C
	lw	s8,sp,+00000128
	lw	s9,sp,+00000124
	lw	s10,sp,+00000120
	lw	s11,sp,+0000011C
	c.addi16sp	00000150
	c.jr	ra

l2305AB82:
	c.mv	s0,a0
	lui	a0,000230BF
	c.li	a2,00000001
	c.mv	a1,sp
	addi	a0,a0,-000000E0
	jal	ra,00000000230849C0
	c.beqz	a0,000000002305ABA0

l2305AB96:
	lui	a0,000230BF
	addi	a0,a0,-000000DC
	c.j	000000002305AB46

l2305ABA0:
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002306B818
	c.mv	s4,a0
	bge	a0,zero,000000002305ABC4

l2305ABB0:
	lui	a0,000230BF
	addi	a0,a0,-000000B8
	jal	ra,0000000023082388

l2305ABBC:
	c.lwsp	zero,00000044
	jal	ra,0000000023084B5A
	c.j	000000002305AB4A

l2305ABC4:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.lui	a0,00001000
	c.li	a5,00000002
	addi	a0,a0,-000002FB
	sb	a5,sp,+0000000D
	jal	ra,000000002306BC12
	c.lw	s0,16(a5)
	sh	a0,sp,+0000000E
	c.addi4spn	a0,00000004
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.swsp	a5,00000008
	c.swsp	a5,00000080
	jal	ra,000000002306F586
	c.mv	s1,a0
	addi	a0,zero,+00000200
	jal	ra,000000002306488A
	c.mv	s0,a0
	jal	ra,00000000230679EE
	c.mv	s2,a0
	lui	a0,000230BF
	c.mv	a1,s0
	addi	a0,a0,-000000A4
	jal	ra,0000000023082388
	lui	a0,000230BF
	c.mv	a1,s2
	addi	a0,a0,-0000007C
	jal	ra,0000000023082388
	c.addi4spn	a1,00000080
	c.li	a0,00000000
	jal	ra,00000000230679F8
	c.beqz	a0,000000002305AC3E

l2305AC2A:
	lui	a0,000230BF
	addi	a0,a0,-0000005C
	jal	ra,0000000023082388

l2305AC36:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.j	000000002305ABBC

l2305AC3E:
	lbu	a5,sp,+00000082
	c.addi4spn	a3,00000110
	lui	a0,000230BF
	sltiu	a5,a5,+00000001
	slli	a4,a5,00000002
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,a3
	lw	a1,a5,-0000008C
	c.add	a4,a3
	addi	a0,a0,-00000038
	lw	s7,a4,-00000084
	c.swsp	a1,00000004
	jal	ra,0000000023082388
	lbu	a1,sp,+00000082
	lui	a0,000230BF
	c.mv	a2,s7
	addi	a0,a0,-00000010
	jal	ra,0000000023082388
	c.lwsp	s0,00000064
	lui	a0,000230BF
	addi	a0,a0,+00000028
	jal	ra,0000000023082388
	c.lwsp	zero,00000044
	jal	ra,0000000023084BAC
	lui	a0,000230BF
	addi	a0,a0,+00000054
	jal	ra,0000000023082388
	lui	a0,000230BF
	c.mv	a1,s1
	addi	a0,a0,+0000005C
	jal	ra,0000000023082388
	c.li	a2,00000010
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,000000002306B4D8
	c.beqz	a0,000000002305ACCA

l2305ACB6:
	lui	a0,000230BF
	addi	a0,a0,+00000078
	jal	ra,0000000023082388
	c.mv	a0,s4
	jal	ra,000000002306B430
	c.j	000000002305AC36

l2305ACCA:
	c.addi4spn	a0,000000A4
	jal	ra,00000000230792D2
	c.addi4spn	a0,000000A4
	jal	ra,00000000230792F0
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3A68
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s5,00000000
	c.li	s9,00000000
	lui	s6,000230B6
	lui	s3,000230C7
	lui	s8,000230BF

l2305ACF6:
	addi	s10,zero,+00000200
	sub	a2,s10,s9
	add	a1,s0,s9
	c.mv	a0,s4
	jal	ra,000000002306B676
	c.mv	s11,a0
	bge	a0,zero,000000002305AD38

l2305AD0E:
	lui	a5,00042026
	lw	a2,a5,+000007A8
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a0,a0,+0000008C
	jal	ra,0000000023082388

l2305AD24:
	c.mv	a0,s4
	jal	ra,000000002306B430
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.addi4spn	a0,000000A4
	jal	ra,00000000230792DC
	c.j	000000002305ABBC

l2305AD38:
	c.add	s1,a0
	c.bnez	a0,000000002305AD4C

l2305AD3C:
	lui	a0,000230BF
	c.mv	a1,s1
	addi	a0,a0,+000000A4
	jal	ra,0000000023082388
	c.j	000000002305AD24

l2305AD4C:
	lui	a5,000230BF
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,a5,+000000EC
	jal	ra,0000000023082388
	c.add	s9,s11
	bne	s2,zero,000000002305AEC6

l2305AD62:
	addi	a4,zero,+000001FF
	bgeu	a4,s9,000000002305ACF6

l2305AD6A:
	beq	s9,s10,000000002305AD7E

l2305AD6E:
	lui	a0,000230BF
	c.mv	a1,s9
	addi	a0,a0,+00000104
	jal	ra,0000000023082388

l2305AD7C:
	c.j	000000002305AD7C

l2305AD7E:
	c.li	a2,00000010
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a0,000230BF
	addi	a0,a0,+00000134
	sb	zero,sp,+0000006C
	jal	ra,000000002308234C
	c.addi4spn	a0,0000005C
	jal	ra,000000002308234C
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	c.li	a2,00000004
	addi	a1,s0,+00000010
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a0,000230BF
	addi	a0,a0,+00000154
	sb	zero,sp,+00000060
	jal	ra,000000002308234C
	c.addi4spn	a0,0000005C
	jal	ra,000000002308234C
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	addi	a1,s8,-00000100
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A4978
	c.li	a2,00000004
	addi	a1,s0,+00000014
	c.mv	s11,a0
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.lwsp	s0,00000064
	lui	a0,000230BF
	addi	a0,a0,+00000174
	jal	ra,0000000023082388
	c.li	a2,00000010
	addi	a1,s0,+00000020
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a0,000230BF
	addi	a0,a0,+000001B0
	sb	zero,sp,+0000006C
	jal	ra,000000002308234C
	c.addi4spn	a0,0000005C
	jal	ra,000000002308234C
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	c.li	a2,00000010
	addi	a1,s0,+00000030
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a0,000230BF
	addi	a0,a0,+000001D0
	sb	zero,sp,+0000006C
	jal	ra,000000002308234C
	c.addi4spn	a0,0000005C
	jal	ra,000000002308234C
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	addi	s9,s0,+00000040
	addi	a2,zero,+00000020
	c.mv	a1,s9
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a0,000230BF
	addi	a0,a0,+000001F0
	sb	zero,sp,+0000007C
	addi	s10,zero,+00000020
	jal	ra,000000002308234C

l2305AE6E:
	c.addi4spn	a5,0000005C
	add	a4,a5,s2
	lbu	a1,a4,+00000000
	addi	a0,s6,+0000045C
	c.addi	s2,00000001
	jal	ra,0000000023082388
	bne	s2,s10,000000002305AE6E

l2305AE86:
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	addi	a2,zero,+00000020
	c.mv	a1,s9
	c.addi4spn	a0,0000003C
	jal	ra,00000000230A382C
	lui	a5,000230BF
	addi	a2,a5,-00000100
	bne	s11,zero,000000002305AEAE

l2305AEA6:
	lui	a2,000230BF
	addi	a2,a2,-000000FC

l2305AEAE:
	c.lwsp	s0,00000064
	lui	a0,000230BF
	addi	a0,a0,+0000020C
	addi	s1,s1,-00000200
	jal	ra,0000000023082388
	c.li	s9,00000000
	c.li	s2,00000001
	c.j	000000002305ACF6

l2305AEC6:
	c.lwsp	s0,000000C4
	beq	a4,s1,000000002305AEE8

l2305AECC:
	addi	a4,zero,+000001FF
	bgeu	a4,s9,000000002305ACF6

l2305AED4:
	beq	s9,s10,000000002305AEE8

l2305AED8:
	lui	a0,000230BF
	c.mv	a1,s9
	addi	a0,a0,+00000104
	jal	ra,0000000023082388

l2305AEE6:
	c.j	000000002305AEE6

l2305AEE8:
	lui	a0,000230BF
	c.mv	a3,s0
	add	a2,s7,s5
	c.mv	a1,s9
	addi	a0,a0,+00000244
	jal	ra,0000000023082388
	c.mv	a2,s9
	c.mv	a1,s0
	c.addi4spn	a0,000000A4
	jal	ra,000000002307A074
	c.lwsp	zero,00000044
	c.mv	a2,s9
	c.mv	a1,s5
	c.mv	a3,s0
	jal	ra,0000000023084BC0
	c.lwsp	s0,000000E4
	c.add	s5,s9
	c.li	s9,00000000
	bne	s1,a5,000000002305ACF6

l2305AF1C:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,000000A4
	jal	ra,000000002307A07C
	lui	a0,000230BF
	addi	a0,a0,+00000264
	jal	ra,000000002308234C
	addi	s11,zero,+00000020

l2305AF34:
	c.addi4spn	a5,0000001C
	c.add	a5,s9
	lbu	a1,a5,+00000000
	addi	a0,s6,+0000045C
	c.addi	s9,00000001
	jal	ra,0000000023082388
	bne	s9,s11,000000002305AF34

l2305AF4A:
	lui	a0,000230BF
	addi	a0,a0,+00000284
	jal	ra,000000002308234C
	c.li	s9,00000000
	addi	s11,zero,+00000020

l2305AF5C:
	c.addi4spn	a5,0000003C
	c.add	a5,s9
	lbu	a1,a5,+00000000
	addi	a0,s6,+0000045C
	c.addi	s9,00000001
	jal	ra,0000000023082388
	bne	s9,s11,000000002305AF5C

l2305AF72:
	addi	a0,s3,-00000700
	jal	ra,000000002308234C
	addi	a2,zero,+00000020
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,0000003C
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002305AF96

l2305AF88:
	lui	a0,000230BF
	addi	a0,a0,+000002A4
	jal	ra,0000000023082388
	c.j	000000002305AD24

l2305AF96:
	lui	a0,000230BF
	addi	a0,a0,+000002C8
	jal	ra,0000000023082388
	c.lwsp	s0,00000064
	lui	a0,000230BF
	addi	a0,a0,+000002F4
	c.swsp	a1,000000CC
	jal	ra,0000000023082388
	c.addi4spn	a0,00000080
	jal	ra,000000002306767C
	lui	a0,000230BF
	addi	a0,a0,+0000032C
	jal	ra,0000000023082388
	jal	ra,0000000023067AB0
	c.li	s9,00000000
	c.j	000000002305ACF6

;; ota_tcp_cmd: 2305AFCC
ota_tcp_cmd proc
	c.li	a5,00000002
	beq	a2,a5,000000002305AFE0

l2305AFD2:
	c.lw	a3,0(a1)
	lui	a0,000230BF
	addi	a0,a0,+00000344
	jal	zero,0000000023082388

l2305AFE0:
	c.mv	a0,a3
	jal	zero,000000002305AB00

;; bl_sys_ota_cli_init: 2305AFE6
;;   Called from:
;;     23000B14 (in aos_loop_proc)
bl_sys_ota_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; wifiprov_ccc_cfg_changed: 2305AFEA
wifiprov_ccc_cfg_changed proc
	c.jr	ra

;; __bl_ble_sync_task: 2305AFEC
__bl_ble_sync_task proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	c.mv	s0,a0
	lui	a0,000230CC
	addi	a0,a0,-00000574
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	jal	ra,000000002305D7D6
	c.lui	a0,00001000
	lui	a1,000230CC
	addi	a0,a0,-00000110
	c.li	a2,00000000
	addi	a1,a1,-0000056C
	c.add	a0,s0
	jal	ra,000000002305C0C0
	c.li	a5,00000001
	sw	a0,s0,+0000040C
	sb	a5,s0,+0000061E
	c.li	a4,00000003
	addi	a3,s0,+00000004
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002306120C
	c.sw	s0,0(a0)
	c.li	a4,00000000
	addi	a3,s0,+000000B0
	addi	a2,s0,+00000100
	addi	a1,zero,+00000104
	c.li	a0,00000002
	jal	ra,000000002306120C
	sw	a0,s0,+000000AC
	c.li	s1,00000000
	c.lui	s2,00002000
	lui	s3,00042026
	lui	s4,00042026
	lui	s5,0004200F
	lui	s6,000230BF
	lui	s7,000230BD
	lui	s8,000230BF

l2305B08A:
	lbu	a5,s0,+00000620
	c.beqz	a5,000000002305B0CC

l2305B090:
	c.lui	a5,00001000
	sb	zero,s0,+0000061E
	c.add	s0,a5
	lw	a0,s0,-00000118
	jal	ra,0000000023062720
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	lw	s3,sp,+0000012C
	lw	s4,sp,+00000128
	lw	s5,sp,+00000124
	lw	s6,sp,+00000120
	lw	s7,sp,+0000011C
	lw	s8,sp,+00000118
	c.addi16sp	00000140
	c.jr	ra

l2305B0CC:
	lw	a0,s0,+000000AC
	addi	a2,s2,+00000710
	c.addi4spn	a1,0000000C
	jal	ra,0000000023061684
	c.li	a5,00000001
	bne	a0,a5,000000002305B13E

l2305B0E0:
	lw	a0,s0,+00000684
	c.beqz	a0,000000002305B0F2

l2305B0E6:
	jal	ra,000000002304CA12
	c.addi	a0,FFFFFFFD
	slli	s1,a0,00000010
	c.srli	s1,00000010

l2305B0F2:
	lw	a2,sp,+0000010C
	lw	a0,s0,+0000040C
	c.mv	a3,s1
	c.addi4spn	a1,0000000C
	jal	ra,000000002305BE3C
	c.beqz	a0,000000002305B08A

l2305B104:
	lbu	a4,s3,+00000650
	c.li	a5,00000002
	bltu	a5,a4,000000002305B08A

l2305B10E:
	lbu	a4,s4,+00000651
	bltu	a5,a4,000000002305B08A

l2305B116:
	lw	a5,s5,+00000560
	c.beqz	a5,000000002305B138

l2305B11C:
	jal	ra,00000000230629C6

l2305B120:
	c.mv	a1,a0
	addi	a4,zero,+00000142
	addi	a3,s6,+000003D4
	addi	a2,s7,+0000032C
	addi	a0,s8,+000003E4
	jal	ra,000000002307A208
	c.j	000000002305B08A

l2305B138:
	jal	ra,00000000230629A4
	c.j	000000002305B120

l2305B13E:
	lw	a0,s0,+0000040C
	jal	ra,000000002305C10C
	c.j	000000002305B08A

;; scan_complete_cb: 2305B148
scan_complete_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000004BC
	c.lw	s0,0(a4)
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lui	s1,00002000
	sb	zero,a4,+0000061F
	add	a5,a4,s1
	lbu	a5,a5,-00000700
	addi	a3,zero,+00000031
	bltu	a3,a5,000000002305B19A

l2305B170:
	c.mv	a1,a0
	addi	a0,zero,+00000030
	add	a5,a5,a0
	c.lui	a0,00001000
	addi	a0,a0,-00000060
	addi	a2,zero,+00000030
	c.add	a0,a5
	c.add	a0,a4
	jal	ra,00000000230A382C
	c.lw	s0,0(a5)
	c.add	a5,s1
	lbu	a4,a5,-00000700
	c.addi	a4,00000001
	sb	a4,a5,+00000900

l2305B19A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; __recv_event: 2305B1A4
__recv_event proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,00042026
	lbu	a4,s1,+00000650
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.li	a5,00000002
	c.mv	s0,a1
	bltu	a5,a4,000000002305B212

l2305B1CE:
	lui	a4,00042026
	lbu	a4,a4,+00000651
	bltu	a5,a4,000000002305B212

l2305B1DA:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305B234

l2305B1E4:
	jal	ra,00000000230629C6

l2305B1E8:
	lw	a6,s0,+00000004
	lbu	a5,s0,+00000000
	lui	a3,000230BF
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+000000A0
	addi	a3,a3,+000003D4
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000450
	jal	ra,000000002307A208

l2305B212:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002305B29E

l2305B21C:
	c.lw	s0,4(a3)
	c.li	a5,00000002
	beq	a3,a5,000000002305B23A

l2305B224:
	c.li	a5,00000003
	beq	a3,a5,000000002305B27A

l2305B22A:
	c.li	a5,00000000
	beq	a3,a4,000000002305B266

l2305B230:
	c.li	a5,00000002
	c.j	000000002305B266

l2305B234:
	jal	ra,00000000230629A4
	c.j	000000002305B1E8

l2305B23A:
	lui	s1,0004200F
	addi	s1,s1,+000004BC
	c.lw	s1,0(a0)
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,a0,+00000621
	jal	ra,00000000230A3A68
	c.lw	s1,0(a0)
	sb	zero,a0,+00000641
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	addi	a0,a0,+00000621

l2305B260:
	jal	ra,00000000230A382C

l2305B264:
	c.li	a5,00000000

l2305B266:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2305B27A:
	lui	s1,0004200F
	addi	s1,s1,+000004BC
	c.lw	s1,0(a0)
	addi	a2,zero,+00000040
	c.li	a1,00000000
	addi	a0,a0,+00000642
	jal	ra,00000000230A3A68
	c.lw	s1,0(a0)
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	addi	a0,a0,+00000642
	c.j	000000002305B260

l2305B29E:
	c.bnez	a4,000000002305B264

l2305B2A0:
	c.lw	s0,4(a5)
	c.li	a4,0000000A
	c.addi	a5,FFFFFFFD
	bltu	a4,a5,000000002305B230

l2305B2AA:
	lui	a4,000230BF
	c.slli	a5,02
	addi	a4,a4,+000003A8
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2305B2BA                               B7 F7 00 42 03 A5           ...B..
2305B2C0 C7 4B 83 27 85 41 13 05 15 62 9C 43 C1 DF 82 97 .K.'.A...b.C....
2305B2D0 51 BF B7 F7 00 42 83 A7 C7 4B 83 A7 87 41 DC 43 Q....B...K...A.C
2305B2E0 D1 D3 82 97 41 B7 B7 F7 00 42 83 A7 C7 4B 83 A6 ....A....B...K..
2305B2F0 87 41 98 46 25 DB 09 67 3E 97 23 10 07 90 05 47 .A.F%..g>.#....G
2305B300 A3 8F E7 60 37 B5 05 23 9C 46 13 05 85 14 C1 B7 ...`7..#.F......
2305B310 B7 F9 00 42 83 AA C9 4B 09 67 93 89 C9 4B 56 97 ...B...K.g...KV.
2305B320 03 46 07 90 85 47 21 D2 03 44 17 90 83 C6 04 65 .F...G!..D.....e
2305B330 63 19 86 04 23 10 07 90 89 47 E3 E5 D7 F2 37 67 c...#....G....7g
2305B340 02 42 03 47 17 65 E3 EF E7 F0 B7 F7 00 42 83 A7 .B.G.e.......B..
2305B350 07 56 8D C7 EF 70 20 67 AA 85 B7 F6 0B 23 37 D6 .V...p g.....#7.
2305B360 0B 23 37 F5 0B 23 13 07 20 0D 93 86 46 3D 13 06 .#7..#.. ...F=..
2305B370 C6 32 13 05 C5 47 EF E0 31 69 ED B5 EF 70 80 62 .2...G..1i...p.b
2305B380 E1 BF 89 47 63 EB D7 04 37 67 02 42 03 47 17 65 ...Gc...7g.B.G.e
2305B390 63 E5 E7 04 B7 F7 00 42 83 A7 07 56 63 86 07 12 c......B...Vc...
2305B3A0 EF 70 60 62 03 A7 09 00 89 67 37 D6 0B 23 3E 97 .p`b.....g7..#>.
2305B3B0 83 47 17 90 AA 85 37 F5 0B 23 93 86 17 00 A3 00 .G....7..#......
2305B3C0 D7 90 B7 F6 0B 23 13 07 60 0D 93 86 46 3D 13 06 .....#..`...F=..
2305B3D0 C6 32 13 05 05 4A EF E0 31 63 13 09 00 03 33 09 .2...J..1c....3.
2305B3E0 24 03 05 6A EF 20 E0 5F B7 F5 0B 23 AA 84 93 85 $..j. ._...#....
2305B3F0 45 4C 68 00 33 84 2A 01 52 94 83 48 94 FC 03 48 ELh.3.*.R..H...H
2305B400 84 FC 03 47 64 FC 83 46 54 FC 83 47 74 FC 03 46 ...Gd..FT..Gt..F
2305B410 44 FC EF 60 72 7A 03 45 A4 FC EF 70 F4 50 EF 20 D..`rz.E...p.P. 
2305B420 00 56 B7 F5 0B 23 2A 86 93 85 45 4E 26 85 EF 20 .V...#*...EN&.. 
2305B430 40 51 68 00 EF 20 40 58 B7 F5 0B 23 2A 86 93 85 @Qh.. @X...#*...
2305B440 C5 4E 26 85 EF 20 E0 4F 03 05 C4 FC EF 70 14 43 .N&.. .O.....p.C
2305B450 EF 20 E0 52 B7 F5 0B 23 2A 86 93 85 45 4F 26 85 . .R...#*...EO&.
2305B460 EF 20 20 4E 13 05 0A FA 4A 95 56 95 EF 20 C0 54 .  N....J.V.. .T
2305B470 B7 F5 0B 23 2A 86 93 85 C5 99 26 85 EF 20 60 4C ...#*.....&.. `L
2305B480 03 45 B4 FC EF 70 54 4A EF 20 60 4F B7 D5 0B 23 .E...pTJ. `O...#
2305B490 2A 86 93 85 85 B8 26 85 EF 20 A0 4A 26 85 EF 20 *.....&.. .J&.. 
2305B4A0 C0 45 83 A7 09 00 2A 84 03 A9 C7 40 EF 80 54 57 .E....*....@..TW
2305B4B0 2A 86 A2 85 4A 85 EF 00 D0 3C 26 85 EF 20 60 35 *...J....<&.. `5
2305B4C0 22 85 EF 90 00 4B 79 BB EF 70 C0 4D E1 BD B7 F7 "....Ky..p.M....
2305B4D0 00 42 03 A7 C7 4B 83 27 07 41 E3 85 07 D8 03 25 .B...K.'.A.....%
2305B4E0 47 41 F5 B3 37 F4 00 42 13 04 C4 4B 1C 40 83 A7 GA..7..B...K.@..
2305B4F0 87 41 DC 47 E3 88 07 D6 37 B5 05 23 13 05 45 62 .A.G....7..#..Eb
2305B500 82 97 1C 40 89 65 93 85 05 71 88 43 EF 60 40 2C ...@.e...q.C.`@,
2305B510 05 47 89 47 E3 19 E5 D4 10 40 B7 F5 0B 23 93 85 .G.G.....@...#..
2305B520 45 4C 83 48 A6 0A 03 48 96 0A 03 47 76 0A 83 46 EL.H...H...Gv..F
2305B530 66 0A 83 47 86 0A 03 46 56 0A 68 00 EF 60 D2 67 f..G...FV.h..`.g
2305B540 EF 20 20 4A 1C 40 AA 84 03 C5 B7 0A EF 70 D4 3D .  J.@.......p.=
2305B550 EF 20 E0 42 B7 F5 0B 23 2A 86 93 85 C5 4F 26 85 . .B...#*....O&.
2305B560 EF 20 20 3E 08 40 13 05 45 05 EF 20 E0 44 B7 F5 .  >.@..E.. .D..
2305B570 0B 23 2A 86 93 85 45 50 26 85 EF 20 80 3C 08 40 .#*...EP&.. .<.@
2305B580 13 05 45 06 EF 20 40 43 B7 F5 0B 23 2A 86 93 85 ..E.. @C...#*...
2305B590 85 50 26 85 EF 20 E0 3A 08 40 13 05 45 07 EF 20 .P&.. .:.@..E.. 
2305B5A0 A0 41 B7 F5 0B 23 2A 86 93 85 C5 50 26 85 EF 20 .A...#*....P&.. 
2305B5B0 40 39 08 40 13 05 45 08 EF 20 00 40 B7 F5 0B 23 @9.@..E.. .@...#
2305B5C0 2A 86 93 85 C5 99 26 85 EF 20 A0 37 68 00 EF 20 *.....&.. .7h.. 
2305B5D0 A0 3E B7 F5 0B 23 2A 86 93 85 C5 4E 26 85 EF 20 .>...#*....N&.. 
2305B5E0 40 36 26 85 EF 20 60 31 1C 40 2A 89 03 A4 C7 40 @6&.. `1.@*....@
2305B5F0 EF 80 14 43 2A 86 CA 85 22 85 EF 00 90 28 26 85 ...C*..."....(&.
2305B600 EF 20 20 21 4A 85 75 BD B7 F7 00 42 83 A7 C7 4B .  !J.u....B...K
2305B610 B7 F5 0B 23 1D 46 03 A5 C7 40 93 85 45 51 EF 00 ...#.F...@..EQ..
2305B620 50 26 89 B1                                     P&..           

;; wifi_state_get_cb: 2305B624
wifi_state_get_cb proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	lw	s0,a5,+000004BC
	c.mv	a1,a0
	addi	a2,zero,+00000058
	addi	a0,s0,+00000054
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061344

;; write_data: 2305B652
write_data proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200F
	lw	a5,s1,+000004BC
	lui	a4,00042026
	c.swsp	s0,00000014
	c.mv	s0,a3
	lbu	a3,a4,+00000650
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	sw	a0,a5,+00000684
	c.li	a5,00000002
	c.mv	s5,a2
	addi	s1,s1,+000004BC
	bltu	a5,a3,000000002305B696

l2305B688:
	lui	s7,00042026
	c.mv	s4,a4
	lbu	a4,s7,+00000651
	bgeu	a5,a4,000000002305B6D2

l2305B696:
	c.lw	s1,0(a0)
	c.mv	a2,s0
	c.mv	a1,s5
	sw	s0,a0,+00000408
	addi	a0,a0,+00000308
	jal	ra,00000000230A382C
	c.lw	s1,0(a5)
	c.li	a3,00000000
	c.li	a2,00000000
	lw	a0,a5,+000000AC
	addi	a1,a5,+00000308
	jal	ra,0000000023061344
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

l2305B6D2:
	lui	a5,0004200F
	lw	a4,a5,+00000560
	c.mv	s6,a5
	c.beqz	a4,000000002305B758

l2305B6DE:
	jal	ra,00000000230629C6

l2305B6E2:
	lui	s3,000230BF
	lui	s2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	c.mv	a5,s0
	addi	a4,zero,+0000007C
	addi	a3,s3,+000003D4
	addi	a2,s2,+0000032C
	addi	a0,a0,+00000650
	jal	ra,000000002307A208
	lbu	a4,s4,+00000650
	c.li	a5,00000002
	c.mv	s4,s3
	c.mv	s3,s2
	bltu	a5,a4,000000002305B696

l2305B714:
	lbu	a4,s7,+00000651
	bltu	a5,a4,000000002305B696

l2305B71C:
	lw	a5,s6,+00000560
	c.beqz	a5,000000002305B75E

l2305B722:
	jal	ra,00000000230629C6

l2305B726:
	lui	s2,000230C7
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a3,s4,+000003D4
	addi	a2,s3,+0000032C
	addi	a5,s2,+000003C8
	addi	a4,zero,+0000007D
	addi	a0,a0,+00000678
	jal	ra,000000002307A208
	c.mv	a3,s0
	c.mv	a2,s5
	c.li	a1,00000010
	addi	a0,s2,+000003C8
	jal	ra,000000002305A8BA
	c.j	000000002305B696

l2305B758:
	jal	ra,00000000230629A4
	c.j	000000002305B6E2

l2305B75E:
	jal	ra,00000000230629A4
	c.j	000000002305B726

;; __ble_bytes_send: 2305B764
__ble_bytes_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s1,s1,+000004BC
	c.lw	s1,0(a5)
	c.li	a0,FFFFFFFF
	lw	a4,a5,+00000684
	c.beqz	a4,000000002305B7D4

l2305B788:
	addi	a4,zero,+000000FF
	c.mv	s0,a2
	bltu	a4,a2,000000002305B7D4

l2305B792:
	addi	a0,a5,+0000041C
	c.mv	s3,a1
	jal	ra,00000000230A382C
	c.lw	s1,0(a5)
	lui	a4,00042026
	slli	s4,s0,00000010
	lbu	a3,a4,+00000650
	srli	s4,s4,00000010
	sh	s4,a5,+0000061C
	c.li	a5,00000002
	c.mv	s2,a4
	bltu	a5,a3,000000002305B7C6

l2305B7BA:
	lui	s6,00042026
	lbu	a4,s6,+00000651
	bgeu	a5,a4,000000002305B7E8

l2305B7C6:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,0000000023082388
	c.li	a0,00000000

l2305B7D4:
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

l2305B7E8:
	lui	a5,0004200F
	lw	a4,a5,+00000560
	c.mv	s5,a5
	c.beqz	a4,000000002305B86C

l2305B7F4:
	jal	ra,00000000230629C6

l2305B7F8:
	c.mv	a5,s0
	lui	s1,000230BF
	c.mv	a1,a0
	lui	s0,000230BD
	lui	a0,000230BF
	addi	a4,zero,+00000091
	addi	a3,s1,+000003D4
	addi	a2,s0,+0000032C
	addi	a0,a0,+00000414
	jal	ra,000000002307A208
	lbu	a4,s2,+00000650
	c.li	a5,00000002
	c.mv	s2,s1
	bltu	a5,a4,000000002305B7C6

l2305B828:
	lbu	a4,s6,+00000651
	bltu	a5,a4,000000002305B7C6

l2305B830:
	lw	a5,s5,+00000560
	c.beqz	a5,000000002305B872

l2305B836:
	jal	ra,00000000230629C6

l2305B83A:
	lui	s1,000230C7
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a3,s2,+000003D4
	addi	a2,s0,+0000032C
	addi	a5,s1,+000003C8
	addi	a4,zero,+00000093
	addi	a0,a0,+00000678
	jal	ra,000000002307A208
	c.mv	a3,s4
	c.mv	a2,s3
	c.li	a1,00000010
	addi	a0,s1,+000003C8
	jal	ra,000000002305A8BA
	c.j	000000002305B7C6

l2305B86C:
	jal	ra,00000000230629A4
	c.j	000000002305B7F8

l2305B872:
	jal	ra,00000000230629A4
	c.j	000000002305B83A

;; blsync_disconnected: 2305B878
blsync_disconnected proc
	lui	a0,000230BF
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000005CC
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	lui	a5,0004200F
	sw	zero,a5,+000004B8
	c.addi	sp,00000010
	c.jr	ra

;; blsync_exchange_func: 2305B896
blsync_exchange_func proc
	c.beqz	a1,000000002305B8AC

l2305B898:
	lui	a1,000230C8
	addi	a1,a1,-00000340

l2305B8A0:
	lui	a0,000230BF
	addi	a0,a0,+000005EC
	jal	zero,0000000023082388

l2305B8AC:
	lui	a1,000230BD
	addi	a1,a1,-00000698
	c.j	000000002305B8A0

;; read_data: 2305B8B6
read_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	lw	a5,s0,+000004BC
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lhu	a5,a5,+0000061C
	c.beqz	a5,000000002305B970

l2305B8D4:
	lui	a5,00042026
	c.mv	s5,a4
	lbu	a4,a5,+00000650
	c.li	a5,00000002
	addi	s0,s0,+000004BC
	c.mv	s4,a3
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s1,a0
	bltu	a5,a4,000000002305B932

l2305B8F0:
	lui	a4,00042026
	lbu	a4,a4,+00000651
	bltu	a5,a4,000000002305B932

l2305B8FC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305B96A

l2305B906:
	jal	ra,00000000230629C6

l2305B90A:
	c.lw	s0,0(a5)
	lui	a3,000230BF
	lui	a2,000230BD
	lhu	a5,a5,+0000061C
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+0000006D
	addi	a3,a3,+000003D4
	addi	a2,a2,+0000032C
	addi	a0,a0,+000005FC
	jal	ra,000000002307A208

l2305B932:
	c.lw	s0,0(a5)
	lw	a0,a5,+0000040C
	c.jal	000000002305C060
	c.lw	s0,0(a5)
	c.mv	a4,s5
	c.mv	a3,s4
	lhu	a6,a5,+0000061C
	c.mv	a2,s3
	addi	a5,a5,+0000041C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002304C3DA
	c.lw	s0,0(a5)
	sh	zero,a5,+0000061C

l2305B958:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2305B96A:
	jal	ra,00000000230629A4
	c.j	000000002305B90A

l2305B970:
	c.li	a0,FFFFFFFC
	c.j	000000002305B958

;; blsync_connected: 2305B974
blsync_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a1,000230BF
	c.mv	s1,a0
	lui	a0,000230AC
	addi	a1,a1,+0000043C
	addi	a0,a0,-000004B4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023082388
	c.lui	a2,00001000
	lui	s0,0004200F
	addi	a2,a2,-000007B8
	addi	a1,zero,+000000FB
	c.mv	a0,s1
	sw	s1,s0,+000004B8
	jal	ra,000000002304F304
	addi	s0,s0,+000004B8
	c.bnez	a0,000000002305B9F0

l2305B9B0:
	lui	a0,000230BF
	addi	a0,a0,+0000054C
	jal	ra,0000000023082388

l2305B9BC:
	c.lw	s0,0(a0)
	lui	a1,00042026
	lui	a5,0002305C
	addi	a4,a1,+00000654
	addi	a5,a5,-0000076A
	addi	a1,a1,+00000654
	c.sw	a4,24(a5)
	jal	ra,000000002304CBC0
	c.mv	a1,a0
	c.bnez	a0,000000002305BA00

l2305B9DC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230BF
	addi	a0,a0,+0000058C
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2305B9F0:
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a0,a0,+00000568
	jal	ra,0000000023082388
	c.j	000000002305B9BC

l2305BA00:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230BF
	addi	a0,a0,+000005A8
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; bl_ble_sync_start: 2305BA14
;;   Called from:
;;     230010D2 (in blsync_ble_start)
bl_ble_sync_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.beqz	a0,000000002305BA24

l2305BA20:
	c.mv	s1,a1
	c.bnez	a1,000000002305BA84

l2305BA24:
	lui	a5,00042026
	lbu	a4,a5,+00000650
	c.li	a5,00000002
	c.li	a0,FFFFFFFF
	bltu	a5,a4,000000002305BA72

l2305BA34:
	lui	a4,00042026
	lbu	a4,a4,+00000651
	bltu	a5,a4,000000002305BA72

l2305BA40:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305BA7E

l2305BA4A:
	jal	ra,00000000230629C6

l2305BA4E:
	c.mv	a1,a0
	lui	a3,000230BF
	lui	a2,000230BD
	lui	a0,000230BF
	addi	a0,a0,+0000051C
	addi	a4,zero,+0000016D
	addi	a3,a3,+000003D4
	addi	a2,a2,+0000032C
	jal	ra,000000002307A208
	c.li	a0,FFFFFFFF

l2305BA72:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305BA7E:
	jal	ra,00000000230629A4
	c.j	000000002305BA4E

l2305BA84:
	c.mv	s2,a2
	c.lui	a2,00002000
	addi	a2,a2,-000006F8
	c.li	a1,00000000
	c.mv	s0,a0
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	sw	s0,a5,+000004BC
	lui	a5,0004200F
	c.lwsp	a2,000000A4
	addi	a5,a5,+000004C0
	c.lw	a5,0(a4)
	sw	s1,s0,+00000418
	sw	s2,s0,+00000410
	sw	a3,s0,+00000414
	sh	zero,s0,+0000061E
	sb	zero,s0,+00000620
	c.bnez	a4,000000002305BAD0

l2305BAC0:
	lui	a0,0004200E
	c.li	a4,00000001
	addi	a0,a0,+000000EC
	c.sw	a5,0(a4)
	jal	ra,000000002304A716

l2305BAD0:
	lui	a0,000230BF
	addi	a0,a0,+00000644
	jal	ra,000000002304C64A
	c.lui	s1,00001000
	addi	a6,s1,-00000178
	lui	a1,000230BF
	lui	a0,0002305B
	c.add	a6,s0
	addi	a5,s0,+00000688
	c.mv	a3,s0
	c.li	a4,0000000A
	addi	a2,zero,+00000200
	addi	a1,a1,+00000548
	addi	a0,a0,-00000014
	jal	ra,0000000023062604
	c.add	s0,s1
	sw	a0,s0,+00000EE8
	c.li	a0,00000000
	c.j	000000002305BA72

;; bl_ble_sync_stop: 2305BB0E
;;   Called from:
;;     23001058 (in app_delayed_action_bleadvstop)
bl_ble_sync_stop proc
	c.beqz	a0,000000002305BB92

l2305BB10:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230BF
	addi	a0,a0,+00000644
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002304C38A
	c.li	a5,00000001
	sb	a5,s0,+00000620
	jal	ra,0000000023063372
	lui	s1,0004200F
	lw	a5,s1,+000004BC
	c.lui	a4,00001000
	addi	s1,s1,+000004BC
	c.add	a5,a4
	lw	a5,a5,-00000118
	c.li	s2,00000001
	bne	a5,a0,000000002305BB7E

l2305BB4C:
	c.lw	s1,0(a5)
	lbu	a5,a5,+0000061F
	beq	a5,s2,000000002305BB70

l2305BB56:
	c.lui	a0,00001000
	c.add	s0,a0
	lw	a0,s0,-00000118
	jal	ra,0000000023062720

l2305BB62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2305BB70:
	c.li	a0,0000000A
	jal	ra,0000000023062CC4
	c.j	000000002305BB4C

l2305BB78:
	c.li	a0,0000000A
	jal	ra,0000000023062CC4

l2305BB7E:
	c.lw	s1,0(a5)
	lbu	a5,a5,+0000061F
	beq	a5,s2,000000002305BB78

l2305BB88:
	lbu	a5,s0,+0000061E
	beq	a5,s2,000000002305BB78

l2305BB90:
	c.j	000000002305BB62

l2305BB92:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; __malloc: 2305BB96
;;   Called from:
;;     2305BCCE (in __protocol_send)
;;     2305BFAC (in pro_trans_read)
;;     2305C046 (in pro_trans_read)
__malloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,000000002305BBEE

l2305BBA4:
	lui	a5,00042026
	lbu	a4,a5,+00000650
	c.li	a5,00000002
	bltu	a5,a4,000000002305BBEE

l2305BBB2:
	lui	a4,00042026
	lbu	a4,a4,+00000670
	bltu	a5,a4,000000002305BBEE

l2305BBBE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305BBF8

l2305BBC8:
	jal	ra,00000000230629C6

l2305BBCC:
	lui	a3,000230BF
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	c.mv	a5,s0
	c.li	a4,0000001E
	addi	a3,a3,+000006B4
	addi	a2,a2,+0000032C
	addi	a0,a0,+000006C0
	jal	ra,000000002307A208

l2305BBEE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305BBF8:
	jal	ra,00000000230629A4
	c.j	000000002305BBCC

;; __free: 2305BBFE
;;   Called from:
;;     2305BC72 (in __clear_dev)
;;     2305BDE6 (in __protocol_send)
;;     2305BFDC (in pro_trans_read)
__free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002305BC52

l2305BC08:
	lui	a5,00042026
	lbu	a4,a5,+00000650
	c.li	a5,00000002
	bltu	a5,a4,000000002305BC52

l2305BC16:
	lui	a4,00042026
	lbu	a4,a4,+00000670
	bltu	a5,a4,000000002305BC52

l2305BC22:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305BC5E

l2305BC2C:
	jal	ra,00000000230629C6

l2305BC30:
	lui	a3,000230BF
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	c.mv	a5,s0
	c.li	a4,00000014
	addi	a3,a3,+000006B4
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000694
	jal	ra,000000002307A208

l2305BC52:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

l2305BC5E:
	jal	ra,00000000230629A4
	c.j	000000002305BC30

;; __clear_dev: 2305BC64
;;   Called from:
;;     2305BEB6 (in pro_trans_read)
;;     2305BF6C (in pro_trans_read)
;;     2305BFA6 (in pro_trans_read)
;;     2305C024 (in pro_trans_read)
;;     2305C10C (in pro_trans_reset)
__clear_dev proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	sw	zero,a0,+00000038
	c.lw	a0,36(a0)
	jal	ra,000000002305BBFE
	c.lwsp	a2,00000020
	sw	zero,s0,+00000024
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; __protocol_send: 2305BC82
;;   Called from:
;;     2305BFD2 (in pro_trans_read)
__protocol_send proc
	c.addi16sp	FFFFFFA0
	c.swsp	s4,00000024
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
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
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	sb	zero,sp,+0000001C
	sb	a1,sp,+0000001D
	sh	zero,sp,+0000001E
	c.mv	s11,a0
	c.mv	s4,a5
	c.beqz	a2,000000002305BCBA

l2305BCB4:
	c.li	a5,00000008
	sb	a5,sp,+0000001C

l2305BCBA:
	lbu	a5,sp,+0000001C
	lhu	a0,s11,+0000003C
	c.li	s3,FFFFFFFD
	c.andi	a5,0000000F
	ori	a5,a5,+00000010
	sb	a5,sp,+0000001C
	jal	ra,000000002305BB96
	c.mv	s8,a0
	beq	a0,zero,000000002305BDEA

l2305BCD8:
	srli	a5,s4,00000008
	c.lui	s0,00002000
	c.swsp	a5,00000000
	c.li	s10,00000000
	andi	s1,s4,+000000FF
	addi	s6,a0,+00000006
	c.li	s2,00000001
	addi	s7,a0,+00000004
	addi	s0,s0,+00000710

l2305BCF4:
	c.li	a5,00000004
	sb	a5,sp,+0000001B
	lhu	a7,s11,+0000003C
	beq	s10,zero,000000002305BE0A

l2305BD02:
	c.addi	a7,FFFFFFFC
	c.slli	a7,10
	c.mv	s5,s7
	srai	a7,a7,00000010
	c.li	s9,00000004

l2305BD0E:
	lbu	a5,sp,+0000001B
	lw	a0,s11,+00000000
	c.addi	a7,FFFFFFFF
	c.addi	a5,00000001
	sb	a5,sp,+0000001B
	c.lw	a0,20(a5)
	c.lwsp	tp,00000084
	c.lw	a0,24(a0)
	lw	t4,a5,+00000004
	c.lwsp	s0,000000E4
	sub	a6,s1,s10
	c.slli	a7,10
	addi	a4,sp,+0000001B
	srai	a7,a7,00000010
	andi	a6,a6,+000000FF
	c.add	a5,s10
	addi	a3,s5,+00000001
	c.li	a1,00000001
	c.jalr	t4
	lw	a4,s11,+00000000
	c.mv	s3,a0
	sb	zero,a4,+00000010
	blt	a0,zero,000000002305BDE4

l2305BD54:
	andi	a2,a0,+000000FF
	c.add	s10,a2
	c.slli	s10,10
	srli	s10,s10,00000010
	bltu	s10,s4,000000002305BE30

l2305BD64:
	bne	s4,s10,000000002305BE34

l2305BD68:
	lhu	a4,sp,+0000001E
	c.lui	a3,FFFF8000
	c.or	a4,a3
	sh	a4,sp,+0000001E
	c.li	a3,00000001

l2305BD76:
	bgeu	a2,s4,000000002305BD86

l2305BD7A:
	lbu	a4,sp,+0000001C
	ori	a4,a4,+00000002
	sb	a4,sp,+0000001C

l2305BD86:
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	c.mv	a0,s8
	c.swsp	a3,00000084
	jal	ra,00000000230A382C
	lhu	a4,sp,+0000001E
	c.mv	a1,s8
	c.li	a0,00000000
	sb	a4,s8,+00000002
	c.srli	a4,00000008
	sb	a4,s8,+00000003
	lbu	a4,sp,+0000001B
	c.addi	a4,FFFFFFFF
	sub	s9,a4,s9
	sb	s9,s5,+00000000
	lw	a4,s11,+000000A4
	lbu	a2,sp,+0000001B
	c.lw	a4,0(a4)
	c.jalr	a4
	lbu	a4,sp,+0000001D
	lw	a0,s11,+00000050
	c.mv	a1,s0
	c.addi	a4,00000001
	sb	a4,sp,+0000001D
	lhu	a4,sp,+0000001E
	c.addi	a4,00000001
	sh	a4,sp,+0000001E
	jal	ra,00000000230617D0
	bne	a0,s2,000000002305BE38

l2305BDE0:
	c.lwsp	a2,000000A4
	c.beqz	a3,000000002305BCF4

l2305BDE4:
	c.mv	a0,s8
	jal	ra,000000002305BBFE

l2305BDEA:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s3
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

l2305BE0A:
	c.lwsp	zero,000000E4
	sb	s1,s8,+00000004
	c.addi	a7,FFFFFFFA
	sb	a5,s8,+00000005
	c.li	a5,00000006
	sb	a5,sp,+0000001B
	lw	a5,s11,+00000000
	c.slli	a7,10
	c.mv	s5,s6
	srai	a7,a7,00000010
	sb	s2,a5,+00000010
	c.li	s9,00000006
	c.j	000000002305BD0E

l2305BE30:
	c.li	a3,00000000
	c.j	000000002305BD76

l2305BE34:
	c.li	s3,FFFFFFFE
	c.j	000000002305BDE4

l2305BE38:
	c.li	s3,FFFFFFFC
	c.j	000000002305BDE4

;; pro_trans_read: 2305BE3C
;;   Called from:
;;     2305B0FE (in __bl_ble_sync_task)
pro_trans_read proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.li	s2,FFFFFFFE
	c.beqz	a0,000000002305BF08

l2305BE4C:
	c.mv	s1,a1
	c.li	s2,FFFFFFFE
	c.beqz	a1,000000002305BF08

l2305BE52:
	sh	a3,a0,+0000003C
	c.mv	s2,a2
	c.mv	s0,a0
	c.li	a2,00000002
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	lbu	a5,sp,+0000000C
	c.andi	a5,00000001
	c.beqz	a5,000000002305BF1E

l2305BE6A:
	lbu	s3,sp,+0000000D
	lbu	a5,s0,+00000020
	beq	a5,s3,000000002305BE84

l2305BE76:
	jal	ra,00000000230629A4
	c.sw	s0,72(a0)
	sw	zero,s0,+0000004C
	sb	s3,s0,+00000020

l2305BE84:
	c.lw	s0,72(a5)
	c.lw	s0,76(a4)
	c.or	a5,a4
	c.beqz	a5,000000002305BF1E

l2305BE8C:
	jal	ra,00000000230629A4
	c.lw	s0,72(a4)
	c.lw	s0,76(a5)
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a5,zero,a5
	sub	a0,a5,a0
	blt	zero,a0,000000002305BEB4

l2305BEA8:
	c.bnez	a0,000000002305BF1E

l2305BEAA:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bgeu	a5,a4,000000002305BF1E

l2305BEB4:
	c.mv	a0,s0
	jal	ra,000000002305BC64
	lui	a5,00042026
	lbu	a4,a5,+00000650
	c.li	a5,00000002
	c.li	s2,FFFFFFFC
	bltu	a5,a4,000000002305BF08

l2305BECA:
	lui	a4,00042026
	lbu	a4,a4,+00000670
	bltu	a5,a4,000000002305BF08

l2305BED6:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002305BF18

l2305BEE0:
	jal	ra,00000000230629C6

l2305BEE4:
	c.mv	a1,a0
	lui	a3,000230BF
	lui	a2,000230BD
	lui	a0,000230BF
	addi	a4,zero,+00000145
	addi	a3,a3,+000006B4
	addi	a2,a2,+0000032C
	addi	a0,a0,+000006E0
	jal	ra,000000002307A208
	c.li	s2,FFFFFFFC

l2305BF08:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2305BF18:
	jal	ra,00000000230629A4
	c.j	000000002305BEE4

l2305BF1E:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	lbu	s3,sp,+0000000C
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000E
	srli	s3,s3,00000004
	c.slli	a5,11
	addi	a2,s2,-00000004
	andi	s3,s3,+00000003
	lbu	s2,s1,+00000004
	c.bnez	a5,000000002305BFE6

l2305BF46:
	lbu	a6,s1,+00000005
	c.addi	s1,00000007
	c.slli	a6,08
	or	a6,a6,s2
	sh	a6,s0,+0000003A
	lbu	s2,s1,-00000001
	addi	a5,s2,+00000003
	beq	a2,a5,000000002305BF66

l2305BF62:
	c.li	s2,FFFFFFFE
	c.j	000000002305BFB6

l2305BF66:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002305BF70

l2305BF6A:
	c.mv	a0,s0
	jal	ra,000000002305BC64

l2305BF70:
	lhu	a0,s0,+0000003A
	c.bnez	a0,000000002305BFAC

l2305BF76:
	c.lw	s0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000010

l2305BF7E:
	c.lw	s0,0(a0)
	c.lw	s0,36(a2)
	lhu	a3,s0,+00000038
	c.lw	a0,20(a5)
	c.lw	a0,24(a0)
	c.mv	a6,s2
	lw	a7,a5,+00000000
	c.add	a3,a2
	c.mv	a5,s1
	addi	a4,sp,+0000000A
	addi	a2,sp,+0000000B
	c.mv	a1,s3
	c.jalr	a7
	c.mv	s2,a0
	c.beqz	a0,000000002305BFF8

l2305BFA4:
	c.mv	a0,s0
	jal	ra,000000002305BC64
	c.j	000000002305BFB6

l2305BFAC:
	jal	ra,000000002305BB96
	c.sw	s0,36(a0)
	c.bnez	a0,000000002305BF76

l2305BFB4:
	c.li	s2,FFFFFFFD

l2305BFB6:
	lbu	a5,sp,+0000000C
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002305BFD6

l2305BFC0:
	lbu	a5,s0,+0000003E
	c.lw	s0,64(a4)
	lbu	a1,sp,+0000000D
	andi	a3,s2,+000000FF
	c.li	a2,00000001
	c.mv	a0,s0
	jal	ra,000000002305BC82

l2305BFD6:
	c.lw	s0,64(a0)
	sh	zero,s0,+0000003E
	jal	ra,000000002305BBFE
	sw	zero,s0,+00000040
	c.j	000000002305BF08

l2305BFE6:
	addi	a5,s2,+00000001
	c.addi	s1,00000005
	bne	a2,a5,000000002305BF62

l2305BFF0:
	c.lw	s0,0(a5)
	sb	zero,a5,+00000010
	c.j	000000002305BF7E

l2305BFF8:
	lbu	a4,sp,+0000000A
	lhu	a5,s0,+00000038
	c.add	a5,a4
	lbu	a4,sp,+0000000C
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000038
	c.andi	a4,00000002
	c.beqz	a4,000000002305C01A

l2305C012:
	lh	a4,sp,+0000000E
	bge	a4,zero,000000002305BFB6

l2305C01A:
	lhu	a4,s0,+0000003A
	beq	a4,a5,000000002305C02A

l2305C022:
	c.mv	a0,s0
	jal	ra,000000002305BC64
	c.j	000000002305BF62

l2305C02A:
	lbu	a4,sp,+0000000B
	c.swsp	a5,0000008C
	lw	a5,s0,+000000A4
	c.swsp	a4,00000088
	c.lw	s0,36(a4)
	sb	s3,sp,+00000010
	c.swsp	a4,0000000C
	c.lw	a5,4(a5)
	c.beqz	a5,000000002305BFA4

l2305C042:
	addi	a0,zero,+00000100
	jal	ra,000000002305BB96
	c.sw	s0,64(a0)
	c.beqz	a0,000000002305BFB4

l2305C04E:
	lw	a5,s0,+000000A4
	lw	a0,s0,+000000A8
	c.addi4spn	a1,00000010
	c.lw	a5,4(a5)
	c.jalr	a5
	c.mv	s2,a0
	c.j	000000002305BFA4

;; pro_trans_ack: 2305C060
;;   Called from:
;;     2305B938 (in read_data)
pro_trans_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,80(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a5,00000001
	beq	a0,a5,000000002305C07E

l2305C076:
	c.li	a0,00000002

l2305C078:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2305C07E:
	c.li	a0,00000000
	c.j	000000002305C078

;; pro_trans_layer_ack_read: 2305C082
pro_trans_layer_ack_read proc
	c.beqz	a0,000000002305C0BA

l2305C084:
	c.li	a5,FFFFFFFE
	c.beqz	a1,000000002305C0BC

l2305C088:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a3,zero,+00000100
	c.mv	s1,a2
	bltu	a3,a2,000000002305C0AE

l2305C09A:
	c.lw	a0,64(a3)
	c.li	a5,FFFFFFFD
	c.beqz	a3,000000002305C0AE

l2305C0A0:
	c.mv	s0,a0
	c.mv	a0,a3
	jal	ra,00000000230A382C
	c.li	a5,00000000
	sh	s1,s0,+0000003E

l2305C0AE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2305C0BA:
	c.li	a5,FFFFFFFE

l2305C0BC:
	c.mv	a0,a5
	c.jr	ra

;; pro_trans_init: 2305C0C0
;;   Called from:
;;     2305B036 (in __bl_ble_sync_task)
pro_trans_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+000000B0
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	addi	a1,s0,+00000004
	c.mv	a0,a1
	c.jal	000000002305C1B8
	c.sw	s0,0(a0)
	sw	s2,s0,+000000A4
	sw	s1,s0,+000000A8
	addi	a3,s0,+00000054
	c.li	a4,00000003
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002306120C
	c.sw	s0,80(a0)
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; pro_trans_reset: 2305C10C
;;   Called from:
;;     2305B142 (in __bl_ble_sync_task)
pro_trans_reset proc
	jal	zero,000000002305BC64

;; __pack_encrypt_read: 2305C110
__pack_encrypt_read proc
	c.mv	a7,a3
	c.mv	a3,a4
	lbu	a4,a0,+00000010
	c.beqz	a4,000000002305C13A

l2305C11A:
	addi	a4,a5,+00000009
	c.addi	a6,FFFFFFF7

l2305C120:
	sltu	a5,zero,a1
	sb	a5,a0,+0000000C
	c.lw	a0,0(a0)
	c.mv	a1,a7
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	lw	t1,a5,+00000000
	andi	a5,a6,+000000FF
	c.jr	t1

l2305C13A:
	addi	a4,a5,+00000001
	c.addi	a6,FFFFFFFF
	c.j	000000002305C120

;; __pack_encrypt_write: 2305C142
__pack_encrypt_write proc
	sb	zero,a3,+00000000
	lbu	a1,a0,+00000010
	c.slli	a7,10
	c.mv	t3,a2
	srli	a7,a7,00000010
	c.mv	a2,a4
	c.mv	a4,a5
	c.mv	a5,a6
	c.beqz	a1,000000002305C1A6

l2305C15A:
	sb	zero,a3,+00000001
	sb	zero,a3,+00000002
	sb	zero,a3,+00000003
	sb	zero,a3,+00000004
	sb	zero,a3,+00000005
	sb	zero,a3,+00000006
	sb	zero,a3,+00000007
	sb	zero,a3,+00000008
	addi	a1,a3,+00000009
	lbu	a3,a2,+00000000
	c.addi	a7,FFFFFFF7
	c.addi	a3,00000009
	sb	a3,a2,+00000000

l2305C18A:
	c.li	a3,00000001
	sb	a3,a0,+0000000C
	c.lw	a0,0(a0)
	slli	a6,a7,00000010
	srai	a6,a6,00000010
	c.lw	a0,0(a3)
	c.lw	a0,4(a0)
	lw	t1,a3,+00000004
	c.mv	a3,t3
	c.jr	t1

l2305C1A6:
	addi	a1,a3,+00000001
	lbu	a3,a2,+00000000
	c.addi	a7,FFFFFFFF
	c.addi	a3,00000001
	sb	a3,a2,+00000000
	c.j	000000002305C18A

;; pro_encrypt_init: 2305C1B8
;;   Called from:
;;     2305C0E0 (in pro_trans_init)
pro_encrypt_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	addi	a1,a0,+00000004
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.jal	000000002305C2CE
	lui	a5,000230CC
	addi	a5,a5,-00000564
	c.sw	s0,0(a0)
	c.sw	s0,24(s1)
	c.sw	s0,20(a5)
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; __payload_write: 2305C1E6
__payload_write proc
	blt	a6,zero,000000002305C270

l2305C1EA:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	a7,a1
	c.mv	a1,a4
	lbu	a4,a0,+00000008
	c.slli	a6,10
	c.mv	s1,a2
	srli	a6,a6,00000010
	c.bnez	a4,000000002305C242

l2305C204:
	c.addi	a6,FFFFFFFF
	c.slli	a6,10
	srai	a6,a6,00000010
	bge	a5,a6,000000002305C212

l2305C210:
	c.mv	a6,a5

l2305C212:
	andi	s0,a6,+000000FF
	c.li	a5,00000004
	c.li	a0,FFFFFFFE
	bne	s0,a5,000000002305C238

l2305C21E:
	sb	a3,a7,+00000000
	c.li	a2,00000004
	addi	a0,a7,+00000001
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000000
	c.addi	a5,00000005

l2305C232:
	sb	a5,s1,+00000000
	c.mv	a0,s0

l2305C238:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305C242:
	c.addi	a6,FFFFFFFE
	c.slli	a6,10
	srai	a6,a6,00000010
	bge	a5,a6,000000002305C250

l2305C24E:
	c.mv	a6,a5

l2305C250:
	andi	s0,a6,+000000FF
	sb	s0,a7,+00000000
	sb	a3,a7,+00000001
	c.mv	a2,s0
	addi	a0,a7,+00000002
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000000
	c.addi	a5,00000002
	c.add	a5,s0
	c.j	000000002305C232

l2305C270:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; __payload_read: 2305C274
__payload_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.mv	a6,a1
	lbu	a1,a0,+00000008
	c.bnez	a1,000000002305C2AC

l2305C280:
	c.li	a1,00000005
	c.li	a0,FFFFFFFE
	bne	a5,a1,000000002305C2A6

l2305C288:
	c.li	a5,00000004
	sb	a5,a3,+00000000
	lbu	a5,a4,+00000000
	addi	a1,a4,+00000001
	sb	a5,a2,+00000000
	lbu	a2,a3,+00000000

l2305C29E:
	c.mv	a0,a6
	jal	ra,00000000230A382C
	c.li	a0,00000000

l2305C2A6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2305C2AC:
	lbu	a1,a4,+00000000
	c.addi	a5,FFFFFFFE
	c.li	a0,FFFFFFFE
	bne	a5,a1,000000002305C2A6

l2305C2B8:
	sb	a5,a3,+00000000
	lbu	a5,a4,+00000001
	addi	a1,a4,+00000002
	sb	a5,a2,+00000000
	lbu	a2,a3,+00000000
	c.j	000000002305C29E

;; pro_payload_init: 2305C2CE
;;   Called from:
;;     2305C1CA (in pro_encrypt_init)
pro_payload_init proc
	lui	a5,000230CC
	addi	a5,a5,-0000055C
	c.sw	a0,0(a5)
	c.sw	a0,4(a1)
	c.jr	ra

;; cmd_sys_time_now: 2305C2DC
cmd_sys_time_now proc
	lui	a0,000230BF
	c.addi16sp	FFFFFFD0
	c.li	a5,00000000
	c.li	a6,00000000
	addi	a0,a0,+00000728
	c.swsp	ra,00000094
	c.swsp	a5,00000000
	c.swsp	a6,00000080
	jal	ra,000000002308234C
	c.mv	a0,sp
	c.jal	000000002305C34A
	c.lwsp	zero,00000044
	c.lwsp	tp,00000064
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	jal	ra,000000002309FC70
	c.addi4spn	a1,0000000C
	jal	ra,000000002307A570
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; bl_sys_time_cli_init: 2305C312
;;   Called from:
;;     23000B10 (in aos_loop_proc)
bl_sys_time_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_sys_time_update: 2305C316
;;   Called from:
;;     23078FF4 (in sntp_recv)
bl_sys_time_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,00000000230629A4
	lui	a5,0004200F
	addi	a5,a5,+000004E0
	c.sw	a5,0(a0)
	sw	zero,a5,+00000004
	lui	a5,0004200F
	sw	s0,a5,+000004C8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sw	s1,a5,+000004CC
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_time_get: 2305C34A
;;   Called from:
;;     2305C2F6 (in cmd_sys_time_now)
bl_sys_time_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000004C8
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.or	a5,a4
	c.beqz	a5,000000002305C396

l2305C362:
	c.mv	s1,a0
	jal	ra,00000000230629A4
	lui	a5,0004200F
	lw	a5,a5,+000004E0
	c.lw	s0,0(a4)
	sub	a5,a0,a5
	c.lw	s0,4(a0)
	srai	a3,a5,0000001F
	c.add	a4,a5
	c.add	a3,a0
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.li	a0,00000000

l2305C38C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305C396:
	c.li	a0,FFFFFFFF
	c.j	000000002305C38C

;; bl_sys_time_sync_state: 2305C39A
;;   Called from:
;;     230629EA (in xTaskIncrementTick)
bl_sys_time_sync_state proc
	lui	a5,0004200F
	lw	a5,a5,+000004D8
	c.beqz	a5,000000002305C3F8

l2305C3A4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	jal	ra,0000000023063658
	jal	ra,00000000230629A4
	c.mv	s2,a0
	jal	ra,0000000023069912
	c.mv	s0,a0
	jal	ra,000000002306366C
	lui	a5,0004200F
	lui	a4,0004200F
	lw	a5,a5,+000004D4
	lw	a4,a4,+000004D0
	c.li	a0,00000000
	sub	a3,s2,a5
	sub	a4,s0,a4
	bgeu	a3,a4,000000002305C3EC

l2305C3E2:
	sub	a5,a5,s2
	c.add	a5,a4
	c.sw	s1,0(a5)
	c.li	a0,00000001

l2305C3EC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305C3F8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; parse_hex4: 2305C3FC
;;   Called from:
;;     2305C654 (in parse_string)
;;     2305C686 (in parse_string)
parse_hex4 proc
	lbu	a3,a0,+00000000
	c.li	a4,00000009
	addi	a5,a3,-00000030
	andi	a2,a5,+000000FF
	bgeu	a4,a2,000000002305C420

l2305C40E:
	addi	a5,a3,-00000041
	andi	a5,a5,+000000FF
	c.li	a2,00000005
	bltu	a2,a5,000000002305C466

l2305C41C:
	addi	a5,a3,-00000037

l2305C420:
	lbu	a3,a0,+00000001
	c.li	a2,00000009
	c.slli	a5,04
	addi	a4,a3,-00000030
	andi	a1,a4,+000000FF
	bltu	a2,a1,000000002305C47A

l2305C434:
	c.add	a5,a4

l2305C436:
	lbu	a3,a0,+00000002
	c.li	a2,00000009
	c.slli	a5,04
	addi	a4,a3,-00000030
	andi	a1,a4,+000000FF
	bltu	a2,a1,000000002305C4A4

l2305C44A:
	c.add	a5,a4

l2305C44C:
	lbu	a0,a0,+00000003
	c.li	a3,00000009
	c.slli	a5,04
	addi	a4,a0,-00000030
	andi	a2,a4,+000000FF
	bltu	a3,a2,000000002305C4CE

l2305C460:
	c.add	a4,a5

l2305C462:
	c.mv	a0,a4
	c.jr	ra

l2305C466:
	addi	a5,a3,-00000061
	andi	a5,a5,+000000FF
	c.li	a4,00000000
	bltu	a2,a5,000000002305C462

l2305C474:
	addi	a5,a3,-00000057
	c.j	000000002305C420

l2305C47A:
	addi	a4,a3,-00000041
	andi	a4,a4,+000000FF
	c.li	a1,00000005
	bltu	a1,a4,000000002305C490

l2305C488:
	addi	a3,a3,-00000037

l2305C48C:
	c.add	a5,a3
	c.j	000000002305C436

l2305C490:
	addi	a2,a3,-00000061
	andi	a2,a2,+000000FF
	c.li	a4,00000000
	bltu	a1,a2,000000002305C462

l2305C49E:
	addi	a3,a3,-00000057
	c.j	000000002305C48C

l2305C4A4:
	addi	a4,a3,-00000041
	andi	a4,a4,+000000FF
	c.li	a1,00000005
	bltu	a1,a4,000000002305C4BA

l2305C4B2:
	addi	a3,a3,-00000037

l2305C4B6:
	c.add	a5,a3
	c.j	000000002305C44C

l2305C4BA:
	addi	a2,a3,-00000061
	andi	a2,a2,+000000FF
	c.li	a4,00000000
	bltu	a1,a2,000000002305C462

l2305C4C8:
	addi	a3,a3,-00000057
	c.j	000000002305C4B6

l2305C4CE:
	addi	a4,a0,-00000041
	andi	a4,a4,+000000FF
	c.li	a2,00000005
	bltu	a2,a4,000000002305C4E2

l2305C4DC:
	addi	a4,a0,-00000037
	c.j	000000002305C460

l2305C4E2:
	addi	a3,a0,-00000061
	andi	a3,a3,+000000FF
	c.li	a4,00000000
	bltu	a2,a3,000000002305C462

l2305C4F0:
	addi	a4,a0,-00000057
	c.j	000000002305C460

;; parse_string: 2305C4F6
;;   Called from:
;;     2305CD32 (in parse_value)
;;     2305CFCC (in parse_value)
;;     2305D040 (in parse_value)
parse_string proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
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
	lbu	a4,a1,+00000000
	addi	a5,zero,+00000022
	bne	a4,a5,000000002305C542

l2305C51E:
	addi	s10,a1,+00000001
	c.mv	a5,s10
	c.li	a4,00000000
	addi	a2,zero,+00000022
	addi	a6,zero,+0000005C

l2305C52E:
	lbu	a3,a5,+00000000
	c.addi	a4,00000001
	beq	a3,a2,000000002305C570

l2305C538:
	c.beqz	a3,000000002305C570

l2305C53A:
	beq	a3,a6,000000002305C56C

l2305C53E:
	c.addi	a5,00000001
	c.j	000000002305C52E

l2305C542:
	lui	a5,0004200F
	sw	a1,a5,+000004E8
	c.li	s9,00000000

l2305C54C:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s9
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

l2305C56C:
	c.addi	a5,00000002
	c.j	000000002305C52E

l2305C570:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.swsp	a0,00000004
	c.mv	a0,a4
	c.jalr	a5
	c.mv	s9,a0
	c.beqz	a0,000000002305C54C

l2305C582:
	c.lui	s1,FFFF2000
	c.lui	s2,FFFF3000
	lui	s3,000230CC
	lui	s4,00000100
	c.mv	s11,a0
	addi	s5,zero,+0000005C
	addi	s6,zero,+0000006E
	addi	s7,zero,+00000075
	addi	s1,s1,+00000400
	addi	s0,zero,+000003FF
	addi	s2,s2,-00000800
	addi	s3,s3,-00000554
	c.lui	s8,00010000
	addi	s4,s4,-00000400

l2305C5B2:
	lbu	a4,s10,+00000000
	addi	a5,zero,+00000022
	beq	a4,a5,000000002305C5C0

l2305C5BE:
	c.bnez	a4,000000002305C5E2

l2305C5C0:
	sb	zero,s11,+00000000
	lbu	a4,s10,+00000000
	addi	a5,zero,+00000022
	bne	a4,a5,000000002305C5D2

l2305C5D0:
	c.addi	s10,00000001

l2305C5D2:
	c.lwsp	s0,000000E4
	c.lwsp	s0,000000C4
	sw	s9,a5,+00000010
	c.li	a5,00000004
	c.sw	a4,12(a5)
	c.mv	s9,s10
	c.j	000000002305C54C

l2305C5E2:
	addi	a2,s10,+00000001
	beq	a4,s5,000000002305C5F4

l2305C5EA:
	sb	a4,s11,+00000000
	c.addi	s11,00000001

l2305C5F0:
	c.mv	s10,a2
	c.j	000000002305C5B2

l2305C5F4:
	lbu	a4,s10,+00000001
	beq	a4,s6,000000002305C642

l2305C5FC:
	bltu	s6,a4,000000002305C61A

l2305C600:
	addi	a0,zero,+00000062
	addi	a1,s11,+00000001
	beq	a4,a0,000000002305C632

l2305C60C:
	addi	a0,zero,+00000066
	beq	a4,a0,000000002305C63E

l2305C614:
	sb	a4,s11,+00000000
	c.j	000000002305C648

l2305C61A:
	addi	a5,zero,+00000074
	beq	a4,a5,000000002305C64C

l2305C622:
	beq	a4,s7,000000002305C650

l2305C626:
	addi	a1,zero,+00000072
	bne	a4,a1,000000002305C614

l2305C62E:
	c.li	a4,0000000D
	c.j	000000002305C614

l2305C632:
	c.li	a4,00000008

l2305C634:
	sb	a4,s11,+00000000
	c.mv	s11,a1

l2305C63A:
	c.addi	a2,00000001
	c.j	000000002305C5F0

l2305C63E:
	c.li	a4,0000000C
	c.j	000000002305C634

l2305C642:
	c.li	a5,0000000A

l2305C644:
	sb	a5,s11,+00000000

l2305C648:
	c.addi	s11,00000001
	c.j	000000002305C63A

l2305C64C:
	c.li	a5,00000009
	c.j	000000002305C644

l2305C650:
	addi	a0,s10,+00000002
	jal	ra,000000002305C3FC
	add	a4,a0,s1
	c.mv	a7,a0
	addi	a2,s10,+00000005
	bgeu	s0,a4,000000002305C63A

l2305C666:
	c.beqz	a0,000000002305C63A

l2305C668:
	add	a4,a0,s2
	bltu	s0,a4,000000002305C6C2

l2305C670:
	lbu	a4,s10,+00000006
	bne	a4,s5,000000002305C63A

l2305C678:
	lbu	a4,s10,+00000007
	bne	a4,s7,000000002305C63A

l2305C680:
	c.swsp	a0,00000084
	addi	a0,s10,+00000008
	jal	ra,000000002305C3FC
	add	a4,a0,s1
	addi	a2,s10,+0000000B
	bltu	s0,a4,000000002305C63A

l2305C696:
	c.lwsp	a2,00000028
	andi	a0,a0,+000003FF
	slli	a4,a7,0000000A
	and	a4,a4,s4
	c.or	a4,a0
	add	a7,a4,s8

l2305C6AA:
	andi	a4,a7,+0000003F
	ori	a4,a4,-00000080
	sb	a4,s11,+00000003
	addi	a0,s11,+00000003
	srli	a7,a7,00000006
	c.li	a4,00000004
	c.j	000000002305C6FA

l2305C6C2:
	addi	a5,zero,+0000007F
	bltu	a5,a0,000000002305C6E8

l2305C6CA:
	addi	a5,s11,+00000001
	c.li	a4,00000001

l2305C6D0:
	add	a1,s3,a4
	lbu	a0,a1,+00000000
	c.addi	a4,FFFFFFFF
	add	s11,a5,a4
	or	a0,a7,a0
	sb	a0,a5,+00000FFF
	c.j	000000002305C63A

l2305C6E8:
	addi	a5,zero,+000007FF
	bgeu	a5,a0,000000002305C710

l2305C6F0:
	bgeu	a0,s8,000000002305C6AA

l2305C6F4:
	addi	a0,s11,+00000003
	c.li	a4,00000003

l2305C6FA:
	andi	a5,a7,+0000003F
	ori	a5,a5,-00000080
	addi	a1,a0,-00000001
	sb	a5,a0,+00000FFF
	srli	a7,a7,00000006
	c.j	000000002305C716

l2305C710:
	addi	a1,s11,+00000002
	c.li	a4,00000002

l2305C716:
	andi	a0,a7,+0000003F
	ori	a0,a0,-00000080
	addi	a5,a1,-00000001
	sb	a0,a1,+00000FFF
	srli	a7,a7,00000006
	c.j	000000002305C6D0

;; skip: 2305C72C
;;   Called from:
;;     2305CF16 (in parse_value)
;;     2305CF3A (in parse_value)
;;     2305CF44 (in parse_value)
;;     2305CF68 (in parse_value)
;;     2305CF72 (in parse_value)
;;     2305CFA6 (in parse_value)
;;     2305CFC4 (in parse_value)
;;     2305CFD0 (in parse_value)
;;     2305CFFA (in parse_value)
;;     2305D004 (in parse_value)
;;     2305D038 (in parse_value)
;;     2305D044 (in parse_value)
;;     2305D05E (in parse_value)
;;     2305D068 (in parse_value)
;;     2305D8A2 (in cJSON_ParseWithOpts)
;;     2305D8D0 (in cJSON_ParseWithOpts)
skip proc
	c.li	a4,0000001F

l2305C72E:
	c.beqz	a0,000000002305C73E

l2305C730:
	lbu	a5,a0,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bgeu	a4,a5,000000002305C740

l2305C73E:
	c.jr	ra

l2305C740:
	c.addi	a0,00000001
	c.j	000000002305C72E

;; cJSON_New_Item: 2305C744
;;   Called from:
;;     2305CF2E (in parse_value)
;;     2305CF54 (in parse_value)
;;     2305CFB8 (in parse_value)
;;     2305D022 (in parse_value)
;;     2305D894 (in cJSON_ParseWithOpts)
;;     2305D98C (in cJSON_CreateNumber)
;;     2305D9C2 (in cJSON_CreateString)
;;     2305D9E6 (in cJSON_CreateObject)
cJSON_New_Item proc
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a0,zero,+00000028
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002305C766

l2305C75C:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2305C766:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ensure: 2305C770
;;   Called from:
;;     2305C896 (in print_number)
;;     2305C928 (in print_number)
;;     2305C958 (in print_number)
;;     2305CA54 (in print_string_ptr)
;;     2305CAB4 (in print_string_ptr)
;;     2305CB2C (in print_string_ptr)
;;     2305D0A8 (in print_array.isra.4)
;;     2305D0FA (in print_array.isra.4)
;;     2305D12E (in print_array.isra.4)
;;     2305D162 (in print_array.isra.4)
;;     2305D3D6 (in print_object.isra.3)
;;     2305D46C (in print_object.isra.3)
;;     2305D4BE (in print_object.isra.3)
;;     2305D4E4 (in print_object.isra.3)
;;     2305D514 (in print_object.isra.3)
;;     2305D558 (in print_object.isra.3)
ensure proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.li	s2,00000000
	c.beqz	a0,000000002305C7E6

l2305C780:
	lw	s2,a0,+00000000
	beq	s2,zero,000000002305C7E6

l2305C788:
	c.lw	a0,8(a5)
	c.lw	a0,4(a4)
	c.add	a1,a5
	blt	a4,a1,000000002305C796

l2305C792:
	c.add	s2,a5
	c.j	000000002305C7E6

l2305C796:
	addi	s0,a1,-00000001
	srai	a1,s0,00000001
	c.or	s0,a1
	srai	a1,s0,00000002
	c.or	s0,a1
	srai	a1,s0,00000004
	c.or	s0,a1
	srai	a5,s0,00000008
	c.or	s0,a5
	srai	a5,s0,00000010
	c.or	s0,a5
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.addi	s0,00000001
	c.mv	s1,a0
	c.mv	a0,s0
	c.jalr	a5
	lui	s3,0004200F
	c.mv	s2,a0
	c.lw	s1,0(a1)
	addi	s3,s3,-0000035C
	c.bnez	a0,000000002305C7F6

l2305C7D6:
	lw	a5,s3,+00000000
	c.mv	a0,a1
	c.jalr	a5
	sw	zero,s1,+00000004
	sw	zero,s1,+00000000

l2305C7E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305C7F6:
	c.lw	s1,4(a2)
	jal	ra,00000000230A382C
	lw	a5,s3,+00000000
	c.lw	s1,0(a0)
	c.jalr	a5
	c.lw	s1,8(a5)
	c.sw	s1,4(s0)
	sw	s2,s1,+00000000
	c.j	000000002305C792

;; cJSON_strdup: 2305C80E
;;   Called from:
;;     2305D964 (in cJSON_AddItemToObject)
;;     2305D9D0 (in cJSON_CreateString)
cJSON_strdup proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,00000000230A4220
	lui	a5,0004200F
	lw	a5,a5,-00000358
	addi	a2,a0,+00000001
	c.mv	a0,a2
	c.swsp	a2,00000004
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002305C838

l2305C830:
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	jal	ra,00000000230A382C

l2305C838:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; update: 2305C842
;;   Called from:
;;     2305D152 (in print_array.isra.4)
;;     2305D508 (in print_object.isra.3)
;;     2305D53E (in print_object.isra.3)
update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000000
	c.beqz	a0,000000002305C85E

l2305C84C:
	c.lw	a0,0(a4)
	c.li	s0,00000000
	c.beqz	a4,000000002305C85E

l2305C852:
	c.lw	a0,8(s0)
	add	a0,a4,s0
	jal	ra,00000000230A4220
	c.add	s0,a0

l2305C85E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; print_number: 2305C868
print_number proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s3,a0,+0000001C
	lw	s2,a0,+00000018
	c.mv	s4,a0
	c.mv	s0,a1
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,00000000230A18B0
	c.bnez	a0,000000002305C8CA

l2305C890:
	c.beqz	s0,000000002305C8BC

l2305C892:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002305C770

l2305C89A:
	c.mv	s0,a0
	c.beqz	a0,000000002305C8AA

l2305C89E:
	lui	a1,000230AA
	addi	a1,a1,+0000038C
	jal	ra,00000000230A4170

l2305C8AA:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305C8BC:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.li	a0,00000002
	c.jalr	a5
	c.j	000000002305C89A

l2305C8CA:
	lw	a0,s4,+00000014
	lui	s1,000230BF
	jal	ra,00000000230A307C
	c.mv	a2,s2
	c.mv	a3,s3
	jal	ra,00000000230A22EC
	jal	ra,000000002309D618
	lw	a2,s1,+000007C0
	lw	a3,s1,+000007C4
	jal	ra,00000000230A1A64
	blt	zero,a0,000000002305C950

l2305C8F2:
	lui	a5,000230BF
	lw	a2,a5,+000007C8
	lw	a3,a5,+000007CC
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,00000000230A1A64
	blt	zero,a0,000000002305C950

l2305C90A:
	lui	a5,000230BF
	lw	a2,a5,+000007D0
	lw	a3,a5,+000007D4
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,00000000230A1978
	blt	a0,zero,000000002305C950

l2305C922:
	c.beqz	s0,000000002305C942

l2305C924:
	c.li	a1,00000015
	c.mv	a0,s0
	jal	ra,000000002305C770

l2305C92C:
	c.mv	s0,a0
	c.beqz	a0,000000002305C8AA

l2305C930:
	lw	a2,s4,+00000014
	lui	a1,000230C8
	addi	a1,a1,-0000076C
	jal	ra,00000000230823B8
	c.j	000000002305C8AA

l2305C942:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.li	a0,00000015
	c.jalr	a5
	c.j	000000002305C92C

l2305C950:
	c.beqz	s0,000000002305C9B4

l2305C952:
	addi	a1,zero,+00000040
	c.mv	a0,s0
	jal	ra,000000002305C770

l2305C95C:
	c.mv	s0,a0
	c.beqz	a0,000000002305C8AA

l2305C960:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002309D624
	c.mv	a2,s2
	c.mv	a3,s3
	jal	ra,00000000230A22EC
	jal	ra,000000002309D618
	lw	a2,s1,+000007C0
	lw	a3,s1,+000007C4
	jal	ra,00000000230A1A64
	blt	zero,a0,000000002305C9C4

l2305C984:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002309D618
	lui	a5,000230BF
	lw	a2,a5,+000007D8
	lw	a3,a5,+000007DC
	jal	ra,00000000230A1A64
	bge	a0,zero,000000002305C9C4

l2305C9A0:
	lui	a1,000230BF
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+000007F0

l2305C9AC:
	c.mv	a0,s0
	jal	ra,00000000230823B8
	c.j	000000002305C8AA

l2305C9B4:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	addi	a0,zero,+00000040
	c.jalr	a5
	c.j	000000002305C95C

l2305C9C4:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002309D618
	lui	a5,000230BF
	lw	a2,a5,+000007E0
	lw	a3,a5,+000007E4
	jal	ra,00000000230A1A64
	bge	a0,zero,000000002305C9EE

l2305C9E0:
	lui	a1,000230BF
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+000007F8
	c.j	000000002305C9AC

l2305C9EE:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002309D618
	lui	a5,000230BF
	lw	a2,a5,+000007E8
	lw	a3,a5,+000007EC
	jal	ra,00000000230A1978
	blt	zero,a0,000000002305C9E0

l2305CA0A:
	lui	a1,000230BF
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+000007FC
	c.j	000000002305C9AC

;; print_string_ptr: 2305CA18
;;   Called from:
;;     2305D502 (in print_object.isra.3)
;;     2305D678 (in print_object.isra.3)
print_string_ptr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a0
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.li	a4,00000000
	c.li	a1,0000001E
	addi	a0,zero,+00000022

l2305CA40:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002305CA7C

l2305CA46:
	c.bnez	a4,000000002305CAAA

l2305CA48:
	sub	s3,s0,s2
	addi	a1,s3,+00000003
	c.beqz	s1,000000002305CA9C

l2305CA52:
	c.mv	a0,s1
	jal	ra,000000002305C770

l2305CA58:
	c.mv	s1,a0
	c.beqz	a0,000000002305CAC8

l2305CA5C:
	addi	s0,a0,+00000001
	addi	s4,zero,+00000022
	sb	s4,a0,+00000000
	c.mv	a1,s2
	c.mv	a0,s0
	c.add	s0,s3
	jal	ra,00000000230A4170
	sb	s4,s0,+00000000

l2305CA76:
	sb	zero,s0,+00000001
	c.j	000000002305CAC8

l2305CA7C:
	addi	a3,a5,-00000001
	andi	a3,a3,+000000FF
	c.li	a2,00000001
	bgeu	a1,a3,000000002305CA96

l2305CA8A:
	beq	a5,a0,000000002305CA96

l2305CA8E:
	addi	a5,a5,-0000005C
	sltiu	a2,a5,+00000001

l2305CA96:
	c.or	a4,a2
	c.addi	s0,00000001
	c.j	000000002305CA40

l2305CA9C:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.mv	a0,a1
	c.jalr	a5
	c.j	000000002305CA58

l2305CAAA:
	bne	s2,zero,000000002305CB18

l2305CAAE:
	c.beqz	s1,000000002305CAE6

l2305CAB0:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002305C770

l2305CAB8:
	c.mv	s1,a0
	c.beqz	a0,000000002305CAC8

l2305CABC:
	lui	a1,000230C0
	addi	a1,a1,-00000800
	jal	ra,00000000230A4170

l2305CAC8:
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
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.addi16sp	00000030
	c.jr	ra

l2305CAE6:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.li	a0,00000003
	c.jalr	a5
	c.j	000000002305CAB8

l2305CAF4:
	c.addi	s0,00000002

l2305CAF6:
	c.addi	s3,00000001

l2305CAF8:
	lbu	s4,s3,+00000000
	beq	s4,zero,000000002305CB24

l2305CB00:
	c.mv	a1,s4
	addi	a0,s5,-000007FC
	jal	ra,00000000230A3E88
	c.bnez	a0,000000002305CAF4

l2305CB0C:
	bgeu	s6,s4,000000002305CB14

l2305CB10:
	c.addi	s0,00000001
	c.j	000000002305CAF6

l2305CB14:
	c.addi	s0,00000006
	c.j	000000002305CAF6

l2305CB18:
	c.mv	s3,s2
	c.li	s0,00000000
	lui	s5,000230C0
	c.li	s6,0000001F
	c.j	000000002305CAF8

l2305CB24:
	addi	a1,s0,+00000003
	c.beqz	s1,000000002305CB6A

l2305CB2A:
	c.mv	a0,s1
	jal	ra,000000002305C770

l2305CB30:
	c.mv	s1,a0
	c.beqz	a0,000000002305CAC8

l2305CB34:
	addi	a5,zero,+00000022
	addi	s0,a0,+00000001
	sb	a5,a0,+00000000
	c.li	s6,0000001F
	addi	s3,zero,+0000005C
	c.li	s5,0000000C
	addi	s7,zero,+00000066
	lui	s8,000230C0
	addi	s4,zero,+00000022
	c.li	s9,0000000D
	addi	s10,zero,+00000072

l2305CB5A:
	lbu	a5,s2,+00000000
	c.bnez	a5,000000002305CB78

l2305CB60:
	addi	a5,zero,+00000022
	sb	a5,s0,+00000000
	c.j	000000002305CA76

l2305CB6A:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.mv	a0,a1
	c.jalr	a5
	c.j	000000002305CB30

l2305CB78:
	addi	a0,s0,+00000001
	c.addi	s2,00000001
	bgeu	s6,a5,000000002305CB92

l2305CB82:
	beq	a5,s4,000000002305CB92

l2305CB86:
	beq	a5,s3,000000002305CB92

l2305CB8A:
	sb	a5,s0,+00000000

l2305CB8E:
	c.mv	s0,a0
	c.j	000000002305CB5A

l2305CB92:
	sb	s3,s0,+00000000
	lbu	a2,s2,-00000001
	beq	a2,s5,000000002305CBEC

l2305CB9E:
	bltu	s5,a2,000000002305CBC2

l2305CBA2:
	c.li	a5,00000009
	beq	a2,a5,000000002305CC00

l2305CBA8:
	c.li	a5,0000000A
	beq	a2,a5,000000002305CBF6

l2305CBAE:
	c.li	a5,00000008
	bne	a2,a5,000000002305CC0A

l2305CBB4:
	addi	a0,s0,+00000002
	addi	a5,zero,+00000062

l2305CBBC:
	sb	a5,s0,+00000001
	c.j	000000002305CB8E

l2305CBC2:
	beq	a2,s4,000000002305CBE2

l2305CBC6:
	beq	a2,s3,000000002305CBD8

l2305CBCA:
	bne	a2,s9,000000002305CC0A

l2305CBCE:
	addi	a0,s0,+00000002
	sb	s10,s0,+00000001
	c.j	000000002305CB8E

l2305CBD8:
	addi	a0,s0,+00000002
	sb	s3,s0,+00000001
	c.j	000000002305CB8E

l2305CBE2:
	addi	a0,s0,+00000002
	sb	s4,s0,+00000001
	c.j	000000002305CB8E

l2305CBEC:
	addi	a0,s0,+00000002
	sb	s7,s0,+00000001
	c.j	000000002305CB8E

l2305CBF6:
	addi	a0,s0,+00000002
	addi	a5,zero,+0000006E
	c.j	000000002305CBBC

l2305CC00:
	addi	a0,s0,+00000002
	addi	a5,zero,+00000074
	c.j	000000002305CBBC

l2305CC0A:
	addi	a1,s8,-000007F4
	jal	ra,00000000230823B8
	addi	a0,s0,+00000006
	c.j	000000002305CB8E

;; cJSON_strcasecmp: 2305CC18
;;   Called from:
;;     2305D916 (in cJSON_GetObjectItem)
cJSON_strcasecmp proc
	sltu	a5,zero,a1
	c.beqz	a0,000000002305CC62

l2305CC1E:
	c.li	a5,00000001
	c.beqz	a1,000000002305CC62

l2305CC22:
	lui	a2,000230CB
	addi	a2,a2,+000005B1
	c.li	a7,00000001

l2305CC2C:
	lbu	a3,a0,+00000000
	add	a4,a3,a2
	lbu	a4,a4,+00000000
	c.mv	a5,a3
	c.andi	a4,00000003
	bne	a4,a7,000000002305CC44

l2305CC40:
	addi	a5,a3,+00000020

l2305CC44:
	lbu	a4,a1,+00000000
	add	a6,a2,a4
	lbu	a6,a6,+00000000
	andi	a6,a6,+00000003
	bne	a6,a7,000000002305CC5C

l2305CC58:
	addi	a4,a4,+00000020

l2305CC5C:
	beq	a5,a4,000000002305CC66

l2305CC60:
	c.sub	a5,a4

l2305CC62:
	c.mv	a0,a5
	c.jr	ra

l2305CC66:
	c.beqz	a3,000000002305CC6E

l2305CC68:
	c.addi	a0,00000001
	c.addi	a1,00000001
	c.j	000000002305CC2C

l2305CC6E:
	c.li	a5,00000000
	c.j	000000002305CC62

;; parse_value: 2305CC72
;;   Called from:
;;     2305CF42 (in parse_value)
;;     2305CF70 (in parse_value)
;;     2305D002 (in parse_value)
;;     2305D066 (in parse_value)
;;     2305D8AA (in cJSON_ParseWithOpts)
parse_value proc
	c.bnez	a1,000000002305CC78

l2305CC74:
	c.li	a0,00000000
	c.jr	ra

l2305CC78:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a1
	lui	a1,000230BF
	c.swsp	s1,000000A0
	c.li	a2,00000004
	c.mv	s1,a0
	addi	a1,a1,+000007B0
	c.mv	a0,s0
	c.swsp	ra,000000A4
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
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305CCB4

l2305CCAA:
	c.li	a5,00000002
	c.sw	s1,12(a5)

l2305CCAE:
	addi	a0,s0,+00000004
	c.j	000000002305CCCE

l2305CCB4:
	lui	a1,000230B3
	c.li	a2,00000005
	addi	a1,a1,+00000194
	c.mv	a0,s0
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305CCEC

l2305CCC6:
	sw	zero,s1,+0000000C
	addi	a0,s0,+00000005

l2305CCCE:
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

l2305CCEC:
	lui	a1,000230B3
	c.li	a2,00000004
	addi	a1,a1,+0000018C
	c.mv	a0,s0
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305CD06

l2305CCFE:
	c.li	a5,00000001
	c.sw	s1,12(a5)
	c.sw	s1,20(a5)
	c.j	000000002305CCAE

l2305CD06:
	lbu	a5,s0,+00000000
	addi	a4,zero,+00000022
	bne	a5,a4,000000002305CD36

l2305CD12:
	c.mv	a1,s0
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
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
	c.mv	a0,s1
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	jal	zero,000000002305C4F6

l2305CD36:
	addi	a4,zero,+0000002D
	beq	a5,a4,000000002305CD5A

l2305CD3E:
	addi	a4,a5,-00000030
	andi	a4,a4,+000000FF
	c.li	a3,00000009
	bltu	a3,a4,000000002305CF06

l2305CD4C:
	lui	a5,000230BF
	lw	s4,a5,+000007A0
	lw	s5,a5,+000007A4
	c.j	000000002305CD68

l2305CD5A:
	lui	a5,000230BF
	lw	s4,a5,+00000798
	lw	s5,a5,+0000079C
	c.addi	s0,00000001

l2305CD68:
	lbu	a4,s0,+00000000
	addi	a5,zero,+00000030
	bne	a4,a5,000000002305CD76

l2305CD74:
	c.addi	s0,00000001

l2305CD76:
	lbu	a5,s0,+00000000
	c.li	a4,00000008
	c.li	s10,00000000
	addi	a5,a5,-00000031
	andi	a5,a5,+000000FF
	c.li	s11,00000000
	bltu	a4,a5,000000002305CDD4

l2305CD8C:
	lui	a5,000230BF
	lw	s2,a5,+000007A8
	lw	s3,a5,+000007AC
	c.li	s6,00000009

l2305CD9A:
	c.mv	a2,s2
	c.mv	a3,s3
	c.mv	a0,s10
	c.mv	a1,s11
	jal	ra,00000000230A1B50
	c.addi	s0,00000001
	c.swsp	a0,00000004
	lbu	a0,s0,-00000001
	c.swsp	a1,00000084
	addi	a0,a0,-00000030
	jal	ra,00000000230A307C
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	jal	ra,00000000230A04B4
	lbu	a5,s0,+00000000
	c.mv	s10,a0
	c.mv	s11,a1
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	bgeu	s6,a5,000000002305CD9A

l2305CDD4:
	lbu	a4,s0,+00000000
	addi	a5,zero,+0000002E
	c.li	s6,00000000
	c.li	s7,00000000
	bne	a4,a5,000000002305CE5C

l2305CDE4:
	lbu	a5,s0,+00000001
	c.li	a4,00000009
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002305CE5C

l2305CDF6:
	lui	a5,000230BF
	lw	s8,a5,+000007A8
	lw	s9,a5,+000007AC
	lui	a5,000230BF
	lw	s2,a5,+000007A0
	lw	s3,a5,+000007A4
	c.addi	s0,00000001

l2305CE10:
	c.mv	a2,s8
	c.mv	a3,s9
	c.mv	a0,s10
	c.mv	a1,s11
	jal	ra,00000000230A1B50
	c.addi	s0,00000001
	c.swsp	a0,00000004
	lbu	a0,s0,-00000001
	c.swsp	a1,00000084
	addi	a0,a0,-00000030
	jal	ra,00000000230A307C
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	jal	ra,00000000230A04B4
	c.mv	s10,a0
	c.mv	s11,a1
	c.mv	a0,s6
	c.mv	a1,s7
	c.mv	a2,s2
	c.mv	a3,s3
	jal	ra,00000000230A22EC
	lbu	a5,s0,+00000000
	c.li	a4,00000009
	c.mv	s6,a0
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	c.mv	s7,a1
	bgeu	a4,a5,000000002305CE10

l2305CE5C:
	lbu	a5,s0,+00000000
	addi	a4,zero,+00000045
	andi	a5,a5,+000000DF
	bne	a5,a4,000000002305CF00

l2305CE6C:
	lbu	a5,s0,+00000001
	addi	a4,zero,+0000002B
	bne	a5,a4,000000002305CE7E

l2305CE78:
	c.addi	s0,00000002

l2305CE7A:
	c.li	s3,00000001
	c.j	000000002305CE8A

l2305CE7E:
	addi	a4,zero,+0000002D
	bne	a5,a4,000000002305CEFC

l2305CE86:
	c.addi	s0,00000002
	c.li	s3,FFFFFFFF

l2305CE8A:
	c.li	s2,00000000
	c.li	a4,00000009
	c.li	a2,0000000A
	c.j	000000002305CE9A

l2305CE92:
	add	s2,s2,a2
	c.addi	s0,00000001
	c.add	s2,a5

l2305CE9A:
	lbu	a5,s0,+00000000
	addi	a5,a5,-00000030
	andi	a3,a5,+000000FF
	bgeu	a4,a3,000000002305CE92

l2305CEAA:
	c.mv	a2,s4
	c.mv	a3,s5
	c.mv	a0,s10
	c.mv	a1,s11
	jal	ra,00000000230A1B50
	c.mv	s4,a0
	add	a0,s2,s3
	c.mv	s5,a1
	jal	ra,00000000230A307C
	c.mv	a2,s6
	c.mv	a3,s7
	jal	ra,00000000230A04B4
	lui	a5,000230BF
	c.mv	a2,a0
	c.mv	a3,a1
	lw	a0,a5,+000007A8
	lw	a1,a5,+000007AC
	jal	ra,000000002309D904
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s4
	c.mv	a1,s5
	jal	ra,00000000230A1B50
	c.sw	s1,24(a0)
	c.sw	s1,28(a1)
	jal	ra,00000000230A2EB8
	c.li	a5,00000003
	c.sw	s1,20(a0)
	c.sw	s1,12(a5)
	c.mv	a0,s0
	c.j	000000002305CCCE

l2305CEFC:
	c.addi	s0,00000001
	c.j	000000002305CE7A

l2305CF00:
	c.li	s3,00000001
	c.li	s2,00000000
	c.j	000000002305CEAA

l2305CF06:
	addi	a4,zero,+0000005B
	bne	a5,a4,000000002305CF96

l2305CF0E:
	c.li	a5,00000005
	c.sw	s1,12(a5)
	addi	a0,s0,+00000001
	jal	ra,000000002305C72C
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000005D
	c.mv	s0,a0
	bne	a4,a5,000000002305CF2E

l2305CF28:
	addi	a0,s0,+00000001
	c.j	000000002305CCCE

l2305CF2E:
	jal	ra,000000002305C744
	c.sw	s1,8(a0)
	c.mv	s2,a0
	c.beqz	a0,000000002305CF50

l2305CF38:
	c.mv	a0,s0
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s2
	c.jal	000000002305CC72
	jal	ra,000000002305C72C
	c.mv	s0,a0
	addi	s3,zero,+0000002C
	c.bnez	a0,000000002305CF7C

l2305CF50:
	c.li	a0,00000000
	c.j	000000002305CCCE

l2305CF54:
	jal	ra,000000002305C744
	c.mv	s1,a0
	c.beqz	a0,000000002305CF50

l2305CF5C:
	sw	a0,s2,+00000000
	sw	s2,a0,+00000004
	addi	a0,s0,+00000001
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s1
	c.jal	000000002305CC72
	jal	ra,000000002305C72C
	c.mv	s0,a0
	c.mv	s2,s1
	c.beqz	a0,000000002305CF50

l2305CF7C:
	lbu	a5,s0,+00000000
	beq	a5,s3,000000002305CF54

l2305CF84:
	addi	a4,zero,+0000005D

l2305CF88:
	beq	a5,a4,000000002305CF28

l2305CF8C:
	lui	a5,0004200F
	sw	s0,a5,+000004E8
	c.j	000000002305CF50

l2305CF96:
	addi	a4,zero,+0000007B
	bne	a5,a4,000000002305CF8C

l2305CF9E:
	c.li	a5,00000006
	c.sw	s1,12(a5)
	addi	a0,s0,+00000001
	jal	ra,000000002305C72C
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000007D
	c.mv	s0,a0
	beq	a4,a5,000000002305CF28

l2305CFB8:
	jal	ra,000000002305C744
	c.sw	s1,8(a0)
	c.mv	s2,a0
	c.beqz	a0,000000002305CF50

l2305CFC2:
	c.mv	a0,s0
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002305C4F6
	jal	ra,000000002305C72C
	c.beqz	a0,000000002305CF50

l2305CFD6:
	lw	a5,s2,+00000010
	sw	zero,s2,+00000010
	sw	a5,s2,+00000020
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000003A
	beq	a4,a5,000000002305CFF8

l2305CFEE:
	lui	a5,0004200F
	sw	a0,a5,+000004E8
	c.j	000000002305CF50

l2305CFF8:
	c.addi	a0,00000001
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s2
	c.jal	000000002305CC72
	jal	ra,000000002305C72C
	c.mv	s0,a0
	c.beqz	a0,000000002305CF50

l2305D00C:
	addi	s3,zero,+0000002C
	addi	s4,zero,+0000003A

l2305D014:
	lbu	a5,s0,+00000000
	beq	a5,s3,000000002305D022

l2305D01C:
	addi	a4,zero,+0000007D
	c.j	000000002305CF88

l2305D022:
	jal	ra,000000002305C744
	c.mv	s1,a0
	beq	a0,zero,000000002305CF50

l2305D02C:
	sw	a0,s2,+00000000
	sw	s2,a0,+00000004
	addi	a0,s0,+00000001
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,000000002305C4F6
	jal	ra,000000002305C72C
	beq	a0,zero,000000002305CF50

l2305D04C:
	c.lw	s1,16(a5)
	sw	zero,s1,+00000010
	c.sw	s1,32(a5)
	lbu	a5,a0,+00000000
	bne	a5,s4,000000002305CFEE

l2305D05C:
	c.addi	a0,00000001
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s1
	c.jal	000000002305CC72
	jal	ra,000000002305C72C
	c.mv	s0,a0
	c.mv	s2,s1
	c.bnez	a0,000000002305D014

l2305D072:
	c.j	000000002305CF50

;; print_array.isra.4: 2305D074
print_array.isra.4 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	s6,a1
	c.mv	s5,a2
	c.mv	s1,a3
	c.li	s3,00000000

l2305D09C:
	c.bnez	s0,000000002305D0DC

l2305D09E:
	bne	s3,zero,000000002305D0F0

l2305D0A2:
	c.beqz	s1,000000002305D0E2

l2305D0A4:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002305C770

l2305D0AC:
	c.mv	s0,a0
	c.beqz	a0,000000002305D0BC

l2305D0B0:
	lui	a1,000230BF
	addi	a1,a1,+000007B8
	jal	ra,00000000230A4170

l2305D0BC:
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
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l2305D0DC:
	c.addi	s3,00000001
	c.lw	s0,0(s0)
	c.j	000000002305D09C

l2305D0E2:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.li	a0,00000003
	c.jalr	a5
	c.j	000000002305D0AC

l2305D0F0:
	c.beqz	s1,000000002305D18C

l2305D0F2:
	c.li	a1,00000001
	c.mv	a0,s1
	lw	s4,s1,+00000008
	jal	ra,000000002305C770
	c.beqz	a0,000000002305D0BC

l2305D100:
	addi	a5,zero,+0000005B
	sb	a5,a0,+00000000
	c.lw	s1,8(a5)
	sltu	s3,zero,s5
	c.addi	s3,00000001
	c.addi	a5,00000001
	c.sw	s1,8(a5)
	lw	s2,s2,+00000000
	addi	s7,s3,+00000001
	c.addi	s6,00000001
	addi	s8,zero,+0000002C
	addi	s9,zero,+00000020

l2305D126:
	bne	s2,zero,000000002305D146

l2305D12A:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002305C770
	c.beqz	a0,000000002305D0BC

l2305D134:
	addi	a5,zero,+0000005D
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.lw	s1,0(s0)
	c.add	s0,s4
	c.j	000000002305D0BC

l2305D146:
	c.mv	a3,s1
	c.mv	a2,s5
	c.mv	a1,s6
	c.mv	a0,s2
	c.jal	000000002305D2A6
	c.mv	a0,s1
	jal	ra,000000002305C842
	c.sw	s1,8(a0)
	lw	a5,s2,+00000000
	c.beqz	a5,000000002305D186

l2305D15E:
	c.mv	a1,s7
	c.mv	a0,s1
	jal	ra,000000002305C770
	c.beqz	a0,000000002305D0BC

l2305D168:
	sb	s8,a0,+00000000
	addi	a5,a0,+00000001
	beq	s5,zero,000000002305D17C

l2305D174:
	addi	a5,a0,+00000002
	sb	s9,a0,+00000001

l2305D17C:
	sb	zero,a5,+00000000
	c.lw	s1,8(a5)
	c.add	a5,s3
	c.sw	s1,8(a5)

l2305D186:
	lw	s2,s2,+00000000
	c.j	000000002305D126

l2305D18C:
	lui	s1,0004200F
	lw	a5,s1,-00000358
	slli	a2,s3,00000002
	c.mv	a0,a2
	c.swsp	a2,00000084
	c.jalr	a5
	c.mv	s4,a0
	addi	s1,s1,-00000358
	c.beqz	a0,000000002305D0BC

l2305D1A6:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	sltu	s10,zero,s5
	jal	ra,00000000230A3A68
	c.mv	s7,s4
	lw	s8,s2,+00000000
	c.mv	s9,s4
	c.li	s2,00000000
	c.li	s0,00000005
	c.addi	s6,00000001
	c.addi	s10,00000002

l2305D1C2:
	beq	s8,zero,000000002305D21A

l2305D1C6:
	beq	s2,zero,000000002305D1F6

l2305D1CA:
	c.li	s0,00000000
	lui	s1,0004200F

l2305D1D0:
	slli	a5,s0,00000002
	c.add	a5,s4
	c.lw	a5,0(a0)
	c.beqz	a0,000000002305D1E0

l2305D1DA:
	lw	a5,s1,-0000035C
	c.jalr	a5

l2305D1E0:
	c.addi	s0,00000001
	bne	s3,s0,000000002305D1D0

l2305D1E6:
	lui	a5,0004200F
	lw	a5,a5,-0000035C
	c.mv	a0,s4
	c.li	s0,00000000
	c.jalr	a5
	c.j	000000002305D0BC

l2305D1F6:
	c.li	a3,00000000
	c.mv	a2,s5
	c.mv	a1,s6
	c.mv	a0,s8
	c.jal	000000002305D2A6
	sw	a0,s9,+00000000
	c.beqz	a0,000000002305D216

l2305D206:
	jal	ra,00000000230A4220
	c.add	s0,s10
	c.add	s0,a0

l2305D20E:
	lw	s8,s8,+00000000
	c.addi	s9,00000004
	c.j	000000002305D1C2

l2305D216:
	c.li	s2,00000001
	c.j	000000002305D20E

l2305D21A:
	bne	s2,zero,000000002305D1CA

l2305D21E:
	c.lw	s1,0(a5)
	c.mv	a0,s0
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002305D1CA

l2305D228:
	addi	a5,zero,+0000005B
	sb	a5,a0,+00000000
	addi	s1,a0,+00000001
	sb	zero,a0,+00000001
	addi	s9,s3,-00000001
	addi	s10,zero,+0000002C
	addi	s11,zero,+00000020
	lui	s8,0004200F

l2305D248:
	lw	a0,s7,+00000000
	jal	ra,00000000230A4220
	lw	a1,s7,+00000000
	c.mv	s6,a0
	c.mv	a2,a0
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.add	s1,s6
	beq	s9,s2,000000002305D272

l2305D264:
	sb	s10,s1,+00000000
	bne	s5,zero,000000002305D29E

l2305D26C:
	c.addi	s1,00000001

l2305D26E:
	sb	zero,s1,+00000000

l2305D272:
	addi	s6,s8,-0000035C
	lw	a0,s7,+00000000
	lw	a5,s6,+00000000
	c.addi	s2,00000001
	c.addi	s7,00000004
	c.jalr	a5
	bne	s3,s2,000000002305D248

l2305D288:
	lw	a5,s6,+00000000
	c.mv	a0,s4
	c.jalr	a5
	addi	a5,zero,+0000005D
	sb	a5,s1,+00000000
	sb	zero,s1,+00000001
	c.j	000000002305D0BC

l2305D29E:
	sb	s11,s1,+00000001
	c.addi	s1,00000002
	c.j	000000002305D26E

;; print_value: 2305D2A6
;;   Called from:
;;     2305D14E (in print_array.isra.4)
;;     2305D1FE (in print_array.isra.4)
;;     2305D538 (in print_object.isra.3)
;;     2305D68A (in print_object.isra.3)
;;     2305D900 (in cJSON_Print)
print_value proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002305D2E4

l2305D2B0:
	lbu	a5,a0,+0000000C
	c.li	a4,00000006
	c.beqz	a3,000000002305D336

l2305D2B8:
	bltu	a4,a5,000000002305D396

l2305D2BC:
	lui	a4,000230BF
	c.slli	a5,02
	addi	a4,a4,+00000760
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2305D2CC                                     95 45 36 85             .E6.
2305D2D0 EF F0 0F CA 2A 84 19 C5 B7 F5 0B 23 93 85 05 7B ....*......#...{
2305D2E0 EF 60 14 69                                     .`.i           

l2305D2E4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra
2305D2EE                                           99 45               .E
2305D2F0 36 85 EF F0 EF C7 2A 84 75 D5 B7 35 0B 23 93 85 6.....*.u..5.#..
2305D300 45 19 F9 BF 95 45 36 85 EF F0 8F C6 2A 84 79 D9 E....E6.....*.y.
2305D310 B7 35 0B 23 93 85 C5 18 E1 B7 B6 85 22 85 22 44 .5.#........"."D
2305D320 B2 40 41 01 6F F0 4F D4 B6 85 08 48 22 44 B2 40 .@A.o.O....H"D.@
2305D330 41 01 6F F0 6F EE                               A.o.o.         

l2305D336:
	bltu	a4,a5,000000002305D396

l2305D33A:
	lui	a4,000230BF
	c.slli	a5,02
	addi	a4,a4,+0000077C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2305D34A                               37 F5 0B 23 13 05           7..#..
2305D350 05 7B 22 44 B2 40 41 01 6F F0 6F CB 37 35 0B 23 .{"D.@A.o.o.75.#
2305D360 13 05 45 19 FD B7 37 35 0B 23 13 05 C5 18 D5 B7 ..E...75.#......
2305D370 81 45 6D B7 81 45 55 BF 81 46 13 05 84 00 22 44 .Em..EU..F...."D
2305D380 B2 40 41 01 6F F0 1F CF 81 46 13 05 84 00 22 44 .@A.o....F...."D
2305D390 B2 40 41 01 19 A0                               .@A...         

l2305D396:
	c.li	s0,00000000
	c.j	000000002305D2E4

;; print_object.isra.3: 2305D39A
print_object.isra.3 proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.lw	a0,0(a5)
	c.mv	s6,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.mv	s2,a3
	c.li	s5,00000000

l2305D3C2:
	c.bnez	a5,000000002305D3E2

l2305D3C4:
	bne	s5,zero,000000002305D458

l2305D3C8:
	beq	s2,zero,000000002305D3E8

l2305D3CC:
	c.li	a1,00000003
	c.beqz	s0,000000002305D3D4

l2305D3D0:
	addi	a1,s1,+00000004

l2305D3D4:
	c.mv	a0,s2
	jal	ra,000000002305C770

l2305D3DA:
	c.mv	s10,a0
	c.bnez	a0,000000002305D3FC

l2305D3DE:
	c.li	s10,00000000
	c.j	000000002305D430

l2305D3E2:
	c.addi	s5,00000001
	c.lw	a5,0(a5)
	c.j	000000002305D3C2

l2305D3E8:
	lui	a5,0004200F
	lw	a5,a5,-00000358
	c.li	a0,00000003
	c.beqz	s0,000000002305D3F8

l2305D3F4:
	addi	a0,s1,+00000004

l2305D3F8:
	c.jalr	a5
	c.j	000000002305D3DA

l2305D3FC:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	a5,a0,+00000001
	c.beqz	s0,000000002305D424

l2305D40A:
	c.li	a3,0000000A
	sb	a3,a0,+00000001
	c.li	a3,FFFFFFFE
	addi	a5,a0,+00000002
	c.addi	s1,FFFFFFFF
	c.sub	a3,a0
	c.li	a1,00000009

l2305D41C:
	add	a2,a5,a3
	blt	a2,s1,000000002305D450

l2305D424:
	addi	a3,zero,+0000007D
	sb	a3,a5,+00000000
	sb	zero,a5,+00000001

l2305D430:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s10
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

l2305D450:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF
	c.j	000000002305D41C

l2305D458:
	beq	s2,zero,000000002305D5B6

l2305D45C:
	sltu	s3,zero,s0
	c.addi	s3,00000001
	addi	a1,s3,+00000001
	c.mv	a0,s2
	lw	s4,s2,+00000008
	jal	ra,000000002305C770
	c.beqz	a0,000000002305D3DE

l2305D472:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	a5,a0,+00000001
	c.beqz	s0,000000002305D48A

l2305D480:
	c.li	a4,0000000A
	addi	a5,a0,+00000002
	sb	a4,a0,+00000001

l2305D48A:
	sb	zero,a5,+00000000
	lw	a5,s2,+00000008
	addi	s5,s1,+00000001
	addi	s7,zero,+0000003A
	c.add	a5,s3
	sw	a5,s2,+00000008
	lw	s11,s6,+00000000
	sltu	s8,zero,s0
	c.li	s6,00000009
	addi	s9,zero,+0000002C
	c.li	s10,0000000A

l2305D4B0:
	bne	s11,zero,000000002305D4DE

l2305D4B4:
	c.li	a1,00000002
	c.beqz	s0,000000002305D4BC

l2305D4B8:
	addi	a1,s1,+00000002

l2305D4BC:
	c.mv	a0,s2
	jal	ra,000000002305C770
	c.beqz	a0,000000002305D3DE

l2305D4C4:
	bne	s0,zero,000000002305D5B0

l2305D4C8:
	addi	a5,zero,+0000007D
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lw	a4,s2,+00000000
	add	s10,a4,s4
	c.j	000000002305D430

l2305D4DE:
	c.beqz	s0,000000002305D4FC

l2305D4E0:
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002305C770
	beq	a0,zero,000000002305D3DE

l2305D4EC:
	c.li	a5,00000000

l2305D4EE:
	blt	a5,s5,000000002305D58A

l2305D4F2:
	lw	a5,s2,+00000008
	c.add	a5,s5
	sw	a5,s2,+00000008

l2305D4FC:
	lw	a0,s11,+00000020
	c.mv	a1,s2
	jal	ra,000000002305CA18
	c.mv	a0,s2
	jal	ra,000000002305C842
	sw	a0,s2,+00000008
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002305C770
	beq	a0,zero,000000002305D3DE

l2305D51C:
	sb	s7,a0,+00000000
	c.beqz	s0,000000002305D526

l2305D522:
	sb	s6,a0,+00000001

l2305D526:
	lw	a5,s2,+00000008
	c.mv	a1,s5
	c.mv	a3,s2
	c.add	a5,s3
	sw	a5,s2,+00000008
	c.mv	a2,s0
	c.mv	a0,s11
	jal	ra,000000002305D2A6
	c.mv	a0,s2
	jal	ra,000000002305C842
	sw	a0,s2,+00000008
	lw	a5,s11,+00000000
	c.mv	a0,s2
	sltu	a5,zero,a5
	c.add	a5,s8
	addi	a1,a5,+00000001
	c.swsp	a5,00000004
	jal	ra,000000002305C770
	beq	a0,zero,000000002305D3DE

l2305D560:
	lw	a4,s11,+00000000
	c.lwsp	s0,000000E4
	c.beqz	a4,000000002305D56E

l2305D568:
	sb	s9,a0,+00000000
	c.addi	a0,00000001

l2305D56E:
	c.beqz	s0,000000002305D576

l2305D570:
	sb	s10,a0,+00000000
	c.addi	a0,00000001

l2305D576:
	sb	zero,a0,+00000000
	lw	a4,s2,+00000008
	c.add	a5,a4
	sw	a5,s2,+00000008
	lw	s11,s11,+00000000
	c.j	000000002305D4B0

l2305D58A:
	add	a4,a0,a5
	sb	s6,a4,+00000000
	c.addi	a5,00000001
	c.j	000000002305D4EE

l2305D596:
	add	a3,a0,a5
	sb	a4,a3,+00000000
	c.addi	a5,00000001

l2305D5A0:
	blt	a5,s1,000000002305D596

l2305D5A4:
	c.mv	s4,s1
	bge	s1,zero,000000002305D5AC

l2305D5AA:
	c.li	s4,00000000

l2305D5AC:
	c.add	a0,s4
	c.j	000000002305D4C8

l2305D5B0:
	c.li	a5,00000000
	c.li	a4,00000009
	c.j	000000002305D5A0

l2305D5B6:
	lui	s4,0004200F
	addi	s3,s4,-00000358
	lw	a5,s3,+00000000
	slli	s8,s5,00000002
	c.mv	a0,s8
	c.jalr	a5
	addi	a5,s4,-00000358
	c.swsp	a5,00000008
	c.mv	s2,a0
	beq	a0,zero,000000002305D3DE

l2305D5D6:
	lw	a5,s3,+00000000
	c.mv	a0,s8
	c.jalr	a5
	c.mv	s4,a0
	c.bnez	a0,000000002305D5F0

l2305D5E2:
	lui	a5,0004200F
	lw	a5,a5,-0000035C

l2305D5EA:
	c.mv	a0,s2
	c.jalr	a5
	c.j	000000002305D3DE

l2305D5F0:
	c.mv	a2,s8
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	c.mv	a2,s8
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,00000000230A3A68
	addi	a5,s1,+00000001
	c.swsp	a5,00000084
	lw	s10,s6,+00000000
	c.beqz	s0,000000002305D66A

l2305D610:
	addi	s11,s1,+00000008
	addi	s9,s1,+00000003

l2305D618:
	addi	a5,s9,+00000002
	c.mv	s7,s4
	c.mv	s6,s2
	c.mv	a6,s2
	c.swsp	s4,00000004
	c.li	s3,00000000
	c.swsp	a5,00000088

l2305D628:
	bne	s10,zero,000000002305D670

l2305D62C:
	beq	s3,zero,000000002305D6C8

l2305D630:
	c.li	s0,00000000
	lui	s1,0004200F

l2305D636:
	add	a5,s4,s0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002305D644

l2305D63E:
	lw	a5,s1,-0000035C
	c.jalr	a5

l2305D644:
	add	a5,s2,s0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002305D652

l2305D64C:
	lw	a5,s1,-0000035C
	c.jalr	a5

l2305D652:
	c.addi	s0,00000004
	bne	s8,s0,000000002305D636

l2305D658:
	lui	s0,0004200F
	addi	s0,s0,-0000035C
	c.lw	s0,0(a5)
	c.mv	a0,s4
	c.jalr	a5
	c.lw	s0,0(a5)
	c.j	000000002305D5EA

l2305D66A:
	c.li	s11,00000007
	c.li	s9,00000000
	c.j	000000002305D618

l2305D670:
	lw	a0,s10,+00000020
	c.li	a1,00000000
	c.swsp	a6,0000000C
	jal	ra,000000002305CA18
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000064
	c.mv	s9,a0
	c.sw	a5,0(a0)
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a0,s10
	jal	ra,000000002305D2A6
	c.lwsp	s8,00000008
	sw	a0,a6,+00000000
	beq	s9,zero,000000002305D6C4

l2305D698:
	c.beqz	a0,000000002305D6C4

l2305D69A:
	c.swsp	a6,0000008C
	jal	ra,00000000230A4220
	c.swsp	a0,0000000C
	c.mv	a0,s9
	jal	ra,00000000230A4220
	c.lwsp	s4,000000E4
	c.lwsp	s8,000000A4
	c.lwsp	t3,00000008
	c.add	a5,s11
	c.add	a5,a3
	add	s11,a5,a0

l2305D6B6:
	c.lwsp	s0,000000E4
	lw	s10,s10,+00000000
	c.addi	a6,00000004
	c.addi	a5,00000004
	c.swsp	a5,00000004
	c.j	000000002305D628

l2305D6C4:
	c.li	s3,00000001
	c.j	000000002305D6B6

l2305D6C8:
	c.lwsp	a6,000000E4
	c.mv	a0,s11
	c.lw	a5,0(a4)
	c.jalr	a4
	c.mv	s10,a0
	c.beqz	a0,000000002305D630

l2305D6D4:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	s9,a0,+00000001
	c.beqz	s0,000000002305D6EC

l2305D6E2:
	c.li	a3,0000000A
	addi	s9,a0,+00000002
	sb	a3,a0,+00000001

l2305D6EC:
	addi	a5,s5,-00000001
	sb	zero,s9,+00000000
	c.li	s8,00000000
	c.swsp	a5,00000004

l2305D6F8:
	c.beqz	s0,000000002305D712

l2305D6FA:
	c.li	a3,00000000
	c.j	000000002305D706

l2305D6FE:
	c.li	a5,00000009
	sb	a5,a2,+00000000
	c.addi	a3,00000001

l2305D706:
	c.lwsp	a2,000000E4
	add	a2,s9,a3
	blt	a3,a5,000000002305D6FE

l2305D710:
	c.mv	s9,a2

l2305D712:
	lw	a0,s7,+00000000
	jal	ra,00000000230A4220
	lw	a1,s7,+00000000
	c.mv	s11,a0
	c.mv	a2,a0
	c.mv	a0,s9
	jal	ra,00000000230A382C
	add	a0,s9,s11
	addi	a5,zero,+0000003A
	sb	a5,a0,+00000000
	addi	s9,a0,+00000001
	c.beqz	s0,000000002305D744

l2305D73A:
	c.li	a5,00000009
	addi	s9,a0,+00000002
	sb	a5,a0,+00000001

l2305D744:
	lw	a1,s6,+00000000
	c.mv	a0,s9
	jal	ra,00000000230A4170
	lw	a0,s6,+00000000
	jal	ra,00000000230A4220
	c.lwsp	s0,000000E4
	c.add	s9,a0
	beq	a5,s8,000000002305D768

l2305D75E:
	addi	a5,zero,+0000002C
	sb	a5,s9,+00000000
	c.addi	s9,00000001

l2305D768:
	c.beqz	s0,000000002305D772

l2305D76A:
	c.li	a5,0000000A
	sb	a5,s9,+00000000
	c.addi	s9,00000001

l2305D772:
	lui	a5,0004200F
	addi	s11,a5,-0000035C
	sb	zero,s9,+00000000
	lw	a0,s7,+00000000
	lw	a2,s11,+00000000
	c.addi	s8,00000001
	c.addi	s7,00000004
	c.jalr	a2
	lw	a0,s6,+00000000
	lw	a2,s11,+00000000
	c.addi	s6,00000004
	c.jalr	a2
	bne	s5,s8,000000002305D6F8

l2305D79C:
	lw	a2,s11,+00000000
	c.mv	a0,s4
	c.jalr	a2
	lw	a3,s11,+00000000
	c.mv	a0,s2
	c.jalr	a3
	c.li	a3,00000009
	c.bnez	s0,000000002305D7C8

l2305D7B0:
	addi	a3,zero,+0000007D
	sb	a3,s9,+00000000
	sb	zero,s9,+00000001
	c.j	000000002305D430

l2305D7BE:
	add	a2,s9,s3
	sb	a3,a2,+00000000
	c.addi	s3,00000001

l2305D7C8:
	blt	s3,s1,000000002305D7BE

l2305D7CC:
	bge	s1,zero,000000002305D7D2

l2305D7D0:
	c.li	s1,00000000

l2305D7D2:
	c.add	s9,s1
	c.j	000000002305D7B0

;; cJSON_InitHooks: 2305D7D6
;;   Called from:
;;     2305B020 (in __bl_ble_sync_task)
cJSON_InitHooks proc
	lui	a3,0004200F
	lui	a4,0004200F
	addi	a3,a3,-00000358
	addi	a4,a4,-0000035C
	c.bnez	a0,000000002305D7FC

l2305D7E8:
	lui	a5,0002307C
	addi	a5,a5,-00000104
	c.sw	a3,0(a5)

l2305D7F2:
	lui	a5,0002307C
	addi	a5,a5,-0000010C
	c.j	000000002305D80E

l2305D7FC:
	c.lw	a0,0(a5)
	c.bnez	a5,000000002305D808

l2305D800:
	lui	a5,0002307C
	addi	a5,a5,-00000104

l2305D808:
	c.sw	a3,0(a5)
	c.lw	a0,4(a5)
	c.beqz	a5,000000002305D7F2

l2305D80E:
	c.sw	a4,0(a5)
	c.jr	ra

;; cJSON_Delete: 2305D812
;;   Called from:
;;     2305D866 (in cJSON_Delete)
;;     2305D8B4 (in cJSON_ParseWithOpts)
;;     2305D8DE (in cJSON_ParseWithOpts)
;;     2307DDEE (in base_station_info)
cJSON_Delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a0
	lui	s2,0004200F

l2305D824:
	c.bnez	s0,000000002305D834

l2305D826:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305D834:
	c.lw	s0,12(a5)
	lw	s3,s0,+00000000
	addi	s1,s2,-0000035C
	andi	a5,a5,+00000100
	c.bnez	a5,000000002305D84C

l2305D844:
	c.lw	s0,8(a0)
	c.bnez	a0,000000002305D866

l2305D848:
	c.lw	s0,16(a0)
	c.bnez	a0,000000002305D872

l2305D84C:
	c.lw	s0,12(a5)
	andi	a5,a5,+00000200
	c.bnez	a5,000000002305D85C

l2305D854:
	c.lw	s0,32(a0)
	c.beqz	a0,000000002305D85C

l2305D858:
	c.lw	s1,0(a5)
	c.jalr	a5

l2305D85C:
	c.lw	s1,0(a5)
	c.mv	a0,s0
	c.mv	s0,s3
	c.jalr	a5
	c.j	000000002305D824

l2305D866:
	c.jal	000000002305D812
	c.lw	s0,12(a5)
	andi	a5,a5,+00000100
	c.beqz	a5,000000002305D848

l2305D870:
	c.j	000000002305D84C

l2305D872:
	c.lw	s1,0(a5)
	c.jalr	a5
	c.j	000000002305D84C

;; cJSON_ParseWithOpts: 2305D878
;;   Called from:
;;     2305D8F6 (in cJSON_Parse)
cJSON_ParseWithOpts proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	addi	s2,s2,+000004E8
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s4,a2
	jal	ra,000000002305C744
	sw	zero,s2,+00000000
	c.mv	s0,a0
	c.beqz	a0,000000002305D8BA

l2305D8A0:
	c.mv	a0,s1
	jal	ra,000000002305C72C
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002305CC72
	c.mv	s1,a0
	c.bnez	a0,000000002305D8CC

l2305D8B2:
	c.mv	a0,s0
	jal	ra,000000002305D812

l2305D8B8:
	c.li	s0,00000000

l2305D8BA:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305D8CC:
	beq	s4,zero,000000002305D8E8

l2305D8D0:
	jal	ra,000000002305C72C
	lbu	a5,a0,+00000000
	c.mv	s1,a0
	c.beqz	a5,000000002305D8E8

l2305D8DC:
	c.mv	a0,s0
	jal	ra,000000002305D812
	sw	s1,s2,+00000000
	c.j	000000002305D8B8

l2305D8E8:
	beq	s3,zero,000000002305D8BA

l2305D8EC:
	sw	s1,s3,+00000000
	c.j	000000002305D8BA

;; cJSON_Parse: 2305D8F2
;;   Called from:
;;     2307DD7A (in base_station_info)
cJSON_Parse proc
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002305D878

;; cJSON_Print: 2305D8FA
cJSON_Print proc
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	jal	zero,000000002305D2A6

;; cJSON_GetObjectItem: 2305D904
;;   Called from:
;;     2307DD8A (in base_station_info)
;;     2307DD9A (in base_station_info)
;;     2307DDAA (in base_station_info)
cJSON_GetObjectItem proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,8(s0)
	c.mv	s1,a1

l2305D910:
	c.beqz	s0,000000002305D91C

l2305D912:
	c.lw	s0,32(a0)
	c.mv	a1,s1
	jal	ra,000000002305CC18
	c.bnez	a0,000000002305D928

l2305D91C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305D928:
	c.lw	s0,0(s0)
	c.j	000000002305D910

;; cJSON_AddItemToArray: 2305D92C
;;   Called from:
;;     2305D978 (in cJSON_AddItemToObject)
cJSON_AddItemToArray proc
	c.beqz	a1,000000002305D940

l2305D92E:
	c.lw	a0,8(a5)
	c.bnez	a5,000000002305D938

l2305D932:
	c.sw	a0,8(a1)
	c.jr	ra

l2305D936:
	c.mv	a5,a4

l2305D938:
	c.lw	a5,0(a4)
	c.bnez	a4,000000002305D936

l2305D93C:
	c.sw	a5,0(a1)
	c.sw	a1,4(a5)

l2305D940:
	c.jr	ra

;; cJSON_AddItemToObject: 2305D942
cJSON_AddItemToObject proc
	c.beqz	a2,000000002305D97C

l2305D944:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lw	a2,32(a0)
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.mv	s2,a1
	c.beqz	a0,000000002305D962

l2305D958:
	lui	a5,0004200F
	lw	a5,a5,-0000035C
	c.jalr	a5

l2305D962:
	c.mv	a0,s2
	jal	ra,000000002305C80E
	c.sw	s0,32(a0)
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002305D92C

l2305D97C:
	c.jr	ra

;; cJSON_CreateNumber: 2305D97E
cJSON_CreateNumber proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000080
	c.swsp	s3,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,000000002305C744
	c.mv	s0,a0
	c.beqz	a0,000000002305D9AA

l2305D994:
	c.li	a5,00000003
	c.sw	a0,12(a5)
	sw	s2,a0,+00000018
	sw	s3,a0,+0000001C
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230A2EB8
	c.sw	s0,20(a0)

l2305D9AA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000048
	c.lwsp	zero,00000068
	c.addi	sp,00000010
	c.jr	ra

;; cJSON_CreateString: 2305D9B8
cJSON_CreateString proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,000000002305C744
	c.mv	s0,a0
	c.beqz	a0,000000002305D9D6

l2305D9CA:
	c.li	a5,00000004
	c.sw	a0,12(a5)
	c.mv	a0,s1
	jal	ra,000000002305C80E
	c.sw	s0,16(a0)

l2305D9D6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; cJSON_CreateObject: 2305D9E2
cJSON_CreateObject proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305C744
	c.beqz	a0,000000002305D9F0

l2305D9EC:
	c.li	a5,00000006
	c.sw	a0,12(a5)

l2305D9F0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; cli_command_get: 2305D9F6
;;   Called from:
;;     2305DE22 (in proc_onecmd)
;;     2305E64C (in help_cmd)
;;     2305EB50 (in cli_main_input)
cli_command_get proc
	c.li	a5,FFFFFFFF
	blt	a0,zero,000000002305DA24

l2305D9FC:
	lui	a5,0004200F
	lw	a4,a5,+000004EC
	c.li	a5,FFFFFFFF
	c.lw	a4,44(a3)
	addi	a2,a3,+00000008
	bgeu	a0,a2,000000002305DA24

l2305DA10:
	bgeu	a0,a3,000000002305DA28

l2305DA14:
	c.beqz	a1,000000002305DA1A

l2305DA16:
	c.li	a5,00000001
	c.sw	a1,0(a5)

l2305DA1A:
	c.li	a5,0000000C
	add	a0,a0,a5
	c.lw	a4,8(a5)
	c.add	a5,a0

l2305DA24:
	c.mv	a0,a5
	c.jr	ra

l2305DA28:
	c.beqz	a1,000000002305DA2E

l2305DA2A:
	sw	zero,a1,+00000000

l2305DA2E:
	c.lw	a4,44(a5)
	c.sub	a0,a5
	c.slli	a0,02
	c.add	a0,a4
	c.lw	a0,12(a5)
	c.j	000000002305DA24

;; exit_cmd: 2305DA3A
exit_cmd proc
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+000004F0
	c.jr	ra

;; cb_idnoe: 2305DA46
cb_idnoe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a5)
	c.bnez	a5,000000002305DA6E

l2305DA4E:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	lui	a0,000230C0
	addi	a0,a0,-00000798
	c.swsp	a1,00000084
	jal	ra,0000000023082388
	lui	a0,000230C0
	addi	a0,a0,-00000778
	jal	ra,0000000023082388
	c.lwsp	a2,00000064

l2305DA6E:
	lbu	a5,a1,+00000010
	c.li	a2,00000001
	c.li	a4,0000001C
	addi	a3,a5,-00000001
	andi	a3,a3,+000000FF
	bgeu	a2,a3,000000002305DA8E

l2305DA82:
	c.li	a3,00000003
	addi	a4,zero,+00000050
	beq	a5,a3,000000002305DA8E

l2305DA8C:
	c.li	a4,00000000

l2305DA8E:
	c.li	a3,00000001
	c.lw	a1,8(a2)
	beq	a5,a3,000000002305DAC0

l2305DA96:
	c.li	a3,00000002
	beq	a5,a3,000000002305DACA

l2305DA9C:
	c.li	a3,00000003
	beq	a5,a3,000000002305DAD4

l2305DAA2:
	lui	a3,000230B3
	addi	a3,a3,+0000032C

l2305DAAA:
	lui	a0,000230C0
	c.mv	a1,a4
	addi	a0,a0,-00000720
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2305DAC0:
	lui	a3,000230C0
	addi	a3,a3,-000007B4
	c.j	000000002305DAAA

l2305DACA:
	lui	a3,000230C0
	addi	a3,a3,-000007A8
	c.j	000000002305DAAA

l2305DAD4:
	lui	a3,000230C0
	addi	a3,a3,-000007C0
	c.j	000000002305DAAA

;; ota_cmd: 2305DADE
ota_cmd proc
	lui	a1,0002305E
	lui	a0,000230C0
	c.lui	a3,00001000
	c.li	a2,00000000
	addi	a1,a1,-0000050A
	addi	a0,a0,-000003C8
	jal	zero,000000002307BC7C

;; tftp_ota_thread: 2305DAF6
tftp_ota_thread proc
	c.li	a0,00000000
	jal	zero,000000002307BD36

;; cat_cmd: 2305DAFC
cat_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002305DB18

l2305DB0C:
	lui	a0,000230C0
	addi	a0,a0,-000007EC
	jal	ra,0000000023082388

l2305DB18:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,000000002307AC90
	c.mv	s0,a0
	blt	a0,zero,000000002305DB4A

l2305DB26:
	lui	s1,000230BF

l2305DB2A:
	c.li	a2,00000001
	addi	a1,sp,+0000000F
	c.mv	a0,s0
	jal	ra,000000002307ADAC
	c.li	a5,00000001
	bne	a0,a5,000000002305DB62

l2305DB3C:
	lbu	a1,sp,+0000000F
	addi	a0,s1,-00000298
	jal	ra,0000000023082388
	c.j	000000002305DB2A

l2305DB4A:
	c.lw	s1,4(a1)
	lui	a0,000230C0
	addi	a0,a0,-000007D4
	jal	ra,0000000023082388

l2305DB58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305DB62:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002307AD54
	c.j	000000002305DB58

;; hexdump_cmd: 2305DB76
hexdump_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002305DB92

l2305DB86:
	lui	a0,000230C0
	addi	a0,a0,-000007EC
	jal	ra,0000000023082388

l2305DB92:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,000000002307AC90
	c.mv	s0,a0
	bge	a0,zero,000000002305DBB8

l2305DBA0:
	c.lw	s1,4(a1)
	lui	a0,000230C0
	addi	a0,a0,-000007D4
	jal	ra,0000000023082388

l2305DBAE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305DBB8:
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002307AE08
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lw	s1,4(a1)
	lui	a0,000230C0
	addi	a0,a0,-00000540
	jal	ra,0000000023082388
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	jal	ra,000000002307A480
	c.mv	a0,s0
	jal	ra,000000002307AD54
	c.j	000000002305DBAE

;; aos_cli_init: 2305DBEE
;;   Called from:
;;     23000AE8 (in aos_loop_proc)
aos_cli_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000244
	lui	s0,0004200F
	c.swsp	ra,00000084
	addi	s0,s0,+000004EC
	jal	ra,000000002307BEF0
	c.sw	s0,0(a0)
	c.li	a5,0000000C
	c.beqz	a0,000000002305DC46

l2305DC0A:
	addi	a2,zero,+00000244
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lw	s0,0(a4)
	lui	a5,000230CC
	addi	a3,a5,-000004D8
	lui	a5,000230CC
	addi	a5,a5,+00000188
	c.sub	a5,a3
	c.sw	a4,8(a3)
	lui	a3,000AAAAB
	c.srai	a5,00000002
	addi	a3,a3,-00000555
	add	a5,a5,a3
	sw	zero,a4,+00000004
	c.sw	a4,44(a5)
	c.sw	a4,48(a5)
	c.li	a5,00000001
	c.sw	a4,0(a5)
	c.li	a5,00000000

l2305DC46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_event_cb_read_get: 2305DC50
;;   Called from:
;;     23000AEC (in aos_loop_proc)
aos_cli_event_cb_read_get proc
	lui	a0,0002305F
	addi	a0,a0,-00000194
	c.jr	ra

;; cli_putstr: 2305DC5A
;;   Called from:
;;     2305DD02 (in ps_cmd)
;;     2305DDA2 (in aos_cli_printf)
cli_putstr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a0
	jal	ra,00000000230A4220
	c.mv	s1,a0
	c.li	s0,00000000
	lui	s3,0004200F

l2305DC74:
	blt	s0,s1,000000002305DC88

l2305DC78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2305DC88:
	lw	a0,s3,+000004F8
	sub	a2,s1,s0
	add	a1,s2,s0
	jal	ra,000000002307ADDA
	blt	a0,zero,000000002305DC78

l2305DC9C:
	c.add	s0,a0
	c.j	000000002305DC74

;; ps_cmd: 2305DCA0
ps_cmd proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000600
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002306488A
	c.beqz	a0,000000002305DD22

l2305DCB4:
	lui	s2,000230C0
	addi	a1,s2,-000002D4
	c.mv	s1,a0
	jal	ra,00000000230A4170
	c.mv	a0,s1
	jal	ra,00000000230A4220
	add	s0,s1,a0
	addi	a0,s2,-000002D4
	jal	ra,00000000230A4220
	c.sub	a0,s0
	c.li	a5,0000000C
	addi	a3,zero,+00000020

l2305DCDC:
	add	a4,s0,a0
	bge	a5,a4,000000002305DD16

l2305DCE4:
	lui	s2,000230C0
	addi	a1,s2,-000002CC
	c.mv	a0,s0
	jal	ra,00000000230A4170
	addi	a0,s2,-000002CC
	jal	ra,00000000230A4220
	c.add	a0,s0
	jal	ra,0000000023063688
	c.mv	a0,s1
	jal	ra,000000002305DC5A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023064972

l2305DD16:
	sb	a3,s0,+00000000
	c.addi	s0,00000001
	sb	zero,s0,+00000000
	c.j	000000002305DCDC

l2305DD22:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_printf: 2305DD2E
;;   Called from:
;;     2305DE74 (in proc_onecmd)
;;     2305DEC4 (in proc_onecmd)
;;     2305E0EA (in ls_cmd)
;;     2305E120 (in uptime_cmd)
;;     2305E1A6 (in uptime_cmd)
;;     2305E1C4 (in reset_cmd)
;;     2305E1DC (in poweroff_cmd)
;;     2305E1F4 (in reboot_cmd)
;;     2305E216 (in version_cmd)
;;     2305E222 (in version_cmd)
;;     2305E22E (in version_cmd)
;;     2305E24E (in version_cmd)
;;     2305E26A (in version_cmd)
;;     2305E29A (in version_cmd)
;;     2305E2B2 (in devname_cmd)
;;     2305E2E8 (in echo_cmd)
;;     2305E310 (in echo_cmd)
;;     2305E342 (in echo_cmd)
;;     2305E3B2 (in mmem_cmd)
;;     2305E3F8 (in mmem_cmd)
;;     2305E46A (in pmem_cmd)
;;     2305E4E0 (in pmem_cmd)
;;     2305E4EC (in pmem_cmd)
;;     2305E4F8 (in pmem_cmd)
;;     2305E512 (in pmem_cmd)
;;     2305E51E (in pmem_cmd)
;;     2305E52A (in pmem_cmd)
;;     2305E556 (in pmem_cmd)
;;     2305E564 (in pmem_cmd)
;;     2305E570 (in pmem_cmd)
;;     2305E5A8 (in help_cmd)
;;     2305E5C6 (in help_cmd)
;;     2305E5EC (in help_cmd)
;;     2305E5FE (in help_cmd)
;;     2305E60E (in help_cmd)
;;     2305E666 (in help_cmd)
;;     2305E7C4 (in cli_main_input)
;;     2305EAC6 (in cli_main_input)
;;     2305EB46 (in cli_main_input)
;;     2305EB7E (in cli_main_input)
;;     2305EB92 (in cli_main_input)
;;     2305EBA4 (in cli_main_input)
;;     2305EBD8 (in cli_main_input)
;;     2305EBE4 (in cli_main_input)
;;     2305ED7C (in cli_main_input)
;;     2305ED88 (in cli_main_input)
;;     2305EE66 (in cli_main_input)
aos_cli_printf proc
	c.addi16sp	FFFFFEC0
	sw	s1,sp,+00000114
	sw	a1,sp,+00000124
	sw	a2,sp,+00000128
	c.mv	s1,a0
	addi	a2,zero,+00000100
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	sw	a5,sp,+00000134
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	a3,sp,+0000012C
	sw	a4,sp,+00000130
	sw	a6,sp,+00000138
	sw	a7,sp,+0000013C
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	lbu	a5,a5,+000004F5
	c.li	a0,00000000
	c.beqz	a5,000000002305DD88

l2305DD72:
	lui	s0,00042017
	addi	a1,s0,+00000458
	c.addi4spn	a0,00000010
	jal	ra,00000000230A4170
	addi	a0,s0,+00000458
	jal	ra,00000000230A4220

l2305DD88:
	addi	a1,zero,+00000100
	c.addi4spn	a5,00000010
	c.addi4spn	a3,00000124
	c.sub	a1,a0
	c.mv	a2,s1
	c.add	a0,a5
	c.swsp	a3,00000084
	jal	ra,0000000023081E12
	bge	zero,a0,000000002305DDA6

l2305DDA0:
	c.addi4spn	a0,00000010
	jal	ra,000000002305DC5A

l2305DDA6:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	c.li	a0,00000000
	c.addi16sp	00000140
	c.jr	ra

;; proc_onecmd: 2305DDB8
;;   Called from:
;;     2305ED52 (in cli_main_input)
proc_onecmd proc
	bge	zero,a0,000000002305DEA0

l2305DDBC:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200F
	lw	a5,s0,+000004EC
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.lw	a5,4(a5)
	c.mv	s1,a1
	c.mv	s2,a0
	addi	s0,s0,+000004EC
	c.bnez	a5,000000002305DDF0

l2305DDE4:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,0000000023082388

l2305DDF0:
	c.lw	s1,0(a0)
	addi	a1,zero,+0000002E
	c.li	s5,00000000
	jal	ra,00000000230A3E88
	lw	s6,s1,+00000000
	c.beqz	a0,000000002305DE06

l2305DE02:
	sub	s5,a0,s6

l2305DE06:
	c.li	s3,00000000
	c.li	s4,00000000

l2305DE0A:
	c.lw	s0,0(a4)
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s3,a5,000000002305DE1A

l2305DE14:
	c.lw	a4,48(a5)
	bltu	s4,a5,000000002305DE1E

l2305DE1A:
	c.li	a0,00000001
	c.j	000000002305DE8A

l2305DE1E:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002305D9F6
	c.mv	s7,a0
	c.lw	a0,0(a0)
	c.beqz	a0,000000002305DE3C

l2305DE2C:
	beq	s5,zero,000000002305DE40

l2305DE30:
	c.mv	a2,s5
	c.mv	a1,s6
	jal	ra,00000000230A42AC

l2305DE38:
	c.beqz	a0,000000002305DEA4

l2305DE3A:
	c.addi	s4,00000001

l2305DE3C:
	c.addi	s3,00000001
	c.j	000000002305DE0A

l2305DE40:
	c.mv	a1,s6
	jal	ra,00000000230A3FF4
	c.j	000000002305DE38

l2305DE48:
	addi	a2,zero,+00000200
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lw	s0,0(a4)
	lw	a5,s7,+00000008
	c.mv	a3,s1
	lw	a0,a4,+00000138
	c.mv	a2,s2
	addi	a1,zero,+00000200
	c.jalr	a5
	c.lw	s0,0(a5)
	lui	a0,000230C7
	addi	a0,a0,-00000688
	lw	a1,a5,+00000138
	jal	ra,000000002305DD2E
	c.lw	s0,0(a5)
	lw	a0,a5,+00000138
	jal	ra,000000002307BEF8
	c.lw	s0,0(a5)
	c.li	a0,00000000
	sw	zero,a5,+00000138

l2305DE8A:
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

l2305DEA0:
	c.li	a0,00000000
	c.jr	ra

l2305DEA4:
	addi	a0,zero,+00000200
	lw	s3,s0,+00000000
	jal	ra,000000002307BEF0
	c.lw	s0,0(a5)
	sw	a0,s3,+00000138
	lw	a0,a5,+00000138
	c.bnez	a0,000000002305DE48

l2305DEBC:
	lui	a0,000230C0
	addi	a0,a0,-000002F4
	jal	ra,000000002305DD2E
	c.j	000000002305DE1A

;; ls_cmd: 2305DECA
ls_cmd proc
	c.addi16sp	FFFFFF40
	addi	a0,zero,+00000058
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.mv	s1,a2
	c.mv	s2,a3
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	zero,00000084
	jal	ra,000000002306488A
	c.mv	s0,a0
	lui	a0,000230A5
	addi	a2,zero,+00000058
	c.li	a1,00000000
	addi	a0,a0,+00000004
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	c.li	a5,00000002
	bne	s1,a5,000000002305E0F0

l2305DF14:
	lw	a0,s2,+00000004
	lui	s1,000230C0
	addi	a1,s1,-00000518
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002305DFCA

l2305DF26:
	addi	a0,s1,-00000518
	jal	ra,000000002307AF0A
	c.mv	s2,a0
	c.beqz	a0,000000002305DFBC

l2305DF32:
	lui	a0,000230C0
	addi	a0,a0,-00000798
	jal	ra,0000000023082388
	lui	a0,000230C0
	addi	a0,a0,-00000778
	jal	ra,0000000023082388
	lui	s4,000230C0
	lui	s3,000230C0
	lui	s5,000230C0

l2305DF56:
	c.mv	a0,s2
	jal	ra,000000002307B02A
	c.beqz	a0,000000002305DF98

l2305DF5E:
	addi	s1,a0,+00000005
	addi	a1,zero,+0000007F
	c.mv	a3,s1
	addi	a2,s4,-00000510
	c.addi4spn	a0,00000010
	jal	ra,00000000230823DA
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002307AE50
	c.bnez	a0,000000002305DF56

l2305DF7C:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s5,-00000504
	blt	a4,zero,000000002305DF92

l2305DF8E:
	addi	a0,s3,-000004E8

l2305DF92:
	jal	ra,0000000023082388
	c.j	000000002305DF56

l2305DF98:
	c.mv	a0,s2

l2305DF9A:
	jal	ra,000000002307AFBA

l2305DF9E:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.lwsp	t5,000000E8
	c.lwsp	s10,0000000C
	c.addi16sp	000000C0
	c.jr	ra

l2305DFBC:
	lui	a0,000230C0
	addi	a0,a0,-000004D0

l2305DFC4:
	jal	ra,0000000023082388
	c.j	000000002305DF9E

l2305DFCA:
	lw	s3,s2,+00000004
	lui	s1,000230C0
	addi	a0,s1,-000004B8
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s1,-000004B8
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	lw	a5,s2,+00000004
	bne	a0,zero,000000002305E0C2

l2305DFEE:
	c.mv	a0,a5
	jal	ra,000000002307AF0A
	c.mv	s3,a0
	c.beqz	a0,000000002305E0B8

l2305DFF8:
	lui	a0,000230C0
	addi	a0,a0,-00000798
	jal	ra,0000000023082388
	lui	a0,000230C0
	addi	a0,a0,-00000778
	jal	ra,0000000023082388
	lui	s4,000230C7
	addi	s5,zero,+0000002F
	lui	s6,000230C0
	lui	s7,000230C0

l2305E020:
	c.mv	a0,s3
	jal	ra,000000002307B02A
	c.mv	s1,a0
	c.beqz	a0,000000002305E0B4

l2305E02A:
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	lw	a3,s2,+00000004
	addi	a2,s4,-00000688
	addi	a1,zero,+0000007F
	c.addi4spn	a0,00000010
	jal	ra,00000000230823DA
	c.addi4spn	a0,00000010
	jal	ra,00000000230A4220
	c.addi4spn	a5,00000090
	c.add	a0,a5
	lbu	a5,a0,-00000081
	beq	a5,s5,000000002305E068

l2305E05A:
	c.addi4spn	a0,00000010
	jal	ra,00000000230A4220
	c.addi4spn	a5,00000090
	c.add	a0,a5
	sb	s5,a0,+00000F80

l2305E068:
	c.addi4spn	a0,00000010
	jal	ra,00000000230A4220
	c.mv	s8,a0
	c.addi4spn	a0,00000010
	jal	ra,00000000230A4220
	c.addi4spn	a5,00000010
	c.addi	s1,00000005
	addi	a1,zero,+0000007F
	c.sub	a1,a0
	c.mv	a3,s1
	addi	a2,s4,-00000688
	add	a0,a5,s8
	jal	ra,00000000230823DA
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002307AE50
	c.bnez	a0,000000002305E020

l2305E098:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s7,-00000504
	blt	a4,zero,000000002305E0AE

l2305E0AA:
	addi	a0,s6,-000004E8

l2305E0AE:
	jal	ra,0000000023082388
	c.j	000000002305E020

l2305E0B4:
	c.mv	a0,s3
	c.j	000000002305DF9A

l2305E0B8:
	lui	a0,000230C0
	addi	a0,a0,-000004B0
	c.j	000000002305DFC4

l2305E0C2:
	lui	a1,000230C7
	addi	a1,a1,-00000630
	c.mv	a0,a5
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002305E0E2

l2305E0D2:
	lui	a0,0002305E
	c.addi4spn	a1,0000000C
	addi	a0,a0,-000005BA
	jal	ra,000000002307B1C6
	c.j	000000002305DF9E

l2305E0E2:
	lui	a0,000230C0
	addi	a0,a0,-00000498

l2305E0EA:
	jal	ra,000000002305DD2E
	c.j	000000002305DF9E

l2305E0F0:
	c.li	a5,00000001
	beq	s1,a5,000000002305E0D2

l2305E0F6:
	lui	a0,000230C0
	addi	a0,a0,-000007EC
	c.j	000000002305E0EA

;; uptime_cmd: 2305E100
uptime_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,000000002307BF00
	c.mv	s0,a0
	c.mv	a2,a0
	lui	a0,000230C0
	c.mv	a3,a1
	addi	a0,a0,-00000108
	c.mv	s1,a1
	jal	ra,000000002305DD2E
	c.lui	a2,0000F000
	addi	a2,a2,-000005A0
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002309F398
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002309F818
	lui	a2,0000036F
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	addi	a2,a2,-00000180
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002309F398
	c.li	a2,00000018
	c.li	a3,00000000
	jal	ra,000000002309F818
	lui	a2,00005266
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	addi	a2,a2,-00000400
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002309F398
	c.mv	s2,a0
	c.mv	s3,a1
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002309F398
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002309F818
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	c.swsp	a0,00000000
	lui	a0,000230C0
	c.swsp	a1,00000080
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a0,a0,-000000F0
	jal	ra,000000002305DD2E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; reset_cmd: 2305E1B8
reset_cmd proc
	lui	a0,000230C0
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000258
	c.swsp	ra,00000084
	jal	ra,000000002305DD2E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023067AB4

;; poweroff_cmd: 2305E1D0
poweroff_cmd proc
	lui	a0,000230C0
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000300
	c.swsp	ra,00000084
	jal	ra,000000002305DD2E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023067AB8

;; reboot_cmd: 2305E1E8
reboot_cmd proc
	lui	a0,000230C0
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000264
	c.swsp	ra,00000084
	jal	ra,000000002305DD2E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023067AB0

;; version_cmd: 2305E200
version_cmd proc
	lui	a0,000230C0
	c.addi16sp	FFFFFFB0
	c.li	a5,00000004
	addi	a0,a0,-000000B0
	c.swsp	ra,000000A4
	c.swsp	a5,00000080
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	jal	ra,000000002305DD2E
	lui	a0,000230A9
	addi	a0,a0,+000007E4
	jal	ra,000000002305DD2E
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,000000002305DD2E
	c.addi4spn	a3,00000028
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	jal	ra,0000000023065020
	c.beqz	a0,000000002305E25E

l2305E240:
	jal	ra,0000000023064A04
	c.mv	a1,a0
	lui	a0,000230C0
	addi	a0,a0,-00000098
	jal	ra,000000002305DD2E
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l2305E25E:
	c.lwsp	tp,00000064
	c.mv	s0,a0
	lui	a0,000230C0
	addi	a0,a0,-00000080
	jal	ra,000000002305DD2E
	c.li	s1,00000006
	lui	s2,000230C0

l2305E274:
	c.lwsp	tp,000000E4
	bge	s0,a5,000000002305E240

l2305E27A:
	add	a2,s0,s1
	slli	a5,s0,00000002
	c.addi4spn	a3,00000018
	c.addi4spn	a4,00000008
	c.add	a4,a5
	c.add	a5,a3
	c.lw	a5,0(a3)
	c.lw	a4,0(a4)
	c.addi4spn	a5,00000028
	c.mv	a1,s0
	c.srli	a3,0000000A
	c.add	a2,a5
	addi	a0,s2,-0000005C
	jal	ra,000000002305DD2E
	c.addi	s0,00000001
	c.j	000000002305E274

;; devname_cmd: 2305E2A2
devname_cmd proc
	lui	a1,000230C0
	lui	a0,000230C0
	addi	a1,a1,-0000062C
	addi	a0,a0,-00000624
	jal	zero,000000002305DD2E

;; echo_cmd: 2305E2B6
echo_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000001
	bne	a2,s1,000000002305E2F6

l2305E2C4:
	lui	a5,0004200F
	lw	a5,a5,+000004EC
	c.lw	a5,4(a5)
	c.bnez	a5,000000002305E2EC

l2305E2D0:
	lui	a1,000230C0
	addi	a1,a1,-00000604

l2305E2D8:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230C0
	addi	a0,a0,-000005FC
	c.addi	sp,00000010
	jal	zero,000000002305DD2E

l2305E2EC:
	lui	a1,000230C0
	addi	a1,a1,-00000610
	c.j	000000002305E2D8

l2305E2F6:
	c.lw	a3,4(a0)
	lui	a1,000230B4
	addi	a1,a1,-00000310
	c.mv	s0,a3
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002305E32A

l2305E308:
	lui	a0,000230C0
	addi	a0,a0,-000005D0
	jal	ra,000000002305DD2E
	lui	a5,0004200F
	lw	a5,a5,+000004EC
	sw	zero,a5,+00000004

l2305E320:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305E32A:
	c.lw	s0,4(a0)
	lui	a1,000230B4
	addi	a1,a1,-000002E0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002305E320

l2305E33A:
	lui	a0,000230C0
	addi	a0,a0,-000005C0
	jal	ra,000000002305DD2E
	lui	a5,0004200F
	lw	a5,a5,+000004EC
	c.sw	a5,4(s1)
	c.j	000000002305E320

;; mmem_cmd: 2305E352
mmem_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a5,00000003
	c.mv	s2,a3
	beq	a2,a5,000000002305E3B6

l2305E364:
	c.li	a5,00000004
	beq	a2,a5,000000002305E376

l2305E36A:
	c.li	a5,00000002
	bne	a2,a5,000000002305E3A0

l2305E370:
	c.li	s0,00000000
	c.li	s1,00000004
	c.j	000000002305E390

l2305E376:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230A4DD0
	c.mv	s1,a0

l2305E382:
	lw	a0,s2,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230A4DD0
	c.mv	s0,a0

l2305E390:
	lw	a0,s2,+00000004
	c.li	a1,00000000
	c.li	a2,00000000
	jal	ra,00000000230A4DD0
	c.mv	a1,a0
	c.bnez	a0,000000002305E3BA

l2305E3A0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,000230C0
	addi	a0,a0,-0000047C
	c.addi	sp,00000010
	jal	zero,000000002305DD2E

l2305E3B6:
	c.li	s1,00000004
	c.j	000000002305E382

l2305E3BA:
	c.li	a5,00000001
	beq	s1,a5,000000002305E3CE

l2305E3C0:
	c.li	a5,00000002
	beq	s1,a5,000000002305E3FC

l2305E3C6:
	c.lw	a0,0(a2)
	c.sw	a0,0(s0)
	c.lw	a0,0(a3)
	c.j	000000002305E3E6

l2305E3CE:
	andi	s0,s0,+000000FF
	lbu	a2,a0,+00000000
	sb	s0,a0,+00000000
	lbu	a3,a0,+00000000
	andi	a2,a2,+000000FF
	andi	a3,a3,+000000FF

l2305E3E6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,000230C0
	addi	a0,a0,-000003F4
	c.addi	sp,00000010
	jal	zero,000000002305DD2E

l2305E3FC:
	c.slli	s0,10
	c.srli	s0,00000010
	lhu	a2,a0,+00000000
	sh	s0,a0,+00000000
	lhu	a3,a0,+00000000
	c.slli	a2,10
	c.srli	a2,00000010
	c.slli	a3,10
	c.srli	a3,00000010
	c.j	000000002305E3E6

;; pmem_cmd: 2305E416
pmem_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	zero,00000084
	c.li	a5,00000003
	c.mv	s3,a3
	beq	a2,a5,000000002305E4AE

l2305E436:
	c.li	a5,00000004
	beq	a2,a5,000000002305E486

l2305E43C:
	c.li	a5,00000002
	c.li	s2,00000004
	c.li	s1,00000010
	c.li	s0,00000000
	bne	a2,a5,000000002305E456

l2305E448:
	lw	a0,s3,+00000004
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,00000000230A4DD0
	c.mv	s0,a0

l2305E456:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002305E462

l2305E45A:
	lw	a4,s3,+00000004
	bne	a5,a4,000000002305E4B2

l2305E462:
	lui	a0,000230C0
	addi	a0,a0,-000003BC
	jal	ra,000000002305DD2E

l2305E46E:
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

l2305E486:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230A4DD0
	c.mv	s2,a0

l2305E492:
	lw	a0,s3,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230A4DD0
	addi	a5,zero,+00000400
	c.mv	s1,a0
	bge	a5,a0,000000002305E448

l2305E4A8:
	addi	s1,zero,+00000400
	c.j	000000002305E448

l2305E4AE:
	c.li	s2,00000004
	c.j	000000002305E492

l2305E4B2:
	c.li	a5,00000001
	beq	s2,a5,000000002305E536

l2305E4B8:
	c.li	a5,00000002
	beq	s2,a5,000000002305E57C

l2305E4BE:
	c.li	s2,00000000
	lui	s4,000230C0
	lui	s5,000230C0
	c.li	s6,00000003
	lui	s7,000230C7

l2305E4CE:
	bge	s2,s1,000000002305E46E

l2305E4D2:
	andi	s3,s2,+00000003
	bne	s3,zero,000000002305E4E4

l2305E4DA:
	c.mv	a1,s0
	addi	a0,s4,-00000320
	jal	ra,000000002305DD2E

l2305E4E4:
	c.lw	s0,0(a1)
	addi	a0,s5,-00000308
	c.addi	s0,00000004
	jal	ra,000000002305DD2E
	bne	s3,s6,000000002305E4FC

l2305E4F4:
	addi	a0,s7,-00000700
	jal	ra,000000002305DD2E

l2305E4FC:
	c.addi	s2,00000001
	c.j	000000002305E4CE

l2305E500:
	andi	s3,s2,+0000000F
	add	s4,s0,s2
	bne	s3,zero,000000002305E516

l2305E50C:
	c.mv	a1,s4
	addi	a0,s5,-00000320
	jal	ra,000000002305DD2E

l2305E516:
	lbu	a1,s4,+00000000
	addi	a0,s6,-00000318
	jal	ra,000000002305DD2E
	bne	s3,s7,000000002305E52E

l2305E526:
	addi	a0,s8,-00000700
	jal	ra,000000002305DD2E

l2305E52E:
	c.addi	s2,00000001

l2305E530:
	blt	s2,s1,000000002305E500

l2305E534:
	c.j	000000002305E46E

l2305E536:
	c.li	s2,00000000
	lui	s5,000230C0
	lui	s6,000230C0
	c.li	s7,0000000F
	lui	s8,000230C7
	c.j	000000002305E530

l2305E548:
	andi	s3,s2,+00000007
	bne	s3,zero,000000002305E55A

l2305E550:
	c.mv	a1,s0
	addi	a0,s4,-00000320
	jal	ra,000000002305DD2E

l2305E55A:
	lhu	a1,s0,+00000000
	addi	a0,s5,-00000310
	c.addi	s0,00000002
	jal	ra,000000002305DD2E
	bne	s3,s6,000000002305E574

l2305E56C:
	addi	a0,s7,-00000700
	jal	ra,000000002305DD2E

l2305E574:
	c.addi	s2,00000001

l2305E576:
	blt	s2,s1,000000002305E548

l2305E57A:
	c.j	000000002305E46E

l2305E57C:
	c.li	s2,00000000
	lui	s4,000230C0
	lui	s5,000230C0
	c.li	s6,00000007
	lui	s7,000230C7
	c.j	000000002305E576

;; help_cmd: 2305E58E
help_cmd proc
	lui	a0,000230C0
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-000005B0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	jal	ra,000000002305DD2E
	lui	s1,000230CC
	lui	a0,000230C0
	addi	s0,s1,-00000070
	c.li	a1,00000004
	addi	a0,a0,-00000594
	lui	s3,000230CC
	lui	s2,000230C7
	jal	ra,000000002305DD2E
	addi	s4,s0,+000000C0
	addi	s1,s1,-00000070
	addi	s3,s3,+00000050
	lui	s5,000230C0
	addi	s2,s2,-00000244

l2305E5DE:
	c.lw	s0,0(a1)
	c.beqz	a1,000000002305E5F0

l2305E5E2:
	c.lw	s0,4(a2)
	c.bnez	a2,000000002305E5E8

l2305E5E6:
	c.mv	a2,s2

l2305E5E8:
	addi	a0,s5,-00000564
	jal	ra,000000002305DD2E

l2305E5F0:
	c.addi	s0,0000000C
	bne	s0,s4,000000002305E5DE

l2305E5F6:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,000000002305DD2E
	lui	a0,000230C0
	addi	a0,a0,-00000558
	lui	s4,000230C7
	jal	ra,000000002305DD2E
	c.li	s2,00000010
	c.li	s0,00000000
	lui	s5,0004200F
	lui	s6,000230C0
	addi	s4,s4,-00000244

l2305E622:
	lw	a4,s5,+000004EC
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s0,a5,000000002305E634

l2305E62E:
	c.lw	a4,48(a5)
	bltu	s2,a5,000000002305E648

l2305E634:
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

l2305E648:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002305D9F6
	bltu	a0,s1,000000002305E658

l2305E654:
	bltu	a0,s3,000000002305E66C

l2305E658:
	c.lw	a0,0(a1)
	c.beqz	a1,000000002305E66C

l2305E65C:
	c.lw	a0,4(a2)
	c.bnez	a2,000000002305E662

l2305E660:
	c.mv	a2,s4

l2305E662:
	addi	a0,s6,-00000564
	jal	ra,000000002305DD2E
	c.addi	s2,00000001

l2305E66C:
	c.addi	s0,00000001
	c.j	000000002305E622

;; cli_getchar: 2305E670
;;   Called from:
;;     2305EC0C (in cli_main_input)
cli_getchar proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	addi	a2,zero,+0000003C
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	c.swsp	ra,000000A4
	c.swsp	zero,00000000
	jal	ra,00000000230A3A68
	c.li	a4,FFFFFFFF
	c.mv	a3,sp
	c.li	a2,00000001
	c.mv	a1,s0
	c.addi4spn	a0,00000004
	sb	zero,sp,+00000004
	jal	ra,0000000023066712
	c.bnez	a0,000000002305E6AA

l2305E69A:
	c.lwsp	zero,00000044
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001

l2305E6A2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l2305E6AA:
	c.li	a0,00000000
	c.j	000000002305E6A2

;; cli_main_input: 2305E6AE
;;   Called from:
;;     2305EE92 (in console_cb_read)
;;     2305EEAC (in aos_cli_input_direct)
cli_main_input proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	lui	s1,0004200F
	c.swsp	s9,000000A0
	lw	s9,s1,+000004EC
	c.swsp	s0,00000034
	c.swsp	ra,000000B4
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.swsp	a1,00000004
	addi	s0,s9,+00000038
	c.beqz	s0,000000002305E7BC

l2305E6DA:
	c.mv	s7,a0
	addi	s1,s1,+000004EC
	c.li	s4,00000000
	lui	s8,000230C7

l2305E6E6:
	beq	s7,zero,000000002305EC0A

l2305E6EA:
	c.lwsp	s0,000000E4
	bge	s4,a5,000000002305EBEC

l2305E6F0:
	add	a4,s7,s4
	lbu	a4,a4,+00000000
	c.addi	s4,00000001
	sb	a4,sp,+00000020

l2305E6FE:
	lbu	a4,sp,+00000020
	c.li	a3,0000000A
	beq	a4,a3,000000002305E70E

l2305E708:
	c.li	a3,0000000D
	bne	a4,a3,000000002305E7CA

l2305E70E:
	lw	a4,s9,+00000034
	lw	s2,s1,+00000000
	c.add	s0,a4
	sb	zero,s0,+00000000
	addi	s2,s2,+00000038
	sw	zero,s9,+00000034
	c.mv	a0,s2
	jal	ra,00000000230A4220
	bne	a0,zero,000000002305EC18

l2305E72E:
	lui	s1,00042017
	addi	a2,zero,+00000100
	c.li	a1,00000000
	addi	a0,s1,+00000358
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,00000000230A3A68
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	jal	ra,00000000230A3A68
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3A68
	c.li	a5,00000000
	addi	s11,sp,+00000020
	c.li	s8,00000000
	addi	s6,zero,+00000020
	c.li	s3,00000001
	addi	s4,zero,+0000005C
	addi	s7,s1,+00000358
	c.li	s9,00000002
	c.li	s5,00000003
	addi	s10,zero,+0000003B

l2305E77A:
	add	s0,s2,a5
	lbu	a3,s0,+00000000
	beq	a3,s6,000000002305EE2E

l2305E786:
	bltu	s6,a3,000000002305ECAA

l2305E78A:
	beq	a3,zero,000000002305ED04

l2305E78E:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000001
	bne	a2,zero,000000002305ED18

l2305E79A:
	lw	a2,s11,+00000000
	ori	a3,a3,+00000001
	sb	a3,sp,+0000001C
	addi	a3,a2,+00000001
	sw	a3,s11,+00000000
	slli	a3,s8,00000004
	c.add	a3,a2
	c.slli	a3,02
	c.add	a3,s7
	c.sw	a3,0(s0)
	c.j	000000002305ED18

l2305E7BC:
	lui	a0,000230C0
	addi	a0,a0,-0000070C

l2305E7C4:
	jal	ra,000000002305DD2E
	c.j	000000002305EBEC

l2305E7CA:
	lui	a5,0004200F
	c.li	a0,0000001B
	addi	s2,a5,+000004F4
	bne	a4,a0,000000002305E7F2

l2305E7D8:
	c.li	a4,00000001
	lui	a3,0004200F
	sb	a4,s2,+00000000
	c.li	a4,FFFFFFFF
	sb	a4,a3,+00000CAC
	lui	a3,0004200F
	sb	a4,a3,+00000CAD
	c.j	000000002305E6E6

l2305E7F2:
	lb	a3,s2,+00000000
	beq	a3,zero,000000002305EA70

l2305E7FA:
	lui	a3,0004200F
	addi	a3,a3,-00000354
	lb	a1,a3,+00000000
	bge	a1,zero,000000002305E858

l2305E80A:
	slli	a1,a4,00000018
	c.srai	a1,00000018
	sb	a1,a3,+00000000
	addi	a3,zero,+0000005B
	beq	a1,a3,000000002305E6E6

l2305E81C:
	lw	a3,s9,+00000034
	c.add	a3,s0
	sb	a0,a3,+00000000
	lw	a3,s9,+00000034
	c.addi	a3,00000001
	sw	a3,s9,+00000034
	c.add	a3,s0
	sb	a4,a3,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	c.bnez	a4,000000002305E852

l2305E846:
	lui	a0,000230C0
	addi	a0,a0,-000006FC

l2305E84E:
	jal	ra,0000000023082388

l2305E852:
	sb	zero,s2,+00000000
	c.j	000000002305E6E6

l2305E858:
	lui	a3,0004200F
	lb	a2,a3,-00000353
	addi	a3,a3,-00000353
	bge	a2,zero,000000002305E894

l2305E868:
	slli	a2,a4,00000018
	c.srai	a2,00000018
	sb	a2,a3,+00000000
	addi	a6,zero,+00000074
	bne	a2,a6,000000002305E894

l2305E87A:
	lui	a2,00042017
	addi	a2,a2,+00000458
	sb	a0,a2,+00000000
	sb	a1,a2,+00000001
	c.li	a0,00000002
	lui	a2,0004200F
	sb	a0,a2,+000004F5

l2305E894:
	lb	a2,a3,+00000000
	c.li	a6,00000001
	andi	a0,a2,+000000FF
	addi	a3,a0,-00000041
	andi	a3,a3,+000000FF
	bgeu	a6,a3,000000002305E914

l2305E8AA:
	lui	a6,00042017
	lui	s3,0004200F
	addi	a3,zero,+00000074
	addi	s5,a6,+00000458
	addi	s3,s3,+000004F5
	beq	a2,a3,000000002305EA0C

l2305E8C2:
	lw	a4,s9,+00000034
	c.li	a3,0000001B
	c.add	a4,s0
	sb	a3,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.add	a4,s0
	sb	a1,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.add	a4,s0
	sb	a0,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	c.bnez	a4,000000002305E90A

l2305E8FE:
	lui	a0,000230C0
	addi	a0,a0,-000006F8
	jal	ra,0000000023082388

l2305E90A:
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	c.j	000000002305E852

l2305E914:
	addi	a4,zero,+00000041
	bne	a2,a4,000000002305E9B4

l2305E91C:
	c.lw	s1,0(a0)
	addi	a2,zero,+00000100
	lw	a3,a0,+0000013C
	addi	a4,a3,+000000FF

l2305E92A:
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002305E984

l2305E938:
	bne	a3,a4,000000002305E97E

l2305E93C:
	sw	a4,a0,+0000013C
	addi	a1,zero,+00000100
	c.mv	a4,s0

l2305E946:
	add	a2,a0,a3
	lbu	a2,a2,+00000144
	c.bnez	a2,000000002305E9A6

l2305E950:
	lui	a0,000230C0
	sb	zero,a4,+00000000
	c.mv	a1,s0
	addi	a0,a0,-000006F0
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230A4220
	lui	a4,00042017
	sw	a0,s9,+00000034
	sb	zero,a4,+00000458
	lui	a4,0004200F
	sb	zero,a4,+000004F5
	c.j	000000002305E852

l2305E97E:
	addi	a4,a4,+000000FF
	c.j	000000002305E92A

l2305E984:
	beq	a3,a4,000000002305E93C

l2305E988:
	addi	a2,zero,+00000100

l2305E98C:
	addi	a4,a4,+000000FF
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002305E98C

l2305E99E:
	c.addi	a4,00000001
	or	a4,a4,a2
	c.j	000000002305E93C

l2305E9A6:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a2,a4,+00000FFF
	or	a3,a3,a1
	c.j	000000002305E946

l2305E9B4:
	c.lw	s1,0(a2)
	addi	a0,zero,+00000100
	lw	a3,a2,+0000013C
	c.mv	a4,a3

l2305E9C0:
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002305EA04

l2305E9CA:
	beq	a3,a4,000000002305E9E2

l2305E9CE:
	addi	a0,zero,+00000100

l2305E9D2:
	c.addi	a4,00000001
	or	a4,a4,a0
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.beqz	a1,000000002305E9D2

l2305E9E2:
	sw	a4,a2,+0000013C
	addi	a0,zero,+00000100
	c.mv	a4,s0

l2305E9EC:
	add	a1,a2,a3
	lbu	a1,a1,+00000144
	c.beqz	a1,000000002305E950

l2305E9F6:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a1,a4,+00000FFF
	or	a3,a3,a0
	c.j	000000002305E9EC

l2305EA04:
	c.addi	a4,00000001
	or	a4,a4,a0
	c.j	000000002305E9C0

l2305EA0C:
	lbu	a3,s3,+00000000
	addi	a2,zero,+0000003F
	bgeu	a2,a3,000000002305EA32

l2305EA18:
	lui	a0,000230C0
	addi	a0,a0,-000006E8
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	sb	zero,s2,+00000000
	jal	ra,0000000023082388
	c.j	000000002305E6E6

l2305EA32:
	addi	a2,a3,+00000001
	add	a1,s5,a3
	andi	a2,a2,+000000FF
	sb	a4,a1,+00000000
	sb	a2,s3,+00000000
	addi	a1,zero,+0000006D
	bne	a4,a1,000000002305E6E6

l2305EA4E:
	c.lw	s1,0(a4)
	c.add	s5,a2
	sb	zero,s5,+00000000
	c.lw	a4,4(a4)
	c.addi	a3,00000002
	sb	a3,s3,+00000000
	bne	a4,zero,000000002305E852

l2305EA62:
	lui	a0,000230C7
	addi	a1,a6,+00000458
	addi	a0,a0,-00000688
	c.j	000000002305E84E

l2305EA70:
	lw	a3,s9,+00000034
	c.add	a3,s0
	sb	a4,a3,+00000000
	c.li	a3,00000008
	beq	a4,a3,000000002305EA88

l2305EA80:
	addi	a3,zero,+0000007F
	bne	a4,a3,000000002305EAB0

l2305EA88:
	lw	a4,s9,+00000034
	beq	a4,zero,000000002305E6E6

l2305EA90:
	c.addi	a4,FFFFFFFF
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	bne	a4,zero,000000002305E6E6

l2305EA9E:
	lui	a5,000230C0
	c.li	a2,00000008
	c.li	a1,00000008
	addi	a0,a5,-000006C4
	jal	ra,0000000023082388
	c.j	000000002305E6E6

l2305EAB0:
	c.li	a3,00000009
	bne	a4,a3,000000002305EBAA

l2305EAB6:
	lw	a4,s9,+00000034
	addi	a0,s8,-00000700
	c.li	s3,00000000
	c.add	a4,s0
	sb	zero,a4,+00000000
	jal	ra,000000002305DD2E
	c.li	s2,00000000
	c.li	s6,00000000
	c.li	s5,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l2305EAD4:
	c.lw	s1,0(a3)
	c.lw	a3,44(a4)
	c.addi	a4,00000008
	bgeu	s5,a4,000000002305EAE4

l2305EADE:
	c.lw	a3,48(a4)
	bltu	s6,a4,000000002305EB4C

l2305EAE4:
	c.li	a4,00000001
	bne	s2,a4,000000002305EB9C

l2305EAEA:
	beq	s3,zero,000000002305EB34

l2305EAEE:
	c.mv	a0,s3
	jal	ra,00000000230A4220
	addi	a4,zero,+000000FF
	bltu	a4,a0,000000002305EB34

l2305EAFC:
	lw	a4,s9,+00000034
	sub	s2,a0,a4
	c.mv	a2,s2
	add	a1,s3,a4
	add	a0,s0,a4
	jal	ra,00000000230A382C
	lw	a0,s9,+00000034
	c.add	s2,a0
	addi	a4,s2,+00000001
	sw	a4,s9,+00000034
	c.add	s2,s0
	addi	a4,zero,+00000020
	sb	a4,s2,+00000000
	lw	a4,s9,+00000034
	c.add	a4,s0
	sb	zero,a4,+00000000

l2305EB34:
	lui	a1,000230C0
	lui	a0,000230C0
	c.mv	a2,s0
	addi	a1,a1,-000006B0
	addi	a0,a0,-000006AC
	jal	ra,000000002305DD2E
	c.j	000000002305E6E6

l2305EB4C:
	c.li	a1,00000000
	c.mv	a0,s5
	jal	ra,000000002305D9F6
	c.lw	a0,0(a1)
	c.swsp	a0,00000084
	c.beqz	a1,000000002305EB84

l2305EB5A:
	lw	a2,s9,+00000034
	c.mv	a0,s0
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305EB82

l2305EB66:
	c.lwsp	a2,000000C4
	c.addi	s2,00000001
	c.lw	a4,0(a2)
	beq	s2,s10,000000002305EB98

l2305EB70:
	bne	s2,s11,000000002305EB88

l2305EB74:
	lui	a5,000230C0
	c.mv	a1,s3
	addi	a0,a5,-000006BC
	jal	ra,000000002305DD2E

l2305EB82:
	c.addi	s6,00000001

l2305EB84:
	c.addi	s5,00000001
	c.j	000000002305EAD4

l2305EB88:
	lui	a5,000230C0
	c.mv	a1,a2
	addi	a0,a5,-000006B4
	jal	ra,000000002305DD2E
	c.j	000000002305EB82

l2305EB98:
	c.mv	s3,a2
	c.j	000000002305EB82

l2305EB9C:
	bge	a4,s2,000000002305EB34

l2305EBA0:
	addi	a0,s8,-00000700
	jal	ra,000000002305DD2E
	c.j	000000002305EB34

l2305EBAA:
	c.lw	s1,0(a3)
	c.lw	a3,4(a3)
	c.bnez	a3,000000002305EBBE

l2305EBB0:
	lui	a0,000230BF
	c.mv	a1,a4
	addi	a0,a0,-00000298
	jal	ra,0000000023082388

l2305EBBE:
	lw	a4,s9,+00000034
	addi	a3,zero,+000000FF
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	bgeu	a3,a4,000000002305E6E6

l2305EBD0:
	lui	a0,000230C0
	addi	a0,a0,-000006A4
	jal	ra,000000002305DD2E
	lui	a0,000230C0
	addi	a0,a0,-000006B0
	jal	ra,000000002305DD2E
	sw	zero,s9,+00000034

l2305EBEC:
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

l2305EC0A:
	c.addi4spn	a0,00000020
	jal	ra,000000002305E670
	c.li	a4,00000001
	beq	a0,a4,000000002305E6FE

l2305EC16:
	c.j	000000002305EBEC

l2305EC18:
	lw	s3,s1,+00000000
	addi	s3,s3,+00000038
	c.mv	a0,s3
	jal	ra,00000000230A4220
	c.lw	s1,0(a5)
	addi	s5,a0,+00000001
	addi	a4,zero,+00000100
	lw	s0,a5,+00000140
	addi	a0,s0,+00000144
	sub	s4,a4,s0
	sw	s0,a5,+0000013C
	c.add	s0,s5
	c.add	a0,a5
	c.addi	s0,FFFFFFFF
	blt	s4,s5,000000002305EC88

l2305EC4A:
	c.add	a5,s0
	lbu	s6,a5,+00000144
	c.mv	a2,s5
	c.mv	a1,s3

l2305EC54:
	jal	ra,00000000230A439C
	c.addi	s0,00000001
	addi	a5,zero,+00000100
	or	s0,s0,a5
	c.lw	s1,0(a4)
	addi	a2,zero,+00000100
	sw	s0,a4,+00000140
	beq	s6,zero,000000002305E72E

l2305EC70:
	add	a5,a4,s0
	lbu	a3,a5,+00000144
	beq	a3,zero,000000002305E72E

l2305EC7C:
	c.addi	s0,00000001
	sb	zero,a5,+00000144
	or	s0,s0,a2
	c.j	000000002305EC70

l2305EC88:
	or	s0,s0,a4
	c.mv	a2,s4
	c.mv	a1,s3
	c.add	a5,s0
	lbu	s6,a5,+00000144
	jal	ra,00000000230A439C
	c.lw	s1,0(a0)
	sub	a2,s5,s4
	add	a1,s3,s4
	addi	a0,a0,+00000144
	c.j	000000002305EC54

l2305ECAA:
	addi	a4,zero,+00000022
	beq	a3,a4,000000002305EDA6

l2305ECB2:
	bne	a3,s10,000000002305E78E

l2305ECB6:
	lbu	a3,sp,+0000001C
	c.beqz	a5,000000002305ECD2

l2305ECBC:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a2,a7,+00000000
	bne	a2,s4,000000002305ECD2

l2305ECCC:
	andi	a2,a3,+00000001
	c.bnez	a2,000000002305EDC0

l2305ECD2:
	c.andi	a3,00000002
	bne	a3,zero,000000002305EE5E

l2305ECD8:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,000000002305ED18

l2305ECE0:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	lw	a3,s11,+00000000
	c.beqz	a3,000000002305ED18

l2305ECF4:
	c.addi	s8,00000001
	blt	s5,s8,000000002305ED18

l2305ECFA:
	slli	s11,s8,00000002
	c.addi4spn	a4,00000020
	c.add	s11,a4
	c.j	000000002305ED18

l2305ED04:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000002
	bne	a2,zero,000000002305EE5E

l2305ED10:
	ori	a3,a3,+00000004
	sb	a3,sp,+0000001C

l2305ED18:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000004
	c.bnez	a2,000000002305ED3A

l2305ED22:
	c.addi	a5,00000001
	addi	a2,zero,+000000FF
	blt	a2,a5,000000002305ED3A

l2305ED2C:
	blt	s5,s8,000000002305ED3A

l2305ED30:
	lw	a1,s11,+00000000
	c.li	a2,0000000F
	bge	a2,a1,000000002305E77A

l2305ED3A:
	c.andi	a3,00000002
	bne	a3,zero,000000002305EE5E

l2305ED40:
	c.addi4spn	s0,00000020
	addi	s1,s1,+00000358
	c.li	s3,00000000
	c.li	s4,00000000
	c.li	s5,00000004

l2305ED4C:
	c.lw	s0,0(a0)
	c.mv	a1,s1
	c.addi	s4,00000001
	jal	ra,000000002305DDB8
	or	s3,s3,a0
	blt	s8,s4,000000002305ED68

l2305ED5E:
	c.addi	s0,00000004
	addi	s1,s1,+00000040
	bne	s4,s5,000000002305ED4C

l2305ED68:
	c.li	a5,00000001
	bne	s3,a5,000000002305EE58

l2305ED6E:
	beq	s2,zero,000000002305ED80

l2305ED72:
	lui	a0,000230C0
	c.mv	a1,s2
	addi	a0,a0,-00000684
	jal	ra,000000002305DD2E

l2305ED80:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,000000002305DD2E
	lui	a5,00042017
	sb	zero,a5,+00000458
	lui	a0,000230C0
	lui	a5,0004200F
	sb	zero,a5,+000004F5
	addi	a0,a0,-000006B0
	c.j	000000002305E7C4

l2305EDA6:
	c.beqz	a5,000000002305EDDE

l2305EDA8:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,000000002305EDDE

l2305EDB8:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.beqz	a3,000000002305EDDE

l2305EDC0:
	c.mv	a0,s0
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,00000000230A4220
	c.lwsp	s0,00000028
	addi	a2,a0,+00000001
	c.mv	a1,s0
	c.mv	a0,a7
	jal	ra,00000000230A382C
	c.lwsp	a2,00000008
	c.mv	a5,a6
	c.j	000000002305ED18

l2305EDDE:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	beq	a3,s3,000000002305ED18

l2305EDE6:
	beq	a3,s9,000000002305EE5E

l2305EDEA:
	c.bnez	a3,000000002305EE1A

l2305EDEC:
	lbu	a3,sp,+0000001C
	lw	a2,s11,+00000000
	c.andi	a3,FFFFFFFC
	ori	a3,a3,+00000003
	sb	a3,sp,+0000001C
	addi	a3,a2,+00000001
	sw	a3,s11,+00000000
	slli	a3,s8,00000004
	c.add	a3,a2
	c.slli	a3,02
	addi	a2,a5,+00000001
	c.add	a3,s7
	c.add	a2,s2
	c.sw	a3,0(a2)
	c.j	000000002305ED18

l2305EE1A:
	bne	a3,s5,000000002305ED18

l2305EE1E:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFC

l2305EE24:
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	c.j	000000002305ED18

l2305EE2E:
	c.beqz	a5,000000002305EE48

l2305EE30:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,000000002305EE48

l2305EE40:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.bnez	a3,000000002305EDC0

l2305EE48:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,000000002305ED18

l2305EE50:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	c.j	000000002305EE24

l2305EE58:
	c.li	a5,00000002
	bne	s3,a5,000000002305ED80

l2305EE5E:
	lui	a0,000230C0
	addi	a0,a0,-00000668
	jal	ra,000000002305DD2E
	c.j	000000002305ED80

;; console_cb_read: 2305EE6C
console_cb_read proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002307ADAC
	bge	zero,a0,000000002305EE96

l2305EE80:
	c.li	a5,00000010
	c.mv	a1,a0
	blt	a5,a0,000000002305EE9E

l2305EE88:
	lui	a5,0004200F
	c.mv	a0,sp
	sw	s0,a5,+000004F8
	jal	ra,000000002305E6AE

l2305EE96:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2305EE9E:
	lui	a0,000230C0
	addi	a0,a0,-00000658
	jal	ra,0000000023082388
	c.j	000000002305EE96

;; aos_cli_input_direct: 2305EEAC
;;   Called from:
;;     23000F54 (in app_delayed_action_bleadv)
;;     23000F70 (in app_delayed_action_bleadv)
;;     2300104E (in app_delayed_action_bleadvstop)
aos_cli_input_direct proc
	jal	zero,000000002305E6AE

;; get_dns_request: 2305EEB0
get_dns_request proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	sw	a1,a0,+00000108
	sw	a3,a0,+0000010C
	sh	a4,a0,+00000110
	lhu	a4,a2,+00000008
	c.li	a5,0000000B
	c.mv	s0,a0
	c.mv	s1,a2
	bgeu	a5,a4,000000002305EF4E

l2305EEDC:
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002307055E
	lhu	a0,sp,+00000004
	jal	ra,000000002306BC12
	sh	a0,s0,+00000100
	lhu	a0,sp,+00000008
	jal	ra,000000002306BC12
	sh	a0,s0,+00000102
	lhu	a2,s1,+00000008
	addi	a5,zero,+000000FF
	bgeu	a5,a2,000000002305EF10

l2305EF0C:
	addi	a2,zero,+000000FF

l2305EF10:
	c.slli	a2,10
	c.srli	a2,00000010
	c.mv	a1,s0
	c.li	a3,0000000C
	c.mv	a0,s1
	c.swsp	a2,00000000
	jal	ra,000000002307055E
	c.mv	a2,sp
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002307A3FE
	c.bnez	a0,000000002305EF4E

l2305EF2C:
	c.lwsp	zero,000000E4
	bge	zero,a5,000000002305EF46

l2305EF32:
	c.addi	a5,FFFFFFFF
	add	a4,s0,a5
	lbu	a3,a4,+00000000
	addi	a4,zero,+0000002E
	bne	a3,a4,000000002305EF46

l2305EF44:
	c.swsp	a5,00000000

l2305EF46:
	c.lwsp	zero,000000E4
	c.add	a5,s0
	sb	zero,a5,+00000000

l2305EF4E:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	addi	a2,zero,+00000280
	addi	a1,zero,+00000200
	addi	a0,zero,+000000B6
	jal	ra,0000000023070226
	c.mv	s1,a0
	beq	a0,zero,000000002305F0AE

l2305EF6A:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	lhu	a0,s0,+00000100
	addi	s3,s0,-00000001
	c.li	s2,0000000C
	jal	ra,000000002306BC12
	sh	a0,sp,+00000010
	c.lui	a0,00008000
	addi	a0,a0,+00000180
	jal	ra,000000002306BC12
	sh	a0,sp,+00000012
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+00000014
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+00000016
	c.li	a0,00000000
	jal	ra,000000002306BC12
	sh	a0,sp,+00000018
	c.li	a0,00000000
	jal	ra,000000002306BC12
	sh	a0,sp,+0000001A
	c.li	a2,0000000C
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230705DE
	addi	s6,zero,+0000002E

l2305EFCA:
	c.addi	s3,00000001
	c.mv	s5,s3
	c.li	s4,00000000

l2305EFD0:
	lbu	a5,s3,+00000000
	bne	a5,s6,000000002305F0C2

l2305EFD8:
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023070724
	addi	a3,s2,+00000001
	sub	a2,s3,s5
	c.slli	a3,10
	c.slli	a2,10
	c.add	s2,s4
	c.srli	a3,00000010
	c.srli	a2,00000010
	c.mv	a1,s5
	c.mv	a0,s1
	slli	s4,s2,00000010
	jal	ra,000000002307063C
	srli	s4,s4,00000010
	lbu	a5,s3,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002305EFCA

l2305F014:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023070724
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+0000001C
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+0000001E
	c.lui	a0,0000C000
	c.addi	a0,0000000C
	jal	ra,000000002306BC12
	sh	a0,sp,+00000020
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+00000022
	c.li	a0,00000001
	jal	ra,000000002306BC12
	sh	a0,sp,+00000024
	c.li	a0,00000000
	jal	ra,000000002306BC12
	sh	a0,sp,+00000026
	lui	a0,000003C0
	c.addi	a0,00000004
	jal	ra,000000002306BC20
	c.swsp	a0,00000014
	lui	a0,000C0A8B
	addi	a0,a0,-000006FF
	jal	ra,000000002306BC20
	addi	a3,s4,+00000002
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a2,00000014
	c.swsp	a0,00000094
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	jal	ra,000000002307063C
	addi	a1,s4,+00000016
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023070384
	lhu	a3,s0,+00000110
	lw	a2,s0,+0000010C
	lw	a0,s0,+00000108
	c.mv	a1,s1
	jal	ra,0000000023075130
	c.mv	a0,s1
	jal	ra,00000000230701A4

l2305F0AE:
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

l2305F0C2:
	beq	a5,zero,000000002305EFD8

l2305F0C6:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s3,00000001
	c.j	000000002305EFD0

;; dns_server_init: 2305F0D0
;;   Called from:
;;     23024DE6 (in stateGlobalGuard_AP)
dns_server_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,0000000023075230
	c.beqz	a0,000000002305F12C

l2305F0DE:
	lui	a1,000230CC
	addi	a2,zero,+00000035
	addi	a1,a1,-00000524
	c.mv	s0,a0
	jal	ra,0000000023074DC4
	c.bnez	a0,000000002305F11E

l2305F0F2:
	addi	a0,zero,+00000114
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.beqz	a0,000000002305F11E

l2305F0FE:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.lwsp	tp,00000024
	lui	a1,0002305F
	addi	a1,a1,-00000150
	c.addi	sp,00000010
	jal	zero,00000000230751F8

l2305F11E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023075200

l2305F12C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; easyflash_init: 2305F136
;;   Called from:
;;     23000A58 (in aos_loop_proc)
easyflash_init proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	jal	ra,0000000023060A06
	lui	s1,000230C0
	c.mv	s0,a0
	c.bnez	a0,000000002305F184

l2305F150:
	c.lwsp	s0,00000064
	c.lwsp	a2,00000044
	jal	ra,0000000023060868
	c.mv	s0,a0
	c.bnez	a0,000000002305F184

l2305F15C:
	lui	a0,000230C0
	addi	a1,s1,-0000003C
	addi	a0,a0,-00000034

l2305F168:
	jal	ra,00000000230609E6
	lui	a0,000230C0
	addi	a0,a0,+00000018
	jal	ra,00000000230609E6
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305F184:
	lui	a0,000230C0
	addi	a1,s1,-0000003C
	addi	a0,a0,-0000000C
	c.j	000000002305F168

;; get_status: 2305F192
;;   Called from:
;;     2305F44C (in read_env)
;;     2305F93C (in read_sector_meta_data)
;;     2305F94E (in read_sector_meta_data)
;;     2305FE3A (in del_env)
get_status proc
	c.addi	a1,FFFFFFFF
	c.li	a4,FFFFFFFF

l2305F196:
	addi	a5,a1,-00000001
	bne	a5,a4,000000002305F1A2

l2305F19E:
	c.mv	a0,a1
	c.jr	ra

l2305F1A2:
	add	a3,a0,a5
	lbu	a3,a3,+00000000
	c.beqz	a3,000000002305F19E

l2305F1AC:
	c.mv	a1,a5
	c.j	000000002305F196

;; update_sector_cache: 2305F1B0
;;   Called from:
;;     2305F5B2 (in update_sec_status)
;;     2305F65C (in format_sector.constprop.16)
;;     2305FA3A (in read_sector_meta_data)
;;     2305FF80 (in move_env)
;;     23060282 (in create_env_blob)
update_sector_cache proc
	lui	a5,00042017
	c.lui	a6,00001000
	addi	a2,a5,+00000588
	c.li	a3,00000004
	c.li	a4,00000000
	addi	a5,a5,+00000588
	c.add	a6,a0
	c.li	t3,FFFFFFFF
	c.li	t1,00000004

l2305F1C8:
	lw	a7,a2,+00000000
	bgeu	a0,a1,000000002305F1FE

l2305F1D0:
	bgeu	a1,a6,000000002305F1FE

l2305F1D4:
	bne	a0,a7,000000002305F1E0

l2305F1D8:
	c.slli	a4,03
	c.add	a5,a4

l2305F1DC:
	c.sw	a5,4(a1)

l2305F1DE:
	c.jr	ra

l2305F1E0:
	bne	a7,t3,000000002305F1EA

l2305F1E4:
	bne	a3,t1,000000002305F1EA

l2305F1E8:
	c.mv	a3,a4

l2305F1EA:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,t1,000000002305F1C8

l2305F1F2:
	beq	a3,a4,000000002305F1DE

l2305F1F6:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,0(a0)
	c.j	000000002305F1DC

l2305F1FE:
	bne	a0,a7,000000002305F1EA

l2305F202:
	c.slli	a4,03
	c.add	a5,a4
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.jr	ra

;; get_next_sector_addr: 2305F20C
;;   Called from:
;;     2305FAB6 (in sector_iterator)
;;     2305FCAC (in env_iterator)
get_next_sector_addr proc
	c.lw	a0,4(a5)
	lui	a4,0004200F
	c.li	a3,FFFFFFFF
	lw	a4,a4,+00000504
	beq	a5,a3,000000002305F236

l2305F21C:
	c.lw	a0,12(a0)
	bne	a0,a3,000000002305F232

l2305F222:
	c.lui	a0,00001000

l2305F224:
	c.add	a0,a5
	c.lui	a5,00008000
	c.add	a4,a5
	bltu	a0,a4,000000002305F238

l2305F22E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2305F232:
	c.slli	a0,0C
	c.j	000000002305F224

l2305F236:
	c.mv	a0,a4

l2305F238:
	c.jr	ra

;; gc_check_cb: 2305F23A
gc_check_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002305F246

l2305F240:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l2305F246:
	c.li	a0,00000000
	c.jr	ra

;; update_env_cache: 2305F24A
;;   Called from:
;;     2305FDDE (in find_env)
;;     2305FEA4 (in del_env)
;;     2305FF8C (in move_env)
;;     2306028E (in create_env_blob)
update_env_cache proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023060ACA
	lui	a4,00042017
	c.lui	a7,00010000
	c.srli	a0,00000010
	addi	a2,a4,+000004F0
	c.addi	a7,FFFFFFFF
	c.li	a6,00000010
	c.li	a1,00000010
	c.li	a3,00000000
	addi	a5,a4,+000004F0
	c.li	t3,FFFFFFFF
	c.li	t1,00000010

l2305F278:
	lhu	a4,a2,+00000000
	beq	s0,t3,000000002305F2D0

l2305F280:
	bne	a4,a0,000000002305F292

l2305F284:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l2305F28A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305F292:
	c.lw	a2,4(a4)
	bne	a4,t3,000000002305F2A0

l2305F298:
	bne	a1,t1,000000002305F2B8

l2305F29C:
	c.mv	a1,a3
	c.j	000000002305F2B8

l2305F2A0:
	lhu	a4,a2,+00000002
	c.beqz	a4,000000002305F2AC

l2305F2A6:
	c.addi	a4,FFFFFFFF
	sh	a4,a2,+00000002

l2305F2AC:
	lhu	a4,a2,+00000002
	bgeu	a4,a7,000000002305F2B8

l2305F2B4:
	c.mv	a7,a4
	c.mv	a6,a3

l2305F2B8:
	c.addi	a3,00000001
	c.addi	a2,00000008
	bne	a3,t1,000000002305F278

l2305F2C0:
	beq	a1,a3,000000002305F2E0

l2305F2C4:
	c.slli	a1,03
	c.add	a5,a1

l2305F2C8:
	c.sw	a5,4(s0)
	sh	a0,a5,+00000000
	c.j	000000002305F2DA

l2305F2D0:
	bne	a4,a0,000000002305F2B8

l2305F2D4:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l2305F2DA:
	sh	zero,a5,+00000002
	c.j	000000002305F28A

l2305F2E0:
	beq	a6,a1,000000002305F28A

l2305F2E4:
	c.slli	a6,03
	c.add	a5,a6
	c.j	000000002305F2C8

;; find_env_cb: 2305F2EA
find_env_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,00000000230A4220
	lbu	a2,s0,+00000002
	c.lwsp	a2,00000064
	beq	a2,a0,000000002305F31A

l2305F30A:
	c.li	s1,00000000

l2305F30C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305F31A:
	lbu	s1,s0,+00000001
	c.beqz	s1,000000002305F30A

l2305F320:
	lbu	a4,s0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002305F30A

l2305F32A:
	addi	a0,s0,+00000010
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305F30A

l2305F334:
	c.li	a5,00000001
	sb	a5,s2,+00000000
	c.j	000000002305F30C

;; sector_statistics_cb: 2305F33C
sector_statistics_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002305F352

l2305F342:
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	bne	a5,a4,000000002305F356

l2305F34C:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l2305F352:
	c.li	a0,00000000
	c.jr	ra

l2305F356:
	c.li	a4,00000002
	bne	a5,a4,000000002305F352

l2305F35C:
	c.lw	a2,0(a5)
	c.addi	a5,00000001
	c.sw	a2,0(a5)
	c.j	000000002305F352

;; alloc_env_cb: 2305F364
alloc_env_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002305F390

l2305F36A:
	c.lw	a0,16(a3)
	c.lw	a1,0(a4)
	bgeu	a4,a3,000000002305F394

l2305F372:
	lbu	a4,a0,+00000002
	c.li	a3,00000001
	beq	a4,a3,000000002305F38C

l2305F37C:
	c.li	a3,00000002
	bne	a4,a3,000000002305F394

l2305F382:
	lui	a4,0004200F
	lbu	a4,a4,+00000508
	c.bnez	a4,000000002305F394

l2305F38C:
	c.lw	a0,20(a4)
	c.sw	a2,0(a4)

l2305F390:
	c.mv	a0,a5
	c.jr	ra

l2305F394:
	c.li	a5,00000000
	c.j	000000002305F390

;; write_status: 2305F398
;;   Called from:
;;     2305F498 (in read_env)
;;     2305F570 (in update_sec_status)
;;     2305F5A6 (in update_sec_status)
;;     2305FE16 (in del_env)
;;     2305FE4C (in del_env)
;;     2305FE86 (in del_env)
;;     2305FF52 (in move_env)
;;     2305FF6C (in move_env)
;;     23060088 (in check_and_recovery_env_cb)
;;     230600C0 (in do_gc)
;;     23060236 (in create_env_blob)
;;     230602C4 (in create_env_blob)
write_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	bltu	a3,a2,000000002305F3CE

l2305F3A4:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+00000064
	addi	a3,a3,+00000648
	addi	a2,a2,+00000664
	addi	a1,zero,+00000111
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305F3CC:
	c.j	000000002305F3CC

l2305F3CE:
	c.mv	s0,a1
	c.bnez	a1,000000002305F3FC

l2305F3D2:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+00000064
	addi	a3,a3,+000006D0
	addi	a2,a2,+00000664
	addi	a1,zero,+00000112
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305F3FA:
	c.j	000000002305F3FA

l2305F3FC:
	c.slli	a2,03
	c.addi	a2,FFFFFFFF
	c.mv	s1,a0
	c.srli	a2,00000003
	addi	a1,zero,+000000FF
	c.mv	a0,s0
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	c.lwsp	a2,000000A4
	c.li	a2,00000001
	c.addi	a3,FFFFFFFF
	add	a1,s0,a3
	sb	zero,a1,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	add	a0,s1,a3
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023060938

;; read_env: 2305F42E
;;   Called from:
;;     2305F9D0 (in read_sector_meta_data)
;;     2305FCDE (in env_iterator)
;;     2305FD92 (in find_env)
;;     23060116 (in do_gc)
read_env proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.mv	s0,a0
	c.lw	a0,80(a0)
	c.li	a2,0000001C
	c.addi4spn	a1,00000004
	jal	ra,0000000023060918
	c.li	a1,00000006
	c.addi4spn	a0,00000004
	jal	ra,000000002305F192
	c.lwsp	a6,000000E4
	andi	a0,a0,+000000FF
	c.lui	a4,00008000
	sb	a0,s0,+00000000
	c.sw	s0,8(a5)
	addi	s2,a5,-00000014
	c.addi	a4,FFFFFFEC
	bgeu	a4,s2,000000002305F4B2

l2305F468:
	c.li	a5,0000001C
	c.sw	s0,8(a5)
	c.li	a5,00000005
	beq	a0,a5,000000002305F49C

l2305F472:
	c.lw	s0,80(a3)
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a2,a2,+000005E8
	addi	a1,zero,+0000021C
	addi	a0,a0,+00000684
	sb	a5,s0,+00000000
	jal	ra,000000002306097C
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	jal	ra,000000002305F398

l2305F49C:
	sb	zero,s0,+00000001
	c.li	a0,00000002

l2305F4A2:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2305F4B2:
	c.lui	a4,FFFFF000
	c.addi	a4,00000013
	c.add	a5,a4
	c.lui	a4,00007000
	c.addi	a4,00000012
	bltu	a4,a5,000000002305F54C

l2305F4C0:
	lui	a4,000230C0
	lui	a3,000230AA
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+00000074
	addi	a3,a3,+0000038C
	addi	a2,a2,+00000664
	addi	a1,zero,+00000223
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305F4E8:
	c.j	000000002305F4E8

l2305F4EA:
	addi	a5,s1,+00000020
	addi	s3,zero,+00000020
	bltu	a5,s2,000000002305F4FA

l2305F4F6:
	sub	s3,s2,s1

l2305F4FA:
	c.lw	s0,80(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	c.addi	a0,00000014
	c.add	a0,s1
	jal	ra,0000000023060918
	c.mv	a0,s4
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	jal	ra,0000000023060ACA
	c.mv	s4,a0
	c.add	s1,s3

l2305F516:
	bltu	s1,s2,000000002305F4EA

l2305F51A:
	c.lwsp	s4,000000E4
	bne	a5,s4,000000002305F49C

l2305F520:
	c.lw	s0,80(s1)
	lbu	a2,sp,+00000018
	c.li	a5,00000001
	c.addi	s1,0000001C
	sb	a5,s0,+00000001
	c.mv	a0,s1
	addi	a1,s0,+00000010
	jal	ra,0000000023060918
	lbu	a5,sp,+00000018
	c.lwsp	t3,000000C4
	c.li	a0,00000000
	c.add	s1,a5
	c.sw	s0,84(s1)
	c.sw	s0,12(a4)
	sb	a5,s0,+00000002
	c.j	000000002305F4A2

l2305F54C:
	c.li	s1,00000000
	c.li	s4,00000000
	c.j	000000002305F516

;; update_sec_status: 2305F552
;;   Called from:
;;     2305FF46 (in move_env)
;;     23060206 (in create_env_blob)
update_sec_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	c.mv	s0,a0
	bne	a4,a5,000000002305F584

l2305F568:
	c.lw	a0,4(a0)
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	jal	ra,000000002305F398
	c.mv	s2,a0

l2305F576:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305F584:
	c.li	a5,00000002
	c.li	s2,00000000
	bne	a4,a5,000000002305F576

l2305F58C:
	c.lw	a0,16(a5)
	addi	a4,zero,+0000005B
	c.mv	s1,a2
	bgeu	a4,a5,000000002305F59E

l2305F598:
	c.sub	a5,a1
	bltu	a4,a5,000000002305F5C0

l2305F59E:
	c.lw	s0,4(a0)
	c.addi4spn	a1,0000000C
	c.li	a3,00000003
	c.li	a2,00000004
	jal	ra,000000002305F398
	c.mv	s2,a0
	c.lw	s0,4(a0)
	c.lui	a1,00001000
	c.add	a1,a0
	jal	ra,000000002305F1B0
	c.beqz	s1,000000002305F576

l2305F5B8:
	c.li	a5,00000001
	sb	a5,s1,+00000000
	c.j	000000002305F576

l2305F5C0:
	c.beqz	a2,000000002305F576

l2305F5C2:
	sb	zero,a2,+00000000
	c.j	000000002305F576

;; format_sector.constprop.16: 2305F5C8
;;   Called from:
;;     2305F694 (in check_sec_hdr_cb)
;;     230600E4 (in do_gc)
;;     2306074E (in ef_env_set_default)
format_sector.constprop.16 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	slli	a5,a0,00000014
	c.beqz	a5,000000002305F600

l2305F5D6:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+00000098
	addi	a3,a3,+000004F8
	addi	a2,a2,+00000664
	addi	a1,zero,+000003B5
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305F5FE:
	c.j	000000002305F5FE

l2305F600:
	c.lui	a1,00001000
	c.mv	s0,a0
	jal	ra,000000002306099A
	c.mv	s1,a0
	c.bnez	a0,000000002305F660

l2305F60C:
	c.li	a2,00000014
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	addi	a0,sp,+0000000F
	sb	zero,sp,+0000000C
	jal	ra,00000000230A3A68
	lui	a5,00030344
	addi	a5,a5,+00000645
	c.swsp	a5,00000088
	c.addi4spn	a1,0000000C
	c.li	a5,FFFFFFFF
	c.li	a2,00000014
	c.mv	a0,s0
	sb	zero,sp,+0000000F
	c.swsp	a5,0000000C
	c.swsp	a5,0000008C
	jal	ra,0000000023060938
	c.lui	a1,00001000
	c.mv	s1,a0
	c.add	a1,s0
	c.mv	a0,s0
	jal	ra,000000002305F1B0

l2305F660:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; check_sec_hdr_cb: 2305F66C
check_sec_hdr_cb proc
	lbu	a5,a0,+00000000
	c.bnez	a5,000000002305F6A4

l2305F672:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.lw	a0,4(a1)
	c.mv	s0,a0
	lui	a0,000230C0
	addi	a0,a0,+000001B4
	jal	ra,00000000230609E6
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.lw	s0,4(a0)
	jal	ra,000000002305F5C8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2305F6A4:
	c.li	a0,00000000
	c.jr	ra

;; print_env_cb: 2305F6A8
print_env_cb proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	lbu	s4,a0,+00000001
	beq	s4,zero,000000002305F77C

l2305F6C4:
	c.lw	a0,8(a4)
	c.lw	a1,0(a5)
	c.add	a5,a4
	c.sw	a1,0(a5)
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002305F77C

l2305F6D6:
	lbu	a1,a0,+00000002
	c.mv	s0,a0
	addi	a2,a0,+00000010
	lui	a0,000230C0
	addi	a0,a0,+000005C8
	jal	ra,0000000023060AAA
	c.lw	s0,12(a4)
	c.lui	a5,00001000
	addi	a5,a5,-00000075
	bltu	a5,a4,000000002305F760

l2305F6F8:
	c.li	s3,00000002
	c.li	s5,00000000
	addi	s6,zero,+0000005E
	lui	s7,000230BF

l2305F704:
	c.li	s1,00000000

l2305F706:
	c.lw	s0,12(a5)
	bltu	s1,a5,000000002305F718

l2305F70C:
	c.li	a5,00000001
	c.mv	s5,s4
	beq	s3,a5,000000002305F770

l2305F714:
	c.li	s3,00000001
	c.j	000000002305F704

l2305F718:
	addi	a4,s1,+00000020
	addi	s2,zero,+00000020
	bltu	a4,a5,000000002305F728

l2305F724:
	sub	s2,a5,s1

l2305F728:
	c.lw	s0,84(a0)
	c.mv	a2,s2
	c.mv	a1,sp
	c.add	a0,s1
	jal	ra,0000000023060918
	c.li	a5,00000000
	beq	s5,zero,000000002305F75A

l2305F73A:
	c.mv	a2,sp
	c.mv	a1,s2
	addi	a0,s7,-00000264
	jal	ra,0000000023060AAA

l2305F746:
	c.add	s1,s2
	c.j	000000002305F706

l2305F74A:
	add	a4,sp,a5
	lbu	a4,a4,+00000000
	c.addi	a4,FFFFFFE0
	bltu	s6,a4,000000002305F760

l2305F758:
	c.addi	a5,00000001

l2305F75A:
	bne	s2,a5,000000002305F74A

l2305F75E:
	c.j	000000002305F746

l2305F760:
	c.lw	s0,12(a2)
	c.lw	s0,84(a1)
	lui	a0,000230C0
	addi	a0,a0,+000005D0
	jal	ra,0000000023060AAA

l2305F770:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,0000000023060AAA

l2305F77C:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; get_next_env_addr: 2305F794
;;   Called from:
;;     2305F9C0 (in read_sector_meta_data)
;;     2305FCD2 (in env_iterator)
;;     230600D8 (in do_gc)
get_next_env_addr proc
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	bne	a4,a5,000000002305F7A2

l2305F79E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2305F7A2:
	c.lw	a1,80(a4)
	c.li	a3,FFFFFFFF
	c.lw	a0,4(a5)
	bne	a4,a3,000000002305F7B2

l2305F7AC:
	addi	a0,a5,+00000014
	c.jr	ra

l2305F7B2:
	c.lui	a3,00001000
	c.add	a3,a5
	bltu	a3,a4,000000002305F79E

l2305F7BA:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	lbu	a3,a1,+00000001
	addi	s0,a4,+00000001
	c.beqz	a3,000000002305F7DA

l2305F7D6:
	c.lw	a1,8(s0)
	c.add	s0,a4

l2305F7DA:
	c.lui	s4,00001000
	lui	a3,00042017
	c.mv	s5,a1
	c.addi	s4,FFFFFFEC
	c.lui	a1,FFFFF000
	c.mv	s3,a0
	addi	a2,a3,+00000588
	c.add	s4,a5
	c.and	a1,s0
	c.li	a4,00000000
	addi	a3,a3,+00000588
	c.li	a0,00000004

l2305F7F8:
	lw	a6,a2,+00000000
	bne	a1,a6,000000002305F836

l2305F800:
	c.slli	a4,03
	c.add	a4,a3
	c.lw	a4,4(a4)
	c.mv	s1,s0
	bne	s0,a4,000000002305F840

l2305F80C:
	c.li	a0,FFFFFFFF

l2305F80E:
	lw	a4,s3,+00000004
	c.lui	a5,00001000
	c.add	a5,a4
	bltu	a5,a0,000000002305F820

l2305F81A:
	lw	a5,s5,+00000008
	c.bnez	a5,000000002305F822

l2305F820:
	c.li	a0,FFFFFFFF

l2305F822:
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

l2305F836:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,a0,000000002305F7F8

l2305F83E:
	c.mv	s1,s0

l2305F840:
	c.lui	s2,00001000
	c.addi	s2,FFFFFFE4
	lui	s6,00030345
	c.add	s2,a5
	addi	s6,s6,+0000064B
	c.j	000000002305F898

l2305F850:
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023060918
	c.mv	a4,sp
	addi	a0,s1,-00000008
	addi	a2,s1,+00000014

l2305F866:
	beq	s2,a0,000000002305F896

l2305F86A:
	lbu	a5,a4,+00000001
	lbu	a3,a4,+00000000
	c.slli	a5,08
	c.add	a5,a3
	lbu	a3,a4,+00000002
	c.slli	a3,10
	c.add	a5,a3
	lbu	a3,a4,+00000003
	c.slli	a3,18
	c.add	a5,a3
	bne	a5,s6,000000002305F88E

l2305F88A:
	bgeu	a0,s0,000000002305F80E

l2305F88E:
	c.addi	a0,00000001
	c.addi	a4,00000001
	bne	a2,a0,000000002305F866

l2305F896:
	c.addi	s1,0000001C

l2305F898:
	bltu	s1,s4,000000002305F850

l2305F89C:
	c.j	000000002305F80C

;; read_sector_meta_data: 2305F89E
;;   Called from:
;;     2305FADA (in sector_iterator)
;;     2305FAF2 (in sector_iterator)
;;     2305FCB8 (in env_iterator)
read_sector_meta_data proc
	c.addi16sp	FFFFFF40
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	s9,000000C8
	slli	a5,a0,00000014
	c.beqz	a5,000000002305F8E6

l2305F8BC:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+00000080
	addi	a3,a3,+000004F8
	addi	a2,a2,+00000664
	addi	a1,zero,+0000024A
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305F8E4:
	c.j	000000002305F8E4

l2305F8E6:
	c.mv	s0,a1
	c.mv	s4,a2
	c.addi4spn	a1,00000004
	c.li	a2,00000014
	c.mv	s2,a0
	jal	ra,0000000023060918
	c.lwsp	a2,000000C4
	lui	a5,00030344
	sw	s2,s0,+00000004
	c.sw	s0,8(a4)
	addi	a5,a5,+00000645
	beq	a4,a5,000000002305F92E

l2305F908:
	c.li	a5,FFFFFFFF
	sb	zero,s0,+00000000
	c.sw	s0,12(a5)
	c.li	s1,00000007

l2305F912:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.mv	a0,s1
	c.lwsp	s2,00000158
	c.lwsp	s6,00000134
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.lwsp	t5,000000E8
	c.lwsp	s10,0000000C
	c.lwsp	s6,0000002C
	c.addi16sp	000000C0
	c.jr	ra

l2305F92E:
	c.lwsp	a6,000000E4
	c.li	s3,00000001
	c.li	a1,00000004
	c.sw	s0,12(a5)
	sb	s3,s0,+00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002305F192
	andi	s1,a0,+000000FF
	sb	s1,s0,+00000001
	c.li	a1,00000004
	addi	a0,sp,+00000007
	jal	ra,000000002305F192
	sb	a0,s0,+00000002
	bne	s4,zero,000000002305F95E

l2305F95A:
	c.li	s1,00000000
	c.j	000000002305F912

l2305F95E:
	addi	a5,s2,+00000014
	sw	zero,s0,+00000010
	c.sw	s0,20(a5)
	bne	s1,s3,000000002305F974

l2305F96C:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.j	000000002305F95A

l2305F974:
	c.li	a5,00000002
	bne	s1,a5,000000002305F95A

l2305F97A:
	lui	a4,00042017
	addi	a3,a4,+00000588
	c.li	a5,00000000
	addi	a4,a4,+00000588
	c.li	a2,00000004

l2305F98A:
	c.lw	a3,0(a1)
	bne	s2,a1,000000002305F9A6

l2305F990:
	c.slli	a5,03
	c.add	a5,a4
	c.lw	a5,4(a5)
	c.lui	a4,00001000
	c.add	s2,a4
	sub	s2,s2,a5
	c.sw	s0,20(a5)
	sw	s2,s0,+00000010
	c.j	000000002305F95A

l2305F9A6:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,000000002305F98A

l2305F9AE:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.li	a5,FFFFFFFF
	c.swsp	a5,00000044
	c.li	s2,FFFFFFFF
	c.li	s3,00000001

l2305F9BC:
	c.addi4spn	a1,00000038
	c.mv	a0,s0
	jal	ra,000000002305F794
	c.swsp	a0,00000044
	bne	a0,s2,000000002305F9CE

l2305F9CA:
	c.li	s1,00000000
	c.j	000000002305F9F8

l2305F9CE:
	c.addi4spn	a0,00000038
	jal	ra,000000002305F42E
	lbu	a5,sp,+00000039
	c.bnez	a5,000000002305FA40

l2305F9DA:
	lbu	a5,sp,+00000038
	andi	a5,a5,+000000FB
	beq	a5,s3,000000002305FA40

l2305F9E6:
	c.lwsp	a0,00000064
	lui	a0,000230C0
	addi	a0,a0,+00000618
	jal	ra,00000000230609E6
	sw	zero,s0,+00000010

l2305F9F8:
	c.lw	s0,4(a5)
	lw	s2,s0,+00000014
	c.lui	s4,00001000
	add	s5,a5,s4
	addi	s4,s4,+00000020
	c.mv	s3,s2
	c.li	s6,00000000
	c.add	s4,a5
	addi	s9,zero,+000000FF

l2305FA12:
	bltu	s3,s5,000000002305FA50

l2305FA16:
	addi	a5,zero,+000000FF
	beq	s6,a5,000000002305FA20

l2305FA1E:
	c.mv	s2,s5

l2305FA20:
	c.lw	s0,20(a5)
	c.lw	s0,4(a0)
	beq	a5,s2,000000002305FA38

l2305FA28:
	c.lui	a5,00001000
	c.add	a5,a0
	sw	s2,s0,+00000014
	sub	s2,a5,s2
	sw	s2,s0,+00000010

l2305FA38:
	c.lw	s0,20(a1)
	jal	ra,000000002305F1B0
	c.j	000000002305F912

l2305FA40:
	c.lwsp	ra,000000A4
	c.lw	s0,20(a4)
	c.lw	s0,16(a5)
	c.add	a4,a3
	c.sub	a5,a3
	c.sw	s0,20(a4)
	c.sw	s0,16(a5)
	c.j	000000002305F9BC

l2305FA50:
	addi	s7,s3,+00000020
	addi	s8,zero,+00000020
	bltu	s7,s5,000000002305FA60

l2305FA5C:
	sub	s8,s4,s7

l2305FA60:
	c.mv	a2,s8
	c.addi4spn	a1,00000018
	c.mv	a0,s3
	jal	ra,0000000023060918
	c.li	a5,00000000

l2305FA6C:
	bne	s8,a5,000000002305FA74

l2305FA70:
	c.mv	s3,s7
	c.j	000000002305FA12

l2305FA74:
	c.addi4spn	a4,00000018
	c.add	a4,a5
	lbu	a4,a4,+00000000
	beq	s6,s9,000000002305FA88

l2305FA80:
	bne	a4,s9,000000002305FA88

l2305FA84:
	add	s2,s3,a5

l2305FA88:
	c.addi	a5,00000001
	c.mv	s6,a4
	c.j	000000002305FA6C

;; sector_iterator: 2305FA8E
;;   Called from:
;;     2305FB28 (in alloc_env)
;;     2305FB42 (in alloc_env)
;;     2305FB78 (in alloc_env)
;;     2305FBC0 (in gc_collect)
;;     2305FBFA (in gc_collect)
;;     230607FC (in ef_load_env)
;;     2306082E (in ef_load_env)
sector_iterator proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s6,a5
	c.li	a5,FFFFFFFF
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s4,a2
	c.mv	s5,a3
	c.mv	s3,a4
	c.sw	a0,4(a5)
	c.li	s7,FFFFFFFF

l2305FAB4:
	c.mv	a0,s0
	jal	ra,000000002305F20C
	c.mv	s2,a0
	bne	a0,s7,000000002305FAD6

l2305FAC0:
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

l2305FAD6:
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,000000002305F89E
	c.beqz	s1,000000002305FAE8

l2305FAE0:
	lbu	a5,s0,+00000001
	bne	a5,s1,000000002305FAB4

l2305FAE8:
	beq	s6,zero,000000002305FAF6

l2305FAEC:
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002305F89E

l2305FAF6:
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	c.jalr	s3
	c.beqz	a0,000000002305FAB4

l2305FB00:
	c.j	000000002305FAC0

;; alloc_env: 2305FB02
;;   Called from:
;;     2305FC18 (in new_env)
;;     2305FC4E (in new_env)
;;     2305FEEA (in move_env)
alloc_env proc
	c.addi16sp	FFFFFFD0
	c.li	a5,FFFFFFFF
	lui	a4,0002305F
	c.swsp	a1,00000084
	c.swsp	a5,00000088
	addi	a4,a4,+0000033C
	c.li	a5,00000000
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000018
	c.li	a1,00000000
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,000000002305FA8E
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002305FB46

l2305FB30:
	lui	a4,0002305F
	c.li	a5,00000001
	addi	a4,a4,+00000364
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002305FA8E

l2305FB46:
	c.lwsp	s8,000000E4
	c.beqz	a5,000000002305FB7C

l2305FB4A:
	c.lwsp	s4,000000A4
	c.li	a4,FFFFFFFF
	bne	a3,a4,000000002305FB7C

l2305FB52:
	c.li	s1,00000001
	bltu	s1,a5,000000002305FB66

l2305FB58:
	lui	s0,0004200F
	addi	s0,s0,+00000508
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002305FB8A

l2305FB66:
	lui	a4,0002305F
	c.li	a5,00000001
	addi	a4,a4,+00000364
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002305FA8E

l2305FB7C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	s4,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2305FB8A:
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a2,a2,+000000C8
	addi	a1,zero,+0000042D
	addi	a0,a0,+00000684
	jal	ra,000000002306097C
	sb	s1,s0,+00000000
	c.j	000000002305FB7C

;; gc_collect: 2305FBA8
;;   Called from:
;;     2305FC46 (in new_env)
;;     2305FC7A (in check_and_recovery_gc_cb)
;;     23060660 (in ef_set_env_blob)
;;     2306084E (in ef_load_env)
gc_collect proc
	c.addi16sp	FFFFFFD0
	lui	a4,0002305F
	c.li	a5,00000000
	addi	a4,a4,+0000023A
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.li	a1,00000001
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	c.swsp	zero,00000080
	jal	ra,000000002305FA8E
	c.lwsp	tp,000000A4
	lui	a2,000230C0
	lui	a0,000230C0
	c.li	a4,00000001
	addi	a2,a2,+00000510
	addi	a1,zero,+000004FA
	addi	a0,a0,+00000684
	jal	ra,000000002306097C
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bltu	a5,a4,000000002305FBFE

l2305FBE8:
	lui	a4,00023060
	c.li	a5,00000000
	addi	a4,a4,+00000090
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002305FA8E

l2305FBFE:
	c.lwsp	a2,00000130
	lui	a5,0004200F
	sb	zero,a5,+00000508
	c.addi16sp	00000030
	c.jr	ra

;; new_env: 2305FC0C
;;   Called from:
;;     230601F2 (in create_env_blob)
;;     23060602 (in ef_set_env_blob)
new_env proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,000000002305FB02
	c.li	a5,FFFFFFFF
	bne	a0,a5,000000002305FC52

l2305FC22:
	lui	a5,0004200F
	lbu	a5,a5,+00000508
	c.beqz	a5,000000002305FC52

l2305FC2C:
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a1,zero,+000004B6
	addi	a0,a0,+00000684
	c.mv	a3,s0
	addi	a2,a2,+00000578
	jal	ra,000000002306097C
	jal	ra,000000002305FBA8
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305FB02

l2305FC52:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; check_and_recovery_gc_cb: 2305FC5C
check_and_recovery_gc_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002305FC86

l2305FC62:
	lbu	a4,a0,+00000002
	c.li	a5,00000003
	bne	a4,a5,000000002305FC86

l2305FC6C:
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.li	a4,00000001
	c.swsp	ra,00000084
	sb	a4,a5,+00000508
	jal	ra,000000002305FBA8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2305FC86:
	c.li	a0,00000000
	c.jr	ra

;; env_iterator: 2305FC8A
;;   Called from:
;;     2305FDCC (in find_env)
;;     2305FF30 (in move_env)
;;     230607B0 (in ef_print_env)
;;     23060844 (in ef_load_env)
env_iterator proc
	c.addi16sp	FFFFFFC0
	c.li	a5,FFFFFFFF
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.swsp	a5,00000084
	c.li	s1,FFFFFFFF
	c.li	s5,00000001

l2305FCAA:
	c.addi4spn	a0,00000008
	jal	ra,000000002305F20C
	beq	a0,s1,000000002305FCEC

l2305FCB4:
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	jal	ra,000000002305F89E
	c.bnez	a0,000000002305FCAA

l2305FCBE:
	lbu	a5,sp,+00000009
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s5,a5,000000002305FCAA

l2305FCCC:
	c.sw	s0,80(s1)

l2305FCCE:
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,000000002305F794
	c.sw	s0,80(a0)
	beq	a0,s1,000000002305FCAA

l2305FCDC:
	c.mv	a0,s0
	jal	ra,000000002305F42E
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	s4
	c.beqz	a0,000000002305FCCE

l2305FCEC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; find_env: 2305FCFE
;;   Called from:
;;     2305FDFA (in del_env)
;;     230603CC (in ef_get_env_blob)
;;     23060618 (in ef_set_env_blob)
find_env proc
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
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	s5,a0
	c.mv	a1,s2
	c.li	a0,00000000
	lui	s1,00042017
	jal	ra,0000000023060ACA
	addi	s4,s1,+000004F0
	srli	s7,a0,00000010
	c.li	s0,00000000
	addi	s1,s1,+000004F0
	c.li	s8,FFFFFFFF
	c.li	s6,00000010

l2305FD3E:
	lw	a0,s4,+00000004
	beq	a0,s8,000000002305FDB2

l2305FD46:
	lhu	a5,s4,+00000000
	bne	a5,s7,000000002305FDB2

l2305FD4E:
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi	a0,0000001C
	jal	ra,0000000023060918
	c.mv	a2,s5
	c.mv	a1,sp
	c.mv	a0,s2
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002305FDB2

l2305FD66:
	c.slli	s0,03
	add	a5,s1,s0
	c.lw	a5,4(a4)
	sw	a4,s3,+00000050
	lhu	a4,a5,+00000002
	c.lui	a5,00010000
	addi	a3,a5,-00000012
	c.addi	a5,FFFFFFFF
	bltu	a3,a4,000000002305FD8A

l2305FD82:
	addi	a5,a4,+00000010
	c.slli	a5,10
	c.srli	a5,00000010

l2305FD8A:
	c.add	s0,s1
	sh	a5,s0,+00000002
	c.mv	a0,s3
	jal	ra,000000002305F42E
	c.li	s0,00000001

l2305FD98:
	c.mv	a0,s0
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

l2305FDB2:
	c.addi	s0,00000001
	c.addi	s4,00000008
	bne	s0,s6,000000002305FD3E

l2305FDBA:
	lui	a3,0002305F
	addi	a3,a3,+000002EA
	c.mv	a2,sp
	c.mv	a1,s2
	c.mv	a0,s3
	sb	zero,sp,+00000000
	jal	ra,000000002305FC8A
	lbu	s0,sp,+00000000
	c.beqz	s0,000000002305FD98

l2305FDD6:
	lw	a2,s3,+00000050
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002305F24A
	c.j	000000002305FD98

;; del_env: 2305FDE4
;;   Called from:
;;     2305FEE0 (in move_env)
;;     2305FFB8 (in move_env)
;;     2306049A (in ef_del_env)
;;     2306063E (in ef_set_env_blob)
;;     2306064E (in ef_set_env_blob)
del_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s3,000000BC
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.mv	s3,a0
	c.mv	s0,a1
	c.bnez	a1,000000002305FE04

l2305FDF6:
	c.addi4spn	a1,00000018
	c.swsp	a2,00000084
	jal	ra,000000002305FCFE
	c.beqz	a0,000000002305FE54

l2305FE00:
	c.lwsp	a2,00000084
	c.addi4spn	s0,00000018

l2305FE04:
	lui	s2,0004200F
	c.lw	s0,80(a0)
	addi	s2,s2,+0000050B
	c.bnez	a2,000000002305FE80

l2305FE10:
	c.li	a3,00000003
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,000000002305F398
	c.li	a5,00000001
	c.mv	s1,a0
	sb	a5,s2,+00000000

l2305FE22:
	c.bnez	s1,000000002305FE70

l2305FE24:
	c.lw	s0,80(a5)
	c.lui	s0,FFFFF000
	c.li	a2,00000003
	c.and	s0,a5
	c.addi	s0,00000003
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023060918
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	jal	ra,000000002305F192
	c.li	a5,00000001
	bne	a0,a5,000000002305FE70

l2305FE44:
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,000000002305F398
	c.mv	s1,a0
	c.j	000000002305FE70

l2305FE54:
	lui	a2,000230C0
	lui	a0,000230C0
	c.mv	a3,s3
	addi	a2,a2,+00000274
	addi	a1,zero,+00000447
	addi	a0,a0,+00000684
	jal	ra,000000002306097C
	c.li	s1,00000004

l2305FE70:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s1
	c.lwsp	sp,00000048
	c.lwsp	t1,00000024
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l2305FE80:
	c.li	a3,00000004
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,000000002305F398
	lbu	a5,s2,+00000000
	c.mv	s1,a0
	c.bnez	a5,000000002305FEA8

l2305FE92:
	c.bnez	a0,000000002305FEA8

l2305FE94:
	beq	s3,zero,000000002305FEAE

l2305FE98:
	c.mv	a0,s3
	jal	ra,00000000230A4220
	c.mv	a1,a0
	c.li	a2,FFFFFFFF
	c.mv	a0,s3

l2305FEA4:
	jal	ra,000000002305F24A

l2305FEA8:
	sb	zero,s2,+00000000
	c.j	000000002305FE22

l2305FEAE:
	c.li	a2,FFFFFFFF
	lbu	a1,s0,+00000002
	addi	a0,s0,+00000010
	c.j	000000002305FEA4

;; move_env: 2305FEBA
;;   Called from:
;;     23060034 (in check_and_recovery_env_cb)
;;     23060130 (in do_gc)
move_env proc
	c.addi16sp	FFFFFF10
	c.swsp	s0,00000074
	c.swsp	ra,000000F4
	c.swsp	s1,000000F0
	c.swsp	s2,00000070
	c.swsp	s3,000000EC
	c.swsp	s4,0000006C
	c.swsp	s5,000000E8
	c.swsp	s6,00000068
	c.swsp	s7,000000E4
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	c.mv	s0,a0
	bne	a4,a5,000000002305FEE4

l2305FEDA:
	c.mv	a1,a0
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,000000002305FDE4

l2305FEE4:
	c.lw	s0,8(a1)
	c.addi4spn	a0,0000000C
	c.li	s4,00000006
	jal	ra,000000002305FB02
	c.li	a5,FFFFFFFF
	c.mv	s1,a0
	beq	a0,a5,000000002305FFBC

l2305FEF6:
	lui	a5,0004200F
	lbu	a5,a5,+00000509
	addi	s6,s0,+00000010
	c.beqz	a5,000000002305FF3C

l2305FF04:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,00000000230A3A68
	lbu	a2,s0,+00000002
	c.mv	a1,s6
	c.addi4spn	a0,00000024
	jal	ra,00000000230A439C
	lui	a3,0002305F
	addi	a3,a3,+000002EA
	addi	a2,sp,+0000000B
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000068
	sb	zero,sp,+0000000B
	jal	ra,000000002305FC8A
	lbu	a5,sp,+0000000B
	c.li	s4,00000000
	c.bnez	a5,000000002305FFB2

l2305FF3C:
	lw	s3,s0,+00000008
	c.li	a2,00000000
	c.addi4spn	a0,0000000C
	c.mv	a1,s3
	jal	ra,000000002305F552
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002305F398
	c.addi	s3,FFFFFFF8
	c.li	s2,00000000
	c.li	s4,00000000
	addi	s7,s1,+00000008

l2305FF60:
	bltu	s2,s3,000000002305FFD4

l2305FF64:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002305F398
	c.lw	s0,12(a1)
	lbu	a5,s0,+00000002
	c.lui	a0,FFFFF000
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	c.and	a0,s1
	jal	ra,000000002305F1B0
	lbu	a1,s0,+00000002
	c.mv	a2,s1
	c.mv	a0,s6
	jal	ra,000000002305F24A
	c.lw	s0,80(a5)
	lbu	a3,s0,+00000002
	lui	a2,000230C0
	lui	a0,000230C0
	c.mv	a6,s1
	c.mv	a4,s6
	addi	a2,a2,+00000548
	addi	a1,zero,+000004A6
	addi	a0,a0,+00000684
	jal	ra,000000002306097C

l2305FFB2:
	c.li	a2,00000001
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,000000002305FDE4

l2305FFBC:
	c.lwsp	a5,00000130
	c.lwsp	a1,00000114
	c.mv	a0,s4
	c.lwsp	t2,00000134
	c.lwsp	gp,00000158
	c.lwsp	t6,00000068
	c.lwsp	s11,00000088
	c.lwsp	s7,000000A8
	c.lwsp	s3,000000C8
	c.lwsp	a5,000000E8
	c.addi16sp	000000F0
	c.jr	ra

l2305FFD4:
	addi	a5,s2,+00000020
	addi	s5,zero,+00000020
	bltu	a5,s3,000000002305FFE4

l2305FFE0:
	sub	s5,s3,s2

l2305FFE4:
	c.lw	s0,80(a0)
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	c.addi	a0,00000008
	c.add	a0,s2
	jal	ra,0000000023060918
	add	a0,s7,s2
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	jal	ra,0000000023060938
	c.mv	s4,a0
	c.add	s2,s5
	c.j	000000002305FF60

;; check_and_recovery_env_cb: 23060004
check_and_recovery_env_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lbu	s1,a0,+00000001
	c.mv	s0,a0
	lbu	a5,a0,+00000000
	c.beqz	s1,0000000023060078

l23060018:
	c.li	a4,00000003
	bne	a5,a4,0000000023060078

l2306001E:
	lbu	a1,a0,+00000002
	addi	a2,a0,+00000010
	lui	a0,000230C0
	addi	a0,a0,+000000F8
	jal	ra,00000000230609E6
	c.mv	a0,s0
	jal	ra,000000002305FEBA
	lui	a5,000230C0
	c.bnez	a0,0000000023060060

l2306003E:
	lui	a2,000230C0
	addi	a2,a2,+00000144
	addi	a1,zero,+000006D5
	addi	a0,a5,+00000684
	jal	ra,000000002306097C
	c.li	s1,00000000

l23060054:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23060060:
	c.lw	s0,8(a3)
	lui	a2,000230C0
	addi	a2,a2,+00000164
	addi	a1,zero,+000006D7
	addi	a0,a5,+00000684
	jal	ra,000000002306097C
	c.j	0000000023060054

l23060078:
	c.li	a4,00000001
	c.li	s1,00000000
	bne	a5,a4,0000000023060054

l23060080:
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	jal	ra,000000002305F398
	c.li	s1,00000001
	c.j	0000000023060054

;; do_gc: 23060090
do_gc proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002306014E

l23060096:
	lbu	a5,a0,+00000002
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002306014E

l230600A6:
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	ra,000000BC
	c.mv	s0,a0
	c.lw	a0,4(a0)
	c.li	a3,00000003
	c.li	a2,00000004
	c.addi4spn	a1,00000004
	c.addi	a0,00000003
	jal	ra,000000002305F398
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000002C
	c.li	s1,FFFFFFFF
	c.li	s2,00000001
	lui	s3,000230C0
	lui	s4,000230C0

l230600D4:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002305F794
	c.swsp	a0,0000002C
	bne	a0,s1,0000000023060114

l230600E2:
	c.lw	s0,4(a0)
	jal	ra,000000002305F5C8
	c.lw	s0,4(a3)
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a0,a0,+00000684
	addi	a2,a2,+000002C0
	addi	a1,zero,+000004E6
	jal	ra,000000002306097C
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23060114:
	c.addi4spn	a0,00000008
	jal	ra,000000002305F42E
	lbu	a5,sp,+00000009
	c.beqz	a5,00000000230600D4

l23060120:
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s2,a5,00000000230600D4

l2306012E:
	c.addi4spn	a0,00000008
	jal	ra,000000002305FEBA
	c.beqz	a0,00000000230600D4

l23060136:
	lbu	a3,sp,+0000000A
	c.addi4spn	a4,00000018
	addi	a2,s3,+00000290
	addi	a1,zero,+000004E1
	addi	a0,s4,+00000684
	jal	ra,000000002306097C
	c.j	00000000230600D4

l2306014E:
	c.li	a0,00000000
	c.jr	ra

;; create_env_blob: 23060152
;;   Called from:
;;     2306062A (in ef_set_env_blob)
;;     2306077A (in ef_env_set_default)
create_env_blob proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.lw	a0,20(s1)
	c.mv	s4,a0
	c.mv	a0,a1
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s0,a3
	sb	zero,sp,+00000003
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bgeu	a5,a0,00000000230601A4

l2306017E:
	lui	a0,000230C0
	addi	a1,zero,+00000040
	addi	a0,a0,+000001F8
	jal	ra,00000000230609E6
	c.li	s0,00000004

l23060190:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l230601A4:
	addi	a1,zero,+000000FF
	c.li	a2,0000001C
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lui	a5,00030345
	addi	a5,a5,+0000064B
	c.mv	a0,s2
	c.swsp	a5,00000084
	jal	ra,00000000230A4220
	sb	a0,sp,+00000018
	addi	a1,s0,+0000001C
	andi	a0,a0,+000000FF
	c.add	a1,a0
	c.lui	a5,00001000
	c.swsp	s0,0000008C
	c.swsp	a1,00000008
	c.addi	a5,FFFFFFEC
	bgeu	a5,a1,00000000230601EA

l230601DA:
	lui	a0,000230C0
	addi	a0,a0,+00000228
	jal	ra,00000000230609E6
	c.li	s0,00000006
	c.j	0000000023060190

l230601EA:
	c.li	s5,FFFFFFFF
	bne	s1,s5,00000000230601FE

l230601F0:
	c.mv	a0,s4
	jal	ra,000000002305FC0C
	c.mv	s1,a0
	c.li	s0,00000006
	beq	a0,s5,0000000023060190

l230601FE:
	c.lwsp	a6,00000064
	addi	a2,sp,+00000003
	c.mv	a0,s4
	jal	ra,000000002305F552
	c.mv	s0,a0
	c.bnez	a0,0000000023060190

l2306020E:
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,0000000023060ACA
	lbu	a2,sp,+00000018
	c.mv	a1,s2
	c.swsp	a0,00000088
	jal	ra,0000000023060ACA
	c.lwsp	t3,00000084
	c.mv	a1,s3
	c.swsp	a0,00000088
	jal	ra,0000000023060ACA
	c.swsp	a0,00000088
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002305F398
	c.mv	s0,a0
	c.bnez	a0,0000000023060190

l2306023E:
	c.li	a2,00000014
	c.addi4spn	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,0000000023060938
	c.mv	s0,a0
	c.bnez	a0,0000000023060190

l2306024E:
	lbu	s0,sp,+00000018
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,s1,+0000001C
	jal	ra,0000000023060938
	lbu	a5,sp,+00000003
	c.mv	s0,a0
	c.bnez	a5,0000000023060286

l23060272:
	c.lwsp	t3,00000064
	lbu	a5,sp,+00000018
	lw	a0,s4,+00000004
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	jal	ra,000000002305F1B0

l23060286:
	lbu	a1,sp,+00000018
	c.mv	a2,s1
	c.mv	a0,s2
	jal	ra,000000002305F24A
	bne	s0,zero,0000000023060190

l23060296:
	lbu	s0,sp,+00000018
	c.lwsp	t3,00000048
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.addi	s0,0000001C
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.add	s0,s1
	c.mv	a0,s0
	c.mv	a2,s2
	c.mv	a1,s3
	jal	ra,0000000023060938
	c.mv	s0,a0
	bne	a0,zero,0000000023060190

l230602BC:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002305F398
	c.mv	s0,a0
	bne	a0,zero,0000000023060190

l230602CE:
	lbu	a5,sp,+00000003
	beq	a5,zero,0000000023060190

l230602D6:
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a2,a2,+0000024C
	addi	a1,zero,+00000562
	addi	a0,a0,+00000684
	jal	ra,000000002306097C
	lui	a5,0004200F
	c.li	a4,00000001
	sb	a4,a5,+00000508
	c.j	0000000023060190

;; ef_get_env_blob: 230602FA
;;   Called from:
;;     230005EC (in event_cb_wifi_event)
;;     23000624 (in event_cb_wifi_event)
;;     23000662 (in event_cb_wifi_event)
;;     23060408 (in ef_get_env)
;;     23060C00 (in psm_test_cmd)
ef_get_env_blob proc
	lui	a5,0004200F
	lbu	a5,a5,+0000050A
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.bnez	a5,000000002306032E
