;;; Segment .text (23000300)

l2307030C:
	lui	a0,00023070
	c.li	a1,00000000
	addi	a0,a0,+00000034
	jal	ra,000000002306BAC2
	c.beqz	a0,0000000023070328

l2307031C:
	jal	ra,000000002306A7EE
	sb	zero,s0,+000007EC
	jal	ra,000000002306A7FE

l23070328:
	beq	s1,zero,0000000023070246

l2307032C:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.j	0000000023070246

l23070334:
	addi	a5,s0,+00000003
	c.andi	a5,FFFFFFFC
	sub	a5,s4,a5
	c.mv	a4,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a1,a5,000000002307034A

l23070348:
	c.mv	a4,a1

l2307034A:
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
	c.beqz	s1,000000002307037C

l2307036A:
	sw	a0,s3,+00000000

l2307036E:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	s0,00000000
	c.mv	s3,a0
	c.bnez	a1,00000000230702E2

l2307037A:
	c.j	0000000023070248

l2307037C:
	c.mv	s1,a0
	c.j	000000002307036E

l23070380:
	c.li	a0,00000000
	c.j	00000000230702D0

;; pbuf_realloc: 23070384
;;   Called from:
;;     2305F092 (in get_dns_request)
;;     2306CA64 (in dhcp_option_trailer)
;;     2306EE3E (in ip4_input)
;;     23071E08 (in tcp_oos_insert_segment)
;;     23072318 (in tcp_receive)
;;     230723CE (in tcp_receive)
;;     230728B2 (in tcp_receive)
;;     23072930 (in tcp_receive)
;;     230729C0 (in tcp_receive)
;;     23073DCE (in tcp_split_unsent_seg)
;;     2307721E (in dhcp_server_recv)
;;     2308709E (in altcp_mbedtls_handle_rx_appldata)
pbuf_realloc proc
	lhu	a5,a0,+00000008
	bgeu	a1,a5,00000000230703FC

l2307038C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	sub	a5,a1,a5

l2307039C:
	lhu	a1,s0,+0000000A
	bltu	a1,s1,00000000230703E8

l230703A4:
	lbu	a5,s0,+0000000C
	c.andi	a5,0000000F
	c.bnez	a5,00000000230703CA

l230703AC:
	beq	a1,s1,00000000230703CA

l230703B0:
	lbu	a5,s0,+0000000D
	c.andi	a5,00000002
	c.bnez	a5,00000000230703CA

l230703B8:
	c.lw	s0,4(a1)
	c.mv	a0,s0
	c.sub	a1,s0
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,000000002306F74E
	c.mv	s0,a0

l230703CA:
	c.lw	s0,0(a0)
	sh	s1,s0,+0000000A
	sh	s1,s0,+00000008
	c.beqz	a0,00000000230703DA

l230703D6:
	jal	ra,00000000230701A4

l230703DA:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230703E8:
	lhu	a4,s0,+00000008
	c.sub	s1,a1
	c.slli	s1,10
	c.add	a4,a5
	sh	a4,s0,+00000008
	c.srli	s1,00000010
	c.lw	s0,0(s0)
	c.j	000000002307039C

l230703FC:
	c.jr	ra

;; pbuf_free_header: 230703FE
;;   Called from:
;;     2306AA86 (in lwip_recv_tcp)
;;     23085F18 (in httpc_tcp_recv)
pbuf_free_header proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0

l23070408:
	c.beqz	a1,0000000023070434

l2307040A:
	c.beqz	s0,0000000023070434

l2307040C:
	lhu	a5,s0,+0000000A
	bltu	a1,a5,000000002307042E

l23070414:
	c.sub	a1,a5
	c.lw	s0,0(s1)
	c.slli	a1,10
	c.srli	a1,00000010
	sw	zero,s0,+00000000
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,00000000230701A4
	c.mv	s0,s1
	c.lwsp	a2,00000064
	c.j	0000000023070408

l2307042E:
	c.mv	a0,s0
	jal	ra,0000000023070142

l23070434:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_clen: 23070440
;;   Called from:
;;     23072000 (in tcp_free_acked_segments.isra.3)
;;     23073AF0 (in tcp_write)
;;     23073DB2 (in tcp_split_unsent_seg)
;;     23073E06 (in tcp_split_unsent_seg)
;;     23073E92 (in tcp_split_unsent_seg)
;;     23073F64 (in tcp_enqueue_flags)
pbuf_clen proc
	c.li	a5,00000000

l23070442:
	c.bnez	a0,0000000023070448

l23070444:
	c.mv	a0,a5
	c.jr	ra

l23070448:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.lw	a0,0(a0)
	c.j	0000000023070442

;; pbuf_ref: 23070452
;;   Called from:
;;     23023DE2 (in bl_output)
;;     2306E4C0 (in etharp_query)
;;     230704AC (in pbuf_chain)
;;     23070F3E (in tcp_seg_copy)
pbuf_ref proc
	c.beqz	a0,0000000023070474

l23070454:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306A7EE
	lbu	a5,s0,+0000000E
	c.addi	a5,00000001
	sb	a5,s0,+0000000E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306A7FE

l23070474:
	c.jr	ra

;; pbuf_cat: 23070476
;;   Called from:
;;     2302422E (in tcpip_stack_input)
;;     230704A0 (in pbuf_chain)
;;     230726EE (in tcp_receive)
;;     23085EF0 (in httpc_tcp_recv)
;;     2308714A (in altcp_mbedtls_handle_rx_appldata)
;;     230873A2 (in altcp_mbedtls_lower_recv)
pbuf_cat proc
	c.beqz	a0,0000000023070496

l23070478:
	c.bnez	a1,000000002307047E

l2307047A:
	c.jr	ra

l2307047C:
	c.mv	a0,a4

l2307047E:
	lhu	a5,a0,+00000008
	lhu	a3,a1,+00000008
	c.lw	a0,0(a4)
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a0,+00000008
	c.bnez	a4,000000002307047C

l23070494:
	c.sw	a0,0(a1)

l23070496:
	c.jr	ra

;; pbuf_chain: 23070498
;;   Called from:
;;     230709F2 (in raw_sendto_if_src)
;;     23074F22 (in udp_sendto_if_src_chksum)
pbuf_chain proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023070476
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023070452

;; pbuf_copy: 230704B0
;;   Called from:
;;     230706CE (in pbuf_clone)
;;     23076D5A (in icmp_input)
;;     23077004 (in dhcp_server_recv)
pbuf_copy proc
	c.beqz	a0,000000002307055A

l230704B2:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.beqz	a1,000000002307051A

l230704C4:
	lhu	a4,a0,+00000008
	lhu	a5,a1,+00000008
	c.mv	s1,a0
	bltu	a4,a5,000000002307051A

l230704D2:
	c.li	s4,00000000
	c.li	s3,00000000

l230704D6:
	lhu	s2,s1,+0000000A
	lhu	a5,s0,+0000000A
	sub	s2,s2,s3
	sub	a5,a5,s4
	bgeu	a5,s2,00000000230704EC

l230704EA:
	c.mv	s2,a5

l230704EC:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.add	a1,s4
	c.add	a0,s3
	jal	ra,00000000230A382C
	lhu	a4,s0,+0000000A
	c.add	s4,s2
	c.add	s3,s2
	lhu	a5,s1,+0000000A
	bltu	s4,a4,000000002307050E

l2307050A:
	c.lw	s0,0(s0)
	c.li	s4,00000000

l2307050E:
	bne	s3,a5,000000002307052E

l23070512:
	c.lw	s1,0(s1)
	c.bnez	s1,000000002307052C

l23070516:
	c.li	a0,00000000
	c.beqz	s0,000000002307051C

l2307051A:
	c.li	a0,FFFFFFF0

l2307051C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307052C:
	c.li	s3,00000000

l2307052E:
	c.beqz	s0,0000000023070540

l23070530:
	lhu	a4,s0,+0000000A
	lhu	a5,s0,+00000008
	bne	a4,a5,0000000023070540

l2307053C:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023070556

l23070540:
	lhu	a4,s1,+0000000A
	lhu	a5,s1,+00000008
	bne	a4,a5,0000000023070550

l2307054C:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023070556

l23070550:
	c.bnez	s0,00000000230704D6

l23070552:
	c.li	a0,00000000
	c.j	000000002307051C

l23070556:
	c.li	a0,FFFFFFFA
	c.j	000000002307051C

l2307055A:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_copy_partial: 2307055E
;;   Called from:
;;     2305EEE4 (in get_dns_request)
;;     2305EF1C (in get_dns_request)
;;     2306AA6E (in lwip_recv_tcp)
;;     2306ACA4 (in lwip_recvfrom_udp_raw.isra.6)
;;     2306BF98 (in dns_recv)
;;     2306C08C (in dns_recv)
;;     2306C13C (in dns_recv)
;;     2306C17A (in dns_recv)
;;     2306D4C2 (in dhcp_recv)
;;     23073CF6 (in tcp_split_unsent_seg)
;;     2307493A (in tcp_zero_window_probe)
;;     23079088 (in sntp_recv)
;;     23085E10 (in httpc_tcp_recv)
;;     23085EAC (in httpc_tcp_recv)
;;     23086A36 (in altcp_mbedtls_bio_recv)
pbuf_copy_partial proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	s0,00000000
	c.beqz	a0,0000000023070580

l23070570:
	c.mv	s4,a1
	c.li	s0,00000000
	c.beqz	a1,0000000023070580

l23070576:
	c.mv	s2,a0
	c.mv	s1,a2

l2307057A:
	c.beqz	s1,0000000023070580

l2307057C:
	bne	s2,zero,0000000023070592

l23070580:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23070592:
	lhu	a1,s2,+0000000A
	c.beqz	a3,00000000230705A8

l23070598:
	bltu	a3,a1,00000000230705A8

l2307059C:
	c.sub	a3,a1
	c.slli	a3,10
	c.srli	a3,00000010

l230705A2:
	lw	s2,s2,+00000000
	c.j	000000002307057A

l230705A8:
	c.sub	a1,a3
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	s3,a1
	bgeu	s1,a1,00000000230705B6

l230705B4:
	c.mv	s3,s1

l230705B6:
	lw	a1,s2,+00000004
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	a1,a3
	add	a0,s4,s0
	c.mv	a2,s3
	c.add	s0,s3
	sub	s1,s1,s3
	jal	ra,00000000230A382C
	c.slli	s0,10
	c.slli	s1,10
	c.srli	s0,00000010
	c.srli	s1,00000010
	c.li	a3,00000000
	c.j	00000000230705A2

;; pbuf_take: 230705DE
;;   Called from:
;;     2305EFC2 (in get_dns_request)
;;     2306BD94 (in dns_send)
;;     2307069E (in pbuf_take_at)
pbuf_take proc
	c.beqz	a0,0000000023070638

l230705E0:
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
	c.beqz	a1,0000000023070604

l230705F6:
	lhu	a5,s1,+00000008
	c.mv	s0,a2
	c.li	a0,FFFFFFFF
	c.li	s3,00000000
	bgeu	a5,a2,0000000023070632

l23070604:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23070614:
	lhu	s2,s1,+0000000A
	bgeu	s0,s2,000000002307061E

l2307061C:
	c.mv	s2,s0

l2307061E:
	c.lw	s1,4(a0)
	add	a1,s4,s3
	c.mv	a2,s2
	jal	ra,00000000230A382C
	c.lw	s1,0(s1)
	sub	s0,s0,s2
	c.add	s3,s2

l23070632:
	c.bnez	s0,0000000023070614

l23070634:
	c.li	a0,00000000
	c.j	0000000023070604

l23070638:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; pbuf_take_at: 2307063C
;;   Called from:
;;     2305EFFC (in get_dns_request)
;;     2305F084 (in get_dns_request)
;;     2306BDEC (in dns_send)
;;     2306BE28 (in dns_send)
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
	jal	ra,0000000023070018
	c.beqz	a0,00000000230706B0

l23070658:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+00000008
	c.mv	s1,a0
	add	a5,a4,s0
	c.li	a0,FFFFFFFF
	blt	a3,a5,00000000230706A2

l2307066C:
	lhu	a5,s1,+0000000A
	c.mv	s2,s0
	c.sub	a5,a4
	bge	a5,s0,0000000023070680

l23070678:
	slli	s2,a5,00000010
	srli	s2,s2,00000010

l23070680:
	c.lw	s1,4(a0)
	c.mv	a2,s2
	c.mv	a1,s3
	c.add	a0,a4
	jal	ra,00000000230A382C
	sub	a2,s0,s2
	c.slli	a2,10
	c.srli	a2,00000010
	c.li	a0,00000000
	c.beqz	a2,00000000230706A2

l23070698:
	c.lw	s1,0(a0)
	add	a1,s3,s2
	jal	ra,00000000230705DE

l230706A2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230706B0:
	c.li	a0,FFFFFFFF
	c.j	00000000230706A2

;; pbuf_clone: 230706B4
;;   Called from:
;;     2306E4F0 (in etharp_query)
;;     230760CA (in recv_raw)
pbuf_clone proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a2
	c.mv	a2,a1
	lhu	a1,s1,+00000008
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023070226
	c.mv	s0,a0
	c.beqz	a0,00000000230706D2

l230706CC:
	c.mv	a1,s1
	jal	ra,00000000230704B0

l230706D2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; pbuf_try_get_at: 230706DE
;;   Called from:
;;     2306C036 (in dns_recv)
;;     2306C062 (in dns_recv)
;;     2306C0EE (in dns_recv)
;;     2306C118 (in dns_recv)
;;     2306C1F4 (in dns_recv)
;;     23070710 (in pbuf_get_at)
pbuf_try_get_at proc
	c.addi	sp,FFFFFFE0
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,0000000023070018
	c.li	a5,FFFFFFFF
	c.beqz	a0,0000000023070704

l230706EE:
	lhu	a4,sp,+0000000E
	lhu	a3,a0,+0000000A
	c.li	a5,FFFFFFFF
	bgeu	a4,a3,0000000023070704

l230706FC:
	c.lw	a0,4(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000

l23070704:
	c.lwsp	t3,00000020
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_get_at: 2307070C
;;   Called from:
;;     230707A6 (in pbuf_memcmp)
;;     23078F2E (in sntp_recv)
;;     23078F4A (in sntp_recv)
;;     23085DA2 (in httpc_tcp_recv)
;;     23085DB2 (in httpc_tcp_recv)
;;     23085DC2 (in httpc_tcp_recv)
pbuf_get_at proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230706DE
	bge	a0,zero,000000002307071A

l23070718:
	c.li	a0,00000000

l2307071A:
	c.lwsp	a2,00000020
	andi	a0,a0,+000000FF
	c.addi	sp,00000010
	c.jr	ra

;; pbuf_put_at: 23070724
;;   Called from:
;;     2305EFDE (in get_dns_request)
;;     2305F01A (in get_dns_request)
;;     2306BDDA (in dns_send)
;;     2306BE0C (in dns_send)
pbuf_put_at proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a2
	addi	a2,sp,+0000000E
	c.swsp	ra,0000008C
	jal	ra,0000000023070018
	c.beqz	a0,000000002307074A

l23070736:
	lhu	a4,sp,+0000000E
	lhu	a5,a0,+0000000A
	bgeu	a4,a5,000000002307074A

l23070742:
	c.lw	a0,4(a5)
	c.add	a5,a4
	sb	s0,a5,+00000000

l2307074A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_memcmp: 23070752
;;   Called from:
;;     23070828 (in pbuf_memfind)
;;     23085D96 (in httpc_tcp_recv)
pbuf_memcmp proc
	lhu	a4,a0,+00000008
	add	a5,a1,a3
	bge	a4,a5,0000000023070764

l2307075E:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

l23070764:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s0,a1

l23070774:
	lhu	a5,s1,+0000000A
	bltu	s0,a5,0000000023070786

l2307077C:
	c.lw	s1,0(s1)
	c.sub	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	c.bnez	s1,0000000023070774

l23070786:
	c.li	s3,00000000

l23070788:
	slli	s2,s3,00000010
	srli	s2,s2,00000010
	bltu	s2,a3,0000000023070798

l23070794:
	c.li	a0,00000000
	c.j	00000000230707CE

l23070798:
	add	a1,s2,s0
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s1
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	jal	ra,000000002307070C
	c.lwsp	s0,00000084
	c.addi	s3,00000001
	c.lwsp	a2,000000A4
	add	a5,a2,s3
	lbu	a5,a5,-00000001
	beq	a5,a0,0000000023070788

l230707BC:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	c.mv	a0,s2
	bgeu	a5,s2,00000000230707C8

l230707C6:
	c.li	a0,FFFFFFFE

l230707C8:
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010

l230707CE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; pbuf_memfind: 230707DC
;;   Called from:
;;     23085D64 (in httpc_tcp_recv)
;;     23085D7E (in httpc_tcp_recv)
;;     23085DEC (in httpc_tcp_recv)
;;     23085E46 (in httpc_tcp_recv)
;;     23085E68 (in httpc_tcp_recv)
;;     23085E82 (in httpc_tcp_recv)
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
	blt	a5,a4,000000002307080A

l230707F6:
	c.sub	a5,a2
	slli	s1,a5,00000010
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s2,a2
	c.mv	s0,a3
	c.srli	s1,00000010

l23070806:
	bgeu	s1,s0,0000000023070820

l2307080A:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF

l2307080E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23070820:
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023070752
	c.beqz	a0,000000002307080E

l2307082E:
	c.addi	s0,00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.j	0000000023070806

;; raw_input: 23070836
;;   Called from:
;;     2306EFF0 (in ip4_input)
raw_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042027
	addi	a5,s1,-000006E8
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
	lui	s2,0004200F
	c.li	s3,00000000
	jal	ra,000000002306F33A
	lw	a5,s4,+00000004
	c.mv	s6,a0
	lw	s0,s2,+0000065C
	lbu	s5,a5,+00000009
	c.li	a0,00000000
	addi	s1,s1,-000006E8
	addi	s2,s2,+0000065C
	lui	s7,00042027

l2307087E:
	c.beqz	s0,00000000230708DE

l23070880:
	lbu	a5,s0,+00000010
	bne	a5,s5,00000000230708FC

l23070888:
	lbu	a4,s0,+00000008
	c.beqz	a4,000000002307089E

l2307088E:
	c.lw	s1,4(a5)
	lbu	a5,a5,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a4,a5,00000000230708FC

l2307089E:
	c.lw	s0,0(a5)
	beq	s6,zero,00000000230708F4

l230708A4:
	c.bnez	a5,00000000230708FC

l230708A6:
	lbu	a5,s0,+00000011
	c.andi	a5,00000001
	c.beqz	a5,00000000230708B6

l230708AE:
	c.lw	s0,4(a4)
	c.lw	s1,16(a5)
	bne	a4,a5,00000000230708FC

l230708B6:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230708FC

l230708BA:
	c.lw	s0,24(a0)
	addi	a3,s7,-000006D8
	c.mv	a2,s4
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,0000000023070902

l230708C8:
	c.li	a0,00000001
	beq	s3,zero,00000000230708DE

l230708CE:
	c.lw	s0,12(a5)
	sw	a5,s3,+0000000C
	lw	a5,s2,+00000000
	sw	s0,s2,+00000000
	c.sw	s0,12(a5)

l230708DE:
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

l230708F4:
	c.beqz	a5,00000000230708A6

l230708F6:
	c.lw	s1,20(a4)
	beq	a4,a5,00000000230708A6

l230708FC:
	c.mv	s3,s0
	c.lw	s0,12(s0)
	c.j	000000002307087E

l23070902:
	c.li	a0,00000002
	c.j	00000000230708FC

;; raw_bind: 23070906
;;   Called from:
;;     23076680 (in lwip_netconn_do_bind)
raw_bind proc
	c.li	a5,FFFFFFFA
	c.beqz	a0,0000000023070912

l2307090A:
	c.beqz	a1,0000000023070912

l2307090C:
	c.lw	a1,0(a5)
	c.sw	a0,0(a5)
	c.li	a5,00000000

l23070912:
	c.mv	a0,a5
	c.jr	ra

;; raw_bind_netif: 23070916
;;   Called from:
;;     2306AE9C (in lwip_setsockopt_callback)
raw_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,0000000023070924

l2307091A:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23070924:
	sb	a5,a0,+00000008
	c.jr	ra

;; raw_connect: 2307092A
;;   Called from:
;;     2307671E (in lwip_netconn_do_connect)
raw_connect proc
	c.mv	a5,a0
	c.li	a0,FFFFFFFA
	c.beqz	a5,0000000023070946

l23070930:
	c.beqz	a1,0000000023070946

l23070932:
	c.lw	a1,0(a4)
	c.li	a0,00000000
	c.sw	a5,4(a4)
	lbu	a4,a5,+00000011
	ori	a4,a4,+00000001
	sb	a4,a5,+00000011
	c.jr	ra

l23070946:
	c.jr	ra

;; raw_recv: 23070948
;;   Called from:
;;     230762B6 (in lwip_netconn_do_newconn)
raw_recv proc
	c.sw	a0,20(a1)
	c.sw	a0,24(a2)
	c.jr	ra

;; raw_sendto_if_src: 2307094E
;;   Called from:
;;     23070ADA (in raw_sendto)
raw_sendto_if_src proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	beq	a0,zero,0000000023070A64

l23070962:
	beq	a2,zero,0000000023070A64

l23070966:
	beq	a3,zero,0000000023070A64

l2307096A:
	c.mv	s0,a1
	c.mv	a1,a4
	beq	a4,zero,0000000023070A64

l23070972:
	lbu	a5,a0,+00000011
	c.andi	a5,00000002
	c.beqz	a5,00000000230709A4

l2307097A:
	lhu	a4,s0,+0000000A
	c.li	a5,00000013
	bgeu	a5,a4,0000000023070A64

l23070984:
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
	jal	zero,000000002306F316

l230709A4:
	lhu	a4,s0,+00000008
	c.lui	a5,00010000
	c.addi	a5,FFFFFFEB
	bgeu	a5,a4,00000000230709C6

l230709B0:
	c.li	s1,FFFFFFFF

l230709B2:
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

l230709C6:
	c.mv	s4,a1
	c.mv	s1,a0
	c.li	a1,00000014
	c.mv	a0,s0
	c.mv	s5,a3
	c.mv	s3,a2
	jal	ra,000000002307013C
	c.beqz	a0,0000000023070A50

l230709D8:
	addi	a2,zero,+00000280
	c.li	a1,00000000
	addi	a0,zero,+000000A2
	jal	ra,0000000023070226
	c.mv	s2,a0
	c.beqz	a0,00000000230709B0

l230709EA:
	lhu	a5,s0,+00000008
	c.beqz	a5,00000000230709F6

l230709F0:
	c.mv	a1,s0
	jal	ra,0000000023070498

l230709F6:
	lbu	a5,s1,+00000011
	c.andi	a5,00000004
	c.beqz	a5,0000000023070A1A

l230709FE:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023070A5E

l23070A0E:
	lbu	a5,s2,+0000000D
	ori	a5,a5,+00000004
	sb	a5,s2,+0000000D

l23070A1A:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023070A5E

l23070A2A:
	lbu	a3,s1,+00000013

l23070A2E:
	lbu	a5,s1,+00000010
	lbu	a4,s1,+0000000A
	c.mv	a6,s5
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002306F316
	c.mv	s1,a0
	beq	s0,s2,00000000230709B2

l23070A48:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	c.j	00000000230709B2

l23070A50:
	c.li	a1,00000014
	c.mv	a0,s0
	jal	ra,0000000023070142
	c.bnez	a0,00000000230709B0

l23070A5A:
	c.mv	s2,s0
	c.j	00000000230709F6

l23070A5E:
	lbu	a3,s1,+0000000B
	c.j	0000000023070A2E

l23070A64:
	c.li	s1,FFFFFFFA
	c.j	00000000230709B2

;; raw_sendto: 23070A68
;;   Called from:
;;     23070AEC (in raw_send)
;;     230768D6 (in lwip_netconn_do_send)
raw_sendto proc
	c.beqz	a0,0000000023070AE4

l23070A6A:
	c.beqz	a2,0000000023070AE4

l23070A6C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	lbu	a0,a0,+00000008
	c.mv	s1,a2
	c.mv	s2,a1
	c.beqz	a0,0000000023070A96

l23070A82:
	jal	ra,000000002306FFA4

l23070A86:
	c.bnez	a0,0000000023070AB6

l23070A88:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFFC
	c.addi	sp,00000010
	c.jr	ra

l23070A96:
	c.lw	a2,0(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023070AAC

l23070AA4:
	c.mv	a0,s1
	jal	ra,000000002306ED14
	c.j	0000000023070A86

l23070AAC:
	lbu	a0,s0,+00000012
	jal	ra,000000002306FFA4
	c.beqz	a0,0000000023070AA4

l23070AB6:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023070ADE

l23070ABA:
	andi	a5,a5,+000000F0
	addi	a4,zero,+000000E0
	beq	a5,a4,0000000023070ADE

l23070AC6:
	c.mv	a4,s0

l23070AC8:
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.mv	a1,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002307094E

l23070ADE:
	addi	a4,a0,+00000004
	c.j	0000000023070AC8

l23070AE4:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; raw_send: 23070AE8
;;   Called from:
;;     230768C0 (in lwip_netconn_do_send)
raw_send proc
	addi	a2,a0,+00000004
	jal	zero,0000000023070A68

;; raw_remove: 23070AF0
;;   Called from:
;;     23076602 (in lwip_netconn_do_delconn)
raw_remove proc
	lui	a4,0004200F
	addi	a4,a4,+0000065C
	c.lw	a4,0(a5)
	c.mv	a1,a0
	bne	a5,a0,0000000023070B0C

l23070B00:
	c.lw	a0,12(a5)
	c.sw	a4,0(a5)

l23070B04:
	c.li	a0,00000000
	jal	zero,000000002306FB62

l23070B0A:
	c.mv	a5,a4

l23070B0C:
	c.beqz	a5,0000000023070B04

l23070B0E:
	c.lw	a5,12(a4)
	c.beqz	a4,0000000023070B04

l23070B12:
	bne	a4,a1,0000000023070B0A

l23070B16:
	c.lw	a1,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023070B04

;; raw_new: 23070B1C
;;   Called from:
;;     23070B62 (in raw_new_ip_type)
raw_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,0000000023070B54

l23070B30:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	sb	a5,s0,+00000013
	lui	a5,0004200F
	addi	a5,a5,+0000065C
	c.lw	a5,0(a4)
	sb	s1,s0,+00000010
	c.sw	a5,0(s0)
	c.sw	s0,12(a4)

l23070B54:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; raw_new_ip_type: 23070B60
;;   Called from:
;;     230762A2 (in lwip_netconn_do_newconn)
raw_new_ip_type proc
	c.mv	a0,a1
	jal	zero,0000000023070B1C

;; raw_netif_ip_addr_changed: 23070B66
;;   Called from:
;;     2306FC28 (in netif_do_set_ipaddr)
;;     2306FEDC (in netif_remove)
raw_netif_ip_addr_changed proc
	c.beqz	a0,0000000023070B7C

l23070B68:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023070B7C

l23070B6C:
	c.beqz	a1,0000000023070B7C

l23070B6E:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023070B7C

l23070B72:
	lui	a5,0004200F
	lw	a5,a5,+0000065C

l23070B7A:
	c.bnez	a5,0000000023070B7E

l23070B7C:
	c.jr	ra

l23070B7E:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,0000000023070B8A

l23070B86:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l23070B8A:
	c.lw	a5,12(a5)
	c.j	0000000023070B7A

;; stats_init: 23070B8E
;;   Called from:
;;     2306C84A (in lwip_init)
stats_init proc
	c.jr	ra

;; tcp_new_port: 23070B90
;;   Called from:
;;     23070CAC (in tcp_bind)
;;     23071018 (in tcp_connect)
tcp_new_port proc
	lui	a4,0004200F
	c.lui	a1,00010000
	lhu	a5,a4,-00000340
	c.lui	a0,00004000
	addi	a4,a4,-00000340
	c.addi	a1,FFFFFFFF
	lui	a7,000230C3

l23070BA6:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bne	a5,a1,0000000023070BB2

l23070BB0:
	c.lui	a5,0000C000

l23070BB2:
	addi	a3,a7,+00000764
	addi	a6,a3,+00000010

l23070BBA:
	c.lw	a3,0(a2)
	c.lw	a2,0(a2)

l23070BBE:
	c.bnez	a2,0000000023070BCE

l23070BC0:
	c.addi	a3,00000004
	bne	a3,a6,0000000023070BBA

l23070BC6:
	sh	a5,a4,+00000000
	c.mv	a0,a5
	c.jr	ra

l23070BCE:
	lhu	t1,a2,+00000016
	bne	t1,a5,0000000023070BE4

l23070BD6:
	c.addi	a0,FFFFFFFF
	c.slli	a0,10
	c.srli	a0,00000010
	c.bnez	a0,0000000023070BA6

l23070BDE:
	sh	a5,a4,+00000000
	c.jr	ra

l23070BE4:
	c.lw	a2,12(a2)
	c.j	0000000023070BBE

;; tcp_close_shutdown_fin: 23070BE8
;;   Called from:
;;     230715BE (in tcp_alloc)
;;     230716D6 (in tcp_close_shutdown)
;;     230718CE (in tcp_fasttmr)
tcp_close_shutdown_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+00000014
	c.li	a5,00000004
	c.mv	s0,a0
	beq	a4,a5,0000000023070C08

l23070BFA:
	c.li	a5,00000007
	beq	a4,a5,0000000023070C28

l23070C00:
	c.li	a3,00000003
	c.li	a5,00000000
	bne	a4,a3,0000000023070C1E

l23070C08:
	jal	ra,0000000023073F80
	c.mv	a5,a0
	c.bnez	a0,0000000023070C34

l23070C10:
	c.li	a5,00000005

l23070C12:
	sb	a5,s0,+00000014
	c.mv	a0,s0
	jal	ra,000000002307427C

l23070C1C:
	c.li	a5,00000000

l23070C1E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23070C28:
	jal	ra,0000000023073F80
	c.mv	a5,a0
	c.bnez	a0,0000000023070C34

l23070C30:
	c.li	a5,00000009
	c.j	0000000023070C12

l23070C34:
	c.li	a4,FFFFFFFF
	bne	a5,a4,0000000023070C1E

l23070C3A:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000008
	sh	a5,s0,+0000001A
	c.j	0000000023070C1C

;; tcp_init: 23070C48
;;   Called from:
;;     2306C862 (in lwip_init)
tcp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023065C28
	c.slli	a0,12
	c.lui	a1,FFFFC000
	c.srli	a0,00000012
	c.add	a0,a1
	slli	a1,a0,00000010
	c.lwsp	a2,00000020
	c.srli	a1,00000010
	lui	a5,0004200F
	sh	a1,a5,+00000CC0
	lui	a0,000230C3
	addi	a0,a0,+00000734
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; tcp_free: 23070C76
;;   Called from:
;;     23070DCA (in tcp_listen_with_backlog_and_err)
;;     230712A8 (in tcp_abandon)
;;     23071314 (in tcp_abandon)
;;     230716F8 (in tcp_close_shutdown)
;;     23071C9A (in tcp_slowtmr)
;;     23071D14 (in tcp_slowtmr)
;;     23071F6A (in tcp_input_delayed_close)
;;     2307311E (in tcp_input)
tcp_free proc
	c.mv	a1,a0
	c.li	a0,00000002
	jal	zero,000000002306FB62

;; tcp_bind: 23070C7E
;;   Called from:
;;     2307669A (in lwip_netconn_do_bind)
;;     2308688E (in altcp_tcp_bind)
tcp_bind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a1,0000000023070C90

l23070C88:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l23070C90:
	c.li	a0,FFFFFFF0
	c.beqz	s0,0000000023070CB8

l23070C94:
	lbu	a4,s0,+00000014
	c.li	a0,FFFFFFFA
	c.bnez	a4,0000000023070CB8

l23070C9C:
	lbu	a3,s0,+00000009
	c.andi	a3,00000004
	sltiu	a6,a3,+00000001
	c.addi	a6,00000003
	c.bnez	a2,0000000023070CC0

l23070CAA:
	c.swsp	a1,00000084
	jal	ra,0000000023070B90
	c.mv	a2,a0
	c.lwsp	a2,00000064
	c.li	a0,FFFFFFFE
	c.bnez	a2,0000000023070CD8

l23070CB8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23070CC0:
	lui	a4,000230C3
	addi	a4,a4,+00000764
	c.li	a0,00000000

l23070CCA:
	c.lw	a4,0(a5)
	c.lw	a5,0(a5)

l23070CCE:
	c.bnez	a5,0000000023070CF8

l23070CD0:
	c.addi	a0,00000001
	c.addi	a4,00000004
	bne	a6,a0,0000000023070CCA

l23070CD8:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023070CDE

l23070CDC:
	c.sw	s0,0(a5)

l23070CDE:
	lui	a5,00042027
	lw	a4,a5,-000006F8
	sh	a2,s0,+00000016
	sw	s0,a5,+00000908
	c.sw	s0,12(a4)
	jal	ra,0000000023074A0A
	c.li	a0,00000000
	c.j	0000000023070CB8

l23070CF8:
	lhu	a7,a5,+00000016
	bne	a7,a2,0000000023070D22

l23070D00:
	c.beqz	a3,0000000023070D0E

l23070D02:
	lbu	a7,a5,+00000009
	andi	a7,a7,+00000004
	bne	a7,zero,0000000023070D22

l23070D0E:
	lw	t1,a5,+00000000
	beq	t1,zero,0000000023070D26

l23070D16:
	lw	a7,a1,+00000000
	beq	a7,zero,0000000023070D26

l23070D1E:
	beq	t1,a7,0000000023070D26

l23070D22:
	c.lw	a5,12(a5)
	c.j	0000000023070CCE

l23070D26:
	c.li	a0,FFFFFFF8
	c.j	0000000023070CB8

;; tcp_bind_netif: 23070D2A
;;   Called from:
;;     2306AE8C (in lwip_setsockopt_callback)
tcp_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,0000000023070D38

l23070D2E:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23070D38:
	sb	a5,a0,+00000008
	c.jr	ra

;; tcp_listen_with_backlog_and_err: 23070D3E
;;   Called from:
;;     230767D6 (in lwip_netconn_do_listen)
;;     2308685E (in altcp_tcp_listen)
tcp_listen_with_backlog_and_err proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a2
	c.beqz	a0,0000000023070E2A

l23070D4C:
	lbu	a5,a0,+00000014
	c.mv	s0,a0
	c.bnez	a5,0000000023070E30

l23070D54:
	lbu	a5,a0,+00000009
	c.andi	a5,00000004
	c.beqz	a5,0000000023070D66

l23070D5C:
	lui	a5,00042027
	lw	a5,a5,-00000700

l23070D64:
	c.bnez	a5,0000000023070E02

l23070D66:
	c.li	a0,00000003
	jal	ra,000000002306FB44
	c.mv	s1,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,0000000023070DEC

l23070D72:
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
	c.beqz	a5,0000000023070DC8

l23070DB2:
	lui	a4,00042027
	lw	a5,a4,-000006F8
	bne	a5,s0,0000000023070E1C

l23070DBE:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000908

l23070DC4:
	sw	zero,s0,+0000000C

l23070DC8:
	c.mv	a0,s0
	jal	ra,0000000023070C76
	lui	a5,00023071
	addi	a5,a5,+0000037E
	c.sw	s1,24(a5)
	lui	a5,00042027
	lw	a4,a5,-00000700
	sw	s1,a5,+00000900
	c.sw	s1,12(a4)
	jal	ra,0000000023074A0A
	c.li	a5,00000000

l23070DEC:
	beq	s2,zero,0000000023070DF4

l23070DF0:
	sb	a5,s2,+00000000

l23070DF4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23070E02:
	lhu	a3,a5,+00000016
	lhu	a4,s0,+00000016
	bne	a3,a4,0000000023070E16

l23070E0E:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	beq	a3,a4,0000000023070E36

l23070E16:
	c.lw	a5,12(a5)
	c.j	0000000023070D64

l23070E1A:
	c.mv	a5,a4

l23070E1C:
	c.beqz	a5,0000000023070DC4

l23070E1E:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023070E1A

l23070E24:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023070DC4

l23070E2A:
	c.li	s1,00000000
	c.li	a5,FFFFFFF0
	c.j	0000000023070DEC

l23070E30:
	c.li	a5,FFFFFFF1

l23070E32:
	c.li	s1,00000000
	c.j	0000000023070DEC

l23070E36:
	c.li	a5,FFFFFFF8
	c.j	0000000023070E32

;; tcp_update_rcv_ann_wnd: 23070E3A
;;   Called from:
;;     23070EAC (in tcp_recved)
;;     230725A2 (in tcp_receive)
;;     230726DA (in tcp_receive)
tcp_update_rcv_ann_wnd proc
	c.mv	a5,a0
	lhu	a1,a0,+00000028
	c.lw	a0,44(a3)
	c.lw	a0,36(a2)
	lhu	a4,a5,+00000032
	sub	a0,a1,a3
	addi	a6,zero,+00000408
	c.add	a0,a2
	bgeu	a6,a4,0000000023070E5A

l23070E56:
	addi	a4,zero,+00000408

l23070E5A:
	c.slli	a4,10
	c.srli	a4,00000010
	sub	a4,a0,a4
	blt	a4,zero,0000000023070E6C

l23070E66:
	sh	a1,a5,+0000002A
	c.jr	ra

l23070E6C:
	sub	a4,a2,a3
	bge	zero,a4,0000000023070E7C

l23070E74:
	sh	zero,a5,+0000002A

l23070E78:
	c.li	a0,00000000
	c.jr	ra

l23070E7C:
	c.sub	a3,a2
	sh	a3,a5,+0000002A
	c.j	0000000023070E78

;; tcp_recved: 23070E84
;;   Called from:
;;     23071798 (in tcp_recv_null)
;;     230761DE (in recv_tcp)
;;     2307696E (in lwip_netconn_do_recv)
;;     2308689A (in altcp_tcp_recved)
tcp_recved proc
	c.beqz	a0,0000000023070ED8

l23070E86:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a4,a0,+00000028
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.add	a1,a4
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a5,a1,0000000023070EA4

l23070EA0:
	bgeu	a1,a4,0000000023070EA6

l23070EA4:
	c.mv	a1,a5

l23070EA6:
	sh	a1,a0,+00000028
	c.mv	s0,a0
	jal	ra,0000000023070E3A
	addi	a5,zero,+00000407
	bgeu	a5,a0,0000000023070ED0

l23070EB8:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002307427C

l23070ED0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23070ED8:
	c.jr	ra

;; tcp_seg_free: 23070EDA
;;   Called from:
;;     23070F0A (in tcp_segs_free)
;;     23071E68 (in tcp_oos_insert_segment)
;;     23072026 (in tcp_free_acked_segments.isra.3)
;;     23072582 (in tcp_receive)
;;     2307266E (in tcp_receive)
;;     2307272E (in tcp_receive)
;;     23073250 (in tcp_input)
;;     23073734 (in tcp_create_segment)
;;     230747A6 (in tcp_output)
tcp_seg_free proc
	c.beqz	a0,0000000023070EF8

l23070EDC:
	c.mv	a1,a0
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023070EFA

l23070EE2:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230701A4
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.li	a0,00000004
	c.addi16sp	00000020

l23070EF4:
	jal	zero,000000002306FB62

l23070EF8:
	c.jr	ra

l23070EFA:
	c.li	a0,00000004
	c.j	0000000023070EF4

;; tcp_segs_free: 23070EFE
;;   Called from:
;;     23071196 (in tcp_free_ooseq)
;;     230711E0 (in tcp_pcb_purge)
;;     230711E6 (in tcp_pcb_purge)
;;     230712E4 (in tcp_abandon)
;;     230712EC (in tcp_abandon)
;;     230712F4 (in tcp_abandon)
;;     23071E20 (in tcp_oos_insert_segment)
;;     23073B30 (in tcp_write)
tcp_segs_free proc
	c.bnez	a0,0000000023070F02

l23070F00:
	c.jr	ra

l23070F02:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004

l23070F08:
	c.lw	a0,0(s0)
	jal	ra,0000000023070EDA
	c.mv	a0,s0
	c.bnez	s0,0000000023070F08

l23070F12:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_setprio: 23070F1A
;;   Called from:
;;     2308678E (in altcp_tcp_setprio)
tcp_setprio proc
	c.beqz	a0,0000000023070F20

l23070F1C:
	sb	a1,a0,+00000015

l23070F20:
	c.jr	ra

;; tcp_seg_copy: 23070F22
;;   Called from:
;;     230727A0 (in tcp_receive)
;;     230727FC (in tcp_receive)
;;     2307282A (in tcp_receive)
;;     2307286C (in tcp_receive)
;;     230728EC (in tcp_receive)
tcp_seg_copy proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.li	a0,00000004
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,0000000023070F42

l23070F34:
	c.lwsp	a2,00000064
	c.li	a2,00000014
	jal	ra,00000000230A382C
	c.lw	s0,4(a0)
	jal	ra,0000000023070452

l23070F42:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; tcp_arg: 23070F4C
;;   Called from:
;;     23075B20 (in setup_tcp)
;;     23075F04 (in lwip_netconn_do_close_internal)
;;     23076036 (in lwip_netconn_do_close_internal)
;;     23076538 (in accept_function)
;;     2307682C (in lwip_netconn_do_listen)
;;     23086726 (in altcp_tcp_setup_callbacks)
;;     230867D6 (in altcp_tcp_close)
tcp_arg proc
	c.beqz	a0,0000000023070F50

l23070F4E:
	c.sw	a0,16(a1)

l23070F50:
	c.jr	ra

;; tcp_recv: 23070F52
;;   Called from:
;;     23075B2E (in setup_tcp)
;;     23075F34 (in lwip_netconn_do_close_internal)
;;     23076540 (in accept_function)
;;     23086734 (in altcp_tcp_setup_callbacks)
;;     230867DE (in altcp_tcp_close)
tcp_recv proc
	c.beqz	a0,0000000023070F58

l23070F54:
	sw	a1,a0,+00000084

l23070F58:
	c.jr	ra

;; tcp_sent: 23070F5A
;;   Called from:
;;     23075B3C (in setup_tcp)
;;     23075F48 (in lwip_netconn_do_close_internal)
;;     23076010 (in lwip_netconn_do_close_internal)
;;     23076548 (in accept_function)
;;     23086742 (in altcp_tcp_setup_callbacks)
;;     230867E6 (in altcp_tcp_close)
tcp_sent proc
	c.beqz	a0,0000000023070F60

l23070F5C:
	sw	a1,a0,+00000080

l23070F60:
	c.jr	ra

;; tcp_err: 23070F62
;;   Called from:
;;     23075B60 (in setup_tcp)
;;     23075F5E (in lwip_netconn_do_close_internal)
;;     2307602E (in lwip_netconn_do_close_internal)
;;     2307655A (in accept_function)
;;     23086756 (in altcp_tcp_setup_callbacks)
;;     230867EE (in altcp_tcp_close)
tcp_err proc
	c.beqz	a0,0000000023070F68

l23070F64:
	sw	a1,a0,+00000090

l23070F68:
	c.jr	ra

;; tcp_accept: 23070F6A
;;   Called from:
;;     23075F18 (in lwip_netconn_do_close_internal)
;;     23075F3C (in lwip_netconn_do_close_internal)
;;     2307683C (in lwip_netconn_do_listen)
;;     2308686E (in altcp_tcp_listen)
tcp_accept proc
	c.beqz	a0,0000000023070F78

l23070F6C:
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	bne	a4,a5,0000000023070F78

l23070F76:
	c.sw	a0,24(a1)

l23070F78:
	c.jr	ra

;; tcp_poll: 23070F7A
;;   Called from:
;;     23075B4C (in setup_tcp)
;;     23075F56 (in lwip_netconn_do_close_internal)
;;     23076020 (in lwip_netconn_do_close_internal)
;;     23076552 (in accept_function)
;;     230867FA (in altcp_tcp_close)
;;     23086818 (in altcp_tcp_close)
;;     230868D6 (in altcp_tcp_set_poll)
tcp_poll proc
	c.beqz	a0,0000000023070F84

l23070F7C:
	sw	a1,a0,+0000008C
	sb	a2,a0,+0000001D

l23070F84:
	c.jr	ra

;; tcp_next_iss: 23070F86
;;   Called from:
;;     2307108C (in tcp_connect)
;;     2307301E (in tcp_input)
tcp_next_iss proc
	lui	a5,0004200F
	addi	a5,a5,-00000344
	lui	a4,00042027
	c.lw	a5,0(a0)
	lw	a4,a4,-00000704
	c.add	a0,a4
	c.sw	a5,0(a0)
	c.jr	ra

;; tcp_eff_send_mss_netif: 23070F9E
;;   Called from:
;;     230710C8 (in tcp_connect)
;;     230730A4 (in tcp_input)
;;     23073210 (in tcp_input)
;;     23074430 (in tcp_output)
tcp_eff_send_mss_netif proc
	c.beqz	a1,0000000023070FC6

l23070FA0:
	lhu	a5,a1,+00000038
	c.beqz	a5,0000000023070FC6

l23070FA6:
	addi	a3,zero,+00000028
	c.li	a4,00000000
	bgeu	a3,a5,0000000023070FC0

l23070FB0:
	addi	a5,a5,-00000028
	c.slli	a5,10
	c.srli	a5,00000010
	c.mv	a4,a5
	bgeu	a0,a5,0000000023070FC0

l23070FBE:
	c.mv	a4,a0

l23070FC0:
	slli	a0,a4,00000010
	c.srli	a0,00000010

l23070FC6:
	c.jr	ra

;; tcp_connect: 23070FC8
;;   Called from:
;;     230766F6 (in lwip_netconn_do_connect)
;;     23086882 (in altcp_tcp_connect)
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
	c.beqz	a0,0000000023071024

l23070FDE:
	c.beqz	a1,0000000023071024

l23070FE0:
	lbu	a5,a0,+00000014
	c.li	s1,FFFFFFF6
	c.bnez	a5,0000000023071024

l23070FE8:
	c.lw	a1,0(a5)
	c.mv	s0,a0
	c.mv	s3,a3
	c.sw	a0,4(a5)
	sh	a2,s0,+00000018
	lbu	a0,a0,+00000008
	c.mv	s4,a2
	c.mv	s2,a1
	c.beqz	a0,000000002307103A

l23070FFE:
	jal	ra,000000002306FFA4

l23071002:
	c.mv	s6,a0
	c.li	s1,FFFFFFFC
	c.beqz	a0,0000000023071024

l23071008:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023071010

l2307100C:
	c.lw	a0,4(a5)
	c.sw	s0,0(a5)

l23071010:
	lhu	s5,s0,+00000016
	bne	s5,zero,0000000023071044

l23071018:
	jal	ra,0000000023070B90
	sh	a0,s0,+00000016
	c.li	s1,FFFFFFFE
	c.bnez	a0,000000002307108A

l23071024:
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

l2307103A:
	addi	a0,s0,+00000004
	jal	ra,000000002306ED14
	c.j	0000000023071002

l23071044:
	lbu	a5,s0,+00000009
	c.andi	a5,00000004
	c.beqz	a5,000000002307108A

l2307104C:
	lui	a5,00042027
	lw	a5,a5,-000006FC

l23071054:
	c.beqz	a5,0000000023071080

l23071056:
	lhu	a4,a5,+00000016
	beq	a4,s5,0000000023071062

l2307105E:
	c.lw	a5,12(a5)
	c.j	0000000023071054

l23071062:
	lhu	a4,a5,+00000018
	bne	a4,s4,000000002307105E

l2307106A:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,000000002307105E

l23071072:
	c.lw	a5,4(a3)
	lw	a4,s2,+00000000
	bne	a3,a4,000000002307105E

l2307107C:
	c.li	s1,FFFFFFF8
	c.j	0000000023071024

l23071080:
	lui	a5,00042027
	lw	a5,a5,-00000708

l23071088:
	c.bnez	a5,0000000023071126

l2307108A:
	c.mv	a0,s0
	jal	ra,0000000023070F86
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
	jal	ra,0000000023070F9E
	c.li	a5,00000001
	sh	a0,s0,+00000032
	sh	a5,s0,+00000048
	sw	s3,s0,+00000088
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023073ED6
	c.mv	s1,a0
	c.bnez	a0,0000000023071024

l230710E6:
	c.li	a5,00000002
	sb	a5,s0,+00000014
	beq	s5,zero,0000000023071102

l230710F0:
	lui	a4,00042027
	lw	a5,a4,-000006F8
	bne	a5,s0,000000002307114E

l230710FC:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000908

l23071102:
	lui	a5,00042027
	lw	a4,a5,-000006FC
	sw	s0,a5,+00000904
	c.sw	s0,12(a4)
	jal	ra,0000000023074A0A
	lui	a5,00042027
	c.li	a4,00000001
	c.mv	a0,s0
	sb	a4,a5,+0000090C
	jal	ra,000000002307427C
	c.j	0000000023071024

l23071126:
	lhu	a4,a5,+00000016
	bne	a4,s5,0000000023071148

l2307112E:
	lhu	a4,a5,+00000018
	bne	a4,s4,0000000023071148

l23071136:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,0000000023071148

l2307113E:
	c.lw	a5,4(a3)
	lw	a4,s2,+00000000
	beq	a3,a4,000000002307107C

l23071148:
	c.lw	a5,12(a5)
	c.j	0000000023071088

l2307114C:
	c.mv	a5,a4

l2307114E:
	c.beqz	a5,0000000023071102

l23071150:
	c.lw	a5,12(a4)
	bne	a4,s0,000000002307114C

l23071156:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023071102

;; tcp_tcp_get_tcp_addrinfo: 2307115C
;;   Called from:
;;     23086782 (in altcp_tcp_get_tcp_addrinfo)
tcp_tcp_get_tcp_addrinfo proc
	c.beqz	a0,0000000023071184

l2307115E:
	c.beqz	a1,0000000023071176

l23071160:
	c.beqz	a2,0000000023071166

l23071162:
	c.lw	a0,0(a5)
	c.sw	a2,0(a5)

l23071166:
	c.bnez	a3,000000002307116C

l23071168:
	c.li	a0,00000000
	c.jr	ra

l2307116C:
	lhu	a5,a0,+00000016

l23071170:
	sh	a5,a3,+00000000
	c.j	0000000023071168

l23071176:
	c.beqz	a2,000000002307117C

l23071178:
	c.lw	a0,4(a5)
	c.sw	a2,0(a5)

l2307117C:
	c.beqz	a3,0000000023071168

l2307117E:
	lhu	a5,a0,+00000018
	c.j	0000000023071170

l23071184:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; tcp_free_ooseq: 23071188
;;   Called from:
;;     23070060 (in pbuf_free_ooseq_callback)
;;     230711D4 (in tcp_pcb_purge)
;;     23071AF6 (in tcp_slowtmr)
tcp_free_ooseq proc
	c.lw	a0,116(a5)
	c.beqz	a5,00000000230711A6

l2307118C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023070EFE
	sw	zero,s0,+00000074
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230711A6:
	c.jr	ra

;; tcp_pcb_purge: 230711A8
;;   Called from:
;;     23071218 (in tcp_pcb_remove)
;;     2307166E (in tcp_close_shutdown)
;;     23071C66 (in tcp_slowtmr)
;;     23071CF8 (in tcp_slowtmr)
;;     23073424 (in tcp_input)
;;     230734B6 (in tcp_input)
;;     230734F0 (in tcp_input)
tcp_pcb_purge proc
	c.beqz	a0,00000000230711FE

l230711AA:
	lbu	a5,a0,+00000014
	c.li	a4,00000001
	bgeu	a4,a5,00000000230711FE

l230711B4:
	c.li	a4,0000000A
	beq	a5,a4,00000000230711FE

l230711BA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,120(a0)
	c.beqz	a0,00000000230711CE

l230711C6:
	jal	ra,00000000230701A4
	sw	zero,s0,+00000078

l230711CE:
	c.lw	s0,116(a5)
	c.beqz	a5,00000000230711D8

l230711D2:
	c.mv	a0,s0
	jal	ra,0000000023071188

l230711D8:
	c.lw	s0,108(a0)
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030
	jal	ra,0000000023070EFE
	c.lw	s0,112(a0)
	jal	ra,0000000023070EFE
	sw	zero,s0,+0000006C
	sw	zero,s0,+00000070
	sh	zero,s0,+00000068
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230711FE:
	c.jr	ra

;; tcp_pcb_remove: 23071200
;;   Called from:
;;     23071290 (in tcp_abandon)
;;     23071352 (in tcp_abandon)
;;     23071730 (in tcp_close_shutdown)
;;     23071756 (in tcp_close_shutdown)
;;     23071F64 (in tcp_input_delayed_close)
;;     23073118 (in tcp_input)
tcp_pcb_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a1
	bne	a5,a1,0000000023071256

l2307120E:
	c.lw	a1,12(a5)
	c.sw	a0,0(a5)

l23071212:
	sw	zero,s0,+0000000C
	c.mv	a0,s0
	jal	ra,00000000230711A8
	lbu	a5,s0,+00000014
	c.li	a4,0000000A
	beq	a5,a4,0000000023071244

l23071226:
	c.li	a4,00000001
	beq	a5,a4,0000000023071244

l2307122C:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023071244

l23071236:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,000000002307427C

l23071244:
	sb	zero,s0,+00000014
	sh	zero,s0,+00000016
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23071254:
	c.mv	a5,a4

l23071256:
	c.beqz	a5,0000000023071212

l23071258:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023071254

l2307125E:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023071212

;; tcp_abandon: 23071264
;;   Called from:
;;     2307137A (in tcp_abort)
;;     2307142E (in tcp_kill_state)
;;     230730BA (in tcp_input)
tcp_abandon proc
	beq	a0,zero,0000000023071376

l23071268:
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
	bne	a5,a4,00000000230712AC

l23071286:
	c.mv	a1,a0
	lui	a0,00042027
	addi	a0,a0,-00000708
	jal	ra,0000000023071200
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
	jal	zero,0000000023070C76

l230712AC:
	lw	s5,a0,+00000050
	lw	s6,a0,+00000024
	lw	s3,a0,+00000090
	lw	s4,a0,+00000010
	lhu	s1,a0,+00000016
	c.bnez	a5,0000000023071346

l230712C2:
	c.li	s2,00000000
	c.beqz	s1,00000000230712E0

l230712C6:
	lui	a4,00042027
	lw	a5,a4,-000006F8
	bne	a5,a0,0000000023071338

l230712D2:
	c.lw	a0,12(a5)
	sw	a5,a4,+00000908

l230712D8:
	sw	zero,s0,+0000000C
	c.li	s1,00000000
	c.li	s2,00000000

l230712E0:
	c.lw	s0,112(a0)
	c.beqz	a0,00000000230712E8

l230712E4:
	jal	ra,0000000023070EFE

l230712E8:
	c.lw	s0,108(a0)
	c.beqz	a0,00000000230712F0

l230712EC:
	jal	ra,0000000023070EFE

l230712F0:
	c.lw	s0,116(a0)
	c.beqz	a0,00000000230712F8

l230712F4:
	jal	ra,0000000023070EFE

l230712F8:
	beq	s2,zero,0000000023071312

l230712FC:
	lhu	a6,s0,+00000018
	c.mv	a5,s1
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,00000000230741D0

l23071312:
	c.mv	a0,s0
	jal	ra,0000000023070C76
	beq	s3,zero,0000000023071362

l2307131C:
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

l23071336:
	c.mv	a5,a4

l23071338:
	c.beqz	a5,00000000230712D8

l2307133A:
	c.lw	a5,12(a4)
	bne	a4,s0,0000000023071336

l23071340:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	00000000230712D8

l23071346:
	c.mv	s2,a1
	c.mv	a1,a0
	lui	a0,00042027
	addi	a0,a0,-000006FC
	jal	ra,0000000023071200
	lui	a5,00042027
	c.li	a4,00000001
	sb	a4,a5,+0000090C
	c.j	00000000230712E0

l23071362:
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

l23071376:
	c.jr	ra

;; tcp_abort: 23071378
;;   Called from:
;;     23071384 (in tcp_accept_null)
;;     230713B2 (in tcp_netif_ip_addr_changed_pcblist.isra.2)
;;     2307148A (in tcp_alloc)
;;     230715F4 (in tcp_alloc)
;;     23073314 (in tcp_input)
;;     23075F94 (in lwip_netconn_do_close_internal)
;;     23076474 (in netconn_drain)
;;     23086840 (in altcp_tcp_abort)
tcp_abort proc
	c.li	a1,00000001
	jal	zero,0000000023071264

;; tcp_accept_null: 2307137E
tcp_accept_null proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,0000000023071378
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF3
	c.addi	sp,00000010
	c.jr	ra

;; tcp_netif_ip_addr_changed_pcblist.isra.2: 23071390
;;   Called from:
;;     230713D4 (in tcp_netif_ip_addr_changed)
;;     230713E2 (in tcp_netif_ip_addr_changed)
tcp_netif_ip_addr_changed_pcblist.isra.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0

l2307139A:
	c.bnez	a1,00000000230713A6

l2307139C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230713A6:
	c.lw	a1,0(a4)
	c.lw	s0,0(a5)
	c.lw	a1,12(s1)
	bne	a4,a5,00000000230713B6

l230713B0:
	c.mv	a0,a1
	jal	ra,0000000023071378

l230713B6:
	c.mv	a1,s1
	c.j	000000002307139A

;; tcp_netif_ip_addr_changed: 230713BA
;;   Called from:
;;     2306FC18 (in netif_do_set_ipaddr)
;;     2306FECC (in netif_remove)
tcp_netif_ip_addr_changed proc
	c.beqz	a0,0000000023071410

l230713BC:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.beqz	a4,00000000230713F6

l230713CA:
	lui	a5,00042027
	c.mv	s1,a1
	lw	a1,a5,-000006FC
	jal	ra,0000000023071390
	lui	a5,00042027
	lw	a1,a5,-000006F8
	c.mv	a0,s0
	jal	ra,0000000023071390
	c.beqz	s1,00000000230713F6

l230713E8:
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230713F6

l230713EC:
	lui	a5,00042027
	lw	a5,a5,-00000700

l230713F4:
	c.bnez	a5,0000000023071400

l230713F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23071400:
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,a4,000000002307140C

l23071408:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)

l2307140C:
	c.lw	a5,12(a5)
	c.j	00000000230713F4

l23071410:
	c.jr	ra

;; tcp_kill_state: 23071412
;;   Called from:
;;     2307149A (in tcp_alloc)
;;     230714AA (in tcp_alloc)
tcp_kill_state proc
	lui	a5,00042027
	lui	a4,00042027
	lw	a5,a5,-000006FC
	lw	a1,a4,-00000704
	c.li	a2,00000000
	c.li	a3,00000000

l23071426:
	c.bnez	a5,0000000023071432

l23071428:
	c.beqz	a3,000000002307144C

l2307142A:
	c.li	a1,00000000
	c.mv	a0,a3
	jal	zero,0000000023071264

l23071432:
	lbu	a4,a5,+00000014
	bne	a4,a0,0000000023071448

l2307143A:
	c.lw	a5,32(a4)
	sub	a4,a1,a4
	bltu	a4,a2,0000000023071448

l23071444:
	c.mv	a2,a4
	c.mv	a3,a5

l23071448:
	c.lw	a5,12(a5)
	c.j	0000000023071426

l2307144C:
	c.jr	ra

;; tcp_alloc: 2307144E
;;   Called from:
;;     23071622 (in tcp_new_ip_type)
;;     23072FC0 (in tcp_input)
tcp_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.li	a0,00000002
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.bnez	a0,000000002307151A

l23071466:
	lui	s3,00042027
	lw	a0,s3,-000006FC

l2307146E:
	bne	a0,zero,00000000230715AC

l23071472:
	lui	a5,00042027
	lui	s2,00042027
	lw	a5,a5,-00000708
	lw	a2,s2,-00000704
	c.li	a3,00000000

l23071484:
	bne	a5,zero,00000000230715C6

l23071488:
	c.beqz	a0,000000002307148E

l2307148A:
	jal	ra,0000000023071378

l2307148E:
	c.li	a0,00000002
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.bnez	a0,0000000023071508

l23071498:
	c.li	a0,00000009
	jal	ra,0000000023071412
	c.li	a0,00000002
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.bnez	a0,00000000230714F6

l230714A8:
	c.li	a0,00000008
	jal	ra,0000000023071412
	c.li	a0,00000002
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.bnez	a0,00000000230714E4

l230714B8:
	slli	a5,s1,00000018
	c.srai	a5,00000018
	blt	a5,zero,00000000230715D8

l230714C2:
	c.mv	a5,s1
	bne	s1,zero,00000000230715DC

l230714C8:
	c.li	a0,00000002
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,000000002307159C

l230714D2:
	lui	a5,00042027
	lw	a4,a5,-00000750
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l230714E4:
	lui	a5,00042027
	lw	a4,a5,-00000750
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l230714F6:
	lui	a5,00042027
	lw	a4,a5,-00000750
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l23071508:
	lui	a5,00042027
	lw	a4,a5,-00000750
	lhu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000000

l2307151A:
	addi	a2,zero,+000000A4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
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
	lui	a5,00042027
	lw	a5,a5,-00000704
	sb	s1,s0,+00000015
	c.sw	s0,32(a5)
	lui	a5,0004200F
	lbu	a5,a5,+00000661
	sb	a5,s0,+0000001E
	lui	a5,00015800
	c.addi	a5,00000001
	c.sw	s0,72(a5)
	lui	a5,00023071
	addi	a5,a5,+00000786
	sw	a5,s0,+00000084
	lui	a5,000006DE
	addi	a5,a5,-00000300
	sw	a5,s0,+00000094
	c.lui	a5,00012000
	addi	a5,a5,+000004F8
	sw	a5,s0,+00000098
	c.li	a5,00000009
	sw	a5,s0,+0000009C

l2307159C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230715AC:
	lhu	a5,a0,+0000001A
	c.lw	a0,12(s0)
	andi	a4,a5,+00000008
	c.beqz	a4,00000000230715C2

l230715B8:
	c.andi	a5,FFFFFFF7
	sh	a5,a0,+0000001A
	jal	ra,0000000023070BE8

l230715C2:
	c.mv	a0,s0
	c.j	000000002307146E

l230715C6:
	c.lw	a5,32(a4)
	sub	a4,a2,a4
	bltu	a4,a3,00000000230715D4

l230715D0:
	c.mv	a3,a4
	c.mv	a0,a5

l230715D4:
	c.lw	a5,12(a5)
	c.j	0000000023071484

l230715D8:
	addi	a5,zero,+0000007F

l230715DC:
	lw	a4,s3,-000006FC
	lw	a0,s2,-00000704
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a3,00000000

l230715EC:
	c.bnez	a4,00000000230715FA

l230715EE:
	beq	s0,zero,00000000230714C8

l230715F2:
	c.mv	a0,s0
	jal	ra,0000000023071378
	c.j	00000000230714C8

l230715FA:
	lbu	a2,a4,+00000015
	bltu	a2,a5,0000000023071610

l23071602:
	bne	a2,a5,000000002307161A

l23071606:
	c.lw	a4,32(a1)
	sub	a1,a0,a1
	bltu	a1,a3,000000002307161A

l23071610:
	c.lw	a4,32(a3)
	c.mv	a5,a2
	c.mv	s0,a4
	sub	a3,a0,a3

l2307161A:
	c.lw	a4,12(a4)
	c.j	00000000230715EC

;; tcp_new_ip_type: 2307161E
;;   Called from:
;;     2307628A (in lwip_netconn_do_newconn)
;;     23086944 (in altcp_tcp_new_ip_type)
tcp_new_ip_type proc
	addi	a0,zero,+00000040
	jal	zero,000000002307144E

;; tcp_close_shutdown: 23071626
;;   Called from:
;;     2307177E (in tcp_close)
;;     23071946 (in tcp_shutdown)
tcp_close_shutdown proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lbu	a5,a0,+00000014
	c.beqz	a1,00000000230716BE

l23071636:
	c.li	a4,00000004
	beq	a5,a4,0000000023071642

l2307163C:
	c.li	a4,00000007
	bne	a5,a4,00000000230716BE

l23071642:
	c.lw	s0,120(a4)
	c.bnez	a4,0000000023071654

l23071646:
	lhu	a3,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a3,a4,00000000230716BE

l23071654:
	lhu	a5,s0,+00000016
	lhu	a6,s0,+00000018
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,00000000230741D0
	c.mv	a0,s0
	jal	ra,00000000230711A8
	lui	a4,00042027
	lw	a5,a4,-000006FC
	bne	a5,s0,00000000230716B0

l2307167E:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000904

l23071684:
	lui	a5,00042027
	c.li	a4,00000001
	sb	a4,a5,+0000090C
	lui	a5,00042027
	lw	a5,a5,-000006F0
	sw	zero,s0,+0000000C
	bne	a5,s0,00000000230716F6

l2307169E:
	jal	ra,0000000023073668

l230716A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230716AE:
	c.mv	a5,a4

l230716B0:
	c.beqz	a5,0000000023071684

l230716B2:
	c.lw	a5,12(a4)
	bne	a4,s0,00000000230716AE

l230716B8:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023071684

l230716BE:
	c.li	s1,00000001
	beq	a5,s1,000000002307170E

l230716C4:
	c.beqz	a5,00000000230716DA

l230716C6:
	c.li	a4,00000002
	beq	a5,a4,000000002307174C

l230716CC:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023070BE8

l230716DA:
	lhu	a5,s0,+00000016
	c.beqz	a5,00000000230716F6

l230716E0:
	lui	a4,00042027
	lw	a5,a4,-000006F8
	bne	a5,s0,0000000023071700

l230716EC:
	c.lw	s0,12(a5)
	sw	a5,a4,+00000908

l230716F2:
	sw	zero,s0,+0000000C

l230716F6:
	c.mv	a0,s0
	jal	ra,0000000023070C76
	c.j	00000000230716A2

l230716FE:
	c.mv	a5,a4

l23071700:
	c.beqz	a5,00000000230716F2

l23071702:
	c.lw	a5,12(a4)
	bne	a4,s0,00000000230716FE

l23071708:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	00000000230716F2

l2307170E:
	lui	a5,000230C3
	addi	a5,a5,+00000764
	addi	a3,a5,+0000000C

l2307171A:
	c.lw	a5,4(a4)
	c.lw	a4,0(a4)

l2307171E:
	c.bnez	a4,000000002307173E

l23071720:
	c.addi	a5,00000004
	bne	a5,a3,000000002307171A

l23071726:
	lui	a0,00042027
	c.mv	a1,s0
	addi	a0,a0,-00000700
	jal	ra,0000000023071200
	c.mv	a1,s0
	c.li	a0,00000003
	jal	ra,000000002306FB62
	c.j	00000000230716A2

l2307173E:
	c.lw	a4,124(a2)
	bne	s0,a2,0000000023071748

l23071744:
	sw	zero,a4,+0000007C

l23071748:
	c.lw	a4,12(a4)
	c.j	000000002307171E

l2307174C:
	lui	a0,00042027
	c.mv	a1,s0
	addi	a0,a0,-000006FC
	jal	ra,0000000023071200
	lui	a5,00042027
	sb	s1,a5,+0000090C
	c.j	00000000230716F6

;; tcp_close: 23071764
;;   Called from:
;;     230717B2 (in tcp_recv_null)
;;     23075F64 (in lwip_netconn_do_close_internal)
;;     2307685C (in lwip_netconn_do_listen)
;;     23086800 (in altcp_tcp_close)
;;     23086976 (in altcp_tcp_new_ip_type)
tcp_close proc
	c.beqz	a0,0000000023071782

l23071766:
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	beq	a4,a5,000000002307177C

l23071770:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000010
	sh	a5,a0,+0000001A

l2307177C:
	c.li	a1,00000001
	jal	zero,0000000023071626

l23071782:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; tcp_recv_null: 23071786
;;   Called from:
;;     23071834 (in tcp_process_refused_data)
;;     230735C4 (in tcp_input)
tcp_recv_null proc
	c.beqz	a1,00000000230717B6

l23071788:
	c.beqz	a2,00000000230717AC

l2307178A:
	c.mv	a0,a1
	lhu	a1,a2,+00000008
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,0000000023070E84
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230717AC:
	c.li	a0,00000000
	c.bnez	a3,00000000230717BA

l230717B0:
	c.mv	a0,a1
	jal	zero,0000000023071764

l230717B6:
	c.li	a0,FFFFFFF0
	c.jr	ra

l230717BA:
	c.jr	ra

;; tcp_process_refused_data: 230717BC
;;   Called from:
;;     230718DE (in tcp_fasttmr)
;;     23072DA4 (in tcp_input)
tcp_process_refused_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s1,FFFFFFF0
	c.beqz	a0,0000000023071822

l230717CC:
	lw	s2,a0,+00000078
	lw	a5,a0,+00000084
	c.mv	s0,a0
	lbu	s3,s2,+0000000D
	sw	zero,a0,+00000078
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,a0
	c.beqz	a5,0000000023071832

l230717E6:
	c.lw	a0,16(a0)
	c.jalr	a5

l230717EA:
	c.mv	s1,a0
	c.bnez	a0,000000002307183A

l230717EE:
	andi	s3,s3,+00000020
	beq	s3,zero,0000000023071822

l230717F6:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,000000002307180A

l23071804:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l2307180A:
	lw	a5,s0,+00000084
	c.beqz	a5,0000000023071822

l23071810:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023071822

l23071820:
	c.li	s1,FFFFFFF3

l23071822:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23071832:
	c.li	a0,00000000
	jal	ra,0000000023071786
	c.j	00000000230717EA

l2307183A:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023071820

l23071840:
	sw	s2,s0,+00000078
	c.li	s1,FFFFFFFB
	c.j	0000000023071822

;; tcp_fasttmr: 23071848
;;   Called from:
;;     23071D20 (in tcp_tmr)
tcp_fasttmr proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004200F
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	a3,a4,+00000661
	lbu	a5,a3,+00000000
	addi	s2,a4,+00000661
	lui	s4,00042027
	c.addi	a5,00000001
	sb	a5,a3,+00000000
	lui	s3,00042027

l23071874:
	lw	s0,s4,-000006FC

l23071878:
	c.bnez	s0,000000002307188A

l2307187A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307188A:
	lbu	a5,s2,+00000000
	lbu	a4,s0,+0000001E
	beq	a4,a5,00000000230718EC

l23071896:
	sb	a5,s0,+0000001E
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,00000000230718BC

l230718A4:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,000000002307427C
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l230718BC:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000008
	c.beqz	a4,00000000230718D2

l230718C6:
	c.andi	a5,FFFFFFF7
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,0000000023070BE8

l230718D2:
	c.lw	s0,120(a5)
	c.lw	s0,12(s1)
	c.beqz	a5,00000000230718E8

l230718D8:
	c.mv	a0,s0
	sb	zero,s3,+0000090C
	jal	ra,00000000230717BC
	lbu	a5,s3,-000006F4
	c.bnez	a5,0000000023071874

l230718E8:
	c.mv	s0,s1
	c.j	0000000023071878

l230718EC:
	c.lw	s0,12(s1)
	c.j	00000000230718E8

;; tcp_shutdown: 230718F0
;;   Called from:
;;     23075F26 (in lwip_netconn_do_close_internal)
;;     230867B0 (in altcp_tcp_shutdown)
tcp_shutdown proc
	c.beqz	a0,000000002307194A

l230718F2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a3,a0,+00000014
	c.li	a4,00000001
	c.mv	s0,a0
	beq	a3,a4,000000002307194E

l23071904:
	c.beqz	a1,000000002307192E

l23071906:
	lhu	a4,a0,+0000001A
	c.li	a1,00000001
	ori	a4,a4,+00000010
	sh	a4,a0,+0000001A
	c.bnez	a2,0000000023071940

l23071916:
	c.lw	a0,120(a0)
	c.bnez	a0,0000000023071924

l2307191A:
	c.li	a0,00000000

l2307191C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23071924:
	jal	ra,00000000230701A4
	sw	zero,s0,+00000078
	c.j	000000002307191A

l2307192E:
	c.beqz	a2,000000002307191A

l23071930:
	c.li	a5,00000007
	bltu	a5,a3,000000002307194E

l23071936:
	sll	a4,a4,a3
	andi	a4,a4,+00000098
	c.beqz	a4,000000002307194E

l23071940:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023071626

l2307194A:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2307194E:
	c.li	a0,FFFFFFF5
	c.j	000000002307191C

;; tcp_slowtmr: 23071952
;;   Called from:
;;     23071D42 (in tcp_tmr)
tcp_slowtmr proc
	c.addi16sp	FFFFFFB0
	c.swsp	s2,00000020
	lui	s2,00042027
	lw	a5,s2,-00000704
	c.swsp	s5,00000098
	lui	s5,0004200F
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	addi	a4,s5,+00000661
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.addi	a5,00000001
	sw	a5,s2,+000008FC
	lbu	a5,a4,+00000000
	lui	s8,000230C3
	lui	s9,000230CC
	c.addi	a5,00000001
	sb	a5,a4,+00000000
	addi	s5,s5,+00000661
	lui	s7,00042027
	addi	s8,s8,+00000724
	addi	s9,s9,-0000051C

l230719A6:
	lui	s6,00042027
	lw	s0,s6,-000006FC
	c.lui	s4,00008000
	addi	s10,s4,-00000002
	c.li	s3,00000000
	c.addi	s4,FFFFFFFF

l230719B8:
	c.bnez	s0,00000000230719EA

l230719BA:
	lui	a5,00042027
	lw	s1,a5,-00000708
	c.mv	s3,a5
	addi	s4,zero,+000000F0

l230719C8:
	bne	s1,zero,0000000023071CEA

l230719CC:
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

l230719EA:
	lbu	a5,s5,+00000000
	lbu	a4,s0,+0000001E
	bne	a4,a5,0000000023071A00

l230719F6:
	lw	s11,s0,+0000000C

l230719FA:
	c.mv	s3,s0
	c.mv	s0,s11
	c.j	00000000230719B8

l23071A00:
	lbu	a3,s0,+00000014
	sb	a5,s0,+0000001E
	c.li	a4,00000002
	lbu	a5,s0,+00000042
	bne	a3,a4,0000000023071A56

l23071A12:
	c.li	a4,00000005

l23071A14:
	c.li	s1,00000001
	bltu	a4,a5,0000000023071A6A

l23071A1A:
	lbu	s1,s0,+000000A1
	beq	s1,zero,0000000023071B6E

l23071A22:
	lbu	a4,s0,+000000A2
	c.li	a5,0000000B
	bltu	a5,a4,0000000023071C1C

l23071A2C:
	c.add	s1,s9
	lbu	a4,s1,-00000001
	lbu	a5,s0,+000000A0
	bltu	a5,a4,0000000023071A5A

l23071A3A:
	lhu	a1,s0,+00000060
	beq	a1,zero,0000000023071B50

l23071A42:
	c.mv	a0,s0
	jal	ra,0000000023073C56
	bne	a0,zero,0000000023071B58

l23071A4C:
	c.mv	a0,s0
	jal	ra,000000002307427C
	c.beqz	a0,0000000023071A68

l23071A54:
	c.j	0000000023071B58

l23071A56:
	c.li	a4,0000000B
	c.j	0000000023071A14

l23071A5A:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000A0
	bgeu	a5,a4,0000000023071A3A

l23071A68:
	c.li	s1,00000000

l23071A6A:
	lbu	a5,s0,+00000014
	c.li	a4,00000006
	bne	a5,a4,0000000023071A92

l23071A74:
	lhu	a4,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,0000000023071A92

l23071A7C:
	c.lw	s0,32(a3)
	lw	a4,s2,-00000704
	c.sub	a4,a3
	addi	a3,zero,+00000028
	bgeu	a3,a4,0000000023071A92

l23071A8C:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l23071A92:
	lbu	s11,s0,+00000009
	andi	s11,s11,+00000008
	beq	s11,zero,0000000023071ADA

l23071A9E:
	c.li	a4,00000004
	beq	a5,a4,0000000023071AAC

l23071AA4:
	c.li	a4,00000007
	c.li	s11,00000000
	bne	a5,a4,0000000023071ADA

l23071AAC:
	lw	a0,s0,+00000098
	lw	a4,s0,+0000009C
	lw	a1,s0,+00000094
	addi	a2,zero,+000001F4
	add	a4,a0,a4
	lw	a3,s2,-00000704
	c.lw	s0,32(a5)
	c.sub	a3,a5
	c.add	a4,a1
	srl	a4,a4,a2
	bgeu	a4,a3,0000000023071C20

l23071AD2:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.li	s11,00000001

l23071ADA:
	c.lw	s0,116(a5)
	c.beqz	a5,0000000023071AFA

l23071ADE:
	c.lw	s0,32(a5)
	lw	a4,s2,-00000704
	c.li	a3,00000006
	c.sub	a4,a5
	lh	a5,s0,+00000040
	add	a5,a5,a3
	bltu	a4,a5,0000000023071AFA

l23071AF4:
	c.mv	a0,s0
	jal	ra,0000000023071188

l23071AFA:
	lbu	a5,s0,+00000014
	c.li	a4,00000003
	bne	a5,a4,0000000023071C4A

l23071B04:
	c.lw	s0,32(a4)
	lw	a5,s2,-00000704
	c.sub	a5,a4
	addi	a4,zero,+00000028
	bgeu	a4,a5,0000000023071B1A

l23071B14:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l23071B1A:
	bne	s1,zero,0000000023071C60

l23071B1E:
	lbu	a5,s0,+0000001C
	lbu	a4,s0,+0000001D
	lw	s11,s0,+0000000C
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000001C
	bltu	a5,a4,00000000230719FA

l23071B38:
	lw	a5,s0,+0000008C
	sb	zero,s0,+0000001C
	sb	zero,s7,+0000090C
	bne	a5,zero,0000000023071CD6

l23071B48:
	c.mv	a0,s0
	jal	ra,000000002307427C
	c.j	00000000230719FA

l23071B50:
	c.mv	a0,s0
	jal	ra,0000000023074826
	c.bnez	a0,0000000023071A68

l23071B58:
	lbu	a5,s0,+000000A1
	sb	zero,s0,+000000A0
	c.li	a4,00000006
	bltu	a4,a5,0000000023071A68

l23071B66:
	c.addi	a5,00000001
	sb	a5,s0,+000000A1
	c.j	0000000023071A68

l23071B6E:
	lh	a5,s0,+00000030
	blt	a5,zero,0000000023071C0E

l23071B76:
	bne	a5,s4,0000000023071C08

l23071B7A:
	c.mv	a0,s0
	jal	ra,0000000023073FFE
	c.beqz	a0,0000000023071B8E

l23071B82:
	c.lw	s0,112(a5)
	bne	a5,zero,0000000023071A68

l23071B88:
	c.lw	s0,108(a5)
	beq	a5,zero,0000000023071A68

l23071B8E:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	beq	a4,a5,0000000023071BC8

l23071B98:
	lh	a5,s0,+0000003C
	lh	a4,s0,+0000003E
	c.li	a3,0000000C
	c.srai	a5,00000003
	c.add	a5,a4
	lbu	a4,s0,+00000042
	bgeu	a3,a4,0000000023071BB0

l23071BAE:
	c.li	a4,0000000C

l23071BB0:
	andi	a4,a4,+000000FF
	c.add	a4,s8
	lbu	a4,a4,+00000000
	sll	a5,a5,a4
	bge	s10,a5,0000000023071BC4

l23071BC2:
	c.mv	a5,s4

l23071BC4:
	sh	a5,s0,+00000040

l23071BC8:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	sh	zero,s0,+00000030
	bgeu	a4,a5,0000000023071BDA

l23071BD8:
	c.mv	a5,a4

l23071BDA:
	lhu	a3,s0,+00000032
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a4,a3,00000001
	c.srli	a5,00000001
	c.slli	a4,10
	sh	a5,s0,+0000004A
	c.srli	a4,00000010
	bgeu	a5,a4,0000000023071BF8

l23071BF4:
	sh	a4,s0,+0000004A

l23071BF8:
	sh	a3,s0,+00000048
	sh	zero,s0,+0000006A
	c.mv	a0,s0
	jal	ra,00000000230747B4
	c.j	0000000023071A6A

l23071C08:
	c.addi	a5,00000001
	sh	a5,s0,+00000030

l23071C0E:
	lh	a4,s0,+00000030
	lh	a5,s0,+00000040
	blt	a4,a5,0000000023071A68

l23071C1A:
	c.j	0000000023071B7A

l23071C1C:
	c.li	s1,00000001
	c.j	0000000023071A6A

l23071C20:
	lbu	a5,s0,+000000A3
	c.li	s11,00000000
	add	a5,a5,a0
	c.add	a5,a1
	srl	a5,a5,a2
	bgeu	a5,a3,0000000023071ADA

l23071C34:
	c.mv	a0,s0
	jal	ra,00000000230747EC
	bne	a0,zero,0000000023071ADA

l23071C3E:
	lbu	a5,s0,+000000A3
	c.addi	a5,00000001
	sb	a5,s0,+000000A3
	c.j	0000000023071ADA

l23071C4A:
	c.li	a4,00000009
	bne	a5,a4,0000000023071CB8

l23071C50:
	c.lw	s0,32(a4)
	lw	a5,s2,-00000704
	c.sub	a5,a4
	addi	a4,zero,+000000F0

l23071C5C:
	bgeu	a4,a5,0000000023071B1A

l23071C60:
	c.mv	a0,s0
	lw	s1,s0,+00000090
	jal	ra,00000000230711A8
	c.lw	s0,12(a5)
	beq	s3,zero,0000000023071CD0

l23071C70:
	sw	a5,s3,+0000000C

l23071C74:
	beq	s11,zero,0000000023071C90

l23071C78:
	lhu	a6,s0,+00000018
	lhu	a5,s0,+00000016
	c.lw	s0,36(a2)
	c.lw	s0,80(a1)
	addi	a4,s0,+00000004
	c.mv	a3,s0
	c.mv	a0,s0
	jal	ra,00000000230741D0

l23071C90:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	lw	s11,s0,+0000000C
	c.swsp	a5,00000084
	jal	ra,0000000023070C76
	sb	zero,s7,+0000090C
	c.beqz	s1,0000000023071CB4

l23071CA4:
	c.lwsp	a2,000000E4
	c.li	a1,FFFFFFF3
	c.mv	a0,a5
	c.jalr	s1
	lbu	a5,s7,-000006F4
	bne	a5,zero,00000000230719A6

l23071CB4:
	c.mv	s0,s3
	c.j	00000000230719FA

l23071CB8:
	c.li	a4,00000005
	beq	a5,a4,0000000023071CC4

l23071CBE:
	c.li	a4,00000008
	bne	a5,a4,0000000023071B1A

l23071CC4:
	c.lw	s0,32(a4)
	lw	a5,s2,-00000704
	c.sub	a5,a4
	c.li	a4,0000000A
	c.j	0000000023071C5C

l23071CD0:
	sw	a5,s6,+00000904
	c.j	0000000023071C74

l23071CD6:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	lbu	a5,s7,-000006F4
	bne	a5,zero,00000000230719A6

l23071CE4:
	bne	a0,zero,00000000230719FA

l23071CE8:
	c.j	0000000023071B48

l23071CEA:
	lw	a5,s2,-00000704
	c.lw	s1,32(a4)
	c.sub	a5,a4
	bgeu	s4,a5,0000000023071D06

l23071CF6:
	c.mv	a0,s1
	jal	ra,00000000230711A8
	c.lw	s1,12(a5)
	c.bnez	s0,0000000023071D0C

l23071D00:
	sw	a5,s3,+000008F8
	c.j	0000000023071D0E

l23071D06:
	c.mv	s0,s1
	c.lw	s1,12(s1)
	c.j	00000000230719C8

l23071D0C:
	c.sw	s0,12(a5)

l23071D0E:
	lw	s5,s1,+0000000C
	c.mv	a0,s1
	jal	ra,0000000023070C76
	c.mv	s1,s5
	c.j	00000000230719C8

;; tcp_tmr: 23071D1C
;;   Called from:
;;     23074A48 (in tcpip_tcp_timer)
tcp_tmr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023071848
	lui	a4,0004200F
	addi	a4,a4,+00000660
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.andi	a5,00000001
	c.beqz	a5,0000000023071D46

l23071D3E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023071952

l23071D46:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; tcp_get_next_optbyte: 23071D4C
;;   Called from:
;;     23071ECA (in tcp_parseopt.isra.0.part.1)
;;     23071EDE (in tcp_parseopt.isra.0.part.1)
;;     23071EF0 (in tcp_parseopt.isra.0.part.1)
;;     23071EFC (in tcp_parseopt.isra.0.part.1)
;;     23071F1C (in tcp_parseopt.isra.0.part.1)
tcp_get_next_optbyte proc
	lui	a4,0004200F
	addi	a4,a4,+00000678
	lhu	a5,a4,+00000000
	addi	a3,a5,+00000001
	sh	a3,a4,+00000000
	lui	a4,0004200F
	lw	a4,a4,+00000684
	c.beqz	a4,0000000023071D76

l23071D6A:
	lui	a3,0004200F
	lhu	a3,a3,+00000680
	bgeu	a5,a3,0000000023071D86

l23071D76:
	lui	a4,0004200F
	lw	a4,a4,+0000067C
	c.add	a5,a4
	lbu	a0,a5,+00000014
	c.jr	ra

l23071D86:
	c.sub	a5,a3
	andi	a5,a5,+000000FF
	c.add	a5,a4
	lbu	a0,a5,+00000000
	c.jr	ra

;; tcp_oos_insert_segment: 23071D94
;;   Called from:
;;     2307280C (in tcp_receive)
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
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.bnez	a0,0000000023071E1E

l23071DBA:
	lui	s3,0004200F

l23071DBE:
	lw	a4,s2,+00000010
	lw	a2,s3,+00000674
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
	bge	a3,zero,0000000023071E28

l23071DF6:
	c.sub	a5,a1
	bge	zero,a5,0000000023071E0C

l23071DFC:
	c.sub	a1,a2
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,0000000023070384

l23071E0C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23071E1E:
	c.mv	a0,s2
	jal	ra,0000000023070EFE

l23071E24:
	c.li	s2,00000000
	c.j	0000000023071E0C

l23071E28:
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,0000000023071E62

l23071E3C:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002306BC12
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D

l23071E62:
	lw	s0,s2,+00000000
	c.mv	a0,s2
	jal	ra,0000000023070EDA
	c.beqz	s0,0000000023071E24

l23071E6E:
	c.mv	s2,s0
	c.j	0000000023071DBE

;; tcp_parseopt.isra.0.part.1: 23071E72
;;   Called from:
;;     23073072 (in tcp_input)
;;     23073186 (in tcp_input)
tcp_parseopt.isra.0.part.1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200F
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	sh	zero,s1,+00000678
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a0
	addi	s1,s1,+00000678
	lui	s2,0004200F
	c.li	s4,00000001
	c.li	s5,00000001
	c.li	s6,00000002
	c.li	s7,00000004
	addi	s8,zero,+000002AF

l23071EA6:
	lhu	s0,s2,+00000688
	lhu	a5,s1,+00000000
	bltu	a5,s0,0000000023071ECA

l23071EB2:
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

l23071ECA:
	jal	ra,0000000023071D4C
	beq	a0,s4,0000000023071EA6

l23071ED2:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	c.beqz	a5,0000000023071EB2

l23071EDA:
	bne	a0,s6,0000000023071F1C

l23071EDE:
	jal	ra,0000000023071D4C
	bne	a0,s7,0000000023071EB2

l23071EE6:
	lhu	a5,s1,+00000000
	c.addi	a5,00000001
	bge	a5,s0,0000000023071EB2

l23071EF0:
	jal	ra,0000000023071D4C
	c.slli	a0,08
	slli	s0,a0,00000010
	c.srli	s0,00000010
	jal	ra,0000000023071D4C
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	addi	a5,a0,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s8,a5,0000000023071F16

l23071F12:
	addi	a0,zero,+000002B0

l23071F16:
	sh	a0,s3,+00000000
	c.j	0000000023071EA6

l23071F1C:
	jal	ra,0000000023071D4C
	bgeu	s5,a0,0000000023071EB2

l23071F24:
	lhu	a5,s1,+00000000
	c.addi	a5,FFFFFFFE
	c.add	a5,a0
	sh	a5,s1,+00000000
	c.j	0000000023071EA6

;; tcp_input_delayed_close: 23071F32
;;   Called from:
;;     23073548 (in tcp_input)
;;     230735B2 (in tcp_input)
tcp_input_delayed_close proc
	lui	a5,0004200F
	lbu	a5,a5,+00000670
	c.andi	a5,00000010
	c.beqz	a5,0000000023071F78

l23071F3E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000010
	c.bnez	a5,0000000023071F5A

l23071F4E:
	lw	a5,a0,+00000090
	c.beqz	a5,0000000023071F5A

l23071F54:
	c.lw	a0,16(a0)
	c.li	a1,FFFFFFF1
	c.jalr	a5

l23071F5A:
	lui	a0,00042027
	c.mv	a1,s0
	addi	a0,a0,-000006FC
	jal	ra,0000000023071200
	c.mv	a0,s0
	jal	ra,0000000023070C76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23071F78:
	c.li	a0,00000000
	c.jr	ra

;; tcp_free_acked_segments.isra.3: 23071F7C
;;   Called from:
;;     230724AA (in tcp_receive)
;;     230724B4 (in tcp_receive)
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
	lui	s3,0004200F
	lui	s4,0004200F

l23071F98:
	c.beqz	s0,0000000023071FE8

l23071F9A:
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
	jal	ra,000000002306BC20
	c.lw	s0,16(a5)
	c.mv	s5,a0
	lhu	s1,s0,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lw	a5,s3,+00000664
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.sub	s1,a5
	c.add	s1,s5
	c.add	s1,a0
	bge	zero,s1,0000000023071FFC

l23071FE8:
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

l23071FFC:
	c.lw	s0,4(a0)
	c.lw	s0,0(s1)
	jal	ra,0000000023070440
	lhu	a5,s2,+00000000
	addi	a4,s4,+0000066A
	lhu	a3,a4,+00000000
	sub	a0,a5,a0
	sh	a0,s2,+00000000
	lhu	a5,s0,+00000008
	c.mv	a0,s0
	c.mv	s0,s1
	c.add	a5,a3
	sh	a5,a4,+00000000
	jal	ra,0000000023070EDA
	c.j	0000000023071F98

;; tcp_receive: 2307202C
;;   Called from:
;;     23073332 (in tcp_input)
;;     230733EA (in tcp_input)
;;     230733F2 (in tcp_input)
;;     23073498 (in tcp_input)
;;     230734D0 (in tcp_input)
;;     2307350A (in tcp_input)
tcp_receive proc
	lui	a5,0004200F
	lbu	a5,a5,+00000668
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lui	s3,0004200F
	lui	s4,0004200F
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.andi	a5,00000010
	c.mv	s0,a0
	addi	s3,s3,+00000674
	addi	s4,s4,+0000068A
	beq	a5,zero,00000000230721B6

l23072060:
	lw	a1,s3,+00000000
	c.lw	a0,84(a5)
	lui	s1,0004200F
	lbu	a6,a0,+00000014
	lhu	a3,a0,+00000060
	c.lw	a0,88(a2)
	sub	a0,a5,a1
	lw	a4,s1,+00000664
	addi	s1,s1,+00000664
	blt	a0,zero,00000000230720AE

l23072084:
	bne	a5,a1,0000000023072090

l23072088:
	sub	a5,a2,a4
	blt	a5,zero,00000000230720AE

l23072090:
	bne	a2,a4,00000000230720D8

l23072094:
	lui	a5,0004200F
	lw	a0,a5,+0000067C
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	c.slli	a5,08
	or	a5,a5,a7
	bgeu	a3,a5,00000000230720D8

l230720AE:
	lui	a5,0004200F
	lw	a0,a5,+0000067C
	lbu	a5,a0,+0000000F
	lbu	a7,a0,+0000000E
	lhu	a0,s0,+00000062
	c.slli	a5,08
	or	a5,a5,a7
	sh	a5,s0,+00000060
	bgeu	a0,a5,00000000230720D4

l230720D0:
	sh	a5,s0,+00000062

l230720D4:
	c.sw	s0,84(a1)
	c.sw	s0,88(a4)

l230720D8:
	c.lw	s0,68(a1)
	sub	a5,a4,a1
	blt	zero,a5,0000000023072400

l230720E2:
	lhu	a5,s4,+00000000
	bne	a5,zero,00000000230723FA

l230720EA:
	lhu	a5,s0,+00000060
	c.lw	s0,88(a0)
	c.add	a3,a2
	c.add	a5,a0
	bne	a5,a3,00000000230723FA

l230720F8:
	lh	a5,s0,+00000030
	blt	a5,zero,00000000230723FA

l23072100:
	bne	a1,a4,00000000230723FA

l23072104:
	lbu	a5,s0,+00000043
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023072116

l23072110:
	c.addi	a5,00000001
	sb	a5,s0,+00000043

l23072116:
	lbu	a4,s0,+00000043
	c.li	a5,00000003
	bgeu	a5,a4,000000002307213C

l23072120:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000032
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a4,0000000023072136

l23072132:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l23072136:
	sh	a5,s0,+00000048
	c.j	0000000023072140

l2307213C:
	bne	a4,a5,0000000023072146

l23072140:
	c.mv	a0,s0
	jal	ra,0000000023074164

l23072146:
	c.lw	s0,52(a2)
	c.beqz	a2,00000000230721B6

l2307214A:
	c.lw	s0,56(a5)
	c.lw	s1,0(a4)
	c.sub	a5,a4
	bge	a5,zero,00000000230721B6

l23072154:
	lh	a3,s0,+0000003C
	lui	a5,00042027
	lhu	a4,a5,-00000704
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
	bge	a0,zero,0000000023072194

l2307218A:
	c.sub	a2,a4
	c.add	a2,a1
	slli	a0,a2,00000010
	c.srai	a0,00000010

l23072194:
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

l230721B6:
	lhu	a2,s4,+00000000
	c.lw	s0,36(a3)
	lw	a5,s3,+00000000
	beq	a2,zero,00000000230729EA

l230721C4:
	lbu	a1,s0,+00000014
	c.li	a4,00000006
	bltu	a4,a1,00000000230729EA

l230721CE:
	sub	a1,a3,a5
	addi	a4,a1,-00000001
	blt	a4,zero,000000002307256A

l230721DA:
	c.li	a4,00000001
	c.sub	a4,a5
	c.sub	a4,a2
	c.add	a4,a3
	blt	zero,a4,000000002307256A

l230721E6:
	lui	a4,0004201B
	addi	a5,a4,+0000026C
	lhu	a3,a5,+00000008
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a5,4(a0)
	c.sub	a3,a1
	sh	a3,a5,+00000008
	lhu	a5,a0,+00000008
	addi	s1,a4,+0000026C
	c.sub	a5,a1
	c.slli	a5,10
	c.srli	a5,00000010

l2307220C:
	lhu	a4,a0,+0000000A
	bltu	a4,a1,0000000023072558

l23072214:
	jal	ra,0000000023070142
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

l2307223A:
	lw	a5,s3,+00000000
	c.lw	s0,36(a4)
	sub	a3,a5,a4
	blt	a3,zero,00000000230727A6

l23072248:
	lhu	a2,s0,+00000028
	addi	a0,a5,+00000001
	sub	a3,a0,a4
	c.sub	a3,a2
	blt	zero,a3,00000000230727A6

l2307225A:
	bne	a5,a4,000000002307278E

l2307225E:
	lui	s1,0004201B
	addi	a5,s1,+0000026C
	lhu	s2,a5,+00000008
	c.lw	a5,16(a5)
	addi	s1,s1,+0000026C
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.slli	a0,10
	lhu	a5,s0,+00000028
	c.srli	a0,00000010
	sh	a0,s4,+00000000
	bgeu	a5,a0,000000002307233E

l23072298:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,00000000230722EA

l230722AE:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002306BC12
	andi	a0,a0,+0000003E
	jal	ra,000000002306BC12
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

l230722EA:
	lhu	a5,s0,+00000028
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000002
	c.beqz	a0,0000000023072312

l23072308:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l23072312:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,0000000023070384
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l2307233E:
	c.lw	s0,116(a5)
	beq	a5,zero,000000002307258A

l23072344:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	bne	a0,zero,0000000023072586

l2307235C:
	lw	s5,s0,+00000074

l23072360:
	lw	a1,s3,+00000000
	lhu	a4,s4,+00000000
	c.add	a4,a1
	beq	s5,zero,00000000230723F4

l2307236E:
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
	bge	a2,zero,00000000230725F2

l2307239C:
	c.sub	a4,a5
	bge	zero,a4,00000000230723F4

l230723A2:
	c.sub	a5,a1
	sh	a5,s1,+00000008
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000002
	c.beqz	a0,00000000230723C8

l230723BE:
	lhu	a5,s1,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s1,+00000008

l230723C8:
	lhu	a1,s1,+00000008
	c.lw	s1,4(a0)
	jal	ra,0000000023070384
	c.lw	s1,16(a5)
	lhu	s2,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l230723F4:
	sw	s5,s0,+00000074
	c.j	000000002307258A

l230723FA:
	sb	zero,s0,+00000043
	c.j	0000000023072146

l23072400:
	c.lw	s0,80(a3)
	sub	a3,a4,a3
	blt	zero,a3,0000000023072550

l2307240A:
	lhu	a3,s0,+0000001A
	andi	a2,a3,+00000004
	c.beqz	a2,0000000023072426

l23072414:
	c.andi	a3,FFFFFFFB
	sh	a3,s0,+0000001A
	lhu	a3,s0,+0000004A
	sh	zero,s0,+0000006A
	sh	a3,s0,+00000048

l23072426:
	lh	a3,s0,+0000003C
	lhu	a2,s0,+0000003E
	c.sw	s0,68(a4)
	c.srai	a3,00000003
	c.add	a3,a2
	sh	a3,s0,+00000040
	sh	zero,s0,+00000042
	c.li	a4,00000003
	bgeu	a4,a6,00000000230724A2

l23072442:
	lhu	a3,s0,+00000048
	lhu	a4,s0,+0000004A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a4,000000002307248C

l23072452:
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
	bgeu	a5,a4,0000000023072478

l23072476:
	c.mv	a2,a5

l23072478:
	add	a5,a3,a2

l2307247C:
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,a3,0000000023072486

l23072484:
	c.li	a5,FFFFFFFF

l23072486:
	sh	a5,s0,+00000048
	c.j	00000000230724A2

l2307248C:
	lhu	a4,s0,+0000006A
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,a4,0000000023072506

l2307249A:
	bgeu	a5,a3,000000002307250A

l2307249E:
	sh	a5,s0,+0000006A

l230724A2:
	c.lw	s0,112(a1)
	addi	s2,s0,+00000066
	c.mv	a0,s2
	jal	ra,0000000023071F7C
	c.lw	s0,108(a1)
	c.sw	s0,112(a0)
	c.mv	a0,s2
	jal	ra,0000000023071F7C
	c.lw	s0,112(a5)
	c.sw	s0,108(a0)
	sb	zero,s0,+0000001C
	sltiu	a4,a5,+00000001
	sub	a4,zero,a4
	sh	a4,s0,+00000030
	c.bnez	a0,00000000230724D2

l230724CE:
	sh	zero,s0,+00000068

l230724D2:
	lui	a3,0004200F
	lhu	a4,s0,+00000064
	lhu	a3,a3,+0000066A
	c.add	a4,a3
	sh	a4,s0,+00000064
	lhu	a4,s0,+0000001A
	slli	a3,a4,00000014
	bge	a3,zero,0000000023072146

l230724F0:
	c.bnez	a5,0000000023072548

l230724F2:
	c.bnez	a0,0000000023072518

l230724F4:
	lhu	a5,s0,+0000001A
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000001A
	c.j	0000000023072146

l23072506:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF

l2307250A:
	c.sub	a5,a3
	sh	a5,s0,+0000006A
	lhu	a5,s0,+00000032
	c.add	a5,a3
	c.j	000000002307247C

l23072518:
	lw	s2,s0,+0000004C
	c.lw	a0,16(a4)

l2307251E:
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
	jal	ra,000000002306BC20
	sub	a0,s2,a0
	blt	zero,a0,0000000023072146

l23072546:
	c.j	00000000230724F4

l23072548:
	lw	s2,s0,+0000004C
	c.lw	a5,16(a4)
	c.j	000000002307251E

l23072550:
	c.mv	a0,s0
	jal	ra,000000002307422A
	c.j	0000000023072146

l23072558:
	c.sub	a1,a4
	c.slli	a1,10
	sh	a5,a0,+00000008
	sh	zero,a0,+0000000A
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	000000002307220C

l2307256A:
	c.sub	a5,a3
	bge	a5,zero,000000002307223A

l23072570:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.j	000000002307223A

l2307257E:
	c.lw	a0,0(a5)
	c.sw	s0,116(a5)
	jal	ra,0000000023070EDA

l23072586:
	c.lw	s0,116(a0)
	c.bnez	a0,000000002307257E

l2307258A:
	lhu	a3,s4,+00000000
	lhu	a5,s0,+00000028
	lw	a4,s3,+00000000
	c.mv	a0,s0
	c.sub	a5,a3
	c.add	a4,a3
	c.sw	s0,36(a4)
	sh	a5,s0,+00000028
	jal	ra,0000000023070E3A
	c.lw	s1,4(a5)
	lhu	a4,a5,+00000008
	c.beqz	a4,00000000230725BA

l230725AE:
	lui	a4,0004200F
	sw	a5,a4,+0000066C
	sw	zero,s1,+00000004

l230725BA:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,00000000230725E4

l230725D0:
	lui	a5,0004200F
	addi	a5,a5,+00000670
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000020
	sb	a4,a5,+00000000

l230725E4:
	lui	s2,0004200F
	lui	s4,0004200F
	c.li	s5,00000004
	c.li	s6,00000007
	c.j	0000000023072732

l230725F2:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,0000000023072668

l23072606:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000002
	c.bnez	a0,0000000023072668

l2307261C:
	c.lw	s1,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.li	a0,00000001
	jal	ra,000000002306BC12
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
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s2,a0
	sh	s2,s4,+00000000

l23072668:
	lw	s2,s5,+00000000
	c.mv	a0,s5
	jal	ra,0000000023070EDA
	c.mv	s5,s2
	c.j	0000000023072360

l23072676:
	sw	a5,s3,+00000000
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	lhu	s7,s1,+00000008
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
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
	jal	ra,000000002306BC12
	c.lw	s1,16(a5)
	lhu	s7,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lhu	a5,s0,+00000028
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s7
	sub	a0,a5,a0
	sh	a0,s0,+00000028
	c.mv	a0,s0
	jal	ra,0000000023070E3A
	c.lw	s1,4(a1)
	lhu	a5,a1,+00000008
	c.beqz	a5,00000000230726F6

l230726E6:
	addi	a5,s2,+0000066C
	c.lw	a5,0(a0)
	c.beqz	a0,000000002307276C

l230726EE:
	jal	ra,0000000023070476

l230726F2:
	sw	zero,s1,+00000004

l230726F6:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,0000000023072728

l2307270C:
	addi	a4,s4,+00000670
	lbu	a5,a4,+00000000
	ori	a5,a5,+00000020
	sb	a5,a4,+00000000
	lbu	a5,s0,+00000014
	bne	a5,s5,0000000023072728

l23072724:
	sb	s6,s0,+00000014

l23072728:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	c.sw	s0,116(a5)
	jal	ra,0000000023070EDA

l23072732:
	c.lw	s0,116(s1)
	c.beqz	s1,000000002307275A

l23072736:
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
	beq	a5,a3,0000000023072676

l2307275A:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023072770

l23072764:
	c.andi	a5,FFFFFFFE

l23072766:
	ori	a5,a5,+00000002
	c.j	0000000023072774

l2307276C:
	c.sw	a5,0(a1)
	c.j	00000000230726F2

l23072770:
	ori	a5,a5,+00000001

l23072774:
	sh	a5,s0,+0000001A

l23072778:
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

l2307278E:
	c.lw	s0,116(s1)
	c.li	s2,00000000
	addi	a6,a5,-00000001
	c.bnez	s1,00000000230727C2

l23072798:
	lui	a0,0004201B
	addi	a0,a0,+0000026C
	jal	ra,0000000023070F22
	c.sw	s0,116(a0)

l230727A6:
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
	jal	zero,000000002307422A

l230727C0:
	c.mv	s1,a3

l230727C2:
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
	bne	a5,a4,0000000023072816

l230727E4:
	lui	a0,0004201B
	addi	a5,a0,+0000026C
	lhu	a4,a5,+00000008
	lhu	a5,s1,+00000008
	bgeu	a5,a4,00000000230727A6

l230727F8:
	addi	a0,a0,+0000026C
	jal	ra,0000000023070F22
	c.beqz	a0,00000000230727A6

l23072802:
	beq	s2,zero,0000000023072812

l23072806:
	sw	a0,s2,+00000000

l2307280A:
	c.mv	a1,s1

l2307280C:
	jal	ra,0000000023071D94
	c.j	00000000230727A6

l23072812:
	c.sw	s0,116(a0)
	c.j	000000002307280A

l23072816:
	bne	s2,zero,0000000023072834

l2307281A:
	sub	a3,a5,a4
	bge	a3,zero,00000000230728C0

l23072822:
	lui	a0,0004201B
	addi	a0,a0,+0000026C
	jal	ra,0000000023070F22
	c.beqz	a0,00000000230727A6

l23072830:
	c.sw	s0,116(a0)
	c.j	000000002307280A

l23072834:
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
	blt	a3,zero,00000000230728C0

l2307285C:
	sub	a3,a0,a4
	blt	zero,a3,00000000230728C0

l23072864:
	lui	a0,0004201B
	addi	a0,a0,+0000026C
	jal	ra,0000000023070F22
	c.mv	s4,a0
	c.beqz	a0,00000000230727A6

l23072874:
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
	bge	zero,a4,00000000230728B6

l230728A4:
	c.sub	a1,a5
	c.slli	a1,10
	lw	a0,s2,+00000004
	c.srli	a1,00000010
	sh	a1,s2,+00000008
	jal	ra,0000000023070384

l230728B6:
	sw	s4,s2,+00000000
	c.mv	a1,s1
	c.mv	a0,s4
	c.j	000000002307280C

l230728C0:
	c.lw	s1,0(a3)
	c.mv	s2,s1
	bne	a3,zero,00000000230727C0

l230728C8:
	c.sub	a5,a4
	bge	zero,a5,00000000230727A6

l230728CE:
	lbu	a5,a2,+0000000D
	lbu	a0,a2,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	bne	a0,zero,00000000230727A6

l230728E4:
	lui	a0,0004201B
	addi	a0,a0,+0000026C
	jal	ra,0000000023070F22
	c.sw	s1,0(a0)
	beq	a0,zero,00000000230727A6

l230728F6:
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
	bge	zero,a4,0000000023072934

l23072924:
	c.sub	a1,a5
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,0000000023070384

l23072934:
	lw	a4,s3,+00000000
	lhu	a5,s4,+00000000
	c.add	a5,a4
	c.lw	s0,36(a4)
	c.sub	a5,a4
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	bge	zero,a5,00000000230727A6

l2307294C:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,00000000230729A4

l23072964:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002306BC12
	andi	a0,a0,+0000003E
	jal	ra,000000002306BC12
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

l230729A4:
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
	jal	ra,0000000023070384
	c.lw	s1,0(a5)
	lhu	s1,a5,+00000008
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s1,a0
	sh	s1,s4,+00000000
	c.j	00000000230727A6

l230729EA:
	sub	a4,a5,a3
	blt	a4,zero,0000000023072A00

l230729F2:
	lhu	a4,s0,+00000028
	c.addi	a5,00000001
	c.sub	a5,a3
	c.sub	a5,a4
	bge	zero,a5,0000000023072778

l23072A00:
	lhu	a5,s0,+0000001A
	c.j	0000000023072766

;; tcp_input: 23072A06
;;   Called from:
;;     2306F08E (in ip4_input)
tcp_input proc
	c.addi16sp	FFFFFFB0
	lui	a7,00042026
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
	addi	a4,a7,+000007F0
	lhu	a5,a4,+00000096
	lui	s2,0004200F
	c.li	s0,00000013
	c.addi	a5,00000001
	sh	a5,a4,+00000096
	c.lw	a0,4(a5)
	c.mv	s1,a0
	addi	s10,a7,+000007F0
	sw	a5,s2,+0000067C
	lhu	a5,a0,+0000000A
	bltu	s0,a5,0000000023072A5A

l23072A4E:
	lhu	a5,s10,+0000009E
	c.addi	a5,00000001
	sh	a5,s10,+0000009E
	c.j	0000000023072A8E

l23072A5A:
	lui	s4,00042027
	addi	s3,s4,-000006E8
	lw	a1,s3,+00000000
	lw	a0,s3,+00000014
	addi	s4,s4,-000006E8
	jal	ra,000000002306F33A
	c.bnez	a0,0000000023072A84

l23072A74:
	lw	a5,s3,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023072A9A

l23072A84:
	lhu	a5,s10,+000000A4
	c.addi	a5,00000001
	sh	a5,s10,+000000A4

l23072A8E:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A
	c.j	0000000023072ED2

l23072A9A:
	lhu	a2,s1,+00000008
	lui	s5,00042027
	lui	s6,00042027
	addi	a4,s5,-000006D4
	addi	a3,s6,-000006D8
	c.li	a1,00000006
	c.mv	a0,s1
	jal	ra,000000002306C694
	c.swsp	s5,00000080
	c.beqz	a0,0000000023072AC6

l23072ABA:
	lhu	a5,s10,+0000009C
	c.addi	a5,00000001
	sh	a5,s10,+0000009C
	c.j	0000000023072A8E

l23072AC6:
	addi	s2,s2,+0000067C
	lw	a5,s2,+00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	srli	a1,a0,0000000A
	andi	a1,a1,+000000FC
	bgeu	s0,a1,0000000023072A4E

l23072AEA:
	lhu	a5,s1,+00000008
	slli	a4,a1,00000010
	c.srli	a4,00000010
	bltu	a5,a4,0000000023072A4E

l23072AF8:
	addi	a5,a4,-00000014
	lui	a2,0004200F
	c.slli	a5,10
	lui	s8,0004200F
	lhu	a3,s1,+0000000A
	addi	s7,a2,+00000688
	c.srli	a5,00000010
	addi	s8,s8,+00000684
	addi	a2,a2,+00000688
	lui	s3,0004200F
	sh	a5,s7,+00000000
	sw	zero,s8,+00000000
	c.swsp	a2,00000004
	addi	s3,s3,+00000680
	bltu	a3,a4,0000000023072C9C

l23072B2E:
	c.mv	a0,s1
	sh	a5,s3,+00000000
	jal	ra,0000000023070142

l23072B38:
	lw	s0,s2,+00000000
	lui	s11,0004200F
	lui	s5,0004200F
	lbu	a5,s0,+00000001
	lbu	a0,s0,+00000000
	lui	s7,0004200F
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	lw	s0,s2,+00000000
	lbu	a5,s0,+00000003
	lbu	a0,s0,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
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
	jal	ra,000000002306BC20
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	sb	a5,s0,+00000006
	srli	a5,a0,00000018
	sb	a0,s0,+00000004
	sb	a5,s0,+00000007
	lw	s0,s2,+00000000
	sw	a0,s11,+00000674
	addi	s11,s11,+00000674
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
	jal	ra,000000002306BC20
	srli	a5,a0,00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	sb	a5,s0,+0000000A
	srli	a5,a0,00000018
	sb	a0,s0,+00000008
	sb	a5,s0,+0000000B
	lw	s0,s2,+00000000
	sw	a0,s5,+00000664
	addi	s5,s5,+00000664
	lbu	a5,s0,+0000000F
	lbu	a0,s0,+0000000E
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lw	a5,s2,+00000000
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	andi	a4,a0,+000000FF
	andi	a5,a4,+0000003F
	sb	a5,s7,+00000668
	lui	a2,0004200F
	andi	a5,a4,+00000003
	lhu	a3,s1,+00000008
	addi	s7,s7,+00000668
	addi	a2,a2,+0000068A
	c.beqz	a5,0000000023072CE8

l23072C64:
	addi	a5,a3,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a2,+00000000
	bltu	a5,a3,0000000023072A4E

l23072C74:
	lui	s3,00042027
	lw	a6,s3,-000006FC
	lw	t4,s4,+00000004
	lw	a3,s2,+00000000
	lw	t6,s4,+00000010
	lw	t5,s4,+00000014
	c.mv	s0,a6
	c.li	a0,00000000

l23072C90:
	c.bnez	s0,0000000023072CEE

l23072C92:
	lui	a5,00042027
	lw	a0,a5,-00000708
	c.j	0000000023072EF6

l23072C9C:
	c.li	a1,00000014
	c.mv	a0,s1
	jal	ra,0000000023070142
	lhu	s0,s1,+0000000A
	c.mv	a0,s1
	lhu	s7,s7,+00000000
	c.mv	a1,s0
	sh	s0,s3,+00000000
	jal	ra,0000000023070142
	c.lw	s1,0(a0)
	sub	s3,s7,s0
	c.slli	s3,10
	lhu	a5,a0,+0000000A
	srli	s3,s3,00000010
	bltu	a5,s3,0000000023072A4E

l23072CCC:
	c.lw	a0,4(a5)
	c.mv	a1,s3
	sw	a5,s8,+00000000
	jal	ra,0000000023070142
	lhu	a5,s1,+00000008
	c.add	s0,a5
	sub	s0,s0,s7
	sh	s0,s1,+00000008
	c.j	0000000023072B38

l23072CE8:
	sh	a3,a2,+00000000
	c.j	0000000023072C74

l23072CEE:
	lbu	t3,s0,+00000008
	beq	t3,zero,0000000023072D04

l23072CF6:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	t3,a5,0000000023072E1C

l23072D04:
	lbu	a5,a3,+00000001
	lbu	t0,a3,+00000000
	lhu	t3,s0,+00000018
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,0000000023072E1C

l23072D1A:
	lbu	a5,a3,+00000003
	lbu	t0,a3,+00000002
	lhu	t3,s0,+00000016
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,0000000023072E1C

l23072D30:
	c.lw	s0,4(a5)
	bne	a5,t6,0000000023072E1C

l23072D36:
	c.lw	s0,0(a5)
	bne	a5,t5,0000000023072E1C

l23072D3C:
	c.beqz	a0,0000000023072E10

l23072D3E:
	c.lw	s0,12(a5)
	sw	s0,s3,+00000904
	c.sw	a0,12(a5)
	sw	a6,s0,+0000000C

l23072D4A:
	lhu	a0,s1,+00000008
	lui	a1,0004201B
	addi	a5,a1,+0000026C
	lui	s9,0004200F
	lui	s4,0004200F
	lui	s8,0004200F
	sw	zero,s9,+0000066C
	sb	zero,s4,+00000670
	sh	zero,s8,+0000066A
	sw	zero,a5,+00000000
	sh	a0,a5,+00000008
	c.sw	a5,4(s1)
	c.sw	a5,16(a3)
	c.andi	a4,00000008
	c.swsp	a5,00000084
	addi	s4,s4,+00000670
	addi	s8,s8,+0000066A
	addi	s9,s9,+0000066C
	c.beqz	a4,0000000023072D98

l23072D8C:
	lbu	a5,s1,+0000000D
	ori	a5,a5,+00000001
	sb	a5,s1,+0000000D

l23072D98:
	c.lw	s0,120(a5)
	lui	s1,00042027
	beq	a5,zero,00000000230730C4

l23072DA2:
	c.mv	a0,s0
	jal	ra,00000000230717BC
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023072DC4

l23072DAE:
	c.lw	s0,120(a5)
	lui	a4,0004200F
	addi	a2,a4,+0000068A
	beq	a5,zero,00000000230730C4

l23072DBC:
	lhu	a5,a2,+00000000
	beq	a5,zero,00000000230730C4

l23072DC4:
	lhu	a5,s0,+0000002A
	c.bnez	a5,0000000023072DD0

l23072DCA:
	c.mv	a0,s0
	jal	ra,000000002307422A

l23072DD0:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A

l23072DDA:
	c.lwsp	a2,000000E4
	sw	zero,s1,+00000910
	sw	zero,s9,+00000000
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023072DF2

l23072DE8:
	jal	ra,00000000230701A4
	c.lwsp	a2,000000E4
	sw	zero,a5,+00000004

l23072DF2:
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

l23072E10:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	0000000023072D4A

l23072E1C:
	c.mv	a0,s0
	c.lw	s0,12(s0)
	c.j	0000000023072C90

l23072E22:
	lbu	a6,a0,+00000008
	beq	a6,zero,0000000023072E38

l23072E2A:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a6,a5,0000000023072EF4

l23072E38:
	lbu	a5,a3,+00000001
	lbu	a6,a3,+00000000
	c.slli	a5,08
	or	a5,a5,a6
	lhu	a6,a0,+00000018
	bne	a6,a5,0000000023072EF4

l23072E4E:
	lbu	t3,a3,+00000003
	lbu	a5,a3,+00000002
	c.slli	t3,08
	or	t3,t3,a5
	lhu	a5,a0,+00000016
	bne	a5,t3,0000000023072EF4

l23072E64:
	lw	t3,a0,+00000004
	bne	t6,t3,0000000023072EF4

l23072E6C:
	lw	t3,a0,+00000000
	bne	t5,t3,0000000023072EF4

l23072E74:
	andi	a3,a4,+00000004
	c.bnez	a3,0000000023072ED2

l23072E7A:
	andi	a3,a4,+00000002
	lhu	a2,a2,+00000000
	c.beqz	a3,0000000023072EB2

l23072E84:
	lw	a7,s11,+00000000
	c.lw	a0,36(a4)
	sub	a4,a7,a4
	blt	a4,zero,0000000023072EC0

l23072E92:
	lhu	a3,a0,+00000028
	c.sub	a4,a3
	blt	zero,a4,0000000023072EC0

l23072E9C:
	c.lwsp	tp,000000A4
	lw	a1,s5,+00000000
	addi	a4,s6,-000006D8
	addi	a3,a3,-000006D4
	c.add	a2,a7

l23072EAC:
	jal	ra,00000000230741D0
	c.j	0000000023072ED2

l23072EB2:
	c.andi	a4,00000001
	c.beqz	a4,0000000023072EC0

l23072EB6:
	lui	a5,00042027
	lw	a5,a5,-00000704
	c.sw	a0,32(a5)

l23072EC0:
	c.beqz	a2,0000000023072ED2

l23072EC2:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,a0,+0000001A

l23072ECE:
	jal	ra,000000002307427C

l23072ED2:
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
	jal	zero,00000000230701A4

l23072EF4:
	c.lw	a0,12(a0)

l23072EF6:
	c.bnez	a0,0000000023072E22

l23072EF8:
	lui	t3,00042027
	lw	t0,t3,-00000700
	c.li	s7,00000000
	c.li	t6,00000000
	c.mv	a5,t0

l23072F06:
	c.bnez	a5,0000000023072F10

l23072F08:
	beq	s7,zero,00000000230735F8

l23072F0C:
	c.mv	a0,t6
	c.j	0000000023072F54

l23072F10:
	lbu	t2,a5,+00000008
	beq	t2,zero,0000000023072F26

l23072F18:
	lbu	a6,t4,+00000044
	c.addi	a6,00000001
	andi	a6,a6,+000000FF
	bne	t2,a6,0000000023072F4C

l23072F26:
	lbu	a6,a3,+00000003
	lbu	s0,a3,+00000002
	lhu	t2,a5,+00000016
	c.slli	a6,08
	or	a6,a6,s0
	bne	t2,a6,0000000023072F4C

l23072F3C:
	lw	a6,a5,+00000000
	beq	t5,a6,0000000023072F52

l23072F44:
	bne	a6,zero,0000000023072F4C

l23072F48:
	c.mv	s7,a5
	c.mv	t6,a0

l23072F4C:
	c.mv	a0,a5
	c.lw	a5,12(a5)
	c.j	0000000023072F06

l23072F52:
	c.mv	s7,a5

l23072F54:
	c.beqz	a0,0000000023072FAC

l23072F56:
	lw	a5,s7,+0000000C
	sw	s7,t3,+00000900
	c.sw	a0,12(a5)
	sw	t0,s7,+0000000C

l23072F64:
	andi	a5,a4,+00000004
	c.bnez	a5,0000000023072ED2

l23072F6A:
	andi	a5,a4,+00000010
	c.beqz	a5,0000000023072FB8

l23072F70:
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
	addi	a4,s6,-000006D8
	addi	a3,a3,-000006D4
	lw	a1,s5,+00000000
	c.mv	a0,s7
	c.j	0000000023072EAC

l23072FAC:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	0000000023072F64

l23072FB8:
	c.andi	a4,00000002
	c.beqz	a4,0000000023072ED2

l23072FBC:
	lbu	a0,s7,+00000015
	jal	ra,000000002307144E
	c.mv	s0,a0
	c.bnez	a0,0000000023072FE6

l23072FC8:
	lhu	a5,s10,+000000A0
	c.addi	a5,00000001
	sh	a5,s10,+000000A0
	lw	a5,s7,+00000018
	beq	a5,zero,0000000023072ED2

l23072FDA:
	lw	a0,s7,+00000010
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	c.jalr	a5
	c.j	0000000023072ED2

l23072FE6:
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
	jal	ra,0000000023070F86
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
	lw	a5,s3,-000006FC
	sw	s0,s3,+00000904
	c.sw	s0,12(a5)
	jal	ra,0000000023074A0A
	lui	a5,00042027
	c.li	a4,00000001
	sb	a4,a5,+0000090C
	c.lwsp	s0,000000E4
	lhu	a5,a5,+00000000
	c.beqz	a5,0000000023073076

l2307306E:
	addi	a0,s0,+00000032
	jal	ra,0000000023071E72

l23073076:
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
	jal	ra,000000002306ED14
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023070F9E
	sh	a0,s0,+00000032
	c.li	a1,00000012
	c.mv	a0,s0
	jal	ra,0000000023073ED6
	c.beqz	a0,00000000230730C0

l230730B6:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023071264
	c.j	0000000023072ED2

l230730C0:
	c.mv	a0,s0
	c.j	0000000023072ECE

l230730C4:
	lbu	a4,s7,+00000000
	sw	s0,s1,+00000910
	andi	a5,a4,+00000004
	c.beqz	a5,0000000023073144

l230730D2:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	bne	a4,a5,0000000023073124

l230730DC:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,00000000230730FC

l230730E6:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000008
	sb	a5,s4,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFE

l230730F8:
	sh	a5,s0,+0000001A

l230730FC:
	lbu	a5,s4,+00000000
	c.andi	a5,00000008
	beq	a5,zero,0000000023073536

l23073106:
	lw	a5,s0,+00000090
	c.beqz	a5,0000000023073112

l2307310C:
	c.lw	s0,16(a0)
	c.li	a1,FFFFFFF2
	c.jalr	a5

l23073112:
	addi	a0,s3,-000006FC
	c.mv	a1,s0
	jal	ra,0000000023071200
	c.mv	a0,s0
	jal	ra,0000000023070C76
	c.j	0000000023072DDA

l23073124:
	c.lw	s0,36(a4)
	lw	a5,s11,+00000000
	beq	a4,a5,00000000230730E6

l2307312E:
	c.sub	a5,a4
	blt	a5,zero,00000000230730FC

l23073134:
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	blt	zero,a5,00000000230730FC

l2307313E:
	lhu	a5,s0,+0000001A
	c.j	0000000023073160

l23073144:
	andi	s10,a4,+00000002
	lhu	a5,s0,+0000001A
	beq	s10,zero,0000000023073166

l23073150:
	lbu	a3,s0,+00000014
	c.li	a0,00000001
	c.addi	a3,FFFFFFFE
	andi	a3,a3,+000000FF
	bgeu	a0,a3,0000000023073166

l23073160:
	ori	a5,a5,+00000002
	c.j	00000000230730F8

l23073166:
	c.andi	a5,00000010
	c.bnez	a5,0000000023073174

l2307316A:
	lui	a5,00042027
	lw	a5,a5,-00000704
	c.sw	s0,32(a5)

l23073174:
	c.lwsp	s0,000000E4
	sh	zero,s0,+000000A2
	lhu	a5,a5,+00000000
	c.beqz	a5,0000000023073194

l23073180:
	addi	a0,s0,+00000032
	c.swsp	a4,00000004
	jal	ra,0000000023071E72
	c.lwsp	s0,000000C4
	lui	a5,0004200F
	addi	a2,a5,+0000068A

l23073194:
	lbu	a5,s0,+00000014
	c.li	a3,00000007
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a3,a5,00000000230730FC

l230731A4:
	lui	a3,000230C3
	c.slli	a5,02
	addi	a3,a3,+00000774
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.jr	a5

l230731B4:
	andi	a5,a4,+00000012
	c.li	a3,00000012
	bne	a5,a3,0000000023073290

l230731BE:
	c.lw	s0,68(a5)
	lw	a3,s5,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023073290

l230731CA:
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
	jal	ra,000000002306ED14
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023070F9E
	slli	a4,a0,00000001
	sh	a0,s0,+00000032
	slli	a5,a0,00000002
	c.lui	a0,00001000
	addi	a0,a0,+0000011C
	c.mv	a3,a4
	bgeu	a4,a0,000000002307322E

l2307322C:
	c.mv	a3,a0

l2307322E:
	bgeu	a5,a3,0000000023073276

l23073232:
	slli	a0,a5,00000010

l23073236:
	c.srli	a0,00000010

l23073238:
	lhu	a5,s0,+00000066
	sh	a0,s0,+00000048
	c.lw	s0,112(a0)
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000066
	c.bnez	a0,0000000023073280

l2307324A:
	c.lw	s0,108(a0)
	c.lw	a0,0(a5)
	c.sw	s0,108(a5)

l23073250:
	jal	ra,0000000023070EDA
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023073286

l23073258:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030

l2307325E:
	lw	a5,s0,+00000088
	beq	a5,zero,000000002307313E

l23073266:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,000000002307313E

l23073274:
	c.j	0000000023072DDA

l23073276:
	bgeu	a0,a4,0000000023073238

l2307327A:
	slli	a0,a4,00000010
	c.j	0000000023073236

l23073280:
	c.lw	a0,0(a5)
	c.sw	s0,112(a5)
	c.j	0000000023073250

l23073286:
	sh	zero,s0,+00000030
	sb	zero,s0,+00000042
	c.j	000000002307325E

l23073290:
	c.andi	a4,00000010
	beq	a4,zero,00000000230730FC

l23073296:
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
	addi	a4,s6,-000006D8
	c.add	a2,a0
	addi	a3,a3,-000006D4
	c.mv	a0,s0
	jal	ra,00000000230741D0
	lbu	a4,s0,+00000042
	c.li	a5,00000005
	bltu	a5,a4,00000000230730FC

l230732DE:
	sh	zero,s0,+00000030
	c.mv	a0,s0
	jal	ra,00000000230747CA
	c.j	00000000230730FC

l230732EA:
	c.andi	a4,00000010
	c.beqz	a4,00000000230733D0

l230732EE:
	lw	a1,s5,+00000000
	c.lw	s0,68(a4)
	addi	a5,a1,-00000001
	c.sub	a5,a4
	blt	a5,zero,0000000023073394

l230732FE:
	c.lw	s0,80(a5)
	sub	a5,a1,a5
	blt	zero,a5,0000000023073394

l23073308:
	c.li	a5,00000004
	sb	a5,s0,+00000014
	c.lw	s0,124(a5)
	c.bnez	a5,000000002307331A

l23073312:
	c.mv	a0,s0
	jal	ra,0000000023071378
	c.j	0000000023072DDA

l2307331A:
	c.lw	a5,24(a5)
	c.beqz	a5,0000000023073312

l2307331E:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,0000000023073330

l23073328:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023072DDA

l2307332E:
	c.j	0000000023073312

l23073330:
	c.mv	a0,s0
	jal	ra,000000002307202C
	lhu	a5,s8,+00000000
	c.beqz	a5,0000000023073342

l2307333C:
	c.addi	a5,FFFFFFFF
	sh	a5,s8,+00000000

l23073342:
	lhu	a5,s0,+00000032
	slli	a3,a5,00000001
	slli	a4,a5,00000002
	c.lui	a5,00001000
	addi	a5,a5,+0000011C
	c.mv	a2,a3
	bgeu	a3,a5,000000002307335C

l2307335A:
	c.mv	a2,a5

l2307335C:
	bgeu	a4,a2,000000002307338A

l23073360:
	slli	a5,a4,00000010

l23073364:
	c.srli	a5,00000010

l23073366:
	sh	a5,s0,+00000048

l2307336A:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,00000000230730FC

l23073376:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000007

l23073384:
	sb	a5,s0,+00000014
	c.j	00000000230730FC

l2307338A:
	bgeu	a5,a3,0000000023073366

l2307338E:
	slli	a5,a3,00000010
	c.j	0000000023073364

l23073394:
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
	addi	a4,s6,-000006D8
	addi	a3,a3,-000006D4
	c.mv	a0,s0
	jal	ra,00000000230741D0
	c.j	00000000230730FC

l230733D0:
	beq	s10,zero,00000000230730FC

l230733D4:
	c.lw	s0,36(a5)
	lw	a4,s11,+00000000
	c.addi	a5,FFFFFFFF
	bne	a5,a4,00000000230730FC

l230733E0:
	c.mv	a0,s0
	jal	ra,00000000230740A6
	c.j	00000000230730FC

l230733E8:
	c.mv	a0,s0
	jal	ra,000000002307202C
	c.j	000000002307336A

l230733F0:
	c.mv	a0,s0
	jal	ra,000000002307202C
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023073478

l23073400:
	lbu	a4,s7,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,000000002307346C

l2307340C:
	c.lw	s0,80(a3)
	lw	a4,s5,+00000000
	bne	a3,a4,000000002307346C

l23073416:
	c.lw	s0,108(a4)
	c.bnez	a4,000000002307346C

l2307341A:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,00000000230711A8
	lw	a5,s3,-000006FC
	bne	s0,a5,0000000023073446

l23073430:
	c.lw	s0,12(a5)
	sw	a5,s3,+00000904
	c.j	0000000023073448

l23073438:
	c.lw	a5,12(a4)
	bne	s0,a4,0000000023073444

l2307343E:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023073448

l23073444:
	c.mv	a5,a4

l23073446:
	c.bnez	a5,0000000023073438

l23073448:
	lui	a5,00042027
	c.li	a4,00000001
	sb	a4,a5,+0000090C
	c.li	a5,0000000A
	sb	a5,s0,+00000014
	lui	a5,00042027
	lw	a4,a5,-00000708
	sw	s0,a5,+000008F8
	c.sw	s0,12(a4)
	jal	ra,0000000023074A0A
	c.j	00000000230730FC

l2307346C:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000008
	c.j	0000000023073384

l23073478:
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,00000000230730FC

l23073482:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,00000000230730FC

l2307348C:
	c.lw	s0,108(a5)
	bne	a5,zero,00000000230730FC

l23073492:
	c.li	a5,00000006
	c.j	0000000023073384

l23073496:
	c.mv	a0,s0
	jal	ra,000000002307202C
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,00000000230730FC

l230734A8:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	jal	ra,00000000230711A8
	lw	a5,s3,-000006FC
	beq	s0,a5,0000000023073430

l230734C2:
	c.beqz	a5,0000000023073448

l230734C4:
	c.lw	a5,12(a4)
	beq	s0,a4,000000002307343E

l230734CA:
	c.mv	a5,a4
	c.j	00000000230734C2

l230734CE:
	c.mv	a0,s0
	jal	ra,000000002307202C
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,00000000230730FC

l230734DE:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,00000000230730FC

l230734E8:
	c.lw	s0,108(a5)
	bne	a5,zero,00000000230730FC

l230734EE:
	c.mv	a0,s0
	jal	ra,00000000230711A8
	lw	a5,s3,-000006FC
	beq	s0,a5,0000000023073430

l230734FC:
	c.beqz	a5,0000000023073448

l230734FE:
	c.lw	a5,12(a4)
	beq	s0,a4,000000002307343E

l23073504:
	c.mv	a5,a4
	c.j	00000000230734FC

l23073508:
	c.mv	a0,s0
	jal	ra,000000002307202C
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,00000000230730FC

l23073518:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,00000000230730FC

l23073522:
	c.lw	s0,108(a5)
	bne	a5,zero,00000000230730FC

l23073528:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000010
	sb	a5,s4,+00000000
	c.j	00000000230730FC

l23073536:
	lhu	a2,s8,+00000000
	c.beqz	a2,0000000023073546

l2307353C:
	lw	a5,s0,+00000080
	c.bnez	a5,0000000023073566

l23073542:
	sh	zero,s8,+00000000

l23073546:
	c.mv	a0,s0
	jal	ra,0000000023071F32
	bne	a0,zero,0000000023072DDA

l23073550:
	lw	a2,s9,+00000000
	c.beqz	a2,0000000023073592

l23073556:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000010
	c.beqz	a5,0000000023073576

l2307355E:
	c.mv	a0,a2
	jal	ra,00000000230701A4
	c.j	0000000023073312

l23073566:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023073542

l23073572:
	jal	zero,0000000023072DDA

l23073576:
	lw	a5,s0,+00000084
	c.li	a3,00000000
	c.mv	a1,s0
	c.beqz	a5,00000000230735C4

l23073580:
	c.lw	s0,16(a0)
	c.jalr	a5

l23073584:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023072DDA

l2307358A:
	c.beqz	a0,0000000023073592

l2307358C:
	lw	a5,s9,+00000000
	c.sw	s0,120(a5)

l23073592:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230735AC

l2307359C:
	c.lw	s0,120(a5)
	c.beqz	a5,00000000230735CA

l230735A0:
	lbu	a4,a5,+0000000D
	ori	a4,a4,+00000020
	sb	a4,a5,+0000000D

l230735AC:
	c.mv	a0,s0
	sw	zero,s1,+00000910
	jal	ra,0000000023071F32
	bne	a0,zero,0000000023072DDA

l230735BA:
	c.mv	a0,s0
	jal	ra,000000002307427C
	jal	zero,0000000023072DDA

l230735C4:
	jal	ra,0000000023071786
	c.j	0000000023073584

l230735CA:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,00000000230735DE

l230735D8:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l230735DE:
	lw	a5,s0,+00000084
	c.beqz	a5,00000000230735AC

l230735E4:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,00000000230735AC

l230735F4:
	jal	zero,0000000023072DDA

l230735F8:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lui	a5,0004200F
	c.andi	a0,00000004
	addi	a2,a5,+0000068A
	bne	a0,zero,0000000023072ED2

l23073616:
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
	addi	a4,s6,-000006D8
	addi	a3,a3,-000006D4
	c.li	a0,00000000
	jal	zero,0000000023072EAC

;; tcp_trigger_input_pcb_close: 23073668
;;   Called from:
;;     2307169E (in tcp_close_shutdown)
tcp_trigger_input_pcb_close proc
	lui	a5,0004200F
	addi	a5,a5,+00000670
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000010
	sb	a4,a5,+00000000
	c.jr	ra

;; tcp_seg_add_chksum: 2307367E
;;   Called from:
;;     23073AEA (in tcp_write)
;;     23073C30 (in tcp_write)
;;     23073D1E (in tcp_split_unsent_seg)
;;     23073E68 (in tcp_split_unsent_seg)
tcp_seg_add_chksum proc
	lhu	a5,a2,+00000000
	c.andi	a1,00000001
	c.add	a0,a5
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.beqz	a1,00000000230736AA

l23073692:
	lbu	a4,a3,+00000000
	c.li	a5,00000001
	c.sub	a5,a4
	sb	a5,a3,+00000000
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l230736AA:
	sh	a0,a2,+00000000
	c.jr	ra

;; tcp_create_segment: 230736B0
;;   Called from:
;;     23073B42 (in tcp_write)
;;     23073D82 (in tcp_split_unsent_seg)
;;     23073F38 (in tcp_enqueue_flags)
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
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.lwsp	a2,000000C4
	c.bnez	a0,00000000230736F4

l230736DA:
	c.mv	a0,s2
	jal	ra,00000000230701A4

l230736E0:
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

l230736F4:
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
	jal	ra,000000002307013C
	c.beqz	a0,000000002307373A

l2307371E:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000A8
	c.mv	a0,s0
	c.li	s0,00000000
	c.addi	a4,00000001
	sh	a4,a5,+000000A8
	jal	ra,0000000023070EDA
	c.j	00000000230736E0

l2307373A:
	c.lw	s0,4(a5)
	lw	s2,a5,+00000004
	sw	s2,s0,+00000010
	lhu	a0,s5,+00000016
	jal	ra,000000002306BC12
	sb	a0,s2,+00000000
	c.srli	a0,00000008
	sb	a0,s2,+00000001
	lhu	a0,s5,+00000018
	lw	s2,s0,+00000010
	jal	ra,000000002306BC12
	sb	a0,s2,+00000002
	c.srli	a0,00000008
	sb	a0,s2,+00000003
	lw	s2,s0,+00000010
	c.mv	a0,s4
	jal	ra,000000002306BC20
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
	jal	ra,000000002306BC12
	sb	a0,s2,+0000000C
	c.srli	a0,00000008
	sb	a0,s2,+0000000D
	c.lw	s0,16(a5)
	sb	zero,a5,+00000012
	sb	zero,a5,+00000013
	c.j	00000000230736E0

;; tcp_output_alloc_header_common.constprop.6: 230737BA
;;   Called from:
;;     230738AE (in tcp_output_alloc_header.constprop.5)
;;     230741FE (in tcp_rst)
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
	jal	ra,0000000023070226
	c.mv	s2,a0
	c.beqz	a0,0000000023073880

l230737EE:
	c.lwsp	a2,000000A4
	c.lw	a0,4(s0)
	c.mv	a0,a3
	jal	ra,000000002306BC12
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	c.mv	a0,s6
	jal	ra,000000002306BC12
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
	jal	ra,000000002306BC20
	srli	a5,a0,00000008
	sb	a0,s0,+00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s0,+0000000B
	c.lui	a0,00005000
	sb	a5,s0,+0000000A
	or	a0,s4,a0
	jal	ra,000000002306BC12
	sb	a0,s0,+0000000C
	c.srli	a0,00000008
	sb	a0,s0,+0000000D
	c.mv	a0,s3
	jal	ra,000000002306BC12
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	sb	zero,s0,+00000010
	sb	zero,s0,+00000011
	sb	zero,s0,+00000012
	sb	zero,s0,+00000013

l23073880:
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

;; tcp_output_alloc_header.constprop.5: 23073896
;;   Called from:
;;     2307423E (in tcp_send_empty_ack)
;;     23074802 (in tcp_keepalive)
;;     23074898 (in tcp_zero_window_probe)
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
	jal	ra,00000000230737BA
	c.beqz	a0,00000000230738BE

l230738B4:
	lhu	a4,s0,+0000002A
	c.lw	s0,36(a5)
	c.add	a5,a4
	c.sw	s0,44(a5)

l230738BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_output_control_segment: 230738C6
;;   Called from:
;;     23074218 (in tcp_rst)
;;     23074264 (in tcp_send_empty_ack)
;;     23074818 (in tcp_keepalive)
;;     2307491E (in tcp_zero_window_probe)
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
	c.beqz	a0,0000000023073950

l230738DE:
	lbu	a0,a0,+00000008
	c.beqz	a0,0000000023073950

l230738E4:
	jal	ra,000000002306FFA4

l230738E8:
	c.swsp	a0,00000084
	c.li	s3,FFFFFFFC
	c.beqz	a0,0000000023073938

l230738EE:
	lhu	a2,s0,+00000008
	lw	s3,s0,+00000004
	c.mv	a4,s2
	c.mv	a3,s4
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002306C694
	sb	a0,s3,+00000010
	c.srli	a0,00000008
	sb	a0,s3,+00000011
	c.lwsp	a2,00000008
	c.beqz	s1,0000000023073958

l23073910:
	lbu	a3,s1,+0000000B
	lbu	a4,s1,+0000000A

l23073918:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a2,a5,+00000094
	c.mv	a1,s4
	c.mv	a0,s0
	c.addi	a2,00000001
	sh	a2,a5,+00000094
	c.li	a5,00000006
	c.mv	a2,s2
	jal	ra,000000002306F316
	c.mv	s3,a0

l23073938:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23073950:
	c.mv	a0,s2
	jal	ra,000000002306ED14
	c.j	00000000230738E8

l23073958:
	c.li	a4,00000000
	addi	a3,zero,+000000FF
	c.j	0000000023073918

;; tcp_write: 23073960
;;   Called from:
;;     23075DEC (in lwip_netconn_do_writemore)
;;     230867A4 (in altcp_tcp_write)
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
	c.beqz	a0,00000000230739D4

l23073980:
	lhu	a5,a0,+00000062
	lhu	a4,a0,+00000032
	c.srli	a5,00000001
	c.mv	a7,a5
	bgeu	a4,a5,0000000023073992

l23073990:
	c.mv	a7,a4

l23073992:
	slli	s8,a7,00000010
	srli	s8,s8,00000010
	bne	s8,zero,00000000230739A0

l2307399E:
	c.mv	s8,a4

l230739A0:
	c.li	s2,FFFFFFF0
	c.beqz	a1,00000000230739D4

l230739A4:
	lbu	a5,a0,+00000014
	c.li	a4,00000007
	beq	a5,a4,00000000230739BC

l230739AE:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	c.li	s2,FFFFFFF5
	bltu	a4,a5,00000000230739D4

l230739BC:
	c.beqz	a2,0000000023073A12

l230739BE:
	lhu	a5,a0,+00000064
	bgeu	a5,a2,00000000230739F4

l230739C6:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,a0,+0000001A

l230739D2:
	c.li	s2,FFFFFFFF

l230739D4:
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

l230739F4:
	lhu	a4,a0,+00000066
	c.li	a5,0000000F
	bgeu	a5,a4,0000000023073A12

l230739FE:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	c.j	00000000230739C6

l23073A12:
	c.lw	a0,108(s1)
	lhu	s5,a0,+00000066
	beq	s1,zero,0000000023073C00

l23073A1C:
	c.mv	s11,s1
	c.lw	s1,0(s1)
	c.bnez	s1,0000000023073A1C

l23073A22:
	lhu	s7,a0,+00000068
	lbu	t1,s11,+0000000D
	lhu	a4,s11,+00000008
	c.li	s2,00000000
	beq	s7,zero,0000000023073A72

l23073A34:
	c.slli	t1,02
	andi	t1,t1,+00000004
	sub	a4,s8,a4
	sub	a4,a4,t1
	c.mv	t1,s7
	bgeu	a2,s7,0000000023073A4A

l23073A48:
	c.mv	t1,a2

l23073A4A:
	c.mv	s2,a4
	slli	t3,t1,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	srli	t3,t3,00000010
	bgeu	t3,a4,0000000023073A5E

l23073A5C:
	c.mv	s2,t1

l23073A5E:
	c.slli	s2,10
	srli	s2,s2,00000010
	sub	a6,s7,s2
	slli	s7,a6,00000010
	srli	s7,s7,00000010
	c.mv	s1,s11

l23073A72:
	c.swsp	a3,00000004
	c.mv	s3,a2
	c.swsp	a1,00000000
	c.mv	s0,a0
	c.mv	s10,s2
	c.li	s4,00000000
	c.li	s9,00000000
	sh	s8,sp,+00000006
	c.j	0000000023073B7C

l23073A86:
	sub	a3,s3,s10
	c.mv	a4,a3
	c.slli	a3,10
	c.srli	a3,00000010
	bgeu	s8,a3,0000000023073A98

l23073A94:
	lhu	a4,sp,+00000006

l23073A98:
	addi	a2,zero,+00000280
	c.mv	a1,s8
	addi	a0,zero,+000000B6
	slli	s6,a4,00000010
	c.swsp	a4,00000084
	sh	zero,sp,+0000001E
	sb	zero,sp,+0000001D
	jal	ra,0000000023070226
	srli	s6,s6,00000010
	c.mv	s1,a0
	c.beqz	a0,0000000023073B0C

l23073ABC:
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
	jal	ra,000000002306C826
	addi	a3,sp,+0000001D
	addi	a2,sp,+0000001E
	c.mv	a1,s6
	jal	ra,000000002307367E
	c.mv	a0,s1
	jal	ra,0000000023070440
	c.add	s5,a0
	c.slli	s5,10
	srli	s5,s5,00000010
	c.li	a5,00000010
	srli	s7,s7,00000010
	bgeu	a5,s5,0000000023073B36

l23073B06:
	c.mv	a0,s1
	jal	ra,00000000230701A4

l23073B0C:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	beq	s4,zero,00000000230739D2

l23073B2E:
	c.mv	a0,s4
	jal	ra,0000000023070EFE
	c.j	00000000230739D2

l23073B36:
	c.lw	s0,92(a3)
	c.mv	a1,s1
	c.li	a4,00000000
	c.add	a3,s10
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,00000000230736B0
	c.mv	s1,a0
	c.beqz	a0,0000000023073B0C

l23073B4A:
	lhu	a4,sp,+0000001E
	sh	a4,a0,+0000000A
	lbu	a4,sp,+0000001D
	sb	a4,a0,+0000000C
	lbu	a4,a0,+0000000D
	ori	a4,a4,+00000004
	sb	a4,a0,+0000000D
	beq	s4,zero,0000000023073BFC

l23073B6A:
	sw	a0,s9,+00000000

l23073B6E:
	add	t1,s10,s6
	slli	s10,t1,00000010
	srli	s10,s10,00000010
	c.mv	s9,s1

l23073B7C:
	bltu	s10,s3,0000000023073A86

l23073B80:
	beq	s2,zero,0000000023073B9E

l23073B84:
	lw	s10,s11,+00000004
	addi	s6,s11,+0000000C
	addi	s9,s11,+0000000A

l23073B90:
	bne	s10,zero,0000000023073C08

l23073B94:
	lhu	a4,s11,+00000008
	c.add	s2,a4
	sh	s2,s11,+00000008

l23073B9E:
	sh	s7,s0,+00000068
	bne	s11,zero,0000000023073C50

l23073BA6:
	sw	s4,s0,+0000006C

l23073BAA:
	c.lw	s0,92(a5)
	lhu	a2,s0,+00000064
	sh	s5,s0,+00000066
	c.add	a5,s3
	sub	s3,a2,s3
	c.sw	s0,92(a5)
	sh	s3,s0,+00000064
	c.li	s2,00000000
	beq	s1,zero,00000000230739D4

l23073BC6:
	c.lw	s1,16(a5)
	beq	a5,zero,00000000230739D4

l23073BCC:
	c.lwsp	s0,000000C4
	andi	s7,a4,+00000002
	bne	s7,zero,00000000230739D4

l23073BD6:
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000008
	jal	ra,000000002306BC12
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D
	c.j	00000000230739D4

l23073BFC:
	c.mv	s4,a0
	c.j	0000000023073B6E

l23073C00:
	c.li	s11,00000000
	c.li	s7,00000000
	c.li	s2,00000000
	c.j	0000000023073A72

l23073C08:
	lhu	a4,s10,+00000008
	c.add	a4,s2
	sh	a4,s10,+00000008
	lw	a4,s10,+00000000
	c.bnez	a4,0000000023073C4A

l23073C18:
	lhu	a4,s10,+0000000A
	lw	a0,s10,+00000004
	c.lwsp	zero,00000064
	c.mv	a2,s2
	c.add	a0,a4
	jal	ra,000000002306C826
	c.mv	a3,s6
	c.mv	a2,s9
	c.mv	a1,s2
	jal	ra,000000002307367E
	lbu	a4,s11,+0000000D
	ori	a4,a4,+00000004
	sb	a4,s11,+0000000D
	lhu	a4,s10,+0000000A
	c.add	a4,s2
	sh	a4,s10,+0000000A

l23073C4A:
	lw	s10,s10,+00000000
	c.j	0000000023073B90

l23073C50:
	sw	s4,s11,+00000000
	c.j	0000000023073BAA

;; tcp_split_unsent_seg: 23073C56
;;   Called from:
;;     23071A44 (in tcp_slowtmr)
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
	c.bnez	s0,0000000023073C7C

l23073C78:
	c.li	a5,FFFFFFFF
	c.j	0000000023073C8A

l23073C7C:
	c.li	a5,FFFFFFFA
	c.beqz	a1,0000000023073C8A

l23073C80:
	lhu	s6,s0,+00000008
	bltu	a1,s6,0000000023073CA4

l23073C88:
	c.li	a5,00000000

l23073C8A:
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

l23073CA4:
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
	jal	ra,0000000023070226
	c.mv	s5,a0
	beq	a0,zero,0000000023073EB8

l23073CDC:
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
	jal	ra,000000002307055E
	c.mv	s8,a0
	bne	a0,s7,0000000023073EB8

l23073D00:
	lw	a0,s5,+00000004
	c.mv	a1,s8
	c.add	a0,s3
	jal	ra,000000002306C796
	xori	a0,a0,-00000001
	c.slli	a0,10
	addi	a2,sp,+0000001E
	addi	a3,sp,+0000001D
	c.mv	a1,s8
	c.srli	a0,00000010
	jal	ra,000000002307367E
	c.lw	s0,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	andi	s3,a0,+000000FF
	andi	a2,s3,+00000008
	bne	a2,zero,0000000023073E78

l23073D40:
	andi	s3,s3,+0000003F

l23073D44:
	andi	a5,s3,+00000001
	c.beqz	a5,0000000023073D52

l23073D4A:
	andi	s3,s3,+000000FE
	ori	a2,a2,+00000001

l23073D52:
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
	jal	ra,000000002306BC20
	c.lwsp	a2,00000084
	c.mv	a4,s4
	add	a3,s1,a0
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230736B0
	c.mv	s4,a0
	beq	a0,zero,0000000023073EB8

l23073D8C:
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
	jal	ra,0000000023070440
	lhu	a5,s2,+00000066
	sub	a0,a5,a0
	sh	a0,s2,+00000066
	c.lw	s0,4(a0)
	lhu	a1,a0,+00000008
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,0000000023070384
	lhu	a5,s0,+00000008
	c.lw	s0,16(a4)
	c.add	s1,a5
	sh	s1,s0,+00000008
	lbu	s1,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	s1,08
	c.or	s1,a0
	c.mv	a0,s3
	jal	ra,000000002306BC12
	c.lw	s0,16(a4)
	or	a5,s1,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+0000000C
	c.srli	a5,00000008
	sb	a5,a4,+0000000D
	c.lw	s0,4(a0)
	jal	ra,0000000023070440
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

l23073E2E:
	lhu	a1,s3,+0000000A
	bltu	a1,s1,0000000023073E80

l23073E36:
	addi	s6,s0,+0000000C
	addi	s5,s0,+0000000A

l23073E3E:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	c.sub	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a0,s1
	jal	ra,000000002306C796
	lhu	a1,s3,+0000000A
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.sub	a1,s1
	c.slli	a1,10
	c.mv	a3,s6
	c.mv	a2,s5
	c.srli	a1,00000010
	c.srli	a0,00000010
	jal	ra,000000002307367E
	lw	s3,s3,+00000000
	c.li	s1,00000000
	bne	s3,zero,0000000023073E3E

l23073E76:
	c.j	0000000023073E8E

l23073E78:
	andi	s3,s3,+00000037
	c.li	a2,00000008
	c.j	0000000023073D44

l23073E80:
	lw	s3,s3,+00000000
	c.sub	s1,a1
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s3,zero,0000000023073E2E

l23073E8E:
	lw	a0,s4,+00000004
	jal	ra,0000000023070440
	lhu	a5,s2,+00000066
	c.add	a0,a5
	sh	a0,s2,+00000066
	c.lw	s0,0(a5)
	sw	a5,s4,+00000000
	sw	s4,s0,+00000000
	lw	a5,s4,+00000000
	bne	a5,zero,0000000023073C88

l23073EB2:
	sh	zero,s2,+00000068
	c.j	0000000023073C8A

l23073EB8:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	beq	s5,zero,0000000023073C78

l23073ECE:
	c.mv	a0,s5
	jal	ra,00000000230701A4
	c.j	0000000023073C78

;; tcp_enqueue_flags: 23073ED6
;;   Called from:
;;     230710DE (in tcp_connect)
;;     230730B0 (in tcp_input)
;;     23073F9E (in tcp_send_fin)
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
	jal	ra,0000000023070226
	c.lwsp	a2,000000C4
	c.bnez	a0,0000000023073F30

l23073F04:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFF
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0

l23073F24:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23073F30:
	c.lw	s0,92(a3)
	c.mv	a1,a0
	c.mv	a2,s1
	c.mv	a0,s0
	jal	ra,00000000230736B0
	c.beqz	a0,0000000023073F04

l23073F3E:
	c.lw	s0,108(a5)
	c.bnez	a5,0000000023073F78

l23073F42:
	c.sw	s0,108(a0)

l23073F44:
	sh	zero,s0,+00000068
	beq	s2,zero,0000000023073F52

l23073F4C:
	c.lw	s0,92(a5)
	c.addi	a5,00000001
	c.sw	s0,92(a5)

l23073F52:
	c.andi	s1,00000001
	c.beqz	s1,0000000023073F62

l23073F56:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000020
	sh	a5,s0,+0000001A

l23073F62:
	c.lw	a0,4(a0)
	jal	ra,0000000023070440
	lhu	a5,s0,+00000066
	c.add	a0,a5
	sh	a0,s0,+00000066
	c.li	a0,00000000
	c.j	0000000023073F24

l23073F76:
	c.mv	a5,a4

l23073F78:
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023073F76

l23073F7C:
	c.sw	a5,0(a0)
	c.j	0000000023073F44

;; tcp_send_fin: 23073F80
;;   Called from:
;;     23070C08 (in tcp_close_shutdown_fin)
;;     23070C28 (in tcp_close_shutdown_fin)
tcp_send_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,108(s1)
	c.mv	s2,a0
	c.bnez	s1,0000000023073FA4

l23073F90:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,0000000023073ED6

l23073FA2:
	c.mv	s1,a5

l23073FA4:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023073FA2

l23073FA8:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000007
	c.bnez	a0,0000000023073F90

l23073FBE:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002306BC12
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

;; tcp_rexmit_rto_prepare: 23073FFE
;;   Called from:
;;     23071B7C (in tcp_slowtmr)
;;     230747D2 (in tcp_rexmit_rto)
tcp_rexmit_rto_prepare proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a3,00000001
	c.bnez	s1,000000002307401A

l23074010:
	c.li	a5,FFFFFFFA
	c.j	0000000023074096

l23074014:
	c.mv	s1,a5
	bne	a4,a3,0000000023074010

l2307401A:
	c.lw	s1,4(a4)
	c.lw	s1,0(a5)
	lbu	a4,a4,+0000000E
	c.bnez	a5,0000000023074014

l23074024:
	c.li	a3,00000001
	c.li	a5,FFFFFFFA
	bne	a4,a3,0000000023074096

l2307402C:
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
	jal	ra,000000002306BC20
	c.lw	s1,16(a5)
	c.mv	s2,a0
	lhu	s3,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.add	s2,s3
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.sw	s0,76(a0)
	sw	zero,s0,+00000034
	c.li	a5,00000000

l23074096:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; tcp_rexmit: 230740A6
;;   Called from:
;;     230733E2 (in tcp_input)
;;     23074178 (in tcp_rexmit_fast)
tcp_rexmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a5,FFFFFFFA
	c.beqz	s1,0000000023074100

l230740B8:
	c.lw	s1,4(a5)
	c.li	a4,00000001
	lbu	a3,a5,+0000000E
	c.li	a5,FFFFFFFA
	bne	a3,a4,0000000023074100

l230740C6:
	c.lw	s1,0(a5)
	c.mv	s0,a0
	addi	s2,a0,+0000006C
	c.sw	a0,112(a5)

l230740D0:
	lw	a5,s2,+00000000
	c.bnez	a5,0000000023074110

l230740D6:
	lw	a5,s2,+00000000
	c.sw	s1,0(a5)
	sw	s1,s2,+00000000
	c.lw	s1,0(a5)
	c.bnez	a5,00000000230740E8

l230740E4:
	sh	zero,s0,+00000068

l230740E8:
	lbu	a5,s0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,00000000230740FA

l230740F4:
	c.addi	a5,00000001
	sb	a5,s0,+00000042

l230740FA:
	sw	zero,s0,+00000034
	c.li	a5,00000000

l23074100:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23074110:
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
	jal	ra,000000002306BC20
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
	jal	ra,000000002306BC20
	sub	a0,s3,a0
	bge	a0,zero,00000000230740D6

l2307415E:
	lw	s2,s2,+00000000
	c.j	00000000230740D0

;; tcp_rexmit_fast: 23074164
;;   Called from:
;;     23072142 (in tcp_receive)
tcp_rexmit_fast proc
	c.lw	a0,112(a5)
	c.beqz	a5,00000000230741CE

l23074168:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000004
	c.bnez	a5,00000000230741C6

l23074178:
	jal	ra,00000000230740A6
	c.bnez	a0,00000000230741C6

l2307417E:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	bgeu	a4,a5,000000002307418C

l2307418A:
	c.mv	a5,a4

l2307418C:
	c.slli	a5,10
	lhu	a4,s0,+00000032
	c.srli	a5,00000010
	c.srai	a5,00000001
	sh	a5,s0,+0000004A
	slli	a3,a4,00000001
	bgeu	a5,a3,00000000230741A6

l230741A2:
	sh	a3,s0,+0000004A

l230741A6:
	c.li	a5,00000003
	add	a4,a4,a5
	lhu	a5,s0,+0000004A
	sh	zero,s0,+00000030
	c.add	a4,a5
	lhu	a5,s0,+0000001A
	sh	a4,s0,+00000048
	ori	a5,a5,+00000004
	sh	a5,s0,+0000001A

l230741C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230741CE:
	c.jr	ra

;; tcp_rst: 230741D0
;;   Called from:
;;     2307130E (in tcp_abandon)
;;     23071668 (in tcp_close_shutdown)
;;     23071C8C (in tcp_slowtmr)
;;     23072EAC (in tcp_input)
;;     230732D0 (in tcp_input)
;;     230733CA (in tcp_input)
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
	jal	ra,000000002306BC20
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.lui	a6,00001000
	c.mv	a2,a0
	c.addi	a6,00000008
	c.li	a5,00000014
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230737BA
	c.beqz	a0,000000002307421C

l23074204:
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
	jal	zero,00000000230738C6

l2307421C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcp_send_empty_ack: 2307422A
;;   Called from:
;;     23072552 (in tcp_receive)
;;     230727BC (in tcp_receive)
;;     23072DCC (in tcp_input)
;;     230742D0 (in tcp_output)
tcp_send_empty_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023073896
	c.bnez	a0,000000002307425A

l23074244:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFE
	ori	a5,a5,+00000003
	sh	a5,s0,+0000001A

l23074252:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2307425A:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	jal	ra,00000000230738C6
	lhu	a5,s0,+0000001A
	c.beqz	a0,0000000023074278

l2307426E:
	ori	a5,a5,+00000003

l23074272:
	sh	a5,s0,+0000001A
	c.j	0000000023074252

l23074278:
	c.andi	a5,FFFFFFFC
	c.j	0000000023074272

;; tcp_output: 2307427C
;;   Called from:
;;     23070C18 (in tcp_close_shutdown_fin)
;;     23070ECC (in tcp_recved)
;;     23071120 (in tcp_connect)
;;     23071240 (in tcp_pcb_remove)
;;     230718AE (in tcp_fasttmr)
;;     23071A4E (in tcp_slowtmr)
;;     23071B4A (in tcp_slowtmr)
;;     23072ECE (in tcp_input)
;;     230735BC (in tcp_input)
;;     230747C6 (in tcp_rexmit_rto_commit)
;;     23075DA8 (in lwip_netconn_do_writemore)
;;     23075E7A (in lwip_netconn_do_writemore)
;;     23086798 (in altcp_tcp_output)
tcp_output proc
	lui	a5,00042027
	lw	a5,a5,-000006F0
	beq	a5,a0,00000000230747AC

l23074288:
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
	c.bnez	s1,00000000230742D4

l230742AA:
	lhu	a5,a0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023074794

l230742B4:
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
	jal	zero,000000002307422A

l230742D4:
	lhu	s6,a0,+00000048
	lhu	s2,a0,+00000060
	addi	s5,a0,+00000004
	lbu	a0,a0,+00000008
	c.beqz	a0,0000000023074362

l230742E6:
	jal	ra,000000002306FFA4

l230742EA:
	c.mv	s4,a0
	beq	a0,zero,00000000230747B0

l230742F0:
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230742F8

l230742F4:
	c.lw	a0,4(a5)
	c.sw	s0,0(a5)

l230742F8:
	c.mv	s3,s6
	bgeu	s2,s6,0000000023074300

l230742FE:
	c.mv	s3,s2

l23074300:
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
	jal	ra,000000002306BC20
	lhu	a5,s1,+00000008
	c.lw	s0,68(a4)
	c.sub	a5,a4
	c.add	a0,a5
	bgeu	s3,a0,000000002307436A

l23074336:
	lhu	a5,s0,+00000060
	bne	a5,s3,0000000023074354

l2307433E:
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023074354

l23074342:
	lbu	a5,s0,+000000A1
	c.bnez	a5,0000000023074354

l23074348:
	addi	a5,zero,+00000100
	sh	a5,s0,+000000A0
	sb	zero,s0,+000000A2

l23074354:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023074794

l2307435E:
	c.mv	a0,s0
	c.j	00000000230742B4

l23074362:
	c.mv	a0,s5
	jal	ra,000000002306ED14
	c.j	00000000230742EA

l2307436A:
	lw	s2,s0,+00000070
	sb	zero,s0,+000000A1
	bne	s2,zero,0000000023074390

l23074376:
	lui	s6,00042026
	c.li	s9,0000000F
	c.li	s7,00000002
	c.li	s8,00000001
	addi	s6,s6,+000007F0
	lui	s10,00042027
	lui	s11,00002040
	c.j	000000002307470A

l2307438E:
	c.mv	s2,a5

l23074390:
	lw	a5,s2,+00000000
	c.bnez	a5,000000002307438E

l23074396:
	c.j	0000000023074376

l23074398:
	lbu	a5,s0,+00000014
	beq	a5,s7,00000000230743CA

l230743A0:
	c.lw	s1,16(a4)
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a5,a0
	c.li	a0,00000010
	c.swsp	a5,00000004
	jal	ra,000000002306BC12
	c.lwsp	s0,000000E4
	c.lw	s1,16(a4)
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l230743CA:
	c.lw	s1,4(a5)
	lbu	a5,a5,+0000000E
	bne	a5,s8,00000000230745AC

l230743D4:
	c.lw	s1,16(a5)
	c.lw	s0,36(a0)
	c.swsp	a5,00000004
	jal	ra,000000002306BC20
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
	jal	ra,000000002306BC12
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
	c.beqz	a5,0000000023074440

l23074424:
	c.lw	s1,16(a5)
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,zero,+000002B0
	c.swsp	a5,00000004
	jal	ra,0000000023070F9E
	or	a0,a0,s11
	jal	ra,000000002306BC20
	c.lwsp	s0,000000E4
	c.sw	a5,20(a0)

l23074440:
	lh	a5,s0,+00000030
	bge	a5,zero,000000002307444C

l23074448:
	sh	zero,s0,+00000030

l2307444C:
	c.lw	s0,52(a5)
	c.bnez	a5,000000002307447A

l23074450:
	lw	a5,s10,-00000704
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
	jal	ra,000000002306BC20
	c.sw	s0,56(a0)

l2307447A:
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
	c.bnez	a5,00000000230744C6

l230744B4:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12

l230744C6:
	lw	a6,s1,+00000004
	c.lw	s1,16(a5)
	lhu	a2,a6,+00000008
	c.swsp	a6,00000084
	c.swsp	a2,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.lwsp	a2,00000008
	c.lwsp	s0,00000084
	srli	a3,a0,0000000A
	c.mv	a5,s5
	c.mv	a4,s0
	andi	a3,a3,+000000FC
	c.li	a1,00000006
	c.mv	a0,a6
	jal	ra,000000002306C792
	lbu	a5,s1,+0000000C
	c.li	a7,00000000
	c.beqz	a5,000000002307451A

l23074504:
	lhu	a5,s1,+0000000A
	sb	zero,s1,+0000000C
	c.li	a7,00000001
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l2307451A:
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
	jal	ra,000000002306F316
	c.lwsp	s0,00000028
	beq	a7,zero,0000000023074580

l2307456C:
	lhu	a5,s1,+0000000A
	sb	s8,s1,+0000000C
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l23074580:
	c.beqz	a0,00000000230745AC

l23074582:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A

l2307458E:
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

l230745AC:
	c.lw	s1,0(a5)
	c.sw	s0,108(a5)
	lbu	a5,s0,+00000014
	beq	a5,s7,00000000230745C2

l230745B8:
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l230745C2:
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
	jal	ra,000000002306BC20
	lhu	a3,s1,+00000008
	c.lw	s1,16(a4)
	c.swsp	a0,00000084
	c.swsp	a3,00000004
	lbu	a0,a4,+0000000C
	lbu	a4,a4,+0000000D
	c.slli	a4,08
	c.or	a0,a4
	jal	ra,000000002306BC12
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000E4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a5,a3
	c.add	a0,a5
	c.lw	s0,80(a5)
	c.sub	a5,a0
	bge	a5,zero,0000000023074616

l23074614:
	c.sw	s0,80(a0)

l23074616:
	lhu	a4,s1,+00000008
	c.lw	s1,16(a5)
	c.swsp	a4,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.lwsp	s0,000000C4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,a4
	beq	a0,zero,00000000230747A4

l2307463C:
	sw	zero,s1,+00000000
	c.lw	s0,112(a5)
	c.bnez	a5,000000002307464A

l23074644:
	c.sw	s0,112(s1)

l23074646:
	c.mv	s2,s1
	c.j	0000000023074706

l2307464A:
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
	jal	ra,000000002306BC20
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
	jal	ra,000000002306BC20
	c.lwsp	s0,000000A4
	addi	a5,s0,+00000070
	sub	a0,a3,a0
	blt	a0,zero,00000000230746FC

l230746A0:
	sw	s1,s2,+00000000
	c.j	0000000023074646

l230746A6:
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
	jal	ra,000000002306BC20
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
	jal	ra,000000002306BC20
	c.lwsp	s0,00000084
	c.lwsp	a2,000000E4
	sub	a0,a2,a0
	bge	a0,zero,0000000023074700

l230746FA:
	c.lw	a5,0(a5)

l230746FC:
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230746A6

l23074700:
	c.lw	a5,0(a4)
	c.sw	s1,0(a4)
	c.sw	a5,0(s1)

l23074706:
	c.lw	s0,108(s1)
	c.beqz	s1,0000000023074790

l2307470A:
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
	jal	ra,000000002306BC20
	c.lw	s0,68(a5)
	c.sub	a0,a5
	lhu	a5,s1,+00000008
	c.add	a0,a5
	bltu	s3,a0,000000002307478C

l2307473A:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.lw	s0,112(a5)
	beq	a5,zero,0000000023074398

l23074752:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000044
	bne	a4,zero,0000000023074398

l2307475E:
	c.lw	s0,108(a4)
	c.beqz	a4,0000000023074774

l23074762:
	c.lw	a4,0(a3)
	bne	a3,zero,0000000023074398

l23074768:
	lhu	a3,a4,+00000008
	lhu	a4,s0,+00000032
	bgeu	a3,a4,0000000023074398

l23074774:
	lhu	a4,s0,+00000064
	beq	a4,zero,0000000023074398

l2307477C:
	lhu	a4,s0,+00000066
	bltu	s9,a4,0000000023074398

l23074784:
	andi	a5,a5,+000000A0
	bne	a5,zero,0000000023074398

l2307478C:
	c.lw	s0,108(a5)
	c.bnez	a5,0000000023074794

l23074790:
	sh	zero,s0,+00000068

l23074794:
	lhu	a5,s0,+0000001A
	c.li	a0,00000000
	andi	a5,a5,-00000081
	sh	a5,s0,+0000001A
	c.j	000000002307458E

l230747A4:
	c.mv	a0,s1
	jal	ra,0000000023070EDA
	c.j	0000000023074706

l230747AC:
	c.li	a0,00000000
	c.jr	ra

l230747B0:
	c.li	a0,FFFFFFFC
	c.j	000000002307458E

;; tcp_rexmit_rto_commit: 230747B4
;;   Called from:
;;     23071C02 (in tcp_slowtmr)
;;     230747E0 (in tcp_rexmit_rto)
tcp_rexmit_rto_commit proc
	lbu	a5,a0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,00000000230747C6

l230747C0:
	c.addi	a5,00000001
	sb	a5,a0,+00000042

l230747C6:
	jal	zero,000000002307427C

;; tcp_rexmit_rto: 230747CA
;;   Called from:
;;     230732E4 (in tcp_input)
tcp_rexmit_rto proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023073FFE
	c.bnez	a0,00000000230747E4

l230747D8:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230747B4

l230747E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_keepalive: 230747EC
;;   Called from:
;;     23071C36 (in tcp_slowtmr)
tcp_keepalive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	c.addi	a0,FFFFFFFF
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023073896
	c.beqz	a0,000000002307481C

l23074808:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230738C6

l2307481C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

;; tcp_zero_window_probe: 23074826
;;   Called from:
;;     23071B52 (in tcp_slowtmr)
tcp_zero_window_probe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s2,a0,+0000006C
	beq	s2,zero,0000000023074940

l2307483C:
	lbu	a5,a0,+000000A2
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002307484E

l23074848:
	c.addi	a5,00000001
	sb	a5,a0,+000000A2

l2307484E:
	lw	a5,s2,+00000010
	c.mv	s1,a0
	c.li	s0,00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	c.andi	a0,00000001
	c.beqz	a0,0000000023074872

l2307486A:
	lhu	s0,s2,+00000008
	sltiu	s0,s0,+00000001

l23074872:
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
	jal	ra,0000000023073896
	c.mv	s3,a0
	c.beqz	a0,0000000023074952

l230748A0:
	lw	s4,a0,+00000004
	c.beqz	s0,0000000023074922

l230748A6:
	lbu	s0,s4,+0000000D
	lbu	a5,s4,+0000000C
	c.li	a0,00000011
	c.slli	s0,08
	c.or	s0,a5
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	c.and	s0,a5
	c.slli	s0,10
	jal	ra,000000002306BC12
	c.srai	s0,00000010
	or	a5,s0,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s4,+0000000C
	c.srli	a5,00000008
	sb	a5,s4,+0000000D

l230748D6:
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
	jal	ra,000000002306BC20
	c.lw	s1,80(a5)
	c.addi	a0,00000001
	c.sub	a5,a0
	bge	a5,zero,0000000023074906

l23074904:
	c.sw	s1,80(a0)

l23074906:
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
	jal	zero,00000000230738C6

l23074922:
	lw	a0,s2,+00000004
	lhu	a5,s2,+00000008
	c.li	a2,00000001
	lhu	a3,a0,+00000008
	addi	a1,s4,+00000014
	c.sub	a3,a5
	c.slli	a3,10
	c.srli	a3,00000010
	jal	ra,000000002307055E
	c.j	00000000230748D6

l23074940:
	c.li	a0,00000000

l23074942:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23074952:
	c.li	a0,FFFFFFFF
	c.j	0000000023074942

;; sys_timeout_abs: 23074956
;;   Called from:
;;     230749E6 (in lwip_cyclic_timer)
;;     23074A06 (in sys_timeout)
sys_timeout_abs proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000B
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306FB44
	c.beqz	a0,0000000023074986

l2307496A:
	lui	a4,0004200F
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	addi	a4,a4,+00000690
	c.lw	a4,0(a5)
	sw	zero,a0,+00000000
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.sw	a0,4(s0)
	c.bnez	a5,000000002307498E

l23074984:
	c.sw	a4,0(a0)

l23074986:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2307498E:
	c.lw	a5,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,000000002307499E

l23074998:
	c.sw	a0,0(a5)
	c.j	0000000023074984

l2307499C:
	c.mv	a5,a4

l2307499E:
	c.lw	a5,0(a4)
	c.beqz	a4,00000000230749AC

l230749A2:
	c.lw	a4,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,000000002307499C

l230749AC:
	c.sw	a0,0(a4)
	c.sw	a5,0(a0)
	c.j	0000000023074986

;; lwip_cyclic_timer: 230749B2
lwip_cyclic_timer proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.jalr	a5
	jal	ra,000000002306A802
	c.lwsp	a2,00000084
	lui	a5,0004200F
	lw	a5,a5,+0000068C
	c.lw	a2,0(a4)
	lui	a1,00023075
	addi	a1,a1,-0000064E
	c.add	a5,a4
	sub	a3,a5,a0
	c.add	a0,a4
	blt	a3,zero,00000000230749E2

l230749E0:
	c.mv	a0,a5

l230749E2:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023074956

;; sys_timeout: 230749EA
;;   Called from:
;;     23074A3E (in tcp_timer_needed)
;;     23074A72 (in tcpip_tcp_timer)
;;     23074AAC (in sys_timeouts_init)
;;     23078EDE (in sntp_retry)
;;     2307906C (in sntp_recv)
;;     23079124 (in sntp_send_request)
;;     2307918A (in sntp_request)
;;     2307921A (in sntp_init)
sys_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306A802
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023074956

;; tcp_timer_needed: 23074A0A
;;   Called from:
;;     23070CF0 (in tcp_bind)
;;     23070DE6 (in tcp_listen_with_backlog_and_err)
;;     23071110 (in tcp_connect)
;;     23073058 (in tcp_input)
;;     23073466 (in tcp_input)
tcp_timer_needed proc
	lui	a5,0004200F
	lw	a4,a5,+00000694
	addi	a5,a5,+00000694
	c.bnez	a4,0000000023074A42

l23074A18:
	lui	a4,00042027
	lw	a4,a4,-000006FC
	c.bnez	a4,0000000023074A2C

l23074A22:
	lui	a4,00042027
	lw	a4,a4,-00000708
	c.beqz	a4,0000000023074A42

l23074A2C:
	lui	a1,00023075
	c.li	a4,00000001
	c.li	a2,00000000
	addi	a1,a1,-000005BC
	addi	a0,zero,+000000FA
	c.sw	a5,0(a4)
	jal	zero,00000000230749EA

l23074A42:
	c.jr	ra

;; tcpip_tcp_timer: 23074A44
tcpip_tcp_timer proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023071D1C
	lui	a5,00042027
	lw	a5,a5,-000006FC
	c.bnez	a5,0000000023074A60

l23074A56:
	lui	a5,00042027
	lw	a5,a5,-00000708
	c.beqz	a5,0000000023074A76

l23074A60:
	c.lwsp	a2,00000020
	lui	a1,00023075
	c.li	a2,00000000
	addi	a1,a1,-000005BC
	addi	a0,zero,+000000FA
	c.addi	sp,00000010
	jal	zero,00000000230749EA

l23074A76:
	c.lwsp	a2,00000020
	lui	a5,0004200F
	sw	zero,a5,+00000694
	c.addi	sp,00000010
	c.jr	ra

;; sys_timeouts_init: 23074A84
;;   Called from:
;;     2306C872 (in lwip_init)
sys_timeouts_init proc
	lui	a5,000230C3
	c.addi	sp,FFFFFFF0
	addi	a5,a5,+00000794
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,a5,+00000008
	addi	s0,a5,+00000030
	lui	s2,00023075

l23074AA2:
	c.lw	s1,0(a0)
	c.mv	a2,s1
	addi	a1,s2,-0000064E
	c.addi	s1,00000008
	jal	ra,00000000230749EA
	bne	s1,s0,0000000023074AA2

l23074AB4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sys_untimeout: 23074AC0
;;   Called from:
;;     2307903E (in sntp_recv)
;;     2307904C (in sntp_recv)
sys_untimeout proc
	lui	a4,0004200F
	lw	a5,a4,+00000690
	addi	a3,a4,+00000690
	c.li	a2,00000000
	c.bnez	a5,0000000023074ADC

l23074AD0:
	c.jr	ra

l23074AD2:
	c.sw	a2,0(a4)
	c.j	0000000023074AF2

l23074AD6:
	c.mv	a2,a5
	c.beqz	a4,0000000023074AD0

l23074ADA:
	c.mv	a5,a4

l23074ADC:
	lw	a6,a5,+00000008
	c.lw	a5,0(a4)
	bne	a6,a0,0000000023074AD6

l23074AE6:
	lw	a6,a5,+0000000C
	bne	a6,a1,0000000023074AD6

l23074AEE:
	c.bnez	a2,0000000023074AD2

l23074AF0:
	c.sw	a3,0(a4)

l23074AF2:
	c.mv	a1,a5
	c.li	a0,0000000B
	jal	zero,000000002306FB62

;; sys_check_timeouts: 23074AFA
;;   Called from:
;;     2306B990 (in tcpip_thread)
sys_check_timeouts proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,000000002306A802
	c.mv	s2,a0
	lui	s3,0004200F
	lui	s4,0004200F

l23074B16:
	addi	a4,s3,+00000690
	c.lw	a4,0(a1)
	c.beqz	a1,0000000023074B42

l23074B1E:
	c.lw	a1,4(a5)
	sub	a3,s2,a5
	blt	a3,zero,0000000023074B42

l23074B28:
	c.lw	a1,0(a3)
	c.lw	a1,8(s0)
	c.li	a0,0000000B
	c.sw	a4,0(a3)
	c.lw	a1,12(s1)
	sw	a5,s4,+0000068C
	jal	ra,000000002306FB62
	c.beqz	s0,0000000023074B16

l23074B3C:
	c.mv	a0,s1
	c.jalr	s0
	c.j	0000000023074B16

l23074B42:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; sys_timeouts_sleeptime: 23074B52
;;   Called from:
;;     2306B964 (in tcpip_thread)
sys_timeouts_sleeptime proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000690
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.li	a0,FFFFFFFF
	c.beqz	a5,0000000023074B78

l23074B66:
	jal	ra,000000002306A802
	c.lw	s0,0(a5)
	c.lw	a5,4(a5)
	sub	a0,a5,a0
	bge	a0,zero,0000000023074B78

l23074B76:
	c.li	a0,00000000

l23074B78:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_init: 23074B80
;;   Called from:
;;     2306C85E (in lwip_init)
udp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023065C28
	c.slli	a0,12
	c.lui	a5,FFFFC000
	c.lwsp	a2,00000020
	c.srli	a0,00000012
	c.add	a0,a5
	lui	a5,0004200F
	sh	a0,a5,+00000CC2
	c.addi	sp,00000010
	c.jr	ra

;; udp_input: 23074B9E
;;   Called from:
;;     2306F06C (in ip4_input)
udp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042026
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	a5,s0,+000007F0
	lhu	a4,a5,+0000007E
	c.addi	a4,00000001
	sh	a4,a5,+0000007E
	lhu	a3,a0,+0000000A
	c.li	a4,00000007
	bltu	a4,a3,0000000023074BFA

l23074BCE:
	lhu	a4,a5,+00000086
	c.addi	a4,00000001
	sh	a4,a5,+00000086
	lhu	a4,a5,+00000082
	c.addi	a4,00000001
	sh	a4,a5,+00000082

l23074BE2:
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
	jal	zero,00000000230701A4

l23074BFA:
	lui	s4,00042027
	addi	s2,s4,-000006E8
	lw	s3,a0,+00000004
	c.mv	s1,a0
	c.mv	s5,a1
	lw	a0,s2,+00000014
	lw	a1,s2,+00000000
	addi	s0,s0,+000007F0
	addi	s4,s4,-000006E8
	jal	ra,000000002306F33A
	lbu	a5,s3,+00000001
	c.mv	s6,a0
	lbu	a0,s3,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lbu	a5,s3,+00000003
	c.mv	s7,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002306BC12
	lui	a1,00042027
	lw	a7,a1,-000006EC
	lw	t3,s2,+00000004
	lw	a3,s2,+00000014
	lw	t4,s2,+00000010
	c.mv	a5,a7
	c.li	s2,00000000
	c.li	a6,00000000
	c.li	t1,FFFFFFFF

l23074C5E:
	c.bnez	a5,0000000023074C70

l23074C60:
	bne	s2,zero,0000000023074D00

l23074C64:
	lw	a5,s5,+00000004
	beq	a5,a3,0000000023074D00

l23074C6C:
	c.mv	a0,s1
	c.j	0000000023074BE2

l23074C70:
	lhu	a4,a5,+00000012
	bne	a4,a0,0000000023074CD4

l23074C78:
	lbu	a2,a5,+00000008
	c.beqz	a2,0000000023074C8C

l23074C7E:
	lbu	a4,t3,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	bne	a2,a4,0000000023074CD4

l23074C8C:
	c.lw	a5,0(a4)
	beq	s6,zero,0000000023074CCE

l23074C92:
	c.beqz	a4,0000000023074CA6

l23074C94:
	beq	a3,t1,0000000023074CA6

l23074C98:
	lw	t5,s5,+00000008
	xor	a2,a4,a3
	and	a2,a2,t5
	c.bnez	a2,0000000023074CD4

l23074CA6:
	lbu	a2,a5,+00000010
	c.andi	a2,00000004
	c.bnez	a2,0000000023074CDC

l23074CAE:
	beq	s2,zero,0000000023074CCA

l23074CB2:
	beq	s6,zero,0000000023074CDA

l23074CB6:
	bne	a3,t1,0000000023074CDA

l23074CBA:
	lw	a2,s5,+00000004
	lw	t5,s2,+00000000
	beq	t5,a2,0000000023074CDC

l23074CC6:
	bne	a2,a4,0000000023074CDC

l23074CCA:
	c.mv	s2,a5
	c.j	0000000023074CDC

l23074CCE:
	c.beqz	a4,0000000023074CA6

l23074CD0:
	beq	a4,a3,0000000023074CA6

l23074CD4:
	c.mv	a6,a5
	c.lw	a5,12(a5)
	c.j	0000000023074C5E

l23074CDA:
	c.bnez	a4,0000000023074CCA

l23074CDC:
	lhu	a4,a5,+00000014
	bne	a4,s7,0000000023074CD4

l23074CE4:
	c.lw	a5,4(a4)
	c.beqz	a4,0000000023074CEC

l23074CE8:
	bne	a4,t4,0000000023074CD4

l23074CEC:
	beq	a6,zero,0000000023074D42

l23074CF0:
	c.lw	a5,12(a4)
	sw	a5,a1,+00000914
	sw	a4,a6,+0000000C
	sw	a7,a5,+0000000C

l23074CFE:
	c.mv	s2,a5

l23074D00:
	lbu	a5,s3,+00000007
	lbu	a4,s3,+00000006
	c.slli	a5,08
	c.or	a5,a4
	c.beqz	a5,0000000023074D4E

l23074D0E:
	lhu	a2,s1,+00000008
	lui	a4,00042027
	lui	a3,00042027
	addi	a4,a4,-000006D4
	addi	a3,a3,-000006D8
	c.li	a1,00000011
	c.mv	a0,s1
	jal	ra,000000002306C694
	c.beqz	a0,0000000023074D4E

l23074D2C:
	lhu	a5,s0,+00000084
	c.addi	a5,00000001
	sh	a5,s0,+00000084

l23074D36:
	lhu	a5,s0,+00000082
	c.addi	a5,00000001
	sh	a5,s0,+00000082
	c.j	0000000023074C6C

l23074D42:
	lhu	a4,s0,+00000092
	c.addi	a4,00000001
	sh	a4,s0,+00000092
	c.j	0000000023074CFE

l23074D4E:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023070142
	c.bnez	a0,0000000023074D36

l23074D58:
	beq	s2,zero,0000000023074D8C

l23074D5C:
	lw	t1,s2,+00000020
	beq	t1,zero,0000000023074C6C

l23074D64:
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
	lui	a3,00042027
	addi	a3,a3,-000006D8
	c.addi16sp	00000030
	c.jr	t1

l23074D8C:
	bne	s6,zero,0000000023074DB8

l23074D90:
	lw	a5,s4,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023074DB8

l23074DA0:
	lhu	a1,s4,+0000000C
	c.mv	a0,s1
	c.addi	a1,00000008
	c.slli	a1,10
	c.srai	a1,00000010
	jal	ra,0000000023070192
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,0000000023076E72

l23074DB8:
	lhu	a5,s0,+0000008C
	c.addi	a5,00000001
	sh	a5,s0,+0000008C
	c.j	0000000023074D36

;; udp_bind: 23074DC4
;;   Called from:
;;     2305F0EC (in dns_server_init)
;;     2306C302 (in dns_init)
;;     2306CD78 (in dhcp_inc_pcb_refcount)
;;     23074ED8 (in udp_sendto_if_src_chksum)
;;     230751BC (in udp_connect)
;;     2307668E (in lwip_netconn_do_bind)
;;     2307748C (in dhcp_server_start)
;;     230776F6 (in iperf_server_udp)
;;     23079244 (in sntp_init)
;;     23080D26 (in bl_cipstart)
udp_bind proc
	c.mv	a4,a0
	c.bnez	a1,0000000023074DD0

l23074DC8:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l23074DD0:
	c.li	a0,FFFFFFF0
	c.beqz	a4,0000000023074E22

l23074DD4:
	lui	a3,00042027
	lw	a5,a3,-000006EC
	c.mv	a0,a5

l23074DDE:
	c.bnez	a0,0000000023074E24

l23074DE0:
	c.li	t3,00000000

l23074DE2:
	c.bnez	a2,0000000023074E84

l23074DE4:
	lui	a0,0004200F
	c.lui	t1,00010000
	lhu	a2,a0,-0000033E
	c.lui	a6,00004000
	addi	a0,a0,-0000033E
	c.addi	t1,FFFFFFFF

l23074DF6:
	beq	a2,t1,0000000023074E30

l23074DFA:
	c.addi	a2,00000001
	c.slli	a2,10
	c.srli	a2,00000010

l23074E00:
	c.mv	a7,a5

l23074E02:
	bne	a7,zero,0000000023074E34

l23074E06:
	sh	a2,a0,+00000000

l23074E0A:
	c.lw	a1,0(a5)
	sh	a2,a4,+00000012
	c.sw	a4,0(a5)
	bne	t3,zero,0000000023074E20

l23074E16:
	lw	a5,a3,-000006EC
	sw	a4,a3,+00000914
	c.sw	a4,12(a5)

l23074E20:
	c.li	a0,00000000

l23074E22:
	c.jr	ra

l23074E24:
	beq	a0,a4,0000000023074E2C

l23074E28:
	c.lw	a0,12(a0)
	c.j	0000000023074DDE

l23074E2C:
	c.li	t3,00000001
	c.j	0000000023074DE2

l23074E30:
	c.lui	a2,0000C000
	c.j	0000000023074E00

l23074E34:
	lhu	t4,a7,+00000012
	bne	t4,a2,0000000023074E50

l23074E3C:
	c.addi	a6,FFFFFFFF
	c.slli	a6,10
	srli	a6,a6,00000010
	bne	a6,zero,0000000023074DF6

l23074E48:
	sh	a2,a0,+00000000

l23074E4C:
	c.li	a0,FFFFFFF8
	c.jr	ra

l23074E50:
	lw	a7,a7,+0000000C
	c.j	0000000023074E02

l23074E56:
	beq	a5,a4,0000000023074E82

l23074E5A:
	lbu	a0,a4,+00000009
	c.andi	a0,00000004
	c.beqz	a0,0000000023074E6A

l23074E62:
	lbu	a0,a5,+00000009
	c.andi	a0,00000004
	c.bnez	a0,0000000023074E82

l23074E6A:
	lhu	a0,a5,+00000012
	bne	a0,a2,0000000023074E82

l23074E72:
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	beq	a0,a6,0000000023074E4C

l23074E7C:
	beq	a6,zero,0000000023074E4C

l23074E80:
	c.beqz	a0,0000000023074E4C

l23074E82:
	c.lw	a5,12(a5)

l23074E84:
	c.bnez	a5,0000000023074E56

l23074E86:
	c.j	0000000023074E0A

;; udp_sendto_if_src_chksum: 23074E88
;;   Called from:
;;     2307504A (in udp_sendto_if_chksum)
;;     2307515A (in udp_sendto_if_src)
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
	c.beqz	a0,0000000023074EE0

l23074EA4:
	c.beqz	a1,0000000023074EE0

l23074EA6:
	c.beqz	a2,0000000023074EE0

l23074EA8:
	beq	a7,zero,0000000023074EE0

l23074EAC:
	c.beqz	a4,0000000023074EE0

l23074EAE:
	c.mv	s8,a5
	lhu	a5,a0,+00000012
	c.mv	s1,a0
	c.mv	s4,a7
	c.mv	s0,a6
	c.mv	s5,a4
	c.mv	s9,a3
	c.mv	s3,a2
	c.mv	s2,a1
	c.beqz	a5,0000000023074ED4

l23074EC4:
	lhu	a4,s2,+00000008
	c.lui	a5,00010000
	c.addi	a5,FFFFFFF7
	bgeu	a5,a4,0000000023074EFC

l23074ED0:
	c.li	s7,FFFFFFFF
	c.j	0000000023074EE0

l23074ED4:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,0000000023074DC4
	c.mv	s7,a0
	c.beqz	a0,0000000023074EC4

l23074EE0:
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

l23074EFC:
	c.li	a1,00000008
	c.mv	a0,s2
	jal	ra,000000002307013C
	beq	a0,zero,0000000023075012

l23074F08:
	addi	a2,zero,+00000280
	c.li	a1,00000008
	addi	a0,zero,+000000A2
	jal	ra,0000000023070226
	c.mv	s6,a0
	c.beqz	a0,0000000023074ED0

l23074F1A:
	lhu	a5,s2,+00000008
	c.beqz	a5,0000000023074F26

l23074F20:
	c.mv	a1,s2
	jal	ra,0000000023070498

l23074F26:
	lhu	a0,s1,+00000012
	lw	s7,s6,+00000004
	jal	ra,000000002306BC12
	sb	a0,s7,+00000000
	c.srli	a0,00000008
	sb	a0,s7,+00000001
	c.mv	a0,s9
	jal	ra,000000002306BC12
	sb	a0,s7,+00000002
	c.srli	a0,00000008
	sb	a0,s7,+00000003
	sb	zero,s7,+00000006
	sb	zero,s7,+00000007
	lbu	a5,s1,+00000010
	c.andi	a5,00000008
	c.beqz	a5,0000000023074F78

l23074F5C:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023074F78

l23074F6C:
	lbu	a5,s6,+0000000D
	ori	a5,a5,+00000004
	sb	a5,s6,+0000000D

l23074F78:
	lhu	a0,s6,+00000008
	jal	ra,000000002306BC12
	sb	a0,s7,+00000004
	c.srli	a0,00000008
	sb	a0,s7,+00000005
	lbu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,0000000023074FCC

l23074F92:
	lhu	a2,s6,+00000008
	beq	s8,zero,0000000023075016

l23074F9A:
	xori	s0,s0,-00000001
	c.mv	a5,s3
	c.mv	a4,s4
	c.li	a3,00000008
	c.li	a1,00000011
	c.mv	a0,s6
	c.slli	s0,10
	jal	ra,000000002306C792
	c.srli	s0,00000010
	c.add	a0,s0
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l23074FBC:
	c.bnez	a0,0000000023074FC2

l23074FBE:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF

l23074FC2:
	sb	a0,s7,+00000006
	c.srli	a0,00000008
	sb	a0,s7,+00000007

l23074FCC:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023075024

l23074FDC:
	lbu	a3,s1,+0000001D

l23074FE0:
	lbu	a4,s1,+0000000A
	c.mv	a6,s5
	c.li	a5,00000011
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,000000002306F328
	c.mv	s7,a0
	beq	s6,s2,0000000023074FFE

l23074FF8:
	c.mv	a0,s6
	jal	ra,00000000230701A4

l23074FFE:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+0000007C
	c.addi	a4,00000001
	sh	a4,a5,+0000007C
	c.j	0000000023074EE0

l23075012:
	c.mv	s6,s2
	c.j	0000000023074F26

l23075016:
	c.mv	a4,s3
	c.mv	a3,s4
	c.li	a1,00000011
	c.mv	a0,s6
	jal	ra,000000002306C694
	c.j	0000000023074FBC

l23075024:
	lbu	a3,s1,+0000000B
	c.j	0000000023074FE0

;; udp_sendto_if_chksum: 2307502A
;;   Called from:
;;     230750F6 (in udp_sendto_chksum)
;;     23075150 (in udp_sendto_if)
udp_sendto_if_chksum proc
	c.beqz	a0,000000002307505A

l2307502C:
	c.beqz	a1,000000002307505A

l2307502E:
	c.beqz	a2,000000002307505A

l23075030:
	c.beqz	a4,000000002307505A

l23075032:
	lw	a7,a0,+00000000
	beq	a7,zero,0000000023075046

l2307503A:
	andi	t1,a7,+000000F0
	addi	t3,zero,+000000E0
	bne	t1,t3,000000002307504E

l23075046:
	addi	a7,a4,+00000004

l2307504A:
	jal	zero,0000000023074E88

l2307504E:
	lw	t1,a4,+00000004
	bne	a7,t1,000000002307505E

l23075056:
	c.mv	a7,a0
	c.j	000000002307504A

l2307505A:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2307505E:
	c.li	a0,FFFFFFFC
	c.jr	ra

;; udp_sendto_chksum: 23075062
;;   Called from:
;;     23075128 (in udp_send_chksum)
;;     23075134 (in udp_sendto)
;;     2307690C (in lwip_netconn_do_send)
udp_sendto_chksum proc
	c.beqz	a0,0000000023075114

l23075064:
	c.beqz	a1,0000000023075114

l23075066:
	c.beqz	a2,0000000023075114

l23075068:
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
	c.beqz	a0,00000000230750B6

l2307508A:
	jal	ra,000000002306FFA4

l2307508E:
	c.bnez	a0,00000000230750D8

l23075090:
	lui	a5,00042026
	addi	a5,a5,+000007F0
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

l230750B6:
	c.lw	a2,0(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230750CC

l230750C4:
	c.mv	a0,s1
	jal	ra,000000002306ED14
	c.j	000000002307508E

l230750CC:
	lbu	a0,s0,+0000001C
	c.beqz	a0,00000000230750FA

l230750D2:
	jal	ra,000000002306FFA4

l230750D6:
	c.beqz	a0,00000000230750C4

l230750D8:
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
	jal	zero,000000002307502A

l230750FA:
	c.lw	s0,24(a5)
	c.beqz	a5,00000000230750C4

l230750FE:
	lui	a4,000230CC
	lw	a4,a4,-00000520
	beq	a5,a4,00000000230750C4

l2307510A:
	addi	a0,s0,+00000018
	jal	ra,000000002306ED14
	c.j	00000000230750D6

l23075114:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_send_chksum: 23075118
;;   Called from:
;;     23076900 (in lwip_netconn_do_send)
udp_send_chksum proc
	c.mv	a4,a2
	c.mv	a5,a3
	c.beqz	a0,000000002307512C

l2307511E:
	c.beqz	a1,000000002307512C

l23075120:
	lhu	a3,a0,+00000014
	addi	a2,a0,+00000004
	jal	zero,0000000023075062

l2307512C:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_sendto: 23075130
;;   Called from:
;;     2305F0A4 (in get_dns_request)
;;     2306BE4C (in dns_send)
;;     23075144 (in udp_send)
;;     230778D2 (in iperf_server_udp_recv_fn)
;;     230790EE (in sntp_send_request)
udp_sendto proc
	c.li	a5,00000000
	c.li	a4,00000000
	jal	zero,0000000023075062

;; udp_send: 23075138
;;   Called from:
;;     23080738 (in udp_send_data)
udp_send proc
	c.beqz	a0,0000000023075148

l2307513A:
	c.beqz	a1,0000000023075148

l2307513C:
	lhu	a3,a0,+00000014
	addi	a2,a0,+00000004
	jal	zero,0000000023075130

l23075148:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_sendto_if: 2307514C
;;   Called from:
;;     2306CF52 (in dhcp_reboot)
;;     2306D976 (in dhcp_renew)
;;     2306DABC (in dhcp_release_and_stop)
;;     2306DD0C (in dhcp_coarse_tmr)
;;     23077230 (in dhcp_server_recv)
udp_sendto_if proc
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,000000002307502A

;; udp_sendto_if_src: 23075154
;;   Called from:
;;     2306CB58 (in dhcp_discover)
;;     2306D122 (in dhcp_select)
;;     2306D860 (in dhcp_arp_reply)
udp_sendto_if_src proc
	c.mv	a7,a5
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,0000000023074E88

;; udp_bind_netif: 2307515E
;;   Called from:
;;     2306AE94 (in lwip_setsockopt_callback)
udp_bind_netif proc
	c.li	a5,00000000
	c.beqz	a1,000000002307516C

l23075162:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l2307516C:
	sb	a5,a0,+00000008
	c.jr	ra

;; udp_connect: 23075172
;;   Called from:
;;     2306CD86 (in dhcp_inc_pcb_refcount)
;;     2307673C (in lwip_netconn_do_connect)
;;     23080D42 (in bl_cipstart)
udp_connect proc
	c.li	a5,FFFFFFF0
	c.beqz	a0,00000000230751DA

l23075176:
	c.beqz	a1,00000000230751DA

l23075178:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lhu	a5,a0,+00000012
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a1
	c.beqz	a5,00000000230751B8

l2307518E:
	c.lw	s1,0(a5)
	sh	s2,s0,+00000014
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000010
	ori	a5,a5,+00000004
	sb	a5,s0,+00000010
	lui	a5,00042027
	lw	a3,a5,-000006EC
	c.mv	a4,a3

l230751AC:
	c.bnez	a4,00000000230751D2

l230751AE:
	c.sw	s0,12(a3)
	sw	s0,a5,+00000914

l230751B4:
	c.li	a5,00000000
	c.j	00000000230751C4

l230751B8:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,0000000023074DC4
	c.mv	a5,a0
	c.beqz	a0,000000002307518E

l230751C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230751D2:
	beq	a4,s0,00000000230751B4

l230751D6:
	c.lw	a4,12(a4)
	c.j	00000000230751AC

l230751DA:
	c.mv	a0,a5
	c.jr	ra

;; udp_disconnect: 230751DE
;;   Called from:
;;     2307677E (in lwip_netconn_do_disconnect)
udp_disconnect proc
	c.beqz	a0,00000000230751F6

l230751E0:
	lbu	a5,a0,+00000010
	sw	zero,a0,+00000004
	sh	zero,a0,+00000014
	c.andi	a5,FFFFFFFB
	sb	zero,a0,+00000008
	sb	a5,a0,+00000010

l230751F6:
	c.jr	ra

;; udp_recv: 230751F8
;;   Called from:
;;     2305F11A (in dns_server_init)
;;     2306C318 (in dns_init)
;;     2306CD96 (in dhcp_inc_pcb_refcount)
;;     230762FC (in lwip_netconn_do_newconn)
;;     2307749C (in dhcp_server_start)
;;     23077742 (in iperf_server_udp)
;;     230791E0 (in sntp_init)
;;     23080D56 (in bl_cipstart)
udp_recv proc
	c.beqz	a0,00000000230751FE

l230751FA:
	c.sw	a0,32(a1)
	c.sw	a0,36(a2)

l230751FE:
	c.jr	ra

;; udp_remove: 23075200
;;   Called from:
;;     2305F128 (in dns_server_init)
;;     2306D1B0 (in dhcp_dec_pcb_refcount)
;;     2307662E (in lwip_netconn_do_delconn)
;;     230774D6 (in dhcp_server_stop)
;;     2307770A (in iperf_server_udp)
;;     23080D30 (in bl_cipstart)
;;     23080FC4 (in bl_cipclose)
udp_remove proc
	c.mv	a1,a0
	c.beqz	a0,000000002307522E

l23075204:
	lui	a4,00042027
	lw	a5,a4,-000006EC
	bne	a5,a0,000000002307521E

l23075210:
	c.lw	a0,12(a5)
	sw	a5,a4,+00000914

l23075216:
	c.li	a0,00000001
	jal	zero,000000002306FB62

l2307521C:
	c.mv	a5,a4

l2307521E:
	c.beqz	a5,0000000023075216

l23075220:
	c.lw	a5,12(a4)
	c.beqz	a4,0000000023075216

l23075224:
	bne	a4,a1,000000002307521C

l23075228:
	c.lw	a1,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023075216

l2307522E:
	c.jr	ra

;; udp_new: 23075230
;;   Called from:
;;     2305F0D8 (in dns_server_init)
;;     2306CD52 (in dhcp_inc_pcb_refcount)
;;     2307525E (in udp_new_ip_type)
;;     2307746A (in dhcp_server_start)
;;     230776C0 (in iperf_server_udp)
udp_new proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,0000000023075254

l23075240:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	sb	a5,s0,+0000001D

l23075254:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_new_ip_type: 2307525E
;;   Called from:
;;     2306C2F2 (in dns_init)
;;     230762D2 (in lwip_netconn_do_newconn)
;;     230791BE (in sntp_init)
;;     23080D14 (in bl_cipstart)
udp_new_ip_type proc
	jal	zero,0000000023075230

;; udp_netif_ip_addr_changed: 23075262
;;   Called from:
;;     2306FC20 (in netif_do_set_ipaddr)
;;     2306FED4 (in netif_remove)
udp_netif_ip_addr_changed proc
	c.beqz	a0,0000000023075278

l23075264:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023075278

l23075268:
	c.beqz	a1,0000000023075278

l2307526A:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023075278

l2307526E:
	lui	a5,00042027
	lw	a5,a5,-000006EC

l23075276:
	c.bnez	a5,000000002307527A

l23075278:
	c.jr	ra

l2307527A:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,0000000023075286

l23075282:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l23075286:
	c.lw	a5,12(a5)
	c.j	0000000023075276

;; ethernet_input: 2307528A
ethernet_input proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a0,+0000000A
	c.li	a5,0000000E
	c.mv	s0,a0
	bltu	a5,a4,00000000230752B4

l230752A0:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000028
	c.addi	a4,00000001
	sh	a4,a5,+00000028
	c.j	0000000023075334

l230752B4:
	lbu	a5,a0,+0000000F
	c.mv	s2,a1
	c.bnez	a5,00000000230752C6

l230752BC:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	sb	a5,a0,+0000000F

l230752C6:
	c.lw	s0,4(a0)
	lbu	s1,a0,+0000000D
	lbu	a5,a0,+0000000C
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000000
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023075302

l230752DE:
	c.li	a4,00000001
	bne	a5,a4,0000000023075346

l230752E4:
	lbu	a5,a0,+00000001
	c.bnez	a5,0000000023075302

l230752EA:
	lbu	a4,a0,+00000002
	addi	a5,zero,+0000005E
	bne	a4,a5,0000000023075302

l230752F6:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000010

l230752FE:
	sb	a5,s0,+0000000D

l23075302:
	c.li	a5,00000008
	beq	s1,a5,0000000023075360

l23075308:
	addi	a5,zero,+00000608
	bne	s1,a5,00000000230752A0

l23075310:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,000000002307533E

l23075318:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,0000000023070142
	c.beqz	a0,0000000023075388

l23075322:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000022
	c.addi	a4,00000001
	sh	a4,a5,+00000022

l23075334:
	lhu	a4,a5,+0000001E
	c.addi	a4,00000001
	sh	a4,a5,+0000001E

l2307533E:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.j	000000002307537A

l23075346:
	lui	a1,000230CC
	c.li	a2,00000006
	addi	a1,a1,-00000514
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023075302

l23075356:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000008
	c.j	00000000230752FE

l23075360:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,000000002307533E

l23075368:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,0000000023070142
	c.bnez	a0,000000002307533E

l23075372:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306EDA0

l2307537A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23075388:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306E0E0
	c.j	000000002307537A

;; ethernet_output: 23075392
;;   Called from:
;;     2306E086 (in etharp_raw)
;;     2306E216 (in etharp_input)
;;     2306E39C (in etharp_output_to_arp_index)
;;     2306E49A (in etharp_query)
;;     2306E572 (in etharp_output)
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
	jal	ra,000000002306BC12
	c.mv	s1,a0
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002307013C
	c.lwsp	a2,000000A4
	c.bnez	a0,00000000230753F8

l230753BC:
	lw	s0,s2,+00000004
	c.mv	a1,a3
	c.li	a2,00000006
	sb	s1,s0,+0000000C
	c.srli	s1,00000008
	sb	s1,s0,+0000000D
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.mv	a1,s4
	addi	a0,s0,+00000006
	c.li	a2,00000006
	jal	ra,00000000230A382C
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

l230753F8:
	lui	a5,00042026
	addi	a5,a5,+000007F0
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

;; netconn_apimsg: 2307541C
;;   Called from:
;;     23075456 (in netconn_close_shutdown)
;;     2307548A (in netconn_new_with_proto_and_callback)
;;     230754E8 (in netconn_prepare_delete)
;;     23075540 (in netconn_getaddr)
;;     23075572 (in netconn_bind)
;;     230755A2 (in netconn_connect)
;;     230755C2 (in netconn_disconnect)
;;     230755E2 (in netconn_listen_with_backlog)
;;     23075616 (in netconn_tcp_recvd)
;;     2307563A (in netconn_send)
;;     230756E6 (in netconn_write_vectors_partly)
;;     23075962 (in netconn_recv_data_tcp)
;;     230759E2 (in netconn_join_leave_group)
netconn_apimsg proc
	c.lw	a1,0(a2)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.addi	a2,0000000C
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002306BB16
	c.bnez	a0,0000000023075432

l2307542E:
	lb	a0,s0,+00000004

l23075432:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; netconn_close_shutdown: 2307543A
;;   Called from:
;;     23075994 (in netconn_recv_data_tcp)
netconn_close_shutdown proc
	c.beqz	a0,0000000023075460

l2307543C:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	sb	a1,sp,+00000014
	c.swsp	a0,00000084
	jal	ra,000000002306A802
	c.swsp	a0,0000000C
	lui	a0,00023077
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000592
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23075460:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_new_with_proto_and_callback: 23075464
;;   Called from:
;;     2306B852 (in lwip_socket)
netconn_new_with_proto_and_callback proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.mv	s1,a1
	c.mv	a1,a2
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	jal	ra,000000002307630E
	c.mv	s0,a0
	c.beqz	a0,00000000230754C2

l2307547A:
	c.swsp	a0,00000084
	lui	a0,00023076
	c.addi4spn	a1,0000000C
	addi	a0,a0,+00000256
	sb	s1,sp,+00000014
	jal	ra,000000002307541C
	c.beqz	a0,00000000230754C2

l23075490:
	addi	s1,s0,+00000010
	c.mv	a0,s1
	jal	ra,000000002306A658
	addi	a0,s0,+00000014
	jal	ra,000000002306A658
	addi	s2,s0,+0000000C
	c.mv	a0,s2
	jal	ra,000000002306A736
	c.mv	a0,s2
	jal	ra,000000002306A71E
	c.mv	a0,s1
	jal	ra,000000002306A53A
	c.mv	a1,s0
	c.li	a0,00000007
	jal	ra,000000002306FB62
	c.li	s0,00000000

l230754C2:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

;; netconn_prepare_delete: 230754D0
;;   Called from:
;;     2306B4B6 (in lwip_close)
;;     23075504 (in netconn_delete)
netconn_prepare_delete proc
	c.beqz	a0,00000000230754F2

l230754D2:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a0,00000084
	jal	ra,000000002306A802
	c.swsp	a0,0000000C
	lui	a0,00023076
	c.addi4spn	a1,0000000C
	addi	a0,a0,+0000057A
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l230754F2:
	c.li	a0,00000000
	c.jr	ra

;; netconn_delete: 230754F6
;;   Called from:
;;     2306ABAC (in free_socket)
;;     2306B306 (in lwip_accept)
;;     2306B346 (in lwip_accept)
;;     2306B8A8 (in lwip_socket)
netconn_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000000
	c.beqz	a0,0000000023075512

l23075502:
	c.mv	s0,a0
	jal	ra,00000000230754D0
	c.mv	s1,a0
	c.bnez	a0,0000000023075512

l2307550C:
	c.mv	a0,s0
	jal	ra,00000000230763B0

l23075512:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; netconn_getaddr: 2307551E
;;   Called from:
;;     2306B33C (in lwip_accept)
;;     2306B5FE (in lwip_recvfrom)
netconn_getaddr proc
	c.beqz	a0,000000002307554A

l23075520:
	c.mv	a5,a0
	c.li	a0,FFFFFFF0
	c.beqz	a1,000000002307554E

l23075526:
	c.beqz	a2,000000002307554E

l23075528:
	c.addi16sp	FFFFFFC0
	lui	a0,00023077
	c.swsp	a1,00000088
	addi	a0,a0,-00000632
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a5,00000084
	sb	a3,sp,+0000001C
	c.swsp	a2,0000000C
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l2307554A:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2307554E:
	c.jr	ra

;; netconn_bind: 23075550
;;   Called from:
;;     2306B41E (in lwip_bind)
netconn_bind proc
	c.beqz	a0,000000002307557C

l23075552:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,0000000023075560

l23075558:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l23075560:
	c.swsp	a0,00000084
	lui	a0,00023076
	c.swsp	a1,00000088
	addi	a0,a0,+0000063C
	c.addi4spn	a1,0000000C
	sh	a2,sp,+00000018
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l2307557C:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_connect: 23075580
;;   Called from:
;;     2306B540 (in lwip_connect)
netconn_connect proc
	c.beqz	a0,00000000230755AC

l23075582:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,0000000023075590

l23075588:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l23075590:
	c.swsp	a0,00000084
	lui	a0,00023076
	c.swsp	a1,00000088
	addi	a0,a0,+000006A0
	c.addi4spn	a1,0000000C
	sh	a2,sp,+00000018
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l230755AC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_disconnect: 230755B0
;;   Called from:
;;     2306B4FA (in lwip_connect)
netconn_disconnect proc
	c.beqz	a0,00000000230755CC

l230755B2:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023076
	c.addi4spn	a1,0000000C
	addi	a0,a0,+00000762
	c.swsp	ra,0000009C
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l230755CC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_listen_with_backlog: 230755D0
;;   Called from:
;;     2306B57C (in lwip_listen)
netconn_listen_with_backlog proc
	c.beqz	a0,00000000230755EC

l230755D2:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023076
	c.addi4spn	a1,0000000C
	addi	a0,a0,+0000079C
	c.swsp	ra,0000009C
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l230755EC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_tcp_recvd: 230755F0
;;   Called from:
;;     2306AAA4 (in lwip_recv_tcp)
netconn_tcp_recvd proc
	c.beqz	a0,0000000023075620

l230755F2:
	lbu	a4,a0,+00000000
	c.li	a3,00000010
	c.mv	a5,a0
	andi	a4,a4,+000000F0
	c.li	a0,FFFFFFF0
	bne	a4,a3,0000000023075624

l23075604:
	c.addi16sp	FFFFFFC0
	lui	a0,00023077
	c.swsp	a1,00000088
	addi	a0,a0,-000006EE
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a5,00000084
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23075620:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23075624:
	c.jr	ra

;; netconn_send: 23075626
;;   Called from:
;;     2306B75E (in lwip_sendto)
netconn_send proc
	c.beqz	a0,0000000023075644

l23075628:
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000084
	lui	a0,00023077
	c.swsp	a1,00000088
	addi	a0,a0,-00000784
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l23075644:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_write_vectors_partly: 23075648
;;   Called from:
;;     2307570C (in netconn_write_partly)
netconn_write_vectors_partly proc
	c.beqz	a0,00000000230756F8

l2307564A:
	lbu	a5,a0,+00000000
	c.li	a7,00000010
	c.mv	a6,a0
	andi	a5,a5,+000000F0
	c.li	a0,FFFFFFFA
	bne	a5,a7,0000000023075692

l2307565C:
	lbu	a5,a6,+00000024
	lw	t1,a6,+0000001C
	andi	a0,a3,+00000004
	c.andi	a5,00000002
	c.or	a5,a0
	sltu	a5,zero,a5
	or	a5,a5,t1
	c.beqz	a5,0000000023075694

l23075676:
	c.li	a0,FFFFFFFA
	c.bnez	a4,0000000023075694

l2307567A:
	c.jr	ra

l2307567C:
	lw	t3,a7,+00000000
	c.addi	a7,00000008
	c.add	a5,t3
	bltu	a5,t3,00000000230756FC

l23075688:
	c.addi	a0,00000001

l2307568A:
	blt	a0,a2,000000002307567C

l2307568E:
	c.bnez	a5,00000000230756A8

l23075690:
	c.li	a0,00000000

l23075692:
	c.jr	ra

l23075694:
	addi	a7,a1,+00000004
	c.li	a0,00000000
	c.li	a5,00000000
	c.j	000000002307568A

l2307569E:
	c.li	a0,00000000

l230756A0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l230756A8:
	bge	a5,zero,00000000230756B8

l230756AC:
	c.li	a0,FFFFFFFA
	c.beqz	a4,0000000023075692

l230756B0:
	lui	a5,00080000
	xori	a5,a5,-00000001

l230756B8:
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
	beq	t1,zero,00000000230756F4

l230756D6:
	jal	ra,000000002306A802
	c.swsp	a0,00000094

l230756DC:
	lui	a0,00023077
	c.addi4spn	a1,0000000C
	addi	a0,a0,-0000068A
	jal	ra,000000002307541C
	c.bnez	a0,00000000230756A0

l230756EC:
	c.beqz	s0,000000002307569E

l230756EE:
	c.lwsp	tp,000001F4
	c.sw	s0,0(a5)
	c.j	00000000230756A0

l230756F4:
	c.swsp	zero,00000094
	c.j	00000000230756DC

l230756F8:
	c.li	a0,FFFFFFF0
	c.jr	ra

l230756FC:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; netconn_write_partly: 23075700
;;   Called from:
;;     2306B7FE (in lwip_send)
netconn_write_partly proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000004
	c.swsp	a2,00000084
	c.addi4spn	a1,00000008
	c.li	a2,00000001
	c.swsp	ra,0000008C
	jal	ra,0000000023075648
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; netconn_err: 23075716
;;   Called from:
;;     2307576A (in netconn_accept)
;;     23075820 (in netconn_recv_data)
;;     23075878 (in netconn_recv_data)
;;     23075918 (in netconn_recv_data_tcp)
;;     23076886 (in lwip_netconn_do_send)
;;     23076980 (in lwip_netconn_do_write)
netconn_err proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000000
	c.beqz	a0,0000000023075734

l23075722:
	c.mv	s0,a0
	jal	ra,000000002306A7EE
	lb	s1,s0,+00000008
	sb	zero,s0,+00000008
	jal	ra,000000002306A7FE

l23075734:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; netconn_accept: 23075740
;;   Called from:
;;     2306B2C2 (in lwip_accept)
netconn_accept proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.bnez	a1,0000000023075760

l2307574E:
	c.li	s0,FFFFFFF0

l23075750:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23075760:
	sw	zero,a1,+00000000
	c.mv	s1,a0
	c.beqz	a0,000000002307574E

l23075768:
	c.mv	s2,a1
	jal	ra,0000000023075716
	sb	a0,sp,+0000000B
	c.mv	s0,a0
	c.bnez	a0,0000000023075750

l23075776:
	addi	s3,s1,+00000014
	c.mv	a0,s3
	jal	ra,000000002306A658
	c.bnez	a0,0000000023075786

l23075782:
	c.li	s0,FFFFFFF1
	c.j	0000000023075750

l23075786:
	lbu	a5,s1,+00000024
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023075782

l23075790:
	c.andi	a5,00000002
	c.beqz	a5,00000000230757B8

l23075794:
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002306A638
	c.li	a5,FFFFFFFF
	beq	a0,a5,00000000230757E0

l230757A2:
	c.lw	s1,44(a5)
	c.bnez	a5,00000000230757CC

l230757A6:
	c.lwsp	a2,00000044
	addi	a1,sp,+0000000B
	jal	ra,000000002307621C
	c.beqz	a0,00000000230757D6

l230757B2:
	lb	s0,sp,+0000000B
	c.j	0000000023075750

l230757B8:
	c.lw	s1,32(a2)
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002306A5D8
	c.li	a5,FFFFFFFF
	bne	a0,a5,00000000230757A2

l230757C8:
	c.li	s0,FFFFFFFD
	c.j	0000000023075750

l230757CC:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s1
	c.jalr	a5
	c.j	00000000230757A6

l230757D6:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023075782

l230757DA:
	sw	a5,s2,+00000000
	c.j	0000000023075750

l230757E0:
	c.li	s0,FFFFFFF9
	c.j	0000000023075750

;; netconn_recv_data: 230757E4
;;   Called from:
;;     230758CC (in netconn_recv_udp_raw_netbuf_flags)
;;     2307592A (in netconn_recv_data_tcp)
netconn_recv_data proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	zero,00000084
	c.bnez	a1,0000000023075806

l230757F4:
	c.li	a5,FFFFFFF0

l230757F6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23075806:
	sw	zero,a1,+00000000
	c.beqz	a0,00000000230757F4

l2307580C:
	addi	s2,a0,+00000010
	c.mv	s0,a0
	c.mv	a0,s2
	c.mv	s1,a2
	c.mv	s3,a1
	jal	ra,000000002306A658
	c.bnez	a0,000000002307582C

l2307581E:
	c.mv	a0,s0
	jal	ra,0000000023075716
	c.mv	a5,a0
	c.bnez	a0,00000000230757F6

l23075828:
	c.li	a5,FFFFFFF5
	c.j	00000000230757F6

l2307582C:
	lbu	a5,s0,+00000024
	andi	a2,s1,+00000004
	c.andi	a5,00000003
	c.or	a2,a5
	c.bnez	a2,0000000023075840

l2307583A:
	lb	a5,s0,+00000008
	c.beqz	a5,000000002307588C

l23075840:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002306A638
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023075876

l2307584E:
	lbu	a5,s0,+00000000
	c.li	a4,00000010
	c.lwsp	a2,00000044
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230758B8

l2307585E:
	addi	a1,sp,+0000000B
	jal	ra,000000002307621C
	c.beqz	a0,00000000230758A0

l23075868:
	lb	a5,sp,+0000000B
	c.li	a4,FFFFFFF1
	bne	a5,a4,00000000230757F6

l23075872:
	c.li	a5,00000000
	c.j	00000000230757F6

l23075876:
	c.mv	a0,s0
	jal	ra,0000000023075716
	c.mv	a5,a0
	c.bnez	a0,00000000230757F6

l23075880:
	lbu	a5,s0,+00000024
	c.andi	a5,00000001
	c.bnez	a5,0000000023075828

l23075888:
	c.li	a5,FFFFFFF9
	c.j	00000000230757F6

l2307588C:
	c.lw	s0,32(a2)
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002306A5D8
	c.li	a4,FFFFFFFF
	c.li	a5,FFFFFFFD
	bne	a0,a4,000000002307584E

l2307589E:
	c.j	00000000230757F6

l230758A0:
	c.lwsp	a2,000000E4

l230758A2:
	lhu	a2,a5,+00000008
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230758B0

l230758AA:
	c.li	a1,00000001
	c.mv	a0,s0
	c.jalr	a5

l230758B0:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000000
	c.j	0000000023075872

l230758B8:
	c.lw	a0,0(a5)
	c.j	00000000230758A2

;; netconn_recv_udp_raw_netbuf_flags: 230758BC
;;   Called from:
;;     2306AC02 (in lwip_recvfrom_udp_raw.isra.6)
netconn_recv_udp_raw_netbuf_flags proc
	c.beqz	a0,00000000230758D0

l230758BE:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230758D0

l230758CC:
	jal	zero,00000000230757E4

l230758D0:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_recv_data_tcp: 230758D4
;;   Called from:
;;     230759AC (in netconn_recv_tcp_pbuf_flags)
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
	jal	ra,000000002306A658
	c.li	s1,FFFFFFF5
	c.beqz	a0,0000000023075980

l230758F0:
	lbu	a5,s0,+00000024
	slli	a4,a5,00000018
	c.srai	a4,00000018
	bge	a4,zero,0000000023075924

l230758FE:
	andi	a5,a5,+0000007F
	sb	a5,s0,+00000024

l23075906:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075912

l2307590A:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	c.jalr	a5

l23075912:
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023075990

l23075916:
	c.mv	a0,s0
	jal	ra,0000000023075716
	c.mv	s1,a0
	c.bnez	a0,0000000023075980

l23075920:
	c.li	s1,FFFFFFF2
	c.j	0000000023075980

l23075924:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230757E4
	c.mv	s1,a0
	c.bnez	a0,0000000023075980

l23075932:
	andi	a5,s2,+00000008
	lw	s3,s3,+00000000
	c.bnez	a5,0000000023075966

l2307593C:
	c.li	a4,00000001
	beq	s3,zero,0000000023075946

l23075942:
	lhu	a4,s3,+00000008

l23075946:
	lbu	a5,s0,+00000000
	c.li	a3,00000010
	andi	a5,a5,+000000F0
	bne	a5,a3,0000000023075966

l23075954:
	lui	a0,00023077
	c.addi4spn	a1,0000000C
	addi	a0,a0,-000006EE
	c.swsp	s0,00000084
	c.swsp	a4,00000088
	jal	ra,000000002307541C

l23075966:
	bne	s3,zero,0000000023075980

l2307596A:
	andi	s2,s2,+00000010
	beq	s2,zero,0000000023075906

l23075972:
	lbu	a5,s0,+00000024
	c.li	s1,FFFFFFF9
	ori	a5,a5,-00000080
	sb	a5,s0,+00000024

l23075980:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l23075990:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002307543A
	c.li	s1,FFFFFFF1
	c.j	0000000023075980

;; netconn_recv_tcp_pbuf_flags: 2307599C
;;   Called from:
;;     2306AAB0 (in lwip_recv_tcp)
netconn_recv_tcp_pbuf_flags proc
	c.beqz	a0,00000000230759B0

l2307599E:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230759B0

l230759AC:
	jal	zero,00000000230758D4

l230759B0:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_join_leave_group: 230759B4
;;   Called from:
;;     2306B4A8 (in lwip_close)
netconn_join_leave_group proc
	c.beqz	a0,00000000230759EC

l230759B6:
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,00000000230759C4

l230759BC:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l230759C4:
	c.bnez	a2,00000000230759CE

l230759C6:
	lui	a2,000230CC
	addi	a2,a2,-00000524

l230759CE:
	c.swsp	a0,00000084
	lui	a0,00023077
	c.swsp	a1,00000088
	addi	a0,a0,-00000520
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000000C
	sb	a3,sp,+0000001D
	jal	ra,000000002307541C
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l230759EC:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; netconn_gethostbyname: 230759F0
;;   Called from:
;;     2306A814 (in lwip_gethostbyname)
netconn_gethostbyname proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.li	s0,FFFFFFF0
	c.beqz	a0,0000000023075A38

l230759FA:
	c.beqz	a1,0000000023075A38

l230759FC:
	c.mv	a5,a0
	addi	a4,sp,+0000000B
	c.addi4spn	a0,0000000C
	c.swsp	a1,00000088
	c.li	a1,00000000
	c.swsp	a4,0000008C
	c.swsp	a0,0000000C
	c.swsp	a5,00000008
	jal	ra,000000002306A666
	sb	a0,sp,+0000000B
	c.mv	s0,a0
	c.bnez	a0,0000000023075A38

l23075A1A:
	c.lwsp	s8,00000084
	lui	a0,00023077
	c.addi4spn	a1,00000010
	addi	a0,a0,-000004CE
	jal	ra,000000002306BB16
	c.mv	s0,a0
	c.lwsp	s8,00000044
	jal	ra,000000002306A71E
	c.bnez	s0,0000000023075A38

l23075A34:
	lb	s0,sp,+0000000B

l23075A38:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; lwip_netconn_do_dns_found: 23075A42
lwip_netconn_do_dns_found proc
	c.lw	a2,12(a5)
	c.bnez	a1,0000000023075A52

l23075A46:
	c.li	a4,FFFFFFFA
	sb	a4,a5,+00000000

l23075A4C:
	c.lw	a2,8(a0)
	jal	zero,000000002306A7AC

l23075A52:
	sb	zero,a5,+00000000
	c.lw	a2,4(a5)
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)
	c.j	0000000023075A4C

;; recv_udp: 23075A5E
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
	c.bnez	a0,0000000023075A88

l23075A72:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	jal	zero,00000000230701A4

l23075A88:
	addi	s3,a0,+00000010
	c.mv	s1,a0
	c.mv	a0,s3
	c.mv	s4,a3
	c.mv	s5,a4
	jal	ra,000000002306A658
	c.beqz	a0,0000000023075A72

l23075A9A:
	c.li	a0,00000006
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,0000000023075A72

l23075AA4:
	sw	s2,a0,+00000000
	sw	s2,a0,+00000004
	c.li	a5,00000000
	beq	s4,zero,0000000023075AB6

l23075AB2:
	lw	a5,s4,+00000000

l23075AB6:
	c.sw	s0,8(a5)
	sh	s5,s0,+0000000C
	lhu	a2,s2,+00000008
	c.mv	a1,s0
	c.mv	a0,s3
	c.swsp	a2,00000084
	jal	ra,000000002306A5A2
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023075AE4

l23075ACE:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,0000000023076B9E

l23075AE4:
	lw	t1,s1,+0000002C
	beq	t1,zero,0000000023075B02

l23075AEC:
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

l23075B02:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; setup_tcp: 23075B14
;;   Called from:
;;     23075B92 (in lwip_netconn_do_connected)
;;     23076296 (in lwip_netconn_do_newconn)
;;     23076520 (in accept_function)
;;     230766E0 (in lwip_netconn_do_connect)
setup_tcp proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,4(s0)
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023070F4C
	lui	a1,00023076
	c.mv	a0,s0
	addi	a1,a1,+000001A2
	jal	ra,0000000023070F52
	lui	a1,00023076
	c.mv	a0,s0
	addi	a1,a1,+00000138
	jal	ra,0000000023070F5A
	lui	a1,00023076
	c.mv	a0,s0
	addi	a1,a1,+0000003C
	c.li	a2,00000002
	jal	ra,0000000023070F7A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023076
	addi	a1,a1,-0000042E
	c.addi	sp,00000010
	jal	zero,0000000023070F62

;; lwip_netconn_do_connected: 23075B64
lwip_netconn_do_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	s0,FFFFFFFA
	c.beqz	a0,0000000023075BC4

l23075B72:
	c.lw	a0,40(s1)
	c.beqz	s1,0000000023075B80

l23075B76:
	sb	a2,s1,+00000004
	c.lw	a0,40(a5)
	c.lw	a5,0(s1)
	c.addi	s1,0000000C

l23075B80:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	c.mv	s0,a0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023075B96

l23075B90:
	c.bnez	a2,0000000023075B96

l23075B92:
	jal	ra,0000000023075B14

l23075B96:
	lbu	a5,s0,+00000024
	sw	zero,s0,+00000028
	sb	zero,s0,+00000001
	andi	s2,a5,+00000004
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075BB8

l23075BB0:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l23075BB8:
	c.li	s0,00000000
	bne	s2,zero,0000000023075BC4

l23075BBE:
	c.mv	a0,s1
	jal	ra,000000002306A7AC

l23075BC4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; err_tcp: 23075BD2
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
	jal	ra,000000002306A7EE
	lbu	a5,s0,+00000024
	lbu	s2,s0,+00000001
	sw	zero,s0,+00000004
	ori	a5,a5,+00000001
	sb	a5,s0,+00000024
	sb	s1,s0,+00000008
	sb	zero,s0,+00000001
	jal	ra,000000002306A7FE
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075C14

l23075C0C:
	c.li	a2,00000000
	c.li	a1,00000004
	c.mv	a0,s0
	c.jalr	a5

l23075C14:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075C20

l23075C18:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5

l23075C20:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075C2C

l23075C24:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l23075C2C:
	addi	a5,s1,+0000000F
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	c.li	s3,00000000
	bltu	a4,a5,0000000023075C4C

l23075C3C:
	lui	a4,000230C3
	c.slli	a5,02
	addi	a4,a4,+000007C4
	c.add	a5,a4
	lw	s3,a5,+00000000

l23075C4C:
	addi	s4,s0,+00000010
	c.mv	a0,s4
	jal	ra,000000002306A658
	c.beqz	a0,0000000023075C60

l23075C58:
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002306A5A2

l23075C60:
	addi	s4,s0,+00000014
	c.mv	a0,s4
	jal	ra,000000002306A658
	c.beqz	a0,0000000023075C74

l23075C6C:
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002306A5A2

l23075C74:
	c.li	a4,00000001
	beq	s2,a4,0000000023075C86

l23075C7A:
	addi	a5,s2,-00000003
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023075CC8

l23075C86:
	lbu	a5,s0,+00000024
	andi	a4,a5,-00000005
	sb	a4,s0,+00000024
	c.andi	a5,00000004
	c.bnez	a5,0000000023075CC8

l23075C96:
	c.li	a4,00000004
	c.lw	s0,40(a5)
	bne	s2,a4,0000000023075CA0

l23075C9E:
	c.li	s1,00000000

l23075CA0:
	sb	s1,a5,+00000004
	c.lw	s0,40(a5)
	c.lw	a5,0(s1)
	c.addi	s1,0000000C
	c.mv	a0,s1
	jal	ra,000000002306A736
	sw	zero,s0,+00000028
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002306A7AC

l23075CC8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; lwip_netconn_do_writemore: 23075CD8
;;   Called from:
;;     2307604E (in poll_tcp)
;;     23076150 (in sent_tcp)
;;     230769B6 (in lwip_netconn_do_write)
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
	c.beqz	a5,0000000023075D3A

l23075D0A:
	jal	ra,000000002306A802
	c.lw	s0,40(a4)
	c.lw	a4,32(a5)
	c.sub	a0,a5
	c.lw	s0,28(a5)
	blt	a0,a5,0000000023075D3A

l23075D1A:
	c.lw	a4,24(a5)

l23075D1C:
	c.li	s1,FFFFFFF9
	c.beqz	a5,0000000023075D22

l23075D20:
	c.li	s1,00000000

l23075D22:
	c.lw	s0,40(a5)
	c.lw	a5,0(a0)
	sb	s1,a5,+00000004
	sw	zero,s0,+00000028
	sb	zero,s0,+00000001
	c.addi	a0,0000000C
	jal	ra,000000002306A7AC
	c.j	0000000023075E92

l23075D3A:
	c.lui	s5,00010000
	addi	s7,s5,-00000001
	c.li	s8,00000001

l23075D42:
	c.lw	s0,40(a4)
	c.lw	a4,8(a5)
	c.lw	a4,16(a3)
	c.lw	a5,0(a1)
	c.lw	a5,4(a5)
	c.add	a1,a3
	c.sub	a5,a3
	bltu	a5,s5,0000000023075DB6

l23075D54:
	ori	s3,s3,+00000002
	c.mv	s2,s7

l23075D5A:
	c.lw	s0,4(a0)
	lhu	a3,a0,+00000064
	bgeu	a3,s2,0000000023075DC8

l23075D64:
	beq	s4,zero,0000000023075DC0

l23075D68:
	c.bnez	a3,0000000023075DC4

l23075D6A:
	c.lw	a4,24(a5)
	c.li	s1,FFFFFFF9
	c.beqz	a5,0000000023075D72

l23075D70:
	c.li	s1,00000000

l23075D72:
	c.lw	s0,40(a5)
	c.lw	a5,24(a4)
	c.lw	a5,20(a5)
	bgeu	a4,a5,0000000023075E4A

l23075D7C:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075D88

l23075D80:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	c.jalr	a5

l23075D88:
	lbu	a5,s0,+00000024
	ori	a5,a5,+00000010
	sb	a5,s0,+00000024

l23075D94:
	c.bnez	s1,0000000023075E72

l23075D96:
	c.lw	s0,40(a5)
	c.li	s1,00000001
	c.lw	a5,24(a4)
	c.lw	a5,20(a5)
	beq	a4,a5,0000000023075DA6

l23075DA2:
	sltu	s1,zero,s4

l23075DA6:
	c.lw	s0,4(a0)
	jal	ra,000000002307427C
	c.li	a5,FFFFFFFC
	bne	a0,a5,0000000023075E8E

l23075DB2:
	c.li	s1,FFFFFFFC
	c.j	0000000023075D22

l23075DB6:
	slli	s2,a5,00000010
	srli	s2,s2,00000010
	c.j	0000000023075D5A

l23075DC0:
	ori	s3,s3,+00000002

l23075DC4:
	c.mv	s2,a3
	c.j	0000000023075DD0

l23075DC8:
	bne	s2,s7,0000000023075DD0

l23075DCC:
	bgeu	a5,s5,0000000023075DE2

l23075DD0:
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	s6,00000000
	bne	a5,s2,0000000023075DE8

l23075DDA:
	lhu	a5,a4,+0000000C
	bgeu	s8,a5,0000000023075DE8

l23075DE2:
	ori	s3,s3,+00000002
	c.li	s6,00000001

l23075DE8:
	c.mv	a3,s3
	c.mv	a2,s2
	jal	ra,0000000023073960
	c.mv	s1,a0
	c.bnez	a0,0000000023075E36

l23075DF4:
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
	bne	a3,a4,0000000023075E30

l23075E12:
	lhu	a4,a5,+0000000C
	c.addi	a4,FFFFFFFF
	sh	a4,a5,+0000000C
	c.lw	s0,40(a5)
	lhu	a4,a5,+0000000C
	c.beqz	a4,0000000023075E30

l23075E24:
	c.lw	a5,8(a4)
	c.addi	a4,00000008
	c.sw	a5,8(a4)
	c.lw	s0,40(a5)
	sw	zero,a5,+00000010

l23075E30:
	bne	s6,zero,0000000023075D42

l23075E34:
	c.j	0000000023075E46

l23075E36:
	addi	a5,a0,+00000001
	andi	a5,a5,+000000FF
	c.li	a4,00000001
	bltu	a4,a5,0000000023075D22

l23075E44:
	c.li	s1,FFFFFFFF

l23075E46:
	bne	s4,zero,0000000023075D72

l23075E4A:
	c.lw	s0,4(a4)
	c.lui	a5,00001000
	addi	a5,a5,-00000540
	lhu	a3,a4,+00000064
	bgeu	a5,a3,0000000023075E64

l23075E5A:
	lhu	a4,a4,+00000066
	c.li	a5,00000007
	bgeu	a5,a4,0000000023075D94

l23075E64:
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023075D94

l23075E68:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023075D94

l23075E72:
	c.li	a5,FFFFFFFF
	bne	s1,a5,0000000023075D22

l23075E78:
	c.lw	s0,4(a0)
	jal	ra,000000002307427C
	c.li	a5,FFFFFFFC
	beq	a0,a5,0000000023075DB2

l23075E84:
	beq	s4,zero,0000000023075E92

l23075E88:
	c.lw	s0,40(a5)
	c.lw	a5,24(a5)
	c.j	0000000023075D1C

l23075E8E:
	bne	s1,zero,0000000023075D20

l23075E92:
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

;; lwip_netconn_do_close_internal: 23075EAC
;;   Called from:
;;     2307609A (in poll_tcp)
;;     23076198 (in sent_tcp)
;;     230765FE (in lwip_netconn_do_delconn)
;;     23076ADC (in lwip_netconn_do_close)
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
	beq	a5,a4,0000000023075F00

l23075ED6:
	beq	s6,zero,0000000023075EF2

l23075EDA:
	lbu	a4,s0,+00000014
	c.li	a3,00000001
	addi	a5,a4,-00000005
	andi	a5,a5,+000000FF
	bgeu	a3,a5,0000000023075F00

l23075EEC:
	c.li	a5,00000008
	beq	a4,a5,0000000023075F00

l23075EF2:
	c.li	s4,00000000
	beq	s3,zero,0000000023075F0A

l23075EF8:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000010
	c.beqz	a5,0000000023075F0A

l23075F00:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F4C
	c.li	s4,00000001

l23075F0A:
	lbu	a4,s0,+00000014
	c.li	a5,00000001
	bne	a4,a5,0000000023075F2C

l23075F14:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F6A
	bne	s4,zero,0000000023075F62

l23075F20:
	c.mv	a2,s3
	c.mv	a1,s6
	c.mv	a0,s0
	jal	ra,00000000230718F0
	c.j	0000000023075F68

l23075F2C:
	beq	s6,zero,0000000023075F40

l23075F30:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F52
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F6A

l23075F40:
	beq	s3,zero,0000000023075F4C

l23075F44:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F5A

l23075F4C:
	beq	s4,zero,0000000023075F20

l23075F50:
	c.li	a1,00000000
	c.mv	a0,s0
	c.li	a2,00000000
	jal	ra,0000000023070F7A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F62

l23075F62:
	c.mv	a0,s0
	jal	ra,0000000023071764

l23075F68:
	c.mv	s2,a0
	c.beqz	a0,0000000023075F9A

l23075F6C:
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023075F9A

l23075F72:
	lw	s5,s1,+0000001C
	blt	zero,s5,0000000023075F80

l23075F7A:
	c.lui	s5,00001000
	addi	s5,s5,+00000388

l23075F80:
	jal	ra,000000002306A802
	c.lw	s1,40(a5)
	c.lw	a5,12(a5)
	c.sub	a0,a5
	blt	a0,s5,0000000023076002

l23075F8E:
	beq	s4,zero,0000000023075F9A

l23075F92:
	c.mv	a0,s0
	jal	ra,0000000023071378
	c.li	s2,00000000

l23075F9A:
	c.lw	s1,40(a5)
	c.lw	a5,0(s0)
	sb	s2,a5,+00000004
	sw	zero,s1,+00000028
	sb	zero,s1,+00000001
	c.addi	s0,0000000C
	bne	s2,zero,0000000023075FE4

l23075FB0:
	beq	s4,zero,0000000023075FC4

l23075FB4:
	c.lw	s1,44(a5)
	sw	zero,s1,+00000004
	c.beqz	a5,0000000023075FC4

l23075FBC:
	c.li	a2,00000000
	c.li	a1,00000004
	c.mv	a0,s1
	c.jalr	a5

l23075FC4:
	beq	s6,zero,0000000023075FD4

l23075FC8:
	c.lw	s1,44(a5)
	c.beqz	a5,0000000023075FD4

l23075FCC:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5

l23075FD4:
	beq	s3,zero,0000000023075FE4

l23075FD8:
	c.lw	s1,44(a5)
	c.beqz	a5,0000000023075FE4

l23075FDC:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s1
	c.jalr	a5

l23075FE4:
	c.mv	a0,s0
	jal	ra,000000002306A7AC
	c.li	s2,00000000

l23075FEC:
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

l23076002:
	beq	s3,zero,0000000023076014

l23076006:
	lui	a1,00023076
	addi	a1,a1,+00000138
	c.mv	a0,s0
	jal	ra,0000000023070F5A

l23076014:
	lui	a1,00023076
	c.li	a2,00000001
	c.mv	a0,s0
	addi	a1,a1,+0000003C
	jal	ra,0000000023070F7A
	lui	a1,00023076
	c.mv	a0,s0
	addi	a1,a1,-0000042E
	jal	ra,0000000023070F62
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023070F4C
	c.j	0000000023075FEC

;; poll_tcp: 2307603C
poll_tcp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	c.mv	s0,a0
	bne	a5,a4,0000000023076094

l2307604E:
	jal	ra,0000000023075CD8

l23076052:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,000000002307608A

l2307605C:
	c.lw	s0,4(a4)
	c.beqz	a4,000000002307608A

l23076060:
	lhu	a2,a4,+00000064
	c.lui	a3,00001000
	addi	a3,a3,-00000540
	bgeu	a3,a2,000000002307608A

l2307606E:
	lhu	a3,a4,+00000066
	c.li	a4,00000007
	bltu	a4,a3,000000002307608A

l23076078:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,000000002307608A

l23076082:
	c.li	a2,00000000
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l2307608A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23076094:
	c.li	a4,00000004
	bne	a5,a4,0000000023076052

l2307609A:
	jal	ra,0000000023075EAC
	c.j	0000000023076052

;; recv_raw: 230760A0
recv_raw proc
	c.beqz	a0,0000000023076134

l230760A2:
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
	jal	ra,000000002306A658
	c.lwsp	a2,00000084
	c.beqz	a0,00000000230760E2

l230760C4:
	addi	a1,zero,+00000280
	c.li	a0,00000000
	jal	ra,00000000230706B4
	c.mv	s2,a0
	c.beqz	a0,00000000230760E2

l230760D2:
	c.li	a0,00000006
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.bnez	a0,00000000230760F4

l230760DC:
	c.mv	a0,s2
	jal	ra,00000000230701A4

l230760E2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l230760F4:
	sw	s2,a0,+00000000
	sw	s2,a0,+00000004
	lui	a5,00042027
	lw	a5,a5,-000006D8
	c.mv	a1,a0
	c.sw	a0,8(a5)
	lbu	a5,s3,+00000010
	sh	a5,a0,+0000000C
	lhu	a2,s2,+00000008
	c.mv	a0,s4
	c.swsp	a2,00000084
	jal	ra,000000002306A5A2
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023076128

l23076120:
	c.mv	a0,s0
	jal	ra,0000000023076B9E
	c.j	00000000230760E2

l23076128:
	c.lw	s1,44(a5)
	c.beqz	a5,00000000230760E2

l2307612C:
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5
	c.j	00000000230760E2

l23076134:
	c.li	a0,00000000
	c.jr	ra

;; sent_tcp: 23076138
sent_tcp proc
	c.beqz	a0,000000002307619E

l2307613A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	c.mv	s0,a0
	c.mv	s1,a2
	bne	a5,a4,0000000023076192

l23076150:
	jal	ra,0000000023075CD8

l23076154:
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023076186

l23076158:
	lhu	a3,a5,+00000064
	c.lui	a4,00001000
	addi	a4,a4,-00000540
	bgeu	a4,a3,0000000023076186

l23076166:
	lhu	a4,a5,+00000066
	c.li	a5,00000007
	bltu	a5,a4,0000000023076186

l23076170:
	lbu	a5,s0,+00000024
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	c.lw	s0,44(a5)
	c.beqz	a5,0000000023076186

l2307617E:
	c.mv	a2,s1
	c.li	a1,00000002
	c.mv	a0,s0
	c.jalr	a5

l23076186:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23076192:
	c.li	a4,00000004
	bne	a5,a4,0000000023076154

l23076198:
	jal	ra,0000000023075EAC
	c.j	0000000023076154

l2307619E:
	c.li	a0,00000000
	c.jr	ra

;; recv_tcp: 230761A2
recv_tcp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,FFFFFFFA
	c.beqz	a0,00000000230761C8

l230761B2:
	addi	s2,a0,+00000010
	c.mv	s1,a0
	c.mv	a0,s2
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,000000002306A658
	c.bnez	a0,00000000230761EA

l230761C4:
	c.bnez	s0,00000000230761D8

l230761C6:
	c.li	s0,00000000

l230761C8:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230761D8:
	lhu	a1,s0,+00000008
	c.mv	a0,s3
	jal	ra,0000000023070E84
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.j	00000000230761C6

l230761EA:
	c.beqz	s0,000000002307620C

l230761EC:
	lhu	a2,s0,+00000008

l230761F0:
	c.mv	a1,s0
	c.mv	a0,s2
	c.swsp	a2,00000084
	jal	ra,000000002306A5A2
	c.mv	s0,a0
	c.bnez	a0,0000000023076218

l230761FE:
	c.lw	s1,44(a5)
	c.beqz	a5,00000000230761C6

l23076202:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5
	c.j	00000000230761C8

l2307620C:
	lui	s0,000230CC
	addi	s0,s0,-00000505
	c.li	a2,00000000
	c.j	00000000230761F0

l23076218:
	c.li	s0,FFFFFFFF
	c.j	00000000230761C8

;; lwip_netconn_is_err_msg: 2307621C
;;   Called from:
;;     230757AC (in netconn_accept)
;;     23075862 (in netconn_recv_data)
;;     2307644A (in netconn_drain)
;;     23076464 (in netconn_drain)
lwip_netconn_is_err_msg proc
	lui	a5,000230CC
	addi	a5,a5,-00000506
	bne	a0,a5,0000000023076234

l23076228:
	c.li	a5,FFFFFFF3

l2307622A:
	sb	a5,a1,+00000000
	c.li	a5,00000001

l23076230:
	c.mv	a0,a5
	c.jr	ra

l23076234:
	lui	a5,000230CC
	addi	a5,a5,-00000504
	bne	a0,a5,0000000023076244

l23076240:
	c.li	a5,FFFFFFF2
	c.j	000000002307622A

l23076244:
	lui	a4,000230CC
	addi	a4,a4,-00000505
	c.li	a5,00000000
	bne	a0,a4,0000000023076230

l23076252:
	c.li	a5,FFFFFFF1
	c.j	000000002307622A

;; lwip_netconn_do_newconn: 23076256
lwip_netconn_do_newconn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(s1)
	sb	zero,a0,+00000004
	c.mv	s0,a0
	c.lw	s1,4(a5)
	c.bnez	a5,00000000230762C0

l2307626A:
	lbu	a5,s1,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230762D0

l2307627A:
	addi	a4,zero,+00000040
	beq	a5,a4,000000002307629C

l23076282:
	c.li	a4,00000010
	bne	a5,a4,0000000023076302

l23076288:
	c.li	a0,00000000
	jal	ra,000000002307161E
	c.sw	s1,4(a0)
	c.lw	s0,0(a0)
	c.lw	a0,4(a5)
	c.beqz	a5,000000002307630A

l23076296:
	jal	ra,0000000023075B14
	c.j	00000000230762BA

l2307629C:
	lbu	a1,a0,+00000008
	c.li	a0,00000000
	jal	ra,0000000023070B60
	c.sw	s1,4(a0)
	c.lw	s0,0(a2)
	c.lw	a2,4(a0)
	c.beqz	a0,000000002307630A

l230762AE:
	lui	a1,00023076
	addi	a1,a1,+000000A0
	jal	ra,0000000023070948

l230762BA:
	c.lw	s0,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,000000002307630A

l230762C0:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l230762D0:
	c.li	a0,00000000
	jal	ra,000000002307525E
	c.sw	s1,4(a0)
	c.lw	s0,0(a4)
	c.lw	a4,4(a5)
	c.beqz	a5,000000002307630A

l230762DE:
	lbu	a3,a4,+00000000
	addi	a4,zero,+00000022
	bne	a3,a4,00000000230762F0

l230762EA:
	c.li	a4,00000001
	sb	a4,a5,+00000010

l230762F0:
	c.lw	s0,0(a2)
	lui	a1,00023076
	addi	a1,a1,-000005A2
	c.lw	a2,4(a0)
	jal	ra,00000000230751F8
	c.j	00000000230762BA

l23076302:
	c.li	a5,FFFFFFFA

l23076304:
	sb	a5,s0,+00000004
	c.j	00000000230762C0

l2307630A:
	c.li	a5,FFFFFFFF
	c.j	0000000023076304

;; netconn_alloc: 2307630E
;;   Called from:
;;     23075472 (in netconn_new_with_proto_and_callback)
;;     230764F4 (in accept_function)
netconn_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000007
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,00000000230763A2

l23076326:
	sb	zero,a0,+00000008
	sb	s1,a0,+00000000
	sw	zero,a0,+00000004
	addi	a5,zero,+00000020
	andi	a0,s1,+000000F0
	beq	a0,a5,000000002307634C

l2307633E:
	addi	a5,zero,+00000040
	beq	a0,a5,000000002307637A

l23076346:
	c.li	a5,00000010
	bne	a0,a5,000000002307636E

l2307634C:
	addi	a1,zero,+000007D0

l23076350:
	addi	s1,s0,+00000010
	c.mv	a0,s1
	jal	ra,000000002306A4F0
	c.bnez	a0,000000002307636E

l2307635C:
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,000000002306A666
	c.beqz	a0,000000002307637E

l23076368:
	c.mv	a0,s1
	jal	ra,000000002306A53A

l2307636E:
	c.mv	a1,s0
	c.li	a0,00000007
	jal	ra,000000002306FB62
	c.li	s0,00000000
	c.j	00000000230763A2

l2307637A:
	c.li	a1,00000000
	c.j	0000000023076350

l2307637E:
	addi	a0,s0,+00000014
	jal	ra,000000002306A660
	c.li	a5,FFFFFFFF
	sb	zero,s0,+00000001
	c.sw	s0,24(a5)
	sw	s2,s0,+0000002C
	sw	zero,s0,+00000028
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sb	zero,s0,+00000024

l230763A2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; netconn_free: 230763B0
;;   Called from:
;;     2307550E (in netconn_delete)
;;     2307647E (in netconn_drain)
;;     23076574 (in accept_function)
netconn_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002306A658
	addi	a0,s0,+00000014
	jal	ra,000000002306A658
	addi	s1,s0,+0000000C
	c.mv	a0,s1
	jal	ra,000000002306A71E
	c.mv	a0,s1
	jal	ra,000000002306A73E
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002306FB62

;; netconn_drain: 230763E8
;;   Called from:
;;     2307646E (in netconn_drain)
;;     230765BE (in lwip_netconn_do_delconn)
;;     23076AC4 (in lwip_netconn_do_close)
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
	jal	ra,000000002306A658
	c.beqz	a0,000000002307641E

l23076402:
	c.li	s2,FFFFFFFF
	c.li	s3,00000010

l23076406:
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002306A638
	bne	a0,s2,0000000023076438

l23076412:
	c.mv	a0,s1
	jal	ra,000000002306A53A
	c.mv	a0,s1
	jal	ra,000000002306A660

l2307641E:
	c.addi	s0,00000014
	c.mv	a0,s0
	jal	ra,000000002306A658
	c.li	s2,FFFFFFFF
	c.bnez	a0,0000000023076482

l2307642A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23076438:
	lbu	a5,s0,+00000000
	c.lwsp	a2,00000044
	andi	a5,a5,+000000F0
	bne	a5,s3,0000000023076458

l23076446:
	addi	a1,sp,+0000000B
	jal	ra,000000002307621C
	c.bnez	a0,0000000023076406

l23076450:
	c.lwsp	a2,00000044
	jal	ra,00000000230701A4
	c.j	0000000023076406

l23076458:
	jal	ra,0000000023076B9E
	c.j	0000000023076406

l2307645E:
	c.lwsp	a2,00000044
	addi	a1,sp,+0000000B
	jal	ra,000000002307621C
	c.bnez	a0,0000000023076482

l2307646A:
	c.lwsp	a2,00000024
	c.mv	a0,s1
	c.jal	00000000230763E8
	c.lw	s1,4(a0)
	c.beqz	a0,000000002307647C

l23076474:
	jal	ra,0000000023071378
	sw	zero,s1,+00000004

l2307647C:
	c.mv	a0,s1
	jal	ra,00000000230763B0

l23076482:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306A638
	bne	a0,s2,000000002307645E

l2307648E:
	c.mv	a0,s0
	jal	ra,000000002306A53A
	c.mv	a0,s0
	jal	ra,000000002306A660
	c.j	000000002307642A

;; accept_function: 2307649C
accept_function proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a0,00000000230764BC

l230764AA:
	c.li	s2,FFFFFFFA

l230764AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230764BC:
	addi	s2,a0,+00000014
	c.mv	s0,a0
	c.mv	a0,s2
	c.mv	s3,a1
	jal	ra,000000002306A658
	c.beqz	a0,00000000230764AA

l230764CC:
	bne	s3,zero,00000000230764EE

l230764D0:
	lui	a1,000230CC
	addi	a1,a1,-00000506
	c.mv	a0,s2
	jal	ra,000000002306A5A2
	c.bnez	a0,00000000230764AA

l230764E0:
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230764AA

l230764E4:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5
	c.j	00000000230764AA

l230764EE:
	c.lw	s0,44(a1)
	lbu	a0,s0,+00000000
	jal	ra,000000002307630E
	c.mv	s1,a0
	c.bnez	a0,000000002307651C

l230764FC:
	lui	a1,000230CC
	c.mv	a0,s2
	addi	a1,a1,-00000506
	jal	ra,000000002306A5A2
	c.li	s2,FFFFFFFF
	c.bnez	a0,00000000230764AC

l2307650E:
	c.lw	s0,44(a5)
	c.beqz	a5,00000000230764AC

l23076512:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	c.jalr	a5
	c.j	00000000230764AC

l2307651C:
	sw	s3,a0,+00000004
	jal	ra,0000000023075B14
	c.mv	a0,s2
	c.mv	a1,s1
	jal	ra,000000002306A5A2
	c.mv	s2,a0
	c.beqz	a0,000000002307650E

l23076530:
	c.lw	s1,4(s0)
	c.li	a1,00000000
	c.li	s2,FFFFFFFF
	c.mv	a0,s0
	jal	ra,0000000023070F4C
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023070F52
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023070F5A
	c.li	a2,00000000
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023070F7A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F62
	addi	s0,s1,+00000010
	c.mv	a0,s0
	sw	zero,s1,+00000004
	jal	ra,000000002306A53A
	c.mv	a0,s0
	jal	ra,000000002306A660
	c.mv	a0,s1
	jal	ra,00000000230763B0
	c.j	00000000230764AC

;; lwip_netconn_do_delconn: 2307657A
lwip_netconn_do_delconn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lbu	a5,a0,+00000001
	andi	a4,a5,+000000FD
	c.beqz	a4,00000000230765BA

l2307658E:
	c.li	a4,00000003
	bne	a5,a4,000000002307659C

l23076594:
	lbu	a5,a0,+00000024
	c.andi	a5,00000004
	c.bnez	a5,00000000230765BA

l2307659C:
	c.li	a5,FFFFFFFB
	sb	a5,s0,+00000004

l230765A2:
	c.lw	s0,0(a0)
	c.addi	a0,0000000C
	jal	ra,000000002306A736
	c.beqz	a0,0000000023076634

l230765AC:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l230765BA:
	sb	zero,s0,+00000004
	jal	ra,00000000230763E8
	c.lw	s0,0(a4)
	c.lw	a4,4(a0)
	c.beqz	a0,000000002307660C

l230765C8:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023076626

l230765D8:
	addi	a3,zero,+00000040
	beq	a5,a3,0000000023076602

l230765E0:
	c.li	a3,00000010
	bne	a5,a3,0000000023076606

l230765E6:
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
	jal	zero,0000000023075EAC

l23076602:
	jal	ra,0000000023070AF0

l23076606:
	c.lw	s0,0(a5)
	sw	zero,a5,+00000004

l2307660C:
	c.lw	s0,0(a0)
	c.lw	a0,44(a5)
	c.beqz	a5,0000000023076618

l23076612:
	c.li	a2,00000000
	c.li	a1,00000000
	c.jalr	a5

l23076618:
	c.lw	s0,0(a0)
	c.lw	a0,44(a5)
	c.beqz	a5,00000000230765A2

l2307661E:
	c.li	a2,00000000
	c.li	a1,00000002
	c.jalr	a5
	c.j	00000000230765A2

l23076626:
	sw	zero,a0,+00000024
	c.lw	s0,0(a5)
	c.lw	a5,4(a0)
	jal	ra,0000000023075200
	c.j	0000000023076606

l23076634:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lwip_netconn_do_bind: 2307663C
lwip_netconn_do_bind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.li	a5,FFFFFFFA
	c.lw	a4,4(a0)
	c.beqz	a0,000000002307666C

l2307664C:
	lbu	a5,a4,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,0000000023076688

l2307665C:
	addi	a4,zero,+00000040
	beq	a5,a4,000000002307667E

l23076664:
	c.li	a4,00000010
	beq	a5,a4,0000000023076694

l2307666A:
	c.li	a5,FFFFFFFA

l2307666C:
	c.lw	s0,0(a0)
	sb	a5,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l2307667E:
	c.lw	s0,8(a1)
	jal	ra,0000000023070906

l23076684:
	c.mv	a5,a0
	c.j	000000002307666C

l23076688:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,0000000023074DC4
	c.j	0000000023076684

l23076694:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,0000000023070C7E
	c.j	0000000023076684

;; lwip_netconn_do_connect: 230766A0
lwip_netconn_do_connect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.lw	a4,4(a0)
	c.beqz	a0,000000002307675A

l230766B0:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023076736

l230766C0:
	addi	a3,zero,+00000040
	beq	a5,a3,000000002307671C

l230766C8:
	c.li	a3,00000010
	c.li	a0,FFFFFFFA
	bne	a5,a3,0000000023076722

l230766D0:
	lbu	a5,a4,+00000001
	c.li	s1,00000003
	beq	a5,s1,000000002307675E

l230766DA:
	c.li	a0,FFFFFFF6
	c.bnez	a5,0000000023076722

l230766DE:
	c.mv	a0,a4
	jal	ra,0000000023075B14
	c.lw	s0,0(a5)
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	c.lw	a5,4(a0)
	lui	a3,00023076
	addi	a3,a3,-0000049C
	jal	ra,0000000023070FC8
	c.bnez	a0,0000000023076722

l230766FC:
	c.lw	s0,0(a5)
	lbu	a4,a5,+00000024
	sb	s1,a5,+00000001
	c.lw	s0,0(a5)
	c.andi	a4,00000002
	c.beqz	a4,0000000023076742

l2307670C:
	lbu	a4,a5,+00000024
	c.li	a0,FFFFFFFB
	ori	a4,a4,+00000004
	sb	a4,a5,+00000024
	c.j	0000000023076722

l2307671C:
	c.lw	s0,8(a1)
	jal	ra,000000002307092A

l23076722:
	sb	a0,s0,+00000004
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l23076736:
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	jal	ra,0000000023075172
	c.j	0000000023076722

l23076742:
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

l2307675A:
	c.li	a0,FFFFFFF1
	c.j	0000000023076722

l2307675E:
	c.li	a0,FFFFFFF7
	c.j	0000000023076722

;; lwip_netconn_do_disconnect: 23076762
lwip_netconn_do_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	addi	a3,zero,+00000020
	c.mv	s0,a0
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	bne	a5,a3,0000000023076794

l2307677C:
	c.lw	a4,4(a0)
	jal	ra,00000000230751DE
	sb	zero,s0,+00000004

l23076786:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l23076794:
	c.li	a5,FFFFFFFA
	sb	a5,a0,+00000004
	c.j	0000000023076786

;; lwip_netconn_do_listen: 2307679C
lwip_netconn_do_listen proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023076874

l230767AC:
	lbu	a4,a5,+00000000
	c.li	a3,00000010
	andi	a4,a4,+000000F0
	bne	a4,a3,0000000023076878

l230767BA:
	lbu	a5,a5,+00000001
	c.bnez	a5,0000000023076868

l230767C0:
	lbu	a5,a0,+00000014
	c.beqz	a5,00000000230767CE

l230767C6:
	c.li	a5,FFFFFFFA

l230767C8:
	sb	a5,sp,+0000000F
	c.j	0000000023076840

l230767CE:
	addi	a2,sp,+0000000F
	addi	a1,zero,+000000FF
	jal	ra,0000000023070D3E
	c.mv	s1,a0
	c.beqz	a0,0000000023076840

l230767DE:
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002306A658
	c.beqz	a0,00000000230767F8

l230767E8:
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002306A53A
	c.lw	s0,0(a0)
	c.addi	a0,00000010
	jal	ra,000000002306A660

l230767F8:
	c.lw	s0,0(a0)
	sb	zero,sp,+0000000F
	c.addi	a0,00000014
	jal	ra,000000002306A658
	c.bnez	a0,0000000023076816

l23076806:
	c.lw	s0,0(a0)
	addi	a1,zero,+000007D0
	c.addi	a0,00000014
	jal	ra,000000002306A4F0
	sb	a0,sp,+0000000F

l23076816:
	lb	a5,sp,+0000000F
	c.bnez	a5,000000002307685A

l2307681C:
	c.lw	s0,0(a5)
	c.li	a4,00000002
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,4(s1)
	c.lw	s0,0(a1)
	c.lw	a1,4(a0)
	jal	ra,0000000023070F4C
	c.lw	s0,0(a5)
	lui	a1,00023076
	addi	a1,a1,+0000049C
	c.lw	a5,4(a0)
	jal	ra,0000000023070F6A

l23076840:
	lbu	a5,sp,+0000000F
	c.lw	s0,0(a0)
	sb	a5,s0,+00000004
	c.addi	a0,0000000C
	jal	ra,000000002306A7AC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2307685A:
	c.mv	a0,s1
	jal	ra,0000000023071764
	c.lw	s0,0(a5)
	sw	zero,a5,+00000004
	c.j	0000000023076840

l23076868:
	c.li	a4,00000002
	bne	a5,a4,0000000023076874

l2307686E:
	sb	zero,sp,+0000000F
	c.j	0000000023076840

l23076874:
	c.li	a5,FFFFFFF5
	c.j	00000000230767C8

l23076878:
	c.li	a5,FFFFFFF0
	c.j	00000000230767C8

;; lwip_netconn_do_send: 2307687C
lwip_netconn_do_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023075716
	c.bnez	a0,00000000230768C4

l2307688C:
	c.lw	s0,0(a5)
	c.li	a0,FFFFFFF5
	lw	a7,a5,+00000004
	beq	a7,zero,00000000230768C4

l23076898:
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230768DC

l230768A8:
	addi	a4,zero,+00000040
	bne	a5,a4,00000000230768C4

l230768B0:
	c.lw	s0,8(a5)
	c.mv	a0,a7
	addi	a2,a5,+00000008
	c.lw	a5,0(a1)
	c.beqz	a2,00000000230768C0

l230768BC:
	c.lw	a5,8(a5)
	c.bnez	a5,00000000230768D6

l230768C0:
	jal	ra,0000000023070AE8

l230768C4:
	sb	a0,s0,+00000004
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l230768D6:
	jal	ra,0000000023070A68
	c.j	00000000230768C4

l230768DC:
	lw	a6,s0,+00000008
	lbu	a4,a6,+0000000E
	addi	a2,a6,+00000008
	lw	a1,a6,+00000000
	c.andi	a4,00000002
	lhu	a5,a6,+00000010
	c.beqz	a2,00000000230768FA

l230768F4:
	lw	a3,a6,+00000008
	c.bnez	a3,0000000023076906

l230768FA:
	c.mv	a3,a5
	c.mv	a2,a4
	c.mv	a0,a7
	jal	ra,0000000023075118
	c.j	00000000230768C4

l23076906:
	lhu	a3,a6,+0000000C
	c.mv	a0,a7
	jal	ra,0000000023075062
	c.j	00000000230768C4

;; lwip_netconn_do_recv: 23076912
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
	c.bnez	a4,0000000023076942

l2307692C:
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi	a0,0000000C
	c.addi16sp	00000020
	jal	zero,000000002306A7AC

l23076942:
	lbu	a5,a5,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002307692C

l23076950:
	c.lw	a0,8(s1)
	c.lui	s3,00010000
	addi	s4,s3,-00000001

l23076958:
	c.mv	s2,s1
	bltu	s1,s3,0000000023076960

l2307695E:
	c.mv	s2,s4

l23076960:
	c.lw	s0,0(a5)
	slli	a1,s2,00000010
	c.srli	a1,00000010
	c.lw	a5,4(a0)
	sub	s1,s1,s2
	jal	ra,0000000023070E84
	c.bnez	s1,0000000023076958

l23076974:
	c.j	000000002307692C

;; lwip_netconn_do_write: 23076976
lwip_netconn_do_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023075716
	c.lw	s0,0(a5)
	c.bnez	a0,00000000230769BC

l23076988:
	lbu	a4,a5,+00000000
	c.li	a3,00000010
	c.li	a0,FFFFFFFA
	andi	a4,a4,+000000F0
	bne	a4,a3,00000000230769BC

l23076998:
	lbu	a4,a5,+00000001
	c.bnez	a4,00000000230769BA

l2307699E:
	c.lw	a5,4(a4)
	c.li	a0,FFFFFFF5
	c.beqz	a4,00000000230769BC

l230769A4:
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023075CD8

l230769BA:
	c.li	a0,FFFFFFFB

l230769BC:
	sb	a0,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a0,a5,+0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

;; lwip_netconn_do_getaddr: 230769CE
lwip_netconn_do_getaddr proc
	c.lw	a0,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023076A16

l230769D4:
	lbu	a3,a0,+00000010
	c.lw	a0,8(a4)
	c.beqz	a3,0000000023076A1E

l230769DC:
	c.lw	a5,0(a5)

l230769DE:
	c.sw	a4,0(a5)
	c.lw	a0,0(a4)
	sb	zero,a0,+00000004
	addi	a3,zero,+00000020
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,0000000023076A3C

l230769F6:
	addi	a3,zero,+00000040
	beq	a5,a3,0000000023076A22

l230769FE:
	c.li	a3,00000010
	bne	a5,a3,0000000023076A34

l23076A04:
	c.lw	a4,4(a5)
	lbu	a4,a0,+00000010
	c.bnez	a4,0000000023076A60

l23076A0C:
	lbu	a3,a5,+00000014
	c.li	a4,00000001
	bltu	a4,a3,0000000023076A68

l23076A16:
	c.li	a5,FFFFFFF5
	sb	a5,a0,+00000004
	c.j	0000000023076A34

l23076A1E:
	c.lw	a5,4(a5)
	c.j	00000000230769DE

l23076A22:
	lbu	a5,a0,+00000010
	c.beqz	a5,0000000023076A16

l23076A28:
	c.lw	a4,4(a4)
	c.lw	a0,12(a5)
	lbu	a4,a4,+00000010
	sh	a4,a5,+00000000

l23076A34:
	c.lw	a0,0(a0)
	c.addi	a0,0000000C
	jal	zero,000000002306A7AC

l23076A3C:
	c.lw	a4,4(a5)
	lbu	a4,a0,+00000010
	c.beqz	a4,0000000023076A50

l23076A44:
	c.lw	a0,12(a4)
	lhu	a5,a5,+00000012

l23076A4A:
	sh	a5,a4,+00000000
	c.j	0000000023076A34

l23076A50:
	lbu	a4,a5,+00000010
	c.andi	a4,00000004
	c.beqz	a4,0000000023076A16

l23076A58:
	c.lw	a0,12(a4)
	lhu	a5,a5,+00000014
	c.j	0000000023076A4A

l23076A60:
	lhu	a5,a5,+00000016

l23076A64:
	c.lw	a0,12(a4)
	c.j	0000000023076A4A

l23076A68:
	lhu	a5,a5,+00000018
	c.j	0000000023076A64

;; lwip_netconn_do_close: 23076A6E
lwip_netconn_do_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.lw	a0,4(a4)
	c.beqz	a4,0000000023076AA4

l23076A7C:
	lbu	a4,a0,+00000000
	c.li	a3,00000010
	andi	a4,a4,+000000F0
	bne	a4,a3,0000000023076AA4

l23076A8A:
	lbu	a4,s0,+00000008
	c.li	a2,00000003
	lbu	a3,a0,+00000001
	beq	a4,a2,0000000023076A9E

l23076A98:
	c.li	a2,00000002
	beq	a3,a2,0000000023076AA4

l23076A9E:
	c.li	a2,00000003
	bne	a3,a2,0000000023076AB6

l23076AA4:
	c.li	a4,FFFFFFF5

l23076AA6:
	sb	a4,s0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l23076AB6:
	c.li	a2,00000001
	bne	a3,a2,0000000023076AC0

l23076ABC:
	c.li	a4,FFFFFFFB
	c.j	0000000023076AA6

l23076AC0:
	c.andi	a4,00000001
	c.beqz	a4,0000000023076AC8

l23076AC4:
	jal	ra,00000000230763E8

l23076AC8:
	c.lw	s0,0(a5)
	c.li	a4,00000004
	sb	a4,a5,+00000001
	c.lw	s0,0(a5)
	c.sw	a5,40(s0)
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023075EAC

;; lwip_netconn_do_join_leave_group: 23076AE0
lwip_netconn_do_join_leave_group proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,FFFFFFF5
	sb	a5,a0,+00000004
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.lw	a5,4(a4)
	c.beqz	a4,0000000023076B16

l23076AF4:
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000020
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023076B2A

l23076B04:
	lbu	a5,s0,+00000011
	c.lw	a0,12(a0)
	c.lw	s0,8(a1)
	c.bnez	a5,0000000023076B24

l23076B0E:
	jal	ra,000000002306EAD2

l23076B12:
	sb	a0,s0,+00000004

l23076B16:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000C
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l23076B24:
	jal	ra,000000002306EBE8
	c.j	0000000023076B12

l23076B2A:
	c.li	a5,FFFFFFFA
	sb	a5,a0,+00000004
	c.j	0000000023076B16

;; lwip_netconn_do_gethostbyname: 23076B32
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
	lui	a2,00023076
	c.li	a4,00000000
	addi	a2,a2,-000005BE
	jal	ra,000000002306C388
	sb	a0,s1,+00000000
	c.lw	s0,12(a5)
	lb	a4,a5,+00000000
	c.li	a5,FFFFFFFB
	beq	a4,a5,0000000023076B70

l23076B62:
	c.lw	s0,8(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002306A7AC

l23076B70:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; err_to_errno: 23076B7A
;;   Called from:
;;     2306AADA (in lwip_recv_tcp)
;;     2306B360 (in lwip_accept)
;;     2306B3FA (in lwip_bind)
;;     2306B4BC (in lwip_close)
;;     2306B520 (in lwip_connect)
;;     2306B5A2 (in lwip_listen)
;;     2306B652 (in lwip_recvfrom)
;;     2306B6FE (in lwip_sendto)
;;     2306B76C (in lwip_sendto)
;;     2306B804 (in lwip_send)
;;     2306B90C (in lwip_setsockopt)
err_to_errno proc
	addi	a5,a0,+00000010
	andi	a5,a5,+000000FF
	c.li	a4,00000010
	bltu	a4,a5,0000000023076B9A

l23076B88:
	slli	a5,a0,00000002
	lui	a0,000230C3
	addi	a0,a0,+000007D0
	c.sub	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l23076B9A:
	c.li	a0,00000005
	c.jr	ra

;; netbuf_delete: 23076B9E
;;   Called from:
;;     2306ABB0 (in free_socket)
;;     2306AC56 (in lwip_recvfrom_udp_raw.isra.6)
;;     23075AE0 (in recv_udp)
;;     23076122 (in recv_raw)
;;     23076458 (in netconn_drain)
netbuf_delete proc
	c.beqz	a0,0000000023076BC4

l23076BA0:
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023076BC6

l23076BA6:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230701A4
	c.lwsp	a2,00000064
	c.li	a0,00000006
	sw	zero,a1,+00000004
	sw	zero,a1,+00000000
	c.lwsp	t3,00000020
	c.addi16sp	00000020

l23076BC0:
	jal	zero,000000002306FB62

l23076BC4:
	c.jr	ra

l23076BC6:
	c.li	a0,00000006
	c.j	0000000023076BC0

;; netbuf_alloc: 23076BCA
;;   Called from:
;;     2306B72A (in lwip_sendto)
netbuf_alloc proc
	c.bnez	a0,0000000023076BDA

l23076BCC:
	c.li	a0,00000000
	c.jr	ra

l23076BD0:
	c.li	a0,00000000

l23076BD2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23076BDA:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023076BEE

l23076BE6:
	c.swsp	a1,00000084
	jal	ra,00000000230701A4
	c.lwsp	a2,00000064

l23076BEE:
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	jal	ra,0000000023070226
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023076BD0

l23076BFE:
	c.sw	s0,4(a0)
	c.lw	a0,4(a0)
	c.j	0000000023076BD2

;; netbuf_free: 23076C04
;;   Called from:
;;     2306B766 (in lwip_sendto)
netbuf_free proc
	c.beqz	a0,0000000023076C2E

l23076C06:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023076C16

l23076C12:
	jal	ra,00000000230701A4

l23076C16:
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000
	sb	zero,s0,+0000000E
	sh	zero,s0,+00000010
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23076C2E:
	c.jr	ra

;; icmp_input: 23076C30
;;   Called from:
;;     2306F098 (in ip4_input)
icmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042026
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	s3,s2,+000007F0
	lhu	a5,s3,+0000004A
	lui	s6,00042027
	c.li	a4,00000013
	c.addi	a5,00000001
	sh	a5,s3,+0000004A
	addi	a5,s6,-000006E8
	lw	s7,a5,+00000008
	c.mv	s0,a0
	addi	s2,s2,+000007F0
	lbu	s1,s7,+00000000
	c.andi	s1,0000000F
	c.slli	s1,02
	bgeu	a4,s1,0000000023076E60

l23076C76:
	lhu	a3,a0,+0000000A
	c.li	a4,00000003
	bgeu	a4,a3,0000000023076E60

l23076C80:
	c.lw	a0,4(a4)
	lbu	a4,a4,+00000000
	beq	a4,zero,0000000023076E20

l23076C8A:
	c.li	a3,00000008
	bne	a4,a3,0000000023076E4A

l23076C90:
	c.lw	a5,20(a0)
	addi	a4,zero,+000000E0
	andi	a3,a0,+000000F0
	beq	a3,a4,0000000023076D2C

l23076C9E:
	c.mv	s4,a1
	c.lw	a5,0(a1)
	jal	ra,000000002306F33A
	c.bnez	a0,0000000023076D2C

l23076CA8:
	lhu	a4,s0,+00000008
	c.li	a5,00000007
	bgeu	a5,a4,0000000023076E60

l23076CB2:
	c.mv	a0,s0
	jal	ra,000000002306C7AC
	c.beqz	a0,0000000023076CE0

l23076CBA:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	lhu	a5,s3,+00000050
	c.addi	a5,00000001
	sh	a5,s3,+00000050

l23076CCA:
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

l23076CE0:
	addi	s5,s1,+0000008E
	slli	s3,s1,00000010
	c.mv	a1,s5
	c.mv	a0,s0
	addi	s6,s6,-000006E8
	srli	s3,s3,00000010
	jal	ra,000000002307013C
	beq	a0,zero,0000000023076E3A

l23076CFC:
	lhu	a5,s0,+00000008
	add	a1,a5,s3
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a1,a5,0000000023076D2C

l23076D0C:
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,0000000023070226
	c.mv	s5,a0
	c.beqz	a0,0000000023076D2C

l23076D1C:
	lhu	a4,a0,+0000000A
	addi	a5,s1,+00000008
	bgeu	a4,a5,0000000023076D3E

l23076D28:
	jal	ra,00000000230701A4

l23076D2C:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	lhu	a5,s2,+0000005C
	c.addi	a5,00000001
	sh	a5,s2,+0000005C
	c.j	0000000023076CCA

l23076D3E:
	c.lw	a0,4(a0)
	c.mv	a1,s7
	c.mv	a2,s1
	jal	ra,00000000230A382C
	c.mv	a1,s1
	c.mv	a0,s5
	jal	ra,0000000023070142
	c.beqz	a0,0000000023076D56

l23076D52:
	c.mv	a0,s5
	c.j	0000000023076D28

l23076D56:
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,00000000230704B0
	c.bnez	a0,0000000023076D52

l23076D60:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.mv	s0,s5

l23076D68:
	c.mv	a1,s1
	c.mv	a0,s0
	lw	s5,s0,+00000004
	jal	ra,000000002307013C
	c.bnez	a0,0000000023076E20

l23076D76:
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
	bgeu	a4,a5,0000000023076E46

l23076DCC:
	c.addi	a5,00000009

l23076DCE:
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
	jal	ra,000000002306C796
	sb	a0,s1,+0000000A
	c.srli	a0,00000008
	sb	a0,s1,+0000000B
	lhu	a5,s2,+00000048
	lui	a1,00042027
	c.mv	a6,s4
	c.addi	a5,00000001
	sh	a5,s2,+00000048
	c.li	a4,00000000
	c.li	a5,00000001
	addi	a3,zero,+000000FF
	c.li	a2,00000000
	addi	a1,a1,-000006D4
	c.mv	a0,s0
	jal	ra,000000002306F316

l23076E20:
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
	jal	zero,00000000230701A4

l23076E3A:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023070142
	c.beqz	a0,0000000023076D68

l23076E44:
	c.j	0000000023076D2C

l23076E46:
	c.addi	a5,00000008
	c.j	0000000023076DCE

l23076E4A:
	lhu	a5,s3,+00000058
	c.addi	a5,00000001
	sh	a5,s3,+00000058
	lhu	a5,s3,+0000004E
	c.addi	a5,00000001
	sh	a5,s3,+0000004E
	c.j	0000000023076E20

l23076E60:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	lhu	a5,s2,+00000052
	c.addi	a5,00000001
	sh	a5,s2,+00000052
	c.j	0000000023076CCA

;; icmp_dest_unreach: 23076E72
;;   Called from:
;;     2306F03C (in ip4_input)
;;     23074DB4 (in udp_input)
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
	jal	ra,0000000023070226
	c.beqz	a0,0000000023076F36

l23076E96:
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
	jal	ra,00000000230A382C
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
	jal	ra,000000002306ED14
	c.swsp	a0,00000084
	c.beqz	a0,0000000023076F30

l23076EEE:
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	lhu	a1,s1,+0000000A
	c.mv	a0,s0
	jal	ra,000000002306C796
	sb	a0,s0,+00000002
	lui	a5,00042026
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,a5,+000007F0
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
	jal	ra,000000002306F316

l23076F30:
	c.mv	a0,s1
	jal	ra,00000000230701A4

l23076F36:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; dhcp_server_option_find: 23076F46
;;   Called from:
;;     23077068 (in dhcp_server_recv)
;;     2307708C (in dhcp_server_recv)
;;     23077252 (in dhcp_server_recv)
dhcp_server_option_find proc
	c.add	a1,a0
	addi	a4,zero,+000000FF

l23076F4C:
	bgeu	a0,a1,0000000023076F58

l23076F50:
	lbu	a5,a0,+00000000
	bne	a5,a4,0000000023076F5C

l23076F58:
	c.li	a0,00000000

l23076F5A:
	c.jr	ra

l23076F5C:
	beq	a5,a2,0000000023076F5A

l23076F60:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	0000000023076F4C

;; dhcp_client_find_by_ip.isra.0: 23076F6A
;;   Called from:
;;     2307709C (in dhcp_server_recv)
;;     230770AC (in dhcp_server_recv)
;;     23077260 (in dhcp_server_recv)
dhcp_client_find_by_ip.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	jal	ra,00000000230A382C
	c.lwsp	a2,000000E4
	c.lw	s0,0(a0)

l23076F7E:
	c.bnez	a0,0000000023076F88

l23076F80:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23076F88:
	c.lw	a0,12(a4)
	beq	a5,a4,0000000023076F80

l23076F8E:
	c.lw	a0,0(a0)
	c.j	0000000023076F7E

;; dhcp_server_recv: 23076F92
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
	bltu	a5,a4,0000000023076FDE

l23076FBE:
	c.mv	a0,s0

l23076FC0:
	jal	ra,00000000230701A4
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

l23076FDE:
	c.mv	s1,a0
	c.mv	s5,a1
	addi	a2,zero,+00000280
	addi	a1,zero,+000005DC
	addi	a0,zero,+000000B6
	jal	ra,0000000023070226
	c.mv	s2,a0
	c.beqz	a0,0000000023076FBE

l23076FF6:
	lhu	a4,a0,+00000008
	lhu	a5,s0,+00000008
	bltu	a4,a5,0000000023076FBE

l23077002:
	c.mv	a1,s0
	jal	ra,00000000230704B0
	c.mv	a0,s0
	jal	ra,00000000230701A4
	lw	s0,s2,+00000004
	c.li	a5,00000001
	lbu	s3,s0,+00000000
	bne	s3,a5,0000000023077234

l2307701C:
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
	bne	a5,a4,0000000023077234

l23077044:
	lbu	s8,s0,+00000002
	c.li	a5,00000006
	bltu	a5,s8,0000000023077234

l2307704E:
	lhu	s4,s2,+00000008
	addi	s7,s0,+000000F0
	addi	a2,zero,+00000035
	addi	s4,s4,-000000F0
	c.slli	s4,10
	srli	s4,s4,00000010
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,0000000023076F46
	beq	a0,zero,0000000023077234

l23077070:
	lbu	a5,a0,+00000002
	bne	a5,s3,0000000023077238

l23077078:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l23077080:
	bne	s3,zero,00000000230770D8

l23077084:
	c.mv	a1,s4
	addi	a2,zero,+00000032
	c.mv	a0,s7
	jal	ra,0000000023076F46
	addi	s4,s1,+0000000C
	c.beqz	a0,00000000230770A4

l23077096:
	addi	a1,a0,+00000002
	c.mv	a0,s4
	jal	ra,0000000023076F6A
	c.mv	s3,a0
	c.bnez	a0,0000000023077114

l230770A4:
	addi	s7,s1,+00000018

l230770A8:
	c.mv	a1,s7
	c.mv	a0,s4
	jal	ra,0000000023076F6A
	c.beqz	a0,00000000230770EC

l230770B2:
	c.lw	s1,24(a0)
	jal	ra,000000002306BC20
	addi	s3,a0,+00000001
	c.lw	s1,20(a0)
	jal	ra,000000002306BC20
	bgeu	a0,s3,00000000230770CE

l230770C6:
	c.lw	s1,16(a0)
	jal	ra,000000002306BC20
	c.mv	s3,a0

l230770CE:
	c.mv	a0,s3
	jal	ra,000000002306BC20
	c.sw	s1,24(a0)
	c.j	00000000230770A8

l230770D8:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023077114

l230770E6:
	lw	s3,s3,+00000000
	c.j	0000000023077080

l230770EC:
	c.li	a0,00000014
	jal	ra,000000002306F8D8
	c.mv	s3,a0
	beq	a0,zero,0000000023077234

l230770F8:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,00000000230A382C
	c.lw	s1,24(a5)
	sw	a5,s3,+0000000C
	c.lw	s1,12(a5)
	sw	a5,s3,+00000000
	sw	s3,s1,+0000000C

l23077114:
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
	jal	ra,00000000230A382C
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
	jal	ra,00000000230A382C
	addi	a5,zero,+00000035
	c.li	s4,00000001
	sb	a5,s0,+000000F0
	sb	s4,s0,+000000F1
	sb	s7,s0,+000000F2

l23077184:
	c.li	s3,00000004
	addi	a5,zero,+00000036
	sb	a5,s0,+000000F3
	sb	s3,s0,+000000F4
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+000000F5
	c.addi	a1,00000004
	jal	ra,00000000230A382C
	addi	a5,zero,+00000033
	sb	a5,s0,+000000F9
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	sb	s3,s0,+000000FA
	addi	a0,s0,+000000FB
	c.swsp	a5,00000084
	jal	ra,00000000230A382C
	sb	s4,s0,+000000FF
	sb	s3,s0,+00000100
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000101
	c.addi	a1,00000008
	jal	ra,00000000230A382C
	c.li	a5,00000006
	sb	a5,s0,+00000105
	sb	s3,s0,+00000106
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000107
	c.addi	a1,00000004
	jal	ra,00000000230A382C
	c.li	a5,00000003
	sb	a5,s0,+0000010B
	sb	s3,s0,+0000010C
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+0000010D
	c.addi	a1,00000004
	jal	ra,00000000230A382C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000111
	lhu	a4,s2,+00000008
	addi	a5,zero,+00000112
	bgeu	a5,a4,0000000023077222

l23077218:
	addi	a1,zero,+00000112

l2307721C:
	c.mv	a0,s2
	jal	ra,0000000023070384

l23077222:
	c.lw	s1,4(a4)
	c.li	a5,FFFFFFFF
	c.mv	a3,s6
	c.addi4spn	a2,00000008
	c.mv	a1,s2
	c.mv	a0,s5
	c.swsp	a5,00000004
	jal	ra,000000002307514C

l23077234:
	c.mv	a0,s2
	c.j	0000000023076FC0

l23077238:
	c.li	a4,00000003
	bne	a5,a4,0000000023077330

l2307723E:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l23077246:
	bne	s3,zero,000000002307731C

l2307724A:
	addi	a2,zero,+00000032
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,0000000023076F46
	c.beqz	a0,0000000023077284

l23077258:
	addi	a1,a0,+00000002
	addi	a0,s1,+0000000C
	jal	ra,0000000023076F6A
	c.mv	s3,a0
	c.beqz	a0,0000000023077284

l23077268:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,00000000230A37A4
	beq	a0,zero,0000000023077376

l23077278:
	lui	a0,000230C4
	addi	a0,a0,-000007EC
	jal	ra,000000002308234C

l23077284:
	c.li	a5,00000002
	sb	a5,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,00000000230A382C
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
	jal	ra,00000000230A3A68
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
	jal	ra,00000000230A382C
	c.li	a5,FFFFFFFF
	sb	a5,s0,+000000F9
	lhu	a4,s2,+00000008
	addi	a5,zero,+000000FA
	bgeu	a5,a4,0000000023077222

l23077316:
	addi	a1,zero,+000000FA
	c.j	000000002307721C

l2307731C:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023077376

l2307732A:
	lw	s3,s3,+00000000
	c.j	0000000023077246

l23077330:
	c.li	a4,00000007
	bne	a5,a4,0000000023077234

l23077336:
	lw	s3,s1,+0000000C
	c.li	s4,00000000
	addi	s5,s0,+0000001C

l23077340:
	beq	s3,zero,0000000023077234

l23077344:
	lbu	a2,s0,+00000002
	c.mv	a1,s5
	addi	a0,s3,+00000004
	jal	ra,00000000230A37A4
	lw	a5,s3,+00000000
	c.bnez	a0,000000002307736E

l23077358:
	c.lw	s1,12(a4)
	bne	a4,s3,0000000023077368

l2307735E:
	c.sw	s1,12(a5)

l23077360:
	c.mv	a0,s3
	jal	ra,000000002306F5E2
	c.j	0000000023077234

l23077368:
	sw	a5,s4,+00000000
	c.j	0000000023077360

l2307736E:
	c.mv	s4,s3
	lw	s3,a5,+00000000
	c.j	0000000023077340

l23077376:
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
	jal	ra,00000000230A382C
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
	jal	ra,00000000230A382C
	addi	a5,zero,+00000035
	sb	a5,s0,+000000F0
	c.li	s4,00000001
	c.li	a5,00000005
	sb	s4,s0,+000000F1
	sb	a5,s0,+000000F2
	c.j	0000000023077184

;; dhcp_server_start: 230773EA
;;   Called from:
;;     230775CE (in dhcpd_start)
dhcp_server_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	lw	a5,s2,+00000698
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s2,s2,+00000698

l23077404:
	c.bnez	a5,0000000023077428

l23077406:
	c.mv	s4,a0
	c.li	a0,0000001C
	c.mv	s3,a2
	c.mv	s1,a1
	jal	ra,000000002306F8D8
	c.mv	s0,a0
	c.bnez	a0,0000000023077442

l23077416:
	c.li	a0,FFFFFFFF

l23077418:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23077428:
	c.lw	a5,4(a4)
	bne	a4,a0,000000002307743E

l2307742E:
	c.lw	a1,0(a4)
	c.sw	a5,16(a4)
	c.lw	a2,0(a4)
	c.sw	a5,20(a4)
	c.lw	a1,0(a4)
	c.sw	a5,24(a4)

l2307743A:
	c.li	a0,00000000
	c.j	0000000023077418

l2307743E:
	c.lw	a5,0(a5)
	c.j	0000000023077404

l23077442:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
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
	jal	ra,0000000023075230
	c.sw	s0,8(a0)
	c.beqz	a0,0000000023077416

l23077472:
	lbu	a5,a0,+00000009
	lui	a1,000230CC
	addi	a2,zero,+00000043
	ori	a5,a5,+00000020
	sb	a5,a0,+00000009
	c.lw	s0,8(a0)
	addi	a1,a1,-00000524
	jal	ra,0000000023074DC4
	c.lw	s0,8(a0)
	lui	a1,00023077
	c.mv	a2,s0
	addi	a1,a1,-0000006E
	jal	ra,00000000230751F8
	c.j	000000002307743A

;; dhcp_server_stop: 230774A2
dhcp_server_stop proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	lw	s0,a5,+00000698
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,a5,+00000698

l230774B6:
	c.bnez	s0,00000000230774C8

l230774B8:
	lui	a0,000230C4
	addi	a0,a0,-000007C0
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFA
	c.j	00000000230774E6

l230774C8:
	c.lw	s0,4(a5)
	beq	a5,a0,00000000230774D2

l230774CE:
	c.lw	s0,0(s0)
	c.j	00000000230774B6

l230774D2:
	c.lw	s0,8(a0)
	c.beqz	a0,00000000230774DA

l230774D6:
	jal	ra,0000000023075200

l230774DA:
	c.mv	a0,s0
	sw	zero,s1,+00000000
	jal	ra,000000002306F5E2
	c.li	a0,00000000

l230774E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcpd_start: 230774F0
dhcpd_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a0
	c.swsp	s3,00000094
	jal	ra,000000002306DE68
	lui	s0,000230C4
	lui	a3,000230C4
	lui	a2,000230B2
	addi	a3,a3,-00000784
	addi	a2,a2,+00000104
	addi	a1,s0,-00000774
	c.mv	a0,s1
	jal	ra,00000000230862F8
	c.mv	a0,s1
	jal	ra,000000002306FE3A
	addi	a1,s0,-00000774
	c.li	a2,0000000E
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	addi	a1,zero,+0000002E
	c.addi4spn	a0,0000000C
	sh	zero,sp,+0000001A
	sh	zero,sp,+0000001C
	sh	zero,sp,+0000001E
	jal	ra,00000000230A3E88
	c.bnez	a0,0000000023077566

l2307754A:
	lui	a0,000230C4
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000764

l23077554:
	jal	ra,0000000023082388

l23077558:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23077566:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,00000000230A3E88
	c.beqz	a0,000000002307754A

l23077572:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,00000000230A3E88
	c.beqz	a0,000000002307754A

l2307757E:
	addi	s0,a0,+00000001
	lui	s3,000230C8
	c.li	a2,00000002
	addi	a1,s3,-0000076C
	c.mv	a0,s0
	jal	ra,00000000230823B8
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002306F374
	lui	s2,000230C4
	c.addi4spn	a1,0000000C
	addi	a0,s2,-00000740
	jal	ra,0000000023082388
	addi	a2,zero,+000000FE
	addi	a1,s3,-0000076C
	c.mv	a0,s0
	jal	ra,00000000230823B8
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,000000002306F374
	c.addi4spn	a1,0000000C
	addi	a0,s2,-00000740
	jal	ra,0000000023082388
	c.addi4spn	a1,00000004
	c.addi4spn	a2,00000008
	c.mv	a0,s1
	jal	ra,00000000230773EA
	c.mv	a1,a0
	c.beqz	a0,0000000023077558

l230775D6:
	lui	a0,000230C4
	addi	a0,a0,-00000728
	c.j	0000000023077554

;; iperf_server_udp_entry: 230775E0
;;   Called from:
;;     23078140 (in ipus_test_cmd)
iperf_server_udp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230A4220
	c.addi	a0,00000001
	jal	ra,000000002306488A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,00000000230A4170
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023077
	lui	a0,000230C4
	c.lui	a3,00001000
	addi	a1,a1,+000006B0
	addi	a0,a0,-0000051C
	c.addi16sp	00000020
	jal	zero,000000002307BC7C

;; iperf_client_udp_entry: 23077614
;;   Called from:
;;     2307817C (in ipu_test_cmd)
iperf_client_udp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230A4220
	c.addi	a0,00000004
	jal	ra,000000002306488A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,00000000230A4170
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023078
	lui	a0,000230C4
	c.lui	a3,00001000
	addi	a1,a1,-000005EA
	addi	a0,a0,-000005F4
	c.addi16sp	00000020
	jal	zero,000000002307BC7C

;; iperf_server_entry: 23077648
;;   Called from:
;;     230781F4 (in ips_test_cmd)
iperf_server_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230A4220
	c.addi	a0,00000004
	jal	ra,000000002306488A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,00000000230A4170
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023078
	lui	a0,000230C4
	c.lui	a3,00001000
	addi	a1,a1,-00000370
	addi	a0,a0,-00000588
	c.addi16sp	00000020
	jal	zero,000000002307BC7C

;; iperf_client_tcp_entry: 2307767C
;;   Called from:
;;     230781B8 (in ipc_test_cmd)
iperf_client_tcp_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230A4220
	c.addi	a0,00000004
	jal	ra,000000002306488A
	c.lwsp	a2,00000064
	c.swsp	a0,00000004
	jal	ra,00000000230A4170
	c.lwsp	s0,00000084
	c.lwsp	t3,00000020
	lui	a1,00023078
	lui	a0,000230C4
	c.lui	a3,00001000
	addi	a1,a1,-00000118
	addi	a0,a0,-00000650
	c.addi16sp	00000020
	jal	zero,000000002307BC7C

;; iperf_server_udp: 230776B0
iperf_server_udp proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.mv	s1,a0
	c.bnez	a0,00000000230776C0

l230776BC:
	jal	ra,0000000023000C02

l230776C0:
	jal	ra,0000000023075230
	c.mv	s0,a0
	c.bnez	a0,00000000230776E4

l230776C8:
	lui	a0,000230C4
	addi	a0,a0,-00000580
	jal	ra,0000000023082388

l230776D4:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.addi16sp	00000060
	c.jr	ra

l230776E4:
	c.mv	a0,s1
	jal	ra,000000002306F4D2
	c.lui	a2,00001000
	c.swsp	a0,00000084
	addi	a2,a2,+00000389
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023074DC4
	c.beqz	a0,0000000023077710

l230776FC:
	lui	a0,000230C4
	addi	a0,a0,-0000055C

l23077704:
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,0000000023075200
	c.j	00000000230776D4

l23077710:
	lui	a0,000230C4
	addi	a0,a0,-0000054C
	jal	ra,0000000023082388
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	lui	a5,000230C4
	flw	fa5,2684(a5)
	lui	a1,00023077
	c.li	a5,FFFFFFFF
	c.addi4spn	a2,00000010
	addi	a1,a1,+0000075E
	c.mv	a0,s0
	c.sdsp	a5,00000048
	c.swsp	a5,0000000C
	jal	ra,00000000230751F8

l23077746:
	c.lwsp	a6,000000E4
	c.beqz	a5,0000000023077754

l2307774A:
	lui	a0,000230C4
	addi	a0,a0,-0000052C
	c.j	0000000023077704

l23077754:
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.j	0000000023077746

;; iperf_server_udp_recv_fn: 2307775E
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
	jal	ra,00000000230A3A68
	beq	s5,zero,00000000230778F4

l23077796:
	jal	ra,0000000023069AF6
	lw	s9,s0,+00000018
	c.sw	s0,32(a0)
	c.mv	s4,a0
	bne	s9,zero,00000000230777A8

l230777A6:
	c.mv	s9,a0

l230777A8:
	c.lw	s0,28(a4)
	sw	s9,s0,+00000018
	c.bnez	a4,00000000230777B2

l230777B0:
	c.mv	a4,s4

l230777B2:
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
	bge	s3,zero,0000000023077914

l230777FE:
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
	lui	a0,000230C4
	addi	a0,a0,-0000050C
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
	jal	ra,0000000023082388
	c.mv	a3,s8
	c.mv	a2,s7
	c.mv	a1,s5
	c.mv	a0,s6
	jal	ra,0000000023075130
	c.li	a5,00000001
	c.sw	s0,0(a5)

l230778DA:
	c.lw	s0,8(a5)
	addi	a4,a5,+00000001
	beq	s3,a4,0000000023077A10

l230778E4:
	blt	a5,s3,00000000230779FE

l230778E8:
	c.lw	s0,20(a5)
	c.addi	a5,00000001
	c.sw	s0,20(a5)

l230778EE:
	c.mv	a0,s5
	jal	ra,00000000230701A4

l230778F4:
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

l23077914:
	lui	a5,0000007A
	sub	s6,s4,a4
	addi	a5,a5,+0000011F
	bgeu	a5,s6,00000000230778DA

l23077924:
	c.mv	a0,s1
	c.mv	a1,s2
	jal	ra,000000002309F31C
	lui	a5,000230C4
	flw	fs1,2796(a5)
	c.lw	s0,40(a0)
	c.lw	s0,44(a1)
	fmul.s	fs0,fa0,fs1
	c.add	a0,s1
	fcvt.s.w	fa0,s6
	sltu	s1,a0,s1
	c.add	a1,s2
	c.add	a1,s1
	lui	a5,000230C4
	c.sw	s0,40(a0)
	c.sw	s0,44(a1)
	flw	fs2,2800(a5)
	fdiv.s	fs0,fs0,fa0
	jal	ra,000000002309F31C
	fmul.s	fs1,fa0,fs1
	sub	s4,s4,s9
	fcvt.s.w	fa5,s4
	fdiv.s	fa5,fs1,fa5
	fmul.s	fs0,fs0,fs2
	fmul.s	fs2,fa5,fs2
	c.flw	fs0,56(a5)
	flt.s	a5,fs0,fa5
	c.beqz	a5,0000000023077980

l2307797E:
	c.fsw	s0,56(s0)

l23077980:
	c.flw	fs0,60(a5)
	flt.s	a5,fa5,fs0
	c.beqz	a5,000000002307798A

l23077988:
	c.fsw	s0,60(s0)

l2307798A:
	c.flw	fs0,56(a0)
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,00000014
	c.swsp	a1,00000094
	jal	ra,00000000230A31AC
	c.lw	s0,20(a3)
	c.flw	fs0,60(a0)
	c.swsp	a0,00000010
	c.swsp	a3,00000008
	c.swsp	a1,00000090
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs2,fs2
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,00000000230A31AC
	c.lwsp	s0,00000118
	c.lwsp	zero,000001D4
	c.lwsp	tp,000001F4
	c.lwsp	a2,00000138
	lui	a2,000230C4
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a2,-000004DC
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000030
	jal	ra,00000000230823DA
	lui	a0,000230C7
	c.addi4spn	a1,00000030
	addi	a0,a0,-00000688
	jal	ra,0000000023082388
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
	c.j	00000000230778DA

l230779FE:
	c.lw	s0,16(a4)
	sub	a5,s3,a5
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	c.sw	s0,16(a5)

l23077A0A:
	sw	s3,s0,+00000008
	c.j	00000000230778EE

l23077A10:
	blt	a5,s3,0000000023077A0A

l23077A14:
	c.j	00000000230778EE

;; iperf_client_udp: 23077A16
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
	jal	ra,00000000230A3A68
	addi	a0,zero,+00000514
	jal	ra,000000002306488A
	c.bnez	a0,0000000023077A86

l23077A56:
	c.mv	a0,s3
	jal	ra,0000000023064972

l23077A5C:
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

l23077A86:
	c.mv	s0,a0
	c.li	a5,00000000
	addi	a4,zero,+00000514

l23077A8E:
	add	a3,s0,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023077A8E

l23077A9C:
	c.li	a2,00000011
	c.li	a1,00000002
	c.li	a0,00000002
	jal	ra,000000002306B818
	c.mv	s1,a0
	bge	a0,zero,0000000023077AC2

l23077AAC:
	lui	a0,000230C4
	addi	a0,a0,-00000644
	jal	ra,0000000023082388

l23077AB8:
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.j	0000000023077A56

l23077AC2:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	jal	ra,00000000230A3A68
	c.lui	s2,00001000
	c.li	s4,00000002
	addi	a0,s2,+0000038A
	sb	s4,sp,+00000021
	jal	ra,000000002306BC12
	sh	a0,sp,+00000022
	lui	a0,000230B2
	addi	a0,a0,+00000104
	jal	ra,000000002306F4D2
	c.swsp	a0,00000090
	c.li	a2,00000010
	c.addi4spn	a1,00000020
	c.mv	a0,s1
	jal	ra,000000002306B3CA
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023077B12

l23077AFE:
	lui	a0,000230C4
	addi	a0,a0,-0000055C
	jal	ra,0000000023082388
	c.mv	a0,s1
	jal	ra,000000002306B430
	c.j	0000000023077AB8

l23077B12:
	lui	a0,000230C4
	addi	a0,a0,-0000054C
	jal	ra,0000000023082388
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,00000000230A3A68
	addi	a0,s2,+00000389
	sb	s4,sp,+00000031
	jal	ra,000000002306BC12
	sh	a0,sp,+00000032
	c.mv	a0,s3
	jal	ra,000000002306F4D2
	c.swsp	a0,00000098
	jal	ra,00000000230629A4
	lui	a5,000230C4
	flw	fs3,2684(a5)
	lui	a5,000230C4
	flw	fs5,2484(a5)
	lui	a5,000230C4
	fmv.w.x	fs4,zero
	flw	fs2,2488(a5)
	c.mv	s6,a0
	c.mv	s11,a0
	c.li	s4,00000001
	c.li	s3,00000000
	c.li	s5,00000000
	c.li	s10,00000000
	addi	s2,s2,+00000387
	lui	s8,000230C4
	lui	s9,000230C7

l23077B78:
	jal	ra,00000000230629A4
	sub	a5,a0,s11
	c.mv	s7,a0
	bgeu	s2,a5,0000000023077C36

l23077B86:
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
	jal	ra,000000002309F31C
	sub	a5,s7,s6
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,0000000023077BD8

l23077BD4:
	fmv.s	fs3,fs0,fs0

l23077BD8:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023077BE2

l23077BDE:
	fmv.s	fs4,fs0,fs0

l23077BE2:
	fmv.s	fa0,fs3,fs3
	c.mv	s11,s7
	c.li	s10,00000000
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,00000000230A31AC
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,s8,-0000062C
	addi	a1,zero,+00000040
	c.addi4spn	a0,00000040
	jal	ra,00000000230823DA
	c.addi4spn	a1,00000040
	addi	a0,s9,-00000688
	jal	ra,0000000023082388

l23077C36:
	c.mv	a0,s4
	jal	ra,000000002306BC20
	c.sw	s0,0(a0)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008

l23077C46:
	c.li	a5,00000010
	c.addi4spn	a4,00000030
	c.li	a3,00000000
	addi	a2,zero,+00000514
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306B688
	bge	zero,a0,0000000023077C62

l23077C5C:
	c.add	s10,a0

l23077C5E:
	c.addi	s4,00000001
	c.j	0000000023077B78

l23077C62:
	c.beqz	a0,0000000023077C5E

l23077C64:
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023077C46

l23077C6A:
	c.swsp	a0,00000008
	c.mv	a0,s1
	jal	ra,000000002306B430
	addi	a0,zero,+000007D0
	jal	ra,0000000023062CC4
	c.lwsp	a6,00000064
	lui	a0,000230C4
	addi	a0,a0,-0000060C
	jal	ra,0000000023082388
	c.li	a0,00000000
	jal	ra,0000000023062720
	c.j	0000000023077A5C

;; iperf_server: 23077C90
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
	jal	ra,00000000230A3A68
	addi	a0,s2,+00000450
	jal	ra,000000002306488A
	c.bnez	a0,0000000023077D10

l23077CD2:
	lui	a0,000230C4
	addi	a0,a0,-000005F0
	jal	ra,0000000023082388

l23077CDE:
	c.beqz	s1,0000000023077CE6

l23077CE0:
	c.mv	a0,s1
	jal	ra,0000000023064972

l23077CE6:
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

l23077D10:
	c.mv	s3,a0
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002306B818
	c.mv	s0,a0
	bge	a0,zero,0000000023077D36

l23077D22:
	lui	a0,000230C4
	addi	a0,a0,-000005E4
	jal	ra,0000000023082388

l23077D2E:
	c.mv	a0,s3
	jal	ra,0000000023064972
	c.j	0000000023077CDE

l23077D36:
	c.li	a5,00000002
	addi	a0,s2,+00000389
	sb	a5,sp,+00000031
	jal	ra,000000002306BC12
	sh	a0,sp,+00000032
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.swsp	zero,00000098
	jal	ra,00000000230A3A68
	c.li	a2,00000010
	c.addi4spn	a1,00000030
	c.mv	a0,s0
	jal	ra,000000002306B3CA
	c.li	s2,FFFFFFFF
	bne	a0,s2,0000000023077D78

l23077D64:
	lui	a0,000230C4
	addi	a0,a0,-000005D4

l23077D6C:
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002306B430
	c.j	0000000023077D2E

l23077D78:
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,000000002306B546
	bne	a0,s2,0000000023077D8E

l23077D84:
	lui	a0,000230C4
	addi	a0,a0,-000005C0
	c.j	0000000023077D6C

l23077D8E:
	lui	a5,000230C4
	flw	fs3,2684(a5)
	lui	a5,000230C4
	flw	fs5,2484(a5)
	lui	a5,000230C4
	fmv.w.x	fs4,zero
	flw	fs2,2488(a5)
	c.li	s2,00000000
	c.li	s4,00000000

l23077DAE:
	c.li	a5,00000010
	c.addi4spn	a2,00000028
	c.addi4spn	a1,00000040
	c.mv	a0,s0
	c.swsp	a5,00000014
	jal	ra,000000002306B290
	c.mv	s1,a0
	c.addi4spn	a0,00000044
	jal	ra,000000002306F586
	c.swsp	a0,00000008
	lhu	a0,sp,+00000042
	c.lui	s6,00001000
	addi	s8,s6,+00000387
	jal	ra,000000002306BC12
	c.lwsp	a6,00000064
	c.mv	a2,a0
	lui	a0,000230C4
	addi	a0,a0,-000005B0
	jal	ra,0000000023082388
	c.li	a5,00000001
	c.li	a4,00000004
	c.addi4spn	a3,0000002C
	c.li	a2,00000001
	c.li	a1,00000006
	c.mv	a0,s1
	c.swsp	a5,00000094
	jal	ra,000000002306B8BC
	jal	ra,00000000230629A4
	c.mv	s5,a0
	c.mv	s10,a0

l23077DFE:
	c.li	s9,00000000
	addi	s11,s6,+00000450

l23077E04:
	c.li	a3,00000000
	c.mv	a2,s11
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002306B680
	bge	zero,a0,0000000023077EDC

l23077E14:
	c.add	s9,a0
	jal	ra,00000000230629A4
	sub	a5,a0,s10
	c.mv	s7,a0
	bgeu	s8,a5,0000000023077E04

l23077E24:
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
	jal	ra,000000002309F31C
	sub	a5,s7,s5
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,0000000023077E76

l23077E72:
	fmv.s	fs3,fs0,fs0

l23077E76:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023077E80

l23077E7C:
	fmv.s	fs4,fs0,fs0

l23077E80:
	fmv.s	fa0,fs3,fs3
	c.mv	s10,s7
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,00000000230A31AC
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	lui	a3,000230C4
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a3,-0000062C
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000050
	jal	ra,00000000230823DA
	lui	a0,000230C7
	c.addi4spn	a1,00000050
	addi	a0,a0,-00000688
	jal	ra,0000000023082388
	c.j	0000000023077DFE

l23077EDC:
	blt	s1,zero,0000000023077DAE

l23077EE0:
	c.mv	a0,s1
	jal	ra,000000002306B430
	c.j	0000000023077DAE

;; iperf_client_tcp: 23077EE8
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
	jal	ra,00000000230A3A68
	addi	a0,s0,+00000450
	jal	ra,000000002306488A
	c.bnez	a0,0000000023077F5A

l23077F2A:
	c.mv	a0,s5
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

l23077F5A:
	c.mv	s3,a0
	c.li	a5,00000000
	addi	s0,s0,+00000450

l23077F62:
	add	a4,s3,a5
	sb	a5,a4,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023077F62

l23077F70:
	lui	a5,000230C4
	flw	fs3,2684(a5)
	lui	a5,000230C4
	flw	fs5,2484(a5)
	lui	a5,000230C4
	fmv.w.x	fs4,zero
	flw	fs2,2488(a5)
	c.li	s2,00000000
	c.li	s4,00000000

l23077F90:
	c.li	a2,00000006
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002306B818
	c.mv	s0,a0
	bge	a0,zero,0000000023077FB6

l23077FA0:
	lui	a0,000230C4
	addi	a0,a0,-00000644
	jal	ra,0000000023082388

l23077FAC:
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.j	0000000023077F90

l23077FB6:
	c.lui	s1,00001000
	c.li	a5,00000002
	addi	a0,s1,+00000389
	sb	a5,sp,+00000031
	jal	ra,000000002306BC12
	sh	a0,sp,+00000032
	c.mv	a0,s5
	jal	ra,000000002306F4D2
	c.swsp	a0,00000098
	c.li	a2,00000010
	c.addi4spn	a1,00000030
	c.mv	a0,s0
	jal	ra,000000002306B4D8
	c.li	a5,FFFFFFFF
	bne	a0,a5,0000000023077FF6

l23077FE2:
	lui	a0,000230C4
	addi	a0,a0,-0000069C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002306B430
	c.j	0000000023077FAC

l23077FF6:
	lui	a0,000230C4
	addi	a0,a0,-00000688
	jal	ra,0000000023082388
	c.li	a5,00000001
	c.li	a4,00000004
	c.addi4spn	a3,0000002C
	c.li	a2,00000001
	c.li	a1,00000006
	c.mv	a0,s0
	c.swsp	a5,00000094
	jal	ra,000000002306B8BC
	jal	ra,00000000230629A4
	addi	s8,s1,+00000387
	c.mv	s6,a0
	c.mv	s11,a0
	c.li	s10,00000000
	lui	s9,000230C7
	addi	s1,s1,+00000450

l2307802A:
	jal	ra,00000000230629A4
	sub	a5,a0,s11
	c.mv	s7,a0
	bgeu	s8,a5,00000000230780EC

l23078038:
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
	jal	ra,000000002309F31C
	sub	a5,s7,s6
	fdiv.s	fs1,fa0,fs5
	fmul.s	fs0,fs0,fs2
	fcvt.s.w	fa0,a5
	fdiv.s	fs1,fs1,fa0
	fdiv.s	fs0,fs0,fs2
	fmul.s	fs1,fs1,fs2
	flt.s	a5,fs0,fs3
	fdiv.s	fs1,fs1,fs2
	c.beqz	a5,000000002307808A

l23078086:
	fmv.s	fs3,fs0,fs0

l2307808A:
	flt.s	a5,fs4,fs0
	c.beqz	a5,0000000023078094

l23078090:
	fmv.s	fs4,fs0,fs0

l23078094:
	fmv.s	fa0,fs3,fs3
	c.mv	s11,s7
	c.li	s10,00000000
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs0,fs0
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs4,fs4
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	jal	ra,00000000230A31AC
	fmv.s	fa0,fs1,fs1
	c.swsp	a0,00000004
	c.swsp	a1,00000084
	jal	ra,00000000230A31AC
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	lui	a3,000230C4
	c.swsp	a0,00000000
	c.swsp	a1,00000080
	addi	a2,a3,-0000062C
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000040
	jal	ra,00000000230823DA
	c.addi4spn	a1,00000040
	addi	a0,s9,-00000688
	jal	ra,0000000023082388

l230780EC:
	c.li	a3,00000000
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002306B7A6
	bge	zero,a0,0000000023078100

l230780FC:
	c.add	s10,a0
	c.j	000000002307802A

l23078100:
	c.beqz	a0,000000002307802A

l23078102:
	c.mv	a0,s0
	jal	ra,000000002306B430
	addi	a0,zero,+000007D0
	jal	ra,0000000023062CC4
	lui	a0,000230C4
	addi	a0,a0,-00000660
	jal	ra,0000000023082388
	c.j	0000000023077F90

;; ipus_test_cmd: 2307811E
ipus_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,0000000023078144

l23078124:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000003D8
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,000230B2
	c.lwsp	a2,00000020
	addi	a0,a0,+00000104
	c.addi	sp,00000010

l23078140:
	jal	zero,00000000230775E0

l23078144:
	c.li	a5,00000002
	bne	a2,a5,000000002307814E

l2307814A:
	c.lw	a3,4(a0)
	c.j	0000000023078140

l2307814E:
	lui	a0,000230C4
	addi	a0,a0,-00000398
	jal	zero,0000000023082388

;; ipu_test_cmd: 2307815A
ipu_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,0000000023078180

l23078160:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000450
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,000230C4
	c.lwsp	a2,00000020
	addi	a0,a0,-0000040C
	c.addi	sp,00000010

l2307817C:
	jal	zero,0000000023077614

l23078180:
	c.li	a5,00000002
	bne	a2,a5,000000002307818A

l23078186:
	c.lw	a3,4(a0)
	c.j	000000002307817C

l2307818A:
	lui	a0,000230C4
	addi	a0,a0,-000003FC
	jal	zero,0000000023082388

;; ipc_test_cmd: 23078196
ipc_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,00000000230781BC

l2307819C:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000704
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,000230C4
	c.lwsp	a2,00000020
	addi	a0,a0,-0000040C
	c.addi	sp,00000010

l230781B8:
	jal	zero,000000002307767C

l230781BC:
	c.li	a5,00000002
	bne	a2,a5,00000000230781C6

l230781C2:
	c.lw	a3,4(a0)
	c.j	00000000230781B8

l230781C6:
	lui	a0,000230C4
	addi	a0,a0,-000006C0
	jal	zero,0000000023082388

;; ips_test_cmd: 230781D2
ips_test_cmd proc
	c.li	a5,00000001
	bne	a2,a5,00000000230781F8

l230781D8:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004AC
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	lui	a0,000230C4
	c.lwsp	a2,00000020
	addi	a0,a0,-0000040C
	c.addi	sp,00000010

l230781F4:
	jal	zero,0000000023077648

l230781F8:
	c.li	a5,00000002
	bne	a2,a5,0000000023078202

l230781FE:
	c.lw	a3,4(a0)
	c.j	00000000230781F4

l23078202:
	lui	a0,000230C4
	addi	a0,a0,-00000474
	jal	zero,0000000023082388

;; network_netutils_iperf_cli_register: 2307820E
;;   Called from:
;;     23000B08 (in aos_loop_proc)
network_netutils_iperf_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; dirent_type: 23078212
;;   Called from:
;;     230783DC (in file_info)
;;     23078482 (in file_info)
;;     230786A2 (in romfs_readdir)
;;     23078A34 (in romfs_stat)
dirent_type proc
	lbu	a5,a0,+00000003
	c.andi	a5,00000007
	c.beqz	a5,000000002307822E

l2307821A:
	c.li	a4,00000002
	c.li	a0,00000002
	beq	a5,a4,0000000023078230

l23078222:
	c.li	a4,00000001
	c.li	a0,00000003
	bne	a5,a4,0000000023078230

l2307822A:
	c.li	a0,00000001
	c.jr	ra

l2307822E:
	c.li	a0,00000000

l23078230:
	c.jr	ra

;; dirent_hardfh: 23078232
;;   Called from:
;;     2307840C (in file_info)
;;     23078466 (in file_info)
;;     230784F8 (in file_info)
;;     2307863E (in romfs_readdir)
;;     23078694 (in romfs_readdir)
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

;; dirent_childaddr: 2307825A
;;   Called from:
;;     230787D2 (in dirent_file)
;;     230789A2 (in romfs_opendir)
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

;; dirent_size: 23078282
;;   Called from:
;;     230782E8 (in romfs_ioctl)
;;     2307832A (in romfs_read)
;;     2307856C (in romfs_lseek)
;;     23078A50 (in romfs_stat)
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

;; romfs_close: 230782A8
romfs_close proc
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_ioctl: 230782B4
romfs_ioctl proc
	c.li	a5,FFFFFFFE
	c.beqz	a0,00000000230782FE

l230782B8:
	c.beqz	a2,00000000230782FE

l230782BA:
	c.li	a4,00000001
	c.li	a5,FFFFFFFD
	bne	a1,a4,00000000230782FE

l230782C2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000004
	c.mv	s1,a0
	c.mv	s0,a2
	addi	a0,s2,+00000010
	jal	ra,00000000230A4220
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	c.addi	a0,00000010
	c.add	a0,s2
	c.sw	s0,0(a0)
	c.lw	s1,4(a0)
	jal	ra,0000000023078282
	c.sw	s0,4(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230782FE:
	c.mv	a0,a5
	c.jr	ra

;; romfs_read: 23078302
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
	jal	ra,00000000230A4220
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,0000000023078282
	lw	a2,s2,+00000008
	bgeu	a2,a0,0000000023078384

l23078336:
	addi	a1,s1,+00000010
	c.andi	a1,FFFFFFF0
	c.addi	a1,00000010
	c.add	a1,a2
	add	a5,a2,s0
	c.mv	s4,a0
	c.add	a1,s3
	bgeu	a5,a0,0000000023078372

l2307834C:
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,00000000230A382C
	lw	a5,s2,+00000008
	c.add	a5,s0
	sw	a5,s2,+00000008

l2307835E:
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

l23078372:
	sub	s0,a0,a2
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,00000000230A382C
	sw	s4,s2,+00000008
	c.j	000000002307835E

l23078384:
	c.li	s0,00000000
	c.j	000000002307835E

;; file_info: 23078388
;;   Called from:
;;     2307882A (in dirent_file)
;;     2307888C (in dirent_file)
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
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bltu	a5,a0,00000000230784E2

l230783B4:
	lui	s3,0004200F
	lw	a5,s3,+000006A0
	addi	s3,s3,+000006A0
	bne	a5,s0,00000000230783D6

l230783C4:
	addi	a0,s0,+00000010
	jal	ra,00000000230A4220
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s0,a0

l230783D6:
	c.li	s7,00000001
	c.li	s8,00000002

l230783DA:
	c.mv	a0,s0
	jal	ra,0000000023078212
	bne	a0,s7,000000002307843A

l230783E4:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	bne	a0,zero,00000000230784F2

l230783FA:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.add	a0,s0
	lbu	a5,a0,+00000010
	bne	a5,zero,00000000230784F2

l2307840A:
	c.mv	a0,s0
	jal	ra,0000000023078232
	c.beqz	a0,0000000023078418

l23078412:
	lw	s1,s3,+00000000

l23078416:
	c.add	s1,a0

l23078418:
	sw	s0,s5,+00000000
	sw	s1,s4,+00000000
	c.li	a0,00000000

l23078422:
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

l2307843A:
	bne	a0,s8,000000002307846C

l2307843E:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230784F2

l23078452:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.add	a0,s0
	lbu	a5,a0,+00000010
	c.bnez	a5,00000000230784F2

l23078460:
	c.mv	a0,s0
	lw	s1,s3,+00000000
	jal	ra,0000000023078232
	c.j	0000000023078416

l2307846C:
	c.beqz	a0,00000000230784F2

l2307846E:
	lui	a5,0004200F
	lw	a4,a5,+00000560
	c.mv	s3,a5
	c.beqz	a4,00000000230784E6

l2307847A:
	jal	ra,00000000230629C6

l2307847E:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,0000000023078212
	c.lwsp	a2,00000064
	c.mv	a6,a0
	lui	s1,000230C4
	lui	s2,000230AA
	lui	a0,000230C4
	c.mv	a5,s0
	addi	a4,zero,+000000E6
	addi	a3,s1,-00000258
	addi	a2,s2,-00000228
	addi	a0,a0,-0000024C
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.li	a3,00000008
	c.mv	a2,s0
	addi	a1,zero,+000000E7
	addi	a0,s1,-00000258
	jal	ra,000000002307A236
	lw	a5,s3,+00000560
	c.beqz	a5,00000000230784EC

l230784C4:
	jal	ra,00000000230629C6

l230784C8:
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+000000E8
	addi	a3,s1,-00000258
	addi	a2,s2,-00000228
	addi	a0,a0,-00000208
	jal	ra,000000002307A208

l230784E2:
	c.li	a0,FFFFFFFF
	c.j	0000000023078422

l230784E6:
	jal	ra,00000000230629A4
	c.j	000000002307847E

l230784EC:
	jal	ra,00000000230629A4
	c.j	00000000230784C8

l230784F2:
	lw	s6,s3,+00000000
	c.mv	a0,s0
	jal	ra,0000000023078232
	add	s0,s6,a0
	bltu	s0,s1,00000000230783DA

l23078504:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002307853C

l2307850E:
	jal	ra,00000000230629C6

l23078512:
	c.mv	a1,a0
	lui	a3,000230C4
	lui	a2,000230C0
	lui	a0,000230C4
	c.mv	a7,s1
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000EF
	addi	a3,a3,-00000258
	addi	a2,a2,+000003D4
	addi	a0,a0,-000001D8
	jal	ra,000000002307A208
	c.j	00000000230784E2

l2307853C:
	jal	ra,00000000230629A4
	c.j	0000000023078512

;; romfs_closedir: 23078542
romfs_closedir proc
	c.beqz	a1,0000000023078556

l23078544:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,000000002307BEF8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23078556:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_lseek: 2307855A
romfs_lseek proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a2,00000004
	c.li	a1,FFFFFFFF
	c.beqz	a0,0000000023078588

l23078568:
	c.mv	s0,a0
	c.lw	a0,4(a0)
	jal	ra,0000000023078282
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a2,0000000023078592

l23078576:
	bge	a1,zero,00000000230785B2

l2307857A:
	lui	a0,000230C4
	addi	a0,a0,-00000180
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFE

l23078588:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

l23078592:
	c.li	a5,00000002
	bne	a2,a5,00000000230785C6

l23078598:
	bge	zero,a1,00000000230785AC

l2307859C:
	lui	a0,000230C4
	addi	a0,a0,-00000180
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFD
	c.j	0000000023078588

l230785AC:
	c.add	a1,a0

l230785AE:
	blt	a1,zero,00000000230785B6

l230785B2:
	bgeu	a0,a1,00000000230785E2

l230785B6:
	lui	a0,000230C4
	addi	a0,a0,-00000180
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFB
	c.j	0000000023078588

l230785C6:
	c.li	a5,00000001
	bne	a2,a5,00000000230785D2

l230785CC:
	c.lw	s0,8(a5)
	c.add	a1,a5
	c.j	00000000230785AE

l230785D2:
	lui	a0,000230C4
	addi	a0,a0,-00000180
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFC
	c.j	0000000023078588

l230785E2:
	c.sw	s0,8(a1)
	c.j	0000000023078588

;; romfs_readdir: 230785E6
romfs_readdir proc
	c.beqz	a1,00000000230786C0

l230785E8:
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
	lui	s5,0004200F
	addi	s6,a1,+00000019
	addi	s3,s3,-00000100
	addi	s4,s4,-00000200
	addi	s2,s2,-00000200

l23078622:
	c.lw	s0,16(a5)
	c.bnez	a5,000000002307867C

l23078626:
	c.lw	s0,8(a5)
	c.sw	s0,16(a5)

l2307862A:
	c.lw	s0,16(a1)
	addi	a2,zero,+00000040
	c.mv	a0,s6
	c.addi	a1,00000010
	jal	ra,00000000230A439C
	c.lw	s0,16(a0)
	sb	zero,s0,+00000059
	jal	ra,0000000023078232
	c.bnez	a0,00000000230786B2

l23078644:
	c.lw	s0,12(a0)

l23078646:
	c.lw	s0,24(a5)
	c.sw	s0,16(a0)
	and	a5,a5,s3
	bne	a5,s4,00000000230786BA

l23078652:
	lbu	a5,s0,+0000001B
	c.beqz	a5,0000000023078622

l23078658:
	addi	a0,s0,+00000014
	c.j	0000000023078660

l2307865E:
	c.li	a0,00000000

l23078660:
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

l2307867C:
	lw	s8,s0,+0000000C
	bgeu	a5,s8,000000002307865E

l23078684:
	lw	s9,s5,+000006A0
	c.li	s10,00000001

l2307868A:
	lw	s7,s0,+00000010
	bgeu	s7,s8,000000002307865E

l23078692:
	c.mv	a0,s7
	jal	ra,0000000023078232
	c.mv	s1,a0
	c.beqz	a0,000000002307862A

l2307869C:
	beq	s7,zero,000000002307865E

l230786A0:
	c.mv	a0,s7
	jal	ra,0000000023078212
	c.addi	a0,FFFFFFFF
	bgeu	s10,a0,000000002307862A

l230786AC:
	c.add	s1,s9
	c.sw	s0,16(s1)
	c.j	000000002307868A

l230786B2:
	lw	a5,s5,+000006A0
	c.add	a0,a5
	c.j	0000000023078646

l230786BA:
	bne	a5,s2,0000000023078658

l230786BE:
	c.j	0000000023078622

l230786C0:
	c.li	a0,00000000
	c.jr	ra

;; dirent_file: 230786C4
;;   Called from:
;;     23078972 (in romfs_opendir)
;;     230789CE (in romfs_stat)
;;     23078B3C (in romfs_open)
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
	lui	s3,000230C0
	jal	ra,00000000230A4220
	c.mv	s4,a0
	addi	a0,s3,-000004B8
	jal	ra,00000000230A4220
	bltu	s4,a0,000000002307873A

l230786F4:
	addi	a0,s3,-000004B8
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s3,-000004B8
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023078744

l2307870A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002307873E

l23078714:
	jal	ra,00000000230629C6

l23078718:
	addi	a4,zero,+00000115

l2307871C:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000320

l23078736:
	jal	ra,000000002307A208

l2307873A:
	c.li	a0,FFFFFFFF
	c.j	00000000230788DA

l2307873E:
	jal	ra,00000000230629A4
	c.j	0000000023078718

l23078744:
	addi	a0,s3,-000004B8
	jal	ra,00000000230A4220
	c.add	s0,a0
	lbu	a5,s0,+00000000
	addi	a4,zero,+0000002F
	beq	a5,a4,0000000023078776

l2307875A:
	c.beqz	a5,0000000023078778

l2307875C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078770

l23078766:
	jal	ra,00000000230629C6

l2307876A:
	addi	a4,zero,+0000011A
	c.j	000000002307871C

l23078770:
	jal	ra,00000000230629A4
	c.j	000000002307876A

l23078776:
	c.addi	s0,00000001

l23078778:
	lui	a2,0004200F
	lw	a3,a2,+000006A0
	lui	a0,00000FF0
	c.li	s4,00000000
	c.lw	a3,8(a5)
	c.swsp	a3,00000080
	addi	s3,a2,+000006A0
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

l230787B2:
	lbu	a5,s0,+00000000
	beq	a5,zero,00000000230788CE

l230787BA:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,00000000230A3E88
	c.mv	s5,a0
	bne	s4,s7,00000000230787DE

l230787CA:
	c.lwsp	tp,000000C8
	lw	s4,s3,+00000000
	c.mv	a0,s6
	jal	ra,000000002307825A
	c.add	a0,s4
	beq	s6,a0,00000000230788F0

l230787DC:
	c.swsp	a0,00000080

l230787DE:
	bne	s5,zero,000000002307886E

l230787E2:
	c.mv	a0,s0
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bgeu	a5,a0,0000000023078824

l230787F0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002307881E

l230787FA:
	jal	ra,00000000230629C6

l230787FE:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000138
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-000002F8
	c.j	0000000023078736

l2307881E:
	jal	ra,00000000230629A4
	c.j	00000000230787FE

l23078824:
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023078388
	c.beqz	a0,00000000230788CE

l23078830:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078868

l2307883A:
	jal	ra,00000000230629C6

l2307883E:
	c.lwsp	s0,00000028
	c.lwsp	tp,00000008
	c.mv	a1,a0
	lui	a3,000230C4
	lui	a2,000230C0
	lui	a0,000230C4
	c.mv	a5,s0
	addi	a4,zero,+0000013C
	addi	a3,a3,-00000258
	addi	a2,a2,+000003D4
	addi	a0,a0,-000002D4
	jal	ra,000000002307A208
	c.j	000000002307873A

l23078868:
	jal	ra,00000000230629A4
	c.j	000000002307883E

l2307886E:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	sub	a2,s5,s0
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023078388
	c.beqz	a0,00000000230788C6

l23078892:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230788C0

l2307889C:
	jal	ra,00000000230629C6

l230788A0:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000147
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000280
	c.j	0000000023078736

l230788C0:
	jal	ra,00000000230629A4
	c.j	00000000230788A0

l230788C6:
	addi	s0,s5,+00000001
	c.li	s4,00000001
	c.j	00000000230787B2

l230788CE:
	c.lwsp	tp,000000E4
	c.li	a0,00000000
	sw	a5,s2,+00000000
	c.lwsp	s0,000000E4
	c.sw	s1,0(a5)

l230788DA:
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

l230788F0:
	c.li	a0,FFFFFFFE
	c.j	00000000230788DA

;; romfs_opendir: 230788F4
romfs_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	s2,s2,+000006A0
	lw	s0,s2,+00000000
	c.bnez	s0,0000000023078950

l2307890C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002307894A

l23078916:
	jal	ra,00000000230629C6

l2307891A:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+0000020D
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-000000C8
	jal	ra,000000002307A208

l2307893C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2307894A:
	jal	ra,00000000230629A4
	c.j	000000002307891A

l23078950:
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	jal	ra,000000002307BEF0
	c.mv	s0,a0
	c.bnez	a0,0000000023078962

l2307895E:
	c.li	s0,00000000
	c.j	000000002307893C

l23078962:
	addi	a2,zero,+0000005D
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,00000000230786C4
	c.bnez	a0,00000000230789B0

l23078978:
	c.lwsp	s0,00000024
	lw	s2,s2,+00000000
	bne	s1,s2,00000000230789A0

l23078982:
	addi	a0,s1,+00000010
	jal	ra,00000000230A4220
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s1,a0
	c.sw	s0,8(s1)

l23078996:
	c.lwsp	a2,000000E4
	sw	zero,s0,+00000010
	c.sw	s0,12(a5)
	c.j	000000002307893C

l230789A0:
	c.mv	a0,s1
	jal	ra,000000002307825A
	c.beqz	a0,000000002307895E

l230789A8:
	c.add	s2,a0
	sw	s2,s0,+00000008
	c.j	0000000023078996

l230789B0:
	c.mv	a0,s0
	jal	ra,000000002307BEF8
	c.j	000000002307895E

;; romfs_stat: 230789B8
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
	jal	ra,00000000230786C4
	c.mv	s0,a0
	c.beqz	a0,0000000023078A1E

l230789D6:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078A18

l230789E0:
	jal	ra,00000000230629C6

l230789E4:
	c.mv	a1,a0
	lui	a3,000230C4
	lui	a2,000230C0
	lui	a0,000230C4
	c.mv	a5,s0
	addi	a4,zero,+000001EA
	addi	a3,a3,-00000258
	addi	a2,a2,+000003D4
	addi	a0,a0,+00000070
	jal	ra,000000002307A208
	c.li	s0,FFFFFFFF

l23078A0A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23078A18:
	jal	ra,00000000230629A4
	c.j	00000000230789E4

l23078A1E:
	lui	a5,0004200F
	c.lwsp	s0,00000048
	lw	a5,a5,+000006A0
	bne	s2,a5,0000000023078A32

l23078A2C:
	sw	zero,s1,+00000010
	c.j	0000000023078A0A

l23078A32:
	c.mv	a0,s2
	jal	ra,0000000023078212
	c.li	a5,00000001
	bne	a0,a5,0000000023078A48

l23078A3E:
	sw	zero,s1,+00000010
	c.lui	a5,00004000

l23078A44:
	c.sw	s1,4(a5)
	c.j	0000000023078A0A

l23078A48:
	c.li	a5,00000002
	bne	a0,a5,0000000023078A5A

l23078A4E:
	c.mv	a0,s2
	jal	ra,0000000023078282
	c.sw	s1,16(a0)
	c.lui	a5,00008000
	c.j	0000000023078A44

l23078A5A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078A8E

l23078A64:
	jal	ra,00000000230629C6

l23078A68:
	c.mv	a1,a0
	lui	a3,000230C4
	lui	a2,000230C0
	lui	a0,000230C4
	addi	a4,zero,+000001FA
	addi	a3,a3,-00000258
	addi	a2,a2,+000003D4
	addi	a0,a0,+0000009C
	jal	ra,000000002307A208
	c.li	s0,FFFFFFFE
	c.j	0000000023078A0A

l23078A8E:
	jal	ra,00000000230629A4
	c.j	0000000023078A68

;; romfs_open: 23078A94
romfs_open proc
	lui	a5,0004200F
	lw	a5,a5,+000006A0
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.bnez	a5,0000000023078AFA

l23078AAE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078AF4

l23078AB8:
	jal	ra,00000000230629C6

l23078ABC:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000162
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-000000C8

l23078ADA:
	jal	ra,000000002307A208
	c.li	s1,FFFFFFFF

l23078AE0:
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

l23078AF4:
	jal	ra,00000000230629A4
	c.j	0000000023078ABC

l23078AFA:
	c.mv	s3,a0
	c.mv	a0,a1
	c.mv	s2,a1
	lui	s0,000230C0
	jal	ra,00000000230A4220
	c.mv	s5,a0
	addi	a0,s0,-000004B8
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s0,-000004B8
	c.mv	a0,s2
	jal	ra,00000000230A42AC
	c.mv	s1,a0
	c.bnez	a0,0000000023078B48

l23078B22:
	c.li	s0,00000000
	c.li	a3,00000019
	addi	a2,zero,+0000002F
	c.li	a1,00000009
	addi	a0,zero,+0000005F
	c.li	a6,00000001

l23078B32:
	bne	s5,s0,0000000023078B80

l23078B36:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	jal	ra,00000000230786C4
	beq	a0,zero,0000000023078C76

l23078B44:
	c.li	s1,FFFFFFFE
	c.j	0000000023078AE0

l23078B48:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078B7A

l23078B52:
	jal	ra,00000000230629C6

l23078B56:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000061
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000168

l23078B74:
	jal	ra,000000002307A208
	c.j	0000000023078C00

l23078B7A:
	jal	ra,00000000230629A4
	c.j	0000000023078B56

l23078B80:
	add	a5,s2,s0
	lbu	a4,a5,+00000000
	addi	a5,a4,-00000061
	andi	a5,a5,+000000FF
	bgeu	a3,a5,0000000023078BD4

l23078B94:
	addi	a5,a4,-00000041
	andi	a5,a5,+000000FF
	bgeu	a3,a5,0000000023078BD0

l23078BA0:
	addi	a5,a4,-00000030
	andi	a5,a5,+000000FF
	bgeu	a1,a5,0000000023078BD0

l23078BAC:
	beq	a4,a2,0000000023078C2E

l23078BB0:
	beq	a4,a0,0000000023078BD4

l23078BB4:
	addi	a4,a4,-0000002D
	andi	a4,a4,+000000FF
	bgeu	a6,a4,0000000023078BD4

l23078BC0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.bnez	a5,0000000023078BD8

l23078BCA:
	jal	ra,00000000230629A4
	c.j	0000000023078BDC

l23078BD0:
	beq	a4,a2,0000000023078C2E

l23078BD4:
	c.addi	s0,00000001
	c.j	0000000023078B32

l23078BD8:
	jal	ra,00000000230629C6

l23078BDC:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	c.mv	a5,s0
	addi	a4,zero,+00000069
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000140
	jal	ra,000000002307A208

l23078C00:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078C70

l23078C0A:
	jal	ra,00000000230629C6

l23078C0E:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000168
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-000000F4
	c.j	0000000023078ADA

l23078C2E:
	c.beqz	s0,0000000023078C68

l23078C30:
	bne	s0,s4,0000000023078C6C

l23078C34:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078C62

l23078C3E:
	jal	ra,00000000230629C6

l23078C42:
	lui	a3,000230C4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000073
	addi	a3,a3,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000118
	c.j	0000000023078B74

l23078C62:
	jal	ra,00000000230629A4
	c.j	0000000023078C42

l23078C68:
	c.li	s4,00000000
	c.j	0000000023078BD4

l23078C6C:
	c.mv	s4,s0
	c.j	0000000023078BD4

l23078C70:
	jal	ra,00000000230629A4
	c.j	0000000023078C0E

l23078C76:
	c.lwsp	s0,000000E4
	sw	zero,s3,+00000008
	sw	a5,s3,+00000004
	c.j	0000000023078AE0

;; romfs_register: 23078C82
;;   Called from:
;;     23000ABE (in aos_loop_proc)
romfs_register proc
	c.addi16sp	FFFFFFD0
	lui	a1,0004200F
	lui	a0,000230C4
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,+0000069C
	addi	a0,a0,-0000004C
	addi	a1,a1,+0000069C
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,00000000230849C0
	lui	s0,000230C4
	c.beqz	a0,0000000023078CF0

l23078CAC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.mv	s1,a0
	c.beqz	a5,0000000023078CEA

l23078CB8:
	jal	ra,00000000230629C6

l23078CBC:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	c.mv	a5,s1
	addi	a4,zero,+00000086
	addi	a3,s0,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,-00000044
	jal	ra,000000002307A208

l23078CDC:
	c.li	a0,FFFFFFFF

l23078CDE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23078CEA:
	jal	ra,00000000230629A4
	c.j	0000000023078CBC

l23078CF0:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,0000000023084B6A
	c.lwsp	t3,00000024
	c.bnez	s1,0000000023078D3C

l23078D08:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078D36

l23078D12:
	jal	ra,00000000230629C6

l23078D16:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+0000008D
	addi	a3,s0,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,+00000008

l23078D30:
	jal	ra,000000002307A208
	c.j	0000000023078CDC

l23078D36:
	jal	ra,00000000230629A4
	c.j	0000000023078D16

l23078D3C:
	lui	s2,000230C4
	addi	a0,s2,+00000034
	jal	ra,00000000230A4220
	c.mv	a2,a0
	addi	a1,s2,+00000034
	c.mv	a0,s1
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023078D86

l23078D56:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023078D80

l23078D60:
	jal	ra,00000000230629C6

l23078D64:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C4
	addi	a4,zero,+00000092
	addi	a3,s0,-00000258
	addi	a2,a2,-00000228
	addi	a0,a0,+00000040
	c.j	0000000023078D30

l23078D80:
	jal	ra,00000000230629A4
	c.j	0000000023078D64

l23078D86:
	c.lwsp	t3,00000084
	lui	a5,0004200F
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a1,zero,+00000098
	addi	a0,s0,-00000258
	sw	a2,a5,+000006A0
	jal	ra,000000002307A236
	lui	a1,000230C4
	lui	a0,000230C0
	c.li	a2,00000000
	addi	a1,a1,-0000009C
	addi	a0,a0,-000004B8
	jal	ra,000000002307B33A
	c.j	0000000023078CDE

;; _startup_sntp: 23078DBA
_startup_sntp proc
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000000C4
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.li	a0,00000000
	c.jal	0000000023079250
	lui	a1,000230C4
	c.li	a0,00000000
	addi	a1,a1,+000000FC
	c.jal	00000000230792C6
	c.jal	00000000230791A8
	c.lwsp	a2,00000020
	lui	a0,000230C4
	addi	a0,a0,+00000110
	c.addi	sp,00000010
	jal	zero,000000002308234C

;; cmd_sntp_date: 23078DEC
cmd_sntp_date proc
	lui	a0,000230C4
	c.addi16sp	FFFFFFC0
	addi	a0,a0,+0000014C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	jal	ra,000000002308234C
	lui	a0,000230C4
	addi	a0,a0,+00000170
	jal	ra,000000002308234C
	lui	a0,0005E495
	c.addi4spn	a1,0000001C
	addi	a0,a0,+00000321
	jal	ra,000000002307A570
	c.lwsp	a2,000001F4
	lbu	a7,sp,+0000001F
	lbu	a6,sp,+0000001E
	lbu	a4,sp,+0000001C
	lbu	a3,sp,+00000020
	lbu	a2,sp,+00000021
	c.lwsp	tp,00000174
	c.swsp	a5,00000000
	lbu	a5,sp,+0000001D
	lui	s0,000230C4
	addi	a0,s0,+000001A4
	jal	ra,0000000023082388
	lui	a0,000230C4
	addi	a0,a0,+000001F4
	jal	ra,000000002308234C
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000014
	c.jal	000000002307925A
	c.lwsp	s4,00000044
	c.addi4spn	a1,0000001C
	jal	ra,000000002307A570
	c.lwsp	a2,000001F4
	lbu	a7,sp,+0000001F
	lbu	a6,sp,+0000001E
	c.swsp	a5,00000000
	lbu	a4,sp,+0000001C
	lbu	a5,sp,+0000001D
	lbu	a3,sp,+00000020
	lbu	a2,sp,+00000021
	c.lwsp	tp,00000174
	addi	a0,s0,+000001A4
	jal	ra,0000000023082388
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; cmd_sntp_time: 23078E8E
cmd_sntp_time proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.jal	000000002307925A
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	lui	a0,000230C4
	addi	a0,a0,+00000208
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; cmd_sntp_start: 23078EB2
cmd_sntp_start proc
	lui	a0,00023079
	c.li	a1,00000000
	addi	a0,a0,-00000246
	jal	zero,000000002306BA7C

;; sntp_cli_init: 23078EC0
;;   Called from:
;;     23000B0C (in aos_loop_proc)
sntp_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; sntp_retry: 23078EC4
;;   Called from:
;;     230790A2 (in sntp_recv)
;;     230791A4 (in sntp_dns_found)
sntp_retry proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000006B4
	c.lw	s0,0(a0)
	lui	a1,00023079
	c.li	a2,00000000
	addi	a1,a1,+00000134
	c.swsp	ra,00000084
	jal	ra,00000000230749EA
	c.lw	s0,0(a3)
	lui	a4,00000025
	addi	a4,a4,-00000610
	slli	a5,a3,00000001
	bltu	a4,a5,0000000023078EFA

l23078EF4:
	bgeu	a3,a5,0000000023078EFA

l23078EF8:
	c.sw	s0,0(a5)

l23078EFA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sntp_recv: 23078F02
sntp_recv proc
	lui	a0,000230C4
	c.addi16sp	FFFFFFD0
	addi	a0,a0,+00000284
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a2
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,0000000023082388
	lhu	a4,s1,+00000008
	addi	a5,zero,+00000030
	c.li	s0,FFFFFFF0
	bne	a4,a5,0000000023078F70

l23078F2A:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002307070C
	lui	a5,0004200F
	lbu	a5,a5,+000006AC
	c.andi	a0,00000007
	c.bnez	a5,0000000023078F62

l23078F3E:
	c.li	a5,00000004
	c.li	s0,FFFFFFFD
	bne	a0,a5,0000000023078F70

l23078F46:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002307070C
	bne	a0,zero,000000002307907E

l23078F52:
	lui	a0,000230C4
	addi	a0,a0,+00000294
	jal	ra,0000000023082388
	c.li	s0,00000001
	c.j	0000000023078F70

l23078F62:
	c.li	a4,00000001
	c.li	s0,FFFFFFFD
	bne	a5,a4,0000000023078F70

l23078F6A:
	c.li	a5,00000005
	beq	a0,a5,0000000023078F46

l23078F70:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	lui	a0,000230C4
	addi	a0,a0,+000002B8
	jal	ra,0000000023082388
	bne	s0,zero,0000000023079090

l23078F86:
	c.lwsp	s0,00000044
	lui	s3,0004200F
	lui	s2,0004200F
	jal	ra,000000002306BC20
	c.mv	s0,a0
	c.lwsp	a2,00000044
	addi	s3,s3,+000006A8
	addi	s2,s2,+000006A4
	jal	ra,000000002306BC20
	c.mv	s1,a0
	lui	a0,000230C4
	addi	a0,a0,+000002C8
	jal	ra,0000000023082388
	jal	ra,0000000023063658
	lui	a5,0007C558
	addi	a5,a5,+00000180
	c.add	s0,a5
	sw	s0,s3,+00000000
	sw	s1,s2,+00000000
	jal	ra,00000000230629A4
	lui	a5,0004200F
	sw	a0,a5,+000006B8
	lw	a0,s2,+00000000
	addi	a4,zero,+000003E8
	lw	a1,s3,+00000000
	srl	a0,a0,a4
	add	a5,a4,a1
	sltu	a1,a4,a1
	c.add	a0,a5
	sltu	a5,a0,a5
	c.add	a1,a5
	jal	ra,000000002305C316
	jal	ra,000000002306366C
	lui	a2,000000F4
	addi	a2,a2,+00000240
	sltu	a2,s1,a2
	lui	a0,000230C4
	c.mv	a1,s0
	addi	a0,a0,+000002D8
	jal	ra,0000000023082388
	lui	a5,0004201B
	addi	a5,a5,+00000280
	lbu	a4,a5,+00000008
	ori	a4,a4,+00000001
	sb	a4,a5,+00000008
	lui	a5,0004200F
	lbu	a5,a5,+000006AC
	c.bnez	a5,0000000023079070

l23079034:
	lui	a0,00023079
	c.li	a1,00000000
	addi	a0,a0,-0000013C
	jal	ra,0000000023074AC0
	lui	s0,00023079
	c.li	a1,00000000
	addi	a0,s0,+00000134
	jal	ra,0000000023074AC0
	c.lui	a5,00004000
	lui	a0,0000036F
	lui	a4,0004200F
	addi	a5,a5,-00000568
	c.li	a2,00000000
	addi	a1,s0,+00000134
	addi	a0,a0,-00000180
	sw	a5,a4,+000006B4
	jal	ra,00000000230749EA

l23079070:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2307907E:
	addi	a3,zero,+00000028
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002307055E
	c.li	s0,00000000
	c.j	0000000023078F70

l23079090:
	c.li	a5,00000001
	bne	s0,a5,0000000023079070

l23079096:
	lui	a5,0004200F
	lbu	a5,a5,+000006AC
	c.bnez	a5,0000000023079070

l230790A0:
	c.li	a0,00000000
	jal	ra,0000000023078EC4
	c.j	0000000023079070

;; sntp_send_request: 230790A8
;;   Called from:
;;     23079168 (in sntp_request)
;;     2307919E (in sntp_dns_found)
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
	jal	ra,0000000023070226
	c.beqz	a0,0000000023079128

l230790C6:
	c.lw	a0,4(s1)
	c.mv	s0,a0
	addi	a2,zero,+00000030
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000023
	sb	a5,s1,+00000000
	lui	a5,0004200F
	lw	a0,a5,+000006B0
	c.mv	a2,s2
	c.mv	a1,s0
	addi	a3,zero,+0000007B
	jal	ra,0000000023075130
	c.mv	a0,s0
	jal	ra,00000000230701A4
	lui	a5,0004201B
	addi	a5,a5,+00000280
	lbu	a4,a5,+00000008
	lui	a1,00023079
	c.li	a2,00000000
	c.slli	a4,01
	sb	a4,a5,+00000008
	addi	a1,a1,-0000013C

l23079114:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.lui	a0,00004000
	addi	a0,a0,-00000568
	c.addi	sp,00000010
	jal	zero,00000000230749EA

l23079128:
	lui	a1,00023079
	c.li	a2,00000000
	addi	a1,a1,+00000134
	c.j	0000000023079114

;; sntp_request: 23079134
sntp_request proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	addi	s0,s0,+00000280
	c.lw	s0,0(a0)
	c.swsp	ra,0000008C
	c.beqz	a0,0000000023079174

l23079146:
	lui	a2,00023079
	c.li	a3,00000000
	addi	a2,a2,+00000190
	c.addi4spn	a1,0000000C
	sw	zero,s0,+00000004
	jal	ra,000000002306C50C
	c.li	a5,FFFFFFFB
	beq	a0,a5,000000002307916C

l23079160:
	c.bnez	a0,000000002307917A

l23079162:
	c.lwsp	a2,000000E4
	c.sw	s0,4(a5)

l23079166:
	c.addi4spn	a0,0000000C
	jal	ra,00000000230790A8

l2307916C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23079174:
	c.lw	s0,4(a5)
	c.swsp	a5,00000084
	c.bnez	a5,0000000023079166

l2307917A:
	lui	a1,00023079
	c.lui	a0,00004000
	c.li	a2,00000000
	addi	a1,a1,-0000013C
	addi	a0,a0,-00000568
	jal	ra,00000000230749EA
	c.j	000000002307916C

;; sntp_dns_found: 23079190
sntp_dns_found proc
	c.beqz	a1,00000000230791A2

l23079192:
	c.lw	a1,0(a4)
	lui	a5,0004201B
	c.mv	a0,a1
	sw	a4,a5,+00000284
	jal	zero,00000000230790A8

l230791A2:
	c.li	a0,00000000
	jal	zero,0000000023078EC4

;; sntp_init: 230791A8
;;   Called from:
;;     23078DDA (in _startup_sntp)
sntp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000006B0
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,0000000023079248

l230791BA:
	addi	a0,zero,+0000002E
	jal	ra,000000002307525E
	c.mv	a1,a0
	c.sw	s0,0(a0)
	lui	a0,000230C4
	addi	a0,a0,+00000268
	jal	ra,0000000023082388
	c.lw	s0,0(a0)
	c.beqz	a0,0000000023079248

l230791D6:
	lui	a1,00023079
	c.li	a2,00000000
	addi	a1,a1,-000000FE
	jal	ra,00000000230751F8
	lui	a5,0004200F
	lbu	a5,a5,+000006AC
	c.bnez	a5,000000002307921E

l230791EE:
	c.lui	a5,00004000
	addi	a5,a5,-00000568
	lui	a4,0004200F
	sw	a5,a4,+000006B4
	jal	ra,0000000023065C28
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	and	a0,a0,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023079
	c.li	a2,00000000
	addi	a1,a1,+00000134
	c.addi	sp,00000010
	jal	zero,00000000230749EA

l2307921E:
	c.li	a4,00000001
	bne	a5,a4,0000000023079248

l23079224:
	c.lw	s0,0(a0)
	lui	a1,000230CC
	addi	a2,zero,+0000007B
	lbu	a5,a0,+00000009
	addi	a1,a1,-00000524
	ori	a5,a5,+00000020
	sb	a5,a0,+00000009
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023074DC4

l23079248:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sntp_setoperatingmode: 23079250
;;   Called from:
;;     23078DCC (in _startup_sntp)
sntp_setoperatingmode proc
	lui	a5,0004200F
	sb	a0,a5,+000006AC
	c.jr	ra

;; sntp_get_time: 2307925A
;;   Called from:
;;     23078E56 (in cmd_sntp_date)
;;     23078E9A (in cmd_sntp_time)
sntp_get_time proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	addi	s0,s0,+000006A8
	jal	ra,0000000023063658
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023079292

l23079278:
	sw	zero,s2,+00000000
	sw	zero,s1,+00000000

l23079280:
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23079292:
	jal	ra,00000000230629A4
	lui	a5,0004200F
	lw	a5,a5,+000006B8
	addi	a4,zero,+000003E8
	c.lw	s0,0(a2)
	c.sub	a0,a5
	lui	a5,0004200F
	lw	a5,a5,+000006A4
	xor	a3,a0,a4
	srl	a5,a5,a4
	c.add	a3,a2
	sw	a3,s2,+00000000
	or	a0,a0,a4
	c.add	a0,a5
	c.sw	s1,0(a0)
	c.j	0000000023079280

;; sntp_setservername: 230792C6
;;   Called from:
;;     23078DD8 (in _startup_sntp)
sntp_setservername proc
	c.bnez	a0,00000000230792D0

l230792C8:
	lui	a5,0004201B
	sw	a1,a5,+00000280

l230792D0:
	c.jr	ra

;; utils_sha256_init: 230792D2
;;   Called from:
;;     2305ACCC (in ota_tcp_cmd.part.0)
utils_sha256_init proc
	addi	a2,zero,+0000006C
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; utils_sha256_free: 230792DC
;;   Called from:
;;     2305AD32 (in ota_tcp_cmd.part.0)
utils_sha256_free proc
	addi	a5,a0,+0000006C
	c.bnez	a0,00000000230792EA

l230792E2:
	c.jr	ra

l230792E4:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l230792EA:
	bne	a0,a5,00000000230792E4

l230792EE:
	c.j	00000000230792E2

;; utils_sha256_starts: 230792F0
;;   Called from:
;;     2305ACD2 (in ota_tcp_cmd.part.0)
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

;; utils_sha256_process: 2307934E
;;   Called from:
;;     2307A008 (in utils_sha256_update.part.0)
;;     2307A01E (in utils_sha256_update.part.0)
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

l23079382:
	c.lw	a5,0(a3)
	c.addi	a5,00000004
	c.addi	a4,00000004
	sw	a3,a4,+00000FFC
	bne	a0,a5,0000000023079382

l23079390:
	addi	t3,sp,+00000020
	addi	a2,a1,+00000040
	c.mv	a4,t3

l2307939A:
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
	bne	a2,a1,000000002307939A

l230793C2:
	lui	t4,000230C4
	c.lwsp	t3,00000008
	c.lwsp	a6,00000028
	c.lwsp	s8,000000C0
	c.lwsp	s4,00000064
	c.lwsp	zero,00000084
	c.lwsp	tp,000000A4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	addi	s1,t4,+000002F4
	addi	t0,s1,+00000040
	c.mv	t6,t3
	addi	t4,t4,+000002F4

l230793E4:
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
	bne	t0,t4,00000000230793E4

l23079840:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	addi	s4,t3,+000000C0

l23079854:
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
	bne	s4,t3,0000000023079854

l23079F64:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084

l23079F74:
	lw	a5,s2,+00000000
	lw	a4,s3,+00000000
	c.addi	s2,00000004
	c.addi	s3,00000004
	c.add	a5,a4
	sw	a5,s2,+00000FFC
	bne	a0,s2,0000000023079F74

l23079F8A:
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

;; utils_sha256_update.part.0: 23079FB2
;;   Called from:
;;     2307A076 (in utils_sha256_update)
;;     2307A100 (in utils_sha256_finish)
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
	bgeu	a5,a2,0000000023079FDE

l23079FD8:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l23079FDE:
	beq	s3,zero,000000002307A010

l23079FE2:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,000000002307A010

l23079FEE:
	addi	s5,s1,+00000028
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,00000000230A382C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,000000002307934E
	c.add	s2,s4
	c.li	s3,00000000

l2307A010:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	000000002307A026

l2307A01C:
	c.mv	a0,s1
	jal	ra,000000002307934E
	addi	s4,s4,-00000040

l2307A026:
	sub	a1,s6,s4
	bltu	s5,s4,000000002307A01C

l2307A02E:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,000000002307A060

l2307A044:
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
	jal	zero,00000000230A382C

l2307A060:
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

;; utils_sha256_update: 2307A074
;;   Called from:
;;     2305AF02 (in ota_tcp_cmd.part.0)
;;     2307A0F6 (in utils_sha256_finish)
utils_sha256_update proc
	c.beqz	a2,000000002307A07A

l2307A076:
	jal	zero,0000000023079FB2

l2307A07A:
	c.jr	ra

;; utils_sha256_finish: 2307A07C
;;   Called from:
;;     2305AF20 (in ota_tcp_cmd.part.0)
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
	bltu	a5,a2,000000002307A202

l2307A0E4:
	addi	a5,zero,+00000038

l2307A0E8:
	lui	a1,000230C4
	sub	a2,a5,a2
	addi	a1,a1,+000003F4
	c.mv	a0,s0
	jal	ra,000000002307A074
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023079FB2
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
	c.bnez	a5,000000002307A1F8

l2307A1DA:
	lbu	a5,s0,+00000027
	sb	a5,s1,+0000001C
	lhu	a5,s0,+00000026
	sb	a5,s1,+0000001D
	c.lw	s0,36(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001E
	c.lw	s0,36(a5)
	sb	a5,s1,+0000001F

l2307A1F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2307A202:
	addi	a5,zero,+00000078
	c.j	000000002307A0E8

;; bl_printk: 2307A208
;;   Called from:
;;     23000A1C (in get_dts_addr.part.2)
;;     23023110 (in bl_send_cfg_task_req)
;;     230598EA (in tc_blfdtdump)
;;     23059ADA (in tc_blfdtdump)
;;     23059BF8 (in tc_blfdtdump)
;;     23059D34 (in tc_fdt_wifi_module)
;;     23059DC6 (in tc_fdt_wifi_module)
;;     23059E36 (in tc_fdt_wifi_module)
;;     23059E94 (in tc_fdt_wifi_module)
;;     23059F2A (in tc_fdt_wifi_module)
;;     23059F9C (in tc_fdt_wifi_module)
;;     2305A012 (in tc_fdt_wifi_module)
;;     2305A072 (in tc_fdt_wifi_module)
;;     2305A0DC (in tc_fdt_wifi_module)
;;     2305A13A (in tc_fdt_wifi_module)
;;     2305A2F2 (in tc_fdt_wifi_module)
;;     2305A386 (in tc_fdt_wifi_module)
;;     2305A41A (in tc_fdt_wifi_module)
;;     2305A4AC (in tc_fdt_wifi_module)
;;     2305A59C (in cmd_blog_info_dump)
;;     2305A5B8 (in cmd_blog_info_dump)
;;     2305A5D4 (in cmd_blog_info_dump)
;;     2305A606 (in cmd_blog_info_dump)
;;     2305A654 (in cmd_blog_info_dump)
;;     2305A69C (in cmd_blog_info_dump)
;;     2305A6C4 (in cmd_blog_info_dump)
;;     2305A712 (in cmd_blog_set_level)
;;     2305A730 (in cmd_blog_set_level)
;;     2305A7BC (in cmd_blog_set_level)
;;     2305A8A8 (in cmd_blog_set_level)
;;     2305A8B6 (in blog_port_output)
;;     2305AA92 (in blog_init)
;;     2305B132 (in __bl_ble_sync_task)
;;     2305B20E (in __recv_event)
;;     2305B702 (in write_data)
;;     2305B744 (in write_data)
;;     2305B818 (in __ble_bytes_send)
;;     2305B858 (in __ble_bytes_send)
;;     2305B92E (in read_data)
;;     2305BA6C (in bl_ble_sync_start)
;;     2305BBEA (in __malloc)
;;     2305BC4E (in __free)
;;     2305BF02 (in pro_trans_read)
;;     23060366 (in ef_get_env_blob)
;;     230604CA (in ef_del_env)
;;     23060548 (in ef_set_env_blob)
;;     23060B7C (in psm_test_cmd)
;;     23060C38 (in psm_test_cmd)
;;     23060CAA (in psm_test_cmd)
;;     23065286 (in bl_dma_IRQHandler)
;;     2306531A (in bl_dma_irq_register)
;;     2306539C (in bl_dma_irq_register)
;;     2306540C (in bl_dma_irq_register)
;;     2306548A (in bl_dma_init)
;;     2306559A (in _irq_num_check.part.0)
;;     23065660 (in bl_irq_register_with_ctx)
;;     230656BE (in bl_irq_register_with_ctx)
;;     230657AE (in bl_irq_unregister)
;;     23065A3A (in wait_trng4feed)
;;     23065B0C (in sec_trng_IRQHandler)
;;     23065CAE (in bl_sec_test)
;;     23065CC0 (in bl_sec_test)
;;     23065CCE (in bl_sec_test)
;;     23065CDA (in bl_sec_test)
;;     23065D40 (in cmd_gpio_get)
;;     23065DD8 (in cmd_gpio_get)
;;     23065E5C (in cmd_gpio_set)
;;     23065ECA (in cmd_gpio_set)
;;     23065F1E (in cmd_gpio_set)
;;     23065FC2 (in cmd_gpio_func)
;;     23066052 (in cmd_gpio_func)
;;     230660C4 (in cmd_gpio_func)
;;     2306636A (in cmd_wdt_init)
;;     2306639E (in cmd_wdt_init)
;;     230664EC (in dev_uart_init)
;;     23066638 (in dev_uart_init)
;;     230668FE (in vfs_uart_init)
;;     23066A62 (in vfs_uart_init)
;;     23066AB6 (in vfs_uart_init)
;;     23066B7A (in vfs_uart_init)
;;     23066C7A (in vfs_uart_init)
;;     23066CE2 (in vfs_uart_init)
;;     23066D4E (in vfs_uart_init)
;;     23066DB0 (in vfs_uart_init)
;;     23066E7C (in vfs_uart_init)
;;     23066EAE (in vfs_uart_init)
;;     23066F18 (in vfs_uart_init)
;;     23066F6C (in vfs_uart_init)
;;     23066FB6 (in vfs_uart_init)
;;     23066FF0 (in vfs_uart_init)
;;     230670CA (in hal_gpio_init_from_dts)
;;     23067154 (in hal_gpio_init_from_dts)
;;     23067210 (in hal_gpio_init_from_dts)
;;     23067278 (in hal_gpio_init_from_dts)
;;     230672AE (in hal_gpio_init_from_dts)
;;     23067524 (in hal_gpio_init_from_dts)
;;     2306755E (in _dump_partition)
;;     2306756C (in _dump_partition)
;;     2306757C (in _dump_partition)
;;     2306758C (in _dump_partition)
;;     2306759A (in _dump_partition)
;;     230675A8 (in _dump_partition)
;;     230675B8 (in _dump_partition)
;;     2306760C (in _dump_partition)
;;     2306761A (in _dump_partition)
;;     23067626 (in _dump_partition)
;;     23067632 (in _dump_partition)
;;     2306763E (in _dump_partition)
;;     2306764A (in _dump_partition)
;;     23067658 (in _dump_partition)
;;     23067662 (in _dump_partition)
;;     2306766C (in _dump_partition)
;;     23067676 (in _dump_partition)
;;     23067A94 (in hal_boot2_init)
;;     23067BD4 (in hal_board_cfg)
;;     23067C20 (in hal_board_cfg)
;;     23067C8A (in hal_board_cfg)
;;     23067CD6 (in hal_board_cfg)
;;     23067D44 (in hal_board_cfg)
;;     23067DD0 (in hal_board_cfg)
;;     23067E2A (in hal_board_cfg)
;;     23067E9E (in hal_board_cfg)
;;     23067F62 (in hal_board_cfg)
;;     23067FC2 (in hal_board_cfg)
;;     2306804E (in hal_board_cfg)
;;     230680E6 (in hal_board_cfg)
;;     2306816E (in hal_board_cfg)
;;     230681BC (in hal_board_cfg)
;;     230681DE (in hal_board_cfg)
;;     2306829A (in hal_board_cfg)
;;     230682FA (in hal_board_cfg)
;;     23068330 (in hal_board_cfg)
;;     230683EE (in hal_board_cfg)
;;     2306843E (in hal_board_cfg)
;;     23068492 (in hal_board_cfg)
;;     230684E6 (in hal_board_cfg)
;;     23068538 (in hal_board_cfg)
;;     23068586 (in hal_board_cfg)
;;     230685EE (in hal_board_cfg)
;;     23068680 (in hal_board_cfg)
;;     23068738 (in hal_board_cfg)
;;     230687EC (in hal_board_cfg)
;;     230688A0 (in hal_board_cfg)
;;     2306891C (in hal_board_cfg)
;;     23068978 (in hal_board_cfg)
;;     23068A04 (in hal_board_cfg)
;;     23068AC4 (in hal_board_cfg)
;;     23068C60 (in hal_board_cfg)
;;     23068CA4 (in hal_board_cfg)
;;     23068D00 (in hal_board_cfg)
;;     23068D56 (in hal_board_cfg)
;;     23068DAC (in hal_board_cfg)
;;     23068E02 (in hal_board_cfg)
;;     23068EB0 (in hal_board_cfg)
;;     23068F20 (in hal_board_cfg)
;;     23068F60 (in hal_board_cfg)
;;     2306900E (in hal_board_cfg)
;;     23069086 (in hal_board_cfg)
;;     230690CA (in hal_board_cfg)
;;     23069178 (in hal_board_cfg)
;;     230691C8 (in hal_board_cfg)
;;     23069250 (in hal_board_cfg)
;;     23069348 (in hal_board_cfg)
;;     23069414 (in hal_board_cfg)
;;     23069488 (in hal_board_cfg)
;;     23069502 (in hal_board_cfg)
;;     230695AA (in hal_board_cfg)
;;     23069632 (in hal_board_cfg)
;;     230696A2 (in hal_board_cfg)
;;     23069714 (in hal_board_cfg)
;;     2306979C (in hal_board_cfg)
;;     23069880 (in bl_tsen_adc_get)
;;     230698F0 (in bl_tsen_adc_get)
;;     23069D74 (in bl_flash_config_update)
;;     23069DB4 (in bl_flash_config_update)
;;     23069DF0 (in bl_flash_config_update)
;;     23069E2C (in bl_flash_config_update)
;;     23069E66 (in bl_flash_config_update)
;;     23069EA0 (in bl_flash_config_update)
;;     23069ED6 (in bl_flash_config_update)
;;     2306A222 (in _cb_led_trigger)
;;     2306A2AE (in _led_bloop_msg)
;;     2306A3A8 (in _led_bloop_evt)
;;     2306A46E (in loopset_led_trigger)
;;     230784A8 (in file_info)
;;     230784DE (in file_info)
;;     23078536 (in file_info)
;;     23078736 (in dirent_file)
;;     23078862 (in dirent_file)
;;     23078938 (in romfs_opendir)
;;     23078A04 (in romfs_stat)
;;     23078A86 (in romfs_stat)
;;     23078ADA (in romfs_open)
;;     23078B74 (in romfs_open)
;;     23078BFC (in romfs_open)
;;     23078CD8 (in romfs_register)
;;     23078D30 (in romfs_register)
;;     2307A338 (in log_buf_out)
;;     2307A3EA (in log_buf_out)
;;     23084C0E (in bl_mtd_write)
;;     230850A8 (in bloop_run)
;;     23085140 (in bloop_run)
;;     23085844 (in bl_sha_mutex_take)
;;     230858BE (in bl_sha_mutex_give)
;;     23085956 (in hal_hbn_init)
;;     23085A08 (in hal_hbn_init)
;;     23085A3C (in hal_hbn_init)
bl_printk proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200F
	lbu	a5,a5,-00000348
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,000000002307A230

l2307A228:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,00000000230822F0

l2307A230:
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; log_buf_out: 2307A236
;;   Called from:
;;     23059E48 (in tc_fdt_wifi_module)
;;     23059EA6 (in tc_fdt_wifi_module)
;;     2305A0EE (in tc_fdt_wifi_module)
;;     2305A306 (in tc_fdt_wifi_module)
;;     2305A39A (in tc_fdt_wifi_module)
;;     2305A42E (in tc_fdt_wifi_module)
;;     2305A4BE (in tc_fdt_wifi_module)
;;     23068062 (in hal_board_cfg)
;;     230680FA (in hal_board_cfg)
;;     23068EC2 (in hal_board_cfg)
;;     23069020 (in hal_board_cfg)
;;     23069286 (in hal_board_cfg)
;;     230784BA (in file_info)
;;     23078D9E (in romfs_register)
;;     23085B1C (in bl_hbn_enter)
log_buf_out proc
	bge	zero,a3,000000002307A3FA

l2307A23A:
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
	c.bnez	a4,000000002307A2B6

l2307A26E:
	lui	s3,0004201B
	lui	s7,000230C4
	lui	s9,000230C4
	add	s8,s8,a5
	c.add	s8,a2

l2307A280:
	beq	s8,s0,000000002307A348

l2307A284:
	c.li	s6,00000000
	c.li	s2,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l2307A28C:
	lui	a5,0004201B
	addi	a5,a5,+0000028C
	add	a4,s0,s2
	add	a0,a5,s6
	lbu	a2,a4,+00000000
	beq	s1,s10,000000002307A3A8

l2307A2A4:
	addi	a1,s9,+0000043C
	beq	s1,s11,000000002307A3B0

l2307A2AC:
	lui	a5,000230C4
	addi	a1,a5,+00000444
	c.j	000000002307A3B0

l2307A2B6:
	lui	s3,0004201B
	c.li	s6,00000000
	addi	s3,s3,+0000028C
	lui	s9,000230C4
	lui	s10,000230C4
	lui	s11,000230C4

l2307A2CC:
	c.li	s2,00000000
	c.li	s7,00000000
	bne	s8,s6,000000002307A380

l2307A2D4:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,000000002307A2FA

l2307A2E6:
	c.li	a5,00000002
	addi	a1,s11,+0000043C
	beq	s1,a5,000000002307A302

l2307A2F0:
	addi	a1,s10,+00000444
	c.j	000000002307A302

l2307A2F6:
	c.mv	s6,a5
	c.j	000000002307A2CC

l2307A2FA:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,+00000434

l2307A302:
	jal	ra,00000000230823B8
	c.lwsp	a2,000000E4
	c.addi	s7,00000001
	c.add	s2,a0
	bne	a5,s7,000000002307A2D4

l2307A310:
	lui	a4,0004200F
	lw	a4,a4,+00000560
	c.beqz	a4,000000002307A3A2

l2307A31A:
	jal	ra,00000000230629C6

l2307A31E:
	c.mv	a1,a0
	lui	a2,000230C4
	lui	a0,000230C4
	c.mv	a5,s2
	c.mv	a6,s3
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,+0000044C
	addi	a0,a0,+0000045C
	jal	ra,000000002307A208
	addi	a5,s6,+00000001
	addi	s0,s0,+00000032
	blt	s6,s8,000000002307A2F6

l2307A348:
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

l2307A368:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,+00000434

l2307A370:
	jal	ra,00000000230823B8
	c.addi	s7,00000001
	addi	a5,zero,+00000032
	c.add	s2,a0
	beq	s7,a5,000000002307A310

l2307A380:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,000000002307A368

l2307A392:
	c.li	a5,00000002
	addi	a1,s11,+0000043C
	beq	s1,a5,000000002307A370

l2307A39C:
	addi	a1,s10,+00000444
	c.j	000000002307A370

l2307A3A2:
	jal	ra,00000000230629A4
	c.j	000000002307A31E

l2307A3A8:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s7,+00000434

l2307A3B0:
	jal	ra,00000000230823B8
	c.addi	s2,00000001
	addi	a4,zero,+00000032
	c.add	s6,a0
	bne	s2,a4,000000002307A28C

l2307A3C0:
	lui	a4,0004200F
	lw	a4,a4,+00000560
	c.beqz	a4,000000002307A3F4

l2307A3CA:
	jal	ra,00000000230629C6

l2307A3CE:
	c.mv	a1,a0
	lui	a2,000230C4
	lui	a0,000230C4
	addi	a6,s3,+0000028C
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,+0000044C
	addi	a0,a0,+0000045C
	jal	ra,000000002307A208
	addi	s0,s0,+00000032
	c.j	000000002307A280

l2307A3F4:
	jal	ra,00000000230629A4
	c.j	000000002307A3CE

l2307A3FA:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_dns_domain_get: 2307A3FE
;;   Called from:
;;     2305EF26 (in get_dns_request)
utils_dns_domain_get proc
	lw	a7,a2,+00000000
	lbu	a4,a0,+00000000
	c.li	a5,00000000
	c.li	t1,00000001
	addi	t3,zero,+0000002E

l2307A40E:
	c.beqz	a4,000000002307A414

l2307A410:
	blt	zero,a7,000000002307A41A

l2307A414:
	c.sw	a2,0(a5)
	c.li	a0,00000000
	c.jr	ra

l2307A41A:
	add	t4,a0,t1
	lbu	t5,t4,+00000000
	add	t4,a1,a5
	c.addi	a4,FFFFFFFF
	sb	t5,t4,+00000000
	addi	a3,t1,+00000001
	addi	a6,a5,+00000001
	c.addi	a7,FFFFFFFF
	c.bnez	a4,000000002307A450

l2307A438:
	beq	a7,zero,000000002307A450

l2307A43C:
	c.add	a6,a1
	sb	t3,a6,+00000000
	c.add	a3,a0
	lbu	a4,a3,+00000000
	addi	a6,a5,+00000002
	addi	a3,t1,+00000002

l2307A450:
	c.mv	a5,a6
	c.mv	t1,a3
	c.j	000000002307A40E

;; utils_list_init: 2307A456
;;   Called from:
;;     2302198C (in ipc_host_init)
;;     23065438 (in bl_dma_init)
;;     23084C9C (in bloop_init)
;;     2309D5C0 (in utils_notifier_chain_init)
utils_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; utils_list_push_back: 2307A460
;;   Called from:
;;     23023DF4 (in bl_output)
;;     2309D5D6 (in utils_notifier_chain_register)
utils_list_push_back proc
	c.lw	a0,0(a5)
	c.bnez	a5,000000002307A46E

l2307A464:
	c.sw	a0,0(a1)

l2307A466:
	c.sw	a0,4(a1)
	sw	zero,a1,+00000000
	c.jr	ra

l2307A46E:
	c.lw	a0,4(a5)
	c.sw	a5,0(a1)
	c.j	000000002307A466

;; utils_list_pop_front: 2307A474
;;   Called from:
;;     23023BD4 (in bl_tx_try_flush)
;;     2306523A (in bl_dma_IRQHandler)
;;     23085010 (in bloop_run)
utils_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,000000002307A47C

l2307A478:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l2307A47C:
	c.mv	a0,a5
	c.jr	ra

;; utils_hexdump: 2307A480
;;   Called from:
;;     23026FB0 (in cmd_wifi_mib)
;;     2305DBE2 (in hexdump_cmd)
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
	c.beqz	a5,000000002307A4AC

l2307A4A8:
	c.li	s1,00000010
	c.sub	s1,a5

l2307A4AC:
	lui	s3,000230CB
	c.add	s1,s2
	c.li	s0,00000000
	lui	s6,000230C4
	lui	s7,000230BF
	lui	s8,000230C4
	c.li	s9,0000000F
	addi	s3,s3,+000005B1
	lui	s10,000230C7

l2307A4CA:
	bne	s1,s0,000000002307A4EC

l2307A4CE:
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

l2307A4EC:
	andi	s11,s0,+0000000F
	bne	s11,zero,000000002307A4FE

l2307A4F4:
	c.mv	a1,s0
	addi	a0,s6,+00000478
	jal	ra,0000000023082388

l2307A4FE:
	bgeu	s0,s2,000000002307A53A

l2307A502:
	add	a5,s4,s0
	lbu	a1,a5,+00000000
	addi	a0,s8,+00000444
	jal	ra,0000000023082388

l2307A512:
	addi	s5,s0,+00000001
	bne	s11,s9,000000002307A536

l2307A51A:
	addi	s11,s0,-0000000F
	c.li	a5,00000011
	bgeu	s5,s11,000000002307A526

l2307A524:
	c.li	a5,00000001

l2307A526:
	c.addi	s0,FFFFFFF0
	c.add	s0,a5

l2307A52A:
	bne	s11,s0,000000002307A544

l2307A52E:
	addi	a0,s10,-00000700
	jal	ra,000000002308234C

l2307A536:
	c.mv	s0,s5
	c.j	000000002307A4CA

l2307A53A:
	addi	a0,s7,-000002A0
	jal	ra,0000000023082388
	c.j	000000002307A512

l2307A544:
	addi	a0,zero,+00000020
	bgeu	s11,s2,000000002307A562

l2307A54C:
	add	a5,s4,s11
	lbu	a0,a5,+00000000
	add	a5,a0,s3
	lbu	a5,a5,+00000000
	andi	a5,a5,+00000097
	c.beqz	a5,000000002307A56A

l2307A562:
	jal	ra,0000000023082336
	c.addi	s11,00000001
	c.j	000000002307A52A

l2307A56A:
	addi	a0,zero,+0000002E
	c.j	000000002307A562

;; utils_time_date_from_epoch: 2307A570
;;   Called from:
;;     2305C308 (in cmd_sys_time_now)
;;     23078E18 (in cmd_sntp_date)
;;     23078E5C (in cmd_sntp_date)
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

l2307A614:
	bltu	a4,a0,000000002307A680

l2307A618:
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
	c.bnez	a3,000000002307A644

l2307A63A:
	addi	a3,zero,+00000064
	and	a3,a4,a3
	c.bnez	a3,000000002307A64E

l2307A644:
	addi	a3,zero,+00000190
	and	a4,a4,a3
	c.bnez	a4,000000002307A65A

l2307A64E:
	c.li	a4,0000001D
	sb	a4,sp,+00000015
	c.li	a4,00000001
	sb	a4,a1,+00000007

l2307A65A:
	sb	zero,a1,+00000005
	c.li	a4,00000000
	c.li	a0,0000000B

l2307A662:
	lbu	a3,a1,+00000005
	c.addi4spn	a2,00000020
	c.add	a2,a3
	bgeu	a0,a3,000000002307A69A

l2307A66E:
	lbu	a3,a2,-0000000D
	c.li	a0,00000000
	c.sub	a4,a3
	c.sub	a5,a4
	sb	a5,a1,+00000004
	c.addi16sp	00000020
	c.jr	ra

l2307A680:
	or	a3,a4,a2
	c.bnez	a3,000000002307A68C

l2307A686:
	or	a3,a4,a6
	c.bnez	a3,000000002307A696

l2307A68C:
	lbu	a3,a1,+00000006
	c.addi	a3,00000001
	sb	a3,a1,+00000006

l2307A696:
	c.addi	a4,00000004
	c.j	000000002307A614

l2307A69A:
	bgeu	a4,a5,000000002307A66E

l2307A69E:
	lbu	a2,a2,-0000000C
	c.addi	a3,00000001
	sb	a3,a1,+00000005
	c.add	a4,a2
	c.slli	a4,10
	c.srli	a4,00000010
	c.j	000000002307A662

;; utils_getopt_init: 2307A6B0
;;   Called from:
;;     23026FDA (in cmd_wifi_cfg)
utils_getopt_init proc
	c.beqz	a0,000000002307A6C8

l2307A6B2:
	c.li	a5,00000001
	sw	zero,a0,+00000000
	c.sw	a0,4(a5)
	c.sw	a0,8(a1)
	sw	zero,a0,+0000000C
	sw	zero,a0,+00000010
	c.li	a0,00000000
	c.jr	ra

l2307A6C8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_getopt: 2307A6CC
;;   Called from:
;;     23027006 (in cmd_wifi_cfg)
utils_getopt proc
	c.beqz	a0,000000002307A720

l2307A6CE:
	c.lw	a0,4(a4)
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bge	a4,a1,000000002307A822

l2307A6D8:
	c.mv	a7,a2
	slli	a2,a4,00000002
	c.add	a2,a7
	lw	a6,a2,+00000000
	beq	a6,zero,000000002307A822

l2307A6E8:
	lbu	t1,a6,+00000000
	addi	t3,zero,+0000002D
	beq	t1,t3,000000002307A708

l2307A6F4:
	lbu	a3,a3,+00000000
	bne	a3,t3,000000002307A822

l2307A6FC:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	c.lw	a2,0(a4)
	c.li	a0,00000001
	c.sw	a5,0(a4)
	c.jr	ra

l2307A708:
	lbu	t3,a6,+00000001
	c.li	a0,FFFFFFFF
	beq	t3,zero,000000002307A822

l2307A712:
	bne	t3,t1,000000002307A724

l2307A716:
	lbu	a0,a6,+00000002
	c.bnez	a0,000000002307A724

l2307A71C:
	c.addi	a4,00000001
	c.sw	a5,4(a4)

l2307A720:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2307A724:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,16(a0)
	c.bnez	a0,000000002307A730

l2307A72C:
	c.li	a0,00000001
	c.sw	a5,16(a0)

l2307A730:
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
	c.bnez	a2,000000002307A75A

l2307A752:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	sw	zero,a5,+00000010

l2307A75A:
	lbu	a4,a3,+00000000
	addi	a4,a4,-0000002B
	andi	a4,a4,+000000FD
	c.bnez	a4,000000002307A76A

l2307A768:
	c.addi	a3,00000001

l2307A76A:
	c.li	a4,00000000

l2307A76C:
	addi	a2,a4,+00000001
	c.add	a4,a3
	lbu	t1,a4,+00000000
	beq	t1,zero,000000002307A7A2

l2307A77A:
	bne	a0,t1,000000002307A79E

l2307A77E:
	addi	t1,zero,+0000003A
	bne	a0,t1,000000002307A7A4

l2307A786:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	bne	a3,a4,000000002307A808

l2307A794:
	addi	a0,zero,+0000003F

l2307A798:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2307A79E:
	c.mv	a4,a2
	c.j	000000002307A76C

l2307A7A2:
	c.bnez	a0,000000002307A786

l2307A7A4:
	c.add	a2,a3
	lbu	t1,a2,+00000000
	addi	a2,zero,+0000003A
	bne	t1,a2,000000002307A798

l2307A7B2:
	sw	zero,a5,+00000000
	lbu	a4,a4,+00000002
	c.lw	a5,16(a2)
	bne	a4,t1,000000002307A7C2

l2307A7C0:
	c.beqz	a2,000000002307A7DA

l2307A7C2:
	c.lw	a5,4(a4)
	addi	t1,a4,+00000001
	c.slli	a4,02
	sw	t1,a5,+00000004
	c.add	a4,a7
	c.lw	a4,0(a4)
	sw	zero,a5,+00000010
	c.add	a4,a2
	c.sw	a5,0(a4)

l2307A7DA:
	c.lw	a5,4(a4)
	bge	a1,a4,000000002307A798

l2307A7E0:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	addi	a0,zero,+0000003A
	beq	a3,a4,000000002307A798

l2307A7F2:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002307A794

l2307A7F6:
	lui	a0,000230C4
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	addi	a0,a0,+000004A4
	c.j	000000002307A81C

l2307A808:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002307A794

l2307A80C:
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	lui	a0,000230C4
	addi	a0,a0,+00000484

l2307A81C:
	jal	ra,0000000023082388
	c.j	000000002307A794

l2307A822:
	c.jr	ra

;; params_filter.isra.0.constprop.1: 2307A824
;;   Called from:
;;     2307A904 (in get_uint8_from_string)
;;     2307A92A (in get_uint16_from_string)
params_filter.isra.0.constprop.1 proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000030
	c.li	a3,0000000A
	bne	a4,a5,000000002307A846

l2307A832:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000058
	andi	a5,a5,+000000DF
	bne	a5,a4,000000002307A846

l2307A842:
	c.addi	a0,00000002
	c.li	a3,00000010

l2307A846:
	c.li	a5,00000000
	c.li	a7,00000009
	c.li	t1,0000000A
	c.li	t3,00000010
	c.li	a6,00000005
	c.j	000000002307A86A

l2307A852:
	addi	a2,a4,-00000030
	andi	a2,a2,+000000FF
	add	a5,a5,a3
	bltu	a7,a2,000000002307A876

l2307A862:
	addi	a5,a5,-00000030

l2307A866:
	c.add	a5,a4

l2307A868:
	c.addi	a0,00000001

l2307A86A:
	lbu	a4,a0,+00000000
	c.bnez	a4,000000002307A852

l2307A870:
	c.sw	a1,0(a5)
	c.li	a0,00000000
	c.jr	ra

l2307A876:
	beq	a3,t1,000000002307A8A2

l2307A87A:
	bne	a3,t3,000000002307A868

l2307A87E:
	addi	a2,a4,-00000061
	andi	a2,a2,+000000FF
	bltu	a6,a2,000000002307A890

l2307A88A:
	addi	a5,a5,-00000057
	c.j	000000002307A866

l2307A890:
	addi	a2,a4,-00000041
	andi	a2,a2,+000000FF
	bltu	a6,a2,000000002307A868

l2307A89C:
	addi	a4,a4,-00000037
	c.j	000000002307A866

l2307A8A2:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; get_bytearray_from_string: 2307A8A6
;;   Called from:
;;     2303AB54 (in blemesh_set_dev_uuid)
;;     2303ABB8 (in blemesh_fault_set)
;;     2303AC1C (in blemesh_fault_set)
;;     23055C6E (in ble_select_conn)
;;     23055CE8 (in ble_disconnect)
;;     23055DA6 (in ble_connect)
;;     230563D2 (in ble_write)
;;     230567A0 (in ble_unpair)
;;     23056D0A (in ble_write_without_rsp)
get_bytearray_from_string proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.li	s0,00000000

l2307A8BA:
	blt	s0,s2,000000002307A8CC

l2307A8BE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2307A8CC:
	c.lw	s1,0(a1)
	c.li	a2,00000002
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A439C
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A4DD0
	add	a5,s3,s0
	sb	a0,a5,+00000000
	c.lw	s1,0(a5)
	c.addi	s0,00000001
	c.addi	a5,00000002
	c.sw	s1,0(a5)
	c.j	000000002307A8BA

;; get_uint8_from_string: 2307A8F6
;;   Called from:
;;     2303A6CE (in blemesh_lpn_set)
;;     2303A8D0 (in blemesh_net_send)
;;     2303A8DC (in blemesh_net_send)
;;     2303AAFA (in blemesh_ivu_test)
;;     2303AB8E (in blemesh_fault_set)
;;     2303AC88 (in blemesh_pb)
;;     2303AC96 (in blemesh_pb)
;;     2303AE30 (in blemesh_iv_update)
;;     23055A02 (in ble_set_tx_pwr)
;;     23055C04 (in ble_security)
;;     23055C60 (in ble_select_conn)
;;     23055CDA (in ble_disconnect)
;;     23055D90 (in ble_connect)
;;     23055E86 (in ble_start_advertise)
;;     23055EB0 (in ble_start_advertise)
;;     23056008 (in ble_set_adv_channel)
;;     230565EC (in ble_discover)
;;     23056792 (in ble_unpair)
;;     230567F0 (in ble_start_scan)
;;     230567FC (in ble_start_scan)
;;     23056CCC (in ble_write_without_rsp)
get_uint8_from_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.mv	s0,a1
	c.addi4spn	a1,0000000C
	c.swsp	zero,00000084
	jal	ra,000000002307A824
	c.li	a5,00000000
	c.bnez	a0,000000002307A910

l2307A90C:
	lbu	a5,sp,+0000000C

l2307A910:
	sb	a5,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; get_uint16_from_string: 2307A91C
;;   Called from:
;;     2303A7D8 (in blemesh_seg_send)
;;     2303A7E4 (in blemesh_seg_send)
;;     2303A8E6 (in blemesh_net_send)
;;     2303A8F2 (in blemesh_net_send)
;;     23055F10 (in ble_start_advertise)
;;     23055F1A (in ble_start_advertise)
;;     23056236 (in ble_set_data_len)
;;     23056244 (in ble_set_data_len)
;;     230562CA (in ble_subscribe)
;;     230562D6 (in ble_subscribe)
;;     230562E2 (in ble_subscribe)
;;     23056390 (in ble_write)
;;     2305639C (in ble_write)
;;     230563A8 (in ble_write)
;;     23056470 (in ble_read)
;;     2305647C (in ble_read)
;;     2305660E (in ble_discover)
;;     2305662A (in ble_discover)
;;     23056636 (in ble_discover)
;;     23056718 (in ble_conn_update)
;;     23056724 (in ble_conn_update)
;;     2305672E (in ble_conn_update)
;;     2305673A (in ble_conn_update)
;;     23056808 (in ble_start_scan)
;;     23056812 (in ble_start_scan)
;;     23056CD6 (in ble_write_without_rsp)
;;     23056CE2 (in ble_write_without_rsp)
get_uint16_from_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.mv	s0,a1
	c.addi4spn	a1,0000000C
	c.swsp	zero,00000084
	jal	ra,000000002307A824
	c.li	a5,00000000
	c.bnez	a0,000000002307A936

l2307A932:
	lhu	a5,sp,+0000000C

l2307A936:
	sh	a5,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; Bl_F_fast.constprop.0: 2307A942
;;   Called from:
;;     2307AA48 (in utils_wifi_psk_cal_fast_bin)
;;     2307AA66 (in utils_wifi_psk_cal_fast_bin)
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
	jal	ra,00000000230A4220
	c.lwsp	a2,000000A4
	addi	a4,s0,+00000004
	c.mv	a2,s0
	c.mv	a1,a3
	c.mv	s4,a0
	c.mv	a0,s1
	c.swsp	a4,0000000C
	c.swsp	s1,0000008C
	jal	ra,00000000230A382C
	c.lwsp	s0,000000E4
	add	a4,s1,s0
	sb	zero,a4,+00000000
	sb	a5,a4,+00000003
	sb	zero,a4,+00000001
	sb	zero,a4,+00000002
	jal	ra,00000000230857E2
	c.li	a6,00000014
	c.mv	a5,s2
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.jal	000000002307AAE4
	c.li	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s5
	c.lui	s0,00001000
	jal	ra,00000000230A382C
	c.addi	s0,FFFFFFFF
	c.swsp	s2,0000008C
	c.li	s6,00000014

l2307A9BA:
	c.mv	a5,s1
	c.li	a6,00000014
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.swsp	s6,0000000C
	c.jal	000000002307AAE4
	c.li	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.li	a5,00000000

l2307A9D8:
	add	a3,s5,a5
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	lbu	a2,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s6,000000002307A9D8

l2307A9F4:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,000000002307A9BA

l2307A9F8:
	jal	ra,0000000023085858
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

;; utils_wifi_psk_cal_fast_bin: 2307AA10
;;   Called from:
;;     23018198 (in pmkCacheGeneratePSK)
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
	jal	ra,00000000230A4220
	addi	a5,zero,+0000003F
	bltu	a5,a0,000000002307AA7A

l2307AA30:
	addi	a5,zero,+00000020
	c.li	a0,FFFFFFFF
	blt	a5,s1,000000002307AA6C

l2307AA3A:
	c.mv	a6,s0
	c.li	a5,00000002
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000001C
	jal	ra,000000002307A942
	c.li	a2,0000000C
	c.mv	a1,s0
	addi	a0,s0,+00000014
	jal	ra,00000000230A382C
	c.addi4spn	a0,0000001C
	c.mv	a6,s0
	c.li	a5,00000001
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	jal	ra,000000002307A942
	c.li	a0,00000000

l2307AA6C:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

l2307AA7A:
	c.li	a0,FFFFFFFF
	c.j	000000002307AA6C

;; utils_tlv_bl_pack_auto: 2307AA7E
;;   Called from:
;;     2302312C (in bl_send_cfg_task_req)
utils_tlv_bl_pack_auto proc
	c.li	a5,00000001
	beq	a2,a5,000000002307AA90

l2307AA84:
	c.li	a5,00000007
	beq	a2,a5,000000002307AAA2

l2307AA8A:
	c.li	a5,FFFFFFFE

l2307AA8C:
	c.mv	a0,a5
	c.jr	ra

l2307AA90:
	lbu	a4,a3,+00000000

l2307AA94:
	c.li	a3,00000003
	c.li	a5,FFFFFFFF
	bge	a3,a1,000000002307AA8C

l2307AA9C:
	c.sw	a0,0(a4)
	c.li	a5,00000004
	c.j	000000002307AA8C

l2307AAA2:
	c.lw	a3,0(a4)
	c.j	000000002307AA94

;; utils_tlv_bl_unpack_auto: 2307AAA6
;;   Called from:
;;     2301F3AC (in cfg_start_req_handler)
utils_tlv_bl_unpack_auto proc
	c.li	a5,00000001
	beq	a2,a5,000000002307AAB6

l2307AAAC:
	c.li	a5,00000007
	beq	a2,a5,000000002307AAD0

l2307AAB2:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2307AAB6:
	c.li	a5,00000003
	bge	a5,a1,000000002307AACA

l2307AABC:
	c.lw	a0,0(a5)
	c.li	a0,00000004
	sltu	a5,zero,a5

l2307AAC4:
	sb	a5,a3,+00000000
	c.jr	ra

l2307AACA:
	c.li	a5,00000001
	c.li	a0,FFFFFFFF
	c.j	000000002307AAC4

l2307AAD0:
	c.li	a5,00000003
	bge	a5,a1,000000002307AADE

l2307AAD6:
	c.lw	a0,0(a5)
	c.li	a0,00000004

l2307AADA:
	c.sw	a3,0(a5)
	c.jr	ra

l2307AADE:
	c.li	a5,00000000
	c.li	a0,FFFFFFFF
	c.j	000000002307AADA

;; utils_hmac_sha1_fast: 2307AAE4
;;   Called from:
;;     2307A9A6 (in Bl_F_fast.constprop.0)
;;     2307A9CA (in Bl_F_fast.constprop.0)
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
	bge	a5,a4,000000002307AB3E

l2307AB22:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858D2
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858F0
	c.mv	a1,s2
	c.addi4spn	a0,0000005C
	jal	ra,0000000023085904
	c.li	s1,00000014

l2307AB3E:
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

l2307AB64:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.xor	a3,a4
	sw	a3,a5,+00000FF8
	lw	a3,a5,-00000004
	c.xor	a3,a4
	sw	a3,a5,+00000FFC
	bne	a5,s4,000000002307AB64

l2307AB7C:
	c.li	a1,00000002
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858D2
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858F0
	c.li	s3,00000000

l2307AB92:
	blt	s3,s7,000000002307AC2E

l2307AB96:
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023085904
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

l2307ABBC:
	c.lw	s0,0(a4)
	c.addi	s0,00000008
	c.xor	a4,a5
	sw	a4,s0,+00000FF8
	lw	a4,s0,-00000004
	c.xor	a4,a5
	sw	a4,s0,+00000FFC
	bne	s0,s4,000000002307ABBC

l2307ABD4:
	c.addi4spn	a0,0000005C
	c.li	a1,00000002
	jal	ra,00000000230858D2
	c.mv	a1,sp
	addi	a2,zero,+00000040
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858F0
	c.li	a2,00000014
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,00000000230858F0
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,0000000023085904
	c.mv	a2,s6
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,00000000230A382C
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

l2307AC2E:
	slli	a5,s3,00000002
	add	a4,s9,a5
	c.add	a5,s8
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	c.addi4spn	a0,0000005C
	c.addi	s3,00000001
	jal	ra,00000000230858F0
	c.j	000000002307AB92

;; vfs_init: 2307AC46
;;   Called from:
;;     23000A5C (in aos_loop_proc)
vfs_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000006BC
	lbu	a4,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a5,00000000
	beq	a4,s1,000000002307AC84

l2307AC62:
	lui	a1,0004201B
	addi	a1,a1,+0000048C
	c.li	a0,00000001
	jal	ra,000000002306149C
	lui	a5,00042027
	sw	a0,a5,+00000930
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002307AC84

l2307AC7C:
	c.jal	000000002307B104
	c.li	a5,00000000
	sb	s1,s0,+00000000

l2307AC84:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_open: 2307AC90
;;   Called from:
;;     23000AD0 (in aos_loop_proc)
;;     2305DB1C (in cat_cmd)
;;     2305DB96 (in hexdump_cmd)
;;     2307C23A (in aos_event_service_init)
;;     2307C41E (in at_serial_open)
;;     23080630 (in get_romfs_file_content)
aos_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,000000002307AD44

l2307ACA0:
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,00000000230A4220
	addi	a5,zero,+00000400
	bltu	a5,a0,000000002307AD48

l2307ACB0:
	lui	s4,00042027
	lw	a0,s4,-000006D0
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307AD4C

l2307ACC4:
	c.mv	a0,s2
	c.jal	000000002307B140
	c.mv	s0,a0
	c.bnez	a0,000000002307ACEE

l2307ACCC:
	lw	a0,s4,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s0,FFFFFFFE

l2307ACDC:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307ACEE:
	sw	s3,a0,+0000000C
	c.jal	000000002307B064
	c.mv	s1,a0
	lw	a0,s4,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.beqz	s1,000000002307AD50

l2307AD06:
	c.lw	s0,0(a5)
	lbu	a3,s0,+00000010
	c.li	a4,00000003
	c.lw	a5,0(a5)
	bne	a3,a4,000000002307AD28

l2307AD14:
	c.beqz	a5,000000002307AD32

l2307AD16:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2307AD1E:
	c.mv	s0,a0
	c.beqz	a0,000000002307AD32

l2307AD22:
	c.mv	a0,s1
	c.jal	000000002307B0AA
	c.j	000000002307ACDC

l2307AD28:
	c.beqz	a5,000000002307AD32

l2307AD2A:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5
	c.j	000000002307AD1E

l2307AD32:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.j	000000002307B0C2

l2307AD44:
	c.li	s0,FFFFFFEA
	c.j	000000002307ACDC

l2307AD48:
	c.li	s0,FFFFFFE6
	c.j	000000002307ACDC

l2307AD4C:
	c.li	s0,FFFFFFFF
	c.j	000000002307ACDC

l2307AD50:
	c.li	s0,FFFFFFE9
	c.j	000000002307ACDC

;; aos_close: 2307AD54
;;   Called from:
;;     2305DB70 (in cat_cmd)
;;     2305DBE8 (in hexdump_cmd)
;;     2307CB74 (in at_server_init)
;;     23080644 (in get_romfs_file_content)
aos_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.jal	000000002307B0DE
	c.li	s0,FFFFFFFE
	c.beqz	a0,000000002307AD9A

l2307AD64:
	c.lw	a0,0(a4)
	c.mv	s1,a0
	c.li	s0,00000000
	c.lw	a4,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,000000002307AD74

l2307AD70:
	c.jalr	a5
	c.mv	s0,a0

l2307AD74:
	lui	s2,00042027
	lw	a0,s2,-000006D0
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307ADA8

l2307AD88:
	c.mv	a0,s1
	c.jal	000000002307B0AA
	lw	a0,s2,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l2307AD9A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2307ADA8:
	c.li	s0,FFFFFFFF
	c.j	000000002307AD9A

;; aos_read: 2307ADAC
;;   Called from:
;;     2305DB32 (in cat_cmd)
;;     2305EE78 (in console_cb_read)
;;     2307C1D8 (in event_read_cb)
;;     2307C32E (in at_serial_read)
aos_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	000000002307B0DE
	c.beqz	a0,000000002307ADCE

l2307ADB8:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+00000008
	beq	t1,zero,000000002307ADD6

l2307ADC8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2307ADCE:
	c.li	a0,FFFFFFFE

l2307ADD0:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2307ADD6:
	c.li	a0,FFFFFFFF
	c.j	000000002307ADD0

;; aos_write: 2307ADDA
;;   Called from:
;;     2305DC94 (in cli_putstr)
;;     2307C300 (in at_serial_write)
aos_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	000000002307B0DE
	c.beqz	a0,000000002307ADFC

l2307ADE6:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+0000000C
	beq	t1,zero,000000002307AE04

l2307ADF6:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2307ADFC:
	c.li	a0,FFFFFFFE

l2307ADFE:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2307AE04:
	c.li	a0,FFFFFFFF
	c.j	000000002307ADFE

;; aos_ioctl: 2307AE08
;;   Called from:
;;     2305DBC8 (in hexdump_cmd)
;;     2307C29A (in aos_post_event)
;;     2307C5D4 (in at_key_value_set)
;;     2308063E (in get_romfs_file_content)
aos_ioctl proc
	blt	a0,zero,000000002307AE3E

l2307AE0C:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	c.jal	000000002307B0DE
	c.beqz	a0,000000002307AE42

l2307AE18:
	c.lw	a0,0(a4)
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	lbu	a3,a4,+00000010
	c.lw	a4,0(a5)
	c.li	a4,00000003
	bne	a3,a4,000000002307AE38

l2307AE2A:
	lw	t1,a5,+00000044

l2307AE2E:
	beq	t1,zero,000000002307AE4A

l2307AE32:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2307AE38:
	lw	t1,a5,+00000010
	c.j	000000002307AE2E

l2307AE3E:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2307AE42:
	c.li	a0,FFFFFFFE

l2307AE44:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2307AE4A:
	addi	a0,zero,-00000047
	c.j	000000002307AE44

;; aos_stat: 2307AE50
;;   Called from:
;;     2305DF76 (in ls_cmd)
;;     2305E092 (in ls_cmd)
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
	c.beqz	a0,000000002307AE80

l2307AE64:
	lui	s0,00042027
	c.mv	s1,a0
	lw	a0,s0,-000006D0
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	c.mv	s2,s0
	beq	a0,a5,000000002307AE94

l2307AE7E:
	c.li	s0,FFFFFFFF

l2307AE80:
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

l2307AE94:
	c.mv	a0,s1
	c.jal	000000002307B140
	c.mv	s5,a0
	c.bnez	a0,000000002307AEAE

l2307AE9C:
	lw	a0,s0,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s0,FFFFFFED
	c.j	000000002307AE80

l2307AEAE:
	c.jal	000000002307B064
	c.mv	s3,a0
	lw	a0,s0,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s0,FFFFFFFE
	beq	s3,zero,000000002307AE80

l2307AEC6:
	lbu	a4,s5,+00000010
	c.li	a5,00000003
	addi	s0,zero,-00000047
	bne	a4,a5,000000002307AEE6

l2307AED4:
	lw	a5,s5,+00000000
	c.lw	a5,24(a5)
	c.beqz	a5,000000002307AEE6

l2307AEDC:
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s3
	c.jalr	a5
	c.mv	s0,a0

l2307AEE6:
	lw	a0,s2,-000006D0
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307AE7E

l2307AEF6:
	c.mv	a0,s3
	c.jal	000000002307B0AA
	lw	a0,s2,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	000000002307AE80

;; aos_opendir: 2307AF0A
;;   Called from:
;;     2305DF2A (in ls_cmd)
;;     2305DFF0 (in ls_cmd)
aos_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.bnez	a0,000000002307AF1E

l2307AF1A:
	c.li	s0,00000000
	c.j	000000002307AF4C

l2307AF1E:
	lui	s3,00042027
	c.mv	s1,a0
	lw	a0,s3,-000006D0
	c.li	a1,FFFFFFFF
	c.mv	s4,s3
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307AF1A

l2307AF36:
	c.mv	a0,s1
	c.jal	000000002307B140
	c.mv	s0,a0
	c.bnez	a0,000000002307AF5E

l2307AF3E:
	lw	a0,s3,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l2307AF4C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307AF5E:
	c.jal	000000002307B064
	c.mv	s2,a0
	lw	a0,s3,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	beq	s2,zero,000000002307AF1A

l2307AF74:
	lbu	a4,s0,+00000010
	c.li	a5,00000003
	beq	a4,a5,000000002307AFA2

l2307AF7E:
	lw	a0,s4,-000006D0
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307AF1A

l2307AF8E:
	c.mv	a0,s2
	c.jal	000000002307B0AA
	lw	a0,s4,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	000000002307AF1A

l2307AFA2:
	c.lw	s0,0(a5)
	c.lw	a5,36(a5)
	c.beqz	a5,000000002307AF7E

l2307AFA8:
	c.mv	a1,s1
	c.mv	a0,s2
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002307AF7E

l2307AFB2:
	c.mv	a0,s2
	c.jal	000000002307B0C2
	c.sw	s0,0(a0)
	c.j	000000002307AF4C

;; aos_closedir: 2307AFBA
;;   Called from:
;;     2305DF9A (in ls_cmd)
aos_closedir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002307B018

l2307AFC8:
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	s0,FFFFFFFE
	c.jal	000000002307B0DE
	c.mv	s1,a0
	c.beqz	a0,000000002307B018

l2307AFD6:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	addi	s0,zero,-00000047
	lbu	a3,a5,+00000010
	c.lwsp	a2,00000064
	bne	a3,a4,000000002307AFF2

l2307AFE8:
	c.lw	a5,0(a5)
	c.lw	a5,44(a5)
	c.beqz	a5,000000002307AFF2

l2307AFEE:
	c.jalr	a5
	c.mv	s0,a0

l2307AFF2:
	lui	s2,00042027
	lw	a0,s2,-000006D0
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307B026

l2307B006:
	c.mv	a0,s1
	c.jal	000000002307B0AA
	lw	a0,s2,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l2307B018:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2307B026:
	c.li	s0,FFFFFFFF
	c.j	000000002307B018

;; aos_readdir: 2307B02A
;;   Called from:
;;     2305DF58 (in ls_cmd)
;;     2305E022 (in ls_cmd)
aos_readdir proc
	c.beqz	a0,000000002307B060

l2307B02C:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.jal	000000002307B0DE
	c.beqz	a0,000000002307B058

l2307B03A:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	lbu	a3,a5,+00000010
	bne	a3,a4,000000002307B058

l2307B046:
	c.lw	a5,0(a5)
	lw	t1,a5,+00000028
	beq	t1,zero,000000002307B058

l2307B050:
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l2307B058:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2307B060:
	c.li	a0,00000000
	c.jr	ra

;; new_file: 2307B064
;;   Called from:
;;     2307ACF2 (in aos_open)
;;     2307AEAE (in aos_stat)
;;     2307AF5E (in aos_opendir)
new_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201B
	addi	a4,s0,+000004DC
	c.swsp	ra,00000084
	c.li	a5,00000000
	addi	s0,s0,+000004DC
	addi	a3,zero,+0000003C

l2307B07C:
	c.lw	a4,0(a2)
	c.bnez	a2,000000002307B09E

l2307B080:
	c.li	a4,0000000C
	add	a5,a5,a4
	c.add	s0,a5
	c.sw	s0,0(a0)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.jal	000000002307B20C

l2307B094:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2307B09E:
	c.addi	a5,00000001
	c.addi	a4,0000000C
	bne	a5,a3,000000002307B07C

l2307B0A6:
	c.li	s0,00000000
	c.j	000000002307B094

;; del_file: 2307B0AA
;;   Called from:
;;     2307AD24 (in aos_open)
;;     2307AD8A (in aos_close)
;;     2307AEF8 (in aos_stat)
;;     2307AF90 (in aos_opendir)
;;     2307B008 (in aos_closedir)
del_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	000000002307B218
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; get_fd: 2307B0C2
;;   Called from:
;;     2307AD42 (in aos_open)
;;     2307AFB4 (in aos_opendir)
get_fd proc
	lui	a5,0004201B
	addi	a5,a5,+000004DC
	c.sub	a0,a5
	lui	a5,000AAAAB
	addi	a5,a5,-00000555
	c.srai	a0,00000002
	add	a0,a0,a5
	c.addi	a0,00000002
	c.jr	ra

;; get_file: 2307B0DE
;;   Called from:
;;     2307AD5E (in aos_close)
;;     2307ADB4 (in aos_read)
;;     2307ADE2 (in aos_write)
;;     2307AE14 (in aos_ioctl)
;;     2307AFD0 (in aos_closedir)
;;     2307B036 (in aos_readdir)
;;     2307BBA2 (in aos_poll)
;;     2307BC22 (in aos_poll)
get_file proc
	c.addi	a0,FFFFFFFE
	addi	a5,zero,+0000003B
	bltu	a5,a0,000000002307B100

l2307B0E8:
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,0004201B
	addi	a5,a5,+000004DC
	c.add	a5,a0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002307B102

l2307B0FC:
	c.mv	a0,a5
	c.jr	ra

l2307B100:
	c.li	a0,00000000

l2307B102:
	c.jr	ra

;; inode_init: 2307B104
;;   Called from:
;;     2307AC7C (in vfs_init)
inode_init proc
	lui	a0,0004201B
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000258
	c.li	a1,00000000
	addi	a0,a0,+000007AC
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; inode_alloc: 2307B122
;;   Called from:
;;     2307B252 (in inode_reserve)
inode_alloc proc
	lui	a5,0004201B
	addi	a5,a5,+000007AC
	c.li	a0,00000000
	c.li	a4,0000001E

l2307B12E:
	lbu	a3,a5,+00000010
	c.beqz	a3,000000002307B13E

l2307B134:
	c.addi	a0,00000001
	c.addi	a5,00000014
	bne	a0,a4,000000002307B12E

l2307B13C:
	c.li	a0,FFFFFFF4

l2307B13E:
	c.jr	ra

;; inode_open: 2307B140
;;   Called from:
;;     2307ACC6 (in aos_open)
;;     2307AE96 (in aos_stat)
;;     2307AF38 (in aos_opendir)
inode_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	addi	s0,s0,+000007AC
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

l2307B166:
	lw	s2,s0,+00000008
	c.mv	s3,s0
	bne	s2,zero,000000002307B18E

l2307B170:
	c.addi	s0,00000014
	bne	s0,s5,000000002307B166

l2307B176:
	c.li	s3,00000000

l2307B178:
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

l2307B18E:
	lbu	a5,s0,+00000010
	beq	a5,s6,000000002307B1A2

l2307B196:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307B170

l2307B1A0:
	c.j	000000002307B178

l2307B1A2:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A42AC
	c.bnez	a0,000000002307B196

l2307B1B4:
	c.lw	s0,8(a0)
	jal	ra,00000000230A4220
	c.add	a0,s1
	lbu	a5,a0,+00000000
	bne	a5,s4,000000002307B196

l2307B1C4:
	c.j	000000002307B178

;; inode_forearch_name: 2307B1C6
;;   Called from:
;;     2305E0DC (in ls_cmd)
inode_forearch_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	addi	s0,s0,+000007AC
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s4,a1
	addi	s2,s0,+00000258
	c.li	s1,00000000

l2307B1E6:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002307B1F4

l2307B1EA:
	c.mv	a1,s0
	c.mv	a0,s4
	c.addi	s1,00000001
	c.jalr	s3
	c.bnez	a0,000000002307B1FA

l2307B1F4:
	c.addi	s0,00000014
	bne	s0,s2,000000002307B1E6

l2307B1FA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; inode_ref: 2307B20C
;;   Called from:
;;     2307B092 (in new_file)
inode_ref proc
	lbu	a5,a0,+00000011
	c.addi	a5,00000001
	sb	a5,a0,+00000011
	c.jr	ra

;; inode_unref: 2307B218
;;   Called from:
;;     2307B0B4 (in del_file)
inode_unref proc
	lbu	a5,a0,+00000011
	c.beqz	a5,000000002307B224

l2307B21E:
	c.addi	a5,FFFFFFFF
	sb	a5,a0,+00000011

l2307B224:
	c.jr	ra

;; inode_reserve: 2307B226
;;   Called from:
;;     2307B2E4 (in aos_register_driver)
;;     2307B368 (in aos_register_fs)
inode_reserve proc
	c.bnez	a0,000000002307B22E

l2307B228:
	c.li	a5,FFFFFFEA
	c.mv	a0,a5
	c.jr	ra

l2307B22E:
	c.beqz	a1,000000002307B228

l2307B230:
	sw	zero,a1,+00000000
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,000000002307B228

l2307B240:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s4,a1
	c.mv	s1,a0
	jal	ra,000000002307B122
	c.mv	a5,a0
	blt	a0,zero,000000002307B2A0

l2307B25C:
	c.li	a4,0000001D
	c.li	s0,00000000
	blt	a4,a0,000000002307B274

l2307B264:
	c.li	a4,00000014
	add	a5,a0,a4
	lui	s0,0004201B
	addi	s0,s0,+000007AC
	c.add	s0,a5

l2307B274:
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	s3,a0
	c.addi	a0,00000001
	jal	ra,000000002306488A
	c.mv	s2,a0
	c.li	a5,FFFFFFF4
	c.beqz	a0,000000002307B2A0

l2307B288:
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,00000000230A382C
	sw	s2,s0,+00000008
	c.add	s2,s3
	sb	zero,s2,+00000000
	sw	s0,s4,+00000000
	c.li	a5,00000000

l2307B2A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; aos_register_driver: 2307B2B2
;;   Called from:
;;     2306665A (in dev_uart_init)
;;     2307C1BA (in vfs_device_init)
aos_register_driver proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042027
	c.swsp	s5,00000088
	c.mv	s5,a0
	lw	a0,s1,-000006D0
	c.swsp	s4,0000000C
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a2
	c.swsp	zero,00000084
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307B324

l2307B2DE:
	c.mv	s2,a0
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	jal	ra,000000002307B226
	c.mv	s0,a0
	c.bnez	a0,000000002307B2FC

l2307B2EC:
	c.lwsp	a2,000000E4
	sw	s4,a5,+00000000
	sb	s2,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s3,a5,+00000004

l2307B2FC:
	lw	a0,s1,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a5,00000001
	beq	a0,a5,000000002307B326

l2307B310:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,000000002307B31A

l2307B316:
	jal	ra,0000000023064972

l2307B31A:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2307B324:
	c.li	s0,FFFFFFFF

l2307B326:
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

;; aos_register_fs: 2307B33A
;;   Called from:
;;     23078DB4 (in romfs_register)
aos_register_fs proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042027
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lw	a0,s1,-000006D0
	c.swsp	s3,0000008C
	c.mv	s3,a1
	c.li	a1,FFFFFFFF
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a2
	c.swsp	zero,00000084
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,000000002307B3AA

l2307B364:
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,000000002307B226
	c.mv	s0,a0
	c.bnez	a0,000000002307B382

l2307B370:
	c.lwsp	a2,000000E4
	c.li	a4,00000003
	sw	s3,a5,+00000000
	sb	a4,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s2,a5,+00000004

l2307B382:
	lw	a0,s1,-000006D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a5,00000001
	beq	a0,a5,000000002307B3AC

l2307B396:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,000000002307B3A0

l2307B39C:
	jal	ra,0000000023064972

l2307B3A0:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2307B3AA:
	c.li	s0,FFFFFFFF

l2307B3AC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; vfs_uart_open: 2307B3BE
vfs_uart_open proc
	c.bnez	a1,000000002307B3CE

l2307B3C0:
	c.li	a0,FFFFFFEA

l2307B3C2:
	c.jr	ra

l2307B3C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l2307B3CE:
	c.lw	a1,0(a5)
	c.beqz	a5,000000002307B3C0

l2307B3D2:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,000000002307B3C2

l2307B3DE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	addi	a0,s0,+00000020
	jal	ra,000000002307BE1A
	c.lw	s0,24(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,0000000023061C96
	c.sw	s0,16(a0)
	c.lw	s0,28(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,0000000023061C96
	c.lw	s0,16(a5)
	c.sw	s0,20(a0)
	c.beqz	a5,000000002307B3C4

l2307B40A:
	c.beqz	a0,000000002307B3C4

l2307B40C:
	lui	a2,0002307B
	addi	a2,a2,+0000048A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230667A8
	lui	a2,0002307B
	c.mv	a0,s0
	addi	a2,a2,+00000438
	c.li	a1,00000001
	jal	ra,00000000230667A8
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230666C2

;; __uart_rx_irq: 2307B438
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
	jal	ra,0000000023066712
	c.lwsp	s0,00000084
	c.beqz	a2,000000002307B468

l2307B456:
	c.lw	s0,16(a0)
	c.addi4spn	a3,0000000C
	c.addi4spn	a1,00000010
	jal	ra,0000000023061F68
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002307B468

l2307B464:
	jal	ra,0000000023062D06

l2307B468:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002307B482

l2307B46C:
	c.lw	s0,40(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,36(a5)
	c.lw	s0,44(a1)
	c.lw	s0,40(a0)
	c.jalr	a5

l2307B482:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; __uart_tx_irq: 2307B48A
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
	jal	ra,0000000023062118
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002307B4AE

l2307B4A6:
	c.swsp	a0,00000084
	jal	ra,0000000023062D06
	c.lwsp	a2,00000044

l2307B4AE:
	c.li	a5,00000001
	bne	a0,a5,000000002307B4CA

l2307B4B4:
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,sp,+0000001B
	c.mv	a0,s0
	jal	ra,0000000023066754

l2307B4C2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2307B4CA:
	c.mv	a0,s0
	jal	ra,00000000230666AE
	c.j	000000002307B4C2

;; vfs_uart_close: 2307B4D2
vfs_uart_close proc
	c.beqz	a0,000000002307B50E

l2307B4D4:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002307B50E

l2307B4D8:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,000000002307B51C

l2307B4E4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	c.beqz	s0,000000002307B512

l2307B4EE:
	addi	a0,s0,+00000020
	jal	ra,000000002307BE3A
	c.lw	s0,16(a0)
	jal	ra,0000000023061DC0
	c.lw	s0,20(a0)
	jal	ra,0000000023061DC0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023066788

l2307B50E:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2307B512:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l2307B51C:
	c.jr	ra

;; vfs_uart_read: 2307B51E
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
	c.beqz	a0,000000002307B582

l2307B532:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002307B582

l2307B538:
	lw	s3,a5,+00000004
	c.beqz	a2,000000002307B582

l2307B53E:
	beq	s3,zero,000000002307B582

l2307B542:
	addi	s5,s3,+00000020
	c.mv	s4,a1
	c.mv	a0,s5
	c.li	a1,FFFFFFFF
	c.mv	s2,a2
	jal	ra,000000002307BE40
	lbu	s1,s3,+00000034
	c.li	s0,00000000
	c.addi	s1,FFFFFFFF
	sltiu	s1,s1,+00000001
	sub	s1,zero,s1

l2307B562:
	lw	a0,s3,+00000010
	sub	a2,s2,s0
	add	a1,s4,s0
	c.mv	a3,s1
	jal	ra,000000002306201A
	c.add	s0,a0
	beq	s0,s2,000000002307B57C

l2307B57A:
	c.bnez	s1,000000002307B562

l2307B57C:
	c.mv	a0,s5
	jal	ra,000000002307BE58

l2307B582:
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

;; vfs_uart_write: 2307B596
vfs_uart_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002307B5C0

l2307B5A2:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002307B5C0

l2307B5A8:
	c.lw	a5,4(s1)
	c.beqz	s1,000000002307B5C0

l2307B5AC:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	jal	ra,0000000023061E42
	c.mv	s0,a0
	bge	zero,a0,000000002307B5C0

l2307B5BA:
	c.mv	a0,s1
	jal	ra,000000002306669A

l2307B5C0:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; vfs_uart_poll: 2307B5CC
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
	jal	ra,000000002307BE40
	bne	s5,zero,000000002307B622

l2307B5F8:
	jal	ra,0000000023063658
	sw	zero,s0,+00000024
	sw	zero,s0,+0000002C
	jal	ra,000000002306366C

l2307B608:
	c.mv	a0,s1
	jal	ra,000000002307BE58
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

l2307B622:
	jal	ra,0000000023063658
	sw	s2,s0,+00000024
	sw	s3,s0,+00000028
	sw	s4,s0,+0000002C
	jal	ra,000000002306366C
	c.lw	s0,16(a0)
	jal	ra,00000000230621CA
	c.li	a5,00000001
	beq	a0,a5,000000002307B608

l2307B642:
	c.lw	s0,40(a4)
	c.mv	a1,s4
	c.mv	a0,s3
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.jalr	s2
	c.j	000000002307B608

;; vfs_uart_sync: 2307B658
vfs_uart_sync proc
	c.beqz	a0,000000002307B692

l2307B65A:
	c.lw	a0,0(a5)
	c.li	a0,FFFFFFEA
	c.beqz	a5,000000002307B696

l2307B660:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a5,4(s0)
	c.beqz	s0,000000002307B688

l2307B66C:
	addi	s1,s0,+00000020
	c.li	a1,FFFFFFFF
	c.mv	a0,s1
	jal	ra,000000002307BE40
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023067008
	c.mv	a0,s1
	jal	ra,000000002307BE58
	c.li	a0,00000000

l2307B688:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2307B692:
	c.li	a0,FFFFFFEA
	c.jr	ra

l2307B696:
	c.jr	ra

;; uart_ioctl_cmd_waimode: 2307B698
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
	c.beqz	a2,000000002307B6F8

l2307B6B2:
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

l2307B6D4:
	c.lw	s1,0(a1)
	lw	a0,s4,+00000010
	sub	a2,s6,s0
	c.add	a1,s0
	c.mv	a3,s3
	jal	ra,000000002306201A
	c.add	s0,a0
	beq	s6,s0,000000002307B6F8

l2307B6EC:
	bgeu	s7,s2,000000002307B6F8

l2307B6F0:
	bne	s5,s8,000000002307B6D4

l2307B6F4:
	bge	zero,s0,000000002307B6D4

l2307B6F8:
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

;; uart_ioctl_cmd_setconfig: 2307B712
uart_ioctl_cmd_setconfig proc
	c.beqz	a1,000000002307B738

l2307B714:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a1,+00000004
	c.li	a5,00000001
	beq	a2,a5,000000002307B72A

l2307B722:
	c.li	a5,00000002
	beq	a2,a5,000000002307B72A

l2307B728:
	c.li	a2,00000000

l2307B72A:
	c.lw	a1,0(a1)
	jal	ra,0000000023067024
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307B738:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; vfs_uart_ioctl: 2307B73C
vfs_uart_ioctl proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,FFFFFFEA
	c.beqz	a0,000000002307B78E

l2307B74C:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,000000002307B78E

l2307B752:
	c.lw	a5,4(s1)
	c.beqz	s1,000000002307B78E

l2307B756:
	addi	s3,s1,+00000020
	c.mv	s2,a1
	c.mv	a0,s3
	c.li	a1,FFFFFFFF
	c.swsp	a2,00000084
	c.jal	000000002307BE40
	addi	a5,s2,-00000002
	c.li	a4,00000006
	bltu	a4,a5,000000002307B78A

l2307B76E:
	lui	a4,000230C4
	c.slli	a5,02
	addi	a4,a4,+000004CC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lwsp	a2,00000084
	c.jr	a5
2307B780 CA 85 26 85 EF F0 5F F1 2A 84                   ..&..._.*.     

l2307B78A:
	c.mv	a0,s3
	c.jal	000000002307BE58

l2307B78E:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
2307B79E                                           81 45               .E
2307B7A0 26 85 EF B0 7E 86 7D 54 CD B7 B2 85 26 85 EF B0 &...~.}T....&...
2307B7B0 FE 86 D5 BF B2 85 26 85 EF F0 BF F5 F1 B7 85 47 ......&........G
2307B7C0 23 8A F4 02 CD B7 89 47 E5 BF                   #......G..     

;; get_context: 2307B7CA
;;   Called from:
;;     2307B802 (in aos_loop_set_eventfd)
;;     2307B8A8 (in aos_poll_read_fd)
;;     2307B988 (in aos_post_delayed_action)
;;     2307BA08 (in aos_loop_run)
get_context proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200F
	addi	s1,s1,+000006C0
	c.lw	s1,0(a0)
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.jal	000000002307BDE0
	c.bnez	a0,000000002307B7F0

l2307B7E0:
	lui	s0,0004200F
	addi	s0,s0,+000006C4
	c.lw	s0,0(a1)
	c.lw	s1,0(a0)
	c.jal	000000002307BDA0
	c.lw	s0,0(a0)

l2307B7F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_set_eventfd: 2307B7FA
;;   Called from:
;;     2307C262 (in aos_event_service_init)
aos_loop_set_eventfd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002307B7CA
	c.sw	a0,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_init: 2307B810
;;   Called from:
;;     23000AC2 (in aos_loop_proc)
aos_loop_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	lw	a0,s2,+000006C0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.jal	000000002307BDE0
	lw	a5,s1,+000006C4
	addi	s3,s2,+000006C0
	addi	s1,s1,+000006C4
	c.bnez	a5,000000002307B86C

l2307B838:
	addi	a0,s2,+000006C0
	c.jal	000000002307BD3C

l2307B83E:
	c.li	a0,0000001C
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,000000002307B850

l2307B848:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2307B850:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002307B856

l2307B854:
	c.sw	s1,0(s0)

l2307B856:
	c.sw	s0,0(s0)
	lw	a0,s3,+00000000
	c.li	a5,FFFFFFFF
	c.sw	s0,16(a5)
	c.mv	a1,s0
	c.sw	s0,4(s0)
	c.jal	000000002307BDA0
	jal	ra,000000002307C22A
	c.j	000000002307B87C

l2307B86C:
	c.mv	s0,a0
	c.beqz	a0,000000002307B83E

l2307B870:
	lui	a0,000230C4
	addi	a0,a0,+00000504
	jal	ra,0000000023082388

l2307B87C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; aos_poll_read_fd: 2307B88C
;;   Called from:
;;     23000AFC (in aos_loop_proc)
;;     2307C25C (in aos_event_service_init)
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
	jal	ra,000000002307B7CA
	blt	s2,zero,000000002307B96E

l2307B8B0:
	lbu	s5,a0,+00000016
	c.li	s8,0000000C
	c.mv	s0,a0
	addi	s4,s5,+00000001
	add	s3,s4,s8
	c.mv	a0,s3
	jal	ra,000000002306488A
	c.mv	s1,a0
	slli	a0,s4,00000003
	jal	ra,000000002306488A
	c.mv	s4,a0
	c.beqz	s1,000000002307B8D6

l2307B8D4:
	c.bnez	a0,000000002307B908

l2307B8D6:
	lui	a0,000230C4
	addi	a0,a0,+00000530
	jal	ra,0000000023082388
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.mv	a0,s4
	jal	ra,0000000023064972
	c.li	a0,FFFFFFF4

l2307B8F0:
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

l2307B908:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s2
	c.jal	000000002307BC46
	c.lui	a2,00004000
	c.or	a2,a0
	c.li	a1,00000004
	c.mv	a0,s2
	c.jal	000000002307BC46
	add	a2,s5,s8
	lbu	a5,s0,+00000016
	c.lw	s0,12(a1)
	c.mv	a0,s1
	c.addi	a5,00000001
	sb	a5,s0,+00000016
	c.addi	s3,FFFFFFF4
	jal	ra,00000000230A382C
	c.lw	s0,12(a0)
	jal	ra,0000000023064972
	c.lw	s0,8(a1)
	c.sw	s0,12(s1)
	slli	a2,s5,00000003
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.lw	s0,8(a0)
	c.add	s1,s3
	jal	ra,0000000023064972
	sw	s4,s0,+00000008
	sw	s2,s1,+00000000
	sw	s7,s1,+00000004
	sw	s6,s1,+00000008
	lhu	a5,s0,+00000014
	c.li	a0,00000000
	bge	a5,s2,000000002307B8F0

l2307B968:
	sh	s2,s0,+00000014
	c.j	000000002307B8F0

l2307B96E:
	c.li	a0,FFFFFFEA
	c.j	000000002307B8F0

;; aos_post_delayed_action: 2307B972
;;   Called from:
;;     230010EA (in blsync_ble_start)
;;     23001104 (in blsync_ble_stop)
;;     2302500A (in event_cb_wifi_event_mgmr)
;;     23025034 (in trigger_auto_denoise)
aos_post_delayed_action proc
	c.beqz	a1,000000002307B9F2

l2307B974:
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
	jal	ra,000000002307B7CA
	c.mv	s4,a0
	addi	a0,zero,+00000020
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.li	a0,FFFFFFF4
	c.beqz	s0,000000002307B9DE

l2307B99C:
	c.jal	000000002307BF00
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

l2307B9BE:
	beq	a5,s4,000000002307B9D2

l2307B9C2:
	c.lw	a5,12(a3)
	blt	a4,a3,000000002307B9D2

l2307B9C8:
	bne	a3,a4,000000002307B9EE

l2307B9CC:
	c.lw	a5,8(a3)
	bgeu	a0,a3,000000002307B9EE

l2307B9D2:
	c.lw	a5,0(a4)
	c.sw	s0,4(a5)
	c.li	a0,00000000
	c.sw	s0,0(a4)
	c.sw	a4,4(s0)
	c.sw	a5,0(s0)

l2307B9DE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307B9EE:
	c.lw	a5,4(a5)
	c.j	000000002307B9BE

l2307B9F2:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; aos_loop_run: 2307B9F6
;;   Called from:
;;     23000B60 (in aos_loop_proc)
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
	jal	ra,000000002307B7CA
	c.mv	s0,a0
	c.li	s3,0000000C
	c.li	s4,00000001
	c.li	s5,00000004

l2307BA14:
	lbu	a5,s0,+00000018
	c.bnez	a5,000000002307BA28

l2307BA1A:
	c.lw	s0,4(s1)
	lbu	s2,s0,+00000016
	bne	s0,s1,000000002307BA40

l2307BA24:
	bne	s2,zero,000000002307BA40

l2307BA28:
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

l2307BA40:
	c.li	a2,FFFFFFFF
	beq	s0,s1,000000002307BA5A

l2307BA46:
	c.jal	000000002307BF00
	c.lw	s1,12(a5)
	c.lw	s1,8(a2)
	blt	a1,a5,000000002307BA58

l2307BA50:
	bne	a5,a1,000000002307BA94

l2307BA54:
	bgeu	a0,a2,000000002307BA94

l2307BA58:
	c.sub	a2,a0

l2307BA5A:
	c.li	a5,00000000

l2307BA5C:
	c.lw	s0,8(a0)
	blt	a5,s2,000000002307BA98

l2307BA62:
	c.mv	a1,s2
	c.jal	000000002307BB14
	c.mv	s6,a0
	bge	a0,zero,000000002307BAB6

l2307BA6C:
	jal	ra,00000000230A3630
	c.lw	a0,0(a5)
	beq	a5,s5,000000002307BAB6

l2307BA76:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,000230C4
	addi	a0,a0,+00000520
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2307BA94:
	c.li	a2,00000000
	c.j	000000002307BA5A

l2307BA98:
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
	c.j	000000002307BA5C

l2307BAB6:
	c.lw	s0,4(s1)
	beq	s0,s1,000000002307BAE2

l2307BABC:
	c.jal	000000002307BF00
	c.lw	s1,12(a5)
	blt	a1,a5,000000002307BAE2

l2307BAC4:
	bne	a5,a1,000000002307BACE

l2307BAC8:
	c.lw	s1,8(a5)
	bltu	a0,a5,000000002307BAE2

l2307BACE:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s1,16(a0)
	c.lw	s1,20(a5)
	c.jalr	a5
	c.mv	a0,s1
	jal	ra,0000000023064972

l2307BAE2:
	c.li	s1,00000000
	bge	zero,s6,000000002307BA14

l2307BAE8:
	beq	s1,s2,000000002307BA14

l2307BAEC:
	c.lw	s0,8(a5)
	slli	a4,s1,00000003
	c.add	a5,a4
	lhu	a5,a5,+00000006
	c.andi	a5,00000001
	c.beqz	a5,000000002307BB0C

l2307BAFC:
	add	a5,s1,s3
	c.lw	s0,12(a4)
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.lw	a5,4(a1)
	c.lw	a5,0(a0)
	c.jalr	a4

l2307BB0C:
	c.addi	s1,00000001
	c.j	000000002307BAE8

;; vfs_poll_notify: 2307BB10
vfs_poll_notify proc
	c.mv	a0,a1
	c.j	000000002307BEBC

;; aos_poll: 2307BB14
;;   Called from:
;;     2307BA64 (in aos_loop_run)
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
	c.jal	000000002307BE76
	c.li	a5,00000000
	c.li	a4,00000008

l2307BB38:
	c.addi4spn	a3,00000008
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002307BB38

l2307BB46:
	addi	s1,s0,+00000006
	c.mv	a4,s1
	c.li	a5,00000000

l2307BB4E:
	blt	a5,s2,000000002307BB72

l2307BB52:
	c.mv	s6,s0
	c.li	s7,00000000
	c.li	s4,00000001
	lui	s5,0002307C

l2307BB5C:
	blt	s7,s2,000000002307BB7C

l2307BB60:
	c.mv	a1,s3
	bge	s3,zero,000000002307BB68

l2307BB66:
	c.li	a1,FFFFFFFF

l2307BB68:
	c.addi4spn	a0,00000004
	c.jal	000000002307BE9C
	c.li	a3,00000000
	c.li	a2,00000001
	c.j	000000002307BBE6

l2307BB72:
	sh	zero,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000008
	c.j	000000002307BB4E

l2307BB7C:
	lw	a0,s6,+00000000
	blt	s4,a0,000000002307BBA2

l2307BB84:
	srli	a5,a0,00000005
	c.addi4spn	a4,00000010
	c.slli	a5,02
	c.add	a5,a4
	lw	a4,a5,-00000008
	sll	a0,s4,a0
	c.or	a0,a4
	sw	a0,a5,+00000FF8

l2307BB9C:
	c.addi	s7,00000001
	c.addi	s6,00000008
	c.j	000000002307BB5C

l2307BBA2:
	jal	ra,000000002307B0DE
	c.beqz	a0,000000002307BC18

l2307BBA8:
	c.lw	a0,0(a5)
	c.addi4spn	a4,00000004
	c.mv	a3,s6
	c.lw	a5,0(a5)
	addi	a2,s5,-000004F0
	c.li	a1,00000001
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	000000002307BB9C

l2307BBBC:
	lw	a5,s1,-00000006
	c.addi4spn	a1,00000010
	srli	a4,a5,00000005
	c.slli	a4,02
	c.add	a4,a1
	lw	a4,a4,-00000008
	sll	a5,a2,a5
	c.and	a5,a4
	c.beqz	a5,000000002307BBE2

l2307BBD6:
	lhu	a5,s1,+00000000
	ori	a5,a5,+00000001
	sh	a5,s1,+00000000

l2307BBE2:
	c.addi	a3,00000001
	c.addi	s1,00000008

l2307BBE6:
	blt	a3,s2,000000002307BBBC

l2307BBEA:
	c.li	s4,00000000

l2307BBEC:
	c.li	s1,00000000
	c.li	s3,00000000
	c.li	s5,00000001

l2307BBF2:
	blt	s3,s2,000000002307BC1C

l2307BBF6:
	c.addi4spn	a0,00000004
	c.jal	000000002307BE92
	beq	s4,zero,000000002307BC00

l2307BBFE:
	c.li	s1,00000000

l2307BC00:
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

l2307BC18:
	c.li	s4,FFFFFFFF
	c.j	000000002307BBEC

l2307BC1C:
	c.lw	s0,0(a0)
	bge	s5,a0,000000002307BC40

l2307BC22:
	jal	ra,000000002307B0DE
	c.beqz	a0,000000002307BC40

l2307BC28:
	c.lw	a0,0(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.lw	a5,0(a5)
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a5,20(a5)
	c.jalr	a5
	lh	a5,s0,+00000006
	c.beqz	a5,000000002307BC40

l2307BC3E:
	c.addi	s1,00000001

l2307BC40:
	c.addi	s3,00000001
	c.addi	s0,00000008
	c.j	000000002307BBF2

;; aos_fcntl: 2307BC46
;;   Called from:
;;     2307B90E (in aos_poll_read_fd)
;;     2307B918 (in aos_poll_read_fd)
aos_fcntl proc
	c.li	a5,FFFFFFEA
	blt	a0,zero,000000002307BC56

l2307BC4C:
	c.li	a4,00000001
	c.li	a5,00000000
	blt	a4,a0,000000002307BC56

l2307BC54:
	c.li	a5,FFFFFFFE

l2307BC56:
	c.mv	a0,a5
	c.jr	ra

;; dfl_entry: 2307BC5A
dfl_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,8(s1)
	c.lw	a0,4(s0)
	jal	ra,0000000023064972
	c.mv	a0,s1
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023062720

;; aos_task_new: 2307BC7C
;;   Called from:
;;     2305DAF2 (in ota_cmd)
;;     23077610 (in iperf_server_udp_entry)
;;     23077644 (in iperf_client_udp_entry)
;;     23077678 (in iperf_server_entry)
;;     230776AC (in iperf_client_tcp_entry)
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
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.li	a0,0000000C
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002306488A
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	s2,a0
	jal	ra,00000000230A3A68
	addi	a2,zero,+0000009C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFF0
	c.sw	s0,96(a5)
	c.li	a2,0000001F
	c.mv	a1,s4
	sw	s2,s0,+00000074
	addi	a0,s0,+00000078
	jal	ra,00000000230A439C
	lui	a5,00020171
	addi	a5,a5,+00000020
	sw	a5,s0,+00000098
	lui	a0,0002307C
	c.sw	s1,0(s0)
	sw	s6,s1,+00000004
	sw	s5,s1,+00000008
	c.mv	a6,s0
	c.mv	a5,s2
	c.li	a4,0000000A
	c.mv	a3,s1
	srli	a2,s3,00000002
	c.mv	a1,s4
	addi	a0,a0,-000003A6
	jal	ra,0000000023062604
	c.bnez	a0,000000002307BD32

l2307BD0A:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.li	a0,FFFFFFFF

l2307BD1E:
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

l2307BD32:
	c.li	a0,00000000
	c.j	000000002307BD1E

;; aos_task_exit: 2307BD36
;;   Called from:
;;     2305DAF8 (in tftp_ota_thread)
aos_task_exit proc
	c.li	a0,00000000
	jal	zero,0000000023062720

;; aos_task_key_create: 2307BD3C
;;   Called from:
;;     2307B83C (in aos_loop_init)
aos_task_key_create proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023063372
	lw	a4,a0,+00000098
	lui	a5,00020171
	addi	a5,a5,+00000020
	bne	a4,a5,000000002307BD9C

l2307BD58:
	c.lw	a0,96(a5)
	andi	a4,a5,+00000001
	c.beqz	a4,000000002307BD8A

l2307BD60:
	andi	a4,a5,+00000002
	c.beqz	a4,000000002307BD90

l2307BD66:
	andi	a4,a5,+00000004
	c.beqz	a4,000000002307BD96

l2307BD6C:
	andi	a3,a5,+00000008
	c.li	a4,FFFFFFFF
	c.bnez	a3,000000002307BD80

l2307BD74:
	c.li	a4,00000003
	c.li	a3,00000008

l2307BD78:
	c.or	a5,a3
	c.sw	a0,96(a5)
	c.sw	s0,0(a4)
	c.li	a4,00000000

l2307BD80:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l2307BD8A:
	c.li	a4,00000000
	c.li	a3,00000001
	c.j	000000002307BD78

l2307BD90:
	c.li	a4,00000001
	c.li	a3,00000002
	c.j	000000002307BD78

l2307BD96:
	c.li	a4,00000002
	c.li	a3,00000004
	c.j	000000002307BD78

l2307BD9C:
	c.li	a4,FFFFFFFF
	c.j	000000002307BD80

;; aos_task_setspecific: 2307BDA0
;;   Called from:
;;     2307B7EC (in get_context)
;;     2307B864 (in aos_loop_init)
aos_task_setspecific proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,0000000023063372
	c.li	a4,00000003
	bltu	a4,s0,000000002307BDDC

l2307BDB4:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bne	a3,a4,000000002307BDD4

l2307BDC8:
	c.addi	s0,00000018
	c.lwsp	a2,00000064
	c.slli	s0,02
	c.add	s0,a5
	c.sw	s0,4(a1)
	c.li	a0,00000000

l2307BDD4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2307BDDC:
	c.li	a0,FFFFFFFF
	c.j	000000002307BDD4

;; aos_task_getspecific: 2307BDE0
;;   Called from:
;;     2307B7DC (in get_context)
;;     2307B828 (in aos_loop_init)
aos_task_getspecific proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023063372
	c.li	a4,00000003
	bltu	a4,s0,000000002307BE16

l2307BDF2:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a3,a4,000000002307BE0E

l2307BE06:
	c.addi	s0,00000018
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,4(a0)

l2307BE0E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2307BE16:
	c.li	a0,00000000
	c.j	000000002307BE0E

;; aos_mutex_new: 2307BE1A
;;   Called from:
;;     230666D0 (in hal_uart_init)
;;     2307B3EA (in vfs_uart_open)
;;     2307BFB4 (in event_open)
aos_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002306151C
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; aos_mutex_free: 2307BE3A
;;   Called from:
;;     2306679A (in hal_uart_finalize)
;;     2307B4F2 (in vfs_uart_close)
;;     2307C0C2 (in event_close)
aos_mutex_free proc
	c.lw	a0,0(a0)
	jal	zero,00000000230619CC

;; aos_mutex_lock: 2307BE40
;;   Called from:
;;     2307B54E (in vfs_uart_read)
;;     2307B5F0 (in vfs_uart_poll)
;;     2307B674 (in vfs_uart_sync)
;;     2307B762 (in vfs_uart_ioctl)
;;     2307BF50 (in event_poll)
;;     2307BFEE (in _event_write.isra.0)
;;     2307C128 (in event_read)
aos_mutex_lock proc
	c.beqz	a0,000000002307BE54

l2307BE42:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,00000000230617D0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307BE54:
	c.li	a0,00000000
	c.jr	ra

;; aos_mutex_unlock: 2307BE58
;;   Called from:
;;     2307B57E (in vfs_uart_read)
;;     2307B60A (in vfs_uart_poll)
;;     2307B682 (in vfs_uart_sync)
;;     2307B78C (in vfs_uart_ioctl)
;;     2307BF66 (in event_poll)
;;     2307C052 (in _event_write.isra.0)
;;     2307C170 (in event_read)
aos_mutex_unlock proc
	c.beqz	a0,000000002307BE72

l2307BE5A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307BE72:
	c.li	a0,00000000
	c.jr	ra

;; aos_sem_new: 2307BE76
;;   Called from:
;;     2307BB32 (in aos_poll)
aos_sem_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,zero,+00000080
	c.swsp	ra,00000084
	jal	ra,000000002306130C
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_sem_free: 2307BE92
;;   Called from:
;;     2307BBF8 (in aos_poll)
aos_sem_free proc
	c.beqz	a0,000000002307BE9A

l2307BE94:
	c.lw	a0,0(a0)
	jal	zero,00000000230619CC

l2307BE9A:
	c.jr	ra

;; aos_sem_wait: 2307BE9C
;;   Called from:
;;     2307BB6A (in aos_poll)
aos_sem_wait proc
	c.beqz	a0,000000002307BEB8

l2307BE9E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,00000000230617D0
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l2307BEB8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; aos_sem_signal: 2307BEBC
;;   Called from:
;;     2307BB12 (in vfs_poll_notify)
aos_sem_signal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.beqz	a0,000000002307BEDE

l2307BEC4:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.lw	a0,0(a0)
	c.beqz	a5,000000002307BEE4

l2307BED0:
	c.addi4spn	a1,0000000C
	jal	ra,000000002306160A
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002307BEDE

l2307BEDA:
	jal	ra,0000000023062D06

l2307BEDE:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2307BEE4:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	000000002307BEDE

;; aos_malloc: 2307BEF0
;;   Called from:
;;     2305DC00 (in aos_cli_init)
;;     2305DEAC (in proc_onecmd)
;;     23078956 (in romfs_opendir)
;;     2307BFA2 (in event_open)
;;     2307C06E (in _event_write.isra.0)
;;     2307C2B8 (in aos_register_event_filter)
aos_malloc proc
	jal	zero,000000002306488A

;; free: 2307BEF4
;;   Called from:
;;     2307D546 (in scan)
;;     2307DBDE (in http_req)
;;     2307DBF8 (in http_req)
;;     2307DDE8 (in base_station_info)
;;     23080702 (in udp_send_data)
;;     23080AC6 (in tcp_send_data)
free proc
	jal	zero,0000000023064972

;; aos_free: 2307BEF8
;;   Called from:
;;     2305DE7E (in proc_onecmd)
;;     2307854A (in romfs_closedir)
;;     230789B2 (in romfs_opendir)
;;     2307C0DC (in event_close)
;;     2307C0F4 (in event_close)
;;     2307C102 (in event_close)
;;     2307C188 (in event_read)
aos_free proc
	jal	zero,0000000023064972

;; malloc: 2307BEFC
;;   Called from:
;;     2307D498 (in scan)
;;     2307DB38 (in http_req)
;;     2307DD54 (in base_station_info)
;;     2308118E (in bl_cipsend)
;;     230811BC (in bl_cipsend)
malloc proc
	jal	zero,000000002306488A

;; aos_now_ms: 2307BF00
;;   Called from:
;;     230004FC (in event_cb_wifi_event)
;;     23000548 (in event_cb_wifi_event)
;;     2300067C (in event_cb_wifi_event)
;;     23000992 (in event_cb_wifi_event)
;;     2305E10C (in uptime_cmd)
;;     23065A8C (in sec_trng_IRQHandler)
;;     2307B99C (in aos_post_delayed_action)
;;     2307BA46 (in aos_loop_run)
;;     2307BABC (in aos_loop_run)
aos_now_ms proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,00000000230629AE
	c.li	a5,00000001
	beq	a0,a5,000000002307BF18

l2307BF16:
	c.j	000000002307BF16

l2307BF18:
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

;; event_poll: 2307BF3A
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
	jal	ra,000000002307BE40
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.bnez	s1,000000002307BF76

l2307BF5C:
	sw	zero,s0,+00000004
	sw	zero,s0,+0000000C

l2307BF64:
	c.mv	a0,s0
	jal	ra,000000002307BE58
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2307BF76:
	c.lw	s0,16(a5)
	c.sw	s0,4(a2)
	c.sw	s0,8(a3)
	c.sw	s0,12(a4)
	c.beqz	a5,000000002307BF64

l2307BF80:
	lhu	a5,a3,+00000006
	c.mv	a1,a4
	c.mv	a0,a3
	ori	a5,a5,+00000001
	sh	a5,a3,+00000006
	c.jalr	a2
	c.j	000000002307BF64

;; event_open: 2307BF94
event_open proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000028
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	jal	ra,000000002307BEF0
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	c.mv	a0,s0
	jal	ra,000000002307BE1A
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

;; _event_write.isra.0: 2307BFD6
;;   Called from:
;;     2307C0A6 (in event_ioctl)
;;     2307C0B2 (in event_write)
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
	jal	ra,000000002307BE40
	c.lwsp	a2,00000084
	c.lw	s0,28(a5)
	c.mv	s2,a2
	bge	zero,a5,000000002307C068

l2307BFFC:
	c.lw	s0,36(s1)
	c.lw	s1,8(a5)
	bne	a2,a5,000000002307C068

l2307C004:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s0,28(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,28(a5)

l2307C012:
	c.lw	s0,16(a5)
	c.mv	a1,s4
	addi	a0,s1,+0000000C
	c.addi	a5,00000001
	c.sw	s0,16(a5)
	c.sw	s1,8(a2)
	jal	ra,00000000230A382C
	addi	a4,s0,+00000014
	beq	s3,zero,000000002307C07C

l2307C02C:
	c.lw	s0,24(a5)
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,24(s1)
	c.sw	a5,0(s1)

l2307C036:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002307C050

l2307C03A:
	c.lw	s0,8(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,4(a5)
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	c.jalr	a5

l2307C050:
	c.mv	a0,s0
	jal	ra,000000002307BE58
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2307C068:
	addi	a0,a2,+0000000C
	c.swsp	a2,00000084
	jal	ra,000000002307BEF0
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,000000002307C012

l2307C078:
	c.li	s2,FFFFFFFF
	c.j	000000002307C050

l2307C07C:
	c.lw	s0,20(a5)
	c.sw	s1,4(a4)
	c.sw	s1,0(a5)
	c.sw	a5,4(s1)
	c.sw	s0,20(s1)
	c.j	000000002307C036

;; event_ioctl: 2307C088
event_ioctl proc
	c.mv	a5,a1
	c.li	a4,00000001
	c.mv	a1,a2
	srai	a2,a5,00000004
	c.andi	a5,0000000F
	beq	a5,a4,000000002307C0A2

l2307C098:
	c.li	a4,00000002
	beq	a5,a4,000000002307C0AA

l2307C09E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2307C0A2:
	c.li	a3,00000000

l2307C0A4:
	c.lw	a0,4(a0)
	jal	zero,000000002307BFD6

l2307C0AA:
	c.li	a3,00000001
	c.j	000000002307C0A4

;; event_write: 2307C0AE
event_write proc
	c.lw	a0,4(a0)
	c.li	a3,00000000
	jal	zero,000000002307BFD6

;; event_close: 2307C0B6
event_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,4(s0)
	c.mv	a0,s0
	jal	ra,000000002307BE3A
	addi	s1,s0,+00000014

l2307C0CA:
	c.lw	s0,24(a0)
	bne	a0,s1,000000002307C0EC

l2307C0D0:
	addi	s1,s0,+00000020

l2307C0D4:
	c.lw	s0,36(a0)
	bne	a0,s1,000000002307C0FA

l2307C0DA:
	c.mv	a0,s0
	jal	ra,000000002307BEF8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307C0EC:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,000000002307BEF8
	c.j	000000002307C0CA

l2307C0FA:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,000000002307BEF8
	c.j	000000002307C0D4

;; event_read: 2307C108
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
	beq	s2,zero,000000002307C174

l2307C120:
	c.mv	s4,a1
	c.mv	a0,s0
	c.li	a1,FFFFFFFF
	c.mv	s3,a2
	jal	ra,000000002307BE40
	c.lw	s0,24(s1)
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	s2,s1,+00000008
	bgeu	s3,s2,000000002307C140

l2307C13E:
	c.mv	s2,s3

l2307C140:
	c.mv	a2,s2
	addi	a1,s1,+0000000C
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.lw	s0,28(a4)
	c.li	a5,00000003
	blt	a5,a4,000000002307C186

l2307C154:
	c.lw	s0,36(a5)
	addi	a4,s0,+00000020
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,36(s1)
	c.sw	a5,0(s1)
	c.lw	s0,28(a5)
	c.addi	a5,00000001
	c.sw	s0,28(a5)

l2307C168:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	c.addi	a5,FFFFFFFF
	c.sw	s0,16(a5)
	jal	ra,000000002307BE58

l2307C174:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2307C186:
	c.mv	a0,s1
	jal	ra,000000002307BEF8
	c.j	000000002307C168

;; vfs_device_init: 2307C18E
;;   Called from:
;;     23000A60 (in aos_loop_proc)
vfs_device_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000006C8
	c.lw	s0,0(a5)
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a0,00000000
	beq	a5,s1,000000002307C1C2

l2307C1A8:
	lui	a1,000230C4
	lui	a0,000230C4
	c.li	a2,00000000
	addi	a1,a1,+00000544
	addi	a0,a0,+00000560
	jal	ra,000000002307B2B2
	c.bnez	a0,000000002307C1C2

l2307C1C0:
	c.sw	s0,0(s1)

l2307C1C2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; event_read_cb: 2307C1CC
event_read_cb proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,000000002307ADAC
	c.li	a5,00000010
	bne	a0,a5,000000002307C1F4

l2307C1E2:
	lhu	a4,sp,+00000004
	addi	a5,zero,+00000100
	bne	a4,a5,000000002307C1FE

l2307C1EE:
	c.lwsp	a2,00000044
	c.lwsp	s0,000000E4
	c.jalr	a5

l2307C1F4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2307C1FE:
	lui	a5,0004200F
	addi	a4,a5,-0000033C
	c.lw	a4,4(s0)
	addi	s1,a5,-0000033C

l2307C20C:
	beq	s0,s1,000000002307C1F4

l2307C210:
	lhu	a5,s0,+00000010
	c.beqz	a5,000000002307C21E

l2307C216:
	lhu	a4,sp,+00000004
	bne	a4,a5,000000002307C226

l2307C21E:
	c.lw	s0,8(a5)
	c.lw	s0,12(a1)
	c.mv	a0,sp
	c.jalr	a5

l2307C226:
	c.lw	s0,4(s0)
	c.j	000000002307C20C

;; aos_event_service_init: 2307C22A
;;   Called from:
;;     2307B866 (in aos_loop_init)
aos_event_service_init proc
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	addi	a0,a0,+00000560
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002307AC90
	lui	a5,0004200F
	addi	a5,a5,-00000334
	c.lw	a5,4(a4)
	c.mv	s0,a0
	bge	a4,zero,000000002307C250

l2307C24E:
	c.sw	a5,4(a0)

l2307C250:
	lui	a1,0002307C
	c.li	a2,00000000
	addi	a1,a1,+000001CC
	c.mv	a0,s0
	jal	ra,000000002307B88C
	c.mv	a0,s0
	jal	ra,000000002307B7FA
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_post_event: 2307C270
;;   Called from:
;;     23000352 (in cmd_stack_wifi)
;;     23001126 (in wifi_prov_api_event_trigger_connect)
;;     2300115C (in wifi_prov_api_event_trigger_disconnect)
;;     23001192 (in wifi_prov_api_event_trigger_scan)
;;     230011C8 (in wifi_prov_api_event_state_get)
;;     230231FC (in bl_rx_apm_sta_del_ind)
;;     230232EC (in bl_rx_apm_sta_add_ind)
;;     230245B8 (in stateConnectingEnter)
;;     2302480C (in stateDisconnect_action_reconnect)
;;     230248FA (in stateConnectedIPNoEnter)
;;     23024DF0 (in stateGlobalGuard_AP)
;;     230251CC (in stateGlobalGuard_denoise)
;;     2302537E (in stateGlobalGuard_stop)
;;     230254C0 (in stateDisconnect_enter)
;;     230254DE (in stateDisconnect_enter)
;;     230255C4 (in stateGlobalGuard_fw_scan)
;;     230256EC (in stateConnectedIPYes_enter)
;;     230258C2 (in wifi_mgmr_start)
;;     23028648 (in cb_event_ind)
;;     2307D6A6 (in ble_sync)
aos_post_event proc
	slli	a5,a0,00000011
	c.addi	sp,FFFFFFE0
	c.srli	a5,00000011
	sh	a5,sp,+00000004
	lui	a5,0004200F
	sh	a1,sp,+00000006
	srli	a1,a0,0000000F
	lw	a0,a5,-00000330
	c.swsp	a2,00000004
	addi	a1,a1,+00000101
	c.mv	a2,sp
	c.swsp	ra,0000008C
	c.swsp	zero,00000000
	c.swsp	zero,00000084
	jal	ra,000000002307AE08
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; aos_register_event_filter: 2307C2A4
;;   Called from:
;;     23000B38 (in aos_loop_proc)
;;     23000B48 (in aos_loop_proc)
;;     230258B8 (in wifi_mgmr_start)
aos_register_event_filter proc
	c.beqz	a1,000000002307C2EA

l2307C2A6:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.li	a0,00000014
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a2
	c.mv	s0,a1
	jal	ra,000000002307BEF0
	c.mv	a5,a0
	c.li	a0,FFFFFFF4
	c.beqz	a5,000000002307C2DE

l2307C2C2:
	lui	a4,0004200F
	addi	a4,a4,-0000033C
	c.lw	a4,0(a3)
	c.sw	a5,8(s0)
	sh	s2,a5,+00000010
	c.sw	a5,0(a3)
	c.sw	a5,12(s1)
	c.sw	a5,4(a4)
	c.sw	a3,4(a5)
	c.sw	a4,0(a5)
	c.li	a0,00000000

l2307C2DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2307C2EA:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; at_serial_write: 2307C2EE
at_serial_write proc
	lui	a5,0004201C
	lw	a5,a5,-000005F4
	blt	a5,zero,000000002307C304

l2307C2FA:
	c.mv	a2,a1
	c.mv	a1,a0
	c.mv	a0,a5
	jal	zero,000000002307ADDA

l2307C304:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000768
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; at_serial_read: 2307C31C
at_serial_read proc
	lui	a5,0004201C
	lw	a5,a5,-000005F4
	blt	a5,zero,000000002307C332

l2307C328:
	c.mv	a2,a1
	c.mv	a1,a0
	c.mv	a0,a5
	jal	zero,000000002307ADAC

l2307C332:
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000768
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; at_cmd_exec: 2307C34A
at_cmd_exec proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002307E46A
	lui	a0,000230C4
	addi	a0,a0,+0000069C
	jal	ra,0000000023082388

l2307C35E:
	c.j	000000002307C35E

;; at_serial_cfg_set: 2307C360
;;   Called from:
;;     2307CB52 (in at_server_init)
;;     2307D9A4 (in uart_set)
at_serial_cfg_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a1
	lui	a1,000230C4
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	addi	a1,a1,+00000590
	c.mv	s2,a0
	c.mv	s0,a2
	c.addi4spn	a0,00000010
	c.li	a2,00000010
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	ra,00000094
	jal	ra,00000000230A382C
	lui	a5,00002626
	addi	a5,a5,-00000600
	addi	a1,s1,-00000005
	c.swsp	s2,00000088
	c.swsp	a5,00000008
	andi	a1,a1,+000000FF
	c.li	a0,00000003
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	bgeu	a0,a1,000000002307C3B0

l2307C3A2:
	c.li	a0,00000004

l2307C3A4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2307C3B0:
	addi	a2,s0,-00000001
	sb	a1,sp,+00000018
	andi	a2,a2,+000000FF
	c.li	a1,00000002
	bltu	a1,a2,000000002307C3A2

l2307C3C2:
	sb	a2,sp,+00000019
	bltu	a1,a3,000000002307C3A2

l2307C3CA:
	sb	a3,sp,+0000001A
	c.li	a5,00000001
	beq	a4,a5,000000002307C3E8

l2307C3D4:
	c.beqz	a4,000000002307C3EC

l2307C3D6:
	beq	a4,a1,000000002307C3E2

l2307C3DA:
	bne	a4,a0,000000002307C3A2

l2307C3DE:
	sb	a5,sp,+0000001B

l2307C3E2:
	sb	a5,sp,+0000001D
	c.j	000000002307C3EC

l2307C3E8:
	sb	a4,sp,+0000001B

l2307C3EC:
	c.li	a1,00000002
	c.li	a0,00000001
	jal	ra,0000000023082B66
	c.addi4spn	a1,00000010
	c.li	a0,00000001
	jal	ra,00000000230829D4
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,0000000023082BB4
	c.li	a1,00000002
	c.li	a0,00000001
	jal	ra,0000000023082B32
	c.li	a0,00000000
	c.j	000000002307C3A4

;; at_serial_open: 2307C410
;;   Called from:
;;     2307CA94 (in at_server_init)
at_serial_open proc
	lui	a0,000230C4
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	addi	a0,a0,+0000073C
	c.swsp	ra,00000084
	jal	ra,000000002307AC90
	c.lwsp	a2,00000020
	lui	a5,0004201C
	sw	a0,a5,+00000A0C
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; at_serial_lock: 2307C432
;;   Called from:
;;     2307D4DE (in scan)
;;     230805B4 (in tcp_receive_callback)
;;     23080884 (in udp_receive_callback)
at_serial_lock proc
	lui	a5,0004201C
	lw	a0,a5,-000005F0
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.swsp	ra,00000084
	jal	ra,0000000023061958
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002307C45A

l2307C44C:
	lui	a0,000230C4
	addi	a0,a0,+0000071C
	jal	ra,0000000023082388
	c.li	a5,FFFFFFFF

l2307C45A:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; at_serial_unlock: 2307C462
;;   Called from:
;;     2307D540 (in scan)
;;     23080606 (in tcp_receive_callback)
;;     230808D6 (in udp_receive_callback)
at_serial_unlock proc
	lui	a5,0004201C
	lw	a0,a5,-000005F0
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230614D4
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002307C488

l2307C47A:
	lui	a0,000230C4
	addi	a0,a0,+00000748
	jal	ra,0000000023082388
	c.li	a5,FFFFFFFF

l2307C488:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; at_data_output: 2307C490
;;   Called from:
;;     2307D0E0 (in cb_altcp_recv_fn)
;;     230805FE (in tcp_receive_callback)
;;     230808CE (in udp_receive_callback)
at_data_output proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201C
	addi	s0,s0,-000005FC
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lw	s0,12(a0)
	c.swsp	s2,00000000
	c.mv	s2,a1
	c.li	a1,FFFFFFFF
	c.swsp	ra,00000084
	jal	ra,0000000023061958
	c.li	a5,00000001
	beq	a0,a5,000000002307C4D0

l2307C4B4:
	lui	a0,000230C4
	addi	a0,a0,+0000071C
	jal	ra,0000000023082388
	c.li	s1,FFFFFFFF

l2307C4C2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2307C4D0:
	lui	a5,00042028
	lw	a5,a5,-000006B8
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5
	c.mv	s1,a0
	c.lw	s0,12(a0)
	jal	ra,00000000230614D4
	c.j	000000002307C4C2

;; at_key_value_set: 2307C4E8
;;   Called from:
;;     2307D906 (in cwjap_cur)
;;     2307D914 (in cwjap_cur)
;;     2307D970 (in cwmode_cur)
;;     2307D9B6 (in uart_set)
;;     2307D9C6 (in uart_set)
;;     2307D9D6 (in uart_set)
;;     2307D9E6 (in uart_set)
;;     2307D9F6 (in uart_set)
;;     2307DF36 (in setautoconnect_handler)
;;     2307E010 (in scan_handler_opt)
;;     2307E2B8 (in echo_on_handler)
at_key_value_set proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.swsp	ra,000000AC
	jal	ra,00000000230A3A68
	lui	a1,000230AA
	addi	a1,a1,-00000624
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C52A

l2307C510:
	lbu	a4,s1,+00000000
	lui	a5,0004201C
	sw	a4,a5,+00000A04

l2307C51C:
	lui	a1,000230C8
	lbu	a2,s1,+00000000
	addi	a1,a1,-0000076C
	c.j	000000002307C544

l2307C52A:
	lui	a1,000230AA
	addi	a1,a1,-0000060C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C54C

l2307C53A:
	lui	a1,000230C7
	c.mv	a2,s1
	addi	a1,a1,-00000688

l2307C544:
	c.addi4spn	a0,0000000C
	jal	ra,00000000230823B8
	c.j	000000002307C588

l2307C54C:
	lui	a1,000230AA
	addi	a1,a1,-00000600
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C53A

l2307C55C:
	lui	a1,000230AA
	addi	a1,a1,-00000618
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C5A2

l2307C56C:
	lbu	a2,s1,+00000000
	lui	a1,000230C8
	addi	a1,a1,-0000076C
	c.addi4spn	a0,0000000C
	jal	ra,00000000230823B8
	lbu	a5,s1,+00000000
	c.beqz	a5,000000002307C59C

l2307C584:
	jal	ra,0000000023027BD8

l2307C588:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023060668
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l2307C59C:
	jal	ra,0000000023027BE8
	c.j	000000002307C588

l2307C5A2:
	lui	a1,000230C4
	addi	a1,a1,+00000700
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C5DA

l2307C5B2:
	c.lw	s1,0(a2)
	lui	a1,000230C8
	addi	a1,a1,-0000076C
	c.addi4spn	a0,0000000C
	jal	ra,00000000230823B8
	c.lw	s1,0(a4)
	lui	a5,0004201C
	addi	a5,a5,-000005FC
	c.sw	a5,4(a4)
	c.lw	s1,0(a2)
	c.lw	a5,8(a0)
	c.li	a1,00000003
	jal	ra,000000002307AE08
	c.j	000000002307C588

l2307C5DA:
	lui	a1,000230BF
	addi	a1,a1,+00000504
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C53A

l2307C5EA:
	lui	a1,000230BF
	addi	a1,a1,+0000050C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C53A

l2307C5FA:
	lui	a1,000230BF
	addi	a1,a1,+00000508
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	beq	a0,zero,000000002307C53A

l2307C60C:
	lui	a1,000230C4
	addi	a1,a1,+0000070C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	beq	a0,zero,000000002307C53A

l2307C61E:
	lui	a1,000230C4
	addi	a1,a1,+00000714
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	beq	a0,zero,000000002307C53A

l2307C630:
	c.j	000000002307C51C

;; at_key_value_get: 2307C632
;;   Called from:
;;     2300056A (in event_cb_wifi_event)
;;     23000580 (in event_cb_wifi_event)
;;     2307CAC4 (in at_server_init)
;;     2307CB0C (in at_server_init)
;;     2307CB1C (in at_server_init)
;;     2307CB2C (in at_server_init)
;;     2307CB3C (in at_server_init)
;;     2307D23C (in cwmode_cur_get)
;;     2307D25C (in uart_get)
;;     2307D26C (in uart_get)
;;     2307D27C (in uart_get)
;;     2307D28C (in uart_get)
;;     2307D29C (in uart_get)
;;     2307D438 (in scan)
;;     2307D7C4 (in set_apcfg)
;;     2307D84C (in cwjap_cur)
;;     2307D8F0 (in cwjap_cur)
;;     2307D95A (in cwmode_cur)
;;     2307DEBA (in setautoconnect_handler)
;;     2307DF8C (in scan_handler_opt)
;;     2307E244 (in echo_on_handler)
;;     2307EA46 (in join_ap_handler)
;;     2307EA54 (in join_ap_handler)
at_key_value_get proc
	c.bnez	a1,000000002307C638

l2307C634:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2307C638:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,00000000230603F2
	c.mv	s2,a0
	c.bnez	a0,000000002307C6FA

l2307C64E:
	lui	a1,000230AA
	addi	a1,a1,-00000624
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C66C

l2307C65E:
	lui	a5,0004201C
	lw	a5,a5,-000005FC
	sb	a5,s1,+00000000
	c.j	000000002307C6EE

l2307C66C:
	lui	a1,000230AA
	addi	a1,a1,-00000600
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C682

l2307C67C:
	sb	zero,s1,+00000000
	c.j	000000002307C6EE

l2307C682:
	lui	a1,000230C4
	addi	a1,a1,+00000700
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C69E

l2307C692:
	lui	a5,0004201C
	lw	a5,a5,-000005F8

l2307C69A:
	c.sw	s1,0(a5)
	c.j	000000002307C6EE

l2307C69E:
	lui	a1,000230C4
	addi	a1,a1,+000006E0
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.li	a5,00000008
	c.beqz	a0,000000002307C69A

l2307C6B0:
	lui	a1,000230C4
	addi	a1,a1,+000006E8
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C6C4

l2307C6C0:
	c.li	a5,00000001
	c.j	000000002307C69A

l2307C6C4:
	lui	a1,000230C4
	addi	a1,a1,+000006F0
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C6DC

l2307C6D4:
	sw	zero,s1,+00000000

l2307C6D8:
	c.li	a0,00000000
	c.j	000000002307C6EE

l2307C6DC:
	lui	a1,000230C4
	addi	a1,a1,+000006F8
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C6D4

l2307C6EC:
	c.li	a0,FFFFFFFF

l2307C6EE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2307C6FA:
	lui	a1,000230AA
	addi	a1,a1,-0000060C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307C714

l2307C70A:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230A4170
	c.j	000000002307C6D8

l2307C714:
	lui	a1,000230AA
	addi	a1,a1,-00000600
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C724:
	lui	a1,000230BF
	addi	a1,a1,+00000504
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C734:
	lui	a1,000230BF
	addi	a1,a1,+0000050C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C744:
	lui	a1,000230BF
	addi	a1,a1,+00000508
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C754:
	lui	a1,000230C4
	addi	a1,a1,+0000070C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C764:
	lui	a1,000230C4
	addi	a1,a1,+00000714
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307C70A

l2307C774:
	c.mv	a0,s2
	jal	ra,00000000230A3618
	c.sw	s1,0(a0)
	c.j	000000002307C6D8

;; at_dump_noend: 2307C77E
;;   Called from:
;;     23000E86 (in __usr_at_cmd_demo)
;;     23000E92 (in __usr_at_cmd_demo)
;;     23000E9A (in __usr_at_cmd_demo)
;;     23000ED4 (in __usr_at_cmd_demo)
;;     23000EE4 (in __usr_at_cmd_demo)
;;     23000EEC (in __usr_at_cmd_demo)
;;     2307CCF0 (in cipsta_ip_get)
;;     2307CD06 (in cipsta_ip_get)
;;     2307CD0E (in cipsta_ip_get)
;;     2307CD2A (in version)
;;     2307CD46 (in version)
;;     2307CD4E (in version)
;;     2307CD56 (in version)
;;     2307CD62 (in version)
;;     2307CD6A (in version)
;;     2307CD72 (in version)
;;     2307CD8E (in version)
;;     2307CD96 (in version)
;;     2307D180 (in ap_sta_get)
;;     2307D1B6 (in ap_sta_get)
;;     2307D1BE (in ap_sta_get)
;;     2307D1F0 (in ap_sta_get)
;;     2307D218 (in ap_sta_get)
;;     2307D220 (in ap_sta_get)
;;     2307D316 (in cwjap_info)
;;     2307D35E (in cwjap_info)
;;     2307D366 (in cwjap_info)
;;     2307D3A6 (in deep_sleep)
;;     2307D3B2 (in deep_sleep)
;;     2307D3BA (in deep_sleep)
;;     2307D3D6 (in deep_sleep)
;;     2307D3E2 (in deep_sleep)
;;     2307D3EA (in deep_sleep)
;;     2307D4EA (in scan)
;;     2307D4F6 (in scan)
;;     2307D4FE (in scan)
;;     2307D5B8 (in scan)
;;     2307D5CC (in scan)
;;     2307D5F8 (in scan)
;;     2307D610 (in scan)
;;     2307D628 (in scan)
;;     2307D646 (in scan)
;;     2307D64E (in scan)
;;     2307D66C (in reset)
;;     2307D678 (in reset)
;;     2307D680 (in reset)
;;     2307D6FC (in cb_httpc_headers_done_fn)
;;     2307D70A (in cb_httpc_headers_done_fn)
;;     2307DCCC (in domain_name_resolution)
;;     2307DCDA (in domain_name_resolution)
;;     2307DCE2 (in domain_name_resolution)
;;     2307DCFE (in domain_name_resolution)
;;     2307DD18 (in domain_name_resolution)
;;     2307DD20 (in domain_name_resolution)
;;     2307DDB8 (in base_station_info)
;;     2307DDDA (in base_station_info)
;;     2307DDE2 (in base_station_info)
;;     2307DEC6 (in setautoconnect_handler)
;;     2307DED4 (in setautoconnect_handler)
;;     2307DEDC (in setautoconnect_handler)
;;     2307DFA0 (in scan_handler_opt)
;;     2307DFB8 (in scan_handler_opt)
;;     2307DFC0 (in scan_handler_opt)
;;     2307E250 (in echo_on_handler)
;;     2307E25E (in echo_on_handler)
;;     2307E266 (in echo_on_handler)
;;     2307E36C (in at_help)
;;     2307E37A (in at_help)
;;     2307E382 (in at_help)
;;     2307E3BC (in at_help)
;;     2307E3D4 (in at_help)
;;     2307E3DC (in at_help)
;;     2307E7BA (in ble_sync_mode)
;;     2307E7D8 (in ble_sync_mode)
;;     2307E7E0 (in ble_sync_mode)
;;     2307EA94 (in join_ap_handler)
;;     2307EAA6 (in join_ap_handler)
;;     2307EAAE (in join_ap_handler)
;;     2307EACC (in at_response)
;;     2307EAD8 (in at_response)
;;     2307EAE6 (in at_response)
;;     2307EAF8 (in at_response)
;;     2307EB34 (in at_response)
;;     2307EB42 (in at_response)
;;     2307EB4C (in at_response)
;;     2307EC74 (in at_uart_config_get)
;;     2307EC8A (in at_uart_config_get)
;;     2307EC92 (in at_uart_config_get)
;;     2307EE08 (in at_wifi_mode_get)
;;     2307EE16 (in at_wifi_mode_get)
;;     2307EE1E (in at_wifi_mode_get)
;;     230802EE (in tcp_sent_callback)
;;     230802FC (in tcp_sent_callback)
;;     23080304 (in tcp_sent_callback)
;;     23080332 (in tcp_sent_callback)
;;     23080340 (in tcp_sent_callback)
;;     23080348 (in tcp_sent_callback)
;;     230803EA (in tcp_connected_callback)
;;     230803FA (in tcp_connected_callback)
;;     23080402 (in tcp_connected_callback)
;;     23080442 (in tcp_connected_callback)
;;     23080450 (in tcp_connected_callback)
;;     2308045A (in tcp_connected_callback)
;;     23080468 (in tcp_connected_callback)
;;     23080470 (in tcp_connected_callback)
;;     2308055E (in tcp_receive_callback)
;;     2308056C (in tcp_receive_callback)
;;     23080574 (in tcp_receive_callback)
;;     230805BC (in tcp_receive_callback)
;;     230805C8 (in tcp_receive_callback)
;;     230805D0 (in tcp_receive_callback)
;;     230805D8 (in tcp_receive_callback)
;;     230805EA (in tcp_receive_callback)
;;     230805F2 (in tcp_receive_callback)
;;     230806D8 (in udp_send_data)
;;     230806E6 (in udp_send_data)
;;     230806EE (in udp_send_data)
;;     23080742 (in udp_send_data)
;;     23080750 (in udp_send_data)
;;     23080758 (in udp_send_data)
;;     23080768 (in udp_send_data)
;;     230807B0 (in tcp_err_callback)
;;     230807BE (in tcp_err_callback)
;;     230807C6 (in tcp_err_callback)
;;     2308088C (in udp_receive_callback)
;;     23080898 (in udp_receive_callback)
;;     230808A0 (in udp_receive_callback)
;;     230808A8 (in udp_receive_callback)
;;     230808BA (in udp_receive_callback)
;;     230808C2 (in udp_receive_callback)
;;     230809DA (in tcp_accept_callback)
;;     230809E8 (in tcp_accept_callback)
;;     230809F0 (in tcp_accept_callback)
;;     23080AA2 (in tcp_send_data)
;;     23080AB0 (in tcp_send_data)
;;     23080AB8 (in tcp_send_data)
;;     23080B22 (in bl_cipstatus)
;;     23080B48 (in bl_cipstatus)
;;     23080B50 (in bl_cipstatus)
;;     23080BD8 (in bl_cipstart)
;;     23080BE6 (in bl_cipstart)
;;     23080BEE (in bl_cipstart)
;;     23080F84 (in bl_cipclose)
;;     23080F92 (in bl_cipclose)
;;     23080F9A (in bl_cipclose)
at_dump_noend proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000001C
	lui	s0,0004201C
	addi	s0,s0,-000005FC
	c.swsp	s3,00000094
	c.mv	s3,a0
	c.lw	s0,12(a0)
	c.swsp	a1,000000A0
	c.li	a1,FFFFFFFF
	c.swsp	a5,000000A8
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	a2,00000024
	c.swsp	a3,000000A4
	c.swsp	a4,00000028
	c.swsp	a6,0000002C
	c.swsp	a7,000000AC
	jal	ra,0000000023061958
	c.li	a5,00000001
	beq	a0,a5,000000002307C7CE

l2307C7B0:
	lui	a0,000230C4
	addi	a0,a0,+0000071C

l2307C7B8:
	jal	ra,0000000023082388
	c.li	s1,FFFFFFFF

l2307C7BE:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.addi16sp	00000060
	c.jr	ra

l2307C7CE:
	c.addi4spn	s1,00000044
	c.mv	a3,s1
	c.mv	a2,s3
	c.li	a1,00000000
	c.li	a0,00000000
	c.swsp	s1,0000008C
	jal	ra,0000000023081E12
	addi	a1,a0,+0000000A
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002306488A
	c.mv	s2,a0
	c.lwsp	a2,00000064
	c.bnez	a0,000000002307C7FA

l2307C7F0:
	lui	a0,000230C4
	addi	a0,a0,+000006CC
	c.j	000000002307C7B8

l2307C7FA:
	c.mv	a3,s1
	c.mv	a2,s3
	jal	ra,0000000023081E12
	lui	a5,00042028
	lw	a5,a5,-000006B8
	c.mv	a1,a0
	c.mv	a0,s2
	c.jalr	a5
	c.mv	s1,a0
	c.lw	s0,12(a0)
	jal	ra,00000000230614D4
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.j	000000002307C7BE

;; at_async_event: 2307C820
at_async_event proc
	c.addi16sp	FFFFFEF0
	sw	s1,sp,+00000104
	sw	s2,sp,+00000100
	lui	s1,0004201C
	lui	s2,000230C4
	sw	s0,sp,+00000108
	c.swsp	s3,000000FC
	c.swsp	s4,0000007C
	c.swsp	s5,000000F8
	c.swsp	s6,00000078
	c.swsp	s7,000000F4
	sw	ra,sp,+0000010C
	c.swsp	s8,00000074
	addi	s1,s1,-000005FC
	addi	s2,s2,+0000056C
	lui	s0,000230C7
	lui	s3,000230C4
	lui	s4,000230C4
	lui	s5,000230C4
	lui	s6,000230AA
	lui	s7,000230AA
	c.li	s8,00000008

l2307C868:
	c.lw	s1,16(a0)
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000005C
	jal	ra,0000000023061684
	c.lwsp	t4,000000E4
	c.addi	a5,FFFFFFFF
	bltu	s8,a5,000000002307C868

l2307C87A:
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	c.jr	a5
2307C882       13 05 04 90 EF F0 9F EF 37 45 0C 23 13 05   ........7E.#..
2307C890 05 5A EF F0 DF EE 61 A8 13 05 04 90 EF F0 3F EE .Z....a.......?.
2307C8A0 37 45 0C 23 13 05 85 5B ED B7 13 05 04 90 EF F0 7E.#...[........
2307C8B0 1F ED 37 45 0C 23 13 05 85 5C E1 BF 13 05 04 90 ..7E.#...\......
2307C8C0 EF F0 FF EB 37 45 0C 23 13 05 05 5E D9 B7 13 05 ....7E.#...^....
2307C8D0 04 90 EF F0 DF EA 37 45 0C 23 13 05 85 5F 55 BF ......7E.#..._U.
2307C8E0 13 06 10 02 81 45 A8 18 56 5C EF 70 E2 17 13 06 .....E..V\.p....
2307C8F0 10 04 81 45 68 09 EF 70 22 17 AC 18 13 05 4B 9F ...Eh..p".....K.
2307C900 EF F0 3F D3 6C 09 13 85 0B A0 EF F0 9F D2 91 47 ..?.l..........G
2307C910 13 05 04 90 63 12 FC 02 EF F0 7F E6 86 56 37 45 ....c........V7E
2307C920 0C 23 70 09 AC 18 13 05 05 61 EF F0 5F E5 13 05 .#p......a.._...
2307C930 04 90 EF F0 DF E4 05 BF EF F0 7F E4 37 45 0C 23 ............7E.#
2307C940 70 09 AC 18 13 05 85 62 EF F0 7F E3 CD B7 56 57 p......b......VW
2307C950 99 47 E3 1A F7 F0 13 05 04 90 EF F0 5F E2 03 48 .G.........._..H
2307C960 01 06 83 47 11 06 03 47 21 06 83 46 31 06 03 46 ...G...G!..F1..F
2307C970 41 06 83 45 51 06 13 85 CA 63 EF F0 5F E0 45 BF A..EQ....c.._.E.
2307C980 13 05 04 90 EF F0 BF DF 13 05 0A 67 19 B7 50 08 ...........g..P.
2307C990 0C 08 68 00 02 C6 02 C8 02 CA 02 CC 02 CE EF B0 ..h.............
2307C9A0 CA 96 68 00 EF 20 3F BE AA 85 08 10 EF 70 42 7C ..h.. ?......pB|
2307C9B0 08 08 EF 20 5F BD AA 85 48 18 EF 70 62 7B 48 08 ... _...H..pb{H.
2307C9C0 EF 20 7F BC AA 85 A8 00 EF 70 82 7A 6C 08 28 08 . .......p.zl.(.
2307C9D0 EF B0 2A 95 28 08 EF 20 1F BB AA 85 A8 18 EF 70 ..*.(.. .......p
2307C9E0 22 79 68 08 EF 20 3F BA AA 85 68 09 EF 70 42 78 "yh.. ?...h..pBx
2307C9F0 13 05 04 90 EF F0 BF D8 7C 09 B8 18 B4 00 50 18 ........|.....P.
2307CA00 0C 10 13 85 49 68 EF F0 9F D7 15 B7             ....Ih......   

;; at_cmd_init: 2307CA0C
;;   Called from:
;;     2307CBA4 (in at_server_init)
at_cmd_init proc
	lui	a2,0002307C
	lui	a0,0004201C
	c.addi	sp,FFFFFFE0
	addi	a2,a2,+0000031C
	addi	a1,zero,+00000400
	addi	a0,a0,-000005E8
	c.swsp	ra,0000008C
	jal	ra,000000002307F842
	lui	a5,0002307E
	addi	a5,a5,-000005A6
	c.swsp	a5,00000004
	lui	a5,0002307C
	addi	a5,a5,+000002EE
	c.addi4spn	a0,00000008
	c.swsp	a5,00000084
	jal	ra,000000002307E408
	jal	ra,000000002307DA0C
	c.beqz	a0,000000002307CA58

l2307CA48:
	lui	a0,000230C4
	addi	a0,a0,+000006B4
	jal	ra,0000000023082388
	jal	ra,00000000230A3594

l2307CA58:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; at_server_init: 2307CA5E
;;   Called from:
;;     23000B4C (in aos_loop_proc)
at_server_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a5,00000008
	lui	s0,0004201C
	sb	a5,sp,+00000004
	addi	a2,zero,+00000414
	c.li	a5,00000001
	c.li	a1,00000000
	addi	a0,s0,-000005FC
	sb	a5,sp,+00000005
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	zero,00000084
	sb	zero,sp,+00000006
	sb	zero,sp,+00000007
	jal	ra,00000000230A3A68
	addi	s1,s0,-000005FC
	jal	ra,000000002307C410
	c.lw	s1,8(a5)
	bge	a5,zero,000000002307CABA

l2307CA9E:
	lui	a0,000230C4
	addi	a0,a0,+0000078C
	jal	ra,0000000023082388

l2307CAAA:
	c.li	s1,FFFFFFFF

l2307CAAC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2307CABA:
	lui	a0,000230C4
	c.addi4spn	a1,0000000C
	addi	a0,a0,+000007A4
	jal	ra,000000002307C632
	c.lwsp	a2,000000C4
	lui	a0,000230AA
	lui	a5,00042028
	addi	a0,a0,-00000624
	sw	a4,a5,+00000F44
	jal	ra,00000000230603F2
	addi	s0,s0,-000005FC
	c.li	a5,00000000
	c.beqz	a0,000000002307CAEC

l2307CAE6:
	jal	ra,00000000230A3618
	c.mv	a5,a0

l2307CAEC:
	lui	a0,000230C4
	addi	a0,a0,+00000700
	c.sw	s0,0(a5)
	jal	ra,00000000230603F2
	c.beqz	a0,000000002307CB7A

l2307CAFC:
	jal	ra,00000000230A3618

l2307CB00:
	c.sw	s0,4(a0)
	lui	a0,000230C4
	c.addi4spn	a1,00000004
	addi	a0,a0,+000006E0
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,sp,+00000005
	addi	a0,a0,+000006E8
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,sp,+00000006
	addi	a0,a0,+000006F0
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,sp,+00000007
	addi	a0,a0,+000006F8
	jal	ra,000000002307C632
	lbu	a4,sp,+00000007
	lbu	a3,sp,+00000006
	lbu	a2,sp,+00000005
	lbu	a1,sp,+00000004
	c.lw	s0,4(a0)
	jal	ra,000000002307C360
	c.mv	s1,a0
	bne	a0,zero,000000002307CC26

l2307CB5C:
	c.li	a0,00000004
	jal	ra,000000002306151C
	c.sw	s0,12(a0)
	c.bnez	a0,000000002307CB82

l2307CB66:
	lui	a0,000230C4
	addi	a0,a0,+000007B0
	jal	ra,0000000023082388

l2307CB72:
	c.lw	s0,8(a0)
	jal	ra,000000002307AD54
	c.j	000000002307CAAA

l2307CB7A:
	c.lui	a0,0001C000
	addi	a0,a0,+00000200
	c.j	000000002307CB00

l2307CB82:
	c.li	a2,00000000
	c.li	a1,0000001C
	c.li	a0,00000004
	jal	ra,000000002306128C
	c.sw	s0,16(a0)
	c.bnez	a0,000000002307CBA4

l2307CB90:
	lui	a0,000230C4
	addi	a0,a0,+000007D0
	jal	ra,0000000023082388

l2307CB9C:
	c.lw	s0,12(a0)
	jal	ra,00000000230619CC
	c.j	000000002307CB72

l2307CBA4:
	jal	ra,000000002307CA0C
	lui	a1,000230C4
	lui	a0,0002307D
	c.addi4spn	a5,00000008
	c.li	a4,00000003
	c.li	a3,00000000
	addi	a2,zero,+00000100
	addi	a1,a1,+000007F0
	addi	a0,a0,-000007E0
	jal	ra,00000000230626A4
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a0,a5,000000002307CBE2

l2307CBCE:
	lui	a0,000230C4
	addi	a0,a0,+000007FC
	jal	ra,0000000023082388

l2307CBDA:
	c.lw	s0,16(a0)
	jal	ra,00000000230619CC
	c.j	000000002307CB9C

l2307CBE2:
	lui	a1,000230C5
	lui	a0,0002307C
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,zero,+00000600
	addi	a1,a1,-000007E0
	addi	a0,a0,+0000034A
	jal	ra,00000000230626A4
	beq	a0,s2,000000002307CC18

l2307CC04:
	lui	a0,000230C5
	addi	a0,a0,-000007D4
	jal	ra,0000000023082388
	c.lwsp	s0,00000044
	jal	ra,0000000023062720
	c.j	000000002307CBDA

l2307CC18:
	lui	a0,000230C5
	addi	a0,a0,-000007B4
	jal	ra,0000000023082388
	c.j	000000002307CAAC

l2307CC26:
	c.li	s1,00000004
	c.j	000000002307CAAC

;; at_server_notify_with_ctx: 2307CC2A
;;   Called from:
;;     23001002 (in blsync_disconnected)
;;     23001016 (in blsync_connected)
;;     2307CC7C (in at_server_notify)
at_server_notify_with_ctx proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a2
	c.li	a1,00000000
	c.li	a2,0000001C
	c.addi4spn	a0,00000004
	c.swsp	ra,00000094
	jal	ra,00000000230A3A68
	c.li	a5,00000014
	c.li	a0,FFFFFFFF
	bltu	a5,s0,000000002307CC6C

l2307CC4C:
	c.mv	a2,s0
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	c.swsp	s2,00000080
	c.swsp	s0,0000008C
	jal	ra,00000000230A382C
	lui	a5,0004201C
	lw	a0,a5,-000005EC
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,00000004
	jal	ra,0000000023061344

l2307CC6C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; at_server_notify: 2307CC78
at_server_notify proc
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002307CC2A

;; cipsta_ip_get: 2307CC80
cipsta_ip_get proc
	c.addi16sp	FFFFFF70
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	jal	ra,0000000023027B0A
	c.addi4spn	a0,00000008
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A4170
	c.addi4spn	a0,0000000C
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000030
	jal	ra,00000000230A4170
	c.addi4spn	a0,00000010
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000044
	jal	ra,00000000230A4170
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000014
	jal	ra,0000000023027B22
	c.addi4spn	a0,00000014
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000058
	jal	ra,00000000230A4170
	c.addi4spn	a0,00000018
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,0000006C
	jal	ra,00000000230A4170
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C4
	c.addi4spn	a5,0000006C
	c.addi4spn	a4,00000058
	c.addi4spn	a3,00000044
	c.addi4spn	a2,00000030
	c.addi4spn	a1,0000001C
	addi	a0,a0,+00000684
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.li	a0,00000000
	c.addi16sp	00000090
	c.jr	ra

;; version: 2307CD1C
version proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C7
	addi	a0,s0,-00000700
	c.swsp	ra,00000084
	jal	ra,000000002307C77E
	lui	a2,000230AA
	lui	a1,000230AA
	lui	a0,000230C5
	addi	a2,a2,-000007B8
	addi	a1,a1,-000007E0
	addi	a0,a0,-00000448
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	addi	a0,a0,-00000438
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a2,000230C5
	lui	a1,000230C5
	lui	a0,000230C5
	addi	a2,a2,-00000400
	addi	a1,a1,-000003F4
	addi	a0,a0,-000003E8
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cipsta_ip: 2307CDA4
cipsta_ip proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000001C
	c.addi4spn	a1,00000010
	c.mv	s0,a0
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,0000000023027B0A
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000014
	jal	ra,0000000023027B22
	lbu	a5,s0,+0000000B
	lbu	a4,s0,+0000000A
	lbu	a3,s0,+00000009
	lbu	a2,s0,+00000008
	lui	s2,000230C5
	addi	a1,s2,-000005B4
	c.addi4spn	a0,0000001C
	jal	ra,00000000230823B8
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F4D2
	c.swsp	a0,00000004
	lui	a0,000230B5
	addi	a0,a0,-000006D4
	jal	ra,000000002308234C
	c.addi4spn	a0,0000001C
	jal	ra,000000002308234C
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002308234C
	c.lw	s0,16(a5)
	c.beqz	a5,000000002307CE5A

l2307CE1E:
	lbu	a5,s0,+00000013
	lbu	a4,s0,+00000012
	lbu	a3,s0,+00000011
	lbu	a2,s0,+00000010
	addi	a1,s2,-000005B4
	c.addi4spn	a0,0000001C
	jal	ra,00000000230823B8
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F4D2
	c.swsp	a0,00000084
	lui	a0,000230B5
	addi	a0,a0,-000006CC
	jal	ra,000000002308234C
	c.addi4spn	a0,0000001C
	jal	ra,000000002308234C
	addi	a0,s1,-00000700
	jal	ra,000000002308234C

l2307CE5A:
	c.lw	s0,12(a5)
	c.beqz	a5,000000002307CE9A

l2307CE5E:
	lbu	a5,s0,+0000000F
	lbu	a4,s0,+0000000E
	lbu	a3,s0,+0000000D
	lbu	a2,s0,+0000000C
	addi	a1,s2,-000005B4
	c.addi4spn	a0,0000001C
	jal	ra,00000000230823B8
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F4D2
	c.swsp	a0,00000008
	lui	a0,000230B5
	addi	a0,a0,-000006C4
	jal	ra,000000002308234C
	c.addi4spn	a0,0000001C
	jal	ra,000000002308234C
	addi	a0,s1,-00000700
	jal	ra,000000002308234C

l2307CE9A:
	c.lw	s0,20(a5)
	c.beqz	a5,000000002307CEDA

l2307CE9E:
	lbu	a5,s0,+00000017
	lbu	a4,s0,+00000016
	lbu	a3,s0,+00000015
	lbu	a2,s0,+00000014
	addi	a1,s2,-000005B4
	c.addi4spn	a0,0000001C
	jal	ra,00000000230823B8
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F4D2
	c.swsp	a0,00000088
	lui	a0,000230C5
	addi	a0,a0,-000005A8
	jal	ra,000000002308234C
	c.addi4spn	a0,0000001C
	jal	ra,000000002308234C
	addi	a0,s1,-00000700
	jal	ra,000000002308234C

l2307CEDA:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002307CF1A

l2307CEDE:
	lbu	a5,s0,+0000001B
	lbu	a4,s0,+0000001A
	lbu	a3,s0,+00000019
	lbu	a2,s0,+00000018
	addi	a1,s2,-000005B4
	c.addi4spn	a0,0000001C
	jal	ra,00000000230823B8
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F4D2
	c.swsp	a0,0000000C
	lui	a0,000230C5
	addi	a0,a0,-0000059C
	jal	ra,000000002308234C
	c.addi4spn	a0,0000001C
	jal	ra,000000002308234C
	addi	a0,s1,-00000700
	jal	ra,000000002308234C

l2307CF1A:
	c.lwsp	s8,000000C4
	c.lwsp	s4,000000A4
	c.lwsp	a6,00000084
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	jal	ra,0000000023027B4C
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; http_url_req: 2307CF36
http_url_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004200F
	lw	a5,s2,+000006D0
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.mv	s0,a0
	c.mv	s4,a1
	addi	s2,s2,+000006D0
	c.bnez	a5,000000002307CF68

l2307CF5A:
	c.li	a2,00000003
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002306128C
	sw	a0,s2,+00000000

l2307CF68:
	addi	a0,zero,+00000080
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.li	a0,00000002
	beq	s1,zero,000000002307D064

l2307CF78:
	lui	s5,0004201C
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s5,-00000140
	jal	ra,00000000230A3A68
	lbu	a5,s0,+00000088
	addi	s3,s5,-00000140
	c.addi	s0,00000008
	sb	a5,s3,+00000007
	lbu	a5,s0,+00000081
	lui	s6,000230C7
	addi	a1,s6,-00000630
	sb	a5,s3,+0000000C
	lw	a5,s0,+00000084
	c.mv	a0,s0
	sb	zero,s3,+00000006
	sw	a5,s3,+00000008
	lui	a5,0002307D
	addi	a5,a5,+0000011C
	sw	a5,s3,+00000014
	lui	a5,0002307D
	addi	a5,a5,+000006C6
	sw	a5,s3,+00000018
	jal	ra,00000000230A4978
	c.mv	s3,a0
	c.bnez	a0,000000002307CFD8

l2307CFD4:
	addi	s3,s6,-00000630

l2307CFD8:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230A4170
	sub	s0,s3,s0
	c.add	s0,s1
	lui	a1,000230B9
	sb	zero,s0,+00000000
	addi	a1,a1,-000002E4
	c.mv	a0,s1
	jal	ra,00000000230A4978
	addi	s0,zero,+00000050
	c.beqz	a0,000000002307D00A

l2307CFFE:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	jal	ra,00000000230A3618
	c.mv	s0,a0

l2307D00A:
	c.mv	a0,s1
	jal	ra,000000002306F4D2
	slli	a1,s0,00000010
	lui	a6,0004200F
	c.swsp	a0,00000084
	c.li	a5,FFFFFFFF
	c.srli	a1,00000010
	lui	a4,0002307D
	addi	a6,a6,+000006D8
	beq	a0,a5,000000002307D078

l2307D02A:
	c.mv	a5,s4
	addi	a4,a4,+00000096
	addi	a3,s5,-00000140
	c.mv	a2,s3
	c.addi4spn	a0,0000000C
	jal	ra,00000000230861F2

l2307D03C:
	lw	a0,s2,+00000000
	c.lui	a1,00002000
	addi	a1,a1,+00000710
	jal	ra,00000000230617D0
	c.li	a5,00000001
	beq	a0,a5,000000002307D08C

l2307D050:
	lw	a0,s2,+00000000
	jal	ra,00000000230619CC
	c.mv	a0,s1
	sw	zero,s2,+00000000
	jal	ra,0000000023064972
	c.li	a0,00000013

l2307D064:
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

l2307D078:
	c.mv	a5,s4
	addi	a4,a4,+00000096
	addi	a3,s5,-00000140
	c.mv	a2,s3
	c.mv	a0,s1
	jal	ra,000000002308626C
	c.j	000000002307D03C

l2307D08C:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.li	a0,00000000
	c.j	000000002307D064

;; cb_altcp_recv_fn: 2307D096
cb_altcp_recv_fn proc
	c.addi	sp,FFFFFFF0
	lui	a4,0004200F
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	a4,a4,+000006CC
	c.lw	a4,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	addi	a3,a5,+00000001
	c.sw	a4,0(a3)
	andi	a5,a5,+0000003F
	c.mv	s0,a2
	c.bnez	a5,000000002307D0C8

l2307D0BC:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,000000002308234C

l2307D0C8:
	lhu	a1,s0,+00000008
	c.mv	a0,s2
	jal	ra,00000000230863F2
	c.beqz	s1,000000002307D0E4

l2307D0D4:
	c.lw	s1,8(a5)
	c.lw	s0,4(a0)
	c.bnez	a5,000000002307D0F8

l2307D0DA:
	lhu	a1,s0,+00000008
	c.beqz	a1,000000002307D0F8

l2307D0E0:
	jal	ra,000000002307C490

l2307D0E4:
	c.mv	a0,s0
	jal	ra,00000000230701A4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307D0F8:
	jal	ra,00000000230A4220
	c.lw	s1,12(a5)
	bltu	a5,a0,000000002307D10E

l2307D102:
	c.lw	s1,8(a0)
	c.beqz	a0,000000002307D0E4

l2307D106:
	c.lw	s0,4(a1)
	jal	ra,00000000230A4170
	c.j	000000002307D0E4

l2307D10E:
	lui	a0,000230C5
	addi	a0,a0,-00000648
	jal	ra,0000000023082388
	c.j	000000002307D0E4

;; cb_httpc_result: 2307D11C
cb_httpc_result proc
	lui	a0,000230C5
	c.addi	sp,FFFFFFF0
	c.mv	a1,a4
	addi	a0,a0,-000005F0
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a5,0004200F
	lw	a0,a5,+000006D0
	c.beqz	a0,000000002307D146

l2307D138:
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061344

l2307D146:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ap_sta_get: 2307D14C
ap_sta_get proc
	c.addi16sp	FFFFFFB0
	addi	a0,sp,+00000013
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	sb	zero,sp,+00000013
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,0000000023027F06
	c.addi4spn	a2,0000001C
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000014
	jal	ra,0000000023027EBE
	c.addi4spn	a0,00000020
	jal	ra,0000000023027E5E
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.addi4spn	a0,00000014
	jal	ra,000000002306F586
	lbu	a5,sp,+00000025
	lbu	a7,sp,+00000024
	lbu	a6,sp,+00000023
	c.swsp	a5,00000000
	lbu	a4,sp,+00000021
	lbu	a5,sp,+00000022
	lbu	a3,sp,+00000020
	c.mv	a2,a0
	lui	a1,0004201C
	lui	a0,000230C5
	addi	a1,a1,-00000184
	addi	a0,a0,-0000077C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.li	s0,00000000
	lui	s2,000230C5

l2307D1C8:
	lbu	a5,sp,+00000013
	bltu	s0,a5,000000002307D1DE

l2307D1D0:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l2307D1DE:
	c.mv	a1,s0
	c.addi4spn	a0,00000028
	jal	ra,0000000023027F16
	lbu	a5,sp,+00000029
	c.beqz	a5,000000002307D224

l2307D1EC:
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002F
	lbu	a6,sp,+0000002E
	c.swsp	a5,00000000
	lbu	a4,sp,+0000002C
	lbu	a5,sp,+0000002D
	lbu	a3,sp,+0000002B
	lbu	a2,sp,+0000002A
	lbu	a1,sp,+00000028
	addi	a0,s2,-0000074C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E

l2307D224:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	000000002307D1C8

;; cwmode_cur_get: 2307D22C
cwmode_cur_get proc
	addi	a1,a0,+00000008
	lui	a0,000230AA
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000624
	c.swsp	ra,00000084
	jal	ra,000000002307C632
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; uart_get: 2307D248
uart_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a1,a0,+0000000C
	c.mv	s0,a0
	lui	a0,000230C4
	addi	a0,a0,+00000700
	c.swsp	ra,00000084
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,s0,+00000010
	addi	a0,a0,+000006E0
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,s0,+00000018
	addi	a0,a0,+000006E8
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,s0,+00000014
	addi	a0,a0,+000006F0
	jal	ra,000000002307C632
	lui	a0,000230C4
	addi	a1,s0,+0000001C
	addi	a0,a0,+000006F8
	jal	ra,000000002307C632
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cwqap: 2307D2AA
cwqap proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027B98
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.li	a0,00000000
	jal	ra,0000000023027AFA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cwjap_info: 2307D2C8
cwjap_info proc
	c.addi16sp	FFFFFF00
	addi	a2,zero,+000000AE
	c.li	a1,00000000
	c.addi4spn	a0,00000040
	c.swsp	ra,000000FC
	c.swsp	s0,0000007C
	jal	ra,00000000230A3A68
	c.addi4spn	a0,00000030
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	jal	ra,0000000023027FC2
	c.lwsp	a6,000001F4
	c.li	a4,00000001
	c.addi	a5,FFFFFFFD
	bltu	a4,a5,000000002307D300

l2307D2F0:
	c.addi4spn	a0,00000040
	jal	ra,0000000023027BF8
	c.addi4spn	a2,0000003C
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000034
	jal	ra,0000000023027B0A

l2307D300:
	c.lwsp	a6,00000174
	lui	a0,000230C5
	addi	a0,a0,-0000057C
	jal	ra,0000000023082388
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lbu	a2,sp,+000000E4
	lbu	a3,sp,+000000E5
	lbu	a4,sp,+000000E6
	lbu	a5,sp,+000000E7
	lbu	a6,sp,+000000E8
	lbu	a7,sp,+000000E9
	c.addi4spn	a0,00000034
	c.swsp	a2,00000094
	c.swsp	a3,00000014
	c.swsp	a4,00000090
	c.swsp	a5,00000010
	c.swsp	a6,0000008C
	c.swsp	a7,0000000C
	jal	ra,000000002306F586
	c.lwsp	s8,00000028
	c.lwsp	t3,00000008
	c.lwsp	zero,000001F4
	c.lwsp	tp,000001D4
	c.lwsp	s0,000001B4
	c.lwsp	a2,00000194
	c.swsp	a0,00000000
	lui	a0,000230C5
	addi	a1,sp,+00000043
	addi	a0,a0,-00000554
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	t6,00000130
	c.lwsp	s11,00000114
	c.li	a0,00000000
	c.addi16sp	00000100
	c.jr	ra

;; deep_sleep: 2307D374
deep_sleep proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lbu	a5,a0,+0000000C
	c.li	a4,00000001
	c.lw	a0,8(s1)
	sb	a5,sp,+0000000F
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	c.li	a0,00000002
	bltu	a4,a5,000000002307D3F0

l2307D394:
	c.li	a1,00000001
	addi	a0,sp,+0000000F
	jal	ra,0000000023085916
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230B3
	addi	a0,a0,+00000304
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	addi	a0,zero,+00000064
	jal	ra,0000000023062CC4
	addi	a0,zero,+000003E8
	add	a0,s1,a0
	jal	ra,0000000023085AA8
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	addi	a0,a0,-00000528
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	a0,0000001B

l2307D3F0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; restory: 2307D3FA
restory proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002306068C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; scan: 2307D40A
scan proc
	c.addi16sp	FFFFFFA0
	lui	a0,000230C5
	addi	a1,sp,+00000017
	addi	a0,a0,-00000518
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
	c.swsp	zero,0000008C
	sb	zero,sp,+00000017
	jal	ra,000000002307C632
	c.beqz	a0,000000002307D444

l2307D43E:
	c.li	a5,FFFFFFFF
	sb	a5,sp,+00000017

l2307D444:
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	jal	ra,000000002302812A
	c.mv	s4,a0
	c.beqz	a0,000000002307D47E

l2307D450:
	c.mv	a1,a0
	lui	a0,000230C5
	addi	a0,a0,-0000050C
	jal	ra,0000000023082388

l2307D45E:
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
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l2307D47E:
	c.lwsp	s8,00000064
	lui	a0,000230C5
	addi	a0,a0,-000004F0
	jal	ra,0000000023082388
	c.lwsp	s8,000000E8
	c.lwsp	t3,00000004
	lbu	s2,sp,+00000017
	slli	a0,s7,00000002
	jal	ra,000000002307BEFC
	c.mv	s3,a0
	c.li	a5,00000000
	c.bnez	a0,000000002307D4C2

l2307D4A2:
	lui	a0,000230C4
	addi	a0,a0,+000006CC
	jal	ra,0000000023082388

l2307D4AE:
	c.lwsp	t3,00000044
	c.beqz	a0,000000002307D45E

l2307D4B2:
	jal	ra,0000000023064972
	c.j	000000002307D45E

l2307D4B8:
	slli	a4,a5,00000002
	c.add	a4,s3
	c.sw	a4,0(a5)
	c.addi	a5,00000001

l2307D4C2:
	blt	a5,s7,000000002307D4B8

l2307D4C6:
	srli	a5,s2,00000005
	c.andi	a5,00000001
	c.beqz	a5,000000002307D4DE

l2307D4CE:
	addi	a4,s3,+00000004
	c.li	a3,00000001
	addi	a0,zero,+00000034
	c.li	t3,FFFFFFFF

l2307D4DA:
	blt	a3,s7,000000002307D54C

l2307D4DE:
	jal	ra,000000002307C432
	lui	s6,000230C7
	addi	a0,s6,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	addi	a0,a0,-000004D4
	jal	ra,000000002307C77E
	addi	a0,s6,-00000700
	jal	ra,000000002307C77E
	srli	a5,s2,00000001
	c.andi	a5,00000001
	c.swsp	a5,00000000
	srli	a5,s2,00000003
	c.andi	a5,00000001
	c.swsp	a5,00000080
	srli	a5,s2,00000004
	c.andi	a5,00000001
	c.swsp	a5,00000004
	srli	a5,s2,00000002
	c.andi	a5,00000001
	c.swsp	a5,00000084
	c.mv	s1,s3
	addi	s5,zero,+00000034
	lui	s10,000230C5
	andi	s2,s2,+00000001
	lui	s8,000230C5
	lui	s9,000230C5
	lui	s11,000230C5

l2307D53C:
	blt	s4,s7,000000002307D5A4

l2307D540:
	jal	ra,000000002307C462
	c.mv	a0,s3
	jal	ra,000000002307BEF4
	c.j	000000002307D4AE

l2307D54C:
	lw	a7,a4,+00000000
	lw	a5,a4,-00000004
	add	a2,a7,a0
	add	a5,a5,a0
	c.add	a2,s0
	lb	a1,a2,+00000030
	c.add	a5,s0
	lb	a5,a5,+00000030
	bge	a5,a1,000000002307D59E

l2307D56C:
	addi	a5,a3,-00000001
	c.mv	a1,a4

l2307D572:
	lw	t1,a1,-00000004
	lb	t4,a2,+00000030
	add	a6,t1,a0
	c.add	a6,s0
	lb	a6,a6,+00000030
	bge	a6,t4,000000002307D594

l2307D588:
	sw	t1,a1,+00000000
	c.addi	a5,FFFFFFFF
	c.addi	a1,FFFFFFFC
	bne	a5,t3,000000002307D572

l2307D594:
	c.addi	a5,00000001
	c.slli	a5,02
	c.add	a5,s3
	sw	a7,a5,+00000000

l2307D59E:
	c.addi	a3,00000001
	c.addi	a4,00000004
	c.j	000000002307D4DA

l2307D5A4:
	c.lw	s1,0(a0)
	add	a0,s5,a0
	c.add	a0,s0
	jal	ra,00000000230A4220
	c.beqz	a0,000000002307D658

l2307D5B2:
	c.mv	a1,s4
	addi	a0,s10,-000004CC
	jal	ra,000000002307C77E
	c.lwsp	zero,000000E4
	c.beqz	a5,000000002307D5D0

l2307D5C0:
	c.lw	s1,0(a1)
	addi	a0,s8,-000004C4
	add	a1,s5,a1
	c.add	a1,s0
	jal	ra,000000002307C77E

l2307D5D0:
	c.lwsp	tp,000000E4
	c.beqz	a5,000000002307D5FC

l2307D5D4:
	c.lw	s1,0(a1)
	addi	a0,s11,-000004C0
	add	a1,s5,a1
	c.add	a1,s0
	lbu	a6,a1,+0000002D
	lbu	a5,a1,+0000002C
	lbu	a4,a1,+0000002B
	lbu	a3,a1,+0000002A
	lbu	a2,a1,+00000029
	lbu	a1,a1,+00000028
	jal	ra,000000002307C77E

l2307D5FC:
	c.lwsp	s0,000000E4
	c.beqz	a5,000000002307D614

l2307D600:
	c.lw	s1,0(a5)
	addi	a0,s9,-000004A0
	add	a5,a5,s5
	c.add	a5,s0
	lbu	a1,a5,+0000002E
	jal	ra,000000002307C77E

l2307D614:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002307D62C

l2307D618:
	c.lw	s1,0(a5)
	addi	a0,s9,-000004A0
	add	a5,a5,s5
	c.add	a5,s0
	lb	a1,a5,+00000030
	jal	ra,000000002307C77E

l2307D62C:
	beq	s2,zero,000000002307D64A

l2307D630:
	c.lw	s1,0(a5)
	add	a5,a5,s5
	c.add	a5,s0
	lbu	a0,a5,+0000002F
	jal	ra,000000002302571E
	c.mv	a1,a0
	addi	a0,s8,-000004C4
	jal	ra,000000002307C77E

l2307D64A:
	addi	a0,s6,-00000700
	jal	ra,000000002307C77E
	c.li	a0,00000005
	jal	ra,0000000023062CC4

l2307D658:
	c.addi	s4,00000001
	c.addi	s1,00000004
	c.j	000000002307D53C

;; reset: 2307D65E
reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C7
	addi	a0,s0,-00000700
	c.swsp	ra,00000084
	jal	ra,000000002307C77E
	lui	a0,000230B3
	addi	a0,a0,+00000304
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	a0,00000002
	jal	ra,0000000023062CC4
	jal	ra,0000000023067AB0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; ble_sync: 2307D698
ble_sync proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,8(a5)
	c.bnez	a5,000000002307D6B2

l2307D6A0:
	c.li	a2,00000000
	c.li	a1,00000002

l2307D6A4:
	c.li	a0,00000005
	jal	ra,000000002307C270

l2307D6AA:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307D6B2:
	c.li	a4,00000001
	c.li	a2,00000000
	beq	a5,a4,000000002307D6C2

l2307D6BA:
	c.li	a4,00000002
	bne	a5,a4,000000002307D6AA

l2307D6C0:
	c.li	a2,00000001

l2307D6C2:
	c.li	a1,00000001
	c.j	000000002307D6A4

;; cb_httpc_headers_done_fn: 2307D6C6
cb_httpc_headers_done_fn proc
	c.addi	sp,FFFFFFF0
	lui	a0,000230C5
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a1,a3
	c.mv	a2,a4
	addi	a0,a0,-00000628
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a4
	jal	ra,0000000023082388
	lw	a0,s2,+00000004
	jal	ra,0000000023082388
	c.beqz	s1,000000002307D70E

l2307D6F0:
	c.lw	s1,8(a5)
	c.bnez	a5,000000002307D70E

l2307D6F4:
	lui	a0,000230C7
	addi	a0,a0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	c.mv	a1,s0
	addi	a0,a0,-000005FC
	jal	ra,000000002307C77E

l2307D70E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; __wifimode_set: 2307D71C
;;   Called from:
;;     2307D7D4 (in set_apcfg)
;;     2307D85C (in cwjap_cur)
;;     2307D976 (in cwmode_cur)
__wifimode_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,0004201C
	addi	a2,zero,+00000041
	c.li	a1,00000000
	addi	a0,a0,-00000184
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.bnez	s0,000000002307D75A

l2307D738:
	jal	ra,0000000023027B98
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.li	a0,00000000
	jal	ra,0000000023027AFA
	c.li	a0,00000000
	jal	ra,0000000023027EF6

l2307D750:
	c.li	a0,00000000

l2307D752:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2307D75A:
	c.li	a5,00000001
	bne	s0,a5,000000002307D77A

l2307D760:
	c.li	a0,00000000
	jal	ra,0000000023027AFA
	c.li	a0,00000000
	jal	ra,0000000023027EF6
	jal	ra,00000000230279FC

l2307D770:
	lui	a5,0004200F
	sw	a0,a5,+000006D4
	c.j	000000002307D750

l2307D77A:
	c.li	a5,00000002
	bne	s0,a5,000000002307D79E

l2307D780:
	jal	ra,0000000023027B98
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.li	a0,00000000
	jal	ra,0000000023027AFA
	c.li	a0,00000000
	jal	ra,0000000023027EF6
	jal	ra,0000000023027D88
	c.j	000000002307D770

l2307D79E:
	lui	a0,000230C5
	addi	a0,a0,-00000798
	jal	ra,0000000023082388
	c.li	a0,00000003
	c.j	000000002307D752

;; set_apcfg: 2307D7AE
set_apcfg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,000230AA
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000624
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002307C632
	c.lwsp	a2,00000044
	c.li	a5,00000001
	addi	a4,a0,-00000002
	bltu	a5,a4,000000002307D82E

l2307D7D4:
	jal	ra,000000002307D71C
	addi	s1,s0,+00000048
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	s2,a0
	c.addi	s0,00000008
	lui	a0,000230C5
	c.mv	a2,s1
	c.mv	a1,s0
	addi	a0,a0,-00000498
	jal	ra,0000000023082388
	lui	a5,0004200F
	addi	a5,a5,+000006D4
	c.li	a4,00000001
	c.mv	a3,s1
	blt	zero,s2,000000002307D808

l2307D806:
	c.li	a3,00000000

l2307D808:
	c.lw	a5,0(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,0000000023027EDC
	lui	a0,0004201C
	c.mv	a1,s0
	addi	a0,a0,-00000184
	jal	ra,00000000230A4170
	c.li	a0,00000000

l2307D822:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2307D82E:
	c.li	a0,00000002
	c.j	000000002307D822

;; cwjap_cur: 2307D832
cwjap_cur proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	lui	a0,000230AA
	c.addi4spn	a1,00000008
	addi	a0,a0,-00000624
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	zero,00000084
	jal	ra,000000002307C632
	c.lwsp	s0,00000044
	c.li	a5,00000001
	andi	a4,a0,-00000003
	bne	a4,a5,000000002307D922

l2307D85C:
	jal	ra,000000002307D71C
	lui	s3,0004201C
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,s3,-000001A4
	jal	ra,00000000230A3A68
	lui	s2,0004201C
	addi	a2,zero,+00000041
	c.li	a1,00000000
	addi	a0,s2,-000001E8
	jal	ra,00000000230A3A68
	addi	s1,s0,+00000008
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,s3,-000001A4
	jal	ra,00000000230A382C
	addi	s0,s0,+00000029
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s0
	addi	a0,s2,-000001E8
	jal	ra,00000000230A382C
	c.bnez	s1,000000002307D8CE

l2307D8B2:
	lui	a0,000230C5
	addi	a0,a0,-00000590
	jal	ra,0000000023082388
	c.li	a0,00000003

l2307D8C0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2307D8CE:
	lui	a0,0004200F
	lw	a0,a0,+000006D4
	c.li	a5,00000000
	c.li	a6,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a1,s1
	jal	ra,0000000023027D50
	lui	a0,000230AA
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000618
	jal	ra,000000002307C632
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002307D91C

l2307D8F8:
	jal	ra,0000000023027BD8

l2307D8FC:
	lui	a0,000230AA
	c.mv	a1,s1
	addi	a0,a0,-0000060C
	jal	ra,000000002307C4E8
	lui	a0,000230AA
	c.mv	a1,s0
	addi	a0,a0,-00000600
	jal	ra,000000002307C4E8
	c.li	a0,00000000
	c.j	000000002307D8C0

l2307D91C:
	jal	ra,0000000023027BE8
	c.j	000000002307D8FC

l2307D922:
	c.li	a0,00000002
	c.j	000000002307D8C0

;; cwmode_cur: 2307D926
cwmode_cur proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(a4)
	c.li	a5,00000002
	bgeu	a5,a4,000000002307D94E

l2307D936:
	lui	a0,000230C5
	addi	a0,a0,-00000798
	jal	ra,0000000023082388
	c.li	a0,00000003

l2307D944:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2307D94E:
	lui	s1,000230AA
	c.mv	s0,a0
	c.addi4spn	a1,0000000C
	addi	a0,s1,-00000624
	jal	ra,000000002307C632
	c.lw	s0,8(a4)
	c.lwsp	a2,000000E4
	c.li	a0,00000000
	beq	a4,a5,000000002307D944

l2307D968:
	addi	a1,s0,+00000008
	addi	a0,s1,-00000624
	jal	ra,000000002307C4E8
	c.lw	s0,8(a0)
	jal	ra,000000002307D71C
	c.j	000000002307D944

;; uart_set: 2307D97C
uart_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,12(a1)
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a0,a0,-00000460
	jal	ra,0000000023082388
	lbu	a4,s0,+0000001C
	lbu	a3,s0,+00000014
	lbu	a2,s0,+00000018
	lbu	a1,s0,+00000010
	c.lw	s0,12(a0)
	jal	ra,000000002307C360
	c.bnez	a0,000000002307DA04

l2307D9AA:
	lui	a0,000230C4
	addi	a1,s0,+0000000C
	addi	a0,a0,+00000700
	jal	ra,000000002307C4E8
	lui	a0,000230C4
	addi	a1,s0,+00000010
	addi	a0,a0,+000006E0
	jal	ra,000000002307C4E8
	lui	a0,000230C4
	addi	a1,s0,+00000018
	addi	a0,a0,+000006E8
	jal	ra,000000002307C4E8
	lui	a0,000230C4
	addi	a1,s0,+00000014
	addi	a0,a0,+000006F0
	jal	ra,000000002307C4E8
	lui	a0,000230C4
	addi	a1,s0,+0000001C
	addi	a0,a0,+000006F8
	jal	ra,000000002307C4E8
	c.li	a0,00000000

l2307D9FC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2307DA04:
	c.li	a0,00000004
	c.j	000000002307D9FC

;; at_get_errorcode: 2307DA08
;;   Called from:
;;     2307EA98 (in join_ap_handler)
at_get_errorcode proc
	c.li	a0,00000000
	c.jr	ra

;; at_cmd_impl_init: 2307DA0C
;;   Called from:
;;     2307CA42 (in at_cmd_init)
at_cmd_impl_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	s0,00042028
	jal	ra,000000002306151C
	sw	a0,s0,+000000E8
	c.li	a0,00000001
	jal	ra,000000002306151C
	lw	a4,s0,+000000E8
	lui	a5,00042028
	sw	a0,a5,+000000EC
	c.mv	s0,a5
	c.beqz	a4,000000002307DA42

l2307DA38:
	c.li	s1,00000000
	c.bnez	a0,000000002307DA4E

l2307DA3C:
	c.mv	a0,a4
	jal	ra,00000000230619CC

l2307DA42:
	lw	a0,s0,+000000EC
	c.li	s1,FFFFFFFF
	c.beqz	a0,000000002307DA4E

l2307DA4A:
	jal	ra,00000000230619CC

l2307DA4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; callback: 2307DA5A
callback proc
	lui	a4,000230C5
	addi	a3,a4,-00000720
	c.mv	a7,a1
	c.li	a5,00000000
	addi	a4,a4,-00000720
	c.li	a6,0000001B

l2307DA6C:
	c.lw	a3,0(a1)
	bne	a0,a1,000000002307DA84

l2307DA72:
	c.slli	a5,03
	c.add	a5,a4
	lw	t1,a5,+00000004
	beq	t1,zero,000000002307DA90

l2307DA7E:
	c.mv	a1,a2
	c.mv	a0,a7
	c.jr	t1

l2307DA84:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a6,000000002307DA6C

l2307DA8C:
	c.li	a0,00000006
	c.jr	ra

l2307DA90:
	c.li	a0,0000001A
	c.jr	ra

;; wifi_supports: 2307DA94
wifi_supports proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002307F78E
	c.beqz	a0,000000002307DAA6

l2307DAA4:
	c.li	a0,00000004

l2307DAA6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; attention_handler: 2307DAAC
attention_handler proc
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002307F78E

;; wifi_mode_handler: 2307DAB6
wifi_mode_handler proc
	c.addi16sp	FFFFFFD0
	c.li	a5,00000003
	sb	a5,sp,+00000014
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000000C
	c.lui	a5,00001000
	c.swsp	ra,00000094
	addi	a5,a5,-000003FC
	c.swsp	a5,0000008C
	c.lw	a0,0(a5)
	c.swsp	zero,00000084
	addi	a2,zero,+0000003F
	lbu	a3,a5,+00000000
	bne	a3,a2,000000002307DAEA

l2307DADC:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	jal	ra,000000002307EDBC

l2307DAE4:
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

l2307DAEA:
	addi	a2,zero,+0000003D
	beq	a3,a2,000000002307DAF6

l2307DAF2:
	c.li	a0,00000004
	c.j	000000002307DAE4

l2307DAF6:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.addi4spn	a3,00000010
	c.li	a2,00000001
	c.addi4spn	a1,00000014
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307DAF2

l2307DB06:
	c.lwsp	a6,000000E4
	bge	zero,a5,000000002307DAF2

l2307DB0C:
	c.lwsp	a2,00000064
	lui	a0,000230C5
	addi	a0,a0,+000005B8
	jal	ra,0000000023082388
	c.lwsp	a2,00000044
	jal	ra,000000002307ED70
	c.j	000000002307DAE4

;; http_req: 2307DB22
http_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	s3,000000A4
	c.mv	s3,a0
	addi	a0,zero,+00000202
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	jal	ra,000000002307BEFC
	c.li	s1,00000014
	c.beqz	a0,000000002307DBE2

l2307DB40:
	addi	a5,a0,+00000100
	c.swsp	a5,00000088
	c.lui	a5,00001000
	addi	a4,a5,-000003FF
	addi	a5,a5,-00000300
	c.swsp	a5,00000018
	c.swsp	a5,0000009C
	lw	a5,s3,+00000000
	c.li	s2,00000003
	addi	a3,a0,+00000101
	c.li	s5,00000001
	addi	s4,a0,+00000102
	c.swsp	a4,0000000C
	c.swsp	a4,00000090
	sb	s2,sp,+00000010
	sb	s2,sp,+0000001C
	c.swsp	a3,00000010
	sb	zero,sp,+00000028
	c.swsp	a0,00000094
	sb	s5,sp,+00000034
	c.swsp	s4,0000001C
	lbu	a3,a5,+00000000
	addi	a4,zero,+0000003D
	c.mv	s0,a0
	c.li	s1,00000004
	bne	a3,a4,000000002307DBE2

l2307DB8E:
	c.addi	a5,00000001
	sw	a5,s3,+00000000
	c.addi4spn	a3,0000000C
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307DBF6

l2307DBA2:
	c.lwsp	a2,000000C4
	c.li	a5,00000002
	bge	a5,a4,000000002307DBF6

l2307DBAA:
	lbu	a1,s0,+00000100
	bltu	s5,a1,000000002307DBF6

l2307DBB2:
	lbu	a2,s0,+00000101
	bltu	s2,a2,000000002307DBF6

l2307DBBA:
	lui	a4,0004201C
	addi	a5,a4,+000002E4
	c.mv	a3,s4
	addi	a4,a4,+000002E4
	c.mv	a0,s0
	sb	zero,a5,+00000000
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	jal	ra,000000002307F026
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002307BEF4

l2307DBE2:
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

l2307DBF6:
	c.mv	a0,s0
	jal	ra,000000002307BEF4
	c.li	s1,00000004
	c.j	000000002307DBE2

;; domain_name_resolution: 2307DC00
domain_name_resolution proc
	c.addi16sp	FFFFFEC0
	sw	s1,sp,+00000134
	lui	a1,000230C5
	c.mv	s1,a0
	lui	a0,000230C5
	addi	a1,a1,-000003B4
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000013C
	sw	s0,sp,+00000138
	sw	s2,sp,+00000130
	c.addi4spn	s0,00000020
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	jal	ra,0000000023082388
	addi	a2,zero,+00000100
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.lui	a5,00001000
	addi	a5,a5,-00000300
	c.swsp	a5,0000008C
	c.lw	s1,0(a5)
	sb	zero,sp,+00000014
	c.swsp	s0,0000000C
	lbu	a3,a5,+00000000
	addi	a4,zero,+0000003D
	beq	a3,a4,000000002307DC82

l2307DC5E:
	c.li	s1,00000004

l2307DC60:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	c.mv	a0,s1
	lw	s2,sp,+00000130
	lw	s1,sp,+00000134
	lw	s3,sp,+0000012C
	lw	s4,sp,+00000128
	lw	s5,sp,+00000124
	c.addi16sp	00000140
	c.jr	ra

l2307DC82:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.mv	a0,s1
	c.addi4spn	a3,00000010
	c.li	a2,00000001
	c.addi4spn	a1,00000014
	jal	ra,000000002307F78E
	c.mv	s1,a0
	c.bnez	a0,000000002307DC5E

l2307DC96:
	c.lwsp	a6,000000E4
	bge	zero,a5,000000002307DC5E

l2307DC9C:
	lui	a0,000230C5
	c.mv	a1,s0
	addi	a0,a0,-00000114
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002306A806
	c.mv	s3,a0
	c.beqz	a0,000000002307DD2A

l2307DCB4:
	c.lw	a0,16(a4)
	c.li	a1,00000000

l2307DCB8:
	slli	a5,a1,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.bnez	a5,000000002307DD26

l2307DCC2:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	c.swsp	a1,00000084
	jal	ra,000000002307C77E
	c.lwsp	a2,00000064
	lui	a0,000230C5
	addi	a0,a0,-000000EC
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	s2,00000000
	lui	s5,000230C7

l2307DCEC:
	lw	a5,s3,+00000010
	addi	s4,s2,+00000004
	c.add	a5,s2
	c.lw	a5,0(a5)
	c.beqz	a5,000000002307DC60

l2307DCFA:
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lw	a5,s3,+00000010
	c.add	s2,a5
	lw	a0,s2,+00000000
	c.mv	s2,s4
	jal	ra,000000002306F586
	c.mv	a1,a0
	addi	a0,s5,-00000688
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.j	000000002307DCEC

l2307DD26:
	c.addi	a1,00000001
	c.j	000000002307DCB8

l2307DD2A:
	c.li	s1,00000013
	c.j	000000002307DC60

;; base_station_info: 2307DD2E
base_station_info proc
	c.addi16sp	FFFFFFC0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,000000002307F78E
	c.li	s0,00000004
	c.bnez	a0,000000002307DDF2

l2307DD50:
	addi	a0,zero,+00000080
	jal	ra,000000002307BEFC
	c.swsp	a0,0000000C
	lui	a0,000230C5
	addi	a5,zero,+00000080
	c.addi4spn	a4,00000010
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,-000001B8
	c.swsp	a5,0000008C
	jal	ra,000000002307F026
	c.mv	s0,a0
	c.bnez	a0,000000002307DDF2

l2307DD78:
	c.lwsp	s8,00000044
	jal	ra,000000002305D8F2
	c.mv	s1,a0
	c.beqz	a0,000000002307DE02

l2307DD82:
	lui	a1,000230C4
	addi	a1,a1,+000005D8
	jal	ra,000000002305D904
	lui	a1,000230BF
	addi	a1,a1,+00000504
	c.mv	s3,a0
	c.mv	a0,s1
	jal	ra,000000002305D904
	lui	a1,000230C5
	c.swsp	a0,00000084
	addi	a1,a1,-00000198
	c.mv	a0,s1
	jal	ra,000000002305D904
	lui	s2,000230C7
	c.swsp	a0,00000004
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	beq	s3,zero,000000002307DDC8

l2307DDC4:
	lw	s3,s3,+00000010

l2307DDC8:
	c.beqz	a2,000000002307DDCC

l2307DDCA:
	c.lw	a2,16(a2)

l2307DDCC:
	c.beqz	a3,000000002307DDD0

l2307DDCE:
	c.lw	a3,16(a3)

l2307DDD0:
	lui	a0,000230C5
	c.mv	a1,s3
	addi	a0,a0,-0000018C
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.lwsp	s8,00000044
	jal	ra,000000002307BEF4
	c.mv	a0,s1
	jal	ra,000000002305D812

l2307DDF2:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2307DE02:
	c.li	s0,00000013
	c.j	000000002307DDF2

;; deep_sleep_handler: 2307DE06
deep_sleep_handler proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a4,00000010
	c.swsp	a4,0000008C
	c.lui	a4,00001000
	addi	a4,a4,-000003FC
	c.swsp	ra,0000009C
	c.li	a3,00000003
	c.swsp	a4,00000010
	c.swsp	a4,00000094
	c.lw	a0,0(a4)
	sb	a3,sp,+00000018
	sb	a3,sp,+00000024
	c.addi4spn	a3,00000014
	c.swsp	a3,00000014
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	lbu	a2,a4,+00000000
	addi	a3,zero,+0000003D
	beq	a2,a3,000000002307DE40

l2307DE38:
	c.li	a0,00000004

l2307DE3A:
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

l2307DE40:
	c.addi	a4,00000001
	c.sw	a0,0(a4)
	c.addi4spn	a3,0000000C
	c.li	a2,00000002
	c.addi4spn	a1,00000018
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307DE38

l2307DE50:
	c.lwsp	a2,000000E4
	bge	zero,a5,000000002307DE38

l2307DE56:
	c.lwsp	a6,00000064
	c.lwsp	s4,00000084
	lui	a0,000230C5
	addi	a0,a0,-00000168
	jal	ra,0000000023082388
	c.lwsp	s4,00000064
	c.lwsp	a6,00000044
	jal	ra,000000002307ED18
	c.j	000000002307DE3A

;; setautoconnect_handler: 2307DE70
setautoconnect_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	a1,000230C5
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a1,a1,-00000388
	addi	a0,a0,-0000012C
	c.swsp	ra,00000094
	jal	ra,0000000023082388
	c.li	a5,00000003
	sb	a5,sp,+00000014
	c.addi4spn	a5,00000008
	c.swsp	a5,0000000C
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	c.swsp	a5,0000008C
	c.lw	s0,0(a5)
	c.swsp	zero,00000004
	c.swsp	zero,00000008
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,000000002307DEE4

l2307DEB0:
	lui	a0,000230AA
	c.addi4spn	a1,00000010
	addi	a0,a0,-00000618
	jal	ra,000000002307C632
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a6,00000064
	lui	a0,000230C5
	addi	a0,a0,-00000088
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E

l2307DEE0:
	c.li	a5,00000000
	c.j	000000002307DEEE

l2307DEE4:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307DEF8

l2307DEEC:
	c.li	a5,00000004

l2307DEEE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2307DEF8:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.addi4spn	a3,0000000C
	c.li	a2,00000001
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.swsp	a0,00000008
	c.li	a5,00000000
	c.bnez	a0,000000002307DEEE

l2307DF0E:
	c.lwsp	a2,000000E4
	bge	zero,a5,000000002307DEEC

l2307DF14:
	c.lwsp	s0,00000064
	lui	a0,000230C5
	addi	a0,a0,-00000078
	jal	ra,0000000023082388
	c.lwsp	s0,000000E4
	c.li	a4,00000001
	bne	a5,a4,000000002307DF3C

l2307DF2A:
	c.swsp	a5,00000008

l2307DF2C:
	lui	a0,000230AA
	c.addi4spn	a1,00000010
	addi	a0,a0,-00000618
	jal	ra,000000002307C4E8
	c.j	000000002307DEE0

l2307DF3C:
	c.bnez	a5,000000002307DEEC

l2307DF3E:
	c.swsp	zero,00000008
	c.j	000000002307DF2C

;; scan_handler_opt: 2307DF42
scan_handler_opt proc
	c.addi16sp	FFFFFFC0
	c.li	a5,00000003
	sb	a5,sp,+00000018
	sb	a5,sp,+00000024
	addi	a5,sp,+00000011
	c.swsp	a5,00000014
	c.lui	a5,00001000
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	addi	a5,a5,-000007FF
	c.addi4spn	a3,00000010
	c.swsp	a5,00000094
	c.lw	a0,0(a5)
	c.swsp	a3,0000008C
	addi	a3,zero,+00000401
	sb	zero,sp,+0000000F
	sh	zero,sp,+00000010
	c.swsp	a3,00000010
	lbu	a3,a5,+00000000
	addi	a2,zero,+0000003F
	bne	a3,a2,000000002307DFCE

l2307DF80:
	lui	a0,000230C5
	addi	a1,sp,+0000000F
	addi	a0,a0,-00000518
	jal	ra,000000002307C632
	c.beqz	a0,000000002307DF98

l2307DF92:
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F

l2307DF98:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lbu	a2,sp,+0000000F
	lui	a0,000230C5
	addi	a0,a0,-00000098
	srli	a1,a2,00000005
	c.andi	a1,00000001
	c.andi	a2,0000001F
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	a0,00000000

l2307DFC6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l2307DFCE:
	addi	a2,zero,+0000003D
	beq	a3,a2,000000002307DFDA

l2307DFD6:
	c.li	a0,00000004
	c.j	000000002307DFC6

l2307DFDA:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.addi4spn	a3,00000014
	c.li	a2,00000002
	c.addi4spn	a1,00000018
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307DFD6

l2307DFEA:
	c.lwsp	s4,000000C4
	c.li	a5,00000001
	bge	a5,a4,000000002307DFD6

l2307DFF2:
	lbu	a5,sp,+00000011
	lbu	a4,sp,+00000010
	lui	a0,000230C5
	c.andi	a5,0000001F
	c.slli	a4,05
	c.or	a5,a4
	addi	a1,sp,+0000000F
	addi	a0,a0,-00000518
	sb	a5,sp,+0000000F
	jal	ra,000000002307C4E8
	andi	a0,a0,+000000FF
	c.j	000000002307DFC6

;; scan_handler: 2307E01A
scan_handler proc
	c.addi16sp	FFFFFFD0
	addi	a5,zero,+00000402
	c.swsp	a5,00000008
	c.lui	a5,00001000
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	addi	a5,a5,-000007FE
	c.swsp	a5,0000008C
	c.lw	a0,0(a5)
	addi	s0,sp,+00000002
	c.swsp	zero,00000000
	sb	zero,sp,+00000008
	c.swsp	sp,00000084
	sb	zero,sp,+00000014
	c.swsp	s0,0000000C
	lbu	a2,a5,+00000000
	addi	a3,zero,+0000003D
	beq	a2,a3,000000002307E06C

l2307E04E:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002307F78E
	c.beqz	a0,000000002307E064

l2307E05A:
	c.li	a0,00000004

l2307E05C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2307E064:
	c.li	a1,00000000

l2307E066:
	jal	ra,00000000230801C0
	c.j	000000002307E05C

l2307E06C:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.addi4spn	a3,00000004
	c.li	a2,00000002
	c.addi4spn	a1,00000008
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E05A

l2307E07C:
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bge	a5,a4,000000002307E05A

l2307E084:
	lui	a1,000230C4
	addi	a1,a1,-00000048
	c.mv	a0,sp
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307E0AA

l2307E094:
	lui	a1,000230C9
	addi	a1,a1,+00000664
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307E05A

l2307E0A4:
	c.mv	a1,s0
	c.mv	a0,sp
	c.j	000000002307E066

l2307E0AA:
	lui	a1,000230C5
	addi	a1,a1,+000004CC
	c.mv	a0,sp
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307E094

l2307E0BA:
	c.j	000000002307E05A

;; uart_config_handler: 2307E0BC
uart_config_handler proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	lui	a1,000230C5
	c.mv	s1,a0
	lui	a0,000230C5
	addi	a1,a1,-000003C8
	addi	a0,a0,-0000012C
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	jal	ra,0000000023082388
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.addi4spn	a5,00000010
	c.swsp	a5,00000014
	c.addi4spn	a4,00000014
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	c.swsp	a4,00000098
	c.addi4spn	a4,00000018
	c.swsp	a5,00000094
	c.swsp	a5,0000001C
	c.swsp	a4,00000020
	c.swsp	a5,000000A0
	c.addi4spn	a4,0000001C
	c.swsp	a5,00000028
	c.swsp	a5,000000AC
	c.lw	s1,0(a5)
	c.li	s0,00000003
	c.swsp	a4,000000A4
	c.addi4spn	a4,00000020
	sb	s0,sp,+00000024
	sb	s0,sp,+00000030
	sb	s0,sp,+0000003C
	sb	s0,sp,+00000048
	sb	s0,sp,+00000054
	c.swsp	a4,0000002C
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,000000002307E13A

l2307E12C:
	jal	ra,000000002307EC28

l2307E130:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.addi16sp	00000070
	c.jr	ra

l2307E13A:
	addi	a3,zero,+0000003D
	c.li	a0,00000006
	bne	a4,a3,000000002307E130

l2307E144:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.addi4spn	a3,00000008
	c.li	a2,00000005
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002307F78E
	c.beqz	a0,000000002307E15A

l2307E156:
	c.li	a0,00000004
	c.j	000000002307E130

l2307E15A:
	c.lwsp	s0,000000E4
	c.li	a4,00000004
	bge	a4,a5,000000002307E1BA

l2307E162:
	c.lwsp	a6,00000064
	lui	a0,000230C5
	addi	a0,a0,+00000500
	jal	ra,0000000023082388
	c.lwsp	s4,00000064
	lui	a0,000230C5
	addi	a0,a0,+00000524
	jal	ra,0000000023082388
	c.lwsp	t3,00000064
	lui	a0,000230C5
	addi	a0,a0,+0000054C
	jal	ra,0000000023082388
	c.lwsp	s8,00000064
	lui	a0,000230C5
	addi	a0,a0,+00000570
	jal	ra,0000000023082388
	c.lwsp	zero,00000174
	lui	a0,000230C5
	addi	a0,a0,+00000598
	jal	ra,0000000023082388
	c.lwsp	zero,000001F4
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000A4
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.lwsp	a2,00000044
	jal	ra,000000002307ECA8
	c.j	000000002307E130

l2307E1BA:
	c.swsp	zero,00000010
	beq	a5,a4,000000002307E162

l2307E1C0:
	c.swsp	zero,0000008C
	beq	a5,s0,000000002307E162

l2307E1C6:
	c.li	a4,00000001
	c.swsp	a4,0000000C
	c.li	a3,00000002
	beq	a5,a3,000000002307E162

l2307E1D0:
	c.li	a3,00000008
	c.swsp	a3,00000088
	bne	a5,a4,000000002307E156

l2307E1D8:
	c.j	000000002307E162

;; reset_handler: 2307E1DA
reset_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E1F2

l2307E1EA:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002307EB86

l2307E1F2:
	c.lwsp	a2,00000020
	c.li	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; echo_on_handler: 2307E1FA
echo_on_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	a1,000230C5
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a1,a1,-000003D8
	addi	a0,a0,-0000012C
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	jal	ra,0000000023082388
	c.li	a5,00000003
	sb	a5,sp,+00000014
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	c.swsp	a5,0000008C
	c.lw	s0,0(a5)
	c.addi4spn	s1,0000000C
	c.swsp	zero,00000084
	c.swsp	s1,0000000C
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,000000002307E278

l2307E23A:
	lui	a0,000230C4
	c.addi4spn	a1,00000010
	addi	a0,a0,+000007A4
	jal	ra,000000002307C632
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a6,00000064
	lui	a0,000230C5
	addi	a0,a0,-000000E0
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	s0,00000000

l2307E26C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2307E278:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307E284

l2307E280:
	c.li	s0,00000004
	c.j	000000002307E26C

l2307E284:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.mv	a0,s0
	c.addi4spn	a3,00000010
	c.li	a2,00000001
	c.addi4spn	a1,00000014
	jal	ra,000000002307F78E
	c.mv	s0,a0
	c.bnez	a0,000000002307E280

l2307E298:
	c.lwsp	a6,000000E4
	bge	zero,a5,000000002307E280

l2307E29E:
	c.lwsp	a2,000000E4
	c.li	a4,00000001
	blt	a4,a5,000000002307E280

l2307E2A6:
	lui	a0,000230C4
	lui	a4,00042028
	c.mv	a1,s1
	addi	a0,a0,+000007A4
	sw	a5,a4,+00000F44
	jal	ra,000000002307C4E8
	c.j	000000002307E26C

;; disconnect_handler: 2307E2BE
disconnect_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a1,000230C5
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a1,a1,-0000039C
	addi	a0,a0,-0000012C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lw	s0,0(a5)
	lbu	a4,a5,+00000000
	addi	a5,zero,+0000003D
	beq	a4,a5,000000002307E2F6

l2307E2E8:
	c.li	a0,00000000
	jal	ra,000000002307EF02
	addi	a0,zero,+000000C8
	jal	ra,0000000023062CC4

l2307E2F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; restore_handler: 2307E300
restore_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E318

l2307E310:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002307EBE8

l2307E318:
	c.lwsp	a2,00000020
	c.li	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; version_handler: 2307E320
version_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E338

l2307E330:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002307EBA8

l2307E338:
	c.lwsp	a2,00000020
	c.li	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; at_help: 2307E340
;;   Called from:
;;     2307E3FC (in help_handler)
at_help proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,000230C5
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	addi	s0,s0,-00000348
	lui	s1,000230C7
	lui	s3,000230C5
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	addi	s5,s0,+00000150
	c.mv	s2,s1
	c.mv	s4,s3

l2307E368:
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lw	s0,8(a2)
	c.lw	s0,0(a1)
	addi	a0,s3,-000001F8
	c.addi	s0,0000000C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.li	a0,0000000A
	jal	ra,0000000023062CC4
	bne	s0,s5,000000002307E368

l2307E390:
	c.li	s0,00000000
	lui	s1,0004200F
	lui	s3,0004200F
	c.li	s5,0000000C

l2307E39C:
	lw	a5,s1,+000006E0
	bltu	s0,a5,000000002307E3B8

l2307E3A4:
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

l2307E3B8:
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	add	a4,s0,s5
	lw	a5,s3,+000006DC
	addi	a0,s4,-000001F8
	c.addi	s0,00000001
	c.add	a5,a4
	c.lw	a5,8(a2)
	c.lw	a5,0(a1)
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.li	a0,0000000A
	jal	ra,0000000023062CC4
	c.j	000000002307E39C

;; help_handler: 2307E3E8
help_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E400

l2307E3F8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002307E340

l2307E400:
	c.lwsp	a2,00000020
	c.li	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; at_init: 2307E408
;;   Called from:
;;     2307CA3E (in at_cmd_init)
at_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042028
	c.swsp	s1,00000080
	c.li	a2,00000008
	c.mv	s1,a0
	c.li	a1,00000000
	addi	a0,s0,-000006BC
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.li	a0,0000001A
	c.beqz	s1,000000002307E446

l2307E426:
	c.lw	s1,0(a5)
	addi	s0,s0,-000006BC
	lui	a0,0004201C
	c.sw	s0,0(a5)
	c.lw	s1,4(a5)
	addi	a2,zero,+00000408
	c.li	a1,00000000
	addi	a0,a0,-00000124
	c.sw	s0,4(a5)
	jal	ra,00000000230A3A68
	c.li	a0,00000000

l2307E446:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; at_command_register: 2307E450
;;   Called from:
;;     23000F00 (in usr_at_cmd_register)
at_command_register proc
	c.beqz	a0,000000002307E466

l2307E452:
	lui	a5,0004200F
	sw	a0,a5,+000006DC
	lui	a5,0004200F
	sw	a1,a5,+000006E0
	c.li	a0,00000000
	c.jr	ra

l2307E466:
	c.li	a0,00000008
	c.jr	ra

;; at_parse: 2307E46A
;;   Called from:
;;     2307C34E (in at_cmd_exec)
at_parse proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	lui	s1,00042028
	addi	a2,zero,+00000518
	c.li	a1,00000000
	addi	a0,s1,-000006B4
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s10,00000028
	lui	s2,0004201C
	c.swsp	s9,000000A8
	c.swsp	s11,000000A4
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000408
	c.li	a1,00000000
	addi	a0,s2,-00000124
	addi	s0,s2,-00000124
	lui	s5,00042028
	jal	ra,00000000230A3A68
	c.li	s6,00000000
	c.li	s3,00000000
	c.li	s4,00000000
	lui	s7,0004200F
	lui	s8,000230C5
	addi	s5,s5,-0000019C
	addi	s10,s0,+00000004

l2307E4C8:
	addi	a0,sp,+00000017
	jal	ra,000000002307F894
	c.bnez	a0,000000002307E530

l2307E4D2:
	lw	a5,s5,+000000E0
	c.beqz	a5,000000002307E4E8

l2307E4D8:
	lui	a5,00042028
	lw	a5,a5,-000006B8
	c.li	a1,00000001
	addi	a0,sp,+00000017
	c.jalr	a5

l2307E4E8:
	addi	s11,s1,-000006B4
	lw	s9,s11,+00000000
	bne	s9,zero,000000002307E610

l2307E4F4:
	lbu	a4,sp,+00000017
	c.li	s11,0000000A
	c.lw	s0,0(a5)
	bne	a4,s11,000000002307E5CC

l2307E500:
	addi	a3,zero,+000003FF
	bltu	a3,a5,000000002307E670

l2307E508:
	addi	a3,a5,+00000001
	c.sw	s0,0(a3)
	c.add	a5,s0

l2307E510:
	sb	a4,a5,+00000004

l2307E514:
	c.li	s3,00000001

l2307E516:
	c.lw	s0,0(a5)
	addi	a4,zero,+000003FF
	bltu	a4,a5,000000002307E670

l2307E520:
	addi	a4,a5,+00000001
	c.sw	s0,0(a4)
	lbu	a4,sp,+00000017
	c.add	a5,s0
	sb	a4,a5,+00000004

l2307E530:
	beq	s4,zero,000000002307E568

l2307E534:
	jal	ra,00000000230629A4
	c.lui	a5,00002000
	sub	a0,a0,s6
	addi	a5,a5,+00000710
	bgeu	a5,a0,000000002307E568

l2307E546:
	addi	a2,zero,+00000518
	c.li	a1,00000000
	addi	a0,s1,-000006B4
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000408
	c.li	a1,00000000
	addi	a0,s2,-00000124
	jal	ra,00000000230A3A68
	c.li	a0,00000018
	c.jal	000000002307EAB6
	c.li	s4,00000000

l2307E568:
	beq	s3,zero,000000002307E4C8

l2307E56C:
	addi	s3,s2,-00000124
	lw	a3,s3,+00000000
	c.li	a5,00000000
	c.addi	s3,00000004
	addi	a2,zero,+0000003D
	c.li	a1,0000000A
	c.li	a0,0000000D
	addi	a6,zero,+00000020

l2307E584:
	blt	a5,a3,000000002307E682

l2307E588:
	c.addi4spn	a4,00000040
	c.add	a4,a5
	sb	zero,a4,+00000FDC
	c.li	s11,00000001
	beq	a5,zero,000000002307E69C

l2307E596:
	lw	a5,s7,+000006DC
	lui	a4,0004200F
	lw	a2,a4,+000006E0
	c.li	s11,00000000
	c.li	a6,0000000C
	bne	a5,zero,000000002307E700

l2307E5AA:
	addi	a5,s8,-00000348
	c.li	s11,00000000

l2307E5B0:
	c.lw	a5,0(a1)
	c.addi4spn	a0,0000001C
	c.swsp	a5,00000080
	jal	ra,00000000230A3FF4
	beq	a0,zero,000000002307E706

l2307E5BE:
	c.lwsp	tp,000000E4
	c.addi	s11,00000001
	c.li	a4,0000001C
	c.addi	a5,0000000C
	bne	s11,a4,000000002307E5B0

l2307E5CA:
	c.j	000000002307E69A

l2307E5CC:
	c.li	a3,0000000D
	bne	a4,a3,000000002307E516

l2307E5D2:
	addi	a3,a5,+00000001
	addi	a0,sp,+00000017
	c.add	a5,s0
	c.sw	s0,0(a3)
	sb	a4,a5,+00000004
	jal	ra,000000002307F946
	c.bnez	a0,000000002307E514

l2307E5E8:
	lbu	a5,sp,+00000017
	bne	a5,s11,000000002307E514

l2307E5F0:
	addi	a0,sp,+00000017
	jal	ra,000000002307F894
	c.lw	s0,0(a5)
	addi	a4,zero,+000003FF
	bltu	a4,a5,000000002307E670

l2307E602:
	addi	a4,a5,+00000001
	c.sw	s0,0(a4)
	c.add	a5,s0
	lbu	a4,sp,+00000017
	c.j	000000002307E510

l2307E610:
	c.li	a5,00000001
	bne	s9,a5,000000002307E516

l2307E616:
	jal	ra,00000000230629A4
	lw	a5,s11,+00000004
	lbu	a2,sp,+00000017
	c.mv	s6,a0
	addi	a3,a5,+00000001
	sw	a3,s11,+00000004
	c.add	a5,s11
	sb	a2,a5,+00000112
	lw	a5,s11,+0000000C
	c.li	s4,00000001
	bltu	a3,a5,000000002307E516

l2307E63C:
	addi	a5,zero,+000003FF
	bgeu	a5,a3,000000002307E648

l2307E644:
	sw	zero,s11,+00000004

l2307E648:
	addi	a2,zero,+00000408
	c.li	a1,00000000
	addi	a0,s2,-00000124
	jal	ra,00000000230A3A68
	lui	a1,000230C5
	c.li	a2,00000015
	addi	a1,a1,-000001D0
	c.mv	a0,s10
	jal	ra,00000000230A382C
	c.li	a5,00000015
	c.sw	s0,0(a5)
	c.mv	s3,s9
	c.li	s4,00000000
	c.j	000000002307E4C8

l2307E670:
	lui	a0,000230C5
	addi	a0,a0,-000001F0
	sw	zero,s0,+00000000
	jal	ra,0000000023082388
	c.j	000000002307E4C8

l2307E682:
	lbu	a4,s3,+00000000
	andi	a7,a4,+000000FD
	beq	a7,a2,000000002307E588

l2307E68E:
	beq	a4,a1,000000002307E588

l2307E692:
	beq	a4,a0,000000002307E588

l2307E696:
	bne	a5,a6,000000002307E6C6

l2307E69A:
	c.li	s11,00000003

l2307E69C:
	lw	a4,s1,-000006B4
	c.li	a5,00000001
	bne	a4,a5,000000002307E6BA

l2307E6A6:
	c.li	a5,00000017
	beq	s11,a5,000000002307E6BA

l2307E6AC:
	addi	a2,zero,+00000518
	c.li	a1,00000000
	addi	a0,s1,-000006B4
	jal	ra,00000000230A3A68

l2307E6BA:
	c.mv	a0,s11
	c.jal	000000002307EAB6
	c.li	s3,00000000
	sw	zero,s0,+00000000
	c.j	000000002307E4C8

l2307E6C6:
	addi	a7,sp,+0000001C
	c.add	a7,a5
	c.addi	s3,00000001
	sb	a4,a7,+00000000
	c.addi	a5,00000001
	c.j	000000002307E584

l2307E6D6:
	add	a4,s11,a6
	c.addi4spn	a0,0000001C
	c.swsp	a5,00000080
	c.swsp	a2,00000084
	add	a1,a5,a4
	c.lw	a1,0(a1)
	c.swsp	a4,00000004
	jal	ra,00000000230A3FF4
	lui	a5,0004200F
	c.lwsp	s0,000000C4
	addi	a3,a5,+000006DC
	c.beqz	a0,000000002307E726

l2307E6F8:
	c.lwsp	a2,00000084
	c.lwsp	tp,000000E4
	c.addi	s11,00000001
	c.li	a6,0000000C

l2307E700:
	blt	s11,a2,000000002307E6D6

l2307E704:
	c.j	000000002307E5AA

l2307E706:
	c.li	a5,0000000C
	add	s11,s11,a5
	lui	a5,000230C5
	addi	a5,a5,-00000348
	c.add	s11,a5
	lw	a5,s11,+00000004

l2307E71A:
	c.beqz	a5,000000002307E69A

l2307E71C:
	c.swsp	s3,0000000C
	c.addi4spn	a0,00000018
	c.jalr	a5
	c.mv	s11,a0
	c.j	000000002307E69C

l2307E726:
	c.lw	a3,0(a5)
	c.add	a5,a4
	c.lw	a5,4(a5)
	c.j	000000002307E71A

;; at_callback_do: 2307E72E
;;   Called from:
;;     2307E846 (in ble_sync_mode)
;;     2307E8E4 (in set_ip_handler)
;;     2307FA84 (in create_tcp_udp_handler)
;;     2307FBF0 (in close_network_handler)
;;     2307FD30 (in send_data_handler)
;;     2307FDD4 (in ap_server_handler)
;;     2307FF42 (in client_ssl_config_path)
;;     23080010 (in client_ssl_set_sni)
;;     230800F6 (in client_ssl_set_alpn)
at_callback_do proc
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.sw	a1,0(a5)
	lui	a5,00042028
	lw	t1,a5,-000006BC
	beq	t1,zero,000000002307E748

l2307E744:
	c.li	a2,00000000
	c.jr	t1

l2307E748:
	c.li	a0,00000002
	c.jr	ra

;; ble_sync_mode: 2307E74C
ble_sync_mode proc
	addi	sp,sp,-00000260
	sw	s0,sp,+00000258
	c.addi4spn	s0,00000024
	sw	s1,sp,+00000254
	addi	a2,zero,+00000100
	c.mv	s1,a0
	c.li	a1,00000000
	c.mv	a0,s0
	sw	s2,sp,+00000250
	sw	s3,sp,+0000024C
	sw	s4,sp,+00000248
	sw	ra,sp,+0000025C
	jal	ra,00000000230A3A68
	c.lui	a5,00001000
	addi	a5,a5,-00000300
	lui	s4,000230B4
	c.swsp	a5,00000088
	lui	s3,000230B4
	addi	a5,s4,-000003FC
	c.swsp	a5,0000000C
	lui	s2,000230C5
	addi	a5,s3,-0000041C
	c.swsp	a5,0000008C
	addi	a5,s2,-00000050
	c.swsp	a5,00000010
	c.lw	s1,0(a5)
	sb	zero,sp,+0000000C
	c.swsp	s0,00000008
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,000000002307E804

l2307E7B2:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a5,0004200F
	lw	a5,a5,+000006E4
	c.addi4spn	a4,00000240
	lui	a0,000230C5
	c.slli	a5,02
	c.add	a5,a4
	lw	a1,a5,-00000228
	addi	a0,a0,-00000178
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	a0,00000000

l2307E7E6:
	lw	ra,sp,+0000025C
	lw	s0,sp,+00000258
	lw	s1,sp,+00000254
	lw	s2,sp,+00000250
	lw	s3,sp,+0000024C
	lw	s4,sp,+00000248
	addi	sp,sp,+00000260
	c.jr	ra

l2307E804:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307E810

l2307E80C:
	c.li	a0,00000004
	c.j	000000002307E7E6

l2307E810:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.addi4spn	a3,00000008
	c.li	a2,00000001
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307E80C

l2307E822:
	c.lwsp	s0,000000E4
	bge	zero,a5,000000002307E80C

l2307E828:
	addi	a1,s4,-000003FC
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307E84C

l2307E834:
	lui	a5,0004200F
	sw	zero,sp,+0000012C
	sw	zero,a5,+000006E4

l2307E840:
	c.addi4spn	a1,00000124
	addi	a0,zero,+00000041
	jal	ra,000000002307E72E
	c.j	000000002307E7E6

l2307E84C:
	addi	a1,s3,-0000041C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.li	a5,00000001
	c.beqz	a0,000000002307E868

l2307E85A:
	addi	a1,s2,-00000050
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307E80C

l2307E866:
	c.li	a5,00000002

l2307E868:
	lui	a4,0004200F
	sw	a5,sp,+0000012C
	sw	a5,a4,+000006E4
	c.j	000000002307E840

;; set_ip_handler: 2307E876
set_ip_handler proc
	c.addi16sp	FFFFFE90
	sw	s0,sp,+00000168
	lui	a1,000230C5
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a1,a1,-00000370
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000016C
	jal	ra,0000000023082388
	c.li	a4,00000005
	sb	a4,sp,+00000008
	c.addi4spn	a5,0000004C
	sb	a4,sp,+00000014
	c.addi4spn	a3,00000050
	sb	a4,sp,+00000020
	sb	a4,sp,+0000002C
	sb	a4,sp,+00000038
	c.addi4spn	a4,0000005C
	c.swsp	a5,00000084
	c.swsp	a3,0000000C
	c.swsp	a4,0000009C
	c.addi4spn	a3,00000054
	c.lui	a5,00001000
	c.lw	s0,0(a4)
	addi	a5,a5,-000003FC
	c.swsp	a3,00000090
	c.addi4spn	a3,00000058
	c.swsp	a5,00000008
	c.swsp	a5,0000008C
	c.swsp	a5,00000014
	c.swsp	a5,00000098
	c.swsp	a5,00000020
	c.swsp	a3,00000018
	lbu	a3,a4,+00000000
	addi	a5,zero,+0000003F
	bne	a3,a5,000000002307E8F8

l2307E8DE:
	c.addi4spn	a1,00000044
	addi	a0,zero,+00000043

l2307E8E4:
	jal	ra,000000002307E72E
	c.mv	a5,a0

l2307E8EA:
	lw	ra,sp,+0000016C
	lw	s0,sp,+00000168
	c.mv	a0,a5
	c.addi16sp	00000170
	c.jr	ra

l2307E8F8:
	addi	a2,zero,+0000003D
	c.li	a5,00000003
	bne	a3,a2,000000002307E8EA

l2307E902:
	c.addi	a4,00000001
	c.sw	s0,0(a4)
	c.addi4spn	a3,00000004
	c.li	a2,00000005
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.li	a5,00000004
	c.bnez	a0,000000002307E8EA

l2307E916:
	c.lwsp	tp,000000C4
	bge	zero,a4,000000002307E8EA

l2307E91C:
	c.addi4spn	a1,00000044
	addi	a0,zero,+00000042
	c.j	000000002307E8E4

;; at_get_ssid_psk: 2307E924
;;   Called from:
;;     2307E9DA (in ap_cfg_handler)
;;     2307EA6A (in join_ap_handler)
at_get_ssid_psk proc
	c.lw	a0,0(a5)
	c.li	a4,00000000
	addi	a6,zero,+0000005C
	addi	a7,zero,+00000022
	addi	t1,zero,+0000002C
	c.li	t3,0000000D
	addi	a0,zero,+00000061

l2307E93A:
	lbu	a3,a5,+00000000
	bne	a3,a6,000000002307E952

l2307E942:
	lbu	a3,a5,+00000001
	c.addi	a4,00000001
	c.addi	a5,00000002
	sb	a3,a1,+00000000

l2307E94E:
	c.addi	a1,00000001
	c.j	000000002307E95A

l2307E952:
	bne	a3,a7,000000002307E964

l2307E956:
	c.addi	a5,00000001
	c.addi	a4,00000001

l2307E95A:
	c.addi	a4,00000001
	bge	a0,a4,000000002307E93A

l2307E960:
	c.li	a0,00000004
	c.jr	ra

l2307E964:
	bne	a3,t1,000000002307E970

l2307E968:
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.mv	a1,a2
	c.j	000000002307E95A

l2307E970:
	beq	a3,t3,000000002307E97C

l2307E974:
	sb	a3,a1,+00000000
	c.addi	a5,00000001
	c.j	000000002307E94E

l2307E97C:
	c.li	a0,00000000
	c.jr	ra

;; ap_cfg_handler: 2307E980
ap_cfg_handler proc
	addi	sp,sp,-00000210
	sw	s0,sp,+00000208
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a0,a0,-00000360
	sw	ra,sp,+0000020C
	jal	ra,0000000023082388
	addi	a2,zero,+00000200
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.lw	s0,0(a5)
	addi	a3,zero,+0000003F
	lbu	a4,a5,+00000000
	bne	a4,a3,000000002307E9C4

l2307E9B4:
	c.jal	000000002307EFE4

l2307E9B6:
	lw	ra,sp,+0000020C
	lw	s0,sp,+00000208
	addi	sp,sp,+00000210
	c.jr	ra

l2307E9C4:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307E9D0

l2307E9CC:
	c.li	a0,00000004
	c.j	000000002307E9B6

l2307E9D0:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.addi4spn	a2,00000100
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,000000002307E924
	c.bnez	a0,000000002307E9CC

l2307E9E0:
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000100
	c.mv	a0,sp
	c.jal	000000002307EF44
	c.j	000000002307E9B6

;; join_ap_handler: 2307E9EC
join_ap_handler proc
	addi	sp,sp,-00000210
	sw	s0,sp,+00000208
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a0,a0,-00000360
	sw	ra,sp,+0000020C
	jal	ra,0000000023082388
	addi	a2,zero,+00000200
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.lw	s0,0(a5)
	addi	a3,zero,+0000003F
	lbu	a4,a5,+00000000
	bne	a4,a3,000000002307EA34

l2307EA20:
	c.jal	000000002307EE34

l2307EA22:
	c.mv	a5,a0

l2307EA24:
	lw	ra,sp,+0000020C
	lw	s0,sp,+00000208
	c.mv	a0,a5
	addi	sp,sp,+00000210
	c.jr	ra

l2307EA34:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307EA60

l2307EA3C:
	lui	a0,000230AA
	c.mv	a1,sp
	addi	a0,a0,-0000060C
	jal	ra,000000002307C632
	lui	a0,000230AA
	c.addi4spn	a1,00000100
	addi	a0,a0,-00000600
	jal	ra,000000002307C632
	c.addi4spn	a1,00000100
	c.mv	a0,sp
	c.jal	000000002307EE4C
	c.j	000000002307EA22

l2307EA60:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.addi4spn	a2,00000100
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,000000002307E924
	c.li	a5,00000004
	c.bnez	a0,000000002307EA24

l2307EA72:
	lui	a0,000230C5
	c.addi4spn	a2,00000100
	c.mv	a1,sp
	addi	a0,a0,-000000D4
	jal	ra,0000000023082388
	c.addi4spn	a1,00000100
	c.mv	a0,sp
	c.jal	000000002307EE4C
	c.mv	a5,a0
	c.beqz	a0,000000002307EA24

l2307EA8C:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	jal	ra,000000002307DA08
	c.mv	a1,a0
	lui	a0,000230C5
	addi	a0,a0,-000000A8
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	a5,00000002
	c.j	000000002307EA24

;; at_response: 2307EAB6
;;   Called from:
;;     2307E564 (in at_parse)
;;     2307E6BC (in at_parse)
at_response proc
	c.li	a5,0000001B
	beq	a0,a5,000000002307EB84

l2307EABC:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.bnez	a0,000000002307EAEA

l2307EAC4:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230B3
	addi	a0,a0,+00000304

l2307EAD8:
	jal	ra,000000002307C77E

l2307EADC:
	addi	a0,s0,-00000700
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002307C77E

l2307EAEA:
	c.li	a5,00000002
	bne	a0,a5,000000002307EB06

l2307EAF0:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	addi	a0,a0,+000005E0
	c.j	000000002307EAD8

l2307EB06:
	lui	a4,000230C5
	addi	a3,a4,+00000610
	c.li	a5,00000000
	addi	a4,a4,+00000610
	c.li	a2,00000018

l2307EB16:
	lbu	a1,a3,+00000000
	bne	a1,a0,000000002307EB5C

l2307EB1E:
	c.slli	a5,03
	c.add	a5,a4
	c.lw	a5,4(a1)
	c.li	a5,00000017
	lui	s0,000230C7
	c.swsp	a1,00000084
	bne	a0,a5,000000002307EB48

l2307EB30:
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a2,00000064
	lui	a0,000230C7
	addi	a0,a0,-00000688

l2307EB42:
	jal	ra,000000002307C77E
	c.j	000000002307EADC

l2307EB48:
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C5
	c.lwsp	a2,00000064
	addi	a0,a0,+000005E8
	c.j	000000002307EB42

l2307EB5C:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,000000002307EB16

l2307EB64:
	c.li	a5,00000001
	beq	a0,a5,000000002307EB7C

l2307EB6A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,000230C5
	addi	a0,a0,+000005F4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2307EB7C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2307EB84:
	c.jr	ra

;; at_reset: 2307EB86
;;   Called from:
;;     2307E1EE (in reset_handler)
at_reset proc
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307EBA4

l2307EB90:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2307EBA4:
	c.li	a0,00000000
	c.jr	ra

;; at_version: 2307EBA8
;;   Called from:
;;     2307E334 (in version_handler)
at_version proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-000007F0
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307EBDE

l2307EBD6:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,00000015
	c.jalr	a5

l2307EBDE:
	lw	ra,sp,+0000012C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; at_restore: 2307EBE8
;;   Called from:
;;     2307E314 (in restore_handler)
at_restore proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-000007E4
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307EC1E

l2307EC16:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,00000016
	c.jalr	a5

l2307EC1E:
	lw	ra,sp,+0000012C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; at_uart_config_get: 2307EC28
;;   Called from:
;;     2307E12C (in uart_config_handler)
at_uart_config_get proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-000007D8
	addi	a0,a0,-0000012C
	sw	s0,sp,+00000128
	sw	ra,sp,+0000012C
	sw	s1,sp,+00000124
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.li	s0,00000006
	c.beqz	a5,000000002307EC96

l2307EC60:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,00000018
	c.jalr	a5
	c.mv	s0,a0
	c.bnez	a0,000000002307EC96

l2307EC6C:
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lwsp	zero,000001F4
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000A4
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	lui	a0,000230C6
	addi	a0,a0,-00000734
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E

l2307EC96:
	c.mv	a0,s0
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	c.addi16sp	00000130
	c.jr	ra

;; at_uart_config: 2307ECA8
;;   Called from:
;;     2307E1B4 (in uart_config_handler)
at_uart_config proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	sw	s1,sp,+00000134
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,000230C6
	lui	a0,000230C5
	addi	a1,a1,-000007C4
	addi	a0,a0,-0000012C
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	a4,00000080
	c.swsp	a5,00000000
	sw	ra,sp,+0000013C
	jal	ra,0000000023082388
	c.lwsp	zero,000000E4
	c.lwsp	a2,00000084
	c.lwsp	s0,000000A4
	c.swsp	a5,00000018
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.lwsp	tp,000000C4
	c.swsp	a5,00000088
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.swsp	s1,0000008C
	c.swsp	s0,00000010
	c.swsp	a2,00000090
	c.swsp	a3,00000014
	c.swsp	a4,00000094
	c.beqz	a5,000000002307ED06

l2307ECFE:
	c.li	a2,00000000
	c.addi4spn	a1,00000014
	c.li	a0,00000017
	c.jalr	a5

l2307ED06:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	c.li	a0,00000000
	c.addi16sp	00000140
	c.jr	ra

;; at_deep_sleep_mode: 2307ED18
;;   Called from:
;;     2307DE6A (in deep_sleep_handler)
at_deep_sleep_mode proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	sw	s1,sp,+00000124
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,000230C6
	lui	a0,000230C5
	addi	a1,a1,-000007B4
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.swsp	s1,00000084
	c.swsp	s0,00000008
	c.li	a0,00000003
	c.beqz	a5,000000002307ED60

l2307ED58:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,0000001A
	c.jalr	a5

l2307ED60:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	c.addi16sp	00000130
	c.jr	ra

;; at_wifi_mode: 2307ED70
;;   Called from:
;;     2307DB1C (in wifi_mode_handler)
at_wifi_mode proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	lui	a1,000230C6
	c.mv	s0,a0
	lui	a0,000230C5
	addi	a1,a1,-000007A0
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.swsp	s0,00000084
	c.li	a0,00000000
	c.beqz	a5,000000002307EDB0

l2307EDA8:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,0000001C
	c.jalr	a5

l2307EDB0:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	c.addi16sp	00000130
	c.jr	ra

;; at_wifi_mode_get: 2307EDBC
;;   Called from:
;;     2307DAE0 (in wifi_mode_handler)
at_wifi_mode_get proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-00000790
	addi	a0,a0,-0000012C
	sw	s0,sp,+00000128
	sw	ra,sp,+0000012C
	sw	s1,sp,+00000124
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.li	s0,00000000
	c.beqz	a5,000000002307EE22

l2307EDF4:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,0000001D
	c.jalr	a5
	c.mv	s0,a0
	c.bnez	a0,000000002307EE22

l2307EE00:
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lwsp	a2,00000064
	lui	a0,000230C6
	addi	a0,a0,-00000718
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E

l2307EE22:
	c.mv	a0,s0
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	c.addi16sp	00000130
	c.jr	ra

;; at_get_apinfo: 2307EE34
;;   Called from:
;;     2307EA20 (in join_ap_handler)
at_get_apinfo proc
	lui	a5,00042028
	lw	t1,a5,-000006BC
	beq	t1,zero,000000002307EE48

l2307EE40:
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,0000001F
	c.jr	t1

l2307EE48:
	c.li	a0,00000002
	c.jr	ra

;; at_join_ap: 2307EE4C
;;   Called from:
;;     2307EA5C (in join_ap_handler)
;;     2307EA86 (in join_ap_handler)
at_join_ap proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	sw	s1,sp,+00000124
	c.mv	s0,a0
	c.mv	s1,a1
	lui	a0,000230C5
	lui	a1,000230C6
	addi	a1,a1,-0000077C
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A4170
	c.mv	a1,s1
	addi	a0,sp,+0000002D
	jal	ra,00000000230A4170
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.mv	a0,s0
	c.swsp	a5,00000080
	jal	ra,00000000230A4220
	c.lwsp	tp,000000E4
	addi	a4,zero,+00000020
	sw	a0,a5,+0000013C
	bltu	a4,a0,000000002307EEFE

l2307EEA2:
	addi	a0,a5,+00000118
	addi	a2,zero,+00000021
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lwsp	tp,00000044
	addi	a2,zero,+00000041
	c.li	a1,00000000
	addi	a0,a0,+000001D8
	jal	ra,00000000230A3A68
	c.lwsp	tp,00000044
	c.mv	a1,s0
	addi	a0,a0,+00000118
	jal	ra,00000000230A4170
	c.lwsp	tp,00000044
	c.mv	a1,s1
	addi	a0,a0,+000001D8
	jal	ra,00000000230A4170
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307EEEC

l2307EEE2:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,0000001E
	c.jalr	a5
	c.beqz	a0,000000002307EEEE

l2307EEEC:
	c.li	a0,00000002

l2307EEEE:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	c.addi16sp	00000130
	c.jr	ra

l2307EEFE:
	c.li	a0,00000011
	c.j	000000002307EEEE

;; at_disconnect: 2307EF02
;;   Called from:
;;     2307E2EA (in disconnect_handler)
at_disconnect proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-00000770
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307EF3A

l2307EF30:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	addi	a0,zero,+00000022
	c.jalr	a5

l2307EF3A:
	lw	ra,sp,+0000012C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; at_set_ap: 2307EF44
;;   Called from:
;;     2307E9E8 (in ap_cfg_handler)
at_set_ap proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	sw	s1,sp,+00000134
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,000230C6
	lui	a0,000230C5
	addi	a1,a1,-00000760
	addi	a0,a0,-0000012C
	c.swsp	a3,00000084
	sw	ra,sp,+0000013C
	sw	s2,sp,+00000130
	c.mv	s2,a2
	jal	ra,0000000023082388
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A3A68
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s1
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A382C
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,00000000230A382C
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.lwsp	a2,000000A4
	c.swsp	a5,00000088
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.swsp	s2,000000CC
	c.swsp	a3,000000D0
	c.li	a0,00000002
	c.beqz	a5,000000002307EFD0

l2307EFC6:
	c.li	a2,00000000
	c.addi4spn	a1,00000014
	addi	a0,zero,+00000027
	c.jalr	a5

l2307EFD0:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	c.addi16sp	00000140
	c.jr	ra

;; at_ap_sta_get: 2307EFE4
;;   Called from:
;;     2307E9B4 (in ap_cfg_handler)
at_ap_sta_get proc
	lui	a1,000230C6
	lui	a0,000230C5
	c.addi16sp	FFFFFED0
	addi	a1,a1,-00000754
	addi	a0,a0,-0000012C
	sw	ra,sp,+0000012C
	jal	ra,0000000023082388
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.beqz	a5,000000002307F01C

l2307F012:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	addi	a0,zero,+00000028
	c.jalr	a5

l2307F01C:
	lw	ra,sp,+0000012C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; at_http_request: 2307F026
;;   Called from:
;;     2307DBD6 (in http_req)
;;     2307DD70 (in base_station_info)
at_http_request proc
	c.addi16sp	FFFFFEC0
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	c.mv	s1,a1
	c.mv	s2,a0
	lui	a1,000230C6
	lui	a0,000230C5
	addi	a1,a1,-00000744
	addi	a0,a0,-0000012C
	c.swsp	a3,00000084
	sw	ra,sp,+0000013C
	sw	s0,sp,+00000138
	c.swsp	a4,00000004
	c.mv	s0,a2
	jal	ra,0000000023082388
	addi	a2,zero,+00000080
	c.mv	a1,s2
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A382C
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.lwsp	a2,000000A4
	c.swsp	a5,00000088
	lui	a5,00042028
	lw	a5,a5,-000006BC
	sb	s1,sp,+0000009C
	c.swsp	a3,00000050
	sb	s0,sp,+0000009D
	c.li	a0,00000006
	c.beqz	a5,000000002307F090

l2307F084:
	c.lwsp	s0,000000C4
	c.addi4spn	a1,00000014
	addi	a0,zero,+00000035
	c.mv	a2,a4
	c.jalr	a5

l2307F090:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	c.addi16sp	00000140
	c.jr	ra

;; get_text_para: 2307F0A4
get_text_para proc
	c.addi16sp	FFFFFEF0
	sw	s2,sp,+00000100
	c.mv	s2,a0
	lw	a3,s2,+00000000
	sw	ra,sp,+0000010C
	sw	s0,sp,+00000108
	sw	s1,sp,+00000104
	c.mv	a0,a1
	sb	zero,sp,+00000000
	andi	a6,a2,+000001FF
	c.li	a4,00000000
	addi	a5,zero,+0000002C
	c.li	a7,0000000D
	c.li	t1,0000000A
	addi	t3,zero,+00000022

l2307F0D4:
	blt	a4,a6,000000002307F0E0

l2307F0D8:
	c.mv	s1,a3
	c.li	s0,00000000

l2307F0DC:
	c.li	a5,00000001
	c.j	000000002307F142

l2307F0E0:
	lbu	a1,a3,+00000000
	addi	s1,a3,+00000001
	beq	a1,a5,000000002307F11E

l2307F0EC:
	bne	a1,a7,000000002307F108

l2307F0F0:
	lbu	a7,a3,+00000001
	c.lui	a5,00001000
	c.li	a1,0000000A
	addi	a5,a5,-00000800
	bne	a7,a1,000000002307F104

l2307F100:
	addi	s1,a3,+00000002

l2307F104:
	c.li	s0,00000001
	c.j	000000002307F124

l2307F108:
	beq	a1,t1,000000002307F160

l2307F10C:
	beq	a1,t3,000000002307F11A

l2307F110:
	c.addi4spn	a3,00000100
	c.add	a3,a4
	sb	a1,a3,+00000F00
	c.addi	a4,00000001

l2307F11A:
	c.mv	a3,s1
	c.j	000000002307F0D4

l2307F11E:
	addi	a5,zero,+00000400
	c.li	s0,00000000

l2307F124:
	c.and	a5,a2
	c.beqz	a5,000000002307F0DC

l2307F128:
	c.li	a5,00000001
	bge	a4,a6,000000002307F142

l2307F12E:
	c.addi4spn	a5,00000100
	c.add	a5,a4
	addi	a2,a4,+00000001
	c.mv	a1,sp
	sb	zero,a5,+00000F00
	jal	ra,00000000230A382C
	c.li	a5,00000000

l2307F142:
	slli	a0,a5,00000001
	c.or	a0,s0
	lw	ra,sp,+0000010C
	lw	s0,sp,+00000108
	sw	s1,s2,+00000000
	lw	s1,sp,+00000104
	lw	s2,sp,+00000100
	c.addi16sp	00000110
	c.jr	ra

l2307F160:
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	c.j	000000002307F104

;; get_tdata_para: 2307F168
get_tdata_para proc
	c.addi16sp	FFFFFEF0
	sw	s2,sp,+00000100
	c.mv	s2,a0
	lw	a3,s2,+00000000
	sw	ra,sp,+0000010C
	sw	s0,sp,+00000108
	sw	s1,sp,+00000104
	c.mv	a0,a1
	sb	zero,sp,+00000000
	andi	a6,a2,+000001FF
	c.li	a4,00000000
	c.li	a5,0000000D
	c.li	a7,0000000A

l2307F190:
	bne	a6,a4,000000002307F19C

l2307F194:
	c.mv	s1,a3
	c.li	s0,00000000

l2307F198:
	c.li	a5,00000001
	c.j	000000002307F1DE

l2307F19C:
	lbu	a1,a3,+00000000
	addi	s1,a3,+00000001
	bne	a1,a5,000000002307F1FC

l2307F1A8:
	lbu	a7,a3,+00000001
	c.lui	a5,00001000
	c.li	a1,0000000A
	addi	a5,a5,-00000800
	bne	a7,a1,000000002307F1BC

l2307F1B8:
	addi	s1,a3,+00000002

l2307F1BC:
	c.and	a5,a2
	c.li	s0,00000001
	c.beqz	a5,000000002307F198

l2307F1C2:
	c.li	a5,00000001
	c.beqz	a4,000000002307F1DE

l2307F1C6:
	bge	a4,a6,000000002307F1DE

l2307F1CA:
	c.addi4spn	a5,00000100
	c.add	a5,a4
	addi	a2,a4,+00000001
	c.mv	a1,sp
	sb	zero,a5,+00000F00
	jal	ra,00000000230A382C
	c.li	a5,00000000

l2307F1DE:
	slli	a0,a5,00000001
	c.or	a0,s0
	lw	ra,sp,+0000010C
	lw	s0,sp,+00000108
	sw	s1,s2,+00000000
	lw	s1,sp,+00000104
	lw	s2,sp,+00000100
	c.addi16sp	00000110
	c.jr	ra

l2307F1FC:
	beq	a1,a7,000000002307F20E

l2307F200:
	add	a3,sp,a4
	sb	a1,a3,+00000000
	c.addi	a4,00000001
	c.mv	a3,s1
	c.j	000000002307F190

l2307F20E:
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	c.j	000000002307F1BC

;; get_di_para: 2307F216
get_di_para proc
	c.addi16sp	FFFFFED0
	sw	s3,sp,+0000011C
	sw	ra,sp,+0000012C
	sw	s0,sp,+00000128
	sw	s1,sp,+00000124
	sw	s2,sp,+00000120
	c.lw	a0,0(s0)
	c.mv	s3,a0
	sb	zero,sp,+00000010
	c.li	a4,00000000
	addi	a6,zero,+0000002C
	c.li	a7,0000000D
	c.li	t1,0000000A
	addi	t3,zero,+0000003A
	c.li	t4,00000009
	c.li	a5,0000000B

l2307F246:
	lbu	a3,s0,+00000000
	bne	a3,a6,000000002307F29C

l2307F24E:
	c.addi	s0,00000001
	addi	a5,zero,+00000400
	c.li	s1,00000000
	c.li	s2,00000000

l2307F258:
	c.and	a5,a2
	c.beqz	a5,000000002307F2E8

l2307F25C:
	c.beqz	a4,000000002307F2E8

l2307F25E:
	c.li	a5,0000000B
	beq	a4,a5,000000002307F2E8

l2307F264:
	c.addi4spn	a5,00000110
	c.add	a4,a5
	c.addi4spn	a0,00000010
	c.swsp	a1,00000084
	sb	zero,a4,+00000F00
	jal	ra,00000000230A3618
	c.lwsp	a2,00000064
	c.sw	a1,0(a0)

l2307F278:
	sw	s0,s3,+00000000
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	slli	a0,s1,00000001
	or	a0,a0,s2
	lw	s1,sp,+00000124
	lw	s2,sp,+00000120
	lw	s3,sp,+0000011C
	c.addi16sp	00000130
	c.jr	ra

l2307F29C:
	bne	a3,a7,000000002307F2B8

l2307F2A0:
	lbu	a0,s0,+00000001
	c.lui	a5,00001000
	c.li	a3,0000000A
	addi	a5,a5,-00000800
	bne	a0,a3,000000002307F2EC

l2307F2B0:
	c.addi	s0,00000002

l2307F2B2:
	c.li	s1,00000000
	c.li	s2,00000001
	c.j	000000002307F258

l2307F2B8:
	bne	a3,t1,000000002307F2C6

l2307F2BC:
	c.lui	a5,00001000
	c.addi	s0,00000001
	addi	a5,a5,-00000800
	c.j	000000002307F2B2

l2307F2C6:
	beq	a3,t3,000000002307F2BC

l2307F2CA:
	addi	a0,a3,-00000030
	andi	a0,a0,+000000FF
	bltu	t4,a0,000000002307F2E6

l2307F2D6:
	c.addi4spn	a0,00000010
	c.add	a0,a4
	sb	a3,a0,+00000000
	c.addi	a4,00000001
	c.addi	s0,00000001
	bne	a4,a5,000000002307F246

l2307F2E6:
	c.li	s2,00000000

l2307F2E8:
	c.li	s1,00000001
	c.j	000000002307F278

l2307F2EC:
	c.addi	s0,00000001
	c.j	000000002307F2B2

;; get_ip_para: 2307F2F0
get_ip_para proc
	c.addi16sp	FFFFFEA0
	sw	s1,sp,+00000154
	sw	s2,sp,+00000150
	sw	s3,sp,+0000014C
	sw	s4,sp,+00000148
	sw	s5,sp,+00000144
	sw	s7,sp,+0000013C
	sw	s8,sp,+00000138
	sw	s9,sp,+00000134
	sw	s10,sp,+00000130
	sw	s11,sp,+0000012C
	sw	ra,sp,+0000015C
	sw	s0,sp,+00000158
	sw	s6,sp,+00000140
	c.swsp	a2,00000084
	lw	s6,a0,+00000000
	c.mv	s2,a0
	c.mv	s3,a1
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	sb	zero,sp,+00000020
	c.li	s1,00000000
	jal	ra,00000000230A3A68
	c.li	s5,00000000
	c.li	s7,0000000D
	c.li	s8,0000000A
	addi	s9,zero,+00000022
	addi	s10,zero,+0000002E
	c.li	s11,00000009
	c.li	s4,00000002

l2307F352:
	lbu	a4,s6,+00000000
	addi	a5,zero,+0000002C
	c.mv	s0,s6
	bne	a4,a5,000000002307F3AC

l2307F360:
	addi	s0,s6,+00000001
	addi	a2,zero,+00000400
	c.li	s6,00000000
	c.li	s4,00000000

l2307F36C:
	c.lwsp	a2,000000E4
	c.and	a2,a5
	c.beqz	a2,000000002307F428

l2307F372:
	c.addi	s1,FFFFFFFF
	c.li	a5,00000002
	bltu	a5,s1,000000002307F428

l2307F37A:
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3618
	addi	a5,zero,+000000FF
	bltu	a5,a0,000000002307F428

l2307F388:
	c.addi4spn	a5,00000120
	c.add	a5,s5
	sb	a0,a5,+00000F00
	c.li	a5,00000003
	bne	s5,a5,000000002307F428

l2307F396:
	c.li	a2,00000004
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230A3A68
	c.li	a2,00000004
	c.addi4spn	a1,00000020
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.j	000000002307F42A

l2307F3AC:
	bne	a4,s7,000000002307F3CA

l2307F3B0:
	lbu	a4,s6,+00000001
	c.lui	a2,00001000
	c.li	a5,0000000A
	addi	a2,a2,-00000800
	bne	a4,a5,000000002307F490

l2307F3C0:
	addi	s0,s6,+00000002

l2307F3C4:
	c.li	s6,00000000
	c.li	s4,00000001
	c.j	000000002307F36C

l2307F3CA:
	bne	a4,s8,000000002307F3DA

l2307F3CE:
	c.lui	a2,00001000
	addi	s0,s6,+00000001
	addi	a2,a2,-00000800
	c.j	000000002307F3C4

l2307F3DA:
	bne	a4,s9,000000002307F3EC

l2307F3DE:
	addi	s0,s6,+00000001

l2307F3E2:
	c.li	a4,00000004
	c.addi	s6,00000001
	bne	s5,a4,000000002307F352

l2307F3EA:
	c.j	000000002307F426

l2307F3EC:
	bne	a4,s10,000000002307F46E

l2307F3F0:
	addi	a4,s1,-00000001
	c.li	s1,00000001
	bltu	s4,a4,000000002307F416

l2307F3FA:
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3618
	addi	a4,zero,+000000FF
	bltu	a4,a0,000000002307F416

l2307F408:
	c.addi4spn	a5,00000120
	add	a4,a5,s5
	sb	a0,a4,+00000F00
	c.addi	s5,00000001
	c.li	s1,00000000

l2307F416:
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	addi	s0,s6,+00000001
	jal	ra,00000000230A3A68
	c.beqz	s1,000000002307F3E2

l2307F426:
	c.li	s4,00000000

l2307F428:
	c.li	s6,00000001

l2307F42A:
	sw	s0,s2,+00000000
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	slli	a0,s6,00000001
	or	a0,a0,s4
	lw	s1,sp,+00000154
	lw	s2,sp,+00000150
	lw	s3,sp,+0000014C
	lw	s4,sp,+00000148
	lw	s5,sp,+00000144
	lw	s6,sp,+00000140
	lw	s7,sp,+0000013C
	lw	s8,sp,+00000138
	lw	s9,sp,+00000134
	lw	s10,sp,+00000130
	lw	s11,sp,+0000012C
	c.addi16sp	00000160
	c.jr	ra

l2307F46E:
	addi	a2,a4,-00000030
	andi	a2,a2,+000000FF
	bltu	s11,a2,000000002307F426

l2307F47A:
	blt	s4,s1,000000002307F426

l2307F47E:
	c.addi4spn	a5,00000120
	add	a2,a5,s1
	addi	s0,s6,+00000001
	sb	a4,a2,+00000EFC
	c.addi	s1,00000001
	c.j	000000002307F3E2

l2307F490:
	addi	s0,s6,+00000001
	c.j	000000002307F3C4

;; hex_to_num: 2307F496
;;   Called from:
;;     2307F57E (in get_hex_para)
;;     2307F58A (in get_hex_para)
;;     2307F646 (in get_hex_para)
;;     2307F650 (in get_hex_para)
hex_to_num proc
	addi	a5,a0,-00000030
	andi	a2,a5,+000000FF
	c.li	a3,00000009
	c.mv	a4,a0
	bltu	a3,a2,000000002307F4AA

l2307F4A6:
	c.mv	a0,a5
	c.jr	ra

l2307F4AA:
	addi	a5,a0,-00000041
	andi	a5,a5,+000000FF
	c.li	a3,00000005
	bltu	a3,a5,000000002307F4BE

l2307F4B8:
	addi	a0,a0,-00000037
	c.jr	ra

l2307F4BE:
	addi	a5,a0,-00000061
	andi	a5,a5,+000000FF
	c.li	a0,FFFFFFFF
	bltu	a3,a5,000000002307F4D0

l2307F4CC:
	addi	a0,a4,-00000057

l2307F4D0:
	c.jr	ra

;; get_hex_para: 2307F4D2
get_hex_para proc
	c.addi16sp	FFFFFEA0
	sw	s2,sp,+00000150
	sw	s3,sp,+0000014C
	sw	s4,sp,+00000148
	sw	s5,sp,+00000144
	sw	s6,sp,+00000140
	sw	s7,sp,+0000013C
	sw	s8,sp,+00000138
	sw	s9,sp,+00000134
	sw	s10,sp,+00000130
	sw	s11,sp,+0000012C
	sw	ra,sp,+0000015C
	sw	s0,sp,+00000158
	sw	s1,sp,+00000154
	c.lw	a0,0(s0)
	c.mv	s4,a0
	c.mv	s5,a1
	sb	zero,sp,+00000020
	andi	s6,a2,+000001FF
	c.li	a3,00000000
	c.li	s3,00000000
	addi	s2,zero,+0000002C
	c.li	s7,0000000D
	c.li	s8,0000000A
	addi	s9,zero,+0000003A
	addi	s10,zero,+00000022
	c.li	s11,00000001
	c.li	a5,00000002
	c.li	a6,00000009
	c.li	a7,00000005

l2307F532:
	blt	s3,s6,000000002307F53C

l2307F536:
	c.li	s2,00000000

l2307F538:
	c.li	s1,00000001
	c.j	000000002307F5AC

l2307F53C:
	lbu	a4,s0,+00000000
	bne	a4,s2,000000002307F550

l2307F544:
	c.addi	s0,00000001

l2307F546:
	addi	a5,zero,+00000400
	c.li	s1,00000000
	c.li	s2,00000000
	c.j	000000002307F56A

l2307F550:
	bne	a4,s7,000000002307F5F4

l2307F554:
	lbu	a1,s0,+00000001
	c.lui	a5,00001000
	c.li	a4,0000000A
	addi	a5,a5,-00000800
	beq	a1,a4,000000002307F5F0

l2307F564:
	c.addi	s0,00000001

l2307F566:
	c.li	s1,00000000
	c.li	s2,00000001

l2307F56A:
	c.and	a5,a2
	c.beqz	a5,000000002307F538

l2307F56E:
	c.li	a5,00000002
	bne	a3,a5,000000002307F538

l2307F574:
	lbu	a0,sp,+0000001C
	addi	s8,s3,+00000001
	c.addi	s0,00000001
	jal	ra,000000002307F496
	c.mv	s7,a0
	lbu	a0,sp,+0000001D
	c.slli	s7,04
	jal	ra,000000002307F496
	c.addi4spn	a5,00000120
	c.add	s3,a5
	c.add	s7,a0
	c.mv	a2,s6
	c.li	a1,00000000
	c.mv	a0,s5
	sb	s7,s3,+00000F00
	jal	ra,00000000230A3A68
	c.mv	a2,s8
	c.addi4spn	a1,00000020
	c.mv	a0,s5
	jal	ra,00000000230A382C

l2307F5AC:
	sw	s0,s4,+00000000
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	slli	a0,s1,00000001
	or	a0,a0,s2
	lw	s1,sp,+00000154
	lw	s2,sp,+00000150
	lw	s3,sp,+0000014C
	lw	s4,sp,+00000148
	lw	s5,sp,+00000144
	lw	s6,sp,+00000140
	lw	s7,sp,+0000013C
	lw	s8,sp,+00000138
	lw	s9,sp,+00000134
	lw	s10,sp,+00000130
	lw	s11,sp,+0000012C
	c.addi16sp	00000160
	c.jr	ra

l2307F5F0:
	c.addi	s0,00000002
	c.j	000000002307F566

l2307F5F4:
	bne	a4,s8,000000002307F602

l2307F5F8:
	c.lui	a5,00001000
	c.addi	s0,00000001
	addi	a5,a5,-00000800
	c.j	000000002307F566

l2307F602:
	beq	a4,s9,000000002307F546

l2307F606:
	bne	a4,s10,000000002307F60E

l2307F60A:
	c.addi	s0,00000001
	c.j	000000002307F532

l2307F60E:
	blt	s11,a3,000000002307F63C

l2307F612:
	addi	a1,a4,-00000030
	andi	a1,a1,+000000FF
	bgeu	a6,a1,000000002307F62E

l2307F61E:
	andi	a1,a4,-00000021
	addi	a1,a1,-00000041
	andi	a1,a1,+000000FF
	bltu	a7,a1,000000002307F536

l2307F62E:
	c.addi4spn	a1,00000120
	c.add	a1,a3
	c.addi	s0,00000001
	sb	a4,a1,+00000EFC
	c.addi	a3,00000001
	c.j	000000002307F532

l2307F63C:
	c.swsp	a2,00000084
	bne	a3,a5,000000002307F536

l2307F642:
	lbu	a0,sp,+0000001C
	jal	ra,000000002307F496
	c.mv	s1,a0
	lbu	a0,sp,+0000001D
	jal	ra,000000002307F496
	c.addi4spn	a5,00000120
	slli	a4,s1,00000004
	add	a3,a5,s3
	c.add	a0,a4
	sb	a0,a3,+00000F00
	c.addi	s3,00000001
	c.li	a3,00000000
	c.li	a7,00000005
	c.li	a6,00000009
	c.lwsp	a2,00000084
	c.li	a5,00000002
	c.j	000000002307F532

;; get_hi_para: 2307F672
get_hi_para proc
	c.addi16sp	FFFFFEE0
	sw	s3,sp,+0000010C
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	c.mv	s3,a0
	c.lw	a0,0(a0)
	sb	zero,sp,+00000000
	c.li	a4,00000000
	addi	a7,zero,+0000002C
	c.li	t1,0000000D
	c.li	t3,0000000A
	addi	t4,zero,+00000022
	c.li	t5,00000009
	c.li	t6,00000005
	c.li	a5,0000000B

l2307F6A4:
	lbu	a3,a0,+00000000
	c.mv	s0,a0
	bne	a3,a7,000000002307F702

l2307F6AE:
	addi	s0,a0,+00000001
	addi	a5,zero,+00000400
	c.li	s1,00000000
	c.li	s2,00000000

l2307F6BA:
	c.and	a5,a2
	c.beqz	a5,000000002307F73E

l2307F6BE:
	c.beqz	a4,000000002307F73E

l2307F6C0:
	c.li	a5,0000000A
	blt	a5,a4,000000002307F73E

l2307F6C6:
	c.addi4spn	a5,00000100
	c.mv	a2,a1
	lui	a1,000230C6
	c.add	a4,a5
	addi	a1,a1,-000006F4
	c.mv	a0,sp
	sb	zero,a4,+00000F00
	jal	ra,00000000230823F6

l2307F6DE:
	sw	s0,s3,+00000000
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	slli	a0,s1,00000001
	or	a0,a0,s2
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	lw	s3,sp,+0000010C
	c.addi16sp	00000120
	c.jr	ra

l2307F702:
	bne	a3,t1,000000002307F71E

l2307F706:
	lbu	a0,a0,+00000001
	c.lui	a5,00001000
	c.li	a3,0000000A
	addi	a5,a5,-00000800
	bne	a0,a3,000000002307F770

l2307F716:
	c.addi	s0,00000002

l2307F718:
	c.li	s1,00000000
	c.li	s2,00000001
	c.j	000000002307F6BA

l2307F71E:
	bne	a3,t3,000000002307F72E

l2307F722:
	c.lui	a5,00001000
	addi	s0,a0,+00000001
	addi	a5,a5,-00000800
	c.j	000000002307F718

l2307F72E:
	bne	a3,t4,000000002307F742

l2307F732:
	addi	s0,a0,+00000001

l2307F736:
	c.addi	a0,00000001
	bne	a4,a5,000000002307F6A4

l2307F73C:
	c.li	s2,00000000

l2307F73E:
	c.li	s1,00000001
	c.j	000000002307F6DE

l2307F742:
	addi	a6,a3,-00000030
	andi	a6,a6,+000000FF
	bgeu	t5,a6,000000002307F75E

l2307F74E:
	andi	a6,a3,-00000021
	addi	a6,a6,-00000041
	andi	a6,a6,+000000FF
	bltu	t6,a6,000000002307F73C

l2307F75E:
	c.addi4spn	s1,00000100
	add	a6,s1,a4
	addi	s0,a0,+00000001
	sb	a3,a6,+00000F00
	c.addi	a4,00000001
	c.j	000000002307F736

l2307F770:
	c.addi	s0,00000001
	c.j	000000002307F718

;; at_get_newline: 2307F774
;;   Called from:
;;     2307F7D6 (in at_get_parameters)
at_get_newline proc
	lbu	a5,a0,+00000000
	c.li	a4,0000000A
	beq	a5,a4,000000002307F78A

l2307F77E:
	c.li	a4,0000000D
	c.li	a0,00000000
	beq	a5,a4,000000002307F78C

l2307F786:
	c.li	a0,00000003
	c.jr	ra

l2307F78A:
	c.li	a0,00000000

l2307F78C:
	c.jr	ra

;; at_get_parameters: 2307F78E
;;   Called from:
;;     23000EC4 (in __usr_at_cmd_demo)
;;     2307DA9E (in wifi_supports)
;;     2307DAB2 (in attention_handler)
;;     2307DB00 (in wifi_mode_handler)
;;     2307DB9C (in http_req)
;;     2307DC8E (in domain_name_resolution)
;;     2307DD48 (in base_station_info)
;;     2307DE4A (in deep_sleep_handler)
;;     2307DF04 (in setautoconnect_handler)
;;     2307DFE4 (in scan_handler_opt)
;;     2307E054 (in scan_handler)
;;     2307E076 (in scan_handler)
;;     2307E150 (in uart_config_handler)
;;     2307E1E4 (in reset_handler)
;;     2307E290 (in echo_on_handler)
;;     2307E30A (in restore_handler)
;;     2307E32A (in version_handler)
;;     2307E3F2 (in help_handler)
;;     2307E81C (in ble_sync_mode)
;;     2307E90E (in set_ip_handler)
;;     2307FAB0 (in create_tcp_udp_handler)
;;     2307FAD6 (in create_tcp_udp_handler)
;;     2307FBD0 (in close_network_handler)
;;     2307FC9E (in send_data_handler)
;;     2307FD88 (in ap_server_handler)
;;     2307FEC2 (in client_ssl_config_path)
;;     2307FFDE (in client_ssl_set_sni)
;;     2308007C (in client_ssl_set_alpn)
at_get_parameters proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s4,a0
	c.lw	a0,0(a0)
	c.swsp	a0,00000084
	c.beqz	a1,000000002307F7D4

l2307F7AA:
	c.mv	s5,a2
	c.beqz	a2,000000002307F7D4

l2307F7AE:
	lui	s3,000230C6
	c.mv	s6,a3
	c.mv	s0,a1
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s7,00000005
	addi	s3,s3,-0000070C
	blt	s2,s5,000000002307F7F0

l2307F7C4:
	c.li	a0,00000000
	c.lwsp	a2,000000E4
	c.slli	a0,02
	sw	a5,s4,+00000000
	sw	s1,s6,+00000000
	c.j	000000002307F7DA

l2307F7D4:
	c.li	a1,00000002
	jal	ra,000000002307F774

l2307F7DA:
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

l2307F7F0:
	lbu	a5,s0,+00000000
	bltu	s7,a5,000000002307F83E

l2307F7F8:
	c.slli	a5,02
	c.add	a5,s3
	c.lw	a5,0(a5)
	c.lw	s0,8(a2)
	c.lw	s0,4(a1)
	c.addi4spn	a0,0000000C
	c.jr	a5
2307F806                   EF F0 FF 89 93 77 15 00 05 81       .....w....
2307F810 05 89 11 E1 85 04 C5 FB 31 04 55 F5 05 09 4D B7 ........1.U...M.
2307F820 EF F0 9F 94 DD B7 EF F0 DF CA C5 B7 EF F0 BF 9E ................
2307F830 E9 BF EF F0 1F E4 D1 BF EF F0 9F AB F9 B7       .............. 

l2307F83E:
	c.li	a0,00000004
	c.j	000000002307F7DA

;; at_queue_init: 2307F842
;;   Called from:
;;     2307CA24 (in at_cmd_init)
at_queue_init proc
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002307F890

l2307F846:
	c.beqz	a2,000000002307F890

l2307F848:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	lui	a0,0004201C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a2
	addi	s3,a0,+000002F4
	c.mv	s2,a1
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,a0,+000002F4
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	sw	s0,a5,+000006E8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	s1,s3,+00000000
	sw	s2,s3,+00000004
	c.li	a5,00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2307F890:
	c.mv	a0,a5
	c.jr	ra

;; at_queue_get: 2307F894
;;   Called from:
;;     2307E4CC (in at_parse)
;;     2307E5F4 (in at_parse)
at_queue_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201C
	c.swsp	s1,00000090
	addi	a5,s0,+000002F4
	c.swsp	ra,00000094
	c.lw	a5,8(a5)
	c.mv	s1,a0
	addi	s0,s0,+000002F4
	blt	zero,a5,000000002307F8EA

l2307F8B0:
	lui	a5,0004200F
	lw	a5,a5,+000006E8
	c.bnez	a5,000000002307F8C6

l2307F8BA:
	c.li	a0,00000002

l2307F8BC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2307F8C6:
	addi	a1,zero,+00000020
	c.mv	a0,sp
	c.jalr	a5
	bge	zero,a0,000000002307F8BA

l2307F8D2:
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	c.sub	a4,a5
	c.li	a5,00000000
	bge	a4,a0,000000002307F914

l2307F8DE:
	lui	a0,000230C6
	addi	a0,a0,-000006F0
	jal	ra,0000000023082388

l2307F8EA:
	c.lw	s0,12(a4)
	c.lw	s0,0(a5)
	addi	a3,a4,+00000001
	c.sw	s0,12(a3)
	c.add	a5,a4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000000
	c.lw	s0,12(a5)
	c.lw	s0,4(a4)
	blt	a5,a4,000000002307F908

l2307F906:
	c.li	a5,00000000

l2307F908:
	c.sw	s0,12(a5)
	c.lw	s0,8(a5)
	c.li	a0,00000000
	c.addi	a5,FFFFFFFF
	c.sw	s0,8(a5)
	c.j	000000002307F8BC

l2307F914:
	c.lw	s0,16(a3)
	c.lw	s0,0(a4)
	addi	a2,a3,+00000001
	c.sw	s0,16(a2)
	add	a2,sp,a5
	lbu	a2,a2,+00000000
	c.add	a4,a3
	sb	a2,a4,+00000000
	c.lw	s0,16(a4)
	c.lw	s0,4(a3)
	blt	a4,a3,000000002307F936

l2307F934:
	c.li	a4,00000000

l2307F936:
	c.sw	s0,16(a4)
	c.lw	s0,8(a4)
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.sw	s0,8(a4)
	bne	a0,a5,000000002307F914

l2307F944:
	c.j	000000002307F8EA

;; at_queue_peek: 2307F946
;;   Called from:
;;     2307E5E2 (in at_parse)
at_queue_peek proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201C
	c.swsp	s1,00000090
	addi	a5,s0,+000002F4
	c.swsp	ra,00000094
	c.lw	a5,8(a5)
	c.mv	s1,a0
	addi	s0,s0,+000002F4
	blt	zero,a5,000000002307F99C

l2307F962:
	lui	a5,0004200F
	lw	a5,a5,+000006E8
	c.bnez	a5,000000002307F978

l2307F96C:
	c.li	a0,00000002

l2307F96E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2307F978:
	addi	a1,zero,+00000020
	c.mv	a0,sp
	c.jalr	a5
	bge	zero,a0,000000002307F96C

l2307F984:
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	c.sub	a4,a5
	c.li	a5,00000000
	bge	a4,a0,000000002307F9AE

l2307F990:
	lui	a0,000230C6
	addi	a0,a0,-000006F0
	jal	ra,0000000023082388

l2307F99C:
	c.lw	s0,0(a5)
	c.lw	s0,12(a4)
	c.li	a0,00000000
	c.add	a5,a4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000000
	c.j	000000002307F96E

l2307F9AE:
	c.lw	s0,16(a3)
	c.lw	s0,0(a4)
	addi	a2,a3,+00000001
	c.sw	s0,16(a2)
	add	a2,sp,a5
	lbu	a2,a2,+00000000
	c.add	a4,a3
	sb	a2,a4,+00000000
	c.lw	s0,16(a4)
	c.lw	s0,4(a3)
	blt	a4,a3,000000002307F9D0

l2307F9CE:
	c.li	a4,00000000

l2307F9D0:
	c.sw	s0,16(a4)
	c.lw	s0,8(a4)
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.sw	s0,8(a4)
	bne	a0,a5,000000002307F9AE

l2307F9DE:
	c.j	000000002307F99C

;; create_tcp_udp_handler: 2307F9E0
create_tcp_udp_handler proc
	c.addi16sp	FFFFFE70
	sw	s0,sp,+00000188
	lui	a1,000230C6
	c.mv	s0,a0
	lui	a0,000230C6
	addi	a1,a1,-000006D4
	addi	a0,a0,-0000059C
	sw	ra,sp,+0000018C
	sw	s1,sp,+00000184
	jal	ra,0000000023082388
	addi	a2,zero,+0000011C
	c.li	a1,00000000
	c.addi4spn	a0,00000064
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	c.swsp	a5,000000B4
	c.lui	a3,00001000
	c.addi4spn	a5,0000006C
	c.addi4spn	a2,00000074
	c.swsp	a5,00000004
	c.swsp	a2,00000010
	addi	a5,a3,-000003FC
	c.addi4spn	a2,00000174
	c.li	a4,00000003
	addi	a3,a3,-00000300
	c.swsp	a5,00000084
	c.swsp	a5,0000000C
	c.swsp	a2,00000094
	c.swsp	a5,00000018
	c.addi4spn	a2,0000017C
	c.swsp	a5,0000009C
	c.swsp	a5,000000A8
	c.swsp	a5,00000030
	c.lw	s0,0(a5)
	sb	a4,sp,+00000004
	c.swsp	a3,00000090
	sb	a4,sp,+00000028
	sb	a4,sp,+00000034
	c.swsp	a2,0000001C
	c.swsp	a3,00000024
	sb	a4,sp,+0000004C
	c.addi4spn	a3,00000174
	sb	a4,sp,+00000058
	c.addi4spn	s1,00000070
	c.addi4spn	a4,00000178
	c.addi4spn	a2,00000074
	c.swsp	a3,00000028
	sb	zero,sp,+00000010
	c.swsp	s1,00000088
	sb	zero,sp,+0000001C
	sb	zero,sp,+00000040
	c.swsp	a2,000000A0
	c.swsp	a4,000000AC
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,000000002307FA8A

l2307FA7E:
	c.addi4spn	a1,00000064
	addi	a0,zero,+00000029

l2307FA84:
	jal	ra,000000002307E72E
	c.j	000000002307FA94

l2307FA8A:
	addi	a3,zero,+0000003D
	beq	a4,a3,000000002307FAA4

l2307FA92:
	c.li	a0,00000004

l2307FA94:
	lw	ra,sp,+0000018C
	lw	s0,sp,+00000188
	lw	s1,sp,+00000184
	c.addi16sp	00000190
	c.jr	ra

l2307FAA4:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.mv	a3,sp
	c.li	a2,00000002
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307FA92

l2307FAB6:
	c.lwsp	a3,000001D4
	c.li	a5,00000004
	blt	a5,a4,000000002307FA92

l2307FABE:
	lui	a1,000230C6
	addi	a1,a1,-00000580
	c.mv	a0,s1
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307FB3E

l2307FACE:
	c.mv	a3,sp
	c.li	a2,00000003
	c.addi4spn	a1,0000001C

l2307FAD4:
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307FA92

l2307FADC:
	c.lwsp	a3,00000174
	lui	a0,000230C6
	addi	a0,a0,-00000578
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000548
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.addi4spn	a1,00000074
	addi	a0,a0,-00000518
	jal	ra,0000000023082388
	lw	a1,sp,+00000174
	lui	a0,000230C6
	addi	a0,a0,-000004E4
	jal	ra,0000000023082388
	lw	a1,sp,+00000178
	lui	a0,000230C6
	addi	a0,a0,-000004B4
	jal	ra,0000000023082388
	lw	a1,sp,+0000017C
	lui	a0,000230C6
	addi	a0,a0,-00000480
	jal	ra,0000000023082388
	c.addi4spn	a1,00000064
	addi	a0,zero,+0000002B
	c.j	000000002307FA84

l2307FB3E:
	lui	a1,000230C6
	addi	a1,a1,-0000057C
	c.mv	a0,s1
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002307FACE

l2307FB4E:
	lui	a1,000230C6
	addi	a1,a1,-0000044C
	c.mv	a0,s1
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002307FA92

l2307FB5E:
	c.mv	a3,sp
	c.li	a2,00000003
	c.addi4spn	a1,00000040
	c.j	000000002307FAD4

;; close_network_handler: 2307FB66
close_network_handler proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	lui	a1,000230C6
	c.mv	s0,a0
	lui	a0,000230C6
	addi	a1,a1,-000006BC
	addi	a0,a0,-0000059C
	sw	ra,sp,+0000013C
	jal	ra,0000000023082388
	addi	a2,zero,+0000011C
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000008C
	c.li	a5,00000003
	sb	a5,sp,+00000008
	c.addi4spn	a5,0000001C
	c.swsp	a5,00000084
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	c.swsp	a5,00000008
	c.lw	s0,0(a5)
	addi	a4,zero,+0000003D
	lbu	a3,a5,+00000000
	beq	a3,a4,000000002307FBC4

l2307FBB6:
	c.li	a0,00000004

l2307FBB8:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	c.addi16sp	00000140
	c.jr	ra

l2307FBC4:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.addi4spn	a3,00000004
	c.li	a2,00000001
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307FBB6

l2307FBD6:
	c.lwsp	tp,000000E4
	bge	zero,a5,000000002307FBB6

l2307FBDC:
	c.lwsp	t3,00000064
	lui	a0,000230C6
	addi	a0,a0,-000005CC
	jal	ra,0000000023082388
	c.addi4spn	a1,00000014
	addi	a0,zero,+0000002D
	jal	ra,000000002307E72E
	c.j	000000002307FBB8

;; send_data_handler: 2307FBF6
send_data_handler proc
	c.addi16sp	FFFFFEA0
	sw	s0,sp,+00000158
	lui	a1,000230C6
	c.mv	s0,a0
	lui	a0,000230C6
	addi	a1,a1,-000006A4
	addi	a0,a0,-00000448
	sw	ra,sp,+0000015C
	sw	s1,sp,+00000154
	jal	ra,0000000023082388
	addi	a2,zero,+0000011C
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000009C
	c.addi4spn	a5,0000003C
	c.swsp	a5,00000004
	c.lui	a5,00001000
	addi	a4,a5,-000003FC
	addi	a5,a5,-00000300
	c.swsp	a5,00000090
	c.addi4spn	a5,00000148
	c.swsp	a5,00000094
	lui	a5,00042028
	lw	a1,a5,-0000019C
	lui	a0,000230C6
	c.li	a3,00000003
	c.addi4spn	a2,00000040
	c.addi4spn	s1,00000048
	addi	a0,a0,-0000042C
	sb	a3,sp,+00000004
	c.swsp	a4,00000084
	sb	a3,sp,+00000010
	c.swsp	a4,0000000C
	sb	a3,sp,+00000028
	c.swsp	a4,00000018
	c.swsp	a2,00000088
	sb	zero,sp,+0000001C
	c.swsp	s1,00000010
	jal	ra,0000000023082388
	c.lw	s0,0(a5)
	addi	a4,zero,+0000003D
	lbu	a3,a5,+00000000
	beq	a3,a4,000000002307FC92

l2307FC80:
	c.li	a0,00000004

l2307FC82:
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	lw	s1,sp,+00000154
	c.addi16sp	00000160
	c.jr	ra

l2307FC92:
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.mv	a3,sp
	c.li	a2,00000004
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002307F78E
	c.bnez	a0,000000002307FC80

l2307FCA4:
	c.lwsp	zero,000000C4
	c.li	a5,00000001
	bge	a5,a4,000000002307FC80

l2307FCAC:
	lui	a0,00042028
	addi	s0,a0,-000006B4
	c.lw	s0,0(a4)
	c.bnez	a4,000000002307FCFE

l2307FCB8:
	c.lwsp	t3,000001B4
	c.li	a4,00000004
	blt	a4,a3,000000002307FCCA

l2307FCC0:
	c.lwsp	ra,000000C4
	addi	a2,zero,+00000404
	bge	a2,a4,000000002307FCDA

l2307FCCA:
	addi	a2,zero,+00000518
	c.li	a1,00000000
	addi	a0,a0,-000006B4
	jal	ra,00000000230A3A68
	c.j	000000002307FC80

l2307FCDA:
	c.sw	s0,0(a5)
	lw	a5,sp,+00000148
	lui	a0,00042028
	addi	a2,zero,+00000100
	c.mv	a1,s1
	addi	a0,a0,-000006A4
	c.sw	s0,8(a3)
	c.sw	s0,12(a4)
	sh	a5,s0,+00000110
	jal	ra,00000000230A382C
	c.li	a0,00000017
	c.j	000000002307FC82

l2307FCFE:
	c.lw	s0,8(a5)
	lui	a1,00042028
	addi	a2,zero,+00000100
	c.swsp	a5,0000009C
	c.lw	s0,12(a5)
	addi	a1,a1,-000006A4
	c.mv	a0,s1
	c.swsp	a5,00000020
	lui	a5,00042028
	addi	a5,a5,-000005A2
	c.swsp	a5,000000A0
	jal	ra,00000000230A382C
	lhu	a5,s0,+00000110
	c.addi4spn	a1,00000034
	addi	a0,zero,+00000039
	sw	a5,sp,+00000148
	jal	ra,000000002307E72E
	c.j	000000002307FC82

;; ap_server_handler: 2307FD36
ap_server_handler proc
	c.addi16sp	FFFFFEA0
	c.addi4spn	a5,00000040
	c.swsp	a5,00000004
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	sw	s0,sp,+00000158
	sw	ra,sp,+0000015C
	c.addi4spn	a3,0000003C
	c.swsp	a5,00000084
	c.swsp	a3,00000088
	c.swsp	a5,0000000C
	c.addi4spn	a3,00000044
	c.swsp	a5,00000090
	c.swsp	a5,00000018
	c.lw	a0,0(a5)
	c.li	s0,00000003
	c.swsp	a3,00000010
	c.addi4spn	a3,00000048
	c.swsp	a3,00000094
	sb	s0,sp,+00000004
	sb	s0,sp,+00000010
	sb	s0,sp,+0000001C
	sb	s0,sp,+00000028
	lbu	a2,a5,+00000000
	addi	a3,zero,+0000003D
	bne	a2,a3,000000002307FDE8

l2307FD7E:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.mv	a3,sp
	c.li	a2,00000004
	c.addi4spn	a1,00000004
	jal	ra,000000002307F78E
	c.li	a5,00000004
	c.bnez	a0,000000002307FDDA

l2307FD90:
	c.lwsp	zero,000000C4
	bge	zero,a4,000000002307FDDA

l2307FD96:
	c.li	a5,00000002
	beq	a4,a5,000000002307FDAC

l2307FD9C:
	beq	a4,s0,000000002307FDAE

l2307FDA0:
	c.li	a5,00000001
	bne	a4,a5,000000002307FDB0

l2307FDA6:
	addi	a5,zero,+0000014D
	c.swsp	a5,0000009C

l2307FDAC:
	c.swsp	zero,000000A0

l2307FDAE:
	c.swsp	zero,00000024

l2307FDB0:
	c.lwsp	t0,000000C4
	c.lwsp	s1,000000A4
	c.lwsp	ra,00000084
	c.lwsp	t3,00000174
	lui	a0,000230C6
	addi	a0,a0,-00000690
	jal	ra,0000000023082388
	c.lwsp	t3,000001B4
	c.lui	a4,00010000
	c.li	a5,00000009
	bgeu	a3,a4,000000002307FDDA

l2307FDCE:
	c.addi4spn	a1,00000034
	addi	a0,zero,+00000031
	jal	ra,000000002307E72E
	c.mv	a5,a0

l2307FDDA:
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	c.mv	a0,a5
	c.addi16sp	00000160
	c.jr	ra

l2307FDE8:
	c.li	a5,00000005
	c.j	000000002307FDDA

;; client_ssl_config_path: 2307FDEC
client_ssl_config_path proc
	c.addi16sp	FFFFFE90
	addi	a2,zero,+0000011C
	c.li	a1,00000000
	sw	s2,sp,+00000160
	c.mv	s2,a0
	c.addi4spn	a0,00000044
	sw	ra,sp,+0000016C
	sw	s0,sp,+00000168
	sw	s1,sp,+00000164
	jal	ra,00000000230A3A68
	addi	a0,zero,+00000040
	jal	ra,000000002306488A
	c.swsp	a0,000000A8
	addi	a0,zero,+00000040
	jal	ra,000000002306488A
	c.swsp	a0,0000002C
	addi	a0,zero,+00000040
	jal	ra,000000002306488A
	c.mv	a4,a0
	c.swsp	a0,000000AC
	c.lwsp	s5,00000044
	c.beqz	a0,000000002307FE3A

l2307FE30:
	c.lwsp	s9,000000A4
	c.beqz	a3,000000002307FE36

l2307FE34:
	c.bnez	a4,000000002307FE62

l2307FE36:
	jal	ra,0000000023064972

l2307FE3A:
	c.lwsp	t4,00000044
	c.beqz	a0,000000002307FE42

l2307FE3E:
	jal	ra,0000000023064972

l2307FE42:
	c.lwsp	s9,00000044
	c.li	s0,00000014
	c.beqz	a0,000000002307FE4C

l2307FE48:
	jal	ra,0000000023064972

l2307FE4C:
	c.mv	a0,s0
	lw	ra,sp,+0000016C
	lw	s0,sp,+00000168
	lw	s1,sp,+00000164
	lw	s2,sp,+00000160
	c.addi16sp	00000170
	c.jr	ra

l2307FE62:
	c.addi4spn	a5,0000004C
	c.swsp	a5,00000084
	addi	a5,zero,+00000404
	c.swsp	a5,00000008
	c.addi4spn	a5,00000050
	c.swsp	a5,0000000C
	c.lui	a5,00001000
	addi	a2,a5,-000003FC
	c.swsp	a2,0000008C
	addi	a2,a5,-000003C0
	addi	a5,a5,-000007C0
	c.swsp	a5,00000020
	lw	a5,s2,+00000000
	c.li	s1,00000003
	c.swsp	a4,00000018
	sb	s1,sp,+00000008
	sb	s1,sp,+00000014
	sb	zero,sp,+00000020
	c.swsp	a0,00000090
	c.swsp	a2,00000014
	sb	zero,sp,+0000002C
	c.swsp	a2,00000098
	sb	zero,sp,+00000038
	c.swsp	a3,0000009C
	lbu	a3,a5,+00000000
	addi	a4,zero,+0000003D
	c.li	s0,00000005
	bne	a3,a4,000000002307FE4C

l2307FEB4:
	c.addi	a5,00000001
	sw	a5,s2,+00000000
	c.addi4spn	a3,00000004
	c.li	a2,00000005
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	jal	ra,000000002307F78E
	c.beqz	a0,000000002307FECC

l2307FEC8:
	c.li	s0,00000004
	c.j	000000002307FE4C

l2307FECC:
	c.lwsp	tp,000000C4
	c.li	a3,00000001
	bge	a3,a4,000000002307FEC8

l2307FED4:
	c.lwsp	a7,000000E4
	beq	a5,a3,000000002307FF60

l2307FEDA:
	blt	a3,a5,000000002307FEFA

l2307FEDE:
	c.beqz	a5,000000002307FF70

l2307FEE0:
	c.lwsp	s5,00000044
	c.beqz	a0,000000002307FEE8

l2307FEE4:
	jal	ra,0000000023064972

l2307FEE8:
	c.lwsp	t4,00000044
	c.beqz	a0,000000002307FEF0

l2307FEEC:
	jal	ra,0000000023064972

l2307FEF0:
	c.lwsp	s9,00000044
	c.beqz	a0,000000002307FEC8

l2307FEF4:
	jal	ra,0000000023064972
	c.j	000000002307FEC8

l2307FEFA:
	c.li	a3,00000002
	beq	a5,a3,000000002307FF4A

l2307FF00:
	bne	a5,s1,000000002307FEE0

l2307FF04:
	c.li	a5,00000004
	bge	a5,a4,000000002307FEE0

l2307FF0A:
	c.lwsp	s5,00000084
	c.lwsp	a7,00000064
	c.bnez	a2,000000002307FF18

l2307FF10:
	lui	a2,000230C7
	addi	a2,a2,-00000244

l2307FF18:
	c.lwsp	t4,000000A4
	c.bnez	a3,000000002307FF24

l2307FF1C:
	lui	a3,000230C7
	addi	a3,a3,-00000244

l2307FF24:
	c.lwsp	s9,000000C4
	c.bnez	a4,000000002307FF30

l2307FF28:
	lui	a4,000230C7
	addi	a4,a4,-00000244

l2307FF30:
	lui	a0,000230C6
	addi	a0,a0,-0000065C
	jal	ra,0000000023082388
	c.addi4spn	a1,00000044
	addi	a0,zero,+0000002E
	jal	ra,000000002307E72E
	c.mv	s0,a0
	c.j	000000002307FE4C

l2307FF4A:
	beq	a4,a5,000000002307FEE0

l2307FF4E:
	c.lwsp	t4,00000044
	jal	ra,0000000023064972
	c.lwsp	s9,00000044
	jal	ra,0000000023064972
	c.swsp	zero,000000AC
	c.swsp	zero,0000002C
	c.j	000000002307FF0A

l2307FF60:
	c.li	a5,00000004
	bge	a5,a4,000000002307FEE0

l2307FF66:
	c.lwsp	s5,00000044
	jal	ra,0000000023064972

l2307FF6C:
	c.swsp	zero,000000A8
	c.j	000000002307FF0A

l2307FF70:
	c.lwsp	t4,00000044
	jal	ra,0000000023064972
	c.lwsp	s9,00000044
	jal	ra,0000000023064972
	c.lwsp	s5,00000044
	jal	ra,0000000023064972
	c.swsp	zero,000000AC
	c.swsp	zero,0000002C
	c.j	000000002307FF6C

;; client_ssl_set_sni: 2307FF88
client_ssl_set_sni proc
	c.addi16sp	FFFFFEA0
	sw	s1,sp,+00000154
	addi	a2,zero,+0000011C
	c.mv	s1,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	sw	s0,sp,+00000158
	sw	ra,sp,+0000015C
	jal	ra,00000000230A3A68
	c.li	a5,00000003
	sb	a5,sp,+0000001C
	c.addi4spn	a5,0000003C
	c.swsp	a5,00000010
	addi	a5,zero,+00000404
	c.swsp	a5,00000090
	c.lui	a5,00001000
	addi	a5,a5,-00000300
	c.swsp	a5,00000018
	c.lw	s1,0(a5)
	c.addi4spn	s0,00000040
	sb	zero,sp,+00000028
	c.swsp	s0,00000094
	lbu	a3,a5,+00000000
	addi	a4,zero,+0000003D
	bne	a3,a4,0000000023080028

l2307FFD2:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.addi4spn	a3,00000018
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	jal	ra,000000002307F78E
	c.li	a5,00000004
	c.bnez	a0,0000000023080016

l2307FFE6:
	c.lwsp	s8,000000A4
	c.li	a4,00000001
	bge	a4,a3,0000000023080016

l2307FFEE:
	c.lwsp	t3,00000174
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,00000000230A4220
	c.lwsp	a2,00000064
	c.mv	a3,a0
	lui	a0,000230C6
	c.mv	a2,s0
	addi	a0,a0,-000005E4
	jal	ra,0000000023082388
	c.addi4spn	a1,00000034
	addi	a0,zero,+0000002F
	jal	ra,000000002307E72E
	c.mv	a5,a0

l23080016:
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	lw	s1,sp,+00000154
	c.mv	a0,a5
	c.addi16sp	00000160
	c.jr	ra

l23080028:
	c.li	a5,00000005
	c.j	0000000023080016

;; client_ssl_set_alpn: 2308002C
client_ssl_set_alpn proc
	c.addi16sp	FFFFFEA0
	sw	s1,sp,+00000154
	addi	a2,zero,+0000011C
	c.mv	s1,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	sw	ra,sp,+0000015C
	sw	s0,sp,+00000158
	sw	s2,sp,+00000150
	sw	s3,sp,+0000014C
	jal	ra,00000000230A3A68
	c.li	a5,00000003
	sb	a5,sp,+00000018
	c.addi4spn	a5,0000002C
	c.swsp	a5,0000008C
	c.lui	a5,00001000
	addi	a5,a5,-000003FC
	c.swsp	a5,00000010
	c.lw	s1,0(a5)
	addi	a4,zero,+0000003D
	lbu	a3,a5,+00000000
	bne	a3,a4,00000000230801BC

l23080070:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.addi4spn	a3,00000014
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,000000002307F78E
	c.li	a5,00000004
	c.bnez	a0,00000000230800C8

l23080084:
	c.lwsp	s4,000000C4
	bge	zero,a4,00000000230800C8

l2308008A:
	c.lw	s1,0(a5)
	c.li	a3,0000000D
	lbu	a4,a5,+00000000
	beq	a4,a3,00000000230800E2

l23080096:
	c.li	a3,0000000A
	c.li	s0,00000000
	beq	a4,a3,00000000230800E2

l2308009E:
	c.li	a2,0000000D
	addi	a1,zero,+0000002C

l230800A4:
	lbu	a4,a5,+00000000
	bne	a4,a2,00000000230800FE

l230800AC:
	sb	zero,a5,+00000000
	c.lw	s1,0(a0)
	c.addi	s0,00000002
	c.slli	s0,02
	jal	ra,00000000230A4220
	c.addi	a0,00000001
	c.add	a0,s0
	jal	ra,000000002306488A
	c.swsp	a0,00000018
	c.li	a5,00000014
	c.bnez	a0,000000002308010C

l230800C8:
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	lw	s1,sp,+00000154
	lw	s2,sp,+00000150
	lw	s3,sp,+0000014C
	c.mv	a0,a5
	c.addi16sp	00000160
	c.jr	ra

l230800E2:
	lui	a0,000230C6
	addi	a0,a0,-00000638
	c.swsp	zero,00000018
	jal	ra,0000000023082388

l230800F0:
	c.addi4spn	a1,00000024
	addi	a0,zero,+00000030
	jal	ra,000000002307E72E
	c.mv	a5,a0
	c.j	00000000230800C8

l230800FE:
	beq	a4,a3,00000000230800AC

l23080102:
	bne	a4,a1,0000000023080108

l23080106:
	c.addi	s0,00000001

l23080108:
	c.addi	a5,00000001
	c.j	00000000230800A4

l2308010C:
	c.add	a0,s0
	sw	zero,a0,+00000FFC
	c.lw	s1,0(a1)
	c.lwsp	a6,00000154
	c.swsp	a1,00000004
	c.add	s0,a0
	c.mv	a0,a1
	jal	ra,00000000230A4220
	c.lwsp	s0,00000064
	addi	a2,a0,+00000001
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.lwsp	a6,000001F4
	addi	a0,s0,+00000001
	addi	a3,zero,+0000002C
	c.sw	a5,0(s0)
	c.li	a5,00000001

l2308013A:
	lbu	a4,a0,-00000001
	c.beqz	a4,0000000023080158

l23080140:
	bne	a4,a3,0000000023080154

l23080144:
	sb	zero,a0,+00000FFF
	c.lwsp	a6,000001D4
	slli	a2,a5,00000002
	c.addi	a5,00000001
	c.add	a4,a2
	c.sw	a4,0(a0)

l23080154:
	c.addi	a0,00000001
	c.j	000000002308013A

l23080158:
	c.li	s0,00000000
	lui	s3,000230C6

l2308015E:
	c.lwsp	a6,000001D4
	slli	a5,s0,00000002
	c.add	a5,a4
	lw	s2,a5,+00000000
	beq	s2,zero,000000002308019A

l2308016E:
	c.mv	a2,s2
	c.mv	a1,s0
	addi	a0,s3,-00000624
	jal	ra,0000000023082388
	lbu	a5,s2,+00000000
	c.bnez	a5,0000000023080196

l23080180:
	lui	a0,000230C6
	addi	a0,a0,-00000614
	jal	ra,0000000023082388
	c.lwsp	a6,00000154
	jal	ra,0000000023064972
	c.li	a5,00000004
	c.j	00000000230800C8

l23080196:
	c.addi	s0,00000001
	c.j	000000002308015E

l2308019A:
	c.lw	s1,0(a2)
	c.lwsp	a2,00000174
	c.mv	a0,a2
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,00000000230A4220
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.mv	a3,a0
	lui	a0,000230C6
	addi	a0,a0,-000005FC
	jal	ra,0000000023082388
	c.j	00000000230800F0

l230801BC:
	c.li	a5,00000005
	c.j	00000000230800C8

;; at_scan: 230801C0
;;   Called from:
;;     2307E066 (in scan_handler)
at_scan proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	sw	ra,sp,+0000012C
	sw	s1,sp,+00000124
	c.mv	s0,a1
	c.bnez	a0,000000002308020A

l230801D2:
	c.beqz	a1,00000000230801E6

l230801D4:
	c.li	a0,00000004

l230801D6:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	c.addi16sp	00000130
	c.jr	ra

l230801E6:
	c.swsp	zero,00000084

l230801E8:
	lui	a5,00042028
	addi	a5,a5,-0000019C
	c.swsp	a5,00000080
	lui	a5,00042028
	lw	a5,a5,-000006BC
	c.li	a0,00000000
	c.beqz	a5,00000000230801D6

l230801FE:
	c.li	a2,00000000
	c.addi4spn	a1,00000004
	c.li	a0,00000014
	c.jalr	a5
	c.li	a0,00000000
	c.j	00000000230801D6

l2308020A:
	c.beqz	a1,00000000230801D4

l2308020C:
	lui	a1,000230C4
	addi	a1,a1,-00000048
	c.mv	s1,a0
	jal	ra,00000000230A3FF4
	c.bnez	a0,000000002308022E

l2308021C:
	lui	a1,000230C9
	addi	a1,a1,+00000664
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.li	a5,00000001
	c.beqz	a0,0000000023080250

l2308022E:
	lui	a1,000230C5
	addi	a1,a1,+000004CC
	c.mv	a0,s1
	jal	ra,00000000230A3FF4
	c.bnez	a0,00000000230801D4

l2308023E:
	lui	a1,000230C9
	addi	a1,a1,+00000664
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,00000000230801D4

l2308024E:
	c.li	a5,00000002

l23080250:
	c.swsp	a5,00000084
	c.j	00000000230801E8

;; tcp_sent_callback: 23080254
tcp_sent_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	a5,00000004
	bge	a5,a0,0000000023080286

l23080266:
	lui	a3,000230C6
	lui	a2,000230C6
	lui	a0,000230C6
	addi	a3,a3,-00000224
	addi	a2,a2,-000003E4
	addi	a1,zero,+000000AA
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l23080286:
	c.mv	s0,a0
	addi	s1,zero,+00000038
	c.mv	s2,a2
	jal	ra,0000000023063658
	add	a5,s0,s1
	lui	s1,0004201C
	addi	s1,s1,+00000330
	c.add	s1,a5
	lbu	s3,s1,+00000038
	c.li	a5,00000003
	beq	s3,a5,00000000230802CE

l230802AA:
	jal	ra,000000002306366C
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,-000001B4
	jal	ra,0000000023082388
	c.li	s1,FFFFFFF5

l230802BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230802CE:
	jal	ra,000000002306366C
	lbu	a5,s1,+00000018
	lui	s1,0004200F
	addi	s1,s1,+000006EC
	bne	a5,s3,000000002308030C

l230802E2:
	sw	zero,s1,+00000000
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,-0000018C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.li	s1,00000000
	c.j	00000000230802BE
