;;; Segment .text (23000300)

l2303030C:
	andi	a2,a3,+00000001
	c.bnez	a2,0000000023030400

l23030312:
	c.andi	a3,00000002
	bne	a3,zero,000000002303049E

l23030318:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,0000000023030358

l23030320:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	lw	a3,s11,+00000000
	c.beqz	a3,0000000023030358

l23030334:
	c.addi	s8,00000001
	blt	s5,s8,0000000023030358

l2303033A:
	slli	s11,s8,00000002
	c.addi4spn	a4,00000020
	c.add	s11,a4
	c.j	0000000023030358

l23030344:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000002
	bne	a2,zero,000000002303049E

l23030350:
	ori	a3,a3,+00000004
	sb	a3,sp,+0000001C

l23030358:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000004
	c.bnez	a2,000000002303037A

l23030362:
	c.addi	a5,00000001
	addi	a2,zero,+000000FF
	blt	a2,a5,000000002303037A

l2303036C:
	blt	s5,s8,000000002303037A

l23030370:
	lw	a1,s11,+00000000
	c.li	a2,0000000F
	bge	a2,a1,000000002302FDBA

l2303037A:
	c.andi	a3,00000002
	bne	a3,zero,000000002303049E

l23030380:
	c.addi4spn	s0,00000020
	addi	s1,s1,-00000648
	c.li	s3,00000000
	c.li	s4,00000000
	c.li	s5,00000004

l2303038C:
	c.lw	s0,0(a0)
	c.mv	a1,s1
	c.addi	s4,00000001
	jal	ra,000000002302F3F8
	or	s3,s3,a0
	blt	s8,s4,00000000230303A8

l2303039E:
	c.addi	s0,00000004
	addi	s1,s1,+00000040
	bne	s4,s5,000000002303038C

l230303A8:
	c.li	a5,00000001
	bne	s3,a5,0000000023030498

l230303AE:
	beq	s2,zero,00000000230303C0

l230303B2:
	lui	a0,00023077
	c.mv	a1,s2
	addi	a0,a0,+000007D8
	jal	ra,000000002302F36E

l230303C0:
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,000000002302F36E
	lui	a5,00042013
	sb	zero,a5,+00000AB8
	lui	a0,00023077
	lui	a5,0004200E
	sb	zero,a5,+000001D9
	addi	a0,a0,+000007AC
	c.j	000000002302FE04

l230303E6:
	c.beqz	a5,000000002303041E

l230303E8:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,000000002303041E

l230303F8:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.beqz	a3,000000002303041E

l23030400:
	c.mv	a0,s0
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002306D630
	c.lwsp	s0,00000028
	addi	a2,a0,+00000001
	c.mv	a1,s0
	c.mv	a0,a7
	jal	ra,000000002306CF80
	c.lwsp	a2,00000008
	c.mv	a5,a6
	c.j	0000000023030358

l2303041E:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	beq	a3,s3,0000000023030358

l23030426:
	beq	a3,s9,000000002303049E

l2303042A:
	c.bnez	a3,000000002303045A

l2303042C:
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
	c.j	0000000023030358

l2303045A:
	bne	a3,s5,0000000023030358

l2303045E:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFC

l23030464:
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	c.j	0000000023030358

l2303046E:
	c.beqz	a5,0000000023030488

l23030470:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,0000000023030488

l23030480:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.bnez	a3,0000000023030400

l23030488:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,0000000023030358

l23030490:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	c.j	0000000023030464

l23030498:
	c.li	a5,00000002
	bne	s3,a5,00000000230303C0

l2303049E:
	lui	a0,00023077
	addi	a0,a0,+000007F4
	jal	ra,000000002302F36E
	c.j	00000000230303C0

;; console_cb_read: 230304AC
console_cb_read proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023001C52
	bge	zero,a0,00000000230304D6

l230304C0:
	c.li	a5,00000010
	c.mv	a1,a0
	blt	a5,a0,00000000230304DE

l230304C8:
	lui	a5,0004200E
	c.mv	a0,sp
	sw	s0,a5,+000001DC
	jal	ra,000000002302FCEE

l230304D6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230304DE:
	lui	a0,00023078
	addi	a0,a0,-000007FC
	jal	ra,0000000023003AC6
	c.j	00000000230304D6

;; aos_cli_input_direct: 230304EC
;;   Called from:
;;     23000B5E (in app_delayed_action_bleadv)
;;     23000B7A (in app_delayed_action_bleadv)
;;     230012AA (in event_cb_cli)
;;     230012C6 (in event_cb_cli)
;;     230012DC (in event_cb_cli)
aos_cli_input_direct proc
	jal	zero,000000002302FCEE

;; get_dns_request: 230304F0
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
	bgeu	a5,a4,000000002303058E

l2303051C:
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002303E8AE
	lhu	a0,sp,+00000004
	jal	ra,000000002303A75A
	sh	a0,s0,+00000100
	lhu	a0,sp,+00000008
	jal	ra,000000002303A75A
	sh	a0,s0,+00000102
	lhu	a2,s1,+00000008
	addi	a5,zero,+000000FF
	bgeu	a5,a2,0000000023030550

l2303054C:
	addi	a2,zero,+000000FF

l23030550:
	c.slli	a2,10
	c.srli	a2,00000010
	c.mv	a1,s0
	c.li	a3,0000000C
	c.mv	a0,s1
	c.swsp	a2,00000000
	jal	ra,000000002303E8AE
	c.mv	a2,sp
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002304473C
	c.bnez	a0,000000002303058E

l2303056C:
	c.lwsp	zero,000000E4
	bge	zero,a5,0000000023030586

l23030572:
	c.addi	a5,FFFFFFFF
	add	a4,s0,a5
	lbu	a3,a4,+00000000
	addi	a4,zero,+0000002E
	bne	a3,a4,0000000023030586

l23030584:
	c.swsp	a5,00000000

l23030586:
	c.lwsp	zero,000000E4
	c.add	a5,s0
	sb	zero,a5,+00000000

l2303058E:
	c.mv	a0,s1
	jal	ra,000000002303E536
	addi	a2,zero,+00000280
	addi	a1,zero,+00000200
	addi	a0,zero,+000000B6
	jal	ra,000000002303E5B8
	c.mv	s1,a0
	beq	a0,zero,00000000230306EE

l230305AA:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002306D1BC
	lhu	a0,s0,+00000100
	addi	s3,s0,-00000001
	c.li	s2,0000000C
	jal	ra,000000002303A75A
	sh	a0,sp,+00000010
	c.lui	a0,00008000
	addi	a0,a0,+00000180
	jal	ra,000000002303A75A
	sh	a0,sp,+00000012
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+00000014
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+00000016
	c.li	a0,00000000
	jal	ra,000000002303A75A
	sh	a0,sp,+00000018
	c.li	a0,00000000
	jal	ra,000000002303A75A
	sh	a0,sp,+0000001A
	c.li	a2,0000000C
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,000000002303E92E
	addi	s6,zero,+0000002E

l2303060A:
	c.addi	s3,00000001
	c.mv	s5,s3
	c.li	s4,00000000

l23030610:
	lbu	a5,s3,+00000000
	bne	a5,s6,0000000023030702

l23030618:
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303EA5C
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
	jal	ra,000000002303E98C
	srli	s4,s4,00000010
	lbu	a5,s3,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002303060A

l23030654:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303EA5C
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+0000001C
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+0000001E
	c.lui	a0,0000C000
	c.addi	a0,0000000C
	jal	ra,000000002303A75A
	sh	a0,sp,+00000020
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+00000022
	c.li	a0,00000001
	jal	ra,000000002303A75A
	sh	a0,sp,+00000024
	c.li	a0,00000000
	jal	ra,000000002303A75A
	sh	a0,sp,+00000026
	lui	a0,000003C0
	c.addi	a0,00000004
	jal	ra,000000002303A768
	c.swsp	a0,00000014
	lui	a0,000C0A8B
	addi	a0,a0,-000006FF
	jal	ra,000000002303A768
	addi	a3,s4,+00000002
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a2,00000014
	c.swsp	a0,00000094
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	jal	ra,000000002303E98C
	addi	a1,s4,+00000016
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s1
	jal	ra,000000002303E716
	lhu	a3,s0,+00000110
	lw	a2,s0,+0000010C
	lw	a0,s0,+00000108
	c.mv	a1,s1
	jal	ra,000000002304294A
	c.mv	a0,s1
	jal	ra,000000002303E536

l230306EE:
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

l23030702:
	beq	a5,zero,0000000023030618

l23030706:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s3,00000001
	c.j	0000000023030610

;; dns_server_init: 23030710
;;   Called from:
;;     23004532 (in stateGlobalGuard_AP)
dns_server_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,0000000023042A08
	c.beqz	a0,000000002303076C

l2303071E:
	lui	a1,00023082
	addi	a2,zero,+00000035
	addi	a1,a1,+000007AC
	c.mv	s0,a0
	jal	ra,00000000230425F6
	c.bnez	a0,000000002303075E

l23030732:
	addi	a0,zero,+00000114
	jal	ra,000000002303598A
	c.mv	s1,a0
	c.beqz	a0,000000002303075E

l2303073E:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.lwsp	tp,00000024
	lui	a1,00023030
	addi	a1,a1,+000004F0
	c.addi	sp,00000010
	jal	zero,00000000230429D0

l2303075E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230429D8

l2303076C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; easyflash_init: 23030776
;;   Called from:
;;     23001318 (in aos_loop_proc)
easyflash_init proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	jal	ra,0000000023031E1C
	lui	s1,00023078
	c.mv	s0,a0
	c.bnez	a0,00000000230307C4

l23030790:
	c.lwsp	s0,00000064
	c.lwsp	a2,00000044
	jal	ra,0000000023031C7E
	c.mv	s0,a0
	c.bnez	a0,00000000230307C4

l2303079C:
	lui	a0,00023078
	addi	a1,s1,-000001D8
	addi	a0,a0,-000001D0

l230307A8:
	jal	ra,0000000023031DFC
	lui	a0,00023078
	addi	a0,a0,-00000184
	jal	ra,0000000023031DFC
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230307C4:
	lui	a0,00023078
	addi	a1,s1,-000001D8
	addi	a0,a0,-000001A8
	c.j	00000000230307A8

;; get_status: 230307D2
;;   Called from:
;;     23030A8C (in read_env)
;;     23030E90 (in read_sector_meta_data)
;;     23030EA2 (in read_sector_meta_data)
;;     2303138E (in del_env)
get_status proc
	c.addi	a1,FFFFFFFF
	c.li	a4,FFFFFFFF

l230307D6:
	addi	a5,a1,-00000001
	bne	a5,a4,00000000230307E2

l230307DE:
	c.mv	a0,a1
	c.jr	ra

l230307E2:
	add	a3,a0,a5
	lbu	a3,a3,+00000000
	c.beqz	a3,00000000230307DE

l230307EC:
	c.mv	a1,a5
	c.j	00000000230307D6

;; update_sector_cache: 230307F0
;;   Called from:
;;     23030BF2 (in update_sec_status)
;;     23030C9C (in format_sector.constprop.16)
;;     23030F8E (in read_sector_meta_data)
;;     230314D4 (in move_env)
;;     230317D2 (in create_env_blob)
update_sector_cache proc
	lui	a5,00042013
	c.lui	a6,00001000
	addi	a2,a5,-00000418
	c.li	a3,00000004
	c.li	a4,00000000
	addi	a5,a5,-00000418
	c.add	a6,a0
	c.li	t3,FFFFFFFF
	c.li	t1,00000004

l23030808:
	lw	a7,a2,+00000000
	bgeu	a0,a1,000000002303083E

l23030810:
	bgeu	a1,a6,000000002303083E

l23030814:
	bne	a0,a7,0000000023030820

l23030818:
	c.slli	a4,03
	c.add	a5,a4

l2303081C:
	c.sw	a5,4(a1)

l2303081E:
	c.jr	ra

l23030820:
	bne	a7,t3,000000002303082A

l23030824:
	bne	a3,t1,000000002303082A

l23030828:
	c.mv	a3,a4

l2303082A:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,t1,0000000023030808

l23030832:
	beq	a3,a4,000000002303081E

l23030836:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,0(a0)
	c.j	000000002303081C

l2303083E:
	bne	a0,a7,000000002303082A

l23030842:
	c.slli	a4,03
	c.add	a5,a4
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.jr	ra

;; get_next_sector_addr: 2303084C
;;   Called from:
;;     2303100A (in sector_iterator)
;;     23031200 (in env_iterator)
get_next_sector_addr proc
	c.lw	a0,4(a5)
	lui	a4,0004200E
	c.li	a3,FFFFFFFF
	lw	a4,a4,+000001E8
	beq	a5,a3,0000000023030876

l2303085C:
	c.lw	a0,12(a0)
	bne	a0,a3,0000000023030872

l23030862:
	c.lui	a0,00001000

l23030864:
	c.add	a0,a5
	c.lui	a5,00008000
	c.add	a4,a5
	bltu	a0,a4,0000000023030878

l2303086E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23030872:
	c.slli	a0,0C
	c.j	0000000023030864

l23030876:
	c.mv	a0,a4

l23030878:
	c.jr	ra

;; gc_check_cb: 2303087A
gc_check_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,0000000023030886

l23030880:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l23030886:
	c.li	a0,00000000
	c.jr	ra

;; update_env_cache: 2303088A
;;   Called from:
;;     23031332 (in find_env)
;;     230313F8 (in del_env)
;;     230314E0 (in move_env)
;;     230317DE (in create_env_blob)
update_env_cache proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023031EC0
	lui	a4,00042013
	c.lui	a7,00010000
	c.srli	a0,00000010
	addi	a2,a4,-000004B0
	c.addi	a7,FFFFFFFF
	c.li	a6,00000010
	c.li	a1,00000010
	c.li	a3,00000000
	addi	a5,a4,-000004B0
	c.li	t3,FFFFFFFF
	c.li	t1,00000010

l230308B8:
	lhu	a4,a2,+00000000
	beq	s0,t3,0000000023030910

l230308C0:
	bne	a4,a0,00000000230308D2

l230308C4:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l230308CA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230308D2:
	c.lw	a2,4(a4)
	bne	a4,t3,00000000230308E0

l230308D8:
	bne	a1,t1,00000000230308F8

l230308DC:
	c.mv	a1,a3
	c.j	00000000230308F8

l230308E0:
	lhu	a4,a2,+00000002
	c.beqz	a4,00000000230308EC

l230308E6:
	c.addi	a4,FFFFFFFF
	sh	a4,a2,+00000002

l230308EC:
	lhu	a4,a2,+00000002
	bgeu	a4,a7,00000000230308F8

l230308F4:
	c.mv	a7,a4
	c.mv	a6,a3

l230308F8:
	c.addi	a3,00000001
	c.addi	a2,00000008
	bne	a3,t1,00000000230308B8

l23030900:
	beq	a1,a3,0000000023030920

l23030904:
	c.slli	a1,03
	c.add	a5,a1

l23030908:
	c.sw	a5,4(s0)
	sh	a0,a5,+00000000
	c.j	000000002303091A

l23030910:
	bne	a4,a0,00000000230308F8

l23030914:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l2303091A:
	sh	zero,a5,+00000002
	c.j	00000000230308CA

l23030920:
	beq	a6,a1,00000000230308CA

l23030924:
	c.slli	a6,03
	c.add	a5,a6
	c.j	0000000023030908

;; find_env_cb: 2303092A
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
	jal	ra,000000002306D630
	lbu	a2,s0,+00000002
	c.lwsp	a2,00000064
	beq	a2,a0,000000002303095A

l2303094A:
	c.li	s1,00000000

l2303094C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303095A:
	lbu	s1,s0,+00000001
	c.beqz	s1,000000002303094A

l23030960:
	lbu	a4,s0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002303094A

l2303096A:
	addi	a0,s0,+00000010
	jal	ra,000000002306D6BC
	c.bnez	a0,000000002303094A

l23030974:
	c.li	a5,00000001
	sb	a5,s2,+00000000
	c.j	000000002303094C

;; sector_statistics_cb: 2303097C
sector_statistics_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,0000000023030992

l23030982:
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	bne	a5,a4,0000000023030996

l2303098C:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l23030992:
	c.li	a0,00000000
	c.jr	ra

l23030996:
	c.li	a4,00000002
	bne	a5,a4,0000000023030992

l2303099C:
	c.lw	a2,0(a5)
	c.addi	a5,00000001
	c.sw	a2,0(a5)
	c.j	0000000023030992

;; alloc_env_cb: 230309A4
alloc_env_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,00000000230309D0

l230309AA:
	c.lw	a0,16(a3)
	c.lw	a1,0(a4)
	bgeu	a4,a3,00000000230309D4

l230309B2:
	lbu	a4,a0,+00000002
	c.li	a3,00000001
	beq	a4,a3,00000000230309CC

l230309BC:
	c.li	a3,00000002
	bne	a4,a3,00000000230309D4

l230309C2:
	lui	a4,0004200E
	lbu	a4,a4,+000001EC
	c.bnez	a4,00000000230309D4

l230309CC:
	c.lw	a0,20(a4)
	c.sw	a2,0(a4)

l230309D0:
	c.mv	a0,a5
	c.jr	ra

l230309D4:
	c.li	a5,00000000
	c.j	00000000230309D0

;; write_status: 230309D8
;;   Called from:
;;     23030AD8 (in read_env)
;;     23030BB0 (in update_sec_status)
;;     23030BE6 (in update_sec_status)
;;     2303136A (in del_env)
;;     230313A0 (in del_env)
;;     230313DA (in del_env)
;;     230314A6 (in move_env)
;;     230314C0 (in move_env)
;;     230315DC (in check_and_recovery_env_cb)
;;     23031614 (in do_gc)
;;     2303178A (in create_env_blob)
;;     23031812 (in create_env_blob)
write_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	bltu	a3,a2,0000000023030A0E

l230309E4:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-00000138
	addi	a3,a3,+000003D4
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000111
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23030A0C:
	c.j	0000000023030A0C

l23030A0E:
	c.mv	s0,a1
	c.bnez	a1,0000000023030A3C

l23030A12:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-00000138
	addi	a3,a3,+0000045C
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000112
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23030A3A:
	c.j	0000000023030A3A

l23030A3C:
	c.slli	a2,03
	c.addi	a2,FFFFFFFF
	c.mv	s1,a0
	c.srli	a2,00000003
	addi	a1,zero,+000000FF
	c.mv	a0,s0
	c.swsp	a3,00000084
	jal	ra,000000002306D1BC
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
	jal	zero,0000000023031D4E

;; read_env: 23030A6E
;;   Called from:
;;     23030F24 (in read_sector_meta_data)
;;     23031232 (in env_iterator)
;;     230312E6 (in find_env)
;;     2303166A (in do_gc)
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
	jal	ra,0000000023031D2E
	c.li	a1,00000006
	c.addi4spn	a0,00000004
	jal	ra,00000000230307D2
	c.lwsp	a6,000000E4
	andi	a0,a0,+000000FF
	c.lui	a4,00008000
	sb	a0,s0,+00000000
	c.sw	s0,8(a5)
	addi	s2,a5,-00000014
	c.addi	a4,FFFFFFEC
	bgeu	a4,s2,0000000023030AF2

l23030AA8:
	c.li	a5,0000001C
	c.sw	s0,8(a5)
	c.li	a5,00000005
	beq	a0,a5,0000000023030ADC

l23030AB2:
	c.lw	s0,80(a3)
	lui	a2,00023078
	lui	a0,00023078
	addi	a2,a2,+00000374
	addi	a1,zero,+0000021C
	addi	a0,a0,+00000410
	sb	a5,s0,+00000000
	jal	ra,0000000023031D92
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	jal	ra,00000000230309D8

l23030ADC:
	sb	zero,s0,+00000001
	c.li	a0,00000002

l23030AE2:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l23030AF2:
	c.lui	a4,FFFFF000
	c.addi	a4,00000013
	c.add	a5,a4
	c.lui	a4,00007000
	c.addi	a4,00000012
	bltu	a4,a5,0000000023030B8C

l23030B00:
	lui	a4,00023078
	lui	a3,0002307D
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-00000128
	addi	a3,a3,-0000024C
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000223
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23030B28:
	c.j	0000000023030B28

l23030B2A:
	addi	a5,s1,+00000020
	addi	s3,zero,+00000020
	bltu	a5,s2,0000000023030B3A

l23030B36:
	sub	s3,s2,s1

l23030B3A:
	c.lw	s0,80(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	c.addi	a0,00000014
	c.add	a0,s1
	jal	ra,0000000023031D2E
	c.mv	a0,s4
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	jal	ra,0000000023031EC0
	c.mv	s4,a0
	c.add	s1,s3

l23030B56:
	bltu	s1,s2,0000000023030B2A

l23030B5A:
	c.lwsp	s4,000000E4
	bne	a5,s4,0000000023030ADC

l23030B60:
	c.lw	s0,80(s1)
	lbu	a2,sp,+00000018
	c.li	a5,00000001
	c.addi	s1,0000001C
	sb	a5,s0,+00000001
	c.mv	a0,s1
	addi	a1,s0,+00000010
	jal	ra,0000000023031D2E
	lbu	a5,sp,+00000018
	c.lwsp	t3,000000C4
	c.li	a0,00000000
	c.add	s1,a5
	c.sw	s0,84(s1)
	c.sw	s0,12(a4)
	sb	a5,s0,+00000002
	c.j	0000000023030AE2

l23030B8C:
	c.li	s1,00000000
	c.li	s4,00000000
	c.j	0000000023030B56

;; update_sec_status: 23030B92
;;   Called from:
;;     2303149A (in move_env)
;;     2303175A (in create_env_blob)
update_sec_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	c.mv	s0,a0
	bne	a4,a5,0000000023030BC4

l23030BA8:
	c.lw	a0,4(a0)
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	jal	ra,00000000230309D8
	c.mv	s2,a0

l23030BB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23030BC4:
	c.li	a5,00000002
	c.li	s2,00000000
	bne	a4,a5,0000000023030BB6

l23030BCC:
	c.lw	a0,16(a5)
	addi	a4,zero,+0000005B
	c.mv	s1,a2
	bgeu	a4,a5,0000000023030BDE

l23030BD8:
	c.sub	a5,a1
	bltu	a4,a5,0000000023030C00

l23030BDE:
	c.lw	s0,4(a0)
	c.addi4spn	a1,0000000C
	c.li	a3,00000003
	c.li	a2,00000004
	jal	ra,00000000230309D8
	c.mv	s2,a0
	c.lw	s0,4(a0)
	c.lui	a1,00001000
	c.add	a1,a0
	jal	ra,00000000230307F0
	c.beqz	s1,0000000023030BB6

l23030BF8:
	c.li	a5,00000001
	sb	a5,s1,+00000000
	c.j	0000000023030BB6

l23030C00:
	c.beqz	a2,0000000023030BB6

l23030C02:
	sb	zero,a2,+00000000
	c.j	0000000023030BB6

;; format_sector.constprop.16: 23030C08
;;   Called from:
;;     23030CD4 (in check_sec_hdr_cb)
;;     23031638 (in do_gc)
;;     23031BB8 (in ef_env_set_default)
format_sector.constprop.16 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	slli	a5,a0,00000014
	c.beqz	a5,0000000023030C40

l23030C16:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-00000104
	addi	a3,a3,+000002A4
	addi	a2,a2,+000003F0
	addi	a1,zero,+000003B5
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23030C3E:
	c.j	0000000023030C3E

l23030C40:
	c.lui	a1,00001000
	c.mv	s0,a0
	jal	ra,0000000023031DB0
	c.mv	s1,a0
	c.bnez	a0,0000000023030CA0

l23030C4C:
	c.li	a2,00000014
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	addi	a0,sp,+0000000F
	sb	zero,sp,+0000000C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023031D4E
	c.lui	a1,00001000
	c.mv	s1,a0
	c.add	a1,s0
	c.mv	a0,s0
	jal	ra,00000000230307F0

l23030CA0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; check_sec_hdr_cb: 23030CAC
check_sec_hdr_cb proc
	lbu	a5,a0,+00000000
	c.bnez	a5,0000000023030CE4

l23030CB2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.lw	a0,4(a1)
	c.mv	s0,a0
	lui	a0,00023078
	addi	a0,a0,+00000018
	jal	ra,0000000023031DFC
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.lw	s0,4(a0)
	jal	ra,0000000023030C08
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23030CE4:
	c.li	a0,00000000
	c.jr	ra

;; get_next_env_addr: 23030CE8
;;   Called from:
;;     23030F14 (in read_sector_meta_data)
;;     23031226 (in env_iterator)
;;     2303162C (in do_gc)
get_next_env_addr proc
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	bne	a4,a5,0000000023030CF6

l23030CF2:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23030CF6:
	c.lw	a1,80(a4)
	c.li	a3,FFFFFFFF
	c.lw	a0,4(a5)
	bne	a4,a3,0000000023030D06

l23030D00:
	addi	a0,a5,+00000014
	c.jr	ra

l23030D06:
	c.lui	a3,00001000
	c.add	a3,a5
	bltu	a3,a4,0000000023030CF2

l23030D0E:
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
	c.beqz	a3,0000000023030D2E

l23030D2A:
	c.lw	a1,8(s0)
	c.add	s0,a4

l23030D2E:
	c.lui	s4,00001000
	lui	a3,00042013
	c.mv	s5,a1
	c.addi	s4,FFFFFFEC
	c.lui	a1,FFFFF000
	c.mv	s3,a0
	addi	a2,a3,-00000418
	c.add	s4,a5
	c.and	a1,s0
	c.li	a4,00000000
	addi	a3,a3,-00000418
	c.li	a0,00000004

l23030D4C:
	lw	a6,a2,+00000000
	bne	a1,a6,0000000023030D8A

l23030D54:
	c.slli	a4,03
	c.add	a4,a3
	c.lw	a4,4(a4)
	c.mv	s1,s0
	bne	s0,a4,0000000023030D94

l23030D60:
	c.li	a0,FFFFFFFF

l23030D62:
	lw	a4,s3,+00000004
	c.lui	a5,00001000
	c.add	a5,a4
	bltu	a5,a0,0000000023030D74

l23030D6E:
	lw	a5,s5,+00000008
	c.bnez	a5,0000000023030D76

l23030D74:
	c.li	a0,FFFFFFFF

l23030D76:
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

l23030D8A:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,a0,0000000023030D4C

l23030D92:
	c.mv	s1,s0

l23030D94:
	c.lui	s2,00001000
	c.addi	s2,FFFFFFE4
	lui	s6,00030345
	c.add	s2,a5
	addi	s6,s6,+0000064B
	c.j	0000000023030DEC

l23030DA4:
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023031D2E
	c.mv	a4,sp
	addi	a0,s1,-00000008
	addi	a2,s1,+00000014

l23030DBA:
	beq	s2,a0,0000000023030DEA

l23030DBE:
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
	bne	a5,s6,0000000023030DE2

l23030DDE:
	bgeu	a0,s0,0000000023030D62

l23030DE2:
	c.addi	a0,00000001
	c.addi	a4,00000001
	bne	a2,a0,0000000023030DBA

l23030DEA:
	c.addi	s1,0000001C

l23030DEC:
	bltu	s1,s4,0000000023030DA4

l23030DF0:
	c.j	0000000023030D60

;; read_sector_meta_data: 23030DF2
;;   Called from:
;;     2303102E (in sector_iterator)
;;     23031046 (in sector_iterator)
;;     2303120C (in env_iterator)
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
	c.beqz	a5,0000000023030E3A

l23030E10:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-0000011C
	addi	a3,a3,+000002A4
	addi	a2,a2,+000003F0
	addi	a1,zero,+0000024A
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23030E38:
	c.j	0000000023030E38

l23030E3A:
	c.mv	s0,a1
	c.mv	s4,a2
	c.addi4spn	a1,00000004
	c.li	a2,00000014
	c.mv	s2,a0
	jal	ra,0000000023031D2E
	c.lwsp	a2,000000C4
	lui	a5,00030344
	sw	s2,s0,+00000004
	c.sw	s0,8(a4)
	addi	a5,a5,+00000645
	beq	a4,a5,0000000023030E82

l23030E5C:
	c.li	a5,FFFFFFFF
	sb	zero,s0,+00000000
	c.sw	s0,12(a5)
	c.li	s1,00000007

l23030E66:
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

l23030E82:
	c.lwsp	a6,000000E4
	c.li	s3,00000001
	c.li	a1,00000004
	c.sw	s0,12(a5)
	sb	s3,s0,+00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230307D2
	andi	s1,a0,+000000FF
	sb	s1,s0,+00000001
	c.li	a1,00000004
	addi	a0,sp,+00000007
	jal	ra,00000000230307D2
	sb	a0,s0,+00000002
	bne	s4,zero,0000000023030EB2

l23030EAE:
	c.li	s1,00000000
	c.j	0000000023030E66

l23030EB2:
	addi	a5,s2,+00000014
	sw	zero,s0,+00000010
	c.sw	s0,20(a5)
	bne	s1,s3,0000000023030EC8

l23030EC0:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.j	0000000023030EAE

l23030EC8:
	c.li	a5,00000002
	bne	s1,a5,0000000023030EAE

l23030ECE:
	lui	a4,00042013
	addi	a3,a4,-00000418
	c.li	a5,00000000
	addi	a4,a4,-00000418
	c.li	a2,00000004

l23030EDE:
	c.lw	a3,0(a1)
	bne	s2,a1,0000000023030EFA

l23030EE4:
	c.slli	a5,03
	c.add	a5,a4
	c.lw	a5,4(a5)
	c.lui	a4,00001000
	c.add	s2,a4
	sub	s2,s2,a5
	c.sw	s0,20(a5)
	sw	s2,s0,+00000010
	c.j	0000000023030EAE

l23030EFA:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,0000000023030EDE

l23030F02:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.li	a5,FFFFFFFF
	c.swsp	a5,00000044
	c.li	s2,FFFFFFFF
	c.li	s3,00000001

l23030F10:
	c.addi4spn	a1,00000038
	c.mv	a0,s0
	jal	ra,0000000023030CE8
	c.swsp	a0,00000044
	bne	a0,s2,0000000023030F22

l23030F1E:
	c.li	s1,00000000
	c.j	0000000023030F4C

l23030F22:
	c.addi4spn	a0,00000038
	jal	ra,0000000023030A6E
	lbu	a5,sp,+00000039
	c.bnez	a5,0000000023030F94

l23030F2E:
	lbu	a5,sp,+00000038
	andi	a5,a5,+000000FB
	beq	a5,s3,0000000023030F94

l23030F3A:
	c.lwsp	a0,00000064
	lui	a0,00023078
	addi	a0,a0,+000003A4
	jal	ra,0000000023031DFC
	sw	zero,s0,+00000010

l23030F4C:
	c.lw	s0,4(a5)
	lw	s2,s0,+00000014
	c.lui	s4,00001000
	add	s5,a5,s4
	addi	s4,s4,+00000020
	c.mv	s3,s2
	c.li	s6,00000000
	c.add	s4,a5
	addi	s9,zero,+000000FF

l23030F66:
	bltu	s3,s5,0000000023030FA4

l23030F6A:
	addi	a5,zero,+000000FF
	beq	s6,a5,0000000023030F74

l23030F72:
	c.mv	s2,s5

l23030F74:
	c.lw	s0,20(a5)
	c.lw	s0,4(a0)
	beq	a5,s2,0000000023030F8C

l23030F7C:
	c.lui	a5,00001000
	c.add	a5,a0
	sw	s2,s0,+00000014
	sub	s2,a5,s2
	sw	s2,s0,+00000010

l23030F8C:
	c.lw	s0,20(a1)
	jal	ra,00000000230307F0
	c.j	0000000023030E66

l23030F94:
	c.lwsp	ra,000000A4
	c.lw	s0,20(a4)
	c.lw	s0,16(a5)
	c.add	a4,a3
	c.sub	a5,a3
	c.sw	s0,20(a4)
	c.sw	s0,16(a5)
	c.j	0000000023030F10

l23030FA4:
	addi	s7,s3,+00000020
	addi	s8,zero,+00000020
	bltu	s7,s5,0000000023030FB4

l23030FB0:
	sub	s8,s4,s7

l23030FB4:
	c.mv	a2,s8
	c.addi4spn	a1,00000018
	c.mv	a0,s3
	jal	ra,0000000023031D2E
	c.li	a5,00000000

l23030FC0:
	bne	s8,a5,0000000023030FC8

l23030FC4:
	c.mv	s3,s7
	c.j	0000000023030F66

l23030FC8:
	c.addi4spn	a4,00000018
	c.add	a4,a5
	lbu	a4,a4,+00000000
	beq	s6,s9,0000000023030FDC

l23030FD4:
	bne	a4,s9,0000000023030FDC

l23030FD8:
	add	s2,s3,a5

l23030FDC:
	c.addi	a5,00000001
	c.mv	s6,a4
	c.j	0000000023030FC0

;; sector_iterator: 23030FE2
;;   Called from:
;;     2303107C (in alloc_env)
;;     23031096 (in alloc_env)
;;     230310CC (in alloc_env)
;;     23031114 (in gc_collect)
;;     2303114E (in gc_collect)
;;     23031C12 (in ef_load_env)
;;     23031C44 (in ef_load_env)
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

l23031008:
	c.mv	a0,s0
	jal	ra,000000002303084C
	c.mv	s2,a0
	bne	a0,s7,000000002303102A

l23031014:
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

l2303102A:
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,0000000023030DF2
	c.beqz	s1,000000002303103C

l23031034:
	lbu	a5,s0,+00000001
	bne	a5,s1,0000000023031008

l2303103C:
	beq	s6,zero,000000002303104A

l23031040:
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023030DF2

l2303104A:
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	c.jalr	s3
	c.beqz	a0,0000000023031008

l23031054:
	c.j	0000000023031014

;; alloc_env: 23031056
;;   Called from:
;;     2303116C (in new_env)
;;     230311A2 (in new_env)
;;     2303143E (in move_env)
alloc_env proc
	c.addi16sp	FFFFFFD0
	c.li	a5,FFFFFFFF
	lui	a4,00023031
	c.swsp	a1,00000084
	c.swsp	a5,00000088
	addi	a4,a4,-00000684
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
	jal	ra,0000000023030FE2
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002303109A

l23031084:
	lui	a4,00023031
	c.li	a5,00000001
	addi	a4,a4,-0000065C
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,0000000023030FE2

l2303109A:
	c.lwsp	s8,000000E4
	c.beqz	a5,00000000230310D0

l2303109E:
	c.lwsp	s4,000000A4
	c.li	a4,FFFFFFFF
	bne	a3,a4,00000000230310D0

l230310A6:
	c.li	s1,00000001
	bltu	s1,a5,00000000230310BA

l230310AC:
	lui	s0,0004200E
	addi	s0,s0,+000001EC
	lbu	a5,s0,+00000000
	c.beqz	a5,00000000230310DE

l230310BA:
	lui	a4,00023031
	c.li	a5,00000001
	addi	a4,a4,-0000065C
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023030FE2

l230310D0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	s4,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230310DE:
	lui	a2,00023078
	lui	a0,00023078
	addi	a2,a2,-000000D4
	addi	a1,zero,+0000042D
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92
	sb	s1,s0,+00000000
	c.j	00000000230310D0

;; gc_collect: 230310FC
;;   Called from:
;;     2303119A (in new_env)
;;     230311CE (in check_and_recovery_gc_cb)
;;     23031ACA (in ef_set_env_blob)
;;     23031C64 (in ef_load_env)
gc_collect proc
	c.addi16sp	FFFFFFD0
	lui	a4,00023031
	c.li	a5,00000000
	addi	a4,a4,-00000786
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.li	a1,00000001
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	c.swsp	zero,00000080
	jal	ra,0000000023030FE2
	c.lwsp	tp,000000A4
	lui	a2,00023078
	lui	a0,00023078
	c.li	a4,00000001
	addi	a2,a2,+000002BC
	addi	a1,zero,+000004FA
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bltu	a5,a4,0000000023031152

l2303113C:
	lui	a4,00023031
	c.li	a5,00000000
	addi	a4,a4,+000005E4
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,0000000023030FE2

l23031152:
	c.lwsp	a2,00000130
	lui	a5,0004200E
	sb	zero,a5,+000001EC
	c.addi16sp	00000030
	c.jr	ra

;; new_env: 23031160
;;   Called from:
;;     23031746 (in create_env_blob)
;;     23031A6C (in ef_set_env_blob)
new_env proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023031056
	c.li	a5,FFFFFFFF
	bne	a0,a5,00000000230311A6

l23031176:
	lui	a5,0004200E
	lbu	a5,a5,+000001EC
	c.beqz	a5,00000000230311A6

l23031180:
	lui	a2,00023078
	lui	a0,00023078
	addi	a1,zero,+000004B6
	addi	a0,a0,+00000410
	c.mv	a3,s0
	addi	a2,a2,+00000324
	jal	ra,0000000023031D92
	jal	ra,00000000230310FC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023031056

l230311A6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; check_and_recovery_gc_cb: 230311B0
check_and_recovery_gc_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,00000000230311DA

l230311B6:
	lbu	a4,a0,+00000002
	c.li	a5,00000003
	bne	a4,a5,00000000230311DA

l230311C0:
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.li	a4,00000001
	c.swsp	ra,00000084
	sb	a4,a5,+000001EC
	jal	ra,00000000230310FC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230311DA:
	c.li	a0,00000000
	c.jr	ra

;; env_iterator: 230311DE
;;   Called from:
;;     23031320 (in find_env)
;;     23031484 (in move_env)
;;     23031C5A (in ef_load_env)
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

l230311FE:
	c.addi4spn	a0,00000008
	jal	ra,000000002303084C
	beq	a0,s1,0000000023031240

l23031208:
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	jal	ra,0000000023030DF2
	c.bnez	a0,00000000230311FE

l23031212:
	lbu	a5,sp,+00000009
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s5,a5,00000000230311FE

l23031220:
	c.sw	s0,80(s1)

l23031222:
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,0000000023030CE8
	c.sw	s0,80(a0)
	beq	a0,s1,00000000230311FE

l23031230:
	c.mv	a0,s0
	jal	ra,0000000023030A6E
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	s4
	c.beqz	a0,0000000023031222

l23031240:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; find_env: 23031252
;;   Called from:
;;     2303134E (in del_env)
;;     23031916 (in ef_get_env_blob)
;;     23031A82 (in ef_set_env_blob)
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
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	s5,a0
	c.mv	a1,s2
	c.li	a0,00000000
	lui	s1,00042013
	jal	ra,0000000023031EC0
	addi	s4,s1,-000004B0
	srli	s7,a0,00000010
	c.li	s0,00000000
	addi	s1,s1,-000004B0
	c.li	s8,FFFFFFFF
	c.li	s6,00000010

l23031292:
	lw	a0,s4,+00000004
	beq	a0,s8,0000000023031306

l2303129A:
	lhu	a5,s4,+00000000
	bne	a5,s7,0000000023031306

l230312A2:
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi	a0,0000001C
	jal	ra,0000000023031D2E
	c.mv	a2,s5
	c.mv	a1,sp
	c.mv	a0,s2
	jal	ra,000000002306D6BC
	c.bnez	a0,0000000023031306

l230312BA:
	c.slli	s0,03
	add	a5,s1,s0
	c.lw	a5,4(a4)
	sw	a4,s3,+00000050
	lhu	a4,a5,+00000002
	c.lui	a5,00010000
	addi	a3,a5,-00000012
	c.addi	a5,FFFFFFFF
	bltu	a3,a4,00000000230312DE

l230312D6:
	addi	a5,a4,+00000010
	c.slli	a5,10
	c.srli	a5,00000010

l230312DE:
	c.add	s0,s1
	sh	a5,s0,+00000002
	c.mv	a0,s3
	jal	ra,0000000023030A6E
	c.li	s0,00000001

l230312EC:
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

l23031306:
	c.addi	s0,00000001
	c.addi	s4,00000008
	bne	s0,s6,0000000023031292

l2303130E:
	lui	a3,00023031
	addi	a3,a3,-000006D6
	c.mv	a2,sp
	c.mv	a1,s2
	c.mv	a0,s3
	sb	zero,sp,+00000000
	jal	ra,00000000230311DE
	lbu	s0,sp,+00000000
	c.beqz	s0,00000000230312EC

l2303132A:
	lw	a2,s3,+00000050
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002303088A
	c.j	00000000230312EC

;; del_env: 23031338
;;   Called from:
;;     23031434 (in move_env)
;;     2303150C (in move_env)
;;     23031AA8 (in ef_set_env_blob)
;;     23031AB8 (in ef_set_env_blob)
del_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s3,000000BC
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.mv	s3,a0
	c.mv	s0,a1
	c.bnez	a1,0000000023031358

l2303134A:
	c.addi4spn	a1,00000018
	c.swsp	a2,00000084
	jal	ra,0000000023031252
	c.beqz	a0,00000000230313A8

l23031354:
	c.lwsp	a2,00000084
	c.addi4spn	s0,00000018

l23031358:
	lui	s2,0004200E
	c.lw	s0,80(a0)
	addi	s2,s2,+000001EF
	c.bnez	a2,00000000230313D4

l23031364:
	c.li	a3,00000003
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,00000000230309D8
	c.li	a5,00000001
	c.mv	s1,a0
	sb	a5,s2,+00000000

l23031376:
	c.bnez	s1,00000000230313C4

l23031378:
	c.lw	s0,80(a5)
	c.lui	s0,FFFFF000
	c.li	a2,00000003
	c.and	s0,a5
	c.addi	s0,00000003
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023031D2E
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	jal	ra,00000000230307D2
	c.li	a5,00000001
	bne	a0,a5,00000000230313C4

l23031398:
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,00000000230309D8
	c.mv	s1,a0
	c.j	00000000230313C4

l230313A8:
	lui	a2,00023078
	lui	a0,00023078
	c.mv	a3,s3
	addi	a2,a2,+000000D8
	addi	a1,zero,+00000447
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92
	c.li	s1,00000004

l230313C4:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s1
	c.lwsp	sp,00000048
	c.lwsp	t1,00000024
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l230313D4:
	c.li	a3,00000004
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,00000000230309D8
	lbu	a5,s2,+00000000
	c.mv	s1,a0
	c.bnez	a5,00000000230313FC

l230313E6:
	c.bnez	a0,00000000230313FC

l230313E8:
	beq	s3,zero,0000000023031402

l230313EC:
	c.mv	a0,s3
	jal	ra,000000002306D630
	c.mv	a1,a0
	c.li	a2,FFFFFFFF
	c.mv	a0,s3

l230313F8:
	jal	ra,000000002303088A

l230313FC:
	sb	zero,s2,+00000000
	c.j	0000000023031376

l23031402:
	c.li	a2,FFFFFFFF
	lbu	a1,s0,+00000002
	addi	a0,s0,+00000010
	c.j	00000000230313F8

;; move_env: 2303140E
;;   Called from:
;;     23031588 (in check_and_recovery_env_cb)
;;     23031684 (in do_gc)
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
	bne	a4,a5,0000000023031438

l2303142E:
	c.mv	a1,a0
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,0000000023031338

l23031438:
	c.lw	s0,8(a1)
	c.addi4spn	a0,0000000C
	c.li	s4,00000006
	jal	ra,0000000023031056
	c.li	a5,FFFFFFFF
	c.mv	s1,a0
	beq	a0,a5,0000000023031510

l2303144A:
	lui	a5,0004200E
	lbu	a5,a5,+000001ED
	addi	s6,s0,+00000010
	c.beqz	a5,0000000023031490

l23031458:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,000000002306D1BC
	lbu	a2,s0,+00000002
	c.mv	a1,s6
	c.addi4spn	a0,00000024
	jal	ra,000000002306D7AC
	lui	a3,00023031
	addi	a3,a3,-000006D6
	addi	a2,sp,+0000000B
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000068
	sb	zero,sp,+0000000B
	jal	ra,00000000230311DE
	lbu	a5,sp,+0000000B
	c.li	s4,00000000
	c.bnez	a5,0000000023031506

l23031490:
	lw	s3,s0,+00000008
	c.li	a2,00000000
	c.addi4spn	a0,0000000C
	c.mv	a1,s3
	jal	ra,0000000023030B92
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230309D8
	c.addi	s3,FFFFFFF8
	c.li	s2,00000000
	c.li	s4,00000000
	addi	s7,s1,+00000008

l230314B4:
	bltu	s2,s3,0000000023031528

l230314B8:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230309D8
	c.lw	s0,12(a1)
	lbu	a5,s0,+00000002
	c.lui	a0,FFFFF000
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	c.and	a0,s1
	jal	ra,00000000230307F0
	lbu	a1,s0,+00000002
	c.mv	a2,s1
	c.mv	a0,s6
	jal	ra,000000002303088A
	c.lw	s0,80(a5)
	lbu	a3,s0,+00000002
	lui	a2,00023078
	lui	a0,00023078
	c.mv	a6,s1
	c.mv	a4,s6
	addi	a2,a2,+000002F4
	addi	a1,zero,+000004A6
	addi	a0,a0,+00000410
	jal	ra,0000000023031D92

l23031506:
	c.li	a2,00000001
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,0000000023031338

l23031510:
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

l23031528:
	addi	a5,s2,+00000020
	addi	s5,zero,+00000020
	bltu	a5,s3,0000000023031538

l23031534:
	sub	s5,s3,s2

l23031538:
	c.lw	s0,80(a0)
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	c.addi	a0,00000008
	c.add	a0,s2
	jal	ra,0000000023031D2E
	add	a0,s7,s2
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	jal	ra,0000000023031D4E
	c.mv	s4,a0
	c.add	s2,s5
	c.j	00000000230314B4

;; check_and_recovery_env_cb: 23031558
check_and_recovery_env_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lbu	s1,a0,+00000001
	c.mv	s0,a0
	lbu	a5,a0,+00000000
	c.beqz	s1,00000000230315CC

l2303156C:
	c.li	a4,00000003
	bne	a5,a4,00000000230315CC

l23031572:
	lbu	a1,a0,+00000002
	addi	a2,a0,+00000010
	lui	a0,00023078
	addi	a0,a0,-000000A4
	jal	ra,0000000023031DFC
	c.mv	a0,s0
	jal	ra,000000002303140E
	lui	a5,00023078
	c.bnez	a0,00000000230315B4

l23031592:
	lui	a2,00023078
	addi	a2,a2,-00000058
	addi	a1,zero,+000006D5
	addi	a0,a5,+00000410
	jal	ra,0000000023031D92
	c.li	s1,00000000

l230315A8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230315B4:
	c.lw	s0,8(a3)
	lui	a2,00023078
	addi	a2,a2,-00000038
	addi	a1,zero,+000006D7
	addi	a0,a5,+00000410
	jal	ra,0000000023031D92
	c.j	00000000230315A8

l230315CC:
	c.li	a4,00000001
	c.li	s1,00000000
	bne	a5,a4,00000000230315A8

l230315D4:
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	jal	ra,00000000230309D8
	c.li	s1,00000001
	c.j	00000000230315A8

;; do_gc: 230315E4
do_gc proc
	lbu	a5,a0,+00000000
	c.beqz	a5,00000000230316A2

l230315EA:
	lbu	a5,a0,+00000002
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230316A2

l230315FA:
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
	jal	ra,00000000230309D8
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000002C
	c.li	s1,FFFFFFFF
	c.li	s2,00000001
	lui	s3,00023078
	lui	s4,00023078

l23031628:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023030CE8
	c.swsp	a0,0000002C
	bne	a0,s1,0000000023031668

l23031636:
	c.lw	s0,4(a0)
	jal	ra,0000000023030C08
	c.lw	s0,4(a3)
	lui	a2,00023078
	lui	a0,00023078
	addi	a0,a0,+00000410
	addi	a2,a2,+00000124
	addi	a1,zero,+000004E6
	jal	ra,0000000023031D92
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23031668:
	c.addi4spn	a0,00000008
	jal	ra,0000000023030A6E
	lbu	a5,sp,+00000009
	c.beqz	a5,0000000023031628

l23031674:
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s2,a5,0000000023031628

l23031682:
	c.addi4spn	a0,00000008
	jal	ra,000000002303140E
	c.beqz	a0,0000000023031628

l2303168A:
	lbu	a3,sp,+0000000A
	c.addi4spn	a4,00000018
	addi	a2,s3,+000000F4
	addi	a1,zero,+000004E1
	addi	a0,s4,+00000410
	jal	ra,0000000023031D92
	c.j	0000000023031628

l230316A2:
	c.li	a0,00000000
	c.jr	ra

;; create_env_blob: 230316A6
;;   Called from:
;;     23031A94 (in ef_set_env_blob)
;;     23031BE4 (in ef_env_set_default)
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
	jal	ra,000000002306D630
	addi	a5,zero,+00000040
	bgeu	a5,a0,00000000230316F8

l230316D2:
	lui	a0,00023078
	addi	a1,zero,+00000040
	addi	a0,a0,+0000005C
	jal	ra,0000000023031DFC
	c.li	s0,00000004

l230316E4:
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

l230316F8:
	addi	a1,zero,+000000FF
	c.li	a2,0000001C
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lui	a5,00030345
	addi	a5,a5,+0000064B
	c.mv	a0,s2
	c.swsp	a5,00000084
	jal	ra,000000002306D630
	sb	a0,sp,+00000018
	addi	a1,s0,+0000001C
	andi	a0,a0,+000000FF
	c.add	a1,a0
	c.lui	a5,00001000
	c.swsp	s0,0000008C
	c.swsp	a1,00000008
	c.addi	a5,FFFFFFEC
	bgeu	a5,a1,000000002303173E

l2303172E:
	lui	a0,00023078
	addi	a0,a0,+0000008C
	jal	ra,0000000023031DFC
	c.li	s0,00000006
	c.j	00000000230316E4

l2303173E:
	c.li	s5,FFFFFFFF
	bne	s1,s5,0000000023031752

l23031744:
	c.mv	a0,s4
	jal	ra,0000000023031160
	c.mv	s1,a0
	c.li	s0,00000006
	beq	a0,s5,00000000230316E4

l23031752:
	c.lwsp	a6,00000064
	addi	a2,sp,+00000003
	c.mv	a0,s4
	jal	ra,0000000023030B92
	c.mv	s0,a0
	c.bnez	a0,00000000230316E4

l23031762:
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,0000000023031EC0
	lbu	a2,sp,+00000018
	c.mv	a1,s2
	c.swsp	a0,00000088
	jal	ra,0000000023031EC0
	c.lwsp	t3,00000084
	c.mv	a1,s3
	c.swsp	a0,00000088
	jal	ra,0000000023031EC0
	c.swsp	a0,00000088
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,00000000230309D8
	c.mv	s0,a0
	c.bnez	a0,00000000230316E4

l23031792:
	c.li	a2,00000014
	c.addi4spn	a1,0000000C
	addi	a0,s1,+00000008
	c.jal	0000000023031D4E
	c.mv	s0,a0
	c.bnez	a0,00000000230316E4

l230317A0:
	lbu	s0,sp,+00000018
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,s1,+0000001C
	c.jal	0000000023031D4E
	lbu	a5,sp,+00000003
	c.mv	s0,a0
	c.bnez	a5,00000000230317D6

l230317C2:
	c.lwsp	t3,00000064
	lbu	a5,sp,+00000018
	lw	a0,s4,+00000004
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	jal	ra,00000000230307F0

l230317D6:
	lbu	a1,sp,+00000018
	c.mv	a2,s1
	c.mv	a0,s2
	jal	ra,000000002303088A
	bne	s0,zero,00000000230316E4

l230317E6:
	lbu	s0,sp,+00000018
	c.lwsp	t3,00000048
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.addi	s0,0000001C
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.add	s0,s1
	c.mv	a0,s0
	c.mv	a2,s2
	c.mv	a1,s3
	c.jal	0000000023031D4E
	c.mv	s0,a0
	bne	a0,zero,00000000230316E4

l2303180A:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,00000000230309D8
	c.mv	s0,a0
	bne	a0,zero,00000000230316E4

l2303181C:
	lbu	a5,sp,+00000003
	beq	a5,zero,00000000230316E4

l23031824:
	lui	a2,00023078
	lui	a0,00023078
	addi	a2,a2,+000000B0
	addi	a1,zero,+00000562
	addi	a0,a0,+00000410
	c.jal	0000000023031D92
	lui	a5,0004200E
	c.li	a4,00000001
	sb	a4,a5,+000001EC
	c.j	00000000230316E4

;; ef_get_env_blob: 23031846
;;   Called from:
;;     23000D98 (in _connect_wifi)
;;     23000DCC (in _connect_wifi)
;;     23000E02 (in _connect_wifi)
;;     23000E7A (in _connect_wifi)
;;     23000EA6 (in _connect_wifi)
ef_get_env_blob proc
	lui	a5,0004200E
	lbu	a5,a5,+000001EE
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.bnez	a5,0000000023031878

l2303185C:
	lui	a0,00023078
	addi	a0,a0,+0000021C
	c.jal	0000000023031DFC
	c.li	s0,00000000

l23031868:
	c.mv	a0,s0
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l23031878:
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023031880

l2303187E:
	c.bnez	a1,00000000230318BE

l23031880:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230318B8

l2303188A:
	jal	ra,0000000023033B12

l2303188E:
	lui	a3,00023078
	lui	a2,00023078
	c.mv	a1,a0
	lui	a0,00023078
	c.mv	a6,s1
	c.mv	a5,s0
	addi	a4,zero,+0000034C
	addi	a3,a3,+000001A8
	addi	a2,a2,+000001B4
	addi	a0,a0,+000001C4

l230318B0:
	jal	ra,00000000230018FA
	c.li	s0,00000008
	c.j	0000000023031868

l230318B8:
	jal	ra,0000000023033AF0
	c.j	000000002303188E

l230318BE:
	c.mv	s3,a2
	c.mv	s2,a3
	jal	ra,000000002306D630
	addi	a5,zero,+00000040
	bgeu	a5,a0,0000000023031910

l230318CE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303190A

l230318D8:
	jal	ra,0000000023033B12

l230318DC:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,000000002306D630
	c.mv	a5,a0
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a6,zero,+00000040
	addi	a4,zero,+00000351
	addi	a3,a3,+000001A8
	addi	a2,a2,+000001B4
	c.lwsp	a2,00000064
	addi	a0,a0,+000001F4
	c.j	00000000230318B0

l2303190A:
	jal	ra,0000000023033AF0
	c.j	00000000230318DC

l23031910:
	c.jal	0000000023031D72
	c.mv	a0,s0
	c.addi4spn	a1,00000018
	jal	ra,0000000023031252
	c.li	s0,00000000
	c.beqz	a0,0000000023031938

l2303191E:
	c.lwsp	tp,000001F4
	beq	s2,zero,0000000023031928

l23031924:
	sw	a5,s2,+00000000

l23031928:
	c.mv	s0,s3
	bgeu	a5,s3,0000000023031930

l2303192E:
	c.mv	s0,a5

l23031930:
	c.lwsp	a3,00000154
	c.mv	a2,s0
	c.mv	a1,s1
	c.jal	0000000023031D2E

l23031938:
	c.jal	0000000023031D80
	c.j	0000000023031868

;; ef_set_env_blob: 2303193C
;;   Called from:
;;     23031AEE (in ef_set_env)
ef_set_env_blob proc
	lui	a5,0004200E
	lbu	a5,a5,+000001EE
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.bnez	a5,000000002303197A

l23031958:
	lui	a0,00023078
	addi	a0,a0,+0000021C
	c.jal	0000000023031DFC
	c.li	s0,00000007

l23031964:
	c.mv	a0,s0
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

l2303197A:
	c.mv	s1,a0
	c.mv	s5,a1
	c.beqz	a0,0000000023031982

l23031980:
	c.bnez	a1,00000000230319C0

l23031982:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230319BA

l2303198C:
	jal	ra,0000000023033B12

l23031990:
	lui	a3,00023078
	lui	a2,00023078
	c.mv	a1,a0
	lui	a0,00023078
	c.mv	a6,s5
	c.mv	a5,s1
	addi	a4,zero,+000005D4
	addi	a3,a3,+000001A8
	addi	a2,a2,+000001B4
	addi	a0,a0,+000001C4

l230319B2:
	jal	ra,00000000230018FA
	c.li	s0,00000008
	c.j	0000000023031964

l230319BA:
	jal	ra,0000000023033AF0
	c.j	0000000023031990

l230319C0:
	c.mv	s3,a2
	jal	ra,000000002306D630
	addi	a5,zero,+00000040
	bgeu	a5,a0,0000000023031A10

l230319CE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023031A0A

l230319D8:
	jal	ra,0000000023033B12

l230319DC:
	c.swsp	a0,00000084
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.mv	a5,a0
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a6,zero,+00000040
	addi	a4,zero,+000005D9
	addi	a3,a3,+000001A8
	addi	a2,a2,+000001B4
	c.lwsp	a2,00000064
	addi	a0,a0,+000001F4
	c.j	00000000230319B2

l23031A0A:
	jal	ra,0000000023033AF0
	c.j	00000000230319DC

l23031A10:
	c.lui	a5,00001000
	addi	a5,a5,-00000074
	bgeu	a5,s3,0000000023031A56

l23031A1A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023031A50

l23031A24:
	jal	ra,0000000023033B12

l23031A28:
	c.lui	a6,00001000
	lui	a3,00023078
	lui	a2,00023078
	c.mv	a1,a0
	lui	a0,00023078
	addi	a6,a6,-00000074
	c.mv	a5,s3
	addi	a4,zero,+000005DE
	addi	a3,a3,+000001A8
	addi	a2,a2,+000001B4
	addi	a0,a0,+00000278
	c.j	00000000230319B2

l23031A50:
	jal	ra,0000000023033AF0
	c.j	0000000023031A28

l23031A56:
	c.jal	0000000023031D72
	c.mv	a0,s1
	jal	ra,000000002306D630
	addi	a1,s3,+0000001C
	lui	s4,00042013
	c.add	a1,a0
	addi	a0,s4,-00000430
	jal	ra,0000000023031160
	c.li	a5,FFFFFFFF
	c.li	s0,00000006
	beq	a0,a5,0000000023031ACE

l23031A78:
	lui	s2,00042013
	addi	a1,s2,-00000508
	c.mv	a0,s1
	jal	ra,0000000023031252
	c.mv	s6,a0
	c.bnez	a0,0000000023031AB0

l23031A8A:
	c.mv	a3,s3
	c.mv	a2,s5
	c.mv	a1,s1
	addi	a0,s4,-00000430
	jal	ra,00000000230316A6
	c.mv	s0,a0
	beq	s6,zero,0000000023031AC0

l23031A9E:
	c.bnez	a0,0000000023031AC0

l23031AA0:
	c.li	a2,00000001
	addi	a1,s2,-00000508
	c.mv	a0,s1
	jal	ra,0000000023031338
	c.mv	s0,a0
	c.j	0000000023031AC0

l23031AB0:
	c.li	a2,00000000
	addi	a1,s2,-00000508
	c.mv	a0,s1
	jal	ra,0000000023031338
	c.mv	s0,a0
	c.beqz	a0,0000000023031A8A

l23031AC0:
	lui	a5,0004200E
	lbu	a5,a5,+000001EC
	c.beqz	a5,0000000023031ACE

l23031ACA:
	jal	ra,00000000230310FC

l23031ACE:
	c.jal	0000000023031D80
	c.j	0000000023031964

;; ef_set_env: 23031AD2
;;   Called from:
;;     23000E56 (in _connect_wifi)
ef_set_env proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002303193C

;; ef_save_env: 23031AF2
;;   Called from:
;;     23000E5A (in _connect_wifi)
ef_save_env proc
	c.li	a0,00000000
	c.jr	ra

;; ef_env_set_default: 23031AF6
;;   Called from:
;;     23031C2C (in ef_load_env)
ef_env_set_default proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200E
	lw	a5,s0,+000001E0
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.bnez	a5,0000000023031B38

l23031B10:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-000000F4
	addi	a3,a3,+00000180
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000621
	addi	a0,a0,+00000410
	c.jal	0000000023031D92

l23031B36:
	c.j	0000000023031B36

l23031B38:
	lui	s2,0004200E
	lw	a5,s2,+000001E4
	addi	s2,s2,+000001E4
	c.bnez	a5,0000000023031B6E

l23031B46:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-000000F4
	addi	a3,a3,+00000190
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000622
	addi	a0,a0,+00000410
	c.jal	0000000023031D92

l23031B6C:
	c.j	0000000023031B6C

l23031B6E:
	c.jal	0000000023031D72
	lui	a5,0004200E
	lw	s1,a5,+000001E8
	addi	s0,s0,+000001E0
	addi	s3,a5,+000001E8
	c.lui	s4,00008000
	c.lui	s5,00001000

l23031B84:
	lw	a5,s3,+00000000
	c.add	a5,s4
	bltu	s1,a5,0000000023031BB6

l23031B8E:
	c.li	s1,00000000
	c.li	s4,0000000C
	c.li	s5,FFFFFFFF

l23031B94:
	lw	a5,s2,+00000000
	bltu	s1,a5,0000000023031BC2

l23031B9C:
	c.li	a0,00000000

l23031B9E:
	c.swsp	a0,00000084
	c.jal	0000000023031D80
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	a2,00000044
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l23031BB6:
	c.mv	a0,s1
	jal	ra,0000000023030C08
	c.bnez	a0,0000000023031B9E

l23031BBE:
	c.add	s1,s5
	c.j	0000000023031B84

l23031BC2:
	add	s3,s1,s4
	c.lw	s0,0(a4)
	c.add	a4,s3
	c.lw	a4,8(a3)
	c.bnez	a3,0000000023031BD6

l23031BCE:
	c.lw	a4,4(a0)
	jal	ra,000000002306D630
	c.mv	a3,a0

l23031BD6:
	c.lw	s0,0(a5)
	c.swsp	s5,00000094
	c.addi4spn	a0,00000018
	c.add	a5,s3
	c.lw	a5,4(a2)
	c.lw	a5,0(a1)
	c.addi	s1,00000001
	jal	ra,00000000230316A6
	c.j	0000000023031B94

;; ef_load_env: 23031BEA
;;   Called from:
;;     23031D1A (in ef_env_init)
ef_load_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.li	a5,00000001
	lui	s0,0004200E
	lui	a4,00023031
	sb	a5,s0,+000001ED
	addi	a4,a4,-00000354
	c.li	a5,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	zero,00000084
	jal	ra,0000000023030FE2
	c.lwsp	a2,000000C4
	c.li	a5,00000008
	addi	s0,s0,+000001ED
	bne	a4,a5,0000000023031C30

l23031C22:
	lui	a0,00023078
	addi	a0,a0,+00000238
	c.jal	0000000023031DFC
	jal	ra,0000000023031AF6

l23031C30:
	c.jal	0000000023031D72
	lui	a4,00023031
	c.li	a5,00000000
	addi	a4,a4,+000001B0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023030FE2
	lui	s1,00023031
	lui	s2,0004200E

l23031C50:
	addi	a3,s1,+00000558
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230311DE
	lbu	a5,s2,+000001EC
	c.beqz	a5,0000000023031C6A

l23031C64:
	jal	ra,00000000230310FC
	c.j	0000000023031C50

l23031C6A:
	sb	zero,s0,+00000000
	c.jal	0000000023031D80
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.li	a0,00000000
	c.addi16sp	00000090
	c.jr	ra

;; ef_env_init: 23031C7E
;;   Called from:
;;     23030794 (in easyflash_init)
ef_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,0000000023031CAE

l23031C86:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,-000000E0
	addi	a3,a3,+00000140
	addi	a2,a2,+000003F0
	addi	a1,zero,+0000071E
	addi	a0,a0,+00000410
	c.jal	0000000023031D92

l23031CAC:
	c.j	0000000023031CAC

l23031CAE:
	lui	a5,0004200E
	lbu	a4,a5,+000001EE
	c.mv	a3,a0
	addi	s0,a5,+000001EE
	c.li	a0,00000000
	c.bnez	a4,0000000023031D26

l23031CC0:
	lui	a5,00042013
	addi	a5,a5,-00000418
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.sw	a5,8(a4)
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	lui	a5,00042013
	addi	a5,a5,-000004B0
	addi	a4,a5,+00000080
	c.li	a2,FFFFFFFF

l23031CE0:
	c.sw	a5,4(a2)
	c.addi	a5,00000008
	bne	a5,a4,0000000023031CE0

l23031CE8:
	lui	a5,0004200E
	sw	zero,a5,+000001E8
	lui	a5,0004200E
	sw	a3,a5,+000001E0
	lui	a2,00023078
	lui	a5,0004200E
	lui	a0,00023078
	sw	a1,a5,+000001E4
	c.lui	a4,00008000
	c.li	a3,00000000
	addi	a2,a2,+0000014C
	addi	a1,zero,+00000738
	addi	a0,a0,+00000410
	c.jal	0000000023031D92
	jal	ra,0000000023031BEA
	c.bnez	a0,0000000023031D26

l23031D20:
	c.li	a5,00000001
	sb	a5,s0,+00000000

l23031D26:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_read: 23031D2E
;;   Called from:
;;     23030A84 (in read_env)
;;     23030B44 (in read_env)
;;     23030B74 (in read_env)
;;     23030DAC (in get_next_env_addr)
;;     23030E44 (in read_sector_meta_data)
;;     23030FBA (in read_sector_meta_data)
;;     230312AA (in find_env)
;;     23031386 (in del_env)
;;     23031542 (in move_env)
;;     23031936 (in ef_get_env_blob)
ef_port_read proc
	lui	a5,0004200E
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,+000001F4
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230678A0
	c.lwsp	a2,00000020
	slti	a0,a0,+00000000
	c.slli	a0,01
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_write: 23031D4E
;;   Called from:
;;     23030A6A (in write_status)
;;     23030C90 (in format_sector.constprop.16)
;;     2303154E (in move_env)
;;     2303179A (in create_env_blob)
;;     230317B8 (in create_env_blob)
;;     23031802 (in create_env_blob)
ef_port_write proc
	lui	a5,0004200E
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,+000001F4
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230677FC
	bge	a0,zero,0000000023031D6E

l23031D66:
	c.li	a0,00000003

l23031D68:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23031D6E:
	c.li	a0,00000000
	c.j	0000000023031D68

;; ef_port_env_lock: 23031D72
;;   Called from:
;;     23031910 (in ef_get_env_blob)
;;     23031A56 (in ef_set_env_blob)
;;     23031B6E (in ef_env_set_default)
;;     23031C30 (in ef_load_env)
ef_port_env_lock proc
	lui	a5,0004200E
	lw	a0,a5,+000001F0
	c.li	a1,FFFFFFFF
	jal	zero,000000002303296C

;; ef_port_env_unlock: 23031D80
;;   Called from:
;;     23031938 (in ef_get_env_blob)
;;     23031ACE (in ef_set_env_blob)
;;     23031BA0 (in ef_env_set_default)
;;     23031C6E (in ef_load_env)
ef_port_env_unlock proc
	lui	a5,0004200E
	lw	a0,a5,+000001F0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,0000000023032528

;; ef_log_debug: 23031D92
;;   Called from:
;;     23030A08 (in write_status)
;;     23030A36 (in write_status)
;;     23030ACC (in read_env)
;;     23030B24 (in read_env)
;;     23030C3A (in format_sector.constprop.16)
;;     23030E34 (in read_sector_meta_data)
;;     230310F2 (in alloc_env)
;;     23031130 (in gc_collect)
;;     23031196 (in new_env)
;;     230313BE (in del_env)
;;     23031502 (in move_env)
;;     230315A2 (in check_and_recovery_env_cb)
;;     230315C6 (in check_and_recovery_env_cb)
;;     23031652 (in do_gc)
;;     2303169C (in do_gc)
;;     23031838 (in create_env_blob)
;;     23031B34 (in ef_env_set_default)
;;     23031B6A (in ef_env_set_default)
;;     23031CAA (in ef_env_init)
;;     23031D18 (in ef_env_init)
;;     23031DDE (in ef_port_erase)
ef_log_debug proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a1,0000002C
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a1,00000084
	jal	ra,0000000023003A2E
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_erase: 23031DB0
;;   Called from:
;;     23030C44 (in format_sector.constprop.16)
ef_port_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	slli	a5,a0,00000014
	c.beqz	a5,0000000023031DE4

l23031DBA:
	lui	a4,00023078
	lui	a3,00023078
	lui	a2,00023078
	lui	a0,00023078
	addi	a4,a4,+0000046C
	addi	a3,a3,+00000488
	addi	a2,a2,+000003F0
	addi	a1,zero,+00000077
	addi	a0,a0,+000004A8
	jal	ra,0000000023031D92

l23031DE2:
	c.j	0000000023031DE2

l23031DE4:
	lui	a5,0004200E
	c.mv	a2,a1
	c.mv	a1,a0
	lw	a0,a5,+000001F4
	jal	ra,00000000230677E6
	c.lwsp	a2,00000020
	c.srli	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; ef_log_info: 23031DFC
;;   Called from:
;;     230307A8 (in easyflash_init)
;;     230307B4 (in easyflash_init)
;;     23030CC8 (in check_sec_hdr_cb)
;;     23030F44 (in read_sector_meta_data)
;;     23031582 (in check_and_recovery_env_cb)
;;     230316DE (in create_env_blob)
;;     23031736 (in create_env_blob)
;;     23031864 (in ef_get_env_blob)
;;     23031960 (in ef_set_env_blob)
;;     23031C2A (in ef_load_env)
;;     23031E52 (in ef_port_init)
;;     23031E84 (in ef_port_init)
ef_log_info proc
	c.addi16sp	FFFFFFC0
	c.swsp	a1,00000090
	c.addi4spn	a1,00000024
	c.swsp	ra,0000008C
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a1,00000084
	jal	ra,0000000023003A2E
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_init: 23031E1C
;;   Called from:
;;     23030784 (in easyflash_init)
ef_port_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,0004200E
	lui	a0,00023078
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,+000001F4
	addi	a0,a0,+000004F4
	addi	a1,a1,+000001F4
	c.swsp	ra,00000094
	jal	ra,0000000023067620
	bge	a0,zero,0000000023031E64

l23031E48:
	c.mv	a1,a0
	lui	a0,00023078
	addi	a0,a0,+000004F8
	jal	ra,0000000023031DFC
	lui	a0,00023078
	addi	a0,a0,+0000052C
	jal	ra,0000000023003A8A

l23031E62:
	c.j	0000000023031E62

l23031E64:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,00000000230677BA
	c.lwsp	s4,00000084
	c.lwsp	t3,00000064
	lui	a0,00023078
	addi	a0,a0,+00000570
	jal	ra,0000000023031DFC
	lui	a5,00023078
	addi	a5,a5,+0000047C
	c.sw	s1,0(a5)
	lui	a0,00023078
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000001
	addi	a0,a0,+000005B4
	jal	ra,0000000023003AC6
	c.li	a0,00000001
	jal	ra,00000000230326B8
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200E
	sw	a0,a5,+000001F0
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; ef_calc_crc32: 23031EC0
;;   Called from:
;;     23030898 (in update_env_cache)
;;     23030B4E (in read_env)
;;     2303127C (in find_env)
;;     23031766 (in create_env_blob)
;;     23031772 (in create_env_blob)
;;     2303177C (in create_env_blob)
ef_calc_crc32 proc
	lui	a4,00023078
	xori	a0,a0,-00000001
	c.add	a2,a1
	addi	a4,a4,+000005E0

l23031ECE:
	bne	a1,a2,0000000023031ED8

l23031ED2:
	xori	a0,a0,-00000001
	c.jr	ra

l23031ED8:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.xor	a5,a0
	andi	a5,a5,+000000FF
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.srli	a0,00000008
	c.xor	a0,a5
	c.j	0000000023031ECE

;; xEventGroupCreateStatic: 23031EF0
;;   Called from:
;;     2300AC92 (in cmd_mgr_queue)
xEventGroupCreateStatic proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,0000000023031F26

l23031EFA:
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023031F20

l23031F06:
	sw	zero,s0,+00000000
	addi	a0,s0,+00000004
	c.jal	0000000023032154
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l23031F16:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23031F20:
	jal	ra,000000002300149E
	c.j	0000000023031F06

l23031F26:
	jal	ra,000000002300149E
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,0000000023031F16

l23031F36:
	jal	ra,000000002300149E
	c.j	0000000023031F16

;; xEventGroupWaitBits: 23031F3C
;;   Called from:
;;     2300ACF6 (in cmd_mgr_queue)
xEventGroupWaitBits proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s4,a3
	c.mv	s3,a4
	c.beqz	a0,0000000023032010

l23031F58:
	lui	a5,000FF000
	c.and	a5,s1
	c.bnez	a5,0000000023031FA0

l23031F60:
	c.beqz	s1,0000000023031FA0

l23031F62:
	jal	ra,00000000230344C8
	c.beqz	a0,0000000023031FE8

l23031F68:
	jal	ra,0000000023033AE0
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,0000000023031FAC

l23031F78:
	c.beqz	a5,0000000023031FB0

l23031F7A:
	beq	s5,zero,0000000023032002

l23031F7E:
	xori	s1,s1,-00000001
	c.and	s1,s0
	sw	s1,s2,+00000000
	jal	ra,0000000023033CBC

l23031F8C:
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

l23031FA0:
	jal	ra,000000002300149E
	jal	ra,00000000230344C8
	c.bnez	a0,0000000023031F68

l23031FAA:
	c.j	0000000023031FE8

l23031FAC:
	beq	s1,a5,0000000023031F7A

l23031FB0:
	beq	s3,zero,0000000023032002

l23031FB4:
	sltu	a1,zero,s5
	c.slli	a1,18
	bne	s4,zero,0000000023032008

l23031FBE:
	c.mv	a2,s3
	c.or	a1,s1
	addi	a0,s2,+00000004
	jal	ra,0000000023033F4C
	jal	ra,0000000023033CBC
	c.bnez	a0,0000000023031FD4

l23031FD0:
	ecall

l23031FD4:
	jal	ra,00000000230348D2
	slli	a5,a0,00000006
	bge	a5,zero,0000000023032016

l23031FE0:
	slli	s0,a0,00000008
	c.srli	s0,00000008
	c.j	0000000023031F8C

l23031FE8:
	beq	s3,zero,0000000023031F68

l23031FEC:
	jal	ra,000000002300149E
	jal	ra,0000000023033AE0
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,0000000023031FAC

l23032000:
	c.j	0000000023031F78

l23032002:
	jal	ra,0000000023033CBC
	c.j	0000000023031F8C

l23032008:
	lui	a5,00004000
	c.or	a1,a5
	c.j	0000000023031FBE

l23032010:
	jal	ra,000000002300149E
	c.j	0000000023031F58

l23032016:
	jal	ra,00000000230347A4
	lw	a0,s2,+00000000
	and	a5,s1,a0
	bne	s4,zero,0000000023032040

l23032026:
	c.beqz	a5,0000000023032036

l23032028:
	beq	s5,zero,0000000023032036

l2303202C:
	xori	s1,s1,-00000001
	c.and	s1,a0
	sw	s1,s2,+00000000

l23032036:
	c.swsp	a0,00000084
	jal	ra,00000000230347B8
	c.lwsp	a2,00000044
	c.j	0000000023031FE0

l23032040:
	bne	s1,a5,0000000023032036

l23032044:
	c.j	0000000023032028

;; xEventGroupSetBits: 23032046
;;   Called from:
;;     2300AA3C (in cmd_complete.isra.1)
;;     2300ADBC (in cmd_mgr_drain)
xEventGroupSetBits proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a0,00000000230320EE

l2303205C:
	lui	a5,000FF000
	and	a5,s2,a5
	c.bnez	a5,00000000230320E8

l23032066:
	jal	ra,0000000023033AE0
	c.lw	s1,0(a3)
	c.lw	s1,16(s0)
	addi	s3,s1,+0000000C
	or	a3,s2,a3
	c.sw	s1,0(a3)
	beq	s3,s0,00000000230320C4

l2303207C:
	lui	s2,00001000
	c.li	s5,00000000
	c.addi	s2,FFFFFFFF
	lui	s4,00002000

l23032088:
	c.lw	s0,0(a4)
	c.mv	a0,s0
	or	a1,a3,s4
	and	a2,a4,s2
	slli	a5,a4,00000005
	and	a6,a2,a3
	c.lw	s0,4(s0)
	blt	a5,zero,00000000230320DE

l230320A2:
	beq	a6,zero,00000000230320B8

l230320A6:
	slli	a5,a4,00000007
	bge	a5,zero,00000000230320B2

l230320AE:
	or	s5,s5,a2

l230320B2:
	jal	ra,0000000023034074
	c.lw	s1,0(a3)

l230320B8:
	bne	s3,s0,0000000023032088

l230320BC:
	xori	s5,s5,-00000001
	and	a3,a3,s5

l230320C4:
	c.sw	s1,0(a3)
	jal	ra,0000000023033CBC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lw	s1,0(a0)
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230320DE:
	beq	a2,a6,00000000230320A6

l230320E2:
	bne	s3,s0,0000000023032088

l230320E6:
	c.j	00000000230320BC

l230320E8:
	jal	ra,000000002300149E
	c.j	0000000023032066

l230320EE:
	jal	ra,000000002300149E
	c.j	000000002303205C

;; vEventGroupDelete: 230320F4
;;   Called from:
;;     2300AD34 (in cmd_mgr_queue)
vEventGroupDelete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,0000000023033AE0
	c.lw	s0,4(a5)
	addi	s1,s0,+0000000C
	c.bnez	a5,0000000023032118

l2303210A:
	c.j	0000000023032130

l2303210C:
	lui	a1,00002000
	jal	ra,0000000023034074
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023032130

l23032118:
	c.lw	s0,16(a0)
	bne	a0,s1,000000002303210C

l2303211E:
	jal	ra,000000002300149E
	c.lw	s0,16(a0)
	lui	a1,00002000
	jal	ra,0000000023034074
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023032118

l23032130:
	lbu	a5,s0,+0000001C
	c.beqz	a5,0000000023032142

l23032136:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023033CBC

l23032142:
	c.mv	a0,s0
	jal	ra,0000000023035A72
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023033CBC

;; vListInitialise: 23032154
;;   Called from:
;;     23031F0E (in xEventGroupCreateStatic)
;;     230323CE (in xQueueGenericReset)
;;     230323D6 (in xQueueGenericReset)
;;     2303364C (in prvAddNewTaskToReadyList)
;;     23033660 (in prvAddNewTaskToReadyList)
;;     23033670 (in prvAddNewTaskToReadyList)
;;     2303367C (in prvAddNewTaskToReadyList)
;;     23033688 (in prvAddNewTaskToReadyList)
;;     23033694 (in prvAddNewTaskToReadyList)
;;     23034E28 (in prvCheckForValidListAndQueue)
;;     23034E38 (in prvCheckForValidListAndQueue)
vListInitialise proc
	addi	a5,a0,+00000008
	c.li	a4,FFFFFFFF
	c.sw	a0,4(a5)
	c.sw	a0,8(a4)
	c.sw	a0,12(a5)
	c.sw	a0,16(a5)
	sw	zero,a0,+00000000
	c.jr	ra

;; vListInitialiseItem: 23032168
;;   Called from:
;;     230333D0 (in prvInitialiseNewTask.isra.2)
;;     230333D8 (in prvInitialiseNewTask.isra.2)
;;     23034F6E (in xTimerCreate)
;;     23034FEA (in xTimerCreateStatic)
vListInitialiseItem proc
	sw	zero,a0,+00000010
	c.jr	ra

;; vListInsertEnd: 2303216E
;;   Called from:
;;     2303351A (in prvAddCurrentTaskToDelayedList)
;;     230335D6 (in prvAddNewTaskToReadyList)
;;     2303395E (in vTaskDelete)
;;     23033C5E (in xTaskIncrementTick)
;;     23033D6A (in xTaskResumeAll)
;;     23033F7A (in vTaskPlaceOnUnorderedEventList)
;;     23033FBA (in vTaskPlaceOnEventListRestricted)
;;     23034008 (in xTaskRemoveFromEventList)
;;     23034068 (in xTaskRemoveFromEventList)
;;     230340CC (in vTaskRemoveFromUnorderedEventList)
;;     230345BE (in xTaskPriorityInherit)
;;     2303465C (in xTaskPriorityDisinherit)
;;     23034762 (in vTaskPriorityDisinheritAfterTimeout)
;;     23034B60 (in xTaskGenericNotify)
;;     23034C32 (in xTaskGenericNotifyFromISR)
;;     23034CB4 (in xTaskGenericNotifyFromISR)
;;     23034D26 (in vTaskNotifyGiveFromISR)
;;     23034D8A (in vTaskNotifyGiveFromISR)
vListInsertEnd proc
	c.lw	a0,4(a5)
	c.sw	a1,4(a5)
	c.lw	a5,8(a4)
	c.sw	a1,8(a4)
	c.sw	a4,4(a1)
	c.sw	a5,8(a1)
	c.sw	a1,16(a0)
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; vListInsert: 23032184
;;   Called from:
;;     230334C0 (in prvAddCurrentTaskToDelayedList)
;;     230334FA (in prvAddCurrentTaskToDelayedList)
;;     23033F30 (in vTaskPlaceOnEventList)
;;     23034EAC (in prvInsertTimerInActiveList)
;;     23034EC4 (in prvInsertTimerInActiveList)
;;     2303512A (in prvSwitchTimerLists)
vListInsert proc
	c.lw	a1,0(a2)
	c.li	a5,FFFFFFFF
	addi	a4,a0,+00000008
	bne	a2,a5,0000000023032194

l23032190:
	c.j	00000000230321AE

l23032192:
	c.mv	a4,a5

l23032194:
	c.lw	a4,4(a5)
	c.lw	a5,0(a3)
	bgeu	a2,a3,0000000023032192

l2303219C:
	c.sw	a1,4(a5)
	c.sw	a5,8(a1)
	c.sw	a1,8(a4)
	c.sw	a4,4(a1)
	c.sw	a1,16(a0)
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

l230321AE:
	c.lw	a0,16(a4)
	c.lw	a4,4(a5)
	c.j	000000002303219C

;; uxListRemove: 230321B4
;;   Called from:
;;     23033482 (in prvAddCurrentTaskToDelayedList)
;;     2303370E (in prvIdleTask)
;;     2303389E (in vTaskDelete)
;;     230338C6 (in vTaskDelete)
;;     23033C32 (in xTaskIncrementTick)
;;     23033C3E (in xTaskIncrementTick)
;;     23033D3E (in xTaskResumeAll)
;;     23033D48 (in xTaskResumeAll)
;;     23033FF0 (in xTaskRemoveFromEventList)
;;     2303403A (in xTaskRemoveFromEventList)
;;     23034094 (in vTaskRemoveFromUnorderedEventList)
;;     2303409E (in vTaskRemoveFromUnorderedEventList)
;;     23034568 (in xTaskPriorityInherit)
;;     2303461E (in xTaskPriorityDisinherit)
;;     2303472E (in vTaskPriorityDisinheritAfterTimeout)
;;     23034B30 (in xTaskGenericNotify)
;;     23034C86 (in xTaskGenericNotifyFromISR)
;;     23034D5C (in vTaskNotifyGiveFromISR)
;;     230350D6 (in prvSwitchTimerLists)
;;     230351DA (in prvTimerTask)
;;     230352D4 (in prvTimerTask)
uxListRemove proc
	c.lw	a0,4(a3)
	c.lw	a0,8(a4)
	c.lw	a0,16(a5)
	c.sw	a3,8(a4)
	c.lw	a0,4(a3)
	c.sw	a4,4(a3)
	c.lw	a5,4(a4)
	beq	a4,a0,00000000230321D4

l230321C6:
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

l230321D4:
	c.lw	a0,8(a4)
	c.sw	a5,4(a4)
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

;; prvCopyDataToQueue: 230321E6
;;   Called from:
;;     230325E8 (in xQueueGenericSend)
;;     23032738 (in xQueueGenericSendFromISR)
prvCopyDataToQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,64(a5)
	c.lw	a0,56(s1)
	c.mv	s0,a0
	c.bnez	a5,000000002303220E

l230321F8:
	c.lw	a0,0(a5)
	c.addi	s1,00000001
	c.li	a0,00000000
	c.beqz	a5,0000000023032276

l23032200:
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303220E:
	c.mv	s2,a2
	c.bnez	a2,000000002303223E

l23032212:
	c.lw	a0,4(a0)
	c.mv	a2,a5
	c.addi	s1,00000001
	jal	ra,000000002306CF80
	c.lw	s0,4(a5)
	c.lw	s0,64(a3)
	c.lw	s0,8(a4)
	c.li	a0,00000000
	c.add	a5,a3
	c.sw	s0,4(a5)
	bltu	a5,a4,0000000023032200

l2303222C:
	c.lw	s0,0(a5)
	c.sw	s0,56(s1)
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303223E:
	c.lw	a0,12(a0)
	c.mv	a2,a5
	jal	ra,000000002306CF80
	c.lw	s0,64(a4)
	c.lw	s0,12(a5)
	c.lw	s0,0(a3)
	sub	a4,zero,a4
	c.add	a5,a4
	c.sw	s0,12(a5)
	bgeu	a5,a3,000000002303225E

l23032258:
	c.lw	s0,8(a5)
	c.add	a4,a5
	c.sw	s0,12(a4)

l2303225E:
	c.li	a5,00000002
	beq	s2,a5,0000000023032282

l23032264:
	c.addi	s1,00000001
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23032276:
	c.lw	s0,8(a0)
	jal	ra,00000000230345C6
	sw	zero,s0,+00000008
	c.j	0000000023032200

l23032282:
	c.li	a0,00000000
	c.bnez	s1,0000000023032200

l23032286:
	c.li	s1,00000001
	c.j	0000000023032200

;; prvCopyDataFromQueue: 2303228A
;;   Called from:
;;     230328FE (in xQueueReceive)
prvCopyDataFromQueue proc
	c.lw	a0,64(a2)
	c.mv	a5,a1
	c.beqz	a2,00000000230322A6

l23032290:
	c.lw	a0,12(a1)
	c.lw	a0,8(a4)
	c.add	a1,a2
	c.sw	a0,12(a1)
	bltu	a1,a4,00000000230322A0

l2303229C:
	c.lw	a0,0(a1)
	c.sw	a0,12(a1)

l230322A0:
	c.mv	a0,a5
	jal	zero,000000002306CF80

l230322A6:
	c.jr	ra

;; prvUnlockQueue: 230322A8
;;   Called from:
;;     230325CC (in xQueueGenericSend)
;;     2303261A (in xQueueGenericSend)
;;     23032668 (in xQueueGenericSend)
;;     230328A8 (in xQueueReceive)
;;     230328D8 (in xQueueReceive)
;;     2303292E (in xQueueReceive)
;;     230329F4 (in xQueueSemaphoreTake)
;;     23032A20 (in xQueueSemaphoreTake)
;;     23032A52 (in xQueueSemaphoreTake)
;;     23032C12 (in vQueueWaitForMessageRestricted)
;;     23032C2E (in vQueueWaitForMessageRestricted)
prvUnlockQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,00000000230347A4
	lbu	s0,s1,+00000045
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,00000000230322FA

l230322C4:
	c.lw	s1,36(a5)
	c.beqz	a5,00000000230322FA

l230322C8:
	addi	s2,s1,+00000024
	c.j	00000000230322E0

l230322CE:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,00000000230322FA

l230322DC:
	c.lw	s1,36(a5)
	c.beqz	a5,00000000230322FA

l230322E0:
	c.mv	a0,s2
	jal	ra,0000000023033FDC
	c.beqz	a0,00000000230322CE

l230322E8:
	c.addi	s0,FFFFFFFF
	jal	ra,000000002303423E
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,00000000230322DC

l230322FA:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000045
	jal	ra,00000000230347B8
	jal	ra,00000000230347A4
	lbu	s0,s1,+00000044
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,000000002303234A

l23032314:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002303234A

l23032318:
	addi	s2,s1,+00000010
	c.j	0000000023032330

l2303231E:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,000000002303234A

l2303232C:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002303234A

l23032330:
	c.mv	a0,s2
	jal	ra,0000000023033FDC
	c.beqz	a0,000000002303231E

l23032338:
	c.addi	s0,FFFFFFFF
	jal	ra,000000002303423E
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,000000002303232C

l2303234A:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000044
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230347B8

;; xQueueGenericReset: 2303235E
;;   Called from:
;;     2303243C (in xQueueGenericCreateStatic)
;;     230324C0 (in xQueueGenericCreate)
xQueueGenericReset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,00000000230323EA

l2303236C:
	jal	ra,00000000230347A4
	c.lw	s0,64(a3)
	c.lw	s0,60(a5)
	c.lw	s0,0(a4)
	sw	zero,s0,+00000038
	add	a5,a3,a5
	c.li	a2,FFFFFFFF
	sb	a2,s0,+00000044
	c.sw	s0,4(a4)
	sb	a2,s0,+00000045
	sub	a3,a5,a3
	c.add	a5,a4
	c.add	a4,a3
	c.sw	s0,8(a5)
	c.sw	s0,12(a4)
	c.bnez	s1,00000000230323CA

l23032398:
	c.lw	s0,16(a5)
	c.bnez	a5,00000000230323AC

l2303239C:
	jal	ra,00000000230347B8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230323AC:
	addi	a0,s0,+00000010
	jal	ra,0000000023033FDC
	c.beqz	a0,000000002303239C

l230323B6:
	ecall
	jal	ra,00000000230347B8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230323CA:
	addi	a0,s0,+00000010
	jal	ra,0000000023032154
	addi	a0,s0,+00000024
	jal	ra,0000000023032154
	jal	ra,00000000230347B8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230323EA:
	jal	ra,000000002300149E
	c.j	000000002303236C

;; xQueueGenericCreateStatic: 230323F0
;;   Called from:
;;     2302CFFE (in __bl_ble_sync_task)
;;     2302D014 (in __bl_ble_sync_task)
;;     2302E0A6 (in pro_trans_init)
;;     23032690 (in xQueueCreateMutexStatic)
;;     23034E62 (in prvCheckForValidListAndQueue)
xQueueGenericCreateStatic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s3,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	s0,a3
	c.mv	s4,a4
	c.beqz	a0,000000002303245A

l2303240A:
	c.beqz	s0,000000002303246A

l2303240C:
	beq	s2,zero,0000000023032462

l23032410:
	c.beqz	s1,0000000023032464

l23032412:
	addi	a5,zero,+00000050
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,0000000023032422

l2303241E:
	jal	ra,000000002300149E

l23032422:
	c.lwsp	a2,000000E4
	c.beqz	s0,0000000023032444

l23032426:
	c.li	a5,00000001
	sb	a5,s0,+00000046
	c.beqz	s1,0000000023032456

l2303242E:
	sw	s2,s0,+00000000
	sw	s3,s0,+0000003C
	c.sw	s0,64(s1)
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002303235E
	sb	s4,s0,+0000004C

l23032444:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23032456:
	c.mv	s2,s0
	c.j	000000002303242E

l2303245A:
	jal	ra,000000002300149E
	c.bnez	s0,000000002303240C

l23032460:
	c.j	000000002303246A

l23032462:
	c.beqz	s1,0000000023032412

l23032464:
	jal	ra,000000002300149E
	c.j	0000000023032412

l2303246A:
	jal	ra,000000002300149E
	c.j	000000002303240C

;; xQueueGenericCreate: 23032470
;;   Called from:
;;     2300B070 (in ble_controller_init)
;;     230250A0 (in k_queue_init)
;;     23032502 (in xQueueCreateCountingSemaphore)
;;     230326C4 (in xQueueCreateMutex)
;;     23042C04 (in sys_mbox_new)
;;     23042D16 (in sys_sem_new)
xQueueGenericCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.beqz	a0,00000000230324D8

l23032484:
	beq	s2,zero,00000000230324A4

l23032488:
	add	a0,s1,s2
	addi	a0,a0,+00000050
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,00000000230324DE

l23032498:
	addi	a5,a0,+00000050
	sb	zero,a0,+00000046
	c.sw	a0,0(a5)
	c.j	00000000230324B6

l230324A4:
	addi	a0,zero,+00000050
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,00000000230324DE

l230324B0:
	sb	zero,s0,+00000046
	c.sw	s0,0(s0)

l230324B6:
	c.sw	s0,60(s1)
	sw	s2,s0,+00000040
	c.mv	a0,s0
	c.li	a1,00000001
	jal	ra,000000002303235E
	sb	s3,s0,+0000004C
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230324D8:
	jal	ra,000000002300149E
	c.j	0000000023032484

l230324DE:
	c.li	s0,00000000
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; xQueueCreateCountingSemaphore: 230324F0
;;   Called from:
;;     2300280A (in aos_sem_new)
;;     230251A0 (in k_sem_init)
xQueueCreateCountingSemaphore proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,0000000023032512

l230324FA:
	bltu	a0,s0,000000002303251E

l230324FE:
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,0000000023032470
	c.beqz	a0,000000002303250A

l23032508:
	c.sw	a0,56(s0)

l2303250A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23032512:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	bgeu	a0,s0,00000000230324FE

l2303251E:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	00000000230324FE

;; xQueueGenericSend: 23032528
;;   Called from:
;;     23001B7C (in aos_open)
;;     23001BA6 (in aos_open)
;;     23001C3C (in aos_close)
;;     23001D4C (in aos_stat)
;;     23001D62 (in aos_stat)
;;     23001DAA (in aos_stat)
;;     23001DEE (in aos_opendir)
;;     23001E12 (in aos_opendir)
;;     23001E42 (in aos_opendir)
;;     23001EBA (in aos_closedir)
;;     230027EE (in aos_mutex_unlock)
;;     23002872 (in aos_sem_signal)
;;     2300A9EC (in cmd_mgr_print)
;;     2300AAB4 (in cmd_mgr_msgind)
;;     2300ABC4 (in cmd_mgr_llind)
;;     2300AC12 (in cmd_mgr_queue)
;;     2300AC44 (in cmd_mgr_queue)
;;     2300ACB4 (in cmd_mgr_queue)
;;     2300AD2E (in cmd_mgr_queue)
;;     2300AD96 (in cmd_mgr_drain)
;;     2300AF38 (in rw_main_task_post)
;;     230250CA (in k_queue_insert)
;;     230251F4 (in k_sem_give)
;;     2302D5FC (in wifi_state_get_cb)
;;     2302D664 (in write_data)
;;     2302E01A (in pro_trans_ack)
;;     23031D8E (in ef_port_env_unlock)
;;     230326AA (in xQueueCreateMutexStatic)
;;     230326DE (in xQueueCreateMutex)
;;     2303505E (in xTimerGenericCommand)
;;     230350A0 (in xTimerGenericCommand)
;;     23042C54 (in sys_mbox_post)
;;     23042C74 (in sys_mbox_trypost)
;;     23042D24 (in sys_sem_new)
;;     23042E38 (in sys_mutex_unlock)
;;     23044BFA (in aos_register_driver)
;;     23044C80 (in aos_register_fs)
;;     23068870 (in bl_sha_mutex_give)
xQueueGenericSend proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	a2,00000084
	c.mv	s0,a0
	c.mv	s5,a1
	c.mv	s2,a3
	beq	a0,zero,0000000023032674

l23032546:
	beq	s5,zero,0000000023032652

l2303254A:
	c.li	a5,00000002
	beq	s2,a5,0000000023032644

l23032550:
	jal	ra,00000000230344C8
	c.bnez	a0,000000002303255C

l23032556:
	c.lwsp	a2,000000E4
	bne	a5,zero,000000002303267A

l2303255C:
	jal	ra,00000000230347A4
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	c.li	s6,00000000
	c.li	s3,00000002
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000010
	bltu	a4,a5,00000000230325E2

l23032572:
	beq	s2,s3,00000000230325E2

l23032576:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002303265E

l2303257C:
	beq	s6,zero,000000002303262C

l23032580:
	jal	ra,00000000230347B8
	jal	ra,0000000023033AE0
	jal	ra,00000000230347A4
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002303259C

l23032598:
	sb	zero,s0,+00000044

l2303259C:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230325AC

l230325A8:
	sb	zero,s0,+00000045

l230325AC:
	jal	ra,00000000230347B8
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002303418C
	c.bnez	a0,0000000023032666

l230325BA:
	jal	ra,00000000230347A4
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	beq	a4,a5,000000002303260C

l230325C6:
	jal	ra,00000000230347B8
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC

l230325D4:
	c.li	s6,00000001

l230325D6:
	jal	ra,00000000230347A4
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	bgeu	a4,a5,0000000023032572

l230325E2:
	c.mv	a2,s2
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,00000000230321E6
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023032634

l230325F0:
	c.bnez	a0,000000002303263E

l230325F2:
	jal	ra,00000000230347B8
	c.li	a0,00000001

l230325F8:
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

l2303260C:
	jal	ra,00000000230347B8
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023033F1C
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	c.bnez	a0,00000000230325D4

l23032624:
	ecall
	c.li	s6,00000001
	c.j	00000000230325D6

l2303262C:
	c.addi4spn	a0,00000018
	jal	ra,0000000023034176
	c.j	0000000023032580

l23032634:
	addi	a0,s0,+00000024
	jal	ra,0000000023033FDC
	c.beqz	a0,00000000230325F2

l2303263E:
	ecall
	c.j	00000000230325F2

l23032644:
	c.lw	s0,60(a4)
	c.li	a5,00000001
	beq	a4,a5,0000000023032550

l2303264C:
	jal	ra,000000002300149E
	c.j	0000000023032550

l23032652:
	c.lw	s0,64(a5)
	beq	a5,zero,000000002303254A

l23032658:
	jal	ra,000000002300149E
	c.j	000000002303254A

l2303265E:
	jal	ra,00000000230347B8
	c.li	a0,00000000
	c.j	00000000230325F8

l23032666:
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	c.li	a0,00000000
	c.j	00000000230325F8

l23032674:
	jal	ra,000000002300149E
	c.j	0000000023032546

l2303267A:
	jal	ra,000000002300149E
	c.j	000000002303255C

;; xQueueCreateMutexStatic: 23032680
;;   Called from:
;;     23001B12 (in vfs_init)
;;     23036D68 (in bl_sec_init)
xQueueCreateMutexStatic proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a0
	c.mv	a3,a1
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230323F0
	c.mv	s0,a0
	c.beqz	a0,00000000230326AE

l23032698:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l230326AE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueCreateMutex: 230326B8
;;   Called from:
;;     230027AC (in aos_mutex_new)
;;     2300ADD8 (in bl_cmd_mgr_init)
;;     23031EA6 (in ef_port_init)
;;     23042DE8 (in sys_mutex_new)
xQueueCreateMutex proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023032470
	c.mv	s0,a0
	c.beqz	a0,00000000230326E2

l230326CC:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l230326E2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueGenericSendFromISR: 230326EC
;;   Called from:
;;     2300AF72 (in rw_main_task_post_from_fw)
;;     23035078 (in xTimerGenericCommand)
xQueueGenericSendFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s3,a2
	c.mv	s2,a3
	c.beqz	a0,0000000023032784

l23032700:
	c.beqz	a1,0000000023032762

l23032702:
	c.li	a4,00000002
	c.lw	s0,60(a5)
	beq	s2,a4,0000000023032720

l2303270A:
	c.lw	s0,56(a4)
	bltu	a4,a5,0000000023032730

l23032710:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23032720:
	c.li	a4,00000001
	beq	a5,a4,000000002303272E

l23032726:
	c.swsp	a1,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000064

l2303272E:
	c.lw	s0,56(a5)

l23032730:
	lbu	s1,s0,+00000045
	c.mv	a2,s2
	c.mv	a0,s0
	jal	ra,00000000230321E6
	slli	a4,s1,00000018
	c.srai	a4,00000018
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023032770

l23032748:
	c.addi	s1,00000001
	c.slli	s1,18
	c.srai	s1,00000018
	sb	s1,s0,+00000045
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000001
	c.addi16sp	00000030
	c.jr	ra

l23032762:
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023032702

l23032766:
	c.swsp	a1,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000064
	c.j	0000000023032702

l23032770:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002303278E

l23032774:
	c.li	a0,00000001

l23032776:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23032784:
	c.swsp	a1,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000064
	c.j	0000000023032700

l2303278E:
	addi	a0,s0,+00000024
	jal	ra,0000000023033FDC
	c.beqz	a0,0000000023032774

l23032798:
	beq	s3,zero,0000000023032774

l2303279C:
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.li	a0,00000001
	c.j	0000000023032776

;; xQueueGiveFromISR: 230327A6
;;   Called from:
;;     2300285A (in aos_sem_signal)
xQueueGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023032802

l230327B4:
	c.lw	s0,64(a5)
	c.bnez	a5,00000000230327F0

l230327B8:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230327F8

l230327BC:
	c.lw	s0,56(a5)
	c.lw	s0,60(a4)
	c.li	a0,00000000
	bgeu	a5,a4,00000000230327E6

l230327C6:
	lbu	a4,s0,+00000045
	c.addi	a5,00000001
	c.sw	s0,56(a5)
	slli	a3,a4,00000018
	c.srai	a3,00000018
	c.li	a5,FFFFFFFF
	beq	a3,a5,0000000023032808

l230327DA:
	c.addi	a4,00000001
	c.slli	a4,18
	c.srai	a4,00000018
	sb	a4,s0,+00000045

l230327E4:
	c.li	a0,00000001

l230327E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230327F0:
	jal	ra,000000002300149E
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230327BC

l230327F8:
	c.lw	s0,8(a5)
	c.beqz	a5,00000000230327BC

l230327FC:
	jal	ra,000000002300149E
	c.j	00000000230327BC

l23032802:
	jal	ra,000000002300149E
	c.j	00000000230327B4

l23032808:
	c.lw	s0,36(a5)
	c.beqz	a5,00000000230327E4

l2303280C:
	addi	a0,s0,+00000024
	jal	ra,0000000023033FDC
	c.beqz	a0,00000000230327E4

l23032816:
	c.beqz	s1,00000000230327E4

l23032818:
	c.li	a5,00000001
	c.sw	s1,0(a5)
	c.li	a0,00000001
	c.j	00000000230327E6

;; xQueueReceive: 23032820
;;   Called from:
;;     2300AEB6 (in blecontroller_main)
;;     2300B0E2 (in ble_controller_deinit)
;;     2302514E (in k_queue_get)
;;     2302D084 (in __bl_ble_sync_task)
;;     230351C4 (in prvTimerTask)
;;     23042CC4 (in sys_arch_mbox_fetch)
;;     23042CF2 (in sys_arch_mbox_fetch)
xQueueReceive proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	a2,00000084
	c.mv	s0,a0
	c.mv	s3,a1
	beq	a0,zero,0000000023032956

l23032838:
	beq	s3,zero,000000002303294A

l2303283C:
	jal	ra,00000000230344C8
	beq	a0,zero,000000002303293E

l23032844:
	jal	ra,00000000230347A4
	lw	s2,s0,+00000038
	bne	s2,zero,00000000230328F8

l23032850:
	c.lwsp	a2,000000E4
	c.beqz	a5,00000000230328C0

l23032854:
	c.addi4spn	a0,00000018
	jal	ra,0000000023034176
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024

l23032860:
	jal	ra,00000000230347B8
	jal	ra,0000000023033AE0
	jal	ra,00000000230347A4
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002303287C

l23032878:
	sb	zero,s0,+00000044

l2303287C:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002303288C

l23032888:
	sb	zero,s0,+00000045

l2303288C:
	jal	ra,00000000230347B8
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002303418C
	c.bnez	a0,00000000230328D6

l2303289A:
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023032920

l230328A2:
	jal	ra,00000000230347B8
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	jal	ra,00000000230347A4
	lw	s2,s0,+00000038
	bne	s2,zero,00000000230328F8

l230328BC:
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023032860

l230328C0:
	jal	ra,00000000230347B8
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l230328D6:
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.beqz	a5,00000000230328C0

l230328E8:
	jal	ra,00000000230347B8

l230328EC:
	jal	ra,00000000230347A4
	lw	s2,s0,+00000038
	beq	s2,zero,00000000230328BC

l230328F8:
	c.mv	a1,s3
	c.mv	a0,s0
	c.addi	s2,FFFFFFFF
	jal	ra,000000002303228A
	sw	s2,s0,+00000038
	c.lw	s0,16(a5)
	c.bnez	a5,000000002303295C

l2303290A:
	jal	ra,00000000230347B8
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000001
	c.addi16sp	00000040
	c.jr	ra

l23032920:
	jal	ra,00000000230347B8
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023033F1C
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	c.bnez	a0,00000000230328EC

l23032938:
	ecall
	c.j	00000000230328EC

l2303293E:
	c.lwsp	a2,000000E4
	beq	a5,zero,0000000023032844

l23032944:
	jal	ra,000000002300149E
	c.j	0000000023032844

l2303294A:
	c.lw	s0,64(a5)
	beq	a5,zero,000000002303283C

l23032950:
	jal	ra,000000002300149E
	c.j	000000002303283C

l23032956:
	jal	ra,000000002300149E
	c.j	0000000023032838

l2303295C:
	addi	a0,s0,+00000010
	jal	ra,0000000023033FDC
	c.beqz	a0,000000002303290A

l23032966:
	ecall
	c.j	000000002303290A

;; xQueueSemaphoreTake: 2303296C
;;   Called from:
;;     23001B60 (in aos_open)
;;     23001C24 (in aos_close)
;;     23001D18 (in aos_stat)
;;     23001D92 (in aos_stat)
;;     23001DD2 (in aos_opendir)
;;     23001E2A (in aos_opendir)
;;     23001EA2 (in aos_closedir)
;;     230027D0 (in aos_mutex_lock)
;;     2300282C (in aos_sem_wait)
;;     2300A9D0 (in cmd_mgr_print)
;;     2300AA60 (in cmd_mgr_msgind)
;;     2300AB18 (in cmd_mgr_llind)
;;     2300ABF6 (in cmd_mgr_queue)
;;     2300AD02 (in cmd_mgr_queue)
;;     2300AD64 (in cmd_mgr_drain)
;;     230251BA (in k_sem_take)
;;     2302DD86 (in __protocol_send)
;;     23031D7C (in ef_port_env_lock)
;;     23042D4E (in sys_sem_new)
;;     23042D8C (in sys_arch_sem_wait)
;;     23042DB2 (in sys_arch_sem_wait)
;;     23044BC8 (in aos_register_driver)
;;     23044C4E (in aos_register_fs)
;;     230687F6 (in bl_sha_mutex_take)
xQueueSemaphoreTake proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	a1,00000084
	c.mv	s0,a0
	beq	a0,zero,0000000023032AB0

l23032982:
	c.lw	s0,64(a5)
	bne	a5,zero,0000000023032A8A

l23032988:
	jal	ra,00000000230344C8
	beq	a0,zero,0000000023032A7E

l23032990:
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024
	c.bnez	a5,0000000023032A06

l230329A2:
	c.lwsp	a2,000000E4
	beq	a5,zero,0000000023032AC8

l230329A8:
	beq	s2,zero,0000000023032A38

l230329AC:
	jal	ra,00000000230347B8
	jal	ra,0000000023033AE0
	jal	ra,00000000230347A4
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230329C8

l230329C4:
	sb	zero,s0,+00000044

l230329C8:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230329D8

l230329D4:
	sb	zero,s0,+00000045

l230329D8:
	jal	ra,00000000230347B8
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002303418C
	c.bnez	a0,0000000023032A1E

l230329E6:
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023032A40

l230329EE:
	jal	ra,00000000230347B8
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC

l230329FC:
	c.li	s2,00000001

l230329FE:
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.beqz	a5,00000000230329A2

l23032A06:
	c.lw	s0,0(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,56(a5)
	beq	a4,zero,0000000023032AEC

l23032A10:
	c.lw	s0,16(a5)
	bne	a5,zero,0000000023032AD4

l23032A16:
	jal	ra,00000000230347B8
	c.li	s3,00000001
	c.j	0000000023032A6C

l23032A1E:
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	jal	ra,00000000230347A4
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023032A64

l23032A30:
	jal	ra,00000000230347B8
	c.li	s2,00000001
	c.j	00000000230329FE

l23032A38:
	c.addi4spn	a0,00000018
	jal	ra,0000000023034176
	c.j	00000000230329AC

l23032A40:
	jal	ra,00000000230347B8
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023032AB6

l23032A48:
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023033F1C
	c.mv	a0,s0
	jal	ra,00000000230322A8
	jal	ra,0000000023033CBC
	c.bnez	a0,00000000230329FC

l23032A5C:
	ecall
	c.li	s2,00000001
	c.j	00000000230329FE

l23032A64:
	jal	ra,00000000230347B8
	bne	s3,zero,0000000023032A90

l23032A6C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23032A7E:
	c.lwsp	a2,000000E4
	beq	a5,zero,0000000023032990

l23032A84:
	jal	ra,000000002300149E
	c.j	0000000023032990

l23032A8A:
	jal	ra,000000002300149E
	c.j	0000000023032988

l23032A90:
	jal	ra,00000000230347A4
	c.lw	s0,36(a1)
	c.beqz	a1,0000000023032AA2

l23032A98:
	c.lw	s0,48(a5)
	addi	a1,zero,+00000020
	c.lw	a5,0(a5)
	c.sub	a1,a5

l23032AA2:
	c.lw	s0,8(a0)
	c.li	s3,00000000
	jal	ra,000000002303469E
	jal	ra,00000000230347B8
	c.j	0000000023032A6C

l23032AB0:
	jal	ra,000000002300149E
	c.j	0000000023032982

l23032AB6:
	jal	ra,00000000230347A4
	c.lw	s0,8(a0)
	jal	ra,00000000230344E4
	c.mv	s3,a0
	jal	ra,00000000230347B8
	c.j	0000000023032A48

l23032AC8:
	bne	s3,zero,0000000023032AE6

l23032ACC:
	jal	ra,00000000230347B8
	c.li	s3,00000000
	c.j	0000000023032A6C

l23032AD4:
	addi	a0,s0,+00000010
	jal	ra,0000000023033FDC
	beq	a0,zero,0000000023032A16

l23032AE0:
	ecall
	c.j	0000000023032A16

l23032AE6:
	jal	ra,000000002300149E
	c.j	0000000023032ACC

l23032AEC:
	jal	ra,00000000230348EE
	c.sw	s0,8(a0)
	c.j	0000000023032A10

;; uxQueueMessagesWaiting: 23032AF4
;;   Called from:
;;     2302516A (in k_queue_is_empty)
;;     2302517A (in k_queue_get_cnt)
;;     23025236 (in k_sem_count_get)
uxQueueMessagesWaiting proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,0000000023032B12

l23032AFE:
	jal	ra,00000000230347A4
	c.lw	s0,56(s0)
	jal	ra,00000000230347B8
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23032B12:
	jal	ra,000000002300149E
	c.j	0000000023032AFE

;; vQueueDelete: 23032B18
;;   Called from:
;;     230027C4 (in aos_mutex_free)
;;     2300281E (in aos_sem_free)
;;     2300B0EE (in ble_controller_deinit)
;;     23025102 (in k_queue_free)
;;     23025228 (in k_sem_delete)
;;     23042DD0 (in sys_sem_free)
vQueueDelete proc
	c.beqz	a0,0000000023032B52

l23032B1A:
	lui	a5,0004201A
	addi	a1,a5,+000004FC
	c.li	a4,00000000
	addi	a5,a5,+000004FC
	c.li	a2,00000008

l23032B2A:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,0000000023032B44

l23032B32:
	c.addi	a4,00000001
	bne	a4,a2,0000000023032B2A

l23032B38:
	lbu	a5,a0,+00000046
	c.beqz	a5,0000000023032B40

l23032B3E:
	c.jr	ra

l23032B40:
	jal	zero,0000000023035A72

l23032B44:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	0000000023032B38

l23032B52:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	lui	a5,0004201A
	addi	a1,a5,+000004FC
	c.li	a4,00000000
	addi	a5,a5,+000004FC
	c.li	a2,00000008

l23032B6E:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,0000000023032B90

l23032B76:
	c.addi	a4,00000001
	bne	a4,a2,0000000023032B6E

l23032B7C:
	lbu	a5,a0,+00000046
	c.beqz	a5,0000000023032B88

l23032B82:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23032B88:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023035A72

l23032B90:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	0000000023032B7C

;; vQueueAddToRegistry: 23032B9E
;;   Called from:
;;     23034E72 (in prvCheckForValidListAndQueue)
vQueueAddToRegistry proc
	lui	a5,0004201A
	addi	a6,a5,+000004FC
	c.li	a4,00000000
	addi	a5,a5,+000004FC
	c.li	a2,00000008

l23032BAE:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.beqz	a3,0000000023032BBC

l23032BB4:
	c.addi	a4,00000001
	bne	a4,a2,0000000023032BAE

l23032BBA:
	c.jr	ra

l23032BBC:
	c.slli	a4,03
	c.add	a4,a6
	c.sw	a4,0(a1)
	c.sw	a4,4(a0)
	c.jr	ra

;; vQueueWaitForMessageRestricted: 23032BC6
;;   Called from:
;;     230351AE (in prvTimerTask)
vQueueWaitForMessageRestricted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,00000000230347A4
	lbu	a5,s0,+00000044
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,0000000023032BEC

l23032BE8:
	sb	zero,s0,+00000044

l23032BEC:
	lbu	a5,s0,+00000045
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,0000000023032BFE

l23032BFA:
	sb	zero,s0,+00000045

l23032BFE:
	jal	ra,00000000230347B8
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023032C16

l23032C06:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230322A8

l23032C16:
	addi	a0,s0,+00000024
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023033FA2
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230322A8

;; prvInitialiseNewStreamBuffer: 23032C32
;;   Called from:
;;     23032E1A (in xStreamBufferGenericCreate)
;;     23032EA4 (in xStreamBufferGenericCreateStatic)
prvInitialiseNewStreamBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a1
	c.swsp	s0,0000000C
	addi	a1,zero,+00000055
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s4,a2
	c.mv	s3,a3
	c.mv	s2,a4
	jal	ra,000000002306D1BC
	beq	s1,a0,0000000023032C5C

l23032C58:
	jal	ra,000000002300149E

l23032C5C:
	c.mv	a0,s0
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.sw	s0,24(s1)
	sw	s4,s0,+00000008
	sw	s3,s0,+0000000C
	sb	s2,s0,+0000001C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; prvWriteBytesToBuffer: 23032C86
;;   Called from:
;;     23033028 (in xStreamBufferSend)
;;     2303308E (in xStreamBufferSend)
;;     2303310E (in xStreamBufferSendFromISR)
;;     2303314E (in xStreamBufferSendFromISR)
prvWriteBytesToBuffer proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s2,a2
	c.mv	s1,a0
	c.mv	s4,a1
	c.beqz	a2,0000000023032D06

l23032C9C:
	c.lw	a0,4(s0)
	c.lw	a0,8(a5)
	sub	s3,a5,s0
	bltu	a2,s3,0000000023032CF2

l23032CA8:
	add	a4,s0,s3
	bltu	a5,a4,0000000023032D00

l23032CB0:
	c.lw	s1,24(a0)
	c.mv	a2,s3
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,000000002306CF80
	bgeu	s3,s2,0000000023032CD4

l23032CC0:
	c.lw	s1,8(a5)
	sub	a2,s2,s3
	bltu	a5,a2,0000000023032D28

l23032CCA:
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,000000002306CF80

l23032CD4:
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,0000000023032CDE

l23032CDC:
	c.sub	s0,a5

l23032CDE:
	c.sw	s1,4(s0)
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23032CF2:
	c.mv	s3,a2
	add	a4,s0,s3
	bgeu	a5,a4,0000000023032CB0

l23032CFC:
	c.j	0000000023032D00

l23032CFE:
	c.li	s3,00000000

l23032D00:
	jal	ra,000000002300149E
	c.j	0000000023032CB0

l23032D06:
	jal	ra,000000002300149E
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	bltu	a5,s0,0000000023032CFE

l23032D12:
	c.lw	s1,24(a0)
	c.li	a2,00000000
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,000000002306CF80
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,0000000023032CDE

l23032D26:
	c.j	0000000023032CDC

l23032D28:
	c.swsp	a2,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000084
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,000000002306CF80
	c.j	0000000023032CD4

;; prvReadBytesFromBuffer: 23032D3C
;;   Called from:
;;     230331E2 (in xStreamBufferReceive)
;;     23033220 (in xStreamBufferReceive)
;;     230332C4 (in xStreamBufferReceiveFromISR)
;;     230332FC (in xStreamBufferReceiveFromISR)
prvReadBytesFromBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a3
	bltu	a3,a2,0000000023032D54

l23032D52:
	c.mv	s0,a2

l23032D54:
	c.beqz	s0,0000000023032DA8

l23032D56:
	lw	s3,a0,+00000000
	c.lw	a0,8(a5)
	sub	s4,a5,s3
	bltu	s0,s4,0000000023032DBC

l23032D64:
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bltu	a2,s4,0000000023032DC8

l23032D6E:
	add	a4,s3,s4
	bltu	a5,a4,0000000023032DD6

l23032D76:
	c.lw	s1,24(a1)
	c.mv	a2,s4
	c.mv	a0,s5
	c.add	a1,s3
	jal	ra,000000002306CF80
	bgeu	s4,s0,0000000023032D98

l23032D86:
	bltu	s2,s0,0000000023032DDC

l23032D8A:
	c.lw	s1,24(a1)
	sub	a2,s0,s4
	add	a0,s5,s4
	jal	ra,000000002306CF80

l23032D98:
	c.lw	s1,8(a5)
	c.add	s3,s0
	bltu	s3,a5,0000000023032DA4

l23032DA0:
	sub	s3,s3,a5

l23032DA4:
	sw	s3,s1,+00000000

l23032DA8:
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

l23032DBC:
	c.mv	s4,s0
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bgeu	a2,s4,0000000023032D6E

l23032DC8:
	jal	ra,000000002300149E
	c.lw	s1,8(a5)
	add	a4,s3,s4
	bgeu	a5,a4,0000000023032D76

l23032DD6:
	jal	ra,000000002300149E
	c.j	0000000023032D76

l23032DDC:
	jal	ra,000000002300149E
	c.j	0000000023032D8A

;; xStreamBufferGenericCreate: 23032DE2
;;   Called from:
;;     23044CE8 (in vfs_uart_open)
;;     23044CF4 (in vfs_uart_open)
xStreamBufferGenericCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s1,a1
	beq	a2,a5,0000000023032E46

l23032DF8:
	c.li	s3,00000000
	c.beqz	a0,0000000023032E3A

l23032DFC:
	bltu	s0,s1,0000000023032E32

l23032E00:
	c.beqz	s1,0000000023032E2E

l23032E02:
	addi	a0,s0,+00000025
	jal	ra,000000002303598A
	c.mv	s2,a0
	c.beqz	a0,0000000023032E1E

l23032E0E:
	c.mv	a4,s3
	c.mv	a3,s1
	addi	a2,s0,+00000001
	addi	a1,a0,+00000024
	jal	ra,0000000023032C32

l23032E1E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23032E2E:
	c.li	s1,00000001
	c.j	0000000023032E02

l23032E32:
	jal	ra,000000002300149E
	c.bnez	s1,0000000023032E02

l23032E38:
	c.j	0000000023032E2E

l23032E3A:
	jal	ra,000000002300149E
	c.mv	s3,s0
	bgeu	s0,s1,0000000023032E00

l23032E44:
	c.j	0000000023032E32

l23032E46:
	c.li	a5,00000004
	c.li	s3,00000001
	bltu	a5,a0,0000000023032DFC

l23032E4E:
	jal	ra,000000002300149E
	bgeu	s0,s1,0000000023032E00

l23032E56:
	c.j	0000000023032E32

;; xStreamBufferGenericCreateStatic: 23032E58
;;   Called from:
;;     2300515C (in wifi_mgmr_init)
xStreamBufferGenericCreateStatic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s3,a3
	c.mv	s4,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.mv	s0,a4
	c.beqz	a3,0000000023032F04

l23032E72:
	c.beqz	s0,0000000023032EFA

l23032E74:
	bltu	s4,s2,0000000023032EF0

l23032E78:
	beq	s2,zero,0000000023032EC6

l23032E7C:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.addi	s1,00000002
	bgeu	a5,s4,0000000023032ED4

l23032E88:
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023032EE4

l23032E94:
	beq	s3,zero,0000000023032EEC

l23032E98:
	c.beqz	s0,0000000023032EB4

l23032E9A:
	c.mv	a4,s1
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023032C32
	lbu	a5,s0,+0000001C
	ori	a5,a5,+00000002
	sb	a5,s0,+0000001C

l23032EB4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23032EC6:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.li	s2,00000001
	c.addi	s1,00000002
	bltu	a5,s4,0000000023032E88

l23032ED4:
	jal	ra,000000002300149E
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,0000000023032E94

l23032EE4:
	jal	ra,000000002300149E
	bne	s3,zero,0000000023032E98

l23032EEC:
	c.li	s0,00000000
	c.j	0000000023032EB4

l23032EF0:
	jal	ra,000000002300149E
	bne	s2,zero,0000000023032E7C

l23032EF8:
	c.j	0000000023032EC6

l23032EFA:
	jal	ra,000000002300149E
	bgeu	s4,s2,0000000023032E78

l23032F02:
	c.j	0000000023032EF0

l23032F04:
	jal	ra,000000002300149E
	c.bnez	s0,0000000023032E74

l23032F0A:
	c.j	0000000023032EFA

;; vStreamBufferDelete: 23032F0C
;;   Called from:
;;     23044DEC (in vfs_uart_close)
;;     23044DF2 (in vfs_uart_close)
vStreamBufferDelete proc
	c.beqz	a0,0000000023032F24

l23032F0E:
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,0000000023032F1A

l23032F16:
	jal	zero,0000000023035A72

l23032F1A:
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	zero,000000002306D1BC

l23032F24:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,0000000023032F40

l23032F38:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023035A72

l23032F40:
	c.lwsp	t3,00000020
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002306D1BC

;; xStreamBufferSpacesAvailable: 23032F4E
;;   Called from:
;;     23033000 (in xStreamBufferSend)
;;     23033066 (in xStreamBufferSend)
;;     230330DE (in xStreamBufferSendFromISR)
xStreamBufferSpacesAvailable proc
	c.beqz	a0,0000000023032F68

l23032F50:
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,0000000023032F66

l23032F62:
	c.sub	a0,a4
	c.jr	ra

l23032F66:
	c.jr	ra

l23032F68:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,0000000023032F88

l23032F86:
	c.sub	a0,a4

l23032F88:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; xStreamBufferSend: 23032F8E
;;   Called from:
;;     23004F5E (in wifi_mgmr_event_notify)
;;     23044EA4 (in vfs_uart_write)
xStreamBufferSend proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	a3,00000084
	c.mv	s4,a1
	c.mv	s0,a0
	c.mv	s3,a2
	beq	a1,zero,0000000023033096

l23032FA8:
	beq	s0,zero,000000002303309E

l23032FAC:
	lbu	a5,s0,+0000001C
	c.mv	s2,s3
	c.andi	a5,00000001
	c.beqz	a5,0000000023032FBE

l23032FB6:
	addi	s2,s3,+00000004
	bgeu	s3,s2,00000000230330A4

l23032FBE:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023033064

l23032FC2:
	c.addi4spn	a0,00000018
	jal	ra,0000000023034116
	c.j	0000000023032FFA

l23032FCA:
	jal	ra,0000000023034D96
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023032FD6

l23032FD2:
	jal	ra,000000002300149E

l23032FD6:
	jal	ra,00000000230344BE
	c.sw	s0,20(a0)
	jal	ra,00000000230347B8
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,00000000230349AC
	c.addi4spn	a1,0000000C
	sw	zero,s0,+00000014
	c.addi4spn	a0,00000018
	jal	ra,000000002303418C
	c.bnez	a0,0000000023033010

l23032FFA:
	jal	ra,00000000230347A4
	c.mv	a0,s0
	jal	ra,0000000023032F4E
	c.mv	s1,a0
	c.li	a0,00000000
	bltu	s1,s2,0000000023032FCA

l2303300C:
	jal	ra,00000000230347B8

l23033010:
	c.beqz	s1,0000000023033064

l23033012:
	c.swsp	s3,00000088

l23033014:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,0000000023033084

l2303301C:
	c.mv	a2,s3
	bltu	s1,s3,00000000230330B0

l23033022:
	c.swsp	a2,00000088

l23033024:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023032C86
	c.mv	s1,a0
	c.beqz	a0,0000000023033072

l23033030:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,0000000023033040

l2303303E:
	c.sub	a5,a4

l23033040:
	c.lw	s0,12(a4)
	bltu	a5,a4,0000000023033072

l23033046:
	jal	ra,0000000023033AE0
	c.lw	s0,16(a5)
	c.beqz	a5,000000002303305E

l2303304E:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023034A8C
	sw	zero,s0,+00000010

l2303305E:
	jal	ra,0000000023033CBC
	c.j	0000000023033072

l23033064:
	c.mv	a0,s0
	jal	ra,0000000023032F4E
	c.swsp	s3,00000088
	c.mv	s1,a0
	c.bnez	a0,0000000023033014

l23033070:
	c.li	s1,00000000

l23033072:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23033084:
	bltu	s1,s2,0000000023033070

l23033088:
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	jal	ra,0000000023032C86
	c.lwsp	s4,00000084
	c.j	0000000023033024

l23033096:
	jal	ra,000000002300149E
	bne	s0,zero,0000000023032FAC

l2303309E:
	jal	ra,000000002300149E
	c.j	0000000023032FAC

l230330A4:
	jal	ra,000000002300149E
	c.lwsp	a2,000000E4
	bne	a5,zero,0000000023032FC2

l230330AE:
	c.j	0000000023033064

l230330B0:
	c.mv	a2,s1
	c.j	0000000023033022

;; xStreamBufferSendFromISR: 230330B4
;;   Called from:
;;     23044D50 (in __uart_rx_irq)
xStreamBufferSendFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.mv	s2,a1
	c.mv	s0,a0
	c.mv	s1,a2
	c.mv	s3,a3
	c.beqz	a1,0000000023033156

l230330CC:
	c.beqz	s0,000000002303315C

l230330CE:
	lbu	a5,s0,+0000001C
	c.mv	s4,s1
	c.andi	a5,00000001
	c.beqz	a5,00000000230330DC

l230330D8:
	addi	s4,s1,+00000004

l230330DC:
	c.mv	a0,s0
	jal	ra,0000000023032F4E
	c.swsp	s1,00000084
	c.bnez	a0,00000000230330FA

l230330E6:
	c.li	s1,00000000

l230330E8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230330FA:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,0000000023033144

l23033102:
	c.mv	a2,s1
	bltu	a0,s1,0000000023033162

l23033108:
	c.swsp	a2,00000084

l2303310A:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023032C86
	c.mv	s1,a0
	c.beqz	a0,00000000230330E8

l23033116:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,0000000023033126

l23033124:
	c.sub	a5,a4

l23033126:
	c.lw	s0,12(a4)
	bltu	a5,a4,00000000230330E8

l2303312C:
	c.lw	s0,16(a5)
	c.beqz	a5,00000000230330E8

l23033130:
	c.lw	s0,16(a0)
	c.mv	a4,s3
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023034BBA
	sw	zero,s0,+00000010
	c.j	00000000230330E8

l23033144:
	bltu	a0,s4,00000000230330E6

l23033148:
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023032C86
	c.lwsp	a2,00000084
	c.j	000000002303310A

l23033156:
	jal	ra,000000002300149E
	c.bnez	s0,00000000230330CE

l2303315C:
	jal	ra,000000002300149E
	c.j	00000000230330CE

l23033162:
	c.mv	a2,a0
	c.j	0000000023033108

;; xStreamBufferReceive: 23033166
;;   Called from:
;;     23005092 (in wifi_mgmr_start)
;;     23044E64 (in vfs_uart_read)
;;     23044FD6 (in uart_ioctl_cmd_waimode)
xStreamBufferReceive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a1
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s5,a3
	c.beqz	a1,0000000023033208

l23033180:
	c.beqz	s1,000000002303320E

l23033182:
	lbu	s2,s1,+0000001C
	andi	s2,s2,+00000001
	c.slli	s2,02
	bne	s5,zero,00000000230331BA

l23033190:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,00000000230331A0

l2303319E:
	c.sub	s0,a5

l230331A0:
	bltu	s2,s0,00000000230331D6

l230331A4:
	c.li	s0,00000000

l230331A6:
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

l230331BA:
	jal	ra,00000000230347A4
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,00000000230331CE

l230331CC:
	c.sub	s0,a5

l230331CE:
	bgeu	s2,s0,0000000023033236

l230331D2:
	jal	ra,00000000230347B8

l230331D6:
	bne	s2,zero,0000000023033214

l230331DA:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023032D3C
	c.mv	s0,a0
	c.beqz	a0,00000000230331A4

l230331EA:
	jal	ra,0000000023033AE0
	c.lw	s1,20(a5)
	c.beqz	a5,0000000023033202

l230331F2:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023034A8C
	sw	zero,s1,+00000014

l23033202:
	jal	ra,0000000023033CBC
	c.j	00000000230331A6

l23033208:
	jal	ra,000000002300149E
	c.bnez	s1,0000000023033182

l2303320E:
	jal	ra,000000002300149E
	c.j	0000000023033182

l23033214:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s5,s1,+00000000
	jal	ra,0000000023032D3C
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,0000000023033260

l2303322E:
	sw	s5,s1,+00000000
	c.li	s4,00000000
	c.j	00000000230331DA

l23033236:
	c.li	a0,00000000
	jal	ra,0000000023034D96
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023033244

l23033240:
	jal	ra,000000002300149E

l23033244:
	jal	ra,00000000230344BE
	c.sw	s1,16(a0)
	jal	ra,00000000230347B8
	c.mv	a3,s5
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,00000000230349AC
	sw	zero,s1,+00000010
	c.j	0000000023033190

l23033260:
	c.mv	s4,a5
	c.j	00000000230331DA

;; xStreamBufferReceiveFromISR: 23033264
;;   Called from:
;;     23044D92 (in __uart_tx_irq)
xStreamBufferReceiveFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s6,00000008
	c.mv	s3,a1
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s5,a3
	c.beqz	a1,00000000230332E4

l23033280:
	c.beqz	s1,00000000230332EA

l23033282:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	lbu	s2,s1,+0000001C
	c.lw	s1,0(a4)
	c.add	s0,a5
	andi	s2,s2,+00000001
	c.sub	s0,a4
	c.slli	s2,02
	bltu	s0,a5,000000002303329C

l2303329A:
	c.sub	s0,a5

l2303329C:
	bltu	s2,s0,00000000230332B8

l230332A0:
	c.li	s0,00000000

l230332A2:
	c.mv	a0,s0
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

l230332B8:
	bne	s2,zero,00000000230332F0

l230332BC:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023032D3C
	c.mv	s0,a0
	c.beqz	a0,00000000230332A0

l230332CC:
	c.lw	s1,20(a5)
	c.beqz	a5,00000000230332A2

l230332D0:
	c.lw	s1,20(a0)
	c.mv	a4,s5
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023034BBA
	sw	zero,s1,+00000014
	c.j	00000000230332A2

l230332E4:
	jal	ra,000000002300149E
	c.bnez	s1,0000000023033282

l230332EA:
	jal	ra,000000002300149E
	c.j	0000000023033282

l230332F0:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s6,s1,+00000000
	jal	ra,0000000023032D3C
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,0000000023033312

l2303330A:
	sw	s6,s1,+00000000
	c.li	s4,00000000
	c.j	00000000230332BC

l23033312:
	c.mv	s4,a5
	c.j	00000000230332BC

;; xStreamBufferIsEmpty: 23033316
;;   Called from:
;;     23044F2C (in vfs_uart_poll)
xStreamBufferIsEmpty proc
	c.beqz	a0,0000000023033324

l23033318:
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

l23033324:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.addi16sp	00000020
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; prvResetNextTaskUnblockTime.part.0: 23033340
;;   Called from:
;;     23033900 (in vTaskDelete)
;;     23033BE2 (in xTaskIncrementTick)
;;     23033E0A (in xTaskResumeAll)
prvResetNextTaskUnblockTime.part.0 proc
	lui	a5,0004200E
	lw	a4,a5,+000001FC
	lui	a5,0004200E
	c.lw	a4,12(a4)
	c.lw	a4,12(a4)
	c.lw	a4,4(a4)
	sw	a4,a5,+0000021C
	c.jr	ra

;; prvInitialiseNewTask.isra.2: 23033358
;;   Called from:
;;     2303377E (in xTaskCreateStatic)
;;     2303383C (in xTaskCreate)
prvInitialiseNewTask.isra.2 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.mv	s5,a0
	lw	a0,a6,+00000030
	c.swsp	s7,00000084
	slli	s7,a2,00000002
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	a2,s7
	c.mv	s1,a6
	c.mv	s0,a1
	addi	a1,zero,+000000A5
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.mv	s6,a3
	c.mv	s2,a4
	c.mv	s4,a5
	jal	ra,000000002306D1BC
	lw	s3,s1,+00000030
	c.addi	s7,FFFFFFFC
	c.add	s3,s7
	andi	s3,s3,-00000008
	c.beqz	s0,0000000023033420

l23033398:
	c.mv	a1,s0
	addi	a5,s1,+00000034
	addi	a4,s0,+00000010

l230333A2:
	lbu	a3,a1,+00000000
	c.addi	a5,00000001
	c.addi	a1,00000001
	sb	a3,a5,+00000FFF
	c.beqz	a3,00000000230333B4

l230333B0:
	bne	a1,a4,00000000230333A2

l230333B4:
	sb	zero,s1,+00000043

l230333B8:
	c.li	a5,0000001F
	bgeu	a5,s2,00000000230333C0

l230333BE:
	c.li	s2,0000001F

l230333C0:
	addi	a0,s1,+00000004
	sw	s2,s1,+0000002C
	sw	s2,s1,+00000050
	sw	zero,s1,+00000054
	jal	ra,0000000023032168
	addi	a0,s1,+00000018
	jal	ra,0000000023032168
	addi	a4,zero,+00000020
	sub	s0,a4,s2
	sw	zero,s1,+00000058
	c.sw	s1,16(s1)
	c.sw	s1,24(s0)
	c.sw	s1,36(s1)
	sw	zero,s1,+00000044
	sb	zero,s1,+0000005C
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,0000000023035800
	c.sw	s1,0(a0)
	beq	s4,zero,000000002303340A

l23033406:
	sw	s1,s4,+00000000

l2303340A:
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

l23033420:
	sb	zero,s1,+00000034
	c.j	00000000230333B8

;; prvDeleteTCB: 23033426
;;   Called from:
;;     23033736 (in prvIdleTask)
;;     230338F0 (in vTaskDelete)
prvDeleteTCB proc
	lbu	a4,a0,+0000005D
	c.beqz	a4,000000002303343E

l2303342C:
	c.li	a5,00000001
	beq	a4,a5,0000000023033458

l23033432:
	c.li	a5,00000002
	bne	a4,a5,000000002303343A

l23033438:
	c.jr	ra

l2303343A:
	jal	zero,000000002300149E

l2303343E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,48(a0)
	jal	ra,0000000023035A72
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023035A72

l23033458:
	jal	zero,0000000023035A72

;; prvAddCurrentTaskToDelayedList: 2303345C
;;   Called from:
;;     23033E32 (in vTaskDelay)
;;     23033F3E (in vTaskPlaceOnEventList)
;;     23033F8A (in vTaskPlaceOnUnorderedEventList)
;;     23033FCE (in vTaskPlaceOnEventListRestricted)
;;     230349A2 (in ulTaskNotifyTake)
;;     23034A82 (in xTaskNotifyWait)
prvAddCurrentTaskToDelayedList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	lui	a5,0004200E
	addi	s0,s0,+000001F8
	c.swsp	s2,00000008
	lw	s2,a5,+00000228
	c.lw	s0,0(a5)
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,a5,+00000004
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	jal	ra,00000000230321B4
	c.bnez	a0,00000000230334A4

l23033488:
	c.lw	s0,0(a5)
	lui	a4,0004200E
	addi	a4,a4,+00000218
	c.lw	a5,44(a2)
	c.lw	a4,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a2
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a4,0(a5)

l230334A4:
	c.li	a5,FFFFFFFF
	beq	s1,a5,00000000230334FE

l230334AA:
	c.lw	s0,0(a5)
	c.add	s1,s2
	c.sw	a5,4(s1)
	bltu	s1,s2,00000000230334E2

l230334B4:
	lui	a5,0004200E
	lw	a0,a5,+000001FC
	c.lw	s0,0(a1)
	c.addi	a1,00000004
	jal	ra,0000000023032184
	lui	a5,0004200E
	addi	a5,a5,+0000021C
	c.lw	a5,0(a4)
	bgeu	s1,a4,00000000230334D4

l230334D2:
	c.sw	a5,0(s1)

l230334D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230334E2:
	lui	a5,0004200E
	lw	a0,a5,+00000200
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,0000000023032184

l230334FE:
	beq	s3,zero,00000000230334AA

l23033502:
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00042013
	addi	a0,a0,-0000013C
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,000000002303216E

;; vTaskEnterCritical.part.7: 2303351E
;;   Called from:
;;     23033570 (in prvAddNewTaskToReadyList)
;;     23033700 (in prvIdleTask)
;;     2303388A (in vTaskDelete)
;;     230339D0 (in eTaskGetState)
;;     23033CF0 (in xTaskResumeAll)
;;     23034132 (in vTaskSetTimeOutState)
;;     2303421E (in xTaskCheckForTimeOut)
;;     230347B2 (in vTaskEnterCritical)
;;     23034926 (in ulTaskNotifyTake)
;;     23034956 (in ulTaskNotifyTake)
;;     230349D6 (in xTaskNotifyWait)
;;     23034A1C (in xTaskNotifyWait)
;;     23034B24 (in xTaskGenericNotify)
;;     23034DB2 (in xTaskNotifyStateClear)
vTaskEnterCritical.part.7 proc
	lui	a5,0004200E
	addi	a5,a5,+000001F8
	c.lw	a5,0(a4)
	c.lw	a5,0(a5)
	c.lw	a4,68(a5)
	c.addi	a5,00000001
	c.sw	a4,68(a5)
	c.jr	ra

;; vTaskExitCritical.part.8: 23033532
;;   Called from:
;;     23033618 (in prvAddNewTaskToReadyList)
;;     23033730 (in prvIdleTask)
;;     23033910 (in vTaskDelete)
;;     23033A30 (in eTaskGetState)
;;     23033DDE (in xTaskResumeAll)
;;     23034162 (in vTaskSetTimeOutState)
;;     2303420C (in xTaskCheckForTimeOut)
;;     230347CE (in vTaskExitCritical)
;;     2303497C (in ulTaskNotifyTake)
;;     23034998 (in ulTaskNotifyTake)
;;     23034A60 (in xTaskNotifyWait)
;;     23034A78 (in xTaskNotifyWait)
;;     23034B0E (in xTaskGenericNotify)
;;     23034DDA (in xTaskNotifyStateClear)
vTaskExitCritical.part.8 proc
	lui	a5,0004200E
	addi	a5,a5,+000001F8
	c.lw	a5,0(a4)
	c.lw	a5,0(a3)
	c.lw	a4,68(a5)
	c.addi	a5,FFFFFFFF
	c.sw	a4,68(a5)
	c.lw	a3,68(a5)
	c.bnez	a5,000000002303354C

l23033548:
	csrrsi	zero,mstatus,00000008

l2303354C:
	c.jr	ra

;; prvAddNewTaskToReadyList: 2303354E
;;   Called from:
;;     23033784 (in xTaskCreateStatic)
;;     23033842 (in xTaskCreate)
prvAddNewTaskToReadyList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s2,a0
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023033574

l23033570:
	jal	ra,000000002303351E

l23033574:
	lui	a5,0004200E
	addi	a5,a5,+00000204
	c.lw	a5,0(a4)
	lui	s1,0004200E
	addi	s1,s1,+000001F8
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s1,0(a4)
	c.beqz	a4,000000002303361E

l2303358E:
	c.lw	s0,0(a5)
	lw	a1,s2,+0000002C
	c.beqz	a5,000000002303360A

l23033596:
	lui	s3,00042013
	addi	s3,s3,-000003F8

l2303359E:
	lui	a3,0004200E
	addi	a3,a3,+00000214
	lui	a4,0004200E
	c.lw	a3,0(a2)
	addi	a4,a4,+00000218
	lw	a6,a4,+00000000
	slli	a0,a1,00000002
	c.add	a0,a1
	c.li	a5,00000001
	c.addi	a2,00000001
	sll	a5,a5,a1
	c.slli	a0,02
	or	a5,a5,a6
	sw	a2,s2,+00000048
	addi	a1,s2,+00000004
	c.add	a0,s3
	c.sw	a4,0(a5)
	c.sw	a3,0(a2)
	jal	ra,000000002303216E
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230335E4

l230335DE:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,0000000023033618

l230335E4:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230335F8

l230335E8:
	c.lw	s1,0(a4)
	lw	a5,s2,+0000002C
	c.lw	a4,44(a4)
	bgeu	a4,a5,00000000230335F8

l230335F4:
	ecall

l230335F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303360A:
	c.lw	s1,0(a5)
	c.lw	a5,44(a5)
	bltu	a1,a5,0000000023033596

l23033612:
	sw	s2,s1,+00000000
	c.j	0000000023033596

l23033618:
	jal	ra,0000000023033532
	c.j	00000000230335E4

l2303361E:
	sw	s2,s1,+00000000
	c.lw	a5,0(a4)
	c.li	a5,00000001
	beq	a4,a5,0000000023033638

l2303362A:
	lui	s3,00042013
	lw	a1,s2,+0000002C
	addi	s3,s3,-000003F8
	c.j	000000002303359E

l23033638:
	lui	s4,00042013
	addi	s3,s4,-000003F8
	addi	s5,s3,+00000280
	addi	s4,s4,-000003F8

l23033648:
	c.mv	a0,s4
	c.addi	s4,00000014
	jal	ra,0000000023032154
	bne	s5,s4,0000000023033648

l23033654:
	lui	a5,00042013
	addi	a0,a5,-00000178
	addi	s5,a5,-00000178
	jal	ra,0000000023032154
	lui	a5,00042013
	addi	a0,a5,-00000164
	addi	s4,a5,-00000164
	jal	ra,0000000023032154
	lui	a0,00042013
	addi	a0,a0,-00000150
	jal	ra,0000000023032154
	lui	a0,00042013
	addi	a0,a0,-00000128
	jal	ra,0000000023032154
	lui	a0,00042013
	addi	a0,a0,-0000013C
	jal	ra,0000000023032154
	lui	a4,0004200E
	lui	a5,0004200E
	sw	s5,a4,+000001FC
	sw	s4,a5,+00000200
	lw	a1,s2,+0000002C
	c.j	000000002303359E

;; prvIdleTask: 230336AE
prvIdleTask proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s0,0004200E
	lui	s3,0004200E
	lui	s6,00042013
	lui	s2,0004200E
	lui	s5,0004200E
	lui	s4,00042013
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	addi	s0,s0,+00000208
	addi	s3,s3,+00000224
	addi	s6,s6,-00000128
	addi	s2,s2,+00000204
	addi	s5,s5,+000001F8
	addi	s4,s4,-000003F8
	c.li	s7,00000001
	c.j	000000002303373A

l230336F6:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023033704

l23033700:
	jal	ra,000000002303351E

l23033704:
	lw	a5,s6,+0000000C
	c.lw	a5,12(s1)
	addi	a0,s1,+00000004
	jal	ra,00000000230321B4
	lw	a5,s2,+00000000
	c.addi	a5,FFFFFFFF
	sw	a5,s2,+00000000
	c.lw	s0,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,0(a5)
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023033734

l23033728:
	lw	a5,s5,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023033734

l23033730:
	jal	ra,0000000023033532

l23033734:
	c.mv	a0,s1
	jal	ra,0000000023033426

l2303373A:
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230336F6

l2303373E:
	lw	a5,s4,+00000000
	bgeu	s7,a5,000000002303374A

l23033746:
	ecall

l2303374A:
	jal	ra,0000000023001460
	c.j	000000002303373A

;; xTaskCreateStatic: 23033750
;;   Called from:
;;     23001692 (in bfl_main)
;;     2300268C (in aos_task_new)
;;     2302DAAE (in bl_ble_sync_start)
;;     23033A98 (in vTaskStartScheduler)
;;     23034F0A (in xTimerCreateTimerTask)
;;     23039F9C (in hal_wifi_start_firmware_task)
;;     2303A08E (in looprt_start)
xTaskCreateStatic proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.mv	s1,a5
	c.mv	s0,a6
	c.beqz	a5,00000000230337B2

l2303375E:
	c.beqz	s0,00000000230337CC

l23033760:
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,00000118
	bne	a6,a5,0000000023033796

l2303376C:
	c.lwsp	s0,000001F4

l2303376E:
	c.li	a5,00000000
	c.beqz	s1,000000002303378A

l23033772:
	c.li	a7,00000002
	c.addi4spn	a5,0000002C
	c.mv	a6,s0
	sb	a7,s0,+0000005D
	c.sw	s0,48(s1)
	jal	ra,0000000023033358
	c.mv	a0,s0
	jal	ra,000000002303354E
	c.lwsp	a2,000001F4

l2303378A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l23033796:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	s0,000001F4
	c.lwsp	a2,00000044
	c.lwsp	a6,00000064
	c.lwsp	s4,00000084
	c.lwsp	s8,000000A4
	c.lwsp	t3,000000C4
	c.j	000000002303376E

l230337B2:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	t3,000000C4
	c.lwsp	s8,000000A4
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.lwsp	a2,00000044
	c.bnez	s0,0000000023033760

l230337CC:
	jal	ra,000000002300149E
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,000001D4
	beq	a4,a5,00000000230337E0

l230337DC:
	jal	ra,000000002300149E

l230337E0:
	c.lwsp	s0,000001F4
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.li	a5,00000000
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

;; xTaskCreate: 230337F0
;;   Called from:
;;     23005132 (in wifi_mgmr_start_background)
;;     2300B0A0 (in ble_controller_init)
;;     2302524E (in k_thread_create)
;;     23042E70 (in sys_thread_new)
xTaskCreate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	slli	a0,a2,00000002
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a2
	c.mv	s4,a1
	c.mv	s5,a3
	c.mv	s6,a4
	c.mv	s7,a5
	jal	ra,000000002303598A
	c.beqz	a0,000000002303385E

l2303381A:
	c.mv	s1,a0
	addi	a0,zero,+00000060
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,0000000023033862

l23033828:
	c.mv	a6,a0
	c.mv	a5,s7
	c.mv	a4,s6
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a1,s4
	c.sw	a0,48(s1)
	sb	zero,a0,+0000005D
	c.mv	a0,s3
	jal	ra,0000000023033358
	c.mv	a0,s0
	jal	ra,000000002303354E
	c.li	a0,00000001

l23033848:
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

l2303385E:
	c.li	a0,FFFFFFFF
	c.j	0000000023033848

l23033862:
	c.mv	a0,s1
	jal	ra,0000000023035A72
	c.li	a0,FFFFFFFF
	c.j	0000000023033848

;; vTaskDelete: 2303386C
;;   Called from:
;;     23001420 (in aos_loop_proc)
;;     23002600 (in dfl_entry)
;;     230026C0 (in aos_task_exit)
;;     2300B0CE (in ble_controller_deinit)
;;     23025280 (in k_thread_delete)
;;     2302D04A (in __bl_ble_sync_task)
;;     2302DB0C (in bl_ble_sync_stop)
vTaskDelete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	lui	s1,0004200E
	addi	s1,s1,+00000224
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303388E

l2303388A:
	jal	ra,000000002303351E

l2303388E:
	lui	s2,0004200E
	addi	s2,s2,+000001F8
	c.beqz	s0,0000000023033972

l23033898:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,00000000230321B4
	c.bnez	a0,00000000230338BE

l230338A4:
	c.lw	s0,44(a3)
	slli	a5,a3,00000002
	c.add	a5,a3
	slli	a4,a5,00000002
	lui	a5,00042013
	addi	a5,a5,-000003F8
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303393A

l230338BE:
	c.lw	s0,40(a5)
	c.beqz	a5,00000000230338CA

l230338C2:
	addi	a0,s0,+00000018
	jal	ra,00000000230321B4

l230338CA:
	lui	a5,0004200E
	addi	a5,a5,+00000214
	c.lw	a5,0(a4)
	lw	a3,s2,+00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	beq	a3,s0,0000000023033954

l230338E0:
	lui	a5,0004200E
	addi	a5,a5,+00000204
	c.lw	a5,0(a4)
	c.mv	a0,s0
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	jal	ra,0000000023033426
	lui	a5,0004200E
	lw	a5,a5,+000001FC
	c.lw	a5,0(a5)
	c.beqz	a5,000000002303392E

l23033900:
	jal	ra,0000000023033340

l23033904:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023033914

l23033908:
	lw	a5,s2,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023033914

l23033910:
	jal	ra,0000000023033532

l23033914:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023033920

l23033918:
	lw	a5,s2,+00000000
	beq	a5,s0,0000000023033978

l23033920:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303392E:
	lui	a5,0004200E
	c.li	a4,FFFFFFFF
	sw	a4,a5,+0000021C
	c.j	0000000023033904

l2303393A:
	lui	a4,0004200E
	addi	a4,a4,+00000218
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	00000000230338BE

l23033954:
	lui	a0,00042013
	c.mv	a1,s3
	addi	a0,a0,-00000128
	jal	ra,000000002303216E
	lui	a5,0004200E
	addi	a5,a5,+00000208
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.j	0000000023033904

l23033972:
	lw	s0,s2,+00000000
	c.j	0000000023033898

l23033978:
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.bnez	a5,0000000023033994

l23033982:
	ecall

l23033986:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23033994:
	jal	ra,000000002300149E
	ecall
	c.j	0000000023033986

;; eTaskGetState: 2303399E
;;   Called from:
;;     230342E4 (in vTaskGetInfo)
eTaskGetState proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.beqz	a0,0000000023033A4A

l230339B0:
	lui	s1,0004200E
	addi	s1,s1,+000001F8
	c.lw	s1,0(a4)
	c.li	a0,00000000
	beq	a4,s2,0000000023033A1A

l230339C0:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230339D4

l230339D0:
	jal	ra,000000002303351E

l230339D4:
	lui	a5,0004200E
	lui	a4,0004200E
	lw	s3,a4,+000001FC
	lw	s4,a5,+00000200
	c.lw	s0,0(a5)
	lw	s0,s2,+00000014
	c.bnez	a5,0000000023033A2A

l230339EC:
	beq	s0,s3,0000000023033A38

l230339F0:
	beq	s0,s4,0000000023033A38

l230339F4:
	lui	a5,00042013
	addi	a5,a5,-0000013C
	beq	s0,a5,0000000023033A50

l23033A00:
	lui	a5,00042013
	addi	a5,a5,-00000128
	beq	s0,a5,0000000023033A68

l23033A0C:
	sltiu	a5,s0,+00000001
	sub	a5,zero,a5
	andi	a0,a5,+00000003
	c.addi	a0,00000001

l23033A1A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23033A2A:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230339EC

l23033A30:
	jal	ra,0000000023033532
	bne	s0,s3,00000000230339F0

l23033A38:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000002
	c.addi16sp	00000020
	c.jr	ra

l23033A4A:
	jal	ra,000000002300149E
	c.j	00000000230339B0

l23033A50:
	lw	a4,s2,+00000028
	c.li	a0,00000002
	c.bnez	a4,0000000023033A1A

l23033A58:
	lbu	a5,s2,+0000005C
	c.addi	a5,FFFFFFFF
	sltu	a5,zero,a5
	addi	a0,a5,+00000002
	c.j	0000000023033A1A

l23033A68:
	c.li	a0,00000004
	c.j	0000000023033A1A

;; vTaskStartScheduler: 23033A6C
;;   Called from:
;;     230016B6 (in bfl_main)
vTaskStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	ra,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023001466
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000084
	lui	a1,0002307B
	lui	a0,00023033
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,a1,+0000061C
	addi	a0,a0,+000006AE
	jal	ra,0000000023033750
	c.beqz	a0,0000000023033ACA

l23033A9E:
	jal	ra,0000000023034ED0
	c.li	a5,00000001
	bne	a0,a5,0000000023033AD0

l23033AA8:
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	c.li	a3,FFFFFFFF
	sw	a3,a5,+0000021C
	lui	a4,0004200E
	lui	a5,0004200E
	sw	a0,a4,+00000224
	sw	zero,a5,+00000228
	jal	ra,000000002303539C

l23033ACA:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23033AD0:
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023033ACA

l23033AD6:
	jal	ra,000000002300149E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; vTaskSuspendAll: 23033AE0
;;   Called from:
;;     23031F68 (in xEventGroupWaitBits)
;;     23031FF0 (in xEventGroupWaitBits)
;;     23032066 (in xEventGroupSetBits)
;;     230320FE (in vEventGroupDelete)
;;     23032584 (in xQueueGenericSend)
;;     23032864 (in xQueueReceive)
;;     230329B0 (in xQueueSemaphoreTake)
;;     23033046 (in xStreamBufferSend)
;;     230331EA (in xStreamBufferReceive)
;;     2303518E (in prvTimerTask)
;;     2303528E (in prvTimerTask)
;;     230359A6 (in pvPortMalloc)
;;     23035AD8 (in vPortFree)
vTaskSuspendAll proc
	lui	a5,0004200E
	addi	a5,a5,+00000210
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.jr	ra

;; xTaskGetTickCount: 23033AF0
;;   Called from:
;;     230007FA (in hal_boot2_init)
;;     23000A78 (in bl_flash_config_update)
;;     23000A7E (in bl_flash_config_update)
;;     23000A84 (in bl_flash_config_update)
;;     23000A8A (in bl_flash_config_update)
;;     23000A90 (in bl_flash_config_update)
;;     23000A96 (in bl_flash_config_update)
;;     23000A9C (in bl_flash_config_update)
;;     23001A92 (in log_buf_out)
;;     23001AE2 (in log_buf_out)
;;     23003FBC (in stateConnectedIPNoEnter)
;;     230045A0 (in stateGlobalGuard_scan_beacon)
;;     23004714 (in stateGlobalGuard_scan_beacon)
;;     23004BE4 (in stateDisconnect_enter)
;;     23005058 (in wifi_mgmr_start)
;;     23006BB8 (in sniffer_cb)
;;     23006BCA (in sniffer_cb)
;;     23006F6C (in wifi_mgmr_cli_scanlist)
;;     23007708 (in wifi_mgmr_scan_ap_all)
;;     230091EE (in bl_send_cfg_task_req)
;;     2300A05C (in tcpip_stack_input)
;;     2300A0A2 (in tcpip_stack_input)
;;     2300A64E (in wifi_tx)
;;     2300A67A (in wifi_tx)
;;     2300AE2A (in bl_irq_bottomhalf)
;;     2300AE38 (in bl_irq_bottomhalf)
;;     23025356 (in k_now_ms)
;;     230253D2 (in k_timer_start)
;;     2302D0E6 (in __bl_ble_sync_task)
;;     2302D1E2 (in __recv_event)
;;     2302D706 (in write_data)
;;     2302D70C (in write_data)
;;     2302D81A (in __ble_bytes_send)
;;     2302D820 (in __ble_bytes_send)
;;     2302D918 (in read_data)
;;     2302DA2C (in bl_ble_sync_start)
;;     2302DBA6 (in __malloc)
;;     2302DC0C (in __free)
;;     2302DE24 (in pro_trans_read)
;;     2302DE3A (in pro_trans_read)
;;     2302DEC6 (in pro_trans_read)
;;     230318B8 (in ef_get_env_blob)
;;     2303190A (in ef_get_env_blob)
;;     230319BA (in ef_set_env_blob)
;;     23031A0A (in ef_set_env_blob)
;;     23031A50 (in ef_set_env_blob)
;;     23035192 (in prvTimerTask)
;;     230351DE (in prvTimerTask)
;;     23035292 (in prvTimerTask)
;;     2303638C (in bl_dma_IRQHandler)
;;     23036430 (in bl_dma_irq_register)
;;     23036512 (in bl_dma_irq_register)
;;     2303651C (in bl_dma_irq_register)
;;     23036596 (in bl_dma_init)
;;     230365F0 (in bl_dma_init)
;;     230366A0 (in _irq_num_check.part.0)
;;     230367C2 (in bl_irq_register_with_ctx)
;;     230367C8 (in bl_irq_register_with_ctx)
;;     230368C6 (in bl_irq_unregister)
;;     23036B80 (in wait_trng4feed)
;;     23036C4C (in sec_trng_IRQHandler)
;;     2303704A (in dev_uart_init)
;;     230370FA (in dev_uart_init)
;;     2303710E (in dev_uart_init)
;;     23037168 (in dev_uart_init)
;;     230371C8 (in dev_uart_init)
;;     23037252 (in dev_uart_init)
;;     23037496 (in vfs_uart_init)
;;     230374F8 (in vfs_uart_init)
;;     230375F0 (in vfs_uart_init)
;;     230375F6 (in vfs_uart_init)
;;     230376B0 (in vfs_uart_init)
;;     230376B6 (in vfs_uart_init)
;;     23037712 (in vfs_uart_init)
;;     2303777C (in vfs_uart_init)
;;     230377C6 (in vfs_uart_init)
;;     23037816 (in vfs_uart_init)
;;     230378E4 (in vfs_uart_init)
;;     230378EA (in vfs_uart_init)
;;     23037948 (in vfs_uart_init)
;;     23037A76 (in vfs_uart_init)
;;     23037B12 (in vfs_uart_init)
;;     23037B66 (in vfs_uart_init)
;;     23037B78 (in vfs_uart_init)
;;     23037BEA (in vfs_uart_init)
;;     23037BF0 (in vfs_uart_init)
;;     23037BF6 (in vfs_uart_init)
;;     23037D6C (in hal_gpio_init_from_dts)
;;     23037D72 (in hal_gpio_init_from_dts)
;;     23037EA8 (in hal_gpio_init_from_dts)
;;     23037EAE (in hal_gpio_init_from_dts)
;;     23038006 (in hal_gpio_init_from_dts)
;;     23038050 (in hal_gpio_init_from_dts)
;;     2303809E (in hal_gpio_init_from_dts)
;;     230380A4 (in hal_gpio_init_from_dts)
;;     230380D6 (in hal_gpio_init_from_dts)
;;     2303811E (in hal_gpio_init_from_dts)
;;     2303829A (in hal_board_cfg)
;;     230382A0 (in hal_board_cfg)
;;     23038350 (in hal_board_cfg)
;;     23038356 (in hal_board_cfg)
;;     23038518 (in hal_board_cfg)
;;     2303851E (in hal_board_cfg)
;;     23038524 (in hal_board_cfg)
;;     23038936 (in hal_board_cfg)
;;     230389C4 (in hal_board_cfg)
;;     230389CA (in hal_board_cfg)
;;     230389D0 (in hal_board_cfg)
;;     23038A68 (in hal_board_cfg)
;;     23038A6E (in hal_board_cfg)
;;     23038A74 (in hal_board_cfg)
;;     23038AB8 (in hal_board_cfg)
;;     23038ABE (in hal_board_cfg)
;;     23038B0C (in hal_board_cfg)
;;     23038B12 (in hal_board_cfg)
;;     23038B60 (in hal_board_cfg)
;;     23038B66 (in hal_board_cfg)
;;     23038BB2 (in hal_board_cfg)
;;     2303907E (in hal_board_cfg)
;;     23039084 (in hal_board_cfg)
;;     23039172 (in hal_board_cfg)
;;     230391CA (in hal_board_cfg)
;;     230391D0 (in hal_board_cfg)
;;     230391D6 (in hal_board_cfg)
;;     2303925E (in hal_board_cfg)
;;     2303929A (in hal_board_cfg)
;;     230392DA (in hal_board_cfg)
;;     23039320 (in hal_board_cfg)
;;     23039326 (in hal_board_cfg)
;;     2303932E (in hal_board_cfg)
;;     2303937A (in hal_board_cfg)
;;     23039380 (in hal_board_cfg)
;;     230393D0 (in hal_board_cfg)
;;     230393D6 (in hal_board_cfg)
;;     23039426 (in hal_board_cfg)
;;     2303942C (in hal_board_cfg)
;;     2303947C (in hal_board_cfg)
;;     23039482 (in hal_board_cfg)
;;     23039488 (in hal_board_cfg)
;;     23039700 (in hal_board_cfg)
;;     23039706 (in hal_board_cfg)
;;     230397B8 (in hal_board_cfg)
;;     230397F2 (in hal_board_cfg)
;;     230397F8 (in hal_board_cfg)
;;     230397FE (in hal_board_cfg)
;;     23039876 (in hal_board_cfg)
;;     2303987C (in hal_board_cfg)
;;     23039882 (in hal_board_cfg)
;;     23039BA0 (in hal_board_cfg)
;;     23039BA6 (in hal_board_cfg)
;;     23039BAC (in hal_board_cfg)
;;     23039BB4 (in hal_board_cfg)
;;     23039C3C (in hal_board_cfg)
;;     23039CC4 (in hal_board_cfg)
;;     23039CCA (in hal_board_cfg)
;;     23039D1E (in hal_board_cfg)
;;     23039DA6 (in hal_board_cfg)
;;     23039E2E (in hal_board_cfg)
;;     23039E34 (in hal_board_cfg)
;;     23039E3A (in hal_board_cfg)
;;     23039E40 (in hal_board_cfg)
;;     23039F3A (in bl_tsen_adc_get)
;;     23039F6A (in bl_tsen_adc_get)
;;     2303A158 (in _cb_led_trigger)
;;     2303A1DE (in _led_bloop_msg)
;;     2303A2FE (in _led_bloop_evt)
;;     2303A396 (in loopset_led_trigger)
;;     23042CAE (in sys_arch_mbox_fetch)
;;     23042CCE (in sys_arch_mbox_fetch)
;;     23042D7E (in sys_arch_sem_wait)
;;     23042D98 (in sys_arch_sem_wait)
;;     23042E92 (in sys_now)
;;     23043E2E (in file_info)
;;     23043E34 (in file_info)
;;     23043E84 (in file_info)
;;     23044086 (in dirent_file)
;;     230440B8 (in dirent_file)
;;     23044166 (in dirent_file)
;;     230441B0 (in dirent_file)
;;     23044208 (in dirent_file)
;;     23044292 (in romfs_opendir)
;;     23044360 (in romfs_stat)
;;     230443D6 (in romfs_stat)
;;     2304443C (in romfs_open)
;;     230444C2 (in romfs_open)
;;     23044512 (in romfs_open)
;;     230445AA (in romfs_open)
;;     230445B8 (in romfs_open)
;;     23044632 (in romfs_register)
;;     2304467E (in romfs_register)
;;     230446C8 (in romfs_register)
;;     23048682 (in rxl_cntrl_evt)
;;     2305507E (in coex_wifi_pta_forece_enable)
;;     23055098 (in coex_wifi_pta_forece_enable)
;;     230550B4 (in coex_wifi_pta_forece_enable)
;;     2305E072 (in mm_cfg_element_keepalive_timestamp_update)
;;     230640DC (in apm_sta_connect_timeout_ind_handler)
;;     23067866 (in bl_mtd_write)
;;     23067974 (in bloop_timer_configure)
;;     230679B6 (in bloop_timer_repeat_reconfigure)
;;     23067B66 (in bloop_run)
;;     23067C6E (in bloop_run)
;;     23067D46 (in bloop_run)
;;     23067D90 (in bloop_run)
;;     23067DDC (in bloop_status_dump)
;;     23067F96 (in bl_sys_time_sync_state)
;;     23068858 (in bl_sha_mutex_take)
;;     230688D2 (in bl_sha_mutex_give)
xTaskGetTickCount proc
	lui	a5,0004200E
	lw	a0,a5,+00000228
	c.jr	ra

;; xTaskGetTickCount2: 23033AFA
;;   Called from:
;;     23002894 (in aos_now_ms)
xTaskGetTickCount2 proc
	lui	a4,0004200E
	lw	a4,a4,+00000228
	lui	a5,0004200E
	lw	a5,a5,+00000220
	c.sw	a0,0(a4)
	c.li	a0,00000001
	c.sw	a1,0(a5)
	c.jr	ra

;; xTaskGetTickCountFromISR: 23033B12
;;   Called from:
;;     230007BE (in hal_boot2_init)
;;     230008DE (in bl_flash_config_update)
;;     23000932 (in bl_flash_config_update)
;;     2300096E (in bl_flash_config_update)
;;     230009AA (in bl_flash_config_update)
;;     230009E4 (in bl_flash_config_update)
;;     23000A1E (in bl_flash_config_update)
;;     23000A58 (in bl_flash_config_update)
;;     23001A0C (in log_buf_out)
;;     23001ABA (in log_buf_out)
;;     23009192 (in bl_send_cfg_task_req)
;;     2302D0CA (in __bl_ble_sync_task)
;;     2302D192 (in __recv_event)
;;     2302D68C (in write_data)
;;     2302D6D0 (in write_data)
;;     2302D7A2 (in __ble_bytes_send)
;;     2302D7E4 (in __ble_bytes_send)
;;     2302D8B4 (in read_data)
;;     2302D9F8 (in bl_ble_sync_start)
;;     2302DB76 (in __malloc)
;;     2302DBDA (in __free)
;;     2302DE8E (in pro_trans_read)
;;     2303188A (in ef_get_env_blob)
;;     230318D8 (in ef_get_env_blob)
;;     2303198C (in ef_set_env_blob)
;;     230319D8 (in ef_set_env_blob)
;;     23031A24 (in ef_set_env_blob)
;;     23036364 (in bl_dma_IRQHandler)
;;     230363F8 (in bl_dma_irq_register)
;;     2303647A (in bl_dma_irq_register)
;;     230364E8 (in bl_dma_irq_register)
;;     23036568 (in bl_dma_init)
;;     230365CC (in bl_dma_init)
;;     23036676 (in _irq_num_check.part.0)
;;     23036734 (in bl_irq_register_with_ctx)
;;     2303678E (in bl_irq_register_with_ctx)
;;     23036880 (in bl_irq_unregister)
;;     23036B16 (in wait_trng4feed)
;;     23036BE8 (in sec_trng_IRQHandler)
;;     23037026 (in dev_uart_init)
;;     23037090 (in dev_uart_init)
;;     230370BE (in dev_uart_init)
;;     23037144 (in dev_uart_init)
;;     230371BE (in dev_uart_init)
;;     2303720A (in dev_uart_init)
;;     23037472 (in vfs_uart_init)
;;     230374D4 (in vfs_uart_init)
;;     2303759A (in vfs_uart_init)
;;     230375D0 (in vfs_uart_init)
;;     23037638 (in vfs_uart_init)
;;     2303768E (in vfs_uart_init)
;;     230376F4 (in vfs_uart_init)
;;     23037752 (in vfs_uart_init)
;;     230377B6 (in vfs_uart_init)
;;     23037806 (in vfs_uart_init)
;;     2303784E (in vfs_uart_init)
;;     230378BA (in vfs_uart_init)
;;     23037922 (in vfs_uart_init)
;;     23037980 (in vfs_uart_init)
;;     23037A52 (in vfs_uart_init)
;;     23037A86 (in vfs_uart_init)
;;     23037AC6 (in vfs_uart_init)
;;     23037B42 (in vfs_uart_init)
;;     23037B88 (in vfs_uart_init)
;;     23037BC6 (in vfs_uart_init)
;;     23037C9A (in hal_gpio_init_from_dts)
;;     23037D24 (in hal_gpio_init_from_dts)
;;     23037DD2 (in hal_gpio_init_from_dts)
;;     23037E4C (in hal_gpio_init_from_dts)
;;     23037E80 (in hal_gpio_init_from_dts)
;;     23037FA8 (in hal_gpio_init_from_dts)
;;     23037FE2 (in hal_gpio_init_from_dts)
;;     23038042 (in hal_gpio_init_from_dts)
;;     23038090 (in hal_gpio_init_from_dts)
;;     230380F8 (in hal_gpio_init_from_dts)
;;     23038220 (in hal_board_cfg)
;;     23038272 (in hal_board_cfg)
;;     230382D6 (in hal_board_cfg)
;;     23038328 (in hal_board_cfg)
;;     23038396 (in hal_board_cfg)
;;     23038420 (in hal_board_cfg)
;;     2303847A (in hal_board_cfg)
;;     230384E8 (in hal_board_cfg)
;;     2303856A (in hal_board_cfg)
;;     23038614 (in hal_board_cfg)
;;     230386A4 (in hal_board_cfg)
;;     2303873C (in hal_board_cfg)
;;     230387B2 (in hal_board_cfg)
;;     230388F4 (in hal_board_cfg)
;;     23038954 (in hal_board_cfg)
;;     2303898A (in hal_board_cfg)
;;     23038A0C (in hal_board_cfg)
;;     23038A40 (in hal_board_cfg)
;;     23038A90 (in hal_board_cfg)
;;     23038AE4 (in hal_board_cfg)
;;     23038B38 (in hal_board_cfg)
;;     23038B8A (in hal_board_cfg)
;;     23038BD8 (in hal_board_cfg)
;;     23038C22 (in hal_board_cfg)
;;     23038CC4 (in hal_board_cfg)
;;     23038D78 (in hal_board_cfg)
;;     23038E14 (in hal_board_cfg)
;;     23038EC8 (in hal_board_cfg)
;;     23038F6C (in hal_board_cfg)
;;     23038FC8 (in hal_board_cfg)
;;     2303904E (in hal_board_cfg)
;;     230390EE (in hal_board_cfg)
;;     23039122 (in hal_board_cfg)
;;     23039154 (in hal_board_cfg)
;;     230391A6 (in hal_board_cfg)
;;     2303923A (in hal_board_cfg)
;;     2303927C (in hal_board_cfg)
;;     230392AA (in hal_board_cfg)
;;     230392F6 (in hal_board_cfg)
;;     23039352 (in hal_board_cfg)
;;     230393A6 (in hal_board_cfg)
;;     230393FC (in hal_board_cfg)
;;     23039452 (in hal_board_cfg)
;;     23039506 (in hal_board_cfg)
;;     23039574 (in hal_board_cfg)
;;     230395B6 (in hal_board_cfg)
;;     23039620 (in hal_board_cfg)
;;     23039664 (in hal_board_cfg)
;;     230396DC (in hal_board_cfg)
;;     23039724 (in hal_board_cfg)
;;     23039794 (in hal_board_cfg)
;;     230397D2 (in hal_board_cfg)
;;     2303981C (in hal_board_cfg)
;;     2303985A (in hal_board_cfg)
;;     230398A6 (in hal_board_cfg)
;;     2303998E (in hal_board_cfg)
;;     23039A5A (in hal_board_cfg)
;;     23039ADA (in hal_board_cfg)
;;     23039B52 (in hal_board_cfg)
;;     23039BF6 (in hal_board_cfg)
;;     23039C7E (in hal_board_cfg)
;;     23039CF4 (in hal_board_cfg)
;;     23039D60 (in hal_board_cfg)
;;     23039DE8 (in hal_board_cfg)
;;     23039ED6 (in bl_tsen_adc_get)
;;     23039F42 (in bl_tsen_adc_get)
;;     2303A114 (in _cb_led_trigger)
;;     2303A194 (in _led_bloop_msg)
;;     2303A296 (in _led_bloop_evt)
;;     2303A366 (in loopset_led_trigger)
;;     23043DC2 (in file_info)
;;     23043E0C (in file_info)
;;     23043E56 (in file_info)
;;     2304405C (in dirent_file)
;;     230440AE (in dirent_file)
;;     23044142 (in dirent_file)
;;     23044182 (in dirent_file)
;;     230441E4 (in dirent_file)
;;     2304425E (in romfs_opendir)
;;     23044328 (in romfs_stat)
;;     230443AC (in romfs_stat)
;;     23044400 (in romfs_open)
;;     2304449A (in romfs_open)
;;     23044520 (in romfs_open)
;;     23044552 (in romfs_open)
;;     23044586 (in romfs_open)
;;     23044600 (in romfs_register)
;;     2304465A (in romfs_register)
;;     230446A8 (in romfs_register)
;;     23067824 (in bl_mtd_write)
;;     23067CCE (in bloop_run)
;;     23067D66 (in bloop_run)
;;     23068828 (in bl_sha_mutex_take)
;;     230688A2 (in bl_sha_mutex_give)
xTaskGetTickCountFromISR proc
	lui	a5,0004200E
	lw	a0,a5,+00000228
	c.jr	ra

;; xTaskIncrementTick: 23033B1C
;;   Called from:
;;     23033DB2 (in xTaskResumeAll)
xTaskIncrementTick proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a0,0000000C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	jal	ra,0000000023067F7C
	c.mv	s1,a0
	c.beqz	a0,0000000023033B64

l23033B3E:
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023033B80

l23033B48:
	lui	a5,0004200E
	addi	a5,a5,+0000020C
	c.lw	a5,0(a4)
	c.li	s1,00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)

l23033B58:
	lui	a5,0004200E
	lw	a5,a5,+0000022C
	c.beqz	a5,0000000023033B64

l23033B62:
	c.li	s1,00000001

l23033B64:
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
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l23033B80:
	lui	a5,0004200E
	addi	a5,a5,+00000228
	lw	s3,a5,+00000000
	c.addi	s3,00000001
	sw	s3,a5,+00000000
	bne	s3,zero,0000000023033BE6

l23033B96:
	lui	s2,0004200E
	addi	s2,s2,+000001FC
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	bne	a5,zero,0000000023033CB6

l23033BA8:
	lui	a4,0004200E
	addi	a4,a4,+00000200
	lw	a3,s2,+00000000
	c.lw	a4,0(a2)
	lui	a5,0004200E
	addi	a5,a5,+00000220
	sw	a2,s2,+00000000
	c.sw	a4,0(a3)
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023033BE2

l23033BD2:
	lui	s6,0004200E
	addi	s6,s6,+0000021C
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	0000000023033BEE

l23033BE2:
	jal	ra,0000000023033340

l23033BE6:
	lui	s6,0004200E
	addi	s6,s6,+0000021C

l23033BEE:
	lw	a5,s6,+00000000
	bltu	s3,a5,0000000023033C80

l23033BF6:
	lui	s2,0004200E
	lui	s4,00042013
	lui	s5,0004200E
	c.li	s1,00000000
	addi	s2,s2,+000001FC
	addi	s4,s4,-000003F8
	addi	s5,s5,+000001F8
	lui	s8,0004200E
	c.li	s7,00000001

l23033C16:
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023033C78

l23033C1E:
	lw	a5,s2,+00000000
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	c.lw	s0,4(a5)
	addi	s9,s0,+00000004
	c.mv	a0,s9
	bltu	s3,a5,0000000023033CB0

l23033C32:
	jal	ra,00000000230321B4
	c.lw	s0,40(a5)
	addi	a0,s0,+00000018
	c.beqz	a5,0000000023033C42

l23033C3E:
	jal	ra,00000000230321B4

l23033C42:
	c.lw	s0,44(a5)
	addi	a4,s8,+00000218
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s7,a5
	c.or	a5,a3
	c.mv	a1,s9
	c.add	a0,s4
	c.sw	a4,0(a5)
	jal	ra,000000002303216E
	lw	a5,s5,+00000000
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bltu	a4,a5,0000000023033C16

l23033C6E:
	lw	a5,s2,+00000000
	c.li	s1,00000001
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023033C1E

l23033C78:
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	0000000023033C92

l23033C80:
	lui	s4,00042013
	lui	s5,0004200E
	c.li	s1,00000000
	addi	s4,s4,-000003F8
	addi	s5,s5,+000001F8

l23033C92:
	lw	a5,s5,+00000000
	c.li	a3,00000001
	c.lw	a5,44(a4)
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	s4,a5
	lw	a5,s4,+00000000
	bgeu	a3,a5,0000000023033B58

l23033CAC:
	c.li	s1,00000001
	c.j	0000000023033B58

l23033CB0:
	sw	a5,s6,+00000000
	c.j	0000000023033C92

l23033CB6:
	jal	ra,000000002300149E
	c.j	0000000023033BA8

;; xTaskResumeAll: 23033CBC
;;   Called from:
;;     23031F88 (in xEventGroupWaitBits)
;;     23031FCA (in xEventGroupWaitBits)
;;     23032002 (in xEventGroupWaitBits)
;;     230320C6 (in xEventGroupSetBits)
;;     2303213E (in vEventGroupDelete)
;;     23032150 (in vEventGroupDelete)
;;     230325D0 (in xQueueGenericSend)
;;     2303261E (in xQueueGenericSend)
;;     2303266C (in xQueueGenericSend)
;;     230328AC (in xQueueReceive)
;;     230328DC (in xQueueReceive)
;;     23032932 (in xQueueReceive)
;;     230329F8 (in xQueueSemaphoreTake)
;;     23032A24 (in xQueueSemaphoreTake)
;;     23032A56 (in xQueueSemaphoreTake)
;;     2303305E (in xStreamBufferSend)
;;     23033202 (in xStreamBufferReceive)
;;     23033E36 (in vTaskDelay)
;;     2303430E (in vTaskGetInfo)
;;     230344A6 (in uxTaskGetSystemState)
;;     230351B2 (in prvTimerTask)
;;     230352B2 (in prvTimerTask)
;;     230352C2 (in prvTimerTask)
;;     230359BA (in pvPortMalloc)
;;     23035A4E (in pvPortMalloc)
;;     23035AFE (in vPortFree)
xTaskResumeAll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,0004200E
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	addi	s1,s1,+00000210
	c.lw	s1,0(a5)
	beq	a5,zero,0000000023033DFC

l23033CE0:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023033CF4

l23033CF0:
	jal	ra,000000002303351E

l23033CF4:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023033DCA

l23033CFE:
	lui	a5,0004200E
	lw	a5,a5,+00000204
	c.beqz	a5,0000000023033DCA

l23033D08:
	lui	s3,0004200E
	lui	s8,00042013
	lui	s2,00042013
	c.li	s6,00000000
	addi	s3,s3,+0000022C
	addi	s8,s8,-00000150
	lui	s5,0004200E
	c.li	s1,00000001
	addi	s2,s2,-000003F8
	lui	s4,0004200E

l23033D2C:
	lw	a5,s8,+00000000
	c.beqz	a5,0000000023033D88

l23033D32:
	lw	a5,s8,+0000000C
	lw	s6,a5,+0000000C
	addi	a0,s6,+00000018
	jal	ra,00000000230321B4
	addi	s7,s6,+00000004
	c.mv	a0,s7
	jal	ra,00000000230321B4
	lw	a5,s6,+0000002C
	addi	a4,s5,+00000218
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s1,a5
	c.or	a5,a3
	c.mv	a1,s7
	c.add	a0,s2
	c.sw	a4,0(a5)
	jal	ra,000000002303216E
	addi	a5,s4,+000001F8
	c.lw	a5,0(a5)
	lw	a4,s6,+0000002C
	c.lw	a5,44(a5)
	bltu	a4,a5,0000000023033D2C

l23033D7E:
	sw	s1,s3,+00000000
	lw	a5,s8,+00000000
	c.bnez	a5,0000000023033D32

l23033D88:
	beq	s6,zero,0000000023033DA2

l23033D8C:
	lui	a5,0004200E
	lw	a5,a5,+000001FC
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023033E0A

l23033D98:
	lui	a5,0004200E
	c.li	a4,FFFFFFFF
	sw	a4,a5,+0000021C

l23033DA2:
	lui	s2,0004200E
	addi	s2,s2,+0000020C
	lw	s1,s2,+00000000
	c.beqz	s1,0000000023033DC4

l23033DB0:
	c.li	s4,00000001

l23033DB2:
	jal	ra,0000000023033B1C
	c.addi	s1,FFFFFFFF
	c.beqz	a0,0000000023033DBE

l23033DBA:
	sw	s4,s3,+00000000

l23033DBE:
	c.bnez	s1,0000000023033DB2

l23033DC0:
	sw	zero,s2,+00000000

l23033DC4:
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023033E02

l23033DCA:
	c.li	a0,00000000

l23033DCC:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023033DE4

l23033DD0:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023033DE4

l23033DDC:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23033DE4:
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

l23033DFC:
	jal	ra,000000002300149E
	c.j	0000000023033CE0

l23033E02:
	ecall
	c.li	a0,00000001
	c.j	0000000023033DCC

l23033E0A:
	jal	ra,0000000023033340
	c.j	0000000023033DA2

;; vTaskDelay: 23033E10
;;   Called from:
;;     23000AEE (in cmd_blsync_ble_start)
;;     23000AFA (in cmd_blsync_ble_start)
;;     23004FAA (in wifi_mgmr_event_notify)
;;     230069FE (in wifi_disconnect_cmd)
;;     2300821A (in bl_main_rtthread_start)
;;     2302DB20 (in bl_ble_sync_stop)
;;     2302DB28 (in bl_ble_sync_stop)
;;     2303A022 (in proc_entry_looprt)
;;     2304A2AA (in txl_frame_get)
;;     230550EC (in coex_wifi_pta_forece_enable)
;;     2305CA0C (in hal_dma_push)
;;     23067A32 (in bloop_wait_startup)
vTaskDelay proc
	c.bnez	a0,0000000023033E18

l23033E12:
	ecall
	c.jr	ra

l23033E18:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	s0,s0,+00000210
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.bnez	a5,0000000023033E48

l23033E2A:
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000000
	jal	ra,000000002303345C
	jal	ra,0000000023033CBC
	c.bnez	a0,0000000023033E40

l23033E3C:
	ecall

l23033E40:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23033E48:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	0000000023033E2A

;; vTaskSwitchContext: 23033E52
;;   Called from:
;;     23002862 (in aos_sem_signal)
;;     2300AF7E (in rw_main_task_post_from_fw)
;;     23044D58 (in __uart_rx_irq)
;;     23044D9C (in __uart_tx_irq)
;;     2305526C (in ipc_emb_notify)
vTaskSwitchContext proc
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023033E68

l23033E5C:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+0000022C
	c.jr	ra

l23033E68:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	a5,0004200E
	lui	s2,0004200E
	sw	zero,a5,+0000022C
	addi	s2,s2,+000001F8
	lw	a4,s2,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a4,48(a4)
	lui	a5,000A5A5A
	addi	a5,a5,+000005A5
	c.lw	a4,0(a3)
	bne	a3,a5,0000000023033E9E

l23033E98:
	c.lw	a4,4(a5)
	beq	a5,a3,0000000023033F02

l23033E9E:
	lw	a0,s2,+00000000
	lw	a1,s2,+00000000
	addi	a1,a1,+00000034
	jal	ra,0000000023001436

l23033EAE:
	lui	a5,0004200E
	lw	a0,a5,+00000218
	c.li	s0,0000001F
	lui	s1,00042013
	jal	ra,0000000023068C40
	sub	s3,s0,a0
	slli	s0,s3,00000002
	add	a5,s0,s3
	addi	s1,s1,-000003F8
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023033F10

l23033ED8:
	c.add	s0,s3
	c.slli	s0,02
	add	a4,s1,s0
	c.lw	a4,4(a5)
	c.addi	s0,00000008
	c.add	s0,s1
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	beq	a5,s0,0000000023033F16

l23033EEE:
	c.lw	a5,12(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a5,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23033F02:
	c.lw	a4,8(a3)
	bne	a3,a5,0000000023033E9E

l23033F08:
	c.lw	a4,12(a5)
	bne	a5,a3,0000000023033E9E

l23033F0E:
	c.j	0000000023033EAE

l23033F10:
	jal	ra,000000002300149E
	c.j	0000000023033ED8

l23033F16:
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	c.j	0000000023033EEE

;; vTaskPlaceOnEventList: 23033F1C
;;   Called from:
;;     23032614 (in xQueueGenericSend)
;;     23032928 (in xQueueReceive)
;;     23032A4C (in xQueueSemaphoreTake)
vTaskPlaceOnEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,0000000023033F42

l23033F26:
	lui	a5,0004200E
	lw	a1,a5,+000001F8
	c.addi	a1,00000018
	jal	ra,0000000023032184
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002303345C

l23033F42:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	0000000023033F26

;; vTaskPlaceOnUnorderedEventList: 23033F4C
;;   Called from:
;;     23031FC6 (in xEventGroupWaitBits)
vTaskPlaceOnUnorderedEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s1,a2
	c.beqz	a0,0000000023033F98

l23033F5A:
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023033F8E

l23033F64:
	lui	a5,0004200E
	addi	a5,a5,+000001F8
	c.lw	a5,0(a4)
	c.lw	a5,0(a1)
	lui	a5,00080000
	c.or	a5,s0
	c.addi	a1,00000018
	c.sw	a4,24(a5)
	jal	ra,000000002303216E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002303345C

l23033F8E:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	0000000023033F64

l23033F98:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	0000000023033F5A

;; vTaskPlaceOnEventListRestricted: 23033FA2
;;   Called from:
;;     23032C1E (in vQueueWaitForMessageRestricted)
vTaskPlaceOnEventListRestricted proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a2
	c.beqz	a0,0000000023033FD2

l23033FB0:
	lui	a5,0004200E
	lw	a1,a5,+000001F8
	c.addi	a1,00000018
	jal	ra,000000002303216E
	c.beqz	s0,0000000023033FC2

l23033FC0:
	c.li	s1,FFFFFFFF

l23033FC2:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002303345C

l23033FD2:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044
	c.j	0000000023033FB0

;; xTaskRemoveFromEventList: 23033FDC
;;   Called from:
;;     230322E2 (in prvUnlockQueue)
;;     23032332 (in prvUnlockQueue)
;;     230323B0 (in xQueueGenericReset)
;;     23032638 (in xQueueGenericSend)
;;     23032792 (in xQueueGenericSendFromISR)
;;     23032810 (in xQueueGiveFromISR)
;;     23032960 (in xQueueReceive)
;;     23032AD8 (in xQueueSemaphoreTake)
xTaskRemoveFromEventList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,12(a5)
	c.lw	a5,12(s0)
	c.beqz	s0,000000002303406E

l23033FEA:
	addi	s1,s0,+00000018
	c.mv	a0,s1
	jal	ra,00000000230321B4
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023034034

l23033FFE:
	lui	a0,00042013
	c.mv	a1,s1
	addi	a0,a0,-00000150
	jal	ra,000000002303216E

l2303400C:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	s0,44(a4)
	c.li	a0,00000000
	c.lw	a5,44(a5)
	bgeu	a5,a4,000000002303402A

l2303401E:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+0000022C
	c.li	a0,00000001

l2303402A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23034034:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,+00000218
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042013
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,-000003F8
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002303216E
	c.j	000000002303400C

l2303406E:
	jal	ra,000000002300149E
	c.j	0000000023033FEA

;; vTaskRemoveFromUnorderedEventList: 23034074
;;   Called from:
;;     230320B2 (in xEventGroupSetBits)
;;     23032110 (in vEventGroupDelete)
;;     23032128 (in vEventGroupDelete)
vTaskRemoveFromUnorderedEventList proc
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.beqz	a5,00000000230340F4

l23034088:
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.beqz	s0,000000002303410C

l23034094:
	jal	ra,00000000230321B4
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.lw	s0,44(a5)
	lui	a3,0004200E
	addi	a3,a3,+00000218
	c.lw	a3,0(a2)
	slli	a4,a5,00000002
	c.add	a4,a5
	c.li	s2,00000001
	lui	a0,00042013
	c.slli	a4,02
	sll	a5,s2,a5
	addi	a0,a0,-000003F8
	c.or	a5,a2
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002303216E
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,00000000230340E8

l230340E0:
	lui	a5,0004200E
	sw	s2,a5,+0000022C

l230340E8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230340F4:
	c.swsp	a1,00000084
	c.swsp	a0,00000004
	jal	ra,000000002300149E
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.bnez	s0,0000000023034094

l2303410C:
	c.swsp	a0,00000004
	jal	ra,000000002300149E
	c.lwsp	s0,00000044
	c.j	0000000023034094

;; vTaskSetTimeOutState: 23034116
;;   Called from:
;;     23032FC4 (in xStreamBufferSend)
vTaskSetTimeOutState proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.beqz	a0,0000000023034170

l23034122:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034136

l23034132:
	jal	ra,000000002303351E

l23034136:
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a3,a4,+00000220
	lw	a4,a5,+00000228
	c.lw	s0,0(a5)
	c.sw	s1,0(a3)
	c.sw	s1,4(a4)
	c.beqz	a5,0000000023034166

l2303414E:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034166

l2303415A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023033532

l23034166:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23034170:
	jal	ra,000000002300149E
	c.j	0000000023034122

;; vTaskInternalSetTimeOutState: 23034176
;;   Called from:
;;     2303262E (in xQueueGenericSend)
;;     23032856 (in xQueueReceive)
;;     23032A3A (in xQueueSemaphoreTake)
vTaskInternalSetTimeOutState proc
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a4,a4,+00000220
	lw	a5,a5,+00000228
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; xTaskCheckForTimeOut: 2303418C
;;   Called from:
;;     230325B4 (in xQueueGenericSend)
;;     23032894 (in xQueueReceive)
;;     230329E0 (in xQueueSemaphoreTake)
;;     23032FF4 (in xStreamBufferSend)
xTaskCheckForTimeOut proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a0,0000000023034230

l2303419C:
	beq	s2,zero,0000000023034238

l230341A0:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.bnez	a5,000000002303421E

l230341B0:
	lui	a5,0004200E
	addi	a5,a5,+00000228
	lw	a4,s2,+00000000
	c.lw	a5,0(a2)
	c.li	a3,FFFFFFFF
	c.li	a0,00000000
	beq	a4,a3,00000000230341FA

l230341C6:
	lui	a3,0004200E
	addi	a3,a3,+00000220
	c.lw	a3,0(a0)
	lw	a6,s1,+00000000
	c.lw	s1,4(a1)
	beq	a6,a0,00000000230341E0

l230341DA:
	c.li	a0,00000001
	bgeu	a2,a1,00000000230341FA

l230341E0:
	sub	a0,a2,a1
	bgeu	a0,a4,0000000023034224

l230341E8:
	c.lw	a3,0(a3)
	c.sub	a4,a2
	c.lw	a5,0(a5)
	c.add	a4,a1
	sw	a4,s2,+00000000
	c.sw	s1,0(a3)
	c.sw	s1,4(a5)
	c.li	a0,00000000

l230341FA:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034212

l230341FE:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034212

l2303420A:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23034212:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303421E:
	jal	ra,000000002303351E
	c.j	00000000230341B0

l23034224:
	c.lw	s0,0(a5)
	sw	zero,s2,+00000000
	c.li	a0,00000001
	c.beqz	a5,0000000023034212

l2303422E:
	c.j	00000000230341FE

l23034230:
	jal	ra,000000002300149E
	bne	s2,zero,00000000230341A0

l23034238:
	jal	ra,000000002300149E
	c.j	00000000230341A0

;; vTaskMissedYield: 2303423E
;;   Called from:
;;     230322EA (in prvUnlockQueue)
;;     2303233A (in prvUnlockQueue)
vTaskMissedYield proc
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+0000022C
	c.jr	ra

;; vTaskGetInfo: 2303424A
;;   Called from:
;;     23034358 (in prvListTasksWithinSingleList.part.11)
;;     23034386 (in prvListTasksWithinSingleList.part.11)
vTaskGetInfo proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,00000000230342CE

l23034254:
	addi	a5,s0,+00000034
	c.sw	a1,4(a5)
	c.sw	a1,0(s0)
	c.lw	s0,44(a4)
	c.li	a5,00000005
	c.sw	a1,16(a4)
	c.lw	s0,48(a4)
	c.sw	a1,28(a4)
	c.lw	s0,72(a4)
	c.sw	a1,8(a4)
	c.lw	s0,80(a4)
	sw	zero,a1,+00000018
	c.sw	a1,20(a4)
	beq	a3,a5,00000000230342DE

l23034276:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	beq	a5,s0,00000000230342D8

l23034282:
	sb	a3,a1,+0000000C
	c.li	a5,00000003
	beq	a3,a5,00000000230342F2

l2303428C:
	c.beqz	a2,00000000230342C2

l2303428E:
	c.lw	s0,48(a3)
	addi	a5,zero,+000000A5
	lbu	a4,a3,+00000000
	bne	a4,a5,0000000023034318

l2303429C:
	c.li	a5,00000000
	addi	a2,zero,+000000A5

l230342A2:
	c.addi	a5,00000001
	add	a4,a3,a5
	lbu	a4,a4,+00000000
	beq	a4,a2,00000000230342A2

l230342B0:
	c.srli	a5,00000002
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a1,+00000020

l230342BA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230342C2:
	sh	zero,a1,+00000020
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230342CE:
	lui	a5,0004200E
	lw	s0,a5,+000001F8
	c.j	0000000023034254

l230342D8:
	sb	zero,a1,+0000000C
	c.j	000000002303428C

l230342DE:
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002303399E
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	sb	a0,a1,+0000000C
	c.j	000000002303428C

l230342F2:
	lui	a5,0004200E
	addi	a5,a5,+00000210
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s0,40(a5)
	c.beqz	a5,000000002303430A

l23034304:
	c.li	a5,00000002
	sb	a5,a1,+0000000C

l2303430A:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023033CBC
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.j	000000002303428C

l23034318:
	c.li	a5,00000000
	sh	a5,a1,+00000020
	c.j	00000000230342BA

;; prvListTasksWithinSingleList.part.11: 23034320
;;   Called from:
;;     2303440C (in uxTaskGetSystemState)
;;     23034432 (in uxTaskGetSystemState)
;;     23034452 (in uxTaskGetSystemState)
;;     23034476 (in uxTaskGetSystemState)
;;     2303449A (in uxTaskGetSystemState)
prvListTasksWithinSingleList.part.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.lw	a1,4(a5)
	addi	s4,a1,+00000008
	c.mv	s2,a1
	c.lw	a5,4(a5)
	c.mv	s6,a2
	c.sw	a1,4(a5)
	beq	a5,s4,00000000230343A4

l23034344:
	lw	s5,a5,+0000000C
	c.mv	s0,a0
	c.li	s3,00000000
	c.j	0000000023034364

l2303434E:
	c.lw	a5,12(s1)
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	c.mv	a0,s1
	jal	ra,000000002303424A
	beq	s5,s1,000000002303438E

l23034360:
	lw	a5,s2,+00000004

l23034364:
	c.lw	a5,4(a5)
	c.mv	a1,s0
	c.mv	a3,s6
	sw	a5,s2,+00000004
	c.li	a2,00000001
	bne	s4,a5,000000002303434E

l23034374:
	lw	a5,s4,+00000004
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	sw	a5,s2,+00000004
	c.lw	a5,12(s1)
	c.mv	a0,s1
	jal	ra,000000002303424A
	bne	s5,s1,0000000023034360

l2303438E:
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

l230343A4:
	c.lw	a1,12(a5)
	c.sw	a1,4(a5)
	c.j	0000000023034344

;; uxTaskGetSystemState: 230343AA
;;   Called from:
;;     23034812 (in vTaskList)
uxTaskGetSystemState proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	a5,a5,+00000210
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lui	a5,0004200E
	lw	a5,a5,+00000204
	c.li	s2,00000000
	bltu	a1,a5,00000000230344A6

l230343D6:
	lui	s5,00042013
	addi	s5,s5,-000003F8
	c.mv	s4,a0
	c.mv	s0,a2
	addi	s3,s5,+0000026C
	addi	s1,zero,+00000020
	c.li	s2,00000000
	c.li	a4,00000000

l230343EE:
	c.addi	s1,FFFFFFFF
	slli	a5,s1,00000002
	c.add	a5,s1
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a3)
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4
	c.mv	a1,s3
	c.li	a2,00000001
	c.mv	a0,a5
	c.beqz	a3,000000002303441E

l2303440C:
	jal	ra,0000000023034320
	c.add	s2,a0
	slli	a4,s2,00000003
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4

l2303441E:
	c.addi	s3,FFFFFFEC
	c.bnez	s1,00000000230343EE

l23034422:
	lui	a4,0004200E
	lw	a1,a4,+000001FC
	c.lw	a1,0(a4)
	c.beqz	a4,0000000023034442

l2303442E:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,0000000023034320
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23034442:
	lui	a4,0004200E
	lw	a1,a4,+00000200
	c.lw	a1,0(a4)
	c.beqz	a4,0000000023034462

l2303444E:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,0000000023034320
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23034462:
	lui	a1,00042013
	addi	a4,a1,-00000128
	c.lw	a4,0(a4)
	c.beqz	a4,0000000023034486

l2303446E:
	c.mv	a0,a5
	c.li	a2,00000004
	addi	a1,a1,-00000128
	jal	ra,0000000023034320
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23034486:
	lui	a1,00042013
	addi	a4,a1,-0000013C
	c.lw	a4,0(a4)
	c.beqz	a4,00000000230344A0

l23034492:
	c.li	a2,00000003
	addi	a1,a1,-0000013C
	c.mv	a0,a5
	jal	ra,0000000023034320
	c.add	s2,a0

l230344A0:
	c.beqz	s0,00000000230344A6

l230344A2:
	sw	zero,s0,+00000000

l230344A6:
	jal	ra,0000000023033CBC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; xTaskGetCurrentTaskHandle: 230344BE
;;   Called from:
;;     230026CC (in aos_task_key_create)
;;     23002732 (in aos_task_setspecific)
;;     23002770 (in aos_task_getspecific)
;;     23009D8E (in bl_output)
;;     2302DADC (in bl_ble_sync_stop)
;;     23032FD6 (in xStreamBufferSend)
;;     23033244 (in xStreamBufferReceive)
;;     230552AA (in ipc_emb_init)
;;     23067B28 (in bloop_run)
xTaskGetCurrentTaskHandle proc
	lui	a5,0004200E
	lw	a0,a5,+000001F8
	c.jr	ra

;; xTaskGetSchedulerState: 230344C8
;;   Called from:
;;     23031F62 (in xEventGroupWaitBits)
;;     23031FA4 (in xEventGroupWaitBits)
;;     23032550 (in xQueueGenericSend)
;;     2303283C (in xQueueReceive)
;;     23032988 (in xQueueSemaphoreTake)
;;     2303504C (in xTimerGenericCommand)
xTaskGetSchedulerState proc
	lui	a5,0004200E
	lw	a5,a5,+00000224
	c.li	a0,00000001
	c.beqz	a5,00000000230344E2

l230344D4:
	lui	a5,0004200E
	lw	a0,a5,+00000210
	sltiu	a0,a0,+00000001
	c.slli	a0,01

l230344E2:
	c.jr	ra

;; xTaskPriorityInherit: 230344E4
;;   Called from:
;;     23032ABC (in xQueueSemaphoreTake)
xTaskPriorityInherit proc
	c.beqz	a0,000000002303455E

l230344E6:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,+000001F8
	c.lw	s1,0(a4)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,44(a3)
	c.lw	a4,44(a4)
	c.mv	s0,a0
	bgeu	a3,a4,0000000023034546

l23034506:
	c.lw	a0,24(a4)
	blt	a4,zero,0000000023034518

l2303450C:
	c.lw	s1,0(a4)
	c.lw	a4,44(a2)
	addi	a4,zero,+00000020
	c.sub	a4,a2
	c.sw	a0,24(a4)

l23034518:
	slli	a4,a3,00000002
	c.add	a4,a3
	lui	s2,00042013
	c.lw	s0,20(a3)
	addi	s2,s2,-000003F8
	c.slli	a4,02
	c.add	a4,s2
	beq	a3,a4,0000000023034562

l23034530:
	c.lw	s1,0(a4)
	c.li	a0,00000001
	c.lw	a4,44(a4)
	c.sw	s0,44(a4)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23034546:
	c.lw	s1,0(a4)
	c.lw	a0,80(a0)
	c.lw	a4,44(a5)
	sltu	a0,a0,a5

l23034550:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303455E:
	c.li	a0,00000000
	c.jr	ra

l23034562:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,00000000230321B4
	c.bnez	a0,0000000023034598

l2303456E:
	c.lw	s0,44(a3)
	lui	a4,0004200E
	addi	a4,a4,+00000218
	slli	a5,a3,00000002
	c.add	a5,a3
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	c.bnez	a5,00000000230345A0

l23034586:
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	00000000230345A0

l23034598:
	lui	a4,0004200E
	addi	a4,a4,+00000218

l230345A0:
	c.lw	s1,0(a5)
	c.lw	a4,0(a2)
	c.mv	a1,s3
	c.lw	a5,44(a3)
	c.li	a5,00000001
	slli	a0,a3,00000002
	c.add	a0,a3
	sll	a5,a5,a3
	c.slli	a0,02
	c.or	a5,a2
	c.add	a0,s2
	c.sw	s0,44(a3)
	c.sw	a4,0(a5)
	jal	ra,000000002303216E
	c.li	a0,00000001
	c.j	0000000023034550

;; xTaskPriorityDisinherit: 230345C6
;;   Called from:
;;     23032278 (in prvCopyDataToQueue)
xTaskPriorityDisinherit proc
	c.beqz	a0,0000000023034614

l230345C8:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	beq	a5,a0,00000000230345E2

l230345DE:
	jal	ra,000000002300149E

l230345E2:
	c.lw	s0,84(a5)
	c.beqz	a5,0000000023034600

l230345E6:
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	beq	a3,a4,00000000230345F4

l230345F2:
	c.beqz	a5,0000000023034618

l230345F4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23034600:
	jal	ra,000000002300149E
	c.lw	s0,84(a5)
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	bne	a3,a4,00000000230345F2

l23034612:
	c.j	00000000230345F4

l23034614:
	c.li	a0,00000000
	c.jr	ra

l23034618:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.beqz	a0,000000002303466C

l23034624:
	lui	a0,00042013
	lui	a2,0004200E
	addi	a0,a0,-000003F8
	addi	a2,a2,+00000218

l23034634:
	c.lw	s0,80(a3)
	c.lw	a2,0(a1)
	addi	a6,zero,+00000020
	slli	a4,a3,00000002
	c.add	a4,a3
	c.li	a5,00000001
	sub	a6,a6,a3
	sll	a5,a5,a3
	c.slli	a4,02
	c.or	a5,a1
	c.sw	s0,44(a3)
	sw	a6,s0,+00000018
	c.mv	a1,s1
	c.add	a0,a4
	c.sw	a2,0(a5)
	jal	ra,000000002303216E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2303466C:
	c.lw	s0,44(a4)
	lui	a0,00042013
	addi	a0,a0,-000003F8
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	a5,a0
	c.lw	a5,0(a5)
	lui	a2,0004200E
	addi	a2,a2,+00000218
	c.bnez	a5,0000000023034634

l2303468C:
	c.lw	a2,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a4
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a2,0(a5)
	c.j	0000000023034634

;; vTaskPriorityDisinheritAfterTimeout: 2303469E
;;   Called from:
;;     23032AA6 (in xQueueSemaphoreTake)
vTaskPriorityDisinheritAfterTimeout proc
	c.beqz	a0,00000000230346EC

l230346A0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a0,84(a5)
	c.mv	s1,a1
	c.mv	s0,a0
	c.beqz	a5,00000000230346DE

l230346B2:
	lw	s2,s0,+00000050
	bltu	s2,s1,00000000230346D4

l230346BA:
	c.lw	s0,44(a5)
	beq	a5,s2,00000000230346C8

l230346C0:
	c.lw	s0,84(a3)
	c.li	a4,00000001
	beq	a3,a4,00000000230346EE

l230346C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230346D4:
	c.lw	s0,44(a5)
	c.mv	s2,s1
	bne	a5,s2,00000000230346C0

l230346DC:
	c.j	00000000230346C8

l230346DE:
	jal	ra,000000002300149E
	lw	s2,s0,+00000050
	bgeu	s2,s1,00000000230346BA

l230346EA:
	c.j	00000000230346D4

l230346EC:
	c.jr	ra

l230346EE:
	lui	a4,0004200E
	lw	a4,a4,+000001F8
	beq	a4,s0,0000000023034766

l230346FA:
	c.lw	s0,24(a4)
	sw	s2,s0,+0000002C
	blt	a4,zero,0000000023034710

l23034704:
	addi	a4,zero,+00000020
	sub	s2,a4,s2
	sw	s2,s0,+00000018

l23034710:
	slli	a4,a5,00000002
	c.add	a5,a4
	lui	s1,00042013
	c.lw	s0,20(a4)
	addi	s1,s1,-000003F8
	c.slli	a5,02
	c.add	a5,s1
	bne	a4,a5,00000000230346C8

l23034728:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,00000000230321B4
	c.beqz	a0,000000002303476E

l23034734:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	lui	a4,0004200E
	sll	a3,a3,a0
	slli	a5,a0,00000002
	addi	a4,a4,+00000218

l23034748:
	c.lw	a4,0(a2)
	c.add	a5,a0
	slli	a0,a5,00000002
	c.or	a3,a2
	c.sw	a4,0(a3)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s2
	c.add	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303216E

l23034766:
	jal	ra,000000002300149E
	c.lw	s0,44(a5)
	c.j	00000000230346FA

l2303476E:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	slli	a5,a0,00000002
	add	a4,a5,a0
	c.slli	a4,02
	c.add	a4,s1
	c.lw	a4,0(a4)
	sll	a3,a3,a0
	c.beqz	a4,0000000023034790

l23034786:
	lui	a4,0004200E
	addi	a4,a4,+00000218
	c.j	0000000023034748

l23034790:
	lui	a4,0004200E
	addi	a4,a4,+00000218
	c.lw	a4,0(a1)
	xori	a2,a3,-00000001
	c.and	a2,a1
	c.sw	a4,0(a2)
	c.j	0000000023034748

;; vTaskEnterCritical: 230347A4
;;   Called from:
;;     23003FCE (in stateConnectedIPNoEnter)
;;     23006BEE (in cmd_wifi_dump)
;;     23006C0C (in cmd_wifi_dump)
;;     23007228 (in wifi_mgmr_sta_ip_set)
;;     2300766A (in wifi_mgmr_scan_filter_hidden_ssid)
;;     23009BF6 (in bl_tx_resend)
;;     23009C66 (in bl_tx_try_flush)
;;     23009E92 (in bl_output)
;;     2302529C (in irq_lock)
;;     23032016 (in xEventGroupWaitBits)
;;     230322B4 (in prvUnlockQueue)
;;     23032304 (in prvUnlockQueue)
;;     2303236C (in xQueueGenericReset)
;;     2303255C (in xQueueGenericSend)
;;     23032588 (in xQueueGenericSend)
;;     230325BA (in xQueueGenericSend)
;;     230325D6 (in xQueueGenericSend)
;;     23032844 (in xQueueReceive)
;;     23032868 (in xQueueReceive)
;;     2303289A (in xQueueReceive)
;;     230328B0 (in xQueueReceive)
;;     230328E0 (in xQueueReceive)
;;     230328EC (in xQueueReceive)
;;     23032990 (in xQueueSemaphoreTake)
;;     230329B4 (in xQueueSemaphoreTake)
;;     230329E6 (in xQueueSemaphoreTake)
;;     230329FE (in xQueueSemaphoreTake)
;;     23032A28 (in xQueueSemaphoreTake)
;;     23032A90 (in xQueueSemaphoreTake)
;;     23032AB6 (in xQueueSemaphoreTake)
;;     23032AFE (in uxQueueMessagesWaiting)
;;     23032BD6 (in vQueueWaitForMessageRestricted)
;;     23032FFA (in xStreamBufferSend)
;;     230331BA (in xStreamBufferReceive)
;;     23034E06 (in prvCheckForValidListAndQueue)
;;     23035338 (in pvTimerGetTimerID)
;;     2303A3E0 (in loopset_led_trigger)
;;     23042E82 (in sys_arch_protect)
;;     23044EEC (in vfs_uart_poll)
;;     23044F16 (in vfs_uart_poll)
;;     230484FA (in rxl_mpdu_free)
;;     23048924 (in bl60x_firmwre_mpdu_free)
;;     23048A8C (in rxl_hwdesc_init)
;;     2304A28A (in txl_frame_get)
;;     2304C78A (in rxu_swdesc_upload_evt)
;;     23067A64 (in bloop_evt_set_async)
;;     23067B42 (in bloop_run)
;;     23067BAE (in bloop_run)
;;     23067F92 (in bl_sys_time_sync_state)
vTaskEnterCritical proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	lw	a5,a5,+00000224
	c.beqz	a5,00000000230347B6

l230347B2:
	jal	zero,000000002303351E

l230347B6:
	c.jr	ra

;; vTaskExitCritical: 230347B8
;;   Called from:
;;     23003FF0 (in stateConnectedIPNoEnter)
;;     23006BFC (in cmd_wifi_dump)
;;     23007248 (in wifi_mgmr_sta_ip_set)
;;     23007684 (in wifi_mgmr_scan_filter_hidden_ssid)
;;     23009C34 (in bl_tx_resend)
;;     23009C92 (in bl_tx_try_flush)
;;     23009EA4 (in bl_output)
;;     230252A8 (in irq_unlock)
;;     23032038 (in xEventGroupWaitBits)
;;     23032300 (in prvUnlockQueue)
;;     2303235A (in prvUnlockQueue)
;;     2303239C (in xQueueGenericReset)
;;     230323BA (in xQueueGenericReset)
;;     230323DA (in xQueueGenericReset)
;;     23032580 (in xQueueGenericSend)
;;     230325AC (in xQueueGenericSend)
;;     230325C6 (in xQueueGenericSend)
;;     230325F2 (in xQueueGenericSend)
;;     2303260C (in xQueueGenericSend)
;;     2303265E (in xQueueGenericSend)
;;     23032860 (in xQueueReceive)
;;     2303288C (in xQueueReceive)
;;     230328A2 (in xQueueReceive)
;;     230328C0 (in xQueueReceive)
;;     230328E8 (in xQueueReceive)
;;     2303290A (in xQueueReceive)
;;     23032920 (in xQueueReceive)
;;     230329AC (in xQueueSemaphoreTake)
;;     230329D8 (in xQueueSemaphoreTake)
;;     230329EE (in xQueueSemaphoreTake)
;;     23032A16 (in xQueueSemaphoreTake)
;;     23032A30 (in xQueueSemaphoreTake)
;;     23032A40 (in xQueueSemaphoreTake)
;;     23032A64 (in xQueueSemaphoreTake)
;;     23032AAA (in xQueueSemaphoreTake)
;;     23032AC2 (in xQueueSemaphoreTake)
;;     23032ACC (in xQueueSemaphoreTake)
;;     23032B04 (in uxQueueMessagesWaiting)
;;     23032BFE (in vQueueWaitForMessageRestricted)
;;     23032FDC (in xStreamBufferSend)
;;     2303300C (in xStreamBufferSend)
;;     230331D2 (in xStreamBufferReceive)
;;     2303324A (in xStreamBufferReceive)
;;     23034E18 (in prvCheckForValidListAndQueue)
;;     2303533E (in pvTimerGetTimerID)
;;     2303A3FA (in loopset_led_trigger)
;;     23042E8E (in sys_arch_unprotect)
;;     23044EF8 (in vfs_uart_poll)
;;     23044F26 (in vfs_uart_poll)
;;     2304854E (in rxl_mpdu_free)
;;     2304893C (in bl60x_firmwre_mpdu_free)
;;     23048BC2 (in rxl_hwdesc_init)
;;     2304A2B0 (in txl_frame_get)
;;     2304C79C (in rxu_swdesc_upload_evt)
;;     23067A82 (in bloop_evt_set_async)
;;     23067B52 (in bloop_run)
;;     23067BC4 (in bloop_run)
;;     23067FA0 (in bl_sys_time_sync_state)
vTaskExitCritical proc
	lui	a5,0004200E
	lw	a5,a5,+00000224
	c.beqz	a5,00000000230347D2

l230347C2:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230347D2

l230347CE:
	jal	zero,0000000023033532

l230347D2:
	c.jr	ra

;; vTaskList: 230347D4
;;   Called from:
;;     2302F33C (in ps_cmd)
vTaskList proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200E
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
	c.swsp	s9,00000080
	addi	a5,a5,+00000204
	c.lw	a5,0(s1)
	c.lw	a5,0(a5)
	c.mv	s0,a0
	sb	zero,a0,+00000000
	slli	a0,a5,00000003
	c.add	a0,a5
	c.slli	a0,02
	jal	ra,000000002303598A
	c.beqz	a0,00000000230348B8

l2303480C:
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	s8,a0
	jal	ra,00000000230343AA
	c.beqz	a0,000000002303489A

l23034818:
	slli	s2,a0,00000003
	c.add	s2,a0
	c.slli	s2,02
	lui	s7,00023082
	c.mv	s1,s8
	c.add	s2,s8
	lui	s6,00023079
	c.li	s5,00000004
	addi	s7,s7,+00000784
	c.li	s4,0000000E
	addi	s3,zero,+00000020

l23034838:
	lbu	a5,s1,+0000000C
	c.li	s9,00000000
	bltu	s5,a5,0000000023034848

l23034842:
	c.add	a5,s7
	lbu	s9,a5,+00000000

l23034848:
	c.lw	s1,4(a1)
	c.mv	a0,s0
	jal	ra,000000002306D580
	c.mv	a0,s0
	jal	ra,000000002306D630
	bltu	s4,a0,000000002303486C

l2303485A:
	c.add	a0,s0
	addi	a5,s0,+0000000F

l23034860:
	sb	s3,a0,+00000000
	c.addi	a0,00000001
	bne	a5,a0,0000000023034860

l2303486A:
	c.li	a0,0000000F

l2303486C:
	c.add	s0,a0
	sb	zero,s0,+00000000
	lw	a6,s1,+0000001C
	c.lw	s1,8(a5)
	lhu	a4,s1,+00000020
	c.lw	s1,16(a3)
	c.mv	a2,s9
	addi	a1,s6,-000005F8
	c.mv	a0,s0
	jal	ra,0000000023003AF6
	c.mv	a0,s0
	jal	ra,000000002306D630
	addi	s1,s1,+00000024
	c.add	s0,a0
	bne	s1,s2,0000000023034838

l2303489A:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	tp,0000002C
	c.mv	a0,s8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	jal	zero,0000000023035A72

l230348B8:
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

;; uxTaskResetEventItemValue: 230348D2
;;   Called from:
;;     23031FD4 (in xEventGroupWaitBits)
uxTaskResetEventItemValue proc
	lui	a5,0004200E
	addi	a5,a5,+000001F8
	c.lw	a5,0(a2)
	c.lw	a5,0(a3)
	c.lw	a5,0(a4)
	addi	a5,zero,+00000020
	c.lw	a3,44(a3)
	c.lw	a2,24(a0)
	c.sub	a5,a3
	c.sw	a4,24(a5)
	c.jr	ra

;; pvTaskIncrementMutexHeldCount: 230348EE
;;   Called from:
;;     23032AEC (in xQueueSemaphoreTake)
pvTaskIncrementMutexHeldCount proc
	lui	a5,0004200E
	addi	a5,a5,+000001F8
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023034902

l230348FA:
	c.lw	a5,0(a3)
	c.lw	a3,84(a4)
	c.addi	a4,00000001
	c.sw	a3,84(a4)

l23034902:
	c.lw	a5,0(a0)
	c.jr	ra

;; ulTaskNotifyTake: 23034906
;;   Called from:
;;     2305528C (in ipc_emb_wait)
;;     23067B74 (in bloop_run)
ulTaskNotifyTake proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	c.mv	s3,a1
	csrrci	zero,mstatus,00000008
	lui	s1,0004200E
	addi	s1,s1,+00000224
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303492A

l23034926:
	jal	ra,000000002303351E

l2303492A:
	lui	s0,0004200E
	addi	s0,s0,+000001F8
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	c.bnez	a5,0000000023034944

l23034938:
	c.lw	s0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+0000005C
	bne	s3,zero,000000002303499E

l23034944:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303494E

l23034948:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,0000000023034998

l2303494E:
	csrrci	zero,mstatus,00000008
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303495A

l23034956:
	jal	ra,000000002303351E

l2303495A:
	c.lw	s0,0(a5)
	c.lw	a5,88(a0)
	c.beqz	a0,000000002303496A

l23034960:
	c.lw	s0,0(a5)
	beq	s2,zero,0000000023034990

l23034966:
	sw	zero,a5,+00000058

l2303496A:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023034982

l23034974:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034982

l2303497A:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23034982:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23034990:
	addi	a4,a0,-00000001
	c.sw	a5,88(a4)
	c.j	000000002303496A

l23034998:
	jal	ra,0000000023033532
	c.j	000000002303494E

l2303499E:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002303345C
	ecall
	c.j	0000000023034944

;; xTaskNotifyWait: 230349AC
;;   Called from:
;;     23032FE8 (in xStreamBufferSend)
;;     23033256 (in xStreamBufferReceive)
xTaskNotifyWait proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.mv	s5,a3
	csrrci	zero,mstatus,00000008
	lui	s3,0004200E
	addi	s3,s3,+00000224
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230349DA

l230349D6:
	jal	ra,000000002303351E

l230349DA:
	lui	s0,0004200E
	addi	s0,s0,+000001F8
	c.lw	s0,0(a5)
	c.li	a4,00000002
	lbu	a5,a5,+0000005C
	beq	a4,a5,0000000023034A06

l230349EE:
	c.lw	s0,0(a5)
	xori	s1,s1,-00000001
	c.li	a4,00000001
	c.lw	a5,88(a0)
	c.and	s1,a0
	c.sw	a5,88(s1)
	c.lw	s0,0(a5)
	sb	a4,a5,+0000005C
	bne	s5,zero,0000000023034A7E

l23034A06:
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023034A12

l23034A0C:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,0000000023034A78

l23034A12:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023034A20

l23034A1C:
	jal	ra,000000002303351E

l23034A20:
	beq	s4,zero,0000000023034A2C

l23034A24:
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	sw	a5,s4,+00000000

l23034A2C:
	c.lw	s0,0(a5)
	c.li	a4,00000002
	c.li	a0,00000000
	lbu	a5,a5,+0000005C
	bne	a4,a5,0000000023034A4C

l23034A3A:
	c.lw	s0,0(a5)
	xori	s2,s2,-00000001
	c.li	a0,00000001
	c.lw	a5,88(a4)
	and	s2,s2,a4
	sw	s2,a5,+00000058

l23034A4C:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023034A66

l23034A58:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034A66

l23034A5E:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23034A66:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23034A78:
	jal	ra,0000000023033532
	c.j	0000000023034A12

l23034A7E:
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,000000002303345C
	ecall
	c.j	0000000023034A06

;; xTaskGenericNotify: 23034A8C
;;   Called from:
;;     23009D38 (in bl_tx_notify)
;;     23033056 (in xStreamBufferSend)
;;     230331FA (in xStreamBufferReceive)
;;     2305527E (in ipc_emb_notify)
;;     23067A94 (in bloop_evt_set_async)
xTaskGenericNotify proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s1,a2
	c.mv	s2,a3
	beq	a0,zero,0000000023034BB4

l23034AA6:
	csrrci	zero,mstatus,00000008
	lui	s3,0004200E
	addi	s3,s3,+00000224
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023034B24

l23034AB8:
	beq	s2,zero,0000000023034AC2

l23034ABC:
	c.lw	s0,88(a5)
	sw	a5,s2,+00000000

l23034AC2:
	lbu	s2,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s2,s2,+000000FF
	bltu	a5,s1,0000000023034AE6

l23034AD6:
	lui	a2,00023079
	c.slli	s1,02
	addi	a2,a2,-00000620
	c.add	s1,a2
	c.lw	s1,0(a5)
	c.jr	a5

l23034AE6:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023034AF2

l23034AEE:
	jal	ra,000000002300149E

l23034AF2:
	c.li	a5,00000001
	beq	s2,a5,0000000023034B2A

l23034AF8:
	c.li	a0,00000001
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023034B14

l23034B00:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034B14

l23034B0C:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23034B14:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23034B24:
	jal	ra,000000002303351E
	c.j	0000000023034AB8

l23034B2A:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.lw	s0,44(a3)
	lui	a4,0004200E
	addi	a4,a4,+00000218
	c.lw	a4,0(a2)
	slli	a5,a3,00000002
	c.add	a5,a3
	lui	a0,00042013
	c.slli	a5,02
	sll	s2,s2,a3
	addi	a0,a0,-000003F8
	or	s2,s2,a2
	c.add	a0,a5
	c.mv	a1,s1
	sw	s2,a4,+00000000
	jal	ra,000000002303216E
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023034B6C

l23034B68:
	jal	ra,000000002300149E

l23034B6C:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023034AF8

l23034B7C:
	ecall
	c.j	0000000023034AF8
23034B82       89 47 01 45 E3 0A F9 F6 23 2C 44 05 85 47   .G.E....#,D..G
23034B90 E3 14 F9 F6 59 BF 3C 4C 85 07 3C CC 85 47 E3 1D ....Y.<L..<..G..
23034BA0 F9 F4 61 B7 2C 4C 85 47 B3 E5 45 01 2C CC E3 15 ..a.,L.G..E.,...
23034BB0 F9 F4 A5 BF                                     ....           

l23034BB4:
	jal	ra,000000002300149E
	c.j	0000000023034AA6

;; xTaskGenericNotifyFromISR: 23034BBA
;;   Called from:
;;     2303313A (in xStreamBufferSendFromISR)
;;     230332DA (in xStreamBufferReceiveFromISR)
xTaskGenericNotifyFromISR proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s2,a4
	c.beqz	a0,0000000023034C6E

l23034BCA:
	c.beqz	a3,0000000023034BD0

l23034BCC:
	c.lw	s0,88(a5)
	c.sw	a3,0(a5)

l23034BD0:
	lbu	s1,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s1,s1,+000000FF
	bltu	a5,a2,0000000023034BF4

l23034BE4:
	lui	a5,00023079
	addi	a5,a5,-0000060C
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5

l23034BF4:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023034C00

l23034BFC:
	jal	ra,000000002300149E

l23034C00:
	c.li	a5,00000001
	beq	s1,a5,0000000023034C14

l23034C06:
	c.li	a0,00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23034C14:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023034C1C

l23034C18:
	jal	ra,000000002300149E

l23034C1C:
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023034C80

l23034C26:
	lui	a0,00042013
	addi	a1,s0,+00000018
	addi	a0,a0,-00000150
	jal	ra,000000002303216E

l23034C36:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023034C06

l23034C46:
	beq	s2,zero,0000000023034C50

l23034C4A:
	c.li	a5,00000001
	sw	a5,s2,+00000000

l23034C50:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+0000022C
	c.j	0000000023034C06
23034C5C                                     89 47 01 45             .G.E
23034C60 E3 84 F4 FA 2C CC 85 47 E3 9F F4 F8 65 B7       ....,..G....e. 

l23034C6E:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,000000002300149E
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.j	0000000023034BCA

l23034C80:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,+00000218
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042013
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,-000003F8
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002303216E
	c.j	0000000023034C36
23034CBA                               3C 4C 85 07 3C CC           <L..<.
23034CC0 85 47 E3 92 F4 F4 B9 B7 3C 4C DD 8D 2C CC 85 47 .G......<L..,..G
23034CD0 E3 9B F4 F2 81 B7                               ......         

;; vTaskNotifyGiveFromISR: 23034CD6
;;   Called from:
;;     23055264 (in ipc_emb_notify)
vTaskNotifyGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023034D90

l23034CE6:
	c.li	a5,00000002
	lbu	a4,s0,+0000005C
	sb	a5,s0,+0000005C
	c.lw	s0,88(a5)
	c.li	a3,00000001
	c.addi	a5,00000001
	c.sw	s0,88(a5)
	beq	a3,a4,0000000023034D08

l23034CFC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23034D08:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023034D10

l23034D0C:
	jal	ra,000000002300149E

l23034D10:
	lui	a5,0004200E
	lw	a5,a5,+00000210
	c.beqz	a5,0000000023034D56

l23034D1A:
	lui	a0,00042013
	addi	a1,s0,+00000018
	addi	a0,a0,-00000150
	jal	ra,000000002303216E

l23034D2A:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023034CFC

l23034D3A:
	c.beqz	s1,0000000023034D40

l23034D3C:
	c.li	a5,00000001
	c.sw	s1,0(a5)

l23034D40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+0000022C
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23034D56:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,00000000230321B4
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,+00000218
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042013
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,-000003F8
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s2
	c.sw	a3,0(a5)
	jal	ra,000000002303216E
	c.j	0000000023034D2A

l23034D90:
	jal	ra,000000002300149E
	c.j	0000000023034CE6

;; xTaskNotifyStateClear: 23034D96
;;   Called from:
;;     23032FCA (in xStreamBufferSend)
;;     23033238 (in xStreamBufferReceive)
xTaskNotifyStateClear proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.beqz	a0,0000000023034DEA

l23034DA2:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,+00000224
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034DB6

l23034DB2:
	jal	ra,000000002303351E

l23034DB6:
	lbu	a5,s1,+0000005C
	c.li	a4,00000002
	c.li	a0,00000000
	bne	a4,a5,0000000023034DC8

l23034DC2:
	sb	zero,s1,+0000005C
	c.li	a0,00000001

l23034DC8:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034DE0

l23034DCC:
	lui	a5,0004200E
	lw	a5,a5,+000001F8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023034DE0

l23034DD8:
	c.swsp	a0,00000084
	jal	ra,0000000023033532
	c.lwsp	a2,00000044

l23034DE0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23034DEA:
	lui	a5,0004200E
	lw	s1,a5,+000001F8
	c.j	0000000023034DA2

;; prvCheckForValidListAndQueue: 23034DF4
;;   Called from:
;;     23034ED4 (in xTimerCreateTimerTask)
;;     23034F58 (in xTimerCreate)
;;     23034FD4 (in xTimerCreateStatic)
prvCheckForValidListAndQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,+0000023C
	jal	ra,00000000230347A4
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034E1C

l23034E0E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230347B8

l23034E1C:
	lui	a5,00042013
	addi	a0,a5,-000000D4
	addi	s2,a5,-000000D4
	jal	ra,0000000023032154
	lui	a5,00042013
	addi	a0,a5,-000000C0
	addi	s1,a5,-000000C0
	jal	ra,0000000023032154
	lui	a5,0004200E
	lui	a3,00042013
	lui	a2,00042013
	sw	s2,a5,+00000230
	c.li	a4,00000000
	lui	a5,0004200E
	addi	a3,a3,-000000AC
	addi	a2,a2,-00000114
	c.li	a1,00000010
	c.li	a0,00000004
	sw	s1,a5,+00000234
	jal	ra,00000000230323F0
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023034E0E

l23034E6A:
	lui	a1,00023079
	addi	a1,a1,-000005BC
	jal	ra,0000000023032B9E
	c.j	0000000023034E0E

;; prvInsertTimerInActiveList: 23034E78
;;   Called from:
;;     23035312 (in prvTimerTask)
prvInsertTimerInActiveList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.sw	a0,4(a1)
	c.sw	a0,16(a0)
	c.mv	a5,a0
	bltu	a2,a1,0000000023034E96

l23034E86:
	c.lw	a0,24(a4)
	c.sub	a2,a3
	c.li	a0,00000001
	bltu	a2,a4,0000000023034EB8

l23034E90:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23034E96:
	bgeu	a2,a3,0000000023034EA0

l23034E9A:
	c.li	a0,00000001
	bgeu	a1,a3,0000000023034E90

l23034EA0:
	lui	a4,0004200E
	lw	a0,a4,+00000230
	addi	a1,a5,+00000004
	jal	ra,0000000023032184
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23034EB8:
	lui	a4,0004200E
	lw	a0,a4,+00000234
	addi	a1,a5,+00000004
	jal	ra,0000000023032184
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; xTimerCreateTimerTask: 23034ED0
;;   Called from:
;;     23033A9E (in vTaskStartScheduler)
xTimerCreateTimerTask proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,0000000023034DF4
	lui	a5,0004200E
	lw	a5,a5,+0000023C
	c.beqz	a5,0000000023034F20

l23034EE2:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023001482
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000008
	c.lwsp	a2,00000084
	lui	a1,00023079
	lui	a0,00023035
	c.li	a4,0000001F
	c.li	a3,00000000
	addi	a1,a1,-000005B4
	addi	a0,a0,+0000013C
	jal	ra,0000000023033750
	lui	a5,0004200E
	sw	a0,a5,+00000240
	c.beqz	a0,0000000023034F20

l23034F18:
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l23034F20:
	jal	ra,000000002300149E
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; xTimerCreate: 23034F2C
;;   Called from:
;;     230252D8 (in k_timer_init)
xTimerCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a0
	addi	a0,zero,+0000002C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	s4,a3
	c.mv	s3,a4
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,0000000023034F82

l23034F52:
	sb	zero,a0,+00000028
	c.beqz	s1,0000000023034F96

l23034F58:
	jal	ra,0000000023034DF4
	addi	a0,s0,+00000004
	sw	s5,s0,+00000000
	c.sw	s0,24(s1)
	sw	s4,s0,+0000001C
	sw	s3,s0,+00000020
	jal	ra,0000000023032168
	beq	s2,zero,0000000023034F82

l23034F76:
	lbu	a5,s0,+00000028
	ori	a5,a5,+00000004
	sb	a5,s0,+00000028

l23034F82:
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

l23034F96:
	jal	ra,000000002300149E
	c.j	0000000023034F58

;; xTimerCreateStatic: 23034F9C
;;   Called from:
;;     23003FB8 (in stateConnectedIPNoEnter)
;;     23004BD4 (in stateDisconnect_enter)
;;     23005054 (in wifi_mgmr_start)
xTimerCreateStatic proc
	c.addi16sp	FFFFFFD0
	addi	a6,zero,+0000002C
	c.swsp	a6,00000084
	c.lwsp	a2,00000028
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.mv	s5,a4
	c.mv	s0,a5
	beq	a7,a6,0000000023034FC8

l23034FC4:
	jal	ra,000000002300149E

l23034FC8:
	c.lwsp	a2,000000E4
	c.beqz	s0,0000000023035018

l23034FCC:
	c.li	a5,00000002
	sb	a5,s0,+00000028
	c.beqz	s1,0000000023035012

l23034FD4:
	jal	ra,0000000023034DF4
	addi	a0,s0,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,24(s1)
	sw	s4,s0,+0000001C
	sw	s5,s0,+00000020
	jal	ra,0000000023032168
	beq	s3,zero,0000000023034FFE

l23034FF2:
	lbu	a5,s0,+00000028
	ori	a5,a5,+00000004
	sb	a5,s0,+00000028

l23034FFE:
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

l23035012:
	jal	ra,000000002300149E
	c.j	0000000023034FD4

l23035018:
	jal	ra,000000002300149E
	c.j	0000000023034FFE

;; xTimerGenericCommand: 2303501E
;;   Called from:
;;     23003DA0 (in stateConnectedIPNoExit)
;;     23003DB4 (in stateConnectedIPNoExit)
;;     23003FCA (in stateConnectedIPNoEnter)
;;     230047BE (in stateDisconnect_exit)
;;     230047CC (in stateDisconnect_exit)
;;     23004BF2 (in stateDisconnect_enter)
;;     23005072 (in wifi_mgmr_start)
;;     2302530A (in k_timer_stop)
;;     2302533A (in k_timer_delete)
;;     230253A0 (in k_timer_start)
;;     230253C2 (in k_timer_start)
;;     230253E0 (in k_timer_start)
;;     23035130 (in prvSwitchTimerLists)
;;     23035322 (in prvTimerTask)
xTimerGenericCommand proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s1,a0
	c.mv	s2,a3
	c.mv	s3,a4
	c.beqz	a0,000000002303508A

l23035032:
	lui	s0,0004200E
	addi	s0,s0,+0000023C
	c.lw	s0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023035062

l23035040:
	c.swsp	a1,00000008
	c.swsp	a2,00000088
	c.swsp	s1,0000000C
	c.li	a3,00000005
	blt	a3,a1,0000000023035070

l2303504C:
	jal	ra,00000000230344C8
	c.li	a5,00000002
	beq	a0,a5,0000000023035098

l23035056:
	c.lw	s0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,0000000023032528

l23035062:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23035070:
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	c.mv	a0,a5
	jal	ra,00000000230326EC
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303508A:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002300149E
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.j	0000000023035032

l23035098:
	c.lw	s0,0(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	jal	ra,0000000023032528
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; prvSwitchTimerLists: 230350B2
;;   Called from:
;;     230352AC (in prvTimerTask)
;;     230352BA (in prvTimerTask)
prvSwitchTimerLists proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	addi	s2,s2,+00000230
	c.j	00000000230350E8

l230350C8:
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	lw	s3,a5,+00000000
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,00000000230321B4
	c.lw	s0,32(a5)
	c.mv	a0,s0
	c.jalr	a5
	lbu	a5,s0,+00000028
	c.andi	a5,00000004
	c.bnez	a5,000000002303510E

l230350E8:
	lw	a5,s2,+00000000
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230350C8

l230350F0:
	lui	a4,0004200E
	addi	a4,a4,+00000234
	c.lw	a4,0(a3)
	c.sw	a4,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a3,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303510E:
	c.lw	s0,24(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.add	a5,s3
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s0
	bgeu	s3,a5,0000000023035130

l23035120:
	lw	a0,s2,+00000000
	c.sw	s0,4(a5)
	c.sw	s0,16(s0)
	c.mv	a1,s1
	jal	ra,0000000023032184
	c.j	00000000230350E8

l23035130:
	jal	ra,000000002303501E
	c.bnez	a0,00000000230350E8

l23035136:
	jal	ra,000000002300149E
	c.j	00000000230350E8

;; prvTimerTask: 2303513C
prvTimerTask proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	lui	s4,0004200E
	lui	s1,0004200E
	lui	s3,0004200E
	lui	s6,00023079
	lui	s7,0004200E
	c.swsp	s5,00000098
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s8,00000014
	addi	s4,s4,+00000230
	addi	s1,s1,+00000238
	addi	s3,s3,+0000023C
	addi	s6,s6,-000005E4
	addi	s7,s7,+00000234
	c.li	s5,00000009

l2303517C:
	lw	a5,s4,+00000000
	lw	s2,a5,+00000000
	beq	s2,zero,000000002303528E

l23035188:
	c.lw	a5,12(a5)
	lw	s2,a5,+00000000
	jal	ra,0000000023033AE0
	jal	ra,0000000023033AF0
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,00000000230352AC

l2303519E:
	c.sw	s1,0(a0)
	c.li	a2,00000000
	bgeu	a0,s2,00000000230352C2

l230351A6:
	lw	a0,s3,+00000000
	sub	a1,s2,s0
	jal	ra,0000000023032BC6
	jal	ra,0000000023033CBC
	c.bnez	a0,00000000230351BC

l230351B8:
	ecall

l230351BC:
	lw	a0,s3,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,0000000023032820
	c.beqz	a0,000000002303517C

l230351CA:
	c.lwsp	a6,000000E4
	c.lwsp	s8,00000004
	blt	a5,zero,000000002303527C

l230351D2:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230351DE

l230351D6:
	addi	a0,s0,+00000004
	jal	ra,00000000230321B4

l230351DE:
	jal	ra,0000000023033AF0
	c.lw	s1,0(a5)
	bltu	a0,a5,00000000230352B8

l230351E8:
	c.lwsp	a6,000000E4
	c.sw	s1,0(a0)
	bltu	s5,a5,00000000230351BC

l230351F0:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5
230351F8                         83 47 84 02 D2 45 93 E7         .G...E..
23035200 17 00 23 04 F4 02 0C CC 63 85 05 0E AA 86 2A 86 ..#.....c.....*.
23035210 AA 95 22 85 EF F0 5F C6 55 B7 83 47 84 02 F9 9B .."..._.U..G....
23035220 23 04 F4 02 61 BF 83 47 84 02 13 F7 27 00 61 CB #...a..G....'.a.
23035230 F9 9B 23 04 F4 02 59 B7 83 47 84 02 0C 4C D2 46 ..#...Y..G...L.F
23035240 93 E7 17 00 2A 86 23 04 F4 02 B6 95 22 85 EF F0 ....*.#....."...
23035250 BF C2 2D D5 1C 50 22 85 82 97 83 47 84 02 91 8B ..-..P"....G....
23035260 B1 DF 1C 4C 52 46 01 47 81 46 3E 96 81 45 22 85 ...LRF.G.F>..E".
23035270 EF F0 FF DA 21 F5 EF C0 8C A2 89 B7             ....!.......   

l2303527C:
	c.lwsp	s4,000000E4
	c.lwsp	t3,00000064
	c.mv	a0,s0
	c.jalr	a5
	c.lwsp	a6,000000E4
	blt	a5,zero,00000000230351BC

l2303528A:
	c.lwsp	s8,00000004
	c.j	00000000230351D2

l2303528E:
	jal	ra,0000000023033AE0
	jal	ra,0000000023033AF0
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,00000000230352AC

l2303529E:
	lw	a5,s7,+00000000
	c.sw	s1,0(s0)
	c.lw	a5,0(a2)
	sltiu	a2,a2,+00000001
	c.j	00000000230351A6

l230352AC:
	jal	ra,00000000230350B2
	c.sw	s1,0(s0)
	jal	ra,0000000023033CBC
	c.j	00000000230351BC

l230352B8:
	c.swsp	a0,00000084
	jal	ra,00000000230350B2
	c.lwsp	a2,00000044
	c.j	00000000230351E8

l230352C2:
	jal	ra,0000000023033CBC
	lw	a5,s4,+00000000
	c.lw	a5,12(a5)
	lw	s8,a5,+0000000C
	addi	a0,s8,+00000004
	jal	ra,00000000230321B4
	lbu	a5,s8,+00000028
	andi	a4,a5,+00000004
	c.bnez	a4,0000000023035306

l230352E2:
	c.andi	a5,FFFFFFFE
	sb	a5,s8,+00000028

l230352E8:
	lw	a5,s8,+00000020
	c.mv	a0,s8
	c.jalr	a5
	c.j	00000000230351BC
230352F2       2A C6 EF C0 AC 9A 0C 4C 32 45 01 BF 22 85   *......L2E..".
23035300 EF 00 20 77 65 BD                               .. we.         

l23035306:
	lw	a1,s8,+00000018
	c.mv	a3,s2
	c.mv	a2,s0
	c.add	a1,s2
	c.mv	a0,s8
	jal	ra,0000000023034E78
	c.beqz	a0,00000000230352E8

l23035318:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,000000002303501E
	c.bnez	a0,00000000230352E8

l23035328:
	jal	ra,000000002300149E
	c.j	00000000230352E8

;; pvTimerGetTimerID: 2303532E
;;   Called from:
;;     23003F60 (in ip_obtaining_timeout)
;;     23004732 (in __reload_tsen)
;;     230047F6 (in disconnect_retry)
pvTimerGetTimerID proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002303534C

l23035338:
	jal	ra,00000000230347A4
	c.lw	s0,28(s0)
	jal	ra,00000000230347B8
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303534C:
	jal	ra,000000002300149E
	c.j	0000000023035338

;; vPortSetupTimerInterrupt: 23035352
;;   Called from:
;;     230353B4 (in xPortStartScheduler)
vPortSetupTimerInterrupt proc
	lui	a5,0000200C

l23035356:
	lw	a3,a5,-00000004
	lw	a2,a5,-00000008
	lw	a4,a5,-00000004
	bne	a4,a3,0000000023035356

l23035366:
	c.lui	a3,00002000
	addi	a3,a3,+00000710
	c.add	a3,a2
	c.lui	a5,00005000
	sltu	a6,a3,a2
	c.mv	a0,a3
	addi	a5,a5,-000001E0
	lui	a3,00002004
	c.sw	a3,0(a0)
	c.add	a5,a2
	add	a1,a6,a4
	c.sw	a3,4(a1)
	sltu	a2,a5,a2
	lui	a3,0004200E
	addi	a3,a3,+00000248
	c.add	a4,a2
	c.sw	a3,0(a5)
	c.sw	a3,4(a4)
	c.jr	ra

;; xPortStartScheduler: 2303539C
;;   Called from:
;;     23033AC6 (in vTaskStartScheduler)
xPortStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	csrrs	a5,mtvec,t0
	c.swsp	a5,00000084
	lui	a5,00042040
	addi	a5,a5,+00000000
	c.andi	a5,00000007
	c.bnez	a5,00000000230353D6

l230353B4:
	jal	ra,0000000023035352
	c.lui	a5,00001000
	addi	a5,a5,-00000780
	csrrs	zero,mie,tp
	lui	a5,00002800
	c.li	a4,00000001
	sb	a4,a5,+00000407
	c.jal	0000000023035700
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230353D6:
	jal	ra,000000002300149E
	c.j	00000000230353B4
230353DC                                     00 00 00 00             ....
230353E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23035400 13 01 81 F8 06 C2 16 C4 1A C6 1E C8 22 CA 26 CC ............".&.
23035410 2A CE 2E D0 32 D2 36 D4 3A D6 3E D8 42 DA 46 DC *...2.6.:.>.B.F.
23035420 4A DE CE C0 D2 C2 D6 C4 DA C6 DE C8 E2 CA E6 CC J...............
23035430 EA CE EE D0 F2 D2 F6 D4 FA D6 FE D8 F3 22 00 30 .............".0
23035440 96 DA 13 01 81 F7 02 E2 06 E4 0A E6 0E E8 12 EA ................
23035450 16 EC 1A EE 1E F0 22 F2 26 F4 2A F6 2E F8 32 FA ......".&.*...2.
23035460 36 FC 3A FE BE E0 C2 E2 C6 E4 CA E6 CE E8 D2 EA 6.:.............
23035470 D6 EC DA EE DE F0 E2 F2 E6 F4 EA F6 EE F8 F2 FA ................
23035480 F6 FC FA FE 7E E1 F3 22 30 00 16 C3 97 82 FD 1E ....~.."0.......
23035490 83 A2 C2 7D 03 A3 02 00 05 03 23 A0 62 00 97 92 ...}......#.b...
230354A0 FD 1E 83 A2 A2 D5 23 A0 22 00 73 25 20 34 B7 02 ......#.".s% 4..
230354B0 80 80 93 82 F2 FF 33 75 55 00 F3 25 10 34 13 56 ......3uU..%.4.V
230354C0 F5 01 25 CA 2E C0 93 02 10 00 FE 02 13 83 72 00 ..%...........r.
230354D0 63 1A 65 04 97 D2 04 00 83 A2 82 2B 17 83 FD 1E c.e........+....
230354E0 03 23 03 79 83 23 03 00 03 2E 43 00 23 A0 72 00 .#.y.#....C.#.r.
230354F0 23 A2 C2 01 97 D2 04 00 83 A2 C2 29 B3 8E 72 00 #..........)..r.
23035500 33 BF 7E 00 B3 0F EE 01 23 20 D3 01 23 22 F3 01 3.~.....# ..#"..
23035510 17 D1 04 00 03 21 41 28 EF E0 4F E0 31 C5 EF E0 .....!A(..O.1...
23035520 5F 93 99 A0 17 D1 04 00 03 21 01 27 EF 10 00 3A _........!.'...:
23035530 25 A8 91 05 2E C0 AD 42 63 19 55 00 17 D1 04 00 %......Bc.U.....
23035540 03 21 81 25 EF E0 FF 90 05 A0 73 25 20 34 F3 25 .!.%......s% 4.%
23035550 10 34 73 26 30 34 B3 06 01 00 EF 10 00 3C 29 A0 .4s&04.......<).
23035560 02 90 FD BF 02 90 FD BF 97 82 FD 1E 83 A2 02 70 ...............p
23035570 03 A3 02 00 7D 13 23 A0 62 00 17 93 FD 1E 03 23 ....}.#.b......#
23035580 E3 C7 03 21 03 00 82 42 73 90 12 34 12 60 A2 60 ...!...Bs..4.`.`
23035590 32 61 C2 61 52 62 E2 62 72 63 82 73 12 74 A2 74 2a.aRb.brc.s.t.t
230355A0 32 75 C2 75 52 76 E2 76 72 77 86 67 16 68 A6 68 2u.uRv.vrw.g.h.h
230355B0 36 69 C6 69 56 6A E6 6A 76 6B 86 7B 16 7C A6 7C 6i.iVj.jvk.{.|.|
230355C0 36 7D C6 7D 56 7E E6 7E 76 7F 8A 6F 9A 42 73 90 6}.}V~.~v..o.Bs.
230355D0 32 00 13 01 81 08 D6 52 73 90 02 30 92 40 A2 42 2......Rs..0.@.B
230355E0 32 43 C2 43 52 44 E2 44 72 45 82 55 12 56 A2 56 2C.CRD.DrE.U.V.V
230355F0 32 57 C2 57 52 58 E2 58 72 59 86 49 16 4A A6 4A 2W.WRX.XrY.I.J.J
23035600 36 4B C6 4B 56 4C E6 4C 76 4D 86 5D 16 5E A6 5E 6K.KVL.LvM.].^.^
23035610 36 5F C6 5F 13 01 81 07 73 00 20 30 13 00 00 00 6_._....s. 0....
23035620 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035630 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035640 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035650 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035660 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035670 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035680 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23035690 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356A0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356B0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356C0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356D0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356E0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230356F0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................

;; fn23035700: 23035700
;;   Called from:
;;     230353CC (in xPortStartScheduler)
fn23035700 proc
	auipc	t0,00000000
	addi	t0,t0,-00000300
	c.addi	t0,00000002
	csrrw	zero,mtvec,t0
	auipc	sp,0001EFD9
	lw	sp,sp,-00000516
	c.lwsp	zero,00000040
	c.lwsp	zero,00000020
	c.ldsp	tp,00000000
	c.ldsp	s0,00000040
	c.ldsp	a2,00000080
	c.ldsp	a6,000000C0
	c.ldsp	s4,00000100
	c.ldsp	s8,00000140
	c.ldsp	t3,00000180
	c.ldsp	zero,000003E0
	c.ldsp	tp,00000228
	c.ldsp	s0,00000268
	c.ldsp	a2,000002A8
	c.ldsp	a6,000002E8
	c.ldsp	s4,00000328
	c.ldsp	s8,00000368
	c.ldsp	t3,000003A8
	c.ldsp	ra,000001C8
	c.ldsp	t0,00000010
	c.ldsp	s1,00000050
	c.ldsp	a3,00000090
	c.ldsp	a7,000000D0
	c.ldsp	s5,00000110
	c.ldsp	s9,00000150
	c.ldsp	t4,00000190
	c.ldsp	ra,000003F0
	c.ldsp	t0,00000238
	c.ldsp	s1,00000278
	c.ldsp	a3,000002B8
	c.ldsp	a7,000002F8
	c.ldsp	s5,00000338
	c.ldsp	s9,00000378
	c.ldsp	t4,000003B8
	c.ldsp	sp,000001D8
	c.lwsp	t1,000000A0
	csrrw	zero,fcsr,gp
	addi	sp,sp,+00000088
	c.lwsp	s5,000001B0
	csrrw	zero,mstatus,zero
	c.lwsp	s0,000000A0
	c.lwsp	a2,000000C0
	c.lwsp	a6,000000E0
	c.lwsp	s4,00000004
	c.lwsp	s8,00000024
	c.lwsp	t3,00000044
	c.lwsp	zero,00000174
	c.lwsp	tp,00000194
	c.lwsp	s0,000001B4
	c.lwsp	a2,000001D4
	c.lwsp	a6,000001F4
	c.lwsp	s4,00000118
	c.lwsp	s8,00000138
	c.lwsp	t3,00000158
	c.lwsp	ra,00000068
	c.lwsp	t0,00000088
	c.lwsp	s1,000000A8
	c.lwsp	a3,000000C8
	c.lwsp	a7,000000E8
	c.lwsp	s5,0000000C
	c.lwsp	s9,0000002C
	c.lwsp	t4,0000004C
	c.lwsp	ra,0000017C
	c.lwsp	t0,0000019C
	c.lwsp	s1,000001BC
	c.lwsp	a3,000001DC
	c.lwsp	a7,000001FC
	addi	sp,sp,+00000078
	c.jr	ra
230357A6                   13 00 00 00 13 00 00 00 13 00       ..........
230357B0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230357C0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230357D0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230357E0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230357F0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 01 00 ................

;; fn23035800: 23035800
;;   Called from:
;;     230333FC (in prvInitialiseNewTask.isra.2)
fn23035800 proc
	csrrs	t0,mstatus,zero
	lui	t1,00000002
	addi	t1,t1,-00000780
	or	t0,t0,t1
	andi	t0,t0,-00000009
	c.addi	a0,FFFFFFFC
	sw	t0,a0,+00000000
	addi	a0,a0,-00000058
	c.sw	a0,0(a2)
	c.addi	a0,FFFFFFE8
	sw	zero,a0,+00000000
	addi	t0,zero,+00000022

l2303582A:
	beq	t0,zero,0000000023035838

l2303582E:
	c.addi	a0,FFFFFFFC
	sw	zero,a0,+00000000
	c.addi	t0,FFFFFFFF
	c.j	000000002303582A

l23035838:
	c.addi	a0,FFFFFFFC
	c.sw	a0,0(a1)
	c.jr	ra
2303583E                                           00 00               ..
23035840 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23035930 00 00 00 00 00 00 00 00                         ........       

;; prvInsertBlockIntoFreeList: 23035938
;;   Called from:
;;     23035A64 (in pvPortMalloc)
;;     23035AF2 (in vPortFree)
prvInsertBlockIntoFreeList proc
	lui	a4,0004200E
	addi	a4,a4,+00000260
	c.j	0000000023035944

l23035942:
	c.mv	a4,a5

l23035944:
	c.lw	a4,0(a5)
	bltu	a5,a0,0000000023035942

l2303594A:
	c.lw	a4,4(a2)
	c.lw	a0,4(a3)
	add	a1,a4,a2
	beq	a0,a1,0000000023035982

l23035956:
	add	a2,a0,a3
	beq	a5,a2,0000000023035968

l2303595E:
	c.sw	a0,0(a5)

l23035960:
	beq	a0,a4,0000000023035966

l23035964:
	c.sw	a4,0(a0)

l23035966:
	c.jr	ra

l23035968:
	lui	a2,0004200E
	lw	a2,a2,+00000250
	beq	a5,a2,000000002303595E

l23035974:
	c.lw	a5,4(a5)
	c.add	a3,a5
	c.sw	a0,4(a3)
	c.lw	a4,0(a5)
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	c.j	0000000023035960

l23035982:
	c.add	a3,a2
	c.sw	a4,4(a3)
	c.mv	a0,a4
	c.j	0000000023035956

;; pvPortMalloc: 2303598A
;;   Called from:
;;     23001784 (in blsync_init)
;;     23002122 (in inode_reserve)
;;     230021CA (in aos_loop_init)
;;     2300224A (in aos_poll_read_fd)
;;     23002254 (in aos_poll_read_fd)
;;     2300231A (in aos_post_delayed_action)
;;     23002622 (in aos_task_new)
;;     2300262A (in aos_task_new)
;;     23002632 (in aos_task_new)
;;     23002878 (in aos_malloc)
;;     23002884 (in malloc)
;;     23008508 (in bl_send_msg)
;;     230085A4 (in bl_msg_zalloc.constprop.3)
;;     2300A3A6 (in bl_ipc_init)
;;     23025428 (in k_malloc)
;;     2302DB4A (in __malloc)
;;     2302F2EE (in ps_cmd)
;;     2302F52A (in ls_cmd)
;;     23030736 (in dns_server_init)
;;     23032490 (in xQueueGenericCreate)
;;     230324A8 (in xQueueGenericCreate)
;;     23032E06 (in xStreamBufferGenericCreate)
;;     23033814 (in xTaskCreate)
;;     23033820 (in xTaskCreate)
;;     23034806 (in vTaskList)
;;     23034F4A (in xTimerCreate)
;;     2303644E (in bl_dma_irq_register)
;;     2303653E (in bl_dma_init)
;;     230365A0 (in bl_dma_init)
;;     23037118 (in dev_uart_init)
;;     2303718C (in dev_uart_init)
;;     2303A356 (in loopset_led_trigger)
;;     23054C70 (in Encrypt_keyData)
;;     23054C7C (in Encrypt_keyData)
;;     23054E24 (in cm_AllocAPResources)
;;     23054E32 (in cm_AllocAPResources)
;;     23054E7A (in cm_InitConnection)
;;     2306763A (in bl_mtd_open)
pvPortMalloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s1,s1,+00000250
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023035A6C

l230359A6:
	jal	ra,0000000023033AE0
	lui	a5,0004200E
	lw	s2,a5,+00000254
	and	a5,s2,s0
	c.bnez	a5,00000000230359BA

l230359B8:
	c.bnez	s0,00000000230359D6

l230359BA:
	jal	ra,0000000023033CBC

l230359BE:
	jal	ra,0000000023001448
	c.li	s1,00000000

l230359C4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230359D6:
	addi	a5,s0,+00000008
	andi	a4,a5,+00000007
	c.bnez	a4,0000000023035A56

l230359E0:
	c.beqz	a5,00000000230359BA

l230359E2:
	lui	s3,0004200E
	addi	s3,s3,+00000258
	lw	s4,s3,+00000000
	bltu	s4,a5,00000000230359BA

l230359F2:
	lui	a3,0004200E
	lw	s0,a3,+00000260
	addi	a3,a3,+00000260
	c.j	0000000023035A08

l23035A00:
	c.lw	s0,0(a4)
	c.beqz	a4,0000000023035A0E

l23035A04:
	c.mv	a3,s0
	c.mv	s0,a4

l23035A08:
	c.lw	s0,4(a4)
	bltu	a4,a5,0000000023035A00

l23035A0E:
	c.lw	s1,0(a4)
	beq	a4,s0,00000000230359BA

l23035A14:
	c.lw	s0,0(a4)
	c.lw	a3,0(s1)
	c.li	a2,00000010
	c.sw	a3,0(a4)
	c.lw	s0,4(a4)
	c.addi	s1,00000008
	sub	a3,a4,a5
	bltu	a2,a3,0000000023035A5C

l23035A28:
	lui	a5,0004200E
	addi	a5,a5,+0000025C
	c.lw	a5,0(a3)
	sub	s4,s4,a4
	sw	s4,s3,+00000000
	bgeu	s4,a3,0000000023035A42

l23035A3E:
	sw	s4,a5,+00000000

l23035A42:
	or	s2,s2,a4
	sw	s2,s0,+00000004
	sw	zero,s0,+00000000
	jal	ra,0000000023033CBC
	c.bnez	s1,00000000230359C4

l23035A54:
	c.j	00000000230359BE

l23035A56:
	c.andi	a5,FFFFFFF8
	c.addi	a5,00000008
	c.j	00000000230359E0

l23035A5C:
	add	a0,s0,a5
	c.sw	a0,4(a3)
	c.sw	s0,4(a5)
	jal	ra,0000000023035938
	c.lw	s0,4(a4)
	c.j	0000000023035A28

l23035A6C:
	jal	ra,000000002300149E
	c.j	00000000230359A6

;; vPortFree: 23035A72
;;   Called from:
;;     230016DC (in blesync_complete_cb)
;;     23001812 (in blsync_ble_stop)
;;     2300226C (in aos_poll_read_fd)
;;     23002272 (in aos_poll_read_fd)
;;     230022BC (in aos_poll_read_fd)
;;     230022D2 (in aos_poll_read_fd)
;;     23002466 (in aos_loop_run)
;;     230025EE (in dfl_entry)
;;     23002694 (in aos_task_new)
;;     2300269A (in aos_task_new)
;;     230026A0 (in aos_task_new)
;;     2300287C (in free)
;;     23002880 (in aos_free)
;;     23008496 (in bl_send_msg)
;;     23008512 (in bl_send_msg)
;;     23008582 (in bl_send_msg)
;;     2300AA2C (in cmd_complete.isra.1)
;;     2300ABB8 (in cmd_mgr_llind)
;;     2300ACD2 (in cmd_mgr_queue)
;;     2302542C (in k_free)
;;     2302DC08 (in __free)
;;     2302F352 (in ps_cmd)
;;     2302F5E0 (in ls_cmd)
;;     23032144 (in vEventGroupDelete)
;;     23032B40 (in vQueueDelete)
;;     23032B8C (in vQueueDelete)
;;     23032F16 (in vStreamBufferDelete)
;;     23032F3C (in vStreamBufferDelete)
;;     23033448 (in prvDeleteTCB)
;;     23033454 (in prvDeleteTCB)
;;     23033458 (in prvDeleteTCB)
;;     23033864 (in xTaskCreate)
;;     230348B4 (in vTaskList)
;;     23044C0A (in aos_register_driver)
;;     23044C90 (in aos_register_fs)
;;     230545FC (in GeneratePWKMsg3)
;;     23054602 (in GeneratePWKMsg3)
;;     2305473C (in GenerateApEapolMsg)
;;     23054744 (in GenerateApEapolMsg)
;;     23054CD8 (in Encrypt_keyData)
;;     23054CDE (in Encrypt_keyData)
;;     23054E9E (in cm_InitConnection)
;;     23054F1E (in cm_DeleteConnection)
;;     23054F24 (in cm_DeleteConnection)
;;     23054F3A (in cm_DeleteConnection)
;;     23067CEA (in bloop_run)
vPortFree proc
	c.beqz	a0,0000000023035B02

l23035A74:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s1,s1,+00000254
	lw	a4,a0,-00000004
	c.lw	s1,0(a5)
	c.mv	s0,a0
	and	a3,a4,a5
	c.beqz	a3,0000000023035AB8

l23035A92:
	lw	a3,a0,-00000008
	c.beqz	a3,0000000023035ACE

l23035A98:
	jal	ra,000000002300149E
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,0000000023035AAE

l23035AA8:
	lw	a3,s0,-00000008
	c.beqz	a3,0000000023035ACE

l23035AAE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23035AB8:
	jal	ra,000000002300149E
	lw	a5,s0,-00000008
	c.bnez	a5,0000000023035A98

l23035AC2:
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,0000000023035AAE

l23035ACE:
	xori	a5,a5,-00000001
	c.and	a5,a4
	sw	a5,s0,+00000FFC
	jal	ra,0000000023033AE0
	lui	a5,0004200E
	addi	a5,a5,+00000258
	c.lw	a5,0(a3)
	lw	a4,s0,-00000004
	addi	a0,s0,-00000008
	c.add	a4,a3
	c.sw	a5,0(a4)
	jal	ra,0000000023035938
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023033CBC

l23035B02:
	c.jr	ra

;; xPortGetFreeHeapSize: 23035B04
;;   Called from:
;;     2300144C (in vApplicationMallocFailedHook)
;;     2302F880 (in version_cmd)
xPortGetFreeHeapSize proc
	lui	a5,0004200E
	lw	a0,a5,+00000258
	c.jr	ra

;; vPortDefineHeapRegions: 23035B0E
;;   Called from:
;;     23001612 (in bfl_main)
vPortDefineHeapRegions proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	lui	s6,0004200E
	addi	s6,s6,+00000250
	lw	a5,s6,+00000000
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.mv	s3,a0
	c.beqz	a5,0000000023035BF8

l23035B32:
	jal	ra,000000002300149E
	lw	s0,s3,+00000004
	c.beqz	s0,0000000023035BFC

l23035B3C:
	lw	a5,s6,+00000000

l23035B40:
	lui	s7,0004200E
	c.li	s4,00000000
	c.li	s5,00000000
	addi	s7,s7,+00000260

l23035B4C:
	lw	s1,s3,+00000000
	andi	a4,s1,+00000007
	c.mv	s2,s1
	c.beqz	a4,0000000023035B66

l23035B58:
	addi	a4,s1,+00000007
	c.andi	a4,FFFFFFF8
	c.add	s0,s1
	c.sub	s0,a4
	c.mv	s1,a4
	c.mv	s2,a4

l23035B66:
	bne	s4,zero,0000000023035BDC

l23035B6A:
	sw	s1,s7,+00000000
	sw	zero,s7,+00000004
	c.mv	a4,a5

l23035B74:
	c.add	s0,s2
	c.addi	s0,FFFFFFF8
	andi	a5,s0,-00000008
	sw	zero,a5,+00000004
	sw	zero,a5,+00000000
	sub	s2,a5,s2
	sw	a5,s6,+00000000
	sw	s2,s1,+00000004
	c.sw	s1,0(a5)
	c.beqz	a4,0000000023035B9A

l23035B94:
	c.sw	a4,0(s1)
	lw	s2,s1,+00000004

l23035B9A:
	c.addi	s3,00000008
	lw	s0,s3,+00000004
	c.add	s5,s2
	c.addi	s4,00000001
	c.bnez	s0,0000000023035B4C

l23035BA6:
	lui	a5,0004200E
	sw	s5,a5,+0000025C
	lui	a5,0004200E
	sw	s5,a5,+00000258
	beq	s5,zero,0000000023035C0C

l23035BBA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200E
	lui	a4,00080000
	sw	a4,a5,+00000254
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23035BDC:
	c.beqz	a5,0000000023035BEE

l23035BDE:
	c.mv	a4,a5
	bltu	a5,s2,0000000023035B74

l23035BE4:
	jal	ra,000000002300149E
	lw	a4,s6,+00000000
	c.j	0000000023035B74

l23035BEE:
	jal	ra,000000002300149E
	lw	a5,s6,+00000000
	c.j	0000000023035BDE

l23035BF8:
	c.lw	a0,4(s0)
	c.bnez	s0,0000000023035B40

l23035BFC:
	lui	a5,0004200E
	sw	zero,a5,+0000025C
	lui	a5,0004200E
	sw	zero,a5,+00000258

l23035C0C:
	jal	ra,000000002300149E
	c.j	0000000023035BBA

;; uart_generic_notify_handler: 23035C12
;;   Called from:
;;     23035D06 (in UART0_IRQHandler)
;;     23035D0C (in UART1_IRQHandler)
uart_generic_notify_handler proc
	lui	a5,00023082
	slli	a4,a0,00000002
	addi	a5,a5,+00000798
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s3,00000084
	lw	s3,a5,+00000000
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lw	s1,s3,+00000020
	lw	s0,s3,+00000024
	c.mv	s2,a0
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023035C4C

l23035C40:
	andi	a5,s0,+00000001
	c.bnez	a5,0000000023035C4C

l23035C46:
	c.li	a5,00000001
	sw	a5,s3,+00000028

l23035C4C:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023035C74

l23035C52:
	andi	a5,s0,+00000002
	c.bnez	a5,0000000023035C74

l23035C58:
	c.li	a5,00000002
	lui	a4,00042013
	addi	a4,a4,-0000005C
	sw	a5,s3,+00000028
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023035C74

l23035C70:
	c.lw	a5,4(a0)
	c.jalr	a4

l23035C74:
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023035C96

l23035C7A:
	andi	a5,s0,+00000004
	c.bnez	a5,0000000023035C96

l23035C80:
	lui	a4,00042013
	addi	a4,a4,-0000005C
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.beqz	a4,0000000023035C96

l23035C92:
	c.lw	a5,12(a0)
	c.jalr	a4

l23035C96:
	andi	a5,s1,+00000008
	c.beqz	a5,0000000023035CB8

l23035C9C:
	andi	a5,s0,+00000008
	c.bnez	a5,0000000023035CB8

l23035CA2:
	lui	a4,00042013
	addi	a4,a4,-0000005C
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023035CB8

l23035CB4:
	c.lw	a5,4(a0)
	c.jalr	a4

l23035CB8:
	andi	a5,s1,+00000010
	c.beqz	a5,0000000023035CE2

l23035CBE:
	andi	a5,s0,+00000010
	c.bnez	a5,0000000023035CE2

l23035CC4:
	c.li	a5,00000010
	sw	a5,s3,+00000028
	lui	a5,00042013
	addi	a5,a5,-0000005C
	c.slli	s2,04
	c.add	s2,a5
	lw	a5,s2,+00000000
	c.beqz	a5,0000000023035CE2

l23035CDC:
	lw	a0,s2,+00000004
	c.jalr	a5

l23035CE2:
	andi	s1,s1,+00000020
	c.beqz	s1,0000000023035CF6

l23035CE8:
	andi	s0,s0,+00000020
	c.bnez	s0,0000000023035CF6

l23035CEE:
	addi	a5,zero,+00000020
	sw	a5,s3,+00000028

l23035CF6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; UART0_IRQHandler: 23035D04
UART0_IRQHandler proc
	c.li	a0,00000000
	jal	zero,0000000023035C12

;; UART1_IRQHandler: 23035D0A
UART1_IRQHandler proc
	c.li	a0,00000001
	jal	zero,0000000023035C12

;; bl_uart_init: 23035D10
;;   Called from:
;;     230014DC (in bfl_main)
;;     23037A06 (in vfs_uart_init)
bl_uart_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.mv	s3,a1
	lui	a1,00023079
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,-000005AC
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.mv	s4,a5
	jal	ra,000000002306CF80
	lui	a5,0004200E
	lw	a5,a5,-000002F0
	lui	s1,0004200E
	addi	s1,s1,+00000268
	c.swsp	a5,00000080
	lbu	a5,s1,+00000000
	c.bnez	a5,0000000023035D5E

l23035D4E:
	c.li	a2,00000003
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,0000000023045EFA
	c.li	a5,00000001
	sb	a5,s1,+00000000

l23035D5E:
	c.li	a5,00000007
	sb	a5,sp,+00000009
	c.li	s1,00000002
	addi	a5,zero,+00000101
	c.addi4spn	a0,00000008
	sb	s2,sp,+00000008
	sh	s1,sp,+0000000A
	sh	a5,sp,+0000000C
	auipc	ra,0001EFD7
	jalr	ra,ra,-000007A0
	c.addi4spn	a0,00000008
	sb	s3,sp,+00000008
	sh	s1,sp,+0000000A
	auipc	ra,0001EFD7
	jalr	ra,ra,-000007B2
	c.beqz	s0,0000000023035DFA

l23035D94:
	c.li	s1,00000007
	c.li	a1,00000006

l23035D98:
	andi	a0,s3,+00000007
	jal	ra,0000000023045F88
	c.mv	a1,s1
	andi	a0,s2,+00000007
	jal	ra,0000000023045F88
	lui	a5,00002626
	addi	a5,a5,-00000600
	c.li	a2,00000001
	c.li	a1,00000008
	c.mv	a0,s0
	c.swsp	a5,00000008
	c.swsp	s4,00000088
	jal	ra,00000000230452C6
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023045254
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,00000000230450C2
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230452A2
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230451B6
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023045220
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l23035DFA:
	c.li	s1,00000003
	c.li	a1,00000002
	c.j	0000000023035D98

;; bl_uart_data_send: 23035E00
;;   Called from:
;;     23003A64 (in vprint)
;;     23003A7E (in bl_putchar)
;;     23003AAA (in puts)
;;     23037376 (in hal_uart_send)
bl_uart_data_send proc
	lui	a5,00023082
	slli	a4,a0,00000002
	addi	a5,a5,+00000798
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s1,00000088
	c.lw	a5,0(s1)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0

l23035E1A:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,0000000023045304
	c.lwsp	a2,00000064
	c.beqz	a0,0000000023035E1A

l23035E26:
	sb	a1,s1,+00000088
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_data_recv: 23035E36
;;   Called from:
;;     23037320 (in hal_uart_recv_II)
bl_uart_data_recv proc
	lui	a5,00023082
	slli	a4,a0,00000002
	addi	a5,a5,+00000798
	c.addi	sp,FFFFFFF0
	c.add	a5,a4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a5,0(s0)
	jal	ra,000000002304538E
	c.beqz	a0,0000000023035E62

l23035E52:
	lbu	a0,s0,+0000008C
	andi	a0,a0,+000000FF

l23035E5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23035E62:
	c.li	a0,FFFFFFFF
	c.j	0000000023035E5A

;; bl_uart_int_rx_enable: 23035E66
;;   Called from:
;;     23035F8A (in bl_uart_int_enable)
;;     23035FB0 (in bl_uart_int_enable)
bl_uart_int_rx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023045284
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,00000000230452C6
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230452C6
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000004
	jal	ra,00000000230452C6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_rx_disable: 23035E9C
;;   Called from:
;;     23035FE4 (in bl_uart_int_disable)
;;     23036008 (in bl_uart_int_disable)
bl_uart_int_rx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,00000000230452C6
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230452C6
	c.mv	a0,s0
	c.li	a2,00000001
	c.li	a1,00000004
	jal	ra,00000000230452C6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_enable: 23035ECA
;;   Called from:
;;     23035F90 (in bl_uart_int_enable)
;;     23035FB6 (in bl_uart_int_enable)
;;     23037296 (in hal_uart_send_trigger)
bl_uart_int_tx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,00000000230452C6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_disable: 23035EDE
;;   Called from:
;;     23035FEA (in bl_uart_int_disable)
;;     2303600E (in bl_uart_int_disable)
;;     230372AA (in hal_uart_send_trigger_off)
bl_uart_int_tx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,00000000230452C6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_flush: 23035EF2
;;   Called from:
;;     230379EE (in vfs_uart_init)
;;     23037C04 (in hal_uart_send_flush)
bl_uart_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,zero,+00000020

l23035F00:
	c.mv	a0,s1
	jal	ra,0000000023045304
	bne	a0,s0,0000000023035F00

l23035F0A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_getdefconfig: 23035F16
;;   Called from:
;;     230372D4 (in hal_uart_init)
bl_uart_getdefconfig proc
	c.beqz	a1,0000000023035F1C

l23035F18:
	sb	zero,a1,+00000000

l23035F1C:
	c.jr	ra

;; bl_uart_setconfig: 23035F1E
;;   Called from:
;;     23035F72 (in bl_uart_setbaud)
;;     23037C1C (in hal_uart_setconfig)
bl_uart_setconfig proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a1
	lui	a1,00023079
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a2
	addi	a1,a1,-0000059C
	c.li	a2,00000010
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306CF80
	c.li	a1,00000002
	c.mv	a0,s0
	c.swsp	s2,00000080
	sb	s1,sp,+0000000A
	jal	ra,0000000023045254
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,00000000230450C2
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230452A2
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023045220
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_setbaud: 23035F70
;;   Called from:
;;     23037C14 (in hal_uart_setbaud)
bl_uart_setbaud proc
	c.li	a2,00000000
	jal	zero,0000000023035F1E

;; bl_uart_int_enable: 23035F76
;;   Called from:
;;     230372E6 (in hal_uart_init)
bl_uart_int_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,0000000023035F8A

l23035F7C:
	c.li	a4,00000001
	beq	a0,a4,0000000023035FB0

l23035F82:
	c.li	a0,FFFFFFFF

l23035F84:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23035F8A:
	jal	ra,0000000023035E66
	c.li	a0,00000000
	jal	ra,0000000023035ECA
	lui	a1,00023036
	addi	a0,zero,+0000002D
	addi	a1,a1,-000002FC
	jal	ra,0000000023036822
	addi	a0,zero,+0000002D

l23035FA8:
	jal	ra,00000000230366A8
	c.li	a0,00000000
	c.j	0000000023035F84

l23035FB0:
	jal	ra,0000000023035E66
	c.li	a0,00000001
	jal	ra,0000000023035ECA
	lui	a1,00023036
	addi	a0,zero,+0000002E
	addi	a1,a1,-000002F6
	jal	ra,0000000023036822
	addi	a0,zero,+0000002E
	c.j	0000000023035FA8

;; bl_uart_int_disable: 23035FD0
;;   Called from:
;;     23037388 (in hal_uart_finalize)
bl_uart_int_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,0000000023035FE4

l23035FD6:
	c.li	a4,00000001
	beq	a0,a4,0000000023036008

l23035FDC:
	c.li	a0,FFFFFFFF

l23035FDE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23035FE4:
	jal	ra,0000000023035E9C
	c.li	a0,00000000
	jal	ra,0000000023035EDE
	lui	a1,00023036
	addi	a0,zero,+0000002D
	addi	a1,a1,-000002FC
	jal	ra,0000000023036828
	addi	a0,zero,+0000002D

l23036002:
	c.jal	00000000230366BA
	c.li	a0,00000000
	c.j	0000000023035FDE

l23036008:
	jal	ra,0000000023035E9C
	c.li	a0,00000001
	jal	ra,0000000023035EDE
	lui	a1,00023036
	addi	a0,zero,+0000002E
	addi	a1,a1,-000002F6
	jal	ra,0000000023036828
	addi	a0,zero,+0000002E
	c.j	0000000023036002

;; bl_uart_int_rx_notify_register: 23036028
;;   Called from:
;;     230373C8 (in hal_uart_notify_register)
bl_uart_int_rx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023036044

l2303602E:
	slli	a5,a0,00000004
	lui	a0,00042013
	addi	a0,a0,-0000005C
	c.add	a0,a5
	c.sw	a0,0(a1)
	c.sw	a0,4(a2)
	c.li	a0,00000000
	c.jr	ra

l23036044:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_uart_int_tx_notify_register: 23036048
;;   Called from:
;;     230373AC (in hal_uart_notify_register)
bl_uart_int_tx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023036064

l2303604E:
	slli	a5,a0,00000004
	lui	a0,00042013
	addi	a0,a0,-0000005C
	c.add	a0,a5
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.li	a0,00000000
	c.jr	ra

l23036064:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_chip_info: 23036068
;;   Called from:
;;     23001538 (in bfl_main)
bl_chip_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	zero,00000084
	csrrs	a5,misa,ra
	c.swsp	a5,00000084
	c.lwsp	a2,00000024
	c.li	a4,00000002
	srli	a5,s1,0000001E
	beq	a5,a4,00000000230360A8

l23036086:
	c.li	a4,00000003
	beq	a5,a4,00000000230360F4

l2303608C:
	c.li	a4,00000001
	addi	s0,a0,+00000004
	c.li	a2,00000004
	bne	a5,a4,0000000023036108

l23036098:
	lui	a1,00023079
	addi	a1,a1,-000002D0

l230360A0:
	jal	ra,000000002306CF80
	c.mv	a0,s0
	c.j	00000000230360BA

l230360A8:
	lui	a1,00023079
	c.li	a2,00000004
	addi	a1,a1,-000002C8
	jal	ra,000000002306CF80
	addi	a0,s0,+00000004

l230360BA:
	addi	a5,zero,+0000002D
	sb	a5,a0,+00000000
	addi	a4,a0,+00000001
	c.li	a5,00000000
	c.li	a1,00000001
	c.li	a2,0000001A

l230360CC:
	sll	a3,a1,a5
	c.and	a3,s1
	c.beqz	a3,00000000230360DE

l230360D4:
	addi	a3,a5,+00000041
	sb	a3,a4,+00000000
	c.addi	a4,00000001

l230360DE:
	c.addi	a5,00000001
	bne	a5,a2,00000000230360CC

l230360E4:
	sb	zero,a4,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230360F4:
	lui	a1,00023079
	c.li	a2,00000005
	addi	a1,a1,-000002C0
	jal	ra,000000002306CF80
	addi	a0,s0,+00000005
	c.j	00000000230360BA

l23036108:
	lui	a1,00023079
	addi	a1,a1,-000002B8
	c.j	00000000230360A0

;; bl_chip_banner: 23036112
;;   Called from:
;;     230014FE (in bfl_main)
bl_chip_banner proc
	lui	a5,00023079
	addi	a5,a5,-0000058C
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; bl_chip_memory_ram: 23036120
;;   Called from:
;;     2302F87A (in version_cmd)
bl_chip_memory_ram proc
	c.lw	a0,0(a4)
	c.li	a5,00000002
	bge	a5,a4,00000000230361B6

l23036128:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000003
	c.sw	a0,0(a5)
	lui	a5,00023000
	addi	a5,a5,+00000000
	c.sw	a1,0(a5)
	lui	a5,00000400
	c.mv	s2,a1
	addi	a5,a5,+00000000
	lui	a1,00023079
	c.sw	a2,0(a5)
	c.mv	a0,a3
	addi	a1,a1,-000002B0
	c.mv	s0,a3
	c.mv	s1,a2
	jal	ra,000000002306D580
	lui	a5,0004200C
	addi	a5,a5,+00000000
	sw	a5,s2,+00000004
	lui	a5,00000034
	addi	a5,a5,+00000000
	lui	a1,00023079
	c.sw	s1,4(a5)
	addi	a1,a1,-000002A8
	addi	a0,s0,+00000006
	jal	ra,000000002306D580
	lui	a5,00042040
	addi	a5,a5,+00000000
	sw	a5,s2,+00000008
	c.lui	a5,0000A000
	addi	a5,a5,+00000000
	lui	a1,00023079
	c.sw	s1,8(a5)
	addi	a0,s0,+0000000C
	addi	a1,a1,-000002A4
	jal	ra,000000002306D580
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230361B6:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_sys_reset_por: 230361BA
;;   Called from:
;;     23038124 (in hal_reboot)
bl_sys_reset_por proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFD6
	jalr	ra,ra,+000003E4

l230361CA:
	c.j	00000000230361CA

;; bl_sys_reset_system: 230361CC
;;   Called from:
;;     23038128 (in hal_sys_reset)
bl_sys_reset_system proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFD6
	jalr	ra,ra,+000003BE

l230361DC:
	c.j	00000000230361DC

;; bl_sys_isxipaddr: 230361DE
;;   Called from:
;;     23067814 (in bl_mtd_write)
bl_sys_isxipaddr proc
	lui	a5,000FF000
	c.and	a0,a5
	lui	a5,000DD000
	c.add	a0,a5
	lui	a5,000DF000
	c.and	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; bl_sys_em_config: 230361F6
;;   Called from:
;;     23036240 (in bl_sys_init)
bl_sys_em_config proc
	c.addi	sp,FFFFFFF0
	c.lui	a5,00002000
	c.swsp	ra,00000084
	addi	a5,a5,+00000000
	c.lui	a4,00002000
	beq	a5,a4,0000000023036210

l23036206:
	c.lui	a4,00004000
	bne	a5,a4,0000000023036216

l2303620C:
	c.li	a0,0000000F
	c.j	0000000023036212

l23036210:
	c.li	a0,00000003

l23036212:
	jal	ra,0000000023045F38

l23036216:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_early_init: 2303621E
;;   Called from:
;;     230014C2 (in bfl_main)
bl_sys_early_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023046010
	lui	a5,00023035
	addi	a5,a5,+00000400
	csrrw	zero,mtvec,t0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_init: 2303623C
;;   Called from:
;;     230014EC (in bfl_main)
bl_sys_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230361F6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_dma_int_process: 2303624C
bl_dma_int_process proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	lui	a5,0004000C
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.lw	a5,4(s0)
	c.li	s2,00000000
	lw	s7,a5,+0000000C
	c.li	s8,00000001
	c.jal	00000000230367FC
	lui	s3,0004000C
	c.li	s6,00000004

l2303627C:
	sll	a5,s8,s2
	and	s5,a5,s0
	and	s4,a5,s7
	bne	s5,zero,00000000230362C6

l2303628C:
	beq	s4,zero,00000000230362A8

l23036290:
	lw	s0,s3,+00000010
	c.or	s0,a5
	sw	s0,s3,+00000010

l2303629A:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s1)

l230362A0:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	bne	s1,a5,00000000230362D6

l230362A8:
	c.addi	s2,00000001
	bne	s2,s6,000000002303627C

l230362AE:
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

l230362C6:
	lw	s0,s3,+00000008
	c.or	s0,a5
	sw	s0,s3,+00000008
	beq	s4,zero,000000002303629A

l230362D4:
	c.j	0000000023036290

l230362D6:
	c.lw	s1,8(a5)
	bne	a5,s2,00000000230362F0

l230362DC:
	c.lw	s1,12(a5)
	c.beqz	a5,00000000230362E6

l230362E0:
	beq	s5,zero,00000000230362E6

l230362E4:
	c.jalr	a5

l230362E6:
	c.lw	s1,16(a5)
	c.beqz	a5,00000000230362F0

l230362EA:
	beq	s4,zero,00000000230362F0

l230362EE:
	c.jalr	a5

l230362F0:
	c.lw	s1,4(s1)
	c.j	00000000230362A0

;; bl_dma_int_clear: 230362F4
;;   Called from:
;;     23036332 (in bl_dma_IRQHandler)
bl_dma_int_clear proc
	lui	a3,0004000C
	c.lw	a3,4(a4)
	c.li	a5,00000001
	sll	a0,a5,a0
	c.and	a4,a0
	andi	a4,a4,+000000FF
	c.beqz	a4,000000002303630E

l23036308:
	c.lw	a3,8(a5)
	c.or	a5,a0
	c.sw	a3,8(a5)

l2303630E:
	lui	a4,0004000C
	c.lw	a4,12(a5)
	c.and	a5,a0
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023036322

l2303631C:
	c.lw	a4,16(a5)
	c.or	a0,a5
	c.sw	a4,16(a0)

l23036322:
	c.li	a0,00000000
	c.jr	ra

;; bl_dma_IRQHandler: 23036326
bl_dma_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200E
	jal	ra,00000000230362F4
	addi	a0,s0,+0000026C
	jal	ra,00000000230447B2
	c.bnez	a0,0000000023036392

l23036340:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,000000002303638A

l2303634E:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,000000002303638A

l2303635A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303638C

l23036364:
	jal	ra,0000000023033B12

l23036368:
	lui	a3,00023079
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+0000009D
	addi	a3,a3,-0000029C
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000024C
	jal	ra,00000000230018FA

l2303638A:
	c.j	000000002303638A

l2303638C:
	jal	ra,0000000023033AF0
	c.j	0000000023036368

l23036392:
	c.lw	a0,4(a5)
	c.beqz	a5,000000002303639A

l23036396:
	c.lw	a0,8(a0)
	c.jalr	a5

l2303639A:
	lw	a1,s0,+0000026C
	c.beqz	a1,00000000230363B4

l230363A0:
	c.li	a0,00000000
	c.addi	a1,0000000C
	jal	ra,0000000023045E5E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023045E12

l230363B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_dma_irq_register: 230363BC
;;   Called from:
;;     23036640 (in bl_dma_init)
bl_dma_irq_register proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	a5,00000004
	bltu	a5,a0,00000000230363D4

l230363D0:
	c.mv	s2,a1
	c.bnez	a1,0000000023036436

l230363D4:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,000000002303641E

l230363E2:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,000000002303641E

l230363EE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023036430

l230363F8:
	jal	ra,0000000023033B12

l230363FC:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+0000011C
	addi	a3,a3,-0000029C
	addi	a2,a2,-000001B4
	addi	a0,a0,-000001A4
	jal	ra,00000000230018FA

l2303641E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFFF
	c.addi16sp	00000030
	c.jr	ra

l23036430:
	jal	ra,0000000023033AF0
	c.j	00000000230363FC

l23036436:
	c.mv	s1,a0
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.mv	s4,a2
	c.mv	s3,a3
	c.jal	00000000230367FC
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s0)

l23036448:
	bne	a5,s0,00000000230364BE

l2303644C:
	c.li	a0,00000018
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.bnez	a0,00000000230364A0

l23036456:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230364A0

l23036464:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,00000000230364A0

l23036470:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303651C

l2303647A:
	jal	ra,0000000023033B12

l2303647E:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+0000012A
	addi	a3,a3,-0000029C
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000148
	jal	ra,00000000230018FA

l230364A0:
	c.lwsp	a2,000000E4
	c.sw	s0,8(s1)
	sw	s2,s0,+0000000C
	sw	s4,s0,+00000010
	sw	s3,s0,+00000014
	c.lw	a5,0(a5)
	c.lw	a5,4(a4)
	c.sw	s0,0(a5)
	c.sw	s0,4(a4)
	c.sw	a5,4(s0)
	c.sw	a4,0(s0)
	c.j	000000002303641E

l230364BE:
	c.lw	s0,8(a4)
	bne	s1,a4,0000000023036518

l230364C4:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000003
	bltu	a5,a4,000000002303641E

l230364D2:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,000000002303641E

l230364DE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023036512

l230364E8:
	jal	ra,0000000023033B12

l230364EC:
	c.lw	s0,8(a5)
	c.mv	a1,a0
	lui	a3,00023079
	lui	a2,00023078
	lui	a0,00023079
	addi	a4,zero,+00000124
	addi	a3,a3,-0000029C
	addi	a2,a2,+000001B4
	addi	a0,a0,-0000017C
	jal	ra,00000000230018FA
	c.j	000000002303641E

l23036512:
	jal	ra,0000000023033AF0
	c.j	00000000230364EC

l23036518:
	c.lw	s0,4(s0)
	c.j	0000000023036448

l2303651C:
	jal	ra,0000000023033AF0
	c.j	000000002303647E

;; bl_dma_init: 23036522
;;   Called from:
;;     23001650 (in bfl_main)
bl_dma_init proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+0000026C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,0000000023044794
	c.li	a0,00000004
	jal	ra,000000002303598A
	c.bnez	a0,000000002303659C

l23036544:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,000000002303658E

l23036552:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,000000002303658E

l2303655E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023036596

l23036568:
	jal	ra,0000000023033B12

l2303656C:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+00000180
	addi	a3,a3,-0000029C
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000214

l2303658A:
	jal	ra,00000000230018FA

l2303658E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23036596:
	jal	ra,0000000023033AF0
	c.j	000000002303656C

l2303659C:
	c.mv	s0,a0
	c.li	a0,00000008
	jal	ra,000000002303598A
	c.sw	s0,0(a0)
	c.bnez	a0,00000000230365F6

l230365A8:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,000000002303658E

l230365B6:
	lui	a4,0004201A
	lbu	a4,a4,+0000053C
	bltu	a5,a4,000000002303658E

l230365C2:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230365F0

l230365CC:
	jal	ra,0000000023033B12

l230365D0:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+00000187
	addi	a3,a3,-0000029C
	addi	a2,a2,-000001B4
	addi	a0,a0,-000001E8
	c.j	000000002303658A

l230365F0:
	jal	ra,0000000023033AF0
	c.j	00000000230365D0

l230365F6:
	c.sw	a0,4(a0)
	c.sw	a0,0(a0)
	jal	ra,0000000023045E04
	c.li	a2,00000001
	c.li	a1,00000002
	c.li	a0,00000000
	jal	ra,0000000023045E74
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023045E74
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023045E74
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,0000000023045E28
	lui	a1,00023036
	c.mv	a2,s0
	addi	a1,a1,+0000024C
	c.li	a0,0000001F
	c.jal	00000000230366D6
	lui	a1,00023036
	c.li	a3,00000000
	c.li	a2,00000000
	addi	a1,a1,+00000326
	c.li	a0,00000000
	jal	ra,00000000230363BC
	c.li	a0,0000001F
	c.jal	00000000230366A8
	c.j	000000002303658E

;; _irq_num_check.part.0: 2303664A
;;   Called from:
;;     230366EC (in bl_irq_register_with_ctx)
;;     23036808 (in bl_irq_ctx_get)
;;     2303683C (in bl_irq_unregister)
_irq_num_check.part.0 proc
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230366A6

l23036658:
	lui	a4,0004201A
	lbu	a4,a4,+0000053D
	bltu	a5,a4,00000000230366A6

l23036664:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a5,00000000230366A0

l23036676:
	jal	ra,0000000023033B12

l2303667A:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s0
	addi	a4,zero,+00000070
	addi	a3,a3,-000000C8
	addi	a2,a2,-000001B4
	addi	a0,a0,-000000BC
	jal	ra,00000000230018FA

l2303669E:
	c.j	000000002303669E

l230366A0:
	jal	ra,0000000023033AF0
	c.j	000000002303667A

l230366A6:
	c.j	00000000230366A6

;; bl_irq_enable: 230366A8
;;   Called from:
;;     2300B056 (in ble_controller_init)
;;     23035FA8 (in bl_uart_int_enable)
;;     23036646 (in bl_dma_init)
;;     23036D94 (in bl_sec_init)
;;     23036E7C (in bl_wifi_enable_irq)
;;     23036E84 (in bl_wifi_enable_irq)
bl_irq_enable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.jr	ra

;; bl_irq_disable: 230366BA
;;   Called from:
;;     2300B0C4 (in ble_controller_deinit)
;;     23036002 (in bl_uart_int_disable)
bl_irq_disable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	sb	zero,a0,+00000000
	c.jr	ra

;; bl_irq_pending_clear: 230366CA
;;   Called from:
;;     2300B03E (in ble_controller_init)
bl_irq_pending_clear proc
	lui	a5,00002800
	c.add	a0,a5
	sb	zero,a0,+00000000
	c.jr	ra

;; bl_irq_register_with_ctx: 230366D6
;;   Called from:
;;     23036630 (in bl_dma_init)
;;     23036824 (in bl_irq_register)
bl_irq_register_with_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	a5,zero,+0000004F
	bgeu	a5,a0,00000000230366F0

l230366EC:
	jal	ra,000000002303664A

l230366F0:
	lui	s2,00042013
	addi	a5,s2,-0000003C
	slli	s1,a0,00000002
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s3,a2
	addi	s2,s2,-0000003C
	c.beqz	a5,0000000023036764

l2303670C:
	beq	a5,a1,00000000230367D6

l23036710:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000003
	bltu	a5,a4,0000000023036764

l2303671E:
	lui	a4,0004201A
	lbu	a4,a4,+0000053D
	bltu	a5,a4,00000000230367D4

l2303672A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230367C2

l23036734:
	jal	ra,0000000023033B12

l23036738:
	add	a5,s2,s1
	lw	a6,a5,+00000000
	lui	a3,00023079
	lui	a2,00023078
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s0
	addi	a4,zero,+0000007E
	addi	a3,a3,-000000C8
	addi	a2,a2,+000001B4
	addi	a0,a0,-00000060
	jal	ra,00000000230018FA

l23036764:
	bne	s4,zero,00000000230367D6

l23036768:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230367EC

l23036776:
	lui	a5,0004201A
	lbu	a4,a5,+0000053D
	c.li	a5,00000004
	bltu	a5,a4,00000000230367EC

l23036784:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230367C8

l2303678E:
	jal	ra,0000000023033B12

l23036792:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+00000082
	addi	a3,a3,-000000C8
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000028
	c.addi16sp	00000020
	jal	zero,00000000230018FA

l230367C2:
	jal	ra,0000000023033AF0
	c.j	0000000023036738

l230367C8:
	jal	ra,0000000023033AF0
	c.j	0000000023036792

l230367CE:
	sw	s3,s0,+00000000
	c.j	00000000230367EC

l230367D4:
	c.beqz	a1,0000000023036776

l230367D6:
	addi	s0,s0,+00000050
	c.add	s1,s2
	c.slli	s0,02
	sw	s4,s1,+00000000
	c.add	s0,s2
	bne	s3,zero,00000000230367CE

l230367E8:
	sw	zero,s0,+00000000

l230367EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bl_irq_ctx_get: 230367FC
;;   Called from:
;;     23036274 (in bl_dma_int_process)
;;     23036440 (in bl_dma_irq_register)
bl_irq_ctx_get proc
	addi	a4,zero,+0000004F
	bgeu	a4,a0,000000002303680C

l23036804:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303664A

l2303680C:
	addi	a5,a0,+00000050
	lui	a4,00042013
	c.slli	a5,02
	addi	a4,a4,-0000003C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; bl_irq_register: 23036822
;;   Called from:
;;     2300B04E (in ble_controller_init)
;;     23035FA0 (in bl_uart_int_enable)
;;     23035FC6 (in bl_uart_int_enable)
;;     23036D8E (in bl_sec_init)
;;     23036E64 (in bl_wifi_enable_irq)
;;     23036E74 (in bl_wifi_enable_irq)
bl_irq_register proc
	c.li	a2,00000000
	jal	zero,00000000230366D6

;; bl_irq_unregister: 23036828
;;   Called from:
;;     23035FFA (in bl_uart_int_disable)
;;     2303601E (in bl_uart_int_disable)
bl_irq_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,zero,+0000004F
	bgeu	a5,a0,0000000023036840

l2303683C:
	jal	ra,000000002303664A

l23036840:
	lui	s0,00042013
	addi	a5,s0,-0000003C
	slli	s3,a0,00000002
	c.add	a5,s3
	c.lw	a5,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,s0,-0000003C
	beq	a5,a1,00000000230368B2

l2303685C:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000003
	bltu	a5,a4,00000000230368B2

l2303686A:
	lui	a4,0004201A
	lbu	a4,a4,+0000053D
	bltu	a5,a4,00000000230368B2

l23036876:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230368C6

l23036880:
	jal	ra,0000000023033B12

l23036884:
	add	a5,s0,s3
	lw	a7,a5,+00000000
	lui	a3,00023079
	lui	a2,00023078
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s2
	c.mv	a5,s1
	addi	a4,zero,+000000A8
	addi	a3,a3,-000000C8
	addi	a2,a2,+000001B4
	addi	a0,a0,+00000008
	jal	ra,00000000230018FA

l230368B2:
	c.add	s0,s3
	sw	s2,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230368C6:
	jal	ra,0000000023033AF0
	c.j	0000000023036884

;; interrupt_entry: 230368CC
interrupt_entry proc
	slli	a2,a0,00000005
	c.srli	a2,00000005
	addi	a5,zero,+0000004F
	bltu	a5,a2,0000000023036900

l230368DA:
	lui	a5,00042013
	addi	a5,a5,-0000003C
	slli	a4,a2,00000002
	c.add	a4,a5
	lw	t1,a4,+00000000
	beq	t1,zero,0000000023036900

l230368F0:
	addi	a2,a2,+00000050
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.beqz	a0,00000000230368FE

l230368FC:
	c.jr	t1

l230368FE:
	c.jr	t1

l23036900:
	addi	a4,a2,-00000010
	lui	a0,00023079
	c.addi	sp,FFFFFFF0
	c.mv	a3,a4
	c.mv	a1,a2
	addi	a0,a0,+000002B0
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6

l23036918:
	c.j	0000000023036918

;; exception_entry: 2303691A
exception_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.mv	a0,a3
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	andi	a4,s0,+000003FF
	c.li	a3,00000004
	bne	a4,a3,0000000023036944

l23036932:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023067FDC

l23036944:
	c.li	a3,00000006
	bne	a4,a3,000000002303695C

l2303694A:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002306812E

l2303695C:
	c.mv	s2,a0
	lui	a0,00023079
	addi	a0,a0,+00000044
	c.mv	s1,a1
	c.swsp	a2,00000084
	jal	ra,0000000023003A8A
	c.lwsp	a2,000000A4
	lui	a0,00023079
	c.mv	a1,s0
	c.mv	a2,s1
	addi	a0,a0,+0000005C
	jal	ra,0000000023003AC6
	c.slli	s0,10
	c.srli	s0,00000010
	lui	a0,00023079
	c.mv	a1,s0
	addi	a0,a0,+00000084
	jal	ra,0000000023003AC6
	c.li	a5,0000000F
	bltu	a5,s0,0000000023036A50

l23036998:
	lui	a5,00023079
	addi	a5,a5,-00000108
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.jr	a5
230369A8                         37 95 07 23 13 05 C5 09         7..#....

l230369B0:
	jal	ra,0000000023003A8A
	lui	a0,00023004
	c.mv	a1,s2
	addi	a0,a0,-0000053A
	jal	ra,000000002306847A

l230369C2:
	c.j	00000000230369C2
230369C4             37 95 07 23 13 05 45 0C D5 B7 37 95     7..#..E...7.
230369D0 07 23 13 05 85 0E E9 BF 37 95 07 23 13 05 85 10 .#......7..#....
230369E0 C1 BF 37 95 07 23 13 05 C5 11 D9 B7 37 95 07 23 ..7..#......7..#
230369F0 13 05 05 14 75 BF 37 95 07 23 13 05 C5 15 4D BF ....u.7..#....M.
23036A00 37 95 07 23 13 05 45 18 65 B7 37 95 07 23 13 05 7..#..E.e.7..#..
23036A10 45 1A 79 BF 37 95 07 23 13 05 C5 1C 51 BF 37 95 E.y.7..#....Q.7.
23036A20 07 23 13 05 45 1F 69 B7 37 95 07 23 13 05 85 20 .#..E.i.7..#... 
23036A30 41 B7 37 95 07 23 13 05 05 23 9D BF 37 95 07 23 A.7..#...#..7..#
23036A40 13 05 05 25 B5 B7 37 95 07 23 13 05 C5 26 8D B7 ...%..7..#...&..

l23036A50:
	lui	a0,00023079
	addi	a0,a0,+0000028C
	c.j	00000000230369B0

;; bl_irq_init: 23036A5A
;;   Called from:
;;     23001644 (in bfl_main)
bl_irq_init proc
	lui	a0,00023079
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000094
	c.swsp	ra,00000084
	jal	ra,0000000023003A8A
	lui	a5,00002800
	addi	a4,a5,+00000400
	addi	a5,a5,+00000480

l23036A76:
	sb	zero,a4,+00000000
	c.addi	a4,00000001
	bne	a4,a5,0000000023036A76

l23036A80:
	lui	a5,00002800
	addi	a4,a5,+00000080

l23036A88:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023036A88

l23036A92:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; _trng_trigger: 23036A98
;;   Called from:
;;     23036C6E (in bl_sec_get_random_word)
;;     23036CB6 (in bl_rand_stream)
;;     23036CD2 (in bl_rand_stream)
;;     23036CF8 (in bl_rand_stream)
;;     23036D74 (in bl_sec_init)
;;     23036D7C (in bl_sec_init)
_trng_trigger proc
	lui	a5,00040004
	lw	a4,a5,+00000200
	andi	a3,a4,+00000001
	c.bnez	a3,0000000023036AC2

l23036AA6:
	lui	a3,00042013
	addi	a3,a3,+00000294
	c.lw	a3,0(a2)
	ori	a4,a4,+00000606
	sw	a2,a5,+0000022C
	c.lw	a3,4(a3)
	sw	a3,a5,+00000230
	sw	a4,a5,+00000200

l23036AC2:
	c.jr	ra

;; wait_trng4feed: 23036AC4
;;   Called from:
;;     23036CBA (in bl_rand_stream)
;;     23036CD6 (in bl_rand_stream)
;;     23036CFC (in bl_rand_stream)
;;     23036D78 (in bl_sec_init)
;;     23036D80 (in bl_sec_init)
wait_trng4feed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00040004
	lw	a5,a5,+00000200
	lui	a3,00040004

l23036AD6:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023036B7A

l23036ADC:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	lui	a4,00040004
	sw	a5,a4,+00000200
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	lui	s0,00042013
	c.li	a5,00000001
	addi	s0,s0,+00000294
	bltu	a5,a4,0000000023036B3E

l23036B00:
	lui	a4,0004201A
	lbu	a4,a4,+0000053E
	bltu	a5,a4,0000000023036B3E

l23036B0C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023036B80

l23036B16:
	jal	ra,0000000023033B12

l23036B1A:
	c.lw	s0,0(a5)
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+0000005B
	addi	a3,a3,+000003EC
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000400
	jal	ra,00000000230018FA

l23036B3E:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23036B7A:
	lw	a5,a3,+00000200
	c.j	0000000023036AD6

l23036B80:
	jal	ra,0000000023033AF0
	c.j	0000000023036B1A

;; sec_trng_IRQHandler: 23036B86
sec_trng_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023002888
	blt	zero,a1,0000000023036BAA

l23036B94:
	c.bnez	a1,0000000023036B9E

l23036B96:
	addi	a5,zero,+000007CF
	bltu	a5,a0,0000000023036BAA

l23036B9E:
	lui	a0,00023079
	addi	a0,a0,+00000394
	jal	ra,0000000023003A8A

l23036BAA:
	lui	a4,00040004
	lw	a5,a4,+00000200
	lui	s0,00042013
	addi	s0,s0,+00000294
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	sw	a5,a4,+00000200
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023036C10

l23036BD2:
	lui	a4,0004201A
	lbu	a4,a4,+0000053E
	bltu	a5,a4,0000000023036C10

l23036BDE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023036C4C

l23036BE8:
	jal	ra,0000000023033B12

l23036BEC:
	c.lw	s0,0(a5)
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+000000AB
	addi	a3,a3,+000003EC
	addi	a2,a2,+000003F8
	addi	a0,a0,+000003B0
	jal	ra,00000000230018FA

l23036C10:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23036C4C:
	jal	ra,0000000023033AF0
	c.j	0000000023036BEC

;; bl_sec_get_random_word: 23036C52
;;   Called from:
;;     23036D32 (in bl_rand)
bl_sec_get_random_word proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a4,a5,+00000278
	c.lw	a4,0(s0)
	addi	s1,a5,+00000278
	c.andi	s0,00000007
	c.sw	a4,0(s0)
	c.bnez	s0,0000000023036C72

l23036C6E:
	jal	ra,0000000023036A98

l23036C72:
	addi	a5,s0,+00000001
	c.sw	s1,0(a5)
	lui	a5,00042013
	c.slli	s0,02
	addi	a5,a5,+00000294
	c.add	s0,a5
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bl_rand_stream: 23036C90
;;   Called from:
;;     230521E0 (in supplicantGenerateRand)
bl_rand_stream proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200E
	lw	a5,s0,+00000278
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.mv	s4,a0
	c.mv	s1,a1
	addi	s0,s0,+00000278
	c.beqz	a5,0000000023036CC2

l23036CB6:
	jal	ra,0000000023036A98
	jal	ra,0000000023036AC4
	sw	zero,s0,+00000000

l23036CC2:
	c.li	s3,00000000
	addi	s5,zero,+00000020
	lui	s6,00042013
	c.li	s7,0000001F

l23036CCE:
	blt	zero,s1,0000000023036CF4

l23036CD2:
	jal	ra,0000000023036A98
	jal	ra,0000000023036AC4
	c.lwsp	a2,00000130
	sw	zero,s0,+00000000
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

l23036CF4:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023036D04

l23036CF8:
	jal	ra,0000000023036A98
	jal	ra,0000000023036AC4
	sw	zero,s0,+00000000

l23036D04:
	c.mv	s2,s1
	bge	s5,s1,0000000023036D0E

l23036D0A:
	addi	s2,zero,+00000020

l23036D0E:
	add	a0,s4,s3
	c.mv	a2,s2
	addi	a1,s6,+00000294
	jal	ra,000000002306CF80
	c.add	s3,s2
	sub	s1,s1,s2
	sw	s7,s0,+00000000
	c.j	0000000023036CCE

;; bl_rand: 23036D28
;;   Called from:
;;     2300D566 (in ecc_gen_new_secret_key)
;;     2300D584 (in ecc_gen_new_secret_key)
;;     2300D5A2 (in ecc_gen_new_secret_key)
;;     2300D5C0 (in ecc_gen_new_secret_key)
;;     2300D5DE (in ecc_gen_new_secret_key)
;;     2300D5FC (in ecc_gen_new_secret_key)
;;     2300D61A (in ecc_gen_new_secret_key)
;;     2300D638 (in ecc_gen_new_secret_key)
;;     23013758 (in lld_con_start)
;;     2301378E (in lld_con_start)
;;     23015FF8 (in llm_init)
;;     2301999E (in llc_task_random_gen_request)
;;     230199B0 (in llc_task_random_gen_request)
;;     2301BCD6 (in hci_le_rand_cmd_handler)
;;     2301BCF4 (in hci_le_rand_cmd_handler)
;;     2302541C (in k_get_random_byte_array)
;;     23036DB2 (in bl_sec_test)
;;     23036DC4 (in bl_sec_test)
;;     2303AFA2 (in dhcp_create_msg)
;;     2303CDCA (in igmp_delaying_member)
;;     2303EBE8 (in tcp_init)
;;     230423B6 (in udp_init)
bl_rand proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,00000013

l23036D32:
	jal	ra,0000000023036C52
	c.addi	s0,FFFFFFFF
	c.mv	s1,a0
	c.bnez	s0,0000000023036D56

l23036D3C:
	lui	a0,00023079
	addi	a0,a0,+00000300
	jal	ra,0000000023003A8A

l23036D48:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	srli	a0,s1,00000001
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23036D56:
	c.beqz	a0,0000000023036D32

l23036D58:
	c.j	0000000023036D48

;; bl_sec_init: 23036D5A
;;   Called from:
;;     23001648 (in bfl_main)
bl_sec_init proc
	lui	a1,00042013
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+00000244
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023032680
	lui	a5,0004200E
	sw	a0,a5,+00000274
	jal	ra,0000000023036A98
	jal	ra,0000000023036AC4
	jal	ra,0000000023036A98
	jal	ra,0000000023036AC4
	lui	a1,00023037
	addi	a1,a1,-0000047A
	c.li	a0,0000001C
	jal	ra,0000000023036822
	c.li	a0,0000001C
	jal	ra,00000000230366A8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sec_test: 23036DA0
;;   Called from:
;;     2300164C (in bfl_main)
bl_sec_test proc
	lui	a0,00023079
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000324
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230018FA
	jal	ra,0000000023036D28
	lui	s0,00023079
	c.mv	a1,a0
	addi	a0,s0,+00000364
	jal	ra,00000000230018FA
	jal	ra,0000000023036D28
	c.mv	a1,a0
	addi	a0,s0,+00000364
	jal	ra,00000000230018FA
	lui	a0,00023071
	addi	a0,a0,-00000264
	jal	ra,00000000230018FA
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_mac: 23036DE8
;;   Called from:
;;     2303889E (in hal_board_cfg)
bl_efuse_read_mac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304603E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_mac_factory: 23036DF8
;;   Called from:
;;     230391DE (in hal_board_cfg)
bl_efuse_read_mac_factory proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023046486
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_capcode: 23036E10
;;   Called from:
;;     230389DC (in hal_board_cfg)
bl_efuse_read_capcode proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,000000002304646A
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_pwroft: 23036E28
;;   Called from:
;;     23039642 (in hal_board_cfg)
bl_efuse_read_pwroft proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023046478
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_clock_enable: 23036E40
;;   Called from:
;;     2300A74C (in bl606a0_wifi_init)
bl_wifi_clock_enable proc
	lui	a5,0004200E
	addi	a5,a5,+0000027C
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023036E50

l23036E4C:
	c.li	a4,00000001
	c.sw	a5,0(a4)

l23036E50:
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_enable_irq: 23036E54
;;   Called from:
;;     23008202 (in bl_main_rtthread_start)
bl_wifi_enable_irq proc
	lui	a1,0002305B
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+00000240
	addi	a0,zero,+00000046
	c.swsp	ra,00000084
	jal	ra,0000000023036822
	lui	a1,0002305B
	addi	a1,a1,+00000290
	addi	a0,zero,+0000004F
	jal	ra,0000000023036822
	addi	a0,zero,+00000046
	jal	ra,00000000230366A8
	addi	a0,zero,+0000004F
	jal	ra,00000000230366A8
	lui	a0,00023079
	addi	a0,a0,+00000434
	jal	ra,0000000023003A8A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_sta_mac_addr_set: 23036E9C
;;   Called from:
;;     23038C6E (in hal_board_cfg)
;;     230390B4 (in hal_board_cfg)
bl_wifi_sta_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,+00000540
	c.swsp	ra,00000084
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_ap_mac_addr_set: 23036EB8
;;   Called from:
;;     23038C68 (in hal_board_cfg)
;;     23039182 (in hal_board_cfg)
bl_wifi_ap_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,+0000054C
	c.swsp	ra,00000084
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_mac_addr_get: 23036ED4
;;   Called from:
;;     23006922 (in cmd_wifi_ap_start)
;;     2300714C (in wifi_mgmr_sta_enable)
;;     230074A8 (in wifi_mgmr_ap_enable)
;;     2300A712 (in bl606a0_wifi_init)
;;     2300AF98 (in bdaddr_init)
bl_wifi_mac_addr_get proc
	lui	a1,0004201A
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a1,a1,+00000540
	c.swsp	ra,00000084
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_country_code_set: 23036EEE
;;   Called from:
;;     23038D04 (in hal_board_cfg)
bl_wifi_country_code_set proc
	lui	a5,0004201A
	sb	a0,a5,+00000558
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_ap_info_set: 23036EFA
;;   Called from:
;;     230399D4 (in hal_board_cfg)
bl_wifi_ap_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,+00000559
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,000000002306D1BC
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+00000559
	jal	ra,000000002306CF80
	c.lwsp	a2,000000A4
	lui	a0,0004201A
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,+0000057A
	jal	ra,000000002306CF80
	c.lwsp	s0,000000C4
	lui	a5,0004201A
	addi	a5,a5,+00000540
	sb	a4,a5,+0000007B
	c.li	a4,00000001
	sb	a4,a5,+0000007C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_wifi_sta_info_set: 23036F64
;;   Called from:
;;     23039A9E (in hal_board_cfg)
bl_wifi_sta_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,+000005BD
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,000000002306D1BC
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+000005BD
	jal	ra,000000002306CF80
	c.lwsp	a2,000000A4
	lui	a0,0004201A
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,+000005DE
	jal	ra,000000002306CF80
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004201A
	sb	a4,a5,+00000620
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; fdt32_to_cpu: 23036FC4
;;   Called from:
;;     2303781E (in vfs_uart_init)
;;     23037828 (in vfs_uart_init)
;;     23037874 (in vfs_uart_init)
;;     2303787C (in vfs_uart_init)
;;     23037B6E (in vfs_uart_init)
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

;; dev_uart_init: 23036FE6
;;   Called from:
;;     23037A28 (in vfs_uart_init)
dev_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,00000002
	bltu	a5,a0,0000000023037002

l23036FFE:
	c.mv	s3,a1
	c.bnez	a1,0000000023037050

l23037002:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230370E4

l23037010:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230370E4

l2303701C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303704A

l23037026:
	jal	ra,0000000023033B12

l2303702A:
	addi	a4,zero,+00000065

l2303702E:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a3,a3,+00000478
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000484
	c.j	00000000230370E0

l2303704A:
	jal	ra,0000000023033AF0
	c.j	000000002303702A

l23037050:
	c.mv	s1,a0
	c.mv	s5,a2
	c.mv	s4,a3
	c.beqz	a0,0000000023037100

l23037058:
	c.li	a5,00000001
	bne	a0,a5,000000002303709A

l2303705E:
	lui	s0,0004200E
	lw	a5,s0,+00000284
	addi	s0,s0,+00000284

l2303706A:
	c.beqz	a5,0000000023037114

l2303706C:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230370E4

l2303707A:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230370E4

l23037086:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303710E

l23037090:
	jal	ra,0000000023033B12

l23037094:
	addi	a4,zero,+00000036
	c.j	000000002303702E

l2303709A:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230370E4

l230370A8:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230370E4

l230370B4:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230370FA

l230370BE:
	jal	ra,0000000023033B12

l230370C2:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+00000074
	addi	a3,a3,+00000478
	addi	a2,a2,-000001B4
	addi	a0,a0,+000004A4

l230370E0:
	jal	ra,00000000230018FA

l230370E4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

l230370FA:
	jal	ra,0000000023033AF0
	c.j	00000000230370C2

l23037100:
	lui	s0,0004200E
	lw	a5,s0,+00000280
	addi	s0,s0,+00000280
	c.j	000000002303706A

l2303710E:
	jal	ra,0000000023033AF0
	c.j	0000000023037094

l23037114:
	addi	a0,zero,+0000003C
	jal	ra,000000002303598A
	c.sw	s0,0(a0)
	c.bnez	a0,000000002303716E

l23037120:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230370E4

l2303712E:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230370E4

l2303713A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037168

l23037144:
	jal	ra,0000000023033B12

l23037148:
	addi	a4,zero,+0000003C

l2303714C:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a3,a3,+00000478
	addi	a2,a2,-000001B4
	addi	a0,a0,+000004C0
	c.j	00000000230370E0

l23037168:
	jal	ra,0000000023033AF0
	c.j	0000000023037148

l2303716E:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lw	s0,0(a5)
	c.li	s2,00000002
	c.li	a0,00000004
	sb	s2,a5,+00000034
	c.lw	s0,0(a5)
	sw	zero,a5,+00000038
	lw	s6,s0,+00000000
	jal	ra,000000002303598A
	sw	a0,s6,+00000038
	c.lw	s0,0(a5)
	c.lw	a5,56(a0)
	c.bnez	a0,00000000230371CE

l2303719A:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230370E4

l230371A8:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230370E4

l230371B4:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230371C8

l230371BE:
	jal	ra,0000000023033B12

l230371C2:
	addi	a4,zero,+00000045
	c.j	000000002303714C

l230371C8:
	jal	ra,0000000023033AF0
	c.j	00000000230371C2

l230371CE:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lw	s0,0(a5)
	sw	s5,a5,+00000018
	c.lw	s0,0(a5)
	sw	s4,a5,+0000001C
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023037258

l230371E6:
	lui	a5,00042017
	lbu	a4,a5,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037230

l230371F4:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037230

l23037200:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037252

l2303720A:
	jal	ra,0000000023033B12

l2303720E:
	lui	a3,00023079
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,00023079
	addi	a4,zero,+00000050
	addi	a3,a3,+00000478
	addi	a2,a2,-000001B4
	addi	a0,a0,+000004C0
	jal	ra,00000000230018FA

l23037230:
	c.lw	s0,0(a2)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	lui	a1,0002307B
	addi	a1,a1,+00000258
	c.addi16sp	00000020
	jal	zero,0000000023044BA6

l23037252:
	jal	ra,0000000023033AF0
	c.j	000000002303720E

l23037258:
	sb	s1,a5,+00000000
	c.lw	s0,0(a5)
	sb	s2,a5,+00000034
	c.lw	s0,0(a4)
	c.lui	a5,0001C000
	addi	a5,a5,+00000200
	c.sw	a4,4(a5)
	c.lw	s0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000008
	c.lw	s0,0(a5)
	sb	zero,a5,+00000009
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000A
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000B
	c.lw	s0,0(a5)
	sb	s2,a5,+0000000C
	c.j	0000000023037230

;; hal_uart_send_trigger: 2303728E
;;   Called from:
;;     23044EB0 (in vfs_uart_write)
hal_uart_send_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023035ECA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_send_trigger_off: 230372A2
;;   Called from:
;;     23044DC0 (in __uart_tx_irq)
hal_uart_send_trigger_off proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023035EDE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_init: 230372B6
;;   Called from:
;;     23044D28 (in vfs_uart_open)
hal_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,56(a0)
	c.li	s1,FFFFFFFF
	jal	ra,00000000230027A2
	c.bnez	a0,00000000230372EA

l230372CA:
	c.mv	s1,a0
	lbu	a0,s0,+00000000
	addi	a1,sp,+0000000F
	jal	ra,0000000023035F16
	lbu	a5,sp,+0000000F
	c.bnez	a5,00000000230372F6

l230372DE:
	sb	zero,s0,+00000009

l230372E2:
	lbu	a0,s0,+00000000
	jal	ra,0000000023035F76

l230372EA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230372F6:
	c.li	a4,00000001
	bne	a5,a4,0000000023037302

l230372FC:
	sb	a5,s0,+00000009
	c.j	00000000230372E2

l23037302:
	c.li	a5,00000002
	c.j	00000000230372FC

;; hal_uart_recv_II: 23037306
;;   Called from:
;;     2302FCD4 (in cli_getchar)
;;     23044D42 (in __uart_rx_irq)
hal_uart_recv_II proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.li	s0,00000000

l23037312:
	beq	s0,a2,000000002303732E

l23037316:
	lbu	a0,s1,+00000000
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023035E36
	c.lwsp	tp,00000064
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	bge	a0,zero,000000002303733C

l2303732E:
	c.sw	a3,0(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2303733C:
	add	a5,a1,s0
	sb	a0,a5,+00000000
	c.addi	s0,00000001
	c.j	0000000023037312

;; hal_uart_send: 23037348
;;   Called from:
;;     23044DB2 (in __uart_tx_irq)
hal_uart_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	add	s1,a1,a2

l2303735A:
	bne	s0,s1,000000002303736C

l2303735E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303736C:
	lbu	a1,s0,+00000000
	lbu	a0,s2,+00000000
	c.addi	s0,00000001
	jal	ra,0000000023035E00
	c.j	000000002303735A

;; hal_uart_finalize: 2303737C
;;   Called from:
;;     23044DFE (in vfs_uart_close)
hal_uart_finalize proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,56(s0)
	lbu	a0,a0,+00000000
	jal	ra,0000000023035FD0
	c.mv	a0,s0
	jal	ra,00000000230027C2
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_notify_register: 2303739C
;;   Called from:
;;     23044D0C (in vfs_uart_open)
;;     23044D1C (in vfs_uart_open)
hal_uart_notify_register proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a1
	c.swsp	ra,00000084
	c.mv	a1,a2
	c.bnez	a4,00000000230373BA

l230373A6:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,0000000023036048

l230373B0:
	c.li	a5,00000000

l230373B2:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230373BA:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a4,a3,00000000230373B2

l230373C2:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,0000000023036028
	c.j	00000000230373B0

;; vfs_uart_init: 230373CE
;;   Called from:
;;     23001430 (in aos_loop_proc)
vfs_uart_init proc
	lui	a5,0004200E
	lb	a3,a5,+00000288
	c.addi16sp	FFFFFF40
	addi	a5,a5,+00000288
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
	c.swsp	s10,00000048
	c.swsp	s11,000000C4
	c.li	a4,00000001
	c.swsp	a5,0000001C
	beq	a3,a4,0000000023037532

l230373FE:
	lui	a5,00023079
	addi	a5,a5,+00000500
	c.swsp	a1,0000009C
	c.swsp	a5,00000024
	lui	a1,00023079
	lui	a5,00023079
	addi	a5,a5,+00000510
	c.mv	s4,a0
	addi	a2,zero,+00000030
	addi	a1,a1,+00000448
	c.addi4spn	a0,00000050
	c.swsp	a5,000000A4
	c.swsp	zero,000000A0
	jal	ra,000000002306CF80
	c.addi4spn	a5,00000048
	c.swsp	a5,00000094
	c.li	s2,00000000
	lui	s0,00023079
	lui	s3,0002306E

l23037438:
	c.lwsp	a2,000001F4
	c.lwsp	t3,00000174
	c.mv	a0,s4
	lw	s6,a5,+00000000
	lui	s1,00042017
	c.mv	a2,s6
	jal	ra,000000002302C4FE
	c.mv	s5,a0
	blt	zero,a0,000000002303749C

l23037452:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l2303745C:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l23037468:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037496

l23037472:
	jal	ra,0000000023033B12

l23037476:
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000012C

l2303747E:
	c.mv	a1,a0
	lui	a0,00023079
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000520
	c.j	00000000230374F2

l23037492:
	c.li	s2,00000001
	c.j	0000000023037438

l23037496:
	jal	ra,0000000023033AF0
	c.j	0000000023037476

l2303749C:
	lui	s7,00023079
	c.mv	a1,a0
	addi	a2,s7,+00000548
	c.mv	a0,s4
	jal	ra,000000002302C66A
	c.li	a5,00000001
	c.mv	s6,a0
	beq	a0,a5,00000000230374FE

l230374B4:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l230374BE:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l230374CA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230374F8

l230374D4:
	jal	ra,0000000023033B12

l230374D8:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000132
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000550

l230374F2:
	jal	ra,00000000230018FA
	c.j	0000000023037522

l230374F8:
	jal	ra,0000000023033AF0
	c.j	00000000230374D8

l230374FE:
	c.addi4spn	a4,00000044
	addi	a2,s7,+00000548
	c.li	a3,00000000
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C6B4
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s7,a0
	beq	a4,a5,0000000023037552

l23037518:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bgeu	a5,a4,00000000230375BA

l23037522:
	c.lwsp	a2,000001F4
	c.addi	a5,00000004
	c.swsp	a5,00000094
	beq	s2,zero,0000000023037492

l2303752C:
	c.lwsp	s8,000001F4
	sb	s2,a5,+00000000

l23037532:
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
	c.lwsp	s6,0000002C
	c.lwsp	s2,0000004C
	c.lwsp	a4,0000006C
	c.li	a0,00000000
	c.addi16sp	000000C0
	c.jr	ra

l23037552:
	lui	a5,00023079
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,+0000058C
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023037518

l23037564:
	lui	s8,00023079
	addi	a2,s8,+000005C0
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C66A
	c.mv	s7,a0
	beq	a0,s6,00000000230375FC

l2303757A:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l23037584:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l23037590:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230375F6

l2303759A:
	jal	ra,0000000023033B12

l2303759E:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+0000013E
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+000005C8
	c.j	00000000230374F2

l230375BA:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l230375C6:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230375F0

l230375D0:
	jal	ra,0000000023033B12

l230375D4:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+00000137
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000594
	c.j	00000000230374F2

l230375F0:
	jal	ra,0000000023033AF0
	c.j	00000000230375D4

l230375F6:
	jal	ra,0000000023033AF0
	c.j	000000002303759E

l230375FC:
	c.addi4spn	a4,00000044
	c.li	a3,00000000
	addi	a2,s8,+000005C0
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C6B4
	c.lwsp	t0,000000C4
	c.swsp	a0,00000098
	addi	a5,zero,+00000020
	bgeu	a5,a4,000000002303765A

l23037618:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,000000002303765A

l23037622:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,000000002303765A

l2303762E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230376B0

l23037638:
	jal	ra,0000000023033B12

l2303763C:
	c.lwsp	t0,00000008
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+00000144
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000604
	jal	ra,00000000230018FA

l2303765A:
	lui	a2,00023079
	c.addi4spn	a3,00000044
	addi	a2,a2,+00000634
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C642
	c.bnez	a0,00000000230376BC

l2303766E:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l23037678:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l23037684:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230376B6

l2303768E:
	jal	ra,0000000023033B12

l23037692:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+0000014B
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000640

l230376AA:
	jal	ra,00000000230018FA
	c.j	0000000023037522

l230376B0:
	jal	ra,0000000023033AF0
	c.j	000000002303763C

l230376B6:
	jal	ra,0000000023033AF0
	c.j	0000000023037692

l230376BC:
	lui	a2,00023079
	lw	s7,a0,+00000000
	c.addi4spn	a3,00000044
	addi	a2,a2,+00000670
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C642
	c.bnez	a0,0000000023037718

l230376D4:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l230376DE:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l230376EA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037712

l230376F4:
	jal	ra,0000000023033B12

l230376F8:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+00000153
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000674
	c.j	00000000230376AA

l23037712:
	jal	ra,0000000023033AF0
	c.j	00000000230376F8

l23037718:
	lui	a2,00023079
	lw	s6,a0,+00000000
	addi	a2,a2,+0000069C
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C4FE
	c.mv	s9,a0
	blt	zero,a0,0000000023037782

l23037732:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037772

l2303773C:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037772

l23037748:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303777C

l23037752:
	jal	ra,0000000023033B12

l23037756:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+0000015B
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+000006A8
	jal	ra,00000000230018FA

l23037772:
	addi	s9,zero,+00000200
	addi	s8,zero,+00000200
	c.j	000000002303782E

l2303777C:
	jal	ra,0000000023033AF0
	c.j	0000000023037756

l23037782:
	lui	s8,00023079
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,s8,+000006E8
	c.mv	a0,s4
	jal	ra,000000002302C642
	c.bnez	a0,00000000230377CC

l23037796:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l230377A0:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l230377AC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230377C6

l230377B6:
	jal	ra,0000000023033B12

l230377BA:
	addi	a6,s8,+000006E8
	c.mv	a5,s2
	addi	a4,zero,+00000161
	c.j	000000002303747E

l230377C6:
	jal	ra,0000000023033AF0
	c.j	00000000230377BA

l230377CC:
	lui	s8,00023079
	lw	s10,a0,+00000000
	c.mv	a1,s9
	c.addi4spn	a3,00000044
	addi	a2,s8,+000006F0
	c.mv	a0,s4
	jal	ra,000000002302C642
	c.mv	s9,a0
	c.bnez	a0,000000002303781C

l230377E6:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037522

l230377F0:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l230377FC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037816

l23037806:
	jal	ra,0000000023033B12

l2303780A:
	addi	a6,s8,+000006F0
	c.mv	a5,s2
	addi	a4,zero,+00000167
	c.j	000000002303747E

l23037816:
	jal	ra,0000000023033AF0
	c.j	000000002303780A

l2303781C:
	c.mv	a0,s10
	jal	ra,0000000023036FC4
	c.mv	s8,a0
	lw	a0,s9,+00000000
	jal	ra,0000000023036FC4
	c.mv	s9,a0

l2303782E:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037872

l23037838:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037872

l23037844:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230378E4

l2303784E:
	jal	ra,0000000023033B12

l23037852:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a7,s9
	c.mv	a6,s8
	c.mv	a5,s2
	addi	a4,zero,+0000016C
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+000006F8
	jal	ra,00000000230018FA

l23037872:
	c.mv	a0,s7
	jal	ra,0000000023036FC4
	c.swsp	a0,00000090
	c.mv	a0,s6
	jal	ra,0000000023036FC4
	c.swsp	a0,00000014
	addi	s7,sp,+00000050
	lui	s11,0004201A
	lui	s10,0004200E

l2303788E:
	lui	a5,00023079
	addi	a2,a5,+00000738
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002302C4FE
	blt	zero,a0,00000000230378F0

l230378A2:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230378DA

l230378AC:
	lbu	a4,s11,+00000621
	bltu	a5,a4,00000000230378DA

l230378B4:
	lw	a5,s10,+00000244
	c.beqz	a5,00000000230378EA

l230378BA:
	jal	ra,0000000023033B12

l230378BE:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+00000171
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000740
	jal	ra,00000000230018FA

l230378DA:
	c.addi	s7,0000000C
	c.addi4spn	a5,00000080
	bne	a5,s7,000000002303788E

l230378E2:
	c.j	0000000023037AA6

l230378E4:
	jal	ra,0000000023033AF0
	c.j	0000000023037852

l230378EA:
	jal	ra,0000000023033AF0
	c.j	00000000230378BE

l230378F0:
	lw	s6,s7,+00000000
	c.mv	a1,a0
	c.swsp	a0,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,000000002302C66A
	c.li	a4,00000001
	c.lwsp	a6,000001F4
	beq	a0,a4,000000002303794E

l23037908:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230378DA

l23037912:
	lbu	a4,s11,+00000621
	bltu	a5,a4,00000000230378DA

l2303791A:
	lw	a5,s10,+00000244
	c.swsp	a0,00000018
	c.beqz	a5,0000000023037948

l23037922:
	jal	ra,0000000023033B12

l23037926:
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000176
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+0000076C
	jal	ra,00000000230018FA
	c.j	00000000230378DA

l23037948:
	jal	ra,0000000023033AF0
	c.j	0000000023037926

l2303794E:
	c.addi4spn	a4,00000044
	c.mv	a1,a5
	c.li	a3,00000000
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,000000002302C6B4
	c.lwsp	t0,000000C4
	c.swsp	a0,00000018
	c.li	a5,00000004
	beq	a4,a5,00000000230379AA

l23037966:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230378DA

l23037970:
	lbu	a4,s11,+00000621
	bltu	a5,a4,00000000230378DA

l23037978:
	lw	a5,s10,+00000244
	beq	a5,zero,0000000023037A76

l23037980:
	jal	ra,0000000023033B12

l23037984:
	c.lwsp	t0,000000E4
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,00023079
	c.swsp	a5,00000000
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000017B
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+000007A0
	jal	ra,00000000230018FA
	c.j	00000000230378DA

l230379AA:
	c.lwsp	a6,00000174
	lui	a5,00023079
	c.li	a2,00000004
	addi	a0,a5,+0000058C
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023037966

l230379BC:
	lui	a5,00023079
	c.mv	a1,s5
	addi	a2,a5,+000007DC
	c.mv	a0,s4
	jal	ra,000000002302C4FE
	c.mv	a1,a0
	blt	zero,a0,0000000023037B18

l230379D2:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230379E8

l230379DC:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bgeu	a5,a4,0000000023037A7C

l230379E8:
	lbu	s5,sp,+00000028
	c.mv	a0,s5
	jal	ra,0000000023035EF2
	c.lwsp	tp,000001F4
	lbu	a4,sp,+0000007C
	lbu	a3,sp,+00000070
	lbu	a2,sp,+00000064
	lbu	a1,sp,+00000058
	c.mv	a0,s5
	jal	ra,0000000023035D10
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037A20

l23037A14:
	lui	s7,0004201A
	lbu	a4,s7,+00000621
	bgeu	a5,a4,0000000023037B7E

l23037A20:
	c.lwsp	s4,00000174
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s5
	jal	ra,0000000023036FE6
	beq	a0,zero,0000000023037522

l23037A30:
	lbu	a4,s1,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037522

l23037A3A:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,0000000023037522

l23037A46:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023037BF6

l23037A52:
	jal	ra,0000000023033B12

l23037A56:
	c.mv	a1,a0
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000019E
	addi	a3,s0,+00000478
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000740
	jal	ra,00000000230018FA
	c.j	0000000023037522

l23037A76:
	jal	ra,0000000023033AF0
	c.j	0000000023037984

l23037A7C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037B12

l23037A86:
	jal	ra,0000000023033B12

l23037A8A:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a5,s2
	addi	a4,zero,+00000182
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+000007E0
	jal	ra,00000000230018FA

l23037AA6:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230379E8

l23037AB0:
	lui	a4,0004201A
	lbu	a4,a4,+00000621
	bltu	a5,a4,00000000230379E8

l23037ABC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037B78

l23037AC6:
	jal	ra,0000000023033B12

l23037ACA:
	c.lwsp	tp,000001F4
	lbu	a7,sp,+00000058
	c.lwsp	s5,00000008
	c.swsp	a5,0000000C
	lbu	a5,sp,+0000007C
	c.mv	a1,a0
	lui	a0,0002307A
	c.swsp	a5,00000088
	c.lwsp	s9,000001F4
	addi	a4,zero,+00000192
	addi	a3,s0,+00000478
	c.swsp	a5,00000008
	lbu	a5,sp,+00000070
	addi	a2,s3,+000004AC
	addi	a0,a0,-000007F8
	c.swsp	a5,00000084
	c.lwsp	a3,000001F4
	c.swsp	a5,00000004
	lbu	a5,sp,+00000064
	c.swsp	a5,00000080
	c.lwsp	ra,000001F4
	c.swsp	a5,00000000
	lbu	a5,sp,+00000028
	jal	ra,00000000230018FA
	c.j	00000000230379E8

l23037B12:
	jal	ra,0000000023033AF0
	c.j	0000000023037A8A

l23037B18:
	lw	a5,s7,+00000004
	c.addi4spn	a3,00000044
	c.mv	a0,s4
	c.mv	a2,a5
	c.mv	s6,a5
	jal	ra,000000002302C642
	c.bnez	a0,0000000023037B6C

l23037B2A:
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230378DA

l23037B34:
	lbu	a4,s11,+00000621
	bltu	a5,a4,00000000230378DA

l23037B3C:
	lw	a5,s10,+00000244
	c.beqz	a5,0000000023037B66

l23037B42:
	jal	ra,0000000023033B12

l23037B46:
	c.mv	a1,a0
	lui	a0,00023079
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000187
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,+00000520
	jal	ra,00000000230018FA
	c.j	00000000230378DA

l23037B66:
	jal	ra,0000000023033AF0
	c.j	0000000023037B46

l23037B6C:
	c.lw	a0,0(a0)
	jal	ra,0000000023036FC4
	sb	a0,s7,+00000008
	c.j	00000000230378DA

l23037B78:
	jal	ra,0000000023033AF0
	c.j	0000000023037ACA

l23037B7E:
	lui	s10,0004200E
	lw	a5,s10,+00000244
	c.beqz	a5,0000000023037BEA

l23037B88:
	jal	ra,0000000023033B12

l23037B8C:
	c.lwsp	s0,000001F4
	c.mv	a1,a0
	lui	a0,0002307A
	andi	s6,a5,+000000FF
	c.mv	a5,s6
	addi	a4,zero,+0000019A
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,-000007A4
	jal	ra,00000000230018FA
	lbu	a4,s1,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037A20

l23037BB8:
	lbu	a4,s7,+00000621
	bltu	a5,a4,0000000023037A20

l23037BC0:
	lw	a5,s10,+00000244
	c.beqz	a5,0000000023037BF0

l23037BC6:
	jal	ra,0000000023033B12

l23037BCA:
	c.lwsp	tp,00000118
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a5,s6
	addi	a4,zero,+0000019B
	addi	a3,s0,+00000478
	addi	a2,s3,+000004AC
	addi	a0,a0,-00000778
	jal	ra,00000000230018FA
	c.j	0000000023037A20

l23037BEA:
	jal	ra,0000000023033AF0
	c.j	0000000023037B8C

l23037BF0:
	jal	ra,0000000023033AF0
	c.j	0000000023037BCA

l23037BF6:
	jal	ra,0000000023033AF0
	c.j	0000000023037A56

;; hal_uart_send_flush: 23037BFC
;;   Called from:
;;     23044F70 (in vfs_uart_sync)
hal_uart_send_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023035EF2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_setbaud: 23037C10
hal_uart_setbaud proc
	lbu	a0,a0,+00000000
	jal	zero,0000000023035F70

;; hal_uart_setconfig: 23037C18
;;   Called from:
;;     23045020 (in uart_ioctl_cmd_setconfig)
hal_uart_setconfig proc
	lbu	a0,a0,+00000000
	jal	zero,0000000023035F1E

;; hal_gpio_init_from_dts: 23037C20
;;   Called from:
;;     23001426 (in aos_loop_proc)
hal_gpio_init_from_dts proc
	c.addi16sp	FFFFFF80
	lui	a2,0002307A
	c.addi4spn	a3,00000034
	addi	a2,a2,-00000718
	c.swsp	s1,000000B8
	c.swsp	s5,000000B0
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s5,a0
	c.swsp	a1,0000000C
	c.swsp	zero,00000098
	jal	ra,000000002302C642
	c.li	s1,FFFFFFFF
	c.beqz	a0,0000000023037C76

l23037C54:
	c.lw	a0,0(a5)
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

l23037C76:
	lui	s0,00042017
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037CC2

l23037C84:
	lui	a4,0004201A
	lbu	a4,a4,+00000622
	bltu	a5,a4,0000000023037CC2

l23037C90:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037D6C

l23037C9A:
	jal	ra,0000000023033B12

l23037C9E:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a5,s1
	addi	a4,zero,+000000B5
	addi	a3,a3,-00000710
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000704
	jal	ra,00000000230018FA

l23037CC2:
	c.li	s7,00000000
	lui	s10,00023079
	lui	s11,00023079
	lui	s2,0004201A
	lui	s3,0004200E
	lui	s4,0002307A

l23037CD8:
	bge	s7,s1,0000000023037D4C

l23037CDC:
	lui	a5,0002307A
	addi	a2,a5,-000006D4
	c.mv	a3,s7
	c.li	a1,0000000B
	c.addi4spn	a0,00000028
	jal	ra,0000000023003B18
	c.lwsp	s8,00000064
	c.addi4spn	a2,00000028
	c.mv	a0,s5
	sb	zero,sp,+00000033
	c.swsp	zero,00000090
	jal	ra,000000002302C4FE
	c.mv	s6,a0
	bge	a0,zero,0000000023037D78

l23037D04:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037D4C

l23037D0E:
	lui	a4,0004201A
	lbu	a4,a4,+00000622
	bltu	a5,a4,0000000023037D4C

l23037D1A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023037D72

l23037D24:
	jal	ra,0000000023033B12

l23037D28:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000061
	addi	a3,a3,-00000710
	addi	a2,a2,+000004AC
	addi	a0,a0,-000006CC
	jal	ra,00000000230018FA

l23037D4C:
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
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23037D6C:
	jal	ra,0000000023033AF0
	c.j	0000000023037C9E

l23037D72:
	jal	ra,0000000023033AF0
	c.j	0000000023037D28

l23037D78:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,000000002306D1BC
	lui	a5,00023079
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a5,+00000548
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000038
	jal	ra,000000002302C6B4
	c.lwsp	tp,0000013C
	c.li	a4,00000004
	c.mv	s8,a0
	beq	s9,a4,0000000023037E14

l23037DA4:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bgeu	a5,a4,0000000023037E72

l23037DAE:
	lbu	a5,sp,+00000038
	c.li	a4,00000001
	bne	a5,a4,00000000230380DC

l23037DB8:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023037E08

l23037DC2:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037E08

l23037DCA:
	lw	a5,s3,+00000244
	beq	a5,zero,00000000230380D6

l23037DD2:
	jal	ra,0000000023033B12

l23037DD6:
	c.lwsp	t3,000001F4
	lbu	a7,sp,+0000003A
	lbu	a6,sp,+00000039
	c.swsp	a5,00000080
	lbu	a5,sp,+0000003B
	lui	a2,0002306E
	c.mv	a1,a0
	c.swsp	a5,00000000
	c.lwsp	s4,000001F4
	lui	a0,0002307A
	addi	a4,zero,+000000A6
	addi	a3,s4,-00000710
	addi	a2,a2,+000004AC
	addi	a0,a0,-000005CC
	jal	ra,00000000230018FA

l23037E08:
	c.lwsp	t3,00000174
	c.lwsp	s4,00000154
	jal	ra,000000002303A342

l23037E10:
	c.addi	s7,00000001
	c.j	0000000023037CD8

l23037E14:
	lui	a5,00023079
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,+0000058C
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023037DA4

l23037E26:
	c.addi4spn	a3,00000024
	addi	a2,s10,+000007DC
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002302C642
	c.bnez	a0,0000000023037EB4

l23037E36:
	lbu	a4,s0,-0000006C
	bltu	s9,a4,0000000023037DAE

l23037E3E:
	lbu	a4,s2,+00000622
	bltu	s9,a4,0000000023037DAE

l23037E46:
	lw	a5,s3,+00000244
	c.beqz	a5,0000000023037EAE

l23037E4C:
	jal	ra,0000000023033B12

l23037E50:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000070
	addi	a3,s4,-00000710
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000680

l23037E6C:
	jal	ra,00000000230018FA
	c.j	0000000023037DAE

l23037E72:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037DAE

l23037E7A:
	lw	a5,s3,+00000244
	c.beqz	a5,0000000023037EA8

l23037E80:
	jal	ra,0000000023033B12

l23037E84:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000006A
	addi	a3,s4,-00000710
	addi	a2,a2,+000004AC
	addi	a0,a0,-000006A8

l23037EA2:
	jal	ra,00000000230018FA
	c.j	0000000023037DAE

l23037EA8:
	jal	ra,0000000023033AF0
	c.j	0000000023037E84

l23037EAE:
	jal	ra,0000000023033AF0
	c.j	0000000023037E50

l23037EB4:
	c.lw	a0,0(a5)
	addi	a2,s11,+00000738
	c.mv	a1,s6
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.li	a3,00000000
	c.addi4spn	a4,00000024
	c.mv	a0,s5
	c.swsp	a5,00000098
	jal	ra,000000002302C6B4
	c.lwsp	tp,000001D4
	c.li	a5,00000003
	c.mv	s8,a0
	bne	a4,a5,0000000023037FCA

l23037EF2:
	c.mv	a1,a0
	lui	a0,0002307B
	c.li	a2,00000003
	addi	a0,a0,-00000514
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023037FCA

l23037F04:
	lui	a2,0002307A
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,-00000654
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000039
	jal	ra,000000002302C6B4
	c.lwsp	tp,000001F4
	c.li	a4,00000002
	c.mv	s8,a0
	bne	a5,a4,000000002303802A

l23037F26:
	c.mv	a1,a0
	lui	a0,0002307A
	c.li	a2,00000002
	addi	a0,a0,-00000618
	c.swsp	a5,0000008C
	jal	ra,000000002306CEF8
	c.lwsp	t3,000000E4
	c.bnez	a0,000000002303800C

l23037F3C:
	c.li	a5,00000001
	sb	a5,sp,+0000003A

l23037F42:
	lui	a2,00023070
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,+0000059C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002302C6B4
	c.lwsp	tp,000001D4
	c.li	a5,00000005
	c.mv	s8,a0
	bne	a4,a5,0000000023038056

l23037F60:
	c.mv	a1,a0
	lui	a0,0002307A
	c.li	a2,00000005
	addi	a0,a0,-00000610
	jal	ra,000000002306CEF8
	bne	a0,zero,0000000023038056

l23037F74:
	sb	zero,sp,+0000003B

l23037F78:
	lui	a2,00023078
	c.addi4spn	a3,00000024
	addi	a2,a2,-0000030C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002302C642
	bne	a0,zero,00000000230380AA

l23037F8E:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037DAE

l23037F98:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037DAE

l23037FA0:
	lw	a5,s3,+00000244
	beq	a5,zero,00000000230380A4

l23037FA8:
	jal	ra,0000000023033B12

l23037FAC:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000093
	addi	a3,s4,-00000710
	addi	a2,a2,-000001B4
	addi	a0,a0,-000005FC
	c.j	0000000023037E6C

l23037FCA:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037DAE

l23037FD4:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037DAE

l23037FDC:
	lw	a5,s3,+00000244
	c.beqz	a5,0000000023038006

l23037FE2:
	jal	ra,0000000023033B12

l23037FE6:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000079

l23037FEE:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a3,s4,-00000710
	addi	a2,a2,-000001B4
	addi	a0,a0,-0000064C
	c.j	0000000023037EA2

l23038006:
	jal	ra,0000000023033AF0
	c.j	0000000023037FE6

l2303800C:
	c.lwsp	tp,000001D4
	bne	a4,a5,000000002303802A

l23038012:
	lui	a0,0002307A
	c.li	a2,00000002
	c.mv	a1,s8
	addi	a0,a0,-00000614
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002303802A

l23038024:
	sb	zero,sp,+0000003A
	c.j	0000000023037F42

l2303802A:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037DAE

l23038034:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037DAE

l2303803C:
	lw	a5,s3,+00000244
	c.beqz	a5,0000000023038050

l23038042:
	jal	ra,0000000023033B12

l23038046:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000083
	c.j	0000000023037FEE

l23038050:
	jal	ra,0000000023033AF0
	c.j	0000000023038046

l23038056:
	c.lwsp	tp,000001D4
	c.li	a5,00000009
	bne	a4,a5,0000000023038078

l2303805E:
	lui	a0,0002307A
	c.li	a2,00000009
	c.mv	a1,s8
	addi	a0,a0,-00000608
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023038078

l23038070:
	c.li	a5,00000001
	sb	a5,sp,+0000003B
	c.j	0000000023037F78

l23038078:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037DAE

l23038082:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037DAE

l2303808A:
	lw	a5,s3,+00000244
	c.beqz	a5,000000002303809E

l23038090:
	jal	ra,0000000023033B12

l23038094:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000008D
	c.j	0000000023037FEE

l2303809E:
	jal	ra,0000000023033AF0
	c.j	0000000023038094

l230380A4:
	jal	ra,0000000023033AF0
	c.j	0000000023037FAC

l230380AA:
	c.lw	a0,0(a5)
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.swsp	a5,0000009C
	c.li	a5,00000001
	sb	a5,sp,+00000038
	c.j	0000000023037DAE

l230380D6:
	jal	ra,0000000023033AF0
	c.j	0000000023037DD6

l230380DC:
	bne	a5,zero,0000000023037E10

l230380E0:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023037E10

l230380EA:
	lbu	a4,s2,+00000622
	bltu	a5,a4,0000000023037E10

l230380F2:
	lw	a5,s3,+00000244
	c.beqz	a5,000000002303811E

l230380F8:
	jal	ra,0000000023033B12

l230380FC:
	c.mv	a1,a0
	lui	a2,00023079
	lui	a0,0002307A
	c.addi4spn	a5,00000028
	addi	a4,zero,+000000C3
	addi	a3,s4,-00000710
	addi	a2,a2,-000001B4
	addi	a0,a0,-000005FC
	jal	ra,00000000230018FA
	c.j	0000000023037E10

l2303811E:
	jal	ra,0000000023033AF0
	c.j	00000000230380FC

;; hal_reboot: 23038124
;;   Called from:
;;     2302F83C (in reboot_cmd)
hal_reboot proc
	jal	zero,00000000230361BA

;; hal_sys_reset: 23038128
;;   Called from:
;;     2302F80C (in reset_cmd)
hal_sys_reset proc
	jal	zero,00000000230361CC

;; hal_poweroff: 2303812C
;;   Called from:
;;     2302F824 (in poweroff_cmd)
hal_poweroff proc
	c.jr	ra

;; hal_sys_capcode_update: 2303812E
;;   Called from:
;;     2300501A (in wifi_mgmr_start)
;;     23006F0C (in wifi_capcode_cmd)
;;     23038640 (in hal_board_cfg)
hal_sys_capcode_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	a3,00021011
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	t1,a3,-000007E4
	lui	s0,0004200E
	lui	s1,0004200E
	addi	a3,zero,+000000FF
	addi	s0,s0,+00000289
	addi	s1,s1,+0000028A
	beq	a0,a3,000000002303817A

l2303815A:
	c.mv	s2,a1
	beq	a1,a3,000000002303817A

l23038160:
	c.mv	s3,a0
	c.jalr	t1
	c.lwsp	t3,00000020
	sb	s3,s0,+00000000
	c.lwsp	s8,00000004
	sb	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303817A:
	lbu	a0,s0,+00000000
	c.lwsp	s8,00000004
	lbu	a1,s1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	t1

;; hal_sys_capcode_get: 23038190
;;   Called from:
;;     23006ED0 (in wifi_capcode_cmd)
hal_sys_capcode_get proc
	auipc	t1,0001EFD5
	jalr	zero,t1,-000003E2

;; fdt32_to_cpu: 23038198
;;   Called from:
;;     23038574 (in hal_board_cfg)
;;     2303857E (in hal_board_cfg)
;;     23038588 (in hal_board_cfg)
;;     23038592 (in hal_board_cfg)
;;     230385A0 (in hal_board_cfg)
;;     230385DE (in hal_board_cfg)
;;     230385EA (in hal_board_cfg)
;;     2303866E (in hal_board_cfg)
;;     2303870A (in hal_board_cfg)
;;     230387BA (in hal_board_cfg)
;;     23038CCE (in hal_board_cfg)
;;     23038CFC (in hal_board_cfg)
;;     23038D44 (in hal_board_cfg)
;;     23038DE0 (in hal_board_cfg)
;;     23038E94 (in hal_board_cfg)
;;     230394CC (in hal_board_cfg)
;;     23039998 (in hal_board_cfg)
;;     230399C4 (in hal_board_cfg)
;;     23039A64 (in hal_board_cfg)
;;     23039A90 (in hal_board_cfg)
;;     23039B2A (in hal_board_cfg)
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

;; hal_board_get_factory_addr: 230381BA
;;   Called from:
;;     23001324 (in aos_loop_proc)
;;     2300134C (in aos_loop_proc)
hal_board_get_factory_addr proc
	lui	a5,0004200E
	lw	a0,a5,+0000028C
	c.jr	ra

;; hal_board_cfg: 230381C4
;;   Called from:
;;     2300165A (in bfl_main)
hal_board_cfg proc
	c.addi16sp	FFFFFF00
	c.swsp	s1,000000F8
	c.swsp	s2,00000078
	lui	s1,0004200E
	lui	s2,0002307A
	c.addi4spn	a2,00000040
	addi	a1,s1,+0000028C
	addi	a0,s2,-00000564
	c.swsp	s0,0000007C
	c.swsp	s3,000000F4
	c.swsp	ra,000000FC
	c.swsp	s4,00000074
	c.swsp	s5,000000F0
	c.swsp	s6,00000070
	c.swsp	s7,000000EC
	c.swsp	s8,0000006C
	c.swsp	s9,000000E8
	c.swsp	s10,00000068
	c.swsp	s11,000000E4
	lui	s0,00042017
	jal	ra,000000002300070C
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	addi	s3,s1,+0000028C
	bltu	a5,a4,000000002303824C

l23038208:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,000000002303824C

l23038214:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.mv	s4,a0
	c.beqz	a5,000000002303829A

l23038220:
	jal	ra,0000000023033B12

l23038224:
	lw	a5,s3,+00000000
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s4
	addi	a4,zero,+00000376
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000550
	jal	ra,00000000230018FA

l2303824C:
	lw	a5,s3,+00000000
	c.bnez	a5,00000000230382A6

l23038252:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038298

l2303825C:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038298

l23038268:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230382A0

l23038272:
	jal	ra,0000000023033B12

l23038276:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000378
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-000004FC
	jal	ra,00000000230018FA

l23038298:
	c.j	0000000023038298

l2303829A:
	jal	ra,0000000023033AF0
	c.j	0000000023038224

l230382A0:
	jal	ra,0000000023033AF0
	c.j	0000000023038276

l230382A6:
	addi	a1,s1,+0000028C
	c.addi4spn	a2,00000040
	addi	a0,s2,-00000564
	jal	ra,00000000230005DC
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	c.mv	s1,a0
	bltu	a5,a4,0000000023038302

l230382C0:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038302

l230382CC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038350

l230382D6:
	jal	ra,0000000023033B12

l230382DA:
	lw	a5,s3,+00000000
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s1
	addi	a4,zero,+0000037E
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000049C
	jal	ra,00000000230018FA

l23038302:
	lw	s1,s3,+00000000
	c.bnez	s1,000000002303835C

l23038308:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,000000002303834E

l23038312:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,000000002303834E

l2303831E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038356

l23038328:
	jal	ra,0000000023033B12

l2303832C:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000380
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000448
	jal	ra,00000000230018FA

l2303834E:
	c.j	000000002303834E

l23038350:
	jal	ra,0000000023033AF0
	c.j	00000000230382DA

l23038356:
	jal	ra,0000000023033AF0
	c.j	000000002303832C

l2303835C:
	lui	a2,00023079
	addi	a2,a2,-000002A4
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	zero,000000A0
	jal	ra,000000002302C4FE
	c.mv	s4,a0
	blt	zero,a0,00000000230383BC

l23038374:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230383BC

l2303837E:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230383BC

l2303838A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023038518

l23038396:
	jal	ra,0000000023033B12

l2303839A:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000242
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-000003EC
	jal	ra,00000000230018FA

l230383BC:
	lui	s3,0002307A
	addi	a2,s3,-000003CC
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002302C4FE
	c.swsp	s3,00000014
	c.mv	s2,a0
	bge	zero,a0,00000000230387E6

l230383D4:
	lui	s3,0002307A
	c.mv	a1,a0
	addi	a2,s3,-000003C4
	c.mv	a0,s1
	c.swsp	zero,00000030
	jal	ra,000000002302C66A
	c.li	a5,00000001
	bne	a0,a5,0000000023038644

l230383EC:
	c.addi4spn	a4,00000060
	c.li	a3,00000000
	addi	a2,s3,-000003C4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	c.mv	s5,a0
	bltu	a5,a4,0000000023038448

l23038408:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038448

l23038414:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,000000002303851E

l23038420:
	jal	ra,0000000023033B12

l23038424:
	c.lwsp	ra,000001F4
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000141
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-000003B8
	jal	ra,00000000230018FA

l23038448:
	c.lwsp	ra,00000194
	c.li	s3,00000002
	blt	s3,a2,0000000023038644

l23038450:
	c.mv	a1,s5
	c.addi4spn	a0,00000050
	jal	ra,000000002306CF80
	lbu	a5,s0,-0000006C
	sb	zero,sp,+00000052
	bltu	s3,a5,00000000230384A2

l23038464:
	lui	a5,0004201A
	lbu	a5,a5,+00000623
	bltu	s3,a5,00000000230384A2

l23038470:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038524

l2303847A:
	jal	ra,0000000023033B12

l2303847E:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.addi4spn	a5,00000050
	addi	a4,zero,+00000145
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000038C
	jal	ra,00000000230018FA

l230384A2:
	c.addi4spn	a0,00000050
	jal	ra,000000002306D630
	c.mv	s10,a0
	c.li	s5,00000000
	lui	s6,0004201A
	lui	s7,0004200E
	lui	s8,0002307A
	lui	s9,00023079
	lui	s11,0002307A

l230384C0:
	bge	s5,s10,00000000230389B0

l230384C4:
	c.addi4spn	a5,00000050
	c.add	a5,s5
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,000000002303852A

l230384D4:
	addi	a4,zero,+0000004D
	beq	a5,a4,00000000230389D6

l230384DC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023038A74

l230384E8:
	jal	ra,0000000023033B12

l230384EC:
	lui	a3,0002307A
	lui	a2,00023072
	c.mv	a1,a0
	lui	a0,00023072
	addi	a5,a3,-0000055C
	addi	a6,zero,+00000128
	addi	a4,zero,+00000128
	addi	a3,a3,-0000055C
	addi	a2,a2,+0000061C
	addi	a0,a0,+0000062C
	jal	ra,00000000230018FA

l23038516:
	c.j	0000000023038516

l23038518:
	jal	ra,0000000023033AF0
	c.j	000000002303839A

l2303851E:
	jal	ra,0000000023033AF0
	c.j	0000000023038424

l23038524:
	jal	ra,0000000023033AF0
	c.j	000000002303847E

l2303852A:
	lui	a5,0002307A
	addi	a2,a5,-00000364
	c.addi4spn	a3,00000080
	c.mv	a1,s2
	c.mv	a0,s1
	c.swsp	zero,00000040
	jal	ra,000000002302C642
	c.lwsp	sp,000000C4
	c.li	a5,00000014
	c.mv	s3,a0
	bne	a4,a5,000000002303893C

l23038548:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230385DA

l23038552:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230385DA

l2303855E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023038936

l2303856A:
	jal	ra,0000000023033B12

l2303856E:
	c.swsp	a0,00000090
	lw	a0,s3,+00000000
	jal	ra,0000000023038198
	c.mv	s6,a0
	lw	a0,s3,+00000004
	jal	ra,0000000023038198
	c.mv	s7,a0
	lw	a0,s3,+00000008
	jal	ra,0000000023038198
	c.mv	s8,a0
	lw	a0,s3,+0000000C
	jal	ra,0000000023038198
	c.mv	s5,a0
	lw	a0,s3,+00000010
	andi	s5,s5,+000000FF
	jal	ra,0000000023038198
	andi	a0,a0,+000000FF
	c.lwsp	tp,00000174
	c.swsp	a0,00000080
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	c.swsp	s5,00000000
	andi	a7,s8,+000000FF
	andi	a6,s7,+000000FF
	andi	a5,s6,+000000FF
	addi	a4,zero,+000000F9
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000035C
	jal	ra,00000000230018FA

l230385DA:
	lw	a0,s3,+00000000
	jal	ra,0000000023038198
	andi	s5,a0,+000000FF
	lw	a0,s3,+00000004
	jal	ra,0000000023038198
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	andi	s3,a0,+000000FF
	bltu	a5,a4,000000002303863A

l230385FC:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,000000002303863A

l23038608:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,00000000230389CA

l23038614:
	jal	ra,0000000023033B12

l23038618:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000114
	addi	a3,a3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,-00000300
	jal	ra,00000000230018FA

l2303863A:
	andi	a1,s3,+000000FF
	c.mv	a0,s5
	jal	ra,000000002303812E

l23038644:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000228
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	addi	a5,zero,+0000003C
	c.mv	s6,a0
	bne	a4,a5,0000000023038AC4

l23038662:
	c.li	s3,00000000
	addi	s5,zero,+0000003C

l23038668:
	add	a5,s6,s3
	c.lw	a5,0(a0)
	jal	ra,0000000023038198
	c.addi4spn	a5,00000080
	c.add	a5,s3
	c.sw	a5,0(a0)
	c.addi	s3,00000004
	bne	s3,s5,0000000023038668

l2303867E:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	lui	s3,0002307A
	bltu	a5,a4,00000000230386C6

l2303868C:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230386C6

l23038698:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023038ABE

l230386A4:
	jal	ra,0000000023033B12

l230386A8:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000258
	addi	a3,s3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000214
	jal	ra,00000000230018FA

l230386C6:
	c.li	a4,00000000
	addi	a3,zero,+0000003C
	c.addi4spn	a2,00000080
	addi	a1,zero,+00000259
	addi	a0,s3,-0000055C
	jal	ra,0000000023001928

l230386DA:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,-000001B8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000038
	bne	a4,a5,0000000023038B18

l230386F6:
	addi	s5,sp,+00000060
	c.mv	s3,a0
	addi	s7,a0,+00000038
	c.mv	s6,s5

l23038702:
	lw	a0,s3,+00000000
	c.addi	s3,00000004
	c.addi	s5,00000002
	jal	ra,0000000023038198
	sh	a0,s5,+00000FFE
	bne	s7,s3,0000000023038702

l23038716:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	lui	s3,0002307A
	bltu	a5,a4,000000002303875E

l23038724:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,000000002303875E

l23038730:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023038B12

l2303873C:
	jal	ra,0000000023033B12

l23038740:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000263
	addi	a3,s3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-000001A4
	jal	ra,00000000230018FA

l2303875E:
	c.li	a4,00000000
	addi	a3,zero,+00000038
	c.mv	a2,s6
	addi	a1,zero,+00000264
	addi	a0,s3,-0000055C
	jal	ra,0000000023001928

l23038772:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000148
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	bne	a4,a5,0000000023038B6C

l2303878C:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230387E6

l23038796:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230387E6

l230387A2:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	lw	s2,a0,+00000000
	beq	a5,zero,0000000023038B66

l230387B2:
	jal	ra,0000000023033B12

l230387B6:
	c.swsp	a0,00000090
	c.mv	a0,s2
	jal	ra,0000000023038198
	c.lwsp	tp,00000174
	slli	a5,a0,00000010
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	c.srli	a5,00000010
	addi	a4,zero,+0000026C
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000013C
	jal	ra,00000000230018FA

l230387E6:
	lui	a2,0002307A
	addi	a2,a2,-000000EC
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002302C4FE
	c.mv	s3,a0
	bge	zero,a0,0000000023038C72

l230387FC:
	lui	s2,00023070
	c.mv	a1,a0
	addi	a2,s2,+0000059C
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,000000002302C66A
	c.li	a5,00000001
	bne	a0,a5,0000000023038C72

l23038814:
	addi	a2,s2,+0000059C
	c.addi4spn	a4,0000004C
	c.li	a3,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	c.lwsp	a3,00000064
	c.mv	s2,a0
	lui	a0,0002307A
	addi	a0,a0,-000000E8
	jal	ra,00000000230018FA
	c.lwsp	a3,00000084
	c.li	a5,00000003
	blt	a5,a2,0000000023038C72

l2303883C:
	c.mv	a1,s2
	c.addi4spn	a0,00000050
	jal	ra,000000002306CF80
	lui	a0,0002307A
	c.addi4spn	a1,00000050
	addi	a0,a0,-000000C8
	sb	zero,sp,+00000053
	jal	ra,00000000230018FA
	c.addi4spn	a0,00000050
	jal	ra,000000002306D630
	c.mv	s10,a0
	c.li	s2,00000000
	lui	s5,0004201A
	lui	s6,0004200E
	lui	s7,0002307A
	lui	s8,00023079
	lui	s9,00023079
	lui	s11,0002307A

l23038878:
	bge	s2,s10,000000002303891A

l2303887C:
	c.addi4spn	a5,00000050
	c.add	a5,s2
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,000000002303908C

l2303888C:
	addi	a4,zero,+0000004D
	beq	a5,a4,00000000230391DC

l23038894:
	addi	a4,zero,+00000042
	bne	a5,a4,00000000230392A0

l2303889C:
	c.addi4spn	a0,00000080
	jal	ra,0000000023036DE8
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,00000000230388DA

l230388D4:
	c.li	a4,00000001
	bne	a5,a4,0000000023038BB8

l230388DA:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023038912

l230388E4:
	lbu	a4,s5,+00000623
	bltu	a5,a4,0000000023038912

l230388EC:
	lw	a5,s6,+00000244
	beq	a5,zero,0000000023039084

l230388F4:
	jal	ra,0000000023033B12

l230388F8:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000093
	addi	a3,s7,-0000055C
	addi	a2,s8,+000003F8
	addi	a0,a0,-00000080

l2303890E:
	jal	ra,00000000230018FA

l23038912:
	c.addi	s2,00000001
	c.li	a5,00000003
	bne	s2,a5,0000000023038878

l2303891A:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bgeu	a5,a4,00000000230392E0

l23038924:
	lui	a1,00023082
	c.li	a2,00000006
	addi	a1,a1,+000007A0
	c.addi4spn	a0,00000080
	jal	ra,000000002306CF80
	c.j	0000000023038BFE

l23038936:
	jal	ra,0000000023033AF0
	c.j	000000002303856E

l2303893C:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230389A8

l23038946:
	lbu	a4,s6,+00000623
	bltu	a5,a4,0000000023038972

l2303894E:
	lw	a5,s7,+00000244
	c.beqz	a5,00000000230389C4

l23038954:
	jal	ra,0000000023033B12

l23038958:
	lui	a5,00023079
	c.mv	a1,a0
	addi	a4,zero,+00000100
	addi	a3,s8,-0000055C
	addi	a2,a5,-000001B4
	addi	a0,s11,-00000324
	jal	ra,00000000230018FA

l23038972:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,00000000230389A8

l2303897C:
	lbu	a4,s6,+00000623
	bltu	a5,a4,00000000230389A8

l23038984:
	lw	a5,s7,+00000244
	c.beqz	a5,00000000230389D0

l2303898A:
	jal	ra,0000000023033B12

l2303898E:
	lui	a5,0002307A
	c.mv	a1,a0
	addi	a4,zero,+00000117
	addi	a3,s8,-0000055C
	addi	a2,s9,+000003F8
	addi	a0,a5,-000002D4

l230389A4:
	jal	ra,00000000230018FA

l230389A8:
	c.addi	s5,00000001
	c.li	a5,00000002
	bne	s5,a5,00000000230384C0

l230389B0:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bgeu	a5,a4,0000000023038A7A

l230389BA:
	addi	s3,zero,+00000032
	addi	s5,zero,+00000032
	c.j	000000002303863A

l230389C4:
	jal	ra,0000000023033AF0
	c.j	0000000023038958

l230389CA:
	jal	ra,0000000023033AF0
	c.j	0000000023038618

l230389D0:
	jal	ra,0000000023033AF0
	c.j	000000002303898E

l230389D6:
	c.addi4spn	a0,00000080
	sb	zero,sp,+00000080
	jal	ra,0000000023036E10
	c.bnez	a0,00000000230389F4

l230389E2:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	lbu	s5,sp,+00000080
	bgeu	a5,a4,0000000023038A28

l230389F0:
	c.mv	s3,s5
	c.j	000000002303863A

l230389F4:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,00000000230389A8

l230389FE:
	lbu	a4,s6,+00000623
	bltu	a5,a4,00000000230389A8

l23038A06:
	lw	a5,s7,+00000244
	c.beqz	a5,0000000023038A6E

l23038A0C:
	jal	ra,0000000023033B12

l23038A10:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000122
	addi	a3,s8,-0000055C
	addi	a2,s9,+000003F8
	addi	a0,a0,-0000027C
	c.j	00000000230389A4

l23038A28:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	c.mv	s3,s5
	bltu	a5,a4,000000002303863A

l23038A36:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038A68

l23038A40:
	jal	ra,0000000023033B12

l23038A44:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000011F
	addi	a3,a3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,-000002A8
	jal	ra,00000000230018FA
	c.j	00000000230389F0

l23038A68:
	jal	ra,0000000023033AF0
	c.j	0000000023038A44

l23038A6E:
	jal	ra,0000000023033AF0
	c.j	0000000023038A10

l23038A74:
	jal	ra,0000000023033AF0
	c.j	00000000230384EC

l23038A7A:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230389BA

l23038A86:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038AB8

l23038A90:
	jal	ra,0000000023033B12

l23038A94:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	addi	a4,zero,+0000012E
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000250
	jal	ra,00000000230018FA
	c.j	00000000230389BA

l23038AB8:
	jal	ra,0000000023033AF0
	c.j	0000000023038A94

l23038ABE:
	jal	ra,0000000023033AF0
	c.j	00000000230386A8

l23038AC4:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,00000000230386DA

l23038ACE:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230386DA

l23038ADA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038B0C

l23038AE4:
	jal	ra,0000000023033B12

l23038AE8:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000025B
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-000001E8
	jal	ra,00000000230018FA
	c.j	00000000230386DA

l23038B0C:
	jal	ra,0000000023033AF0
	c.j	0000000023038AE8

l23038B12:
	jal	ra,0000000023033AF0
	c.j	0000000023038740

l23038B18:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038772

l23038B22:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038772

l23038B2E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038B60

l23038B38:
	jal	ra,0000000023033B12

l23038B3C:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+00000266
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000178
	jal	ra,00000000230018FA
	c.j	0000000023038772

l23038B60:
	jal	ra,0000000023033AF0
	c.j	0000000023038B3C

l23038B66:
	jal	ra,0000000023033AF0
	c.j	00000000230387B6

l23038B6C:
	lbu	a4,s0,-0000006C
	bltu	a5,a4,00000000230387E6

l23038B74:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230387E6

l23038B80:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023038BB2

l23038B8A:
	jal	ra,0000000023033B12

l23038B8E:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000026E
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000114
	jal	ra,00000000230018FA
	c.j	00000000230387E6

l23038BB2:
	jal	ra,0000000023033AF0
	c.j	0000000023038B8E

l23038BB8:
	lbu	a5,s0,-0000006C
	bltu	a4,a5,0000000023038BFE

l23038BC0:
	lui	a5,0004201A
	lbu	a5,a5,+00000623
	bltu	a4,a5,0000000023038C08

l23038BCC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,000000002303907E

l23038BD8:
	jal	ra,0000000023033B12

l23038BDC:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000090
	addi	a3,a3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,-000000AC

l23038BFA:
	jal	ra,00000000230018FA

l23038BFE:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023038C66

l23038C08:
	lui	a5,0004201A
	lbu	a4,a5,+00000623
	c.li	a5,00000002
	bltu	a5,a4,0000000023038C66

l23038C16:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039326

l23038C22:
	jal	ra,0000000023033B12

l23038C26:
	lbu	a5,sp,+00000085
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	lui	a3,0002307A
	lui	a2,0002306E
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	c.mv	a1,a0
	lui	a0,0002307A
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	addi	a4,zero,+000000C0
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000000F8
	jal	ra,00000000230018FA

l23038C66:
	c.addi4spn	a0,00000080
	jal	ra,0000000023036EB8
	c.addi4spn	a0,00000080
	jal	ra,0000000023036E9C

l23038C72:
	lui	a2,0002307A
	c.mv	a1,s4
	addi	a2,a2,+0000013C
	c.mv	a0,s1
	jal	ra,000000002302C4FE
	c.mv	a1,a0
	bge	zero,a0,0000000023038D08

l23038C88:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,+00000144
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s2,a0
	bne	a4,a5,0000000023039334

l23038CA2:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023038CF8

l23038CAC:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038CF8

l23038CB8:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,000000002303932E

l23038CC4:
	jal	ra,0000000023033B12

l23038CC8:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	c.lwsp	tp,00000174
	andi	a5,a0,+000000FF
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	addi	a4,zero,+0000027F
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000154
	jal	ra,00000000230018FA

l23038CF8:
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	andi	a0,a0,+000000FF
	jal	ra,0000000023036EEE

l23038D08:
	c.lwsp	s0,000001F4
	c.mv	a1,s4
	c.mv	a0,s1
	addi	a2,a5,-000003CC
	jal	ra,000000002302C4FE
	c.mv	s5,a0
	bge	zero,a0,000000002303990C

l23038D1C:
	lui	a2,0002307A
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,a2,+000001A4
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	c.li	a5,00000010
	c.mv	s6,a0
	bne	a4,a5,0000000023039386

l23038D38:
	c.li	s2,00000000
	c.li	s3,00000004

l23038D3C:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023038198
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023038D3C

l23038D56:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023038DB0

l23038D60:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038DB0

l23038D6C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039380

l23038D78:
	jal	ra,0000000023033B12

l23038D7C:
	lbu	a5,sp,+00000083
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000298
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000001B4
	jal	ra,00000000230018FA

l23038DB0:
	c.addi4spn	a0,00000080
	jal	ra,0000000023049406

l23038DB6:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,+0000021C
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,00000000230393DC

l23038DD4:
	c.li	s2,00000000
	c.li	s3,00000008

l23038DD8:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023038198
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023038DD8

l23038DF2:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023038E64

l23038DFC:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038E64

l23038E08:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,00000000230393D6

l23038E14:
	jal	ra,0000000023033B12

l23038E18:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,0002307A
	lui	a2,0002306E
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,0002307A
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002AC
	addi	a3,a3,-0000055C
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+000004AC
	addi	a0,a0,+0000022C
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,00000000230018FA

l23038E64:
	c.addi4spn	a0,00000080
	jal	ra,000000002304940A

l23038E6A:
	lui	a2,0002307A
	c.addi4spn	a3,00000044
	addi	a2,a2,+000002A0
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,0000000023039432

l23038E88:
	c.li	s2,00000000
	c.li	s3,00000008

l23038E8C:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023038198
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023038E8C

l23038EA6:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023038F18

l23038EB0:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038F18

l23038EBC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,000000002303942C

l23038EC8:
	jal	ra,0000000023033B12

l23038ECC:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,0002307A
	lui	a2,0002306E
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,0002307A
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002C0
	addi	a3,a3,-0000055C
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+000004AC
	addi	a0,a0,+000002B0
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,00000000230018FA

l23038F18:
	c.addi4spn	a0,00000080
	jal	ra,000000002304940E

l23038F1E:
	lui	s2,0002307A
	addi	a2,s2,+00000324
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,00000024
	jal	ra,000000002302C66A
	c.li	a5,00000001
	c.mv	s11,a0
	bne	a0,a5,000000002303990C

l23038F38:
	c.addi4spn	a4,00000048
	c.li	a3,00000000
	addi	a2,s2,+00000324
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	c.mv	s3,a0
	bltu	a5,a4,0000000023038F94

l23038F54:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038F94

l23038F60:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039482

l23038F6C:
	jal	ra,0000000023033B12

l23038F70:
	c.lwsp	s1,000000E4
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+000001C1
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000330
	jal	ra,00000000230018FA

l23038F94:
	c.lwsp	s1,00000084
	c.li	s2,00000002
	blt	s2,a2,000000002303990C

l23038F9C:
	c.mv	a1,s3
	c.addi4spn	a0,0000003C
	jal	ra,000000002306CF80
	lbu	a5,s0,-0000006C
	sb	zero,sp,+0000003E
	bltu	s2,a5,0000000023038FF0

l23038FB0:
	lui	a5,0004201A
	lbu	a5,a5,+00000623
	bltu	s2,a5,0000000023038FF0

l23038FBC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039488

l23038FC8:
	jal	ra,0000000023033B12

l23038FCC:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.addi4spn	a5,0000003C
	addi	a4,zero,+000001C5
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000358
	jal	ra,00000000230018FA

l23038FF0:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	jal	ra,000000002306D1BC
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000060
	jal	ra,000000002306D1BC
	c.addi4spn	a0,0000003C
	jal	ra,000000002306D630
	c.swsp	a0,00000094
	addi	s2,sp,+0000003C
	c.swsp	zero,00000090
	c.li	s9,00000000
	lui	s7,0004201A
	lui	s8,0004200E
	lui	s6,0002307A
	lui	s10,00023079

l23039024:
	c.lwsp	a2,000001F4
	bge	s9,a5,000000002303976C

l2303902A:
	lbu	a5,s2,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,000000002303949E

l23039036:
	bltu	a4,a5,000000002303948E

l2303903A:
	addi	a4,zero,+00000042
	beq	a5,a4,0000000023039640

l23039042:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039BAC

l2303904E:
	jal	ra,0000000023033B12

l23039052:
	lui	a3,0002307A
	lui	a2,00023072
	c.mv	a1,a0
	lui	a0,00023072
	addi	a5,a3,-0000055C
	addi	a6,zero,+000001A6
	addi	a4,zero,+000001A6
	addi	a3,a3,-0000055C
	addi	a2,a2,+0000061C
	addi	a0,a0,+0000062C
	jal	ra,00000000230018FA

l2303907C:
	c.j	000000002303907C

l2303907E:
	jal	ra,0000000023033AF0
	c.j	0000000023038BDC

l23039084:
	jal	ra,0000000023033AF0
	jal	zero,00000000230388F8

l2303908C:
	lui	a5,0002307A
	addi	a2,a5,-00000054
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	ra,000001F4
	c.li	a4,00000006
	c.mv	a1,a0
	c.swsp	a5,00000090
	bne	a5,a4,000000002303910A

l230390AA:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,000000002306CF80
	c.addi4spn	a0,00000080
	jal	ra,0000000023036E9C
	lui	a2,0002307A
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	addi	a2,a2,-00000044
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.lwsp	ra,000001D4
	c.lwsp	tp,000001F4
	c.mv	a1,a0
	beq	a4,a5,0000000023039178

l230390D4:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038912

l230390DE:
	lbu	a4,s5,+00000623
	bltu	a5,a4,000000002303913C

l230390E6:
	lw	a5,s6,+00000244
	beq	a5,zero,00000000230391CA

l230390EE:
	jal	ra,0000000023033B12

l230390F2:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000054
	addi	a3,s7,-0000055C
	addi	a2,s9,-000001B4
	addi	a0,a0,-00000010
	c.j	0000000023039138

l2303910A:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038912

l23039114:
	lbu	a4,s5,+00000623
	bltu	a5,a4,000000002303913C

l2303911C:
	lw	a5,s6,+00000244
	c.beqz	a5,0000000023039172

l23039122:
	jal	ra,0000000023033B12

l23039126:
	c.mv	a1,a0
	addi	a4,zero,+00000047
	addi	a3,s7,-0000055C
	addi	a2,s9,-000001B4
	addi	a0,s11,-00000038

l23039138:
	jal	ra,00000000230018FA

l2303913C:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023038912

l23039146:
	lbu	a4,s5,+00000623
	bltu	a5,a4,0000000023038912

l2303914E:
	lw	a5,s6,+00000244
	c.beqz	a5,00000000230391D6

l23039154:
	jal	ra,0000000023033B12

l23039158:
	lui	a5,0002307A
	c.mv	a1,a0
	addi	a4,zero,+0000009E
	addi	a3,s7,-0000055C
	addi	a2,s8,+000003F8
	addi	a0,a5,+00000044
	jal	zero,000000002303890E

l23039172:
	jal	ra,0000000023033AF0
	c.j	0000000023039126

l23039178:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,000000002306CF80
	c.addi4spn	a0,00000080
	jal	ra,0000000023036EB8
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023038BFE

l23039190:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038C08

l2303919C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230391D0

l230391A6:
	jal	ra,0000000023033B12

l230391AA:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+0000009B
	addi	a3,a3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000018
	c.j	0000000023038BFA

l230391CA:
	jal	ra,0000000023033AF0
	c.j	00000000230390F2

l230391D0:
	jal	ra,0000000023033AF0
	c.j	00000000230391AA

l230391D6:
	jal	ra,0000000023033AF0
	c.j	0000000023039158

l230391DC:
	c.addi4spn	a0,00000080
	jal	ra,0000000023036DF8
	c.bnez	a0,0000000023039264

l230391E4:
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,0000000023039264

l23039216:
	c.li	a4,00000001
	beq	a5,a4,0000000023039264

l2303921C:
	lbu	a5,s0,-0000006C
	bltu	a4,a5,0000000023038BFE

l23039224:
	lui	a5,0004201A
	lbu	a5,a5,+00000623
	bltu	a4,a5,0000000023038C08

l23039230:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303925E

l2303923A:
	jal	ra,0000000023033B12

l2303923E:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+000000A6
	addi	a3,a3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000070
	c.j	0000000023038BFA

l2303925E:
	jal	ra,0000000023033AF0
	c.j	000000002303923E

l23039264:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023038912

l2303926E:
	lbu	a4,s5,+00000623
	bltu	a5,a4,0000000023038912

l23039276:
	lw	a5,s6,+00000244
	c.beqz	a5,000000002303929A

l2303927C:
	jal	ra,0000000023033B12

l23039280:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+000000A9
	addi	a3,s7,-0000055C
	addi	a2,s8,+000003F8
	addi	a0,a0,+0000009C
	jal	zero,000000002303890E

l2303929A:
	jal	ra,0000000023033AF0
	c.j	0000000023039280

l230392A0:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230392DA

l230392AA:
	jal	ra,0000000023033B12

l230392AE:
	lui	a3,0002307A
	lui	a2,00023072
	c.mv	a1,a0
	lui	a0,00023072
	addi	a5,a3,-0000055C
	addi	a6,zero,+000000AF
	addi	a4,zero,+000000AF
	addi	a3,a3,-0000055C
	addi	a2,a2,+0000061C
	addi	a0,a0,+0000062C
	jal	ra,00000000230018FA

l230392D8:
	c.j	00000000230392D8

l230392DA:
	jal	ra,0000000023033AF0
	c.j	00000000230392AE

l230392E0:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038924

l230392EC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039320

l230392F6:
	jal	ra,0000000023033B12

l230392FA:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	addi	a4,zero,+000000B5
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000000C8
	jal	ra,00000000230018FA
	jal	zero,0000000023038924

l23039320:
	jal	ra,0000000023033AF0
	c.j	00000000230392FA

l23039326:
	jal	ra,0000000023033AF0
	jal	zero,0000000023038C26

l2303932E:
	jal	ra,0000000023033AF0
	c.j	0000000023038CC8

l23039334:
	lbu	a4,s0,-0000006C
	bltu	a5,a4,0000000023038D08

l2303933C:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038D08

l23039348:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303937A

l23039352:
	jal	ra,0000000023033B12

l23039356:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+00000283
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+0000017C
	jal	ra,00000000230018FA
	c.j	0000000023038D08

l2303937A:
	jal	ra,0000000023033AF0
	c.j	0000000023039356

l23039380:
	jal	ra,0000000023033AF0
	c.j	0000000023038D7C

l23039386:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038DB6

l23039390:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038DB6

l2303939C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230393D0

l230393A6:
	jal	ra,0000000023033B12

l230393AA:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000029B
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+000001E4
	jal	ra,00000000230018FA
	c.j	0000000023038DB6

l230393D0:
	jal	ra,0000000023033AF0
	c.j	00000000230393AA

l230393D6:
	jal	ra,0000000023033AF0
	c.j	0000000023038E18

l230393DC:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038E6A

l230393E6:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038E6A

l230393F2:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039426

l230393FC:
	jal	ra,0000000023033B12

l23039400:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+000002AF
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000268
	jal	ra,00000000230018FA
	c.j	0000000023038E6A

l23039426:
	jal	ra,0000000023033AF0
	c.j	0000000023039400

l2303942C:
	jal	ra,0000000023033AF0
	c.j	0000000023038ECC

l23039432:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023038F1E

l2303943C:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023038F1E

l23039448:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303947C

l23039452:
	jal	ra,0000000023033B12

l23039456:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+000002C3
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+000002EC
	jal	ra,00000000230018FA
	c.j	0000000023038F1E

l2303947C:
	jal	ra,0000000023033AF0
	c.j	0000000023039456

l23039482:
	jal	ra,0000000023033AF0
	c.j	0000000023038F70

l23039488:
	jal	ra,0000000023033AF0
	c.j	0000000023038FCC

l2303948E:
	addi	a4,zero,+00000062
	beq	a5,a4,0000000023039640

l23039496:
	addi	a4,zero,+00000066
	bne	a5,a4,0000000023039042

l2303949E:
	lui	a5,0002307A
	c.addi4spn	a3,0000004C
	addi	a2,a5,+00000458
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,000000002302C642
	c.lwsp	a3,000000A4
	addi	a5,zero,+00000038
	c.mv	a4,a0
	bne	a3,a5,0000000023039804

l230394BE:
	c.li	s3,00000000
	c.li	s5,0000000E

l230394C2:
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.swsp	a4,00000090
	jal	ra,0000000023038198
	c.addi4spn	a5,00000060
	c.add	a5,s3
	sb	a0,a5,+00000000
	c.addi	s3,00000001
	c.lwsp	tp,000001D4
	bne	s3,s5,00000000230394C2

l230394E0:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	lui	s3,0002307A
	bltu	a5,a4,0000000023039528

l230394EE:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039528

l230394FA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,00000000230397F8

l23039506:
	jal	ra,0000000023033B12

l2303950A:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000156
	addi	a3,s3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000464
	jal	ra,00000000230018FA

l23039528:
	c.li	a3,0000000E
	c.li	a4,00000000
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000157
	addi	a0,s3,-0000055C
	jal	ra,0000000023001928
	c.addi4spn	a5,00000060
	addi	a3,sp,+0000006E

l23039540:
	lbu	a4,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,FFFFFFF6
	sb	a4,a5,+00000FFF
	bne	a3,a5,0000000023039540

l23039550:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230395D8

l2303955A:
	lui	a4,0004201A
	lbu	a3,a4,+00000623
	c.mv	s5,a4
	bltu	a5,a3,0000000023039598

l23039568:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,00000000230397FE

l23039574:
	jal	ra,0000000023033B12

l23039578:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.li	a5,0000000A
	addi	a4,zero,+0000015B
	addi	a3,s3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000490
	jal	ra,00000000230018FA

l23039598:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,00000000230395D8

l230395A2:
	lbu	a4,s5,+00000623
	bltu	a5,a4,00000000230395D8

l230395AA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,000000002303987C

l230395B6:
	jal	ra,0000000023033B12

l230395BA:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+0000018F
	addi	a3,s3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000500
	jal	ra,00000000230018FA

l230395D8:
	lbu	a3,s2,+00000000
	addi	a5,zero,+00000042
	lbu	a4,s0,-0000006C
	bne	a3,a5,0000000023039888

l230395E8:
	c.li	a5,00000000
	c.li	a3,0000000E

l230395EC:
	c.addi4spn	a1,00000060
	c.add	a1,a5
	lbu	a1,a1,+00000000
	c.addi4spn	a2,00000050
	c.add	a2,a5
	sb	a1,a2,+00000000
	c.addi	a5,00000001
	bne	a5,a3,00000000230395EC

l23039602:
	c.li	a5,00000001
	bltu	a5,a4,00000000230398E8

l23039608:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230398E8

l23039614:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039882

l23039620:
	jal	ra,0000000023033B12

l23039624:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000195
	addi	a3,s3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000534
	c.j	00000000230396FA

l23039640:
	c.addi4spn	a0,00000060
	jal	ra,0000000023036E28
	c.mv	s3,a0
	lbu	a4,s0,-0000006C
	bne	a0,zero,00000000230397BE

l23039650:
	c.li	a5,00000002
	bltu	a5,a4,0000000023039686

l23039656:
	lbu	a4,s7,+00000623
	bltu	a5,a4,0000000023039686

l2303965E:
	lw	a5,s8,+00000244
	c.beqz	a5,0000000023039700

l23039664:
	jal	ra,0000000023033B12

l23039668:
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000175
	addi	a3,s6,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+0000037C
	jal	ra,00000000230018FA

l23039686:
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000176
	addi	a0,s6,-0000055C
	jal	ra,0000000023001928
	lbu	a4,s2,+00000000
	addi	a5,zero,+00000042
	bne	a4,a5,000000002303970C

l230396A4:
	c.li	a5,0000000E

l230396A6:
	c.addi4spn	a3,00000060
	c.add	a3,s3
	lbu	a3,a3,+00000000
	c.addi4spn	a4,00000050
	c.add	a4,s3
	sb	a3,a4,+00000000
	c.addi	s3,00000001
	bne	s3,a5,00000000230396A6

l230396BC:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,00000000230398E8

l230396C6:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230398E8

l230396D2:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039706

l230396DC:
	jal	ra,0000000023033B12

l230396E0:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+0000017C
	addi	a3,s6,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+000003B0

l230396FA:
	jal	ra,00000000230018FA
	c.j	00000000230398E8

l23039700:
	jal	ra,0000000023033AF0
	c.j	0000000023039668

l23039706:
	jal	ra,0000000023033AF0
	c.j	00000000230396E0

l2303970C:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023039742

l23039716:
	lbu	a4,s7,+00000623
	bltu	a5,a4,0000000023039742

l2303971E:
	lw	a5,s8,+00000244
	c.beqz	a5,00000000230397B8

l23039724:
	jal	ra,0000000023033B12

l23039728:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000180
	addi	a3,s6,-0000055C
	addi	a2,s10,+000003F8
	addi	a0,a0,+000003E0
	jal	ra,00000000230018FA

l23039742:
	c.addi4spn	a5,00000050
	c.li	a3,0000000E

l23039746:
	c.addi4spn	a4,00000060
	c.add	a4,s3
	lbu	a2,a5,+00000000
	lbu	a4,a4,+00000000
	c.addi	s3,00000001
	c.addi	a5,00000001
	c.add	a4,a2
	sb	a4,a5,+00000FFF
	bne	s3,a3,0000000023039746

l23039760:
	c.swsp	s11,00000090

l23039762:
	c.addi	s9,00000001
	c.li	a5,00000002
	c.addi	s2,00000001
	bne	s9,a5,0000000023039024

l2303976C:
	c.lwsp	tp,000001F4
	bne	a5,zero,00000000230398E8

l23039772:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230398E8

l2303977C:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230398E8

l23039788:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039BB4

l23039794:
	jal	ra,0000000023033B12

l23039798:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+000001AC
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000005DC
	c.j	00000000230396FA

l230397B8:
	jal	ra,0000000023033AF0
	c.j	0000000023039728

l230397BE:
	c.li	a5,00000001
	bltu	a5,a4,0000000023039762

l230397C4:
	lbu	a4,s7,+00000623
	bltu	a5,a4,0000000023039762

l230397CC:
	lw	a5,s8,+00000244
	c.beqz	a5,00000000230397F2

l230397D2:
	jal	ra,0000000023033B12

l230397D6:
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000186
	addi	a3,s6,-0000055C
	addi	a2,s10,+000003F8
	addi	a0,a0,+00000420

l230397EC:
	jal	ra,00000000230018FA
	c.j	0000000023039762

l230397F2:
	jal	ra,0000000023033AF0
	c.j	00000000230397D6

l230397F8:
	jal	ra,0000000023033AF0
	c.j	000000002303950A

l230397FE:
	jal	ra,0000000023033AF0
	c.j	0000000023039578

l23039804:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023039762

l2303980E:
	lbu	a4,s7,+00000623
	bltu	a5,a4,0000000023039840

l23039816:
	lw	a5,s8,+00000244
	c.beqz	a5,0000000023039876

l2303981C:
	jal	ra,0000000023033B12

l23039820:
	c.lwsp	a3,000000E4
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+0000015F
	addi	a3,s6,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+000004CC
	jal	ra,00000000230018FA

l23039840:
	lbu	a4,s0,-0000006C
	c.li	a5,00000001
	bltu	a5,a4,0000000023039762

l2303984A:
	lbu	a4,s7,+00000623
	bltu	a5,a4,0000000023039762

l23039852:
	lw	a5,s8,+00000244
	beq	a5,zero,0000000023039BA6

l2303985A:
	jal	ra,0000000023033B12

l2303985E:
	lui	a5,0002307A
	c.mv	a1,a0
	addi	a4,zero,+000001A0
	addi	a3,s6,-0000055C
	addi	a2,s10,+000003F8
	addi	a0,a5,+000005A4
	c.j	00000000230397EC

l23039876:
	jal	ra,0000000023033AF0
	c.j	0000000023039820

l2303987C:
	jal	ra,0000000023033AF0
	c.j	00000000230395BA

l23039882:
	jal	ra,0000000023033AF0
	c.j	0000000023039624

l23039888:
	c.li	a5,00000001
	bltu	a5,a4,00000000230398C8

l2303988E:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230398C8

l2303989A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039BA0

l230398A6:
	jal	ra,0000000023033B12

l230398AA:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+00000199
	addi	a3,s3,-0000055C
	addi	a2,a2,+000003F8
	addi	a0,a0,+00000564
	jal	ra,00000000230018FA

l230398C8:
	c.addi4spn	a4,00000050
	c.li	a5,00000000
	c.li	a2,0000000E

l230398CE:
	c.addi4spn	a3,00000060
	c.add	a3,a5
	lbu	a1,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.add	a3,a1
	sb	a3,a4,+00000FFF
	bne	a5,a2,00000000230398CE

l230398E8:
	lui	a0,0002307A
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000050
	addi	a1,zero,+000001AE
	addi	a0,a0,-0000055C
	jal	ra,0000000023001928
	lb	a0,sp,+00000056
	jal	ra,000000002300E350
	c.addi4spn	a0,00000050
	jal	ra,0000000023055CD2

l2303990C:
	lui	a2,0002307A
	addi	a2,a2,+0000060C
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,000000002302C4FE
	c.mv	s2,a0
	bge	zero,a0,00000000230399D8

l23039924:
	lui	s3,0002306E
	c.mv	a1,a0
	addi	a2,s3,+00000764
	c.mv	a0,s1
	jal	ra,000000002302C66A
	c.li	a5,00000001
	beq	a0,a5,0000000023039BBA

l2303993A:
	c.li	s3,00000000

l2303993C:
	lui	s5,0002307A
	addi	a2,s5,+00000650
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C66A
	c.li	a5,00000001
	beq	a0,a5,0000000023039C42

l23039952:
	c.li	s5,00000000

l23039954:
	lui	a2,0002307A
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,+00000694
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.mv	s2,a0
	beq	a0,zero,0000000023039CD0

l2303996C:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230399C0

l23039976:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,00000000230399C0

l23039982:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039CCA

l2303998E:
	jal	ra,0000000023033B12

l23039992:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	addi	a4,zero,+00000227
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000006A0
	jal	ra,00000000230018FA

l230399C0:
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	andi	a4,a0,+000000FF

l230399CC:
	c.mv	a3,s5
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023036EFA

l230399D8:
	lui	a2,0002307A
	addi	a2,a2,+000006F0
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,000000002302C4FE
	c.mv	s2,a0
	bge	zero,a0,0000000023039AA2

l230399F0:
	lui	s3,0002306E
	c.mv	a1,a0
	addi	a2,s3,+00000764
	c.mv	a0,s1
	jal	ra,000000002302C66A
	c.li	a5,00000001
	beq	a0,a5,0000000023039D24

l23039A06:
	c.li	s3,00000000

l23039A08:
	lui	s4,0002307A
	addi	a2,s4,+00000650
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C66A
	c.li	a5,00000001
	beq	a0,a5,0000000023039DAC

l23039A1E:
	c.li	s4,00000000

l23039A20:
	lui	a2,0002307A
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,+00000780
	c.mv	a0,s1
	jal	ra,000000002302C642
	c.mv	s2,a0
	c.li	a4,00000000
	c.beqz	a0,0000000023039A96

l23039A38:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039A8C

l23039A42:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039A8C

l23039A4E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039E34

l23039A5A:
	jal	ra,0000000023033B12

l23039A5E:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,0002307A
	lui	a2,0002306E
	lui	a0,0002307A
	addi	a4,zero,+000001F2
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000794
	jal	ra,00000000230018FA

l23039A8C:
	lw	a0,s2,+00000000
	jal	ra,0000000023038198
	c.mv	a4,a0

l23039A96:
	c.mv	a3,s4
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023036F64

l23039AA2:
	lui	a2,0002307A
	addi	a2,a2,+000007C4
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002302C4FE
	c.mv	s2,a0
	blt	zero,a0,0000000023039B00

l23039AB8:
	lbu	a4,s0,-0000006C
	c.li	a5,00000004
	bltu	a5,a4,0000000023039B00

l23039AC2:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039B00

l23039ACE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039E3A

l23039ADA:
	jal	ra,0000000023033B12

l23039ADE:
	lui	a3,0002307A
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307A
	addi	a4,zero,+000002CD
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+000007D0
	jal	ra,00000000230018FA

l23039B00:
	c.lwsp	s0,000001F4
	c.mv	a1,s2
	c.mv	a0,s1
	addi	a2,a5,-000003CC
	jal	ra,000000002302C4FE
	c.mv	a1,a0
	bge	zero,a0,0000000023039B80

l23039B14:
	lui	a2,0002307A
	c.mv	a0,s1
	c.addi4spn	a3,00000044
	addi	a2,a2,+000007F0
	jal	ra,000000002302C642
	c.li	s1,00000000
	c.beqz	a0,0000000023039B30

l23039B28:
	c.lw	a0,0(a0)
	jal	ra,0000000023038198
	c.mv	s1,a0

l23039B30:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039B7A

l23039B3A:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039B7A

l23039B46:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	beq	a5,zero,0000000023039E40

l23039B52:
	jal	ra,0000000023033B12

l23039B56:
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307B
	c.mv	a5,s1
	addi	a4,zero,+000002D9
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000800
	jal	ra,00000000230018FA

l23039B7A:
	c.mv	a0,s1
	jal	ra,000000002300E35A

l23039B80:
	c.lwsp	t6,00000130
	c.lwsp	s11,00000114
	c.lwsp	s7,00000134
	c.lwsp	s3,00000158
	c.lwsp	a5,00000178
	c.lwsp	a1,00000198
	c.lwsp	t2,000001B8
	c.lwsp	gp,000001D8
	c.lwsp	t6,000000E8
	c.lwsp	s11,0000000C
	c.lwsp	s7,0000002C
	c.lwsp	s3,0000004C
	c.lwsp	a5,0000006C
	c.li	a0,00000000
	c.addi16sp	00000100
	c.jr	ra

l23039BA0:
	jal	ra,0000000023033AF0
	c.j	00000000230398AA

l23039BA6:
	jal	ra,0000000023033AF0
	c.j	000000002303985E

l23039BAC:
	jal	ra,0000000023033AF0
	jal	zero,0000000023039052

l23039BB4:
	jal	ra,0000000023033AF0
	c.j	0000000023039798

l23039BBA:
	c.addi4spn	a4,00000050
	addi	a2,s3,+00000764
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,000000002303993A

l23039BD6:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039C22

l23039BE0:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039C22

l23039BEC:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039C3C

l23039BF6:
	jal	ra,0000000023033B12

l23039BFA:
	c.lwsp	a7,00000028
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+00000213
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000610
	jal	ra,00000000230018FA

l23039C22:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,000000002306CF80
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	000000002303993C

l23039C3C:
	jal	ra,0000000023033AF0
	c.j	0000000023039BFA

l23039C42:
	c.addi4spn	a4,00000050
	addi	a2,s5,+00000650
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s5,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,0000000023039952

l23039C5E:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039CAA

l23039C68:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039CAA

l23039C74:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039CC4

l23039C7E:
	jal	ra,0000000023033B12

l23039C82:
	c.lwsp	a7,00000028
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s5
	c.li	a5,00000000
	addi	a4,zero,+0000021E
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000654
	jal	ra,00000000230018FA

l23039CAA:
	c.lwsp	a7,00000084
	c.mv	a1,s5
	c.addi4spn	a0,00000080
	jal	ra,000000002306CF80
	c.lwsp	a7,000000A8
	c.addi4spn	a5,000000C0
	c.add	a5,s5
	sb	zero,a5,+00000FC0
	andi	s5,s5,+000000FF
	c.j	0000000023039954

l23039CC4:
	jal	ra,0000000023033AF0
	c.j	0000000023039C82

l23039CCA:
	jal	ra,0000000023033AF0
	c.j	0000000023039992

l23039CD0:
	lbu	a3,s0,-0000006C
	c.li	a5,00000004
	c.li	a4,00000000
	bltu	a5,a3,00000000230399CC

l23039CDC:
	lui	a4,0004201A
	lbu	a3,a4,+00000623
	c.mv	a4,a0
	bltu	a5,a3,00000000230399CC

l23039CEA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039D1E

l23039CF4:
	jal	ra,0000000023033B12

l23039CF8:
	c.mv	a1,a0
	lui	a3,0002307A
	lui	a2,00023079
	lui	a0,0002307A
	addi	a4,zero,+0000022B
	addi	a3,a3,-0000055C
	addi	a2,a2,-000001B4
	addi	a0,a0,+000006C8
	jal	ra,00000000230018FA
	c.li	a4,00000000
	c.j	00000000230399CC

l23039D1E:
	jal	ra,0000000023033AF0
	c.j	0000000023039CF8

l23039D24:
	c.addi4spn	a4,00000050
	addi	a2,s3,+00000764
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,0000000023039A06

l23039D40:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039D8C

l23039D4A:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039D8C

l23039D56:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039DA6

l23039D60:
	jal	ra,0000000023033B12

l23039D64:
	c.lwsp	a7,00000028
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+000001DF
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000006F4
	jal	ra,00000000230018FA

l23039D8C:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,000000002306CF80
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	0000000023039A08

l23039DA6:
	jal	ra,0000000023033AF0
	c.j	0000000023039D64

l23039DAC:
	c.addi4spn	a4,00000050
	addi	a2,s4,+00000650
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C6B4
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s4,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,0000000023039A1E

l23039DC8:
	lbu	a4,s0,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,0000000023039E14

l23039DD2:
	lui	a4,0004201A
	lbu	a4,a4,+00000623
	bltu	a5,a4,0000000023039E14

l23039DDE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023039E2E

l23039DE8:
	jal	ra,0000000023033B12

l23039DEC:
	c.lwsp	a7,00000028
	lui	a3,0002307A
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307A
	c.mv	a6,s4
	c.li	a5,00000000
	addi	a4,zero,+000001EA
	addi	a3,a3,-0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+0000073C
	jal	ra,00000000230018FA

l23039E14:
	c.lwsp	a7,00000084
	c.mv	a1,s4
	c.addi4spn	a0,00000080
	jal	ra,000000002306CF80
	c.lwsp	a7,00000088
	c.addi4spn	a5,000000C0
	c.add	a5,s4
	sb	zero,a5,+00000FC0
	andi	s4,s4,+000000FF
	c.j	0000000023039A20

l23039E2E:
	jal	ra,0000000023033AF0
	c.j	0000000023039DEC

l23039E34:
	jal	ra,0000000023033AF0
	c.j	0000000023039A5E

l23039E3A:
	jal	ra,0000000023033AF0
	c.j	0000000023039ADE

l23039E40:
	jal	ra,0000000023033AF0
	c.j	0000000023039B56

;; bl_tsen_adc_get: 23039E46
;;   Called from:
;;     230050DC (in wifi_mgmr_start)
bl_tsen_adc_get proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	lui	s1,0004200E
	lhu	a4,s1,-0000038E
	c.lui	a5,00010000
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.sdsp	s0,00000128
	c.addi	a5,FFFFFFFF
	c.mv	s2,a0
	c.mv	s3,a1
	addi	s0,s1,-0000038E
	bne	a4,a5,0000000023039EF8

l23039E6C:
	lui	a1,0002307B
	c.li	a2,0000000E
	addi	a1,a1,-000007B8
	c.addi4spn	a0,00000010
	sh	zero,s0,+00000000
	jal	ra,000000002306CF80
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000001
	sh	zero,sp,+0000000C
	jal	ra,0000000023045F48
	jal	ra,00000000230453E2
	jal	ra,00000000230453D0
	jal	ra,00000000230453A8
	c.addi4spn	a0,00000010
	jal	ra,0000000023045962
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,0000000E
	jal	ra,00000000230453F2
	c.li	a0,00000000
	jal	ra,000000002304575E
	c.addi4spn	a0,0000000C
	jal	ra,000000002304545E
	addi	a0,s1,-0000038E
	auipc	ra,0001EFD3
	jalr	ra,ra,-000004D2
	lui	a5,0004200E
	c.li	a4,00000001
	lui	s1,0002307B
	lw	a5,a5,+00000244
	bne	a0,a4,0000000023039F40

l23039ED4:
	c.beqz	a5,0000000023039F3A

l23039ED6:
	jal	ra,0000000023033B12

l23039EDA:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+0000010B
	addi	a3,s1,-00000764
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000734
	jal	ra,00000000230018FA

l23039EF8:
	lhu	a0,s0,+00000000
	jal	ra,0000000023045884
	fmv.s	fs0,fa0,fa0
	beq	s3,zero,0000000023039F1C

l23039F08:
	jal	ra,000000002306CA0C
	c.mv	a2,a0
	lui	a0,0002307B
	c.mv	a3,a1
	addi	a0,a0,-000006E4
	jal	ra,0000000023003AC6

l23039F1C:
	beq	s2,zero,0000000023039F28

l23039F20:
	fcvt.w.s	a5,fs0
	sh	a5,s2,+00000000

l23039F28:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.ldsp	a2,00000228
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23039F3A:
	jal	ra,0000000023033AF0
	c.j	0000000023039EDA

l23039F40:
	c.beqz	a5,0000000023039F6A

l23039F42:
	jal	ra,0000000023033B12

l23039F46:
	lhu	a5,s0,+00000000
	c.mv	a1,a0
	lui	a2,0002306E
	lui	a0,0002307B
	addi	a4,zero,+0000010D
	addi	a3,s1,-00000764
	addi	a2,a2,+000004AC
	addi	a0,a0,-00000708
	jal	ra,00000000230018FA
	c.j	0000000023039EF8

l23039F6A:
	jal	ra,0000000023033AF0
	c.j	0000000023039F46

;; hal_wifi_start_firmware_task: 23039F70
;;   Called from:
;;     23000AD2 (in stack_wifi)
hal_wifi_start_firmware_task proc
	lui	a6,00042015
	lui	a5,00042013
	lui	a1,0002307B
	lui	a0,00023055
	c.addi	sp,FFFFFFF0
	addi	a6,a6,-0000054C
	addi	a5,a5,+000002B4
	c.li	a4,0000001E
	c.li	a3,00000000
	addi	a2,zero,+00000600
	addi	a1,a1,-000006B8
	addi	a0,a0,+000000FA
	c.swsp	ra,00000084
	jal	ra,0000000023033750
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_gpio_enable_output: 23039FA8
;;   Called from:
;;     2303A3DC (in loopset_led_trigger)
bl_gpio_enable_output proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000100
	sh	a5,sp,+0000000C
	c.li	a5,0000000B
	sb	a5,sp,+00000009
	c.li	a5,00000001
	c.swsp	ra,0000008C
	sb	a0,sp,+00000008
	sb	a5,sp,+0000000A
	c.bnez	a1,0000000023039FE6

l23039FC6:
	c.li	a5,00000002
	sb	a5,sp,+0000000B

l23039FCC:
	c.beqz	a2,0000000023039FD4

l23039FCE:
	c.li	a5,00000001
	sb	a5,sp,+0000000B

l23039FD4:
	c.addi4spn	a0,00000008
	auipc	ra,0001EFD2
	jalr	ra,ra,+00000602
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039FE6:
	sb	zero,sp,+0000000B
	c.j	0000000023039FCC

;; bl_gpio_output_set: 23039FEC
;;   Called from:
;;     2303A0EC (in _cb_led_trigger)
bl_gpio_output_set proc
	c.addi	sp,FFFFFFF0
	sltu	a1,zero,a1
	c.swsp	ra,00000084
	jal	ra,0000000023045FAC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; proc_entry_looprt: 2303A000
proc_entry_looprt proc
	lui	a0,00042015
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004EC
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0002307B
	jal	ra,0000000023067B0A

l2303A016:
	addi	a0,s0,-000006A8
	jal	ra,0000000023003A8A
	addi	a0,zero,+000003E8
	jal	ra,0000000023033E10
	c.j	000000002303A016

;; looprt_evt_notify_async: 2303A028
;;   Called from:
;;     2303A40E (in loopset_led_trigger)
looprt_evt_notify_async proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042015
	addi	a0,a0,-000004EC
	jal	zero,0000000023067A38

;; looprt_evt_status_dump: 2303A038
;;   Called from:
;;     2303A070 (in looprt_start)
looprt_evt_status_dump proc
	lui	a0,00042015
	addi	a0,a0,-000004EC
	jal	zero,0000000023067D96

;; looprt_start: 2303A044
;;   Called from:
;;     23001310 (in aos_loop_proc)
looprt_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	a0,00000084
	addi	a0,s0,-000004EC
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	a2,00000004
	c.mv	s1,a1
	jal	ra,00000000230678B6
	lui	a1,0004200D
	c.li	a2,0000001F
	addi	a1,a1,+00000758
	addi	a0,s0,-000004EC
	jal	ra,0000000023067916
	jal	ra,000000002303A038
	c.lwsp	s0,00000008
	c.lwsp	a2,000000E4
	lui	a1,0002307B
	lui	a0,0002303A
	c.mv	a2,s1
	c.li	a4,0000001A
	c.li	a3,00000000
	addi	a1,a1,-000006B4
	addi	a0,a0,+00000000
	jal	ra,0000000023033750
	addi	a0,s0,-000004EC
	jal	ra,0000000023067A1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; looprt_handler_register: 2303A0A6
;;   Called from:
;;     2303A33E (in loopset_led_hook_on_looprt)
looprt_handler_register proc
	lui	a5,00042015
	lw	a4,a5,-000004EC
	c.mv	a2,a1
	c.beqz	a4,000000002303A0BC

l2303A0B2:
	c.mv	a1,a0
	addi	a0,a5,-000004EC
	jal	zero,0000000023067916

l2303A0BC:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; looprt_timer_register: 2303A0C0
;;   Called from:
;;     2303A2D2 (in _led_bloop_evt)
looprt_timer_register proc
	c.mv	a1,a0
	lui	a0,00042015
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004EC
	c.swsp	ra,00000084
	jal	ra,00000000230679CA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; _cb_led_trigger: 2303A0DA
_cb_led_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a2,56(a1)
	lbu	a0,a2,+00000030
	c.mv	s0,a2
	sltu	a1,zero,a1
	jal	ra,0000000023039FEC
	lui	a5,0004201A
	lbu	a4,a5,+00000625
	c.li	a5,00000001
	bltu	a5,a4,000000002303A148

l2303A0FE:
	lui	a4,0004201A
	lbu	a4,a4,+00000626
	bltu	a5,a4,000000002303A148

l2303A10A:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303A158

l2303A114:
	jal	ra,0000000023033B12

l2303A118:
	c.lw	s0,56(a4)
	c.lw	s0,48(a5)
	c.bnez	a4,000000002303A15E

l2303A11E:
	lui	a6,0002307A
	addi	a6,a6,-00000614

l2303A126:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000095
	addi	a3,a3,-00000684
	addi	a2,a2,+000003F8
	addi	a0,a0,-00000674
	jal	ra,00000000230018FA

l2303A148:
	c.lw	s0,56(a5)
	c.lwsp	a2,00000020
	sltiu	a5,a5,+00000001
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303A158:
	jal	ra,0000000023033AF0
	c.j	000000002303A118

l2303A15E:
	lui	a6,0002307A
	addi	a6,a6,-00000618
	c.j	000000002303A126

;; _led_bloop_msg: 2303A168
_led_bloop_msg proc
	lui	a5,0004201A
	lbu	a4,a5,+00000625
	c.li	a5,00000001
	bltu	a5,a4,000000002303A1E4

l2303A176:
	lui	a4,0004201A
	lbu	a4,a4,+00000626
	bltu	a5,a4,000000002303A1E4

l2303A182:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a2
	c.beqz	a5,000000002303A1DE

l2303A194:
	jal	ra,0000000023033B12

l2303A198:
	c.lw	s0,12(a5)
	c.mv	a1,a0
	lui	a3,0002307B
	c.swsp	a5,00000004
	c.lw	s0,8(a5)
	lui	a2,00023079
	lui	a0,0002307B
	c.swsp	a5,00000080
	lbu	a5,s0,+00000007
	addi	a0,a0,-000005B8
	addi	a4,zero,+00000078
	c.swsp	a5,00000000
	lbu	a7,s0,+00000006
	lbu	a6,s0,+00000005
	lbu	a5,s0,+00000004
	addi	a3,a3,-00000684
	addi	a2,a2,+000003F8
	jal	ra,00000000230018FA
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2303A1DE:
	jal	ra,0000000023033AF0
	c.j	000000002303A198

l2303A1E4:
	c.li	a0,00000000
	c.jr	ra

;; _led_bloop_evt: 2303A1E8
_led_bloop_evt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	c.lw	a3,0(s1)
	lui	s4,0002307B
	lui	s5,0002307B
	lui	s6,0002307A
	c.mv	s9,a1
	c.mv	s8,a3
	addi	s4,s4,-00000640
	addi	s5,s5,-00000634
	addi	s6,s6,-00000618

l2303A21E:
	andi	a5,s1,+00000001
	c.beqz	a5,000000002303A248

l2303A224:
	c.andi	s1,FFFFFFFE

l2303A226:
	c.bnez	s1,000000002303A21E

l2303A228:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	zero,s8,+00000000
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

l2303A248:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002303A304

l2303A24E:
	lw	s2,s9,+0000000C
	c.li	s3,00000000
	lw	s0,s2,+0000000C
	c.beqz	s0,000000002303A25E

l2303A25A:
	lw	s3,s0,+00000004

l2303A25E:
	lui	s7,0002307A
	addi	s7,s7,-00000614

l2303A266:
	addi	a5,s2,+00000008
	bne	s0,a5,000000002303A272

l2303A26E:
	c.andi	s1,FFFFFFFD
	c.j	000000002303A226

l2303A272:
	lui	a5,0004201A
	lbu	a4,a5,+00000625
	c.li	a5,00000002
	bltu	a5,a4,000000002303A2CE

l2303A280:
	lui	a4,0004201A
	lbu	a4,a4,+00000626
	bltu	a5,a4,000000002303A2CE

l2303A28C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303A2FE

l2303A296:
	jal	ra,0000000023033B12

l2303A29A:
	c.lw	s0,52(a4)
	c.lw	s0,48(a5)
	c.mv	a6,s6
	c.bnez	a4,000000002303A2A4

l2303A2A2:
	c.mv	a6,s7

l2303A2A4:
	c.lw	s0,44(a4)
	c.mv	a7,s4
	c.bnez	a4,000000002303A2AC

l2303A2AA:
	c.mv	a7,s5

l2303A2AC:
	lui	a3,0002307B
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+0000004B
	addi	a3,a3,-00000684
	addi	a2,a2,+000004AC
	addi	a0,a0,-0000062C
	jal	ra,00000000230018FA

l2303A2CE:
	addi	a0,s0,+00000008
	jal	ra,000000002303A0C0
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	a5,s2,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,4(a5)
	sw	s0,s2,+00000004
	c.sw	a5,0(s0)
	c.li	a5,00000000
	beq	s3,zero,000000002303A2F8

l2303A2F4:
	lw	a5,s3,+00000004

l2303A2F8:
	c.mv	s0,s3
	c.mv	s3,a5
	c.j	000000002303A266

l2303A2FE:
	jal	ra,0000000023033AF0
	c.j	000000002303A29A

l2303A304:
	c.beqz	s1,000000002303A228

l2303A306:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000005E
	addi	a1,a1,-00000684
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6

l2303A31E:
	c.j	000000002303A31E

;; loopset_led_hook_on_looprt: 2303A320
;;   Called from:
;;     23001314 (in aos_loop_proc)
loopset_led_hook_on_looprt proc
	lui	a5,00042015
	addi	a5,a5,-0000004C
	addi	a4,a5,+00000008
	lui	a0,0002307B
	c.sw	a5,4(a5)
	c.sw	a5,0(a5)
	c.sw	a5,12(a4)
	c.sw	a5,8(a4)
	c.li	a1,00000001
	addi	a0,a0,-000005C8
	jal	zero,000000002303A0A6

;; loopset_led_trigger: 2303A342
;;   Called from:
;;     23037E0C (in hal_gpio_init_from_dts)
loopset_led_trigger proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,zero,+0000003C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s3,a1
	jal	ra,000000002303598A
	c.bnez	a0,000000002303A39C

l2303A35C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002303A396

l2303A366:
	jal	ra,0000000023033B12

l2303A36A:
	lui	a3,0002307B
	lui	a2,00023072
	c.mv	a1,a0
	lui	a0,00023072
	addi	a5,a3,-00000684
	addi	a6,zero,+0000009E
	addi	a4,zero,+0000009E
	addi	a3,a3,-00000684
	addi	a2,a2,+0000061C
	addi	a0,a0,+0000062C
	jal	ra,00000000230018FA

l2303A394:
	c.j	000000002303A394

l2303A396:
	jal	ra,0000000023033AF0
	c.j	000000002303A36A

l2303A39C:
	c.mv	s0,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	addi	s1,s0,+00000008
	sw	s2,s0,+00000030
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023067934
	c.mv	a0,s1
	jal	ra,0000000023067998
	lui	a2,0002303A
	c.mv	a3,s0
	c.li	a5,00000001
	c.li	a4,00000001
	c.mv	a1,s3
	c.mv	a0,s1
	addi	a2,a2,+000000DA
	jal	ra,0000000023067962
	c.li	a1,00000000
	c.li	a2,00000000
	andi	a0,s2,+000000FF
	jal	ra,0000000023039FA8
	jal	ra,00000000230347A4
	lui	a5,00042015
	addi	a5,a5,-0000004C
	c.lw	a5,12(a4)
	addi	a3,a5,+00000008
	c.sw	s0,0(a3)
	c.sw	s0,4(a4)
	c.sw	a5,12(s0)
	c.sw	a4,0(s0)
	jal	ra,00000000230347B8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000002
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002303A028

;; netifapi_do_netif_add: 2303A412
netifapi_do_netif_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lw	a6,a0,+00000020
	c.lw	a0,28(a5)
	c.lw	a0,24(a4)
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,000000002303E0FC
	c.beqz	a0,000000002303A434

l2303A42C:
	c.li	a0,00000000

l2303A42E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303A434:
	c.li	a0,FFFFFFF4
	c.j	000000002303A42E

;; netifapi_do_netif_set_addr: 2303A438
netifapi_do_netif_set_addr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,000000002303E086
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_do_netif_common: 2303A450
netifapi_do_netif_common proc
	lw	t1,a0,+00000010
	c.mv	a5,a0
	c.lw	a0,8(a0)
	beq	t1,zero,000000002303A45E

l2303A45C:
	c.jr	t1

l2303A45E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,12(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_netif_add: 2303A46E
;;   Called from:
;;     2300719C (in wifi_mgmr_sta_enable)
;;     230074FA (in wifi_mgmr_ap_enable)
netifapi_netif_add proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002303A47C

l2303A474:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l2303A47C:
	c.bnez	a2,000000002303A486

l2303A47E:
	lui	a2,00023082
	addi	a2,a2,+000007AC

l2303A486:
	c.bnez	a3,000000002303A490

l2303A488:
	lui	a3,00023082
	addi	a3,a3,+000007AC

l2303A490:
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+00000412
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a6,00000094
	c.jal	000000002303A6A8
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_set_addr: 2303A4B0
;;   Called from:
;;     2300403C (in stateConnectedIPNoEnter)
;;     23004892 (in stateConnectedIPYes_exit)
;;     23009770 (in bl_rx_sm_disconnect_ind)
netifapi_netif_set_addr proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002303A4BE

l2303A4B6:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l2303A4BE:
	c.bnez	a2,000000002303A4C8

l2303A4C0:
	lui	a2,00023082
	addi	a2,a2,+000007AC

l2303A4C8:
	c.bnez	a3,000000002303A4D2

l2303A4CA:
	lui	a3,00023082
	addi	a3,a3,+000007AC

l2303A4D2:
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+00000438
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	c.jal	000000002303A6A8
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_common: 2303A4EC
;;   Called from:
;;     2300402E (in stateConnectedIPNoEnter)
;;     23004498 (in stateGlobalGuard_AP)
;;     230044AA (in stateGlobalGuard_AP)
;;     23004884 (in stateConnectedIPYes_exit)
;;     23004A9E (in stateGlobalGuard_stop)
;;     23004ABC (in stateGlobalGuard_stop)
;;     230079E4 (in wifi_netif_dhcp_start)
;;     23009678 (in bl_rx_sm_connect_ind)
;;     2300968A (in bl_rx_sm_connect_ind)
;;     23009762 (in bl_rx_sm_disconnect_ind)
netifapi_netif_common proc
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+00000450
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a2,0000008C
	c.jal	000000002303A6A8
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; tcpip_thread: 2303A508
tcpip_thread proc
	lui	a5,0004200E
	lw	a5,a5,+00000290
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.beqz	a5,000000002303A52C

l2303A522:
	lui	a4,0004200E
	lw	a0,a4,+00000294
	c.jalr	a5

l2303A52C:
	lui	s1,0002307B
	c.li	s2,FFFFFFFF
	lui	s3,0004200E
	c.li	s5,00000004
	addi	s1,s1,-00000508

l2303A53C:
	jal	ra,0000000023042384
	c.mv	a2,a0
	bne	a0,s2,000000002303A566

l2303A546:
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	addi	a0,s3,+00000298
	jal	ra,0000000023042C9C

l2303A552:
	c.lwsp	a2,00000004
	c.beqz	s0,000000002303A53C

l2303A556:
	lbu	a5,s0,+00000000
	bltu	s5,a5,000000002303A53C

l2303A55E:
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.jr	a5

l2303A566:
	c.bnez	a0,000000002303A56E

l2303A568:
	jal	ra,000000002304232C
	c.j	000000002303A53C

l2303A56E:
	c.addi4spn	a1,0000000C
	addi	a0,s3,+00000298
	jal	ra,0000000023042C9C
	beq	a0,s2,000000002303A568

l2303A57C:
	c.j	000000002303A552
2303A57E                                           03 2A               .*
2303A580 84 00 5C 40 52 85 82 97 23 00 AA 00 48 44 EF 80 ..\@R...#...HD..
2303A590 F0 0A 6D B7 5C 44 0C 44 48 40 82 97 01 C5 48 40 ..m.\D.DH@....H@
2303A5A0 EF 30 70 79 A2 85 25 45 EF 30 D0 19 41 BF 08 44 .0py..%E.0..A..D
2303A5B0 5C 40 82 97 A2 85 21 45 C5 BF 5C 40 08 44 82 97 \@....!E..\@.D..
2303A5C0 B5 BF                                           ..             

;; tcpip_inpkt: 2303A5C2
;;   Called from:
;;     2303A646 (in tcpip_input)
tcpip_inpkt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,+00000298
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,0000000023042CFC
	c.li	a0,00000009
	jal	ra,000000002303DF26
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303A604

l2303A5EA:
	lui	a0,0002307B
	addi	a0,a0,-000004EC
	jal	ra,0000000023003AC6

l2303A5F6:
	c.li	a0,FFFFFFFF

l2303A5F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303A604:
	c.li	a5,00000002
	c.sw	a0,8(a1)
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.sw	a0,12(a2)
	c.mv	a1,a0
	addi	a0,s1,+00000298
	jal	ra,0000000023042C66
	c.beqz	a0,000000002303A5F8

l2303A620:
	lui	a0,0002307B
	addi	a0,a0,-000004D8
	jal	ra,0000000023003AC6
	c.mv	a1,s0
	c.li	a0,00000009
	jal	ra,000000002303DF44
	c.j	000000002303A5F6

;; tcpip_input: 2303A636
tcpip_input proc
	lbu	a5,a1,+00000041
	c.andi	a5,00000018
	c.beqz	a5,000000002303A64A

l2303A63E:
	lui	a2,00023043
	addi	a2,a2,-0000059E

l2303A646:
	jal	zero,000000002303A5C2

l2303A64A:
	lui	a2,0002303D
	addi	a2,a2,+000001B6
	c.j	000000002303A646

;; tcpip_try_callback: 2303A654
;;   Called from:
;;     2303E6A8 (in pbuf_alloc)
tcpip_try_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,+00000298
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,0000000023042CFC
	c.li	a0,00000008
	jal	ra,000000002303DF26
	c.beqz	a0,000000002303A69A

l2303A676:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	c.mv	s0,a0
	c.sw	a0,8(a1)
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.mv	a1,a0
	addi	a0,s1,+00000298
	jal	ra,0000000023042C66
	c.beqz	a0,000000002303A69C

l2303A692:
	c.mv	a1,s0
	c.li	a0,00000008
	jal	ra,000000002303DF44

l2303A69A:
	c.li	a0,FFFFFFFF

l2303A69C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; tcpip_api_call: 2303A6A8
;;   Called from:
;;     2303A4A8 (in netifapi_netif_add)
;;     2303A4E4 (in netifapi_netif_set_addr)
;;     2303A500 (in netifapi_netif_common)
tcpip_api_call proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a1,+00000004
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	jal	ra,0000000023042D04
	c.bnez	a0,000000002303A6FA

l2303A6C6:
	lui	s2,0004200E
	addi	a0,s2,+00000298
	jal	ra,0000000023042CFC
	c.li	a5,00000001
	c.mv	a1,sp
	addi	a0,s2,+00000298
	sb	a5,sp,+00000000
	c.swsp	s0,00000004
	c.swsp	s3,00000080
	c.swsp	s1,00000084
	jal	ra,0000000023042C3E
	c.lwsp	a2,00000044
	c.li	a1,00000000
	jal	ra,0000000023042D70
	c.mv	a0,s1
	jal	ra,0000000023042DBC
	lb	a0,s0,+00000000

l2303A6FA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcpip_init: 2303A708
;;   Called from:
;;     230016A6 (in bfl_main)
tcpip_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a1,00000004
	jal	ra,000000002303AE8E
	c.lwsp	a2,00000044
	c.lwsp	s0,00000064
	lui	a5,0004200E
	sw	a0,a5,+00000290
	lui	a5,0004200E
	lui	a0,0004200E
	sw	a1,a5,+00000294
	addi	a0,a0,+00000298
	addi	a1,zero,+00000032
	jal	ra,0000000023042BF4
	c.lwsp	t3,00000020
	c.lui	a3,00001000
	lui	a1,0002303A
	lui	a0,0002307B
	c.li	a4,0000001E
	addi	a3,a3,-00000060
	c.li	a2,00000000
	addi	a1,a1,+00000508
	addi	a0,a0,-000004F4
	c.addi16sp	00000020
	jal	zero,0000000023042E40

;; lwip_htons: 2303A75A
;;   Called from:
;;     2303052C (in get_dns_request)
;;     23030538 (in get_dns_request)
;;     230305BE (in get_dns_request)
;;     230305CC (in get_dns_request)
;;     230305D6 (in get_dns_request)
;;     230305E0 (in get_dns_request)
;;     230305EA (in get_dns_request)
;;     230305F4 (in get_dns_request)
;;     23030660 (in get_dns_request)
;;     2303066A (in get_dns_request)
;;     23030676 (in get_dns_request)
;;     23030680 (in get_dns_request)
;;     2303068A (in get_dns_request)
;;     23030694 (in get_dns_request)
;;     2303A87C (in dns_send)
;;     2303AAB4 (in dns_recv)
;;     2303AADC (in dns_recv)
;;     2303AAE6 (in dns_recv)
;;     2303ADB2 (in dns_recv)
;;     2303ADC4 (in dns_recv)
;;     2303C662 (in etharp_raw)
;;     2303D232 (in ip4_input)
;;     2303D62A (in ip4_output_if_opt_src)
;;     2303D648 (in ip4_output_if_opt_src)
;;     2303F914 (in tcp_oos_insert_segment)
;;     2303F996 (in tcp_oos_insert_segment)
;;     2303F9AE (in tcp_oos_insert_segment)
;;     2303FB32 (in tcp_free_acked_segments.isra.3)
;;     2303FDDE (in tcp_receive)
;;     2303FE08 (in tcp_receive)
;;     2303FE22 (in tcp_receive)
;;     2303FE2A (in tcp_receive)
;;     2303FE62 (in tcp_receive)
;;     2303FE90 (in tcp_receive)
;;     2303FEB4 (in tcp_receive)
;;     2303FF18 (in tcp_receive)
;;     2303FF46 (in tcp_receive)
;;     2304012A (in tcp_receive)
;;     23040160 (in tcp_receive)
;;     23040176 (in tcp_receive)
;;     23040190 (in tcp_receive)
;;     230401BA (in tcp_receive)
;;     230401EC (in tcp_receive)
;;     2304020C (in tcp_receive)
;;     23040222 (in tcp_receive)
;;     23040266 (in tcp_receive)
;;     2304043C (in tcp_receive)
;;     230404BE (in tcp_receive)
;;     230404DA (in tcp_receive)
;;     230404E2 (in tcp_receive)
;;     2304053A (in tcp_receive)
;;     2304063C (in tcp_input)
;;     230406B6 (in tcp_input)
;;     230406D4 (in tcp_input)
;;     23040782 (in tcp_input)
;;     230407A0 (in tcp_input)
;;     23041166 (in tcp_input)
;;     230412AA (in tcp_create_segment)
;;     230412C0 (in tcp_create_segment)
;;     23041302 (in tcp_create_segment)
;;     23041356 (in tcp_output_alloc_header_common.constprop.6)
;;     23041366 (in tcp_output_alloc_header_common.constprop.6)
;;     230413B4 (in tcp_output_alloc_header_common.constprop.6)
;;     230413C4 (in tcp_output_alloc_header_common.constprop.6)
;;     2304159C (in tcp_split_unsent_seg)
;;     23041658 (in tcp_split_unsent_seg)
;;     23041822 (in tcp_send_fin)
;;     2304183A (in tcp_send_fin)
;;     230418EE (in tcp_rexmit_rto_prepare)
;;     23041C1E (in tcp_output)
;;     23041C6E (in tcp_output)
;;     23041D2E (in tcp_output)
;;     23041D4C (in tcp_output)
;;     23041E66 (in tcp_output)
;;     23041E96 (in tcp_output)
;;     23041FB4 (in tcp_output)
;;     230420CE (in tcp_zero_window_probe)
;;     2304212A (in tcp_zero_window_probe)
;;     2304245E (in udp_input)
;;     23042470 (in udp_input)
;;     23042760 (in udp_sendto_if_src_chksum)
;;     23042770 (in udp_sendto_if_src_chksum)
;;     230427AE (in udp_sendto_if_src_chksum)
;;     23042B82 (in ethernet_output)
;;     23042FA4 (in inet_chksum_pseudo)
;;     23042FAC (in inet_chksum_pseudo)
;;     2304306C (in inet_chksum_pseudo_partial)
;;     23043074 (in inet_chksum_pseudo_partial)
lwip_htons proc
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; lwip_htonl: 2303A768
;;   Called from:
;;     230306A2 (in get_dns_request)
;;     230306B0 (in get_dns_request)
;;     2303ACAE (in dns_recv)
;;     2303AFD4 (in dhcp_create_msg)
;;     2303B50E (in dhcp_reboot)
;;     2303B69E (in dhcp_select)
;;     2303B6D6 (in dhcp_select)
;;     2303B884 (in dhcp_handle_ack.isra.3)
;;     2303B89E (in dhcp_handle_ack.isra.3)
;;     2303B8B4 (in dhcp_handle_ack.isra.3)
;;     2303B8CA (in dhcp_handle_ack.isra.3)
;;     2303B976 (in dhcp_recv)
;;     2303BB2E (in dhcp_recv)
;;     2303BC64 (in dhcp_recv)
;;     2303BD4E (in dhcp_recv)
;;     2303BE6E (in dhcp_arp_reply)
;;     2303C0D8 (in dhcp_release_and_stop)
;;     2303D866 (in ip4addr_aton)
;;     2303FB1A (in tcp_free_acked_segments.isra.3)
;;     2304009C (in tcp_receive)
;;     23040702 (in tcp_input)
;;     2304074A (in tcp_input)
;;     230412D4 (in tcp_create_segment)
;;     23041390 (in tcp_output_alloc_header_common.constprop.6)
;;     230415DE (in tcp_split_unsent_seg)
;;     230418D4 (in tcp_rexmit_rto_prepare)
;;     2304199A (in tcp_rexmit)
;;     230419BE (in tcp_rexmit)
;;     23041A56 (in tcp_rst)
;;     23041AA0 (in tcp_send_empty_ack)
;;     23041B90 (in tcp_output)
;;     23041C46 (in tcp_output)
;;     23041CA4 (in tcp_output)
;;     23041CE0 (in tcp_output)
;;     23041E4C (in tcp_output)
;;     23041ED4 (in tcp_output)
;;     23041EFA (in tcp_output)
;;     23041F32 (in tcp_output)
;;     23041F56 (in tcp_output)
;;     23041F94 (in tcp_output)
;;     23042064 (in tcp_keepalive)
;;     23042162 (in tcp_zero_window_probe)
;;     2304362E (in dhcp_server_recv)
;;     23043638 (in dhcp_server_recv)
;;     23043642 (in dhcp_server_recv)
;;     2304364A (in dhcp_server_recv)
lwip_htonl proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	lui	a3,00000FF0
	slli	a4,a0,00000008
	c.and	a4,a3
	c.or	a5,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a0,00000008
	c.and	a0,a4
	c.or	a0,a5
	c.jr	ra

;; dns_call_found: 2303A78C
;;   Called from:
;;     2303A816 (in dns_send)
;;     2303AA34 (in dns_check_entry)
;;     2303ACD0 (in dns_recv)
;;     2303AD5C (in dns_recv)
dns_call_found proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042015
	c.swsp	s1,00000080
	addi	a4,a5,-0000003C
	slli	s1,a0,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.add	a4,s1
	c.lw	a4,0(a3)
	addi	s0,a5,-0000003C
	c.beqz	a3,000000002303A7C2

l2303A7AA:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.lw	a4,4(a2)
	lui	a4,00042015
	addi	a4,a4,-0000001C
	c.addi	a0,0000000F
	c.add	a0,a4
	c.jalr	a3

l2303A7C2:
	add	a5,s0,s1
	sw	zero,a5,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dns_send: 2303A7D4
;;   Called from:
;;     2303A9EC (in dns_check_entry)
dns_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	addi	s0,zero,+00000110
	add	s0,a0,s0
	c.swsp	s3,00000094
	lui	s3,00042015
	c.swsp	s2,00000018
	addi	s2,s3,-0000001C
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.add	s2,s0
	lbu	a4,s2,+0000000B
	lui	s6,0004200E
	addi	a5,s6,+000002A0
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303A83E

l2303A814:
	c.li	a1,00000000
	jal	ra,000000002303A78C
	c.li	s4,00000000
	sb	zero,s2,+0000000A

l2303A820:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s4
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

l2303A83E:
	addi	s3,s3,-0000001C
	c.addi	s0,0000000F
	c.add	s0,s3
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,000000002306D630
	addi	a1,a0,+00000012
	c.slli	a1,10
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000B6
	jal	ra,000000002303E5B8
	c.mv	s1,a0
	c.li	s4,FFFFFFFF
	c.beqz	a0,000000002303A820

l2303A868:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lhu	a0,s2,+00000008
	c.lui	s8,00010000
	addi	s6,s6,+000002A0
	jal	ra,000000002303A75A
	c.li	a5,00000001
	sh	a0,sp,+00000004
	sb	a5,sp,+00000006
	c.li	a2,0000000C
	addi	a5,zero,+00000100
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	sh	a5,sp,+00000008
	c.addi	s0,FFFFFFFF
	jal	ra,000000002303E92E
	c.li	s2,0000000C
	addi	s10,zero,+0000002E
	c.addi	s8,FFFFFFFE

l2303A8A6:
	c.addi	s0,00000001
	c.mv	s9,s0
	c.li	a2,00000000

l2303A8AC:
	lbu	a5,s0,+00000000
	bne	a5,s10,000000002303A8D0

l2303A8B4:
	sub	s7,s0,s9
	c.slli	s7,10
	add	s4,s2,a2
	srli	s7,s7,00000010
	bge	s8,s4,000000002303A8DC

l2303A8C6:
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.li	s4,FFFFFFFA
	c.j	000000002303A820

l2303A8D0:
	c.beqz	a5,000000002303A8B4

l2303A8D2:
	c.addi	a2,00000001
	andi	a2,a2,+000000FF
	c.addi	s0,00000001
	c.j	000000002303A8AC

l2303A8DC:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303EA5C
	addi	a3,s2,+00000001
	c.slli	a3,10
	c.srli	a3,00000010
	c.mv	a2,s7
	c.mv	a1,s9
	c.mv	a0,s1
	jal	ra,000000002303E98C
	c.slli	s4,10
	srli	s4,s4,00000010
	lbu	a5,s0,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002303A8A6

l2303A90C:
	c.mv	a1,s2
	c.mv	a0,s1
	c.li	a2,00000000
	jal	ra,000000002303EA5C
	c.addi	s4,00000002
	slli	a3,s4,00000010
	lui	a5,00001000
	addi	a5,a5,+00000100
	c.mv	a1,sp
	c.srli	a3,00000010
	c.li	a2,00000004
	c.mv	a0,s1
	c.swsp	a5,00000000
	jal	ra,000000002303E98C
	addi	a5,zero,+00000110
	add	s5,s5,a5
	lui	a5,0004200E
	lw	a0,a5,+0000029C
	addi	a3,zero,+00000035
	c.mv	a1,s1
	c.add	s3,s5
	lbu	a2,s3,+0000000B
	c.slli	a2,02
	c.add	a2,s6
	jal	ra,000000002304294A
	c.mv	s4,a0
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.j	000000002303A820

;; dns_check_entry: 2303A960
;;   Called from:
;;     2303AD9C (in dns_recv)
;;     2303AE74 (in dns_tmr)
;;     2303AE7A (in dns_tmr)
;;     2303AE80 (in dns_tmr)
;;     2303AE8A (in dns_tmr)
dns_check_entry proc
	addi	a4,zero,+00000110
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042015
	addi	a5,s0,-0000001C
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	a3,00000002
	addi	s0,s0,-0000001C
	c.add	a5,a4
	lbu	a4,a5,+0000000A
	beq	a4,a3,000000002303A9F0

l2303A988:
	c.li	a3,00000003
	beq	a4,a3,000000002303AA56

l2303A98E:
	c.li	a5,00000001
	bne	a4,a5,000000002303AA46

l2303A994:
	lui	a5,0004200E
	lhu	a4,a5,+000002A8
	addi	a3,a5,+000002A8
	addi	a2,s0,+00000440
	c.li	a1,00000002

l2303A9A6:
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	c.mv	a5,s0

l2303A9AE:
	lbu	a6,a5,+0000000A
	bne	a6,a1,000000002303A9BE

l2303A9B6:
	lhu	a6,a5,+00000008
	beq	a6,a4,000000002303A9A6

l2303A9BE:
	addi	a5,a5,+00000110
	bne	a2,a5,000000002303A9AE

l2303A9C6:
	addi	a5,zero,+00000110
	add	a5,a0,a5
	sh	a4,a3,+00000000
	c.add	s0,a5
	c.li	a5,00000002
	sh	a5,s0,+0000000A
	c.li	a5,00000001
	sh	a4,s0,+00000008
	sh	a5,s0,+0000000C

l2303A9E4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303A7D4

l2303A9F0:
	lbu	a4,a5,+0000000C
	c.addi	a4,FFFFFFFF
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000C
	c.bnez	a4,000000002303AA46

l2303AA00:
	lbu	a4,a5,+0000000D
	c.li	a3,00000004
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000D
	bne	a4,a3,000000002303AA50

l2303AA14:
	lbu	a4,a5,+0000000B
	c.bnez	a4,000000002303AA30

l2303AA1A:
	lui	a4,0004200E
	lw	a4,a4,+000002A4
	c.beqz	a4,000000002303AA30

l2303AA24:
	c.li	a4,00000001
	sb	a4,a5,+0000000B
	sh	a4,a5,+0000000C
	c.j	000000002303A9E4

l2303AA30:
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002303A78C
	addi	a0,zero,+00000110
	add	a0,s1,a0

l2303AA40:
	c.add	s0,a0
	sb	zero,s0,+0000000A

l2303AA46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303AA50:
	sb	a4,a5,+0000000C
	c.j	000000002303A9E4

l2303AA56:
	c.lw	a5,0(a4)
	c.bnez	a4,000000002303AA64

l2303AA5A:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.j	000000002303AA40

l2303AA64:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.beqz	a4,000000002303AA5A

l2303AA6A:
	c.j	000000002303AA46

;; dns_recv: 2303AA6C
dns_recv proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lhu	a4,a2,+00000008
	c.li	a5,0000000F
	c.mv	s1,a2
	bgeu	a5,a4,000000002303ADA0

l2303AA94:
	c.mv	s7,a3
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,000000002303E8AE
	c.li	a5,0000000C
	c.mv	s0,a0
	bne	a0,a5,000000002303ADA0

l2303AAAA:
	lhu	a0,sp,+00000018
	lui	s3,00042015
	c.li	s2,00000000
	jal	ra,000000002303A75A
	addi	a5,s3,-0000001C
	c.li	a3,00000002
	addi	s3,s3,-0000001C
	c.li	a4,00000004

l2303AAC4:
	lbu	a2,a5,+0000000A
	andi	s6,s2,+000000FF
	bne	a2,a3,000000002303ADD6

l2303AAD0:
	lhu	a2,a5,+00000008
	bne	a2,a0,000000002303ADD6

l2303AAD8:
	lhu	a0,sp,+0000001C
	jal	ra,000000002303A75A
	c.mv	s4,a0
	lhu	a0,sp,+0000001E
	jal	ra,000000002303A75A
	lb	a5,sp,+0000001A
	c.mv	s5,a0
	bge	a5,zero,000000002303ADA0

l2303AAF4:
	c.li	a5,00000001
	bne	s4,a5,000000002303ADA0

l2303AAFA:
	addi	s4,zero,+00000110
	add	s4,s2,s4
	lui	s8,0004200E
	addi	a5,s8,+000002A0
	addi	s8,s8,+000002A0
	add	a4,s3,s4
	lbu	a4,a4,+0000000B
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	lw	a4,s7,+00000000
	bne	a4,a5,000000002303ADA0

l2303AB24:
	addi	s7,s4,+0000000F
	c.lui	s9,00010000
	lui	s10,00023082
	c.add	s7,s3
	c.addi	s9,FFFFFFFF
	addi	s10,s10,+000005B1
	c.li	s11,00000001

l2303AB38:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303EA2E
	blt	a0,zero,000000002303ADA0

l2303AB44:
	beq	s0,s9,000000002303ADA0

l2303AB48:
	c.addi	s0,00000001
	c.slli	s0,10
	andi	a5,a0,+000000C0
	addi	a4,zero,+000000C0
	c.srli	s0,00000010
	beq	a5,a4,000000002303ADA0

l2303AB5A:
	add	a5,s7,a0

l2303AB5E:
	bne	s7,a5,000000002303ACF4

l2303AB62:
	c.mv	a1,s0
	c.mv	a0,s1
	c.addi	s7,00000001
	jal	ra,000000002303EA2E
	blt	a0,zero,000000002303ADA0

l2303AB70:
	c.bnez	a0,000000002303AB38

l2303AB72:
	c.lui	s9,00010000
	addi	a5,s9,-00000001
	beq	s0,a5,000000002303ADA0

l2303AB7C:
	addi	s7,s0,+00000001
	c.slli	s7,10
	srli	s7,s7,00000010
	beq	s7,a5,000000002303ADA0

l2303AB8A:
	c.mv	a3,s7
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,000000002303E8AE
	c.li	a5,00000004
	bne	a0,a5,000000002303ADA0

l2303AB9C:
	lhu	a5,sp,+00000012
	addi	a4,zero,+00000100
	bne	a5,a4,000000002303ADA0

l2303ABA8:
	lhu	a4,sp,+00000010
	bne	a4,a5,000000002303ADA0

l2303ABB0:
	c.addi	s9,FFFFFFFB
	bltu	s9,s7,000000002303ADA0

l2303ABB6:
	lbu	a5,sp,+0000001B
	c.andi	a5,0000000F
	bne	a5,zero,000000002303AD42

l2303ABC0:
	c.addi	s0,00000005
	c.lui	s7,00010000
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s10,zero,+000000C0
	addi	s8,s7,-00000001
	addi	s11,s7,-0000000B
	addi	s9,zero,+00000100

l2303ABD8:
	beq	s5,zero,000000002303AD52

l2303ABDC:
	lhu	a4,s1,+00000008
	bgeu	s0,a4,000000002303AD52

l2303ABE4:
	addi	a0,s0,+00000001
	slli	a3,a0,00000010
	c.srli	a3,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,000000002303EA2E
	blt	a0,zero,000000002303ADA0

l2303ABFC:
	c.lwsp	a2,000000A4
	beq	a3,zero,000000002303ADA0

l2303AC02:
	andi	a5,a0,+000000C0
	beq	a5,s10,000000002303ADA8

l2303AC0A:
	lhu	a5,s1,+00000008
	c.add	a0,a3
	bge	a0,a5,000000002303ADA0

l2303AC14:
	slli	s0,a0,00000010
	c.srli	s0,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303EA2E
	blt	a0,zero,000000002303ADA0

l2303AC26:
	c.bnez	a0,000000002303ABE4

l2303AC28:
	beq	s0,s8,000000002303ADA0

l2303AC2C:
	addi	a4,s0,+00000001
	c.slli	a4,10
	c.srli	a4,00000010
	beq	a4,s8,000000002303ADA0

l2303AC38:
	c.mv	a3,a4
	c.li	a2,0000000A
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	c.swsp	a4,00000084
	jal	ra,000000002303E8AE
	c.li	a3,0000000A
	bne	a0,a3,000000002303ADA0

l2303AC4C:
	c.lwsp	a2,000000C4
	bltu	s11,a4,000000002303ADA0

l2303AC52:
	addi	a5,s0,+0000000B
	slli	s0,a5,00000010
	lhu	a5,sp,+00000026
	c.srli	s0,00000010
	lhu	a0,sp,+0000002C
	bne	a5,s9,000000002303ADB2

l2303AC68:
	lhu	a5,sp,+00000024
	bne	a5,s9,000000002303ADB2

l2303AC70:
	addi	a5,zero,+00000400
	bne	a0,a5,000000002303ADB2

l2303AC78:
	c.mv	a3,s0
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,000000002303E8AE
	c.li	a5,00000004
	bne	a0,a5,000000002303ADA0

l2303AC8A:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	lui	s0,00042015
	addi	s3,s0,-0000001C
	c.mv	a0,s1
	addi	s0,s0,-0000001C
	c.add	s3,a5
	c.lwsp	s4,000000E4
	sw	a5,s3,+00000004
	jal	ra,000000002303E536
	c.lwsp	s0,00000154
	jal	ra,000000002303A768
	c.li	a5,00000003
	sb	a5,s3,+0000000A
	lui	a5,00000094
	addi	a5,a5,-00000580
	bltu	a5,a0,000000002303ADAC

l2303ACC4:
	sw	a0,s3,+00000000

l2303ACC8:
	addi	a1,s4,+00000004
	c.add	a1,s0
	c.mv	a0,s6
	jal	ra,000000002303A78C
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s2,s0
	lw	a5,s2,+00000000
	c.bnez	a5,000000002303AD6E

l2303ACE4:
	lbu	a4,s2,+0000000A
	c.li	a5,00000003
	bne	a4,a5,000000002303AD6E

l2303ACEE:
	sb	zero,s2,+0000000A
	c.j	000000002303AD6E

l2303ACF4:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a5,00000084
	jal	ra,000000002303EA2E
	blt	a0,zero,000000002303ADA0

l2303AD02:
	lbu	a4,s7,+00000000
	c.lwsp	a2,000000E4
	add	a3,a4,s10
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002303AD1A

l2303AD16:
	addi	a4,a4,+00000020

l2303AD1A:
	andi	a0,a0,+000000FF
	add	a3,s10,a0
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002303AD30

l2303AD2C:
	addi	a0,a0,+00000020

l2303AD30:
	bne	a4,a0,000000002303ADA0

l2303AD34:
	beq	s0,s9,000000002303ADA0

l2303AD38:
	c.addi	s0,00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s7,00000001
	c.j	000000002303AB5E

l2303AD42:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	c.add	a5,s3
	lbu	a4,a5,+0000000B
	c.beqz	a4,000000002303AD8C

l2303AD52:
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,000000002303A78C
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s3,s2
	sb	zero,s3,+0000000A

l2303AD6E:
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

l2303AD8C:
	lw	a4,s8,+00000004
	c.beqz	a4,000000002303AD52

l2303AD92:
	addi	a4,zero,+00000301
	sh	a4,a5,+0000000C
	c.mv	a0,s6
	jal	ra,000000002303A960

l2303ADA0:
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.j	000000002303AD6E

l2303ADA8:
	c.mv	s0,a3
	c.j	000000002303AC28

l2303ADAC:
	sw	a5,s3,+00000000
	c.j	000000002303ACC8

l2303ADB2:
	jal	ra,000000002303A75A
	c.add	a0,s0
	bge	a0,s7,000000002303ADA0

l2303ADBC:
	lhu	a0,sp,+0000002C
	c.addi	s5,FFFFFFFF
	c.slli	s5,10
	jal	ra,000000002303A75A
	c.add	a0,s0
	slli	s0,a0,00000010
	c.srli	s0,00000010
	srli	s5,s5,00000010
	c.j	000000002303ABD8

l2303ADD6:
	c.addi	s2,00000001
	addi	a5,a5,+00000110
	bne	s2,a4,000000002303AAC4

l2303ADE0:
	c.j	000000002303ADA0

;; dns_init: 2303ADE2
;;   Called from:
;;     2303AEB2 (in lwip_init)
dns_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+0000029C
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,000000002303AE22

l2303ADF4:
	addi	a0,zero,+0000002E
	jal	ra,0000000023042A36
	lui	a1,00023082
	c.li	a2,00000000
	addi	a1,a1,+000007AC
	c.sw	s0,0(a0)
	jal	ra,00000000230425F6
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002303B
	c.li	a2,00000000
	addi	a1,a1,-00000594
	c.addi	sp,00000010
	jal	zero,00000000230429D0

l2303AE22:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; dns_setserver: 2303AE2A
;;   Called from:
;;     2300400C (in stateConnectedIPNoEnter)
;;     23004016 (in stateConnectedIPNoEnter)
;;     2303B8BE (in dhcp_handle_ack.isra.3)
;;     2303B8D4 (in dhcp_handle_ack.isra.3)
dns_setserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002303AE42

l2303AE30:
	lui	a5,0004200E
	addi	a5,a5,+000002A0
	c.slli	a0,02
	c.add	a5,a0
	c.beqz	a1,000000002303AE44

l2303AE3E:
	c.lw	a1,0(a4)

l2303AE40:
	c.sw	a5,0(a4)

l2303AE42:
	c.jr	ra

l2303AE44:
	lui	a4,00023082
	lw	a4,a4,+000007AC
	c.j	000000002303AE40

;; dns_getserver: 2303AE4E
;;   Called from:
;;     230071FC (in wifi_mgmr_sta_dns_get)
;;     23007206 (in wifi_mgmr_sta_dns_get)
;;     2300A608 (in netif_status_callback)
;;     2300A612 (in netif_status_callback)
dns_getserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002303AE64

l2303AE54:
	slli	a5,a0,00000002
	lui	a0,0004200E
	addi	a0,a0,+000002A0
	c.add	a0,a5
	c.jr	ra

l2303AE64:
	lui	a0,00023082
	addi	a0,a0,+000007AC
	c.jr	ra

;; dns_tmr: 2303AE6E
dns_tmr proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002303A960
	c.li	a0,00000001
	jal	ra,000000002303A960
	c.li	a0,00000002
	jal	ra,000000002303A960
	c.lwsp	a2,00000020
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002303A960

;; lwip_init: 2303AE8E
;;   Called from:
;;     2303A710 (in tcpip_init)
lwip_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303EB82
	jal	ra,0000000023042DD4
	jal	ra,000000002303D9AA
	jal	ra,000000002303DED4
	jal	ra,000000002303E036
	jal	ra,00000000230423B2
	jal	ra,000000002303EBE4
	jal	ra,000000002303CDDC
	jal	ra,000000002303ADE2
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230422F0

;; dhcp_set_state: 2303AEBE
;;   Called from:
;;     2303B0D6 (in dhcp_discover)
;;     2303B210 (in dhcp_check)
;;     2303B30E (in dhcp_bind)
;;     2303B490 (in dhcp_reboot)
;;     2303B61E (in dhcp_select)
;;     2303BD04 (in dhcp_recv)
;;     2303BE24 (in dhcp_arp_reply)
;;     2303BEF0 (in dhcp_renew)
;;     2303C128 (in dhcp_release_and_stop)
;;     2303C1B0 (in dhcp_start)
;;     2303C292 (in dhcp_coarse_tmr)
dhcp_set_state proc
	lbu	a5,a0,+00000005
	beq	a5,a1,000000002303AED2

l2303AEC6:
	sb	a1,a0,+00000005
	sb	zero,a0,+00000006
	sh	zero,a0,+00000008

l2303AED2:
	c.jr	ra

;; dhcp_option_short: 2303AED4
;;   Called from:
;;     2303B122 (in dhcp_discover)
;;     2303B4E0 (in dhcp_reboot)
;;     2303B66E (in dhcp_select)
;;     2303BF3E (in dhcp_renew)
;;     2303C2E0 (in dhcp_coarse_tmr)
dhcp_option_short proc
	add	a5,a1,a0
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000002
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_option_long: 2303AEF6
;;   Called from:
;;     2303B518 (in dhcp_reboot)
;;     2303B6A8 (in dhcp_select)
;;     2303B6E0 (in dhcp_select)
;;     2303BE78 (in dhcp_arp_reply)
;;     2303C0E2 (in dhcp_release_and_stop)
dhcp_option_long proc
	add	a5,a1,a0
	srli	a4,a2,00000018
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000010
	sb	a4,a5,+00000000
	addi	a5,a0,+00000002
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000004
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_create_msg: 2303AF3C
;;   Called from:
;;     2303B0E4 (in dhcp_discover)
;;     2303B49E (in dhcp_reboot)
;;     2303B62C (in dhcp_select)
;;     2303BE32 (in dhcp_arp_reply)
;;     2303BEFE (in dhcp_renew)
;;     2303C09A (in dhcp_release_and_stop)
;;     2303C2A0 (in dhcp_coarse_tmr)
dhcp_create_msg proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.bnez	a0,000000002303AF68

l2303AF50:
	c.li	s5,00000000

l2303AF52:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2303AF68:
	c.beqz	a1,000000002303AF50

l2303AF6A:
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s1,a0
	addi	a2,zero,+00000280
	addi	a1,zero,+00000134
	addi	a0,zero,+000000B6
	c.mv	s4,a3
	jal	ra,000000002303E5B8
	c.mv	s5,a0
	c.beqz	a0,000000002303AF50

l2303AF86:
	c.li	a5,00000003
	bne	s2,a5,000000002303AF94

l2303AF8C:
	lbu	a5,s3,+00000005
	bne	a5,s2,000000002303AFAE

l2303AF94:
	lbu	a5,s3,+00000006
	lui	s0,0004200E
	addi	s0,s0,+000002B4
	c.bnez	a5,000000002303AFA8

l2303AFA2:
	jal	ra,0000000023036D28
	c.sw	s0,0(a0)

l2303AFA8:
	c.lw	s0,0(a5)
	sw	a5,s3,+00000000

l2303AFAE:
	lw	s0,s5,+00000004
	addi	a2,zero,+00000134
	c.li	a1,00000000
	c.li	s6,00000001
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	sb	s6,s0,+00000000
	sb	s6,s0,+00000001
	lbu	a5,s1,+00000040
	sb	a5,s0,+00000002
	lw	a0,s3,+00000000
	jal	ra,000000002303A768
	srli	a5,a0,00000008
	sb	a0,s0,+00000004
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000006
	sb	a0,s0,+00000007
	c.li	a5,00000004
	beq	s2,a5,000000002303B018

l2303AFF8:
	addi	a5,s2,-00000007
	andi	a5,a5,+000000FF
	bgeu	s6,a5,000000002303B018

l2303B004:
	c.li	a5,00000003
	bne	s2,a5,000000002303B034

l2303B00A:
	lbu	a5,s3,+00000005
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	s6,a5,000000002303B034

l2303B018:
	c.lw	s1,4(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000000C
	sb	a4,s0,+0000000D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000000E
	sb	a5,s0,+0000000F

l2303B034:
	addi	a5,s1,+0000003A
	addi	a4,s0,+0000001C
	addi	s1,s1,+00000040

l2303B040:
	lbu	a3,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a5,s1,000000002303B040

l2303B050:
	addi	a5,zero,+00000063
	sb	a5,s0,+000000EC
	addi	a4,zero,-0000007E
	sb	a5,s0,+000000EF
	addi	a5,zero,+00000035
	sb	a4,s0,+000000ED
	sb	a5,s0,+000000F0
	addi	a4,zero,+00000053
	c.li	a5,00000001
	sb	a5,s0,+000000F1
	sb	a4,s0,+000000EE
	sb	s2,s0,+000000F2
	c.li	a5,00000003
	sh	a5,s4,+00000000
	c.j	000000002303AF52

;; dhcp_option_trailer: 2303B086
;;   Called from:
;;     2303B17C (in dhcp_discover)
;;     2303B57E (in dhcp_reboot)
;;     2303B746 (in dhcp_select)
;;     2303BE84 (in dhcp_arp_reply)
;;     2303BFA6 (in dhcp_renew)
;;     2303C0EE (in dhcp_release_and_stop)
;;     2303C340 (in dhcp_coarse_tmr)
dhcp_option_trailer proc
	addi	a5,a0,+00000001
	c.slli	a5,10
	add	a4,a1,a0
	c.srli	a5,00000010
	c.li	a3,FFFFFFFF
	sb	a3,a4,+00000000
	c.add	a1,a5
	addi	a4,zero,+00000043

l2303B09E:
	bgeu	a4,a5,000000002303B0B0

l2303B0A2:
	addi	a1,a5,+000000F0
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,a2
	jal	zero,000000002303E716

l2303B0B0:
	c.addi	a5,00000001
	c.slli	a5,10
	sb	zero,a1,+00000000
	c.srli	a5,00000010
	c.addi	a1,00000001
	c.j	000000002303B09E

;; dhcp_discover: 2303B0BE
;;   Called from:
;;     2303BD20 (in dhcp_recv)
;;     2303BDE4 (in dhcp_network_changed)
;;     2303C1D0 (in dhcp_start)
;;     2303C45C (in dhcp_fine_tmr)
dhcp_discover proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000006
	c.mv	a0,s1
	sw	zero,s1,+0000001C
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000001
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303AF3C
	c.beqz	a0,000000002303B1AA

l2303B0EA:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002303AED4
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,00023082
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,+000007A8
	c.li	a2,00000004

l2303B154:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303B154

l2303B178:
	c.mv	a2,s2
	c.mv	a1,s0
	jal	ra,000000002303B086
	lui	a0,0004200E
	lw	a0,a0,+000002AC
	lui	a5,00023082
	lui	a2,00023082
	addi	a5,a5,+000007AC
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,+000007B0
	c.mv	a1,s2
	jal	ra,000000002304295A
	c.mv	a0,s2
	jal	ra,000000002303E536

l2303B1AA:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303B1BC

l2303B1B6:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303B1BC:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002303B1F8

l2303B1C6:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303B1D8:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.li	a0,00000000
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303B1F8:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002303B1D8

;; dhcp_check: 2303B200
;;   Called from:
;;     2303BC58 (in dhcp_recv)
;;     2303C490 (in dhcp_fine_tmr)
dhcp_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	c.lw	a0,40(s0)
	c.mv	s1,a0
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002303AEBE
	c.li	a2,00000000
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,000000002303CA10
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303B232

l2303B22C:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2303B232:
	c.li	a5,00000001
	sh	a5,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_bind: 2303B242
;;   Called from:
;;     2303BCDC (in dhcp_recv)
;;     2303C496 (in dhcp_fine_tmr)
dhcp_bind proc
	beq	a0,zero,000000002303B37C

l2303B246:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,40(s0)
	c.beqz	s0,000000002303B320

l2303B252:
	c.lw	s0,40(a5)
	sh	zero,s0,+00000012
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303B27C

l2303B25E:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303B32A

l2303B268:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303B330

l2303B278:
	sh	a4,s0,+00000014

l2303B27C:
	c.lw	s0,44(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303B2AA

l2303B284:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303B338

l2303B28E:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303B33E

l2303B29E:
	sh	a4,s0,+0000000A

l2303B2A2:
	lhu	a5,s0,+0000000A
	sh	a5,s0,+0000000E

l2303B2AA:
	c.lw	s0,48(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303B2D8

l2303B2B2:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303B346

l2303B2BC:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303B34C

l2303B2CC:
	sh	a4,s0,+0000000C

l2303B2D0:
	lhu	a5,s0,+0000000C
	sh	a5,s0,+00000010

l2303B2D8:
	lhu	a5,s0,+0000000C
	lhu	a4,s0,+0000000A
	bltu	a4,a5,000000002303B2EA

l2303B2E4:
	c.beqz	a5,000000002303B2EA

l2303B2E6:
	sh	zero,s0,+0000000A

l2303B2EA:
	lbu	a5,s0,+00000007
	c.beqz	a5,000000002303B354

l2303B2F0:
	c.lw	s0,32(a5)

l2303B2F2:
	c.swsp	a5,00000004
	c.lw	s0,36(a5)
	c.swsp	a5,00000084
	c.bnez	a5,000000002303B308

l2303B2FA:
	c.lwsp	s0,000000C4
	c.lw	s0,28(a5)
	c.and	a5,a4
	lui	a4,00001000
	c.or	a5,a4
	c.swsp	a5,00000084

l2303B308:
	c.mv	s1,a0
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002303AEBE
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,000000002303E086

l2303B320:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303B32A:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303B278

l2303B330:
	c.li	a5,00000001
	sh	a5,s0,+00000014
	c.j	000000002303B27C

l2303B338:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303B29E

l2303B33E:
	c.li	a5,00000001
	sh	a5,s0,+0000000A
	c.j	000000002303B2A2

l2303B346:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303B2CC

l2303B34C:
	c.li	a5,00000001
	sh	a5,s0,+0000000C
	c.j	000000002303B2D0

l2303B354:
	lbu	a5,s0,+0000001C
	slli	a4,a5,00000018
	c.srai	a4,00000018
	blt	a4,zero,000000002303B368

l2303B362:
	addi	a5,zero,+000000FF
	c.j	000000002303B2F2

l2303B368:
	addi	a4,zero,+000000BF
	bgeu	a4,a5,000000002303B378

l2303B370:
	lui	a5,00001000

l2303B374:
	c.addi	a5,FFFFFFFF
	c.j	000000002303B2F2

l2303B378:
	c.lui	a5,00010000
	c.j	000000002303B374

l2303B37C:
	c.jr	ra

;; dhcp_inc_pcb_refcount: 2303B37E
;;   Called from:
;;     2303C196 (in dhcp_start)
dhcp_inc_pcb_refcount proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	lbu	a5,s0,+000002B0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,+000002B0
	c.bnez	a5,000000002303B3E2

l2303B396:
	lui	s1,0004200E
	jal	ra,0000000023042A08
	addi	s1,s1,+000002AC
	c.sw	s1,0(a0)
	c.li	a4,FFFFFFFF
	c.beqz	a0,000000002303B3EE

l2303B3A8:
	lbu	a4,a0,+00000009
	lui	s2,00023082
	addi	a2,zero,+00000044
	ori	a4,a4,+00000020
	sb	a4,a0,+00000009
	addi	a1,s2,+000007AC
	jal	ra,00000000230425F6
	c.lw	s1,0(a0)
	addi	a2,zero,+00000043
	addi	a1,s2,+000007AC
	jal	ra,0000000023042964
	c.lw	s1,0(a0)
	lui	a1,0002303C
	c.li	a2,00000000
	addi	a1,a1,-00000706
	jal	ra,00000000230429D0

l2303B3E2:
	lbu	a5,s0,+00000000
	c.li	a4,00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000000

l2303B3EE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_option_hostname.isra.0: 2303B3FC
;;   Called from:
;;     2303B572 (in dhcp_reboot)
;;     2303B73A (in dhcp_select)
;;     2303BF9A (in dhcp_renew)
;;     2303C334 (in dhcp_coarse_tmr)
dhcp_option_hostname.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a2,0(a0)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.beqz	a0,000000002303B456

l2303B40C:
	jal	ra,000000002306D630
	c.beqz	a0,000000002303B456

l2303B412:
	c.lwsp	s0,00000084
	addi	a4,zero,+00000041
	c.sub	a4,s0
	c.lw	a2,0(a2)
	c.lwsp	a2,00000064
	bgeu	a0,a4,000000002303B424

l2303B422:
	c.mv	a4,a0

l2303B424:
	add	a5,a1,s0
	c.li	a3,0000000C
	sb	a3,a5,+00000000
	addi	a5,s0,+00000001
	addi	a3,s0,+00000002
	c.slli	a5,10
	c.slli	a3,10
	c.srli	a5,00000010
	c.add	a5,a1
	c.srli	a3,00000010
	sb	a4,a5,+00000000
	add	a0,a2,a4
	c.mv	a5,a3

l2303B44A:
	bne	a2,a0,000000002303B460

l2303B44E:
	add	s0,a3,a4
	c.slli	s0,10
	c.srli	s0,00000010

l2303B456:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303B460:
	c.addi	a2,00000001
	lbu	a7,a2,-00000001
	addi	a6,a5,+00000001
	c.add	a5,a1
	sb	a7,a5,+00000000
	slli	a5,a6,00000010
	c.srli	a5,00000010
	c.j	000000002303B44A

;; dhcp_reboot: 2303B478
;;   Called from:
;;     2303BDF2 (in dhcp_network_changed)
;;     2303C4AA (in dhcp_fine_tmr)
dhcp_reboot proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303AF3C
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002303B5A6

l2303B4A8:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	c.slli	a0,10
	sb	a4,a5,+00000000
	addi	a2,zero,+00000240
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002303AED4
	add	a5,s0,a0
	addi	s4,a0,+00000002
	c.addi	a0,00000001
	c.slli	a0,10
	addi	a4,zero,+00000032
	c.srli	a0,00000010
	sb	a4,a5,+00000000
	c.add	a0,s0
	c.li	s5,00000004
	sb	s5,a0,+00000000
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303AEF6
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,00023082
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,+000007A8
	c.li	a2,00000004

l2303B548:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303B548

l2303B56C:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002303B3FC
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303B086
	lui	a5,0004200E
	lw	a0,a5,+000002AC
	lui	a2,00023082
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,+000007B0
	c.mv	a1,s2
	jal	ra,0000000023042952
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002303E536

l2303B5A6:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303B5B8

l2303B5B2:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303B5B8:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002303B5F2

l2303B5C2:
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303B5CE:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303B5F2:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.j	000000002303B5CE

;; dhcp_select: 2303B5FA
;;   Called from:
;;     2303BD76 (in dhcp_recv)
;;     2303C470 (in dhcp_fine_tmr)
dhcp_select proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.li	s0,FFFFFFF0
	beq	a0,zero,000000002303B7B4

l2303B610:
	c.lw	a0,40(s1)
	c.li	s0,FFFFFFFA
	beq	s1,zero,000000002303B7B4

l2303B618:
	c.mv	s2,a0
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002303AF3C
	c.mv	s3,a0
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002303B776

l2303B638:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s2,+00000038
	c.slli	a0,10
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002303AED4
	addi	a4,zero,+00000032
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	s5,00000004
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303AEF6
	addi	a4,zero,+00000036
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,24(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303AEF6
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,00023082
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,+000007A8
	c.li	a2,00000004

l2303B710:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303B710

l2303B734:
	c.mv	a1,s0
	addi	a2,s2,+00000034
	jal	ra,000000002303B3FC
	c.mv	a1,s0
	c.mv	a2,s3
	sh	a0,sp,+0000000E
	jal	ra,000000002303B086
	lui	a0,0004200E
	lw	a0,a0,+000002AC
	lui	a5,00023082
	lui	a2,00023082
	addi	a5,a5,+000007AC
	c.mv	a4,s2
	addi	a3,zero,+00000043
	addi	a2,a2,+000007B0
	c.mv	a1,s3
	jal	ra,000000002304295A
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,000000002303E536

l2303B776:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303B788

l2303B782:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303B788:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002303B7C8

l2303B792:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303B7A4:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	sh	a5,s1,+00000008

l2303B7B4:
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

l2303B7C8:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002303B7A4

;; dhcp_dec_pcb_refcount: 2303B7D0
;;   Called from:
;;     2303C132 (in dhcp_release_and_stop)
;;     2303C1C8 (in dhcp_start)
dhcp_dec_pcb_refcount proc
	lui	a4,0004200E
	addi	a4,a4,+000002B0
	lbu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002303B808

l2303B7E8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+000002AC
	c.lw	s0,0(a0)
	c.swsp	ra,00000084
	jal	ra,00000000230429D8
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303B808:
	c.jr	ra

;; dhcp_handle_ack.isra.3: 2303B80A
;;   Called from:
;;     2303BC4A (in dhcp_recv)
;;     2303BCD6 (in dhcp_recv)
dhcp_handle_ack.isra.3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	a5,s1,+00000650
	lbu	a5,a5,+00000003
	sw	zero,a0,+00000020
	sw	zero,a0,+00000024
	c.mv	s0,a0
	addi	s1,s1,+00000650
	c.beqz	a5,000000002303B838

l2303B82E:
	lui	a5,0004201A
	lw	a5,a5,+00000634
	c.sw	a0,40(a5)

l2303B838:
	lbu	a5,s1,+00000004
	c.beqz	a5,000000002303B8E2

l2303B83E:
	lui	a5,0004201A
	lw	a5,a5,+00000638

l2303B846:
	c.sw	s0,44(a5)
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002303B8E8

l2303B84E:
	lui	a5,0004201A
	lw	a5,a5,+0000063C

l2303B856:
	c.sw	s0,48(a5)
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	lbu	a5,s1,+00000006
	c.beqz	a5,000000002303B8F4

l2303B87C:
	lui	a5,0004201A
	lw	a0,a5,+00000640
	jal	ra,000000002303A768
	c.li	a5,00000001
	c.sw	s0,32(a0)
	sb	a5,s0,+00000007

l2303B890:
	lbu	a5,s1,+00000007
	c.beqz	a5,000000002303B8A4

l2303B896:
	lui	a5,0004201A
	lw	a0,a5,+00000644
	jal	ra,000000002303A768
	c.sw	s0,36(a0)

l2303B8A4:
	lbu	a5,s1,+00000008
	c.beqz	a5,000000002303B8D8

l2303B8AA:
	lui	s0,0004201A
	addi	s0,s0,+00000628
	c.lw	s0,32(a0)
	jal	ra,000000002303A768
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,000000002303AE2A
	lbu	a5,s1,+00000009
	c.beqz	a5,000000002303B8D8

l2303B8C8:
	c.lw	s0,36(a0)
	jal	ra,000000002303A768
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,000000002303AE2A

l2303B8D8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303B8E2:
	c.lw	s0,40(a5)
	c.srli	a5,00000001
	c.j	000000002303B846

l2303B8E8:
	c.lw	s0,40(a4)
	c.li	a5,00000007
	add	a5,a5,a4
	c.srli	a5,00000003
	c.j	000000002303B856

l2303B8F4:
	sb	zero,s0,+00000007
	c.j	000000002303B890

;; dhcp_recv: 2303B8FA
dhcp_recv proc
	c.addi16sp	FFFFFF90
	lui	a5,0004201A
	c.swsp	s1,000000B0
	lw	s1,a5,+00000798
	c.swsp	s2,00000030
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lw	s3,s1,+00000028
	c.mv	s2,a2
	beq	s3,zero,000000002303B9E2

l2303B928:
	lbu	a5,s3,+00000004
	c.beqz	a5,000000002303B9E2

l2303B92E:
	lhu	a4,a2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002303B9E2

l2303B93A:
	c.lw	a2,4(a5)
	c.li	a4,00000002
	lbu	a3,a5,+00000000
	bne	a3,a4,000000002303B9E2

l2303B946:
	lbu	a2,s1,+00000040
	c.li	a4,00000000
	c.li	a3,00000006

l2303B94E:
	andi	a1,a4,+000000FF
	bgeu	a1,a2,000000002303B95A

l2303B956:
	bne	a4,a3,000000002303B9CC

l2303B95A:
	lbu	a0,a5,+00000005
	lbu	a4,a5,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a5,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a5,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303A768
	lw	a5,s3,+00000000
	bne	a0,a5,000000002303B9E2

l2303B982:
	lui	s4,0004201A
	c.li	a2,0000000A
	c.li	a1,00000000
	addi	a0,s4,+00000650
	jal	ra,000000002306D1BC
	lhu	a4,s2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002303B9E2

l2303B99E:
	lhu	s8,s2,+00000008
	lui	s5,0004201A
	c.swsp	zero,00000084
	addi	s11,zero,+000000F0
	addi	s5,s5,+00000628

l2303B9B0:
	c.mv	s6,s2

l2303B9B2:
	lhu	a5,s6,+0000000A
	bgeu	s11,a5,000000002303BA06

l2303B9BA:
	lw	a5,s6,+00000004
	c.lui	s7,00010000
	c.mv	s9,s11
	c.swsp	a5,00000008
	addi	a5,s7,-00000003
	c.swsp	a5,00000088
	c.j	000000002303BBF4

l2303B9CC:
	add	a1,s1,a4
	c.addi	a4,00000001
	add	a0,a5,a4
	lbu	a1,a1,+0000003A
	lbu	a0,a0,+0000001B
	beq	a0,a1,000000002303B94E

l2303B9E2:
	c.mv	a0,s2
	jal	ra,000000002303E536
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

l2303BA06:
	lw	s6,s6,+00000000
	sub	t1,s11,a5
	sub	t3,s8,a5
	slli	s11,t1,00000010
	slli	s8,t3,00000010
	srli	s11,s11,00000010
	srli	s8,s8,00000010
	bne	s6,zero,000000002303B9B2

l2303BA26:
	c.j	000000002303B9E2

l2303BA28:
	addi	t4,s9,+00000002
	slli	s7,t4,00000010
	srli	s7,s7,00000010
	bltu	s7,s9,000000002303B9E2

l2303BA38:
	lhu	a2,s6,+0000000A
	addi	a3,s9,+00000001
	bge	a3,a2,000000002303BA70

l2303BA44:
	lbu	a4,a4,+00000001

l2303BA48:
	addi	a2,zero,+00000033
	beq	a5,a2,000000002303BB7C

l2303BA50:
	bltu	a2,a5,000000002303BA80

l2303BA54:
	c.li	a2,00000001
	beq	a5,a2,000000002303BAC4

l2303BA5A:
	beq	a5,zero,000000002303BBBA

l2303BA5E:
	c.li	a3,00000003
	beq	a5,a3,000000002303BB56

l2303BA64:
	c.li	a3,00000006

l2303BA66:
	beq	a5,a3,000000002303BB60

l2303BA6A:
	c.li	s10,FFFFFFFF
	c.li	s0,00000000
	c.j	000000002303BACE

l2303BA70:
	lw	a4,s6,+00000000
	beq	a4,zero,000000002303BD7C

l2303BA78:
	c.lw	a4,4(a4)
	lbu	a4,a4,+00000000
	c.j	000000002303BA48

l2303BA80:
	addi	a3,zero,+00000036
	beq	a5,a3,000000002303BBA0

l2303BA88:
	bltu	a3,a5,000000002303BAA8

l2303BA8C:
	addi	a3,zero,+00000034
	beq	a5,a3,000000002303BB8A

l2303BA94:
	addi	a3,zero,+00000035

l2303BA98:
	bne	a5,a3,000000002303BA6A

l2303BA9C:
	c.li	a5,00000001
	bne	a4,a5,000000002303B9E2

l2303BAA2:
	c.li	s0,00000001
	c.li	s10,00000001
	c.j	000000002303BACE

l2303BAA8:
	addi	a3,zero,+0000003A
	beq	a5,a3,000000002303BBAE

l2303BAB0:
	addi	a3,zero,+0000003B

l2303BAB4:
	bne	a5,a3,000000002303BA6A

l2303BAB8:
	c.li	a5,00000004
	bne	a4,a5,000000002303B9E2

l2303BABE:
	c.li	s0,00000004
	c.li	s10,00000005
	c.j	000000002303BACE

l2303BAC4:
	c.li	a5,00000004
	bne	a4,a5,000000002303B9E2

l2303BACA:
	c.li	s0,00000004
	c.li	s10,00000006

l2303BACE:
	c.lwsp	s4,000000E4
	add	a6,a4,s9
	blt	a5,a6,000000002303B9E2

l2303BAD8:
	c.add	a4,s7
	slli	s9,a4,00000010
	srli	s9,s9,00000010
	c.beqz	s0,000000002303BBC2

l2303BAE4:
	addi	a5,s4,+00000650
	c.swsp	zero,00000094
	c.add	a5,s10

l2303BAEC:
	lbu	a4,a5,+00000000
	c.li	t5,00000004
	c.bnez	a4,000000002303BBC2

l2303BAF4:
	andi	a4,s0,+000000FF
	bgeu	t5,s0,000000002303BAFE

l2303BAFC:
	c.li	a4,00000004

l2303BAFE:
	c.mv	a2,a4
	c.mv	a3,s7
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,000000002303E8AE
	c.lwsp	s8,000000C4
	bne	a4,a0,000000002303B9E2

l2303BB14:
	c.li	t5,00000004
	bgeu	t5,s0,000000002303BC5E

l2303BB1A:
	andi	a4,s0,+00000003
	bne	a4,zero,000000002303B9E2

l2303BB22:
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000154
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.swsp	a5,0000000C
	jal	ra,000000002303A768
	slli	a4,s10,00000002
	c.add	a4,s5
	c.sw	a4,0(a0)
	c.lwsp	s8,000000E4
	addi	a4,s7,+00000004
	c.slli	a4,10
	c.addi	s0,FFFFFFFC
	c.srli	a4,00000010
	andi	s0,s0,+000000FF
	c.addi	a5,00000001
	bltu	a4,s7,000000002303B9E2

l2303BB50:
	c.addi	s10,00000001
	c.mv	s7,a4
	c.j	000000002303BAEC

l2303BB56:
	bgeu	a5,a4,000000002303B9E2

l2303BB5A:
	c.li	s10,00000007
	c.li	s0,00000004
	c.j	000000002303BACE

l2303BB60:
	andi	a5,a4,+00000003
	bne	a5,zero,000000002303B9E2

l2303BB68:
	c.li	a5,00000008
	andi	s0,a4,+000000FF
	bgeu	a5,a4,000000002303BB74

l2303BB72:
	c.li	s0,00000008

l2303BB74:
	bltu	a4,s0,000000002303B9E2

l2303BB78:
	c.li	s10,00000008
	c.j	000000002303BACE

l2303BB7C:
	c.li	a5,00000004
	bne	a4,a5,000000002303B9E2

l2303BB82:
	c.li	s0,00000004
	c.li	s10,00000003
	c.j	000000002303BACE

l2303BB88:
	c.li	a4,00000000

l2303BB8A:
	c.li	a5,00000001
	bne	a4,a5,000000002303B9E2

l2303BB90:
	addi	a5,zero,+000000F0
	bne	s11,a5,000000002303B9E2

l2303BB98:
	c.li	s0,00000001
	c.li	s10,00000000
	c.j	000000002303BACE

l2303BB9E:
	c.li	a4,00000000

l2303BBA0:
	c.li	a5,00000004
	bne	a4,a5,000000002303B9E2

l2303BBA6:
	c.li	s0,00000004
	c.li	s10,00000002
	c.j	000000002303BACE

l2303BBAC:
	c.li	a4,00000000

l2303BBAE:
	c.li	a5,00000004
	bne	a4,a5,000000002303B9E2

l2303BBB4:
	c.li	s0,00000004
	c.li	s10,00000004
	c.j	000000002303BACE

l2303BBBA:
	slli	s9,a3,00000010
	srli	s9,s9,00000010

l2303BBC2:
	lhu	a5,s6,+0000000A
	bltu	s9,a5,000000002303BBF4

l2303BBCA:
	sub	a6,s9,a5
	sub	t3,s8,a5
	slli	s9,a6,00000010
	slli	s8,t3,00000010
	srli	s9,s9,00000010
	srli	s8,s8,00000010
	bgeu	s9,s8,000000002303B9E2

l2303BBE6:
	lw	s6,s6,+00000000
	beq	s6,zero,000000002303B9E2

l2303BBEE:
	lw	a5,s6,+00000004
	c.swsp	a5,00000008

l2303BBF4:
	bgeu	s9,s8,000000002303BC0A

l2303BBF8:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	add	a4,a5,s9
	lbu	a5,a4,+00000000
	bne	a5,a3,000000002303BA28

l2303BC0A:
	addi	a4,s4,+00000650
	lbu	a5,a4,+00000000
	c.bnez	a5,000000002303BC94

l2303BC14:
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002303BCA8

l2303BC18:
	lui	a5,0004201A
	addi	a5,a5,+00000650
	lbu	a5,a5,+00000001
	beq	a5,zero,000000002303B9E2

l2303BC28:
	lui	a5,0004201A
	addi	a5,a5,+00000628
	lbu	a4,a5,+00000004
	c.li	a3,00000005
	lw	a1,s2,+00000004
	bne	a4,a3,000000002303BCE2

l2303BC3E:
	lbu	a5,s3,+00000005
	c.li	a4,00000001
	bne	a5,a4,000000002303BCC8

l2303BC48:
	c.lw	s1,40(a0)
	jal	ra,000000002303B80A
	lbu	a5,s1,+00000041
	c.mv	a0,s1
	c.andi	a5,00000008
	c.beqz	a5,000000002303BCDC

l2303BC58:
	jal	ra,000000002303B200
	c.j	000000002303B9E2

l2303BC5E:
	bne	s0,t5,000000002303BC86

l2303BC62:
	c.lwsp	a2,00000154
	jal	ra,000000002303A768
	c.swsp	a0,00000094

l2303BC6A:
	lui	a5,0004201A
	addi	a5,a5,+00000650
	c.add	a5,s10
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.lwsp	a2,000001F4
	c.slli	s10,02
	c.add	s10,s5
	sw	a5,s10,+00000000
	c.j	000000002303BBC2

l2303BC86:
	c.li	a5,00000001
	bne	s0,a5,000000002303B9E2

l2303BC8C:
	lbu	a5,sp,+0000002C
	c.swsp	a5,00000094
	c.j	000000002303BC6A

l2303BC94:
	lw	a5,s5,+00000000
	sb	zero,a4,+00000000
	c.li	a4,00000001
	beq	a5,a4,000000002303BCBE

l2303BCA2:
	c.li	a4,00000002
	bne	a5,a4,000000002303BCB4

l2303BCA8:
	c.swsp	zero,00000084
	addi	s8,zero,+0000006C
	addi	s11,zero,+0000002C
	c.j	000000002303B9B0

l2303BCB4:
	c.li	a4,00000003
	bne	a5,a4,000000002303BC14

l2303BCBA:
	c.li	a5,00000001
	c.swsp	a5,00000084

l2303BCBE:
	addi	s8,zero,+000000EC
	addi	s11,zero,+0000006C
	c.j	000000002303B9B0

l2303BCC8:
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	bltu	a4,a5,000000002303B9E2

l2303BCD4:
	c.lw	s1,40(a0)
	jal	ra,000000002303B80A
	c.mv	a0,s1

l2303BCDC:
	jal	ra,000000002303B242
	c.j	000000002303B9E2

l2303BCE2:
	c.li	a3,00000006
	bne	a4,a3,000000002303BD26

l2303BCE8:
	lbu	a4,s3,+00000005
	c.li	a3,00000002
	addi	a5,a4,-00000003
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002303BD00

l2303BCFA:
	c.li	a5,00000001
	bne	a4,a5,000000002303B9E2

l2303BD00:
	c.lw	s1,40(a0)
	c.li	a1,0000000C
	jal	ra,000000002303AEBE
	lui	a1,00023082
	addi	a3,a1,+000007AC
	addi	a2,a1,+000007AC
	c.mv	a0,s1
	addi	a1,a1,+000007AC
	jal	ra,000000002303E086
	c.mv	a0,s1
	jal	ra,000000002303B0BE
	c.j	000000002303B9E2

l2303BD26:
	c.li	a2,00000002
	bne	a4,a2,000000002303B9E2

l2303BD2C:
	lbu	a4,s3,+00000005
	bne	a4,a3,000000002303B9E2

l2303BD34:
	lui	a4,0004201A
	addi	a4,a4,+00000650
	lbu	a4,a4,+00000002
	beq	a4,zero,000000002303B9E2

l2303BD44:
	c.lw	s1,40(s0)
	c.swsp	a1,00000084
	sh	zero,s0,+00000008
	c.lw	a5,8(a0)
	jal	ra,000000002303A768
	c.lwsp	a2,00000064
	c.sw	s0,24(a0)
	c.mv	a0,s1
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	jal	ra,000000002303B5FA
	c.j	000000002303B9E2

l2303BD7C:
	addi	a4,zero,+00000033
	beq	a5,a4,000000002303B9E2

l2303BD84:
	bltu	a4,a5,000000002303BD9E

l2303BD88:
	c.li	a4,00000001
	beq	a5,a4,000000002303B9E2

l2303BD8E:
	beq	a5,zero,000000002303BBBA

l2303BD92:
	c.li	a4,00000003
	beq	a5,a4,000000002303B9E2

l2303BD98:
	c.li	a3,00000006
	c.li	a4,00000000
	c.j	000000002303BA66

l2303BD9E:
	addi	a4,zero,+00000036
	beq	a5,a4,000000002303BB9E

l2303BDA6:
	bltu	a4,a5,000000002303BDBA

l2303BDAA:
	addi	a4,zero,+00000034
	beq	a5,a4,000000002303BB88

l2303BDB2:
	addi	a3,zero,+00000035
	c.li	a4,00000000
	c.j	000000002303BA98

l2303BDBA:
	addi	a4,zero,+0000003A
	beq	a5,a4,000000002303BBAC

l2303BDC2:
	addi	a3,zero,+0000003B
	c.li	a4,00000000
	c.j	000000002303BAB4

;; dhcp_network_changed: 2303BDCA
;;   Called from:
;;     2303E340 (in netif_set_link_up)
dhcp_network_changed proc
	c.lw	a0,40(a5)
	c.beqz	a5,000000002303BDF6

l2303BDCE:
	lbu	a4,a5,+00000005
	c.li	a3,00000005
	bltu	a3,a4,000000002303BDE8

l2303BDD8:
	c.li	a3,00000003
	bgeu	a4,a3,000000002303BDEE

l2303BDDE:
	c.beqz	a4,000000002303BDF6

l2303BDE0:
	sb	zero,a5,+00000006
	jal	zero,000000002303B0BE

l2303BDE8:
	c.li	a3,0000000A
	bne	a4,a3,000000002303BDE0

l2303BDEE:
	sb	zero,a5,+00000006
	jal	zero,000000002303B478

l2303BDF6:
	c.jr	ra

;; dhcp_arp_reply: 2303BDF8
;;   Called from:
;;     2303C8BA (in etharp_input)
dhcp_arp_reply proc
	c.beqz	a0,000000002303BEDA

l2303BDFA:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	c.beqz	s0,000000002303BECA

l2303BE0C:
	lbu	a4,s0,+00000005
	c.li	a5,00000008
	bne	a4,a5,000000002303BECA

l2303BE16:
	c.lw	a1,0(a4)
	c.lw	s0,28(a5)
	bne	a4,a5,000000002303BECA

l2303BE1E:
	c.mv	s4,a0
	c.li	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000004
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303AF3C
	c.mv	s2,a0
	c.beqz	a0,000000002303BEB2

l2303BE3A:
	c.lw	a0,4(s1)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000032
	addi	s1,s1,+000000F0
	add	a4,s1,a5
	addi	s3,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s1
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lw	s0,28(a0)
	c.slli	s3,10
	srli	s3,s3,00000010
	sh	s3,sp,+0000000E
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303AEF6
	c.mv	a2,s2
	c.mv	a1,s1
	sh	a0,sp,+0000000E
	jal	ra,000000002303B086
	lui	a0,0004200E
	lw	a0,a0,+000002AC
	lui	a5,00023082
	lui	a2,00023082
	addi	a5,a5,+000007AC
	c.mv	a4,s4
	addi	a3,zero,+00000043
	addi	a2,a2,+000007B0
	c.mv	a1,s2
	jal	ra,000000002304295A
	c.mv	a0,s2
	jal	ra,000000002303E536

l2303BEB2:
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303BEC4

l2303BEBE:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2303BEC4:
	c.li	a5,00000014
	sh	a5,s0,+00000008

l2303BECA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303BEDA:
	c.jr	ra

;; dhcp_renew: 2303BEDC
;;   Called from:
;;     2303C3D8 (in dhcp_coarse_tmr)
dhcp_renew proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303AF3C
	c.li	s0,FFFFFFFF
	c.beqz	a0,000000002303BFCA

l2303BF06:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002303AED4
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,00023082
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,+000007A8
	c.li	a2,00000004

l2303BF70:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303BF70

l2303BF94:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002303B3FC
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303B086
	lui	a5,0004200E
	lw	a0,a5,+000002AC
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,s1,+00000018
	c.mv	a1,s2
	jal	ra,0000000023042952
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002303E536

l2303BFCA:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303BFDC

l2303BFD6:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303BFDC:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002303C012

l2303BFE6:
	addi	a4,zero,+000007D0
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303BFF2:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303C012:
	c.lui	a5,00005000
	addi	a5,a5,-000001E0
	c.j	000000002303BFF2

;; dhcp_supplied_address: 2303C01A
;;   Called from:
;;     2303C08A (in dhcp_release_and_stop)
dhcp_supplied_address proc
	c.beqz	a0,000000002303C03C

l2303C01C:
	c.lw	a0,40(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303C03E

l2303C022:
	lbu	a5,a5,+00000005
	c.li	a4,0000000A
	c.li	a0,00000001
	beq	a5,a4,000000002303C036

l2303C02E:
	addi	a0,a5,-00000004
	sltiu	a0,a0,+00000002

l2303C036:
	andi	a0,a0,+000000FF
	c.jr	ra

l2303C03C:
	c.li	a0,00000000

l2303C03E:
	c.jr	ra

;; dhcp_release_and_stop: 2303C040
;;   Called from:
;;     2303C1DA (in dhcp_start)
;;     2303C254 (in dhcp_coarse_tmr)
;;     2303C476 (in dhcp_fine_tmr)
;;     2303C4B0 (in dhcp_stop)
dhcp_release_and_stop proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	beq	s0,zero,000000002303C13A

l2303C054:
	lbu	a5,s0,+00000005
	beq	a5,zero,000000002303C13A

l2303C05C:
	c.lw	s0,24(a5)
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000018
	sw	zero,s0,+00000020
	sw	zero,s0,+00000024
	sw	zero,s0,+00000030
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000028
	sh	zero,s0,+0000000E
	sw	zero,s0,+00000010
	sh	zero,s0,+00000014
	c.mv	s1,a0
	c.swsp	a5,00000084
	jal	ra,000000002303C01A
	c.beqz	a0,000000002303C10E

l2303C090:
	addi	a3,sp,+0000000A
	c.li	a2,00000007
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303AF3C
	c.mv	s3,a0
	c.beqz	a0,000000002303C10E

l2303C0A2:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000A
	addi	a3,zero,+00000036
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	s4,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lwsp	a2,00000044
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000A
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002303AEF6
	c.mv	a2,s3
	c.mv	a1,s2
	sh	a0,sp,+0000000A
	jal	ra,000000002303B086
	lui	a5,0004200E
	lw	a0,a5,+000002AC
	c.mv	a4,s1
	addi	a3,zero,+00000043
	c.addi4spn	a2,0000000C
	c.mv	a1,s3
	jal	ra,0000000023042952
	c.mv	a0,s3
	jal	ra,000000002303E536

l2303C10E:
	lui	a1,00023082
	addi	a3,a1,+000007AC
	addi	a2,a1,+000007AC
	c.mv	a0,s1
	addi	a1,a1,+000007AC
	jal	ra,000000002303E086
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303AEBE
	lbu	a5,s0,+00000004
	c.beqz	a5,000000002303C13A

l2303C132:
	jal	ra,000000002303B7D0
	sb	zero,s0,+00000004

l2303C13A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; dhcp_start: 2303C14A
;;   Called from:
;;     2303C25A (in dhcp_coarse_tmr)
;;     2303C47C (in dhcp_fine_tmr)
dhcp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002303C1B4

l2303C158:
	lbu	a5,a0,+00000041
	c.li	s1,FFFFFFF0
	c.andi	a5,00000001
	c.beqz	a5,000000002303C1B4

l2303C162:
	lhu	a4,a0,+00000038
	addi	a5,zero,+0000023F
	lw	s2,a0,+00000028
	bltu	a5,a4,000000002303C176

l2303C172:
	c.li	s1,FFFFFFFF
	c.j	000000002303C1B4

l2303C176:
	c.mv	s0,a0
	bne	s2,zero,000000002303C1C2

l2303C17C:
	addi	a0,zero,+00000034
	jal	ra,000000002303DCEE
	c.mv	s2,a0
	c.beqz	a0,000000002303C172

l2303C188:
	c.sw	s0,40(a0)

l2303C18A:
	addi	a2,zero,+00000034
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306D1BC
	jal	ra,000000002303B37E
	c.mv	s1,a0
	c.bnez	a0,000000002303C172

l2303C19E:
	c.li	a5,00000001
	sb	a5,s2,+00000004
	lbu	a5,s0,+00000041
	c.andi	a5,00000004
	c.bnez	a5,000000002303C1CE

l2303C1AC:
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002303AEBE

l2303C1B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303C1C2:
	lbu	a5,s2,+00000004
	c.beqz	a5,000000002303C18A

l2303C1C8:
	jal	ra,000000002303B7D0
	c.j	000000002303C18A

l2303C1CE:
	c.mv	a0,s0
	jal	ra,000000002303B0BE
	c.mv	s1,a0
	c.beqz	a0,000000002303C1B4

l2303C1D8:
	c.mv	a0,s0
	jal	ra,000000002303C040
	c.j	000000002303C172

;; dhcp_coarse_tmr: 2303C1E0
dhcp_coarse_tmr proc
	c.addi16sp	FFFFFFC0
	lui	a5,0004201A
	c.swsp	s0,0000001C
	lw	s0,a5,+00000660
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.lui	s4,00002000
	lui	s5,00023082
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s8,0000000C
	c.li	s3,00000001
	addi	s4,s4,+00000710
	addi	s5,s5,+000007A8
	lui	s6,0004200E
	lui	s7,00023082

l2303C216:
	c.bnez	s0,000000002303C230

l2303C218:
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

l2303C230:
	c.lw	s0,40(a5)
	c.beqz	a5,000000002303C25E

l2303C234:
	lbu	a4,a5,+00000005
	c.beqz	a4,000000002303C25E

l2303C23A:
	lhu	a3,a5,+00000014
	c.beqz	a3,000000002303C262

l2303C240:
	lhu	a4,a5,+00000012
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000012
	bne	a3,a4,000000002303C262

l2303C252:
	c.mv	a0,s0
	jal	ra,000000002303C040
	c.mv	a0,s0
	jal	ra,000000002303C14A

l2303C25E:
	c.lw	s0,0(s0)
	c.j	000000002303C216

l2303C262:
	lhu	a4,a5,+00000010
	beq	a4,zero,000000002303C3AE

l2303C26A:
	addi	a3,a4,-00000001
	sh	a3,a5,+00000010
	bne	a4,s3,000000002303C3AE

l2303C276:
	c.lw	s0,40(s1)
	c.li	a5,0000000A
	lbu	a4,s1,+00000005
	bltu	a5,a4,000000002303C25E

l2303C282:
	addi	a5,zero,+00000432
	srl	a5,a5,a4
	c.andi	a5,00000001
	c.beqz	a5,000000002303C25E

l2303C28E:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002303AEBE
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303AF3C
	c.mv	s8,a0
	c.beqz	a0,000000002303C35E

l2303C2A8:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s0,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303AED4
	add	a5,s2,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	c.li	a3,00000004

l2303C30A:
	lhu	a4,sp,+0000000E
	add	a2,s5,a5
	lbu	a2,a2,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s2
	c.srli	a0,00000010
	sb	a2,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a3,000000002303C30A

l2303C32E:
	addi	a2,s0,+00000034
	c.mv	a1,s2
	jal	ra,000000002303B3FC
	c.mv	a2,s8
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303B086
	lw	a0,s6,+000002AC
	c.mv	a4,s0
	addi	a3,zero,+00000043
	addi	a2,s7,+000007B0
	c.mv	a1,s8
	jal	ra,0000000023042952
	c.mv	a0,s8
	jal	ra,000000002303E536

l2303C35E:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303C370

l2303C36A:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303C370:
	lbu	a4,s1,+00000006
	c.li	a3,00000009
	c.mv	a5,s4
	bltu	a3,a4,000000002303C388

l2303C37C:
	addi	a5,zero,+000003E8
	add	a5,a4,a5
	c.slli	a5,10
	c.srli	a5,00000010

l2303C388:
	addi	a4,zero,+000001F4
	addi	a5,a5,+000001F3
	xor	a5,a5,a4
	lhu	a4,s1,+00000012
	sh	a5,s1,+00000008
	lhu	a5,s1,+00000014
	c.sub	a5,a4
	bge	s3,a5,000000002303C25E

l2303C3A6:
	c.srai	a5,00000001
	sh	a5,s1,+00000010
	c.j	000000002303C25E

l2303C3AE:
	lhu	a4,a5,+0000000E
	beq	a4,zero,000000002303C25E

l2303C3B6:
	addi	a3,a4,-00000001
	sh	a3,a5,+0000000E
	bne	a4,s3,000000002303C25E

l2303C3C2:
	c.lw	s0,40(s1)
	lbu	a5,s1,+00000005
	andi	a4,a5,+000000FB
	beq	a4,s3,000000002303C3D6

l2303C3D0:
	c.li	a4,0000000A
	bne	a5,a4,000000002303C25E

l2303C3D6:
	c.mv	a0,s0
	jal	ra,000000002303BEDC
	lhu	a5,s1,+0000000C
	lhu	a4,s1,+00000012
	c.sub	a5,a4
	bge	s3,a5,000000002303C25E

l2303C3EA:
	c.srai	a5,00000001
	sh	a5,s1,+0000000E
	c.j	000000002303C25E

;; dhcp_fine_tmr: 2303C3F2
dhcp_fine_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201A
	c.swsp	s0,0000000C
	lw	s0,a5,+00000660
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.li	s1,00000001
	c.li	s2,0000000C
	c.li	s3,00000006
	c.li	s4,00000008
	c.li	s5,00000003
	c.li	s6,00000005

l2303C418:
	c.bnez	s0,000000002303C42E

l2303C41A:
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

l2303C42E:
	c.lw	s0,40(a4)
	c.beqz	a4,000000002303C440

l2303C432:
	lhu	a5,a4,+00000008
	bgeu	s1,a5,000000002303C444

l2303C43A:
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000008

l2303C440:
	c.lw	s0,0(s0)
	c.j	000000002303C418

l2303C444:
	bne	a5,s1,000000002303C440

l2303C448:
	sh	zero,a4,+00000008
	c.lw	s0,40(a4)
	lbu	a5,a4,+00000005
	beq	a5,s2,000000002303C45A

l2303C456:
	bne	a5,s3,000000002303C462

l2303C45A:
	c.mv	a0,s0

l2303C45C:
	jal	ra,000000002303B0BE
	c.j	000000002303C440

l2303C462:
	bne	a5,s1,000000002303C482

l2303C466:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s6,a5,000000002303C476

l2303C470:
	jal	ra,000000002303B5FA
	c.j	000000002303C440

l2303C476:
	jal	ra,000000002303C040
	c.mv	a0,s0
	jal	ra,000000002303C14A
	c.j	000000002303C440

l2303C482:
	bne	a5,s4,000000002303C49C

l2303C486:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002303C496

l2303C490:
	jal	ra,000000002303B200
	c.j	000000002303C440

l2303C496:
	jal	ra,000000002303B242
	c.j	000000002303C440

l2303C49C:
	bne	a5,s5,000000002303C440

l2303C4A0:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002303C45C

l2303C4AA:
	jal	ra,000000002303B478
	c.j	000000002303C440

;; dhcp_stop: 2303C4B0
;;   Called from:
;;     23043A78 (in dhcpd_start)
dhcp_stop proc
	jal	zero,000000002303C040

;; etharp_free_entry: 2303C4B4
;;   Called from:
;;     2303C59E (in etharp_find_entry)
;;     2303C70E (in etharp_cleanup_netif)
;;     2303C932 (in etharp_tmr)
etharp_free_entry proc
	c.li	a4,00000018
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	lui	a5,00042015
	c.swsp	s2,00000000
	addi	s2,a5,+00000424
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,a5,+00000424
	c.add	s2,a4
	lw	a0,s2,+00000000
	c.beqz	a0,000000002303C4E2

l2303C4DA:
	jal	ra,000000002303E536
	sw	zero,s2,+00000000

l2303C4E2:
	c.li	a5,00000018
	add	a5,s1,a5
	c.add	a5,s0
	sb	zero,a5,+00000014
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; etharp_find_entry: 2303C4FA
;;   Called from:
;;     2303C80C (in etharp_input)
;;     2303CA4A (in etharp_query)
etharp_find_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s1,00000088
	addi	a3,s0,+00000424
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	t0,00000000
	c.li	t6,00000000
	c.li	t5,00000000
	c.li	t1,0000000A
	c.li	a5,00000000
	c.li	a4,0000000A
	c.li	a7,0000000A
	c.li	s1,0000000A
	addi	s0,s0,+00000424
	c.li	t3,0000000A
	c.li	t2,00000001

l2303C526:
	lbu	t4,a3,+00000014
	bne	a4,t3,000000002303C564

l2303C52E:
	beq	t4,zero,000000002303C5EC

l2303C532:
	c.beqz	a0,000000002303C54A

l2303C534:
	lw	s2,a0,+00000000
	lw	a6,a3,+00000004
	bne	s2,a6,000000002303C54A

l2303C540:
	c.beqz	a2,000000002303C5C8

l2303C542:
	lw	a6,a3,+00000008
	beq	a6,a2,000000002303C5C8

l2303C54A:
	lhu	a6,a3,+00000012
	bne	t4,t2,000000002303C5E2

l2303C552:
	lw	t4,a3,+00000000
	beq	t4,zero,000000002303C5D8

l2303C55A:
	bltu	a6,t5,000000002303C568

l2303C55E:
	c.mv	t5,a6
	c.mv	t1,a5
	c.j	000000002303C568

l2303C564:
	bne	t4,zero,000000002303C532

l2303C568:
	c.addi	a5,00000001
	slli	a6,a5,00000010
	srli	a6,a6,00000010
	slli	a5,a6,00000010
	c.addi	a3,00000018
	c.srai	a5,00000010
	bne	a6,t3,000000002303C526

l2303C57E:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a1,a3,000000002303C5C8

l2303C586:
	c.mv	s3,a2
	c.mv	s2,a0
	bne	a4,t3,000000002303C5A4

l2303C58E:
	bne	a7,a4,000000002303C5F0

l2303C592:
	bne	s1,a7,000000002303C59C

l2303C596:
	beq	t1,s1,000000002303C5C8

l2303C59A:
	c.mv	s1,t1

l2303C59C:
	c.mv	a0,s1
	jal	ra,000000002303C4B4
	c.mv	a4,s1

l2303C5A4:
	beq	s2,zero,000000002303C5B6

l2303C5A8:
	c.li	a5,00000018
	add	a5,a4,a5
	lw	a3,s2,+00000000
	c.add	a5,s0
	c.sw	a5,4(a3)

l2303C5B6:
	c.li	a5,00000018
	add	a5,a4,a5
	c.add	s0,a5
	sh	zero,s0,+00000012
	sw	s3,s0,+00000008
	c.mv	a5,a4

l2303C5C8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2303C5D8:
	bltu	a6,t6,000000002303C568

l2303C5DC:
	c.mv	t6,a6
	c.mv	s1,a5
	c.j	000000002303C568

l2303C5E2:
	bltu	a6,t0,000000002303C568

l2303C5E6:
	c.mv	t0,a6
	c.mv	a7,a5
	c.j	000000002303C568

l2303C5EC:
	c.mv	a4,a5
	c.j	000000002303C568

l2303C5F0:
	c.mv	s1,a7
	c.j	000000002303C59C

;; etharp_raw: 2303C5F4
;;   Called from:
;;     2303C8B0 (in etharp_input)
;;     2303C8E0 (in etharp_request)
;;     2303CA0A (in etharp_output_to_arp_index)
etharp_raw proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s5,a2
	c.li	a1,0000001C
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	c.swsp	s1,00000098
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	a7,00000084
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s9,a3
	c.mv	s7,a4
	c.mv	s8,a5
	c.mv	s6,a6
	lui	s1,0004201A
	jal	ra,000000002303E5B8
	addi	s1,s1,+00000668
	c.lwsp	a2,00000028
	c.bnez	a0,000000002303C65C

l2303C636:
	lhu	a5,s1,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s1,+00000024

l2303C642:
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

l2303C65C:
	c.lw	a0,4(s0)
	c.mv	s2,a0
	c.mv	a0,a7
	jal	ra,000000002303A75A
	sb	a0,s0,+00000006
	c.srli	a0,00000008
	sb	a0,s0,+00000007
	c.li	a2,00000006
	c.mv	a1,s9
	addi	a0,s0,+00000008
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000012
	jal	ra,000000002306CF80
	c.li	a2,00000004
	c.mv	a1,s7
	addi	a0,s0,+0000000E
	jal	ra,000000002306CF80
	c.li	a2,00000004
	c.mv	a1,s6
	addi	a0,s0,+00000018
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s0,+00000001
	c.li	a5,00000008
	sb	a5,s0,+00000002
	c.li	a5,00000006
	sb	a5,s0,+00000004
	c.lui	a4,00001000
	c.li	a5,00000004
	sb	a5,s0,+00000005
	addi	a4,a4,-000007FA
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	sb	zero,s0,+00000000
	sb	zero,s0,+00000003
	c.mv	a0,s3
	jal	ra,0000000023042B6A
	lhu	a5,s1,+00000018
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s1,+00000018
	jal	ra,000000002303E536
	c.li	a0,00000000
	c.j	000000002303C642

;; etharp_cleanup_netif: 2303C6E6
;;   Called from:
;;     2303E276 (in netif_set_down)
etharp_cleanup_netif proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a0
	addi	s0,s0,+00000424
	c.li	s1,00000000
	c.li	s2,0000000A

l2303C700:
	lbu	a5,s0,+00000014
	c.beqz	a5,000000002303C712

l2303C706:
	c.lw	s0,8(a5)
	bne	a5,s3,000000002303C712

l2303C70C:
	c.mv	a0,s1
	jal	ra,000000002303C4B4

l2303C712:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s2,000000002303C700

l2303C71A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; etharp_input: 2303C728
;;   Called from:
;;     23042B64 (in ethernet_input)
etharp_input proc
	beq	a1,zero,000000002303C8C0

l2303C72C:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.lw	a0,4(s1)
	lui	s2,0004201A
	c.mv	s0,a1
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.mv	s3,a0
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	addi	s2,s2,+00000668
	bne	a5,a4,000000002303C788

l2303C762:
	lbu	a4,s1,+00000004
	c.li	a5,00000006
	bne	a4,a5,000000002303C788

l2303C76C:
	lbu	a4,s1,+00000005
	c.li	a5,00000004
	bne	a4,a5,000000002303C788

l2303C776:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000008
	beq	a5,a4,000000002303C7B8

l2303C788:
	lhu	a5,s2,+00000028
	c.addi	a5,00000001
	sh	a5,s2,+00000028
	lhu	a5,s2,+0000001E
	c.addi	a5,00000001
	sh	a5,s2,+0000001E

l2303C79C:
	c.mv	a0,s3
	jal	ra,000000002303E536
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

l2303C7B8:
	lhu	a5,s2,+0000001A
	c.li	a2,00000004
	addi	a1,s1,+0000000E
	c.addi	a5,00000001
	c.addi4spn	a0,00000008
	sh	a5,s2,+0000001A
	jal	ra,000000002306CF80
	c.li	a2,00000004
	addi	a1,s1,+00000018
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.lw	s0,4(a5)
	addi	s4,s1,+00000008
	c.beqz	a5,000000002303C7E8

l2303C7E2:
	c.lwsp	a2,000000C4
	beq	a5,a4,000000002303C890

l2303C7E8:
	c.li	s5,00000000
	c.li	s6,00000002

l2303C7EC:
	c.lwsp	s0,00000044
	c.beqz	a0,000000002303C868

l2303C7F0:
	c.mv	a1,s0
	jal	ra,000000002303D750
	c.bnez	a0,000000002303C868

l2303C7F8:
	c.lwsp	s0,000000E4
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303C868

l2303C806:
	c.mv	a2,s0
	c.mv	a1,s6
	c.addi4spn	a0,00000008
	jal	ra,000000002303C4FA
	blt	a0,zero,000000002303C868

l2303C814:
	c.li	a5,00000018
	add	a5,a0,a5
	lui	a4,00042015
	addi	a4,a4,+00000424
	c.li	a3,00000002
	c.li	a2,00000006
	c.mv	a1,s4
	add	s6,a4,a5
	c.addi	a5,0000000C
	sb	a3,s6,+00000014
	sw	s0,s6,+00000008
	add	a0,a4,a5
	jal	ra,000000002306CF80
	lw	s7,s6,+00000000
	sh	zero,s6,+00000012
	beq	s7,zero,000000002303C868

l2303C84A:
	c.lui	a4,00001000
	sw	zero,s6,+00000000
	addi	a4,a4,-00000800
	c.mv	a3,s4
	addi	a2,s0,+0000003A
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023042B6A
	c.mv	a0,s7
	jal	ra,000000002303E536

l2303C868:
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	beq	a5,a4,000000002303C896

l2303C87C:
	addi	a4,zero,+00000200
	beq	a5,a4,000000002303C8B6

l2303C884:
	lhu	a5,s2,+0000002C
	c.addi	a5,00000001
	sh	a5,s2,+0000002C
	c.j	000000002303C79C

l2303C890:
	c.li	s5,00000001
	c.li	s6,00000001
	c.j	000000002303C7EC

l2303C896:
	beq	s5,zero,000000002303C79C

l2303C89A:
	addi	a3,s0,+0000003A
	c.li	a7,00000002
	addi	a6,sp,+00000008
	c.mv	a5,s4
	addi	a4,s0,+00000004
	c.mv	a2,s4
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,000000002303C5F4
	c.j	000000002303C79C

l2303C8B6:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002303BDF8
	c.j	000000002303C79C

l2303C8C0:
	c.jr	ra

;; etharp_request: 2303C8C2
;;   Called from:
;;     2303C96E (in etharp_tmr)
;;     2303C9BC (in etharp_output_to_arp_index)
;;     2303CAA0 (in etharp_query)
;;     2303DFB6 (in netif_issue_reports)
etharp_request proc
	addi	a3,a0,+0000003A
	lui	a5,00023082
	lui	a2,00023082
	c.mv	a6,a1
	c.li	a7,00000001
	addi	a5,a5,+000007C4
	addi	a4,a0,+00000004
	addi	a2,a2,+000007BC
	c.mv	a1,a3
	jal	zero,000000002303C5F4

;; etharp_tmr: 2303C8E4
etharp_tmr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042015
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,+00000424
	c.li	s1,00000000
	addi	s4,zero,+0000012B
	c.li	s5,00000001
	c.li	s6,00000003
	c.li	s2,00000004
	c.li	s7,00000002
	c.li	s3,0000000A

l2303C910:
	lbu	a4,s0,+00000014
	c.beqz	a4,000000002303C936

l2303C916:
	lhu	a5,s0,+00000012
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000012
	bltu	s4,a5,000000002303C930

l2303C928:
	bne	a4,s5,000000002303C954

l2303C92C:
	bgeu	s2,a5,000000002303C968

l2303C930:
	c.mv	a0,s1
	jal	ra,000000002303C4B4

l2303C936:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s3,000000002303C910

l2303C93E:
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

l2303C954:
	bne	a4,s6,000000002303C95E

l2303C958:
	sb	s2,s0,+00000014
	c.j	000000002303C936

l2303C95E:
	bne	a4,s2,000000002303C936

l2303C962:
	sb	s7,s0,+00000014
	c.j	000000002303C936

l2303C968:
	c.lw	s0,8(a0)
	addi	a1,s0,+00000004
	jal	ra,000000002303C8C2
	c.j	000000002303C936

;; etharp_output_to_arp_index: 2303C974
;;   Called from:
;;     2303CC32 (in etharp_output)
etharp_output_to_arp_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.li	a1,00000018
	add	a2,a2,a1
	lui	a1,00042015
	addi	a1,a1,+00000424
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.mv	s2,a0
	add	s1,a1,a2
	lbu	a4,s1,+00000014
	addi	s0,a2,+0000000C
	c.add	s0,a1
	addi	s3,a0,+0000003A
	bne	a4,a5,000000002303C9C8

l2303C9AC:
	lhu	a5,s1,+00000012
	addi	a4,zero,+0000011C
	bgeu	a4,a5,000000002303C9E8

l2303C9B8:
	c.addi	a2,00000004
	c.add	a1,a2
	jal	ra,000000002303C8C2

l2303C9C0:
	c.bnez	a0,000000002303C9C8

l2303C9C2:
	c.li	a5,00000003
	sb	a5,s1,+00000014

l2303C9C8:
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a2,s3
	c.mv	a1,s4
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023042B6A

l2303C9E8:
	addi	a4,zero,+0000010D
	bgeu	a4,a5,000000002303C9C8

l2303C9F0:
	c.addi	a2,00000004
	lui	a5,00023082
	add	a6,a1,a2
	c.li	a7,00000001
	addi	a5,a5,+000007C4
	addi	a4,a0,+00000004
	c.mv	a3,s3
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,000000002303C5F4
	c.j	000000002303C9C0

;; etharp_query: 2303CA10
;;   Called from:
;;     2303B21C (in dhcp_check)
;;     2303CC78 (in etharp_output)
etharp_query proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.swsp	s2,00000008
	c.mv	a1,a0
	c.mv	s2,a0
	lw	a0,s4,+00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a2
	jal	ra,000000002303D750
	bne	a0,zero,000000002303CB2A

l2303CA32:
	lw	a5,s4,+00000000
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	beq	a3,a4,000000002303CB2A

l2303CA42:
	c.beqz	a5,000000002303CB2A

l2303CA44:
	c.mv	a2,s2
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,000000002303C4FA
	bge	a0,zero,000000002303CA7A

l2303CA52:
	c.beqz	s0,000000002303CA66

l2303CA54:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000024
	c.addi	a4,00000001
	sh	a4,a5,+00000024

l2303CA66:
	c.slli	a0,18
	c.srai	a0,00000018

l2303CA6A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303CA7A:
	andi	s3,a0,+000000FF
	c.li	a4,00000018
	add	a4,s3,a4
	lui	s1,00042015
	addi	a5,s1,+00000424
	addi	s1,s1,+00000424
	c.add	a5,a4
	lbu	a4,a5,+00000014
	c.beqz	a4,000000002303CAE6

l2303CA98:
	c.li	a0,FFFFFFFF
	c.bnez	s0,000000002303CAA6

l2303CA9C:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002303C8C2
	c.beqz	s0,000000002303CA6A

l2303CAA6:
	c.li	a3,00000018
	add	a3,s3,a3
	add	a5,s1,a3
	lbu	a4,a5,+00000014
	c.li	a5,00000001
	bgeu	a5,a4,000000002303CAF2

l2303CABA:
	lui	a5,0004200E
	c.addi	a3,0000000C
	c.mv	a1,s0
	c.lwsp	s8,00000004
	sb	s3,a5,+000002B8
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.add	a3,s1
	addi	a2,s2,+0000003A
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023042B6A

l2303CAE6:
	c.li	a4,00000001
	sb	a4,a5,+00000014
	sw	s2,a5,+00000008
	c.j	000000002303CA9C

l2303CAF2:
	bne	a4,a5,000000002303CA6A

l2303CAF6:
	c.mv	a5,s0

l2303CAF8:
	lbu	a4,a5,+0000000C
	andi	a4,a4,+00000040
	c.bnez	a4,000000002303CB2E

l2303CB02:
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303CAF8

l2303CB06:
	c.mv	a0,s0
	jal	ra,000000002303E7A2

l2303CB0C:
	c.li	a5,00000018
	add	a5,s3,a5
	c.add	a5,s1
	c.lw	a5,0(a0)
	c.beqz	a0,000000002303CB1C

l2303CB18:
	jal	ra,000000002303E536

l2303CB1C:
	c.li	a0,00000018
	add	a0,s3,a0
	c.add	s1,a0
	c.sw	s1,0(s0)
	c.li	a0,00000000
	c.j	000000002303CA6A

l2303CB2A:
	c.li	a0,FFFFFFF0
	c.j	000000002303CA6A

l2303CB2E:
	c.mv	a2,s0
	addi	a1,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,000000002303EA04
	c.mv	s0,a0
	c.bnez	a0,000000002303CB0C

l2303CB40:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000024
	c.j	000000002303CA6A

;; etharp_output: 2303CB56
etharp_output proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a1,a0
	c.lw	a2,0(a0)
	c.mv	s1,a2
	jal	ra,000000002303D750
	bne	a0,zero,000000002303CC7E

l2303CB72:
	c.lw	s1,0(a5)
	addi	a3,zero,+000000E0
	andi	a2,a5,+000000F0
	bne	a2,a3,000000002303CBC0

l2303CB80:
	c.li	a5,00000001
	sh	a5,sp,+00000008
	addi	a5,zero,+0000005E
	sb	a5,sp,+0000000A
	lbu	a5,s1,+00000001
	c.addi4spn	a3,00000008
	andi	a5,a5,+0000007F
	sb	a5,sp,+0000000B
	lbu	a5,s1,+00000002
	sb	a5,sp,+0000000C
	lbu	a5,s1,+00000003
	sb	a5,sp,+0000000D

l2303CBAC:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	addi	a2,s0,+0000003A
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023042B6A
	c.j	000000002303CC36

l2303CBC0:
	c.lw	s0,4(a3)
	c.lw	s0,8(a2)
	c.mv	a4,a0
	c.xor	a3,a5
	c.and	a3,a2
	c.beqz	a3,000000002303CBE4

l2303CBCC:
	c.slli	a5,10
	c.lui	a3,00010000
	c.srli	a5,00000010
	addi	a3,a3,-00000157
	beq	a5,a3,000000002303CBE4

l2303CBDA:
	c.lw	s0,12(a5)
	c.li	a0,FFFFFFFC
	c.beqz	a5,000000002303CC36

l2303CBE0:
	addi	s1,s0,+0000000C

l2303CBE4:
	lui	a1,0004200E
	lbu	a2,a1,+000002B8
	c.li	a0,00000018
	lui	a5,00042015
	add	a0,a2,a0
	addi	a3,a5,+00000424
	addi	a1,a1,+000002B8
	addi	a5,a5,+00000424
	c.add	a3,a0
	lbu	a6,a3,+00000014
	c.li	a0,00000001
	bgeu	a0,a6,000000002303CC42

l2303CC0E:
	c.lw	a3,8(a0)
	bne	a0,s0,000000002303CC42

l2303CC14:
	c.lw	s1,0(a0)
	c.lw	a3,4(a3)
	bne	a0,a3,000000002303CC42

l2303CC1C:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+0000002E
	c.addi	a4,00000001
	sh	a4,a5,+0000002E

l2303CC2E:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303C974

l2303CC36:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303CC42:
	c.li	a2,00000001
	c.li	a3,0000000A

l2303CC46:
	lbu	a0,a5,+00000014
	bgeu	a2,a0,000000002303CC66

l2303CC4E:
	c.lw	a5,8(a0)
	bne	a0,s0,000000002303CC66

l2303CC54:
	lw	a6,s1,+00000000
	c.lw	a5,4(a0)
	bne	a6,a0,000000002303CC66

l2303CC5E:
	sb	a4,a1,+00000000
	c.mv	a2,a4
	c.j	000000002303CC2E

l2303CC66:
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.addi	a5,00000018
	bne	a4,a3,000000002303CC46

l2303CC72:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303CA10
	c.j	000000002303CC36

l2303CC7E:
	lui	a3,00023082
	addi	a3,a3,+000007BC
	c.j	000000002303CBAC

;; igmp_send: 2303CC88
;;   Called from:
;;     2303D0EC (in igmp_tmr)
igmp_send proc
	lui	a5,00023082
	lw	a5,a5,+000007AC
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s4,a0
	c.mv	s3,a1
	c.mv	s5,a2
	c.li	a1,00000008
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	a5,00000014
	lui	s1,0004201A
	jal	ra,000000002303E5B8
	addi	s1,s1,+00000668
	c.beqz	a0,000000002303CD7C

l2303CCC0:
	lw	a5,s4,+00000004
	c.li	a2,00000016
	c.mv	s2,a0
	c.swsp	a5,00000014
	lw	a5,s3,+00000004
	c.lw	a0,4(s0)
	andi	a1,a5,+000000FF
	srli	a3,a5,00000008
	srli	a4,a5,00000010
	c.srli	a5,00000018
	bne	s5,a2,000000002303CD62

l2303CCE2:
	sb	a5,s0,+00000007
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	c.li	a5,00000001
	addi	a2,s3,+00000004
	sb	a5,s3,+00000008

l2303CCFC:
	c.li	a1,00000008
	sb	s5,s0,+00000000
	sb	zero,s0,+00000001
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	c.mv	a0,s0
	c.swsp	a2,0000008C
	jal	ra,000000002304311A
	sb	a0,s0,+00000002
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,zero,+00000494
	c.swsp	a5,00000094
	lhu	a5,s1,+00000060
	c.lwsp	t3,00000084
	addi	a7,sp,+0000002C
	c.addi	a5,00000001
	sh	a5,s1,+00000060
	c.li	a5,00000004
	c.swsp	a5,00000000
	c.mv	a6,s4
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000001
	c.addi4spn	a1,00000028
	c.mv	a0,s2
	jal	ra,000000002303D712
	c.mv	a0,s2
	jal	ra,000000002303E536

l2303CD50:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2303CD62:
	lui	a2,0004200E
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	sb	a5,s0,+00000007
	addi	a2,a2,+000002BC
	c.j	000000002303CCFC

l2303CD7C:
	lhu	a5,s1,+0000006A
	c.addi	a5,00000001
	sh	a5,s1,+0000006A
	c.j	000000002303CD50

;; igmp_delaying_member: 2303CD88
;;   Called from:
;;     2303CE58 (in igmp_report_groups)
;;     2303D01C (in igmp_input)
;;     2303D03E (in igmp_input)
igmp_delaying_member proc
	lbu	a5,a0,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002303CDA2

l2303CD92:
	c.li	a4,00000001
	bne	a5,a4,000000002303CDDA

l2303CD98:
	lhu	a5,a0,+0000000A
	c.beqz	a5,000000002303CDA2

l2303CD9E:
	bgeu	a1,a5,000000002303CDDA

l2303CDA2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a1
	c.mv	s1,a0
	bltu	a5,a1,000000002303CDCA

l2303CDB4:
	c.li	a5,00000001
	sh	a5,s1,+0000000A

l2303CDBA:
	c.li	a5,00000001
	sb	a5,s1,+00000009
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303CDCA:
	jal	ra,0000000023036D28
	and	s0,a0,s0
	sh	s0,s1,+0000000A
	c.beqz	s0,000000002303CDB4

l2303CDD8:
	c.j	000000002303CDBA

l2303CDDA:
	c.jr	ra

;; igmp_init: 2303CDDC
;;   Called from:
;;     2303AEAE (in lwip_init)
igmp_init proc
	lui	a5,00001000
	lui	a4,0004200E
	addi	a5,a5,+000000E0
	sw	a5,a4,+000002C0
	lui	a5,00002000
	lui	a4,0004200E
	addi	a5,a5,+000000E0
	sw	a5,a4,+000002BC
	c.jr	ra

;; igmp_stop: 2303CDFE
;;   Called from:
;;     2303E2CE (in netif_remove)
igmp_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.lw	a0,44(s0)
	c.mv	s1,a0
	sw	zero,a0,+0000002C

l2303CE10:
	c.bnez	s0,000000002303CE20

l2303CE12:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303CE20:
	c.lw	s1,72(a5)
	lw	s2,s0,+00000000
	c.beqz	a5,000000002303CE32

l2303CE28:
	c.li	a2,00000000
	addi	a1,s0,+00000004
	c.mv	a0,s1
	c.jalr	a5

l2303CE32:
	c.mv	a1,s0
	c.li	a0,0000000A
	jal	ra,000000002303DF44
	c.mv	s0,s2
	c.j	000000002303CE10

;; igmp_report_groups: 2303CE3E
;;   Called from:
;;     2303DFCC (in netif_issue_reports)
igmp_report_groups proc
	c.lw	a0,44(a5)
	c.beqz	a5,000000002303CE60

l2303CE42:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,0(s0)

l2303CE4A:
	c.bnez	s0,000000002303CE54

l2303CE4C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303CE54:
	c.mv	a0,s0
	c.li	a1,00000005
	jal	ra,000000002303CD88
	c.lw	s0,0(s0)
	c.j	000000002303CE4A

l2303CE60:
	c.jr	ra

;; igmp_lookfor_group: 2303CE62
;;   Called from:
;;     2303CE82 (in igmp_lookup_group)
;;     2303CF7C (in igmp_input)
;;     2303D02A (in igmp_input)
;;     2303D31C (in ip4_input)
igmp_lookfor_group proc
	c.lw	a0,44(a0)

l2303CE64:
	c.bnez	a0,000000002303CE68

l2303CE66:
	c.jr	ra

l2303CE68:
	c.lw	a0,4(a4)
	c.lw	a1,0(a5)
	beq	a4,a5,000000002303CE66

l2303CE70:
	c.lw	a0,0(a0)
	c.j	000000002303CE64

;; igmp_lookup_group: 2303CE74
;;   Called from:
;;     2303CED4 (in igmp_start)
igmp_lookup_group proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,000000002303CE62
	c.bnez	a0,000000002303CEAE

l2303CE88:
	c.li	a0,0000000A
	c.lw	s1,44(s0)
	jal	ra,000000002303DF26
	c.beqz	a0,000000002303CEAE

l2303CE92:
	c.li	a5,00000000
	beq	s2,zero,000000002303CE9C

l2303CE98:
	lw	a5,s2,+00000000

l2303CE9C:
	c.sw	a0,4(a5)
	sw	zero,a0,+00000008
	sb	zero,a0,+0000000C
	c.bnez	s0,000000002303CEBA

l2303CEA8:
	sw	zero,a0,+00000000
	c.sw	s1,44(a0)

l2303CEAE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303CEBA:
	c.lw	s0,0(a5)
	c.sw	a0,0(a5)
	c.sw	s0,0(a0)
	c.j	000000002303CEAE

;; igmp_start: 2303CEC2
;;   Called from:
;;     2303E1F8 (in netif_add)
igmp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	addi	a1,s1,+000002C0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002303CE74
	c.beqz	a0,000000002303CF06

l2303CEDA:
	c.li	a5,00000002
	sb	a5,a0,+00000009
	lbu	a5,a0,+0000000C
	c.addi	a5,00000001
	sb	a5,a0,+0000000C
	c.lw	s0,72(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303CEFC

l2303CEF0:
	c.li	a2,00000001
	addi	a1,s1,+000002C0
	c.mv	a0,s0
	c.jalr	a5
	c.li	a0,00000000

l2303CEFC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303CF06:
	c.li	a0,FFFFFFFF
	c.j	000000002303CEFC

;; igmp_input: 2303CF0A
;;   Called from:
;;     2303D4C0 (in ip4_input)
igmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004201A
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	addi	s0,s3,+00000668
	lhu	a5,s0,+00000062
	c.mv	s5,a1
	c.addi	a5,00000001
	sh	a5,s0,+00000062
	lhu	a1,a0,+0000000A
	c.li	a5,00000007
	bltu	a5,a1,000000002303CF58

l2303CF38:
	jal	ra,000000002303E536
	lhu	a5,s0,+00000068
	c.addi	a5,00000001
	sh	a5,s0,+00000068

l2303CF46:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303CF58:
	c.lw	a0,4(s1)
	c.mv	s2,a0
	c.mv	s4,a2
	c.mv	a0,s1
	jal	ra,000000002304311A
	c.beqz	a0,000000002303CF78

l2303CF66:
	c.mv	a0,s2
	jal	ra,000000002303E536
	lhu	a5,s0,+00000066
	c.addi	a5,00000001
	sh	a5,s0,+00000066
	c.j	000000002303CF46

l2303CF78:
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002303CE62
	c.bnez	a0,000000002303CF94

l2303CF82:
	c.mv	a0,s2
	jal	ra,000000002303E536
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002303CF46

l2303CF94:
	lbu	a5,s1,+00000000
	c.li	a4,00000011
	beq	a5,a4,000000002303CFB0

l2303CF9E:
	c.li	a4,00000016
	beq	a5,a4,000000002303D050

l2303CFA4:
	lhu	a5,s0,+0000006C
	c.addi	a5,00000001
	sh	a5,s0,+0000006C
	c.j	000000002303D002

l2303CFB0:
	lbu	a4,s1,+00000005
	lbu	a5,s1,+00000004
	lw	a3,s4,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000006
	addi	s3,s3,+00000668
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000007
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,0004200E
	lw	a4,a4,+000002C0
	bne	a3,a4,000000002303D06C

l2303CFE0:
	c.bnez	a5,000000002303D024

l2303CFE2:
	lbu	a5,s1,+00000001
	c.bnez	a5,000000002303D00A

l2303CFE8:
	lhu	a5,s0,+0000006E
	c.addi	a5,00000001
	sh	a5,s0,+0000006E
	c.li	a5,0000000A
	sb	a5,s1,+00000001

l2303CFF8:
	lw	a5,s5,+0000002C
	c.beqz	a5,000000002303D002

l2303CFFE:
	c.lw	a5,0(s0)

l2303D000:
	c.bnez	s0,000000002303D016

l2303D002:
	c.mv	a0,s2
	jal	ra,000000002303E536
	c.j	000000002303CF46

l2303D00A:
	lhu	a5,s0,+00000072
	c.addi	a5,00000001
	sh	a5,s0,+00000072
	c.j	000000002303CFF8

l2303D016:
	lbu	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,000000002303CD88
	c.lw	s0,0(s0)
	c.j	000000002303D000

l2303D024:
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	c.swsp	a5,00000084
	jal	ra,000000002303CE62
	c.beqz	a0,000000002303D044

l2303D030:
	lhu	a5,s3,+00000070
	c.addi	a5,00000001
	sh	a5,s3,+00000070
	lbu	a1,s1,+00000001
	jal	ra,000000002303CD88
	c.j	000000002303D002

l2303D044:
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002303D002

l2303D050:
	lhu	a5,s0,+00000074
	c.addi	a5,00000001
	sh	a5,s0,+00000074
	lbu	a4,a0,+00000009
	c.li	a5,00000001
	bne	a4,a5,000000002303D002

l2303D064:
	addi	a5,zero,+00000200
	c.sw	a0,8(a5)
	c.j	000000002303D002

l2303D06C:
	c.beqz	a5,000000002303CFA4

l2303D06E:
	c.j	000000002303D030

;; igmp_tmr: 2303D070
igmp_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201A
	c.swsp	s1,00000088
	lw	s1,a5,+00000660
	c.swsp	s2,00000008
	lui	s2,0004201A
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	s3,00000001
	lui	s4,0004200E
	c.li	s5,00000002
	addi	s2,s2,+00000668

l2303D098:
	c.bnez	s1,000000002303D0AC

l2303D09A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303D0AC:
	c.lw	s1,44(s0)

l2303D0AE:
	c.bnez	s0,000000002303D0B4

l2303D0B0:
	c.lw	s1,0(s1)
	c.j	000000002303D098

l2303D0B4:
	lhu	a5,s0,+0000000A
	c.beqz	a5,000000002303D0F0

l2303D0BA:
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000000A
	c.bnez	a5,000000002303D0F0

l2303D0C6:
	lbu	a5,s0,+00000009
	bne	a5,s3,000000002303D0F0

l2303D0CE:
	c.lw	s0,4(a4)
	lw	a5,s4,+000002C0
	beq	a4,a5,000000002303D0F0

l2303D0D8:
	sb	s5,s0,+00000009
	lhu	a5,s2,+0000007A
	c.li	a2,00000016
	c.mv	a1,s0
	c.addi	a5,00000001
	c.mv	a0,s1
	sh	a5,s2,+0000007A
	jal	ra,000000002303CC88

l2303D0F0:
	c.lw	s0,0(s0)
	c.j	000000002303D0AE

;; ip4_input_accept: 2303D0F4
;;   Called from:
;;     2303D37E (in ip4_input)
;;     2303D3A8 (in ip4_input)
ip4_input_accept proc
	lbu	a5,a0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,000000002303D124

l2303D0FC:
	c.lw	a0,4(a4)
	c.mv	a1,a0
	c.li	a0,00000000
	c.beqz	a4,000000002303D128

l2303D104:
	lui	a5,0004201A
	lw	a5,a5,+000007A8
	c.li	a0,00000001
	beq	a4,a5,000000002303D128

l2303D112:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a5
	c.swsp	ra,00000084
	c.jal	000000002303D750
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l2303D124:
	c.li	a0,00000000
	c.jr	ra

l2303D128:
	c.jr	ra

;; ip4_route: 2303D12A
;;   Called from:
;;     23040BFC (in tcp_input)
;;     23040D68 (in tcp_input)
;;     230414B4 (in tcp_output_control_segment)
;;     23041BD0 (in tcp_output)
;;     230428F8 (in udp_sendto_chksum)
;;     23042940 (in udp_sendto_chksum)
;;     23043460 (in icmp_dest_unreach)
ip4_route proc
	c.lw	a0,0(a5)
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002303D142

l2303D138:
	lui	a4,0004200E
	lw	a0,a4,+000002C4
	c.bnez	a0,000000002303D1B4

l2303D142:
	lui	a4,0004201A
	lw	a0,a4,+00000660

l2303D14A:
	c.bnez	a0,000000002303D186

l2303D14C:
	lui	a4,0004201A
	lw	a4,a4,+0000065C
	c.beqz	a4,000000002303D172

l2303D156:
	lbu	a3,a4,+00000041
	c.li	a2,00000005
	c.andi	a3,00000005
	bne	a3,a2,000000002303D172

l2303D162:
	c.lw	a4,4(a3)
	c.beqz	a3,000000002303D172

l2303D166:
	andi	a5,a5,+000000FF
	addi	a3,zero,+0000007F
	bne	a5,a3,000000002303D1B2

l2303D172:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+0000003E
	c.addi	a4,00000001
	sh	a4,a5,+0000003E
	c.jr	ra

l2303D186:
	lbu	a3,a0,+00000041
	andi	a4,a3,+00000001
	c.beqz	a4,000000002303D1AE

l2303D190:
	srli	a4,a3,00000002
	c.andi	a4,00000001
	c.beqz	a4,000000002303D1AE

l2303D198:
	c.lw	a0,4(a4)
	c.beqz	a4,000000002303D1AE

l2303D19C:
	c.lw	a0,8(a2)
	c.xor	a4,a5
	c.and	a4,a2
	c.beqz	a4,000000002303D1B4

l2303D1A4:
	c.andi	a3,00000002
	c.bnez	a3,000000002303D1AE

l2303D1A8:
	c.lw	a0,12(a4)
	beq	a5,a4,000000002303D1B4

l2303D1AE:
	c.lw	a0,0(a0)
	c.j	000000002303D14A

l2303D1B2:
	c.mv	a0,a4

l2303D1B4:
	c.jr	ra

;; ip4_input: 2303D1B6
;;   Called from:
;;     23042B4E (in ethernet_input)
ip4_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	addi	s1,s0,+00000668
	lhu	a5,s1,+00000032
	c.addi	a5,00000001
	sh	a5,s1,+00000032
	lw	s3,a0,+00000004
	c.li	a5,00000004
	lbu	s6,s3,+00000000
	srli	a4,s6,00000004
	beq	a4,a5,000000002303D222

l2303D1F0:
	jal	ra,000000002303E536
	lhu	a5,s1,+00000044
	c.addi	a5,00000001
	sh	a5,s1,+00000044
	lhu	a5,s1,+00000036
	c.addi	a5,00000001
	sh	a5,s1,+00000036

l2303D208:
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
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2303D222:
	lbu	a5,s3,+00000003
	c.mv	s2,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.mv	s4,a1
	c.or	a0,a5
	jal	ra,000000002303A75A
	andi	s6,s6,+0000000F
	lhu	a5,s2,+00000008
	c.slli	s6,02
	slli	s1,s6,00000010
	addi	s0,s0,+00000668
	c.srli	s1,00000010
	c.mv	s5,a0
	bgeu	a0,a5,000000002303D258

l2303D250:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002303E716

l2303D258:
	lhu	a5,s2,+0000000A
	bltu	a5,s1,000000002303D26E

l2303D260:
	lhu	a5,s2,+00000008
	bltu	a5,s5,000000002303D26E

l2303D268:
	c.li	a5,00000013
	bltu	a5,s1,000000002303D28A

l2303D26E:
	c.mv	a0,s2
	jal	ra,000000002303E536
	lhu	a5,s0,+0000003A
	c.addi	a5,00000001
	sh	a5,s0,+0000003A

l2303D27E:
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	c.j	000000002303D208

l2303D28A:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002304311A
	c.beqz	a0,000000002303D2A6

l2303D294:
	c.mv	a0,s2
	jal	ra,000000002303E536
	lhu	a5,s0,+00000038
	c.addi	a5,00000001
	sh	a5,s0,+00000038
	c.j	000000002303D27E

l2303D2A6:
	lbu	a4,s3,+00000011
	lbu	a5,s3,+00000010
	lui	s1,0004201A
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s3,+00000012
	addi	a2,s1,+00000794
	addi	s1,s1,+00000794
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	a2,20(a5)
	lbu	a3,s3,+0000000D
	lbu	a4,s3,+0000000C
	andi	a5,a5,+000000F0
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,s3,+0000000E
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,s3,+0000000F
	c.slli	a4,18
	c.or	a4,a3
	c.sw	a2,16(a4)
	addi	a4,zero,+000000E0
	bne	a5,a4,000000002303D37C

l2303D2FA:
	lbu	a5,s4,+00000041
	andi	a5,a5,+00000020
	c.bnez	a5,000000002303D312

l2303D304:
	lbu	a4,s3,+00000009
	c.li	a5,00000011
	beq	a4,a5,000000002303D3B6

l2303D30E:
	c.li	s5,00000000
	c.j	000000002303D334

l2303D312:
	lui	a1,0004201A
	addi	a1,a1,+000007A8
	c.mv	a0,s4
	jal	ra,000000002303CE62
	c.beqz	a0,000000002303D304

l2303D322:
	c.lw	s1,20(a3)
	lui	a5,00001000
	addi	a5,a5,+000000E0
	c.lw	s1,16(a4)
	beq	a3,a5,000000002303D354

l2303D332:
	c.mv	s5,s4

l2303D334:
	c.lw	s1,16(a0)
	c.beqz	a0,000000002303D3D2

l2303D338:
	c.mv	a1,s4
	c.jal	000000002303D750
	c.bnez	a0,000000002303D34C

l2303D33E:
	c.lw	s1,16(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002303D3D2

l2303D34C:
	c.mv	a0,s2
	jal	ra,000000002303E536
	c.j	000000002303D27E

l2303D354:
	c.mv	s5,s4
	c.bnez	a4,000000002303D332

l2303D358:
	lbu	a5,s3,+00000006
	lbu	a4,s3,+00000007
	andi	a5,a5,+0000003F
	c.slli	a4,08
	c.or	a5,a4
	c.beqz	a5,000000002303D3E8

l2303D36A:
	c.mv	a0,s2
	jal	ra,000000002303E536
	lhu	a5,s0,+00000042
	c.addi	a5,00000001
	sh	a5,s0,+00000042
	c.j	000000002303D27E

l2303D37C:
	c.mv	a0,s4
	jal	ra,000000002303D0F4
	c.bnez	a0,000000002303D3B0

l2303D384:
	lbu	a4,s1,+00000014
	addi	a5,zero,+0000007F
	beq	a4,a5,000000002303D304

l2303D390:
	lui	a5,0004201A
	lw	s5,a5,+00000660

l2303D398:
	beq	s5,zero,000000002303D304

l2303D39C:
	bne	s5,s4,000000002303D3A6

l2303D3A0:
	lw	s5,s5,+00000000
	c.j	000000002303D398

l2303D3A6:
	c.mv	a0,s5
	jal	ra,000000002303D0F4
	c.beqz	a0,000000002303D3A0

l2303D3AE:
	c.j	000000002303D334

l2303D3B0:
	bne	s4,zero,000000002303D332

l2303D3B4:
	c.j	000000002303D304

l2303D3B6:
	add	a4,s3,s6
	lbu	a5,a4,+00000003
	lbu	a3,a4,+00000002
	c.lui	a4,00004000
	c.slli	a5,08
	c.or	a5,a3
	addi	a4,a4,+00000400
	bne	a5,a4,000000002303D30E

l2303D3D0:
	c.mv	s5,s4

l2303D3D2:
	bne	s5,zero,000000002303D358

l2303D3D6:
	lhu	a5,s0,+00000036
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	jal	ra,000000002303E536
	c.j	000000002303D208

l2303D3E8:
	sw	s5,s1,+00000000
	sw	s4,s1,+00000004
	sw	s3,s1,+00000008
	lbu	a5,s3,+00000000
	c.mv	a1,s4
	c.mv	a0,s2
	c.andi	a5,0000000F
	c.slli	a5,02
	sh	a5,s1,+0000000C
	c.li	s8,00000001
	jal	ra,000000002303EA8A
	c.mv	s7,a0
	beq	a0,s8,000000002303D486

l2303D410:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,000000002303E4D4
	lbu	a5,s3,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002303D4B4

l2303D422:
	bltu	a4,a5,000000002303D472

l2303D426:
	beq	a5,s8,000000002303D4AA

l2303D42A:
	c.li	a5,00000002
	beq	s7,a5,000000002303D46A

l2303D430:
	c.lw	s1,20(a0)
	c.mv	a1,s5
	c.jal	000000002303D750
	c.bnez	a0,000000002303D456

l2303D438:
	c.lw	s1,20(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303D456

l2303D446:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,000000002303E524
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,00000000230433EC

l2303D456:
	lhu	a5,s0,+00000040
	c.addi	a5,00000001
	sh	a5,s0,+00000040
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036

l2303D46A:
	c.mv	a0,s2
	jal	ra,000000002303E536
	c.j	000000002303D486

l2303D472:
	c.li	a4,00000006
	beq	a5,a4,000000002303D4A0

l2303D478:
	c.li	a4,00000011
	bne	a5,a4,000000002303D42A

l2303D47E:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,00000000230423D0

l2303D486:
	sw	zero,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000008
	sh	zero,s1,+0000000C
	sw	zero,s1,+00000010
	sw	zero,s1,+00000014
	c.j	000000002303D208

l2303D4A0:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,0000000023040568
	c.j	000000002303D486

l2303D4AA:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,00000000230431AA
	c.j	000000002303D486

l2303D4B4:
	lui	a2,0004201A
	addi	a2,a2,+000007A8
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002303CF0A
	c.j	000000002303D486

;; ip4_output_if_opt_src: 2303D4C6
;;   Called from:
;;     2303D728 (in ip4_output_if_opt)
;;     2303D746 (in ip4_output_if_src)
ip4_output_if_opt_src proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.mv	s8,a0
	c.mv	s3,a6
	lhu	s9,sp,+00000050
	beq	a2,zero,000000002303D6E2

l2303D4EA:
	c.mv	s4,a1
	c.mv	s2,a2
	c.mv	s6,a3
	c.mv	s5,a4
	c.mv	s7,a5
	beq	s9,zero,000000002303D6D6

l2303D4F8:
	addi	a5,zero,+00000028
	bgeu	a5,s9,000000002303D52E

l2303D500:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFA
	c.addi	a4,00000001
	sh	a4,a5,+00000044

l2303D514:
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
	c.addi16sp	00000050
	c.jr	ra

l2303D52E:
	addi	s0,s9,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s1,s0,+00000014
	c.mv	a1,s0
	c.swsp	a7,00000084
	c.slli	s1,10
	jal	ra,000000002303E4CE
	c.srli	s1,00000010
	c.lwsp	a2,00000028
	c.beqz	a0,000000002303D562

l2303D54C:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFE
	c.addi	a4,00000001
	sh	a4,a5,+00000044
	c.j	000000002303D514

l2303D562:
	lw	a0,s8,+00000004
	c.mv	a2,s9
	c.mv	a1,a7
	jal	ra,000000002306CF80
	bgeu	s9,s0,000000002303D582

l2303D572:
	lw	a0,s8,+00000004
	sub	a2,s0,s9
	c.li	a1,00000000
	c.add	a0,s9
	jal	ra,000000002306D1BC

l2303D582:
	lw	a3,s8,+00000004
	c.srli	s0,00000001
	c.li	a5,00000000
	c.li	s9,00000000

l2303D58C:
	slli	a4,a5,00000001
	c.add	a4,a3
	lhu	a4,a4,+00000000
	c.addi	a5,00000001
	c.add	s9,a4
	blt	a5,s0,000000002303D58C

l2303D59E:
	c.li	a1,00000014
	c.mv	a0,s8
	jal	ra,000000002303E4CE
	c.bnez	a0,000000002303D54C

l2303D5A8:
	lw	s0,s8,+00000004
	sb	s6,s0,+00000008
	sb	s7,s0,+00000009
	lw	a5,s2,+00000000
	c.slli	s6,08
	or	s7,s6,s7
	srli	a4,a5,00000008
	srli	a3,a5,00000018
	sb	a5,s0,+00000010
	sb	a4,s0,+00000011
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	sb	a4,s0,+00000012
	srli	a4,s1,00000002
	ori	a4,a4,+00000040
	andi	a4,a4,+000000FF
	sb	a4,s0,+00000000
	slli	a0,s7,00000008
	c.slli	a4,08
	srai	s7,s7,00000008
	or	a4,a4,s5
	or	a0,a0,s7
	slli	s1,a4,00000008
	c.slli	a0,10
	c.srai	a4,00000008
	c.or	a4,s1
	c.srli	a0,00000010
	c.add	a0,a5
	slli	s1,a4,00000010
	sb	a3,s0,+00000013
	sb	s5,s0,+00000001
	c.add	a0,s9
	c.srli	s1,00000010
	c.add	s1,a0
	lhu	a0,s8,+00000008
	lui	s5,0004200E
	addi	s5,s5,+000002C8
	jal	ra,000000002303A75A
	srli	a5,a0,00000008
	sb	a0,s0,+00000002
	c.add	s1,a0
	lhu	a0,s5,+00000000
	sb	a5,s0,+00000003
	sb	zero,s0,+00000006
	sb	zero,s0,+00000007
	jal	ra,000000002303A75A
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	lhu	a5,s5,+00000000
	sb	a0,s0,+00000004
	c.add	a0,s1
	c.addi	a5,00000001
	sh	a5,s5,+00000000
	bne	s4,zero,000000002303D6DC

l2303D668:
	lui	a5,00023082
	lw	a4,a5,+000007AC

l2303D670:
	srli	a3,a4,00000018
	sb	a3,s0,+0000000F
	c.lui	a3,00010000
	srli	a5,a4,00000008
	c.addi	a3,FFFFFFFF
	sb	a4,s0,+0000000C
	sb	a5,s0,+0000000D
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a0
	c.add	a4,a5
	sb	a5,s0,+0000000E
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a5
	srli	a5,a4,00000010
	c.add	a5,a4
	xori	a5,a5,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+0000000A
	c.srli	a5,00000008
	sb	a5,s0,+0000000B

l2303D6B6:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000030
	c.mv	a2,s2
	c.mv	a1,s8
	c.addi	a4,00000001
	sh	a4,a5,+00000030
	lw	a5,s3,+00000014
	c.mv	a0,s3
	c.jalr	a5
	c.j	000000002303D514

l2303D6D6:
	c.li	s1,00000014
	c.li	s9,00000000
	c.j	000000002303D59E

l2303D6DC:
	lw	a4,s4,+00000000
	c.j	000000002303D670

l2303D6E2:
	lhu	a4,a0,+0000000A
	c.li	a5,00000013
	bgeu	a5,a4,000000002303D54C

l2303D6EC:
	c.lw	a0,4(a3)
	addi	s2,sp,+0000001C
	lbu	a4,a3,+00000011
	lbu	a5,a3,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,0000008C
	c.j	000000002303D6B6

;; ip4_output_if_opt: 2303D712
;;   Called from:
;;     2303CD46 (in igmp_send)
;;     2303D734 (in ip4_output_if)
ip4_output_if_opt proc
	lhu	t1,sp,+00000000
	c.beqz	a2,000000002303D726

l2303D718:
	c.beqz	a1,000000002303D722

l2303D71A:
	lw	t3,a1,+00000000
	bne	t3,zero,000000002303D726

l2303D722:
	addi	a1,a6,+00000004

l2303D726:
	c.swsp	t1,00000000
	jal	zero,000000002303D4C6

;; ip4_output_if: 2303D72C
;;   Called from:
;;     23041494 (in tcp_output_control_segment)
;;     23041DCE (in tcp_output)
;;     23043396 (in icmp_input)
;;     230434A6 (in icmp_dest_unreach)
ip4_output_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002303D712
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_output_if_src: 2303D73E
;;   Called from:
;;     23042820 (in udp_sendto_if_src_chksum)
ip4_output_if_src proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002303D4C6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_addr_isbroadcast_u32: 2303D750
;;   Called from:
;;     2303C7F2 (in etharp_input)
;;     2303CA2A (in etharp_query)
;;     2303CB6A (in etharp_output)
;;     2303D118 (in ip4_input_accept)
;;     2303D33A (in ip4_input)
;;     2303D434 (in ip4_input)
;;     2303EAB2 (in raw_input)
;;     230405D0 (in tcp_input)
;;     2304244C (in udp_input)
;;     2304321C (in icmp_input)
ip4_addr_isbroadcast_u32 proc
	addi	a3,a0,-00000001
	c.li	a5,FFFFFFFD
	c.mv	a4,a0
	bltu	a5,a3,000000002303D786

l2303D75C:
	lbu	a5,a1,+00000041
	andi	a0,a5,+00000002
	c.beqz	a0,000000002303D788

l2303D766:
	c.lw	a1,4(a5)
	c.li	a0,00000000
	beq	a5,a4,000000002303D788

l2303D76E:
	c.lw	a1,8(a3)
	c.xor	a5,a4
	c.and	a5,a3
	c.bnez	a5,000000002303D788

l2303D776:
	xori	a3,a3,-00000001
	and	a0,a3,a4
	c.sub	a0,a3
	sltiu	a0,a0,+00000001
	c.jr	ra

l2303D786:
	c.li	a0,00000001

l2303D788:
	c.jr	ra

;; ip4addr_aton: 2303D78A
;;   Called from:
;;     2303D8EE (in ipaddr_addr)
;;     23043B10 (in dhcpd_start)
;;     23043B34 (in dhcpd_start)
;;     23068520 (in set_if)
;;     23068536 (in set_if)
;;     2306854A (in set_if)
ip4addr_aton proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	lbu	a5,a0,+00000000
	c.addi4spn	a4,00000010
	lui	a6,00023082
	c.mv	t3,a4
	addi	a6,a6,+000005B1
	addi	t4,zero,+00000030
	addi	t5,zero,+00000058
	c.li	t6,00000010
	c.li	t0,00000002
	addi	t2,zero,+0000002E
	c.addi4spn	s0,0000001C

l2303D7B2:
	add	a3,a5,a6
	lbu	a3,a3,+00000000
	c.andi	a3,00000004
	beq	a3,zero,000000002303D8E4

l2303D7C0:
	c.li	a7,0000000A
	bne	a5,t4,000000002303D7D6

l2303D7C6:
	lbu	a5,a0,+00000001
	andi	a3,a5,+000000DF
	beq	a3,t5,000000002303D7FC

l2303D7D2:
	c.addi	a0,00000001
	c.li	a7,00000008

l2303D7D6:
	c.mv	a2,a0
	c.li	a0,00000000

l2303D7DA:
	add	a3,a6,a5
	lbu	a3,a3,+00000000
	andi	t1,a3,+00000004
	beq	t1,zero,000000002303D806

l2303D7EA:
	add	a0,a7,a0
	c.add	a0,a5
	addi	a0,a0,-00000030

l2303D7F4:
	lbu	a5,a2,+00000001
	c.addi	a2,00000001
	c.j	000000002303D7DA

l2303D7FC:
	lbu	a5,a0,+00000002
	c.li	a7,00000010
	c.addi	a0,00000002
	c.j	000000002303D7D6

l2303D806:
	bne	a7,t6,000000002303D82C

l2303D80A:
	andi	t1,a3,+00000044
	beq	t1,zero,000000002303D82C

l2303D812:
	c.andi	a3,00000003
	c.slli	a0,04
	c.addi	a5,0000000A
	addi	t1,zero,+00000061
	beq	a3,t0,000000002303D824

l2303D820:
	addi	t1,zero,+00000041

l2303D824:
	sub	a5,a5,t1
	c.or	a0,a5
	c.j	000000002303D7F4

l2303D82C:
	bne	a5,t2,000000002303D844

l2303D830:
	beq	a4,s0,000000002303D8E4

l2303D834:
	c.addi	a4,00000004
	sw	a0,a4,+00000FFC
	lbu	a5,a2,+00000001
	addi	a0,a2,+00000001
	c.j	000000002303D7B2

l2303D844:
	c.beqz	a5,000000002303D84C

l2303D846:
	c.andi	a3,00000008
	c.li	s0,00000000
	c.beqz	a3,000000002303D86E

l2303D84C:
	sub	s0,a4,t3
	c.srai	s0,00000002
	c.addi	s0,00000001
	c.li	a5,00000002
	beq	s0,a5,000000002303D8AA

l2303D85A:
	blt	a5,s0,000000002303D878

l2303D85E:
	c.beqz	s0,000000002303D86E

l2303D860:
	c.swsp	a1,00000084
	c.li	s0,00000001
	c.beqz	a1,000000002303D86E

l2303D866:
	jal	ra,000000002303A768
	c.lwsp	a2,00000064
	c.sw	a1,0(a0)

l2303D86E:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2303D878:
	c.li	a5,00000003
	beq	s0,a5,000000002303D8C4

l2303D87E:
	c.li	a5,00000004
	bne	s0,a5,000000002303D860

l2303D884:
	addi	a2,zero,+000000FF
	c.li	s0,00000000
	bltu	a2,a0,000000002303D86E

l2303D88E:
	c.lwsp	a6,000000E4
	bltu	a2,a5,000000002303D86E

l2303D894:
	c.lwsp	s4,000000A4
	bltu	a2,a3,000000002303D86E

l2303D89A:
	c.lwsp	s8,000000C4
	bltu	a2,a4,000000002303D86E

l2303D8A0:
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	c.slli	a4,08
	c.j	000000002303D8E0

l2303D8AA:
	lui	a5,00001000
	c.li	s0,00000000
	bgeu	a0,a5,000000002303D86E

l2303D8B4:
	c.lwsp	a6,000000E4
	addi	a4,zero,+000000FF
	bltu	a4,a5,000000002303D86E

l2303D8BE:
	c.slli	a5,18

l2303D8C0:
	c.or	a0,a5
	c.j	000000002303D860

l2303D8C4:
	c.lui	a5,00010000
	c.li	s0,00000000
	bgeu	a0,a5,000000002303D86E

l2303D8CC:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	bltu	a3,a5,000000002303D86E

l2303D8D6:
	c.lwsp	s4,000000C4
	bltu	a3,a4,000000002303D86E

l2303D8DC:
	c.slli	a5,18
	c.slli	a4,10

l2303D8E0:
	c.or	a5,a4
	c.j	000000002303D8C0

l2303D8E4:
	c.li	s0,00000000
	c.j	000000002303D86E

;; ipaddr_addr: 2303D8E8
;;   Called from:
;;     23006D9E (in wifi_sta_ip_set_cmd)
;;     23006DA6 (in wifi_sta_ip_set_cmd)
;;     23006DAE (in wifi_sta_ip_set_cmd)
;;     23006DB6 (in wifi_sta_ip_set_cmd)
;;     23006DC2 (in wifi_sta_ip_set_cmd)
;;     230096C8 (in bl_rx_sm_disconnect_ind)
ipaddr_addr proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002303D78A
	c.beqz	a0,000000002303D8FC

l2303D8F4:
	c.lwsp	a2,00000044

l2303D8F6:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303D8FC:
	c.li	a0,FFFFFFFF
	c.j	000000002303D8F6

;; ip4addr_ntoa_r: 2303D900
;;   Called from:
;;     23006DD0 (in wifi_sta_ip_set_cmd)
;;     23006DF6 (in wifi_sta_ip_set_cmd)
;;     23006E1C (in wifi_sta_ip_set_cmd)
;;     23006E42 (in wifi_sta_ip_set_cmd)
;;     23006E68 (in wifi_sta_ip_set_cmd)
;;     2303D9A6 (in ip4addr_ntoa)
ip4addr_ntoa_r proc
	c.lw	a0,0(a5)
	c.addi	sp,FFFFFFF0
	c.mv	t4,a1
	c.swsp	a5,00000084
	c.li	a0,00000000
	c.addi4spn	a3,0000000C
	c.li	t5,0000000A
	c.li	t0,00000009
	addi	t2,zero,+000000FF
	addi	t6,zero,+0000002E

l2303D918:
	lbu	a6,a3,+00000000
	c.li	a5,00000000

l2303D91E:
	and	t1,a6,t5
	addi	a7,sp,+00000010
	c.add	a7,a5
	addi	t3,a5,+00000001
	andi	t3,t3,+000000FF
	srl	a4,a6,t5
	addi	t1,t1,+00000030
	sb	t1,a7,+00000FF8
	andi	a4,a4,+000000FF
	bltu	t0,a6,000000002303D970

l2303D944:
	sb	a4,a3,+00000000
	c.mv	a6,a0
	c.mv	a4,t4

l2303D94C:
	c.addi	a0,00000001
	bne	a5,t2,000000002303D976

l2303D952:
	bge	a6,a2,000000002303D998

l2303D956:
	sb	t6,a4,+00000000
	c.addi	a3,00000001
	c.addi4spn	a5,00000010
	addi	t4,a4,+00000001
	bne	a3,a5,000000002303D918

l2303D966:
	sb	zero,a4,+00000000
	c.mv	a0,a1

l2303D96C:
	c.addi	sp,00000010
	c.jr	ra

l2303D970:
	c.mv	a6,a4
	c.mv	a5,t3
	c.j	000000002303D91E

l2303D976:
	addi	a7,a5,-00000001
	andi	a7,a7,+000000FF
	bge	a6,a2,000000002303D998

l2303D982:
	addi	a6,sp,+00000010
	c.add	a5,a6
	lbu	a5,a5,-00000008
	c.addi	a4,00000001
	c.mv	a6,a0
	sb	a5,a4,+00000FFF
	c.mv	a5,a7
	c.j	000000002303D94C

l2303D998:
	c.li	a0,00000000
	c.j	000000002303D96C

;; ip4addr_ntoa: 2303D99C
;;   Called from:
;;     23000C18 (in wifiprov_wifi_state_get)
;;     23000C26 (in wifiprov_wifi_state_get)
;;     23000C34 (in wifiprov_wifi_state_get)
;;     23006A44 (in wifi_sta_ip_info)
;;     23006A58 (in wifi_sta_ip_info)
;;     23006A6C (in wifi_sta_ip_info)
;;     23006A80 (in wifi_sta_ip_info)
;;     23006A94 (in wifi_sta_ip_info)
;;     2300A5A0 (in netif_status_callback)
;;     2300A5B6 (in netif_status_callback)
;;     2300A5CC (in netif_status_callback)
ip4addr_ntoa proc
	lui	a1,00042015
	c.li	a2,00000010
	addi	a1,a1,+00000514
	jal	zero,000000002303D900

;; mem_init: 2303D9AA
;;   Called from:
;;     2303AE9A (in lwip_init)
mem_init proc
	lui	a5,00042046
	addi	a5,a5,-0000003D
	c.andi	a5,FFFFFFFC
	lui	a4,0004200E
	sw	a5,a4,+000002D4
	c.lui	a4,00002000
	add	a3,a5,a4
	lui	a2,0004200E
	c.sw	a5,0(a4)
	sb	zero,a5,+00000004
	sw	a3,a2,+000002D8
	lui	a2,00020002
	c.sw	a3,0(a2)
	c.li	a2,00000001
	sb	a2,a3,+00000004
	lui	a0,0004200E
	lui	a3,0004200E
	sw	a5,a3,+000002CC
	addi	a0,a0,+000002D0
	lui	a5,0004201A
	sh	a4,a5,+00000716
	jal	zero,0000000023042DDE

;; mem_free: 2303D9F8
;;   Called from:
;;     2303E5B2 (in pbuf_free)
;;     230438DC (in dhcp_server_recv)
;;     23043A5A (in dhcp_server_stop)
mem_free proc
	beq	a0,zero,000000002303DB62

l2303D9FC:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lui	s2,0004201A
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	andi	a5,a0,+00000003
	c.mv	s0,a0
	addi	s2,s2,+00000668
	c.beqz	a5,000000002303DA3E

l2303DA1C:
	jal	ra,0000000023042E7E
	lhu	a5,s2,+000000B4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a5,00000001
	sh	a5,s2,+000000B4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023042E8E

l2303DA3E:
	lui	s4,0004200E
	addi	s4,s4,+000002D4
	lw	a5,s4,+00000000
	addi	s1,a0,-00000008
	bltu	s1,a5,000000002303DA1C

l2303DA52:
	lui	a5,0004200E
	lw	a3,a5,+000002D8
	addi	a4,a0,+0000000C
	addi	s3,a5,+000002D8
	bltu	a3,a4,000000002303DA1C

l2303DA66:
	lui	s5,0004200E
	addi	a0,s5,+000002D0
	jal	ra,0000000023042E2A
	lbu	a5,s0,-00000004
	c.bnez	a5,000000002303DA82

l2303DA78:
	addi	a0,s5,+000002D0
	jal	ra,0000000023042E30
	c.j	000000002303DA1C

l2303DA82:
	lhu	a1,s0,-00000008
	c.lui	a5,00002000
	bltu	a5,a1,000000002303DA78

l2303DA8C:
	lhu	a4,s0,-00000006
	bltu	a5,a4,000000002303DA78

l2303DA94:
	lw	a5,s4,+00000000
	sub	a2,s1,a5
	c.slli	a2,10
	c.srli	a2,00000010
	beq	a2,a4,000000002303DAAE

l2303DAA4:
	c.add	a4,a5
	lhu	a4,a4,+00000000
	bne	a4,a2,000000002303DA78

l2303DAAE:
	lw	a6,s3,+00000000
	add	a4,a5,a1
	beq	a4,a6,000000002303DAC2

l2303DABA:
	lhu	a4,a4,+00000002
	bne	a4,a2,000000002303DA78

l2303DAC2:
	lui	a4,0004200E
	lw	a3,a4,+000002CC
	sb	zero,s0,+00000FFC
	addi	a4,a4,+000002CC
	bgeu	s1,a3,000000002303DAD8

l2303DAD6:
	c.sw	a4,0(s1)

l2303DAD8:
	lhu	a3,s2,+000000B0
	c.sub	a3,a1
	c.add	a3,a2
	sh	a3,s2,+000000B0
	lhu	a3,s0,-00000008
	c.add	a3,a5
	beq	s1,a3,000000002303DB18

l2303DAEE:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002303DB18

l2303DAF4:
	beq	a6,a3,000000002303DB18

l2303DAF8:
	c.lw	a4,0(a1)
	bne	a3,a1,000000002303DB00

l2303DAFE:
	c.sw	a4,0(s1)

l2303DB00:
	lhu	a1,a3,+00000000
	sh	a1,s0,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a1,00002000
	beq	a3,a1,000000002303DB18

l2303DB12:
	c.add	a3,a5
	sh	a2,a3,+00000002

l2303DB18:
	lhu	a2,s0,-00000006
	add	a3,a5,a2
	beq	s1,a3,000000002303DB4A

l2303DB24:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002303DB4A

l2303DB2A:
	c.lw	a4,0(a1)
	bne	s1,a1,000000002303DB32

l2303DB30:
	c.sw	a4,0(a3)

l2303DB32:
	lhu	a4,s0,-00000008
	sh	a4,a3,+00000000
	lhu	a4,s0,-00000008
	c.lui	a3,00002000
	beq	a4,a3,000000002303DB4A

l2303DB44:
	c.add	a5,a4
	sh	a2,a5,+00000002

l2303DB4A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,s5,+000002D0
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023042E30

l2303DB62:
	c.jr	ra

;; mem_trim: 2303DB64
;;   Called from:
;;     2303E756 (in pbuf_realloc)
mem_trim proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	addi	s0,a1,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.srli	s0,00000010
	c.li	a5,0000000B
	c.mv	s4,a0
	bgeu	a5,s0,000000002303DB92

l2303DB88:
	c.lui	a5,00002000
	bgeu	a5,s0,000000002303DB94

l2303DB8E:
	c.li	s4,00000000
	c.j	000000002303DBCE

l2303DB92:
	c.li	s0,0000000C

l2303DB94:
	bltu	s0,a1,000000002303DB8E

l2303DB98:
	lui	s5,0004200E
	addi	s5,s5,+000002D4
	lw	a5,s5,+00000000
	bltu	s4,a5,000000002303DBB4

l2303DBA8:
	lui	a4,0004200E
	lw	a4,a4,+000002D8
	bltu	s4,a4,000000002303DBE4

l2303DBB4:
	jal	ra,0000000023042E7E
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000B4
	c.addi	a4,00000001
	sh	a4,a5,+000000B4
	jal	ra,0000000023042E8E

l2303DBCE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2303DBE4:
	lhu	s2,s4,-00000008
	addi	s1,s4,-00000008
	c.sub	s1,a5
	c.addi	s2,FFFFFFF8
	c.slli	s1,10
	c.slli	s2,10
	c.srli	s1,00000010
	srli	s2,s2,00000010
	sub	s3,s2,s1
	c.slli	s3,10
	srli	s3,s3,00000010
	bltu	s3,s0,000000002303DB8E

l2303DC08:
	beq	s3,s0,000000002303DBCE

l2303DC0C:
	lui	s6,0004200E
	addi	a0,s6,+000002D0
	jal	ra,0000000023042E2A
	lw	a5,s5,+00000000
	lhu	a2,s4,-00000008
	c.add	a2,a5
	lbu	a4,a2,+00000004
	c.bnez	a4,000000002303DC8E

l2303DC28:
	lui	a1,0004200E
	addi	a4,s1,+00000008
	addi	a1,a1,+000002CC
	c.add	a4,s0
	lw	a7,a1,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	lhu	a6,a2,+00000000
	add	a3,a5,a4
	bne	a7,a2,000000002303DC4C

l2303DC4A:
	c.sw	a1,0(a3)

l2303DC4C:
	sb	zero,a3,+00000004
	sh	a6,a3,+00000000
	sh	s1,a3,+00000002
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002303DC6C

l2303DC66:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2303DC6C:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	sub	s2,s1,s2
	lhu	s1,a5,+000000B0
	c.add	s2,s1
	c.add	s0,s2

l2303DC80:
	sh	s0,a5,+000000B0

l2303DC84:
	addi	a0,s6,+000002D0
	jal	ra,0000000023042E30
	c.j	000000002303DBCE

l2303DC8E:
	addi	a4,s0,+00000014
	bltu	s3,a4,000000002303DC84

l2303DC96:
	addi	a4,s1,+00000008
	lui	a2,0004200E
	c.add	a4,s0
	addi	a2,a2,+000002CC
	c.slli	a4,10
	c.lw	a2,0(a1)
	c.srli	a4,00000010
	add	a3,a5,a4
	bgeu	a3,a1,000000002303DCB4

l2303DCB2:
	c.sw	a2,0(a3)

l2303DCB4:
	sb	zero,a3,+00000004
	lhu	a2,s4,-00000008
	sh	s1,a3,+00000002
	sh	a2,a3,+00000000
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002303DCD8

l2303DCD2:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2303DCD8:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	sub	s1,s1,s2
	lhu	s2,a5,+000000B0
	c.add	s1,s2
	c.add	s0,s1
	c.j	000000002303DC80

;; mem_malloc: 2303DCEE
;;   Called from:
;;     2303C180 (in dhcp_start)
;;     2303E626 (in pbuf_alloc)
;;     23043668 (in dhcp_server_recv)
;;     23043988 (in dhcp_server_start)
mem_malloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.beqz	a0,000000002303DD76

l2303DCF8:
	addi	s1,a0,+00000003
	c.andi	s1,FFFFFFFC
	c.slli	s1,10
	c.srli	s1,00000010
	c.li	a5,0000000B
	bgeu	a5,s1,000000002303DD1C

l2303DD08:
	c.lui	a5,00002000
	c.li	s0,00000000
	bgeu	a5,s1,000000002303DD1E

l2303DD10:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303DD1C:
	c.li	s1,0000000C

l2303DD1E:
	c.li	s0,00000000
	bltu	s1,a0,000000002303DD10

l2303DD24:
	lui	s0,0004200E
	addi	a0,s0,+000002D0
	jal	ra,0000000023042E2A
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a6,a4,+000002CC
	lw	a7,a5,+000002D4
	c.lui	t1,00002000
	addi	t3,a4,+000002CC
	sub	a5,a6,a7
	slli	a3,a5,00000010
	c.srli	a3,00000010
	c.mv	a0,s0
	sub	a4,t1,s1
	c.li	a1,FFFFFFF8

l2303DD58:
	bltu	a3,a4,000000002303DD7A

l2303DD5C:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000AC
	addi	a0,a0,+000002D0
	c.addi	a4,00000001
	sh	a4,a5,+000000AC
	jal	ra,0000000023042E30

l2303DD76:
	c.li	s0,00000000
	c.j	000000002303DD10

l2303DD7A:
	add	s0,a7,a3
	lbu	a2,s0,+00000004
	lhu	a5,s0,+00000000
	c.bnez	a2,000000002303DE46

l2303DD88:
	sub	a2,a1,a3
	c.add	a2,a5
	bltu	a2,s1,000000002303DE46

l2303DD92:
	lui	a4,0004201A
	addi	a1,s1,+00000014
	addi	a4,a4,+00000668
	bltu	a2,a1,000000002303DE1A

l2303DDA2:
	addi	a5,s1,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	add	a2,a7,a5
	sb	zero,a2,+00000004
	lhu	a1,s0,+00000000
	sh	a3,a2,+00000002
	c.li	a3,00000001
	sh	a1,a2,+00000000
	sh	a5,s0,+00000000
	sb	a3,s0,+00000004
	lhu	a3,a2,+00000000
	beq	a3,t1,000000002303DDD8

l2303DDD2:
	c.add	a3,a7
	sh	a5,a3,+00000002

l2303DDD8:
	lhu	a5,a4,+000000B0
	c.addi	a5,00000008
	c.add	s1,a5
	c.slli	s1,10
	lhu	a5,a4,+000000B2
	c.srli	s1,00000010
	sh	s1,a4,+000000B0
	bgeu	a5,s1,000000002303DDF4

l2303DDF0:
	sh	s1,a4,+000000B2

l2303DDF4:
	bne	a6,s0,000000002303DE0E

l2303DDF8:
	lui	a5,0004200E
	lw	a5,a5,+000002D8

l2303DE00:
	lbu	a4,a6,+00000004
	c.beqz	a4,000000002303DE0A

l2303DE06:
	bne	a5,a6,000000002303DE3E

l2303DE0A:
	sw	a6,t3,+00000000

l2303DE0E:
	addi	a0,a0,+000002D0
	jal	ra,0000000023042E30
	c.addi	s0,00000008
	c.j	000000002303DD10

l2303DE1A:
	c.li	a2,00000001
	sb	a2,s0,+00000004
	lhu	a2,a4,+000000B0
	c.add	a5,a2
	c.sub	a5,a3
	c.slli	a5,10
	lhu	a3,a4,+000000B2
	c.srli	a5,00000010
	sh	a5,a4,+000000B0
	bgeu	a3,a5,000000002303DDF4

l2303DE38:
	sh	a5,a4,+000000B2
	c.j	000000002303DDF4

l2303DE3E:
	lhu	a6,a6,+00000000
	c.add	a6,a7
	c.j	000000002303DE00

l2303DE46:
	c.mv	a3,a5
	c.j	000000002303DD58

;; do_memp_malloc_pool: 2303DE4A
;;   Called from:
;;     2303DF3C (in memp_malloc)
do_memp_malloc_pool proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,0000000023042E7E
	c.lw	s0,12(a5)
	c.lw	a5,0(s1)
	c.beqz	s1,000000002303DE94

l2303DE5E:
	c.lw	s1,0(a4)
	c.mv	a3,a0
	c.sw	a5,0(a4)
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,00000001
	sh	a5,a4,+00000004
	c.lw	s0,0(a5)
	lhu	a4,a5,+00000004
	lhu	a2,a5,+00000006
	bgeu	a2,a4,000000002303DE82

l2303DE7E:
	sh	a4,a5,+00000006

l2303DE82:
	c.mv	a0,a3

l2303DE84:
	jal	ra,0000000023042E8E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303DE94:
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000000
	c.addi	a5,00000001
	sh	a5,a4,+00000000
	c.j	000000002303DE84

;; memp_init_pool: 2303DEA2
;;   Called from:
;;     2303DF06 (in memp_init)
memp_init_pool proc
	c.lw	a0,12(a5)
	c.li	a4,00000000
	sw	zero,a5,+00000000
	c.lw	a0,8(a5)
	c.addi	a5,00000003
	c.andi	a5,FFFFFFFC

l2303DEB0:
	lhu	a3,a0,+00000006
	blt	a4,a3,000000002303DEC0

l2303DEB8:
	c.lw	a0,0(a5)
	sh	a3,a5,+00000002
	c.jr	ra

l2303DEC0:
	c.lw	a0,12(a3)
	c.addi	a4,00000001
	c.lw	a3,0(a3)
	c.sw	a5,0(a3)
	c.lw	a0,12(a3)
	c.sw	a3,0(a5)
	lhu	a3,a0,+00000004
	c.add	a5,a3
	c.j	000000002303DEB0

;; memp_init: 2303DED4
;;   Called from:
;;     2303AE9E (in lwip_init)
memp_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s0,0004201A
	lui	s2,0002307B
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	addi	s0,s0,+00000668
	c.li	s1,00000000
	addi	s2,s2,-000003D4
	addi	s4,zero,+0000003C

l2303DEF8:
	add	a5,s2,s1
	lw	s3,a5,+00000000
	c.addi	s1,00000004
	c.addi	s0,00000004
	c.mv	a0,s3
	jal	ra,000000002303DEA2
	lw	a5,s3,+00000000
	sw	a5,s0,+000000B4
	bne	s1,s4,000000002303DEF8

l2303DF16:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; memp_malloc: 2303DF26
;;   Called from:
;;     2303A5E0 (in tcpip_inpkt)
;;     2303A670 (in tcpip_try_callback)
;;     2303CE8C (in igmp_lookup_group)
;;     2303E46A (in pbuf_alloc_reference)
;;     2303E678 (in pbuf_alloc)
;;     2303ED04 (in tcp_seg_copy)
;;     2303F02A (in tcp_alloc)
;;     2303F05C (in tcp_alloc)
;;     2303F06C (in tcp_alloc)
;;     2303F07C (in tcp_alloc)
;;     2303F096 (in tcp_alloc)
;;     23041232 (in tcp_create_segment)
;;     230421D0 (in sys_timeout_abs)
;;     23042A10 (in udp_new)
memp_malloc proc
	c.li	a5,0000000E
	bltu	a5,a0,000000002303DF40

l2303DF2C:
	slli	a5,a0,00000002
	lui	a0,0002307B
	addi	a0,a0,-000003D4
	c.add	a0,a5
	c.lw	a0,0(a0)
	jal	zero,000000002303DE4A

l2303DF40:
	c.li	a0,00000000
	c.jr	ra

;; memp_free: 2303DF44
;;   Called from:
;;     2303A630 (in tcpip_inpkt)
;;     2303A696 (in tcpip_try_callback)
;;     2303CE36 (in igmp_stop)
;;     2303E5A8 (in pbuf_free)
;;     2303EC16 (in tcp_free)
;;     2303ECD4 (in tcp_seg_free)
;;     2303F2FC (in tcp_close_shutdown)
;;     23042368 (in sys_check_timeouts)
;;     230429F0 (in udp_remove)
memp_free proc
	c.li	a5,0000000E
	bltu	a5,a0,000000002303DF8A

l2303DF4A:
	c.beqz	a1,000000002303DF8A

l2303DF4C:
	lui	a5,0002307B
	addi	a5,a5,-000003D4
	c.slli	a0,02
	c.addi	sp,FFFFFFF0
	c.add	a0,a5
	c.swsp	s1,00000080
	c.lw	a0,0(s1)
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023042E7E
	c.lw	s1,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000004
	c.lw	s1,12(a5)
	c.lw	a5,0(a5)
	c.sw	s0,0(a5)
	c.lw	s1,12(a5)
	c.sw	a5,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023042E8E

l2303DF8A:
	c.jr	ra

;; netif_null_output_ip4: 2303DF8C
netif_null_output_ip4 proc
	c.li	a0,FFFFFFF4
	c.jr	ra

;; netif_issue_reports: 2303DF90
;;   Called from:
;;     2303E018 (in netif_do_set_ipaddr)
;;     2303E248 (in netif_set_up)
;;     2303E348 (in netif_set_link_up)
netif_issue_reports proc
	lbu	a4,a0,+00000041
	c.li	a3,00000005
	andi	a2,a4,+00000005
	bne	a2,a3,000000002303DFD8

l2303DF9E:
	c.andi	a1,00000001
	c.beqz	a1,000000002303DFD8

l2303DFA2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a3)
	c.mv	s0,a0
	c.beqz	a3,000000002303DFD0

l2303DFAE:
	c.andi	a4,00000008
	c.beqz	a4,000000002303DFBA

l2303DFB2:
	addi	a1,a0,+00000004
	jal	ra,000000002303C8C2

l2303DFBA:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002303DFD0

l2303DFC4:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303CE3E

l2303DFD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303DFD8:
	c.jr	ra

;; netif_do_set_ipaddr: 2303DFDA
;;   Called from:
;;     2303E04A (in netif_set_ipaddr)
;;     2303E0C6 (in netif_set_addr)
;;     2303E0EC (in netif_set_addr)
netif_do_set_ipaddr proc
	c.lw	a0,4(a5)
	c.lw	a1,0(a4)
	beq	a4,a5,000000002303E032

l2303DFE2:
	c.addi	sp,FFFFFFE0
	c.sw	a2,0(a5)
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a0,a2
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	c.swsp	a4,00000084
	c.swsp	s1,00000088
	c.mv	s1,a2
	jal	ra,000000002303EF86
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023042A3A
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303EB5A
	lw	a5,s2,+00000000
	c.li	a1,00000001
	c.mv	a0,s0
	c.sw	s0,4(a5)
	jal	ra,000000002303DF90
	c.lw	s0,28(a5)
	c.beqz	a5,000000002303E024

l2303E020:
	c.mv	a0,s0
	c.jalr	a5

l2303E024:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l2303E032:
	c.li	a0,00000000
	c.jr	ra

;; netif_init: 2303E036
;;   Called from:
;;     2303AEA2 (in lwip_init)
netif_init proc
	c.jr	ra

;; netif_set_ipaddr: 2303E038
;;   Called from:
;;     2306852A (in set_if)
netif_set_ipaddr proc
	c.beqz	a0,000000002303E054

l2303E03A:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a1,000000002303E048

l2303E040:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l2303E048:
	c.addi4spn	a2,0000000C
	jal	ra,000000002303DFDA
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303E054:
	c.jr	ra

;; netif_set_netmask: 2303E056
;;   Called from:
;;     23068554 (in set_if)
netif_set_netmask proc
	c.beqz	a0,000000002303E06C

l2303E058:
	c.bnez	a1,000000002303E062

l2303E05A:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l2303E062:
	c.lw	a1,0(a5)
	c.lw	a0,8(a4)
	beq	a5,a4,000000002303E06C

l2303E06A:
	c.sw	a0,8(a5)

l2303E06C:
	c.jr	ra

;; netif_set_gw: 2303E06E
;;   Called from:
;;     23068540 (in set_if)
netif_set_gw proc
	c.beqz	a0,000000002303E084

l2303E070:
	c.bnez	a1,000000002303E07A

l2303E072:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l2303E07A:
	c.lw	a1,0(a5)
	c.lw	a0,12(a4)
	beq	a5,a4,000000002303E084

l2303E082:
	c.sw	a0,12(a5)

l2303E084:
	c.jr	ra

;; netif_set_addr: 2303E086
;;   Called from:
;;     2303A444 (in netifapi_do_netif_set_addr)
;;     2303B31C (in dhcp_bind)
;;     2303BD1A (in dhcp_recv)
;;     2303C120 (in dhcp_release_and_stop)
;;     2303E1A0 (in netif_add)
netif_set_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s2,a2
	c.mv	s0,a1
	c.bnez	a1,000000002303E0A0

l2303E098:
	lui	s0,00023082
	addi	s0,s0,+000007AC

l2303E0A0:
	bne	s2,zero,000000002303E0AC

l2303E0A4:
	lui	s2,00023082
	addi	s2,s2,+000007AC

l2303E0AC:
	c.bnez	a3,000000002303E0B6

l2303E0AE:
	lui	a3,00023082
	addi	a3,a3,+000007AC

l2303E0B6:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002303E0BE

l2303E0BA:
	c.li	a5,00000000
	c.j	000000002303E0CE

l2303E0BE:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,000000002303DFDA
	c.lwsp	a2,000000A4
	c.li	a5,00000001

l2303E0CE:
	lw	a4,s2,+00000000
	c.lw	s1,8(a2)
	beq	a4,a2,000000002303E0DA

l2303E0D8:
	c.sw	s1,8(a4)

l2303E0DA:
	c.lw	a3,0(a4)
	c.lw	s1,12(a3)
	beq	a4,a3,000000002303E0E4

l2303E0E2:
	c.sw	s1,12(a4)

l2303E0E4:
	c.bnez	a5,000000002303E0F0

l2303E0E6:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303DFDA

l2303E0F0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; netif_add: 2303E0FC
;;   Called from:
;;     2303A426 (in netifapi_do_netif_add)
netif_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.bnez	a0,000000002303E11C

l2303E10A:
	c.li	s0,00000000

l2303E10C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303E11C:
	c.beqz	a5,000000002303E10A

l2303E11E:
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.bnez	a1,000000002303E12E

l2303E126:
	lui	s1,00023082
	addi	s1,s1,+000007AC

l2303E12E:
	bne	s2,zero,000000002303E13A

l2303E132:
	lui	s2,00023082
	addi	s2,s2,+000007AC

l2303E13A:
	c.bnez	a3,000000002303E144

l2303E13C:
	lui	a3,00023082
	addi	a3,a3,+000007AC

l2303E144:
	lui	a2,0002303E
	addi	a2,a2,-00000074
	c.sw	s0,20(a2)
	c.li	a1,00000000
	c.li	a2,0000000C
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	sh	zero,s0,+00000038
	sb	zero,s0,+00000041
	addi	a0,s0,+00000028
	c.swsp	a5,00000004
	c.swsp	a6,00000084
	c.swsp	a4,00000080
	c.swsp	a3,00000000
	jal	ra,000000002306D1BC
	c.lwsp	tp,000000C4
	lui	s3,0004200E
	c.lwsp	a2,00000008
	c.sw	s0,36(a4)
	lbu	a4,s3,+00000318
	c.lwsp	zero,000000A4
	sw	a6,s0,+00000010
	sb	a4,s0,+00000044
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000048
	jal	ra,000000002303E086
	c.lwsp	s0,000000E4
	c.mv	a0,s0
	addi	s3,s3,+00000318
	c.jalr	a5
	c.bnez	a0,000000002303E10A

l2303E1B0:
	lui	a5,0004201A
	lw	a2,a5,+00000660
	c.mv	a4,a5
	addi	a1,zero,+000000FF

l2303E1BE:
	lbu	a5,s0,+00000044
	bne	a5,a1,000000002303E1CA

l2303E1C6:
	sb	zero,s0,+00000044

l2303E1CA:
	lbu	a5,s0,+00000044
	c.mv	a3,a2

l2303E1D0:
	c.bnez	a3,000000002303E1FE

l2303E1D2:
	addi	a1,zero,+000000FE
	c.li	a3,00000000
	beq	a5,a1,000000002303E1E2

l2303E1DC:
	c.addi	a5,00000001
	andi	a3,a5,+000000FF

l2303E1E2:
	lbu	a5,s0,+00000041
	c.sw	s0,0(a2)
	sb	a3,s3,+00000000
	sw	s0,a4,+00000660
	andi	a5,a5,+00000020
	c.beqz	a5,000000002303E10C

l2303E1F6:
	c.mv	a0,s0
	jal	ra,000000002303CEC2
	c.j	000000002303E10C

l2303E1FE:
	lbu	a0,a3,+00000044
	bne	a0,a5,000000002303E20E

l2303E206:
	c.addi	a5,00000001
	sb	a5,s0,+00000044
	c.j	000000002303E1BE

l2303E20E:
	c.lw	a3,0(a3)
	c.j	000000002303E1D0

;; netif_set_default: 2303E212
;;   Called from:
;;     230071BA (in wifi_mgmr_sta_enable)
;;     2300750C (in wifi_mgmr_ap_enable)
netif_set_default proc
	lui	a5,0004201A
	sw	a0,a5,+0000065C
	c.jr	ra

;; netif_set_up: 2303E21C
;;   Called from:
;;     230071C2 (in wifi_mgmr_sta_enable)
;;     23007514 (in wifi_mgmr_ap_enable)
;;     23043A9C (in dhcpd_start)
netif_set_up proc
	c.beqz	a0,000000002303E254

l2303E21E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.bnez	a4,000000002303E24C

l2303E230:
	ori	a5,a5,+00000001
	sb	a5,a0,+00000041
	c.lw	a0,28(a5)
	c.beqz	a5,000000002303E23E

l2303E23C:
	c.jalr	a5

l2303E23E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,000000002303DF90

l2303E24C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303E254:
	c.jr	ra

;; netif_set_down: 2303E256
;;   Called from:
;;     2303E2DC (in netif_remove)
netif_set_down proc
	c.beqz	a0,000000002303E294

l2303E258:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.beqz	a4,000000002303E28C

l2303E26A:
	andi	a4,a5,-00000002
	sb	a4,a0,+00000041
	c.andi	a5,00000008
	c.beqz	a5,000000002303E27A

l2303E276:
	jal	ra,000000002303C6E6

l2303E27A:
	lw	t1,s0,+0000001C
	beq	t1,zero,000000002303E28C

l2303E282:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l2303E28C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303E294:
	c.jr	ra

;; netif_remove: 2303E296
netif_remove proc
	c.beqz	a0,000000002303E31C

l2303E298:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002303E2C2

l2303E2A6:
	addi	s1,a0,+00000004
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303EF86
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023042A3A
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303EB5A

l2303E2C2:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002303E2D2

l2303E2CC:
	c.mv	a0,s0
	jal	ra,000000002303CDFE

l2303E2D2:
	lbu	a5,s0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,000000002303E2E0

l2303E2DA:
	c.mv	a0,s0
	jal	ra,000000002303E256

l2303E2E0:
	lui	a5,0004201A
	lw	a4,a5,+0000065C
	bne	a4,s0,000000002303E2F0

l2303E2EC:
	sw	zero,a5,+0000065C

l2303E2F0:
	lui	a4,0004201A
	lw	a5,a4,+00000660
	bne	a5,s0,000000002303E30E

l2303E2FC:
	c.lw	s0,0(a5)
	sw	a5,a4,+00000660

l2303E302:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303E30C:
	c.mv	a5,a4

l2303E30E:
	c.beqz	a5,000000002303E302

l2303E310:
	c.lw	a5,0(a4)
	bne	a4,s0,000000002303E30C

l2303E316:
	c.lw	s0,0(a4)
	c.sw	a5,0(a4)
	c.j	000000002303E302

l2303E31C:
	c.jr	ra

;; netif_set_status_callback: 2303E31E
;;   Called from:
;;     2300A6E6 (in bl606a0_wifi_netif_init)
netif_set_status_callback proc
	c.beqz	a0,000000002303E322

l2303E320:
	c.sw	a0,28(a1)

l2303E322:
	c.jr	ra

;; netif_set_link_up: 2303E324
netif_set_link_up proc
	c.beqz	a0,000000002303E366

l2303E326:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000004
	c.bnez	a4,000000002303E35E

l2303E338:
	ori	a5,a5,+00000004
	sb	a5,a0,+00000041
	jal	ra,000000002303BDCA
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002303DF90
	lw	t1,s0,+00000020
	beq	t1,zero,000000002303E35E

l2303E354:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l2303E35E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303E366:
	c.jr	ra

;; netif_set_link_down: 2303E368
netif_set_link_down proc
	c.beqz	a0,000000002303E384

l2303E36A:
	lbu	a4,a0,+00000041
	andi	a3,a4,+00000004
	c.beqz	a3,000000002303E384

l2303E374:
	lw	t1,a0,+00000020
	c.andi	a4,FFFFFFFB
	sb	a4,a0,+00000041
	beq	t1,zero,000000002303E384

l2303E382:
	c.jr	t1

l2303E384:
	c.jr	ra

;; netif_get_by_index: 2303E386
;;   Called from:
;;     23041446 (in tcp_output_control_segment)
;;     23041B52 (in tcp_output)
;;     230428BC (in udp_sendto_chksum)
;;     23042904 (in udp_sendto_chksum)
netif_get_by_index proc
	c.li	a5,00000000
	c.beqz	a0,000000002303E394

l2303E38A:
	lui	a5,0004201A
	lw	a5,a5,+00000660

l2303E392:
	c.bnez	a5,000000002303E398

l2303E394:
	c.mv	a0,a5
	c.jr	ra

l2303E398:
	lbu	a4,a5,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	beq	a4,a0,000000002303E394

l2303E3A6:
	c.lw	a5,0(a5)
	c.j	000000002303E392

;; pbuf_skip_const: 2303E3AA
;;   Called from:
;;     2303E9A2 (in pbuf_take_at)
;;     2303EA36 (in pbuf_try_get_at)
;;     2303EA68 (in pbuf_put_at)
pbuf_skip_const proc
	c.beqz	a0,000000002303E3B4

l2303E3AC:
	lhu	a5,a0,+0000000A
	bgeu	a1,a5,000000002303E3BC

l2303E3B4:
	c.beqz	a2,000000002303E3BA

l2303E3B6:
	sh	a1,a2,+00000000

l2303E3BA:
	c.jr	ra

l2303E3BC:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	000000002303E3AA

;; pbuf_free_ooseq_callback: 2303E3C6
pbuf_free_ooseq_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023042E7E
	lui	a5,0004201A
	sb	zero,a5,+00000664
	jal	ra,0000000023042E8E
	lui	a5,0004201A
	lw	a0,a5,+0000077C

l2303E3E2:
	c.bnez	a0,000000002303E3EA

l2303E3E4:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303E3EA:
	c.lw	a0,116(a5)
	c.beqz	a5,000000002303E3F6

l2303E3EE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303ED66

l2303E3F6:
	c.lw	a0,12(a0)
	c.j	000000002303E3E2

;; pbuf_add_header_impl: 2303E3FA
;;   Called from:
;;     2303E4D0 (in pbuf_add_header)
;;     2303E520 (in pbuf_header)
;;     2303E532 (in pbuf_header_force)
pbuf_add_header_impl proc
	c.mv	a5,a0
	c.beqz	a0,000000002303E458

l2303E3FE:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,000000002303E45A

l2303E406:
	c.li	a0,00000000
	c.beqz	a1,000000002303E45A

l2303E40A:
	lhu	a4,a5,+00000008
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a0,00000001
	bltu	a4,a3,000000002303E45A

l2303E420:
	lb	a0,a5,+0000000C
	bge	a0,zero,000000002303E43A

l2303E428:
	c.lw	a5,4(a2)
	c.li	a0,00000001
	sub	a1,a2,a1
	addi	a2,a5,+00000010
	bgeu	a1,a2,000000002303E444

l2303E438:
	c.jr	ra

l2303E43A:
	c.li	a0,00000001
	c.beqz	a2,000000002303E45A

l2303E43E:
	c.lw	a5,4(a2)
	sub	a1,a2,a1

l2303E444:
	lhu	a2,a5,+0000000A
	c.sw	a5,4(a1)
	sh	a4,a5,+00000008
	c.add	a3,a2
	sh	a3,a5,+0000000A
	c.li	a0,00000000
	c.jr	ra

l2303E458:
	c.li	a0,00000001

l2303E45A:
	c.jr	ra

;; pbuf_alloc_reference: 2303E45C
;;   Called from:
;;     2303E662 (in pbuf_alloc)
pbuf_alloc_reference proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000D
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303DF26
	c.beqz	a0,000000002303E490

l2303E470:
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	c.li	a5,00000001
	sw	zero,a0,+00000000
	c.sw	a0,4(s0)
	sh	a1,a0,+00000008
	sh	a1,a0,+0000000A
	sb	a2,a0,+0000000C
	sb	zero,a0,+0000000D
	sh	a5,a0,+0000000E

l2303E490:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_alloced_custom: 2303E498
;;   Called from:
;;     2300A16C (in tcpip_stack_input)
;;     2300A2D2 (in tcpip_stack_input)
pbuf_alloced_custom proc
	c.addi	a0,00000003
	c.andi	a0,FFFFFFFC
	add	a6,a1,a0
	bltu	a5,a6,000000002303E4CA

l2303E4A4:
	c.beqz	a4,000000002303E4A8

l2303E4A6:
	c.add	a4,a0

l2303E4A8:
	c.li	a5,00000002
	sb	a5,a3,+0000000D
	c.li	a5,00000001
	c.mv	a0,a3
	sw	zero,a3,+00000000
	c.sw	a3,4(a4)
	sh	a1,a3,+00000008
	sh	a1,a3,+0000000A
	sb	a2,a3,+0000000C
	sh	a5,a3,+0000000E
	c.jr	ra

l2303E4CA:
	c.li	a0,00000000
	c.jr	ra

;; pbuf_add_header: 2303E4CE
;;   Called from:
;;     2303D542 (in ip4_output_if_opt_src)
;;     2303D5A2 (in ip4_output_if_opt_src)
;;     2304127A (in tcp_create_segment)
;;     23042732 (in udp_sendto_if_src_chksum)
;;     23042B8C (in ethernet_output)
;;     2304326E (in icmp_input)
;;     230432EA (in icmp_input)
pbuf_add_header proc
	c.li	a2,00000000
	jal	zero,000000002303E3FA

;; pbuf_remove_header: 2303E4D4
;;   Called from:
;;     2303D414 (in ip4_input)
;;     2303E51A (in pbuf_header)
;;     2303E52C (in pbuf_header_force)
;;     2303FD76 (in tcp_receive)
;;     23040696 (in tcp_input)
;;     23040802 (in tcp_input)
;;     23040816 (in tcp_input)
;;     23040836 (in tcp_input)
;;     23042584 (in udp_input)
;;     23042AF4 (in ethernet_input)
;;     23042B44 (in ethernet_input)
;;     230432C6 (in icmp_input)
;;     230433B8 (in icmp_input)
pbuf_remove_header proc
	c.mv	a5,a0
	c.beqz	a0,000000002303E50E

l2303E4D8:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,000000002303E510

l2303E4E0:
	c.li	a0,00000000
	c.beqz	a1,000000002303E510

l2303E4E4:
	lhu	a4,a5,+0000000A
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.li	a0,00000001
	bltu	a4,a3,000000002303E510

l2303E4F4:
	c.sub	a4,a3
	c.lw	a5,4(a2)
	sh	a4,a5,+0000000A
	lhu	a4,a5,+00000008
	c.add	a1,a2
	c.sw	a5,4(a1)
	c.sub	a4,a3
	sh	a4,a5,+00000008
	c.li	a0,00000000
	c.jr	ra

l2303E50E:
	c.li	a0,00000001

l2303E510:
	c.jr	ra

;; pbuf_header: 2303E512
;;   Called from:
;;     23009DAA (in bl_output)
pbuf_header proc
	bge	a1,zero,000000002303E51E

l2303E516:
	sub	a1,zero,a1
	jal	zero,000000002303E4D4

l2303E51E:
	c.li	a2,00000000
	jal	zero,000000002303E3FA

;; pbuf_header_force: 2303E524
;;   Called from:
;;     2303D44A (in ip4_input)
;;     230425DE (in udp_input)
pbuf_header_force proc
	bge	a1,zero,000000002303E530

l2303E528:
	sub	a1,zero,a1
	jal	zero,000000002303E4D4

l2303E530:
	c.li	a2,00000001
	jal	zero,000000002303E3FA

;; pbuf_free: 2303E536
;;   Called from:
;;     23009D22 (in bl_txdatacfm)
;;     23030590 (in get_dns_request)
;;     230306EA (in get_dns_request)
;;     2303A8C8 (in dns_send)
;;     2303A95A (in dns_send)
;;     2303ACA8 (in dns_recv)
;;     2303AD54 (in dns_recv)
;;     2303ADA2 (in dns_recv)
;;     2303B1A6 (in dhcp_discover)
;;     2303B5A2 (in dhcp_reboot)
;;     2303B772 (in dhcp_select)
;;     2303B9E4 (in dhcp_recv)
;;     2303BEAE (in dhcp_arp_reply)
;;     2303BFC6 (in dhcp_renew)
;;     2303C10A (in dhcp_release_and_stop)
;;     2303C35A (in dhcp_coarse_tmr)
;;     2303C4DA (in etharp_free_entry)
;;     2303C6DE (in etharp_raw)
;;     2303C79E (in etharp_input)
;;     2303C864 (in etharp_input)
;;     2303CB18 (in etharp_query)
;;     2303CD4C (in igmp_send)
;;     2303CF38 (in igmp_input)
;;     2303CF68 (in igmp_input)
;;     2303CF84 (in igmp_input)
;;     2303D004 (in igmp_input)
;;     2303D1F0 (in ip4_input)
;;     2303D270 (in ip4_input)
;;     2303D296 (in ip4_input)
;;     2303D34E (in ip4_input)
;;     2303D36C (in ip4_input)
;;     2303D3E2 (in ip4_input)
;;     2303D46C (in ip4_input)
;;     2303E6C0 (in pbuf_alloc)
;;     2303E768 (in pbuf_realloc)
;;     2303ECC8 (in tcp_seg_free)
;;     2303EDA4 (in tcp_pcb_purge)
;;     2303F362 (in tcp_recv_null)
;;     2304094A (in tcp_input)
;;     23040A52 (in tcp_input)
;;     230410C2 (in tcp_input)
;;     2304123E (in tcp_create_segment)
;;     2304149C (in tcp_output_control_segment)
;;     2304173C (in tcp_split_unsent_seg)
;;     23042428 (in udp_input)
;;     2304282C (in udp_sendto_if_src_chksum)
;;     23042B18 (in ethernet_input)
;;     23043236 (in icmp_input)
;;     230432A2 (in icmp_input)
;;     230432A8 (in icmp_input)
;;     230432DC (in icmp_input)
;;     230433B0 (in icmp_input)
;;     230433DC (in icmp_input)
;;     230434AC (in icmp_dest_unreach)
;;     2304353A (in dhcp_server_recv)
;;     23043584 (in dhcp_server_recv)
pbuf_free proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,00000000
	c.beqz	a0,000000002303E586

l2303E546:
	c.mv	a1,a0
	c.li	s0,00000000
	c.li	s2,00000002
	c.li	s3,00000001

l2303E54E:
	c.swsp	a1,00000084
	jal	ra,0000000023042E7E
	c.lwsp	a2,00000064
	lbu	s1,a1,+0000000E
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	sb	s1,a1,+0000000E
	jal	ra,0000000023042E8E
	c.bnez	s1,000000002303E586

l2303E56A:
	c.lwsp	a2,00000064
	lbu	a5,a1,+0000000D
	c.lw	a1,0(s1)
	c.andi	a5,00000002
	c.beqz	a5,000000002303E596

l2303E576:
	c.lw	a1,16(a5)
	c.mv	a0,a1
	c.jalr	a5

l2303E57C:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.mv	a1,s1
	c.bnez	s1,000000002303E54E

l2303E586:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303E596:
	lbu	a5,a1,+0000000C
	c.li	a0,0000000E
	c.andi	a5,0000000F
	beq	a5,s2,000000002303E5A8

l2303E5A2:
	bne	a5,s3,000000002303E5AE

l2303E5A6:
	c.li	a0,0000000D

l2303E5A8:
	jal	ra,000000002303DF44
	c.j	000000002303E57C

l2303E5AE:
	c.bnez	a5,000000002303E57C

l2303E5B0:
	c.mv	a0,a1
	jal	ra,000000002303D9F8
	c.j	000000002303E57C

;; pbuf_alloc: 2303E5B8
;;   Called from:
;;     230305A0 (in get_dns_request)
;;     2303A85E (in dns_send)
;;     2303AF7E (in dhcp_create_msg)
;;     2303C62A (in etharp_raw)
;;     2303CCB6 (in igmp_send)
;;     2303EA14 (in pbuf_clone)
;;     23041348 (in tcp_output_alloc_header_common.constprop.6)
;;     2304153E (in tcp_split_unsent_seg)
;;     23041768 (in tcp_enqueue_flags)
;;     23042744 (in udp_sendto_if_src_chksum)
;;     2304328E (in icmp_input)
;;     2304340A (in icmp_dest_unreach)
;;     23043568 (in dhcp_server_recv)
pbuf_alloc proc
	addi	a5,zero,+00000041
	beq	a2,a5,000000002303E712

l2303E5C0:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	bltu	a5,a2,000000002303E5EC

l2303E5D2:
	c.li	a5,00000001
	beq	a2,a5,000000002303E652

l2303E5D8:
	c.li	s1,00000000

l2303E5DA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303E5EC:
	slli	s0,a0,00000010
	addi	a5,zero,+00000182
	c.srli	s0,00000010
	beq	a2,a5,000000002303E666

l2303E5FA:
	addi	a5,zero,+00000280
	bne	a2,a5,000000002303E5D8

l2303E602:
	c.addi	s0,00000003
	addi	a5,a1,+00000003
	c.andi	s0,FFFFFFFC
	c.andi	a5,FFFFFFFC
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	s2,a0
	addi	a0,s0,+00000010
	c.slli	a0,10
	c.swsp	a1,00000084
	c.srli	a0,00000010
	bltu	s0,a5,000000002303E5D8

l2303E622:
	bltu	a0,a5,000000002303E5D8

l2303E626:
	jal	ra,000000002303DCEE
	c.mv	s1,a0
	c.beqz	a0,000000002303E5DA

l2303E62E:
	c.lwsp	a2,00000064
	c.add	s2,a0
	c.addi	s2,00000013
	c.lui	a5,00010000
	andi	s2,s2,-00000004
	addi	a5,a5,+00000080
	sw	zero,a0,+00000000
	sw	s2,a0,+00000004
	sh	a1,a0,+00000008
	sh	a1,a0,+0000000A
	c.sw	a0,12(a5)
	c.j	000000002303E5DA

l2303E652:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030

l2303E662:
	jal	zero,000000002303E45C

l2303E666:
	c.lui	s2,00010000
	c.li	s3,00000000
	c.li	s1,00000000
	addi	s4,zero,+000002F8
	addi	s2,s2,+00000082

l2303E674:
	c.li	a0,0000000E
	c.swsp	a1,00000084
	jal	ra,000000002303DF26
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303E6C6

l2303E680:
	lui	s0,0004201A
	jal	ra,0000000023042E7E
	lbu	s2,s0,+00000664
	c.li	a5,00000001
	sb	a5,s0,+00000664
	andi	s2,s2,+000000FF
	jal	ra,0000000023042E8E
	bne	s2,zero,000000002303E6BA

l2303E69E:
	lui	a0,0002303E
	c.li	a1,00000000
	addi	a0,a0,+000003C6
	jal	ra,000000002303A654
	c.beqz	a0,000000002303E6BA

l2303E6AE:
	jal	ra,0000000023042E7E
	sb	zero,s0,+00000664
	jal	ra,0000000023042E8E

l2303E6BA:
	beq	s1,zero,000000002303E5D8

l2303E6BE:
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.j	000000002303E5D8

l2303E6C6:
	addi	a5,s0,+00000003
	c.andi	a5,FFFFFFFC
	sub	a5,s4,a5
	c.mv	a4,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a1,a5,000000002303E6DC

l2303E6DA:
	c.mv	a4,a1

l2303E6DC:
	c.add	s0,a0
	c.addi	s0,00000013
	c.andi	s0,FFFFFFFC
	slli	a5,a4,00000010
	sw	zero,a0,+00000000
	c.sw	a0,4(s0)
	sh	a1,a0,+00000008
	sh	a4,a0,+0000000A
	sw	s2,a0,+0000000C
	c.srli	a5,00000010
	c.beqz	s1,000000002303E70E

l2303E6FC:
	sw	a0,s3,+00000000

l2303E700:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	s0,00000000
	c.mv	s3,a0
	c.bnez	a1,000000002303E674

l2303E70C:
	c.j	000000002303E5DA

l2303E70E:
	c.mv	s1,a0
	c.j	000000002303E700

l2303E712:
	c.li	a0,00000000
	c.j	000000002303E662

;; pbuf_realloc: 2303E716
;;   Called from:
;;     230306D2 (in get_dns_request)
;;     2303B0AC (in dhcp_option_trailer)
;;     2303D254 (in ip4_input)
;;     2303F96A (in tcp_oos_insert_segment)
;;     2303FE7A (in tcp_receive)
;;     2303FF30 (in tcp_receive)
;;     23040414 (in tcp_receive)
;;     23040492 (in tcp_receive)
;;     23040522 (in tcp_receive)
;;     2304163A (in tcp_split_unsent_seg)
;;     23043798 (in dhcp_server_recv)
pbuf_realloc proc
	lhu	a5,a0,+00000008
	bgeu	a1,a5,000000002303E78E

l2303E71E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	sub	a5,a1,a5

l2303E72E:
	lhu	a1,s0,+0000000A
	bltu	a1,s1,000000002303E77A

l2303E736:
	lbu	a5,s0,+0000000C
	c.andi	a5,0000000F
	c.bnez	a5,000000002303E75C

l2303E73E:
	beq	a1,s1,000000002303E75C

l2303E742:
	lbu	a5,s0,+0000000D
	c.andi	a5,00000002
	c.bnez	a5,000000002303E75C

l2303E74A:
	c.lw	s0,4(a1)
	c.mv	a0,s0
	c.sub	a1,s0
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,000000002303DB64
	c.mv	s0,a0

l2303E75C:
	c.lw	s0,0(a0)
	sh	s1,s0,+0000000A
	sh	s1,s0,+00000008
	c.beqz	a0,000000002303E76C

l2303E768:
	jal	ra,000000002303E536

l2303E76C:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303E77A:
	lhu	a4,s0,+00000008
	c.sub	s1,a1
	c.slli	s1,10
	c.add	a4,a5
	sh	a4,s0,+00000008
	c.srli	s1,00000010
	c.lw	s0,0(s0)
	c.j	000000002303E72E

l2303E78E:
	c.jr	ra

;; pbuf_clen: 2303E790
;;   Called from:
;;     2303FB62 (in tcp_free_acked_segments.isra.3)
;;     2304161E (in tcp_split_unsent_seg)
;;     23041672 (in tcp_split_unsent_seg)
;;     230416FE (in tcp_split_unsent_seg)
;;     230417D0 (in tcp_enqueue_flags)
pbuf_clen proc
	c.li	a5,00000000

l2303E792:
	c.bnez	a0,000000002303E798

l2303E794:
	c.mv	a0,a5
	c.jr	ra

l2303E798:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.lw	a0,0(a0)
	c.j	000000002303E792

;; pbuf_ref: 2303E7A2
;;   Called from:
;;     23009E8E (in bl_output)
;;     2303CB08 (in etharp_query)
;;     2303E7FC (in pbuf_chain)
;;     2303ED16 (in tcp_seg_copy)
pbuf_ref proc
	c.beqz	a0,000000002303E7C4

l2303E7A4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023042E7E
	lbu	a5,s0,+0000000E
	c.addi	a5,00000001
	sb	a5,s0,+0000000E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023042E8E

l2303E7C4:
	c.jr	ra

;; pbuf_cat: 2303E7C6
;;   Called from:
;;     2300A2DA (in tcpip_stack_input)
;;     2303E7F0 (in pbuf_chain)
;;     23040250 (in tcp_receive)
pbuf_cat proc
	c.beqz	a0,000000002303E7E6

l2303E7C8:
	c.bnez	a1,000000002303E7CE

l2303E7CA:
	c.jr	ra

l2303E7CC:
	c.mv	a0,a4

l2303E7CE:
	lhu	a5,a0,+00000008
	lhu	a3,a1,+00000008
	c.lw	a0,0(a4)
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a0,+00000008
	c.bnez	a4,000000002303E7CC

l2303E7E4:
	c.sw	a0,0(a1)

l2303E7E6:
	c.jr	ra

;; pbuf_chain: 2303E7E8
;;   Called from:
;;     23042754 (in udp_sendto_if_src_chksum)
pbuf_chain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002303E7C6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303E7A2

;; pbuf_copy: 2303E800
;;   Called from:
;;     2303EA1E (in pbuf_clone)
;;     230432D4 (in icmp_input)
;;     2304357E (in dhcp_server_recv)
pbuf_copy proc
	c.beqz	a0,000000002303E8AA

l2303E802:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.beqz	a1,000000002303E86A

l2303E814:
	lhu	a4,a0,+00000008
	lhu	a5,a1,+00000008
	c.mv	s1,a0
	bltu	a4,a5,000000002303E86A

l2303E822:
	c.li	s4,00000000
	c.li	s3,00000000

l2303E826:
	lhu	s2,s1,+0000000A
	lhu	a5,s0,+0000000A
	sub	s2,s2,s3
	sub	a5,a5,s4
	bgeu	a5,s2,000000002303E83C

l2303E83A:
	c.mv	s2,a5

l2303E83C:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.add	a1,s4
	c.add	a0,s3
	jal	ra,000000002306CF80
	lhu	a4,s0,+0000000A
	c.add	s4,s2
	c.add	s3,s2
	lhu	a5,s1,+0000000A
	bltu	s4,a4,000000002303E85E

l2303E85A:
	c.lw	s0,0(s0)
	c.li	s4,00000000

l2303E85E:
	bne	s3,a5,000000002303E87E

l2303E862:
	c.lw	s1,0(s1)
	c.bnez	s1,000000002303E87C

l2303E866:
	c.li	a0,00000000
	c.beqz	s0,000000002303E86C

l2303E86A:
	c.li	a0,FFFFFFF0

l2303E86C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303E87C:
	c.li	s3,00000000

l2303E87E:
	c.beqz	s0,000000002303E890

l2303E880:
	lhu	a4,s0,+0000000A
	lhu	a5,s0,+00000008
	bne	a4,a5,000000002303E890

l2303E88C:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002303E8A6

l2303E890:
	lhu	a4,s1,+0000000A
	lhu	a5,s1,+00000008
	bne	a4,a5,000000002303E8A0

l2303E89C:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002303E8A6

l2303E8A0:
	c.bnez	s0,000000002303E826

l2303E8A2:
	c.li	a0,00000000
	c.j	000000002303E86C

l2303E8A6:
	c.li	a0,FFFFFFFA
	c.j	000000002303E86C

l2303E8AA:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_copy_partial: 2303E8AE
;;   Called from:
;;     23030524 (in get_dns_request)
;;     2303055C (in get_dns_request)
;;     2303AA9E (in dns_recv)
;;     2303AB92 (in dns_recv)
;;     2303AC42 (in dns_recv)
;;     2303AC80 (in dns_recv)
;;     2303BB0A (in dhcp_recv)
;;     23041562 (in tcp_split_unsent_seg)
;;     230421A6 (in tcp_zero_window_probe)
pbuf_copy_partial proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	s0,00000000
	c.beqz	a0,000000002303E8D0

l2303E8C0:
	c.mv	s4,a1
	c.li	s0,00000000
	c.beqz	a1,000000002303E8D0

l2303E8C6:
	c.mv	s2,a0
	c.mv	s1,a2

l2303E8CA:
	c.beqz	s1,000000002303E8D0

l2303E8CC:
	bne	s2,zero,000000002303E8E2

l2303E8D0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303E8E2:
	lhu	a1,s2,+0000000A
	c.beqz	a3,000000002303E8F8

l2303E8E8:
	bltu	a3,a1,000000002303E8F8

l2303E8EC:
	c.sub	a3,a1
	c.slli	a3,10
	c.srli	a3,00000010

l2303E8F2:
	lw	s2,s2,+00000000
	c.j	000000002303E8CA

l2303E8F8:
	c.sub	a1,a3
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	s3,a1
	bgeu	s1,a1,000000002303E906

l2303E904:
	c.mv	s3,s1

l2303E906:
	lw	a1,s2,+00000004
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	a1,a3
	add	a0,s4,s0
	c.mv	a2,s3
	c.add	s0,s3
	sub	s1,s1,s3
	jal	ra,000000002306CF80
	c.slli	s0,10
	c.slli	s1,10
	c.srli	s0,00000010
	c.srli	s1,00000010
	c.li	a3,00000000
	c.j	000000002303E8F2

;; pbuf_take: 2303E92E
;;   Called from:
;;     23030602 (in get_dns_request)
;;     2303A89A (in dns_send)
;;     2303E9EE (in pbuf_take_at)
pbuf_take proc
	c.beqz	a0,000000002303E988

l2303E930:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.mv	s4,a1
	c.li	a0,FFFFFFF0
	c.beqz	a1,000000002303E954

l2303E946:
	lhu	a5,s1,+00000008
	c.mv	s0,a2
	c.li	a0,FFFFFFFF
	c.li	s3,00000000
	bgeu	a5,a2,000000002303E982

l2303E954:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303E964:
	lhu	s2,s1,+0000000A
	bgeu	s0,s2,000000002303E96E

l2303E96C:
	c.mv	s2,s0

l2303E96E:
	c.lw	s1,4(a0)
	add	a1,s4,s3
	c.mv	a2,s2
	jal	ra,000000002306CF80
	c.lw	s1,0(s1)
	sub	s0,s0,s2
	c.add	s3,s2

l2303E982:
	c.bnez	s0,000000002303E964

l2303E984:
	c.li	a0,00000000
	c.j	000000002303E954

l2303E988:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_take_at: 2303E98C
;;   Called from:
;;     2303063C (in get_dns_request)
;;     230306C4 (in get_dns_request)
;;     2303A8F2 (in dns_send)
;;     2303A92E (in dns_send)
pbuf_take_at proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a2
	c.mv	s3,a1
	addi	a2,sp,+0000000E
	c.mv	a1,a3
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	jal	ra,000000002303E3AA
	c.beqz	a0,000000002303EA00

l2303E9A8:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+00000008
	c.mv	s1,a0
	add	a5,a4,s0
	c.li	a0,FFFFFFFF
	blt	a3,a5,000000002303E9F2

l2303E9BC:
	lhu	a5,s1,+0000000A
	c.mv	s2,s0
	c.sub	a5,a4
	bge	a5,s0,000000002303E9D0

l2303E9C8:
	slli	s2,a5,00000010
	srli	s2,s2,00000010

l2303E9D0:
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.mv	a1,s3
	c.add	a0,a4
	jal	ra,000000002306CF80
	sub	a2,s0,s2
	c.slli	a2,10
	c.srli	a2,00000010
	c.li	a0,00000000
	c.beqz	a2,000000002303E9F2

l2303E9E8:
	c.lw	s1,0(a0)
	add	a1,s3,s2
	jal	ra,000000002303E92E

l2303E9F2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303EA00:
	c.li	a0,FFFFFFFF
	c.j	000000002303E9F2

;; pbuf_clone: 2303EA04
;;   Called from:
;;     2303CB38 (in etharp_query)
pbuf_clone proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a2
	c.mv	a2,a1
	lhu	a1,s1,+00000008
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002303E5B8
	c.mv	s0,a0
	c.beqz	a0,000000002303EA22

l2303EA1C:
	c.mv	a1,s1
	jal	ra,000000002303E800

l2303EA22:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; pbuf_try_get_at: 2303EA2E
;;   Called from:
;;     2303AB3C (in dns_recv)
;;     2303AB68 (in dns_recv)
;;     2303ABF4 (in dns_recv)
;;     2303AC1E (in dns_recv)
;;     2303ACFA (in dns_recv)
pbuf_try_get_at proc
	c.addi	sp,FFFFFFE0
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,000000002303E3AA
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002303EA54

l2303EA3E:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+0000000A
	c.li	a5,FFFFFFFF
	bgeu	a4,a3,000000002303EA54

l2303EA4C:
	c.lw	a0,4(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000

l2303EA54:
	c.lwsp	t3,00000020
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_put_at: 2303EA5C
;;   Called from:
;;     2303061E (in get_dns_request)
;;     2303065A (in get_dns_request)
;;     2303A8E0 (in dns_send)
;;     2303A912 (in dns_send)
pbuf_put_at proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a2
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,000000002303E3AA
	c.beqz	a0,000000002303EA82

l2303EA6E:
	lhu	a4,sp,+0000000E
	lhu	a5,a0,+0000000A
	bgeu	a4,a5,000000002303EA82

l2303EA7A:
	c.lw	a0,4(a5)
	c.add	a5,a4
	sb	s0,a5,+00000000

l2303EA82:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; raw_input: 2303EA8A
;;   Called from:
;;     2303D406 (in ip4_input)
raw_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004201A
	addi	a5,s1,+00000794
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s4,a0
	c.lw	a5,0(a1)
	c.lw	a5,20(a0)
	lui	s2,0004200E
	c.li	s3,00000000
	jal	ra,000000002303D750
	lw	a5,s4,+00000004
	c.mv	s6,a0
	lw	s0,s2,+0000031C
	lbu	s5,a5,+00000009
	c.li	a0,00000000
	addi	s1,s1,+00000794
	addi	s2,s2,+0000031C
	lui	s7,0004201A

l2303EAD2:
	c.beqz	s0,000000002303EB32

l2303EAD4:
	lbu	a5,s0,+00000010
	bne	a5,s5,000000002303EB50

l2303EADC:
	lbu	a4,s0,+00000008
	c.beqz	a4,000000002303EAF2

l2303EAE2:
	c.lw	s1,4(a5)
	lbu	a5,a5,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a4,a5,000000002303EB50

l2303EAF2:
	c.lw	s0,0(a5)
	beq	s6,zero,000000002303EB48

l2303EAF8:
	c.bnez	a5,000000002303EB50

l2303EAFA:
	lbu	a5,s0,+00000011
	c.andi	a5,00000001
	c.beqz	a5,000000002303EB0A

l2303EB02:
	c.lw	s0,4(a4)
	c.lw	s1,16(a5)
	bne	a4,a5,000000002303EB50

l2303EB0A:
	c.lw	s0,20(a5)
	c.beqz	a5,000000002303EB50

l2303EB0E:
	c.lw	s0,24(a0)
	addi	a3,s7,+000007A4
	c.mv	a2,s4
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,000000002303EB56

l2303EB1C:
	c.li	a0,00000001
	beq	s3,zero,000000002303EB32

l2303EB22:
	c.lw	s0,12(a5)
	sw	a5,s3,+0000000C
	lw	a5,s2,+00000000
	sw	s0,s2,+00000000
	c.sw	s0,12(a5)

l2303EB32:
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

l2303EB48:
	c.beqz	a5,000000002303EAFA

l2303EB4A:
	c.lw	s1,20(a4)
	beq	a4,a5,000000002303EAFA

l2303EB50:
	c.mv	s3,s0
	c.lw	s0,12(s0)
	c.j	000000002303EAD2

l2303EB56:
	c.li	a0,00000002
	c.j	000000002303EB50

;; raw_netif_ip_addr_changed: 2303EB5A
;;   Called from:
;;     2303E00A (in netif_do_set_ipaddr)
;;     2303E2BE (in netif_remove)
raw_netif_ip_addr_changed proc
	c.beqz	a0,000000002303EB70

l2303EB5C:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303EB70

l2303EB60:
	c.beqz	a1,000000002303EB70

l2303EB62:
	c.lw	a1,0(a5)
	c.beqz	a5,000000002303EB70

l2303EB66:
	lui	a5,0004200E
	lw	a5,a5,+0000031C

l2303EB6E:
	c.bnez	a5,000000002303EB72

l2303EB70:
	c.jr	ra

l2303EB72:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,000000002303EB7E

l2303EB7A:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l2303EB7E:
	c.lw	a5,12(a5)
	c.j	000000002303EB6E

;; stats_init: 2303EB82
;;   Called from:
;;     2303AE92 (in lwip_init)
stats_init proc
	c.jr	ra

;; tcp_close_shutdown_fin: 2303EB84
;;   Called from:
;;     2303F18A (in tcp_alloc)
;;     2303F29A (in tcp_close_shutdown)
;;     2303F492 (in tcp_fasttmr)
tcp_close_shutdown_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+00000014
	c.li	a5,00000004
	c.mv	s0,a0
	beq	a4,a5,000000002303EBA4

l2303EB96:
	c.li	a5,00000007
	beq	a4,a5,000000002303EBC4

l2303EB9C:
	c.li	a3,00000003
	c.li	a5,00000000
	bne	a4,a3,000000002303EBBA

l2303EBA4:
	jal	ra,00000000230417EC
	c.mv	a5,a0
	c.bnez	a0,000000002303EBD0

l2303EBAC:
	c.li	a5,00000005

l2303EBAE:
	sb	a5,s0,+00000014
	c.mv	a0,s0
	jal	ra,0000000023041AE8

l2303EBB8:
	c.li	a5,00000000

l2303EBBA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303EBC4:
	jal	ra,00000000230417EC
	c.mv	a5,a0
	c.bnez	a0,000000002303EBD0

l2303EBCC:
	c.li	a5,00000009
	c.j	000000002303EBAE

l2303EBD0:
	c.li	a4,FFFFFFFF
	bne	a5,a4,000000002303EBBA

l2303EBD6:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000008
	sh	a5,s0,+0000001A
	c.j	000000002303EBB8

;; tcp_init: 2303EBE4
;;   Called from:
;;     2303AEAA (in lwip_init)
tcp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023036D28
	c.slli	a0,12
	c.lui	a1,FFFFC000
	c.srli	a0,00000012
	c.add	a0,a1
	slli	a1,a0,00000010
	c.lwsp	a2,00000020
	c.srli	a1,00000010
	lui	a5,0004200E
	sh	a1,a5,+00000C78
	lui	a0,0002307B
	addi	a0,a0,-00000388
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; tcp_free: 2303EC12
;;   Called from:
;;     2303EE86 (in tcp_abandon)
;;     2303EEF2 (in tcp_abandon)
;;     2303F2BC (in tcp_close_shutdown)
;;     2303F7FC (in tcp_slowtmr)
;;     2303F876 (in tcp_slowtmr)
;;     2303FACC (in tcp_input_delayed_close)
;;     23040C80 (in tcp_input)
tcp_free proc
	c.mv	a1,a0
	c.li	a0,00000002
	jal	zero,000000002303DF44

;; tcp_update_rcv_ann_wnd: 2303EC1A
;;   Called from:
;;     2303EC8C (in tcp_recved)
;;     23040104 (in tcp_receive)
;;     2304023C (in tcp_receive)
tcp_update_rcv_ann_wnd proc
	c.mv	a5,a0
	lhu	a1,a0,+00000028
	c.lw	a0,44(a3)
	c.lw	a0,36(a2)
	lhu	a4,a5,+00000032
	sub	a0,a1,a3
	addi	a6,zero,+00000408
	c.add	a0,a2
	bgeu	a6,a4,000000002303EC3A

l2303EC36:
	addi	a4,zero,+00000408

l2303EC3A:
	c.slli	a4,10
	c.srli	a4,00000010
	sub	a4,a0,a4
	blt	a4,zero,000000002303EC4C

l2303EC46:
	sh	a1,a5,+0000002A
	c.jr	ra

l2303EC4C:
	sub	a4,a2,a3
	bge	zero,a4,000000002303EC5C

l2303EC54:
	sh	zero,a5,+0000002A

l2303EC58:
	c.li	a0,00000000
	c.jr	ra

l2303EC5C:
	c.sub	a3,a2
	sh	a3,a5,+0000002A
	c.j	000000002303EC58

;; tcp_recved: 2303EC64
;;   Called from:
;;     2303F35C (in tcp_recv_null)
tcp_recved proc
	c.beqz	a0,000000002303ECB8

l2303EC66:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a4,a0,+00000028
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.add	a1,a4
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a5,a1,000000002303EC84

l2303EC80:
	bgeu	a1,a4,000000002303EC86

l2303EC84:
	c.mv	a1,a5

l2303EC86:
	sh	a1,a0,+00000028
	c.mv	s0,a0
	jal	ra,000000002303EC1A
	addi	a5,zero,+00000407
	bgeu	a5,a0,000000002303ECB0

l2303EC98:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023041AE8

l2303ECB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303ECB8:
	c.jr	ra

;; tcp_seg_free: 2303ECBA
;;   Called from:
;;     2303ECEA (in tcp_segs_free)
;;     2303F9CA (in tcp_oos_insert_segment)
;;     2303FB88 (in tcp_free_acked_segments.isra.3)
;;     230400E4 (in tcp_receive)
;;     230401D0 (in tcp_receive)
;;     23040290 (in tcp_receive)
;;     23040DB2 (in tcp_input)
;;     23041296 (in tcp_create_segment)
;;     23042012 (in tcp_output)
tcp_seg_free proc
	c.beqz	a0,000000002303ECD8

l2303ECBC:
	c.mv	a1,a0
	c.lw	a0,4(a0)
	c.beqz	a0,000000002303ECDA

l2303ECC2:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303E536
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.li	a0,00000004
	c.addi16sp	00000020

l2303ECD4:
	jal	zero,000000002303DF44

l2303ECD8:
	c.jr	ra

l2303ECDA:
	c.li	a0,00000004
	c.j	000000002303ECD4

;; tcp_segs_free: 2303ECDE
;;   Called from:
;;     2303ED74 (in tcp_free_ooseq)
;;     2303EDBE (in tcp_pcb_purge)
;;     2303EDC4 (in tcp_pcb_purge)
;;     2303EEC2 (in tcp_abandon)
;;     2303EECA (in tcp_abandon)
;;     2303EED2 (in tcp_abandon)
;;     2303F982 (in tcp_oos_insert_segment)
tcp_segs_free proc
	c.bnez	a0,000000002303ECE2

l2303ECE0:
	c.jr	ra

l2303ECE2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004

l2303ECE8:
	c.lw	a0,0(s0)
	jal	ra,000000002303ECBA
	c.mv	a0,s0
	c.bnez	s0,000000002303ECE8

l2303ECF2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_seg_copy: 2303ECFA
;;   Called from:
;;     23040302 (in tcp_receive)
;;     2304035E (in tcp_receive)
;;     2304038C (in tcp_receive)
;;     230403CE (in tcp_receive)
;;     2304044E (in tcp_receive)
tcp_seg_copy proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.li	a0,00000004
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.beqz	a0,000000002303ED1A

l2303ED0C:
	c.lwsp	a2,00000064
	c.li	a2,00000014
	jal	ra,000000002306CF80
	c.lw	s0,4(a0)
	jal	ra,000000002303E7A2

l2303ED1A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; tcp_next_iss: 2303ED24
;;   Called from:
;;     23040B80 (in tcp_input)
tcp_next_iss proc
	lui	a5,0004200E
	addi	a5,a5,-0000038C
	lui	a4,0004201A
	c.lw	a5,0(a0)
	lw	a4,a4,+00000774
	c.add	a0,a4
	c.sw	a5,0(a0)
	c.jr	ra

;; tcp_eff_send_mss_netif: 2303ED3C
;;   Called from:
;;     23040C06 (in tcp_input)
;;     23040D72 (in tcp_input)
;;     23041C9C (in tcp_output)
tcp_eff_send_mss_netif proc
	c.beqz	a1,000000002303ED64

l2303ED3E:
	lhu	a5,a1,+00000038
	c.beqz	a5,000000002303ED64

l2303ED44:
	addi	a3,zero,+00000028
	c.li	a4,00000000
	bgeu	a3,a5,000000002303ED5E

l2303ED4E:
	addi	a5,a5,-00000028
	c.slli	a5,10
	c.srli	a5,00000010
	c.mv	a4,a5
	bgeu	a0,a5,000000002303ED5E

l2303ED5C:
	c.mv	a4,a0

l2303ED5E:
	slli	a0,a4,00000010
	c.srli	a0,00000010

l2303ED64:
	c.jr	ra

;; tcp_free_ooseq: 2303ED66
;;   Called from:
;;     2303E3F2 (in pbuf_free_ooseq_callback)
;;     2303EDB2 (in tcp_pcb_purge)
;;     2303F658 (in tcp_slowtmr)
tcp_free_ooseq proc
	c.lw	a0,116(a5)
	c.beqz	a5,000000002303ED84

l2303ED6A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,000000002303ECDE
	sw	zero,s0,+00000074
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303ED84:
	c.jr	ra

;; tcp_pcb_purge: 2303ED86
;;   Called from:
;;     2303EDF6 (in tcp_pcb_remove)
;;     2303F232 (in tcp_close_shutdown)
;;     2303F7C8 (in tcp_slowtmr)
;;     2303F85A (in tcp_slowtmr)
;;     23040F86 (in tcp_input)
;;     23041018 (in tcp_input)
;;     23041052 (in tcp_input)
tcp_pcb_purge proc
	c.beqz	a0,000000002303EDDC

l2303ED88:
	lbu	a5,a0,+00000014
	c.li	a4,00000001
	bgeu	a4,a5,000000002303EDDC

l2303ED92:
	c.li	a4,0000000A
	beq	a5,a4,000000002303EDDC

l2303ED98:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,120(a0)
	c.beqz	a0,000000002303EDAC

l2303EDA4:
	jal	ra,000000002303E536
	sw	zero,s0,+00000078

l2303EDAC:
	c.lw	s0,116(a5)
	c.beqz	a5,000000002303EDB6

l2303EDB0:
	c.mv	a0,s0
	jal	ra,000000002303ED66

l2303EDB6:
	c.lw	s0,108(a0)
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030
	jal	ra,000000002303ECDE
	c.lw	s0,112(a0)
	jal	ra,000000002303ECDE
	sw	zero,s0,+0000006C
	sw	zero,s0,+00000070
	sh	zero,s0,+00000068
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303EDDC:
	c.jr	ra

;; tcp_pcb_remove: 2303EDDE
;;   Called from:
;;     2303EE6E (in tcp_abandon)
;;     2303EF30 (in tcp_abandon)
;;     2303F2F4 (in tcp_close_shutdown)
;;     2303F31A (in tcp_close_shutdown)
;;     2303FAC6 (in tcp_input_delayed_close)
;;     23040C7A (in tcp_input)
tcp_pcb_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a1
	bne	a5,a1,000000002303EE34

l2303EDEC:
	c.lw	a1,12(a5)
	c.sw	a0,0(a5)

l2303EDF0:
	sw	zero,s0,+0000000C
	c.mv	a0,s0
	jal	ra,000000002303ED86
	lbu	a5,s0,+00000014
	c.li	a4,0000000A
	beq	a5,a4,000000002303EE22

l2303EE04:
	c.li	a4,00000001
	beq	a5,a4,000000002303EE22

l2303EE0A:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,000000002303EE22

l2303EE14:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023041AE8

l2303EE22:
	sb	zero,s0,+00000014
	sh	zero,s0,+00000016
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303EE32:
	c.mv	a5,a4

l2303EE34:
	c.beqz	a5,000000002303EDF0

l2303EE36:
	c.lw	a5,12(a4)
	bne	a4,s0,000000002303EE32

l2303EE3C:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	000000002303EDF0

;; tcp_abandon: 2303EE42
;;   Called from:
;;     2303EF58 (in tcp_abort)
;;     2303EFFA (in tcp_kill_state)
;;     23040C1C (in tcp_input)
tcp_abandon proc
	beq	a0,zero,000000002303EF54

l2303EE46:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lbu	a5,a0,+00000014
	c.li	a4,0000000A
	c.mv	s0,a0
	bne	a5,a4,000000002303EE8A

l2303EE64:
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000770
	jal	ra,000000002303EDDE
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002303EC12

l2303EE8A:
	lw	s5,a0,+00000050
	lw	s6,a0,+00000024
	lw	s3,a0,+00000090
	lw	s4,a0,+00000010
	lhu	s1,a0,+00000016
	c.bnez	a5,000000002303EF24

l2303EEA0:
	c.li	s2,00000000
	c.beqz	s1,000000002303EEBE

l2303EEA4:
	lui	a4,0004201A
	lw	a5,a4,+00000780
	bne	a5,a0,000000002303EF16

l2303EEB0:
	c.lw	a0,12(a5)
	sw	a5,a4,+00000780

l2303EEB6:
	sw	zero,s0,+0000000C
	c.li	s1,00000000
	c.li	s2,00000000

l2303EEBE:
	c.lw	s0,112(a0)
	c.beqz	a0,000000002303EEC6

l2303EEC2:
	jal	ra,000000002303ECDE

l2303EEC6:
	c.lw	s0,108(a0)
	c.beqz	a0,000000002303EECE

l2303EECA:
	jal	ra,000000002303ECDE

l2303EECE:
	c.lw	s0,116(a0)
	c.beqz	a0,000000002303EED6

l2303EED2:
	jal	ra,000000002303ECDE

l2303EED6:
	beq	s2,zero,000000002303EEF0

l2303EEDA:
	lhu	a6,s0,+00000018
	c.mv	a5,s1
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023041A3C

l2303EEF0:
	c.mv	a0,s0
	jal	ra,000000002303EC12
	beq	s3,zero,000000002303EF40

l2303EEFA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s4
	c.mv	t1,s3
	c.lwsp	s0,00000088
	c.lwsp	a2,00000068
	c.li	a1,FFFFFFF3
	c.addi16sp	00000020
	c.jr	t1

l2303EF14:
	c.mv	a5,a4

l2303EF16:
	c.beqz	a5,000000002303EEB6

l2303EF18:
	c.lw	a5,12(a4)
	bne	a4,s0,000000002303EF14

l2303EF1E:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	000000002303EEB6

l2303EF24:
	c.mv	s2,a1
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+0000077C
	jal	ra,000000002303EDDE
	lui	a5,0004201A
	c.li	a4,00000001
	sb	a4,a5,+00000784
	c.j	000000002303EEBE

l2303EF40:
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

l2303EF54:
	c.jr	ra

;; tcp_abort: 2303EF56
;;   Called from:
;;     2303EF7E (in tcp_netif_ip_addr_changed_pcblist.isra.2)
;;     2303F056 (in tcp_alloc)
;;     2303F1C0 (in tcp_alloc)
;;     23040E76 (in tcp_input)
tcp_abort proc
	c.li	a1,00000001
	jal	zero,000000002303EE42

;; tcp_netif_ip_addr_changed_pcblist.isra.2: 2303EF5C
;;   Called from:
;;     2303EFA0 (in tcp_netif_ip_addr_changed)
;;     2303EFAE (in tcp_netif_ip_addr_changed)
tcp_netif_ip_addr_changed_pcblist.isra.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0

l2303EF66:
	c.bnez	a1,000000002303EF72

l2303EF68:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303EF72:
	c.lw	a1,0(a4)
	c.lw	s0,0(a5)
	c.lw	a1,12(s1)
	bne	a4,a5,000000002303EF82

l2303EF7C:
	c.mv	a0,a1
	jal	ra,000000002303EF56

l2303EF82:
	c.mv	a1,s1
	c.j	000000002303EF66

;; tcp_netif_ip_addr_changed: 2303EF86
;;   Called from:
;;     2303DFFA (in netif_do_set_ipaddr)
;;     2303E2AE (in netif_remove)
tcp_netif_ip_addr_changed proc
	c.beqz	a0,000000002303EFDC

l2303EF88:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.beqz	a4,000000002303EFC2

l2303EF96:
	lui	a5,0004201A
	c.mv	s1,a1
	lw	a1,a5,+0000077C
	jal	ra,000000002303EF5C
	lui	a5,0004201A
	lw	a1,a5,+00000780
	c.mv	a0,s0
	jal	ra,000000002303EF5C
	c.beqz	s1,000000002303EFC2

l2303EFB4:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303EFC2

l2303EFB8:
	lui	a5,0004201A
	lw	a5,a5,+00000778

l2303EFC0:
	c.bnez	a5,000000002303EFCC

l2303EFC2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303EFCC:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,000000002303EFD8

l2303EFD4:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)

l2303EFD8:
	c.lw	a5,12(a5)
	c.j	000000002303EFC0

l2303EFDC:
	c.jr	ra

;; tcp_kill_state: 2303EFDE
;;   Called from:
;;     2303F066 (in tcp_alloc)
;;     2303F076 (in tcp_alloc)
tcp_kill_state proc
	lui	a5,0004201A
	lui	a4,0004201A
	lw	a5,a5,+0000077C
	lw	a1,a4,+00000774
	c.li	a2,00000000
	c.li	a3,00000000

l2303EFF2:
	c.bnez	a5,000000002303EFFE

l2303EFF4:
	c.beqz	a3,000000002303F018

l2303EFF6:
	c.li	a1,00000000
	c.mv	a0,a3
	jal	zero,000000002303EE42

l2303EFFE:
	lbu	a4,a5,+00000014
	bne	a4,a0,000000002303F014

l2303F006:
	c.lw	a5,32(a4)
	sub	a4,a1,a4
	bltu	a4,a2,000000002303F014

l2303F010:
	c.mv	a2,a4
	c.mv	a3,a5

l2303F014:
	c.lw	a5,12(a5)
	c.j	000000002303EFF2

l2303F018:
	c.jr	ra

;; tcp_alloc: 2303F01A
;;   Called from:
;;     23040B22 (in tcp_input)
tcp_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.li	a0,00000002
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.bnez	a0,000000002303F0E6

l2303F032:
	lui	s3,0004201A
	lw	a0,s3,+0000077C

l2303F03A:
	bne	a0,zero,000000002303F178

l2303F03E:
	lui	a5,0004201A
	lui	s2,0004201A
	lw	a5,a5,+00000770
	lw	a2,s2,+00000774
	c.li	a3,00000000

l2303F050:
	bne	a5,zero,000000002303F192

l2303F054:
	c.beqz	a0,000000002303F05A

l2303F056:
	jal	ra,000000002303EF56

l2303F05A:
	c.li	a0,00000002
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.bnez	a0,000000002303F0D4

l2303F064:
	c.li	a0,00000009
	jal	ra,000000002303EFDE
	c.li	a0,00000002
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.bnez	a0,000000002303F0C2

l2303F074:
	c.li	a0,00000008
	jal	ra,000000002303EFDE
	c.li	a0,00000002
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.bnez	a0,000000002303F0B0

l2303F084:
	slli	a5,s1,00000018
	c.srai	a5,00000018
	blt	a5,zero,000000002303F1A4

l2303F08E:
	c.mv	a5,s1
	bne	s1,zero,000000002303F1A8

l2303F094:
	c.li	a0,00000002
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.beqz	a0,000000002303F168

l2303F09E:
	lui	a5,0004201A
	lw	a4,a5,+00000728
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l2303F0B0:
	lui	a5,0004201A
	lw	a4,a5,+00000728
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l2303F0C2:
	lui	a5,0004201A
	lw	a4,a5,+00000728
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l2303F0D4:
	lui	a5,0004201A
	lw	a4,a5,+00000728
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l2303F0E6:
	addi	a2,zero,+000000A4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.lui	a5,00001000
	addi	a5,a5,+00000580
	sh	a5,s0,+00000064
	lui	a5,00008101
	addi	a5,a5,-000007F0
	c.sw	s0,40(a5)
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	c.li	a5,00000006
	sh	a5,s0,+00000040
	sh	a5,s0,+0000003E
	lui	a5,00002190
	c.addi	a5,FFFFFFFF
	c.sw	s0,48(a5)
	lui	a5,0004201A
	lw	a5,a5,+00000774
	sb	s1,s0,+00000015
	c.sw	s0,32(a5)
	lui	a5,0004200E
	lbu	a5,a5,+00000321
	sb	a5,s0,+0000001E
	lui	a5,00015800
	c.addi	a5,00000001
	c.sw	s0,72(a5)
	lui	a5,0002303F
	addi	a5,a5,+0000034A
	sw	a5,s0,+00000084
	lui	a5,000006DE
	addi	a5,a5,-00000300
	sw	a5,s0,+00000094
	c.lui	a5,00012000
	addi	a5,a5,+000004F8
	sw	a5,s0,+00000098
	c.li	a5,00000009
	sw	a5,s0,+0000009C

l2303F168:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303F178:
	lhu	a5,a0,+0000001A
	c.lw	a0,12(s0)
	andi	a4,a5,+00000008
	c.beqz	a4,000000002303F18E

l2303F184:
	c.andi	a5,FFFFFFF7
	sh	a5,a0,+0000001A
	jal	ra,000000002303EB84

l2303F18E:
	c.mv	a0,s0
	c.j	000000002303F03A

l2303F192:
	c.lw	a5,32(a4)
	sub	a4,a2,a4
	bltu	a4,a3,000000002303F1A0

l2303F19C:
	c.mv	a3,a4
	c.mv	a0,a5

l2303F1A0:
	c.lw	a5,12(a5)
	c.j	000000002303F050

l2303F1A4:
	addi	a5,zero,+0000007F

l2303F1A8:
	lw	a4,s3,+0000077C
	lw	a0,s2,+00000774
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a3,00000000

l2303F1B8:
	c.bnez	a4,000000002303F1C6

l2303F1BA:
	beq	s0,zero,000000002303F094

l2303F1BE:
	c.mv	a0,s0
	jal	ra,000000002303EF56
	c.j	000000002303F094

l2303F1C6:
	lbu	a2,a4,+00000015
	bltu	a2,a5,000000002303F1DC

l2303F1CE:
	bne	a2,a5,000000002303F1E6

l2303F1D2:
	c.lw	a4,32(a1)
	sub	a1,a0,a1
	bltu	a1,a3,000000002303F1E6

l2303F1DC:
	c.lw	a4,32(a3)
	c.mv	a5,a2
	c.mv	s0,a4
	sub	a3,a0,a3

l2303F1E6:
	c.lw	a4,12(a4)
	c.j	000000002303F1B8

;; tcp_close_shutdown: 2303F1EA
;;   Called from:
;;     2303F342 (in tcp_close)
tcp_close_shutdown proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lbu	a5,a0,+00000014
	c.beqz	a1,000000002303F282

l2303F1FA:
	c.li	a4,00000004
	beq	a5,a4,000000002303F206

l2303F200:
	c.li	a4,00000007
	bne	a5,a4,000000002303F282

l2303F206:
	c.lw	s0,120(a4)
	c.bnez	a4,000000002303F218

l2303F20A:
	lhu	a3,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a3,a4,000000002303F282

l2303F218:
	lhu	a5,s0,+00000016
	lhu	a6,s0,+00000018
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,0000000023041A3C
	c.mv	a0,s0
	jal	ra,000000002303ED86
	lui	a4,0004201A
	lw	a5,a4,+0000077C
	bne	a5,s0,000000002303F274

l2303F242:
	c.lw	s0,12(a5)
	sw	a5,a4,+0000077C

l2303F248:
	lui	a5,0004201A
	c.li	a4,00000001
	sb	a4,a5,+00000784
	lui	a5,0004201A
	lw	a5,a5,+00000788
	sw	zero,s0,+0000000C
	bne	a5,s0,000000002303F2BA

l2303F262:
	jal	ra,00000000230411CA

l2303F266:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303F272:
	c.mv	a5,a4

l2303F274:
	c.beqz	a5,000000002303F248

l2303F276:
	c.lw	a5,12(a4)
	bne	a4,s0,000000002303F272

l2303F27C:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	000000002303F248

l2303F282:
	c.li	s1,00000001
	beq	a5,s1,000000002303F2D2

l2303F288:
	c.beqz	a5,000000002303F29E

l2303F28A:
	c.li	a4,00000002
	beq	a5,a4,000000002303F310

l2303F290:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303EB84

l2303F29E:
	lhu	a5,s0,+00000016
	c.beqz	a5,000000002303F2BA

l2303F2A4:
	lui	a4,0004201A
	lw	a5,a4,+00000780
	bne	a5,s0,000000002303F2C4

l2303F2B0:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000780

l2303F2B6:
	sw	zero,s0,+0000000C

l2303F2BA:
	c.mv	a0,s0
	jal	ra,000000002303EC12
	c.j	000000002303F266

l2303F2C2:
	c.mv	a5,a4

l2303F2C4:
	c.beqz	a5,000000002303F2B6

l2303F2C6:
	c.lw	a5,12(a4)
	bne	a4,s0,000000002303F2C2

l2303F2CC:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	000000002303F2B6

l2303F2D2:
	lui	a5,0002307B
	addi	a5,a5,-00000358
	addi	a3,a5,+0000000C

l2303F2DE:
	c.lw	a5,4(a4)
	c.lw	a4,0(a4)

l2303F2E2:
	c.bnez	a4,000000002303F302

l2303F2E4:
	c.addi	a5,00000004
	bne	a5,a3,000000002303F2DE

l2303F2EA:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+00000778
	jal	ra,000000002303EDDE
	c.mv	a1,s0
	c.li	a0,00000003
	jal	ra,000000002303DF44
	c.j	000000002303F266

l2303F302:
	c.lw	a4,124(a2)
	bne	s0,a2,000000002303F30C

l2303F308:
	sw	zero,a4,+0000007C

l2303F30C:
	c.lw	a4,12(a4)
	c.j	000000002303F2E2

l2303F310:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+0000077C
	jal	ra,000000002303EDDE
	lui	a5,0004201A
	sb	s1,a5,+00000784
	c.j	000000002303F2BA

;; tcp_close: 2303F328
;;   Called from:
;;     2303F376 (in tcp_recv_null)
tcp_close proc
	c.beqz	a0,000000002303F346

l2303F32A:
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	beq	a4,a5,000000002303F340

l2303F334:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000010
	sh	a5,a0,+0000001A

l2303F340:
	c.li	a1,00000001
	jal	zero,000000002303F1EA

l2303F346:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; tcp_recv_null: 2303F34A
;;   Called from:
;;     2303F3F8 (in tcp_process_refused_data)
;;     23041126 (in tcp_input)
tcp_recv_null proc
	c.beqz	a1,000000002303F37A

l2303F34C:
	c.beqz	a2,000000002303F370

l2303F34E:
	c.mv	a0,a1
	lhu	a1,a2,+00000008
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,000000002303EC64
	c.mv	a0,s0
	jal	ra,000000002303E536
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303F370:
	c.li	a0,00000000
	c.bnez	a3,000000002303F37E

l2303F374:
	c.mv	a0,a1
	jal	zero,000000002303F328

l2303F37A:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2303F37E:
	c.jr	ra

;; tcp_process_refused_data: 2303F380
;;   Called from:
;;     2303F4A2 (in tcp_fasttmr)
;;     23040906 (in tcp_input)
tcp_process_refused_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002303F3E6

l2303F390:
	lw	s2,a0,+00000078
	lw	a5,a0,+00000084
	c.mv	s0,a0
	lbu	s3,s2,+0000000D
	sw	zero,a0,+00000078
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,a0
	c.beqz	a5,000000002303F3F6

l2303F3AA:
	c.lw	a0,16(a0)
	c.jalr	a5

l2303F3AE:
	c.mv	s1,a0
	c.bnez	a0,000000002303F3FE

l2303F3B2:
	andi	s3,s3,+00000020
	beq	s3,zero,000000002303F3E6

l2303F3BA:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,000000002303F3CE

l2303F3C8:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l2303F3CE:
	lw	a5,s0,+00000084
	c.beqz	a5,000000002303F3E6

l2303F3D4:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,000000002303F3E6

l2303F3E4:
	c.li	s1,FFFFFFF3

l2303F3E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303F3F6:
	c.li	a0,00000000
	jal	ra,000000002303F34A
	c.j	000000002303F3AE

l2303F3FE:
	c.li	a5,FFFFFFF3
	beq	a0,a5,000000002303F3E4

l2303F404:
	sw	s2,s0,+00000078
	c.li	s1,FFFFFFFB
	c.j	000000002303F3E6

;; tcp_fasttmr: 2303F40C
;;   Called from:
;;     2303F882 (in tcp_tmr)
tcp_fasttmr proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004200E
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	a3,a4,+00000321
	lbu	a5,a3,+00000000
	addi	s2,a4,+00000321
	lui	s4,0004201A
	c.addi	a5,00000001
	sb	a5,a3,+00000000
	lui	s3,0004201A

l2303F438:
	lw	s0,s4,+0000077C

l2303F43C:
	c.bnez	s0,000000002303F44E

l2303F43E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303F44E:
	lbu	a5,s2,+00000000
	lbu	a4,s0,+0000001E
	beq	a4,a5,000000002303F4B0

l2303F45A:
	sb	a5,s0,+0000001E
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,000000002303F480

l2303F468:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023041AE8
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l2303F480:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000008
	c.beqz	a4,000000002303F496

l2303F48A:
	c.andi	a5,FFFFFFF7
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,000000002303EB84

l2303F496:
	c.lw	s0,120(a5)
	c.lw	s0,12(s1)
	c.beqz	a5,000000002303F4AC

l2303F49C:
	c.mv	a0,s0
	sb	zero,s3,+00000784
	jal	ra,000000002303F380
	lbu	a5,s3,+00000784
	c.bnez	a5,000000002303F438

l2303F4AC:
	c.mv	s0,s1
	c.j	000000002303F43C

l2303F4B0:
	c.lw	s0,12(s1)
	c.j	000000002303F4AC

;; tcp_slowtmr: 2303F4B4
;;   Called from:
;;     2303F8A4 (in tcp_tmr)
tcp_slowtmr proc
	c.addi16sp	FFFFFFB0
	c.swsp	s2,00000020
	lui	s2,0004201A
	lw	a5,s2,+00000774
	c.swsp	s5,00000098
	lui	s5,0004200E
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	addi	a4,s5,+00000321
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.addi	a5,00000001
	sw	a5,s2,+00000774
	lbu	a5,a4,+00000000
	lui	s8,0002307B
	lui	s9,00023082
	c.addi	a5,00000001
	sb	a5,a4,+00000000
	addi	s5,s5,+00000321
	lui	s7,0004201A
	addi	s8,s8,-00000398
	addi	s9,s9,+000007B4

l2303F508:
	lui	s6,0004201A
	lw	s0,s6,+0000077C
	c.lui	s4,00008000
	addi	s10,s4,-00000002
	c.li	s3,00000000
	c.addi	s4,FFFFFFFF

l2303F51A:
	c.bnez	s0,000000002303F54C

l2303F51C:
	lui	a5,0004201A
	lw	s1,a5,+00000770
	c.mv	s3,a5
	addi	s4,zero,+000000F0

l2303F52A:
	bne	s1,zero,000000002303F84C

l2303F52E:
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

l2303F54C:
	lbu	a5,s5,+00000000
	lbu	a4,s0,+0000001E
	bne	a4,a5,000000002303F562

l2303F558:
	lw	s11,s0,+0000000C

l2303F55C:
	c.mv	s3,s0
	c.mv	s0,s11
	c.j	000000002303F51A

l2303F562:
	lbu	a3,s0,+00000014
	sb	a5,s0,+0000001E
	c.li	a4,00000002
	lbu	a5,s0,+00000042
	bne	a3,a4,000000002303F5B8

l2303F574:
	c.li	a4,00000005

l2303F576:
	c.li	s1,00000001
	bltu	a4,a5,000000002303F5CC

l2303F57C:
	lbu	s1,s0,+000000A1
	beq	s1,zero,000000002303F6D0

l2303F584:
	lbu	a4,s0,+000000A2
	c.li	a5,0000000B
	bltu	a5,a4,000000002303F77E

l2303F58E:
	c.add	s1,s9
	lbu	a4,s1,-00000001
	lbu	a5,s0,+000000A0
	bltu	a5,a4,000000002303F5BC

l2303F59C:
	lhu	a1,s0,+00000060
	beq	a1,zero,000000002303F6B2

l2303F5A4:
	c.mv	a0,s0
	jal	ra,00000000230414C2
	bne	a0,zero,000000002303F6BA

l2303F5AE:
	c.mv	a0,s0
	jal	ra,0000000023041AE8
	c.beqz	a0,000000002303F5CA

l2303F5B6:
	c.j	000000002303F6BA

l2303F5B8:
	c.li	a4,0000000B
	c.j	000000002303F576

l2303F5BC:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000A0
	bgeu	a5,a4,000000002303F59C

l2303F5CA:
	c.li	s1,00000000

l2303F5CC:
	lbu	a5,s0,+00000014
	c.li	a4,00000006
	bne	a5,a4,000000002303F5F4

l2303F5D6:
	lhu	a4,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,000000002303F5F4

l2303F5DE:
	c.lw	s0,32(a3)
	lw	a4,s2,+00000774
	c.sub	a4,a3
	addi	a3,zero,+00000028
	bgeu	a3,a4,000000002303F5F4

l2303F5EE:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l2303F5F4:
	lbu	s11,s0,+00000009
	andi	s11,s11,+00000008
	beq	s11,zero,000000002303F63C

l2303F600:
	c.li	a4,00000004
	beq	a5,a4,000000002303F60E

l2303F606:
	c.li	a4,00000007
	c.li	s11,00000000
	bne	a5,a4,000000002303F63C

l2303F60E:
	lw	a0,s0,+00000098
	lw	a4,s0,+0000009C
	lw	a1,s0,+00000094
	addi	a2,zero,+000001F4
	add	a4,a0,a4
	lw	a3,s2,+00000774
	c.lw	s0,32(a5)
	c.sub	a3,a5
	c.add	a4,a1
	srl	a4,a4,a2
	bgeu	a4,a3,000000002303F782

l2303F634:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.li	s11,00000001

l2303F63C:
	c.lw	s0,116(a5)
	c.beqz	a5,000000002303F65C

l2303F640:
	c.lw	s0,32(a5)
	lw	a4,s2,+00000774
	c.li	a3,00000006
	c.sub	a4,a5
	lh	a5,s0,+00000040
	add	a5,a5,a3
	bltu	a4,a5,000000002303F65C

l2303F656:
	c.mv	a0,s0
	jal	ra,000000002303ED66

l2303F65C:
	lbu	a5,s0,+00000014
	c.li	a4,00000003
	bne	a5,a4,000000002303F7AC

l2303F666:
	c.lw	s0,32(a4)
	lw	a5,s2,+00000774
	c.sub	a5,a4
	addi	a4,zero,+00000028
	bgeu	a4,a5,000000002303F67C

l2303F676:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l2303F67C:
	bne	s1,zero,000000002303F7C2

l2303F680:
	lbu	a5,s0,+0000001C
	lbu	a4,s0,+0000001D
	lw	s11,s0,+0000000C
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000001C
	bltu	a5,a4,000000002303F55C

l2303F69A:
	lw	a5,s0,+0000008C
	sb	zero,s0,+0000001C
	sb	zero,s7,+00000784
	bne	a5,zero,000000002303F838

l2303F6AA:
	c.mv	a0,s0
	jal	ra,0000000023041AE8
	c.j	000000002303F55C

l2303F6B2:
	c.mv	a0,s0
	jal	ra,0000000023042092
	c.bnez	a0,000000002303F5CA

l2303F6BA:
	lbu	a5,s0,+000000A1
	sb	zero,s0,+000000A0
	c.li	a4,00000006
	bltu	a4,a5,000000002303F5CA

l2303F6C8:
	c.addi	a5,00000001
	sb	a5,s0,+000000A1
	c.j	000000002303F5CA

l2303F6D0:
	lh	a5,s0,+00000030
	blt	a5,zero,000000002303F770

l2303F6D8:
	bne	a5,s4,000000002303F76A

l2303F6DC:
	c.mv	a0,s0
	jal	ra,000000002304186A
	c.beqz	a0,000000002303F6F0

l2303F6E4:
	c.lw	s0,112(a5)
	bne	a5,zero,000000002303F5CA

l2303F6EA:
	c.lw	s0,108(a5)
	beq	a5,zero,000000002303F5CA

l2303F6F0:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	beq	a4,a5,000000002303F72A

l2303F6FA:
	lh	a5,s0,+0000003C
	lh	a4,s0,+0000003E
	c.li	a3,0000000C
	c.srai	a5,00000003
	c.add	a5,a4
	lbu	a4,s0,+00000042
	bgeu	a3,a4,000000002303F712

l2303F710:
	c.li	a4,0000000C

l2303F712:
	andi	a4,a4,+000000FF
	c.add	a4,s8
	lbu	a4,a4,+00000000
	sll	a5,a5,a4
	bge	s10,a5,000000002303F726

l2303F724:
	c.mv	a5,s4

l2303F726:
	sh	a5,s0,+00000040

l2303F72A:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	sh	zero,s0,+00000030
	bgeu	a4,a5,000000002303F73C

l2303F73A:
	c.mv	a5,a4

l2303F73C:
	lhu	a3,s0,+00000032
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a4,a3,00000001
	c.srli	a5,00000001
	c.slli	a4,10
	sh	a5,s0,+0000004A
	c.srli	a4,00000010
	bgeu	a5,a4,000000002303F75A

l2303F756:
	sh	a4,s0,+0000004A

l2303F75A:
	sh	a3,s0,+00000048
	sh	zero,s0,+0000006A
	c.mv	a0,s0
	jal	ra,0000000023042020
	c.j	000000002303F5CC

l2303F76A:
	c.addi	a5,00000001
	sh	a5,s0,+00000030

l2303F770:
	lh	a4,s0,+00000030
	lh	a5,s0,+00000040
	blt	a4,a5,000000002303F5CA

l2303F77C:
	c.j	000000002303F6DC

l2303F77E:
	c.li	s1,00000001
	c.j	000000002303F5CC

l2303F782:
	lbu	a5,s0,+000000A3
	c.li	s11,00000000
	add	a5,a5,a0
	c.add	a5,a1
	srl	a5,a5,a2
	bgeu	a5,a3,000000002303F63C

l2303F796:
	c.mv	a0,s0
	jal	ra,0000000023042058
	bne	a0,zero,000000002303F63C

l2303F7A0:
	lbu	a5,s0,+000000A3
	c.addi	a5,00000001
	sb	a5,s0,+000000A3
	c.j	000000002303F63C

l2303F7AC:
	c.li	a4,00000009
	bne	a5,a4,000000002303F81A

l2303F7B2:
	c.lw	s0,32(a4)
	lw	a5,s2,+00000774
	c.sub	a5,a4
	addi	a4,zero,+000000F0

l2303F7BE:
	bgeu	a4,a5,000000002303F67C

l2303F7C2:
	c.mv	a0,s0
	lw	s1,s0,+00000090
	jal	ra,000000002303ED86
	c.lw	s0,12(a5)
	beq	s3,zero,000000002303F832

l2303F7D2:
	sw	a5,s3,+0000000C

l2303F7D6:
	beq	s11,zero,000000002303F7F2

l2303F7DA:
	lhu	a6,s0,+00000018
	lhu	a5,s0,+00000016
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,0000000023041A3C

l2303F7F2:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	lw	s11,s0,+0000000C
	c.swsp	a5,00000084
	jal	ra,000000002303EC12
	sb	zero,s7,+00000784
	c.beqz	s1,000000002303F816

l2303F806:
	c.lwsp	a2,000000E4
	c.li	a1,FFFFFFF3
	c.mv	a0,a5
	c.jalr	s1
	lbu	a5,s7,+00000784
	bne	a5,zero,000000002303F508

l2303F816:
	c.mv	s0,s3
	c.j	000000002303F55C

l2303F81A:
	c.li	a4,00000005
	beq	a5,a4,000000002303F826

l2303F820:
	c.li	a4,00000008
	bne	a5,a4,000000002303F67C

l2303F826:
	c.lw	s0,32(a4)
	lw	a5,s2,+00000774
	c.sub	a5,a4
	c.li	a4,0000000A
	c.j	000000002303F7BE

l2303F832:
	sw	a5,s6,+0000077C
	c.j	000000002303F7D6

l2303F838:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	lbu	a5,s7,+00000784
	bne	a5,zero,000000002303F508

l2303F846:
	bne	a0,zero,000000002303F55C

l2303F84A:
	c.j	000000002303F6AA

l2303F84C:
	lw	a5,s2,+00000774
	c.lw	s1,32(a4)
	c.sub	a5,a4
	bgeu	s4,a5,000000002303F868

l2303F858:
	c.mv	a0,s1
	jal	ra,000000002303ED86
	c.lw	s1,12(a5)
	c.bnez	s0,000000002303F86E

l2303F862:
	sw	a5,s3,+00000770
	c.j	000000002303F870

l2303F868:
	c.mv	s0,s1
	c.lw	s1,12(s1)
	c.j	000000002303F52A

l2303F86E:
	c.sw	s0,12(a5)

l2303F870:
	lw	s5,s1,+0000000C
	c.mv	a0,s1
	jal	ra,000000002303EC12
	c.mv	s1,s5
	c.j	000000002303F52A

;; tcp_tmr: 2303F87E
;;   Called from:
;;     230422B4 (in tcpip_tcp_timer)
tcp_tmr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303F40C
	lui	a4,0004200E
	addi	a4,a4,+00000320
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.andi	a5,00000001
	c.beqz	a5,000000002303F8A8

l2303F8A0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303F4B4

l2303F8A8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; tcp_get_next_optbyte: 2303F8AE
;;   Called from:
;;     2303FA2C (in tcp_parseopt.isra.0.part.1)
;;     2303FA40 (in tcp_parseopt.isra.0.part.1)
;;     2303FA52 (in tcp_parseopt.isra.0.part.1)
;;     2303FA5E (in tcp_parseopt.isra.0.part.1)
;;     2303FA7E (in tcp_parseopt.isra.0.part.1)
tcp_get_next_optbyte proc
	lui	a4,0004200E
	addi	a4,a4,+00000338
	lhu	a5,a4,+00000000
	addi	a3,a5,+00000001
	sh	a3,a4,+00000000
	lui	a4,0004200E
	lw	a4,a4,+00000344
	c.beqz	a4,000000002303F8D8

l2303F8CC:
	lui	a3,0004200E
	lhu	a3,a3,+00000340
	bgeu	a5,a3,000000002303F8E8

l2303F8D8:
	lui	a4,0004200E
	lw	a4,a4,+0000033C
	c.add	a5,a4
	lbu	a0,a5,+00000014
	c.jr	ra

l2303F8E8:
	c.sub	a5,a3
	andi	a5,a5,+000000FF
	c.add	a5,a4
	lbu	a0,a5,+00000000
	c.jr	ra

;; tcp_oos_insert_segment: 2303F8F6
;;   Called from:
;;     2304036E (in tcp_receive)
tcp_oos_insert_segment proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.lw	a0,16(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.bnez	a0,000000002303F980

l2303F91C:
	lui	s3,0004200E

l2303F920:
	lw	a4,s2,+00000010
	lw	a2,s3,+00000334
	lhu	a5,s1,+00000008
	lbu	a3,a4,+00000005
	lbu	a1,a4,+00000004
	c.add	a5,a2
	c.slli	a3,08
	c.or	a1,a3
	lbu	a3,a4,+00000006
	c.slli	a3,10
	c.or	a3,a1
	lbu	a1,a4,+00000007
	c.slli	a1,18
	c.or	a1,a3
	lhu	a3,s2,+00000008
	c.add	a3,a1
	sub	a3,a5,a3
	bge	a3,zero,000000002303F98A

l2303F958:
	c.sub	a5,a1
	bge	zero,a5,000000002303F96E

l2303F95E:
	c.sub	a1,a2
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,000000002303E716

l2303F96E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303F980:
	c.mv	a0,s2
	jal	ra,000000002303ECDE

l2303F986:
	c.li	s2,00000000
	c.j	000000002303F96E

l2303F98A:
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,000000002303F9C4

l2303F99E:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002303A75A
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D

l2303F9C4:
	lw	s0,s2,+00000000
	c.mv	a0,s2
	jal	ra,000000002303ECBA
	c.beqz	s0,000000002303F986

l2303F9D0:
	c.mv	s2,s0
	c.j	000000002303F920

;; tcp_parseopt.isra.0.part.1: 2303F9D4
;;   Called from:
;;     23040BD4 (in tcp_input)
;;     23040CE8 (in tcp_input)
tcp_parseopt.isra.0.part.1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	sh	zero,s1,+00000338
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a0
	addi	s1,s1,+00000338
	lui	s2,0004200E
	c.li	s4,00000001
	c.li	s5,00000001
	c.li	s6,00000002
	c.li	s7,00000004
	addi	s8,zero,+000002AF

l2303FA08:
	lhu	s0,s2,+00000348
	lhu	a5,s1,+00000000
	bltu	a5,s0,000000002303FA2C

l2303FA14:
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

l2303FA2C:
	jal	ra,000000002303F8AE
	beq	a0,s4,000000002303FA08

l2303FA34:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	c.beqz	a5,000000002303FA14

l2303FA3C:
	bne	a0,s6,000000002303FA7E

l2303FA40:
	jal	ra,000000002303F8AE
	bne	a0,s7,000000002303FA14

l2303FA48:
	lhu	a5,s1,+00000000
	c.addi	a5,00000001
	bge	a5,s0,000000002303FA14

l2303FA52:
	jal	ra,000000002303F8AE
	c.slli	a0,08
	slli	s0,a0,00000010
	c.srli	s0,00000010
	jal	ra,000000002303F8AE
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	addi	a5,a0,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s8,a5,000000002303FA78

l2303FA74:
	addi	a0,zero,+000002B0

l2303FA78:
	sh	a0,s3,+00000000
	c.j	000000002303FA08

l2303FA7E:
	jal	ra,000000002303F8AE
	bgeu	s5,a0,000000002303FA14

l2303FA86:
	lhu	a5,s1,+00000000
	c.addi	a5,FFFFFFFE
	c.add	a5,a0
	sh	a5,s1,+00000000
	c.j	000000002303FA08

;; tcp_input_delayed_close: 2303FA94
;;   Called from:
;;     230410AA (in tcp_input)
;;     23041114 (in tcp_input)
tcp_input_delayed_close proc
	lui	a5,0004200E
	lbu	a5,a5,+00000330
	c.andi	a5,00000010
	c.beqz	a5,000000002303FADA

l2303FAA0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000010
	c.bnez	a5,000000002303FABC

l2303FAB0:
	lw	a5,a0,+00000090
	c.beqz	a5,000000002303FABC

l2303FAB6:
	c.lw	a0,16(a0)
	c.li	a1,FFFFFFF1
	c.jalr	a5

l2303FABC:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+0000077C
	jal	ra,000000002303EDDE
	c.mv	a0,s0
	jal	ra,000000002303EC12
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2303FADA:
	c.li	a0,00000000
	c.jr	ra

;; tcp_free_acked_segments.isra.3: 2303FADE
;;   Called from:
;;     2304000C (in tcp_receive)
;;     23040016 (in tcp_receive)
tcp_free_acked_segments.isra.3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.mv	s2,a0
	c.mv	s0,a1
	lui	s3,0004200E
	lui	s4,0004200E

l2303FAFA:
	c.beqz	s0,000000002303FB4A

l2303FAFC:
	c.lw	s0,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lw	s0,16(a5)
	c.mv	s5,a0
	lhu	s1,s0,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lw	a5,s3,+00000324
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.sub	s1,a5
	c.add	s1,s5
	c.add	s1,a0
	bge	zero,s1,000000002303FB5E

l2303FB4A:
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

l2303FB5E:
	c.lw	s0,4(a0)
	c.lw	s0,0(s1)
	jal	ra,000000002303E790
	lhu	a5,s2,+00000000
	addi	a4,s4,+0000032A
	lhu	a3,a4,+00000000
	sub	a0,a5,a0
	sh	a0,s2,+00000000
	lhu	a5,s0,+00000008
	c.mv	a0,s0
	c.mv	s0,s1
	c.add	a5,a3
	sh	a5,a4,+00000000
	jal	ra,000000002303ECBA
	c.j	000000002303FAFA

;; tcp_receive: 2303FB8E
;;   Called from:
;;     23040E94 (in tcp_input)
;;     23040F4C (in tcp_input)
;;     23040F54 (in tcp_input)
;;     23040FFA (in tcp_input)
;;     23041032 (in tcp_input)
;;     2304106C (in tcp_input)
tcp_receive proc
	lui	a5,0004200E
	lbu	a5,a5,+00000328
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lui	s3,0004200E
	lui	s4,0004200E
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.andi	a5,00000010
	c.mv	s0,a0
	addi	s3,s3,+00000334
	addi	s4,s4,+0000034A
	beq	a5,zero,000000002303FD18

l2303FBC2:
	lw	a1,s3,+00000000
	c.lw	a0,84(a5)
	lui	s1,0004200E
	lbu	a6,a0,+00000014
	lhu	a3,a0,+00000060
	c.lw	a0,88(a2)
	sub	a0,a5,a1
	lw	a4,s1,+00000324
	addi	s1,s1,+00000324
	blt	a0,zero,000000002303FC10

l2303FBE6:
	bne	a5,a1,000000002303FBF2

l2303FBEA:
	sub	a5,a2,a4
	blt	a5,zero,000000002303FC10

l2303FBF2:
	bne	a2,a4,000000002303FC3A

l2303FBF6:
	lui	a5,0004200E
	lw	a0,a5,+0000033C
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	c.slli	a5,08
	or	a5,a5,a7
	bgeu	a3,a5,000000002303FC3A

l2303FC10:
	lui	a5,0004200E
	lw	a0,a5,+0000033C
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	lhu	a0,s0,+00000062
	c.slli	a5,08
	or	a5,a5,a7
	sh	a5,s0,+00000060
	bgeu	a0,a5,000000002303FC36

l2303FC32:
	sh	a5,s0,+00000062

l2303FC36:
	c.sw	s0,84(a1)
	c.sw	s0,88(a4)

l2303FC3A:
	c.lw	s0,68(a1)
	sub	a5,a4,a1
	blt	zero,a5,000000002303FF62

l2303FC44:
	lhu	a5,s4,+00000000
	bne	a5,zero,000000002303FF5C

l2303FC4C:
	lhu	a5,s0,+00000060
	c.lw	s0,88(a0)
	c.add	a3,a2
	c.add	a5,a0
	bne	a5,a3,000000002303FF5C

l2303FC5A:
	lh	a5,s0,+00000030
	blt	a5,zero,000000002303FF5C

l2303FC62:
	bne	a1,a4,000000002303FF5C

l2303FC66:
	lbu	a5,s0,+00000043
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303FC78

l2303FC72:
	c.addi	a5,00000001
	sb	a5,s0,+00000043

l2303FC78:
	lbu	a4,s0,+00000043
	c.li	a5,00000003
	bgeu	a5,a4,000000002303FC9E

l2303FC82:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000032
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a4,000000002303FC98

l2303FC94:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l2303FC98:
	sh	a5,s0,+00000048
	c.j	000000002303FCA2

l2303FC9E:
	bne	a4,a5,000000002303FCA8

l2303FCA2:
	c.mv	a0,s0
	jal	ra,00000000230419D0

l2303FCA8:
	c.lw	s0,52(a2)
	c.beqz	a2,000000002303FD18

l2303FCAC:
	c.lw	s0,56(a5)
	c.lw	s1,0(a4)
	c.sub	a5,a4
	bge	a5,zero,000000002303FD18

l2303FCB6:
	lh	a3,s0,+0000003C
	lui	a5,0004201A
	lhu	a4,a5,+00000774
	c.slli	a2,10
	srai	a1,a3,00000003
	c.srli	a2,00000010
	c.slli	a1,10
	c.srli	a1,00000010
	sub	a5,a4,a2
	c.sub	a5,a1
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a0,a5,00000010
	c.add	a5,a3
	c.slli	a5,10
	c.srai	a5,00000010
	c.srai	a0,00000010
	sh	a5,s0,+0000003C
	bge	a0,zero,000000002303FCF6

l2303FCEC:
	c.sub	a2,a4
	c.add	a2,a1
	slli	a0,a2,00000010
	c.srai	a0,00000010

l2303FCF6:
	lh	a3,s0,+0000003E
	c.srai	a5,00000003
	sw	zero,s0,+00000034
	srai	a4,a3,00000002
	sub	a4,a3,a4
	c.add	a4,a0
	c.slli	a4,10
	c.srli	a4,00000010
	c.add	a5,a4
	sh	a4,s0,+0000003E
	sh	a5,s0,+00000040

l2303FD18:
	lhu	a2,s4,+00000000
	c.lw	s0,36(a3)
	lw	a5,s3,+00000000
	beq	a2,zero,000000002304054C

l2303FD26:
	lbu	a1,s0,+00000014
	c.li	a4,00000006
	bltu	a4,a1,000000002304054C

l2303FD30:
	sub	a1,a3,a5
	addi	a4,a1,-00000001
	blt	a4,zero,00000000230400CC

l2303FD3C:
	c.li	a4,00000001
	c.sub	a4,a5
	c.sub	a4,a2
	c.add	a4,a3
	blt	zero,a4,00000000230400CC

l2303FD48:
	lui	a4,00042015
	addi	a5,a4,+000005D8
	lhu	a3,a5,+00000008
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a5,4(a0)
	c.sub	a3,a1
	sh	a3,a5,+00000008
	lhu	a5,a0,+00000008
	addi	s1,a4,+000005D8
	c.sub	a5,a1
	c.slli	a5,10
	c.srli	a5,00000010

l2303FD6E:
	lhu	a4,a0,+0000000A
	bltu	a4,a1,00000000230400BA

l2303FD76:
	jal	ra,000000002303E4D4
	c.lw	s0,36(a5)
	c.lw	s1,16(a4)
	srli	a3,a5,00000008
	sw	a5,s3,+00000000
	sb	a5,a4,+00000004
	sb	a3,a4,+00000005
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a4,+00000006
	sb	a5,a4,+00000007

l2303FD9C:
	lw	a5,s3,+00000000
	c.lw	s0,36(a4)
	sub	a3,a5,a4
	blt	a3,zero,0000000023040308

l2303FDAA:
	lhu	a2,s0,+00000028
	addi	a0,a5,+00000001
	sub	a3,a0,a4
	c.sub	a3,a2
	blt	zero,a3,0000000023040308

l2303FDBC:
	bne	a5,a4,00000000230402F0

l2303FDC0:
	lui	s1,00042015
	addi	a5,s1,+000005D8
	lhu	s2,a5,+00000008
	c.lw	a5,16(a5)
	addi	s1,s1,+000005D8
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.slli	a0,10
	lhu	a5,s0,+00000028
	c.srli	a0,00000010
	sh	a0,s4,+00000000
	bgeu	a5,a0,000000002303FEA0

l2303FDFA:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,000000002303FE4C

l2303FE10:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002303A75A
	andi	a0,a0,+0000003E
	jal	ra,000000002303A75A
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	and	s2,s2,a5
	c.lw	s1,16(a4)
	or	a0,s2,a0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l2303FE4C:
	lhu	a5,s0,+00000028
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000002
	c.beqz	a0,000000002303FE74

l2303FE6A:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l2303FE74:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,000000002303E716
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l2303FEA0:
	c.lw	s0,116(a5)
	beq	a5,zero,00000000230400EC

l2303FEA6:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	bne	a0,zero,00000000230400E8

l2303FEBE:
	lw	s5,s0,+00000074

l2303FEC2:
	lw	a1,s3,+00000000
	lhu	a4,s4,+00000000
	c.add	a4,a1
	beq	s5,zero,000000002303FF56

l2303FED0:
	lw	a3,s5,+00000010
	lbu	a2,a3,+00000005
	lbu	a5,a3,+00000004
	c.slli	a2,08
	c.or	a5,a2
	lbu	a2,a3,+00000006
	c.slli	a2,10
	c.or	a2,a5
	lbu	a5,a3,+00000007
	c.slli	a5,18
	c.or	a5,a2
	lhu	a2,s5,+00000008
	c.add	a2,a5
	sub	a2,a4,a2
	bge	a2,zero,0000000023040154

l2303FEFE:
	c.sub	a4,a5
	bge	zero,a4,000000002303FF56

l2303FF04:
	c.sub	a5,a1
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000002
	c.beqz	a0,000000002303FF2A

l2303FF20:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l2303FF2A:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,000000002303E716
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l2303FF56:
	sw	s5,s0,+00000074
	c.j	00000000230400EC

l2303FF5C:
	sb	zero,s0,+00000043
	c.j	000000002303FCA8

l2303FF62:
	c.lw	s0,80(a3)
	sub	a3,a4,a3
	blt	zero,a3,00000000230400B2

l2303FF6C:
	lhu	a3,s0,+0000001A
	andi	a2,a3,+00000004
	c.beqz	a2,000000002303FF88

l2303FF76:
	c.andi	a3,FFFFFFFB
	sh	a3,s0,+0000001A
	lhu	a3,s0,+0000004A
	sh	zero,s0,+0000006A
	sh	a3,s0,+00000048

l2303FF88:
	lh	a3,s0,+0000003C
	lhu	a2,s0,+0000003E
	c.sw	s0,68(a4)
	c.srai	a3,00000003
	c.add	a3,a2
	sh	a3,s0,+00000040
	sh	zero,s0,+00000042
	c.li	a4,00000003
	bgeu	a4,a6,0000000023040004

l2303FFA4:
	lhu	a3,s0,+00000048
	lhu	a4,s0,+0000004A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a4,000000002303FFEE

l2303FFB4:
	lhu	a2,s0,+0000001A
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.and	a4,a2
	lhu	a2,s0,+00000032
	sltiu	a4,a4,+00000001
	c.addi	a4,00000001
	add	a4,a4,a2
	c.mv	a2,a4
	c.slli	a4,10
	c.srli	a4,00000010
	bgeu	a5,a4,000000002303FFDA

l2303FFD8:
	c.mv	a2,a5

l2303FFDA:
	add	a5,a3,a2

l2303FFDE:
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a3,000000002303FFE8

l2303FFE6:
	c.li	a5,FFFFFFFF

l2303FFE8:
	sh	a5,s0,+00000048
	c.j	0000000023040004

l2303FFEE:
	lhu	a4,s0,+0000006A
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,a4,0000000023040068

l2303FFFC:
	bgeu	a5,a3,000000002304006C

l23040000:
	sh	a5,s0,+0000006A

l23040004:
	c.lw	s0,112(a1)
	addi	s2,s0,+00000066
	c.mv	a0,s2
	jal	ra,000000002303FADE
	c.lw	s0,108(a1)
	c.sw	s0,112(a0)
	c.mv	a0,s2
	jal	ra,000000002303FADE
	c.lw	s0,112(a5)
	c.sw	s0,108(a0)
	sb	zero,s0,+0000001C
	sltiu	a4,a5,+00000001
	sub	a4,zero,a4
	sh	a4,s0,+00000030
	c.bnez	a0,0000000023040034

l23040030:
	sh	zero,s0,+00000068

l23040034:
	lui	a3,0004200E
	lhu	a4,s0,+00000064
	lhu	a3,a3,+0000032A
	c.add	a4,a3
	sh	a4,s0,+00000064
	lhu	a4,s0,+0000001A
	slli	a3,a4,00000014
	bge	a3,zero,000000002303FCA8

l23040052:
	c.bnez	a5,00000000230400AA

l23040054:
	c.bnez	a0,000000002304007A

l23040056:
	lhu	a5,s0,+0000001A
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000001A
	c.j	000000002303FCA8

l23040068:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l2304006C:
	c.sub	a5,a3
	sh	a5,s0,+0000006A
	lhu	a5,s0,+00000032
	c.add	a5,a3
	c.j	000000002303FFDE

l2304007A:
	lw	s2,s0,+0000004C
	c.lw	a0,16(a4)

l23040080:
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	sub	a0,s2,a0
	blt	zero,a0,000000002303FCA8

l230400A8:
	c.j	0000000023040056

l230400AA:
	lw	s2,s0,+0000004C
	c.lw	a5,16(a4)
	c.j	0000000023040080

l230400B2:
	c.mv	a0,s0
	jal	ra,0000000023041A96
	c.j	000000002303FCA8

l230400BA:
	c.sub	a1,a4
	c.slli	a1,10
	sh	a5,a0,+00000008
	sh	zero,a0,+0000000A
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	000000002303FD6E

l230400CC:
	c.sub	a5,a3
	bge	a5,zero,000000002303FD9C

l230400D2:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.j	000000002303FD9C

l230400E0:
	c.lw	a0,0(a5)
	c.sw	s0,116(a5)
	jal	ra,000000002303ECBA

l230400E8:
	c.lw	s0,116(a0)
	c.bnez	a0,00000000230400E0

l230400EC:
	lhu	a3,s4,+00000000
	lhu	a5,s0,+00000028
	lw	a4,s3,+00000000
	c.mv	a0,s0
	c.sub	a5,a3
	c.add	a4,a3
	c.sw	s0,36(a4)
	sh	a5,s0,+00000028
	jal	ra,000000002303EC1A
	c.lw	s1,4(a5)
	lhu	a4,a5,+00000008
	c.beqz	a4,000000002304011C

l23040110:
	lui	a4,0004200E
	sw	a5,a4,+0000032C
	sw	zero,s1,+00000004

l2304011C:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,0000000023040146

l23040132:
	lui	a5,0004200E
	addi	a5,a5,+00000330
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000020
	sb	a4,a5,+00000000

l23040146:
	lui	s2,0004200E
	lui	s4,0004200E
	c.li	s5,00000004
	c.li	s6,00000007
	c.j	0000000023040294

l23040154:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,00000000230401CA

l23040168:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000002
	c.bnez	a0,00000000230401CA

l2304017E:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.li	a0,00000001
	jal	ra,000000002303A75A
	c.lw	s1,16(a5)
	or	a0,s2,a0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l230401CA:
	lw	s2,s5,+00000000
	c.mv	a0,s5
	jal	ra,000000002303ECBA
	c.mv	s5,s2
	c.j	000000002303FEC2

l230401D8:
	sw	a5,s3,+00000000
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	lhu	s7,s1,+00000008
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.lw	s0,36(a5)
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s7,a5
	c.add	a0,s7
	c.sw	s0,36(a0)
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.lw	s1,16(a5)
	lhu	s7,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lhu	a5,s0,+00000028
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s7
	sub	a0,a5,a0
	sh	a0,s0,+00000028
	c.mv	a0,s0
	jal	ra,000000002303EC1A
	c.lw	s1,4(a1)
	lhu	a5,a1,+00000008
	c.beqz	a5,0000000023040258

l23040248:
	addi	a5,s2,+0000032C
	c.lw	a5,0(a0)
	c.beqz	a0,00000000230402CE

l23040250:
	jal	ra,000000002303E7C6

l23040254:
	sw	zero,s1,+00000004

l23040258:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,000000002304028A

l2304026E:
	addi	a4,s4,+00000330
	lbu	a5,a4,+00000000
	ori	a5,a5,+00000020
	sb	a5,a4,+00000000
	lbu	a5,s0,+00000014
	bne	a5,s5,000000002304028A

l23040286:
	sb	s6,s0,+00000014

l2304028A:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	c.sw	s0,116(a5)
	jal	ra,000000002303ECBA

l23040294:
	c.lw	s0,116(s1)
	c.beqz	s1,00000000230402BC

l23040298:
	c.lw	s1,16(a4)
	lbu	a3,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a3,08
	c.or	a3,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a3,a5
	lbu	a5,a4,+00000007
	c.slli	a5,18
	c.or	a5,a3
	c.lw	s0,36(a3)
	beq	a5,a3,00000000230401D8

l230402BC:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,00000000230402D2

l230402C6:
	c.andi	a5,FFFFFFFE

l230402C8:
	ori	a5,a5,+00000002
	c.j	00000000230402D6

l230402CE:
	c.sw	a5,0(a1)
	c.j	0000000023040254

l230402D2:
	ori	a5,a5,+00000001

l230402D6:
	sh	a5,s0,+0000001A

l230402DA:
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

l230402F0:
	c.lw	s0,116(s1)
	c.li	s2,00000000
	addi	a6,a5,-00000001
	c.bnez	s1,0000000023040324

l230402FA:
	lui	a0,00042015
	addi	a0,a0,+000005D8
	jal	ra,000000002303ECFA
	c.sw	s0,116(a0)
