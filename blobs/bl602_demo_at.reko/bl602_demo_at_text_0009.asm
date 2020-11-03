;;; Segment .text (23000300)

l23090302:
	c.li	a1,00000010
	c.li	a0,00000001
	c.jal	00000000230904A4
	sw	a0,s7,+0000000C
	c.beqz	a0,0000000023090378

l2309030E:
	c.mv	s7,a0

l23090310:
	sw	s8,s7,+00000000
	c.lwsp	a6,000000E4
	sw	a5,s7,+00000008
	c.lwsp	s5,000000C4
	sw	a4,s7,+00000004
	c.j	00000000230902F0

l23090322:
	c.lwsp	t0,00000064
	c.lw	s1,48(a0)
	jal	ra,00000000230A37A4
	bne	a0,zero,000000002308FFFE

l2309032E:
	c.lwsp	s0,00000194
	c.lwsp	s4,000001F4
	bne	a2,a5,000000002308FFFE

l23090336:
	c.beqz	a2,0000000023090344

l23090338:
	c.lwsp	s8,00000174
	c.lwsp	a2,00000154
	jal	ra,00000000230A37A4
	bne	a0,zero,000000002308FFFE

l23090344:
	addi	a2,s1,+0000011C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002309D06C
	c.mv	s0,a0
	bne	a0,zero,000000002308FEE2

l23090356:
	c.lwsp	a6,000000E4
	beq	s2,a5,000000002308FE3E

l2309035C:
	c.j	000000002308FDDA

l2309035E:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000800
	bne	s3,zero,000000002308FDC6

l23090368:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.j	000000002308FE3E

l23090370:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000800
	c.j	000000002308FE3E

l23090378:
	c.lui	a0,FFFFE000
	addi	s0,a0,-0000056A
	c.j	000000002308FEE2

l23090380:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000560
	c.j	000000002308FEE2

l23090388:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000500
	c.j	000000002308FEE2

;; mbedtls_x509_crt_parse: 23090390
;;   Called from:
;;     23086CD6 (in altcp_tls_create_config_client_common)
;;     23087432 (in altcp_tls_create_config_client_2wayauth)
mbedtls_x509_crt_parse proc
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
	beq	a0,zero,0000000023090498

l230903B0:
	c.mv	s1,a1
	beq	a1,zero,0000000023090498

l230903B6:
	c.mv	s7,a0
	c.mv	s3,a2
	c.beqz	a2,00000000230903D6

l230903BC:
	add	a5,a1,a2
	lbu	a5,a5,-00000001
	c.bnez	a5,00000000230903D6

l230903C6:
	lui	s5,000230C8
	addi	a1,s5,+00000550
	c.mv	a0,s1
	jal	ra,00000000230A4978
	c.bnez	a0,000000002309047C

l230903D6:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,000000002308FD22
	c.mv	s0,a0

l230903E2:
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

l23090402:
	c.addi4spn	a0,00000004
	jal	ra,0000000023096D06
	c.mv	a6,sp
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s1
	addi	a2,s9,+0000056C
	addi	a1,s5,+00000550
	c.addi4spn	a0,00000004
	jal	ra,0000000023096D0E
	c.mv	s2,a0
	c.bnez	a0,0000000023090444

l23090422:
	c.lwsp	zero,000000E4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.mv	a0,s7
	sub	s3,s3,a5
	c.add	s1,a5
	jal	ra,000000002308FD22
	c.mv	s2,a0
	c.addi4spn	a0,00000004
	jal	ra,0000000023097016
	bne	s2,zero,0000000023090474

l23090440:
	c.li	s8,00000001
	c.j	0000000023090460

l23090444:
	beq	a0,s10,0000000023090478

l23090448:
	beq	a0,s6,0000000023090466

l2309044C:
	c.addi4spn	a0,00000004
	jal	ra,0000000023097016
	c.lwsp	zero,000000E4
	sub	s3,s3,a5
	c.add	s1,a5

l2309045A:
	c.bnez	s0,000000002309045E

l2309045C:
	c.mv	s0,s2

l2309045E:
	c.addi	s4,00000001

l23090460:
	c.li	a5,00000001
	bltu	a5,s3,0000000023090402

l23090466:
	bne	s8,zero,00000000230904A0

l2309046A:
	c.bnez	s0,00000000230903E2

l2309046C:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000780
	c.j	00000000230903E2

l23090474:
	bne	s2,s11,000000002309045A

l23090478:
	c.mv	s0,s2
	c.j	00000000230903E2

l2309047C:
	c.lui	a5,FFFFF000
	c.lui	s11,FFFFD000
	c.li	s4,00000000
	c.li	s0,00000000
	c.li	s8,00000000
	lui	s9,000230C8
	addi	s10,a5,-00000480
	addi	s6,a5,-00000080
	addi	s11,s11,+00000780
	c.j	0000000023090460

l23090498:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000800
	c.j	00000000230903E2

l230904A0:
	c.mv	s0,s4
	c.j	00000000230903E2

;; mycalloc: 230904A4
;;   Called from:
;;     23088502 (in rsa_alloc_wrap)
;;     230885EE (in eckey_alloc_wrap)
;;     2308956A (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2308957A (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2308ACCC (in ssl_append_key_cert)
;;     2308B772 (in mbedtls_ssl_set_hostname)
;;     2308BB7A (in ssl_handshake_init)
;;     2308BB8A (in ssl_handshake_init)
;;     2308BBEC (in ssl_handshake_init)
;;     2308BCAC (in mbedtls_ssl_setup)
;;     2308BCBA (in mbedtls_ssl_setup)
;;     2308C1DA (in mbedtls_ssl_write_record)
;;     2308C238 (in mbedtls_ssl_write_record)
;;     2308CE66 (in mbedtls_ssl_prepare_handshake_record)
;;     2308E5E6 (in mbedtls_ssl_parse_certificate)
;;     2308FD5E (in mbedtls_x509_crt_parse_der)
;;     2308FDF2 (in mbedtls_x509_crt_parse_der)
;;     23090306 (in mbedtls_x509_crt_parse_der)
;;     2309190A (in mbedtls_asn1_get_sequence_of)
;;     23091EB2 (in mbedtls_mpi_grow)
;;     23091F10 (in mbedtls_mpi_shrink)
;;     23093BC8 (in gcm_ctx_alloc)
;;     23093C0C (in aes_ctx_alloc)
;;     23094A68 (in ecp_normalize_jac_many)
;;     230952A2 (in ecp_mul_comb)
;;     230965BA (in mbedtls_md_setup)
;;     2309686C (in md5_ctx_alloc)
;;     230968BA (in sha1_ctx_alloc)
;;     23096908 (in sha224_ctx_alloc)
;;     23096F36 (in mbedtls_pem_read_buffer)
;;     2309CFC2 (in mbedtls_x509_get_name)
;;     2309D05A (in mbedtls_x509_get_name)
mycalloc proc
	add	a2,a0,a1
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,000000002306488A
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; aes_gen_tables: 230904CA
;;   Called from:
;;     230907F6 (in mbedtls_aes_setkey_enc)
aes_gen_tables proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	addi	sp,sp,-000007F0
	c.mv	a2,sp
	c.li	a5,00000001
	c.li	a3,00000000
	addi	a0,zero,+00000100

l230904E8:
	c.lui	a1,00001000
	addi	a1,a1,-00000800
	c.add	a1,sp
	slli	a4,a5,00000002
	c.add	a4,a1
	sw	a3,a4,+00000C00
	c.sw	a2,0(a5)
	andi	a1,a5,+00000080
	slli	a4,a5,00000001
	c.beqz	a1,0000000023090508

l23090506:
	c.li	a1,0000001B

l23090508:
	c.xor	a5,a4
	c.xor	a5,a1
	c.addi	a3,00000001
	andi	a5,a5,+000000FF
	c.addi	a2,00000004
	bne	a3,a0,00000000230904E8

l23090518:
	lui	a4,0004201D
	addi	a4,a4,+000007E4
	addi	a2,a4,+00000028
	c.li	a5,00000001

l23090526:
	c.sw	a4,0(a5)
	slli	a3,a5,00000001
	andi	a5,a5,+00000080
	c.beqz	a5,0000000023090534

l23090532:
	c.li	a5,0000001B

l23090534:
	c.xor	a5,a3
	c.addi	a4,00000004
	andi	a5,a5,+000000FF
	bne	a2,a4,0000000023090526

l23090540:
	lui	a1,0004201C
	addi	a5,zero,+00000063
	lui	a2,0004201E
	sb	a5,a1,+000006E4
	addi	a5,a2,-000007F4
	sb	zero,a5,+00000063
	addi	t1,sp,+00000400
	c.li	a7,00000001
	addi	a1,a1,+000006E4
	addi	a2,a2,-000007F4
	addi	t4,zero,+000000FF
	addi	t3,zero,+00000100

l2309056E:
	lw	a5,t1,+00000004
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sub	a5,t4,a5
	c.add	a4,sp
	c.slli	a5,02
	c.add	a5,a4
	lw	t5,a5,-00000800
	c.addi	t1,00000004
	slli	a6,t5,00000001
	srai	a5,t5,00000007
	or	a5,a6,a5
	andi	a6,a5,+000000FF
	srai	a5,a6,00000007
	slli	a0,a6,00000001
	c.or	a0,a5
	andi	a0,a0,+000000FF
	srai	a5,a0,00000007
	slli	a3,a0,00000001
	c.or	a3,a5
	andi	a3,a3,+000000FF
	slli	a4,a3,00000001
	srai	a5,a3,00000007
	c.or	a5,a4
	andi	a5,a5,+000000FF
	xor	a5,a5,t5
	xor	a5,a5,a6
	c.xor	a5,a0
	c.xor	a5,a3
	xori	a5,a5,+00000063
	add	a4,a1,a7
	sb	a5,a4,+00000000
	c.add	a5,a2
	sb	a7,a5,+00000000
	c.addi	a7,00000001
	bne	a7,t3,000000002309056E

l230905E6:
	lw	s0,sp,+00000438
	lw	s1,sp,+00000424
	lw	s2,sp,+00000434
	lw	s3,sp,+0000042C
	lui	t4,0004201C
	lui	t5,0004201D
	lui	t6,0004201D
	lui	t0,0004201D
	lui	t3,0004201E
	lui	t1,0004201E
	lui	a7,0004201E
	lui	a6,0004201E
	c.li	a3,00000000
	addi	t4,t4,+000007E4
	addi	t5,t5,-0000041C
	addi	t6,t6,-0000001C
	addi	t0,t0,+000003E4
	addi	a0,zero,+000000FF
	addi	t3,t3,-000006F4
	addi	t1,t1,-000002F4
	addi	a7,a7,+0000010C
	addi	a6,a6,+0000050C
	addi	t2,zero,+00000400

l23090640:
	lbu	a4,a1,+00000000
	slli	a5,a4,00000018
	c.srai	a5,00000018
	c.srai	a5,0000001F
	slli	s4,a4,00000001
	c.andi	a5,0000001B
	xor	s4,s4,a5
	andi	s4,s4,+000000FF
	slli	s5,a4,00000010
	slli	a5,a4,00000008
	xor	a5,a5,s5
	xor	a4,a4,s4
	xor	a5,a5,s4
	c.slli	a4,18
	c.xor	a5,a4
	add	a4,t4,a3
	srli	s5,a5,00000018
	c.sw	a4,0(a5)
	slli	a4,a5,00000008
	or	a4,a4,s5
	add	s4,t5,a3
	sw	a4,s4,+00000000
	srli	s5,a5,00000010
	slli	a4,a5,00000010
	add	s4,t6,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	a4,a5,00000008
	c.slli	a5,18
	c.or	a5,a4
	add	s4,t0,a3
	sw	a5,s4,+00000000
	lbu	a5,a2,+00000000
	beq	a5,zero,00000000230907B8

l230906B8:
	c.lui	s6,00001000
	addi	s4,s6,-00000800
	c.add	s4,sp
	slli	a4,a5,00000002
	c.add	a4,s4
	lw	a4,a4,-00000400
	addi	s5,s6,-00000800
	c.add	s5,sp
	add	s4,s0,a4
	or	s4,s4,a0
	c.add	a4,s1
	or	a4,a4,a0
	c.slli	s4,02
	c.add	s4,s5
	lw	s5,s4,-00000800
	addi	s4,s6,-00000800
	c.add	s4,sp
	c.slli	a4,02
	c.add	a4,s4
	lw	s4,a4,-00000800
	c.slli	s4,08

l230906F6:
	xor	s4,s4,s5
	c.li	a4,00000000
	c.beqz	a5,0000000023090726

l230906FE:
	c.lui	s6,00001000
	addi	s5,s6,-00000800
	c.add	s5,sp
	slli	a4,a5,00000002
	c.add	a4,s5
	lw	a4,a4,-00000400
	addi	s5,s6,-00000800
	c.add	s5,sp
	c.add	a4,s2
	or	a4,a4,a0
	c.slli	a4,02
	c.add	a4,s5
	lw	a4,a4,-00000800
	c.slli	a4,10

l23090726:
	xor	s4,s4,a4
	c.li	a4,00000000
	c.beqz	a5,0000000023090756

l2309072E:
	c.lui	s5,00001000
	addi	a4,s5,-00000800
	c.add	a4,sp
	c.slli	a5,02
	c.add	a5,a4
	lw	a4,a5,-00000400
	addi	a5,s5,-00000800
	c.add	a5,sp
	c.add	a4,s3
	or	a4,a4,a0
	c.slli	a4,02
	c.add	a4,a5
	lw	a5,a4,-00000800
	slli	a4,a5,00000018

l23090756:
	xor	a5,s4,a4
	add	a4,t3,a3
	srli	s5,a5,00000018
	c.sw	a4,0(a5)
	slli	a4,a5,00000008
	add	s4,t1,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	s5,a5,00000010
	slli	a4,a5,00000010
	add	s4,a7,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	a4,a5,00000008
	c.slli	a5,18
	add	s4,a6,a3
	c.or	a5,a4
	sw	a5,s4,+00000000
	c.addi	a3,00000004
	c.addi	a1,00000001
	c.addi	a2,00000001
	bne	a3,t2,0000000023090640

l230907A2:
	addi	sp,sp,+000007F0
	c.lwsp	a2,00000114
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.addi16sp	00000030
	c.jr	ra

l230907B8:
	c.li	s5,00000000
	c.li	s4,00000000
	c.j	00000000230906F6

;; mbedtls_aes_init: 230907BE
;;   Called from:
;;     23087544 (in block_cipher_df)
;;     230877FC (in mbedtls_ctr_drbg_seed_entropy_len)
;;     23090A82 (in mbedtls_aes_setkey_dec)
;;     23093C14 (in aes_ctx_alloc)
;;     23096C10 (in pem_aes_decrypt)
mbedtls_aes_init proc
	addi	a2,zero,+00000118
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_aes_free: 230907C8
;;   Called from:
;;     2308763E (in block_cipher_df)
;;     23090AFE (in mbedtls_aes_setkey_dec)
;;     23093BF0 (in aes_ctx_free)
;;     23096C78 (in pem_aes_decrypt)
mbedtls_aes_free proc
	addi	a5,a0,+00000118
	c.bnez	a0,00000000230907D6

l230907CE:
	c.jr	ra

l230907D0:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l230907D6:
	bne	a0,a5,00000000230907D0

l230907DA:
	c.j	00000000230907CE

;; mbedtls_aes_setkey_enc: 230907DC
;;   Called from:
;;     2308759A (in block_cipher_df)
;;     23087618 (in block_cipher_df)
;;     230876FC (in ctr_drbg_update_internal)
;;     2308781C (in mbedtls_ctr_drbg_seed_entropy_len)
;;     23090A92 (in mbedtls_aes_setkey_dec)
;;     23093C26 (in aes_setkey_enc_wrap)
mbedtls_aes_setkey_enc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	addi	s1,s1,+00000714
	c.lw	s1,0(a5)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a5,0000000023090802

l230907F2:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230904CA
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.li	a5,00000001
	c.sw	s1,0(a5)

l23090802:
	addi	a5,zero,+000000C0
	beq	a2,a5,00000000230908D0

l2309080A:
	addi	a5,zero,+00000100
	beq	a2,a5,00000000230908D4

l23090812:
	addi	a5,zero,+00000080
	c.li	a0,FFFFFFE0
	bne	a2,a5,00000000230908C6

l2309081C:
	c.li	a5,0000000A

l2309081E:
	c.srli	a2,00000005
	c.sw	s0,0(a5)
	c.slli	a2,02
	addi	a5,s0,+00000008
	c.sw	s0,4(a5)
	c.mv	a3,a5
	c.add	a2,a1

l2309082E:
	bne	a2,a1,00000000230908D8

l23090832:
	c.lw	s0,0(a4)
	c.li	a3,0000000C
	beq	a4,a3,00000000230908FE

l2309083A:
	c.li	a3,0000000E
	beq	a4,a3,000000002309098C

l23090840:
	c.li	a3,0000000A
	c.li	a0,00000000
	bne	a4,a3,00000000230908C6

l23090848:
	lui	a1,0004201D
	lui	a2,0004201C
	addi	a1,a1,+000007E4
	addi	s0,s0,+000000A8
	addi	a2,a2,+000006E4

l2309085C:
	c.lw	a5,12(a3)
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	srli	a4,a3,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a0,a0,a6
	c.addi	a5,00000010
	c.xor	a4,a0
	srli	a0,a3,00000018
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.addi	a1,00000004
	c.slli	a0,10
	c.xor	a4,a0
	andi	a0,a3,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,18
	c.xor	a4,a0
	srli	a0,a3,00000010
	andi	a0,a0,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,08
	c.xor	a4,a0
	lw	a0,a5,-0000000C
	c.sw	a5,0(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000008
	c.sw	a5,4(a4)
	c.xor	a4,a0
	c.sw	a5,8(a4)
	c.xor	a4,a3
	c.sw	a5,12(a4)
	bne	a5,s0,000000002309085C

l230908C4:
	c.li	a0,00000000

l230908C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230908D0:
	c.li	a5,0000000C
	c.j	000000002309081E

l230908D4:
	c.li	a5,0000000E
	c.j	000000002309081E

l230908D8:
	lbu	a4,a1,+00000001
	lbu	a0,a1,+00000002
	c.addi	a3,00000004
	c.slli	a4,08
	c.slli	a0,10
	c.or	a4,a0
	lbu	a0,a1,+00000000
	c.addi	a1,00000004
	c.or	a4,a0
	lbu	a0,a1,-00000001
	c.slli	a0,18
	c.or	a4,a0
	sw	a4,a3,+00000FFC
	c.j	000000002309082E

l230908FE:
	lui	a1,0004201D
	lui	a2,0004201C
	addi	a1,a1,+000007E4
	addi	s0,s0,+000000C8
	addi	a2,a2,+000006E4

l23090912:
	c.lw	a5,20(a3)
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	srli	a4,a3,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a0,a0,a6
	c.addi	a5,00000018
	c.xor	a4,a0
	srli	a0,a3,00000018
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.addi	a1,00000004
	c.slli	a0,10
	c.xor	a4,a0
	andi	a0,a3,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,18
	c.xor	a4,a0
	srli	a0,a3,00000010
	andi	a0,a0,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,08
	c.xor	a4,a0
	lw	a0,a5,-00000014
	c.sw	a5,0(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000010
	c.sw	a5,4(a4)
	c.xor	a4,a0
	lw	a0,a5,-0000000C
	c.sw	a5,8(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000008
	c.sw	a5,12(a4)
	c.xor	a4,a0
	c.sw	a5,16(a4)
	c.xor	a4,a3
	c.sw	a5,20(a4)
	bne	a5,s0,0000000023090912

l2309098A:
	c.j	00000000230908C4

l2309098C:
	lui	a0,0004201D
	lui	a2,0004201C
	addi	a0,a0,+000007E4
	addi	s0,s0,+000000E8
	addi	a2,a2,+000006E4

l230909A0:
	c.lw	a5,28(a1)
	lw	a6,a0,+00000000
	c.lw	a5,0(a3)
	srli	a4,a1,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a3,a3,a6
	lw	a6,a5,+00000010
	c.xor	a4,a3
	srli	a3,a1,00000018
	c.add	a3,a2
	lbu	a3,a3,+00000000
	addi	a5,a5,+00000020
	c.addi	a0,00000004
	c.slli	a3,10
	c.xor	a4,a3
	andi	a3,a1,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,18
	c.xor	a4,a3
	srli	a3,a1,00000010
	andi	a3,a3,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,08
	c.xor	a4,a3
	lw	a3,a5,-0000001C
	c.sw	a5,0(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000018
	c.sw	a5,4(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000014
	c.sw	a5,8(a4)
	c.xor	a4,a3
	andi	a3,a4,+000000FF
	c.sw	a5,12(a4)
	c.add	a3,a2
	lbu	a3,a3,+00000000
	xor	a3,a3,a6
	srli	a6,a4,00000018
	c.add	a6,a2
	lbu	a6,a6,+00000000
	c.slli	a6,18
	xor	a3,a3,a6
	srli	a6,a4,00000008
	andi	a6,a6,+000000FF
	c.srli	a4,00000010
	c.add	a6,a2
	andi	a4,a4,+000000FF
	lbu	a6,a6,+00000000
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.slli	a6,08
	xor	a3,a3,a6
	c.slli	a4,10
	c.xor	a4,a3
	lw	a3,a5,-0000000C
	c.sw	a5,16(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000008
	c.sw	a5,20(a4)
	c.xor	a4,a3
	c.sw	a5,24(a4)
	c.xor	a4,a1
	c.sw	a5,28(a4)
	bne	a5,s0,00000000230909A0

l23090A6A:
	c.j	00000000230908C4

;; mbedtls_aes_setkey_dec: 23090A6C
;;   Called from:
;;     23093C22 (in aes_setkey_dec_wrap)
;;     23096C62 (in pem_aes_decrypt)
mbedtls_aes_setkey_dec proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	c.mv	s0,a0
	c.addi4spn	a0,00000018
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,00000000230907BE
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	addi	a5,s0,+00000008
	c.sw	s0,4(a5)
	c.addi4spn	a0,00000018
	jal	ra,00000000230907DC
	c.mv	s1,a0
	c.bnez	a0,0000000023090AFC

l23090A9A:
	c.lwsp	s8,00000064
	c.lwsp	t3,000000E4
	lui	t1,0004201E
	slli	a4,a1,00000004
	c.sw	s0,0(a1)
	c.add	a5,a4
	c.lw	a5,0(a4)
	lui	a0,0004201C
	lui	t3,0004201E
	c.sw	s0,8(a4)
	c.lw	a5,4(a4)
	lui	t4,0004201E
	lui	t5,0004201E
	c.sw	s0,12(a4)
	c.lw	a5,8(a4)
	addi	a2,s0,+00000018
	c.addi	a1,FFFFFFFF
	c.sw	s0,16(a4)
	c.lw	a5,12(a4)
	addi	t1,t1,-000006F4
	c.addi	a5,FFFFFFF0
	c.sw	s0,20(a4)
	addi	a0,a0,+000006E4
	addi	t3,t3,+0000050C
	addi	t4,t4,-000002F4
	addi	t5,t5,+0000010C
	c.li	t6,00000010

l23090AE8:
	blt	zero,a1,0000000023090B14

l23090AEC:
	c.lw	a5,0(a4)
	c.sw	a2,0(a4)
	c.lw	a5,4(a4)
	c.sw	a2,4(a4)
	c.lw	a5,8(a4)
	c.sw	a2,8(a4)
	c.lw	a5,12(a5)
	c.sw	a2,12(a5)

l23090AFC:
	c.addi4spn	a0,00000018
	jal	ra,00000000230907C8
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	c.mv	a0,s1
	lw	s1,sp,+00000134
	c.addi16sp	00000140
	c.jr	ra

l23090B14:
	c.li	a6,00000000

l23090B16:
	add	a4,a5,a6
	c.lw	a4,0(a4)
	add	t0,a2,a6
	c.addi	a6,00000004
	andi	a3,a4,+000000FF
	srli	a7,a4,00000018
	c.add	a3,a0
	c.add	a7,a0
	lbu	a3,a3,+00000000
	lbu	a7,a7,+00000000
	c.slli	a3,02
	c.slli	a7,02
	c.add	a3,t1
	c.add	a7,t3
	lw	a7,a7,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,a7
	srli	a7,a4,00000008
	andi	a7,a7,+000000FF
	c.srli	a4,00000010
	c.add	a7,a0
	andi	a4,a4,+000000FF
	lbu	a7,a7,+00000000
	c.add	a4,a0
	lbu	a4,a4,+00000000
	c.slli	a7,02
	c.add	a7,t4
	c.slli	a4,02
	lw	a7,a7,+00000000
	c.add	a4,t5
	c.lw	a4,0(a4)
	xor	a3,a3,a7
	c.xor	a4,a3
	sw	a4,t0,+00000000
	bne	a6,t6,0000000023090B16

l23090B7E:
	c.addi	a2,00000010
	c.addi	a1,FFFFFFFF
	c.addi	a5,FFFFFFF0
	c.j	0000000023090AE8

;; mbedtls_aes_encrypt: 23090B86
;;   Called from:
;;     23091420 (in mbedtls_aes_crypt_ecb)
;;     2309154A (in mbedtls_aes_crypt_cfb128)
;;     23091576 (in mbedtls_aes_crypt_cfb128)
;;     230915FA (in mbedtls_aes_crypt_ctr)
mbedtls_aes_encrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s7,00000008
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a3,a1,+00000001
	lbu	a5,a1,+00000000
	c.lw	a0,4(a4)
	c.slli	a3,08
	c.or	a3,a5
	lbu	a5,a1,+00000002
	lbu	s10,a1,+00000004
	lbu	s9,a1,+00000008
	c.slli	a5,10
	c.or	a3,a5
	lbu	a5,a1,+00000003
	lbu	s8,a1,+0000000C
	addi	t6,a4,+00000010
	c.slli	a5,18
	c.or	a5,a3
	c.lw	a4,0(a3)
	lui	s1,0004201C
	lui	s0,0004201D
	c.xor	a5,a3
	lbu	a3,a1,+00000005
	lui	t2,0004201D
	lui	t0,0004201D
	c.slli	a3,08
	or	a3,a3,s10
	lbu	s10,a1,+00000006
	addi	s1,s1,+000007E4
	addi	s0,s0,+000003E4
	c.slli	s10,10
	or	a3,s10,a3
	lbu	s10,a1,+00000007
	addi	t2,t2,-0000041C
	addi	t0,t0,-0000001C
	c.slli	s10,18
	or	s10,s10,a3
	c.lw	a4,4(a3)
	xor	s10,s10,a3
	lbu	a3,a1,+00000009
	c.slli	a3,08
	or	a3,a3,s9
	lbu	s9,a1,+0000000A
	c.slli	s9,10
	or	a3,s9,a3
	lbu	s9,a1,+0000000B
	c.slli	s9,18
	or	s9,s9,a3
	c.lw	a4,8(a3)
	xor	s9,s9,a3
	lbu	a3,a1,+0000000D
	c.slli	a3,08
	or	a3,a3,s8
	lbu	s8,a1,+0000000E
	c.slli	s8,10
	or	a3,s8,a3
	lbu	s8,a1,+0000000F
	c.lw	a4,12(a4)
	lw	s7,a0,+00000000
	c.slli	s8,18
	or	s8,s8,a3
	srai	s7,s7,00000001
	xor	s8,s8,a4
	c.addi	s7,FFFFFFFF

l23090C68:
	andi	a3,a5,+000000FF
	srli	a4,s8,00000018
	c.slli	a3,02
	c.slli	a4,02
	c.add	a3,s1
	c.add	a4,s0
	c.lw	a3,0(a1)
	c.lw	a4,0(a4)
	andi	a3,s10,+000000FF
	c.slli	a3,02
	c.xor	a1,a4
	lw	a4,t6,+00000000
	c.add	a3,s1
	c.lw	a3,0(a3)
	c.xor	a1,a4
	srli	a4,s10,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	andi	a0,s9,+000000FF
	c.slli	a0,02
	c.xor	a1,a4
	srli	a4,s9,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	a0,s1
	c.lw	a0,0(a0)
	c.xor	a1,a4
	srli	a4,a5,00000018
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,0(a4)
	andi	s6,a1,+000000FF
	srli	s4,a1,00000018
	c.xor	a3,a4
	lw	a4,t6,+00000004
	lw	s11,t6,+00000010
	c.xor	a3,a4
	srli	a4,s9,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	srli	s9,s9,00000018
	c.slli	s9,02
	c.xor	a3,a4
	srli	a4,s8,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	s9,s0
	lw	a6,s9,+00000000
	c.xor	a3,a4
	srli	a4,s10,00000018
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,0(a4)
	srli	s10,s10,0000000E
	andi	s10,s10,+000003FC
	c.xor	a0,a4
	lw	a4,t6,+00000008
	c.add	s10,t0
	srli	t5,a3,00000008
	c.xor	a0,a4
	srli	a4,s8,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	andi	s8,s8,+000000FF
	c.slli	s8,02
	c.xor	a0,a4
	srli	a4,a5,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	s8,s1
	c.srli	a5,00000006
	c.xor	a0,a4
	lw	a4,s8,+00000000
	andi	a5,a5,+000003FC
	c.add	a5,t2
	xor	a4,a4,a6
	lw	a6,t6,+0000000C
	c.lw	a5,0(a5)
	srli	t4,a0,00000010
	xor	a4,a4,a6
	c.xor	a4,a5
	lw	a5,s10,+00000000
	srli	t3,a0,00000008
	srli	a6,a1,00000010
	c.xor	a4,a5
	srli	t1,a4,00000010
	srli	a7,a4,00000008
	andi	s5,a3,+000000FF
	srli	s2,a3,00000018
	c.srli	a1,00000008
	c.srli	a3,00000010
	srli	a5,a4,00000018
	andi	s3,a0,+000000FF
	andi	t5,t5,+000000FF
	andi	t4,t4,+000000FF
	lw	s10,t6,+00000014
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	lw	s9,t6,+00000018
	andi	a7,a7,+000000FF
	andi	a6,a6,+000000FF
	lw	s8,t6,+0000001C
	andi	a4,a4,+000000FF
	andi	a1,a1,+000000FF
	andi	a3,a3,+000000FF
	c.srli	a0,00000018
	blt	zero,s7,0000000023090F0A

l23090DBE:
	lui	t6,0004201C
	addi	t6,t6,+000006E4
	c.add	s6,t6
	c.add	t5,t6
	lbu	t0,s6,+00000000
	lbu	t5,t5,+00000000
	c.add	t4,t6
	lbu	t4,t4,+00000000
	c.add	a5,t6
	lbu	a5,a5,+00000000
	c.slli	t5,08
	xor	s11,t0,s11
	xor	s11,t5,s11
	c.slli	t4,10
	c.slli	a5,18
	c.add	t3,t6
	c.add	s5,t6
	xor	s11,s11,t4
	xor	s11,s11,a5
	lbu	a5,t3,+00000000
	lbu	t3,s5,+00000000
	c.add	t1,t6
	c.slli	a5,08
	xor	s10,t3,s10
	xor	s10,a5,s10
	lbu	a5,t1,+00000000
	c.add	s4,t6
	c.add	a7,t6
	c.slli	a5,10
	xor	s10,s10,a5
	lbu	a5,s4,+00000000
	c.add	s3,t6
	c.add	a6,t6
	c.slli	a5,18
	xor	s10,s10,a5
	lbu	a5,a7,+00000000
	lbu	a7,s3,+00000000
	c.add	s2,t6
	c.slli	a5,08
	xor	s9,a7,s9
	xor	s9,a5,s9
	lbu	a5,a6,+00000000
	c.add	a4,t6
	c.add	a1,t6
	c.slli	a5,10
	xor	s9,s9,a5
	lbu	a5,s2,+00000000
	c.add	a3,t6
	c.add	a0,t6
	c.slli	a5,18
	xor	s9,s9,a5
	lbu	a5,a4,+00000000
	xor	s8,a5,s8
	lbu	a5,a1,+00000000
	c.slli	a5,08
	xor	s8,s8,a5
	lbu	a5,a3,+00000000
	c.slli	a5,10
	xor	s8,s8,a5
	lbu	a5,a0,+00000000
	sb	s11,a2,+00000000
	sb	s10,a2,+00000004
	c.slli	a5,18
	xor	s8,s8,a5
	srli	a5,s11,00000008
	sb	a5,a2,+00000001
	srli	a5,s11,00000010
	sb	a5,a2,+00000002
	srli	a5,s10,00000008
	sb	a5,a2,+00000005
	srli	a5,s10,00000010
	sb	a5,a2,+00000006
	srli	a5,s9,00000008
	sb	a5,a2,+00000009
	srli	a5,s9,00000010
	sb	a5,a2,+0000000A
	srli	a5,s8,00000008
	srli	s11,s11,00000018
	srli	s10,s10,00000018
	sb	s9,a2,+00000008
	sb	s8,a2,+0000000C
	srli	s9,s9,00000018
	sb	a5,a2,+0000000D
	srli	a5,s8,00000010
	srli	s8,s8,00000018
	sb	s11,a2,+00000003
	sb	s10,a2,+00000007
	sb	s9,a2,+0000000B
	sb	s8,a2,+0000000F
	sb	a5,a2,+0000000E
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

l23090F0A:
	c.slli	s6,02
	c.slli	a5,02
	c.add	s6,s1
	c.add	a5,s0
	lw	s6,s6,+00000000
	c.lw	a5,0(a5)
	c.slli	t5,02
	c.add	t5,t2
	xor	a5,s6,a5
	c.slli	t4,02
	xor	a5,a5,s11
	c.add	t4,t0
	lw	s11,t5,+00000000
	lw	t4,t4,+00000000
	c.slli	s5,02
	c.slli	s4,02
	xor	a5,a5,s11
	c.add	s5,s1
	c.add	s4,s0
	xor	a5,a5,t4
	lw	t5,s4,+00000000
	lw	t4,s5,+00000000
	c.slli	t3,02
	c.slli	a4,02
	c.slli	a0,02
	c.add	t3,t2
	c.slli	t1,02
	c.add	a4,s1
	c.add	a0,s0
	lw	t3,t3,+00000000
	c.add	t1,t0
	c.lw	a4,0(a4)
	c.lw	a0,0(a0)
	lw	t1,t1,+00000000
	xor	t4,t4,t5
	xor	s10,t4,s10
	c.slli	s3,02
	c.slli	s2,02
	c.slli	a1,02
	xor	s10,s10,t3
	c.xor	a4,a0
	c.add	s3,s1
	c.add	s2,s0
	c.add	a1,t2
	xor	s8,a4,s8
	xor	s10,s10,t1
	c.lw	a1,0(a4)
	lw	t1,s3,+00000000
	lw	t3,s2,+00000000
	c.slli	a7,02
	c.add	a7,t2
	c.slli	a6,02
	c.slli	a3,02
	lw	a7,a7,+00000000
	c.add	a6,t0
	c.add	a3,t0
	xor	s8,s8,a4
	xor	t1,t1,t3
	lw	a6,a6,+00000000
	c.lw	a3,0(a4)
	xor	s9,t1,s9
	xor	s9,s9,a7
	xor	s9,s9,a6
	addi	t6,t6,+00000020
	xor	s8,s8,a4
	c.addi	s7,FFFFFFFF
	c.j	0000000023090C68

;; mbedtls_aes_decrypt: 23090FC6
;;   Called from:
;;     2309142E (in mbedtls_aes_crypt_ecb)
;;     23091498 (in mbedtls_aes_crypt_cbc)
mbedtls_aes_decrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s7,00000008
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000005
	lbu	s10,a1,+00000004
	c.lw	a0,4(a5)
	c.slli	a4,08
	or	a4,a4,s10
	lbu	s10,a1,+00000006
	lbu	s9,a1,+00000008
	lbu	s11,a1,+00000001
	c.slli	s10,10
	or	a4,s10,a4
	lbu	s10,a1,+00000007
	lbu	s5,a1,+00000000
	c.slli	s11,08
	c.slli	s10,18
	or	s10,s10,a4
	c.lw	a5,4(a4)
	lbu	s8,a1,+0000000C
	or	s11,s11,s5
	xor	s10,s10,a4
	lbu	a4,a1,+00000009
	lbu	s5,a1,+00000002
	addi	t5,a5,+00000010
	c.slli	a4,08
	or	a4,a4,s9
	lbu	s9,a1,+0000000A
	c.slli	s5,10
	or	s11,s5,s11
	c.slli	s9,10
	or	a4,s9,a4
	lbu	s9,a1,+0000000B
	lbu	s5,a1,+00000003
	lui	s0,0004201E
	c.slli	s9,18
	or	s9,s9,a4
	c.lw	a5,8(a4)
	c.slli	s5,18
	or	s5,s5,s11
	xor	s9,s9,a4
	lbu	a4,a1,+0000000D
	lw	s11,a5,+00000000
	lui	t2,0004201E
	c.slli	a4,08
	or	a4,a4,s8
	lbu	s8,a1,+0000000E
	lui	t0,0004201E
	lui	t6,0004201E
	c.slli	s8,10
	or	a4,s8,a4
	lbu	s8,a1,+0000000F
	c.lw	a5,12(a5)
	lw	s7,a0,+00000000
	c.slli	s8,18
	or	s8,s8,a4
	srai	s7,s7,00000001
	xor	s5,s5,s11
	xor	s8,s8,a5
	c.addi	s7,FFFFFFFF
	addi	s0,s0,-000006F4
	addi	t2,t2,+0000050C
	addi	t0,t0,-000002F4
	addi	t6,t6,+0000010C

l230910B2:
	andi	a4,s5,+000000FF
	srli	a5,s10,00000018
	c.slli	a4,02
	c.slli	a5,02
	c.add	a4,s0
	c.add	a5,t2
	c.lw	a4,0(a1)
	c.lw	a5,0(a5)
	srli	a4,s5,00000018
	c.slli	a4,02
	c.xor	a1,a5
	lw	a5,t5,+00000000
	c.add	a4,t2
	c.lw	a4,0(a4)
	c.xor	a1,a5
	srli	a5,s8,00000006
	andi	a5,a5,+000003FC
	c.add	a5,t0
	c.lw	a5,0(a5)
	andi	a3,s9,+000000FF
	c.slli	a3,02
	c.xor	a1,a5
	srli	a5,s9,0000000E
	andi	a5,a5,+000003FC
	c.add	a5,t6
	c.lw	a5,0(a5)
	c.add	a3,s0
	c.lw	a3,0(a3)
	c.xor	a1,a5
	andi	a5,s8,+000000FF
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	srli	t1,a1,00000008
	andi	s6,a1,+000000FF
	c.xor	a5,a4
	lw	a4,t5,+0000000C
	lw	s11,t5,+00000010
	andi	t1,t1,+000000FF
	c.xor	a5,a4
	srli	a4,s9,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	srli	s9,s9,00000018
	c.slli	s9,02
	c.xor	a5,a4
	srli	a4,s10,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t6
	c.lw	a4,0(a4)
	c.add	s9,t2
	lw	a0,s9,+00000000
	c.xor	a5,a4
	srli	a4,s8,00000018
	c.slli	a4,02
	c.add	a4,t2
	c.lw	a4,0(a4)
	srli	s8,s8,0000000E
	andi	s8,s8,+000003FC
	c.xor	a3,a4
	lw	a4,t5,+00000008
	c.add	s8,t6
	srli	t4,a5,00000008
	c.xor	a3,a4
	srli	a4,s10,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	andi	s10,s10,+000000FF
	c.slli	s10,02
	c.xor	a3,a4
	srli	a4,s5,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t6
	c.lw	a4,0(a4)
	c.add	s10,s0
	srli	s5,s5,00000006
	c.xor	a3,a4
	lw	a4,s10,+00000000
	andi	s5,s5,+000003FC
	c.add	s5,t0
	c.xor	a4,a0
	lw	a0,t5,+00000004
	srli	t3,a3,00000010
	srli	a7,a5,00000010
	c.xor	a4,a0
	lw	a0,s5,+00000000
	srli	s3,a3,00000018
	andi	s2,a3,+000000FF
	c.xor	a4,a0
	lw	a0,s8,+00000000
	c.srli	a3,00000008
	srli	s1,a5,00000018
	c.xor	a4,a0
	srli	a6,a4,00000008
	srli	a0,a1,00000010
	srli	s5,a4,00000018
	andi	s4,a4,+000000FF
	c.srli	a4,00000010
	andi	t4,t4,+000000FF
	andi	t3,t3,+000000FF
	lw	s10,t5,+00000014
	andi	a7,a7,+000000FF
	lw	s9,t5,+00000018
	andi	a6,a6,+000000FF
	andi	a0,a0,+000000FF
	lw	s8,t5,+0000001C
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a4,a4,+000000FF
	c.srli	a1,00000018
	blt	zero,s7,0000000023091354

l23091208:
	lui	t5,0004201E
	addi	t5,t5,-000007F4
	c.add	s6,t5
	c.add	t4,t5
	lbu	t6,s6,+00000000
	lbu	t4,t4,+00000000
	c.add	t3,t5
	lbu	t3,t3,+00000000
	c.slli	t4,08
	xor	s11,t6,s11
	c.slli	t3,10
	c.add	s5,t5
	xor	s11,t4,s11
	xor	s11,s11,t3
	lbu	t3,s5,+00000000
	c.add	s4,t5
	c.add	t1,t5
	c.slli	t3,18
	c.add	a5,t5
	lbu	a5,a5,+00000000
	lbu	t1,t1,+00000000
	xor	s11,s11,t3
	c.add	a7,t5
	lbu	t3,s4,+00000000
	lbu	a7,a7,+00000000
	c.add	a3,t5
	xor	s8,a5,s8
	c.slli	t1,08
	lbu	a5,a3,+00000000
	xor	s10,t3,s10
	c.slli	a7,10
	c.add	s3,t5
	xor	s10,t1,s10
	xor	s10,s10,a7
	lbu	a7,s3,+00000000
	c.slli	a5,08
	c.add	a4,t5
	xor	s8,s8,a5
	lbu	a5,a4,+00000000
	c.slli	a7,18
	c.add	s2,t5
	c.add	a6,t5
	lbu	a6,a6,+00000000
	xor	s10,s10,a7
	c.add	a0,t5
	lbu	a7,s2,+00000000
	lbu	a0,a0,+00000000
	c.slli	a5,10
	c.add	a1,t5
	xor	s8,s8,a5
	lbu	a5,a1,+00000000
	c.slli	a6,08
	xor	s9,a7,s9
	c.slli	a0,10
	c.add	s1,t5
	xor	s9,a6,s9
	xor	s9,s9,a0
	c.slli	a5,18
	lbu	a0,s1,+00000000
	xor	s8,s8,a5
	srli	a5,s11,00000008
	sb	a5,a2,+00000001
	srli	a5,s11,00000010
	sb	a5,a2,+00000002
	c.slli	a0,18
	srli	a5,s10,00000008
	xor	s9,s9,a0
	sb	a5,a2,+00000005
	srli	a5,s10,00000010
	sb	a5,a2,+00000006
	srli	a5,s9,00000008
	sb	a5,a2,+00000009
	srli	a5,s9,00000010
	sb	a5,a2,+0000000A
	srli	a5,s8,00000008
	sb	s11,a2,+00000000
	sb	s10,a2,+00000004
	srli	s11,s11,00000018
	srli	s10,s10,00000018
	sb	s9,a2,+00000008
	sb	s8,a2,+0000000C
	srli	s9,s9,00000018
	sb	a5,a2,+0000000D
	srli	a5,s8,00000010
	srli	s8,s8,00000018
	sb	s11,a2,+00000003
	sb	s10,a2,+00000007
	sb	s9,a2,+0000000B
	sb	s8,a2,+0000000F
	sb	a5,a2,+0000000E
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

l23091354:
	c.slli	s6,02
	c.slli	s5,02
	c.add	s6,s0
	c.add	s5,t2
	lw	s6,s6,+00000000
	lw	s5,s5,+00000000
	c.slli	t4,02
	c.add	t4,t0
	xor	s5,s6,s5
	xor	s5,s5,s11
	lw	s11,t4,+00000000
	c.slli	t3,02
	c.slli	s4,02
	c.slli	s3,02
	c.add	t3,t6
	c.add	s4,s0
	c.add	s3,t2
	xor	s5,s5,s11
	lw	t4,s3,+00000000
	lw	s11,t3,+00000000
	c.slli	t1,02
	lw	t3,s4,+00000000
	c.slli	a5,02
	c.slli	a1,02
	c.add	t1,t0
	c.slli	a7,02
	c.add	a5,s0
	c.add	a1,t2
	lw	t1,t1,+00000000
	c.add	a7,t6
	c.lw	a5,0(a5)
	c.lw	a1,0(a1)
	lw	a7,a7,+00000000
	xor	t3,t3,t4
	xor	s10,t3,s10
	c.slli	s2,02
	c.slli	s1,02
	c.slli	a3,02
	xor	s10,s10,t1
	c.xor	a5,a1
	c.add	s2,s0
	c.add	s1,t2
	c.add	a3,t0
	xor	s8,a5,s8
	xor	s10,s10,a7
	c.lw	a3,0(a5)
	lw	a7,s2,+00000000
	lw	t1,s1,+00000000
	c.slli	a6,02
	c.add	a6,t0
	c.slli	a0,02
	c.slli	a4,02
	lw	a6,a6,+00000000
	c.add	a0,t6
	c.add	a4,t6
	xor	s8,s8,a5
	xor	a7,a7,t1
	c.lw	a0,0(a0)
	c.lw	a4,0(a5)
	xor	s9,a7,s9
	xor	s9,s9,a6
	xor	s5,s5,s11
	xor	s9,s9,a0
	addi	t5,t5,+00000020
	xor	s8,s8,a5
	c.addi	s7,FFFFFFFF
	c.j	00000000230910B2

;; mbedtls_aes_crypt_ecb: 23091410
;;   Called from:
;;     230875EA (in block_cipher_df)
;;     23087628 (in block_cipher_df)
;;     230876CC (in ctr_drbg_update_internal)
;;     23087904 (in mbedtls_ctr_drbg_random_with_add)
;;     230914F4 (in mbedtls_aes_crypt_cbc)
;;     23093C36 (in aes_crypt_ecb_wrap)
mbedtls_aes_crypt_ecb proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a4,00000001
	c.mv	a5,a2
	c.mv	a2,a3
	bne	a1,a4,000000002309142C

l2309141E:
	c.mv	a1,a5
	jal	ra,0000000023090B86

l23091424:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2309142C:
	c.mv	a1,a5
	jal	ra,0000000023090FC6
	c.j	0000000023091424

;; mbedtls_aes_crypt_cbc: 23091434
;;   Called from:
;;     23093C32 (in aes_crypt_cbc_wrap)
;;     23096C72 (in pem_aes_decrypt)
mbedtls_aes_crypt_cbc proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	andi	s0,a2,+0000000F
	c.bnez	s0,0000000023091514

l23091450:
	c.mv	s4,a5
	c.mv	s5,a4
	c.mv	s1,a3
	c.mv	s2,a2
	c.mv	s7,a1
	c.mv	s6,a0
	c.li	s8,00000010
	c.bnez	a1,0000000023091504

l23091460:
	add	a5,s0,s2
	sub	s7,s5,s0
	sub	s3,s4,s0
	c.bnez	a5,0000000023091488

l2309146E:
	c.li	a0,00000000

l23091470:
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

l23091488:
	c.li	a2,00000010
	c.mv	a1,s7
	c.mv	a0,sp
	jal	ra,00000000230A382C
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,0000000023090FC6
	c.li	a3,00000000
	c.li	a2,00000010

l230914A0:
	add	a4,s3,a3
	add	a5,s1,a3
	lbu	a5,a5,+00000000
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.xor	a5,a1
	sb	a5,a4,+00000000
	bne	a3,a2,00000000230914A0

l230914BC:
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.addi	s0,FFFFFFF0
	c.j	0000000023091460

l230914CA:
	c.li	a3,00000000

l230914CC:
	add	a5,a4,a3
	add	a1,s1,a3
	lbu	a5,a5,+00000000
	lbu	a1,a1,+00000000
	add	a2,s3,a3
	c.addi	a3,00000001
	c.xor	a5,a1
	sb	a5,a2,+00000000
	bne	a3,s8,00000000230914CC

l230914EC:
	c.mv	a3,s3
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,0000000023091410
	c.li	a2,00000010
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.addi	s0,FFFFFFF0

l23091504:
	add	a5,s2,s0
	sub	a4,s5,s0
	sub	s3,s4,s0
	c.bnez	a5,00000000230914CA

l23091512:
	c.j	000000002309146E

l23091514:
	addi	a0,zero,-00000022
	c.j	0000000023091470

;; mbedtls_aes_crypt_cfb128: 2309151A
;;   Called from:
;;     23093C2E (in aes_crypt_cfb128_wrap)
mbedtls_aes_crypt_cfb128 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s5,a0
	c.mv	s6,a3
	c.mv	s2,a4
	c.mv	s3,a5
	c.mv	s1,a6
	c.lw	a3,0(s0)
	add	s4,a6,a2
	c.beqz	a1,0000000023091598

l2309153E:
	beq	s1,s4,000000002309159C

l23091542:
	c.bnez	s0,000000002309154E

l23091544:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,0000000023090B86

l2309154E:
	add	a4,s2,s0
	c.addi	s3,00000001
	lbu	a5,a4,+00000000
	lbu	a3,s3,-00000001
	c.addi	s1,00000001
	c.addi	s0,00000001
	c.xor	a5,a3
	sb	a5,s1,+00000FFF
	sb	a5,a4,+00000000
	c.andi	s0,0000000F
	c.j	000000002309153E

l2309156E:
	c.bnez	s0,000000002309157A

l23091570:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,0000000023090B86

l2309157A:
	add	a4,s2,s0
	c.addi	s3,00000001
	lbu	a3,s3,-00000001
	lbu	a5,a4,+00000000
	c.addi	s1,00000001
	c.addi	s0,00000001
	c.xor	a5,a3
	sb	a5,s1,+00000FFF
	sb	a3,a4,+00000000
	c.andi	s0,0000000F

l23091598:
	bne	s1,s4,000000002309156E

l2309159C:
	sw	s0,s6,+00000000
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

;; mbedtls_aes_crypt_ctr: 230915B6
;;   Called from:
;;     23093C2A (in aes_crypt_ctr_wrap)
mbedtls_aes_crypt_ctr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a2,0(s0)
	c.mv	s3,a0
	c.mv	s1,a2
	add	s2,a6,a1
	addi	s4,a3,+0000000F

l230915D2:
	bne	a6,s2,00000000230915EA

l230915D6:
	c.sw	s1,0(s0)
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l230915EA:
	c.bnez	s0,0000000023091620

l230915EC:
	c.mv	a1,a3
	c.mv	a2,a4
	c.mv	a0,s3
	c.swsp	a6,00000084
	c.swsp	a5,00000004
	c.swsp	a4,00000080
	c.swsp	a3,00000000
	jal	ra,0000000023090B86
	c.lwsp	zero,000000A4
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000008
	c.mv	a1,s4

l23091608:
	lbu	a2,a1,+00000000
	c.addi	a2,00000001
	andi	a2,a2,+000000FF
	sb	a2,a1,+00000000
	c.bnez	a2,0000000023091620

l23091618:
	addi	a2,a1,-00000001
	bne	a3,a1,000000002309163C

l23091620:
	add	a2,a4,s0
	c.addi	a5,00000001
	lbu	a2,a2,+00000000
	lbu	a1,a5,-00000001
	c.addi	a6,00000001
	c.addi	s0,00000001
	c.xor	a2,a1
	sb	a2,a6,+00000FFF
	c.andi	s0,0000000F
	c.j	00000000230915D2

l2309163C:
	c.mv	a1,a2
	c.j	0000000023091608

;; mbedtls_asn1_get_len: 23091640
;;   Called from:
;;     230902D6 (in mbedtls_x509_crt_parse_der)
;;     23091732 (in mbedtls_asn1_get_tag)
;;     230919E2 (in mbedtls_asn1_get_alg)
;;     2309CEF0 (in mbedtls_x509_get_serial)
;;     2309D032 (in mbedtls_x509_get_name)
mbedtls_asn1_get_len proc
	c.lw	a0,0(a5)
	sub	a3,a1,a5
	bge	zero,a3,0000000023091672

l2309164A:
	lbu	a4,a5,+00000000
	slli	a6,a4,00000018
	srai	a6,a6,00000018
	blt	a6,zero,0000000023091678

l2309165A:
	addi	a4,a5,+00000001
	c.sw	a0,0(a4)
	lbu	a5,a5,+00000000
	c.sw	a2,0(a5)

l23091666:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.sub	a1,a5
	c.lw	a2,0(a5)
	bgeu	a1,a5,0000000023091676

l23091672:
	addi	a0,zero,-00000060

l23091676:
	c.jr	ra

l23091678:
	andi	a4,a4,+0000007F
	c.li	a6,00000002
	beq	a4,a6,00000000230916D8

l23091682:
	bltu	a6,a4,0000000023091692

l23091686:
	c.li	a6,00000001
	beq	a4,a6,00000000230916C6

l2309168C:
	addi	a0,zero,-00000064
	c.jr	ra

l23091692:
	c.li	a6,00000003
	beq	a4,a6,00000000230916FC

l23091698:
	c.li	a6,00000004
	bne	a4,a6,000000002309168C

l2309169E:
	bge	a4,a3,0000000023091672

l230916A2:
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000002
	c.slli	a4,18
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,a5,+00000004
	lbu	a5,a5,+00000003
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.sw	a2,0(a5)
	c.lw	a0,0(a5)
	c.addi	a5,00000005
	c.j	00000000230916D4

l230916C6:
	beq	a3,a4,0000000023091672

l230916CA:
	lbu	a5,a5,+00000001
	c.sw	a2,0(a5)
	c.lw	a0,0(a5)
	c.addi	a5,00000002

l230916D4:
	c.sw	a0,0(a5)
	c.j	0000000023091666

l230916D8:
	bge	a4,a3,0000000023091672

l230916DC:
	lbu	a4,a5,+00000001
	lbu	a5,a5,+00000002
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.sw	a2,0(a5)
	c.lw	a0,0(a5)
	c.addi	a5,00000003
	c.j	00000000230916D4

l230916FC:
	bge	a4,a3,0000000023091672

l23091700:
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000002
	lbu	a5,a5,+00000003
	c.slli	a4,10
	c.slli	a3,08
	c.or	a4,a3
	c.or	a5,a4
	c.sw	a2,0(a5)
	c.lw	a0,0(a5)
	c.addi	a5,00000004
	c.j	00000000230916D4

;; mbedtls_asn1_get_tag: 2309171C
;;   Called from:
;;     23087D24 (in pk_parse_key_pkcs1_der)
;;     23087E38 (in pk_parse_key_sec1_der)
;;     23087E68 (in pk_parse_key_sec1_der)
;;     23087EB4 (in pk_parse_key_sec1_der)
;;     23087ED6 (in pk_parse_key_sec1_der)
;;     23087F2A (in pk_parse_key_sec1_der)
;;     23088050 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23088098 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23088132 (in mbedtls_pk_parse_subpubkey)
;;     230881C2 (in mbedtls_pk_parse_subpubkey)
;;     23089946 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2308995E (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23089976 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     230899A2 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     230899B0 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2308FDB0 (in mbedtls_x509_crt_parse_der)
;;     2308FE26 (in mbedtls_x509_crt_parse_der)
;;     2308FE72 (in mbedtls_x509_crt_parse_der)
;;     2308FF1E (in mbedtls_x509_crt_parse_der)
;;     2308FF4E (in mbedtls_x509_crt_parse_der)
;;     2308FF6C (in mbedtls_x509_crt_parse_der)
;;     2309002A (in mbedtls_x509_crt_parse_der)
;;     2309006A (in mbedtls_x509_crt_parse_der)
;;     230900B0 (in mbedtls_x509_crt_parse_der)
;;     230900D6 (in mbedtls_x509_crt_parse_der)
;;     2309010A (in mbedtls_x509_crt_parse_der)
;;     230901B2 (in mbedtls_x509_crt_parse_der)
;;     23090292 (in mbedtls_x509_crt_parse_der)
;;     23091752 (in mbedtls_asn1_get_bool)
;;     23091792 (in mbedtls_asn1_get_int)
;;     230917F0 (in mbedtls_asn1_get_mpi)
;;     23091824 (in mbedtls_asn1_get_bitstring)
;;     2309187E (in mbedtls_asn1_get_bitstring_null)
;;     230918CC (in mbedtls_asn1_get_sequence_of)
;;     230918F2 (in mbedtls_asn1_get_sequence_of)
;;     23091962 (in mbedtls_asn1_get_alg)
;;     23091992 (in mbedtls_asn1_get_alg)
;;     2309CF6C (in mbedtls_x509_get_name)
;;     2309CFA8 (in mbedtls_x509_get_name)
;;     2309CFF6 (in mbedtls_x509_get_name)
;;     2309D124 (in mbedtls_x509_get_ext)
;;     2309D13C (in mbedtls_x509_get_ext)
mbedtls_asn1_get_tag proc
	c.lw	a0,0(a5)
	sub	a6,a1,a5
	bge	zero,a6,0000000023091736

l23091726:
	lbu	a6,a5,+00000000
	bne	a6,a3,000000002309173C

l2309172E:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	jal	zero,0000000023091640

l23091736:
	addi	a0,zero,-00000060
	c.jr	ra

l2309173C:
	addi	a0,zero,-00000062
	c.jr	ra

;; mbedtls_asn1_get_bool: 23091742
;;   Called from:
;;     230900F4 (in mbedtls_x509_crt_parse_der)
;;     230901D2 (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_bool proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000001
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002309171C
	c.bnez	a0,0000000023091772

l23091758:
	c.lwsp	a2,000000C4
	c.li	a5,00000001
	bne	a4,a5,000000002309177C

l23091760:
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000000
	sltu	a5,zero,a5
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)

l23091772:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2309177C:
	addi	a0,zero,-00000064
	c.j	0000000023091772

;; mbedtls_asn1_get_int: 23091782
;;   Called from:
;;     23087D4E (in pk_parse_key_pkcs1_der)
;;     23087E52 (in pk_parse_key_sec1_der)
;;     23088076 (in pk_parse_key_pkcs8_unencrypted_der)
;;     2308FED2 (in mbedtls_x509_crt_parse_der)
;;     230901E6 (in mbedtls_x509_crt_parse_der)
;;     23090206 (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_int proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000002
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002309171C
	c.bnez	a0,00000000230917BA

l23091798:
	c.lwsp	a2,000000E4
	c.li	a4,00000003
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230917DA

l230917A2:
	c.lw	s0,0(a5)
	lb	a5,a5,+00000000
	blt	a5,zero,00000000230917DA

l230917AC:
	sw	zero,s1,+00000000

l230917B0:
	c.lwsp	a2,000000E4
	addi	a4,a5,-00000001
	c.swsp	a4,00000084
	c.bnez	a5,00000000230917C4

l230917BA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230917C4:
	c.lw	s0,0(a4)
	c.lw	s1,0(a5)
	lbu	a4,a4,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.j	00000000230917B0

l230917DA:
	addi	a0,zero,-00000064
	c.j	00000000230917BA

;; mbedtls_asn1_get_mpi: 230917E0
;;   Called from:
;;     23087D62 (in pk_parse_key_pkcs1_der)
;;     23087D72 (in pk_parse_key_pkcs1_der)
;;     23087D82 (in pk_parse_key_pkcs1_der)
;;     23087D92 (in pk_parse_key_pkcs1_der)
;;     23087DA2 (in pk_parse_key_pkcs1_der)
;;     23087DB2 (in pk_parse_key_pkcs1_der)
;;     23087DC2 (in pk_parse_key_pkcs1_der)
;;     23087DD2 (in pk_parse_key_pkcs1_der)
;;     230881FA (in mbedtls_pk_parse_subpubkey)
;;     23088208 (in mbedtls_pk_parse_subpubkey)
mbedtls_asn1_get_mpi proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000002
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002309171C
	c.bnez	a0,0000000023091808

l230917F6:
	c.lwsp	a2,00000084
	c.lw	s0,0(a1)
	c.mv	a0,s1
	jal	ra,000000002309215C
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.sw	s0,0(a5)

l23091808:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_asn1_get_bitstring: 23091812
;;   Called from:
;;     23090186 (in mbedtls_x509_crt_parse_der)
;;     2309022C (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_bitstring proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000003
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s0,a2
	jal	ra,000000002309171C
	c.bnez	a0,0000000023091858

l2309182A:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023091864

l2309182E:
	c.addi	a5,FFFFFFFF
	c.sw	s0,0(a5)
	c.lw	s1,0(a5)
	c.li	a4,00000007
	lbu	a5,a5,+00000000
	sb	a5,s0,+00000004
	bltu	a4,a5,000000002309186A

l23091842:
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.lw	s0,0(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	beq	a5,s2,0000000023091858

l23091854:
	addi	a0,zero,-00000066

l23091858:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23091864:
	addi	a0,zero,-00000060
	c.j	0000000023091858

l2309186A:
	addi	a0,zero,-00000064
	c.j	0000000023091858

;; mbedtls_asn1_get_bitstring_null: 23091870
;;   Called from:
;;     23087F3E (in pk_parse_key_sec1_der)
;;     23088178 (in mbedtls_pk_parse_subpubkey)
;;     2309D08A (in mbedtls_x509_get_sig)
mbedtls_asn1_get_bitstring_null proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000003
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	jal	ra,000000002309171C
	c.bnez	a0,00000000230918A4

l23091884:
	c.lw	s1,0(a5)
	addi	a4,a5,-00000001
	c.sw	s1,0(a4)
	c.li	a4,00000001
	bgeu	a4,a5,00000000230918A0

l23091892:
	c.lw	s0,0(a5)
	addi	a4,a5,+00000001
	c.sw	s0,0(a4)
	lbu	a5,a5,+00000000
	c.beqz	a5,00000000230918A4

l230918A0:
	addi	a0,zero,-00000068

l230918A4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_asn1_get_sequence_of: 230918AE
;;   Called from:
;;     23090278 (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_sequence_of proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.mv	s0,a2
	c.mv	s4,a3
	c.addi4spn	a2,0000000C
	addi	a3,zero,+00000030
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s5,00000088
	c.mv	s1,a0
	c.mv	s3,a1
	jal	ra,000000002309171C
	c.mv	s2,a0
	c.bnez	a0,0000000023091928

l230918D4:
	c.lw	s1,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	beq	s3,a5,0000000023091914

l230918DE:
	addi	s2,zero,-00000066
	c.j	0000000023091928

l230918E4:
	lbu	a5,a5,+00000000
	c.mv	a3,s4
	c.mv	a2,s5
	c.sw	s0,0(a5)
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002309171C
	c.bnez	a0,000000002309193C

l230918F8:
	c.lw	s1,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	bgeu	a5,s3,0000000023091918

l23091906:
	c.li	a1,00000010
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,12(a0)
	c.mv	s0,a0
	c.beqz	a0,0000000023091940

l23091914:
	addi	s5,s0,+00000004

l23091918:
	c.lw	s1,0(a5)
	bltu	a5,s3,00000000230918E4

l2309191E:
	sw	zero,s0,+0000000C
	c.lw	s1,0(a5)
	bne	a5,s3,00000000230918DE

l23091928:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2309193C:
	c.mv	s2,a0
	c.j	0000000023091928

l23091940:
	addi	s2,zero,-0000006A
	c.j	0000000023091928

;; mbedtls_asn1_get_alg: 23091946
;;   Called from:
;;     23087FE8 (in pk_get_pk_alg)
;;     2309CF28 (in mbedtls_x509_get_alg)
mbedtls_asn1_get_alg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.mv	s1,a3
	c.mv	s4,a2
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.mv	s3,a1
	jal	ra,000000002309171C
	c.mv	s2,a0
	c.bnez	a0,00000000230919B4

l2309196A:
	c.lw	s0,0(a5)
	addi	s2,zero,-00000060
	sub	s3,s3,a5
	bge	zero,s3,00000000230919B4

l23091978:
	lbu	a5,a5,+00000000
	c.li	a3,00000006
	addi	a2,s4,+00000004
	sw	a5,s4,+00000000
	lw	s3,s0,+00000000
	c.lwsp	a2,000000E4
	c.mv	a0,s0
	c.add	s3,a5
	c.mv	a1,s3
	jal	ra,000000002309171C
	c.mv	s2,a0
	c.bnez	a0,00000000230919B4

l2309199A:
	c.lw	s0,0(a5)
	lw	a4,s4,+00000004
	sw	a5,s4,+00000008
	c.add	a5,a4
	c.sw	s0,0(a5)
	bne	a5,s3,00000000230919CE

l230919AC:
	addi	a5,s1,+0000000C

l230919B0:
	bne	s1,a5,00000000230919C6

l230919B4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230919C6:
	sb	zero,s1,+00000000
	c.addi	s1,00000001
	c.j	00000000230919B0

l230919CE:
	lbu	a5,a5,+00000000
	addi	a2,s1,+00000004
	c.mv	a1,s3
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.mv	a0,s0
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	jal	ra,0000000023091640
	c.bnez	a0,00000000230919FC

l230919E8:
	c.lw	s0,0(a5)
	c.lw	s1,4(a4)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	beq	a5,s3,00000000230919B4

l230919F6:
	addi	s2,zero,-00000066
	c.j	00000000230919B4

l230919FC:
	c.mv	s2,a0
	c.j	00000000230919B4

;; mpi_sub_hlp: 23091A00
;;   Called from:
;;     230924AA (in mpi_montmul)
;;     230926FE (in mbedtls_mpi_sub_abs)
mpi_sub_hlp proc
	c.mv	a3,a2
	c.li	a5,00000000
	c.li	a7,00000000

l23091A06:
	slli	a6,a7,00000002
	bne	a7,a0,0000000023091A14

l23091A0E:
	c.add	a2,a6

l23091A10:
	c.bnez	a5,0000000023091A38

l23091A12:
	c.jr	ra

l23091A14:
	c.lw	a3,0(a4)
	c.add	a6,a1
	c.addi	a7,00000001
	sltu	t1,a4,a5
	c.sub	a4,a5
	c.sw	a3,0(a4)
	lw	a6,a6,+00000000
	c.addi	a3,00000004
	sltu	a5,a4,a6
	sub	a4,a4,a6
	sw	a4,a3,+00000FFC
	c.add	a5,t1
	c.j	0000000023091A06

l23091A38:
	c.lw	a2,0(a4)
	c.addi	a2,00000004
	sub	a3,a4,a5
	sw	a3,a2,+00000FFC
	sltu	a5,a4,a5
	c.j	0000000023091A10

;; mpi_mul_hlp: 23091A4A
;;   Called from:
;;     230924F8 (in mpi_montmul)
;;     23092506 (in mpi_montmul)
;;     23092900 (in mbedtls_mpi_mul_mpi)
mpi_mul_hlp proc
	c.mv	a4,a2
	c.mv	a7,a1
	c.mv	t1,a0
	c.li	a5,00000000
	c.li	t3,0000000F

l23091A54:
	lw	a6,a4,+00000000
	bltu	t3,t1,0000000023091BBE

l23091A5C:
	srli	a4,a0,00000004
	c.li	a7,FFFFFFF0
	add	a7,a4,a7
	c.slli	a4,06
	c.add	a1,a4
	c.add	a2,a4
	c.li	a4,00000007
	c.add	a0,a7
	bgeu	a4,a0,0000000023091B9A

l23091A74:
	lw	a7,a1,+00000000
	c.addi	a0,FFFFFFF8
	addi	a2,a2,+00000020
	add	a4,a3,a7
	addi	a1,a1,+00000020
	sltu	a7,a3,a7
	c.add	a4,a5
	sltu	a5,a4,a5
	c.add	a4,a6
	sw	a4,a2,+00000FE0
	sltu	a6,a4,a6
	c.add	a7,a5
	lw	a5,a1,-0000001C
	c.add	a6,a7
	add	a4,a3,a5
	sltu	a5,a3,a5
	c.add	a4,a6
	sltu	a6,a4,a6
	c.add	a6,a5
	lw	a5,a2,-0000001C
	c.add	a4,a5
	sw	a4,a2,+00000FE4
	sltu	a5,a4,a5
	lw	a4,a1,-00000018
	c.add	a6,a5
	add	a5,a3,a4
	sltu	a4,a3,a4
	c.add	a5,a6
	sltu	a6,a5,a6
	c.add	a4,a6
	lw	a6,a2,-00000018
	c.add	a5,a6
	sw	a5,a2,+00000FE8
	sltu	a6,a5,a6
	c.add	a6,a4
	lw	a4,a1,-00000014
	add	a7,a3,a4
	sltu	a4,a3,a4
	c.add	a7,a6
	sltu	a6,a7,a6
	c.add	a6,a4
	lw	a4,a2,-00000014
	c.add	a7,a4
	sw	a7,a2,+00000FEC
	lw	a5,a1,-00000010
	sltu	a4,a7,a4
	c.add	a4,a6
	add	a7,a3,a5
	sltu	a5,a3,a5
	c.add	a7,a4
	sltu	a4,a7,a4
	c.add	a4,a5
	lw	a5,a2,-00000010
	c.add	a7,a5
	sw	a7,a2,+00000FF0
	lw	a6,a1,-0000000C
	sltu	a5,a7,a5
	c.add	a5,a4
	add	a7,a3,a6
	sltu	a6,a3,a6
	c.add	a7,a5
	sltu	a5,a7,a5
	c.add	a5,a6
	lw	a6,a2,-0000000C
	c.add	a7,a6
	sw	a7,a2,+00000FF4
	lw	a4,a1,-00000008
	sltu	a6,a7,a6
	c.add	a6,a5
	add	a7,a3,a4
	sltu	a4,a3,a4
	c.add	a7,a6
	sltu	a6,a7,a6
	c.add	a6,a4
	lw	a4,a2,-00000008
	c.add	a7,a4
	sw	a7,a2,+00000FF8
	lw	a5,a1,-00000004
	sltu	a4,a7,a4
	c.add	a4,a6
	add	a6,a3,a5
	sltu	a5,a3,a5
	c.add	a6,a4
	sltu	a4,a6,a4
	c.add	a4,a5
	lw	a5,a2,-00000004
	c.add	a6,a5
	sltu	a5,a6,a5
	sw	a6,a2,+00000FFC
	c.add	a5,a4

l23091B9A:
	c.slli	a0,02
	add	t3,a1,a0
	c.mv	a6,a2

l23091BA2:
	lw	a7,a6,+00000000
	c.addi	a6,00000004
	bne	a1,t3,0000000023091E06

l23091BAC:
	c.add	a2,a0

l23091BAE:
	c.lw	a2,0(a4)
	c.addi	a2,00000004
	c.add	a4,a5
	sw	a4,a2,+00000FFC
	bltu	a4,a5,0000000023091E2C

l23091BBC:
	c.jr	ra

l23091BBE:
	lw	t5,a7,+00000000
	addi	a7,a7,+00000040
	addi	a4,a4,+00000040
	add	t4,a3,t5
	c.addi	t1,FFFFFFF0
	sltu	t5,a3,t5
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	t4,a6
	sw	t4,a4,+00000FC0
	sltu	a6,t4,a6
	c.add	t5,a5
	lw	a5,a7,-0000003C
	c.add	a6,t5
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-0000003C
	c.add	t4,a5
	sw	t4,a4,+00000FC4
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000038
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000038
	c.add	t4,a6
	sw	t4,a4,+00000FC8
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-00000034
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-00000034
	c.add	t4,a5
	sw	t4,a4,+00000FCC
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000030
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000030
	c.add	t4,a6
	sw	t4,a4,+00000FD0
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-0000002C
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-0000002C
	c.add	t4,a5
	sw	t4,a4,+00000FD4
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000028
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000028
	c.add	t4,a6
	sw	t4,a4,+00000FD8
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-00000024
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-00000024
	c.add	t4,a5
	sw	t4,a4,+00000FDC
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000020
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000020
	c.add	t4,a6
	sw	t4,a4,+00000FE0
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-0000001C
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-0000001C
	c.add	t4,a5
	sw	t4,a4,+00000FE4
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000018
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000018
	c.add	t4,a6
	sw	t4,a4,+00000FE8
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-00000014
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-00000014
	c.add	t4,a5
	sw	t4,a4,+00000FEC
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000010
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000010
	c.add	t4,a6
	sw	t4,a4,+00000FF0
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a7,-0000000C
	add	t4,a3,a5
	sltu	a5,a3,a5
	c.add	t4,a6
	sltu	a6,t4,a6
	c.add	a6,a5
	lw	a5,a4,-0000000C
	c.add	t4,a5
	sw	t4,a4,+00000FF4
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a7,-00000008
	add	t4,a3,a6
	sltu	a6,a3,a6
	c.add	t4,a5
	sltu	a5,t4,a5
	c.add	a5,a6
	lw	a6,a4,-00000008
	c.add	t4,a6
	sw	t4,a4,+00000FF8
	sltu	a6,t4,a6
	lw	t4,a7,-00000004
	c.add	a6,a5
	add	a5,a3,t4
	sltu	t4,a3,t4
	c.add	a5,a6
	sltu	a6,a5,a6
	c.add	a6,t4
	lw	t4,a4,-00000004
	c.add	a5,t4
	sw	a5,a4,+00000FFC
	sltu	a5,a5,t4
	c.add	a5,a6
	c.j	0000000023091A54

l23091E06:
	c.addi	a1,00000004
	lw	t1,a1,-00000004
	add	a4,a3,t1
	sltu	t1,a3,t1
	c.add	a4,a5
	sltu	a5,a4,a5
	c.add	a4,a7
	sw	a4,a6,+00000FFC
	sltu	a4,a4,a7
	c.add	t1,a5
	add	a5,a4,t1
	c.j	0000000023091BA2

l23091E2C:
	c.li	a5,00000001
	c.j	0000000023091BAE

;; mbedtls_mpi_init: 23091E30
;;   Called from:
;;     2308878C (in mbedtls_rsa_check_privkey)
;;     23088792 (in mbedtls_rsa_check_privkey)
;;     23088798 (in mbedtls_rsa_check_privkey)
;;     2308879E (in mbedtls_rsa_check_privkey)
;;     230887A4 (in mbedtls_rsa_check_privkey)
;;     230887AA (in mbedtls_rsa_check_privkey)
;;     230887B0 (in mbedtls_rsa_check_privkey)
;;     230887B6 (in mbedtls_rsa_check_privkey)
;;     230887BC (in mbedtls_rsa_check_privkey)
;;     230887C2 (in mbedtls_rsa_check_privkey)
;;     230887C8 (in mbedtls_rsa_check_privkey)
;;     230887CE (in mbedtls_rsa_check_privkey)
;;     230887D4 (in mbedtls_rsa_check_privkey)
;;     230889BC (in mbedtls_rsa_public)
;;     23088A5C (in mbedtls_rsa_private)
;;     23088A62 (in mbedtls_rsa_private)
;;     23088A68 (in mbedtls_rsa_private)
;;     2309439E (in ecp_safe_invert_jac)
;;     23094532 (in ecp_double_jac)
;;     23094538 (in ecp_double_jac)
;;     2309453E (in ecp_double_jac)
;;     23094544 (in ecp_double_jac)
;;     2309497A (in ecp_normalize_jac)
;;     23094980 (in ecp_normalize_jac)
;;     23094A74 (in ecp_normalize_jac_many)
;;     23094A7A (in ecp_normalize_jac_many)
;;     23094A80 (in ecp_normalize_jac_many)
;;     23094C32 (in mbedtls_ecp_point_init.part.2)
;;     23094C3A (in mbedtls_ecp_point_init.part.2)
;;     23094C48 (in mbedtls_ecp_point_init.part.2)
;;     23094CDC (in mbedtls_ecp_keypair_init)
;;     23094E4E (in ecp_add_mixed)
;;     23094E54 (in ecp_add_mixed)
;;     23094E5A (in ecp_add_mixed)
;;     23094E60 (in ecp_add_mixed)
;;     23094E6A (in ecp_add_mixed)
;;     23094E70 (in ecp_add_mixed)
;;     23094E76 (in ecp_add_mixed)
;;     23095224 (in ecp_mul_comb)
;;     2309522A (in ecp_mul_comb)
;;     230954DE (in ecp_mul_comb)
;;     230954EA (in ecp_mul_comb)
;;     230957B6 (in mbedtls_ecp_check_pubkey)
;;     230957BC (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_init proc
	c.beqz	a0,0000000023091E3E

l23091E32:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008

l23091E3E:
	c.jr	ra

;; mbedtls_mpi_free: 23091E40
;;   Called from:
;;     230888F4 (in mbedtls_rsa_check_privkey)
;;     230888FA (in mbedtls_rsa_check_privkey)
;;     23088900 (in mbedtls_rsa_check_privkey)
;;     23088906 (in mbedtls_rsa_check_privkey)
;;     2308890C (in mbedtls_rsa_check_privkey)
;;     23088912 (in mbedtls_rsa_check_privkey)
;;     23088918 (in mbedtls_rsa_check_privkey)
;;     2308891E (in mbedtls_rsa_check_privkey)
;;     23088924 (in mbedtls_rsa_check_privkey)
;;     2308892A (in mbedtls_rsa_check_privkey)
;;     23088930 (in mbedtls_rsa_check_privkey)
;;     23088936 (in mbedtls_rsa_check_privkey)
;;     2308893C (in mbedtls_rsa_check_privkey)
;;     23088A0A (in mbedtls_rsa_public)
;;     23088B8A (in mbedtls_rsa_private)
;;     23088B90 (in mbedtls_rsa_private)
;;     23088B96 (in mbedtls_rsa_private)
;;     230899FC (in mbedtls_rsa_free)
;;     23089A04 (in mbedtls_rsa_free)
;;     23089A0C (in mbedtls_rsa_free)
;;     23089A14 (in mbedtls_rsa_free)
;;     23089A1C (in mbedtls_rsa_free)
;;     23089A24 (in mbedtls_rsa_free)
;;     23089A2C (in mbedtls_rsa_free)
;;     23089A34 (in mbedtls_rsa_free)
;;     23089A3C (in mbedtls_rsa_free)
;;     23089A44 (in mbedtls_rsa_free)
;;     23089A4C (in mbedtls_rsa_free)
;;     23089A54 (in mbedtls_rsa_free)
;;     23089A62 (in mbedtls_rsa_free)
;;     23091F80 (in mbedtls_mpi_copy)
;;     23092712 (in mbedtls_mpi_sub_abs)
;;     23092856 (in mbedtls_mpi_mul_mpi)
;;     2309285C (in mbedtls_mpi_mul_mpi)
;;     230929B4 (in mbedtls_mpi_div_mpi)
;;     230929BA (in mbedtls_mpi_div_mpi)
;;     230929C0 (in mbedtls_mpi_div_mpi)
;;     230929C6 (in mbedtls_mpi_div_mpi)
;;     230929CC (in mbedtls_mpi_div_mpi)
;;     2309308C (in mbedtls_mpi_exp_mod)
;;     23093092 (in mbedtls_mpi_exp_mod)
;;     23093098 (in mbedtls_mpi_exp_mod)
;;     230930A8 (in mbedtls_mpi_exp_mod)
;;     230930F2 (in mbedtls_mpi_exp_mod)
;;     230931D2 (in mbedtls_mpi_gcd)
;;     230931D8 (in mbedtls_mpi_gcd)
;;     230931DE (in mbedtls_mpi_gcd)
;;     230933CC (in mbedtls_mpi_inv_mod)
;;     230933D2 (in mbedtls_mpi_inv_mod)
;;     230933D8 (in mbedtls_mpi_inv_mod)
;;     230933DE (in mbedtls_mpi_inv_mod)
;;     230933E4 (in mbedtls_mpi_inv_mod)
;;     230933EA (in mbedtls_mpi_inv_mod)
;;     230933F0 (in mbedtls_mpi_inv_mod)
;;     230933F6 (in mbedtls_mpi_inv_mod)
;;     230933FC (in mbedtls_mpi_inv_mod)
;;     230943CC (in ecp_safe_invert_jac)
;;     23094580 (in ecp_double_jac)
;;     23094586 (in ecp_double_jac)
;;     2309458C (in ecp_double_jac)
;;     23094592 (in ecp_double_jac)
;;     23094A0A (in ecp_normalize_jac)
;;     23094A10 (in ecp_normalize_jac)
;;     23094B0A (in ecp_normalize_jac_many)
;;     23094B10 (in ecp_normalize_jac_many)
;;     23094B16 (in ecp_normalize_jac_many)
;;     23094B28 (in ecp_normalize_jac_many)
;;     23094C16 (in ecp_normalize_jac_many)
;;     23094C54 (in mbedtls_ecp_point_free.part.4)
;;     23094C5C (in mbedtls_ecp_point_free.part.4)
;;     23094C6A (in mbedtls_ecp_point_free.part.4)
;;     23094D10 (in mbedtls_ecp_group_free)
;;     23094D18 (in mbedtls_ecp_group_free)
;;     23094D20 (in mbedtls_ecp_group_free)
;;     23094D30 (in mbedtls_ecp_group_free)
;;     23094D88 (in mbedtls_ecp_keypair_free)
;;     23094EF8 (in ecp_add_mixed)
;;     23094EFE (in ecp_add_mixed)
;;     23094F04 (in ecp_add_mixed)
;;     23094F0A (in ecp_add_mixed)
;;     23094F10 (in ecp_add_mixed)
;;     23094F16 (in ecp_add_mixed)
;;     23094F1C (in ecp_add_mixed)
;;     23095344 (in ecp_mul_comb)
;;     2309534A (in ecp_mul_comb)
;;     23095624 (in ecp_mul_comb)
;;     2309562A (in ecp_mul_comb)
;;     23095856 (in mbedtls_ecp_check_pubkey)
;;     2309585C (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_free proc
	c.beqz	a0,0000000023091E7A

l23091E42:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,8(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023091E5E

l23091E4E:
	c.lw	a0,4(a4)
	c.li	a3,FFFFFFFF

l23091E52:
	c.addi	a4,FFFFFFFF
	bne	a4,a3,0000000023091E72

l23091E58:
	c.lw	s0,8(a0)
	jal	ra,0000000023064972

l23091E5E:
	c.li	a5,00000001
	c.sw	s0,0(a5)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23091E72:
	sw	zero,a5,+00000000
	c.addi	a5,00000004
	c.j	0000000023091E52

l23091E7A:
	c.jr	ra

;; mbedtls_mpi_grow: 23091E7C
;;   Called from:
;;     23091EF0 (in mbedtls_mpi_shrink)
;;     23091FA8 (in mbedtls_mpi_copy)
;;     23091FEA (in mbedtls_mpi_safe_cond_assign)
;;     23092070 (in mbedtls_mpi_lset)
;;     23092190 (in mbedtls_mpi_read_binary)
;;     23092288 (in mbedtls_mpi_shift_l)
;;     23092608 (in mbedtls_mpi_add_abs)
;;     23092638 (in mbedtls_mpi_add_abs)
;;     2309289E (in mbedtls_mpi_mul_mpi)
;;     23092A04 (in mbedtls_mpi_div_mpi)
;;     23092A1C (in mbedtls_mpi_div_mpi)
;;     23092A28 (in mbedtls_mpi_div_mpi)
;;     23092DBA (in mbedtls_mpi_exp_mod)
;;     23092DC8 (in mbedtls_mpi_exp_mod)
;;     23092DD8 (in mbedtls_mpi_exp_mod)
;;     23092EEC (in mbedtls_mpi_exp_mod)
;;     23092F3C (in mbedtls_mpi_exp_mod)
mbedtls_mpi_grow proc
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bgeu	a5,a1,0000000023091E98

l23091E86:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23091E8A:
	c.li	a0,FFFFFFF0

l23091E8C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23091E98:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.li	a0,00000000
	bgeu	a5,a1,0000000023091E8C

l23091EAC:
	c.mv	s1,a1
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,00000000230904A4
	c.mv	s2,a0
	c.beqz	a0,0000000023091E8A

l23091EBA:
	c.lw	s0,8(a1)
	c.beqz	a1,0000000023091ED8

l23091EBE:
	c.lw	s0,4(a2)
	c.slli	a2,02
	jal	ra,00000000230A382C
	c.lw	s0,8(a4)
	c.lw	s0,4(a5)
	c.li	a3,FFFFFFFF

l23091ECC:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,0000000023091EE2

l23091ED2:
	c.lw	s0,8(a0)
	jal	ra,0000000023064972

l23091ED8:
	c.sw	s0,4(s1)
	sw	s2,s0,+00000008
	c.li	a0,00000000
	c.j	0000000023091E8C

l23091EE2:
	sw	zero,a4,+00000000
	c.addi	a4,00000004
	c.j	0000000023091ECC

;; mbedtls_mpi_shrink: 23091EEA
;;   Called from:
;;     23094BF0 (in ecp_normalize_jac_many)
;;     23094C04 (in ecp_normalize_jac_many)
mbedtls_mpi_shrink proc
	c.lw	a0,4(a4)
	bltu	a1,a4,0000000023091F4E

l23091EF0:
	jal	zero,0000000023091E7C

l23091EF4:
	c.lw	s0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.bnez	a4,0000000023091F04

l23091F00:
	c.addi	a5,FFFFFFFF

l23091F02:
	c.bnez	a5,0000000023091EF4

l23091F04:
	c.addi	a5,00000001
	bgeu	s1,a5,0000000023091F0C

l23091F0A:
	c.mv	s1,a5

l23091F0C:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,00000000230904A4
	c.mv	s2,a0
	c.li	a5,FFFFFFF0
	c.beqz	a0,0000000023091F40

l23091F1A:
	c.lw	s0,8(a1)
	c.beqz	a1,0000000023091F38

l23091F1E:
	slli	a2,s1,00000002
	jal	ra,00000000230A382C
	c.lw	s0,8(a4)
	c.lw	s0,4(a5)
	c.li	a3,FFFFFFFF

l23091F2C:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,0000000023091F62

l23091F32:
	c.lw	s0,8(a0)
	jal	ra,0000000023064972

l23091F38:
	c.sw	s0,4(s1)
	sw	s2,s0,+00000008
	c.li	a5,00000000

l23091F40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23091F4E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a5,a4,-00000001
	c.j	0000000023091F02

l23091F62:
	sw	zero,a4,+00000000
	c.addi	a4,00000004
	c.j	0000000023091F2C

;; mbedtls_mpi_copy: 23091F6A
;;   Called from:
;;     2309265A (in mbedtls_mpi_add_abs)
;;     230926DE (in mbedtls_mpi_sub_abs)
;;     23092708 (in mbedtls_mpi_sub_abs)
;;     2309284A (in mbedtls_mpi_mul_mpi)
;;     2309287E (in mbedtls_mpi_mul_mpi)
;;     230929D6 (in mbedtls_mpi_div_mpi)
;;     230929E4 (in mbedtls_mpi_div_mpi)
;;     230929F0 (in mbedtls_mpi_div_mpi)
;;     23092ABE (in mbedtls_mpi_div_mpi)
;;     23092AF0 (in mbedtls_mpi_div_mpi)
;;     23092C1A (in mbedtls_mpi_div_mpi)
;;     23092DF4 (in mbedtls_mpi_exp_mod)
;;     23092E86 (in mbedtls_mpi_exp_mod)
;;     23092ECE (in mbedtls_mpi_exp_mod)
;;     23092EFE (in mbedtls_mpi_exp_mod)
;;     23092F4A (in mbedtls_mpi_exp_mod)
;;     2309311C (in mbedtls_mpi_gcd)
;;     2309312A (in mbedtls_mpi_gcd)
;;     2309317E (in mbedtls_mpi_gcd)
;;     230932D6 (in mbedtls_mpi_inv_mod)
;;     230932E4 (in mbedtls_mpi_inv_mod)
;;     230932F2 (in mbedtls_mpi_inv_mod)
;;     2309339A (in mbedtls_mpi_inv_mod)
;;     2309478E (in ecp_double_jac)
;;     2309479E (in ecp_double_jac)
;;     230947AE (in ecp_double_jac)
;;     23094A8A (in ecp_normalize_jac_many)
;;     23094AF2 (in ecp_normalize_jac_many)
;;     23094DA8 (in mbedtls_ecp_copy)
;;     23094DB6 (in mbedtls_ecp_copy)
;;     23094DCC (in mbedtls_ecp_copy)
;;     23095104 (in ecp_add_mixed)
;;     23095114 (in ecp_add_mixed)
;;     23095124 (in ecp_add_mixed)
;;     2309544E (in ecp_mul_comb)
mbedtls_mpi_copy proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	beq	a0,a1,0000000023091F84

l23091F7A:
	c.lw	a1,8(a4)
	c.mv	s2,a1
	c.bnez	a4,0000000023091F88

l23091F80:
	jal	ra,0000000023091E40

l23091F84:
	c.li	s3,00000000
	c.j	0000000023091FCA

l23091F88:
	c.lw	a1,4(a2)
	c.mv	s1,a0

l23091F8C:
	c.addi	a2,FFFFFFFF
	c.beqz	a2,0000000023091F9A

l23091F90:
	slli	a5,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023091F8C

l23091F9A:
	lw	a5,s2,+00000000
	addi	s0,a2,+00000001
	c.mv	a1,s0
	c.sw	s1,0(a5)
	c.mv	a0,s1
	jal	ra,0000000023091E7C
	c.mv	s3,a0
	c.bnez	a0,0000000023091FCA

l23091FB0:
	c.lw	s1,4(a2)
	c.lw	s1,8(a0)
	c.li	a1,00000000
	c.slli	a2,02
	jal	ra,00000000230A3A68
	lw	a1,s2,+00000008
	c.lw	s1,8(a0)
	slli	a2,s0,00000002
	jal	ra,00000000230A382C

l23091FCA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_safe_cond_assign: 23091FDA
;;   Called from:
;;     230943C4 (in ecp_safe_invert_jac)
;;     2309441A (in ecp_select_comb)
;;     23094428 (in ecp_select_comb)
;;     23095474 (in ecp_mul_comb)
mbedtls_mpi_safe_cond_assign proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.lw	a1,4(a1)
	c.mv	s0,a0
	c.swsp	a2,00000084
	jal	ra,0000000023091E7C
	c.bnez	a0,0000000023092020

l23091FF0:
	c.lwsp	a2,00000084
	c.lw	s1,0(a3)
	c.li	a4,00000001
	sub	a5,zero,a2
	c.or	a2,a5
	andi	a2,a2,+000000FF
	c.lw	s0,0(a5)
	c.srli	a2,00000007
	c.sub	a4,a2
	add	a5,a4,a5
	add	a3,a2,a3
	c.add	a5,a3
	c.sw	s0,0(a5)
	c.li	a5,00000000

l23092014:
	c.lw	s1,4(a3)
	bltu	a5,a3,000000002309202A

l2309201A:
	c.lw	s0,4(a3)
	bltu	a5,a3,000000002309204C

l23092020:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2309202A:
	c.lw	s0,8(a1)
	c.lw	s1,8(a3)
	slli	a6,a5,00000002
	c.add	a1,a6
	c.add	a3,a6
	c.lw	a3,0(a3)
	lw	a6,a1,+00000000
	c.addi	a5,00000001
	add	a3,a2,a3
	add	a6,a4,a6
	c.add	a3,a6
	c.sw	a1,0(a3)
	c.j	0000000023092014

l2309204C:
	c.lw	s0,8(a3)
	slli	a2,a5,00000002
	c.addi	a5,00000001
	c.add	a3,a2
	c.lw	a3,0(a2)
	add	a2,a2,a4
	c.sw	a3,0(a2)
	c.j	000000002309201A

;; mbedtls_mpi_lset: 23092060
;;   Called from:
;;     2309219A (in mbedtls_mpi_read_binary)
;;     2309231E (in mbedtls_mpi_shift_r)
;;     230928AA (in mbedtls_mpi_mul_mpi)
;;     230929AA (in mbedtls_mpi_div_mpi)
;;     23092A10 (in mbedtls_mpi_div_mpi)
;;     23092B6E (in mbedtls_mpi_div_mpi)
;;     23092BA8 (in mbedtls_mpi_div_mpi)
;;     23092E14 (in mbedtls_mpi_exp_mod)
;;     23093300 (in mbedtls_mpi_inv_mod)
;;     2309330C (in mbedtls_mpi_inv_mod)
;;     23093318 (in mbedtls_mpi_inv_mod)
;;     23093324 (in mbedtls_mpi_inv_mod)
;;     23094A02 (in ecp_normalize_jac)
;;     23094DEC (in mbedtls_ecp_set_zero)
;;     23094DF8 (in mbedtls_ecp_set_zero)
;;     23094E0A (in mbedtls_ecp_set_zero)
;;     230954C8 (in ecp_mul_comb)
;;     23095740 (in mbedtls_ecp_point_read_binary)
mbedtls_mpi_lset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023091E7C
	c.mv	s2,a0
	c.bnez	a0,000000002309209C

l23092078:
	c.lw	s0,4(a2)
	c.lw	s0,8(a0)
	c.li	a1,00000000
	c.slli	a2,02
	jal	ra,00000000230A3A68
	srai	a4,s1,0000001F
	c.lw	s0,8(a3)
	xor	a5,a4,s1
	c.sub	a5,a4
	c.sw	a3,0(a5)
	c.li	a5,FFFFFFFF
	blt	s1,zero,000000002309209A

l23092098:
	c.li	a5,00000001

l2309209A:
	c.sw	s0,0(a5)

l2309209C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_mpi_get_bit: 230920AA
;;   Called from:
;;     23095238 (in ecp_mul_comb)
;;     23095444 (in ecp_mul_comb)
;;     230955B2 (in ecp_mul_comb)
mbedtls_mpi_get_bit proc
	c.lw	a0,4(a5)
	c.slli	a5,05
	bgeu	a1,a5,00000000230920C6

l230920B2:
	c.lw	a0,8(a5)
	srli	a4,a1,00000005
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a0)
	srl	a0,a0,a1
	c.andi	a0,00000001
	c.jr	ra

l230920C6:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_mpi_lsb: 230920CA
;;   Called from:
;;     23093134 (in mbedtls_mpi_gcd)
;;     2309313C (in mbedtls_mpi_gcd)
;;     23093188 (in mbedtls_mpi_gcd)
;;     2309319A (in mbedtls_mpi_gcd)
mbedtls_mpi_lsb proc
	lw	a6,a0,+00000004
	c.li	a3,00000000
	c.li	a4,00000000
	addi	a7,zero,+00000020

l230920D6:
	bne	a6,a4,00000000230920E0

l230920DA:
	c.li	a1,00000000

l230920DC:
	c.mv	a0,a1
	c.jr	ra

l230920E0:
	c.lw	a0,8(a5)
	slli	a2,a4,00000002
	c.add	a5,a2
	lw	t1,a5,+00000000
	c.li	a5,00000000

l230920EE:
	srl	a2,t1,a5
	c.andi	a2,00000001
	add	a1,a3,a5
	c.bnez	a2,00000000230920DC

l230920FA:
	c.addi	a5,00000001
	add	a2,a3,a5
	bne	a5,a7,00000000230920EE

l23092104:
	c.addi	a4,00000001
	c.mv	a3,a2
	c.j	00000000230920D6

;; mbedtls_mpi_bitlen: 2309210A
;;   Called from:
;;     23088704 (in mbedtls_rsa_check_pubkey)
;;     23088712 (in mbedtls_rsa_check_pubkey)
;;     23088720 (in mbedtls_rsa_check_pubkey)
;;     23089344 (in mbedtls_rsa_rsassa_pss_sign)
;;     230893E2 (in mbedtls_rsa_rsassa_pss_sign)
;;     23089708 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2309214E (in mbedtls_mpi_size)
;;     2309225E (in mbedtls_mpi_shift_l)
;;     23092A32 (in mbedtls_mpi_div_mpi)
;;     23092D84 (in mbedtls_mpi_exp_mod)
;;     230944A4 (in ecp_modp)
;;     23095C00 (in mbedtls_ecp_group_load)
;;     23095C0A (in mbedtls_ecp_group_load)
mbedtls_mpi_bitlen proc
	c.lw	a0,4(a5)
	c.beqz	a5,000000002309213A

l2309210E:
	c.lw	a0,8(a4)
	c.addi	a5,FFFFFFFF

l23092112:
	slli	a3,a5,00000002
	c.bnez	a5,000000002309213E

l23092118:
	c.add	a4,a3
	c.lw	a4,0(a2)
	c.li	a0,00000000
	lui	a4,00080000
	addi	a3,zero,+00000020

l23092126:
	and	a1,a2,a4
	c.bnez	a1,0000000023092134

l2309212C:
	c.addi	a0,00000001
	c.srli	a4,00000001
	bne	a0,a3,0000000023092126

l23092134:
	c.addi	a5,00000001
	c.slli	a5,05
	c.sub	a5,a0

l2309213A:
	c.mv	a0,a5
	c.jr	ra

l2309213E:
	add	a2,a4,a3
	c.lw	a2,0(a2)
	c.bnez	a2,0000000023092118

l23092146:
	c.addi	a5,FFFFFFFF
	c.j	0000000023092112

;; mbedtls_mpi_size: 2309214A
;;   Called from:
;;     23087DEA (in pk_parse_key_pkcs1_der)
;;     2308821E (in mbedtls_pk_parse_subpubkey)
;;     230921F2 (in mbedtls_mpi_write_binary)
;;     230956F4 (in mbedtls_ecp_point_read_binary)
mbedtls_mpi_size proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002309210A
	c.lwsp	a2,00000020
	c.addi	a0,00000007
	c.srli	a0,00000003
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_mpi_read_binary: 2309215C
;;   Called from:
;;     23087E78 (in pk_parse_key_sec1_der)
;;     230889C6 (in mbedtls_rsa_public)
;;     23088A72 (in mbedtls_rsa_private)
;;     230917FC (in mbedtls_asn1_get_mpi)
;;     23093232 (in mbedtls_mpi_fill_random)
;;     23095716 (in mbedtls_ecp_point_read_binary)
;;     23095728 (in mbedtls_ecp_point_read_binary)
mbedtls_mpi_read_binary proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	s0,00000000

l23092170:
	beq	s0,s1,000000002309217E

l23092174:
	add	a5,s3,s0
	lbu	a5,a5,+00000000
	c.beqz	a5,00000000230921B0

l2309217E:
	sub	a5,s1,s0
	andi	a1,a5,+00000003
	sltu	a1,zero,a1
	c.srli	a5,00000002
	c.add	a1,a5
	c.mv	a0,s2
	jal	ra,0000000023091E7C
	c.bnez	a0,00000000230921A2

l23092196:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023092060
	c.li	a5,00000000
	c.beqz	a0,00000000230921DA

l230921A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230921B0:
	c.addi	s0,00000001
	c.j	0000000023092170

l230921B4:
	lw	a4,s2,+00000008
	andi	a3,a5,-00000004
	c.addi	s1,FFFFFFFF
	c.add	a4,a3
	add	a3,s3,s1
	lbu	a3,a3,+00000000
	slli	a2,a5,00000003
	c.andi	a2,00000018
	sll	a2,a3,a2
	c.lw	a4,0(a3)
	c.addi	a5,00000001
	c.or	a3,a2
	c.sw	a4,0(a3)

l230921DA:
	bltu	s0,s1,00000000230921B4

l230921DE:
	c.j	00000000230921A2

;; mbedtls_mpi_write_binary: 230921E0
;;   Called from:
;;     23088A02 (in mbedtls_rsa_public)
;;     23088B1A (in mbedtls_rsa_private)
mbedtls_mpi_write_binary proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s1,a2
	c.mv	s3,a0
	c.mv	s0,a1
	jal	ra,000000002309214A
	bltu	s1,a0,0000000023092242

l230921FA:
	c.mv	a2,s1
	c.mv	s2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	add	a2,s0,s1
	c.li	a5,00000000

l2309220C:
	c.addi	a2,FFFFFFFF
	bne	a5,s2,0000000023092222

l23092212:
	c.li	a0,00000000

l23092214:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23092222:
	lw	a1,s3,+00000008
	andi	a4,a5,-00000004
	c.add	a1,a4
	slli	a4,a5,00000003
	andi	a3,a4,+00000018
	c.lw	a1,0(a4)
	c.addi	a5,00000001
	srl	a4,a4,a3
	sb	a4,a2,+00000000
	c.j	000000002309220C

l23092242:
	c.li	a0,FFFFFFF8
	c.j	0000000023092214

;; mbedtls_mpi_shift_l: 23092246
;;   Called from:
;;     23092A44 (in mbedtls_mpi_div_mpi)
;;     23092A50 (in mbedtls_mpi_div_mpi)
;;     23092A68 (in mbedtls_mpi_div_mpi)
;;     23092BF8 (in mbedtls_mpi_div_mpi)
;;     23092C24 (in mbedtls_mpi_div_mpi)
;;     23092E26 (in mbedtls_mpi_exp_mod)
;;     23093172 (in mbedtls_mpi_gcd)
;;     23094632 (in ecp_double_jac)
;;     2309466C (in ecp_double_jac)
;;     230946A4 (in ecp_double_jac)
;;     23094774 (in ecp_double_jac)
mbedtls_mpi_shift_l proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.swsp	ra,0000008C
	srli	s1,a1,00000005
	andi	s3,a1,+0000001F
	jal	ra,000000002309210A
	c.lw	s0,4(a5)
	c.add	a0,s2
	c.slli	a5,05
	bltu	a5,a0,000000002309227A

l2309226C:
	c.li	a5,0000001F
	bltu	a5,s2,000000002309229C

l23092272:
	bne	s3,zero,00000000230922FC

l23092276:
	c.li	a0,00000000
	c.j	000000002309228E

l2309227A:
	andi	a1,a0,+0000001F
	sltu	a1,zero,a1
	c.srli	a0,00000005
	c.add	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023091E7C
	c.beqz	a0,000000002309226C

l2309228E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2309229C:
	c.li	a2,FFFFFFFC
	add	a2,s1,a2
	c.lw	s0,4(a5)
	slli	a4,a5,00000002

l230922A8:
	c.addi	a4,FFFFFFFC
	bltu	s1,a5,00000000230922C2

l230922AE:
	c.slli	a5,02
	c.li	a3,FFFFFFFC

l230922B2:
	c.addi	a5,FFFFFFFC
	beq	a5,a3,0000000023092272

l230922B8:
	c.lw	s0,8(a4)
	c.add	a4,a5
	sw	zero,a4,+00000000
	c.j	00000000230922B2

l230922C2:
	c.lw	s0,8(a3)
	c.addi	a5,FFFFFFFF
	add	a1,a3,a2
	c.add	a1,a4
	c.lw	a1,0(a1)
	c.add	a3,a4
	c.sw	a3,0(a1)
	c.j	00000000230922A8

l230922D4:
	c.lw	s0,8(a4)
	slli	a0,s1,00000002
	c.addi	s1,00000001
	c.add	a4,a0
	c.lw	a4,0(a1)
	sll	a5,a1,s3
	c.sw	a4,0(a5)
	c.lw	s0,8(a5)
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.or	a4,a2
	c.sw	a5,0(a4)
	srl	a2,a1,a3

l230922F4:
	c.lw	s0,4(a5)
	bltu	s1,a5,00000000230922D4

l230922FA:
	c.j	0000000023092276

l230922FC:
	addi	a3,zero,+00000020
	c.li	a2,00000000
	sub	a3,a3,s3
	c.j	00000000230922F4

;; mbedtls_mpi_shift_r: 23092308
;;   Called from:
;;     23092A82 (in mbedtls_mpi_div_mpi)
;;     23092ADE (in mbedtls_mpi_div_mpi)
;;     2309314A (in mbedtls_mpi_gcd)
;;     23093156 (in mbedtls_mpi_gcd)
;;     23093190 (in mbedtls_mpi_gcd)
;;     230931A2 (in mbedtls_mpi_gcd)
;;     230931C8 (in mbedtls_mpi_gcd)
;;     230933A6 (in mbedtls_mpi_inv_mod)
;;     230933C2 (in mbedtls_mpi_inv_mod)
;;     23093432 (in mbedtls_mpi_inv_mod)
;;     2309343C (in mbedtls_mpi_inv_mod)
;;     23093458 (in mbedtls_mpi_inv_mod)
;;     23093464 (in mbedtls_mpi_inv_mod)
;;     23095616 (in ecp_mul_comb)
mbedtls_mpi_shift_r proc
	c.lw	a0,4(a5)
	srli	a3,a1,00000005
	andi	a4,a1,+0000001F
	bltu	a5,a3,000000002309231C

l23092316:
	bne	a5,a3,0000000023092322

l2309231A:
	c.beqz	a4,00000000230923A6

l2309231C:
	c.li	a1,00000000
	jal	zero,0000000023092060

l23092322:
	c.li	a5,0000001F
	bgeu	a5,a1,000000002309233C

l23092328:
	slli	a1,a3,00000002
	c.li	a5,00000000

l2309232E:
	c.lw	a0,4(a2)
	c.sub	a2,a3
	bltu	a5,a2,0000000023092342

l23092336:
	c.lw	a0,4(a3)
	bltu	a5,a3,000000002309235C

l2309233C:
	c.bnez	a4,000000002309236C

l2309233E:
	c.li	a0,00000000
	c.jr	ra

l23092342:
	c.lw	a0,8(a2)
	slli	a7,a5,00000002
	c.addi	a5,00000001
	add	a6,a2,a1
	lw	a6,a6,+00000000
	c.add	a2,a7
	c.addi	a1,00000004
	sw	a6,a2,+00000000
	c.j	000000002309232E

l2309235C:
	c.lw	a0,8(a3)
	slli	a2,a5,00000002
	c.addi	a5,00000001
	c.add	a3,a2
	sw	zero,a3,+00000000
	c.j	0000000023092336

l2309236C:
	c.lw	a0,4(a5)
	addi	a6,zero,+00000020
	c.li	a7,00000000
	c.li	t1,FFFFFFFF
	sub	a6,a6,a4

l2309237A:
	c.addi	a5,FFFFFFFF
	beq	a5,t1,000000002309233E

l23092380:
	c.lw	a0,8(a1)
	slli	a3,a5,00000002
	c.mv	a2,a3
	c.add	a3,a1
	c.lw	a3,0(a1)
	srl	t3,a1,a4
	sw	t3,a3,+00000000
	c.lw	a0,8(a3)
	c.add	a3,a2
	c.lw	a3,0(a2)
	or	a2,a2,a7
	c.sw	a3,0(a2)
	sll	a7,a1,a6
	c.j	000000002309237A

l230923A6:
	c.li	a5,0000001F
	bgeu	a5,a1,000000002309233E

l230923AC:
	c.li	a5,00000000
	c.j	0000000023092336

;; mbedtls_mpi_cmp_abs: 230923B0
;;   Called from:
;;     23092498 (in mpi_montmul)
;;     230926C4 (in mbedtls_mpi_sub_abs)
;;     23092758 (in mbedtls_mpi_add_mpi)
;;     230927B6 (in mbedtls_mpi_sub_mpi)
;;     23092974 (in mbedtls_mpi_div_mpi)
mbedtls_mpi_cmp_abs proc
	c.lw	a0,4(a5)

l230923B2:
	c.bnez	a5,00000000230923BE

l230923B4:
	c.lw	a1,4(a3)

l230923B6:
	c.bnez	a3,00000000230923D0

l230923B8:
	sltu	a4,zero,a5
	c.j	00000000230923F8

l230923BE:
	c.lw	a0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	lw	a4,a4,-00000004
	c.bnez	a4,00000000230923B4

l230923CC:
	c.addi	a5,FFFFFFFF
	c.j	00000000230923B2

l230923D0:
	c.lw	a1,8(a2)
	slli	a4,a3,00000002
	c.add	a4,a2
	lw	a4,a4,-00000004
	c.bnez	a4,00000000230923E2

l230923DE:
	c.addi	a3,FFFFFFFF
	c.j	00000000230923B6

l230923E2:
	c.li	a4,00000001
	bltu	a3,a5,00000000230923F8

l230923E8:
	c.li	a4,FFFFFFFF
	bltu	a5,a3,00000000230923F8

l230923EE:
	c.addi	a5,FFFFFFFF
	c.li	a1,FFFFFFFF

l230923F2:
	bne	a5,a1,00000000230923FC

l230923F6:
	c.li	a4,00000000

l230923F8:
	c.mv	a0,a4
	c.jr	ra

l230923FC:
	c.lw	a0,8(a3)
	slli	a4,a5,00000002
	c.add	a3,a4
	c.add	a4,a2
	c.lw	a3,0(a3)
	c.lw	a4,0(a4)
	bltu	a4,a3,0000000023092418

l2309240E:
	c.addi	a5,FFFFFFFF
	bgeu	a3,a4,00000000230923F2

l23092414:
	c.li	a4,FFFFFFFF
	c.j	00000000230923F8

l23092418:
	c.li	a4,00000001
	c.j	00000000230923F8

;; mpi_montmul: 2309241C
;;   Called from:
;;     23092E78 (in mbedtls_mpi_exp_mod)
;;     23092EA6 (in mbedtls_mpi_exp_mod)
;;     23092F14 (in mbedtls_mpi_exp_mod)
;;     23092F5E (in mbedtls_mpi_exp_mod)
;;     23092FA0 (in mbedtls_mpi_exp_mod)
;;     23092FD2 (in mbedtls_mpi_exp_mod)
;;     23093016 (in mbedtls_mpi_exp_mod)
;;     23093038 (in mbedtls_mpi_exp_mod)
;;     23093050 (in mbedtls_mpi_exp_mod)
;;     2309306E (in mbedtls_mpi_exp_mod)
mpi_montmul proc
	c.lw	a2,4(a5)
	lw	a7,a4,+00000004
	c.addi	a5,00000001
	bltu	a7,a5,0000000023092520

l23092428:
	lw	a6,a4,+00000008
	c.li	a5,FFFFFFFC
	beq	a6,zero,0000000023092522

l23092432:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s5,00000098
	c.swsp	s9,00000090
	c.mv	s0,a2
	c.mv	s9,a1
	c.mv	s5,a0
	slli	a2,a7,00000002
	c.li	a1,00000000
	c.mv	a0,a6
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s10,00000010
	c.mv	s4,a4
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s6,00000018
	c.swsp	s11,0000008C
	c.mv	s7,a3
	jal	ra,00000000230A3A68
	lw	s8,s0,+00000004
	lw	s10,s9,+00000004
	lw	a5,s4,+00000008
	bgeu	s8,s10,0000000023092476

l23092474:
	c.mv	s10,s8

l23092476:
	addi	s6,s8,+00000001
	c.slli	s6,02
	c.mv	s1,a5
	c.li	s3,00000000

l23092480:
	lw	a0,s5,+00000008
	bne	s3,s8,00000000230924D0

l23092488:
	addi	a1,s6,-00000004
	c.add	a1,a5
	c.mv	a2,s6
	jal	ra,00000000230A382C
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,00000000230923B0
	lw	a1,s5,+00000008
	blt	a0,zero,000000002309251A

l230924A4:
	c.mv	a2,a1
	c.lw	s0,8(a1)

l230924A8:
	c.mv	a0,s3
	jal	ra,0000000023091A00
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.li	a5,00000000
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
	c.mv	a0,a5
	c.addi16sp	00000050
	c.jr	ra

l230924D0:
	lw	a1,s9,+00000008
	slli	a4,s3,00000002
	c.add	a0,a4
	lw	s11,a0,+00000000
	lw	s2,a1,+00000000
	c.lw	s1,0(a4)
	c.mv	a2,s1
	add	s2,s11,s2
	c.mv	a3,s11
	c.mv	a0,s10
	c.swsp	a5,00000084
	c.addi	s3,00000001
	c.add	s2,a4
	add	s2,s2,s7
	jal	ra,0000000023091A4A
	c.lw	s0,8(a1)
	c.mv	a2,s1
	c.mv	a0,s8
	c.addi	s1,00000004
	c.mv	a3,s2
	jal	ra,0000000023091A4A
	add	a4,s1,s6
	sw	s11,s1,+00000FFC
	sw	zero,a4,+00000000
	c.lwsp	a2,000000E4
	c.j	0000000023092480

l2309251A:
	lw	a2,s4,+00000008
	c.j	00000000230924A8

l23092520:
	c.li	a5,FFFFFFFC

l23092522:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_mpi_cmp_mpi: 23092526
;;   Called from:
;;     2308872E (in mbedtls_rsa_check_pubkey)
;;     230888A0 (in mbedtls_rsa_check_privkey)
;;     230888B4 (in mbedtls_rsa_check_privkey)
;;     230888C0 (in mbedtls_rsa_check_privkey)
;;     230888CC (in mbedtls_rsa_check_privkey)
;;     23088984 (in mbedtls_rsa_check_pub_priv)
;;     23088992 (in mbedtls_rsa_check_pub_priv)
;;     230889D8 (in mbedtls_rsa_public)
;;     23088A84 (in mbedtls_rsa_private)
;;     230925D4 (in mbedtls_mpi_cmp_int)
;;     23092A76 (in mbedtls_mpi_div_mpi)
;;     23092BD8 (in mbedtls_mpi_div_mpi)
;;     23092CBA (in mbedtls_mpi_mod_mpi)
;;     23092E52 (in mbedtls_mpi_exp_mod)
;;     230931AE (in mbedtls_mpi_gcd)
;;     23093342 (in mbedtls_mpi_inv_mod)
;;     2309338E (in mbedtls_mpi_inv_mod)
;;     230944EE (in ecp_modp)
;;     230945C0 (in ecp_double_jac)
;;     23094608 (in ecp_double_jac)
;;     23094642 (in ecp_double_jac)
;;     2309467A (in ecp_double_jac)
;;     230946B2 (in ecp_double_jac)
;;     23094782 (in ecp_double_jac)
;;     23094810 (in ecp_double_jac)
;;     23094898 (in ecp_double_jac)
;;     23095044 (in ecp_add_mixed)
;;     23095256 (in ecp_mul_comb)
;;     23095266 (in ecp_mul_comb)
;;     23095504 (in ecp_mul_comb)
;;     230957A0 (in mbedtls_ecp_check_pubkey)
;;     230957AC (in mbedtls_ecp_check_pubkey)
;;     2309583A (in mbedtls_ecp_check_pubkey)
;;     23095846 (in mbedtls_ecp_check_pubkey)
;;     2309589A (in mbedtls_ecp_check_pubkey)
;;     230958EA (in mbedtls_ecp_check_privkey)
;;     230959DC (in mbedtls_ecp_check_pub_priv)
;;     230959EC (in mbedtls_ecp_check_pub_priv)
;;     230959FC (in mbedtls_ecp_check_pub_priv)
;;     23095A38 (in mbedtls_ecp_check_pub_priv)
;;     23095A42 (in mbedtls_ecp_check_pub_priv)
;;     23095A4C (in mbedtls_ecp_check_pub_priv)
mbedtls_mpi_cmp_mpi proc
	c.lw	a0,4(a5)

l23092528:
	c.bnez	a5,0000000023092534

l2309252A:
	c.lw	a1,4(a4)

l2309252C:
	c.bnez	a4,0000000023092546

l2309252E:
	c.li	a4,00000000
	c.bnez	a5,000000002309255E

l23092532:
	c.j	0000000023092560

l23092534:
	c.lw	a0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	lw	a4,a4,-00000004
	c.bnez	a4,000000002309252A

l23092542:
	c.addi	a5,FFFFFFFF
	c.j	0000000023092528

l23092546:
	lw	a6,a1,+00000008
	slli	a3,a4,00000002
	c.add	a3,a6
	lw	a3,a3,-00000004
	c.bnez	a3,000000002309255A

l23092556:
	c.addi	a4,FFFFFFFF
	c.j	000000002309252C

l2309255A:
	bgeu	a4,a5,0000000023092564

l2309255E:
	c.lw	a0,0(a4)

l23092560:
	c.mv	a0,a4
	c.jr	ra

l23092564:
	c.lw	a1,0(a3)
	bgeu	a5,a4,0000000023092570

l2309256A:
	sub	a4,zero,a3
	c.j	0000000023092560

l23092570:
	c.lw	a0,0(a4)
	bge	zero,a4,000000002309257E

l23092576:
	bge	a3,zero,00000000230925A6

l2309257A:
	c.li	a4,00000001
	c.j	0000000023092560

l2309257E:
	bge	zero,a3,00000000230925A6

l23092582:
	c.beqz	a4,00000000230925A6

l23092584:
	c.li	a4,FFFFFFFF
	c.j	0000000023092560

l23092588:
	c.lw	a0,8(a2)
	slli	a3,a5,00000002
	c.add	a2,a3
	c.add	a3,a6
	c.lw	a2,0(a2)
	c.lw	a3,0(a3)
	bltu	a3,a2,0000000023092560

l2309259A:
	c.addi	a5,FFFFFFFF
	bgeu	a2,a3,00000000230925AA

l230925A0:
	sub	a4,zero,a4
	c.j	0000000023092560

l230925A6:
	c.addi	a5,FFFFFFFF
	c.li	a1,FFFFFFFF

l230925AA:
	bne	a5,a1,0000000023092588

l230925AE:
	c.li	a4,00000000
	c.j	0000000023092560

;; mbedtls_mpi_cmp_int: 230925B2
;;   Called from:
;;     230888D6 (in mbedtls_rsa_check_privkey)
;;     230888E0 (in mbedtls_rsa_check_privkey)
;;     230888EA (in mbedtls_rsa_check_privkey)
;;     23088BF2 (in mbedtls_rsa_private)
;;     23092948 (in mbedtls_mpi_div_mpi)
;;     23092AFC (in mbedtls_mpi_div_mpi)
;;     23092C0E (in mbedtls_mpi_div_mpi)
;;     23092C78 (in mbedtls_mpi_mod_mpi)
;;     23092CAE (in mbedtls_mpi_mod_mpi)
;;     23092D1C (in mbedtls_mpi_exp_mod)
;;     23092D3C (in mbedtls_mpi_exp_mod)
;;     23093168 (in mbedtls_mpi_gcd)
;;     23093262 (in mbedtls_mpi_inv_mod)
;;     230932B8 (in mbedtls_mpi_inv_mod)
;;     23093378 (in mbedtls_mpi_inv_mod)
;;     23093382 (in mbedtls_mpi_inv_mod)
;;     230943B4 (in ecp_safe_invert_jac)
;;     230944C6 (in ecp_modp)
;;     230944E4 (in ecp_modp)
;;     230947BA (in ecp_double_jac)
;;     23094820 (in ecp_double_jac)
;;     230948EA (in ecp_double_jac)
;;     23094902 (in ecp_double_jac)
;;     2309491A (in ecp_double_jac)
;;     23094932 (in ecp_double_jac)
;;     23094970 (in ecp_normalize_jac)
;;     23094E3A (in ecp_add_mixed)
;;     23094F2A (in ecp_add_mixed)
;;     23094F5E (in ecp_add_mixed)
;;     23094F72 (in ecp_add_mixed)
;;     23094FAC (in ecp_add_mixed)
;;     2309512E (in ecp_add_mixed)
;;     2309514C (in ecp_add_mixed)
;;     2309517E (in ecp_add_mixed)
;;     2309519C (in ecp_add_mixed)
;;     230951B4 (in ecp_add_mixed)
;;     230951CC (in ecp_add_mixed)
;;     23095516 (in ecp_mul_comb)
;;     23095762 (in mbedtls_ecp_check_pubkey)
;;     23095778 (in mbedtls_ecp_check_pubkey)
;;     23095790 (in mbedtls_ecp_check_pubkey)
;;     23095874 (in mbedtls_ecp_check_pubkey)
;;     230958DC (in mbedtls_ecp_check_privkey)
;;     23095932 (in mbedtls_ecp_mul)
mbedtls_mpi_cmp_int proc
	srai	a4,a1,0000001F
	xor	a5,a4,a1
	c.addi	sp,FFFFFFE0
	c.sub	a5,a4
	c.swsp	a5,00000000
	c.swsp	ra,0000008C
	c.li	a5,00000001
	bge	a1,zero,00000000230925CA

l230925C8:
	c.li	a5,FFFFFFFF

l230925CA:
	c.swsp	a5,00000080
	c.addi4spn	a1,00000004
	c.li	a5,00000001
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,0000000023092526
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_add_abs: 230925DE
;;   Called from:
;;     2309278E (in mbedtls_mpi_add_mpi)
;;     230927EC (in mbedtls_mpi_sub_mpi)
;;     23095AD8 (in ecp_mod_koblitz.constprop.0)
;;     23095B22 (in ecp_mod_koblitz.constprop.0)
mbedtls_mpi_add_abs proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s2,a0
	c.mv	s1,a1
	beq	a0,a2,00000000230925FA

l230925F4:
	bne	a0,a1,0000000023092658

l230925F8:
	c.mv	s1,a2

l230925FA:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.lw	s1,4(s0)

l23092602:
	c.bnez	s0,0000000023092676

l23092604:
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023091E7C
	c.mv	s4,a0
	c.bnez	a0,0000000023092664

l23092610:
	lw	a5,s2,+00000008
	c.lw	s1,8(a0)
	c.li	a3,00000000
	c.mv	a2,a5
	c.li	s1,00000000

l2309261C:
	bne	s0,a3,0000000023092688

l23092620:
	slli	a4,s0,00000002
	c.add	a5,a4

l23092626:
	c.beqz	s1,0000000023092664

l23092628:
	lw	a4,s2,+00000004
	addi	s3,s0,+00000001
	bltu	s0,a4,0000000023092646

l23092634:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023091E7C
	c.bnez	a0,00000000230926AA

l2309263E:
	lw	a5,s2,+00000008
	c.slli	s0,02
	c.add	a5,s0

l23092646:
	c.lw	a5,0(a4)
	c.mv	s0,s3
	c.addi	a5,00000004
	c.add	a4,s1
	sw	a4,a5,+00000FFC
	sltu	s1,a4,s1
	c.j	0000000023092626

l23092658:
	c.swsp	a2,00000084
	jal	ra,0000000023091F6A
	c.mv	s4,a0
	c.lwsp	a2,00000084
	c.beqz	a0,00000000230925F8

l23092664:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s4
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23092676:
	c.lw	s1,8(a5)
	slli	a4,s0,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,0000000023092604

l23092684:
	c.addi	s0,FFFFFFFF
	c.j	0000000023092602

l23092688:
	slli	a4,a3,00000002
	c.add	a4,a0
	c.lw	a4,0(a1)
	c.lw	a2,0(a4)
	c.addi	a3,00000001
	c.addi	a2,00000004
	c.add	a4,s1
	sltu	s1,a4,s1
	c.add	a4,a1
	sw	a4,a2,+00000FFC
	sltu	a4,a4,a1
	c.add	s1,a4
	c.j	000000002309261C

l230926AA:
	c.mv	s4,a0
	c.j	0000000023092664

;; mbedtls_mpi_sub_abs: 230926AE
;;   Called from:
;;     23092766 (in mbedtls_mpi_add_mpi)
;;     23092776 (in mbedtls_mpi_add_mpi)
;;     230927C4 (in mbedtls_mpi_sub_mpi)
;;     230927D4 (in mbedtls_mpi_sub_mpi)
;;     230931BC (in mbedtls_mpi_gcd)
;;     230931F6 (in mbedtls_mpi_gcd)
;;     230944FC (in ecp_modp)
;;     230945B4 (in ecp_double_jac)
;;     230947D4 (in ecp_double_jac)
;;     230948A6 (in ecp_double_jac)
;;     230948B2 (in ecp_double_jac)
;;     230948C2 (in ecp_double_jac)
;;     230948D4 (in ecp_double_jac)
;;     230948E0 (in ecp_double_jac)
;;     23094952 (in ecp_double_jac)
;;     2309516E (in ecp_add_mixed)
;;     230958A8 (in mbedtls_ecp_check_pubkey)
;;     230958B4 (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_sub_abs proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a1
	c.swsp	s2,00000010
	c.mv	a1,a2
	c.mv	s2,a0
	c.mv	a0,s3
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a2
	jal	ra,00000000230923B0
	c.li	s0,FFFFFFF6
	blt	a0,zero,0000000023092716

l230926CE:
	c.li	a5,00000001
	c.swsp	a5,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	bne	s1,s2,00000000230926E8

l230926DA:
	c.mv	a1,s1
	c.addi4spn	a0,00000004
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.bnez	a0,0000000023092710

l230926E6:
	c.addi4spn	s1,00000004

l230926E8:
	bne	s3,s2,0000000023092704

l230926EC:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.lw	s1,4(a0)
	c.lw	s1,8(a1)

l230926F6:
	c.bnez	a0,0000000023092726

l230926F8:
	lw	a2,s2,+00000008
	c.li	s0,00000000
	jal	ra,0000000023091A00
	c.j	0000000023092710

l23092704:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.beqz	a0,00000000230926EC

l23092710:
	c.addi4spn	a0,00000004
	jal	ra,0000000023091E40

l23092716:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23092726:
	slli	a5,a0,00000002
	c.add	a5,a1
	lw	a5,a5,-00000004
	c.bnez	a5,00000000230926F8

l23092732:
	c.addi	a0,FFFFFFFF
	c.j	00000000230926F6

;; mbedtls_mpi_add_mpi: 23092736
;;   Called from:
;;     23088B08 (in mbedtls_rsa_private)
;;     23092C30 (in mbedtls_mpi_div_mpi)
;;     23092CA4 (in mbedtls_mpi_mod_mpi)
;;     23092FEC (in mbedtls_mpi_exp_mod)
;;     23093416 (in mbedtls_mpi_inv_mod)
;;     23093476 (in mbedtls_mpi_inv_mod)
;;     230934BA (in mbedtls_mpi_inv_mod)
;;     2309450A (in ecp_modp)
;;     23094572 (in ecp_double_jac)
;;     230947C8 (in ecp_double_jac)
;;     2309488A (in ecp_double_jac)
;;     230948F8 (in ecp_double_jac)
;;     23094910 (in ecp_double_jac)
;;     23094928 (in ecp_double_jac)
;;     23094940 (in ecp_double_jac)
;;     23094F7E (in ecp_add_mixed)
;;     2309513C (in ecp_add_mixed)
;;     2309518C (in ecp_add_mixed)
;;     230951AA (in ecp_add_mixed)
;;     230951C2 (in ecp_add_mixed)
;;     230951DA (in ecp_add_mixed)
;;     2309582E (in mbedtls_ecp_check_pubkey)
;;     23095880 (in mbedtls_ecp_check_pubkey)
;;     2309588E (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_add_mpi proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,0(s0)
	c.lw	a2,0(a5)
	c.mv	s1,a0
	add	a5,s0,a5
	bge	a5,zero,000000002309278E

l23092750:
	c.mv	s3,a1
	c.mv	a0,s3
	c.mv	a1,a2
	c.mv	s2,a2
	jal	ra,00000000230923B0
	blt	a0,zero,0000000023092770

l23092760:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230926AE

l2309276A:
	c.bnez	a0,0000000023092780

l2309276C:
	c.sw	s1,0(s0)
	c.j	0000000023092780

l23092770:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230926AE
	sub	s0,zero,s0
	c.beqz	a0,000000002309276C

l23092780:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2309278E:
	jal	ra,00000000230925DE
	c.j	000000002309276A

;; mbedtls_mpi_sub_mpi: 23092794
;;   Called from:
;;     23088ACE (in mbedtls_rsa_private)
;;     23092814 (in mbedtls_mpi_sub_int)
;;     23092B22 (in mbedtls_mpi_div_mpi)
;;     23092C04 (in mbedtls_mpi_div_mpi)
;;     23092CC8 (in mbedtls_mpi_mod_mpi)
;;     23093350 (in mbedtls_mpi_inv_mod)
;;     2309335E (in mbedtls_mpi_inv_mod)
;;     2309336C (in mbedtls_mpi_inv_mod)
;;     23093424 (in mbedtls_mpi_inv_mod)
;;     23093484 (in mbedtls_mpi_inv_mod)
;;     23093494 (in mbedtls_mpi_inv_mod)
;;     230934A4 (in mbedtls_mpi_inv_mod)
;;     230934CC (in mbedtls_mpi_inv_mod)
;;     230943AA (in ecp_safe_invert_jac)
;;     230945CE (in ecp_double_jac)
;;     230946DE (in ecp_double_jac)
;;     230946F4 (in ecp_double_jac)
;;     2309470A (in ecp_double_jac)
;;     2309473E (in ecp_double_jac)
;;     23094EEA (in ecp_add_mixed)
;;     23094F96 (in ecp_add_mixed)
;;     23095070 (in ecp_add_mixed)
;;     23095088 (in ecp_add_mixed)
;;     2309509E (in ecp_add_mixed)
;;     230950F0 (in ecp_add_mixed)
;;     2309545E (in ecp_mul_comb)
mbedtls_mpi_sub_mpi proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,0(s0)
	c.lw	a2,0(a5)
	c.mv	s1,a0
	add	a5,s0,a5
	bge	zero,a5,00000000230927EC

l230927AE:
	c.mv	s3,a1
	c.mv	a0,s3
	c.mv	a1,a2
	c.mv	s2,a2
	jal	ra,00000000230923B0
	blt	a0,zero,00000000230927CE

l230927BE:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230926AE

l230927C8:
	c.bnez	a0,00000000230927DE

l230927CA:
	c.sw	s1,0(s0)
	c.j	00000000230927DE

l230927CE:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230926AE
	sub	s0,zero,s0
	c.beqz	a0,00000000230927CA

l230927DE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230927EC:
	jal	ra,00000000230925DE
	c.j	00000000230927C8

;; mbedtls_mpi_sub_int: 230927F2
;;   Called from:
;;     2308880E (in mbedtls_rsa_check_privkey)
;;     2308881E (in mbedtls_rsa_check_privkey)
;;     230957FE (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_sub_int proc
	srai	a4,a2,0000001F
	xor	a5,a4,a2
	c.addi	sp,FFFFFFE0
	c.sub	a5,a4
	c.swsp	a5,00000000
	c.swsp	ra,0000008C
	c.li	a5,00000001
	bge	a2,zero,000000002309280A

l23092808:
	c.li	a5,FFFFFFFF

l2309280A:
	c.swsp	a5,00000080
	c.addi4spn	a2,00000004
	c.li	a5,00000001
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,0000000023092794
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_mul_mpi: 2309281E
;;   Called from:
;;     230887E6 (in mbedtls_rsa_check_privkey)
;;     230887FE (in mbedtls_rsa_check_privkey)
;;     2308882E (in mbedtls_rsa_check_privkey)
;;     23088ADE (in mbedtls_rsa_private)
;;     23088AFA (in mbedtls_rsa_private)
;;     23088B32 (in mbedtls_rsa_private)
;;     23088B52 (in mbedtls_rsa_private)
;;     23088B70 (in mbedtls_rsa_private)
;;     23088C22 (in mbedtls_rsa_private)
;;     23092916 (in mbedtls_mpi_mul_int)
;;     23094558 (in ecp_double_jac)
;;     230945E2 (in ecp_double_jac)
;;     2309461A (in ecp_double_jac)
;;     23094650 (in ecp_double_jac)
;;     23094688 (in ecp_double_jac)
;;     230946C0 (in ecp_double_jac)
;;     23094720 (in ecp_double_jac)
;;     23094758 (in ecp_double_jac)
;;     230947E0 (in ecp_double_jac)
;;     23094830 (in ecp_double_jac)
;;     2309484E (in ecp_double_jac)
;;     2309486C (in ecp_double_jac)
;;     2309499A (in ecp_normalize_jac)
;;     230949B4 (in ecp_normalize_jac)
;;     230949D0 (in ecp_normalize_jac)
;;     230949EA (in ecp_normalize_jac)
;;     23094AA8 (in ecp_normalize_jac_many)
;;     23094B00 (in ecp_normalize_jac_many)
;;     23094B46 (in ecp_normalize_jac_many)
;;     23094B64 (in ecp_normalize_jac_many)
;;     23094B8A (in ecp_normalize_jac_many)
;;     23094BAA (in ecp_normalize_jac_many)
;;     23094BCC (in ecp_normalize_jac_many)
;;     23094E80 (in ecp_add_mixed)
;;     23094E9A (in ecp_add_mixed)
;;     23094EB4 (in ecp_add_mixed)
;;     23094ED0 (in ecp_add_mixed)
;;     23094FBA (in ecp_add_mixed)
;;     23094FD8 (in ecp_add_mixed)
;;     23094FF6 (in ecp_add_mixed)
;;     23095014 (in ecp_add_mixed)
;;     23095052 (in ecp_add_mixed)
;;     230950B4 (in ecp_add_mixed)
;;     230950D2 (in ecp_add_mixed)
;;     23095524 (in ecp_mul_comb)
;;     23095542 (in ecp_mul_comb)
;;     2309555C (in ecp_mul_comb)
;;     23095576 (in ecp_mul_comb)
;;     23095594 (in ecp_mul_comb)
;;     230957C6 (in mbedtls_ecp_check_pubkey)
;;     230957E0 (in mbedtls_ecp_check_pubkey)
;;     23095812 (in mbedtls_ecp_check_pubkey)
;;     23095ACC (in ecp_mod_koblitz.constprop.0)
;;     23095B16 (in ecp_mod_koblitz.constprop.0)
mbedtls_mpi_mul_mpi proc
	c.addi16sp	FFFFFFC0
	c.li	a5,00000001
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	a5,00000004
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	c.swsp	a5,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.mv	s4,a0
	c.mv	s0,a2
	c.mv	s1,a1
	bne	a0,a1,0000000023092876

l23092848:
	c.addi4spn	a0,00000008
	jal	ra,0000000023091F6A
	c.mv	s3,a0
	c.addi4spn	s1,00000008
	c.beqz	a0,0000000023092876

l23092854:
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000008
	jal	ra,0000000023091E40
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

l23092876:
	bne	s4,s0,0000000023092888

l2309287A:
	c.mv	a1,s4
	c.addi4spn	a0,00000014
	jal	ra,0000000023091F6A
	c.mv	s3,a0
	c.bnez	a0,0000000023092854

l23092886:
	c.addi4spn	s0,00000014

l23092888:
	lw	s5,s1,+00000004

l2309288C:
	bne	s5,zero,00000000230928C8

l23092890:
	lw	s2,s0,+00000004

l23092894:
	bne	s2,zero,00000000230928DA

l23092898:
	add	a1,s5,s2
	c.mv	a0,s4
	jal	ra,0000000023091E7C
	c.mv	s3,a0
	c.bnez	a0,0000000023092854

l230928A6:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023092060
	c.mv	s3,a0
	c.li	s6,FFFFFFFF
	c.bnez	a0,0000000023092854

l230928B4:
	c.addi	s2,FFFFFFFF
	bne	s2,s6,00000000230928EC

l230928BA:
	c.lw	s1,0(a5)
	c.lw	s0,0(a4)
	add	a5,a5,a4
	sw	a5,s4,+00000000
	c.j	0000000023092854

l230928C8:
	c.lw	s1,8(a5)
	slli	a4,s5,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,0000000023092890

l230928D6:
	c.addi	s5,FFFFFFFF
	c.j	000000002309288C

l230928DA:
	c.lw	s0,8(a5)
	slli	a4,s2,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,0000000023092898

l230928E8:
	c.addi	s2,FFFFFFFF
	c.j	0000000023092894

l230928EC:
	c.lw	s0,8(a5)
	slli	a2,s2,00000002
	lw	a4,s4,+00000008
	c.add	a5,a2
	c.lw	a5,0(a3)
	c.lw	s1,8(a1)
	c.add	a2,a4
	c.mv	a0,s5
	jal	ra,0000000023091A4A
	c.j	00000000230928B4

;; mbedtls_mpi_mul_int: 23092906
;;   Called from:
;;     23092B9E (in mbedtls_mpi_div_mpi)
;;     23092BEA (in mbedtls_mpi_div_mpi)
;;     230945FC (in ecp_double_jac)
;;     230947FE (in ecp_double_jac)
;;     23095032 (in ecp_add_mixed)
mbedtls_mpi_mul_int proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000001
	c.swsp	a2,00000000
	c.addi4spn	a2,00000004
	c.swsp	ra,0000008C
	c.swsp	a5,00000080
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,000000002309281E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_div_mpi: 23092920
;;   Called from:
;;     2308885A (in mbedtls_rsa_check_privkey)
;;     23092C88 (in mbedtls_mpi_mod_mpi)
mbedtls_mpi_div_mpi proc
	c.addi16sp	FFFFFF70
	c.swsp	s2,00000040
	c.swsp	s4,0000003C
	c.mv	s2,a1
	c.mv	s4,a0
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	s3,000000BC
	c.swsp	s6,00000038
	c.swsp	s9,000000B0
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s5,000000B8
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	c.mv	s3,a2
	c.mv	s6,a3
	jal	ra,00000000230925B2
	c.li	s9,FFFFFFF4
	c.beqz	a0,0000000023092986

l23092950:
	c.li	s0,00000001
	c.mv	a1,s6
	c.mv	a0,s3
	c.swsp	s0,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.swsp	s0,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	s0,00000094
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	s0,0000001C
	c.swsp	zero,0000009C
	c.swsp	zero,00000020
	c.swsp	s0,000000A0
	c.swsp	zero,00000024
	c.swsp	zero,000000A4
	jal	ra,00000000230923B0
	bge	a0,zero,00000000230929E0

l2309297C:
	bne	s4,zero,00000000230929A6

l23092980:
	bne	s2,zero,00000000230929D2

l23092984:
	c.li	s9,00000000

l23092986:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s9
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
	c.addi16sp	00000090
	c.jr	ra

l230929A6:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023092060
	c.mv	s9,a0
	c.beqz	a0,0000000023092980

l230929B2:
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000020
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000002C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000038
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000044
	jal	ra,0000000023091E40
	c.j	0000000023092986

l230929D2:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023091F6A
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l230929DE:
	c.j	0000000023092984

l230929E0:
	c.mv	a1,s3
	c.addi4spn	a0,00000014
	jal	ra,0000000023091F6A
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l230929EC:
	c.mv	a1,s6
	c.addi4spn	a0,00000020
	jal	ra,0000000023091F6A
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l230929F8:
	lw	a1,s3,+00000004
	c.addi4spn	a0,0000002C
	c.swsp	s0,00000010
	c.addi	a1,00000002
	c.swsp	s0,00000088
	jal	ra,0000000023091E7C
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A0C:
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,0000000023092060
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A18:
	c.li	a1,00000002
	c.addi4spn	a0,00000038
	jal	ra,0000000023091E7C
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A24:
	c.li	a1,00000003
	c.addi4spn	a0,00000044
	jal	ra,0000000023091E7C
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A30:
	c.addi4spn	a0,00000020
	jal	ra,000000002309210A
	c.andi	a0,0000001F
	c.li	s1,0000001F
	beq	a0,s1,0000000023092B0E

l23092A3E:
	c.sub	s1,a0
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023092246
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A4C:
	c.mv	a1,s1
	c.addi4spn	a0,00000020
	jal	ra,0000000023092246
	c.mv	s9,a0
	c.bnez	a0,00000000230929B2

l23092A58:
	c.lwsp	s8,000000E8
	c.lwsp	tp,0000015C
	c.addi4spn	a0,00000020
	sub	s0,s7,s10
	slli	s5,s0,00000005
	c.mv	a1,s5
	jal	ra,0000000023092246
	c.mv	s9,a0
	c.slli	s0,02
	c.bnez	a0,00000000230929B2

l23092A72:
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,0000000023092526
	bge	a0,zero,0000000023092B12

l23092A7E:
	c.mv	a1,s5
	c.addi4spn	a0,00000020
	jal	ra,0000000023092308
	c.mv	s9,a0
	bne	a0,zero,00000000230929B2

l23092A8C:
	lui	s0,00040000
	addi	s8,s10,-00000001
	c.addi	s0,FFFFFFFF
	slli	a5,s8,00000002
	slli	a4,s10,00000002
	c.add	s0,s7
	c.swsp	a5,00000004
	sub	s0,s0,s10
	addi	a5,a4,-00000008
	addi	s5,s7,-00000001
	c.swsp	a5,00000084
	c.slli	s0,02

l23092AB2:
	bltu	s8,s5,0000000023092B2C

l23092AB6:
	beq	s4,zero,0000000023092AD6

l23092ABA:
	c.addi4spn	a1,0000002C
	c.mv	a0,s4
	jal	ra,0000000023091F6A
	bne	a0,zero,0000000023092C60

l23092AC6:
	lw	a4,s3,+00000000
	lw	a3,s6,+00000000
	add	a4,a4,a3
	sw	a4,s4,+00000000

l23092AD6:
	beq	s2,zero,00000000230929B2

l23092ADA:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023092308
	bne	a0,zero,0000000023092C60

l23092AE6:
	lw	a4,s3,+00000000
	c.addi4spn	a1,00000014
	c.mv	a0,s2
	c.swsp	a4,00000088
	jal	ra,0000000023091F6A
	bne	a0,zero,0000000023092C60

l23092AF8:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230925B2
	bne	a0,zero,00000000230929B2

l23092B04:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.li	s9,00000000
	c.j	00000000230929B2

l23092B0E:
	c.li	s1,00000000
	c.j	0000000023092A58

l23092B12:
	c.lwsp	s4,000001F4
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000020
	c.add	a5,s0
	c.lw	a5,0(a4)
	c.mv	a0,a1
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	jal	ra,0000000023092794
	c.mv	s9,a0
	c.beqz	a0,0000000023092A72

l23092B2A:
	c.j	00000000230929B2

l23092B2C:
	c.lwsp	t3,000000C4
	slli	s7,s5,00000002
	c.lwsp	s0,000000E4
	add	a3,a4,s7
	c.lw	a3,0(a1)
	c.lwsp	s0,000001B4
	c.lwsp	s4,0000017C
	addi	s10,s7,-00000004
	c.add	a3,a5
	c.lw	a3,0(a2)
	c.add	s11,s0
	bltu	a1,a2,0000000023092C46

l23092B4C:
	c.li	a5,FFFFFFFF
	sw	a5,s11,+00000000

l23092B52:
	c.lwsp	s4,000001D4
	addi	s11,s7,-00000008
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,00000001
	c.sw	a4,0(a3)

l23092B60:
	c.lwsp	s4,000001D4
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,FFFFFFFF
	c.sw	a4,0(a3)
	jal	ra,0000000023092060
	bne	a0,zero,0000000023092C60

l23092B76:
	c.li	a4,00000000
	beq	s8,zero,0000000023092B84

l23092B7C:
	c.lwsp	s0,000001D4
	c.lwsp	a2,000000E4
	c.add	a4,a5
	c.lw	a4,0(a4)

l23092B84:
	c.lwsp	ra,000000A4
	c.lwsp	s0,000000E4
	c.addi4spn	a1,00000038
	c.sw	a3,0(a4)
	c.lwsp	s0,000001D4
	c.mv	a0,a1
	c.add	a4,a5
	c.lw	a4,0(a3)
	c.lwsp	ra,000000C4
	c.sw	a4,4(a3)
	c.lwsp	s4,000001D4
	c.add	a4,s0
	c.lw	a4,0(a2)
	jal	ra,0000000023092906
	c.bnez	a0,0000000023092C60

l23092BA4:
	c.li	a1,00000000
	c.addi4spn	a0,00000044
	jal	ra,0000000023092060
	c.bnez	a0,0000000023092C60

l23092BAE:
	c.li	a5,00000001
	c.li	a4,00000000
	beq	s5,a5,0000000023092BBC

l23092BB6:
	c.lwsp	t3,000000C4
	c.add	a4,s11
	c.lw	a4,0(a4)

l23092BBC:
	c.lwsp	a3,000000A4
	c.addi4spn	a1,00000044
	c.addi4spn	a0,00000038
	c.sw	a3,0(a4)
	c.lwsp	t3,000000C4
	c.add	a4,s10
	c.lw	a4,0(a3)
	c.lwsp	a3,000000C4
	c.sw	a4,4(a3)
	c.lwsp	t3,000000C4
	c.add	a4,s7
	c.lw	a4,0(a3)
	c.lwsp	a3,000000C4
	c.sw	a4,8(a3)
	jal	ra,0000000023092526
	blt	zero,a0,0000000023092B60

l23092BE0:
	c.lwsp	s4,000001D4
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000038
	c.add	a4,s0
	c.lw	a4,0(a2)
	jal	ra,0000000023092906
	c.bnez	a0,0000000023092C60

l23092BF0:
	slli	s7,s0,00000003
	c.mv	a1,s7
	c.addi4spn	a0,00000038
	jal	ra,0000000023092246
	c.bnez	a0,0000000023092C60

l23092BFE:
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000038
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.bnez	a0,0000000023092C60

l23092C0A:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,00000000230925B2
	bge	a0,zero,0000000023092C40

l23092C16:
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000038
	jal	ra,0000000023091F6A
	c.bnez	a0,0000000023092C60

l23092C20:
	c.mv	a1,s7
	c.addi4spn	a0,00000038
	jal	ra,0000000023092246
	c.bnez	a0,0000000023092C60

l23092C2A:
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000038
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.bnez	a0,0000000023092C60

l23092C36:
	c.lwsp	s4,000001D4
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,FFFFFFFF
	c.sw	a4,0(a3)

l23092C40:
	c.addi	s5,FFFFFFFF
	c.addi	s0,FFFFFFFC
	c.j	0000000023092AB2

l23092C46:
	c.add	a4,s10
	c.lw	a4,0(a0)
	c.li	a4,FFFFFFFF
	c.beqz	a2,0000000023092C5A

l23092C4E:
	c.li	a3,00000000
	jal	ra,000000002309FC70
	c.mv	a4,a0
	c.beqz	a1,0000000023092C5A

l23092C58:
	c.li	a4,FFFFFFFF

l23092C5A:
	sw	a4,s11,+00000000
	c.j	0000000023092B52

l23092C60:
	c.mv	s9,a0
	c.j	00000000230929B2

;; mbedtls_mpi_mod_mpi: 23092C64
;;   Called from:
;;     23088868 (in mbedtls_rsa_check_privkey)
;;     23088876 (in mbedtls_rsa_check_privkey)
;;     23088884 (in mbedtls_rsa_check_privkey)
;;     23088AEC (in mbedtls_rsa_private)
;;     23088B40 (in mbedtls_rsa_private)
;;     23088B60 (in mbedtls_rsa_private)
;;     23088B7E (in mbedtls_rsa_private)
;;     23088C30 (in mbedtls_rsa_private)
;;     23092E36 (in mbedtls_mpi_exp_mod)
;;     23092E60 (in mbedtls_mpi_exp_mod)
;;     230932C8 (in mbedtls_mpi_inv_mod)
;;     23094496 (in ecp_modp)
mbedtls_mpi_mod_mpi proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a0,a2
	c.li	a1,00000000
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a2
	jal	ra,00000000230925B2
	blt	a0,zero,0000000023092CD2

l23092C80:
	c.mv	a2,s1
	c.mv	a3,s2
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,0000000023092920
	c.mv	s1,a0
	c.beqz	a0,0000000023092CAA

l23092C90:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23092C9E:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023092736
	c.bnez	a0,0000000023092CCE

l23092CAA:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230925B2
	blt	a0,zero,0000000023092C9E

l23092CB6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023092526
	blt	a0,zero,0000000023092C90

l23092CC2:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023092794
	c.beqz	a0,0000000023092CB6

l23092CCE:
	c.mv	s1,a0
	c.j	0000000023092C90

l23092CD2:
	c.li	s1,FFFFFFF6
	c.j	0000000023092C90

;; mbedtls_mpi_exp_mod: 23092CD6
;;   Called from:
;;     230889F4 (in mbedtls_rsa_public)
;;     23088AA4 (in mbedtls_rsa_private)
;;     23088AC0 (in mbedtls_rsa_private)
;;     23088C14 (in mbedtls_rsa_private)
mbedtls_mpi_exp_mod proc
	addi	sp,sp,-00000690
	sw	s3,sp,+0000067C
	sw	s4,sp,+00000678
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	a0,a3
	c.li	a1,00000000
	sw	s0,sp,+00000688
	sw	s2,sp,+00000680
	sw	s7,sp,+0000066C
	sw	s8,sp,+00000668
	sw	ra,sp,+0000068C
	sw	s1,sp,+00000684
	sw	s5,sp,+00000674
	sw	s6,sp,+00000670
	sw	s9,sp,+00000664
	sw	s10,sp,+00000660
	sw	s11,sp,+0000065C
	c.mv	s8,a2
	c.mv	s2,a3
	c.mv	s7,a4
	jal	ra,00000000230925B2
	c.li	s0,FFFFFFFC
	blt	a0,zero,00000000230930AC

l23092D26:
	lw	a5,s2,+00000008
	c.li	s0,FFFFFFFC
	lw	s5,a5,+00000000
	andi	s10,s5,+00000001
	beq	s10,zero,00000000230930AC

l23092D38:
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,00000000230925B2
	blt	a0,zero,00000000230930AC

l23092D44:
	addi	s1,s5,+00000002
	c.slli	s1,01
	c.andi	s1,00000008
	c.add	s1,s5
	c.li	a5,00000003
	c.li	a3,00000002

l23092D52:
	add	a4,s5,s1
	c.addi	a5,FFFFFFFF
	sub	a4,a3,a4
	add	s1,s1,a4
	c.bnez	a5,0000000023092D52

l23092D62:
	c.li	a5,00000001
	addi	a2,zero,+00000600
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	c.swsp	a5,00000010
	c.swsp	a5,00000094
	c.swsp	a5,0000001C
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000009C
	c.swsp	zero,00000020
	jal	ra,00000000230A3A68
	c.mv	a0,s8
	jal	ra,000000002309210A
	addi	a5,zero,+0000029F
	c.li	s5,00000006
	bltu	a5,a0,0000000023092DB0

l23092D92:
	addi	a5,zero,+000000EF
	c.li	s5,00000005
	bltu	a5,a0,0000000023092DB0

l23092D9C:
	addi	a5,zero,+0000004F
	c.li	s5,00000004
	bltu	a5,a0,0000000023092DB0

l23092DA6:
	c.li	a5,00000017
	c.li	s5,00000003
	bltu	a5,a0,0000000023092DB0

l23092DAE:
	c.mv	s5,s10

l23092DB0:
	lw	s6,s2,+00000004
	c.mv	a0,s3
	c.addi	s6,00000001
	c.mv	a1,s6
	jal	ra,0000000023091E7C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092DC4:
	c.mv	a1,s6
	c.addi4spn	a0,0000005C
	jal	ra,0000000023091E7C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092DD2:
	slli	a1,s6,00000001
	c.addi4spn	a0,0000002C
	jal	ra,0000000023091E7C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092DE2:
	lw	a5,s4,+00000000
	c.swsp	a5,00000004
	c.lwsp	s0,000000C4
	c.li	a5,FFFFFFFF
	bne	a4,a5,0000000023092E06

l23092DF0:
	c.mv	a1,s4
	c.addi4spn	a0,00000038
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092DFE:
	c.li	a5,00000001
	c.swsp	a5,0000001C
	addi	s4,sp,+00000038

l23092E06:
	beq	s7,zero,0000000023092E10

l23092E0A:
	lw	a5,s7,+00000008
	c.bnez	a5,0000000023092EC2

l23092E10:
	c.li	a1,00000001
	c.addi4spn	a0,00000020
	jal	ra,0000000023092060
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E1E:
	lw	a1,s2,+00000004
	c.addi4spn	a0,00000020
	c.slli	a1,06
	jal	ra,0000000023092246
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E30:
	c.addi4spn	a1,00000020
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092C64
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E40:
	beq	s7,zero,0000000023092E4E

l23092E44:
	c.li	a2,0000000C
	c.addi4spn	a1,00000020
	c.mv	a0,s7

l23092E4A:
	jal	ra,00000000230A382C

l23092E4E:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023092526
	blt	a0,zero,0000000023092ECA

l23092E5A:
	c.mv	a2,s2
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023092C64

l23092E64:
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E6A:
	sub	s1,zero,s1
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.addi4spn	a0,0000005C
	jal	ra,000000002309241C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E82:
	c.addi4spn	a1,00000020
	c.mv	a0,s3
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092E90:
	c.li	s6,00000001
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000044
	c.mv	a0,s3
	c.swsp	s6,0000008C
	c.swsp	s6,000000A0
	c.swsp	s6,00000024
	c.swsp	a5,000000A4
	jal	ra,000000002309241C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092EB0:
	bne	s5,s6,0000000023092ED4

l23092EB4:
	lw	s4,s8,+00000004
	c.li	t1,00000000
	c.li	s11,00000000
	c.li	s6,00000000

l23092EBE:
	c.li	s9,00000000
	c.j	0000000023092FAA

l23092EC2:
	c.li	a2,0000000C
	c.mv	a1,s7
	c.addi4spn	a0,00000020
	c.j	0000000023092E4A

l23092ECA:
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023091F6A
	c.j	0000000023092E64

l23092ED4:
	addi	s11,s5,-00000001
	lw	a1,s2,+00000004
	c.li	s4,0000000C
	c.addi4spn	a5,00000050
	sll	s4,s4,s11
	add	s9,a5,s4
	c.addi	a1,00000001
	c.mv	a0,s9
	jal	ra,0000000023091E7C
	sll	s6,s6,s11
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092EFA:
	c.addi4spn	a1,0000005C
	c.mv	a0,s9
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092F08:
	c.li	s4,00000000

l23092F0A:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s9
	c.mv	a0,s9
	jal	ra,000000002309241C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092F1E:
	c.addi	s4,00000001
	bltu	s4,s11,0000000023092F0A

l23092F24:
	c.li	s11,00000001
	c.addi	s6,00000001
	sll	s11,s11,s5

l23092F2C:
	bgeu	s6,s11,0000000023092EB4

l23092F30:
	lw	a1,s2,+00000004
	addi	s4,s9,+0000000C
	c.mv	a0,s4
	c.addi	a1,00000001
	jal	ra,0000000023091E7C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092F46:
	c.mv	a1,s9
	c.mv	a0,s4
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092F54:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,0000005C
	c.mv	a0,s4
	jal	ra,000000002309241C
	c.mv	s0,a0
	bne	a0,zero,0000000023093076

l23092F68:
	c.addi	s6,00000001
	c.mv	s9,s4
	c.j	0000000023092F2C

l23092F6E:
	c.addi	s4,FFFFFFFF
	addi	s6,zero,+00000020

l23092F74:
	lw	a4,s8,+00000008
	slli	a3,s4,00000002
	c.addi	s6,FFFFFFFF
	c.add	a4,a3
	c.lw	a4,0(a4)
	srl	a4,a4,s6
	c.andi	a4,00000001
	c.bnez	a4,0000000023092FF4

l23092F8A:
	beq	t1,zero,0000000023092FAA

l23092F8E:
	c.li	a5,00000001
	bne	t1,a5,0000000023092FF4

l23092F94:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	t1,00000084
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.bnez	a0,0000000023093076

l23092FA8:
	c.lwsp	a2,000000C0

l23092FAA:
	bne	s6,zero,0000000023092F74

l23092FAE:
	bne	s4,zero,0000000023092F6E

l23092FB2:
	c.li	s6,00000001
	sll	s6,s6,s5

l23092FB8:
	bne	s4,s11,0000000023093046

l23092FBC:
	c.li	a5,00000001
	c.swsp	a5,0000008C
	c.swsp	a5,000000A0
	c.swsp	a5,00000024
	c.addi4spn	a4,0000002C
	c.addi4spn	a5,0000001C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000044
	c.mv	a0,s3
	c.swsp	a5,000000A4
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.bnez	a0,0000000023093076

l23092FDA:
	c.lwsp	s0,000000C4
	c.li	a5,FFFFFFFF
	bne	a4,a5,0000000023093076

l23092FE2:
	sw	a4,s3,+00000000
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023092736
	c.mv	s0,a0
	c.j	0000000023093076

l23092FF4:
	c.addi	s11,00000001
	sub	a3,s5,s11
	sll	a4,a4,a3
	or	s9,s9,a4
	c.li	t1,00000002
	bne	s5,s11,0000000023092FAA

l23093008:
	c.li	t1,00000000

l2309300A:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	t1,00000084
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.bnez	a0,0000000023093076

l2309301E:
	c.lwsp	a2,000000C0
	c.addi	t1,00000001
	bltu	t1,s11,000000002309300A

l23093026:
	c.li	a5,0000000C
	add	a1,s9,a5
	c.addi4spn	a5,00000050
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a0,s3
	c.add	a1,a5
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.bnez	a0,0000000023093076

l23093040:
	c.mv	t1,s10
	c.li	s11,00000000
	c.j	0000000023092EBE

l23093046:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.bnez	a0,0000000023093076

l23093058:
	c.slli	s9,01
	and	a4,s6,s9
	c.bnez	a4,0000000023093064

l23093060:
	c.addi	s4,00000001
	c.j	0000000023092FB8

l23093064:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,0000005C
	c.mv	a0,s3
	jal	ra,000000002309241C
	c.mv	s0,a0
	c.beqz	a0,0000000023093060

l23093076:
	addi	s1,s5,-00000001
	c.li	a5,00000001
	sll	s1,a5,s1
	sll	s5,a5,s5
	c.li	s2,0000000C

l23093086:
	bltu	s1,s5,00000000230930E8

l2309308A:
	c.addi4spn	a0,0000005C
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000002C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000038
	jal	ra,0000000023091E40
	beq	s7,zero,00000000230930A6

l230930A0:
	lw	a5,s7,+00000008
	c.bnez	a5,00000000230930AC

l230930A6:
	c.addi4spn	a0,00000020
	jal	ra,0000000023091E40

l230930AC:
	c.mv	a0,s0
	lw	ra,sp,+0000068C
	lw	s0,sp,+00000688
	lw	s1,sp,+00000684
	lw	s2,sp,+00000680
	lw	s3,sp,+0000067C
	lw	s4,sp,+00000678
	lw	s5,sp,+00000674
	lw	s6,sp,+00000670
	lw	s7,sp,+0000066C
	lw	s8,sp,+00000668
	lw	s9,sp,+00000664
	lw	s10,sp,+00000660
	lw	s11,sp,+0000065C
	addi	sp,sp,+00000690
	c.jr	ra

l230930E8:
	add	a0,s1,s2
	c.addi4spn	a5,00000050
	c.addi	s1,00000001
	c.add	a0,a5
	jal	ra,0000000023091E40
	c.j	0000000023093086

;; mbedtls_mpi_gcd: 230930F8
;;   Called from:
;;     2308883C (in mbedtls_rsa_check_privkey)
;;     2308884A (in mbedtls_rsa_check_privkey)
;;     23088BE6 (in mbedtls_rsa_private)
;;     230932AA (in mbedtls_mpi_inv_mod)
mbedtls_mpi_gcd proc
	c.addi16sp	FFFFFFB0
	c.li	a5,00000001
	c.swsp	s2,00000020
	c.mv	s2,a0
	c.addi4spn	a0,00000028
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	a2,00000084
	c.swsp	a5,0000008C
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	a5,00000014
	c.swsp	zero,00000094
	c.swsp	zero,00000018
	c.swsp	a5,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l23093124:
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000034
	c.mv	a1,a2
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l23093132:
	c.addi4spn	a0,00000028
	jal	ra,00000000230920CA
	c.mv	s1,a0
	c.addi4spn	a0,00000034
	jal	ra,00000000230920CA
	bgeu	a0,s1,0000000023093146

l23093144:
	c.mv	s1,a0

l23093146:
	c.mv	a1,s1
	c.addi4spn	a0,00000028
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l23093152:
	c.mv	a1,s1
	c.addi4spn	a0,00000034
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l2309315E:
	c.li	a5,00000001
	c.swsp	a5,00000098
	c.swsp	a5,00000014

l23093164:
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023093186

l2309316E:
	c.mv	a1,s1
	c.addi4spn	a0,00000034
	jal	ra,0000000023092246
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l2309317A:
	c.addi4spn	a1,00000034
	c.mv	a0,s2
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.j	00000000230931D0

l23093186:
	c.addi4spn	a0,00000028
	jal	ra,00000000230920CA
	c.mv	a1,a0
	c.addi4spn	a0,00000028
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l23093198:
	c.addi4spn	a0,00000034
	jal	ra,00000000230920CA
	c.mv	a1,a0
	c.addi4spn	a0,00000034
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l230931AA:
	c.addi4spn	a1,00000034
	c.addi4spn	a0,00000028
	jal	ra,0000000023092526
	blt	a0,zero,00000000230931F0

l230931B6:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000034
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l230931C4:
	c.li	a1,00000001
	c.addi4spn	a0,00000028

l230931C8:
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.beqz	a0,0000000023093164

l230931D0:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000028
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000034
	jal	ra,0000000023091E40
	c.mv	a0,s0
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l230931F0:
	c.addi4spn	a1,00000034
	c.addi4spn	a2,00000028
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.mv	s0,a0
	c.bnez	a0,00000000230931D0

l230931FE:
	c.li	a1,00000001
	c.addi4spn	a0,00000034
	c.j	00000000230931C8

;; mbedtls_mpi_fill_random: 23093204
;;   Called from:
;;     23088BD8 (in mbedtls_rsa_private)
;;     230954FC (in ecp_mul_comb)
mbedtls_mpi_fill_random proc
	addi	a5,zero,+00000400
	bltu	a5,a1,0000000023093248

l2309320C:
	addi	sp,sp,-00000410
	sw	s0,sp,+00000408
	sw	s1,sp,+00000404
	sw	ra,sp,+0000040C
	c.mv	s1,a0
	c.mv	a5,a2
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a0,a3
	c.mv	a1,sp
	c.jalr	a5
	c.bnez	a0,0000000023093236

l2309322C:
	c.mv	a2,s0
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,000000002309215C

l23093236:
	lw	ra,sp,+0000040C
	lw	s0,sp,+00000408
	lw	s1,sp,+00000404
	addi	sp,sp,+00000410
	c.jr	ra

l23093248:
	c.li	a0,FFFFFFFC
	c.jr	ra

;; mbedtls_mpi_inv_mod: 2309324C
;;   Called from:
;;     23088892 (in mbedtls_rsa_check_privkey)
;;     23088BFE (in mbedtls_rsa_private)
;;     2309498C (in ecp_normalize_jac)
;;     23094AD6 (in ecp_normalize_jac_many)
mbedtls_mpi_inv_mod proc
	c.addi16sp	FFFFFF70
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	a0,a2
	c.li	a1,00000000
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	ra,000000C4
	c.mv	s1,a2
	jal	ra,00000000230925B2
	c.li	s0,FFFFFFFC
	bge	zero,a0,0000000023093400

l2309326C:
	c.li	a5,00000001
	c.mv	a2,s1
	c.mv	a1,s3
	c.addi4spn	a0,00000004
	c.swsp	a5,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	a5,0000008C
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	a5,00000014
	c.swsp	zero,00000094
	c.swsp	zero,00000018
	c.swsp	a5,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	c.swsp	a5,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.swsp	a5,00000020
	c.swsp	zero,000000A0
	c.swsp	zero,00000024
	c.swsp	a5,000000A4
	c.swsp	zero,00000028
	c.swsp	zero,000000A8
	c.swsp	a5,0000002C
	c.swsp	zero,000000AC
	c.swsp	zero,00000030
	c.swsp	a5,000000B0
	c.swsp	zero,00000034
	c.swsp	zero,000000B4
	jal	ra,00000000230930F8
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230932B4:
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	jal	ra,00000000230925B2
	c.li	s0,FFFFFFF2
	bne	a0,zero,00000000230933CA

l230932C2:
	c.mv	a2,s1
	c.mv	a1,s3
	c.addi4spn	a0,00000010
	jal	ra,0000000023092C64
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230932D2:
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000001C
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230932E0:
	c.mv	a1,s1
	c.addi4spn	a0,00000040
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230932EE:
	c.mv	a1,s1
	c.addi4spn	a0,0000004C
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230932FC:
	c.li	a1,00000001
	c.addi4spn	a0,00000028
	jal	ra,0000000023092060
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093308:
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,0000000023092060
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093314:
	c.li	a1,00000000
	c.addi4spn	a0,00000058
	jal	ra,0000000023092060
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093320:
	c.li	a1,00000001
	c.addi4spn	a0,00000064
	jal	ra,0000000023092060

l23093328:
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l2309332C:
	c.lwsp	tp,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,00000000230933A2

l23093334:
	c.lwsp	s5,000000E4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	beq	a5,zero,0000000023093438

l2309333E:
	c.addi4spn	a1,0000004C
	c.addi4spn	a0,0000001C
	jal	ra,0000000023092526
	blt	a0,zero,000000002309348E

l2309334A:
	c.addi4spn	a1,0000001C
	c.addi4spn	a2,0000004C
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093358:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000058
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093366:
	c.addi4spn	a2,00000064
	c.addi4spn	a1,00000034

l2309336A:
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093374:
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230925B2
	c.bnez	a0,000000002309332C

l2309337E:
	c.li	a1,00000000
	c.addi4spn	a0,00000058
	jal	ra,00000000230925B2
	blt	a0,zero,00000000230934B4

l2309338A:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,0000000023092526
	bge	a0,zero,00000000230934C6

l23093396:
	c.addi4spn	a1,00000058
	c.mv	a0,s2
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.j	00000000230933CA

l230933A2:
	c.li	a1,00000001
	c.addi4spn	a0,0000001C
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l230933AE:
	c.lwsp	a6,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023093410

l230933B6:
	c.lwsp	t3,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023093410

l230933BE:
	c.li	a1,00000001
	c.addi4spn	a0,00000028
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.beqz	a0,000000002309342E

l230933CA:
	c.addi4spn	a0,00000010
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000001C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000028
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000034
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000004
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000040
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000004C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000058
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000064
	jal	ra,0000000023091E40

l23093400:
	c.mv	a0,s0
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l23093410:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000040
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l2309341E:
	c.addi4spn	a1,00000034
	c.addi4spn	a2,00000010
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.beqz	a0,00000000230933BE

l2309342C:
	c.j	00000000230933CA

l2309342E:
	c.li	a1,00000001
	c.addi4spn	a0,00000034
	jal	ra,0000000023092308
	c.j	0000000023093328

l23093438:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093444:
	c.lwsp	ra,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023093470

l2309344C:
	c.lwsp	a3,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023093470

l23093454:
	c.li	a1,00000001
	c.addi4spn	a0,00000058
	jal	ra,0000000023092308
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l23093460:
	c.li	a1,00000001
	c.addi4spn	a0,00000064
	jal	ra,0000000023092308
	c.mv	s0,a0
	beq	a0,zero,0000000023093334

l2309346E:
	c.j	00000000230933CA

l23093470:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,00000040
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.mv	s0,a0
	c.bnez	a0,00000000230933CA

l2309347E:
	c.addi4spn	a1,00000064
	c.addi4spn	a2,00000010
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.beqz	a0,0000000023093454

l2309348C:
	c.j	00000000230933CA

l2309348E:
	c.addi4spn	a1,0000004C
	c.addi4spn	a2,0000001C
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l2309349E:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,00000028
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	bne	a0,zero,00000000230933CA

l230934AE:
	c.addi4spn	a2,00000034
	c.addi4spn	a1,00000064
	c.j	000000002309336A

l230934B4:
	c.addi4spn	a1,00000058
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.mv	s0,a0
	beq	a0,zero,000000002309337E

l230934C4:
	c.j	00000000230933CA

l230934C6:
	c.addi4spn	a1,00000058
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	beq	a0,zero,000000002309338A

l230934D6:
	c.j	00000000230933CA

;; mbedtls_cipher_get_block_size: 230934D8
;;   Called from:
;;     23093744 (in mbedtls_cipher_update)
;;     23093992 (in mbedtls_cipher_finish)
;;     230939B8 (in mbedtls_cipher_finish)
;;     230939DC (in mbedtls_cipher_finish)
mbedtls_cipher_get_block_size proc
	c.beqz	a0,00000000230934E4

l230934DA:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,00000000230934E6

l230934E0:
	c.lw	a5,20(a0)
	c.jr	ra

l230934E4:
	c.li	a0,00000000

l230934E6:
	c.jr	ra

;; add_pkcs_padding: 230934E8
add_pkcs_padding proc
	c.sub	a1,a2
	c.li	a5,00000000

l230934EC:
	bltu	a5,a1,00000000230934F2

l230934F0:
	c.jr	ra

l230934F2:
	add	a4,a0,a5
	c.add	a4,a2
	c.addi	a5,00000001
	sb	a1,a4,+00000000
	andi	a5,a5,+000000FF
	c.j	00000000230934EC

;; get_pkcs_padding: 23093504
get_pkcs_padding proc
	c.beqz	a0,0000000023093550

l23093506:
	c.beqz	a2,0000000023093550

l23093508:
	add	a5,a0,a1
	lbu	a6,a5,-00000001
	sltiu	a4,a6,+00000001
	sub	a7,a1,a6
	sltu	a5,a1,a6
	c.or	a5,a4
	sw	a7,a2,+00000000
	c.li	a4,00000000

l23093524:
	bne	a4,a1,000000002309352E

l23093528:
	c.bnez	a5,0000000023093558

l2309352A:
	c.li	a0,00000000
	c.jr	ra

l2309352E:
	add	a3,a0,a4
	lbu	a3,a3,+00000000
	xor	a2,a6,a3
	sltu	a3,a4,a7
	xori	a3,a3,+00000001
	add	a3,a3,a2
	c.addi	a4,00000001
	c.or	a5,a3
	andi	a5,a5,+000000FF
	c.j	0000000023093524

l23093550:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23093558:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000200
	c.jr	ra

;; add_zeros_padding: 23093560
add_zeros_padding proc
	bltu	a2,a1,0000000023093566

l23093564:
	c.jr	ra

l23093566:
	add	a5,a0,a2
	sb	zero,a5,+00000000
	c.addi	a2,00000001
	c.j	0000000023093560

;; get_no_padding: 23093572
get_no_padding proc
	c.beqz	a0,000000002309357C

l23093574:
	c.beqz	a2,000000002309357C

l23093576:
	c.sw	a2,0(a1)
	c.li	a0,00000000
	c.jr	ra

l2309357C:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; get_zeros_padding: 23093584
get_zeros_padding proc
	c.beqz	a0,00000000230935B8

l23093586:
	c.beqz	a2,00000000230935B8

l23093588:
	sw	zero,a2,+00000000
	c.li	a5,00000000

l2309358E:
	c.bnez	a1,0000000023093594

l23093590:
	c.li	a0,00000000
	c.jr	ra

l23093594:
	addi	a3,a1,-00000001
	add	a4,a0,a3
	lbu	a4,a4,+00000000
	sltu	a4,zero,a4
	c.or	a4,a5
	c.xor	a5,a4
	add	a5,a5,a1
	c.lw	a2,0(a1)
	c.or	a5,a1
	c.sw	a2,0(a5)
	c.mv	a1,a3
	c.mv	a5,a4
	c.j	000000002309358E

l230935B8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_info_from_type: 230935C0
;;   Called from:
;;     2308AF5A (in mbedtls_ssl_derive_keys)
mbedtls_cipher_info_from_type proc
	lui	a5,000230C8
	addi	a5,a5,+0000079C

l230935C8:
	c.lw	a5,4(a4)
	c.bnez	a4,00000000230935D0

l230935CC:
	c.mv	a0,a4
	c.jr	ra

l230935D0:
	lbu	a3,a5,+00000000
	beq	a3,a0,00000000230935CC

l230935D8:
	c.addi	a5,00000008
	c.j	00000000230935C8

;; mbedtls_cipher_info_from_values: 230935DC
;;   Called from:
;;     23095E7E (in mbedtls_gcm_setkey)
mbedtls_cipher_info_from_values proc
	lui	a4,000230C8
	addi	a4,a4,+0000079C

l230935E4:
	c.lw	a4,4(a5)
	c.bnez	a5,00000000230935EC

l230935E8:
	c.mv	a0,a5
	c.jr	ra

l230935EC:
	c.lw	a5,24(a3)
	lbu	a3,a3,+00000000
	bne	a3,a0,0000000023093604

l230935F6:
	c.lw	a5,4(a3)
	bne	a3,a1,0000000023093604

l230935FC:
	lbu	a3,a5,+00000001
	beq	a3,a2,00000000230935E8

l23093604:
	c.addi	a4,00000008
	c.j	00000000230935E4

;; mbedtls_cipher_init: 23093608
;;   Called from:
;;     2308BC10 (in ssl_handshake_init)
;;     2308BC18 (in ssl_handshake_init)
mbedtls_cipher_init proc
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_cipher_free: 23093612
;;   Called from:
;;     2308B962 (in mbedtls_ssl_transform_free)
;;     2308B96A (in mbedtls_ssl_transform_free)
;;     23095E94 (in mbedtls_gcm_setkey)
;;     23096504 (in mbedtls_gcm_free)
mbedtls_cipher_free proc
	c.beqz	a0,0000000023093640

l23093614:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,60(a0)
	c.beqz	a0,0000000023093628

l23093620:
	c.lw	s0,0(a5)
	c.lw	a5,24(a5)
	c.lw	a5,32(a5)
	c.jalr	a5

l23093628:
	addi	a5,s0,+00000040

l2309362C:
	bne	s0,a5,0000000023093638

l23093630:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23093638:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	000000002309362C

l23093640:
	c.jr	ra

;; mbedtls_cipher_setkey: 23093642
;;   Called from:
;;     2308B37E (in mbedtls_ssl_derive_keys)
;;     2308B3A0 (in mbedtls_ssl_derive_keys)
;;     23095EAC (in mbedtls_gcm_setkey)
mbedtls_cipher_setkey proc
	c.beqz	a0,0000000023093680

l23093644:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023093680

l23093648:
	c.lw	a5,16(a4)
	c.andi	a4,00000002
	c.bnez	a4,0000000023093654

l2309364E:
	c.lw	a5,4(a4)
	bne	a4,a2,0000000023093680

l23093654:
	c.sw	a0,4(a2)
	sb	a3,a0,+00000008
	c.li	a4,00000001
	beq	a3,a4,000000002309366C

l23093660:
	lbu	a4,a5,+00000001
	c.addi	a4,FFFFFFFD
	andi	a4,a4,+000000FD
	c.bnez	a4,0000000023093676

l2309366C:
	c.lw	a5,24(a5)
	lw	t1,a5,+00000014

l23093672:
	c.lw	a0,60(a0)
	c.jr	t1

l23093676:
	c.bnez	a3,0000000023093680

l23093678:
	c.lw	a5,24(a5)
	lw	t1,a5,+00000018
	c.j	0000000023093672

l23093680:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_set_iv: 23093688
;;   Called from:
;;     23093AD6 (in mbedtls_cipher_crypt)
mbedtls_cipher_set_iv proc
	c.beqz	a0,00000000230936C8

l2309368A:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,00000000230936D8

l23093698:
	c.beqz	a1,00000000230936D8

l2309369A:
	c.li	a4,00000010
	c.mv	s0,a2
	bltu	a4,a2,00000000230936D0

l230936A2:
	c.lw	a5,16(a4)
	c.andi	a4,00000001
	c.bnez	a4,00000000230936B0

l230936A8:
	c.lw	a5,12(a5)
	bltu	a2,a5,00000000230936D8

l230936AE:
	c.mv	s0,a5

l230936B0:
	c.mv	a2,s0
	addi	a0,s1,+00000028
	jal	ra,00000000230A382C
	c.li	a0,00000000
	c.sw	s1,56(s0)

l230936BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230936C8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l230936D0:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.j	00000000230936BE

l230936D8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.j	00000000230936BE

;; mbedtls_cipher_reset: 230936E0
;;   Called from:
;;     23093ADE (in mbedtls_cipher_crypt)
mbedtls_cipher_reset proc
	c.beqz	a0,00000000230936EE

l230936E2:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230936EE

l230936E6:
	sw	zero,a0,+00000024
	c.li	a0,00000000
	c.jr	ra

l230936EE:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_update: 230936F6
;;   Called from:
;;     23093AEE (in mbedtls_cipher_crypt)
;;     23095ECA (in mbedtls_gcm_setkey)
;;     230960B8 (in mbedtls_gcm_starts)
;;     23096266 (in mbedtls_gcm_update)
mbedtls_cipher_update proc
	c.bnez	a0,000000002309371C

l230936F8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23093700:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100

l23093706:
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

l2309371C:
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
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023093700

l23093736:
	c.mv	s5,a4
	c.beqz	a4,0000000023093700

l2309373A:
	sw	zero,a4,+00000000
	c.mv	s6,a3
	c.mv	s4,a1
	c.mv	s1,a2
	jal	ra,00000000230934D8
	c.lw	s0,0(a4)
	c.li	a3,00000001
	c.mv	s2,a0
	lbu	a5,a4,+00000001
	bne	a5,a3,0000000023093786

l23093756:
	bne	a0,s1,00000000230938F2

l2309375A:
	sw	a0,s5,+00000000
	c.lw	s0,0(a5)
	lb	a1,s0,+00000008
	c.lw	s0,60(a0)
	c.lw	a5,24(a5)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s4,000000A8
	c.lwsp	a2,000000E8
	lw	t1,a5,+00000004
	c.mv	a3,s6
	c.mv	a2,s4
	c.lwsp	a6,000000C8
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	t1

l23093786:
	c.li	a3,00000006
	bne	a5,a3,00000000230937B0

l2309378C:
	sw	s1,s5,+00000000
	c.lw	s0,60(a0)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s4,000000A8
	c.lwsp	a2,000000E8
	c.mv	a3,s6
	c.mv	a2,s4
	c.lwsp	a6,000000C8
	c.lwsp	s8,00000088
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,00000000230961AE

l230937B0:
	beq	a0,zero,00000000230938FA

l230937B4:
	bne	s4,s6,00000000230937C2

l230937B8:
	c.lw	s0,36(a3)
	c.bnez	a3,0000000023093700

l230937BC:
	and	a3,s1,a0
	c.bnez	a3,0000000023093700

l230937C2:
	c.li	a3,00000002
	bne	a5,a3,00000000230938A6

l230937C8:
	lb	a5,s0,+00000008
	lw	s3,s0,+00000024
	c.bnez	a5,00000000230937F2

l230937D2:
	sub	a5,s2,s3
	bltu	a5,s1,0000000023093800

l230937DA:
	addi	a0,s3,+00000014
	c.mv	a2,s1
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,00000000230A382C
	c.lw	s0,36(a5)
	c.add	s1,a5
	c.sw	s0,36(s1)

l230937EE:
	c.li	a0,00000000
	c.j	0000000023093706

l230937F2:
	c.li	a4,00000001
	bne	a5,a4,0000000023093800

l230937F8:
	sub	a5,s2,s3
	bltu	s1,a5,00000000230937DA

l23093800:
	beq	s3,zero,000000002309384E

l23093804:
	sub	s7,s2,s3
	addi	a0,s3,+00000014
	c.mv	a2,s7
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,00000000230A382C
	c.lw	s0,0(a5)
	lb	a1,s0,+00000008
	c.lw	s0,60(a0)
	c.lw	a5,24(a5)
	addi	a4,s0,+00000014
	addi	a3,s0,+00000028
	lw	a6,a5,+00000008
	c.mv	a2,s2
	c.mv	a5,s6
	c.jalr	a6
	bne	a0,zero,0000000023093706

l23093836:
	lw	a5,s5,+00000000
	c.add	s1,s3
	c.add	s6,s2
	c.add	a5,s2
	sw	a5,s5,+00000000
	sw	zero,s0,+00000024
	c.add	s4,s7
	sub	s1,s1,s2

l2309384E:
	c.beqz	s1,00000000230937EE

l23093850:
	and	s3,s1,s2
	bne	s3,zero,0000000023093860

l23093858:
	lb	a5,s0,+00000008
	c.bnez	a5,0000000023093860

l2309385E:
	c.mv	s3,s2

l23093860:
	sub	s1,s1,s3
	c.mv	a2,s3
	add	a1,s4,s1
	addi	a0,s0,+00000014
	jal	ra,00000000230A382C
	c.lw	s0,36(a5)
	c.add	s3,a5
	sw	s3,s0,+00000024
	c.beqz	s1,00000000230937EE

l2309387C:
	c.lw	s0,0(a5)
	lb	a1,s0,+00000008
	c.lw	s0,60(a0)
	c.lw	a5,24(a5)
	c.mv	a4,s4
	addi	a3,s0,+00000028
	lw	a6,a5,+00000008
	c.mv	a2,s1
	c.mv	a5,s6
	c.jalr	a6
	bne	a0,zero,0000000023093706

l2309389A:
	lw	a5,s5,+00000000
	c.add	s1,a5

l230938A0:
	sw	s1,s5,+00000000
	c.j	0000000023093706

l230938A6:
	c.li	a3,00000003
	bne	a5,a3,00000000230938CE

l230938AC:
	c.lw	a4,24(a5)
	lb	a1,s0,+00000008
	c.lw	s0,60(a0)
	lw	a7,a5,+0000000C
	c.mv	a6,s6
	c.mv	a5,s4
	addi	a4,s0,+00000028
	addi	a3,s0,+00000024
	c.mv	a2,s1
	c.jalr	a7

l230938C8:
	bne	a0,zero,0000000023093706

l230938CC:
	c.j	00000000230938A0

l230938CE:
	c.li	a3,00000005
	bne	a5,a3,0000000023093902

l230938D4:
	c.lw	a4,24(a5)
	c.lw	s0,60(a0)
	c.mv	a6,s6
	lw	a7,a5,+00000010
	addi	a4,s0,+00000014
	c.mv	a5,s4
	addi	a3,s0,+00000028
	addi	a2,s0,+00000024
	c.mv	a1,s1
	c.jalr	a7
	c.j	00000000230938C8

l230938F2:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000280
	c.j	0000000023093706

l230938FA:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000380
	c.j	0000000023093706

l23093902:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.j	0000000023093706

;; mbedtls_cipher_finish: 2309390A
;;   Called from:
;;     23093AFC (in mbedtls_cipher_crypt)
mbedtls_cipher_finish proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,00000000230939F6

l2309391A:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,00000000230939F6

l23093920:
	c.beqz	a2,00000000230939F6

l23093922:
	sw	zero,a2,+00000000
	c.lw	a0,0(a3)
	c.li	a5,00000003
	lbu	a4,a3,+00000001
	beq	a4,a5,00000000230939EC

l23093932:
	addi	a5,a4,-00000005
	andi	a5,a5,+000000FF
	c.li	a6,00000002
	bgeu	a6,a5,00000000230939EC

l23093940:
	c.li	a5,00000001
	bne	a4,a5,0000000023093954

l23093946:
	c.lw	a0,36(a5)
	c.li	s0,00000000
	c.beqz	a5,0000000023093972

l2309394C:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000280
	c.j	0000000023093972

l23093954:
	bne	a4,a6,00000000230939FE

l23093958:
	lb	a4,a0,+00000008
	c.mv	s3,a2
	c.mv	s4,a1
	lw	s2,a0,+00000024
	bne	a4,a5,00000000230939DC

l23093968:
	c.lw	a0,12(a5)
	c.bnez	a5,0000000023093984

l2309396C:
	c.li	s0,00000000
	bne	s2,zero,000000002309394C

l23093972:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23093984:
	c.lw	s1,56(a1)
	c.addi	a0,00000014
	c.bnez	a1,000000002309398C

l2309398A:
	c.lw	a3,12(a1)

l2309398C:
	c.mv	a2,s2
	c.jalr	a5

l23093990:
	c.mv	a0,s1
	jal	ra,00000000230934D8
	c.lw	s1,0(a5)
	c.mv	a2,a0
	lb	a1,s1,+00000008
	c.lw	a5,24(a5)
	c.lw	s1,60(a0)
	addi	a4,s1,+00000014
	lw	a6,a5,+00000008
	addi	a3,s1,+00000028
	c.mv	a5,s4
	c.jalr	a6
	c.mv	s0,a0
	c.bnez	a0,0000000023093972

l230939B6:
	c.mv	a0,s1
	jal	ra,00000000230934D8
	lb	a5,s1,+00000008
	c.mv	a1,a0
	c.bnez	a5,00000000230939F0

l230939C4:
	c.lwsp	s8,00000004
	lw	t1,s1,+00000010
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a2,s3
	c.mv	a0,s4
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	t1

l230939DC:
	jal	ra,00000000230934D8
	beq	a0,s2,0000000023093990

l230939E4:
	c.lw	s1,12(a5)
	c.bnez	a5,000000002309394C

l230939E8:
	bne	s2,zero,000000002309394C

l230939EC:
	c.li	s0,00000000
	c.j	0000000023093972

l230939F0:
	sw	a0,s3,+00000000
	c.j	0000000023093972

l230939F6:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000100
	c.j	0000000023093972

l230939FE:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000080
	c.j	0000000023093972

;; mbedtls_cipher_set_padding_mode: 23093A06
;;   Called from:
;;     2308B3C6 (in mbedtls_ssl_derive_keys)
;;     2308B3F0 (in mbedtls_ssl_derive_keys)
;;     23093A96 (in mbedtls_cipher_setup)
mbedtls_cipher_set_padding_mode proc
	c.beqz	a0,0000000023093A5C

l23093A08:
	c.lw	a0,0(a5)
	lbu	a4,a5,+00000001
	c.li	a5,00000002
	bne	a4,a5,0000000023093A5C

l23093A14:
	c.li	a5,00000003
	beq	a1,a5,0000000023093A3A

l23093A1A:
	c.li	a5,00000004
	beq	a1,a5,0000000023093A4E

l23093A20:
	c.bnez	a1,0000000023093A64

l23093A22:
	lui	a5,00023093
	addi	a5,a5,+000004E8
	c.sw	a0,12(a5)
	lui	a5,00023093
	addi	a5,a5,+00000504

l23093A34:
	c.sw	a0,16(a5)
	c.li	a0,00000000
	c.jr	ra

l23093A3A:
	lui	a5,00023093
	addi	a5,a5,+00000560
	c.sw	a0,12(a5)
	lui	a5,00023093
	addi	a5,a5,+00000584
	c.j	0000000023093A34

l23093A4E:
	lui	a5,00023093
	sw	zero,a0,+0000000C
	addi	a5,a5,+00000572
	c.j	0000000023093A34

l23093A5C:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23093A64:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; mbedtls_cipher_setup: 23093A6C
;;   Called from:
;;     2308B2CA (in mbedtls_ssl_derive_keys)
;;     2308B35C (in mbedtls_ssl_derive_keys)
;;     23095E9C (in mbedtls_gcm_setkey)
mbedtls_cipher_setup proc
	c.beqz	a1,0000000023093AA6

l23093A6E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.beqz	a0,0000000023093AAE

l23093A7A:
	c.mv	s1,a1
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lw	s1,24(a5)
	c.lw	a5,28(a5)
	c.jalr	a5
	c.sw	s0,60(a0)
	c.beqz	a0,0000000023093AB6

l23093A90:
	c.sw	s0,0(s1)
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023093A06
	c.li	a0,00000000

l23093A9C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23093AA6:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23093AAE:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.j	0000000023093A9C

l23093AB6:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000180
	c.j	0000000023093A9C

;; mbedtls_cipher_crypt: 23093ABE
;;   Called from:
;;     2308C632 (in mbedtls_ssl_write_record)
;;     2308E02E (in mbedtls_ssl_read_record_layer)
mbedtls_cipher_crypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s3,a3
	c.mv	s4,a4
	c.mv	s2,a5
	c.mv	s0,a6
	jal	ra,0000000023093688
	c.bnez	a0,0000000023093B0A

l23093ADC:
	c.mv	a0,s1
	jal	ra,00000000230936E0
	c.bnez	a0,0000000023093B0A

l23093AE4:
	c.mv	a4,s0
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230936F6
	c.bnez	a0,0000000023093B0A

l23093AF4:
	c.lw	s0,0(a1)
	c.addi4spn	a2,0000000C
	c.mv	a0,s1
	c.add	a1,s2
	jal	ra,000000002309390A
	c.bnez	a0,0000000023093B0A

l23093B02:
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.sw	s0,0(a5)

l23093B0A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; mbedtls_cipher_auth_encrypt: 23093B1A
;;   Called from:
;;     2308C516 (in mbedtls_ssl_write_record)
mbedtls_cipher_auth_encrypt proc
	lw	t5,a0,+00000000
	c.mv	t1,a2
	c.lwsp	zero,000000AC
	lbu	t6,t5,+00000001
	c.li	t5,00000006
	c.mv	a2,a6
	c.lwsp	tp,0000008C
	c.lwsp	s0,00000008
	bne	t6,t5,0000000023093B4E

l23093B32:
	sw	a2,t4,+00000000
	c.swsp	a6,00000080
	c.swsp	a7,00000000
	c.swsp	t3,00000004
	c.lw	a0,60(a0)
	c.mv	a7,a5
	c.mv	a6,a4
	c.mv	a5,a3
	c.mv	a4,t1
	c.mv	a3,a1
	c.li	a1,00000001
	jal	zero,0000000023096428

l23093B4E:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; mbedtls_cipher_auth_decrypt: 23093B56
;;   Called from:
;;     2308DDF4 (in mbedtls_ssl_read_record_layer)
mbedtls_cipher_auth_decrypt proc
	lw	t1,a0,+00000000
	lbu	t3,t1,+00000001
	c.li	t1,00000006
	bne	t3,t1,0000000023093B9C

l23093B64:
	c.addi	sp,FFFFFFE0
	c.mv	t1,a6
	c.mv	a6,a5
	c.mv	a5,a4
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,a1
	c.lwsp	zero,00000174
	c.swsp	ra,0000008C
	sw	t1,a1,+00000000
	c.swsp	a7,00000080
	c.swsp	a6,00000000
	c.lwsp	s0,00000138
	c.lwsp	tp,00000118
	c.lw	a0,60(a0)
	c.mv	a1,t1
	jal	ra,0000000023096488
	c.li	a5,FFFFFFEE
	bne	a0,a5,0000000023093B96

l23093B90:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000300

l23093B96:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23093B9C:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; gcm_ctx_free: 23093BA4
gcm_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230964FC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; gcm_ctx_alloc: 23093BBC
gcm_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000188
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,0000000023093BD4

l23093BD0:
	jal	ra,0000000023095E5E

l23093BD4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; gcm_aes_setkey_wrap: 23093BDE
gcm_aes_setkey_wrap proc
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000002
	jal	zero,0000000023095E68

;; aes_ctx_free: 23093BE8
aes_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230907C8
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; aes_ctx_alloc: 23093C00
aes_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000118
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,0000000023093C18

l23093C14:
	jal	ra,00000000230907BE

l23093C18:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; aes_setkey_dec_wrap: 23093C22
aes_setkey_dec_wrap proc
	jal	zero,0000000023090A6C

;; aes_setkey_enc_wrap: 23093C26
aes_setkey_enc_wrap proc
	jal	zero,00000000230907DC

;; aes_crypt_ctr_wrap: 23093C2A
aes_crypt_ctr_wrap proc
	jal	zero,00000000230915B6

;; aes_crypt_cfb128_wrap: 23093C2E
aes_crypt_cfb128_wrap proc
	jal	zero,000000002309151A

;; aes_crypt_cbc_wrap: 23093C32
aes_crypt_cbc_wrap proc
	jal	zero,0000000023091434

;; aes_crypt_ecb_wrap: 23093C36
aes_crypt_ecb_wrap proc
	jal	zero,0000000023091410

;; debug_send_line.isra.0: 23093C3A
;;   Called from:
;;     23093CCE (in mbedtls_debug_print_mpi.part.1)
;;     23093D1E (in mbedtls_debug_print_mpi.part.1)
;;     23093DBA (in mbedtls_debug_print_mpi.part.1)
;;     23093E66 (in mbedtls_debug_print_msg)
;;     23093EE8 (in mbedtls_debug_print_ret)
;;     23093F7E (in mbedtls_debug_print_buf)
;;     23093FE6 (in mbedtls_debug_print_buf)
;;     23094054 (in mbedtls_debug_print_buf)
;;     23094226 (in mbedtls_debug_print_crt)
;;     2309427A (in mbedtls_debug_print_crt)
;;     230942E0 (in mbedtls_debug_print_crt)
;;     23094372 (in mbedtls_debug_print_crt)
debug_send_line.isra.0 proc
	lw	t1,a0,+00000010
	c.lw	a0,20(a0)
	c.jr	t1

;; mbedtls_debug_print_mpi.part.1: 23093C42
;;   Called from:
;;     230940EC (in mbedtls_debug_print_mpi)
mbedtls_debug_print_mpi.part.1 proc
	addi	sp,sp,-00000240
	sw	s2,sp,+00000230
	sw	s4,sp,+00000228
	sw	s5,sp,+00000224
	sw	s6,sp,+00000220
	sw	s7,sp,+0000021C
	sw	ra,sp,+0000023C
	sw	s0,sp,+00000238
	sw	s1,sp,+00000234
	sw	s3,sp,+0000022C
	sw	s8,sp,+00000218
	sw	s9,sp,+00000214
	sw	s10,sp,+00000210
	sw	s11,sp,+0000020C
	c.lw	a5,4(s1)
	c.mv	s2,a5
	c.lw	a5,8(a5)
	c.mv	s7,a3
	c.mv	s4,a0
	c.mv	s5,a1
	c.mv	s6,a2
	c.mv	a3,a4
	c.addi	s1,FFFFFFFF

l23093C8C:
	slli	a4,s1,00000002
	c.bnez	s1,0000000023093D5C

l23093C92:
	c.add	a5,a4
	c.lw	a5,0(a1)
	c.li	a2,FFFFFFFF
	c.li	a5,0000001F

l23093C9A:
	srl	a4,a1,a5
	c.andi	a4,00000001
	c.bnez	a4,0000000023093CA8

l23093CA2:
	c.addi	a5,FFFFFFFF
	bne	a5,a2,0000000023093C9A

l23093CA8:
	slli	a4,s1,00000005
	c.addi	a4,00000001
	lui	a2,000230C9
	c.add	a4,a5
	addi	a2,a2,-000006AC
	addi	a1,zero,+00000200
	c.mv	a0,sp
	jal	ra,00000000230823DA
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023093C3A
	c.li	s0,00000000
	c.li	a4,00000001
	c.li	s9,00000000
	addi	s8,zero,+00000200

l23093CDC:
	c.li	a5,FFFFFFFF
	bne	s1,a5,0000000023093D68

l23093CE2:
	c.beqz	a4,0000000023093CFC

l23093CE4:
	lui	a2,000230C9
	addi	a1,zero,+00000200
	c.sub	a1,s0
	add	a0,sp,s0
	addi	a2,a2,-0000068C
	jal	ra,00000000230823DA
	c.add	s0,a0

l23093CFC:
	lui	a2,000230C9
	addi	a1,zero,+00000200
	c.sub	a1,s0
	add	a0,sp,s0
	addi	a2,a2,+0000030C
	jal	ra,00000000230823DA
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023093C3A
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
	lw	s10,sp,+00000210
	lw	s11,sp,+0000020C
	addi	sp,sp,+00000240
	c.jr	ra

l23093D5C:
	add	a2,a5,a4
	c.lw	a2,0(a2)
	c.bnez	a2,0000000023093C92

l23093D64:
	c.addi	s1,FFFFFFFF
	c.j	0000000023093C8C

l23093D68:
	slli	s10,s1,00000002
	c.beqz	a4,0000000023093D78

l23093D6E:
	lw	a5,s2,+00000008
	c.add	a5,s10
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023093DF0

l23093D78:
	c.li	s3,00000018
	c.li	s11,FFFFFFF8

l23093D7C:
	c.beqz	a4,0000000023093D90

l23093D7E:
	lw	a5,s2,+00000008
	c.add	a5,s10
	c.lw	a5,0(a5)
	srl	a5,a5,s3
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023093DEA

l23093D90:
	andi	a5,s9,+0000000F
	c.bnez	a5,0000000023093DC0

l23093D96:
	beq	s9,zero,0000000023093DC0

l23093D9A:
	lui	a5,000230C9
	addi	a2,a5,+0000030C
	sub	a1,s8,s0
	add	a0,sp,s0
	jal	ra,00000000230823DA
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023093C3A
	c.li	s0,00000000

l23093DC0:
	lw	a5,s2,+00000008
	sub	a1,s8,s0
	add	a0,sp,s0
	c.add	a5,s10
	c.lw	a5,0(a3)
	lui	a5,000230C0
	addi	a2,a5,-00000318
	srl	a3,a3,s3
	andi	a3,a3,+000000FF
	jal	ra,00000000230823DA
	c.add	s0,a0
	c.addi	s9,00000001
	c.li	a4,00000000

l23093DEA:
	c.addi	s3,FFFFFFF8
	bne	s3,s11,0000000023093D7C

l23093DF0:
	c.addi	s1,FFFFFFFF
	c.j	0000000023093CDC

;; mbedtls_debug_print_msg: 23093DF4
;;   Called from:
;;     2308AA90 (in ssl_swap_epochs)
;;     2308AAB2 (in ssl_swap_epochs)
;;     2308AB44 (in ssl_calc_finished_tls_sha256)
;;     2308ABE6 (in ssl_calc_finished_tls_sha256)
;;     2308AC32 (in ssl_calc_verify_tls_sha256)
;;     2308AC7C (in ssl_calc_verify_tls_sha256)
;;     2308AD46 (in ssl_set_timer)
;;     2308AD9E (in ssl_check_timer)
;;     2308AF50 (in mbedtls_ssl_derive_keys)
;;     2308AF7C (in mbedtls_ssl_derive_keys)
;;     2308B032 (in mbedtls_ssl_derive_keys)
;;     2308B04E (in mbedtls_ssl_derive_keys)
;;     2308B14A (in mbedtls_ssl_derive_keys)
;;     2308B252 (in mbedtls_ssl_derive_keys)
;;     2308B434 (in mbedtls_ssl_derive_keys)
;;     2308B466 (in mbedtls_ssl_flush_output)
;;     2308B484 (in mbedtls_ssl_flush_output)
;;     2308B514 (in mbedtls_ssl_flush_output)
;;     2308B532 (in mbedtls_ssl_flush_output)
;;     2308B556 (in mbedtls_ssl_flush_output)
;;     2308B638 (in mbedtls_ssl_send_flight_completed)
;;     2308B6DC (in mbedtls_ssl_optimize_checksum)
;;     2308B856 (in mbedtls_ssl_get_record_expansion)
;;     2308B908 (in mbedtls_ssl_handshake)
;;     2308B938 (in mbedtls_ssl_handshake)
;;     2308B9FA (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BA42 (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BAA0 (in mbedtls_ssl_handshake_wrapup)
;;     2308BAE4 (in mbedtls_ssl_handshake_wrapup)
;;     2308BB16 (in mbedtls_ssl_handshake_wrapup)
;;     2308BB40 (in mbedtls_ssl_handshake_wrapup)
;;     2308BBB2 (in ssl_handshake_init)
;;     2308BD4E (in mbedtls_ssl_setup)
;;     2308BD96 (in mbedtls_ssl_free)
;;     2308BE3C (in mbedtls_ssl_free)
;;     2308C0B0 (in mbedtls_ssl_write_record)
;;     2308C0FC (in mbedtls_ssl_write_record)
;;     2308C1FA (in mbedtls_ssl_write_record)
;;     2308C25A (in mbedtls_ssl_write_record)
;;     2308C2DA (in mbedtls_ssl_write_record)
;;     2308C2FC (in mbedtls_ssl_write_record)
;;     2308C4F0 (in mbedtls_ssl_write_record)
;;     2308C618 (in mbedtls_ssl_write_record)
;;     2308C6B6 (in mbedtls_ssl_write_record)
;;     2308C726 (in mbedtls_ssl_write_record)
;;     2308C780 (in mbedtls_ssl_write_record)
;;     2308C7B4 (in mbedtls_ssl_resend)
;;     2308C7D8 (in mbedtls_ssl_resend)
;;     2308C826 (in mbedtls_ssl_resend)
;;     2308C900 (in mbedtls_ssl_fetch_input)
;;     2308C924 (in mbedtls_ssl_fetch_input)
;;     2308C9B6 (in mbedtls_ssl_fetch_input)
;;     2308C9DC (in mbedtls_ssl_fetch_input)
;;     2308CA0A (in mbedtls_ssl_fetch_input)
;;     2308CA28 (in mbedtls_ssl_fetch_input)
;;     2308CA5E (in mbedtls_ssl_fetch_input)
;;     2308CAB0 (in mbedtls_ssl_fetch_input)
;;     2308CB3A (in mbedtls_ssl_fetch_input)
;;     2308CB68 (in mbedtls_ssl_fetch_input)
;;     2308CBB4 (in mbedtls_ssl_fetch_input)
;;     2308CC00 (in mbedtls_ssl_fetch_input)
;;     2308CC7C (in mbedtls_ssl_prepare_handshake_record)
;;     2308CCD6 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CD36 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CD78 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CDA4 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CDCA (in mbedtls_ssl_prepare_handshake_record)
;;     2308CE30 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CE8C (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF16 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF3A (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF6A (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF8A (in mbedtls_ssl_prepare_handshake_record)
;;     2308CFF2 (in mbedtls_ssl_prepare_handshake_record)
;;     2308D0EE (in mbedtls_ssl_prepare_handshake_record)
;;     2308D15A (in mbedtls_ssl_prepare_handshake_record)
;;     2308D17C (in mbedtls_ssl_prepare_handshake_record)
;;     2308D1DC (in mbedtls_ssl_handle_message_type)
;;     2308D204 (in mbedtls_ssl_handle_message_type)
;;     2308D230 (in mbedtls_ssl_handle_message_type)
;;     2308D258 (in mbedtls_ssl_handle_message_type)
;;     2308D298 (in mbedtls_ssl_send_alert_message)
;;     2308D302 (in mbedtls_ssl_send_alert_message)
;;     2308D346 (in mbedtls_ssl_write_certificate)
;;     2308D37C (in mbedtls_ssl_write_certificate)
;;     2308D3BE (in mbedtls_ssl_write_certificate)
;;     2308D3EA (in mbedtls_ssl_write_certificate)
;;     2308D4B8 (in mbedtls_ssl_write_certificate)
;;     2308D516 (in mbedtls_ssl_write_certificate)
;;     2308D542 (in mbedtls_ssl_write_change_cipher_spec)
;;     2308D5A8 (in mbedtls_ssl_write_change_cipher_spec)
;;     2308D5D2 (in mbedtls_ssl_write_finished)
;;     2308D65C (in mbedtls_ssl_write_finished)
;;     2308D6CC (in mbedtls_ssl_write_finished)
;;     2308D74A (in mbedtls_ssl_write_finished)
;;     2308D780 (in mbedtls_ssl_write)
;;     2308D802 (in mbedtls_ssl_write)
;;     2308D820 (in mbedtls_ssl_write)
;;     2308DA20 (in mbedtls_ssl_read_record_layer)
;;     2308DA44 (in mbedtls_ssl_read_record_layer)
;;     2308DA90 (in mbedtls_ssl_read_record_layer)
;;     2308DAB2 (in mbedtls_ssl_read_record_layer)
;;     2308DB8C (in mbedtls_ssl_read_record_layer)
;;     2308DBD2 (in mbedtls_ssl_read_record_layer)
;;     2308DC6A (in mbedtls_ssl_read_record_layer)
;;     2308DC8A (in mbedtls_ssl_read_record_layer)
;;     2308DCCA (in mbedtls_ssl_read_record_layer)
;;     2308DD10 (in mbedtls_ssl_read_record_layer)
;;     2308DFA4 (in mbedtls_ssl_read_record_layer)
;;     2308E1D8 (in mbedtls_ssl_read_record_layer)
;;     2308E214 (in mbedtls_ssl_read_record_layer)
;;     2308E268 (in mbedtls_ssl_read_record_layer)
;;     2308E2B8 (in mbedtls_ssl_read_record_layer)
;;     2308E318 (in mbedtls_ssl_read_record)
;;     2308E396 (in mbedtls_ssl_read_record)
;;     2308E3D4 (in mbedtls_ssl_parse_certificate)
;;     2308E410 (in mbedtls_ssl_parse_certificate)
;;     2308E4F6 (in mbedtls_ssl_parse_certificate)
;;     2308E536 (in mbedtls_ssl_parse_certificate)
;;     2308E596 (in mbedtls_ssl_parse_certificate)
;;     2308E60A (in mbedtls_ssl_parse_certificate)
;;     2308E6D0 (in mbedtls_ssl_parse_certificate)
;;     2308E70E (in mbedtls_ssl_parse_certificate)
;;     2308E738 (in mbedtls_ssl_parse_certificate)
;;     2308E7CA (in mbedtls_ssl_parse_certificate)
;;     2308E7FC (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E854 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E88A (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E8A8 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E8E4 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E92A (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E958 (in mbedtls_ssl_parse_finished)
;;     2308E9C6 (in mbedtls_ssl_parse_finished)
;;     2308EA1A (in mbedtls_ssl_parse_finished)
;;     2308EA98 (in mbedtls_ssl_parse_finished)
;;     2308EADA (in mbedtls_ssl_read)
;;     2308EBF6 (in mbedtls_ssl_read)
;;     2308EC1E (in mbedtls_ssl_read)
;;     2308EC74 (in mbedtls_ssl_read)
;;     23099814 (in mbedtls_ssl_handshake_client_step)
;;     230998BE (in mbedtls_ssl_handshake_client_step)
;;     230998E0 (in mbedtls_ssl_handshake_client_step)
;;     23099914 (in mbedtls_ssl_handshake_client_step)
;;     23099952 (in mbedtls_ssl_handshake_client_step)
;;     23099A1A (in mbedtls_ssl_handshake_client_step)
;;     23099A68 (in mbedtls_ssl_handshake_client_step)
;;     23099AC6 (in mbedtls_ssl_handshake_client_step)
;;     23099AE0 (in mbedtls_ssl_handshake_client_step)
;;     23099AFA (in mbedtls_ssl_handshake_client_step)
;;     23099B34 (in mbedtls_ssl_handshake_client_step)
;;     23099B66 (in mbedtls_ssl_handshake_client_step)
;;     23099B94 (in mbedtls_ssl_handshake_client_step)
;;     23099CDC (in mbedtls_ssl_handshake_client_step)
;;     23099D60 (in mbedtls_ssl_handshake_client_step)
;;     23099D9A (in mbedtls_ssl_handshake_client_step)
;;     23099DC0 (in mbedtls_ssl_handshake_client_step)
;;     23099DEA (in mbedtls_ssl_handshake_client_step)
;;     23099E2A (in mbedtls_ssl_handshake_client_step)
;;     23099E6C (in mbedtls_ssl_handshake_client_step)
;;     23099E94 (in mbedtls_ssl_handshake_client_step)
;;     23099EB2 (in mbedtls_ssl_handshake_client_step)
;;     2309A010 (in mbedtls_ssl_handshake_client_step)
;;     2309A03E (in mbedtls_ssl_handshake_client_step)
;;     2309A49A (in mbedtls_ssl_handshake_client_step)
;;     2309B29A (in mbedtls_ssl_handshake_server_step)
;;     2309B332 (in mbedtls_ssl_handshake_server_step)
;;     2309B3A4 (in mbedtls_ssl_handshake_server_step)
;;     2309B3C6 (in mbedtls_ssl_handshake_server_step)
;;     2309B402 (in mbedtls_ssl_handshake_server_step)
;;     2309B422 (in mbedtls_ssl_handshake_server_step)
;;     2309B570 (in mbedtls_ssl_handshake_server_step)
;;     2309B5B4 (in mbedtls_ssl_handshake_server_step)
;;     2309B646 (in mbedtls_ssl_handshake_server_step)
;;     2309B710 (in mbedtls_ssl_handshake_server_step)
;;     2309B854 (in mbedtls_ssl_handshake_server_step)
;;     2309B9BE (in mbedtls_ssl_handshake_server_step)
;;     2309B9FA (in mbedtls_ssl_handshake_server_step)
;;     2309BAA6 (in mbedtls_ssl_handshake_server_step)
;;     2309BB08 (in mbedtls_ssl_handshake_server_step)
;;     2309BB28 (in mbedtls_ssl_handshake_server_step)
;;     2309BC0E (in mbedtls_ssl_handshake_server_step)
;;     2309BC32 (in mbedtls_ssl_handshake_server_step)
;;     2309BC60 (in mbedtls_ssl_handshake_server_step)
;;     2309BCBC (in mbedtls_ssl_handshake_server_step)
;;     2309BD0A (in mbedtls_ssl_handshake_server_step)
;;     2309BD2A (in mbedtls_ssl_handshake_server_step)
;;     2309BD6A (in mbedtls_ssl_handshake_server_step)
;;     2309BDA4 (in mbedtls_ssl_handshake_server_step)
;;     2309BE5C (in mbedtls_ssl_handshake_server_step)
;;     2309BF34 (in mbedtls_ssl_handshake_server_step)
;;     2309BF54 (in mbedtls_ssl_handshake_server_step)
;;     2309BF7C (in mbedtls_ssl_handshake_server_step)
;;     2309BFD8 (in mbedtls_ssl_handshake_server_step)
;;     2309BFF6 (in mbedtls_ssl_handshake_server_step)
;;     2309C044 (in mbedtls_ssl_handshake_server_step)
;;     2309C094 (in mbedtls_ssl_handshake_server_step)
;;     2309C0D8 (in mbedtls_ssl_handshake_server_step)
;;     2309C13E (in mbedtls_ssl_handshake_server_step)
;;     2309CEA4 (in mbedtls_ssl_handshake_server_step)
mbedtls_debug_print_msg proc
	addi	sp,sp,-00000240
	sw	ra,sp,+0000022C
	sw	s0,sp,+00000228
	sw	s1,sp,+00000224
	sw	s2,sp,+00000220
	sw	s3,sp,+0000021C
	sw	a5,sp,+00000234
	sw	a6,sp,+00000238
	sw	a7,sp,+0000023C
	c.beqz	a0,0000000023093E6A

l23093E1A:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023093E6A

l23093E1E:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023093E6A

l23093E22:
	lui	a5,0004200F
	lw	a5,a5,-0000031C
	blt	a5,a1,0000000023093E6A

l23093E2E:
	c.mv	s2,a2
	c.mv	s3,a3
	c.mv	a2,a4
	c.addi4spn	a3,00000234
	c.mv	s1,a1
	c.mv	s0,a0
	addi	a1,zero,+00000200
	c.addi4spn	a0,00000010
	c.swsp	a3,00000084
	jal	ra,0000000023081E12
	addi	a5,zero,+000001FE
	bltu	a5,a0,0000000023093E5C

l23093E4E:
	c.addi4spn	a5,00000210
	c.add	a0,a5
	c.li	a5,0000000A
	sb	a5,a0,+00000E00
	sb	zero,a0,+00000E01

l23093E5C:
	c.lw	s0,0(a0)
	c.addi4spn	a4,00000010
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023093C3A

l23093E6A:
	lw	ra,sp,+0000022C
	lw	s0,sp,+00000228
	lw	s1,sp,+00000224
	lw	s2,sp,+00000220
	lw	s3,sp,+0000021C
	addi	sp,sp,+00000240
	c.jr	ra

;; mbedtls_debug_print_ret: 23093E84
;;   Called from:
;;     2308B0B4 (in mbedtls_ssl_derive_keys)
;;     2308B3E4 (in mbedtls_ssl_derive_keys)
;;     2308B40E (in mbedtls_ssl_derive_keys)
;;     2308B58A (in mbedtls_ssl_flush_output)
;;     2308C21A (in mbedtls_ssl_write_record)
;;     2308C534 (in mbedtls_ssl_write_record)
;;     2308C550 (in mbedtls_ssl_write_record)
;;     2308C89E (in mbedtls_ssl_resend)
;;     2308CADC (in mbedtls_ssl_fetch_input)
;;     2308CB8E (in mbedtls_ssl_fetch_input)
;;     2308CC14 (in mbedtls_ssl_fetch_input)
;;     2308CD5A (in mbedtls_ssl_prepare_handshake_record)
;;     2308D2D8 (in mbedtls_ssl_send_alert_message)
;;     2308D486 (in mbedtls_ssl_write_certificate)
;;     2308D580 (in mbedtls_ssl_write_change_cipher_spec)
;;     2308D72E (in mbedtls_ssl_write_finished)
;;     2308D7B8 (in mbedtls_ssl_write)
;;     2308D850 (in mbedtls_ssl_write)
;;     2308D99E (in mbedtls_ssl_read_record_layer)
;;     2308DE12 (in mbedtls_ssl_read_record_layer)
;;     2308E04C (in mbedtls_ssl_read_record_layer)
;;     2308E06A (in mbedtls_ssl_read_record_layer)
;;     2308E33E (in mbedtls_ssl_read_record)
;;     2308E4A6 (in mbedtls_ssl_parse_certificate)
;;     2308E694 (in mbedtls_ssl_parse_certificate)
;;     2308E820 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E992 (in mbedtls_ssl_parse_finished)
;;     2308EB1C (in mbedtls_ssl_read)
;;     23099F1E (in mbedtls_ssl_handshake_client_step)
;;     2309B358 (in mbedtls_ssl_handshake_server_step)
;;     2309BBDC (in mbedtls_ssl_handshake_server_step)
;;     2309BE0E (in mbedtls_ssl_handshake_server_step)
mbedtls_debug_print_ret proc
	addi	sp,sp,-00000220
	sw	s3,sp,+0000020C
	sw	ra,sp,+0000021C
	sw	s0,sp,+00000218
	sw	s1,sp,+00000214
	sw	s2,sp,+00000210
	c.mv	s3,a3
	c.lw	a0,0(a3)
	c.beqz	a3,0000000023093EEC

l23093EA2:
	c.lw	a3,16(a3)
	c.beqz	a3,0000000023093EEC

l23093EA6:
	lui	a3,0004200F
	lw	a3,a3,-0000031C
	blt	a3,a1,0000000023093EEC

l23093EB2:
	c.lui	a3,FFFF9000
	addi	a3,a3,+00000700
	beq	a5,a3,0000000023093EEC

l23093EBC:
	c.mv	a6,a5
	c.mv	s2,a2
	lui	a2,000230C9
	c.mv	a3,a4
	c.mv	s1,a1
	c.mv	s0,a0
	c.mv	a4,a6
	addi	a2,a2,-00000688
	addi	a1,zero,+00000200
	sub	a5,zero,a5
	c.mv	a0,sp
	jal	ra,00000000230823DA
	c.lw	s0,0(a0)
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023093C3A

l23093EEC:
	lw	ra,sp,+0000021C
	lw	s0,sp,+00000218
	lw	s1,sp,+00000214
	lw	s2,sp,+00000210
	lw	s3,sp,+0000020C
	addi	sp,sp,+00000220
	c.jr	ra

;; mbedtls_debug_print_buf: 23093F06
;;   Called from:
;;     2308AB6E (in ssl_calc_finished_tls_sha256)
;;     2308ABBE (in ssl_calc_finished_tls_sha256)
;;     2308AC64 (in ssl_calc_verify_tls_sha256)
;;     2308B076 (in mbedtls_ssl_derive_keys)
;;     2308B168 (in mbedtls_ssl_derive_keys)
;;     2308B186 (in mbedtls_ssl_derive_keys)
;;     2308B1A4 (in mbedtls_ssl_derive_keys)
;;     2308C336 (in mbedtls_ssl_write_record)
;;     2308C3D4 (in mbedtls_ssl_write_record)
;;     2308C452 (in mbedtls_ssl_write_record)
;;     2308C4BE (in mbedtls_ssl_write_record)
;;     2308C58E (in mbedtls_ssl_write_record)
;;     2308C74E (in mbedtls_ssl_write_record)
;;     2308C87A (in mbedtls_ssl_resend)
;;     2308D134 (in mbedtls_ssl_prepare_handshake_record)
;;     2308D938 (in mbedtls_ssl_read_record_layer)
;;     2308D9C8 (in mbedtls_ssl_read_record_layer)
;;     2308DC4C (in mbedtls_ssl_read_record_layer)
;;     2308DD74 (in mbedtls_ssl_read_record_layer)
;;     2308DDAA (in mbedtls_ssl_read_record_layer)
;;     2308DDD0 (in mbedtls_ssl_read_record_layer)
;;     2308DE5C (in mbedtls_ssl_read_record_layer)
;;     2308DF38 (in mbedtls_ssl_read_record_layer)
;;     2308DF5C (in mbedtls_ssl_read_record_layer)
;;     2308E1F6 (in mbedtls_ssl_read_record_layer)
;;     230999A2 (in mbedtls_ssl_handshake_client_step)
;;     23099A36 (in mbedtls_ssl_handshake_client_step)
;;     23099C6E (in mbedtls_ssl_handshake_client_step)
;;     2309B388 (in mbedtls_ssl_handshake_server_step)
;;     2309B51C (in mbedtls_ssl_handshake_server_step)
;;     2309B6AE (in mbedtls_ssl_handshake_server_step)
;;     2309B764 (in mbedtls_ssl_handshake_server_step)
;;     2309B7B8 (in mbedtls_ssl_handshake_server_step)
;;     2309B82A (in mbedtls_ssl_handshake_server_step)
;;     2309B8B0 (in mbedtls_ssl_handshake_server_step)
;;     2309B902 (in mbedtls_ssl_handshake_server_step)
;;     2309B98C (in mbedtls_ssl_handshake_server_step)
mbedtls_debug_print_buf proc
	addi	sp,sp,-00000270
	sw	ra,sp,+0000026C
	sw	s0,sp,+00000268
	sw	s1,sp,+00000264
	sw	s2,sp,+00000260
	sw	s3,sp,+0000025C
	sw	s4,sp,+00000258
	sw	s5,sp,+00000254
	sw	s6,sp,+00000250
	sw	s7,sp,+0000024C
	sw	s8,sp,+00000248
	sw	s9,sp,+00000244
	sw	s10,sp,+00000240
	sw	s11,sp,+0000023C
	c.swsp	a5,00000004
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023093FEA

l23093F44:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023093FEA

l23093F48:
	lui	a5,0004200F
	lw	a5,a5,-0000031C
	c.mv	s2,a1
	blt	a5,a1,0000000023093FEA

l23093F56:
	c.mv	s4,a2
	lui	a2,000230C9
	c.mv	s1,a0
	c.mv	s5,a3
	addi	a2,a2,-00000724
	c.mv	a3,a4
	addi	a1,zero,+00000200
	c.mv	a4,a6
	c.addi4spn	a0,00000030
	c.mv	s0,a6
	jal	ra,00000000230823DA
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023093C3A
	c.li	a2,00000011
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3A68
	c.li	s7,00000000
	c.li	s8,00000000
	addi	s6,zero,+00000200
	lui	s9,000230C9
	lui	s10,000230C0
	addi	s11,zero,+0000005E

l23093FA0:
	bne	s8,s0,0000000023094024

l23093FA4:
	c.beqz	s0,0000000023093FEA

l23093FA6:
	addi	s3,zero,+00000200
	lui	s6,000230BF

l23093FAE:
	c.addi4spn	a5,00000030
	andi	a4,s0,+0000000F
	add	a0,a5,s7
	sub	a1,s3,s7
	bne	a4,zero,00000000230940C0

l23093FC0:
	c.addi4spn	a5,00000030
	lui	a2,000230C9
	addi	a1,zero,+00000200
	c.addi4spn	a3,0000001C
	addi	a2,a2,-00000708
	sub	a1,a1,s7
	add	a0,a5,s7
	jal	ra,00000000230823DA
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023093C3A

l23093FEA:
	lw	ra,sp,+0000026C
	lw	s0,sp,+00000268
	lw	s1,sp,+00000264
	lw	s2,sp,+00000260
	lw	s3,sp,+0000025C
	lw	s4,sp,+00000258
	lw	s5,sp,+00000254
	lw	s6,sp,+00000250
	lw	s7,sp,+0000024C
	lw	s8,sp,+00000248
	lw	s9,sp,+00000244
	lw	s10,sp,+00000240
	lw	s11,sp,+0000023C
	addi	sp,sp,+00000270
	c.jr	ra

l23094024:
	c.lui	a5,00001000
	beq	s8,a5,0000000023093FC0

l2309402A:
	andi	s3,s8,+0000000F
	bne	s3,zero,000000002309407E

l23094032:
	beq	s8,zero,0000000023094064

l23094036:
	c.addi4spn	a5,00000030
	add	a0,a5,s7
	sub	a1,s6,s7
	c.addi4spn	a3,0000001C
	addi	a2,s9,-00000708
	jal	ra,00000000230823DA
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023093C3A
	c.li	a2,00000011
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A3A68
	c.li	s7,00000000

l23094064:
	lui	a5,000230C9
	addi	a2,a5,-00000700
	c.addi4spn	a5,00000030
	sub	a1,s6,s7
	add	a0,a5,s7
	c.mv	a3,s8
	jal	ra,00000000230823DA
	c.add	s7,a0

l2309407E:
	c.lwsp	s0,000000E4
	sub	a1,s6,s7
	addi	a2,s10,-00000318
	add	a4,a5,s8
	lbu	a3,a4,+00000000
	c.addi4spn	a5,00000030
	add	a0,a5,s7
	c.swsp	a4,00000084
	jal	ra,00000000230823DA
	c.lwsp	a2,000000C4
	c.add	s7,a0
	lbu	a4,a4,+00000000
	addi	a3,a4,-00000020
	andi	a3,a3,+000000FF
	bgeu	s11,a3,00000000230940B4

l230940B0:
	addi	a4,zero,+0000002E

l230940B4:
	c.addi4spn	a5,00000230
	c.add	s3,a5
	sb	a4,s3,+00000DEC
	c.addi	s8,00000001
	c.j	0000000023093FA0

l230940C0:
	addi	a2,s6,-000002A0
	jal	ra,00000000230823DA
	c.add	s7,a0
	c.addi	s0,00000001
	c.j	0000000023093FAE

;; mbedtls_debug_print_mpi: 230940CE
;;   Called from:
;;     2309413E (in mbedtls_debug_print_ecp.part.2)
;;     23094164 (in mbedtls_debug_print_ecp.part.2)
;;     2309433E (in mbedtls_debug_print_crt)
mbedtls_debug_print_mpi proc
	lw	a6,a0,+00000000
	beq	a6,zero,00000000230940F0

l230940D6:
	lw	a6,a6,+00000010
	beq	a6,zero,00000000230940F0

l230940DE:
	c.beqz	a5,00000000230940F0

l230940E0:
	lui	a6,0004200F
	lw	a6,a6,-0000031C
	blt	a6,a1,00000000230940F0

l230940EC:
	jal	zero,0000000023093C42

l230940F0:
	c.jr	ra

;; mbedtls_debug_print_ecp.part.2: 230940F2
;;   Called from:
;;     230941A6 (in mbedtls_debug_print_ecp)
mbedtls_debug_print_ecp.part.2 proc
	addi	sp,sp,-00000220
	sw	s2,sp,+00000210
	c.mv	s2,a2
	lui	a2,000230C9
	sw	s0,sp,+00000218
	sw	s1,sp,+00000214
	sw	s3,sp,+0000020C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s3,a3
	addi	a2,a2,-000006BC
	c.mv	a3,a4
	addi	a1,zero,+00000200
	c.mv	a0,sp
	sw	ra,sp,+0000021C
	sw	s4,sp,+00000208
	sw	s5,sp,+00000204
	c.mv	s4,a5
	c.mv	s5,a4
	jal	ra,00000000230823DA
	c.mv	a5,s4
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230940CE
	lui	a2,000230C9
	c.mv	a3,s5
	addi	a2,a2,-000006B4
	addi	a1,zero,+00000200
	c.mv	a0,sp
	jal	ra,00000000230823DA
	addi	a5,s4,+0000000C
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230940CE
	lw	ra,sp,+0000021C
	lw	s0,sp,+00000218
	lw	s1,sp,+00000214
	lw	s2,sp,+00000210
	lw	s3,sp,+0000020C
	lw	s4,sp,+00000208
	lw	s5,sp,+00000204
	addi	sp,sp,+00000220
	c.jr	ra

;; mbedtls_debug_print_ecp: 2309418A
;;   Called from:
;;     23094360 (in mbedtls_debug_print_crt)
mbedtls_debug_print_ecp proc
	lw	a6,a0,+00000000
	beq	a6,zero,00000000230941AA

l23094192:
	lw	a6,a6,+00000010
	beq	a6,zero,00000000230941AA

l2309419A:
	lui	a6,0004200F
	lw	a6,a6,-0000031C
	blt	a6,a1,00000000230941AA

l230941A6:
	jal	zero,00000000230940F2

l230941AA:
	c.jr	ra

;; mbedtls_debug_print_crt: 230941AC
;;   Called from:
;;     2308D412 (in mbedtls_ssl_write_certificate)
;;     2308E64A (in mbedtls_ssl_parse_certificate)
;;     2309C020 (in mbedtls_ssl_handshake_server_step)
;;     2309C07A (in mbedtls_ssl_handshake_server_step)
mbedtls_debug_print_crt proc
	c.addi16sp	FFFFFF90
	c.swsp	s2,00000030
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.mv	s2,a5
	c.lw	a0,0(a5)
	addi	sp,sp,-000007F0
	c.swsp	a4,00000084
	c.beqz	a5,0000000023094286

l230941D4:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023094286

l230941D8:
	beq	s2,zero,0000000023094286

l230941DC:
	lui	a5,0004200F
	lw	a5,a5,-0000031C
	c.mv	s1,a1
	c.li	s6,00000000
	blt	a5,a1,0000000023094286

l230941EC:
	c.lui	a5,00001000
	c.lui	s7,FFFFF000
	addi	a5,a5,-000007F0
	c.addi4spn	a4,00000010
	addi	s5,s7,+000007F0
	c.add	a5,a4
	c.mv	s0,a0
	c.mv	s3,a2
	c.mv	s4,a3
	c.add	s5,a5

l23094204:
	c.lwsp	a2,000000A4
	c.addi	s6,00000001
	lui	a2,000230C9
	c.mv	a4,s6
	addi	a2,a2,-000006F8
	addi	a1,zero,+00000200
	c.addi4spn	a0,00000020
	jal	ra,00000000230823DA
	c.lw	s0,0(a0)
	c.addi4spn	a4,00000020
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023093C3A
	lui	a2,000230C7
	addi	a2,a2,-00000244
	addi	a1,zero,+000003FF
	c.mv	a3,s2
	addi	a0,sp,+00000420
	jal	ra,000000002308EE70
	addi	a2,sp,+00000420
	c.mv	a1,a2
	c.li	s11,0000000A
	addi	s8,zero,+000001FF

l2309424C:
	lbu	a5,a2,+00000000
	c.bnez	a5,00000000230942A8

l23094252:
	c.li	a1,00000000
	addi	a2,zero,+00000024
	c.addi4spn	a0,00000220
	jal	ra,00000000230A3A68
	c.addi4spn	a1,00000220
	addi	a0,s2,+000000BC
	jal	ra,0000000023087C6C
	c.beqz	a0,00000000230942EA

l2309426A:
	c.lw	s0,0(a0)
	lui	a4,000230C9
	addi	a4,a4,-000006EC
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023093C3A

l2309427E:
	lw	s2,s2,+00000130
	bne	s2,zero,0000000023094204

l23094286:
	addi	sp,sp,+000007F0
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

l230942A8:
	addi	s10,a2,+00000001
	bne	a5,s11,00000000230942E6

l230942B0:
	c.sub	a2,a1
	addi	s9,a2,+00000001
	bgeu	s8,s9,00000000230942BE

l230942BA:
	addi	s9,zero,+000001FF

l230942BE:
	c.mv	a2,s9
	c.addi4spn	a0,00000220
	jal	ra,00000000230A382C
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	addi	a5,a5,-000007F0
	c.lw	s0,0(a0)
	c.add	a5,a4
	c.add	s9,a5
	c.mv	a1,s1
	c.addi4spn	a4,00000220
	c.mv	a3,s4
	c.mv	a2,s3
	sb	zero,s9,+00000A00
	jal	ra,0000000023093C3A
	c.mv	a1,s10

l230942E6:
	c.mv	a2,s10
	c.j	000000002309424C

l230942EA:
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.addi4spn	a4,00000010
	c.add	a5,a4
	addi	s8,sp,+00000220
	add	s9,a5,s7
	c.li	s10,00000001
	lui	s11,000230C9

l23094302:
	lbu	a5,s8,+00000000
	c.beqz	a5,000000002309427E

l23094308:
	lui	a5,000230C9
	lw	a4,s8,+00000004
	addi	a3,a5,-000006D8
	lui	a5,000230C0
	addi	a2,a5,-000006AC
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,00000000230823DA
	lbu	a5,s8,+00000000
	sb	zero,s9,+000007FF
	bne	a5,s10,000000002309434C

l23094330:
	lw	a5,s8,+00000008
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230940CE

l23094342:
	c.addi	s8,0000000C
	c.addi4spn	a5,00000244
	bne	s8,a5,0000000023094302

l2309434A:
	c.j	000000002309427E

l2309434C:
	c.li	a4,00000002
	bne	a5,a4,0000000023094366

l23094352:
	lw	a5,s8,+00000008
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002309418A
	c.j	0000000023094342

l23094366:
	c.lw	s0,0(a0)
	addi	a4,s11,-000006D0
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023093C3A
	c.j	0000000023094342

;; ecp_get_type: 23094378
;;   Called from:
;;     2309576A (in mbedtls_ecp_check_pubkey)
;;     230958CE (in mbedtls_ecp_check_privkey)
;;     23095952 (in mbedtls_ecp_mul)
ecp_get_type proc
	c.lw	a0,48(a5)
	c.beqz	a5,0000000023094386

l2309437C:
	c.lw	a0,60(a0)
	sltiu	a0,a0,+00000001
	c.addi	a0,00000001
	c.jr	ra

l23094386:
	c.li	a0,00000000
	c.jr	ra

;; ecp_safe_invert_jac: 2309438A
;;   Called from:
;;     2309445A (in ecp_select_comb)
;;     23095682 (in ecp_mul_comb)
ecp_safe_invert_jac proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.addi4spn	a0,00000004
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a2
	c.addi	s0,0000000C
	jal	ra,0000000023091E30
	c.mv	a2,s0
	addi	a1,s1,+00000004
	c.addi4spn	a0,00000004
	jal	ra,0000000023092794
	c.bnez	a0,00000000230943C8

l230943B0:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230925B2
	sltu	a2,zero,a0
	and	a2,s2,a2
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023091FDA

l230943C8:
	c.mv	s1,a0
	c.addi4spn	a0,00000004
	jal	ra,0000000023091E40
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; ecp_select_comb: 230943DE
;;   Called from:
;;     230954B6 (in ecp_mul_comb)
;;     23095652 (in ecp_mul_comb)
ecp_select_comb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	srli	s4,a4,00000001
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s6,a0
	c.mv	s3,a1
	c.mv	s7,a3
	c.mv	s5,a4
	andi	s4,s4,+0000003F
	c.mv	s1,a2
	c.li	s0,00000000
	addi	s8,a1,+0000000C

l2309440C:
	sub	s2,s4,s0
	sltiu	s2,s2,+00000001
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023091FDA
	c.bnez	a0,000000002309445E

l23094420:
	c.mv	a2,s2
	addi	a1,s1,+0000000C
	c.mv	a0,s8
	jal	ra,0000000023091FDA
	c.bnez	a0,000000002309445E

l2309442E:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+00000024
	bne	s7,s0,000000002309440C

l2309443C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	s8,00000088
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	srli	a2,s5,00000007
	c.mv	a1,s3
	c.lwsp	s4,000000A8
	c.lwsp	t3,00000068
	c.mv	a0,s6
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	jal	zero,000000002309438A

l2309445E:
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

;; ecp_modp: 23094476
;;   Called from:
;;     23094564 (in ecp_double_jac)
;;     230945EE (in ecp_double_jac)
;;     23094626 (in ecp_double_jac)
;;     2309465E (in ecp_double_jac)
;;     23094696 (in ecp_double_jac)
;;     230946CE (in ecp_double_jac)
;;     2309472E (in ecp_double_jac)
;;     23094766 (in ecp_double_jac)
;;     230947EE (in ecp_double_jac)
;;     2309483E (in ecp_double_jac)
;;     2309485C (in ecp_double_jac)
;;     2309487A (in ecp_double_jac)
;;     230949A6 (in ecp_normalize_jac)
;;     230949C0 (in ecp_normalize_jac)
;;     230949DC (in ecp_normalize_jac)
;;     230949F6 (in ecp_normalize_jac)
;;     23094AB4 (in ecp_normalize_jac_many)
;;     23094B52 (in ecp_normalize_jac_many)
;;     23094B70 (in ecp_normalize_jac_many)
;;     23094B7A (in ecp_normalize_jac_many)
;;     23094B98 (in ecp_normalize_jac_many)
;;     23094BBA (in ecp_normalize_jac_many)
;;     23094BDE (in ecp_normalize_jac_many)
;;     23094E8C (in ecp_add_mixed)
;;     23094EA6 (in ecp_add_mixed)
;;     23094EC0 (in ecp_add_mixed)
;;     23094EDC (in ecp_add_mixed)
;;     23094FC8 (in ecp_add_mixed)
;;     23094FE6 (in ecp_add_mixed)
;;     23095004 (in ecp_add_mixed)
;;     23095022 (in ecp_add_mixed)
;;     23095060 (in ecp_add_mixed)
;;     230950C2 (in ecp_add_mixed)
;;     230950E0 (in ecp_add_mixed)
;;     23095532 (in ecp_mul_comb)
;;     2309554E (in ecp_mul_comb)
;;     23095568 (in ecp_mul_comb)
;;     23095582 (in ecp_mul_comb)
;;     230955A0 (in ecp_mul_comb)
;;     230957D2 (in mbedtls_ecp_check_pubkey)
;;     230957EC (in mbedtls_ecp_check_pubkey)
;;     2309581E (in mbedtls_ecp_check_pubkey)
ecp_modp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a1,100(a5)
	c.mv	s0,a0
	c.bnez	a5,000000002309449A

l23094486:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a2,a1,+00000004
	c.mv	a1,a0
	c.addi	sp,00000010
	jal	zero,0000000023092C64

l2309449A:
	c.lw	a0,0(a5)
	c.mv	s1,a1
	blt	a5,zero,00000000230944C4

l230944A2:
	c.mv	a0,s0
	jal	ra,000000002309210A
	c.lw	s1,88(a5)
	c.slli	a5,01
	bgeu	a5,a0,00000000230944CE

l230944B0:
	c.lui	s2,FFFFB000
	addi	s2,s2,+00000080

l230944B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230944C4:
	c.li	a1,00000000
	jal	ra,00000000230925B2
	c.beqz	a0,00000000230944A2

l230944CC:
	c.j	00000000230944B0

l230944CE:
	c.lw	s1,100(a5)
	c.mv	a0,s0
	c.addi	s1,00000004
	c.jalr	a5
	c.mv	s2,a0
	c.bnez	a0,00000000230944B6

l230944DA:
	c.lw	s0,0(a5)
	bge	a5,zero,00000000230944EA

l230944E0:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023094504

l230944EA:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023092526
	blt	a0,zero,00000000230944B6

l230944F6:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,00000000230926AE
	c.beqz	a0,00000000230944EA

l23094502:
	c.j	0000000023094510

l23094504:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023092736
	c.beqz	a0,00000000230944DA

l23094510:
	c.mv	s2,a0
	c.j	00000000230944B6

;; ecp_double_jac: 23094514
;;   Called from:
;;     23095158 (in ecp_add_mixed)
;;     2309539C (in ecp_mul_comb)
;;     2309563C (in ecp_mul_comb)
ecp_double_jac proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	c.mv	s2,a0
	c.mv	a0,sp
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.mv	s4,a2
	c.mv	s5,a1
	c.swsp	s0,0000002C
	c.swsp	s3,000000A4
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.addi4spn	s1,0000000C
	jal	ra,0000000023091E30
	c.mv	a0,s1
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E30
	lw	a5,s2,+00000018
	bne	a5,zero,00000000230947DA

l23094550:
	addi	a2,s4,+00000018
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l23094560:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l2309456C:
	c.mv	a2,s1
	c.mv	a1,s4
	c.addi4spn	a0,00000018
	jal	ra,0000000023092736
	c.mv	s0,a0
	addi	s3,s2,+00000004
	c.beqz	a0,00000000230945BC

l2309457E:
	c.mv	a0,sp
	jal	ra,0000000023091E40
	c.mv	a0,s1
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E40
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

l230945AE:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l230945BC:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,0000000023092526
	bge	a0,zero,00000000230945AE

l230945C8:
	c.mv	a2,s1
	c.mv	a1,s4
	c.addi4spn	a0,00000024
	jal	ra,0000000023092794

l230945D2:
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l230945D6:
	c.lwsp	tp,000001F4
	blt	a5,zero,00000000230947B6

l230945DC:
	c.addi4spn	a2,00000024
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l230945EA:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l230945F6:
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023092906

l23094600:
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l23094604:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,0000000023092526
	bge	a0,zero,00000000230947CE

l23094610:
	addi	s6,s4,+0000000C
	c.mv	a2,s6
	c.mv	a1,s6
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l23094622:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,000000002309457E

l2309462E:
	c.li	a1,00000001
	c.addi4spn	a0,00000018
	jal	ra,0000000023092246
	c.mv	s0,a0
	addi	s3,s2,+00000004
	c.bnez	a0,000000002309457E

l2309463E:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,0000000023092526
	bge	a0,zero,00000000230948BC

l2309464A:
	c.addi4spn	a2,00000018
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l2309465A:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094668:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023092246

l23094670:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094676:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023092526
	bge	a0,zero,00000000230948CE

l23094682:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094692:
	c.mv	a1,s2
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946A0:
	c.li	a1,00000001
	c.addi4spn	a0,00000024
	jal	ra,0000000023092246

l230946A8:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946AE:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,0000000023092526
	bge	a0,zero,00000000230948DA

l230946BA:
	c.mv	a2,sp
	c.mv	a1,sp
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946CA:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946D8:
	c.addi4spn	a1,00000018
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,0000000023092794

l230946E2:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946E8:
	c.lwsp	s8,000000E4
	blt	a5,zero,00000000230948E6

l230946EE:
	c.addi4spn	a1,00000018
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,0000000023092794

l230946F8:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230946FE:
	c.lwsp	s8,000000E4
	blt	a5,zero,00000000230948FE

l23094704:
	c.addi4spn	a2,00000018
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,0000000023092794

l2309470E:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094714:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023094916

l2309471A:
	c.mv	a2,sp
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l2309472A:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094738:
	c.addi4spn	a2,00000024
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.mv	s7,s1
	bne	a0,zero,000000002309457E

l2309474A:
	c.lwsp	a2,000000E4
	blt	a5,zero,000000002309492E

l23094750:
	addi	a2,s4,+00000018
	c.mv	a1,s6
	c.addi4spn	a0,00000024
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094762:
	c.mv	a1,s2
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094770:
	c.li	a1,00000001
	c.addi4spn	a0,00000024
	jal	ra,0000000023092246

l23094778:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l2309477E:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,0000000023092526
	bge	a0,zero,000000002309494C

l2309478A:
	c.addi4spn	a1,00000018
	c.mv	a0,s5
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094798:
	c.addi4spn	a1,0000000C
	addi	a0,s5,+0000000C
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230947A8:
	c.addi4spn	a1,00000024
	addi	a0,s5,+00000018
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.j	000000002309457E

l230947B6:
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,00000000230925B2
	beq	a0,zero,00000000230945DC

l230947C2:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	00000000230945D2

l230947CE:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,00000000230926AE
	c.j	0000000023094600

l230947DA:
	c.mv	a2,s4
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230947EA:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l230947F8:
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023092906
	c.mv	s0,a0
	addi	s3,s2,+00000004
	bne	a0,zero,000000002309457E

l2309480C:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,0000000023092526
	bge	a0,zero,00000000230948AC

l23094818:
	addi	s6,s2,+00000010
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023094610

l23094828:
	addi	a2,s4,+00000018
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l2309483A:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094848:
	c.mv	a2,s1
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094858:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094866:
	c.mv	a2,s6
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094876:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094884:
	c.mv	a2,s1
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023092736

l2309488E:
	c.mv	s0,a0
	bne	a0,zero,000000002309457E

l23094894:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,0000000023092526
	blt	a0,zero,0000000023094610

l230948A0:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,00000000230926AE
	c.j	000000002309488E

l230948AC:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,00000000230926AE
	c.mv	s0,a0
	c.beqz	a0,000000002309480C

l230948BA:
	c.j	000000002309457E

l230948BC:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.mv	s0,a0
	beq	a0,zero,000000002309463E

l230948CC:
	c.j	000000002309457E

l230948CE:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230926AE
	c.j	0000000023094670

l230948DA:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.j	00000000230946A8

l230948E6:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,00000000230925B2
	beq	a0,zero,00000000230946EE

l230948F2:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	00000000230946E2

l230948FE:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023094704

l2309490A:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	00000000230946F8

l23094916:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230925B2
	beq	a0,zero,000000002309471A

l23094922:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,0000000023092736
	c.j	000000002309470E

l2309492E:
	c.li	a1,00000000
	c.mv	a0,s7
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023094750

l2309493A:
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s7
	jal	ra,0000000023092736
	c.mv	s0,a0
	beq	a0,zero,000000002309474A

l2309494A:
	c.j	000000002309457E

l2309494C:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.j	0000000023094778

;; ecp_normalize_jac: 23094958
;;   Called from:
;;     23094A42 (in ecp_normalize_jac_many)
;;     23095690 (in ecp_mul_comb)
ecp_normalize_jac proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	addi	s3,a1,+00000018
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a1
	c.mv	s2,a0
	c.li	a1,00000000
	c.mv	a0,s3
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	jal	ra,00000000230925B2
	c.mv	s0,a0
	c.beqz	a0,0000000023094A14

l23094978:
	c.addi4spn	a0,00000008
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E30
	addi	a2,s2,+00000004
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002309324C
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l23094994:
	c.addi4spn	a2,00000008
	c.mv	a1,a2
	c.addi4spn	a0,00000014
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949A2:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949AE:
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949BC:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949C8:
	c.addi	s1,0000000C
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949D8:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949E4:
	c.addi4spn	a2,00000008
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949F2:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094A08

l230949FE:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023092060
	c.mv	s0,a0

l23094A08:
	c.addi4spn	a0,00000008
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E40

l23094A14:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; ecp_normalize_jac_many: 23094A24
;;   Called from:
;;     230952C8 (in ecp_mul_comb)
;;     2309542A (in ecp_mul_comb)
ecp_normalize_jac_many proc
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
	c.li	a5,00000001
	c.mv	s1,a1
	bltu	a5,a2,0000000023094A60

l23094A40:
	c.lw	a1,0(a1)
	jal	ra,0000000023094958
	c.mv	s0,a0

l23094A48:
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

l23094A60:
	c.mv	s3,a0
	c.li	a1,0000000C
	c.mv	a0,a2
	c.mv	s2,a2
	jal	ra,00000000230904A4
	c.mv	s4,a0
	beq	a0,zero,0000000023094C22

l23094A72:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E30
	c.lw	s1,0(a1)
	c.mv	a0,s4
	c.addi	a1,00000018
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094A92:
	addi	s6,s4,+0000000C
	c.li	s5,00000001

l23094A98:
	slli	a5,s5,00000002
	c.add	a5,s1
	c.lw	a5,0(a2)
	addi	a1,s6,-0000000C
	c.mv	a0,s6
	c.addi	a2,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094AB0:
	c.mv	a1,s3
	c.mv	a0,s6
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094ABC:
	addi	a5,s5,+00000001
	c.addi	s6,0000000C
	bne	s2,a5,0000000023094B38

l23094AC6:
	c.li	a1,0000000C
	add	a1,s2,a1
	addi	a2,s3,+00000004
	c.addi4spn	a0,0000000C
	c.addi	a1,FFFFFFF4
	c.add	a1,s4
	jal	ra,000000002309324C
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094ADE:
	slli	a5,s2,00000002
	c.add	s1,a5
	addi	s6,s4,-0000000C
	c.li	s7,0000000C

l23094AEA:
	bne	s5,zero,0000000023094B3C

l23094AEE:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023091F6A

l23094AF6:
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094AFA:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.beqz	a0,0000000023094B76

l23094B08:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E40
	c.li	a5,0000000C
	add	s2,s2,a5
	c.mv	s1,s4
	c.add	s2,s4

l23094B24:
	c.mv	a0,s1
	c.addi	s1,0000000C
	jal	ra,0000000023091E40
	bne	s2,s1,0000000023094B24

l23094B30:
	c.mv	a0,s4
	jal	ra,0000000023064972
	c.j	0000000023094A48

l23094B38:
	c.mv	s5,a5
	c.j	0000000023094A98

l23094B3C:
	add	a2,s5,s7
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	c.add	a2,s6
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094B4E:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094B5A:
	lw	a2,s1,-00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,a1
	c.addi	a2,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094B6C:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,0000000023094476
	c.j	0000000023094AF6

l23094B76:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094B82:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000024
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094B92:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094BA0:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000024
	c.addi	a1,0000000C
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094BB2:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	c.addi	a0,0000000C
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094B08

l23094BC2:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000018
	c.addi	a1,0000000C
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094B08

l23094BD6:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	c.addi	a0,0000000C
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094B08

l23094BE8:
	lw	a1,s3,+00000008
	lw	a0,s1,-00000004
	jal	ra,0000000023091EEA
	c.mv	s0,a0
	bne	a0,zero,0000000023094B08

l23094BFA:
	lw	a0,s1,-00000004
	lw	a1,s3,+00000008
	c.addi	a0,0000000C
	jal	ra,0000000023091EEA
	c.mv	s0,a0
	bne	a0,zero,0000000023094B08

l23094C0E:
	lw	a0,s1,-00000004
	c.addi	s1,FFFFFFFC
	c.addi	a0,00000018
	jal	ra,0000000023091E40
	beq	s5,zero,0000000023094B08

l23094C1E:
	c.addi	s5,FFFFFFFF
	c.j	0000000023094AEA

l23094C22:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000280
	c.j	0000000023094A48

;; mbedtls_ecp_point_init.part.2: 23094C2A
;;   Called from:
;;     23094CB6 (in mbedtls_ecp_point_init)
;;     230954A2 (in ecp_mul_comb)
;;     23095A04 (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_point_init.part.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023091E30
	addi	a0,s0,+0000000C
	jal	ra,0000000023091E30
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023091E30

;; mbedtls_ecp_point_free.part.4: 23094C4C
;;   Called from:
;;     23094CF2 (in mbedtls_ecp_point_free)
;;     23095674 (in ecp_mul_comb)
;;     23095A5C (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_point_free.part.4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023091E40
	addi	a0,s0,+0000000C
	jal	ra,0000000023091E40
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023091E40

;; mbedtls_ecp_grp_id_list: 23094C6E
;;   Called from:
;;     2308BF0C (in mbedtls_ssl_config_defaults)
mbedtls_ecp_grp_id_list proc
	lui	a5,0004200F
	lw	a3,a5,+0000071C
	addi	a4,a5,+0000071C
	lui	a0,0004200F
	c.beqz	a3,0000000023094CA4

l23094C80:
	addi	a0,a0,+00000718
	c.jr	ra

l23094C86:
	add	a6,a3,a2
	sb	a1,a6,+00000000
	c.addi	a5,0000000C
	c.addi	a2,00000001

l23094C92:
	lbu	a1,a5,+00000000
	c.bnez	a1,0000000023094C86

l23094C98:
	c.add	a3,a2
	c.li	a5,00000001
	sb	zero,a3,+00000000
	c.sw	a4,0(a5)
	c.j	0000000023094C80

l23094CA4:
	lui	a5,000230C9
	c.li	a2,00000000
	addi	a5,a5,-0000066C
	addi	a3,a0,+00000718
	c.j	0000000023094C92

;; mbedtls_ecp_point_init: 23094CB4
;;   Called from:
;;     23094CEA (in mbedtls_ecp_keypair_init)
mbedtls_ecp_point_init proc
	c.beqz	a0,0000000023094CBA

l23094CB6:
	jal	zero,0000000023094C2A

l23094CBA:
	c.jr	ra

;; mbedtls_ecp_group_init: 23094CBC
;;   Called from:
;;     23094CD4 (in mbedtls_ecp_keypair_init)
mbedtls_ecp_group_init proc
	c.beqz	a0,0000000023094CC8

l23094CBE:
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	jal	zero,00000000230A3A68

l23094CC8:
	c.jr	ra

;; mbedtls_ecp_keypair_init: 23094CCA
;;   Called from:
;;     230885F6 (in eckey_alloc_wrap)
mbedtls_ecp_keypair_init proc
	c.beqz	a0,0000000023094CEE

l23094CCC:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023094CBC
	addi	a0,s0,+0000007C
	jal	ra,0000000023091E30
	addi	a0,s0,+00000088
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023094CB4

l23094CEE:
	c.jr	ra

;; mbedtls_ecp_point_free: 23094CF0
;;   Called from:
;;     23094D28 (in mbedtls_ecp_group_free)
;;     23094D5A (in mbedtls_ecp_group_free)
;;     23094D96 (in mbedtls_ecp_keypair_free)
;;     23095330 (in ecp_mul_comb)
;;     23095352 (in ecp_mul_comb)
mbedtls_ecp_point_free proc
	c.beqz	a0,0000000023094CF6

l23094CF2:
	jal	zero,0000000023094C4C

l23094CF6:
	c.jr	ra

;; mbedtls_ecp_group_free: 23094CF8
;;   Called from:
;;     23094D80 (in mbedtls_ecp_keypair_free)
;;     23095A62 (in mbedtls_ecp_check_pub_priv)
;;     23095B88 (in mbedtls_ecp_group_load)
;;     23095CE6 (in mbedtls_ecp_group_load)
mbedtls_ecp_group_free proc
	c.beqz	a0,0000000023094D74

l23094CFA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,96(a4)
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a4,a5,0000000023094D34

l23094D0E:
	c.addi	a0,00000004
	jal	ra,0000000023091E40
	addi	a0,s0,+00000010
	jal	ra,0000000023091E40
	addi	a0,s0,+0000001C
	jal	ra,0000000023091E40
	addi	a0,s0,+00000028
	jal	ra,0000000023094CF0
	addi	a0,s0,+0000004C
	jal	ra,0000000023091E40

l23094D34:
	c.lw	s0,116(a5)
	c.li	s1,00000000
	addi	s2,zero,+00000024
	c.bnez	a5,0000000023094D5E

l23094D3E:
	addi	a5,s0,+0000007C

l23094D42:
	bne	s0,a5,0000000023094D6C

l23094D46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23094D52:
	add	a5,s1,s2
	c.addi	s1,00000001
	c.add	a0,a5
	jal	ra,0000000023094CF0

l23094D5E:
	c.lw	s0,120(a5)
	c.lw	s0,116(a0)
	bltu	s1,a5,0000000023094D52

l23094D66:
	jal	ra,0000000023064972
	c.j	0000000023094D3E

l23094D6C:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023094D42

l23094D74:
	c.jr	ra

;; mbedtls_ecp_keypair_free: 23094D76
;;   Called from:
;;     23087E82 (in pk_parse_key_sec1_der)
;;     23087EF4 (in pk_parse_key_sec1_der)
;;     230885D2 (in eckey_free_wrap)
mbedtls_ecp_keypair_free proc
	c.beqz	a0,0000000023094D9A

l23094D78:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023094CF8
	addi	a0,s0,+0000007C
	jal	ra,0000000023091E40
	addi	a0,s0,+00000088
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023094CF0

l23094D9A:
	c.jr	ra

;; mbedtls_ecp_copy: 23094D9C
;;   Called from:
;;     23094F34 (in ecp_add_mixed)
;;     230952AE (in ecp_mul_comb)
;;     23095310 (in ecp_mul_comb)
mbedtls_ecp_copy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023091F6A
	c.bnez	a0,0000000023094DD0

l23094DAE:
	addi	a1,s1,+0000000C
	addi	a0,s0,+0000000C
	jal	ra,0000000023091F6A
	c.bnez	a0,0000000023094DD0

l23094DBC:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,s1,+00000018
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023091F6A

l23094DD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ecp_group_copy: 23094DDA
;;   Called from:
;;     23095A18 (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_group_copy proc
	lbu	a1,a1,+00000000
	jal	zero,0000000023095B7C

;; mbedtls_ecp_set_zero: 23094DE2
;;   Called from:
;;     23095162 (in ecp_add_mixed)
;;     230956DC (in mbedtls_ecp_point_read_binary)
mbedtls_ecp_set_zero proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023092060
	c.bnez	a0,0000000023094E0E

l23094DF2:
	c.li	a1,00000001
	addi	a0,s0,+0000000C
	jal	ra,0000000023092060
	c.bnez	a0,0000000023094E0E

l23094DFE:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023092060

l23094E0E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ecp_add_mixed: 23094E16
;;   Called from:
;;     230953E8 (in ecp_mul_comb)
;;     23095660 (in ecp_mul_comb)
ecp_add_mixed proc
	c.addi16sp	FFFFFF70
	c.swsp	s6,00000038
	addi	s6,a2,+00000018
	c.swsp	s1,000000C0
	c.swsp	s4,0000003C
	c.mv	s1,a0
	c.mv	s4,a1
	c.mv	a0,s6
	c.li	a1,00000000
	c.swsp	s2,00000040
	c.swsp	s5,000000B8
	c.swsp	ra,000000C4
	c.mv	s5,a3
	c.swsp	s0,00000044
	c.swsp	s3,000000BC
	c.swsp	s7,000000B4
	c.mv	s2,a2
	jal	ra,00000000230925B2
	c.mv	a1,s5
	beq	a0,zero,0000000023094F32

l23094E44:
	lw	a5,s5,+00000020
	bne	a5,zero,0000000023094F22

l23094E4C:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000030
	jal	ra,0000000023091E30
	addi	s3,sp,+0000003C
	c.mv	a0,s3
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000048
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000054
	jal	ra,0000000023091E30
	c.mv	a2,s6
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094E88:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094E94:
	c.mv	a2,s6
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094EA2:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094EAE:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094EBC:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094EC8:
	c.addi4spn	a1,00000018
	addi	a2,s5,+0000000C
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094ED8:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094EE4:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	addi	s5,s1,+00000004
	c.beqz	a0,0000000023094F86

l23094EF6:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000030
	jal	ra,0000000023091E40
	c.mv	a0,s3
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000048
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000054
	jal	ra,0000000023091E40
	c.j	0000000023094F3A

l23094F22:
	addi	s0,s5,+00000018
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023094F52

l23094F30:
	c.mv	a1,s2

l23094F32:
	c.mv	a0,s4
	jal	ra,0000000023094D9C
	c.mv	s0,a0

l23094F3A:
	c.mv	a0,s0
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

l23094F52:
	lw	a5,s5,+00000020
	beq	a5,zero,0000000023094E4C

l23094F5A:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023094E4C

l23094F66:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	0000000023094F3A

l23094F6E:
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230925B2
	c.beqz	a0,0000000023094F8C

l23094F78:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.mv	s0,a0
	c.bnez	a0,0000000023094EF6

l23094F86:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023094F6E

l23094F8C:
	c.addi4spn	a1,00000018
	addi	s7,s2,+0000000C
	c.mv	a2,s7
	c.mv	a0,a1
	jal	ra,0000000023092794
	c.mv	s0,a0
	addi	s5,s1,+00000004
	c.bnez	a0,0000000023094EF6

l23094FA2:
	c.lwsp	s8,000000E4
	blt	a5,zero,000000002309512A

l23094FA8:
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023095148

l23094FB4:
	c.addi4spn	a2,0000000C
	c.mv	a1,s6
	c.addi4spn	a0,00000054
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23094FC4:
	c.mv	a1,s1
	c.addi4spn	a0,00000054
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23094FD2:
	c.addi4spn	a2,0000000C
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23094FE2:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23094FF0:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000030
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23095000:
	c.mv	a1,s1
	c.addi4spn	a0,00000030
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309500E:
	c.addi4spn	a1,00000024
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309501E:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309502C:
	c.li	a2,00000002
	c.addi4spn	a1,00000024
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092906
	c.mv	s0,a0
	addi	s5,s1,+00000004
	bne	a0,zero,0000000023094EF6

l23095040:
	c.mv	a1,s5
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092526
	bge	a0,zero,0000000023095168

l2309504C:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.mv	a0,s3
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309505C:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309506A:
	c.addi4spn	a2,0000000C
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.mv	s2,s3
	bne	a0,zero,0000000023094EF6

l2309507C:
	c.lwsp	t3,000001F4
	blt	a5,zero,000000002309517A

l23095082:
	c.addi4spn	a2,00000030
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,0000000023092794

l2309508C:
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l23095092:
	c.lwsp	t3,000001F4
	blt	a5,zero,0000000023095198

l23095098:
	c.addi4spn	a1,00000024
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092794

l230950A2:
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950A8:
	c.lwsp	tp,000001F4
	blt	a5,zero,00000000230951B0

l230950AE:
	c.addi4spn	a1,00000024
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950BE:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950CC:
	c.addi4spn	a1,00000030
	c.mv	a2,s7
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950DC:
	c.mv	a1,s1
	c.addi4spn	a0,00000030
	jal	ra,0000000023094476
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950EA:
	c.addi4spn	a2,00000030
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000048
	jal	ra,0000000023092794

l230950F4:
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l230950FA:
	c.lwsp	s1,000000E4
	blt	a5,zero,00000000230951C8

l23095100:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309510E:
	c.addi4spn	a1,00000048
	addi	a0,s4,+0000000C
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,0000000023094EF6

l2309511E:
	c.addi4spn	a1,00000054
	addi	a0,s4,+00000018
	jal	ra,0000000023091F6A
	c.j	000000002309515C

l2309512A:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023094FA8

l23095136:
	c.addi4spn	a1,00000018
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.mv	s0,a0
	beq	a0,zero,0000000023094FA2

l23095146:
	c.j	0000000023094EF6

l23095148:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023095160

l23095152:
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023094514

l2309515C:
	c.mv	s0,a0
	c.j	0000000023094EF6

l23095160:
	c.mv	a0,s4
	jal	ra,0000000023094DE2
	c.j	000000002309515C

l23095168:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.mv	s0,a0
	beq	a0,zero,0000000023095040

l23095178:
	c.j	0000000023094EF6

l2309517A:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023095082

l23095186:
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,0000000023092736
	c.mv	s0,a0
	beq	a0,zero,000000002309507C

l23095196:
	c.j	0000000023094EF6

l23095198:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023095098

l230951A4:
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,0000000023092736
	c.j	000000002309508C

l230951B0:
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,00000000230925B2
	beq	a0,zero,00000000230950AE

l230951BC:
	c.addi4spn	a1,00000024
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	00000000230950A2

l230951C8:
	c.li	a1,00000000
	c.addi4spn	a0,00000048
	jal	ra,00000000230925B2
	beq	a0,zero,0000000023095100

l230951D4:
	c.addi4spn	a1,00000048
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	00000000230950F4

;; ecp_mul_comb: 230951E0
;;   Called from:
;;     2309597A (in mbedtls_ecp_mul)
ecp_mul_comb proc
	c.addi16sp	FFFFFE30
	sw	s1,sp,+000001C4
	c.mv	s1,a0
	c.addi4spn	a0,00000034
	sw	ra,sp,+000001CC
	c.swsp	a4,00000084
	c.swsp	a5,00000088
	sw	s0,sp,+000001C8
	sw	s2,sp,+000001C0
	c.mv	s0,a3
	c.mv	s2,a1
	sw	s10,sp,+000001A0
	sw	s3,sp,+000001BC
	c.mv	s10,a2
	sw	s4,sp,+000001B8
	sw	s5,sp,+000001B4
	sw	s6,sp,+000001B0
	sw	s7,sp,+000001AC
	sw	s8,sp,+000001A8
	sw	s9,sp,+000001A4
	sw	s11,sp,+0000019C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000040
	jal	ra,0000000023091E30
	addi	a5,s1,+0000004C
	c.mv	a0,a5
	c.li	a1,00000000
	c.swsp	a5,00000008
	jal	ra,00000000230920AA
	c.li	a5,00000001
	bne	a0,a5,00000000230956A0

l23095242:
	lw	s4,s1,+0000005C
	addi	a5,zero,+0000017F
	addi	a1,s1,+00000034
	addi	a0,s0,+0000000C
	sltu	s4,a5,s4
	jal	ra,0000000023092526
	c.addi	s4,00000004
	c.mv	s7,a0
	c.bnez	a0,00000000230952F0

l23095260:
	addi	a1,s1,+00000028
	c.mv	a0,s0
	jal	ra,0000000023092526
	c.bnez	a0,0000000023095270

l2309526C:
	c.addi	s4,00000001
	c.li	s7,00000001

l23095270:
	lw	s5,s1,+0000005C
	bltu	s4,s5,000000002309527A

l23095278:
	c.li	s4,00000002

l2309527A:
	addi	s8,s4,-00000001
	c.li	s6,00000001
	c.addi	s5,FFFFFFFF
	sll	s6,s6,s8
	c.add	s5,s4
	andi	s9,s6,+000000FF
	srl	s5,s5,s4
	beq	s7,zero,000000002309529C

l23095294:
	lw	s3,s1,+00000074
	bne	s3,zero,0000000023095440

l2309529C:
	addi	a1,zero,+00000024
	c.mv	a0,s6
	jal	ra,00000000230904A4
	c.mv	s3,a0
	beq	a0,zero,0000000023095698

l230952AC:
	c.mv	a1,s0
	jal	ra,0000000023094D9C
	c.mv	s0,a0
	c.bnez	a0,000000002309531E

l230952B6:
	c.li	s11,00000000
	c.li	a4,00000001

l230952BA:
	srl	a6,a4,s8
	beq	a6,zero,00000000230952F4

l230952C2:
	c.mv	a2,s11
	c.addi4spn	a1,00000088
	c.mv	a0,s1
	jal	ra,0000000023094A24
	c.mv	s0,a0
	c.bnez	a0,000000002309531E

l230952D0:
	c.li	a2,00000000
	c.li	a4,00000001
	addi	a7,zero,+00000024

l230952D8:
	srl	a5,a4,s8
	c.mv	a3,a4
	bne	a5,zero,0000000023095426

l230952E2:
	add	a6,a4,a7
	c.add	a2,a4
	andi	t4,a2,+000000FF
	c.add	a6,s3
	c.j	000000002309540E

l230952F0:
	c.li	s7,00000000
	c.j	0000000023095270

l230952F4:
	addi	a5,zero,+00000024
	add	a3,a4,a5
	srli	a1,a4,00000001
	c.swsp	a6,00000010
	c.swsp	a4,0000008C
	add	a1,a1,a5
	c.add	a3,s3
	c.mv	a0,a3
	c.swsp	a3,0000000C
	c.add	a1,s3
	jal	ra,0000000023094D9C
	c.mv	s0,a0
	c.lwsp	s8,000000A4
	c.lwsp	t3,000000C4
	c.lwsp	zero,00000118
	c.beqz	a0,00000000230953AC

l2309531E:
	bne	s7,zero,0000000023095342

l23095322:
	c.li	s1,00000000
	addi	s4,zero,+00000024

l23095328:
	add	a0,s1,s4
	c.addi	s1,00000001
	c.add	a0,s3
	jal	ra,0000000023094CF0
	andi	a5,s1,+000000FF
	bltu	a5,s9,0000000023095328

l2309533C:
	c.mv	a0,s3
	jal	ra,0000000023064972

l23095342:
	c.addi4spn	a0,00000034
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000040
	jal	ra,0000000023091E40
	c.beqz	s0,0000000023095356

l23095350:
	c.mv	a0,s2
	jal	ra,0000000023094CF0

l23095356:
	c.mv	a0,s0
	lw	ra,sp,+000001CC
	lw	s0,sp,+000001C8
	lw	s1,sp,+000001C4
	lw	s2,sp,+000001C0
	lw	s3,sp,+000001BC
	lw	s4,sp,+000001B8
	lw	s5,sp,+000001B4
	lw	s6,sp,+000001B0
	lw	s7,sp,+000001AC
	lw	s8,sp,+000001A8
	lw	s9,sp,+000001A4
	lw	s10,sp,+000001A0
	lw	s11,sp,+0000019C
	c.addi16sp	000001D0
	c.jr	ra

l23095390:
	c.mv	a2,a3
	c.mv	a1,a3
	c.mv	a0,s1
	c.swsp	a6,00000010
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	jal	ra,0000000023094514
	c.mv	s0,a0
	c.bnez	a0,000000002309531E

l230953A4:
	c.lwsp	zero,00000118
	c.lwsp	t3,000000C4
	c.lwsp	s8,000000A4
	c.addi	a6,00000001

l230953AC:
	bne	s5,a6,0000000023095390

l230953B0:
	slli	a5,s11,00000002
	c.addi4spn	a1,00000190
	addi	a2,s11,+00000001
	c.add	a5,a1
	c.slli	a4,01
	sw	a3,a5,+00000EF8
	andi	a4,a4,+000000FF
	andi	s11,a2,+000000FF
	c.j	00000000230952BA

l230953CC:
	add	a2,t1,a7
	c.mv	a3,a6
	c.mv	a0,s1
	c.swsp	t4,00000094
	c.swsp	a4,00000014
	c.swsp	a5,00000090
	c.swsp	t1,00000010
	c.swsp	a6,0000008C
	add	t3,a6,a2
	c.mv	a1,t3
	c.add	a2,s3
	c.swsp	t3,0000000C
	jal	ra,0000000023094E16
	c.mv	s0,a0
	c.bnez	a0,000000002309531E

l230953F0:
	c.lwsp	tp,000001F4
	c.lwsp	s8,0000008C
	c.lwsp	zero,000001D0
	slli	a2,a5,00000002
	c.lwsp	a2,000001BC
	c.addi4spn	a5,00000190
	c.lwsp	s0,000001D4
	c.lwsp	t3,00000008
	c.add	a2,a5
	sw	t3,a2,+00000EF8
	c.mv	a3,t1
	addi	a7,zero,+00000024

l2309540E:
	sub	a2,t4,a3
	andi	a5,a2,+000000FF
	addi	t1,a3,-00000001
	c.bnez	a3,00000000230953CC

l2309541C:
	c.slli	a4,01
	andi	a4,a4,+000000FF
	c.mv	a2,a5
	c.j	00000000230952D8

l23095426:
	c.addi4spn	a1,00000088
	c.mv	a0,s1
	jal	ra,0000000023094A24
	c.mv	s0,a0
	bne	a0,zero,000000002309531E

l23095434:
	beq	s7,zero,0000000023095440

l23095438:
	sw	s3,s1,+00000074
	sw	s6,s1,+00000078

l23095440:
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,00000000230920AA
	c.mv	s8,a0
	c.mv	a1,s10
	c.addi4spn	a0,00000034
	jal	ra,0000000023091F6A
	c.mv	s0,a0
	bne	a0,zero,000000002309531E

l23095458:
	c.lwsp	a6,00000064
	c.mv	a2,s10
	c.addi4spn	a0,00000040
	jal	ra,0000000023092794
	c.mv	s0,a0
	bne	a0,zero,000000002309531E

l23095468:
	c.addi	s8,FFFFFFFF
	sltu	s8,zero,s8
	c.mv	a2,s8
	c.addi4spn	a1,00000040
	c.addi4spn	a0,00000034
	jal	ra,0000000023091FDA
	c.mv	s0,a0
	bne	a0,zero,000000002309531E

l2309547E:
	addi	a2,s5,+00000001
	c.li	a1,00000000
	c.addi4spn	a0,00000088
	c.addi4spn	s0,00000088
	jal	ra,00000000230A3A68
	c.mv	s10,s0
	c.li	s6,00000000

l23095490:
	bne	s5,s6,00000000230955A8

l23095494:
	c.addi4spn	a5,00000088
	add	a7,a5,s6
	c.li	a1,00000000

l2309549C:
	bne	s0,a7,00000000230955D4

l230954A0:
	c.addi4spn	a0,00000064
	jal	ra,0000000023094C2A
	c.addi4spn	a5,00000190
	c.add	a5,s6
	lbu	a4,a5,-00000108
	c.mv	a3,s9
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230943DE
	c.mv	s0,a0
	bne	a0,zero,0000000023095672

l230954C0:
	addi	s5,s2,+00000018
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,0000000023092060
	c.mv	s0,a0
	bne	a0,zero,0000000023095672

l230954D2:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002309566A

l230954D8:
	lw	s4,s1,+00000058
	c.addi4spn	a0,0000004C
	jal	ra,0000000023091E30
	c.addi	s4,00000007
	c.addi4spn	a0,00000058
	srli	s4,s4,00000003
	jal	ra,0000000023091E30
	c.li	s10,0000000C
	addi	s11,s1,+00000004

l230954F4:
	c.lwsp	s4,000000A4
	c.lwsp	a2,00000084
	c.mv	a1,s4
	c.addi4spn	a0,0000004C
	jal	ra,0000000023093204

l23095500:
	c.mv	a1,s11
	c.addi4spn	a0,0000004C
	jal	ra,0000000023092526
	bge	a0,zero,0000000023095612

l2309550C:
	c.addi	s10,FFFFFFFF
	beq	s10,zero,00000000230956A8

l23095512:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,00000000230925B2
	bge	zero,a0,00000000230954F4

l2309551E:
	c.addi4spn	a2,0000004C
	c.mv	a1,s5
	c.mv	a0,s5
	jal	ra,000000002309281E
	c.mv	a5,a0
	bne	a0,zero,0000000023095620

l2309552E:
	c.mv	a1,s1
	c.mv	a0,s5
	jal	ra,0000000023094476
	c.mv	a5,a0
	bne	a0,zero,0000000023095620

l2309553C:
	c.addi4spn	a2,0000004C
	c.mv	a1,a2
	c.addi4spn	a0,00000058
	jal	ra,000000002309281E
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l2309554A:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,0000000023094476
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l23095556:
	c.addi4spn	a2,00000058
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,000000002309281E
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l23095564:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023094476
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l23095570:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,0000004C
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l2309557E:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,0000000023094476
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l2309558A:
	addi	s4,s2,+0000000C
	c.addi4spn	a2,00000058
	c.mv	a1,s4
	c.mv	a0,s4
	jal	ra,000000002309281E
	c.mv	a5,a0
	c.bnez	a0,0000000023095620

l2309559C:
	c.mv	a1,s1
	c.mv	a0,s4
	jal	ra,0000000023094476
	c.mv	a5,a0
	c.j	0000000023095620

l230955A8:
	c.mv	a5,s6
	c.li	s11,00000000

l230955AC:
	c.mv	a1,a5
	c.addi4spn	a0,00000034
	c.swsp	a5,00000008
	jal	ra,00000000230920AA
	lbu	a4,s10,+00000000
	sll	a0,a0,s11
	c.lwsp	a6,000000E4
	c.or	a0,a4
	sb	a0,s10,+00000000
	c.addi	s11,00000001
	c.add	a5,s5
	bltu	s11,s4,00000000230955AC

l230955CE:
	c.addi	s6,00000001
	c.addi	s10,00000001
	c.j	0000000023095490

l230955D4:
	lbu	a2,s0,+00000001
	lbu	a6,s0,+00000000
	c.addi	s0,00000001
	xor	a4,a2,a1
	xori	a5,a4,-00000001
	c.andi	a5,00000001
	add	a3,a6,a5
	c.slli	a4,18
	c.srai	a4,00000018
	c.and	a2,a1
	c.slli	a5,07
	or	a5,a5,a6
	sb	a5,s0,+00000FFF
	c.slli	a3,18
	c.srai	a3,00000018
	and	a0,a4,a3
	c.or	a2,a0
	c.xor	a4,a3
	sb	a4,s0,+00000000
	andi	a1,a2,+000000FF
	c.j	000000002309549C

l23095612:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,0000000023092308
	c.mv	a5,a0
	beq	a0,zero,0000000023095500

l23095620:
	c.addi4spn	a0,0000004C
	c.swsp	a5,00000084
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000058
	jal	ra,0000000023091E40
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002309566A

l23095632:
	c.mv	s0,a5
	c.j	0000000023095672

l23095636:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094514
	c.bnez	a0,0000000023095666

l23095642:
	c.addi4spn	a5,00000088
	c.add	a5,s6
	lbu	a4,a5,+00000000
	c.mv	a3,s9
	c.mv	a2,s3
	c.addi4spn	a1,00000064
	c.mv	a0,s1
	jal	ra,00000000230943DE
	c.bnez	a0,0000000023095666

l23095658:
	c.addi4spn	a3,00000064
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094E16
	c.beqz	a0,000000002309566C

l23095666:
	c.mv	s0,a0
	c.j	0000000023095672

l2309566A:
	c.li	s4,FFFFFFFF

l2309566C:
	c.addi	s6,FFFFFFFF
	bne	s6,s4,0000000023095636

l23095672:
	c.addi4spn	a0,00000064
	jal	ra,0000000023094C4C
	bne	s0,zero,000000002309531E

l2309567C:
	c.mv	a2,s8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002309438A
	c.mv	s0,a0
	bne	a0,zero,000000002309531E

l2309568C:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023094958
	c.mv	s0,a0
	c.j	000000002309531E

l23095698:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000280
	c.j	0000000023095342

l230956A0:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	0000000023095356

l230956A8:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000300
	c.j	0000000023095672

;; mbedtls_ecp_point_read_binary: 230956B0
;;   Called from:
;;     23087F5C (in pk_parse_key_sec1_der)
;;     23088262 (in mbedtls_pk_parse_subpubkey)
mbedtls_ecp_point_read_binary proc
	c.bnez	a3,00000000230956CE

l230956B2:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000080
	c.jr	ra

l230956BA:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000080

l230956C0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230956CE:
	lbu	a5,a2,+00000000
	c.bnez	a5,00000000230956E0

l230956D4:
	c.li	a5,00000001
	bne	a3,a5,00000000230956B2

l230956DA:
	c.mv	a0,a1
	jal	zero,0000000023094DE2

l230956E0:
	c.addi	sp,FFFFFFE0
	c.addi	a0,00000004
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a2
	c.swsp	ra,0000008C
	c.mv	s2,a3
	c.mv	s0,a1
	jal	ra,000000002309214A
	lbu	a4,s1,+00000000
	c.li	a5,00000004
	c.mv	s3,a0
	bne	a4,a5,0000000023095744

l23095704:
	slli	a5,a0,00000001
	c.addi	a5,00000001
	bne	s2,a5,00000000230956BA

l2309570E:
	c.mv	a2,a0
	addi	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,000000002309215C
	c.bnez	a0,00000000230956C0

l2309571C:
	addi	a1,s3,+00000001
	c.mv	a2,s3
	c.add	a1,s1
	addi	a0,s0,+0000000C
	jal	ra,000000002309215C
	c.bnez	a0,00000000230956C0

l2309572E:
	addi	a0,s0,+00000018
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,0000000023092060

l23095744:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000180
	c.j	00000000230956C0

;; mbedtls_ecp_check_pubkey: 2309574C
;;   Called from:
;;     23087F66 (in pk_parse_key_sec1_der)
;;     2308826E (in mbedtls_pk_parse_subpubkey)
;;     23095948 (in mbedtls_ecp_mul)
mbedtls_ecp_check_pubkey proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.mv	s3,a1
	c.swsp	s1,00000098
	c.li	a1,00000001
	c.mv	s1,a0
	addi	a0,s3,+00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023095780

l23095768:
	c.mv	a0,s1
	jal	ra,0000000023094378
	c.li	a5,00000001
	bne	a0,a5,00000000230958BA

l23095774:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230925B2
	bge	a0,zero,0000000023095788

l23095780:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000380
	c.j	0000000023095860

l23095788:
	addi	s0,s3,+0000000C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230925B2
	blt	a0,zero,0000000023095780

l23095798:
	addi	s2,s1,+00000004
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023092526
	bge	a0,zero,0000000023095780

l230957A8:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023092526
	bge	a0,zero,0000000023095780

l230957B4:
	c.addi4spn	a0,00000008
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E30
	c.mv	a2,s0
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l230957CE:
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l230957DA:
	c.mv	a2,s3
	c.mv	a1,s3
	c.addi4spn	a0,00000014
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l230957E8:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l230957F4:
	c.lw	s1,24(a5)
	c.bnez	a5,0000000023095886

l230957F8:
	c.addi4spn	a1,00000014
	c.li	a2,00000003
	c.mv	a0,a1
	jal	ra,00000000230927F2

l23095802:
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l23095806:
	c.lwsp	s4,000000E4
	blt	a5,zero,0000000023095870

l2309580C:
	c.addi4spn	a1,00000014
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l2309581A:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023094476
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l23095826:
	c.addi4spn	a1,00000014
	addi	a2,s1,+0000001C
	c.mv	a0,a1
	jal	ra,0000000023092736

l23095832:
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l23095836:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,0000000023092526
	bge	a0,zero,00000000230958AE

l23095842:
	c.addi4spn	a1,00000014
	c.addi4spn	a0,00000008
	jal	ra,0000000023092526
	c.mv	s0,a0
	c.beqz	a0,0000000023095854

l2309584E:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000380

l23095854:
	c.addi4spn	a0,00000008
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E40

l23095860:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23095870:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,00000000230925B2
	c.beqz	a0,000000002309580C

l2309587A:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092736
	c.j	0000000023095802

l23095886:
	c.addi4spn	a1,00000014
	addi	a2,s1,+00000010
	c.mv	a0,a1
	jal	ra,0000000023092736

l23095892:
	c.mv	s0,a0
	c.bnez	a0,0000000023095854

l23095896:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,0000000023092526
	blt	a0,zero,000000002309580C

l230958A2:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.j	0000000023095892

l230958AE:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,00000000230926AE
	c.j	0000000023095832

l230958BA:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	0000000023095860

;; mbedtls_ecp_check_privkey: 230958C2
;;   Called from:
;;     23087FA6 (in pk_parse_key_sec1_der)
;;     2309593C (in mbedtls_ecp_mul)
mbedtls_ecp_check_privkey proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023094378
	c.li	a5,00000001
	bne	a0,a5,0000000023095906

l230958D8:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230925B2
	blt	a0,zero,00000000230958F4

l230958E4:
	addi	a1,s1,+0000004C
	c.mv	a0,s0
	jal	ra,0000000023092526
	c.li	a5,00000000
	blt	a0,zero,00000000230958FA

l230958F4:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000380

l230958FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23095906:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000080
	c.j	00000000230958FA

;; mbedtls_ecp_mul: 2309590E
;;   Called from:
;;     23087F98 (in pk_parse_key_sec1_der)
;;     23095A2C (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_mul proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a0
	c.mv	s4,a1
	addi	a0,a3,+00000018
	c.li	a1,00000001
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a2
	c.mv	s2,a3
	c.mv	s5,a4
	c.mv	s6,a5
	jal	ra,00000000230925B2
	c.bnez	a0,000000002309597E

l23095938:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230958C2
	c.mv	s0,a0
	c.bnez	a0,0000000023095984

l23095944:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002309574C
	c.mv	s0,a0
	c.bnez	a0,0000000023095984

l23095950:
	c.mv	a0,s1
	jal	ra,0000000023094378
	c.li	a5,00000001
	bne	a0,a5,0000000023095984

l2309595C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a5,s6
	c.mv	a4,s5
	c.lwsp	zero,000000C8
	c.lwsp	tp,000000A8
	c.mv	a3,s2
	c.mv	a2,s3
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s4
	c.mv	a0,s1
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230951E0

l2309597E:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l23095984:
	c.mv	a0,s0
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

;; mbedtls_ecp_check_pub_priv: 2309599A
;;   Called from:
;;     23088604 (in eckey_check_pair)
mbedtls_ecp_check_pub_priv proc
	c.addi16sp	FFFFFF40
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	lbu	a5,a0,+00000000
	c.bnez	a5,00000000230959C6

l230959AE:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l230959B4:
	c.mv	a0,s0
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.addi16sp	000000C0
	c.jr	ra

l230959C6:
	lbu	a4,a1,+00000000
	bne	a4,a5,00000000230959AE

l230959CE:
	addi	s4,a1,+00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.mv	a1,s4
	addi	a0,a0,+00000088
	jal	ra,0000000023092526
	c.bnez	a0,00000000230959AE

l230959E2:
	addi	s3,s0,+00000094
	c.mv	a1,s3
	addi	a0,s1,+00000094
	jal	ra,0000000023092526
	c.bnez	a0,00000000230959AE

l230959F2:
	addi	s2,s0,+000000A0
	c.mv	a1,s2
	addi	a0,s1,+000000A0
	jal	ra,0000000023092526
	c.bnez	a0,00000000230959AE

l23095A02:
	c.mv	a0,sp
	jal	ra,0000000023094C2A
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,00000000230A3A68
	c.mv	a1,s0
	c.addi4spn	a0,00000024
	jal	ra,0000000023094DDA
	addi	a3,s0,+00000028
	addi	a2,s0,+0000007C
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a1,sp
	c.addi4spn	a0,00000024
	jal	ra,000000002309590E
	c.mv	s0,a0
	c.bnez	a0,0000000023095A5A

l23095A34:
	c.mv	a1,s4
	c.mv	a0,sp
	jal	ra,0000000023092526
	c.bnez	a0,0000000023095A54

l23095A3E:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092526
	c.bnez	a0,0000000023095A54

l23095A48:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,0000000023092526
	c.mv	s0,a0
	c.beqz	a0,0000000023095A5A

l23095A54:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l23095A5A:
	c.mv	a0,sp
	jal	ra,0000000023094C4C
	c.addi4spn	a0,00000024
	jal	ra,0000000023094CF8
	c.j	00000000230959B4

;; ecp_mod_koblitz.constprop.0: 23095A68
;;   Called from:
;;     23095B6A (in ecp_mod_p224k1)
;;     23095B78 (in ecp_mod_p256k1)
ecp_mod_koblitz.constprop.0 proc
	c.lw	a0,4(a5)
	bltu	a5,a2,0000000023095B5C

l23095A6E:
	c.addi16sp	FFFFFF90
	c.li	a4,00000001
	c.swsp	s2,00000030
	c.li	a3,00000002
	addi	s2,sp,+00000024
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	ra,000000B4
	c.swsp	s3,000000AC
	c.swsp	a4,0000000C
	c.swsp	a1,00000010
	c.swsp	a3,0000008C
	c.swsp	a4,00000084
	c.swsp	s2,00000088
	c.sub	a5,a2
	c.mv	s1,a0
	c.mv	s0,a2
	bltu	a2,a5,0000000023095B34

l23095A96:
	c.swsp	a5,00000008

l23095A98:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	c.lw	s1,8(a1)
	c.lwsp	a6,00000084
	slli	s3,s0,00000002
	c.add	a1,s3
	c.slli	a2,02
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.lwsp	a6,000000E4
	c.lwsp	t3,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	c.mv	a5,s0

l23095AC0:
	c.lw	s1,4(a4)
	bltu	a5,a4,0000000023095B38

l23095AC6:
	c.addi4spn	a1,0000000C
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.bnez	a0,0000000023095B26

l23095AD2:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230925DE
	c.bnez	a0,0000000023095B26

l23095ADE:
	c.lw	s1,4(a5)
	c.sub	a5,s0
	bltu	s0,a5,0000000023095B48

l23095AE6:
	c.swsp	a5,00000008

l23095AE8:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	c.lw	s1,8(a1)
	c.lwsp	a6,00000084
	c.mv	a0,s2
	c.add	a1,s3
	c.slli	a2,02
	jal	ra,00000000230A382C
	c.lwsp	a6,000000E4
	c.lwsp	t3,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008

l23095B0A:
	c.lw	s1,4(a5)
	bltu	s0,a5,0000000023095B4C

l23095B10:
	c.addi4spn	a1,0000000C
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.bnez	a0,0000000023095B26

l23095B1C:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230925DE

l23095B26:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.addi16sp	00000070
	c.jr	ra

l23095B34:
	c.swsp	a2,00000008
	c.j	0000000023095A98

l23095B38:
	c.lw	s1,8(a4)
	slli	a3,a5,00000002
	c.addi	a5,00000001
	c.add	a4,a3
	sw	zero,a4,+00000000
	c.j	0000000023095AC0

l23095B48:
	c.swsp	s0,00000008
	c.j	0000000023095AE8

l23095B4C:
	c.lw	s1,8(a5)
	slli	a4,s0,00000002
	c.addi	s0,00000001
	c.add	a5,a4
	sw	zero,a5,+00000000
	c.j	0000000023095B0A

l23095B5C:
	c.li	a0,00000000
	c.jr	ra

;; ecp_mod_p224k1: 23095B60
ecp_mod_p224k1 proc
	lui	a1,0004200F
	c.li	a2,00000007
	addi	a1,a1,-00000318
	jal	zero,0000000023095A68

;; ecp_mod_p256k1: 23095B6E
ecp_mod_p256k1 proc
	lui	a1,0004200F
	c.li	a2,00000008
	addi	a1,a1,-00000310
	jal	zero,0000000023095A68

;; mbedtls_ecp_group_load: 23095B7C
;;   Called from:
;;     23087CFC (in pk_use_ecparams)
;;     23094DDE (in mbedtls_ecp_group_copy)
mbedtls_ecp_group_load proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,0000000023094CF8
	c.lwsp	a2,00000064
	c.li	a5,0000000B
	sb	a1,s0,+00000000
	beq	a1,a5,0000000023095C1E

l23095B98:
	c.li	a5,0000000C
	beq	a1,a5,0000000023095C82

l23095B9E:
	c.li	a5,00000003
	bne	a1,a5,0000000023095CE4

l23095BA4:
	lui	a4,000230C9
	addi	a4,a4,-000004A4
	c.sw	s0,12(a4)
	lui	a4,000230C9
	addi	a4,a4,-00000524
	c.sw	s0,36(a4)
	lui	a4,000230C9
	addi	a4,a4,-000004C4
	c.li	a5,00000008
	c.sw	s0,84(a4)
	lui	a4,000230C9
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,32(a5)
	c.sw	s0,80(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,-00000504
	c.sw	s0,56(a5)
	lui	a5,000230C9
	c.sw	s0,4(s1)
	c.sw	s0,28(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,-000004E4

l23095BEC:
	c.sw	s0,60(a5)
	lui	a5,0004200F
	addi	a5,a5,-00000308
	c.sw	s0,72(a5)
	c.sw	s0,64(s1)
	c.sw	s0,68(s1)
	addi	a0,s0,+00000004
	jal	ra,000000002309210A
	c.sw	s0,88(a0)
	addi	a0,s0,+0000004C
	jal	ra,000000002309210A
	c.sw	s0,92(a0)
	c.sw	s0,96(s1)
	c.li	a0,00000000

l23095C14:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23095C1E:
	lui	a4,000230C9
	addi	a4,a4,-000005C0
	c.sw	s0,12(a4)
	lui	a4,000230CC
	addi	a4,a4,-000004E8
	c.sw	s0,24(a4)
	lui	a4,000230CC
	addi	a4,a4,-000004E4
	c.sw	s0,36(a4)
	c.li	a4,00000008
	lui	a5,00023096
	c.sw	s0,80(a4)
	lui	a4,000230C9
	addi	a5,a5,-000004A0
	addi	a4,a4,-000005E0
	c.sw	s0,100(a5)
	c.sw	s0,84(a4)
	c.li	a5,00000007
	lui	a4,000230C9
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,-00000618
	c.sw	s0,56(a5)
	lui	a5,000230C9
	c.sw	s0,4(s1)
	c.sw	s0,16(s1)
	c.sw	s0,20(s1)
	c.sw	s0,28(s1)
	c.sw	s0,32(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,-000005FC
	c.j	0000000023095BEC

l23095C82:
	lui	a4,000230C9
	addi	a4,a4,-00000544
	c.sw	s0,12(a4)
	lui	a4,000230CC
	addi	a4,a4,-000004E0
	c.sw	s0,24(a4)
	lui	a4,000230CC
	addi	a4,a4,-000004DC
	lui	a5,00023096
	c.sw	s0,36(a4)
	lui	a4,000230C9
	addi	a5,a5,-00000492
	addi	a4,a4,-00000564
	c.sw	s0,100(a5)
	c.sw	s0,84(a4)
	c.li	a5,00000008
	lui	a4,000230C9
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,80(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,-000005A4
	c.sw	s0,56(a5)
	lui	a5,000230C9
	c.sw	s0,4(s1)
	c.sw	s0,16(s1)
	c.sw	s0,20(s1)
	c.sw	s0,28(s1)
	c.sw	s0,32(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,-00000584
	c.j	0000000023095BEC

l23095CE4:
	c.mv	a0,s0
	jal	ra,0000000023094CF8
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000180
	c.j	0000000023095C14

;; gcm_mult: 23095CF2
;;   Called from:
;;     23096138 (in mbedtls_gcm_starts)
;;     2309616A (in mbedtls_gcm_starts)
;;     230961A2 (in mbedtls_gcm_starts)
;;     230962C0 (in mbedtls_gcm_update)
;;     23096404 (in mbedtls_gcm_finish)
gcm_mult proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000084
	c.swsp	s1,00000004
	c.swsp	s2,00000080
	lbu	a3,a1,+0000000F
	lui	t6,000230C9
	c.li	t3,0000000F
	c.andi	a3,0000000F
	c.slli	a3,03
	c.add	a3,a0
	lw	t1,a3,+000000C0
	lw	a4,a3,+000000C4
	c.lw	a3,64(a5)
	c.lw	a3,68(a3)
	addi	t6,t6,-00000480
	c.li	t2,0000000F
	c.li	t0,FFFFFFFF

l23095D1E:
	andi	t4,a5,+0000000F
	c.slli	t4,03
	c.add	t4,t6
	add	a6,a1,t3
	lbu	a6,a6,+00000000
	lw	t5,t4,+00000000
	slli	s1,a3,0000001C
	srli	s0,a5,00000004
	slli	t4,t1,0000001C
	c.or	s0,s1
	srli	s1,a3,00000004
	slli	s2,a4,0000001C
	or	t4,t4,s1
	srli	s1,t1,00000004
	andi	a7,a6,+0000000F
	or	s1,s2,s1
	srli	a6,a6,00000004
	c.slli	t5,10
	srli	s2,a4,00000004
	beq	t3,t2,0000000023095D88

l23095D66:
	slli	a3,a7,00000003
	c.add	a3,a0
	lw	a4,a3,+000000C4
	xor	a5,t5,s2
	lw	t1,a3,+000000C0
	c.xor	a4,a5
	c.lw	a3,64(a5)
	c.lw	a3,68(a3)
	xor	t1,t1,s1
	c.xor	a5,s0
	xor	a3,a3,t4

l23095D88:
	srli	a7,a5,00000004
	c.andi	a5,0000000F
	slli	t4,a3,0000001C
	c.slli	a6,03
	c.slli	a5,03
	c.add	a6,a0
	or	a7,t4,a7
	c.srli	a3,00000004
	slli	t4,t1,0000001C
	c.add	a5,t6
	or	a3,t4,a3
	srli	t5,a4,00000004
	slli	t4,a4,0000001C
	c.lw	a5,0(a5)
	lw	a4,a6,+000000C4
	srli	t1,t1,00000004
	c.slli	a5,10
	xor	a4,a4,t5
	or	t1,t4,t1
	c.xor	a4,a5
	lw	t4,a6,+000000C0
	lw	a5,a6,+00000040
	lw	a6,a6,+00000044
	c.addi	t3,FFFFFFFF
	xor	t1,t4,t1
	xor	a5,a5,a7
	xor	a3,a6,a3
	bne	t3,t0,0000000023095D1E

l23095DE4:
	srli	a1,a4,00000018
	sb	a1,a2,+00000000
	srli	a1,a4,00000010
	sb	a1,a2,+00000001
	sb	a4,a2,+00000003
	srli	a1,a4,00000008
	srli	a4,t1,00000018
	sb	a4,a2,+00000004
	srli	a4,t1,00000010
	sb	a4,a2,+00000005
	srli	a4,t1,00000008
	sb	a4,a2,+00000006
	srli	a4,a3,00000018
	sb	a4,a2,+00000008
	srli	a4,a3,00000010
	sb	a4,a2,+00000009
	srli	a4,a3,00000008
	sb	a4,a2,+0000000A
	srli	a4,a5,00000018
	sb	a4,a2,+0000000C
	c.lwsp	a2,00000004
	srli	a4,a5,00000010
	sb	a4,a2,+0000000D
	srli	a4,a5,00000008
	sb	a1,a2,+00000002
	sb	t1,a2,+00000007
	sb	a3,a2,+0000000B
	sb	a4,a2,+0000000E
	sb	a5,a2,+0000000F
	c.lwsp	s0,00000024
	c.lwsp	tp,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_gcm_init: 23095E5E
;;   Called from:
;;     23093BD0 (in gcm_ctx_alloc)
mbedtls_gcm_init proc
	addi	a2,zero,+00000188
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_gcm_setkey: 23095E68
;;   Called from:
;;     23093BE4 (in gcm_aes_setkey_wrap)
mbedtls_gcm_setkey proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	a0,a1
	c.li	a2,00000001
	c.mv	a1,a3
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.mv	s1,a3
	jal	ra,00000000230935DC
	beq	a0,zero,000000002309603A

l23095E86:
	c.lw	a0,20(a4)
	c.swsp	a0,00000084
	c.li	a5,00000010
	c.li	a0,FFFFFFEC
	bne	a4,a5,000000002309602E

l23095E92:
	c.mv	a0,s0
	jal	ra,0000000023093612
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,0000000023093A6C
	bne	a0,zero,000000002309602E

l23095EA4:
	c.li	a3,00000001
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023093642
	bne	a0,zero,000000002309602E

l23095EB4:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.swsp	zero,0000008C
	jal	ra,00000000230A3A68
	c.addi4spn	a3,00000020
	c.addi4spn	a4,0000001C
	c.li	a2,00000010
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,00000000230936F6
	bne	a0,zero,000000002309602E

l23095ED2:
	lbu	a5,sp,+00000020
	lbu	a4,sp,+00000021
	lbu	a2,sp,+00000024
	lbu	a3,sp,+00000025
	c.slli	a4,10
	c.slli	a5,18
	c.slli	a3,10
	c.slli	a2,18
	c.or	a5,a4
	c.or	a2,a3
	lbu	a4,sp,+00000023
	lbu	a3,sp,+00000027
	lbu	a6,sp,+0000002D
	c.or	a5,a4
	c.or	a2,a3
	lbu	a4,sp,+00000022
	lbu	a3,sp,+00000026
	c.slli	a6,10
	c.slli	a4,08
	c.slli	a3,08
	c.or	a2,a3
	c.or	a5,a4
	lbu	a3,sp,+00000029
	lbu	a4,sp,+00000028
	lbu	a1,sp,+0000002A
	c.slli	a3,10
	c.slli	a4,18
	c.or	a4,a3
	lbu	a3,sp,+0000002B
	c.slli	a1,08
	c.li	a7,00000000
	c.or	a4,a3
	lbu	a3,sp,+0000002C
	c.or	a4,a1
	sw	a7,s0,+000000C4
	c.slli	a3,18
	or	a3,a3,a6
	lbu	a6,sp,+0000002F
	sw	a7,s0,+00000044
	sw	a4,s0,+00000084
	or	a3,a3,a6
	lbu	a6,sp,+0000002E
	sw	a2,s0,+00000100
	sw	a5,s0,+00000104
	c.slli	a6,08
	or	a3,a3,a6
	c.li	a6,00000000
	sw	a6,s0,+000000C0
	sw	a6,s0,+00000040
	sw	a3,s0,+00000080
	c.li	a6,00000003
	c.li	a7,00000004
	lui	t4,000E1000

l23095F74:
	andi	a1,a3,+00000001
	add	a1,a1,t4
	slli	t1,a2,0000001F
	slli	t3,a4,0000001F
	c.srli	a4,00000001
	or	a4,t1,a4
	slli	t1,a5,0000001F
	c.srli	a5,00000001
	c.srli	a3,00000001
	c.srli	a2,00000001
	or	a3,t3,a3
	c.xor	a5,a1
	slli	a1,a7,00000003
	c.add	a1,s0
	or	a2,t1,a2
	c.sw	a1,64(a3)
	c.sw	a1,68(a4)
	sw	a2,a1,+000000C0
	sw	a5,a1,+000000C4
	c.addi	a6,FFFFFFFF
	srai	a7,a7,00000001
	bne	a6,zero,0000000023095F74

l23095FBA:
	c.li	a3,00000003
	c.li	a2,00000002
	addi	t4,s0,+00000040
	addi	t5,s0,+000000C0

l23095FC6:
	slli	a1,a2,00000003
	add	a7,t4,a1
	add	t1,t5,a1
	lw	s1,t1,+00000000
	lw	t2,t1,+00000004
	lw	t0,a7,+00000000
	lw	t6,a7,+00000004
	addi	a5,s0,+00000048
	c.li	a4,00000008

l23095FE8:
	lw	a6,a5,+00000080
	add	t3,t1,a4
	c.addi	a5,00000008
	xor	a6,a6,s1
	sw	a6,t3,+00000000
	lw	a6,a5,+0000007C
	xor	a6,a6,t2
	sw	a6,t3,+00000004
	lw	a6,a5,-00000008
	add	t3,a7,a4
	c.addi	a4,00000008
	xor	a6,a6,t0
	sw	a6,t3,+00000000
	lw	a6,a5,-00000004
	xor	a6,a6,t6
	sw	a6,t3,+00000004
	bne	a1,a4,0000000023095FE8

l23096028:
	c.addi	a3,FFFFFFFF
	c.slli	a2,01
	c.bnez	a3,0000000023095FC6

l2309602E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2309603A:
	c.li	a0,FFFFFFEC
	c.j	000000002309602E

;; mbedtls_gcm_starts: 2309603E
;;   Called from:
;;     2309644A (in mbedtls_gcm_crypt_and_tag)
mbedtls_gcm_starts proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	addi	s1,a0,+00000160
	c.swsp	s0,00000024
	c.swsp	s5,00000098
	c.mv	s0,a0
	c.swsp	s7,00000094
	c.mv	s5,a2
	c.mv	s7,a1
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s3,a5
	c.swsp	s6,00000018
	c.mv	s2,a3
	c.mv	s6,a4
	c.swsp	s8,00000014
	c.swsp	zero,00000084
	addi	s4,s0,+00000170
	jal	ra,00000000230A3A68
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,00000000230A3A68
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000140
	sw	a5,s0,+00000148
	sw	s7,s0,+00000180
	sw	a6,s0,+00000144
	sw	a6,s0,+0000014C
	c.li	a5,0000000C
	bne	s2,a5,00000000230960E8

l2309609C:
	c.li	a2,0000000C
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s0,+0000016F

l230960AC:
	c.addi4spn	a4,0000000C
	addi	a3,s0,+00000150
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230936F6
	c.mv	s2,a0
	c.bnez	a0,00000000230960CE

l230960C0:
	sw	s3,s0,+00000148
	sw	zero,s0,+0000014C
	c.li	s5,00000010

l230960CA:
	bne	s3,zero,0000000023096176

l230960CE:
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
	c.addi16sp	00000050
	c.jr	ra

l230960E8:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	slli	a5,s2,00000003
	srli	a4,a5,00000018
	sb	a4,sp,+0000001C
	srli	a4,a5,00000010
	sb	a4,sp,+0000001D
	srli	a4,a5,00000008
	sb	a4,sp,+0000001E
	sb	a5,sp,+0000001F
	c.li	s8,00000010

l23096114:
	bne	s2,zero,000000002309613E

l23096118:
	c.mv	a4,s1
	c.addi4spn	a5,00000010

l2309611C:
	lbu	a3,a4,+00000000
	lbu	a2,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s4,a4,000000002309611C

l23096132:
	c.mv	a2,s1
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023095CF2
	c.j	00000000230960AC

l2309613E:
	c.mv	s7,s2
	bgeu	s8,s2,0000000023096146

l23096144:
	c.li	s7,00000010

l23096146:
	c.mv	a4,s1
	c.li	a5,00000000

l2309614A:
	add	a3,s5,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s7,a5,000000002309614A

l23096164:
	c.mv	a2,s1
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023095CF2
	sub	s2,s2,s7
	c.add	s5,s7
	c.j	0000000023096114

l23096176:
	c.mv	s1,s3
	bgeu	s5,s3,000000002309617E

l2309617C:
	c.li	s1,00000010

l2309617E:
	c.mv	a4,s4
	c.li	a5,00000000

l23096182:
	add	a3,s6,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s1,a5,0000000023096182

l2309619C:
	c.mv	a2,s4
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023095CF2
	sub	s3,s3,s1
	c.add	s6,s1
	c.j	00000000230960CA

;; mbedtls_gcm_update: 230961AE
;;   Called from:
;;     230937AC (in mbedtls_cipher_update)
;;     2309645A (in mbedtls_gcm_crypt_and_tag)
mbedtls_gcm_update proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.swsp	zero,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s6,a2
	c.mv	s7,a3
	bgeu	a2,a3,00000000230961DC

l230961D2:
	sub	a5,a3,a2
	c.li	a0,FFFFFFEC
	bltu	a5,a1,0000000023096222

l230961DC:
	lw	a2,s0,+00000140
	lw	a3,s0,+00000144
	add	a4,s1,a2
	sltu	a5,a4,s1
	c.add	a5,a3
	bltu	a5,a3,00000000230962CE

l230961F2:
	bne	a3,a5,00000000230961FA

l230961F6:
	bltu	a4,a2,00000000230962CE

l230961FA:
	c.li	a3,0000000F
	bltu	a3,a5,00000000230962CE

l23096200:
	bne	a5,a3,000000002309620A

l23096204:
	c.li	a3,FFFFFFE0
	bltu	a3,a4,00000000230962CE

l2309620A:
	sw	a4,s0,+00000140
	sw	a5,s0,+00000144
	c.li	s2,00000010
	addi	s3,s0,+0000016B
	addi	s4,s0,+00000160
	c.li	s5,00000001

l2309621E:
	c.bnez	s1,000000002309623A

l23096220:
	c.li	a0,00000000

l23096222:
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

l2309623A:
	c.mv	s8,s1
	bgeu	s2,s1,0000000023096242

l23096240:
	c.li	s8,00000010

l23096242:
	addi	a4,s0,+0000016F

l23096246:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002309625C

l23096256:
	c.addi	a4,FFFFFFFF
	bne	a4,s3,0000000023096246

l2309625C:
	c.addi4spn	a4,0000000C
	c.addi4spn	a3,00000010
	c.li	a2,00000010
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230936F6
	c.bnez	a0,0000000023096222

l2309626C:
	addi	a5,s0,+00000170
	c.li	a4,00000000
	c.mv	a2,a5

l23096274:
	lw	a3,s0,+00000180
	add	a1,s6,a4
	c.bnez	a3,000000002309628C

l2309627E:
	lbu	a3,a1,+00000000
	lbu	a0,a5,+00000000
	c.xor	a3,a0
	sb	a3,a5,+00000000

l2309628C:
	c.addi4spn	a3,00000010
	c.add	a3,a4
	lbu	a1,a1,+00000000
	lbu	a3,a3,+00000000
	c.xor	a3,a1
	add	a1,s7,a4
	sb	a3,a1,+00000000
	lw	a1,s0,+00000180
	bne	a1,s5,00000000230962B4

l230962AA:
	lbu	a1,a5,+00000000
	c.xor	a3,a1
	sb	a3,a5,+00000000

l230962B4:
	c.addi	a4,00000001
	c.addi	a5,00000001
	bne	s8,a4,0000000023096274

l230962BC:
	c.mv	a1,a2
	c.mv	a0,s0
	jal	ra,0000000023095CF2
	sub	s1,s1,s8
	c.add	s6,s8
	c.add	s7,s8
	c.j	000000002309621E

l230962CE:
	c.li	a0,FFFFFFEC
	c.j	0000000023096222

;; mbedtls_gcm_finish: 230962D2
;;   Called from:
;;     23096474 (in mbedtls_gcm_crypt_and_tag)
mbedtls_gcm_finish proc
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
	lw	s5,a0,+00000140
	lw	s1,a0,+00000144
	lw	s7,a0,+00000148
	lw	s2,a0,+0000014C
	srli	a5,s5,0000001D
	c.slli	s1,03
	c.or	s1,a5
	c.slli	s2,03
	srli	a5,s7,0000001D
	or	s2,a5,s2
	addi	a4,a2,-00000004
	c.li	a5,0000000C
	bltu	a5,a4,0000000023096424

l23096314:
	c.mv	s0,a1
	c.mv	s8,a0
	addi	a1,a0,+00000150
	c.mv	a0,s0
	c.mv	s6,a2
	slli	s3,s5,00000003
	jal	ra,00000000230A382C
	slli	s4,s7,00000003
	or	a5,s3,s4
	or	a4,s1,s2
	c.or	a5,a4
	c.bnez	a5,0000000023096352

l23096338:
	c.li	a0,00000000

l2309633A:
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

l23096352:
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	srli	a5,s2,00000018
	sb	a5,sp,+00000000
	srli	a5,s2,00000010
	sb	a5,sp,+00000001
	srli	a5,s2,00000008
	sb	a5,sp,+00000002
	srli	a5,s4,00000018
	sb	a5,sp,+00000004
	srli	a5,s4,00000010
	sb	a5,sp,+00000005
	srli	a5,s1,00000018
	sb	a5,sp,+00000008
	srli	a5,s1,00000010
	sb	a5,sp,+00000009
	srli	a5,s1,00000008
	sb	a5,sp,+0000000A
	srli	a5,s3,00000018
	c.slli	s4,10
	sb	a5,sp,+0000000C
	srli	a5,s3,00000010
	c.slli	s3,10
	srli	s4,s4,00000010
	srli	s3,s3,00000010
	c.slli	s7,0B
	srli	s4,s4,00000008
	c.slli	s5,0B
	srli	s3,s3,00000008
	or	s4,s7,s4
	sb	s1,sp,+0000000B
	or	s3,s5,s3
	addi	s1,s8,+00000170
	sb	a5,sp,+0000000D
	sb	s2,sp,+00000003
	sh	s4,sp,+00000006
	sh	s3,sp,+0000000E
	c.mv	a5,sp
	addi	a2,s8,+00000180
	c.mv	a4,s1

l230963E8:
	lbu	a3,a4,+00000000
	lbu	a1,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.xor	a3,a1
	sb	a3,a4,+00000FFF
	bne	a4,a2,00000000230963E8

l230963FE:
	c.mv	a1,s1
	c.mv	a2,s1
	c.mv	a0,s8
	jal	ra,0000000023095CF2
	c.mv	a1,s0
	c.add	s6,s0

l2309640C:
	lbu	a5,a1,+00000000
	lbu	a4,s1,+00000000
	c.addi	a1,00000001
	c.addi	s1,00000001
	c.xor	a5,a4
	sb	a5,a1,+00000FFF
	bne	s6,a1,000000002309640C

l23096422:
	c.j	0000000023096338

l23096424:
	c.li	a0,FFFFFFEC
	c.j	000000002309633A

;; mbedtls_gcm_crypt_and_tag: 23096428
;;   Called from:
;;     23093B4A (in mbedtls_cipher_auth_encrypt)
;;     230964B6 (in mbedtls_gcm_auth_decrypt)
mbedtls_gcm_crypt_and_tag proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a2
	c.mv	a2,a3
	c.mv	a3,a4
	c.mv	a4,a5
	c.mv	a5,a6
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	a7,00000084
	c.lwsp	a6,00000198
	c.lwsp	s4,00000158
	c.lwsp	s8,00000134
	jal	ra,000000002309603E
	c.bnez	a0,0000000023096478

l23096450:
	c.lwsp	a2,00000028
	c.mv	a3,s4
	c.mv	a1,s3
	c.mv	a2,a7
	c.mv	a0,s0
	jal	ra,00000000230961AE
	c.bnez	a0,0000000023096478

l23096460:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.mv	a2,s2
	c.mv	a1,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,00000000230962D2

l23096478:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; mbedtls_gcm_auth_decrypt: 23096488
;;   Called from:
;;     23093B86 (in mbedtls_cipher_auth_decrypt)
mbedtls_gcm_auth_decrypt proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.lwsp	t0,00000004
	c.swsp	s2,00000018
	c.swsp	a7,00000080
	c.mv	s2,a7
	c.lwsp	ra,00000028
	c.swsp	s3,00000094
	addi	s3,sp,+00000010
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.mv	s1,a1
	c.mv	s4,a6
	c.swsp	s3,00000004
	c.mv	a6,a5
	c.swsp	s0,00000000
	c.mv	a5,a4
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,0000009C
	jal	ra,0000000023096428
	c.li	a5,00000000
	c.beqz	a0,00000000230964E4

l230964BE:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230964CE:
	add	a4,s4,a5
	add	a3,s3,a5
	lbu	a4,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a3
	c.or	a0,a4

l230964E4:
	bne	a5,s2,00000000230964CE

l230964E8:
	c.add	s1,s0
	c.beqz	a0,00000000230964BE

l230964EC:
	bne	s0,s1,00000000230964F4

l230964F0:
	c.li	a0,FFFFFFEE
	c.j	00000000230964BE

l230964F4:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230964EC

;; mbedtls_gcm_free: 230964FC
;;   Called from:
;;     23093BAC (in gcm_ctx_free)
mbedtls_gcm_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023093612
	addi	a5,s0,+00000188

l2309650C:
	bne	s0,a5,0000000023096518

l23096510:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23096518:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	000000002309650C

;; mbedtls_md_info_from_type: 23096520
;;   Called from:
;;     23087A9E (in mbedtls_pk_verify)
;;     23087B02 (in mbedtls_pk_sign)
;;     23088CB4 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088FB0 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     230892F8 (in mbedtls_rsa_rsassa_pss_sign)
;;     23089308 (in mbedtls_rsa_rsassa_pss_sign)
;;     23089492 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230896DE (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230896EC (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2308992C (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2308ADD6 (in tls_prf_sha256)
;;     2308AFC4 (in mbedtls_ssl_derive_keys)
;;     2308F67E (in x509_crt_verify_top.isra.7)
;;     2308F8BA (in x509_crt_verify_child)
mbedtls_md_info_from_type proc
	c.addi	a0,FFFFFFFD
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	bltu	a5,a0,000000002309653C

l2309652C:
	lui	a5,000230C9
	addi	a5,a5,-00000400
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l2309653C:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_md_init: 23096540
;;   Called from:
;;     23088D32 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088FE2 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2308936A (in mbedtls_rsa_rsassa_pss_sign)
;;     23089734 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2308ADD0 (in tls_prf_sha256)
;;     2308BC20 (in ssl_handshake_init)
;;     2308BC28 (in ssl_handshake_init)
mbedtls_md_init proc
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_md_free: 23096548
;;   Called from:
;;     23088D46 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088D74 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088FF6 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23089044 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23089380 (in mbedtls_rsa_rsassa_pss_sign)
;;     230893DA (in mbedtls_rsa_rsassa_pss_sign)
;;     23089748 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230897EA (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23089812 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2308AE56 (in tls_prf_sha256)
;;     2308B972 (in mbedtls_ssl_transform_free)
;;     2308B97A (in mbedtls_ssl_transform_free)
mbedtls_md_free proc
	c.beqz	a0,0000000023096594

l2309654A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002309657C

l23096556:
	c.lw	a0,4(a0)
	c.beqz	a0,000000002309655E

l2309655A:
	c.lw	a5,36(a5)
	c.jalr	a5

l2309655E:
	c.lw	s0,8(a5)
	c.beqz	a5,0000000023096574

l23096562:
	c.lw	s0,0(a4)
	c.lw	a4,12(a4)
	c.slli	a4,01
	c.add	a4,a5

l2309656A:
	bne	a5,a4,0000000023096584

l2309656E:
	c.lw	s0,8(a0)
	jal	ra,0000000023064972

l23096574:
	addi	a5,s0,+0000000C

l23096578:
	bne	s0,a5,000000002309658C

l2309657C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23096584:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	c.j	000000002309656A

l2309658C:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023096578

l23096594:
	c.jr	ra

;; mbedtls_md_setup: 23096596
;;   Called from:
;;     23088D3C (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088FEC (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23089374 (in mbedtls_rsa_rsassa_pss_sign)
;;     2308973E (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2308AE26 (in tls_prf_sha256)
;;     2308B1EE (in mbedtls_ssl_derive_keys)
;;     2308B1FE (in mbedtls_ssl_derive_keys)
mbedtls_md_setup proc
	c.beqz	a1,00000000230965E0

l23096598:
	c.beqz	a0,00000000230965E0

l2309659A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a1,32(a5)
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a1
	c.jalr	a5
	c.sw	s0,4(a0)
	c.beqz	a0,00000000230965C8

l230965B2:
	beq	s2,zero,00000000230965D0

l230965B6:
	c.lw	s1,12(a1)
	c.li	a0,00000002
	jal	ra,00000000230904A4
	c.sw	s0,8(a0)
	c.bnez	a0,00000000230965D0

l230965C2:
	c.lw	s1,36(a5)
	c.lw	s0,4(a0)
	c.jalr	a5

l230965C8:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000180
	c.j	00000000230965D4

l230965D0:
	c.sw	s0,0(s1)
	c.li	a0,00000000

l230965D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230965E0:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_starts: 230965E8
;;   Called from:
;;     23088662 (in mgf_mask)
;;     2308938C (in mbedtls_rsa_rsassa_pss_sign)
;;     230897BE (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_starts proc
	c.beqz	a0,0000000023096600

l230965EA:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023096600

l230965EE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,16(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23096600:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_update: 23096608
;;   Called from:
;;     2308866C (in mgf_mask)
;;     23088676 (in mgf_mask)
;;     23089396 (in mbedtls_rsa_rsassa_pss_sign)
;;     230893A0 (in mbedtls_rsa_rsassa_pss_sign)
;;     230893AA (in mbedtls_rsa_rsassa_pss_sign)
;;     230897C8 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230897D2 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230897DC (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_update proc
	c.beqz	a0,0000000023096620

l2309660A:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023096620

l2309660E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23096620:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_finish: 23096628
;;   Called from:
;;     2308867E (in mgf_mask)
;;     230893B2 (in mbedtls_rsa_rsassa_pss_sign)
;;     230897E4 (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_finish proc
	c.beqz	a0,0000000023096640

l2309662A:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023096640

l2309662E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,24(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23096640:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md: 23096648
;;   Called from:
;;     23088D0C (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23089018 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2308F68E (in x509_crt_verify_top.isra.7)
;;     2308F8D6 (in x509_crt_verify_child)
mbedtls_md proc
	c.mv	a5,a0
	c.beqz	a0,0000000023096662

l2309664C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,28(a5)
	c.mv	a0,a1
	c.mv	a1,a2
	c.mv	a2,a3
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23096662:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_starts: 2309666A
;;   Called from:
;;     2308AE34 (in tls_prf_sha256)
;;     2308B2B2 (in mbedtls_ssl_derive_keys)
;;     2308B2BE (in mbedtls_ssl_derive_keys)
mbedtls_md_hmac_starts proc
	c.beqz	a0,000000002309673C

l2309666C:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023096744

l23096680:
	c.lw	a0,8(a4)
	c.beqz	a4,0000000023096744

l23096684:
	c.lw	a5,12(a4)
	c.mv	s1,a1
	c.mv	s3,a2
	bgeu	a4,a2,00000000230966B2

l2309668E:
	c.lw	a5,16(a5)
	c.lw	a0,4(a0)
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a2,s3
	c.lw	a5,20(a5)
	c.mv	a1,s1
	c.mv	s1,sp
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a1,sp
	c.lw	a5,24(a5)
	c.jalr	a5
	c.lw	s0,0(a5)
	lw	s3,a5,+00000008

l230966B2:
	c.lw	s0,0(a5)
	lw	s2,s0,+00000008
	addi	a1,zero,+00000036
	c.lw	a5,12(a2)
	c.mv	a0,s2
	add	s4,s2,a2
	jal	ra,00000000230A3A68
	c.lw	s0,0(a5)
	addi	a1,zero,+0000005C
	c.mv	a0,s4
	c.lw	a5,12(a2)
	jal	ra,00000000230A3A68
	c.li	a5,00000000

l230966D8:
	bne	s3,a5,0000000023096710

l230966DC:
	c.mv	a5,sp

l230966DE:
	sb	zero,a5,+00000000
	c.addi4spn	a4,00000020
	c.addi	a5,00000001
	bne	a5,a4,00000000230966DE

l230966EA:
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.lw	a5,16(a5)
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a1,s2
	c.lw	a5,20(a4)
	c.lw	a5,12(a2)
	c.jalr	a4
	c.li	a0,00000000

l23096700:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23096710:
	add	a3,s2,a5
	add	a2,s1,a5
	lbu	a4,a3,+00000000
	lbu	a1,a2,+00000000
	c.xor	a4,a1
	sb	a4,a3,+00000000
	add	a3,s4,a5
	lbu	a4,a3,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	c.j	00000000230966D8

l2309673C:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

l23096744:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.j	0000000023096700

;; mbedtls_md_hmac_update: 2309674C
;;   Called from:
;;     2308AE40 (in tls_prf_sha256)
;;     2308AE96 (in tls_prf_sha256)
;;     2308AEAE (in tls_prf_sha256)
;;     2308C35A (in mbedtls_ssl_write_record)
;;     2308C36A (in mbedtls_ssl_write_record)
;;     2308C37A (in mbedtls_ssl_write_record)
;;     2308C38E (in mbedtls_ssl_write_record)
;;     2308DEBA (in mbedtls_ssl_read_record_layer)
;;     2308DEC8 (in mbedtls_ssl_read_record_layer)
;;     2308DED6 (in mbedtls_ssl_read_record_layer)
;;     2308DEE6 (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_update proc
	c.beqz	a0,0000000023096768

l2309674E:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023096768

l23096752:
	c.lw	a0,8(a4)
	c.beqz	a4,0000000023096768

l23096756:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23096768:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_finish: 23096770
;;   Called from:
;;     2308AE48 (in tls_prf_sha256)
;;     2308AE9E (in tls_prf_sha256)
;;     2308AEB6 (in tls_prf_sha256)
;;     2308C3A2 (in mbedtls_ssl_write_record)
;;     2308DEF6 (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_finish proc
	c.beqz	a0,00000000230967CC

l23096772:
	c.lw	a0,0(a4)
	c.beqz	a4,00000000230967CC

l23096776:
	c.lw	a0,8(a5)
	c.beqz	a5,00000000230967CC

l2309677A:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s1,00000090
	c.lw	a4,12(s1)
	c.mv	s0,a0
	c.lw	a0,4(a0)
	c.add	s1,a5
	c.lw	a4,24(a5)
	c.mv	s2,a1
	c.mv	a1,sp
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.lw	a5,16(a5)
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a1,s1
	c.lw	a5,20(a4)
	c.lw	a5,12(a2)
	c.jalr	a4
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a1,sp
	c.lw	a5,20(a4)
	c.lw	a5,8(a2)
	c.jalr	a4
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.mv	a1,s2
	c.lw	a5,24(a5)
	c.jalr	a5
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l230967CC:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_reset: 230967D4
;;   Called from:
;;     2308AE8C (in tls_prf_sha256)
;;     2308AEA4 (in tls_prf_sha256)
;;     2308C3AC (in mbedtls_ssl_write_record)
;;     2308DF18 (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_reset proc
	c.beqz	a0,0000000023096804

l230967D6:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023096804

l230967DA:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,8(a1)
	c.swsp	a1,00000084
	c.beqz	a1,000000002309680C

l230967E6:
	c.mv	s0,a0
	c.lw	a5,16(a5)
	c.lw	a0,4(a0)
	c.jalr	a5
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.lwsp	a2,00000064
	c.lw	a5,20(a4)
	c.lw	a5,12(a2)
	c.jalr	a4
	c.li	a0,00000000

l230967FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23096804:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

l2309680C:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.j	00000000230967FC

;; mbedtls_md_process: 23096814
;;   Called from:
;;     2308DF06 (in mbedtls_ssl_read_record_layer)
mbedtls_md_process proc
	c.beqz	a0,000000002309682C

l23096816:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002309682C

l2309681A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,44(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2309682C:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_get_size: 23096834
;;   Called from:
;;     23087AA4 (in mbedtls_pk_verify)
;;     23087B08 (in mbedtls_pk_sign)
;;     2308863C (in mgf_mask)
;;     23088CC0 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088FB8 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     230892FE (in mbedtls_rsa_rsassa_pss_sign)
;;     23089310 (in mbedtls_rsa_rsassa_pss_sign)
;;     230894AC (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230896E4 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230896F4 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23089932 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2308ADE0 (in tls_prf_sha256)
;;     2308B218 (in mbedtls_ssl_derive_keys)
;;     2308F6FA (in x509_crt_verify_top.isra.7)
;;     2308F904 (in x509_crt_verify_child)
mbedtls_md_get_size proc
	c.beqz	a0,000000002309683C

l23096836:
	lbu	a0,a0,+00000008
	c.jr	ra

l2309683C:
	c.li	a0,00000000
	c.jr	ra

;; md5_process_wrap: 23096840
md5_process_wrap proc
	jal	zero,00000000230970A4

;; md5_clone_wrap: 23096844
md5_clone_wrap proc
	jal	zero,0000000023097060

;; md5_ctx_free: 23096848
md5_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002309704C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; md5_ctx_alloc: 23096860
md5_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000058
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,0000000023096878

l23096874:
	jal	ra,0000000023097042

l23096878:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; md5_finish_wrap: 23096882
md5_finish_wrap proc
	jal	zero,0000000023097D48

;; md5_update_wrap: 23096886
md5_update_wrap proc
	jal	zero,0000000023097D40

;; md5_starts_wrap: 2309688A
md5_starts_wrap proc
	jal	zero,0000000023097072

;; sha1_process_wrap: 2309688E
sha1_process_wrap proc
	jal	zero,0000000023097EC6

;; sha1_clone_wrap: 23096892
sha1_clone_wrap proc
	jal	zero,0000000023097E78

;; sha1_ctx_free: 23096896
sha1_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023097E64
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; sha1_ctx_alloc: 230968AE
sha1_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+0000005C
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,00000000230968C6

l230968C2:
	jal	ra,0000000023097E5A

l230968C6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sha1_finish_wrap: 230968D0
sha1_finish_wrap proc
	jal	zero,0000000023099568

;; sha1_update_wrap: 230968D4
sha1_update_wrap proc
	jal	zero,0000000023099560

;; sha1_starts_wrap: 230968D8
sha1_starts_wrap proc
	jal	zero,0000000023097E8A

;; sha224_process_wrap: 230968DC
sha224_process_wrap proc
	jal	zero,0000000023089B44

;; sha224_clone_wrap: 230968E0
sha224_clone_wrap proc
	jal	zero,0000000023089A84

;; sha224_ctx_free: 230968E4
sha224_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023089A70
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; sha224_ctx_alloc: 230968FC
sha224_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000074
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,0000000023096914

l23096910:
	jal	ra,0000000023089A66

l23096914:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sha224_wrap: 2309691E
sha224_wrap proc
	c.li	a3,00000001
	jal	zero,000000002308A9FE

;; sha256_wrap: 23096924
sha256_wrap proc
	c.li	a3,00000000
	jal	zero,000000002308A9FE

;; sha224_finish_wrap: 2309692A
sha224_finish_wrap proc
	jal	zero,000000002308A872

;; sha224_update_wrap: 2309692E
sha224_update_wrap proc
	jal	zero,000000002308A86A

;; sha224_starts_wrap: 23096932
sha224_starts_wrap proc
	c.li	a1,00000001
	jal	zero,0000000023089A96

;; sha256_starts_wrap: 23096938
sha256_starts_wrap proc
	c.li	a1,00000000
	jal	zero,0000000023089A96

;; oid_sig_alg_from_asn1.part.0: 2309693E
;;   Called from:
;;     23096A7E (in mbedtls_oid_get_sig_alg_desc)
;;     23096AAE (in mbedtls_oid_get_sig_alg)
oid_sig_alg_from_asn1.part.0 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,s0,-00000190

l23096950:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096958

l23096954:
	c.li	s0,00000000
	c.j	000000002309696C

l23096958:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023096964

l23096960:
	c.addi	s0,00000014
	c.j	0000000023096950

l23096964:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096960

l2309696C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_oid_get_attr_short_name: 23096978
;;   Called from:
;;     2309D23A (in mbedtls_x509_dn_gets)
mbedtls_oid_get_attr_short_name proc
	c.bnez	a0,00000000230969AE

l2309697A:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096980:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,000000002309699E

l23096988:
	c.addi	s0,00000014

l2309698A:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096980

l2309698E:
	addi	a0,zero,-0000002E

l23096992:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2309699E:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096988

l230969A6:
	c.lw	s0,16(a5)
	sw	a5,s2,+00000000
	c.j	0000000023096992

l230969AE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-0000008C
	c.j	000000002309698A

;; mbedtls_oid_get_x509_ext_type: 230969C6
;;   Called from:
;;     2309011E (in mbedtls_x509_crt_parse_der)
mbedtls_oid_get_x509_ext_type proc
	c.bnez	a0,00000000230969FC

l230969C8:
	addi	a0,zero,-0000002E
	c.jr	ra

l230969CE:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,00000000230969EC

l230969D6:
	c.addi	s0,00000014

l230969D8:
	c.lw	s0,0(a0)
	c.bnez	a0,00000000230969CE

l230969DC:
	addi	a0,zero,-0000002E

l230969E0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230969EC:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230969D6

l230969F4:
	c.lw	s0,16(a5)
	sw	a5,s2,+00000000
	c.j	00000000230969E0

l230969FC:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-00000104
	c.j	00000000230969D8

;; mbedtls_oid_get_extended_key_usage: 23096A14
;;   Called from:
;;     2308F4C8 (in mbedtls_x509_crt_info)
mbedtls_oid_get_extended_key_usage proc
	c.bnez	a0,0000000023096A4A

l23096A16:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096A1C:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023096A3A

l23096A24:
	c.addi	s0,00000010

l23096A26:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096A1C

l23096A2A:
	addi	a0,zero,-0000002E

l23096A2E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23096A3A:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096A24

l23096A42:
	c.lw	s0,12(a5)
	sw	a5,s2,+00000000
	c.j	0000000023096A2E

l23096A4A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-000002B4
	c.j	0000000023096A26

;; mbedtls_oid_get_sig_alg_desc: 23096A62
;;   Called from:
;;     2309D3C0 (in mbedtls_x509_sig_alg_gets)
mbedtls_oid_get_sig_alg_desc proc
	c.bnez	a0,0000000023096A76

l23096A64:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096A6A:
	addi	a0,zero,-0000002E

l23096A6E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23096A76:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002309693E
	c.beqz	a0,0000000023096A6A

l23096A84:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.sw	s0,0(a5)
	c.j	0000000023096A6E

;; mbedtls_oid_get_sig_alg: 23096A8C
;;   Called from:
;;     2309D0CE (in mbedtls_x509_get_sig_alg)
mbedtls_oid_get_sig_alg proc
	c.bnez	a0,0000000023096AA2

l23096A8E:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096A94:
	addi	a0,zero,-0000002E

l23096A98:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23096AA2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.mv	s1,a1
	jal	ra,000000002309693E
	c.beqz	a0,0000000023096A94

l23096AB4:
	lbu	a5,a0,+00000010
	sb	a5,s1,+00000000
	lbu	a5,a0,+00000011
	c.li	a0,00000000
	sb	a5,s0,+00000000
	c.j	0000000023096A98

;; mbedtls_oid_get_pk_alg: 23096AC8
;;   Called from:
;;     23088008 (in pk_get_pk_alg)
mbedtls_oid_get_pk_alg proc
	c.bnez	a0,0000000023096B00

l23096ACA:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096AD0:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023096AEE

l23096AD8:
	c.addi	s0,00000014

l23096ADA:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096AD0

l23096ADE:
	addi	a0,zero,-0000002E

l23096AE2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23096AEE:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096AD8

l23096AF6:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023096AE2

l23096B00:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-000001E0
	c.j	0000000023096ADA

;; mbedtls_oid_get_ec_grp: 23096B18
;;   Called from:
;;     23087CE6 (in pk_use_ecparams)
mbedtls_oid_get_ec_grp proc
	c.bnez	a0,0000000023096B50

l23096B1A:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096B20:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023096B3E

l23096B28:
	c.addi	s0,00000014

l23096B2A:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096B20

l23096B2E:
	addi	a0,zero,-0000002E

l23096B32:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23096B3E:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096B28

l23096B46:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023096B32

l23096B50:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-00000304
	c.j	0000000023096B2A

;; mbedtls_oid_get_md_alg: 23096B68
;;   Called from:
;;     2308998C (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
mbedtls_oid_get_md_alg proc
	c.bnez	a0,0000000023096BA0

l23096B6A:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096B70:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023096B8E

l23096B78:
	c.addi	s0,00000014

l23096B7A:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023096B70

l23096B7E:
	addi	a0,zero,-0000002E

l23096B82:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23096B8E:
	c.lw	s1,8(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096B78

l23096B96:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023096B82

l23096BA0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230C9
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,-00000244
	c.j	0000000023096B7A

;; mbedtls_oid_get_oid_by_md: 23096BB8
;;   Called from:
;;     230894A0 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
mbedtls_oid_get_oid_by_md proc
	lui	a5,000230C9
	addi	a5,a5,-00000244

l23096BC0:
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023096BCA

l23096BC4:
	addi	a0,zero,-0000002E
	c.jr	ra

l23096BCA:
	lbu	a3,a5,+00000010
	bne	a3,a0,0000000023096BDC

l23096BD2:
	c.sw	a1,0(a4)
	c.lw	a5,4(a5)
	c.li	a0,00000000
	c.sw	a2,0(a5)
	c.jr	ra

l23096BDC:
	c.addi	a5,00000014
	c.j	0000000023096BC0

;; pem_aes_decrypt: 23096BE0
;;   Called from:
;;     23096F9E (in mbedtls_pem_read_buffer)
pem_aes_decrypt proc
	c.addi16sp	FFFFFE40
	sw	s2,sp,+000001B0
	c.mv	s2,a0
	c.addi4spn	a0,00000088
	sw	ra,sp,+000001BC
	sw	s0,sp,+000001B8
	sw	s1,sp,+000001B4
	sw	s3,sp,+000001AC
	c.mv	s1,a1
	c.mv	s3,a4
	sw	s4,sp,+000001A8
	sw	s5,sp,+000001A4
	c.mv	s4,a5
	c.mv	s5,a2
	sw	s6,sp,+000001A0
	c.mv	s6,a3
	jal	ra,00000000230907BE
	c.addi4spn	a0,00000030
	c.jal	0000000023097042
	c.addi4spn	a0,00000030
	c.jal	0000000023097072
	c.mv	a2,s4
	c.mv	a1,s3
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D40
	c.li	a2,00000008
	c.mv	a1,s2
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D40
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D48
	c.addi4spn	s0,00000010
	c.li	a5,00000010
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s0
	bne	s1,a5,0000000023096CA8

l23096C46:
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000030
	c.jal	000000002309704C
	c.mv	a5,sp

l23096C50:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023096C50

l23096C5A:
	slli	a2,s1,00000003
	c.mv	a1,s0
	c.addi4spn	a0,00000088
	jal	ra,0000000023090A6C
	c.mv	a5,s5
	c.mv	a4,s5
	c.mv	a3,s2
	c.mv	a2,s6
	c.li	a1,00000000
	c.addi4spn	a0,00000088
	jal	ra,0000000023091434
	c.addi4spn	a0,00000088
	jal	ra,00000000230907C8
	c.li	a5,FFFFFFFF

l23096C7E:
	c.addi	s1,FFFFFFFF
	bne	s1,a5,0000000023096CFE

l23096C84:
	lw	ra,sp,+000001BC
	lw	s0,sp,+000001B8
	lw	s1,sp,+000001B4
	lw	s2,sp,+000001B0
	lw	s3,sp,+000001AC
	lw	s4,sp,+000001A8
	lw	s5,sp,+000001A4
	lw	s6,sp,+000001A0
	c.addi16sp	000001C0
	c.jr	ra

l23096CA8:
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000030
	c.jal	0000000023097072
	c.li	a2,00000010
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D40
	c.mv	a2,s4
	c.mv	a1,s3
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D40
	c.li	a2,00000008
	c.mv	a1,s2
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D40
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023097D48
	addi	a5,zero,+00000020
	c.li	a2,00000010
	beq	s1,a5,0000000023096CE4

l23096CE0:
	addi	a2,s1,-00000010

l23096CE4:
	c.mv	a1,sp
	c.addi4spn	a0,00000020
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000030
	c.jal	000000002309704C
	c.mv	a5,sp

l23096CF2:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023096CF2

l23096CFC:
	c.j	0000000023096C5A

l23096CFE:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023096C7E

;; mbedtls_pem_init: 23096D06
;;   Called from:
;;     230882B8 (in mbedtls_pk_parse_key)
;;     23090404 (in mbedtls_x509_crt_parse)
mbedtls_pem_init proc
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_pem_read_buffer: 23096D0E
;;   Called from:
;;     23088352 (in mbedtls_pk_parse_key)
;;     230883F6 (in mbedtls_pk_parse_key)
;;     23088452 (in mbedtls_pk_parse_key)
;;     2309041A (in mbedtls_x509_crt_parse)
mbedtls_pem_read_buffer proc
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
	beq	a0,zero,0000000023096FFE

l23096D28:
	c.mv	s4,a0
	c.mv	a0,a3
	c.mv	s8,a1
	c.mv	s7,a6
	c.mv	s5,a5
	c.mv	s3,a4
	c.mv	s2,a3
	c.mv	s6,a2
	jal	ra,00000000230A4978
	c.mv	s0,a0
	c.bnez	a0,0000000023096D60

l23096D40:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000080

l23096D46:
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

l23096D60:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,00000000230A4978
	c.mv	s1,a0
	c.beqz	a0,0000000023096D40

l23096D6C:
	bgeu	s0,a0,0000000023096D40

l23096D70:
	c.mv	a0,s8
	jal	ra,00000000230A4220
	c.add	s0,a0
	lbu	a4,s0,+00000000
	addi	a5,zero,+00000020
	bne	a4,a5,0000000023096D86

l23096D84:
	c.addi	s0,00000001

l23096D86:
	lbu	a4,s0,+00000000
	c.li	a5,0000000D
	bne	a4,a5,0000000023096D92

l23096D90:
	c.addi	s0,00000001

l23096D92:
	lbu	a4,s0,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023096D40

l23096D9C:
	c.mv	a0,s6
	jal	ra,00000000230A4220
	add	a2,s1,a0
	lbu	a4,a2,+00000000
	addi	a5,zero,+00000020
	addi	s8,s0,+00000001
	bne	a4,a5,0000000023096DB8

l23096DB6:
	c.addi	a2,00000001

l23096DB8:
	lbu	a4,a2,+00000000
	c.li	a5,0000000D
	bne	a4,a5,0000000023096DC4

l23096DC2:
	c.addi	a2,00000001

l23096DC4:
	lbu	a4,a2,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023096DD0

l23096DCE:
	c.addi	a2,00000001

l23096DD0:
	sub	a2,a2,s2
	sw	a2,s7,+00000000
	sub	a5,s1,s8
	c.li	a4,00000015
	bge	a4,a5,0000000023096F70

l23096DE2:
	lui	a1,000230CA
	c.li	a2,00000016
	addi	a1,a1,-00000758
	c.mv	a0,s8
	jal	ra,00000000230A37A4
	bne	a0,zero,0000000023096F70

l23096DF6:
	lbu	a5,s0,+00000017
	c.li	a4,0000000D
	addi	s2,s0,+00000017
	bne	a5,a4,0000000023096E0C

l23096E04:
	lbu	a5,s0,+00000018
	addi	s2,s0,+00000018

l23096E0C:
	c.li	a4,0000000A
	beq	a5,a4,0000000023096E1A

l23096E12:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000100
	c.j	0000000023096D46

l23096E1A:
	addi	s0,s2,+00000001
	sub	s6,s1,s0
	c.li	a5,0000000D
	blt	a5,s6,0000000023096E30

l23096E28:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000280
	c.j	0000000023096D46

l23096E30:
	lui	a1,000230CA
	c.li	a2,0000000E
	addi	a1,a1,-00000740
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096E28

l23096E42:
	c.li	a5,00000015
	bge	a5,s6,0000000023096E28

l23096E48:
	lui	a1,000230CA
	c.li	a2,00000016
	addi	a1,a1,-00000730
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.li	s6,00000005
	c.beqz	a0,0000000023096E84

l23096E5C:
	lui	a1,000230CA
	c.li	a2,00000016
	addi	a1,a1,-00000718
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.li	s6,00000006
	c.beqz	a0,0000000023096E84

l23096E70:
	lui	a1,000230CA
	c.li	a2,00000016
	addi	a1,a1,-00000700
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023096E28

l23096E82:
	c.li	s6,00000007

l23096E84:
	addi	a5,s2,+00000017
	sub	a5,s1,a5
	c.li	a4,0000001F
	blt	a4,a5,0000000023096E9A

l23096E92:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000200
	c.j	0000000023096D46

l23096E9A:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	c.li	a5,00000000
	c.li	a6,00000009
	c.li	a2,00000005
	addi	a1,zero,+00000020

l23096EAE:
	add	a4,s2,a5
	lbu	a4,a4,+00000017
	addi	a3,a4,-00000030
	andi	a0,a3,+000000FF
	bgeu	a6,a0,0000000023096ED2

l23096EC2:
	addi	a3,a4,-00000041
	andi	a3,a3,+000000FF
	bltu	a2,a3,0000000023096F5E

l23096ECE:
	addi	a3,a4,-00000037

l23096ED2:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023096EDA

l23096ED8:
	c.slli	a3,04

l23096EDA:
	srli	a4,a5,00000001
	c.addi4spn	a0,00000010
	c.add	a4,a0
	lbu	a0,a4,+00000000
	c.addi	a5,00000001
	c.or	a3,a0
	sb	a3,a4,+00000000
	bne	a5,a1,0000000023096EAE

l23096EF2:
	lbu	a4,s2,+00000037
	c.li	a5,0000000D
	addi	a3,s2,+00000038
	beq	a4,a5,0000000023096F04

l23096F00:
	addi	a3,s2,+00000037

l23096F04:
	lbu	a4,a3,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023096E12

l23096F0E:
	addi	s8,a3,+00000001
	c.li	s7,00000001

l23096F14:
	bgeu	s8,s1,0000000023096E12

l23096F18:
	sub	s1,s1,s8
	c.mv	a4,s1
	c.mv	a3,s8
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002309D43A
	addi	a5,zero,-0000002C
	beq	a0,a5,0000000023097006

l23096F32:
	c.lwsp	a2,00000064
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.mv	s2,a0
	c.beqz	a0,000000002309700E

l23096F3E:
	c.lwsp	a2,00000064
	c.mv	a4,s1
	c.mv	a3,s8
	c.addi4spn	a2,0000000C
	jal	ra,000000002309D43A
	c.mv	s0,a0
	c.beqz	a0,0000000023096F76

l23096F4E:
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.lui	a5,FFFFF000
	addi	a5,a5,-00000100
	c.add	s0,a5
	c.j	0000000023096D46

l23096F5E:
	addi	a3,a4,-00000061
	andi	a3,a3,+000000FF
	bltu	a2,a3,0000000023096E92

l23096F6A:
	addi	a3,a4,-00000057
	c.j	0000000023096ED2

l23096F70:
	c.li	s6,00000000
	c.li	s7,00000000
	c.j	0000000023096F14

l23096F76:
	beq	s7,zero,0000000023096FF2

l23096F7A:
	bne	s3,zero,0000000023096F8C

l23096F7E:
	c.mv	a0,s2
	c.lui	s0,FFFFF000
	jal	ra,0000000023064972
	addi	s0,s0,-00000300
	c.j	0000000023096D46

l23096F8C:
	c.li	a5,00000005
	c.lwsp	a2,000000A4
	bne	s6,a5,0000000023096FD0

l23096F94:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	c.li	a1,00000010

l23096F9C:
	c.addi4spn	a0,00000010
	jal	ra,0000000023096BE0

l23096FA2:
	c.lwsp	a2,000000C4
	c.li	a5,00000002
	bgeu	a5,a4,0000000023096FC2

l23096FAA:
	lbu	a4,s2,+00000000
	addi	a5,zero,+00000030
	bne	a4,a5,0000000023096FC2

l23096FB6:
	lbu	a4,s2,+00000001
	addi	a5,zero,+00000083
	bgeu	a5,a4,0000000023096FF2

l23096FC2:
	c.mv	a0,s2
	c.lui	s0,FFFFF000
	jal	ra,0000000023064972
	addi	s0,s0,-00000380
	c.j	0000000023096D46

l23096FD0:
	c.li	a5,00000006
	bne	s6,a5,0000000023096FE0

l23096FD6:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	c.li	a1,00000018
	c.j	0000000023096F9C

l23096FE0:
	c.li	a5,00000007
	bne	s6,a5,0000000023096FA2

l23096FE6:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	addi	a1,zero,+00000020
	c.j	0000000023096F9C

l23096FF2:
	c.lwsp	a2,000000E4
	sw	s2,s4,+00000000
	sw	a5,s4,+00000004
	c.j	0000000023096D46

l23096FFE:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000480
	c.j	0000000023096D46

l23097006:
	c.lui	s0,FFFFF000
	addi	s0,s0,-0000012C
	c.j	0000000023096D46

l2309700E:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000180
	c.j	0000000023096D46

;; mbedtls_pem_free: 23097016
;;   Called from:
;;     230883A4 (in mbedtls_pk_parse_key)
;;     23090438 (in mbedtls_x509_crt_parse)
;;     2309044E (in mbedtls_x509_crt_parse)
mbedtls_pem_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023064972
	c.lw	s0,8(a0)
	jal	ra,0000000023064972
	addi	a5,s0,+0000000C

l2309702E:
	bne	s0,a5,000000002309703A

l23097032:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2309703A:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	000000002309702E

;; mbedtls_md5_init: 23097042
;;   Called from:
;;     23096874 (in md5_ctx_alloc)
;;     23096C16 (in pem_aes_decrypt)
;;     23097E2C (in mbedtls_md5)
mbedtls_md5_init proc
	addi	a2,zero,+00000058
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_md5_free: 2309704C
;;   Called from:
;;     23096850 (in md5_ctx_free)
;;     23096C4C (in pem_aes_decrypt)
;;     23096CEE (in pem_aes_decrypt)
;;     23097E4C (in mbedtls_md5)
mbedtls_md5_free proc
	addi	a5,a0,+00000058
	c.bnez	a0,000000002309705A

l23097052:
	c.jr	ra

l23097054:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l2309705A:
	bne	a0,a5,0000000023097054

l2309705E:
	c.j	0000000023097052

;; mbedtls_md5_clone: 23097060
;;   Called from:
;;     23096844 (in md5_clone_wrap)
mbedtls_md5_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000058
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_md5_starts: 23097072
;;   Called from:
;;     2309688A (in md5_starts_wrap)
;;     23096C1A (in pem_aes_decrypt)
;;     23096CAE (in pem_aes_decrypt)
;;     23097E32 (in mbedtls_md5)
mbedtls_md5_starts proc
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,8(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,12(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,16(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.sw	a0,20(a5)
	c.jr	ra

;; mbedtls_md5_process: 230970A4
;;   Called from:
;;     23096840 (in md5_process_wrap)
;;     23097CD4 (in mbedtls_md5_update.part.0)
;;     23097CEA (in mbedtls_md5_update.part.0)
mbedtls_md5_process proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s6,00000088
	c.swsp	s7,00000008
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	c.swsp	s0,00000094
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s8,00000084
	lbu	a5,a1,+00000001
	lbu	s8,a1,+00000000
	lbu	s3,a1,+00000004
	c.slli	a5,08
	or	a5,a5,s8
	lbu	s8,a1,+00000002
	lbu	t0,a1,+00000008
	lbu	s4,a1,+0000000C
	c.slli	s8,10
	or	a5,s8,a5
	lbu	s8,a1,+00000003
	lbu	a4,a1,+00000011
	lbu	s0,a1,+00000010
	c.slli	s8,18
	or	s8,s8,a5
	lbu	a5,a1,+00000005
	c.slli	a4,08
	c.or	a4,s0
	c.slli	a5,08
	or	a5,a5,s3
	lbu	s3,a1,+00000006
	lbu	s0,a1,+00000012
	lui	a7,000D76AA
	c.slli	s3,10
	or	a5,s3,a5
	lbu	s3,a1,+00000007
	c.slli	s0,10
	c.or	a4,s0
	c.slli	s3,18
	or	s3,s3,a5
	lbu	a5,a1,+00000009
	lbu	s0,a1,+00000013
	addi	a7,a7,+00000478
	c.slli	a5,08
	or	a5,a5,t0
	lbu	t0,a1,+0000000A
	c.slli	s0,18
	c.or	s0,a4
	c.slli	t0,10
	or	a5,t0,a5
	lbu	t0,a1,+0000000B
	lui	t6,000E8C7B
	addi	t6,t6,+00000756
	c.slli	t0,18
	or	t0,t0,a5
	lbu	a5,a1,+0000000D
	lui	t3,00024207
	addi	t3,t3,+000000DB
	c.slli	a5,08
	or	a5,a5,s4
	lbu	s4,a1,+0000000E
	lui	s11,0008D2A5
	addi	s11,s11,-00000376
	c.slli	s4,10
	or	a5,s4,a5
	lbu	s4,a1,+0000000F
	lbu	s5,a1,+00000014
	lbu	a3,a1,+00000018
	c.slli	s4,18
	or	s4,s4,a5
	lbu	a5,a1,+00000015
	lbu	s7,a1,+0000001C
	lbu	a4,a1,+00000025
	c.slli	a5,08
	or	a5,a5,s5
	lbu	s5,a1,+00000016
	lbu	t4,a1,+00000024
	lbu	s2,a1,+00000020
	c.slli	s5,10
	or	a5,s5,a5
	lbu	s5,a1,+00000017
	c.slli	a4,08
	or	a4,a4,t4
	c.slli	s5,18
	or	s5,s5,a5
	lbu	a5,a1,+00000019
	lbu	t4,a1,+00000026
	lbu	a2,a1,+0000002D
	c.slli	a5,08
	c.or	a5,a3
	lbu	a3,a1,+0000001A
	c.slli	t4,10
	or	a4,t4,a4
	c.slli	a3,10
	c.or	a5,a3
	lbu	a3,a1,+0000001B
	lbu	t4,a1,+00000027
	lbu	t2,a1,+0000002C
	c.slli	a3,18
	c.or	a3,a5
	lbu	a5,a1,+0000001D
	c.slli	t4,18
	or	t4,t4,a4
	c.slli	a5,08
	or	a5,a5,s7
	lbu	s7,a1,+0000001E
	lbu	a4,a1,+00000029
	c.slli	a2,08
	c.slli	s7,10
	or	a5,s7,a5
	lbu	s7,a1,+0000001F
	or	a2,a2,t2
	c.slli	a4,08
	c.slli	s7,18
	or	s7,s7,a5
	lbu	a5,a1,+00000021
	lbu	t2,a1,+0000002E
	c.slli	a5,08
	or	a5,a5,s2
	lbu	s2,a1,+00000022
	c.slli	t2,10
	or	a2,t2,a2
	c.slli	s2,10
	or	a5,s2,a5
	lbu	s2,a1,+00000023
	lbu	t2,a1,+0000002F
	c.slli	s2,18
	or	s2,s2,a5
	lbu	a5,a1,+00000028
	c.slli	t2,18
	or	t2,t2,a2
	c.or	a4,a5
	lbu	a5,a1,+0000002A
	lbu	a2,a1,+00000031
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+0000002B
	c.slli	a2,08
	c.slli	a5,18
	c.or	a5,a4
	lbu	a4,a1,+00000030
	c.or	a2,a4
	lbu	a4,a1,+00000032
	c.slli	a4,10
	c.or	a2,a4
	lbu	a4,a1,+00000033
	lbu	s1,a1,+00000034
	lbu	s6,a1,+00000038
	c.slli	a4,18
	c.or	a4,a2
	lbu	a2,a1,+00000035
	lbu	s9,a1,+0000003C
	lw	t5,a0,+00000008
	c.slli	a2,08
	c.or	a2,s1
	lbu	s1,a1,+00000036
	lw	a6,a0,+00000014
	c.add	a7,t5
	c.slli	s1,10
	c.or	a2,s1
	lbu	s1,a1,+00000037
	add	t1,a7,s8
	c.add	t6,a6
	c.slli	s1,18
	c.or	s1,a2
	lbu	a2,a1,+00000039
	c.add	s11,a4
	c.slli	a2,08
	or	a2,a2,s6
	lbu	s6,a1,+0000003A
	c.slli	s6,10
	or	a2,s6,a2
	lbu	s6,a1,+0000003B
	c.slli	s6,18
	or	s6,s6,a2
	lbu	a2,a1,+0000003D
	c.slli	a2,08
	or	a2,a2,s9
	lbu	s9,a1,+0000003E
	c.slli	s9,10
	or	a2,s9,a2
	lbu	s9,a1,+0000003F
	c.lw	a0,16(a1)
	c.slli	s9,18
	or	s9,s9,a2
	c.lw	a0,12(a2)
	xor	a7,a1,a6
	c.add	t3,a1
	and	a7,a7,a2
	xor	a7,a7,a6
	c.add	a7,t1
	slli	t1,a7,00000007
	srli	a7,a7,00000019
	or	a7,a7,t1
	c.add	a7,a2
	add	t1,t6,s3
	xor	t6,a2,a1
	and	t6,t6,a7
	xor	t6,t6,a1
	c.add	t6,t1
	slli	t1,t6,0000000C
	srli	t6,t6,00000014
	or	t6,t6,t1
	c.add	t6,a7
	add	t1,t3,t0
	xor	t3,a2,a7
	and	t3,t3,t6
	xor	t3,t3,a2
	c.add	t3,t1
	srli	t1,t3,0000000F
	c.slli	t3,11
	or	t3,t3,t1
	lui	t1,000C1BDD
	addi	t1,t1,-00000112
	c.add	t1,a2
	c.add	t3,t6
	add	s10,t1,s4
	xor	t1,a7,t6
	and	t1,t1,t3
	xor	t1,t1,a7
	c.add	t1,s10
	srli	s10,t1,0000000A
	c.slli	t1,16
	or	t1,t1,s10
	lui	s10,000F57C1
	addi	s10,s10,-00000051
	c.add	s10,s0
	c.add	t1,t3
	c.add	s10,a7
	xor	a7,t6,t3
	and	a7,a7,t1
	xor	a7,a7,t6
	c.add	a7,s10
	slli	s10,a7,00000007
	srli	a7,a7,00000019
	or	a7,a7,s10
	lui	s10,0004787C
	addi	s10,s10,+0000062A
	c.add	s10,s5
	c.add	a7,t1
	c.add	s10,t6
	xor	t6,t3,t1
	and	t6,t6,a7
	xor	t6,t6,t3
	c.add	t6,s10
	slli	s10,t6,0000000C
	srli	t6,t6,00000014
	or	t6,t6,s10
	lui	s10,000A8304
	addi	s10,s10,+00000613
	c.add	s10,a3
	c.add	t6,a7
	c.add	s10,t3
	xor	t3,t1,a7
	and	t3,t3,t6
	xor	t3,t3,t1
	c.add	t3,s10
	srli	s10,t3,0000000F
	c.slli	t3,11
	or	t3,t3,s10
	lui	s10,000FD469
	addi	s10,s10,+00000501
	c.add	s10,s7
	c.add	t3,t6
	c.add	s10,t1
	xor	t1,a7,t6
	and	t1,t1,t3
	xor	t1,t1,a7
	c.add	t1,s10
	srli	s10,t1,0000000A
	c.slli	t1,16
	or	t1,t1,s10
	lui	s10,0006980A
	addi	s10,s10,-00000728
	c.add	s10,s2
	c.add	t1,t3
	c.add	s10,a7
	xor	a7,t6,t3
	and	a7,a7,t1
	xor	a7,a7,t6
	c.add	a7,s10
	slli	s10,a7,00000007
	srli	a7,a7,00000019
	or	a7,a7,s10
	lui	s10,0008B44F
	addi	s10,s10,+000007AF
	c.add	s10,t4
	c.add	a7,t1
	c.add	s10,t6
	xor	t6,t3,t1
	and	t6,t6,a7
	xor	t6,t6,t3
	c.add	t6,s10
	slli	s10,t6,0000000C
	srli	t6,t6,00000014
	or	t6,t6,s10
	c.lui	s10,FFFF6000
	addi	s10,s10,-0000044F
	c.add	s10,a5
	c.add	t6,a7
	c.add	s10,t3
	xor	t3,t1,a7
	and	t3,t3,t6
	xor	t3,t3,t1
	c.add	t3,s10
	srli	s10,t3,0000000F
	c.slli	t3,11
	or	t3,t3,s10
	lui	s10,000895CD
	addi	s10,s10,+000007BE
	c.add	s10,t2
	c.add	t3,t6
	c.add	s10,t1
	xor	t1,a7,t6
	and	t1,t1,t3
	xor	t1,t1,a7
	c.add	t1,s10
	srli	s10,t1,0000000A
	c.slli	t1,16
	or	t1,t1,s10
	lui	s10,0006B901
	addi	s10,s10,+00000122
	c.add	s10,a4
	c.add	t1,t3
	c.add	s10,a7
	xor	a7,t6,t3
	and	a7,a7,t1
	xor	a7,a7,t6
	c.add	a7,s10
	slli	s10,a7,00000007
	srli	a7,a7,00000019
	or	a7,a7,s10
	lui	s10,000FD987
	addi	s10,s10,+00000193
	c.add	s10,s1
	c.add	a7,t1
	c.add	s10,t6
	xor	t6,t3,t1
	and	t6,t6,a7
	xor	t6,t6,t3
	c.add	t6,s10
	slli	s10,t6,0000000C
	srli	t6,t6,00000014
	or	t6,t6,s10
	lui	s10,000A6794
	addi	s10,s10,+0000038E
	c.add	s10,s6
	c.add	t6,a7
	c.add	s10,t3
	xor	t3,t1,a7
	and	t3,t3,t6
	xor	t3,t3,t1
	c.add	t3,s10
	srli	s10,t3,0000000F
	c.slli	t3,11
	or	t3,t3,s10
	lui	s10,00049B41
	addi	s10,s10,-000007DF
	c.add	s10,s9
	c.add	t3,t6
	c.add	s10,t1
	xor	t1,a7,t6
	and	t1,t1,t3
	xor	t1,t1,a7
	c.add	t1,s10
	srli	s10,t1,0000000A
	c.slli	t1,16
	or	t1,t1,s10
	lui	s10,000F61E2
	addi	s10,s10,+00000562
	c.add	t1,t3
	c.add	s10,s3
	c.add	s10,a7
	xor	a7,t3,t1
	and	a7,a7,t6
	xor	a7,a7,t3
	c.add	a7,s10
	slli	s10,a7,00000005
	srli	a7,a7,0000001B
	or	a7,a7,s10
	lui	s10,000C040B
	addi	s10,s10,+00000340
	c.add	a7,t1
	c.add	s10,a3
	c.add	s10,t6
	xor	t6,t1,a7
	and	t6,t6,t3
	xor	t6,t6,t1
	c.add	t6,s10
	slli	s10,t6,00000009
	srli	t6,t6,00000017
	or	t6,t6,s10
	lui	s10,000265E6
	addi	s10,s10,-000005AF
	c.add	t6,a7
	c.add	s10,t2
	c.add	s10,t3
	xor	t3,a7,t6
	and	t3,t3,t1
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s10,t3,0000000E
	srli	t3,t3,00000012
	or	t3,t3,s10
	lui	s10,000E9B6C
	addi	s10,s10,+000007AA
	c.add	t3,t6
	c.add	s10,s8
	c.add	s10,t1
	xor	t1,t6,t3
	and	t1,t1,a7
	xor	t1,t1,t6
	c.add	t1,s10
	srli	s10,t1,0000000C
	c.slli	t1,14
	or	t1,t1,s10
	lui	s10,000D62F1
	addi	s10,s10,+0000005D
	c.add	t1,t3
	c.add	s10,s5
	c.add	s10,a7
	xor	a7,t3,t1
	and	a7,a7,t6
	xor	a7,a7,t3
	c.add	a7,s10
	slli	s10,a7,00000005
	srli	a7,a7,0000001B
	or	a7,a7,s10
	lui	s10,00002441
	addi	s10,s10,+00000453
	c.add	a7,t1
	c.add	s10,a5
	c.add	s10,t6
	xor	t6,t1,a7
	and	t6,t6,t3
	xor	t6,t6,t1
	c.add	t6,s10
	slli	s10,t6,00000009
	srli	t6,t6,00000017
	or	t6,t6,s10
	lui	s10,000D8A1E
	addi	s10,s10,+00000681
	c.add	t6,a7
	c.add	s10,s9
	c.add	s10,t3
	xor	t3,a7,t6
	and	t3,t3,t1
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s10,t3,0000000E
	srli	t3,t3,00000012
	or	t3,t3,s10
	lui	s10,000E7D40
	addi	s10,s10,-00000438
	c.add	t3,t6
	c.add	s10,s0
	c.add	s10,t1
	xor	t1,t6,t3
	and	t1,t1,a7
	xor	t1,t1,t6
	c.add	t1,s10
	srli	s10,t1,0000000C
	c.slli	t1,14
	or	t1,t1,s10
	lui	s10,00021E1D
	addi	s10,s10,-0000021A
	c.add	t1,t3
	c.add	s10,t4
	c.add	s10,a7
	xor	a7,t3,t1
	and	a7,a7,t6
	xor	a7,a7,t3
	c.add	a7,s10
	slli	s10,a7,00000005
	srli	a7,a7,0000001B
	or	a7,a7,s10
	lui	s10,000C3370
	addi	s10,s10,+000007D6
	c.add	a7,t1
	c.add	s10,s6
	c.add	s10,t6
	xor	t6,t1,a7
	and	t6,t6,t3
	xor	t6,t6,t1
	c.add	t6,s10
	slli	s10,t6,00000009
	srli	t6,t6,00000017
	or	t6,t6,s10
	lui	s10,000F4D51
	addi	s10,s10,-00000279
	c.add	t6,a7
	c.add	s10,s4
	c.add	s10,t3
	xor	t3,a7,t6
	and	t3,t3,t1
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s10,t3,0000000E
	srli	t3,t3,00000012
	or	t3,t3,s10
	lui	s10,000455A1
	addi	s10,s10,+000004ED
	c.add	t3,t6
	c.add	s10,s2
	c.add	s10,t1
	xor	t1,t6,t3
	and	t1,t1,a7
	xor	t1,t1,t6
	c.add	t1,s10
	srli	s10,t1,0000000C
	c.slli	t1,14
	or	t1,t1,s10
	lui	s10,000A9E3F
	addi	s10,s10,-000006FB
	c.add	t1,t3
	c.add	s10,s1
	c.add	s10,a7
	xor	a7,t3,t1
	and	a7,a7,t6
	xor	a7,a7,t3
	c.add	a7,s10
	slli	s10,a7,00000005
	srli	a7,a7,0000001B
	or	a7,a7,s10
	lui	s10,000FCEFA
	addi	s10,s10,+000003F8
	c.add	a7,t1
	c.add	s10,t0
	c.add	s10,t6
	xor	t6,t1,a7
	and	t6,t6,t3
	xor	t6,t6,t1
	c.add	t6,s10
	slli	s10,t6,00000009
	srli	t6,t6,00000017
	or	t6,t6,s10
	lui	s10,000676F0
	addi	s10,s10,+000002D9
	c.add	t6,a7
	c.add	s10,s7
	c.add	s10,t3
	xor	t3,a7,t6
	and	t3,t3,t1
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s10,t3,0000000E
	srli	t3,t3,00000012
	or	t3,t3,s10
	c.add	t3,t6
	xor	s10,t6,t3
	c.add	s11,t1
	and	t1,s10,a7
	xor	t1,t1,t6
	c.add	t1,s11
	srli	s11,t1,0000000C
	c.slli	t1,14
	or	t1,t1,s11
	lui	s11,000FFFA4
	addi	s11,s11,-000006BE
	c.add	t1,t3
	c.add	s11,s5
	c.add	s11,a7
	xor	a7,s10,t1
	c.add	a7,s11
	slli	s10,a7,00000004
	srli	a7,a7,0000001C
	or	a7,a7,s10
	lui	s10,0008771F
	addi	s10,s10,+00000681
	c.add	s10,s2
	c.add	a7,t1
	c.add	t6,s10
	xor	s10,t3,t1
	xor	s10,s10,a7
	c.add	s10,t6
	slli	t6,s10,0000000B
	srli	s10,s10,00000015
	or	s10,s10,t6
	lui	t6,0006D9D6
	addi	t6,t6,+00000122
	c.add	t6,t2
	c.add	s10,a7
	c.add	t3,t6
	xor	t6,t1,a7
	xor	t6,t6,s10
	c.add	t6,t3
	slli	t3,t6,00000010
	srli	t6,t6,00000010
	or	t6,t6,t3
	lui	t3,000FDE54
	addi	t3,t3,-000007F4
	c.add	t3,s6
	c.add	t6,s10
	c.add	t1,t3
	xor	t3,a7,s10
	xor	t3,t3,t6
	c.add	t3,t1
	srli	t1,t3,00000009
	c.slli	t3,17
	or	t3,t3,t1
	lui	t1,000A4BEF
	addi	t1,t1,-000005BC
	c.add	t1,s3
	c.add	t3,t6
	c.add	t1,a7
	xor	a7,s10,t6
	xor	a7,a7,t3
	c.add	a7,t1
	slli	t1,a7,00000004
	srli	a7,a7,0000001C
	or	a7,a7,t1
	lui	t1,0004BDED
	addi	t1,t1,-00000057
	c.add	t1,s0
	c.add	a7,t3
	c.add	s10,t1
	xor	t1,t6,t3
	xor	t1,t1,a7
	c.add	t1,s10
	slli	s10,t1,0000000B
	srli	t1,t1,00000015
	or	t1,t1,s10
	lui	s10,000F6BB5
	addi	s10,s10,-000004A0
	c.add	s10,s7
	c.add	t1,a7
	c.add	s10,t6
	xor	t6,t3,a7
	xor	t6,t6,t1
	c.add	t6,s10
	slli	s10,t6,00000010
	srli	t6,t6,00000010
	or	t6,t6,s10
	lui	s10,000BEBFC
	addi	s10,s10,-00000390
	c.add	s10,a5
	c.add	t6,t1
	c.add	t3,s10
	xor	s10,a7,t1
	xor	s10,s10,t6
	c.add	s10,t3
	srli	t3,s10,00000009
	c.slli	s10,17
	or	s10,s10,t3
	lui	t3,000289B8
	addi	t3,t3,-0000013A
	c.add	t3,s1
	c.add	s10,t6
	c.add	a7,t3
	xor	t3,t1,t6
	xor	t3,t3,s10
	c.add	t3,a7
	slli	a7,t3,00000004
	srli	t3,t3,0000001C
	or	t3,t3,a7
	lui	a7,000EAA12
	addi	a7,a7,+000007FA
	c.add	a7,s8
	c.add	t3,s10
	c.add	a7,t1
	xor	t1,t6,s10
	xor	t1,t1,t3
	c.add	t1,a7
	slli	a7,t1,0000000B
	srli	t1,t1,00000015
	or	t1,t1,a7
	lui	a7,000D4EF3
	addi	a7,a7,+00000085
	c.add	a7,s4
	c.add	t1,t3
	c.add	a7,t6
	xor	t6,s10,t3
	xor	t6,t6,t1
	c.add	t6,a7
	slli	a7,t6,00000010
	srli	t6,t6,00000010
	or	t6,t6,a7
	lui	a7,00004882
	addi	a7,a7,-000002FB
	c.add	a7,a3
	c.add	t6,t1
	c.add	s10,a7
	xor	a7,t3,t1
	xor	a7,a7,t6
	c.add	a7,s10
	srli	s10,a7,00000009
	c.slli	a7,17
	or	a7,a7,s10
	lui	s10,000D9D4D
	addi	s10,s10,+00000039
	c.add	s10,t4
	c.add	a7,t6
	c.add	s10,t3
	xor	t3,t1,t6
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s10,t3,00000004
	srli	t3,t3,0000001C
	or	t3,t3,s10
	lui	s10,000E6DBA
	addi	s10,s10,-0000061B
	c.add	s10,a4
	c.add	t3,a7
	c.add	t1,s10
	xor	s10,t6,a7
	xor	s10,s10,t3
	c.add	s10,t1
	slli	t1,s10,0000000B
	srli	s10,s10,00000015
	or	s10,s10,t1
	lui	t1,0001FA28
	addi	t1,t1,-00000308
	c.add	t1,s9
	c.add	s10,t3
	c.add	t6,t1
	xor	t1,a7,t3
	xor	t1,t1,s10
	c.add	t1,t6
	slli	t6,t1,00000010
	srli	t1,t1,00000010
	or	t1,t1,t6
	lui	t6,000C4AC5
	addi	t6,t6,+00000665
	c.add	t6,t0
	c.add	t1,s10
	c.add	t6,a7
	xor	a7,t3,s10
	xor	a7,a7,t1
	c.add	a7,t6
	srli	t6,a7,00000009
	c.slli	a7,17
	or	a7,a7,t6
	lui	t6,000F4292
	addi	t6,t6,+00000244
	c.add	t6,s8
	c.add	a7,t1
	c.add	t3,t6
	xori	t6,s10,-00000001
	or	t6,t6,a7
	xor	t6,t6,t1
	c.add	t6,t3
	slli	t3,t6,00000006
	srli	t6,t6,0000001A
	or	t6,t6,t3
	lui	t3,000432B0
	addi	t3,t3,-00000069
	c.add	t3,s7
	c.add	t6,a7
	c.add	s10,t3
	xori	t3,t1,-00000001
	or	t3,t3,t6
	xor	t3,t3,a7
	c.add	t3,s10
	slli	s7,t3,0000000A
	srli	t3,t3,00000016
	or	t3,t3,s7
	lui	s7,000AB942
	addi	s7,s7,+000003A7
	c.add	s6,s7
	c.add	t3,t6
	c.add	s6,t1
	xori	t1,a7,-00000001
	or	t1,t1,t3
	xor	t1,t1,t6
	c.add	t1,s6
	slli	s6,t1,0000000F
	srli	t1,t1,00000011
	or	t1,t1,s6
	lui	s6,000FC93A
	addi	s6,s6,+00000039
	c.add	s5,s6
	c.add	t1,t3
	c.add	s5,a7
	xori	a7,t6,-00000001
	or	a7,a7,t1
	xor	a7,a7,t3
	c.add	a7,s5
	srli	s5,a7,0000000B
	c.slli	a7,15
	or	a7,a7,s5
	lui	s5,000655B6
	addi	s5,s5,-0000063D
	c.add	a4,s5
	c.add	a7,t1
	c.add	a4,t6
	xori	t6,t3,-00000001
	or	t6,t6,a7
	xor	t6,t6,t1
	c.add	t6,a4
	slli	a4,t6,00000006
	srli	t6,t6,0000001A
	or	t6,t6,a4
	lui	a4,0008F0CD
	addi	a4,a4,-0000036E
	c.add	a4,s4
	c.add	t6,a7
	c.add	t3,a4
	xori	a4,t1,-00000001
	or	a4,a4,t6
	xor	a4,a4,a7
	c.add	a4,t3
	slli	t3,a4,0000000A
	c.srli	a4,00000016
	or	a4,a4,t3
	lui	t3,000FFEFF
	addi	t3,t3,+0000047D
	c.add	a5,t3
	c.add	a4,t6
	c.add	a5,t1
	xori	t1,a7,-00000001
	or	t1,t1,a4
	xor	t1,t1,t6
	c.add	t1,a5
	slli	a5,t1,0000000F
	srli	t1,t1,00000011
	or	t1,t1,a5
	lui	a5,00085846
	addi	a5,a5,-0000022F
	c.add	s3,a5
	c.add	t1,a4
	c.add	s3,a7
	xori	a7,t6,-00000001
	or	a7,a7,t1
	xor	a7,a7,a4
	c.add	a7,s3
	srli	a5,a7,0000000B
	c.slli	a7,15
	or	a7,a7,a5
	lui	a5,0006FA88
	addi	a5,a5,-000001B1
	c.add	s2,a5
	c.add	a7,t1
	c.add	s2,t6
	xori	t6,a4,-00000001
	or	t6,t6,a7
	xor	t6,t6,t1
	c.add	t6,s2
	lui	t3,000FE2CE
	slli	a5,t6,00000006
	addi	t3,t3,+000006E0
	srli	t6,t6,0000001A
	c.add	t3,s9
	or	t6,t6,a5
	c.add	t6,a7
	c.add	a4,t3
	xori	t3,t1,-00000001
	or	t3,t3,t6
	xor	t3,t3,a7
	c.add	t3,a4
	slli	a5,t3,0000000A
	srli	t3,t3,00000016
	or	t3,t3,a5
	lui	a5,000A3014
	addi	a5,a5,+00000314
	c.add	a3,a5
	c.add	t3,t6
	c.add	a3,t1
	xori	t1,a7,-00000001
	or	t1,t1,t3
	xor	t1,t1,t6
	c.add	t1,a3
	slli	a5,t1,0000000F
	srli	t1,t1,00000011
	or	t1,t1,a5
	lui	a5,0004E081
	addi	a5,a5,+000001A1
	c.add	s1,a5
	c.add	t1,t3
	c.add	s1,a7
	xori	a7,t6,-00000001
	or	a7,a7,t1
	xor	a7,a7,t3
	c.add	a7,s1
	srli	a5,a7,0000000B
	c.slli	a7,15
	or	a7,a7,a5
	lui	a5,000F7538
	addi	a5,a5,-0000017E
	c.add	a5,s0
	c.add	a7,t1
	c.add	t6,a5
	xori	a5,t3,-00000001
	or	a5,a5,a7
	xor	a5,a5,t1
	c.add	a5,t6
	slli	a4,a5,00000006
	c.srli	a5,0000001A
	c.or	a5,a4
	lui	a4,000BD3AF
	addi	a4,a4,+00000235
	c.add	a4,t2
	c.add	a5,a7
	c.add	t3,a4
	xori	a4,t1,-00000001
	c.or	a4,a5
	xor	a4,a4,a7
	c.add	a4,t3
	slli	a3,a4,0000000A
	c.srli	a4,00000016
	c.or	a4,a3
	lui	a3,0002AD7D
	addi	a3,a3,+000002BB
	c.add	a3,t0
	c.add	a4,a5
	c.add	t1,a3
	xori	a3,a7,-00000001
	c.or	a3,a4
	c.xor	a3,a5
	c.add	a3,t1
	slli	t1,a3,0000000F
	c.srli	a3,00000011
	or	a3,a3,t1
	lui	t1,000EB86D
	c.add	a3,a4
	c.add	t5,a5
	addi	t1,t1,+00000391
	xori	a5,a5,-00000001
	c.or	a5,a3
	c.add	t4,t1
	c.add	a7,t4
	c.xor	a5,a4
	c.add	a5,a7
	srli	a7,a5,0000000B
	c.slli	a5,15
	c.add	a2,a3
	c.lwsp	a2,00000114
	or	a5,a7,a5
	c.add	a2,a5
	c.add	a3,a1
	c.add	a4,a6
	sw	t5,a0,+00000008
	c.sw	a0,12(a2)
	c.sw	a0,16(a3)
	c.sw	a0,20(a4)
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

;; mbedtls_md5_update.part.0: 23097C7E
;;   Called from:
;;     23097D42 (in mbedtls_md5_update)
;;     23097D90 (in mbedtls_md5_finish)
mbedtls_md5_update.part.0 proc
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
	bgeu	a5,a2,0000000023097CAA

l23097CA4:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l23097CAA:
	beq	s3,zero,0000000023097CDC

l23097CAE:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,0000000023097CDC

l23097CBA:
	addi	s5,s1,+00000018
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,00000000230A382C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,00000000230970A4
	c.add	s2,s4
	c.li	s3,00000000

l23097CDC:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	0000000023097CF2

l23097CE8:
	c.mv	a0,s1
	jal	ra,00000000230970A4
	addi	s4,s4,-00000040

l23097CF2:
	sub	a1,s6,s4
	bltu	s5,s4,0000000023097CE8

l23097CFA:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,0000000023097D2C

l23097D10:
	addi	a0,s1,+00000018
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

l23097D2C:
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

;; mbedtls_md5_update: 23097D40
;;   Called from:
;;     23096886 (in md5_update_wrap)
;;     23096C22 (in pem_aes_decrypt)
;;     23096C2C (in pem_aes_decrypt)
;;     23096CB6 (in pem_aes_decrypt)
;;     23096CC0 (in pem_aes_decrypt)
;;     23096CCA (in pem_aes_decrypt)
;;     23097D86 (in mbedtls_md5_finish)
;;     23097E3E (in mbedtls_md5)
mbedtls_md5_update proc
	c.beqz	a2,0000000023097D46

l23097D42:
	jal	zero,0000000023097C7E

l23097D46:
	c.jr	ra

;; mbedtls_md5_finish: 23097D48
;;   Called from:
;;     23096882 (in md5_finish_wrap)
;;     23096C34 (in pem_aes_decrypt)
;;     23096CD2 (in pem_aes_decrypt)
;;     23097E46 (in mbedtls_md5)
mbedtls_md5_finish proc
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
	slli	a4,a2,00000003
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	andi	a2,a2,+0000003F
	addi	a5,zero,+00000037
	c.mv	s1,a1
	bltu	a5,a2,0000000023097E16

l23097D74:
	addi	a5,zero,+00000038

l23097D78:
	lui	a1,000230CA
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,-000006E8
	jal	ra,0000000023097D40
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,0000000023097C7E
	c.lw	s0,8(a5)
	sb	a5,s1,+00000000
	c.lw	s0,8(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000001
	lhu	a5,s0,+0000000A
	sb	a5,s1,+00000002
	lbu	a5,s0,+0000000B
	sb	a5,s1,+00000003
	c.lw	s0,12(a5)
	sb	a5,s1,+00000004
	c.lw	s0,12(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000005
	lhu	a5,s0,+0000000E
	sb	a5,s1,+00000006
	lbu	a5,s0,+0000000F
	sb	a5,s1,+00000007
	c.lw	s0,16(a5)
	sb	a5,s1,+00000008
	c.lw	s0,16(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000009
	lhu	a5,s0,+00000012
	sb	a5,s1,+0000000A
	lbu	a5,s0,+00000013
	sb	a5,s1,+0000000B
	c.lw	s0,20(a5)
	sb	a5,s1,+0000000C
	c.lw	s0,20(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000000D
	lhu	a5,s0,+00000016
	sb	a5,s1,+0000000E
	lbu	a5,s0,+00000017
	sb	a5,s1,+0000000F
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23097E16:
	addi	a5,zero,+00000078
	c.j	0000000023097D78

;; mbedtls_md5: 23097E1C
mbedtls_md5 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000018
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a1,00000084
	c.mv	s0,a2
	jal	ra,0000000023097042
	c.addi4spn	a0,00000018
	jal	ra,0000000023097072
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000018
	c.mv	a2,a1
	c.mv	a1,s1
	jal	ra,0000000023097D40
	c.mv	a1,s0
	c.addi4spn	a0,00000018
	jal	ra,0000000023097D48
	c.addi4spn	a0,00000018
	jal	ra,000000002309704C
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; mbedtls_sha1_init: 23097E5A
;;   Called from:
;;     230968C2 (in sha1_ctx_alloc)
;;     230996A6 (in mbedtls_sha1)
mbedtls_sha1_init proc
	addi	a2,zero,+0000005C
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_sha1_free: 23097E64
;;   Called from:
;;     2309689E (in sha1_ctx_free)
;;     230996C6 (in mbedtls_sha1)
mbedtls_sha1_free proc
	addi	a5,a0,+0000005C
	c.bnez	a0,0000000023097E72

l23097E6A:
	c.jr	ra

l23097E6C:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l23097E72:
	bne	a0,a5,0000000023097E6C

l23097E76:
	c.j	0000000023097E6A

;; mbedtls_sha1_clone: 23097E78
;;   Called from:
;;     23096892 (in sha1_clone_wrap)
mbedtls_sha1_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+0000005C
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_sha1_starts: 23097E8A
;;   Called from:
;;     230968D8 (in sha1_starts_wrap)
;;     230996AC (in mbedtls_sha1)
mbedtls_sha1_starts proc
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,8(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,12(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,16(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	c.sw	a0,20(a5)
	lui	a5,000C3D2E
	addi	a5,a5,+000001F0
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.sw	a0,24(a5)
	c.jr	ra

;; mbedtls_sha1_process: 23097EC6
;;   Called from:
;;     2309688E (in sha1_process_wrap)
;;     230994F4 (in mbedtls_sha1_update.part.0)
;;     2309950A (in mbedtls_sha1_update.part.0)
mbedtls_sha1_process proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a2,a1,+00000000
	lbu	a5,a1,+00000001
	lbu	a4,a1,+00000004
	c.slli	a2,18
	c.slli	a5,10
	c.or	a2,a5
	lbu	a5,a1,+00000003
	c.slli	a4,18
	lbu	a3,a1,+00000008
	c.or	a2,a5
	lbu	a5,a1,+00000002
	c.slli	a3,18
	lbu	t0,a1,+0000000C
	c.slli	a5,08
	c.or	a2,a5
	lbu	a5,a1,+00000005
	c.slli	t0,18
	lbu	t5,a1,+00000010
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000007
	c.slli	t5,18
	c.or	a4,a5
	lbu	a5,a1,+00000006
	c.slli	a5,08
	c.or	a4,a5
	lbu	a5,a1,+00000009
	c.slli	a5,10
	c.or	a3,a5
	lbu	a5,a1,+0000000B
	c.or	a3,a5
	lbu	a5,a1,+0000000A
	c.slli	a5,08
	c.or	a3,a5
	lbu	a5,a1,+0000000D
	c.slli	a5,10
	or	t0,t0,a5
	lbu	a5,a1,+0000000F
	or	t0,t0,a5
	lbu	a5,a1,+0000000E
	c.slli	a5,08
	or	t0,t0,a5
	lbu	a5,a1,+00000011
	c.slli	a5,10
	or	t5,t5,a5
	lbu	a5,a1,+00000013
	or	t5,t5,a5
	lbu	a5,a1,+00000012
	lbu	t3,a1,+00000014
	lbu	a7,a1,+00000018
	c.slli	a5,08
	or	t5,t5,a5
	lbu	a5,a1,+00000015
	c.slli	t3,18
	c.slli	a7,18
	c.slli	a5,10
	or	t3,t3,a5
	lbu	a5,a1,+00000017
	lbu	s8,a1,+0000001C
	lbu	t6,a1,+00000020
	or	t3,t3,a5
	lbu	a5,a1,+00000016
	c.slli	s8,18
	c.slli	t6,18
	c.slli	a5,08
	or	t3,t3,a5
	lbu	a5,a1,+00000019
	lbu	t4,a1,+00000024
	lbu	t1,a1,+00000028
	c.slli	a5,10
	or	a7,a7,a5
	lbu	a5,a1,+0000001B
	c.slli	t4,18
	c.slli	t1,18
	or	a7,a7,a5
	lbu	a5,a1,+0000001A
	lbu	a6,a1,+0000002C
	lbu	t2,a1,+00000031
	c.slli	a5,08
	or	a7,a7,a5
	lbu	a5,a1,+0000001D
	c.slli	a6,18
	c.slli	t2,10
	c.slli	a5,10
	or	s8,s8,a5
	lbu	a5,a1,+0000001F
	or	s8,s8,a5
	lbu	a5,a1,+0000001E
	c.slli	a5,08
	or	s8,s8,a5
	lbu	a5,a1,+00000021
	c.slli	a5,10
	or	t6,t6,a5
	lbu	a5,a1,+00000023
	or	t6,t6,a5
	lbu	a5,a1,+00000022
	c.slli	a5,08
	or	t6,t6,a5
	lbu	a5,a1,+00000025
	c.slli	a5,10
	or	t4,t4,a5
	lbu	a5,a1,+00000027
	or	t4,t4,a5
	lbu	a5,a1,+00000026
	c.slli	a5,08
	or	t4,t4,a5
	lbu	a5,a1,+00000029
	c.slli	a5,10
	or	t1,t1,a5
	lbu	a5,a1,+0000002B
	or	t1,t1,a5
	lbu	a5,a1,+0000002A
	c.slli	a5,08
	or	t1,t1,a5
	lbu	a5,a1,+0000002D
	c.slli	a5,10
	or	a6,a6,a5
	lbu	a5,a1,+0000002F
	or	a6,a6,a5
	lbu	a5,a1,+0000002E
	c.slli	a5,08
	or	a6,a6,a5
	lbu	a5,a1,+00000030
	c.slli	a5,18
	or	a5,a5,t2
	lbu	t2,a1,+00000033
	or	a5,a5,t2
	lbu	t2,a1,+00000032
	lbu	s1,a1,+00000034
	lbu	s0,a1,+00000038
	c.slli	t2,08
	or	a5,a5,t2
	lbu	t2,a1,+00000035
	c.slli	s1,18
	c.slli	s0,18
	c.slli	t2,10
	or	s1,s1,t2
	lbu	t2,a1,+00000037
	lbu	s2,a1,+0000003D
	lw	s4,a0,+00000010
	or	s1,s1,t2
	lbu	t2,a1,+00000036
	c.slli	s2,10
	lw	s3,a0,+00000008
	c.slli	t2,08
	or	s1,s1,t2
	lbu	t2,a1,+00000039
	lw	s6,a0,+00000018
	slli	s11,s3,0000001E
	c.slli	t2,10
	or	s0,s0,t2
	lbu	t2,a1,+0000003B
	or	s0,s0,t2
	lbu	t2,a1,+0000003A
	c.slli	t2,08
	or	s0,s0,t2
	lbu	t2,a1,+0000003C
	c.slli	t2,18
	or	t2,t2,s2
	lbu	s2,a1,+0000003F
	lbu	a1,a1,+0000003E
	or	t2,t2,s2
	c.slli	a1,08
	or	t2,t2,a1
	c.lw	a0,20(a1)
	lw	s2,a0,+0000000C
	xor	a1,s4,a1
	and	a1,a1,s2
	lw	s2,a0,+00000014
	xor	s5,a1,s2
	srli	s2,s3,0000001B
	slli	a1,s3,00000005
	or	a1,a1,s2
	lui	s2,0005A828
	addi	s2,s2,-00000667
	c.add	s6,s2
	c.add	a1,s6
	c.add	a1,s5
	lw	s6,a0,+0000000C
	lw	s5,a0,+0000000C
	c.add	a1,a2
	c.slli	s6,1E
	srli	s5,s5,00000002
	or	s6,s6,s5
	lw	s5,a0,+00000014
	xor	s7,s4,s6
	and	s7,s7,s3
	c.add	s5,s2
	xor	s7,s7,s4
	c.add	s7,s5
	add	s5,s7,a4
	srli	s9,a1,0000001B
	slli	s7,a1,00000005
	or	s7,s7,s9
	c.add	s7,s5
	srli	s5,s3,00000002
	or	s11,s11,s5
	xor	s5,s6,s11
	add	s9,s4,s2
	and	s5,s5,a1
	xor	s5,s5,s6
	c.add	s9,a3
	add	s10,s5,s9
	srli	s5,s7,0000001B
	slli	s9,s7,00000005
	or	s9,s9,s5
	srli	s5,a1,00000002
	c.slli	a1,1E
	or	a1,a1,s5
	c.add	s9,s10
	xor	s10,s11,a1
	and	s10,s10,s7
	xor	s5,s10,s11
	add	s10,s6,s2
	c.add	s10,t0
	add	s6,s5,s10
	srli	s5,s9,0000001B
	slli	s10,s9,00000005
	or	s10,s10,s5
	srli	s5,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s5
	c.add	s10,s6
	xor	s6,a1,s7
	and	s6,s6,s9
	xor	s5,s6,a1
	add	s6,s11,s2
	c.add	s6,t5
	add	s11,s5,s6
	srli	s5,s10,0000001B
	slli	s6,s10,00000005
	or	s6,s6,s5
	srli	s5,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s5
	c.add	s6,s11
	xor	s11,s7,s9
	and	s11,s11,s10
	xor	s5,s11,s7
	add	s11,t3,s2
	c.add	s11,a1
	c.add	s5,s11
	srli	a1,s6,0000001B
	slli	s11,s6,00000005
	or	s11,s11,a1
	c.add	s11,s5
	slli	a1,s10,0000001E
	srli	s5,s10,00000002
	or	a1,a1,s5
	xor	s5,s9,a1
	and	s5,s5,s6
	xor	s10,s5,s9
	add	s5,a7,s2
	c.add	s5,s7
	c.add	s10,s5
	srli	s7,s11,0000001B
	slli	s5,s11,00000005
	or	s5,s5,s7
	srli	s7,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s7
	xor	s7,a1,s6
	and	s7,s7,s11
	c.add	s5,s10
	xor	s10,s7,a1
	add	s7,s8,s2
	c.add	s9,s7
	c.add	s10,s9
	srli	s7,s5,0000001B
	slli	s9,s5,00000005
	or	s9,s9,s7
	srli	s7,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s7
	c.add	s9,s10
	xor	s10,s6,s11
	and	s10,s10,s5
	xor	s7,s10,s6
	add	s10,t6,s2
	c.add	s10,a1
	c.add	s7,s10
	srli	a1,s9,0000001B
	slli	s10,s9,00000005
	or	s10,s10,a1
	srli	a1,s5,00000002
	c.slli	s5,1E
	or	s5,s5,a1
	xor	a1,s11,s5
	and	a1,a1,s9
	c.add	s10,s7
	xor	s7,a1,s11
	add	a1,t4,s2
	c.add	s6,a1
	c.add	s7,s6
	srli	a1,s10,0000001B
	slli	s6,s10,00000005
	or	s6,s6,a1
	srli	a1,s9,00000002
	c.slli	s9,1E
	or	s9,s9,a1
	c.add	s6,s7
	xor	s7,s5,s9
	and	s7,s7,s10
	xor	a1,s7,s5
	add	s7,t1,s2
	c.add	s7,s11
	add	s11,a1,s7
	srli	a1,s6,0000001B
	slli	s7,s6,00000005
	or	s7,s7,a1
	srli	a1,s10,00000002
	c.slli	s10,1E
	or	s10,s10,a1
	xor	a1,s9,s10
	and	a1,a1,s6
	c.add	s7,s11
	xor	s11,a1,s9
	add	a1,a6,s2
	c.add	s5,a1
	c.add	s11,s5
	srli	a1,s7,0000001B
	slli	s5,s7,00000005
	or	s5,s5,a1
	srli	a1,s6,00000002
	c.slli	s6,1E
	or	s6,s6,a1
	xor	a1,s10,s6
	and	a1,a1,s7
	c.add	s5,s11
	xor	s11,a1,s10
	add	a1,a5,s2
	c.add	a1,s9
	c.add	s11,a1
	srli	s9,s5,0000001B
	slli	a1,s5,00000005
	or	a1,a1,s9
	srli	s9,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s9
	xor	s9,s6,s7
	and	s9,s9,s5
	c.add	a1,s11
	xor	s11,s9,s6
	add	s9,s1,s2
	c.add	s10,s9
	c.add	s11,s10
	srli	s9,a1,0000001B
	slli	s10,a1,00000005
	or	s10,s10,s9
	srli	s9,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s9
	c.add	s10,s11
	xor	s11,s7,s5
	and	s11,s11,a1
	xor	s9,s11,s7
	add	s11,s0,s2
	c.add	s11,s6
	c.add	s9,s11
	srli	s6,s10,0000001B
	slli	s11,s10,00000005
	or	s11,s11,s6
	srli	s6,a1,00000002
	c.slli	a1,1E
	or	a1,a1,s6
	xor	s6,s5,a1
	and	s6,s6,s10
	c.add	s11,s9
	xor	s9,s6,s5
	add	s6,t2,s2
	c.add	s7,s6
	c.add	s9,s7
	srli	s6,s11,0000001B
	slli	s7,s11,00000005
	c.xor	a2,a3
	or	s7,s7,s6
	xor	a2,a2,t6
	srli	s6,s10,00000002
	c.slli	s10,1E
	or	s10,s10,s6
	c.xor	a2,s1
	c.add	s7,s9
	slli	s6,a2,00000001
	xor	s9,a1,s10
	c.srli	a2,0000001F
	or	a2,a2,s6
	and	s9,s9,s11
	xor	s6,s9,a1
	add	s9,a2,s2
	c.add	s9,s5
	xor	a4,a4,t0
	c.add	s6,s9
	srli	s5,s7,0000001B
	slli	s9,s7,00000005
	xor	a4,a4,t4
	c.xor	a4,s0
	or	s9,s9,s5
	srli	s5,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s5
	slli	s5,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,s5
	xor	s5,s10,s11
	and	s5,s5,s7
	c.add	s9,s6
	xor	s6,s5,s10
	add	s5,a4,s2
	c.add	a1,s5
	c.add	s6,a1
	srli	s5,s9,0000001B
	slli	a1,s9,00000005
	xor	a3,a3,t5
	or	a1,a1,s5
	xor	a3,a3,t1
	srli	s5,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s5
	xor	a3,a3,t2
	c.add	a1,s6
	slli	s5,a3,00000001
	xor	s6,s11,s7
	c.srli	a3,0000001F
	or	a3,a3,s5
	and	s6,s6,s9
	xor	s5,s6,s11
	add	s6,a3,s2
	c.add	s6,s10
	xor	t0,t0,t3
	add	s10,s5,s6
	xor	t0,t0,a6
	srli	s5,a1,0000001B
	slli	s6,a1,00000005
	xor	t0,t0,a2
	or	s6,s6,s5
	srli	s5,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s5
	slli	s5,t0,00000001
	srli	t0,t0,0000001F
	or	t0,t0,s5
	xor	s5,s7,s9
	and	s5,s5,a1
	c.add	s2,t0
	c.add	s6,s10
	xor	s5,s5,s7
	c.add	s2,s11
	xor	t5,t5,a7
	add	s11,s5,s2
	xor	t5,t5,a5
	srli	s2,s6,0000001B
	slli	s5,s6,00000005
	xor	t5,t5,a4
	or	s5,s5,s2
	srli	s2,a1,00000002
	c.slli	a1,1E
	or	a1,a1,s2
	slli	s2,t5,00000001
	srli	t5,t5,0000001F
	or	t5,t5,s2
	lui	s2,0006ED9F
	addi	s2,s2,-0000045F
	c.add	s5,s11
	add	s10,t5,s2
	xor	s11,s9,a1
	c.add	s7,s10
	xor	s11,s11,s6
	xor	t3,t3,s8
	c.add	s11,s7
	srli	s10,s5,0000001B
	slli	s7,s5,00000005
	xor	t3,t3,s1
	xor	t3,t3,a3
	or	s7,s7,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,t3,00000001
	srli	t3,t3,0000001F
	or	t3,t3,s10
	xor	s10,a1,s6
	c.add	s7,s11
	xor	s11,s10,s5
	add	s10,t3,s2
	c.add	s10,s9
	xor	a7,a7,t6
	c.add	s11,s10
	srli	s9,s7,0000001B
	slli	s10,s7,00000005
	xor	a7,a7,s0
	xor	a7,a7,t0
	or	s10,s10,s9
	srli	s9,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s9
	slli	s9,a7,00000001
	srli	a7,a7,0000001F
	c.add	s10,s11
	or	a7,a7,s9
	xor	s11,s6,s5
	xor	s9,s11,s7
	add	s11,a7,s2
	c.add	s11,a1
	c.add	s9,s11
	srli	a1,s10,0000001B
	slli	s11,s10,00000005
	or	s11,s11,a1
	srli	a1,s7,00000002
	c.slli	s7,1E
	or	s7,s7,a1
	xor	a1,s8,t4
	xor	a1,a1,t2
	xor	a1,a1,t5
	slli	s8,a1,00000001
	c.srli	a1,0000001F
	or	a1,a1,s8
	xor	s8,s5,s7
	c.add	s11,s9
	xor	s9,s8,s10
	add	s8,a1,s2
	c.add	s6,s8
	xor	t6,t6,t1
	c.add	s9,s6
	srli	s8,s11,0000001B
	slli	s6,s11,00000005
	xor	t6,t6,a2
	xor	t6,t6,t3
	or	s6,s6,s8
	srli	s8,s10,00000002
	c.slli	s10,1E
	or	s10,s10,s8
	slli	s8,t6,00000001
	srli	t6,t6,0000001F
	or	t6,t6,s8
	xor	s8,s7,s10
	c.add	s6,s9
	xor	s9,s8,s11
	add	s8,t6,s2
	c.add	s5,s8
	xor	t4,t4,a6
	c.add	s9,s5
	srli	s8,s6,0000001B
	slli	s5,s6,00000005
	xor	t4,t4,a4
	xor	t4,t4,a7
	or	s5,s5,s8
	srli	s8,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s8
	slli	s8,t4,00000001
	srli	t4,t4,0000001F
	or	t4,t4,s8
	xor	s8,s10,s11
	c.add	s5,s9
	xor	s9,s8,s6
	add	s8,t4,s2
	c.add	s7,s8
	xor	t1,t1,a5
	c.add	s9,s7
	srli	s8,s5,0000001B
	slli	s7,s5,00000005
	xor	t1,t1,a3
	xor	t1,t1,a1
	or	s7,s7,s8
	srli	s8,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s8
	slli	s8,t1,00000001
	srli	t1,t1,0000001F
	c.add	s7,s9
	or	t1,t1,s8
	xor	s9,s11,s6
	xor	s8,s9,s5
	add	s9,t1,s2
	c.add	s9,s10
	xor	a6,a6,s1
	add	s10,s8,s9
	xor	a6,a6,t0
	srli	s8,s7,0000001B
	slli	s9,s7,00000005
	xor	a6,a6,t6
	or	s9,s9,s8
	srli	s8,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s8
	slli	s8,a6,00000001
	srli	a6,a6,0000001F
	or	a6,a6,s8
	xor	s8,s6,s5
	c.add	s9,s10
	xor	s10,s8,s7
	add	s8,a6,s2
	c.add	s8,s11
	c.xor	a5,s0
	add	s11,s10,s8
	xor	a5,a5,t5
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	xor	a5,a5,t4
	or	s8,s8,s10
	srli	s10,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s10
	slli	s10,a5,00000001
	c.srli	a5,0000001F
	or	a5,a5,s10
	xor	s10,s5,s7
	c.add	s8,s11
	xor	s11,s10,s9
	add	s10,a5,s2
	c.add	s6,s10
	xor	s1,s1,t2
	c.add	s11,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	xor	s1,s1,t3
	xor	s1,s1,t1
	or	s6,s6,s10
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,s1,00000001
	c.srli	s1,0000001F
	or	s1,s1,s10
	xor	s10,s7,s9
	c.add	s6,s11
	xor	s11,s10,s8
	add	s10,s1,s2
	c.add	s5,s10
	c.xor	s0,a2
	c.add	s11,s5
	srli	s10,s6,0000001B
	slli	s5,s6,00000005
	xor	s0,s0,a7
	xor	s0,s0,a6
	or	s5,s5,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,s0,00000001
	c.srli	s0,0000001F
	or	s0,s0,s10
	xor	s10,s9,s8
	c.add	s5,s11
	xor	s11,s10,s6
	add	s10,s0,s2
	c.add	s7,s10
	xor	t2,t2,a4
	c.add	s11,s7
	srli	s10,s5,0000001B
	slli	s7,s5,00000005
	xor	t2,t2,a1
	xor	t2,t2,a5
	or	s7,s7,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,t2,00000001
	srli	t2,t2,0000001F
	or	t2,t2,s10
	xor	s10,s8,s6
	c.add	s7,s11
	xor	s11,s10,s5
	add	s10,t2,s2
	c.add	s10,s9
	c.xor	a2,a3
	c.add	s11,s10
	srli	s9,s7,0000001B
	slli	s10,s7,00000005
	xor	a2,a2,t6
	c.xor	a2,s1
	or	s10,s10,s9
	srli	s9,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s9
	slli	s9,a2,00000001
	c.srli	a2,0000001F
	c.add	s10,s11
	or	a2,a2,s9
	xor	s11,s6,s5
	xor	s9,s11,s7
	add	s11,a2,s2
	c.add	s11,s8
	xor	a4,a4,t0
	c.add	s9,s11
	srli	s8,s10,0000001B
	slli	s11,s10,00000005
	xor	a4,a4,t4
	c.xor	a4,s0
	or	s11,s11,s8
	srli	s8,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s8
	slli	s8,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,s8
	xor	s8,s5,s7
	c.add	s11,s9
	xor	s9,s8,s10
	add	s8,a4,s2
	c.add	s6,s8
	xor	a3,a3,t5
	c.add	s9,s6
	srli	s8,s11,0000001B
	slli	s6,s11,00000005
	xor	a3,a3,t1
	xor	a3,a3,t2
	or	s6,s6,s8
	srli	s8,s10,00000002
	c.slli	s10,1E
	or	s10,s10,s8
	slli	s8,a3,00000001
	c.srli	a3,0000001F
	or	a3,a3,s8
	xor	s8,s7,s10
	c.add	s6,s9
	xor	s9,s8,s11
	add	s8,a3,s2
	c.add	s5,s8
	xor	t0,t0,t3
	c.add	s9,s5
	srli	s8,s6,0000001B
	slli	s5,s6,00000005
	xor	t0,t0,a6
	xor	t0,t0,a2
	or	s5,s5,s8
	srli	s8,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s8
	slli	s8,t0,00000001
	srli	t0,t0,0000001F
	c.add	s5,s9
	or	t0,t0,s8
	xor	s9,s10,s11
	xor	s8,s9,s6
	add	s9,t0,s2
	c.add	s9,s7
	xor	t5,t5,a7
	c.add	s8,s9
	srli	s7,s5,0000001B
	slli	s9,s5,00000005
	xor	t5,t5,a5
	xor	t5,t5,a4
	or	s9,s9,s7
	srli	s7,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s7
	slli	s7,t5,00000001
	srli	t5,t5,0000001F
	c.add	s9,s8
	or	t5,t5,s7
	xor	s8,s11,s6
	xor	s7,s8,s5
	add	s8,t5,s2
	c.add	s8,s10
	xor	t3,t3,a1
	add	s10,s7,s8
	xor	t3,t3,s1
	srli	s7,s9,0000001B
	slli	s8,s9,00000005
	xor	t3,t3,a3
	or	s8,s8,s7
	srli	s7,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s7
	slli	s7,t3,00000001
	srli	t3,t3,0000001F
	or	t3,t3,s7
	xor	s7,s6,s5
	c.add	s8,s10
	xor	s10,s7,s9
	add	s7,t3,s2
	c.add	s11,s7
	xor	a7,a7,t6
	c.add	s10,s11
	srli	s7,s8,0000001B
	slli	s11,s8,00000005
	xor	a7,a7,s0
	xor	a7,a7,t0
	or	s11,s11,s7
	srli	s7,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s7
	slli	s7,a7,00000001
	srli	a7,a7,0000001F
	or	a7,a7,s7
	xor	s7,s5,s9
	c.add	s11,s10
	xor	s10,s7,s8
	add	s7,a7,s2
	c.add	s7,s6
	xor	a1,a1,t4
	c.add	s10,s7
	srli	s6,s11,0000001B
	slli	s7,s11,00000005
	xor	a1,a1,t2
	xor	a1,a1,t5
	or	s7,s7,s6
	srli	s6,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s6
	slli	s6,a1,00000001
	c.srli	a1,0000001F
	or	a1,a1,s6
	c.add	s7,s10
	c.add	s2,a1
	xor	s10,s9,s8
	xor	s10,s10,s11
	c.add	s2,s5
	xor	t6,t6,t1
	add	s5,s10,s2
	xor	t6,t6,a2
	srli	s2,s7,0000001B
	slli	s10,s7,00000005
	xor	t6,t6,t3
	or	s10,s10,s2
	srli	s2,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s2
	slli	s2,t6,00000001
	srli	t6,t6,0000001F
	or	t6,t6,s2
	lui	s2,0008F1BC
	addi	s2,s2,-00000324
	c.add	s10,s5
	add	s5,t6,s2
	add	s6,s5,s9
	srli	s5,s10,0000001B
	slli	s9,s10,00000005
	or	s9,s9,s5
	c.add	s6,s9
	or	s9,s7,s11
	and	s5,s7,s11
	and	s9,s9,s8
	xor	t4,t4,a6
	or	s9,s9,s5
	xor	t4,t4,a4
	srli	s5,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s5
	xor	t4,t4,a7
	c.add	s9,s6
	slli	s5,t4,00000001
	or	s6,s10,s7
	srli	t4,t4,0000001F
	or	t4,t4,s5
	and	s6,s6,s11
	and	s5,s10,s7
	or	s5,s6,s5
	add	s6,t4,s2
	c.add	s6,s8
	xor	t1,t1,a5
	add	s8,s5,s6
	xor	t1,t1,a3
	srli	s5,s9,0000001B
	slli	s6,s9,00000005
	xor	t1,t1,a1
	or	s6,s6,s5
	srli	s5,s10,00000002
	c.slli	s10,1E
	or	s10,s10,s5
	slli	s5,t1,00000001
	srli	t1,t1,0000001F
	or	t1,t1,s5
	c.add	s6,s8
	add	s5,t1,s2
	add	s8,s5,s11
	srli	s5,s6,0000001B
	slli	s11,s6,00000005
	or	s11,s11,s5
	c.add	s8,s11
	xor	a6,a6,s1
	or	s11,s9,s10
	and	s5,s9,s10
	and	s11,s11,s7
	xor	a6,a6,t0
	xor	a6,a6,t6
	or	s11,s11,s5
	srli	s5,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s5
	slli	s5,a6,00000001
	srli	a6,a6,0000001F
	or	a6,a6,s5
	or	s5,s6,s9
	c.add	s11,s8
	and	s5,s5,s10
	and	s8,s6,s9
	or	s8,s5,s8
	add	s5,a6,s2
	c.add	s5,s7
	c.xor	a5,s0
	c.add	s8,s5
	srli	s7,s11,0000001B
	slli	s5,s11,00000005
	xor	a5,a5,t5
	xor	a5,a5,t4
	or	s5,s5,s7
	srli	s7,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s7
	slli	s7,a5,00000001
	c.srli	a5,0000001F
	or	a5,a5,s7
	c.add	s5,s8
	add	s7,a5,s2
	add	s8,s7,s10
	srli	s7,s5,0000001B
	slli	s10,s5,00000005
	or	s10,s10,s7
	c.add	s8,s10
	or	s10,s11,s6
	and	s7,s11,s6
	and	s10,s10,s9
	xor	s1,s1,t2
	or	s10,s10,s7
	xor	s1,s1,t3
	srli	s7,s11,00000002
	c.slli	s11,1E
	or	s11,s11,s7
	xor	s1,s1,t1
	c.add	s10,s8
	slli	s7,s1,00000001
	or	s8,s5,s11
	c.srli	s1,0000001F
	or	s1,s1,s7
	and	s8,s8,s6
	and	s7,s5,s11
	or	s7,s8,s7
	add	s8,s1,s2
	c.add	s8,s9
	c.xor	s0,a2
	add	s9,s7,s8
	xor	s0,s0,a7
	srli	s7,s10,0000001B
	slli	s8,s10,00000005
	xor	s0,s0,a6
	or	s8,s8,s7
	srli	s7,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s7
	slli	s7,s0,00000001
	c.srli	s0,0000001F
	or	s0,s0,s7
	c.add	s8,s9
	add	s7,s0,s2
	add	s9,s7,s6
	srli	s7,s8,0000001B
	slli	s6,s8,00000005
	or	s6,s6,s7
	c.add	s9,s6
	xor	t2,t2,a4
	or	s6,s10,s5
	and	s7,s10,s5
	and	s6,s6,s11
	xor	t2,t2,a1
	xor	t2,t2,a5
	or	s6,s6,s7
	srli	s7,s10,00000002
	c.slli	s10,1E
	or	s10,s10,s7
	slli	s7,t2,00000001
	srli	t2,t2,0000001F
	or	t2,t2,s7
	or	s7,s8,s10
	c.add	s6,s9
	and	s7,s7,s5
	and	s9,s8,s10
	or	s9,s7,s9
	add	s7,t2,s2
	c.add	s7,s11
	c.xor	a2,a3
	add	s11,s9,s7
	xor	a2,a2,t6
	srli	s9,s6,0000001B
	slli	s7,s6,00000005
	c.xor	a2,s1
	or	s7,s7,s9
	srli	s9,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s9
	slli	s9,a2,00000001
	c.srli	a2,0000001F
	or	a2,a2,s9
	c.add	s7,s11
	add	s9,a2,s2
	add	s11,s9,s5
	srli	s9,s7,0000001B
	slli	s5,s7,00000005
	or	s5,s5,s9
	c.add	s11,s5
	xor	a4,a4,t0
	or	s5,s6,s8
	and	s9,s6,s8
	and	s5,s5,s10
	xor	a4,a4,t4
	c.xor	a4,s0
	or	s5,s5,s9
	srli	s9,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s9
	slli	s9,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,s9
	or	s9,s7,s6
	c.add	s5,s11
	and	s9,s9,s8
	and	s11,s7,s6
	or	s11,s9,s11
	add	s9,a4,s2
	c.add	s9,s10
	xor	a3,a3,t5
	c.add	s11,s9
	srli	s10,s5,0000001B
	slli	s9,s5,00000005
	xor	a3,a3,t1
	xor	a3,a3,t2
	or	s9,s9,s10
	srli	s10,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s10
	slli	s10,a3,00000001
	c.srli	a3,0000001F
	or	a3,a3,s10
	c.add	s9,s11
	add	s10,a3,s2
	add	s11,s10,s8
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	or	s8,s8,s10
	c.add	s11,s8
	xor	t0,t0,t3
	or	s8,s5,s7
	and	s10,s5,s7
	and	s8,s8,s6
	xor	t0,t0,a6
	xor	t0,t0,a2
	or	s8,s8,s10
	srli	s10,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s10
	slli	s10,t0,00000001
	srli	t0,t0,0000001F
	or	t0,t0,s10
	or	s10,s9,s5
	c.add	s8,s11
	and	s10,s10,s7
	and	s11,s9,s5
	or	s11,s10,s11
	add	s10,t0,s2
	c.add	s6,s10
	xor	t5,t5,a7
	c.add	s11,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	xor	t5,t5,a5
	xor	t5,t5,a4
	or	s6,s6,s10
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,t5,00000001
	srli	t5,t5,0000001F
	or	t5,t5,s10
	c.add	s6,s11
	add	s10,t5,s2
	add	s11,s10,s7
	srli	s10,s6,0000001B
	slli	s7,s6,00000005
	or	s7,s7,s10
	c.add	s11,s7
	xor	t3,t3,a1
	or	s7,s8,s9
	and	s10,s8,s9
	and	s7,s7,s5
	xor	t3,t3,s1
	xor	t3,t3,a3
	or	s7,s7,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,t3,00000001
	srli	t3,t3,0000001F
	or	t3,t3,s10
	or	s10,s6,s8
	c.add	s7,s11
	and	s10,s10,s9
	and	s11,s6,s8
	or	s11,s10,s11
	add	s10,t3,s2
	c.add	s5,s10
	xor	a7,a7,t6
	c.add	s11,s5
	srli	s10,s7,0000001B
	slli	s5,s7,00000005
	xor	a7,a7,s0
	xor	a7,a7,t0
	or	s5,s5,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,a7,00000001
	srli	a7,a7,0000001F
	or	a7,a7,s10
	c.add	s5,s11
	add	s10,a7,s2
	add	s11,s10,s9
	srli	s10,s5,0000001B
	slli	s9,s5,00000005
	or	s9,s9,s10
	c.add	s11,s9
	xor	a1,a1,t4
	or	s9,s7,s6
	and	s10,s7,s6
	and	s9,s9,s8
	xor	a1,a1,t2
	xor	a1,a1,t5
	or	s9,s9,s10
	srli	s10,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s10
	slli	s10,a1,00000001
	c.srli	a1,0000001F
	or	a1,a1,s10
	or	s10,s5,s7
	c.add	s9,s11
	and	s10,s10,s6
	and	s11,s5,s7
	or	s11,s10,s11
	add	s10,a1,s2
	c.add	s8,s10
	xor	t6,t6,t1
	c.add	s11,s8
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	xor	t6,t6,a2
	xor	t6,t6,t3
	or	s8,s8,s10
	srli	s10,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s10
	slli	s10,t6,00000001
	srli	t6,t6,0000001F
	or	t6,t6,s10
	c.add	s8,s11
	add	s10,t6,s2
	add	s11,s10,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	or	s6,s6,s10
	c.add	s11,s6
	xor	t4,t4,a6
	or	s6,s9,s5
	and	s10,s9,s5
	and	s6,s6,s7
	xor	t4,t4,a4
	xor	t4,t4,a7
	or	s6,s6,s10
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,t4,00000001
	srli	t4,t4,0000001F
	or	t4,t4,s10
	or	s10,s8,s9
	c.add	s6,s11
	and	s10,s10,s5
	and	s11,s8,s9
	or	s11,s10,s11
	add	s10,t4,s2
	c.add	s7,s10
	xor	t1,t1,a5
	c.add	s11,s7
	srli	s10,s6,0000001B
	slli	s7,s6,00000005
	xor	t1,t1,a3
	xor	t1,t1,a1
	or	s7,s7,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,t1,00000001
	srli	t1,t1,0000001F
	or	t1,t1,s10
	c.add	s7,s11
	add	s10,t1,s2
	add	s11,s10,s5
	srli	s10,s7,0000001B
	slli	s5,s7,00000005
	or	s5,s5,s10
	c.add	s11,s5
	xor	a6,a6,s1
	or	s5,s6,s8
	and	s10,s6,s8
	and	s5,s5,s9
	xor	a6,a6,t0
	xor	a6,a6,t6
	or	s5,s5,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,a6,00000001
	srli	a6,a6,0000001F
	or	a6,a6,s10
	c.xor	a5,s0
	or	s10,s7,s6
	c.add	s2,a6
	xor	a5,a5,t5
	c.add	s5,s11
	c.add	s9,s2
	and	s11,s7,s6
	srli	s2,s7,00000002
	xor	a5,a5,t4
	and	s10,s10,s8
	c.slli	s7,1E
	or	s7,s7,s2
	or	s10,s10,s11
	slli	s2,a5,00000001
	c.srli	a5,0000001F
	or	a5,a5,s2
	c.add	s10,s9
	srli	s11,s5,0000001B
	slli	s9,s5,00000005
	lui	s2,000CA62C
	addi	s2,s2,+000001D6
	or	s9,s9,s11
	c.add	s9,s10
	xor	s11,s6,s7
	add	s10,a5,s2
	c.add	s8,s10
	xor	s11,s11,s5
	xor	s1,s1,t2
	c.add	s11,s8
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	xor	s1,s1,t3
	xor	s1,s1,t1
	or	s8,s8,s10
	srli	s10,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s10
	slli	s10,s1,00000001
	c.srli	s1,0000001F
	or	s1,s1,s10
	xor	s10,s7,s5
	c.add	s8,s11
	xor	s11,s10,s9
	add	s10,s1,s2
	c.add	s6,s10
	c.xor	s0,a2
	c.add	s11,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	xor	s0,s0,a7
	xor	s0,s0,a6
	or	s6,s6,s10
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,s0,00000001
	c.srli	s0,0000001F
	or	s0,s0,s10
	xor	s10,s5,s9
	c.add	s6,s11
	xor	s11,s10,s8
	add	s10,s0,s2
	c.add	s7,s10
	xor	t2,t2,a4
	c.add	s11,s7
	srli	s10,s6,0000001B
	slli	s7,s6,00000005
	xor	t2,t2,a1
	xor	t2,t2,a5
	or	s7,s7,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,t2,00000001
	srli	t2,t2,0000001F
	or	t2,t2,s10
	xor	s10,s9,s8
	c.add	s7,s11
	xor	s11,s10,s6
	add	s10,t2,s2
	c.add	s5,s10
	c.xor	a2,a3
	c.add	s11,s5
	srli	s10,s7,0000001B
	slli	s5,s7,00000005
	xor	a2,a2,t6
	c.xor	a2,s1
	or	s5,s5,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,a2,00000001
	c.srli	a2,0000001F
	or	a2,a2,s10
	xor	s10,s8,s6
	c.add	s5,s11
	xor	s11,s10,s7
	add	s10,a2,s2
	c.add	s9,s10
	xor	a4,a4,t0
	c.add	s11,s9
	srli	s10,s5,0000001B
	slli	s9,s5,00000005
	xor	a4,a4,t4
	c.xor	a4,s0
	or	s9,s9,s10
	srli	s10,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s10
	slli	s10,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,s10
	xor	s10,s6,s7
	c.add	s9,s11
	xor	s11,s10,s5
	add	s10,a4,s2
	c.add	s8,s10
	xor	a3,a3,t5
	c.add	s11,s8
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	xor	a3,a3,t1
	xor	a3,a3,t2
	or	s8,s8,s10
	srli	s10,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s10
	slli	s10,a3,00000001
	c.srli	a3,0000001F
	or	a3,a3,s10
	xor	s10,s7,s5
	c.add	s8,s11
	xor	s11,s10,s9
	add	s10,a3,s2
	c.add	s6,s10
	xor	t0,t0,t3
	c.add	s11,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	xor	t0,t0,a6
	or	s6,s6,s10
	xor	t0,t0,a2
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,t0,00000001
	srli	t0,t0,0000001F
	or	t0,t0,s10
	xor	s10,s5,s9
	c.add	s6,s11
	xor	s11,s10,s8
	add	s10,t0,s2
	c.add	s7,s10
	xor	t5,t5,a7
	c.add	s11,s7
	srli	s10,s6,0000001B
	slli	s7,s6,00000005
	xor	t5,t5,a5
	xor	t5,t5,a4
	or	s7,s7,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,t5,00000001
	srli	t5,t5,0000001F
	or	t5,t5,s10
	xor	s10,s9,s8
	c.add	s7,s11
	xor	s11,s10,s6
	add	s10,t5,s2
	c.add	s5,s10
	xor	t3,t3,a1
	c.add	s11,s5
	srli	s10,s7,0000001B
	slli	s5,s7,00000005
	xor	t3,t3,s1
	xor	t3,t3,a3
	or	s5,s5,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,t3,00000001
	srli	t3,t3,0000001F
	or	t3,t3,s10
	xor	s10,s8,s6
	c.add	s5,s11
	xor	s11,s10,s7
	add	s10,t3,s2
	c.add	s9,s10
	xor	a7,a7,t6
	c.add	s11,s9
	srli	s10,s5,0000001B
	slli	s9,s5,00000005
	xor	a7,a7,s0
	xor	a7,a7,t0
	or	s9,s9,s10
	srli	s10,s7,00000002
	c.slli	s7,1E
	or	s7,s7,s10
	slli	s10,a7,00000001
	srli	a7,a7,0000001F
	or	a7,a7,s10
	xor	s10,s6,s7
	c.add	s9,s11
	xor	s11,s10,s5
	add	s10,a7,s2
	c.add	s8,s10
	xor	a1,a1,t4
	c.add	s11,s8
	srli	s10,s9,0000001B
	slli	s8,s9,00000005
	xor	a1,a1,t2
	xor	a1,a1,t5
	or	s8,s8,s10
	srli	s10,s5,00000002
	c.slli	s5,1E
	or	s5,s5,s10
	slli	s10,a1,00000001
	c.srli	a1,0000001F
	or	a1,a1,s10
	xor	s10,s7,s5
	c.add	s8,s11
	xor	s11,s10,s9
	add	s10,a1,s2
	c.add	s6,s10
	xor	t6,t6,t1
	c.add	s11,s6
	srli	s10,s8,0000001B
	slli	s6,s8,00000005
	xor	t6,t6,a2
	xor	t6,t6,t3
	or	s6,s6,s10
	srli	s10,s9,00000002
	c.slli	s9,1E
	or	s9,s9,s10
	slli	s10,t6,00000001
	srli	t6,t6,0000001F
	or	t6,t6,s10
	xor	s10,s5,s9
	c.add	s6,s11
	xor	s11,s10,s8
	add	s10,t6,s2
	c.add	s7,s10
	xor	t4,t4,a6
	c.add	s11,s7
	srli	s10,s6,0000001B
	slli	s7,s6,00000005
	xor	t4,t4,a4
	xor	t4,t4,a7
	or	s7,s7,s10
	srli	s10,s8,00000002
	c.slli	s8,1E
	or	s8,s8,s10
	slli	s10,t4,00000001
	srli	t4,t4,0000001F
	or	t4,t4,s10
	xor	s10,s9,s8
	c.add	s7,s11
	xor	s11,s10,s6
	add	s10,t4,s2
	c.add	s5,s10
	xor	t1,t1,a5
	c.add	s11,s5
	srli	s10,s7,0000001B
	slli	s5,s7,00000005
	xor	a3,t1,a3
	c.xor	a3,a1
	or	s5,s5,s10
	srli	s10,s6,00000002
	c.slli	s6,1E
	or	s6,s6,s10
	slli	s10,a3,00000001
	c.srli	a3,0000001F
	or	a3,a3,s10
	add	t1,a3,s2
	xor	s10,s8,s6
	xor	a6,a6,s1
	c.add	s5,s11
	xor	s10,s10,s7
	c.add	s9,t1
	xor	t0,a6,t0
	srli	t1,s5,0000001B
	c.add	s9,s10
	xor	t6,t0,t6
	slli	s10,s5,00000005
	or	s10,s10,t1
	slli	a6,t6,00000001
	srli	t1,s7,00000002
	srli	t6,t6,0000001F
	c.slli	s7,1E
	or	s7,s7,t1
	or	t6,t6,a6
	add	t1,t6,s2
	xor	a6,s6,s7
	c.add	s9,s10
	c.add	s8,t1
	c.xor	a5,s0
	xor	a6,a6,s5
	c.add	a6,s8
	srli	t1,s9,0000001B
	slli	s8,s9,00000005
	xor	t5,a5,t5
	xor	t4,t5,t4
	or	s8,s8,t1
	c.add	s8,a6
	slli	a5,t4,00000001
	srli	a6,s5,00000002
	srli	t4,t4,0000001F
	c.slli	s5,1E
	or	s5,s5,a6
	or	t4,t4,a5
	add	a6,t4,s2
	xor	a5,s7,s5
	xor	s1,s1,t2
	xor	a5,a5,s9
	xor	t3,s1,t3
	c.add	s6,a6
	c.add	s6,a5
	srli	a6,s8,0000001B
	slli	a5,s8,00000005
	xor	a3,t3,a3
	or	a5,a5,a6
	slli	t3,a3,00000001
	c.srli	a3,0000001F
	c.add	s6,a5
	or	a3,t3,a3
	srli	a5,s9,00000002
	c.slli	s9,1E
	or	s9,s9,a5
	c.add	a3,s2
	c.add	s7,a3
	xor	a3,s5,s9
	xor	a3,a3,s8
	c.xor	s0,a2
	xor	a7,s0,a7
	c.add	s7,a3
	slli	a5,s6,00000005
	srli	a3,s6,0000001B
	c.or	a5,a3
	xor	t6,a7,t6
	c.add	s7,a5
	slli	a7,t6,00000001
	srli	a5,s8,00000002
	srli	t6,t6,0000001F
	c.slli	s8,1E
	or	s8,s8,a5
	xor	t2,t2,a4
	or	t6,a7,t6
	xor	s11,s9,s8
	c.add	t6,s2
	xor	a1,t2,a1
	xor	s11,s11,s6
	slli	a5,s7,00000005
	srli	a3,s7,0000001B
	xor	t4,a1,t4
	c.add	s5,t6
	c.add	s5,s11
	c.or	a5,a3
	slli	a1,t4,00000001
	srli	t4,t4,0000001F
	c.add	s5,a5
	c.add	s3,s2
	srli	a5,s6,00000002
	or	t4,a1,t4
	c.slli	s6,1E
	or	s6,s6,a5
	c.add	t4,s3
	c.add	s9,t4
	xor	t4,s8,s6
	xor	t4,t4,s7
	slli	a5,s5,00000005
	srli	a4,s5,0000001B
	c.or	a5,a4
	c.add	s9,t4
	c.add	s9,a5
	c.lw	a0,12(a5)
	c.lwsp	a2,00000114
	sw	s9,a0,+00000008
	c.add	s5,a5
	srli	a5,s7,00000002
	c.slli	s7,1E
	or	s7,a5,s7
	c.lw	a0,20(a5)
	c.add	s4,s7
	sw	s5,a0,+0000000C
	c.add	s6,a5
	c.lw	a0,24(a5)
	sw	s4,a0,+00000010
	sw	s6,a0,+00000014
	c.add	s8,a5
	sw	s8,a0,+00000018
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

;; mbedtls_sha1_update.part.0: 2309949E
;;   Called from:
;;     23099562 (in mbedtls_sha1_update)
;;     230995EC (in mbedtls_sha1_finish)
mbedtls_sha1_update.part.0 proc
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
	bgeu	a5,a2,00000000230994CA

l230994C4:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l230994CA:
	beq	s3,zero,00000000230994FC

l230994CE:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,00000000230994FC

l230994DA:
	addi	s5,s1,+0000001C
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,00000000230A382C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,0000000023097EC6
	c.add	s2,s4
	c.li	s3,00000000

l230994FC:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	0000000023099512

l23099508:
	c.mv	a0,s1
	jal	ra,0000000023097EC6
	addi	s4,s4,-00000040

l23099512:
	sub	a1,s6,s4
	bltu	s5,s4,0000000023099508

l2309951A:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,000000002309954C

l23099530:
	addi	a0,s1,+0000001C
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

l2309954C:
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

;; mbedtls_sha1_update: 23099560
;;   Called from:
;;     230968D4 (in sha1_update_wrap)
;;     230995E2 (in mbedtls_sha1_finish)
;;     230996B8 (in mbedtls_sha1)
mbedtls_sha1_update proc
	c.beqz	a2,0000000023099566

l23099562:
	jal	zero,000000002309949E

l23099566:
	c.jr	ra

;; mbedtls_sha1_finish: 23099568
;;   Called from:
;;     230968D0 (in sha1_finish_wrap)
;;     230996C0 (in mbedtls_sha1)
mbedtls_sha1_finish proc
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
	bltu	a5,a2,0000000023099690

l230995D0:
	addi	a5,zero,+00000038

l230995D4:
	lui	a1,000230CA
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,-000006A8
	jal	ra,0000000023099560
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,000000002309949E
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
	c.lwsp	t3,00000020
	sb	a5,s1,+00000010
	lhu	a5,s0,+0000001A
	sb	a5,s1,+00000011
	c.lw	s0,24(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000012
	c.lw	s0,24(a5)
	c.lwsp	s8,00000004
	sb	a5,s1,+00000013
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23099690:
	addi	a5,zero,+00000078
	c.j	00000000230995D4

;; mbedtls_sha1: 23099696
mbedtls_sha1 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000014
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a1,00000084
	c.mv	s0,a2
	jal	ra,0000000023097E5A
	c.addi4spn	a0,00000014
	jal	ra,0000000023097E8A
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000014
	c.mv	a2,a1
	c.mv	a1,s1
	jal	ra,0000000023099560
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,0000000023099568
	c.addi4spn	a0,00000014
	jal	ra,0000000023097E64
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; mbedtls_ssl_ciphersuite_from_id: 230996D4
;;   Called from:
;;     23099740 (in mbedtls_ssl_list_ciphersuites)
;;     23099766 (in mbedtls_ssl_get_ciphersuite_name)
;;     23099C9A (in mbedtls_ssl_handshake_client_step)
;;     2309BF18 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_ciphersuite_from_id proc
	lui	a5,000230CA
	addi	a5,a5,-00000668

l230996DC:
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230996E6

l230996E0:
	c.li	a5,00000000

l230996E2:
	c.mv	a0,a5
	c.jr	ra

l230996E6:
	beq	a4,a0,00000000230996E2

l230996EA:
	addi	a5,a5,+00000020
	c.j	00000000230996DC

;; mbedtls_ssl_list_ciphersuites: 230996F0
;;   Called from:
;;     2308BEEC (in mbedtls_ssl_config_defaults)
mbedtls_ssl_list_ciphersuites proc
	lui	a5,0004200F
	lw	a4,a5,+00000720
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	lui	s4,0004201F
	c.beqz	a4,0000000023099724

l2309970E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	addi	a0,s4,-000006F4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23099724:
	addi	s0,s4,-000006F4
	lui	s1,000230CA
	addi	s2,a5,+00000720
	addi	s1,s1,-000005A8
	addi	s5,s0,+00000014
	c.j	000000002309974E

l2309973A:
	bgeu	s0,s5,0000000023099756

l2309973E:
	c.mv	a0,s3
	jal	ra,00000000230996D4
	c.beqz	a0,000000002309974C

l23099746:
	sw	s3,s0,+00000000
	c.addi	s0,00000004

l2309974C:
	c.addi	s1,00000004

l2309974E:
	lw	s3,s1,+00000000
	bne	s3,zero,000000002309973A

l23099756:
	c.li	a5,00000001
	sw	zero,s0,+00000000
	sw	a5,s2,+00000000
	c.j	000000002309970E

;; mbedtls_ssl_get_ciphersuite_name: 23099762
;;   Called from:
;;     2308B130 (in mbedtls_ssl_derive_keys)
mbedtls_ssl_get_ciphersuite_name proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230996D4
	c.beqz	a0,0000000023099774

l2309976C:
	c.lw	a0,4(a0)

l2309976E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23099774:
	lui	a0,000230B6
	addi	a0,a0,+00000434
	c.j	000000002309976E

;; mbedtls_ssl_get_ciphersuite_sig_pk_alg: 2309977E
;;   Called from:
;;     2309BFA6 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_get_ciphersuite_sig_pk_alg proc
	lbu	a0,a0,+0000000A
	c.li	a5,0000000A
	bltu	a5,a0,00000000230997A8

l23099788:
	c.li	a5,00000001
	sll	a5,a5,a0
	andi	a4,a5,+0000008E
	c.li	a0,00000001
	c.bnez	a4,00000000230997AA

l23099796:
	andi	a4,a5,+00000600
	c.li	a0,00000002
	c.bnez	a4,00000000230997AA

l2309979E:
	c.andi	a5,00000010
	sltu	a0,zero,a5
	c.slli	a0,02
	c.jr	ra

l230997A8:
	c.li	a0,00000000

l230997AA:
	c.jr	ra

;; mbedtls_ssl_own_key: 230997AC
mbedtls_ssl_own_key proc
	c.lw	a0,48(a5)
	c.beqz	a5,00000000230997B4

l230997B0:
	c.lw	a5,8(a5)
	c.bnez	a5,00000000230997BA

l230997B4:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,00000000230997BC

l230997BA:
	c.lw	a5,4(a5)

l230997BC:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_hs_hdr_len.isra.0: 230997C0
mbedtls_ssl_hs_hdr_len.isra.0 proc
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,00000000230997CC

l230997C8:
	c.li	a0,0000000C
	c.jr	ra

l230997CC:
	c.li	a0,00000004
	c.jr	ra

;; mbedtls_ssl_handshake_client_step: 230997D0
;;   Called from:
;;     2308B8B6 (in mbedtls_ssl_handshake_step)
mbedtls_ssl_handshake_client_step proc
	c.addi16sp	FFFFFF60
	c.swsp	ra,000000CC
	c.swsp	s0,0000004C
	c.swsp	s1,000000C8
	c.swsp	s2,00000048
	c.swsp	s3,000000C4
	c.swsp	s4,00000044
	c.swsp	s5,000000C0
	c.swsp	s6,00000040
	c.swsp	s7,000000BC
	c.swsp	s8,0000003C
	c.swsp	s9,000000B8
	c.swsp	s10,00000038
	c.swsp	s11,000000B4
	c.lw	a0,4(a5)
	c.li	a4,00000010
	beq	a5,a4,0000000023099918

l230997F4:
	c.lw	a0,48(a4)
	c.mv	s11,a0
	beq	a4,zero,0000000023099918

l230997FC:
	lui	a4,000230CA
	c.lui	a3,00001000
	lui	s1,000230C8
	addi	a4,a4,-00000230
	addi	a3,a3,-00000331
	addi	a2,s1,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.mv	a0,s11
	jal	ra,000000002308B43A
	c.mv	s0,a0
	c.bnez	a0,000000002309988A

l23099822:
	lw	a5,s11,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,0000000023099868

l2309982E:
	lw	a4,s11,+00000004
	c.li	a5,0000000C
	bne	a4,a5,0000000023099848

l23099838:
	lw	a5,s11,+00000030
	lw	a5,a5,+00000158
	c.beqz	a5,0000000023099848

l23099842:
	c.li	a5,00000011
	sw	a5,s11,+00000004

l23099848:
	lw	a5,s11,+00000004
	c.li	a4,00000011
	bgeu	a4,a5,0000000023099856

l23099852:
	jal	zero,000000002309B222

l23099856:
	lui	a3,000230CA
	slli	a4,a5,00000002
	addi	a3,a3,-0000027C
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.jr	a4

l23099868:
	lw	a5,s11,+00000030
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,000000002309982E

l23099876:
	c.mv	a0,s11
	jal	ra,000000002308C786
	c.beqz	a0,000000002309982E

l2309987E:
	c.mv	s0,a0
	c.j	000000002309988A

l23099882:
	c.li	a4,00000001
	sw	a4,s11,+00000004
	c.mv	s0,a5

l2309988A:
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
	c.lwsp	s9,0000011C
	c.lwsp	s5,0000013C
	c.lwsp	a7,0000015C
	c.lwsp	a3,0000017C
	c.addi16sp	000000A0
	c.jr	ra

l230998AA:
	lui	a4,000230CA
	addi	a4,a4,-0000021C
	addi	a3,zero,+000002CD
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lw	a5,s11,+00000000
	c.lw	a5,24(a4)
	c.bnez	a4,00000000230998EA

l230998CA:
	lui	a4,000230CA
	addi	a4,a4,-00000204
	addi	a3,zero,+000002D1
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,-00000400
	c.j	000000002309988A

l230998EA:
	lbu	a4,a5,+00000072
	sw	a4,s11,+00000008
	lbu	a4,a5,+00000073
	sw	a4,s11,+0000000C
	lbu	a0,a5,+00000070
	c.bnez	a0,0000000023099920

l23099900:
	lui	a4,000230CA
	addi	a4,a4,-000001F4
	addi	a3,zero,+000002E0
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4

l23099918:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002309988A

l23099920:
	c.lw	a5,116(a2)
	lw	s5,s11,+000000A0
	lbu	a1,a5,+00000071
	c.srli	a2,00000001
	addi	a3,s5,+00000004
	c.andi	a2,00000001
	jal	ra,000000002308C054
	lbu	a5,s5,+00000004
	lbu	a6,s5,+00000005
	lui	a4,000230CA
	addi	a4,a4,-0000019C
	addi	a3,zero,+000002F3
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lw	a5,s11,+00000000
	lw	s2,s11,+00000030
	lhu	a4,a5,+00000074
	c.andi	a4,00000002
	beq	a4,zero,0000000023099C0A

l23099968:
	lw	a4,s2,+00000024
	beq	a4,zero,0000000023099C0A

l23099970:
	lw	a1,s11,+00000030
	addi	a5,s5,+00000006
	addi	a2,zero,+00000020
	addi	a1,a1,+000000D8
	c.mv	a0,a5
	c.swsp	a5,0000008C
	jal	ra,00000000230A382C
	c.lwsp	t3,000000E4
	lui	a4,000230CA
	addi	a6,zero,+00000020
	addi	a4,a4,-00000178
	c.li	a1,00000003
	addi	a3,zero,+000002FC
	addi	a2,s1,+00000254
	c.mv	a0,s11
	jal	ra,0000000023093F06
	lw	a1,s11,+0000002C
	c.li	a5,00000010
	lw	a6,a1,+00000008
	addi	a4,a6,-00000010
	bltu	a5,a4,00000000230999C2

l230999B8:
	lw	a5,s11,+00000030
	lw	a5,a5,+00000148
	c.bnez	a5,00000000230999C4

l230999C2:
	c.li	a6,00000000

l230999C4:
	c.lw	a1,100(a5)
	c.beqz	a5,00000000230999F0

l230999C8:
	c.lw	a1,104(a5)
	c.beqz	a5,00000000230999F0

l230999CC:
	lw	a5,s11,+00000000
	addi	a2,zero,+00000020
	c.addi	a1,0000000C
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.jalr	a4
	c.mv	s0,a0
	bne	a0,zero,000000002309988A

l230999E2:
	lw	a5,s11,+0000002C
	addi	a4,zero,+00000020
	addi	a6,zero,+00000020
	c.sw	a5,8(a4)

l230999F0:
	addi	s0,s5,+00000027
	sb	a6,s5,+00000026
	c.li	a5,00000000

l230999FA:
	bne	a6,a5,0000000023099C40

l230999FE:
	lui	a4,000230CA
	c.mv	a5,a6
	addi	a4,a4,-0000015C
	addi	a3,zero,+00000331
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	add	s4,s0,a6
	c.swsp	a6,0000008C
	jal	ra,0000000023093DF4
	c.lwsp	t3,00000008
	lui	a4,000230CA
	c.mv	a5,s0
	addi	a4,a4,-00000138
	addi	a3,zero,+00000332
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093F06
	lw	a5,s11,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,0000000023099A72

l23099A46:
	lw	a4,s11,+00000030
	addi	s0,s4,+00000001
	c.lw	a4,36(a5)
	bne	a5,zero,0000000023099C56

l23099A54:
	lui	a4,000230CA
	addi	a4,a4,-0000011C
	addi	a3,zero,+0000033C
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	sb	zero,s4,+00000000
	c.mv	s4,s0

l23099A72:
	lw	a4,s11,+0000000C
	lw	a5,s11,+00000000
	addi	s3,s4,+00000002
	c.slli	a4,02
	c.add	a5,a4
	lw	s2,a5,+00000000
	c.li	s0,00000000
	lui	s6,000230CA

l23099A8C:
	lw	a0,s2,+00000000
	bne	a0,zero,0000000023099C9A

l23099A94:
	c.li	a5,FFFFFFFF
	sb	a5,s3,+00000001
	addi	a5,s0,+00000001
	srli	a4,a5,00000007
	sb	zero,s3,+00000000
	sb	a4,s4,+00000000
	slli	a4,a5,00000001
	sb	a4,s4,+00000001
	lui	a4,000230CA
	addi	a4,a4,-000000C4
	addi	a3,zero,+00000396
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lui	a4,000230CA
	c.li	a5,00000001
	addi	a4,a4,-000000A0
	addi	a3,zero,+000003B5
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lui	a4,000230CA
	c.li	a5,00000000
	addi	a4,a4,-00000080
	addi	a3,zero,+000003B7
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	a5,00000001
	sb	a5,s3,+00000002
	sb	zero,s3,+00000003
	lw	a5,s11,+000000B4
	addi	s4,s3,+00000004
	addi	s6,s3,+00000006
	c.li	s7,00000000
	c.beqz	a5,0000000023099B6C

l23099B18:
	lw	s0,s11,+000000A0
	c.lui	a4,00004000
	addi	a2,s1,+00000254
	c.add	s0,a4
	lui	a4,000230CA
	addi	a4,a4,-00000060
	addi	a3,zero,+00000048
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lw	a0,s11,+000000B4
	jal	ra,00000000230A4220
	c.mv	a2,a0
	bltu	s0,s6,0000000023099B52

l23099B46:
	addi	s7,a0,+00000009
	sub	s0,s0,s6
	bgeu	s0,s7,0000000023099CFA

l23099B52:
	lui	a4,000230CA
	addi	a4,a4,-00000030
	addi	a3,zero,+0000004E
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	s7,00000000

l23099B6C:
	lw	a5,s11,+00000000
	c.li	a4,00000003
	lbu	a3,a5,+00000071
	c.li	a5,00000000
	bne	a3,a4,0000000023099D66

l23099B7C:
	lui	a4,000230CA
	addi	a4,a4,-0000001C
	addi	a3,zero,+000000B2
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s2,s11,+000000A0
	jal	ra,0000000023093DF4
	lw	a5,s11,+00000000
	lw	s9,a5,+00000058
	c.li	a5,00000000

l23099BA2:
	slli	a4,a5,00000001
	c.add	a4,s9
	c.lw	a4,0(a4)
	bne	a4,zero,0000000023099D48

l23099BAE:
	addi	s0,s7,+00000002
	c.lui	a4,00004000
	c.add	s0,s4
	c.add	a4,s2
	bltu	a4,s0,0000000023099D4C

l23099BBC:
	c.sub	a4,s0
	c.addi	a5,00000006
	bltu	a4,a5,0000000023099D4C

l23099BC4:
	addi	s8,s0,+00000006
	c.li	a5,00000000
	c.li	s10,00000001

l23099BCC:
	slli	a4,a5,00000001
	c.add	a4,s9
	c.lw	a4,0(a0)
	addi	s2,a5,+00000002
	bne	a0,zero,0000000023099F24

l23099BDC:
	c.li	a4,0000000D
	sb	a4,s0,+00000001
	andi	a4,a5,+000000FF
	addi	a3,a4,+00000002
	srli	s2,s2,00000008
	sb	a3,s0,+00000003
	srli	a3,a5,00000008
	sb	zero,s0,+00000000
	sb	s2,s0,+00000002
	sb	a3,s0,+00000004
	sb	a4,s0,+00000005
	c.addi	a5,00000006
	c.j	0000000023099D66

l23099C0A:
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.li	a2,00000004
	addi	a1,s2,+000000D8
	c.jalr	a4
	c.mv	s0,a0
	c.bnez	a0,0000000023099C30

l23099C1A:
	lw	a5,s11,+00000000
	c.li	a2,0000001C
	addi	a1,s2,+000000DC
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.jalr	a4
	c.mv	s0,a0
	beq	a0,zero,0000000023099970

l23099C30:
	lui	a4,000230CB
	c.mv	a5,s0
	addi	a4,a4,-00000758
	addi	a3,zero,+000002F7
	c.j	0000000023099F16

l23099C40:
	lw	a4,s11,+0000002C
	c.add	a4,a5
	lbu	a3,a4,+0000000C
	add	a4,s5,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000027
	c.j	00000000230999FA

l23099C56:
	lbu	a6,a4,+00000028
	lui	a4,000230CA
	addi	a4,a4,-00000100
	addi	a3,zero,+00000343
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093F06
	lw	a5,s11,+00000030
	c.mv	a0,s0
	lbu	a5,a5,+00000028
	sb	a5,s4,+00000000
	lw	a5,s11,+00000030
	lbu	a2,a5,+00000028
	c.lw	a5,36(a1)
	jal	ra,00000000230A382C
	lw	a5,s11,+00000030
	lbu	s4,a5,+00000028
	c.add	s4,s0
	c.j	0000000023099A72

l23099C9A:
	jal	ra,00000000230996D4
	c.beqz	a0,0000000023099CF6

l23099CA0:
	lw	a5,s11,+00000000
	c.lw	a0,16(a3)
	lbu	a4,a5,+00000071
	blt	a4,a3,0000000023099CF6

l23099CAE:
	lbu	a4,a5,+00000073
	c.lw	a0,24(a3)
	blt	a3,a4,0000000023099CF6

l23099CB8:
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,0000000023099CC8

l23099CC0:
	lbu	a5,a0,+0000001C
	c.andi	a5,00000004
	c.bnez	a5,0000000023099CF6

l23099CC8:
	lw	a5,s2,+00000000
	addi	a4,s6,-000000E8
	addi	a3,zero,+00000375
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	lw	a5,s2,+00000000
	c.addi	s0,00000001
	c.addi	s3,00000002
	c.srai	a5,00000008
	sb	a5,s3,+00000FFE
	lw	a5,s2,+00000000
	sb	a5,s3,+00000FFF

l23099CF6:
	c.addi	s2,00000004
	c.j	0000000023099A8C

l23099CFA:
	addi	a5,a0,+00000005
	c.srli	a5,00000008
	sb	a5,s3,+00000008
	andi	a5,a0,+000000FF
	addi	a4,a5,+00000005
	sb	a4,s3,+00000009
	addi	a4,a0,+00000003
	c.srli	a4,00000008
	sb	a4,s3,+0000000A
	addi	a4,a5,+00000003
	sb	a4,s3,+0000000B
	srli	a4,a0,00000008
	sb	zero,s3,+00000006
	sb	zero,s3,+00000007
	sb	zero,s3,+0000000C
	sb	a4,s3,+0000000D
	sb	a5,s3,+0000000E
	lw	a1,s11,+000000B4
	addi	a0,s3,+0000000F
	jal	ra,00000000230A382C
	c.j	0000000023099B6C

l23099D48:
	c.addi	a5,00000002
	c.j	0000000023099BA2

l23099D4C:
	lui	a4,000230CA
	addi	a4,a4,-00000030
	addi	a3,zero,+000000C0
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	a5,00000000

l23099D66:
	c.add	s7,a5
	lw	a5,s11,+00000000
	lhu	a4,a5,+00000074
	c.li	a5,00000000
	andi	a4,a4,+000001C0
	c.beqz	a4,0000000023099DC6

l23099D78:
	lw	s2,s11,+000000A0
	addi	s0,s7,+00000002
	c.lui	a5,00004000
	lui	a4,000230CA
	c.add	s0,s4
	c.add	s2,a5
	addi	a4,a4,+00000018
	addi	a3,zero,+000001B8
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	bltu	s2,s0,0000000023099DAC

l23099DA2:
	sub	s2,s2,s0
	c.li	a5,00000004
	bltu	a5,s2,0000000023099F36

l23099DAC:
	lui	a4,000230CA
	addi	a4,a4,-00000030
	addi	a3,zero,+000001BC
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	a5,00000000

l23099DC6:
	c.add	s7,a5
	lw	a5,s11,+00000000
	c.li	s0,00000000
	c.lw	a5,96(a5)
	c.beqz	a5,0000000023099E30

l23099DD2:
	lui	a4,000230CA
	addi	a4,a4,+0000004C
	addi	a3,zero,+0000026C
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s8,s11,+000000A0
	jal	ra,0000000023093DF4
	lw	a5,s11,+00000000
	lw	s2,a5,+00000060

l23099DF6:
	lw	a0,s2,+00000000
	bne	a0,zero,0000000023099F5A

l23099DFE:
	addi	s2,s7,+00000002
	c.lui	a5,00004000
	c.add	s2,s4
	c.add	a5,s8
	bltu	a5,s2,0000000023099E16

l23099E0C:
	sub	a5,a5,s2
	c.addi	s0,00000006
	bgeu	a5,s0,0000000023099F6A

l23099E16:
	lui	a4,000230CA
	addi	a4,a4,-00000030
	addi	a3,zero,+00000273
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	s0,00000000

l23099E30:
	lw	a5,s11,+00000000
	c.add	s0,s7
	c.li	s7,00000000
	lhu	a5,a5,+00000074
	andi	a5,a5,+00000200
	c.beqz	a5,0000000023099E9A

l23099E42:
	lw	s9,s11,+000000A0
	c.lui	a5,00004000
	addi	s2,s0,+00000002
	c.add	s9,a5
	lw	a5,s11,+0000002C
	lui	a4,000230CA
	c.add	s2,s4
	addi	a4,a4,+00000070
	addi	a3,zero,+0000023F
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s8,a5,+00000068
	jal	ra,0000000023093DF4
	bltu	s9,s2,0000000023099E80

l23099E74:
	addi	s7,s8,+00000004
	sub	s9,s9,s2
	bgeu	s9,s7,0000000023099FD6

l23099E80:
	lui	a4,000230CA
	addi	a4,a4,-00000030
	addi	a3,zero,+00000243
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.li	s7,00000000

l23099E9A:
	c.add	s0,s7
	lui	a4,000230CA
	c.mv	a5,s0
	addi	a4,a4,+000000C4
	addi	a3,zero,+000003FF
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	c.beqz	s0,0000000023099EC8

l23099EB8:
	srli	a5,s0,00000008
	sb	a5,s3,+00000004
	sb	s0,s3,+00000005
	add	s4,s6,s0

l23099EC8:
	c.li	a5,00000016
	sw	a5,s11,+000000A4
	lw	a5,s11,+000000A0
	sub	s4,s4,s5
	sw	s4,s11,+000000A8
	c.li	a4,00000001
	sb	a4,a5,+00000000
	lw	a5,s11,+00000004
	c.addi	a5,00000001
	sw	a5,s11,+00000004
	lw	a5,s11,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,0000000023099EFC

l23099EF6:
	c.mv	a0,s11
	jal	ra,000000002308B60E

l23099EFC:
	c.mv	a0,s11
	jal	ra,000000002308C080
	c.mv	s0,a0
	beq	a0,zero,000000002309A02A

l23099F08:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,zero,+00000415

l23099F16:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093E84
	c.j	000000002309988A

l23099F24:
	jal	ra,000000002308BF82
	sb	a0,s8,+00000000
	sb	s10,s8,+00000001
	c.mv	a5,s2
	c.addi	s8,00000002
	c.j	0000000023099BCC

l23099F36:
	c.li	a5,00000001
	sb	zero,s0,+00000000
	sb	a5,s0,+00000001
	sb	zero,s0,+00000002
	sb	a5,s0,+00000003
	lw	a5,s11,+00000000
	c.lw	a5,116(a5)
	c.srli	a5,00000006
	c.andi	a5,00000007
	sb	a5,s0,+00000004
	c.li	a5,00000005
	c.j	0000000023099DC6

l23099F5A:
	jal	ra,00000000230A4220
	andi	a0,a0,+000000FF
	c.addi	a0,00000001
	c.add	s0,a0
	c.addi	s2,00000004
	c.j	0000000023099DF6

l23099F6A:
	c.li	a5,00000010
	sb	zero,s2,+00000000
	sb	a5,s2,+00000001
	lw	a5,s11,+00000000
	addi	s0,s2,+00000006
	lw	s8,a5,+00000060

l23099F80:
	lw	a0,s8,+00000000
	c.bnez	a0,0000000023099FB2

l23099F86:
	sub	s0,s0,s2
	addi	a5,s0,-00000006
	c.srli	a5,00000008
	sb	a5,s2,+00000004
	andi	a5,s0,+000000FF
	addi	a4,a5,-00000006
	sb	a4,s2,+00000005
	addi	a4,s0,-00000004
	c.srli	a4,00000008
	c.addi	a5,FFFFFFFC
	sb	a4,s2,+00000002
	sb	a5,s2,+00000003
	c.j	0000000023099E30

l23099FB2:
	jal	ra,00000000230A4220
	sb	a0,s0,+00000000
	lw	a1,s8,+00000000
	andi	a2,a0,+000000FF
	addi	a0,s0,+00000001
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000000
	c.addi	s8,00000004
	c.addi	a5,00000001
	c.add	s0,a5
	c.j	0000000023099F80

l23099FD6:
	addi	a5,zero,+00000023
	sb	a5,s2,+00000001
	srli	a5,s8,00000008
	sb	zero,s2,+00000000
	sb	a5,s2,+00000002
	sb	s8,s2,+00000003
	lw	a5,s11,+0000002C
	c.lw	a5,100(a5)
	c.beqz	a5,000000002309A026

l23099FF6:
	beq	s8,zero,000000002309A026

l23099FFA:
	lui	a4,000230CA
	c.mv	a5,s8
	addi	a2,s1,+00000254
	c.mv	a0,s11
	addi	a4,a4,+000000A0
	addi	a3,zero,+00000254
	c.li	a1,00000003
	jal	ra,0000000023093DF4
	lw	a5,s11,+0000002C
	c.mv	a2,s8
	addi	a0,s2,+00000004
	c.lw	a5,100(a1)
	jal	ra,00000000230A382C
	c.j	0000000023099E9A

l2309A026:
	c.li	s7,00000004
	c.j	0000000023099E9A

l2309A02A:
	lui	a4,000230CA
	addi	a4,a4,+000000F0
	addi	a3,zero,+00000419
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	jal	zero,000000002309988A
2309A046                   37 A7 0C 23 13 07 87 10 93 06       7..#......
2309A050 20 58 13 86 44 25 89 45 6E 85 EF 90 BF D9 6E 85  X..D%.En.....n.
2309A060 03 A9 4D 06 EF 40 8F A8 2A 84 09 C9 37 77 0C 23 ..M..@..*...7w.#
2309A070 AA 87 13 07 07 26 93 06 80 58 71 BD 03 A7 CD 06 .....&...Xq.....
2309A080 D9 47 63 03 F7 02 37 A7 0C 23 13 07 07 12 93 06 .Gc...7..#......
2309A090 00 5A 13 86 44 25 85 45 6E 85 65 74 EF 90 9F D5 .Z..D%.En.et....
2309A0A0 13 04 04 90 6F F0 6F FE 83 A7 0D 00 83 D7 47 07 ....o.o.......G.
2309A0B0 89 8B 63 8D 07 1C 03 47 09 00 8D 47 63 1B F7 1A ..c....G...Gc...
2309A0C0 37 A7 0C 23 13 07 C7 13 93 06 90 5A 13 86 44 25 7..#.......Z..D%
2309A0D0 89 45 6E 85 EF 90 1F D2 37 A7 0C 23 13 07 C7 15 .En.....7..#....
2309A0E0 93 06 A0 5A 13 86 44 25 89 45 6E 85 EF 90 9F D0 ...Z..D%.En.....
2309A0F0 03 A5 0D 00 EF F0 CF EC 03 A9 4D 06 37 A7 0C 23 ..........M.7..#
2309A100 13 07 47 17 2A 99 93 06 E0 52 13 86 44 25 89 45 ..G.*....R..D%.E
2309A110 6E 85 EF 90 3F CE 37 A7 0C 23 09 48 CA 87 13 07 n...?.7..#.H....
2309A120 87 19 93 06 60 53 13 86 44 25 8D 45 6E 85 EF 90 ....`S..D%.En...
2309A130 9F DD 83 A7 0D 00 CA 86 0C 18 F0 5B 68 10 05 82 ...........[h...
2309A140 05 8A EF 30 EF F6 B2 56 89 47 63 D0 D7 02 C2 57 ...0...V.Gc....W
2309A150 05 47 63 5C F7 00 03 A7 0D 00 03 46 07 07 63 46 .Gc\.......F..cF
2309A160 D6 00 03 47 17 07 63 59 F7 02 37 A7 0C 23 13 07 ...G..cY..7..#..
2309A170 47 19 93 06 30 54 13 86 44 25 85 45 6E 85 EF 90 G...0T..D%.En...
2309A180 7F C7 13 06 60 04 89 45 6E 85 65 74 EF 30 AF 8D ....`..En.et.0..
2309A190 13 04 04 18 6F F0 6F EF 93 09 39 00 03 49 29 00 ....o.o...9..I).
2309A1A0 37 A7 0C 23 CE 87 13 07 87 1A 4A 88 93 06 C0 54 7..#......J....T
2309A1B0 13 86 44 25 8D 45 6E 85 EF 90 FF D4 83 A7 4D 06 ..D%.En.......M.
2309A1C0 03 A7 0D 07 BA 97 B3 87 37 41 63 D9 27 03 37 A7 ........7Ac.'.7.
2309A1D0 0C 23 13 86 44 25 85 45 6E 85 13 07 07 1B 93 06 .#..D%.En.......
2309A1E0 10 55 EF 90 3F C1 13 06 20 03 89 45 6E 85 EF 30 .U..?... ..En..0
2309A1F0 8F 87 61 74 13 04 04 68 6F F0 2F E9 83 A7 0D 03 ..at...ho./.....
2309A200 C8 53 EF A0 0C F7 03 AA 0D 03 CA 85 05 45 EF 60 .S...........E.`
2309A210 6F A9 23 22 AA 02 83 A7 0D 03 C8 53 1D E1 37 77 o.#".......S..7w
2309A220 0C 23 CA 87 13 07 07 5B 93 06 C0 55 13 86 44 25 .#.....[...U..D%
2309A230 85 45 6E 85 EF 90 1F BC 61 74 13 04 04 10 6F F0 .En.....at....o.
2309A240 CF E4 4A 86 CE 85 EF 90 60 5E 83 A7 0D 03 6E 85 ..J.....`^....n.
2309A250 23 84 27 03 85 47 23 A2 FD 00 EF 10 6F C8 6E 85 #.'..G#.....o.n.
2309A260 EF 10 AF B5 37 A7 0C 23 13 07 47 1E 93 06 90 56 ....7..#..G....V
2309A270 D9 B3 83 A7 0D 03 C8 53 EF A0 AC EF 83 A7 0D 03 .......S........
2309A280 23 A2 07 02 83 A7 0D 03 23 84 07 02 03 A5 0D 00 #.......#.......
2309A290 EF F0 0F D3 03 A7 0D 08 93 07 65 02 63 67 F7 00 ..........e.cg..
2309A2A0 83 4A 09 00 89 47 63 8F FA 00 37 A7 0C 23 13 07 .J...Gc...7..#..
2309A2B0 07 12 93 06 A0 5B 13 86 44 25 85 45 6E 85 EF 90 .....[..D%.En...
2309A2C0 7F B3 05 BF 2A 99 37 A7 0C 23 09 48 13 07 47 20 ....*.7..#.H..G 
2309A2D0 CA 87 93 06 B0 5C 13 86 44 25 8D 45 6E 85 EF 90 .....\..D%.En...
2309A2E0 9F C2 83 A7 0D 00 CA 86 93 85 CD 00 F0 5B 13 85 .............[..
2309A2F0 8D 00 05 82 05 8A EF 30 AF DB 03 A7 0D 00 83 A8 .......0........
2309A300 8D 00 83 A6 CD 00 83 47 27 07 03 46 17 07 03 48 .......G'..F...H
2309A310 37 07 63 CA F8 00 83 45 07 07 63 C6 06 01 63 C4 7.c....E..c...c.
2309A320 15 01 63 54 D6 02 32 C4 03 47 07 07 13 86 44 25 ..cT..2..G....D%
2309A330 36 C0 3A C2 37 A7 0C 23 13 07 C7 21 93 06 80 5D 6.:.7..#...!...]
2309A340 85 45 6E 85 EF 90 1F AB 2D BD 03 47 29 00 83 47 .En.....-..G)..G
2309A350 39 00 93 06 50 5E 62 07 C2 07 5D 8F 83 47 59 00 9...P^b...]..GY.
2309A360 13 86 44 25 8D 45 5D 8F 83 47 49 00 6E 85 A2 07 ..D%.E]..GI.n...
2309A370 D9 8F 37 A7 0C 23 13 07 87 26 EF 90 BF A7 03 A5 ..7..#...&......
2309A380 0D 03 93 07 29 00 BE 85 13 06 00 02 13 05 85 0F ....)...........
2309A390 3E CE EF 90 A0 49 F2 47 37 A7 0C 23 83 49 29 02 >....I.G7..#.I).
2309A3A0 13 08 00 02 13 07 87 28 93 06 C0 5E 13 86 44 25 .......(...^..D%
2309A3B0 8D 45 6E 85 EF 90 3F B5 93 07 00 02 63 F9 37 01 .En...?.....c.7.
2309A3C0 37 A7 0C 23 13 07 07 12 93 06 00 5F ED B5 03 A5 7..#......._....
2309A3D0 0D 00 03 AB 0D 08 EF F0 AF BE 4E 95 93 07 75 02 ..........N...u.
2309A3E0 63 FB 67 03 B3 07 39 01 03 CA 67 02 83 C7 77 02 c.g...9...g...w.
2309A3F0 22 0A 33 6A FA 00 93 07 FA FF 63 F7 FA 00 93 07 ".3j......c.....
2309A400 8A 02 3E 95 63 05 AB 02 37 A7 0C 23 13 07 07 12 ..>.c...7..#....
2309A410 93 06 C0 5F 4D B5 13 05 65 02 01 4A 63 09 AB 00 ..._M...e..Jc...
2309A420 37 A7 0C 23 13 07 07 12 93 06 60 60 69 B5 B3 07 7..#......``i...
2309A430 39 01 83 CA 37 02 83 C7 47 02 13 8B 59 02 A2 0A 9...7...G...Y...
2309A440 4A 9B B3 EA FA 00 83 47 0B 00 95 C3 37 A7 0C 23 J......G....7..#
2309A450 13 07 47 2A 93 06 10 62 13 86 44 25 85 45 6E 85 ..G*...b..D%.En.
2309A460 65 74 EF 90 3F 99 13 04 04 F8 6F F0 0F C2 83 AB et..?.....o.....
2309A470 0D 04 56 85 EF F0 0F A6 23 A0 AB 00 83 A7 0D 04 ..V.....#.......
2309A480 8C 43 85 E1 37 A7 0C 23 D6 87 13 07 87 2C 93 06 .C..7..#.....,..
2309A490 C0 62                                           .b             

l2309A492:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023093DF4
	jal	zero,0000000023099918
2309A4A2       6E 85 EF 10 6F A0 37 A7 0C 23 CE 87 13 07   n...o.7..#....
2309A4B0 C7 2E 93 06 20 63 13 86 44 25 8D 45 6E 85 EF 90 .... c..D%.En...
2309A4C0 7F 93 93 0B 39 02 37 A7 0C 23 DE 87 4E 88 13 07 ....9.7..#..N...
2309A4D0 07 31 93 06 30 63 13 86 44 25 8D 45 6E 85 EF 90 .1..0c..D%.En...
2309A4E0 9F A2 83 A7 0D 03 83 A7 87 14 D5 EB 83 A7 4D 00 ..............M.
2309A4F0 4E 86 DE 85 85 07 23 A2 FD 00 83 A7 0D 03 23 A4 N.....#.......#.
2309A500 07 14 83 A7 CD 02 23 A0 57 01 83 A7 CD 02 23 A2 ......#.W.....#.
2309A510 07 00 83 A7 CD 02 23 A4 37 01 03 A5 CD 02 31 05 ......#.7.....1.
2309A520 EF 90 C0 30 83 A7 0D 03 83 A7 87 14 F9 E3 B7 A7 ...0............
2309A530 0C 23 93 87 C7 DC 37 A7 0C 23 13 07 47 34 93 06 .#....7..#..G4..
2309A540 70 65 13 86 44 25 8D 45 6E 85 EF 90 BF 8A 37 A7 pe..D%.En.....7.
2309A550 0C 23 D6 87 13 07 07 36 93 06 90 65 13 86 44 25 .#.....6...e..D%
2309A560 8D 45 6E 85 EF 90 1F 89 83 47 0B 00 37 A7 0C 23 .En......G..7..#
2309A570 6E 85 13 07 87 38 93 06 A0 65 13 86 44 25 8D 45 n....8...e..D%.E
2309A580 EF 90 5F 87 83 A7 CD 02 88 43 EF F0 AF 94 3D E5 .._......C....=.
2309A590 37 A7 0C 23 13 07 07 12 93 06 40 66 29 BB E3 87 7..#......@f)...
2309A5A0 09 F4 03 A5 CD 02 1C 41 E3 92 FA F4 5C 41 9D FF .......A....\A..
2309A5B0 1C 45 E3 9D F9 F2 4E 86 DE 85 31 05 EF 90 80 1E .E....N...1.....
2309A5C0 15 F5 B1 47 23 A2 FD 00 6E 85 EF 00 FF 92 AA 8B ...G#...n.......
2309A5D0 31 D9 37 A7 0C 23 AA 87 13 07 C7 32 93 06 10 65 1.7..#.....2...e
2309A5E0 13 86 44 25 85 45 6E 85 EF 90 DF 89 5E 84 6F F0 ..D%.En.....^.o.
2309A5F0 CF A9 B7 47 0C 23 93 87 87 FB 35 BF 5C 41 37 A7 ...G.#....5.\A7.
2309A600 0C 23 13 07 87 3A 93 06 80 66 13 86 44 25 8D 45 .#...:...f..D%.E
2309A610 6E 85 EF 90 2F FE 03 A7 CD 00 83 A7 0D 00 0A 07 n.../...........
2309A620 BA 97 9C 43 94 43 81 EA 37 A7 0C 23 13 07 07 12 ...C.C..7..#....
2309A630 93 06 F0 66 49 B1 03 A7 CD 02 91 07 10 43 E3 93 ...fI........C..
2309A640 C6 FE 23 22 07 00 37 A7 0C 23 93 89 89 02 D2 87 ..#"..7..#......
2309A650 13 07 07 3D 93 06 70 68 13 86 44 25 89 45 6E 85 ...=..ph..D%.En.
2309A660 C1 6A 4E 99 EF 90 0F F9 93 8A 1A F0 37 AD 0C 23 .jN.........7..#
2309A670 37 8B 0C 23 63 19 0A 02 83 A7 CD 0B 63 9E 07 20 7..#c.......c.. 
2309A680 83 A7 0D 00 13 07 00 02 83 D7 47 07 93 F7 07 03 ..........G.....
2309A690 63 94 E7 20 37 A7 0C 23 13 07 47 4C 93 06 00 72 c.. 7..#..GL...r
2309A6A0 13 86 44 25 65 A8 03 47 19 00 83 47 09 00 83 49 ..D%e..G...G...I
2309A6B0 29 00 22 07 5D 8F 93 17 87 00 21 83 5D 8F 93 17 ).".].....!.]...
2309A6C0 07 01 03 47 39 00 C1 83 22 07 33 67 37 01 93 19 ...G9...".3g7...
2309A6D0 87 00 21 83 33 E7 E9 00 93 19 07 01 93 D9 09 01 ..!.3...........
2309A6E0 93 8B 49 00 63 79 7A 01 37 A7 0C 23 13 07 07 12 ..I.cyz.7..#....
2309A6F0 93 06 20 69 C9 B6 41 47 63 8C E7 10 63 62 F7 02 .. i..AGc...cb..
2309A700 05 47 63 8B E7 08 37 A7 0C 23 13 07 C7 49 93 06 .Gc...7..#...I..
2309A710 D0 70 13 86 44 25 8D 45 6E 85 EF 90 AF ED A9 A8 .p..D%.En.......
2309A720 13 07 30 02 63 8A E7 0A E3 9F 57 FD 13 07 CD 3F ..0.c.....W....?
2309A730 93 06 90 69 13 06 4B 25 8D 45 6E 85 EF 90 8F EB ...i..K%.En.....
2309A740 85 47 63 95 F9 00 83 47 49 00 8D C7 37 A7 0C 23 .Gc....GI...7..#
2309A750 13 07 C7 41 93 06 C0 43 13 06 4B 25 85 45 6E 85 ...A...C..K%.En.
2309A760 EF 90 4F E9 6E 85 EF 20 BF BA 2A 84 19 C1 6F F0 ..O.n.. ..*...o.
2309A770 CF 91 41 B4 23 AE 3D 0B B3 09 3A 41 13 8A C9 FF ..A.#.=...:A....
2309A780 89 47 ED 19 5E 99 E3 E7 37 EF 37 A7 0C 23 13 07 .G..^...7.7..#..
2309A790 07 12 93 06 50 71 05 B6 37 A7 0C 23 13 07 07 44 ....Pq..7..#...D
2309A7A0 93 06 60 6A 13 86 44 25 8D 45 6E 85 3E CE EF 90 ..`j..D%.En.>...
2309A7B0 6F E4 83 A6 0D 00 03 D7 46 07 13 77 07 1C E3 0A o.......F..w....
2309A7C0 07 A2 F2 47 E3 97 F9 A2 FC 5A 03 47 49 00 99 83 ...G.....Z.GI...
2309A7D0 9D 8B E3 03 F7 FA 31 BC B7 A7 0C 23 13 87 47 46 ......1....#..GF
2309A7E0 93 06 A0 6D 13 86 44 25 8D 45 6E 85 EF 90 8F E0 ...m..D%.En.....
2309A7F0 83 A7 0D 00 83 D7 47 07 93 F7 07 20 E3 8B 07 9E ......G.... ....
2309A800 E3 99 09 9E 83 A7 0D 03 05 47 23 AC E7 14 AD B7 .........G#.....
2309A810 B7 A7 0C 23 13 87 47 48 93 06 30 70 13 86 44 25 ...#..GH..0p..D%
2309A820 8D 45 6E 85 EF 90 0F DD 83 A7 0D 00 03 AC 07 06 .En.............
2309A830 E3 01 0C 9C 8D 47 E3 FE 37 9B 83 47 59 00 83 46 .....G..7..GY..F
2309A840 49 00 A2 07 D5 8F 93 96 87 00 A1 83 D5 8F C2 07 I...............
2309A850 C1 83 93 86 E9 FF E3 9E D7 98 83 4C 69 00 93 86 ...........Li...
2309A860 D9 FF E3 98 DC 98 93 07 79 00 3E CE 03 25 0C 00 ........y.>..%..
2309A870 E3 01 05 98 EF 90 D0 1A 63 9E AC 00 83 25 0C 00 ........c....%..
2309A880 72 45 66 86 EF 80 10 72 11 E5 83 27 0C 00 23 AC rEf....r...'..#.
2309A890 FD 0A DD B5 11 0C D9 BF 37 A7 0C 23 13 07 C7 15 ........7..#....
2309A8A0 93 06 30 74 6F F0 2F F9 6E 85 EF 30 3F AF 6F E0 ..0to./.n..0?.o.
2309A8B0 1F FD 83 A7 0D 04 37 A7 0C 23 05 69 83 AA 07 00 ......7..#.i....
2309A8C0 13 07 47 4F 93 06 69 89 13 86 44 25 89 45 6E 85 ..GO..i...D%.En.
2309A8D0 EF 90 4F D2 83 C7 AA 00 05 4A 63 95 47 03 37 A7 ..O......Jc.G.7.
2309A8E0 0C 23 13 07 47 51 93 06 B9 89 13 86 44 25 89 45 .#..GQ......D%.E
2309A8F0 6E 85 EF 90 2F D0 83 A7 4D 00 85 07 23 A2 FD 00 n.../...M...#...
2309A900 6F E0 BF F8 6E 85 EF 30 7F 9E 2A 84 11 C9 37 77 o...n..0..*...7w
2309A910 0C 23 AA 87 13 07 07 26 93 06 99 8B 6F F0 AF DF .#.....&....o...
2309A920 03 A7 CD 06 D9 47 63 0A F7 00 37 A7 0C 23 13 07 .....Gc...7..#..
2309A930 87 53 93 06 F9 8B 6F F0 CF F5 83 A9 4D 06 B1 47 .S....o.....M..G
2309A940 03 C7 09 00 63 00 F7 04 83 C7 AA 00 15 47 93 F7 ....c........G..
2309A950 D7 0F 63 91 E7 02 83 A7 4D 00 37 A7 0C 23 23 A4 ..c.....M.7..##.
2309A960 4D 09 85 07 23 A2 FD 00 13 07 87 55 93 06 49 9D M...#......U..I.
2309A970 6F F0 6F EC 37 A7 0C 23 13 07 87 53 93 06 09 8D o.o.7..#...S....
2309A980 6F F0 2F F1 03 A5 0D 00 EF E0 9F E3 03 A8 0D 08 o./.............
2309A990 37 A7 0C 23 B3 87 A9 00 33 08 A8 40 13 07 87 57 7..#....3..@...W
2309A9A0 93 06 69 8D 13 86 44 25 8D 45 6E 85 EF 90 AF D5 ..i...D%.En.....
2309A9B0 37 77 0C 23 13 07 07 E2 93 06 B9 91 13 86 44 25 7w.#..........D%
2309A9C0 85 45 6E 85 65 74 EF 90 EF C2 13 04 04 40 6F E0 .En.et.......@o.
2309A9D0 DF EB 83 A7 0D 04 37 A7 0C 23 05 69 83 A9 07 00 ......7..#.i....
2309A9E0 13 07 C7 58 93 06 C9 9F 13 86 44 25 89 45 6E 85 ...X......D%.En.
2309A9F0 EF 90 4F C0 03 C7 A9 00 8D 46 93 07 B7 FF 93 F7 ..O......F......
2309AA00 F7 0F 63 F5 F6 00 AD 47 63 1A F7 00 37 A7 0C 23 ..c....Gc...7..#
2309AA10 85 66 13 07 C7 5A 93 86 46 A0 C1 BD 83 A7 8D 08 .f...Z..F.......
2309AA20 B1 E7 6E 85 EF 30 9F 8C AA 89 0D C1 37 77 0C 23 ..n..0......7w.#
2309AA30 AA 87 13 07 07 26 93 06 D9 A0 13 86 44 25 85 45 .....&......D%.E
2309AA40 6E 85 EF 90 2F C4 4E 84 6F E0 3F E4 03 A7 CD 06 n.../.N.o.?.....
2309AA50 D9 47 63 0A F7 00 37 A7 0C 23 13 07 07 5D 93 06 .Gc...7..#...]..
2309AA60 39 A1 6F F0 0F E3 85 47 23 A4 FD 08 83 A7 4D 00 9.o....G#.....M.
2309AA70 23 A8 0D 0A 85 07 23 A2 FD 00 83 A7 4D 06 03 C7 #.....#.....M...
2309AA80 07 00 B5 47 63 1E F7 06 85 47 23 A8 FD 0A B7 47 ...Gc....G#....G
2309AA90 0C 23 93 87 87 FB 37 A7 0C 23 85 6B 13 07 07 5F .#....7..#.k..._
2309AAA0 93 86 1B A2 13 86 44 25 8D 45 6E 85 EF 90 8F B4 ......D%.En.....
2309AAB0 83 A7 0D 0B 63 86 07 10 03 A5 0D 00 03 AA 4D 06 ....c.........M.
2309AAC0 23 A4 0D 08 EF E0 DF CF B3 07 AA 00 03 C9 07 00 #...............
2309AAD0 03 A7 0D 08 4A 95 93 07 25 00 63 78 F7 02 37 A7 ....J...%.cx..7.
2309AAE0 0C 23 13 07 07 5D 93 86 8B A4 13 86 44 25 85 45 .#...]......D%.E
2309AAF0 6E 85 61 74 EF 90 0F B0 13 04 04 58 6F E0 FF D8 n.at.......Xo...
2309AB00 B7 A7 0C 23 93 87 C7 DC 79 B7 83 A6 CD 00 0D 47 ...#....y......G
2309AB10 63 9C E6 06 33 07 AA 00 83 4A 17 00 D2 97 83 C7 c...3....J......
2309AB20 07 00 0D 05 A2 0A B3 09 AA 00 B3 EA FA 00 4E 8B ..............N.
2309AB30 37 AC 0C 23 93 8B 8B A5 B3 07 3B 41 63 E7 57 03 7..#......;Ac.W.
2309AB40 03 A5 0D 00 09 09 56 99 EF E0 9F C7 93 07 29 00 ......V.......).
2309AB50 3E 95 83 A7 0D 08 63 F9 A7 02 37 A7 0C 23 85 66 >.....c...7..#.f
2309AB60 13 07 07 5D 93 86 06 A6 49 B7 03 48 1B 00 83 47 ...]....I..H...G
2309AB70 0B 00 13 07 CC 60 DE 86 13 86 44 25 8D 45 6E 85 .....`....D%.En.
2309AB80 EF 90 4F A7 09 0B 4D BF 03 A5 0D 00 EF E0 5F C3 ..O...M......._.
2309AB90 4A 95 B3 07 AA 00 03 C9 17 00 83 C7 27 00 0D 05 J...........'...
2309ABA0 22 09 33 69 F9 00 83 A7 0D 08 4A 95 63 8A A7 00 ".3i......J.c...
2309ABB0 37 A7 0C 23 85 66 13 07 07 5D 93 86 D6 A6 35 B7 7..#.f...]....5.
2309ABC0 37 A7 0C 23 85 66 13 07 87 63 93 86 26 A7 6F F0 7..#.f...c..&.o.
2309ABD0 8F C6 37 A7 0C 23 05 69 13 07 87 65 93 06 19 A8 ..7..#.i...e....
2309ABE0 13 86 44 25 89 45 6E 85 EF 90 CF A0 83 A7 8D 08 ..D%.En.........
2309ABF0 9D EB 6E 85 EF 30 8F EF AA 89 09 C9 37 77 0C 23 ..n..0......7w.#
2309AC00 AA 87 13 07 07 26 93 06 79 A8 05 BD 03 A7 CD 06 .....&..y.......
2309AC10 D9 47 63 0A F7 00 37 A7 0C 23 13 07 47 67 93 06 .Gc...7..#..Gg..
2309AC20 D9 A8 6F F0 0F C7 03 A9 0D 00 23 A4 0D 08 4A 85 ..o.......#...J.
2309AC30 EF E0 1F B9 83 A7 0D 08 63 99 A7 00 83 A7 4D 06 ........c.....M.
2309AC40 03 C7 07 00 B9 47 63 04 F7 02 37 A7 0C 23 85 66 .....Gc...7..#.f
2309AC50 13 07 47 67 93 86 66 A9 13 86 44 25 85 45 6E 85 ..Gg..f...D%.En.
2309AC60 61 74 EF 90 2F 99 13 04 04 48 6F E0 1F C2 83 A7 at../....Ho.....
2309AC70 4D 00 85 07 23 A2 FD 00 83 57 49 07 89 8B 81 C7 M...#....WI.....
2309AC80 6E 85 EF 00 9F 93 37 A7 0C 23 85 66 13 07 47 69 n.....7..#.f..Gi
2309AC90 93 86 16 AA 6F F0 2F BA 6E 85 EF 20 0F E8 6F E0 ....o./.n.. ..o.
2309ACA0 1F BE 83 A7 0D 04 37 A7 0C 23 85 69 80 43 13 07 ......7..#.i.C..
2309ACB0 07 6B 93 86 C9 AA 13 86 44 25 89 45 6E 85 EF 90 .k......D%.En...
2309ACC0 6F 93 03 47 A4 00 85 47 63 1D F7 14 83 A7 0D 00 o..G...Gc.......
2309ACD0 03 A4 0D 03 03 A9 CD 00 F0 5B 83 C5 17 07 03 C5 .........[......
2309ACE0 07 07 13 0A 84 11 05 82 D2 86 05 8A EF 10 8F B6 ................
2309ACF0 83 A7 0D 00 93 05 A4 11 33 39 20 01 98 4F C8 4F ........39 ..O.O
2309AD00 13 06 E0 02 06 09 02 97 93 0A 49 00 2A 84 11 C9 ..........I.*...
2309AD10 37 A7 0C 23 AA 87 13 07 07 6D 93 06 90 7F 6F F0 7..#.....m....o.
2309AD20 8F 9F 83 A7 0D 03 13 07 00 03 23 AA E7 0C 83 A7 ..........#.....
2309AD30 CD 02 E8 4F 01 ED 37 A7 0C 23 13 07 87 6D 93 86 ...O..7..#...m..
2309AD40 19 80 13 86 44 25 89 45 6F F0 0F B5 85 45 13 05 ....D%.Eo....E..
2309AD50 C5 0B EF C0 BE D0 15 E1 37 A7 0C 23 13 07 07 6F ........7..#...o
2309AD60 93 86 B9 80 13 86 44 25 85 45 6E 85 65 74 EF 90 ......D%.En.et..
2309AD70 6F 88 13 04 04 30 6F E0 5F B1 03 A7 CD 02 83 A7 o....0o._.......
2309AD80 0D 00 03 A6 0D 03 68 4F 83 A6 0D 0A 83 A8 C7 01 ......hO........
2309AD90 03 A8 87 01 03 26 46 0D 91 67 B3 87 57 41 18 18 .....&F..g..WA..
2309ADA0 D6 96 D2 85 13 05 C5 0B EF C0 5E DB 2A 84 11 C9 ..........^.*...
2309ADB0 37 A7 0C 23 AA 87 13 07 07 71 93 86 59 81 6F F0 7..#.....q..Y.o.
2309ADC0 8F 95 89 47 63 1F F9 00 C2 57 03 A7 0D 0A 93 D6 ...Gc....W......
2309ADD0 87 00 23 02 D7 00 03 A7 0D 0A A3 02 F7 00 89 07 ..#.............
2309ADE0 3E D8 C2 57 41 47 6E 85 91 07 23 A4 FD 0A D9 47 >..WAGn...#....G
2309ADF0 23 A2 FD 0A 83 A7 0D 0A 23 80 E7 00 83 A7 4D 00 #.......#.....M.
2309AE00 85 07 23 A2 FD 00 EF 10 AF A7 2A 84 15 C1 37 87 ..#.......*...7.
2309AE10 0C 23 85 66 AA 87 13 07 47 C2 93 86 D6 B9 6F F0 .#.f....G.....o.
2309AE20 8F 8F 37 77 0C 23 13 07 07 E2 93 86 19 B9 79 B6 ..7w.#........y.
2309AE30 37 A7 0C 23 85 66 13 07 C7 72 93 86 16 BA 6F F0 7..#.f...r....o.
2309AE40 8F 9F 83 A7 0D 04 37 A7 0C 23 05 69 13 07 C7 74 ......7..#.i...t
2309AE50 93 06 29 BD 13 86 44 25 89 45 6E 85 83 A9 07 00 ..)...D%.En.....
2309AE60 02 D6 EF 80 3F F9 6E 85 EF 00 0F 89 2A 84 11 C9 ....?.n.....*...
2309AE70 37 A7 0C 23 AA 87 13 07 C7 32 93 06 69 BD 6F F0 7..#.....2..i.o.
2309AE80 8F 89 03 C7 A9 00 8D 46 93 07 B7 FF 93 F7 F7 0F .......F........
2309AE90 63 F5 F6 00 AD 47 63 1A F7 00 37 A7 0C 23 85 66 c....Gc...7..#.f
2309AEA0 13 07 87 76 93 86 06 BE 89 B4 83 A7 0D 0B 91 CF ...v............
2309AEB0 03 A9 0D 03 63 05 09 00 83 27 89 00 89 E7 83 A7 ....c....'......
2309AEC0 0D 00 FC 47 99 C3 9C 43 89 EB 37 A7 0C 23 85 66 ...G...C..7..#.f
2309AED0 13 07 87 76 93 86 76 BE 09 BC 6E 85 EF E0 1F 8D ...v..v...n.....
2309AEE0 1D E1 37 A7 0C 23 85 66 13 07 C7 78 93 86 E6 BE ..7..#.f...x....
2309AEF0 13 86 44 25 85 45 6E 85 65 74 EF 80 BF EF 13 04 ..D%.En.et......
2309AF00 04 A0 6F E0 9F 98 83 27 89 0C 0C 18 6E 85 82 97 ..o....'....n...
2309AF10 03 A7 CD 00 8D 47 63 1C F7 06 83 A7 0D 04 1D 47 .....Gc........G
2309AF20 9C 43 83 C5 97 00 83 A7 0D 0A 63 9D E5 04 15 47 .C........c....G
2309AF30 23 82 E7 00 6E 85 2E CE EF E0 5F 87 03 A4 0D 0A #...n....._.....
2309AF40 EF 10 6F 80 A3 02 A4 00 6E 85 EF E0 3F 86 83 A7 ..o.....n...?...
2309AF50 0D 00 03 A7 0D 0A F2 45 83 A8 C7 01 03 A8 87 01 .......E........
2309AF60 21 07 7C 10 81 46 10 18 EF C0 7E B6 2A 84 05 C9 !.|..F....~.*...
2309AF70 37 A7 0C 23 85 66 AA 87 13 07 07 7B 93 86 56 C4 7..#.f.....{..V.
2309AF80 6F E0 7F F9 11 47 23 82 E7 00 99 45 65 B7 37 77 o....G#....Ee.7w
2309AF90 0C 23 85 66 13 07 07 E2 93 86 D6 C3 05 B4 B2 57 .#.f...........W
2309AFA0 03 A7 0D 0A 6E 85 93 D6 87 00 23 03 D7 00 03 A7 ....n.....#.....
2309AFB0 0D 0A A3 03 F7 00 A1 07 23 A4 FD 0A D9 47 23 A2 ........#....G#.
2309AFC0 FD 0A 83 A7 0D 0A 3D 47 23 80 E7 00 83 A7 4D 00 ......=G#.....M.
2309AFD0 85 07 23 A2 FD 00 EF 10 AF 8A 2A 84 19 C9 37 87 ..#.......*...7.
2309AFE0 0C 23 85 66 AA 87 13 07 47 C2 93 86 46 C5 6F E0 .#.f....G...F.o.
2309AFF0 9F F2 37 A7 0C 23 85 66 13 07 07 7C 93 86 86 C5 ..7..#.f...|....
2309B000 6F F0 6F 83 6E 85 EF 20 6F D1 6F E0 5F 87 6E 85 o.o.n.. o.o._.n.
2309B010 EF 20 EF D9 6F E0 BF 86 37 A7 0C 23 85 6B 13 07 . ..o...7..#.k..
2309B020 C7 7D 93 86 CB C6 13 86 44 25 89 45 6E 85 EF 80 .}......D%.En...
2309B030 7F DC 6E 85 EF 30 8F AB 2A 84 11 C9 37 77 0C 23 ..n..0..*...7w.#
2309B040 AA 87 13 07 07 26 93 86 0B C7 6F E0 DF EC 03 A7 .....&....o.....
2309B050 CD 06 D9 47 63 0A F7 00 37 A7 0C 23 13 07 87 7F ...Gc...7..#....
2309B060 93 86 6B C7 6F F0 EF 82 03 AC 4D 06 91 47 03 47 ..k.o.....M..G.G
2309B070 0C 00 63 1C F7 00 03 A5 0D 00 83 AC 0D 08 EF E0 ..c.............
2309B080 2F F4 13 07 65 00 63 F4 EC 02 37 A7 0C 23 85 66 /...e.c...7..#.f
2309B090 13 07 87 7F 93 86 76 C8 13 86 44 25 85 45 6E 85 ......v...D%.En.
2309B0A0 65 74 EF 80 3F D5 13 04 04 20 6F E0 0F FE 2A 9C et..?.... o...*.
2309B0B0 83 47 5C 00 03 49 4C 00 83 49 0C 00 A2 07 B3 E7 .G\..IL..I......
2309B0C0 27 01 13 99 87 00 A1 83 B3 67 F9 00 13 99 07 01 '........g......
2309B0D0 13 59 09 01 4A 97 03 4B 1C 00 03 4A 2C 00 83 4A .Y..J..K...J,..J
2309B0E0 3C 00 63 89 EC 00 37 A7 0C 23 13 07 87 7F 93 86 <.c...7..#......
2309B0F0 4B C9 5D B7 37 B7 0C 23 CA 87 13 07 87 81 93 86 K.].7..#........
2309B100 8B C9 13 86 44 25 8D 45 6E 85 EF 80 BF CE 83 A7 ....D%.En.......
2309B110 0D 03 23 AC 07 14 B1 47 23 A2 FD 00 63 14 09 00 ..#....G#...c...
2309B120 6F E0 AF F6 03 A7 CD 02 7C 53 38 57 3E 97 63 94 o.......|S8W>.c.
2309B130 E7 04 83 A7 CD 02 E8 53 EF 90 BC 83 83 A7 CD 02 .......S........
2309B140 CA 85 05 45 23 A2 07 06 83 A7 CD 02 23 A4 07 06 ...E#.......#...
2309B150 EF 50 4F B5 AA 8B 05 E5 37 B7 0C 23 85 66 13 07 .PO.....7..#.f..
2309B160 C7 82 93 86 D6 CA 13 86 44 25 85 45 6E 85 EF 80 ........D%.En...
2309B170 7F C8 6F F0 6F 8C 23 80 07 00 85 07 4D BF 4A 86 ..o.o.#.....M.J.
2309B180 93 05 6C 00 EF 80 80 6A 83 A7 CD 02 E2 09 42 0B ..l....j......B.
2309B190 23 A2 77 07 83 A7 CD 02 B3 E9 69 01 B3 E9 59 01 #.w.......i...Y.
2309B1A0 23 A4 27 07 83 A7 CD 02 22 0A 05 69 B3 E9 49 01 #.'....."..i..I.
2309B1B0 37 B7 0C 23 23 A6 37 07 13 07 07 84 93 06 C9 CB 7..##.7.........
2309B1C0 13 86 44 25 8D 45 6E 85 EF 80 DF C2 83 A7 CD 02 ..D%.En.........
2309B1D0 37 B7 0C 23 13 07 87 86 23 A4 07 00 93 06 F9 CB 7..#....#.......
2309B1E0 6F E0 7F E5 6E 85 EF 30 EF DE 6F E0 4F E9 6E 85 o...n..0..o.O.n.
2309B1F0 EF 30 0F F4 6F E0 AF E8 37 B7 0C 23 85 66 13 07 .0..o...7..#.f..
2309B200 47 88 93 86 E6 D3 13 86 44 25 89 45 6E 85 EF 80 G.......D%.En...
2309B210 7F BE BD 47 6F F0 8F EE 6E 85 EF 00 DF 85 6F E0 ...Go...n.....o.
2309B220 CF E6                                           ..             

l2309B222:
	lui	a4,000230CB
	c.lui	a3,00001000
	addi	a4,a4,-0000076C
	addi	a3,a3,-000002B9
	jal	zero,000000002309A492

;; mbedtls_ssl_own_key: 2309B234
mbedtls_ssl_own_key proc
	c.lw	a0,48(a5)
	c.beqz	a5,000000002309B23C

l2309B238:
	c.lw	a5,8(a5)
	c.bnez	a5,000000002309B242

l2309B23C:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,000000002309B244

l2309B242:
	c.lw	a5,4(a5)

l2309B244:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_handshake_server_step: 2309B248
;;   Called from:
;;     2308B8B2 (in mbedtls_ssl_handshake_step)
mbedtls_ssl_handshake_server_step proc
	c.addi16sp	FFFFFEF0
	sw	ra,sp,+0000010C
	sw	s0,sp,+00000108
	sw	s1,sp,+00000104
	sw	s2,sp,+00000100
	c.swsp	s3,000000FC
	c.swsp	s4,0000007C
	c.swsp	s5,000000F8
	c.swsp	s6,00000078
	c.swsp	s7,000000F4
	c.swsp	s8,00000074
	c.swsp	s9,000000F0
	c.swsp	s10,00000070
	c.swsp	s11,000000EC
	c.lw	a0,4(a5)
	c.li	a4,00000010
	bne	a5,a4,000000002309B278

l2309B274:
	jal	zero,000000002309CEA8

l2309B278:
	c.lw	a0,48(a4)
	c.mv	s10,a0
	c.bnez	a4,000000002309B282

l2309B27E:
	jal	zero,000000002309CEA8

l2309B282:
	lui	a4,000230CB
	c.lui	a3,00001000
	lui	s4,000230C8
	addi	a4,a4,-000006F8
	addi	a3,a3,-00000122
	addi	a2,s4,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.mv	a0,s10
	jal	ra,000000002308B43A
	c.mv	s0,a0
	c.bnez	a0,000000002309B2F6

l2309B2A8:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,000000002309B2D4

l2309B2B4:
	lw	s7,s10,+00000004
	c.li	a5,00000012
	bgeu	a5,s7,000000002309B2C2

l2309B2BE:
	jal	zero,000000002309CE8C

l2309B2C2:
	lui	a4,000230CB
	slli	a5,s7,00000002
	addi	a4,a4,-00000744
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2309B2D4:
	lw	a5,s10,+00000030
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,000000002309B2B4

l2309B2E2:
	c.mv	a0,s10
	jal	ra,000000002308C786
	c.beqz	a0,000000002309B2B4

l2309B2EA:
	c.mv	s0,a0
	c.j	000000002309B2F6

l2309B2EE:
	c.li	a5,00000001
	sw	a5,s10,+00000004
	c.mv	s0,s7

l2309B2F6:
	c.mv	a0,s0
	lw	ra,sp,+0000010C
	lw	s0,sp,+00000108
	lw	s1,sp,+00000104
	lw	s2,sp,+00000100
	c.lwsp	t6,00000178
	c.lwsp	s11,00000198
	c.lwsp	s7,000001B8
	c.lwsp	s3,000001D8
	c.lwsp	a5,000001F8
	c.lwsp	a1,0000011C
	c.lwsp	t2,0000013C
	c.lwsp	gp,0000015C
	c.lwsp	t6,0000006C
	c.addi16sp	00000110
	c.jr	ra

l2309B31E:
	lui	a4,000230CB
	addi	a4,a4,-000006E4
	addi	a3,zero,+00000440
	addi	a2,s4,+00000254
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.li	a1,00000005
	c.mv	a0,s10
	jal	ra,000000002308C8CC
	c.mv	s0,a0
	c.beqz	a0,000000002309B35E

l2309B342:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000007D0
	addi	a3,zero,+00000450

l2309B350:
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093E84
	c.j	000000002309B2F6

l2309B35E:
	lw	a5,s10,+00000000
	lw	s0,s10,+00000058
	c.li	a6,00000005
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B372

l2309B370:
	c.li	a6,0000000D

l2309B372:
	lui	a4,000230CB
	c.mv	a5,s0
	addi	a4,a4,-000006CC
	addi	a3,zero,+0000045F
	addi	a2,s4,+00000254
	c.li	a1,00000004
	c.mv	a0,s10
	jal	ra,0000000023093F06
	lbu	a5,s0,+00000000
	lui	a4,000230CB
	addi	a4,a4,-000006BC
	addi	a3,zero,+0000046B
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lbu	a4,s0,+00000000
	c.li	a5,00000016
	beq	a4,a5,000000002309B3D2

l2309B3B2:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+0000046F

l2309B3BE:
	addi	a2,s4,+00000254

l2309B3C2:
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4

l2309B3CA:
	c.lui	s0,FFFF8000
	addi	s0,s0,+00000700
	c.j	000000002309B2F6

l2309B3D2:
	lw	a3,s10,+0000005C
	addi	a2,s4,+00000254
	c.li	a1,00000003
	lbu	a4,a3,+00000001
	lbu	a5,a3,+00000000
	c.mv	a0,s10
	c.slli	a4,08
	c.or	a4,a5
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	lui	a4,000230CB
	c.srli	a5,00000010
	addi	a4,a4,-0000067C
	addi	a3,zero,+00000474
	jal	ra,0000000023093DF4
	lbu	a6,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a4,000230CB
	addi	a4,a4,-00000658
	addi	a3,zero,+00000477
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+00000000
	addi	a3,s0,+00000001
	c.addi4spn	a1,0000002C
	c.lw	a5,116(a2)
	c.addi4spn	a0,00000028
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002308D8B0
	c.lwsp	s0,000001D4
	c.li	a5,00000002
	blt	a5,a4,000000002309B452

l2309B444:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000481
	c.j	000000002309B3BE

l2309B452:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B48A

l2309B45E:
	lw	a1,s10,+00000054
	lbu	a5,a1,+00000000
	c.bnez	a5,000000002309B46E

l2309B468:
	lbu	a5,a1,+00000001
	c.beqz	a5,000000002309B47C

l2309B46E:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000491
	c.j	000000002309B3BE

l2309B47C:
	lw	a0,s10,+00000090
	c.li	a2,00000006
	c.addi	a1,00000002
	c.addi	a0,00000002
	jal	ra,00000000230A382C

l2309B48A:
	lw	a4,s10,+0000005C
	lbu	a5,a4,+00000001
	lbu	s8,a4,+00000000
	c.slli	a5,08
	or	a5,a5,s8
	slli	s8,a5,00000008
	c.srli	a5,00000008
	or	s8,s8,a5
	c.slli	s8,10
	srli	s8,s8,00000010
	c.lui	a5,00004000
	bgeu	a5,s8,000000002309B4C0

l2309B4B2:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000004B3
	c.j	000000002309B3BE

l2309B4C0:
	lw	a5,s10,+00000000
	c.li	a1,00000005
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B4D0

l2309B4CE:
	c.li	a1,0000000D

l2309B4D0:
	c.add	a1,s8
	c.mv	a0,s10
	jal	ra,000000002308C8CC
	c.mv	s0,a0
	c.beqz	a0,000000002309B4EC

l2309B4DC:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000007D0
	addi	a3,zero,+000004B9
	c.j	000000002309B350

l2309B4EC:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B552

l2309B4F8:
	addi	a5,s8,+0000000D
	sw	a5,s10,+0000007C

l2309B500:
	lw	s1,s10,+00000064
	lui	a4,000230CB
	addi	a4,a4,-0000062C
	c.mv	a6,s8
	c.mv	a5,s1
	addi	a3,zero,+000004C8
	addi	a2,s4,+00000254
	c.li	a1,00000004
	c.mv	a0,s10
	jal	ra,0000000023093F06
	lw	a5,s10,+00000030
	c.mv	a2,s8
	c.mv	a1,s1
	lw	a5,a5,+000000C4
	c.mv	a0,s10
	c.jalr	a5
	lw	a5,s10,+00000000
	c.li	a4,00000004
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B540

l2309B53E:
	c.li	a4,0000000C

l2309B540:
	bgeu	s8,a4,000000002309B558

l2309B544:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000004D6
	c.j	000000002309B3BE

l2309B552:
	sw	zero,s10,+00000074
	c.j	000000002309B500

l2309B558:
	lbu	a5,s1,+00000000
	lui	a4,000230CB
	addi	a4,a4,-0000061C
	addi	a3,zero,+000004DA
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	beq	a4,a5,000000002309B58C

l2309B57E:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000004DE
	c.j	000000002309B3BE

l2309B58C:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000002
	addi	a3,zero,+000004E3
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	lbu	a4,s1,+00000003
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.or	a5,a4
	lui	a4,000230CB
	addi	a4,a4,-000005F8
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lbu	a5,s1,+00000001
	c.bnez	a5,000000002309B5EC

l2309B5BE:
	lw	a5,s10,+00000000
	c.li	a2,00000004
	lhu	a3,a5,+00000074
	c.andi	a3,00000002
	c.beqz	a3,000000002309B5CE

l2309B5CC:
	c.li	a2,0000000C

l2309B5CE:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a2
	beq	s8,a5,000000002309B5FA

l2309B5EC:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000004E9
	c.j	000000002309B3BE

l2309B5FA:
	c.beqz	a3,000000002309B678

l2309B5FC:
	lw	a3,s10,+00000064
	lbu	a4,a3,+00000005
	lbu	a5,a3,+00000004
	c.slli	a4,08
	c.or	a4,a5
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	lw	a4,s10,+00000030
	c.slli	a5,10
	c.srli	a5,00000010
	c.sw	a4,28(a5)
	lw	a4,s10,+00000030
	c.addi	a5,00000001
	c.sw	a4,32(a5)
	lw	a0,s10,+00000064
	lbu	a5,a0,+00000006
	c.beqz	a5,000000002309B650

l2309B630:
	lui	a4,000230CB
	addi	a4,a4,-000005D4
	addi	a3,zero,+00000515
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,-00000080
	c.j	000000002309B2F6

l2309B650:
	lbu	a5,a0,+00000007
	c.bnez	a5,000000002309B630

l2309B656:
	lbu	a5,a0,+00000008
	c.bnez	a5,000000002309B630

l2309B65C:
	addi	a1,a0,+00000009
	c.li	a2,00000003
	c.addi	a0,00000001
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002309B630

l2309B66A:
	lw	a5,s10,+00000000
	lhu	a4,a5,+00000074
	c.li	a5,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002309B67A

l2309B678:
	c.li	a5,00000004

l2309B67A:
	c.add	s1,a5
	sub	s8,s8,a5
	addi	a5,zero,+00000025
	bltu	a5,s8,000000002309B696

l2309B688:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000535
	c.j	000000002309B3BE

l2309B696:
	lui	a4,000230CB
	c.li	a6,00000002
	addi	a4,a4,-000005AC
	c.mv	a5,s1
	addi	a3,zero,+0000053C
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06
	lw	a5,s10,+00000000
	c.mv	a3,s1
	addi	a1,s10,+0000000C
	c.lw	a5,116(a2)
	addi	a0,s10,+00000008
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002308D8B0
	lw	a5,s10,+00000030
	lw	a4,s10,+00000008
	sw	a4,a5,+0000014C
	lw	a5,s10,+00000030
	lw	a6,s10,+0000000C
	sw	a6,a5,+00000150
	lw	a4,s10,+00000000
	lw	a5,s10,+00000008
	lbu	a7,a4,+00000072
	lbu	a3,a4,+00000073
	blt	a5,a7,000000002309B6FA

l2309B6F6:
	bge	a6,a3,000000002309B728

l2309B6FA:
	lui	a4,000230CB
	c.swsp	a3,00000000
	addi	a4,a4,-00000594
	addi	a3,zero,+0000054A
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	addi	a2,zero,+00000046
	c.li	a1,00000002
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002308D266
	addi	s0,s0,+00000180
	c.j	000000002309B2F6

l2309B728:
	lbu	a3,a4,+00000070
	bge	a3,a5,000000002309B73E

l2309B730:
	sw	a3,s10,+00000008
	lbu	a5,a4,+00000071

l2309B738:
	sw	a5,s10,+0000000C
	c.j	000000002309B746

l2309B73E:
	lbu	a5,a4,+00000071
	blt	a5,a6,000000002309B738

l2309B746:
	addi	s2,s1,+00000002
	lui	a4,000230CA
	c.mv	a5,s2
	addi	a6,zero,+00000020
	addi	a4,a4,-00000178
	addi	a3,zero,+0000055D
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06
	lw	a0,s10,+00000030
	addi	a2,zero,+00000020
	c.mv	a1,s2
	addi	a0,a0,+000000D8
	jal	ra,00000000230A382C
	lbu	s3,s1,+00000022
	addi	a5,zero,+00000020
	bltu	a5,s3,000000002309B78E

l2309B786:
	addi	s5,s3,+00000024
	bgeu	s8,s5,000000002309B79C

l2309B78E:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000569
	c.j	000000002309B3BE

l2309B79C:
	addi	s2,s1,+00000023
	lui	a4,000230CA
	c.mv	a6,s3
	addi	a4,a4,-00000138
	addi	a3,zero,+0000056D
	c.mv	a5,s2
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06
	lw	a5,s10,+0000002C
	addi	a2,zero,+00000020
	c.li	a1,00000000
	sw	s3,a5,+00000008
	lw	a0,s10,+0000002C
	addi	s3,s3,+00000023
	c.addi	a0,0000000C
	jal	ra,00000000230A3A68
	lw	a0,s10,+0000002C
	c.mv	a1,s2
	c.lw	a0,8(a2)
	c.addi	a0,0000000C
	jal	ra,00000000230A382C
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B85A

l2309B7F2:
	add	a5,s1,s3
	lbu	s2,a5,+00000000
	c.add	s3,s2
	c.addi	s3,00000003
	bgeu	s8,s3,000000002309B810

l2309B802:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000580
	c.j	000000002309B3BE

l2309B810:
	lui	a4,000230CA
	c.mv	a6,s2
	add	a5,s1,s5
	addi	a4,a4,-00000100
	addi	a3,zero,+00000585
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06
	beq	s2,zero,000000002309B840

l2309B832:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000005A1
	c.j	000000002309B3BE

l2309B840:
	lui	a4,000230CB
	addi	a4,a4,-00000554
	addi	a3,zero,+000005A5
	addi	a2,s4,+00000254
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.mv	s3,s5

l2309B85A:
	add	a5,s1,s3
	lbu	s6,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	s6,08
	or	s6,s6,a5
	c.li	a5,00000001
	bge	a5,s6,000000002309B886

l2309B872:
	add	s9,s3,s6
	addi	s11,s9,+00000003
	bltu	s8,s11,000000002309B886

l2309B87E:
	andi	s5,s6,+00000001
	beq	s5,zero,000000002309B894

l2309B886:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000005B8
	c.j	000000002309B3BE

l2309B894:
	c.addi	s3,00000002
	c.add	s3,s1
	lui	a4,000230CB
	c.mv	a6,s6
	c.mv	a5,s3
	addi	a4,a4,-00000538
	addi	a3,zero,+000005BD
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06
	c.addi	s9,00000002
	add	a5,s1,s9
	lbu	a6,a5,+00000000
	c.li	a5,0000000F
	lui	s2,000230C8
	addi	a4,a6,-00000001
	bltu	a5,a4,000000002309B8D6

l2309B8CC:
	c.add	s9,a6
	addi	a7,s9,+00000001
	bgeu	s8,a7,000000002309B8E8

l2309B8D6:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000005CA

l2309B8E2:
	addi	a2,s2,+00000254
	c.j	000000002309B3C2

l2309B8E8:
	lui	a4,000230CB
	add	a5,s1,s11
	addi	a4,a4,-00000518
	addi	a3,zero,+000005CF
	addi	a2,s4,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	c.swsp	a7,00000008
	jal	ra,0000000023093F06
	lw	a5,s10,+0000002C
	c.lwsp	a6,00000028
	sw	zero,a5,+00000004
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309B924

l2309B91C:
	lw	a5,s10,+0000002C
	sw	zero,a5,+00000004

l2309B924:
	addi	a5,s9,+00000003
	bgeu	a7,s8,000000002309B972

l2309B92C:
	bgeu	s8,a5,000000002309B93E

l2309B930:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000005F0
	c.j	000000002309B8E2

l2309B93E:
	add	a4,s1,a7
	lbu	s5,a4,+00000000
	c.add	s9,s1
	lbu	a4,s9,+00000002
	c.slli	s5,08
	or	s5,s5,a4
	addi	a3,s5,-00000001
	c.li	a4,00000002
	bgeu	a4,a3,000000002309B964

l2309B95C:
	add	a4,s5,a5
	beq	s8,a4,000000002309B972

l2309B964:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000005FA
	c.j	000000002309B8E2

l2309B972:
	c.add	s1,a5
	lui	a4,000230CB
	c.mv	a6,s5
	c.mv	a5,s1
	addi	a4,a4,-000004FC
	addi	a3,zero,+00000602
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093F06

l2309B990:
	bne	s5,zero,000000002309BA0C

l2309B994:
	c.mv	a5,s3
	addi	a3,zero,+000000FF

l2309B99A:
	lbu	a4,a5,+00000000
	bne	a4,zero,000000002309BEC0

l2309B9A2:
	lbu	a4,a5,+00000001
	bne	a4,a3,000000002309BEC0

l2309B9AA:
	lui	a4,000230CB
	addi	a4,a4,-00000368
	addi	a3,zero,+000006C4
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.li	a5,00000001
	sw	a5,s10,+000000BC

l2309B9C8:
	lw	a4,s10,+0000000C
	lw	a5,s10,+00000000
	c.slli	a4,02
	c.add	a5,a4
	lw	s5,a5,+00000000
	c.li	a5,00000000

l2309B9DA:
	lw	a4,s5,+00000000
	bne	a4,zero,000000002309BEF6

l2309B9E2:
	beq	a5,zero,000000002309C12A

l2309B9E6:
	lui	a4,000230CB
	addi	a4,a4,-00000194
	addi	a3,zero,+00000722
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002308D310
	addi	s0,s0,+00000680
	c.j	000000002309B2F6

l2309BA0C:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	lbu	s4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	lbu	a4,s1,+00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.slli	a4,08
	or	a4,a4,s4
	slli	s4,a4,00000008
	c.srli	a4,00000008
	or	a4,s4,a4
	slli	s4,a4,00000010
	srli	s4,s4,00000010
	addi	s8,s4,+00000004
	bgeu	s5,s8,000000002309BA5A

l2309BA4C:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+0000060D
	c.j	000000002309B8E2

l2309BA5A:
	c.li	a4,0000000D
	beq	a5,a4,000000002309BC4C

l2309BA60:
	bltu	a4,a5,000000002309BA7A

l2309BA64:
	c.beqz	a5,000000002309BAF4

l2309BA66:
	c.li	a4,00000001
	beq	a5,a4,000000002309BD14

l2309BA6C:
	lui	a4,000230CA
	addi	a4,a4,+0000049C
	addi	a3,zero,+00000696
	c.j	000000002309BD02

l2309BA7A:
	addi	a4,zero,+00000023
	beq	a5,a4,000000002309BD56

l2309BA82:
	c.lui	a4,00010000
	addi	a4,a4,-000000FF
	beq	a5,a4,000000002309BBFA

l2309BA8C:
	c.li	a4,00000010
	bne	a5,a4,000000002309BA6C

l2309BA92:
	lui	a4,000230CA
	addi	a4,a4,+00000484
	addi	a3,zero,+0000068C
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+00000000
	lw	s11,a5,+00000060
	beq	s11,zero,000000002309BB62

l2309BAB6:
	c.li	a5,00000003
	bgeu	a5,s4,000000002309B3CA

l2309BABC:
	lbu	a5,s1,+00000005
	lbu	a4,s1,+00000004
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,s4,-00000002
	bne	a5,a4,000000002309B3CA

l2309BADC:
	addi	a5,s1,+00000006
	c.swsp	a5,00000008
	add	s9,s1,s8

l2309BAE6:
	lw	a0,s11,+00000000
	bne	a0,zero,000000002309BE74

l2309BAEE:
	addi	a2,zero,+00000078
	c.j	000000002309BBE4

l2309BAF4:
	lui	a4,000230CB
	addi	a4,a4,-000004E4
	addi	a3,zero,+00000614
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+00000000
	c.lw	a5,44(a5)
	c.beqz	a5,000000002309BB62

l2309BB14:
	lui	a4,000230CB
	addi	a4,a4,-000004C8
	addi	a3,zero,+00000062
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lbu	a4,s1,+00000005
	lbu	a5,s1,+00000004
	c.slli	a4,08
	c.or	a4,a5
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,a5,+00000002
	beq	s4,a4,000000002309BB5A

l2309BB4C:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000067
	c.j	000000002309B8E2

l2309BB5A:
	addi	a2,s1,+00000006
	c.li	a1,FFFFFFFD

l2309BB60:
	c.bnez	a5,000000002309BB82

l2309BB62:
	sub	s4,s5,s4
	addi	s5,s4,-00000004
	c.li	a5,00000002
	c.addi	s4,FFFFFFFB
	c.add	s1,s8
	bltu	a5,s4,000000002309B990

l2309BB74:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+0000069E
	c.j	000000002309B8E2

l2309BB82:
	lbu	a4,a2,+00000002
	lbu	a3,a2,+00000001
	c.slli	a4,08
	c.or	a4,a3
	slli	a3,a4,00000008
	c.srli	a4,00000008
	c.or	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a4,a3,+00000003
	bgeu	a5,a4,000000002309BBB0

l2309BBA2:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+00000071
	c.j	000000002309B8E2

l2309BBB0:
	lbu	a0,a2,+00000000
	c.bnez	a0,000000002309BBF0

l2309BBB6:
	lw	a5,s10,+00000000
	c.addi	a2,00000003
	c.mv	a1,s10
	c.lw	a5,44(a4)
	c.lw	a5,48(a0)
	c.jalr	a4
	c.mv	a5,a0
	c.beqz	a0,000000002309BB62

l2309BBC8:
	lui	a4,000230CB
	addi	a2,s2,+00000254
	addi	a4,a4,-000004AC
	addi	a3,zero,+0000007B
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093E84
	addi	a2,zero,+00000070

l2309BBE4:
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,000000002308D266
	jal	zero,000000002309B3CA

l2309BBF0:
	sub	a3,a1,a3
	c.add	a5,a3
	c.add	a2,a4
	c.j	000000002309BB60

l2309BBFA:
	lui	a4,000230CA
	addi	a4,a4,+000003FC
	addi	a3,zero,+0000061F
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.li	a5,00000001
	bne	s4,a5,000000002309BC1E

l2309BC18:
	lbu	a5,s1,+00000004
	c.beqz	a5,000000002309BC46

l2309BC1E:
	lui	a4,000230CA
	addi	a4,a4,+0000041C
	addi	a3,zero,+000000AD

l2309BC2A:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.mv	a0,s10
	jal	ra,000000002308D310
	c.mv	s0,a0
	bne	a0,zero,000000002309B2F6

l2309BC42:
	jal	zero,000000002309B3CA

l2309BC46:
	sw	s4,s10,+000000BC
	c.j	000000002309BB62

l2309BC4C:
	lui	a5,000230CB
	addi	a4,a5,-0000049C
	addi	a3,zero,+0000062C
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lbu	a4,s1,+00000005
	lbu	a5,s1,+00000004
	add	a3,s1,s8
	c.slli	a4,08
	c.or	a4,a5
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,a5,+00000002
	bne	s4,a4,000000002309BC8C

l2309BC88:
	c.andi	a5,00000001
	c.beqz	a5,000000002309BC9A

l2309BC8C:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+000000CB
	c.j	000000002309B8E2

l2309BC9A:
	lw	a5,s10,+00000000
	lw	s11,a5,+00000058

l2309BCA2:
	lw	a5,s11,+00000000
	c.bnez	a5,000000002309BCC2

l2309BCA8:
	lui	a5,000230CB
	addi	a4,a5,-00000444
	addi	a3,zero,+000000DF

l2309BCB4:
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.j	000000002309BB62

l2309BCC2:
	addi	s9,s1,+00000006

l2309BCC6:
	bltu	s9,a3,000000002309BCCE

l2309BCCA:
	c.addi	s11,00000004
	c.j	000000002309BCA2

l2309BCCE:
	lw	a5,s11,+00000000
	lbu	a0,s9,+00000000
	c.swsp	a3,00000088
	c.swsp	a5,00000008
	jal	ra,000000002308BF62
	c.lwsp	a6,000000E4
	c.lwsp	s4,000000A4
	bne	a5,a0,000000002309BD10

l2309BCE6:
	lw	a5,s10,+00000030
	lbu	a4,s9,+00000000
	addi	a3,zero,+000000E4
	c.sw	a5,0(a4)
	lw	a5,s10,+00000030
	lui	a4,000230CB
	addi	a4,a4,-00000474
	c.lw	a5,0(a5)

l2309BD02:
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.j	000000002309BB62

l2309BD10:
	c.addi	s9,00000002
	c.j	000000002309BCC6

l2309BD14:
	lui	a4,000230CB
	addi	a4,a4,-00000420
	addi	a3,zero,+0000065A
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	c.swsp	a5,00000008
	jal	ra,0000000023093DF4
	c.lwsp	a6,000000E4
	bne	s4,a5,000000002309BD3E

l2309BD34:
	lbu	a5,s1,+00000004
	c.li	a4,00000004
	bgeu	a4,a5,000000002309BD4C

l2309BD3E:
	lui	a4,000230CB
	addi	a4,a4,-00000698
	addi	a3,zero,+0000016A
	c.j	000000002309B8E2

l2309BD4C:
	lw	a4,s10,+0000002C
	sb	a5,a4,+00000070
	c.j	000000002309BB62

l2309BD56:
	lui	a5,000230CB
	addi	a4,a5,-000003FC
	addi	a3,zero,+00000682
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.addi4spn	a0,0000005C
	jal	ra,000000002308B6EC
	lw	a5,s10,+00000000
	c.lw	a5,64(a4)
	beq	a4,zero,000000002309BB62

l2309BD7E:
	c.lw	a5,60(a5)
	beq	a5,zero,000000002309BB62

l2309BD84:
	lw	a5,s10,+00000030
	c.li	a4,00000001
	addi	a3,zero,+000001C9
	sw	a4,a5,+00000158
	lui	a4,000230CB
	c.mv	a5,s4
	addi	a4,a4,-000007E8
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	beq	s4,zero,000000002309BB62

l2309BDAC:
	lw	a5,s10,+00000000
	c.mv	a3,s4
	addi	a2,s1,+00000004
	c.lw	a5,64(a4)
	c.lw	a5,68(a0)
	c.addi4spn	a1,0000005C
	c.jalr	a4
	c.beqz	a0,000000002309BE14

l2309BDC0:
	c.swsp	a0,00000008
	c.addi4spn	a0,0000005C
	jal	ra,000000002308BA46
	c.lwsp	a6,000000E4
	c.lui	a4,FFFF9000
	addi	a4,a4,-00000180
	bne	a5,a4,000000002309BDE2

l2309BDD4:
	lui	a4,000230CB
	addi	a4,a4,-000003DC
	addi	a3,zero,+000001DF
	c.j	000000002309BCB4

l2309BDE2:
	c.lui	a4,FFFF9000
	addi	a4,a4,+00000280
	bne	a5,a4,000000002309BDFA

l2309BDEC:
	lui	a4,000230CB
	addi	a4,a4,-000003C4
	addi	a3,zero,+000001E1
	c.j	000000002309BCB4

l2309BDFA:
	lui	a4,000230CB
	addi	a4,a4,-000003B0
	addi	a3,zero,+000001E3
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093E84
	c.j	000000002309BB62

l2309BE14:
	lw	a1,s10,+0000002C
	c.addi4spn	a0,00000068
	c.lw	a1,8(a2)
	c.addi	a1,0000000C
	c.swsp	a2,000000B0
	jal	ra,00000000230A382C
	lw	a0,s10,+0000002C
	jal	ra,000000002308BA46
	lw	a0,s10,+0000002C
	addi	a2,zero,+00000074
	c.addi4spn	a1,0000005C
	jal	ra,00000000230A382C
	c.addi4spn	a5,0000005C

l2309BE3C:
	sb	zero,a5,+00000000
	c.addi4spn	a4,000000D0
	c.addi	a5,00000001
	bne	a5,a4,000000002309BE3C

l2309BE48:
	lui	a5,000230CB
	addi	a4,a5,-00000394
	addi	a3,zero,+000001F5
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+00000030
	c.li	a4,00000001
	sw	a4,a5,+00000148
	lw	a5,s10,+00000030
	sw	zero,a5,+00000158
	c.j	000000002309BB62

l2309BE74:
	jal	ra,00000000230A4220
	c.lwsp	a6,000000E4
	c.mv	a4,a0

l2309BE7C:
	bne	s9,a5,000000002309BE84

l2309BE80:
	c.addi	s11,00000004
	c.j	000000002309BAE6

l2309BE84:
	bltu	s9,a5,000000002309B3CA

l2309BE88:
	addi	a6,a5,+00000001
	lbu	a5,a5,+00000000
	beq	a5,zero,000000002309B3CA

l2309BE94:
	bne	a4,a5,000000002309BEBC

l2309BE98:
	lw	a1,s11,+00000000
	c.mv	a2,a4
	c.mv	a0,a6
	c.swsp	a5,0000008C
	c.swsp	a4,0000000C
	c.swsp	a6,00000088
	jal	ra,00000000230A37A4
	c.lwsp	s4,00000008
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	c.bnez	a0,000000002309BEBC

l2309BEB2:
	lw	a5,s11,+00000000
	sw	a5,s10,+000000B8
	c.j	000000002309BB62

l2309BEBC:
	c.add	a5,a6
	c.j	000000002309BE7C

l2309BEC0:
	c.addi	a5,00000002
	sub	a4,a5,s3
	bltu	a4,s6,000000002309B99A

l2309BECA:
	lw	a3,s10,+000000BC
	c.li	a4,00000001
	lw	a5,s10,+00000000
	beq	a3,a4,000000002309B9C8

l2309BED8:
	lhu	a5,a5,+00000074
	addi	a4,zero,+00000020
	andi	a5,a5,+00000030
	bne	a5,a4,000000002309B9C8

l2309BEE8:
	lui	a4,000230CA
	addi	a4,a4,+000004C4
	addi	a3,zero,+000006DB
	c.j	000000002309BC2A

l2309BEF6:
	c.mv	s4,s3

l2309BEF8:
	lw	a0,s5,+00000000
	lbu	a3,s4,+00000000
	srai	a4,a0,00000008
	andi	a4,a4,+000000FF
	bne	a3,a4,000000002309BF82

l2309BF0C:
	lbu	a3,s4,+00000001
	andi	a4,a0,+000000FF
	bne	a3,a4,000000002309BF82

l2309BF18:
	jal	ra,00000000230996D4
	c.mv	s1,a0
	c.bnez	a0,000000002309BF3E

l2309BF20:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000002CC
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.lui	s0,FFFF9000
	jal	zero,000000002309C914

l2309BF3E:
	c.lw	a0,4(a5)
	lui	a4,000230CB
	addi	a4,a4,-00000340
	addi	a3,zero,+000002D0
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+0000000C
	c.lw	s1,16(a4)
	blt	a5,a4,000000002309BF68

l2309BF62:
	c.lw	s1,24(a4)
	bge	a4,a5,000000002309BF90

l2309BF68:
	lui	a5,000230CB
	addi	a4,a5,-00000328
	addi	a3,zero,+000002D5

l2309BF74:
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4

l2309BF80:
	c.mv	a5,s7

l2309BF82:
	c.addi	s4,00000002
	sub	a4,s4,s3
	bltu	a4,s6,000000002309BEF8

l2309BF8C:
	c.addi	s5,00000004
	c.j	000000002309B9DA

l2309BF90:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309BFA4

l2309BF9C:
	lbu	a5,s1,+0000001C
	c.andi	a5,00000004
	c.bnez	a5,000000002309BF80

l2309BFA4:
	c.mv	a0,s1
	jal	ra,000000002309977E
	lw	a5,s10,+00000030
	c.mv	s9,a0
	lw	s11,a5,+00000010
	bne	s11,zero,000000002309BFC0

l2309BFB8:
	lw	a5,s10,+00000000
	lw	s11,a5,+0000004C

l2309BFC0:
	beq	s9,zero,000000002309C07E

l2309BFC4:
	lui	a4,000230CB
	addi	a4,a4,-00000308
	addi	a3,zero,+0000026F
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.li	s8,00000000
	bne	s11,zero,000000002309C008

l2309BFE2:
	lui	a4,000230CB
	addi	a4,a4,-000002E4
	addi	a3,zero,+00000273
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4

l2309BFFA:
	lui	a4,000230CB
	addi	a4,a4,-000001C4
	addi	a3,zero,+00000316
	c.j	000000002309BF74

l2309C008:
	lw	a5,s11,+00000000
	lui	a4,000230CB
	c.li	a1,00000003
	c.mv	a0,s10
	addi	a4,a4,-000002C8
	addi	a3,zero,+0000027A
	addi	a2,s2,+00000254
	jal	ra,00000000230941AC
	lw	a0,s11,+00000004
	c.mv	a1,s9
	jal	ra,0000000023087A5C
	c.bnez	a0,000000002309C0E0

l2309C030:
	lui	a5,000230CB
	addi	a4,a5,-0000029C
	addi	a3,zero,+0000027E

l2309C03C:
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	s11,s11,+00000008
	bne	s11,zero,000000002309C008

l2309C050:
	beq	s8,zero,000000002309BFFA

l2309C054:
	c.mv	s11,s8

l2309C056:
	lw	a5,s10,+00000030
	lui	a4,000230CB
	addi	a4,a4,-00000208
	sw	s11,a5,+00000008
	lw	a5,s10,+00000030
	addi	a3,zero,+000002B8
	addi	a2,s2,+00000254
	c.lw	a5,8(a5)
	c.li	a1,00000003
	c.mv	a0,s10
	c.lw	a5,0(a5)
	jal	ra,00000000230941AC

l2309C07E:
	c.lw	s1,4(a5)
	lui	a4,000230CB
	addi	a4,a4,-000001E0
	addi	a3,zero,+0000072E
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	lw	a5,s10,+0000002C
	lw	a4,s5,+00000000
	c.sw	a5,0(a4)
	lw	a5,s10,+00000040
	c.sw	a5,0(s1)
	lw	a5,s10,+00000004
	c.addi	a5,00000001
	sw	a5,s10,+00000004
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002309C0C4

l2309C0BE:
	c.mv	a0,s10
	jal	ra,000000002308B5BA

l2309C0C4:
	lui	a4,000230CB
	addi	a4,a4,-00000140
	addi	a3,zero,+0000073A
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	jal	zero,000000002309B2F6

l2309C0E0:
	lw	a0,s11,+00000000
	c.addi4spn	a3,0000005C
	c.li	a2,00000001
	c.mv	a1,s1
	jal	ra,000000002308BFBA
	c.beqz	a0,000000002309C0FE

l2309C0F0:
	lui	a5,000230CB
	addi	a4,a5,-0000027C
	addi	a3,zero,+0000028E
	c.j	000000002309C03C

l2309C0FE:
	lw	a5,s10,+0000000C
	c.li	a4,00000002
	blt	a4,a5,000000002309C056

l2309C108:
	lw	a5,s11,+00000000
	c.li	a4,00000004
	lbu	a5,a5,+00000128
	beq	a5,a4,000000002309C056

l2309C116:
	bne	s8,zero,000000002309C11C

l2309C11A:
	c.mv	s8,s11

l2309C11C:
	lui	a5,000230CB
	addi	a4,a5,-00000244
	addi	a3,zero,+000002A7
	c.j	000000002309C03C

l2309C12A:
	lui	a4,000230CB
	addi	a4,a4,-00000160
	addi	a3,zero,+00000728
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002308D310
	addi	s0,s0,-00000380
	jal	zero,000000002309B2F6
2309C152       37 B7 0C 23 05 69 13 07 87 ED 93 06 19 8B   7..#.i........
2309C160 13 06 4A 25 89 45 6A 85 EF 70 DF C8 83 27 0D 00 ..J%.Ej..p...'..
2309C170 98 4F 15 E3 37 A7 0C 23 13 07 C7 DF 93 06 09 8C .O..7..#........
2309C180 13 06 4A 25 85 45 6A 85 65 74 EF 70 BF C6 13 04 ..J%.Ej.et.p....
2309C190 04 C0 6F F0 4F 96 F0 5B 83 29 0D 0A 83 25 CD 00 ..o.O..[.)...%..
2309C1A0 03 25 8D 00 05 82 93 86 49 00 05 8A EF F0 9E EA .%......I.......
2309C1B0 03 C8 59 00 83 C7 49 00 37 B7 0C 23 13 07 07 EF ..Y...I.7..#....
2309C1C0 93 06 39 8D 13 06 4A 25 8D 45 6A 85 EF 70 9F C2 ..9...J%.Ej..p..
2309C1D0 83 27 0D 00 93 84 69 00 11 46 98 4F C8 4F A6 85 .'....i..F.O.O..
2309C1E0 02 97 2A 84 19 C1 6F F0 0F 91 83 27 0D 00 71 46 ..*...o....'..qF
2309C1F0 93 85 A9 00 98 4F C8 4F 02 97 2A 84 19 C1 6F F0 .....O.O..*...o.
2309C200 8F 8F 03 25 0D 03 13 06 00 02 A6 85 13 05 85 0F ...%............
2309C210 EF 70 C0 61 37 A7 0C 23 A6 87 13 08 00 02 13 07 .p.a7..#........
2309C220 87 28 93 06 B9 8E 13 06 4A 25 8D 45 6A 85 EF 70 .(......J%.Ej..p
2309C230 9F CD 83 27 0D 03 83 A7 87 14 8D EF 83 25 CD 02 ...'.........%..
2309C240 9C 45 8D CB 03 27 0D 00 1C 53 8D C7 08 57 82 97 .E...'...S...W..
2309C250 15 E1 37 B7 0C 23 13 07 87 F1 93 06 A9 8F 13 06 ..7..#..........
2309C260 4A 25 8D 45 6A 85 EF 70 FF B8 83 27 0D 03 05 47 J%.Ej..p...'...G
2309C270 23 A4 E7 14 83 26 0D 03 83 27 CD 02 03 A7 86 14 #....&...'......
2309C280 63 1C 07 2E 03 27 4D 00 05 07 23 22 ED 00 03 A7 c....'M...#"....
2309C290 86 15 63 0F 07 2A 23 A4 07 00 03 25 CD 02 13 06 ..c..*#....%....
2309C2A0 00 02 81 45 31 05 EF 70 20 7C 81 44 83 27 CD 02 ...E1..p |.D.'..
2309C2B0 13 84 79 02 22 85 9C 47 85 6A 23 83 F9 02 83 25 ..y."..G.j#....%
2309C2C0 CD 02 90 45 B1 05 EF 70 60 56 83 27 CD 02 37 A7 ...E...p`V.'..7.
2309C2D0 0C 23 13 07 C7 2E 03 A9 87 00 93 86 4A 93 A6 87 .#..........J...
2309C2E0 13 06 4A 25 8D 45 6A 85 EF 70 DF B0 37 A7 0C 23 ..J%.Ej..p..7..#
2309C2F0 A2 87 26 88 13 07 07 31 93 86 5A 93 13 06 4A 25 ..&....1..Z...J%
2309C300 8D 45 6A 85 EF 70 3F C0 83 27 0D 03 22 99 83 A7 .Ej..p?..'.."...
2309C310 87 14 63 97 07 28 B7 A7 0C 23 93 87 C7 DC 05 64 ..c..(...#.....d
2309C320 37 A7 0C 23 93 06 74 93 13 07 47 34 13 06 4A 25 7..#..t...G4..J%
2309C330 8D 45 6A 85 EF 70 1F AC 83 27 CD 02 93 0A 39 00 .Ej..p...'....9.
2309C340 13 0B 59 00 9C 43 A1 87 23 00 F9 00 83 27 CD 02 ..Y..C..#....'..
2309C350 9C 43 A3 00 F9 00 83 27 CD 02 DC 43 23 01 F9 00 .C.....'...C#...
2309C360 83 27 CD 02 88 43 EF D0 CF BF 37 A7 0C 23 AA 87 .'...C....7..#..
2309C370 93 06 E4 93 13 07 87 3A 13 06 4A 25 8D 45 6A 85 .......:..J%.Ej.
2309C380 EF 70 5F A7 83 27 CD 02 37 B7 0C 23 93 06 04 94 .p_..'..7..#....
2309C390 DC 43 13 07 47 F4 13 06 4A 25 8D 45 6A 85 EF 70 .C..G...J%.Ej..p
2309C3A0 7F A5 83 24 CD 0B 85 47 01 44 63 9D F4 02 37 B7 ...$...G.Dc...7.
2309C3B0 0C 23 13 07 87 F6 93 06 30 7C 13 06 4A 25 8D 45 .#......0|..J%.E
2309C3C0 6A 85 EF 70 3F A3 FD 57 13 04 A9 00 A3 02 F9 00 j..p?..W........
2309C3D0 23 03 99 00 A3 03 09 00 23 04 99 00 A3 04 09 00 #.......#.......
2309C3E0 33 04 64 41 83 27 CD 02 81 44 83 C7 07 07 A1 C3 3.dA.'...D......
2309C3F0 37 B7 0C 23 13 07 87 F9 93 06 C0 7E 13 06 4A 25 7..#.......~..J%
2309C400 8D 45 6A 85 EF 70 1F 9F 93 04 24 00 D6 94 85 47 .Ej..p....$....G
2309C410 23 80 04 00 A3 80 F4 00 23 81 04 00 A3 81 F4 00 #.......#.......
2309C420 83 27 CD 02 83 C7 07 07 23 82 F4 00 95 44 83 27 .'......#....D.'
2309C430 0D 03 26 94 81 44 83 A7 87 15 9D CB 37 B7 0C 23 ..&..D......7..#
2309C440 13 07 47 FC 93 06 B0 7A 13 06 4A 25 8D 45 6A 85 ..G....z..J%.Ej.
2309C450 EF 70 5F 9A 93 04 24 00 D6 94 93 07 30 02 23 80 .p_...$.....0.#.
2309C460 04 00 A3 80 F4 00 23 81 04 00 A3 81 04 00 91 44 ......#........D
2309C470 83 27 8D 0B A2 94 81 4B B5 CB 37 B7 0C 23 85 66 .'.....K..7..#.f
2309C480 13 07 47 FF 13 06 4A 25 8D 45 93 86 F6 84 6A 85 ..G...J%.E....j.
2309C490 EF 70 5F 96 13 84 24 00 56 94 C1 47 A3 00 F4 00 .p_...$.V..G....
2309C4A0 23 00 04 00 03 25 8D 0B EF 70 90 57 93 07 35 00 #....%...p.W..5.
2309C4B0 93 0B 75 00 A1 83 23 01 F4 00 93 F7 FB 0F 13 87 ..u...#.........
2309C4C0 C7 FF A3 01 E4 00 13 07 15 00 21 83 23 02 E4 00 ..........!.#...
2309C4D0 13 87 A7 FF E5 17 A3 02 E4 00 23 03 F4 00 83 25 ..........#....%
2309C4E0 8D 0B 2A 86 13 05 74 00 EF 70 40 34 DE 94 37 A7 ..*...t..p@4..7.
2309C4F0 0C 23 85 66 A6 87 13 07 07 3D 93 86 76 97 13 06 .#.f.....=..v...
2309C500 4A 25 8D 45 6A 85 EF 70 FF 8E 89 C8 93 D7 84 00 J%.Ej..p........
2309C510 A3 01 F9 00 23 02 99 00 B3 0A 9B 00 D9 47 23 22 ....#........G#"
2309C520 FD 0A 83 27 0D 0A B3 89 3A 41 09 47 23 24 3D 0B ...'....:A.G#$=.
2309C530 23 80 E7 00 6A 85 EF F0 BE B4 37 B7 0C 23 85 66 #...j.....7..#.f
2309C540 2A 84 13 07 87 01 93 86 A6 98 13 06 4A 25 59 B6 *...........J%Y.
2309C550 13 07 00 02 98 C7 83 27 0D 00 83 25 CD 02 13 06 .......'...%....
2309C560 00 02 98 4F C8 4F B1 05 93 04 00 02 02 97 2A 84 ...O.O........*.
2309C570 E3 0E 05 D2 6F E0 3F D8 84 47 B1 47 23 22 FD 00 ....o.?..G.G#"..
2309C580 6A 85 EF E0 7E 97 2A 84 E3 02 05 D2 37 A7 0C 23 j...~.*.....7..#
2309C590 85 66 AA 87 13 07 C7 32 93 86 36 92 6F E0 5F DB .f.....2..6.o._.
2309C5A0 B7 47 0C 23 93 87 87 FB 9D BB 6A 85 EF 00 FF D6 .G.#......j.....
2309C5B0 6F E0 BF D3 83 27 0D 04 37 B7 0C 23 85 64 03 A9 o....'..7..#.d..
2309C5C0 07 00 13 07 07 03 93 86 F4 A7 13 06 4A 25 89 45 ............J%.E
2309C5D0 6A 85 EF 70 3F 82 83 47 A9 00 05 47 93 F6 B7 0F j..p?..G...G....
2309C5E0 63 85 E6 00 1D 47 63 96 E7 02 37 B7 0C 23 85 66 c....Gc...7..#.f
2309C5F0 13 07 07 05 93 86 86 A8 13 06 4A 25 89 45 6A 85 ..........J%.Ej.
2309C600 EF 70 4F FF 83 27 4D 00 85 07 23 22 FD 00 6F E0 .pO..'M...#"..o.
2309C610 9F CE 91 47 23 24 FD 0A D9 47 23 22 FD 0A 83 27 ...G#$...G#"...'
2309C620 0D 0A 31 47 6A 85 23 80 E7 00 83 27 4D 00 85 07 ..1Gj.#....'M...
2309C630 23 22 FD 00 EF F0 DE A4 2A 84 11 C9 37 87 0C 23 #"......*...7..#
2309C640 AA 87 13 07 47 C2 93 86 44 BD 6F E0 7F D0 37 B7 ....G...D.o...7.
2309C650 0C 23 13 07 47 07 93 86 84 BD C5 BD 83 27 0D 04 .#..G........'..
2309C660 37 B7 0C 23 85 66 13 07 47 09 93 86 56 9B 13 06 7..#.f..G...V...
2309C670 4A 25 89 45 6A 85 84 43 03 29 0D 0A EF 70 8F F7 J%.Ej..C.)...p..
2309C680 83 27 4D 00 0D 47 85 07 23 22 FD 00 83 27 0D 03 .'M..G..#"...'..
2309C690 DC 47 63 97 E7 00 83 27 0D 00 FC 5B 89 83 8D 8B .Gc....'...[....
2309C6A0 03 C6 A4 00 8D 46 13 07 B6 FF 13 77 F7 0F 63 F6 .....F.....w..c.
2309C6B0 E6 00 2D 47 63 03 E6 00 89 EB 37 B7 0C 23 85 66 ..-Gc.....7..#.f
2309C6C0 13 07 47 0B 93 86 76 9C 49 B5 83 2A 0D 0A 85 47 ..G...v.I..*...G
2309C6D0 81 49 A3 82 FA 00 23 82 FA 00 83 27 CD 00 93 84 .I....#....'....
2309C6E0 6A 00 63 96 D7 02 83 27 0D 00 01 44 85 4C 03 AB j.c....'...D.L..
2309C6F0 87 05 03 25 0B 00 93 09 24 00 33 8C 34 01 45 E9 ...%....$.3.4.E.
2309C700 93 57 84 00 23 83 FA 00 A3 83 8A 00 E2 84 83 27 .W..#..........'
2309C710 0D 03 89 04 C0 4B 01 E4 83 27 0D 00 A0 4B 91 67 .....K...'...K.g
2309C720 85 6B 3E 99 01 4B 37 BC 0C 23 93 8B 8B A3 05 CC .k>..K7..#......
2309C730 1C 4C 95 CB 03 28 44 04 63 6A 99 00 B3 07 99 40 .L...(D.cj.....@
2309C740 63 E6 07 01 93 0C 28 00 63 F4 97 09 37 B7 0C 23 c.....(.c...7..#
2309C750 85 66 13 07 87 0D 93 86 F6 A2 13 06 4A 25 85 45 .f..........J%.E
2309C760 6A 85 EF 70 2F E9 B3 87 54 41 23 24 FD 0A D9 47 j..p/...TA#$...G
2309C770 23 22 FD 0A 83 27 0D 0A 35 47 6A 85 23 80 E7 00 #"...'..5Gj.#...
2309C780 83 27 0D 0A 13 57 8B 00 CE 97 23 83 E7 00 83 27 .'...W....#....'
2309C790 0D 0A BE 99 A3 83 69 01 EF F0 9E 8E 37 B7 0C 23 ......i.....7..#
2309C7A0 85 66 2A 84 13 07 87 10 93 86 66 A4 79 BB EF F0 .f*.......f.y...
2309C7B0 4E FD AA 8B 01 CD AA 85 6A 85 EF 20 8F CC 19 E5 N.......j.. ....
2309C7C0 26 94 23 00 7C 01 A3 01 94 01 4E 84 11 0B 15 B7 &.#.|.....N.....
2309C7D0 93 57 88 00 23 80 F4 00 A3 80 04 01 2C 44 93 87 .W..#.......,D..
2309C7E0 24 00 42 86 3E 85 42 CA 3E C8 EF 70 20 04 C2 47 $.B.>.B.>..p ..G
2309C7F0 52 48 13 07 8C 0F DE 86 13 06 4A 25 8D 45 6A 85 RH........J%.Ej.
2309C800 B3 84 07 01 66 9B EF 70 0F F0 03 24 04 13 05 B7 ....f..p...$....
2309C810 37 B7 0C 23 85 66 13 07 87 12 93 86 16 BE 13 06 7..#.f..........
2309C820 4A 25 89 45 6A 85 EF 70 EF DC 91 47 23 24 FD 0A J%.Ej..p...G#$..
2309C830 D9 47 23 22 FD 0A 83 27 0D 0A 39 47 23 80 E7 00 .G#"...'..9G#...
2309C840 83 27 4D 00 85 07 23 22 FD 00 83 27 0D 00 83 D7 .'M...#"...'....
2309C850 47 07 89 8B 81 C7 6A 85 EF E0 7E DB 6A 85 EF F0 G.....j...~.j...
2309C860 3E 82 2A 84 19 C9 37 87 0C 23 85 66 AA 87 13 07 >.*...7..#.f....
2309C870 47 C2 93 86 06 BF 6F E0 BF AD 37 B7 0C 23 85 66 G.....o...7..#.f
2309C880 13 07 47 14 93 86 46 BF C9 B1 6A 85 EF 10 1F B1 ..G...F...j.....
2309C890 6F E0 BF A5 83 27 0D 04 37 B7 0C 23 85 64 13 07 o....'..7..#.d..
2309C8A0 07 16 93 86 44 CD 13 06 4A 25 89 45 6A 85 83 A9 ....D...J%.Ej...
2309C8B0 07 00 EF 70 2F D4 6A 85 EF 10 5F A3 2A 84 11 C9 ...p/.j..._.*...
2309C8C0 37 77 0C 23 AA 87 13 07 07 26 93 86 84 CD 6F E0 7w.#.....&....o.
2309C8D0 3F A8 03 27 0D 00 83 27 4D 06 11 49 03 57 47 07 ?..'...'M..I.WG.
2309C8E0 09 8B 11 C3 31 49 83 2A 0D 08 83 26 CD 06 59 47 ....1I.*...&..YG
2309C8F0 3E 99 BE 9A 63 84 E6 02 37 B7 0C 23 85 66 13 07 >...c...7..#.f..
2309C900 07 18 93 86 16 CE 13 06 4A 25 85 45 6A 85 EF 70 ........J%.Ej..p
2309C910 6F CE 61 74                                     o.at           

l2309C914:
	addi	s0,s0,+00000400
	jal	zero,000000002309B2F6
2309C91C                                     03 C7 07 00             ....
2309C920 C1 47 63 0A F7 00 37 B7 0C 23 85 66 13 07 07 18 .Gc...7..#.f....
2309C930 93 86 76 CE C9 BF 03 C7 A9 00 85 47 63 1A F7 18 ..v........Gc...
2309C940 6A 85 EF E0 3F 8F EF B0 CE A3 13 04 75 00 6A 85 j...?.......u.j.
2309C950 EF E0 5F 8E 85 45 93 59 34 00 83 24 0D 03 EF B0 .._..E.Y4..$....
2309C960 EE 8F 1D E9 37 B7 0C 23 85 66 13 07 07 1A 93 86 ....7..#.f......
2309C970 46 C3 13 06 4A 25 85 45 6A 85 65 74 EF 70 8F C7 F...J%.Ej.et.p..
2309C980 13 04 04 A0 37 B7 0C 23 85 66 A2 87 13 07 87 1B ....7..#.f......
2309C990 93 86 86 D9 6F E0 DF 9B 83 27 CD 00 A1 C3 83 47 ....o....'.....G
2309C9A0 09 00 2D 80 13 74 F4 0F 63 99 87 00 03 47 19 00 ..-..t..c....G..
2309C9B0 93 F7 F9 0F 09 09 63 03 F7 02 37 B7 0C 23 85 66 ......c...7..#.f
2309C9C0 13 07 07 18 93 86 26 C4 13 06 4A 25 85 45 6A 85 ......&...J%.Ej.
2309C9D0 61 74 EF 70 2F C2 13 04 04 40 6D B7 B3 07 39 01 at.p/....@m...9.
2309C9E0 63 8A FA 00 37 B7 0C 23 85 66 13 07 07 18 93 86 c...7..#.f......
2309C9F0 A6 C4 D9 BF 03 27 0D 00 83 27 0D 03 54 10 70 5B .....'...'..T.p[
2309CA00 83 A5 07 15 03 A5 C7 14 05 82 05 8A EF F0 8E E4 ................
2309CA10 83 27 0D 00 13 06 00 03 6C 10 98 4F C8 4F 02 97 .'......l..O.O..
2309CA20 2A 84 2D F1 6A 85 EF E0 FF 80 83 27 0D 00 38 10 *.-.j......'..8.
2309CA30 F4 08 83 A8 C7 01 03 A8 87 01 4E 86 93 07 00 03 ..........N.....
2309CA40 CA 85 EF B0 4E 8F 83 47 C1 05 03 47 41 02 83 46 ....N..G...GA..F
2309CA50 51 02 B9 8F 03 47 D1 05 35 8F D9 8F 22 57 13 47 Q....G..5..."W.G
2309CA60 07 03 D9 8F 5D 8D 83 27 0D 03 13 07 00 03 23 AA ....]..'......#.
2309CA70 E7 0C B3 07 A0 40 5D 8D 7D 85 13 76 F5 0F 81 47 .....@].}..v...G
2309CA80 13 45 F5 FF 03 27 0D 03 03 27 47 0D 63 E1 E7 02 .E...'...'G.c...
2309CA90 6A 85 EF E0 6E C6 2A 84 39 C5 37 A7 0C 23 85 66 j...n.*.9.7..#.f
2309CAA0 A2 87 13 07 C7 32 93 86 B6 DB 6F E0 7F 8A F8 08 .....2....o.....
2309CAB0 74 10 3E 97 BE 96 03 47 07 00 83 C6 06 00 B3 85 t.>....G........
2309CAC0 F4 00 69 8F F1 8E 55 8F 23 8C E5 10 85 07 5D BF ..i...U.#.....].
2309CAD0 37 77 0C 23 85 66 13 07 07 E2 93 86 56 DB 13 06 7w.#.f......V...
2309CAE0 4A 25 6F F0 EF C4 83 27 4D 00 37 B7 0C 23 85 66 J%o....'M.7..#.f
2309CAF0 85 07 23 22 FD 00 13 07 07 1E 93 86 16 DC B1 B4 ..#"............
2309CB00 83 27 0D 04 37 B7 0C 23 85 66 84 43 13 07 07 20 .'..7..#.f.C... 
2309CB10 93 86 E6 DE 13 06 4A 25 89 45 6A 85 EF 70 8F AD ......J%.Ej..p..
2309CB20 03 C7 A4 00 8D 46 93 07 B7 FF 93 F7 F7 0F 63 FB .....F........c.
2309CB30 F6 02 AD 47 63 08 F7 02 83 27 CD 02 FC 4F 9D C3 ...Gc....'...O..
2309CB40 E9 74 93 84 04 98 6A 85 EF 00 9F D9 2A 84 1D C1 .t....j.....*...
2309CB50 37 77 0C 23 85 66 AA 87 13 07 47 7C 93 86 16 E0 7w.#.f....G|....
2309CB60 6F E0 0F FF 37 B7 0C 23 85 66 13 07 C7 21 93 86 o...7..#.f...!..
2309CB70 76 DF 59 B4 6A 85 EF 00 0F E1 2A 84 E3 05 95 FC v.Y.j.....*.....
2309CB80 19 C9 37 77 0C 23 85 66 AA 87 13 07 47 7E 93 86 ..7w.#.f....G~..
2309CB90 B6 E0 6F E0 EF FB 83 27 4D 00 03 27 CD 06 85 07 ..o....'M..'....
2309CBA0 23 22 FD 00 D9 47 63 19 F7 00 83 27 4D 06 3D 47 #"...Gc....'M.=G
2309CBB0 83 C6 07 00 63 84 E6 02 37 B7 0C 23 85 66 13 07 ....c...7..#.f..
2309CBC0 07 24 93 86 56 E1 13 06 4A 25 85 45 6A 85 61 74 .$..V...J%.Ej.at
2309CBD0 EF 70 4F A2 13 04 04 28 6F E0 EF F1 03 27 0D 00 .pO....(o....'..
2309CBE0 91 4A 03 57 47 07 09 8B 11 C3 B1 4A 83 26 CD 00 .J.WG......J.&..
2309CBF0 0D 47 63 9E E6 0A 03 27 0D 08 13 84 2A 00 63 7A .Gc....'....*.cz
2309CC00 87 00 37 B7 0C 23 85 66 13 07 07 24 93 86 96 E3 ..7..#.f...$....
2309CC10 5D BF D6 97 03 C5 07 00 EF F0 AE B4 AA 84 09 E9 ]...............
2309CC20 37 B7 0C 23 85 66 13 07 07 26 93 86 56 E4 61 BF 7..#.f...&..V.a.
2309CC30 83 27 4D 06 6A 85 D6 97 83 C5 07 00 EF 20 6F 84 .'M.j........ o.
2309CC40 65 F1 91 47 93 09 C1 05 63 94 F4 00 93 09 C1 06 e..G....c.......
2309CC50 83 27 4D 06 D6 97 03 C5 17 00 EF F0 0E B0 AA 85 .'M.............
2309CC60 09 E9 37 B7 0C 23 85 66 13 07 07 26 93 86 A6 E5 ..7..#.f...&....
2309CC70 99 BF 83 27 CD 02 E8 4F 13 05 C5 0B EF A0 1E DE ...'...O........
2309CC80 09 E9 37 B7 0C 23 85 66 13 07 C7 29 93 86 36 E6 ..7..#.f...)..6.
2309CC90 1D BF 03 27 0D 08 13 89 4A 00 63 72 27 03 37 B7 ...'....J.cr'.7.
2309CCA0 0C 23 85 66 13 07 07 24 93 86 26 E7 29 BF 37 77 .#.f...$..&.).7w
2309CCB0 0C 23 85 66 13 07 07 E2 93 86 C6 E6 0D B5 83 26 .#.f...........&
2309CCC0 4D 06 B3 87 86 00 83 C7 07 00 D6 96 83 C6 36 00 M.............6.
2309CCD0 A2 07 D5 8F B3 06 F9 00 63 0A D7 00 37 B7 0C 23 ........c...7..#
2309CCE0 85 66 13 07 07 24 93 86 B6 E7 F1 BD 03 27 0D 03 .f...$.......'..
2309CCF0 EC 08 6A 85 03 27 87 0C 3E C8 02 97 83 26 CD 02 ..j..'..>....&..
2309CD00 03 27 4D 06 C2 47 E8 4E 4A 97 81 46 4E 86 A6 85 .'M..G.NJ..FN...
2309CD10 13 05 C5 0B EF A0 BE D5 2A 84 19 C9 37 B7 0C 23 ........*...7..#
2309CD20 85 66 AA 87 13 07 C7 2B 93 86 66 E8 6F E0 4F E2 .f.....+..f.o.O.
2309CD30 6A 85 EF E0 DE 93 37 B7 0C 23 85 66 13 07 07 2D j.....7..#.f...-
2309CD40 93 86 C6 E8 6F F0 7F 80 6A 85 EF 10 BF A8 6F E0 ....o...j.....o.
2309CD50 CF D9 6A 85 EF 10 DF BD 6F E0 2F D9 83 27 0D 03 ..j.....o./..'..
2309CD60 83 A7 87 15 ED C7 37 B7 0C 23 05 64 13 07 C7 2E ......7..#.d....
2309CD70 93 06 E4 E9 13 06 4A 25 89 45 6A 85 EF 70 8F 87 ......J%.Ej..p..
2309CD80 D9 47 23 22 FD 0A 83 27 0D 0A 11 47 91 66 23 80 .G#"...'...G.f#.
2309CD90 E7 00 03 25 0D 00 03 26 0D 0A 83 25 CD 02 03 28 ...%...&...%...(
2309CDA0 C5 03 68 41 FC 08 B2 96 78 10 29 06 02 98 AA 87 ..hA....x.).....
2309CDB0 11 CD 37 B7 0C 23 13 07 87 30 93 06 44 EB 13 06 ..7..#...0..D...
2309CDC0 4A 25 85 45 6A 85 EF 70 EF 8B 02 D6 F6 47 03 27 J%.Ej..p.....G.'
2309CDD0 0D 0A 6A 85 93 D6 87 01 23 02 D7 00 03 27 0D 0A ..j.....#....'..
2309CDE0 93 D6 07 01 A3 02 D7 00 03 27 0D 0A 93 D6 87 00 .........'......
2309CDF0 23 03 D7 00 03 27 0D 0A A3 03 F7 00 B2 57 03 27 #....'.......W.'
2309CE00 0D 0A 93 D6 87 00 23 04 D7 00 03 27 0D 0A A3 04 ......#....'....
2309CE10 F7 00 A9 07 23 24 FD 0A 83 27 0D 03 23 AC 07 14 ....#$...'..#...
2309CE20 EF F0 0E A6 2A 84 19 C9 37 87 0C 23 85 66 AA 87 ....*...7..#.f..
2309CE30 13 07 47 C2 93 86 A6 EC 6F E0 8F D1 37 B7 0C 23 ..G.....o...7..#
2309CE40 85 66 13 07 47 32 93 86 E6 EC 6F F0 0F F0 6A 85 .f..G2....o...j.
2309CE50 EF 00 CF EC 6F E0 6F C9 6A 85 EF 00 4F F5 6F E0 ....o.o.j...O.o.
2309CE60 CF C8 37 B7 0C 23 85 66 13 07 47 88 93 86 76 F4 ..7..#.f..G...v.
2309CE70 13 06 4A 25 89 45 6A 85 EF 60 DF F7 BD 47 6F F0 ..J%.Ej..`...Go.
2309CE80 CF F8 6A 85 EF E0 3E BF 6F E0 EF C6             ..j...>.o...   

l2309CE8C:
	lui	a4,000230CB
	c.lui	a3,00001000
	c.mv	a5,s7
	addi	a4,a4,-0000076C
	addi	a3,a3,-000000B0
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023093DF4

l2309CEA8:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	jal	zero,000000002309B2F6
2309CEB2       65 74 13 04 04 58 6F E0 EF C3               et...Xo...   

;; mbedtls_x509_get_serial: 2309CEBC
;;   Called from:
;;     2308FE8E (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_serial proc
	c.lw	a0,0(a5)
	sub	a4,a1,a5
	bge	zero,a4,000000002309CF14

l2309CEC6:
	lbu	a4,a5,+00000000
	c.li	a3,00000002
	andi	a4,a4,+0000007F
	bne	a4,a3,000000002309CF1C

l2309CED4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	a4,a5,+00000001
	c.sw	a0,0(a4)
	lbu	a5,a5,+00000000
	c.mv	s1,a2
	c.addi	a2,00000004
	sw	a5,a2,+00000FFC
	c.mv	s0,a0
	jal	ra,0000000023091640
	c.beqz	a0,000000002309CF08

l2309CEF6:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000280
	c.add	a0,a5

l2309CEFE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2309CF08:
	c.lw	s0,0(a5)
	c.lw	s1,4(a4)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002309CEFE

l2309CF14:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000002E0
	c.jr	ra

l2309CF1C:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000002E2
	c.jr	ra

;; mbedtls_x509_get_alg: 2309CF24
;;   Called from:
;;     2308FEA2 (in mbedtls_x509_crt_parse_der)
;;     2308FFEC (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_alg proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023091946
	c.beqz	a0,000000002309CF36

l2309CF2E:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000300
	c.add	a0,a5

l2309CF36:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_x509_get_name: 2309CF3C
;;   Called from:
;;     2308FF34 (in mbedtls_x509_crt_parse_der)
;;     2308FF84 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_name proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.lui	s3,FFFFE000
	lui	s4,00050581
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s7,0000008C
	c.mv	s1,a0
	c.mv	s5,a1
	c.mv	s6,a2
	c.addi	s4,00000008
	addi	s3,s3,-00000380

l2309CF62:
	addi	a3,zero,+00000031
	c.addi4spn	a2,00000008
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002309171C
	c.beqz	a0,000000002309CF90

l2309CF72:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000380
	c.add	a0,a5

l2309CF7A:
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

l2309CF90:
	lw	s2,s1,+00000000
	c.lwsp	s0,000000E4
	c.mv	s0,s6
	c.li	s7,0000001E
	c.add	s2,a5
	c.li	s6,00000001

l2309CF9E:
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002309171C
	c.beqz	a0,000000002309CFD4

l2309CFAE:
	c.add	a0,s3
	c.bnez	a0,000000002309CF7A

l2309CFB2:
	c.lw	s1,0(a5)
	beq	a5,s2,000000002309D050

l2309CFB8:
	sb	s6,s0,+0000001C
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,24(a0)
	c.mv	s0,a0
	c.bnez	a0,000000002309CF9E

l2309CFCC:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000780
	c.j	000000002309CF7A

l2309CFD4:
	c.lw	s1,0(a5)
	sub	a4,s2,a5
	blt	zero,a4,000000002309CFE6

l2309CFDE:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000003E0
	c.j	000000002309CF7A

l2309CFE6:
	lbu	a5,a5,+00000000
	c.li	a3,00000006
	addi	a2,s0,+00000004
	c.sw	s0,0(a5)
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002309171C
	c.bnez	a0,000000002309CFAE

l2309CFFC:
	c.lw	s1,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	sub	a4,s2,a5
	bge	zero,a4,000000002309CFDE

l2309D00E:
	lbu	a4,a5,+00000000
	bltu	s7,a4,000000002309D048

l2309D016:
	srl	a4,s4,a4
	c.andi	a4,00000001
	c.beqz	a4,000000002309D048

l2309D01E:
	addi	a4,a5,+00000001
	c.sw	s1,0(a4)
	lbu	a5,a5,+00000000
	addi	a2,s0,+00000010
	c.mv	a1,s2
	c.sw	s0,12(a5)
	c.mv	a0,s1
	jal	ra,0000000023091640
	c.bnez	a0,000000002309CFAE

l2309D038:
	c.lw	s1,0(a5)
	c.lw	s0,16(a4)
	c.sw	s0,20(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	sw	zero,s0,+00000018
	c.j	000000002309CFB2

l2309D048:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000003E2
	c.j	000000002309CF7A

l2309D050:
	beq	s5,s2,000000002309D068

l2309D054:
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,24(a0)
	c.mv	s6,a0
	bne	a0,zero,000000002309CF62

l2309D066:
	c.j	000000002309CFCC

l2309D068:
	c.li	a0,00000000
	c.j	000000002309CF7A

;; mbedtls_x509_get_sig: 2309D06C
;;   Called from:
;;     2309034C (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_sig proc
	c.lw	a0,0(a5)
	sub	a4,a1,a5
	bge	zero,a4,000000002309D0B6

l2309D076:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.mv	s0,a0
	lbu	s2,a5,+00000000
	jal	ra,0000000023091870
	c.beqz	a0,000000002309D0A4

l2309D090:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000480
	c.add	a0,a5

l2309D098:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2309D0A4:
	c.lwsp	a2,000000C4
	sw	s2,s1,+00000000
	c.sw	s1,4(a4)
	c.lw	s0,0(a5)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002309D098

l2309D0B6:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000004E0
	c.jr	ra

;; mbedtls_x509_get_sig_alg: 2309D0BE
;;   Called from:
;;     2308FF08 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_sig_alg proc
	c.lw	a4,0(a5)
	c.bnez	a5,000000002309D0FA

l2309D0C2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a2
	c.mv	a2,a3
	c.swsp	ra,00000084
	jal	ra,0000000023096A8C
	c.beqz	a0,000000002309D0E4

l2309D0D4:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000600
	c.add	a0,a5

l2309D0DC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2309D0E4:
	c.lw	s0,0(a5)
	c.li	a4,00000005
	beq	a5,a4,000000002309D0EE

l2309D0EC:
	c.bnez	a5,000000002309D0F2

l2309D0EE:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002309D0DC

l2309D0F2:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000300
	c.j	000000002309D0DC

l2309D0FA:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800
	c.jr	ra

;; mbedtls_x509_get_ext: 2309D102
;;   Called from:
;;     2308FFCC (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_ext proc
	c.lw	a0,0(a5)
	bne	a5,a1,000000002309D10C

l2309D108:
	c.li	a0,00000000
	c.jr	ra

l2309D10C:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lbu	a5,a5,+00000000
	c.mv	s1,a2
	ori	a3,a3,+000000A0
	c.sw	a2,0(a5)
	c.addi	a2,00000004
	c.mv	s0,a0
	jal	ra,000000002309171C
	c.bnez	a0,000000002309D14A

l2309D12A:
	c.lw	s0,0(a5)
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,8(a5)
	c.lw	s1,4(s1)
	c.mv	a0,s0
	c.add	s1,a5
	c.mv	a1,s1
	jal	ra,000000002309171C
	c.beqz	a0,000000002309D154

l2309D142:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000500
	c.add	a0,a5

l2309D14A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2309D154:
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.li	a0,00000000
	c.add	a5,a4
	beq	s1,a5,000000002309D14A

l2309D160:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000566
	c.j	000000002309D14A

;; mbedtls_x509_dn_gets: 2309D168
;;   Called from:
;;     2308EF36 (in mbedtls_x509_crt_info)
;;     2308EF6C (in mbedtls_x509_crt_info)
mbedtls_x509_dn_gets proc
	c.addi16sp	FFFFFEC0
	sw	s1,sp,+00000134
	sw	s3,sp,+0000012C
	sw	s6,sp,+00000120
	c.mv	s3,a1
	c.mv	s6,a2
	c.mv	s1,a0
	addi	a2,zero,+00000100
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	sw	s0,sp,+00000138
	sw	s2,sp,+00000130
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	sw	s9,sp,+00000114
	sw	ra,sp,+0000013C
	c.swsp	zero,00000084
	lui	s4,000230CB
	jal	ra,00000000230A3A68
	lui	s5,000230BF
	c.mv	s2,s6
	c.mv	s0,s3
	c.li	a5,00000000
	lui	s7,000230C7
	lui	s8,000230CB
	lui	s9,000230CB
	addi	s4,s4,+00000340
	addi	s5,s5,-000007F8

l2309D1CC:
	bne	s2,zero,000000002309D1D6

l2309D1D0:
	sub	a0,s3,s0
	c.j	000000002309D1FE

l2309D1D6:
	lw	a4,s2,+00000008
	c.bnez	a4,000000002309D1E2

l2309D1DC:
	lw	s2,s2,+00000018
	c.j	000000002309D1CC

l2309D1E2:
	beq	s2,s6,000000002309D236

l2309D1E6:
	c.mv	a2,s4
	c.bnez	a5,000000002309D1EC

l2309D1EA:
	c.mv	a2,s5

l2309D1EC:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	bge	a0,zero,000000002309D22E

l2309D1F8:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2309D1FE:
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
	c.addi16sp	00000140
	c.jr	ra

l2309D22E:
	bgeu	a0,s0,000000002309D1F8

l2309D232:
	c.sub	s0,a0
	c.add	s1,a0

l2309D236:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,0000000023096978
	c.bnez	a0,000000002309D298

l2309D240:
	c.lwsp	a2,000000A4
	addi	a2,s9,+00000344
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA

l2309D24E:
	blt	a0,zero,000000002309D1F8

l2309D252:
	bgeu	a0,s0,000000002309D1F8

l2309D256:
	c.sub	s0,a0
	c.add	s1,a0
	c.li	a5,00000000
	addi	a2,zero,+000000FF
	c.li	a1,0000001F
	addi	a0,zero,+0000007F
	c.li	a6,0000001E

l2309D268:
	lw	a4,s2,+00000010
	bltu	a5,a4,000000002309D2A6

l2309D270:
	c.addi4spn	a4,00000110
	c.add	a5,a4
	c.addi4spn	a3,00000010
	addi	a2,s7,-00000688
	c.mv	a1,s0
	c.mv	a0,s1
	sb	zero,a5,+00000F00
	jal	ra,00000000230823DA
	blt	a0,zero,000000002309D1F8

l2309D28A:
	bgeu	a0,s0,000000002309D1F8

l2309D28E:
	c.sub	s0,a0
	c.add	s1,a0
	lbu	a5,s2,+0000001C
	c.j	000000002309D1DC

l2309D298:
	addi	a2,s8,+00000348
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	c.j	000000002309D24E

l2309D2A6:
	beq	a5,a2,000000002309D270

l2309D2AA:
	lw	a4,s2,+00000014
	c.add	a4,a5
	lbu	a4,a4,+00000000
	bgeu	a1,a4,000000002309D2C8

l2309D2B8:
	beq	a4,a0,000000002309D2C8

l2309D2BC:
	addi	a3,a4,+0000007F
	andi	a3,a3,+000000FF
	bltu	a6,a3,000000002309D2CC

l2309D2C8:
	addi	a4,zero,+0000003F

l2309D2CC:
	c.addi4spn	a3,00000010
	c.add	a3,a5
	sb	a4,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002309D268

;; mbedtls_x509_serial_gets: 2309D2D8
;;   Called from:
;;     2308EF00 (in mbedtls_x509_crt_info)
mbedtls_x509_serial_gets proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lw	s3,a2,+00000004
	addi	a5,zero,+00000020
	c.mv	s4,a0
	c.mv	s1,a1
	c.mv	s5,a2
	bgeu	a5,s3,000000002309D306

l2309D304:
	c.li	s3,0000001C

l2309D306:
	lui	s6,000230B9
	lui	s7,000230C7
	c.mv	s0,s1
	c.li	s2,00000000
	addi	s8,s3,-00000001
	lui	s9,000230CB
	addi	s6,s6,-000002E4
	addi	s7,s7,-00000244
	c.li	s10,00000001

l2309D324:
	bne	s2,s3,000000002309D350

l2309D328:
	lw	a5,s5,+00000004
	beq	a5,s2,000000002309D34A

l2309D330:
	lui	a2,000230CB
	addi	a2,a2,+00000360
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,00000000230823DA
	blt	a0,zero,000000002309D380

l2309D344:
	bgeu	a0,s0,000000002309D380

l2309D348:
	c.sub	s0,a0

l2309D34A:
	sub	a0,s1,s0
	c.j	000000002309D386

l2309D350:
	lw	a5,s5,+00000008
	bne	s2,zero,000000002309D362

l2309D358:
	beq	s3,s10,000000002309D362

l2309D35C:
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002309D3AA

l2309D362:
	c.add	a5,s2
	lbu	a3,a5,+00000000
	c.mv	a4,s6
	bltu	s2,s8,000000002309D370

l2309D36E:
	c.mv	a4,s7

l2309D370:
	addi	a2,s9,+00000358
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,00000000230823DA
	bge	a0,zero,000000002309D3A2

l2309D380:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2309D386:
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

l2309D3A2:
	bgeu	a0,s0,000000002309D380

l2309D3A6:
	c.sub	s0,a0
	c.add	s4,a0

l2309D3AA:
	c.addi	s2,00000001
	c.j	000000002309D324

;; mbedtls_x509_sig_alg_gets: 2309D3AE
;;   Called from:
;;     2308F022 (in mbedtls_x509_crt_info)
mbedtls_x509_sig_alg_gets proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.addi4spn	a1,0000000C
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023096A62
	c.beqz	a0,000000002309D3EE

l2309D3C6:
	lui	a2,000230BD
	addi	a2,a2,+00000284
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA

l2309D3D6:
	blt	a0,zero,000000002309D3DE

l2309D3DA:
	bltu	a0,s0,000000002309D3E4

l2309D3DE:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2309D3E4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2309D3EE:
	c.lwsp	a2,000000A4
	lui	a2,000230C7
	addi	a2,a2,-00000688
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	c.j	000000002309D3D6

;; mbedtls_x509_key_size_helper: 2309D402
;;   Called from:
;;     2308F040 (in mbedtls_x509_crt_info)
mbedtls_x509_key_size_helper proc
	c.mv	a3,a2
	lui	a2,000230CB
	c.addi	sp,FFFFFFF0
	addi	a2,a2,+0000034C
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002309D42A

l2309D41C:
	bgeu	a0,s0,000000002309D42A

l2309D420:
	c.li	a0,00000000

l2309D422:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2309D42A:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680
	c.j	000000002309D422

;; mbedtls_x509_time_is_past: 2309D432
;;   Called from:
;;     2308F616 (in x509_crt_verify_top.isra.7)
;;     2308F720 (in x509_crt_verify_top.isra.7)
;;     2308F778 (in x509_crt_verify_top.isra.7)
;;     2308F85A (in x509_crt_verify_child)
mbedtls_x509_time_is_past proc
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_x509_time_is_future: 2309D436
;;   Called from:
;;     2308F628 (in x509_crt_verify_top.isra.7)
;;     2308F736 (in x509_crt_verify_top.isra.7)
;;     2308F78A (in x509_crt_verify_top.isra.7)
;;     2308F86C (in x509_crt_verify_child)
mbedtls_x509_time_is_future proc
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_base64_decode: 2309D43A
;;   Called from:
;;     23096F26 (in mbedtls_pem_read_buffer)
;;     23096F46 (in mbedtls_pem_read_buffer)
mbedtls_base64_decode proc
	c.addi	sp,FFFFFFE0
	lui	t3,000230CB
	c.swsp	s0,0000008C
	c.swsp	s1,0000000C
	c.swsp	s2,00000088
	c.swsp	s3,00000008
	c.swsp	s4,00000084
	c.swsp	s5,00000004
	c.li	a5,00000000
	c.li	a6,00000000
	c.li	a7,00000000
	addi	t0,zero,+00000020
	c.li	t2,00000001
	addi	s0,zero,+0000003D
	addi	t3,t3,+00000368
	addi	s1,zero,+0000007F
	addi	s2,zero,+0000003F
	c.li	s3,00000002
	c.li	t5,0000000A
	c.li	s4,0000000D

l2309D46E:
	bltu	a7,a4,000000002309D48A

l2309D472:
	c.mv	a4,a7
	c.j	000000002309D47E

l2309D476:
	c.addi	a7,00000001
	c.addi	t4,00000001
	bne	a4,a7,000000002309D48C

l2309D47E:
	bne	a6,zero,000000002309D4EC

l2309D482:
	sw	zero,a2,+00000000

l2309D486:
	c.li	a0,00000000
	c.j	000000002309D542

l2309D48A:
	c.li	t4,00000000

l2309D48C:
	add	t6,a3,a7
	lbu	t1,t6,+00000000
	beq	t1,t0,000000002309D476

l2309D498:
	beq	a4,a7,000000002309D47E

l2309D49C:
	sub	s5,a4,a7
	bgeu	t2,s5,000000002309D4B4

l2309D4A4:
	bne	t1,s4,000000002309D4B4

l2309D4A8:
	lbu	t6,t6,+00000001
	bne	t6,t5,000000002309D4B8

l2309D4B0:
	c.addi	a7,00000001
	c.j	000000002309D46E

l2309D4B4:
	beq	t1,t5,000000002309D4B0

l2309D4B8:
	bne	t4,zero,000000002309D4C6

l2309D4BC:
	bne	t1,s0,000000002309D4CC

l2309D4C0:
	c.addi	a5,00000001
	bgeu	s3,a5,000000002309D4D8

l2309D4C6:
	addi	a0,zero,-0000002C
	c.j	000000002309D542

l2309D4CC:
	slli	t4,t1,00000018
	srai	t4,t4,00000018
	blt	t4,zero,000000002309D4C6

l2309D4D8:
	c.add	t1,t3
	lbu	t1,t1,+00000000
	beq	t1,s1,000000002309D4C6

l2309D4E2:
	bltu	s2,t1,000000002309D4E8

l2309D4E6:
	c.bnez	a5,000000002309D4C6

l2309D4E8:
	c.addi	a6,00000001
	c.j	000000002309D4B0

l2309D4EC:
	andi	a7,a6,+00000007
	c.li	t1,00000006
	add	a7,a7,t1
	srli	a6,a6,00000003
	add	a6,a6,t1
	c.addi	a7,00000007
	srli	a7,a7,00000003
	sub	a6,a6,a5
	c.add	a6,a7
	c.beqz	a0,000000002309D53A

l2309D50C:
	bltu	a1,a6,000000002309D53A

l2309D510:
	lui	t4,000230CB
	lui	t5,00000400
	c.add	a4,a3
	c.mv	a5,a0
	c.li	a6,00000000
	c.li	a7,00000003
	c.li	t1,00000000
	c.li	t6,00000016
	addi	t4,t4,+00000368
	c.li	t0,00000004
	c.li	t2,00000001
	c.li	s0,00000002
	c.addi	t5,00000009

l2309D530:
	bne	a4,a3,000000002309D552

l2309D534:
	c.sub	a5,a0
	c.sw	a2,0(a5)
	c.j	000000002309D486

l2309D53A:
	sw	a6,a2,+00000000
	addi	a0,zero,-0000002A

l2309D542:
	c.lwsp	t3,00000004
	c.lwsp	s8,00000024
	c.lwsp	s4,00000048
	c.lwsp	a6,00000068
	c.lwsp	a2,00000088
	c.lwsp	s0,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2309D552:
	lbu	t3,a3,+00000000
	addi	a1,t3,-0000000A
	andi	a1,a1,+000000FF
	bltu	t6,a1,000000002309D56A

l2309D562:
	srl	a1,t5,a1
	c.andi	a1,00000001
	c.bnez	a1,000000002309D5A0

l2309D56A:
	c.add	t3,t4
	lbu	a1,t3,+00000000
	c.slli	a6,06
	c.addi	t1,00000001
	addi	t3,a1,-00000040
	sltiu	t3,t3,+00000001
	andi	a1,a1,+0000003F
	sub	a7,a7,t3
	or	a6,a1,a6
	bne	t1,t0,000000002309D5A0

l2309D58C:
	c.li	t1,00000000
	beq	a7,zero,000000002309D5A0

l2309D592:
	srli	a1,a6,00000010
	sb	a1,a5,+00000000
	bne	a7,t2,000000002309D5A4

l2309D59E:
	c.addi	a5,00000001

l2309D5A0:
	c.addi	a3,00000001
	c.j	000000002309D530

l2309D5A4:
	srli	a1,a6,00000008
	sb	a1,a5,+00000001
	bne	a7,s0,000000002309D5B4

l2309D5B0:
	c.addi	a5,00000002
	c.j	000000002309D5A0

l2309D5B4:
	sb	a6,a5,+00000002
	c.addi	a5,00000003
	c.j	000000002309D5A0

;; utils_notifier_chain_init: 2309D5BC
;;   Called from:
;;     23085A4A (in hal_hbn_init)
utils_notifier_chain_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002307A456
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; utils_notifier_chain_register: 2309D5CC
;;   Called from:
;;     23085AA2 (in hal_hbn_init)
utils_notifier_chain_register proc
	c.beqz	a0,000000002309D5E4

l2309D5CE:
	c.li	a5,FFFFFFFF
	c.beqz	a1,000000002309D5E6

l2309D5D2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002307A460
	c.lwsp	a2,00000020
	c.li	a5,00000000
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2309D5E4:
	c.li	a5,FFFFFFFF

l2309D5E6:
	c.mv	a0,a5
	c.jr	ra

;; utils_notifier_chain_call: 2309D5EA
;;   Called from:
;;     23085AB8 (in hal_hbn_enter)
utils_notifier_chain_call proc
	c.beqz	a0,000000002309D614

l2309D5EC:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s1,a1

l2309D5F8:
	c.bnez	s0,000000002309D606

l2309D5FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2309D606:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002309D610

l2309D60A:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	c.jalr	a5

l2309D610:
	c.lw	s0,0(s0)
	c.j	000000002309D5F8

l2309D614:
	c.li	a0,00000000
	c.jr	ra

;; fabs: 2309D618
;;   Called from:
;;     2305C8DE (in print_number)
;;     2305C970 (in print_number)
;;     2305C988 (in print_number)
;;     2305C9C8 (in print_number)
;;     2305C9F2 (in print_number)
;;     2309DD64 (in __ieee754_pow)
;;     2309DDB8 (in __ieee754_pow)
fabs proc
	slli	a1,a1,00000001
	srli	a1,a1,00000001
	jalr	zero,ra,+00000000

;; floor: 2309D624
;;   Called from:
;;     2305C964 (in print_number)
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
	blt	a4,s1,000000002309D738

l2309D66C:
	blt	s1,zero,000000002309D704

l2309D670:
	lui	s6,00000100
	addi	s5,s6,-00000001
	sra	s5,s5,s1
	and	a5,s5,a1
	or	a5,a5,a0
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	beq	a5,zero,000000002309D6D4

l2309D690:
	auipc	a5,0001EF71
	addi	a5,a5,+00000698
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A04B4
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,00000000230A1978
	bge	zero,a0,000000002309D6CC

l2309D6B4:
	bge	s0,zero,000000002309D6C0

l2309D6B8:
	sra	s1,s6,s1
	add	s2,s1,s0

l2309D6C0:
	xori	s5,s5,-00000001
	and	s2,s2,s5
	addi	s4,zero,+00000000

l2309D6CC:
	addi	a3,s4,+00000000
	addi	a4,s2,+00000000

l2309D6D4:
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

l2309D704:
	auipc	a5,0001EF71
	addi	a5,a5,+00000624
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A04B4
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,00000000230A1978
	bge	zero,a0,000000002309D6CC

l2309D728:
	blt	s0,zero,000000002309D7B8

l2309D72C:
	addi	s4,zero,+00000000
	addi	s2,zero,+00000000
	jal	zero,000000002309D6CC

l2309D738:
	addi	a4,zero,+00000033
	bge	a4,s1,000000002309D768

l2309D740:
	addi	a5,zero,+00000400
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	bne	s1,a5,000000002309D6D4

l2309D750:
	addi	a3,a1,+00000000
	addi	a2,a0,+00000000
	jal	ra,00000000230A04B4
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	jal	zero,000000002309D6D4

l2309D768:
	addi	a5,a5,-00000413
	addi	s5,zero,-00000001
	srl	s5,s5,a5
	and	a5,s5,a0
	addi	a3,a0,+00000000
	addi	a4,a1,+00000000
	beq	a5,zero,000000002309D6D4

l2309D784:
	auipc	a5,0001EF71
	addi	a5,a5,+000005A4
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A04B4
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	jal	ra,00000000230A1978
	bge	zero,a0,000000002309D6CC

l2309D7A8:
	blt	s0,zero,000000002309D7D4

l2309D7AC:
	xori	a5,s5,-00000001
	and	s4,s4,a5
	jal	zero,000000002309D6CC

l2309D7B8:
	slli	s0,s0,00000001
	srli	s0,s0,00000001
	or	s0,s0,s3
	addi	s4,zero,+00000000
	beq	s0,zero,000000002309D6CC

l2309D7CC:
	lui	s2,000BFF00
	jal	zero,000000002309D6CC

l2309D7D4:
	addi	a5,zero,+00000014
	beq	s1,a5,000000002309D800

l2309D7DC:
	addi	a5,zero,+00000034
	sub	a5,a5,s1
	addi	s1,zero,+00000001
	sll	s1,s1,a5
	add	s3,s1,s3
	bgeu	s3,s4,000000002309D808

l2309D7F4:
	addi	s2,s0,+00000001
	addi	s4,s3,+00000000
	jal	zero,000000002309D7AC

l2309D800:
	addi	s2,s0,+00000001
	jal	zero,000000002309D7AC

l2309D808:
	addi	s4,s3,+00000000
	jal	zero,000000002309D7AC

;; modf: 2309D810
;;   Called from:
;;     230817E8 (in cvt)
;;     23081870 (in cvt)
;;     23081954 (in cvt)
modf proc
	srai	a4,a1,00000014
	addi	sp,sp,-00000010
	andi	a4,a4,+000007FF
	sw	ra,sp,+0000000C
	addi	a6,a4,-000003FF
	addi	a7,zero,+00000013
	addi	a5,a1,+00000000
	addi	a3,a0,+00000000
	blt	a7,a6,000000002309D878

l2309D834:
	blt	a6,zero,000000002309D8DC

l2309D838:
	lui	a4,00000100
	addi	a4,a4,-00000001
	sra	a6,a4,a6
	and	a4,a6,a1
	or	a4,a4,a0
	bne	a4,zero,000000002309D8A8

l2309D850:
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

l2309D878:
	addi	a7,zero,+00000033
	blt	a7,a6,000000002309D850

l2309D880:
	addi	a6,zero,-00000001
	addi	a4,a4,-00000413
	srl	a4,a6,a4
	and	a6,a4,a0
	beq	a6,zero,000000002309D850

l2309D894:
	xori	a4,a4,-00000001
	and	a3,a4,a0
	addi	t1,a3,+00000000
	addi	a6,a3,+00000000
	jal	zero,000000002309D8BC

l2309D8A8:
	xori	a6,a6,-00000001
	addi	a4,zero,+00000000
	and	a5,a6,a1
	addi	t1,a4,+00000000
	addi	a6,a4,+00000000

l2309D8BC:
	sw	t1,a2,+00000000
	sw	a5,a2,+00000004
	addi	a3,a5,+00000000
	addi	a2,a6,+00000000
	jal	ra,00000000230A22EC
	lw	ra,sp,+0000000C
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309D8DC:
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

;; pow: 2309D904
;;   Called from:
;;     2305CEDA (in parse_value)
pow proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	sw	s5,sp,+00000004
	sw	ra,sp,+0000001C
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	s0,a2,+00000000
	addi	s1,a3,+00000000
	jal	ra,000000002309DB78
	auipc	a5,0001EF72
	addi	a5,a5,-00000214
	lw	a4,a5,+00000000
	addi	a5,zero,-00000001
	addi	s4,a0,+00000000
	addi	s5,a1,+00000000
	beq	a4,a5,000000002309D9DC

l2309D954:
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A2E24
	bne	a0,zero,000000002309D9DC

l2309D96C:
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A2E24
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	bne	a0,zero,000000002309DA68

l2309D98C:
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A18B0
	bne	a0,zero,000000002309DA08

l2309D99C:
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A18B0
	beq	a0,zero,000000002309DA78

l2309D9B4:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309D9DC

l2309D9C4:
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1A64
	blt	a0,zero,000000002309DAFC

l2309D9DC:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,s4,+00000000
	addi	a1,s5,+00000000
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	lw	s5,sp,+00000004
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l2309DA08:
	addi	a0,s4,+00000000
	addi	a1,s5,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309DA8C

l2309DA18:
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a0,s4,+00000000
	addi	a1,s5,+00000000
	jal	ra,00000000230A18B0
	bne	a0,zero,000000002309D9DC

l2309DA30:
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309D9DC

l2309DA40:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309D9DC

l2309DA50:
	jal	ra,00000000230A3630
	addi	a5,zero,+00000022
	sw	a5,a0,+00000000
	addi	s4,zero,+00000000
	addi	s5,zero,+00000000
	jal	zero,000000002309D9DC

l2309DA68:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A18B0
	bne	a0,zero,000000002309D9DC

l2309DA78:
	auipc	a5,0001EF71
	addi	a5,a5,+000002A8
	lw	s4,a5,+00000000
	lw	s5,a5,+00000004
	jal	zero,000000002309D9DC

l2309DA8C:
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309DA18

l2309DA9C:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,000000002309EE04
	beq	a0,zero,000000002309DA18

l2309DAAC:
	addi	a2,s4,+00000000
	addi	a3,s5,+00000000
	addi	a0,s4,+00000000
	addi	a1,s5,+00000000
	jal	ra,00000000230A2E24
	bne	a0,zero,000000002309DB4C

l2309DAC4:
	jal	ra,00000000230A3630
	addi	a5,zero,+00000022
	sw	a5,a0,+00000000
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A1A64
	blt	a0,zero,000000002309DB1C

l2309DAE8:
	auipc	a5,0001EF71
	addi	a5,a5,+00000250
	lw	s4,a5,+00000000
	lw	s5,a5,+00000004
	jal	zero,000000002309D9DC

l2309DAFC:
	jal	ra,00000000230A3630
	addi	a5,zero,+00000021
	sw	a5,a0,+00000000
	auipc	a5,0001EF71
	addi	a5,a5,+00000228
	lw	s4,a5,+00000000
	lw	s5,a5,+00000004
	jal	zero,000000002309D9DC

l2309DB1C:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,000000002309EE30
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A18B0
	beq	a0,zero,000000002309DAE8

l2309DB38:
	auipc	a5,0001EF71
	addi	a5,a5,+000001F8
	lw	s4,a5,+00000000
	lw	s5,a5,+00000004
	jal	zero,000000002309D9DC

l2309DB4C:
	jal	ra,00000000230A3630
	addi	a5,zero,+00000021
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	sw	a5,a0,+00000000
	addi	a1,a3,+00000000
	addi	a0,a2,+00000000
	jal	ra,00000000230A1004
	addi	s4,a0,+00000000
	addi	s5,a1,+00000000
	jal	zero,000000002309D9DC

;; __ieee754_pow: 2309DB78
;;   Called from:
;;     2309D934 (in pow)
__ieee754_pow proc
	lui	a6,00080000
	addi	sp,sp,-00000080
	xori	a6,a6,-00000001
	sw	s2,sp,+00000070
	and	s2,a3,a6
	sw	ra,sp,+0000007C
	sw	s0,sp,+00000078
	sw	s1,sp,+00000074
	sw	s3,sp,+0000006C
	sw	s4,sp,+00000068
	sw	s5,sp,+00000064
	sw	s6,sp,+00000060
	sw	s7,sp,+0000005C
	sw	s8,sp,+00000058
	sw	s9,sp,+00000054
	sw	s10,sp,+00000050
	sw	s11,sp,+0000004C
	or	a5,s2,a2
	beq	a5,zero,000000002309DCC0

l2309DBC4:
	and	s0,a6,a1
	lui	a5,0007FF00
	addi	s5,a1,+00000000
	addi	s4,a0,+00000000
	bge	a5,s0,000000002309DC2C

l2309DBD8:
	lui	a6,000C0100
	add	a6,s0,a6
	or	a6,a6,a0
	lui	a1,0003FF00
	addi	a0,zero,+00000000
	bne	a6,zero,000000002309DCD4

l2309DBF0:
	lw	ra,sp,+0000007C
	lw	s0,sp,+00000078
	lw	s1,sp,+00000074
	lw	s2,sp,+00000070
	lw	s3,sp,+0000006C
	lw	s4,sp,+00000068
	lw	s5,sp,+00000064
	lw	s6,sp,+00000060
	lw	s7,sp,+0000005C
	lw	s8,sp,+00000058
	lw	s9,sp,+00000054
	lw	s10,sp,+00000050
	lw	s11,sp,+0000004C
	addi	sp,sp,+00000080
	jalr	zero,ra,+00000000

l2309DC2C:
	beq	s0,a5,000000002309DCCC

l2309DC30:
	blt	a5,s2,000000002309DBD8

l2309DC34:
	lui	a5,0007FF00
	beq	s2,a5,000000002309DE94

l2309DC3C:
	addi	s1,a1,+00000000
	addi	s3,a0,+00000000
	addi	s9,a2,+00000000
	addi	s11,a3,+00000000
	addi	s10,zero,+00000000
	blt	s5,zero,000000002309DD18

l2309DC54:
	bne	s9,zero,000000002309DD5C

l2309DC58:
	lui	a3,0007FF00
	beq	s2,a3,000000002309DE08

l2309DC60:
	lui	a3,0003FF00
	beq	s2,a3,000000002309DE38

l2309DC68:
	lui	a3,00040000
	beq	s11,a3,000000002309EA6C

l2309DC70:
	lui	a3,0003FE00
	bne	s11,a3,000000002309DD5C

l2309DC78:
	blt	s5,zero,000000002309DD5C

l2309DC7C:
	lw	s0,sp,+00000078
	lw	ra,sp,+0000007C
	lw	s2,sp,+00000070
	lw	s4,sp,+00000068
	lw	s5,sp,+00000064
	lw	s6,sp,+00000060
	lw	s7,sp,+0000005C
	lw	s8,sp,+00000058
	lw	s9,sp,+00000054
	lw	s10,sp,+00000050
	lw	s11,sp,+0000004C
	addi	a0,s3,+00000000
	addi	a1,s1,+00000000
	lw	s3,sp,+0000006C
	lw	s1,sp,+00000074
	addi	sp,sp,+00000080
	jal	zero,000000002309EB50

l2309DCC0:
	addi	a0,zero,+00000000
	lui	a1,0003FF00
	jal	zero,000000002309DBF0

l2309DCCC:
	bne	a0,zero,000000002309DCD4

l2309DCD0:
	bge	s0,s2,000000002309DC34

l2309DCD4:
	lw	s0,sp,+00000078
	lw	ra,sp,+0000007C
	lw	s1,sp,+00000074
	lw	s2,sp,+00000070
	lw	s3,sp,+0000006C
	lw	s4,sp,+00000068
	lw	s5,sp,+00000064
	lw	s6,sp,+00000060
	lw	s7,sp,+0000005C
	lw	s8,sp,+00000058
	lw	s9,sp,+00000054
	lw	s10,sp,+00000050
	lw	s11,sp,+0000004C
	auipc	a0,00000029
	addi	a0,a0,+000000B4
	addi	sp,sp,+00000080
	jal	zero,000000002309EE1C

l2309DD18:
	lui	a3,00043400
	bge	s2,a3,000000002309DE9C

l2309DD20:
	lui	a3,0003FF00
	blt	s2,a3,000000002309DD58

l2309DD28:
	srai	a3,s2,00000014
	addi	a3,a3,-000003FF
	addi	a2,zero,+00000014
	bge	a2,a3,000000002309EA84

l2309DD38:
	addi	a2,zero,+00000034
	sub	a3,a2,a3
	srl	a2,s9,a3
	sll	a3,a2,a3
	bne	a3,s9,000000002309DD58

l2309DD4C:
	andi	a2,a2,+00000001
	addi	t1,zero,+00000002
	sub	s10,t1,a2

l2309DD58:
	beq	s9,zero,000000002309DC60

l2309DD5C:
	addi	a0,s3,+00000000
	addi	a1,s1,+00000000
	jal	ra,000000002309D618
	beq	s4,zero,000000002309DDC0

l2309DD6C:
	srli	t3,s1,0000001F
	addi	t3,t3,-00000001
	or	a3,s10,t3
	beq	a3,zero,000000002309DEA4

l2309DD7C:
	lui	a3,00041E00
	bge	a3,s2,000000002309DEC8

l2309DD84:
	lui	a3,00043F00
	bge	a3,s2,000000002309E8E0

l2309DD8C:
	lui	a4,0003FF00
	bge	s0,a4,000000002309DE64

l2309DD94:
	bge	s11,zero,000000002309DE2C

l2309DD98:
	auipc	a5,0001EF71
	addi	a5,a5,-00000070
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	addi	a0,a2,+00000000
	addi	a1,a3,+00000000
	jal	ra,00000000230A1B50
	jal	zero,000000002309DBF0

l2309DDB8:
	jal	ra,000000002309D618
	bne	s4,zero,000000002309DEA4

l2309DDC0:
	beq	s0,zero,000000002309DDD4

l2309DDC4:
	slli	a3,s1,00000002
	srli	a3,a3,00000002
	lui	a2,0003FF00
	bne	a3,a2,000000002309DD6C

l2309DDD4:
	blt	s11,zero,000000002309DE6C

l2309DDD8:
	bge	s5,zero,000000002309DBF0

l2309DDDC:
	lui	a5,000C0100
	add	a5,s0,a5
	or	a5,a5,s10
	bne	a5,zero,000000002309EAD4

l2309DDEC:
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A1004
	jal	zero,000000002309DBF0

l2309DE08:
	lui	a0,000C0100
	add	a0,s0,a0
	or	a0,a0,s3
	beq	a0,zero,000000002309DCC0

l2309DE18:
	lui	a4,0003FF00
	blt	s0,a4,000000002309E8C0

l2309DE20:
	addi	a1,s11,+00000000
	addi	a0,zero,+00000000
	bge	s11,zero,000000002309DBF0

l2309DE2C:
	addi	a0,zero,+00000000
	addi	a1,zero,+00000000
	jal	zero,000000002309DBF0

l2309DE38:
	addi	a0,s3,+00000000
	addi	a1,s1,+00000000
	bge	s11,zero,000000002309DBF0

l2309DE44:
	auipc	a5,0001EF71
	addi	a5,a5,-00000124
	lw	a0,a5,+00000000
	lw	a1,a5,+00000004
	addi	a2,s3,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A1004
	jal	zero,000000002309DBF0

l2309DE64:
	blt	zero,s11,000000002309DD98

l2309DE68:
	jal	zero,000000002309DE2C

l2309DE6C:
	auipc	a4,0001EF71
	addi	a4,a4,-0000014C
	addi	s9,a0,+00000000
	addi	a5,a1,+00000000
	lw	a0,a4,+00000000
	lw	a1,a4,+00000004
	addi	a2,s9,+00000000
	addi	a3,a5,+00000000
	jal	ra,00000000230A1004
	jal	zero,000000002309DDD8

l2309DE94:
	beq	a2,zero,000000002309DC3C

l2309DE98:
	jal	zero,000000002309DBD8

l2309DE9C:
	addi	s10,zero,+00000002
	jal	zero,000000002309DC54

l2309DEA4:
	addi	a2,s3,+00000000
	addi	a3,s1,+00000000
	addi	a0,s3,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A1004
	jal	zero,000000002309DBF0

l2309DEC8:
	lui	a3,0007FF00
	and	s1,a3,s1
	addi	a2,zero,+00000000
	bne	s1,zero,000000002309DEFC

l2309DED8:
	auipc	a3,0001EF71
	addi	a3,a3,-00000148
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	sw	t3,sp,+00000008
	jal	ra,00000000230A1B50
	lw	t3,sp,+00000008
	addi	s0,a1,+00000000
	addi	a2,zero,-00000035

l2309DEFC:
	lui	a1,00000100
	srai	t4,s0,00000014
	addi	a6,a1,-00000001
	lui	a3,0000003A
	addi	t4,t4,-000003FF
	and	a6,s0,a6
	lui	s8,0003FF00
	addi	a3,a3,-00000772
	add	t4,t4,a2
	or	s8,a6,s8
	bge	a3,a6,000000002309E8D4

l2309DF28:
	lui	a3,000000BB
	addi	a3,a3,+00000679
	bge	a3,a6,000000002309EAEC

l2309DF34:
	auipc	s5,0001EF71
	addi	s5,s5,-00000214
	addi	t4,t4,+00000001
	sub	s8,s8,a1

l2309DF44:
	lw	a5,s5,+00000000
	lw	a6,s5,+00000004
	sw	zero,sp,+00000010
	sw	zero,sp,+00000014
	sw	zero,sp,+00000038
	sw	zero,sp,+0000003C
	addi	s3,zero,+00000000
	sw	a5,sp,+00000008
	sw	a6,sp,+0000000C

l2309DF68:
	lw	s0,sp,+00000008
	lw	s1,sp,+0000000C
	addi	a1,s8,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	sw	t4,sp,+00000034
	sw	t3,sp,+00000030
	addi	s2,a0,+00000000
	jal	ra,00000000230A22EC
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s8,+00000000
	sw	s0,sp,+00000008
	sw	s1,sp,+0000000C
	jal	ra,00000000230A04B4
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	lw	a0,s5,+00000000
	lw	a1,s5,+00000004
	addi	s1,zero,+00000000
	jal	ra,00000000230A1004
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	sw	a0,sp,+00000018
	sw	a1,sp,+0000001C
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A1B50
	srai	t5,s8,00000001
	lui	a3,00020000
	or	t5,t5,a3
	lui	a3,00000080
	add	t5,t5,a3
	add	s3,t5,s3
	addi	s4,a0,+00000000
	addi	a3,s3,+00000000
	addi	a2,zero,+00000000
	addi	a0,s1,+00000000
	addi	s0,a1,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A22EC
	lw	a2,sp,+00000008
	lw	a3,sp,+0000000C
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a0,zero,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s8,+00000000
	jal	ra,00000000230A22EC
	addi	a2,s1,+00000000
	addi	a3,s0,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A22EC
	lw	a6,sp,+00000018
	lw	a7,sp,+0000001C
	auipc	s7,0001EF71
	addi	s7,s7,-000002B8
	addi	a2,a6,+00000000
	addi	a3,a7,+00000000
	jal	ra,00000000230A1B50
	addi	a2,s4,+00000000
	addi	a3,s0,+00000000
	sw	a0,sp,+00000008
	sw	a1,sp,+0000000C
	addi	a0,s4,+00000000
	addi	a1,s0,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-00000318
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-0000032C
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s6,zero,+00000000
	addi	s8,zero,+00000000
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-0000034C
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-00000364
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-0000037C
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-00000394
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	sw	a0,sp,+00000018
	sw	a1,sp,+0000001C
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A1B50
	lw	a4,sp,+00000018
	lw	a5,sp,+0000001C
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,a4,+00000000
	addi	a1,a5,+00000000
	jal	ra,00000000230A1B50
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,s1,+00000000
	addi	a3,s0,+00000000
	addi	a0,s4,+00000000
	addi	a1,s0,+00000000
	jal	ra,00000000230A04B4
	lw	a2,sp,+00000008
	lw	a3,sp,+0000000C
	jal	ra,00000000230A1B50
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A04B4
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,s1,+00000000
	addi	a3,s0,+00000000
	addi	a0,s1,+00000000
	addi	a1,s0,+00000000
	jal	ra,00000000230A1B50
	lw	a2,s7,+00000000
	lw	a3,s7,+00000004
	sw	a0,sp,+00000028
	sw	a1,sp,+0000002C
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	sw	s2,sp,+00000018
	sw	s3,sp,+0000001C
	jal	ra,00000000230A04B4
	addi	s2,a1,+00000000
	addi	a2,s6,+00000000
	addi	a3,a1,+00000000
	addi	a0,s1,+00000000
	addi	a1,s0,+00000000
	jal	ra,00000000230A1B50
	lw	a2,s7,+00000000
	lw	a3,s7,+00000004
	sw	a0,sp,+00000020
	sw	a1,sp,+00000024
	addi	a0,s6,+00000000
	addi	a1,s2,+00000000
	jal	ra,00000000230A22EC
	lw	t5,sp,+00000028
	lw	t6,sp,+0000002C
	addi	a2,t5,+00000000
	addi	a3,t6,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	lw	a0,sp,+00000018
	lw	a1,sp,+0000001C
	jal	ra,00000000230A22EC
	addi	a2,s4,+00000000
	addi	a3,s0,+00000000
	jal	ra,00000000230A1B50
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	lw	a0,sp,+00000008
	lw	a1,sp,+0000000C
	addi	a2,s6,+00000000
	addi	a3,s2,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A04B4
	lw	s6,sp,+00000020
	lw	s7,sp,+00000024
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A04B4
	auipc	a3,0001EF71
	addi	a3,a3,-00000504
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	a0,s8,+00000000
	addi	s4,a1,+00000000
	jal	ra,00000000230A1B50
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,s6,+00000000
	addi	a3,s7,+00000000
	addi	a0,s8,+00000000
	addi	a1,s4,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A22EC
	auipc	a3,0001EF71
	addi	a3,a3,-00000548
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A1B50
	auipc	a3,0001EF71
	addi	a3,a3,-00000554
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a0,s8,+00000000
	addi	a1,s4,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A04B4
	lw	a2,sp,+00000038
	lw	a3,sp,+0000003C
	jal	ra,00000000230A04B4
	lw	t4,sp,+00000034
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a0,t4,+00000000
	jal	ra,00000000230A307C
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a2,s6,+00000000
	addi	a3,s7,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A04B4
	lw	a2,sp,+00000010
	lw	a3,sp,+00000014
	jal	ra,00000000230A04B4
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A04B4
	addi	a2,zero,+00000000
	addi	a0,a2,+00000000
	addi	a3,s1,+00000000
	addi	a2,s0,+00000000
	addi	s1,a1,+00000000
	addi	s0,a0,+00000000
	jal	ra,00000000230A22EC
	lw	a2,sp,+00000010
	lw	a3,sp,+00000014
	jal	ra,00000000230A22EC
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A22EC
	lw	t3,sp,+00000030
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000

l2309E414:
	addi	t1,s10,-00000001
	or	t3,t1,t3
	bne	t3,zero,000000002309E8AC

l2309E420:
	auipc	a3,0001EF71
	addi	a3,a3,-000006C8
	lw	a5,a3,+00000000
	lw	a6,a3,+00000004
	sw	a5,sp,+00000008
	sw	a6,sp,+0000000C

l2309E438:
	addi	s8,zero,+00000000
	addi	a2,s8,+00000000
	addi	a3,s11,+00000000
	addi	a0,s9,+00000000
	addi	a1,s11,+00000000
	jal	ra,00000000230A22EC
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A1B50
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a2,s9,+00000000
	addi	a3,s11,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A04B4
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,s8,+00000000
	addi	a3,s11,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A04B4
	lui	a5,00040900
	addi	s4,a0,+00000000
	addi	s6,a1,+00000000
	addi	s7,a1,+00000000
	blt	a1,a5,000000002309E83C

l2309E4D8:
	sub	a5,a1,a5
	or	a5,a5,a0
	bne	a5,zero,000000002309EAC8

l2309E4E4:
	auipc	a5,0001EF71
	addi	a5,a5,-000006FC
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A04B4
	addi	s10,a0,+00000000
	addi	s11,a1,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s4,+00000000
	addi	a1,s6,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s10,+00000000
	addi	a1,s11,+00000000
	jal	ra,00000000230A1978
	blt	zero,a0,000000002309EAC8

l2309E534:
	srai	a5,s7,00000014
	andi	a5,a5,+000007FF

l2309E53C:
	lui	a0,00000100
	addi	a5,a5,-000003FE
	sra	a5,a0,a5
	add	a5,a5,s7
	srai	a4,a5,00000014
	andi	a4,a4,+000007FF
	addi	a4,a4,-000003FF
	addi	s4,a0,-00000001
	sra	a1,s4,a4
	xori	a1,a1,-00000001
	and	a1,a1,a5
	and	s4,a5,s4
	addi	a5,zero,+00000014
	or	s4,s4,a0
	sub	a4,a5,a4
	addi	a2,zero,+00000000
	addi	a3,a1,+00000000
	sra	s4,s4,a4
	bge	s7,zero,000000002309E58C

l2309E588:
	sub	s4,zero,s4

l2309E58C:
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A04B4
	addi	s6,a1,+00000000
	slli	s11,s4,00000014

l2309E5BC:
	auipc	a4,0001EF71
	addi	a4,a4,-000007C4
	lw	a2,a4,+00000000
	lw	a3,a4,+00000004
	addi	s8,zero,+00000000
	addi	a0,s8,+00000000
	addi	a1,s6,+00000000
	jal	ra,00000000230A1B50
	addi	s10,s6,+00000000
	addi	s7,a1,+00000000
	addi	s6,a0,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s8,+00000000
	addi	a1,s10,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A22EC
	auipc	a4,0001EF70
	addi	a4,a4,+000007F0
	lw	a2,a4,+00000000
	lw	a3,a4,+00000004
	jal	ra,00000000230A1B50
	auipc	a4,0001EF70
	addi	a4,a4,+000007E4
	lw	a2,a4,+00000000
	lw	a3,a4,+00000004
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	addi	a0,s8,+00000000
	addi	a1,s10,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A04B4
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A04B4
	addi	a2,s6,+00000000
	addi	a3,s7,+00000000
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A22EC
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	auipc	a5,0001EF70
	addi	a5,a5,+00000754
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	jal	ra,00000000230A1B50
	auipc	a5,0001EF70
	addi	a5,a5,+00000740
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A22EC
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a5,0001EF70
	addi	a5,a5,+00000728
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a5,0001EF70
	addi	a5,a5,+00000710
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A22EC
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	auipc	a5,0001EF70
	addi	a5,a5,+000006F8
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A04B4
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	s8,a0,+00000000
	addi	s9,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF70
	addi	a3,a3,+000006B0
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a0,s8,+00000000
	addi	a1,s9,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A1004
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a2,s6,+00000000
	addi	a3,s7,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	addi	a2,s6,+00000000
	addi	a3,s7,+00000000
	jal	ra,00000000230A04B4
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A22EC
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a3,a1,+00000000
	addi	a2,a0,+00000000
	lw	a1,s5,+00000004
	lw	a0,s5,+00000000
	jal	ra,00000000230A22EC
	add	a5,s11,a1
	srai	a3,a5,00000014
	bge	zero,a3,000000002309EB44

l2309E828:
	addi	a1,a5,+00000000

l2309E82C:
	lw	a2,sp,+00000008
	lw	a3,sp,+0000000C
	jal	ra,00000000230A1B50
	jal	zero,000000002309DBF0

l2309E83C:
	slli	a5,a1,00000001
	lui	a3,0004090D
	srli	a5,a5,00000001
	addi	a3,a3,-00000401
	bge	a3,a5,000000002309EAB0

l2309E850:
	lui	a5,0003F6F3
	addi	a5,a5,+00000400
	add	a5,a1,a5
	or	a5,a5,a0
	bne	a5,zero,000000002309E880

l2309E864:
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A1978
	blt	a0,zero,000000002309E534

l2309E880:
	auipc	s0,0001EF70
	addi	s0,s0,+00000570

l2309E888:
	lw	a2,s0,+00000000
	lw	a3,s0,+00000004
	lw	a0,sp,+00000008
	lw	a1,sp,+0000000C
	jal	ra,00000000230A1B50
	lw	a2,s0,+00000000
	lw	a3,s0,+00000004
	jal	ra,00000000230A1B50
	jal	zero,000000002309DBF0

l2309E8AC:
	lw	a5,s5,+00000000
	lw	a6,s5,+00000004
	sw	a5,sp,+00000008
	sw	a6,sp,+0000000C
	jal	zero,000000002309E438

l2309E8C0:
	bge	s11,zero,000000002309DE2C

l2309E8C4:
	lui	a1,00080000
	addi	a0,zero,+00000000
	xor	a1,a1,s11
	jal	zero,000000002309DBF0

l2309E8D4:
	auipc	s5,0001EF70
	addi	s5,s5,+0000044C
	jal	zero,000000002309DF44

l2309E8E0:
	lui	a3,0003FF00
	addi	a2,a3,-00000002
	bge	a2,s0,000000002309DD94

l2309E8EC:
	blt	a3,s0,000000002309DE64

l2309E8F0:
	auipc	s5,0001EF70
	addi	s5,s5,+00000430
	lw	a2,s5,+00000000
	lw	a3,s5,+00000004
	sw	t3,sp,+00000010
	jal	ra,00000000230A22EC
	auipc	a3,0001EF70
	addi	a3,a3,+00000458
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s0,a0,+00000000
	addi	s1,a1,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF70
	addi	a3,a3,+00000444
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF70
	addi	a3,a3,+00000428
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	sw	a0,sp,+00000008
	sw	a1,sp,+0000000C
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	addi	a3,a1,+00000000
	auipc	a1,0001EF70
	addi	a1,a1,+00000408
	addi	a2,a0,+00000000
	lw	a0,a1,+00000000
	lw	a1,a1,+00000004
	jal	ra,00000000230A22EC
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A1B50
	addi	a3,a1,+00000000
	auipc	a1,0001EF70
	addi	a1,a1,+000003E8
	addi	a2,a0,+00000000
	lw	a0,a1,+00000000
	lw	a1,a1,+00000004
	jal	ra,00000000230A22EC
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A1B50
	auipc	a3,0001EF70
	addi	a3,a3,+000003A8
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A1B50
	lw	a4,sp,+00000008
	lw	a5,sp,+0000000C
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,a4,+00000000
	addi	a1,a5,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	s6,a0,+00000000
	addi	s7,a1,+00000000
	addi	a0,s2,+00000000
	addi	a1,s3,+00000000
	jal	ra,00000000230A04B4
	addi	a2,zero,+00000000
	addi	a3,s3,+00000000
	addi	a0,a2,+00000000
	addi	s0,a2,+00000000
	addi	a2,s2,+00000000
	addi	s1,a1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	addi	a0,s6,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A22EC
	addi	s2,a0,+00000000
	addi	s3,a1,+00000000
	lw	t3,sp,+00000010
	jal	zero,000000002309E414

l2309EA6C:
	addi	a2,s3,+00000000
	addi	a0,s3,+00000000
	addi	a3,s1,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A1B50
	jal	zero,000000002309DBF0

l2309EA84:
	bne	s9,zero,000000002309DDB8

l2309EA88:
	sub	a3,a2,a3
	sra	a2,s2,a3
	sll	a3,a2,a3
	addi	s10,s9,+00000000
	beq	a3,s2,000000002309EAA0

l2309EA9C:
	jal	zero,000000002309DC60

l2309EAA0:
	andi	a2,a2,+00000001
	addi	t1,zero,+00000002
	sub	s10,t1,a2
	jal	zero,000000002309DC60

l2309EAB0:
	lui	a4,0003FE00
	addi	s11,zero,+00000000
	addi	s4,zero,+00000000
	bge	a4,a5,000000002309E5BC

l2309EAC0:
	srai	a5,a5,00000014
	jal	zero,000000002309E53C

l2309EAC8:
	auipc	s0,0001EF70
	addi	s0,s0,+00000260
	jal	zero,000000002309E888

l2309EAD4:
	addi	a5,zero,+00000001
	beq	s10,a5,000000002309EAE0

l2309EADC:
	jal	zero,000000002309DBF0

l2309EAE0:
	lui	a5,00080000
	xor	a1,a5,a1
	jal	zero,000000002309DBF0

l2309EAEC:
	auipc	a3,0001EF70
	addi	a3,a3,+00000254
	lw	a5,a3,+00000000
	lw	a6,a3,+00000004
	auipc	a3,0001EF70
	addi	a3,a3,+0000024C
	sw	a5,sp,+00000010
	sw	a6,sp,+00000014
	lw	a5,a3,+00000000
	lw	a6,a3,+00000004
	auipc	a3,0001EF70
	addi	a3,a3,+0000023C
	sw	a5,sp,+00000038
	sw	a6,sp,+0000003C
	lw	a5,a3,+00000000
	lw	a6,a3,+00000004
	lui	s3,00000040
	sw	a5,sp,+00000008
	sw	a6,sp,+0000000C
	auipc	s5,0001EF70
	addi	s5,s5,+000001E8
	jal	zero,000000002309DF68

l2309EB44:
	addi	a2,s4,+00000000
	jal	ra,000000002309F054
	jal	zero,000000002309E82C

;; __ieee754_sqrt: 2309EB50
;;   Called from:
;;     2309DCBC (in __ieee754_pow)
__ieee754_sqrt proc
	addi	sp,sp,-00000010
	lui	a4,0007FF00
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	and	a6,a4,a1
	addi	s1,a1,+00000000
	addi	s0,a0,+00000000
	beq	a6,a4,000000002309ED80

l2309EB74:
	addi	a5,a1,+00000000
	addi	a3,a0,+00000000
	bge	zero,a1,000000002309ECD0

l2309EB80:
	srai	t3,a1,00000014
	beq	t3,zero,000000002309EDE0

l2309EB88:
	lui	a4,00000100
	addi	a2,a4,-00000001
	and	a5,a5,a2
	or	a5,a5,a4
	addi	t3,t3,-000003FF
	slli	a4,a5,00000001
	andi	a2,t3,+00000001
	srli	a5,a3,0000001F
	add	a5,a4,a5
	slli	a4,a3,00000001
	beq	a2,zero,000000002309EBC4

l2309EBB4:
	srli	a4,a4,0000001F
	slli	a5,a5,00000001
	add	a5,a5,a4
	slli	a4,a3,00000002

l2309EBC4:
	srai	t3,t3,00000001
	addi	a1,zero,+00000016
	addi	t4,zero,+00000000
	addi	a3,zero,+00000000
	lui	a2,00000200

l2309EBD8:
	add	a0,a3,a2
	srli	a6,a4,0000001F
	addi	a1,a1,-00000001
	blt	a5,a0,000000002309EBF4

l2309EBE8:
	sub	a5,a5,a0
	add	a3,a0,a2
	add	t4,t4,a2

l2309EBF4:
	slli	a5,a5,00000001
	add	a5,a6,a5
	slli	a4,a4,00000001
	srli	a2,a2,00000001
	bne	a1,zero,000000002309EBD8

l2309EC08:
	addi	t1,zero,+00000000
	addi	a6,zero,+00000020
	lui	a2,00080000
	jal	zero,000000002309EC38

l2309EC18:
	beq	a5,a3,000000002309ED54

l2309EC1C:
	srli	a0,a4,0000001F
	slli	a5,a5,00000001
	addi	a6,a6,-00000001
	add	a5,a5,a0
	slli	a4,a4,00000001
	srli	a2,a2,00000001
	beq	a6,zero,000000002309EC80

l2309EC38:
	add	a0,a2,a1
	bge	a3,a5,000000002309EC18

l2309EC40:
	add	a1,a0,a2
	addi	a7,a3,+00000000
	blt	a0,zero,000000002309ED44

l2309EC4C:
	sub	a5,a5,a3
	sltu	a3,a4,a0
	sub	a5,a5,a3

l2309EC58:
	sub	a4,a4,a0
	srli	a0,a4,0000001F
	slli	a5,a5,00000001
	addi	a6,a6,-00000001
	add	t1,t1,a2
	addi	a3,a7,+00000000
	add	a5,a5,a0
	slli	a4,a4,00000001
	srli	a2,a2,00000001
	bne	a6,zero,000000002309EC38

l2309EC80:
	or	a5,a5,a4
	bne	a5,zero,000000002309ED6C

l2309EC88:
	srli	a6,t1,00000001

l2309EC8C:
	srai	a4,t4,00000001
	lui	s1,0003FE00
	andi	t4,t4,+00000001
	add	s1,a4,s1
	beq	t4,zero,000000002309ECA8

l2309ECA0:
	lui	a5,00080000
	or	a6,a6,a5

l2309ECA8:
	slli	a4,t3,00000014
	addi	s0,a6,+00000000
	add	a4,a4,s1

l2309ECB4:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	addi	a1,a4,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309ECD0:
	slli	a4,a1,00000001
	srli	a4,a4,00000001
	or	a6,a4,a0
	addi	a4,a1,+00000000
	beq	a6,zero,000000002309ECB4

l2309ECE4:
	bne	a1,zero,000000002309EDBC

l2309ECE8:
	srli	a1,a3,0000000B
	addi	a5,a5,-00000015
	addi	a4,a1,+00000000
	slli	a3,a3,00000015
	beq	a1,zero,000000002309ECE8

l2309ECFC:
	srli	a2,a1,00000014
	bne	a2,zero,000000002309EDF4

l2309ED04:
	addi	a2,zero,+00000000
	jal	zero,000000002309ED10

l2309ED0C:
	addi	a2,a0,+00000000

l2309ED10:
	slli	a4,a4,00000001
	slli	a1,a4,0000000B
	addi	a0,a2,+00000001
	bge	a1,zero,000000002309ED0C

l2309ED20:
	addi	a7,zero,+00000020
	addi	a6,a3,+00000000
	sub	a7,a7,a0
	addi	a1,a4,+00000000
	sll	a3,a3,a0

l2309ED34:
	srl	a4,a6,a7
	sub	t3,a5,a2
	or	a5,a4,a1
	jal	zero,000000002309EB88

l2309ED44:
	xori	a7,a1,-00000001
	srli	a7,a7,0000001F
	add	a7,a3,a7
	jal	zero,000000002309EC4C

l2309ED54:
	bltu	a4,a0,000000002309EC1C

l2309ED58:
	add	a1,a0,a2
	blt	a0,zero,000000002309ED44

l2309ED60:
	addi	a7,a5,+00000000
	addi	a5,zero,+00000000
	jal	zero,000000002309EC58

l2309ED6C:
	addi	a5,zero,-00000001
	beq	t1,a5,000000002309EDEC

l2309ED74:
	addi	a6,t1,+00000001
	srli	a6,a6,00000001
	jal	zero,000000002309EC8C

l2309ED80:
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A1B50
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A04B4
	addi	s0,a0,+00000000
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a4,a1,+00000000
	lw	s1,sp,+00000004
	addi	a1,a4,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309EDBC:
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A22EC
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A1004
	addi	s0,a0,+00000000
	addi	a4,a1,+00000000
	jal	zero,000000002309ECB4

l2309EDE0:
	addi	a4,a1,+00000000
	addi	a5,zero,+00000000
	jal	zero,000000002309ED04

l2309EDEC:
	addi	t4,t4,+00000001
	jal	zero,000000002309EC8C

l2309EDF4:
	addi	a6,a3,+00000000
	addi	a7,zero,+00000020
	addi	a2,zero,-00000001
	jal	zero,000000002309ED34

;; finite: 2309EE04
;;   Called from:
;;     2309D9BC (in pow)
;;     2309DA10 (in pow)
;;     2309DA38 (in pow)
;;     2309DA48 (in pow)
;;     2309DA94 (in pow)
;;     2309DAA4 (in pow)
finite proc
	slli	a1,a1,00000001
	srli	a1,a1,00000001
	lui	a0,00080100
	add	a0,a1,a0
	srli	a0,a0,0000001F
	jalr	zero,ra,+00000000

;; nan: 2309EE1C
;;   Called from:
;;     2309DD14 (in __ieee754_pow)
nan proc
	auipc	a5,0001EF70
	addi	a5,a5,+00000024
	lw	a0,a5,+00000000
	lw	a1,a5,+00000004
	jalr	zero,ra,+00000000

;; rint: 2309EE30
;;   Called from:
;;     2309DB24 (in pow)
rint proc
	srai	a4,a1,00000014
	addi	sp,sp,-00000030
	andi	a4,a4,+000007FF
	sw	s0,sp,+00000028
	sw	ra,sp,+0000002C
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	addi	a2,a4,-000003FF
	addi	a7,zero,+00000013
	addi	a5,a1,+00000000
	addi	a3,a0,+00000000
	addi	t3,a1,+00000000
	srli	s0,a1,0000001F
	blt	a7,a2,000000002309EFE0

l2309EE6C:
	blt	a2,zero,000000002309EF3C

l2309EE70:
	lui	a1,00000100
	addi	a1,a1,-00000001
	sra	a1,a1,a2
	and	a0,a1,a5
	or	a0,a0,a3
	addi	a7,a3,+00000000
	addi	t1,a5,+00000000
	beq	a0,zero,000000002309EF18

l2309EE90:
	srli	a1,a1,00000001
	and	a6,a1,a5
	or	a6,a6,a3
	beq	a6,zero,000000002309EEC8

l2309EEA0:
	addi	a3,a4,-00000412
	lui	t3,00000040
	sltiu	a3,a3,+00000001
	xori	a1,a1,-00000001
	lui	a6,00080000
	sub	a3,zero,a3
	and	a5,a1,a5
	sra	a2,t3,a2
	and	a6,a6,a3
	or	t3,a5,a2

l2309EEC8:
	auipc	a5,0000002C
	addi	a5,a5,+00000520
	slli	t1,s0,00000003
	add	t1,a5,t1
	lw	s0,t1,+00000000
	lw	s1,t1,+00000004
	addi	a2,a6,+00000000
	addi	a3,t3,+00000000
	addi	a0,s0,+00000000
	addi	a1,s1,+00000000
	jal	ra,00000000230A04B4
	sw	a0,sp,+00000008
	sw	a1,sp,+0000000C
	lw	a0,sp,+00000008
	lw	a1,sp,+0000000C
	addi	a2,s0,+00000000
	addi	a3,s1,+00000000
	jal	ra,00000000230A22EC
	addi	a7,a0,+00000000
	addi	t1,a1,+00000000

l2309EF18:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	addi	a0,a7,+00000000
	addi	a1,t1,+00000000
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l2309EF3C:
	lui	s1,00080000
	xori	s1,s1,-00000001
	and	a4,s1,a1
	or	a4,a4,a0
	addi	a7,a0,+00000000
	addi	t1,a1,+00000000
	beq	a4,zero,000000002309EF18

l2309EF58:
	slli	a5,a1,0000000C
	srli	a5,a5,0000000C
	or	a4,a5,a0
	sub	a5,zero,a4
	or	a5,a5,a4
	auipc	a3,0000002C
	addi	a3,a3,+0000047C
	slli	a4,s0,00000003
	add	a3,a3,a4
	srli	a5,a5,0000000C
	lw	s2,a3,+00000000
	lw	s3,a3,+00000004
	lui	a4,000FFFE0
	lui	t1,00000080
	and	a4,a4,a1
	and	t1,a5,t1
	or	t1,t1,a4
	addi	a3,t1,+00000000
	addi	a2,a0,+00000000
	addi	a1,s3,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A04B4
	sw	a0,sp,+00000008
	sw	a1,sp,+0000000C
	lw	a0,sp,+00000008
	lw	a1,sp,+0000000C
	addi	a2,s2,+00000000
	addi	a3,s3,+00000000
	jal	ra,00000000230A22EC
	and	s1,s1,a1
	slli	t1,s0,0000001F
	or	t1,s1,t1
	addi	a7,a0,+00000000
	jal	zero,000000002309EF18

l2309EFE0:
	addi	a7,zero,+00000033
	bge	a7,a2,000000002309F010

l2309EFE8:
	addi	a4,zero,+00000400
	addi	a7,a0,+00000000
	addi	t1,a1,+00000000
	bne	a2,a4,000000002309EF18

l2309EFF8:
	addi	a2,a0,+00000000
	addi	a3,t3,+00000000
	jal	ra,00000000230A04B4
	addi	a7,a0,+00000000
	addi	t1,a1,+00000000
	jal	zero,000000002309EF18

l2309F010:
	addi	a4,a4,-00000413
	addi	a2,zero,-00000001
	srl	a2,a2,a4
	and	a1,a2,a0
	addi	a7,a0,+00000000
	addi	t1,a5,+00000000
	beq	a1,zero,000000002309EF18

l2309F02C:
	srli	a2,a2,00000001
	and	a5,a2,a0
	addi	a6,a0,+00000000
	beq	a5,zero,000000002309EEC8

l2309F03C:
	lui	a6,00040000
	xori	a2,a2,-00000001
	and	a3,a2,a0
	sra	a4,a6,a4
	or	a6,a3,a4
	jal	zero,000000002309EEC8

;; scalbn: 2309F054
;;   Called from:
;;     2309EB48 (in __ieee754_pow)
scalbn proc
	addi	sp,sp,-00000010
	srai	a5,a1,00000014
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	andi	a5,a5,+000007FF
	addi	s0,a2,+00000000
	bne	a5,zero,000000002309F10C

l2309F070:
	slli	a5,a1,00000001
	srli	a5,a5,00000001
	or	a5,a5,a0
	beq	a5,zero,000000002309F0FC

l2309F080:
	auipc	a5,0001EF70
	addi	a5,a5,-00000238
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A1B50
	lui	a5,000FFFF4
	addi	a5,a5,-00000350
	addi	a4,a1,+00000000
	blt	s0,a5,000000002309F1D4

l2309F0A4:
	srai	a5,a1,00000014
	andi	a5,a5,+000007FF
	addi	a5,a5,-00000036

l2309F0B0:
	add	a5,s0,a5
	addi	a3,zero,+000007FE
	blt	a3,a5,000000002309F134

l2309F0BC:
	blt	zero,a5,000000002309F1B0

l2309F0C0:
	addi	a3,zero,-00000035
	bge	a5,a3,000000002309F170

l2309F0C8:
	lui	a5,0000000C
	addi	a5,a5,+00000350
	blt	a5,s0,000000002309F134

l2309F0D4:
	auipc	a5,0001EF70
	addi	a5,a5,-000002E4
	lw	a6,a5,+00000000
	lw	a7,a5,+00000004
	blt	a1,zero,000000002309F1F8

l2309F0E8:
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	addi	a0,a6,+00000000
	addi	a1,a7,+00000000
	jal	ra,00000000230A1B50

l2309F0FC:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309F10C:
	addi	a3,zero,+000007FF
	addi	a4,a1,+00000000
	bne	a5,a3,000000002309F0B0

l2309F118:
	addi	a2,a0,+00000000
	addi	a3,a1,+00000000
	jal	ra,00000000230A04B4
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309F134:
	auipc	a5,0001EF70
	addi	a5,a5,-0000040C
	lw	a6,a5,+00000000
	lw	a7,a5,+00000004
	bge	a1,zero,000000002309F0E8

l2309F148:
	auipc	a4,0001EF70
	addi	a4,a4,-000002F8
	lw	a6,a4,+00000000
	lw	a7,a4,+00000004
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	addi	a0,a6,+00000000
	addi	a1,a7,+00000000
	jal	ra,00000000230A1B50
	jal	zero,000000002309F0FC

l2309F170:
	lui	a1,00080100
	addi	a1,a1,-00000001
	addi	a5,a5,+00000036
	and	a4,a4,a1
	slli	a5,a5,00000014
	or	a5,a5,a4
	auipc	a4,0001EF70
	addi	a4,a4,-00000328
	lw	a2,a4,+00000000
	lw	a3,a4,+00000004
	addi	a1,a5,+00000000
	jal	ra,00000000230A1B50
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309F1B0:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lui	a1,00080100
	addi	a1,a1,-00000001
	and	a4,a4,a1
	slli	a1,a5,00000014
	or	a1,a4,a1
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309F1D4:
	auipc	a3,0001EF70
	addi	a3,a3,-000003E4
	lw	a2,a3,+00000000
	lw	a3,a3,+00000004
	jal	ra,00000000230A1B50
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2309F1F8:
	auipc	a4,0001EF70
	addi	a4,a4,-000003A0
	lw	a6,a4,+00000000
	lw	a7,a4,+00000004
	jal	zero,000000002309F0E8

;; __lshrdi3: 2309F20C
;;   Called from:
;;     23084042 (in EF_Ctrl_Read_PowerOffset_Opt)
__lshrdi3 proc
	beq	a2,zero,000000002309F22C

l2309F210:
	addi	a5,zero,+00000020
	sub	a5,a5,a2
	blt	zero,a5,000000002309F230

l2309F21C:
	addi	a0,a2,-00000020
	addi	a4,zero,+00000000
	srl	a0,a1,a0

l2309F228:
	addi	a1,a4,+00000000

l2309F22C:
	jalr	zero,ra,+00000000

l2309F230:
	srl	a4,a1,a2
	srl	a0,a0,a2
	sll	a1,a1,a5
	or	a0,a0,a1
	jal	zero,000000002309F228

;; __ashldi3: 2309F244
;;   Called from:
;;     23045DF8 (in seg_rx_reset)
;;     23046E44 (in bt_mesh_trans_recv)
;;     2304710E (in bt_mesh_trans_recv)
__ashldi3 proc
	beq	a2,zero,000000002309F264

l2309F248:
	addi	a5,zero,+00000020
	sub	a5,a5,a2
	blt	zero,a5,000000002309F268

l2309F254:
	addi	a1,a2,-00000020
	addi	a4,zero,+00000000
	sll	a1,a0,a1

l2309F260:
	addi	a0,a4,+00000000

l2309F264:
	jalr	zero,ra,+00000000

l2309F268:
	sll	a4,a0,a2
	sll	a1,a1,a2
	srl	a0,a0,a5
	or	a1,a1,a0
	jal	zero,000000002309F260

;; __clzsi2: 2309F27C
;;   Called from:
;;     2300BBAA (in txl_payload_handle)
;;     2300C0E6 (in txl_transmit_trigger)
;;     2300E5C4 (in rc_get_initial_rate_config)
;;     23010E46 (in scanu_frame_handler)
;;     230147B0 (in ke_evt_schedule)
;;     2301F12C (in apm_start_req_handler)
;;     2303DF1C (in hb_pub_send_status)
;;     2303F860 (in hb_sub_send_status.constprop.14)
;;     2303F888 (in hb_sub_send_status.constprop.14)
;;     23062D70 (in vTaskSwitchContext)
;;     23084FEC (in bloop_run)
;;     23084FF4 (in bloop_run)
;;     230A0D00 (in __adddf3)
;;     230A0D74 (in __adddf3)
;;     230A109C (in __divdf3)
;;     230A10D4 (in __divdf3)
;;     230A11C4 (in __divdf3)
;;     230A1200 (in __divdf3)
;;     230A1BE8 (in __muldf3)
;;     230A1C20 (in __muldf3)
;;     230A1D14 (in __muldf3)
;;     230A1D50 (in __muldf3)
;;     230A2BF0 (in __subdf3)
;;     230A2C64 (in __subdf3)
;;     230A30A4 (in __floatsidf)
;;     230A313C (in __floatunsidf)
;;     230A3248 (in __extendsfdf2)
__clzsi2 proc
	lui	a5,00000010
	bgeu	a0,a5,000000002309F2B4

l2309F284:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a0
	slli	a5,a5,00000003

l2309F290:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	srl	a5,a0,a5
	auipc	a0,0000002C
	addi	a0,a0,+000001D4
	add	a5,a0,a5
	lbu	a0,a5,+00000000
	sub	a0,a4,a0
	jalr	zero,ra,+00000000

l2309F2B4:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a0,a4,000000002309F290

l2309F2C0:
	addi	a5,zero,+00000018
	jal	zero,000000002309F290

;; __popcountsi2: 2309F2C8
;;   Called from:
;;     2303B3BE (in sub_update)
;;     23045BD2 (in ack_timeout)
__popcountsi2 proc
	lui	a4,00055555
	srli	a5,a0,00000001
	addi	a4,a4,+00000555
	and	a5,a5,a4
	lui	a4,00033333
	addi	a4,a4,+00000333
	sub	a0,a0,a5
	and	a5,a0,a4
	srli	a0,a0,00000002
	and	a0,a0,a4
	add	a5,a5,a0
	srli	a0,a5,00000004
	add	a0,a0,a5
	lui	a5,0000F0F1
	addi	a5,a5,-000000F1
	and	a0,a0,a5
	lui	a5,00001010
	addi	a5,a5,+00000101
	add	a0,a0,a5
	srli	a0,a0,00000018
	jalr	zero,ra,+00000000

;; __floatundisf: 2309F31C
;;   Called from:
;;     23077928 (in iperf_server_udp_recv_fn)
;;     2307795A (in iperf_server_udp_recv_fn)
;;     23077BAA (in iperf_client_udp)
;;     23077E48 (in iperf_server)
;;     2307805C (in iperf_client_tcp)
__floatundisf proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	lui	a5,00000200
	addi	s0,a0,+00000000
	bltu	a1,a5,000000002309F34C

l2309F334:
	slli	a5,a0,00000015
	beq	a5,zero,000000002309F34C

l2309F33C:
	lui	a5,00000001
	andi	s0,a0,-00000800
	addi	a5,a5,-00000800
	or	s0,s0,a5

l2309F34C:
	addi	a0,a1,+00000000
	jal	ra,00000000230A3128
	auipc	a5,0001EF70
	addi	a5,a5,-000004EC
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,00000000230A1B50
	sw	a0,sp,+00000008
	addi	a0,s0,+00000000
	sw	a1,sp,+0000000C
	jal	ra,00000000230A3128
	lw	a2,sp,+00000008
	lw	a3,sp,+0000000C
	jal	ra,00000000230A04B4
	jal	ra,00000000230A32BC
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

;; __divdi3: 2309F398
;;   Called from:
;;     2303F818 (in hb_sub_send_status.constprop.14)
;;     2305E130 (in uptime_cmd)
;;     2305E150 (in uptime_cmd)
;;     2305E16E (in uptime_cmd)
;;     2305E180 (in uptime_cmd)
__divdi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,000000002309F3B4

l2309F3A0:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l2309F3B4:
	bge	a3,zero,000000002309F3CC

l2309F3B8:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	xori	a7,a7,-00000001
	sub	a3,a3,a5

l2309F3CC:
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	addi	t3,a1,+00000000
	bne	a3,zero,000000002309F680

l2309F3E0:
	auipc	a3,0000002C
	addi	a3,a3,+00000090
	bgeu	a1,a2,000000002309F4D4

l2309F3EC:
	lui	a5,00000010
	bgeu	a2,a5,000000002309F4C0

l2309F3F4:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a2
	slli	a5,a5,00000003

l2309F400:
	srl	a4,a2,a5
	add	a3,a3,a4
	lbu	a4,a3,+00000000
	add	a5,a4,a5
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	beq	a4,zero,000000002309F430

l2309F41C:
	sll	a1,a1,a4
	srl	a5,a0,a5
	sll	a6,a2,a4
	or	t3,a5,a1
	sll	t1,a0,a4

l2309F430:
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
	bgeu	a4,a3,000000002309F474

l2309F45C:
	add	a4,a4,a6
	addi	a5,t3,-00000001
	bltu	a4,a6,000000002309F474

l2309F468:
	bgeu	a4,a3,000000002309F474

l2309F46C:
	addi	a5,t3,-00000002
	add	a4,a4,a6

l2309F474:
	sub	a4,a4,a3
	and	a3,a4,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a4,a4,a2
	slli	a3,a3,00000010
	or	t1,a3,t1
	add	a1,a1,a4
	addi	a0,a4,+00000000
	bgeu	t1,a1,000000002309F4B0

l2309F49C:
	add	t1,a6,t1
	addi	a0,a4,-00000001
	bltu	t1,a6,000000002309F4B0

l2309F4A8:
	bgeu	t1,a1,000000002309F4B0

l2309F4AC:
	addi	a0,a4,-00000002

l2309F4B0:
	slli	a5,a5,00000010
	or	a5,a5,a0

l2309F4B8:
	addi	t3,zero,+00000000
	jal	zero,000000002309F5A0

l2309F4C0:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a2,a4,000000002309F400

l2309F4CC:
	addi	a5,zero,+00000018
	jal	zero,000000002309F400

l2309F4D4:
	bne	a2,zero,000000002309F4E0

l2309F4D8:
	addi	a6,zero,+00000001
	srl	a6,a6,a4

l2309F4E0:
	lui	a5,00000010
	bgeu	a6,a5,000000002309F5C0

l2309F4E8:
	addi	a5,zero,+000000FF
	bgeu	a5,a6,000000002309F4F4

l2309F4F0:
	addi	a4,zero,+00000008

l2309F4F4:
	srl	a5,a6,a4
	add	a3,a3,a5
	lbu	a5,a3,+00000000
	addi	a3,zero,+00000020
	add	a5,a5,a4
	sub	a3,a3,a5
	bne	a3,zero,000000002309F5D4

l2309F510:
	sub	a1,a1,a6
	addi	t3,zero,+00000001

l2309F518:
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
	bgeu	a3,a1,000000002309F55C

l2309F544:
	add	a3,a3,a6
	addi	a5,a4,-00000001
	bltu	a3,a6,000000002309F55C

l2309F550:
	bgeu	a3,a1,000000002309F55C

l2309F554:
	addi	a5,a4,-00000002
	add	a3,a3,a6

l2309F55C:
	sub	a3,a3,a1
	and	a4,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	or	t1,a4,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,000000002309F598

l2309F584:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002309F598

l2309F590:
	bgeu	t1,a1,000000002309F598

l2309F594:
	addi	a0,a3,-00000002

l2309F598:
	slli	a5,a5,00000010
	or	a5,a5,a0

l2309F5A0:
	addi	a0,a5,+00000000
	addi	a1,t3,+00000000
	beq	a7,zero,000000002309F5BC

l2309F5AC:
	sub	a0,zero,a5
	sltu	a5,zero,a0
	sub	a1,zero,t3
	sub	a1,a1,a5

l2309F5BC:
	jalr	zero,ra,+00000000

l2309F5C0:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a6,a5,000000002309F4F4

l2309F5CC:
	addi	a4,zero,+00000018
	jal	zero,000000002309F4F4

l2309F5D4:
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
	bgeu	a5,a3,000000002309F630

l2309F618:
	add	a5,a5,a6
	addi	t3,a4,-00000001
	bltu	a5,a6,000000002309F630

l2309F624:
	bgeu	a5,a3,000000002309F630

l2309F628:
	addi	t3,a4,-00000002
	add	a5,a5,a6

l2309F630:
	sub	a3,a5,a3
	and	a5,a3,a0
	slli	a2,a2,00000010
	srli	a2,a2,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	add	a4,a1,a3
	or	a1,a5,a2
	addi	a5,a3,+00000000
	bgeu	a1,a4,000000002309F670

l2309F658:
	add	a1,a1,a6
	addi	a5,a3,-00000001
	bltu	a1,a6,000000002309F670

l2309F664:
	bgeu	a1,a4,000000002309F670

l2309F668:
	addi	a5,a3,-00000002
	add	a1,a1,a6

l2309F670:
	slli	t3,t3,00000010
	sub	a1,a1,a4
	or	t3,t3,a5
	jal	zero,000000002309F518

l2309F680:
	bltu	a1,a3,000000002309F80C

l2309F684:
	lui	a5,00000010
	bgeu	a3,a5,000000002309F6D0

l2309F68C:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l2309F698:
	srl	a6,a3,a4
	auipc	a5,0000002C
	addi	a5,a5,-0000022C
	add	a5,a5,a6
	lbu	a6,a5,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,000000002309F6E4

l2309F6BC:
	addi	a5,zero,+00000001
	bltu	a3,a1,000000002309F5A0

l2309F6C4:
	sltu	a0,a0,a2
	xori	a5,a0,+00000001
	jal	zero,000000002309F5A0

l2309F6D0:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a3,a5,000000002309F698

l2309F6DC:
	addi	a4,zero,+00000018
	jal	zero,000000002309F698

l2309F6E4:
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
	bgeu	a4,t1,000000002309F748

l2309F730:
	add	a4,a4,a3
	addi	t4,a5,-00000001
	bltu	a4,a3,000000002309F748

l2309F73C:
	bgeu	a4,t1,000000002309F748

l2309F740:
	addi	t4,a5,-00000002
	add	a4,a4,a3

l2309F748:
	sub	a4,a4,t1
	and	t1,a4,t6
	slli	a1,a1,00000010
	srli	a1,a1,00000010
	srl	a4,a4,t6
	slli	t1,t1,00000010
	or	a6,t1,a1
	add	t5,t5,a4
	addi	a5,a4,+00000000
	bgeu	a6,t5,000000002309F788

l2309F770:
	add	a6,a6,a3
	addi	a5,a4,-00000001
	bltu	a6,a3,000000002309F788

l2309F77C:
	bgeu	a6,t5,000000002309F788

l2309F780:
	addi	a5,a4,-00000002
	add	a6,a6,a3

l2309F788:
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
	bgeu	a4,a3,000000002309F7D0

l2309F7CC:
	add	a1,a1,t5

l2309F7D0:
	srli	a3,a4,00000010
	add	a1,a3,a1
	bltu	a6,a1,000000002309F804

l2309F7DC:
	bne	a6,a1,000000002309F4B8

l2309F7E0:
	lui	a3,00000010
	addi	a3,a3,-00000001
	and	a4,a4,a3
	slli	a4,a4,00000010
	and	t4,t4,a3
	sll	a0,a0,t3
	add	a4,a4,t4
	addi	t3,zero,+00000000
	bgeu	a0,a4,000000002309F5A0

l2309F804:
	addi	a5,a5,-00000001
	jal	zero,000000002309F4B8

l2309F80C:
	addi	t3,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,000000002309F5A0

;; __moddi3: 2309F818
;;   Called from:
;;     2305E13A (in uptime_cmd)
;;     2305E158 (in uptime_cmd)
;;     2305E18A (in uptime_cmd)
__moddi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,000000002309F834

l2309F820:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l2309F834:
	bge	a3,zero,000000002309F848

l2309F838:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	sub	a3,a3,a5

l2309F848:
	addi	t1,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,000000002309FAA8

l2309F85C:
	auipc	a3,0000002C
	addi	a3,a3,-000003EC
	bgeu	a1,a2,000000002309F954

l2309F868:
	lui	t3,00000010
	bgeu	a2,t3,000000002309F940

l2309F870:
	addi	t3,zero,+000000FF
	bgeu	t3,a2,000000002309F87C

l2309F878:
	addi	a4,zero,+00000008

l2309F87C:
	srl	t3,a2,a4
	add	a3,a3,t3
	lbu	a3,a3,+00000000
	addi	t3,zero,+00000020
	add	a4,a3,a4
	sub	t3,t3,a4
	beq	t3,zero,000000002309F8AC

l2309F898:
	sll	a1,a1,t3
	srl	a4,a0,a4
	sll	t1,a2,t3
	or	a6,a4,a1
	sll	a5,a0,t3

l2309F8AC:
	srli	a2,t1,00000010
	srl	a1,a6,a2
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a4,a5,00000010
	and	a3,a6,a2
	add	a1,a0,a1
	slli	a3,a3,00000010
	or	a4,a3,a4
	bgeu	a4,a1,000000002309F8E4

l2309F8D4:
	add	a4,a4,t1
	bltu	a4,t1,000000002309F8E4

l2309F8DC:
	bgeu	a4,a1,000000002309F8E4

l2309F8E0:
	add	a4,a4,t1

l2309F8E4:
	sub	a4,a4,a1
	and	a3,a4,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a4,a4,a2
	add	a4,a0,a4
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a4,000000002309F918

l2309F908:
	add	a5,a5,t1
	bltu	a5,t1,000000002309F918

l2309F910:
	bgeu	a5,a4,000000002309F918

l2309F914:
	add	a5,a5,t1

l2309F918:
	sub	a5,a5,a4

l2309F91C:
	srl	a0,a5,t3
	addi	a1,zero,+00000000

l2309F924:
	beq	a7,zero,000000002309F93C

l2309F928:
	sub	a5,zero,a0
	sltu	a4,zero,a5
	sub	a1,zero,a1
	addi	a0,a5,+00000000
	sub	a1,a1,a4

l2309F93C:
	jalr	zero,ra,+00000000

l2309F940:
	lui	t3,00001000
	addi	a4,zero,+00000010
	bltu	a2,t3,000000002309F87C

l2309F94C:
	addi	a4,zero,+00000018
	jal	zero,000000002309F87C

l2309F954:
	bne	a2,zero,000000002309F960

l2309F958:
	addi	t1,zero,+00000001
	srl	t1,t1,a4

l2309F960:
	lui	a2,00000010
	bgeu	t1,a2,000000002309FA08

l2309F968:
	addi	a2,zero,+000000FF
	bgeu	a2,t1,000000002309F974

l2309F970:
	addi	a4,zero,+00000008

l2309F974:
	srl	a2,t1,a4
	add	a3,a3,a2
	lbu	a6,a3,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,000000002309FA1C

l2309F990:
	sub	a1,a1,t1

l2309F994:
	srli	a3,t1,00000010
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a4,a1,a3
	srl	a1,a1,a3
	slli	a4,a4,00000010
	or	a4,a4,a2
	add	a1,a0,a1
	bgeu	a4,a1,000000002309F9CC

l2309F9BC:
	add	a4,a4,t1
	bltu	a4,t1,000000002309F9CC

l2309F9C4:
	bgeu	a4,a1,000000002309F9CC

l2309F9C8:
	add	a4,a4,t1

l2309F9CC:
	sub	a1,a4,a1
	and	a4,a1,a3
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a3
	add	a1,a0,a1
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a1,000000002309FA00

l2309F9F0:
	add	a5,a5,t1
	bltu	a5,t1,000000002309FA00

l2309F9F8:
	bgeu	a5,a1,000000002309FA00

l2309F9FC:
	add	a5,a5,t1

l2309FA00:
	sub	a5,a5,a1
	jal	zero,000000002309F91C

l2309FA08:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	t1,a2,000000002309F974

l2309FA14:
	addi	a4,zero,+00000018
	jal	zero,000000002309F974

l2309FA1C:
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
	bgeu	a4,a2,000000002309FA6C

l2309FA5C:
	add	a4,a4,t1
	bltu	a4,t1,000000002309FA6C

l2309FA64:
	bgeu	a4,a2,000000002309FA6C

l2309FA68:
	add	a4,a4,t1

l2309FA6C:
	sub	a3,a4,a2
	and	a4,a3,a0
	slli	a6,a6,00000010
	srli	a6,a6,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a3,a1,a3
	or	a1,a4,a6
	bgeu	a1,a3,000000002309FAA0

l2309FA90:
	add	a1,a1,t1
	bltu	a1,t1,000000002309FAA0

l2309FA98:
	bgeu	a1,a3,000000002309FAA0

l2309FA9C:
	add	a1,a1,t1

l2309FAA0:
	sub	a1,a1,a3
	jal	zero,000000002309F994

l2309FAA8:
	bltu	a1,a3,000000002309F924

l2309FAAC:
	lui	a4,00000010
	bgeu	a3,a4,000000002309FB08

l2309FAB4:
	addi	t5,zero,+000000FF
	sltu	a4,t5,a3
	slli	a4,a4,00000003

l2309FAC0:
	srl	t3,a3,a4
	auipc	t1,0000002C
	addi	t1,t1,-00000654
	add	t1,t1,t3
	lbu	t5,t1,+00000000
	addi	t4,zero,+00000020
	add	t5,t5,a4
	sub	t4,t4,t5
	bne	t4,zero,000000002309FB1C

l2309FAE4:
	bltu	a3,a1,000000002309FAEC

l2309FAE8:
	bltu	a0,a2,000000002309FAFC

l2309FAEC:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l2309FAFC:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,000000002309F924

l2309FB08:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a3,t1,000000002309FAC0

l2309FB14:
	addi	a4,zero,+00000018
	jal	zero,000000002309FAC0

l2309FB1C:
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
	bgeu	t1,t6,000000002309FB84

l2309FB6C:
	add	t1,t1,a3
	addi	t3,a4,-00000001
	bltu	t1,a3,000000002309FB84

l2309FB78:
	bgeu	t1,t6,000000002309FB84

l2309FB7C:
	addi	t3,a4,-00000002
	add	t1,t1,a3

l2309FB84:
	sub	t1,t1,t6
	and	t6,t1,a6
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	t1,t1,a6
	slli	t6,t6,00000010
	or	t6,t6,a5
	add	a1,a1,t1
	addi	a5,t1,+00000000
	bgeu	t6,a1,000000002309FBC4

l2309FBAC:
	add	t6,t6,a3
	addi	a5,t1,-00000001
	bltu	t6,a3,000000002309FBC4

l2309FBB8:
	bgeu	t6,a1,000000002309FBC4

l2309FBBC:
	addi	a5,t1,-00000002
	add	t6,t6,a3

l2309FBC4:
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
	bgeu	a6,a5,000000002309FC0C

l2309FC08:
	add	t3,t3,t6

l2309FC0C:
	srli	a5,a6,00000010
	add	t3,a5,t3
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t3,000000002309FC38

l2309FC30:
	bne	a1,t3,000000002309FC4C

l2309FC34:
	bgeu	a0,a4,000000002309FC4C

l2309FC38:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t3,t3,a4
	addi	a4,a2,+00000000

l2309FC4C:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t3
	sub	a1,a1,a0
	sll	a5,a1,t5
	srl	a4,a4,t4
	or	a0,a5,a4
	srl	a1,a1,t4
	jal	zero,000000002309F924

;; __udivdi3: 2309FC70
;;   Called from:
;;     23008A88 (in mm_check_beacon)
;;     23018EC4 (in InitGroupKey)
;;     2305C302 (in cmd_sys_time_now)
;;     23069B12 (in bl_timer_now_us)
;;     230816D8 (in format_int)
;;     2308175C (in format_int)
;;     23092C50 (in mbedtls_mpi_div_mpi)
__udivdi3 proc
	addi	a5,a1,+00000000
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	bne	a3,zero,000000002309FF0C

l2309FC84:
	auipc	a7,0000002B
	addi	a7,a7,+000007EC
	bgeu	a1,a2,000000002309FD78

l2309FC90:
	lui	a4,00000010
	bgeu	a2,a4,000000002309FD64

l2309FC98:
	addi	a4,zero,+000000FF
	sltu	a4,a4,a2
	slli	a4,a4,00000003

l2309FCA4:
	srl	a3,a2,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a4,a3,a4
	addi	a3,zero,+00000020
	sub	a3,a3,a4
	beq	a3,zero,000000002309FCD4

l2309FCC0:
	sll	a5,a5,a3
	srl	a4,a0,a4
	sll	a6,a2,a3
	or	a1,a4,a5
	sll	t1,a0,a3

l2309FCD4:
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
	bgeu	a3,a5,000000002309FD18

l2309FD00:
	add	a3,a3,a6
	addi	a4,a1,-00000001
	bltu	a3,a6,000000002309FD18

l2309FD0C:
	bgeu	a3,a5,000000002309FD18

l2309FD10:
	addi	a4,a1,-00000002
	add	a3,a3,a6

l2309FD18:
	sub	a3,a3,a5
	and	a5,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,000000002309FD54

l2309FD40:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002309FD54

l2309FD4C:
	bgeu	t1,a1,000000002309FD54

l2309FD50:
	addi	a0,a3,-00000002

l2309FD54:
	slli	a4,a4,00000010
	or	a4,a4,a0

l2309FD5C:
	addi	a1,zero,+00000000
	jal	zero,000000002309FE44

l2309FD64:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a2,a3,000000002309FCA4

l2309FD70:
	addi	a4,zero,+00000018
	jal	zero,000000002309FCA4

l2309FD78:
	bne	a2,zero,000000002309FD84

l2309FD7C:
	addi	a3,zero,+00000001
	srl	a6,a3,a2

l2309FD84:
	lui	a3,00000010
	bgeu	a6,a3,000000002309FE4C

l2309FD8C:
	addi	a3,zero,+000000FF
	bgeu	a3,a6,000000002309FD98

l2309FD94:
	addi	a4,zero,+00000008

l2309FD98:
	srl	a3,a6,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a3,a3,a4
	addi	a4,zero,+00000020
	sub	a4,a4,a3
	bne	a4,zero,000000002309FE60

l2309FDB4:
	sub	a5,a5,a6
	addi	a1,zero,+00000001

l2309FDBC:
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
	bgeu	a3,a0,000000002309FE00

l2309FDE8:
	add	a3,a3,a6
	addi	a4,a5,-00000001
	bltu	a3,a6,000000002309FE00

l2309FDF4:
	bgeu	a3,a0,000000002309FE00

l2309FDF8:
	addi	a4,a5,-00000002
	add	a3,a3,a6

l2309FE00:
	sub	a3,a3,a0
	and	a5,a3,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a2
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a7,a7,a3
	addi	a0,a3,+00000000
	bgeu	t1,a7,000000002309FE3C

l2309FE28:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002309FE3C

l2309FE34:
	bgeu	t1,a7,000000002309FE3C

l2309FE38:
	addi	a0,a3,-00000002

l2309FE3C:
	slli	a4,a4,00000010
	or	a4,a4,a0

l2309FE44:
	addi	a0,a4,+00000000
	jalr	zero,ra,+00000000

l2309FE4C:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a6,a3,000000002309FD98

l2309FE58:
	addi	a4,zero,+00000018
	jal	zero,000000002309FD98

l2309FE60:
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
	bgeu	a4,a3,000000002309FEBC

l2309FEA4:
	add	a4,a4,a6
	addi	a2,a1,-00000001
	bltu	a4,a6,000000002309FEBC

l2309FEB0:
	bgeu	a4,a3,000000002309FEBC

l2309FEB4:
	addi	a2,a1,-00000002
	add	a4,a4,a6

l2309FEBC:
	sub	a3,a4,a3
	and	a4,a3,a0
	slli	a7,a7,00000010
	srli	a7,a7,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a1,a5,a3
	or	a5,a4,a7
	addi	a4,a3,+00000000
	bgeu	a5,a1,000000002309FEFC

l2309FEE4:
	add	a5,a5,a6
	addi	a4,a3,-00000001
	bltu	a5,a6,000000002309FEFC

l2309FEF0:
	bgeu	a5,a1,000000002309FEFC

l2309FEF4:
	addi	a4,a3,-00000002
	add	a5,a5,a6

l2309FEFC:
	sub	a5,a5,a1
	slli	a1,a2,00000010
	or	a1,a1,a4
	jal	zero,000000002309FDBC

l2309FF0C:
	bltu	a1,a3,00000000230A0098

l2309FF10:
	lui	a4,00000010
	bgeu	a3,a4,000000002309FF5C

l2309FF18:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l2309FF24:
	srl	a6,a3,a4
	auipc	a1,0000002B
	addi	a1,a1,+00000548
	add	a1,a1,a6
	lbu	a6,a1,+00000000
	addi	a1,zero,+00000020
	add	a6,a6,a4
	sub	a1,a1,a6
	bne	a1,zero,000000002309FF70

l2309FF48:
	addi	a4,zero,+00000001
	bltu	a3,a5,000000002309FE44

l2309FF50:
	sltu	a0,a0,a2
	xori	a4,a0,+00000001
	jal	zero,000000002309FE44

l2309FF5C:
	lui	a1,00001000
	addi	a4,zero,+00000010
	bltu	a3,a1,000000002309FF24

l2309FF68:
	addi	a4,zero,+00000018
	jal	zero,000000002309FF24

l2309FF70:
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
	bgeu	a6,t5,000000002309FFD4

l2309FFBC:
	add	a6,a6,a3
	addi	t3,a4,-00000001
	bltu	a6,a3,000000002309FFD4

l2309FFC8:
	bgeu	a6,t5,000000002309FFD4

l2309FFCC:
	addi	t3,a4,-00000002
	add	a6,a6,a3

l2309FFD4:
	sub	a6,a6,t5
	and	a7,a6,t4
	srl	a6,a6,t4
	slli	a7,a7,00000010
	add	t4,a5,a6
	slli	a5,t1,00000010
	srli	a5,a5,00000010
	or	a5,a7,a5
	addi	a4,a6,+00000000
	bgeu	a5,t4,00000000230A0014

l2309FFFC:
	add	a5,a5,a3
	addi	a4,a6,-00000001
	bltu	a5,a3,00000000230A0014

l230A0008:
	bgeu	a5,t4,00000000230A0014

l230A000C:
	addi	a4,a6,-00000002
	add	a5,a5,a3

l230A0014:
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
	bgeu	a3,a6,00000000230A005C

l230A0058:
	add	a7,a7,t4

l230A005C:
	srli	a2,a3,00000010
	add	a7,a2,a7
	bltu	a5,a7,00000000230A0090

l230A0068:
	bne	a5,a7,000000002309FD5C

l230A006C:
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a3,a3,a5
	slli	a3,a3,00000010
	and	t3,t3,a5
	sll	a0,a0,a1
	add	a3,a3,t3
	addi	a1,zero,+00000000
	bgeu	a0,a3,000000002309FE44

l230A0090:
	addi	a4,a4,-00000001
	jal	zero,000000002309FD5C

l230A0098:
	addi	a1,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002309FE44

;; __umoddi3: 230A00A4
;;   Called from:
;;     23081740 (in format_int)
__umoddi3 proc
	addi	a7,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,00000000230A02EC

l230A00B8:
	auipc	a3,0000002B
	addi	a3,a3,+000003B8
	bgeu	a1,a2,00000000230A0198

l230A00C4:
	lui	t1,00000010
	bgeu	a2,t1,00000000230A0184

l230A00CC:
	addi	t1,zero,+000000FF
	bgeu	t1,a2,00000000230A00D8

l230A00D4:
	addi	a4,zero,+00000008

l230A00D8:
	srl	t1,a2,a4
	add	a3,a3,t1
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	beq	t1,zero,00000000230A0108

l230A00F4:
	sll	a1,a1,t1
	srl	t3,a0,t3
	sll	a7,a2,t1
	or	a6,t3,a1
	sll	a5,a0,t1

l230A0108:
	srli	a2,a7,00000010
	and	a4,a6,a2
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a3,a5,00000010
	srl	a6,a6,a2
	slli	a4,a4,00000010
	or	a3,a4,a3
	add	a6,a0,a6
	bgeu	a3,a6,00000000230A0140

l230A0130:
	add	a3,a3,a7
	bltu	a3,a7,00000000230A0140

l230A0138:
	bgeu	a3,a6,00000000230A0140

l230A013C:
	add	a3,a3,a7

l230A0140:
	sub	a3,a3,a6
	and	a4,a3,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a3,a3,a2
	add	a3,a0,a3
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a3,00000000230A0174

l230A0164:
	add	a5,a5,a7
	bltu	a5,a7,00000000230A0174

l230A016C:
	bgeu	a5,a3,00000000230A0174

l230A0170:
	add	a5,a5,a7

l230A0174:
	sub	a5,a5,a3

l230A0178:
	srl	a0,a5,t1
	addi	a1,zero,+00000000

l230A0180:
	jalr	zero,ra,+00000000

l230A0184:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a2,t1,00000000230A00D8

l230A0190:
	addi	a4,zero,+00000018
	jal	zero,00000000230A00D8

l230A0198:
	bne	a2,zero,00000000230A01A4

l230A019C:
	addi	a2,zero,+00000001
	srl	a7,a2,a7

l230A01A4:
	lui	a2,00000010
	bgeu	a7,a2,00000000230A024C

l230A01AC:
	addi	a2,zero,+000000FF
	bgeu	a2,a7,00000000230A01B8

l230A01B4:
	addi	a4,zero,+00000008

l230A01B8:
	srl	a2,a7,a4
	add	a3,a3,a2
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	bne	t1,zero,00000000230A0260

l230A01D4:
	sub	a1,a1,a7

l230A01D8:
	srli	a4,a7,00000010
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a3,a1,a4
	srl	a1,a1,a4
	slli	a3,a3,00000010
	or	a3,a3,a2
	add	a1,a0,a1
	bgeu	a3,a1,00000000230A0210

l230A0200:
	add	a3,a3,a7
	bltu	a3,a7,00000000230A0210

l230A0208:
	bgeu	a3,a1,00000000230A0210

l230A020C:
	add	a3,a3,a7

l230A0210:
	sub	a1,a3,a1
	and	a3,a1,a4
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a4
	add	a1,a0,a1
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a1,00000000230A0244

l230A0234:
	add	a5,a5,a7
	bltu	a5,a7,00000000230A0244

l230A023C:
	bgeu	a5,a1,00000000230A0244

l230A0240:
	add	a5,a5,a7

l230A0244:
	sub	a5,a5,a1
	jal	zero,00000000230A0178

l230A024C:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	a7,a2,00000000230A01B8

l230A0258:
	addi	a4,zero,+00000018
	jal	zero,00000000230A01B8

l230A0260:
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
	bgeu	a3,a4,00000000230A02B0

l230A02A0:
	add	a3,a3,a7
	bltu	a3,a7,00000000230A02B0

l230A02A8:
	bgeu	a3,a4,00000000230A02B0

l230A02AC:
	add	a3,a3,a7

l230A02B0:
	sub	a2,a3,a4
	and	a3,a2,a0
	slli	t3,t3,00000010
	srli	t3,t3,00000010
	srl	a2,a2,a0
	slli	a3,a3,00000010
	add	a2,a1,a2
	or	a1,a3,t3
	bgeu	a1,a2,00000000230A02E4

l230A02D4:
	add	a1,a1,a7
	bltu	a1,a7,00000000230A02E4

l230A02DC:
	bgeu	a1,a2,00000000230A02E4

l230A02E0:
	add	a1,a1,a7

l230A02E4:
	sub	a1,a1,a2
	jal	zero,00000000230A01D8

l230A02EC:
	bltu	a1,a3,00000000230A0180

l230A02F0:
	lui	a4,00000010
	bgeu	a3,a4,00000000230A034C

l230A02F8:
	addi	t4,zero,+000000FF
	sltu	a4,t4,a3
	slli	a4,a4,00000003
