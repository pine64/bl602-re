;;; Segment .text (23000300)

l2304032A:
	c.mv	a0,s0
	c.jalr	a5

l2304032E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l2304033C:
	c.li	a0,00000000
	c.jr	ra

;; netif_init: 23040340
;;   Called from:
;;     2303CF7A (in lwip_init)
netif_init proc
	c.jr	ra

;; netif_set_ipaddr: 23040342
;;   Called from:
;;     23055DF2 (in set_if)
netif_set_ipaddr proc
	c.beqz	a0,000000002304035E

l23040344:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a1,0000000023040352

l2304034A:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23040352:
	c.addi4spn	a2,0000000C
	jal	ra,00000000230402E4
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304035E:
	c.jr	ra

;; netif_set_netmask: 23040360
;;   Called from:
;;     23055E1C (in set_if)
netif_set_netmask proc
	c.beqz	a0,0000000023040376

l23040362:
	c.bnez	a1,000000002304036C

l23040364:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l2304036C:
	c.lw	a1,0(a5)
	c.lw	a0,8(a4)
	beq	a5,a4,0000000023040376

l23040374:
	c.sw	a0,8(a5)

l23040376:
	c.jr	ra

;; netif_set_gw: 23040378
;;   Called from:
;;     23055E08 (in set_if)
netif_set_gw proc
	c.beqz	a0,000000002304038E

l2304037A:
	c.bnez	a1,0000000023040384

l2304037C:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23040384:
	c.lw	a1,0(a5)
	c.lw	a0,12(a4)
	beq	a5,a4,000000002304038E

l2304038C:
	c.sw	a0,12(a5)

l2304038E:
	c.jr	ra

;; netif_set_addr: 23040390
;;   Called from:
;;     2303A5DC (in netifapi_do_netif_set_addr)
;;     2303D3F4 (in dhcp_bind)
;;     2303DDF2 (in dhcp_recv)
;;     2303E1F8 (in dhcp_release_and_stop)
;;     230404AA (in netif_add)
netif_set_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s2,a2
	c.mv	s0,a1
	c.bnez	a1,00000000230403AA

l230403A2:
	lui	s0,0002308E
	addi	s0,s0,-00000174

l230403AA:
	bne	s2,zero,00000000230403B6

l230403AE:
	lui	s2,0002308E
	addi	s2,s2,-00000174

l230403B6:
	c.bnez	a3,00000000230403C0

l230403B8:
	lui	a3,0002308E
	addi	a3,a3,-00000174

l230403C0:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230403C8

l230403C4:
	c.li	a5,00000000
	c.j	00000000230403D8

l230403C8:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,00000000230402E4
	c.lwsp	a2,000000A4
	c.li	a5,00000001

l230403D8:
	lw	a4,s2,+00000000
	c.lw	s1,8(a2)
	beq	a4,a2,00000000230403E4

l230403E2:
	c.sw	s1,8(a4)

l230403E4:
	c.lw	a3,0(a4)
	c.lw	s1,12(a3)
	beq	a4,a3,00000000230403EE

l230403EC:
	c.sw	s1,12(a4)

l230403EE:
	c.bnez	a5,00000000230403FA

l230403F0:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230402E4

l230403FA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; netif_add: 23040406
;;   Called from:
;;     2303A5BE (in netifapi_do_netif_add)
netif_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.bnez	a0,0000000023040426

l23040414:
	c.li	s0,00000000

l23040416:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23040426:
	c.beqz	a5,0000000023040414

l23040428:
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.bnez	a1,0000000023040438

l23040430:
	lui	s1,0002308E
	addi	s1,s1,-00000174

l23040438:
	bne	s2,zero,0000000023040444

l2304043C:
	lui	s2,0002308E
	addi	s2,s2,-00000174

l23040444:
	c.bnez	a3,000000002304044E

l23040446:
	lui	a3,0002308E
	addi	a3,a3,-00000174

l2304044E:
	lui	a2,00023040
	addi	a2,a2,+00000296
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
	jal	ra,0000000023070EB8
	c.lwsp	tp,000000C4
	lui	s3,0004200E
	c.lwsp	a2,00000008
	c.sw	s0,36(a4)
	lbu	a4,s3,-00000088
	c.lwsp	zero,000000A4
	sw	a6,s0,+00000010
	sb	a4,s0,+00000044
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000048
	jal	ra,0000000023040390
	c.lwsp	s0,000000E4
	c.mv	a0,s0
	addi	s3,s3,-00000088
	c.jalr	a5
	c.bnez	a0,0000000023040414

l230404BA:
	lui	a5,00042020
	lw	a2,a5,-00000270
	c.mv	a4,a5
	addi	a1,zero,+000000FF

l230404C8:
	lbu	a5,s0,+00000044
	bne	a5,a1,00000000230404D4

l230404D0:
	sb	zero,s0,+00000044

l230404D4:
	lbu	a5,s0,+00000044
	c.mv	a3,a2

l230404DA:
	c.bnez	a3,0000000023040508

l230404DC:
	addi	a1,zero,+000000FE
	c.li	a3,00000000
	beq	a5,a1,00000000230404EC

l230404E6:
	c.addi	a5,00000001
	andi	a3,a5,+000000FF

l230404EC:
	lbu	a5,s0,+00000041
	c.sw	s0,0(a2)
	sb	a3,s3,+00000000
	sw	s0,a4,+00000D90
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023040416

l23040500:
	c.mv	a0,s0
	jal	ra,000000002303EF9A
	c.j	0000000023040416

l23040508:
	lbu	a0,a3,+00000044
	bne	a0,a5,0000000023040518

l23040510:
	c.addi	a5,00000001
	sb	a5,s0,+00000044
	c.j	00000000230404C8

l23040518:
	c.lw	a3,0(a3)
	c.j	00000000230404DA

;; netif_set_default: 2304051C
;;   Called from:
;;     230282A6 (in wifi_mgmr_sta_enable)
;;     23028504 (in wifi_mgmr_ap_enable)
netif_set_default proc
	lui	a5,00042020
	sw	a0,a5,+00000D8C
	c.jr	ra

;; netif_set_up: 23040526
;;   Called from:
;;     230282AE (in wifi_mgmr_sta_enable)
;;     2302850C (in wifi_mgmr_ap_enable)
;;     23047D7E (in dhcpd_start)
netif_set_up proc
	c.beqz	a0,000000002304055E

l23040528:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023040556

l2304053A:
	ori	a5,a5,+00000001
	sb	a5,a0,+00000041
	c.lw	a0,28(a5)
	c.beqz	a5,0000000023040548

l23040546:
	c.jalr	a5

l23040548:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,000000002304029A

l23040556:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304055E:
	c.jr	ra

;; netif_set_down: 23040560
;;   Called from:
;;     230405E6 (in netif_remove)
netif_set_down proc
	c.beqz	a0,000000002304059E

l23040562:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023040596

l23040574:
	andi	a4,a5,-00000002
	sb	a4,a0,+00000041
	c.andi	a5,00000008
	c.beqz	a5,0000000023040584

l23040580:
	jal	ra,000000002303E7BE

l23040584:
	lw	t1,s0,+0000001C
	beq	t1,zero,0000000023040596

l2304058C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l23040596:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304059E:
	c.jr	ra

;; netif_remove: 230405A0
netif_remove proc
	c.beqz	a0,0000000023040626

l230405A2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230405CC

l230405B0:
	addi	s1,a0,+00000004
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023041C02
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023045AA4
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023041252

l230405CC:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230405DC

l230405D6:
	c.mv	a0,s0
	jal	ra,000000002303EED6

l230405DC:
	lbu	a5,s0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,00000000230405EA

l230405E4:
	c.mv	a0,s0
	jal	ra,0000000023040560

l230405EA:
	lui	a5,00042020
	lw	a4,a5,-00000274
	bne	a4,s0,00000000230405FA

l230405F6:
	sw	zero,a5,+00000D8C

l230405FA:
	lui	a4,00042020
	lw	a5,a4,-00000270
	bne	a5,s0,0000000023040618

l23040606:
	c.lw	s0,0(a5)
	sw	a5,a4,+00000D90

l2304060C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23040616:
	c.mv	a5,a4

l23040618:
	c.beqz	a5,000000002304060C

l2304061A:
	c.lw	a5,0(a4)
	bne	a4,s0,0000000023040616

l23040620:
	c.lw	s0,0(a4)
	c.sw	a5,0(a4)
	c.j	000000002304060C

l23040626:
	c.jr	ra

;; netif_set_status_callback: 23040628
;;   Called from:
;;     230292A2 (in bl606a0_wifi_netif_init)
netif_set_status_callback proc
	c.beqz	a0,000000002304062C

l2304062A:
	c.sw	a0,28(a1)

l2304062C:
	c.jr	ra

;; netif_set_link_up: 2304062E
netif_set_link_up proc
	c.beqz	a0,0000000023040670

l23040630:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000004
	c.bnez	a4,0000000023040668

l23040642:
	ori	a5,a5,+00000004
	sb	a5,a0,+00000041
	jal	ra,000000002303DEA2
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002304029A
	lw	t1,s0,+00000020
	beq	t1,zero,0000000023040668

l2304065E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l23040668:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23040670:
	c.jr	ra

;; netif_set_link_down: 23040672
netif_set_link_down proc
	c.beqz	a0,000000002304068E

l23040674:
	lbu	a4,a0,+00000041
	andi	a3,a4,+00000004
	c.beqz	a3,000000002304068E

l2304067E:
	lw	t1,a0,+00000020
	c.andi	a4,FFFFFFFB
	sb	a4,a0,+00000041
	beq	t1,zero,000000002304068E

l2304068C:
	c.jr	t1

l2304068E:
	c.jr	ra

;; netif_get_by_index: 23040690
;;   Called from:
;;     2304116E (in raw_sendto)
;;     2304119C (in raw_sendto)
;;     23041836 (in tcp_connect)
;;     2304413A (in tcp_output_control_segment)
;;     23044B3C (in tcp_output)
;;     230458E0 (in udp_sendto_chksum)
;;     23045928 (in udp_sendto_chksum)
netif_get_by_index proc
	c.li	a5,00000000
	c.beqz	a0,000000002304069E

l23040694:
	lui	a5,00042020
	lw	a5,a5,-00000270

l2304069C:
	c.bnez	a5,00000000230406A2

l2304069E:
	c.mv	a0,a5
	c.jr	ra

l230406A2:
	lbu	a4,a5,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	beq	a4,a0,000000002304069E

l230406B0:
	c.lw	a5,0(a5)
	c.j	000000002304069C

;; netif_find: 230406B4
;;   Called from:
;;     2303AD76 (in lwip_setsockopt_callback)
netif_find proc
	c.bnez	a0,00000000230406BA

l230406B6:
	c.li	a0,00000000
	c.jr	ra

l230406BA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023070AF0
	lui	a4,00042020
	andi	a5,a0,+000000FF
	lw	a0,a4,-00000270

l230406D4:
	c.bnez	a0,00000000230406E0

l230406D6:
	c.li	a0,00000000

l230406D8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230406E0:
	lbu	a4,a0,+00000044
	bne	a4,a5,0000000023040700

l230406E8:
	lbu	a3,s0,+00000000
	lbu	a4,a0,+00000042
	bne	a3,a4,0000000023040700

l230406F4:
	lbu	a3,s0,+00000001
	lbu	a4,a0,+00000043
	beq	a3,a4,00000000230406D8

l23040700:
	c.lw	a0,0(a0)
	c.j	00000000230406D4

;; pbuf_skip_const: 23040704
;;   Called from:
;;     23040D3E (in pbuf_take_at)
;;     23040DD2 (in pbuf_try_get_at)
;;     23040E1C (in pbuf_put_at)
pbuf_skip_const proc
	c.beqz	a0,000000002304070E

l23040706:
	lhu	a5,a0,+0000000A
	bgeu	a1,a5,0000000023040716

l2304070E:
	c.beqz	a2,0000000023040714

l23040710:
	sh	a1,a2,+00000000

l23040714:
	c.jr	ra

l23040716:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	0000000023040704

;; pbuf_free_ooseq_callback: 23040720
pbuf_free_ooseq_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303A3A6
	lui	a5,00042020
	sb	zero,a5,+00000D94
	jal	ra,000000002303A3B6
	lui	a5,00042020
	lw	a0,a5,-00000154

l2304073C:
	c.bnez	a0,0000000023040744

l2304073E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23040744:
	c.lw	a0,116(a5)
	c.beqz	a5,0000000023040750

l23040748:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230419D0

l23040750:
	c.lw	a0,12(a0)
	c.j	000000002304073C

;; pbuf_add_header_impl: 23040754
;;   Called from:
;;     2304082A (in pbuf_add_header)
;;     2304087A (in pbuf_header)
;;     2304088C (in pbuf_header_force)
pbuf_add_header_impl proc
	c.mv	a5,a0
	c.beqz	a0,00000000230407B2

l23040758:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,00000000230407B4

l23040760:
	c.li	a0,00000000
	c.beqz	a1,00000000230407B4

l23040764:
	lhu	a4,a5,+00000008
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a0,00000001
	bltu	a4,a3,00000000230407B4

l2304077A:
	lb	a0,a5,+0000000C
	bge	a0,zero,0000000023040794

l23040782:
	c.lw	a5,4(a2)
	c.li	a0,00000001
	sub	a1,a2,a1
	addi	a2,a5,+00000010
	bgeu	a1,a2,000000002304079E

l23040792:
	c.jr	ra

l23040794:
	c.li	a0,00000001
	c.beqz	a2,00000000230407B4

l23040798:
	c.lw	a5,4(a2)
	sub	a1,a2,a1

l2304079E:
	lhu	a2,a5,+0000000A
	c.sw	a5,4(a1)
	sh	a4,a5,+00000008
	c.add	a3,a2
	sh	a3,a5,+0000000A
	c.li	a0,00000000
	c.jr	ra

l230407B2:
	c.li	a0,00000001

l230407B4:
	c.jr	ra

;; pbuf_alloc_reference: 230407B6
;;   Called from:
;;     230409BC (in pbuf_alloc)
pbuf_alloc_reference proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000D
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,0000000023040230
	c.beqz	a0,00000000230407EA

l230407CA:
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

l230407EA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_alloced_custom: 230407F2
;;   Called from:
;;     2302490C (in tcpip_stack_input)
;;     23024A72 (in tcpip_stack_input)
pbuf_alloced_custom proc
	c.addi	a0,00000003
	c.andi	a0,FFFFFFFC
	add	a6,a1,a0
	bltu	a5,a6,0000000023040824

l230407FE:
	c.beqz	a4,0000000023040802

l23040800:
	c.add	a4,a0

l23040802:
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

l23040824:
	c.li	a0,00000000
	c.jr	ra

;; pbuf_add_header: 23040828
;;   Called from:
;;     2303F84C (in ip4_output_if_opt_src)
;;     2303F8AC (in ip4_output_if_opt_src)
;;     230410BE (in raw_sendto_if_src)
;;     23043F6E (in tcp_create_segment)
;;     23045756 (in udp_sendto_if_src_chksum)
;;     23045C00 (in ethernet_output)
;;     23047550 (in icmp_input)
;;     230475CC (in icmp_input)
pbuf_add_header proc
	c.li	a2,00000000
	jal	zero,0000000023040754

;; pbuf_remove_header: 2304082E
;;   Called from:
;;     2303F71E (in ip4_input)
;;     23040874 (in pbuf_header)
;;     23040886 (in pbuf_header_force)
;;     23040B1C (in pbuf_free_header)
;;     23041140 (in raw_sendto_if_src)
;;     23042A6A (in tcp_receive)
;;     2304338A (in tcp_input)
;;     230434F6 (in tcp_input)
;;     2304350A (in tcp_input)
;;     2304352A (in tcp_input)
;;     230455A8 (in udp_input)
;;     23045B68 (in ethernet_input)
;;     23045BB8 (in ethernet_input)
;;     230475A8 (in icmp_input)
;;     2304769A (in icmp_input)
pbuf_remove_header proc
	c.mv	a5,a0
	c.beqz	a0,0000000023040868

l23040832:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,000000002304086A

l2304083A:
	c.li	a0,00000000
	c.beqz	a1,000000002304086A

l2304083E:
	lhu	a4,a5,+0000000A
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.li	a0,00000001
	bltu	a4,a3,000000002304086A

l2304084E:
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

l23040868:
	c.li	a0,00000001

l2304086A:
	c.jr	ra

;; pbuf_header: 2304086C
;;   Called from:
;;     2302454A (in bl_output)
pbuf_header proc
	bge	a1,zero,0000000023040878

l23040870:
	sub	a1,zero,a1
	jal	zero,000000002304082E

l23040878:
	c.li	a2,00000000
	jal	zero,0000000023040754

;; pbuf_header_force: 2304087E
;;   Called from:
;;     2303F754 (in ip4_input)
;;     23045602 (in udp_input)
pbuf_header_force proc
	bge	a1,zero,000000002304088A

l23040882:
	sub	a1,zero,a1
	jal	zero,000000002304082E

l2304088A:
	c.li	a2,00000001
	jal	zero,0000000023040754

;; pbuf_free: 23040890
;;   Called from:
;;     23000384 (in cb_altcp_recv_fn)
;;     230244C2 (in bl_txdatacfm)
;;     2302C8F8 (in get_dns_request)
;;     2302CA52 (in get_dns_request)
;;     230394A8 (in httpc_free_state)
;;     230394B4 (in httpc_free_state)
;;     230397BE (in httpc_tcp_recv)
;;     23039854 (in httpc_tcp_connected)
;;     2303AA20 (in lwip_recv_tcp)
;;     2303AAB6 (in free_socket)
;;     2303C26E (in altcp_tcp_recv)
;;     2303C4E2 (in dns_send)
;;     2303C574 (in dns_send)
;;     2303C8C2 (in dns_recv)
;;     2303C96E (in dns_recv)
;;     2303C9BC (in dns_recv)
;;     2303D27E (in dhcp_discover)
;;     2303D67A (in dhcp_reboot)
;;     2303D84A (in dhcp_select)
;;     2303DABC (in dhcp_recv)
;;     2303DF86 (in dhcp_arp_reply)
;;     2303E09E (in dhcp_renew)
;;     2303E1E2 (in dhcp_release_and_stop)
;;     2303E432 (in dhcp_coarse_tmr)
;;     2303E5B2 (in etharp_free_entry)
;;     2303E7B6 (in etharp_raw)
;;     2303E876 (in etharp_input)
;;     2303E93C (in etharp_input)
;;     2303EBF0 (in etharp_query)
;;     2303EE24 (in igmp_send)
;;     2303F010 (in igmp_input)
;;     2303F040 (in igmp_input)
;;     2303F05C (in igmp_input)
;;     2303F0DC (in igmp_input)
;;     2303F4FA (in ip4_input)
;;     2303F57A (in ip4_input)
;;     2303F5A0 (in ip4_input)
;;     2303F658 (in ip4_input)
;;     2303F676 (in ip4_input)
;;     2303F6EC (in ip4_input)
;;     2303F776 (in ip4_input)
;;     23040A1A (in pbuf_alloc)
;;     23040AC2 (in pbuf_realloc)
;;     23040B10 (in pbuf_free_header)
;;     23041136 (in raw_sendto_if_src)
;;     23041720 (in tcp_seg_free)
;;     23041A0E (in tcp_pcb_purge)
;;     23041FE6 (in tcp_recv_null)
;;     2304216C (in tcp_shutdown)
;;     2304363E (in tcp_input)
;;     23043746 (in tcp_input)
;;     23043DB6 (in tcp_input)
;;     23043F32 (in tcp_create_segment)
;;     23044190 (in tcp_output_control_segment)
;;     2304435E (in tcp_write)
;;     23044726 (in tcp_split_unsent_seg)
;;     2304544C (in udp_input)
;;     23045850 (in udp_sendto_if_src_chksum)
;;     23045B8C (in ethernet_input)
;;     230462E0 (in recv_udp)
;;     2304693A (in recv_raw)
;;     23046A40 (in recv_tcp)
;;     23046CAE (in netconn_drain)
;;     23047408 (in netbuf_delete)
;;     23047444 (in netbuf_alloc)
;;     2304746E (in netbuf_free)
;;     23047518 (in icmp_input)
;;     23047584 (in icmp_input)
;;     2304758A (in icmp_input)
;;     230475BE (in icmp_input)
;;     23047692 (in icmp_input)
;;     230476BE (in icmp_input)
;;     2304778E (in icmp_dest_unreach)
;;     2304781C (in dhcp_server_recv)
;;     23047866 (in dhcp_server_recv)
;;     23048842 (in iperf_server_udp_recv_fn)
;;     2304930A (in ping_timeout)
;;     23049472 (in ping_recv)
;;     2304A446 (in sntp_recv)
;;     2304A5C8 (in sntp_send_request)
pbuf_free proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,00000000
	c.beqz	a0,00000000230408E0

l230408A0:
	c.mv	a1,a0
	c.li	s0,00000000
	c.li	s2,00000002
	c.li	s3,00000001

l230408A8:
	c.swsp	a1,00000084
	jal	ra,000000002303A3A6
	c.lwsp	a2,00000064
	lbu	s1,a1,+0000000E
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	sb	s1,a1,+0000000E
	jal	ra,000000002303A3B6
	c.bnez	s1,00000000230408E0

l230408C4:
	c.lwsp	a2,00000064
	lbu	a5,a1,+0000000D
	c.lw	a1,0(s1)
	c.andi	a5,00000002
	c.beqz	a5,00000000230408F0

l230408D0:
	c.lw	a1,16(a5)
	c.mv	a0,a1
	c.jalr	a5

l230408D6:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.mv	a1,s1
	c.bnez	s1,00000000230408A8

l230408E0:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230408F0:
	lbu	a5,a1,+0000000C
	c.li	a0,0000000E
	c.andi	a5,0000000F
	beq	a5,s2,0000000023040902

l230408FC:
	bne	a5,s3,0000000023040908

l23040900:
	c.li	a0,0000000D

l23040902:
	jal	ra,000000002304024E
	c.j	00000000230408D6

l23040908:
	c.bnez	a5,00000000230408D6

l2304090A:
	c.mv	a0,a1
	jal	ra,000000002303FD02
	c.j	00000000230408D6

;; pbuf_alloc: 23040912
;;   Called from:
;;     2302C908 (in get_dns_request)
;;     230399CA (in httpc_init_connection_common.constprop.5)
;;     2303C478 (in dns_send)
;;     2303D056 (in dhcp_create_msg)
;;     2303E702 (in etharp_raw)
;;     2303ED8E (in igmp_send)
;;     23040DB0 (in pbuf_clone)
;;     230410CE (in raw_sendto_if_src)
;;     2304403C (in tcp_output_alloc_header_common.constprop.6)
;;     23044306 (in tcp_write)
;;     23044528 (in tcp_split_unsent_seg)
;;     23044752 (in tcp_enqueue_flags)
;;     23045768 (in udp_sendto_if_src_chksum)
;;     23047452 (in netbuf_alloc)
;;     23047570 (in icmp_input)
;;     230476EC (in icmp_dest_unreach)
;;     2304784A (in dhcp_server_recv)
;;     2304924E (in ping_timeout)
;;     2304A594 (in sntp_send_request)
pbuf_alloc proc
	addi	a5,zero,+00000041
	beq	a2,a5,0000000023040A6C

l2304091A:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	bltu	a5,a2,0000000023040946

l2304092C:
	c.li	a5,00000001
	beq	a2,a5,00000000230409AC

l23040932:
	c.li	s1,00000000

l23040934:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23040946:
	slli	s0,a0,00000010
	addi	a5,zero,+00000182
	c.srli	s0,00000010
	beq	a2,a5,00000000230409C0

l23040954:
	addi	a5,zero,+00000280
	bne	a2,a5,0000000023040932

l2304095C:
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
	bltu	s0,a5,0000000023040932

l2304097C:
	bltu	a0,a5,0000000023040932

l23040980:
	jal	ra,000000002303FFF8
	c.mv	s1,a0
	c.beqz	a0,0000000023040934

l23040988:
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
	c.j	0000000023040934

l230409AC:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030

l230409BC:
	jal	zero,00000000230407B6

l230409C0:
	c.lui	s2,00010000
	c.li	s3,00000000
	c.li	s1,00000000
	addi	s4,zero,+000002F8
	addi	s2,s2,+00000082

l230409CE:
	c.li	a0,0000000E
	c.swsp	a1,00000084
	jal	ra,0000000023040230
	c.lwsp	a2,00000064
	c.bnez	a0,0000000023040A20

l230409DA:
	lui	s0,00042020
	jal	ra,000000002303A3A6
	lbu	s2,s0,-0000026C
	c.li	a5,00000001
	sb	a5,s0,+00000D94
	andi	s2,s2,+000000FF
	jal	ra,000000002303A3B6
	bne	s2,zero,0000000023040A14

l230409F8:
	lui	a0,00023040
	c.li	a1,00000000
	addi	a0,a0,+00000720
	jal	ra,000000002303BDA6
	c.beqz	a0,0000000023040A14

l23040A08:
	jal	ra,000000002303A3A6
	sb	zero,s0,+00000D94
	jal	ra,000000002303A3B6

l23040A14:
	beq	s1,zero,0000000023040932

l23040A18:
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.j	0000000023040932

l23040A20:
	addi	a5,s0,+00000003
	c.andi	a5,FFFFFFFC
	sub	a5,s4,a5
	c.mv	a4,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a1,a5,0000000023040A36

l23040A34:
	c.mv	a4,a1

l23040A36:
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
	c.beqz	s1,0000000023040A68

l23040A56:
	sw	a0,s3,+00000000

l23040A5A:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	s0,00000000
	c.mv	s3,a0
	c.bnez	a1,00000000230409CE

l23040A66:
	c.j	0000000023040934

l23040A68:
	c.mv	s1,a0
	c.j	0000000023040A5A

l23040A6C:
	c.li	a0,00000000
	c.j	00000000230409BC

;; pbuf_realloc: 23040A70
;;   Called from:
;;     2302CA3A (in get_dns_request)
;;     2303D184 (in dhcp_option_trailer)
;;     2303F55E (in ip4_input)
;;     2304265E (in tcp_oos_insert_segment)
;;     23042B6E (in tcp_receive)
;;     23042C24 (in tcp_receive)
;;     23043108 (in tcp_receive)
;;     23043186 (in tcp_receive)
;;     23043216 (in tcp_receive)
;;     23044624 (in tcp_split_unsent_seg)
;;     23047A7A (in dhcp_server_recv)
pbuf_realloc proc
	lhu	a5,a0,+00000008
	bgeu	a1,a5,0000000023040AE8

l23040A78:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	sub	a5,a1,a5

l23040A88:
	lhu	a1,s0,+0000000A
	bltu	a1,s1,0000000023040AD4

l23040A90:
	lbu	a5,s0,+0000000C
	c.andi	a5,0000000F
	c.bnez	a5,0000000023040AB6

l23040A98:
	beq	a1,s1,0000000023040AB6

l23040A9C:
	lbu	a5,s0,+0000000D
	c.andi	a5,00000002
	c.bnez	a5,0000000023040AB6

l23040AA4:
	c.lw	s0,4(a1)
	c.mv	a0,s0
	c.sub	a1,s0
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,000000002303FE6E
	c.mv	s0,a0

l23040AB6:
	c.lw	s0,0(a0)
	sh	s1,s0,+0000000A
	sh	s1,s0,+00000008
	c.beqz	a0,0000000023040AC6

l23040AC2:
	jal	ra,0000000023040890

l23040AC6:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23040AD4:
	lhu	a4,s0,+00000008
	c.sub	s1,a1
	c.slli	s1,10
	c.add	a4,a5
	sh	a4,s0,+00000008
	c.srli	s1,00000010
	c.lw	s0,0(s0)
	c.j	0000000023040A88

l23040AE8:
	c.jr	ra

;; pbuf_free_header: 23040AEA
;;   Called from:
;;     2303979E (in httpc_tcp_recv)
;;     2303A9A4 (in lwip_recv_tcp)
pbuf_free_header proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0

l23040AF4:
	c.beqz	a1,0000000023040B20

l23040AF6:
	c.beqz	s0,0000000023040B20

l23040AF8:
	lhu	a5,s0,+0000000A
	bltu	a1,a5,0000000023040B1A

l23040B00:
	c.sub	a1,a5
	c.lw	s0,0(s1)
	c.slli	a1,10
	c.srli	a1,00000010
	sw	zero,s0,+00000000
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,0000000023040890
	c.mv	s0,s1
	c.lwsp	a2,00000064
	c.j	0000000023040AF4

l23040B1A:
	c.mv	a0,s0
	jal	ra,000000002304082E

l23040B20:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_clen: 23040B2C
;;   Called from:
;;     23042856 (in tcp_free_acked_segments.isra.3)
;;     23044346 (in tcp_write)
;;     23044608 (in tcp_split_unsent_seg)
;;     2304465C (in tcp_split_unsent_seg)
;;     230446E8 (in tcp_split_unsent_seg)
;;     230447BA (in tcp_enqueue_flags)
pbuf_clen proc
	c.li	a5,00000000

l23040B2E:
	c.bnez	a0,0000000023040B34

l23040B30:
	c.mv	a0,a5
	c.jr	ra

l23040B34:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.lw	a0,0(a0)
	c.j	0000000023040B2E

;; pbuf_ref: 23040B3E
;;   Called from:
;;     2302462E (in bl_output)
;;     2303EBE0 (in etharp_query)
;;     23040B98 (in pbuf_chain)
;;     23041776 (in tcp_seg_copy)
pbuf_ref proc
	c.beqz	a0,0000000023040B60

l23040B40:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002303A3A6
	lbu	a5,s0,+0000000E
	c.addi	a5,00000001
	sb	a5,s0,+0000000E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303A3B6

l23040B60:
	c.jr	ra

;; pbuf_cat: 23040B62
;;   Called from:
;;     23024A7A (in tcpip_stack_input)
;;     23039776 (in httpc_tcp_recv)
;;     23040B8C (in pbuf_chain)
;;     23042F44 (in tcp_receive)
pbuf_cat proc
	c.beqz	a0,0000000023040B82

l23040B64:
	c.bnez	a1,0000000023040B6A

l23040B66:
	c.jr	ra

l23040B68:
	c.mv	a0,a4

l23040B6A:
	lhu	a5,a0,+00000008
	lhu	a3,a1,+00000008
	c.lw	a0,0(a4)
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a0,+00000008
	c.bnez	a4,0000000023040B68

l23040B80:
	c.sw	a0,0(a1)

l23040B82:
	c.jr	ra

;; pbuf_chain: 23040B84
;;   Called from:
;;     230410DE (in raw_sendto_if_src)
;;     23045778 (in udp_sendto_if_src_chksum)
pbuf_chain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023040B62
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023040B3E

;; pbuf_copy: 23040B9C
;;   Called from:
;;     23040DBA (in pbuf_clone)
;;     230475B6 (in icmp_input)
;;     23047860 (in dhcp_server_recv)
pbuf_copy proc
	c.beqz	a0,0000000023040C46

l23040B9E:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.beqz	a1,0000000023040C06

l23040BB0:
	lhu	a4,a0,+00000008
	lhu	a5,a1,+00000008
	c.mv	s1,a0
	bltu	a4,a5,0000000023040C06

l23040BBE:
	c.li	s4,00000000
	c.li	s3,00000000

l23040BC2:
	lhu	s2,s1,+0000000A
	lhu	a5,s0,+0000000A
	sub	s2,s2,s3
	sub	a5,a5,s4
	bgeu	a5,s2,0000000023040BD8

l23040BD6:
	c.mv	s2,a5

l23040BD8:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.add	a1,s4
	c.add	a0,s3
	jal	ra,0000000023070C7C
	lhu	a4,s0,+0000000A
	c.add	s4,s2
	c.add	s3,s2
	lhu	a5,s1,+0000000A
	bltu	s4,a4,0000000023040BFA

l23040BF6:
	c.lw	s0,0(s0)
	c.li	s4,00000000

l23040BFA:
	bne	s3,a5,0000000023040C1A

l23040BFE:
	c.lw	s1,0(s1)
	c.bnez	s1,0000000023040C18

l23040C02:
	c.li	a0,00000000
	c.beqz	s0,0000000023040C08

l23040C06:
	c.li	a0,FFFFFFF0

l23040C08:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23040C18:
	c.li	s3,00000000

l23040C1A:
	c.beqz	s0,0000000023040C2C

l23040C1C:
	lhu	a4,s0,+0000000A
	lhu	a5,s0,+00000008
	bne	a4,a5,0000000023040C2C

l23040C28:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023040C42

l23040C2C:
	lhu	a4,s1,+0000000A
	lhu	a5,s1,+00000008
	bne	a4,a5,0000000023040C3C

l23040C38:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023040C42

l23040C3C:
	c.bnez	s0,0000000023040BC2

l23040C3E:
	c.li	a0,00000000
	c.j	0000000023040C08

l23040C42:
	c.li	a0,FFFFFFFA
	c.j	0000000023040C08

l23040C46:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_copy_partial: 23040C4A
;;   Called from:
;;     2302C88C (in get_dns_request)
;;     2302C8C4 (in get_dns_request)
;;     23039694 (in httpc_tcp_recv)
;;     23039730 (in httpc_tcp_recv)
;;     2303A98C (in lwip_recv_tcp)
;;     2303ABC2 (in lwip_recvfrom_udp_raw.isra.6)
;;     2303C6B8 (in dns_recv)
;;     2303C7AC (in dns_recv)
;;     2303C85C (in dns_recv)
;;     2303C89A (in dns_recv)
;;     2303DBE2 (in dhcp_recv)
;;     2304454C (in tcp_split_unsent_seg)
;;     23045190 (in tcp_zero_window_probe)
;;     2304A55C (in sntp_recv)
pbuf_copy_partial proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	s0,00000000
	c.beqz	a0,0000000023040C6C

l23040C5C:
	c.mv	s4,a1
	c.li	s0,00000000
	c.beqz	a1,0000000023040C6C

l23040C62:
	c.mv	s2,a0
	c.mv	s1,a2

l23040C66:
	c.beqz	s1,0000000023040C6C

l23040C68:
	bne	s2,zero,0000000023040C7E

l23040C6C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23040C7E:
	lhu	a1,s2,+0000000A
	c.beqz	a3,0000000023040C94

l23040C84:
	bltu	a3,a1,0000000023040C94

l23040C88:
	c.sub	a3,a1
	c.slli	a3,10
	c.srli	a3,00000010

l23040C8E:
	lw	s2,s2,+00000000
	c.j	0000000023040C66

l23040C94:
	c.sub	a1,a3
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	s3,a1
	bgeu	s1,a1,0000000023040CA2

l23040CA0:
	c.mv	s3,s1

l23040CA2:
	lw	a1,s2,+00000004
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	a1,a3
	add	a0,s4,s0
	c.mv	a2,s3
	c.add	s0,s3
	sub	s1,s1,s3
	jal	ra,0000000023070C7C
	c.slli	s0,10
	c.slli	s1,10
	c.srli	s0,00000010
	c.srli	s1,00000010
	c.li	a3,00000000
	c.j	0000000023040C8E

;; pbuf_take: 23040CCA
;;   Called from:
;;     2302C96A (in get_dns_request)
;;     2303C4B4 (in dns_send)
;;     23040D8A (in pbuf_take_at)
pbuf_take proc
	c.beqz	a0,0000000023040D24

l23040CCC:
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
	c.beqz	a1,0000000023040CF0

l23040CE2:
	lhu	a5,s1,+00000008
	c.mv	s0,a2
	c.li	a0,FFFFFFFF
	c.li	s3,00000000
	bgeu	a5,a2,0000000023040D1E

l23040CF0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23040D00:
	lhu	s2,s1,+0000000A
	bgeu	s0,s2,0000000023040D0A

l23040D08:
	c.mv	s2,s0

l23040D0A:
	c.lw	s1,4(a0)
	add	a1,s4,s3
	c.mv	a2,s2
	jal	ra,0000000023070C7C
	c.lw	s1,0(s1)
	sub	s0,s0,s2
	c.add	s3,s2

l23040D1E:
	c.bnez	s0,0000000023040D00

l23040D20:
	c.li	a0,00000000
	c.j	0000000023040CF0

l23040D24:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_take_at: 23040D28
;;   Called from:
;;     2302C9A4 (in get_dns_request)
;;     2302CA2C (in get_dns_request)
;;     2303C50C (in dns_send)
;;     2303C548 (in dns_send)
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
	jal	ra,0000000023040704
	c.beqz	a0,0000000023040D9C

l23040D44:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+00000008
	c.mv	s1,a0
	add	a5,a4,s0
	c.li	a0,FFFFFFFF
	blt	a3,a5,0000000023040D8E

l23040D58:
	lhu	a5,s1,+0000000A
	c.mv	s2,s0
	c.sub	a5,a4
	bge	a5,s0,0000000023040D6C

l23040D64:
	slli	s2,a5,00000010
	srli	s2,s2,00000010

l23040D6C:
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.mv	a1,s3
	c.add	a0,a4
	jal	ra,0000000023070C7C
	sub	a2,s0,s2
	c.slli	a2,10
	c.srli	a2,00000010
	c.li	a0,00000000
	c.beqz	a2,0000000023040D8E

l23040D84:
	c.lw	s1,0(a0)
	add	a1,s3,s2
	jal	ra,0000000023040CCA

l23040D8E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23040D9C:
	c.li	a0,FFFFFFFF
	c.j	0000000023040D8E

;; pbuf_clone: 23040DA0
;;   Called from:
;;     2303EC10 (in etharp_query)
;;     23046926 (in recv_raw)
pbuf_clone proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a2
	c.mv	a2,a1
	lhu	a1,s1,+00000008
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023040912
	c.mv	s0,a0
	c.beqz	a0,0000000023040DBE

l23040DB8:
	c.mv	a1,s1
	jal	ra,0000000023040B9C

l23040DBE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; pbuf_try_get_at: 23040DCA
;;   Called from:
;;     2303C756 (in dns_recv)
;;     2303C782 (in dns_recv)
;;     2303C80E (in dns_recv)
;;     2303C838 (in dns_recv)
;;     2303C914 (in dns_recv)
;;     23040DFC (in pbuf_get_at)
pbuf_try_get_at proc
	c.addi	sp,FFFFFFE0
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,0000000023040704
	c.li	a5,FFFFFFFF
	c.beqz	a0,0000000023040DF0

l23040DDA:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+0000000A
	c.li	a5,FFFFFFFF
	bgeu	a4,a3,0000000023040DF0

l23040DE8:
	c.lw	a0,4(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000

l23040DF0:
	c.lwsp	t3,00000020
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_get_at: 23040DF8
;;   Called from:
;;     23039626 (in httpc_tcp_recv)
;;     23039636 (in httpc_tcp_recv)
;;     23039646 (in httpc_tcp_recv)
;;     23040E92 (in pbuf_memcmp)
;;     2304A402 (in sntp_recv)
;;     2304A41E (in sntp_recv)
pbuf_get_at proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023040DCA
	bge	a0,zero,0000000023040E06

l23040E04:
	c.li	a0,00000000

l23040E06:
	c.lwsp	a2,00000020
	andi	a0,a0,+000000FF
	c.addi	sp,00000010
	c.jr	ra

;; pbuf_put_at: 23040E10
;;   Called from:
;;     2302C986 (in get_dns_request)
;;     2302C9C2 (in get_dns_request)
;;     2303C4FA (in dns_send)
;;     2303C52C (in dns_send)
pbuf_put_at proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a2
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,0000000023040704
	c.beqz	a0,0000000023040E36

l23040E22:
	lhu	a4,sp,+0000000E
	lhu	a5,a0,+0000000A
	bgeu	a4,a5,0000000023040E36

l23040E2E:
	c.lw	a0,4(a5)
	c.add	a5,a4
	sb	s0,a5,+00000000

l23040E36:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_memcmp: 23040E3E
;;   Called from:
;;     2303961A (in httpc_tcp_recv)
;;     23040F14 (in pbuf_memfind)
pbuf_memcmp proc
	lhu	a4,a0,+00000008
	add	a5,a1,a3
	bge	a4,a5,0000000023040E50

l23040E4A:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

l23040E50:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s0,a1

l23040E60:
	lhu	a5,s1,+0000000A
	bltu	s0,a5,0000000023040E72

l23040E68:
	c.lw	s1,0(s1)
	c.sub	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	c.bnez	s1,0000000023040E60

l23040E72:
	c.li	s3,00000000

l23040E74:
	slli	s2,s3,00000010
	srli	s2,s2,00000010
	bltu	s2,a3,0000000023040E84

l23040E80:
	c.li	a0,00000000
	c.j	0000000023040EBA

l23040E84:
	add	a1,s2,s0
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s1
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	jal	ra,0000000023040DF8
	c.lwsp	s0,00000084
	c.addi	s3,00000001
	c.lwsp	a2,000000A4
	add	a5,a2,s3
	lbu	a5,a5,-00000001
	beq	a5,a0,0000000023040E74

l23040EA8:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	c.mv	a0,s2
	bgeu	a5,s2,0000000023040EB4

l23040EB2:
	c.li	a0,FFFFFFFE

l23040EB4:
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010

l23040EBA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; pbuf_memfind: 23040EC8
;;   Called from:
;;     230395E8 (in httpc_tcp_recv)
;;     23039602 (in httpc_tcp_recv)
;;     23039670 (in httpc_tcp_recv)
;;     230396CA (in httpc_tcp_recv)
;;     230396EC (in httpc_tcp_recv)
;;     23039706 (in httpc_tcp_recv)
pbuf_memfind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lhu	a5,a0,+00000008
	add	a4,a2,a3
	blt	a5,a4,0000000023040EF6

l23040EE2:
	c.sub	a5,a2
	slli	s1,a5,00000010
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s2,a2
	c.mv	s0,a3
	c.srli	s1,00000010

l23040EF2:
	bgeu	s1,s0,0000000023040F0C

l23040EF6:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF

l23040EFA:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23040F0C:
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023040E3E
	c.beqz	a0,0000000023040EFA

l23040F1A:
	c.addi	s0,00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.j	0000000023040EF2

;; raw_input: 23040F22
;;   Called from:
;;     2303F710 (in ip4_input)
raw_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042020
	addi	a5,s1,-00000140
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
	jal	ra,000000002303FA5A
	lw	a5,s4,+00000004
	c.mv	s6,a0
	lw	s0,s2,-00000084
	lbu	s5,a5,+00000009
	c.li	a0,00000000
	addi	s1,s1,-00000140
	addi	s2,s2,-00000084
	lui	s7,00042020

l23040F6A:
	c.beqz	s0,0000000023040FCA

l23040F6C:
	lbu	a5,s0,+00000010
	bne	a5,s5,0000000023040FE8

l23040F74:
	lbu	a4,s0,+00000008
	c.beqz	a4,0000000023040F8A

l23040F7A:
	c.lw	s1,4(a5)
	lbu	a5,a5,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a4,a5,0000000023040FE8

l23040F8A:
	c.lw	s0,0(a5)
	beq	s6,zero,0000000023040FE0

l23040F90:
	c.bnez	a5,0000000023040FE8

l23040F92:
	lbu	a5,s0,+00000011
	c.andi	a5,00000001
	c.beqz	a5,0000000023040FA2

l23040F9A:
	c.lw	s0,4(a4)
	c.lw	s1,16(a5)
	bne	a4,a5,0000000023040FE8

l23040FA2:
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023040FE8

l23040FA6:
	c.lw	s0,24(a0)
	addi	a3,s7,-00000130
	c.mv	a2,s4
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,0000000023040FEE

l23040FB4:
	c.li	a0,00000001
	beq	s3,zero,0000000023040FCA

l23040FBA:
	c.lw	s0,12(a5)
	sw	a5,s3,+0000000C
	lw	a5,s2,+00000000
	sw	s0,s2,+00000000
	c.sw	s0,12(a5)

l23040FCA:
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

l23040FE0:
	c.beqz	a5,0000000023040F92

l23040FE2:
	c.lw	s1,20(a4)
	beq	a4,a5,0000000023040F92

l23040FE8:
	c.mv	s3,s0
	c.lw	s0,12(s0)
	c.j	0000000023040F6A

l23040FEE:
	c.li	a0,00000002
	c.j	0000000023040FE8

;; raw_bind: 23040FF2
;;   Called from:
;;     23046EDC (in lwip_netconn_do_bind)
;;     23049582 (in ping_api_init)
raw_bind proc
	c.li	a5,FFFFFFFA
	c.beqz	a0,0000000023040FFE

l23040FF6:
	c.beqz	a1,0000000023040FFE

l23040FF8:
	c.lw	a1,0(a5)
	c.sw	a0,0(a5)
	c.li	a5,00000000

l23040FFE:
	c.mv	a0,a5
	c.jr	ra

;; raw_bind_netif: 23041002
;;   Called from:
;;     2303ADBA (in lwip_setsockopt_callback)
raw_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,0000000023041010

l23041006:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23041010:
	sb	a5,a0,+00000008
	c.jr	ra

;; raw_connect: 23041016
;;   Called from:
;;     23046F7A (in lwip_netconn_do_connect)
raw_connect proc
	c.mv	a5,a0
	c.li	a0,FFFFFFFA
	c.beqz	a5,0000000023041032

l2304101C:
	c.beqz	a1,0000000023041032

l2304101E:
	c.lw	a1,0(a4)
	c.li	a0,00000000
	c.sw	a5,4(a4)
	lbu	a4,a5,+00000011
	ori	a4,a4,+00000001
	sb	a4,a5,+00000011
	c.jr	ra

l23041032:
	c.jr	ra

;; raw_recv: 23041034
;;   Called from:
;;     23046B12 (in lwip_netconn_do_newconn)
;;     23049574 (in ping_api_init)
raw_recv proc
	c.sw	a0,20(a1)
	c.sw	a0,24(a2)
	c.jr	ra

;; raw_sendto_if_src: 2304103A
;;   Called from:
;;     230411C6 (in raw_sendto)
raw_sendto_if_src proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	beq	a0,zero,0000000023041150

l2304104E:
	beq	a2,zero,0000000023041150

l23041052:
	beq	a3,zero,0000000023041150

l23041056:
	c.mv	s0,a1
	c.mv	a1,a4
	beq	a4,zero,0000000023041150

l2304105E:
	lbu	a5,a0,+00000011
	c.andi	a5,00000002
	c.beqz	a5,0000000023041090

l23041066:
	lhu	a4,s0,+0000000A
	c.li	a5,00000013
	bgeu	a5,a4,0000000023041150

l23041070:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a6,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi16sp	00000020
	jal	zero,000000002303FA36

l23041090:
	lhu	a4,s0,+00000008
	c.lui	a5,00010000
	c.addi	a5,FFFFFFEB
	bgeu	a5,a4,00000000230410B2

l2304109C:
	c.li	s1,FFFFFFFF

l2304109E:
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

l230410B2:
	c.mv	s4,a1
	c.mv	s1,a0
	c.li	a1,00000014
	c.mv	a0,s0
	c.mv	s5,a3
	c.mv	s3,a2
	jal	ra,0000000023040828
	c.beqz	a0,000000002304113C

l230410C4:
	addi	a2,zero,+00000280
	c.li	a1,00000000
	addi	a0,zero,+000000A2
	jal	ra,0000000023040912
	c.mv	s2,a0
	c.beqz	a0,000000002304109C

l230410D6:
	lhu	a5,s0,+00000008
	c.beqz	a5,00000000230410E2

l230410DC:
	c.mv	a1,s0
	jal	ra,0000000023040B84

l230410E2:
	lbu	a5,s1,+00000011
	c.andi	a5,00000004
	c.beqz	a5,0000000023041106

l230410EA:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002304114A

l230410FA:
	lbu	a5,s2,+0000000D
	ori	a5,a5,+00000004
	sb	a5,s2,+0000000D

l23041106:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002304114A

l23041116:
	lbu	a3,s1,+00000013

l2304111A:
	lbu	a5,s1,+00000010
	lbu	a4,s1,+0000000A
	c.mv	a6,s5
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002303FA36
	c.mv	s1,a0
	beq	s0,s2,000000002304109E

l23041134:
	c.mv	a0,s2
	jal	ra,0000000023040890
	c.j	000000002304109E

l2304113C:
	c.li	a1,00000014
	c.mv	a0,s0
	jal	ra,000000002304082E
	c.bnez	a0,000000002304109C

l23041146:
	c.mv	s2,s0
	c.j	00000000230410E2

l2304114A:
	lbu	a3,s1,+0000000B
	c.j	000000002304111A

l23041150:
	c.li	s1,FFFFFFFA
	c.j	000000002304109E

;; raw_sendto: 23041154
;;   Called from:
;;     230411D8 (in raw_send)
;;     23047132 (in lwip_netconn_do_send)
;;     230492E2 (in ping_timeout)
raw_sendto proc
	c.beqz	a0,00000000230411D0

l23041156:
	c.beqz	a2,00000000230411D0

l23041158:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	lbu	a0,a0,+00000008
	c.mv	s1,a2
	c.mv	s2,a1
	c.beqz	a0,0000000023041182

l2304116E:
	jal	ra,0000000023040690

l23041172:
	c.bnez	a0,00000000230411A2

l23041174:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFFC
	c.addi	sp,00000010
	c.jr	ra

l23041182:
	c.lw	a2,0(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023041198

l23041190:
	c.mv	a0,s1
	jal	ra,000000002303F434
	c.j	0000000023041172

l23041198:
	lbu	a0,s0,+00000012
	jal	ra,0000000023040690
	c.beqz	a0,0000000023041190

l230411A2:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230411CA

l230411A6:
	andi	a5,a5,+000000F0
	addi	a4,zero,+000000E0
	beq	a5,a4,00000000230411CA

l230411B2:
	c.mv	a4,s0

l230411B4:
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.mv	a1,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002304103A

l230411CA:
	addi	a4,a0,+00000004
	c.j	00000000230411B4

l230411D0:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; raw_send: 230411D4
;;   Called from:
;;     2304711C (in lwip_netconn_do_send)
raw_send proc
	addi	a2,a0,+00000004
	jal	zero,0000000023041154

;; raw_remove: 230411DC
;;   Called from:
;;     23046E5E (in lwip_netconn_do_delconn)
;;     230491A6 (in ping_free)
raw_remove proc
	lui	a4,0004200E
	addi	a4,a4,-00000084
	c.lw	a4,0(a5)
	c.mv	a1,a0
	bne	a5,a0,00000000230411F8

l230411EC:
	c.lw	a0,12(a5)
	c.sw	a4,0(a5)

l230411F0:
	c.li	a0,00000000
	jal	zero,000000002304024E

l230411F6:
	c.mv	a5,a4

l230411F8:
	c.beqz	a5,00000000230411F0

l230411FA:
	c.lw	a5,12(a4)
	c.beqz	a4,00000000230411F0

l230411FE:
	bne	a4,a1,00000000230411F6

l23041202:
	c.lw	a1,12(a4)
	c.sw	a5,12(a4)
	c.j	00000000230411F0

;; raw_new: 23041208
;;   Called from:
;;     2304124E (in raw_new_ip_type)
;;     23049556 (in ping_api_init)
raw_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,0000000023041240

l2304121C:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	sb	a5,s0,+00000013
	lui	a5,0004200E
	addi	a5,a5,-00000084
	c.lw	a5,0(a4)
	sb	s1,s0,+00000010
	c.sw	a5,0(s0)
	c.sw	s0,12(a4)

l23041240:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; raw_new_ip_type: 2304124C
;;   Called from:
;;     23046AFE (in lwip_netconn_do_newconn)
raw_new_ip_type proc
	c.mv	a0,a1
	jal	zero,0000000023041208

;; raw_netif_ip_addr_changed: 23041252
;;   Called from:
;;     23040314 (in netif_do_set_ipaddr)
;;     230405C8 (in netif_remove)
raw_netif_ip_addr_changed proc
	c.beqz	a0,0000000023041268

l23041254:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023041268

l23041258:
	c.beqz	a1,0000000023041268

l2304125A:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023041268

l2304125E:
	lui	a5,0004200E
	lw	a5,a5,-00000084

l23041266:
	c.bnez	a5,000000002304126A

l23041268:
	c.jr	ra

l2304126A:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,0000000023041276

l23041272:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l23041276:
	c.lw	a5,12(a5)
	c.j	0000000023041266

;; raw_get_pcbs: 2304127A
;;   Called from:
;;     230412B4 (in stats_netstat)
raw_get_pcbs proc
	lui	a5,0004200E
	lw	a0,a5,-00000084
	c.jr	ra

;; stats_init: 23041284
;;   Called from:
;;     2303CF6A (in lwip_init)
stats_init proc
	c.jr	ra

;; stats_netstat: 23041286
stats_netstat proc
	c.addi16sp	FFFFFF40
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.swsp	ra,000000DC
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s0,0000005C
	jal	ra,0000000023070EB8
	c.addi4spn	a0,0000001C
	c.swsp	zero,0000008C
	jal	ra,0000000023042594
	c.mv	s4,a0
	jal	ra,0000000023045ACC
	c.mv	s1,a0
	jal	ra,000000002304127A
	c.mv	s2,a0
	lui	a0,00023086
	addi	a0,a0,+00000328
	jal	ra,0000000023052118
	c.li	s3,00000000
	lui	s5,00023086
	lui	s6,00023086

l230412D0:
	blt	s3,s4,00000000230412FE

l230412D4:
	lui	s0,00023086
	lui	s3,00023086

l230412DC:
	c.bnez	s1,0000000023041356

l230412DE:
	lui	s0,00023086
	lui	s1,00023086

l230412E6:
	bne	s2,zero,0000000023041390

l230412EA:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.addi16sp	000000C0
	c.jr	ra

l230412FE:
	c.lwsp	t3,000000C4
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lw	a5,0(s0)

l2304130A:
	c.bnez	s0,0000000023041310

l2304130C:
	c.addi	s3,00000001
	c.j	00000000230412D0

l23041310:
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002303FC0A
	lhu	a2,s0,+00000016
	c.addi4spn	a1,00000020
	addi	a0,s5,+00000338
	jal	ra,0000000023052118
	c.addi4spn	a1,00000020
	addi	a2,zero,+00000080
	addi	a0,s0,+00000004
	jal	ra,000000002303FC0A
	lhu	a2,s0,+00000018
	lbu	a0,s0,+00000014
	c.swsp	a2,00000084
	c.jal	0000000023041994
	c.lwsp	a2,00000084
	c.mv	a3,a0
	c.addi4spn	a1,00000020
	addi	a0,s6,+00000344
	jal	ra,0000000023052118
	c.lw	s0,12(s0)
	c.j	000000002304130A

l23041356:
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000020
	c.mv	a0,s1
	jal	ra,000000002303FC0A
	lhu	a2,s1,+00000012
	c.addi4spn	a1,00000020
	addi	a0,s0,+00000350
	jal	ra,0000000023052118
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000020
	addi	a0,s1,+00000004
	jal	ra,000000002303FC0A
	lhu	a2,s1,+00000014
	c.addi4spn	a1,00000020
	addi	a0,s3,+0000035C
	jal	ra,0000000023052118
	c.lw	s1,12(s1)
	c.j	00000000230412DC

l23041390:
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000020
	c.mv	a0,s2
	jal	ra,000000002303FC0A
	c.addi4spn	a1,00000020
	addi	a0,s0,+00000368
	jal	ra,0000000023052118
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000020
	addi	a0,s2,+00000004
	jal	ra,000000002303FC0A
	lbu	a2,s2,+00000010
	c.addi4spn	a1,00000020
	addi	a0,s1,+00000370
	jal	ra,0000000023052118
	lw	s2,s2,+0000000C
	c.j	00000000230412E6

;; tcp_new_port: 230413C8
;;   Called from:
;;     230414E4 (in tcp_bind)
;;     23041850 (in tcp_connect)
tcp_new_port proc
	lui	a4,0004200E
	c.lui	a1,00010000
	lhu	a5,a4,-000006B0
	c.lui	a0,00004000
	addi	a4,a4,-000006B0
	c.addi	a1,FFFFFFFF
	lui	a7,00023086

l230413DE:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bne	a5,a1,00000000230413EA

l230413E8:
	c.lui	a5,0000C000

l230413EA:
	addi	a3,a7,+00000430
	addi	a6,a3,+00000010

l230413F2:
	c.lw	a3,0(a2)
	c.lw	a2,0(a2)

l230413F6:
	c.bnez	a2,0000000023041406

l230413F8:
	c.addi	a3,00000004
	bne	a3,a6,00000000230413F2

l230413FE:
	sh	a5,a4,+00000000
	c.mv	a0,a5
	c.jr	ra

l23041406:
	lhu	t1,a2,+00000016
	bne	t1,a5,000000002304141C

l2304140E:
	c.addi	a0,FFFFFFFF
	c.slli	a0,10
	c.srli	a0,00000010
	c.bnez	a0,00000000230413DE

l23041416:
	sh	a5,a4,+00000000
	c.jr	ra

l2304141C:
	c.lw	a2,12(a2)
	c.j	00000000230413F6

;; tcp_close_shutdown_fin: 23041420
;;   Called from:
;;     23041E06 (in tcp_alloc)
;;     23041F1E (in tcp_close_shutdown)
;;     23042116 (in tcp_fasttmr)
tcp_close_shutdown_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+00000014
	c.li	a5,00000004
	c.mv	s0,a0
	beq	a4,a5,0000000023041440

l23041432:
	c.li	a5,00000007
	beq	a4,a5,0000000023041460

l23041438:
	c.li	a3,00000003
	c.li	a5,00000000
	bne	a4,a3,0000000023041456

l23041440:
	jal	ra,00000000230447D6
	c.mv	a5,a0
	c.bnez	a0,000000002304146C

l23041448:
	c.li	a5,00000005

l2304144A:
	sb	a5,s0,+00000014
	c.mv	a0,s0
	jal	ra,0000000023044AD2

l23041454:
	c.li	a5,00000000

l23041456:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23041460:
	jal	ra,00000000230447D6
	c.mv	a5,a0
	c.bnez	a0,000000002304146C

l23041468:
	c.li	a5,00000009
	c.j	000000002304144A

l2304146C:
	c.li	a4,FFFFFFFF
	bne	a5,a4,0000000023041456

l23041472:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000008
	sh	a5,s0,+0000001A
	c.j	0000000023041454

;; tcp_init: 23041480
;;   Called from:
;;     2303CF82 (in lwip_init)
tcp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303404A
	c.slli	a0,12
	c.lui	a1,FFFFC000
	c.srli	a0,00000012
	c.add	a0,a1
	slli	a1,a0,00000010
	c.lwsp	a2,00000020
	c.srli	a1,00000010
	lui	a5,0004200E
	sh	a1,a5,+00000950
	lui	a0,00023086
	addi	a0,a0,+00000400
	c.addi	sp,00000010
	jal	zero,0000000023052118

;; tcp_free: 230414AE
;;   Called from:
;;     23041602 (in tcp_listen_with_backlog_and_err)
;;     23041AF0 (in tcp_abandon)
;;     23041B5C (in tcp_abandon)
;;     23041F40 (in tcp_close_shutdown)
;;     230424E2 (in tcp_slowtmr)
;;     2304255C (in tcp_slowtmr)
;;     230427C0 (in tcp_input_delayed_close)
;;     23043974 (in tcp_input)
tcp_free proc
	c.mv	a1,a0
	c.li	a0,00000002
	jal	zero,000000002304024E

;; tcp_bind: 230414B6
;;   Called from:
;;     2303C244 (in altcp_tcp_bind)
;;     23046EF6 (in lwip_netconn_do_bind)
tcp_bind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a1,00000000230414C8

l230414C0:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l230414C8:
	c.li	a0,FFFFFFF0
	c.beqz	s0,00000000230414F0

l230414CC:
	lbu	a4,s0,+00000014
	c.li	a0,FFFFFFFA
	c.bnez	a4,00000000230414F0

l230414D4:
	lbu	a3,s0,+00000009
	c.andi	a3,00000004
	sltiu	a6,a3,+00000001
	c.addi	a6,00000003
	c.bnez	a2,00000000230414F8

l230414E2:
	c.swsp	a1,00000084
	jal	ra,00000000230413C8
	c.mv	a2,a0
	c.lwsp	a2,00000064
	c.li	a0,FFFFFFFE
	c.bnez	a2,0000000023041510

l230414F0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230414F8:
	lui	a4,00023086
	addi	a4,a4,+00000430
	c.li	a0,00000000

l23041502:
	c.lw	a4,0(a5)
	c.lw	a5,0(a5)

l23041506:
	c.bnez	a5,0000000023041530

l23041508:
	c.addi	a0,00000001
	c.addi	a4,00000004
	bne	a6,a0,0000000023041502

l23041510:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023041516

l23041514:
	c.sw	s0,0(a5)

l23041516:
	lui	a5,00042020
	lw	a4,a5,-00000150
	sh	a2,s0,+00000016
	sw	s0,a5,+00000EB0
	c.sw	s0,12(a4)
	jal	ra,0000000023045260
	c.li	a0,00000000
	c.j	00000000230414F0

l23041530:
	lhu	a7,a5,+00000016
	bne	a7,a2,000000002304155A

l23041538:
	c.beqz	a3,0000000023041546

l2304153A:
	lbu	a7,a5,+00000009
	andi	a7,a7,+00000004
	bne	a7,zero,000000002304155A

l23041546:
	lw	t1,a5,+00000000
	beq	t1,zero,000000002304155E

l2304154E:
	lw	a7,a1,+00000000
	beq	a7,zero,000000002304155E

l23041556:
	beq	t1,a7,000000002304155E

l2304155A:
	c.lw	a5,12(a5)
	c.j	0000000023041506

l2304155E:
	c.li	a0,FFFFFFF8
	c.j	00000000230414F0

;; tcp_bind_netif: 23041562
;;   Called from:
;;     2303ADAA (in lwip_setsockopt_callback)
tcp_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,0000000023041570

l23041566:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23041570:
	sb	a5,a0,+00000008
	c.jr	ra

;; tcp_listen_with_backlog_and_err: 23041576
;;   Called from:
;;     2303C214 (in altcp_tcp_listen)
;;     23047032 (in lwip_netconn_do_listen)
tcp_listen_with_backlog_and_err proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a2
	c.beqz	a0,0000000023041662

l23041584:
	lbu	a5,a0,+00000014
	c.mv	s0,a0
	c.bnez	a5,0000000023041668

l2304158C:
	lbu	a5,a0,+00000009
	c.andi	a5,00000004
	c.beqz	a5,000000002304159E

l23041594:
	lui	a5,00042020
	lw	a5,a5,-00000158

l2304159C:
	c.bnez	a5,000000002304163A

l2304159E:
	c.li	a0,00000003
	jal	ra,0000000023040230
	c.mv	s1,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,0000000023041624

l230415AA:
	c.lw	s0,16(a5)
	c.sw	a0,16(a5)
	lhu	a5,s0,+00000016
	sh	a5,a0,+00000016
	c.li	a5,00000001
	sb	a5,a0,+00000014
	lbu	a5,s0,+00000015
	sb	a5,a0,+00000015
	lbu	a5,s0,+00000009
	sb	zero,a0,+00000008
	sb	a5,a0,+00000009
	lbu	a5,s0,+0000000B
	sb	a5,a0,+0000000B
	lbu	a5,s0,+0000000A
	sb	a5,a0,+0000000A
	c.lw	s0,0(a5)
	c.sw	a0,0(a5)
	lhu	a5,s0,+00000016
	c.beqz	a5,0000000023041600

l230415EA:
	lui	a4,00042020
	lw	a5,a4,-00000150
	bne	a5,s0,0000000023041654

l230415F6:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000EB0

l230415FC:
	sw	zero,s0,+0000000C

l23041600:
	c.mv	a0,s0
	jal	ra,00000000230414AE
	lui	a5,00023042
	addi	a5,a5,-0000043A
	c.sw	s1,24(a5)
	lui	a5,00042020
	lw	a4,a5,-00000158
	sw	s1,a5,+00000EA8
	c.sw	s1,12(a4)
	jal	ra,0000000023045260
	c.li	a5,00000000

l23041624:
	beq	s2,zero,000000002304162C

l23041628:
	sb	a5,s2,+00000000

l2304162C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304163A:
	lhu	a3,a5,+00000016
	lhu	a4,s0,+00000016
	bne	a3,a4,000000002304164E

l23041646:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	beq	a3,a4,000000002304166E

l2304164E:
	c.lw	a5,12(a5)
	c.j	000000002304159C

l23041652:
	c.mv	a5,a4

l23041654:
	c.beqz	a5,00000000230415FC

l23041656:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041652

l2304165C:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	00000000230415FC

l23041662:
	c.li	s1,00000000
	c.li	a5,FFFFFFF0
	c.j	0000000023041624

l23041668:
	c.li	a5,FFFFFFF1

l2304166A:
	c.li	s1,00000000
	c.j	0000000023041624

l2304166E:
	c.li	a5,FFFFFFF8
	c.j	000000002304166A

;; tcp_update_rcv_ann_wnd: 23041672
;;   Called from:
;;     230416E4 (in tcp_recved)
;;     23042DF8 (in tcp_receive)
;;     23042F30 (in tcp_receive)
tcp_update_rcv_ann_wnd proc
	c.mv	a5,a0
	lhu	a1,a0,+00000028
	c.lw	a0,44(a3)
	c.lw	a0,36(a2)
	lhu	a4,a5,+00000032
	sub	a0,a1,a3
	addi	a6,zero,+00000408
	c.add	a0,a2
	bgeu	a6,a4,0000000023041692

l2304168E:
	addi	a4,zero,+00000408

l23041692:
	c.slli	a4,10
	c.srli	a4,00000010
	sub	a4,a0,a4
	blt	a4,zero,00000000230416A4

l2304169E:
	sh	a1,a5,+0000002A
	c.jr	ra

l230416A4:
	sub	a4,a2,a3
	bge	zero,a4,00000000230416B4

l230416AC:
	sh	zero,a5,+0000002A

l230416B0:
	c.li	a0,00000000
	c.jr	ra

l230416B4:
	c.sub	a3,a2
	sh	a3,a5,+0000002A
	c.j	00000000230416B0

;; tcp_recved: 230416BC
;;   Called from:
;;     2303C250 (in altcp_tcp_recved)
;;     23041FE0 (in tcp_recv_null)
;;     23046A3A (in recv_tcp)
;;     230471CA (in lwip_netconn_do_recv)
tcp_recved proc
	c.beqz	a0,0000000023041710

l230416BE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a4,a0,+00000028
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.add	a1,a4
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a5,a1,00000000230416DC

l230416D8:
	bgeu	a1,a4,00000000230416DE

l230416DC:
	c.mv	a1,a5

l230416DE:
	sh	a1,a0,+00000028
	c.mv	s0,a0
	jal	ra,0000000023041672
	addi	a5,zero,+00000407
	bgeu	a5,a0,0000000023041708

l230416F0:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023044AD2

l23041708:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23041710:
	c.jr	ra

;; tcp_seg_free: 23041712
;;   Called from:
;;     23041742 (in tcp_segs_free)
;;     230426BE (in tcp_oos_insert_segment)
;;     2304287C (in tcp_free_acked_segments.isra.3)
;;     23042DD8 (in tcp_receive)
;;     23042EC4 (in tcp_receive)
;;     23042F84 (in tcp_receive)
;;     23043AA6 (in tcp_input)
;;     23043F8A (in tcp_create_segment)
;;     23044FFC (in tcp_output)
tcp_seg_free proc
	c.beqz	a0,0000000023041730

l23041714:
	c.mv	a1,a0
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023041732

l2304171A:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023040890
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.li	a0,00000004
	c.addi16sp	00000020

l2304172C:
	jal	zero,000000002304024E

l23041730:
	c.jr	ra

l23041732:
	c.li	a0,00000004
	c.j	000000002304172C

;; tcp_segs_free: 23041736
;;   Called from:
;;     230419DE (in tcp_free_ooseq)
;;     23041A28 (in tcp_pcb_purge)
;;     23041A2E (in tcp_pcb_purge)
;;     23041B2C (in tcp_abandon)
;;     23041B34 (in tcp_abandon)
;;     23041B3C (in tcp_abandon)
;;     23042676 (in tcp_oos_insert_segment)
;;     23044386 (in tcp_write)
tcp_segs_free proc
	c.bnez	a0,000000002304173A

l23041738:
	c.jr	ra

l2304173A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004

l23041740:
	c.lw	a0,0(s0)
	jal	ra,0000000023041712
	c.mv	a0,s0
	c.bnez	s0,0000000023041740

l2304174A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_setprio: 23041752
;;   Called from:
;;     2303C144 (in altcp_tcp_setprio)
tcp_setprio proc
	c.beqz	a0,0000000023041758

l23041754:
	sb	a1,a0,+00000015

l23041758:
	c.jr	ra

;; tcp_seg_copy: 2304175A
;;   Called from:
;;     23042FF6 (in tcp_receive)
;;     23043052 (in tcp_receive)
;;     23043080 (in tcp_receive)
;;     230430C2 (in tcp_receive)
;;     23043142 (in tcp_receive)
tcp_seg_copy proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.li	a0,00000004
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,000000002304177A

l2304176C:
	c.lwsp	a2,00000064
	c.li	a2,00000014
	jal	ra,0000000023070C7C
	c.lw	s0,4(a0)
	jal	ra,0000000023040B3E

l2304177A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; tcp_arg: 23041784
;;   Called from:
;;     2303C0DC (in altcp_tcp_setup_callbacks)
;;     2303C18C (in altcp_tcp_close)
;;     2304637C (in setup_tcp)
;;     23046760 (in lwip_netconn_do_close_internal)
;;     23046892 (in lwip_netconn_do_close_internal)
;;     23046D94 (in accept_function)
;;     23047088 (in lwip_netconn_do_listen)
tcp_arg proc
	c.beqz	a0,0000000023041788

l23041786:
	c.sw	a0,16(a1)

l23041788:
	c.jr	ra

;; tcp_recv: 2304178A
;;   Called from:
;;     2303C0EA (in altcp_tcp_setup_callbacks)
;;     2303C194 (in altcp_tcp_close)
;;     2304638A (in setup_tcp)
;;     23046790 (in lwip_netconn_do_close_internal)
;;     23046D9C (in accept_function)
tcp_recv proc
	c.beqz	a0,0000000023041790

l2304178C:
	sw	a1,a0,+00000084

l23041790:
	c.jr	ra

;; tcp_sent: 23041792
;;   Called from:
;;     2303C0F8 (in altcp_tcp_setup_callbacks)
;;     2303C19C (in altcp_tcp_close)
;;     23046398 (in setup_tcp)
;;     230467A4 (in lwip_netconn_do_close_internal)
;;     2304686C (in lwip_netconn_do_close_internal)
;;     23046DA4 (in accept_function)
tcp_sent proc
	c.beqz	a0,0000000023041798

l23041794:
	sw	a1,a0,+00000080

l23041798:
	c.jr	ra

;; tcp_err: 2304179A
;;   Called from:
;;     2303C10C (in altcp_tcp_setup_callbacks)
;;     2303C1A4 (in altcp_tcp_close)
;;     230463BC (in setup_tcp)
;;     230467BA (in lwip_netconn_do_close_internal)
;;     2304688A (in lwip_netconn_do_close_internal)
;;     23046DB6 (in accept_function)
tcp_err proc
	c.beqz	a0,00000000230417A0

l2304179C:
	sw	a1,a0,+00000090

l230417A0:
	c.jr	ra

;; tcp_accept: 230417A2
;;   Called from:
;;     2303C224 (in altcp_tcp_listen)
;;     23046774 (in lwip_netconn_do_close_internal)
;;     23046798 (in lwip_netconn_do_close_internal)
;;     23047098 (in lwip_netconn_do_listen)
tcp_accept proc
	c.beqz	a0,00000000230417B0

l230417A4:
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	bne	a4,a5,00000000230417B0

l230417AE:
	c.sw	a0,24(a1)

l230417B0:
	c.jr	ra

;; tcp_poll: 230417B2
;;   Called from:
;;     2303C1B0 (in altcp_tcp_close)
;;     2303C1CE (in altcp_tcp_close)
;;     2303C28C (in altcp_tcp_set_poll)
;;     230463A8 (in setup_tcp)
;;     230467B2 (in lwip_netconn_do_close_internal)
;;     2304687C (in lwip_netconn_do_close_internal)
;;     23046DAE (in accept_function)
tcp_poll proc
	c.beqz	a0,00000000230417BC

l230417B4:
	sw	a1,a0,+0000008C
	sb	a2,a0,+0000001D

l230417BC:
	c.jr	ra

;; tcp_next_iss: 230417BE
;;   Called from:
;;     230418C4 (in tcp_connect)
;;     23043874 (in tcp_input)
tcp_next_iss proc
	lui	a5,0004200E
	addi	a5,a5,-000006B4
	lui	a4,00042020
	c.lw	a5,0(a0)
	lw	a4,a4,-0000015C
	c.add	a0,a4
	c.sw	a5,0(a0)
	c.jr	ra

;; tcp_eff_send_mss_netif: 230417D6
;;   Called from:
;;     23041900 (in tcp_connect)
;;     230438FA (in tcp_input)
;;     23043A66 (in tcp_input)
;;     23044C86 (in tcp_output)
tcp_eff_send_mss_netif proc
	c.beqz	a1,00000000230417FE

l230417D8:
	lhu	a5,a1,+00000038
	c.beqz	a5,00000000230417FE

l230417DE:
	addi	a3,zero,+00000028
	c.li	a4,00000000
	bgeu	a3,a5,00000000230417F8

l230417E8:
	addi	a5,a5,-00000028
	c.slli	a5,10
	c.srli	a5,00000010
	c.mv	a4,a5
	bgeu	a0,a5,00000000230417F8

l230417F6:
	c.mv	a4,a0

l230417F8:
	slli	a0,a4,00000010
	c.srli	a0,00000010

l230417FE:
	c.jr	ra

;; tcp_connect: 23041800
;;   Called from:
;;     2303C238 (in altcp_tcp_connect)
;;     23046F52 (in lwip_netconn_do_connect)
tcp_connect proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002304185C

l23041816:
	c.beqz	a1,000000002304185C

l23041818:
	lbu	a5,a0,+00000014
	c.li	s1,FFFFFFF6
	c.bnez	a5,000000002304185C

l23041820:
	c.lw	a1,0(a5)
	c.mv	s0,a0
	c.mv	s3,a3
	c.sw	a0,4(a5)
	sh	a2,s0,+00000018
	lbu	a0,a0,+00000008
	c.mv	s4,a2
	c.mv	s2,a1
	c.beqz	a0,0000000023041872

l23041836:
	jal	ra,0000000023040690

l2304183A:
	c.mv	s6,a0
	c.li	s1,FFFFFFFC
	c.beqz	a0,000000002304185C

l23041840:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023041848

l23041844:
	c.lw	a0,4(a5)
	c.sw	s0,0(a5)

l23041848:
	lhu	s5,s0,+00000016
	bne	s5,zero,000000002304187C

l23041850:
	jal	ra,00000000230413C8
	sh	a0,s0,+00000016
	c.li	s1,FFFFFFFE
	c.bnez	a0,00000000230418C2

l2304185C:
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

l23041872:
	addi	a0,s0,+00000004
	jal	ra,000000002303F434
	c.j	000000002304183A

l2304187C:
	lbu	a5,s0,+00000009
	c.andi	a5,00000004
	c.beqz	a5,00000000230418C2

l23041884:
	lui	a5,00042020
	lw	a5,a5,-00000154

l2304188C:
	c.beqz	a5,00000000230418B8

l2304188E:
	lhu	a4,a5,+00000016
	beq	a4,s5,000000002304189A

l23041896:
	c.lw	a5,12(a5)
	c.j	000000002304188C

l2304189A:
	lhu	a4,a5,+00000018
	bne	a4,s4,0000000023041896

l230418A2:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,0000000023041896

l230418AA:
	c.lw	a5,4(a3)
	lw	a4,s2,+00000000
	bne	a3,a4,0000000023041896

l230418B4:
	c.li	s1,FFFFFFF8
	c.j	000000002304185C

l230418B8:
	lui	a5,00042020
	lw	a5,a5,-00000160

l230418C0:
	c.bnez	a5,000000002304195E

l230418C2:
	c.mv	a0,s0
	jal	ra,00000000230417BE
	lui	a5,00008101
	addi	a5,a5,-000007F0
	c.sw	s0,40(a5)
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.sw	s0,80(a0)
	sh	a5,s0,+00000060
	c.addi	a0,FFFFFFFF
	addi	a5,zero,+00000218
	c.sw	s0,68(a0)
	c.sw	s0,88(a0)
	c.sw	s0,92(a0)
	sh	a5,s0,+00000032
	addi	a2,s0,+00000004
	c.mv	a1,s6
	sw	zero,s0,+00000024
	sw	zero,s0,+0000002C
	addi	a0,zero,+00000218
	jal	ra,00000000230417D6
	c.li	a5,00000001
	sh	a0,s0,+00000032
	sh	a5,s0,+00000048
	sw	s3,s0,+00000088
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002304472C
	c.mv	s1,a0
	c.bnez	a0,000000002304185C

l2304191E:
	c.li	a5,00000002
	sb	a5,s0,+00000014
	beq	s5,zero,000000002304193A

l23041928:
	lui	a4,00042020
	lw	a5,a4,-00000150
	bne	a5,s0,0000000023041986

l23041934:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000EB0

l2304193A:
	lui	a5,00042020
	lw	a4,a5,-00000154
	sw	s0,a5,+00000EAC
	c.sw	s0,12(a4)
	jal	ra,0000000023045260
	lui	a5,00042020
	c.li	a4,00000001
	c.mv	a0,s0
	sb	a4,a5,+00000EB4
	jal	ra,0000000023044AD2
	c.j	000000002304185C

l2304195E:
	lhu	a4,a5,+00000016
	bne	a4,s5,0000000023041980

l23041966:
	lhu	a4,a5,+00000018
	bne	a4,s4,0000000023041980

l2304196E:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,0000000023041980

l23041976:
	c.lw	a5,4(a3)
	lw	a4,s2,+00000000
	beq	a3,a4,00000000230418B4

l23041980:
	c.lw	a5,12(a5)
	c.j	00000000230418C0

l23041984:
	c.mv	a5,a4

l23041986:
	c.beqz	a5,000000002304193A

l23041988:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041984

l2304198E:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	000000002304193A

;; tcp_debug_state_str: 23041994
;;   Called from:
;;     23041342 (in stats_netstat)
tcp_debug_state_str proc
	lui	a5,00023086
	c.slli	a0,02
	addi	a5,a5,+00000440
	c.add	a5,a0
	c.lw	a5,0(a0)
	c.jr	ra

;; tcp_tcp_get_tcp_addrinfo: 230419A4
;;   Called from:
;;     2303C138 (in altcp_tcp_get_tcp_addrinfo)
tcp_tcp_get_tcp_addrinfo proc
	c.beqz	a0,00000000230419CC

l230419A6:
	c.beqz	a1,00000000230419BE

l230419A8:
	c.beqz	a2,00000000230419AE

l230419AA:
	c.lw	a0,0(a5)
	c.sw	a2,0(a5)

l230419AE:
	c.bnez	a3,00000000230419B4

l230419B0:
	c.li	a0,00000000
	c.jr	ra

l230419B4:
	lhu	a5,a0,+00000016

l230419B8:
	sh	a5,a3,+00000000
	c.j	00000000230419B0

l230419BE:
	c.beqz	a2,00000000230419C4

l230419C0:
	c.lw	a0,4(a5)
	c.sw	a2,0(a5)

l230419C4:
	c.beqz	a3,00000000230419B0

l230419C6:
	lhu	a5,a0,+00000018
	c.j	00000000230419B8

l230419CC:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; tcp_free_ooseq: 230419D0
;;   Called from:
;;     2304074C (in pbuf_free_ooseq_callback)
;;     23041A1C (in tcp_pcb_purge)
;;     2304233E (in tcp_slowtmr)
tcp_free_ooseq proc
	c.lw	a0,116(a5)
	c.beqz	a5,00000000230419EE

l230419D4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023041736
	sw	zero,s0,+00000074
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230419EE:
	c.jr	ra

;; tcp_pcb_purge: 230419F0
;;   Called from:
;;     23041A60 (in tcp_pcb_remove)
;;     23041EB6 (in tcp_close_shutdown)
;;     230424AE (in tcp_slowtmr)
;;     23042540 (in tcp_slowtmr)
;;     23043C7A (in tcp_input)
;;     23043D0C (in tcp_input)
;;     23043D46 (in tcp_input)
tcp_pcb_purge proc
	c.beqz	a0,0000000023041A46

l230419F2:
	lbu	a5,a0,+00000014
	c.li	a4,00000001
	bgeu	a4,a5,0000000023041A46

l230419FC:
	c.li	a4,0000000A
	beq	a5,a4,0000000023041A46

l23041A02:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,120(a0)
	c.beqz	a0,0000000023041A16

l23041A0E:
	jal	ra,0000000023040890
	sw	zero,s0,+00000078

l23041A16:
	c.lw	s0,116(a5)
	c.beqz	a5,0000000023041A20

l23041A1A:
	c.mv	a0,s0
	jal	ra,00000000230419D0

l23041A20:
	c.lw	s0,108(a0)
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030
	jal	ra,0000000023041736
	c.lw	s0,112(a0)
	jal	ra,0000000023041736
	sw	zero,s0,+0000006C
	sw	zero,s0,+00000070
	sh	zero,s0,+00000068
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23041A46:
	c.jr	ra

;; tcp_pcb_remove: 23041A48
;;   Called from:
;;     23041AD8 (in tcp_abandon)
;;     23041B9A (in tcp_abandon)
;;     23041F78 (in tcp_close_shutdown)
;;     23041F9E (in tcp_close_shutdown)
;;     230427BA (in tcp_input_delayed_close)
;;     2304396E (in tcp_input)
tcp_pcb_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a1
	bne	a5,a1,0000000023041A9E

l23041A56:
	c.lw	a1,12(a5)
	c.sw	a0,0(a5)

l23041A5A:
	sw	zero,s0,+0000000C
	c.mv	a0,s0
	jal	ra,00000000230419F0
	lbu	a5,s0,+00000014
	c.li	a4,0000000A
	beq	a5,a4,0000000023041A8C

l23041A6E:
	c.li	a4,00000001
	beq	a5,a4,0000000023041A8C

l23041A74:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023041A8C

l23041A7E:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023044AD2

l23041A8C:
	sb	zero,s0,+00000014
	sh	zero,s0,+00000016
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23041A9C:
	c.mv	a5,a4

l23041A9E:
	c.beqz	a5,0000000023041A5A

l23041AA0:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041A9C

l23041AA6:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023041A5A

;; tcp_abandon: 23041AAC
;;   Called from:
;;     23041BC2 (in tcp_abort)
;;     23041C76 (in tcp_kill_state)
;;     23043910 (in tcp_input)
tcp_abandon proc
	beq	a0,zero,0000000023041BBE

l23041AB0:
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
	bne	a5,a4,0000000023041AF4

l23041ACE:
	c.mv	a1,a0
	lui	a0,00042020
	addi	a0,a0,-00000160
	jal	ra,0000000023041A48
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
	jal	zero,00000000230414AE

l23041AF4:
	lw	s5,a0,+00000050
	lw	s6,a0,+00000024
	lw	s3,a0,+00000090
	lw	s4,a0,+00000010
	lhu	s1,a0,+00000016
	c.bnez	a5,0000000023041B8E

l23041B0A:
	c.li	s2,00000000
	c.beqz	s1,0000000023041B28

l23041B0E:
	lui	a4,00042020
	lw	a5,a4,-00000150
	bne	a5,a0,0000000023041B80

l23041B1A:
	c.lw	a0,12(a5)
	sw	a5,a4,+00000EB0

l23041B20:
	sw	zero,s0,+0000000C
	c.li	s1,00000000
	c.li	s2,00000000

l23041B28:
	c.lw	s0,112(a0)
	c.beqz	a0,0000000023041B30

l23041B2C:
	jal	ra,0000000023041736

l23041B30:
	c.lw	s0,108(a0)
	c.beqz	a0,0000000023041B38

l23041B34:
	jal	ra,0000000023041736

l23041B38:
	c.lw	s0,116(a0)
	c.beqz	a0,0000000023041B40

l23041B3C:
	jal	ra,0000000023041736

l23041B40:
	beq	s2,zero,0000000023041B5A

l23041B44:
	lhu	a6,s0,+00000018
	c.mv	a5,s1
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023044A26

l23041B5A:
	c.mv	a0,s0
	jal	ra,00000000230414AE
	beq	s3,zero,0000000023041BAA

l23041B64:
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

l23041B7E:
	c.mv	a5,a4

l23041B80:
	c.beqz	a5,0000000023041B20

l23041B82:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041B7E

l23041B88:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023041B20

l23041B8E:
	c.mv	s2,a1
	c.mv	a1,a0
	lui	a0,00042020
	addi	a0,a0,-00000154
	jal	ra,0000000023041A48
	lui	a5,00042020
	c.li	a4,00000001
	sb	a4,a5,+00000EB4
	c.j	0000000023041B28

l23041BAA:
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

l23041BBE:
	c.jr	ra

;; tcp_abort: 23041BC0
;;   Called from:
;;     2303C1F6 (in altcp_tcp_abort)
;;     23041BCC (in tcp_accept_null)
;;     23041BFA (in tcp_netif_ip_addr_changed_pcblist.isra.2)
;;     23041CD2 (in tcp_alloc)
;;     23041E3C (in tcp_alloc)
;;     23043B6A (in tcp_input)
;;     230467F0 (in lwip_netconn_do_close_internal)
;;     23046CD0 (in netconn_drain)
tcp_abort proc
	c.li	a1,00000001
	jal	zero,0000000023041AAC

;; tcp_accept_null: 23041BC6
tcp_accept_null proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,0000000023041BC0
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF3
	c.addi	sp,00000010
	c.jr	ra

;; tcp_netif_ip_addr_changed_pcblist.isra.2: 23041BD8
;;   Called from:
;;     23041C1C (in tcp_netif_ip_addr_changed)
;;     23041C2A (in tcp_netif_ip_addr_changed)
tcp_netif_ip_addr_changed_pcblist.isra.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0

l23041BE2:
	c.bnez	a1,0000000023041BEE

l23041BE4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23041BEE:
	c.lw	a1,0(a4)
	c.lw	s0,0(a5)
	c.lw	a1,12(s1)
	bne	a4,a5,0000000023041BFE

l23041BF8:
	c.mv	a0,a1
	jal	ra,0000000023041BC0

l23041BFE:
	c.mv	a1,s1
	c.j	0000000023041BE2

;; tcp_netif_ip_addr_changed: 23041C02
;;   Called from:
;;     23040304 (in netif_do_set_ipaddr)
;;     230405B8 (in netif_remove)
tcp_netif_ip_addr_changed proc
	c.beqz	a0,0000000023041C58

l23041C04:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.beqz	a4,0000000023041C3E

l23041C12:
	lui	a5,00042020
	c.mv	s1,a1
	lw	a1,a5,-00000154
	jal	ra,0000000023041BD8
	lui	a5,00042020
	lw	a1,a5,-00000150
	c.mv	a0,s0
	jal	ra,0000000023041BD8
	c.beqz	s1,0000000023041C3E

l23041C30:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023041C3E

l23041C34:
	lui	a5,00042020
	lw	a5,a5,-00000158

l23041C3C:
	c.bnez	a5,0000000023041C48

l23041C3E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23041C48:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,0000000023041C54

l23041C50:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)

l23041C54:
	c.lw	a5,12(a5)
	c.j	0000000023041C3C

l23041C58:
	c.jr	ra

;; tcp_kill_state: 23041C5A
;;   Called from:
;;     23041CE2 (in tcp_alloc)
;;     23041CF2 (in tcp_alloc)
tcp_kill_state proc
	lui	a5,00042020
	lui	a4,00042020
	lw	a5,a5,-00000154
	lw	a1,a4,-0000015C
	c.li	a2,00000000
	c.li	a3,00000000

l23041C6E:
	c.bnez	a5,0000000023041C7A

l23041C70:
	c.beqz	a3,0000000023041C94

l23041C72:
	c.li	a1,00000000
	c.mv	a0,a3
	jal	zero,0000000023041AAC

l23041C7A:
	lbu	a4,a5,+00000014
	bne	a4,a0,0000000023041C90

l23041C82:
	c.lw	a5,32(a4)
	sub	a4,a1,a4
	bltu	a4,a2,0000000023041C90

l23041C8C:
	c.mv	a2,a4
	c.mv	a3,a5

l23041C90:
	c.lw	a5,12(a5)
	c.j	0000000023041C6E

l23041C94:
	c.jr	ra

;; tcp_alloc: 23041C96
;;   Called from:
;;     23041E6A (in tcp_new_ip_type)
;;     23043816 (in tcp_input)
tcp_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.li	a0,00000002
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.bnez	a0,0000000023041D62

l23041CAE:
	lui	s3,00042020
	lw	a0,s3,-00000154

l23041CB6:
	bne	a0,zero,0000000023041DF4

l23041CBA:
	lui	a5,00042020
	lui	s2,00042020
	lw	a5,a5,-00000160
	lw	a2,s2,-0000015C
	c.li	a3,00000000

l23041CCC:
	bne	a5,zero,0000000023041E0E

l23041CD0:
	c.beqz	a0,0000000023041CD6

l23041CD2:
	jal	ra,0000000023041BC0

l23041CD6:
	c.li	a0,00000002
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.bnez	a0,0000000023041D50

l23041CE0:
	c.li	a0,00000009
	jal	ra,0000000023041C5A
	c.li	a0,00000002
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.bnez	a0,0000000023041D3E

l23041CF0:
	c.li	a0,00000008
	jal	ra,0000000023041C5A
	c.li	a0,00000002
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.bnez	a0,0000000023041D2C

l23041D00:
	slli	a5,s1,00000018
	c.srai	a5,00000018
	blt	a5,zero,0000000023041E20

l23041D0A:
	c.mv	a5,s1
	bne	s1,zero,0000000023041E24

l23041D10:
	c.li	a0,00000002
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,0000000023041DE4

l23041D1A:
	lui	a5,00042020
	lw	a4,a5,-000001A8
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l23041D2C:
	lui	a5,00042020
	lw	a4,a5,-000001A8
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l23041D3E:
	lui	a5,00042020
	lw	a4,a5,-000001A8
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l23041D50:
	lui	a5,00042020
	lw	a4,a5,-000001A8
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l23041D62:
	addi	a2,zero,+000000A4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
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
	lui	a5,00042020
	lw	a5,a5,-0000015C
	sb	s1,s0,+00000015
	c.sw	s0,32(a5)
	lui	a5,0004200E
	lbu	a5,a5,-0000007F
	sb	a5,s0,+0000001E
	lui	a5,00015800
	c.addi	a5,00000001
	c.sw	s0,72(a5)
	lui	a5,00023042
	addi	a5,a5,-00000032
	sw	a5,s0,+00000084
	lui	a5,000006DE
	addi	a5,a5,-00000300
	sw	a5,s0,+00000094
	c.lui	a5,00012000
	addi	a5,a5,+000004F8
	sw	a5,s0,+00000098
	c.li	a5,00000009
	sw	a5,s0,+0000009C

l23041DE4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23041DF4:
	lhu	a5,a0,+0000001A
	c.lw	a0,12(s0)
	andi	a4,a5,+00000008
	c.beqz	a4,0000000023041E0A

l23041E00:
	c.andi	a5,FFFFFFF7
	sh	a5,a0,+0000001A
	jal	ra,0000000023041420

l23041E0A:
	c.mv	a0,s0
	c.j	0000000023041CB6

l23041E0E:
	c.lw	a5,32(a4)
	sub	a4,a2,a4
	bltu	a4,a3,0000000023041E1C

l23041E18:
	c.mv	a3,a4
	c.mv	a0,a5

l23041E1C:
	c.lw	a5,12(a5)
	c.j	0000000023041CCC

l23041E20:
	addi	a5,zero,+0000007F

l23041E24:
	lw	a4,s3,-00000154
	lw	a0,s2,-0000015C
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a3,00000000

l23041E34:
	c.bnez	a4,0000000023041E42

l23041E36:
	beq	s0,zero,0000000023041D10

l23041E3A:
	c.mv	a0,s0
	jal	ra,0000000023041BC0
	c.j	0000000023041D10

l23041E42:
	lbu	a2,a4,+00000015
	bltu	a2,a5,0000000023041E58

l23041E4A:
	bne	a2,a5,0000000023041E62

l23041E4E:
	c.lw	a4,32(a1)
	sub	a1,a0,a1
	bltu	a1,a3,0000000023041E62

l23041E58:
	c.lw	a4,32(a3)
	c.mv	a5,a2
	c.mv	s0,a4
	sub	a3,a0,a3

l23041E62:
	c.lw	a4,12(a4)
	c.j	0000000023041E34

;; tcp_new_ip_type: 23041E66
;;   Called from:
;;     2303C2FA (in altcp_tcp_new_ip_type)
;;     23046AE6 (in lwip_netconn_do_newconn)
tcp_new_ip_type proc
	addi	a0,zero,+00000040
	jal	zero,0000000023041C96

;; tcp_close_shutdown: 23041E6E
;;   Called from:
;;     23041FC6 (in tcp_close)
;;     2304218E (in tcp_shutdown)
tcp_close_shutdown proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lbu	a5,a0,+00000014
	c.beqz	a1,0000000023041F06

l23041E7E:
	c.li	a4,00000004
	beq	a5,a4,0000000023041E8A

l23041E84:
	c.li	a4,00000007
	bne	a5,a4,0000000023041F06

l23041E8A:
	c.lw	s0,120(a4)
	c.bnez	a4,0000000023041E9C

l23041E8E:
	lhu	a3,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a3,a4,0000000023041F06

l23041E9C:
	lhu	a5,s0,+00000016
	lhu	a6,s0,+00000018
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,0000000023044A26
	c.mv	a0,s0
	jal	ra,00000000230419F0
	lui	a4,00042020
	lw	a5,a4,-00000154
	bne	a5,s0,0000000023041EF8

l23041EC6:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000EAC

l23041ECC:
	lui	a5,00042020
	c.li	a4,00000001
	sb	a4,a5,+00000EB4
	lui	a5,00042020
	lw	a5,a5,-00000148
	sw	zero,s0,+0000000C
	bne	a5,s0,0000000023041F3E

l23041EE6:
	jal	ra,0000000023043EBE

l23041EEA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23041EF6:
	c.mv	a5,a4

l23041EF8:
	c.beqz	a5,0000000023041ECC

l23041EFA:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041EF6

l23041F00:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023041ECC

l23041F06:
	c.li	s1,00000001
	beq	a5,s1,0000000023041F56

l23041F0C:
	c.beqz	a5,0000000023041F22

l23041F0E:
	c.li	a4,00000002
	beq	a5,a4,0000000023041F94

l23041F14:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023041420

l23041F22:
	lhu	a5,s0,+00000016
	c.beqz	a5,0000000023041F3E

l23041F28:
	lui	a4,00042020
	lw	a5,a4,-00000150
	bne	a5,s0,0000000023041F48

l23041F34:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000EB0

l23041F3A:
	sw	zero,s0,+0000000C

l23041F3E:
	c.mv	a0,s0
	jal	ra,00000000230414AE
	c.j	0000000023041EEA

l23041F46:
	c.mv	a5,a4

l23041F48:
	c.beqz	a5,0000000023041F3A

l23041F4A:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023041F46

l23041F50:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023041F3A

l23041F56:
	lui	a5,00023086
	addi	a5,a5,+00000430
	addi	a3,a5,+0000000C

l23041F62:
	c.lw	a5,4(a4)
	c.lw	a4,0(a4)

l23041F66:
	c.bnez	a4,0000000023041F86

l23041F68:
	c.addi	a5,00000004
	bne	a5,a3,0000000023041F62

l23041F6E:
	lui	a0,00042020
	c.mv	a1,s0
	addi	a0,a0,-00000158
	jal	ra,0000000023041A48
	c.mv	a1,s0
	c.li	a0,00000003
	jal	ra,000000002304024E
	c.j	0000000023041EEA

l23041F86:
	c.lw	a4,124(a2)
	bne	s0,a2,0000000023041F90

l23041F8C:
	sw	zero,a4,+0000007C

l23041F90:
	c.lw	a4,12(a4)
	c.j	0000000023041F66

l23041F94:
	lui	a0,00042020
	c.mv	a1,s0
	addi	a0,a0,-00000154
	jal	ra,0000000023041A48
	lui	a5,00042020
	sb	s1,a5,+00000EB4
	c.j	0000000023041F3E

;; tcp_close: 23041FAC
;;   Called from:
;;     2303C1B6 (in altcp_tcp_close)
;;     2303C32C (in altcp_tcp_new_ip_type)
;;     23041FFA (in tcp_recv_null)
;;     230467C0 (in lwip_netconn_do_close_internal)
;;     230470B8 (in lwip_netconn_do_listen)
tcp_close proc
	c.beqz	a0,0000000023041FCA

l23041FAE:
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	beq	a4,a5,0000000023041FC4

l23041FB8:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000010
	sh	a5,a0,+0000001A

l23041FC4:
	c.li	a1,00000001
	jal	zero,0000000023041E6E

l23041FCA:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; tcp_recv_null: 23041FCE
;;   Called from:
;;     2304207C (in tcp_process_refused_data)
;;     23043E1A (in tcp_input)
tcp_recv_null proc
	c.beqz	a1,0000000023041FFE

l23041FD0:
	c.beqz	a2,0000000023041FF4

l23041FD2:
	c.mv	a0,a1
	lhu	a1,a2,+00000008
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,00000000230416BC
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23041FF4:
	c.li	a0,00000000
	c.bnez	a3,0000000023042002

l23041FF8:
	c.mv	a0,a1
	jal	zero,0000000023041FAC

l23041FFE:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23042002:
	c.jr	ra

;; tcp_process_refused_data: 23042004
;;   Called from:
;;     23042126 (in tcp_fasttmr)
;;     230435FA (in tcp_input)
tcp_process_refused_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002304206A

l23042014:
	lw	s2,a0,+00000078
	lw	a5,a0,+00000084
	c.mv	s0,a0
	lbu	s3,s2,+0000000D
	sw	zero,a0,+00000078
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,a0
	c.beqz	a5,000000002304207A

l2304202E:
	c.lw	a0,16(a0)
	c.jalr	a5

l23042032:
	c.mv	s1,a0
	c.bnez	a0,0000000023042082

l23042036:
	andi	s3,s3,+00000020
	beq	s3,zero,000000002304206A

l2304203E:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,0000000023042052

l2304204C:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l23042052:
	lw	a5,s0,+00000084
	c.beqz	a5,000000002304206A

l23042058:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,000000002304206A

l23042068:
	c.li	s1,FFFFFFF3

l2304206A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304207A:
	c.li	a0,00000000
	jal	ra,0000000023041FCE
	c.j	0000000023042032

l23042082:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023042068

l23042088:
	sw	s2,s0,+00000078
	c.li	s1,FFFFFFFB
	c.j	000000002304206A

;; tcp_fasttmr: 23042090
;;   Called from:
;;     23042568 (in tcp_tmr)
tcp_fasttmr proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004200E
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	a3,a4,-0000007F
	lbu	a5,a3,+00000000
	addi	s2,a4,-0000007F
	lui	s4,00042020
	c.addi	a5,00000001
	sb	a5,a3,+00000000
	lui	s3,00042020

l230420BC:
	lw	s0,s4,-00000154

l230420C0:
	c.bnez	s0,00000000230420D2

l230420C2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230420D2:
	lbu	a5,s2,+00000000
	lbu	a4,s0,+0000001E
	beq	a4,a5,0000000023042134

l230420DE:
	sb	a5,s0,+0000001E
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023042104

l230420EC:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023044AD2
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l23042104:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000008
	c.beqz	a4,000000002304211A

l2304210E:
	c.andi	a5,FFFFFFF7
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023041420

l2304211A:
	c.lw	s0,120(a5)
	c.lw	s0,12(s1)
	c.beqz	a5,0000000023042130

l23042120:
	c.mv	a0,s0
	sb	zero,s3,+00000EB4
	jal	ra,0000000023042004
	lbu	a5,s3,-0000014C
	c.bnez	a5,00000000230420BC

l23042130:
	c.mv	s0,s1
	c.j	00000000230420C0

l23042134:
	c.lw	s0,12(s1)
	c.j	0000000023042130

;; tcp_shutdown: 23042138
;;   Called from:
;;     2303C166 (in altcp_tcp_shutdown)
;;     23046782 (in lwip_netconn_do_close_internal)
tcp_shutdown proc
	c.beqz	a0,0000000023042192

l2304213A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a3,a0,+00000014
	c.li	a4,00000001
	c.mv	s0,a0
	beq	a3,a4,0000000023042196

l2304214C:
	c.beqz	a1,0000000023042176

l2304214E:
	lhu	a4,a0,+0000001A
	c.li	a1,00000001
	ori	a4,a4,+00000010
	sh	a4,a0,+0000001A
	c.bnez	a2,0000000023042188

l2304215E:
	c.lw	a0,120(a0)
	c.bnez	a0,000000002304216C

l23042162:
	c.li	a0,00000000

l23042164:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304216C:
	jal	ra,0000000023040890
	sw	zero,s0,+00000078
	c.j	0000000023042162

l23042176:
	c.beqz	a2,0000000023042162

l23042178:
	c.li	a5,00000007
	bltu	a5,a3,0000000023042196

l2304217E:
	sll	a4,a4,a3
	andi	a4,a4,+00000098
	c.beqz	a4,0000000023042196

l23042188:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023041E6E

l23042192:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23042196:
	c.li	a0,FFFFFFF5
	c.j	0000000023042164

;; tcp_slowtmr: 2304219A
;;   Called from:
;;     2304258A (in tcp_tmr)
tcp_slowtmr proc
	c.addi16sp	FFFFFFB0
	c.swsp	s2,00000020
	lui	s2,00042020
	lw	a5,s2,-0000015C
	c.swsp	s5,00000098
	lui	s5,0004200E
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	addi	a4,s5,-0000007F
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.addi	a5,00000001
	sw	a5,s2,+00000EA4
	lbu	a5,a4,+00000000
	lui	s8,00023086
	lui	s9,0002308E
	c.addi	a5,00000001
	sb	a5,a4,+00000000
	addi	s5,s5,-0000007F
	lui	s7,00042020
	addi	s8,s8,+000003F0
	addi	s9,s9,-0000016C

l230421EE:
	lui	s6,00042020
	lw	s0,s6,-00000154
	c.lui	s4,00008000
	addi	s10,s4,-00000002
	c.li	s3,00000000
	c.addi	s4,FFFFFFFF

l23042200:
	c.bnez	s0,0000000023042232

l23042202:
	lui	a5,00042020
	lw	s1,a5,-00000160
	c.mv	s3,a5
	addi	s4,zero,+000000F0

l23042210:
	bne	s1,zero,0000000023042532

l23042214:
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

l23042232:
	lbu	a5,s5,+00000000
	lbu	a4,s0,+0000001E
	bne	a4,a5,0000000023042248

l2304223E:
	lw	s11,s0,+0000000C

l23042242:
	c.mv	s3,s0
	c.mv	s0,s11
	c.j	0000000023042200

l23042248:
	lbu	a3,s0,+00000014
	sb	a5,s0,+0000001E
	c.li	a4,00000002
	lbu	a5,s0,+00000042
	bne	a3,a4,000000002304229E

l2304225A:
	c.li	a4,00000005

l2304225C:
	c.li	s1,00000001
	bltu	a4,a5,00000000230422B2

l23042262:
	lbu	s1,s0,+000000A1
	beq	s1,zero,00000000230423B6

l2304226A:
	lbu	a4,s0,+000000A2
	c.li	a5,0000000B
	bltu	a5,a4,0000000023042464

l23042274:
	c.add	s1,s9
	lbu	a4,s1,-00000001
	lbu	a5,s0,+000000A0
	bltu	a5,a4,00000000230422A2

l23042282:
	lhu	a1,s0,+00000060
	beq	a1,zero,0000000023042398

l2304228A:
	c.mv	a0,s0
	jal	ra,00000000230444AC
	bne	a0,zero,00000000230423A0

l23042294:
	c.mv	a0,s0
	jal	ra,0000000023044AD2
	c.beqz	a0,00000000230422B0

l2304229C:
	c.j	00000000230423A0

l2304229E:
	c.li	a4,0000000B
	c.j	000000002304225C

l230422A2:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000A0
	bgeu	a5,a4,0000000023042282

l230422B0:
	c.li	s1,00000000

l230422B2:
	lbu	a5,s0,+00000014
	c.li	a4,00000006
	bne	a5,a4,00000000230422DA

l230422BC:
	lhu	a4,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,00000000230422DA

l230422C4:
	c.lw	s0,32(a3)
	lw	a4,s2,-0000015C
	c.sub	a4,a3
	addi	a3,zero,+00000028
	bgeu	a3,a4,00000000230422DA

l230422D4:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l230422DA:
	lbu	s11,s0,+00000009
	andi	s11,s11,+00000008
	beq	s11,zero,0000000023042322

l230422E6:
	c.li	a4,00000004
	beq	a5,a4,00000000230422F4

l230422EC:
	c.li	a4,00000007
	c.li	s11,00000000
	bne	a5,a4,0000000023042322

l230422F4:
	lw	a0,s0,+00000098
	lw	a4,s0,+0000009C
	lw	a1,s0,+00000094
	addi	a2,zero,+000001F4
	add	a4,a0,a4
	lw	a3,s2,-0000015C
	c.lw	s0,32(a5)
	c.sub	a3,a5
	c.add	a4,a1
	srl	a4,a4,a2
	bgeu	a4,a3,0000000023042468

l2304231A:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.li	s11,00000001

l23042322:
	c.lw	s0,116(a5)
	c.beqz	a5,0000000023042342

l23042326:
	c.lw	s0,32(a5)
	lw	a4,s2,-0000015C
	c.li	a3,00000006
	c.sub	a4,a5
	lh	a5,s0,+00000040
	add	a5,a5,a3
	bltu	a4,a5,0000000023042342

l2304233C:
	c.mv	a0,s0
	jal	ra,00000000230419D0

l23042342:
	lbu	a5,s0,+00000014
	c.li	a4,00000003
	bne	a5,a4,0000000023042492

l2304234C:
	c.lw	s0,32(a4)
	lw	a5,s2,-0000015C
	c.sub	a5,a4
	addi	a4,zero,+00000028
	bgeu	a4,a5,0000000023042362

l2304235C:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l23042362:
	bne	s1,zero,00000000230424A8

l23042366:
	lbu	a5,s0,+0000001C
	lbu	a4,s0,+0000001D
	lw	s11,s0,+0000000C
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000001C
	bltu	a5,a4,0000000023042242

l23042380:
	lw	a5,s0,+0000008C
	sb	zero,s0,+0000001C
	sb	zero,s7,+00000EB4
	bne	a5,zero,000000002304251E

l23042390:
	c.mv	a0,s0
	jal	ra,0000000023044AD2
	c.j	0000000023042242

l23042398:
	c.mv	a0,s0
	jal	ra,000000002304507C
	c.bnez	a0,00000000230422B0

l230423A0:
	lbu	a5,s0,+000000A1
	sb	zero,s0,+000000A0
	c.li	a4,00000006
	bltu	a4,a5,00000000230422B0

l230423AE:
	c.addi	a5,00000001
	sb	a5,s0,+000000A1
	c.j	00000000230422B0

l230423B6:
	lh	a5,s0,+00000030
	blt	a5,zero,0000000023042456

l230423BE:
	bne	a5,s4,0000000023042450

l230423C2:
	c.mv	a0,s0
	jal	ra,0000000023044854
	c.beqz	a0,00000000230423D6

l230423CA:
	c.lw	s0,112(a5)
	bne	a5,zero,00000000230422B0

l230423D0:
	c.lw	s0,108(a5)
	beq	a5,zero,00000000230422B0

l230423D6:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	beq	a4,a5,0000000023042410

l230423E0:
	lh	a5,s0,+0000003C
	lh	a4,s0,+0000003E
	c.li	a3,0000000C
	c.srai	a5,00000003
	c.add	a5,a4
	lbu	a4,s0,+00000042
	bgeu	a3,a4,00000000230423F8

l230423F6:
	c.li	a4,0000000C

l230423F8:
	andi	a4,a4,+000000FF
	c.add	a4,s8
	lbu	a4,a4,+00000000
	sll	a5,a5,a4
	bge	s10,a5,000000002304240C

l2304240A:
	c.mv	a5,s4

l2304240C:
	sh	a5,s0,+00000040

l23042410:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	sh	zero,s0,+00000030
	bgeu	a4,a5,0000000023042422

l23042420:
	c.mv	a5,a4

l23042422:
	lhu	a3,s0,+00000032
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a4,a3,00000001
	c.srli	a5,00000001
	c.slli	a4,10
	sh	a5,s0,+0000004A
	c.srli	a4,00000010
	bgeu	a5,a4,0000000023042440

l2304243C:
	sh	a4,s0,+0000004A

l23042440:
	sh	a3,s0,+00000048
	sh	zero,s0,+0000006A
	c.mv	a0,s0
	jal	ra,000000002304500A
	c.j	00000000230422B2

l23042450:
	c.addi	a5,00000001
	sh	a5,s0,+00000030

l23042456:
	lh	a4,s0,+00000030
	lh	a5,s0,+00000040
	blt	a4,a5,00000000230422B0

l23042462:
	c.j	00000000230423C2

l23042464:
	c.li	s1,00000001
	c.j	00000000230422B2

l23042468:
	lbu	a5,s0,+000000A3
	c.li	s11,00000000
	add	a5,a5,a0
	c.add	a5,a1
	srl	a5,a5,a2
	bgeu	a5,a3,0000000023042322

l2304247C:
	c.mv	a0,s0
	jal	ra,0000000023045042
	bne	a0,zero,0000000023042322

l23042486:
	lbu	a5,s0,+000000A3
	c.addi	a5,00000001
	sb	a5,s0,+000000A3
	c.j	0000000023042322

l23042492:
	c.li	a4,00000009
	bne	a5,a4,0000000023042500

l23042498:
	c.lw	s0,32(a4)
	lw	a5,s2,-0000015C
	c.sub	a5,a4
	addi	a4,zero,+000000F0

l230424A4:
	bgeu	a4,a5,0000000023042362

l230424A8:
	c.mv	a0,s0
	lw	s1,s0,+00000090
	jal	ra,00000000230419F0
	c.lw	s0,12(a5)
	beq	s3,zero,0000000023042518

l230424B8:
	sw	a5,s3,+0000000C

l230424BC:
	beq	s11,zero,00000000230424D8

l230424C0:
	lhu	a6,s0,+00000018
	lhu	a5,s0,+00000016
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,0000000023044A26

l230424D8:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	lw	s11,s0,+0000000C
	c.swsp	a5,00000084
	jal	ra,00000000230414AE
	sb	zero,s7,+00000EB4
	c.beqz	s1,00000000230424FC

l230424EC:
	c.lwsp	a2,000000E4
	c.li	a1,FFFFFFF3
	c.mv	a0,a5
	c.jalr	s1
	lbu	a5,s7,-0000014C
	bne	a5,zero,00000000230421EE

l230424FC:
	c.mv	s0,s3
	c.j	0000000023042242

l23042500:
	c.li	a4,00000005
	beq	a5,a4,000000002304250C

l23042506:
	c.li	a4,00000008
	bne	a5,a4,0000000023042362

l2304250C:
	c.lw	s0,32(a4)
	lw	a5,s2,-0000015C
	c.sub	a5,a4
	c.li	a4,0000000A
	c.j	00000000230424A4

l23042518:
	sw	a5,s6,+00000EAC
	c.j	00000000230424BC

l2304251E:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	lbu	a5,s7,-0000014C
	bne	a5,zero,00000000230421EE

l2304252C:
	bne	a0,zero,0000000023042242

l23042530:
	c.j	0000000023042390

l23042532:
	lw	a5,s2,-0000015C
	c.lw	s1,32(a4)
	c.sub	a5,a4
	bgeu	s4,a5,000000002304254E

l2304253E:
	c.mv	a0,s1
	jal	ra,00000000230419F0
	c.lw	s1,12(a5)
	c.bnez	s0,0000000023042554

l23042548:
	sw	a5,s3,+00000EA0
	c.j	0000000023042556

l2304254E:
	c.mv	s0,s1
	c.lw	s1,12(s1)
	c.j	0000000023042210

l23042554:
	c.sw	s0,12(a5)

l23042556:
	lw	s5,s1,+0000000C
	c.mv	a0,s1
	jal	ra,00000000230414AE
	c.mv	s1,s5
	c.j	0000000023042210

;; tcp_tmr: 23042564
;;   Called from:
;;     2304529E (in tcpip_tcp_timer)
tcp_tmr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023042090
	lui	a4,0004200E
	addi	a4,a4,-00000080
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.andi	a5,00000001
	c.beqz	a5,000000002304258E

l23042586:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304219A

l2304258E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; tcp_get_pcbs: 23042594
;;   Called from:
;;     230412A8 (in stats_netstat)
tcp_get_pcbs proc
	lui	a5,00023086
	addi	a5,a5,+00000430
	c.sw	a0,0(a5)
	c.li	a0,00000004
	c.jr	ra

;; tcp_get_next_optbyte: 230425A2
;;   Called from:
;;     23042720 (in tcp_parseopt.isra.0.part.1)
;;     23042734 (in tcp_parseopt.isra.0.part.1)
;;     23042746 (in tcp_parseopt.isra.0.part.1)
;;     23042752 (in tcp_parseopt.isra.0.part.1)
;;     23042772 (in tcp_parseopt.isra.0.part.1)
tcp_get_next_optbyte proc
	lui	a4,0004200E
	addi	a4,a4,-00000068
	lhu	a5,a4,+00000000
	addi	a3,a5,+00000001
	sh	a3,a4,+00000000
	lui	a4,0004200E
	lw	a4,a4,-0000005C
	c.beqz	a4,00000000230425CC

l230425C0:
	lui	a3,0004200E
	lhu	a3,a3,-00000060
	bgeu	a5,a3,00000000230425DC

l230425CC:
	lui	a4,0004200E
	lw	a4,a4,-00000064
	c.add	a5,a4
	lbu	a0,a5,+00000014
	c.jr	ra

l230425DC:
	c.sub	a5,a3
	andi	a5,a5,+000000FF
	c.add	a5,a4
	lbu	a0,a5,+00000000
	c.jr	ra

;; tcp_oos_insert_segment: 230425EA
;;   Called from:
;;     23043062 (in tcp_receive)
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
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.bnez	a0,0000000023042674

l23042610:
	lui	s3,0004200E

l23042614:
	lw	a4,s2,+00000010
	lw	a2,s3,-0000006C
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
	bge	a3,zero,000000002304267E

l2304264C:
	c.sub	a5,a1
	bge	zero,a5,0000000023042662

l23042652:
	c.sub	a1,a2
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,0000000023040A70

l23042662:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23042674:
	c.mv	a0,s2
	jal	ra,0000000023041736

l2304267A:
	c.li	s2,00000000
	c.j	0000000023042662

l2304267E:
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,00000000230426B8

l23042692:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002303C332
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D

l230426B8:
	lw	s0,s2,+00000000
	c.mv	a0,s2
	jal	ra,0000000023041712
	c.beqz	s0,000000002304267A

l230426C4:
	c.mv	s2,s0
	c.j	0000000023042614

;; tcp_parseopt.isra.0.part.1: 230426C8
;;   Called from:
;;     230438C8 (in tcp_input)
;;     230439DC (in tcp_input)
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
	sh	zero,s1,+00000F98
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a0
	addi	s1,s1,-00000068
	lui	s2,0004200E
	c.li	s4,00000001
	c.li	s5,00000001
	c.li	s6,00000002
	c.li	s7,00000004
	addi	s8,zero,+000002AF

l230426FC:
	lhu	s0,s2,-00000058
	lhu	a5,s1,+00000000
	bltu	a5,s0,0000000023042720

l23042708:
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

l23042720:
	jal	ra,00000000230425A2
	beq	a0,s4,00000000230426FC

l23042728:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	c.beqz	a5,0000000023042708

l23042730:
	bne	a0,s6,0000000023042772

l23042734:
	jal	ra,00000000230425A2
	bne	a0,s7,0000000023042708

l2304273C:
	lhu	a5,s1,+00000000
	c.addi	a5,00000001
	bge	a5,s0,0000000023042708

l23042746:
	jal	ra,00000000230425A2
	c.slli	a0,08
	slli	s0,a0,00000010
	c.srli	s0,00000010
	jal	ra,00000000230425A2
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	addi	a5,a0,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s8,a5,000000002304276C

l23042768:
	addi	a0,zero,+000002B0

l2304276C:
	sh	a0,s3,+00000000
	c.j	00000000230426FC

l23042772:
	jal	ra,00000000230425A2
	bgeu	s5,a0,0000000023042708

l2304277A:
	lhu	a5,s1,+00000000
	c.addi	a5,FFFFFFFE
	c.add	a5,a0
	sh	a5,s1,+00000000
	c.j	00000000230426FC

;; tcp_input_delayed_close: 23042788
;;   Called from:
;;     23043D9E (in tcp_input)
;;     23043E08 (in tcp_input)
tcp_input_delayed_close proc
	lui	a5,0004200E
	lbu	a5,a5,-00000070
	c.andi	a5,00000010
	c.beqz	a5,00000000230427CE

l23042794:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000010
	c.bnez	a5,00000000230427B0

l230427A4:
	lw	a5,a0,+00000090
	c.beqz	a5,00000000230427B0

l230427AA:
	c.lw	a0,16(a0)
	c.li	a1,FFFFFFF1
	c.jalr	a5

l230427B0:
	lui	a0,00042020
	c.mv	a1,s0
	addi	a0,a0,-00000154
	jal	ra,0000000023041A48
	c.mv	a0,s0
	jal	ra,00000000230414AE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230427CE:
	c.li	a0,00000000
	c.jr	ra

;; tcp_free_acked_segments.isra.3: 230427D2
;;   Called from:
;;     23042D00 (in tcp_receive)
;;     23042D0A (in tcp_receive)
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

l230427EE:
	c.beqz	s0,000000002304283E

l230427F0:
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
	jal	ra,000000002303C340
	c.lw	s0,16(a5)
	c.mv	s5,a0
	lhu	s1,s0,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lw	a5,s3,-0000007C
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.sub	s1,a5
	c.add	s1,s5
	c.add	s1,a0
	bge	zero,s1,0000000023042852

l2304283E:
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

l23042852:
	c.lw	s0,4(a0)
	c.lw	s0,0(s1)
	jal	ra,0000000023040B2C
	lhu	a5,s2,+00000000
	addi	a4,s4,-00000076
	lhu	a3,a4,+00000000
	sub	a0,a5,a0
	sh	a0,s2,+00000000
	lhu	a5,s0,+00000008
	c.mv	a0,s0
	c.mv	s0,s1
	c.add	a5,a3
	sh	a5,a4,+00000000
	jal	ra,0000000023041712
	c.j	00000000230427EE

;; tcp_receive: 23042882
;;   Called from:
;;     23043B88 (in tcp_input)
;;     23043C40 (in tcp_input)
;;     23043C48 (in tcp_input)
;;     23043CEE (in tcp_input)
;;     23043D26 (in tcp_input)
;;     23043D60 (in tcp_input)
tcp_receive proc
	lui	a5,0004200E
	lbu	a5,a5,-00000078
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
	addi	s3,s3,-0000006C
	addi	s4,s4,-00000056
	beq	a5,zero,0000000023042A0C

l230428B6:
	lw	a1,s3,+00000000
	c.lw	a0,84(a5)
	lui	s1,0004200E
	lbu	a6,a0,+00000014
	lhu	a3,a0,+00000060
	c.lw	a0,88(a2)
	sub	a0,a5,a1
	lw	a4,s1,-0000007C
	addi	s1,s1,-0000007C
	blt	a0,zero,0000000023042904

l230428DA:
	bne	a5,a1,00000000230428E6

l230428DE:
	sub	a5,a2,a4
	blt	a5,zero,0000000023042904

l230428E6:
	bne	a2,a4,000000002304292E

l230428EA:
	lui	a5,0004200E
	lw	a0,a5,-00000064
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	c.slli	a5,08
	or	a5,a5,a7
	bgeu	a3,a5,000000002304292E

l23042904:
	lui	a5,0004200E
	lw	a0,a5,-00000064
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	lhu	a0,s0,+00000062
	c.slli	a5,08
	or	a5,a5,a7
	sh	a5,s0,+00000060
	bgeu	a0,a5,000000002304292A

l23042926:
	sh	a5,s0,+00000062

l2304292A:
	c.sw	s0,84(a1)
	c.sw	s0,88(a4)

l2304292E:
	c.lw	s0,68(a1)
	sub	a5,a4,a1
	blt	zero,a5,0000000023042C56

l23042938:
	lhu	a5,s4,+00000000
	bne	a5,zero,0000000023042C50

l23042940:
	lhu	a5,s0,+00000060
	c.lw	s0,88(a0)
	c.add	a3,a2
	c.add	a5,a0
	bne	a5,a3,0000000023042C50

l2304294E:
	lh	a5,s0,+00000030
	blt	a5,zero,0000000023042C50

l23042956:
	bne	a1,a4,0000000023042C50

l2304295A:
	lbu	a5,s0,+00000043
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002304296C

l23042966:
	c.addi	a5,00000001
	sb	a5,s0,+00000043

l2304296C:
	lbu	a4,s0,+00000043
	c.li	a5,00000003
	bgeu	a5,a4,0000000023042992

l23042976:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000032
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a4,000000002304298C

l23042988:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l2304298C:
	sh	a5,s0,+00000048
	c.j	0000000023042996

l23042992:
	bne	a4,a5,000000002304299C

l23042996:
	c.mv	a0,s0
	jal	ra,00000000230449BA

l2304299C:
	c.lw	s0,52(a2)
	c.beqz	a2,0000000023042A0C

l230429A0:
	c.lw	s0,56(a5)
	c.lw	s1,0(a4)
	c.sub	a5,a4
	bge	a5,zero,0000000023042A0C

l230429AA:
	lh	a3,s0,+0000003C
	lui	a5,00042020
	lhu	a4,a5,-0000015C
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
	bge	a0,zero,00000000230429EA

l230429E0:
	c.sub	a2,a4
	c.add	a2,a1
	slli	a0,a2,00000010
	c.srai	a0,00000010

l230429EA:
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

l23042A0C:
	lhu	a2,s4,+00000000
	c.lw	s0,36(a3)
	lw	a5,s3,+00000000
	beq	a2,zero,0000000023043240

l23042A1A:
	lbu	a1,s0,+00000014
	c.li	a4,00000006
	bltu	a4,a1,0000000023043240

l23042A24:
	sub	a1,a3,a5
	addi	a4,a1,-00000001
	blt	a4,zero,0000000023042DC0

l23042A30:
	c.li	a4,00000001
	c.sub	a4,a5
	c.sub	a4,a2
	c.add	a4,a3
	blt	zero,a4,0000000023042DC0

l23042A3C:
	lui	a4,00042015
	addi	a5,a4,+00000270
	lhu	a3,a5,+00000008
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a5,4(a0)
	c.sub	a3,a1
	sh	a3,a5,+00000008
	lhu	a5,a0,+00000008
	addi	s1,a4,+00000270
	c.sub	a5,a1
	c.slli	a5,10
	c.srli	a5,00000010

l23042A62:
	lhu	a4,a0,+0000000A
	bltu	a4,a1,0000000023042DAE

l23042A6A:
	jal	ra,000000002304082E
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

l23042A90:
	lw	a5,s3,+00000000
	c.lw	s0,36(a4)
	sub	a3,a5,a4
	blt	a3,zero,0000000023042FFC

l23042A9E:
	lhu	a2,s0,+00000028
	addi	a0,a5,+00000001
	sub	a3,a0,a4
	c.sub	a3,a2
	blt	zero,a3,0000000023042FFC

l23042AB0:
	bne	a5,a4,0000000023042FE4

l23042AB4:
	lui	s1,00042015
	addi	a5,s1,+00000270
	lhu	s2,a5,+00000008
	c.lw	a5,16(a5)
	addi	s1,s1,+00000270
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.slli	a0,10
	lhu	a5,s0,+00000028
	c.srli	a0,00000010
	sh	a0,s4,+00000000
	bgeu	a5,a0,0000000023042B94

l23042AEE:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,0000000023042B40

l23042B04:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002303C332
	andi	a0,a0,+0000003E
	jal	ra,000000002303C332
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

l23042B40:
	lhu	a5,s0,+00000028
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000002
	c.beqz	a0,0000000023042B68

l23042B5E:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l23042B68:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,0000000023040A70
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l23042B94:
	c.lw	s0,116(a5)
	beq	a5,zero,0000000023042DE0

l23042B9A:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	bne	a0,zero,0000000023042DDC

l23042BB2:
	lw	s5,s0,+00000074

l23042BB6:
	lw	a1,s3,+00000000
	lhu	a4,s4,+00000000
	c.add	a4,a1
	beq	s5,zero,0000000023042C4A

l23042BC4:
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
	bge	a2,zero,0000000023042E48

l23042BF2:
	c.sub	a4,a5
	bge	zero,a4,0000000023042C4A

l23042BF8:
	c.sub	a5,a1
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000002
	c.beqz	a0,0000000023042C1E

l23042C14:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l23042C1E:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,0000000023040A70
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l23042C4A:
	sw	s5,s0,+00000074
	c.j	0000000023042DE0

l23042C50:
	sb	zero,s0,+00000043
	c.j	000000002304299C

l23042C56:
	c.lw	s0,80(a3)
	sub	a3,a4,a3
	blt	zero,a3,0000000023042DA6

l23042C60:
	lhu	a3,s0,+0000001A
	andi	a2,a3,+00000004
	c.beqz	a2,0000000023042C7C

l23042C6A:
	c.andi	a3,FFFFFFFB
	sh	a3,s0,+0000001A
	lhu	a3,s0,+0000004A
	sh	zero,s0,+0000006A
	sh	a3,s0,+00000048

l23042C7C:
	lh	a3,s0,+0000003C
	lhu	a2,s0,+0000003E
	c.sw	s0,68(a4)
	c.srai	a3,00000003
	c.add	a3,a2
	sh	a3,s0,+00000040
	sh	zero,s0,+00000042
	c.li	a4,00000003
	bgeu	a4,a6,0000000023042CF8

l23042C98:
	lhu	a3,s0,+00000048
	lhu	a4,s0,+0000004A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a4,0000000023042CE2

l23042CA8:
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
	bgeu	a5,a4,0000000023042CCE

l23042CCC:
	c.mv	a2,a5

l23042CCE:
	add	a5,a3,a2

l23042CD2:
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a3,0000000023042CDC

l23042CDA:
	c.li	a5,FFFFFFFF

l23042CDC:
	sh	a5,s0,+00000048
	c.j	0000000023042CF8

l23042CE2:
	lhu	a4,s0,+0000006A
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,a4,0000000023042D5C

l23042CF0:
	bgeu	a5,a3,0000000023042D60

l23042CF4:
	sh	a5,s0,+0000006A

l23042CF8:
	c.lw	s0,112(a1)
	addi	s2,s0,+00000066
	c.mv	a0,s2
	jal	ra,00000000230427D2
	c.lw	s0,108(a1)
	c.sw	s0,112(a0)
	c.mv	a0,s2
	jal	ra,00000000230427D2
	c.lw	s0,112(a5)
	c.sw	s0,108(a0)
	sb	zero,s0,+0000001C
	sltiu	a4,a5,+00000001
	sub	a4,zero,a4
	sh	a4,s0,+00000030
	c.bnez	a0,0000000023042D28

l23042D24:
	sh	zero,s0,+00000068

l23042D28:
	lui	a3,0004200E
	lhu	a4,s0,+00000064
	lhu	a3,a3,-00000076
	c.add	a4,a3
	sh	a4,s0,+00000064
	lhu	a4,s0,+0000001A
	slli	a3,a4,00000014
	bge	a3,zero,000000002304299C

l23042D46:
	c.bnez	a5,0000000023042D9E

l23042D48:
	c.bnez	a0,0000000023042D6E

l23042D4A:
	lhu	a5,s0,+0000001A
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000001A
	c.j	000000002304299C

l23042D5C:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l23042D60:
	c.sub	a5,a3
	sh	a5,s0,+0000006A
	lhu	a5,s0,+00000032
	c.add	a5,a3
	c.j	0000000023042CD2

l23042D6E:
	lw	s2,s0,+0000004C
	c.lw	a0,16(a4)

l23042D74:
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
	jal	ra,000000002303C340
	sub	a0,s2,a0
	blt	zero,a0,000000002304299C

l23042D9C:
	c.j	0000000023042D4A

l23042D9E:
	lw	s2,s0,+0000004C
	c.lw	a5,16(a4)
	c.j	0000000023042D74

l23042DA6:
	c.mv	a0,s0
	jal	ra,0000000023044A80
	c.j	000000002304299C

l23042DAE:
	c.sub	a1,a4
	c.slli	a1,10
	sh	a5,a0,+00000008
	sh	zero,a0,+0000000A
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	0000000023042A62

l23042DC0:
	c.sub	a5,a3
	bge	a5,zero,0000000023042A90

l23042DC6:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.j	0000000023042A90

l23042DD4:
	c.lw	a0,0(a5)
	c.sw	s0,116(a5)
	jal	ra,0000000023041712

l23042DDC:
	c.lw	s0,116(a0)
	c.bnez	a0,0000000023042DD4

l23042DE0:
	lhu	a3,s4,+00000000
	lhu	a5,s0,+00000028
	lw	a4,s3,+00000000
	c.mv	a0,s0
	c.sub	a5,a3
	c.add	a4,a3
	c.sw	s0,36(a4)
	sh	a5,s0,+00000028
	jal	ra,0000000023041672
	c.lw	s1,4(a5)
	lhu	a4,a5,+00000008
	c.beqz	a4,0000000023042E10

l23042E04:
	lui	a4,0004200E
	sw	a5,a4,+00000F8C
	sw	zero,s1,+00000004

l23042E10:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,0000000023042E3A

l23042E26:
	lui	a5,0004200E
	addi	a5,a5,-00000070
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000020
	sb	a4,a5,+00000000

l23042E3A:
	lui	s2,0004200E
	lui	s4,0004200E
	c.li	s5,00000004
	c.li	s6,00000007
	c.j	0000000023042F88

l23042E48:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,0000000023042EBE

l23042E5C:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000002
	c.bnez	a0,0000000023042EBE

l23042E72:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.li	a0,00000001
	jal	ra,000000002303C332
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
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l23042EBE:
	lw	s2,s5,+00000000
	c.mv	a0,s5
	jal	ra,0000000023041712
	c.mv	s5,s2
	c.j	0000000023042BB6

l23042ECC:
	sw	a5,s3,+00000000
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	lhu	s7,s1,+00000008
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
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
	jal	ra,000000002303C332
	c.lw	s1,16(a5)
	lhu	s7,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lhu	a5,s0,+00000028
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s7
	sub	a0,a5,a0
	sh	a0,s0,+00000028
	c.mv	a0,s0
	jal	ra,0000000023041672
	c.lw	s1,4(a1)
	lhu	a5,a1,+00000008
	c.beqz	a5,0000000023042F4C

l23042F3C:
	addi	a5,s2,-00000074
	c.lw	a5,0(a0)
	c.beqz	a0,0000000023042FC2

l23042F44:
	jal	ra,0000000023040B62

l23042F48:
	sw	zero,s1,+00000004

l23042F4C:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,0000000023042F7E

l23042F62:
	addi	a4,s4,-00000070
	lbu	a5,a4,+00000000
	ori	a5,a5,+00000020
	sb	a5,a4,+00000000
	lbu	a5,s0,+00000014
	bne	a5,s5,0000000023042F7E

l23042F7A:
	sb	s6,s0,+00000014

l23042F7E:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	c.sw	s0,116(a5)
	jal	ra,0000000023041712

l23042F88:
	c.lw	s0,116(s1)
	c.beqz	s1,0000000023042FB0

l23042F8C:
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
	beq	a5,a3,0000000023042ECC

l23042FB0:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023042FC6

l23042FBA:
	c.andi	a5,FFFFFFFE

l23042FBC:
	ori	a5,a5,+00000002
	c.j	0000000023042FCA

l23042FC2:
	c.sw	a5,0(a1)
	c.j	0000000023042F48

l23042FC6:
	ori	a5,a5,+00000001

l23042FCA:
	sh	a5,s0,+0000001A

l23042FCE:
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

l23042FE4:
	c.lw	s0,116(s1)
	c.li	s2,00000000
	addi	a6,a5,-00000001
	c.bnez	s1,0000000023043018

l23042FEE:
	lui	a0,00042015
	addi	a0,a0,+00000270
	jal	ra,000000002304175A
	c.sw	s0,116(a0)

l23042FFC:
	c.mv	a0,s0
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
	jal	zero,0000000023044A80

l23043016:
	c.mv	s1,a3

l23043018:
	c.lw	s1,16(a2)
	lbu	a3,a2,+00000005
	lbu	a4,a2,+00000004
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,a2,+00000006
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,a2,+00000007
	c.slli	a4,18
	c.or	a4,a3
	bne	a5,a4,000000002304306C

l2304303A:
	lui	a0,00042015
	addi	a5,a0,+00000270
	lhu	a4,a5,+00000008
	lhu	a5,s1,+00000008
	bgeu	a5,a4,0000000023042FFC

l2304304E:
	addi	a0,a0,+00000270
	jal	ra,000000002304175A
	c.beqz	a0,0000000023042FFC

l23043058:
	beq	s2,zero,0000000023043068

l2304305C:
	sw	a0,s2,+00000000

l23043060:
	c.mv	a1,s1

l23043062:
	jal	ra,00000000230425EA
	c.j	0000000023042FFC

l23043068:
	c.sw	s0,116(a0)
	c.j	0000000023043060

l2304306C:
	bne	s2,zero,000000002304308A

l23043070:
	sub	a3,a5,a4
	bge	a3,zero,0000000023043116

l23043078:
	lui	a0,00042015
	addi	a0,a0,+00000270
	jal	ra,000000002304175A
	c.beqz	a0,0000000023042FFC

l23043086:
	c.sw	s0,116(a0)
	c.j	0000000023043060

l2304308A:
	lw	a7,s2,+00000010
	lbu	a1,a7,+00000005
	lbu	a3,a7,+00000004
	c.slli	a1,08
	c.or	a1,a3
	lbu	a3,a7,+00000006
	c.slli	a3,10
	c.or	a1,a3
	lbu	a3,a7,+00000007
	c.slli	a3,18
	c.or	a3,a1
	sub	a3,a6,a3
	blt	a3,zero,0000000023043116

l230430B2:
	sub	a3,a0,a4
	blt	zero,a3,0000000023043116

l230430BA:
	lui	a0,00042015
	addi	a0,a0,+00000270
	jal	ra,000000002304175A
	c.mv	s4,a0
	c.beqz	a0,0000000023042FFC

l230430CA:
	lw	a4,s2,+00000010
	lbu	a5,a4,+00000005
	lbu	a1,a4,+00000004
	c.slli	a5,08
	c.or	a1,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,a4,+00000007
	lhu	a4,s2,+00000008
	c.slli	a1,18
	c.or	a5,a1
	lw	a1,s3,+00000000
	c.add	a4,a5
	c.sub	a4,a1
	bge	zero,a4,000000002304310C

l230430FA:
	c.sub	a1,a5
	c.slli	a1,10
	lw	a0,s2,+00000004
	c.srli	a1,00000010
	sh	a1,s2,+00000008
	jal	ra,0000000023040A70

l2304310C:
	sw	s4,s2,+00000000
	c.mv	a1,s1
	c.mv	a0,s4
	c.j	0000000023043062

l23043116:
	c.lw	s1,0(a3)
	c.mv	s2,s1
	bne	a3,zero,0000000023043016

l2304311E:
	c.sub	a5,a4
	bge	zero,a5,0000000023042FFC

l23043124:
	lbu	a5,a2,+0000000D
	lbu	a0,a2,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	bne	a0,zero,0000000023042FFC

l2304313A:
	lui	a0,00042015
	addi	a0,a0,+00000270
	jal	ra,000000002304175A
	c.sw	s1,0(a0)
	beq	a0,zero,0000000023042FFC

l2304314C:
	c.lw	s1,16(a4)
	lbu	a5,a4,+00000005
	lbu	a1,a4,+00000004
	c.slli	a5,08
	c.or	a1,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,a4,+00000007
	lhu	a4,s1,+00000008
	c.slli	a1,18
	c.or	a5,a1
	lw	a1,s3,+00000000
	c.add	a4,a5
	c.sub	a4,a1
	bge	zero,a4,000000002304318A

l2304317A:
	c.sub	a1,a5
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,0000000023040A70

l2304318A:
	lw	a4,s3,+00000000
	lhu	a5,s4,+00000000
	c.add	a5,a4
	c.lw	s0,36(a4)
	c.sub	a5,a4
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	bge	zero,a5,0000000023042FFC

l230431A2:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,00000000230431FA

l230431BA:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002303C332
	andi	a0,a0,+0000003E
	jal	ra,000000002303C332
	c.lw	s1,0(a5)
	c.lw	a5,16(a4)
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	and	s2,s2,a5
	or	a0,s2,a0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l230431FA:
	lw	a3,s3,+00000000
	lhu	a5,s0,+00000028
	c.lw	s1,0(a4)
	c.sub	a5,a3
	c.lw	s0,36(a3)
	c.add	a5,a3
	sh	a5,a4,+00000008
	c.lw	s1,0(a5)
	lhu	a1,a5,+00000008
	c.lw	a5,4(a0)
	jal	ra,0000000023040A70
	c.lw	s1,0(a5)
	lhu	s1,a5,+00000008
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s1,a0
	sh	s1,s4,+00000000
	c.j	0000000023042FFC

l23043240:
	sub	a4,a5,a3
	blt	a4,zero,0000000023043256

l23043248:
	lhu	a4,s0,+00000028
	c.addi	a5,00000001
	c.sub	a5,a3
	c.sub	a5,a4
	bge	zero,a5,0000000023042FCE

l23043256:
	lhu	a5,s0,+0000001A
	c.j	0000000023042FBC

;; tcp_input: 2304325C
;;   Called from:
;;     2303F7AE (in ip4_input)
tcp_input proc
	c.addi16sp	FFFFFFB0
	lui	a7,00042020
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s11,0000008C
	addi	a4,a7,-00000268
	lhu	a5,a4,+00000096
	lui	s2,0004200E
	c.li	s0,00000013
	c.addi	a5,00000001
	sh	a5,a4,+00000096
	c.lw	a0,4(a5)
	c.mv	s1,a0
	addi	s10,a7,-00000268
	sw	a5,s2,+00000F9C
	lhu	a5,a0,+0000000A
	bltu	s0,a5,00000000230432B0

l230432A4:
	lhu	a5,s10,+0000009E
	c.addi	a5,00000001
	sh	a5,s10,+0000009E
	c.j	00000000230432E4

l230432B0:
	lui	s4,00042020
	addi	s3,s4,-00000140
	lw	a1,s3,+00000000
	lw	a0,s3,+00000014
	addi	s4,s4,-00000140
	jal	ra,000000002303FA5A
	c.bnez	a0,00000000230432DA

l230432CA:
	lw	a5,s3,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230432F0

l230432DA:
	lhu	a5,s10,+000000A4
	c.addi	a5,00000001
	sh	a5,s10,+000000A4

l230432E4:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A
	c.j	0000000023043728

l230432F0:
	lhu	a2,s1,+00000008
	lui	s5,00042020
	lui	s6,00042020
	addi	a4,s5,-0000012C
	addi	a3,s6,-00000130
	c.li	a1,00000006
	c.mv	a0,s1
	jal	ra,000000002303CDB4
	c.swsp	s5,00000080
	c.beqz	a0,000000002304331C

l23043310:
	lhu	a5,s10,+0000009C
	c.addi	a5,00000001
	sh	a5,s10,+0000009C
	c.j	00000000230432E4

l2304331C:
	addi	s2,s2,-00000064
	lw	a5,s2,+00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	srli	a1,a0,0000000A
	andi	a1,a1,+000000FC
	bgeu	s0,a1,00000000230432A4

l23043340:
	lhu	a5,s1,+00000008
	slli	a4,a1,00000010
	c.srli	a4,00000010
	bltu	a5,a4,00000000230432A4

l2304334E:
	addi	a5,a4,-00000014
	lui	a2,0004200E
	c.slli	a5,10
	lui	s8,0004200E
	lhu	a3,s1,+0000000A
	addi	s7,a2,-00000058
	c.srli	a5,00000010
	addi	s8,s8,-0000005C
	addi	a2,a2,-00000058
	lui	s3,0004200E
	sh	a5,s7,+00000000
	sw	zero,s8,+00000000
	c.swsp	a2,00000004
	addi	s3,s3,-00000060
	bltu	a3,a4,00000000230434F2

l23043384:
	c.mv	a0,s1
	sh	a5,s3,+00000000
	jal	ra,000000002304082E

l2304338E:
	lw	s0,s2,+00000000
	lui	s11,0004200E
	lui	s5,0004200E
	lbu	a5,s0,+00000001
	lbu	a0,s0,+00000000
	lui	s7,0004200E
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	lw	s0,s2,+00000000
	lbu	a5,s0,+00000003
	lbu	a0,s0,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	sb	a0,s0,+00000002
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	lw	s0,s2,+00000000
	lbu	a0,s0,+00000005
	lbu	a5,s0,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303C340
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	sb	a5,s0,+00000006
	srli	a5,a0,00000018
	sb	a0,s0,+00000004
	sb	a5,s0,+00000007
	lw	s0,s2,+00000000
	sw	a0,s11,+00000F94
	addi	s11,s11,-0000006C
	lbu	a0,s0,+00000009
	lbu	a5,s0,+00000008
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+0000000A
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+0000000B
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303C340
	srli	a5,a0,00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	sb	a5,s0,+0000000A
	srli	a5,a0,00000018
	sb	a0,s0,+00000008
	sb	a5,s0,+0000000B
	lw	s0,s2,+00000000
	sw	a0,s5,+00000F84
	addi	s5,s5,-0000007C
	lbu	a5,s0,+0000000F
	lbu	a0,s0,+0000000E
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lw	a5,s2,+00000000
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	andi	a4,a0,+000000FF
	andi	a5,a4,+0000003F
	sb	a5,s7,+00000F88
	lui	a2,0004200E
	andi	a5,a4,+00000003
	lhu	a3,s1,+00000008
	addi	s7,s7,-00000078
	addi	a2,a2,-00000056
	c.beqz	a5,000000002304353E

l230434BA:
	addi	a5,a3,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a2,+00000000
	bltu	a5,a3,00000000230432A4

l230434CA:
	lui	s3,00042020
	lw	a6,s3,-00000154
	lw	t4,s4,+00000004
	lw	a3,s2,+00000000
	lw	t6,s4,+00000010
	lw	t5,s4,+00000014
	c.mv	s0,a6
	c.li	a0,00000000

l230434E6:
	c.bnez	s0,0000000023043544

l230434E8:
	lui	a5,00042020
	lw	a0,a5,-00000160
	c.j	000000002304374C

l230434F2:
	c.li	a1,00000014
	c.mv	a0,s1
	jal	ra,000000002304082E
	lhu	s0,s1,+0000000A
	c.mv	a0,s1
	lhu	s7,s7,+00000000
	c.mv	a1,s0
	sh	s0,s3,+00000000
	jal	ra,000000002304082E
	c.lw	s1,0(a0)
	sub	s3,s7,s0
	c.slli	s3,10
	lhu	a5,a0,+0000000A
	srli	s3,s3,00000010
	bltu	a5,s3,00000000230432A4

l23043522:
	c.lw	a0,4(a5)
	c.mv	a1,s3
	sw	a5,s8,+00000000
	jal	ra,000000002304082E
	lhu	a5,s1,+00000008
	c.add	s0,a5
	sub	s0,s0,s7
	sh	s0,s1,+00000008
	c.j	000000002304338E

l2304353E:
	sh	a3,a2,+00000000
	c.j	00000000230434CA

l23043544:
	lbu	t3,s0,+00000008
	beq	t3,zero,000000002304355A

l2304354C:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	t3,a5,0000000023043672

l2304355A:
	lbu	a5,a3,+00000001
	lbu	t0,a3,+00000000
	lhu	t3,s0,+00000018
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,0000000023043672

l23043570:
	lbu	a5,a3,+00000003
	lbu	t0,a3,+00000002
	lhu	t3,s0,+00000016
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,0000000023043672

l23043586:
	c.lw	s0,4(a5)
	bne	a5,t6,0000000023043672

l2304358C:
	c.lw	s0,0(a5)
	bne	a5,t5,0000000023043672

l23043592:
	c.beqz	a0,0000000023043666

l23043594:
	c.lw	s0,12(a5)
	sw	s0,s3,+00000EAC
	c.sw	a0,12(a5)
	sw	a6,s0,+0000000C

l230435A0:
	lhu	a0,s1,+00000008
	lui	a1,00042015
	addi	a5,a1,+00000270
	lui	s9,0004200E
	lui	s4,0004200E
	lui	s8,0004200E
	sw	zero,s9,+00000F8C
	sb	zero,s4,+00000F90
	sh	zero,s8,+00000F8A
	sw	zero,a5,+00000000
	sh	a0,a5,+00000008
	c.sw	a5,4(s1)
	c.sw	a5,16(a3)
	c.andi	a4,00000008
	c.swsp	a5,00000084
	addi	s4,s4,-00000070
	addi	s8,s8,-00000076
	addi	s9,s9,-00000074
	c.beqz	a4,00000000230435EE

l230435E2:
	lbu	a5,s1,+0000000D
	ori	a5,a5,+00000001
	sb	a5,s1,+0000000D

l230435EE:
	c.lw	s0,120(a5)
	lui	s1,00042020
	beq	a5,zero,000000002304391A

l230435F8:
	c.mv	a0,s0
	jal	ra,0000000023042004
	c.li	a5,FFFFFFF3
	beq	a0,a5,000000002304361A

l23043604:
	c.lw	s0,120(a5)
	lui	a4,0004200E
	addi	a2,a4,-00000056
	beq	a5,zero,000000002304391A

l23043612:
	lhu	a5,a2,+00000000
	beq	a5,zero,000000002304391A

l2304361A:
	lhu	a5,s0,+0000002A
	c.bnez	a5,0000000023043626

l23043620:
	c.mv	a0,s0
	jal	ra,0000000023044A80

l23043626:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A

l23043630:
	c.lwsp	a2,000000E4
	sw	zero,s1,+00000EB8
	sw	zero,s9,+00000000
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023043648

l2304363E:
	jal	ra,0000000023040890
	c.lwsp	a2,000000E4
	sw	zero,a5,+00000004

l23043648:
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

l23043666:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	00000000230435A0

l23043672:
	c.mv	a0,s0
	c.lw	s0,12(s0)
	c.j	00000000230434E6

l23043678:
	lbu	a6,a0,+00000008
	beq	a6,zero,000000002304368E

l23043680:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a6,a5,000000002304374A

l2304368E:
	lbu	a5,a3,+00000001
	lbu	a6,a3,+00000000
	c.slli	a5,08
	or	a5,a5,a6
	lhu	a6,a0,+00000018
	bne	a6,a5,000000002304374A

l230436A4:
	lbu	t3,a3,+00000003
	lbu	a5,a3,+00000002
	c.slli	t3,08
	or	t3,t3,a5
	lhu	a5,a0,+00000016
	bne	a5,t3,000000002304374A

l230436BA:
	lw	t3,a0,+00000004
	bne	t6,t3,000000002304374A

l230436C2:
	lw	t3,a0,+00000000
	bne	t5,t3,000000002304374A

l230436CA:
	andi	a3,a4,+00000004
	c.bnez	a3,0000000023043728

l230436D0:
	andi	a3,a4,+00000002
	lhu	a2,a2,+00000000
	c.beqz	a3,0000000023043708

l230436DA:
	lw	a7,s11,+00000000
	c.lw	a0,36(a4)
	sub	a4,a7,a4
	blt	a4,zero,0000000023043716

l230436E8:
	lhu	a3,a0,+00000028
	c.sub	a4,a3
	blt	zero,a4,0000000023043716

l230436F2:
	c.lwsp	tp,000000A4
	lw	a1,s5,+00000000
	addi	a4,s6,-00000130
	addi	a3,a3,-0000012C
	c.add	a2,a7

l23043702:
	jal	ra,0000000023044A26
	c.j	0000000023043728

l23043708:
	c.andi	a4,00000001
	c.beqz	a4,0000000023043716

l2304370C:
	lui	a5,00042020
	lw	a5,a5,-0000015C
	c.sw	a0,32(a5)

l23043716:
	c.beqz	a2,0000000023043728

l23043718:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,a0,+0000001A

l23043724:
	jal	ra,0000000023044AD2

l23043728:
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
	jal	zero,0000000023040890

l2304374A:
	c.lw	a0,12(a0)

l2304374C:
	c.bnez	a0,0000000023043678

l2304374E:
	lui	t3,00042020
	lw	t0,t3,-00000158
	c.li	s7,00000000
	c.li	t6,00000000
	c.mv	a5,t0

l2304375C:
	c.bnez	a5,0000000023043766

l2304375E:
	beq	s7,zero,0000000023043E4E

l23043762:
	c.mv	a0,t6
	c.j	00000000230437AA

l23043766:
	lbu	t2,a5,+00000008
	beq	t2,zero,000000002304377C

l2304376E:
	lbu	a6,t4,+00000044
	c.addi	a6,00000001
	andi	a6,a6,+000000FF
	bne	t2,a6,00000000230437A2

l2304377C:
	lbu	a6,a3,+00000003
	lbu	s0,a3,+00000002
	lhu	t2,a5,+00000016
	c.slli	a6,08
	or	a6,a6,s0
	bne	t2,a6,00000000230437A2

l23043792:
	lw	a6,a5,+00000000
	beq	t5,a6,00000000230437A8

l2304379A:
	bne	a6,zero,00000000230437A2

l2304379E:
	c.mv	s7,a5
	c.mv	t6,a0

l230437A2:
	c.mv	a0,a5
	c.lw	a5,12(a5)
	c.j	000000002304375C

l230437A8:
	c.mv	s7,a5

l230437AA:
	c.beqz	a0,0000000023043802

l230437AC:
	lw	a5,s7,+0000000C
	sw	s7,t3,+00000EA8
	c.sw	a0,12(a5)
	sw	t0,s7,+0000000C

l230437BA:
	andi	a5,a4,+00000004
	c.bnez	a5,0000000023043728

l230437C0:
	andi	a5,a4,+00000010
	c.beqz	a5,000000002304380E

l230437C6:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,-00000130
	addi	a3,a3,-0000012C
	lw	a1,s5,+00000000
	c.mv	a0,s7
	c.j	0000000023043702

l23043802:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	00000000230437BA

l2304380E:
	c.andi	a4,00000002
	c.beqz	a4,0000000023043728

l23043812:
	lbu	a0,s7,+00000015
	jal	ra,0000000023041C96
	c.mv	s0,a0
	c.bnez	a0,000000002304383C

l2304381E:
	lhu	a5,s10,+000000A0
	c.addi	a5,00000001
	sh	a5,s10,+000000A0
	lw	a5,s7,+00000018
	beq	a5,zero,0000000023043728

l23043830:
	lw	a0,s7,+00000010
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	c.jalr	a5
	c.j	0000000023043728

l2304383C:
	lw	a5,s4,+00000014
	lw	a4,s2,+00000000
	c.sw	a0,0(a5)
	lw	a5,s4,+00000010
	c.sw	a0,4(a5)
	lhu	a5,s7,+00000016
	sh	a5,a0,+00000016
	lbu	a5,a4,+00000001
	lbu	a3,a4,+00000000
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000018
	c.li	a5,00000003
	sb	a5,a0,+00000014
	lw	a5,s11,+00000000
	c.addi	a5,00000001
	c.sw	a0,36(a5)
	c.sw	a0,44(a5)
	jal	ra,00000000230417BE
	lw	a5,s11,+00000000
	c.sw	s0,88(a0)
	c.sw	s0,80(a0)
	c.addi	a5,FFFFFFFF
	c.sw	s0,68(a0)
	c.sw	s0,92(a0)
	c.sw	s0,84(a5)
	lw	a5,s7,+00000010
	sw	s7,s0,+0000007C
	c.sw	s0,16(a5)
	lbu	a5,s7,+00000009
	c.andi	a5,0000000C
	sb	a5,s0,+00000009
	lbu	a5,s7,+00000008
	sb	a5,s0,+00000008
	lw	a5,s3,-00000154
	sw	s0,s3,+00000EAC
	c.sw	s0,12(a5)
	jal	ra,0000000023045260
	lui	a5,00042020
	c.li	a4,00000001
	sb	a4,a5,+00000EB4
	c.lwsp	s0,000000E4
	lhu	a5,a5,+00000000
	c.beqz	a5,00000000230438CC

l230438C4:
	addi	a0,s0,+00000032
	jal	ra,00000000230426C8

l230438CC:
	lw	a4,s2,+00000000
	addi	a2,s0,+00000004
	c.mv	a0,a2
	lbu	a5,a4,+0000000F
	lbu	a3,a4,+0000000E
	lhu	s2,s0,+00000032
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s0,+00000060
	sh	a5,s0,+00000062
	c.swsp	a2,00000080
	jal	ra,000000002303F434
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,00000000230417D6
	sh	a0,s0,+00000032
	c.li	a1,00000012
	c.mv	a0,s0
	jal	ra,000000002304472C
	c.beqz	a0,0000000023043916

l2304390C:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023041AAC
	c.j	0000000023043728

l23043916:
	c.mv	a0,s0
	c.j	0000000023043724

l2304391A:
	lbu	a4,s7,+00000000
	sw	s0,s1,+00000EB8
	andi	a5,a4,+00000004
	c.beqz	a5,000000002304399A

l23043928:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	bne	a4,a5,000000002304397A

l23043932:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023043952

l2304393C:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000008
	sb	a5,s4,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFE

l2304394E:
	sh	a5,s0,+0000001A

l23043952:
	lbu	a5,s4,+00000000
	c.andi	a5,00000008
	beq	a5,zero,0000000023043D8C

l2304395C:
	lw	a5,s0,+00000090
	c.beqz	a5,0000000023043968

l23043962:
	c.lw	s0,16(a0)
	c.li	a1,FFFFFFF2
	c.jalr	a5

l23043968:
	addi	a0,s3,-00000154
	c.mv	a1,s0
	jal	ra,0000000023041A48
	c.mv	a0,s0
	jal	ra,00000000230414AE
	c.j	0000000023043630

l2304397A:
	c.lw	s0,36(a4)
	lw	a5,s11,+00000000
	beq	a4,a5,000000002304393C

l23043984:
	c.sub	a5,a4
	blt	a5,zero,0000000023043952

l2304398A:
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	blt	zero,a5,0000000023043952

l23043994:
	lhu	a5,s0,+0000001A
	c.j	00000000230439B6

l2304399A:
	andi	s10,a4,+00000002
	lhu	a5,s0,+0000001A
	beq	s10,zero,00000000230439BC

l230439A6:
	lbu	a3,s0,+00000014
	c.li	a0,00000001
	c.addi	a3,FFFFFFFE
	andi	a3,a3,+000000FF
	bgeu	a0,a3,00000000230439BC

l230439B6:
	ori	a5,a5,+00000002
	c.j	000000002304394E

l230439BC:
	c.andi	a5,00000010
	c.bnez	a5,00000000230439CA

l230439C0:
	lui	a5,00042020
	lw	a5,a5,-0000015C
	c.sw	s0,32(a5)

l230439CA:
	c.lwsp	s0,000000E4
	sh	zero,s0,+000000A2
	lhu	a5,a5,+00000000
	c.beqz	a5,00000000230439EA

l230439D6:
	addi	a0,s0,+00000032
	c.swsp	a4,00000004
	jal	ra,00000000230426C8
	c.lwsp	s0,000000C4
	lui	a5,0004200E
	addi	a2,a5,-00000056

l230439EA:
	lbu	a5,s0,+00000014
	c.li	a3,00000007
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a3,a5,0000000023043952

l230439FA:
	lui	a3,00023086
	c.slli	a5,02
	addi	a3,a3,+0000046C
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.jr	a5

l23043A0A:
	andi	a5,a4,+00000012
	c.li	a3,00000012
	bne	a5,a3,0000000023043AE6

l23043A14:
	c.lw	s0,68(a5)
	lw	a3,s5,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023043AE6

l23043A20:
	lw	a4,s11,+00000000
	c.sw	s0,68(a5)
	addi	a3,a4,+00000001
	c.sw	s0,36(a3)
	c.sw	s0,44(a3)
	lw	a3,s2,+00000000
	c.addi	a4,FFFFFFFF
	lhu	s2,s0,+00000032
	lbu	a5,a3,+0000000F
	lbu	a2,a3,+0000000E
	c.sw	s0,84(a4)
	c.slli	a5,08
	c.or	a5,a2
	sh	a5,s0,+00000060
	addi	a2,s0,+00000004
	sh	a5,s0,+00000062
	c.li	a5,00000004
	sb	a5,s0,+00000014
	c.mv	a0,a2
	c.swsp	a2,00000080
	jal	ra,000000002303F434
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,00000000230417D6
	slli	a4,a0,00000001
	sh	a0,s0,+00000032
	slli	a5,a0,00000002
	c.lui	a0,00001000
	addi	a0,a0,+0000011C
	c.mv	a3,a4
	bgeu	a4,a0,0000000023043A84

l23043A82:
	c.mv	a3,a0

l23043A84:
	bgeu	a5,a3,0000000023043ACC

l23043A88:
	slli	a0,a5,00000010

l23043A8C:
	c.srli	a0,00000010

l23043A8E:
	lhu	a5,s0,+00000066
	sh	a0,s0,+00000048
	c.lw	s0,112(a0)
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000066
	c.bnez	a0,0000000023043AD6

l23043AA0:
	c.lw	s0,108(a0)
	c.lw	a0,0(a5)
	c.sw	s0,108(a5)

l23043AA6:
	jal	ra,0000000023041712
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023043ADC

l23043AAE:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030

l23043AB4:
	lw	a5,s0,+00000088
	beq	a5,zero,0000000023043994

l23043ABC:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023043994

l23043ACA:
	c.j	0000000023043630

l23043ACC:
	bgeu	a0,a4,0000000023043A8E

l23043AD0:
	slli	a0,a4,00000010
	c.j	0000000023043A8C

l23043AD6:
	c.lw	a0,0(a5)
	c.sw	s0,112(a5)
	c.j	0000000023043AA6

l23043ADC:
	sh	zero,s0,+00000030
	sb	zero,s0,+00000042
	c.j	0000000023043AB4

l23043AE6:
	c.andi	a4,00000010
	beq	a4,zero,0000000023043952

l23043AEC:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	lw	a1,s5,+00000000
	c.slli	a5,08
	or	a5,a5,a7
	addi	a4,s6,-00000130
	c.add	a2,a0
	addi	a3,a3,-0000012C
	c.mv	a0,s0
	jal	ra,0000000023044A26
	lbu	a4,s0,+00000042
	c.li	a5,00000005
	bltu	a5,a4,0000000023043952

l23043B34:
	sh	zero,s0,+00000030
	c.mv	a0,s0
	jal	ra,0000000023045020
	c.j	0000000023043952

l23043B40:
	c.andi	a4,00000010
	c.beqz	a4,0000000023043C26

l23043B44:
	lw	a1,s5,+00000000
	c.lw	s0,68(a4)
	addi	a5,a1,-00000001
	c.sub	a5,a4
	blt	a5,zero,0000000023043BEA

l23043B54:
	c.lw	s0,80(a5)
	sub	a5,a1,a5
	blt	zero,a5,0000000023043BEA

l23043B5E:
	c.li	a5,00000004
	sb	a5,s0,+00000014
	c.lw	s0,124(a5)
	c.bnez	a5,0000000023043B70

l23043B68:
	c.mv	a0,s0
	jal	ra,0000000023041BC0
	c.j	0000000023043630

l23043B70:
	c.lw	a5,24(a5)
	c.beqz	a5,0000000023043B68

l23043B74:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,0000000023043B86

l23043B7E:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023043630

l23043B84:
	c.j	0000000023043B68

l23043B86:
	c.mv	a0,s0
	jal	ra,0000000023042882
	lhu	a5,s8,+00000000
	c.beqz	a5,0000000023043B98

l23043B92:
	c.addi	a5,FFFFFFFF
	sh	a5,s8,+00000000

l23043B98:
	lhu	a5,s0,+00000032
	slli	a3,a5,00000001
	slli	a4,a5,00000002
	c.lui	a5,00001000
	addi	a5,a5,+0000011C
	c.mv	a2,a3
	bgeu	a3,a5,0000000023043BB2

l23043BB0:
	c.mv	a2,a5

l23043BB2:
	bgeu	a4,a2,0000000023043BE0

l23043BB6:
	slli	a5,a4,00000010

l23043BBA:
	c.srli	a5,00000010

l23043BBC:
	sh	a5,s0,+00000048

l23043BC0:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,0000000023043952

l23043BCC:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000007

l23043BDA:
	sb	a5,s0,+00000014
	c.j	0000000023043952

l23043BE0:
	bgeu	a5,a3,0000000023043BBC

l23043BE4:
	slli	a5,a3,00000010
	c.j	0000000023043BBA

l23043BEA:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,-00000130
	addi	a3,a3,-0000012C
	c.mv	a0,s0
	jal	ra,0000000023044A26
	c.j	0000000023043952

l23043C26:
	beq	s10,zero,0000000023043952

l23043C2A:
	c.lw	s0,36(a5)
	lw	a4,s11,+00000000
	c.addi	a5,FFFFFFFF
	bne	a5,a4,0000000023043952

l23043C36:
	c.mv	a0,s0
	jal	ra,00000000230448FC
	c.j	0000000023043952

l23043C3E:
	c.mv	a0,s0
	jal	ra,0000000023042882
	c.j	0000000023043BC0

l23043C46:
	c.mv	a0,s0
	jal	ra,0000000023042882
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023043CCE

l23043C56:
	lbu	a4,s7,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,0000000023043CC2

l23043C62:
	c.lw	s0,80(a3)
	lw	a4,s5,+00000000
	bne	a3,a4,0000000023043CC2

l23043C6C:
	c.lw	s0,108(a4)
	c.bnez	a4,0000000023043CC2

l23043C70:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,00000000230419F0
	lw	a5,s3,-00000154
	bne	s0,a5,0000000023043C9C

l23043C86:
	c.lw	s0,12(a5)
	sw	a5,s3,+00000EAC
	c.j	0000000023043C9E

l23043C8E:
	c.lw	a5,12(a4)
	bne	s0,a4,0000000023043C9A

l23043C94:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023043C9E

l23043C9A:
	c.mv	a5,a4

l23043C9C:
	c.bnez	a5,0000000023043C8E

l23043C9E:
	lui	a5,00042020
	c.li	a4,00000001
	sb	a4,a5,+00000EB4
	c.li	a5,0000000A
	sb	a5,s0,+00000014
	lui	a5,00042020
	lw	a4,a5,-00000160
	sw	s0,a5,+00000EA0
	c.sw	s0,12(a4)
	jal	ra,0000000023045260
	c.j	0000000023043952

l23043CC2:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000008
	c.j	0000000023043BDA

l23043CCE:
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023043952

l23043CD8:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023043952

l23043CE2:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023043952

l23043CE8:
	c.li	a5,00000006
	c.j	0000000023043BDA

l23043CEC:
	c.mv	a0,s0
	jal	ra,0000000023042882
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,0000000023043952

l23043CFE:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	jal	ra,00000000230419F0
	lw	a5,s3,-00000154
	beq	s0,a5,0000000023043C86

l23043D18:
	c.beqz	a5,0000000023043C9E

l23043D1A:
	c.lw	a5,12(a4)
	beq	s0,a4,0000000023043C94

l23043D20:
	c.mv	a5,a4
	c.j	0000000023043D18

l23043D24:
	c.mv	a0,s0
	jal	ra,0000000023042882
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023043952

l23043D34:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023043952

l23043D3E:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023043952

l23043D44:
	c.mv	a0,s0
	jal	ra,00000000230419F0
	lw	a5,s3,-00000154
	beq	s0,a5,0000000023043C86

l23043D52:
	c.beqz	a5,0000000023043C9E

l23043D54:
	c.lw	a5,12(a4)
	beq	s0,a4,0000000023043C94

l23043D5A:
	c.mv	a5,a4
	c.j	0000000023043D52

l23043D5E:
	c.mv	a0,s0
	jal	ra,0000000023042882
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023043952

l23043D6E:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023043952

l23043D78:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023043952

l23043D7E:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000010
	sb	a5,s4,+00000000
	c.j	0000000023043952

l23043D8C:
	lhu	a2,s8,+00000000
	c.beqz	a2,0000000023043D9C

l23043D92:
	lw	a5,s0,+00000080
	c.bnez	a5,0000000023043DBC

l23043D98:
	sh	zero,s8,+00000000

l23043D9C:
	c.mv	a0,s0
	jal	ra,0000000023042788
	bne	a0,zero,0000000023043630

l23043DA6:
	lw	a2,s9,+00000000
	c.beqz	a2,0000000023043DE8

l23043DAC:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000010
	c.beqz	a5,0000000023043DCC

l23043DB4:
	c.mv	a0,a2
	jal	ra,0000000023040890
	c.j	0000000023043B68

l23043DBC:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023043D98

l23043DC8:
	jal	zero,0000000023043630

l23043DCC:
	lw	a5,s0,+00000084
	c.li	a3,00000000
	c.mv	a1,s0
	c.beqz	a5,0000000023043E1A

l23043DD6:
	c.lw	s0,16(a0)
	c.jalr	a5

l23043DDA:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023043630

l23043DE0:
	c.beqz	a0,0000000023043DE8

l23043DE2:
	lw	a5,s9,+00000000
	c.sw	s0,120(a5)

l23043DE8:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023043E02

l23043DF2:
	c.lw	s0,120(a5)
	c.beqz	a5,0000000023043E20

l23043DF6:
	lbu	a4,a5,+0000000D
	ori	a4,a4,+00000020
	sb	a4,a5,+0000000D

l23043E02:
	c.mv	a0,s0
	sw	zero,s1,+00000EB8
	jal	ra,0000000023042788
	bne	a0,zero,0000000023043630

l23043E10:
	c.mv	a0,s0
	jal	ra,0000000023044AD2
	jal	zero,0000000023043630

l23043E1A:
	jal	ra,0000000023041FCE
	c.j	0000000023043DDA

l23043E20:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,0000000023043E34

l23043E2E:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l23043E34:
	lw	a5,s0,+00000084
	c.beqz	a5,0000000023043E02

l23043E3A:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023043E02

l23043E4A:
	jal	zero,0000000023043630

l23043E4E:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lui	a5,0004200E
	c.andi	a0,00000004
	addi	a2,a5,-00000056
	bne	a0,zero,0000000023043728

l23043E6C:
	lhu	a5,s10,+000000A4
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	c.addi	a5,00000001
	sh	a5,s10,+000000A4
	lhu	a5,s10,+0000009A
	lw	a2,s11,+00000000
	lw	a1,s5,+00000000
	c.addi	a5,00000001
	sh	a5,s10,+0000009A
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,-00000130
	addi	a3,a3,-0000012C
	c.li	a0,00000000
	jal	zero,0000000023043702

;; tcp_trigger_input_pcb_close: 23043EBE
;;   Called from:
;;     23041EE6 (in tcp_close_shutdown)
tcp_trigger_input_pcb_close proc
	lui	a5,0004200E
	addi	a5,a5,-00000070
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000010
	sb	a4,a5,+00000000
	c.jr	ra

;; tcp_seg_add_chksum: 23043ED4
;;   Called from:
;;     23044340 (in tcp_write)
;;     23044486 (in tcp_write)
;;     23044574 (in tcp_split_unsent_seg)
;;     230446BE (in tcp_split_unsent_seg)
tcp_seg_add_chksum proc
	lhu	a5,a2,+00000000
	c.andi	a1,00000001
	c.add	a0,a5
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.beqz	a1,0000000023043F00

l23043EE8:
	lbu	a4,a3,+00000000
	c.li	a5,00000001
	c.sub	a5,a4
	sb	a5,a3,+00000000
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l23043F00:
	sh	a0,a2,+00000000
	c.jr	ra

;; tcp_create_segment: 23043F06
;;   Called from:
;;     23044398 (in tcp_write)
;;     230445D8 (in tcp_split_unsent_seg)
;;     2304478E (in tcp_enqueue_flags)
tcp_create_segment proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.mv	s5,a0
	c.li	a0,00000004
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	slli	s1,a4,00000002
	c.swsp	a4,00000084
	c.swsp	ra,00000094
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s4,a3
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.lwsp	a2,000000C4
	c.bnez	a0,0000000023043F4A

l23043F30:
	c.mv	a0,s2
	jal	ra,0000000023040890

l23043F36:
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

l23043F4A:
	sb	a4,a0,+0000000D
	sw	zero,a0,+00000000
	sw	s2,a0,+00000004
	lhu	a5,s2,+00000008
	c.andi	s1,00000004
	sh	zero,a0,+0000000A
	c.sub	a5,s1
	sh	a5,a0,+00000008
	sb	zero,a0,+0000000C
	c.li	a1,00000014
	c.mv	a0,s2
	jal	ra,0000000023040828
	c.beqz	a0,0000000023043F90

l23043F74:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000A8
	c.mv	a0,s0
	c.li	s0,00000000
	c.addi	a4,00000001
	sh	a4,a5,+000000A8
	jal	ra,0000000023041712
	c.j	0000000023043F36

l23043F90:
	c.lw	s0,4(a5)
	lw	s2,a5,+00000004
	sw	s2,s0,+00000010
	lhu	a0,s5,+00000016
	jal	ra,000000002303C332
	sb	a0,s2,+00000000
	c.srli	a0,00000008
	sb	a0,s2,+00000001
	lhu	a0,s5,+00000018
	lw	s2,s0,+00000010
	jal	ra,000000002303C332
	sb	a0,s2,+00000002
	c.srli	a0,00000008
	sb	a0,s2,+00000003
	lw	s2,s0,+00000010
	c.mv	a0,s4
	jal	ra,000000002303C340
	srli	a5,a0,00000008
	sb	a0,s2,+00000004
	sb	a5,s2,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s2,+00000007
	srli	a0,s1,00000002
	sb	a5,s2,+00000006
	c.addi	a0,00000005
	lw	s2,s0,+00000010
	c.slli	a0,0C
	or	a0,a0,s3
	jal	ra,000000002303C332
	sb	a0,s2,+0000000C
	c.srli	a0,00000008
	sb	a0,s2,+0000000D
	c.lw	s0,16(a5)
	sb	zero,a5,+00000012
	sb	zero,a5,+00000013
	c.j	0000000023043F36

;; tcp_output_alloc_header_common.constprop.6: 23044010
;;   Called from:
;;     23044104 (in tcp_output_alloc_header.constprop.5)
;;     23044A54 (in tcp_rst)
tcp_output_alloc_header_common.constprop.6 proc
	c.addi	a1,00000014
	c.addi16sp	FFFFFFD0
	c.slli	a1,10
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.mv	s1,a2
	c.mv	s5,a0
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000A2
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a3,00000084
	c.mv	s6,a4
	c.mv	s4,a5
	c.mv	s3,a6
	jal	ra,0000000023040912
	c.mv	s2,a0
	c.beqz	a0,00000000230440D6

l23044044:
	c.lwsp	a2,000000A4
	c.lw	a0,4(s0)
	c.mv	a0,a3
	jal	ra,000000002303C332
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	c.mv	a0,s6
	jal	ra,000000002303C332
	srli	a5,s1,00000008
	sb	a0,s0,+00000002
	sb	s1,s0,+00000004
	c.srli	a0,00000008
	sb	a5,s0,+00000005
	srli	a5,s1,00000010
	c.srli	s1,00000018
	sb	a0,s0,+00000003
	sb	a5,s0,+00000006
	sb	s1,s0,+00000007
	c.mv	a0,s5
	jal	ra,000000002303C340
	srli	a5,a0,00000008
	sb	a0,s0,+00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s0,+0000000B
	c.lui	a0,00005000
	sb	a5,s0,+0000000A
	or	a0,s4,a0
	jal	ra,000000002303C332
	sb	a0,s0,+0000000C
	c.srli	a0,00000008
	sb	a0,s0,+0000000D
	c.mv	a0,s3
	jal	ra,000000002303C332
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	sb	zero,s0,+00000010
	sb	zero,s0,+00000011
	sb	zero,s0,+00000012
	sb	zero,s0,+00000013

l230440D6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

;; tcp_output_alloc_header.constprop.5: 230440EC
;;   Called from:
;;     23044A94 (in tcp_send_empty_ack)
;;     23045058 (in tcp_keepalive)
;;     230450EE (in tcp_zero_window_probe)
tcp_output_alloc_header.constprop.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a6,a0,+0000002A
	lhu	a4,a0,+00000018
	lhu	a3,a0,+00000016
	c.lw	a0,36(a0)
	c.li	a5,00000010
	jal	ra,0000000023044010
	c.beqz	a0,0000000023044114

l2304410A:
	lhu	a4,s0,+0000002A
	c.lw	s0,36(a5)
	c.add	a5,a4
	c.sw	s0,44(a5)

l23044114:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_output_control_segment: 2304411C
;;   Called from:
;;     23044A6E (in tcp_rst)
;;     23044ABA (in tcp_send_empty_ack)
;;     2304506E (in tcp_keepalive)
;;     23045174 (in tcp_zero_window_probe)
tcp_output_control_segment proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s4,a2
	c.mv	s2,a3
	c.beqz	a0,00000000230441A6

l23044134:
	lbu	a0,a0,+00000008
	c.beqz	a0,00000000230441A6

l2304413A:
	jal	ra,0000000023040690

l2304413E:
	c.swsp	a0,00000084
	c.li	s3,FFFFFFFC
	c.beqz	a0,000000002304418E

l23044144:
	lhu	a2,s0,+00000008
	lw	s3,s0,+00000004
	c.mv	a4,s2
	c.mv	a3,s4
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002303CDB4
	sb	a0,s3,+00000010
	c.srli	a0,00000008
	sb	a0,s3,+00000011
	c.lwsp	a2,00000008
	c.beqz	s1,00000000230441AE

l23044166:
	lbu	a3,s1,+0000000B
	lbu	a4,s1,+0000000A

l2304416E:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a2,a5,+00000094
	c.mv	a1,s4
	c.mv	a0,s0
	c.addi	a2,00000001
	sh	a2,a5,+00000094
	c.li	a5,00000006
	c.mv	a2,s2
	jal	ra,000000002303FA36
	c.mv	s3,a0

l2304418E:
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230441A6:
	c.mv	a0,s2
	jal	ra,000000002303F434
	c.j	000000002304413E

l230441AE:
	c.li	a4,00000000
	addi	a3,zero,+000000FF
	c.j	000000002304416E

;; tcp_write: 230441B6
;;   Called from:
;;     2303C15A (in altcp_tcp_write)
;;     23046648 (in lwip_netconn_do_writemore)
tcp_write proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.li	s2,FFFFFFF0
	c.beqz	a0,000000002304422A

l230441D6:
	lhu	a5,a0,+00000062
	lhu	a4,a0,+00000032
	c.srli	a5,00000001
	c.mv	a7,a5
	bgeu	a4,a5,00000000230441E8

l230441E6:
	c.mv	a7,a4

l230441E8:
	slli	s8,a7,00000010
	srli	s8,s8,00000010
	bne	s8,zero,00000000230441F6

l230441F4:
	c.mv	s8,a4

l230441F6:
	c.li	s2,FFFFFFF0
	c.beqz	a1,000000002304422A

l230441FA:
	lbu	a5,a0,+00000014
	c.li	a4,00000007
	beq	a5,a4,0000000023044212

l23044204:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	c.li	s2,FFFFFFF5
	bltu	a4,a5,000000002304422A

l23044212:
	c.beqz	a2,0000000023044268

l23044214:
	lhu	a5,a0,+00000064
	bgeu	a5,a2,000000002304424A

l2304421C:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,a0,+0000001A

l23044228:
	c.li	s2,FFFFFFFF

l2304422A:
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

l2304424A:
	lhu	a4,a0,+00000066
	c.li	a5,0000000F
	bgeu	a5,a4,0000000023044268

l23044254:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	c.j	000000002304421C

l23044268:
	c.lw	a0,108(s1)
	lhu	s5,a0,+00000066
	beq	s1,zero,0000000023044456

l23044272:
	c.mv	s11,s1
	c.lw	s1,0(s1)
	c.bnez	s1,0000000023044272

l23044278:
	lhu	s7,a0,+00000068
	lbu	t1,s11,+0000000D
	lhu	a4,s11,+00000008
	c.li	s2,00000000
	beq	s7,zero,00000000230442C8

l2304428A:
	c.slli	t1,02
	andi	t1,t1,+00000004
	sub	a4,s8,a4
	sub	a4,a4,t1
	c.mv	t1,s7
	bgeu	a2,s7,00000000230442A0

l2304429E:
	c.mv	t1,a2

l230442A0:
	c.mv	s2,a4
	slli	t3,t1,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	srli	t3,t3,00000010
	bgeu	t3,a4,00000000230442B4

l230442B2:
	c.mv	s2,t1

l230442B4:
	c.slli	s2,10
	srli	s2,s2,00000010
	sub	a6,s7,s2
	slli	s7,a6,00000010
	srli	s7,s7,00000010
	c.mv	s1,s11

l230442C8:
	c.swsp	a3,00000004
	c.mv	s3,a2
	c.swsp	a1,00000000
	c.mv	s0,a0
	c.mv	s10,s2
	c.li	s4,00000000
	c.li	s9,00000000
	sh	s8,sp,+00000006
	c.j	00000000230443D2

l230442DC:
	sub	a3,s3,s10
	c.mv	a4,a3
	c.slli	a3,10
	c.srli	a3,00000010
	bgeu	s8,a3,00000000230442EE

l230442EA:
	lhu	a4,sp,+00000006

l230442EE:
	addi	a2,zero,+00000280
	c.mv	a1,s8
	addi	a0,zero,+000000B6
	slli	s6,a4,00000010
	c.swsp	a4,00000084
	sh	zero,sp,+0000001E
	sb	zero,sp,+0000001D
	jal	ra,0000000023040912
	srli	s6,s6,00000010
	c.mv	s1,a0
	c.beqz	a0,0000000023044362

l23044312:
	c.lwsp	a2,000000C4
	c.lwsp	zero,000000E4
	lhu	a6,a0,+0000000A
	sh	a4,a0,+00000008
	sh	a4,a0,+0000000A
	c.lw	a0,4(a0)
	add	a1,a5,s10
	sub	a6,a6,s6
	c.mv	a2,s6
	slli	s7,a6,00000010
	jal	ra,000000002303CF46
	addi	a3,sp,+0000001D
	addi	a2,sp,+0000001E
	c.mv	a1,s6
	jal	ra,0000000023043ED4
	c.mv	a0,s1
	jal	ra,0000000023040B2C
	c.add	s5,a0
	c.slli	s5,10
	srli	s5,s5,00000010
	c.li	a5,00000010
	srli	s7,s7,00000010
	bgeu	a5,s5,000000002304438C

l2304435C:
	c.mv	a0,s1
	jal	ra,0000000023040890

l23044362:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	beq	s4,zero,0000000023044228

l23044384:
	c.mv	a0,s4
	jal	ra,0000000023041736
	c.j	0000000023044228

l2304438C:
	c.lw	s0,92(a3)
	c.mv	a1,s1
	c.li	a4,00000000
	c.add	a3,s10
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,0000000023043F06
	c.mv	s1,a0
	c.beqz	a0,0000000023044362

l230443A0:
	lhu	a4,sp,+0000001E
	sh	a4,a0,+0000000A
	lbu	a4,sp,+0000001D
	sb	a4,a0,+0000000C
	lbu	a4,a0,+0000000D
	ori	a4,a4,+00000004
	sb	a4,a0,+0000000D
	beq	s4,zero,0000000023044452

l230443C0:
	sw	a0,s9,+00000000

l230443C4:
	add	t1,s10,s6
	slli	s10,t1,00000010
	srli	s10,s10,00000010
	c.mv	s9,s1

l230443D2:
	bltu	s10,s3,00000000230442DC

l230443D6:
	beq	s2,zero,00000000230443F4

l230443DA:
	lw	s10,s11,+00000004
	addi	s6,s11,+0000000C
	addi	s9,s11,+0000000A

l230443E6:
	bne	s10,zero,000000002304445E

l230443EA:
	lhu	a4,s11,+00000008
	c.add	s2,a4
	sh	s2,s11,+00000008

l230443F4:
	sh	s7,s0,+00000068
	bne	s11,zero,00000000230444A6

l230443FC:
	sw	s4,s0,+0000006C

l23044400:
	c.lw	s0,92(a5)
	lhu	a2,s0,+00000064
	sh	s5,s0,+00000066
	c.add	a5,s3
	sub	s3,a2,s3
	c.sw	s0,92(a5)
	sh	s3,s0,+00000064
	c.li	s2,00000000
	beq	s1,zero,000000002304422A

l2304441C:
	c.lw	s1,16(a5)
	beq	a5,zero,000000002304422A

l23044422:
	c.lwsp	s0,000000C4
	andi	s7,a4,+00000002
	bne	s7,zero,000000002304422A

l2304442C:
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000008
	jal	ra,000000002303C332
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D
	c.j	000000002304422A

l23044452:
	c.mv	s4,a0
	c.j	00000000230443C4

l23044456:
	c.li	s11,00000000
	c.li	s7,00000000
	c.li	s2,00000000
	c.j	00000000230442C8

l2304445E:
	lhu	a4,s10,+00000008
	c.add	a4,s2
	sh	a4,s10,+00000008
	lw	a4,s10,+00000000
	c.bnez	a4,00000000230444A0

l2304446E:
	lhu	a4,s10,+0000000A
	lw	a0,s10,+00000004
	c.lwsp	zero,00000064
	c.mv	a2,s2
	c.add	a0,a4
	jal	ra,000000002303CF46
	c.mv	a3,s6
	c.mv	a2,s9
	c.mv	a1,s2
	jal	ra,0000000023043ED4
	lbu	a4,s11,+0000000D
	ori	a4,a4,+00000004
	sb	a4,s11,+0000000D
	lhu	a4,s10,+0000000A
	c.add	a4,s2
	sh	a4,s10,+0000000A

l230444A0:
	lw	s10,s10,+00000000
	c.j	00000000230443E6

l230444A6:
	sw	s4,s11,+00000000
	c.j	0000000023044400

;; tcp_split_unsent_seg: 230444AC
;;   Called from:
;;     2304228C (in tcp_slowtmr)
tcp_split_unsent_seg proc
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
	c.lw	a0,108(s0)
	sh	zero,sp,+0000001E
	sb	zero,sp,+0000001D
	c.bnez	s0,00000000230444D2

l230444CE:
	c.li	a5,FFFFFFFF
	c.j	00000000230444E0

l230444D2:
	c.li	a5,FFFFFFFA
	c.beqz	a1,00000000230444E0

l230444D6:
	lhu	s6,s0,+00000008
	bltu	a1,s6,00000000230444FA

l230444DE:
	c.li	a5,00000000

l230444E0:
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
	c.mv	a0,a5
	c.addi16sp	00000050
	c.jr	ra

l230444FA:
	lbu	s4,s0,+0000000D
	sub	s7,s6,a1
	c.slli	s7,10
	andi	s4,s4,+000000FB
	slli	s3,s4,00000002
	andi	s3,s3,+00000004
	srli	s7,s7,00000010
	c.mv	s1,a1
	add	a1,s7,s3
	c.slli	a1,10
	c.mv	s2,a0
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000B6
	jal	ra,0000000023040912
	c.mv	s5,a0
	beq	a0,zero,000000002304470E

l23044532:
	c.lw	s0,4(a0)
	lhu	a5,s0,+00000008
	lw	a1,s5,+00000004
	lhu	a3,a0,+00000008
	c.mv	a2,s7
	c.add	a1,s3
	c.sub	a3,a5
	c.add	a3,s1
	c.slli	a3,10
	c.srli	a3,00000010
	jal	ra,0000000023040C4A
	c.mv	s8,a0
	bne	a0,s7,000000002304470E

l23044556:
	lw	a0,s5,+00000004
	c.mv	a1,s8
	c.add	a0,s3
	jal	ra,000000002303CEB6
	xori	a0,a0,-00000001
	c.slli	a0,10
	addi	a2,sp,+0000001E
	addi	a3,sp,+0000001D
	c.mv	a1,s8
	c.srli	a0,00000010
	jal	ra,0000000023043ED4
	c.lw	s0,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	andi	s3,a0,+000000FF
	andi	a2,s3,+00000008
	bne	a2,zero,00000000230446CE

l23044596:
	andi	s3,s3,+0000003F

l2304459A:
	andi	a5,s3,+00000001
	c.beqz	a5,00000000230445A8

l230445A0:
	andi	s3,s3,+000000FE
	ori	a2,a2,+00000001

l230445A8:
	c.lw	s0,16(a4)
	c.swsp	a2,00000084
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
	jal	ra,000000002303C340
	c.lwsp	a2,00000084
	c.mv	a4,s4
	add	a3,s1,a0
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023043F06
	c.mv	s4,a0
	beq	a0,zero,000000002304470E

l230445E2:
	lhu	a5,sp,+0000001E
	sub	s1,s1,s6
	c.slli	s1,10
	sh	a5,a0,+0000000A
	lbu	a5,sp,+0000001D
	c.srli	s1,00000010
	sb	a5,a0,+0000000C
	lbu	a5,a0,+0000000D
	ori	a5,a5,+00000004
	sb	a5,a0,+0000000D
	c.lw	s0,4(a0)
	jal	ra,0000000023040B2C
	lhu	a5,s2,+00000066
	sub	a0,a5,a0
	sh	a0,s2,+00000066
	c.lw	s0,4(a0)
	lhu	a1,a0,+00000008
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,0000000023040A70
	lhu	a5,s0,+00000008
	c.lw	s0,16(a4)
	c.add	s1,a5
	sh	s1,s0,+00000008
	lbu	s1,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	s1,08
	c.or	s1,a0
	c.mv	a0,s3
	jal	ra,000000002303C332
	c.lw	s0,16(a4)
	or	a5,s1,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+0000000C
	c.srli	a5,00000008
	sb	a5,a4,+0000000D
	c.lw	s0,4(a0)
	jal	ra,0000000023040B2C
	lhu	a5,s2,+00000066
	c.add	a0,a5
	sh	a0,s2,+00000066
	lw	s3,s0,+00000004
	sh	zero,s0,+0000000A
	sb	zero,s0,+0000000C
	lhu	s1,s3,+00000008
	lhu	a1,s0,+00000008
	c.sub	s1,a1
	c.slli	s1,10
	c.srli	s1,00000010

l23044684:
	lhu	a1,s3,+0000000A
	bltu	a1,s1,00000000230446D6

l2304468C:
	addi	s6,s0,+0000000C
	addi	s5,s0,+0000000A

l23044694:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	c.sub	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a0,s1
	jal	ra,000000002303CEB6
	lhu	a1,s3,+0000000A
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.sub	a1,s1
	c.slli	a1,10
	c.mv	a3,s6
	c.mv	a2,s5
	c.srli	a1,00000010
	c.srli	a0,00000010
	jal	ra,0000000023043ED4
	lw	s3,s3,+00000000
	c.li	s1,00000000
	bne	s3,zero,0000000023044694

l230446CC:
	c.j	00000000230446E4

l230446CE:
	andi	s3,s3,+00000037
	c.li	a2,00000008
	c.j	000000002304459A

l230446D6:
	lw	s3,s3,+00000000
	c.sub	s1,a1
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s3,zero,0000000023044684

l230446E4:
	lw	a0,s4,+00000004
	jal	ra,0000000023040B2C
	lhu	a5,s2,+00000066
	c.add	a0,a5
	sh	a0,s2,+00000066
	c.lw	s0,0(a5)
	sw	a5,s4,+00000000
	sw	s4,s0,+00000000
	lw	a5,s4,+00000000
	bne	a5,zero,00000000230444DE

l23044708:
	sh	zero,s2,+00000068
	c.j	00000000230444E0

l2304470E:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	beq	s5,zero,00000000230444CE

l23044724:
	c.mv	a0,s5
	jal	ra,0000000023040890
	c.j	00000000230444CE

;; tcp_enqueue_flags: 2304472C
;;   Called from:
;;     23041916 (in tcp_connect)
;;     23043906 (in tcp_input)
;;     230447F4 (in tcp_send_fin)
tcp_enqueue_flags proc
	srli	a4,a1,00000001
	c.addi	sp,FFFFFFE0
	c.andi	a4,00000001
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s1,a1
	andi	s2,a1,+00000003
	addi	a2,zero,+00000280
	slli	a1,a4,00000002
	addi	a0,zero,+000000B6
	c.swsp	a4,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023040912
	c.lwsp	a2,000000C4
	c.bnez	a0,0000000023044786

l2304475A:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFF
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0

l2304477A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23044786:
	c.lw	s0,92(a3)
	c.mv	a1,a0
	c.mv	a2,s1
	c.mv	a0,s0
	jal	ra,0000000023043F06
	c.beqz	a0,000000002304475A

l23044794:
	c.lw	s0,108(a5)
	c.bnez	a5,00000000230447CE

l23044798:
	c.sw	s0,108(a0)

l2304479A:
	sh	zero,s0,+00000068
	beq	s2,zero,00000000230447A8

l230447A2:
	c.lw	s0,92(a5)
	c.addi	a5,00000001
	c.sw	s0,92(a5)

l230447A8:
	c.andi	s1,00000001
	c.beqz	s1,00000000230447B8

l230447AC:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000020
	sh	a5,s0,+0000001A

l230447B8:
	c.lw	a0,4(a0)
	jal	ra,0000000023040B2C
	lhu	a5,s0,+00000066
	c.add	a0,a5
	sh	a0,s0,+00000066
	c.li	a0,00000000
	c.j	000000002304477A

l230447CC:
	c.mv	a5,a4

l230447CE:
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230447CC

l230447D2:
	c.sw	a5,0(a0)
	c.j	000000002304479A

;; tcp_send_fin: 230447D6
;;   Called from:
;;     23041440 (in tcp_close_shutdown_fin)
;;     23041460 (in tcp_close_shutdown_fin)
tcp_send_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,108(s1)
	c.mv	s2,a0
	c.bnez	s1,00000000230447FA

l230447E6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,000000002304472C

l230447F8:
	c.mv	s1,a5

l230447FA:
	c.lw	s1,0(a5)
	c.bnez	a5,00000000230447F8

l230447FE:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000007
	c.bnez	a0,00000000230447E6

l23044814:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002303C332
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D
	lhu	a5,s2,+0000001A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	ori	a5,a5,+00000020
	sh	a5,s2,+0000001A
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; tcp_rexmit_rto_prepare: 23044854
;;   Called from:
;;     230423C4 (in tcp_slowtmr)
;;     23045028 (in tcp_rexmit_rto)
tcp_rexmit_rto_prepare proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a3,00000001
	c.bnez	s1,0000000023044870

l23044866:
	c.li	a5,FFFFFFFA
	c.j	00000000230448EC

l2304486A:
	c.mv	s1,a5
	bne	a4,a3,0000000023044866

l23044870:
	c.lw	s1,4(a4)
	c.lw	s1,0(a5)
	lbu	a4,a4,+0000000E
	c.bnez	a5,000000002304486A

l2304487A:
	c.li	a3,00000001
	c.li	a5,FFFFFFFA
	bne	a4,a3,00000000230448EC

l23044882:
	c.lw	a0,108(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.sw	s1,0(a5)
	c.lw	a0,112(a5)
	sw	zero,a0,+00000070
	c.mv	s0,a0
	c.sw	a0,108(a5)
	lhu	a5,a0,+0000001A
	c.or	a5,a4
	sh	a5,a0,+0000001A
	c.lw	s1,16(a4)
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
	jal	ra,000000002303C340
	c.lw	s1,16(a5)
	c.mv	s2,a0
	lhu	s3,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.add	s2,s3
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.sw	s0,76(a0)
	sw	zero,s0,+00000034
	c.li	a5,00000000

l230448EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; tcp_rexmit: 230448FC
;;   Called from:
;;     23043C38 (in tcp_input)
;;     230449CE (in tcp_rexmit_fast)
tcp_rexmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a5,FFFFFFFA
	c.beqz	s1,0000000023044956

l2304490E:
	c.lw	s1,4(a5)
	c.li	a4,00000001
	lbu	a3,a5,+0000000E
	c.li	a5,FFFFFFFA
	bne	a3,a4,0000000023044956

l2304491C:
	c.lw	s1,0(a5)
	c.mv	s0,a0
	addi	s2,a0,+0000006C
	c.sw	a0,112(a5)

l23044926:
	lw	a5,s2,+00000000
	c.bnez	a5,0000000023044966

l2304492C:
	lw	a5,s2,+00000000
	c.sw	s1,0(a5)
	sw	s1,s2,+00000000
	c.lw	s1,0(a5)
	c.bnez	a5,000000002304493E

l2304493A:
	sh	zero,s0,+00000068

l2304493E:
	lbu	a5,s0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023044950

l2304494A:
	c.addi	a5,00000001
	sb	a5,s0,+00000042

l23044950:
	sw	zero,s0,+00000034
	c.li	a5,00000000

l23044956:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23044966:
	c.lw	a5,16(a4)
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
	jal	ra,000000002303C340
	c.lw	s1,16(a4)
	c.mv	s3,a0
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
	jal	ra,000000002303C340
	sub	a0,s3,a0
	bge	a0,zero,000000002304492C

l230449B4:
	lw	s2,s2,+00000000
	c.j	0000000023044926

;; tcp_rexmit_fast: 230449BA
;;   Called from:
;;     23042998 (in tcp_receive)
tcp_rexmit_fast proc
	c.lw	a0,112(a5)
	c.beqz	a5,0000000023044A24

l230449BE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000004
	c.bnez	a5,0000000023044A1C

l230449CE:
	jal	ra,00000000230448FC
	c.bnez	a0,0000000023044A1C

l230449D4:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	bgeu	a4,a5,00000000230449E2

l230449E0:
	c.mv	a5,a4

l230449E2:
	c.slli	a5,10
	lhu	a4,s0,+00000032
	c.srli	a5,00000010
	c.srai	a5,00000001
	sh	a5,s0,+0000004A
	slli	a3,a4,00000001
	bgeu	a5,a3,00000000230449FC

l230449F8:
	sh	a3,s0,+0000004A

l230449FC:
	c.li	a5,00000003
	add	a4,a4,a5
	lhu	a5,s0,+0000004A
	sh	zero,s0,+00000030
	c.add	a4,a5
	lhu	a5,s0,+0000001A
	sh	a4,s0,+00000048
	ori	a5,a5,+00000004
	sh	a5,s0,+0000001A

l23044A1C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23044A24:
	c.jr	ra

;; tcp_rst: 23044A26
;;   Called from:
;;     23041B56 (in tcp_abandon)
;;     23041EB0 (in tcp_close_shutdown)
;;     230424D4 (in tcp_slowtmr)
;;     23043702 (in tcp_input)
;;     23043B26 (in tcp_input)
;;     23043C20 (in tcp_input)
tcp_rst proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s3,a2
	c.mv	s1,a3
	c.mv	s2,a4
	c.swsp	a5,00000084
	c.swsp	a6,00000004
	jal	ra,000000002303C340
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.lui	a6,00001000
	c.mv	a2,a0
	c.addi	a6,00000008
	c.li	a5,00000014
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023044010
	c.beqz	a0,0000000023044A72

l23044A5A:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	t3,00000068
	c.mv	a3,s2
	c.mv	a2,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002304411C

l23044A72:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcp_send_empty_ack: 23044A80
;;   Called from:
;;     23042DA8 (in tcp_receive)
;;     23043012 (in tcp_receive)
;;     23043622 (in tcp_input)
;;     23044B26 (in tcp_output)
tcp_send_empty_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230440EC
	c.bnez	a0,0000000023044AB0

l23044A9A:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFE
	ori	a5,a5,+00000003
	sh	a5,s0,+0000001A

l23044AA8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23044AB0:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	jal	ra,000000002304411C
	lhu	a5,s0,+0000001A
	c.beqz	a0,0000000023044ACE

l23044AC4:
	ori	a5,a5,+00000003

l23044AC8:
	sh	a5,s0,+0000001A
	c.j	0000000023044AA8

l23044ACE:
	c.andi	a5,FFFFFFFC
	c.j	0000000023044AC8

;; tcp_output: 23044AD2
;;   Called from:
;;     2303C14E (in altcp_tcp_output)
;;     23041450 (in tcp_close_shutdown_fin)
;;     23041704 (in tcp_recved)
;;     23041958 (in tcp_connect)
;;     23041A88 (in tcp_pcb_remove)
;;     230420F6 (in tcp_fasttmr)
;;     23042296 (in tcp_slowtmr)
;;     23042392 (in tcp_slowtmr)
;;     23043724 (in tcp_input)
;;     23043E12 (in tcp_input)
;;     2304501C (in tcp_rexmit_rto_commit)
;;     23046604 (in lwip_netconn_do_writemore)
;;     230466D6 (in lwip_netconn_do_writemore)
tcp_output proc
	lui	a5,00042020
	lw	a5,a5,-00000148
	beq	a5,a0,0000000023045002

l23044ADE:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
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
	c.lw	a0,108(s1)
	c.mv	s0,a0
	c.bnez	s1,0000000023044B2A

l23044B00:
	lhu	a5,a0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023044FEA

l23044B0A:
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
	c.addi16sp	00000050
	jal	zero,0000000023044A80

l23044B2A:
	lhu	s6,a0,+00000048
	lhu	s2,a0,+00000060
	addi	s5,a0,+00000004
	lbu	a0,a0,+00000008
	c.beqz	a0,0000000023044BB8

l23044B3C:
	jal	ra,0000000023040690

l23044B40:
	c.mv	s4,a0
	beq	a0,zero,0000000023045006

l23044B46:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023044B4E

l23044B4A:
	c.lw	a0,4(a5)
	c.sw	s0,0(a5)

l23044B4E:
	c.mv	s3,s6
	bgeu	s2,s6,0000000023044B56

l23044B54:
	c.mv	s3,s2

l23044B56:
	c.lw	s1,16(a4)
	c.slli	s3,10
	srli	s3,s3,00000010
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
	jal	ra,000000002303C340
	lhu	a5,s1,+00000008
	c.lw	s0,68(a4)
	c.sub	a5,a4
	c.add	a0,a5
	bgeu	s3,a0,0000000023044BC0

l23044B8C:
	lhu	a5,s0,+00000060
	bne	a5,s3,0000000023044BAA

l23044B94:
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023044BAA

l23044B98:
	lbu	a5,s0,+000000A1
	c.bnez	a5,0000000023044BAA

l23044B9E:
	addi	a5,zero,+00000100
	sh	a5,s0,+000000A0
	sb	zero,s0,+000000A2

l23044BAA:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023044FEA

l23044BB4:
	c.mv	a0,s0
	c.j	0000000023044B0A

l23044BB8:
	c.mv	a0,s5
	jal	ra,000000002303F434
	c.j	0000000023044B40

l23044BC0:
	lw	s2,s0,+00000070
	sb	zero,s0,+000000A1
	bne	s2,zero,0000000023044BE6

l23044BCC:
	lui	s6,00042020
	c.li	s9,0000000F
	c.li	s7,00000002
	c.li	s8,00000001
	addi	s6,s6,-00000268
	lui	s10,00042020
	lui	s11,00002040
	c.j	0000000023044F60

l23044BE4:
	c.mv	s2,a5

l23044BE6:
	lw	a5,s2,+00000000
	c.bnez	a5,0000000023044BE4

l23044BEC:
	c.j	0000000023044BCC

l23044BEE:
	lbu	a5,s0,+00000014
	beq	a5,s7,0000000023044C20

l23044BF6:
	c.lw	s1,16(a4)
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a5,a0
	c.li	a0,00000010
	c.swsp	a5,00000004
	jal	ra,000000002303C332
	c.lwsp	s0,000000E4
	c.lw	s1,16(a4)
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l23044C20:
	c.lw	s1,4(a5)
	lbu	a5,a5,+0000000E
	bne	a5,s8,0000000023044E02

l23044C2A:
	c.lw	s1,16(a5)
	c.lw	s0,36(a0)
	c.swsp	a5,00000004
	jal	ra,000000002303C340
	c.lwsp	s0,000000E4
	srli	a4,a0,00000008
	sb	a0,a5,+00000008
	sb	a4,a5,+00000009
	srli	a4,a0,00000010
	c.srli	a0,00000018
	sb	a4,a5,+0000000A
	sb	a0,a5,+0000000B
	c.lw	s1,16(a5)
	lhu	a0,s0,+0000002A
	c.swsp	a5,00000004
	jal	ra,000000002303C332
	c.lwsp	s0,000000E4
	sb	a0,a5,+0000000E
	c.srli	a0,00000008
	sb	a0,a5,+0000000F
	lhu	a4,s0,+0000002A
	c.lw	s0,36(a5)
	c.add	a5,a4
	c.sw	s0,44(a5)
	lbu	a5,s1,+0000000D
	c.andi	a5,00000001
	c.beqz	a5,0000000023044C96

l23044C7A:
	c.lw	s1,16(a5)
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,zero,+000002B0
	c.swsp	a5,00000004
	jal	ra,00000000230417D6
	or	a0,a0,s11
	jal	ra,000000002303C340
	c.lwsp	s0,000000E4
	c.sw	a5,20(a0)

l23044C96:
	lh	a5,s0,+00000030
	bge	a5,zero,0000000023044CA2

l23044C9E:
	sh	zero,s0,+00000030

l23044CA2:
	c.lw	s0,52(a5)
	c.bnez	a5,0000000023044CD0

l23044CA6:
	lw	a5,s10,-0000015C
	c.sw	s0,52(a5)
	c.lw	s1,16(a4)
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
	jal	ra,000000002303C340
	c.sw	s0,56(a0)

l23044CD0:
	c.lw	s1,4(a4)
	c.lw	s1,16(a5)
	c.lw	a4,4(a3)
	c.sub	a5,a3
	lhu	a3,a4,+0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	c.sub	a3,a5
	sh	a3,a4,+0000000A
	c.lw	s1,4(a3)
	lhu	a4,a3,+00000008
	sub	a5,a4,a5
	sh	a5,a3,+00000008
	c.lw	s1,16(a5)
	c.lw	s1,4(a4)
	c.sw	a4,4(a5)
	sb	zero,a5,+00000010
	sb	zero,a5,+00000011
	lbu	a5,s1,+0000000D
	c.andi	a5,00000004
	c.bnez	a5,0000000023044D1C

l23044D0A:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332

l23044D1C:
	lw	a6,s1,+00000004
	c.lw	s1,16(a5)
	lhu	a2,a6,+00000008
	c.swsp	a6,00000084
	c.swsp	a2,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.lwsp	a2,00000008
	c.lwsp	s0,00000084
	srli	a3,a0,0000000A
	c.mv	a5,s5
	c.mv	a4,s0
	andi	a3,a3,+000000FC
	c.li	a1,00000006
	c.mv	a0,a6
	jal	ra,000000002303CEB2
	lbu	a5,s1,+0000000C
	c.li	a7,00000000
	c.beqz	a5,0000000023044D70

l23044D5A:
	lhu	a5,s1,+0000000A
	sb	zero,s1,+0000000C
	c.li	a7,00000001
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l23044D70:
	xori	a0,a0,-00000001
	slli	a5,a0,00000010
	lhu	a0,s1,+0000000A
	c.srli	a5,00000010
	c.lw	s1,16(a4)
	c.add	a0,a5
	srli	a5,a0,00000010
	c.add	a5,a0
	xori	a5,a5,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+00000010
	c.srli	a5,00000008
	sb	a5,a4,+00000011
	lhu	a5,s6,+00000094
	c.mv	a6,s4
	c.mv	a2,s5
	c.addi	a5,00000001
	sh	a5,s6,+00000094
	lbu	a4,s0,+0000000A
	lbu	a3,s0,+0000000B
	c.lw	s1,4(a0)
	c.li	a5,00000006
	c.mv	a1,s0
	c.swsp	a7,00000004
	jal	ra,000000002303FA36
	c.lwsp	s0,00000028
	beq	a7,zero,0000000023044DD6

l23044DC2:
	lhu	a5,s1,+0000000A
	sb	s8,s1,+0000000C
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l23044DD6:
	c.beqz	a0,0000000023044E02

l23044DD8:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A

l23044DE4:
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

l23044E02:
	c.lw	s1,0(a5)
	c.sw	s0,108(a5)
	lbu	a5,s0,+00000014
	beq	a5,s7,0000000023044E18

l23044E0E:
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l23044E18:
	c.lw	s1,16(a4)
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
	jal	ra,000000002303C340
	lhu	a3,s1,+00000008
	c.lw	s1,16(a4)
	c.swsp	a0,00000084
	c.swsp	a3,00000004
	lbu	a0,a4,+0000000C
	lbu	a4,a4,+0000000D
	c.slli	a4,08
	c.or	a0,a4
	jal	ra,000000002303C332
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000E4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a5,a3
	c.add	a0,a5
	c.lw	s0,80(a5)
	c.sub	a5,a0
	bge	a5,zero,0000000023044E6C

l23044E6A:
	c.sw	s0,80(a0)

l23044E6C:
	lhu	a4,s1,+00000008
	c.lw	s1,16(a5)
	c.swsp	a4,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.lwsp	s0,000000C4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,a4
	beq	a0,zero,0000000023044FFA

l23044E92:
	sw	zero,s1,+00000000
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023044EA0

l23044E9A:
	c.sw	s0,112(s1)

l23044E9C:
	c.mv	s2,s1
	c.j	0000000023044F5C

l23044EA0:
	c.lw	s1,16(a4)
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
	jal	ra,000000002303C340
	lw	a4,s2,+00000010
	c.swsp	a0,00000004
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
	jal	ra,000000002303C340
	c.lwsp	s0,000000A4
	addi	a5,s0,+00000070
	sub	a0,a3,a0
	blt	a0,zero,0000000023044F52

l23044EF6:
	sw	s1,s2,+00000000
	c.j	0000000023044E9C

l23044EFC:
	c.lw	a4,16(a3)
	c.swsp	a5,00000084
	lbu	a0,a3,+00000005
	lbu	a4,a3,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a3,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a3,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303C340
	c.lw	s1,16(a3)
	c.swsp	a0,00000004
	lbu	a0,a3,+00000005
	lbu	a4,a3,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a3,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a3,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303C340
	c.lwsp	s0,00000084
	c.lwsp	a2,000000E4
	sub	a0,a2,a0
	bge	a0,zero,0000000023044F56

l23044F50:
	c.lw	a5,0(a5)

l23044F52:
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023044EFC

l23044F56:
	c.lw	a5,0(a4)
	c.sw	s1,0(a4)
	c.sw	a5,0(s1)

l23044F5C:
	c.lw	s0,108(s1)
	c.beqz	s1,0000000023044FE6

l23044F60:
	c.lw	s1,16(a4)
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
	jal	ra,000000002303C340
	c.lw	s0,68(a5)
	c.sub	a0,a5
	lhu	a5,s1,+00000008
	c.add	a0,a5
	bltu	s3,a0,0000000023044FE2

l23044F90:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.lw	s0,112(a5)
	beq	a5,zero,0000000023044BEE

l23044FA8:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000044
	bne	a4,zero,0000000023044BEE

l23044FB4:
	c.lw	s0,108(a4)
	c.beqz	a4,0000000023044FCA

l23044FB8:
	c.lw	a4,0(a3)
	bne	a3,zero,0000000023044BEE

l23044FBE:
	lhu	a3,a4,+00000008
	lhu	a4,s0,+00000032
	bgeu	a3,a4,0000000023044BEE

l23044FCA:
	lhu	a4,s0,+00000064
	beq	a4,zero,0000000023044BEE

l23044FD2:
	lhu	a4,s0,+00000066
	bltu	s9,a4,0000000023044BEE

l23044FDA:
	andi	a5,a5,+000000A0
	bne	a5,zero,0000000023044BEE

l23044FE2:
	c.lw	s0,108(a5)
	c.bnez	a5,0000000023044FEA

l23044FE6:
	sh	zero,s0,+00000068

l23044FEA:
	lhu	a5,s0,+0000001A
	c.li	a0,00000000
	andi	a5,a5,-00000081
	sh	a5,s0,+0000001A
	c.j	0000000023044DE4

l23044FFA:
	c.mv	a0,s1
	jal	ra,0000000023041712
	c.j	0000000023044F5C

l23045002:
	c.li	a0,00000000
	c.jr	ra

l23045006:
	c.li	a0,FFFFFFFC
	c.j	0000000023044DE4

;; tcp_rexmit_rto_commit: 2304500A
;;   Called from:
;;     2304244A (in tcp_slowtmr)
;;     23045036 (in tcp_rexmit_rto)
tcp_rexmit_rto_commit proc
	lbu	a5,a0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002304501C

l23045016:
	c.addi	a5,00000001
	sb	a5,a0,+00000042

l2304501C:
	jal	zero,0000000023044AD2

;; tcp_rexmit_rto: 23045020
;;   Called from:
;;     23043B3A (in tcp_input)
tcp_rexmit_rto proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023044854
	c.bnez	a0,000000002304503A

l2304502E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304500A

l2304503A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_keepalive: 23045042
;;   Called from:
;;     2304247E (in tcp_slowtmr)
tcp_keepalive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	c.addi	a0,FFFFFFFF
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230440EC
	c.beqz	a0,0000000023045072

l2304505E:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304411C

l23045072:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

;; tcp_zero_window_probe: 2304507C
;;   Called from:
;;     2304239A (in tcp_slowtmr)
tcp_zero_window_probe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s2,a0,+0000006C
	beq	s2,zero,0000000023045196

l23045092:
	lbu	a5,a0,+000000A2
	addi	a4,zero,+000000FF
	beq	a5,a4,00000000230450A4

l2304509E:
	c.addi	a5,00000001
	sb	a5,a0,+000000A2

l230450A4:
	lw	a5,s2,+00000010
	c.mv	s1,a0
	c.li	s0,00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	c.andi	a0,00000001
	c.beqz	a0,00000000230450C8

l230450C0:
	lhu	s0,s2,+00000008
	sltiu	s0,s0,+00000001

l230450C8:
	lw	a4,s2,+00000010
	xori	a1,s0,+00000001
	c.mv	a0,s1
	lbu	a2,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,a4,+00000007
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,00000000230440EC
	c.mv	s3,a0
	c.beqz	a0,00000000230451A8

l230450F6:
	lw	s4,a0,+00000004
	c.beqz	s0,0000000023045178

l230450FC:
	lbu	s0,s4,+0000000D
	lbu	a5,s4,+0000000C
	c.li	a0,00000011
	c.slli	s0,08
	c.or	s0,a5
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	c.and	s0,a5
	c.slli	s0,10
	jal	ra,000000002303C332
	c.srai	s0,00000010
	or	a5,s0,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s4,+0000000C
	c.srli	a5,00000008
	sb	a5,s4,+0000000D

l2304512C:
	lw	a4,s2,+00000010
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
	jal	ra,000000002303C340
	c.lw	s1,80(a5)
	c.addi	a0,00000001
	c.sub	a5,a0
	bge	a5,zero,000000002304515C

l2304515A:
	c.sw	s1,80(a0)

l2304515C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	addi	a3,s1,+00000004
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304411C

l23045178:
	lw	a0,s2,+00000004
	lhu	a5,s2,+00000008
	c.li	a2,00000001
	lhu	a3,a0,+00000008
	addi	a1,s4,+00000014
	c.sub	a3,a5
	c.slli	a3,10
	c.srli	a3,00000010
	jal	ra,0000000023040C4A
	c.j	000000002304512C

l23045196:
	c.li	a0,00000000

l23045198:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230451A8:
	c.li	a0,FFFFFFFF
	c.j	0000000023045198

;; sys_timeout_abs: 230451AC
;;   Called from:
;;     2304523C (in lwip_cyclic_timer)
;;     2304525C (in sys_timeout)
sys_timeout_abs proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000B
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,0000000023040230
	c.beqz	a0,00000000230451DC

l230451C0:
	lui	a4,0004200E
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	addi	a4,a4,-00000050
	c.lw	a4,0(a5)
	sw	zero,a0,+00000000
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.sw	a0,4(s0)
	c.bnez	a5,00000000230451E4

l230451DA:
	c.sw	a4,0(a0)

l230451DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230451E4:
	c.lw	a5,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,00000000230451F4

l230451EE:
	c.sw	a0,0(a5)
	c.j	00000000230451DA

l230451F2:
	c.mv	a5,a4

l230451F4:
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023045202

l230451F8:
	c.lw	a4,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,00000000230451F2

l23045202:
	c.sw	a0,0(a4)
	c.sw	a5,0(a0)
	c.j	00000000230451DC

;; lwip_cyclic_timer: 23045208
lwip_cyclic_timer proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.jalr	a5
	jal	ra,000000002303A3BA
	c.lwsp	a2,00000084
	lui	a5,0004200E
	lw	a5,a5,-00000054
	c.lw	a2,0(a4)
	lui	a1,00023045
	addi	a1,a1,+00000208
	c.add	a5,a4
	sub	a3,a5,a0
	c.add	a0,a4
	blt	a3,zero,0000000023045238

l23045236:
	c.mv	a0,a5

l23045238:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230451AC

;; sys_timeout: 23045240
;;   Called from:
;;     23045294 (in tcp_timer_needed)
;;     230452C8 (in tcpip_tcp_timer)
;;     23045302 (in sys_timeouts_init)
;;     2304931C (in ping_timeout)
;;     23049350 (in ping_timeout)
;;     23049592 (in ping_api_init)
;;     2304A3B2 (in sntp_retry)
;;     2304A540 (in sntp_recv)
;;     2304A5F8 (in sntp_send_request)
;;     2304A65E (in sntp_request)
;;     2304A6EE (in sntp_init)
sys_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303A3BA
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230451AC

;; tcp_timer_needed: 23045260
;;   Called from:
;;     23041528 (in tcp_bind)
;;     2304161E (in tcp_listen_with_backlog_and_err)
;;     23041948 (in tcp_connect)
;;     230438AE (in tcp_input)
;;     23043CBC (in tcp_input)
tcp_timer_needed proc
	lui	a5,0004200E
	lw	a4,a5,-0000004C
	addi	a5,a5,-0000004C
	c.bnez	a4,0000000023045298

l2304526E:
	lui	a4,00042020
	lw	a4,a4,-00000154
	c.bnez	a4,0000000023045282

l23045278:
	lui	a4,00042020
	lw	a4,a4,-00000160
	c.beqz	a4,0000000023045298

l23045282:
	lui	a1,00023045
	c.li	a4,00000001
	c.li	a2,00000000
	addi	a1,a1,+0000029A
	addi	a0,zero,+000000FA
	c.sw	a5,0(a4)
	jal	zero,0000000023045240

l23045298:
	c.jr	ra

;; tcpip_tcp_timer: 2304529A
tcpip_tcp_timer proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023042564
	lui	a5,00042020
	lw	a5,a5,-00000154
	c.bnez	a5,00000000230452B6

l230452AC:
	lui	a5,00042020
	lw	a5,a5,-00000160
	c.beqz	a5,00000000230452CC

l230452B6:
	c.lwsp	a2,00000020
	lui	a1,00023045
	c.li	a2,00000000
	addi	a1,a1,+0000029A
	addi	a0,zero,+000000FA
	c.addi	sp,00000010
	jal	zero,0000000023045240

l230452CC:
	c.lwsp	a2,00000020
	lui	a5,0004200E
	sw	zero,a5,+00000FB4
	c.addi	sp,00000010
	c.jr	ra

;; sys_timeouts_init: 230452DA
;;   Called from:
;;     2303CF92 (in lwip_init)
sys_timeouts_init proc
	lui	a5,00023086
	c.addi	sp,FFFFFFF0
	addi	a5,a5,+0000048C
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,a5,+00000008
	addi	s0,a5,+00000030
	lui	s2,00023045

l230452F8:
	c.lw	s1,0(a0)
	c.mv	a2,s1
	addi	a1,s2,+00000208
	c.addi	s1,00000008
	jal	ra,0000000023045240
	bne	s1,s0,00000000230452F8

l2304530A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sys_untimeout: 23045316
;;   Called from:
;;     2304932E (in ping_timeout)
;;     2304A512 (in sntp_recv)
;;     2304A520 (in sntp_recv)
sys_untimeout proc
	lui	a4,0004200E
	lw	a5,a4,-00000050
	addi	a3,a4,-00000050
	c.li	a2,00000000
	c.bnez	a5,0000000023045332

l23045326:
	c.jr	ra

l23045328:
	c.sw	a2,0(a4)
	c.j	0000000023045348

l2304532C:
	c.mv	a2,a5
	c.beqz	a4,0000000023045326

l23045330:
	c.mv	a5,a4

l23045332:
	lw	a6,a5,+00000008
	c.lw	a5,0(a4)
	bne	a6,a0,000000002304532C

l2304533C:
	lw	a6,a5,+0000000C
	bne	a6,a1,000000002304532C

l23045344:
	c.bnez	a2,0000000023045328

l23045346:
	c.sw	a3,0(a4)

l23045348:
	c.mv	a1,a5
	c.li	a0,0000000B
	jal	zero,000000002304024E

;; sys_check_timeouts: 23045350
;;   Called from:
;;     2303BC74 (in tcpip_thread)
sys_check_timeouts proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,000000002303A3BA
	c.mv	s2,a0
	lui	s3,0004200E
	lui	s4,0004200E

l2304536C:
	addi	a4,s3,-00000050
	c.lw	a4,0(a1)
	c.beqz	a1,0000000023045398

l23045374:
	c.lw	a1,4(a5)
	sub	a3,s2,a5
	blt	a3,zero,0000000023045398

l2304537E:
	c.lw	a1,0(a3)
	c.lw	a1,8(s0)
	c.li	a0,0000000B
	c.sw	a4,0(a3)
	c.lw	a1,12(s1)
	sw	a5,s4,+00000FAC
	jal	ra,000000002304024E
	c.beqz	s0,000000002304536C

l23045392:
	c.mv	a0,s1
	c.jalr	s0
	c.j	000000002304536C

l23045398:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; sys_timeouts_sleeptime: 230453A8
;;   Called from:
;;     2303BC48 (in tcpip_thread)
sys_timeouts_sleeptime proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000050
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.li	a0,FFFFFFFF
	c.beqz	a5,00000000230453CE

l230453BC:
	jal	ra,000000002303A3BA
	c.lw	s0,0(a5)
	c.lw	a5,4(a5)
	sub	a0,a5,a0
	bge	a0,zero,00000000230453CE

l230453CC:
	c.li	a0,00000000

l230453CE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_init: 230453D6
;;   Called from:
;;     2303CF7E (in lwip_init)
udp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303404A
	c.slli	a0,12
	c.lui	a5,FFFFC000
	c.lwsp	a2,00000020
	c.srli	a0,00000012
	c.add	a0,a5
	lui	a5,0004200E
	sh	a0,a5,+00000952
	c.addi	sp,00000010
	c.jr	ra

;; udp_input: 230453F4
;;   Called from:
;;     2303F78C (in ip4_input)
udp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042020
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	a5,s0,-00000268
	lhu	a4,a5,+0000007E
	c.addi	a4,00000001
	sh	a4,a5,+0000007E
	lhu	a3,a0,+0000000A
	c.li	a4,00000007
	bltu	a4,a3,0000000023045450

l23045424:
	lhu	a4,a5,+00000086
	c.addi	a4,00000001
	sh	a4,a5,+00000086
	lhu	a4,a5,+00000082
	c.addi	a4,00000001
	sh	a4,a5,+00000082

l23045438:
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
	jal	zero,0000000023040890

l23045450:
	lui	s4,00042020
	addi	s2,s4,-00000140
	lw	s3,a0,+00000004
	c.mv	s1,a0
	c.mv	s5,a1
	lw	a0,s2,+00000014
	lw	a1,s2,+00000000
	addi	s0,s0,-00000268
	addi	s4,s4,-00000140
	jal	ra,000000002303FA5A
	lbu	a5,s3,+00000001
	c.mv	s6,a0
	lbu	a0,s3,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lbu	a5,s3,+00000003
	c.mv	s7,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303C332
	lui	a1,00042020
	lw	a7,a1,-00000144
	lw	t3,s2,+00000004
	lw	a3,s2,+00000014
	lw	t4,s2,+00000010
	c.mv	a5,a7
	c.li	s2,00000000
	c.li	a6,00000000
	c.li	t1,FFFFFFFF

l230454B4:
	c.bnez	a5,00000000230454C6

l230454B6:
	bne	s2,zero,0000000023045556

l230454BA:
	lw	a5,s5,+00000004
	beq	a5,a3,0000000023045556

l230454C2:
	c.mv	a0,s1
	c.j	0000000023045438

l230454C6:
	lhu	a4,a5,+00000012
	bne	a4,a0,000000002304552A

l230454CE:
	lbu	a2,a5,+00000008
	c.beqz	a2,00000000230454E2

l230454D4:
	lbu	a4,t3,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	bne	a2,a4,000000002304552A

l230454E2:
	c.lw	a5,0(a4)
	beq	s6,zero,0000000023045524

l230454E8:
	c.beqz	a4,00000000230454FC

l230454EA:
	beq	a3,t1,00000000230454FC

l230454EE:
	lw	t5,s5,+00000008
	xor	a2,a4,a3
	and	a2,a2,t5
	c.bnez	a2,000000002304552A

l230454FC:
	lbu	a2,a5,+00000010
	c.andi	a2,00000004
	c.bnez	a2,0000000023045532

l23045504:
	beq	s2,zero,0000000023045520

l23045508:
	beq	s6,zero,0000000023045530

l2304550C:
	bne	a3,t1,0000000023045530

l23045510:
	lw	a2,s5,+00000004
	lw	t5,s2,+00000000
	beq	t5,a2,0000000023045532

l2304551C:
	bne	a2,a4,0000000023045532

l23045520:
	c.mv	s2,a5
	c.j	0000000023045532

l23045524:
	c.beqz	a4,00000000230454FC

l23045526:
	beq	a4,a3,00000000230454FC

l2304552A:
	c.mv	a6,a5
	c.lw	a5,12(a5)
	c.j	00000000230454B4

l23045530:
	c.bnez	a4,0000000023045520

l23045532:
	lhu	a4,a5,+00000014
	bne	a4,s7,000000002304552A

l2304553A:
	c.lw	a5,4(a4)
	c.beqz	a4,0000000023045542

l2304553E:
	bne	a4,t4,000000002304552A

l23045542:
	beq	a6,zero,0000000023045598

l23045546:
	c.lw	a5,12(a4)
	sw	a5,a1,+00000EBC
	sw	a4,a6,+0000000C
	sw	a7,a5,+0000000C

l23045554:
	c.mv	s2,a5

l23045556:
	lbu	a5,s3,+00000007
	lbu	a4,s3,+00000006
	c.slli	a5,08
	c.or	a5,a4
	c.beqz	a5,00000000230455A4

l23045564:
	lhu	a2,s1,+00000008
	lui	a4,00042020
	lui	a3,00042020
	addi	a4,a4,-0000012C
	addi	a3,a3,-00000130
	c.li	a1,00000011
	c.mv	a0,s1
	jal	ra,000000002303CDB4
	c.beqz	a0,00000000230455A4

l23045582:
	lhu	a5,s0,+00000084
	c.addi	a5,00000001
	sh	a5,s0,+00000084

l2304558C:
	lhu	a5,s0,+00000082
	c.addi	a5,00000001
	sh	a5,s0,+00000082
	c.j	00000000230454C2

l23045598:
	lhu	a4,s0,+00000092
	c.addi	a4,00000001
	sh	a4,s0,+00000092
	c.j	0000000023045554

l230455A4:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002304082E
	c.bnez	a0,000000002304558C

l230455AE:
	beq	s2,zero,00000000230455E2

l230455B2:
	lw	t1,s2,+00000020
	beq	t1,zero,00000000230454C2

l230455BA:
	c.lwsp	s0,00000114
	lw	a0,s2,+00000024
	c.lwsp	a2,00000130
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.mv	a4,s7
	c.mv	a2,s1
	c.lwsp	a2,000000E8
	c.lwsp	tp,00000134
	c.mv	a1,s2
	c.lwsp	zero,00000158
	lui	a3,00042020
	addi	a3,a3,-00000130
	c.addi16sp	00000030
	c.jr	t1

l230455E2:
	bne	s6,zero,000000002304560E

l230455E6:
	lw	a5,s4,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002304560E

l230455F6:
	lhu	a1,s4,+0000000C
	c.mv	a0,s1
	c.addi	a1,00000008
	c.slli	a1,10
	c.srai	a1,00000010
	jal	ra,000000002304087E
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,00000000230476CE

l2304560E:
	lhu	a5,s0,+0000008C
	c.addi	a5,00000001
	sh	a5,s0,+0000008C
	c.j	000000002304558C

;; udp_bind: 2304561A
;;   Called from:
;;     2302CA94 (in dns_server_init)
;;     2303CA22 (in dns_init)
;;     2303D498 (in dhcp_inc_pcb_refcount)
;;     2304572E (in udp_sendto_if_src_chksum)
;;     230459FE (in udp_connect)
;;     23046EEA (in lwip_netconn_do_bind)
;;     23047CE8 (in dhcp_server_start)
;;     23048648 (in iperf_server_udp)
;;     2304A718 (in sntp_init)
udp_bind proc
	c.mv	a4,a0
	c.bnez	a1,0000000023045626

l2304561E:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23045626:
	c.li	a0,FFFFFFF0
	c.beqz	a4,0000000023045678

l2304562A:
	lui	a3,00042020
	lw	a5,a3,-00000144
	c.mv	a0,a5

l23045634:
	c.bnez	a0,000000002304567A

l23045636:
	c.li	t3,00000000

l23045638:
	c.bnez	a2,00000000230456DA

l2304563A:
	lui	a0,0004200E
	c.lui	t1,00010000
	lhu	a2,a0,-000006AE
	c.lui	a6,00004000
	addi	a0,a0,-000006AE
	c.addi	t1,FFFFFFFF

l2304564C:
	beq	a2,t1,0000000023045686

l23045650:
	c.addi	a2,00000001
	c.slli	a2,10
	c.srli	a2,00000010

l23045656:
	c.mv	a7,a5

l23045658:
	bne	a7,zero,000000002304568A

l2304565C:
	sh	a2,a0,+00000000

l23045660:
	c.lw	a1,0(a5)
	sh	a2,a4,+00000012
	c.sw	a4,0(a5)
	bne	t3,zero,0000000023045676

l2304566C:
	lw	a5,a3,-00000144
	sw	a4,a3,+00000EBC
	c.sw	a4,12(a5)

l23045676:
	c.li	a0,00000000

l23045678:
	c.jr	ra

l2304567A:
	beq	a0,a4,0000000023045682

l2304567E:
	c.lw	a0,12(a0)
	c.j	0000000023045634

l23045682:
	c.li	t3,00000001
	c.j	0000000023045638

l23045686:
	c.lui	a2,0000C000
	c.j	0000000023045656

l2304568A:
	lhu	t4,a7,+00000012
	bne	t4,a2,00000000230456A6

l23045692:
	c.addi	a6,FFFFFFFF
	c.slli	a6,10
	srli	a6,a6,00000010
	bne	a6,zero,000000002304564C

l2304569E:
	sh	a2,a0,+00000000

l230456A2:
	c.li	a0,FFFFFFF8
	c.jr	ra

l230456A6:
	lw	a7,a7,+0000000C
	c.j	0000000023045658

l230456AC:
	beq	a5,a4,00000000230456D8

l230456B0:
	lbu	a0,a4,+00000009
	c.andi	a0,00000004
	c.beqz	a0,00000000230456C0

l230456B8:
	lbu	a0,a5,+00000009
	c.andi	a0,00000004
	c.bnez	a0,00000000230456D8

l230456C0:
	lhu	a0,a5,+00000012
	bne	a0,a2,00000000230456D8

l230456C8:
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	beq	a0,a6,00000000230456A2

l230456D2:
	beq	a6,zero,00000000230456A2

l230456D6:
	c.beqz	a0,00000000230456A2

l230456D8:
	c.lw	a5,12(a5)

l230456DA:
	c.bnez	a5,00000000230456AC

l230456DC:
	c.j	0000000023045660

;; udp_sendto_if_src_chksum: 230456DE
;;   Called from:
;;     230458A0 (in udp_sendto_if_chksum)
;;     2304599C (in udp_sendto_if_src)
udp_sendto_if_src_chksum proc
	c.addi16sp	FFFFFFD0
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.li	s7,FFFFFFF0
	c.beqz	a0,0000000023045736

l230456FA:
	c.beqz	a1,0000000023045736

l230456FC:
	c.beqz	a2,0000000023045736

l230456FE:
	beq	a7,zero,0000000023045736

l23045702:
	c.beqz	a4,0000000023045736

l23045704:
	c.mv	s8,a5
	lhu	a5,a0,+00000012
	c.mv	s1,a0
	c.mv	s4,a7
	c.mv	s0,a6
	c.mv	s5,a4
	c.mv	s9,a3
	c.mv	s3,a2
	c.mv	s2,a1
	c.beqz	a5,000000002304572A

l2304571A:
	lhu	a4,s2,+00000008
	c.lui	a5,00010000
	c.addi	a5,FFFFFFF7
	bgeu	a5,a4,0000000023045752

l23045726:
	c.li	s7,FFFFFFFF
	c.j	0000000023045736

l2304572A:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,000000002304561A
	c.mv	s7,a0
	c.beqz	a0,000000002304571A

l23045736:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s7
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

l23045752:
	c.li	a1,00000008
	c.mv	a0,s2
	jal	ra,0000000023040828
	beq	a0,zero,0000000023045868

l2304575E:
	addi	a2,zero,+00000280
	c.li	a1,00000008
	addi	a0,zero,+000000A2
	jal	ra,0000000023040912
	c.mv	s6,a0
	c.beqz	a0,0000000023045726

l23045770:
	lhu	a5,s2,+00000008
	c.beqz	a5,000000002304577C

l23045776:
	c.mv	a1,s2
	jal	ra,0000000023040B84

l2304577C:
	lhu	a0,s1,+00000012
	lw	s7,s6,+00000004
	jal	ra,000000002303C332
	sb	a0,s7,+00000000
	c.srli	a0,00000008
	sb	a0,s7,+00000001
	c.mv	a0,s9
	jal	ra,000000002303C332
	sb	a0,s7,+00000002
	c.srli	a0,00000008
	sb	a0,s7,+00000003
	sb	zero,s7,+00000006
	sb	zero,s7,+00000007
	lbu	a5,s1,+00000010
	c.andi	a5,00000008
	c.beqz	a5,00000000230457CE

l230457B2:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230457CE

l230457C2:
	lbu	a5,s6,+0000000D
	ori	a5,a5,+00000004
	sb	a5,s6,+0000000D

l230457CE:
	lhu	a0,s6,+00000008
	jal	ra,000000002303C332
	sb	a0,s7,+00000004
	c.srli	a0,00000008
	sb	a0,s7,+00000005
	lbu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,0000000023045822

l230457E8:
	lhu	a2,s6,+00000008
	beq	s8,zero,000000002304586C

l230457F0:
	xori	s0,s0,-00000001
	c.mv	a5,s3
	c.mv	a4,s4
	c.li	a3,00000008
	c.li	a1,00000011
	c.mv	a0,s6
	c.slli	s0,10
	jal	ra,000000002303CEB2
	c.srli	s0,00000010
	c.add	a0,s0
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l23045812:
	c.bnez	a0,0000000023045818

l23045814:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF

l23045818:
	sb	a0,s7,+00000006
	c.srli	a0,00000008
	sb	a0,s7,+00000007

l23045822:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002304587A

l23045832:
	lbu	a3,s1,+0000001D

l23045836:
	lbu	a4,s1,+0000000A
	c.mv	a6,s5
	c.li	a5,00000011
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,000000002303FA48
	c.mv	s7,a0
	beq	s6,s2,0000000023045854

l2304584E:
	c.mv	a0,s6
	jal	ra,0000000023040890

l23045854:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+0000007C
	c.addi	a4,00000001
	sh	a4,a5,+0000007C
	c.j	0000000023045736

l23045868:
	c.mv	s6,s2
	c.j	000000002304577C

l2304586C:
	c.mv	a4,s3
	c.mv	a3,s4
	c.li	a1,00000011
	c.mv	a0,s6
	jal	ra,000000002303CDB4
	c.j	0000000023045812

l2304587A:
	lbu	a3,s1,+0000000B
	c.j	0000000023045836

;; udp_sendto_if_chksum: 23045880
;;   Called from:
;;     2304594C (in udp_sendto_chksum)
;;     23045992 (in udp_sendto_if)
udp_sendto_if_chksum proc
	c.beqz	a0,00000000230458B0

l23045882:
	c.beqz	a1,00000000230458B0

l23045884:
	c.beqz	a2,00000000230458B0

l23045886:
	c.beqz	a4,00000000230458B0

l23045888:
	lw	a7,a0,+00000000
	beq	a7,zero,000000002304589C

l23045890:
	andi	t1,a7,+000000F0
	addi	t3,zero,+000000E0
	bne	t1,t3,00000000230458A4

l2304589C:
	addi	a7,a4,+00000004

l230458A0:
	jal	zero,00000000230456DE

l230458A4:
	lw	t1,a4,+00000004
	bne	a7,t1,00000000230458B4

l230458AC:
	c.mv	a7,a0
	c.j	00000000230458A0

l230458B0:
	c.li	a0,FFFFFFF0
	c.jr	ra

l230458B4:
	c.li	a0,FFFFFFFC
	c.jr	ra

;; udp_sendto_chksum: 230458B8
;;   Called from:
;;     2304597E (in udp_send_chksum)
;;     2304598A (in udp_sendto)
;;     23047168 (in lwip_netconn_do_send)
udp_sendto_chksum proc
	c.beqz	a0,000000002304596A

l230458BA:
	c.beqz	a1,000000002304596A

l230458BC:
	c.beqz	a2,000000002304596A

l230458BE:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s0,a0
	lbu	a0,a0,+00000008
	c.mv	s5,a5
	c.mv	s4,a4
	c.mv	s3,a3
	c.mv	s1,a2
	c.mv	s2,a1
	c.beqz	a0,000000002304590C

l230458E0:
	jal	ra,0000000023040690

l230458E4:
	c.bnez	a0,000000002304592E

l230458E6:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+0000008A
	c.li	a0,FFFFFFFC
	c.addi	a4,00000001
	sh	a4,a5,+0000008A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2304590C:
	c.lw	a2,0(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023045922

l2304591A:
	c.mv	a0,s1
	jal	ra,000000002303F434
	c.j	00000000230458E4

l23045922:
	lbu	a0,s0,+0000001C
	c.beqz	a0,0000000023045950

l23045928:
	jal	ra,0000000023040690

l2304592C:
	c.beqz	a0,000000002304591A

l2304592E:
	c.mv	a4,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a6,s5
	c.mv	a5,s4
	c.lwsp	tp,000000A8
	c.lwsp	s0,00000088
	c.mv	a3,s3
	c.mv	a2,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023045880

l23045950:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002304591A

l23045954:
	lui	a4,0002308E
	lw	a4,a4,-00000170
	beq	a5,a4,000000002304591A

l23045960:
	addi	a0,s0,+00000018
	jal	ra,000000002303F434
	c.j	000000002304592C

l2304596A:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_send_chksum: 2304596E
;;   Called from:
;;     2304715C (in lwip_netconn_do_send)
udp_send_chksum proc
	c.mv	a4,a2
	c.mv	a5,a3
	c.beqz	a0,0000000023045982

l23045974:
	c.beqz	a1,0000000023045982

l23045976:
	lhu	a3,a0,+00000014
	addi	a2,a0,+00000004
	jal	zero,00000000230458B8

l23045982:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_sendto: 23045986
;;   Called from:
;;     2302CA4C (in get_dns_request)
;;     2303C56C (in dns_send)
;;     23048824 (in iperf_server_udp_recv_fn)
;;     2304A5C2 (in sntp_send_request)
udp_sendto proc
	c.li	a5,00000000
	c.li	a4,00000000
	jal	zero,00000000230458B8

;; udp_sendto_if: 2304598E
;;   Called from:
;;     2303D672 (in dhcp_reboot)
;;     2303E096 (in dhcp_renew)
;;     2303E1DC (in dhcp_release_and_stop)
;;     2303E42C (in dhcp_coarse_tmr)
;;     23047A8C (in dhcp_server_recv)
udp_sendto_if proc
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,0000000023045880

;; udp_sendto_if_src: 23045996
;;   Called from:
;;     2303D278 (in dhcp_discover)
;;     2303D842 (in dhcp_select)
;;     2303DF80 (in dhcp_arp_reply)
udp_sendto_if_src proc
	c.mv	a7,a5
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,00000000230456DE

;; udp_bind_netif: 230459A0
;;   Called from:
;;     2303ADB2 (in lwip_setsockopt_callback)
udp_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,00000000230459AE

l230459A4:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l230459AE:
	sb	a5,a0,+00000008
	c.jr	ra

;; udp_connect: 230459B4
;;   Called from:
;;     2303D4A6 (in dhcp_inc_pcb_refcount)
;;     23046F98 (in lwip_netconn_do_connect)
udp_connect proc
	c.li	a5,FFFFFFF0
	c.beqz	a0,0000000023045A1C

l230459B8:
	c.beqz	a1,0000000023045A1C

l230459BA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lhu	a5,a0,+00000012
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a1
	c.beqz	a5,00000000230459FA

l230459D0:
	c.lw	s1,0(a5)
	sh	s2,s0,+00000014
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000010
	ori	a5,a5,+00000004
	sb	a5,s0,+00000010
	lui	a5,00042020
	lw	a3,a5,-00000144
	c.mv	a4,a3

l230459EE:
	c.bnez	a4,0000000023045A14

l230459F0:
	c.sw	s0,12(a3)
	sw	s0,a5,+00000EBC

l230459F6:
	c.li	a5,00000000
	c.j	0000000023045A06

l230459FA:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,000000002304561A
	c.mv	a5,a0
	c.beqz	a0,00000000230459D0

l23045A06:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23045A14:
	beq	a4,s0,00000000230459F6

l23045A18:
	c.lw	a4,12(a4)
	c.j	00000000230459EE

l23045A1C:
	c.mv	a0,a5
	c.jr	ra

;; udp_disconnect: 23045A20
;;   Called from:
;;     23046FDA (in lwip_netconn_do_disconnect)
udp_disconnect proc
	c.beqz	a0,0000000023045A38

l23045A22:
	lbu	a5,a0,+00000010
	sw	zero,a0,+00000004
	sh	zero,a0,+00000014
	c.andi	a5,FFFFFFFB
	sb	zero,a0,+00000008
	sb	a5,a0,+00000010

l23045A38:
	c.jr	ra

;; udp_recv: 23045A3A
;;   Called from:
;;     2302CAC2 (in dns_server_init)
;;     2303CA38 (in dns_init)
;;     2303D4B6 (in dhcp_inc_pcb_refcount)
;;     23046B58 (in lwip_netconn_do_newconn)
;;     23047CF8 (in dhcp_server_start)
;;     23048694 (in iperf_server_udp)
;;     2304A6B4 (in sntp_init)
udp_recv proc
	c.beqz	a0,0000000023045A40

l23045A3C:
	c.sw	a0,32(a1)
	c.sw	a0,36(a2)

l23045A40:
	c.jr	ra

;; udp_remove: 23045A42
;;   Called from:
;;     2302CAD0 (in dns_server_init)
;;     2303D8D0 (in dhcp_dec_pcb_refcount)
;;     23046E8A (in lwip_netconn_do_delconn)
;;     23047D32 (in dhcp_server_stop)
;;     2304865C (in iperf_server_udp)
udp_remove proc
	c.mv	a1,a0
	c.beqz	a0,0000000023045A70

l23045A46:
	lui	a4,00042020
	lw	a5,a4,-00000144
	bne	a5,a0,0000000023045A60

l23045A52:
	c.lw	a0,12(a5)
	sw	a5,a4,+00000EBC

l23045A58:
	c.li	a0,00000001
	jal	zero,000000002304024E

l23045A5E:
	c.mv	a5,a4

l23045A60:
	c.beqz	a5,0000000023045A58

l23045A62:
	c.lw	a5,12(a4)
	c.beqz	a4,0000000023045A58

l23045A66:
	bne	a4,a1,0000000023045A5E

l23045A6A:
	c.lw	a1,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023045A58

l23045A70:
	c.jr	ra

;; udp_new: 23045A72
;;   Called from:
;;     2302CA80 (in dns_server_init)
;;     2303D472 (in dhcp_inc_pcb_refcount)
;;     23045AA0 (in udp_new_ip_type)
;;     23047CC6 (in dhcp_server_start)
;;     23048612 (in iperf_server_udp)
udp_new proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,0000000023045A96

l23045A82:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	sb	a5,s0,+0000001D

l23045A96:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_new_ip_type: 23045AA0
;;   Called from:
;;     2303CA12 (in dns_init)
;;     23046B2E (in lwip_netconn_do_newconn)
;;     2304A692 (in sntp_init)
udp_new_ip_type proc
	jal	zero,0000000023045A72

;; udp_netif_ip_addr_changed: 23045AA4
;;   Called from:
;;     2304030C (in netif_do_set_ipaddr)
;;     230405C0 (in netif_remove)
udp_netif_ip_addr_changed proc
	c.beqz	a0,0000000023045ABA

l23045AA6:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023045ABA

l23045AAA:
	c.beqz	a1,0000000023045ABA

l23045AAC:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023045ABA

l23045AB0:
	lui	a5,00042020
	lw	a5,a5,-00000144

l23045AB8:
	c.bnez	a5,0000000023045ABC

l23045ABA:
	c.jr	ra

l23045ABC:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,0000000023045AC8

l23045AC4:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l23045AC8:
	c.lw	a5,12(a5)
	c.j	0000000023045AB8

;; udp_get_pcbs: 23045ACC
;;   Called from:
;;     230412AE (in stats_netstat)
udp_get_pcbs proc
	lui	a5,00042020
	lw	a0,a5,-00000144
	c.jr	ra

;; ethernet_input: 23045AD6
ethernet_input proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a0,+0000000A
	c.li	a5,0000000E
	c.mv	s0,a0
	bltu	a5,a4,0000000023045B00

l23045AEC:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000028
	c.addi	a4,00000001
	sh	a4,a5,+00000028
	c.j	0000000023045B80

l23045B00:
	lbu	a5,a0,+0000000F
	c.mv	s2,a1
	c.bnez	a5,0000000023045B12

l23045B08:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	sb	a5,a0,+0000000F

l23045B12:
	c.lw	s0,4(a0)
	lbu	s1,a0,+0000000D
	lbu	a5,a0,+0000000C
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000000
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023045B4E

l23045B2A:
	c.li	a4,00000001
	bne	a5,a4,0000000023045B92

l23045B30:
	lbu	a5,a0,+00000001
	c.bnez	a5,0000000023045B4E

l23045B36:
	lbu	a4,a0,+00000002
	addi	a5,zero,+0000005E
	bne	a4,a5,0000000023045B4E

l23045B42:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000010

l23045B4A:
	sb	a5,s0,+0000000D

l23045B4E:
	c.li	a5,00000008
	beq	s1,a5,0000000023045BAC

l23045B54:
	addi	a5,zero,+00000608
	bne	s1,a5,0000000023045AEC

l23045B5C:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,0000000023045B8A

l23045B64:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,000000002304082E
	c.beqz	a0,0000000023045BD4

l23045B6E:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000022
	c.addi	a4,00000001
	sh	a4,a5,+00000022

l23045B80:
	lhu	a4,a5,+0000001E
	c.addi	a4,00000001
	sh	a4,a5,+0000001E

l23045B8A:
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.j	0000000023045BC6

l23045B92:
	lui	a1,0002308E
	c.li	a2,00000006
	addi	a1,a1,-00000164
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023045B4E

l23045BA2:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000008
	c.j	0000000023045B4A

l23045BAC:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,0000000023045B8A

l23045BB4:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,000000002304082E
	c.bnez	a0,0000000023045B8A

l23045BBE:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303F4C0

l23045BC6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23045BD4:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303E800
	c.j	0000000023045BC6

;; ethernet_output: 23045BDE
;;   Called from:
;;     2303E7A6 (in etharp_raw)
;;     2303E936 (in etharp_input)
;;     2303EABC (in etharp_output_to_arp_index)
;;     2303EBBA (in etharp_query)
;;     2303EC92 (in etharp_output)
ethernet_output proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a4
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.mv	s2,a1
	c.mv	s4,a2
	c.swsp	s0,00000014
	jal	ra,000000002303C332
	c.mv	s1,a0
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,0000000023040828
	c.lwsp	a2,000000A4
	c.bnez	a0,0000000023045C44

l23045C08:
	lw	s0,s2,+00000004
	c.mv	a1,a3
	c.li	a2,00000006
	sb	s1,s0,+0000000C
	c.srli	s1,00000008
	sb	s1,s0,+0000000D
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.mv	a1,s4
	addi	a0,s0,+00000006
	c.li	a2,00000006
	jal	ra,0000000023070C7C
	c.lwsp	s0,00000114
	lw	t1,s3,+00000018
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	s8,00000088
	c.mv	a1,s2
	c.mv	a0,s3
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	t1

l23045C44:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+0000000A
	c.li	a0,FFFFFFFE
	c.addi	a4,00000001
	sh	a4,a5,+0000000A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; netconn_apimsg: 23045C68
;;   Called from:
;;     23045CA2 (in netconn_close_shutdown)
;;     23045CD6 (in netconn_new_with_proto_and_callback)
;;     23045D34 (in netconn_prepare_delete)
;;     23045D8C (in netconn_getaddr)
;;     23045DBE (in netconn_bind)
;;     23045DEE (in netconn_connect)
;;     23045E0E (in netconn_disconnect)
;;     23045E2E (in netconn_listen_with_backlog)
;;     23045E62 (in netconn_tcp_recvd)
;;     23045E86 (in netconn_send)
;;     23045F32 (in netconn_write_vectors_partly)
;;     230461AE (in netconn_recv_data_tcp)
;;     2304623E (in netconn_join_leave_group)
netconn_apimsg proc
	c.lw	a1,0(a2)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.addi	a2,0000000C
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002303BDFA
	c.bnez	a0,0000000023045C7E

l23045C7A:
	lb	a0,s0,+00000004

l23045C7E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; netconn_close_shutdown: 23045C86
;;   Called from:
;;     230461E0 (in netconn_recv_data_tcp)
;;     2304620C (in netconn_shutdown)
netconn_close_shutdown proc
	c.beqz	a0,0000000023045CAC

l23045C88:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	sb	a1,sp,+00000014
	c.swsp	a0,00000084
	jal	ra,000000002303A3BA
	c.swsp	a0,0000000C
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,+000002CA
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045CAC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_new_with_proto_and_callback: 23045CB0
;;   Called from:
;;     2303B774 (in lwip_socket)
netconn_new_with_proto_and_callback proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.mv	s1,a1
	c.mv	a1,a2
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	jal	ra,0000000023046B6A
	c.mv	s0,a0
	c.beqz	a0,0000000023045D0E

l23045CC6:
	c.swsp	a0,00000084
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,-0000054E
	sb	s1,sp,+00000014
	jal	ra,0000000023045C68
	c.beqz	a0,0000000023045D0E

l23045CDC:
	addi	s1,s0,+00000010
	c.mv	a0,s1
	jal	ra,000000002303A210
	addi	a0,s0,+00000014
	jal	ra,000000002303A210
	addi	s2,s0,+0000000C
	c.mv	a0,s2
	jal	ra,000000002303A2EE
	c.mv	a0,s2
	jal	ra,000000002303A2D6
	c.mv	a0,s1
	jal	ra,000000002303A0F2
	c.mv	a1,s0
	c.li	a0,00000007
	jal	ra,000000002304024E
	c.li	s0,00000000

l23045D0E:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

;; netconn_prepare_delete: 23045D1C
;;   Called from:
;;     2303B3D4 (in lwip_close)
;;     23045D50 (in netconn_delete)
netconn_prepare_delete proc
	c.beqz	a0,0000000023045D3E

l23045D1E:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a0,00000084
	jal	ra,000000002303A3BA
	c.swsp	a0,0000000C
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,-0000022A
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045D3E:
	c.li	a0,00000000
	c.jr	ra

;; netconn_delete: 23045D42
;;   Called from:
;;     2303AACA (in free_socket)
;;     2303B224 (in lwip_accept)
;;     2303B264 (in lwip_accept)
;;     2303B7CA (in lwip_socket)
netconn_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000000
	c.beqz	a0,0000000023045D5E

l23045D4E:
	c.mv	s0,a0
	jal	ra,0000000023045D1C
	c.mv	s1,a0
	c.bnez	a0,0000000023045D5E

l23045D58:
	c.mv	a0,s0
	jal	ra,0000000023046C0C

l23045D5E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; netconn_getaddr: 23045D6A
;;   Called from:
;;     2303B25A (in lwip_accept)
;;     2303B51E (in lwip_recvfrom)
netconn_getaddr proc
	c.beqz	a0,0000000023045D96

l23045D6C:
	c.mv	a5,a0
	c.li	a0,FFFFFFF0
	c.beqz	a1,0000000023045D9A

l23045D72:
	c.beqz	a2,0000000023045D9A

l23045D74:
	c.addi16sp	FFFFFFC0
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,+0000022A
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a5,00000084
	sb	a3,sp,+0000001C
	c.swsp	a2,0000000C
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045D96:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23045D9A:
	c.jr	ra

;; netconn_bind: 23045D9C
;;   Called from:
;;     2303B33C (in lwip_bind)
netconn_bind proc
	c.beqz	a0,0000000023045DC8

l23045D9E:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,0000000023045DAC

l23045DA4:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23045DAC:
	c.swsp	a0,00000084
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,-00000168
	c.addi4spn	a1,0000000C
	sh	a2,sp,+00000018
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045DC8:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_connect: 23045DCC
;;   Called from:
;;     2303B460 (in lwip_connect)
netconn_connect proc
	c.beqz	a0,0000000023045DF8

l23045DCE:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,0000000023045DDC

l23045DD4:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23045DDC:
	c.swsp	a0,00000084
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,-00000104
	c.addi4spn	a1,0000000C
	sh	a2,sp,+00000018
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045DF8:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_disconnect: 23045DFC
;;   Called from:
;;     2303B418 (in lwip_connect)
netconn_disconnect proc
	c.beqz	a0,0000000023045E18

l23045DFE:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000042
	c.swsp	ra,0000009C
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045E18:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_listen_with_backlog: 23045E1C
;;   Called from:
;;     2303B49C (in lwip_listen)
netconn_listen_with_backlog proc
	c.beqz	a0,0000000023045E38

l23045E1E:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000008
	c.swsp	ra,0000009C
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045E38:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_tcp_recvd: 23045E3C
;;   Called from:
;;     2303A9C2 (in lwip_recv_tcp)
netconn_tcp_recvd proc
	c.beqz	a0,0000000023045E6C

l23045E3E:
	lbu	a4,a0,+00000000
	c.li	a3,00000010
	c.mv	a5,a0
	andi	a4,a4,+000000F0
	c.li	a0,FFFFFFF0
	bne	a4,a3,0000000023045E70

l23045E50:
	c.addi16sp	FFFFFFC0
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,+0000016E
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a5,00000084
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045E6C:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23045E70:
	c.jr	ra

;; netconn_send: 23045E72
;;   Called from:
;;     2303B680 (in lwip_sendto)
netconn_send proc
	c.beqz	a0,0000000023045E90

l23045E74:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,+000000D8
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23045E90:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_write_vectors_partly: 23045E94
;;   Called from:
;;     23045F58 (in netconn_write_partly)
netconn_write_vectors_partly proc
	c.beqz	a0,0000000023045F44

l23045E96:
	lbu	a5,a0,+00000000
	c.li	a7,00000010
	c.mv	a6,a0
	andi	a5,a5,+000000F0
	c.li	a0,FFFFFFFA
	bne	a5,a7,0000000023045EDE

l23045EA8:
	lbu	a5,a6,+00000024
	lw	t1,a6,+0000001C
	andi	a0,a3,+00000004
	c.andi	a5,00000002
	c.or	a5,a0
	sltu	a5,zero,a5
	or	a5,a5,t1
	c.beqz	a5,0000000023045EE0

l23045EC2:
	c.li	a0,FFFFFFFA
	c.bnez	a4,0000000023045EE0

l23045EC6:
	c.jr	ra

l23045EC8:
	lw	t3,a7,+00000000
	c.addi	a7,00000008
	c.add	a5,t3
	bltu	a5,t3,0000000023045F48

l23045ED4:
	c.addi	a0,00000001

l23045ED6:
	blt	a0,a2,0000000023045EC8

l23045EDA:
	c.bnez	a5,0000000023045EF4

l23045EDC:
	c.li	a0,00000000

l23045EDE:
	c.jr	ra

l23045EE0:
	addi	a7,a1,+00000004
	c.li	a0,00000000
	c.li	a5,00000000
	c.j	0000000023045ED6

l23045EEA:
	c.li	a0,00000000

l23045EEC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l23045EF4:
	bge	a5,zero,0000000023045F04

l23045EF8:
	c.li	a0,FFFFFFFA
	c.beqz	a4,0000000023045EDE

l23045EFC:
	lui	a5,00080000
	xori	a5,a5,-00000001

l23045F04:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	a6,00000084
	c.swsp	a1,00000088
	sh	a2,sp,+00000018
	c.swsp	zero,0000008C
	sb	a3,sp,+00000028
	c.swsp	a5,00000010
	c.swsp	zero,00000090
	c.mv	s0,a4
	beq	t1,zero,0000000023045F40

l23045F22:
	jal	ra,000000002303A3BA
	c.swsp	a0,00000094

l23045F28:
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,+000001D2
	jal	ra,0000000023045C68
	c.bnez	a0,0000000023045EEC

l23045F38:
	c.beqz	s0,0000000023045EEA

l23045F3A:
	c.lwsp	tp,000001F4
	c.sw	s0,0(a5)
	c.j	0000000023045EEC

l23045F40:
	c.swsp	zero,00000094
	c.j	0000000023045F28

l23045F44:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23045F48:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; netconn_write_partly: 23045F4C
;;   Called from:
;;     2303B720 (in lwip_send)
netconn_write_partly proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000004
	c.swsp	a2,00000084
	c.addi4spn	a1,00000008
	c.li	a2,00000001
	c.swsp	ra,0000008C
	jal	ra,0000000023045E94
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; netconn_err: 23045F62
;;   Called from:
;;     23045FB6 (in netconn_accept)
;;     2304606C (in netconn_recv_data)
;;     230460C4 (in netconn_recv_data)
;;     23046164 (in netconn_recv_data_tcp)
;;     230470E2 (in lwip_netconn_do_send)
;;     230471DC (in lwip_netconn_do_write)
netconn_err proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000000
	c.beqz	a0,0000000023045F80

l23045F6E:
	c.mv	s0,a0
	jal	ra,000000002303A3A6
	lb	s1,s0,+00000008
	sb	zero,s0,+00000008
	jal	ra,000000002303A3B6

l23045F80:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; netconn_accept: 23045F8C
;;   Called from:
;;     2303B1E0 (in lwip_accept)
netconn_accept proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.bnez	a1,0000000023045FAC

l23045F9A:
	c.li	s0,FFFFFFF0

l23045F9C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23045FAC:
	sw	zero,a1,+00000000
	c.mv	s1,a0
	c.beqz	a0,0000000023045F9A

l23045FB4:
	c.mv	s2,a1
	jal	ra,0000000023045F62
	sb	a0,sp,+0000000B
	c.mv	s0,a0
	c.bnez	a0,0000000023045F9C

l23045FC2:
	addi	s3,s1,+00000014
	c.mv	a0,s3
	jal	ra,000000002303A210
	c.bnez	a0,0000000023045FD2

l23045FCE:
	c.li	s0,FFFFFFF1
	c.j	0000000023045F9C

l23045FD2:
	lbu	a5,s1,+00000024
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023045FCE

l23045FDC:
	c.andi	a5,00000002
	c.beqz	a5,0000000023046004

l23045FE0:
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002303A1F0
	c.li	a5,FFFFFFFF
	beq	a0,a5,000000002304602C

l23045FEE:
	c.lw	s1,44(a5)
	c.bnez	a5,0000000023046018

l23045FF2:
	c.lwsp	a2,00000044
	addi	a1,sp,+0000000B
	jal	ra,0000000023046A78
	c.beqz	a0,0000000023046022

l23045FFE:
	lb	s0,sp,+0000000B
	c.j	0000000023045F9C

l23046004:
	c.lw	s1,32(a2)
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002303A190
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023045FEE

l23046014:
	c.li	s0,FFFFFFFD
	c.j	0000000023045F9C

l23046018:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s1
	c.jalr	a5
	c.j	0000000023045FF2

l23046022:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023045FCE

l23046026:
	sw	a5,s2,+00000000
	c.j	0000000023045F9C

l2304602C:
	c.li	s0,FFFFFFF9
	c.j	0000000023045F9C

;; netconn_recv_data: 23046030
;;   Called from:
;;     23046118 (in netconn_recv_udp_raw_netbuf_flags)
;;     23046176 (in netconn_recv_data_tcp)
netconn_recv_data proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	zero,00000084
	c.bnez	a1,0000000023046052

l23046040:
	c.li	a5,FFFFFFF0

l23046042:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23046052:
	sw	zero,a1,+00000000
	c.beqz	a0,0000000023046040

l23046058:
	addi	s2,a0,+00000010
	c.mv	s0,a0
	c.mv	a0,s2
	c.mv	s1,a2
	c.mv	s3,a1
	jal	ra,000000002303A210
	c.bnez	a0,0000000023046078

l2304606A:
	c.mv	a0,s0
	jal	ra,0000000023045F62
	c.mv	a5,a0
	c.bnez	a0,0000000023046042

l23046074:
	c.li	a5,FFFFFFF5
	c.j	0000000023046042

l23046078:
	lbu	a5,s0,+00000024
	andi	a2,s1,+00000004
	c.andi	a5,00000003
	c.or	a2,a5
	c.bnez	a2,000000002304608C

l23046086:
	lb	a5,s0,+00000008
	c.beqz	a5,00000000230460D8

l2304608C:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002303A1F0
	c.li	a5,FFFFFFFF
	beq	a0,a5,00000000230460C2

l2304609A:
	lbu	a5,s0,+00000000
	c.li	a4,00000010
	c.lwsp	a2,00000044
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023046104

l230460AA:
	addi	a1,sp,+0000000B
	jal	ra,0000000023046A78
	c.beqz	a0,00000000230460EC

l230460B4:
	lb	a5,sp,+0000000B
	c.li	a4,FFFFFFF1
	bne	a5,a4,0000000023046042

l230460BE:
	c.li	a5,00000000
	c.j	0000000023046042

l230460C2:
	c.mv	a0,s0
	jal	ra,0000000023045F62
	c.mv	a5,a0
	c.bnez	a0,0000000023046042

l230460CC:
	lbu	a5,s0,+00000024
	c.andi	a5,00000001
	c.bnez	a5,0000000023046074

l230460D4:
	c.li	a5,FFFFFFF9
	c.j	0000000023046042

l230460D8:
	c.lw	s0,32(a2)
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002303A190
	c.li	a4,FFFFFFFF
	c.li	a5,FFFFFFFD
	bne	a0,a4,000000002304609A

l230460EA:
	c.j	0000000023046042

l230460EC:
	c.lwsp	a2,000000E4

l230460EE:
	lhu	a2,a5,+00000008
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230460FC

l230460F6:
	c.li	a1,00000001
	c.mv	a0,s0
	c.jalr	a5

l230460FC:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000000
	c.j	00000000230460BE

l23046104:
	c.lw	a0,0(a5)
	c.j	00000000230460EE

;; netconn_recv_udp_raw_netbuf_flags: 23046108
;;   Called from:
;;     2303AB20 (in lwip_recvfrom_udp_raw.isra.6)
netconn_recv_udp_raw_netbuf_flags proc
	c.beqz	a0,000000002304611C

l2304610A:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002304611C

l23046118:
	jal	zero,0000000023046030

l2304611C:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_recv_data_tcp: 23046120
;;   Called from:
;;     230461F8 (in netconn_recv_tcp_pbuf_flags)
netconn_recv_data_tcp proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.mv	s3,a1
	c.mv	s2,a2
	jal	ra,000000002303A210
	c.li	s1,FFFFFFF5
	c.beqz	a0,00000000230461CC

l2304613C:
	lbu	a5,s0,+00000024
	slli	a4,a5,00000018
	c.srai	a4,00000018
	bge	a4,zero,0000000023046170

l2304614A:
	andi	a5,a5,+0000007F
	sb	a5,s0,+00000024

l23046152:
	c.lw	s0,44(a5)
	c.beqz	a5,000000002304615E

l23046156:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	c.jalr	a5

l2304615E:
	c.lw	s0,4(a5)
	c.bnez	a5,00000000230461DC

l23046162:
	c.mv	a0,s0
	jal	ra,0000000023045F62
	c.mv	s1,a0
	c.bnez	a0,00000000230461CC

l2304616C:
	c.li	s1,FFFFFFF2
	c.j	00000000230461CC

l23046170:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023046030
	c.mv	s1,a0
	c.bnez	a0,00000000230461CC

l2304617E:
	andi	a5,s2,+00000008
	lw	s3,s3,+00000000
	c.bnez	a5,00000000230461B2

l23046188:
	c.li	a4,00000001
	beq	s3,zero,0000000023046192

l2304618E:
	lhu	a4,s3,+00000008

l23046192:
	lbu	a5,s0,+00000000
	c.li	a3,00000010
	andi	a5,a5,+000000F0
	bne	a5,a3,00000000230461B2

l230461A0:
	lui	a0,00023047
	c.addi4spn	a1,0000000C
	addi	a0,a0,+0000016E
	c.swsp	s0,00000084
	c.swsp	a4,00000088
	jal	ra,0000000023045C68

l230461B2:
	bne	s3,zero,00000000230461CC

l230461B6:
	andi	s2,s2,+00000010
	beq	s2,zero,0000000023046152

l230461BE:
	lbu	a5,s0,+00000024
	c.li	s1,FFFFFFF9
	ori	a5,a5,-00000080
	sb	a5,s0,+00000024

l230461CC:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l230461DC:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023045C86
	c.li	s1,FFFFFFF1
	c.j	00000000230461CC

;; netconn_recv_tcp_pbuf_flags: 230461E8
;;   Called from:
;;     2303A9CE (in lwip_recv_tcp)
netconn_recv_tcp_pbuf_flags proc
	c.beqz	a0,00000000230461FC

l230461EA:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230461FC

l230461F8:
	jal	zero,0000000023046120

l230461FC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_shutdown: 23046200
;;   Called from:
;;     2303BACA (in lwip_shutdown)
netconn_shutdown proc
	sltu	a2,zero,a2
	sltu	a1,zero,a1
	c.slli	a2,01
	c.or	a1,a2
	jal	zero,0000000023045C86

;; netconn_join_leave_group: 23046210
;;   Called from:
;;     2303B3C6 (in lwip_close)
netconn_join_leave_group proc
	c.beqz	a0,0000000023046248

l23046212:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,0000000023046220

l23046218:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l23046220:
	c.bnez	a2,000000002304622A

l23046222:
	lui	a2,0002308E
	addi	a2,a2,-00000174

l2304622A:
	c.swsp	a0,00000084
	lui	a0,00023047
	c.swsp	a1,00000088
	addi	a0,a0,+0000033C
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000000C
	sb	a3,sp,+0000001D
	jal	ra,0000000023045C68
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23046248:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_gethostbyname: 2304624C
;;   Called from:
;;     2303A3CC (in lwip_gethostbyname)
;;     2303A506 (in lwip_getaddrinfo)
netconn_gethostbyname proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.li	s0,FFFFFFF0
	c.beqz	a0,0000000023046294

l23046256:
	c.beqz	a1,0000000023046294

l23046258:
	c.mv	a5,a0
	addi	a4,sp,+0000000B
	c.addi4spn	a0,0000000C
	c.swsp	a1,00000088
	c.li	a1,00000000
	c.swsp	a4,0000008C
	c.swsp	a0,0000000C
	c.swsp	a5,00000008
	jal	ra,000000002303A21E
	sb	a0,sp,+0000000B
	c.mv	s0,a0
	c.bnez	a0,0000000023046294

l23046276:
	c.lwsp	s8,00000084
	lui	a0,00023047
	c.addi4spn	a1,00000010
	addi	a0,a0,+0000038E
	jal	ra,000000002303BDFA
	c.mv	s0,a0
	c.lwsp	s8,00000044
	jal	ra,000000002303A2D6
	c.bnez	s0,0000000023046294

l23046290:
	lb	s0,sp,+0000000B

l23046294:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; lwip_netconn_do_dns_found: 2304629E
lwip_netconn_do_dns_found proc
	c.lw	a2,12(a5)
	c.bnez	a1,00000000230462AE

l230462A2:
	c.li	a4,FFFFFFFA
	sb	a4,a5,+00000000

l230462A8:
	c.lw	a2,8(a0)
	jal	zero,000000002303A364

l230462AE:
	sb	zero,a5,+00000000
	c.lw	a2,4(a5)
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)
	c.j	00000000230462A8

;; recv_udp: 230462BA
recv_udp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s2,a2
	c.bnez	a0,00000000230462E4

l230462CE:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	jal	zero,0000000023040890

l230462E4:
	addi	s3,a0,+00000010
	c.mv	s1,a0
	c.mv	a0,s3
	c.mv	s4,a3
	c.mv	s5,a4
	jal	ra,000000002303A210
	c.beqz	a0,00000000230462CE

l230462F6:
	c.li	a0,00000006
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,00000000230462CE

l23046300:
	sw	s2,a0,+00000000
	sw	s2,a0,+00000004
	c.li	a5,00000000
	beq	s4,zero,0000000023046312

l2304630E:
	lw	a5,s4,+00000000

l23046312:
	c.sw	s0,8(a5)
	sh	s5,s0,+0000000C
	lhu	a2,s2,+00000008
	c.mv	a1,s0
	c.mv	a0,s3
	c.swsp	a2,00000084
	jal	ra,000000002303A15A
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023046340

l2304632A:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,00000000230473FA

l23046340:
	lw	t1,s1,+0000002C
	beq	t1,zero,000000002304635E

l23046348:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.mv	a0,s1
	c.lwsp	tp,00000134
	c.li	a1,00000000
	c.addi16sp	00000030
	c.jr	t1

l2304635E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; setup_tcp: 23046370
;;   Called from:
;;     230463EE (in lwip_netconn_do_connected)
;;     23046AF2 (in lwip_netconn_do_newconn)
;;     23046D7C (in accept_function)
;;     23046F3C (in lwip_netconn_do_connect)
setup_tcp proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,4(s0)
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023041784
	lui	a1,00023047
	c.mv	a0,s0
	addi	a1,a1,-00000602
	jal	ra,000000002304178A
	lui	a1,00023047
	c.mv	a0,s0
	addi	a1,a1,-0000066C
	jal	ra,0000000023041792
	lui	a1,00023047
	c.mv	a0,s0
	addi	a1,a1,-00000768
	c.li	a2,00000002
	jal	ra,00000000230417B2
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023046
	addi	a1,a1,+0000042E
	c.addi	sp,00000010
	jal	zero,000000002304179A

;; lwip_netconn_do_connected: 230463C0
lwip_netconn_do_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	s0,FFFFFFFA
	c.beqz	a0,0000000023046420

l230463CE:
	c.lw	a0,40(s1)
	c.beqz	s1,00000000230463DC

l230463D2:
	sb	a2,s1,+00000004
	c.lw	a0,40(a5)
	c.lw	a5,0(s1)
	c.addi	s1,0000000C

l230463DC:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	c.mv	s0,a0
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230463F2

l230463EC:
	c.bnez	a2,00000000230463F2

l230463EE:
	jal	ra,0000000023046370

l230463F2:
	lbu	a5,s0,+00000024
	sw	zero,s0,+00000028
	sb	zero,s0,+00000001
	andi	s2,a5,+00000004
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023046414

l2304640C:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l23046414:
	c.li	s0,00000000
	bne	s2,zero,0000000023046420

l2304641A:
	c.mv	a0,s1
	jal	ra,000000002303A364

l23046420:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; err_tcp: 2304642E
err_tcp proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a1
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,000000002303A3A6
	lbu	a5,s0,+00000024
	lbu	s2,s0,+00000001
	sw	zero,s0,+00000004
	ori	a5,a5,+00000001
	sb	a5,s0,+00000024
	sb	s1,s0,+00000008
	sb	zero,s0,+00000001
	jal	ra,000000002303A3B6
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023046470

l23046468:
	c.li	a2,00000000
	c.li	a1,00000004
	c.mv	a0,s0
	c.jalr	a5

l23046470:
	c.lw	s0,44(a5)
	c.beqz	a5,000000002304647C

l23046474:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5

l2304647C:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023046488

l23046480:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l23046488:
	addi	a5,s1,+0000000F
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	c.li	s3,00000000
	bltu	a4,a5,00000000230464A8

l23046498:
	lui	a4,00023086
	c.slli	a5,02
	addi	a4,a4,+000004BC
	c.add	a5,a4
	lw	s3,a5,+00000000

l230464A8:
	addi	s4,s0,+00000010
	c.mv	a0,s4
	jal	ra,000000002303A210
	c.beqz	a0,00000000230464BC

l230464B4:
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002303A15A

l230464BC:
	addi	s4,s0,+00000014
	c.mv	a0,s4
	jal	ra,000000002303A210
	c.beqz	a0,00000000230464D0

l230464C8:
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002303A15A

l230464D0:
	c.li	a4,00000001
	beq	s2,a4,00000000230464E2

l230464D6:
	addi	a5,s2,-00000003
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023046524

l230464E2:
	lbu	a5,s0,+00000024
	andi	a4,a5,-00000005
	sb	a4,s0,+00000024
	c.andi	a5,00000004
	c.bnez	a5,0000000023046524

l230464F2:
	c.li	a4,00000004
	c.lw	s0,40(a5)
	bne	s2,a4,00000000230464FC

l230464FA:
	c.li	s1,00000000

l230464FC:
	sb	s1,a5,+00000004
	c.lw	s0,40(a5)
	c.lw	a5,0(s1)
	c.addi	s1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303A2EE
	sw	zero,s0,+00000028
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002303A364

l23046524:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; lwip_netconn_do_writemore: 23046534
;;   Called from:
;;     230468AA (in poll_tcp)
;;     230469AC (in sent_tcp)
;;     23047212 (in lwip_netconn_do_write)
lwip_netconn_do_writemore proc
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
	c.lw	a0,40(a5)
	lbu	s4,a0,+00000024
	c.mv	s0,a0
	lbu	s3,a5,+0000001C
	andi	s4,s4,+00000002
	andi	a5,s3,+00000004
	or	s4,s4,a5
	c.lw	a0,28(a5)
	c.beqz	a5,0000000023046596

l23046566:
	jal	ra,000000002303A3BA
	c.lw	s0,40(a4)
	c.lw	a4,32(a5)
	c.sub	a0,a5
	c.lw	s0,28(a5)
	blt	a0,a5,0000000023046596

l23046576:
	c.lw	a4,24(a5)

l23046578:
	c.li	s1,FFFFFFF9
	c.beqz	a5,000000002304657E

l2304657C:
	c.li	s1,00000000

l2304657E:
	c.lw	s0,40(a5)
	c.lw	a5,0(a0)
	sb	s1,a5,+00000004
	sw	zero,s0,+00000028
	sb	zero,s0,+00000001
	c.addi	a0,0000000C
	jal	ra,000000002303A364
	c.j	00000000230466EE

l23046596:
	c.lui	s5,00010000
	addi	s7,s5,-00000001
	c.li	s8,00000001

l2304659E:
	c.lw	s0,40(a4)
	c.lw	a4,8(a5)
	c.lw	a4,16(a3)
	c.lw	a5,0(a1)
	c.lw	a5,4(a5)
	c.add	a1,a3
	c.sub	a5,a3
	bltu	a5,s5,0000000023046612

l230465B0:
	ori	s3,s3,+00000002
	c.mv	s2,s7

l230465B6:
	c.lw	s0,4(a0)
	lhu	a3,a0,+00000064
	bgeu	a3,s2,0000000023046624

l230465C0:
	beq	s4,zero,000000002304661C

l230465C4:
	c.bnez	a3,0000000023046620

l230465C6:
	c.lw	a4,24(a5)
	c.li	s1,FFFFFFF9
	c.beqz	a5,00000000230465CE

l230465CC:
	c.li	s1,00000000

l230465CE:
	c.lw	s0,40(a5)
	c.lw	a5,24(a4)
	c.lw	a5,20(a5)
	bgeu	a4,a5,00000000230466A6

l230465D8:
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230465E4

l230465DC:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	c.jalr	a5

l230465E4:
	lbu	a5,s0,+00000024
	ori	a5,a5,+00000010
	sb	a5,s0,+00000024

l230465F0:
	c.bnez	s1,00000000230466CE

l230465F2:
	c.lw	s0,40(a5)
	c.li	s1,00000001
	c.lw	a5,24(a4)
	c.lw	a5,20(a5)
	beq	a4,a5,0000000023046602

l230465FE:
	sltu	s1,zero,s4

l23046602:
	c.lw	s0,4(a0)
	jal	ra,0000000023044AD2
	c.li	a5,FFFFFFFC
	bne	a0,a5,00000000230466EA

l2304660E:
	c.li	s1,FFFFFFFC
	c.j	000000002304657E

l23046612:
	slli	s2,a5,00000010
	srli	s2,s2,00000010
	c.j	00000000230465B6

l2304661C:
	ori	s3,s3,+00000002

l23046620:
	c.mv	s2,a3
	c.j	000000002304662C

l23046624:
	bne	s2,s7,000000002304662C

l23046628:
	bgeu	a5,s5,000000002304663E

l2304662C:
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	s6,00000000
	bne	a5,s2,0000000023046644

l23046636:
	lhu	a5,a4,+0000000C
	bgeu	s8,a5,0000000023046644

l2304663E:
	ori	s3,s3,+00000002
	c.li	s6,00000001

l23046644:
	c.mv	a3,s3
	c.mv	a2,s2
	jal	ra,00000000230441B6
	c.mv	s1,a0
	c.bnez	a0,0000000023046692

l23046650:
	c.lw	s0,40(a4)
	c.lw	a4,24(a5)
	c.add	a5,s2
	c.sw	a4,24(a5)
	c.lw	s0,40(a4)
	c.lw	a4,16(a5)
	c.add	s2,a5
	sw	s2,a4,+00000010
	c.lw	s0,40(a5)
	c.lw	a5,8(a4)
	c.lw	a5,16(a3)
	c.lw	a4,4(a4)
	bne	a3,a4,000000002304668C

l2304666E:
	lhu	a4,a5,+0000000C
	c.addi	a4,FFFFFFFF
	sh	a4,a5,+0000000C
	c.lw	s0,40(a5)
	lhu	a4,a5,+0000000C
	c.beqz	a4,000000002304668C

l23046680:
	c.lw	a5,8(a4)
	c.addi	a4,00000008
	c.sw	a5,8(a4)
	c.lw	s0,40(a5)
	sw	zero,a5,+00000010

l2304668C:
	bne	s6,zero,000000002304659E

l23046690:
	c.j	00000000230466A2

l23046692:
	addi	a5,a0,+00000001
	andi	a5,a5,+000000FF
	c.li	a4,00000001
	bltu	a4,a5,000000002304657E

l230466A0:
	c.li	s1,FFFFFFFF

l230466A2:
	bne	s4,zero,00000000230465CE

l230466A6:
	c.lw	s0,4(a4)
	c.lui	a5,00001000
	addi	a5,a5,-00000540
	lhu	a3,a4,+00000064
	bgeu	a5,a3,00000000230466C0

l230466B6:
	lhu	a4,a4,+00000066
	c.li	a5,00000007
	bgeu	a5,a4,00000000230465F0

l230466C0:
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230465F0

l230466C4:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	c.jalr	a5
	c.j	00000000230465F0

l230466CE:
	c.li	a5,FFFFFFFF
	bne	s1,a5,000000002304657E

l230466D4:
	c.lw	s0,4(a0)
	jal	ra,0000000023044AD2
	c.li	a5,FFFFFFFC
	beq	a0,a5,000000002304660E

l230466E0:
	beq	s4,zero,00000000230466EE

l230466E4:
	c.lw	s0,40(a5)
	c.lw	a5,24(a5)
	c.j	0000000023046578

l230466EA:
	bne	s1,zero,000000002304657C

l230466EE:
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

;; lwip_netconn_do_close_internal: 23046708
;;   Called from:
;;     230468F6 (in poll_tcp)
;;     230469F4 (in sent_tcp)
;;     23046E5A (in lwip_netconn_do_delconn)
;;     23047338 (in lwip_netconn_do_close)
lwip_netconn_do_close_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.lw	a0,40(a5)
	c.li	a4,00000003
	c.mv	s1,a0
	lbu	a5,a5,+00000008
	c.lw	a0,4(s0)
	andi	s6,a5,+00000001
	andi	s3,a5,+00000002
	beq	a5,a4,000000002304675C

l23046732:
	beq	s6,zero,000000002304674E

l23046736:
	lbu	a4,s0,+00000014
	c.li	a3,00000001
	addi	a5,a4,-00000005
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002304675C

l23046748:
	c.li	a5,00000008
	beq	a4,a5,000000002304675C

l2304674E:
	c.li	s4,00000000
	beq	s3,zero,0000000023046766

l23046754:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000010
	c.beqz	a5,0000000023046766

l2304675C:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023041784
	c.li	s4,00000001

l23046766:
	lbu	a4,s0,+00000014
	c.li	a5,00000001
	bne	a4,a5,0000000023046788

l23046770:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230417A2
	bne	s4,zero,00000000230467BE

l2304677C:
	c.mv	a2,s3
	c.mv	a1,s6
	c.mv	a0,s0
	jal	ra,0000000023042138
	c.j	00000000230467C4

l23046788:
	beq	s6,zero,000000002304679C

l2304678C:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304178A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230417A2

l2304679C:
	beq	s3,zero,00000000230467A8

l230467A0:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023041792

l230467A8:
	beq	s4,zero,000000002304677C

l230467AC:
	c.li	a1,00000000
	c.mv	a0,s0
	c.li	a2,00000000
	jal	ra,00000000230417B2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304179A

l230467BE:
	c.mv	a0,s0
	jal	ra,0000000023041FAC

l230467C4:
	c.mv	s2,a0
	c.beqz	a0,00000000230467F6

l230467C8:
	c.li	a5,FFFFFFFF
	bne	a0,a5,00000000230467F6

l230467CE:
	lw	s5,s1,+0000001C
	blt	zero,s5,00000000230467DC

l230467D6:
	c.lui	s5,00001000
	addi	s5,s5,+00000388

l230467DC:
	jal	ra,000000002303A3BA
	c.lw	s1,40(a5)
	c.lw	a5,12(a5)
	c.sub	a0,a5
	blt	a0,s5,000000002304685E

l230467EA:
	beq	s4,zero,00000000230467F6

l230467EE:
	c.mv	a0,s0
	jal	ra,0000000023041BC0
	c.li	s2,00000000

l230467F6:
	c.lw	s1,40(a5)
	c.lw	a5,0(s0)
	sb	s2,a5,+00000004
	sw	zero,s1,+00000028
	sb	zero,s1,+00000001
	c.addi	s0,0000000C
	bne	s2,zero,0000000023046840

l2304680C:
	beq	s4,zero,0000000023046820

l23046810:
	c.lw	s1,44(a5)
	sw	zero,s1,+00000004
	c.beqz	a5,0000000023046820

l23046818:
	c.li	a2,00000000
	c.li	a1,00000004
	c.mv	a0,s1
	c.jalr	a5

l23046820:
	beq	s6,zero,0000000023046830

l23046824:
	c.lw	s1,44(a5)
	c.beqz	a5,0000000023046830

l23046828:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5

l23046830:
	beq	s3,zero,0000000023046840

l23046834:
	c.lw	s1,44(a5)
	c.beqz	a5,0000000023046840

l23046838:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s1
	c.jalr	a5

l23046840:
	c.mv	a0,s0
	jal	ra,000000002303A364
	c.li	s2,00000000

l23046848:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2304685E:
	beq	s3,zero,0000000023046870

l23046862:
	lui	a1,00023047
	addi	a1,a1,-0000066C
	c.mv	a0,s0
	jal	ra,0000000023041792

l23046870:
	lui	a1,00023047
	c.li	a2,00000001
	c.mv	a0,s0
	addi	a1,a1,-00000768
	jal	ra,00000000230417B2
	lui	a1,00023046
	c.mv	a0,s0
	addi	a1,a1,+0000042E
	jal	ra,000000002304179A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023041784
	c.j	0000000023046848

;; poll_tcp: 23046898
poll_tcp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	c.mv	s0,a0
	bne	a5,a4,00000000230468F0

l230468AA:
	jal	ra,0000000023046534

l230468AE:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,00000000230468E6

l230468B8:
	c.lw	s0,4(a4)
	c.beqz	a4,00000000230468E6

l230468BC:
	lhu	a2,a4,+00000064
	c.lui	a3,00001000
	addi	a3,a3,-00000540
	bgeu	a3,a2,00000000230468E6

l230468CA:
	lhu	a3,a4,+00000066
	c.li	a4,00000007
	bltu	a4,a3,00000000230468E6

l230468D4:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230468E6

l230468DE:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l230468E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230468F0:
	c.li	a4,00000004
	bne	a5,a4,00000000230468AE

l230468F6:
	jal	ra,0000000023046708
	c.j	00000000230468AE

;; recv_raw: 230468FC
recv_raw proc
	c.beqz	a0,0000000023046990

l230468FE:
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	addi	s4,a0,+00000010
	c.swsp	s1,00000090
	c.mv	s1,a0
	c.mv	a0,s4
	c.swsp	s3,0000008C
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,000000002303A210
	c.lwsp	a2,00000084
	c.beqz	a0,000000002304693E

l23046920:
	addi	a1,zero,+00000280
	c.li	a0,00000000
	jal	ra,0000000023040DA0
	c.mv	s2,a0
	c.beqz	a0,000000002304693E

l2304692E:
	c.li	a0,00000006
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.bnez	a0,0000000023046950

l23046938:
	c.mv	a0,s2
	jal	ra,0000000023040890

l2304693E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23046950:
	sw	s2,a0,+00000000
	sw	s2,a0,+00000004
	lui	a5,00042020
	lw	a5,a5,-00000130
	c.mv	a1,a0
	c.sw	a0,8(a5)
	lbu	a5,s3,+00000010
	sh	a5,a0,+0000000C
	lhu	a2,s2,+00000008
	c.mv	a0,s4
	c.swsp	a2,00000084
	jal	ra,000000002303A15A
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023046984

l2304697C:
	c.mv	a0,s0
	jal	ra,00000000230473FA
	c.j	000000002304693E

l23046984:
	c.lw	s1,44(a5)
	c.beqz	a5,000000002304693E

l23046988:
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5
	c.j	000000002304693E

l23046990:
	c.li	a0,00000000
	c.jr	ra

;; sent_tcp: 23046994
sent_tcp proc
	c.beqz	a0,00000000230469FA

l23046996:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	c.mv	s0,a0
	c.mv	s1,a2
	bne	a5,a4,00000000230469EE

l230469AC:
	jal	ra,0000000023046534

l230469B0:
	c.lw	s0,4(a5)
	c.beqz	a5,00000000230469E2

l230469B4:
	lhu	a3,a5,+00000064
	c.lui	a4,00001000
	addi	a4,a4,-00000540
	bgeu	a4,a3,00000000230469E2

l230469C2:
	lhu	a4,a5,+00000066
	c.li	a5,00000007
	bltu	a5,a4,00000000230469E2

l230469CC:
	lbu	a5,s0,+00000024
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230469E2

l230469DA:
	c.mv	a2,s1
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l230469E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230469EE:
	c.li	a4,00000004
	bne	a5,a4,00000000230469B0

l230469F4:
	jal	ra,0000000023046708
	c.j	00000000230469B0

l230469FA:
	c.li	a0,00000000
	c.jr	ra

;; recv_tcp: 230469FE
recv_tcp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,FFFFFFFA
	c.beqz	a0,0000000023046A24

l23046A0E:
	addi	s2,a0,+00000010
	c.mv	s1,a0
	c.mv	a0,s2
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,000000002303A210
	c.bnez	a0,0000000023046A46

l23046A20:
	c.bnez	s0,0000000023046A34

l23046A22:
	c.li	s0,00000000

l23046A24:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23046A34:
	lhu	a1,s0,+00000008
	c.mv	a0,s3
	jal	ra,00000000230416BC
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.j	0000000023046A22

l23046A46:
	c.beqz	s0,0000000023046A68

l23046A48:
	lhu	a2,s0,+00000008

l23046A4C:
	c.mv	a1,s0
	c.mv	a0,s2
	c.swsp	a2,00000084
	jal	ra,000000002303A15A
	c.mv	s0,a0
	c.bnez	a0,0000000023046A74

l23046A5A:
	c.lw	s1,44(a5)
	c.beqz	a5,0000000023046A22

l23046A5E:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5
	c.j	0000000023046A24

l23046A68:
	lui	s0,0002308E
	addi	s0,s0,-00000155
	c.li	a2,00000000
	c.j	0000000023046A4C

l23046A74:
	c.li	s0,FFFFFFFF
	c.j	0000000023046A24

;; lwip_netconn_is_err_msg: 23046A78
;;   Called from:
;;     23045FF8 (in netconn_accept)
;;     230460AE (in netconn_recv_data)
;;     23046CA6 (in netconn_drain)
;;     23046CC0 (in netconn_drain)
lwip_netconn_is_err_msg proc
	lui	a5,0002308E
	addi	a5,a5,-00000156
	bne	a0,a5,0000000023046A90

l23046A84:
	c.li	a5,FFFFFFF3

l23046A86:
	sb	a5,a1,+00000000
	c.li	a5,00000001

l23046A8C:
	c.mv	a0,a5
	c.jr	ra

l23046A90:
	lui	a5,0002308E
	addi	a5,a5,-00000154
	bne	a0,a5,0000000023046AA0

l23046A9C:
	c.li	a5,FFFFFFF2
	c.j	0000000023046A86

l23046AA0:
	lui	a4,0002308E
	addi	a4,a4,-00000155
	c.li	a5,00000000
	bne	a0,a4,0000000023046A8C

l23046AAE:
	c.li	a5,FFFFFFF1
	c.j	0000000023046A86

;; lwip_netconn_do_newconn: 23046AB2
lwip_netconn_do_newconn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(s1)
	sb	zero,a0,+00000004
	c.mv	s0,a0
	c.lw	s1,4(a5)
	c.bnez	a5,0000000023046B1C

l23046AC6:
	lbu	a5,s1,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023046B2C

l23046AD6:
	addi	a4,zero,+00000040
	beq	a5,a4,0000000023046AF8

l23046ADE:
	c.li	a4,00000010
	bne	a5,a4,0000000023046B5E

l23046AE4:
	c.li	a0,00000000
	jal	ra,0000000023041E66
	c.sw	s1,4(a0)
	c.lw	s0,0(a0)
	c.lw	a0,4(a5)
	c.beqz	a5,0000000023046B66

l23046AF2:
	jal	ra,0000000023046370
	c.j	0000000023046B16

l23046AF8:
	lbu	a1,a0,+00000008
	c.li	a0,00000000
	jal	ra,000000002304124C
	c.sw	s1,4(a0)
	c.lw	s0,0(a2)
	c.lw	a2,4(a0)
	c.beqz	a0,0000000023046B66

l23046B0A:
	lui	a1,00023047
	addi	a1,a1,-00000704
	jal	ra,0000000023041034

l23046B16:
	c.lw	s0,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023046B66

l23046B1C:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23046B2C:
	c.li	a0,00000000
	jal	ra,0000000023045AA0
	c.sw	s1,4(a0)
	c.lw	s0,0(a4)
	c.lw	a4,4(a5)
	c.beqz	a5,0000000023046B66

l23046B3A:
	lbu	a3,a4,+00000000
	addi	a4,zero,+00000022
	bne	a3,a4,0000000023046B4C

l23046B46:
	c.li	a4,00000001
	sb	a4,a5,+00000010

l23046B4C:
	c.lw	s0,0(a2)
	lui	a1,00023046
	addi	a1,a1,+000002BA
	c.lw	a2,4(a0)
	jal	ra,0000000023045A3A
	c.j	0000000023046B16

l23046B5E:
	c.li	a5,FFFFFFFA

l23046B60:
	sb	a5,s0,+00000004
	c.j	0000000023046B1C

l23046B66:
	c.li	a5,FFFFFFFF
	c.j	0000000023046B60

;; netconn_alloc: 23046B6A
;;   Called from:
;;     23045CBE (in netconn_new_with_proto_and_callback)
;;     23046D50 (in accept_function)
netconn_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000007
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,0000000023046BFE

l23046B82:
	sb	zero,a0,+00000008
	sb	s1,a0,+00000000
	sw	zero,a0,+00000004
	addi	a5,zero,+00000020
	andi	a0,s1,+000000F0
	beq	a0,a5,0000000023046BA8

l23046B9A:
	addi	a5,zero,+00000040
	beq	a0,a5,0000000023046BD6

l23046BA2:
	c.li	a5,00000010
	bne	a0,a5,0000000023046BCA

l23046BA8:
	addi	a1,zero,+000007D0

l23046BAC:
	addi	s1,s0,+00000010
	c.mv	a0,s1
	jal	ra,000000002303A0A8
	c.bnez	a0,0000000023046BCA

l23046BB8:
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,000000002303A21E
	c.beqz	a0,0000000023046BDA

l23046BC4:
	c.mv	a0,s1
	jal	ra,000000002303A0F2

l23046BCA:
	c.mv	a1,s0
	c.li	a0,00000007
	jal	ra,000000002304024E
	c.li	s0,00000000
	c.j	0000000023046BFE

l23046BD6:
	c.li	a1,00000000
	c.j	0000000023046BAC

l23046BDA:
	addi	a0,s0,+00000014
	jal	ra,000000002303A218
	c.li	a5,FFFFFFFF
	sb	zero,s0,+00000001
	c.sw	s0,24(a5)
	sw	s2,s0,+0000002C
	sw	zero,s0,+00000028
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sb	zero,s0,+00000024

l23046BFE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; netconn_free: 23046C0C
;;   Called from:
;;     23045D5A (in netconn_delete)
;;     23046CDA (in netconn_drain)
;;     23046DD0 (in accept_function)
netconn_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002303A210
	addi	a0,s0,+00000014
	jal	ra,000000002303A210
	addi	s1,s0,+0000000C
	c.mv	a0,s1
	jal	ra,000000002303A2D6
	c.mv	a0,s1
	jal	ra,000000002303A2F6
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002304024E

;; netconn_drain: 23046C44
;;   Called from:
;;     23046CCA (in netconn_drain)
;;     23046E1A (in lwip_netconn_do_delconn)
;;     23047320 (in lwip_netconn_do_close)
netconn_drain proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a0,+00000010
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,000000002303A210
	c.beqz	a0,0000000023046C7A

l23046C5E:
	c.li	s2,FFFFFFFF
	c.li	s3,00000010

l23046C62:
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303A1F0
	bne	a0,s2,0000000023046C94

l23046C6E:
	c.mv	a0,s1
	jal	ra,000000002303A0F2
	c.mv	a0,s1
	jal	ra,000000002303A218

l23046C7A:
	c.addi	s0,00000014
	c.mv	a0,s0
	jal	ra,000000002303A210
	c.li	s2,FFFFFFFF
	c.bnez	a0,0000000023046CDE

l23046C86:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23046C94:
	lbu	a5,s0,+00000000
	c.lwsp	a2,00000044
	andi	a5,a5,+000000F0
	bne	a5,s3,0000000023046CB4

l23046CA2:
	addi	a1,sp,+0000000B
	jal	ra,0000000023046A78
	c.bnez	a0,0000000023046C62

l23046CAC:
	c.lwsp	a2,00000044
	jal	ra,0000000023040890
	c.j	0000000023046C62

l23046CB4:
	jal	ra,00000000230473FA
	c.j	0000000023046C62

l23046CBA:
	c.lwsp	a2,00000044
	addi	a1,sp,+0000000B
	jal	ra,0000000023046A78
	c.bnez	a0,0000000023046CDE

l23046CC6:
	c.lwsp	a2,00000024
	c.mv	a0,s1
	c.jal	0000000023046C44
	c.lw	s1,4(a0)
	c.beqz	a0,0000000023046CD8

l23046CD0:
	jal	ra,0000000023041BC0
	sw	zero,s1,+00000004

l23046CD8:
	c.mv	a0,s1
	jal	ra,0000000023046C0C

l23046CDE:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303A1F0
	bne	a0,s2,0000000023046CBA

l23046CEA:
	c.mv	a0,s0
	jal	ra,000000002303A0F2
	c.mv	a0,s0
	jal	ra,000000002303A218
	c.j	0000000023046C86

;; accept_function: 23046CF8
accept_function proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a0,0000000023046D18

l23046D06:
	c.li	s2,FFFFFFFA

l23046D08:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23046D18:
	addi	s2,a0,+00000014
	c.mv	s0,a0
	c.mv	a0,s2
	c.mv	s3,a1
	jal	ra,000000002303A210
	c.beqz	a0,0000000023046D06

l23046D28:
	bne	s3,zero,0000000023046D4A

l23046D2C:
	lui	a1,0002308E
	addi	a1,a1,-00000156
	c.mv	a0,s2
	jal	ra,000000002303A15A
	c.bnez	a0,0000000023046D06

l23046D3C:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023046D06

l23046D40:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023046D06

l23046D4A:
	c.lw	s0,44(a1)
	lbu	a0,s0,+00000000
	jal	ra,0000000023046B6A
	c.mv	s1,a0
	c.bnez	a0,0000000023046D78

l23046D58:
	lui	a1,0002308E
	c.mv	a0,s2
	addi	a1,a1,-00000156
	jal	ra,000000002303A15A
	c.li	s2,FFFFFFFF
	c.bnez	a0,0000000023046D08

l23046D6A:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023046D08

l23046D6E:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023046D08

l23046D78:
	sw	s3,a0,+00000004
	jal	ra,0000000023046370
	c.mv	a0,s2
	c.mv	a1,s1
	jal	ra,000000002303A15A
	c.mv	s2,a0
	c.beqz	a0,0000000023046D6A

l23046D8C:
	c.lw	s1,4(s0)
	c.li	a1,00000000
	c.li	s2,FFFFFFFF
	c.mv	a0,s0
	jal	ra,0000000023041784
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002304178A
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023041792
	c.li	a2,00000000
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,00000000230417B2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304179A
	addi	s0,s1,+00000010
	c.mv	a0,s0
	sw	zero,s1,+00000004
	jal	ra,000000002303A0F2
	c.mv	a0,s0
	jal	ra,000000002303A218
	c.mv	a0,s1
	jal	ra,0000000023046C0C
	c.j	0000000023046D08

;; lwip_netconn_do_delconn: 23046DD6
lwip_netconn_do_delconn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lbu	a5,a0,+00000001
	andi	a4,a5,+000000FD
	c.beqz	a4,0000000023046E16

l23046DEA:
	c.li	a4,00000003
	bne	a5,a4,0000000023046DF8

l23046DF0:
	lbu	a5,a0,+00000024
	c.andi	a5,00000004
	c.bnez	a5,0000000023046E16

l23046DF8:
	c.li	a5,FFFFFFFB
	sb	a5,s0,+00000004

l23046DFE:
	c.lw	s0,0(a0)
	c.addi	a0,0000000C
	jal	ra,000000002303A2EE
	c.beqz	a0,0000000023046E90

l23046E08:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23046E16:
	sb	zero,s0,+00000004
	jal	ra,0000000023046C44
	c.lw	s0,0(a4)
	c.lw	a4,4(a0)
	c.beqz	a0,0000000023046E68

l23046E24:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023046E82

l23046E34:
	addi	a3,zero,+00000040
	beq	a5,a3,0000000023046E5E

l23046E3C:
	c.li	a3,00000010
	bne	a5,a3,0000000023046E62

l23046E42:
	c.li	a5,00000004
	sb	a5,a4,+00000001
	c.li	a5,00000003
	sb	a5,s0,+00000008
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023046708

l23046E5E:
	jal	ra,00000000230411DC

l23046E62:
	c.lw	s0,0(a5)
	sw	zero,a5,+00000004

l23046E68:
	c.lw	s0,0(a0)
	c.lw	a0,44(a5)
	c.beqz	a5,0000000023046E74

l23046E6E:
	c.li	a2,00000000
	c.li	a1,00000000
	c.jalr	a5

l23046E74:
	c.lw	s0,0(a0)
	c.lw	a0,44(a5)
	c.beqz	a5,0000000023046DFE

l23046E7A:
	c.li	a2,00000000
	c.li	a1,00000002
	c.jalr	a5
	c.j	0000000023046DFE

l23046E82:
	sw	zero,a0,+00000024
	c.lw	s0,0(a5)
	c.lw	a5,4(a0)
	jal	ra,0000000023045A42
	c.j	0000000023046E62

l23046E90:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lwip_netconn_do_bind: 23046E98
lwip_netconn_do_bind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.li	a5,FFFFFFFA
	c.lw	a4,4(a0)
	c.beqz	a0,0000000023046EC8

l23046EA8:
	lbu	a5,a4,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023046EE4

l23046EB8:
	addi	a4,zero,+00000040
	beq	a5,a4,0000000023046EDA

l23046EC0:
	c.li	a4,00000010
	beq	a5,a4,0000000023046EF0

l23046EC6:
	c.li	a5,FFFFFFFA

l23046EC8:
	c.lw	s0,0(a0)
	sb	a5,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23046EDA:
	c.lw	s0,8(a1)
	jal	ra,0000000023040FF2

l23046EE0:
	c.mv	a5,a0
	c.j	0000000023046EC8

l23046EE4:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,000000002304561A
	c.j	0000000023046EE0

l23046EF0:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,00000000230414B6
	c.j	0000000023046EE0

;; lwip_netconn_do_connect: 23046EFC
lwip_netconn_do_connect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.lw	a4,4(a0)
	c.beqz	a0,0000000023046FB6

l23046F0C:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023046F92

l23046F1C:
	addi	a3,zero,+00000040
	beq	a5,a3,0000000023046F78

l23046F24:
	c.li	a3,00000010
	c.li	a0,FFFFFFFA
	bne	a5,a3,0000000023046F7E

l23046F2C:
	lbu	a5,a4,+00000001
	c.li	s1,00000003
	beq	a5,s1,0000000023046FBA

l23046F36:
	c.li	a0,FFFFFFF6
	c.bnez	a5,0000000023046F7E

l23046F3A:
	c.mv	a0,a4
	jal	ra,0000000023046370
	c.lw	s0,0(a5)
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	c.lw	a5,4(a0)
	lui	a3,00023046
	addi	a3,a3,+000003C0
	jal	ra,0000000023041800
	c.bnez	a0,0000000023046F7E

l23046F58:
	c.lw	s0,0(a5)
	lbu	a4,a5,+00000024
	sb	s1,a5,+00000001
	c.lw	s0,0(a5)
	c.andi	a4,00000002
	c.beqz	a4,0000000023046F9E

l23046F68:
	lbu	a4,a5,+00000024
	c.li	a0,FFFFFFFB
	ori	a4,a4,+00000004
	sb	a4,a5,+00000024
	c.j	0000000023046F7E

l23046F78:
	c.lw	s0,8(a1)
	jal	ra,0000000023041016

l23046F7E:
	sb	a0,s0,+00000004
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23046F92:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,00000000230459B4
	c.j	0000000023046F7E

l23046F9E:
	lbu	a4,a5,+00000024
	c.andi	a4,FFFFFFFB
	sb	a4,a5,+00000024
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23046FB6:
	c.li	a0,FFFFFFF1
	c.j	0000000023046F7E

l23046FBA:
	c.li	a0,FFFFFFF7
	c.j	0000000023046F7E

;; lwip_netconn_do_disconnect: 23046FBE
lwip_netconn_do_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	addi	a3,zero,+00000020
	c.mv	s0,a0
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	bne	a5,a3,0000000023046FF0

l23046FD8:
	c.lw	a4,4(a0)
	jal	ra,0000000023045A20
	sb	zero,s0,+00000004

l23046FE2:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23046FF0:
	c.li	a5,FFFFFFFA
	sb	a5,a0,+00000004
	c.j	0000000023046FE2

;; lwip_netconn_do_listen: 23046FF8
lwip_netconn_do_listen proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.lw	a5,4(a0)
	c.beqz	a0,00000000230470D0

l23047008:
	lbu	a4,a5,+00000000
	c.li	a3,00000010
	andi	a4,a4,+000000F0
	bne	a4,a3,00000000230470D4

l23047016:
	lbu	a5,a5,+00000001
	c.bnez	a5,00000000230470C4

l2304701C:
	lbu	a5,a0,+00000014
	c.beqz	a5,000000002304702A

l23047022:
	c.li	a5,FFFFFFFA

l23047024:
	sb	a5,sp,+0000000F
	c.j	000000002304709C

l2304702A:
	addi	a2,sp,+0000000F
	addi	a1,zero,+000000FF
	jal	ra,0000000023041576
	c.mv	s1,a0
	c.beqz	a0,000000002304709C

l2304703A:
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002303A210
	c.beqz	a0,0000000023047054

l23047044:
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002303A0F2
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002303A218

l23047054:
	c.lw	s0,0(a0)
	sb	zero,sp,+0000000F
	c.addi	a0,00000014
	jal	ra,000000002303A210
	c.bnez	a0,0000000023047072

l23047062:
	c.lw	s0,0(a0)
	addi	a1,zero,+000007D0
	c.addi	a0,00000014
	jal	ra,000000002303A0A8
	sb	a0,sp,+0000000F

l23047072:
	lb	a5,sp,+0000000F
	c.bnez	a5,00000000230470B6

l23047078:
	c.lw	s0,0(a5)
	c.li	a4,00000002
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,4(s1)
	c.lw	s0,0(a1)
	c.lw	a1,4(a0)
	jal	ra,0000000023041784
	c.lw	s0,0(a5)
	lui	a1,00023047
	addi	a1,a1,-00000308
	c.lw	a5,4(a0)
	jal	ra,00000000230417A2

l2304709C:
	lbu	a5,sp,+0000000F
	c.lw	s0,0(a0)
	sb	a5,s0,+00000004
	c.addi	a0,0000000C
	jal	ra,000000002303A364
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230470B6:
	c.mv	a0,s1
	jal	ra,0000000023041FAC
	c.lw	s0,0(a5)
	sw	zero,a5,+00000004
	c.j	000000002304709C

l230470C4:
	c.li	a4,00000002
	bne	a5,a4,00000000230470D0

l230470CA:
	sb	zero,sp,+0000000F
	c.j	000000002304709C

l230470D0:
	c.li	a5,FFFFFFF5
	c.j	0000000023047024

l230470D4:
	c.li	a5,FFFFFFF0
	c.j	0000000023047024

;; lwip_netconn_do_send: 230470D8
lwip_netconn_do_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023045F62
	c.bnez	a0,0000000023047120

l230470E8:
	c.lw	s0,0(a5)
	c.li	a0,FFFFFFF5
	lw	a7,a5,+00000004
	beq	a7,zero,0000000023047120

l230470F4:
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023047138

l23047104:
	addi	a4,zero,+00000040
	bne	a5,a4,0000000023047120

l2304710C:
	c.lw	s0,8(a5)
	c.mv	a0,a7
	addi	a2,a5,+00000008
	c.lw	a5,0(a1)
	c.beqz	a2,000000002304711C

l23047118:
	c.lw	a5,8(a5)
	c.bnez	a5,0000000023047132

l2304711C:
	jal	ra,00000000230411D4

l23047120:
	sb	a0,s0,+00000004
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23047132:
	jal	ra,0000000023041154
	c.j	0000000023047120

l23047138:
	lw	a6,s0,+00000008
	lbu	a4,a6,+0000000E
	addi	a2,a6,+00000008
	lw	a1,a6,+00000000
	c.andi	a4,00000002
	lhu	a5,a6,+00000010
	c.beqz	a2,0000000023047156

l23047150:
	lw	a3,a6,+00000008
	c.bnez	a3,0000000023047162

l23047156:
	c.mv	a3,a5
	c.mv	a2,a4
	c.mv	a0,a7
	jal	ra,000000002304596E
	c.j	0000000023047120

l23047162:
	lhu	a3,a6,+0000000C
	c.mv	a0,a7
	jal	ra,00000000230458B8
	c.j	0000000023047120

;; lwip_netconn_do_recv: 2304716E
lwip_netconn_do_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a0,0(a5)
	sb	zero,a0,+00000004
	c.mv	s0,a0
	c.lw	a5,4(a4)
	c.bnez	a4,000000002304719E

l23047188:
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi	a0,0000000C
	c.addi16sp	00000020
	jal	zero,000000002303A364

l2304719E:
	lbu	a5,a5,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023047188

l230471AC:
	c.lw	a0,8(s1)
	c.lui	s3,00010000
	addi	s4,s3,-00000001

l230471B4:
	c.mv	s2,s1
	bltu	s1,s3,00000000230471BC

l230471BA:
	c.mv	s2,s4

l230471BC:
	c.lw	s0,0(a5)
	slli	a1,s2,00000010
	c.srli	a1,00000010
	c.lw	a5,4(a0)
	sub	s1,s1,s2
	jal	ra,00000000230416BC
	c.bnez	s1,00000000230471B4

l230471D0:
	c.j	0000000023047188

;; lwip_netconn_do_write: 230471D2
lwip_netconn_do_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023045F62
	c.lw	s0,0(a5)
	c.bnez	a0,0000000023047218

l230471E4:
	lbu	a4,a5,+00000000
	c.li	a3,00000010
	c.li	a0,FFFFFFFA
	andi	a4,a4,+000000F0
	bne	a4,a3,0000000023047218

l230471F4:
	lbu	a4,a5,+00000001
	c.bnez	a4,0000000023047216

l230471FA:
	c.lw	a5,4(a4)
	c.li	a0,FFFFFFF5
	c.beqz	a4,0000000023047218

l23047200:
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023046534

l23047216:
	c.li	a0,FFFFFFFB

l23047218:
	sb	a0,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a0,a5,+0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

;; lwip_netconn_do_getaddr: 2304722A
lwip_netconn_do_getaddr proc
	c.lw	a0,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023047272

l23047230:
	lbu	a3,a0,+00000010
	c.lw	a0,8(a4)
	c.beqz	a3,000000002304727A

l23047238:
	c.lw	a5,0(a5)

l2304723A:
	c.sw	a4,0(a5)
	c.lw	a0,0(a4)
	sb	zero,a0,+00000004
	addi	a3,zero,+00000020
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023047298

l23047252:
	addi	a3,zero,+00000040
	beq	a5,a3,000000002304727E

l2304725A:
	c.li	a3,00000010
	bne	a5,a3,0000000023047290

l23047260:
	c.lw	a4,4(a5)
	lbu	a4,a0,+00000010
	c.bnez	a4,00000000230472BC

l23047268:
	lbu	a3,a5,+00000014
	c.li	a4,00000001
	bltu	a4,a3,00000000230472C4

l23047272:
	c.li	a5,FFFFFFF5
	sb	a5,a0,+00000004
	c.j	0000000023047290

l2304727A:
	c.lw	a5,4(a5)
	c.j	000000002304723A

l2304727E:
	lbu	a5,a0,+00000010
	c.beqz	a5,0000000023047272

l23047284:
	c.lw	a4,4(a4)
	c.lw	a0,12(a5)
	lbu	a4,a4,+00000010
	sh	a4,a5,+00000000

l23047290:
	c.lw	a0,0(a0)
	c.addi	a0,0000000C
	jal	zero,000000002303A364

l23047298:
	c.lw	a4,4(a5)
	lbu	a4,a0,+00000010
	c.beqz	a4,00000000230472AC

l230472A0:
	c.lw	a0,12(a4)
	lhu	a5,a5,+00000012

l230472A6:
	sh	a5,a4,+00000000
	c.j	0000000023047290

l230472AC:
	lbu	a4,a5,+00000010
	c.andi	a4,00000004
	c.beqz	a4,0000000023047272

l230472B4:
	c.lw	a0,12(a4)
	lhu	a5,a5,+00000014
	c.j	00000000230472A6

l230472BC:
	lhu	a5,a5,+00000016

l230472C0:
	c.lw	a0,12(a4)
	c.j	00000000230472A6

l230472C4:
	lhu	a5,a5,+00000018
	c.j	00000000230472C0

;; lwip_netconn_do_close: 230472CA
lwip_netconn_do_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.lw	a0,4(a4)
	c.beqz	a4,0000000023047300

l230472D8:
	lbu	a4,a0,+00000000
	c.li	a3,00000010
	andi	a4,a4,+000000F0
	bne	a4,a3,0000000023047300

l230472E6:
	lbu	a4,s0,+00000008
	c.li	a2,00000003
	lbu	a3,a0,+00000001
	beq	a4,a2,00000000230472FA

l230472F4:
	c.li	a2,00000002
	beq	a3,a2,0000000023047300

l230472FA:
	c.li	a2,00000003
	bne	a3,a2,0000000023047312

l23047300:
	c.li	a4,FFFFFFF5

l23047302:
	sb	a4,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23047312:
	c.li	a2,00000001
	bne	a3,a2,000000002304731C

l23047318:
	c.li	a4,FFFFFFFB
	c.j	0000000023047302

l2304731C:
	c.andi	a4,00000001
	c.beqz	a4,0000000023047324

l23047320:
	jal	ra,0000000023046C44

l23047324:
	c.lw	s0,0(a5)
	c.li	a4,00000004
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023046708

;; lwip_netconn_do_join_leave_group: 2304733C
lwip_netconn_do_join_leave_group proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,FFFFFFF5
	sb	a5,a0,+00000004
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.lw	a5,4(a4)
	c.beqz	a4,0000000023047372

l23047350:
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023047386

l23047360:
	lbu	a5,s0,+00000011
	c.lw	a0,12(a0)
	c.lw	s0,8(a1)
	c.bnez	a5,0000000023047380

l2304736A:
	jal	ra,000000002303F1F2

l2304736E:
	sb	a0,s0,+00000004

l23047372:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002303A364

l23047380:
	jal	ra,000000002303F308
	c.j	000000002304736E

l23047386:
	c.li	a5,FFFFFFFA
	sb	a5,a0,+00000004
	c.j	0000000023047372

;; lwip_netconn_do_gethostbyname: 2304738E
lwip_netconn_do_gethostbyname proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,12(s1)
	c.mv	s0,a0
	c.mv	a3,a0
	c.lw	a0,4(a1)
	c.lw	a0,0(a0)
	lui	a2,00023046
	c.li	a4,00000000
	addi	a2,a2,+0000029E
	jal	ra,000000002303CAA8
	sb	a0,s1,+00000000
	c.lw	s0,12(a5)
	lb	a4,a5,+00000000
	c.li	a5,FFFFFFFB
	beq	a4,a5,00000000230473CC

l230473BE:
	c.lw	s0,8(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303A364

l230473CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; err_to_errno: 230473D6
;;   Called from:
;;     2303A9F8 (in lwip_recv_tcp)
;;     2303B27E (in lwip_accept)
;;     2303B318 (in lwip_bind)
;;     2303B3DA (in lwip_close)
;;     2303B43E (in lwip_connect)
;;     2303B4C2 (in lwip_listen)
;;     2303B572 (in lwip_recvfrom)
;;     2303B61E (in lwip_sendto)
;;     2303B68E (in lwip_sendto)
;;     2303B726 (in lwip_send)
;;     2303BAD0 (in lwip_shutdown)
;;     2303BB44 (in lwip_setsockopt)
err_to_errno proc
	addi	a5,a0,+00000010
	andi	a5,a5,+000000FF
	c.li	a4,00000010
	bltu	a4,a5,00000000230473F6

l230473E4:
	slli	a5,a0,00000002
	lui	a0,00023086
	addi	a0,a0,+000004C8
	c.sub	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l230473F6:
	c.li	a0,00000005
	c.jr	ra

;; netbuf_delete: 230473FA
;;   Called from:
;;     2303AACE (in free_socket)
;;     2303AB74 (in lwip_recvfrom_udp_raw.isra.6)
;;     2304633C (in recv_udp)
;;     2304697E (in recv_raw)
;;     23046CB4 (in netconn_drain)
netbuf_delete proc
	c.beqz	a0,0000000023047420

l230473FC:
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023047422

l23047402:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023040890
	c.lwsp	a2,00000064
	c.li	a0,00000006
	sw	zero,a1,+00000004
	sw	zero,a1,+00000000
	c.lwsp	t3,00000020
	c.addi16sp	00000020

l2304741C:
	jal	zero,000000002304024E

l23047420:
	c.jr	ra

l23047422:
	c.li	a0,00000006
	c.j	000000002304741C

;; netbuf_alloc: 23047426
;;   Called from:
;;     2303B64C (in lwip_sendto)
netbuf_alloc proc
	c.bnez	a0,0000000023047436

l23047428:
	c.li	a0,00000000
	c.jr	ra

l2304742C:
	c.li	a0,00000000

l2304742E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23047436:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,000000002304744A

l23047442:
	c.swsp	a1,00000084
	jal	ra,0000000023040890
	c.lwsp	a2,00000064

l2304744A:
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	jal	ra,0000000023040912
	c.sw	s0,0(a0)
	c.beqz	a0,000000002304742C

l2304745A:
	c.sw	s0,4(a0)
	c.lw	a0,4(a0)
	c.j	000000002304742E

;; netbuf_free: 23047460
;;   Called from:
;;     2303B688 (in lwip_sendto)
netbuf_free proc
	c.beqz	a0,000000002304748A

l23047462:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023047472

l2304746E:
	jal	ra,0000000023040890

l23047472:
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000
	sb	zero,s0,+0000000E
	sh	zero,s0,+00000010
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304748A:
	c.jr	ra

;; icmp_input: 2304748C
;;   Called from:
;;     2303F7B8 (in ip4_input)
icmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042020
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	s3,s2,-00000268
	lhu	a5,s3,+0000004A
	lui	s6,00042020
	c.li	a4,00000013
	c.addi	a5,00000001
	sh	a5,s3,+0000004A
	addi	a5,s6,-00000140
	lw	s7,a5,+00000008
	c.mv	s0,a0
	addi	s2,s2,-00000268
	lbu	s1,s7,+00000000
	c.andi	s1,0000000F
	c.slli	s1,02
	bgeu	a4,s1,00000000230476BC

l230474D2:
	lhu	a3,a0,+0000000A
	c.li	a4,00000003
	bgeu	a4,a3,00000000230476BC

l230474DC:
	c.lw	a0,4(a4)
	lbu	a4,a4,+00000000
	beq	a4,zero,000000002304767C

l230474E6:
	c.li	a3,00000008
	bne	a4,a3,00000000230476A6

l230474EC:
	c.lw	a5,20(a0)
	addi	a4,zero,+000000E0
	andi	a3,a0,+000000F0
	beq	a3,a4,0000000023047588

l230474FA:
	c.mv	s4,a1
	c.lw	a5,0(a1)
	jal	ra,000000002303FA5A
	c.bnez	a0,0000000023047588

l23047504:
	lhu	a4,s0,+00000008
	c.li	a5,00000007
	bgeu	a5,a4,00000000230476BC

l2304750E:
	c.mv	a0,s0
	jal	ra,000000002303CECC
	c.beqz	a0,000000002304753C

l23047516:
	c.mv	a0,s0
	jal	ra,0000000023040890
	lhu	a5,s3,+00000050
	c.addi	a5,00000001
	sh	a5,s3,+00000050

l23047526:
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

l2304753C:
	addi	s5,s1,+0000008E
	slli	s3,s1,00000010
	c.mv	a1,s5
	c.mv	a0,s0
	addi	s6,s6,-00000140
	srli	s3,s3,00000010
	jal	ra,0000000023040828
	beq	a0,zero,0000000023047696

l23047558:
	lhu	a5,s0,+00000008
	add	a1,a5,s3
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a1,a5,0000000023047588

l23047568:
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,0000000023040912
	c.mv	s5,a0
	c.beqz	a0,0000000023047588

l23047578:
	lhu	a4,a0,+0000000A
	addi	a5,s1,+00000008
	bgeu	a4,a5,000000002304759A

l23047584:
	jal	ra,0000000023040890

l23047588:
	c.mv	a0,s0
	jal	ra,0000000023040890
	lhu	a5,s2,+0000005C
	c.addi	a5,00000001
	sh	a5,s2,+0000005C
	c.j	0000000023047526

l2304759A:
	c.lw	a0,4(a0)
	c.mv	a1,s7
	c.mv	a2,s1
	jal	ra,0000000023070C7C
	c.mv	a1,s1
	c.mv	a0,s5
	jal	ra,000000002304082E
	c.beqz	a0,00000000230475B2

l230475AE:
	c.mv	a0,s5
	c.j	0000000023047584

l230475B2:
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,0000000023040B9C
	c.bnez	a0,00000000230475AE

l230475BC:
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.mv	s0,s5

l230475C4:
	c.mv	a1,s1
	c.mv	a0,s0
	lw	s5,s0,+00000004
	jal	ra,0000000023040828
	c.bnez	a0,000000002304767C

l230475D2:
	lw	a5,s6,+00000014
	c.lw	s0,4(s1)
	srli	a4,a5,00000008
	sb	a5,s1,+0000000C
	sb	a4,s1,+0000000D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s1,+0000000E
	sb	a5,s1,+0000000F
	lw	a5,s6,+00000010
	srli	a4,a5,00000008
	sb	a5,s1,+00000010
	sb	a4,s1,+00000011
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s1,+00000012
	sb	a5,s1,+00000013
	lbu	a5,s5,+00000003
	lbu	a4,s5,+00000002
	sb	zero,s5,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00010000
	c.addi	a4,FFFFFFF7
	bgeu	a4,a5,00000000230476A2

l23047628:
	c.addi	a5,00000009

l2304762A:
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s5,+00000002
	c.srli	a5,00000008
	sb	a5,s5,+00000003
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000008
	c.mv	a1,s3
	sb	zero,s1,+0000000A
	sb	zero,s1,+0000000B
	c.mv	a0,s1
	jal	ra,000000002303CEB6
	sb	a0,s1,+0000000A
	c.srli	a0,00000008
	sb	a0,s1,+0000000B
	lhu	a5,s2,+00000048
	lui	a1,00042020
	c.mv	a6,s4
	c.addi	a5,00000001
	sh	a5,s2,+00000048
	c.li	a4,00000000
	c.li	a5,00000001
	addi	a3,zero,+000000FF
	c.li	a2,00000000
	addi	a1,a1,-0000012C
	c.mv	a0,s0
	jal	ra,000000002303FA36

l2304767C:
	c.mv	a0,s0
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
	jal	zero,0000000023040890

l23047696:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,000000002304082E
	c.beqz	a0,00000000230475C4

l230476A0:
	c.j	0000000023047588

l230476A2:
	c.addi	a5,00000008
	c.j	000000002304762A

l230476A6:
	lhu	a5,s3,+00000058
	c.addi	a5,00000001
	sh	a5,s3,+00000058
	lhu	a5,s3,+0000004E
	c.addi	a5,00000001
	sh	a5,s3,+0000004E
	c.j	000000002304767C

l230476BC:
	c.mv	a0,s0
	jal	ra,0000000023040890
	lhu	a5,s2,+00000052
	c.addi	a5,00000001
	sh	a5,s2,+00000052
	c.j	0000000023047526

;; icmp_dest_unreach: 230476CE
;;   Called from:
;;     2303F75C (in ip4_input)
;;     2304560A (in udp_input)
icmp_dest_unreach proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.mv	s3,a0
	c.mv	s4,a1
	addi	a2,zero,+00000280
	addi	a1,zero,+00000024
	addi	a0,zero,+000000A2
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	jal	ra,0000000023040912
	c.beqz	a0,0000000023047792

l230476F2:
	c.lw	a0,4(s0)
	c.li	a5,00000003
	lw	s2,s3,+00000004
	sb	a5,s0,+00000000
	sb	s4,s0,+00000001
	sb	zero,s0,+00000004
	sb	zero,s0,+00000005
	sb	zero,s0,+00000006
	sb	zero,s0,+00000007
	c.mv	s1,a0
	c.lw	a0,4(a0)
	lw	a1,s3,+00000004
	c.li	a2,0000001C
	c.addi	a0,00000008
	jal	ra,0000000023070C7C
	lbu	a4,s2,+0000000D
	lbu	a5,s2,+0000000C
	c.addi4spn	a0,0000001C
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s2,+0000000E
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s2,+0000000F
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,0000008C
	jal	ra,000000002303F434
	c.swsp	a0,00000084
	c.beqz	a0,000000002304778C

l2304774A:
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	lhu	a1,s1,+0000000A
	c.mv	a0,s0
	jal	ra,000000002303CEB6
	sb	a0,s0,+00000002
	lui	a5,00042020
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000048
	c.lwsp	a2,00000008
	addi	a3,zero,+000000FF
	c.addi	a4,00000001
	sh	a4,a5,+00000048
	c.addi4spn	a2,0000001C
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303FA36

l2304778C:
	c.mv	a0,s1
	jal	ra,0000000023040890

l23047792:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; dhcp_server_option_find: 230477A2
;;   Called from:
;;     230478C4 (in dhcp_server_recv)
;;     230478E8 (in dhcp_server_recv)
;;     23047AAE (in dhcp_server_recv)
dhcp_server_option_find proc
	c.add	a1,a0
	addi	a4,zero,+000000FF

l230477A8:
	bgeu	a0,a1,00000000230477B4

l230477AC:
	lbu	a5,a0,+00000000
	bne	a5,a4,00000000230477B8

l230477B4:
	c.li	a0,00000000

l230477B6:
	c.jr	ra

l230477B8:
	beq	a5,a2,00000000230477B6

l230477BC:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	00000000230477A8

;; dhcp_client_find_by_ip.isra.0: 230477C6
;;   Called from:
;;     230478F8 (in dhcp_server_recv)
;;     23047908 (in dhcp_server_recv)
;;     23047ABC (in dhcp_server_recv)
dhcp_client_find_by_ip.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	c.lw	s0,0(a0)

l230477DA:
	c.bnez	a0,00000000230477E4

l230477DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230477E4:
	c.lw	a0,12(a4)
	beq	a5,a4,00000000230477DC

l230477EA:
	c.lw	a0,0(a0)
	c.j	00000000230477DA

;; dhcp_server_recv: 230477EE
dhcp_server_recv proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.lw	a3,0(a5)
	c.mv	s6,a4
	lhu	a4,a2,+0000000A
	c.swsp	a5,00000004
	addi	a5,zero,+0000002B
	c.mv	s0,a2
	bltu	a5,a4,000000002304783A

l2304781A:
	c.mv	a0,s0

l2304781C:
	jal	ra,0000000023040890
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

l2304783A:
	c.mv	s1,a0
	c.mv	s5,a1
	addi	a2,zero,+00000280
	addi	a1,zero,+000005DC
	addi	a0,zero,+000000B6
	jal	ra,0000000023040912
	c.mv	s2,a0
	c.beqz	a0,000000002304781A

l23047852:
	lhu	a4,a0,+00000008
	lhu	a5,s0,+00000008
	bltu	a4,a5,000000002304781A

l2304785E:
	c.mv	a1,s0
	jal	ra,0000000023040B9C
	c.mv	a0,s0
	jal	ra,0000000023040890
	lw	s0,s2,+00000004
	c.li	a5,00000001
	lbu	s3,s0,+00000000
	bne	s3,a5,0000000023047A90

l23047878:
	lbu	a4,s0,+000000ED
	lbu	a5,s0,+000000EC
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s0,+000000EE
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s0,+000000EF
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,00063538
	addi	a4,a4,+00000263
	bne	a5,a4,0000000023047A90

l230478A0:
	lbu	s8,s0,+00000002
	c.li	a5,00000006
	bltu	a5,s8,0000000023047A90

l230478AA:
	lhu	s4,s2,+00000008
	addi	s7,s0,+000000F0
	addi	a2,zero,+00000035
	addi	s4,s4,-000000F0
	c.slli	s4,10
	srli	s4,s4,00000010
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,00000000230477A2
	beq	a0,zero,0000000023047A90

l230478CC:
	lbu	a5,a0,+00000002
	bne	a5,s3,0000000023047A94

l230478D4:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l230478DC:
	bne	s3,zero,0000000023047934

l230478E0:
	c.mv	a1,s4
	addi	a2,zero,+00000032
	c.mv	a0,s7
	jal	ra,00000000230477A2
	addi	s4,s1,+0000000C
	c.beqz	a0,0000000023047900

l230478F2:
	addi	a1,a0,+00000002
	c.mv	a0,s4
	jal	ra,00000000230477C6
	c.mv	s3,a0
	c.bnez	a0,0000000023047970

l23047900:
	addi	s7,s1,+00000018

l23047904:
	c.mv	a1,s7
	c.mv	a0,s4
	jal	ra,00000000230477C6
	c.beqz	a0,0000000023047948

l2304790E:
	c.lw	s1,24(a0)
	jal	ra,000000002303C340
	addi	s3,a0,+00000001
	c.lw	s1,20(a0)
	jal	ra,000000002303C340
	bgeu	a0,s3,000000002304792A

l23047922:
	c.lw	s1,16(a0)
	jal	ra,000000002303C340
	c.mv	s3,a0

l2304792A:
	c.mv	a0,s3
	jal	ra,000000002303C340
	c.sw	s1,24(a0)
	c.j	0000000023047904

l23047934:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023047970

l23047942:
	lw	s3,s3,+00000000
	c.j	00000000230478DC

l23047948:
	c.li	a0,00000014
	jal	ra,000000002303FFF8
	c.mv	s3,a0
	beq	a0,zero,0000000023047A90

l23047954:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,0000000023070C7C
	c.lw	s1,24(a5)
	sw	a5,s3,+0000000C
	c.lw	s1,12(a5)
	sw	a5,s3,+00000000
	sw	s3,s1,+0000000C

l23047970:
	lui	a5,00080510
	addi	a5,a5,+00000100
	sw	a5,s3,+00000010
	c.li	s7,00000002
	sb	s7,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	sb	a4,s0,+000000EE
	c.li	a2,00000004
	addi	a1,s3,+0000000C
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C
	addi	a5,zero,+00000035
	c.li	s4,00000001
	sb	a5,s0,+000000F0
	sb	s4,s0,+000000F1
	sb	s7,s0,+000000F2

l230479E0:
	c.li	s3,00000004
	addi	a5,zero,+00000036
	sb	a5,s0,+000000F3
	sb	s3,s0,+000000F4
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+000000F5
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	addi	a5,zero,+00000033
	sb	a5,s0,+000000F9
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	sb	s3,s0,+000000FA
	addi	a0,s0,+000000FB
	c.swsp	a5,00000084
	jal	ra,0000000023070C7C
	sb	s4,s0,+000000FF
	sb	s3,s0,+00000100
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000101
	c.addi	a1,00000008
	jal	ra,0000000023070C7C
	c.li	a5,00000006
	sb	a5,s0,+00000105
	sb	s3,s0,+00000106
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000107
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	c.li	a5,00000003
	sb	a5,s0,+0000010B
	sb	s3,s0,+0000010C
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+0000010D
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000111
	lhu	a4,s2,+00000008
	addi	a5,zero,+00000112
	bgeu	a5,a4,0000000023047A7E

l23047A74:
	addi	a1,zero,+00000112

l23047A78:
	c.mv	a0,s2
	jal	ra,0000000023040A70

l23047A7E:
	c.lw	s1,4(a4)
	c.li	a5,FFFFFFFF
	c.mv	a3,s6
	c.addi4spn	a2,00000008
	c.mv	a1,s2
	c.mv	a0,s5
	c.swsp	a5,00000004
	jal	ra,000000002304598E

l23047A90:
	c.mv	a0,s2
	c.j	000000002304781C

l23047A94:
	c.li	a4,00000003
	bne	a5,a4,0000000023047B8C

l23047A9A:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l23047AA2:
	bne	s3,zero,0000000023047B78

l23047AA6:
	addi	a2,zero,+00000032
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,00000000230477A2
	c.beqz	a0,0000000023047AE0

l23047AB4:
	addi	a1,a0,+00000002
	addi	a0,s1,+0000000C
	jal	ra,00000000230477C6
	c.mv	s3,a0
	c.beqz	a0,0000000023047AE0

l23047AC4:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,0000000023070BF4
	beq	a0,zero,0000000023047BD2

l23047AD4:
	lui	a0,00023086
	addi	a0,a0,+0000050C
	jal	ra,00000000230520DC

l23047AE0:
	c.li	a5,00000002
	sb	a5,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a4,s0,+000000EE
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	c.li	a2,00000004
	c.li	a1,00000000
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	addi	a0,s0,+00000010
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000035
	sb	a5,s0,+000000F0
	c.li	a5,00000001
	sb	a5,s0,+000000F1
	c.li	a5,00000006
	sb	a5,s0,+000000F2
	addi	a5,zero,+00000036
	sb	a5,s0,+000000F3
	c.li	a5,00000004
	sb	a5,s0,+000000F4
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+000000F5
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+000000F9
	lhu	a4,s2,+00000008
	addi	a5,zero,+000000FA
	bgeu	a5,a4,0000000023047A7E

l23047B72:
	addi	a1,zero,+000000FA
	c.j	0000000023047A78

l23047B78:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023047BD2

l23047B86:
	lw	s3,s3,+00000000
	c.j	0000000023047AA2

l23047B8C:
	c.li	a4,00000007
	bne	a5,a4,0000000023047A90

l23047B92:
	lw	s3,s1,+0000000C
	c.li	s4,00000000
	addi	s5,s0,+0000001C

l23047B9C:
	beq	s3,zero,0000000023047A90

l23047BA0:
	lbu	a2,s0,+00000002
	c.mv	a1,s5
	addi	a0,s3,+00000004
	jal	ra,0000000023070BF4
	lw	a5,s3,+00000000
	c.bnez	a0,0000000023047BCA

l23047BB4:
	c.lw	s1,12(a4)
	bne	a4,s3,0000000023047BC4

l23047BBA:
	c.sw	s1,12(a5)

l23047BBC:
	c.mv	a0,s3
	jal	ra,000000002303FD02
	c.j	0000000023047A90

l23047BC4:
	sw	a5,s4,+00000000
	c.j	0000000023047BBC

l23047BCA:
	c.mv	s4,s3
	lw	s3,a5,+00000000
	c.j	0000000023047B9C

l23047BD2:
	lui	a5,00080510
	addi	a5,a5,+00000100
	sw	a5,s3,+00000010
	c.li	a5,00000002
	sb	a5,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,0000000023070C7C
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	sb	a4,s0,+000000EE
	c.li	a2,00000004
	addi	a1,s3,+0000000C
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C
	addi	a5,zero,+00000035
	sb	a5,s0,+000000F0
	c.li	s4,00000001
	c.li	a5,00000005
	sb	s4,s0,+000000F1
	sb	a5,s0,+000000F2
	c.j	00000000230479E0

;; dhcp_server_start: 23047C46
;;   Called from:
;;     23047E2A (in dhcpd_start)
dhcp_server_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	lw	a5,s2,-00000048
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s2,s2,-00000048

l23047C60:
	c.bnez	a5,0000000023047C84

l23047C62:
	c.mv	s4,a0
	c.li	a0,0000001C
	c.mv	s3,a2
	c.mv	s1,a1
	jal	ra,000000002303FFF8
	c.mv	s0,a0
	c.bnez	a0,0000000023047C9E

l23047C72:
	c.li	a0,FFFFFFFF

l23047C74:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23047C84:
	c.lw	a5,4(a4)
	bne	a4,a0,0000000023047C9A

l23047C8A:
	c.lw	a1,0(a4)
	c.sw	a5,16(a4)
	c.lw	a2,0(a4)
	c.sw	a5,20(a4)
	c.lw	a1,0(a4)
	c.sw	a5,24(a4)

l23047C96:
	c.li	a0,00000000
	c.j	0000000023047C74

l23047C9A:
	c.lw	a5,0(a5)
	c.j	0000000023047C60

l23047C9E:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	lw	a5,s2,+00000000
	sw	s4,s0,+00000004
	sw	zero,s0,+0000000C
	c.sw	s0,0(a5)
	c.lw	s1,0(a5)
	sw	s0,s2,+00000000
	c.sw	s0,16(a5)
	lw	a5,s3,+00000000
	c.sw	s0,20(a5)
	c.lw	s1,0(a5)
	c.sw	s0,24(a5)
	jal	ra,0000000023045A72
	c.sw	s0,8(a0)
	c.beqz	a0,0000000023047C72

l23047CCE:
	lbu	a5,a0,+00000009
	lui	a1,0002308E
	addi	a2,zero,+00000043
	ori	a5,a5,+00000020
	sb	a5,a0,+00000009
	c.lw	s0,8(a0)
	addi	a1,a1,-00000174
	jal	ra,000000002304561A
	c.lw	s0,8(a0)
	lui	a1,00023047
	c.mv	a2,s0
	addi	a1,a1,+000007EE
	jal	ra,0000000023045A3A
	c.j	0000000023047C96

;; dhcp_server_stop: 23047CFE
dhcp_server_stop proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	lw	s0,a5,-00000048
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,a5,-00000048

l23047D12:
	c.bnez	s0,0000000023047D24

l23047D14:
	lui	a0,00023086
	addi	a0,a0,+00000538
	jal	ra,0000000023052118
	c.li	a0,FFFFFFFA
	c.j	0000000023047D42

l23047D24:
	c.lw	s0,4(a5)
	beq	a5,a0,0000000023047D2E

l23047D2A:
	c.lw	s0,0(s0)
	c.j	0000000023047D12

l23047D2E:
	c.lw	s0,8(a0)
	c.beqz	a0,0000000023047D36

l23047D32:
	jal	ra,0000000023045A42

l23047D36:
	c.mv	a0,s0
	sw	zero,s1,+00000000
	jal	ra,000000002303FD02
	c.li	a0,00000000

l23047D42:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcpd_start: 23047D4C
dhcpd_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a0
	c.swsp	s3,00000094
	jal	ra,000000002303E588
	lui	s0,00023086
	lui	a3,00023086
	lui	a2,0002307C
	addi	a3,a3,+00000574
	addi	a2,a2,+000004CC
	addi	a1,s0,+00000584
	c.mv	a0,s1
	jal	ra,0000000023055DD2
	c.mv	a0,s1
	jal	ra,0000000023040526
	addi	a1,s0,+00000584
	c.li	a2,0000000E
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
	addi	a1,zero,+0000002E
	c.addi4spn	a0,0000000C
	sh	zero,sp,+0000001A
	sh	zero,sp,+0000001C
	sh	zero,sp,+0000001E
	jal	ra,0000000023070F94
	c.bnez	a0,0000000023047DC2

l23047DA6:
	lui	a0,00023086
	c.addi4spn	a1,0000000C
	addi	a0,a0,+00000594

l23047DB0:
	jal	ra,0000000023052118

l23047DB4:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23047DC2:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,0000000023070F94
	c.beqz	a0,0000000023047DA6

l23047DCE:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,0000000023070F94
	c.beqz	a0,0000000023047DA6

l23047DDA:
	addi	s0,a0,+00000001
	lui	s3,0002308A
	c.li	a2,00000002
	addi	a1,s3,-00000648
	c.mv	a0,s0
	jal	ra,0000000023052148
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002303FA94
	lui	s2,00023086
	c.addi4spn	a1,0000000C
	addi	a0,s2,+000005B8
	jal	ra,0000000023052118
	addi	a2,zero,+000000FE
	addi	a1,s3,-00000648
	c.mv	a0,s0
	jal	ra,0000000023052148
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,000000002303FA94
	c.addi4spn	a1,0000000C
	addi	a0,s2,+000005B8
	jal	ra,0000000023052118
	c.addi4spn	a1,00000004
	c.addi4spn	a2,00000008
	c.mv	a0,s1
	jal	ra,0000000023047C46
	c.mv	a1,a0
	c.beqz	a0,0000000023047DB4

l23047E32:
	lui	a0,00023086
	addi	a0,a0,+000005D0
	c.j	0000000023047DB0

;; tcpc_entry: 23047E3C
tcpc_entry proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	lui	s3,0004200E
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	addi	s4,s3,-00000040
	lw	s0,s4,+00000000
	c.mv	a2,a0
	c.mv	s5,a0
	lui	a0,00023086
	addi	a5,s0,+00000001
	c.mv	a3,s0
	c.mv	a1,s0
	addi	a0,a0,+0000061C
	sw	a5,s4,+00000000
	jal	ra,0000000023052118
	addi	a0,zero,+00000400
	jal	ra,000000002303218A
	c.bnez	a0,0000000023047EB4

l23047E84:
	lw	a2,s4,+00000000
	lui	a0,00023086
	c.mv	a1,s0
	addi	a0,a0,+00000650
	jal	ra,0000000023052118

l23047E96:
	c.mv	a0,s5
	jal	ra,0000000023032272
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

l23047EB4:
	c.mv	s1,a0
	c.li	a2,00000006
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s2,a0
	bge	a0,zero,0000000023047EE2

l23047EC6:
	lw	a2,s4,+00000000
	c.mv	a3,a0
	lui	a0,00023086
	c.mv	a1,s0
	addi	a0,a0,+00000684
	jal	ra,0000000023052118

l23047EDA:
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.j	0000000023047E96

l23047EE2:
	c.lui	a0,00002000
	c.li	a5,00000002
	addi	a0,a0,-000004A8
	sb	a5,sp,+00000011
	jal	ra,000000002303C332
	sh	a0,sp,+00000012
	c.mv	a0,s5
	jal	ra,000000002303FBF2
	c.swsp	a0,00000088
	c.li	a2,00000010
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,000000002303B3F6
	bge	a0,zero,0000000023047F26

l23047F0C:
	lw	a2,s4,+00000000
	lui	a0,00023086
	c.mv	a1,s0
	addi	a0,a0,+000006C8
	jal	ra,0000000023052118

l23047F1E:
	c.mv	a0,s2
	jal	ra,000000002303B34E
	c.j	0000000023047EDA

l23047F26:
	addi	s3,s3,-00000040
	lw	a2,s3,+00000000
	lui	a0,00023086
	c.mv	a1,s0
	addi	a0,a0,+000006F4
	jal	ra,0000000023052118
	c.li	a5,00000001
	c.addi4spn	a3,0000000C
	c.li	a4,00000004
	c.li	a2,00000001
	c.li	a1,00000006
	c.mv	a0,s2
	c.swsp	a5,00000084
	jal	ra,000000002303BAF4
	addi	a2,zero,+00000400
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	c.li	a3,00000000
	lui	s7,00023086
	lui	s8,00023086
	lui	s6,00023086

l23047F68:
	addi	a2,s7,+00000734
	addi	a1,zero,+00000400
	c.mv	a0,s1
	addi	s4,a3,+00000001
	jal	ra,000000002305216A
	addi	a2,zero,+00000400
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002303B7DE
	c.mv	a3,a0
	bge	a0,zero,0000000023047FA0

l23047F8C:
	lw	a2,s3,+00000000
	lui	a0,00023086
	c.mv	a1,s0
	addi	a0,a0,+00000740

l23047F9A:
	jal	ra,0000000023052118
	c.j	0000000023047F1E

l23047FA0:
	lw	a2,s3,+00000000
	c.mv	a4,s1
	c.mv	a1,s0
	addi	a0,s8,+00000774
	jal	ra,0000000023052118
	addi	a2,zero,+00000400
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002303B596
	c.mv	a3,a0
	bge	a0,zero,0000000023047FD2

l23047FC2:
	lui	a0,00023086
	lw	a2,s3,+00000000
	c.mv	a1,s0
	addi	a0,a0,+000007B0
	c.j	0000000023047F9A

l23047FD2:
	lw	a2,s3,+00000000
	c.mv	a4,s1
	c.mv	a1,s0
	addi	a0,s6,+000007E4
	jal	ra,0000000023052118
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.mv	a3,s4
	c.j	0000000023047F68

;; tcpclient_cmd: 23047FEE
tcpclient_cmd proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.li	a5,00000002
	beq	a2,a5,0000000023048012

l23047FFC:
	lui	a0,00023087
	addi	a0,a0,-000007E0
	jal	ra,0000000023052118

l23048008:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23048012:
	c.lw	a3,4(a0)
	c.mv	s1,a3
	jal	ra,000000002307132C
	c.addi	a0,00000004
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.bnez	a0,0000000023048030

l23048024:
	lui	a0,00023087
	addi	a0,a0,-000007A8
	jal	ra,0000000023052118

l23048030:
	c.lw	s1,4(a1)
	c.mv	a0,s0
	jal	ra,000000002307127C
	lui	a5,0004200E
	addi	a5,a5,-00000044
	lbu	a3,a5,+00000000
	lui	a2,00023087
	addi	a2,a2,-00000780
	addi	a4,a3,+00000001
	addi	a1,zero,+00000020
	c.mv	a0,sp
	sb	a4,a5,+00000000
	jal	ra,000000002305216A
	c.lui	a3,00001000
	lui	a1,00023048
	addi	a3,a3,-00000800
	c.mv	a2,s0
	addi	a1,a1,-000001C4
	c.mv	a0,sp
	jal	ra,000000002304D1C0
	c.j	0000000023048008

;; network_netutils_tcpclinet_cli_register: 23048076
;;   Called from:
;;     23000842 (in aos_loop_proc)
network_netutils_tcpclinet_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; TCP_Server: 2304807A
TCP_Server proc
	c.addi16sp	FFFFFF20
	c.swsp	s0,0000006C
	c.lui	s0,00003000
	c.li	a5,00000001
	c.swsp	s5,000000E0
	c.mv	s5,a0
	addi	a0,s0,-00000800
	c.swsp	ra,000000EC
	c.swsp	a5,00000088
	c.swsp	s3,000000E4
	c.swsp	s4,00000064
	c.swsp	s1,000000E8
	c.swsp	s2,00000068
	c.swsp	s6,00000060
	c.swsp	s7,000000DC
	c.swsp	s8,0000005C
	c.swsp	s9,000000D8
	c.swsp	s10,00000058
	c.swsp	s11,000000D4
	jal	ra,000000002303218A
	addi	a2,s0,-00000800
	c.li	a1,00000000
	c.mv	s4,a0
	jal	ra,0000000023070EB8
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000008C
	jal	ra,0000000023070EB8
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,00000064
	jal	ra,0000000023070EB8
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,00000078
	jal	ra,0000000023070EB8
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	jal	ra,0000000023070EB8
	c.li	a2,00000006
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	srli	s3,a0,0000001F
	bge	a0,zero,0000000023048158

l230480EC:
	lui	a0,00023087
	addi	a0,a0,-00000778
	jal	ra,0000000023052118
	c.mv	a0,s4
	jal	ra,0000000023032272
	c.li	a0,00000000
	jal	ra,0000000023030064

l23048104:
	c.lui	s0,00001000
	c.li	a4,00000004
	c.addi4spn	a3,00000014
	c.li	a2,00000004
	addi	a1,s0,-00000001
	c.mv	a0,s3
	jal	ra,000000002303BAF4
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023048168

l2304811C:
	lui	a0,00023087
	addi	a0,a0,-00000754

l23048124:
	jal	ra,0000000023052118
	c.mv	a0,s4
	jal	ra,0000000023032272
	c.mv	a0,s3
	jal	ra,000000002303B34E
	c.li	a0,00000000
	jal	ra,0000000023030064
	c.lwsp	t6,00000020
	c.lwsp	s11,00000004
	c.lwsp	s7,00000024
	c.lwsp	s3,00000048
	c.lwsp	a5,00000068
	c.lwsp	a1,00000088
	c.lwsp	t2,000000A8
	c.lwsp	gp,000000C8
	c.lwsp	t5,000001F8
	c.lwsp	s10,0000011C
	c.lwsp	s6,0000013C
	c.lwsp	s2,0000015C
	c.lwsp	a4,0000017C
	c.addi16sp	000000E0
	c.jr	ra

l23048158:
	lui	a0,00023087
	c.li	a1,00000000
	addi	a0,a0,-00000760
	jal	ra,0000000023052118
	c.j	0000000023048104

l23048168:
	c.li	a5,00000002
	addi	a0,s0,+0000041E
	sb	a5,sp,+00000031
	jal	ra,000000002303C332
	sh	a0,sp,+00000032
	c.li	a0,00000000
	jal	ra,000000002303C340
	c.swsp	a0,00000098
	c.li	a2,00000010
	c.addi4spn	a1,00000030
	c.mv	a0,s3
	jal	ra,000000002303B2E8
	bge	a0,zero,000000002304819A

l23048190:
	lui	a0,00023087
	addi	a0,a0,-00000740
	c.j	0000000023048124

l2304819A:
	c.li	a1,00000005
	c.mv	a0,s3
	jal	ra,000000002303B466
	bge	a0,zero,00000000230481B0

l230481A6:
	lui	a0,00023087
	addi	a0,a0,-00000730
	c.j	0000000023048124

l230481B0:
	lui	a0,00023087
	addi	a0,a0,-00000720
	jal	ra,0000000023052118
	lui	a0,00023087
	addi	a0,a0,-000006F4
	jal	ra,0000000023052118
	c.li	a5,00000010
	c.swsp	a5,00000008
	jal	ra,00000000230302E8
	c.mv	s2,a0
	c.li	s0,00000000
	c.li	s1,00000014

l230481D6:
	c.addi4spn	a5,00000078
	c.add	a5,s0
	sw	s2,a5,+00000000
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	c.addi4spn	a5,00000050
	c.add	a5,s0
	c.sw	a5,0(a0)
	c.addi	s0,00000004
	bne	s0,s1,00000000230481D6

l230481F0:
	c.li	a5,00000001
	sll	a5,a5,s3
	c.swsp	a5,00000080
	c.mv	s8,s3
	c.li	s1,00000000

l230481FC:
	c.li	s6,00000001
	c.li	s7,00000000
	c.li	s0,00000001

l23048202:
	c.li	a5,00000000
	c.li	a4,00000008

l23048206:
	c.addi4spn	a3,00000018
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023048206

l23048214:
	c.lwsp	s8,000000E4
	c.lwsp	tp,000000C4
	c.swsp	s6,00000010
	c.swsp	s7,00000090
	c.or	a5,a4
	c.swsp	a5,0000000C
	c.swsp	zero,00000014
	c.li	s10,00000000
	addi	s9,zero,+000003E7
	c.li	s2,00000014

l2304822A:
	c.addi4spn	a5,0000008C
	add	s11,a5,s10
	lw	a5,s11,+00000000
	c.beqz	a5,00000000230482C0

l23048236:
	srli	a4,a5,00000005
	c.addi4spn	a3,000000A0
	c.slli	a4,02
	c.add	a4,a3
	lw	a3,a4,-00000088
	sll	a5,s0,a5
	c.or	a5,a3
	sw	a5,a4,+00000F78
	jal	ra,00000000230302E8
	c.addi4spn	a5,00000078
	add	a4,a5,s10
	c.lw	a4,0(a5)
	c.addi4spn	a3,00000064
	c.add	a3,s10
	sub	a5,a0,a5
	c.sw	a3,0(a5)
	bgeu	s9,a5,00000000230482C0

l23048268:
	c.addi4spn	a5,00000050
	c.sw	a4,0(a0)
	add	a4,a5,s10
	c.lw	a4,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)
	blt	zero,a5,00000000230482C0

l2304827A:
	lw	a0,s11,+00000000
	c.swsp	a4,00000004
	c.addi	s1,FFFFFFFF
	jal	ra,000000002303B34E
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	lw	a5,s11,+00000000
	c.lwsp	s0,000000C4
	c.addi4spn	a3,000000A0
	sw	zero,s11,+00000000
	c.sw	a4,0(a0)
	srli	a4,a5,00000005
	c.slli	a4,02
	c.add	a4,a3
	lw	a3,a4,-00000088
	sll	a5,s0,a5
	xori	a5,a5,-00000001
	c.and	a5,a3
	sw	a5,a4,+00000F78
	lui	a5,00023087
	addi	a0,a5,-000006D8
	jal	ra,0000000023052118

l230482C0:
	c.addi	s10,00000004
	bne	s10,s2,000000002304822A

l230482C6:
	c.addi4spn	a4,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000018
	addi	a0,s8,+00000001
	jal	ra,000000002303B7E4
	bge	a0,zero,00000000230482E4

l230482DA:
	lui	a0,00023087
	addi	a0,a0,-000006B8
	c.j	0000000023048124

l230482E4:
	c.beqz	a0,0000000023048202

l230482E6:
	addi	s9,sp,+0000008C
	c.lui	s7,00003000
	c.mv	s0,s9
	c.li	s6,00000000
	addi	s7,s7,-00000800

l230482F4:
	c.lw	s0,0(a5)
	beq	a5,s3,000000002304837E

l230482FA:
	srli	a4,a5,00000005
	c.slli	a4,02
	c.addi4spn	a3,000000A0
	c.add	a4,a3
	lw	a4,a4,-00000088
	c.li	s2,00000001
	sll	a5,s2,a5
	c.and	a5,a4
	c.beqz	a5,000000002304837E

l23048312:
	jal	ra,00000000230302E8
	c.swsp	a0,00000084
	c.mv	a2,s7
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023070EB8
	c.lw	s0,0(a0)
	c.li	a3,00000000
	c.mv	a2,s7
	c.mv	a1,s4
	jal	ra,000000002303B5A0
	c.mv	s11,a0
	slli	s10,s6,00000002
	blt	zero,a0,00000000230483B0

l23048338:
	lui	a5,00023087
	c.mv	a1,a0
	addi	a0,a5,-000006A8
	jal	ra,0000000023052118
	c.lw	s0,0(a0)
	jal	ra,000000002303B34E
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	c.addi4spn	a5,00000050
	c.add	a5,s10
	c.sw	a5,0(a0)
	c.lw	s0,0(a5)
	c.addi4spn	a3,000000A0
	srli	a4,a5,00000005
	c.slli	a4,02
	c.add	a4,a3
	sll	s2,s2,a5
	lw	a5,a4,-00000088
	xori	s2,s2,-00000001
	and	s2,s2,a5
	sw	s2,a4,+00000F78

l23048378:
	sw	zero,s0,+00000000
	c.addi	s1,FFFFFFFF

l2304837E:
	c.addi	s6,00000001
	c.li	a5,00000005
	c.addi	s0,00000004
	bne	s6,a5,00000000230482F4

l23048388:
	c.lwsp	s8,000000E4
	c.lwsp	tp,000000C4
	c.and	a5,a4
	beq	a5,zero,00000000230481FC

l23048392:
	c.addi4spn	a2,00000010
	c.addi4spn	a1,00000040
	c.mv	a0,s3
	jal	ra,000000002303B1AE
	c.mv	s2,a0
	blt	zero,a0,0000000023048450

l230483A2:
	lui	a0,00023087
	addi	a0,a0,-00000630
	jal	ra,0000000023052118
	c.j	00000000230481FC

l230483B0:
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	c.addi4spn	a5,00000050
	c.lwsp	a2,000000C4
	c.add	a5,s10
	c.sw	a5,0(a0)
	c.swsp	a5,00000004
	c.addi4spn	a5,00000078
	c.add	a5,s10
	c.sw	a5,0(a4)
	lui	a5,00023087
	c.mv	a2,s6
	c.mv	a1,s11
	addi	a0,a5,-00000694
	jal	ra,0000000023052118
	lui	a5,00023086
	c.mv	a1,s4
	addi	a0,a5,+000007A8
	jal	ra,0000000023052118
	c.lw	s0,0(a0)
	c.mv	a1,s4
	c.li	a3,00000000
	c.mv	a2,s11
	jal	ra,000000002303B6C8
	c.mv	a1,a0
	blt	zero,a0,0000000023048434

l230483F6:
	lui	a5,0002307E
	addi	a0,a5,-0000061C
	jal	ra,0000000023052118
	c.lw	s0,0(a0)
	jal	ra,000000002303B34E
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	c.lw	s0,0(a4)
	c.lwsp	s0,000000E4
	c.addi4spn	a3,000000A0
	sll	s2,s2,a4
	c.sw	a5,0(a0)
	srli	a5,a4,00000005
	c.slli	a5,02
	c.add	a5,a3
	lw	a4,a5,-00000088
	xori	s2,s2,-00000001
	and	s2,s2,a4
	sw	s2,a5,+00000F78
	c.j	0000000023048378

l23048434:
	lui	a5,00023087
	c.mv	a2,s6
	addi	a0,a5,-00000660
	jal	ra,0000000023052118
	lui	a5,00023072
	addi	a0,a5,+000007FC
	jal	ra,0000000023052118
	c.j	000000002304837E

l23048450:
	c.mv	a1,a0
	lui	a0,00023087
	addi	a0,a0,-00000620
	jal	ra,0000000023052118
	c.addi4spn	a0,00000044
	jal	ra,000000002303FCA6
	c.swsp	a0,00000004
	lhu	a0,sp,+00000042
	jal	ra,000000002303C332
	c.lwsp	s0,00000064
	c.mv	a2,a0
	lui	a0,00023087
	addi	a0,a0,-00000610
	jal	ra,0000000023052118
	lui	a0,00023087
	addi	a0,a0,-000005E0
	jal	ra,0000000023052118
	c.li	a5,00000004
	blt	a5,s1,00000000230484D8

l23048490:
	c.li	s0,00000000
	c.li	a5,00000005

l23048494:
	lw	a4,s9,+00000000
	c.bnez	a4,00000000230484CE

l2304849A:
	jal	ra,00000000230302E8
	c.addi4spn	a5,000000A0
	c.slli	s0,02
	c.add	s0,a5
	sw	a0,s0,+00000FD8
	c.mv	a0,s5
	jal	ra,0000000023070AF0
	sw	a0,s0,+00000FB0
	sw	s2,s0,+00000FEC
	bge	s8,s2,00000000230484BC

l230484BA:
	c.mv	s8,s2

l230484BC:
	c.addi	s1,00000001
	lui	a0,00023087
	c.mv	a1,s1
	addi	a0,a0,-000005BC
	jal	ra,0000000023052118
	c.j	00000000230481FC

l230484CE:
	c.addi	s0,00000001
	c.addi	s9,00000004
	bne	s0,a5,0000000023048494

l230484D6:
	c.j	00000000230481FC

l230484D8:
	lui	a0,00023087
	addi	a0,a0,-000005B0
	jal	ra,0000000023052118
	lui	a1,00023087
	c.li	a3,00000000
	c.li	a2,00000004
	addi	a1,a1,-00000594
	c.mv	a0,s2
	jal	ra,000000002303B6C8
	c.mv	a0,s2
	jal	ra,000000002303B34E
	c.j	00000000230481FC

;; cmd_tcp_server: 230484FE
cmd_tcp_server proc
	c.li	a5,00000002
	beq	a2,a5,0000000023048510

l23048504:
	lui	a0,00023087
	addi	a0,a0,-00000590
	jal	zero,0000000023052118

l23048510:
	c.lw	a3,4(a3)
	lui	a1,00023087
	lui	a0,00023048
	c.li	a5,00000000
	c.li	a4,00000014
	addi	a2,zero,+00000400
	addi	a1,a1,-00000574
	addi	a0,a0,+0000007A
	jal	zero,000000002302FFE8

;; network_netutils_tcpserver_cli_register: 2304852E
;;   Called from:
;;     2300083E (in aos_loop_proc)
network_netutils_tcpserver_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; iperf_server_udp_entry: 23048532
;;   Called from:
;;     23049092 (in ipus_test_cmd)
iperf_server_udp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002307132C
	c.addi	a0,00000001
	jal	ra,000000002303218A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,000000002307127C
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023048
	lui	a0,00023087
	c.lui	a3,00001000
	addi	a1,a1,+00000602
	addi	a0,a0,-00000350
	c.addi16sp	00000020
	jal	zero,000000002304D1C0

;; iperf_client_udp_entry: 23048566
;;   Called from:
;;     230490CE (in ipu_test_cmd)
iperf_client_udp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002307132C
	c.addi	a0,00000004
	jal	ra,000000002303218A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,000000002307127C
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023049
	lui	a0,00023087
	c.lui	a3,00001000
	addi	a1,a1,-00000698
	addi	a0,a0,-00000428
	c.addi16sp	00000020
	jal	zero,000000002304D1C0

;; iperf_server_entry: 2304859A
;;   Called from:
;;     23049146 (in ips_test_cmd)
iperf_server_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002307132C
	c.addi	a0,00000004
	jal	ra,000000002303218A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,000000002307127C
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023049
	lui	a0,00023087
	c.lui	a3,00001000
	addi	a1,a1,-0000041E
	addi	a0,a0,-000003BC
	c.addi16sp	00000020
	jal	zero,000000002304D1C0

;; iperf_client_tcp_entry: 230485CE
;;   Called from:
;;     2304910A (in ipc_test_cmd)
iperf_client_tcp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002307132C
	c.addi	a0,00000004
	jal	ra,000000002303218A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,000000002307127C
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023049
	lui	a0,00023087
	c.lui	a3,00001000
	addi	a1,a1,-000001C6
	addi	a0,a0,-00000484
	c.addi16sp	00000020
	jal	zero,000000002304D1C0

;; iperf_server_udp: 23048602
iperf_server_udp proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.mv	s1,a0
	c.bnez	a0,0000000023048612

l2304860E:
	jal	ra,0000000023001004

l23048612:
	jal	ra,0000000023045A72
	c.mv	s0,a0
	c.bnez	a0,0000000023048636

l2304861A:
	lui	a0,00023087
	addi	a0,a0,-000003B4
	jal	ra,0000000023052118

l23048626:
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.addi16sp	00000060
	c.jr	ra

l23048636:
	c.mv	a0,s1
	jal	ra,000000002303FBF2
	c.lui	a2,00001000
	c.swsp	a0,00000084
	addi	a2,a2,+00000389
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002304561A
	c.beqz	a0,0000000023048662

l2304864E:
	lui	a0,00023087
	addi	a0,a0,-00000390

l23048656:
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,0000000023045A42
	c.j	0000000023048626

l23048662:
	lui	a0,00023087
	addi	a0,a0,-00000380
	jal	ra,0000000023052118
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	lui	a5,00023087
	flw	fa5,3144(a5)
	lui	a1,00023048
	c.li	a5,FFFFFFFF
	c.addi4spn	a2,00000010
	addi	a1,a1,+000006B0
	c.mv	a0,s0
	c.sdsp	a5,00000048
	c.swsp	a5,0000000C
	jal	ra,0000000023045A3A

l23048698:
	c.lwsp	a6,000000E4
	c.beqz	a5,00000000230486A6

l2304869C:
	lui	a0,00023087
	addi	a0,a0,-00000360
	c.j	0000000023048656

l230486A6:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023048698

;; iperf_server_udp_recv_fn: 230486B0
iperf_server_udp_recv_fn proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s5,000000B8
	c.swsp	s6,00000038
	c.mv	s5,a2
	c.mv	s0,a0
	c.mv	s6,a1
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s9,000000B0
	c.sdsp	s0,00000158
	c.sdsp	s1,00000058
	c.sdsp	s2,00000150
	c.mv	s7,a3
	c.mv	s8,a4
	jal	ra,0000000023070EB8
	beq	s5,zero,0000000023048846

l230486E8:
	jal	ra,0000000023034748
	lw	s9,s0,+00000018
	c.sw	s0,32(a0)
	c.mv	s4,a0
	bne	s9,zero,00000000230486FA

l230486F8:
	c.mv	s9,a0

l230486FA:
	c.lw	s0,28(a4)
	sw	s9,s0,+00000018
	c.bnez	a4,0000000023048704

l23048702:
	c.mv	a4,s4

l23048704:
	c.sw	s0,28(a4)
	lhu	s2,s5,+00000008
	c.lw	s0,48(s1)
	c.lw	s0,52(a1)
	addi	s2,s2,+00000036
	c.lw	s0,4(a5)
	c.add	s1,s2
	sltu	s2,s1,s2
	c.addi	a5,00000001
	c.add	s2,a1
	c.sw	s0,48(s1)
	sw	s2,s0,+00000034
	c.sw	s0,4(a5)
	lw	a5,s5,+00000004
	lbu	s3,a5,+00000000
	lbu	a3,a5,+00000001
	c.slli	s3,18
	c.slli	a3,10
	or	s3,s3,a3
	lbu	a3,a5,+00000003
	or	a3,s3,a3
	lbu	s3,a5,+00000002
	c.slli	s3,08
	or	s3,s3,a3
	bge	s3,zero,0000000023048866

l23048750:
	addi	a4,zero,-00000080
	sb	a4,a5,+0000000C
	sb	zero,a5,+0000000D
	sb	zero,a5,+0000000E
	sb	zero,a5,+0000000F
	sb	zero,a5,+00000010
	sb	zero,a5,+00000011
	sb	zero,a5,+00000012
	sb	zero,a5,+00000013
	c.lw	s0,40(a4)
	sb	zero,a5,+00000018
	sb	zero,a5,+00000019
	srli	a3,a4,00000018
	sb	a3,a5,+00000014
	srli	a3,a4,00000010
	sb	a3,a5,+00000015
	srli	a3,a4,00000008
	sb	a3,a5,+00000016
	sb	a4,a5,+00000017
	sb	zero,a5,+0000001A
	sb	zero,a5,+0000001B
	sb	zero,a5,+0000001C
	sb	zero,a5,+0000001D
	sb	zero,a5,+0000001E
	sb	zero,a5,+0000001F
	c.lw	s0,16(a4)
	lui	a0,00023087
	addi	a0,a0,-00000340
	srli	a3,a4,00000018
	sb	a3,a5,+00000020
	srli	a3,a4,00000010
	sb	a3,a5,+00000021
	srli	a3,a4,00000008
	sb	a3,a5,+00000022
	sb	a4,a5,+00000023
	c.lw	s0,12(a4)
	srli	a3,a4,00000018
	sb	a3,a5,+00000024
	srli	a3,a4,00000010
	sb	a3,a5,+00000025
	srli	a3,a4,00000008
	sb	a3,a5,+00000026
	sb	a4,a5,+00000027
	c.lw	s0,4(a4)
	srli	a3,a4,00000018
	sb	a3,a5,+00000028
	srli	a3,a4,00000010
	sb	a3,a5,+00000029
	srli	a3,a4,00000008
	sb	a3,a5,+0000002A
	sb	a4,a5,+0000002B
	c.lw	s0,12(a2)
	c.lw	s0,4(a1)
	jal	ra,0000000023052118
	c.mv	a3,s8
	c.mv	a2,s7
	c.mv	a1,s5
	c.mv	a0,s6
	jal	ra,0000000023045986
	c.li	a5,00000001
	c.sw	s0,0(a5)

l2304882C:
	c.lw	s0,8(a5)
	addi	a4,a5,+00000001
	beq	s3,a4,0000000023048962

l23048836:
	blt	a5,s3,0000000023048950

l2304883A:
	c.lw	s0,20(a5)
	c.addi	a5,00000001
	c.sw	s0,20(a5)

l23048840:
	c.mv	a0,s5
	jal	ra,0000000023040890

l23048846:
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
	c.ldsp	t4,00000008
	c.ldsp	s9,00000048
	c.ldsp	s5,00000090
	c.addi16sp	00000090
	c.jr	ra

l23048866:
	lui	a5,0000007A
	sub	s6,s4,a4
	addi	a5,a5,+0000011F
	bgeu	a5,s6,000000002304882C

l23048876:
	c.mv	a0,s1
	c.mv	a1,s2
	jal	ra,000000002306C90C
	lui	a5,00023087
	flw	fs1,3256(a5)
	c.lw	s0,40(a0)
	c.lw	s0,44(a1)
	fmul.s	fs0,fa0,fs1
	c.add	a0,s1
	fcvt.s.w	fa0,s6
	sltu	s1,a0,s1
	c.add	a1,s2
	c.add	a1,s1
	lui	a5,00023087
	c.sw	s0,40(a0)
	c.sw	s0,44(a1)
	flw	fs2,3260(a5)
	fdiv.s	fs0,fs0,fa0
	jal	ra,000000002306C90C
	fmul.s	fs1,fa0,fs1
	sub	s4,s4,s9
	fcvt.s.w	fa5,s4
	fdiv.s	fa5,fs1,fa5
	fmul.s	fs0,fs0,fs2
	fmul.s	fs2,fa5,fs2
	c.flw	fs0,56(a5)
	flt.s	a5,fs0,fa5
	c.beqz	a5,00000000230488D2

l230488D0:
	c.fsw	s0,56(s0)

l230488D2:
	c.flw	fs0,60(a5)
	flt.s	a5,fa5,fs0
	c.beqz	a5,00000000230488DC

l230488DA:
	c.fsw	s0,60(s0)

l230488DC:
	c.flw	fs0,56(a0)
	jal	ra,0000000023070708
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,00000014
	c.swsp	a1,00000094
	jal	ra,0000000023070708
	c.lw	s0,20(a3)
	c.flw	fs0,60(a0)
	c.swsp	a0,00000010
	c.swsp	a3,00000008
	c.swsp	a1,00000090
	jal	ra,0000000023070708
	fmv.s	fa0,fs2,fs2
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,0000000023070708
	c.lwsp	s0,00000118
	c.lwsp	zero,000001D4
	c.lwsp	tp,000001F4
	c.lwsp	a2,00000138
	lui	a2,00023087
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a2,-00000310
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000030
	jal	ra,000000002305216A
	lui	a0,00023086
	c.addi4spn	a1,00000030
	addi	a0,a0,-00000328
	jal	ra,0000000023052118
	c.lw	s0,32(a5)
	c.lw	s0,20(a4)
	c.li	a6,00000000
	c.sw	s0,28(a5)
	c.li	a5,00000000
	c.sw	s0,48(a5)
	c.lw	s0,12(a5)
	sw	a6,s0,+00000034
	sw	zero,s0,+00000014
	c.add	a5,a4
	c.sw	s0,12(a5)
	c.j	000000002304882C

l23048950:
	c.lw	s0,16(a4)
	sub	a5,s3,a5
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	c.sw	s0,16(a5)

l2304895C:
	sw	s3,s0,+00000008
	c.j	0000000023048840

l23048962:
	blt	a5,s3,000000002304895C

l23048966:
	c.j	0000000023048840

;; iperf_client_udp: 23048968
iperf_client_udp proc
	c.addi16sp	FFFFFF20
	c.swsp	s3,000000E4
	addi	a2,zero,+00000040
	c.mv	s3,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000040
	c.swsp	ra,000000EC
	c.swsp	s0,0000006C
	c.swsp	s1,000000E8
	c.swsp	s2,00000068
	c.swsp	s4,00000064
	c.swsp	s5,000000E0
	c.swsp	s6,00000060
	c.swsp	s7,000000DC
	c.swsp	s8,0000005C
	c.swsp	s9,000000D8
	c.swsp	s10,00000058
	c.swsp	s11,000000D4
	c.sdsp	s0,00000198
	c.sdsp	s1,00000098
	c.sdsp	s2,00000190
	c.sdsp	s3,00000090
	c.sdsp	s4,00000188
	c.sdsp	s5,00000088
	jal	ra,0000000023070EB8
	addi	a0,zero,+00000514
	jal	ra,000000002303218A
	c.bnez	a0,00000000230489D8

l230489A8:
	c.mv	a0,s3
	jal	ra,0000000023032272

l230489AE:
	c.lwsp	t6,00000020
	c.lwsp	s11,00000004
	c.lwsp	s7,00000024
	c.lwsp	s3,00000048
	c.lwsp	a5,00000068
	c.lwsp	a1,00000088
	c.lwsp	t2,000000A8
	c.lwsp	gp,000000C8
	c.lwsp	t5,000001F8
	c.lwsp	s10,0000011C
	c.lwsp	s6,0000013C
	c.lwsp	s2,0000015C
	c.lwsp	a4,0000017C
	c.ldsp	t5,00000008
	c.ldsp	s10,00000048
	c.ldsp	s6,00000090
	c.ldsp	s2,000000D0
	c.ldsp	a4,00000110
	c.ldsp	a0,00000150
	c.addi16sp	000000E0
	c.jr	ra

l230489D8:
	c.mv	s0,a0
	c.li	a5,00000000
	addi	a4,zero,+00000514

l230489E0:
	add	a3,s0,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,00000000230489E0

l230489EE:
	c.li	a2,00000011
	c.li	a1,00000002
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s1,a0
	bge	a0,zero,0000000023048A14

l230489FE:
	lui	a0,00023087
	addi	a0,a0,-00000478
	jal	ra,0000000023052118

l23048A0A:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	00000000230489A8

l23048A14:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	jal	ra,0000000023070EB8
	c.lui	s2,00001000
	c.li	s4,00000002
	addi	a0,s2,+0000038A
	sb	s4,sp,+00000021
	jal	ra,000000002303C332
	sh	a0,sp,+00000022
	lui	a0,0002307C
	addi	a0,a0,+000004CC
	jal	ra,000000002303FBF2
	c.swsp	a0,00000090
	c.li	a2,00000010
	c.addi4spn	a1,00000020
	c.mv	a0,s1
	jal	ra,000000002303B2E8
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023048A64

l23048A50:
	lui	a0,00023087
	addi	a0,a0,-00000390
	jal	ra,0000000023052118
	c.mv	a0,s1
	jal	ra,000000002303B34E
	c.j	0000000023048A0A

l23048A64:
	lui	a0,00023087
	addi	a0,a0,-00000380
	jal	ra,0000000023052118
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,0000000023070EB8
	addi	a0,s2,+00000389
	sb	s4,sp,+00000031
	jal	ra,000000002303C332
	sh	a0,sp,+00000032
	c.mv	a0,s3
	jal	ra,000000002303FBF2
	c.swsp	a0,00000098
	jal	ra,00000000230302E8
	lui	a5,00023087
	flw	fs3,3144(a5)
	lui	a5,00023087
	flw	fs5,2944(a5)
	lui	a5,00023087
	fmv.w.x	fs4,zero
	flw	fs2,2948(a5)
	c.mv	s6,a0
	c.mv	s11,a0
	c.li	s4,00000001
	c.li	s3,00000000
	c.li	s5,00000000
	c.li	s10,00000000
	addi	s2,s2,+00000387
	lui	s8,00023087
	lui	s9,00023086

l23048ACA:
	jal	ra,00000000230302E8
	sub	a5,a0,s11
	c.mv	s7,a0
	bgeu	s2,a5,0000000023048B88

l23048AD8:
	fcvt.s.w	fs0,s10
	fcvt.s.w	fa5,a5
	srai	a5,s10,0000001F
	fdiv.s	fs0,fs0,fs5
	c.add	s10,s3
	sltu	a4,s10,s3
	c.add	s5,a5
	c.add	s5,a4
	c.mv	a0,s10
	c.mv	a1,s5
	c.mv	s3,s10
	fdiv.s	fs0,fs0,fa5
	jal	ra,000000002306C90C
	sub	a5,s7,s6
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,0000000023048B2A

l23048B26:
	fmv.s	fs3,fs0,fs0

l23048B2A:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023048B34

l23048B30:
	fmv.s	fs4,fs0,fs0

l23048B34:
	fmv.s	fa0,fs3,fs3
	c.mv	s11,s7
	c.li	s10,00000000
	jal	ra,0000000023070708
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,0000000023070708
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,0000000023070708
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,0000000023070708
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,s8,-00000460
	addi	a1,zero,+00000040
	c.addi4spn	a0,00000040
	jal	ra,000000002305216A
	c.addi4spn	a1,00000040
	addi	a0,s9,-00000328
	jal	ra,0000000023052118

l23048B88:
	c.mv	a0,s4
	jal	ra,000000002303C340
	c.sw	s0,0(a0)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008

l23048B98:
	c.li	a5,00000010
	c.addi4spn	a4,00000030
	c.li	a3,00000000
	addi	a2,zero,+00000514
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303B5A8
	bge	zero,a0,0000000023048BB4

l23048BAE:
	c.add	s10,a0

l23048BB0:
	c.addi	s4,00000001
	c.j	0000000023048ACA

l23048BB4:
	c.beqz	a0,0000000023048BB0

l23048BB6:
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023048B98

l23048BBC:
	c.swsp	a0,00000008
	c.mv	a0,s1
	jal	ra,000000002303B34E
	addi	a0,zero,+000007D0
	jal	ra,0000000023030630
	c.lwsp	a6,00000064
	lui	a0,00023087
	addi	a0,a0,-00000440
	jal	ra,0000000023052118
	c.li	a0,00000000
	jal	ra,0000000023030064
	c.j	00000000230489AE

;; iperf_server: 23048BE2
iperf_server proc
	c.addi16sp	FFFFFF30
	c.swsp	s1,000000E0
	addi	a2,zero,+00000020
	c.mv	s1,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	c.swsp	s2,00000060
	c.swsp	ra,000000E4
	c.swsp	s0,00000064
	c.swsp	s3,000000DC
	c.swsp	s4,0000005C
	c.swsp	s5,000000D8
	c.swsp	s6,00000058
	c.swsp	s7,000000D4
	c.swsp	s8,00000054
	c.swsp	s9,000000D0
	c.swsp	s10,00000050
	c.swsp	s11,000000CC
	c.sdsp	s0,00000188
	c.sdsp	s1,00000088
	c.sdsp	s2,00000180
	c.sdsp	s3,00000080
	c.sdsp	s4,00000178
	c.sdsp	s5,00000078
	c.lui	s2,00001000
	jal	ra,0000000023070EB8
	addi	a0,s2,+00000450
	jal	ra,000000002303218A
	c.bnez	a0,0000000023048C62

l23048C24:
	lui	a0,00023087
	addi	a0,a0,-00000424
	jal	ra,0000000023052118

l23048C30:
	c.beqz	s1,0000000023048C38

l23048C32:
	c.mv	a0,s1
	jal	ra,0000000023032272

l23048C38:
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.lwsp	t5,00000178
	c.lwsp	s10,00000198
	c.lwsp	s6,000001B8
	c.lwsp	s2,000001D8
	c.lwsp	a4,000001F8
	c.lwsp	a0,0000011C
	c.lwsp	t1,0000013C
	c.lwsp	sp,0000015C
	c.lwsp	t5,0000006C
	c.ldsp	a4,00000008
	c.ldsp	a0,00000048
	c.ldsp	t1,00000090
	c.ldsp	sp,000000D0
	c.ldsp	t4,00000330
	c.ldsp	s9,00000370
	c.addi16sp	000000D0
	c.jr	ra

l23048C62:
	c.mv	s3,a0
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s0,a0
	bge	a0,zero,0000000023048C88

l23048C74:
	lui	a0,00023087
	addi	a0,a0,-00000418
	jal	ra,0000000023052118

l23048C80:
	c.mv	a0,s3
	jal	ra,0000000023032272
	c.j	0000000023048C30

l23048C88:
	c.li	a5,00000002
	addi	a0,s2,+00000389
	sb	a5,sp,+00000031
	jal	ra,000000002303C332
	sh	a0,sp,+00000032
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.swsp	zero,00000098
	jal	ra,0000000023070EB8
	c.li	a2,00000010
	c.addi4spn	a1,00000030
	c.mv	a0,s0
	jal	ra,000000002303B2E8
	c.li	s2,FFFFFFFF
	bne	a0,s2,0000000023048CCA

l23048CB6:
	lui	a0,00023087
	addi	a0,a0,-00000408

l23048CBE:
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002303B34E
	c.j	0000000023048C80

l23048CCA:
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,000000002303B466
	bne	a0,s2,0000000023048CE0

l23048CD6:
	lui	a0,00023087
	addi	a0,a0,-000003F4
	c.j	0000000023048CBE

l23048CE0:
	lui	a5,00023087
	flw	fs3,3144(a5)
	lui	a5,00023087
	flw	fs5,2944(a5)
	lui	a5,00023087
	fmv.w.x	fs4,zero
	flw	fs2,2948(a5)
	c.li	s2,00000000
	c.li	s4,00000000

l23048D00:
	c.li	a5,00000010
	c.addi4spn	a2,00000028
	c.addi4spn	a1,00000040
	c.mv	a0,s0
	c.swsp	a5,00000014
	jal	ra,000000002303B1AE
	c.mv	s1,a0
	c.addi4spn	a0,00000044
	jal	ra,000000002303FCA6
	c.swsp	a0,00000008
	lhu	a0,sp,+00000042
	c.lui	s6,00001000
	addi	s8,s6,+00000387
	jal	ra,000000002303C332
	c.lwsp	a6,00000064
	c.mv	a2,a0
	lui	a0,00023087
	addi	a0,a0,-000003E4
	jal	ra,0000000023052118
	c.li	a5,00000001
	c.li	a4,00000004
	c.addi4spn	a3,0000002C
	c.li	a2,00000001
	c.li	a1,00000006
	c.mv	a0,s1
	c.swsp	a5,00000094
	jal	ra,000000002303BAF4
	jal	ra,00000000230302E8
	c.mv	s5,a0
	c.mv	s10,a0

l23048D50:
	c.li	s9,00000000
	addi	s11,s6,+00000450

l23048D56:
	c.li	a3,00000000
	c.mv	a2,s11
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002303B5A0
	bge	zero,a0,0000000023048E2E

l23048D66:
	c.add	s9,a0
	jal	ra,00000000230302E8
	sub	a5,a0,s10
	c.mv	s7,a0
	bgeu	s8,a5,0000000023048D56

l23048D76:
	fcvt.s.w	fs0,s9
	fcvt.s.w	fa5,a5
	srai	a5,s9,0000001F
	fdiv.s	fs0,fs0,fs5
	c.add	s9,s2
	sltu	a4,s9,s2
	c.add	s4,a5
	c.add	s4,a4
	c.mv	a0,s9
	c.mv	a1,s4
	c.mv	s2,s9
	fdiv.s	fs0,fs0,fa5
	jal	ra,000000002306C90C
	sub	a5,s7,s5
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,0000000023048DC8

l23048DC4:
	fmv.s	fs3,fs0,fs0

l23048DC8:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023048DD2

l23048DCE:
	fmv.s	fs4,fs0,fs0

l23048DD2:
	fmv.s	fa0,fs3,fs3
	c.mv	s10,s7
	jal	ra,0000000023070708
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,0000000023070708
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,0000000023070708
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,0000000023070708
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	lui	a3,00023087
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a3,-00000460
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000050
	jal	ra,000000002305216A
	lui	a0,00023086
	c.addi4spn	a1,00000050
	addi	a0,a0,-00000328
	jal	ra,0000000023052118
	c.j	0000000023048D50

l23048E2E:
	blt	s1,zero,0000000023048D00

l23048E32:
	c.mv	a0,s1
	jal	ra,000000002303B34E
	c.j	0000000023048D00

;; iperf_client_tcp: 23048E3A
iperf_client_tcp proc
	c.addi16sp	FFFFFF40
	c.swsp	s5,000000D0
	addi	a2,zero,+00000020
	c.mv	s5,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000040
	c.swsp	s0,0000005C
	c.swsp	ra,000000DC
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	s9,000000C8
	c.swsp	s10,00000048
	c.swsp	s11,000000C4
	c.sdsp	s0,00000178
	c.sdsp	s1,00000078
	c.sdsp	s2,00000170
	c.sdsp	s3,00000070
	c.sdsp	s4,00000168
	c.sdsp	s5,00000068
	c.lui	s0,00001000
	jal	ra,0000000023070EB8
	addi	a0,s0,+00000450
	jal	ra,000000002303218A
	c.bnez	a0,0000000023048EAC

l23048E7C:
	c.mv	a0,s5
	jal	ra,0000000023032272
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
	c.ldsp	t4,00000228
	c.ldsp	s9,00000268
	c.ldsp	s5,000002B0
	c.ldsp	a7,000002F0
	c.ldsp	a3,00000330
	c.ldsp	s1,00000370
	c.addi16sp	000000C0
	c.jr	ra

l23048EAC:
	c.mv	s3,a0
	c.li	a5,00000000
	addi	s0,s0,+00000450

l23048EB4:
	add	a4,s3,a5
	sb	a5,a4,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023048EB4

l23048EC2:
	lui	a5,00023087
	flw	fs3,3144(a5)
	lui	a5,00023087
	flw	fs5,2944(a5)
	lui	a5,00023087
	fmv.w.x	fs4,zero
	flw	fs2,2948(a5)
	c.li	s2,00000000
	c.li	s4,00000000

l23048EE2:
	c.li	a2,00000006
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s0,a0
	bge	a0,zero,0000000023048F08

l23048EF2:
	lui	a0,00023087
	addi	a0,a0,-00000478
	jal	ra,0000000023052118

l23048EFE:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023048EE2

l23048F08:
	c.lui	s1,00001000
	c.li	a5,00000002
	addi	a0,s1,+00000389
	sb	a5,sp,+00000031
	jal	ra,000000002303C332
	sh	a0,sp,+00000032
	c.mv	a0,s5
	jal	ra,000000002303FBF2
	c.swsp	a0,00000098
	c.li	a2,00000010
	c.addi4spn	a1,00000030
	c.mv	a0,s0
	jal	ra,000000002303B3F6
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023048F48

l23048F34:
	lui	a0,00023087
	addi	a0,a0,-000004D0
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002303B34E
	c.j	0000000023048EFE

l23048F48:
	lui	a0,00023087
	addi	a0,a0,-000004BC
	jal	ra,0000000023052118
	c.li	a5,00000001
	c.li	a4,00000004
	c.addi4spn	a3,0000002C
	c.li	a2,00000001
	c.li	a1,00000006
	c.mv	a0,s0
	c.swsp	a5,00000094
	jal	ra,000000002303BAF4
	jal	ra,00000000230302E8
	addi	s8,s1,+00000387
	c.mv	s6,a0
	c.mv	s11,a0
	c.li	s10,00000000
	lui	s9,00023086
	addi	s1,s1,+00000450

l23048F7C:
	jal	ra,00000000230302E8
	sub	a5,a0,s11
	c.mv	s7,a0
	bgeu	s8,a5,000000002304903E

l23048F8A:
	fcvt.s.w	fs0,s10
	fcvt.s.w	fa5,a5
	srai	a5,s10,0000001F
	fdiv.s	fs0,fs0,fs5
	c.add	s10,s2
	sltu	a4,s10,s2
	c.add	s4,a5
	c.add	s4,a4
	c.mv	a0,s10
	c.mv	a1,s4
	c.mv	s2,s10
	fdiv.s	fs0,fs0,fa5
	jal	ra,000000002306C90C
	sub	a5,s7,s6
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,0000000023048FDC

l23048FD8:
	fmv.s	fs3,fs0,fs0

l23048FDC:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023048FE6

l23048FE2:
	fmv.s	fs4,fs0,fs0

l23048FE6:
	fmv.s	fa0,fs3,fs3
	c.mv	s11,s7
	c.li	s10,00000000
	jal	ra,0000000023070708
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,0000000023070708
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,0000000023070708
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,0000000023070708
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	lui	a3,00023087
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a3,-00000460
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000040
	jal	ra,000000002305216A
	c.addi4spn	a1,00000040
	addi	a0,s9,-00000328
	jal	ra,0000000023052118

l2304903E:
	c.li	a3,00000000
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002303B6C8
	bge	zero,a0,0000000023049052

l2304904E:
	c.add	s10,a0
	c.j	0000000023048F7C

l23049052:
	c.beqz	a0,0000000023048F7C

l23049054:
	c.mv	a0,s0
	jal	ra,000000002303B34E
	addi	a0,zero,+000007D0
	jal	ra,0000000023030630
	lui	a0,00023087
	addi	a0,a0,-00000494
	jal	ra,0000000023052118
	c.j	0000000023048EE2

;; ipus_test_cmd: 23049070
ipus_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,0000000023049096

l23049076:
	lui	a0,00023087
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000020C
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,0002307C
	c.lwsp	a2,00000020
	addi	a0,a0,+000004CC
	c.addi	sp,00000010

l23049092:
	jal	zero,0000000023048532

l23049096:
	c.li	a5,00000002
	bne	a2,a5,00000000230490A0

l2304909C:
	c.lw	a3,4(a0)
	c.j	0000000023049092

l230490A0:
	lui	a0,00023087
	addi	a0,a0,-000001CC
	jal	zero,0000000023052118

;; ipu_test_cmd: 230490AC
ipu_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,00000000230490D2

l230490B2:
	lui	a0,00023087
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000284
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,00023087
	c.lwsp	a2,00000020
	addi	a0,a0,-00000240
	c.addi	sp,00000010

l230490CE:
	jal	zero,0000000023048566

l230490D2:
	c.li	a5,00000002
	bne	a2,a5,00000000230490DC

l230490D8:
	c.lw	a3,4(a0)
	c.j	00000000230490CE

l230490DC:
	lui	a0,00023087
	addi	a0,a0,-00000230
	jal	zero,0000000023052118

;; ipc_test_cmd: 230490E8
ipc_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,000000002304910E

l230490EE:
	lui	a0,00023087
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000538
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,00023087
	c.lwsp	a2,00000020
	addi	a0,a0,-00000240
	c.addi	sp,00000010

l2304910A:
	jal	zero,00000000230485CE

l2304910E:
	c.li	a5,00000002
	bne	a2,a5,0000000023049118

l23049114:
	c.lw	a3,4(a0)
	c.j	000000002304910A

l23049118:
	lui	a0,00023087
	addi	a0,a0,-000004F4
	jal	zero,0000000023052118

;; ips_test_cmd: 23049124
ips_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,000000002304914A

l2304912A:
	lui	a0,00023087
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000002E0
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a0,00023087
	c.lwsp	a2,00000020
	addi	a0,a0,-00000240
	c.addi	sp,00000010

l23049146:
	jal	zero,000000002304859A

l2304914A:
	c.li	a5,00000002
	bne	a2,a5,0000000023049154

l23049150:
	c.lw	a3,4(a0)
	c.j	0000000023049146

l23049154:
	lui	a0,00023087
	addi	a0,a0,-000002A8
	jal	zero,0000000023052118

;; network_netutils_iperf_cli_register: 23049160
;;   Called from:
;;     2300083A (in aos_loop_proc)
network_netutils_iperf_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; cmd_netstat: 23049164
cmd_netstat proc
	lui	a0,00023041
	c.li	a1,00000000
	addi	a0,a0,+00000286
	jal	zero,000000002303BD60

;; network_netutils_netstat_cli_register: 23049172
;;   Called from:
;;     23000846 (in aos_loop_proc)
network_netutils_netstat_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; ping_usage: 23049176
;;   Called from:
;;     23049676 (in ping_cmd)
ping_usage proc
	lui	a1,00023087
	lui	a0,00023086
	addi	a1,a1,+00000004
	addi	a0,a0,-00000328
	jal	zero,0000000023052118

;; ping_free: 2304918A
ping_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s0,a0
	lui	s1,00023087
	addi	s2,a0,+00000020

l230491A0:
	c.lw	s0,32(a5)
	c.bnez	a5,00000000230491C2

l230491A4:
	c.lw	s0,28(a0)
	jal	ra,00000000230411DC
	c.lw	s0,24(a0)
	jal	ra,000000002304BF02
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023032272

l230491C2:
	lhu	a0,a5,+00000004
	jal	ra,000000002303C332
	c.mv	a1,a0
	addi	a0,s1,-00000054
	jal	ra,0000000023052118
	lw	s3,s0,+00000018
	c.mv	a0,s2
	jal	ra,000000002304B984
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002304BF3E
	lbu	a5,s0,+00000012
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000012
	c.j	00000000230491A0

;; ping_timeout: 230491F2
ping_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a0
	lui	s1,00023087
	addi	s2,a0,+00000020

l2304920C:
	c.lw	s0,32(a5)
	bne	a5,zero,0000000023049354

l23049212:
	lbu	a4,s0,+00000012
	c.li	a5,0000000A
	bne	a4,a5,0000000023049238

l2304921C:
	c.lw	s0,24(s1)
	addi	a0,s0,+00000020
	jal	ra,000000002304B984
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,000000002304BF3E
	lbu	a5,s0,+00000012
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000012

l23049238:
	lhu	s3,s0,+0000000A
	addi	a2,zero,+00000280
	addi	a0,zero,+000000A2
	c.addi	s3,00000008
	c.slli	s3,10
	srli	s3,s3,00000010
	c.mv	a1,s3
	jal	ra,0000000023040912
	c.mv	s2,a0
	c.beqz	a0,000000002304930E

l23049256:
	lhu	a4,a0,+0000000A
	lhu	a5,a0,+00000008
	bne	a4,a5,0000000023049308

l23049262:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023049308

l23049266:
	c.lw	a0,4(s1)
	c.lw	s0,24(a0)
	jal	ra,000000002304BF18
	c.mv	s4,a0
	c.beqz	a0,0000000023049308

l23049272:
	c.li	a5,00000008
	sb	a5,s1,+00000000
	sb	zero,s1,+00000001
	sb	zero,s1,+00000002
	sb	zero,s1,+00000003
	lhu	a5,s0,+0000000E
	addi	s5,s3,-00000008
	sb	a5,s1,+00000004
	c.srli	a5,00000008
	sb	a5,s1,+00000005
	lhu	a0,s0,+0000000C
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,s0,+0000000C
	jal	ra,000000002303C332
	sb	a0,s1,+00000006
	c.srli	a0,00000008
	sb	a0,s1,+00000007
	c.li	a5,00000000

l230492B4:
	bltu	a5,s5,0000000023049396

l230492B8:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002303CEB6
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	sb	a0,s1,+00000002
	c.slli	a5,08
	c.srli	a0,00000008
	c.or	a5,a4
	sb	a0,s1,+00000003
	sh	a5,s4,+00000004
	c.lw	s0,28(a0)
	addi	a2,s0,+00000014
	c.mv	a1,s2
	jal	ra,0000000023041154
	jal	ra,000000002303A3BA
	sw	a0,s4,+00000008
	c.mv	a1,s4
	addi	a0,s0,+00000020
	jal	ra,000000002304B970
	lbu	a5,s0,+00000012
	c.addi	a5,00000001
	sb	a5,s0,+00000012
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l23049308:
	c.mv	a0,s2
	jal	ra,0000000023040890

l2304930E:
	lhu	a0,s0,+00000008
	lui	s1,00023049
	c.mv	a2,s0
	addi	a1,s1,+000001F2
	jal	ra,0000000023045240
	c.lw	s0,4(a4)
	c.lw	s0,0(a5)
	bne	a4,a5,00000000230493A2

l23049328:
	c.mv	a1,s0
	addi	a0,s1,+000001F2
	jal	ra,0000000023045316
	lhu	a0,s0,+00000010
	c.mv	a2,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a1,00023049
	addi	a1,a1,+0000018A
	c.addi16sp	00000020
	jal	zero,0000000023045240

l23049354:
	jal	ra,000000002303A3BA
	c.lw	s0,32(a4)
	c.lw	a4,8(a5)
	c.sub	a0,a5
	lhu	a5,s0,+00000010
	bgeu	a5,a0,0000000023049212

l23049366:
	lhu	a0,a4,+00000004
	jal	ra,000000002303C332
	c.mv	a1,a0
	addi	a0,s1,-00000054
	jal	ra,0000000023052118
	lw	s3,s0,+00000018
	c.mv	a0,s2
	jal	ra,000000002304B984
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002304BF3E
	lbu	a5,s0,+00000012
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000012
	c.j	000000002304920C

l23049396:
	add	a4,s1,a5
	sb	a5,a4,+00000008
	c.addi	a5,00000001
	c.j	00000000230492B4

l230493A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; ping_recv: 230493B4
ping_recv proc
	lhu	a5,a0,+0000000A
	lhu	a4,a2,+00000008
	c.addi	a5,0000001C
	bne	a4,a5,00000000230494AE

l230493C2:
	c.lw	a0,20(a1)
	c.lw	a3,0(a4)
	c.li	a5,00000000
	bne	a1,a4,00000000230494B0

l230493CC:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.lw	a2,4(a1)
	c.mv	s2,a2
	c.mv	s0,a0
	c.li	a2,00000008
	c.addi	a1,00000014
	c.addi4spn	a0,00000018
	jal	ra,0000000023070C7C
	lbu	a5,sp,+00000018
	lbu	a0,sp,+00000019
	c.or	a5,a0
	c.bnez	a5,000000002304949E

l230493F2:
	lhu	a3,sp,+0000001C
	lhu	a4,s0,+0000000E
	bne	a3,a4,00000000230494A0

l230493FE:
	lbu	a4,s0,+00000012
	c.beqz	a4,00000000230494A0

l23049404:
	c.lw	s0,32(s1)
	lhu	a4,sp,+0000001E
	c.beqz	s1,00000000230494A0

l2304940C:
	lhu	a3,s1,+00000004
	bltu	a4,a3,00000000230494A0

l23049414:
	bne	a4,a3,000000002304947C

l23049418:
	c.lw	s1,0(a5)
	c.sw	s0,32(a5)

l2304941C:
	lhu	a1,s2,+00000008
	addi	a0,s0,+00000014
	c.swsp	a1,00000084
	jal	ra,000000002303FCA6
	c.swsp	a0,00000004
	lhu	a0,sp,+0000001E
	jal	ra,000000002303C332
	lw	a5,s2,+00000004
	c.swsp	a0,00000080
	lbu	a4,a5,+00000008
	c.swsp	a4,00000000
	jal	ra,000000002303A3BA
	c.lw	s1,8(a5)
	c.lwsp	zero,000000C4
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	sub	a5,a0,a5
	lui	a0,00023087
	addi	a0,a0,-00000030
	jal	ra,0000000023052118
	c.lw	s0,24(a0)
	c.mv	a1,s1
	jal	ra,000000002304BF3E
	lbu	a5,s0,+00000012
	c.mv	a0,s2
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000012
	jal	ra,0000000023040890
	c.li	a5,00000001
	c.j	00000000230494A0

l2304947A:
	c.mv	s1,a3

l2304947C:
	c.lw	s1,0(a3)
	c.beqz	a3,00000000230494A0

l23049480:
	lhu	a2,a3,+00000004
	bltu	a2,a4,000000002304947A

l23049488:
	bne	a4,a2,00000000230494A0

l2304948C:
	c.lw	s0,36(a5)
	bne	a3,a5,0000000023049494

l23049492:
	c.sw	s0,36(s1)

l23049494:
	c.lw	s1,0(a5)
	c.lw	a5,0(a4)
	c.sw	s1,0(a4)
	c.mv	s1,a5
	c.j	000000002304941C

l2304949E:
	c.li	a5,00000000

l230494A0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l230494AE:
	c.li	a5,00000000

l230494B0:
	c.mv	a0,a5
	c.jr	ra

;; ping_api_init: 230494B4
;;   Called from:
;;     230496CE (in ping_cmd)
ping_api_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	addi	a0,zero,+00000028
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,00000094
	c.mv	s2,a3
	c.mv	s1,a4
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,00000000230494F6

l230494DA:
	lui	a0,00023087
	addi	a0,a0,-00000134
	jal	ra,0000000023052118

l230494E6:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230494F6:
	c.sw	a0,0(a2)
	sh	a1,a0,+0000000A
	sw	zero,a0,+00000004
	sh	s3,a0,+00000008
	sh	zero,a0,+0000000C
	jal	ra,000000002303404A
	sh	a0,s0,+0000000E
	sh	s2,s0,+00000010
	sb	zero,s0,+00000012
	c.lw	s1,0(a5)
	c.li	a3,00000004
	c.li	a2,0000000A
	c.sw	s0,20(a5)
	c.li	a1,0000000C
	addi	a0,s0,+00000018
	jal	ra,000000002304BE70
	c.beqz	a0,000000002304954C

l2304952C:
	lui	a0,00023087
	addi	a0,a0,-0000011C

l23049534:
	jal	ra,0000000023052118
	lui	a0,00023087
	addi	a0,a0,-000000CC
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.j	00000000230494E6

l2304954C:
	addi	a0,s0,+00000020
	jal	ra,000000002304B966
	c.li	a0,00000001
	jal	ra,0000000023041208
	c.mv	s1,a0
	c.bnez	a0,0000000023049568

l2304955E:
	lui	a0,00023087
	addi	a0,a0,-00000108
	c.j	0000000023049534

l23049568:
	lui	a1,00023049
	c.mv	a2,s0
	c.sw	s0,28(a0)
	addi	a1,a1,+000003B4
	jal	ra,0000000023041034
	lui	a1,0002308E
	addi	a1,a1,-00000174
	c.mv	a0,s1
	jal	ra,0000000023040FF2
	lui	a1,00023049
	c.mv	a2,s0
	addi	a1,a1,+000001F2
	c.li	a0,00000000
	jal	ra,0000000023045240
	c.j	00000000230494E6

;; ping_cmd: 23049598
ping_cmd proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.lui	s1,00001000
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
	c.swsp	ra,000000AC
	c.swsp	s11,00000094
	c.mv	s5,a2
	c.mv	s0,a3
	addi	s1,s1,+00000388
	jal	ra,000000002304BBC0
	c.li	s4,00000000
	addi	s3,zero,+00000020
	addi	s2,zero,+000003E8
	lui	s8,00023087
	c.li	s7,FFFFFFFF
	addi	s6,zero,+00000063
	addi	s9,zero,+00000069
	addi	s10,zero,+00000073

l230495E2:
	addi	s11,zero,+00000068

l230495E6:
	addi	a3,s8,-00000098
	c.mv	a2,s0
	c.mv	a1,s5
	c.addi4spn	a0,0000000C
	jal	ra,000000002304BBDC
	addi	a5,zero,+0000003F
	addi	a4,zero,+00000057
	bne	a0,s7,0000000023049640

l23049600:
	c.lwsp	a6,000000E4
	addi	a4,a5,+00000001
	bne	a4,s5,00000000230496D4

l2304960A:
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a0)
	jal	ra,000000002303A3BE
	c.bnez	a0,00000000230496C2

l23049616:
	lui	a0,00023087
	addi	a0,a0,-0000008C
	jal	ra,0000000023052118

l23049622:
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

l23049640:
	beq	a0,s6,000000002304969C

l23049644:
	blt	s6,a0,000000002304966A

l23049648:
	beq	a0,a5,00000000230496B4

l2304964C:
	beq	a0,a4,00000000230496A6

l23049650:
	addi	a3,zero,+0000003A
	bne	a0,a3,00000000230495E6

l23049658:
	c.lwsp	s8,00000084
	c.lw	s0,0(a1)
	lui	a0,00023087
	addi	a0,a0,-000000B8

l23049664:
	jal	ra,0000000023052118
	c.j	0000000023049676

l2304966A:
	beq	a0,s9,000000002304967C

l2304966E:
	beq	a0,s10,000000002304968C

l23049672:
	bne	a0,s11,00000000230495E6

l23049676:
	jal	ra,0000000023049176
	c.j	0000000023049622

l2304967C:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	slli	s2,a0,00000010
	srli	s2,s2,00000010
	c.j	00000000230495E2

l2304968C:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	slli	s3,a0,00000010
	srli	s3,s3,00000010
	c.j	00000000230495E2

l2304969C:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	c.mv	s4,a0
	c.j	00000000230495E2

l230496A6:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	slli	s1,a0,00000010
	c.srli	s1,00000010
	c.j	00000000230495E2

l230496B4:
	lui	a0,0002307E
	c.lwsp	s8,00000084
	c.lw	s0,0(a1)
	addi	a0,a0,-000006FC
	c.j	0000000023049664

l230496C2:
	c.lw	a0,16(a5)
	c.mv	a3,s1
	c.mv	a2,s4
	c.lw	a5,0(a4)
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230494B4
	c.j	0000000023049622

l230496D4:
	lui	a0,00023087
	addi	a0,a0,-0000006C
	jal	ra,0000000023052118
	c.j	0000000023049676

;; network_netutils_ping_cli_register: 230496E2
;;   Called from:
;;     2300084A (in aos_loop_proc)
network_netutils_ping_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; dirent_type: 230496E6
;;   Called from:
;;     230498B0 (in file_info)
;;     23049956 (in file_info)
;;     23049B76 (in romfs_readdir)
;;     23049F08 (in romfs_stat)
dirent_type proc
	lbu	a5,a0,+00000003
	c.andi	a5,00000007
	c.beqz	a5,0000000023049702

l230496EE:
	c.li	a4,00000002
	c.li	a0,00000002
	beq	a5,a4,0000000023049704

l230496F6:
	c.li	a4,00000001
	c.li	a0,00000003
	bne	a5,a4,0000000023049704

l230496FE:
	c.li	a0,00000001
	c.jr	ra

l23049702:
	c.li	a0,00000000

l23049704:
	c.jr	ra

;; dirent_hardfh: 23049706
;;   Called from:
;;     230498E0 (in file_info)
;;     2304993A (in file_info)
;;     230499CC (in file_info)
;;     23049B12 (in romfs_readdir)
;;     23049B68 (in romfs_readdir)
dirent_hardfh proc
	c.lw	a0,0(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.andi	a0,FFFFFFF0
	c.jr	ra

;; dirent_childaddr: 2304972E
;;   Called from:
;;     23049CA6 (in dirent_file)
;;     23049E76 (in romfs_opendir)
dirent_childaddr proc
	c.lw	a0,4(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.andi	a0,FFFFFFF0
	c.jr	ra

;; dirent_size: 23049756
;;   Called from:
;;     230497BC (in romfs_ioctl)
;;     230497FE (in romfs_read)
;;     23049A40 (in romfs_lseek)
;;     23049F24 (in romfs_stat)
dirent_size proc
	c.lw	a0,8(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.jr	ra

;; romfs_close: 2304977C
romfs_close proc
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_ioctl: 23049788
romfs_ioctl proc
	c.li	a5,FFFFFFFE
	c.beqz	a0,00000000230497D2

l2304978C:
	c.beqz	a2,00000000230497D2

l2304978E:
	c.li	a4,00000001
	c.li	a5,FFFFFFFD
	bne	a1,a4,00000000230497D2

l23049796:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000004
	c.mv	s1,a0
	c.mv	s0,a2
	addi	a0,s2,+00000010
	jal	ra,000000002307132C
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	c.addi	a0,00000010
	c.add	a0,s2
	c.sw	s0,0(a0)
	c.lw	s1,4(a0)
	jal	ra,0000000023049756
	c.sw	s0,4(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230497D2:
	c.mv	a0,a5
	c.jr	ra

;; romfs_read: 230497D6
romfs_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s3,a0,+00000004
	c.mv	s2,a0
	c.mv	s0,a2
	addi	a0,s3,+00000010
	c.mv	s5,a1
	jal	ra,000000002307132C
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,0000000023049756
	lw	a2,s2,+00000008
	bgeu	a2,a0,0000000023049858

l2304980A:
	addi	a1,s1,+00000010
	c.andi	a1,FFFFFFF0
	c.addi	a1,00000010
	c.add	a1,a2
	add	a5,a2,s0
	c.mv	s4,a0
	c.add	a1,s3
	bgeu	a5,a0,0000000023049846

l23049820:
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	lw	a5,s2,+00000008
	c.add	a5,s0
	sw	a5,s2,+00000008

l23049832:
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

l23049846:
	sub	s0,a0,a2
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	sw	s4,s2,+00000008
	c.j	0000000023049832

l23049858:
	c.li	s0,00000000
	c.j	0000000023049832

;; file_info: 2304985C
;;   Called from:
;;     23049CFE (in dirent_file)
;;     23049D60 (in dirent_file)
file_info proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.mv	s2,a0
	c.mv	s5,a1
	c.mv	s4,a2
	c.lw	a1,0(s0)
	c.lw	a2,0(s1)
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bltu	a5,a0,00000000230499B6

l23049888:
	lui	s3,0004200E
	lw	a5,s3,-00000038
	addi	s3,s3,-00000038
	bne	a5,s0,00000000230498AA

l23049898:
	addi	a0,s0,+00000010
	jal	ra,000000002307132C
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s0,a0

l230498AA:
	c.li	s7,00000001
	c.li	s8,00000002

l230498AE:
	c.mv	a0,s0
	jal	ra,00000000230496E6
	bne	a0,s7,000000002304990E

l230498B8:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	bne	a0,zero,00000000230499C6

l230498CE:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.add	a0,s0
	lbu	a5,a0,+00000010
	bne	a5,zero,00000000230499C6

l230498DE:
	c.mv	a0,s0
	jal	ra,0000000023049706
	c.beqz	a0,00000000230498EC

l230498E6:
	lw	s1,s3,+00000000

l230498EA:
	c.add	s1,a0

l230498EC:
	sw	s0,s5,+00000000
	sw	s1,s4,+00000000
	c.li	a0,00000000

l230498F6:
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

l2304990E:
	bne	a0,s8,0000000023049940

l23049912:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230499C6

l23049926:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.add	a0,s0
	lbu	a5,a0,+00000010
	c.bnez	a5,00000000230499C6

l23049934:
	c.mv	a0,s0
	lw	s1,s3,+00000000
	jal	ra,0000000023049706
	c.j	00000000230498EA

l23049940:
	c.beqz	a0,00000000230499C6

l23049942:
	lui	a5,0004200E
	lw	a4,a5,-0000017C
	c.mv	s3,a5
	c.beqz	a4,00000000230499BA

l2304994E:
	jal	ra,000000002303030A

l23049952:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,00000000230496E6
	c.lwsp	a2,00000064
	c.mv	a6,a0
	lui	s1,00023087
	lui	s2,00023073
	lui	a0,00023087
	c.mv	a5,s0
	addi	a4,zero,+000000E6
	addi	a3,s1,+000001E4
	addi	a2,s2,-00000434
	addi	a0,a0,+000001F0
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.li	a3,00000008
	c.mv	a2,s0
	addi	a1,zero,+000000E7
	addi	a0,s1,+000001E4
	jal	ra,000000002304B746
	lw	a5,s3,-0000017C
	c.beqz	a5,00000000230499C0

l23049998:
	jal	ra,000000002303030A

l2304999C:
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+000000E8
	addi	a3,s1,+000001E4
	addi	a2,s2,-00000434
	addi	a0,a0,+00000234
	jal	ra,000000002304B718

l230499B6:
	c.li	a0,FFFFFFFF
	c.j	00000000230498F6

l230499BA:
	jal	ra,00000000230302E8
	c.j	0000000023049952

l230499C0:
	jal	ra,00000000230302E8
	c.j	000000002304999C

l230499C6:
	lw	s6,s3,+00000000
	c.mv	a0,s0
	jal	ra,0000000023049706
	add	s0,s6,a0
	bltu	s0,s1,00000000230498AE

l230499D8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049A10

l230499E2:
	jal	ra,000000002303030A

l230499E6:
	c.mv	a1,a0
	lui	a3,00023087
	lui	a2,00023082
	lui	a0,00023087
	c.mv	a7,s1
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000EF
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000318
	addi	a0,a0,+00000264
	jal	ra,000000002304B718
	c.j	00000000230499B6

l23049A10:
	jal	ra,00000000230302E8
	c.j	00000000230499E6

;; romfs_closedir: 23049A16
romfs_closedir proc
	c.beqz	a1,0000000023049A2A

l23049A18:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,000000002304D438
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23049A2A:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_lseek: 23049A2E
romfs_lseek proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a2,00000004
	c.li	a1,FFFFFFFF
	c.beqz	a0,0000000023049A5C

l23049A3C:
	c.mv	s0,a0
	c.lw	a0,4(a0)
	jal	ra,0000000023049756
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a2,0000000023049A66

l23049A4A:
	bge	a1,zero,0000000023049A86

l23049A4E:
	lui	a0,00023087
	addi	a0,a0,+000002BC
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFE

l23049A5C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

l23049A66:
	c.li	a5,00000002
	bne	a2,a5,0000000023049A9A

l23049A6C:
	bge	zero,a1,0000000023049A80

l23049A70:
	lui	a0,00023087
	addi	a0,a0,+000002BC
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFD
	c.j	0000000023049A5C

l23049A80:
	c.add	a1,a0

l23049A82:
	blt	a1,zero,0000000023049A8A

l23049A86:
	bgeu	a0,a1,0000000023049AB6

l23049A8A:
	lui	a0,00023087
	addi	a0,a0,+000002BC
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFB
	c.j	0000000023049A5C

l23049A9A:
	c.li	a5,00000001
	bne	a2,a5,0000000023049AA6

l23049AA0:
	c.lw	s0,8(a5)
	c.add	a1,a5
	c.j	0000000023049A82

l23049AA6:
	lui	a0,00023087
	addi	a0,a0,+000002BC
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFC
	c.j	0000000023049A5C

l23049AB6:
	c.sw	s0,8(a1)
	c.j	0000000023049A5C

;; romfs_readdir: 23049ABA
romfs_readdir proc
	c.beqz	a1,0000000023049B94

l23049ABC:
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lui	s3,00001000
	lui	s4,000002E3
	c.lui	s2,00003000
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s0,a1
	lui	s5,0004200E
	addi	s6,a1,+00000019
	addi	s3,s3,-00000100
	addi	s4,s4,-00000200
	addi	s2,s2,-00000200

l23049AF6:
	c.lw	s0,16(a5)
	c.bnez	a5,0000000023049B50

l23049AFA:
	c.lw	s0,8(a5)
	c.sw	s0,16(a5)

l23049AFE:
	c.lw	s0,16(a1)
	addi	a2,zero,+00000040
	c.mv	a0,s6
	c.addi	a1,00000010
	jal	ra,00000000230714A8
	c.lw	s0,16(a0)
	sb	zero,s0,+00000059
	jal	ra,0000000023049706
	c.bnez	a0,0000000023049B86

l23049B18:
	c.lw	s0,12(a0)

l23049B1A:
	c.lw	s0,24(a5)
	c.sw	s0,16(a0)
	and	a5,a5,s3
	bne	a5,s4,0000000023049B8E

l23049B26:
	lbu	a5,s0,+0000001B
	c.beqz	a5,0000000023049AF6

l23049B2C:
	addi	a0,s0,+00000014
	c.j	0000000023049B34

l23049B32:
	c.li	a0,00000000

l23049B34:
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

l23049B50:
	lw	s8,s0,+0000000C
	bgeu	a5,s8,0000000023049B32

l23049B58:
	lw	s9,s5,-00000038
	c.li	s10,00000001

l23049B5E:
	lw	s7,s0,+00000010
	bgeu	s7,s8,0000000023049B32

l23049B66:
	c.mv	a0,s7
	jal	ra,0000000023049706
	c.mv	s1,a0
	c.beqz	a0,0000000023049AFE

l23049B70:
	beq	s7,zero,0000000023049B32

l23049B74:
	c.mv	a0,s7
	jal	ra,00000000230496E6
	c.addi	a0,FFFFFFFF
	bgeu	s10,a0,0000000023049AFE

l23049B80:
	c.add	s1,s9
	c.sw	s0,16(s1)
	c.j	0000000023049B5E

l23049B86:
	lw	a5,s5,-00000038
	c.add	a0,a5
	c.j	0000000023049B1A

l23049B8E:
	bne	a5,s2,0000000023049B2C

l23049B92:
	c.j	0000000023049AF6

l23049B94:
	c.li	a0,00000000
	c.jr	ra

;; dirent_file: 23049B98
;;   Called from:
;;     23049E46 (in romfs_opendir)
;;     23049EA2 (in romfs_stat)
;;     2304A010 (in romfs_open)
dirent_file proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	ra,000000BC
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	lui	s3,00023081
	jal	ra,000000002307132C
	c.mv	s4,a0
	addi	a0,s3,+0000049C
	jal	ra,000000002307132C
	bltu	s4,a0,0000000023049C0E

l23049BC8:
	addi	a0,s3,+0000049C
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s3,+0000049C
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.beqz	a0,0000000023049C18

l23049BDE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049C12

l23049BE8:
	jal	ra,000000002303030A

l23049BEC:
	addi	a4,zero,+00000115

l23049BF0:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+0000011C

l23049C0A:
	jal	ra,000000002304B718

l23049C0E:
	c.li	a0,FFFFFFFF
	c.j	0000000023049DAE

l23049C12:
	jal	ra,00000000230302E8
	c.j	0000000023049BEC

l23049C18:
	addi	a0,s3,+0000049C
	jal	ra,000000002307132C
	c.add	s0,a0
	lbu	a5,s0,+00000000
	addi	a4,zero,+0000002F
	beq	a5,a4,0000000023049C4A

l23049C2E:
	c.beqz	a5,0000000023049C4C

l23049C30:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049C44

l23049C3A:
	jal	ra,000000002303030A

l23049C3E:
	addi	a4,zero,+0000011A
	c.j	0000000023049BF0

l23049C44:
	jal	ra,00000000230302E8
	c.j	0000000023049C3E

l23049C4A:
	c.addi	s0,00000001

l23049C4C:
	lui	a2,0004200E
	lw	a3,a2,-00000038
	lui	a0,00000FF0
	c.li	s4,00000000
	c.lw	a3,8(a5)
	c.swsp	a3,00000080
	addi	s3,a2,-00000038
	srli	a1,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a1
	slli	a1,a5,00000008
	c.and	a1,a0
	c.or	a4,a1
	c.lui	a1,00010000
	c.srli	a5,00000008
	addi	a1,a1,-00000100
	c.and	a5,a1
	c.or	a5,a4
	c.add	a5,a3
	c.swsp	a5,00000004
	c.li	s7,00000001

l23049C86:
	lbu	a5,s0,+00000000
	beq	a5,zero,0000000023049DA2

l23049C8E:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,0000000023070F94
	c.mv	s5,a0
	bne	s4,s7,0000000023049CB2

l23049C9E:
	c.lwsp	tp,000000C8
	lw	s4,s3,+00000000
	c.mv	a0,s6
	jal	ra,000000002304972E
	c.add	a0,s4
	beq	s6,a0,0000000023049DC4

l23049CB0:
	c.swsp	a0,00000080

l23049CB2:
	bne	s5,zero,0000000023049D42

l23049CB6:
	c.mv	a0,s0
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bgeu	a5,a0,0000000023049CF8

l23049CC4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049CF2

l23049CCE:
	jal	ra,000000002303030A

l23049CD2:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000138
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000144
	c.j	0000000023049C0A

l23049CF2:
	jal	ra,00000000230302E8
	c.j	0000000023049CD2

l23049CF8:
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002304985C
	c.beqz	a0,0000000023049DA2

l23049D04:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049D3C

l23049D0E:
	jal	ra,000000002303030A

l23049D12:
	c.lwsp	s0,00000028
	c.lwsp	tp,00000008
	c.mv	a1,a0
	lui	a3,00023087
	lui	a2,00023082
	lui	a0,00023087
	c.mv	a5,s0
	addi	a4,zero,+0000013C
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000318
	addi	a0,a0,+00000168
	jal	ra,000000002304B718
	c.j	0000000023049C0E

l23049D3C:
	jal	ra,00000000230302E8
	c.j	0000000023049D12

l23049D42:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	sub	a2,s5,s0
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002304985C
	c.beqz	a0,0000000023049D9A

l23049D66:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049D94

l23049D70:
	jal	ra,000000002303030A

l23049D74:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000147
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+000001BC
	c.j	0000000023049C0A

l23049D94:
	jal	ra,00000000230302E8
	c.j	0000000023049D74

l23049D9A:
	addi	s0,s5,+00000001
	c.li	s4,00000001
	c.j	0000000023049C86

l23049DA2:
	c.lwsp	tp,000000E4
	c.li	a0,00000000
	sw	a5,s2,+00000000
	c.lwsp	s0,000000E4
	c.sw	s1,0(a5)

l23049DAE:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.addi16sp	00000080
	c.jr	ra

l23049DC4:
	c.li	a0,FFFFFFFE
	c.j	0000000023049DAE

;; romfs_opendir: 23049DC8
romfs_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	s2,s2,-00000038
	lw	s0,s2,+00000000
	c.bnez	s0,0000000023049E24

l23049DE0:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049E1E

l23049DEA:
	jal	ra,000000002303030A

l23049DEE:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+0000020D
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000374
	jal	ra,000000002304B718

l23049E10:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23049E1E:
	jal	ra,00000000230302E8
	c.j	0000000023049DEE

l23049E24:
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	jal	ra,000000002304D434
	c.mv	s0,a0
	c.bnez	a0,0000000023049E36

l23049E32:
	c.li	s0,00000000
	c.j	0000000023049E10

l23049E36:
	addi	a2,zero,+0000005D
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023049B98
	c.bnez	a0,0000000023049E84

l23049E4C:
	c.lwsp	s0,00000024
	lw	s2,s2,+00000000
	bne	s1,s2,0000000023049E74

l23049E56:
	addi	a0,s1,+00000010
	jal	ra,000000002307132C
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s1,a0
	c.sw	s0,8(s1)

l23049E6A:
	c.lwsp	a2,000000E4
	sw	zero,s0,+00000010
	c.sw	s0,12(a5)
	c.j	0000000023049E10

l23049E74:
	c.mv	a0,s1
	jal	ra,000000002304972E
	c.beqz	a0,0000000023049E32

l23049E7C:
	c.add	s2,a0
	sw	s2,s0,+00000008
	c.j	0000000023049E6A

l23049E84:
	c.mv	a0,s0
	jal	ra,000000002304D438
	c.j	0000000023049E32

;; romfs_stat: 23049E8C
romfs_stat proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	a0,a1
	c.mv	s1,a2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023049B98
	c.mv	s0,a0
	c.beqz	a0,0000000023049EF2

l23049EAA:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049EEC

l23049EB4:
	jal	ra,000000002303030A

l23049EB8:
	c.mv	a1,a0
	lui	a3,00023087
	lui	a2,00023082
	lui	a0,00023087
	c.mv	a5,s0
	addi	a4,zero,+000001EA
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000318
	addi	a0,a0,+000004AC
	jal	ra,000000002304B718
	c.li	s0,FFFFFFFF

l23049EDE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23049EEC:
	jal	ra,00000000230302E8
	c.j	0000000023049EB8

l23049EF2:
	lui	a5,0004200E
	c.lwsp	s0,00000048
	lw	a5,a5,-00000038
	bne	s2,a5,0000000023049F06

l23049F00:
	sw	zero,s1,+00000010
	c.j	0000000023049EDE

l23049F06:
	c.mv	a0,s2
	jal	ra,00000000230496E6
	c.li	a5,00000001
	bne	a0,a5,0000000023049F1C

l23049F12:
	sw	zero,s1,+00000010
	c.lui	a5,00004000

l23049F18:
	c.sw	s1,4(a5)
	c.j	0000000023049EDE

l23049F1C:
	c.li	a5,00000002
	bne	a0,a5,0000000023049F2E

l23049F22:
	c.mv	a0,s2
	jal	ra,0000000023049756
	c.sw	s1,16(a0)
	c.lui	a5,00008000
	c.j	0000000023049F18

l23049F2E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049F62

l23049F38:
	jal	ra,000000002303030A

l23049F3C:
	c.mv	a1,a0
	lui	a3,00023087
	lui	a2,00023082
	lui	a0,00023087
	addi	a4,zero,+000001FA
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000318
	addi	a0,a0,+000004D8
	jal	ra,000000002304B718
	c.li	s0,FFFFFFFE
	c.j	0000000023049EDE

l23049F62:
	jal	ra,00000000230302E8
	c.j	0000000023049F3C

;; romfs_open: 23049F68
romfs_open proc
	lui	a5,0004200E
	lw	a5,a5,-00000038
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.bnez	a5,0000000023049FCE

l23049F82:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023049FC8

l23049F8C:
	jal	ra,000000002303030A

l23049F90:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000162
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000374

l23049FAE:
	jal	ra,000000002304B718
	c.li	s1,FFFFFFFF

l23049FB4:
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

l23049FC8:
	jal	ra,00000000230302E8
	c.j	0000000023049F90

l23049FCE:
	c.mv	s3,a0
	c.mv	a0,a1
	c.mv	s2,a1
	lui	s0,00023081
	jal	ra,000000002307132C
	c.mv	s5,a0
	addi	a0,s0,+0000049C
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s0,+0000049C
	c.mv	a0,s2
	jal	ra,00000000230713B8
	c.mv	s1,a0
	c.bnez	a0,000000002304A01C

l23049FF6:
	c.li	s0,00000000
	c.li	a3,00000019
	addi	a2,zero,+0000002F
	c.li	a1,00000009
	addi	a0,zero,+0000005F
	c.li	a6,00000001

l2304A006:
	bne	s5,s0,000000002304A054

l2304A00A:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	jal	ra,0000000023049B98
	beq	a0,zero,000000002304A14A

l2304A018:
	c.li	s1,FFFFFFFE
	c.j	0000000023049FB4

l2304A01C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002304A04E

l2304A026:
	jal	ra,000000002303030A

l2304A02A:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000061
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+000002D4

l2304A048:
	jal	ra,000000002304B718
	c.j	000000002304A0D4

l2304A04E:
	jal	ra,00000000230302E8
	c.j	000000002304A02A

l2304A054:
	add	a5,s2,s0
	lbu	a4,a5,+00000000
	addi	a5,a4,-00000061
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002304A0A8

l2304A068:
	addi	a5,a4,-00000041
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002304A0A4

l2304A074:
	addi	a5,a4,-00000030
	andi	a5,a5,+000000FF
	bgeu	a1,a5,000000002304A0A4

l2304A080:
	beq	a4,a2,000000002304A102

l2304A084:
	beq	a4,a0,000000002304A0A8

l2304A088:
	addi	a4,a4,-0000002D
	andi	a4,a4,+000000FF
	bgeu	a6,a4,000000002304A0A8

l2304A094:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.bnez	a5,000000002304A0AC

l2304A09E:
	jal	ra,00000000230302E8
	c.j	000000002304A0B0

l2304A0A4:
	beq	a4,a2,000000002304A102

l2304A0A8:
	c.addi	s0,00000001
	c.j	000000002304A006

l2304A0AC:
	jal	ra,000000002303030A

l2304A0B0:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	c.mv	a5,s0
	addi	a4,zero,+00000069
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+000002FC
	jal	ra,000000002304B718

l2304A0D4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002304A144

l2304A0DE:
	jal	ra,000000002303030A

l2304A0E2:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000168
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000348
	c.j	0000000023049FAE

l2304A102:
	c.beqz	s0,000000002304A13C

l2304A104:
	bne	s0,s4,000000002304A140

l2304A108:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002304A136

l2304A112:
	jal	ra,000000002303030A

l2304A116:
	lui	a3,00023087
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000073
	addi	a3,a3,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000324
	c.j	000000002304A048

l2304A136:
	jal	ra,00000000230302E8
	c.j	000000002304A116

l2304A13C:
	c.li	s4,00000000
	c.j	000000002304A0A8

l2304A140:
	c.mv	s4,s0
	c.j	000000002304A0A8

l2304A144:
	jal	ra,00000000230302E8
	c.j	000000002304A0E2

l2304A14A:
	c.lwsp	s0,000000E4
	sw	zero,s3,+00000008
	sw	a5,s3,+00000004
	c.j	0000000023049FB4

;; romfs_register: 2304A156
;;   Called from:
;;     230007F0 (in aos_loop_proc)
romfs_register proc
	c.addi16sp	FFFFFFD0
	lui	a1,0004200E
	lui	a0,00023087
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,-0000003C
	addi	a0,a0,+000003F0
	addi	a1,a1,-0000003C
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,0000000023054FB0
	lui	s0,00023087
	c.beqz	a0,000000002304A1C4

l2304A180:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.mv	s1,a0
	c.beqz	a5,000000002304A1BE

l2304A18C:
	jal	ra,000000002303030A

l2304A190:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	c.mv	a5,s1
	addi	a4,zero,+00000086
	addi	a3,s0,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+000003F8
	jal	ra,000000002304B718

l2304A1B0:
	c.li	a0,FFFFFFFF

l2304A1B2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2304A1BE:
	jal	ra,00000000230302E8
	c.j	000000002304A190

l2304A1C4:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,000000002305515A
	c.lwsp	t3,00000024
	c.bnez	s1,000000002304A210

l2304A1DC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002304A20A

l2304A1E6:
	jal	ra,000000002303030A

l2304A1EA:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+0000008D
	addi	a3,s0,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+00000444

l2304A204:
	jal	ra,000000002304B718
	c.j	000000002304A1B0

l2304A20A:
	jal	ra,00000000230302E8
	c.j	000000002304A1EA

l2304A210:
	lui	s2,00023087
	addi	a0,s2,+00000470
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s2,+00000470
	c.mv	a0,s1
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002304A25A

l2304A22A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002304A254

l2304A234:
	jal	ra,000000002303030A

l2304A238:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023087
	addi	a4,zero,+00000092
	addi	a3,s0,+000001E4
	addi	a2,a2,-00000434
	addi	a0,a0,+0000047C
	c.j	000000002304A204

l2304A254:
	jal	ra,00000000230302E8
	c.j	000000002304A238

l2304A25A:
	c.lwsp	t3,00000084
	lui	a5,0004200E
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a1,zero,+00000098
	addi	a0,s0,+000001E4
	sw	a2,a5,+00000FC8
	jal	ra,000000002304B746
	lui	a1,00023087
	lui	a0,00023081
	c.li	a2,00000000
	addi	a1,a1,+000003A0
	addi	a0,a0,+0000049C
	jal	ra,000000002304C87E
	c.j	000000002304A1B2

;; _startup_sntp: 2304A28E
_startup_sntp proc
	lui	a0,00023087
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000500
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.li	a0,00000000
	c.jal	000000002304A724
	lui	a1,00023087
	c.li	a0,00000000
	addi	a1,a1,+00000538
	c.jal	000000002304A79A
	c.jal	000000002304A67C
	c.lwsp	a2,00000020
	lui	a0,00023087
	addi	a0,a0,+0000054C
	c.addi	sp,00000010
	jal	zero,00000000230520DC

;; cmd_sntp_date: 2304A2C0
cmd_sntp_date proc
	lui	a0,00023087
	c.addi16sp	FFFFFFC0
	addi	a0,a0,+00000588
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	jal	ra,00000000230520DC
	lui	a0,00023087
	addi	a0,a0,+000005AC
	jal	ra,00000000230520DC
	lui	a0,0005E495
	c.addi4spn	a1,0000001C
	addi	a0,a0,+00000321
	jal	ra,000000002304BA80
	c.lwsp	a2,000001F4
	lbu	a7,sp,+0000001F
	lbu	a6,sp,+0000001E
	lbu	a4,sp,+0000001C
	lbu	a3,sp,+00000020
	lbu	a2,sp,+00000021
	c.lwsp	tp,00000174
	c.swsp	a5,00000000
	lbu	a5,sp,+0000001D
	lui	s0,00023087
	addi	a0,s0,+000005E0
	jal	ra,0000000023052118
	lui	a0,00023087
	addi	a0,a0,+00000630
	jal	ra,00000000230520DC
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000014
	c.jal	000000002304A72E
	c.lwsp	s4,00000044
	c.addi4spn	a1,0000001C
	jal	ra,000000002304BA80
	c.lwsp	a2,000001F4
	lbu	a7,sp,+0000001F
	lbu	a6,sp,+0000001E
	c.swsp	a5,00000000
	lbu	a4,sp,+0000001C
	lbu	a5,sp,+0000001D
	lbu	a3,sp,+00000020
	lbu	a2,sp,+00000021
	c.lwsp	tp,00000174
	addi	a0,s0,+000005E0
	jal	ra,0000000023052118
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; cmd_sntp_time: 2304A362
cmd_sntp_time proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.jal	000000002304A72E
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	lui	a0,00023087
	addi	a0,a0,+00000644
	jal	ra,0000000023052118
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; cmd_sntp_start: 2304A386
cmd_sntp_start proc
	lui	a0,0002304A
	c.li	a1,00000000
	addi	a0,a0,+0000028E
	jal	zero,000000002303BD60

;; sntp_cli_init: 2304A394
;;   Called from:
;;     2300084E (in aos_loop_proc)
sntp_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; sntp_retry: 2304A398
;;   Called from:
;;     2304A576 (in sntp_recv)
;;     2304A678 (in sntp_dns_found)
sntp_retry proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000024
	c.lw	s0,0(a0)
	lui	a1,0002304A
	c.li	a2,00000000
	addi	a1,a1,+00000608
	c.swsp	ra,00000084
	jal	ra,0000000023045240
	c.lw	s0,0(a3)
	lui	a4,00000025
	addi	a4,a4,-00000610
	slli	a5,a3,00000001
	bltu	a4,a5,000000002304A3CE

l2304A3C8:
	bgeu	a3,a5,000000002304A3CE

l2304A3CC:
	c.sw	s0,0(a5)

l2304A3CE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sntp_recv: 2304A3D6
sntp_recv proc
	lui	a0,00023087
	c.addi16sp	FFFFFFD0
	addi	a0,a0,+000006C0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a2
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,0000000023052118
	lhu	a4,s1,+00000008
	addi	a5,zero,+00000030
	c.li	s0,FFFFFFF0
	bne	a4,a5,000000002304A444

l2304A3FE:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023040DF8
	lui	a5,0004200E
	lbu	a5,a5,-0000002C
	c.andi	a0,00000007
	c.bnez	a5,000000002304A436

l2304A412:
	c.li	a5,00000004
	c.li	s0,FFFFFFFD
	bne	a0,a5,000000002304A444

l2304A41A:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023040DF8
	bne	a0,zero,000000002304A552

l2304A426:
	lui	a0,00023087
	addi	a0,a0,+000006D0
	jal	ra,0000000023052118
	c.li	s0,00000001
	c.j	000000002304A444

l2304A436:
	c.li	a4,00000001
	c.li	s0,FFFFFFFD
	bne	a5,a4,000000002304A444

l2304A43E:
	c.li	a5,00000005
	beq	a0,a5,000000002304A41A

l2304A444:
	c.mv	a0,s1
	jal	ra,0000000023040890
	lui	a0,00023087
	addi	a0,a0,+000006F4
	jal	ra,0000000023052118
	bne	s0,zero,000000002304A564

l2304A45A:
	c.lwsp	s0,00000044
	lui	s3,0004200E
	lui	s2,0004200E
	jal	ra,000000002303C340
	c.mv	s0,a0
	c.lwsp	a2,00000044
	addi	s3,s3,-00000030
	addi	s2,s2,-00000034
	jal	ra,000000002303C340
	c.mv	s1,a0
	lui	a0,00023087
	addi	a0,a0,+00000704
	jal	ra,0000000023052118
	jal	ra,000000002303100A
	lui	a5,0007C558
	addi	a5,a5,+00000180
	c.add	s0,a5
	sw	s0,s3,+00000000
	sw	s1,s2,+00000000
	jal	ra,00000000230302E8
	lui	a5,0004200E
	sw	a0,a5,+00000FE0
	lw	a0,s2,+00000000
	addi	a4,zero,+000003E8
	lw	a1,s3,+00000000
	srl	a0,a0,a4
	add	a5,a4,a1
	sltu	a1,a4,a1
	c.add	a0,a5
	sltu	a5,a0,a5
	c.add	a1,a5
	jal	ra,000000002302B2BC
	jal	ra,000000002303101E
	lui	a2,000000F4
	addi	a2,a2,+00000240
	sltu	a2,s1,a2
	lui	a0,00023087
	c.mv	a1,s0
	addi	a0,a0,+00000714
	jal	ra,0000000023052118
	lui	a5,00042015
	addi	a5,a5,+00000284
	lbu	a4,a5,+00000008
	ori	a4,a4,+00000001
	sb	a4,a5,+00000008
	lui	a5,0004200E
	lbu	a5,a5,-0000002C
	c.bnez	a5,000000002304A544

l2304A508:
	lui	a0,0002304A
	c.li	a1,00000000
	addi	a0,a0,+00000398
	jal	ra,0000000023045316
	lui	s0,0002304A
	c.li	a1,00000000
	addi	a0,s0,+00000608
	jal	ra,0000000023045316
	c.lui	a5,00004000
	lui	a0,0000036F
	lui	a4,0004200E
	addi	a5,a5,-00000568
	c.li	a2,00000000
	addi	a1,s0,+00000608
	addi	a0,a0,-00000180
	sw	a5,a4,+00000FDC
	jal	ra,0000000023045240

l2304A544:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304A552:
	addi	a3,zero,+00000028
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023040C4A
	c.li	s0,00000000
	c.j	000000002304A444

l2304A564:
	c.li	a5,00000001
	bne	s0,a5,000000002304A544

l2304A56A:
	lui	a5,0004200E
	lbu	a5,a5,-0000002C
	c.bnez	a5,000000002304A544

l2304A574:
	c.li	a0,00000000
	jal	ra,000000002304A398
	c.j	000000002304A544

;; sntp_send_request: 2304A57C
;;   Called from:
;;     2304A63C (in sntp_request)
;;     2304A672 (in sntp_dns_found)
sntp_send_request proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	addi	a2,zero,+00000280
	c.mv	s2,a0
	addi	a1,zero,+00000030
	addi	a0,zero,+000000B6
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,0000000023040912
	c.beqz	a0,000000002304A5FC

l2304A59A:
	c.lw	a0,4(s1)
	c.mv	s0,a0
	addi	a2,zero,+00000030
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000023
	sb	a5,s1,+00000000
	lui	a5,0004200E
	lw	a0,a5,-00000028
	c.mv	a2,s2
	c.mv	a1,s0
	addi	a3,zero,+0000007B
	jal	ra,0000000023045986
	c.mv	a0,s0
	jal	ra,0000000023040890
	lui	a5,00042015
	addi	a5,a5,+00000284
	lbu	a4,a5,+00000008
	lui	a1,0002304A
	c.li	a2,00000000
	c.slli	a4,01
	sb	a4,a5,+00000008
	addi	a1,a1,+00000398

l2304A5E8:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.lui	a0,00004000
	addi	a0,a0,-00000568
	c.addi	sp,00000010
	jal	zero,0000000023045240

l2304A5FC:
	lui	a1,0002304A
	c.li	a2,00000000
	addi	a1,a1,+00000608
	c.j	000000002304A5E8

;; sntp_request: 2304A608
sntp_request proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	addi	s0,s0,+00000284
	c.lw	s0,0(a0)
	c.swsp	ra,0000008C
	c.beqz	a0,000000002304A648

l2304A61A:
	lui	a2,0002304A
	c.li	a3,00000000
	addi	a2,a2,+00000664
	c.addi4spn	a1,0000000C
	sw	zero,s0,+00000004
	jal	ra,000000002303CC2C
	c.li	a5,FFFFFFFB
	beq	a0,a5,000000002304A640

l2304A634:
	c.bnez	a0,000000002304A64E

l2304A636:
	c.lwsp	a2,000000E4
	c.sw	s0,4(a5)

l2304A63A:
	c.addi4spn	a0,0000000C
	jal	ra,000000002304A57C

l2304A640:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304A648:
	c.lw	s0,4(a5)
	c.swsp	a5,00000084
	c.bnez	a5,000000002304A63A

l2304A64E:
	lui	a1,0002304A
	c.lui	a0,00004000
	c.li	a2,00000000
	addi	a1,a1,+00000398
	addi	a0,a0,-00000568
	jal	ra,0000000023045240
	c.j	000000002304A640

;; sntp_dns_found: 2304A664
sntp_dns_found proc
	c.beqz	a1,000000002304A676

l2304A666:
	c.lw	a1,0(a4)
	lui	a5,00042015
	c.mv	a0,a1
	sw	a4,a5,+00000288
	jal	zero,000000002304A57C

l2304A676:
	c.li	a0,00000000
	jal	zero,000000002304A398

;; sntp_init: 2304A67C
;;   Called from:
;;     2304A2AE (in _startup_sntp)
sntp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000028
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,000000002304A71C

l2304A68E:
	addi	a0,zero,+0000002E
	jal	ra,0000000023045AA0
	c.mv	a1,a0
	c.sw	s0,0(a0)
	lui	a0,00023087
	addi	a0,a0,+000006A4
	jal	ra,0000000023052118
	c.lw	s0,0(a0)
	c.beqz	a0,000000002304A71C

l2304A6AA:
	lui	a1,0002304A
	c.li	a2,00000000
	addi	a1,a1,+000003D6
	jal	ra,0000000023045A3A
	lui	a5,0004200E
	lbu	a5,a5,-0000002C
	c.bnez	a5,000000002304A6F2

l2304A6C2:
	c.lui	a5,00004000
	addi	a5,a5,-00000568
	lui	a4,0004200E
	sw	a5,a4,+00000FDC
	jal	ra,000000002303404A
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	and	a0,a0,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002304A
	c.li	a2,00000000
	addi	a1,a1,+00000608
	c.addi	sp,00000010
	jal	zero,0000000023045240

l2304A6F2:
	c.li	a4,00000001
	bne	a5,a4,000000002304A71C

l2304A6F8:
	c.lw	s0,0(a0)
	lui	a1,0002308E
	addi	a2,zero,+0000007B
	lbu	a5,a0,+00000009
	addi	a1,a1,-00000174
	ori	a5,a5,+00000020
	sb	a5,a0,+00000009
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304561A

l2304A71C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sntp_setoperatingmode: 2304A724
;;   Called from:
;;     2304A2A0 (in _startup_sntp)
sntp_setoperatingmode proc
	lui	a5,0004200E
	sb	a0,a5,+00000FD4
	c.jr	ra

;; sntp_get_time: 2304A72E
;;   Called from:
;;     2304A32A (in cmd_sntp_date)
;;     2304A36E (in cmd_sntp_time)
sntp_get_time proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	addi	s0,s0,-00000030
	jal	ra,000000002303100A
	c.lw	s0,0(a5)
	c.bnez	a5,000000002304A766

l2304A74C:
	sw	zero,s2,+00000000
	sw	zero,s1,+00000000

l2304A754:
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304A766:
	jal	ra,00000000230302E8
	lui	a5,0004200E
	lw	a5,a5,-00000020
	addi	a4,zero,+000003E8
	c.lw	s0,0(a2)
	c.sub	a0,a5
	lui	a5,0004200E
	lw	a5,a5,-00000034
	xor	a3,a0,a4
	srl	a5,a5,a4
	c.add	a3,a2
	sw	a3,s2,+00000000
	or	a0,a0,a4
	c.add	a0,a5
	c.sw	s1,0(a0)
	c.j	000000002304A754

;; sntp_setservername: 2304A79A
;;   Called from:
;;     2304A2AC (in _startup_sntp)
sntp_setservername proc
	c.bnez	a0,000000002304A7A4

l2304A79C:
	lui	a5,00042015
	sw	a1,a5,+00000284

l2304A7A4:
	c.jr	ra

;; utils_bin2hex: 2304A7A6
;;   Called from:
;;     23028182 (in wifi_mgmr_psk_cal)
utils_bin2hex proc
	lui	a3,00023087
	add	a7,a1,a2
	c.mv	a4,a0
	addi	a3,a3,+00000730

l2304A7B4:
	bne	a1,a7,000000002304A7BE

l2304A7B8:
	c.slli	a2,01
	c.add	a0,a2
	c.jr	ra

l2304A7BE:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.addi	a4,00000002
	srli	a6,a5,00000004
	c.add	a6,a3
	c.andi	a5,0000000F
	lbu	a6,a6,+00000000
	c.add	a5,a3
	lbu	a5,a5,+00000000
	sb	a6,a4,+00000FFE
	sb	a5,a4,+00000FFF
	c.j	000000002304A7B4

;; utils_sha256_init: 2304A7E2
;;   Called from:
;;     2302AF64 (in ota_tcp_cmd.part.0)
utils_sha256_init proc
	addi	a2,zero,+0000006C
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; utils_sha256_free: 2304A7EC
;;   Called from:
;;     2302AFCA (in ota_tcp_cmd.part.0)
utils_sha256_free proc
	addi	a5,a0,+0000006C
	c.bnez	a0,000000002304A7FA

l2304A7F2:
	c.jr	ra

l2304A7F4:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l2304A7FA:
	bne	a0,a5,000000002304A7F4

l2304A7FE:
	c.j	000000002304A7F2

;; utils_sha256_starts: 2304A800
;;   Called from:
;;     2302AF6A (in ota_tcp_cmd.part.0)
utils_sha256_starts proc
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
	addi	a5,a5,-000002E7
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.sw	a0,36(a5)
	sw	zero,a0,+00000068
	c.jr	ra

;; utils_sha256_process: 2304A85E
;;   Called from:
;;     2304B518 (in utils_sha256_update.part.0)
;;     2304B52E (in utils_sha256_update.part.0)
utils_sha256_process proc
	c.addi16sp	FFFFFEB0
	sw	s2,sp,+00000144
	sw	s3,sp,+00000140
	addi	s2,a0,+00000008
	c.mv	s3,sp
	sw	s0,sp,+0000014C
	sw	s1,sp,+00000148
	sw	s4,sp,+0000013C
	sw	s5,sp,+00000138
	sw	s6,sp,+00000134
	sw	s7,sp,+00000130
	sw	s8,sp,+0000012C
	addi	a0,a0,+00000028
	c.mv	a4,s3
	c.mv	a5,s2

l2304A892:
	c.lw	a5,0(a3)
	c.addi	a5,00000004
	c.addi	a4,00000004
	sw	a3,a4,+00000FFC
	bne	a0,a5,000000002304A892

l2304A8A0:
	addi	t3,sp,+00000020
	addi	a2,a1,+00000040
	c.mv	a4,t3

l2304A8AA:
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
	bne	a2,a1,000000002304A8AA

l2304A8D2:
	lui	t4,00023087
	c.lwsp	t3,00000008
	c.lwsp	a6,00000028
	c.lwsp	s8,000000C0
	c.lwsp	s4,00000064
	c.lwsp	zero,00000084
	c.lwsp	tp,000000A4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	addi	s1,t4,+00000744
	addi	t0,s1,+00000040
	c.mv	t6,t3
	addi	t4,t4,+00000744

l2304A8F4:
	slli	t2,a7,0000001A
	srli	t5,a7,00000006
	slli	s0,a7,00000015
	or	t5,t5,t2
	srli	t2,a7,0000000B
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	s0,a7,00000019
	slli	t2,a7,00000007
	or	t2,t2,s0
	xor	t5,t5,t2
	lw	s0,t6,+00000000
	lw	t2,t4,+00000000
	addi	t4,t4,+00000020
	addi	t6,t6,+00000020
	c.add	t2,s0
	c.add	t5,t2
	xor	t2,t1,a1
	and	t2,t2,a7
	xor	t2,t2,t1
	c.add	t5,t2
	c.add	a6,t5
	slli	t2,a2,0000001E
	srli	t5,a2,00000002
	slli	s0,a2,00000013
	or	t5,t5,t2
	srli	t2,a2,0000000D
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	s0,a2,00000016
	slli	t2,a2,0000000A
	or	t2,t2,s0
	xor	t5,t5,t2
	or	t2,a2,a3
	and	s0,a2,a3
	and	t2,t2,a4
	or	t2,t2,s0
	c.add	t5,t2
	c.add	a5,a6
	lw	t2,t6,-0000001C
	c.add	a6,t5
	lw	t5,t4,-0000001C
	slli	s0,a5,00000015
	c.add	t5,t2
	c.add	t1,t5
	xor	t5,a7,a1
	and	t5,t5,a5
	xor	t5,t5,a1
	c.add	t1,t5
	srli	t2,a5,00000006
	slli	t5,a5,0000001A
	or	t2,t2,t5
	srli	t5,a5,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a5,00000019
	slli	t5,a5,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,t1
	slli	t2,a6,0000001E
	srli	t1,a6,00000002
	slli	s0,a6,00000013
	or	t1,t1,t2
	srli	t2,a6,0000000D
	or	t2,t2,s0
	xor	t1,t1,t2
	srli	s0,a6,00000016
	slli	t2,a6,0000000A
	or	t2,t2,s0
	xor	t1,t1,t2
	or	t2,a6,a2
	and	s0,a6,a2
	and	t2,t2,a3
	or	t2,t2,s0
	c.add	t1,t2
	c.add	t1,t5
	c.add	a4,t5
	lw	t2,t6,-00000018
	lw	t5,t4,-00000018
	slli	s0,a4,00000015
	c.add	t5,t2
	c.add	a1,t5
	xor	t5,a5,a7
	and	t5,t5,a4
	xor	t5,t5,a7
	c.add	a1,t5
	srli	t2,a4,00000006
	slli	t5,a4,0000001A
	or	t2,t2,t5
	srli	t5,a4,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a4,00000019
	slli	t5,a4,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a1
	slli	t2,t1,0000001E
	srli	a1,t1,00000002
	slli	s0,t1,00000013
	or	a1,a1,t2
	srli	t2,t1,0000000D
	or	t2,t2,s0
	xor	a1,a1,t2
	srli	s0,t1,00000016
	slli	t2,t1,0000000A
	or	t2,t2,s0
	xor	a1,a1,t2
	or	t2,a6,t1
	and	s0,a6,t1
	and	t2,t2,a2
	or	t2,t2,s0
	c.add	a1,t2
	c.add	a1,t5
	c.add	a3,t5
	lw	t2,t6,-00000014
	lw	t5,t4,-00000014
	slli	s0,a3,00000015
	c.add	t5,t2
	c.add	a7,t5
	xor	t5,a5,a4
	and	t5,t5,a3
	xor	t5,t5,a5
	c.add	a7,t5
	srli	t2,a3,00000006
	slli	t5,a3,0000001A
	or	t2,t2,t5
	srli	t5,a3,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a3,00000019
	slli	t5,a3,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a7
	slli	t2,a1,0000001E
	srli	a7,a1,00000002
	slli	s0,a1,00000013
	or	a7,a7,t2
	srli	t2,a1,0000000D
	or	t2,t2,s0
	xor	a7,a7,t2
	srli	s0,a1,00000016
	slli	t2,a1,0000000A
	or	t2,t2,s0
	xor	a7,a7,t2
	or	t2,t1,a1
	and	s0,t1,a1
	and	t2,t2,a6
	or	t2,t2,s0
	c.add	a7,t2
	c.add	a7,t5
	c.add	a2,t5
	lw	t2,t6,-00000010
	lw	t5,t4,-00000010
	slli	s0,a2,00000015
	c.add	t5,t2
	c.add	a5,t5
	xor	t5,a4,a3
	and	t5,t5,a2
	xor	t5,t5,a4
	c.add	a5,t5
	srli	t2,a2,00000006
	slli	t5,a2,0000001A
	or	t2,t2,t5
	srli	t5,a2,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a2,00000019
	slli	t5,a2,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a5
	slli	t2,a7,0000001E
	srli	a5,a7,00000002
	slli	s0,a7,00000013
	or	a5,a5,t2
	srli	t2,a7,0000000D
	or	t2,t2,s0
	xor	a5,a5,t2
	srli	s0,a7,00000016
	slli	t2,a7,0000000A
	or	t2,t2,s0
	xor	a5,a5,t2
	or	t2,a1,a7
	and	s0,a1,a7
	and	t2,t2,t1
	or	t2,t2,s0
	c.add	a5,t2
	c.add	a5,t5
	c.add	a6,t5
	lw	t2,t6,-0000000C
	lw	t5,t4,-0000000C
	slli	s0,a6,00000015
	c.add	t5,t2
	c.add	a4,t5
	xor	t5,a3,a2
	and	t5,t5,a6
	xor	t5,t5,a3
	c.add	a4,t5
	srli	t2,a6,00000006
	slli	t5,a6,0000001A
	or	t2,t2,t5
	srli	t5,a6,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a6,00000019
	slli	t5,a6,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a4
	slli	t2,a5,0000001E
	srli	a4,a5,00000002
	or	a4,a4,t2
	slli	s0,a5,00000013
	srli	t2,a5,0000000D
	or	t2,t2,s0
	xor	a4,a4,t2
	srli	s0,a5,00000016
	slli	t2,a5,0000000A
	or	t2,t2,s0
	xor	a4,a4,t2
	or	t2,a7,a5
	and	s0,a7,a5
	and	t2,t2,a1
	or	t2,t2,s0
	c.add	a4,t2
	c.add	a4,t5
	c.add	t1,t5
	lw	t2,t6,-00000008
	lw	t5,t4,-00000008
	slli	s0,t1,00000015
	c.add	t5,t2
	c.add	a3,t5
	xor	t5,a2,a6
	and	t5,t5,t1
	xor	t5,t5,a2
	c.add	a3,t5
	srli	t2,t1,00000006
	slli	t5,t1,0000001A
	or	t2,t2,t5
	srli	t5,t1,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,t1,00000019
	slli	t5,t1,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a3
	slli	t2,a4,0000001E
	srli	a3,a4,00000002
	or	a3,a3,t2
	slli	s0,a4,00000013
	srli	t2,a4,0000000D
	or	t2,t2,s0
	xor	a3,a3,t2
	srli	s0,a4,00000016
	slli	t2,a4,0000000A
	or	t2,t2,s0
	xor	a3,a3,t2
	or	t2,a5,a4
	and	t2,t2,a7
	and	s0,a5,a4
	or	t2,t2,s0
	c.add	a3,t2
	c.add	a3,t5
	c.add	a1,t5
	lw	t2,t6,-00000004
	lw	t5,t4,-00000004
	slli	s0,a1,00000015
	c.add	t5,t2
	c.add	a2,t5
	xor	t5,a6,t1
	and	t5,t5,a1
	xor	t5,t5,a6
	c.add	a2,t5
	srli	t2,a1,00000006
	slli	t5,a1,0000001A
	or	t2,t2,t5
	srli	t5,a1,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a1,00000019
	slli	t5,a1,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a2
	slli	t2,a3,0000001E
	srli	a2,a3,00000002
	or	a2,a2,t2
	slli	s0,a3,00000013
	srli	t2,a3,0000000D
	or	t2,t2,s0
	xor	a2,a2,t2
	srli	s0,a3,00000016
	slli	t2,a3,0000000A
	or	t2,t2,s0
	xor	a2,a2,t2
	or	t2,a4,a3
	and	t2,t2,a5
	and	s0,a4,a3
	or	t2,t2,s0
	c.add	a2,t2
	c.add	a7,t5
	c.add	a2,t5
	bne	t0,t4,000000002304A8F4

l2304AD50:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	addi	s4,t3,+000000C0

l2304AD64:
	lw	s5,t3,+00000038
	lw	t5,t3,+00000004
	lw	s6,t3,+0000003C
	srli	t6,s5,00000011
	slli	t4,s5,0000000F
	srli	t0,s5,00000013
	or	t4,t4,t6
	slli	t6,s5,0000000D
	or	t6,t6,t0
	xor	t4,t4,t6
	srli	t6,s5,0000000A
	lw	t0,t3,+00000000
	xor	t4,t4,t6
	lw	t6,t3,+00000024
	srli	t2,t5,00000012
	slli	s0,s6,0000000F
	c.add	t6,t0
	c.add	t4,t6
	slli	t0,t5,00000019
	srli	t6,t5,00000007
	or	t6,t6,t0
	slli	t0,t5,0000000E
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t0,t5,00000003
	xor	t6,t6,t0
	c.add	t4,t6
	slli	t0,a7,0000001A
	srli	t6,a7,00000006
	slli	t2,a7,00000015
	or	t6,t6,t0
	srli	t0,a7,0000000B
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t2,a7,00000019
	slli	t0,a7,00000007
	or	t0,t0,t2
	xor	t6,t6,t0
	xor	t0,t1,a1
	and	t0,t0,a7
	xor	t0,t0,t1
	c.add	t6,t0
	lw	t0,s1,+00000040
	slli	t2,a2,00000013
	lw	s7,t3,+0000000C
	c.add	t6,t0
	c.add	t6,t4
	c.add	a6,t6
	slli	t0,a2,0000001E
	srli	t6,a2,00000002
	or	t6,t6,t0
	srli	t0,a2,0000000D
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t2,a2,00000016
	slli	t0,a2,0000000A
	or	t0,t0,t2
	xor	t6,t6,t0
	or	t0,a2,a3
	and	t2,a2,a3
	and	t0,t0,a4
	or	t0,t0,t2
	c.add	t6,t0
	srli	t0,s6,00000011
	srli	t2,s6,00000013
	or	s0,s0,t0
	slli	t0,s6,0000000D
	or	t0,t0,t2
	xor	s0,s0,t0
	srli	t0,s6,0000000A
	xor	s0,s0,t0
	lw	t0,t3,+00000028
	c.add	a5,a6
	c.add	a6,t6
	lw	t6,t3,+00000008
	c.add	t5,t0
	c.add	s0,t5
	srli	t0,t6,00000007
	slli	t5,t6,00000019
	srli	t2,t6,00000012
	or	t0,t0,t5
	slli	t5,t6,0000000E
	or	t5,t5,t2
	xor	t0,t0,t5
	srli	t5,t6,00000003
	xor	t0,t0,t5
	c.add	s0,t0
	lw	t0,s1,+00000044
	xor	t5,a7,a1
	and	t5,t5,a5
	c.add	t1,t0
	c.add	t1,s0
	xor	t5,t5,a1
	slli	t0,a5,0000001A
	c.add	t5,t1
	srli	t1,a5,00000006
	slli	t2,a5,00000015
	or	t1,t1,t0
	srli	t0,a5,0000000B
	or	t0,t0,t2
	xor	t1,t1,t0
	srli	t2,a5,00000019
	slli	t0,a5,00000007
	or	t0,t0,t2
	xor	t1,t1,t0
	c.add	t5,t1
	slli	t0,a6,0000001E
	srli	t1,a6,00000002
	slli	t2,a6,00000013
	or	t1,t1,t0
	srli	t0,a6,0000000D
	or	t0,t0,t2
	xor	t1,t1,t0
	srli	t2,a6,00000016
	slli	t0,a6,0000000A
	or	t0,t0,t2
	xor	t1,t1,t0
	or	t0,a2,a6
	and	t2,a2,a6
	and	t0,t0,a3
	or	t0,t0,t2
	c.add	t1,t0
	c.add	t1,t5
	c.add	a4,t5
	slli	t2,t4,0000000F
	srli	t5,t4,00000011
	srli	t0,t4,00000013
	or	t2,t2,t5
	slli	t5,t4,0000000D
	or	t5,t5,t0
	xor	t2,t2,t5
	srli	t5,t4,0000000A
	xor	t2,t2,t5
	lw	t5,t3,+0000002C
	srli	t0,s7,00000012
	srli	s8,s0,00000013
	c.add	t6,t5
	c.add	t2,t6
	slli	t5,s7,00000019
	srli	t6,s7,00000007
	or	t6,t6,t5
	slli	t5,s7,0000000E
	or	t5,t5,t0
	xor	t6,t6,t5
	srli	t5,s7,00000003
	xor	t6,t6,t5
	c.add	t2,t6
	lw	t6,s1,+00000048
	xor	t5,a7,a5
	and	t5,t5,a4
	c.add	a1,t6
	c.add	a1,t2
	xor	t5,t5,a7
	slli	t6,a4,0000001A
	c.add	t5,a1
	srli	a1,a4,00000006
	slli	t0,a4,00000015
	or	a1,a1,t6
	srli	t6,a4,0000000B
	or	t6,t6,t0
	xor	a1,a1,t6
	srli	t0,a4,00000019
	slli	t6,a4,00000007
	or	t6,t6,t0
	xor	a1,a1,t6
	c.add	t5,a1
	slli	t6,t1,0000001E
	srli	a1,t1,00000002
	slli	t0,t1,00000013
	or	a1,a1,t6
	srli	t6,t1,0000000D
	or	t6,t6,t0
	xor	a1,a1,t6
	srli	t0,t1,00000016
	slli	t6,t1,0000000A
	or	t6,t6,t0
	xor	a1,a1,t6
	or	t6,a6,t1
	and	t0,a6,t1
	and	t6,t6,a2
	or	t6,t6,t0
	c.add	a1,t6
	slli	t0,s0,0000000F
	srli	t6,s0,00000011
	or	t0,t0,t6
	slli	t6,s0,0000000D
	or	t6,t6,s8
	xor	t0,t0,t6
	sw	s0,t3,+00000044
	c.srli	s0,0000000A
	xor	s0,t0,s0
	lw	t0,t3,+00000030
	c.add	a1,t5
	c.add	a3,t5
	lw	t5,t3,+00000010
	c.add	s7,t0
	add	t0,s0,s7
	srli	t6,t5,00000007
	slli	s0,t5,00000019
	srli	s7,t5,00000012
	or	t6,t6,s0
	slli	s0,t5,0000000E
	or	s0,s0,s7
	xor	t6,t6,s0
	srli	s0,t5,00000003
	xor	t6,t6,s0
	c.lw	s1,76(s0)
	c.add	t0,t6
	xor	t6,a5,a4
	and	t6,t6,a3
	c.add	a7,s0
	c.add	a7,t0
	xor	t6,t6,a5
	slli	s0,a3,0000001A
	c.add	t6,a7
	srli	a7,a3,00000006
	slli	s7,a3,00000015
	or	a7,a7,s0
	srli	s0,a3,0000000B
	or	s0,s0,s7
	xor	a7,a7,s0
	srli	s7,a3,00000019
	slli	s0,a3,00000007
	or	s0,s0,s7
	xor	a7,a7,s0
	c.add	t6,a7
	slli	s0,a1,0000001E
	srli	a7,a1,00000002
	slli	s7,a1,00000013
	or	a7,a7,s0
	srli	s0,a1,0000000D
	or	s0,s0,s7
	xor	a7,a7,s0
	srli	s7,a1,00000016
	slli	s0,a1,0000000A
	or	s0,s0,s7
	xor	a7,a7,s0
	or	s0,t1,a1
	and	s7,t1,a1
	and	s0,s0,a6
	or	s0,s0,s7
	c.add	a7,s0
	c.add	a7,t6
	c.add	a2,t6
	srli	s0,t2,00000011
	slli	t6,t2,0000000F
	srli	s8,t2,00000013
	or	t6,t6,s0
	slli	s0,t2,0000000D
	or	s0,s0,s8
	xor	t6,t6,s0
	sw	t2,t3,+00000048
	srli	t2,t2,0000000A
	xor	t2,t6,t2
	lw	t6,t3,+00000034
	lw	s7,t3,+00000014
	srli	s8,t0,00000013
	c.add	t5,t6
	add	t6,t2,t5
	slli	t2,s7,00000019
	srli	t5,s7,00000007
	srli	s0,s7,00000012
	or	t5,t5,t2
	slli	t2,s7,0000000E
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	t2,s7,00000003
	xor	t5,t5,t2
	lw	t2,s1,+00000050
	c.add	t6,t5
	xor	t5,a4,a3
	c.add	t2,t6
	and	t5,t5,a2
	xor	t5,t5,a4
	c.add	a5,t2
	add	t2,t5,a5
	slli	a5,a2,0000001A
	srli	t5,a2,00000006
	slli	s0,a2,00000015
	or	t5,t5,a5
	srli	a5,a2,0000000B
	c.or	a5,s0
	xor	t5,t5,a5
	srli	s0,a2,00000019
	slli	a5,a2,00000007
	c.or	a5,s0
	xor	a5,t5,a5
	add	t5,a5,t2
	slli	t2,a7,0000001E
	srli	a5,a7,00000002
	slli	s0,a7,00000013
	or	a5,a5,t2
	srli	t2,a7,0000000D
	or	t2,t2,s0
	xor	a5,a5,t2
	srli	s0,a7,00000016
	slli	t2,a7,0000000A
	or	t2,t2,s0
	xor	a5,a5,t2
	or	t2,a1,a7
	and	s0,a1,a7
	and	t2,t2,t1
	or	t2,t2,s0
	c.add	a5,t2
	c.add	a5,t5
	c.add	a6,t5
	srli	t2,t0,00000011
	slli	t5,t0,0000000F
	lw	s0,t3,+00000018
	or	t5,t5,t2
	slli	t2,t0,0000000D
	or	t2,t2,s8
	sw	t0,t3,+0000004C
	xor	t5,t5,t2
	srli	t0,t0,0000000A
	c.add	s5,s7
	slli	t2,s0,00000019
	xor	t5,t5,t0
	srli	t0,s0,00000007
	c.add	t5,s5
	or	t0,t0,t2
	srli	s5,s0,00000012
	slli	t2,s0,0000000E
	or	t2,t2,s5
	xor	t0,t0,t2
	srli	t2,s0,00000003
	xor	t0,t0,t2
	lw	t2,s1,+00000054
	c.add	t5,t0
	xor	t0,a3,a2
	c.add	t2,t5
	and	t0,t0,a6
	xor	t0,t0,a3
	c.add	a4,t2
	add	t2,t0,a4
	slli	a4,a6,0000001A
	srli	t0,a6,00000006
	or	t0,t0,a4
	slli	s5,a6,00000015
	srli	a4,a6,0000000B
	or	a4,a4,s5
	xor	t0,t0,a4
	srli	s5,a6,00000019
	slli	a4,a6,00000007
	or	a4,a4,s5
	xor	a4,t0,a4
	add	t0,a4,t2
	slli	t2,a5,0000001E
	srli	a4,a5,00000002
	or	a4,a4,t2
	slli	s5,a5,00000013
	srli	t2,a5,0000000D
	or	t2,t2,s5
	xor	a4,a4,t2
	srli	s5,a5,00000016
	slli	t2,a5,0000000A
	or	t2,t2,s5
	xor	a4,a4,t2
	or	t2,a7,a5
	and	s5,a7,a5
	and	t2,t2,a1
	or	t2,t2,s5
	c.add	a4,t2
	srli	s5,t6,00000011
	slli	t2,t6,0000000F
	or	t2,t2,s5
	srli	s7,t6,00000013
	slli	s5,t6,0000000D
	c.add	a4,t0
	c.add	t1,t0
	or	s5,s5,s7
	lw	t0,t3,+0000001C
	xor	t2,t2,s5
	sw	t6,t3,+00000050
	srli	t6,t6,0000000A
	xor	t6,t2,t6
	c.add	s6,s0
	slli	t2,t0,00000019
	c.add	s6,t6
	srli	t6,t0,00000007
	srli	s0,t0,00000012
	or	t6,t6,t2
	slli	t2,t0,0000000E
	or	t2,t2,s0
	xor	t6,t6,t2
	srli	t2,t0,00000003
	xor	t6,t6,t2
	lw	t2,s1,+00000058
	c.add	s6,t6
	xor	t6,a2,a6
	c.add	t2,s6
	and	t6,t6,t1
	xor	t6,t6,a2
	c.add	a3,t2
	add	t2,t6,a3
	slli	a3,t1,0000001A
	srli	t6,t1,00000006
	or	t6,t6,a3
	slli	s0,t1,00000015
	srli	a3,t1,0000000B
	c.or	a3,s0
	xor	t6,t6,a3
	srli	s0,t1,00000019
	slli	a3,t1,00000007
	c.or	a3,s0
	xor	a3,t6,a3
	add	t6,a3,t2
	slli	t2,a4,0000001E
	srli	a3,a4,00000002
	or	a3,a3,t2
	slli	s0,a4,00000013
	srli	t2,a4,0000000D
	or	t2,t2,s0
	xor	a3,a3,t2
	srli	s0,a4,00000016
	slli	t2,a4,0000000A
	or	t2,t2,s0
	xor	a3,a3,t2
	or	t2,a5,a4
	and	t2,t2,a7
	and	s0,a5,a4
	or	t2,t2,s0
	c.add	a3,t2
	c.add	a3,t6
	c.add	a1,t6
	srli	s0,t5,00000011
	slli	t6,t5,0000000F
	or	t6,t6,s0
	srli	s5,t5,00000013
	slli	s0,t5,0000000D
	lw	t2,t3,+00000020
	or	s0,s0,s5
	sw	t5,t3,+00000054
	xor	t6,t6,s0
	srli	t5,t5,0000000A
	xor	t5,t6,t5
	sw	t4,t3,+00000040
	c.add	t4,t0
	slli	t6,t2,00000019
	c.add	t4,t5
	srli	t5,t2,00000007
	or	t5,t5,t6
	srli	t0,t2,00000012
	slli	t6,t2,0000000E
	or	t6,t6,t0
	xor	t5,t5,t6
	srli	t2,t2,00000003
	lw	t6,s1,+0000005C
	xor	t5,t5,t2
	c.add	t4,t5
	xor	t5,a6,t1
	c.add	t6,t4
	and	t5,t5,a1
	xor	t5,t5,a6
	c.add	a2,t6
	c.add	a2,t5
	sw	t4,t3,+0000005C
	slli	t5,a1,0000001A
	srli	t4,a1,00000006
	or	t4,t4,t5
	slli	t6,a1,00000015
	srli	t5,a1,0000000B
	or	t5,t5,t6
	xor	t4,t4,t5
	srli	t6,a1,00000019
	slli	t5,a1,00000007
	or	t5,t5,t6
	xor	t4,t4,t5
	c.add	t4,a2
	slli	t5,a3,0000001E
	srli	a2,a3,00000002
	or	a2,a2,t5
	slli	t6,a3,00000013
	srli	t5,a3,0000000D
	or	t5,t5,t6
	xor	a2,a2,t5
	srli	t6,a3,00000016
	slli	t5,a3,0000000A
	or	t5,t5,t6
	xor	a2,a2,t5
	or	t5,a4,a3
	and	t5,t5,a5
	and	t6,a4,a3
	or	t5,t5,t6
	sw	s6,t3,+00000058
	c.add	a2,t5
	addi	t3,t3,+00000020
	c.add	a7,t4
	c.add	a2,t4
	addi	s1,s1,+00000020
	bne	s4,t3,000000002304AD64

l2304B474:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084

l2304B484:
	lw	a5,s2,+00000000
	lw	a4,s3,+00000000
	c.addi	s2,00000004
	c.addi	s3,00000004
	c.add	a5,a4
	sw	a5,s2,+00000FFC
	bne	a0,s2,000000002304B484

l2304B49A:
	lw	s0,sp,+0000014C
	lw	s1,sp,+00000148
	lw	s2,sp,+00000144
	lw	s3,sp,+00000140
	lw	s4,sp,+0000013C
	lw	s5,sp,+00000138
	lw	s6,sp,+00000134
	lw	s7,sp,+00000130
	lw	s8,sp,+0000012C
	c.addi16sp	00000150
	c.jr	ra

;; utils_sha256_update.part.0: 2304B4C2
;;   Called from:
;;     2304B586 (in utils_sha256_update)
;;     2304B610 (in utils_sha256_finish)
utils_sha256_update.part.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	andi	s3,a5,+0000003F
	c.add	a5,a2
	c.sw	a0,0(a5)
	c.mv	s0,a2
	bgeu	a5,a2,000000002304B4EE

l2304B4E8:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l2304B4EE:
	beq	s3,zero,000000002304B520

l2304B4F2:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,000000002304B520

l2304B4FE:
	addi	s5,s1,+00000028
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,0000000023070C7C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,000000002304A85E
	c.add	s2,s4
	c.li	s3,00000000

l2304B520:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	000000002304B536

l2304B52C:
	c.mv	a0,s1
	jal	ra,000000002304A85E
	addi	s4,s4,-00000040

l2304B536:
	sub	a1,s6,s4
	bltu	s5,s4,000000002304B52C

l2304B53E:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,000000002304B570

l2304B554:
	addi	a0,s1,+00000028
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.add	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023070C7C

l2304B570:
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

;; utils_sha256_update: 2304B584
;;   Called from:
;;     2302B19A (in ota_tcp_cmd.part.0)
;;     2304B606 (in utils_sha256_finish)
utils_sha256_update proc
	c.beqz	a2,000000002304B58A

l2304B586:
	jal	zero,000000002304B4C2

l2304B58A:
	c.jr	ra

;; utils_sha256_finish: 2304B58C
;;   Called from:
;;     2302B1B8 (in ota_tcp_cmd.part.0)
utils_sha256_finish proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.lw	a0,0(a2)
	c.lw	a0,4(a5)
	c.mv	s0,a0
	srli	a4,a2,0000001D
	c.slli	a5,03
	c.or	a5,a4
	srli	a3,a5,00000018
	sb	a3,sp,+00000008
	srli	a3,a5,00000010
	sb	a3,sp,+00000009
	slli	a3,a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	slli	a4,a2,00000003
	c.or	a5,a3
	sh	a5,sp,+0000000A
	srli	a5,a4,00000018
	sb	a5,sp,+0000000C
	srli	a5,a4,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a5,sp,+0000000D
	c.srli	a4,00000008
	slli	a5,a2,0000000B
	c.or	a4,a5
	sh	a4,sp,+0000000E
	andi	a2,a2,+0000003F
	addi	a5,zero,+00000037
	c.mv	s1,a1
	bltu	a5,a2,000000002304B712

l2304B5F4:
	addi	a5,zero,+00000038

l2304B5F8:
	lui	a1,00023088
	sub	a2,a5,a2
	addi	a1,a1,-000007BC
	c.mv	a0,s0
	jal	ra,000000002304B584
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002304B4C2
	lbu	a5,s0,+0000000B
	sb	a5,s1,+00000000
	lhu	a5,s0,+0000000A
	sb	a5,s1,+00000001
	c.lw	s0,8(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000002
	c.lw	s0,8(a5)
	sb	a5,s1,+00000003
	lbu	a5,s0,+0000000F
	sb	a5,s1,+00000004
	lhu	a5,s0,+0000000E
	sb	a5,s1,+00000005
	c.lw	s0,12(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000006
	c.lw	s0,12(a5)
	sb	a5,s1,+00000007
	lbu	a5,s0,+00000013
	sb	a5,s1,+00000008
	lhu	a5,s0,+00000012
	sb	a5,s1,+00000009
	c.lw	s0,16(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000000A
	c.lw	s0,16(a5)
	sb	a5,s1,+0000000B
	lbu	a5,s0,+00000017
	sb	a5,s1,+0000000C
	lhu	a5,s0,+00000016
	sb	a5,s1,+0000000D
	c.lw	s0,20(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000000E
	c.lw	s0,20(a5)
	sb	a5,s1,+0000000F
	lbu	a5,s0,+0000001B
	sb	a5,s1,+00000010
	lhu	a5,s0,+0000001A
	sb	a5,s1,+00000011
	c.lw	s0,24(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000012
	c.lw	s0,24(a5)
	sb	a5,s1,+00000013
	lbu	a5,s0,+0000001F
	sb	a5,s1,+00000014
	lhu	a5,s0,+0000001E
	sb	a5,s1,+00000015
	c.lw	s0,28(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000016
	c.lw	s0,28(a5)
	sb	a5,s1,+00000017
	lbu	a5,s0,+00000023
	sb	a5,s1,+00000018
	lhu	a5,s0,+00000022
	sb	a5,s1,+00000019
	c.lw	s0,32(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001A
	c.lw	s0,32(a5)
	sb	a5,s1,+0000001B
	c.lw	s0,104(a5)
	c.bnez	a5,000000002304B708

l2304B6EA:
	lbu	a5,s0,+00000027
	sb	a5,s1,+0000001C
	lhu	a5,s0,+00000026
	sb	a5,s1,+0000001D
	c.lw	s0,36(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001E
	c.lw	s0,36(a5)
	sb	a5,s1,+0000001F

l2304B708:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304B712:
	addi	a5,zero,+00000078
	c.j	000000002304B5F8

;; bl_printk: 2304B718
;;   Called from:
;;     23000598 (in get_dts_addr.part.2)
;;     2302395C (in bl_send_cfg_task_req)
;;     23029D7C (in tc_blfdtdump)
;;     23029F6C (in tc_blfdtdump)
;;     2302A08A (in tc_blfdtdump)
;;     2302A1C6 (in tc_fdt_wifi_module)
;;     2302A258 (in tc_fdt_wifi_module)
;;     2302A2C8 (in tc_fdt_wifi_module)
;;     2302A326 (in tc_fdt_wifi_module)
;;     2302A3BC (in tc_fdt_wifi_module)
;;     2302A42E (in tc_fdt_wifi_module)
;;     2302A4A4 (in tc_fdt_wifi_module)
;;     2302A504 (in tc_fdt_wifi_module)
;;     2302A56E (in tc_fdt_wifi_module)
;;     2302A5CC (in tc_fdt_wifi_module)
;;     2302A784 (in tc_fdt_wifi_module)
;;     2302A818 (in tc_fdt_wifi_module)
;;     2302A8AC (in tc_fdt_wifi_module)
;;     2302A93E (in tc_fdt_wifi_module)
;;     2302AA2E (in cmd_blog_info_dump)
;;     2302AA4A (in cmd_blog_info_dump)
;;     2302AA66 (in cmd_blog_info_dump)
;;     2302AA98 (in cmd_blog_info_dump)
;;     2302AAE6 (in cmd_blog_info_dump)
;;     2302AB2E (in cmd_blog_info_dump)
;;     2302AB56 (in cmd_blog_info_dump)
;;     2302AB7E (in cmd_blog_set_level)
;;     2302AB9C (in cmd_blog_set_level)
;;     2302AC28 (in cmd_blog_set_level)
;;     2302AD14 (in cmd_blog_set_level)
;;     2302AD2A (in blog_init)
;;     2302DD06 (in ef_get_env_blob)
;;     2302DE0E (in ef_del_env)
;;     2302DE8C (in ef_set_env_blob)
;;     2302E4C0 (in psm_test_cmd)
;;     2302E57C (in psm_test_cmd)
;;     2302E5EE (in psm_test_cmd)
;;     23032A0C (in _cb_cmd)
;;     23032A7C (in bl_cks_test)
;;     23032B04 (in bl_cks_test)
;;     23032BBE (in bl_cks_test)
;;     23032C38 (in bl_cks_test)
;;     23032C7A (in bl_cks_test)
;;     23032D1E (in bl_cks_test)
;;     23032DC0 (in bl_cks_test)
;;     23032E58 (in bl_cks_test)
;;     23032EDC (in bl_cks_test)
;;     23032FE6 (in bl_cks_test)
;;     23033044 (in bl_cks_test)
;;     2303307A (in bl_cks_test)
;;     230330F0 (in bl_cks_test)
;;     23033136 (in bl_cks_test)
;;     230331C2 (in bl_cks_test)
;;     23033208 (in bl_cks_test)
;;     230332BE (in bl_cks_test)
;;     230333C8 (in _cb_cmd)
;;     2303351A (in bl_dma_IRQHandler)
;;     230335EE (in bl_dma_irq_register)
;;     23033670 (in bl_dma_irq_register)
;;     230336E0 (in bl_dma_irq_register)
;;     2303375E (in bl_dma_init)
;;     23033890 (in bl_dma_test)
;;     2303395A (in _irq_num_check.part.0)
;;     23033A66 (in bl_irq_register_with_ctx)
;;     23033AC4 (in bl_irq_register_with_ctx)
;;     23033BB4 (in bl_irq_unregister)
;;     23033E40 (in wait_trng4feed)
;;     23033F12 (in sec_trng_IRQHandler)
;;     230340D0 (in bl_sec_test)
;;     230340E2 (in bl_sec_test)
;;     230340F0 (in bl_sec_test)
;;     230340FC (in bl_sec_test)
;;     23034162 (in _dump_rsa_data)
;;     2303416E (in _dump_rsa_data)
;;     2303417C (in _dump_rsa_data)
;;     23034614 (in _pka_test_case2)
;;     23034698 (in _pka_test_case2)
;;     2303485C (in cmd_gpio_get)
;;     230348F4 (in cmd_gpio_get)
;;     23034978 (in cmd_gpio_set)
;;     230349E6 (in cmd_gpio_set)
;;     23034A3A (in cmd_gpio_set)
;;     23034ADE (in cmd_gpio_func)
;;     23034B6E (in cmd_gpio_func)
;;     23034BE0 (in cmd_gpio_func)
;;     23034D54 (in Aes_Compare_Data)
;;     23034DB4 (in Aes_Compare_Data)
;;     23034E50 (in _dump_iv_status)
;;     23034E6A (in _dump_iv_status)
;;     23034E7A (in bl_sec_aes_IRQHandler)
;;     23034F62 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23034FDA (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303504C (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350C6 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230351C8 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035240 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230352B2 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303532C (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303547E (in bl_sec_aes_test)
;;     23035490 (in bl_sec_aes_test)
;;     2303549E (in bl_sec_aes_test)
;;     230354B0 (in bl_sec_aes_test)
;;     23035542 (in bl_sha_mutex_take)
;;     230355BC (in bl_sha_mutex_give)
;;     230356BE (in sha256_test_case0)
;;     230356DA (in sha256_test_case0)
;;     2303593A (in cmd_wdt_init)
;;     2303596E (in cmd_wdt_init)
;;     23035ABC (in dev_uart_init)
;;     23035C08 (in dev_uart_init)
;;     23035ECE (in vfs_uart_init)
;;     23036032 (in vfs_uart_init)
;;     23036086 (in vfs_uart_init)
;;     2303614A (in vfs_uart_init)
;;     2303624A (in vfs_uart_init)
;;     230362B2 (in vfs_uart_init)
;;     2303631E (in vfs_uart_init)
;;     23036380 (in vfs_uart_init)
;;     2303644C (in vfs_uart_init)
;;     2303647E (in vfs_uart_init)
;;     230364E8 (in vfs_uart_init)
;;     2303653C (in vfs_uart_init)
;;     23036586 (in vfs_uart_init)
;;     230365C0 (in vfs_uart_init)
;;     2303669A (in hal_gpio_init_from_dts)
;;     23036724 (in hal_gpio_init_from_dts)
;;     230367E0 (in hal_gpio_init_from_dts)
;;     23036848 (in hal_gpio_init_from_dts)
;;     2303687E (in hal_gpio_init_from_dts)
;;     23036AF4 (in hal_gpio_init_from_dts)
;;     23036B2E (in _dump_partition)
;;     23036B3C (in _dump_partition)
;;     23036B4C (in _dump_partition)
;;     23036B5C (in _dump_partition)
;;     23036B6A (in _dump_partition)
;;     23036B78 (in _dump_partition)
;;     23036B88 (in _dump_partition)
;;     23036BDC (in _dump_partition)
;;     23036BEA (in _dump_partition)
;;     23036BF6 (in _dump_partition)
;;     23036C02 (in _dump_partition)
;;     23036C0E (in _dump_partition)
;;     23036C1A (in _dump_partition)
;;     23036C28 (in _dump_partition)
;;     23036C32 (in _dump_partition)
;;     23036C3C (in _dump_partition)
;;     23036C46 (in _dump_partition)
;;     23037064 (in hal_boot2_init)
;;     230371A4 (in hal_board_cfg)
;;     230371F0 (in hal_board_cfg)
;;     2303725A (in hal_board_cfg)
;;     230372A6 (in hal_board_cfg)
;;     23037314 (in hal_board_cfg)
;;     230373A0 (in hal_board_cfg)
;;     230373FA (in hal_board_cfg)
;;     2303746E (in hal_board_cfg)
;;     23037532 (in hal_board_cfg)
;;     23037592 (in hal_board_cfg)
;;     2303761E (in hal_board_cfg)
;;     230376B6 (in hal_board_cfg)
;;     2303773E (in hal_board_cfg)
;;     2303778C (in hal_board_cfg)
;;     230377AE (in hal_board_cfg)
;;     2303786A (in hal_board_cfg)
;;     230378CA (in hal_board_cfg)
;;     23037900 (in hal_board_cfg)
;;     230379BE (in hal_board_cfg)
;;     23037A0E (in hal_board_cfg)
;;     23037A62 (in hal_board_cfg)
;;     23037AB6 (in hal_board_cfg)
;;     23037B08 (in hal_board_cfg)
;;     23037B56 (in hal_board_cfg)
;;     23037BBE (in hal_board_cfg)
;;     23037C50 (in hal_board_cfg)
;;     23037D08 (in hal_board_cfg)
;;     23037DBC (in hal_board_cfg)
;;     23037E70 (in hal_board_cfg)
;;     23037EEC (in hal_board_cfg)
;;     23037F48 (in hal_board_cfg)
;;     23037FD4 (in hal_board_cfg)
;;     23038094 (in hal_board_cfg)
;;     23038230 (in hal_board_cfg)
;;     23038274 (in hal_board_cfg)
;;     230382D0 (in hal_board_cfg)
;;     23038326 (in hal_board_cfg)
;;     2303837C (in hal_board_cfg)
;;     230383D2 (in hal_board_cfg)
;;     23038480 (in hal_board_cfg)
;;     230384F0 (in hal_board_cfg)
;;     23038530 (in hal_board_cfg)
;;     230385DE (in hal_board_cfg)
;;     23038656 (in hal_board_cfg)
;;     2303869A (in hal_board_cfg)
;;     23038748 (in hal_board_cfg)
;;     23038798 (in hal_board_cfg)
;;     23038820 (in hal_board_cfg)
;;     23038910 (in hal_board_cfg)
;;     230389DC (in hal_board_cfg)
;;     23038A50 (in hal_board_cfg)
;;     23038ACA (in hal_board_cfg)
;;     23038B6C (in hal_board_cfg)
;;     23038BF4 (in hal_board_cfg)
;;     23038C64 (in hal_board_cfg)
;;     23038CD6 (in hal_board_cfg)
;;     23038D5E (in hal_board_cfg)
;;     23038E42 (in bl_tsen_adc_get)
;;     23038EB2 (in bl_tsen_adc_get)
;;     23039296 (in bl_flash_config_update)
;;     230392D6 (in bl_flash_config_update)
;;     23039312 (in bl_flash_config_update)
;;     2303934E (in bl_flash_config_update)
;;     23039388 (in bl_flash_config_update)
;;     230393C2 (in bl_flash_config_update)
;;     230393F8 (in bl_flash_config_update)
;;     23039DDA (in _cb_led_trigger)
;;     23039E66 (in _led_bloop_msg)
;;     23039F60 (in _led_bloop_evt)
;;     2303A026 (in loopset_led_trigger)
;;     2304997C (in file_info)
;;     230499B2 (in file_info)
;;     23049A0A (in file_info)
;;     23049C0A (in dirent_file)
;;     23049D36 (in dirent_file)
;;     23049E0C (in romfs_opendir)
;;     23049ED8 (in romfs_stat)
;;     23049F5A (in romfs_stat)
;;     23049FAE (in romfs_open)
;;     2304A048 (in romfs_open)
;;     2304A0D0 (in romfs_open)
;;     2304A1AC (in romfs_register)
;;     2304A204 (in romfs_register)
;;     2304B848 (in log_buf_out)
;;     2304B8FA (in log_buf_out)
;;     230551FE (in bl_mtd_write)
;;     23055698 (in bloop_run)
;;     23055730 (in bloop_run)
bl_printk proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,-000006B6
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,000000002304B740

l2304B738:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,0000000023052080

l2304B740:
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; log_buf_out: 2304B746
;;   Called from:
;;     2302A2DA (in tc_fdt_wifi_module)
;;     2302A338 (in tc_fdt_wifi_module)
;;     2302A580 (in tc_fdt_wifi_module)
;;     2302A798 (in tc_fdt_wifi_module)
;;     2302A82C (in tc_fdt_wifi_module)
;;     2302A8C0 (in tc_fdt_wifi_module)
;;     2302A950 (in tc_fdt_wifi_module)
;;     23037632 (in hal_board_cfg)
;;     230376CA (in hal_board_cfg)
;;     23038492 (in hal_board_cfg)
;;     230385F0 (in hal_board_cfg)
;;     23038856 (in hal_board_cfg)
;;     2304998E (in file_info)
;;     2304A272 (in romfs_register)
log_buf_out proc
	bge	zero,a3,000000002304B90A

l2304B74A:
	c.addi16sp	FFFFFFB0
	addi	a5,zero,+00000032
	c.swsp	s1,000000A0
	c.mv	s1,a4
	or	a4,a3,a5
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s0,a2
	c.mv	s5,a1
	c.mv	s4,a0
	c.swsp	a4,00000084
	xor	s8,a3,a5
	c.bnez	a4,000000002304B7C6

l2304B77E:
	lui	s3,00042015
	lui	s7,00023088
	lui	s9,00023088
	add	s8,s8,a5
	c.add	s8,a2

l2304B790:
	beq	s8,s0,000000002304B858

l2304B794:
	c.li	s6,00000000
	c.li	s2,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l2304B79C:
	lui	a5,00042015
	addi	a5,a5,+00000290
	add	a4,s0,s2
	add	a0,a5,s6
	lbu	a2,a4,+00000000
	beq	s1,s10,000000002304B8B8

l2304B7B4:
	addi	a1,s9,-00000774
	beq	s1,s11,000000002304B8C0

l2304B7BC:
	lui	a5,00023088
	addi	a1,a5,-0000076C
	c.j	000000002304B8C0

l2304B7C6:
	lui	s3,00042015
	c.li	s6,00000000
	addi	s3,s3,+00000290
	lui	s9,00023088
	lui	s10,00023088
	lui	s11,00023088

l2304B7DC:
	c.li	s2,00000000
	c.li	s7,00000000
	bne	s8,s6,000000002304B890

l2304B7E4:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,000000002304B80A

l2304B7F6:
	c.li	a5,00000002
	addi	a1,s11,-00000774
	beq	s1,a5,000000002304B812

l2304B800:
	addi	a1,s10,-0000076C
	c.j	000000002304B812

l2304B806:
	c.mv	s6,a5
	c.j	000000002304B7DC

l2304B80A:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,-0000077C

l2304B812:
	jal	ra,0000000023052148
	c.lwsp	a2,000000E4
	c.addi	s7,00000001
	c.add	s2,a0
	bne	a5,s7,000000002304B7E4

l2304B820:
	lui	a4,0004200E
	lw	a4,a4,-0000017C
	c.beqz	a4,000000002304B8B2

l2304B82A:
	jal	ra,000000002303030A

l2304B82E:
	c.mv	a1,a0
	lui	a2,00023088
	lui	a0,00023088
	c.mv	a5,s2
	c.mv	a6,s3
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,-00000764
	addi	a0,a0,-00000754
	jal	ra,000000002304B718
	addi	a5,s6,+00000001
	addi	s0,s0,+00000032
	blt	s6,s8,000000002304B806

l2304B858:
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

l2304B878:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,-0000077C

l2304B880:
	jal	ra,0000000023052148
	c.addi	s7,00000001
	addi	a5,zero,+00000032
	c.add	s2,a0
	beq	s7,a5,000000002304B820

l2304B890:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,000000002304B878

l2304B8A2:
	c.li	a5,00000002
	addi	a1,s11,-00000774
	beq	s1,a5,000000002304B880

l2304B8AC:
	addi	a1,s10,-0000076C
	c.j	000000002304B880

l2304B8B2:
	jal	ra,00000000230302E8
	c.j	000000002304B82E

l2304B8B8:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s7,-0000077C

l2304B8C0:
	jal	ra,0000000023052148
	c.addi	s2,00000001
	addi	a4,zero,+00000032
	c.add	s6,a0
	bne	s2,a4,000000002304B79C

l2304B8D0:
	lui	a4,0004200E
	lw	a4,a4,-0000017C
	c.beqz	a4,000000002304B904

l2304B8DA:
	jal	ra,000000002303030A

l2304B8DE:
	c.mv	a1,a0
	lui	a2,00023088
	lui	a0,00023088
	addi	a6,s3,+00000290
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,-00000764
	addi	a0,a0,-00000754
	jal	ra,000000002304B718
	addi	s0,s0,+00000032
	c.j	000000002304B790

l2304B904:
	jal	ra,00000000230302E8
	c.j	000000002304B8DE

l2304B90A:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_dns_domain_get: 2304B90E
;;   Called from:
;;     2302C8CE (in get_dns_request)
utils_dns_domain_get proc
	lw	a7,a2,+00000000
	lbu	a4,a0,+00000000
	c.li	a5,00000000
	c.li	t1,00000001
	addi	t3,zero,+0000002E

l2304B91E:
	c.beqz	a4,000000002304B924

l2304B920:
	blt	zero,a7,000000002304B92A

l2304B924:
	c.sw	a2,0(a5)
	c.li	a0,00000000
	c.jr	ra

l2304B92A:
	add	t4,a0,t1
	lbu	t5,t4,+00000000
	add	t4,a1,a5
	c.addi	a4,FFFFFFFF
	sb	t5,t4,+00000000
	addi	a3,t1,+00000001
	addi	a6,a5,+00000001
	c.addi	a7,FFFFFFFF
	c.bnez	a4,000000002304B960

l2304B948:
	beq	a7,zero,000000002304B960

l2304B94C:
	c.add	a6,a1
	sb	t3,a6,+00000000
	c.add	a3,a0
	lbu	a4,a3,+00000000
	addi	a6,a5,+00000002
	addi	a3,t1,+00000002

l2304B960:
	c.mv	a5,a6
	c.mv	t1,a3
	c.j	000000002304B91E

;; utils_list_init: 2304B966
;;   Called from:
;;     230221D8 (in ipc_host_init)
;;     2303370C (in bl_dma_init)
;;     23049550 (in ping_api_init)
;;     2305528C (in bloop_init)
utils_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; utils_list_push_back: 2304B970
;;   Called from:
;;     23024640 (in bl_output)
;;     23033580 (in bl_dma_copy)
;;     230492F4 (in ping_timeout)
utils_list_push_back proc
	c.lw	a0,0(a5)
	c.bnez	a5,000000002304B97E

l2304B974:
	c.sw	a0,0(a1)

l2304B976:
	c.sw	a0,4(a1)
	sw	zero,a1,+00000000
	c.jr	ra

l2304B97E:
	c.lw	a0,4(a5)
	c.sw	a5,0(a1)
	c.j	000000002304B976

;; utils_list_pop_front: 2304B984
;;   Called from:
;;     23024420 (in bl_tx_try_flush)
;;     230334CE (in bl_dma_IRQHandler)
;;     230491DA (in ping_free)
;;     23049222 (in ping_timeout)
;;     2304937E (in ping_timeout)
;;     23055600 (in bloop_run)
utils_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,000000002304B98C

l2304B988:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l2304B98C:
	c.mv	a0,a5
	c.jr	ra

;; utils_hexdump: 2304B990
;;   Called from:
;;     230277EC (in cmd_wifi_mib)
;;     2302B58E (in hexdump_cmd)
utils_hexdump proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	andi	a5,a1,+0000000F
	c.mv	s4,a0
	c.mv	s2,a1
	c.li	s1,00000000
	c.beqz	a5,000000002304B9BC

l2304B9B8:
	c.li	s1,00000010
	c.sub	s1,a5

l2304B9BC:
	lui	s3,0002308E
	c.add	s1,s2
	c.li	s0,00000000
	lui	s6,00023088
	lui	s7,00023088
	lui	s8,00023088
	c.li	s9,0000000F
	addi	s3,s3,-00000393
	lui	s10,00023072

l2304B9DA:
	bne	s1,s0,000000002304B9FC

l2304B9DE:
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

l2304B9FC:
	andi	s11,s0,+0000000F
	bne	s11,zero,000000002304BA0E

l2304BA04:
	c.mv	a1,s0
	addi	a0,s6,-00000738
	jal	ra,0000000023052118

l2304BA0E:
	bgeu	s0,s2,000000002304BA4A

l2304BA12:
	add	a5,s4,s0
	lbu	a1,a5,+00000000
	addi	a0,s8,-0000076C
	jal	ra,0000000023052118

l2304BA22:
	addi	s5,s0,+00000001
	bne	s11,s9,000000002304BA46

l2304BA2A:
	addi	s11,s0,-0000000F
	c.li	a5,00000011
	bgeu	s5,s11,000000002304BA36

l2304BA34:
	c.li	a5,00000001

l2304BA36:
	c.addi	s0,FFFFFFF0
	c.add	s0,a5

l2304BA3A:
	bne	s11,s0,000000002304BA54

l2304BA3E:
	addi	a0,s10,+000007FC
	jal	ra,00000000230520DC

l2304BA46:
	c.mv	s0,s5
	c.j	000000002304B9DA

l2304BA4A:
	addi	a0,s7,-0000072C
	jal	ra,0000000023052118
	c.j	000000002304BA22

l2304BA54:
	addi	a0,zero,+00000020
	bgeu	s11,s2,000000002304BA72

l2304BA5C:
	add	a5,s4,s11
	lbu	a0,a5,+00000000
	add	a5,a0,s3
	lbu	a5,a5,+00000000
	andi	a5,a5,+00000097
	c.beqz	a5,000000002304BA7A

l2304BA72:
	jal	ra,00000000230520C6
	c.addi	s11,00000001
	c.j	000000002304BA3A

l2304BA7A:
	addi	a0,zero,+0000002E
	c.j	000000002304BA72

;; utils_time_date_from_epoch: 2304BA80
;;   Called from:
;;     2302B2AE (in cmd_sys_time_now)
;;     2304A2EC (in cmd_sntp_date)
;;     2304A330 (in cmd_sntp_date)
utils_time_date_from_epoch proc
	lui	a5,0001E1F2
	c.addi	sp,FFFFFFE0
	addi	a5,a5,-000003E1
	c.swsp	a5,00000088
	lui	a5,0001F1F2
	addi	a5,a5,-000001E1
	c.swsp	a5,0000000C
	lui	a5,0001F1E2
	addi	a5,a5,-000000E2
	c.swsp	a5,0000008C
	lui	a5,00000060
	addi	a5,a5,+00000504
	c.swsp	a5,00000084
	addi	a5,zero,+00000201
	addi	a4,zero,+0000003C
	sh	a5,sp,+00000010
	c.li	a5,00000003
	sb	a5,sp,+00000012
	and	a5,a0,a4
	c.addi4spn	a3,00000020
	sh	zero,a1,+00000006
	addi	a2,zero,+00000064
	addi	a6,zero,+00000190
	sb	a5,a1,+00000002
	srl	a5,a0,a4
	and	a5,a5,a4
	c.li	a4,00000018
	sb	a5,a1,+00000001
	c.lui	a5,00001000
	addi	a5,a5,-000001F0
	srl	a5,a0,a5
	and	a5,a5,a4
	c.li	a4,00000007
	sb	a5,a1,+00000000
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	srl	a5,a0,a5
	and	a4,a5,a4
	c.sw	a1,12(a5)
	c.add	a4,a3
	lbu	a4,a4,-00000014
	sb	a4,a1,+00000003
	lui	a4,00001E13
	addi	a4,a4,+00000380
	srl	a0,a0,a4
	addi	a4,zero,+000007B4
	addi	a0,a0,+000007B2
	c.sw	a1,8(a0)

l2304BB24:
	bltu	a4,a0,000000002304BB90

l2304BB28:
	lbu	a4,a1,+00000006
	addi	a3,zero,+0000016D
	c.sub	a5,a4
	srl	a4,a5,a3
	and	a5,a5,a3
	addi	a4,a4,+000007B2
	c.sw	a1,8(a4)
	andi	a3,a4,+00000003
	c.addi	a5,00000001
	c.sw	a1,16(a5)
	c.bnez	a3,000000002304BB54

l2304BB4A:
	addi	a3,zero,+00000064
	and	a3,a4,a3
	c.bnez	a3,000000002304BB5E

l2304BB54:
	addi	a3,zero,+00000190
	and	a4,a4,a3
	c.bnez	a4,000000002304BB6A

l2304BB5E:
	c.li	a4,0000001D
	sb	a4,sp,+00000015
	c.li	a4,00000001
	sb	a4,a1,+00000007

l2304BB6A:
	sb	zero,a1,+00000005
	c.li	a4,00000000
	c.li	a0,0000000B

l2304BB72:
	lbu	a3,a1,+00000005
	c.addi4spn	a2,00000020
	c.add	a2,a3
	bgeu	a0,a3,000000002304BBAA

l2304BB7E:
	lbu	a3,a2,-0000000D
	c.li	a0,00000000
	c.sub	a4,a3
	c.sub	a5,a4
	sb	a5,a1,+00000004
	c.addi16sp	00000020
	c.jr	ra

l2304BB90:
	or	a3,a4,a2
	c.bnez	a3,000000002304BB9C

l2304BB96:
	or	a3,a4,a6
	c.bnez	a3,000000002304BBA6

l2304BB9C:
	lbu	a3,a1,+00000006
	c.addi	a3,00000001
	sb	a3,a1,+00000006

l2304BBA6:
	c.addi	a4,00000004
	c.j	000000002304BB24

l2304BBAA:
	bgeu	a4,a5,000000002304BB7E

l2304BBAE:
	lbu	a2,a2,-0000000C
	c.addi	a3,00000001
	sb	a3,a1,+00000005
	c.add	a4,a2
	c.slli	a4,10
	c.srli	a4,00000010
	c.j	000000002304BB72

;; utils_getopt_init: 2304BBC0
;;   Called from:
;;     23027816 (in cmd_wifi_cfg)
;;     230495C2 (in ping_cmd)
utils_getopt_init proc
	c.beqz	a0,000000002304BBD8

l2304BBC2:
	c.li	a5,00000001
	sw	zero,a0,+00000000
	c.sw	a0,4(a5)
	c.sw	a0,8(a1)
	sw	zero,a0,+0000000C
	sw	zero,a0,+00000010
	c.li	a0,00000000
	c.jr	ra

l2304BBD8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_getopt: 2304BBDC
;;   Called from:
;;     23027842 (in cmd_wifi_cfg)
;;     230495F0 (in ping_cmd)
utils_getopt proc
	c.beqz	a0,000000002304BC30

l2304BBDE:
	c.lw	a0,4(a4)
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bge	a4,a1,000000002304BD32

l2304BBE8:
	c.mv	a7,a2
	slli	a2,a4,00000002
	c.add	a2,a7
	lw	a6,a2,+00000000
	beq	a6,zero,000000002304BD32

l2304BBF8:
	lbu	t1,a6,+00000000
	addi	t3,zero,+0000002D
	beq	t1,t3,000000002304BC18

l2304BC04:
	lbu	a3,a3,+00000000
	bne	a3,t3,000000002304BD32

l2304BC0C:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	c.lw	a2,0(a4)
	c.li	a0,00000001
	c.sw	a5,0(a4)
	c.jr	ra

l2304BC18:
	lbu	t3,a6,+00000001
	c.li	a0,FFFFFFFF
	beq	t3,zero,000000002304BD32

l2304BC22:
	bne	t3,t1,000000002304BC34

l2304BC26:
	lbu	a0,a6,+00000002
	c.bnez	a0,000000002304BC34

l2304BC2C:
	c.addi	a4,00000001
	c.sw	a5,4(a4)

l2304BC30:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2304BC34:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,16(a0)
	c.bnez	a0,000000002304BC40

l2304BC3C:
	c.li	a0,00000001
	c.sw	a5,16(a0)

l2304BC40:
	lw	t3,a5,+00000010
	lw	a6,a2,+00000000
	c.add	a6,t3
	lbu	a0,a6,+00000000
	sltu	t1,zero,a0
	c.add	t1,t3
	sw	t1,a5,+00000010
	c.lw	a2,0(a2)
	c.add	t1,a2
	lbu	a2,t1,+00000000
	c.bnez	a2,000000002304BC6A

l2304BC62:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	sw	zero,a5,+00000010

l2304BC6A:
	lbu	a4,a3,+00000000
	addi	a4,a4,-0000002B
	andi	a4,a4,+000000FD
	c.bnez	a4,000000002304BC7A

l2304BC78:
	c.addi	a3,00000001

l2304BC7A:
	c.li	a4,00000000

l2304BC7C:
	addi	a2,a4,+00000001
	c.add	a4,a3
	lbu	t1,a4,+00000000
	beq	t1,zero,000000002304BCB2

l2304BC8A:
	bne	a0,t1,000000002304BCAE

l2304BC8E:
	addi	t1,zero,+0000003A
	bne	a0,t1,000000002304BCB4

l2304BC96:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	bne	a3,a4,000000002304BD18

l2304BCA4:
	addi	a0,zero,+0000003F

l2304BCA8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2304BCAE:
	c.mv	a4,a2
	c.j	000000002304BC7C

l2304BCB2:
	c.bnez	a0,000000002304BC96

l2304BCB4:
	c.add	a2,a3
	lbu	t1,a2,+00000000
	addi	a2,zero,+0000003A
	bne	t1,a2,000000002304BCA8

l2304BCC2:
	sw	zero,a5,+00000000
	lbu	a4,a4,+00000002
	c.lw	a5,16(a2)
	bne	a4,t1,000000002304BCD2

l2304BCD0:
	c.beqz	a2,000000002304BCEA

l2304BCD2:
	c.lw	a5,4(a4)
	addi	t1,a4,+00000001
	c.slli	a4,02
	sw	t1,a5,+00000004
	c.add	a4,a7
	c.lw	a4,0(a4)
	sw	zero,a5,+00000010
	c.add	a4,a2
	c.sw	a5,0(a4)

l2304BCEA:
	c.lw	a5,4(a4)
	bge	a1,a4,000000002304BCA8

l2304BCF0:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	addi	a0,zero,+0000003A
	beq	a3,a4,000000002304BCA8

l2304BD02:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002304BCA4

l2304BD06:
	lui	a0,00023088
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	addi	a0,a0,-00000708
	c.j	000000002304BD2C

l2304BD18:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002304BCA4

l2304BD1C:
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	lui	a0,00023088
	addi	a0,a0,-00000728

l2304BD2C:
	jal	ra,0000000023052118
	c.j	000000002304BCA4

l2304BD32:
	c.jr	ra

;; Bl_F_fast.constprop.0: 2304BD34
;;   Called from:
;;     2304BE3A (in utils_wifi_psk_cal_fast_bin)
;;     2304BE58 (in utils_wifi_psk_cal_fast_bin)
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
	jal	ra,000000002307132C
	c.lwsp	a2,000000A4
	addi	a4,s0,+00000004
	c.mv	a2,s0
	c.mv	a1,a3
	c.mv	s4,a0
	c.mv	a0,s1
	c.swsp	a4,0000000C
	c.swsp	s1,0000008C
	jal	ra,0000000023070C7C
	c.lwsp	s0,000000E4
	add	a4,s1,s0
	sb	zero,a4,+00000000
	sb	a5,a4,+00000003
	sb	zero,a4,+00000001
	sb	zero,a4,+00000002
	jal	ra,00000000230354E0
	c.li	a6,00000014
	c.mv	a5,s2
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.jal	000000002304BFEC
	c.li	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s5
	c.lui	s0,00001000
	jal	ra,0000000023070C7C
	c.addi	s0,FFFFFFFF
	c.swsp	s2,0000008C
	c.li	s6,00000014

l2304BDAC:
	c.mv	a5,s1
	c.li	a6,00000014
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.swsp	s6,0000000C
	c.jal	000000002304BFEC
	c.li	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	c.li	a5,00000000

l2304BDCA:
	add	a3,s5,a5
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	lbu	a2,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s6,000000002304BDCA

l2304BDE6:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,000000002304BDAC

l2304BDEA:
	jal	ra,0000000023035556
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

;; utils_wifi_psk_cal_fast_bin: 2304BE02
;;   Called from:
;;     23011F5E (in pmkCacheGeneratePSK)
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
	jal	ra,000000002307132C
	addi	a5,zero,+0000003F
	bltu	a5,a0,000000002304BE6C

l2304BE22:
	addi	a5,zero,+00000020
	c.li	a0,FFFFFFFF
	blt	a5,s1,000000002304BE5E

l2304BE2C:
	c.mv	a6,s0
	c.li	a5,00000002
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000001C
	jal	ra,000000002304BD34
	c.li	a2,0000000C
	c.mv	a1,s0
	addi	a0,s0,+00000014
	jal	ra,0000000023070C7C
	c.addi4spn	a0,0000001C
	c.mv	a6,s0
	c.li	a5,00000001
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	jal	ra,000000002304BD34
	c.li	a0,00000000

l2304BE5E:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

l2304BE6C:
	c.li	a0,FFFFFFFF
	c.j	000000002304BE5E

;; utils_memp_init: 2304BE70
;;   Called from:
;;     23049526 (in ping_api_init)
utils_memp_init proc
	c.addi16sp	FFFFFFD0
	c.addi	a3,00000003
	c.swsp	s2,00000010
	andi	s2,a3,+000000FC
	slli	a5,s2,00000010
	c.swsp	s1,00000090
	c.srli	a5,00000010
	addi	s1,a1,+00000003
	c.add	s1,a5
	sub	a5,zero,a5
	c.and	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.swsp	s3,0000008C
	c.mv	s3,a0
	add	a0,s1,a2
	c.swsp	s0,00000014
	addi	a5,s2,+0000001F
	sub	s0,zero,s2
	c.and	s0,a5
	c.swsp	ra,00000094
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.add	a0,s0
	jal	ra,000000002303218A
	c.beqz	a0,000000002304BEFE

l2304BEB4:
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	add	a5,a0,s0
	c.sw	a0,20(a5)
	c.sw	a0,0(a1)
	c.sw	a0,4(a2)
	sw	zero,a0,+00000008
	sb	s2,a0,+0000000C
	c.sw	a0,16(s1)
	sw	zero,a0,+0000001C
	c.li	a4,00000000
	c.li	a3,00000000

l2304BED4:
	bne	a4,a2,000000002304BEF0

l2304BED8:
	c.sw	a0,28(a3)
	c.sw	a0,24(a3)
	sw	a0,s3,+00000000
	c.li	a0,00000000

l2304BEE2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304BEF0:
	c.addi	a4,00000001
	c.slli	a4,10
	c.sw	a5,0(a3)
	c.srli	a4,00000010
	c.mv	a3,a5
	c.add	a5,s1
	c.j	000000002304BED4

l2304BEFE:
	c.li	a0,FFFFFFFF
	c.j	000000002304BEE2

;; utils_memp_deinit: 2304BF02
;;   Called from:
;;     230491AC (in ping_free)
utils_memp_deinit proc
	c.beqz	a0,000000002304BF14

l2304BF04:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023032272
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304BF14:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_memp_malloc: 2304BF18
;;   Called from:
;;     2304926A (in ping_timeout)
utils_memp_malloc proc
	c.li	a5,00000000
	c.beqz	a0,000000002304BF3A

l2304BF1C:
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	c.li	a5,00000000
	beq	a4,a3,000000002304BF3A

l2304BF26:
	c.lw	a0,28(a5)
	c.beqz	a5,000000002304BF3A

l2304BF2A:
	c.lw	a5,0(a3)
	c.addi	a4,00000001
	c.sw	a0,8(a4)
	c.sw	a0,28(a3)
	addi	a4,zero,+000000A5
	c.sw	a5,0(a4)
	c.addi	a5,00000004

l2304BF3A:
	c.mv	a0,a5
	c.jr	ra

;; utils_memp_free: 2304BF3E
;;   Called from:
;;     230491E2 (in ping_free)
;;     2304922A (in ping_timeout)
;;     23049386 (in ping_timeout)
;;     23049462 (in ping_recv)
utils_memp_free proc
	c.mv	a5,a0
	addi	a3,a1,-00000004
	c.li	a0,FFFFFFFF
	c.beqz	a5,000000002304BF84

l2304BF48:
	c.beqz	a3,000000002304BF84

l2304BF4A:
	c.lw	a5,8(a4)
	c.beqz	a4,000000002304BF84

l2304BF4E:
	c.lw	a5,20(a4)
	bltu	a3,a4,000000002304BF84

l2304BF54:
	c.lw	a5,24(a2)
	bltu	a2,a3,000000002304BF84

l2304BF5A:
	c.lw	a5,16(a2)
	sub	a4,a3,a4
	and	a4,a4,a2
	c.bnez	a4,000000002304BF84

l2304BF66:
	lw	a2,a1,-00000004
	addi	a4,zero,+000000A5
	bne	a2,a4,000000002304BF84

l2304BF72:
	c.lw	a5,28(a4)
	c.li	a0,00000000
	sw	a4,a1,+00000FFC
	c.lw	a5,8(a4)
	c.sw	a5,28(a3)
	c.addi	a4,FFFFFFFF
	c.sw	a5,8(a4)
	c.jr	ra

l2304BF84:
	c.jr	ra

;; utils_tlv_bl_pack_auto: 2304BF86
;;   Called from:
;;     23023978 (in bl_send_cfg_task_req)
utils_tlv_bl_pack_auto proc
	c.li	a5,00000001
	beq	a2,a5,000000002304BF98

l2304BF8C:
	c.li	a5,00000007
	beq	a2,a5,000000002304BFAA

l2304BF92:
	c.li	a5,FFFFFFFE

l2304BF94:
	c.mv	a0,a5
	c.jr	ra

l2304BF98:
	lbu	a4,a3,+00000000

l2304BF9C:
	c.li	a3,00000003
	c.li	a5,FFFFFFFF
	bge	a3,a1,000000002304BF94

l2304BFA4:
	c.sw	a0,0(a4)
	c.li	a5,00000004
	c.j	000000002304BF94

l2304BFAA:
	c.lw	a3,0(a4)
	c.j	000000002304BF9C

;; utils_tlv_bl_unpack_auto: 2304BFAE
;;   Called from:
;;     2301F86C (in cfg_start_req_handler)
utils_tlv_bl_unpack_auto proc
	c.li	a5,00000001
	beq	a2,a5,000000002304BFBE

l2304BFB4:
	c.li	a5,00000007
	beq	a2,a5,000000002304BFD8

l2304BFBA:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2304BFBE:
	c.li	a5,00000003
	bge	a5,a1,000000002304BFD2

l2304BFC4:
	c.lw	a0,0(a5)
	c.li	a0,00000004
	sltu	a5,zero,a5

l2304BFCC:
	sb	a5,a3,+00000000
	c.jr	ra

l2304BFD2:
	c.li	a5,00000001
	c.li	a0,FFFFFFFF
	c.j	000000002304BFCC

l2304BFD8:
	c.li	a5,00000003
	bge	a5,a1,000000002304BFE6

l2304BFDE:
	c.lw	a0,0(a5)
	c.li	a0,00000004

l2304BFE2:
	c.sw	a3,0(a5)
	c.jr	ra

l2304BFE6:
	c.li	a5,00000000
	c.li	a0,FFFFFFFF
	c.j	000000002304BFE2

;; utils_hmac_sha1_fast: 2304BFEC
;;   Called from:
;;     2304BD98 (in Bl_F_fast.constprop.0)
;;     2304BDBC (in Bl_F_fast.constprop.0)
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
	bge	a5,a4,000000002304C046

l2304C02A:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355D0
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355EE
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	jal	ra,0000000023035602
	c.li	s1,00000014

l2304C046:
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

l2304C06C:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,000000002304C06C

l2304C084:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355D0
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355EE
	c.li	s3,00000000

l2304C09A:
	blt	s3,s7,000000002304C136

l2304C09E:
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023035602
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

l2304C0C4:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,000000002304C0C4

l2304C0DC:
	c.addi4spn	a0,0000005C
	c.li	a1,00000002
	jal	ra,00000000230355D0
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355EE
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,00000000230355EE
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,0000000023035602
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,0000000023070C7C
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

l2304C136:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,0000005C
	c.addi	s3,00000001
	jal	ra,00000000230355EE
	c.j	000000002304C09A

;; vfs_init: 2304C14E
;;   Called from:
;;     2300078E (in aos_loop_proc)
vfs_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-0000001C
	lbu	a4,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a5,00000000
	beq	a4,s1,000000002304C18C

l2304C16A:
	lui	a1,00042015
	addi	a1,a1,+00000490
	c.li	a0,00000001
	jal	ra,000000002302EDE0
	lui	a5,00042020
	sw	a0,a5,+00000ED8
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002304C18C

l2304C184:
	c.jal	000000002304C648
	c.li	a5,00000000
	sb	s1,s0,+00000000

l2304C18C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_open: 2304C198
;;   Called from:
;;     23000802 (in aos_loop_proc)
;;     2300138C (in aws_main_entry)
;;     2302B4C8 (in cat_cmd)
;;     2302B542 (in hexdump_cmd)
;;     2304D776 (in aos_event_service_init)
;;     23056C42 (in mbedtls_pk_load_file)
aos_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,000000002304C24C

l2304C1A8:
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,000000002307132C
	addi	a5,zero,+00000400
	bltu	a5,a0,000000002304C250

l2304C1B8:
	lui	s4,00042020
	lw	a0,s4,-00000128
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C256

l2304C1CC:
	c.mv	a0,s2
	c.jal	000000002304C684
	c.mv	s0,a0
	c.bnez	a0,000000002304C1F6

l2304C1D4:
	lw	a0,s4,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	s0,FFFFFFFE

l2304C1E4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304C1F6:
	sw	s3,a0,+0000000C
	c.jal	000000002304C5A8
	c.mv	s1,a0
	lw	a0,s4,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.beqz	s1,000000002304C25A

l2304C20E:
	c.lw	s0,0(a5)
	lbu	a3,s0,+00000010
	c.li	a4,00000003
	c.lw	a5,0(a5)
	bne	a3,a4,000000002304C230

l2304C21C:
	c.beqz	a5,000000002304C23A

l2304C21E:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2304C226:
	c.mv	s0,a0
	c.beqz	a0,000000002304C23A

l2304C22A:
	c.mv	a0,s1
	c.jal	000000002304C5EE
	c.j	000000002304C1E4

l2304C230:
	c.beqz	a5,000000002304C23A

l2304C232:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5
	c.j	000000002304C226

l2304C23A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.j	000000002304C606

l2304C24C:
	c.li	s0,FFFFFFEA
	c.j	000000002304C1E4

l2304C250:
	addi	s0,zero,-0000005B
	c.j	000000002304C1E4

l2304C256:
	c.li	s0,FFFFFFFF
	c.j	000000002304C1E4

l2304C25A:
	c.li	s0,FFFFFFE9
	c.j	000000002304C1E4

;; aos_close: 2304C25E
;;   Called from:
;;     2300174C (in aws_main_entry)
;;     2302B51C (in cat_cmd)
;;     2302B594 (in hexdump_cmd)
;;     23056C62 (in mbedtls_pk_load_file)
;;     23056CBA (in mbedtls_pk_load_file)
;;     23056CFE (in mbedtls_pk_load_file)
;;     23056D12 (in mbedtls_pk_load_file)
aos_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.jal	000000002304C622
	c.li	s0,FFFFFFFE
	c.beqz	a0,000000002304C2A4

l2304C26E:
	c.lw	a0,0(a4)
	c.mv	s1,a0
	c.li	s0,00000000
	c.lw	a4,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,000000002304C27E

l2304C27A:
	c.jalr	a5
	c.mv	s0,a0

l2304C27E:
	lui	s2,00042020
	lw	a0,s2,-00000128
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C2B2

l2304C292:
	c.mv	a0,s1
	c.jal	000000002304C5EE
	lw	a0,s2,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2304C2A4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304C2B2:
	c.li	s0,FFFFFFFF
	c.j	000000002304C2A4

;; aos_read: 2304C2B6
;;   Called from:
;;     2302B4DE (in cat_cmd)
;;     2302C824 (in console_cb_read)
;;     2304D714 (in event_read_cb)
;;     23056CF2 (in mbedtls_pk_load_file)
aos_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	000000002304C622
	c.beqz	a0,000000002304C2D8

l2304C2C2:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+00000008
	beq	t1,zero,000000002304C2E0

l2304C2D2:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2304C2D8:
	c.li	a0,FFFFFFFE

l2304C2DA:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304C2E0:
	c.li	a0,FFFFFFFF
	c.j	000000002304C2DA

;; aos_write: 2304C2E4
;;   Called from:
;;     2302B640 (in cli_putstr)
aos_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	000000002304C622
	c.beqz	a0,000000002304C306

l2304C2F0:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+0000000C
	beq	t1,zero,000000002304C30E

l2304C300:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2304C306:
	c.li	a0,FFFFFFFE

l2304C308:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304C30E:
	c.li	a0,FFFFFFFF
	c.j	000000002304C308

;; aos_ioctl: 2304C312
;;   Called from:
;;     230014A6 (in aws_main_entry)
;;     2302B574 (in hexdump_cmd)
;;     2304D7D6 (in aos_post_event)
aos_ioctl proc
	blt	a0,zero,000000002304C348

l2304C316:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	c.jal	000000002304C622
	c.beqz	a0,000000002304C34C

l2304C322:
	c.lw	a0,0(a4)
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	lbu	a3,a4,+00000010
	c.lw	a4,0(a5)
	c.li	a4,00000003
	bne	a3,a4,000000002304C342

l2304C334:
	lw	t1,a5,+00000044

l2304C338:
	beq	t1,zero,000000002304C354

l2304C33C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2304C342:
	lw	t1,a5,+00000010
	c.j	000000002304C338

l2304C348:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2304C34C:
	c.li	a0,FFFFFFFE

l2304C34E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304C354:
	addi	a0,zero,-00000058
	c.j	000000002304C34E

;; aos_lseek: 2304C35A
;;   Called from:
;;     23056C56 (in mbedtls_pk_load_file)
;;     23056C9C (in mbedtls_pk_load_file)
aos_lseek proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	000000002304C622
	c.beqz	a0,000000002304C386

l2304C366:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	lbu	a3,a5,+00000010
	bne	a3,a4,000000002304C38E

l2304C372:
	c.lw	a5,0(a5)
	lw	t1,a5,+00000010
	beq	t1,zero,000000002304C38E

l2304C37C:
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2304C386:
	c.li	a0,FFFFFFFE

l2304C388:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304C38E:
	addi	a0,zero,-00000058
	c.j	000000002304C388

;; aos_stat: 2304C394
;;   Called from:
;;     2302B922 (in ls_cmd)
;;     2302BA3E (in ls_cmd)
aos_stat proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002304C3C4

l2304C3A8:
	lui	s0,00042020
	c.mv	s1,a0
	lw	a0,s0,-00000128
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	c.mv	s2,s0
	beq	a0,a5,000000002304C3D8

l2304C3C2:
	c.li	s0,FFFFFFFF

l2304C3C4:
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

l2304C3D8:
	c.mv	a0,s1
	c.jal	000000002304C684
	c.mv	s5,a0
	c.bnez	a0,000000002304C3F2

l2304C3E0:
	lw	a0,s0,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	s0,FFFFFFED
	c.j	000000002304C3C4

l2304C3F2:
	c.jal	000000002304C5A8
	c.mv	s3,a0
	lw	a0,s0,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	s0,FFFFFFFE
	beq	s3,zero,000000002304C3C4

l2304C40A:
	lbu	a4,s5,+00000010
	c.li	a5,00000003
	addi	s0,zero,-00000058
	bne	a4,a5,000000002304C42A

l2304C418:
	lw	a5,s5,+00000000
	c.lw	a5,24(a5)
	c.beqz	a5,000000002304C42A

l2304C420:
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s3
	c.jalr	a5
	c.mv	s0,a0

l2304C42A:
	lw	a0,s2,-00000128
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C3C2

l2304C43A:
	c.mv	a0,s3
	c.jal	000000002304C5EE
	lw	a0,s2,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.j	000000002304C3C4

;; aos_opendir: 2304C44E
;;   Called from:
;;     2302B8D6 (in ls_cmd)
;;     2302B99C (in ls_cmd)
aos_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.bnez	a0,000000002304C462

l2304C45E:
	c.li	s0,00000000
	c.j	000000002304C490

l2304C462:
	lui	s3,00042020
	c.mv	s1,a0
	lw	a0,s3,-00000128
	c.li	a1,FFFFFFFF
	c.mv	s4,s3
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C45E

l2304C47A:
	c.mv	a0,s1
	c.jal	000000002304C684
	c.mv	s0,a0
	c.bnez	a0,000000002304C4A2

l2304C482:
	lw	a0,s3,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2304C490:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304C4A2:
	c.jal	000000002304C5A8
	c.mv	s2,a0
	lw	a0,s3,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	beq	s2,zero,000000002304C45E

l2304C4B8:
	lbu	a4,s0,+00000010
	c.li	a5,00000003
	beq	a4,a5,000000002304C4E6

l2304C4C2:
	lw	a0,s4,-00000128
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C45E

l2304C4D2:
	c.mv	a0,s2
	c.jal	000000002304C5EE
	lw	a0,s4,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.j	000000002304C45E

l2304C4E6:
	c.lw	s0,0(a5)
	c.lw	a5,36(a5)
	c.beqz	a5,000000002304C4C2

l2304C4EC:
	c.mv	a1,s1
	c.mv	a0,s2
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002304C4C2

l2304C4F6:
	c.mv	a0,s2
	c.jal	000000002304C606
	c.sw	s0,0(a0)
	c.j	000000002304C490

;; aos_closedir: 2304C4FE
;;   Called from:
;;     2302B946 (in ls_cmd)
aos_closedir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002304C55C

l2304C50C:
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	s0,FFFFFFFE
	c.jal	000000002304C622
	c.mv	s1,a0
	c.beqz	a0,000000002304C55C

l2304C51A:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	addi	s0,zero,-00000058
	lbu	a3,a5,+00000010
	c.lwsp	a2,00000064
	bne	a3,a4,000000002304C536

l2304C52C:
	c.lw	a5,0(a5)
	c.lw	a5,44(a5)
	c.beqz	a5,000000002304C536

l2304C532:
	c.jalr	a5
	c.mv	s0,a0

l2304C536:
	lui	s2,00042020
	lw	a0,s2,-00000128
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C56A

l2304C54A:
	c.mv	a0,s1
	c.jal	000000002304C5EE
	lw	a0,s2,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2304C55C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304C56A:
	c.li	s0,FFFFFFFF
	c.j	000000002304C55C

;; aos_readdir: 2304C56E
;;   Called from:
;;     2302B904 (in ls_cmd)
;;     2302B9CE (in ls_cmd)
aos_readdir proc
	c.beqz	a0,000000002304C5A4

l2304C570:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.jal	000000002304C622
	c.beqz	a0,000000002304C59C

l2304C57E:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	lbu	a3,a5,+00000010
	bne	a3,a4,000000002304C59C

l2304C58A:
	c.lw	a5,0(a5)
	lw	t1,a5,+00000028
	beq	t1,zero,000000002304C59C

l2304C594:
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2304C59C:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2304C5A4:
	c.li	a0,00000000
	c.jr	ra

;; new_file: 2304C5A8
;;   Called from:
;;     2304C1FA (in aos_open)
;;     2304C3F2 (in aos_stat)
;;     2304C4A2 (in aos_opendir)
new_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042015
	addi	a4,s0,+000004E0
	c.swsp	ra,00000084
	c.li	a5,00000000
	addi	s0,s0,+000004E0
	addi	a3,zero,+0000003C

l2304C5C0:
	c.lw	a4,0(a2)
	c.bnez	a2,000000002304C5E2

l2304C5C4:
	c.li	a4,0000000C
	add	a5,a5,a4
	c.add	s0,a5
	c.sw	s0,0(a0)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.jal	000000002304C750

l2304C5D8:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304C5E2:
	c.addi	a5,00000001
	c.addi	a4,0000000C
	bne	a5,a3,000000002304C5C0

l2304C5EA:
	c.li	s0,00000000
	c.j	000000002304C5D8

;; del_file: 2304C5EE
;;   Called from:
;;     2304C22C (in aos_open)
;;     2304C294 (in aos_close)
;;     2304C43C (in aos_stat)
;;     2304C4D4 (in aos_opendir)
;;     2304C54C (in aos_closedir)
del_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	000000002304C75C
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; get_fd: 2304C606
;;   Called from:
;;     2304C24A (in aos_open)
;;     2304C4F8 (in aos_opendir)
get_fd proc
	lui	a5,00042015
	addi	a5,a5,+000004E0
	c.sub	a0,a5
	lui	a5,000AAAAB
	addi	a5,a5,-00000555
	c.srai	a0,00000002
	add	a0,a0,a5
	c.addi	a0,00000002
	c.jr	ra

;; get_file: 2304C622
;;   Called from:
;;     2304C268 (in aos_close)
;;     2304C2BE (in aos_read)
;;     2304C2EC (in aos_write)
;;     2304C31E (in aos_ioctl)
;;     2304C362 (in aos_lseek)
;;     2304C514 (in aos_closedir)
;;     2304C57A (in aos_readdir)
;;     2304D0E6 (in aos_poll)
;;     2304D166 (in aos_poll)
get_file proc
	c.addi	a0,FFFFFFFE
	addi	a5,zero,+0000003B
	bltu	a5,a0,000000002304C644

l2304C62C:
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042015
	addi	a5,a5,+000004E0
	c.add	a5,a0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002304C646

l2304C640:
	c.mv	a0,a5
	c.jr	ra

l2304C644:
	c.li	a0,00000000

l2304C646:
	c.jr	ra

;; inode_init: 2304C648
;;   Called from:
;;     2304C184 (in vfs_init)
inode_init proc
	lui	a0,00042015
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000258
	c.li	a1,00000000
	addi	a0,a0,+000007B0
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; inode_alloc: 2304C666
;;   Called from:
;;     2304C796 (in inode_reserve)
inode_alloc proc
	lui	a5,00042015
	addi	a5,a5,+000007B0
	c.li	a0,00000000
	c.li	a4,0000001E

l2304C672:
	lbu	a3,a5,+00000010
	c.beqz	a3,000000002304C682

l2304C678:
	c.addi	a0,00000001
	c.addi	a5,00000014
	bne	a0,a4,000000002304C672

l2304C680:
	c.li	a0,FFFFFFF4

l2304C682:
	c.jr	ra

;; inode_open: 2304C684
;;   Called from:
;;     2304C1CE (in aos_open)
;;     2304C3DA (in aos_stat)
;;     2304C47C (in aos_opendir)
inode_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	addi	s0,s0,+000007B0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	addi	s5,s0,+00000258
	c.li	s6,00000003
	addi	s4,zero,+0000002F

l2304C6AA:
	lw	s2,s0,+00000008
	c.mv	s3,s0
	bne	s2,zero,000000002304C6D2

l2304C6B4:
	c.addi	s0,00000014
	bne	s0,s5,000000002304C6AA

l2304C6BA:
	c.li	s3,00000000

l2304C6BC:
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

l2304C6D2:
	lbu	a5,s0,+00000010
	beq	a5,s6,000000002304C6E6

l2304C6DA:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	jal	ra,0000000023071100
	c.bnez	a0,000000002304C6B4

l2304C6E4:
	c.j	000000002304C6BC

l2304C6E6:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230713B8
	c.bnez	a0,000000002304C6DA

l2304C6F8:
	c.lw	s0,8(a0)
	jal	ra,000000002307132C
	c.add	a0,s1
	lbu	a5,a0,+00000000
	bne	a5,s4,000000002304C6DA

l2304C708:
	c.j	000000002304C6BC

;; inode_forearch_name: 2304C70A
;;   Called from:
;;     2302BA88 (in ls_cmd)
inode_forearch_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	addi	s0,s0,+000007B0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s4,a1
	addi	s2,s0,+00000258
	c.li	s1,00000000

l2304C72A:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002304C738

l2304C72E:
	c.mv	a1,s0
	c.mv	a0,s4
	c.addi	s1,00000001
	c.jalr	s3
	c.bnez	a0,000000002304C73E

l2304C738:
	c.addi	s0,00000014
	bne	s0,s2,000000002304C72A

l2304C73E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; inode_ref: 2304C750
;;   Called from:
;;     2304C5D6 (in new_file)
inode_ref proc
	lbu	a5,a0,+00000011
	c.addi	a5,00000001
	sb	a5,a0,+00000011
	c.jr	ra

;; inode_unref: 2304C75C
;;   Called from:
;;     2304C5F8 (in del_file)
inode_unref proc
	lbu	a5,a0,+00000011
	c.beqz	a5,000000002304C768

l2304C762:
	c.addi	a5,FFFFFFFF
	sb	a5,a0,+00000011

l2304C768:
	c.jr	ra

;; inode_reserve: 2304C76A
;;   Called from:
;;     2304C828 (in aos_register_driver)
;;     2304C8AC (in aos_register_fs)
inode_reserve proc
	c.bnez	a0,000000002304C772

l2304C76C:
	c.li	a5,FFFFFFEA
	c.mv	a0,a5
	c.jr	ra

l2304C772:
	c.beqz	a1,000000002304C76C

l2304C774:
	sw	zero,a1,+00000000
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,000000002304C76C

l2304C784:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s4,a1
	c.mv	s1,a0
	jal	ra,000000002304C666
	c.mv	a5,a0
	blt	a0,zero,000000002304C7E4

l2304C7A0:
	c.li	a4,0000001D
	c.li	s0,00000000
	blt	a4,a0,000000002304C7B8

l2304C7A8:
	c.li	a4,00000014
	add	a5,a0,a4
	lui	s0,00042015
	addi	s0,s0,+000007B0
	c.add	s0,a5

l2304C7B8:
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.mv	s3,a0
	c.addi	a0,00000001
	jal	ra,000000002303218A
	c.mv	s2,a0
	c.li	a5,FFFFFFF4
	c.beqz	a0,000000002304C7E4

l2304C7CC:
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023070C7C
	sw	s2,s0,+00000008
	c.add	s2,s3
	sb	zero,s2,+00000000
	sw	s0,s4,+00000000
	c.li	a5,00000000

l2304C7E4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; aos_register_driver: 2304C7F6
;;   Called from:
;;     23035C2A (in dev_uart_init)
;;     2304D6F6 (in vfs_device_init)
aos_register_driver proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042020
	c.swsp	s5,00000088
	c.mv	s5,a0
	lw	a0,s1,-00000128
	c.swsp	s4,0000000C
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a2
	c.swsp	zero,00000084
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C868

l2304C822:
	c.mv	s2,a0
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	jal	ra,000000002304C76A
	c.mv	s0,a0
	c.bnez	a0,000000002304C840

l2304C830:
	c.lwsp	a2,000000E4
	sw	s4,a5,+00000000
	sb	s2,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s3,a5,+00000004

l2304C840:
	lw	a0,s1,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	a5,00000001
	beq	a0,a5,000000002304C86A

l2304C854:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,000000002304C85E

l2304C85A:
	jal	ra,0000000023032272

l2304C85E:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2304C868:
	c.li	s0,FFFFFFFF

l2304C86A:
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

;; aos_register_fs: 2304C87E
;;   Called from:
;;     2304A288 (in romfs_register)
aos_register_fs proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042020
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lw	a0,s1,-00000128
	c.swsp	s3,0000008C
	c.mv	s3,a1
	c.li	a1,FFFFFFFF
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a2
	c.swsp	zero,00000084
	jal	ra,000000002302F114
	c.li	a5,00000001
	bne	a0,a5,000000002304C8EE

l2304C8A8:
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,000000002304C76A
	c.mv	s0,a0
	c.bnez	a0,000000002304C8C6

l2304C8B4:
	c.lwsp	a2,000000E4
	c.li	a4,00000003
	sw	s3,a5,+00000000
	sb	a4,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s2,a5,+00000004

l2304C8C6:
	lw	a0,s1,-00000128
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	a5,00000001
	beq	a0,a5,000000002304C8F0

l2304C8DA:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,000000002304C8E4

l2304C8E0:
	jal	ra,0000000023032272

l2304C8E4:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2304C8EE:
	c.li	s0,FFFFFFFF

l2304C8F0:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; vfs_uart_open: 2304C902
vfs_uart_open proc
	c.bnez	a1,000000002304C912

l2304C904:
	c.li	a0,FFFFFFEA

l2304C906:
	c.jr	ra

l2304C908:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l2304C912:
	c.lw	a1,0(a5)
	c.beqz	a5,000000002304C904

l2304C916:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,000000002304C906

l2304C922:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	addi	a0,s0,+00000020
	jal	ra,000000002304D35E
	c.lw	s0,24(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002302F5DA
	c.sw	s0,16(a0)
	c.lw	s0,28(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002302F5DA
	c.lw	s0,16(a5)
	c.sw	s0,20(a0)
	c.beqz	a5,000000002304C908

l2304C94E:
	c.beqz	a0,000000002304C908

l2304C950:
	lui	a2,0002304D
	addi	a2,a2,-00000632
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023035D78
	lui	a2,0002304D
	c.mv	a0,s0
	addi	a2,a2,-00000684
	c.li	a1,00000001
	jal	ra,0000000023035D78
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023035C92

;; __uart_rx_irq: 2304C97C
__uart_rx_irq proc
	c.addi16sp	FFFFFFA0
	addi	a2,zero,+00000040
	c.li	a4,00000000
	c.addi4spn	a3,00000008
	c.addi4spn	a1,00000010
	c.swsp	s0,0000002C
	c.swsp	ra,000000AC
	c.mv	s0,a0
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023035CE2
	c.lwsp	s0,00000084
	c.beqz	a2,000000002304C9AC

l2304C99A:
	c.lw	s0,16(a0)
	c.addi4spn	a3,0000000C
	c.addi4spn	a1,00000010
	jal	ra,000000002302F8AC
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002304C9AC

l2304C9A8:
	jal	ra,0000000023030672

l2304C9AC:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002304C9C6

l2304C9B0:
	c.lw	s0,40(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,36(a5)
	c.lw	s0,44(a1)
	c.lw	s0,40(a0)
	c.jalr	a5

l2304C9C6:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; __uart_tx_irq: 2304C9CE
__uart_tx_irq proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.lw	a0,20(a0)
	c.addi4spn	a3,0000001C
	c.li	a2,00000001
	addi	a1,sp,+0000001B
	c.swsp	zero,0000008C
	jal	ra,000000002302FA5C
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002304C9F2

l2304C9EA:
	c.swsp	a0,00000084
	jal	ra,0000000023030672
	c.lwsp	a2,00000044

l2304C9F2:
	c.li	a5,00000001
	bne	a0,a5,000000002304CA0E

l2304C9F8:
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,sp,+0000001B
	c.mv	a0,s0
	jal	ra,0000000023035D24

l2304CA06:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2304CA0E:
	c.mv	a0,s0
	jal	ra,0000000023035C7E
	c.j	000000002304CA06

;; vfs_uart_close: 2304CA16
vfs_uart_close proc
	c.beqz	a0,000000002304CA52

l2304CA18:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002304CA52

l2304CA1C:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,000000002304CA60

l2304CA28:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	c.beqz	s0,000000002304CA56

l2304CA32:
	addi	a0,s0,+00000020
	jal	ra,000000002304D37E
	c.lw	s0,16(a0)
	jal	ra,000000002302F704
	c.lw	s0,20(a0)
	jal	ra,000000002302F704
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023035D58

l2304CA52:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2304CA56:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l2304CA60:
	c.jr	ra

;; vfs_uart_read: 2304CA62
vfs_uart_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002304CAC6

l2304CA76:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002304CAC6

l2304CA7C:
	lw	s3,a5,+00000004
	c.beqz	a2,000000002304CAC6

l2304CA82:
	beq	s3,zero,000000002304CAC6

l2304CA86:
	addi	s5,s3,+00000020
	c.mv	s4,a1
	c.mv	a0,s5
	c.li	a1,FFFFFFFF
	c.mv	s2,a2
	jal	ra,000000002304D384
	lbu	s1,s3,+00000034
	c.li	s0,00000000
	c.addi	s1,FFFFFFFF
	sltiu	s1,s1,+00000001
	sub	s1,zero,s1

l2304CAA6:
	lw	a0,s3,+00000010
	sub	a2,s2,s0
	add	a1,s4,s0
	c.mv	a3,s1
	jal	ra,000000002302F95E
	c.add	s0,a0
	beq	s0,s2,000000002304CAC0

l2304CABE:
	c.bnez	s1,000000002304CAA6

l2304CAC0:
	c.mv	a0,s5
	jal	ra,000000002304D39C

l2304CAC6:
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

;; vfs_uart_write: 2304CADA
vfs_uart_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002304CB04

l2304CAE6:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002304CB04

l2304CAEC:
	c.lw	a5,4(s1)
	c.beqz	s1,000000002304CB04

l2304CAF0:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	jal	ra,000000002302F786
	c.mv	s0,a0
	bge	zero,a0,000000002304CB04

l2304CAFE:
	c.mv	a0,s1
	jal	ra,0000000023035C6A

l2304CB04:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; vfs_uart_poll: 2304CB10
vfs_uart_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(a5)
	c.mv	s5,a1
	c.li	a1,FFFFFFFF
	c.lw	a5,4(s0)
	c.mv	s2,a2
	c.mv	s3,a3
	addi	s1,s0,+00000020
	c.mv	a0,s1
	c.mv	s4,a4
	jal	ra,000000002304D384
	bne	s5,zero,000000002304CB66

l2304CB3C:
	jal	ra,000000002303100A
	sw	zero,s0,+00000024
	sw	zero,s0,+0000002C
	jal	ra,000000002303101E

l2304CB4C:
	c.mv	a0,s1
	jal	ra,000000002304D39C
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

l2304CB66:
	jal	ra,000000002303100A
	sw	s2,s0,+00000024
	sw	s3,s0,+00000028
	sw	s4,s0,+0000002C
	jal	ra,000000002303101E
	c.lw	s0,16(a0)
	jal	ra,000000002302FB0E
	c.li	a5,00000001
	beq	a0,a5,000000002304CB4C

l2304CB86:
	c.lw	s0,40(a4)
	c.mv	a1,s4
	c.mv	a0,s3
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.jalr	s2
	c.j	000000002304CB4C

;; vfs_uart_sync: 2304CB9C
vfs_uart_sync proc
	c.beqz	a0,000000002304CBD6

l2304CB9E:
	c.lw	a0,0(a5)
	c.li	a0,FFFFFFEA
	c.beqz	a5,000000002304CBDA

l2304CBA4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a5,4(s0)
	c.beqz	s0,000000002304CBCC

l2304CBB0:
	addi	s1,s0,+00000020
	c.li	a1,FFFFFFFF
	c.mv	a0,s1
	jal	ra,000000002304D384
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230365D8
	c.mv	a0,s1
	jal	ra,000000002304D39C
	c.li	a0,00000000

l2304CBCC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304CBD6:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2304CBDA:
	c.jr	ra

;; uart_ioctl_cmd_waimode: 2304CBDC
uart_ioctl_cmd_waimode proc
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
	c.li	s0,FFFFFFEA
	c.beqz	a2,000000002304CC3C

l2304CBF6:
	lw	s2,a2,+00000008
	addi	a3,zero,+000003E8
	lw	s6,a2,+00000004
	add	s2,a3,s2
	c.mv	s1,a2
	c.mv	s5,a1
	c.mv	s4,a0
	c.li	s0,00000000
	addi	s7,zero,+000003E7
	c.li	s8,00000004
	srl	s3,s2,a3

l2304CC18:
	c.lw	s1,0(a1)
	lw	a0,s4,+00000010
	sub	a2,s6,s0
	c.add	a1,s0
	c.mv	a3,s3
	jal	ra,000000002302F95E
	c.add	s0,a0
	beq	s6,s0,000000002304CC3C

l2304CC30:
	bgeu	s7,s2,000000002304CC3C

l2304CC34:
	bne	s5,s8,000000002304CC18

l2304CC38:
	bge	zero,s0,000000002304CC18

l2304CC3C:
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

;; uart_ioctl_cmd_setconfig: 2304CC56
uart_ioctl_cmd_setconfig proc
	c.beqz	a1,000000002304CC7C

l2304CC58:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a1,+00000004
	c.li	a5,00000001
	beq	a2,a5,000000002304CC6E

l2304CC66:
	c.li	a5,00000002
	beq	a2,a5,000000002304CC6E

l2304CC6C:
	c.li	a2,00000000

l2304CC6E:
	c.lw	a1,0(a1)
	jal	ra,00000000230365F4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304CC7C:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; vfs_uart_ioctl: 2304CC80
vfs_uart_ioctl proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002304CCD2

l2304CC90:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002304CCD2

l2304CC96:
	c.lw	a5,4(s1)
	c.beqz	s1,000000002304CCD2

l2304CC9A:
	addi	s3,s1,+00000020
	c.mv	s2,a1
	c.mv	a0,s3
	c.li	a1,FFFFFFFF
	c.swsp	a2,00000084
	c.jal	000000002304D384
	addi	a5,s2,-00000002
	c.li	a4,00000006
	bltu	a4,a5,000000002304CCCE

l2304CCB2:
	lui	a4,00023088
	c.slli	a5,02
	addi	a4,a4,-000006E0
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lwsp	a2,00000084
	c.jr	a5
2304CCC4             CA 85 26 85 EF F0 5F F1 2A 84           ..&..._.*. 

l2304CCCE:
	c.mv	a0,s3
	c.jal	000000002304D39C

l2304CCD2:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
2304CCE2       81 45 26 85 EF 90 3E 8F 7D 54 CD B7 B2 85   .E&...>.}T....
2304CCF0 26 85 EF 90 BE 8F D5 BF B2 85 26 85 EF F0 BF F5 &.........&.....
2304CD00 F1 B7 85 47 23 8A F4 02 CD B7 89 47 E5 BF       ...G#......G.. 

;; get_context: 2304CD0E
;;   Called from:
;;     2304CD46 (in aos_loop_set_eventfd)
;;     2304CDEC (in aos_poll_read_fd)
;;     2304CECC (in aos_post_delayed_action)
;;     2304CF4C (in aos_loop_run)
get_context proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	addi	s1,s1,-00000018
	c.lw	s1,0(a0)
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.jal	000000002304D324
	c.bnez	a0,000000002304CD34

l2304CD24:
	lui	s0,0004200E
	addi	s0,s0,-00000014
	c.lw	s0,0(a1)
	c.lw	s1,0(a0)
	c.jal	000000002304D2E4
	c.lw	s0,0(a0)

l2304CD34:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_set_eventfd: 2304CD3E
;;   Called from:
;;     2304D79E (in aos_event_service_init)
aos_loop_set_eventfd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002304CD0E
	c.sw	a0,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_init: 2304CD54
;;   Called from:
;;     230007F4 (in aos_loop_proc)
aos_loop_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	lw	a0,s2,-00000018
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.jal	000000002304D324
	lw	a5,s1,-00000014
	addi	s3,s2,-00000018
	addi	s1,s1,-00000014
	c.bnez	a5,000000002304CDB0

l2304CD7C:
	addi	a0,s2,-00000018
	c.jal	000000002304D280

l2304CD82:
	c.li	a0,0000001C
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.beqz	a0,000000002304CD94

l2304CD8C:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2304CD94:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002304CD9A

l2304CD98:
	c.sw	s1,0(s0)

l2304CD9A:
	c.sw	s0,0(s0)
	lw	a0,s3,+00000000
	c.li	a5,FFFFFFFF
	c.sw	s0,16(a5)
	c.mv	a1,s0
	c.sw	s0,4(s0)
	c.jal	000000002304D2E4
	jal	ra,000000002304D766
	c.j	000000002304CDC0

l2304CDB0:
	c.mv	s0,a0
	c.beqz	a0,000000002304CD82

l2304CDB4:
	lui	a0,00023088
	addi	a0,a0,-000006A8
	jal	ra,0000000023052118

l2304CDC0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; aos_poll_read_fd: 2304CDD0
;;   Called from:
;;     2300082E (in aos_loop_proc)
;;     2304D798 (in aos_event_service_init)
aos_poll_read_fd proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s8,00000004
	c.mv	s6,a1
	c.mv	s7,a2
	jal	ra,000000002304CD0E
	blt	s2,zero,000000002304CEB2

l2304CDF4:
	lbu	s5,a0,+00000016
	c.li	s8,0000000C
	c.mv	s0,a0
	addi	s4,s5,+00000001
	add	s3,s4,s8
	c.mv	a0,s3
	jal	ra,000000002303218A
	c.mv	s1,a0
	slli	a0,s4,00000003
	jal	ra,000000002303218A
	c.mv	s4,a0
	c.beqz	s1,000000002304CE1A

l2304CE18:
	c.bnez	a0,000000002304CE4C

l2304CE1A:
	lui	a0,00023088
	addi	a0,a0,-0000067C
	jal	ra,0000000023052118
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.mv	a0,s4
	jal	ra,0000000023032272
	c.li	a0,FFFFFFF4

l2304CE34:
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

l2304CE4C:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s2
	c.jal	000000002304D18A
	c.lui	a2,00004000
	c.or	a2,a0
	c.li	a1,00000004
	c.mv	a0,s2
	c.jal	000000002304D18A
	add	a2,s5,s8
	lbu	a5,s0,+00000016
	c.lw	s0,12(a1)
	c.mv	a0,s1
	c.addi	a5,00000001
	sb	a5,s0,+00000016
	c.addi	s3,FFFFFFF4
	jal	ra,0000000023070C7C
	c.lw	s0,12(a0)
	jal	ra,0000000023032272
	c.lw	s0,8(a1)
	c.sw	s0,12(s1)
	slli	a2,s5,00000003
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.lw	s0,8(a0)
	c.add	s1,s3
	jal	ra,0000000023032272
	sw	s4,s0,+00000008
	sw	s2,s1,+00000000
	sw	s7,s1,+00000004
	sw	s6,s1,+00000008
	lhu	a5,s0,+00000014
	c.li	a0,00000000
	bge	a5,s2,000000002304CE34

l2304CEAC:
	sh	s2,s0,+00000014
	c.j	000000002304CE34

l2304CEB2:
	c.li	a0,FFFFFFEA
	c.j	000000002304CE34

;; aos_post_delayed_action: 2304CEB6
;;   Called from:
;;     23025856 (in event_cb_wifi_event_mgmr)
;;     23025880 (in trigger_auto_denoise)
aos_post_delayed_action proc
	c.beqz	a1,000000002304CF36

l2304CEB8:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s1,a0
	jal	ra,000000002304CD0E
	c.mv	s4,a0
	addi	a0,zero,+00000020
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.li	a0,FFFFFFF4
	c.beqz	s0,000000002304CF22

l2304CEE0:
	c.jal	000000002304D43C
	srai	a5,s1,0000001F
	c.add	a0,s1
	c.add	a1,a5
	sltu	a4,a0,s1
	c.add	a4,a1
	c.sw	s0,8(a0)
	c.sw	s0,12(a4)
	sw	s3,s0,+00000010
	sw	s2,s0,+00000014
	c.sw	s0,24(s1)
	lw	a5,s4,+00000004

l2304CF02:
	beq	a5,s4,000000002304CF16

l2304CF06:
	c.lw	a5,12(a3)
	blt	a4,a3,000000002304CF16

l2304CF0C:
	bne	a3,a4,000000002304CF32

l2304CF10:
	c.lw	a5,8(a3)
	bgeu	a0,a3,000000002304CF32

l2304CF16:
	c.lw	a5,0(a4)
	c.sw	s0,4(a5)
	c.li	a0,00000000
	c.sw	s0,0(a4)
	c.sw	a4,4(s0)
	c.sw	a5,0(s0)

l2304CF22:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304CF32:
	c.lw	a5,4(a5)
	c.j	000000002304CF02

l2304CF36:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; aos_loop_run: 2304CF3A
;;   Called from:
;;     23000888 (in aos_loop_proc)
aos_loop_run proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s6,00000000
	jal	ra,000000002304CD0E
	c.mv	s0,a0
	c.li	s3,0000000C
	c.li	s4,00000001
	c.li	s5,00000004

l2304CF58:
	lbu	a5,s0,+00000018
	c.bnez	a5,000000002304CF6C

l2304CF5E:
	c.lw	s0,4(s1)
	lbu	s2,s0,+00000016
	bne	s0,s1,000000002304CF84

l2304CF68:
	bne	s2,zero,000000002304CF84

l2304CF6C:
	sb	zero,s0,+00000018
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

l2304CF84:
	c.li	a2,FFFFFFFF
	beq	s0,s1,000000002304CF9E

l2304CF8A:
	c.jal	000000002304D43C
	c.lw	s1,12(a5)
	c.lw	s1,8(a2)
	blt	a1,a5,000000002304CF9C

l2304CF94:
	bne	a5,a1,000000002304CFD8

l2304CF98:
	bgeu	a0,a2,000000002304CFD8

l2304CF9C:
	c.sub	a2,a0

l2304CF9E:
	c.li	a5,00000000

l2304CFA0:
	c.lw	s0,8(a0)
	blt	a5,s2,000000002304CFDC

l2304CFA6:
	c.mv	a1,s2
	c.jal	000000002304D058
	c.mv	s6,a0
	bge	a0,zero,000000002304CFFA

l2304CFB0:
	jal	ra,0000000023070B08
	c.lw	a0,0(a5)
	beq	a5,s5,000000002304CFFA

l2304CFBA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00023088
	addi	a0,a0,-0000068C
	c.addi16sp	00000020
	jal	zero,0000000023052118

l2304CFD8:
	c.li	a2,00000000
	c.j	000000002304CF9E

l2304CFDC:
	add	a4,a5,s3
	c.lw	s0,12(a3)
	slli	a1,a5,00000003
	c.add	a0,a1
	c.addi	a5,00000001
	c.add	a3,a4
	c.lw	a3,0(a4)
	c.sw	a0,0(a4)
	c.lw	s0,8(a4)
	c.add	a4,a1
	sh	s4,a4,+00000004
	c.j	000000002304CFA0

l2304CFFA:
	c.lw	s0,4(s1)
	beq	s0,s1,000000002304D026

l2304D000:
	c.jal	000000002304D43C
	c.lw	s1,12(a5)
	blt	a1,a5,000000002304D026

l2304D008:
	bne	a5,a1,000000002304D012

l2304D00C:
	c.lw	s1,8(a5)
	bltu	a0,a5,000000002304D026

l2304D012:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s1,16(a0)
	c.lw	s1,20(a5)
	c.jalr	a5
	c.mv	a0,s1
	jal	ra,0000000023032272

l2304D026:
	c.li	s1,00000000
	bge	zero,s6,000000002304CF58

l2304D02C:
	beq	s1,s2,000000002304CF58

l2304D030:
	c.lw	s0,8(a5)
	slli	a4,s1,00000003
	c.add	a5,a4
	lhu	a5,a5,+00000006
	c.andi	a5,00000001
	c.beqz	a5,000000002304D050

l2304D040:
	add	a5,s1,s3
	c.lw	s0,12(a4)
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.lw	a5,4(a1)
	c.lw	a5,0(a0)
	c.jalr	a4

l2304D050:
	c.addi	s1,00000001
	c.j	000000002304D02C

;; vfs_poll_notify: 2304D054
vfs_poll_notify proc
	c.mv	a0,a1
	c.j	000000002304D400

;; aos_poll: 2304D058
;;   Called from:
;;     2304CFA8 (in aos_loop_run)
aos_poll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a1
	c.addi4spn	a0,00000004
	c.li	a1,00000000
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s3,a2
	c.jal	000000002304D3BA
	c.li	a5,00000000
	c.li	a4,00000008

l2304D07C:
	c.addi4spn	a3,00000008
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002304D07C

l2304D08A:
	addi	s1,s0,+00000006
	c.mv	a4,s1
	c.li	a5,00000000

l2304D092:
	blt	a5,s2,000000002304D0B6

l2304D096:
	c.mv	s6,s0
	c.li	s7,00000000
	c.li	s4,00000001
	lui	s5,0002304D

l2304D0A0:
	blt	s7,s2,000000002304D0C0

l2304D0A4:
	c.mv	a1,s3
	bge	s3,zero,000000002304D0AC

l2304D0AA:
	c.li	a1,FFFFFFFF

l2304D0AC:
	c.addi4spn	a0,00000004
	c.jal	000000002304D3E0
	c.li	a3,00000000
	c.li	a2,00000001
	c.j	000000002304D12A

l2304D0B6:
	sh	zero,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000008
	c.j	000000002304D092

l2304D0C0:
	lw	a0,s6,+00000000
	blt	s4,a0,000000002304D0E6

l2304D0C8:
	srli	a5,a0,00000005
	c.addi4spn	a4,00000010
	c.slli	a5,02
	c.add	a5,a4
	lw	a4,a5,-00000008
	sll	a0,s4,a0
	c.or	a0,a4
	sw	a0,a5,+00000FF8

l2304D0E0:
	c.addi	s7,00000001
	c.addi	s6,00000008
	c.j	000000002304D0A0

l2304D0E6:
	jal	ra,000000002304C622
	c.beqz	a0,000000002304D15C

l2304D0EC:
	c.lw	a0,0(a5)
	c.addi4spn	a4,00000004
	c.mv	a3,s6
	c.lw	a5,0(a5)
	addi	a2,s5,+00000054
	c.li	a1,00000001
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	000000002304D0E0

l2304D100:
	lw	a5,s1,-00000006
	c.addi4spn	a1,00000010
	srli	a4,a5,00000005
	c.slli	a4,02
	c.add	a4,a1
	lw	a4,a4,-00000008
	sll	a5,a2,a5
	c.and	a5,a4
	c.beqz	a5,000000002304D126

l2304D11A:
	lhu	a5,s1,+00000000
	ori	a5,a5,+00000001
	sh	a5,s1,+00000000

l2304D126:
	c.addi	a3,00000001
	c.addi	s1,00000008

l2304D12A:
	blt	a3,s2,000000002304D100

l2304D12E:
	c.li	s4,00000000

l2304D130:
	c.li	s1,00000000
	c.li	s3,00000000
	c.li	s5,00000001

l2304D136:
	blt	s3,s2,000000002304D160

l2304D13A:
	c.addi4spn	a0,00000004
	c.jal	000000002304D3D6
	beq	s4,zero,000000002304D144

l2304D142:
	c.li	s1,00000000

l2304D144:
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
	c.addi16sp	00000040
	c.jr	ra

l2304D15C:
	c.li	s4,FFFFFFFF
	c.j	000000002304D130

l2304D160:
	c.lw	s0,0(a0)
	bge	s5,a0,000000002304D184

l2304D166:
	jal	ra,000000002304C622
	c.beqz	a0,000000002304D184

l2304D16C:
	c.lw	a0,0(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.lw	a5,0(a5)
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a5,20(a5)
	c.jalr	a5
	lh	a5,s0,+00000006
	c.beqz	a5,000000002304D184

l2304D182:
	c.addi	s1,00000001

l2304D184:
	c.addi	s3,00000001
	c.addi	s0,00000008
	c.j	000000002304D136

;; aos_fcntl: 2304D18A
;;   Called from:
;;     2304CE52 (in aos_poll_read_fd)
;;     2304CE5C (in aos_poll_read_fd)
aos_fcntl proc
	c.li	a5,FFFFFFEA
	blt	a0,zero,000000002304D19A

l2304D190:
	c.li	a4,00000001
	c.li	a5,00000000
	blt	a4,a0,000000002304D19A

l2304D198:
	c.li	a5,FFFFFFFE

l2304D19A:
	c.mv	a0,a5
	c.jr	ra

;; dfl_entry: 2304D19E
dfl_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,8(s1)
	c.lw	a0,4(s0)
	jal	ra,0000000023032272
	c.mv	a0,s1
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023030064

;; aos_task_new: 2304D1C0
;;   Called from:
;;     2302B49E (in ota_cmd)
;;     23048070 (in tcpclient_cmd)
;;     23048562 (in iperf_server_udp_entry)
;;     23048596 (in iperf_client_udp_entry)
;;     230485CA (in iperf_server_entry)
;;     230485FE (in iperf_client_tcp_entry)
aos_task_new proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,zero,+0000009C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.mv	s3,a3
	c.mv	s5,a2
	c.swsp	s6,00000000
	c.mv	s6,a1
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.li	a0,0000000C
	jal	ra,000000002303218A
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002303218A
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	s2,a0
	jal	ra,0000000023070EB8
	addi	a2,zero,+0000009C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.li	a5,FFFFFFF0
	c.sw	s0,96(a5)
	c.li	a2,0000001F
	c.mv	a1,s4
	sw	s2,s0,+00000074
	addi	a0,s0,+00000078
	jal	ra,00000000230714A8
	lui	a5,00020171
	addi	a5,a5,+00000020
	sw	a5,s0,+00000098
	lui	a0,0002304D
	c.sw	s1,0(s0)
	sw	s6,s1,+00000004
	sw	s5,s1,+00000008
	c.mv	a6,s0
	c.mv	a5,s2
	c.li	a4,0000000A
	c.mv	a3,s1
	srli	a2,s3,00000002
	c.mv	a1,s4
	addi	a0,a0,+0000019E
	jal	ra,000000002302FF48
	c.bnez	a0,000000002304D276

l2304D24E:
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.li	a0,FFFFFFFF

l2304D262:
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

l2304D276:
	c.li	a0,00000000
	c.j	000000002304D262

;; aos_task_exit: 2304D27A
;;   Called from:
;;     2302B4A4 (in tftp_ota_thread)
aos_task_exit proc
	c.li	a0,00000000
	jal	zero,0000000023030064

;; aos_task_key_create: 2304D280
;;   Called from:
;;     2304CD80 (in aos_loop_init)
aos_task_key_create proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023030D24
	lw	a4,a0,+00000098
	lui	a5,00020171
	addi	a5,a5,+00000020
	bne	a4,a5,000000002304D2E0

l2304D29C:
	c.lw	a0,96(a5)
	andi	a4,a5,+00000001
	c.beqz	a4,000000002304D2CE

l2304D2A4:
	andi	a4,a5,+00000002
	c.beqz	a4,000000002304D2D4

l2304D2AA:
	andi	a4,a5,+00000004
	c.beqz	a4,000000002304D2DA

l2304D2B0:
	andi	a3,a5,+00000008
	c.li	a4,FFFFFFFF
	c.bnez	a3,000000002304D2C4

l2304D2B8:
	c.li	a4,00000003
	c.li	a3,00000008

l2304D2BC:
	c.or	a5,a3
	c.sw	a0,96(a5)
	c.sw	s0,0(a4)
	c.li	a4,00000000

l2304D2C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l2304D2CE:
	c.li	a4,00000000
	c.li	a3,00000001
	c.j	000000002304D2BC

l2304D2D4:
	c.li	a4,00000001
	c.li	a3,00000002
	c.j	000000002304D2BC

l2304D2DA:
	c.li	a4,00000002
	c.li	a3,00000004
	c.j	000000002304D2BC

l2304D2E0:
	c.li	a4,FFFFFFFF
	c.j	000000002304D2C4

;; aos_task_setspecific: 2304D2E4
;;   Called from:
;;     2304CD30 (in get_context)
;;     2304CDA8 (in aos_loop_init)
aos_task_setspecific proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,0000000023030D24
	c.li	a4,00000003
	bltu	a4,s0,000000002304D320

l2304D2F8:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bne	a3,a4,000000002304D318

l2304D30C:
	c.addi	s0,00000018
	c.lwsp	a2,00000064
	c.slli	s0,02
	c.add	s0,a5
	c.sw	s0,4(a1)
	c.li	a0,00000000

l2304D318:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304D320:
	c.li	a0,FFFFFFFF
	c.j	000000002304D318

;; aos_task_getspecific: 2304D324
;;   Called from:
;;     2304CD20 (in get_context)
;;     2304CD6C (in aos_loop_init)
aos_task_getspecific proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023030D24
	c.li	a4,00000003
	bltu	a4,s0,000000002304D35A

l2304D336:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a3,a4,000000002304D352

l2304D34A:
	c.addi	s0,00000018
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,4(a0)

l2304D352:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304D35A:
	c.li	a0,00000000
	c.j	000000002304D352

;; aos_mutex_new: 2304D35E
;;   Called from:
;;     23035CA0 (in hal_uart_init)
;;     2304C92E (in vfs_uart_open)
;;     2304D4F0 (in event_open)
aos_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302EE60
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; aos_mutex_free: 2304D37E
;;   Called from:
;;     23035D6A (in hal_uart_finalize)
;;     2304CA36 (in vfs_uart_close)
;;     2304D5FE (in event_close)
aos_mutex_free proc
	c.lw	a0,0(a0)
	jal	zero,000000002302F310

;; aos_mutex_lock: 2304D384
;;   Called from:
;;     2304CA92 (in vfs_uart_read)
;;     2304CB34 (in vfs_uart_poll)
;;     2304CBB8 (in vfs_uart_sync)
;;     2304CCA6 (in vfs_uart_ioctl)
;;     2304D48C (in event_poll)
;;     2304D52A (in _event_write.isra.0)
;;     2304D664 (in event_read)
aos_mutex_lock proc
	c.beqz	a0,000000002304D398

l2304D386:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002302F114
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304D398:
	c.li	a0,00000000
	c.jr	ra

;; aos_mutex_unlock: 2304D39C
;;   Called from:
;;     2304CAC2 (in vfs_uart_read)
;;     2304CB4E (in vfs_uart_poll)
;;     2304CBC6 (in vfs_uart_sync)
;;     2304CCD0 (in vfs_uart_ioctl)
;;     2304D4A2 (in event_poll)
;;     2304D58E (in _event_write.isra.0)
;;     2304D6AC (in event_read)
aos_mutex_unlock proc
	c.beqz	a0,000000002304D3B6

l2304D39E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304D3B6:
	c.li	a0,00000000
	c.jr	ra

;; aos_sem_new: 2304D3BA
;;   Called from:
;;     2304D076 (in aos_poll)
aos_sem_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,zero,+00000080
	c.swsp	ra,00000084
	jal	ra,000000002302EC50
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_sem_free: 2304D3D6
;;   Called from:
;;     2304D13C (in aos_poll)
aos_sem_free proc
	c.beqz	a0,000000002304D3DE

l2304D3D8:
	c.lw	a0,0(a0)
	jal	zero,000000002302F310

l2304D3DE:
	c.jr	ra

;; aos_sem_wait: 2304D3E0
;;   Called from:
;;     2304D0AE (in aos_poll)
aos_sem_wait proc
	c.beqz	a0,000000002304D3FC

l2304D3E2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002302F114
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l2304D3FC:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; aos_sem_signal: 2304D400
;;   Called from:
;;     2304D056 (in vfs_poll_notify)
aos_sem_signal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.beqz	a0,000000002304D422

l2304D408:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.lw	a0,0(a0)
	c.beqz	a5,000000002304D428

l2304D414:
	c.addi4spn	a1,0000000C
	jal	ra,000000002302EF4E
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002304D422

l2304D41E:
	jal	ra,0000000023030672

l2304D422:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2304D428:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.j	000000002304D422

;; aos_malloc: 2304D434
;;   Called from:
;;     2302B5AC (in aos_cli_init)
;;     2302B858 (in proc_onecmd)
;;     23049E2A (in romfs_opendir)
;;     2304D4DE (in event_open)
;;     2304D5AA (in _event_write.isra.0)
;;     2304D7F4 (in aos_register_event_filter)
aos_malloc proc
	jal	zero,000000002303218A

;; aos_free: 2304D438
;;   Called from:
;;     2302B82A (in proc_onecmd)
;;     23049A1E (in romfs_closedir)
;;     23049E86 (in romfs_opendir)
;;     2304D618 (in event_close)
;;     2304D630 (in event_close)
;;     2304D63E (in event_close)
;;     2304D6C4 (in event_read)
aos_free proc
	jal	zero,0000000023032272

;; aos_now_ms: 2304D43C
;;   Called from:
;;     2300098C (in _connect_wifi)
;;     23000A98 (in _connect_wifi)
;;     23000B88 (in _connect_wifi)
;;     23000D2C (in event_cb_wifi_event)
;;     23000D54 (in event_cb_wifi_event)
;;     23000FAE (in event_cb_wifi_event)
;;     2302BAB8 (in uptime_cmd)
;;     23033E92 (in sec_trng_IRQHandler)
;;     2304CEE0 (in aos_post_delayed_action)
;;     2304CF8A (in aos_loop_run)
;;     2304D000 (in aos_loop_run)
aos_now_ms proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,00000000230302F2
	c.li	a5,00000001
	beq	a0,a5,000000002304D454

l2304D452:
	c.j	000000002304D452

l2304D454:
	c.lwsp	a2,000000A4
	c.li	a4,FFFFFFFF
	c.lwsp	s0,00000044
	sltu	a4,a4,a3
	sub	a5,zero,a3
	c.lwsp	t3,00000020
	c.add	a0,a5
	srli	a1,a3,0000001F
	sltu	a5,a0,a5
	c.addi16sp	00000020
	c.add	a1,a4
	c.add	a1,a5
	c.jr	ra

;; event_poll: 2304D476
event_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,4(s0)
	c.mv	s1,a1
	c.li	a1,FFFFFFFF
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	a4,00000080
	jal	ra,000000002304D384
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.bnez	s1,000000002304D4B2

l2304D498:
	sw	zero,s0,+00000004
	sw	zero,s0,+0000000C

l2304D4A0:
	c.mv	a0,s0
	jal	ra,000000002304D39C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2304D4B2:
	c.lw	s0,16(a5)
	c.sw	s0,4(a2)
	c.sw	s0,8(a3)
	c.sw	s0,12(a4)
	c.beqz	a5,000000002304D4A0

l2304D4BC:
	lhu	a5,a3,+00000006
	c.mv	a1,a4
	c.mv	a0,a3
	ori	a5,a5,+00000001
	sh	a5,a3,+00000006
	c.jalr	a2
	c.j	000000002304D4A0

;; event_open: 2304D4D0
event_open proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000028
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	jal	ra,000000002304D434
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	c.mv	a0,s0
	jal	ra,000000002304D35E
	addi	a5,s0,+00000014
	c.sw	s0,20(a5)
	c.sw	s0,24(a5)
	addi	a5,s0,+00000020
	c.sw	s0,32(a5)
	c.sw	s0,36(a5)
	c.sw	s1,4(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; _event_write.isra.0: 2304D512
;;   Called from:
;;     2304D5E2 (in event_ioctl)
;;     2304D5EE (in event_write)
_event_write.isra.0 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s3,a3
	jal	ra,000000002304D384
	c.lwsp	a2,00000084
	c.lw	s0,28(a5)
	c.mv	s2,a2
	bge	zero,a5,000000002304D5A4

l2304D538:
	c.lw	s0,36(s1)
	c.lw	s1,8(a5)
	bne	a2,a5,000000002304D5A4

l2304D540:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s0,28(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,28(a5)

l2304D54E:
	c.lw	s0,16(a5)
	c.mv	a1,s4
	addi	a0,s1,+0000000C
	c.addi	a5,00000001
	c.sw	s0,16(a5)
	c.sw	s1,8(a2)
	jal	ra,0000000023070C7C
	addi	a4,s0,+00000014
	beq	s3,zero,000000002304D5B8

l2304D568:
	c.lw	s0,24(a5)
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,24(s1)
	c.sw	a5,0(s1)

l2304D572:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002304D58C

l2304D576:
	c.lw	s0,8(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,4(a5)
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	c.jalr	a5

l2304D58C:
	c.mv	a0,s0
	jal	ra,000000002304D39C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304D5A4:
	addi	a0,a2,+0000000C
	c.swsp	a2,00000084
	jal	ra,000000002304D434
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,000000002304D54E

l2304D5B4:
	c.li	s2,FFFFFFFF
	c.j	000000002304D58C

l2304D5B8:
	c.lw	s0,20(a5)
	c.sw	s1,4(a4)
	c.sw	s1,0(a5)
	c.sw	a5,4(s1)
	c.sw	s0,20(s1)
	c.j	000000002304D572

;; event_ioctl: 2304D5C4
event_ioctl proc
	c.mv	a5,a1
	c.li	a4,00000001
	c.mv	a1,a2
	srai	a2,a5,00000004
	c.andi	a5,0000000F
	beq	a5,a4,000000002304D5DE

l2304D5D4:
	c.li	a4,00000002
	beq	a5,a4,000000002304D5E6

l2304D5DA:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2304D5DE:
	c.li	a3,00000000

l2304D5E0:
	c.lw	a0,4(a0)
	jal	zero,000000002304D512

l2304D5E6:
	c.li	a3,00000001
	c.j	000000002304D5E0

;; event_write: 2304D5EA
event_write proc
	c.lw	a0,4(a0)
	c.li	a3,00000000
	jal	zero,000000002304D512

;; event_close: 2304D5F2
event_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,4(s0)
	c.mv	a0,s0
	jal	ra,000000002304D37E
	addi	s1,s0,+00000014

l2304D606:
	c.lw	s0,24(a0)
	bne	a0,s1,000000002304D628

l2304D60C:
	addi	s1,s0,+00000020

l2304D610:
	c.lw	s0,36(a0)
	bne	a0,s1,000000002304D636

l2304D616:
	c.mv	a0,s0
	jal	ra,000000002304D438
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304D628:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,000000002304D438
	c.j	000000002304D606

l2304D636:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,000000002304D438
	c.j	000000002304D610

;; event_read: 2304D644
event_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a0,4(s0)
	lw	s2,s0,+00000010
	beq	s2,zero,000000002304D6B0

l2304D65C:
	c.mv	s4,a1
	c.mv	a0,s0
	c.li	a1,FFFFFFFF
	c.mv	s3,a2
	jal	ra,000000002304D384
	c.lw	s0,24(s1)
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	s2,s1,+00000008
	bgeu	s3,s2,000000002304D67C

l2304D67A:
	c.mv	s2,s3

l2304D67C:
	c.mv	a2,s2
	addi	a1,s1,+0000000C
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.lw	s0,28(a4)
	c.li	a5,00000003
	blt	a5,a4,000000002304D6C2

l2304D690:
	c.lw	s0,36(a5)
	addi	a4,s0,+00000020
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,36(s1)
	c.sw	a5,0(s1)
	c.lw	s0,28(a5)
	c.addi	a5,00000001
	c.sw	s0,28(a5)

l2304D6A4:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	c.addi	a5,FFFFFFFF
	c.sw	s0,16(a5)
	jal	ra,000000002304D39C

l2304D6B0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304D6C2:
	c.mv	a0,s1
	jal	ra,000000002304D438
	c.j	000000002304D6A4

;; vfs_device_init: 2304D6CA
;;   Called from:
;;     23000792 (in aos_loop_proc)
vfs_device_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000010
	c.lw	s0,0(a5)
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a0,00000000
	beq	a5,s1,000000002304D6FE

l2304D6E4:
	lui	a1,00023088
	lui	a0,00023088
	c.li	a2,00000000
	addi	a1,a1,-00000668
	addi	a0,a0,-0000064C
	jal	ra,000000002304C7F6
	c.bnez	a0,000000002304D6FE

l2304D6FC:
	c.sw	s0,0(s1)

l2304D6FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; event_read_cb: 2304D708
event_read_cb proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,000000002304C2B6
	c.li	a5,00000010
	bne	a0,a5,000000002304D730

l2304D71E:
	lhu	a4,sp,+00000004
	addi	a5,zero,+00000100
	bne	a4,a5,000000002304D73A

l2304D72A:
	c.lwsp	a2,00000044
	c.lwsp	s0,000000E4
	c.jalr	a5

l2304D730:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304D73A:
	lui	a5,0004200E
	addi	a4,a5,-000006AC
	c.lw	a4,4(s0)
	addi	s1,a5,-000006AC

l2304D748:
	beq	s0,s1,000000002304D730

l2304D74C:
	lhu	a5,s0,+00000010
	c.beqz	a5,000000002304D75A

l2304D752:
	lhu	a4,sp,+00000004
	bne	a4,a5,000000002304D762

l2304D75A:
	c.lw	s0,8(a5)
	c.lw	s0,12(a1)
	c.mv	a0,sp
	c.jalr	a5

l2304D762:
	c.lw	s0,4(s0)
	c.j	000000002304D748

;; aos_event_service_init: 2304D766
;;   Called from:
;;     2304CDAA (in aos_loop_init)
aos_event_service_init proc
	lui	a0,00023088
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	addi	a0,a0,-0000064C
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002304C198
	lui	a5,0004200E
	addi	a5,a5,-000006A4
	c.lw	a5,4(a4)
	c.mv	s0,a0
	bge	a4,zero,000000002304D78C

l2304D78A:
	c.sw	a5,4(a0)

l2304D78C:
	lui	a1,0002304D
	c.li	a2,00000000
	addi	a1,a1,+00000708
	c.mv	a0,s0
	jal	ra,000000002304CDD0
	c.mv	a0,s0
	jal	ra,000000002304CD3E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_post_event: 2304D7AC
;;   Called from:
;;     230003F8 (in cmd_stack_wifi)
;;     23023A48 (in bl_rx_apm_sta_del_ind)
;;     23023B38 (in bl_rx_apm_sta_add_ind)
;;     23024E04 (in stateConnectingEnter)
;;     23025058 (in stateDisconnect_action_reconnect)
;;     23025146 (in stateConnectedIPNoEnter)
;;     2302563C (in stateGlobalGuard_AP)
;;     23025A18 (in stateGlobalGuard_denoise)
;;     23025BCA (in stateGlobalGuard_stop)
;;     23025D0C (in stateDisconnect_enter)
;;     23025D2A (in stateDisconnect_enter)
;;     23025E10 (in stateGlobalGuard_fw_scan)
;;     23025F38 (in stateConnectedIPYes_enter)
;;     2302610E (in wifi_mgmr_start)
;;     23028B2C (in cb_event_ind)
aos_post_event proc
	slli	a5,a0,00000011
	c.addi	sp,FFFFFFE0
	c.srli	a5,00000011
	sh	a5,sp,+00000004
	lui	a5,0004200E
	sh	a1,sp,+00000006
	srli	a1,a0,0000000F
	lw	a0,a5,-000006A0
	c.swsp	a2,00000004
	addi	a1,a1,+00000101
	c.mv	a2,sp
	c.swsp	ra,0000008C
	c.swsp	zero,00000000
	c.swsp	zero,00000084
	jal	ra,000000002304C312
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; aos_register_event_filter: 2304D7E0
;;   Called from:
;;     2300087A (in aos_loop_proc)
;;     23026104 (in wifi_mgmr_start)
aos_register_event_filter proc
	c.beqz	a1,000000002304D826

l2304D7E2:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.li	a0,00000014
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a2
	c.mv	s0,a1
	jal	ra,000000002304D434
	c.mv	a5,a0
	c.li	a0,FFFFFFF4
	c.beqz	a5,000000002304D81A

l2304D7FE:
	lui	a4,0004200E
	addi	a4,a4,-000006AC
	c.lw	a4,0(a3)
	c.sw	a5,8(s0)
	sh	s2,a5,+00000010
	c.sw	a5,0(a3)
	c.sw	a5,12(s1)
	c.sw	a5,4(a4)
	c.sw	a3,4(a5)
	c.sw	a4,0(a5)
	c.li	a0,00000000

l2304D81A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304D826:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; aws_iot_shadow_init: 2304D82A
;;   Called from:
;;     23001472 (in aws_main_entry)
aws_iot_shadow_init proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.mv	s0,a1
	lui	a1,00023088
	c.swsp	s1,000000A8
	addi	a2,zero,+00000034
	c.mv	s1,a0
	addi	a1,a1,-00000640
	c.addi4spn	a0,0000001C
	c.swsp	ra,000000AC
	jal	ra,0000000023070C7C
	c.li	a0,FFFFFFFE
	c.beqz	s1,000000002304D89C

l2304D84C:
	c.beqz	s0,000000002304D89C

l2304D84E:
	lbu	a5,s0,+00000014
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	sb	a5,sp,+0000001C
	c.lw	s0,0(a5)
	c.swsp	a5,00000010
	lhu	a5,s0,+00000004
	sh	a5,sp,+00000024
	c.lw	s0,8(a5)
	c.swsp	a5,00000014
	c.lw	s0,12(a5)
	c.swsp	a5,00000094
	c.lw	s0,16(a5)
	c.swsp	a5,00000018
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.swsp	a5,00000098
	c.li	a5,00000001
	sb	a5,sp,+00000040
	c.lw	s0,24(a5)
	c.swsp	a5,000000A0
	jal	ra,000000002304F450
	c.bnez	a0,000000002304D89C

l2304D88A:
	c.swsp	a0,00000084
	c.jal	000000002304DC22
	lui	a5,0004200E
	sw	zero,a5,+00000FFC
	jal	ra,000000002304E5AA
	c.lwsp	a2,00000044

l2304D89C:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.addi16sp	00000060
	c.jr	ra

;; aws_iot_shadow_connect: 2304D8A6
;;   Called from:
;;     23001770 (in aws_main_entry)
aws_iot_shadow_connect proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.mv	s0,a1
	lui	a1,00023088
	c.swsp	s2,00000028
	addi	a2,zero,+00000038
	c.mv	s2,a0
	addi	a1,a1,-000003D4
	c.addi4spn	a0,00000008
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.li	s1,FFFFFFFE
	jal	ra,0000000023070C7C
	beq	s2,zero,000000002304D97A

l2304D8CE:
	c.beqz	s0,000000002304D97A

l2304D8D0:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002304D97A

l2304D8D4:
	c.lw	s0,0(a3)
	lui	s1,00023086
	lui	s3,00042021
	addi	a2,s1,-00000328
	c.li	a1,00000014
	addi	a0,s3,-00000800
	jal	ra,000000002305216A
	c.lw	s0,4(a3)
	lui	a0,00042020
	addi	a2,s1,-00000328
	addi	a1,zero,+00000050
	addi	a0,a0,+000000E0
	jal	ra,000000002305216A
	c.li	a5,00000004
	sb	a5,sp,+0000000C
	addi	a5,zero,+00000258
	sh	a5,sp,+00000016
	c.li	a5,00000001
	sh	a5,sp,+00000018
	c.lw	s0,4(a5)
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	c.swsp	a5,00000008
	lhu	a5,s0,+00000008
	c.swsp	zero,0000001C
	c.swsp	zero,00000018
	sh	a5,sp,+00000014
	jal	ra,000000002304F5D0
	c.mv	s1,a0
	c.bnez	a0,000000002304D97A

l2304D932:
	c.mv	a0,s2
	jal	ra,000000002304E688
	c.lw	s0,12(a5)
	c.beqz	a5,000000002304D97A

l2304D93C:
	lui	s1,00042016
	lui	a2,00023088
	addi	a3,s3,-00000800
	addi	a2,a2,-000005E0
	addi	a1,zero,+00000050
	addi	a0,s1,-000005F8
	jal	ra,000000002305216A
	addi	a0,s1,-000005F8
	jal	ra,000000002307132C
	c.lw	s0,12(a4)
	slli	a2,a0,00000010
	addi	a1,s1,-000005F8
	addi	a5,s3,-00000800
	c.li	a3,00000001
	c.srli	a2,00000010
	c.mv	a0,s2
	jal	ra,000000002304FE54
	c.mv	s1,a0

l2304D97A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

;; aws_iot_shadow_register_delta: 2304D98A
;;   Called from:
;;     230017C2 (in aws_main_entry)
aws_iot_shadow_register_delta proc
	c.beqz	a0,000000002304D9A8

l2304D98C:
	c.beqz	a1,000000002304D9A8

l2304D98E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002304F5B0
	c.beqz	a0,000000002304D9AC

l2304D99C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304E5D4

l2304D9A8:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2304D9AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFE6
	c.addi	sp,00000010
	c.jr	ra

;; aws_iot_shadow_yield: 2304D9B6
;;   Called from:
;;     230018BA (in aws_main_entry)
;;     230018E4 (in aws_main_entry)
aws_iot_shadow_yield proc
	c.beqz	a0,000000002304D9D0

l2304D9B8:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a0,00000004
	jal	ra,000000002304EA52
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023050272

l2304D9D0:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_shadow_disconnect: 2304D9D4
;;   Called from:
;;     23001854 (in aws_main_entry)
aws_iot_shadow_disconnect proc
	jal	zero,000000002304F900

;; aws_iot_shadow_update: 2304D9D8
;;   Called from:
;;     230019DC (in aws_main_entry)
aws_iot_shadow_update proc
	c.beqz	a0,000000002304DA24

l2304D9DA:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s5,a6
	c.mv	s4,a5
	c.mv	s3,a4
	c.mv	s2,a3
	c.mv	s0,a2
	c.mv	s1,a1
	jal	ra,000000002304F5B0
	c.beqz	a0,000000002304DA28

l2304D9FC:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.mv	a2,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a7,s5
	c.mv	a6,s4
	c.lwsp	tp,000000A8
	c.lwsp	s0,00000088
	c.mv	a5,s3
	c.mv	a4,s2
	c.lwsp	a2,00000068
	c.lwsp	a6,00000048
	c.mv	a3,a0
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000001
	c.addi16sp	00000020
	c.j	000000002304DA40

l2304DA24:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2304DA28:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,FFFFFFE6
	c.addi16sp	00000020
	c.jr	ra

;; aws_iot_shadow_set_autoreconnect_status: 2304DA3C
;;   Called from:
;;     23001792 (in aws_main_entry)
aws_iot_shadow_set_autoreconnect_status proc
	jal	zero,000000002304F5C2

;; aws_iot_shadow_internal_action: 2304DA40
;;   Called from:
;;     2304DA22 (in aws_iot_shadow_update)
aws_iot_shadow_internal_action proc
	c.addi16sp	FFFFFF70
	c.swsp	s1,000000C0
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s5,000000B8
	c.swsp	s6,00000038
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.li	s1,FFFFFFFE
	c.beqz	a0,000000002304DAAA

l2304DA5C:
	c.beqz	a2,000000002304DAAA

l2304DA5E:
	c.mv	s5,a2
	c.mv	s7,a5
	c.mv	a5,a3
	c.mv	s2,a1
	c.mv	s0,a0
	addi	a3,zero,+0000005A
	c.addi4spn	a2,00000004
	c.mv	a1,a5
	c.mv	a0,s5
	c.mv	s6,a7
	c.mv	s8,a6
	c.mv	s3,a4
	c.jal	000000002304E042
	c.mv	s9,a0
	c.beqz	a0,000000002304DAFC

l2304DA7E:
	beq	s3,zero,000000002304DAFC

l2304DA82:
	addi	a0,sp,+00000003
	jal	ra,000000002304E9B0
	c.mv	s4,a0
	c.li	s1,FFFFFFFF
	c.beqz	a0,000000002304DAAA

l2304DA90:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002304E6CE
	c.mv	s1,a0
	c.mv	a2,s6
	c.mv	a1,s2
	c.mv	a0,s0
	c.bnez	s1,000000002304DAC6

l2304DAA2:
	jal	ra,000000002304E742
	c.mv	s1,a0
	c.beqz	a0,000000002304DACC

l2304DAAA:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s1
	c.lwsp	sp,00000048
	c.lwsp	t1,00000024
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.lwsp	s5,000001B8
	c.lwsp	a7,000001D8
	c.lwsp	a3,000001F8
	c.lwsp	s1,0000011C
	c.lwsp	t0,0000013C
	c.addi16sp	00000090
	c.jr	ra

l2304DAC6:
	jal	ra,000000002304E8E8
	c.mv	s4,s1

l2304DACC:
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002304E95A
	c.mv	s1,a0
	beq	s9,zero,000000002304DAAA

l2304DADC:
	beq	s3,zero,000000002304DAAA

l2304DAE0:
	c.bnez	a0,000000002304DAAA

l2304DAE2:
	beq	s4,zero,000000002304DAAA

l2304DAE6:
	lbu	a0,sp,+00000003
	c.mv	a6,s8
	c.mv	a5,s7
	c.mv	a4,s3
	c.addi4spn	a3,00000004
	c.mv	a2,s2
	c.mv	a1,s0
	jal	ra,000000002304E9DE
	c.j	000000002304DAAA

l2304DAFC:
	c.li	s4,00000000
	c.j	000000002304DACC

;; convertDataToString: 2304DB00
;;   Called from:
;;     2304DD62 (in aws_iot_shadow_add_reported)
convertDataToString proc
	c.bnez	a1,000000002304DB0A

l2304DB02:
	addi	a5,zero,-0000002D
	c.mv	a0,a5
	c.jr	ra

l2304DB0A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.bnez	a2,000000002304DB26

l2304DB16:
	c.lw	a3,0(a3)
	lui	a2,00023088
	addi	a2,a2,-0000056C

l2304DB20:
	jal	ra,000000002305216A
	c.j	000000002304DB9E

l2304DB26:
	c.li	a5,00000001
	bne	a2,a5,000000002304DB3A

l2304DB2C:
	lui	a2,00023088
	lh	a3,a3,+00000000
	addi	a2,a2,-00000564
	c.j	000000002304DB20

l2304DB3A:
	c.li	a5,00000002
	bne	a2,a5,000000002304DB4E

l2304DB40:
	lui	a2,00023088
	lb	a3,a3,+00000000
	addi	a2,a2,-0000055C
	c.j	000000002304DB20

l2304DB4E:
	c.li	a5,00000003
	bne	a2,a5,000000002304DB60

l2304DB54:
	lui	a2,00023088
	c.lw	a3,0(a3)
	addi	a2,a2,-00000554
	c.j	000000002304DB20

l2304DB60:
	c.li	a5,00000004
	bne	a2,a5,000000002304DB74

l2304DB66:
	lui	a2,00023088
	lhu	a3,a3,+00000000
	addi	a2,a2,-0000054C
	c.j	000000002304DB20

l2304DB74:
	c.li	a5,00000005
	bne	a2,a5,000000002304DB88

l2304DB7A:
	lui	a2,00023088
	lbu	a3,a3,+00000000
	addi	a2,a2,-00000544
	c.j	000000002304DB20

l2304DB88:
	c.li	a5,00000007
	bne	a2,a5,000000002304DBB2

l2304DB8E:
	c.lw	a3,0(a4)
	c.lw	a3,4(a5)
	lui	a2,00023088
	addi	a2,a2,-0000053C

l2304DB9A:
	jal	ra,000000002305216A

l2304DB9E:
	addi	a5,zero,-0000002D
	bge	a0,zero,000000002304DC16

l2304DBA6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304DBB2:
	c.li	a5,00000006
	c.mv	s1,a0
	bne	a2,a5,000000002304DBD2

l2304DBBA:
	c.flw	fa3,0(a0)
	jal	ra,0000000023070708
	lui	a2,00023088
	c.mv	a4,a0
	c.mv	a5,a1
	addi	a2,a2,-0000053C
	c.mv	a1,s0
	c.mv	a0,s1
	c.j	000000002304DB9A

l2304DBD2:
	c.li	a5,00000008
	bne	a2,a5,000000002304DBFA

l2304DBD8:
	lbu	a5,a3,+00000000
	c.bnez	a5,000000002304DBF0

l2304DBDE:
	lui	a3,00023073
	addi	a3,a3,-000001A0

l2304DBE6:
	lui	a2,00023088
	addi	a2,a2,-00000538
	c.j	000000002304DC08

l2304DBF0:
	lui	a3,00023073
	addi	a3,a3,-000001A8
	c.j	000000002304DBE6

l2304DBFA:
	c.li	a5,00000009
	bne	a2,a5,000000002304DC0E

l2304DC00:
	lui	a2,00023088
	addi	a2,a2,-00000534

l2304DC08:
	c.mv	a1,s0
	c.mv	a0,s1
	c.j	000000002304DB20

l2304DC0E:
	c.li	a5,0000000A
	c.li	a0,00000000
	beq	a2,a5,000000002304DBE6

l2304DC16:
	c.li	a5,00000000
	bltu	a0,s0,000000002304DBA6

l2304DC1C:
	addi	a5,zero,-0000002C
	c.j	000000002304DBA6

;; resetClientTokenSequenceNum: 2304DC22
;;   Called from:
;;     2304D88C (in aws_iot_shadow_init)
resetClientTokenSequenceNum proc
	lui	a5,0004200E
	sw	zero,a5,+00000FF4
	c.jr	ra

;; aws_iot_shadow_init_json_document: 2304DC2C
;;   Called from:
;;     2300196A (in aws_main_entry)
aws_iot_shadow_init_json_document proc
	c.beqz	a0,000000002304DC5E

l2304DC2E:
	lui	a2,00023088
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-00000578
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002305216A
	addi	a5,zero,-0000002D
	blt	a0,zero,000000002304DC54

l2304DC4A:
	c.li	a5,00000000
	bltu	a0,s0,000000002304DC54

l2304DC50:
	addi	a5,zero,-0000002C

l2304DC54:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304DC5E:
	c.li	a5,FFFFFFFE
	c.mv	a0,a5
	c.jr	ra

;; aws_iot_shadow_add_reported: 2304DC64
;;   Called from:
;;     23001996 (in aws_main_entry)
aws_iot_shadow_add_reported proc
	c.addi16sp	FFFFFFA0
	c.swsp	a5,000000A8
	c.addi4spn	a5,0000004C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	a3,000000A4
	c.swsp	a4,00000028
	c.swsp	a6,0000002C
	c.swsp	a7,000000AC
	c.swsp	a5,00000084
	c.bnez	a0,000000002304DCA2

l2304DC88:
	c.li	a5,FFFFFFFE

l2304DC8A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.mv	a0,a5
	c.addi16sp	00000060
	c.jr	ra

l2304DCA2:
	c.mv	s4,a1
	c.mv	s0,a0
	c.mv	s5,a2
	jal	ra,000000002307132C
	sub	s3,s4,a0
	c.li	a5,00000001
	bltu	a5,s3,000000002304DCBC

l2304DCB6:
	addi	a5,zero,-0000002D
	c.j	000000002304DC8A

l2304DCBC:
	c.mv	a0,s0
	jal	ra,000000002307132C
	lui	a2,00023088
	addi	a2,a2,-00000588
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002305216A
	addi	a5,zero,-0000002D
	blt	a0,zero,000000002304DC8A

l2304DCDA:
	c.li	s2,00000000
	bgeu	a0,s3,000000002304DD10

l2304DCE0:
	c.li	s6,00000001
	lui	s7,00023088

l2304DCE6:
	c.mv	a0,s0
	blt	s2,s5,000000002304DD16

l2304DCEC:
	jal	ra,000000002307132C
	c.addi	a0,FFFFFFFF
	lui	a2,00023088
	addi	a2,a2,-0000058C
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002305216A
	addi	a5,zero,-0000002D
	blt	a0,zero,000000002304DC8A

l2304DD0A:
	c.li	a5,00000000
	bltu	a0,s3,000000002304DC8A

l2304DD10:
	addi	a5,zero,-0000002C
	c.j	000000002304DC8A

l2304DD16:
	jal	ra,000000002307132C
	sub	s3,s4,a0
	bgeu	s6,s3,000000002304DCB6

l2304DD22:
	c.lwsp	a2,000000E4
	c.lw	a5,0(s1)
	addi	a4,a5,+00000004
	c.swsp	a4,00000084
	c.beqz	s1,000000002304DC88

l2304DD2E:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.lw	s1,0(a3)
	addi	a2,s7,-00000594
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002305216A
	blt	a0,zero,000000002304DCB6

l2304DD46:
	bgeu	a0,s3,000000002304DD10

l2304DD4A:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002304DC88

l2304DD4E:
	c.lw	s1,4(a5)
	c.beqz	a5,000000002304DC88

l2304DD52:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.lw	s1,4(a3)
	lbu	a2,s1,+0000000C
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002304DB00
	c.mv	a5,a0
	bne	a0,zero,000000002304DC8A

l2304DD6C:
	c.addi	s2,00000001
	c.slli	s2,18
	srai	s2,s2,00000018
	c.j	000000002304DCE6

;; FillWithClientTokenSize: 2304DD76
;;   Called from:
;;     2304DE0E (in aws_iot_finalize_json_document)
FillWithClientTokenSize proc
	lui	a5,0004200E
	addi	a5,a5,-0000000C
	c.lw	a5,0(a4)
	lui	a2,00023088
	addi	a2,a2,-00000518
	addi	a3,a4,+00000001
	c.sw	a5,0(a3)
	lui	a3,00042020
	addi	a3,a3,+000000E0
	jal	zero,000000002305216A

;; aws_iot_finalize_json_document: 2304DD9A
;;   Called from:
;;     230019A4 (in aws_main_entry)
aws_iot_finalize_json_document proc
	c.beqz	a0,000000002304DE4C

l2304DD9C:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a1
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002307132C
	sub	s3,s1,a0
	c.li	s2,00000001
	bltu	s2,s3,000000002304DDCE

l2304DDBA:
	addi	a5,zero,-0000002D

l2304DDBE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2304DDCE:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.addi	a0,FFFFFFFF
	lui	a3,00023088
	lui	a2,00023088
	addi	a3,a3,-000005B8
	addi	a2,a2,-000005AC
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002305216A
	blt	a0,zero,000000002304DDBA

l2304DDF2:
	bgeu	a0,s3,000000002304DE46

l2304DDF6:
	c.mv	a0,s0
	jal	ra,000000002307132C
	sub	s3,s1,a0
	bgeu	s2,s3,000000002304DDBA

l2304DE04:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002304DD76
	blt	a0,zero,000000002304DDBA

l2304DE16:
	bgeu	a0,s3,000000002304DE46

l2304DE1A:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.sub	s1,a0
	bgeu	s2,s1,000000002304DDBA

l2304DE26:
	c.mv	a0,s0
	jal	ra,000000002307132C
	lui	a2,00023088
	addi	a2,a2,-00000510
	c.mv	a1,s1
	c.add	a0,s0
	jal	ra,000000002305216A
	blt	a0,zero,000000002304DDBA

l2304DE40:
	c.li	a5,00000000
	bltu	a0,s1,000000002304DDBE

l2304DE46:
	addi	a5,zero,-0000002C
	c.j	000000002304DDBE

l2304DE4C:
	c.li	a5,FFFFFFFE
	c.mv	a0,a5
	c.jr	ra

;; isJsonValidAndParse: 2304DE52
;;   Called from:
;;     2304E1A0 (in shadow_delta_callback)
;;     2304E48A (in AckStatusCallback)
isJsonValidAndParse proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042016
	c.swsp	s3,0000008C
	c.mv	s3,a0
	addi	a0,s0,+000001D8
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	a1,00000084
	c.mv	s1,a3
	jal	ra,000000002304EF9E
	c.lwsp	a2,00000084
	lui	a3,00042016
	addi	s2,a3,-000005A8
	addi	a4,zero,+00000078
	addi	a3,a3,-000005A8
	c.mv	a1,s3
	addi	a0,s0,+000001D8
	jal	ra,000000002304EBA2
	c.li	a5,00000000
	bge	zero,a0,000000002304DEA2

l2304DE92:
	lbu	a3,s2,+00000000
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a3,a4,000000002304DEA2

l2304DE9E:
	c.sw	s1,0(a0)
	c.li	a5,00000001

l2304DEA2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

;; isJsonKeyMatchingAndUpdateValue: 2304DEB2
;;   Called from:
;;     2304E210 (in shadow_delta_callback)
isJsonKeyMatchingAndUpdateValue proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	lui	s3,00042016
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s4,0000001C
	c.mv	s1,a0
	c.mv	s7,a2
	c.mv	s0,a3
	c.mv	s5,a4
	c.mv	s6,a5
	c.li	s2,00000001
	addi	s3,s3,-000005A8
	lui	s8,00023088

l2304DEE0:
	bge	s2,s7,000000002304E03A

l2304DEE4:
	slli	s4,s2,00000004
	c.lw	s0,0(a2)
	c.add	s4,s3
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002304EFAC
	bne	a0,zero,000000002304E02C

l2304DEF8:
	c.addi	s2,00000001
	c.slli	s2,04
	c.add	s2,s3
	c.mv	a1,s2
	c.li	a2,00000010
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	lw	a5,s2,+00000008
	lw	s3,s2,+00000004
	c.li	a2,00000010
	c.mv	a1,sp
	c.addi4spn	a0,00000010
	sub	s2,a5,s3
	c.swsp	a5,00000004
	c.swsp	s3,00000080
	jal	ra,0000000023070C7C
	lbu	a5,s0,+0000000C
	c.li	a4,00000008
	bne	a5,a4,000000002304DF5C

l2304DF2C:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002304DF3A

l2304DF30:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F24E

l2304DF3A:
	sw	s3,s6,+00000000
	sw	s2,s5,+00000000
	c.li	a0,00000001

l2304DF44:
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

l2304DF5C:
	c.bnez	a5,000000002304DF72

l2304DF5E:
	c.lw	s0,8(a4)
	c.li	a5,00000003
	bgeu	a5,a4,000000002304DF3A

l2304DF66:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F0E8
	c.j	000000002304DF3A

l2304DF72:
	c.li	a4,00000001
	bne	a5,a4,000000002304DF8A

l2304DF78:
	c.lw	s0,8(a4)
	bgeu	a5,a4,000000002304DF3A

l2304DF7E:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F128
	c.j	000000002304DF3A

l2304DF8A:
	c.li	a3,00000002
	bne	a5,a3,000000002304DFA0

l2304DF90:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002304DF3A

l2304DF94:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F17A
	c.j	000000002304DF3A

l2304DFA0:
	c.li	a3,00000003
	bne	a5,a3,000000002304DFB8

l2304DFA6:
	c.lw	s0,8(a4)
	bgeu	a5,a4,000000002304DF3A

l2304DFAC:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304EFF8
	c.j	000000002304DF3A

l2304DFB8:
	c.li	a3,00000004
	bne	a5,a3,000000002304DFD0

l2304DFBE:
	c.lw	s0,8(a5)
	bgeu	a4,a5,000000002304DF3A

l2304DFC4:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F042
	c.j	000000002304DF3A

l2304DFD0:
	c.li	a4,00000005
	bne	a5,a4,000000002304DFE6

l2304DFD6:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002304DF3A

l2304DFDA:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F08C
	c.j	000000002304DF3A

l2304DFE6:
	c.li	a4,00000006
	bne	a5,a4,000000002304E000

l2304DFEC:
	c.lw	s0,8(a4)
	c.li	a5,00000003
	bgeu	a5,a4,000000002304DF3A

l2304DFF4:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F1CE
	c.j	000000002304DF3A

l2304E000:
	c.li	a4,00000007
	bne	a5,a4,000000002304E018

l2304E006:
	c.lw	s0,8(a4)
	bgeu	a5,a4,000000002304DF3A

l2304E00C:
	c.lw	s0,4(a0)
	c.addi4spn	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304F20E
	c.j	000000002304DF3A

l2304E018:
	c.li	a4,00000009
	bne	a5,a4,000000002304DF3A

l2304E01E:
	c.lw	s0,8(a1)
	c.lw	s0,4(a0)
	c.addi4spn	a3,00000010
	c.mv	a2,s1
	jal	ra,000000002304F2B4
	c.j	000000002304DF3A

l2304E02C:
	addi	a2,s8,-00000504
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002304EFAC
	c.bnez	a0,000000002304E03E

l2304E03A:
	c.li	a0,00000000
	c.j	000000002304DF44

l2304E03E:
	c.addi	s2,00000001
	c.j	000000002304DEE0

;; extractClientToken: 2304E042
;;   Called from:
;;     2304DA78 (in aws_iot_shadow_internal_action)
;;     2304E4D0 (in AckStatusCallback)
extractClientToken proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042016
	c.swsp	s2,00000010
	c.mv	s2,a0
	addi	a0,s1,+000001D8
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	a1,00000084
	c.mv	s4,a2
	c.mv	s5,a3
	jal	ra,000000002304EF9E
	c.lwsp	a2,00000064
	lui	s0,00042016
	addi	a4,zero,+00000078
	c.mv	a2,a1
	addi	a3,s0,-000005A8
	c.mv	a1,s2
	addi	a0,s1,+000001D8
	jal	ra,000000002304EBA2
	blt	zero,a0,000000002304E09C

l2304E086:
	c.li	a0,00000000

l2304E088:
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

l2304E09C:
	addi	s0,s0,-000005A8
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002304E086

l2304E0AA:
	c.mv	s3,a0
	c.li	s1,00000001
	lui	s6,00023088

l2304E0B2:
	beq	s1,s3,000000002304E086

l2304E0B6:
	slli	a1,s1,00000004
	addi	a2,s6,-000005B8
	c.add	a1,s0
	c.mv	a0,s2
	jal	ra,000000002304EFAC
	c.addi	s1,00000001
	c.bnez	a0,000000002304E0B2

l2304E0CA:
	c.slli	s1,04
	c.add	s0,s1
	c.lw	s0,4(a1)
	c.lw	s0,8(s0)
	c.sub	s0,a1
	andi	s0,s0,+000000FF
	addi	a5,s0,+00000001
	bltu	s5,a5,000000002304E086

l2304E0E0:
	c.mv	a2,s0
	c.add	a1,s2
	c.mv	a0,s4
	jal	ra,00000000230714A8
	c.add	s0,s4
	sb	zero,s0,+00000000
	c.li	a0,00000001
	c.j	000000002304E088

;; extractVersionNumber: 2304E0F4
;;   Called from:
;;     2304E1BE (in shadow_delta_callback)
;;     2304E4BC (in AckStatusCallback)
extractVersionNumber proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042016
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s3,a0
	c.mv	s4,a2
	c.mv	s5,a3
	c.li	s0,00000001
	addi	s1,s1,-000005A8
	lui	s6,00023088

l2304E11A:
	blt	s0,s4,000000002304E134

l2304E11E:
	c.li	a0,00000000

l2304E120:
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

l2304E134:
	slli	s2,s0,00000004
	addi	a2,s6,-0000050C
	add	a1,s1,s2
	c.mv	a0,s3
	jal	ra,000000002304EFAC
	c.addi	s0,00000001
	c.bnez	a0,000000002304E11A

l2304E14A:
	addi	a2,s2,+00000010
	c.add	a2,s1
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,000000002304EFF8
	c.bnez	a0,000000002304E11A

l2304E15A:
	c.li	a0,00000001
	c.j	000000002304E120

;; shadow_delta_callback: 2304E15E
shadow_delta_callback proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a3,12(a2)
	c.swsp	zero,00000084
	addi	a5,zero,+00000200
	bltu	a5,a2,000000002304E1EC

l2304E178:
	c.lw	a3,8(a1)
	lui	s1,00042020
	addi	a0,s1,-00000124
	c.mv	s0,a3
	jal	ra,0000000023070C7C
	c.lw	s0,12(a4)
	addi	a5,s1,-00000124
	c.mv	a3,sp
	c.add	a5,a4
	c.li	a2,00000000
	addi	a1,zero,+00000201
	addi	a0,s1,-00000124
	sb	zero,a5,+00000000
	jal	ra,000000002304DE52
	addi	s4,s1,-00000124
	c.beqz	a0,000000002304E1EC

l2304E1AA:
	lui	a5,0004200E
	lbu	a5,a5,-0000069C
	c.beqz	a5,000000002304E1D6

l2304E1B4:
	c.lwsp	zero,00000084
	c.addi4spn	a3,0000000C
	c.li	a1,00000000
	addi	a0,s1,-00000124
	jal	ra,000000002304E0F4
	c.beqz	a0,000000002304E1D6

l2304E1C4:
	lui	a5,0004200E
	addi	a5,a5,-00000004
	c.lwsp	a2,000000C4
	c.lw	a5,0(a3)
	bgeu	a3,a4,000000002304E1EC

l2304E1D4:
	c.sw	a5,0(a4)

l2304E1D6:
	lui	s0,00042016
	addi	s0,s0,+000001E4
	c.li	s2,00000000
	lui	s3,0004200E

l2304E1E4:
	lw	a5,s3,+00000000
	bltu	s2,a5,000000002304E1FC

l2304E1EC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304E1FC:
	lbu	a5,s0,+0000000C
	c.bnez	a5,000000002304E224

l2304E202:
	c.lw	s0,4(a3)
	c.lwsp	zero,00000084
	c.addi4spn	a5,00000004
	c.addi4spn	a4,00000008
	c.li	a1,00000000
	addi	a0,s1,-00000124
	jal	ra,000000002304DEB2
	c.beqz	a0,000000002304E224

l2304E216:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002304E224

l2304E21A:
	c.lwsp	tp,00000044
	c.lw	s0,4(a2)
	c.lwsp	s0,00000064
	c.add	a0,s4
	c.jalr	a5

l2304E224:
	c.addi	s2,00000001
	c.addi	s0,00000010
	c.j	000000002304E1E4

;; findIndexOfSubscriptionList: 2304E22A
;;   Called from:
;;     2304E362 (in unsubscribeFromAcceptedAndRejected)
;;     2304E3B4 (in unsubscribeFromAcceptedAndRejected)
findIndexOfSubscriptionList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042020
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a0
	addi	s1,s1,+00000180
	c.li	s0,00000000
	c.li	s2,00000014

l2304E244:
	lbu	a5,s1,+00000051
	c.bnez	a5,000000002304E268

l2304E24A:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023071100
	c.bnez	a0,000000002304E268

l2304E254:
	slli	a0,s0,00000010
	c.srai	a0,00000010

l2304E25A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304E268:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+00000053
	bne	s0,s2,000000002304E244

l2304E276:
	c.li	a0,FFFFFFFF
	c.j	000000002304E25A

;; topicNameFromThingAndAction: 2304E27A
;;   Called from:
;;     2304E34E (in unsubscribeFromAcceptedAndRejected)
;;     2304E35C (in unsubscribeFromAcceptedAndRejected)
;;     2304E6E6 (in isSubscriptionPresent)
;;     2304E6FA (in isSubscriptionPresent)
;;     2304E7DC (in subscribeToShadowActionAcks)
;;     2304E816 (in subscribeToShadowActionAcks)
;;     2304E900 (in incrementSubscriptionCnt)
;;     2304E914 (in incrementSubscriptionCnt)
;;     2304E972 (in publishToShadowAction)
topicNameFromThingAndAction proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a3
	c.bnez	a2,000000002304E2D4

l2304E28C:
	lui	a1,00023082
	c.li	a2,0000000A
	addi	a1,a1,+0000076C

l2304E296:
	c.addi4spn	a0,00000008
	jal	ra,00000000230714A8

l2304E29C:
	bne	s2,zero,000000002304E2F8

l2304E2A0:
	lui	a1,00023088
	c.li	a2,0000000A
	addi	a1,a1,-000004F4

l2304E2AA:
	c.addi4spn	a0,00000014
	jal	ra,00000000230714A8
	lui	a2,00023088
	c.addi4spn	a5,00000014
	c.addi4spn	a4,00000008
	c.mv	a3,s1
	addi	a2,a2,-00000484
	addi	a1,zero,+00000050
	c.mv	a0,s0
	jal	ra,000000002305216A

l2304E2C8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2304E2D4:
	c.li	a5,00000001
	bne	a2,a5,000000002304E2E6

l2304E2DA:
	lui	a1,00023088
	c.li	a2,0000000A
	addi	a1,a1,-000004BC
	c.j	000000002304E296

l2304E2E6:
	c.li	a5,00000002
	bne	a2,a5,000000002304E29C

l2304E2EC:
	lui	a1,00023088
	c.li	a2,0000000A
	addi	a1,a1,-000004B4
	c.j	000000002304E296

l2304E2F8:
	c.li	a5,00000001
	bne	s2,a5,000000002304E30A

l2304E2FE:
	lui	a1,00023088
	c.li	a2,0000000A
	addi	a1,a1,-000004AC
	c.j	000000002304E2AA

l2304E30A:
	lui	a2,00023088
	c.addi4spn	a4,00000008
	c.mv	a3,s1
	addi	a2,a2,-000004A0
	addi	a1,zero,+00000050
	c.mv	a0,s0
	jal	ra,000000002305216A
	c.j	000000002304E2C8

;; unsubscribeFromAcceptedAndRejected: 2304E322
;;   Called from:
;;     2304E54A (in AckStatusCallback)
;;     2304EA9C (in HandleExpiredResponseCallbacks)
unsubscribeFromAcceptedAndRejected proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	addi	s0,zero,+00000088
	add	a0,a0,s0
	lui	s0,00042021
	c.swsp	s1,000000D0
	addi	s0,s0,-000007EC
	c.swsp	ra,000000D4
	c.swsp	s2,00000050
	c.li	a3,00000000
	addi	s1,a0,+0000005A
	c.add	s1,s0
	c.add	s0,a0
	lbu	a2,s0,+0000006E
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,000000002304E27A
	lbu	a2,s0,+0000006E
	c.addi4spn	a0,00000050
	c.li	a3,00000001
	c.mv	a1,s1
	jal	ra,000000002304E27A
	c.mv	a0,sp
	jal	ra,000000002304E22A
	blt	a0,zero,000000002304E3B2

l2304E36A:
	addi	a4,zero,+00000053
	add	a4,a0,a4
	lui	a5,00042020
	addi	s1,a5,+00000180
	addi	a5,a5,+00000180
	c.add	s1,a4
	lbu	a4,s1,+00000052
	lbu	s0,s1,+00000050
	c.bnez	a4,000000002304E410

l2304E38A:
	c.li	a4,00000001
	bne	s0,a4,000000002304E410

l2304E390:
	lui	a5,00042020
	lw	s2,a5,+000007FC
	c.mv	a0,sp
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	c.srli	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s2
	jal	ra,00000000230500A2
	c.bnez	a0,000000002304E3B2

l2304E3AE:
	sb	s0,s1,+00000051

l2304E3B2:
	c.addi4spn	a0,00000050
	jal	ra,000000002304E22A
	blt	a0,zero,000000002304E404

l2304E3BC:
	addi	a4,zero,+00000053
	add	a4,a0,a4
	lui	a5,00042020
	addi	s1,a5,+00000180
	addi	a5,a5,+00000180
	c.add	s1,a4
	lbu	a4,s1,+00000052
	lbu	s0,s1,+00000050
	c.bnez	a4,000000002304E428

l2304E3DC:
	c.li	a4,00000001
	bne	s0,a4,000000002304E428

l2304E3E2:
	lui	a5,00042020
	lw	s2,a5,+000007FC
	c.addi4spn	a0,00000050
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	c.srli	a2,00000010
	c.addi4spn	a1,00000050
	c.mv	a0,s2
	jal	ra,00000000230500A2
	c.bnez	a0,000000002304E404

l2304E400:
	sb	s0,s1,+00000051

l2304E404:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.lwsp	t1,00000134
	c.lwsp	sp,00000158
	c.addi16sp	000000B0
	c.jr	ra

l2304E410:
	c.li	a4,00000001
	bgeu	a4,s0,000000002304E3B2

l2304E416:
	addi	a4,zero,+00000053
	add	a0,a0,a4
	c.addi	s0,FFFFFFFF
	c.add	a5,a0
	sb	s0,a5,+00000050
	c.j	000000002304E3B2

l2304E428:
	c.li	a4,00000001
	bgeu	a4,s0,000000002304E404

l2304E42E:
	addi	a4,zero,+00000053
	add	a0,a0,a4
	c.addi	s0,FFFFFFFF
	c.add	a5,a0
	sb	s0,a5,+00000050
	c.j	000000002304E404

;; AckStatusCallback: 2304E440
AckStatusCallback proc
	c.lw	a3,12(a2)
	addi	a5,zero,+00000200
	bltu	a5,a2,000000002304E5A8

l2304E44A:
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.swsp	s4,0000004C
	c.swsp	ra,000000D4
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.mv	s1,a1
	c.lw	a3,8(a1)
	lui	s4,00042020
	addi	a0,s4,-00000124
	c.mv	s0,a3
	jal	ra,0000000023070C7C
	c.lw	s0,12(a4)
	addi	a5,s4,-00000124
	c.addi4spn	a3,0000000C
	c.add	a5,a4
	c.li	a2,00000000
	addi	a1,zero,+00000201
	addi	a0,s4,-00000124
	sb	zero,a5,+00000000
	jal	ra,000000002304DE52
	c.beqz	a0,000000002304E55E

l2304E490:
	lui	a1,00042021
	addi	a1,a1,-00000800
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.beqz	a0,000000002304E4C2

l2304E4A0:
	lui	a1,00023088
	addi	a1,a1,-000004F8
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.beqz	a0,000000002304E576

l2304E4B0:
	c.lwsp	a2,00000084
	c.addi4spn	a3,00000010
	c.li	a1,00000000
	addi	a0,s4,-00000124
	c.swsp	zero,00000008
	jal	ra,000000002304E0F4
	c.bnez	a0,000000002304E588

l2304E4C2:
	addi	a3,zero,+0000006E
	c.addi4spn	a2,00000010
	addi	a1,zero,+00000201
	addi	a0,s4,-00000124
	jal	ra,000000002304E042
	c.beqz	a0,000000002304E55E

l2304E4D6:
	lui	s2,00042021
	addi	s3,s2,-000007EC
	c.li	s0,00000000
	addi	s2,s2,-000007EC
	addi	s8,zero,+00000088
	c.li	s7,0000000A

l2304E4EA:
	lbu	a5,s3,+00000078
	andi	s6,s0,+000000FF
	c.bnez	a5,000000002304E59C

l2304E4F4:
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	add	s5,s0,s8
	jal	ra,0000000023071100
	c.bnez	a0,000000002304E59C

l2304E502:
	lui	a1,00023088
	addi	a1,a1,-000004F4
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.li	a2,00000002
	c.bnez	a0,000000002304E524

l2304E514:
	lui	a1,00023088
	addi	a1,a1,-000004AC
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.li	a2,00000001

l2304E524:
	addi	a5,zero,+00000088
	add	a5,s0,a5
	c.add	a5,s2
	lw	a6,a5,+00000070
	beq	a6,zero,000000002304E548

l2304E536:
	c.lw	a5,116(a4)
	lbu	a1,a5,+0000006E
	addi	a0,s5,+0000005A
	addi	a3,s4,-00000124
	c.add	a0,s2
	c.jalr	a6

l2304E548:
	c.mv	a0,s6
	jal	ra,000000002304E322
	addi	a5,zero,+00000088
	add	s0,s0,a5
	c.li	a5,00000001
	c.add	s2,s0
	sb	a5,s2,+00000078

l2304E55E:
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
	c.addi16sp	000000B0
	c.jr	ra

l2304E576:
	lui	a1,00023088
	addi	a1,a1,-000004E8
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.bnez	a0,000000002304E4B0

l2304E586:
	c.j	000000002304E4C2

l2304E588:
	lui	a5,0004200E
	addi	a5,a5,-00000004
	c.lwsp	a6,000000C4
	c.lw	a5,0(a3)
	bgeu	a3,a4,000000002304E4C2

l2304E598:
	c.sw	a5,0(a4)
	c.j	000000002304E4C2

l2304E59C:
	c.addi	s0,00000001
	addi	s3,s3,+00000088
	bne	s0,s7,000000002304E4EA

l2304E5A6:
	c.j	000000002304E55E

l2304E5A8:
	c.jr	ra

;; initDeltaTokens: 2304E5AA
;;   Called from:
;;     2304D896 (in aws_iot_shadow_init)
initDeltaTokens proc
	lui	a5,00042016
	addi	a5,a5,+000001E4
	addi	a4,a5,+00000780
	c.li	a3,00000001

l2304E5B8:
	sb	a3,a5,+0000000C
	c.addi	a5,00000010
	bne	a5,a4,000000002304E5B8

l2304E5C2:
	lui	a5,0004200E
	sw	zero,a5,+00000000
	lui	a5,0004200E
	sb	zero,a5,+00000FF8
	c.jr	ra

;; registerJsonTokenOnDelta: 2304E5D4
;;   Called from:
;;     2304D9A4 (in aws_iot_shadow_register_delta)
registerJsonTokenOnDelta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	s0,s0,-00000008
	lbu	a5,s0,+00000000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.li	a0,00000000
	c.bnez	a5,000000002304E644

l2304E5F2:
	lui	s2,00042020
	lui	a3,00042021
	lui	a2,00023088
	addi	a3,a3,-00000800
	addi	a2,a2,-000004E0
	addi	a1,zero,+00000050
	addi	a0,s2,+00000130
	jal	ra,000000002305216A
	lui	a5,00042020
	lw	s3,a5,+000007FC
	addi	a0,s2,+00000130
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	lui	a4,0002304E
	c.li	a5,00000000
	addi	a4,a4,+0000015E
	c.li	a3,00000000
	c.srli	a2,00000010
	addi	a1,s2,+00000130
	c.mv	a0,s3
	jal	ra,000000002304FE54
	c.li	a5,00000001
	sb	a5,s0,+00000000

l2304E644:
	lui	a3,0004200E
	addi	a3,a3,+00000000
	c.lw	a3,0(a4)
	addi	a5,zero,+00000077
	bltu	a5,a4,000000002304E684

l2304E656:
	c.lw	s1,0(a2)
	lui	a5,00042016
	slli	a1,a4,00000004
	addi	a5,a5,+000001E4
	c.add	a5,a1
	c.sw	a5,0(a2)
	c.lw	s1,16(a2)
	c.addi	a4,00000001
	c.sw	a5,4(s1)
	c.sw	a5,8(a2)
	sb	zero,a5,+0000000C
	c.sw	a3,0(a4)

l2304E676:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304E684:
	c.li	a0,FFFFFFFF
	c.j	000000002304E676

;; initializeRecords: 2304E688
;;   Called from:
;;     2304D934 (in aws_iot_shadow_connect)
initializeRecords proc
	lui	a5,00042021
	addi	a5,a5,-000007EC
	addi	a4,a5,+00000550
	c.li	a3,00000001

l2304E696:
	sb	a3,a5,+00000078
	addi	a5,a5,+00000088
	bne	a5,a4,000000002304E696

l2304E6A2:
	lui	a5,00042020
	addi	a5,a5,+00000180
	addi	a4,a5,+0000067C
	c.li	a3,00000001

l2304E6B0:
	sb	a3,a5,+00000051
	sb	zero,a5,+00000050
	sb	zero,a5,+00000052
	addi	a5,a5,+00000053
	bne	a5,a4,000000002304E6B0

l2304E6C4:
	lui	a5,00042020
	sw	a0,a5,+000007FC
	c.jr	ra

;; isSubscriptionPresent: 2304E6CE
;;   Called from:
;;     2304DA94 (in aws_iot_shadow_internal_action)
isSubscriptionPresent proc
	c.addi16sp	FFFFFF40
	c.mv	a2,a1
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a3,00000000
	c.mv	a1,a0
	c.mv	a0,sp
	c.swsp	ra,000000DC
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	jal	ra,000000002304E27A
	c.mv	a1,s0
	lui	s0,00042020
	c.mv	a2,s1
	c.li	a3,00000001
	c.addi4spn	a0,00000050
	addi	s0,s0,+00000180
	jal	ra,000000002304E27A
	addi	s3,s0,+0000067C
	c.li	s1,00000000
	c.li	s2,00000000

l2304E706:
	lbu	a5,s0,+00000051
	c.bnez	a5,000000002304E722

l2304E70C:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,0000000023071100
	c.beqz	a0,000000002304E73E

l2304E716:
	c.mv	a1,s0
	c.addi4spn	a0,00000050
	jal	ra,0000000023071100
	c.bnez	a0,000000002304E722

l2304E720:
	c.li	s1,00000001

l2304E722:
	addi	s0,s0,+00000053
	bne	s0,s3,000000002304E706

l2304E72A:
	c.beqz	s1,000000002304E72E

l2304E72C:
	c.mv	s1,s2

l2304E72E:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.mv	a0,s1
	c.lwsp	s2,00000158
	c.lwsp	s6,00000134
	c.lwsp	a4,00000178
	c.addi16sp	000000C0
	c.jr	ra

l2304E73E:
	c.li	s2,00000001
	c.j	000000002304E722

;; subscribeToShadowActionAcks: 2304E742
;;   Called from:
;;     2304DAA2 (in aws_iot_shadow_internal_action)
subscribeToShadowActionAcks proc
	c.addi16sp	FFFFFFA0
	c.swsp	s5,000000A0
	lui	s5,00042020
	c.swsp	s4,00000024
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.mv	s4,a2
	addi	a4,s5,+00000180
	addi	a3,s5,+00000180
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s11,00000094
	c.mv	s9,a0
	c.mv	s10,a1
	c.li	a5,00000000
	addi	s5,s5,+00000180
	c.li	a2,00000014

l2304E778:
	lbu	a0,a3,+00000051
	andi	a1,a5,+000000FF
	beq	a0,zero,000000002304E878

l2304E784:
	addi	a3,zero,+00000053
	add	a5,a5,a3
	slli	s3,a1,00000010
	srai	s3,s3,00000010
	c.add	a5,s5
	sb	zero,a5,+00000051

l2304E79A:
	c.li	s0,00000000
	c.li	a5,00000014

l2304E79E:
	lbu	a3,a4,+00000051
	andi	s6,s0,+000000FF
	beq	a3,zero,000000002304E886

l2304E7AA:
	addi	s1,zero,+00000053
	add	s0,s0,s1
	c.slli	s6,10
	c.li	a5,FFFFFFFF
	srai	s6,s6,00000010
	c.li	s2,00000000
	c.add	s0,s5
	sb	zero,s0,+00000051
	beq	s3,a5,000000002304E8D6

l2304E7C6:
	add	s1,s3,s1
	c.li	a3,00000000
	c.mv	a2,s10
	c.mv	a1,s9
	lui	s11,00042020
	lui	s8,0002304E
	c.add	s1,s5
	c.mv	a0,s1
	jal	ra,000000002304E27A
	c.mv	a0,s1
	lw	s2,s11,+000007FC
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	c.li	a5,00000000
	c.mv	a0,s2
	addi	a4,s8,+00000440
	c.li	a3,00000000
	c.srli	a2,00000010
	c.mv	a1,s1
	jal	ra,000000002304FE54
	c.mv	s2,a0
	c.bnez	a0,000000002304E89A

l2304E804:
	c.li	s7,00000001
	c.li	a3,00000001
	c.mv	a2,s10
	c.mv	a1,s9
	sb	s7,s1,+00000050
	sb	s4,s1,+00000052
	c.mv	a0,s0
	jal	ra,000000002304E27A
	c.mv	a0,s0
	lw	s1,s11,+000007FC
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	c.li	a5,00000000
	addi	a4,s8,+00000440
	c.li	a3,00000000
	c.srli	a2,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304FE54
	c.mv	s2,a0
	c.bnez	a0,000000002304E89A

l2304E83E:
	c.addi4spn	a0,00000014
	sb	s7,s0,+00000050
	sb	s4,s0,+00000052
	c.jal	000000002304EB94
	c.li	a1,00000002
	c.addi4spn	a0,00000014
	c.jal	000000002304EB4C

l2304E850:
	c.addi4spn	a0,00000014
	c.jal	000000002304EABE
	c.beqz	a0,000000002304E850

l2304E856:
	c.li	s2,00000000

l2304E858:
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

l2304E878:
	c.addi	a5,00000001
	addi	a3,a3,+00000053
	bne	a5,a2,000000002304E778

l2304E882:
	c.li	s3,FFFFFFFF
	c.j	000000002304E79A

l2304E886:
	c.addi	s0,00000001
	addi	a4,a4,+00000053
	bne	s0,a5,000000002304E79E

l2304E890:
	c.li	a5,FFFFFFFF
	beq	s3,a5,000000002304E856

l2304E896:
	c.li	s6,FFFFFFFF
	c.li	s2,00000000

l2304E89A:
	addi	a1,zero,+00000053
	add	a1,s3,a1
	c.li	a5,00000001
	c.add	a1,s5
	lbu	a4,a1,+00000050
	sb	a5,a1,+00000051
	bne	a4,a5,000000002304E8D0

l2304E8B2:
	lui	a5,00042020
	c.mv	a0,a1
	lw	s0,a5,+000007FC
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	slli	a2,a0,00000010
	c.srli	a2,00000010
	c.mv	a0,s0
	jal	ra,00000000230500A2

l2304E8D0:
	c.li	a5,FFFFFFFF
	beq	s6,a5,000000002304E858

l2304E8D6:
	addi	a5,zero,+00000053
	add	s6,s6,a5
	c.li	a5,00000001
	c.add	s5,s6
	sb	a5,s5,+00000051
	c.j	000000002304E858

;; incrementSubscriptionCnt: 2304E8E8
;;   Called from:
;;     2304DAC6 (in aws_iot_shadow_internal_action)
incrementSubscriptionCnt proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.mv	s0,a0
	c.mv	s1,a1
	c.swsp	s2,00000050
	c.li	a3,00000000
	c.mv	s2,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.mv	a0,sp
	c.swsp	ra,000000D4
	jal	ra,000000002304E27A
	c.mv	a1,s0
	lui	s0,00042020
	c.mv	a2,s1
	c.li	a3,00000001
	c.addi4spn	a0,00000050
	addi	s0,s0,+00000180
	jal	ra,000000002304E27A
	addi	s1,s0,+0000067C

l2304E91C:
	lbu	a5,s0,+00000051
	c.bnez	a5,000000002304E93A

l2304E922:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,0000000023071100
	c.bnez	a0,000000002304E94E

l2304E92C:
	lbu	a5,s0,+00000050
	sb	s2,s0,+00000052
	c.addi	a5,00000001
	sb	a5,s0,+00000050

l2304E93A:
	addi	s0,s0,+00000053
	bne	s0,s1,000000002304E91C

l2304E942:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.lwsp	t1,00000134
	c.lwsp	sp,00000158
	c.addi16sp	000000B0
	c.jr	ra

l2304E94E:
	c.mv	a1,s0
	c.addi4spn	a0,00000050
	jal	ra,0000000023071100
	c.beqz	a0,000000002304E92C

l2304E958:
	c.j	000000002304E93A

;; publishToShadowAction: 2304E95A
;;   Called from:
;;     2304DAD2 (in aws_iot_shadow_internal_action)
publishToShadowAction proc
	c.beqz	a0,000000002304E9AA

l2304E95C:
	c.mv	a5,a0
	c.li	a0,FFFFFFFE
	c.beqz	a2,000000002304E9AE

l2304E962:
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	c.li	a3,00000002
	c.mv	s0,a2
	c.addi4spn	a0,00000010
	c.mv	a2,a1
	c.mv	a1,a5
	c.swsp	ra,000000B4
	jal	ra,000000002304E27A
	c.mv	a0,s0
	sh	zero,sp,+00000000
	jal	ra,000000002307132C
	lui	a5,00042020
	c.swsp	a0,00000084
	c.swsp	s0,00000004
	c.addi4spn	a0,00000010
	lw	s0,a5,+000007FC
	jal	ra,000000002307132C
	slli	a2,a0,00000010
	c.mv	a3,sp
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	c.srli	a2,00000010
	jal	ra,000000002304FB78
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.addi16sp	00000070
	c.jr	ra

l2304E9AA:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2304E9AE:
	c.jr	ra

;; getNextFreeIndexOfAckWaitList: 2304E9B0
;;   Called from:
;;     2304DA86 (in aws_iot_shadow_internal_action)
getNextFreeIndexOfAckWaitList proc
	c.li	a3,00000000
	c.beqz	a0,000000002304E9CA

l2304E9B4:
	lui	a4,00042021
	addi	a4,a4,-000007EC
	c.li	a5,00000000
	c.li	a2,0000000A

l2304E9C0:
	lbu	a3,a4,+00000078
	c.beqz	a3,000000002304E9CE

l2304E9C6:
	sb	a5,a0,+00000000

l2304E9CA:
	c.mv	a0,a3
	c.jr	ra

l2304E9CE:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	addi	a4,a4,+00000088
	bne	a5,a2,000000002304E9C0

l2304E9DC:
	c.j	000000002304E9CA

;; addToAckWaitList: 2304E9DE
;;   Called from:
;;     2304DAF6 (in aws_iot_shadow_internal_action)
addToAckWaitList proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042021
	c.swsp	s2,00000010
	addi	s2,s0,-000007EC
	addi	s0,zero,+00000088
	add	s0,a0,s0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a2
	c.mv	s4,a1
	addi	a2,zero,+0000005A
	c.mv	a1,a3
	c.swsp	a6,00000004
	add	s1,s2,s0
	c.sw	s1,112(a4)
	c.mv	a0,s1
	c.swsp	a5,00000084
	jal	ra,0000000023070C7C
	addi	a0,s0,+0000005A
	c.mv	a1,s4
	c.li	a2,00000014
	c.add	a0,s2
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	addi	s0,s0,+0000007C
	c.add	s0,s2
	c.sw	s1,116(a5)
	sb	s3,s1,+0000006E
	c.mv	a0,s0
	c.jal	000000002304EB94
	c.lwsp	s0,00000008
	c.mv	a0,s0
	c.mv	a1,a6
	c.jal	000000002304EB4C
	sb	zero,s1,+00000078
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; HandleExpiredResponseCallbacks: 2304EA52
;;   Called from:
;;     2304D9C0 (in aws_iot_shadow_yield)
HandleExpiredResponseCallbacks proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042021
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	addi	s0,s0,-000007EC
	c.li	s1,00000000
	c.li	s3,00000001
	lui	s4,00042020
	c.li	s2,0000000A

l2304EA72:
	lbu	a5,s0,+00000078
	c.bnez	a5,000000002304EAA0

l2304EA78:
	addi	a0,s0,+0000007C
	c.jal	000000002304EABE
	c.beqz	a0,000000002304EAA0

l2304EA80:
	c.lw	s0,112(a5)
	c.beqz	a5,000000002304EA96

l2304EA84:
	c.lw	s0,116(a4)
	lbu	a1,s0,+0000006E
	addi	a3,s4,-00000124
	c.li	a2,00000000
	addi	a0,s0,+0000005A
	c.jalr	a5

l2304EA96:
	c.mv	a0,s1
	sb	s3,s0,+00000078
	jal	ra,000000002304E322

l2304EAA0:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	addi	s0,s0,+00000088
	bne	s1,s2,000000002304EA72

l2304EAAE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; has_timer_expired: 2304EABE
;;   Called from:
;;     2304E852 (in subscribeToShadowActionAcks)
;;     2304EA7C (in HandleExpiredResponseCallbacks)
;;     230502D6 (in aws_iot_mqtt_yield)
;;     23050310 (in aws_iot_mqtt_yield)
;;     23050386 (in aws_iot_mqtt_yield)
;;     23050A48 (in iot_tls_write)
;;     23050A58 (in iot_tls_write)
;;     23050AB4 (in iot_tls_write)
;;     23050B80 (in iot_tls_read)
;;     23050F04 (in aws_iot_mqtt_internal_send_packet)
;;     23051232 (in aws_iot_mqtt_internal_wait_for_read)
has_timer_expired proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230302E8
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.mv	s2,a0
	sub	a5,a0,a5
	sltu	s1,a5,a4
	xori	s1,s1,+00000001
	bgeu	a5,a4,000000002304EAF0

l2304EAE4:
	c.lw	s0,8(a5)
	bne	a5,a0,000000002304EAF0

l2304EAEA:
	c.li	a0,00000001
	jal	ra,0000000023030630

l2304EAF0:
	sw	s2,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; countdown_ms: 2304EB02
;;   Called from:
;;     2304EB90 (in countdown_sec)
;;     2304F63E (in aws_iot_mqtt_connect)
;;     2304F8CA (in _aws_iot_mqtt_internal_disconnect)
;;     2304FBE8 (in aws_iot_mqtt_publish)
;;     2304FEC8 (in aws_iot_mqtt_subscribe)
;;     2305001C (in aws_iot_mqtt_resubscribe)
;;     2305015E (in aws_iot_mqtt_unsubscribe)
;;     230502AE (in aws_iot_mqtt_yield)
;;     23050366 (in aws_iot_mqtt_yield)
;;     230503C6 (in aws_iot_mqtt_yield)
;;     230503D8 (in aws_iot_mqtt_yield)
;;     23050F88 (in aws_iot_mqtt_internal_cycle_read)
countdown_ms proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,00000000230302E8
	c.lwsp	a2,00000064
	c.sw	s0,0(a0)
	sw	zero,s0,+00000008
	c.sw	s0,4(a1)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; left_ms: 2304EB22
;;   Called from:
;;     23050B2E (in iot_tls_read)
;;     23050B3A (in iot_tls_read)
;;     23050B48 (in iot_tls_read)
;;     23050B54 (in iot_tls_read)
left_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230302E8
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	sub	a3,a0,a5
	bgeu	a3,a4,000000002304EB48

l2304EB3A:
	c.add	a5,a4
	sub	a0,a5,a0

l2304EB40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304EB48:
	c.li	a0,00000000
	c.j	000000002304EB40

;; countdown_sec: 2304EB4C
;;   Called from:
;;     2304E84E (in subscribeToShadowActionAcks)
;;     2304EA3C (in addToAckWaitList)
;;     23050408 (in aws_iot_mqtt_yield)
;;     230511EE (in aws_iot_mqtt_internal_cycle_read)
countdown_sec proc
	c.addi	sp,FFFFFFF0
	lui	a5,00000419
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	a5,a5,-000006C9
	c.mv	s1,a0
	c.mv	s0,a1
	bgeu	a5,a1,000000002304EB7E

l2304EB64:
	lui	a0,00023088
	addi	a0,a0,-00000468
	jal	ra,00000000230520DC
	lui	a0,00023088
	c.mv	a1,s0
	addi	a0,a0,-0000045C
	jal	ra,0000000023052118

l2304EB7E:
	addi	a1,zero,+000003E8
	add	a1,s0,a1
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304EB02

;; init_timer: 2304EB94
;;   Called from:
;;     2304E848 (in subscribeToShadowActionAcks)
;;     2304EA34 (in addToAckWaitList)
;;     2304F580 (in aws_iot_mqtt_init)
;;     2304F588 (in aws_iot_mqtt_init)
;;     2304F632 (in aws_iot_mqtt_connect)
;;     2304F8C2 (in _aws_iot_mqtt_internal_disconnect)
;;     2304FBE0 (in aws_iot_mqtt_publish)
;;     2304FEC0 (in aws_iot_mqtt_subscribe)
;;     23050014 (in aws_iot_mqtt_resubscribe)
;;     23050152 (in aws_iot_mqtt_unsubscribe)
;;     230502A4 (in aws_iot_mqtt_yield)
;;     230503D0 (in aws_iot_mqtt_yield)
;;     23050F80 (in aws_iot_mqtt_internal_cycle_read)
init_timer proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	c.jr	ra

;; jsmn_parse: 2304EBA2
;;   Called from:
;;     2304DE88 (in isJsonValidAndParse)
;;     2304E07E (in extractClientToken)
jsmn_parse proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s3,00000010
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	c.mv	a5,a0
	c.lw	a0,4(a0)
	addi	t4,zero,+0000002C
	c.li	a6,FFFFFFFF
	c.li	t5,00000001
	addi	t6,zero,+00000020
	addi	t0,zero,+0000003A
	addi	t2,zero,+0000005D
	addi	s0,zero,+0000007D
	c.li	s3,00000009

l2304EBDA:
	lw	a7,a5,+00000000
	bgeu	a7,a2,000000002304EBEE

l2304EBE2:
	add	t1,a1,a7
	lbu	t1,t1,+00000000
	bne	t1,zero,000000002304EC1C

l2304EBEE:
	c.beqz	a3,000000002304EC00

l2304EBF0:
	c.lw	a5,4(a5)
	addi	a4,a5,-00000001
	c.slli	a5,04
	c.add	a3,a5
	c.li	a5,FFFFFFFF

l2304EBFC:
	bge	a4,zero,000000002304EF88

l2304EC00:
	c.lwsp	a2,00000114
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

l2304EC1C:
	beq	t1,t4,000000002304EE94

l2304EC20:
	bltu	t4,t1,000000002304EC88

l2304EC24:
	c.li	t3,0000000D
	beq	t1,t3,000000002304ED68

l2304EC2A:
	bltu	t3,t1,000000002304EC3C

l2304EC2E:
	c.addi	t1,FFFFFFF7
	andi	t1,t1,+000000FF
	bgeu	t5,t1,000000002304ED68

l2304EC38:
	c.li	s1,0000000D
	c.j	000000002304EF0C

l2304EC3C:
	beq	t1,t6,000000002304ED68

l2304EC40:
	addi	t3,zero,+00000022
	bne	t1,t3,000000002304EC38

l2304EC48:
	addi	s4,a7,+00000001
	sw	s4,a5,+00000000
	addi	s5,zero,+00000022
	addi	s6,zero,+0000005C
	addi	s7,zero,+00000066
	addi	s8,zero,+00000072
	addi	s10,zero,+0000006E
	addi	s9,zero,+0000002F
	addi	s11,zero,+00000062

l2304EC6C:
	lw	t3,a5,+00000000
	bgeu	t3,a2,000000002304EC80

l2304EC74:
	add	t1,a1,t3
	lbu	t1,t1,+00000000
	bne	t1,zero,000000002304ED84

l2304EC80:
	sw	a7,a5,+00000000

l2304EC84:
	c.li	a0,FFFFFFFD
	c.j	000000002304EC00

l2304EC88:
	beq	t1,t2,000000002304ED06

l2304EC8C:
	bltu	t2,t1,000000002304ECFA

l2304EC90:
	beq	t1,t0,000000002304ECEE

l2304EC94:
	addi	t3,zero,+0000005B
	bne	t1,t3,000000002304EC38

l2304EC9C:
	c.addi	a0,00000001
	c.beqz	a3,000000002304ED68

l2304ECA0:
	lw	a7,a5,+00000004
	bgeu	a7,a4,000000002304ED96

l2304ECA8:
	addi	t3,a7,+00000001
	c.slli	a7,04
	sw	t3,a5,+00000004
	c.add	a7,a3
	sw	a6,a7,+00000008
	sw	a6,a7,+00000004
	sw	zero,a7,+0000000C
	lw	t3,a5,+00000008
	beq	t3,a6,000000002304ECD6

l2304ECC8:
	c.slli	t3,04
	c.add	t3,a3
	lw	s1,t3,+0000000C
	c.addi	s1,00000001
	sw	s1,t3,+0000000C

l2304ECD6:
	addi	s1,zero,+0000007B
	c.li	t3,00000001
	beq	t1,s1,000000002304ECE2

l2304ECE0:
	c.li	t3,00000002

l2304ECE2:
	sb	t3,a7,+00000000
	lw	t1,a5,+00000000
	sw	t1,a7,+00000004

l2304ECEE:
	lw	a7,a5,+00000004
	c.addi	a7,FFFFFFFF
	sw	a7,a5,+00000008
	c.j	000000002304ED68

l2304ECFA:
	addi	t3,zero,+0000007B
	beq	t1,t3,000000002304EC9C

l2304ED02:
	bne	t1,s0,000000002304EC38

l2304ED06:
	c.beqz	a3,000000002304ED68

l2304ED08:
	c.li	s2,00000001
	beq	t1,s0,000000002304ED10

l2304ED0E:
	c.li	s2,00000002

l2304ED10:
	lw	t3,a5,+00000004
	addi	t1,t3,-00000001
	c.slli	t3,04
	c.add	t3,a3

l2304ED1C:
	bge	t1,zero,000000002304ED28

l2304ED20:
	bne	t1,a6,000000002304ED68

l2304ED24:
	c.li	a0,FFFFFFFE
	c.j	000000002304EC00

l2304ED28:
	lw	s4,t3,-0000000C
	addi	s1,t3,-00000010
	beq	s4,a6,000000002304ED74

l2304ED34:
	lw	t3,t3,-00000008
	bne	t3,a6,000000002304ED74

l2304ED3C:
	lbu	t3,s1,+00000000
	bne	t3,s2,000000002304ED24

l2304ED44:
	c.addi	a7,00000001
	sw	a6,a5,+00000008
	sw	a7,s1,+00000008
	slli	a7,t1,00000004
	c.add	a7,a3

l2304ED54:
	lw	t3,a7,+00000004
	beq	t3,a6,000000002304ED7A

l2304ED5C:
	lw	t3,a7,+00000008
	bne	t3,a6,000000002304ED7A

l2304ED64:
	sw	t1,a5,+00000008

l2304ED68:
	lw	a7,a5,+00000000
	c.addi	a7,00000001
	sw	a7,a5,+00000000
	c.j	000000002304EBDA

l2304ED74:
	c.addi	t1,FFFFFFFF
	c.mv	t3,s1
	c.j	000000002304ED1C

l2304ED7A:
	c.addi	t1,FFFFFFFF
	c.addi	a7,FFFFFFF0
	bne	t1,a6,000000002304ED54

l2304ED82:
	c.j	000000002304ED68

l2304ED84:
	bne	t1,s5,000000002304EDE2

l2304ED88:
	c.beqz	a3,000000002304EDC6

l2304ED8A:
	lw	t1,a5,+00000004
	bltu	t1,a4,000000002304ED9A

l2304ED92:
	sw	a7,a5,+00000000

l2304ED96:
	c.li	a0,FFFFFFFF
	c.j	000000002304EC00

l2304ED9A:
	addi	a7,t1,+00000001
	sw	a7,a5,+00000004
	slli	a7,t1,00000004
	c.add	a7,a3
	sw	a6,a7,+00000008
	sw	a6,a7,+00000004
	sw	zero,a7,+0000000C
	lw	t1,a5,+00000000
	c.li	t3,00000003
	sb	t3,a7,+00000000
	sw	s4,a7,+00000004
	sw	t1,a7,+00000008

l2304EDC6:
	lw	a7,a5,+00000008
	c.addi	a0,00000001
	beq	a7,a6,000000002304ED68

l2304EDD0:
	c.beqz	a3,000000002304ED68

l2304EDD2:
	c.slli	a7,04
	c.add	a7,a3
	lw	t1,a7,+0000000C
	c.addi	t1,00000001
	sw	t1,a7,+0000000C
	c.j	000000002304ED68

l2304EDE2:
	bne	t1,s6,000000002304EE0C

l2304EDE6:
	addi	t1,t3,+00000001
	bgeu	t1,a2,000000002304EE0C

l2304EDEE:
	sw	t1,a5,+00000000
	c.add	t1,a1
	lbu	t1,t1,+00000000
	beq	t1,s7,000000002304EE0C

l2304EDFC:
	bltu	s7,t1,000000002304EE26

l2304EE00:
	beq	t1,s9,000000002304EE0C

l2304EE04:
	bltu	s9,t1,000000002304EE18

l2304EE08:
	bne	t1,s5,000000002304EE20

l2304EE0C:
	lw	t1,a5,+00000000
	c.addi	t1,00000001
	sw	t1,a5,+00000000
	c.j	000000002304EC6C

l2304EE18:
	beq	t1,s6,000000002304EE0C

l2304EE1C:
	beq	t1,s11,000000002304EE0C

l2304EE20:
	sw	a7,a5,+00000000
	c.j	000000002304ED24

l2304EE26:
	beq	t1,s8,000000002304EE0C

l2304EE2A:
	bltu	s8,t1,000000002304EE34

l2304EE2E:
	bne	t1,s10,000000002304EE20

l2304EE32:
	c.j	000000002304EE0C

l2304EE34:
	addi	s1,zero,+00000074
	beq	t1,s1,000000002304EE0C

l2304EE3C:
	addi	s1,zero,+00000075
	bne	t1,s1,000000002304EE20

l2304EE44:
	c.addi	t3,00000002
	sw	t3,a5,+00000000
	c.li	s1,00000004

l2304EE4C:
	lw	t3,a5,+00000000
	bgeu	t3,a2,000000002304EE88

l2304EE54:
	add	t1,a1,t3
	lbu	t1,t1,+00000000
	beq	t1,zero,000000002304EE88

l2304EE60:
	addi	s2,t1,-00000030
	andi	s2,s2,+000000FF
	bgeu	s3,s2,000000002304EE7E

l2304EE6C:
	andi	t1,t1,-00000021
	addi	t1,t1,-00000041
	andi	t1,t1,+000000FF
	c.li	s2,00000005
	bltu	s2,t1,000000002304EE20

l2304EE7E:
	c.addi	t3,00000001
	sw	t3,a5,+00000000
	c.addi	s1,FFFFFFFF
	c.bnez	s1,000000002304EE4C

l2304EE88:
	lw	t1,a5,+00000000
	c.addi	t1,FFFFFFFF
	sw	t1,a5,+00000000
	c.j	000000002304EE0C

l2304EE94:
	beq	a3,zero,000000002304ED68

l2304EE98:
	lw	a7,a5,+00000008
	beq	a7,a6,000000002304ED68

l2304EEA0:
	c.slli	a7,04
	c.add	a7,a3
	lbu	a7,a7,+00000000
	c.addi	a7,FFFFFFFF
	andi	a7,a7,+000000FF
	bgeu	t5,a7,000000002304ED68

l2304EEB2:
	lw	a7,a5,+00000004
	addi	t3,a7,-00000001
	c.slli	a7,04
	c.add	a7,a3

l2304EEBE:
	blt	t3,zero,000000002304ED68

l2304EEC2:
	lbu	t1,a7,-00000010
	c.addi	t1,FFFFFFFF
	andi	t1,t1,+000000FF
	bltu	t5,t1,000000002304EEE6

l2304EED0:
	lw	t1,a7,-0000000C
	beq	t1,a6,000000002304EEE6

l2304EED8:
	lw	t1,a7,-00000008
	bne	t1,a6,000000002304EEE6

l2304EEE0:
	sw	t3,a5,+00000008
	c.j	000000002304ED68

l2304EEE6:
	c.addi	t3,FFFFFFFF
	c.addi	a7,FFFFFFF0
	c.j	000000002304EEBE

l2304EEEC:
	beq	t1,t0,000000002304EF36

l2304EEF0:
	bltu	t0,t1,000000002304EF40

l2304EEF4:
	beq	t1,t4,000000002304EF36

l2304EEF8:
	c.addi	t1,FFFFFFE0
	andi	t1,t1,+000000FF
	addi	s2,zero,+0000005E
	bltu	s2,t1,000000002304EE20

l2304EF06:
	c.addi	t3,00000001
	sw	t3,a5,+00000000

l2304EF0C:
	lw	t3,a5,+00000000
	bgeu	t3,a2,000000002304EF36

l2304EF14:
	add	t1,a1,t3
	lbu	t1,t1,+00000000
	beq	t1,zero,000000002304EF36

l2304EF20:
	beq	t1,t6,000000002304EF36

l2304EF24:
	bltu	t6,t1,000000002304EEEC

l2304EF28:
	bltu	t1,s3,000000002304EEF8

l2304EF2C:
	c.li	s2,0000000A
	bgeu	s2,t1,000000002304EF36

l2304EF32:
	bne	t1,s1,000000002304EEF8

l2304EF36:
	c.bnez	a3,000000002304EF4A

l2304EF38:
	c.addi	t3,FFFFFFFF
	sw	t3,a5,+00000000
	c.j	000000002304EDC6

l2304EF40:
	beq	t1,t2,000000002304EF36

l2304EF44:
	bne	t1,s0,000000002304EEF8

l2304EF48:
	c.j	000000002304EF36

l2304EF4A:
	lw	t1,a5,+00000004
	bgeu	t1,a4,000000002304ED92

l2304EF52:
	addi	t3,t1,+00000001
	c.slli	t1,04
	sw	t3,a5,+00000004
	c.add	t1,a3
	sw	a6,t1,+00000008
	sw	a6,t1,+00000004
	sw	zero,t1,+0000000C
	lw	t3,a5,+00000000
	c.li	s1,00000004
	sb	s1,t1,+00000000
	sw	a7,t1,+00000004
	sw	t3,t1,+00000008
	lw	a7,a5,+00000000
	c.addi	a7,FFFFFFFF
	sw	a7,a5,+00000000
	c.j	000000002304EDC6

l2304EF88:
	lw	a2,a3,-0000000C
	beq	a2,a5,000000002304EF98

l2304EF90:
	lw	a2,a3,-00000008
	beq	a2,a5,000000002304EC84

l2304EF98:
	c.addi	a4,FFFFFFFF
	c.addi	a3,FFFFFFF0
	c.j	000000002304EBFC

;; jsmn_init: 2304EF9E
;;   Called from:
;;     2304DE6C (in isJsonValidAndParse)
;;     2304E064 (in extractClientToken)
jsmn_init proc
	c.li	a5,FFFFFFFF
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.sw	a0,8(a5)
	c.jr	ra

;; jsoneq: 2304EFAC
;;   Called from:
;;     2304DEF0 (in isJsonKeyMatchingAndUpdateValue)
;;     2304E034 (in isJsonKeyMatchingAndUpdateValue)
;;     2304E0C2 (in extractClientToken)
;;     2304E142 (in extractVersionNumber)
jsoneq proc
	lbu	a4,a1,+00000000
	c.li	a5,00000003
	beq	a4,a5,000000002304EFC6

l2304EFB6:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2304EFBA:
	c.li	a0,FFFFFFFF

l2304EFBC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304EFC6:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	a2,00000084
	c.mv	s0,a1
	c.swsp	ra,0000008C
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.lw	s0,8(a5)
	c.lw	s0,4(a0)
	c.sub	a5,a0
	bne	a2,a5,000000002304EFBA

l2304EFE6:
	c.lwsp	a2,00000064
	c.add	a0,s1
	jal	ra,00000000230713B8
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.j	000000002304EFBC

;; parseUnsignedInteger32Value: 2304EFF8
;;   Called from:
;;     2304DFB2 (in isJsonKeyMatchingAndUpdateValue)
;;     2304E154 (in extractVersionNumber)
parseUnsignedInteger32Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	bne	a4,a5,000000002304F03A

l2304F002:
	c.lw	a2,4(a5)
	addi	a4,zero,+0000002D
	c.add	a5,a1
	lbu	a3,a5,+00000000
	beq	a3,a4,000000002304F03A

l2304F012:
	lui	a1,0002308D
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	addi	a1,a1,-00000670
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023052186
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002304F032

l2304F02E:
	addi	a5,zero,-0000002A

l2304F032:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F03A:
	addi	a5,zero,-0000002A
	c.mv	a0,a5
	c.jr	ra

;; parseUnsignedInteger16Value: 2304F042
;;   Called from:
;;     2304DFCA (in isJsonKeyMatchingAndUpdateValue)
parseUnsignedInteger16Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	bne	a4,a5,000000002304F084

l2304F04C:
	c.lw	a2,4(a5)
	addi	a4,zero,+0000002D
	c.add	a5,a1
	lbu	a3,a5,+00000000
	beq	a3,a4,000000002304F084

l2304F05C:
	lui	a1,00023088
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	addi	a1,a1,-00000428
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023052186
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002304F07C

l2304F078:
	addi	a5,zero,-0000002A

l2304F07C:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F084:
	addi	a5,zero,-0000002A
	c.mv	a0,a5
	c.jr	ra

;; parseUnsignedInteger8Value: 2304F08C
;;   Called from:
;;     2304DFE0 (in isJsonKeyMatchingAndUpdateValue)
parseUnsignedInteger8Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	beq	a4,a5,000000002304F0A8

l2304F096:
	addi	a0,zero,-0000002A
	c.jr	ra

l2304F09C:
	addi	a0,zero,-0000002A

l2304F0A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304F0A8:
	c.lw	a2,4(a5)
	addi	a4,zero,+0000002D
	c.add	a5,a1
	lbu	a3,a5,+00000000
	beq	a3,a4,000000002304F096

l2304F0B8:
	c.addi	sp,FFFFFFE0
	lui	a1,0002308D
	c.swsp	s0,0000000C
	c.addi4spn	a2,0000000C
	c.mv	s0,a0
	addi	a1,a1,-00000670
	c.mv	a0,a5
	c.swsp	ra,0000008C
	jal	ra,0000000023052186
	c.li	a5,00000001
	bne	a0,a5,000000002304F09C

l2304F0D6:
	c.lwsp	a2,000000E4
	addi	a4,zero,+000000FF
	bltu	a4,a5,000000002304F09C

l2304F0E0:
	sb	a5,s0,+00000000
	c.li	a0,00000000
	c.j	000000002304F0A0

;; parseInteger32Value: 2304F0E8
;;   Called from:
;;     2304DF6C (in isJsonKeyMatchingAndUpdateValue)
parseInteger32Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	bne	a4,a5,000000002304F120

l2304F0F2:
	c.addi	sp,FFFFFFF0
	c.mv	a5,a2
	c.swsp	ra,00000084
	c.mv	a2,a0
	c.lw	a5,4(a0)
	c.mv	a4,a1
	lui	a1,00023075
	c.add	a0,a4
	addi	a1,a1,+00000514
	jal	ra,0000000023052186
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002304F118

l2304F114:
	addi	a5,zero,-0000002A

l2304F118:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F120:
	addi	a5,zero,-0000002A
	c.mv	a0,a5
	c.jr	ra

;; parseInteger16Value: 2304F128
;;   Called from:
;;     2304DF84 (in isJsonKeyMatchingAndUpdateValue)
parseInteger16Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	beq	a4,a5,000000002304F144

l2304F132:
	addi	a0,zero,-0000002A
	c.jr	ra

l2304F138:
	addi	a0,zero,-0000002A

l2304F13C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304F144:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a2,4(a0)
	c.mv	a5,a1
	lui	a1,00023088
	c.add	a0,a5
	c.addi4spn	a2,0000000C
	addi	a1,a1,-0000042C
	jal	ra,0000000023052186
	c.li	a5,00000001
	bne	a0,a5,000000002304F138

l2304F166:
	c.lwsp	a2,000000C4
	c.lui	a5,00008000
	c.lui	a3,00010000
	c.add	a5,a4
	bgeu	a5,a3,000000002304F138

l2304F172:
	sh	a4,s0,+00000000
	c.li	a0,00000000
	c.j	000000002304F13C

;; parseInteger8Value: 2304F17A
;;   Called from:
;;     2304DF9A (in isJsonKeyMatchingAndUpdateValue)
parseInteger8Value proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	beq	a4,a5,000000002304F196

l2304F184:
	addi	a0,zero,-0000002A
	c.jr	ra

l2304F18A:
	addi	a0,zero,-0000002A

l2304F18E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304F196:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a2,4(a0)
	c.mv	a5,a1
	lui	a1,00023088
	c.add	a0,a5
	c.addi4spn	a2,0000000C
	addi	a1,a1,-0000042C
	jal	ra,0000000023052186
	c.li	a5,00000001
	bne	a0,a5,000000002304F18A

l2304F1B8:
	c.lwsp	a2,000000E4
	addi	a4,zero,+000000FF
	addi	a3,a5,+00000080
	bltu	a4,a3,000000002304F18A

l2304F1C6:
	sb	a5,s0,+00000000
	c.li	a0,00000000
	c.j	000000002304F18E

;; parseFloatValue: 2304F1CE
;;   Called from:
;;     2304DFFA (in isJsonKeyMatchingAndUpdateValue)
parseFloatValue proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	bne	a4,a5,000000002304F206

l2304F1D8:
	c.addi	sp,FFFFFFF0
	c.mv	a5,a2
	c.swsp	ra,00000084
	c.mv	a2,a0
	c.lw	a5,4(a0)
	c.mv	a4,a1
	lui	a1,00023088
	c.add	a0,a4
	addi	a1,a1,-00000430
	jal	ra,0000000023052186
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002304F1FE

l2304F1FA:
	addi	a5,zero,-0000002A

l2304F1FE:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F206:
	addi	a5,zero,-0000002A
	c.mv	a0,a5
	c.jr	ra

;; parseDoubleValue: 2304F20E
;;   Called from:
;;     2304E012 (in isJsonKeyMatchingAndUpdateValue)
parseDoubleValue proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	bne	a4,a5,000000002304F246

l2304F218:
	c.addi	sp,FFFFFFF0
	c.mv	a5,a2
	c.swsp	ra,00000084
	c.mv	a2,a0
	c.lw	a5,4(a0)
	c.mv	a4,a1
	lui	a1,00023088
	c.add	a0,a4
	addi	a1,a1,-00000434
	jal	ra,0000000023052186
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002304F23E

l2304F23A:
	addi	a5,zero,-0000002A

l2304F23E:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F246:
	addi	a5,zero,-0000002A
	c.mv	a0,a5
	c.jr	ra

;; parseBooleanValue: 2304F24E
;;   Called from:
;;     2304DF36 (in isJsonKeyMatchingAndUpdateValue)
parseBooleanValue proc
	lbu	a4,a2,+00000000
	c.li	a5,00000004
	beq	a4,a5,000000002304F26E

l2304F258:
	addi	a0,zero,-0000002A
	c.jr	ra

l2304F25E:
	addi	a0,zero,-0000002A

l2304F262:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304F26E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.lw	a2,4(a0)
	c.mv	s2,a1
	lui	a1,00023073
	c.mv	s0,a2
	addi	a1,a1,-000001A8
	c.li	a2,00000004
	c.add	a0,s2
	jal	ra,00000000230713B8
	c.bnez	a0,000000002304F29A

l2304F292:
	c.li	a5,00000001
	sb	a5,s1,+00000000
	c.j	000000002304F262

l2304F29A:
	c.lw	s0,4(a0)
	lui	a1,00023073
	c.li	a2,00000005
	addi	a1,a1,-000001A0
	c.add	a0,s2
	jal	ra,00000000230713B8
	c.bnez	a0,000000002304F25E

l2304F2AE:
	sb	zero,s1,+00000000
	c.j	000000002304F262

;; parseStringValue: 2304F2B4
;;   Called from:
;;     2304E026 (in isJsonKeyMatchingAndUpdateValue)
parseStringValue proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lw	a6,a3,+00000004
	c.lw	a3,8(s1)
	lbu	a3,a3,+00000000
	c.li	a4,00000003
	sub	s1,s1,a6
	bne	a3,a4,000000002304F2FE

l2304F2D0:
	addi	a3,s1,+00000001
	addi	a4,zero,-0000002D
	bltu	a1,a3,000000002304F2F2

l2304F2DC:
	c.mv	a1,a2
	c.add	a1,a6
	c.mv	a2,s1
	c.mv	s0,a0
	jal	ra,00000000230714A8
	add	a5,s0,s1
	sb	zero,a5,+00000000
	c.li	a4,00000000

l2304F2F2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l2304F2FE:
	addi	a4,zero,-0000002A
	c.j	000000002304F2F2

;; aws_iot_mqtt_get_client_state: 2304F304
;;   Called from:
;;     2304F5EE (in aws_iot_mqtt_connect)
;;     2304F90C (in aws_iot_mqtt_disconnect)
;;     2304F96E (in aws_iot_mqtt_attempt_reconnect)
;;     2304FBBA (in aws_iot_mqtt_publish)
;;     2304FE8A (in aws_iot_mqtt_subscribe)
;;     2304FFB4 (in aws_iot_mqtt_resubscribe)
;;     230500D6 (in aws_iot_mqtt_unsubscribe)
;;     2305028E (in aws_iot_mqtt_yield)
;;     230502C4 (in aws_iot_mqtt_yield)
;;     23051106 (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_get_client_state proc
	c.beqz	a0,000000002304F30C

l2304F306:
	lbu	a0,a0,+00000018
	c.jr	ra

l2304F30C:
	c.li	a0,00000000
	c.jr	ra

;; aws_iot_mqtt_client_lock_mutex: 2304F310
;;   Called from:
;;     2304F352 (in aws_iot_mqtt_set_client_state)
;;     23050EEE (in aws_iot_mqtt_internal_send_packet)
;;     23050F76 (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_client_lock_mutex proc
	c.beqz	a0,000000002304F324

l2304F312:
	c.beqz	a1,000000002304F324

l2304F314:
	lbu	a5,a0,+00000440
	c.mv	a0,a1
	c.bnez	a5,000000002304F320

l2304F31C:
	jal	zero,0000000023050CB2

l2304F320:
	jal	zero,0000000023050C9E

l2304F324:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_mqtt_client_unlock_mutex: 2304F328
;;   Called from:
;;     2304F36C (in aws_iot_mqtt_set_client_state)
;;     23050F26 (in aws_iot_mqtt_internal_send_packet)
;;     23051032 (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_client_unlock_mutex proc
	c.beqz	a0,000000002304F332

l2304F32A:
	c.beqz	a1,000000002304F332

l2304F32C:
	c.mv	a0,a1
	jal	zero,0000000023050CCE

l2304F332:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_mqtt_set_client_state: 2304F336
;;   Called from:
;;     2304F618 (in aws_iot_mqtt_connect)
;;     2304F854 (in aws_iot_mqtt_connect)
;;     2304F922 (in aws_iot_mqtt_disconnect)
;;     2304F97E (in aws_iot_mqtt_attempt_reconnect)
;;     2304FBD4 (in aws_iot_mqtt_publish)
;;     2304FCDA (in aws_iot_mqtt_publish)
;;     2304FEA4 (in aws_iot_mqtt_subscribe)
;;     2304FF14 (in aws_iot_mqtt_subscribe)
;;     2304FFC6 (in aws_iot_mqtt_resubscribe)
;;     2305007C (in aws_iot_mqtt_resubscribe)
;;     230500F0 (in aws_iot_mqtt_unsubscribe)
;;     230500FC (in aws_iot_mqtt_unsubscribe)
;;     2305013C (in aws_iot_mqtt_unsubscribe)
;;     23050304 (in aws_iot_mqtt_yield)
;;     23050338 (in aws_iot_mqtt_yield)
;;     230503B2 (in aws_iot_mqtt_yield)
;;     2305043A (in aws_iot_mqtt_yield)
;;     23051112 (in aws_iot_mqtt_internal_cycle_read)
;;     2305114C (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_set_client_state proc
	c.beqz	a0,000000002304F384

l2304F338:
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	addi	s4,a0,+00000444
	c.swsp	s3,00000084
	c.mv	s3,a1
	c.mv	a1,s4
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s2,a2
	jal	ra,000000002304F310
	c.bnez	a0,000000002304F374

l2304F358:
	lbu	a5,s0,+00000018
	c.li	s1,FFFFFFE3
	bne	a5,s3,000000002304F368

l2304F362:
	sb	s2,s0,+00000018
	c.li	s1,00000000

l2304F368:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002304F328
	c.beqz	s1,000000002304F374

l2304F372:
	c.mv	a0,s1

l2304F374:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304F384:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_mqtt_set_connect_params: 2304F388
;;   Called from:
;;     2304F4DC (in aws_iot_mqtt_init)
;;     2304F668 (in aws_iot_mqtt_connect)
aws_iot_mqtt_set_connect_params proc
	c.beqz	a0,000000002304F44C

l2304F38A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.li	a0,FFFFFFFE
	c.beqz	a1,000000002304F440

l2304F39A:
	lbu	a5,a1,+00000011
	lui	s2,00042017
	addi	a0,s2,-0000069C
	sb	a5,s0,+00000461
	lbu	a5,a1,+00000004
	c.mv	s1,a1
	sb	a5,s0,+00000454
	c.lw	a1,8(a5)
	sw	a5,s0,+00000458
	lhu	a5,a1,+0000000C
	sh	a5,s0,+0000045C
	jal	ra,000000002307132C
	c.bnez	a0,000000002304F3E0

l2304F3C8:
	lui	a2,00023088
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a3,00000003
	addi	a2,a2,-000003EC
	c.li	a1,00000019
	addi	a0,s2,-0000069C
	jal	ra,000000002305216A

l2304F3E0:
	addi	a5,s2,-0000069C
	sw	a5,s0,+00000478
	addi	a0,s2,-0000069C
	jal	ra,000000002307132C
	sh	a0,s0,+0000047C
	c.lw	s1,48(a5)
	c.li	a0,00000000
	sw	a5,s0,+00000480
	lhu	a5,s1,+00000034
	sh	a5,s0,+00000484
	c.lw	s1,24(a5)
	sw	a5,s0,+00000468
	lhu	a5,s1,+0000001C
	sh	a5,s0,+0000046C
	c.lw	s1,32(a5)
	sw	a5,s0,+00000470
	lhu	a5,s1,+00000024
	sh	a5,s0,+00000474
	lbu	a5,s1,+00000027
	sb	a5,s0,+00000477
	lbu	a5,s1,+00000026
	sb	a5,s0,+00000476
	lhu	a5,s1,+0000000E
	sh	a5,s0,+0000045E
	lbu	a5,s1,+00000010
	sb	a5,s0,+00000460

l2304F440:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304F44C:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_mqtt_init: 2304F450
;;   Called from:
;;     2304D884 (in aws_iot_shadow_init)
aws_iot_mqtt_init proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.mv	s1,a1
	lui	a1,00023088
	c.swsp	s0,0000002C
	addi	a2,zero,+00000038
	c.mv	s0,a0
	addi	a1,a1,-00000424
	c.addi4spn	a0,00000008
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.li	s2,FFFFFFFE
	jal	ra,0000000023070C7C
	c.beqz	s0,000000002304F50E

l2304F47C:
	c.beqz	s1,000000002304F50E

l2304F47E:
	c.lw	s1,4(a5)
	c.beqz	a5,000000002304F50E

l2304F482:
	lhu	a5,s1,+00000008
	c.beqz	a5,000000002304F50E

l2304F488:
	c.lw	s1,12(a5)
	c.beqz	a5,000000002304F50E

l2304F48C:
	c.lw	s1,20(a5)
	c.beqz	a5,000000002304F50E

l2304F490:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002304F50E

l2304F494:
	addi	a5,s0,+00000488
	addi	a4,s0,+000004D8

l2304F49C:
	sw	zero,a5,+00000000
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sb	zero,a5,+00000006
	c.addi	a5,00000010
	bne	a5,a4,000000002304F49C

l2304F4B2:
	c.lw	s1,24(a5)
	c.li	s5,00000001
	c.addi4spn	a1,00000008
	c.sw	s0,32(a5)
	c.lw	s1,28(a5)
	sw	zero,s0,+00000030
	c.mv	a0,s0
	c.sw	s0,36(a5)
	addi	a5,zero,+00000200
	c.sw	s0,52(a5)
	c.sw	s0,56(a5)
	c.lw	s1,40(a5)
	sw	a5,s0,+000004D8
	c.lw	s1,44(a5)
	sh	s5,s0,+0000001C
	sw	a5,s0,+000004DC
	jal	ra,000000002304F388
	c.mv	s2,a0
	c.bnez	a0,000000002304F50E

l2304F4E4:
	lbu	a5,s1,+00000030
	addi	s3,s0,+00000444
	c.mv	a0,s3
	sb	a5,s0,+00000440
	jal	ra,0000000023050C7C
	c.mv	s2,a0
	c.bnez	a0,000000002304F50E

l2304F4FA:
	addi	s4,s0,+00000448
	c.mv	a0,s4
	jal	ra,0000000023050C7C
	c.mv	s2,a0
	c.beqz	a0,000000002304F524

l2304F508:
	c.mv	a0,s3
	jal	ra,0000000023050CE8

l2304F50E:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s2
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.addi16sp	00000060
	c.jr	ra

l2304F524:
	addi	s6,s0,+0000044C
	c.mv	a0,s6
	jal	ra,0000000023050C7C
	c.mv	s2,a0
	c.beqz	a0,000000002304F53A

l2304F532:
	c.mv	a0,s4
	jal	ra,0000000023050CE8
	c.j	000000002304F508

l2304F53A:
	sb	zero,s0,+00000019
	lbu	a5,s1,+00000000
	addi	a0,s0,+000004E0
	sb	a5,s0,+0000001A
	lbu	a7,s1,+00000024
	lw	a6,s1,+00000020
	lhu	a5,s1,+00000008
	c.lw	s1,4(a4)
	c.lw	s1,20(a3)
	c.lw	s1,16(a2)
	c.lw	s1,12(a1)
	jal	ra,0000000023050C24
	c.mv	s2,a0
	c.beqz	a0,000000002304F57E

l2304F566:
	c.mv	a0,s4
	jal	ra,0000000023050CE8
	c.mv	a0,s3
	jal	ra,0000000023050CE8
	c.mv	a0,s6
	jal	ra,0000000023050CE8
	sb	zero,s0,+00000018
	c.j	000000002304F50E

l2304F57E:
	c.mv	a0,s0
	jal	ra,000000002304EB94
	addi	a0,s0,+0000000C
	jal	ra,000000002304EB94
	sb	s5,s0,+00000018
	c.j	000000002304F50E

;; aws_iot_mqtt_get_next_packet_id: 2304F592
;;   Called from:
;;     2304FBF8 (in aws_iot_mqtt_publish)
;;     2304FED2 (in aws_iot_mqtt_subscribe)
;;     23050026 (in aws_iot_mqtt_resubscribe)
;;     23050168 (in aws_iot_mqtt_unsubscribe)
aws_iot_mqtt_get_next_packet_id proc
	lhu	a5,a0,+0000001C
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a5,a4,000000002304F5AC

l2304F59E:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010

l2304F5A4:
	sh	a5,a0,+0000001C
	c.mv	a0,a5
	c.jr	ra

l2304F5AC:
	c.li	a5,00000001
	c.j	000000002304F5A4

;; aws_iot_mqtt_is_client_connected: 2304F5B0
;;   Called from:
;;     2304D996 (in aws_iot_shadow_register_delta)
;;     2304D9F6 (in aws_iot_shadow_update)
;;     2304F914 (in aws_iot_mqtt_disconnect)
;;     2304F95C (in aws_iot_mqtt_attempt_reconnect)
;;     2304FBAE (in aws_iot_mqtt_publish)
;;     2304FE80 (in aws_iot_mqtt_subscribe)
;;     2304FFAA (in aws_iot_mqtt_resubscribe)
;;     230500CC (in aws_iot_mqtt_unsubscribe)
;;     23050320 (in aws_iot_mqtt_yield)
aws_iot_mqtt_is_client_connected proc
	c.beqz	a0,000000002304F5BE

l2304F5B2:
	lbu	a0,a0,+00000018
	c.addi	a0,FFFFFFFD
	sltiu	a0,a0,+00000007
	c.jr	ra

l2304F5BE:
	c.li	a0,00000000
	c.jr	ra

;; aws_iot_mqtt_autoreconnect_set_status: 2304F5C2
;;   Called from:
;;     2304DA3C (in aws_iot_shadow_set_autoreconnect_status)
aws_iot_mqtt_autoreconnect_set_status proc
	c.beqz	a0,000000002304F5CC

l2304F5C4:
	sb	a1,a0,+0000001A
	c.li	a0,00000000
	c.jr	ra

l2304F5CC:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; aws_iot_mqtt_connect: 2304F5D0
;;   Called from:
;;     2304D92A (in aws_iot_shadow_connect)
;;     2304F968 (in aws_iot_mqtt_attempt_reconnect)
aws_iot_mqtt_connect proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.li	s1,FFFFFFFE
	beq	a0,zero,000000002304F858

l2304F5E4:
	c.mv	s2,a1
	c.mv	s0,a0
	jal	ra,000000002305120E
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a5,00000001
	c.mv	a1,a0
	beq	a0,a5,000000002304F614

l2304F5FA:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	c.li	s1,FFFFFFF1
	beq	a5,zero,000000002304F858

l2304F606:
	addi	a5,a0,-0000000B
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	bltu	a4,a5,000000002304F858

l2304F614:
	c.li	a2,00000002
	c.mv	a0,s0
	jal	ra,000000002304F336
	addi	s3,s0,+000004E0
	bne	s2,zero,000000002304F664

l2304F624:
	lw	a5,s0,+000004E0
	c.li	a1,00000000
	c.mv	a0,s3
	c.jalr	a5
	c.bnez	a0,000000002304F660

l2304F630:
	c.addi4spn	a0,00000014
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000014
	addi	s4,s0,+00000040
	jal	ra,000000002304EB02
	lhu	a5,s0,+0000045E
	sb	zero,sp,+0000000C
	c.lw	s0,52(s1)
	sh	a5,s0,+00000028
	lw	a5,s0,+00000458
	lhu	s2,s0,+0000045C
	c.bnez	a5,000000002304F672

l2304F65A:
	beq	s2,zero,000000002304F676

l2304F65E:
	c.li	a0,FFFFFFFE

l2304F660:
	c.mv	s1,a0
	c.j	000000002304F86E

l2304F664:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002304F388
	c.beqz	a0,000000002304F624

l2304F66E:
	c.li	s1,FFFFFFE6
	c.j	000000002304F86E

l2304F672:
	beq	s2,zero,000000002304F65E

l2304F676:
	lbu	a4,s0,+00000454
	c.li	a5,00000004
	addi	a0,zero,-00000025
	bne	a4,a5,000000002304F660

l2304F684:
	lbu	a5,s0,+00000461
	c.swsp	s4,00000008
	c.addi	s2,0000000C
	c.beqz	a5,000000002304F69C

l2304F68E:
	lhu	a5,s0,+0000046C
	lhu	a4,s0,+00000474
	c.add	a5,a4
	c.addi	a5,00000004
	c.add	s2,a5

l2304F69C:
	lw	a5,s0,+00000478
	c.beqz	a5,000000002304F6AA

l2304F6A2:
	lhu	a5,s0,+0000047C
	c.addi	a5,00000002
	c.add	s2,a5

l2304F6AA:
	lw	a5,s0,+00000480
	c.beqz	a5,000000002304F6B8

l2304F6B0:
	lhu	a5,s0,+00000484
	c.addi	a5,00000002
	c.add	s2,a5

l2304F6B8:
	c.mv	a0,s2
	jal	ra,0000000023050DBA
	bgeu	s1,a0,000000002304F6C8

l2304F6C2:
	addi	a0,zero,-00000021
	c.j	000000002304F660

l2304F6C8:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000001
	c.addi4spn	a0,0000000C
	jal	ra,0000000023050E6E
	c.mv	s1,a0
	c.bnez	a0,000000002304F660

l2304F6DA:
	lbu	a1,sp,+0000000C
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E2C
	c.lwsp	a6,00000044
	c.mv	a1,s2
	jal	ra,0000000023050D4E
	c.lwsp	a6,000000E4
	lui	a1,00023088
	c.li	a2,00000004
	c.add	a0,a5
	c.swsp	a0,00000008
	addi	a1,a1,-00000384
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A
	lbu	a1,s0,+00000454
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E2C
	lbu	a1,s0,+00000460
	lbu	a5,s0,+00000461
	sltu	a1,zero,a1
	c.slli	a1,01
	c.beqz	a5,000000002304F734

l2304F71C:
	lbu	a5,s0,+00000477
	lbu	a4,s0,+00000476
	ori	a1,a1,+00000004
	c.slli	a5,03
	c.slli	a4,05
	c.or	a5,a4
	c.or	a1,a5
	andi	a1,a1,+000000FF

l2304F734:
	lw	a5,s0,+00000480
	c.beqz	a5,000000002304F73E

l2304F73A:
	ori	a1,a1,+00000040

l2304F73E:
	lw	a5,s0,+00000478
	c.beqz	a5,000000002304F748

l2304F744:
	ori	a1,a1,+00000080

l2304F748:
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E2C
	lhu	a1,s0,+0000045E
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E00
	lw	a1,s0,+00000458
	bne	a1,zero,000000002304F834

l2304F760:
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E00

l2304F766:
	lbu	a5,s0,+00000461
	c.beqz	a5,000000002304F788

l2304F76C:
	lhu	a2,s0,+0000046C
	lw	a1,s0,+00000468
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A
	lhu	a2,s0,+00000474
	lw	a1,s0,+00000470
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A

l2304F788:
	lw	a1,s0,+00000478
	c.beqz	a1,000000002304F798

l2304F78E:
	lhu	a2,s0,+0000047C
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A

l2304F798:
	lw	a1,s0,+00000480
	c.beqz	a1,000000002304F7A8

l2304F79E:
	lhu	a2,s0,+00000484
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A

l2304F7A8:
	c.lwsp	a6,00000064
	sub	a1,a1,s4
	c.beqz	a1,000000002304F84E

l2304F7B0:
	c.addi4spn	a2,00000014
	c.mv	a0,s0
	jal	ra,0000000023050EC2
	bne	a0,zero,000000002304F660

l2304F7BC:
	c.addi4spn	a2,00000014
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023051216
	bne	a0,zero,000000002304F660

l2304F7CA:
	c.lw	s0,56(a3)
	c.li	a4,00000003
	addi	a5,s0,+00000240
	c.li	a0,FFFFFFE0
	bgeu	a4,a3,000000002304F660

l2304F7D8:
	c.addi4spn	a0,00000008
	c.swsp	a5,00000004
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	jal	ra,0000000023050E1E
	c.srli	a0,00000004
	andi	s2,a0,+000000FF
	c.li	a5,00000002
	c.li	a0,FFFFFFFF
	bne	s2,a5,000000002304F660

l2304F7F2:
	c.lwsp	s0,00000044
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	jal	ra,0000000023050D7A
	bne	a0,zero,000000002304F660

l2304F800:
	c.lwsp	s0,000000E4
	c.lwsp	a6,000000C4
	addi	a0,zero,-00000023
	c.add	a5,a4
	c.swsp	a5,00000004
	c.lwsp	a2,000000E4
	bne	a5,s2,000000002304F660

l2304F812:
	c.addi4spn	a0,00000008
	jal	ra,0000000023050E1E
	c.addi4spn	a0,00000008
	jal	ra,0000000023050E1E
	c.li	a5,00000005
	bltu	a5,a0,000000002304F89E

l2304F824:
	lui	a5,00023088
	addi	a5,a5,-0000039C
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5

l2304F834:
	lhu	a2,s0,+0000045C
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A
	c.j	000000002304F766
2304F840 83 55 84 02 A3 0C 04 00 22 85 EF F0 2F B0       .U......".../. 

l2304F84E:
	c.li	a2,00000003

l2304F850:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002304F336

l2304F858:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra
2304F86A                               93 04 B0 FD                 .... 

l2304F86E:
	lw	a5,s0,+000004EC
	c.mv	a0,s3
	c.jalr	a5
	lw	a5,s0,+000004F4
	c.mv	a0,s3
	c.jalr	a5
	c.li	a2,0000000B
	c.beqz	a0,000000002304F850

l2304F882:
	c.li	s1,FFFFFFF3
	c.j	000000002304F858
2304F886                   93 04 A0 FD D5 B7 93 04 90 FD       ..........
2304F890 F9 BF 93 04 80 FD E1 BF 93 04 70 FD C9 BF       ..........p... 

l2304F89E:
	addi	s1,zero,-00000024
	c.j	000000002304F86E

;; _aws_iot_mqtt_internal_disconnect: 2304F8A4
;;   Called from:
;;     2304F92C (in aws_iot_mqtt_disconnect)
_aws_iot_mqtt_internal_disconnect proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.lw	a0,52(a1)
	c.mv	s0,a0
	c.mv	a3,sp
	c.li	a2,0000000E
	addi	a0,a0,+00000040
	c.swsp	zero,00000000
	jal	ra,0000000023051266
	c.bnez	a0,000000002304F8F6

l2304F8C0:
	c.addi4spn	a0,00000004
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000004
	jal	ra,000000002304EB02
	c.lwsp	zero,00000064
	c.beqz	a1,000000002304F8DA

l2304F8D2:
	c.addi4spn	a2,00000004
	c.mv	a0,s0
	jal	ra,0000000023050EC2

l2304F8DA:
	lw	a5,s0,+000004EC
	addi	s1,s0,+000004E0
	c.mv	a0,s1
	c.jalr	a5
	lw	a5,s0,+000004F4
	c.mv	a0,s1
	c.jalr	a5
	sltu	a0,zero,a0
	sub	a0,zero,a0

l2304F8F6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; aws_iot_mqtt_disconnect: 2304F900
;;   Called from:
;;     2304D9D4 (in aws_iot_shadow_disconnect)
;;     23050232 (in _aws_iot_mqtt_handle_disconnect)
aws_iot_mqtt_disconnect proc
	c.beqz	a0,000000002304F94C

l2304F902:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	jal	ra,000000002304F304
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002304F5B0
	c.li	a5,FFFFFFF3
	c.beqz	a0,000000002304F938

l2304F91C:
	c.li	a2,0000000A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	c.bnez	a0,000000002304F938

l2304F92A:
	c.mv	a0,s0
	jal	ra,000000002304F8A4
	c.mv	a5,a0
	c.beqz	a0,000000002304F944

l2304F934:
	sb	s1,s0,+00000018

l2304F938:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F944:
	c.li	a4,0000000C
	sb	a4,s0,+00000018
	c.j	000000002304F938

l2304F94C:
	c.li	a5,FFFFFFFE
	c.mv	a0,a5
	c.jr	ra

;; aws_iot_mqtt_attempt_reconnect: 2304F952
;;   Called from:
;;     230502F2 (in aws_iot_mqtt_yield)
aws_iot_mqtt_attempt_reconnect proc
	c.beqz	a0,000000002304F99A

l2304F954:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002304F5B0
	c.li	a5,FFFFFFF1
	c.bnez	a0,000000002304F984

l2304F964:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304F5D0
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a5,00000003
	beq	a0,a5,000000002304F98E

l2304F978:
	c.li	a2,0000000D
	c.li	a1,0000000B
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.li	a5,00000004

l2304F984:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304F98E:
	c.mv	a0,s0
	c.jal	000000002304FF92
	c.mv	a5,a0
	c.bnez	a0,000000002304F984

l2304F996:
	c.li	a5,00000003
	c.j	000000002304F984

l2304F99A:
	c.li	a5,FFFFFFFE
	c.mv	a0,a5
	c.jr	ra

;; aws_iot_mqtt_internal_serialize_ack: 2304F9A0
;;   Called from:
;;     2305116E (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_internal_serialize_ack proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	sb	zero,sp,+00000008
	c.li	s0,FFFFFFFE
	c.beqz	a0,000000002304FA04

l2304F9B4:
	c.beqz	a5,000000002304FA04

l2304F9B6:
	c.swsp	a0,00000084
	c.li	a6,00000003
	addi	s0,zero,-00000021
	bgeu	a6,a1,000000002304FA04

l2304F9C2:
	c.mv	a1,a2
	c.addi	a2,FFFFFFFA
	c.mv	s2,a4
	c.mv	s1,a0
	c.li	a4,00000000
	sltiu	a2,a2,+00000001
	c.addi4spn	a0,00000008
	c.mv	s3,a5
	jal	ra,0000000023050E6E
	c.mv	s0,a0
	c.bnez	a0,000000002304FA04

l2304F9DC:
	lbu	a1,sp,+00000008
	c.addi4spn	a0,0000000C
	jal	ra,0000000023050E2C
	c.lwsp	a2,00000044
	c.li	a1,00000002
	jal	ra,0000000023050D4E
	c.lwsp	a2,000000C4
	c.mv	a1,s2
	c.add	a0,a4
	c.swsp	a0,00000084
	c.addi4spn	a0,0000000C
	jal	ra,0000000023050E00
	c.lwsp	a2,00000044
	c.sub	a0,s1
	sw	a0,s3,+00000000

l2304FA04:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; aws_iot_mqtt_internal_deserialize_publish: 2304FA14
;;   Called from:
;;     230510F0 (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_internal_deserialize_publish proc
	c.addi16sp	FFFFFFC0
	c.lwsp	ra,0000008C
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
	c.swsp	t3,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.lwsp	t0,000000C0
	c.bnez	a0,000000002304FA52

l2304FA36:
	c.li	s7,FFFFFFFF

l2304FA38:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s7
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

l2304FA52:
	c.beqz	a1,000000002304FA36

l2304FA54:
	c.beqz	a2,000000002304FA36

l2304FA56:
	c.beqz	a3,000000002304FA36

l2304FA58:
	c.li	s8,00000003
	c.li	s7,FFFFFFE0
	bgeu	s8,t1,000000002304FA38

l2304FA60:
	c.mv	s7,a0
	c.addi4spn	a0,00000004
	c.mv	s5,a5
	c.mv	s3,a7
	c.mv	s2,a6
	c.mv	s6,a4
	c.mv	s4,a3
	c.mv	s0,a2
	c.mv	s1,a1
	jal	ra,0000000023050E1E
	srli	a5,a0,00000004
	andi	a5,a5,+000000FF
	bne	a5,s8,000000002304FA36

l2304FA82:
	srai	a5,a0,00000003
	c.andi	a5,00000001
	sb	a5,s7,+00000000
	srai	a5,a0,00000001
	c.andi	a5,00000003
	sb	a5,s1,+00000000
	c.andi	a0,00000001
	sb	a0,s0,+00000000
	c.lwsp	tp,00000044
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	jal	ra,0000000023050D7A
	c.mv	s7,a0
	c.bnez	a0,000000002304FA38

l2304FAAA:
	c.lwsp	tp,00000004
	c.lwsp	a2,000000E4
	c.li	a4,00000001
	c.add	s0,a5
	c.lwsp	s0,000000E4
	c.swsp	s0,00000080
	c.add	s0,a5
	bge	a4,a5,000000002304FA36

l2304FABC:
	c.addi4spn	a0,00000004
	jal	ra,0000000023050DE6
	c.lwsp	tp,00000084
	sh	a0,s5,+00000000
	c.add	a0,a2
	bltu	s0,a0,000000002304FA36

l2304FACE:
	sw	a2,s6,+00000000
	lhu	a5,s5,+00000000
	c.add	a2,a5
	c.swsp	a2,00000080
	sub	a2,s0,a2
	blt	a2,zero,000000002304FA36

l2304FAE2:
	lbu	a5,s1,+00000000
	c.beqz	a5,000000002304FAF2

l2304FAE8:
	c.addi4spn	a0,00000004
	jal	ra,0000000023050DE6
	sh	a0,s4,+00000000

l2304FAF2:
	c.lwsp	tp,000000E4
	c.sub	s0,a5
	sw	s0,s3,+00000000
	sw	a5,s2,+00000000
	c.j	000000002304FA38

;; aws_iot_mqtt_internal_deserialize_ack: 2304FB00
;;   Called from:
;;     2304FCCE (in aws_iot_mqtt_publish)
;;     230501F8 (in aws_iot_mqtt_unsubscribe)
aws_iot_mqtt_internal_deserialize_ack proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	a3,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.li	s0,FFFFFFFE
	c.beqz	a0,000000002304FB66

l2304FB14:
	c.beqz	a1,000000002304FB66

l2304FB16:
	c.beqz	a2,000000002304FB66

l2304FB18:
	c.beqz	a3,000000002304FB66

l2304FB1A:
	c.li	a5,00000003
	c.li	s0,FFFFFFE0
	bgeu	a5,a4,000000002304FB66

l2304FB22:
	c.mv	s0,a0
	c.addi4spn	a0,00000004
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,0000000023050E1E
	srai	a5,a0,00000003
	c.andi	a5,00000001
	sb	a5,s1,+00000000
	c.srli	a0,00000004
	sb	a0,s0,+00000000
	c.lwsp	tp,00000044
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	jal	ra,0000000023050D7A
	c.mv	s0,a0
	c.bnez	a0,000000002304FB66

l2304FB4C:
	c.lwsp	tp,000000E4
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.lwsp	s0,000000C4
	c.swsp	a5,00000080
	c.li	a5,00000001
	bge	a5,a4,000000002304FB74

l2304FB5C:
	c.addi4spn	a0,00000004
	jal	ra,0000000023050DE6
	sh	a0,s2,+00000000

l2304FB66:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304FB74:
	c.li	s0,FFFFFFFF
	c.j	000000002304FB66

;; aws_iot_mqtt_publish: 2304FB78
;;   Called from:
;;     2304E99E (in publishToShadowAction)
aws_iot_mqtt_publish proc
	c.li	a5,FFFFFFFE
	beq	a0,zero,000000002304FD06

l2304FB7E:
	beq	a1,zero,000000002304FD06

l2304FB82:
	beq	a2,zero,000000002304FD06

l2304FB86:
	beq	a3,zero,000000002304FD06

l2304FB8A:
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s3,000000AC
	c.swsp	s5,000000A8
	c.swsp	ra,000000B4
	c.swsp	s2,00000030
	c.swsp	s4,0000002C
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.mv	s0,a0
	c.mv	s1,a3
	c.mv	s3,a2
	c.mv	s5,a1
	jal	ra,000000002304F5B0
	c.li	a5,FFFFFFF3
	beq	a0,zero,000000002304FCE6

l2304FBB8:
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a5,00000003
	c.mv	s4,a0
	beq	a0,a5,000000002304FBCE

l2304FBC6:
	c.li	a4,00000009
	c.li	a5,FFFFFFE2
	bne	a0,a4,000000002304FCE6

l2304FBCE:
	c.li	a2,00000005
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	bne	a0,zero,000000002304FCE6

l2304FBDE:
	c.addi4spn	a0,00000024
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000024
	jal	ra,000000002304EB02
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002304FC00

l2304FBF6:
	c.mv	a0,s0
	jal	ra,000000002304F592
	sh	a0,s1,+00000004

l2304FC00:
	lw	s9,s1,+00000008
	sb	zero,sp,+0000001C
	addi	s8,s0,+00000040
	c.lw	s0,52(a3)
	lbu	s7,s1,+00000000
	lbu	a4,s1,+00000001
	lhu	s10,s1,+00000004
	lw	s6,s1,+0000000C
	c.li	s2,FFFFFFFE
	beq	s9,zero,000000002304FCD4

l2304FC24:
	add	a5,s3,s6
	c.swsp	s8,00000010
	addi	s11,a5,+00000004
	bne	s7,zero,000000002304FC36

l2304FC32:
	addi	s11,a5,+00000002

l2304FC36:
	c.mv	a0,s11
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,0000000023050DBA
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	addi	s2,zero,-00000021
	bltu	a3,a0,000000002304FCD4

l2304FC4C:
	c.li	a3,00000000
	c.mv	a2,s7
	c.li	a1,00000003
	c.addi4spn	a0,0000001C
	jal	ra,0000000023050E6E
	c.mv	s2,a0
	c.bnez	a0,000000002304FCD4

l2304FC5C:
	lbu	a1,sp,+0000001C
	c.addi4spn	a0,00000020
	jal	ra,0000000023050E2C
	c.lwsp	zero,00000154
	c.mv	a1,s11
	jal	ra,0000000023050D4E
	c.lwsp	zero,000001F4
	c.mv	a2,s3
	c.mv	a1,s5
	c.add	a0,a5
	c.swsp	a0,00000010
	c.addi4spn	a0,00000020
	jal	ra,0000000023050E3A
	beq	s7,zero,000000002304FC8A

l2304FC82:
	c.mv	a1,s10
	c.addi4spn	a0,00000020
	jal	ra,0000000023050E00

l2304FC8A:
	c.lwsp	zero,00000154
	c.mv	a2,s6
	c.mv	a1,s9
	jal	ra,0000000023070C7C
	c.lwsp	zero,00000174
	c.addi4spn	a2,00000024
	c.mv	a0,s0
	c.add	a1,s6
	sub	a1,a1,s8
	jal	ra,0000000023050EC2
	c.mv	s2,a0
	c.bnez	a0,000000002304FCD4

l2304FCA8:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002304FCD4

l2304FCB2:
	c.addi4spn	a2,00000024
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023051216
	c.mv	s2,a0
	c.bnez	a0,000000002304FCD4

l2304FCC0:
	c.lw	s0,56(a4)
	addi	a3,s0,+00000240
	c.addi4spn	a2,00000020
	addi	a1,sp,+0000001B
	c.addi4spn	a0,0000001C
	jal	ra,000000002304FB00
	c.mv	s2,a0

l2304FCD4:
	c.mv	a2,s4
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	beq	s2,zero,000000002304FCE6

l2304FCE4:
	c.mv	a5,s2

l2304FCE6:
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
	c.mv	a0,a5
	c.addi16sp	00000070
	c.jr	ra

l2304FD06:
	c.mv	a0,a5
	c.jr	ra

;; _aws_iot_mqtt_deserialize_suback.constprop.0: 2304FD0A
;;   Called from:
;;     2304FF60 (in aws_iot_mqtt_subscribe)
;;     2305006E (in aws_iot_mqtt_resubscribe)
_aws_iot_mqtt_deserialize_suback.constprop.0 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	a3,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.li	a5,00000004
	c.li	s3,FFFFFFE0
	bgeu	a5,a4,000000002304FD42

l2304FD28:
	c.mv	s2,a0
	c.addi4spn	a0,00000004
	c.mv	s4,a2
	c.mv	s1,a1
	jal	ra,0000000023050E1E
	c.srli	a0,00000004
	andi	a0,a0,+000000FF
	c.li	a5,00000009
	beq	a0,a5,000000002304FD56

l2304FD40:
	c.li	s3,FFFFFFFF

l2304FD42:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2304FD56:
	c.lwsp	tp,00000044
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	jal	ra,0000000023050D7A
	c.mv	s3,a0
	c.bnez	a0,000000002304FD42

l2304FD64:
	c.lwsp	tp,000000E4
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.lwsp	s0,000000C4
	c.swsp	a5,00000080
	add	s0,a5,a4
	c.li	a5,00000001
	bge	a5,a4,000000002304FD40

l2304FD78:
	c.addi4spn	a0,00000004
	jal	ra,0000000023050DE6
	sh	a0,s2,+00000000
	sw	zero,s1,+00000000
	c.li	s5,00000001

l2304FD88:
	c.lwsp	tp,000000E4
	bgeu	a5,s0,000000002304FD42

l2304FD8E:
	c.lw	s1,0(a5)
	bltu	s5,a5,000000002304FD40

l2304FD94:
	addi	a4,a5,+00000001
	c.sw	s1,0(a4)
	c.addi4spn	a0,00000004
	add	s2,s4,a5
	jal	ra,0000000023050E1E
	sb	a0,s2,+00000000
	c.j	000000002304FD88

;; _aws_iot_mqtt_serialize_subscribe.constprop.1: 2304FDAA
;;   Called from:
;;     2304FEEE (in aws_iot_mqtt_subscribe)
;;     2305003E (in aws_iot_mqtt_resubscribe)
_aws_iot_mqtt_serialize_subscribe.constprop.1 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	lhu	s0,a4,+00000000
	c.swsp	a0,0000008C
	c.mv	s2,a0
	c.addi	s0,00000005
	c.mv	a0,s0
	c.swsp	a1,00000084
	c.mv	s7,a2
	c.mv	s6,a3
	c.mv	s3,a4
	c.mv	s5,a5
	c.mv	s4,a6
	sb	zero,sp,+00000018
	jal	ra,0000000023050DBA
	c.lwsp	a2,00000064
	addi	s1,zero,-00000021
	bltu	a1,a0,000000002304FE3C

l2304FDE8:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,0000000023050E6E
	c.mv	s1,a0
	c.bnez	a0,000000002304FE3C

l2304FDFA:
	lbu	a1,sp,+00000018
	c.addi4spn	a0,0000001C
	jal	ra,0000000023050E2C
	c.lwsp	t3,00000044
	c.mv	a1,s0
	jal	ra,0000000023050D4E
	c.lwsp	t3,000000E4
	c.mv	a1,s7
	c.add	a0,a5
	c.swsp	a0,0000008C
	c.addi4spn	a0,0000001C
	jal	ra,0000000023050E00
	lhu	a2,s3,+00000000
	lw	a1,s6,+00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023050E3A
	lbu	a1,s5,+00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023050E2C
	c.lwsp	t3,00000044
	sub	a0,a0,s2
	sw	a0,s4,+00000000

l2304FE3C:
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
	c.addi16sp	00000050
	c.jr	ra

;; aws_iot_mqtt_subscribe: 2304FE54
;;   Called from:
;;     2304D974 (in aws_iot_shadow_connect)
;;     2304E63A (in registerJsonTokenOnDelta)
;;     2304E7FC (in subscribeToShadowActionAcks)
;;     2304E836 (in subscribeToShadowActionAcks)
aws_iot_mqtt_subscribe proc
	c.li	a6,FFFFFFFE
	beq	a0,zero,000000002304FF8E

l2304FE5A:
	beq	a1,zero,000000002304FF8E

l2304FE5E:
	beq	a4,zero,000000002304FF8E

l2304FE62:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.mv	s0,a0
	c.mv	s5,a5
	c.mv	s4,a4
	c.mv	s2,a3
	c.mv	s6,a2
	c.mv	s1,a1
	jal	ra,000000002304F5B0
	c.li	a6,FFFFFFF3
	c.beqz	a0,000000002304FF20

l2304FE88:
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a5,00000003
	c.mv	s3,a0
	beq	a0,a5,000000002304FE9E

l2304FE96:
	c.li	a5,00000009
	c.li	a6,FFFFFFE2
	bne	a0,a5,000000002304FF20

l2304FE9E:
	c.li	a2,00000006
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a6,a0
	c.bnez	a0,000000002304FF20

l2304FEAC:
	c.addi4spn	a0,00000024
	sb	s2,sp,+0000000F
	c.swsp	s1,0000000C
	sh	s6,sp,+00000010
	sh	zero,sp,+00000014
	sb	zero,sp,+00000016
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000024
	jal	ra,000000002304EB02
	c.mv	a0,s0
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	jal	ra,000000002304F592
	c.lw	s0,52(a1)
	c.mv	a2,a0
	addi	a6,sp,+0000001C
	addi	a5,sp,+0000000F
	c.addi4spn	a4,00000010
	c.addi4spn	a3,00000018
	addi	a0,s0,+00000040
	sh	zero,sp,+00000012
	jal	ra,000000002304FDAA
	c.mv	s2,a0
	c.bnez	a0,000000002304FF0E

l2304FEF6:
	addi	a5,s0,+00000488
	c.li	s1,00000000
	c.li	a4,00000005

l2304FEFE:
	c.lw	a5,0(a3)
	c.beqz	a3,000000002304FF36

l2304FF02:
	c.addi	s1,00000001
	c.addi	a5,00000010
	bne	s1,a4,000000002304FEFE

l2304FF0A:
	addi	s2,zero,-00000022

l2304FF0E:
	c.mv	a2,s3
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a6,a0
	beq	s2,zero,000000002304FF20

l2304FF1E:
	c.mv	a6,s2

l2304FF20:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.mv	a0,a6
	c.addi16sp	00000050
	c.jr	ra

l2304FF36:
	c.lwsp	t3,00000064
	c.addi4spn	a2,00000024
	c.mv	a0,s0
	jal	ra,0000000023050EC2
	c.mv	s2,a0
	c.bnez	a0,000000002304FF0E

l2304FF44:
	c.addi4spn	a2,00000024
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,0000000023051216
	c.mv	s2,a0
	c.bnez	a0,000000002304FF0E

l2304FF52:
	c.lw	s0,56(a4)
	addi	a3,s0,+00000240
	c.addi4spn	a2,00000014
	c.addi4spn	a1,00000020
	addi	a0,sp,+00000012
	jal	ra,000000002304FD0A
	c.mv	s2,a0
	c.bnez	a0,000000002304FF0E

l2304FF68:
	c.lwsp	s8,000000E4
	slli	a3,s1,00000004
	c.add	a3,s0
	sw	a5,a3,+00000488
	lhu	a5,sp,+00000010
	sw	s4,a3,+00000490
	sw	s5,a3,+00000494
	sh	a5,a3,+0000048C
	lbu	a5,sp,+0000000F
	sb	a5,a3,+0000048E
	c.j	000000002304FF0E

l2304FF8E:
	c.mv	a0,a6
	c.jr	ra

;; aws_iot_mqtt_resubscribe: 2304FF92
;;   Called from:
;;     2304F990 (in aws_iot_mqtt_attempt_reconnect)
aws_iot_mqtt_resubscribe proc
	beq	a0,zero,000000002305009C

l2304FF96:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.mv	s0,a0
	jal	ra,000000002304F5B0
	c.li	a5,FFFFFFF3
	c.beqz	a0,0000000023050086

l2304FFB2:
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a4,00000003
	c.li	a5,FFFFFFE2
	bne	a0,a4,0000000023050086

l2304FFC0:
	c.li	a2,00000008
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	c.bnez	a0,0000000023050086

l2304FFCE:
	addi	s2,s0,+00000488
	sh	zero,sp,+00000018
	sb	zero,sp,+0000001A
	sh	zero,sp,+00000016
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	c.mv	a5,s2
	c.li	s3,00000000
	c.li	a4,00000005

l2304FFE8:
	c.lw	a5,0(a3)
	c.beqz	a3,000000002304FFF4

l2304FFEC:
	c.addi	s3,00000001
	c.addi	a5,00000010
	bne	s3,a4,000000002304FFE8

l2304FFF4:
	c.li	s4,00000000
	addi	s5,s0,+00000040
	addi	s6,s0,+00000240

l2304FFFE:
	bne	s3,s4,0000000023050006

l23050002:
	c.li	s1,00000000
	c.j	0000000023050076

l23050006:
	lw	a5,s2,+00000000
	c.bnez	a5,0000000023050012

l2305000C:
	c.addi	s4,00000001
	c.addi	s2,00000010
	c.j	000000002304FFFE

l23050012:
	c.addi4spn	a0,00000024
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000024
	jal	ra,000000002304EB02
	c.lw	s0,52(a1)
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,000000002304F592
	c.lwsp	a2,00000064
	c.mv	a2,a0
	addi	a6,sp,+0000001C
	addi	a5,s2,+00000006
	addi	a4,s2,+00000004
	c.mv	a3,s2
	c.mv	a0,s5
	jal	ra,000000002304FDAA
	c.mv	s1,a0
	c.bnez	a0,0000000023050076

l23050046:
	c.lwsp	t3,00000064
	c.addi4spn	a2,00000024
	c.mv	a0,s0
	jal	ra,0000000023050EC2
	c.mv	s1,a0
	c.bnez	a0,0000000023050076

l23050054:
	c.addi4spn	a2,00000024
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,0000000023051216
	c.mv	s1,a0
	c.bnez	a0,0000000023050076

l23050062:
	c.lw	s0,56(a4)
	c.mv	a3,s6
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000020
	addi	a0,sp,+00000016
	jal	ra,000000002304FD0A
	c.mv	s1,a0
	c.beqz	a0,000000002305000C

l23050076:
	c.li	a2,00000003
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	c.beqz	s1,0000000023050086

l23050084:
	c.mv	a5,s1

l23050086:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.mv	a0,a5
	c.addi16sp	00000050
	c.jr	ra

l2305009C:
	c.li	a5,FFFFFFFE
	c.mv	a0,a5
	c.jr	ra

;; aws_iot_mqtt_unsubscribe: 230500A2
;;   Called from:
;;     2304E3A8 (in unsubscribeFromAcceptedAndRejected)
;;     2304E3FA (in unsubscribeFromAcceptedAndRejected)
;;     2304E8CC (in subscribeToShadowActionAcks)
aws_iot_mqtt_unsubscribe proc
	c.li	a5,FFFFFFFE
	beq	a0,zero,0000000023050224

l230500A8:
	beq	a1,zero,0000000023050224

l230500AC:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.mv	s0,a0
	c.mv	s5,a2
	c.mv	s3,a1
	jal	ra,000000002304F5B0
	c.li	a5,FFFFFFF3
	c.beqz	a0,0000000023050102

l230500D4:
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.li	a5,00000003
	c.mv	s4,a0
	beq	a0,a5,00000000230500EA

l230500E2:
	c.li	a4,00000009
	c.li	a5,FFFFFFE2
	bne	a0,a4,0000000023050102

l230500EA:
	c.li	a2,00000007
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.beqz	a0,0000000023050120

l230500F6:
	c.mv	a2,s4
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0

l23050102:
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
	c.mv	a0,a5
	c.addi16sp	00000050
	c.jr	ra

l23050120:
	addi	s2,s0,+00000488
	addi	s8,s0,+000004D8
	c.mv	s1,s2

l2305012A:
	c.lw	s1,0(a0)
	c.bnez	a0,0000000023050148

l2305012E:
	c.addi	s1,00000010
	bne	s1,s8,000000002305012A

l23050134:
	c.li	s1,FFFFFFFF

l23050136:
	c.mv	a2,s4
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	a5,a0
	c.beqz	s1,0000000023050102

l23050144:
	c.mv	a5,s1
	c.j	0000000023050102

l23050148:
	c.mv	a1,s3
	jal	ra,0000000023071100
	c.bnez	a0,000000002305012E

l23050150:
	c.addi4spn	a0,00000014
	jal	ra,000000002304EB94
	c.lw	s0,36(a1)
	c.addi4spn	a0,00000014
	addi	s6,s5,+00000004
	jal	ra,000000002304EB02
	c.mv	a0,s0
	lw	s10,s0,+00000034
	jal	ra,000000002304F592
	addi	s7,s0,+00000040
	c.mv	s9,a0
	c.mv	a0,s6
	c.swsp	s7,00000008
	sb	zero,sp,+0000000C
	jal	ra,0000000023050DBA
	addi	s1,zero,-00000021
	bltu	s10,a0,0000000023050136

l23050186:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,0000000A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023050E6E
	c.mv	s1,a0
	c.bnez	a0,0000000023050136

l23050198:
	lbu	a1,sp,+0000000C
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E2C
	c.lwsp	a6,00000044
	c.mv	a1,s6
	jal	ra,0000000023050D4E
	c.lwsp	a6,000000E4
	c.mv	a1,s9
	c.add	a0,a5
	c.swsp	a0,00000008
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E00
	c.mv	a2,s5
	c.mv	a1,s3
	c.addi4spn	a0,00000010
	jal	ra,0000000023050E3A
	c.lwsp	a6,00000064
	c.addi4spn	a2,00000014
	c.mv	a0,s0
	sub	a1,a1,s7
	jal	ra,0000000023050EC2
	c.mv	s1,a0
	c.bnez	a0,0000000023050136

l230501D4:
	c.addi4spn	a2,00000014
	c.li	a1,0000000B
	c.mv	a0,s0
	jal	ra,0000000023051216
	c.mv	s1,a0
	c.bnez	a0,0000000023050136

l230501E2:
	c.lw	s0,56(a4)
	addi	a3,s0,+00000240
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	addi	a0,sp,+0000000B
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002304FB00
	c.mv	s1,a0
	c.bnez	a0,0000000023050136

l23050200:
	lbu	a4,sp,+0000000B
	c.li	a5,0000000B
	bne	a4,a5,0000000023050134

l2305020A:
	lw	a0,s2,+00000000
	c.beqz	a0,000000002305021C

l23050210:
	c.mv	a1,s3
	jal	ra,0000000023071100
	c.bnez	a0,000000002305021C

l23050218:
	sw	zero,s2,+00000000

l2305021C:
	c.addi	s2,00000010
	bne	s2,s8,000000002305020A

l23050222:
	c.j	0000000023050136

l23050224:
	c.mv	a0,a5
	c.jr	ra

;; _aws_iot_mqtt_handle_disconnect: 23050228
;;   Called from:
;;     23050394 (in aws_iot_mqtt_yield)
_aws_iot_mqtt_handle_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	jal	ra,000000002304F900
	c.beqz	a0,0000000023050252

l23050238:
	c.li	a5,0000000B
	sb	a5,s0,+00000018
	lw	a5,s0,+000004EC
	addi	s1,s0,+000004E0
	c.mv	a0,s1
	c.jalr	a5
	lw	a5,s0,+000004F4
	c.mv	a0,s1
	c.jalr	a5

l23050252:
	lw	a5,s0,+000004D8
	c.beqz	a5,0000000023050260

l23050258:
	lw	a1,s0,+000004DC
	c.mv	a0,s0
	c.jalr	a5

l23050260:
	c.li	a5,0000000B
	sb	a5,s0,+00000018
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF3
	c.addi	sp,00000010
	c.jr	ra

;; aws_iot_mqtt_yield: 23050272
;;   Called from:
;;     2304D9CC (in aws_iot_shadow_yield)
aws_iot_mqtt_yield proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.li	s0,FFFFFFFE
	c.beqz	a0,0000000023050340

l23050288:
	c.beqz	a1,0000000023050340

l2305028A:
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,000000002304F304
	c.li	a5,0000000C
	c.mv	s3,a0
	c.li	s0,00000005
	beq	a0,a5,0000000023050340

l2305029C:
	c.li	a5,0000000D
	bne	a0,a5,000000002305031E

l230502A2:
	c.addi4spn	a0,00000008
	jal	ra,000000002304EB94
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	c.lui	s3,0001F000
	jal	ra,000000002304EB02
	addi	s4,s1,+0000000C
	addi	s5,s1,+00000040
	addi	s3,s3,+00000400
	addi	s6,s1,+000004E0

l230502C2:
	c.mv	a0,s1
	jal	ra,000000002304F304
	c.li	a5,0000000D
	bne	a0,a5,000000002305036E

l230502CE:
	c.lw	s1,44(a5)
	bltu	s3,a5,0000000023050446

l230502D4:
	c.mv	a0,s4
	jal	ra,000000002304EABE
	c.li	s0,00000004
	c.beqz	a0,000000002305030E

l230502DE:
	lw	a5,s1,+000004F0
	c.beqz	a5,0000000023050356

l230502E4:
	c.mv	a0,s6
	c.jalr	a5
	c.li	a5,00000006
	c.mv	s2,a0
	bne	a0,a5,0000000023050358

l230502F0:
	c.mv	a0,s1
	jal	ra,000000002304F952
	c.li	a5,00000003
	c.mv	s2,a0
	bne	a0,a5,0000000023050358

l230502FE:
	c.li	a2,00000004
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002304F336
	c.mv	s0,a0
	c.bnez	a0,000000002305030E
