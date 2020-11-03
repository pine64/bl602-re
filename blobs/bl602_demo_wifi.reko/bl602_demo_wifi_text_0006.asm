;;; Segment .text (23000300)

l230603E0:
	lui	t5,00042018
	addi	t5,t5,-000002C0
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

l2306052C:
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
	c.j	000000002306028A

;; mbedtls_aes_crypt_ecb: 230605E8
;;   Called from:
;;     23055F12 (in block_cipher_df)
;;     23055F50 (in block_cipher_df)
;;     23055FF4 (in ctr_drbg_update_internal)
;;     23056258 (in mbedtls_ctr_drbg_random_with_add)
;;     230606CC (in mbedtls_aes_crypt_cbc)
;;     23062E0E (in aes_crypt_ecb_wrap)
mbedtls_aes_crypt_ecb proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a4,00000001
	c.mv	a5,a2
	c.mv	a2,a3
	bne	a1,a4,0000000023060604

l230605F6:
	c.mv	a1,a5
	jal	ra,000000002305FD5E

l230605FC:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23060604:
	c.mv	a1,a5
	jal	ra,000000002306019E
	c.j	00000000230605FC

;; mbedtls_aes_crypt_cbc: 2306060C
;;   Called from:
;;     23062E0A (in aes_crypt_cbc_wrap)
;;     23065E4A (in pem_aes_decrypt)
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
	c.bnez	s0,00000000230606EC

l23060628:
	c.mv	s4,a5
	c.mv	s5,a4
	c.mv	s1,a3
	c.mv	s2,a2
	c.mv	s7,a1
	c.mv	s6,a0
	c.li	s8,00000010
	c.bnez	a1,00000000230606DC

l23060638:
	add	a5,s0,s2
	sub	s7,s5,s0
	sub	s3,s4,s0
	c.bnez	a5,0000000023060660

l23060646:
	c.li	a0,00000000

l23060648:
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

l23060660:
	c.li	a2,00000010
	c.mv	a1,s7
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,000000002306019E
	c.li	a3,00000000
	c.li	a2,00000010

l23060678:
	add	a4,s3,a3
	add	a5,s1,a3
	lbu	a5,a5,+00000000
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.xor	a5,a1
	sb	a5,a4,+00000000
	bne	a3,a2,0000000023060678

l23060694:
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.addi	s0,FFFFFFF0
	c.j	0000000023060638

l230606A2:
	c.li	a3,00000000

l230606A4:
	add	a5,a4,a3
	add	a1,s1,a3
	lbu	a5,a5,+00000000
	lbu	a1,a1,+00000000
	add	a2,s3,a3
	c.addi	a3,00000001
	c.xor	a5,a1
	sb	a5,a2,+00000000
	bne	a3,s8,00000000230606A4

l230606C4:
	c.mv	a3,s3
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,00000000230605E8
	c.li	a2,00000010
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.addi	s0,FFFFFFF0

l230606DC:
	add	a5,s2,s0
	sub	a4,s5,s0
	sub	s3,s4,s0
	c.bnez	a5,00000000230606A2

l230606EA:
	c.j	0000000023060646

l230606EC:
	addi	a0,zero,-00000022
	c.j	0000000023060648

;; mbedtls_aes_crypt_cfb128: 230606F2
;;   Called from:
;;     23062E06 (in aes_crypt_cfb128_wrap)
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
	c.beqz	a1,0000000023060770

l23060716:
	beq	s1,s4,0000000023060774

l2306071A:
	c.bnez	s0,0000000023060726

l2306071C:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,000000002305FD5E

l23060726:
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
	c.j	0000000023060716

l23060746:
	c.bnez	s0,0000000023060752

l23060748:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,000000002305FD5E

l23060752:
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

l23060770:
	bne	s1,s4,0000000023060746

l23060774:
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

;; mbedtls_aes_crypt_ctr: 2306078E
;;   Called from:
;;     23062E02 (in aes_crypt_ctr_wrap)
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

l230607AA:
	bne	a6,s2,00000000230607C2

l230607AE:
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

l230607C2:
	c.bnez	s0,00000000230607F8

l230607C4:
	c.mv	a1,a3
	c.mv	a2,a4
	c.mv	a0,s3
	c.swsp	a6,00000084
	c.swsp	a5,00000004
	c.swsp	a4,00000080
	c.swsp	a3,00000000
	jal	ra,000000002305FD5E
	c.lwsp	zero,000000A4
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000008
	c.mv	a1,s4

l230607E0:
	lbu	a2,a1,+00000000
	c.addi	a2,00000001
	andi	a2,a2,+000000FF
	sb	a2,a1,+00000000
	c.bnez	a2,00000000230607F8

l230607F0:
	addi	a2,a1,-00000001
	bne	a3,a1,0000000023060814

l230607F8:
	add	a2,a4,s0
	c.addi	a5,00000001
	lbu	a2,a2,+00000000
	lbu	a1,a5,-00000001
	c.addi	a6,00000001
	c.addi	s0,00000001
	c.xor	a2,a1
	sb	a2,a6,+00000FFF
	c.andi	s0,0000000F
	c.j	00000000230607AA

l23060814:
	c.mv	a1,a2
	c.j	00000000230607E0

;; mbedtls_asn1_get_len: 23060818
;;   Called from:
;;     2305F13A (in mbedtls_x509_crt_parse_der)
;;     2306090A (in mbedtls_asn1_get_tag)
;;     23060BBA (in mbedtls_asn1_get_alg)
;;     2306C0C8 (in mbedtls_x509_get_serial)
;;     2306C20A (in mbedtls_x509_get_name)
mbedtls_asn1_get_len proc
	c.lw	a0,0(a5)
	sub	a3,a1,a5
	bge	zero,a3,000000002306084A

l23060822:
	lbu	a4,a5,+00000000
	slli	a6,a4,00000018
	srai	a6,a6,00000018
	blt	a6,zero,0000000023060850

l23060832:
	addi	a4,a5,+00000001
	c.sw	a0,0(a4)
	lbu	a5,a5,+00000000
	c.sw	a2,0(a5)

l2306083E:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.sub	a1,a5
	c.lw	a2,0(a5)
	bgeu	a1,a5,000000002306084E

l2306084A:
	addi	a0,zero,-00000060

l2306084E:
	c.jr	ra

l23060850:
	andi	a4,a4,+0000007F
	c.li	a6,00000002
	beq	a4,a6,00000000230608B0

l2306085A:
	bltu	a6,a4,000000002306086A

l2306085E:
	c.li	a6,00000001
	beq	a4,a6,000000002306089E

l23060864:
	addi	a0,zero,-00000064
	c.jr	ra

l2306086A:
	c.li	a6,00000003
	beq	a4,a6,00000000230608D4

l23060870:
	c.li	a6,00000004
	bne	a4,a6,0000000023060864

l23060876:
	bge	a4,a3,000000002306084A

l2306087A:
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
	c.j	00000000230608AC

l2306089E:
	beq	a3,a4,000000002306084A

l230608A2:
	lbu	a5,a5,+00000001
	c.sw	a2,0(a5)
	c.lw	a0,0(a5)
	c.addi	a5,00000002

l230608AC:
	c.sw	a0,0(a5)
	c.j	000000002306083E

l230608B0:
	bge	a4,a3,000000002306084A

l230608B4:
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
	c.j	00000000230608AC

l230608D4:
	bge	a4,a3,000000002306084A

l230608D8:
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
	c.j	00000000230608AC

;; mbedtls_asn1_get_tag: 230608F4
;;   Called from:
;;     2305682E (in pk_parse_key_pkcs1_der)
;;     23056942 (in pk_parse_key_sec1_der)
;;     23056972 (in pk_parse_key_sec1_der)
;;     230569BE (in pk_parse_key_sec1_der)
;;     230569E0 (in pk_parse_key_sec1_der)
;;     23056A34 (in pk_parse_key_sec1_der)
;;     23056B5A (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056BA2 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056D60 (in mbedtls_pk_parse_subpubkey)
;;     23056DF0 (in mbedtls_pk_parse_subpubkey)
;;     230585DC (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     230585F4 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2305860C (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23058638 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23058646 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2305EC12 (in mbedtls_x509_crt_parse_der)
;;     2305EC8A (in mbedtls_x509_crt_parse_der)
;;     2305ECD6 (in mbedtls_x509_crt_parse_der)
;;     2305ED82 (in mbedtls_x509_crt_parse_der)
;;     2305EDB2 (in mbedtls_x509_crt_parse_der)
;;     2305EDD0 (in mbedtls_x509_crt_parse_der)
;;     2305EE8E (in mbedtls_x509_crt_parse_der)
;;     2305EECE (in mbedtls_x509_crt_parse_der)
;;     2305EF14 (in mbedtls_x509_crt_parse_der)
;;     2305EF3A (in mbedtls_x509_crt_parse_der)
;;     2305EF6E (in mbedtls_x509_crt_parse_der)
;;     2305F016 (in mbedtls_x509_crt_parse_der)
;;     2305F0F6 (in mbedtls_x509_crt_parse_der)
;;     2306092A (in mbedtls_asn1_get_bool)
;;     2306096A (in mbedtls_asn1_get_int)
;;     230609C8 (in mbedtls_asn1_get_mpi)
;;     230609FC (in mbedtls_asn1_get_bitstring)
;;     23060A56 (in mbedtls_asn1_get_bitstring_null)
;;     23060AA4 (in mbedtls_asn1_get_sequence_of)
;;     23060ACA (in mbedtls_asn1_get_sequence_of)
;;     23060B3A (in mbedtls_asn1_get_alg)
;;     23060B6A (in mbedtls_asn1_get_alg)
;;     2306C144 (in mbedtls_x509_get_name)
;;     2306C180 (in mbedtls_x509_get_name)
;;     2306C1CE (in mbedtls_x509_get_name)
;;     2306C2FC (in mbedtls_x509_get_ext)
;;     2306C314 (in mbedtls_x509_get_ext)
mbedtls_asn1_get_tag proc
	c.lw	a0,0(a5)
	sub	a6,a1,a5
	bge	zero,a6,000000002306090E

l230608FE:
	lbu	a6,a5,+00000000
	bne	a6,a3,0000000023060914

l23060906:
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	jal	zero,0000000023060818

l2306090E:
	addi	a0,zero,-00000060
	c.jr	ra

l23060914:
	addi	a0,zero,-00000062
	c.jr	ra

;; mbedtls_asn1_get_bool: 2306091A
;;   Called from:
;;     2305EF58 (in mbedtls_x509_crt_parse_der)
;;     2305F036 (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_bool proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000001
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,00000000230608F4
	c.bnez	a0,000000002306094A

l23060930:
	c.lwsp	a2,000000C4
	c.li	a5,00000001
	bne	a4,a5,0000000023060954

l23060938:
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000000
	sltu	a5,zero,a5
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)

l2306094A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23060954:
	addi	a0,zero,-00000064
	c.j	000000002306094A

;; mbedtls_asn1_get_int: 2306095A
;;   Called from:
;;     23056858 (in pk_parse_key_pkcs1_der)
;;     2305695C (in pk_parse_key_sec1_der)
;;     23056B80 (in pk_parse_key_pkcs8_unencrypted_der)
;;     2305ED36 (in mbedtls_x509_crt_parse_der)
;;     2305F04A (in mbedtls_x509_crt_parse_der)
;;     2305F06A (in mbedtls_x509_crt_parse_der)
mbedtls_asn1_get_int proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000002
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023060992

l23060970:
	c.lwsp	a2,000000E4
	c.li	a4,00000003
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230609B2

l2306097A:
	c.lw	s0,0(a5)
	lb	a5,a5,+00000000
	blt	a5,zero,00000000230609B2

l23060984:
	sw	zero,s1,+00000000

l23060988:
	c.lwsp	a2,000000E4
	addi	a4,a5,-00000001
	c.swsp	a4,00000084
	c.bnez	a5,000000002306099C

l23060992:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306099C:
	c.lw	s0,0(a4)
	c.lw	s1,0(a5)
	lbu	a4,a4,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.j	0000000023060988

l230609B2:
	addi	a0,zero,-00000064
	c.j	0000000023060992

;; mbedtls_asn1_get_mpi: 230609B8
;;   Called from:
;;     2305686C (in pk_parse_key_pkcs1_der)
;;     2305687C (in pk_parse_key_pkcs1_der)
;;     2305688C (in pk_parse_key_pkcs1_der)
;;     2305689C (in pk_parse_key_pkcs1_der)
;;     230568AC (in pk_parse_key_pkcs1_der)
;;     230568BC (in pk_parse_key_pkcs1_der)
;;     230568CC (in pk_parse_key_pkcs1_der)
;;     230568DC (in pk_parse_key_pkcs1_der)
;;     23056E28 (in mbedtls_pk_parse_subpubkey)
;;     23056E36 (in mbedtls_pk_parse_subpubkey)
mbedtls_asn1_get_mpi proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a3,00000002
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230609E0

l230609CE:
	c.lwsp	a2,00000084
	c.lw	s0,0(a1)
	c.mv	a0,s1
	jal	ra,0000000023061334
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.sw	s0,0(a5)

l230609E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_asn1_get_bitstring: 230609EA
;;   Called from:
;;     2305EFEA (in mbedtls_x509_crt_parse_der)
;;     2305F090 (in mbedtls_x509_crt_parse_der)
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
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023060A30

l23060A02:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023060A3C

l23060A06:
	c.addi	a5,FFFFFFFF
	c.sw	s0,0(a5)
	c.lw	s1,0(a5)
	c.li	a4,00000007
	lbu	a5,a5,+00000000
	sb	a5,s0,+00000004
	bltu	a4,a5,0000000023060A42

l23060A1A:
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.lw	s0,0(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	beq	a5,s2,0000000023060A30

l23060A2C:
	addi	a0,zero,-00000066

l23060A30:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23060A3C:
	addi	a0,zero,-00000060
	c.j	0000000023060A30

l23060A42:
	addi	a0,zero,-00000064
	c.j	0000000023060A30

;; mbedtls_asn1_get_bitstring_null: 23060A48
;;   Called from:
;;     23056A48 (in pk_parse_key_sec1_der)
;;     23056DA6 (in mbedtls_pk_parse_subpubkey)
;;     2306C262 (in mbedtls_x509_get_sig)
mbedtls_asn1_get_bitstring_null proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000003
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023060A7C

l23060A5C:
	c.lw	s1,0(a5)
	addi	a4,a5,-00000001
	c.sw	s1,0(a4)
	c.li	a4,00000001
	bgeu	a4,a5,0000000023060A78

l23060A6A:
	c.lw	s0,0(a5)
	addi	a4,a5,+00000001
	c.sw	s0,0(a4)
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023060A7C

l23060A78:
	addi	a0,zero,-00000068

l23060A7C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_asn1_get_sequence_of: 23060A86
;;   Called from:
;;     2305F0DC (in mbedtls_x509_crt_parse_der)
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
	jal	ra,00000000230608F4
	c.mv	s2,a0
	c.bnez	a0,0000000023060B00

l23060AAC:
	c.lw	s1,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	beq	s3,a5,0000000023060AEC

l23060AB6:
	addi	s2,zero,-00000066
	c.j	0000000023060B00

l23060ABC:
	lbu	a5,a5,+00000000
	c.mv	a3,s4
	c.mv	a2,s5
	c.sw	s0,0(a5)
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023060B14

l23060AD0:
	c.lw	s1,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	bgeu	a5,s3,0000000023060AF0

l23060ADE:
	c.li	a1,00000010
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,12(a0)
	c.mv	s0,a0
	c.beqz	a0,0000000023060B18

l23060AEC:
	addi	s5,s0,+00000004

l23060AF0:
	c.lw	s1,0(a5)
	bltu	a5,s3,0000000023060ABC

l23060AF6:
	sw	zero,s0,+0000000C
	c.lw	s1,0(a5)
	bne	a5,s3,0000000023060AB6

l23060B00:
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

l23060B14:
	c.mv	s2,a0
	c.j	0000000023060B00

l23060B18:
	addi	s2,zero,-0000006A
	c.j	0000000023060B00

;; mbedtls_asn1_get_alg: 23060B1E
;;   Called from:
;;     23056AF2 (in pk_get_pk_alg)
;;     2306C100 (in mbedtls_x509_get_alg)
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
	jal	ra,00000000230608F4
	c.mv	s2,a0
	c.bnez	a0,0000000023060B8C

l23060B42:
	c.lw	s0,0(a5)
	addi	s2,zero,-00000060
	sub	s3,s3,a5
	bge	zero,s3,0000000023060B8C

l23060B50:
	lbu	a5,a5,+00000000
	c.li	a3,00000006
	addi	a2,s4,+00000004
	sw	a5,s4,+00000000
	lw	s3,s0,+00000000
	c.lwsp	a2,000000E4
	c.mv	a0,s0
	c.add	s3,a5
	c.mv	a1,s3
	jal	ra,00000000230608F4
	c.mv	s2,a0
	c.bnez	a0,0000000023060B8C

l23060B72:
	c.lw	s0,0(a5)
	lw	a4,s4,+00000004
	sw	a5,s4,+00000008
	c.add	a5,a4
	c.sw	s0,0(a5)
	bne	a5,s3,0000000023060BA6

l23060B84:
	addi	a5,s1,+0000000C

l23060B88:
	bne	s1,a5,0000000023060B9E

l23060B8C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23060B9E:
	sb	zero,s1,+00000000
	c.addi	s1,00000001
	c.j	0000000023060B88

l23060BA6:
	lbu	a5,a5,+00000000
	addi	a2,s1,+00000004
	c.mv	a1,s3
	c.sw	s1,0(a5)
	c.lw	s0,0(a5)
	c.mv	a0,s0
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	jal	ra,0000000023060818
	c.bnez	a0,0000000023060BD4

l23060BC0:
	c.lw	s0,0(a5)
	c.lw	s1,4(a4)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	beq	a5,s3,0000000023060B8C

l23060BCE:
	addi	s2,zero,-00000066
	c.j	0000000023060B8C

l23060BD4:
	c.mv	s2,a0
	c.j	0000000023060B8C

;; mpi_sub_hlp: 23060BD8
;;   Called from:
;;     23061682 (in mpi_montmul)
;;     230618D6 (in mbedtls_mpi_sub_abs)
mpi_sub_hlp proc
	c.mv	a3,a2
	c.li	a5,00000000
	c.li	a7,00000000

l23060BDE:
	slli	a6,a7,00000002
	bne	a7,a0,0000000023060BEC

l23060BE6:
	c.add	a2,a6

l23060BE8:
	c.bnez	a5,0000000023060C10

l23060BEA:
	c.jr	ra

l23060BEC:
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
	c.j	0000000023060BDE

l23060C10:
	c.lw	a2,0(a4)
	c.addi	a2,00000004
	sub	a3,a4,a5
	sw	a3,a2,+00000FFC
	sltu	a5,a4,a5
	c.j	0000000023060BE8

;; mpi_mul_hlp: 23060C22
;;   Called from:
;;     230616D0 (in mpi_montmul)
;;     230616DE (in mpi_montmul)
;;     23061AD8 (in mbedtls_mpi_mul_mpi)
mpi_mul_hlp proc
	c.mv	a4,a2
	c.mv	a7,a1
	c.mv	t1,a0
	c.li	a5,00000000
	c.li	t3,0000000F

l23060C2C:
	lw	a6,a4,+00000000
	bltu	t3,t1,0000000023060D96

l23060C34:
	srli	a4,a0,00000004
	c.li	a7,FFFFFFF0
	add	a7,a4,a7
	c.slli	a4,06
	c.add	a1,a4
	c.add	a2,a4
	c.li	a4,00000007
	c.add	a0,a7
	bgeu	a4,a0,0000000023060D72

l23060C4C:
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

l23060D72:
	c.slli	a0,02
	add	t3,a1,a0
	c.mv	a6,a2

l23060D7A:
	lw	a7,a6,+00000000
	c.addi	a6,00000004
	bne	a1,t3,0000000023060FDE

l23060D84:
	c.add	a2,a0

l23060D86:
	c.lw	a2,0(a4)
	c.addi	a2,00000004
	c.add	a4,a5
	sw	a4,a2,+00000FFC
	bltu	a4,a5,0000000023061004

l23060D94:
	c.jr	ra

l23060D96:
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
	c.j	0000000023060C2C

l23060FDE:
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
	c.j	0000000023060D7A

l23061004:
	c.li	a5,00000001
	c.j	0000000023060D86

;; mbedtls_mpi_init: 23061008
;;   Called from:
;;     23057422 (in mbedtls_rsa_check_privkey)
;;     23057428 (in mbedtls_rsa_check_privkey)
;;     2305742E (in mbedtls_rsa_check_privkey)
;;     23057434 (in mbedtls_rsa_check_privkey)
;;     2305743A (in mbedtls_rsa_check_privkey)
;;     23057440 (in mbedtls_rsa_check_privkey)
;;     23057446 (in mbedtls_rsa_check_privkey)
;;     2305744C (in mbedtls_rsa_check_privkey)
;;     23057452 (in mbedtls_rsa_check_privkey)
;;     23057458 (in mbedtls_rsa_check_privkey)
;;     2305745E (in mbedtls_rsa_check_privkey)
;;     23057464 (in mbedtls_rsa_check_privkey)
;;     2305746A (in mbedtls_rsa_check_privkey)
;;     23057652 (in mbedtls_rsa_public)
;;     230576F2 (in mbedtls_rsa_private)
;;     230576F8 (in mbedtls_rsa_private)
;;     230576FE (in mbedtls_rsa_private)
;;     23063576 (in ecp_safe_invert_jac)
;;     2306370A (in ecp_double_jac)
;;     23063710 (in ecp_double_jac)
;;     23063716 (in ecp_double_jac)
;;     2306371C (in ecp_double_jac)
;;     23063B52 (in ecp_normalize_jac)
;;     23063B58 (in ecp_normalize_jac)
;;     23063C4C (in ecp_normalize_jac_many)
;;     23063C52 (in ecp_normalize_jac_many)
;;     23063C58 (in ecp_normalize_jac_many)
;;     23063E0A (in mbedtls_ecp_point_init.part.2)
;;     23063E12 (in mbedtls_ecp_point_init.part.2)
;;     23063E20 (in mbedtls_ecp_point_init.part.2)
;;     23063EB4 (in mbedtls_ecp_keypair_init)
;;     23064026 (in ecp_add_mixed)
;;     2306402C (in ecp_add_mixed)
;;     23064032 (in ecp_add_mixed)
;;     23064038 (in ecp_add_mixed)
;;     23064042 (in ecp_add_mixed)
;;     23064048 (in ecp_add_mixed)
;;     2306404E (in ecp_add_mixed)
;;     230643FC (in ecp_mul_comb)
;;     23064402 (in ecp_mul_comb)
;;     230646B6 (in ecp_mul_comb)
;;     230646C2 (in ecp_mul_comb)
;;     2306498E (in mbedtls_ecp_check_pubkey)
;;     23064994 (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_init proc
	c.beqz	a0,0000000023061016

l2306100A:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008

l23061016:
	c.jr	ra

;; mbedtls_mpi_free: 23061018
;;   Called from:
;;     2305758A (in mbedtls_rsa_check_privkey)
;;     23057590 (in mbedtls_rsa_check_privkey)
;;     23057596 (in mbedtls_rsa_check_privkey)
;;     2305759C (in mbedtls_rsa_check_privkey)
;;     230575A2 (in mbedtls_rsa_check_privkey)
;;     230575A8 (in mbedtls_rsa_check_privkey)
;;     230575AE (in mbedtls_rsa_check_privkey)
;;     230575B4 (in mbedtls_rsa_check_privkey)
;;     230575BA (in mbedtls_rsa_check_privkey)
;;     230575C0 (in mbedtls_rsa_check_privkey)
;;     230575C6 (in mbedtls_rsa_check_privkey)
;;     230575CC (in mbedtls_rsa_check_privkey)
;;     230575D2 (in mbedtls_rsa_check_privkey)
;;     230576A0 (in mbedtls_rsa_public)
;;     23057820 (in mbedtls_rsa_private)
;;     23057826 (in mbedtls_rsa_private)
;;     2305782C (in mbedtls_rsa_private)
;;     23058692 (in mbedtls_rsa_free)
;;     2305869A (in mbedtls_rsa_free)
;;     230586A2 (in mbedtls_rsa_free)
;;     230586AA (in mbedtls_rsa_free)
;;     230586B2 (in mbedtls_rsa_free)
;;     230586BA (in mbedtls_rsa_free)
;;     230586C2 (in mbedtls_rsa_free)
;;     230586CA (in mbedtls_rsa_free)
;;     230586D2 (in mbedtls_rsa_free)
;;     230586DA (in mbedtls_rsa_free)
;;     230586E2 (in mbedtls_rsa_free)
;;     230586EA (in mbedtls_rsa_free)
;;     230586F8 (in mbedtls_rsa_free)
;;     23061158 (in mbedtls_mpi_copy)
;;     230618EA (in mbedtls_mpi_sub_abs)
;;     23061A2E (in mbedtls_mpi_mul_mpi)
;;     23061A34 (in mbedtls_mpi_mul_mpi)
;;     23061B8C (in mbedtls_mpi_div_mpi)
;;     23061B92 (in mbedtls_mpi_div_mpi)
;;     23061B98 (in mbedtls_mpi_div_mpi)
;;     23061B9E (in mbedtls_mpi_div_mpi)
;;     23061BA4 (in mbedtls_mpi_div_mpi)
;;     23062264 (in mbedtls_mpi_exp_mod)
;;     2306226A (in mbedtls_mpi_exp_mod)
;;     23062270 (in mbedtls_mpi_exp_mod)
;;     23062280 (in mbedtls_mpi_exp_mod)
;;     230622CA (in mbedtls_mpi_exp_mod)
;;     230623AA (in mbedtls_mpi_gcd)
;;     230623B0 (in mbedtls_mpi_gcd)
;;     230623B6 (in mbedtls_mpi_gcd)
;;     230625A4 (in mbedtls_mpi_inv_mod)
;;     230625AA (in mbedtls_mpi_inv_mod)
;;     230625B0 (in mbedtls_mpi_inv_mod)
;;     230625B6 (in mbedtls_mpi_inv_mod)
;;     230625BC (in mbedtls_mpi_inv_mod)
;;     230625C2 (in mbedtls_mpi_inv_mod)
;;     230625C8 (in mbedtls_mpi_inv_mod)
;;     230625CE (in mbedtls_mpi_inv_mod)
;;     230625D4 (in mbedtls_mpi_inv_mod)
;;     230635A4 (in ecp_safe_invert_jac)
;;     23063758 (in ecp_double_jac)
;;     2306375E (in ecp_double_jac)
;;     23063764 (in ecp_double_jac)
;;     2306376A (in ecp_double_jac)
;;     23063BE2 (in ecp_normalize_jac)
;;     23063BE8 (in ecp_normalize_jac)
;;     23063CE2 (in ecp_normalize_jac_many)
;;     23063CE8 (in ecp_normalize_jac_many)
;;     23063CEE (in ecp_normalize_jac_many)
;;     23063D00 (in ecp_normalize_jac_many)
;;     23063DEE (in ecp_normalize_jac_many)
;;     23063E2C (in mbedtls_ecp_point_free.part.4)
;;     23063E34 (in mbedtls_ecp_point_free.part.4)
;;     23063E42 (in mbedtls_ecp_point_free.part.4)
;;     23063EE8 (in mbedtls_ecp_group_free)
;;     23063EF0 (in mbedtls_ecp_group_free)
;;     23063EF8 (in mbedtls_ecp_group_free)
;;     23063F08 (in mbedtls_ecp_group_free)
;;     23063F60 (in mbedtls_ecp_keypair_free)
;;     230640D0 (in ecp_add_mixed)
;;     230640D6 (in ecp_add_mixed)
;;     230640DC (in ecp_add_mixed)
;;     230640E2 (in ecp_add_mixed)
;;     230640E8 (in ecp_add_mixed)
;;     230640EE (in ecp_add_mixed)
;;     230640F4 (in ecp_add_mixed)
;;     2306451C (in ecp_mul_comb)
;;     23064522 (in ecp_mul_comb)
;;     230647FC (in ecp_mul_comb)
;;     23064802 (in ecp_mul_comb)
;;     23064A2E (in mbedtls_ecp_check_pubkey)
;;     23064A34 (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_free proc
	c.beqz	a0,0000000023061052

l2306101A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,8(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023061036

l23061026:
	c.lw	a0,4(a4)
	c.li	a3,FFFFFFFF

l2306102A:
	c.addi	a4,FFFFFFFF
	bne	a4,a3,000000002306104A

l23061030:
	c.lw	s0,8(a0)
	jal	ra,0000000023032272

l23061036:
	c.li	a5,00000001
	c.sw	s0,0(a5)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306104A:
	sw	zero,a5,+00000000
	c.addi	a5,00000004
	c.j	000000002306102A

l23061052:
	c.jr	ra

;; mbedtls_mpi_grow: 23061054
;;   Called from:
;;     230610C8 (in mbedtls_mpi_shrink)
;;     23061180 (in mbedtls_mpi_copy)
;;     230611C2 (in mbedtls_mpi_safe_cond_assign)
;;     23061248 (in mbedtls_mpi_lset)
;;     23061368 (in mbedtls_mpi_read_binary)
;;     23061460 (in mbedtls_mpi_shift_l)
;;     230617E0 (in mbedtls_mpi_add_abs)
;;     23061810 (in mbedtls_mpi_add_abs)
;;     23061A76 (in mbedtls_mpi_mul_mpi)
;;     23061BDC (in mbedtls_mpi_div_mpi)
;;     23061BF4 (in mbedtls_mpi_div_mpi)
;;     23061C00 (in mbedtls_mpi_div_mpi)
;;     23061F92 (in mbedtls_mpi_exp_mod)
;;     23061FA0 (in mbedtls_mpi_exp_mod)
;;     23061FB0 (in mbedtls_mpi_exp_mod)
;;     230620C4 (in mbedtls_mpi_exp_mod)
;;     23062114 (in mbedtls_mpi_exp_mod)
mbedtls_mpi_grow proc
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bgeu	a5,a1,0000000023061070

l2306105E:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23061062:
	c.li	a0,FFFFFFF0

l23061064:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23061070:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.li	a0,00000000
	bgeu	a5,a1,0000000023061064

l23061084:
	c.mv	s1,a1
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,000000002305F67C
	c.mv	s2,a0
	c.beqz	a0,0000000023061062

l23061092:
	c.lw	s0,8(a1)
	c.beqz	a1,00000000230610B0

l23061096:
	c.lw	s0,4(a2)
	c.slli	a2,02
	jal	ra,0000000023070C7C
	c.lw	s0,8(a4)
	c.lw	s0,4(a5)
	c.li	a3,FFFFFFFF

l230610A4:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,00000000230610BA

l230610AA:
	c.lw	s0,8(a0)
	jal	ra,0000000023032272

l230610B0:
	c.sw	s0,4(s1)
	sw	s2,s0,+00000008
	c.li	a0,00000000
	c.j	0000000023061064

l230610BA:
	sw	zero,a4,+00000000
	c.addi	a4,00000004
	c.j	00000000230610A4

;; mbedtls_mpi_shrink: 230610C2
;;   Called from:
;;     23063DC8 (in ecp_normalize_jac_many)
;;     23063DDC (in ecp_normalize_jac_many)
mbedtls_mpi_shrink proc
	c.lw	a0,4(a4)
	bltu	a1,a4,0000000023061126

l230610C8:
	jal	zero,0000000023061054

l230610CC:
	c.lw	s0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.bnez	a4,00000000230610DC

l230610D8:
	c.addi	a5,FFFFFFFF

l230610DA:
	c.bnez	a5,00000000230610CC

l230610DC:
	c.addi	a5,00000001
	bgeu	s1,a5,00000000230610E4

l230610E2:
	c.mv	s1,a5

l230610E4:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002305F67C
	c.mv	s2,a0
	c.li	a5,FFFFFFF0
	c.beqz	a0,0000000023061118

l230610F2:
	c.lw	s0,8(a1)
	c.beqz	a1,0000000023061110

l230610F6:
	slli	a2,s1,00000002
	jal	ra,0000000023070C7C
	c.lw	s0,8(a4)
	c.lw	s0,4(a5)
	c.li	a3,FFFFFFFF

l23061104:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,000000002306113A

l2306110A:
	c.lw	s0,8(a0)
	jal	ra,0000000023032272

l23061110:
	c.sw	s0,4(s1)
	sw	s2,s0,+00000008
	c.li	a5,00000000

l23061118:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23061126:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a5,a4,-00000001
	c.j	00000000230610DA

l2306113A:
	sw	zero,a4,+00000000
	c.addi	a4,00000004
	c.j	0000000023061104

;; mbedtls_mpi_copy: 23061142
;;   Called from:
;;     23061832 (in mbedtls_mpi_add_abs)
;;     230618B6 (in mbedtls_mpi_sub_abs)
;;     230618E0 (in mbedtls_mpi_sub_abs)
;;     23061A22 (in mbedtls_mpi_mul_mpi)
;;     23061A56 (in mbedtls_mpi_mul_mpi)
;;     23061BAE (in mbedtls_mpi_div_mpi)
;;     23061BBC (in mbedtls_mpi_div_mpi)
;;     23061BC8 (in mbedtls_mpi_div_mpi)
;;     23061C96 (in mbedtls_mpi_div_mpi)
;;     23061CC8 (in mbedtls_mpi_div_mpi)
;;     23061DF2 (in mbedtls_mpi_div_mpi)
;;     23061FCC (in mbedtls_mpi_exp_mod)
;;     2306205E (in mbedtls_mpi_exp_mod)
;;     230620A6 (in mbedtls_mpi_exp_mod)
;;     230620D6 (in mbedtls_mpi_exp_mod)
;;     23062122 (in mbedtls_mpi_exp_mod)
;;     230622F4 (in mbedtls_mpi_gcd)
;;     23062302 (in mbedtls_mpi_gcd)
;;     23062356 (in mbedtls_mpi_gcd)
;;     230624AE (in mbedtls_mpi_inv_mod)
;;     230624BC (in mbedtls_mpi_inv_mod)
;;     230624CA (in mbedtls_mpi_inv_mod)
;;     23062572 (in mbedtls_mpi_inv_mod)
;;     23063966 (in ecp_double_jac)
;;     23063976 (in ecp_double_jac)
;;     23063986 (in ecp_double_jac)
;;     23063C62 (in ecp_normalize_jac_many)
;;     23063CCA (in ecp_normalize_jac_many)
;;     23063F80 (in mbedtls_ecp_copy)
;;     23063F8E (in mbedtls_ecp_copy)
;;     23063FA4 (in mbedtls_ecp_copy)
;;     230642DC (in ecp_add_mixed)
;;     230642EC (in ecp_add_mixed)
;;     230642FC (in ecp_add_mixed)
;;     23064626 (in ecp_mul_comb)
mbedtls_mpi_copy proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	beq	a0,a1,000000002306115C

l23061152:
	c.lw	a1,8(a4)
	c.mv	s2,a1
	c.bnez	a4,0000000023061160

l23061158:
	jal	ra,0000000023061018

l2306115C:
	c.li	s3,00000000
	c.j	00000000230611A2

l23061160:
	c.lw	a1,4(a2)
	c.mv	s1,a0

l23061164:
	c.addi	a2,FFFFFFFF
	c.beqz	a2,0000000023061172

l23061168:
	slli	a5,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023061164

l23061172:
	lw	a5,s2,+00000000
	addi	s0,a2,+00000001
	c.mv	a1,s0
	c.sw	s1,0(a5)
	c.mv	a0,s1
	jal	ra,0000000023061054
	c.mv	s3,a0
	c.bnez	a0,00000000230611A2

l23061188:
	c.lw	s1,4(a2)
	c.lw	s1,8(a0)
	c.li	a1,00000000
	c.slli	a2,02
	jal	ra,0000000023070EB8
	lw	a1,s2,+00000008
	c.lw	s1,8(a0)
	slli	a2,s0,00000002
	jal	ra,0000000023070C7C

l230611A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_safe_cond_assign: 230611B2
;;   Called from:
;;     2306359C (in ecp_safe_invert_jac)
;;     230635F2 (in ecp_select_comb)
;;     23063600 (in ecp_select_comb)
;;     2306464C (in ecp_mul_comb)
mbedtls_mpi_safe_cond_assign proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.lw	a1,4(a1)
	c.mv	s0,a0
	c.swsp	a2,00000084
	jal	ra,0000000023061054
	c.bnez	a0,00000000230611F8

l230611C8:
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

l230611EC:
	c.lw	s1,4(a3)
	bltu	a5,a3,0000000023061202

l230611F2:
	c.lw	s0,4(a3)
	bltu	a5,a3,0000000023061224

l230611F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23061202:
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
	c.j	00000000230611EC

l23061224:
	c.lw	s0,8(a3)
	slli	a2,a5,00000002
	c.addi	a5,00000001
	c.add	a3,a2
	c.lw	a3,0(a2)
	add	a2,a2,a4
	c.sw	a3,0(a2)
	c.j	00000000230611F2

;; mbedtls_mpi_lset: 23061238
;;   Called from:
;;     23061372 (in mbedtls_mpi_read_binary)
;;     230614F6 (in mbedtls_mpi_shift_r)
;;     23061A82 (in mbedtls_mpi_mul_mpi)
;;     23061B82 (in mbedtls_mpi_div_mpi)
;;     23061BE8 (in mbedtls_mpi_div_mpi)
;;     23061D46 (in mbedtls_mpi_div_mpi)
;;     23061D80 (in mbedtls_mpi_div_mpi)
;;     23061FEC (in mbedtls_mpi_exp_mod)
;;     230624D8 (in mbedtls_mpi_inv_mod)
;;     230624E4 (in mbedtls_mpi_inv_mod)
;;     230624F0 (in mbedtls_mpi_inv_mod)
;;     230624FC (in mbedtls_mpi_inv_mod)
;;     23063BDA (in ecp_normalize_jac)
;;     23063FC4 (in mbedtls_ecp_set_zero)
;;     23063FD0 (in mbedtls_ecp_set_zero)
;;     23063FE2 (in mbedtls_ecp_set_zero)
;;     230646A0 (in ecp_mul_comb)
;;     23064918 (in mbedtls_ecp_point_read_binary)
mbedtls_mpi_lset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023061054
	c.mv	s2,a0
	c.bnez	a0,0000000023061274

l23061250:
	c.lw	s0,4(a2)
	c.lw	s0,8(a0)
	c.li	a1,00000000
	c.slli	a2,02
	jal	ra,0000000023070EB8
	srai	a4,s1,0000001F
	c.lw	s0,8(a3)
	xor	a5,a4,s1
	c.sub	a5,a4
	c.sw	a3,0(a5)
	c.li	a5,FFFFFFFF
	blt	s1,zero,0000000023061272

l23061270:
	c.li	a5,00000001

l23061272:
	c.sw	s0,0(a5)

l23061274:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_mpi_get_bit: 23061282
;;   Called from:
;;     23064410 (in ecp_mul_comb)
;;     2306461C (in ecp_mul_comb)
;;     2306478A (in ecp_mul_comb)
mbedtls_mpi_get_bit proc
	c.lw	a0,4(a5)
	c.slli	a5,05
	bgeu	a1,a5,000000002306129E

l2306128A:
	c.lw	a0,8(a5)
	srli	a4,a1,00000005
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a0)
	srl	a0,a0,a1
	c.andi	a0,00000001
	c.jr	ra

l2306129E:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_mpi_lsb: 230612A2
;;   Called from:
;;     2306230C (in mbedtls_mpi_gcd)
;;     23062314 (in mbedtls_mpi_gcd)
;;     23062360 (in mbedtls_mpi_gcd)
;;     23062372 (in mbedtls_mpi_gcd)
mbedtls_mpi_lsb proc
	lw	a6,a0,+00000004
	c.li	a3,00000000
	c.li	a4,00000000
	addi	a7,zero,+00000020

l230612AE:
	bne	a6,a4,00000000230612B8

l230612B2:
	c.li	a1,00000000

l230612B4:
	c.mv	a0,a1
	c.jr	ra

l230612B8:
	c.lw	a0,8(a5)
	slli	a2,a4,00000002
	c.add	a5,a2
	lw	t1,a5,+00000000
	c.li	a5,00000000

l230612C6:
	srl	a2,t1,a5
	c.andi	a2,00000001
	add	a1,a3,a5
	c.bnez	a2,00000000230612B4

l230612D2:
	c.addi	a5,00000001
	add	a2,a3,a5
	bne	a5,a7,00000000230612C6

l230612DC:
	c.addi	a4,00000001
	c.mv	a3,a2
	c.j	00000000230612AE

;; mbedtls_mpi_bitlen: 230612E2
;;   Called from:
;;     2305739A (in mbedtls_rsa_check_pubkey)
;;     230573A8 (in mbedtls_rsa_check_pubkey)
;;     230573B6 (in mbedtls_rsa_check_pubkey)
;;     23057FDA (in mbedtls_rsa_rsassa_pss_sign)
;;     23058078 (in mbedtls_rsa_rsassa_pss_sign)
;;     2305839E (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23061326 (in mbedtls_mpi_size)
;;     23061436 (in mbedtls_mpi_shift_l)
;;     23061C0A (in mbedtls_mpi_div_mpi)
;;     23061F5C (in mbedtls_mpi_exp_mod)
;;     2306367C (in ecp_modp)
;;     23064DD8 (in mbedtls_ecp_group_load)
;;     23064DE2 (in mbedtls_ecp_group_load)
mbedtls_mpi_bitlen proc
	c.lw	a0,4(a5)
	c.beqz	a5,0000000023061312

l230612E6:
	c.lw	a0,8(a4)
	c.addi	a5,FFFFFFFF

l230612EA:
	slli	a3,a5,00000002
	c.bnez	a5,0000000023061316

l230612F0:
	c.add	a4,a3
	c.lw	a4,0(a2)
	c.li	a0,00000000
	lui	a4,00080000
	addi	a3,zero,+00000020

l230612FE:
	and	a1,a2,a4
	c.bnez	a1,000000002306130C

l23061304:
	c.addi	a0,00000001
	c.srli	a4,00000001
	bne	a0,a3,00000000230612FE

l2306130C:
	c.addi	a5,00000001
	c.slli	a5,05
	c.sub	a5,a0

l23061312:
	c.mv	a0,a5
	c.jr	ra

l23061316:
	add	a2,a4,a3
	c.lw	a2,0(a2)
	c.bnez	a2,00000000230612F0

l2306131E:
	c.addi	a5,FFFFFFFF
	c.j	00000000230612EA

;; mbedtls_mpi_size: 23061322
;;   Called from:
;;     230568F4 (in pk_parse_key_pkcs1_der)
;;     23056E4C (in mbedtls_pk_parse_subpubkey)
;;     230613CA (in mbedtls_mpi_write_binary)
;;     230648CC (in mbedtls_ecp_point_read_binary)
mbedtls_mpi_size proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230612E2
	c.lwsp	a2,00000020
	c.addi	a0,00000007
	c.srli	a0,00000003
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_mpi_read_binary: 23061334
;;   Called from:
;;     23056982 (in pk_parse_key_sec1_der)
;;     2305765C (in mbedtls_rsa_public)
;;     23057708 (in mbedtls_rsa_private)
;;     230609D4 (in mbedtls_asn1_get_mpi)
;;     2306240A (in mbedtls_mpi_fill_random)
;;     230648EE (in mbedtls_ecp_point_read_binary)
;;     23064900 (in mbedtls_ecp_point_read_binary)
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

l23061348:
	beq	s0,s1,0000000023061356

l2306134C:
	add	a5,s3,s0
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023061388

l23061356:
	sub	a5,s1,s0
	andi	a1,a5,+00000003
	sltu	a1,zero,a1
	c.srli	a5,00000002
	c.add	a1,a5
	c.mv	a0,s2
	jal	ra,0000000023061054
	c.bnez	a0,000000002306137A

l2306136E:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023061238
	c.li	a5,00000000
	c.beqz	a0,00000000230613B2

l2306137A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23061388:
	c.addi	s0,00000001
	c.j	0000000023061348

l2306138C:
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

l230613B2:
	bltu	s0,s1,000000002306138C

l230613B6:
	c.j	000000002306137A

;; mbedtls_mpi_write_binary: 230613B8
;;   Called from:
;;     23057698 (in mbedtls_rsa_public)
;;     230577B0 (in mbedtls_rsa_private)
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
	jal	ra,0000000023061322
	bltu	s1,a0,000000002306141A

l230613D2:
	c.mv	a2,s1
	c.mv	s2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	add	a2,s0,s1
	c.li	a5,00000000

l230613E4:
	c.addi	a2,FFFFFFFF
	bne	a5,s2,00000000230613FA

l230613EA:
	c.li	a0,00000000

l230613EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230613FA:
	lw	a1,s3,+00000008
	andi	a4,a5,-00000004
	c.add	a1,a4
	slli	a4,a5,00000003
	andi	a3,a4,+00000018
	c.lw	a1,0(a4)
	c.addi	a5,00000001
	srl	a4,a4,a3
	sb	a4,a2,+00000000
	c.j	00000000230613E4

l2306141A:
	c.li	a0,FFFFFFF8
	c.j	00000000230613EC

;; mbedtls_mpi_shift_l: 2306141E
;;   Called from:
;;     23061C1C (in mbedtls_mpi_div_mpi)
;;     23061C28 (in mbedtls_mpi_div_mpi)
;;     23061C40 (in mbedtls_mpi_div_mpi)
;;     23061DD0 (in mbedtls_mpi_div_mpi)
;;     23061DFC (in mbedtls_mpi_div_mpi)
;;     23061FFE (in mbedtls_mpi_exp_mod)
;;     2306234A (in mbedtls_mpi_gcd)
;;     2306380A (in ecp_double_jac)
;;     23063844 (in ecp_double_jac)
;;     2306387C (in ecp_double_jac)
;;     2306394C (in ecp_double_jac)
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
	jal	ra,00000000230612E2
	c.lw	s0,4(a5)
	c.add	a0,s2
	c.slli	a5,05
	bltu	a5,a0,0000000023061452

l23061444:
	c.li	a5,0000001F
	bltu	a5,s2,0000000023061474

l2306144A:
	bne	s3,zero,00000000230614D4

l2306144E:
	c.li	a0,00000000
	c.j	0000000023061466

l23061452:
	andi	a1,a0,+0000001F
	sltu	a1,zero,a1
	c.srli	a0,00000005
	c.add	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023061054
	c.beqz	a0,0000000023061444

l23061466:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23061474:
	c.li	a2,FFFFFFFC
	add	a2,s1,a2
	c.lw	s0,4(a5)
	slli	a4,a5,00000002

l23061480:
	c.addi	a4,FFFFFFFC
	bltu	s1,a5,000000002306149A

l23061486:
	c.slli	a5,02
	c.li	a3,FFFFFFFC

l2306148A:
	c.addi	a5,FFFFFFFC
	beq	a5,a3,000000002306144A

l23061490:
	c.lw	s0,8(a4)
	c.add	a4,a5
	sw	zero,a4,+00000000
	c.j	000000002306148A

l2306149A:
	c.lw	s0,8(a3)
	c.addi	a5,FFFFFFFF
	add	a1,a3,a2
	c.add	a1,a4
	c.lw	a1,0(a1)
	c.add	a3,a4
	c.sw	a3,0(a1)
	c.j	0000000023061480

l230614AC:
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

l230614CC:
	c.lw	s0,4(a5)
	bltu	s1,a5,00000000230614AC

l230614D2:
	c.j	000000002306144E

l230614D4:
	addi	a3,zero,+00000020
	c.li	a2,00000000
	sub	a3,a3,s3
	c.j	00000000230614CC

;; mbedtls_mpi_shift_r: 230614E0
;;   Called from:
;;     23061C5A (in mbedtls_mpi_div_mpi)
;;     23061CB6 (in mbedtls_mpi_div_mpi)
;;     23062322 (in mbedtls_mpi_gcd)
;;     2306232E (in mbedtls_mpi_gcd)
;;     23062368 (in mbedtls_mpi_gcd)
;;     2306237A (in mbedtls_mpi_gcd)
;;     230623A0 (in mbedtls_mpi_gcd)
;;     2306257E (in mbedtls_mpi_inv_mod)
;;     2306259A (in mbedtls_mpi_inv_mod)
;;     2306260A (in mbedtls_mpi_inv_mod)
;;     23062614 (in mbedtls_mpi_inv_mod)
;;     23062630 (in mbedtls_mpi_inv_mod)
;;     2306263C (in mbedtls_mpi_inv_mod)
;;     230647EE (in ecp_mul_comb)
mbedtls_mpi_shift_r proc
	c.lw	a0,4(a5)
	srli	a3,a1,00000005
	andi	a4,a1,+0000001F
	bltu	a5,a3,00000000230614F4

l230614EE:
	bne	a5,a3,00000000230614FA

l230614F2:
	c.beqz	a4,000000002306157E

l230614F4:
	c.li	a1,00000000
	jal	zero,0000000023061238

l230614FA:
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023061514

l23061500:
	slli	a1,a3,00000002
	c.li	a5,00000000

l23061506:
	c.lw	a0,4(a2)
	c.sub	a2,a3
	bltu	a5,a2,000000002306151A

l2306150E:
	c.lw	a0,4(a3)
	bltu	a5,a3,0000000023061534

l23061514:
	c.bnez	a4,0000000023061544

l23061516:
	c.li	a0,00000000
	c.jr	ra

l2306151A:
	c.lw	a0,8(a2)
	slli	a7,a5,00000002
	c.addi	a5,00000001
	add	a6,a2,a1
	lw	a6,a6,+00000000
	c.add	a2,a7
	c.addi	a1,00000004
	sw	a6,a2,+00000000
	c.j	0000000023061506

l23061534:
	c.lw	a0,8(a3)
	slli	a2,a5,00000002
	c.addi	a5,00000001
	c.add	a3,a2
	sw	zero,a3,+00000000
	c.j	000000002306150E

l23061544:
	c.lw	a0,4(a5)
	addi	a6,zero,+00000020
	c.li	a7,00000000
	c.li	t1,FFFFFFFF
	sub	a6,a6,a4

l23061552:
	c.addi	a5,FFFFFFFF
	beq	a5,t1,0000000023061516

l23061558:
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
	c.j	0000000023061552

l2306157E:
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023061516

l23061584:
	c.li	a5,00000000
	c.j	000000002306150E

;; mbedtls_mpi_cmp_abs: 23061588
;;   Called from:
;;     23061670 (in mpi_montmul)
;;     2306189C (in mbedtls_mpi_sub_abs)
;;     23061930 (in mbedtls_mpi_add_mpi)
;;     2306198E (in mbedtls_mpi_sub_mpi)
;;     23061B4C (in mbedtls_mpi_div_mpi)
mbedtls_mpi_cmp_abs proc
	c.lw	a0,4(a5)

l2306158A:
	c.bnez	a5,0000000023061596

l2306158C:
	c.lw	a1,4(a3)

l2306158E:
	c.bnez	a3,00000000230615A8

l23061590:
	sltu	a4,zero,a5
	c.j	00000000230615D0

l23061596:
	c.lw	a0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	lw	a4,a4,-00000004
	c.bnez	a4,000000002306158C

l230615A4:
	c.addi	a5,FFFFFFFF
	c.j	000000002306158A

l230615A8:
	c.lw	a1,8(a2)
	slli	a4,a3,00000002
	c.add	a4,a2
	lw	a4,a4,-00000004
	c.bnez	a4,00000000230615BA

l230615B6:
	c.addi	a3,FFFFFFFF
	c.j	000000002306158E

l230615BA:
	c.li	a4,00000001
	bltu	a3,a5,00000000230615D0

l230615C0:
	c.li	a4,FFFFFFFF
	bltu	a5,a3,00000000230615D0

l230615C6:
	c.addi	a5,FFFFFFFF
	c.li	a1,FFFFFFFF

l230615CA:
	bne	a5,a1,00000000230615D4

l230615CE:
	c.li	a4,00000000

l230615D0:
	c.mv	a0,a4
	c.jr	ra

l230615D4:
	c.lw	a0,8(a3)
	slli	a4,a5,00000002
	c.add	a3,a4
	c.add	a4,a2
	c.lw	a3,0(a3)
	c.lw	a4,0(a4)
	bltu	a4,a3,00000000230615F0

l230615E6:
	c.addi	a5,FFFFFFFF
	bgeu	a3,a4,00000000230615CA

l230615EC:
	c.li	a4,FFFFFFFF
	c.j	00000000230615D0

l230615F0:
	c.li	a4,00000001
	c.j	00000000230615D0

;; mpi_montmul: 230615F4
;;   Called from:
;;     23062050 (in mbedtls_mpi_exp_mod)
;;     2306207E (in mbedtls_mpi_exp_mod)
;;     230620EC (in mbedtls_mpi_exp_mod)
;;     23062136 (in mbedtls_mpi_exp_mod)
;;     23062178 (in mbedtls_mpi_exp_mod)
;;     230621AA (in mbedtls_mpi_exp_mod)
;;     230621EE (in mbedtls_mpi_exp_mod)
;;     23062210 (in mbedtls_mpi_exp_mod)
;;     23062228 (in mbedtls_mpi_exp_mod)
;;     23062246 (in mbedtls_mpi_exp_mod)
mpi_montmul proc
	c.lw	a2,4(a5)
	lw	a7,a4,+00000004
	c.addi	a5,00000001
	bltu	a7,a5,00000000230616F8

l23061600:
	lw	a6,a4,+00000008
	c.li	a5,FFFFFFFC
	beq	a6,zero,00000000230616FA

l2306160A:
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
	jal	ra,0000000023070EB8
	lw	s8,s0,+00000004
	lw	s10,s9,+00000004
	lw	a5,s4,+00000008
	bgeu	s8,s10,000000002306164E

l2306164C:
	c.mv	s10,s8

l2306164E:
	addi	s6,s8,+00000001
	c.slli	s6,02
	c.mv	s1,a5
	c.li	s3,00000000

l23061658:
	lw	a0,s5,+00000008
	bne	s3,s8,00000000230616A8

l23061660:
	addi	a1,s6,-00000004
	c.add	a1,a5
	c.mv	a2,s6
	jal	ra,0000000023070C7C
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,0000000023061588
	lw	a1,s5,+00000008
	blt	a0,zero,00000000230616F2

l2306167C:
	c.mv	a2,a1
	c.lw	s0,8(a1)

l23061680:
	c.mv	a0,s3
	jal	ra,0000000023060BD8
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

l230616A8:
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
	jal	ra,0000000023060C22
	c.lw	s0,8(a1)
	c.mv	a2,s1
	c.mv	a0,s8
	c.addi	s1,00000004
	c.mv	a3,s2
	jal	ra,0000000023060C22
	add	a4,s1,s6
	sw	s11,s1,+00000FFC
	sw	zero,a4,+00000000
	c.lwsp	a2,000000E4
	c.j	0000000023061658

l230616F2:
	lw	a2,s4,+00000008
	c.j	0000000023061680

l230616F8:
	c.li	a5,FFFFFFFC

l230616FA:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_mpi_cmp_mpi: 230616FE
;;   Called from:
;;     230573C4 (in mbedtls_rsa_check_pubkey)
;;     23057536 (in mbedtls_rsa_check_privkey)
;;     2305754A (in mbedtls_rsa_check_privkey)
;;     23057556 (in mbedtls_rsa_check_privkey)
;;     23057562 (in mbedtls_rsa_check_privkey)
;;     2305761A (in mbedtls_rsa_check_pub_priv)
;;     23057628 (in mbedtls_rsa_check_pub_priv)
;;     2305766E (in mbedtls_rsa_public)
;;     2305771A (in mbedtls_rsa_private)
;;     230617AC (in mbedtls_mpi_cmp_int)
;;     23061C4E (in mbedtls_mpi_div_mpi)
;;     23061DB0 (in mbedtls_mpi_div_mpi)
;;     23061E92 (in mbedtls_mpi_mod_mpi)
;;     2306202A (in mbedtls_mpi_exp_mod)
;;     23062386 (in mbedtls_mpi_gcd)
;;     2306251A (in mbedtls_mpi_inv_mod)
;;     23062566 (in mbedtls_mpi_inv_mod)
;;     230636C6 (in ecp_modp)
;;     23063798 (in ecp_double_jac)
;;     230637E0 (in ecp_double_jac)
;;     2306381A (in ecp_double_jac)
;;     23063852 (in ecp_double_jac)
;;     2306388A (in ecp_double_jac)
;;     2306395A (in ecp_double_jac)
;;     230639E8 (in ecp_double_jac)
;;     23063A70 (in ecp_double_jac)
;;     2306421C (in ecp_add_mixed)
;;     2306442E (in ecp_mul_comb)
;;     2306443E (in ecp_mul_comb)
;;     230646DC (in ecp_mul_comb)
;;     23064978 (in mbedtls_ecp_check_pubkey)
;;     23064984 (in mbedtls_ecp_check_pubkey)
;;     23064A12 (in mbedtls_ecp_check_pubkey)
;;     23064A1E (in mbedtls_ecp_check_pubkey)
;;     23064A72 (in mbedtls_ecp_check_pubkey)
;;     23064AC2 (in mbedtls_ecp_check_privkey)
;;     23064BB4 (in mbedtls_ecp_check_pub_priv)
;;     23064BC4 (in mbedtls_ecp_check_pub_priv)
;;     23064BD4 (in mbedtls_ecp_check_pub_priv)
;;     23064C10 (in mbedtls_ecp_check_pub_priv)
;;     23064C1A (in mbedtls_ecp_check_pub_priv)
;;     23064C24 (in mbedtls_ecp_check_pub_priv)
mbedtls_mpi_cmp_mpi proc
	c.lw	a0,4(a5)

l23061700:
	c.bnez	a5,000000002306170C

l23061702:
	c.lw	a1,4(a4)

l23061704:
	c.bnez	a4,000000002306171E

l23061706:
	c.li	a4,00000000
	c.bnez	a5,0000000023061736

l2306170A:
	c.j	0000000023061738

l2306170C:
	c.lw	a0,8(a4)
	slli	a3,a5,00000002
	c.add	a4,a3
	lw	a4,a4,-00000004
	c.bnez	a4,0000000023061702

l2306171A:
	c.addi	a5,FFFFFFFF
	c.j	0000000023061700

l2306171E:
	lw	a6,a1,+00000008
	slli	a3,a4,00000002
	c.add	a3,a6
	lw	a3,a3,-00000004
	c.bnez	a3,0000000023061732

l2306172E:
	c.addi	a4,FFFFFFFF
	c.j	0000000023061704

l23061732:
	bgeu	a4,a5,000000002306173C

l23061736:
	c.lw	a0,0(a4)

l23061738:
	c.mv	a0,a4
	c.jr	ra

l2306173C:
	c.lw	a1,0(a3)
	bgeu	a5,a4,0000000023061748

l23061742:
	sub	a4,zero,a3
	c.j	0000000023061738

l23061748:
	c.lw	a0,0(a4)
	bge	zero,a4,0000000023061756

l2306174E:
	bge	a3,zero,000000002306177E

l23061752:
	c.li	a4,00000001
	c.j	0000000023061738

l23061756:
	bge	zero,a3,000000002306177E

l2306175A:
	c.beqz	a4,000000002306177E

l2306175C:
	c.li	a4,FFFFFFFF
	c.j	0000000023061738

l23061760:
	c.lw	a0,8(a2)
	slli	a3,a5,00000002
	c.add	a2,a3
	c.add	a3,a6
	c.lw	a2,0(a2)
	c.lw	a3,0(a3)
	bltu	a3,a2,0000000023061738

l23061772:
	c.addi	a5,FFFFFFFF
	bgeu	a2,a3,0000000023061782

l23061778:
	sub	a4,zero,a4
	c.j	0000000023061738

l2306177E:
	c.addi	a5,FFFFFFFF
	c.li	a1,FFFFFFFF

l23061782:
	bne	a5,a1,0000000023061760

l23061786:
	c.li	a4,00000000
	c.j	0000000023061738

;; mbedtls_mpi_cmp_int: 2306178A
;;   Called from:
;;     2305756C (in mbedtls_rsa_check_privkey)
;;     23057576 (in mbedtls_rsa_check_privkey)
;;     23057580 (in mbedtls_rsa_check_privkey)
;;     23057888 (in mbedtls_rsa_private)
;;     23061B20 (in mbedtls_mpi_div_mpi)
;;     23061CD4 (in mbedtls_mpi_div_mpi)
;;     23061DE6 (in mbedtls_mpi_div_mpi)
;;     23061E50 (in mbedtls_mpi_mod_mpi)
;;     23061E86 (in mbedtls_mpi_mod_mpi)
;;     23061EF4 (in mbedtls_mpi_exp_mod)
;;     23061F14 (in mbedtls_mpi_exp_mod)
;;     23062340 (in mbedtls_mpi_gcd)
;;     2306243A (in mbedtls_mpi_inv_mod)
;;     23062490 (in mbedtls_mpi_inv_mod)
;;     23062550 (in mbedtls_mpi_inv_mod)
;;     2306255A (in mbedtls_mpi_inv_mod)
;;     2306358C (in ecp_safe_invert_jac)
;;     2306369E (in ecp_modp)
;;     230636BC (in ecp_modp)
;;     23063992 (in ecp_double_jac)
;;     230639F8 (in ecp_double_jac)
;;     23063AC2 (in ecp_double_jac)
;;     23063ADA (in ecp_double_jac)
;;     23063AF2 (in ecp_double_jac)
;;     23063B0A (in ecp_double_jac)
;;     23063B48 (in ecp_normalize_jac)
;;     23064012 (in ecp_add_mixed)
;;     23064102 (in ecp_add_mixed)
;;     23064136 (in ecp_add_mixed)
;;     2306414A (in ecp_add_mixed)
;;     23064184 (in ecp_add_mixed)
;;     23064306 (in ecp_add_mixed)
;;     23064324 (in ecp_add_mixed)
;;     23064356 (in ecp_add_mixed)
;;     23064374 (in ecp_add_mixed)
;;     2306438C (in ecp_add_mixed)
;;     230643A4 (in ecp_add_mixed)
;;     230646EE (in ecp_mul_comb)
;;     2306493A (in mbedtls_ecp_check_pubkey)
;;     23064950 (in mbedtls_ecp_check_pubkey)
;;     23064968 (in mbedtls_ecp_check_pubkey)
;;     23064A4C (in mbedtls_ecp_check_pubkey)
;;     23064AB4 (in mbedtls_ecp_check_privkey)
;;     23064B0A (in mbedtls_ecp_mul)
mbedtls_mpi_cmp_int proc
	srai	a4,a1,0000001F
	xor	a5,a4,a1
	c.addi	sp,FFFFFFE0
	c.sub	a5,a4
	c.swsp	a5,00000000
	c.swsp	ra,0000008C
	c.li	a5,00000001
	bge	a1,zero,00000000230617A2

l230617A0:
	c.li	a5,FFFFFFFF

l230617A2:
	c.swsp	a5,00000080
	c.addi4spn	a1,00000004
	c.li	a5,00000001
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,00000000230616FE
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_add_abs: 230617B6
;;   Called from:
;;     23061966 (in mbedtls_mpi_add_mpi)
;;     230619C4 (in mbedtls_mpi_sub_mpi)
;;     23064CB0 (in ecp_mod_koblitz.constprop.0)
;;     23064CFA (in ecp_mod_koblitz.constprop.0)
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
	beq	a0,a2,00000000230617D2

l230617CC:
	bne	a0,a1,0000000023061830

l230617D0:
	c.mv	s1,a2

l230617D2:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.lw	s1,4(s0)

l230617DA:
	c.bnez	s0,000000002306184E

l230617DC:
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023061054
	c.mv	s4,a0
	c.bnez	a0,000000002306183C

l230617E8:
	lw	a5,s2,+00000008
	c.lw	s1,8(a0)
	c.li	a3,00000000
	c.mv	a2,a5
	c.li	s1,00000000

l230617F4:
	bne	s0,a3,0000000023061860

l230617F8:
	slli	a4,s0,00000002
	c.add	a5,a4

l230617FE:
	c.beqz	s1,000000002306183C

l23061800:
	lw	a4,s2,+00000004
	addi	s3,s0,+00000001
	bltu	s0,a4,000000002306181E

l2306180C:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023061054
	c.bnez	a0,0000000023061882

l23061816:
	lw	a5,s2,+00000008
	c.slli	s0,02
	c.add	a5,s0

l2306181E:
	c.lw	a5,0(a4)
	c.mv	s0,s3
	c.addi	a5,00000004
	c.add	a4,s1
	sw	a4,a5,+00000FFC
	sltu	s1,a4,s1
	c.j	00000000230617FE

l23061830:
	c.swsp	a2,00000084
	jal	ra,0000000023061142
	c.mv	s4,a0
	c.lwsp	a2,00000084
	c.beqz	a0,00000000230617D0

l2306183C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s4
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2306184E:
	c.lw	s1,8(a5)
	slli	a4,s0,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,00000000230617DC

l2306185C:
	c.addi	s0,FFFFFFFF
	c.j	00000000230617DA

l23061860:
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
	c.j	00000000230617F4

l23061882:
	c.mv	s4,a0
	c.j	000000002306183C

;; mbedtls_mpi_sub_abs: 23061886
;;   Called from:
;;     2306193E (in mbedtls_mpi_add_mpi)
;;     2306194E (in mbedtls_mpi_add_mpi)
;;     2306199C (in mbedtls_mpi_sub_mpi)
;;     230619AC (in mbedtls_mpi_sub_mpi)
;;     23062394 (in mbedtls_mpi_gcd)
;;     230623CE (in mbedtls_mpi_gcd)
;;     230636D4 (in ecp_modp)
;;     2306378C (in ecp_double_jac)
;;     230639AC (in ecp_double_jac)
;;     23063A7E (in ecp_double_jac)
;;     23063A8A (in ecp_double_jac)
;;     23063A9A (in ecp_double_jac)
;;     23063AAC (in ecp_double_jac)
;;     23063AB8 (in ecp_double_jac)
;;     23063B2A (in ecp_double_jac)
;;     23064346 (in ecp_add_mixed)
;;     23064A80 (in mbedtls_ecp_check_pubkey)
;;     23064A8C (in mbedtls_ecp_check_pubkey)
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
	jal	ra,0000000023061588
	c.li	s0,FFFFFFF6
	blt	a0,zero,00000000230618EE

l230618A6:
	c.li	a5,00000001
	c.swsp	a5,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	bne	s1,s2,00000000230618C0

l230618B2:
	c.mv	a1,s1
	c.addi4spn	a0,00000004
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.bnez	a0,00000000230618E8

l230618BE:
	c.addi4spn	s1,00000004

l230618C0:
	bne	s3,s2,00000000230618DC

l230618C4:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.lw	s1,4(a0)
	c.lw	s1,8(a1)

l230618CE:
	c.bnez	a0,00000000230618FE

l230618D0:
	lw	a2,s2,+00000008
	c.li	s0,00000000
	jal	ra,0000000023060BD8
	c.j	00000000230618E8

l230618DC:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.beqz	a0,00000000230618C4

l230618E8:
	c.addi4spn	a0,00000004
	jal	ra,0000000023061018

l230618EE:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230618FE:
	slli	a5,a0,00000002
	c.add	a5,a1
	lw	a5,a5,-00000004
	c.bnez	a5,00000000230618D0

l2306190A:
	c.addi	a0,FFFFFFFF
	c.j	00000000230618CE

;; mbedtls_mpi_add_mpi: 2306190E
;;   Called from:
;;     2305779E (in mbedtls_rsa_private)
;;     23061E08 (in mbedtls_mpi_div_mpi)
;;     23061E7C (in mbedtls_mpi_mod_mpi)
;;     230621C4 (in mbedtls_mpi_exp_mod)
;;     230625EE (in mbedtls_mpi_inv_mod)
;;     2306264E (in mbedtls_mpi_inv_mod)
;;     23062692 (in mbedtls_mpi_inv_mod)
;;     230636E2 (in ecp_modp)
;;     2306374A (in ecp_double_jac)
;;     230639A0 (in ecp_double_jac)
;;     23063A62 (in ecp_double_jac)
;;     23063AD0 (in ecp_double_jac)
;;     23063AE8 (in ecp_double_jac)
;;     23063B00 (in ecp_double_jac)
;;     23063B18 (in ecp_double_jac)
;;     23064156 (in ecp_add_mixed)
;;     23064314 (in ecp_add_mixed)
;;     23064364 (in ecp_add_mixed)
;;     23064382 (in ecp_add_mixed)
;;     2306439A (in ecp_add_mixed)
;;     230643B2 (in ecp_add_mixed)
;;     23064A06 (in mbedtls_ecp_check_pubkey)
;;     23064A58 (in mbedtls_ecp_check_pubkey)
;;     23064A66 (in mbedtls_ecp_check_pubkey)
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
	bge	a5,zero,0000000023061966

l23061928:
	c.mv	s3,a1
	c.mv	a0,s3
	c.mv	a1,a2
	c.mv	s2,a2
	jal	ra,0000000023061588
	blt	a0,zero,0000000023061948

l23061938:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023061886

l23061942:
	c.bnez	a0,0000000023061958

l23061944:
	c.sw	s1,0(s0)
	c.j	0000000023061958

l23061948:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023061886
	sub	s0,zero,s0
	c.beqz	a0,0000000023061944

l23061958:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23061966:
	jal	ra,00000000230617B6
	c.j	0000000023061942

;; mbedtls_mpi_sub_mpi: 2306196C
;;   Called from:
;;     23057764 (in mbedtls_rsa_private)
;;     230619EC (in mbedtls_mpi_sub_int)
;;     23061CFA (in mbedtls_mpi_div_mpi)
;;     23061DDC (in mbedtls_mpi_div_mpi)
;;     23061EA0 (in mbedtls_mpi_mod_mpi)
;;     23062528 (in mbedtls_mpi_inv_mod)
;;     23062536 (in mbedtls_mpi_inv_mod)
;;     23062544 (in mbedtls_mpi_inv_mod)
;;     230625FC (in mbedtls_mpi_inv_mod)
;;     2306265C (in mbedtls_mpi_inv_mod)
;;     2306266C (in mbedtls_mpi_inv_mod)
;;     2306267C (in mbedtls_mpi_inv_mod)
;;     230626A4 (in mbedtls_mpi_inv_mod)
;;     23063582 (in ecp_safe_invert_jac)
;;     230637A6 (in ecp_double_jac)
;;     230638B6 (in ecp_double_jac)
;;     230638CC (in ecp_double_jac)
;;     230638E2 (in ecp_double_jac)
;;     23063916 (in ecp_double_jac)
;;     230640C2 (in ecp_add_mixed)
;;     2306416E (in ecp_add_mixed)
;;     23064248 (in ecp_add_mixed)
;;     23064260 (in ecp_add_mixed)
;;     23064276 (in ecp_add_mixed)
;;     230642C8 (in ecp_add_mixed)
;;     23064636 (in ecp_mul_comb)
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
	bge	zero,a5,00000000230619C4

l23061986:
	c.mv	s3,a1
	c.mv	a0,s3
	c.mv	a1,a2
	c.mv	s2,a2
	jal	ra,0000000023061588
	blt	a0,zero,00000000230619A6

l23061996:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023061886

l230619A0:
	c.bnez	a0,00000000230619B6

l230619A2:
	c.sw	s1,0(s0)
	c.j	00000000230619B6

l230619A6:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023061886
	sub	s0,zero,s0
	c.beqz	a0,00000000230619A2

l230619B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230619C4:
	jal	ra,00000000230617B6
	c.j	00000000230619A0

;; mbedtls_mpi_sub_int: 230619CA
;;   Called from:
;;     230574A4 (in mbedtls_rsa_check_privkey)
;;     230574B4 (in mbedtls_rsa_check_privkey)
;;     230649D6 (in mbedtls_ecp_check_pubkey)
mbedtls_mpi_sub_int proc
	srai	a4,a2,0000001F
	xor	a5,a4,a2
	c.addi	sp,FFFFFFE0
	c.sub	a5,a4
	c.swsp	a5,00000000
	c.swsp	ra,0000008C
	c.li	a5,00000001
	bge	a2,zero,00000000230619E2

l230619E0:
	c.li	a5,FFFFFFFF

l230619E2:
	c.swsp	a5,00000080
	c.addi4spn	a2,00000004
	c.li	a5,00000001
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,000000002306196C
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_mul_mpi: 230619F6
;;   Called from:
;;     2305747C (in mbedtls_rsa_check_privkey)
;;     23057494 (in mbedtls_rsa_check_privkey)
;;     230574C4 (in mbedtls_rsa_check_privkey)
;;     23057774 (in mbedtls_rsa_private)
;;     23057790 (in mbedtls_rsa_private)
;;     230577C8 (in mbedtls_rsa_private)
;;     230577E8 (in mbedtls_rsa_private)
;;     23057806 (in mbedtls_rsa_private)
;;     230578B8 (in mbedtls_rsa_private)
;;     23061AEE (in mbedtls_mpi_mul_int)
;;     23063730 (in ecp_double_jac)
;;     230637BA (in ecp_double_jac)
;;     230637F2 (in ecp_double_jac)
;;     23063828 (in ecp_double_jac)
;;     23063860 (in ecp_double_jac)
;;     23063898 (in ecp_double_jac)
;;     230638F8 (in ecp_double_jac)
;;     23063930 (in ecp_double_jac)
;;     230639B8 (in ecp_double_jac)
;;     23063A08 (in ecp_double_jac)
;;     23063A26 (in ecp_double_jac)
;;     23063A44 (in ecp_double_jac)
;;     23063B72 (in ecp_normalize_jac)
;;     23063B8C (in ecp_normalize_jac)
;;     23063BA8 (in ecp_normalize_jac)
;;     23063BC2 (in ecp_normalize_jac)
;;     23063C80 (in ecp_normalize_jac_many)
;;     23063CD8 (in ecp_normalize_jac_many)
;;     23063D1E (in ecp_normalize_jac_many)
;;     23063D3C (in ecp_normalize_jac_many)
;;     23063D62 (in ecp_normalize_jac_many)
;;     23063D82 (in ecp_normalize_jac_many)
;;     23063DA4 (in ecp_normalize_jac_many)
;;     23064058 (in ecp_add_mixed)
;;     23064072 (in ecp_add_mixed)
;;     2306408C (in ecp_add_mixed)
;;     230640A8 (in ecp_add_mixed)
;;     23064192 (in ecp_add_mixed)
;;     230641B0 (in ecp_add_mixed)
;;     230641CE (in ecp_add_mixed)
;;     230641EC (in ecp_add_mixed)
;;     2306422A (in ecp_add_mixed)
;;     2306428C (in ecp_add_mixed)
;;     230642AA (in ecp_add_mixed)
;;     230646FC (in ecp_mul_comb)
;;     2306471A (in ecp_mul_comb)
;;     23064734 (in ecp_mul_comb)
;;     2306474E (in ecp_mul_comb)
;;     2306476C (in ecp_mul_comb)
;;     2306499E (in mbedtls_ecp_check_pubkey)
;;     230649B8 (in mbedtls_ecp_check_pubkey)
;;     230649EA (in mbedtls_ecp_check_pubkey)
;;     23064CA4 (in ecp_mod_koblitz.constprop.0)
;;     23064CEE (in ecp_mod_koblitz.constprop.0)
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
	bne	a0,a1,0000000023061A4E

l23061A20:
	c.addi4spn	a0,00000008
	jal	ra,0000000023061142
	c.mv	s3,a0
	c.addi4spn	s1,00000008
	c.beqz	a0,0000000023061A4E

l23061A2C:
	c.addi4spn	a0,00000014
	jal	ra,0000000023061018
	c.addi4spn	a0,00000008
	jal	ra,0000000023061018
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

l23061A4E:
	bne	s4,s0,0000000023061A60

l23061A52:
	c.mv	a1,s4
	c.addi4spn	a0,00000014
	jal	ra,0000000023061142
	c.mv	s3,a0
	c.bnez	a0,0000000023061A2C

l23061A5E:
	c.addi4spn	s0,00000014

l23061A60:
	lw	s5,s1,+00000004

l23061A64:
	bne	s5,zero,0000000023061AA0

l23061A68:
	lw	s2,s0,+00000004

l23061A6C:
	bne	s2,zero,0000000023061AB2

l23061A70:
	add	a1,s5,s2
	c.mv	a0,s4
	jal	ra,0000000023061054
	c.mv	s3,a0
	c.bnez	a0,0000000023061A2C

l23061A7E:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023061238
	c.mv	s3,a0
	c.li	s6,FFFFFFFF
	c.bnez	a0,0000000023061A2C

l23061A8C:
	c.addi	s2,FFFFFFFF
	bne	s2,s6,0000000023061AC4

l23061A92:
	c.lw	s1,0(a5)
	c.lw	s0,0(a4)
	add	a5,a5,a4
	sw	a5,s4,+00000000
	c.j	0000000023061A2C

l23061AA0:
	c.lw	s1,8(a5)
	slli	a4,s5,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,0000000023061A68

l23061AAE:
	c.addi	s5,FFFFFFFF
	c.j	0000000023061A64

l23061AB2:
	c.lw	s0,8(a5)
	slli	a4,s2,00000002
	c.add	a5,a4
	lw	a5,a5,-00000004
	c.bnez	a5,0000000023061A70

l23061AC0:
	c.addi	s2,FFFFFFFF
	c.j	0000000023061A6C

l23061AC4:
	c.lw	s0,8(a5)
	slli	a2,s2,00000002
	lw	a4,s4,+00000008
	c.add	a5,a2
	c.lw	a5,0(a3)
	c.lw	s1,8(a1)
	c.add	a2,a4
	c.mv	a0,s5
	jal	ra,0000000023060C22
	c.j	0000000023061A8C

;; mbedtls_mpi_mul_int: 23061ADE
;;   Called from:
;;     23061D76 (in mbedtls_mpi_div_mpi)
;;     23061DC2 (in mbedtls_mpi_div_mpi)
;;     230637D4 (in ecp_double_jac)
;;     230639D6 (in ecp_double_jac)
;;     2306420A (in ecp_add_mixed)
mbedtls_mpi_mul_int proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000001
	c.swsp	a2,00000000
	c.addi4spn	a2,00000004
	c.swsp	ra,0000008C
	c.swsp	a5,00000080
	c.swsp	a5,00000004
	c.swsp	sp,00000084
	jal	ra,00000000230619F6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_mpi_div_mpi: 23061AF8
;;   Called from:
;;     230574F0 (in mbedtls_rsa_check_privkey)
;;     23061E60 (in mbedtls_mpi_mod_mpi)
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
	jal	ra,000000002306178A
	c.li	s9,FFFFFFF4
	c.beqz	a0,0000000023061B5E

l23061B28:
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
	jal	ra,0000000023061588
	bge	a0,zero,0000000023061BB8

l23061B54:
	bne	s4,zero,0000000023061B7E

l23061B58:
	bne	s2,zero,0000000023061BAA

l23061B5C:
	c.li	s9,00000000

l23061B5E:
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

l23061B7E:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023061238
	c.mv	s9,a0
	c.beqz	a0,0000000023061B58

l23061B8A:
	c.addi4spn	a0,00000014
	jal	ra,0000000023061018
	c.addi4spn	a0,00000020
	jal	ra,0000000023061018
	c.addi4spn	a0,0000002C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000038
	jal	ra,0000000023061018
	c.addi4spn	a0,00000044
	jal	ra,0000000023061018
	c.j	0000000023061B5E

l23061BAA:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023061142
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BB6:
	c.j	0000000023061B5C

l23061BB8:
	c.mv	a1,s3
	c.addi4spn	a0,00000014
	jal	ra,0000000023061142
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BC4:
	c.mv	a1,s6
	c.addi4spn	a0,00000020
	jal	ra,0000000023061142
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BD0:
	lw	a1,s3,+00000004
	c.addi4spn	a0,0000002C
	c.swsp	s0,00000010
	c.addi	a1,00000002
	c.swsp	s0,00000088
	jal	ra,0000000023061054
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BE4:
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,0000000023061238
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BF0:
	c.li	a1,00000002
	c.addi4spn	a0,00000038
	jal	ra,0000000023061054
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061BFC:
	c.li	a1,00000003
	c.addi4spn	a0,00000044
	jal	ra,0000000023061054
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061C08:
	c.addi4spn	a0,00000020
	jal	ra,00000000230612E2
	c.andi	a0,0000001F
	c.li	s1,0000001F
	beq	a0,s1,0000000023061CE6

l23061C16:
	c.sub	s1,a0
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,000000002306141E
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061C24:
	c.mv	a1,s1
	c.addi4spn	a0,00000020
	jal	ra,000000002306141E
	c.mv	s9,a0
	c.bnez	a0,0000000023061B8A

l23061C30:
	c.lwsp	s8,000000E8
	c.lwsp	tp,0000015C
	c.addi4spn	a0,00000020
	sub	s0,s7,s10
	slli	s5,s0,00000005
	c.mv	a1,s5
	jal	ra,000000002306141E
	c.mv	s9,a0
	c.slli	s0,02
	c.bnez	a0,0000000023061B8A

l23061C4A:
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023061CEA

l23061C56:
	c.mv	a1,s5
	c.addi4spn	a0,00000020
	jal	ra,00000000230614E0
	c.mv	s9,a0
	bne	a0,zero,0000000023061B8A

l23061C64:
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

l23061C8A:
	bltu	s8,s5,0000000023061D04

l23061C8E:
	beq	s4,zero,0000000023061CAE

l23061C92:
	c.addi4spn	a1,0000002C
	c.mv	a0,s4
	jal	ra,0000000023061142
	bne	a0,zero,0000000023061E38

l23061C9E:
	lw	a4,s3,+00000000
	lw	a3,s6,+00000000
	add	a4,a4,a3
	sw	a4,s4,+00000000

l23061CAE:
	beq	s2,zero,0000000023061B8A

l23061CB2:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,00000000230614E0
	bne	a0,zero,0000000023061E38

l23061CBE:
	lw	a4,s3,+00000000
	c.addi4spn	a1,00000014
	c.mv	a0,s2
	c.swsp	a4,00000088
	jal	ra,0000000023061142
	bne	a0,zero,0000000023061E38

l23061CD0:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306178A
	bne	a0,zero,0000000023061B8A

l23061CDC:
	c.li	a5,00000001
	sw	a5,s2,+00000000
	c.li	s9,00000000
	c.j	0000000023061B8A

l23061CE6:
	c.li	s1,00000000
	c.j	0000000023061C30

l23061CEA:
	c.lwsp	s4,000001F4
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000020
	c.add	a5,s0
	c.lw	a5,0(a4)
	c.mv	a0,a1
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	jal	ra,000000002306196C
	c.mv	s9,a0
	c.beqz	a0,0000000023061C4A

l23061D02:
	c.j	0000000023061B8A

l23061D04:
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
	bltu	a1,a2,0000000023061E1E

l23061D24:
	c.li	a5,FFFFFFFF
	sw	a5,s11,+00000000

l23061D2A:
	c.lwsp	s4,000001D4
	addi	s11,s7,-00000008
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,00000001
	c.sw	a4,0(a3)

l23061D38:
	c.lwsp	s4,000001D4
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,FFFFFFFF
	c.sw	a4,0(a3)
	jal	ra,0000000023061238
	bne	a0,zero,0000000023061E38

l23061D4E:
	c.li	a4,00000000
	beq	s8,zero,0000000023061D5C

l23061D54:
	c.lwsp	s0,000001D4
	c.lwsp	a2,000000E4
	c.add	a4,a5
	c.lw	a4,0(a4)

l23061D5C:
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
	jal	ra,0000000023061ADE
	c.bnez	a0,0000000023061E38

l23061D7C:
	c.li	a1,00000000
	c.addi4spn	a0,00000044
	jal	ra,0000000023061238
	c.bnez	a0,0000000023061E38

l23061D86:
	c.li	a5,00000001
	c.li	a4,00000000
	beq	s5,a5,0000000023061D94

l23061D8E:
	c.lwsp	t3,000000C4
	c.add	a4,s11
	c.lw	a4,0(a4)

l23061D94:
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
	jal	ra,00000000230616FE
	blt	zero,a0,0000000023061D38

l23061DB8:
	c.lwsp	s4,000001D4
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000038
	c.add	a4,s0
	c.lw	a4,0(a2)
	jal	ra,0000000023061ADE
	c.bnez	a0,0000000023061E38

l23061DC8:
	slli	s7,s0,00000003
	c.mv	a1,s7
	c.addi4spn	a0,00000038
	jal	ra,000000002306141E
	c.bnez	a0,0000000023061E38

l23061DD6:
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000038
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.bnez	a0,0000000023061E38

l23061DE2:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,000000002306178A
	bge	a0,zero,0000000023061E18

l23061DEE:
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000038
	jal	ra,0000000023061142
	c.bnez	a0,0000000023061E38

l23061DF8:
	c.mv	a1,s7
	c.addi4spn	a0,00000038
	jal	ra,000000002306141E
	c.bnez	a0,0000000023061E38

l23061E02:
	c.addi4spn	a1,00000014
	c.addi4spn	a2,00000038
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.bnez	a0,0000000023061E38

l23061E0E:
	c.lwsp	s4,000001D4
	c.add	a4,s0
	c.lw	a4,0(a3)
	c.addi	a3,FFFFFFFF
	c.sw	a4,0(a3)

l23061E18:
	c.addi	s5,FFFFFFFF
	c.addi	s0,FFFFFFFC
	c.j	0000000023061C8A

l23061E1E:
	c.add	a4,s10
	c.lw	a4,0(a0)
	c.li	a4,FFFFFFFF
	c.beqz	a2,0000000023061E32

l23061E26:
	c.li	a3,00000000
	jal	ra,000000002306D260
	c.mv	a4,a0
	c.beqz	a1,0000000023061E32

l23061E30:
	c.li	a4,FFFFFFFF

l23061E32:
	sw	a4,s11,+00000000
	c.j	0000000023061D2A

l23061E38:
	c.mv	s9,a0
	c.j	0000000023061B8A

;; mbedtls_mpi_mod_mpi: 23061E3C
;;   Called from:
;;     230574FE (in mbedtls_rsa_check_privkey)
;;     2305750C (in mbedtls_rsa_check_privkey)
;;     2305751A (in mbedtls_rsa_check_privkey)
;;     23057782 (in mbedtls_rsa_private)
;;     230577D6 (in mbedtls_rsa_private)
;;     230577F6 (in mbedtls_rsa_private)
;;     23057814 (in mbedtls_rsa_private)
;;     230578C6 (in mbedtls_rsa_private)
;;     2306200E (in mbedtls_mpi_exp_mod)
;;     23062038 (in mbedtls_mpi_exp_mod)
;;     230624A0 (in mbedtls_mpi_inv_mod)
;;     2306366E (in ecp_modp)
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
	jal	ra,000000002306178A
	blt	a0,zero,0000000023061EAA

l23061E58:
	c.mv	a2,s1
	c.mv	a3,s2
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,0000000023061AF8
	c.mv	s1,a0
	c.beqz	a0,0000000023061E82

l23061E68:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23061E76:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002306190E
	c.bnez	a0,0000000023061EA6

l23061E82:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306178A
	blt	a0,zero,0000000023061E76

l23061E8E:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230616FE
	blt	a0,zero,0000000023061E68

l23061E9A:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002306196C
	c.beqz	a0,0000000023061E8E

l23061EA6:
	c.mv	s1,a0
	c.j	0000000023061E68

l23061EAA:
	c.li	s1,FFFFFFF6
	c.j	0000000023061E68

;; mbedtls_mpi_exp_mod: 23061EAE
;;   Called from:
;;     2305768A (in mbedtls_rsa_public)
;;     2305773A (in mbedtls_rsa_private)
;;     23057756 (in mbedtls_rsa_private)
;;     230578AA (in mbedtls_rsa_private)
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
	jal	ra,000000002306178A
	c.li	s0,FFFFFFFC
	blt	a0,zero,0000000023062284

l23061EFE:
	lw	a5,s2,+00000008
	c.li	s0,FFFFFFFC
	lw	s5,a5,+00000000
	andi	s10,s5,+00000001
	beq	s10,zero,0000000023062284

l23061F10:
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,000000002306178A
	blt	a0,zero,0000000023062284

l23061F1C:
	addi	s1,s5,+00000002
	c.slli	s1,01
	c.andi	s1,00000008
	c.add	s1,s5
	c.li	a5,00000003
	c.li	a3,00000002

l23061F2A:
	add	a4,s5,s1
	c.addi	a5,FFFFFFFF
	sub	a4,a3,a4
	add	s1,s1,a4
	c.bnez	a5,0000000023061F2A

l23061F3A:
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
	jal	ra,0000000023070EB8
	c.mv	a0,s8
	jal	ra,00000000230612E2
	addi	a5,zero,+0000029F
	c.li	s5,00000006
	bltu	a5,a0,0000000023061F88

l23061F6A:
	addi	a5,zero,+000000EF
	c.li	s5,00000005
	bltu	a5,a0,0000000023061F88

l23061F74:
	addi	a5,zero,+0000004F
	c.li	s5,00000004
	bltu	a5,a0,0000000023061F88

l23061F7E:
	c.li	a5,00000017
	c.li	s5,00000003
	bltu	a5,a0,0000000023061F88

l23061F86:
	c.mv	s5,s10

l23061F88:
	lw	s6,s2,+00000004
	c.mv	a0,s3
	c.addi	s6,00000001
	c.mv	a1,s6
	jal	ra,0000000023061054
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23061F9C:
	c.mv	a1,s6
	c.addi4spn	a0,0000005C
	jal	ra,0000000023061054
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23061FAA:
	slli	a1,s6,00000001
	c.addi4spn	a0,0000002C
	jal	ra,0000000023061054
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23061FBA:
	lw	a5,s4,+00000000
	c.swsp	a5,00000004
	c.lwsp	s0,000000C4
	c.li	a5,FFFFFFFF
	bne	a4,a5,0000000023061FDE

l23061FC8:
	c.mv	a1,s4
	c.addi4spn	a0,00000038
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23061FD6:
	c.li	a5,00000001
	c.swsp	a5,0000001C
	addi	s4,sp,+00000038

l23061FDE:
	beq	s7,zero,0000000023061FE8

l23061FE2:
	lw	a5,s7,+00000008
	c.bnez	a5,000000002306209A

l23061FE8:
	c.li	a1,00000001
	c.addi4spn	a0,00000020
	jal	ra,0000000023061238
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23061FF6:
	lw	a1,s2,+00000004
	c.addi4spn	a0,00000020
	c.slli	a1,06
	jal	ra,000000002306141E
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062008:
	c.addi4spn	a1,00000020
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062018:
	beq	s7,zero,0000000023062026

l2306201C:
	c.li	a2,0000000C
	c.addi4spn	a1,00000020
	c.mv	a0,s7

l23062022:
	jal	ra,0000000023070C7C

l23062026:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,00000000230616FE
	blt	a0,zero,00000000230620A2

l23062032:
	c.mv	a2,s2
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023061E3C

l2306203C:
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062042:
	sub	s1,zero,s1
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.addi4spn	a0,0000005C
	jal	ra,00000000230615F4
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l2306205A:
	c.addi4spn	a1,00000020
	c.mv	a0,s3
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062068:
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
	jal	ra,00000000230615F4
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062088:
	bne	s5,s6,00000000230620AC

l2306208C:
	lw	s4,s8,+00000004
	c.li	t1,00000000
	c.li	s11,00000000
	c.li	s6,00000000

l23062096:
	c.li	s9,00000000
	c.j	0000000023062182

l2306209A:
	c.li	a2,0000000C
	c.mv	a1,s7
	c.addi4spn	a0,00000020
	c.j	0000000023062022

l230620A2:
	c.mv	a1,s4
	c.addi4spn	a0,0000005C
	jal	ra,0000000023061142
	c.j	000000002306203C

l230620AC:
	addi	s11,s5,-00000001
	lw	a1,s2,+00000004
	c.li	s4,0000000C
	c.addi4spn	a5,00000050
	sll	s4,s4,s11
	add	s9,a5,s4
	c.addi	a1,00000001
	c.mv	a0,s9
	jal	ra,0000000023061054
	sll	s6,s6,s11
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l230620D2:
	c.addi4spn	a1,0000005C
	c.mv	a0,s9
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l230620E0:
	c.li	s4,00000000

l230620E2:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s9
	c.mv	a0,s9
	jal	ra,00000000230615F4
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l230620F6:
	c.addi	s4,00000001
	bltu	s4,s11,00000000230620E2

l230620FC:
	c.li	s11,00000001
	c.addi	s6,00000001
	sll	s11,s11,s5

l23062104:
	bgeu	s6,s11,000000002306208C

l23062108:
	lw	a1,s2,+00000004
	addi	s4,s9,+0000000C
	c.mv	a0,s4
	c.addi	a1,00000001
	jal	ra,0000000023061054
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l2306211E:
	c.mv	a1,s9
	c.mv	a0,s4
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l2306212C:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,0000005C
	c.mv	a0,s4
	jal	ra,00000000230615F4
	c.mv	s0,a0
	bne	a0,zero,000000002306224E

l23062140:
	c.addi	s6,00000001
	c.mv	s9,s4
	c.j	0000000023062104

l23062146:
	c.addi	s4,FFFFFFFF
	addi	s6,zero,+00000020

l2306214C:
	lw	a4,s8,+00000008
	slli	a3,s4,00000002
	c.addi	s6,FFFFFFFF
	c.add	a4,a3
	c.lw	a4,0(a4)
	srl	a4,a4,s6
	c.andi	a4,00000001
	c.bnez	a4,00000000230621CC

l23062162:
	beq	t1,zero,0000000023062182

l23062166:
	c.li	a5,00000001
	bne	t1,a5,00000000230621CC

l2306216C:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	t1,00000084
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.bnez	a0,000000002306224E

l23062180:
	c.lwsp	a2,000000C0

l23062182:
	bne	s6,zero,000000002306214C

l23062186:
	bne	s4,zero,0000000023062146

l2306218A:
	c.li	s6,00000001
	sll	s6,s6,s5

l23062190:
	bne	s4,s11,000000002306221E

l23062194:
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
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.bnez	a0,000000002306224E

l230621B2:
	c.lwsp	s0,000000C4
	c.li	a5,FFFFFFFF
	bne	a4,a5,000000002306224E

l230621BA:
	sw	a4,s3,+00000000
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,000000002306190E
	c.mv	s0,a0
	c.j	000000002306224E

l230621CC:
	c.addi	s11,00000001
	sub	a3,s5,s11
	sll	a4,a4,a3
	or	s9,s9,a4
	c.li	t1,00000002
	bne	s5,s11,0000000023062182

l230621E0:
	c.li	t1,00000000

l230621E2:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	t1,00000084
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.bnez	a0,000000002306224E

l230621F6:
	c.lwsp	a2,000000C0
	c.addi	t1,00000001
	bltu	t1,s11,00000000230621E2

l230621FE:
	c.li	a5,0000000C
	add	a1,s9,a5
	c.addi4spn	a5,00000050
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a0,s3
	c.add	a1,a5
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.bnez	a0,000000002306224E

l23062218:
	c.mv	t1,s10
	c.li	s11,00000000
	c.j	0000000023062096

l2306221E:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.bnez	a0,000000002306224E

l23062230:
	c.slli	s9,01
	and	a4,s6,s9
	c.bnez	a4,000000002306223C

l23062238:
	c.addi	s4,00000001
	c.j	0000000023062190

l2306223C:
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,0000005C
	c.mv	a0,s3
	jal	ra,00000000230615F4
	c.mv	s0,a0
	c.beqz	a0,0000000023062238

l2306224E:
	addi	s1,s5,-00000001
	c.li	a5,00000001
	sll	s1,a5,s1
	sll	s5,a5,s5
	c.li	s2,0000000C

l2306225E:
	bltu	s1,s5,00000000230622C0

l23062262:
	c.addi4spn	a0,0000005C
	jal	ra,0000000023061018
	c.addi4spn	a0,0000002C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000038
	jal	ra,0000000023061018
	beq	s7,zero,000000002306227E

l23062278:
	lw	a5,s7,+00000008
	c.bnez	a5,0000000023062284

l2306227E:
	c.addi4spn	a0,00000020
	jal	ra,0000000023061018

l23062284:
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

l230622C0:
	add	a0,s1,s2
	c.addi4spn	a5,00000050
	c.addi	s1,00000001
	c.add	a0,a5
	jal	ra,0000000023061018
	c.j	000000002306225E

;; mbedtls_mpi_gcd: 230622D0
;;   Called from:
;;     230574D2 (in mbedtls_rsa_check_privkey)
;;     230574E0 (in mbedtls_rsa_check_privkey)
;;     2305787C (in mbedtls_rsa_private)
;;     23062482 (in mbedtls_mpi_inv_mod)
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
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l230622FC:
	c.lwsp	a2,00000084
	c.addi4spn	a0,00000034
	c.mv	a1,a2
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l2306230A:
	c.addi4spn	a0,00000028
	jal	ra,00000000230612A2
	c.mv	s1,a0
	c.addi4spn	a0,00000034
	jal	ra,00000000230612A2
	bgeu	a0,s1,000000002306231E

l2306231C:
	c.mv	s1,a0

l2306231E:
	c.mv	a1,s1
	c.addi4spn	a0,00000028
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l2306232A:
	c.mv	a1,s1
	c.addi4spn	a0,00000034
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l23062336:
	c.li	a5,00000001
	c.swsp	a5,00000098
	c.swsp	a5,00000014

l2306233C:
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002306178A
	c.bnez	a0,000000002306235E

l23062346:
	c.mv	a1,s1
	c.addi4spn	a0,00000034
	jal	ra,000000002306141E
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l23062352:
	c.addi4spn	a1,00000034
	c.mv	a0,s2
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.j	00000000230623A8

l2306235E:
	c.addi4spn	a0,00000028
	jal	ra,00000000230612A2
	c.mv	a1,a0
	c.addi4spn	a0,00000028
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l23062370:
	c.addi4spn	a0,00000034
	jal	ra,00000000230612A2
	c.mv	a1,a0
	c.addi4spn	a0,00000034
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l23062382:
	c.addi4spn	a1,00000034
	c.addi4spn	a0,00000028
	jal	ra,00000000230616FE
	blt	a0,zero,00000000230623C8

l2306238E:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000034
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l2306239C:
	c.li	a1,00000001
	c.addi4spn	a0,00000028

l230623A0:
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.beqz	a0,000000002306233C

l230623A8:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000028
	jal	ra,0000000023061018
	c.addi4spn	a0,00000034
	jal	ra,0000000023061018
	c.mv	a0,s0
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l230623C8:
	c.addi4spn	a1,00000034
	c.addi4spn	a2,00000028
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.mv	s0,a0
	c.bnez	a0,00000000230623A8

l230623D6:
	c.li	a1,00000001
	c.addi4spn	a0,00000034
	c.j	00000000230623A0

;; mbedtls_mpi_fill_random: 230623DC
;;   Called from:
;;     2305786E (in mbedtls_rsa_private)
;;     230646D4 (in ecp_mul_comb)
mbedtls_mpi_fill_random proc
	addi	a5,zero,+00000400
	bltu	a5,a1,0000000023062420

l230623E4:
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
	c.bnez	a0,000000002306240E

l23062404:
	c.mv	a2,s0
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023061334

l2306240E:
	lw	ra,sp,+0000040C
	lw	s0,sp,+00000408
	lw	s1,sp,+00000404
	addi	sp,sp,+00000410
	c.jr	ra

l23062420:
	c.li	a0,FFFFFFFC
	c.jr	ra

;; mbedtls_mpi_inv_mod: 23062424
;;   Called from:
;;     23057528 (in mbedtls_rsa_check_privkey)
;;     23057894 (in mbedtls_rsa_private)
;;     23063B64 (in ecp_normalize_jac)
;;     23063CAE (in ecp_normalize_jac_many)
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
	jal	ra,000000002306178A
	c.li	s0,FFFFFFFC
	bge	zero,a0,00000000230625D8

l23062444:
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
	jal	ra,00000000230622D0
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l2306248C:
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	jal	ra,000000002306178A
	c.li	s0,FFFFFFF2
	bne	a0,zero,00000000230625A2

l2306249A:
	c.mv	a2,s1
	c.mv	a1,s3
	c.addi4spn	a0,00000010
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l230624AA:
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000001C
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l230624B8:
	c.mv	a1,s1
	c.addi4spn	a0,00000040
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l230624C6:
	c.mv	a1,s1
	c.addi4spn	a0,0000004C
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l230624D4:
	c.li	a1,00000001
	c.addi4spn	a0,00000028
	jal	ra,0000000023061238
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l230624E0:
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,0000000023061238
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l230624EC:
	c.li	a1,00000000
	c.addi4spn	a0,00000058
	jal	ra,0000000023061238
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l230624F8:
	c.li	a1,00000001
	c.addi4spn	a0,00000064
	jal	ra,0000000023061238

l23062500:
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l23062504:
	c.lwsp	tp,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002306257A

l2306250C:
	c.lwsp	s5,000000E4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	beq	a5,zero,0000000023062610

l23062516:
	c.addi4spn	a1,0000004C
	c.addi4spn	a0,0000001C
	jal	ra,00000000230616FE
	blt	a0,zero,0000000023062666

l23062522:
	c.addi4spn	a1,0000001C
	c.addi4spn	a2,0000004C
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l23062530:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000058
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l2306253E:
	c.addi4spn	a2,00000064
	c.addi4spn	a1,00000034

l23062542:
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l2306254C:
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,000000002306178A
	c.bnez	a0,0000000023062504

l23062556:
	c.li	a1,00000000
	c.addi4spn	a0,00000058
	jal	ra,000000002306178A
	blt	a0,zero,000000002306268C

l23062562:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,00000000230616FE
	bge	a0,zero,000000002306269E

l2306256E:
	c.addi4spn	a1,00000058
	c.mv	a0,s2
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.j	00000000230625A2

l2306257A:
	c.li	a1,00000001
	c.addi4spn	a0,0000001C
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l23062586:
	c.lwsp	a6,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,00000000230625E8

l2306258E:
	c.lwsp	t3,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,00000000230625E8

l23062596:
	c.li	a1,00000001
	c.addi4spn	a0,00000028
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.beqz	a0,0000000023062606

l230625A2:
	c.addi4spn	a0,00000010
	jal	ra,0000000023061018
	c.addi4spn	a0,0000001C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000028
	jal	ra,0000000023061018
	c.addi4spn	a0,00000034
	jal	ra,0000000023061018
	c.addi4spn	a0,00000004
	jal	ra,0000000023061018
	c.addi4spn	a0,00000040
	jal	ra,0000000023061018
	c.addi4spn	a0,0000004C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000058
	jal	ra,0000000023061018
	c.addi4spn	a0,00000064
	jal	ra,0000000023061018

l230625D8:
	c.mv	a0,s0
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l230625E8:
	c.addi4spn	a1,00000028
	c.addi4spn	a2,00000040
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l230625F6:
	c.addi4spn	a1,00000034
	c.addi4spn	a2,00000010
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.beqz	a0,0000000023062596

l23062604:
	c.j	00000000230625A2

l23062606:
	c.li	a1,00000001
	c.addi4spn	a0,00000034
	jal	ra,00000000230614E0
	c.j	0000000023062500

l23062610:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l2306261C:
	c.lwsp	ra,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023062648

l23062624:
	c.lwsp	a3,000001F4
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.bnez	a5,0000000023062648

l2306262C:
	c.li	a1,00000001
	c.addi4spn	a0,00000058
	jal	ra,00000000230614E0
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l23062638:
	c.li	a1,00000001
	c.addi4spn	a0,00000064
	jal	ra,00000000230614E0
	c.mv	s0,a0
	beq	a0,zero,000000002306250C

l23062646:
	c.j	00000000230625A2

l23062648:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,00000040
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.mv	s0,a0
	c.bnez	a0,00000000230625A2

l23062656:
	c.addi4spn	a1,00000064
	c.addi4spn	a2,00000010
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.beqz	a0,000000002306262C

l23062664:
	c.j	00000000230625A2

l23062666:
	c.addi4spn	a1,0000004C
	c.addi4spn	a2,0000001C
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l23062676:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,00000028
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	bne	a0,zero,00000000230625A2

l23062686:
	c.addi4spn	a2,00000034
	c.addi4spn	a1,00000064
	c.j	0000000023062542

l2306268C:
	c.addi4spn	a1,00000058
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.mv	s0,a0
	beq	a0,zero,0000000023062556

l2306269C:
	c.j	00000000230625A2

l2306269E:
	c.addi4spn	a1,00000058
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	beq	a0,zero,0000000023062562

l230626AE:
	c.j	00000000230625A2

;; mbedtls_cipher_get_block_size: 230626B0
;;   Called from:
;;     2306291C (in mbedtls_cipher_update)
;;     23062B6A (in mbedtls_cipher_finish)
;;     23062B90 (in mbedtls_cipher_finish)
;;     23062BB4 (in mbedtls_cipher_finish)
mbedtls_cipher_get_block_size proc
	c.beqz	a0,00000000230626BC

l230626B2:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,00000000230626BE

l230626B8:
	c.lw	a5,20(a0)
	c.jr	ra

l230626BC:
	c.li	a0,00000000

l230626BE:
	c.jr	ra

;; add_pkcs_padding: 230626C0
add_pkcs_padding proc
	c.sub	a1,a2
	c.li	a5,00000000

l230626C4:
	bltu	a5,a1,00000000230626CA

l230626C8:
	c.jr	ra

l230626CA:
	add	a4,a0,a5
	c.add	a4,a2
	c.addi	a5,00000001
	sb	a1,a4,+00000000
	andi	a5,a5,+000000FF
	c.j	00000000230626C4

;; get_pkcs_padding: 230626DC
get_pkcs_padding proc
	c.beqz	a0,0000000023062728

l230626DE:
	c.beqz	a2,0000000023062728

l230626E0:
	add	a5,a0,a1
	lbu	a6,a5,-00000001
	sltiu	a4,a6,+00000001
	sub	a7,a1,a6
	sltu	a5,a1,a6
	c.or	a5,a4
	sw	a7,a2,+00000000
	c.li	a4,00000000

l230626FC:
	bne	a4,a1,0000000023062706

l23062700:
	c.bnez	a5,0000000023062730

l23062702:
	c.li	a0,00000000
	c.jr	ra

l23062706:
	add	a3,a0,a4
	lbu	a3,a3,+00000000
	xor	a2,a6,a3
	sltu	a3,a4,a7
	xori	a3,a3,+00000001
	add	a3,a3,a2
	c.addi	a4,00000001
	c.or	a5,a3
	andi	a5,a5,+000000FF
	c.j	00000000230626FC

l23062728:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23062730:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000200
	c.jr	ra

;; add_zeros_padding: 23062738
add_zeros_padding proc
	bltu	a2,a1,000000002306273E

l2306273C:
	c.jr	ra

l2306273E:
	add	a5,a0,a2
	sb	zero,a5,+00000000
	c.addi	a2,00000001
	c.j	0000000023062738

;; get_no_padding: 2306274A
get_no_padding proc
	c.beqz	a0,0000000023062754

l2306274C:
	c.beqz	a2,0000000023062754

l2306274E:
	c.sw	a2,0(a1)
	c.li	a0,00000000
	c.jr	ra

l23062754:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; get_zeros_padding: 2306275C
get_zeros_padding proc
	c.beqz	a0,0000000023062790

l2306275E:
	c.beqz	a2,0000000023062790

l23062760:
	sw	zero,a2,+00000000
	c.li	a5,00000000

l23062766:
	c.bnez	a1,000000002306276C

l23062768:
	c.li	a0,00000000
	c.jr	ra

l2306276C:
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
	c.j	0000000023062766

l23062790:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_info_from_type: 23062798
;;   Called from:
;;     23059BF0 (in mbedtls_ssl_derive_keys)
mbedtls_cipher_info_from_type proc
	lui	a5,0002308B
	addi	a5,a5,-00000158

l230627A0:
	c.lw	a5,4(a4)
	c.bnez	a4,00000000230627A8

l230627A4:
	c.mv	a0,a4
	c.jr	ra

l230627A8:
	lbu	a3,a5,+00000000
	beq	a3,a0,00000000230627A4

l230627B0:
	c.addi	a5,00000008
	c.j	00000000230627A0

;; mbedtls_cipher_info_from_values: 230627B4
;;   Called from:
;;     23065056 (in mbedtls_gcm_setkey)
mbedtls_cipher_info_from_values proc
	lui	a4,0002308B
	addi	a4,a4,-00000158

l230627BC:
	c.lw	a4,4(a5)
	c.bnez	a5,00000000230627C4

l230627C0:
	c.mv	a0,a5
	c.jr	ra

l230627C4:
	c.lw	a5,24(a3)
	lbu	a3,a3,+00000000
	bne	a3,a0,00000000230627DC

l230627CE:
	c.lw	a5,4(a3)
	bne	a3,a1,00000000230627DC

l230627D4:
	lbu	a3,a5,+00000001
	beq	a3,a2,00000000230627C0

l230627DC:
	c.addi	a4,00000008
	c.j	00000000230627BC

;; mbedtls_cipher_init: 230627E0
;;   Called from:
;;     2305A91E (in ssl_handshake_init)
;;     2305A926 (in ssl_handshake_init)
mbedtls_cipher_init proc
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_cipher_free: 230627EA
;;   Called from:
;;     2305A670 (in mbedtls_ssl_transform_free)
;;     2305A678 (in mbedtls_ssl_transform_free)
;;     2306506C (in mbedtls_gcm_setkey)
;;     230656DC (in mbedtls_gcm_free)
mbedtls_cipher_free proc
	c.beqz	a0,0000000023062818

l230627EC:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,60(a0)
	c.beqz	a0,0000000023062800

l230627F8:
	c.lw	s0,0(a5)
	c.lw	a5,24(a5)
	c.lw	a5,32(a5)
	c.jalr	a5

l23062800:
	addi	a5,s0,+00000040

l23062804:
	bne	s0,a5,0000000023062810

l23062808:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23062810:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023062804

l23062818:
	c.jr	ra

;; mbedtls_cipher_setkey: 2306281A
;;   Called from:
;;     2305A014 (in mbedtls_ssl_derive_keys)
;;     2305A036 (in mbedtls_ssl_derive_keys)
;;     23065084 (in mbedtls_gcm_setkey)
mbedtls_cipher_setkey proc
	c.beqz	a0,0000000023062858

l2306281C:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023062858

l23062820:
	c.lw	a5,16(a4)
	c.andi	a4,00000002
	c.bnez	a4,000000002306282C

l23062826:
	c.lw	a5,4(a4)
	bne	a4,a2,0000000023062858

l2306282C:
	c.sw	a0,4(a2)
	sb	a3,a0,+00000008
	c.li	a4,00000001
	beq	a3,a4,0000000023062844

l23062838:
	lbu	a4,a5,+00000001
	c.addi	a4,FFFFFFFD
	andi	a4,a4,+000000FD
	c.bnez	a4,000000002306284E

l23062844:
	c.lw	a5,24(a5)
	lw	t1,a5,+00000014

l2306284A:
	c.lw	a0,60(a0)
	c.jr	t1

l2306284E:
	c.bnez	a3,0000000023062858

l23062850:
	c.lw	a5,24(a5)
	lw	t1,a5,+00000018
	c.j	000000002306284A

l23062858:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_set_iv: 23062860
;;   Called from:
;;     23062CAE (in mbedtls_cipher_crypt)
mbedtls_cipher_set_iv proc
	c.beqz	a0,00000000230628A0

l23062862:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,00000000230628B0

l23062870:
	c.beqz	a1,00000000230628B0

l23062872:
	c.li	a4,00000010
	c.mv	s0,a2
	bltu	a4,a2,00000000230628A8

l2306287A:
	c.lw	a5,16(a4)
	c.andi	a4,00000001
	c.bnez	a4,0000000023062888

l23062880:
	c.lw	a5,12(a5)
	bltu	a2,a5,00000000230628B0

l23062886:
	c.mv	s0,a5

l23062888:
	c.mv	a2,s0
	addi	a0,s1,+00000028
	jal	ra,0000000023070C7C
	c.li	a0,00000000
	c.sw	s1,56(s0)

l23062896:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230628A0:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l230628A8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.j	0000000023062896

l230628B0:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.j	0000000023062896

;; mbedtls_cipher_reset: 230628B8
;;   Called from:
;;     23062CB6 (in mbedtls_cipher_crypt)
mbedtls_cipher_reset proc
	c.beqz	a0,00000000230628C6

l230628BA:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230628C6

l230628BE:
	sw	zero,a0,+00000024
	c.li	a0,00000000
	c.jr	ra

l230628C6:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_cipher_update: 230628CE
;;   Called from:
;;     23062CC6 (in mbedtls_cipher_crypt)
;;     230650A2 (in mbedtls_gcm_setkey)
;;     23065290 (in mbedtls_gcm_starts)
;;     2306543E (in mbedtls_gcm_update)
mbedtls_cipher_update proc
	c.bnez	a0,00000000230628F4

l230628D0:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l230628D8:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100

l230628DE:
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

l230628F4:
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
	c.beqz	a5,00000000230628D8

l2306290E:
	c.mv	s5,a4
	c.beqz	a4,00000000230628D8

l23062912:
	sw	zero,a4,+00000000
	c.mv	s6,a3
	c.mv	s4,a1
	c.mv	s1,a2
	jal	ra,00000000230626B0
	c.lw	s0,0(a4)
	c.li	a3,00000001
	c.mv	s2,a0
	lbu	a5,a4,+00000001
	bne	a5,a3,000000002306295E

l2306292E:
	bne	a0,s1,0000000023062ACA

l23062932:
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

l2306295E:
	c.li	a3,00000006
	bne	a5,a3,0000000023062988

l23062964:
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
	jal	zero,0000000023065386

l23062988:
	beq	a0,zero,0000000023062AD2

l2306298C:
	bne	s4,s6,000000002306299A

l23062990:
	c.lw	s0,36(a3)
	c.bnez	a3,00000000230628D8

l23062994:
	and	a3,s1,a0
	c.bnez	a3,00000000230628D8

l2306299A:
	c.li	a3,00000002
	bne	a5,a3,0000000023062A7E

l230629A0:
	lb	a5,s0,+00000008
	lw	s3,s0,+00000024
	c.bnez	a5,00000000230629CA

l230629AA:
	sub	a5,s2,s3
	bltu	a5,s1,00000000230629D8

l230629B2:
	addi	a0,s3,+00000014
	c.mv	a2,s1
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,0000000023070C7C
	c.lw	s0,36(a5)
	c.add	s1,a5
	c.sw	s0,36(s1)

l230629C6:
	c.li	a0,00000000
	c.j	00000000230628DE

l230629CA:
	c.li	a4,00000001
	bne	a5,a4,00000000230629D8

l230629D0:
	sub	a5,s2,s3
	bltu	s1,a5,00000000230629B2

l230629D8:
	beq	s3,zero,0000000023062A26

l230629DC:
	sub	s7,s2,s3
	addi	a0,s3,+00000014
	c.mv	a2,s7
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,0000000023070C7C
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
	bne	a0,zero,00000000230628DE

l23062A0E:
	lw	a5,s5,+00000000
	c.add	s1,s3
	c.add	s6,s2
	c.add	a5,s2
	sw	a5,s5,+00000000
	sw	zero,s0,+00000024
	c.add	s4,s7
	sub	s1,s1,s2

l23062A26:
	c.beqz	s1,00000000230629C6

l23062A28:
	and	s3,s1,s2
	bne	s3,zero,0000000023062A38

l23062A30:
	lb	a5,s0,+00000008
	c.bnez	a5,0000000023062A38

l23062A36:
	c.mv	s3,s2

l23062A38:
	sub	s1,s1,s3
	c.mv	a2,s3
	add	a1,s4,s1
	addi	a0,s0,+00000014
	jal	ra,0000000023070C7C
	c.lw	s0,36(a5)
	c.add	s3,a5
	sw	s3,s0,+00000024
	c.beqz	s1,00000000230629C6

l23062A54:
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
	bne	a0,zero,00000000230628DE

l23062A72:
	lw	a5,s5,+00000000
	c.add	s1,a5

l23062A78:
	sw	s1,s5,+00000000
	c.j	00000000230628DE

l23062A7E:
	c.li	a3,00000003
	bne	a5,a3,0000000023062AA6

l23062A84:
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

l23062AA0:
	bne	a0,zero,00000000230628DE

l23062AA4:
	c.j	0000000023062A78

l23062AA6:
	c.li	a3,00000005
	bne	a5,a3,0000000023062ADA

l23062AAC:
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
	c.j	0000000023062AA0

l23062ACA:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000280
	c.j	00000000230628DE

l23062AD2:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000380
	c.j	00000000230628DE

l23062ADA:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.j	00000000230628DE

;; mbedtls_cipher_finish: 23062AE2
;;   Called from:
;;     23062CD4 (in mbedtls_cipher_crypt)
mbedtls_cipher_finish proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,0000000023062BCE

l23062AF2:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,0000000023062BCE

l23062AF8:
	c.beqz	a2,0000000023062BCE

l23062AFA:
	sw	zero,a2,+00000000
	c.lw	a0,0(a3)
	c.li	a5,00000003
	lbu	a4,a3,+00000001
	beq	a4,a5,0000000023062BC4

l23062B0A:
	addi	a5,a4,-00000005
	andi	a5,a5,+000000FF
	c.li	a6,00000002
	bgeu	a6,a5,0000000023062BC4

l23062B18:
	c.li	a5,00000001
	bne	a4,a5,0000000023062B2C

l23062B1E:
	c.lw	a0,36(a5)
	c.li	s0,00000000
	c.beqz	a5,0000000023062B4A

l23062B24:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000280
	c.j	0000000023062B4A

l23062B2C:
	bne	a4,a6,0000000023062BD6

l23062B30:
	lb	a4,a0,+00000008
	c.mv	s3,a2
	c.mv	s4,a1
	lw	s2,a0,+00000024
	bne	a4,a5,0000000023062BB4

l23062B40:
	c.lw	a0,12(a5)
	c.bnez	a5,0000000023062B5C

l23062B44:
	c.li	s0,00000000
	bne	s2,zero,0000000023062B24

l23062B4A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23062B5C:
	c.lw	s1,56(a1)
	c.addi	a0,00000014
	c.bnez	a1,0000000023062B64

l23062B62:
	c.lw	a3,12(a1)

l23062B64:
	c.mv	a2,s2
	c.jalr	a5

l23062B68:
	c.mv	a0,s1
	jal	ra,00000000230626B0
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
	c.bnez	a0,0000000023062B4A

l23062B8E:
	c.mv	a0,s1
	jal	ra,00000000230626B0
	lb	a5,s1,+00000008
	c.mv	a1,a0
	c.bnez	a5,0000000023062BC8

l23062B9C:
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

l23062BB4:
	jal	ra,00000000230626B0
	beq	a0,s2,0000000023062B68

l23062BBC:
	c.lw	s1,12(a5)
	c.bnez	a5,0000000023062B24

l23062BC0:
	bne	s2,zero,0000000023062B24

l23062BC4:
	c.li	s0,00000000
	c.j	0000000023062B4A

l23062BC8:
	sw	a0,s3,+00000000
	c.j	0000000023062B4A

l23062BCE:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000100
	c.j	0000000023062B4A

l23062BD6:
	c.lui	s0,FFFFA000
	addi	s0,s0,-00000080
	c.j	0000000023062B4A

;; mbedtls_cipher_set_padding_mode: 23062BDE
;;   Called from:
;;     2305A05C (in mbedtls_ssl_derive_keys)
;;     2305A086 (in mbedtls_ssl_derive_keys)
;;     23062C6E (in mbedtls_cipher_setup)
mbedtls_cipher_set_padding_mode proc
	c.beqz	a0,0000000023062C34

l23062BE0:
	c.lw	a0,0(a5)
	lbu	a4,a5,+00000001
	c.li	a5,00000002
	bne	a4,a5,0000000023062C34

l23062BEC:
	c.li	a5,00000003
	beq	a1,a5,0000000023062C12

l23062BF2:
	c.li	a5,00000004
	beq	a1,a5,0000000023062C26

l23062BF8:
	c.bnez	a1,0000000023062C3C

l23062BFA:
	lui	a5,00023062
	addi	a5,a5,+000006C0
	c.sw	a0,12(a5)
	lui	a5,00023062
	addi	a5,a5,+000006DC

l23062C0C:
	c.sw	a0,16(a5)
	c.li	a0,00000000
	c.jr	ra

l23062C12:
	lui	a5,00023062
	addi	a5,a5,+00000738
	c.sw	a0,12(a5)
	lui	a5,00023062
	addi	a5,a5,+0000075C
	c.j	0000000023062C0C

l23062C26:
	lui	a5,00023062
	sw	zero,a0,+0000000C
	addi	a5,a5,+0000074A
	c.j	0000000023062C0C

l23062C34:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23062C3C:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; mbedtls_cipher_setup: 23062C44
;;   Called from:
;;     23059F60 (in mbedtls_ssl_derive_keys)
;;     23059FF2 (in mbedtls_ssl_derive_keys)
;;     23065074 (in mbedtls_gcm_setkey)
mbedtls_cipher_setup proc
	c.beqz	a1,0000000023062C7E

l23062C46:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.beqz	a0,0000000023062C86

l23062C52:
	c.mv	s1,a1
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lw	s1,24(a5)
	c.lw	a5,28(a5)
	c.jalr	a5
	c.sw	s0,60(a0)
	c.beqz	a0,0000000023062C8E

l23062C68:
	c.sw	s0,0(s1)
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023062BDE
	c.li	a0,00000000

l23062C74:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23062C7E:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.jr	ra

l23062C86:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000100
	c.j	0000000023062C74

l23062C8E:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000180
	c.j	0000000023062C74

;; mbedtls_cipher_crypt: 23062C96
;;   Called from:
;;     2305B340 (in mbedtls_ssl_write_record)
;;     2305CDF2 (in mbedtls_ssl_read_record_layer)
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
	jal	ra,0000000023062860
	c.bnez	a0,0000000023062CE2

l23062CB4:
	c.mv	a0,s1
	jal	ra,00000000230628B8
	c.bnez	a0,0000000023062CE2

l23062CBC:
	c.mv	a4,s0
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230628CE
	c.bnez	a0,0000000023062CE2

l23062CCC:
	c.lw	s0,0(a1)
	c.addi4spn	a2,0000000C
	c.mv	a0,s1
	c.add	a1,s2
	jal	ra,0000000023062AE2
	c.bnez	a0,0000000023062CE2

l23062CDA:
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.sw	s0,0(a5)

l23062CE2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; mbedtls_cipher_auth_encrypt: 23062CF2
;;   Called from:
;;     2305B224 (in mbedtls_ssl_write_record)
mbedtls_cipher_auth_encrypt proc
	lw	t5,a0,+00000000
	c.mv	t1,a2
	c.lwsp	zero,000000AC
	lbu	t6,t5,+00000001
	c.li	t5,00000006
	c.mv	a2,a6
	c.lwsp	tp,0000008C
	c.lwsp	s0,00000008
	bne	t6,t5,0000000023062D26

l23062D0A:
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
	jal	zero,0000000023065600

l23062D26:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; mbedtls_cipher_auth_decrypt: 23062D2E
;;   Called from:
;;     2305CBB8 (in mbedtls_ssl_read_record_layer)
mbedtls_cipher_auth_decrypt proc
	lw	t1,a0,+00000000
	lbu	t3,t1,+00000001
	c.li	t1,00000006
	bne	t3,t1,0000000023062D74

l23062D3C:
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
	jal	ra,0000000023065660
	c.li	a5,FFFFFFEE
	bne	a0,a5,0000000023062D6E

l23062D68:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000300

l23062D6E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23062D74:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000080
	c.jr	ra

;; gcm_ctx_free: 23062D7C
gcm_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230656D4
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; gcm_ctx_alloc: 23062D94
gcm_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000188
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023062DAC

l23062DA8:
	jal	ra,0000000023065036

l23062DAC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; gcm_aes_setkey_wrap: 23062DB6
gcm_aes_setkey_wrap proc
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000002
	jal	zero,0000000023065040

;; aes_ctx_free: 23062DC0
aes_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002305F9A0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; aes_ctx_alloc: 23062DD8
aes_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000118
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023062DF0

l23062DEC:
	jal	ra,000000002305F996

l23062DF0:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; aes_setkey_dec_wrap: 23062DFA
aes_setkey_dec_wrap proc
	jal	zero,000000002305FC44

;; aes_setkey_enc_wrap: 23062DFE
aes_setkey_enc_wrap proc
	jal	zero,000000002305F9B4

;; aes_crypt_ctr_wrap: 23062E02
aes_crypt_ctr_wrap proc
	jal	zero,000000002306078E

;; aes_crypt_cfb128_wrap: 23062E06
aes_crypt_cfb128_wrap proc
	jal	zero,00000000230606F2

;; aes_crypt_cbc_wrap: 23062E0A
aes_crypt_cbc_wrap proc
	jal	zero,000000002306060C

;; aes_crypt_ecb_wrap: 23062E0E
aes_crypt_ecb_wrap proc
	jal	zero,00000000230605E8

;; debug_send_line.isra.0: 23062E12
;;   Called from:
;;     23062EA6 (in mbedtls_debug_print_mpi.part.1)
;;     23062EF6 (in mbedtls_debug_print_mpi.part.1)
;;     23062F92 (in mbedtls_debug_print_mpi.part.1)
;;     2306303E (in mbedtls_debug_print_msg)
;;     230630C0 (in mbedtls_debug_print_ret)
;;     23063156 (in mbedtls_debug_print_buf)
;;     230631BE (in mbedtls_debug_print_buf)
;;     2306322C (in mbedtls_debug_print_buf)
;;     230633FE (in mbedtls_debug_print_crt)
;;     23063452 (in mbedtls_debug_print_crt)
;;     230634B8 (in mbedtls_debug_print_crt)
;;     2306354A (in mbedtls_debug_print_crt)
debug_send_line.isra.0 proc
	lw	t1,a0,+00000010
	c.lw	a0,20(a0)
	c.jr	t1

;; mbedtls_debug_print_mpi.part.1: 23062E1A
;;   Called from:
;;     230632C4 (in mbedtls_debug_print_mpi)
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

l23062E64:
	slli	a4,s1,00000002
	c.bnez	s1,0000000023062F34

l23062E6A:
	c.add	a5,a4
	c.lw	a5,0(a1)
	c.li	a2,FFFFFFFF
	c.li	a5,0000001F

l23062E72:
	srl	a4,a1,a5
	c.andi	a4,00000001
	c.bnez	a4,0000000023062E80

l23062E7A:
	c.addi	a5,FFFFFFFF
	bne	a5,a2,0000000023062E72

l23062E80:
	slli	a4,s1,00000005
	c.addi	a4,00000001
	lui	a2,0002308B
	c.add	a4,a5
	addi	a2,a2,+00000060
	addi	a1,zero,+00000200
	c.mv	a0,sp
	jal	ra,000000002305216A
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023062E12
	c.li	s0,00000000
	c.li	a4,00000001
	c.li	s9,00000000
	addi	s8,zero,+00000200

l23062EB4:
	c.li	a5,FFFFFFFF
	bne	s1,a5,0000000023062F40

l23062EBA:
	c.beqz	a4,0000000023062ED4

l23062EBC:
	lui	a2,0002308B
	addi	a1,zero,+00000200
	c.sub	a1,s0
	add	a0,sp,s0
	addi	a2,a2,+00000080
	jal	ra,000000002305216A
	c.add	s0,a0

l23062ED4:
	lui	a2,0002308C
	addi	a1,zero,+00000200
	c.sub	a1,s0
	add	a0,sp,s0
	addi	a2,a2,-000005EC
	jal	ra,000000002305216A
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023062E12
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

l23062F34:
	add	a2,a5,a4
	c.lw	a2,0(a2)
	c.bnez	a2,0000000023062E6A

l23062F3C:
	c.addi	s1,FFFFFFFF
	c.j	0000000023062E64

l23062F40:
	slli	s10,s1,00000002
	c.beqz	a4,0000000023062F50

l23062F46:
	lw	a5,s2,+00000008
	c.add	a5,s10
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023062FC8

l23062F50:
	c.li	s3,00000018
	c.li	s11,FFFFFFF8

l23062F54:
	c.beqz	a4,0000000023062F68

l23062F56:
	lw	a5,s2,+00000008
	c.add	a5,s10
	c.lw	a5,0(a5)
	srl	a5,a5,s3
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023062FC2

l23062F68:
	andi	a5,s9,+0000000F
	c.bnez	a5,0000000023062F98

l23062F6E:
	beq	s9,zero,0000000023062F98

l23062F72:
	lui	a5,0002308C
	addi	a2,a5,-000005EC
	sub	a1,s8,s0
	add	a0,sp,s0
	jal	ra,000000002305216A
	lw	a0,s4,+00000000
	c.mv	a4,sp
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	jal	ra,0000000023062E12
	c.li	s0,00000000

l23062F98:
	lw	a5,s2,+00000008
	sub	a1,s8,s0
	add	a0,sp,s0
	c.add	a5,s10
	c.lw	a5,0(a3)
	lui	a5,00023081
	addi	a2,a5,+0000063C
	srl	a3,a3,s3
	andi	a3,a3,+000000FF
	jal	ra,000000002305216A
	c.add	s0,a0
	c.addi	s9,00000001
	c.li	a4,00000000

l23062FC2:
	c.addi	s3,FFFFFFF8
	bne	s3,s11,0000000023062F54

l23062FC8:
	c.addi	s1,FFFFFFFF
	c.j	0000000023062EB4

;; mbedtls_debug_print_msg: 23062FCC
;;   Called from:
;;     23059726 (in ssl_swap_epochs)
;;     23059748 (in ssl_swap_epochs)
;;     230597DA (in ssl_calc_finished_tls_sha256)
;;     2305987C (in ssl_calc_finished_tls_sha256)
;;     230598C8 (in ssl_calc_verify_tls_sha256)
;;     23059912 (in ssl_calc_verify_tls_sha256)
;;     230599DC (in ssl_set_timer)
;;     23059A34 (in ssl_check_timer)
;;     23059BE6 (in mbedtls_ssl_derive_keys)
;;     23059C12 (in mbedtls_ssl_derive_keys)
;;     23059CC8 (in mbedtls_ssl_derive_keys)
;;     23059CE4 (in mbedtls_ssl_derive_keys)
;;     23059DE0 (in mbedtls_ssl_derive_keys)
;;     23059EE8 (in mbedtls_ssl_derive_keys)
;;     2305A0CA (in mbedtls_ssl_derive_keys)
;;     2305A0FC (in mbedtls_ssl_flush_output)
;;     2305A11A (in mbedtls_ssl_flush_output)
;;     2305A1AA (in mbedtls_ssl_flush_output)
;;     2305A1C8 (in mbedtls_ssl_flush_output)
;;     2305A1EC (in mbedtls_ssl_flush_output)
;;     2305A2CE (in mbedtls_ssl_send_flight_completed)
;;     2305A372 (in mbedtls_ssl_optimize_checksum)
;;     2305A55A (in mbedtls_ssl_get_record_expansion)
;;     2305A616 (in mbedtls_ssl_handshake)
;;     2305A646 (in mbedtls_ssl_handshake)
;;     2305A708 (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A750 (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A7AE (in mbedtls_ssl_handshake_wrapup)
;;     2305A7F2 (in mbedtls_ssl_handshake_wrapup)
;;     2305A824 (in mbedtls_ssl_handshake_wrapup)
;;     2305A84E (in mbedtls_ssl_handshake_wrapup)
;;     2305A8C0 (in ssl_handshake_init)
;;     2305AA5C (in mbedtls_ssl_setup)
;;     2305AAA4 (in mbedtls_ssl_free)
;;     2305AB4A (in mbedtls_ssl_free)
;;     2305ADBE (in mbedtls_ssl_write_record)
;;     2305AE0A (in mbedtls_ssl_write_record)
;;     2305AF08 (in mbedtls_ssl_write_record)
;;     2305AF68 (in mbedtls_ssl_write_record)
;;     2305AFE8 (in mbedtls_ssl_write_record)
;;     2305B00A (in mbedtls_ssl_write_record)
;;     2305B1FE (in mbedtls_ssl_write_record)
;;     2305B326 (in mbedtls_ssl_write_record)
;;     2305B3C4 (in mbedtls_ssl_write_record)
;;     2305B434 (in mbedtls_ssl_write_record)
;;     2305B48E (in mbedtls_ssl_write_record)
;;     2305B4C2 (in mbedtls_ssl_resend)
;;     2305B4E6 (in mbedtls_ssl_resend)
;;     2305B534 (in mbedtls_ssl_resend)
;;     2305B60E (in mbedtls_ssl_fetch_input)
;;     2305B632 (in mbedtls_ssl_fetch_input)
;;     2305B6C4 (in mbedtls_ssl_fetch_input)
;;     2305B6EA (in mbedtls_ssl_fetch_input)
;;     2305B718 (in mbedtls_ssl_fetch_input)
;;     2305B736 (in mbedtls_ssl_fetch_input)
;;     2305B76C (in mbedtls_ssl_fetch_input)
;;     2305B7BE (in mbedtls_ssl_fetch_input)
;;     2305B848 (in mbedtls_ssl_fetch_input)
;;     2305B876 (in mbedtls_ssl_fetch_input)
;;     2305B8C2 (in mbedtls_ssl_fetch_input)
;;     2305B90E (in mbedtls_ssl_fetch_input)
;;     2305B98A (in mbedtls_ssl_prepare_handshake_record)
;;     2305B9E4 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BA44 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BA86 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BAB2 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BAD8 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BB3E (in mbedtls_ssl_prepare_handshake_record)
;;     2305BB9A (in mbedtls_ssl_prepare_handshake_record)
;;     2305BC24 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BC48 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BC78 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BC98 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BD00 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BDFC (in mbedtls_ssl_prepare_handshake_record)
;;     2305BE68 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BE8A (in mbedtls_ssl_prepare_handshake_record)
;;     2305BEEA (in mbedtls_ssl_handle_message_type)
;;     2305BF12 (in mbedtls_ssl_handle_message_type)
;;     2305BF3E (in mbedtls_ssl_handle_message_type)
;;     2305BF66 (in mbedtls_ssl_handle_message_type)
;;     2305BFA6 (in mbedtls_ssl_send_alert_message)
;;     2305C010 (in mbedtls_ssl_send_alert_message)
;;     2305C056 (in mbedtls_ssl_close_notify)
;;     2305C0CE (in mbedtls_ssl_close_notify)
;;     2305C10A (in mbedtls_ssl_write_certificate)
;;     2305C140 (in mbedtls_ssl_write_certificate)
;;     2305C182 (in mbedtls_ssl_write_certificate)
;;     2305C1AE (in mbedtls_ssl_write_certificate)
;;     2305C27C (in mbedtls_ssl_write_certificate)
;;     2305C2DA (in mbedtls_ssl_write_certificate)
;;     2305C306 (in mbedtls_ssl_write_change_cipher_spec)
;;     2305C36C (in mbedtls_ssl_write_change_cipher_spec)
;;     2305C396 (in mbedtls_ssl_write_finished)
;;     2305C420 (in mbedtls_ssl_write_finished)
;;     2305C490 (in mbedtls_ssl_write_finished)
;;     2305C50E (in mbedtls_ssl_write_finished)
;;     2305C544 (in mbedtls_ssl_write)
;;     2305C5C6 (in mbedtls_ssl_write)
;;     2305C5E4 (in mbedtls_ssl_write)
;;     2305C7E4 (in mbedtls_ssl_read_record_layer)
;;     2305C808 (in mbedtls_ssl_read_record_layer)
;;     2305C854 (in mbedtls_ssl_read_record_layer)
;;     2305C876 (in mbedtls_ssl_read_record_layer)
;;     2305C950 (in mbedtls_ssl_read_record_layer)
;;     2305C996 (in mbedtls_ssl_read_record_layer)
;;     2305CA2E (in mbedtls_ssl_read_record_layer)
;;     2305CA4E (in mbedtls_ssl_read_record_layer)
;;     2305CA8E (in mbedtls_ssl_read_record_layer)
;;     2305CAD4 (in mbedtls_ssl_read_record_layer)
;;     2305CD68 (in mbedtls_ssl_read_record_layer)
;;     2305CF9C (in mbedtls_ssl_read_record_layer)
;;     2305CFD8 (in mbedtls_ssl_read_record_layer)
;;     2305D02C (in mbedtls_ssl_read_record_layer)
;;     2305D07C (in mbedtls_ssl_read_record_layer)
;;     2305D0DC (in mbedtls_ssl_read_record)
;;     2305D15A (in mbedtls_ssl_read_record)
;;     2305D198 (in mbedtls_ssl_parse_certificate)
;;     2305D1D4 (in mbedtls_ssl_parse_certificate)
;;     2305D2BA (in mbedtls_ssl_parse_certificate)
;;     2305D2FA (in mbedtls_ssl_parse_certificate)
;;     2305D35A (in mbedtls_ssl_parse_certificate)
;;     2305D3CE (in mbedtls_ssl_parse_certificate)
;;     2305D494 (in mbedtls_ssl_parse_certificate)
;;     2305D4D2 (in mbedtls_ssl_parse_certificate)
;;     2305D4FC (in mbedtls_ssl_parse_certificate)
;;     2305D58E (in mbedtls_ssl_parse_certificate)
;;     2305D5C0 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D618 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D64E (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D66C (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D6A8 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D6EE (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D71C (in mbedtls_ssl_parse_finished)
;;     2305D78A (in mbedtls_ssl_parse_finished)
;;     2305D7DE (in mbedtls_ssl_parse_finished)
;;     2305D85C (in mbedtls_ssl_parse_finished)
;;     2305D89E (in mbedtls_ssl_read)
;;     2305D9BA (in mbedtls_ssl_read)
;;     2305D9E2 (in mbedtls_ssl_read)
;;     2305DA38 (in mbedtls_ssl_read)
;;     230689EC (in mbedtls_ssl_handshake_client_step)
;;     23068A96 (in mbedtls_ssl_handshake_client_step)
;;     23068AB8 (in mbedtls_ssl_handshake_client_step)
;;     23068AEC (in mbedtls_ssl_handshake_client_step)
;;     23068B2A (in mbedtls_ssl_handshake_client_step)
;;     23068BF2 (in mbedtls_ssl_handshake_client_step)
;;     23068C40 (in mbedtls_ssl_handshake_client_step)
;;     23068C9E (in mbedtls_ssl_handshake_client_step)
;;     23068CB8 (in mbedtls_ssl_handshake_client_step)
;;     23068CD2 (in mbedtls_ssl_handshake_client_step)
;;     23068D0C (in mbedtls_ssl_handshake_client_step)
;;     23068D3E (in mbedtls_ssl_handshake_client_step)
;;     23068D6C (in mbedtls_ssl_handshake_client_step)
;;     23068EB4 (in mbedtls_ssl_handshake_client_step)
;;     23068F38 (in mbedtls_ssl_handshake_client_step)
;;     23068F72 (in mbedtls_ssl_handshake_client_step)
;;     23068F98 (in mbedtls_ssl_handshake_client_step)
;;     23068FC2 (in mbedtls_ssl_handshake_client_step)
;;     23069002 (in mbedtls_ssl_handshake_client_step)
;;     23069044 (in mbedtls_ssl_handshake_client_step)
;;     2306906C (in mbedtls_ssl_handshake_client_step)
;;     2306908A (in mbedtls_ssl_handshake_client_step)
;;     230691E8 (in mbedtls_ssl_handshake_client_step)
;;     23069216 (in mbedtls_ssl_handshake_client_step)
;;     23069672 (in mbedtls_ssl_handshake_client_step)
;;     2306A472 (in mbedtls_ssl_handshake_server_step)
;;     2306A50A (in mbedtls_ssl_handshake_server_step)
;;     2306A57C (in mbedtls_ssl_handshake_server_step)
;;     2306A59E (in mbedtls_ssl_handshake_server_step)
;;     2306A5DA (in mbedtls_ssl_handshake_server_step)
;;     2306A5FA (in mbedtls_ssl_handshake_server_step)
;;     2306A748 (in mbedtls_ssl_handshake_server_step)
;;     2306A78C (in mbedtls_ssl_handshake_server_step)
;;     2306A81E (in mbedtls_ssl_handshake_server_step)
;;     2306A8E8 (in mbedtls_ssl_handshake_server_step)
;;     2306AA2C (in mbedtls_ssl_handshake_server_step)
;;     2306AB96 (in mbedtls_ssl_handshake_server_step)
;;     2306ABD2 (in mbedtls_ssl_handshake_server_step)
;;     2306AC7E (in mbedtls_ssl_handshake_server_step)
;;     2306ACE0 (in mbedtls_ssl_handshake_server_step)
;;     2306AD00 (in mbedtls_ssl_handshake_server_step)
;;     2306ADE6 (in mbedtls_ssl_handshake_server_step)
;;     2306AE0A (in mbedtls_ssl_handshake_server_step)
;;     2306AE38 (in mbedtls_ssl_handshake_server_step)
;;     2306AE94 (in mbedtls_ssl_handshake_server_step)
;;     2306AEE2 (in mbedtls_ssl_handshake_server_step)
;;     2306AF02 (in mbedtls_ssl_handshake_server_step)
;;     2306AF42 (in mbedtls_ssl_handshake_server_step)
;;     2306AF7C (in mbedtls_ssl_handshake_server_step)
;;     2306B034 (in mbedtls_ssl_handshake_server_step)
;;     2306B10C (in mbedtls_ssl_handshake_server_step)
;;     2306B12C (in mbedtls_ssl_handshake_server_step)
;;     2306B154 (in mbedtls_ssl_handshake_server_step)
;;     2306B1B0 (in mbedtls_ssl_handshake_server_step)
;;     2306B1CE (in mbedtls_ssl_handshake_server_step)
;;     2306B21C (in mbedtls_ssl_handshake_server_step)
;;     2306B26C (in mbedtls_ssl_handshake_server_step)
;;     2306B2B0 (in mbedtls_ssl_handshake_server_step)
;;     2306B316 (in mbedtls_ssl_handshake_server_step)
;;     2306C07C (in mbedtls_ssl_handshake_server_step)
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
	c.beqz	a0,0000000023063042

l23062FF2:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023063042

l23062FF6:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023063042

l23062FFA:
	lui	a5,0004200E
	lw	a5,a5,-00000684
	blt	a5,a1,0000000023063042

l23063006:
	c.mv	s2,a2
	c.mv	s3,a3
	c.mv	a2,a4
	c.addi4spn	a3,00000234
	c.mv	s1,a1
	c.mv	s0,a0
	addi	a1,zero,+00000200
	c.addi4spn	a0,00000010
	c.swsp	a3,00000084
	jal	ra,0000000023051BA2
	addi	a5,zero,+000001FE
	bltu	a5,a0,0000000023063034

l23063026:
	c.addi4spn	a5,00000210
	c.add	a0,a5
	c.li	a5,0000000A
	sb	a5,a0,+00000E00
	sb	zero,a0,+00000E01

l23063034:
	c.lw	s0,0(a0)
	c.addi4spn	a4,00000010
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023062E12

l23063042:
	lw	ra,sp,+0000022C
	lw	s0,sp,+00000228
	lw	s1,sp,+00000224
	lw	s2,sp,+00000220
	lw	s3,sp,+0000021C
	addi	sp,sp,+00000240
	c.jr	ra

;; mbedtls_debug_print_ret: 2306305C
;;   Called from:
;;     23059D4A (in mbedtls_ssl_derive_keys)
;;     2305A07A (in mbedtls_ssl_derive_keys)
;;     2305A0A4 (in mbedtls_ssl_derive_keys)
;;     2305A220 (in mbedtls_ssl_flush_output)
;;     2305AF28 (in mbedtls_ssl_write_record)
;;     2305B242 (in mbedtls_ssl_write_record)
;;     2305B25E (in mbedtls_ssl_write_record)
;;     2305B5AC (in mbedtls_ssl_resend)
;;     2305B7EA (in mbedtls_ssl_fetch_input)
;;     2305B89C (in mbedtls_ssl_fetch_input)
;;     2305B922 (in mbedtls_ssl_fetch_input)
;;     2305BA68 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BFE6 (in mbedtls_ssl_send_alert_message)
;;     2305C0A2 (in mbedtls_ssl_close_notify)
;;     2305C24A (in mbedtls_ssl_write_certificate)
;;     2305C344 (in mbedtls_ssl_write_change_cipher_spec)
;;     2305C4F2 (in mbedtls_ssl_write_finished)
;;     2305C57C (in mbedtls_ssl_write)
;;     2305C614 (in mbedtls_ssl_write)
;;     2305C762 (in mbedtls_ssl_read_record_layer)
;;     2305CBD6 (in mbedtls_ssl_read_record_layer)
;;     2305CE10 (in mbedtls_ssl_read_record_layer)
;;     2305CE2E (in mbedtls_ssl_read_record_layer)
;;     2305D102 (in mbedtls_ssl_read_record)
;;     2305D26A (in mbedtls_ssl_parse_certificate)
;;     2305D458 (in mbedtls_ssl_parse_certificate)
;;     2305D5E4 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D756 (in mbedtls_ssl_parse_finished)
;;     2305D8E0 (in mbedtls_ssl_read)
;;     230690F6 (in mbedtls_ssl_handshake_client_step)
;;     2306A530 (in mbedtls_ssl_handshake_server_step)
;;     2306ADB4 (in mbedtls_ssl_handshake_server_step)
;;     2306AFE6 (in mbedtls_ssl_handshake_server_step)
mbedtls_debug_print_ret proc
	addi	sp,sp,-00000220
	sw	s3,sp,+0000020C
	sw	ra,sp,+0000021C
	sw	s0,sp,+00000218
	sw	s1,sp,+00000214
	sw	s2,sp,+00000210
	c.mv	s3,a3
	c.lw	a0,0(a3)
	c.beqz	a3,00000000230630C4

l2306307A:
	c.lw	a3,16(a3)
	c.beqz	a3,00000000230630C4

l2306307E:
	lui	a3,0004200E
	lw	a3,a3,-00000684
	blt	a3,a1,00000000230630C4

l2306308A:
	c.lui	a3,FFFF9000
	addi	a3,a3,+00000700
	beq	a5,a3,00000000230630C4

l23063094:
	c.mv	a6,a5
	c.mv	s2,a2
	lui	a2,0002308B
	c.mv	a3,a4
	c.mv	s1,a1
	c.mv	s0,a0
	c.mv	a4,a6
	addi	a2,a2,+00000084
	addi	a1,zero,+00000200
	sub	a5,zero,a5
	c.mv	a0,sp
	jal	ra,000000002305216A
	c.lw	s0,0(a0)
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023062E12

l230630C4:
	lw	ra,sp,+0000021C
	lw	s0,sp,+00000218
	lw	s1,sp,+00000214
	lw	s2,sp,+00000210
	lw	s3,sp,+0000020C
	addi	sp,sp,+00000220
	c.jr	ra

;; mbedtls_debug_print_buf: 230630DE
;;   Called from:
;;     23059804 (in ssl_calc_finished_tls_sha256)
;;     23059854 (in ssl_calc_finished_tls_sha256)
;;     230598FA (in ssl_calc_verify_tls_sha256)
;;     23059D0C (in mbedtls_ssl_derive_keys)
;;     23059DFE (in mbedtls_ssl_derive_keys)
;;     23059E1C (in mbedtls_ssl_derive_keys)
;;     23059E3A (in mbedtls_ssl_derive_keys)
;;     2305B044 (in mbedtls_ssl_write_record)
;;     2305B0E2 (in mbedtls_ssl_write_record)
;;     2305B160 (in mbedtls_ssl_write_record)
;;     2305B1CC (in mbedtls_ssl_write_record)
;;     2305B29C (in mbedtls_ssl_write_record)
;;     2305B45C (in mbedtls_ssl_write_record)
;;     2305B588 (in mbedtls_ssl_resend)
;;     2305BE42 (in mbedtls_ssl_prepare_handshake_record)
;;     2305C6FC (in mbedtls_ssl_read_record_layer)
;;     2305C78C (in mbedtls_ssl_read_record_layer)
;;     2305CA10 (in mbedtls_ssl_read_record_layer)
;;     2305CB38 (in mbedtls_ssl_read_record_layer)
;;     2305CB6E (in mbedtls_ssl_read_record_layer)
;;     2305CB94 (in mbedtls_ssl_read_record_layer)
;;     2305CC20 (in mbedtls_ssl_read_record_layer)
;;     2305CCFC (in mbedtls_ssl_read_record_layer)
;;     2305CD20 (in mbedtls_ssl_read_record_layer)
;;     2305CFBA (in mbedtls_ssl_read_record_layer)
;;     23068B7A (in mbedtls_ssl_handshake_client_step)
;;     23068C0E (in mbedtls_ssl_handshake_client_step)
;;     23068E46 (in mbedtls_ssl_handshake_client_step)
;;     2306A560 (in mbedtls_ssl_handshake_server_step)
;;     2306A6F4 (in mbedtls_ssl_handshake_server_step)
;;     2306A886 (in mbedtls_ssl_handshake_server_step)
;;     2306A93C (in mbedtls_ssl_handshake_server_step)
;;     2306A990 (in mbedtls_ssl_handshake_server_step)
;;     2306AA02 (in mbedtls_ssl_handshake_server_step)
;;     2306AA88 (in mbedtls_ssl_handshake_server_step)
;;     2306AADA (in mbedtls_ssl_handshake_server_step)
;;     2306AB64 (in mbedtls_ssl_handshake_server_step)
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
	c.beqz	a5,00000000230631C2

l2306311C:
	c.lw	a5,16(a5)
	c.beqz	a5,00000000230631C2

l23063120:
	lui	a5,0004200E
	lw	a5,a5,-00000684
	c.mv	s2,a1
	blt	a5,a1,00000000230631C2

l2306312E:
	c.mv	s4,a2
	lui	a2,0002308B
	c.mv	s1,a0
	c.mv	s5,a3
	addi	a2,a2,-00000018
	c.mv	a3,a4
	addi	a1,zero,+00000200
	c.mv	a4,a6
	c.addi4spn	a0,00000030
	c.mv	s0,a6
	jal	ra,000000002305216A
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023062E12
	c.li	a2,00000011
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023070EB8
	c.li	s7,00000000
	c.li	s8,00000000
	addi	s6,zero,+00000200
	lui	s9,0002308B
	lui	s10,00023081
	addi	s11,zero,+0000005E

l23063178:
	bne	s8,s0,00000000230631FC

l2306317C:
	c.beqz	s0,00000000230631C2

l2306317E:
	addi	s3,zero,+00000200
	lui	s6,00023088

l23063186:
	c.addi4spn	a5,00000030
	andi	a4,s0,+0000000F
	add	a0,a5,s7
	sub	a1,s3,s7
	bne	a4,zero,0000000023063298

l23063198:
	c.addi4spn	a5,00000030
	lui	a2,0002308B
	addi	a1,zero,+00000200
	c.addi4spn	a3,0000001C
	addi	a2,a2,+00000004
	sub	a1,a1,s7
	add	a0,a5,s7
	jal	ra,000000002305216A
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023062E12

l230631C2:
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

l230631FC:
	c.lui	a5,00001000
	beq	s8,a5,0000000023063198

l23063202:
	andi	s3,s8,+0000000F
	bne	s3,zero,0000000023063256

l2306320A:
	beq	s8,zero,000000002306323C

l2306320E:
	c.addi4spn	a5,00000030
	add	a0,a5,s7
	sub	a1,s6,s7
	c.addi4spn	a3,0000001C
	addi	a2,s9,+00000004
	jal	ra,000000002305216A
	c.lw	s1,0(a0)
	c.addi4spn	a4,00000030
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,0000000023062E12
	c.li	a2,00000011
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023070EB8
	c.li	s7,00000000

l2306323C:
	lui	a5,0002308B
	addi	a2,a5,+0000000C
	c.addi4spn	a5,00000030
	sub	a1,s6,s7
	add	a0,a5,s7
	c.mv	a3,s8
	jal	ra,000000002305216A
	c.add	s7,a0

l23063256:
	c.lwsp	s0,000000E4
	sub	a1,s6,s7
	addi	a2,s10,+0000063C
	add	a4,a5,s8
	lbu	a3,a4,+00000000
	c.addi4spn	a5,00000030
	add	a0,a5,s7
	c.swsp	a4,00000084
	jal	ra,000000002305216A
	c.lwsp	a2,000000C4
	c.add	s7,a0
	lbu	a4,a4,+00000000
	addi	a3,a4,-00000020
	andi	a3,a3,+000000FF
	bgeu	s11,a3,000000002306328C

l23063288:
	addi	a4,zero,+0000002E

l2306328C:
	c.addi4spn	a5,00000230
	c.add	s3,a5
	sb	a4,s3,+00000DEC
	c.addi	s8,00000001
	c.j	0000000023063178

l23063298:
	addi	a2,s6,-0000072C
	jal	ra,000000002305216A
	c.add	s7,a0
	c.addi	s0,00000001
	c.j	0000000023063186

;; mbedtls_debug_print_mpi: 230632A6
;;   Called from:
;;     23063316 (in mbedtls_debug_print_ecp.part.2)
;;     2306333C (in mbedtls_debug_print_ecp.part.2)
;;     23063516 (in mbedtls_debug_print_crt)
mbedtls_debug_print_mpi proc
	lw	a6,a0,+00000000
	beq	a6,zero,00000000230632C8

l230632AE:
	lw	a6,a6,+00000010
	beq	a6,zero,00000000230632C8

l230632B6:
	c.beqz	a5,00000000230632C8

l230632B8:
	lui	a6,0004200E
	lw	a6,a6,-00000684
	blt	a6,a1,00000000230632C8

l230632C4:
	jal	zero,0000000023062E1A

l230632C8:
	c.jr	ra

;; mbedtls_debug_print_ecp.part.2: 230632CA
;;   Called from:
;;     2306337E (in mbedtls_debug_print_ecp)
mbedtls_debug_print_ecp.part.2 proc
	addi	sp,sp,-00000220
	sw	s2,sp,+00000210
	c.mv	s2,a2
	lui	a2,0002308B
	sw	s0,sp,+00000218
	sw	s1,sp,+00000214
	sw	s3,sp,+0000020C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s3,a3
	addi	a2,a2,+00000050
	c.mv	a3,a4
	addi	a1,zero,+00000200
	c.mv	a0,sp
	sw	ra,sp,+0000021C
	sw	s4,sp,+00000208
	sw	s5,sp,+00000204
	c.mv	s4,a5
	c.mv	s5,a4
	jal	ra,000000002305216A
	c.mv	a5,s4
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230632A6
	lui	a2,0002308B
	c.mv	a3,s5
	addi	a2,a2,+00000058
	addi	a1,zero,+00000200
	c.mv	a0,sp
	jal	ra,000000002305216A
	addi	a5,s4,+0000000C
	c.mv	a4,sp
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230632A6
	lw	ra,sp,+0000021C
	lw	s0,sp,+00000218
	lw	s1,sp,+00000214
	lw	s2,sp,+00000210
	lw	s3,sp,+0000020C
	lw	s4,sp,+00000208
	lw	s5,sp,+00000204
	addi	sp,sp,+00000220
	c.jr	ra

;; mbedtls_debug_print_ecp: 23063362
;;   Called from:
;;     23063538 (in mbedtls_debug_print_crt)
mbedtls_debug_print_ecp proc
	lw	a6,a0,+00000000
	beq	a6,zero,0000000023063382

l2306336A:
	lw	a6,a6,+00000010
	beq	a6,zero,0000000023063382

l23063372:
	lui	a6,0004200E
	lw	a6,a6,-00000684
	blt	a6,a1,0000000023063382

l2306337E:
	jal	zero,00000000230632CA

l23063382:
	c.jr	ra

;; mbedtls_debug_print_crt: 23063384
;;   Called from:
;;     2305C1D6 (in mbedtls_ssl_write_certificate)
;;     2305D40E (in mbedtls_ssl_parse_certificate)
;;     2306B1F8 (in mbedtls_ssl_handshake_server_step)
;;     2306B252 (in mbedtls_ssl_handshake_server_step)
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
	c.beqz	a5,000000002306345E

l230633AC:
	c.lw	a5,16(a5)
	c.beqz	a5,000000002306345E

l230633B0:
	beq	s2,zero,000000002306345E

l230633B4:
	lui	a5,0004200E
	lw	a5,a5,-00000684
	c.mv	s1,a1
	c.li	s6,00000000
	blt	a5,a1,000000002306345E

l230633C4:
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

l230633DC:
	c.lwsp	a2,000000A4
	c.addi	s6,00000001
	lui	a2,0002308B
	c.mv	a4,s6
	addi	a2,a2,+00000014
	addi	a1,zero,+00000200
	c.addi4spn	a0,00000020
	jal	ra,000000002305216A
	c.lw	s0,0(a0)
	c.addi4spn	a4,00000020
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023062E12
	lui	a2,00023089
	addi	a2,a2,-000001A0
	addi	a1,zero,+000003FF
	c.mv	a3,s2
	addi	a0,sp,+00000420
	jal	ra,000000002305DC34
	addi	a2,sp,+00000420
	c.mv	a1,a2
	c.li	s11,0000000A
	addi	s8,zero,+000001FF

l23063424:
	lbu	a5,a2,+00000000
	c.bnez	a5,0000000023063480

l2306342A:
	c.li	a1,00000000
	addi	a2,zero,+00000024
	c.addi4spn	a0,00000220
	jal	ra,0000000023070EB8
	c.addi4spn	a1,00000220
	addi	a0,s2,+000000BC
	jal	ra,0000000023056776
	c.beqz	a0,00000000230634C2

l23063442:
	c.lw	s0,0(a0)
	lui	a4,0002308B
	addi	a4,a4,+00000020
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023062E12

l23063456:
	lw	s2,s2,+00000130
	bne	s2,zero,00000000230633DC

l2306345E:
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

l23063480:
	addi	s10,a2,+00000001
	bne	a5,s11,00000000230634BE

l23063488:
	c.sub	a2,a1
	addi	s9,a2,+00000001
	bgeu	s8,s9,0000000023063496

l23063492:
	addi	s9,zero,+000001FF

l23063496:
	c.mv	a2,s9
	c.addi4spn	a0,00000220
	jal	ra,0000000023070C7C
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
	jal	ra,0000000023062E12
	c.mv	a1,s10

l230634BE:
	c.mv	a2,s10
	c.j	0000000023063424

l230634C2:
	c.lui	a5,00001000
	addi	a5,a5,-000007F0
	c.addi4spn	a4,00000010
	c.add	a5,a4
	addi	s8,sp,+00000220
	add	s9,a5,s7
	c.li	s10,00000001
	lui	s11,0002308B

l230634DA:
	lbu	a5,s8,+00000000
	c.beqz	a5,0000000023063456

l230634E0:
	lui	a5,0002308B
	lw	a4,s8,+00000004
	addi	a3,a5,+00000034
	lui	a5,00023081
	addi	a2,a5,+000002A8
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,000000002305216A
	lbu	a5,s8,+00000000
	sb	zero,s9,+000007FF
	bne	a5,s10,0000000023063524

l23063508:
	lw	a5,s8,+00000008
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230632A6

l2306351A:
	c.addi	s8,0000000C
	c.addi4spn	a5,00000244
	bne	s8,a5,00000000230634DA

l23063522:
	c.j	0000000023063456

l23063524:
	c.li	a4,00000002
	bne	a5,a4,000000002306353E

l2306352A:
	lw	a5,s8,+00000008
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023063362
	c.j	000000002306351A

l2306353E:
	c.lw	s0,0(a0)
	addi	a4,s11,+0000003C
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023062E12
	c.j	000000002306351A

;; ecp_get_type: 23063550
;;   Called from:
;;     23064942 (in mbedtls_ecp_check_pubkey)
;;     23064AA6 (in mbedtls_ecp_check_privkey)
;;     23064B2A (in mbedtls_ecp_mul)
ecp_get_type proc
	c.lw	a0,48(a5)
	c.beqz	a5,000000002306355E

l23063554:
	c.lw	a0,60(a0)
	sltiu	a0,a0,+00000001
	c.addi	a0,00000001
	c.jr	ra

l2306355E:
	c.li	a0,00000000
	c.jr	ra

;; ecp_safe_invert_jac: 23063562
;;   Called from:
;;     23063632 (in ecp_select_comb)
;;     2306485A (in ecp_mul_comb)
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
	jal	ra,0000000023061008
	c.mv	a2,s0
	addi	a1,s1,+00000004
	c.addi4spn	a0,00000004
	jal	ra,000000002306196C
	c.bnez	a0,00000000230635A0

l23063588:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306178A
	sltu	a2,zero,a0
	and	a2,s2,a2
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230611B2

l230635A0:
	c.mv	s1,a0
	c.addi4spn	a0,00000004
	jal	ra,0000000023061018
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; ecp_select_comb: 230635B6
;;   Called from:
;;     2306468E (in ecp_mul_comb)
;;     2306482A (in ecp_mul_comb)
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

l230635E4:
	sub	s2,s4,s0
	sltiu	s2,s2,+00000001
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,00000000230611B2
	c.bnez	a0,0000000023063636

l230635F8:
	c.mv	a2,s2
	addi	a1,s1,+0000000C
	c.mv	a0,s8
	jal	ra,00000000230611B2
	c.bnez	a0,0000000023063636

l23063606:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	addi	s1,s1,+00000024
	bne	s7,s0,00000000230635E4

l23063614:
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
	jal	zero,0000000023063562

l23063636:
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

;; ecp_modp: 2306364E
;;   Called from:
;;     2306373C (in ecp_double_jac)
;;     230637C6 (in ecp_double_jac)
;;     230637FE (in ecp_double_jac)
;;     23063836 (in ecp_double_jac)
;;     2306386E (in ecp_double_jac)
;;     230638A6 (in ecp_double_jac)
;;     23063906 (in ecp_double_jac)
;;     2306393E (in ecp_double_jac)
;;     230639C6 (in ecp_double_jac)
;;     23063A16 (in ecp_double_jac)
;;     23063A34 (in ecp_double_jac)
;;     23063A52 (in ecp_double_jac)
;;     23063B7E (in ecp_normalize_jac)
;;     23063B98 (in ecp_normalize_jac)
;;     23063BB4 (in ecp_normalize_jac)
;;     23063BCE (in ecp_normalize_jac)
;;     23063C8C (in ecp_normalize_jac_many)
;;     23063D2A (in ecp_normalize_jac_many)
;;     23063D48 (in ecp_normalize_jac_many)
;;     23063D52 (in ecp_normalize_jac_many)
;;     23063D70 (in ecp_normalize_jac_many)
;;     23063D92 (in ecp_normalize_jac_many)
;;     23063DB6 (in ecp_normalize_jac_many)
;;     23064064 (in ecp_add_mixed)
;;     2306407E (in ecp_add_mixed)
;;     23064098 (in ecp_add_mixed)
;;     230640B4 (in ecp_add_mixed)
;;     230641A0 (in ecp_add_mixed)
;;     230641BE (in ecp_add_mixed)
;;     230641DC (in ecp_add_mixed)
;;     230641FA (in ecp_add_mixed)
;;     23064238 (in ecp_add_mixed)
;;     2306429A (in ecp_add_mixed)
;;     230642B8 (in ecp_add_mixed)
;;     2306470A (in ecp_mul_comb)
;;     23064726 (in ecp_mul_comb)
;;     23064740 (in ecp_mul_comb)
;;     2306475A (in ecp_mul_comb)
;;     23064778 (in ecp_mul_comb)
;;     230649AA (in mbedtls_ecp_check_pubkey)
;;     230649C4 (in mbedtls_ecp_check_pubkey)
;;     230649F6 (in mbedtls_ecp_check_pubkey)
ecp_modp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a1,100(a5)
	c.mv	s0,a0
	c.bnez	a5,0000000023063672

l2306365E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a2,a1,+00000004
	c.mv	a1,a0
	c.addi	sp,00000010
	jal	zero,0000000023061E3C

l23063672:
	c.lw	a0,0(a5)
	c.mv	s1,a1
	blt	a5,zero,000000002306369C

l2306367A:
	c.mv	a0,s0
	jal	ra,00000000230612E2
	c.lw	s1,88(a5)
	c.slli	a5,01
	bgeu	a5,a0,00000000230636A6

l23063688:
	c.lui	s2,FFFFB000
	addi	s2,s2,+00000080

l2306368E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306369C:
	c.li	a1,00000000
	jal	ra,000000002306178A
	c.beqz	a0,000000002306367A

l230636A4:
	c.j	0000000023063688

l230636A6:
	c.lw	s1,100(a5)
	c.mv	a0,s0
	c.addi	s1,00000004
	c.jalr	a5
	c.mv	s2,a0
	c.bnez	a0,000000002306368E

l230636B2:
	c.lw	s0,0(a5)
	bge	a5,zero,00000000230636C2

l230636B8:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306178A
	c.bnez	a0,00000000230636DC

l230636C2:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230616FE
	blt	a0,zero,000000002306368E

l230636CE:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023061886
	c.beqz	a0,00000000230636C2

l230636DA:
	c.j	00000000230636E8

l230636DC:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002306190E
	c.beqz	a0,00000000230636B2

l230636E8:
	c.mv	s2,a0
	c.j	000000002306368E

;; ecp_double_jac: 230636EC
;;   Called from:
;;     23064330 (in ecp_add_mixed)
;;     23064574 (in ecp_mul_comb)
;;     23064814 (in ecp_mul_comb)
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
	jal	ra,0000000023061008
	c.mv	a0,s1
	jal	ra,0000000023061008
	c.addi4spn	a0,00000018
	jal	ra,0000000023061008
	c.addi4spn	a0,00000024
	jal	ra,0000000023061008
	lw	a5,s2,+00000018
	bne	a5,zero,00000000230639B2

l23063728:
	addi	a2,s4,+00000018
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l23063738:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l23063744:
	c.mv	a2,s1
	c.mv	a1,s4
	c.addi4spn	a0,00000018
	jal	ra,000000002306190E
	c.mv	s0,a0
	addi	s3,s2,+00000004
	c.beqz	a0,0000000023063794

l23063756:
	c.mv	a0,sp
	jal	ra,0000000023061018
	c.mv	a0,s1
	jal	ra,0000000023061018
	c.addi4spn	a0,00000018
	jal	ra,0000000023061018
	c.addi4spn	a0,00000024
	jal	ra,0000000023061018
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

l23063786:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l23063794:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063786

l230637A0:
	c.mv	a2,s1
	c.mv	a1,s4
	c.addi4spn	a0,00000024
	jal	ra,000000002306196C

l230637AA:
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l230637AE:
	c.lwsp	tp,000001F4
	blt	a5,zero,000000002306398E

l230637B4:
	c.addi4spn	a2,00000024
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l230637C2:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l230637CE:
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023061ADE

l230637D8:
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l230637DC:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,00000000230616FE
	bge	a0,zero,00000000230639A6

l230637E8:
	addi	s6,s4,+0000000C
	c.mv	a2,s6
	c.mv	a1,s6
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l230637FA:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063756

l23063806:
	c.li	a1,00000001
	c.addi4spn	a0,00000018
	jal	ra,000000002306141E
	c.mv	s0,a0
	addi	s3,s2,+00000004
	c.bnez	a0,0000000023063756

l23063816:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063A94

l23063822:
	c.addi4spn	a2,00000018
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063832:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063840:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306141E

l23063848:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l2306384E:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063AA6

l2306385A:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l2306386A:
	c.mv	a1,s2
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063878:
	c.li	a1,00000001
	c.addi4spn	a0,00000024
	jal	ra,000000002306141E

l23063880:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063886:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063AB2

l23063892:
	c.mv	a2,sp
	c.mv	a1,sp
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230638A2:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230638B0:
	c.addi4spn	a1,00000018
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,000000002306196C

l230638BA:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230638C0:
	c.lwsp	s8,000000E4
	blt	a5,zero,0000000023063ABE

l230638C6:
	c.addi4spn	a1,00000018
	c.mv	a2,s1
	c.mv	a0,a1
	jal	ra,000000002306196C

l230638D0:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230638D6:
	c.lwsp	s8,000000E4
	blt	a5,zero,0000000023063AD6

l230638DC:
	c.addi4spn	a2,00000018
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002306196C

l230638E6:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230638EC:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023063AEE

l230638F2:
	c.mv	a2,sp
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063902:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063910:
	c.addi4spn	a2,00000024
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.mv	s7,s1
	bne	a0,zero,0000000023063756

l23063922:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023063B06

l23063928:
	addi	a2,s4,+00000018
	c.mv	a1,s6
	c.addi4spn	a0,00000024
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l2306393A:
	c.mv	a1,s2
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063948:
	c.li	a1,00000001
	c.addi4spn	a0,00000024
	jal	ra,000000002306141E

l23063950:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063956:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063B24

l23063962:
	c.addi4spn	a1,00000018
	c.mv	a0,s5
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063970:
	c.addi4spn	a1,0000000C
	addi	a0,s5,+0000000C
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063980:
	c.addi4spn	a1,00000024
	addi	a0,s5,+00000018
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.j	0000000023063756

l2306398E:
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,000000002306178A
	beq	a0,zero,00000000230637B4

l2306399A:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	00000000230637AA

l230639A6:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023061886
	c.j	00000000230637D8

l230639B2:
	c.mv	a2,s4
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230639C2:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l230639D0:
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023061ADE
	c.mv	s0,a0
	addi	s3,s2,+00000004
	bne	a0,zero,0000000023063756

l230639E4:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023063A84

l230639F0:
	addi	s6,s2,+00000010
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,000000002306178A
	beq	a0,zero,00000000230637E8

l23063A00:
	addi	a2,s4,+00000018
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A12:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A20:
	c.mv	a2,s1
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A30:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A3E:
	c.mv	a2,s6
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A4E:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A5C:
	c.mv	a2,s1
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,000000002306190E

l23063A66:
	c.mv	s0,a0
	bne	a0,zero,0000000023063756

l23063A6C:
	c.mv	a1,s3
	c.mv	a0,sp
	jal	ra,00000000230616FE
	blt	a0,zero,00000000230637E8

l23063A78:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023061886
	c.j	0000000023063A66

l23063A84:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023061886
	c.mv	s0,a0
	c.beqz	a0,00000000230639E4

l23063A92:
	c.j	0000000023063756

l23063A94:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.mv	s0,a0
	beq	a0,zero,0000000023063816

l23063AA4:
	c.j	0000000023063756

l23063AA6:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,0000000023061886
	c.j	0000000023063848

l23063AB2:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.j	0000000023063880

l23063ABE:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,000000002306178A
	beq	a0,zero,00000000230638C6

l23063ACA:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	00000000230638BA

l23063AD6:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,000000002306178A
	beq	a0,zero,00000000230638DC

l23063AE2:
	c.addi4spn	a1,00000018
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	00000000230638D0

l23063AEE:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306178A
	beq	a0,zero,00000000230638F2

l23063AFA:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,000000002306190E
	c.j	00000000230638E6

l23063B06:
	c.li	a1,00000000
	c.mv	a0,s7
	jal	ra,000000002306178A
	beq	a0,zero,0000000023063928

l23063B12:
	c.mv	a2,s3
	c.mv	a1,s7
	c.mv	a0,s7
	jal	ra,000000002306190E
	c.mv	s0,a0
	beq	a0,zero,0000000023063922

l23063B22:
	c.j	0000000023063756

l23063B24:
	c.addi4spn	a1,00000024
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.j	0000000023063950

;; ecp_normalize_jac: 23063B30
;;   Called from:
;;     23063C1A (in ecp_normalize_jac_many)
;;     23064868 (in ecp_mul_comb)
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
	jal	ra,000000002306178A
	c.mv	s0,a0
	c.beqz	a0,0000000023063BEC

l23063B50:
	c.addi4spn	a0,00000008
	jal	ra,0000000023061008
	c.addi4spn	a0,00000014
	jal	ra,0000000023061008
	addi	a2,s2,+00000004
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,0000000023062424
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063B6C:
	c.addi4spn	a2,00000008
	c.mv	a1,a2
	c.addi4spn	a0,00000014
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063B7A:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063B86:
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063B94:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063BA0:
	c.addi	s1,0000000C
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063BB0:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063BBC:
	c.addi4spn	a2,00000008
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063BCA:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063BE0

l23063BD6:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023061238
	c.mv	s0,a0

l23063BE0:
	c.addi4spn	a0,00000008
	jal	ra,0000000023061018
	c.addi4spn	a0,00000014
	jal	ra,0000000023061018

l23063BEC:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; ecp_normalize_jac_many: 23063BFC
;;   Called from:
;;     230644A0 (in ecp_mul_comb)
;;     23064602 (in ecp_mul_comb)
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
	bltu	a5,a2,0000000023063C38

l23063C18:
	c.lw	a1,0(a1)
	jal	ra,0000000023063B30
	c.mv	s0,a0

l23063C20:
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

l23063C38:
	c.mv	s3,a0
	c.li	a1,0000000C
	c.mv	a0,a2
	c.mv	s2,a2
	jal	ra,000000002305F67C
	c.mv	s4,a0
	beq	a0,zero,0000000023063DFA

l23063C4A:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061008
	c.addi4spn	a0,00000018
	jal	ra,0000000023061008
	c.addi4spn	a0,00000024
	jal	ra,0000000023061008
	c.lw	s1,0(a1)
	c.mv	a0,s4
	c.addi	a1,00000018
	jal	ra,0000000023061142
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063C6A:
	addi	s6,s4,+0000000C
	c.li	s5,00000001

l23063C70:
	slli	a5,s5,00000002
	c.add	a5,s1
	c.lw	a5,0(a2)
	addi	a1,s6,-0000000C
	c.mv	a0,s6
	c.addi	a2,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063C88:
	c.mv	a1,s3
	c.mv	a0,s6
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063C94:
	addi	a5,s5,+00000001
	c.addi	s6,0000000C
	bne	s2,a5,0000000023063D10

l23063C9E:
	c.li	a1,0000000C
	add	a1,s2,a1
	addi	a2,s3,+00000004
	c.addi4spn	a0,0000000C
	c.addi	a1,FFFFFFF4
	c.add	a1,s4
	jal	ra,0000000023062424
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063CB6:
	slli	a5,s2,00000002
	c.add	s1,a5
	addi	s6,s4,-0000000C
	c.li	s7,0000000C

l23063CC2:
	bne	s5,zero,0000000023063D14

l23063CC6:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023061142

l23063CCE:
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063CD2:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.beqz	a0,0000000023063D4E

l23063CE0:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000018
	jal	ra,0000000023061018
	c.addi4spn	a0,00000024
	jal	ra,0000000023061018
	c.li	a5,0000000C
	add	s2,s2,a5
	c.mv	s1,s4
	c.add	s2,s4

l23063CFC:
	c.mv	a0,s1
	c.addi	s1,0000000C
	jal	ra,0000000023061018
	bne	s2,s1,0000000023063CFC

l23063D08:
	c.mv	a0,s4
	jal	ra,0000000023032272
	c.j	0000000023063C20

l23063D10:
	c.mv	s5,a5
	c.j	0000000023063C70

l23063D14:
	add	a2,s5,s7
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	c.add	a2,s6
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D26:
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D32:
	lw	a2,s1,-00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,a1
	c.addi	a2,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D44:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,000000002306364E
	c.j	0000000023063CCE

l23063D4E:
	c.mv	a1,s3
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D5A:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000024
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D6A:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D78:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000024
	c.addi	a1,0000000C
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D8A:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	c.addi	a0,0000000C
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023063CE0

l23063D9A:
	lw	a1,s1,-00000004
	c.addi4spn	a2,00000018
	c.addi	a1,0000000C
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023063CE0

l23063DAE:
	lw	a0,s1,-00000004
	c.mv	a1,s3
	c.addi	a0,0000000C
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,0000000023063CE0

l23063DC0:
	lw	a1,s3,+00000008
	lw	a0,s1,-00000004
	jal	ra,00000000230610C2
	c.mv	s0,a0
	bne	a0,zero,0000000023063CE0

l23063DD2:
	lw	a0,s1,-00000004
	lw	a1,s3,+00000008
	c.addi	a0,0000000C
	jal	ra,00000000230610C2
	c.mv	s0,a0
	bne	a0,zero,0000000023063CE0

l23063DE6:
	lw	a0,s1,-00000004
	c.addi	s1,FFFFFFFC
	c.addi	a0,00000018
	jal	ra,0000000023061018
	beq	s5,zero,0000000023063CE0

l23063DF6:
	c.addi	s5,FFFFFFFF
	c.j	0000000023063CC2

l23063DFA:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000280
	c.j	0000000023063C20

;; mbedtls_ecp_point_init.part.2: 23063E02
;;   Called from:
;;     23063E8E (in mbedtls_ecp_point_init)
;;     2306467A (in ecp_mul_comb)
;;     23064BDC (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_point_init.part.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023061008
	addi	a0,s0,+0000000C
	jal	ra,0000000023061008
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023061008

;; mbedtls_ecp_point_free.part.4: 23063E24
;;   Called from:
;;     23063ECA (in mbedtls_ecp_point_free)
;;     2306484C (in ecp_mul_comb)
;;     23064C34 (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_point_free.part.4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023061018
	addi	a0,s0,+0000000C
	jal	ra,0000000023061018
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023061018

;; mbedtls_ecp_grp_id_list: 23063E46
;;   Called from:
;;     2305AC1A (in mbedtls_ssl_config_defaults)
mbedtls_ecp_grp_id_list proc
	lui	a5,0004200E
	lw	a3,a5,+00000018
	addi	a4,a5,+00000018
	lui	a0,0004200E
	c.beqz	a3,0000000023063E7C

l23063E58:
	addi	a0,a0,+00000014
	c.jr	ra

l23063E5E:
	add	a6,a3,a2
	sb	a1,a6,+00000000
	c.addi	a5,0000000C
	c.addi	a2,00000001

l23063E6A:
	lbu	a1,a5,+00000000
	c.bnez	a1,0000000023063E5E

l23063E70:
	c.add	a3,a2
	c.li	a5,00000001
	sb	zero,a3,+00000000
	c.sw	a4,0(a5)
	c.j	0000000023063E58

l23063E7C:
	lui	a5,0002308B
	c.li	a2,00000000
	addi	a5,a5,+000000A0
	addi	a3,a0,+00000014
	c.j	0000000023063E6A

;; mbedtls_ecp_point_init: 23063E8C
;;   Called from:
;;     23063EC2 (in mbedtls_ecp_keypair_init)
mbedtls_ecp_point_init proc
	c.beqz	a0,0000000023063E92

l23063E8E:
	jal	zero,0000000023063E02

l23063E92:
	c.jr	ra

;; mbedtls_ecp_group_init: 23063E94
;;   Called from:
;;     23063EAC (in mbedtls_ecp_keypair_init)
mbedtls_ecp_group_init proc
	c.beqz	a0,0000000023063EA0

l23063E96:
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	jal	zero,0000000023070EB8

l23063EA0:
	c.jr	ra

;; mbedtls_ecp_keypair_init: 23063EA2
;;   Called from:
;;     2305728C (in eckey_alloc_wrap)
mbedtls_ecp_keypair_init proc
	c.beqz	a0,0000000023063EC6

l23063EA4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023063E94
	addi	a0,s0,+0000007C
	jal	ra,0000000023061008
	addi	a0,s0,+00000088
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023063E8C

l23063EC6:
	c.jr	ra

;; mbedtls_ecp_point_free: 23063EC8
;;   Called from:
;;     23063F00 (in mbedtls_ecp_group_free)
;;     23063F32 (in mbedtls_ecp_group_free)
;;     23063F6E (in mbedtls_ecp_keypair_free)
;;     23064508 (in ecp_mul_comb)
;;     2306452A (in ecp_mul_comb)
mbedtls_ecp_point_free proc
	c.beqz	a0,0000000023063ECE

l23063ECA:
	jal	zero,0000000023063E24

l23063ECE:
	c.jr	ra

;; mbedtls_ecp_group_free: 23063ED0
;;   Called from:
;;     23063F58 (in mbedtls_ecp_keypair_free)
;;     23064C3A (in mbedtls_ecp_check_pub_priv)
;;     23064D60 (in mbedtls_ecp_group_load)
;;     23064EBE (in mbedtls_ecp_group_load)
mbedtls_ecp_group_free proc
	c.beqz	a0,0000000023063F4C

l23063ED2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,96(a4)
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a4,a5,0000000023063F0C

l23063EE6:
	c.addi	a0,00000004
	jal	ra,0000000023061018
	addi	a0,s0,+00000010
	jal	ra,0000000023061018
	addi	a0,s0,+0000001C
	jal	ra,0000000023061018
	addi	a0,s0,+00000028
	jal	ra,0000000023063EC8
	addi	a0,s0,+0000004C
	jal	ra,0000000023061018

l23063F0C:
	c.lw	s0,116(a5)
	c.li	s1,00000000
	addi	s2,zero,+00000024
	c.bnez	a5,0000000023063F36

l23063F16:
	addi	a5,s0,+0000007C

l23063F1A:
	bne	s0,a5,0000000023063F44

l23063F1E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23063F2A:
	add	a5,s1,s2
	c.addi	s1,00000001
	c.add	a0,a5
	jal	ra,0000000023063EC8

l23063F36:
	c.lw	s0,120(a5)
	c.lw	s0,116(a0)
	bltu	s1,a5,0000000023063F2A

l23063F3E:
	jal	ra,0000000023032272
	c.j	0000000023063F16

l23063F44:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023063F1A

l23063F4C:
	c.jr	ra

;; mbedtls_ecp_keypair_free: 23063F4E
;;   Called from:
;;     2305698C (in pk_parse_key_sec1_der)
;;     230569FE (in pk_parse_key_sec1_der)
;;     23057268 (in eckey_free_wrap)
mbedtls_ecp_keypair_free proc
	c.beqz	a0,0000000023063F72

l23063F50:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023063ED0
	addi	a0,s0,+0000007C
	jal	ra,0000000023061018
	addi	a0,s0,+00000088
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023063EC8

l23063F72:
	c.jr	ra

;; mbedtls_ecp_copy: 23063F74
;;   Called from:
;;     2306410C (in ecp_add_mixed)
;;     23064486 (in ecp_mul_comb)
;;     230644E8 (in ecp_mul_comb)
mbedtls_ecp_copy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023061142
	c.bnez	a0,0000000023063FA8

l23063F86:
	addi	a1,s1,+0000000C
	addi	a0,s0,+0000000C
	jal	ra,0000000023061142
	c.bnez	a0,0000000023063FA8

l23063F94:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,s1,+00000018
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023061142

l23063FA8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ecp_group_copy: 23063FB2
;;   Called from:
;;     23064BF0 (in mbedtls_ecp_check_pub_priv)
mbedtls_ecp_group_copy proc
	lbu	a1,a1,+00000000
	jal	zero,0000000023064D54

;; mbedtls_ecp_set_zero: 23063FBA
;;   Called from:
;;     2306433A (in ecp_add_mixed)
;;     230648B4 (in mbedtls_ecp_point_read_binary)
mbedtls_ecp_set_zero proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023061238
	c.bnez	a0,0000000023063FE6

l23063FCA:
	c.li	a1,00000001
	addi	a0,s0,+0000000C
	jal	ra,0000000023061238
	c.bnez	a0,0000000023063FE6

l23063FD6:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061238

l23063FE6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ecp_add_mixed: 23063FEE
;;   Called from:
;;     230645C0 (in ecp_mul_comb)
;;     23064838 (in ecp_mul_comb)
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
	jal	ra,000000002306178A
	c.mv	a1,s5
	beq	a0,zero,000000002306410A

l2306401C:
	lw	a5,s5,+00000020
	bne	a5,zero,00000000230640FA

l23064024:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061008
	c.addi4spn	a0,00000018
	jal	ra,0000000023061008
	c.addi4spn	a0,00000024
	jal	ra,0000000023061008
	c.addi4spn	a0,00000030
	jal	ra,0000000023061008
	addi	s3,sp,+0000003C
	c.mv	a0,s3
	jal	ra,0000000023061008
	c.addi4spn	a0,00000048
	jal	ra,0000000023061008
	c.addi4spn	a0,00000054
	jal	ra,0000000023061008
	c.mv	a2,s6
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l23064060:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l2306406C:
	c.mv	a2,s6
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l2306407A:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l23064086:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l23064094:
	c.mv	a1,s1
	c.addi4spn	a0,0000000C
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l230640A0:
	c.addi4spn	a1,00000018
	addi	a2,s5,+0000000C
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l230640B0:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l230640BC:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	addi	s5,s1,+00000004
	c.beqz	a0,000000002306415E

l230640CE:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000018
	jal	ra,0000000023061018
	c.addi4spn	a0,00000024
	jal	ra,0000000023061018
	c.addi4spn	a0,00000030
	jal	ra,0000000023061018
	c.mv	a0,s3
	jal	ra,0000000023061018
	c.addi4spn	a0,00000048
	jal	ra,0000000023061018
	c.addi4spn	a0,00000054
	jal	ra,0000000023061018
	c.j	0000000023064112

l230640FA:
	addi	s0,s5,+00000018
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306178A
	c.bnez	a0,000000002306412A

l23064108:
	c.mv	a1,s2

l2306410A:
	c.mv	a0,s4
	jal	ra,0000000023063F74
	c.mv	s0,a0

l23064112:
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

l2306412A:
	lw	a5,s5,+00000020
	beq	a5,zero,0000000023064024

l23064132:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306178A
	beq	a0,zero,0000000023064024

l2306413E:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	0000000023064112

l23064146:
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306178A
	c.beqz	a0,0000000023064164

l23064150:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.mv	s0,a0
	c.bnez	a0,00000000230640CE

l2306415E:
	c.lwsp	a2,000000E4
	blt	a5,zero,0000000023064146

l23064164:
	c.addi4spn	a1,00000018
	addi	s7,s2,+0000000C
	c.mv	a2,s7
	c.mv	a0,a1
	jal	ra,000000002306196C
	c.mv	s0,a0
	addi	s5,s1,+00000004
	c.bnez	a0,00000000230640CE

l2306417A:
	c.lwsp	s8,000000E4
	blt	a5,zero,0000000023064302

l23064180:
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306178A
	beq	a0,zero,0000000023064320

l2306418C:
	c.addi4spn	a2,0000000C
	c.mv	a1,s6
	c.addi4spn	a0,00000054
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l2306419C:
	c.mv	a1,s1
	c.addi4spn	a0,00000054
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641AA:
	c.addi4spn	a2,0000000C
	c.mv	a1,a2
	c.addi4spn	a0,00000024
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641BA:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641C8:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000030
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641D8:
	c.mv	a1,s1
	c.addi4spn	a0,00000030
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641E6:
	c.addi4spn	a1,00000024
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230641F6:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l23064204:
	c.li	a2,00000002
	c.addi4spn	a1,00000024
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061ADE
	c.mv	s0,a0
	addi	s5,s1,+00000004
	bne	a0,zero,00000000230640CE

l23064218:
	c.mv	a1,s5
	c.addi4spn	a0,0000000C
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023064340

l23064224:
	c.addi4spn	a2,00000018
	c.mv	a1,a2
	c.mv	a0,s3
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l23064234:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l23064242:
	c.addi4spn	a2,0000000C
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.mv	s2,s3
	bne	a0,zero,00000000230640CE

l23064254:
	c.lwsp	t3,000001F4
	blt	a5,zero,0000000023064352

l2306425A:
	c.addi4spn	a2,00000030
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,000000002306196C

l23064264:
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l2306426A:
	c.lwsp	t3,000001F4
	blt	a5,zero,0000000023064370

l23064270:
	c.addi4spn	a1,00000024
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,000000002306196C

l2306427A:
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l23064280:
	c.lwsp	tp,000001F4
	blt	a5,zero,0000000023064388

l23064286:
	c.addi4spn	a1,00000024
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l23064296:
	c.mv	a1,s1
	c.addi4spn	a0,00000024
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642A4:
	c.addi4spn	a1,00000030
	c.mv	a2,s7
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642B4:
	c.mv	a1,s1
	c.addi4spn	a0,00000030
	jal	ra,000000002306364E
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642C2:
	c.addi4spn	a2,00000030
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000048
	jal	ra,000000002306196C

l230642CC:
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642D2:
	c.lwsp	s1,000000E4
	blt	a5,zero,00000000230643A0

l230642D8:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642E6:
	c.addi4spn	a1,00000048
	addi	a0,s4,+0000000C
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230640CE

l230642F6:
	c.addi4spn	a1,00000054
	addi	a0,s4,+00000018
	jal	ra,0000000023061142
	c.j	0000000023064334

l23064302:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,000000002306178A
	beq	a0,zero,0000000023064180

l2306430E:
	c.addi4spn	a1,00000018
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.mv	s0,a0
	beq	a0,zero,000000002306417A

l2306431E:
	c.j	00000000230640CE

l23064320:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,000000002306178A
	c.bnez	a0,0000000023064338

l2306432A:
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230636EC

l23064334:
	c.mv	s0,a0
	c.j	00000000230640CE

l23064338:
	c.mv	a0,s4
	jal	ra,0000000023063FBA
	c.j	0000000023064334

l23064340:
	c.addi4spn	a1,0000000C
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.mv	s0,a0
	beq	a0,zero,0000000023064218

l23064350:
	c.j	00000000230640CE

l23064352:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306178A
	beq	a0,zero,000000002306425A

l2306435E:
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,000000002306190E
	c.mv	s0,a0
	beq	a0,zero,0000000023064254

l2306436E:
	c.j	00000000230640CE

l23064370:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306178A
	beq	a0,zero,0000000023064270

l2306437C:
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,000000002306190E
	c.j	0000000023064264

l23064388:
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,000000002306178A
	beq	a0,zero,0000000023064286

l23064394:
	c.addi4spn	a1,00000024
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	000000002306427A

l230643A0:
	c.li	a1,00000000
	c.addi4spn	a0,00000048
	jal	ra,000000002306178A
	beq	a0,zero,00000000230642D8

l230643AC:
	c.addi4spn	a1,00000048
	c.mv	a2,s5
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	00000000230642CC

;; ecp_mul_comb: 230643B8
;;   Called from:
;;     23064B52 (in mbedtls_ecp_mul)
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
	jal	ra,0000000023061008
	c.addi4spn	a0,00000040
	jal	ra,0000000023061008
	addi	a5,s1,+0000004C
	c.mv	a0,a5
	c.li	a1,00000000
	c.swsp	a5,00000008
	jal	ra,0000000023061282
	c.li	a5,00000001
	bne	a0,a5,0000000023064878

l2306441A:
	lw	s4,s1,+0000005C
	addi	a5,zero,+0000017F
	addi	a1,s1,+00000034
	addi	a0,s0,+0000000C
	sltu	s4,a5,s4
	jal	ra,00000000230616FE
	c.addi	s4,00000004
	c.mv	s7,a0
	c.bnez	a0,00000000230644C8

l23064438:
	addi	a1,s1,+00000028
	c.mv	a0,s0
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064448

l23064444:
	c.addi	s4,00000001
	c.li	s7,00000001

l23064448:
	lw	s5,s1,+0000005C
	bltu	s4,s5,0000000023064452

l23064450:
	c.li	s4,00000002

l23064452:
	addi	s8,s4,-00000001
	c.li	s6,00000001
	c.addi	s5,FFFFFFFF
	sll	s6,s6,s8
	c.add	s5,s4
	andi	s9,s6,+000000FF
	srl	s5,s5,s4
	beq	s7,zero,0000000023064474

l2306446C:
	lw	s3,s1,+00000074
	bne	s3,zero,0000000023064618

l23064474:
	addi	a1,zero,+00000024
	c.mv	a0,s6
	jal	ra,000000002305F67C
	c.mv	s3,a0
	beq	a0,zero,0000000023064870

l23064484:
	c.mv	a1,s0
	jal	ra,0000000023063F74
	c.mv	s0,a0
	c.bnez	a0,00000000230644F6

l2306448E:
	c.li	s11,00000000
	c.li	a4,00000001

l23064492:
	srl	a6,a4,s8
	beq	a6,zero,00000000230644CC

l2306449A:
	c.mv	a2,s11
	c.addi4spn	a1,00000088
	c.mv	a0,s1
	jal	ra,0000000023063BFC
	c.mv	s0,a0
	c.bnez	a0,00000000230644F6

l230644A8:
	c.li	a2,00000000
	c.li	a4,00000001
	addi	a7,zero,+00000024

l230644B0:
	srl	a5,a4,s8
	c.mv	a3,a4
	bne	a5,zero,00000000230645FE

l230644BA:
	add	a6,a4,a7
	c.add	a2,a4
	andi	t4,a2,+000000FF
	c.add	a6,s3
	c.j	00000000230645E6

l230644C8:
	c.li	s7,00000000
	c.j	0000000023064448

l230644CC:
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
	jal	ra,0000000023063F74
	c.mv	s0,a0
	c.lwsp	s8,000000A4
	c.lwsp	t3,000000C4
	c.lwsp	zero,00000118
	c.beqz	a0,0000000023064584

l230644F6:
	bne	s7,zero,000000002306451A

l230644FA:
	c.li	s1,00000000
	addi	s4,zero,+00000024

l23064500:
	add	a0,s1,s4
	c.addi	s1,00000001
	c.add	a0,s3
	jal	ra,0000000023063EC8
	andi	a5,s1,+000000FF
	bltu	a5,s9,0000000023064500

l23064514:
	c.mv	a0,s3
	jal	ra,0000000023032272

l2306451A:
	c.addi4spn	a0,00000034
	jal	ra,0000000023061018
	c.addi4spn	a0,00000040
	jal	ra,0000000023061018
	c.beqz	s0,000000002306452E

l23064528:
	c.mv	a0,s2
	jal	ra,0000000023063EC8

l2306452E:
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

l23064568:
	c.mv	a2,a3
	c.mv	a1,a3
	c.mv	a0,s1
	c.swsp	a6,00000010
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	jal	ra,00000000230636EC
	c.mv	s0,a0
	c.bnez	a0,00000000230644F6

l2306457C:
	c.lwsp	zero,00000118
	c.lwsp	t3,000000C4
	c.lwsp	s8,000000A4
	c.addi	a6,00000001

l23064584:
	bne	s5,a6,0000000023064568

l23064588:
	slli	a5,s11,00000002
	c.addi4spn	a1,00000190
	addi	a2,s11,+00000001
	c.add	a5,a1
	c.slli	a4,01
	sw	a3,a5,+00000EF8
	andi	a4,a4,+000000FF
	andi	s11,a2,+000000FF
	c.j	0000000023064492

l230645A4:
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
	jal	ra,0000000023063FEE
	c.mv	s0,a0
	c.bnez	a0,00000000230644F6

l230645C8:
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

l230645E6:
	sub	a2,t4,a3
	andi	a5,a2,+000000FF
	addi	t1,a3,-00000001
	c.bnez	a3,00000000230645A4

l230645F4:
	c.slli	a4,01
	andi	a4,a4,+000000FF
	c.mv	a2,a5
	c.j	00000000230644B0

l230645FE:
	c.addi4spn	a1,00000088
	c.mv	a0,s1
	jal	ra,0000000023063BFC
	c.mv	s0,a0
	bne	a0,zero,00000000230644F6

l2306460C:
	beq	s7,zero,0000000023064618

l23064610:
	sw	s3,s1,+00000074
	sw	s6,s1,+00000078

l23064618:
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,0000000023061282
	c.mv	s8,a0
	c.mv	a1,s10
	c.addi4spn	a0,00000034
	jal	ra,0000000023061142
	c.mv	s0,a0
	bne	a0,zero,00000000230644F6

l23064630:
	c.lwsp	a6,00000064
	c.mv	a2,s10
	c.addi4spn	a0,00000040
	jal	ra,000000002306196C
	c.mv	s0,a0
	bne	a0,zero,00000000230644F6

l23064640:
	c.addi	s8,FFFFFFFF
	sltu	s8,zero,s8
	c.mv	a2,s8
	c.addi4spn	a1,00000040
	c.addi4spn	a0,00000034
	jal	ra,00000000230611B2
	c.mv	s0,a0
	bne	a0,zero,00000000230644F6

l23064656:
	addi	a2,s5,+00000001
	c.li	a1,00000000
	c.addi4spn	a0,00000088
	c.addi4spn	s0,00000088
	jal	ra,0000000023070EB8
	c.mv	s10,s0
	c.li	s6,00000000

l23064668:
	bne	s5,s6,0000000023064780

l2306466C:
	c.addi4spn	a5,00000088
	add	a7,a5,s6
	c.li	a1,00000000

l23064674:
	bne	s0,a7,00000000230647AC

l23064678:
	c.addi4spn	a0,00000064
	jal	ra,0000000023063E02
	c.addi4spn	a5,00000190
	c.add	a5,s6
	lbu	a4,a5,-00000108
	c.mv	a3,s9
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230635B6
	c.mv	s0,a0
	bne	a0,zero,000000002306484A

l23064698:
	addi	s5,s2,+00000018
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,0000000023061238
	c.mv	s0,a0
	bne	a0,zero,000000002306484A

l230646AA:
	c.lwsp	a2,000000E4
	beq	a5,zero,0000000023064842

l230646B0:
	lw	s4,s1,+00000058
	c.addi4spn	a0,0000004C
	jal	ra,0000000023061008
	c.addi	s4,00000007
	c.addi4spn	a0,00000058
	srli	s4,s4,00000003
	jal	ra,0000000023061008
	c.li	s10,0000000C
	addi	s11,s1,+00000004

l230646CC:
	c.lwsp	s4,000000A4
	c.lwsp	a2,00000084
	c.mv	a1,s4
	c.addi4spn	a0,0000004C
	jal	ra,00000000230623DC

l230646D8:
	c.mv	a1,s11
	c.addi4spn	a0,0000004C
	jal	ra,00000000230616FE
	bge	a0,zero,00000000230647EA

l230646E4:
	c.addi	s10,FFFFFFFF
	beq	s10,zero,0000000023064880

l230646EA:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,000000002306178A
	bge	zero,a0,00000000230646CC

l230646F6:
	c.addi4spn	a2,0000004C
	c.mv	a1,s5
	c.mv	a0,s5
	jal	ra,00000000230619F6
	c.mv	a5,a0
	bne	a0,zero,00000000230647F8

l23064706:
	c.mv	a1,s1
	c.mv	a0,s5
	jal	ra,000000002306364E
	c.mv	a5,a0
	bne	a0,zero,00000000230647F8

l23064714:
	c.addi4spn	a2,0000004C
	c.mv	a1,a2
	c.addi4spn	a0,00000058
	jal	ra,00000000230619F6
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l23064722:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,000000002306364E
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l2306472E:
	c.addi4spn	a2,00000058
	c.mv	a1,s2
	c.mv	a0,s2
	jal	ra,00000000230619F6
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l2306473C:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306364E
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l23064748:
	c.addi4spn	a1,00000058
	c.addi4spn	a2,0000004C
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l23064756:
	c.mv	a1,s1
	c.addi4spn	a0,00000058
	jal	ra,000000002306364E
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l23064762:
	addi	s4,s2,+0000000C
	c.addi4spn	a2,00000058
	c.mv	a1,s4
	c.mv	a0,s4
	jal	ra,00000000230619F6
	c.mv	a5,a0
	c.bnez	a0,00000000230647F8

l23064774:
	c.mv	a1,s1
	c.mv	a0,s4
	jal	ra,000000002306364E
	c.mv	a5,a0
	c.j	00000000230647F8

l23064780:
	c.mv	a5,s6
	c.li	s11,00000000

l23064784:
	c.mv	a1,a5
	c.addi4spn	a0,00000034
	c.swsp	a5,00000008
	jal	ra,0000000023061282
	lbu	a4,s10,+00000000
	sll	a0,a0,s11
	c.lwsp	a6,000000E4
	c.or	a0,a4
	sb	a0,s10,+00000000
	c.addi	s11,00000001
	c.add	a5,s5
	bltu	s11,s4,0000000023064784

l230647A6:
	c.addi	s6,00000001
	c.addi	s10,00000001
	c.j	0000000023064668

l230647AC:
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
	c.j	0000000023064674

l230647EA:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,00000000230614E0
	c.mv	a5,a0
	beq	a0,zero,00000000230646D8

l230647F8:
	c.addi4spn	a0,0000004C
	c.swsp	a5,00000084
	jal	ra,0000000023061018
	c.addi4spn	a0,00000058
	jal	ra,0000000023061018
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023064842

l2306480A:
	c.mv	s0,a5
	c.j	000000002306484A

l2306480E:
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230636EC
	c.bnez	a0,000000002306483E

l2306481A:
	c.addi4spn	a5,00000088
	c.add	a5,s6
	lbu	a4,a5,+00000000
	c.mv	a3,s9
	c.mv	a2,s3
	c.addi4spn	a1,00000064
	c.mv	a0,s1
	jal	ra,00000000230635B6
	c.bnez	a0,000000002306483E

l23064830:
	c.addi4spn	a3,00000064
	c.mv	a2,s2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023063FEE
	c.beqz	a0,0000000023064844

l2306483E:
	c.mv	s0,a0
	c.j	000000002306484A

l23064842:
	c.li	s4,FFFFFFFF

l23064844:
	c.addi	s6,FFFFFFFF
	bne	s6,s4,000000002306480E

l2306484A:
	c.addi4spn	a0,00000064
	jal	ra,0000000023063E24
	bne	s0,zero,00000000230644F6

l23064854:
	c.mv	a2,s8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023063562
	c.mv	s0,a0
	bne	a0,zero,00000000230644F6

l23064864:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023063B30
	c.mv	s0,a0
	c.j	00000000230644F6

l23064870:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000280
	c.j	000000002306451A

l23064878:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	000000002306452E

l23064880:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000300
	c.j	000000002306484A

;; mbedtls_ecp_point_read_binary: 23064888
;;   Called from:
;;     23056A66 (in pk_parse_key_sec1_der)
;;     23056E90 (in mbedtls_pk_parse_subpubkey)
mbedtls_ecp_point_read_binary proc
	c.bnez	a3,00000000230648A6

l2306488A:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000080
	c.jr	ra

l23064892:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000080

l23064898:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230648A6:
	lbu	a5,a2,+00000000
	c.bnez	a5,00000000230648B8

l230648AC:
	c.li	a5,00000001
	bne	a3,a5,000000002306488A

l230648B2:
	c.mv	a0,a1
	jal	zero,0000000023063FBA

l230648B8:
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
	jal	ra,0000000023061322
	lbu	a4,s1,+00000000
	c.li	a5,00000004
	c.mv	s3,a0
	bne	a4,a5,000000002306491C

l230648DC:
	slli	a5,a0,00000001
	c.addi	a5,00000001
	bne	s2,a5,0000000023064892

l230648E6:
	c.mv	a2,a0
	addi	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,0000000023061334
	c.bnez	a0,0000000023064898

l230648F4:
	addi	a1,s3,+00000001
	c.mv	a2,s3
	c.add	a1,s1
	addi	a0,s0,+0000000C
	jal	ra,0000000023061334
	c.bnez	a0,0000000023064898

l23064906:
	addi	a0,s0,+00000018
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,0000000023061238

l2306491C:
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000180
	c.j	0000000023064898

;; mbedtls_ecp_check_pubkey: 23064924
;;   Called from:
;;     23056A70 (in pk_parse_key_sec1_der)
;;     23056E9C (in mbedtls_pk_parse_subpubkey)
;;     23064B20 (in mbedtls_ecp_mul)
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
	jal	ra,000000002306178A
	c.bnez	a0,0000000023064958

l23064940:
	c.mv	a0,s1
	jal	ra,0000000023063550
	c.li	a5,00000001
	bne	a0,a5,0000000023064A92

l2306494C:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002306178A
	bge	a0,zero,0000000023064960

l23064958:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000380
	c.j	0000000023064A38

l23064960:
	addi	s0,s3,+0000000C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306178A
	blt	a0,zero,0000000023064958

l23064970:
	addi	s2,s1,+00000004
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023064958

l23064980:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023064958

l2306498C:
	c.addi4spn	a0,00000008
	jal	ra,0000000023061008
	c.addi4spn	a0,00000014
	jal	ra,0000000023061008
	c.mv	a2,s0
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649A6:
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649B2:
	c.mv	a2,s3
	c.mv	a1,s3
	c.addi4spn	a0,00000014
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649C0:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649CC:
	c.lw	s1,24(a5)
	c.bnez	a5,0000000023064A5E

l230649D0:
	c.addi4spn	a1,00000014
	c.li	a2,00000003
	c.mv	a0,a1
	jal	ra,00000000230619CA

l230649DA:
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649DE:
	c.lwsp	s4,000000E4
	blt	a5,zero,0000000023064A48

l230649E4:
	c.addi4spn	a1,00000014
	c.mv	a2,s3
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649F2:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,000000002306364E
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l230649FE:
	c.addi4spn	a1,00000014
	addi	a2,s1,+0000001C
	c.mv	a0,a1
	jal	ra,000000002306190E

l23064A0A:
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l23064A0E:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,00000000230616FE
	bge	a0,zero,0000000023064A86

l23064A1A:
	c.addi4spn	a1,00000014
	c.addi4spn	a0,00000008
	jal	ra,00000000230616FE
	c.mv	s0,a0
	c.beqz	a0,0000000023064A2C

l23064A26:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000380

l23064A2C:
	c.addi4spn	a0,00000008
	jal	ra,0000000023061018
	c.addi4spn	a0,00000014
	jal	ra,0000000023061018

l23064A38:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23064A48:
	c.li	a1,00000000
	c.addi4spn	a0,00000014
	jal	ra,000000002306178A
	c.beqz	a0,00000000230649E4

l23064A52:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,000000002306190E
	c.j	00000000230649DA

l23064A5E:
	c.addi4spn	a1,00000014
	addi	a2,s1,+00000010
	c.mv	a0,a1
	jal	ra,000000002306190E

l23064A6A:
	c.mv	s0,a0
	c.bnez	a0,0000000023064A2C

l23064A6E:
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,00000000230616FE
	blt	a0,zero,00000000230649E4

l23064A7A:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.j	0000000023064A6A

l23064A86:
	c.addi4spn	a1,00000014
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023061886
	c.j	0000000023064A0A

l23064A92:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080
	c.j	0000000023064A38

;; mbedtls_ecp_check_privkey: 23064A9A
;;   Called from:
;;     23056AB0 (in pk_parse_key_sec1_der)
;;     23064B14 (in mbedtls_ecp_mul)
mbedtls_ecp_check_privkey proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023063550
	c.li	a5,00000001
	bne	a0,a5,0000000023064ADE

l23064AB0:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306178A
	blt	a0,zero,0000000023064ACC

l23064ABC:
	addi	a1,s1,+0000004C
	c.mv	a0,s0
	jal	ra,00000000230616FE
	c.li	a5,00000000
	blt	a0,zero,0000000023064AD2

l23064ACC:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000380

l23064AD2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23064ADE:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000080
	c.j	0000000023064AD2

;; mbedtls_ecp_mul: 23064AE6
;;   Called from:
;;     23056AA2 (in pk_parse_key_sec1_der)
;;     23064C04 (in mbedtls_ecp_check_pub_priv)
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
	jal	ra,000000002306178A
	c.bnez	a0,0000000023064B56

l23064B10:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023064A9A
	c.mv	s0,a0
	c.bnez	a0,0000000023064B5C

l23064B1C:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023064924
	c.mv	s0,a0
	c.bnez	a0,0000000023064B5C

l23064B28:
	c.mv	a0,s1
	jal	ra,0000000023063550
	c.li	a5,00000001
	bne	a0,a5,0000000023064B5C

l23064B34:
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
	jal	zero,00000000230643B8

l23064B56:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l23064B5C:
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

;; mbedtls_ecp_check_pub_priv: 23064B72
;;   Called from:
;;     2305729A (in eckey_check_pair)
mbedtls_ecp_check_pub_priv proc
	c.addi16sp	FFFFFF40
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	lbu	a5,a0,+00000000
	c.bnez	a5,0000000023064B9E

l23064B86:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l23064B8C:
	c.mv	a0,s0
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.addi16sp	000000C0
	c.jr	ra

l23064B9E:
	lbu	a4,a1,+00000000
	bne	a4,a5,0000000023064B86

l23064BA6:
	addi	s4,a1,+00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.mv	a1,s4
	addi	a0,a0,+00000088
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064B86

l23064BBA:
	addi	s3,s0,+00000094
	c.mv	a1,s3
	addi	a0,s1,+00000094
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064B86

l23064BCA:
	addi	s2,s0,+000000A0
	c.mv	a1,s2
	addi	a0,s1,+000000A0
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064B86

l23064BDA:
	c.mv	a0,sp
	jal	ra,0000000023063E02
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,0000000023070EB8
	c.mv	a1,s0
	c.addi4spn	a0,00000024
	jal	ra,0000000023063FB2
	addi	a3,s0,+00000028
	addi	a2,s0,+0000007C
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a1,sp
	c.addi4spn	a0,00000024
	jal	ra,0000000023064AE6
	c.mv	s0,a0
	c.bnez	a0,0000000023064C32

l23064C0C:
	c.mv	a1,s4
	c.mv	a0,sp
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064C2C

l23064C16:
	c.mv	a1,s3
	c.addi4spn	a0,0000000C
	jal	ra,00000000230616FE
	c.bnez	a0,0000000023064C2C

l23064C20:
	c.mv	a1,s2
	c.addi4spn	a0,00000018
	jal	ra,00000000230616FE
	c.mv	s0,a0
	c.beqz	a0,0000000023064C32

l23064C2C:
	c.lui	s0,FFFFB000
	addi	s0,s0,+00000080

l23064C32:
	c.mv	a0,sp
	jal	ra,0000000023063E24
	c.addi4spn	a0,00000024
	jal	ra,0000000023063ED0
	c.j	0000000023064B8C

;; ecp_mod_koblitz.constprop.0: 23064C40
;;   Called from:
;;     23064D42 (in ecp_mod_p224k1)
;;     23064D50 (in ecp_mod_p256k1)
ecp_mod_koblitz.constprop.0 proc
	c.lw	a0,4(a5)
	bltu	a5,a2,0000000023064D34

l23064C46:
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
	bltu	a2,a5,0000000023064D0C

l23064C6E:
	c.swsp	a5,00000008

l23064C70:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	c.lw	s1,8(a1)
	c.lwsp	a6,00000084
	slli	s3,s0,00000002
	c.add	a1,s3
	c.slli	a2,02
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	c.lwsp	a6,000000E4
	c.lwsp	t3,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	c.mv	a5,s0

l23064C98:
	c.lw	s1,4(a4)
	bltu	a5,a4,0000000023064D10

l23064C9E:
	c.addi4spn	a1,0000000C
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.bnez	a0,0000000023064CFE

l23064CAA:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230617B6
	c.bnez	a0,0000000023064CFE

l23064CB6:
	c.lw	s1,4(a5)
	c.sub	a5,s0
	bltu	s0,a5,0000000023064D20

l23064CBE:
	c.swsp	a5,00000008

l23064CC0:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	c.lw	s1,8(a1)
	c.lwsp	a6,00000084
	c.mv	a0,s2
	c.add	a1,s3
	c.slli	a2,02
	jal	ra,0000000023070C7C
	c.lwsp	a6,000000E4
	c.lwsp	t3,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008

l23064CE2:
	c.lw	s1,4(a5)
	bltu	s0,a5,0000000023064D24

l23064CE8:
	c.addi4spn	a1,0000000C
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.bnez	a0,0000000023064CFE

l23064CF4:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s1
	jal	ra,00000000230617B6

l23064CFE:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.addi16sp	00000070
	c.jr	ra

l23064D0C:
	c.swsp	a2,00000008
	c.j	0000000023064C70

l23064D10:
	c.lw	s1,8(a4)
	slli	a3,a5,00000002
	c.addi	a5,00000001
	c.add	a4,a3
	sw	zero,a4,+00000000
	c.j	0000000023064C98

l23064D20:
	c.swsp	s0,00000008
	c.j	0000000023064CC0

l23064D24:
	c.lw	s1,8(a5)
	slli	a4,s0,00000002
	c.addi	s0,00000001
	c.add	a5,a4
	sw	zero,a5,+00000000
	c.j	0000000023064CE2

l23064D34:
	c.li	a0,00000000
	c.jr	ra

;; ecp_mod_p224k1: 23064D38
ecp_mod_p224k1 proc
	lui	a1,0004200E
	c.li	a2,00000007
	addi	a1,a1,-00000680
	jal	zero,0000000023064C40

;; ecp_mod_p256k1: 23064D46
ecp_mod_p256k1 proc
	lui	a1,0004200E
	c.li	a2,00000008
	addi	a1,a1,-00000678
	jal	zero,0000000023064C40

;; mbedtls_ecp_group_load: 23064D54
;;   Called from:
;;     23056806 (in pk_use_ecparams)
;;     23063FB6 (in mbedtls_ecp_group_copy)
mbedtls_ecp_group_load proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,0000000023063ED0
	c.lwsp	a2,00000064
	c.li	a5,0000000B
	sb	a1,s0,+00000000
	beq	a1,a5,0000000023064DF6

l23064D70:
	c.li	a5,0000000C
	beq	a1,a5,0000000023064E5A

l23064D76:
	c.li	a5,00000003
	bne	a1,a5,0000000023064EBC

l23064D7C:
	lui	a4,0002308B
	addi	a4,a4,+00000268
	c.sw	s0,12(a4)
	lui	a4,0002308B
	addi	a4,a4,+000001E8
	c.sw	s0,36(a4)
	lui	a4,0002308B
	addi	a4,a4,+00000248
	c.li	a5,00000008
	c.sw	s0,84(a4)
	lui	a4,0002308B
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,32(a5)
	c.sw	s0,80(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,+00000208
	c.sw	s0,56(a5)
	lui	a5,0002308B
	c.sw	s0,4(s1)
	c.sw	s0,28(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,+00000228

l23064DC4:
	c.sw	s0,60(a5)
	lui	a5,0004200E
	addi	a5,a5,-00000670
	c.sw	s0,72(a5)
	c.sw	s0,64(s1)
	c.sw	s0,68(s1)
	addi	a0,s0,+00000004
	jal	ra,00000000230612E2
	c.sw	s0,88(a0)
	addi	a0,s0,+0000004C
	jal	ra,00000000230612E2
	c.sw	s0,92(a0)
	c.sw	s0,96(s1)
	c.li	a0,00000000

l23064DEC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23064DF6:
	lui	a4,0002308B
	addi	a4,a4,+0000014C
	c.sw	s0,12(a4)
	lui	a4,0002308E
	addi	a4,a4,-00000140
	c.sw	s0,24(a4)
	lui	a4,0002308E
	addi	a4,a4,-0000013C
	c.sw	s0,36(a4)
	c.li	a4,00000008
	lui	a5,00023065
	c.sw	s0,80(a4)
	lui	a4,0002308B
	addi	a5,a5,-000002C8
	addi	a4,a4,+0000012C
	c.sw	s0,100(a5)
	c.sw	s0,84(a4)
	c.li	a5,00000007
	lui	a4,0002308B
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,+000000F4
	c.sw	s0,56(a5)
	lui	a5,0002308B
	c.sw	s0,4(s1)
	c.sw	s0,16(s1)
	c.sw	s0,20(s1)
	c.sw	s0,28(s1)
	c.sw	s0,32(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,+00000110
	c.j	0000000023064DC4

l23064E5A:
	lui	a4,0002308B
	addi	a4,a4,+000001C8
	c.sw	s0,12(a4)
	lui	a4,0002308E
	addi	a4,a4,-00000138
	c.sw	s0,24(a4)
	lui	a4,0002308E
	addi	a4,a4,-00000134
	lui	a5,00023065
	c.sw	s0,36(a4)
	lui	a4,0002308B
	addi	a5,a5,-000002BA
	addi	a4,a4,+000001A8
	c.sw	s0,100(a5)
	c.sw	s0,84(a4)
	c.li	a5,00000008
	lui	a4,0002308B
	c.li	s1,00000001
	c.sw	s0,8(a5)
	c.sw	s0,80(a5)
	c.sw	s0,44(a5)
	addi	a4,a4,+00000168
	c.sw	s0,56(a5)
	lui	a5,0002308B
	c.sw	s0,4(s1)
	c.sw	s0,16(s1)
	c.sw	s0,20(s1)
	c.sw	s0,28(s1)
	c.sw	s0,32(s1)
	c.sw	s0,76(s1)
	c.sw	s0,40(s1)
	c.sw	s0,48(a4)
	c.sw	s0,52(s1)
	addi	a5,a5,+00000188
	c.j	0000000023064DC4

l23064EBC:
	c.mv	a0,s0
	jal	ra,0000000023063ED0
	c.lui	a0,FFFFB000
	addi	a0,a0,+00000180
	c.j	0000000023064DEC

;; gcm_mult: 23064ECA
;;   Called from:
;;     23065310 (in mbedtls_gcm_starts)
;;     23065342 (in mbedtls_gcm_starts)
;;     2306537A (in mbedtls_gcm_starts)
;;     23065498 (in mbedtls_gcm_update)
;;     230655DC (in mbedtls_gcm_finish)
gcm_mult proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000084
	c.swsp	s1,00000004
	c.swsp	s2,00000080
	lbu	a3,a1,+0000000F
	lui	t6,0002308B
	c.li	t3,0000000F
	c.andi	a3,0000000F
	c.slli	a3,03
	c.add	a3,a0
	lw	t1,a3,+000000C0
	lw	a4,a3,+000000C4
	c.lw	a3,64(a5)
	c.lw	a3,68(a3)
	addi	t6,t6,+00000288
	c.li	t2,0000000F
	c.li	t0,FFFFFFFF

l23064EF6:
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
	beq	t3,t2,0000000023064F60

l23064F3E:
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

l23064F60:
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
	bne	t3,t0,0000000023064EF6

l23064FBC:
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

;; mbedtls_gcm_init: 23065036
;;   Called from:
;;     23062DA8 (in gcm_ctx_alloc)
mbedtls_gcm_init proc
	addi	a2,zero,+00000188
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_gcm_setkey: 23065040
;;   Called from:
;;     23062DBC (in gcm_aes_setkey_wrap)
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
	jal	ra,00000000230627B4
	beq	a0,zero,0000000023065212

l2306505E:
	c.lw	a0,20(a4)
	c.swsp	a0,00000084
	c.li	a5,00000010
	c.li	a0,FFFFFFEC
	bne	a4,a5,0000000023065206

l2306506A:
	c.mv	a0,s0
	jal	ra,00000000230627EA
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,0000000023062C44
	bne	a0,zero,0000000023065206

l2306507C:
	c.li	a3,00000001
	c.mv	a2,s1
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306281A
	bne	a0,zero,0000000023065206

l2306508C:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.swsp	zero,0000008C
	jal	ra,0000000023070EB8
	c.addi4spn	a3,00000020
	c.addi4spn	a4,0000001C
	c.li	a2,00000010
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,00000000230628CE
	bne	a0,zero,0000000023065206

l230650AA:
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

l2306514C:
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
	bne	a6,zero,000000002306514C

l23065192:
	c.li	a3,00000003
	c.li	a2,00000002
	addi	t4,s0,+00000040
	addi	t5,s0,+000000C0

l2306519E:
	slli	a1,a2,00000003
	add	a7,t4,a1
	add	t1,t5,a1
	lw	s1,t1,+00000000
	lw	t2,t1,+00000004
	lw	t0,a7,+00000000
	lw	t6,a7,+00000004
	addi	a5,s0,+00000048
	c.li	a4,00000008

l230651C0:
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
	bne	a1,a4,00000000230651C0

l23065200:
	c.addi	a3,FFFFFFFF
	c.slli	a2,01
	c.bnez	a3,000000002306519E

l23065206:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23065212:
	c.li	a0,FFFFFFEC
	c.j	0000000023065206

;; mbedtls_gcm_starts: 23065216
;;   Called from:
;;     23065622 (in mbedtls_gcm_crypt_and_tag)
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
	jal	ra,0000000023070EB8
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023070EB8
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000140
	sw	a5,s0,+00000148
	sw	s7,s0,+00000180
	sw	a6,s0,+00000144
	sw	a6,s0,+0000014C
	c.li	a5,0000000C
	bne	s2,a5,00000000230652C0

l23065274:
	c.li	a2,0000000C
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.li	a5,00000001
	sb	a5,s0,+0000016F

l23065284:
	c.addi4spn	a4,0000000C
	addi	a3,s0,+00000150
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230628CE
	c.mv	s2,a0
	c.bnez	a0,00000000230652A6

l23065298:
	sw	s3,s0,+00000148
	sw	zero,s0,+0000014C
	c.li	s5,00000010

l230652A2:
	bne	s3,zero,000000002306534E

l230652A6:
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

l230652C0:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	slli	a5,s2,00000003
	srli	a4,a5,00000018
	sb	a4,sp,+0000001C
	srli	a4,a5,00000010
	sb	a4,sp,+0000001D
	srli	a4,a5,00000008
	sb	a4,sp,+0000001E
	sb	a5,sp,+0000001F
	c.li	s8,00000010

l230652EC:
	bne	s2,zero,0000000023065316

l230652F0:
	c.mv	a4,s1
	c.addi4spn	a5,00000010

l230652F4:
	lbu	a3,a4,+00000000
	lbu	a2,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s4,a4,00000000230652F4

l2306530A:
	c.mv	a2,s1
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023064ECA
	c.j	0000000023065284

l23065316:
	c.mv	s7,s2
	bgeu	s8,s2,000000002306531E

l2306531C:
	c.li	s7,00000010

l2306531E:
	c.mv	a4,s1
	c.li	a5,00000000

l23065322:
	add	a3,s5,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s7,a5,0000000023065322

l2306533C:
	c.mv	a2,s1
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023064ECA
	sub	s2,s2,s7
	c.add	s5,s7
	c.j	00000000230652EC

l2306534E:
	c.mv	s1,s3
	bgeu	s5,s3,0000000023065356

l23065354:
	c.li	s1,00000010

l23065356:
	c.mv	a4,s4
	c.li	a5,00000000

l2306535A:
	add	a3,s6,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	s1,a5,000000002306535A

l23065374:
	c.mv	a2,s4
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023064ECA
	sub	s3,s3,s1
	c.add	s6,s1
	c.j	00000000230652A2

;; mbedtls_gcm_update: 23065386
;;   Called from:
;;     23062984 (in mbedtls_cipher_update)
;;     23065632 (in mbedtls_gcm_crypt_and_tag)
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
	bgeu	a2,a3,00000000230653B4

l230653AA:
	sub	a5,a3,a2
	c.li	a0,FFFFFFEC
	bltu	a5,a1,00000000230653FA

l230653B4:
	lw	a2,s0,+00000140
	lw	a3,s0,+00000144
	add	a4,s1,a2
	sltu	a5,a4,s1
	c.add	a5,a3
	bltu	a5,a3,00000000230654A6

l230653CA:
	bne	a3,a5,00000000230653D2

l230653CE:
	bltu	a4,a2,00000000230654A6

l230653D2:
	c.li	a3,0000000F
	bltu	a3,a5,00000000230654A6

l230653D8:
	bne	a5,a3,00000000230653E2

l230653DC:
	c.li	a3,FFFFFFE0
	bltu	a3,a4,00000000230654A6

l230653E2:
	sw	a4,s0,+00000140
	sw	a5,s0,+00000144
	c.li	s2,00000010
	addi	s3,s0,+0000016B
	addi	s4,s0,+00000160
	c.li	s5,00000001

l230653F6:
	c.bnez	s1,0000000023065412

l230653F8:
	c.li	a0,00000000

l230653FA:
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

l23065412:
	c.mv	s8,s1
	bgeu	s2,s1,000000002306541A

l23065418:
	c.li	s8,00000010

l2306541A:
	addi	a4,s0,+0000016F

l2306541E:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,0000000023065434

l2306542E:
	c.addi	a4,FFFFFFFF
	bne	a4,s3,000000002306541E

l23065434:
	c.addi4spn	a4,0000000C
	c.addi4spn	a3,00000010
	c.li	a2,00000010
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230628CE
	c.bnez	a0,00000000230653FA

l23065444:
	addi	a5,s0,+00000170
	c.li	a4,00000000
	c.mv	a2,a5

l2306544C:
	lw	a3,s0,+00000180
	add	a1,s6,a4
	c.bnez	a3,0000000023065464

l23065456:
	lbu	a3,a1,+00000000
	lbu	a0,a5,+00000000
	c.xor	a3,a0
	sb	a3,a5,+00000000

l23065464:
	c.addi4spn	a3,00000010
	c.add	a3,a4
	lbu	a1,a1,+00000000
	lbu	a3,a3,+00000000
	c.xor	a3,a1
	add	a1,s7,a4
	sb	a3,a1,+00000000
	lw	a1,s0,+00000180
	bne	a1,s5,000000002306548C

l23065482:
	lbu	a1,a5,+00000000
	c.xor	a3,a1
	sb	a3,a5,+00000000

l2306548C:
	c.addi	a4,00000001
	c.addi	a5,00000001
	bne	s8,a4,000000002306544C

l23065494:
	c.mv	a1,a2
	c.mv	a0,s0
	jal	ra,0000000023064ECA
	sub	s1,s1,s8
	c.add	s6,s8
	c.add	s7,s8
	c.j	00000000230653F6

l230654A6:
	c.li	a0,FFFFFFEC
	c.j	00000000230653FA

;; mbedtls_gcm_finish: 230654AA
;;   Called from:
;;     2306564C (in mbedtls_gcm_crypt_and_tag)
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
	bltu	a5,a4,00000000230655FC

l230654EC:
	c.mv	s0,a1
	c.mv	s8,a0
	addi	a1,a0,+00000150
	c.mv	a0,s0
	c.mv	s6,a2
	slli	s3,s5,00000003
	jal	ra,0000000023070C7C
	slli	s4,s7,00000003
	or	a5,s3,s4
	or	a4,s1,s2
	c.or	a5,a4
	c.bnez	a5,000000002306552A

l23065510:
	c.li	a0,00000000

l23065512:
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

l2306552A:
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
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

l230655C0:
	lbu	a3,a4,+00000000
	lbu	a1,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.xor	a3,a1
	sb	a3,a4,+00000FFF
	bne	a4,a2,00000000230655C0

l230655D6:
	c.mv	a1,s1
	c.mv	a2,s1
	c.mv	a0,s8
	jal	ra,0000000023064ECA
	c.mv	a1,s0
	c.add	s6,s0

l230655E4:
	lbu	a5,a1,+00000000
	lbu	a4,s1,+00000000
	c.addi	a1,00000001
	c.addi	s1,00000001
	c.xor	a5,a4
	sb	a5,a1,+00000FFF
	bne	s6,a1,00000000230655E4

l230655FA:
	c.j	0000000023065510

l230655FC:
	c.li	a0,FFFFFFEC
	c.j	0000000023065512

;; mbedtls_gcm_crypt_and_tag: 23065600
;;   Called from:
;;     23062D22 (in mbedtls_cipher_auth_encrypt)
;;     2306568E (in mbedtls_gcm_auth_decrypt)
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
	jal	ra,0000000023065216
	c.bnez	a0,0000000023065650

l23065628:
	c.lwsp	a2,00000028
	c.mv	a3,s4
	c.mv	a1,s3
	c.mv	a2,a7
	c.mv	a0,s0
	jal	ra,0000000023065386
	c.bnez	a0,0000000023065650

l23065638:
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
	jal	zero,00000000230654AA

l23065650:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; mbedtls_gcm_auth_decrypt: 23065660
;;   Called from:
;;     23062D5E (in mbedtls_cipher_auth_decrypt)
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
	jal	ra,0000000023065600
	c.li	a5,00000000
	c.beqz	a0,00000000230656BC

l23065696:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230656A6:
	add	a4,s4,a5
	add	a3,s3,a5
	lbu	a4,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a3
	c.or	a0,a4

l230656BC:
	bne	a5,s2,00000000230656A6

l230656C0:
	c.add	s1,s0
	c.beqz	a0,0000000023065696

l230656C4:
	bne	s0,s1,00000000230656CC

l230656C8:
	c.li	a0,FFFFFFEE
	c.j	0000000023065696

l230656CC:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230656C4

;; mbedtls_gcm_free: 230656D4
;;   Called from:
;;     23062D84 (in gcm_ctx_free)
mbedtls_gcm_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230627EA
	addi	a5,s0,+00000188

l230656E4:
	bne	s0,a5,00000000230656F0

l230656E8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230656F0:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230656E4

;; mbedtls_md_info_from_type: 230656F8
;;   Called from:
;;     230565A8 (in mbedtls_pk_verify)
;;     2305660C (in mbedtls_pk_sign)
;;     2305794A (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057C46 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057F8E (in mbedtls_rsa_rsassa_pss_sign)
;;     23057F9E (in mbedtls_rsa_rsassa_pss_sign)
;;     23058128 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058374 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058382 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230585C2 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23059A6C (in tls_prf_sha256)
;;     23059C5A (in mbedtls_ssl_derive_keys)
;;     2305E4E0 (in x509_crt_verify_top.isra.7)
;;     2305E71C (in x509_crt_verify_child)
mbedtls_md_info_from_type proc
	c.addi	a0,FFFFFFFD
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	bltu	a5,a0,0000000023065714

l23065704:
	lui	a5,0002308B
	addi	a5,a5,+00000308
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l23065714:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_md_init: 23065718
;;   Called from:
;;     230579C8 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057C78 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23058000 (in mbedtls_rsa_rsassa_pss_sign)
;;     230583CA (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23059A66 (in tls_prf_sha256)
;;     2305A92E (in ssl_handshake_init)
;;     2305A936 (in ssl_handshake_init)
mbedtls_md_init proc
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_md_free: 23065720
;;   Called from:
;;     230579DC (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057A0A (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057C8C (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057CDA (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23058016 (in mbedtls_rsa_rsassa_pss_sign)
;;     23058070 (in mbedtls_rsa_rsassa_pss_sign)
;;     230583DE (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058480 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230584A8 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23059AEC (in tls_prf_sha256)
;;     2305A680 (in mbedtls_ssl_transform_free)
;;     2305A688 (in mbedtls_ssl_transform_free)
mbedtls_md_free proc
	c.beqz	a0,000000002306576C

l23065722:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023065754

l2306572E:
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023065736

l23065732:
	c.lw	a5,36(a5)
	c.jalr	a5

l23065736:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002306574C

l2306573A:
	c.lw	s0,0(a4)
	c.lw	a4,12(a4)
	c.slli	a4,01
	c.add	a4,a5

l23065742:
	bne	a5,a4,000000002306575C

l23065746:
	c.lw	s0,8(a0)
	jal	ra,0000000023032272

l2306574C:
	addi	a5,s0,+0000000C

l23065750:
	bne	s0,a5,0000000023065764

l23065754:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306575C:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	c.j	0000000023065742

l23065764:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023065750

l2306576C:
	c.jr	ra

;; mbedtls_md_setup: 2306576E
;;   Called from:
;;     230579D2 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057C82 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2305800A (in mbedtls_rsa_rsassa_pss_sign)
;;     230583D4 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23059ABC (in tls_prf_sha256)
;;     23059E84 (in mbedtls_ssl_derive_keys)
;;     23059E94 (in mbedtls_ssl_derive_keys)
mbedtls_md_setup proc
	c.beqz	a1,00000000230657B8

l23065770:
	c.beqz	a0,00000000230657B8

l23065772:
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
	c.beqz	a0,00000000230657A0

l2306578A:
	beq	s2,zero,00000000230657A8

l2306578E:
	c.lw	s1,12(a1)
	c.li	a0,00000002
	jal	ra,000000002305F67C
	c.sw	s0,8(a0)
	c.bnez	a0,00000000230657A8

l2306579A:
	c.lw	s1,36(a5)
	c.lw	s0,4(a0)
	c.jalr	a5

l230657A0:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000180
	c.j	00000000230657AC

l230657A8:
	c.sw	s0,0(s1)
	c.li	a0,00000000

l230657AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230657B8:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_starts: 230657C0
;;   Called from:
;;     230572F8 (in mgf_mask)
;;     23058022 (in mbedtls_rsa_rsassa_pss_sign)
;;     23058454 (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_starts proc
	c.beqz	a0,00000000230657D8

l230657C2:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230657D8

l230657C6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,16(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230657D8:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_update: 230657E0
;;   Called from:
;;     23057302 (in mgf_mask)
;;     2305730C (in mgf_mask)
;;     2305802C (in mbedtls_rsa_rsassa_pss_sign)
;;     23058036 (in mbedtls_rsa_rsassa_pss_sign)
;;     23058040 (in mbedtls_rsa_rsassa_pss_sign)
;;     2305845E (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058468 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058472 (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_update proc
	c.beqz	a0,00000000230657F8

l230657E2:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230657F8

l230657E6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230657F8:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_finish: 23065800
;;   Called from:
;;     23057314 (in mgf_mask)
;;     23058048 (in mbedtls_rsa_rsassa_pss_sign)
;;     2305847A (in mbedtls_rsa_rsassa_pss_verify_ext)
mbedtls_md_finish proc
	c.beqz	a0,0000000023065818

l23065802:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023065818

l23065806:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,24(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23065818:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md: 23065820
;;   Called from:
;;     230579A2 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057CAE (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2305E4F0 (in x509_crt_verify_top.isra.7)
;;     2305E738 (in x509_crt_verify_child)
mbedtls_md proc
	c.mv	a5,a0
	c.beqz	a0,000000002306583A

l23065824:
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

l2306583A:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_starts: 23065842
;;   Called from:
;;     23059ACA (in tls_prf_sha256)
;;     23059F48 (in mbedtls_ssl_derive_keys)
;;     23059F54 (in mbedtls_ssl_derive_keys)
mbedtls_md_hmac_starts proc
	c.beqz	a0,0000000023065914

l23065844:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002306591C

l23065858:
	c.lw	a0,8(a4)
	c.beqz	a4,000000002306591C

l2306585C:
	c.lw	a5,12(a4)
	c.mv	s1,a1
	c.mv	s3,a2
	bgeu	a4,a2,000000002306588A

l23065866:
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

l2306588A:
	c.lw	s0,0(a5)
	lw	s2,s0,+00000008
	addi	a1,zero,+00000036
	c.lw	a5,12(a2)
	c.mv	a0,s2
	add	s4,s2,a2
	jal	ra,0000000023070EB8
	c.lw	s0,0(a5)
	addi	a1,zero,+0000005C
	c.mv	a0,s4
	c.lw	a5,12(a2)
	jal	ra,0000000023070EB8
	c.li	a5,00000000

l230658B0:
	bne	s3,a5,00000000230658E8

l230658B4:
	c.mv	a5,sp

l230658B6:
	sb	zero,a5,+00000000
	c.addi4spn	a4,00000020
	c.addi	a5,00000001
	bne	a5,a4,00000000230658B6

l230658C2:
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

l230658D8:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230658E8:
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
	c.j	00000000230658B0

l23065914:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

l2306591C:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.j	00000000230658D8

;; mbedtls_md_hmac_update: 23065924
;;   Called from:
;;     23059AD6 (in tls_prf_sha256)
;;     23059B2C (in tls_prf_sha256)
;;     23059B44 (in tls_prf_sha256)
;;     2305B068 (in mbedtls_ssl_write_record)
;;     2305B078 (in mbedtls_ssl_write_record)
;;     2305B088 (in mbedtls_ssl_write_record)
;;     2305B09C (in mbedtls_ssl_write_record)
;;     2305CC7E (in mbedtls_ssl_read_record_layer)
;;     2305CC8C (in mbedtls_ssl_read_record_layer)
;;     2305CC9A (in mbedtls_ssl_read_record_layer)
;;     2305CCAA (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_update proc
	c.beqz	a0,0000000023065940

l23065926:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023065940

l2306592A:
	c.lw	a0,8(a4)
	c.beqz	a4,0000000023065940

l2306592E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23065940:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_finish: 23065948
;;   Called from:
;;     23059ADE (in tls_prf_sha256)
;;     23059B34 (in tls_prf_sha256)
;;     23059B4C (in tls_prf_sha256)
;;     2305B0B0 (in mbedtls_ssl_write_record)
;;     2305CCBA (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_finish proc
	c.beqz	a0,00000000230659A4

l2306594A:
	c.lw	a0,0(a4)
	c.beqz	a4,00000000230659A4

l2306594E:
	c.lw	a0,8(a5)
	c.beqz	a5,00000000230659A4

l23065952:
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

l230659A4:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_hmac_reset: 230659AC
;;   Called from:
;;     23059B22 (in tls_prf_sha256)
;;     23059B3A (in tls_prf_sha256)
;;     2305B0BA (in mbedtls_ssl_write_record)
;;     2305CCDC (in mbedtls_ssl_read_record_layer)
mbedtls_md_hmac_reset proc
	c.beqz	a0,00000000230659DC

l230659AE:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230659DC

l230659B2:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,8(a1)
	c.swsp	a1,00000084
	c.beqz	a1,00000000230659E4

l230659BE:
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

l230659D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230659DC:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

l230659E4:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.j	00000000230659D4

;; mbedtls_md_process: 230659EC
;;   Called from:
;;     2305CCCA (in mbedtls_ssl_read_record_layer)
mbedtls_md_process proc
	c.beqz	a0,0000000023065A04

l230659EE:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023065A04

l230659F2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.lw	a5,44(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23065A04:
	c.lui	a0,FFFFB000
	addi	a0,a0,-00000100
	c.jr	ra

;; mbedtls_md_get_size: 23065A0C
;;   Called from:
;;     230565AE (in mbedtls_pk_verify)
;;     23056612 (in mbedtls_pk_sign)
;;     230572D2 (in mgf_mask)
;;     23057956 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057C4E (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057F94 (in mbedtls_rsa_rsassa_pss_sign)
;;     23057FA6 (in mbedtls_rsa_rsassa_pss_sign)
;;     23058142 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2305837A (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2305838A (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230585C8 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23059A76 (in tls_prf_sha256)
;;     23059EAE (in mbedtls_ssl_derive_keys)
;;     2305E55C (in x509_crt_verify_top.isra.7)
;;     2305E766 (in x509_crt_verify_child)
mbedtls_md_get_size proc
	c.beqz	a0,0000000023065A14

l23065A0E:
	lbu	a0,a0,+00000008
	c.jr	ra

l23065A14:
	c.li	a0,00000000
	c.jr	ra

;; md5_process_wrap: 23065A18
md5_process_wrap proc
	jal	zero,000000002306627C

;; md5_clone_wrap: 23065A1C
md5_clone_wrap proc
	jal	zero,0000000023066238

;; md5_ctx_free: 23065A20
md5_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023066224
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; md5_ctx_alloc: 23065A38
md5_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000058
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023065A50

l23065A4C:
	jal	ra,000000002306621A

l23065A50:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; md5_finish_wrap: 23065A5A
md5_finish_wrap proc
	jal	zero,0000000023066F20

;; md5_update_wrap: 23065A5E
md5_update_wrap proc
	jal	zero,0000000023066F18

;; md5_starts_wrap: 23065A62
md5_starts_wrap proc
	jal	zero,000000002306624A

;; sha1_process_wrap: 23065A66
sha1_process_wrap proc
	jal	zero,000000002306709E

;; sha1_clone_wrap: 23065A6A
sha1_clone_wrap proc
	jal	zero,0000000023067050

;; sha1_ctx_free: 23065A6E
sha1_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306703C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; sha1_ctx_alloc: 23065A86
sha1_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+0000005C
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023065A9E

l23065A9A:
	jal	ra,0000000023067032

l23065A9E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sha1_finish_wrap: 23065AA8
sha1_finish_wrap proc
	jal	zero,0000000023068740

;; sha1_update_wrap: 23065AAC
sha1_update_wrap proc
	jal	zero,0000000023068738

;; sha1_starts_wrap: 23065AB0
sha1_starts_wrap proc
	jal	zero,0000000023067062

;; sha224_process_wrap: 23065AB4
sha224_process_wrap proc
	jal	zero,00000000230587DA

;; sha224_clone_wrap: 23065AB8
sha224_clone_wrap proc
	jal	zero,000000002305871A

;; sha224_ctx_free: 23065ABC
sha224_ctx_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023058706
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; sha224_ctx_alloc: 23065AD4
sha224_ctx_alloc proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000074
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023065AEC

l23065AE8:
	jal	ra,00000000230586FC

l23065AEC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sha224_wrap: 23065AF6
sha224_wrap proc
	c.li	a3,00000001
	jal	zero,0000000023059694

;; sha256_wrap: 23065AFC
sha256_wrap proc
	c.li	a3,00000000
	jal	zero,0000000023059694

;; sha224_finish_wrap: 23065B02
sha224_finish_wrap proc
	jal	zero,0000000023059508

;; sha224_update_wrap: 23065B06
sha224_update_wrap proc
	jal	zero,0000000023059500

;; sha224_starts_wrap: 23065B0A
sha224_starts_wrap proc
	c.li	a1,00000001
	jal	zero,000000002305872C

;; sha256_starts_wrap: 23065B10
sha256_starts_wrap proc
	c.li	a1,00000000
	jal	zero,000000002305872C

;; oid_sig_alg_from_asn1.part.0: 23065B16
;;   Called from:
;;     23065C56 (in mbedtls_oid_get_sig_alg_desc)
;;     23065C86 (in mbedtls_oid_get_sig_alg)
oid_sig_alg_from_asn1.part.0 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,s0,+00000578

l23065B28:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065B30

l23065B2C:
	c.li	s0,00000000
	c.j	0000000023065B44

l23065B30:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065B3C

l23065B38:
	c.addi	s0,00000014
	c.j	0000000023065B28

l23065B3C:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065B38

l23065B44:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_oid_get_attr_short_name: 23065B50
;;   Called from:
;;     2306C412 (in mbedtls_x509_dn_gets)
mbedtls_oid_get_attr_short_name proc
	c.bnez	a0,0000000023065B86

l23065B52:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065B58:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065B76

l23065B60:
	c.addi	s0,00000014

l23065B62:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065B58

l23065B66:
	addi	a0,zero,-0000002E

l23065B6A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065B76:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065B60

l23065B7E:
	c.lw	s0,16(a5)
	sw	a5,s2,+00000000
	c.j	0000000023065B6A

l23065B86:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+0000067C
	c.j	0000000023065B62

;; mbedtls_oid_get_x509_ext_type: 23065B9E
;;   Called from:
;;     2305EF82 (in mbedtls_x509_crt_parse_der)
mbedtls_oid_get_x509_ext_type proc
	c.bnez	a0,0000000023065BD4

l23065BA0:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065BA6:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065BC4

l23065BAE:
	c.addi	s0,00000014

l23065BB0:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065BA6

l23065BB4:
	addi	a0,zero,-0000002E

l23065BB8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065BC4:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065BAE

l23065BCC:
	c.lw	s0,16(a5)
	sw	a5,s2,+00000000
	c.j	0000000023065BB8

l23065BD4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+00000604
	c.j	0000000023065BB0

;; mbedtls_oid_get_extended_key_usage: 23065BEC
;;   Called from:
;;     2305E28C (in mbedtls_x509_crt_info)
mbedtls_oid_get_extended_key_usage proc
	c.bnez	a0,0000000023065C22

l23065BEE:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065BF4:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065C12

l23065BFC:
	c.addi	s0,00000010

l23065BFE:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065BF4

l23065C02:
	addi	a0,zero,-0000002E

l23065C06:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065C12:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065BFC

l23065C1A:
	c.lw	s0,12(a5)
	sw	a5,s2,+00000000
	c.j	0000000023065C06

l23065C22:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+00000454
	c.j	0000000023065BFE

;; mbedtls_oid_get_sig_alg_desc: 23065C3A
;;   Called from:
;;     2306C598 (in mbedtls_x509_sig_alg_gets)
mbedtls_oid_get_sig_alg_desc proc
	c.bnez	a0,0000000023065C4E

l23065C3C:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065C42:
	addi	a0,zero,-0000002E

l23065C46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23065C4E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023065B16
	c.beqz	a0,0000000023065C42

l23065C5C:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.sw	s0,0(a5)
	c.j	0000000023065C46

;; mbedtls_oid_get_sig_alg: 23065C64
;;   Called from:
;;     2306C2A6 (in mbedtls_x509_get_sig_alg)
mbedtls_oid_get_sig_alg proc
	c.bnez	a0,0000000023065C7A

l23065C66:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065C6C:
	addi	a0,zero,-0000002E

l23065C70:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23065C7A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.mv	s1,a1
	jal	ra,0000000023065B16
	c.beqz	a0,0000000023065C6C

l23065C8C:
	lbu	a5,a0,+00000010
	sb	a5,s1,+00000000
	lbu	a5,a0,+00000011
	c.li	a0,00000000
	sb	a5,s0,+00000000
	c.j	0000000023065C70

;; mbedtls_oid_get_pk_alg: 23065CA0
;;   Called from:
;;     23056B12 (in pk_get_pk_alg)
mbedtls_oid_get_pk_alg proc
	c.bnez	a0,0000000023065CD8

l23065CA2:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065CA8:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065CC6

l23065CB0:
	c.addi	s0,00000014

l23065CB2:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065CA8

l23065CB6:
	addi	a0,zero,-0000002E

l23065CBA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065CC6:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065CB0

l23065CCE:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023065CBA

l23065CD8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+00000528
	c.j	0000000023065CB2

;; mbedtls_oid_get_ec_grp: 23065CF0
;;   Called from:
;;     230567F0 (in pk_use_ecparams)
mbedtls_oid_get_ec_grp proc
	c.bnez	a0,0000000023065D28

l23065CF2:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065CF8:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065D16

l23065D00:
	c.addi	s0,00000014

l23065D02:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065CF8

l23065D06:
	addi	a0,zero,-0000002E

l23065D0A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065D16:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065D00

l23065D1E:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023065D0A

l23065D28:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+00000404
	c.j	0000000023065D02

;; mbedtls_oid_get_md_alg: 23065D40
;;   Called from:
;;     23058622 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
mbedtls_oid_get_md_alg proc
	c.bnez	a0,0000000023065D78

l23065D42:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065D48:
	c.lw	s1,4(a5)
	c.lw	s0,4(a2)
	beq	a2,a5,0000000023065D66

l23065D50:
	c.addi	s0,00000014

l23065D52:
	c.lw	s0,0(a0)
	c.bnez	a0,0000000023065D48

l23065D56:
	addi	a0,zero,-0000002E

l23065D5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23065D66:
	c.lw	s1,8(a1)
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023065D50

l23065D6E:
	lbu	a5,s0,+00000010
	sb	a5,s2,+00000000
	c.j	0000000023065D5A

l23065D78:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002308B
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a1
	c.mv	s1,a0
	addi	s0,s0,+000004C4
	c.j	0000000023065D52

;; mbedtls_oid_get_oid_by_md: 23065D90
;;   Called from:
;;     23058136 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
mbedtls_oid_get_oid_by_md proc
	lui	a5,0002308B
	addi	a5,a5,+000004C4

l23065D98:
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023065DA2

l23065D9C:
	addi	a0,zero,-0000002E
	c.jr	ra

l23065DA2:
	lbu	a3,a5,+00000010
	bne	a3,a0,0000000023065DB4

l23065DAA:
	c.sw	a1,0(a4)
	c.lw	a5,4(a5)
	c.li	a0,00000000
	c.sw	a2,0(a5)
	c.jr	ra

l23065DB4:
	c.addi	a5,00000014
	c.j	0000000023065D98

;; pem_aes_decrypt: 23065DB8
;;   Called from:
;;     23066176 (in mbedtls_pem_read_buffer)
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
	jal	ra,000000002305F996
	c.addi4spn	a0,00000030
	c.jal	000000002306621A
	c.addi4spn	a0,00000030
	c.jal	000000002306624A
	c.mv	a2,s4
	c.mv	a1,s3
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F18
	c.li	a2,00000008
	c.mv	a1,s2
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F18
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F20
	c.addi4spn	s0,00000010
	c.li	a5,00000010
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s0
	bne	s1,a5,0000000023065E80

l23065E1E:
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000030
	c.jal	0000000023066224
	c.mv	a5,sp

l23065E28:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023065E28

l23065E32:
	slli	a2,s1,00000003
	c.mv	a1,s0
	c.addi4spn	a0,00000088
	jal	ra,000000002305FC44
	c.mv	a5,s5
	c.mv	a4,s5
	c.mv	a3,s2
	c.mv	a2,s6
	c.li	a1,00000000
	c.addi4spn	a0,00000088
	jal	ra,000000002306060C
	c.addi4spn	a0,00000088
	jal	ra,000000002305F9A0
	c.li	a5,FFFFFFFF

l23065E56:
	c.addi	s1,FFFFFFFF
	bne	s1,a5,0000000023065ED6

l23065E5C:
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

l23065E80:
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000030
	c.jal	000000002306624A
	c.li	a2,00000010
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F18
	c.mv	a2,s4
	c.mv	a1,s3
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F18
	c.li	a2,00000008
	c.mv	a1,s2
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F18
	c.mv	a1,sp
	c.addi4spn	a0,00000030
	jal	ra,0000000023066F20
	addi	a5,zero,+00000020
	c.li	a2,00000010
	beq	s1,a5,0000000023065EBC

l23065EB8:
	addi	a2,s1,-00000010

l23065EBC:
	c.mv	a1,sp
	c.addi4spn	a0,00000020
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000030
	c.jal	0000000023066224
	c.mv	a5,sp

l23065ECA:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,s0,0000000023065ECA

l23065ED4:
	c.j	0000000023065E32

l23065ED6:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023065E56

;; mbedtls_pem_init: 23065EDE
;;   Called from:
;;     23056EE6 (in mbedtls_pk_parse_key)
;;     2305F268 (in mbedtls_x509_crt_parse)
mbedtls_pem_init proc
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_pem_read_buffer: 23065EE6
;;   Called from:
;;     23056F80 (in mbedtls_pk_parse_key)
;;     23057024 (in mbedtls_pk_parse_key)
;;     23057080 (in mbedtls_pk_parse_key)
;;     2305F27E (in mbedtls_x509_crt_parse)
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
	beq	a0,zero,00000000230661D6

l23065F00:
	c.mv	s4,a0
	c.mv	a0,a3
	c.mv	s8,a1
	c.mv	s7,a6
	c.mv	s5,a5
	c.mv	s3,a4
	c.mv	s2,a3
	c.mv	s6,a2
	jal	ra,0000000023071A84
	c.mv	s0,a0
	c.bnez	a0,0000000023065F38

l23065F18:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000080

l23065F1E:
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

l23065F38:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,0000000023071A84
	c.mv	s1,a0
	c.beqz	a0,0000000023065F18

l23065F44:
	bgeu	s0,a0,0000000023065F18

l23065F48:
	c.mv	a0,s8
	jal	ra,000000002307132C
	c.add	s0,a0
	lbu	a4,s0,+00000000
	addi	a5,zero,+00000020
	bne	a4,a5,0000000023065F5E

l23065F5C:
	c.addi	s0,00000001

l23065F5E:
	lbu	a4,s0,+00000000
	c.li	a5,0000000D
	bne	a4,a5,0000000023065F6A

l23065F68:
	c.addi	s0,00000001

l23065F6A:
	lbu	a4,s0,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023065F18

l23065F74:
	c.mv	a0,s6
	jal	ra,000000002307132C
	add	a2,s1,a0
	lbu	a4,a2,+00000000
	addi	a5,zero,+00000020
	addi	s8,s0,+00000001
	bne	a4,a5,0000000023065F90

l23065F8E:
	c.addi	a2,00000001

l23065F90:
	lbu	a4,a2,+00000000
	c.li	a5,0000000D
	bne	a4,a5,0000000023065F9C

l23065F9A:
	c.addi	a2,00000001

l23065F9C:
	lbu	a4,a2,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023065FA8

l23065FA6:
	c.addi	a2,00000001

l23065FA8:
	sub	a2,a2,s2
	sw	a2,s7,+00000000
	sub	a5,s1,s8
	c.li	a4,00000015
	bge	a4,a5,0000000023066148

l23065FBA:
	lui	a1,0002308C
	c.li	a2,00000016
	addi	a1,a1,-0000004C
	c.mv	a0,s8
	jal	ra,0000000023070BF4
	bne	a0,zero,0000000023066148

l23065FCE:
	lbu	a5,s0,+00000017
	c.li	a4,0000000D
	addi	s2,s0,+00000017
	bne	a5,a4,0000000023065FE4

l23065FDC:
	lbu	a5,s0,+00000018
	addi	s2,s0,+00000018

l23065FE4:
	c.li	a4,0000000A
	beq	a5,a4,0000000023065FF2

l23065FEA:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000100
	c.j	0000000023065F1E

l23065FF2:
	addi	s0,s2,+00000001
	sub	s6,s1,s0
	c.li	a5,0000000D
	blt	a5,s6,0000000023066008

l23066000:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000280
	c.j	0000000023065F1E

l23066008:
	lui	a1,0002308C
	c.li	a2,0000000E
	addi	a1,a1,-00000034
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023066000

l2306601A:
	c.li	a5,00000015
	bge	a5,s6,0000000023066000

l23066020:
	lui	a1,0002308C
	c.li	a2,00000016
	addi	a1,a1,-00000024
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.li	s6,00000005
	c.beqz	a0,000000002306605C

l23066034:
	lui	a1,0002308C
	c.li	a2,00000016
	addi	a1,a1,-0000000C
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.li	s6,00000006
	c.beqz	a0,000000002306605C

l23066048:
	lui	a1,0002308C
	c.li	a2,00000016
	addi	a1,a1,+0000000C
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023066000

l2306605A:
	c.li	s6,00000007

l2306605C:
	addi	a5,s2,+00000017
	sub	a5,s1,a5
	c.li	a4,0000001F
	blt	a4,a5,0000000023066072

l2306606A:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000200
	c.j	0000000023065F1E

l23066072:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	c.li	a5,00000000
	c.li	a6,00000009
	c.li	a2,00000005
	addi	a1,zero,+00000020

l23066086:
	add	a4,s2,a5
	lbu	a4,a4,+00000017
	addi	a3,a4,-00000030
	andi	a0,a3,+000000FF
	bgeu	a6,a0,00000000230660AA

l2306609A:
	addi	a3,a4,-00000041
	andi	a3,a3,+000000FF
	bltu	a2,a3,0000000023066136

l230660A6:
	addi	a3,a4,-00000037

l230660AA:
	andi	a4,a5,+00000001
	c.bnez	a4,00000000230660B2

l230660B0:
	c.slli	a3,04

l230660B2:
	srli	a4,a5,00000001
	c.addi4spn	a0,00000010
	c.add	a4,a0
	lbu	a0,a4,+00000000
	c.addi	a5,00000001
	c.or	a3,a0
	sb	a3,a4,+00000000
	bne	a5,a1,0000000023066086

l230660CA:
	lbu	a4,s2,+00000037
	c.li	a5,0000000D
	addi	a3,s2,+00000038
	beq	a4,a5,00000000230660DC

l230660D8:
	addi	a3,s2,+00000037

l230660DC:
	lbu	a4,a3,+00000000
	c.li	a5,0000000A
	bne	a4,a5,0000000023065FEA

l230660E6:
	addi	s8,a3,+00000001
	c.li	s7,00000001

l230660EC:
	bgeu	s8,s1,0000000023065FEA

l230660F0:
	sub	s1,s1,s8
	c.mv	a4,s1
	c.mv	a3,s8
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002306C612
	addi	a5,zero,-0000002C
	beq	a0,a5,00000000230661DE

l2306610A:
	c.lwsp	a2,00000064
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.mv	s2,a0
	c.beqz	a0,00000000230661E6

l23066116:
	c.lwsp	a2,00000064
	c.mv	a4,s1
	c.mv	a3,s8
	c.addi4spn	a2,0000000C
	jal	ra,000000002306C612
	c.mv	s0,a0
	c.beqz	a0,000000002306614E

l23066126:
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.lui	a5,FFFFF000
	addi	a5,a5,-00000100
	c.add	s0,a5
	c.j	0000000023065F1E

l23066136:
	addi	a3,a4,-00000061
	andi	a3,a3,+000000FF
	bltu	a2,a3,000000002306606A

l23066142:
	addi	a3,a4,-00000057
	c.j	00000000230660AA

l23066148:
	c.li	s6,00000000
	c.li	s7,00000000
	c.j	00000000230660EC

l2306614E:
	beq	s7,zero,00000000230661CA

l23066152:
	bne	s3,zero,0000000023066164

l23066156:
	c.mv	a0,s2
	c.lui	s0,FFFFF000
	jal	ra,0000000023032272
	addi	s0,s0,-00000300
	c.j	0000000023065F1E

l23066164:
	c.li	a5,00000005
	c.lwsp	a2,000000A4
	bne	s6,a5,00000000230661A8

l2306616C:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	c.li	a1,00000010

l23066174:
	c.addi4spn	a0,00000010
	jal	ra,0000000023065DB8

l2306617A:
	c.lwsp	a2,000000C4
	c.li	a5,00000002
	bgeu	a5,a4,000000002306619A

l23066182:
	lbu	a4,s2,+00000000
	addi	a5,zero,+00000030
	bne	a4,a5,000000002306619A

l2306618E:
	lbu	a4,s2,+00000001
	addi	a5,zero,+00000083
	bgeu	a5,a4,00000000230661CA

l2306619A:
	c.mv	a0,s2
	c.lui	s0,FFFFF000
	jal	ra,0000000023032272
	addi	s0,s0,-00000380
	c.j	0000000023065F1E

l230661A8:
	c.li	a5,00000006
	bne	s6,a5,00000000230661B8

l230661AE:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	c.li	a1,00000018
	c.j	0000000023066174

l230661B8:
	c.li	a5,00000007
	bne	s6,a5,000000002306617A

l230661BE:
	c.mv	a5,s5
	c.mv	a4,s3
	c.mv	a2,s2
	addi	a1,zero,+00000020
	c.j	0000000023066174

l230661CA:
	c.lwsp	a2,000000E4
	sw	s2,s4,+00000000
	sw	a5,s4,+00000004
	c.j	0000000023065F1E

l230661D6:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000480
	c.j	0000000023065F1E

l230661DE:
	c.lui	s0,FFFFF000
	addi	s0,s0,-0000012C
	c.j	0000000023065F1E

l230661E6:
	c.lui	s0,FFFFF000
	addi	s0,s0,-00000180
	c.j	0000000023065F1E

;; mbedtls_pem_free: 230661EE
;;   Called from:
;;     23056FD2 (in mbedtls_pk_parse_key)
;;     2305F29C (in mbedtls_x509_crt_parse)
;;     2305F2B2 (in mbedtls_x509_crt_parse)
mbedtls_pem_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lw	a0,0(a0)
	jal	ra,0000000023032272
	c.lw	s0,8(a0)
	jal	ra,0000000023032272
	addi	a5,s0,+0000000C

l23066206:
	bne	s0,a5,0000000023066212

l2306620A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23066212:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023066206

;; mbedtls_md5_init: 2306621A
;;   Called from:
;;     23065A4C (in md5_ctx_alloc)
;;     23065DEE (in pem_aes_decrypt)
;;     23067004 (in mbedtls_md5)
mbedtls_md5_init proc
	addi	a2,zero,+00000058
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_md5_free: 23066224
;;   Called from:
;;     23065A28 (in md5_ctx_free)
;;     23065E24 (in pem_aes_decrypt)
;;     23065EC6 (in pem_aes_decrypt)
;;     23067024 (in mbedtls_md5)
mbedtls_md5_free proc
	addi	a5,a0,+00000058
	c.bnez	a0,0000000023066232

l2306622A:
	c.jr	ra

l2306622C:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l23066232:
	bne	a0,a5,000000002306622C

l23066236:
	c.j	000000002306622A

;; mbedtls_md5_clone: 23066238
;;   Called from:
;;     23065A1C (in md5_clone_wrap)
mbedtls_md5_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000058
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_md5_starts: 2306624A
;;   Called from:
;;     23065A62 (in md5_starts_wrap)
;;     23065DF2 (in pem_aes_decrypt)
;;     23065E86 (in pem_aes_decrypt)
;;     2306700A (in mbedtls_md5)
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

;; mbedtls_md5_process: 2306627C
;;   Called from:
;;     23065A18 (in md5_process_wrap)
;;     23066EAC (in mbedtls_md5_update.part.0)
;;     23066EC2 (in mbedtls_md5_update.part.0)
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

;; mbedtls_md5_update.part.0: 23066E56
;;   Called from:
;;     23066F1A (in mbedtls_md5_update)
;;     23066F68 (in mbedtls_md5_finish)
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
	bgeu	a5,a2,0000000023066E82

l23066E7C:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l23066E82:
	beq	s3,zero,0000000023066EB4

l23066E86:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,0000000023066EB4

l23066E92:
	addi	s5,s1,+00000018
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,0000000023070C7C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,000000002306627C
	c.add	s2,s4
	c.li	s3,00000000

l23066EB4:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	0000000023066ECA

l23066EC0:
	c.mv	a0,s1
	jal	ra,000000002306627C
	addi	s4,s4,-00000040

l23066ECA:
	sub	a1,s6,s4
	bltu	s5,s4,0000000023066EC0

l23066ED2:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,0000000023066F04

l23066EE8:
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
	jal	zero,0000000023070C7C

l23066F04:
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

;; mbedtls_md5_update: 23066F18
;;   Called from:
;;     23065A5E (in md5_update_wrap)
;;     23065DFA (in pem_aes_decrypt)
;;     23065E04 (in pem_aes_decrypt)
;;     23065E8E (in pem_aes_decrypt)
;;     23065E98 (in pem_aes_decrypt)
;;     23065EA2 (in pem_aes_decrypt)
;;     23066F5E (in mbedtls_md5_finish)
;;     23067016 (in mbedtls_md5)
mbedtls_md5_update proc
	c.beqz	a2,0000000023066F1E

l23066F1A:
	jal	zero,0000000023066E56

l23066F1E:
	c.jr	ra

;; mbedtls_md5_finish: 23066F20
;;   Called from:
;;     23065A5A (in md5_finish_wrap)
;;     23065E0C (in pem_aes_decrypt)
;;     23065EAA (in pem_aes_decrypt)
;;     2306701E (in mbedtls_md5)
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
	bltu	a5,a2,0000000023066FEE

l23066F4C:
	addi	a5,zero,+00000038

l23066F50:
	lui	a1,0002308C
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,+00000024
	jal	ra,0000000023066F18
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,0000000023066E56
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

l23066FEE:
	addi	a5,zero,+00000078
	c.j	0000000023066F50

;; mbedtls_md5: 23066FF4
mbedtls_md5 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000018
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a1,00000084
	c.mv	s0,a2
	jal	ra,000000002306621A
	c.addi4spn	a0,00000018
	jal	ra,000000002306624A
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000018
	c.mv	a2,a1
	c.mv	a1,s1
	jal	ra,0000000023066F18
	c.mv	a1,s0
	c.addi4spn	a0,00000018
	jal	ra,0000000023066F20
	c.addi4spn	a0,00000018
	jal	ra,0000000023066224
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; mbedtls_sha1_init: 23067032
;;   Called from:
;;     23065A9A (in sha1_ctx_alloc)
;;     2306887E (in mbedtls_sha1)
mbedtls_sha1_init proc
	addi	a2,zero,+0000005C
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_sha1_free: 2306703C
;;   Called from:
;;     23065A76 (in sha1_ctx_free)
;;     2306889E (in mbedtls_sha1)
mbedtls_sha1_free proc
	addi	a5,a0,+0000005C
	c.bnez	a0,000000002306704A

l23067042:
	c.jr	ra

l23067044:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l2306704A:
	bne	a0,a5,0000000023067044

l2306704E:
	c.j	0000000023067042

;; mbedtls_sha1_clone: 23067050
;;   Called from:
;;     23065A6A (in sha1_clone_wrap)
mbedtls_sha1_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+0000005C
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_sha1_starts: 23067062
;;   Called from:
;;     23065AB0 (in sha1_starts_wrap)
;;     23068884 (in mbedtls_sha1)
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

;; mbedtls_sha1_process: 2306709E
;;   Called from:
;;     23065A66 (in sha1_process_wrap)
;;     230686CC (in mbedtls_sha1_update.part.0)
;;     230686E2 (in mbedtls_sha1_update.part.0)
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

;; mbedtls_sha1_update.part.0: 23068676
;;   Called from:
;;     2306873A (in mbedtls_sha1_update)
;;     230687C4 (in mbedtls_sha1_finish)
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
	bgeu	a5,a2,00000000230686A2

l2306869C:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l230686A2:
	beq	s3,zero,00000000230686D4

l230686A6:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,00000000230686D4

l230686B2:
	addi	s5,s1,+0000001C
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,0000000023070C7C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,000000002306709E
	c.add	s2,s4
	c.li	s3,00000000

l230686D4:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	00000000230686EA

l230686E0:
	c.mv	a0,s1
	jal	ra,000000002306709E
	addi	s4,s4,-00000040

l230686EA:
	sub	a1,s6,s4
	bltu	s5,s4,00000000230686E0

l230686F2:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,0000000023068724

l23068708:
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
	jal	zero,0000000023070C7C

l23068724:
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

;; mbedtls_sha1_update: 23068738
;;   Called from:
;;     23065AAC (in sha1_update_wrap)
;;     230687BA (in mbedtls_sha1_finish)
;;     23068890 (in mbedtls_sha1)
mbedtls_sha1_update proc
	c.beqz	a2,000000002306873E

l2306873A:
	jal	zero,0000000023068676

l2306873E:
	c.jr	ra

;; mbedtls_sha1_finish: 23068740
;;   Called from:
;;     23065AA8 (in sha1_finish_wrap)
;;     23068898 (in mbedtls_sha1)
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
	bltu	a5,a2,0000000023068868

l230687A8:
	addi	a5,zero,+00000038

l230687AC:
	lui	a1,0002308C
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,+00000064
	jal	ra,0000000023068738
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,0000000023068676
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

l23068868:
	addi	a5,zero,+00000078
	c.j	00000000230687AC

;; mbedtls_sha1: 2306886E
mbedtls_sha1 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000014
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a1,00000084
	c.mv	s0,a2
	jal	ra,0000000023067032
	c.addi4spn	a0,00000014
	jal	ra,0000000023067062
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000014
	c.mv	a2,a1
	c.mv	a1,s1
	jal	ra,0000000023068738
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,0000000023068740
	c.addi4spn	a0,00000014
	jal	ra,000000002306703C
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; mbedtls_ssl_ciphersuite_from_id: 230688AC
;;   Called from:
;;     23068918 (in mbedtls_ssl_list_ciphersuites)
;;     2306893E (in mbedtls_ssl_get_ciphersuite_name)
;;     23068E72 (in mbedtls_ssl_handshake_client_step)
;;     2306B0F0 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_ciphersuite_from_id proc
	lui	a5,0002308C
	addi	a5,a5,+000000A4

l230688B4:
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230688BE

l230688B8:
	c.li	a5,00000000

l230688BA:
	c.mv	a0,a5
	c.jr	ra

l230688BE:
	beq	a4,a0,00000000230688BA

l230688C2:
	addi	a5,a5,+00000020
	c.j	00000000230688B4

;; mbedtls_ssl_list_ciphersuites: 230688C8
;;   Called from:
;;     2305ABFA (in mbedtls_ssl_config_defaults)
mbedtls_ssl_list_ciphersuites proc
	lui	a5,0004200E
	lw	a4,a5,+0000001C
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	lui	s4,00042019
	c.beqz	a4,00000000230688FC

l230688E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	addi	a0,s4,-000001C0
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230688FC:
	addi	s0,s4,-000001C0
	lui	s1,0002308C
	addi	s2,a5,+0000001C
	addi	s1,s1,+00000164
	addi	s5,s0,+00000014
	c.j	0000000023068926

l23068912:
	bgeu	s0,s5,000000002306892E

l23068916:
	c.mv	a0,s3
	jal	ra,00000000230688AC
	c.beqz	a0,0000000023068924

l2306891E:
	sw	s3,s0,+00000000
	c.addi	s0,00000004

l23068924:
	c.addi	s1,00000004

l23068926:
	lw	s3,s1,+00000000
	bne	s3,zero,0000000023068912

l2306892E:
	c.li	a5,00000001
	sw	zero,s0,+00000000
	sw	a5,s2,+00000000
	c.j	00000000230688E6

;; mbedtls_ssl_get_ciphersuite_name: 2306893A
;;   Called from:
;;     23059DC6 (in mbedtls_ssl_derive_keys)
;;     2305A4A4 (in mbedtls_ssl_get_ciphersuite)
mbedtls_ssl_get_ciphersuite_name proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230688AC
	c.beqz	a0,000000002306894C

l23068944:
	c.lw	a0,4(a0)

l23068946:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2306894C:
	lui	a0,00023089
	addi	a0,a0,+00000244
	c.j	0000000023068946

;; mbedtls_ssl_get_ciphersuite_sig_pk_alg: 23068956
;;   Called from:
;;     2306B17E (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_get_ciphersuite_sig_pk_alg proc
	lbu	a0,a0,+0000000A
	c.li	a5,0000000A
	bltu	a5,a0,0000000023068980

l23068960:
	c.li	a5,00000001
	sll	a5,a5,a0
	andi	a4,a5,+0000008E
	c.li	a0,00000001
	c.bnez	a4,0000000023068982

l2306896E:
	andi	a4,a5,+00000600
	c.li	a0,00000002
	c.bnez	a4,0000000023068982

l23068976:
	c.andi	a5,00000010
	sltu	a0,zero,a5
	c.slli	a0,02
	c.jr	ra

l23068980:
	c.li	a0,00000000

l23068982:
	c.jr	ra

;; mbedtls_ssl_own_key: 23068984
mbedtls_ssl_own_key proc
	c.lw	a0,48(a5)
	c.beqz	a5,000000002306898C

l23068988:
	c.lw	a5,8(a5)
	c.bnez	a5,0000000023068992

l2306898C:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,0000000023068994

l23068992:
	c.lw	a5,4(a5)

l23068994:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_hs_hdr_len.isra.0: 23068998
mbedtls_ssl_hs_hdr_len.isra.0 proc
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,00000000230689A4

l230689A0:
	c.li	a0,0000000C
	c.jr	ra

l230689A4:
	c.li	a0,00000004
	c.jr	ra

;; mbedtls_ssl_handshake_client_step: 230689A8
;;   Called from:
;;     2305A5C4 (in mbedtls_ssl_handshake_step)
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
	beq	a5,a4,0000000023068AF0

l230689CC:
	c.lw	a0,48(a4)
	c.mv	s11,a0
	beq	a4,zero,0000000023068AF0

l230689D4:
	lui	a4,0002308C
	c.lui	a3,00001000
	lui	s1,0002308A
	addi	a4,a4,+000004DC
	addi	a3,a3,-00000331
	addi	a2,s1,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.mv	a0,s11
	jal	ra,000000002305A0D0
	c.mv	s0,a0
	c.bnez	a0,0000000023068A62

l230689FA:
	lw	a5,s11,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,0000000023068A40

l23068A06:
	lw	a4,s11,+00000004
	c.li	a5,0000000C
	bne	a4,a5,0000000023068A20

l23068A10:
	lw	a5,s11,+00000030
	lw	a5,a5,+00000158
	c.beqz	a5,0000000023068A20

l23068A1A:
	c.li	a5,00000011
	sw	a5,s11,+00000004

l23068A20:
	lw	a5,s11,+00000004
	c.li	a4,00000011
	bgeu	a4,a5,0000000023068A2E

l23068A2A:
	jal	zero,000000002306A3FA

l23068A2E:
	lui	a3,0002308C
	slli	a4,a5,00000002
	addi	a3,a3,+00000490
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.jr	a4

l23068A40:
	lw	a5,s11,+00000030
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,0000000023068A06

l23068A4E:
	c.mv	a0,s11
	jal	ra,000000002305B494
	c.beqz	a0,0000000023068A06

l23068A56:
	c.mv	s0,a0
	c.j	0000000023068A62

l23068A5A:
	c.li	a4,00000001
	sw	a4,s11,+00000004
	c.mv	s0,a5

l23068A62:
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

l23068A82:
	lui	a4,0002308C
	addi	a4,a4,+000004F0
	addi	a3,zero,+000002CD
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lw	a5,s11,+00000000
	c.lw	a5,24(a4)
	c.bnez	a4,0000000023068AC2

l23068AA2:
	lui	a4,0002308C
	addi	a4,a4,+00000508
	addi	a3,zero,+000002D1
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,-00000400
	c.j	0000000023068A62

l23068AC2:
	lbu	a4,a5,+00000072
	sw	a4,s11,+00000008
	lbu	a4,a5,+00000073
	sw	a4,s11,+0000000C
	lbu	a0,a5,+00000070
	c.bnez	a0,0000000023068AF8

l23068AD8:
	lui	a4,0002308C
	addi	a4,a4,+00000518
	addi	a3,zero,+000002E0
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC

l23068AF0:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	0000000023068A62

l23068AF8:
	c.lw	a5,116(a2)
	lw	s5,s11,+000000A0
	lbu	a1,a5,+00000071
	c.srli	a2,00000001
	addi	a3,s5,+00000004
	c.andi	a2,00000001
	jal	ra,000000002305AD62
	lbu	a5,s5,+00000004
	lbu	a6,s5,+00000005
	lui	a4,0002308C
	addi	a4,a4,+00000570
	addi	a3,zero,+000002F3
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lw	a5,s11,+00000000
	lw	s2,s11,+00000030
	lhu	a4,a5,+00000074
	c.andi	a4,00000002
	beq	a4,zero,0000000023068DE2

l23068B40:
	lw	a4,s2,+00000024
	beq	a4,zero,0000000023068DE2

l23068B48:
	lw	a1,s11,+00000030
	addi	a5,s5,+00000006
	addi	a2,zero,+00000020
	addi	a1,a1,+000000D8
	c.mv	a0,a5
	c.swsp	a5,0000008C
	jal	ra,0000000023070C7C
	c.lwsp	t3,000000E4
	lui	a4,0002308C
	addi	a6,zero,+00000020
	addi	a4,a4,+00000594
	c.li	a1,00000003
	addi	a3,zero,+000002FC
	addi	a2,s1,+00000378
	c.mv	a0,s11
	jal	ra,00000000230630DE
	lw	a1,s11,+0000002C
	c.li	a5,00000010
	lw	a6,a1,+00000008
	addi	a4,a6,-00000010
	bltu	a5,a4,0000000023068B9A

l23068B90:
	lw	a5,s11,+00000030
	lw	a5,a5,+00000148
	c.bnez	a5,0000000023068B9C

l23068B9A:
	c.li	a6,00000000

l23068B9C:
	c.lw	a1,100(a5)
	c.beqz	a5,0000000023068BC8

l23068BA0:
	c.lw	a1,104(a5)
	c.beqz	a5,0000000023068BC8

l23068BA4:
	lw	a5,s11,+00000000
	addi	a2,zero,+00000020
	c.addi	a1,0000000C
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.jalr	a4
	c.mv	s0,a0
	bne	a0,zero,0000000023068A62

l23068BBA:
	lw	a5,s11,+0000002C
	addi	a4,zero,+00000020
	addi	a6,zero,+00000020
	c.sw	a5,8(a4)

l23068BC8:
	addi	s0,s5,+00000027
	sb	a6,s5,+00000026
	c.li	a5,00000000

l23068BD2:
	bne	a6,a5,0000000023068E18

l23068BD6:
	lui	a4,0002308C
	c.mv	a5,a6
	addi	a4,a4,+000005B0
	addi	a3,zero,+00000331
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	add	s4,s0,a6
	c.swsp	a6,0000008C
	jal	ra,0000000023062FCC
	c.lwsp	t3,00000008
	lui	a4,0002308C
	c.mv	a5,s0
	addi	a4,a4,+000005D4
	addi	a3,zero,+00000332
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,00000000230630DE
	lw	a5,s11,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,0000000023068C4A

l23068C1E:
	lw	a4,s11,+00000030
	addi	s0,s4,+00000001
	c.lw	a4,36(a5)
	bne	a5,zero,0000000023068E2E

l23068C2C:
	lui	a4,0002308C
	addi	a4,a4,+000005F0
	addi	a3,zero,+0000033C
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	sb	zero,s4,+00000000
	c.mv	s4,s0

l23068C4A:
	lw	a4,s11,+0000000C
	lw	a5,s11,+00000000
	addi	s3,s4,+00000002
	c.slli	a4,02
	c.add	a5,a4
	lw	s2,a5,+00000000
	c.li	s0,00000000
	lui	s6,0002308C

l23068C64:
	lw	a0,s2,+00000000
	bne	a0,zero,0000000023068E72

l23068C6C:
	c.li	a5,FFFFFFFF
	sb	a5,s3,+00000001
	addi	a5,s0,+00000001
	srli	a4,a5,00000007
	sb	zero,s3,+00000000
	sb	a4,s4,+00000000
	slli	a4,a5,00000001
	sb	a4,s4,+00000001
	lui	a4,0002308C
	addi	a4,a4,+00000648
	addi	a3,zero,+00000396
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lui	a4,0002308C
	c.li	a5,00000001
	addi	a4,a4,+0000066C
	addi	a3,zero,+000003B5
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lui	a4,0002308C
	c.li	a5,00000000
	addi	a4,a4,+0000068C
	addi	a3,zero,+000003B7
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	a5,00000001
	sb	a5,s3,+00000002
	sb	zero,s3,+00000003
	lw	a5,s11,+000000B4
	addi	s4,s3,+00000004
	addi	s6,s3,+00000006
	c.li	s7,00000000
	c.beqz	a5,0000000023068D44

l23068CF0:
	lw	s0,s11,+000000A0
	c.lui	a4,00004000
	addi	a2,s1,+00000378
	c.add	s0,a4
	lui	a4,0002308C
	addi	a4,a4,+000006AC
	addi	a3,zero,+00000048
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lw	a0,s11,+000000B4
	jal	ra,000000002307132C
	c.mv	a2,a0
	bltu	s0,s6,0000000023068D2A

l23068D1E:
	addi	s7,a0,+00000009
	sub	s0,s0,s6
	bgeu	s0,s7,0000000023068ED2

l23068D2A:
	lui	a4,0002308C
	addi	a4,a4,+000006DC
	addi	a3,zero,+0000004E
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	s7,00000000

l23068D44:
	lw	a5,s11,+00000000
	c.li	a4,00000003
	lbu	a3,a5,+00000071
	c.li	a5,00000000
	bne	a3,a4,0000000023068F3E

l23068D54:
	lui	a4,0002308C
	addi	a4,a4,+000006F0
	addi	a3,zero,+000000B2
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s2,s11,+000000A0
	jal	ra,0000000023062FCC
	lw	a5,s11,+00000000
	lw	s9,a5,+00000058
	c.li	a5,00000000

l23068D7A:
	slli	a4,a5,00000001
	c.add	a4,s9
	c.lw	a4,0(a4)
	bne	a4,zero,0000000023068F20

l23068D86:
	addi	s0,s7,+00000002
	c.lui	a4,00004000
	c.add	s0,s4
	c.add	a4,s2
	bltu	a4,s0,0000000023068F24

l23068D94:
	c.sub	a4,s0
	c.addi	a5,00000006
	bltu	a4,a5,0000000023068F24

l23068D9C:
	addi	s8,s0,+00000006
	c.li	a5,00000000
	c.li	s10,00000001

l23068DA4:
	slli	a4,a5,00000001
	c.add	a4,s9
	c.lw	a4,0(a0)
	addi	s2,a5,+00000002
	bne	a0,zero,00000000230690FC

l23068DB4:
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
	c.j	0000000023068F3E

l23068DE2:
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.li	a2,00000004
	addi	a1,s2,+000000D8
	c.jalr	a4
	c.mv	s0,a0
	c.bnez	a0,0000000023068E08

l23068DF2:
	lw	a5,s11,+00000000
	c.li	a2,0000001C
	addi	a1,s2,+000000DC
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.jalr	a4
	c.mv	s0,a0
	beq	a0,zero,0000000023068B48

l23068E08:
	lui	a4,0002308D
	c.mv	a5,s0
	addi	a4,a4,-0000004C
	addi	a3,zero,+000002F7
	c.j	00000000230690EE

l23068E18:
	lw	a4,s11,+0000002C
	c.add	a4,a5
	lbu	a3,a4,+0000000C
	add	a4,s5,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000027
	c.j	0000000023068BD2

l23068E2E:
	lbu	a6,a4,+00000028
	lui	a4,0002308C
	addi	a4,a4,+0000060C
	addi	a3,zero,+00000343
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,00000000230630DE
	lw	a5,s11,+00000030
	c.mv	a0,s0
	lbu	a5,a5,+00000028
	sb	a5,s4,+00000000
	lw	a5,s11,+00000030
	lbu	a2,a5,+00000028
	c.lw	a5,36(a1)
	jal	ra,0000000023070C7C
	lw	a5,s11,+00000030
	lbu	s4,a5,+00000028
	c.add	s4,s0
	c.j	0000000023068C4A

l23068E72:
	jal	ra,00000000230688AC
	c.beqz	a0,0000000023068ECE

l23068E78:
	lw	a5,s11,+00000000
	c.lw	a0,16(a3)
	lbu	a4,a5,+00000071
	blt	a4,a3,0000000023068ECE

l23068E86:
	lbu	a4,a5,+00000073
	c.lw	a0,24(a3)
	blt	a3,a4,0000000023068ECE

l23068E90:
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,0000000023068EA0

l23068E98:
	lbu	a5,a0,+0000001C
	c.andi	a5,00000004
	c.bnez	a5,0000000023068ECE

l23068EA0:
	lw	a5,s2,+00000000
	addi	a4,s6,+00000624
	addi	a3,zero,+00000375
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	lw	a5,s2,+00000000
	c.addi	s0,00000001
	c.addi	s3,00000002
	c.srai	a5,00000008
	sb	a5,s3,+00000FFE
	lw	a5,s2,+00000000
	sb	a5,s3,+00000FFF

l23068ECE:
	c.addi	s2,00000004
	c.j	0000000023068C64

l23068ED2:
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
	jal	ra,0000000023070C7C
	c.j	0000000023068D44

l23068F20:
	c.addi	a5,00000002
	c.j	0000000023068D7A

l23068F24:
	lui	a4,0002308C
	addi	a4,a4,+000006DC
	addi	a3,zero,+000000C0
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	a5,00000000

l23068F3E:
	c.add	s7,a5
	lw	a5,s11,+00000000
	lhu	a4,a5,+00000074
	c.li	a5,00000000
	andi	a4,a4,+000001C0
	c.beqz	a4,0000000023068F9E

l23068F50:
	lw	s2,s11,+000000A0
	addi	s0,s7,+00000002
	c.lui	a5,00004000
	lui	a4,0002308C
	c.add	s0,s4
	c.add	s2,a5
	addi	a4,a4,+00000724
	addi	a3,zero,+000001B8
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	bltu	s2,s0,0000000023068F84

l23068F7A:
	sub	s2,s2,s0
	c.li	a5,00000004
	bltu	a5,s2,000000002306910E

l23068F84:
	lui	a4,0002308C
	addi	a4,a4,+000006DC
	addi	a3,zero,+000001BC
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	a5,00000000

l23068F9E:
	c.add	s7,a5
	lw	a5,s11,+00000000
	c.li	s0,00000000
	c.lw	a5,96(a5)
	c.beqz	a5,0000000023069008

l23068FAA:
	lui	a4,0002308C
	addi	a4,a4,+00000758
	addi	a3,zero,+0000026C
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s8,s11,+000000A0
	jal	ra,0000000023062FCC
	lw	a5,s11,+00000000
	lw	s2,a5,+00000060

l23068FCE:
	lw	a0,s2,+00000000
	bne	a0,zero,0000000023069132

l23068FD6:
	addi	s2,s7,+00000002
	c.lui	a5,00004000
	c.add	s2,s4
	c.add	a5,s8
	bltu	a5,s2,0000000023068FEE

l23068FE4:
	sub	a5,a5,s2
	c.addi	s0,00000006
	bgeu	a5,s0,0000000023069142

l23068FEE:
	lui	a4,0002308C
	addi	a4,a4,+000006DC
	addi	a3,zero,+00000273
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	s0,00000000

l23069008:
	lw	a5,s11,+00000000
	c.add	s0,s7
	c.li	s7,00000000
	lhu	a5,a5,+00000074
	andi	a5,a5,+00000200
	c.beqz	a5,0000000023069072

l2306901A:
	lw	s9,s11,+000000A0
	c.lui	a5,00004000
	addi	s2,s0,+00000002
	c.add	s9,a5
	lw	a5,s11,+0000002C
	lui	a4,0002308C
	c.add	s2,s4
	addi	a4,a4,+0000077C
	addi	a3,zero,+0000023F
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	lw	s8,a5,+00000068
	jal	ra,0000000023062FCC
	bltu	s9,s2,0000000023069058

l2306904C:
	addi	s7,s8,+00000004
	sub	s9,s9,s2
	bgeu	s9,s7,00000000230691AE

l23069058:
	lui	a4,0002308C
	addi	a4,a4,+000006DC
	addi	a3,zero,+00000243
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.li	s7,00000000

l23069072:
	c.add	s0,s7
	lui	a4,0002308C
	c.mv	a5,s0
	addi	a4,a4,+000007D0
	addi	a3,zero,+000003FF
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	c.beqz	s0,00000000230690A0

l23069090:
	srli	a5,s0,00000008
	sb	a5,s3,+00000004
	sb	s0,s3,+00000005
	add	s4,s6,s0

l230690A0:
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
	c.beqz	a5,00000000230690D4

l230690CE:
	c.mv	a0,s11
	jal	ra,000000002305A2A4

l230690D4:
	c.mv	a0,s11
	jal	ra,000000002305AD8E
	c.mv	s0,a0
	beq	a0,zero,0000000023069202

l230690E0:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,zero,+00000415

l230690EE:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,000000002306305C
	c.j	0000000023068A62

l230690FC:
	jal	ra,000000002305AC90
	sb	a0,s8,+00000000
	sb	s10,s8,+00000001
	c.mv	a5,s2
	c.addi	s8,00000002
	c.j	0000000023068DA4

l2306910E:
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
	c.j	0000000023068F9E

l23069132:
	jal	ra,000000002307132C
	andi	a0,a0,+000000FF
	c.addi	a0,00000001
	c.add	s0,a0
	c.addi	s2,00000004
	c.j	0000000023068FCE

l23069142:
	c.li	a5,00000010
	sb	zero,s2,+00000000
	sb	a5,s2,+00000001
	lw	a5,s11,+00000000
	addi	s0,s2,+00000006
	lw	s8,a5,+00000060

l23069158:
	lw	a0,s8,+00000000
	c.bnez	a0,000000002306918A

l2306915E:
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
	c.j	0000000023069008

l2306918A:
	jal	ra,000000002307132C
	sb	a0,s0,+00000000
	lw	a1,s8,+00000000
	andi	a2,a0,+000000FF
	addi	a0,s0,+00000001
	jal	ra,0000000023070C7C
	lbu	a5,s0,+00000000
	c.addi	s8,00000004
	c.addi	a5,00000001
	c.add	s0,a5
	c.j	0000000023069158

l230691AE:
	addi	a5,zero,+00000023
	sb	a5,s2,+00000001
	srli	a5,s8,00000008
	sb	zero,s2,+00000000
	sb	a5,s2,+00000002
	sb	s8,s2,+00000003
	lw	a5,s11,+0000002C
	c.lw	a5,100(a5)
	c.beqz	a5,00000000230691FE

l230691CE:
	beq	s8,zero,00000000230691FE

l230691D2:
	lui	a4,0002308C
	c.mv	a5,s8
	addi	a2,s1,+00000378
	c.mv	a0,s11
	addi	a4,a4,+000007AC
	addi	a3,zero,+00000254
	c.li	a1,00000003
	jal	ra,0000000023062FCC
	lw	a5,s11,+0000002C
	c.mv	a2,s8
	addi	a0,s2,+00000004
	c.lw	a5,100(a1)
	jal	ra,0000000023070C7C
	c.j	0000000023069072

l230691FE:
	c.li	s7,00000004
	c.j	0000000023069072

l23069202:
	lui	a4,0002308C
	addi	a4,a4,+000007FC
	addi	a3,zero,+00000419
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	jal	zero,0000000023068A62
2306921E                                           37 D7               7.
23069220 08 23 13 07 47 81 93 06 20 58 13 86 84 37 89 45 .#..G... X...7.E
23069230 6E 85 EF 90 BF D9 6E 85 03 A9 4D 06 EF 30 5F E7 n.....n...M..0_.
23069240 2A 84 09 C9 37 97 08 23 AA 87 13 07 47 38 93 06 *...7..#....G8..
23069250 80 58 71 BD 03 A7 CD 06 D9 47 63 03 F7 02 37 D7 .Xq......Gc...7.
23069260 08 23 13 07 C7 82 93 06 00 5A 13 86 84 37 85 45 .#.......Z...7.E
23069270 6E 85 65 74 EF 90 9F D5 13 04 04 90 6F F0 6F FE n.et........o.o.
23069280 83 A7 0D 00 83 D7 47 07 89 8B 63 8D 07 1C 03 47 ......G...c....G
23069290 09 00 8D 47 63 1B F7 1A 37 D7 08 23 13 07 87 84 ...Gc...7..#....
230692A0 93 06 90 5A 13 86 84 37 89 45 6E 85 EF 90 1F D2 ...Z...7.En.....
230692B0 37 D7 08 23 13 07 87 86 93 06 A0 5A 13 86 84 37 7..#.......Z...7
230692C0 89 45 6E 85 EF 90 9F D0 03 A5 0D 00 EF F0 CF EC .En.............
230692D0 03 A9 4D 06 37 D7 08 23 13 07 07 88 2A 99 93 06 ..M.7..#....*...
230692E0 E0 52 13 86 84 37 89 45 6E 85 EF 90 3F CE 37 D7 .R...7.En...?.7.
230692F0 08 23 09 48 CA 87 13 07 47 8A 93 06 60 53 13 86 .#.H....G...`S..
23069300 84 37 8D 45 6E 85 EF 90 9F DD 83 A7 0D 00 CA 86 .7.En...........
23069310 0C 18 F0 5B 68 10 05 82 05 8A EF 30 AF B5 B2 56 ...[h......0...V
23069320 89 47 63 D0 D7 02 C2 57 05 47 63 5C F7 00 03 A7 .Gc....W.Gc\....
23069330 0D 00 03 46 07 07 63 46 D6 00 03 47 17 07 63 59 ...F..cF...G..cY
23069340 F7 02 37 D7 08 23 13 07 07 8A 93 06 30 54 13 86 ..7..#......0T..
23069350 84 37 85 45 6E 85 EF 90 7F C7 13 06 60 04 89 45 .7.En.......`..E
23069360 6E 85 65 74 EF 20 1F C1 13 04 04 18 6F F0 6F EF n.et. ......o.o.
23069370 93 09 39 00 03 49 29 00 37 D7 08 23 CE 87 13 07 ..9..I).7..#....
23069380 47 8B 4A 88 93 06 C0 54 13 86 84 37 8D 45 6E 85 G.J....T...7.En.
23069390 EF 90 FF D4 83 A7 4D 06 03 A7 0D 07 BA 97 B3 87 ......M.........
230693A0 37 41 63 D9 27 03 37 D7 08 23 13 86 84 37 85 45 7Ac.'.7..#...7.E
230693B0 6E 85 13 07 C7 8B 93 06 10 55 EF 90 3F C1 13 06 n........U..?...
230693C0 20 03 89 45 6E 85 EF 20 FF BA 61 74 13 04 04 68  ..En.. ..at...h
230693D0 6F F0 2F E9 83 A7 0D 03 C8 53 EF 80 9C E9 03 AA o./......S......
230693E0 0D 03 CA 85 05 45 EF 60 6F A9 23 22 AA 02 83 A7 .....E.`o.#"....
230693F0 0D 03 C8 53 1D E1 37 97 08 23 CA 87 13 07 47 6D ...S..7..#....Gm
23069400 93 06 C0 55 13 86 84 37 85 45 6E 85 EF 90 1F BC ...U...7.En.....
23069410 61 74 13 04 04 10 6F F0 CF E4 4A 86 CE 85 EF 70 at....o...J....p
23069420 F0 05 83 A7 0D 03 6E 85 23 84 27 03 85 47 23 A2 ......n.#.'..G#.
23069430 FD 00 EF 00 5F F4 6E 85 EF 00 9F E1 37 D7 08 23 ...._.n.....7..#
23069440 13 07 07 8F 93 06 90 56 D9 B3 83 A7 0D 03 C8 53 .......V.......S
23069450 EF 80 3C E2 83 A7 0D 03 23 A2 07 02 83 A7 0D 03 ..<.....#.......
23069460 23 84 07 02 03 A5 0D 00 EF F0 0F D3 03 A7 0D 08 #...............
23069470 93 07 65 02 63 67 F7 00 83 4A 09 00 89 47 63 8F ..e.cg...J...Gc.
23069480 FA 00 37 D7 08 23 13 07 C7 82 93 06 A0 5B 13 86 ..7..#.......[..
23069490 84 37 85 45 6E 85 EF 90 7F B3 05 BF 2A 99 37 D7 .7.En.......*.7.
230694A0 08 23 09 48 13 07 07 91 CA 87 93 06 B0 5C 13 86 .#.H.........\..
230694B0 84 37 8D 45 6E 85 EF 90 9F C2 83 A7 0D 00 CA 86 .7.En...........
230694C0 93 85 CD 00 F0 5B 13 85 8D 00 05 82 05 8A EF 30 .....[.........0
230694D0 6F 9A 03 A7 0D 00 83 A8 8D 00 83 A6 CD 00 83 47 o..............G
230694E0 27 07 03 46 17 07 03 48 37 07 63 CA F8 00 83 45 '..F...H7.c....E
230694F0 07 07 63 C6 06 01 63 C4 15 01 63 54 D6 02 32 C4 ..c...c...cT..2.
23069500 03 47 07 07 13 86 84 37 36 C0 3A C2 37 D7 08 23 .G.....76.:.7..#
23069510 13 07 87 92 93 06 80 5D 85 45 6E 85 EF 90 1F AB .......].En.....
23069520 2D BD 03 47 29 00 83 47 39 00 93 06 50 5E 62 07 -..G)..G9...P^b.
23069530 C2 07 5D 8F 83 47 59 00 13 86 84 37 8D 45 5D 8F ..]..GY....7.E].
23069540 83 47 49 00 6E 85 A2 07 D9 8F 37 D7 08 23 13 07 .GI.n.....7..#..
23069550 47 97 EF 90 BF A7 03 A5 0D 03 93 07 29 00 BE 85 G...........)...
23069560 13 06 00 02 13 05 85 0F 3E CE EF 70 20 71 F2 47 ........>..p q.G
23069570 37 D7 08 23 83 49 29 02 13 08 00 02 13 07 47 99 7..#.I).......G.
23069580 93 06 C0 5E 13 86 84 37 8D 45 6E 85 EF 90 3F B5 ...^...7.En...?.
23069590 93 07 00 02 63 F9 37 01 37 D7 08 23 13 07 C7 82 ....c.7.7..#....
230695A0 93 06 00 5F ED B5 03 A5 0D 00 03 AB 0D 08 EF F0 ..._............
230695B0 AF BE 4E 95 93 07 75 02 63 FB 67 03 B3 07 39 01 ..N...u.c.g...9.
230695C0 03 CA 67 02 83 C7 77 02 22 0A 33 6A FA 00 93 07 ..g...w.".3j....
230695D0 FA FF 63 F7 FA 00 93 07 8A 02 3E 95 63 05 AB 02 ..c.......>.c...
230695E0 37 D7 08 23 13 07 C7 82 93 06 C0 5F 4D B5 13 05 7..#......._M...
230695F0 65 02 01 4A 63 09 AB 00 37 D7 08 23 13 07 C7 82 e..Jc...7..#....
23069600 93 06 60 60 69 B5 B3 07 39 01 83 CA 37 02 83 C7 ..``i...9...7...
23069610 47 02 13 8B 59 02 A2 0A 4A 9B B3 EA FA 00 83 47 G...Y...J......G
23069620 0B 00 95 C3 37 D7 08 23 13 07 07 9B 93 06 10 62 ....7..#.......b
23069630 13 86 84 37 85 45 6E 85 65 74 EF 90 3F 99 13 04 ...7.En.et..?...
23069640 04 F8 6F F0 0F C2 83 AB 0D 04 56 85 EF F0 0F A6 ..o.......V.....
23069650 23 A0 AB 00 83 A7 0D 04 8C 43 85 E1 37 D7 08 23 #........C..7..#
23069660 D6 87 13 07 47 9D 93 06 C0 62                   ....G....b     

l2306966A:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,0000000023062FCC
	jal	zero,0000000023068AF0
2306967A                               6E 85 EF 00 5F CC           n..._.
23069680 37 D7 08 23 CE 87 13 07 87 9F 93 06 20 63 13 86 7..#........ c..
23069690 84 37 8D 45 6E 85 EF 90 7F 93 93 0B 39 02 37 D7 .7.En.......9.7.
230696A0 08 23 DE 87 4E 88 13 07 C7 A1 93 06 30 63 13 86 .#..N.......0c..
230696B0 84 37 8D 45 6E 85 EF 90 9F A2 83 A7 0D 03 83 A7 .7.En...........
230696C0 87 14 D5 EB 83 A7 4D 00 4E 86 DE 85 85 07 23 A2 ......M.N.....#.
230696D0 FD 00 83 A7 0D 03 23 A4 07 14 83 A7 CD 02 23 A0 ......#.......#.
230696E0 57 01 83 A7 CD 02 23 A2 07 00 83 A7 CD 02 23 A4 W.....#.......#.
230696F0 37 01 03 A5 CD 02 31 05 EF 70 40 58 83 A7 0D 03 7.....1..p@X....
23069700 83 A7 87 14 F9 E3 B7 C7 08 23 93 87 87 4D 37 D7 .........#...M7.
23069710 08 23 13 07 07 A5 93 06 70 65 13 86 84 37 8D 45 .#......pe...7.E
23069720 6E 85 EF 90 BF 8A 37 D7 08 23 D6 87 13 07 C7 A6 n.....7..#......
23069730 93 06 90 65 13 86 84 37 8D 45 6E 85 EF 90 1F 89 ...e...7.En.....
23069740 83 47 0B 00 37 D7 08 23 6E 85 13 07 47 A9 93 06 .G..7..#n...G...
23069750 A0 65 13 86 84 37 8D 45 EF 90 5F 87 83 A7 CD 02 .e...7.E.._.....
23069760 88 43 EF F0 AF 94 3D E5 37 D7 08 23 13 07 C7 82 .C....=.7..#....
23069770 93 06 40 66 29 BB E3 87 09 F4 03 A5 CD 02 1C 41 ..@f)..........A
23069780 E3 92 FA F4 5C 41 9D FF 1C 45 E3 9D F9 F2 4E 86 ....\A...E....N.
23069790 DE 85 31 05 EF 70 00 46 15 F5 B1 47 23 A2 FD 00 ..1..p.F...G#...
230697A0 6E 85 EF 00 CF BE AA 8B 31 D9 37 D7 08 23 AA 87 n.......1.7..#..
230697B0 13 07 87 A3 93 06 10 65 13 86 84 37 85 45 6E 85 .......e...7.En.
230697C0 EF 90 DF 89 5E 84 6F F0 CF A9 B7 77 08 23 93 87 ....^.o....w.#..
230697D0 47 3F 35 BF 5C 41 37 D7 08 23 13 07 47 AB 93 06 G?5.\A7..#..G...
230697E0 80 66 13 86 84 37 8D 45 6E 85 EF 90 2F FE 03 A7 .f...7.En.../...
230697F0 CD 00 83 A7 0D 00 0A 07 BA 97 9C 43 94 43 81 EA ...........C.C..
23069800 37 D7 08 23 13 07 C7 82 93 06 F0 66 49 B1 03 A7 7..#.......fI...
23069810 CD 02 91 07 10 43 E3 93 C6 FE 23 22 07 00 37 D7 .....C....#"..7.
23069820 08 23 93 89 89 02 D2 87 13 07 C7 AD 93 06 70 68 .#............ph
23069830 13 86 84 37 89 45 6E 85 C1 6A 4E 99 EF 90 0F F9 ...7.En..jN.....
23069840 93 8A 1A F0 37 DD 08 23 37 AB 08 23 63 19 0A 02 ....7..#7..#c...
23069850 83 A7 CD 0B 63 9E 07 20 83 A7 0D 00 13 07 00 02 ....c.. ........
23069860 83 D7 47 07 93 F7 07 03 63 94 E7 20 37 D7 08 23 ..G.....c.. 7..#
23069870 13 07 07 BD 93 06 00 72 13 86 84 37 65 A8 03 47 .......r...7e..G
23069880 19 00 83 47 09 00 83 49 29 00 22 07 5D 8F 93 17 ...G...I).".]...
23069890 87 00 21 83 5D 8F 93 17 07 01 03 47 39 00 C1 83 ..!.]......G9...
230698A0 22 07 33 67 37 01 93 19 87 00 21 83 33 E7 E9 00 ".3g7.....!.3...
230698B0 93 19 07 01 93 D9 09 01 93 8B 49 00 63 79 7A 01 ..........I.cyz.
230698C0 37 D7 08 23 13 07 C7 82 93 06 20 69 C9 B6 41 47 7..#...... i..AG
230698D0 63 8C E7 10 63 62 F7 02 05 47 63 8B E7 08 37 D7 c...cb...Gc...7.
230698E0 08 23 13 07 87 BA 93 06 D0 70 13 86 84 37 8D 45 .#.......p...7.E
230698F0 6E 85 EF 90 AF ED A9 A8 13 07 30 02 63 8A E7 0A n.........0.c...
23069900 E3 9F 57 FD 13 07 8D B0 93 06 90 69 13 06 8B 37 ..W........i...7
23069910 8D 45 6E 85 EF 90 8F EB 85 47 63 95 F9 00 83 47 .En......Gc....G
23069920 49 00 8D C7 37 D7 08 23 13 07 87 B2 93 06 C0 43 I...7..#.......C
23069930 13 06 8B 37 85 45 6E 85 EF 90 4F E9 6E 85 EF 20 ...7.En...O.n.. 
23069940 0F EE 2A 84 19 C1 6F F0 CF 91 41 B4 23 AE 3D 0B ..*...o...A.#.=.
23069950 B3 09 3A 41 13 8A C9 FF 89 47 ED 19 5E 99 E3 E7 ..:A.....G..^...
23069960 37 EF 37 D7 08 23 13 07 C7 82 93 06 50 71 05 B6 7.7..#......Pq..
23069970 37 D7 08 23 13 07 C7 B4 93 06 60 6A 13 86 84 37 7..#......`j...7
23069980 8D 45 6E 85 3E CE EF 90 6F E4 83 A6 0D 00 03 D7 .En.>...o.......
23069990 46 07 13 77 07 1C E3 0A 07 A2 F2 47 E3 97 F9 A2 F..w.......G....
230699A0 FC 5A 03 47 49 00 99 83 9D 8B E3 03 F7 FA 31 BC .Z.GI.........1.
230699B0 B7 D7 08 23 13 87 07 B7 93 06 A0 6D 13 86 84 37 ...#.......m...7
230699C0 8D 45 6E 85 EF 90 8F E0 83 A7 0D 00 83 D7 47 07 .En...........G.
230699D0 93 F7 07 20 E3 8B 07 9E E3 99 09 9E 83 A7 0D 03 ... ............
230699E0 05 47 23 AC E7 14 AD B7 B7 D7 08 23 13 87 07 B9 .G#........#....
230699F0 93 06 30 70 13 86 84 37 8D 45 6E 85 EF 90 0F DD ..0p...7.En.....
23069A00 83 A7 0D 00 03 AC 07 06 E3 01 0C 9C 8D 47 E3 FE .............G..
23069A10 37 9B 83 47 59 00 83 46 49 00 A2 07 D5 8F 93 96 7..GY..FI.......
23069A20 87 00 A1 83 D5 8F C2 07 C1 83 93 86 E9 FF E3 9E ................
23069A30 D7 98 83 4C 69 00 93 86 D9 FF E3 98 DC 98 93 07 ...Li...........
23069A40 79 00 3E CE 03 25 0C 00 E3 01 05 98 EF 70 10 0E y.>..%.......p..
23069A50 63 9E AC 00 83 25 0C 00 72 45 66 86 EF 70 80 19 c....%..rEf..p..
23069A60 11 E5 83 27 0C 00 23 AC FD 0A DD B5 11 0C D9 BF ...'..#.........
23069A70 37 D7 08 23 13 07 87 86 93 06 30 74 6F F0 2F F9 7..#......0to./.
23069A80 6E 85 EF 30 EF ED 6F E0 1F FD 83 A7 0D 04 37 D7 n..0..o.......7.
23069A90 08 23 05 69 83 AA 07 00 13 07 07 C0 93 06 69 89 .#.i..........i.
23069AA0 13 86 84 37 89 45 6E 85 EF 90 4F D2 83 C7 AA 00 ...7.En...O.....
23069AB0 05 4A 63 95 47 03 37 D7 08 23 13 07 07 C2 93 06 .Jc.G.7..#......
23069AC0 B9 89 13 86 84 37 89 45 6E 85 EF 90 2F D0 83 A7 .....7.En.../...
23069AD0 4D 00 85 07 23 A2 FD 00 6F E0 BF F8 6E 85 EF 30 M...#...o...n..0
23069AE0 2F DD 2A 84 11 C9 37 97 08 23 AA 87 13 07 47 38 /.*...7..#....G8
23069AF0 93 06 99 8B 6F F0 AF DF 03 A7 CD 06 D9 47 63 0A ....o........Gc.
23069B00 F7 00 37 D7 08 23 13 07 47 C4 93 06 F9 8B 6F F0 ..7..#..G.....o.
23069B10 CF F5 83 A9 4D 06 B1 47 03 C7 09 00 63 00 F7 04 ....M..G....c...
23069B20 83 C7 AA 00 15 47 93 F7 D7 0F 63 91 E7 02 83 A7 .....G....c.....
23069B30 4D 00 37 D7 08 23 23 A4 4D 09 85 07 23 A2 FD 00 M.7..##.M...#...
23069B40 13 07 47 C6 93 06 49 9D 6F F0 6F EC 37 D7 08 23 ..G...I.o.o.7..#
23069B50 13 07 47 C4 93 06 09 8D 6F F0 2F F1 03 A5 0D 00 ..G.....o./.....
23069B60 EF E0 9F E3 03 A8 0D 08 37 D7 08 23 B3 87 A9 00 ........7..#....
23069B70 33 08 A8 40 13 07 47 C8 93 06 69 8D 13 86 84 37 3..@..G...i....7
23069B80 8D 45 6E 85 EF 90 AF D5 37 97 08 23 13 07 47 F1 .En.....7..#..G.
23069B90 93 06 B9 91 13 86 84 37 85 45 6E 85 65 74 EF 90 .......7.En.et..
23069BA0 EF C2 13 04 04 40 6F E0 DF EB 83 A7 0D 04 37 D7 .....@o.......7.
23069BB0 08 23 05 69 83 A9 07 00 13 07 87 C9 93 06 C9 9F .#.i............
23069BC0 13 86 84 37 89 45 6E 85 EF 90 4F C0 03 C7 A9 00 ...7.En...O.....
23069BD0 8D 46 93 07 B7 FF 93 F7 F7 0F 63 F5 F6 00 AD 47 .F........c....G
23069BE0 63 1A F7 00 37 D7 08 23 85 66 13 07 87 CB 93 86 c...7..#.f......
23069BF0 46 A0 C1 BD 83 A7 8D 08 B1 E7 6E 85 EF 30 4F CB F.........n..0O.
23069C00 AA 89 0D C1 37 97 08 23 AA 87 13 07 47 38 93 06 ....7..#....G8..
23069C10 D9 A0 13 86 84 37 85 45 6E 85 EF 90 2F C4 4E 84 .....7.En.../.N.
23069C20 6F E0 3F E4 03 A7 CD 06 D9 47 63 0A F7 00 37 D7 o.?......Gc...7.
23069C30 08 23 13 07 C7 CD 93 06 39 A1 6F F0 0F E3 85 47 .#......9.o....G
23069C40 23 A4 FD 08 83 A7 4D 00 23 A8 0D 0A 85 07 23 A2 #.....M.#.....#.
23069C50 FD 00 83 A7 4D 06 03 C7 07 00 B5 47 63 1E F7 06 ....M......Gc...
23069C60 85 47 23 A8 FD 0A B7 77 08 23 93 87 47 3F 37 D7 .G#....w.#..G?7.
23069C70 08 23 85 6B 13 07 C7 CF 93 86 1B A2 13 86 84 37 .#.k...........7
23069C80 8D 45 6E 85 EF 90 8F B4 83 A7 0D 0B 63 86 07 10 .En.........c...
23069C90 03 A5 0D 00 03 AA 4D 06 23 A4 0D 08 EF E0 DF CF ......M.#.......
23069CA0 B3 07 AA 00 03 C9 07 00 03 A7 0D 08 4A 95 93 07 ............J...
23069CB0 25 00 63 78 F7 02 37 D7 08 23 13 07 C7 CD 93 86 %.cx..7..#......
23069CC0 8B A4 13 86 84 37 85 45 6E 85 61 74 EF 90 0F B0 .....7.En.at....
23069CD0 13 04 04 58 6F E0 FF D8 B7 C7 08 23 93 87 87 4D ...Xo......#...M
23069CE0 79 B7 83 A6 CD 00 0D 47 63 9C E6 06 33 07 AA 00 y......Gc...3...
23069CF0 83 4A 17 00 D2 97 83 C7 07 00 0D 05 A2 0A B3 09 .J..............
23069D00 AA 00 B3 EA FA 00 4E 8B 37 DC 08 23 93 8B 8B A5 ......N.7..#....
23069D10 B3 07 3B 41 63 E7 57 03 03 A5 0D 00 09 09 56 99 ..;Ac.W.......V.
23069D20 EF E0 9F C7 93 07 29 00 3E 95 83 A7 0D 08 63 F9 ......).>.....c.
23069D30 A7 02 37 D7 08 23 85 66 13 07 C7 CD 93 86 06 A6 ..7..#.f........
23069D40 49 B7 03 48 1B 00 83 47 0B 00 13 07 8C D1 DE 86 I..H...G........
23069D50 13 86 84 37 8D 45 6E 85 EF 90 4F A7 09 0B 4D BF ...7.En...O...M.
23069D60 03 A5 0D 00 EF E0 5F C3 4A 95 B3 07 AA 00 03 C9 ......_.J.......
23069D70 17 00 83 C7 27 00 0D 05 22 09 33 69 F9 00 83 A7 ....'...".3i....
23069D80 0D 08 4A 95 63 8A A7 00 37 D7 08 23 85 66 13 07 ..J.c...7..#.f..
23069D90 C7 CD 93 86 D6 A6 35 B7 37 D7 08 23 85 66 13 07 ......5.7..#.f..
23069DA0 47 D4 93 86 26 A7 6F F0 8F C6 37 D7 08 23 05 69 G...&.o...7..#.i
23069DB0 13 07 47 D6 93 06 19 A8 13 86 84 37 89 45 6E 85 ..G........7.En.
23069DC0 EF 90 CF A0 83 A7 8D 08 9D EB 6E 85 EF 30 4F AE ..........n..0O.
23069DD0 AA 89 09 C9 37 97 08 23 AA 87 13 07 47 38 93 06 ....7..#....G8..
23069DE0 79 A8 05 BD 03 A7 CD 06 D9 47 63 0A F7 00 37 D7 y........Gc...7.
23069DF0 08 23 13 07 07 D8 93 06 D9 A8 6F F0 0F C7 03 A9 .#........o.....
23069E00 0D 00 23 A4 0D 08 4A 85 EF E0 1F B9 83 A7 0D 08 ..#...J.........
23069E10 63 99 A7 00 83 A7 4D 06 03 C7 07 00 B9 47 63 04 c.....M......Gc.
23069E20 F7 02 37 D7 08 23 85 66 13 07 07 D8 93 86 66 A9 ..7..#.f......f.
23069E30 13 86 84 37 85 45 6E 85 61 74 EF 90 2F 99 13 04 ...7.En.at../...
23069E40 04 48 6F E0 1F C2 83 A7 4D 00 85 07 23 A2 FD 00 .Ho.....M...#...
23069E50 83 57 49 07 89 8B 81 C7 6E 85 EF 00 6F BF 37 D7 .WI.....n...o.7.
23069E60 08 23 85 66 13 07 07 DA 93 86 16 AA 6F F0 2F BA .#.f........o./.
23069E70 6E 85 EF 20 CF A6 6F E0 1F BE 83 A7 0D 04 37 D7 n.. ..o.......7.
23069E80 08 23 85 69 80 43 13 07 C7 DB 93 86 C9 AA 13 86 .#.i.C..........
23069E90 84 37 89 45 6E 85 EF 90 6F 93 03 47 A4 00 85 47 .7.En...o..G...G
23069EA0 63 1D F7 14 83 A7 0D 00 03 A4 0D 03 03 A9 CD 00 c...............
23069EB0 F0 5B 83 C5 17 07 03 C5 07 07 13 0A 84 11 05 82 .[..............
23069EC0 D2 86 05 8A EF 00 FF E9 83 A7 0D 00 93 05 A4 11 ................
23069ED0 33 39 20 01 98 4F C8 4F 13 06 E0 02 06 09 02 97 39 ..O.O........
23069EE0 93 0A 49 00 2A 84 11 C9 37 D7 08 23 AA 87 13 07 ..I.*...7..#....
23069EF0 C7 DD 93 06 90 7F 6F F0 8F 9F 83 A7 0D 03 13 07 ......o.........
23069F00 00 03 23 AA E7 0C 83 A7 CD 02 E8 4F 01 ED 37 D7 ..#........O..7.
23069F10 08 23 13 07 47 DE 93 86 19 80 13 86 84 37 89 45 .#..G........7.E
23069F20 6F F0 0F B5 85 45 13 05 C5 0B EF C0 CE E3 15 E1 o....E..........
23069F30 37 D7 08 23 13 07 C7 DF 93 86 B9 80 13 86 84 37 7..#...........7
23069F40 85 45 6E 85 65 74 EF 90 6F 88 13 04 04 30 6F E0 .En.et..o....0o.
23069F50 5F B1 03 A7 CD 02 83 A7 0D 00 03 A6 0D 03 68 4F _.............hO
23069F60 83 A6 0D 0A 83 A8 C7 01 03 A8 87 01 03 26 46 0D .............&F.
23069F70 91 67 B3 87 57 41 18 18 D6 96 D2 85 13 05 C5 0B .g..WA..........
23069F80 EF C0 6E EE 2A 84 11 C9 37 D7 08 23 AA 87 13 07 ..n.*...7..#....
23069F90 C7 E1 93 86 59 81 6F F0 8F 95 89 47 63 1F F9 00 ....Y.o....Gc...
23069FA0 C2 57 03 A7 0D 0A 93 D6 87 00 23 02 D7 00 03 A7 .W........#.....
23069FB0 0D 0A A3 02 F7 00 89 07 3E D8 C2 57 41 47 6E 85 ........>..WAGn.
23069FC0 91 07 23 A4 FD 0A D9 47 23 A2 FD 0A 83 A7 0D 0A ..#....G#.......
23069FD0 23 80 E7 00 83 A7 4D 00 85 07 23 A2 FD 00 EF 00 #.....M...#.....
23069FE0 1F DB 2A 84 15 C1 37 A7 08 23 85 66 AA 87 13 07 ..*...7..#.f....
23069FF0 87 D4 93 86 D6 B9 6F F0 8F 8F 37 97 08 23 13 07 ......o...7..#..
2306A000 47 F1 93 86 19 B9 79 B6 37 D7 08 23 85 66 13 07 G.....y.7..#.f..
2306A010 87 E3 93 86 16 BA 6F F0 8F 9F 83 A7 0D 04 37 D7 ......o.......7.
2306A020 08 23 05 69 13 07 87 E5 93 06 29 BD 13 86 84 37 .#.i......)....7
2306A030 89 45 6E 85 83 A9 07 00 02 D6 EF 80 3F F9 6E 85 .En.........?.n.
2306A040 EF F0 FE B4 2A 84 11 C9 37 D7 08 23 AA 87 13 07 ....*...7..#....
2306A050 87 A3 93 06 69 BD 6F F0 8F 89 03 C7 A9 00 8D 46 ....i.o........F
2306A060 93 07 B7 FF 93 F7 F7 0F 63 F5 F6 00 AD 47 63 1A ........c....Gc.
2306A070 F7 00 37 D7 08 23 85 66 13 07 47 E7 93 86 06 BE ..7..#.f..G.....
2306A080 89 B4 83 A7 0D 0B 91 CF 03 A9 0D 03 63 05 09 00 ............c...
2306A090 83 27 89 00 89 E7 83 A7 0D 00 FC 47 99 C3 9C 43 .'.........G...C
2306A0A0 89 EB 37 D7 08 23 85 66 13 07 47 E7 93 86 76 BE ..7..#.f..G...v.
2306A0B0 09 BC 6E 85 EF E0 1F 8D 1D E1 37 D7 08 23 85 66 ..n.......7..#.f
2306A0C0 13 07 87 E9 93 86 E6 BE 13 86 84 37 85 45 6E 85 ...........7.En.
2306A0D0 65 74 EF 80 BF EF 13 04 04 A0 6F E0 9F 98 83 27 et........o....'
2306A0E0 89 0C 0C 18 6E 85 82 97 03 A7 CD 00 8D 47 63 1C ....n........Gc.
2306A0F0 F7 06 83 A7 0D 04 1D 47 9C 43 83 C5 97 00 83 A7 .......G.C......
2306A100 0D 0A 63 9D E5 04 15 47 23 82 E7 00 6E 85 2E CE ..c....G#...n...
2306A110 EF E0 5F 87 03 A4 0D 0A EF 00 DF B3 A3 02 A4 00 .._.............
2306A120 6E 85 EF E0 3F 86 83 A7 0D 00 03 A7 0D 0A F2 45 n...?..........E
2306A130 83 A8 C7 01 03 A8 87 01 21 07 7C 10 81 46 10 18 ........!.|..F..
2306A140 EF C0 8E C9 2A 84 05 C9 37 D7 08 23 85 66 AA 87 ....*...7..#.f..
2306A150 13 07 C7 EB 93 86 56 C4 6F E0 7F F9 11 47 23 82 ......V.o....G#.
2306A160 E7 00 99 45 65 B7 37 97 08 23 85 66 13 07 47 F1 ...Ee.7..#.f..G.
2306A170 93 86 D6 C3 05 B4 B2 57 03 A7 0D 0A 6E 85 93 D6 .......W....n...
2306A180 87 00 23 03 D7 00 03 A7 0D 0A A3 03 F7 00 A1 07 ..#.............
2306A190 23 A4 FD 0A D9 47 23 A2 FD 0A 83 A7 0D 0A 3D 47 #....G#.......=G
2306A1A0 23 80 E7 00 83 A7 4D 00 85 07 23 A2 FD 00 EF 00 #.....M...#.....
2306A1B0 1F BE 2A 84 19 C9 37 A7 08 23 85 66 AA 87 13 07 ..*...7..#.f....
2306A1C0 87 D4 93 86 46 C5 6F E0 9F F2 37 D7 08 23 85 66 ....F.o...7..#.f
2306A1D0 13 07 C7 EC 93 86 86 C5 6F F0 6F 83 6E 85 EF 20 ........o.o.n.. 
2306A1E0 2F 90 6F E0 5F 87 6E 85 EF 20 AF 98 6F E0 BF 86 /.o._.n.. ..o...
2306A1F0 37 D7 08 23 85 6B 13 07 87 EE 93 86 CB C6 13 86 7..#.k..........
2306A200 84 37 89 45 6E 85 EF 80 7F DC 6E 85 EF 20 5F EA .7.En.....n.. _.
2306A210 2A 84 11 C9 37 97 08 23 AA 87 13 07 47 38 93 86 *...7..#....G8..
2306A220 0B C7 6F E0 DF EC 03 A7 CD 06 D9 47 63 0A F7 00 ..o........Gc...
2306A230 37 D7 08 23 13 07 47 F0 93 86 6B C7 6F F0 EF 82 7..#..G...k.o...
2306A240 03 AC 4D 06 91 47 03 47 0C 00 63 1C F7 00 03 A5 ..M..G.G..c.....
2306A250 0D 00 83 AC 0D 08 EF E0 2F F4 13 07 65 00 63 F4 ......../...e.c.
2306A260 EC 02 37 D7 08 23 85 66 13 07 47 F0 93 86 76 C8 ..7..#.f..G...v.
2306A270 13 86 84 37 85 45 6E 85 65 74 EF 80 3F D5 13 04 ...7.En.et..?...
2306A280 04 20 6F E0 0F FE 2A 9C 83 47 5C 00 03 49 4C 00 . o...*..G\..IL.
2306A290 83 49 0C 00 A2 07 B3 E7 27 01 13 99 87 00 A1 83 .I......'.......
2306A2A0 B3 67 F9 00 13 99 07 01 13 59 09 01 4A 97 03 4B .g.......Y..J..K
2306A2B0 1C 00 03 4A 2C 00 83 4A 3C 00 63 89 EC 00 37 D7 ...J,..J<.c...7.
2306A2C0 08 23 13 07 47 F0 93 86 4B C9 5D B7 37 D7 08 23 .#..G...K.].7..#
2306A2D0 CA 87 13 07 47 F2 93 86 8B C9 13 86 84 37 8D 45 ....G........7.E
2306A2E0 6E 85 EF 80 BF CE 83 A7 0D 03 23 AC 07 14 B1 47 n.........#....G
2306A2F0 23 A2 FD 00 63 14 09 00 6F E0 AF F6 03 A7 CD 02 #...c...o.......
2306A300 7C 53 38 57 3E 97 63 94 E7 04 83 A7 CD 02 E8 53 |S8W>.c........S
2306A310 EF 70 3C F6 83 A7 CD 02 CA 85 05 45 23 A2 07 06 .p<........E#...
2306A320 83 A7 CD 02 23 A4 07 06 EF 50 4F B5 AA 8B 05 E5 ....#....PO.....
2306A330 37 D7 08 23 85 66 13 07 87 F3 93 86 D6 CA 13 86 7..#.f..........
2306A340 84 37 85 45 6E 85 EF 80 7F C8 6F F0 6F 8C 23 80 .7.En.....o.o.#.
2306A350 07 00 85 07 4D BF 4A 86 93 05 6C 00 EF 60 10 12 ....M.J...l..`..
2306A360 83 A7 CD 02 E2 09 42 0B 23 A2 77 07 83 A7 CD 02 ......B.#.w.....
2306A370 B3 E9 69 01 B3 E9 59 01 23 A4 27 07 83 A7 CD 02 ..i...Y.#.'.....
2306A380 22 0A 05 69 B3 E9 49 01 37 D7 08 23 23 A6 37 07 "..i..I.7..##.7.
2306A390 13 07 C7 F4 93 06 C9 CB 13 86 84 37 8D 45 6E 85 ...........7.En.
2306A3A0 EF 80 DF C2 83 A7 CD 02 37 D7 08 23 13 07 47 F7 ........7..#..G.
2306A3B0 23 A4 07 00 93 06 F9 CB 6F E0 7F E5 6E 85 EF 30 #.......o...n..0
2306A3C0 AF 9D 6F E0 4F E9 6E 85 EF 30 CF B2 6F E0 AF E8 ..o.O.n..0..o...
2306A3D0 37 D7 08 23 85 66 13 07 07 F9 93 86 E6 D3 13 86 7..#.f..........
2306A3E0 84 37 89 45 6E 85 EF 80 7F BE BD 47 6F F0 8F EE .7.En......Go...
2306A3F0 6E 85 EF 00 2F B9 6F E0 CF E6                   n.../.o...     

l2306A3FA:
	lui	a4,0002308D
	c.lui	a3,00001000
	addi	a4,a4,-00000060
	addi	a3,a3,-000002B9
	jal	zero,000000002306966A

;; mbedtls_ssl_own_key: 2306A40C
mbedtls_ssl_own_key proc
	c.lw	a0,48(a5)
	c.beqz	a5,000000002306A414

l2306A410:
	c.lw	a5,8(a5)
	c.bnez	a5,000000002306A41A

l2306A414:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,000000002306A41C

l2306A41A:
	c.lw	a5,4(a5)

l2306A41C:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_handshake_server_step: 2306A420
;;   Called from:
;;     2305A5C0 (in mbedtls_ssl_handshake_step)
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
	bne	a5,a4,000000002306A450

l2306A44C:
	jal	zero,000000002306C080

l2306A450:
	c.lw	a0,48(a4)
	c.mv	s10,a0
	c.bnez	a4,000000002306A45A

l2306A456:
	jal	zero,000000002306C080

l2306A45A:
	lui	a4,0002308D
	c.lui	a3,00001000
	lui	s4,0002308A
	addi	a4,a4,+00000014
	addi	a3,a3,-00000122
	addi	a2,s4,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.mv	a0,s10
	jal	ra,000000002305A0D0
	c.mv	s0,a0
	c.bnez	a0,000000002306A4CE

l2306A480:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,000000002306A4AC

l2306A48C:
	lw	s7,s10,+00000004
	c.li	a5,00000012
	bgeu	a5,s7,000000002306A49A

l2306A496:
	jal	zero,000000002306C064

l2306A49A:
	lui	a4,0002308D
	slli	a5,s7,00000002
	addi	a4,a4,-00000038
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2306A4AC:
	lw	a5,s10,+00000030
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,000000002306A48C

l2306A4BA:
	c.mv	a0,s10
	jal	ra,000000002305B494
	c.beqz	a0,000000002306A48C

l2306A4C2:
	c.mv	s0,a0
	c.j	000000002306A4CE

l2306A4C6:
	c.li	a5,00000001
	sw	a5,s10,+00000004
	c.mv	s0,s7

l2306A4CE:
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

l2306A4F6:
	lui	a4,0002308D
	addi	a4,a4,+00000028
	addi	a3,zero,+00000440
	addi	a2,s4,+00000378
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.li	a1,00000005
	c.mv	a0,s10
	jal	ra,000000002305B5DA
	c.mv	s0,a0
	c.beqz	a0,000000002306A536

l2306A51A:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000006AC
	addi	a3,zero,+00000450

l2306A528:
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,000000002306305C
	c.j	000000002306A4CE

l2306A536:
	lw	a5,s10,+00000000
	lw	s0,s10,+00000058
	c.li	a6,00000005
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306A54A

l2306A548:
	c.li	a6,0000000D

l2306A54A:
	lui	a4,0002308D
	c.mv	a5,s0
	addi	a4,a4,+00000040
	addi	a3,zero,+0000045F
	addi	a2,s4,+00000378
	c.li	a1,00000004
	c.mv	a0,s10
	jal	ra,00000000230630DE
	lbu	a5,s0,+00000000
	lui	a4,0002308D
	addi	a4,a4,+00000050
	addi	a3,zero,+0000046B
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lbu	a4,s0,+00000000
	c.li	a5,00000016
	beq	a4,a5,000000002306A5AA

l2306A58A:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+0000046F

l2306A596:
	addi	a2,s4,+00000378

l2306A59A:
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC

l2306A5A2:
	c.lui	s0,FFFF8000
	addi	s0,s0,+00000700
	c.j	000000002306A4CE

l2306A5AA:
	lw	a3,s10,+0000005C
	addi	a2,s4,+00000378
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
	lui	a4,0002308D
	c.srli	a5,00000010
	addi	a4,a4,+00000090
	addi	a3,zero,+00000474
	jal	ra,0000000023062FCC
	lbu	a6,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a4,0002308D
	addi	a4,a4,+000000B4
	addi	a3,zero,+00000477
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	a5,s10,+00000000
	addi	a3,s0,+00000001
	c.addi4spn	a1,0000002C
	c.lw	a5,116(a2)
	c.addi4spn	a0,00000028
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305C674
	c.lwsp	s0,000001D4
	c.li	a5,00000002
	blt	a5,a4,000000002306A62A

l2306A61C:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000481
	c.j	000000002306A596

l2306A62A:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306A662

l2306A636:
	lw	a1,s10,+00000054
	lbu	a5,a1,+00000000
	c.bnez	a5,000000002306A646

l2306A640:
	lbu	a5,a1,+00000001
	c.beqz	a5,000000002306A654

l2306A646:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000491
	c.j	000000002306A596

l2306A654:
	lw	a0,s10,+00000090
	c.li	a2,00000006
	c.addi	a1,00000002
	c.addi	a0,00000002
	jal	ra,0000000023070C7C

l2306A662:
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
	bgeu	a5,s8,000000002306A698

l2306A68A:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000004B3
	c.j	000000002306A596

l2306A698:
	lw	a5,s10,+00000000
	c.li	a1,00000005
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306A6A8

l2306A6A6:
	c.li	a1,0000000D

l2306A6A8:
	c.add	a1,s8
	c.mv	a0,s10
	jal	ra,000000002305B5DA
	c.mv	s0,a0
	c.beqz	a0,000000002306A6C4

l2306A6B4:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000006AC
	addi	a3,zero,+000004B9
	c.j	000000002306A528

l2306A6C4:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306A72A

l2306A6D0:
	addi	a5,s8,+0000000D
	sw	a5,s10,+0000007C

l2306A6D8:
	lw	s1,s10,+00000064
	lui	a4,0002308D
	addi	a4,a4,+000000E0
	c.mv	a6,s8
	c.mv	a5,s1
	addi	a3,zero,+000004C8
	addi	a2,s4,+00000378
	c.li	a1,00000004
	c.mv	a0,s10
	jal	ra,00000000230630DE
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
	c.beqz	a5,000000002306A718

l2306A716:
	c.li	a4,0000000C

l2306A718:
	bgeu	s8,a4,000000002306A730

l2306A71C:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000004D6
	c.j	000000002306A596

l2306A72A:
	sw	zero,s10,+00000074
	c.j	000000002306A6D8

l2306A730:
	lbu	a5,s1,+00000000
	lui	a4,0002308D
	addi	a4,a4,+000000F0
	addi	a3,zero,+000004DA
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	beq	a4,a5,000000002306A764

l2306A756:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000004DE
	c.j	000000002306A596

l2306A764:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000002
	addi	a3,zero,+000004E3
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	lbu	a4,s1,+00000003
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.or	a5,a4
	lui	a4,0002308D
	addi	a4,a4,+00000114
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lbu	a5,s1,+00000001
	c.bnez	a5,000000002306A7C4

l2306A796:
	lw	a5,s10,+00000000
	c.li	a2,00000004
	lhu	a3,a5,+00000074
	c.andi	a3,00000002
	c.beqz	a3,000000002306A7A6

l2306A7A4:
	c.li	a2,0000000C

l2306A7A6:
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
	beq	s8,a5,000000002306A7D2

l2306A7C4:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000004E9
	c.j	000000002306A596

l2306A7D2:
	c.beqz	a3,000000002306A850

l2306A7D4:
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
	c.beqz	a5,000000002306A828

l2306A808:
	lui	a4,0002308D
	addi	a4,a4,+00000138
	addi	a3,zero,+00000515
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,-00000080
	c.j	000000002306A4CE

l2306A828:
	lbu	a5,a0,+00000007
	c.bnez	a5,000000002306A808

l2306A82E:
	lbu	a5,a0,+00000008
	c.bnez	a5,000000002306A808

l2306A834:
	addi	a1,a0,+00000009
	c.li	a2,00000003
	c.addi	a0,00000001
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002306A808

l2306A842:
	lw	a5,s10,+00000000
	lhu	a4,a5,+00000074
	c.li	a5,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002306A852

l2306A850:
	c.li	a5,00000004

l2306A852:
	c.add	s1,a5
	sub	s8,s8,a5
	addi	a5,zero,+00000025
	bltu	a5,s8,000000002306A86E

l2306A860:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000535
	c.j	000000002306A596

l2306A86E:
	lui	a4,0002308D
	c.li	a6,00000002
	addi	a4,a4,+00000160
	c.mv	a5,s1
	addi	a3,zero,+0000053C
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE
	lw	a5,s10,+00000000
	c.mv	a3,s1
	addi	a1,s10,+0000000C
	c.lw	a5,116(a2)
	addi	a0,s10,+00000008
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305C674
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
	blt	a5,a7,000000002306A8D2

l2306A8CE:
	bge	a6,a3,000000002306A900

l2306A8D2:
	lui	a4,0002308D
	c.swsp	a3,00000000
	addi	a4,a4,+00000178
	addi	a3,zero,+0000054A
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	addi	a2,zero,+00000046
	c.li	a1,00000002
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002305BF74
	addi	s0,s0,+00000180
	c.j	000000002306A4CE

l2306A900:
	lbu	a3,a4,+00000070
	bge	a3,a5,000000002306A916

l2306A908:
	sw	a3,s10,+00000008
	lbu	a5,a4,+00000071

l2306A910:
	sw	a5,s10,+0000000C
	c.j	000000002306A91E

l2306A916:
	lbu	a5,a4,+00000071
	blt	a5,a6,000000002306A910

l2306A91E:
	addi	s2,s1,+00000002
	lui	a4,0002308C
	c.mv	a5,s2
	addi	a6,zero,+00000020
	addi	a4,a4,+00000594
	addi	a3,zero,+0000055D
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE
	lw	a0,s10,+00000030
	addi	a2,zero,+00000020
	c.mv	a1,s2
	addi	a0,a0,+000000D8
	jal	ra,0000000023070C7C
	lbu	s3,s1,+00000022
	addi	a5,zero,+00000020
	bltu	a5,s3,000000002306A966

l2306A95E:
	addi	s5,s3,+00000024
	bgeu	s8,s5,000000002306A974

l2306A966:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000569
	c.j	000000002306A596

l2306A974:
	addi	s2,s1,+00000023
	lui	a4,0002308C
	c.mv	a6,s3
	addi	a4,a4,+000005D4
	addi	a3,zero,+0000056D
	c.mv	a5,s2
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE
	lw	a5,s10,+0000002C
	addi	a2,zero,+00000020
	c.li	a1,00000000
	sw	s3,a5,+00000008
	lw	a0,s10,+0000002C
	addi	s3,s3,+00000023
	c.addi	a0,0000000C
	jal	ra,0000000023070EB8
	lw	a0,s10,+0000002C
	c.mv	a1,s2
	c.lw	a0,8(a2)
	c.addi	a0,0000000C
	jal	ra,0000000023070C7C
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306AA32

l2306A9CA:
	add	a5,s1,s3
	lbu	s2,a5,+00000000
	c.add	s3,s2
	c.addi	s3,00000003
	bgeu	s8,s3,000000002306A9E8

l2306A9DA:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000580
	c.j	000000002306A596

l2306A9E8:
	lui	a4,0002308C
	c.mv	a6,s2
	add	a5,s1,s5
	addi	a4,a4,+0000060C
	addi	a3,zero,+00000585
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE
	beq	s2,zero,000000002306AA18

l2306AA0A:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000005A1
	c.j	000000002306A596

l2306AA18:
	lui	a4,0002308D
	addi	a4,a4,+000001B8
	addi	a3,zero,+000005A5
	addi	a2,s4,+00000378
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.mv	s3,s5

l2306AA32:
	add	a5,s1,s3
	lbu	s6,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	s6,08
	or	s6,s6,a5
	c.li	a5,00000001
	bge	a5,s6,000000002306AA5E

l2306AA4A:
	add	s9,s3,s6
	addi	s11,s9,+00000003
	bltu	s8,s11,000000002306AA5E

l2306AA56:
	andi	s5,s6,+00000001
	beq	s5,zero,000000002306AA6C

l2306AA5E:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000005B8
	c.j	000000002306A596

l2306AA6C:
	c.addi	s3,00000002
	c.add	s3,s1
	lui	a4,0002308D
	c.mv	a6,s6
	c.mv	a5,s3
	addi	a4,a4,+000001D4
	addi	a3,zero,+000005BD
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE
	c.addi	s9,00000002
	add	a5,s1,s9
	lbu	a6,a5,+00000000
	c.li	a5,0000000F
	lui	s2,0002308A
	addi	a4,a6,-00000001
	bltu	a5,a4,000000002306AAAE

l2306AAA4:
	c.add	s9,a6
	addi	a7,s9,+00000001
	bgeu	s8,a7,000000002306AAC0

l2306AAAE:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000005CA

l2306AABA:
	addi	a2,s2,+00000378
	c.j	000000002306A59A

l2306AAC0:
	lui	a4,0002308D
	add	a5,s1,s11
	addi	a4,a4,+000001F4
	addi	a3,zero,+000005CF
	addi	a2,s4,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	c.swsp	a7,00000008
	jal	ra,00000000230630DE
	lw	a5,s10,+0000002C
	c.lwsp	a6,00000028
	sw	zero,a5,+00000004
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306AAFC

l2306AAF4:
	lw	a5,s10,+0000002C
	sw	zero,a5,+00000004

l2306AAFC:
	addi	a5,s9,+00000003
	bgeu	a7,s8,000000002306AB4A

l2306AB04:
	bgeu	s8,a5,000000002306AB16

l2306AB08:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000005F0
	c.j	000000002306AABA

l2306AB16:
	add	a4,s1,a7
	lbu	s5,a4,+00000000
	c.add	s9,s1
	lbu	a4,s9,+00000002
	c.slli	s5,08
	or	s5,s5,a4
	addi	a3,s5,-00000001
	c.li	a4,00000002
	bgeu	a4,a3,000000002306AB3C

l2306AB34:
	add	a4,s5,a5
	beq	s8,a4,000000002306AB4A

l2306AB3C:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000005FA
	c.j	000000002306AABA

l2306AB4A:
	c.add	s1,a5
	lui	a4,0002308D
	c.mv	a6,s5
	c.mv	a5,s1
	addi	a4,a4,+00000210
	addi	a3,zero,+00000602
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,00000000230630DE

l2306AB68:
	bne	s5,zero,000000002306ABE4

l2306AB6C:
	c.mv	a5,s3
	addi	a3,zero,+000000FF

l2306AB72:
	lbu	a4,a5,+00000000
	bne	a4,zero,000000002306B098

l2306AB7A:
	lbu	a4,a5,+00000001
	bne	a4,a3,000000002306B098

l2306AB82:
	lui	a4,0002308D
	addi	a4,a4,+000003A4
	addi	a3,zero,+000006C4
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.li	a5,00000001
	sw	a5,s10,+000000BC

l2306ABA0:
	lw	a4,s10,+0000000C
	lw	a5,s10,+00000000
	c.slli	a4,02
	c.add	a5,a4
	lw	s5,a5,+00000000
	c.li	a5,00000000

l2306ABB2:
	lw	a4,s5,+00000000
	bne	a4,zero,000000002306B0CE

l2306ABBA:
	beq	a5,zero,000000002306B302

l2306ABBE:
	lui	a4,0002308D
	addi	a4,a4,+00000578
	addi	a3,zero,+00000722
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002305C01E
	addi	s0,s0,+00000680
	c.j	000000002306A4CE

l2306ABE4:
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
	bgeu	s5,s8,000000002306AC32

l2306AC24:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+0000060D
	c.j	000000002306AABA

l2306AC32:
	c.li	a4,0000000D
	beq	a5,a4,000000002306AE24

l2306AC38:
	bltu	a4,a5,000000002306AC52

l2306AC3C:
	c.beqz	a5,000000002306ACCC

l2306AC3E:
	c.li	a4,00000001
	beq	a5,a4,000000002306AEEC

l2306AC44:
	lui	a4,0002308D
	addi	a4,a4,-00000458
	addi	a3,zero,+00000696
	c.j	000000002306AEDA

l2306AC52:
	addi	a4,zero,+00000023
	beq	a5,a4,000000002306AF2E

l2306AC5A:
	c.lui	a4,00010000
	addi	a4,a4,-000000FF
	beq	a5,a4,000000002306ADD2

l2306AC64:
	c.li	a4,00000010
	bne	a5,a4,000000002306AC44

l2306AC6A:
	lui	a4,0002308D
	addi	a4,a4,-00000470
	addi	a3,zero,+0000068C
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	a5,s10,+00000000
	lw	s11,a5,+00000060
	beq	s11,zero,000000002306AD3A

l2306AC8E:
	c.li	a5,00000003
	bgeu	a5,s4,000000002306A5A2

l2306AC94:
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
	bne	a5,a4,000000002306A5A2

l2306ACB4:
	addi	a5,s1,+00000006
	c.swsp	a5,00000008
	add	s9,s1,s8

l2306ACBE:
	lw	a0,s11,+00000000
	bne	a0,zero,000000002306B04C

l2306ACC6:
	addi	a2,zero,+00000078
	c.j	000000002306ADBC

l2306ACCC:
	lui	a4,0002308D
	addi	a4,a4,+00000228
	addi	a3,zero,+00000614
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	a5,s10,+00000000
	c.lw	a5,44(a5)
	c.beqz	a5,000000002306AD3A

l2306ACEC:
	lui	a4,0002308D
	addi	a4,a4,+00000244
	addi	a3,zero,+00000062
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
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
	beq	s4,a4,000000002306AD32

l2306AD24:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000067
	c.j	000000002306AABA

l2306AD32:
	addi	a2,s1,+00000006
	c.li	a1,FFFFFFFD

l2306AD38:
	c.bnez	a5,000000002306AD5A

l2306AD3A:
	sub	s4,s5,s4
	addi	s5,s4,-00000004
	c.li	a5,00000002
	c.addi	s4,FFFFFFFB
	c.add	s1,s8
	bltu	a5,s4,000000002306AB68

l2306AD4C:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+0000069E
	c.j	000000002306AABA

l2306AD5A:
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
	bgeu	a5,a4,000000002306AD88

l2306AD7A:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+00000071
	c.j	000000002306AABA

l2306AD88:
	lbu	a0,a2,+00000000
	c.bnez	a0,000000002306ADC8

l2306AD8E:
	lw	a5,s10,+00000000
	c.addi	a2,00000003
	c.mv	a1,s10
	c.lw	a5,44(a4)
	c.lw	a5,48(a0)
	c.jalr	a4
	c.mv	a5,a0
	c.beqz	a0,000000002306AD3A

l2306ADA0:
	lui	a4,0002308D
	addi	a2,s2,+00000378
	addi	a4,a4,+00000260
	addi	a3,zero,+0000007B
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,000000002306305C
	addi	a2,zero,+00000070

l2306ADBC:
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,000000002305BF74
	jal	zero,000000002306A5A2

l2306ADC8:
	sub	a3,a1,a3
	c.add	a5,a3
	c.add	a2,a4
	c.j	000000002306AD38

l2306ADD2:
	lui	a4,0002308D
	addi	a4,a4,-000004F8
	addi	a3,zero,+0000061F
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.li	a5,00000001
	bne	s4,a5,000000002306ADF6

l2306ADF0:
	lbu	a5,s1,+00000004
	c.beqz	a5,000000002306AE1E

l2306ADF6:
	lui	a4,0002308D
	addi	a4,a4,-000004D8
	addi	a3,zero,+000000AD

l2306AE02:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.mv	a0,s10
	jal	ra,000000002305C01E
	c.mv	s0,a0
	bne	a0,zero,000000002306A4CE

l2306AE1A:
	jal	zero,000000002306A5A2

l2306AE1E:
	sw	s4,s10,+000000BC
	c.j	000000002306AD3A

l2306AE24:
	lui	a5,0002308D
	addi	a4,a5,+00000270
	addi	a3,zero,+0000062C
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
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
	bne	s4,a4,000000002306AE64

l2306AE60:
	c.andi	a5,00000001
	c.beqz	a5,000000002306AE72

l2306AE64:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+000000CB
	c.j	000000002306AABA

l2306AE72:
	lw	a5,s10,+00000000
	lw	s11,a5,+00000058

l2306AE7A:
	lw	a5,s11,+00000000
	c.bnez	a5,000000002306AE9A

l2306AE80:
	lui	a5,0002308D
	addi	a4,a5,+000002C8
	addi	a3,zero,+000000DF

l2306AE8C:
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.j	000000002306AD3A

l2306AE9A:
	addi	s9,s1,+00000006

l2306AE9E:
	bltu	s9,a3,000000002306AEA6

l2306AEA2:
	c.addi	s11,00000004
	c.j	000000002306AE7A

l2306AEA6:
	lw	a5,s11,+00000000
	lbu	a0,s9,+00000000
	c.swsp	a3,00000088
	c.swsp	a5,00000008
	jal	ra,000000002305AC70
	c.lwsp	a6,000000E4
	c.lwsp	s4,000000A4
	bne	a5,a0,000000002306AEE8

l2306AEBE:
	lw	a5,s10,+00000030
	lbu	a4,s9,+00000000
	addi	a3,zero,+000000E4
	c.sw	a5,0(a4)
	lw	a5,s10,+00000030
	lui	a4,0002308D
	addi	a4,a4,+00000298
	c.lw	a5,0(a5)

l2306AEDA:
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.j	000000002306AD3A

l2306AEE8:
	c.addi	s9,00000002
	c.j	000000002306AE9E

l2306AEEC:
	lui	a4,0002308D
	addi	a4,a4,+000002EC
	addi	a3,zero,+0000065A
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	c.swsp	a5,00000008
	jal	ra,0000000023062FCC
	c.lwsp	a6,000000E4
	bne	s4,a5,000000002306AF16

l2306AF0C:
	lbu	a5,s1,+00000004
	c.li	a4,00000004
	bgeu	a4,a5,000000002306AF24

l2306AF16:
	lui	a4,0002308D
	addi	a4,a4,+00000074
	addi	a3,zero,+0000016A
	c.j	000000002306AABA

l2306AF24:
	lw	a4,s10,+0000002C
	sb	a5,a4,+00000070
	c.j	000000002306AD3A

l2306AF2E:
	lui	a5,0002308D
	addi	a4,a5,+00000310
	addi	a3,zero,+00000682
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.addi4spn	a0,0000005C
	jal	ra,000000002305A382
	lw	a5,s10,+00000000
	c.lw	a5,64(a4)
	beq	a4,zero,000000002306AD3A

l2306AF56:
	c.lw	a5,60(a5)
	beq	a5,zero,000000002306AD3A

l2306AF5C:
	lw	a5,s10,+00000030
	c.li	a4,00000001
	addi	a3,zero,+000001C9
	sw	a4,a5,+00000158
	lui	a4,0002308D
	c.mv	a5,s4
	addi	a4,a4,-000000DC
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	beq	s4,zero,000000002306AD3A

l2306AF84:
	lw	a5,s10,+00000000
	c.mv	a3,s4
	addi	a2,s1,+00000004
	c.lw	a5,64(a4)
	c.lw	a5,68(a0)
	c.addi4spn	a1,0000005C
	c.jalr	a4
	c.beqz	a0,000000002306AFEC

l2306AF98:
	c.swsp	a0,00000008
	c.addi4spn	a0,0000005C
	jal	ra,000000002305A754
	c.lwsp	a6,000000E4
	c.lui	a4,FFFF9000
	addi	a4,a4,-00000180
	bne	a5,a4,000000002306AFBA

l2306AFAC:
	lui	a4,0002308D
	addi	a4,a4,+00000330
	addi	a3,zero,+000001DF
	c.j	000000002306AE8C

l2306AFBA:
	c.lui	a4,FFFF9000
	addi	a4,a4,+00000280
	bne	a5,a4,000000002306AFD2

l2306AFC4:
	lui	a4,0002308D
	addi	a4,a4,+00000348
	addi	a3,zero,+000001E1
	c.j	000000002306AE8C

l2306AFD2:
	lui	a4,0002308D
	addi	a4,a4,+0000035C
	addi	a3,zero,+000001E3
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,000000002306305C
	c.j	000000002306AD3A

l2306AFEC:
	lw	a1,s10,+0000002C
	c.addi4spn	a0,00000068
	c.lw	a1,8(a2)
	c.addi	a1,0000000C
	c.swsp	a2,000000B0
	jal	ra,0000000023070C7C
	lw	a0,s10,+0000002C
	jal	ra,000000002305A754
	lw	a0,s10,+0000002C
	addi	a2,zero,+00000074
	c.addi4spn	a1,0000005C
	jal	ra,0000000023070C7C
	c.addi4spn	a5,0000005C

l2306B014:
	sb	zero,a5,+00000000
	c.addi4spn	a4,000000D0
	c.addi	a5,00000001
	bne	a5,a4,000000002306B014

l2306B020:
	lui	a5,0002308D
	addi	a4,a5,+00000378
	addi	a3,zero,+000001F5
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	a5,s10,+00000030
	c.li	a4,00000001
	sw	a4,a5,+00000148
	lw	a5,s10,+00000030
	sw	zero,a5,+00000158
	c.j	000000002306AD3A

l2306B04C:
	jal	ra,000000002307132C
	c.lwsp	a6,000000E4
	c.mv	a4,a0

l2306B054:
	bne	s9,a5,000000002306B05C

l2306B058:
	c.addi	s11,00000004
	c.j	000000002306ACBE

l2306B05C:
	bltu	s9,a5,000000002306A5A2

l2306B060:
	addi	a6,a5,+00000001
	lbu	a5,a5,+00000000
	beq	a5,zero,000000002306A5A2

l2306B06C:
	bne	a4,a5,000000002306B094

l2306B070:
	lw	a1,s11,+00000000
	c.mv	a2,a4
	c.mv	a0,a6
	c.swsp	a5,0000008C
	c.swsp	a4,0000000C
	c.swsp	a6,00000088
	jal	ra,0000000023070BF4
	c.lwsp	s4,00000008
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	c.bnez	a0,000000002306B094

l2306B08A:
	lw	a5,s11,+00000000
	sw	a5,s10,+000000B8
	c.j	000000002306AD3A

l2306B094:
	c.add	a5,a6
	c.j	000000002306B054

l2306B098:
	c.addi	a5,00000002
	sub	a4,a5,s3
	bltu	a4,s6,000000002306AB72

l2306B0A2:
	lw	a3,s10,+000000BC
	c.li	a4,00000001
	lw	a5,s10,+00000000
	beq	a3,a4,000000002306ABA0

l2306B0B0:
	lhu	a5,a5,+00000074
	addi	a4,zero,+00000020
	andi	a5,a5,+00000030
	bne	a5,a4,000000002306ABA0

l2306B0C0:
	lui	a4,0002308D
	addi	a4,a4,-00000430
	addi	a3,zero,+000006DB
	c.j	000000002306AE02

l2306B0CE:
	c.mv	s4,s3

l2306B0D0:
	lw	a0,s5,+00000000
	lbu	a3,s4,+00000000
	srai	a4,a0,00000008
	andi	a4,a4,+000000FF
	bne	a3,a4,000000002306B15A

l2306B0E4:
	lbu	a3,s4,+00000001
	andi	a4,a0,+000000FF
	bne	a3,a4,000000002306B15A

l2306B0F0:
	jal	ra,00000000230688AC
	c.mv	s1,a0
	c.bnez	a0,000000002306B116

l2306B0F8:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000002CC
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.lui	s0,FFFF9000
	jal	zero,000000002306BAEC

l2306B116:
	c.lw	a0,4(a5)
	lui	a4,0002308D
	addi	a4,a4,+000003CC
	addi	a3,zero,+000002D0
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	a5,s10,+0000000C
	c.lw	s1,16(a4)
	blt	a5,a4,000000002306B140

l2306B13A:
	c.lw	s1,24(a4)
	bge	a4,a5,000000002306B168

l2306B140:
	lui	a5,0002308D
	addi	a4,a5,+000003E4
	addi	a3,zero,+000002D5

l2306B14C:
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC

l2306B158:
	c.mv	a5,s7

l2306B15A:
	c.addi	s4,00000002
	sub	a4,s4,s3
	bltu	a4,s6,000000002306B0D0

l2306B164:
	c.addi	s5,00000004
	c.j	000000002306ABB2

l2306B168:
	lw	a5,s10,+00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002306B17C

l2306B174:
	lbu	a5,s1,+0000001C
	c.andi	a5,00000004
	c.bnez	a5,000000002306B158

l2306B17C:
	c.mv	a0,s1
	jal	ra,0000000023068956
	lw	a5,s10,+00000030
	c.mv	s9,a0
	lw	s11,a5,+00000010
	bne	s11,zero,000000002306B198

l2306B190:
	lw	a5,s10,+00000000
	lw	s11,a5,+0000004C

l2306B198:
	beq	s9,zero,000000002306B256

l2306B19C:
	lui	a4,0002308D
	addi	a4,a4,+00000404
	addi	a3,zero,+0000026F
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.li	s8,00000000
	bne	s11,zero,000000002306B1E0

l2306B1BA:
	lui	a4,0002308D
	addi	a4,a4,+00000428
	addi	a3,zero,+00000273
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC

l2306B1D2:
	lui	a4,0002308D
	addi	a4,a4,+00000548
	addi	a3,zero,+00000316
	c.j	000000002306B14C

l2306B1E0:
	lw	a5,s11,+00000000
	lui	a4,0002308D
	c.li	a1,00000003
	c.mv	a0,s10
	addi	a4,a4,+00000444
	addi	a3,zero,+0000027A
	addi	a2,s2,+00000378
	jal	ra,0000000023063384
	lw	a0,s11,+00000004
	c.mv	a1,s9
	jal	ra,0000000023056566
	c.bnez	a0,000000002306B2B8

l2306B208:
	lui	a5,0002308D
	addi	a4,a5,+00000470
	addi	a3,zero,+0000027E

l2306B214:
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	lw	s11,s11,+00000008
	bne	s11,zero,000000002306B1E0

l2306B228:
	beq	s8,zero,000000002306B1D2

l2306B22C:
	c.mv	s11,s8

l2306B22E:
	lw	a5,s10,+00000030
	lui	a4,0002308D
	addi	a4,a4,+00000504
	sw	s11,a5,+00000008
	lw	a5,s10,+00000030
	addi	a3,zero,+000002B8
	addi	a2,s2,+00000378
	c.lw	a5,8(a5)
	c.li	a1,00000003
	c.mv	a0,s10
	c.lw	a5,0(a5)
	jal	ra,0000000023063384

l2306B256:
	c.lw	s1,4(a5)
	lui	a4,0002308D
	addi	a4,a4,+0000052C
	addi	a3,zero,+0000072E
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023062FCC
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
	c.beqz	a5,000000002306B29C

l2306B296:
	c.mv	a0,s10
	jal	ra,000000002305A250

l2306B29C:
	lui	a4,0002308D
	addi	a4,a4,+000005CC
	addi	a3,zero,+0000073A
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	jal	zero,000000002306A4CE

l2306B2B8:
	lw	a0,s11,+00000000
	c.addi4spn	a3,0000005C
	c.li	a2,00000001
	c.mv	a1,s1
	jal	ra,000000002305ACC8
	c.beqz	a0,000000002306B2D6

l2306B2C8:
	lui	a5,0002308D
	addi	a4,a5,+00000490
	addi	a3,zero,+0000028E
	c.j	000000002306B214

l2306B2D6:
	lw	a5,s10,+0000000C
	c.li	a4,00000002
	blt	a4,a5,000000002306B22E

l2306B2E0:
	lw	a5,s11,+00000000
	c.li	a4,00000004
	lbu	a5,a5,+00000128
	beq	a5,a4,000000002306B22E

l2306B2EE:
	bne	s8,zero,000000002306B2F4

l2306B2F2:
	c.mv	s8,s11

l2306B2F4:
	lui	a5,0002308D
	addi	a4,a5,+000004C8
	addi	a3,zero,+000002A7
	c.j	000000002306B214

l2306B302:
	lui	a4,0002308D
	addi	a4,a4,+000005AC
	addi	a3,zero,+00000728
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC
	c.mv	a0,s10
	c.lui	s0,FFFF9000
	jal	ra,000000002305C01E
	addi	s0,s0,-00000380
	jal	zero,000000002306A4CE
2306B32A                               37 D7 08 23 05 69           7..#.i
2306B330 13 07 47 5E 93 06 19 8B 13 06 8A 37 89 45 6A 85 ..G^.......7.Ej.
2306B340 EF 70 DF C8 83 27 0D 00 98 4F 15 E3 37 C7 08 23 .p...'...O..7..#
2306B350 13 07 87 50 93 06 09 8C 13 06 8A 37 85 45 6A 85 ...P.......7.Ej.
2306B360 65 74 EF 70 BF C6 13 04 04 C0 6F F0 4F 96 F0 5B et.p......o.O..[
2306B370 83 29 0D 0A 83 25 CD 00 03 25 8D 00 05 82 93 86 .)...%...%......
2306B380 49 00 05 8A EF F0 FE 9D 03 C8 59 00 83 C7 49 00 I.........Y...I.
2306B390 37 D7 08 23 13 07 C7 5F 93 06 39 8D 13 06 8A 37 7..#..._..9....7
2306B3A0 8D 45 6A 85 EF 70 9F C2 83 27 0D 00 93 84 69 00 .Ej..p...'....i.
2306B3B0 11 46 98 4F C8 4F A6 85 02 97 2A 84 19 C1 6F F0 .F.O.O....*...o.
2306B3C0 0F 91 83 27 0D 00 71 46 93 85 A9 00 98 4F C8 4F ...'..qF.....O.O
2306B3D0 02 97 2A 84 19 C1 6F F0 8F 8F 03 25 0D 03 13 06 ..*...o....%....
2306B3E0 00 02 A6 85 13 05 85 0F EF 50 50 09 37 D7 08 23 .........PP.7..#
2306B3F0 A6 87 13 08 00 02 13 07 47 99 93 06 B9 8E 13 06 ........G.......
2306B400 8A 37 8D 45 6A 85 EF 70 9F CD 83 27 0D 03 83 A7 .7.Ej..p...'....
2306B410 87 14 8D EF 83 25 CD 02 9C 45 8D CB 03 27 0D 00 .....%...E...'..
2306B420 1C 53 8D C7 08 57 82 97 15 E1 37 D7 08 23 13 07 .S...W....7..#..
2306B430 47 62 93 06 A9 8F 13 06 8A 37 8D 45 6A 85 EF 70 Gb.......7.Ej..p
2306B440 FF B8 83 27 0D 03 05 47 23 A4 E7 14 83 26 0D 03 ...'...G#....&..
2306B450 83 27 CD 02 03 A7 86 14 63 1C 07 2E 03 27 4D 00 .'......c....'M.
2306B460 05 07 23 22 ED 00 03 A7 86 15 63 0F 07 2A 23 A4 ..#"......c..*#.
2306B470 07 00 03 25 CD 02 13 06 00 02 81 45 31 05 EF 50 ...%.......E1..P
2306B480 B0 23 81 44 83 27 CD 02 13 84 79 02 22 85 9C 47 .#.D.'....y."..G
2306B490 85 6A 23 83 F9 02 83 25 CD 02 90 45 B1 05 EF 50 .j#....%...E...P
2306B4A0 E0 7D 83 27 CD 02 37 D7 08 23 13 07 87 9F 03 A9 .}.'..7..#......
2306B4B0 87 00 93 86 4A 93 A6 87 13 06 8A 37 8D 45 6A 85 ....J......7.Ej.
2306B4C0 EF 70 DF B0 37 D7 08 23 A2 87 26 88 13 07 C7 A1 .p..7..#..&.....
2306B4D0 93 86 5A 93 13 06 8A 37 8D 45 6A 85 EF 70 3F C0 ..Z....7.Ej..p?.
2306B4E0 83 27 0D 03 22 99 83 A7 87 14 63 97 07 28 B7 C7 .'..".....c..(..
2306B4F0 08 23 93 87 87 4D 05 64 37 D7 08 23 93 06 74 93 .#...M.d7..#..t.
2306B500 13 07 07 A5 13 06 8A 37 8D 45 6A 85 EF 70 1F AC .......7.Ej..p..
2306B510 83 27 CD 02 93 0A 39 00 13 0B 59 00 9C 43 A1 87 .'....9...Y..C..
2306B520 23 00 F9 00 83 27 CD 02 9C 43 A3 00 F9 00 83 27 #....'...C.....'
2306B530 CD 02 DC 43 23 01 F9 00 83 27 CD 02 88 43 EF D0 ...C#....'...C..
2306B540 CF BF 37 D7 08 23 AA 87 93 06 E4 93 13 07 47 AB ..7..#........G.
2306B550 13 06 8A 37 8D 45 6A 85 EF 70 5F A7 83 27 CD 02 ...7.Ej..p_..'..
2306B560 37 D7 08 23 93 06 04 94 DC 43 13 07 07 65 13 06 7..#.....C...e..
2306B570 8A 37 8D 45 6A 85 EF 70 7F A5 83 24 CD 0B 85 47 .7.Ej..p...$...G
2306B580 01 44 63 9D F4 02 37 D7 08 23 13 07 47 67 93 06 .Dc...7..#..Gg..
2306B590 30 7C 13 06 8A 37 8D 45 6A 85 EF 70 3F A3 FD 57 0|...7.Ej..p?..W
2306B5A0 13 04 A9 00 A3 02 F9 00 23 03 99 00 A3 03 09 00 ........#.......
2306B5B0 23 04 99 00 A3 04 09 00 33 04 64 41 83 27 CD 02 #.......3.dA.'..
2306B5C0 81 44 83 C7 07 07 A1 C3 37 D7 08 23 13 07 47 6A .D......7..#..Gj
2306B5D0 93 06 C0 7E 13 06 8A 37 8D 45 6A 85 EF 70 1F 9F ...~...7.Ej..p..
2306B5E0 93 04 24 00 D6 94 85 47 23 80 04 00 A3 80 F4 00 ..$....G#.......
2306B5F0 23 81 04 00 A3 81 F4 00 83 27 CD 02 83 C7 07 07 #........'......
2306B600 23 82 F4 00 95 44 83 27 0D 03 26 94 81 44 83 A7 #....D.'..&..D..
2306B610 87 15 9D CB 37 D7 08 23 13 07 07 6D 93 06 B0 7A ....7..#...m...z
2306B620 13 06 8A 37 8D 45 6A 85 EF 70 5F 9A 93 04 24 00 ...7.Ej..p_...$.
2306B630 D6 94 93 07 30 02 23 80 04 00 A3 80 F4 00 23 81 ....0.#.......#.
2306B640 04 00 A3 81 04 00 91 44 83 27 8D 0B A2 94 81 4B .......D.'.....K
2306B650 B5 CB 37 D7 08 23 85 66 13 07 07 70 13 06 8A 37 ..7..#.f...p...7
2306B660 8D 45 93 86 F6 84 6A 85 EF 70 5F 96 13 84 24 00 .E....j..p_...$.
2306B670 56 94 C1 47 A3 00 F4 00 23 00 04 00 03 25 8D 0B V..G....#....%..
2306B680 EF 50 D0 4A 93 07 35 00 93 0B 75 00 A1 83 23 01 .P.J..5...u...#.
2306B690 F4 00 93 F7 FB 0F 13 87 C7 FF A3 01 E4 00 13 07 ................
2306B6A0 15 00 21 83 23 02 E4 00 13 87 A7 FF E5 17 A3 02 ..!.#...........
2306B6B0 E4 00 23 03 F4 00 83 25 8D 0B 2A 86 13 05 74 00 ..#....%..*...t.
2306B6C0 EF 50 C0 5B DE 94 37 D7 08 23 85 66 A6 87 13 07 .P.[..7..#.f....
2306B6D0 C7 AD 93 86 76 97 13 06 8A 37 8D 45 6A 85 EF 70 ....v....7.Ej..p
2306B6E0 FF 8E 89 C8 93 D7 84 00 A3 01 F9 00 23 02 99 00 ............#...
2306B6F0 B3 0A 9B 00 D9 47 23 22 FD 0A 83 27 0D 0A B3 89 .....G#"...'....
2306B700 3A 41 09 47 23 24 3D 0B 23 80 E7 00 6A 85 EF F0 :A.G#$=.#...j...
2306B710 0E E8 37 D7 08 23 85 66 2A 84 13 07 47 72 93 86 ..7..#.f*...Gr..
2306B720 A6 98 13 06 8A 37 59 B6 13 07 00 02 98 C7 83 27 .....7Y........'
2306B730 0D 00 83 25 CD 02 13 06 00 02 98 4F C8 4F B1 05 ...%.......O.O..
2306B740 93 04 00 02 02 97 2A 84 E3 0E 05 D2 6F E0 3F D8 ......*.....o.?.
2306B750 84 47 B1 47 23 22 FD 00 6A 85 EF E0 4E C3 2A 84 .G.G#"..j...N.*.
2306B760 E3 02 05 D2 37 D7 08 23 85 66 AA 87 13 07 87 A3 ....7..#.f......
2306B770 93 86 36 92 6F E0 5F DB B7 77 08 23 93 87 47 3F ..6.o._..w.#..G?
2306B780 9D BB 6A 85 EF 00 BF 95 6F E0 BF D3 83 27 0D 04 ..j.....o....'..
2306B790 37 D7 08 23 85 64 03 A9 07 00 13 07 C7 73 93 86 7..#.d.......s..
2306B7A0 F4 A7 13 06 8A 37 89 45 6A 85 EF 70 3F 82 83 47 .....7.Ej..p?..G
2306B7B0 A9 00 05 47 93 F6 B7 0F 63 85 E6 00 1D 47 63 96 ...G....c....Gc.
2306B7C0 E7 02 37 D7 08 23 85 66 13 07 C7 75 93 86 86 A8 ..7..#.f...u....
2306B7D0 13 06 8A 37 89 45 6A 85 EF 70 4F FF 83 27 4D 00 ...7.Ej..pO..'M.
2306B7E0 85 07 23 22 FD 00 6F E0 9F CE 91 47 23 24 FD 0A ..#"..o....G#$..
2306B7F0 D9 47 23 22 FD 0A 83 27 0D 0A 31 47 6A 85 23 80 .G#"...'..1Gj.#.
2306B800 E7 00 83 27 4D 00 85 07 23 22 FD 00 EF F0 2E D8 ...'M...#"......
2306B810 2A 84 11 C9 37 A7 08 23 AA 87 13 07 87 D4 93 86 *...7..#........
2306B820 44 BD 6F E0 7F D0 37 D7 08 23 13 07 07 78 93 86 D.o...7..#...x..
2306B830 84 BD C5 BD 83 27 0D 04 37 D7 08 23 85 66 13 07 .....'..7..#.f..
2306B840 07 7A 93 86 56 9B 13 06 8A 37 89 45 6A 85 84 43 .z..V....7.Ej..C
2306B850 03 29 0D 0A EF 70 8F F7 83 27 4D 00 0D 47 85 07 .)...p...'M..G..
2306B860 23 22 FD 00 83 27 0D 03 DC 47 63 97 E7 00 83 27 #"...'...Gc....'
2306B870 0D 00 FC 5B 89 83 8D 8B 03 C6 A4 00 8D 46 13 07 ...[.........F..
2306B880 B6 FF 13 77 F7 0F 63 F6 E6 00 2D 47 63 03 E6 00 ...w..c...-Gc...
2306B890 89 EB 37 D7 08 23 85 66 13 07 07 7C 93 86 76 9C ..7..#.f...|..v.
2306B8A0 49 B5 83 2A 0D 0A 85 47 81 49 A3 82 FA 00 23 82 I..*...G.I....#.
2306B8B0 FA 00 83 27 CD 00 93 84 6A 00 63 96 D7 02 83 27 ...'....j.c....'
2306B8C0 0D 00 01 44 85 4C 03 AB 87 05 03 25 0B 00 93 09 ...D.L.....%....
2306B8D0 24 00 33 8C 34 01 45 E9 93 57 84 00 23 83 FA 00 $.3.4.E..W..#...
2306B8E0 A3 83 8A 00 E2 84 83 27 0D 03 89 04 C0 4B 01 E4 .......'.....K..
2306B8F0 83 27 0D 00 A0 4B 91 67 85 6B 3E 99 01 4B 37 EC .'...K.g.k>..K7.
2306B900 08 23 93 8B 8B A3 05 CC 1C 4C 95 CB 03 28 44 04 .#.......L...(D.
2306B910 63 6A 99 00 B3 07 99 40 63 E6 07 01 93 0C 28 00 cj.....@c.....(.
2306B920 63 F4 97 09 37 D7 08 23 85 66 13 07 47 7E 93 86 c...7..#.f..G~..
2306B930 F6 A2 13 06 8A 37 85 45 6A 85 EF 70 2F E9 B3 87 .....7.Ej..p/...
2306B940 54 41 23 24 FD 0A D9 47 23 22 FD 0A 83 27 0D 0A TA#$...G#"...'..
2306B950 35 47 6A 85 23 80 E7 00 83 27 0D 0A 13 57 8B 00 5Gj.#....'...W..
2306B960 CE 97 23 83 E7 00 83 27 0D 0A BE 99 A3 83 69 01 ..#....'......i.
2306B970 EF F0 EE C1 37 E7 08 23 85 66 2A 84 13 07 47 81 ....7..#.f*...G.
2306B980 93 86 66 A4 79 BB EF F0 AE B0 AA 8B 01 CD AA 85 ..f.y...........
2306B990 6A 85 EF 20 4F 8B 19 E5 26 94 23 00 7C 01 A3 01 j.. O...&.#.|...
2306B9A0 94 01 4E 84 11 0B 15 B7 93 57 88 00 23 80 F4 00 ..N......W..#...
2306B9B0 A3 80 04 01 2C 44 93 87 24 00 42 86 3E 85 42 CA ....,D..$.B.>.B.
2306B9C0 3E C8 EF 50 A0 2B C2 47 52 48 13 07 4C 80 DE 86 >..P.+.GRH..L...
2306B9D0 13 06 8A 37 8D 45 6A 85 B3 84 07 01 66 9B EF 70 ...7.Ej.....f..p
2306B9E0 0F F0 03 24 04 13 05 B7 37 E7 08 23 85 66 13 07 ...$....7..#.f..
2306B9F0 47 83 93 86 16 BE 13 06 8A 37 89 45 6A 85 EF 70 G........7.Ej..p
2306BA00 EF DC 91 47 23 24 FD 0A D9 47 23 22 FD 0A 83 27 ...G#$...G#"...'
2306BA10 0D 0A 39 47 23 80 E7 00 83 27 4D 00 85 07 23 22 ..9G#....'M...#"
2306BA20 FD 00 83 27 0D 00 83 D7 47 07 89 8B 81 C7 6A 85 ...'....G.....j.
2306BA30 EF E0 5E 87 6A 85 EF F0 8E B5 2A 84 19 C9 37 A7 ..^.j.....*...7.
2306BA40 08 23 85 66 AA 87 13 07 87 D4 93 86 06 BF 6F E0 .#.f..........o.
2306BA50 BF AD 37 E7 08 23 85 66 13 07 07 85 93 86 46 BF ..7..#.f......F.
2306BA60 C9 B1 6A 85 EF 10 CF EF 6F E0 BF A5 83 27 0D 04 ..j.....o....'..
2306BA70 37 E7 08 23 85 64 13 07 C7 86 93 86 44 CD 13 06 7..#.d......D...
2306BA80 8A 37 89 45 6A 85 83 A9 07 00 EF 70 2F D4 6A 85 .7.Ej......p/.j.
2306BA90 EF 10 0F E2 2A 84 11 C9 37 97 08 23 AA 87 13 07 ....*...7..#....
2306BAA0 47 38 93 86 84 CD 6F E0 3F A8 03 27 0D 00 83 27 G8....o.?..'...'
2306BAB0 4D 06 11 49 03 57 47 07 09 8B 11 C3 31 49 83 2A M..I.WG.....1I.*
2306BAC0 0D 08 83 26 CD 06 59 47 3E 99 BE 9A 63 84 E6 02 ...&..YG>...c...
2306BAD0 37 E7 08 23 85 66 13 07 C7 88 93 86 16 CE 13 06 7..#.f..........
2306BAE0 8A 37 85 45 6A 85 EF 70 6F CE 61 74             .7.Ej..po.at   

l2306BAEC:
	addi	s0,s0,+00000400
	jal	zero,000000002306A4CE
2306BAF4             03 C7 07 00 C1 47 63 0A F7 00 37 E7     .....Gc...7.
2306BB00 08 23 85 66 13 07 C7 88 93 86 76 CE C9 BF 03 C7 .#.f......v.....
2306BB10 A9 00 85 47 63 1A F7 18 6A 85 EF E0 3F 8F EF A0 ...Gc...j...?...
2306BB20 FE B6 13 04 75 00 6A 85 EF E0 5F 8E 85 45 93 59 ....u.j..._..E.Y
2306BB30 34 00 83 24 0D 03 EF A0 1E A3 1D E9 37 E7 08 23 4..$........7..#
2306BB40 85 66 13 07 C7 8A 93 86 46 C3 13 06 8A 37 85 45 .f......F....7.E
2306BB50 6A 85 65 74 EF 70 8F C7 13 04 04 A0 37 E7 08 23 j.et.p......7..#
2306BB60 85 66 A2 87 13 07 47 8C 93 86 86 D9 6F E0 DF 9B .f....G.....o...
2306BB70 83 27 CD 00 A1 C3 83 47 09 00 2D 80 13 74 F4 0F .'.....G..-..t..
2306BB80 63 99 87 00 03 47 19 00 93 F7 F9 0F 09 09 63 03 c....G........c.
2306BB90 F7 02 37 E7 08 23 85 66 13 07 C7 88 93 86 26 C4 ..7..#.f......&.
2306BBA0 13 06 8A 37 85 45 6A 85 61 74 EF 70 2F C2 13 04 ...7.Ej.at.p/...
2306BBB0 04 40 6D B7 B3 07 39 01 63 8A FA 00 37 E7 08 23 .@m...9.c...7..#
2306BBC0 85 66 13 07 C7 88 93 86 A6 C4 D9 BF 03 27 0D 00 .f...........'..
2306BBD0 83 27 0D 03 54 10 70 5B 83 A5 07 15 03 A5 C7 14 .'..T.p[........
2306BBE0 05 82 05 8A EF F0 EE 97 83 27 0D 00 13 06 00 03 .........'......
2306BBF0 6C 10 98 4F C8 4F 02 97 2A 84 2D F1 6A 85 EF E0 l..O.O..*.-.j...
2306BC00 FF 80 83 27 0D 00 38 10 F4 08 83 A8 C7 01 03 A8 ...'..8.........
2306BC10 87 01 4E 86 93 07 00 03 CA 85 EF A0 7E A2 83 47 ..N.........~..G
2306BC20 C1 05 03 47 41 02 83 46 51 02 B9 8F 03 47 D1 05 ...GA..FQ....G..
2306BC30 35 8F D9 8F 22 57 13 47 07 03 D9 8F 5D 8D 83 27 5..."W.G....]..'
2306BC40 0D 03 13 07 00 03 23 AA E7 0C B3 07 A0 40 5D 8D ......#......@].
2306BC50 7D 85 13 76 F5 0F 81 47 13 45 F5 FF 03 27 0D 03 }..v...G.E...'..
2306BC60 03 27 47 0D 63 E1 E7 02 6A 85 EF D0 5E F2 2A 84 .'G.c...j...^.*.
2306BC70 39 C5 37 D7 08 23 85 66 A2 87 13 07 87 A3 93 86 9.7..#.f........
2306BC80 B6 DB 6F E0 7F 8A F8 08 74 10 3E 97 BE 96 03 47 ..o.....t.>....G
2306BC90 07 00 83 C6 06 00 B3 85 F4 00 69 8F F1 8E 55 8F ..........i...U.
2306BCA0 23 8C E5 10 85 07 5D BF 37 97 08 23 85 66 13 07 #.....].7..#.f..
2306BCB0 47 F1 93 86 56 DB 13 06 8A 37 6F F0 EF C4 83 27 G...V....7o....'
2306BCC0 4D 00 37 E7 08 23 85 66 85 07 23 22 FD 00 13 07 M.7..#.f..#"....
2306BCD0 C7 8E 93 86 16 DC B1 B4 83 27 0D 04 37 E7 08 23 .........'..7..#
2306BCE0 85 66 84 43 13 07 C7 90 93 86 E6 DE 13 06 8A 37 .f.C...........7
2306BCF0 89 45 6A 85 EF 70 8F AD 03 C7 A4 00 8D 46 93 07 .Ej..p.......F..
2306BD00 B7 FF 93 F7 F7 0F 63 FB F6 02 AD 47 63 08 F7 02 ......c....Gc...
2306BD10 83 27 CD 02 FC 4F 9D C3 E9 74 93 84 04 98 6A 85 .'...O...t....j.
2306BD20 EF 00 5F 98 2A 84 1D C1 37 A7 08 23 85 66 AA 87 .._.*...7..#.f..
2306BD30 13 07 87 8E 93 86 16 E0 6F E0 0F FF 37 E7 08 23 ........o...7..#
2306BD40 85 66 13 07 87 92 93 86 76 DF 59 B4 6A 85 EF 00 .f......v.Y.j...
2306BD50 6F 94 2A 84 E3 05 95 FC 19 C9 37 A7 08 23 85 66 o.*.......7..#.f
2306BD60 AA 87 13 07 87 90 93 86 B6 E0 6F E0 EF FB 83 27 ..........o....'
2306BD70 4D 00 03 27 CD 06 85 07 23 22 FD 00 D9 47 63 19 M..'....#"...Gc.
2306BD80 F7 00 83 27 4D 06 3D 47 83 C6 07 00 63 84 E6 02 ...'M.=G....c...
2306BD90 37 E7 08 23 85 66 13 07 C7 94 93 86 56 E1 13 06 7..#.f......V...
2306BDA0 8A 37 85 45 6A 85 61 74 EF 70 4F A2 13 04 04 28 .7.Ej.at.pO....(
2306BDB0 6F E0 EF F1 03 27 0D 00 91 4A 03 57 47 07 09 8B o....'...J.WG...
2306BDC0 11 C3 B1 4A 83 26 CD 00 0D 47 63 9E E6 0A 03 27 ...J.&...Gc....'
2306BDD0 0D 08 13 84 2A 00 63 7A 87 00 37 E7 08 23 85 66 ....*.cz..7..#.f
2306BDE0 13 07 C7 94 93 86 96 E3 5D BF D6 97 03 C5 07 00 ........].......
2306BDF0 EF E0 1E E8 AA 84 09 E9 37 E7 08 23 85 66 13 07 ........7..#.f..
2306BE00 C7 96 93 86 56 E4 61 BF 83 27 4D 06 6A 85 D6 97 ....V.a..'M.j...
2306BE10 83 C5 07 00 EF 10 3F C3 65 F1 91 47 93 09 C1 05 ......?.e..G....
2306BE20 63 94 F4 00 93 09 C1 06 83 27 4D 06 D6 97 03 C5 c........'M.....
2306BE30 17 00 EF E0 7E E3 AA 85 09 E9 37 E7 08 23 85 66 ....~.....7..#.f
2306BE40 13 07 C7 96 93 86 A6 E5 99 BF 83 27 CD 02 E8 4F ...........'...O
2306BE50 13 05 C5 0B EF A0 2E F1 09 E9 37 E7 08 23 85 66 ..........7..#.f
2306BE60 13 07 87 9A 93 86 36 E6 1D BF 03 27 0D 08 13 89 ......6....'....
2306BE70 4A 00 63 72 27 03 37 E7 08 23 85 66 13 07 C7 94 J.cr'.7..#.f....
2306BE80 93 86 26 E7 29 BF 37 97 08 23 85 66 13 07 47 F1 ..&.).7..#.f..G.
2306BE90 93 86 C6 E6 0D B5 83 26 4D 06 B3 87 86 00 83 C7 .......&M.......
2306BEA0 07 00 D6 96 83 C6 36 00 A2 07 D5 8F B3 06 F9 00 ......6.........
2306BEB0 63 0A D7 00 37 E7 08 23 85 66 13 07 C7 94 93 86 c...7..#.f......
2306BEC0 B6 E7 F1 BD 03 27 0D 03 EC 08 6A 85 03 27 87 0C .....'....j..'..
2306BED0 3E C8 02 97 83 26 CD 02 03 27 4D 06 C2 47 E8 4E >....&...'M..G.N
2306BEE0 4A 97 81 46 4E 86 A6 85 13 05 C5 0B EF A0 CE E8 J..FN...........
2306BEF0 2A 84 19 C9 37 E7 08 23 85 66 AA 87 13 07 87 9C *...7..#.f......
2306BF00 93 86 66 E8 6F E0 4F E2 6A 85 EF E0 AE BF 37 E7 ..f.o.O.j.....7.
2306BF10 08 23 85 66 13 07 C7 9D 93 86 C6 E8 6F F0 7F 80 .#.f........o...
2306BF20 6A 85 EF 10 6F E7 6F E0 CF D9 6A 85 EF 10 8F FC j...o.o...j.....
2306BF30 6F E0 2F D9 83 27 0D 03 83 A7 87 15 ED C7 37 E7 o./..'........7.
2306BF40 08 23 05 64 13 07 87 9F 93 06 E4 E9 13 06 8A 37 .#.d...........7
2306BF50 89 45 6A 85 EF 70 8F 87 D9 47 23 22 FD 0A 83 27 .Ej..p...G#"...'
2306BF60 0D 0A 11 47 91 66 23 80 E7 00 03 25 0D 00 03 26 ...G.f#....%...&
2306BF70 0D 0A 83 25 CD 02 03 28 C5 03 68 41 FC 08 B2 96 ...%...(..hA....
2306BF80 78 10 29 06 02 98 AA 87 11 CD 37 E7 08 23 13 07 x.).......7..#..
2306BF90 47 A1 93 06 44 EB 13 06 8A 37 85 45 6A 85 EF 70 G...D....7.Ej..p
2306BFA0 EF 8B 02 D6 F6 47 03 27 0D 0A 6A 85 93 D6 87 01 .....G.'..j.....
2306BFB0 23 02 D7 00 03 27 0D 0A 93 D6 07 01 A3 02 D7 00 #....'..........
2306BFC0 03 27 0D 0A 93 D6 87 00 23 03 D7 00 03 27 0D 0A .'......#....'..
2306BFD0 A3 03 F7 00 B2 57 03 27 0D 0A 93 D6 87 00 23 04 .....W.'......#.
2306BFE0 D7 00 03 27 0D 0A A3 04 F7 00 A9 07 23 24 FD 0A ...'........#$..
2306BFF0 83 27 0D 03 23 AC 07 14 EF E0 7E D9 2A 84 19 C9 .'..#.....~.*...
2306C000 37 A7 08 23 85 66 AA 87 13 07 87 D4 93 86 A6 EC 7..#.f..........
2306C010 6F E0 8F D1 37 E7 08 23 85 66 13 07 07 A3 93 86 o...7..#.f......
2306C020 E6 EC 6F F0 0F F0 6A 85 EF 00 8F AB 6F E0 6F C9 ..o...j.....o.o.
2306C030 6A 85 EF 00 0F B4 6F E0 CF C8 37 D7 08 23 85 66 j.....o...7..#.f
2306C040 13 07 07 F9 93 86 76 F4 13 06 8A 37 89 45 6A 85 ......v....7.Ej.
2306C050 EF 60 DF F7 BD 47 6F F0 CF F8 6A 85 EF E0 8E F2 .`...Go...j.....
2306C060 6F E0 EF C6                                     o...           

l2306C064:
	lui	a4,0002308D
	c.lui	a3,00001000
	c.mv	a5,s7
	addi	a4,a4,-00000060
	addi	a3,a3,-000000B0
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023062FCC

l2306C080:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	jal	zero,000000002306A4CE
2306C08A                               65 74 13 04 04 58           et...X
2306C090 6F E0 EF C3                                     o...           

;; mbedtls_x509_get_serial: 2306C094
;;   Called from:
;;     2305ECF2 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_serial proc
	c.lw	a0,0(a5)
	sub	a4,a1,a5
	bge	zero,a4,000000002306C0EC

l2306C09E:
	lbu	a4,a5,+00000000
	c.li	a3,00000002
	andi	a4,a4,+0000007F
	bne	a4,a3,000000002306C0F4

l2306C0AC:
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
	jal	ra,0000000023060818
	c.beqz	a0,000000002306C0E0

l2306C0CE:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000280
	c.add	a0,a5

l2306C0D6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306C0E0:
	c.lw	s0,0(a5)
	c.lw	s1,4(a4)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002306C0D6

l2306C0EC:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000002E0
	c.jr	ra

l2306C0F4:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000002E2
	c.jr	ra

;; mbedtls_x509_get_alg: 2306C0FC
;;   Called from:
;;     2305ED06 (in mbedtls_x509_crt_parse_der)
;;     2305EE50 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_alg proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023060B1E
	c.beqz	a0,000000002306C10E

l2306C106:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000300
	c.add	a0,a5

l2306C10E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_x509_get_name: 2306C114
;;   Called from:
;;     2305ED98 (in mbedtls_x509_crt_parse_der)
;;     2305EDE8 (in mbedtls_x509_crt_parse_der)
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

l2306C13A:
	addi	a3,zero,+00000031
	c.addi4spn	a2,00000008
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,00000000230608F4
	c.beqz	a0,000000002306C168

l2306C14A:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000380
	c.add	a0,a5

l2306C152:
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

l2306C168:
	lw	s2,s1,+00000000
	c.lwsp	s0,000000E4
	c.mv	s0,s6
	c.li	s7,0000001E
	c.add	s2,a5
	c.li	s6,00000001

l2306C176:
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230608F4
	c.beqz	a0,000000002306C1AC

l2306C186:
	c.add	a0,s3
	c.bnez	a0,000000002306C152

l2306C18A:
	c.lw	s1,0(a5)
	beq	a5,s2,000000002306C228

l2306C190:
	sb	s6,s0,+0000001C
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,24(a0)
	c.mv	s0,a0
	c.bnez	a0,000000002306C176

l2306C1A4:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000780
	c.j	000000002306C152

l2306C1AC:
	c.lw	s1,0(a5)
	sub	a4,s2,a5
	blt	zero,a4,000000002306C1BE

l2306C1B6:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000003E0
	c.j	000000002306C152

l2306C1BE:
	lbu	a5,a5,+00000000
	c.li	a3,00000006
	addi	a2,s0,+00000004
	c.sw	s0,0(a5)
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230608F4
	c.bnez	a0,000000002306C186

l2306C1D4:
	c.lw	s1,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,8(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	sub	a4,s2,a5
	bge	zero,a4,000000002306C1B6

l2306C1E6:
	lbu	a4,a5,+00000000
	bltu	s7,a4,000000002306C220

l2306C1EE:
	srl	a4,s4,a4
	c.andi	a4,00000001
	c.beqz	a4,000000002306C220

l2306C1F6:
	addi	a4,a5,+00000001
	c.sw	s1,0(a4)
	lbu	a5,a5,+00000000
	addi	a2,s0,+00000010
	c.mv	a1,s2
	c.sw	s0,12(a5)
	c.mv	a0,s1
	jal	ra,0000000023060818
	c.bnez	a0,000000002306C186

l2306C210:
	c.lw	s1,0(a5)
	c.lw	s0,16(a4)
	c.sw	s0,20(a5)
	c.add	a5,a4
	c.sw	s1,0(a5)
	sw	zero,s0,+00000018
	c.j	000000002306C18A

l2306C220:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000003E2
	c.j	000000002306C152

l2306C228:
	beq	s5,s2,000000002306C240

l2306C22C:
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,24(a0)
	c.mv	s6,a0
	bne	a0,zero,000000002306C13A

l2306C23E:
	c.j	000000002306C1A4

l2306C240:
	c.li	a0,00000000
	c.j	000000002306C152

;; mbedtls_x509_get_sig: 2306C244
;;   Called from:
;;     2305F1B0 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_sig proc
	c.lw	a0,0(a5)
	sub	a4,a1,a5
	bge	zero,a4,000000002306C28E

l2306C24E:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s1,a2
	c.addi4spn	a2,0000000C
	c.mv	s0,a0
	lbu	s2,a5,+00000000
	jal	ra,0000000023060A48
	c.beqz	a0,000000002306C27C

l2306C268:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000480
	c.add	a0,a5

l2306C270:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2306C27C:
	c.lwsp	a2,000000C4
	sw	s2,s1,+00000000
	c.sw	s1,4(a4)
	c.lw	s0,0(a5)
	c.sw	s1,8(a5)
	c.add	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002306C270

l2306C28E:
	c.lui	a0,FFFFE000
	addi	a0,a0,-000004E0
	c.jr	ra

;; mbedtls_x509_get_sig_alg: 2306C296
;;   Called from:
;;     2305ED6C (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_sig_alg proc
	c.lw	a4,0(a5)
	c.bnez	a5,000000002306C2D2

l2306C29A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a2
	c.mv	a2,a3
	c.swsp	ra,00000084
	jal	ra,0000000023065C64
	c.beqz	a0,000000002306C2BC

l2306C2AC:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000600
	c.add	a0,a5

l2306C2B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306C2BC:
	c.lw	s0,0(a5)
	c.li	a4,00000005
	beq	a5,a4,000000002306C2C6

l2306C2C4:
	c.bnez	a5,000000002306C2CA

l2306C2C6:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002306C2B4

l2306C2CA:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000300
	c.j	000000002306C2B4

l2306C2D2:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800
	c.jr	ra

;; mbedtls_x509_get_ext: 2306C2DA
;;   Called from:
;;     2305EE30 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_get_ext proc
	c.lw	a0,0(a5)
	bne	a5,a1,000000002306C2E4

l2306C2E0:
	c.li	a0,00000000
	c.jr	ra

l2306C2E4:
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
	jal	ra,00000000230608F4
	c.bnez	a0,000000002306C322

l2306C302:
	c.lw	s0,0(a5)
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,8(a5)
	c.lw	s1,4(s1)
	c.mv	a0,s0
	c.add	s1,a5
	c.mv	a1,s1
	jal	ra,00000000230608F4
	c.beqz	a0,000000002306C32C

l2306C31A:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000500
	c.add	a0,a5

l2306C322:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306C32C:
	c.lw	s0,0(a5)
	c.lwsp	a2,000000C4
	c.li	a0,00000000
	c.add	a5,a4
	beq	s1,a5,000000002306C322

l2306C338:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000566
	c.j	000000002306C322

;; mbedtls_x509_dn_gets: 2306C340
;;   Called from:
;;     2305DCFA (in mbedtls_x509_crt_info)
;;     2305DD30 (in mbedtls_x509_crt_info)
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
	lui	s4,0002308E
	jal	ra,0000000023070EB8
	lui	s5,00023080
	c.mv	s2,s6
	c.mv	s0,s3
	c.li	a5,00000000
	lui	s7,00023086
	lui	s8,0002308E
	lui	s9,0002308E
	addi	s4,s4,-000005B4
	addi	s5,s5,+00000648

l2306C3A4:
	bne	s2,zero,000000002306C3AE

l2306C3A8:
	sub	a0,s3,s0
	c.j	000000002306C3D6

l2306C3AE:
	lw	a4,s2,+00000008
	c.bnez	a4,000000002306C3BA

l2306C3B4:
	lw	s2,s2,+00000018
	c.j	000000002306C3A4

l2306C3BA:
	beq	s2,s6,000000002306C40E

l2306C3BE:
	c.mv	a2,s4
	c.bnez	a5,000000002306C3C4

l2306C3C2:
	c.mv	a2,s5

l2306C3C4:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	bge	a0,zero,000000002306C406

l2306C3D0:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2306C3D6:
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

l2306C406:
	bgeu	a0,s0,000000002306C3D0

l2306C40A:
	c.sub	s0,a0
	c.add	s1,a0

l2306C40E:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,0000000023065B50
	c.bnez	a0,000000002306C470

l2306C418:
	c.lwsp	a2,000000A4
	addi	a2,s9,-000005B0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A

l2306C426:
	blt	a0,zero,000000002306C3D0

l2306C42A:
	bgeu	a0,s0,000000002306C3D0

l2306C42E:
	c.sub	s0,a0
	c.add	s1,a0
	c.li	a5,00000000
	addi	a2,zero,+000000FF
	c.li	a1,0000001F
	addi	a0,zero,+0000007F
	c.li	a6,0000001E

l2306C440:
	lw	a4,s2,+00000010
	bltu	a5,a4,000000002306C47E

l2306C448:
	c.addi4spn	a4,00000110
	c.add	a5,a4
	c.addi4spn	a3,00000010
	addi	a2,s7,-00000328
	c.mv	a1,s0
	c.mv	a0,s1
	sb	zero,a5,+00000F00
	jal	ra,000000002305216A
	blt	a0,zero,000000002306C3D0

l2306C462:
	bgeu	a0,s0,000000002306C3D0

l2306C466:
	c.sub	s0,a0
	c.add	s1,a0
	lbu	a5,s2,+0000001C
	c.j	000000002306C3B4

l2306C470:
	addi	a2,s8,-000005AC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	c.j	000000002306C426

l2306C47E:
	beq	a5,a2,000000002306C448

l2306C482:
	lw	a4,s2,+00000014
	c.add	a4,a5
	lbu	a4,a4,+00000000
	bgeu	a1,a4,000000002306C4A0

l2306C490:
	beq	a4,a0,000000002306C4A0

l2306C494:
	addi	a3,a4,+0000007F
	andi	a3,a3,+000000FF
	bltu	a6,a3,000000002306C4A4

l2306C4A0:
	addi	a4,zero,+0000003F

l2306C4A4:
	c.addi4spn	a3,00000010
	c.add	a3,a5
	sb	a4,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002306C440

;; mbedtls_x509_serial_gets: 2306C4B0
;;   Called from:
;;     2305DCC4 (in mbedtls_x509_crt_info)
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
	bgeu	a5,s3,000000002306C4DE

l2306C4DC:
	c.li	s3,0000001C

l2306C4DE:
	lui	s6,00023088
	lui	s7,00023089
	c.mv	s0,s1
	c.li	s2,00000000
	addi	s8,s3,-00000001
	lui	s9,0002308E
	addi	s6,s6,-00000590
	addi	s7,s7,-000001A0
	c.li	s10,00000001

l2306C4FC:
	bne	s2,s3,000000002306C528

l2306C500:
	lw	a5,s5,+00000004
	beq	a5,s2,000000002306C522

l2306C508:
	lui	a2,0002308E
	addi	a2,a2,-00000594
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002305216A
	blt	a0,zero,000000002306C558

l2306C51C:
	bgeu	a0,s0,000000002306C558

l2306C520:
	c.sub	s0,a0

l2306C522:
	sub	a0,s1,s0
	c.j	000000002306C55E

l2306C528:
	lw	a5,s5,+00000008
	bne	s2,zero,000000002306C53A

l2306C530:
	beq	s3,s10,000000002306C53A

l2306C534:
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002306C582

l2306C53A:
	c.add	a5,s2
	lbu	a3,a5,+00000000
	c.mv	a4,s6
	bltu	s2,s8,000000002306C548

l2306C546:
	c.mv	a4,s7

l2306C548:
	addi	a2,s9,-0000059C
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002305216A
	bge	a0,zero,000000002306C57A

l2306C558:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2306C55E:
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

l2306C57A:
	bgeu	a0,s0,000000002306C558

l2306C57E:
	c.sub	s0,a0
	c.add	s4,a0

l2306C582:
	c.addi	s2,00000001
	c.j	000000002306C4FC

;; mbedtls_x509_sig_alg_gets: 2306C586
;;   Called from:
;;     2305DDE6 (in mbedtls_x509_crt_info)
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
	jal	ra,0000000023065C3A
	c.beqz	a0,000000002306C5C6

l2306C59E:
	lui	a2,0002307F
	addi	a2,a2,+000000C4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A

l2306C5AE:
	blt	a0,zero,000000002306C5B6

l2306C5B2:
	bltu	a0,s0,000000002306C5BC

l2306C5B6:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2306C5BC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306C5C6:
	c.lwsp	a2,000000A4
	lui	a2,00023086
	addi	a2,a2,-00000328
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	c.j	000000002306C5AE

;; mbedtls_x509_key_size_helper: 2306C5DA
;;   Called from:
;;     2305DE04 (in mbedtls_x509_crt_info)
mbedtls_x509_key_size_helper proc
	c.mv	a3,a2
	lui	a2,0002308E
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-000005A8
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002305216A
	blt	a0,zero,000000002306C602

l2306C5F4:
	bgeu	a0,s0,000000002306C602

l2306C5F8:
	c.li	a0,00000000

l2306C5FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306C602:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680
	c.j	000000002306C5FA

;; mbedtls_x509_time_is_past: 2306C60A
;;   Called from:
;;     2305E478 (in x509_crt_verify_top.isra.7)
;;     2305E582 (in x509_crt_verify_top.isra.7)
;;     2305E5DA (in x509_crt_verify_top.isra.7)
;;     2305E6BC (in x509_crt_verify_child)
mbedtls_x509_time_is_past proc
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_x509_time_is_future: 2306C60E
;;   Called from:
;;     2305E48A (in x509_crt_verify_top.isra.7)
;;     2305E598 (in x509_crt_verify_top.isra.7)
;;     2305E5EC (in x509_crt_verify_top.isra.7)
;;     2305E6CE (in x509_crt_verify_child)
mbedtls_x509_time_is_future proc
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_base64_decode: 2306C612
;;   Called from:
;;     230660FE (in mbedtls_pem_read_buffer)
;;     2306611E (in mbedtls_pem_read_buffer)
mbedtls_base64_decode proc
	c.addi	sp,FFFFFFE0
	lui	t3,0002308E
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
	addi	t3,t3,-0000058C
	addi	s1,zero,+0000007F
	addi	s2,zero,+0000003F
	c.li	s3,00000002
	c.li	t5,0000000A
	c.li	s4,0000000D

l2306C646:
	bltu	a7,a4,000000002306C662

l2306C64A:
	c.mv	a4,a7
	c.j	000000002306C656

l2306C64E:
	c.addi	a7,00000001
	c.addi	t4,00000001
	bne	a4,a7,000000002306C664

l2306C656:
	bne	a6,zero,000000002306C6C4

l2306C65A:
	sw	zero,a2,+00000000

l2306C65E:
	c.li	a0,00000000
	c.j	000000002306C71A

l2306C662:
	c.li	t4,00000000

l2306C664:
	add	t6,a3,a7
	lbu	t1,t6,+00000000
	beq	t1,t0,000000002306C64E

l2306C670:
	beq	a4,a7,000000002306C656

l2306C674:
	sub	s5,a4,a7
	bgeu	t2,s5,000000002306C68C

l2306C67C:
	bne	t1,s4,000000002306C68C

l2306C680:
	lbu	t6,t6,+00000001
	bne	t6,t5,000000002306C690

l2306C688:
	c.addi	a7,00000001
	c.j	000000002306C646

l2306C68C:
	beq	t1,t5,000000002306C688

l2306C690:
	bne	t4,zero,000000002306C69E

l2306C694:
	bne	t1,s0,000000002306C6A4

l2306C698:
	c.addi	a5,00000001
	bgeu	s3,a5,000000002306C6B0

l2306C69E:
	addi	a0,zero,-0000002C
	c.j	000000002306C71A

l2306C6A4:
	slli	t4,t1,00000018
	srai	t4,t4,00000018
	blt	t4,zero,000000002306C69E

l2306C6B0:
	c.add	t1,t3
	lbu	t1,t1,+00000000
	beq	t1,s1,000000002306C69E

l2306C6BA:
	bltu	s2,t1,000000002306C6C0

l2306C6BE:
	c.bnez	a5,000000002306C69E

l2306C6C0:
	c.addi	a6,00000001
	c.j	000000002306C688

l2306C6C4:
	andi	a7,a6,+00000007
	c.li	t1,00000006
	add	a7,a7,t1
	srli	a6,a6,00000003
	add	a6,a6,t1
	c.addi	a7,00000007
	srli	a7,a7,00000003
	sub	a6,a6,a5
	c.add	a6,a7
	c.beqz	a0,000000002306C712

l2306C6E4:
	bltu	a1,a6,000000002306C712

l2306C6E8:
	lui	t4,0002308E
	lui	t5,00000400
	c.add	a4,a3
	c.mv	a5,a0
	c.li	a6,00000000
	c.li	a7,00000003
	c.li	t1,00000000
	c.li	t6,00000016
	addi	t4,t4,-0000058C
	c.li	t0,00000004
	c.li	t2,00000001
	c.li	s0,00000002
	c.addi	t5,00000009

l2306C708:
	bne	a4,a3,000000002306C72A

l2306C70C:
	c.sub	a5,a0
	c.sw	a2,0(a5)
	c.j	000000002306C65E

l2306C712:
	sw	a6,a2,+00000000
	addi	a0,zero,-0000002A

l2306C71A:
	c.lwsp	t3,00000004
	c.lwsp	s8,00000024
	c.lwsp	s4,00000048
	c.lwsp	a6,00000068
	c.lwsp	a2,00000088
	c.lwsp	s0,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2306C72A:
	lbu	t3,a3,+00000000
	addi	a1,t3,-0000000A
	andi	a1,a1,+000000FF
	bltu	t6,a1,000000002306C742

l2306C73A:
	srl	a1,t5,a1
	c.andi	a1,00000001
	c.bnez	a1,000000002306C778

l2306C742:
	c.add	t3,t4
	lbu	a1,t3,+00000000
	c.slli	a6,06
	c.addi	t1,00000001
	addi	t3,a1,-00000040
	sltiu	t3,t3,+00000001
	andi	a1,a1,+0000003F
	sub	a7,a7,t3
	or	a6,a1,a6
	bne	t1,t0,000000002306C778

l2306C764:
	c.li	t1,00000000
	beq	a7,zero,000000002306C778

l2306C76A:
	srli	a1,a6,00000010
	sb	a1,a5,+00000000
	bne	a7,t2,000000002306C77C

l2306C776:
	c.addi	a5,00000001

l2306C778:
	c.addi	a3,00000001
	c.j	000000002306C708

l2306C77C:
	srli	a1,a6,00000008
	sb	a1,a5,+00000001
	bne	a7,s0,000000002306C78C

l2306C788:
	c.addi	a5,00000002
	c.j	000000002306C778

l2306C78C:
	sb	a6,a5,+00000002
	c.addi	a5,00000003
	c.j	000000002306C778

;; modf: 2306C794
;;   Called from:
;;     23051578 (in cvt)
;;     23051600 (in cvt)
;;     230516E4 (in cvt)
modf proc
	srai	a4,a1,00000014
	addi	sp,sp,-00000010
	andi	a4,a4,+000007FF
	sw	ra,sp,+0000000C
	addi	a6,a4,-000003FF
	addi	a7,zero,+00000013
	addi	a5,a1,+00000000
	addi	a3,a0,+00000000
	blt	a7,a6,000000002306C7FC

l2306C7B8:
	blt	a6,zero,000000002306C860

l2306C7BC:
	lui	a4,00000100
	addi	a4,a4,-00000001
	sra	a6,a4,a6
	and	a4,a6,a1
	or	a4,a4,a0
	bne	a4,zero,000000002306C82C

l2306C7D4:
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

l2306C7FC:
	addi	a7,zero,+00000033
	blt	a7,a6,000000002306C7D4

l2306C804:
	addi	a6,zero,-00000001
	addi	a4,a4,-00000413
	srl	a4,a6,a4
	and	a6,a4,a0
	beq	a6,zero,000000002306C7D4

l2306C818:
	xori	a4,a4,-00000001
	and	a3,a4,a0
	addi	t1,a3,+00000000
	addi	a6,a3,+00000000
	jal	zero,000000002306C840

l2306C82C:
	xori	a6,a6,-00000001
	addi	a4,zero,+00000000
	and	a5,a6,a1
	addi	t1,a4,+00000000
	addi	a6,a4,+00000000

l2306C840:
	sw	t1,a2,+00000000
	sw	a5,a2,+00000004
	addi	a3,a5,+00000000
	addi	a2,a6,+00000000
	jal	ra,000000002306F8DC
	lw	ra,sp,+0000000C
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2306C860:
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

;; __lshrdi3: 2306C888
;;   Called from:
;;     230546C8 (in EF_Ctrl_Read_PowerOffset_Opt)
__lshrdi3 proc
	beq	a2,zero,000000002306C8A8

l2306C88C:
	addi	a5,zero,+00000020
	sub	a5,a5,a2
	blt	zero,a5,000000002306C8AC

l2306C898:
	addi	a0,a2,-00000020
	addi	a4,zero,+00000000
	srl	a0,a1,a0

l2306C8A4:
	addi	a1,a4,+00000000

l2306C8A8:
	jalr	zero,ra,+00000000

l2306C8AC:
	srl	a4,a1,a2
	srl	a0,a0,a2
	sll	a1,a1,a5
	or	a0,a0,a1
	jal	zero,000000002306C8A4

;; __clzsi2: 2306C8C0
;;   Called from:
;;     2300599A (in txl_payload_handle)
;;     23005ED6 (in txl_transmit_trigger)
;;     230083B4 (in rc_get_initial_rate_config)
;;     2300AC36 (in scanu_frame_handler)
;;     2300E576 (in ke_evt_schedule)
;;     2301F5EC (in apm_start_req_handler)
;;     230306DC (in vTaskSwitchContext)
;;     230555DC (in bloop_run)
;;     230555E4 (in bloop_run)
;;     2306E2F0 (in __adddf3)
;;     2306E364 (in __adddf3)
;;     2306E68C (in __divdf3)
;;     2306E6C4 (in __divdf3)
;;     2306E7B4 (in __divdf3)
;;     2306E7F0 (in __divdf3)
;;     2306F1D8 (in __muldf3)
;;     2306F210 (in __muldf3)
;;     2306F304 (in __muldf3)
;;     2306F340 (in __muldf3)
;;     230701E0 (in __subdf3)
;;     23070254 (in __subdf3)
;;     23070600 (in __floatsidf)
;;     23070698 (in __floatunsidf)
;;     230707A4 (in __extendsfdf2)
__clzsi2 proc
	lui	a5,00000010
	bgeu	a0,a5,000000002306C8F8

l2306C8C8:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a0
	slli	a5,a5,00000003

l2306C8D4:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	srl	a5,a0,a5
	auipc	a0,00000021
	addi	a0,a0,+0000028C
	add	a5,a0,a5
	lbu	a0,a5,+00000000
	sub	a0,a4,a0
	jalr	zero,ra,+00000000

l2306C8F8:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a0,a4,000000002306C8D4

l2306C904:
	addi	a5,zero,+00000018
	jal	zero,000000002306C8D4

;; __floatundisf: 2306C90C
;;   Called from:
;;     2304887A (in iperf_server_udp_recv_fn)
;;     230488AC (in iperf_server_udp_recv_fn)
;;     23048AFC (in iperf_client_udp)
;;     23048D9A (in iperf_server)
;;     23048FAE (in iperf_client_tcp)
__floatundisf proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	lui	a5,00000200
	addi	s0,a0,+00000000
	bltu	a1,a5,000000002306C93C

l2306C924:
	slli	a5,a0,00000015
	beq	a5,zero,000000002306C93C

l2306C92C:
	lui	a5,00000001
	andi	s0,a0,-00000800
	addi	a5,a5,-00000800
	or	s0,s0,a5

l2306C93C:
	addi	a0,a1,+00000000
	jal	ra,0000000023070684
	auipc	a5,0001EFA1
	addi	a5,a5,+00000074
	lw	a2,a5,+00000000
	lw	a3,a5,+00000004
	jal	ra,000000002306F140
	sw	a0,sp,+00000008
	addi	a0,s0,+00000000
	sw	a1,sp,+0000000C
	jal	ra,0000000023070684
	lw	a2,sp,+00000008
	lw	a3,sp,+0000000C
	jal	ra,000000002306DAA4
	jal	ra,0000000023070818
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

;; __divdi3: 2306C988
;;   Called from:
;;     2302BADC (in uptime_cmd)
;;     2302BAFC (in uptime_cmd)
;;     2302BB1A (in uptime_cmd)
;;     2302BB2C (in uptime_cmd)
__divdi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,000000002306C9A4

l2306C990:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l2306C9A4:
	bge	a3,zero,000000002306C9BC

l2306C9A8:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	xori	a7,a7,-00000001
	sub	a3,a3,a5

l2306C9BC:
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	addi	t3,a1,+00000000
	bne	a3,zero,000000002306CC70

l2306C9D0:
	auipc	a3,00000021
	addi	a3,a3,+0000019C
	bgeu	a1,a2,000000002306CAC4

l2306C9DC:
	lui	a5,00000010
	bgeu	a2,a5,000000002306CAB0

l2306C9E4:
	addi	a5,zero,+000000FF
	sltu	a5,a5,a2
	slli	a5,a5,00000003

l2306C9F0:
	srl	a4,a2,a5
	add	a3,a3,a4
	lbu	a4,a3,+00000000
	add	a5,a4,a5
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	beq	a4,zero,000000002306CA20

l2306CA0C:
	sll	a1,a1,a4
	srl	a5,a0,a5
	sll	a6,a2,a4
	or	t3,a5,a1
	sll	t1,a0,a4

l2306CA20:
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
	bgeu	a4,a3,000000002306CA64

l2306CA4C:
	add	a4,a4,a6
	addi	a5,t3,-00000001
	bltu	a4,a6,000000002306CA64

l2306CA58:
	bgeu	a4,a3,000000002306CA64

l2306CA5C:
	addi	a5,t3,-00000002
	add	a4,a4,a6

l2306CA64:
	sub	a4,a4,a3
	and	a3,a4,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a4,a4,a2
	slli	a3,a3,00000010
	or	t1,a3,t1
	add	a1,a1,a4
	addi	a0,a4,+00000000
	bgeu	t1,a1,000000002306CAA0

l2306CA8C:
	add	t1,a6,t1
	addi	a0,a4,-00000001
	bltu	t1,a6,000000002306CAA0

l2306CA98:
	bgeu	t1,a1,000000002306CAA0

l2306CA9C:
	addi	a0,a4,-00000002

l2306CAA0:
	slli	a5,a5,00000010
	or	a5,a5,a0

l2306CAA8:
	addi	t3,zero,+00000000
	jal	zero,000000002306CB90

l2306CAB0:
	lui	a4,00001000
	addi	a5,zero,+00000010
	bltu	a2,a4,000000002306C9F0

l2306CABC:
	addi	a5,zero,+00000018
	jal	zero,000000002306C9F0

l2306CAC4:
	bne	a2,zero,000000002306CAD0

l2306CAC8:
	addi	a6,zero,+00000001
	srl	a6,a6,a4

l2306CAD0:
	lui	a5,00000010
	bgeu	a6,a5,000000002306CBB0

l2306CAD8:
	addi	a5,zero,+000000FF
	bgeu	a5,a6,000000002306CAE4

l2306CAE0:
	addi	a4,zero,+00000008

l2306CAE4:
	srl	a5,a6,a4
	add	a3,a3,a5
	lbu	a5,a3,+00000000
	addi	a3,zero,+00000020
	add	a5,a5,a4
	sub	a3,a3,a5
	bne	a3,zero,000000002306CBC4

l2306CB00:
	sub	a1,a1,a6
	addi	t3,zero,+00000001

l2306CB08:
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
	bgeu	a3,a1,000000002306CB4C

l2306CB34:
	add	a3,a3,a6
	addi	a5,a4,-00000001
	bltu	a3,a6,000000002306CB4C

l2306CB40:
	bgeu	a3,a1,000000002306CB4C

l2306CB44:
	addi	a5,a4,-00000002
	add	a3,a3,a6

l2306CB4C:
	sub	a3,a3,a1
	and	a4,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	or	t1,a4,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,000000002306CB88

l2306CB74:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002306CB88

l2306CB80:
	bgeu	t1,a1,000000002306CB88

l2306CB84:
	addi	a0,a3,-00000002

l2306CB88:
	slli	a5,a5,00000010
	or	a5,a5,a0

l2306CB90:
	addi	a0,a5,+00000000
	addi	a1,t3,+00000000
	beq	a7,zero,000000002306CBAC

l2306CB9C:
	sub	a0,zero,a5
	sltu	a5,zero,a0
	sub	a1,zero,t3
	sub	a1,a1,a5

l2306CBAC:
	jalr	zero,ra,+00000000

l2306CBB0:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a6,a5,000000002306CAE4

l2306CBBC:
	addi	a4,zero,+00000018
	jal	zero,000000002306CAE4

l2306CBC4:
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
	bgeu	a5,a3,000000002306CC20

l2306CC08:
	add	a5,a5,a6
	addi	t3,a4,-00000001
	bltu	a5,a6,000000002306CC20

l2306CC14:
	bgeu	a5,a3,000000002306CC20

l2306CC18:
	addi	t3,a4,-00000002
	add	a5,a5,a6

l2306CC20:
	sub	a3,a5,a3
	and	a5,a3,a0
	slli	a2,a2,00000010
	srli	a2,a2,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	add	a4,a1,a3
	or	a1,a5,a2
	addi	a5,a3,+00000000
	bgeu	a1,a4,000000002306CC60

l2306CC48:
	add	a1,a1,a6
	addi	a5,a3,-00000001
	bltu	a1,a6,000000002306CC60

l2306CC54:
	bgeu	a1,a4,000000002306CC60

l2306CC58:
	addi	a5,a3,-00000002
	add	a1,a1,a6

l2306CC60:
	slli	t3,t3,00000010
	sub	a1,a1,a4
	or	t3,t3,a5
	jal	zero,000000002306CB08

l2306CC70:
	bltu	a1,a3,000000002306CDFC

l2306CC74:
	lui	a5,00000010
	bgeu	a3,a5,000000002306CCC0

l2306CC7C:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l2306CC88:
	srl	a6,a3,a4
	auipc	a5,00000021
	addi	a5,a5,-00000120
	add	a5,a5,a6
	lbu	a6,a5,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,000000002306CCD4

l2306CCAC:
	addi	a5,zero,+00000001
	bltu	a3,a1,000000002306CB90

l2306CCB4:
	sltu	a0,a0,a2
	xori	a5,a0,+00000001
	jal	zero,000000002306CB90

l2306CCC0:
	lui	a5,00001000
	addi	a4,zero,+00000010
	bltu	a3,a5,000000002306CC88

l2306CCCC:
	addi	a4,zero,+00000018
	jal	zero,000000002306CC88

l2306CCD4:
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
	bgeu	a4,t1,000000002306CD38

l2306CD20:
	add	a4,a4,a3
	addi	t4,a5,-00000001
	bltu	a4,a3,000000002306CD38

l2306CD2C:
	bgeu	a4,t1,000000002306CD38

l2306CD30:
	addi	t4,a5,-00000002
	add	a4,a4,a3

l2306CD38:
	sub	a4,a4,t1
	and	t1,a4,t6
	slli	a1,a1,00000010
	srli	a1,a1,00000010
	srl	a4,a4,t6
	slli	t1,t1,00000010
	or	a6,t1,a1
	add	t5,t5,a4
	addi	a5,a4,+00000000
	bgeu	a6,t5,000000002306CD78

l2306CD60:
	add	a6,a6,a3
	addi	a5,a4,-00000001
	bltu	a6,a3,000000002306CD78

l2306CD6C:
	bgeu	a6,t5,000000002306CD78

l2306CD70:
	addi	a5,a4,-00000002
	add	a6,a6,a3

l2306CD78:
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
	bgeu	a4,a3,000000002306CDC0

l2306CDBC:
	add	a1,a1,t5

l2306CDC0:
	srli	a3,a4,00000010
	add	a1,a3,a1
	bltu	a6,a1,000000002306CDF4

l2306CDCC:
	bne	a6,a1,000000002306CAA8

l2306CDD0:
	lui	a3,00000010
	addi	a3,a3,-00000001
	and	a4,a4,a3
	slli	a4,a4,00000010
	and	t4,t4,a3
	sll	a0,a0,t3
	add	a4,a4,t4
	addi	t3,zero,+00000000
	bgeu	a0,a4,000000002306CB90

l2306CDF4:
	addi	a5,a5,-00000001
	jal	zero,000000002306CAA8

l2306CDFC:
	addi	t3,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,000000002306CB90

;; __moddi3: 2306CE08
;;   Called from:
;;     2302BAE6 (in uptime_cmd)
;;     2302BB04 (in uptime_cmd)
;;     2302BB36 (in uptime_cmd)
__moddi3 proc
	addi	a7,zero,+00000000
	bge	a1,zero,000000002306CE24

l2306CE10:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a1,zero,a1
	sub	a1,a1,a5
	addi	a7,zero,-00000001

l2306CE24:
	bge	a3,zero,000000002306CE38

l2306CE28:
	sub	a2,zero,a2
	sltu	a5,zero,a2
	sub	a3,zero,a3
	sub	a3,a3,a5

l2306CE38:
	addi	t1,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,000000002306D098

l2306CE4C:
	auipc	a3,00000021
	addi	a3,a3,-000002E0
	bgeu	a1,a2,000000002306CF44

l2306CE58:
	lui	t3,00000010
	bgeu	a2,t3,000000002306CF30

l2306CE60:
	addi	t3,zero,+000000FF
	bgeu	t3,a2,000000002306CE6C

l2306CE68:
	addi	a4,zero,+00000008

l2306CE6C:
	srl	t3,a2,a4
	add	a3,a3,t3
	lbu	a3,a3,+00000000
	addi	t3,zero,+00000020
	add	a4,a3,a4
	sub	t3,t3,a4
	beq	t3,zero,000000002306CE9C

l2306CE88:
	sll	a1,a1,t3
	srl	a4,a0,a4
	sll	t1,a2,t3
	or	a6,a4,a1
	sll	a5,a0,t3

l2306CE9C:
	srli	a2,t1,00000010
	srl	a1,a6,a2
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a4,a5,00000010
	and	a3,a6,a2
	add	a1,a0,a1
	slli	a3,a3,00000010
	or	a4,a3,a4
	bgeu	a4,a1,000000002306CED4

l2306CEC4:
	add	a4,a4,t1
	bltu	a4,t1,000000002306CED4

l2306CECC:
	bgeu	a4,a1,000000002306CED4

l2306CED0:
	add	a4,a4,t1

l2306CED4:
	sub	a4,a4,a1
	and	a3,a4,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a4,a4,a2
	add	a4,a0,a4
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a4,000000002306CF08

l2306CEF8:
	add	a5,a5,t1
	bltu	a5,t1,000000002306CF08

l2306CF00:
	bgeu	a5,a4,000000002306CF08

l2306CF04:
	add	a5,a5,t1

l2306CF08:
	sub	a5,a5,a4

l2306CF0C:
	srl	a0,a5,t3
	addi	a1,zero,+00000000

l2306CF14:
	beq	a7,zero,000000002306CF2C

l2306CF18:
	sub	a5,zero,a0
	sltu	a4,zero,a5
	sub	a1,zero,a1
	addi	a0,a5,+00000000
	sub	a1,a1,a4

l2306CF2C:
	jalr	zero,ra,+00000000

l2306CF30:
	lui	t3,00001000
	addi	a4,zero,+00000010
	bltu	a2,t3,000000002306CE6C

l2306CF3C:
	addi	a4,zero,+00000018
	jal	zero,000000002306CE6C

l2306CF44:
	bne	a2,zero,000000002306CF50

l2306CF48:
	addi	t1,zero,+00000001
	srl	t1,t1,a4

l2306CF50:
	lui	a2,00000010
	bgeu	t1,a2,000000002306CFF8

l2306CF58:
	addi	a2,zero,+000000FF
	bgeu	a2,t1,000000002306CF64

l2306CF60:
	addi	a4,zero,+00000008

l2306CF64:
	srl	a2,t1,a4
	add	a3,a3,a2
	lbu	a6,a3,+00000000
	addi	t3,zero,+00000020
	add	a6,a6,a4
	sub	t3,t3,a6
	bne	t3,zero,000000002306D00C

l2306CF80:
	sub	a1,a1,t1

l2306CF84:
	srli	a3,t1,00000010
	slli	a0,t1,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a4,a1,a3
	srl	a1,a1,a3
	slli	a4,a4,00000010
	or	a4,a4,a2
	add	a1,a0,a1
	bgeu	a4,a1,000000002306CFBC

l2306CFAC:
	add	a4,a4,t1
	bltu	a4,t1,000000002306CFBC

l2306CFB4:
	bgeu	a4,a1,000000002306CFBC

l2306CFB8:
	add	a4,a4,t1

l2306CFBC:
	sub	a1,a4,a1
	and	a4,a1,a3
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a3
	add	a1,a0,a1
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a1,000000002306CFF0

l2306CFE0:
	add	a5,a5,t1
	bltu	a5,t1,000000002306CFF0

l2306CFE8:
	bgeu	a5,a1,000000002306CFF0

l2306CFEC:
	add	a5,a5,t1

l2306CFF0:
	sub	a5,a5,a1
	jal	zero,000000002306CF0C

l2306CFF8:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	t1,a2,000000002306CF64

l2306D004:
	addi	a4,zero,+00000018
	jal	zero,000000002306CF64

l2306D00C:
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
	bgeu	a4,a2,000000002306D05C

l2306D04C:
	add	a4,a4,t1
	bltu	a4,t1,000000002306D05C

l2306D054:
	bgeu	a4,a2,000000002306D05C

l2306D058:
	add	a4,a4,t1

l2306D05C:
	sub	a3,a4,a2
	and	a4,a3,a0
	slli	a6,a6,00000010
	srli	a6,a6,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a3,a1,a3
	or	a1,a4,a6
	bgeu	a1,a3,000000002306D090

l2306D080:
	add	a1,a1,t1
	bltu	a1,t1,000000002306D090

l2306D088:
	bgeu	a1,a3,000000002306D090

l2306D08C:
	add	a1,a1,t1

l2306D090:
	sub	a1,a1,a3
	jal	zero,000000002306CF84

l2306D098:
	bltu	a1,a3,000000002306CF14

l2306D09C:
	lui	a4,00000010
	bgeu	a3,a4,000000002306D0F8

l2306D0A4:
	addi	t5,zero,+000000FF
	sltu	a4,t5,a3
	slli	a4,a4,00000003

l2306D0B0:
	srl	t3,a3,a4
	auipc	t1,00000021
	addi	t1,t1,-00000548
	add	t1,t1,t3
	lbu	t5,t1,+00000000
	addi	t4,zero,+00000020
	add	t5,t5,a4
	sub	t4,t4,t5
	bne	t4,zero,000000002306D10C

l2306D0D4:
	bltu	a3,a1,000000002306D0DC

l2306D0D8:
	bltu	a0,a2,000000002306D0EC

l2306D0DC:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l2306D0EC:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,000000002306CF14

l2306D0F8:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a3,t1,000000002306D0B0

l2306D104:
	addi	a4,zero,+00000018
	jal	zero,000000002306D0B0

l2306D10C:
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
	bgeu	t1,t6,000000002306D174

l2306D15C:
	add	t1,t1,a3
	addi	t3,a4,-00000001
	bltu	t1,a3,000000002306D174

l2306D168:
	bgeu	t1,t6,000000002306D174

l2306D16C:
	addi	t3,a4,-00000002
	add	t1,t1,a3

l2306D174:
	sub	t1,t1,t6
	and	t6,t1,a6
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	t1,t1,a6
	slli	t6,t6,00000010
	or	t6,t6,a5
	add	a1,a1,t1
	addi	a5,t1,+00000000
	bgeu	t6,a1,000000002306D1B4

l2306D19C:
	add	t6,t6,a3
	addi	a5,t1,-00000001
	bltu	t6,a3,000000002306D1B4

l2306D1A8:
	bgeu	t6,a1,000000002306D1B4

l2306D1AC:
	addi	a5,t1,-00000002
	add	t6,t6,a3

l2306D1B4:
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
	bgeu	a6,a5,000000002306D1FC

l2306D1F8:
	add	t3,t3,t6

l2306D1FC:
	srli	a5,a6,00000010
	add	t3,a5,t3
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t3,000000002306D228

l2306D220:
	bne	a1,t3,000000002306D23C

l2306D224:
	bgeu	a0,a4,000000002306D23C

l2306D228:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t3,t3,a4
	addi	a4,a2,+00000000

l2306D23C:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t3
	sub	a1,a1,a0
	sll	a5,a1,t5
	srl	a4,a4,t4
	or	a0,a5,a4
	srl	a1,a1,t4
	jal	zero,000000002306CF14

;; __udivdi3: 2306D260
;;   Called from:
;;     23002BC0 (in mm_check_beacon)
;;     23012BDA (in InitGroupKey)
;;     2302B2A8 (in cmd_sys_time_now)
;;     23034764 (in bl_timer_now_us)
;;     23051468 (in format_int)
;;     230514EC (in format_int)
;;     23061E28 (in mbedtls_mpi_div_mpi)
__udivdi3 proc
	addi	a5,a1,+00000000
	addi	a6,a2,+00000000
	addi	a4,a3,+00000000
	addi	t1,a0,+00000000
	bne	a3,zero,000000002306D4FC

l2306D274:
	auipc	a7,00000021
	addi	a7,a7,-00000708
	bgeu	a1,a2,000000002306D368

l2306D280:
	lui	a4,00000010
	bgeu	a2,a4,000000002306D354

l2306D288:
	addi	a4,zero,+000000FF
	sltu	a4,a4,a2
	slli	a4,a4,00000003

l2306D294:
	srl	a3,a2,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a4,a3,a4
	addi	a3,zero,+00000020
	sub	a3,a3,a4
	beq	a3,zero,000000002306D2C4

l2306D2B0:
	sll	a5,a5,a3
	srl	a4,a0,a4
	sll	a6,a2,a3
	or	a1,a4,a5
	sll	t1,a0,a3

l2306D2C4:
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
	bgeu	a3,a5,000000002306D308

l2306D2F0:
	add	a3,a3,a6
	addi	a4,a1,-00000001
	bltu	a3,a6,000000002306D308

l2306D2FC:
	bgeu	a3,a5,000000002306D308

l2306D300:
	addi	a4,a1,-00000002
	add	a3,a3,a6

l2306D308:
	sub	a3,a3,a5
	and	a5,a3,a0
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a0
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a1,a2,a3
	addi	a0,a3,+00000000
	bgeu	t1,a1,000000002306D344

l2306D330:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002306D344

l2306D33C:
	bgeu	t1,a1,000000002306D344

l2306D340:
	addi	a0,a3,-00000002

l2306D344:
	slli	a4,a4,00000010
	or	a4,a4,a0

l2306D34C:
	addi	a1,zero,+00000000
	jal	zero,000000002306D434

l2306D354:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a2,a3,000000002306D294

l2306D360:
	addi	a4,zero,+00000018
	jal	zero,000000002306D294

l2306D368:
	bne	a2,zero,000000002306D374

l2306D36C:
	addi	a3,zero,+00000001
	srl	a6,a3,a2

l2306D374:
	lui	a3,00000010
	bgeu	a6,a3,000000002306D43C

l2306D37C:
	addi	a3,zero,+000000FF
	bgeu	a3,a6,000000002306D388

l2306D384:
	addi	a4,zero,+00000008

l2306D388:
	srl	a3,a6,a4
	add	a7,a7,a3
	lbu	a3,a7,+00000000
	add	a3,a3,a4
	addi	a4,zero,+00000020
	sub	a4,a4,a3
	bne	a4,zero,000000002306D450

l2306D3A4:
	sub	a5,a5,a6
	addi	a1,zero,+00000001

l2306D3AC:
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
	bgeu	a3,a0,000000002306D3F0

l2306D3D8:
	add	a3,a3,a6
	addi	a4,a5,-00000001
	bltu	a3,a6,000000002306D3F0

l2306D3E4:
	bgeu	a3,a0,000000002306D3F0

l2306D3E8:
	addi	a4,a5,-00000002
	add	a3,a3,a6

l2306D3F0:
	sub	a3,a3,a0
	and	a5,a3,a2
	slli	t1,t1,00000010
	srli	t1,t1,00000010
	srl	a3,a3,a2
	slli	a5,a5,00000010
	or	t1,a5,t1
	add	a7,a7,a3
	addi	a0,a3,+00000000
	bgeu	t1,a7,000000002306D42C

l2306D418:
	add	t1,a6,t1
	addi	a0,a3,-00000001
	bltu	t1,a6,000000002306D42C

l2306D424:
	bgeu	t1,a7,000000002306D42C

l2306D428:
	addi	a0,a3,-00000002

l2306D42C:
	slli	a4,a4,00000010
	or	a4,a4,a0

l2306D434:
	addi	a0,a4,+00000000
	jalr	zero,ra,+00000000

l2306D43C:
	lui	a3,00001000
	addi	a4,zero,+00000010
	bltu	a6,a3,000000002306D388

l2306D448:
	addi	a4,zero,+00000018
	jal	zero,000000002306D388

l2306D450:
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
	bgeu	a4,a3,000000002306D4AC

l2306D494:
	add	a4,a4,a6
	addi	a2,a1,-00000001
	bltu	a4,a6,000000002306D4AC

l2306D4A0:
	bgeu	a4,a3,000000002306D4AC

l2306D4A4:
	addi	a2,a1,-00000002
	add	a4,a4,a6

l2306D4AC:
	sub	a3,a4,a3
	and	a4,a3,a0
	slli	a7,a7,00000010
	srli	a7,a7,00000010
	srl	a3,a3,a0
	slli	a4,a4,00000010
	add	a1,a5,a3
	or	a5,a4,a7
	addi	a4,a3,+00000000
	bgeu	a5,a1,000000002306D4EC

l2306D4D4:
	add	a5,a5,a6
	addi	a4,a3,-00000001
	bltu	a5,a6,000000002306D4EC

l2306D4E0:
	bgeu	a5,a1,000000002306D4EC

l2306D4E4:
	addi	a4,a3,-00000002
	add	a5,a5,a6

l2306D4EC:
	sub	a5,a5,a1
	slli	a1,a2,00000010
	or	a1,a1,a4
	jal	zero,000000002306D3AC

l2306D4FC:
	bltu	a1,a3,000000002306D688

l2306D500:
	lui	a4,00000010
	bgeu	a3,a4,000000002306D54C

l2306D508:
	addi	a6,zero,+000000FF
	sltu	a4,a6,a3
	slli	a4,a4,00000003

l2306D514:
	srl	a6,a3,a4
	auipc	a1,00000020
	addi	a1,a1,+00000654
	add	a1,a1,a6
	lbu	a6,a1,+00000000
	addi	a1,zero,+00000020
	add	a6,a6,a4
	sub	a1,a1,a6
	bne	a1,zero,000000002306D560

l2306D538:
	addi	a4,zero,+00000001
	bltu	a3,a5,000000002306D434

l2306D540:
	sltu	a0,a0,a2
	xori	a4,a0,+00000001
	jal	zero,000000002306D434

l2306D54C:
	lui	a1,00001000
	addi	a4,zero,+00000010
	bltu	a3,a1,000000002306D514

l2306D558:
	addi	a4,zero,+00000018
	jal	zero,000000002306D514

l2306D560:
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
	bgeu	a6,t5,000000002306D5C4

l2306D5AC:
	add	a6,a6,a3
	addi	t3,a4,-00000001
	bltu	a6,a3,000000002306D5C4

l2306D5B8:
	bgeu	a6,t5,000000002306D5C4

l2306D5BC:
	addi	t3,a4,-00000002
	add	a6,a6,a3

l2306D5C4:
	sub	a6,a6,t5
	and	a7,a6,t4
	srl	a6,a6,t4
	slli	a7,a7,00000010
	add	t4,a5,a6
	slli	a5,t1,00000010
	srli	a5,a5,00000010
	or	a5,a7,a5
	addi	a4,a6,+00000000
	bgeu	a5,t4,000000002306D604

l2306D5EC:
	add	a5,a5,a3
	addi	a4,a6,-00000001
	bltu	a5,a3,000000002306D604

l2306D5F8:
	bgeu	a5,t4,000000002306D604

l2306D5FC:
	addi	a4,a6,-00000002
	add	a5,a5,a3

l2306D604:
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
	bgeu	a3,a6,000000002306D64C

l2306D648:
	add	a7,a7,t4

l2306D64C:
	srli	a2,a3,00000010
	add	a7,a2,a7
	bltu	a5,a7,000000002306D680

l2306D658:
	bne	a5,a7,000000002306D34C

l2306D65C:
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a3,a3,a5
	slli	a3,a3,00000010
	and	t3,t3,a5
	sll	a0,a0,a1
	add	a3,a3,t3
	addi	a1,zero,+00000000
	bgeu	a0,a3,000000002306D434

l2306D680:
	addi	a4,a4,-00000001
	jal	zero,000000002306D34C

l2306D688:
	addi	a1,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306D434

;; __umoddi3: 2306D694
;;   Called from:
;;     230514D0 (in format_int)
__umoddi3 proc
	addi	a7,a2,+00000000
	addi	a4,a3,+00000000
	addi	a5,a0,+00000000
	addi	a6,a1,+00000000
	bne	a3,zero,000000002306D8DC

l2306D6A8:
	auipc	a3,00000020
	addi	a3,a3,+000004C4
	bgeu	a1,a2,000000002306D788

l2306D6B4:
	lui	t1,00000010
	bgeu	a2,t1,000000002306D774

l2306D6BC:
	addi	t1,zero,+000000FF
	bgeu	t1,a2,000000002306D6C8

l2306D6C4:
	addi	a4,zero,+00000008

l2306D6C8:
	srl	t1,a2,a4
	add	a3,a3,t1
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	beq	t1,zero,000000002306D6F8

l2306D6E4:
	sll	a1,a1,t1
	srl	t3,a0,t3
	sll	a7,a2,t1
	or	a6,t3,a1
	sll	a5,a0,t1

l2306D6F8:
	srli	a2,a7,00000010
	and	a4,a6,a2
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a3,a5,00000010
	srl	a6,a6,a2
	slli	a4,a4,00000010
	or	a3,a4,a3
	add	a6,a0,a6
	bgeu	a3,a6,000000002306D730

l2306D720:
	add	a3,a3,a7
	bltu	a3,a7,000000002306D730

l2306D728:
	bgeu	a3,a6,000000002306D730

l2306D72C:
	add	a3,a3,a7

l2306D730:
	sub	a3,a3,a6
	and	a4,a3,a2
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a3,a3,a2
	add	a3,a0,a3
	slli	a0,a4,00000010
	or	a5,a0,a5
	bgeu	a5,a3,000000002306D764

l2306D754:
	add	a5,a5,a7
	bltu	a5,a7,000000002306D764

l2306D75C:
	bgeu	a5,a3,000000002306D764

l2306D760:
	add	a5,a5,a7

l2306D764:
	sub	a5,a5,a3

l2306D768:
	srl	a0,a5,t1
	addi	a1,zero,+00000000

l2306D770:
	jalr	zero,ra,+00000000

l2306D774:
	lui	t1,00001000
	addi	a4,zero,+00000010
	bltu	a2,t1,000000002306D6C8

l2306D780:
	addi	a4,zero,+00000018
	jal	zero,000000002306D6C8

l2306D788:
	bne	a2,zero,000000002306D794

l2306D78C:
	addi	a2,zero,+00000001
	srl	a7,a2,a7

l2306D794:
	lui	a2,00000010
	bgeu	a7,a2,000000002306D83C

l2306D79C:
	addi	a2,zero,+000000FF
	bgeu	a2,a7,000000002306D7A8

l2306D7A4:
	addi	a4,zero,+00000008

l2306D7A8:
	srl	a2,a7,a4
	add	a3,a3,a2
	lbu	t3,a3,+00000000
	addi	t1,zero,+00000020
	add	t3,t3,a4
	sub	t1,t1,t3
	bne	t1,zero,000000002306D850

l2306D7C4:
	sub	a1,a1,a7

l2306D7C8:
	srli	a4,a7,00000010
	slli	a0,a7,00000010
	srli	a0,a0,00000010
	srli	a2,a5,00000010
	and	a3,a1,a4
	srl	a1,a1,a4
	slli	a3,a3,00000010
	or	a3,a3,a2
	add	a1,a0,a1
	bgeu	a3,a1,000000002306D800

l2306D7F0:
	add	a3,a3,a7
	bltu	a3,a7,000000002306D800

l2306D7F8:
	bgeu	a3,a1,000000002306D800

l2306D7FC:
	add	a3,a3,a7

l2306D800:
	sub	a1,a3,a1
	and	a3,a1,a4
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	srl	a1,a1,a4
	add	a1,a0,a1
	slli	a0,a3,00000010
	or	a5,a0,a5
	bgeu	a5,a1,000000002306D834

l2306D824:
	add	a5,a5,a7
	bltu	a5,a7,000000002306D834

l2306D82C:
	bgeu	a5,a1,000000002306D834

l2306D830:
	add	a5,a5,a7

l2306D834:
	sub	a5,a5,a1
	jal	zero,000000002306D768

l2306D83C:
	lui	a2,00001000
	addi	a4,zero,+00000010
	bltu	a7,a2,000000002306D7A8

l2306D848:
	addi	a4,zero,+00000018
	jal	zero,000000002306D7A8

l2306D850:
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
	bgeu	a3,a4,000000002306D8A0

l2306D890:
	add	a3,a3,a7
	bltu	a3,a7,000000002306D8A0

l2306D898:
	bgeu	a3,a4,000000002306D8A0

l2306D89C:
	add	a3,a3,a7

l2306D8A0:
	sub	a2,a3,a4
	and	a3,a2,a0
	slli	t3,t3,00000010
	srli	t3,t3,00000010
	srl	a2,a2,a0
	slli	a3,a3,00000010
	add	a2,a1,a2
	or	a1,a3,t3
	bgeu	a1,a2,000000002306D8D4

l2306D8C4:
	add	a1,a1,a7
	bltu	a1,a7,000000002306D8D4

l2306D8CC:
	bgeu	a1,a2,000000002306D8D4

l2306D8D0:
	add	a1,a1,a7

l2306D8D4:
	sub	a1,a1,a2
	jal	zero,000000002306D7C8

l2306D8DC:
	bltu	a1,a3,000000002306D770

l2306D8E0:
	lui	a4,00000010
	bgeu	a3,a4,000000002306D93C

l2306D8E8:
	addi	t4,zero,+000000FF
	sltu	a4,t4,a3
	slli	a4,a4,00000003

l2306D8F4:
	srl	t1,a3,a4
	auipc	a7,00000020
	addi	a7,a7,+00000274
	add	a7,a7,t1
	lbu	t4,a7,+00000000
	addi	t3,zero,+00000020
	add	t4,t4,a4
	sub	t3,t3,t4
	bne	t3,zero,000000002306D950

l2306D918:
	bltu	a3,a1,000000002306D920

l2306D91C:
	bltu	a0,a2,000000002306D930

l2306D920:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l2306D930:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,000000002306D770

l2306D93C:
	lui	a7,00001000
	addi	a4,zero,+00000010
	bltu	a3,a7,000000002306D8F4

l2306D948:
	addi	a4,zero,+00000018
	jal	zero,000000002306D8F4

l2306D950:
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
	bgeu	a7,t5,000000002306D9B8

l2306D9A0:
	add	a7,a7,a3
	addi	t1,a4,-00000001
	bltu	a7,a3,000000002306D9B8

l2306D9AC:
	bgeu	a7,t5,000000002306D9B8

l2306D9B0:
	addi	t1,a4,-00000002
	add	a7,a7,a3

l2306D9B8:
	sub	a7,a7,t5
	and	t5,a7,a6
	srl	a7,a7,a6
	slli	t5,t5,00000010
	add	a6,a1,a7
	slli	a1,a5,00000010
	srli	a1,a1,00000010
	or	a1,t5,a1
	addi	a5,a7,+00000000
	bgeu	a1,a6,000000002306D9F8

l2306D9E0:
	add	a1,a1,a3
	addi	a5,a7,-00000001
	bltu	a1,a3,000000002306D9F8

l2306D9EC:
	bgeu	a1,a6,000000002306D9F8

l2306D9F0:
	addi	a5,a7,-00000002
	add	a1,a1,a3

l2306D9F8:
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
	bgeu	a6,a5,000000002306DA40

l2306DA3C:
	add	t1,t1,t5

l2306DA40:
	srli	a5,a6,00000010
	add	t1,a5,t1
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t1,000000002306DA6C

l2306DA64:
	bne	a1,t1,000000002306DA80

l2306DA68:
	bgeu	a0,a4,000000002306DA80

l2306DA6C:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t1,t1,a4
	addi	a4,a2,+00000000

l2306DA80:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t1
	sub	a1,a1,a0
	sll	a5,a1,t4
	srl	a4,a4,t3
	or	a0,a5,a4
	srl	a1,a1,t3
	jal	zero,000000002306D770

;; __adddf3: 2306DAA4
;;   Called from:
;;     23014878 (in pa_adapt)
;;     23014C0A (in trpc_get_power_idx)
;;     230151A8 (in rfc_init)
;;     230151E6 (in rfc_init)
;;     23015222 (in rfc_init)
;;     23015786 (in rfc_config_channel)
;;     23017B7C (in rf_pri_get_vco_freq_cw)
;;     23017BC6 (in rf_pri_get_vco_idac_cw)
;;     2305160C (in cvt)
;;     2306C970 (in __floatundisf)
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
	bne	s2,t3,000000002306DF30

l2306DB18:
	bge	zero,a3,000000002306DC80

l2306DB1C:
	bne	a4,zero,000000002306DB84

l2306DB20:
	or	a3,a5,a7
	bne	a3,zero,000000002306DB3C

l2306DB28:
	addi	a5,zero,+000007FF
	beq	a6,a5,000000002306DB64

l2306DB30:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306DE90

l2306DB3C:
	addi	a3,a6,-00000001
	bne	a3,zero,000000002306DB5C

l2306DB44:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	t1,a7,t1
	add	a5,a5,t1

l2306DB54:
	addi	a6,zero,+00000001
	jal	zero,000000002306DC04

l2306DB5C:
	addi	a2,zero,+000007FF
	bne	a6,a2,000000002306DBBC

l2306DB64:
	or	a7,a1,t1
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306E544

l2306DB70:
	slli	a5,a1,00000009
	blt	a5,zero,000000002306E454

l2306DB78:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306DBA8

l2306DB84:
	addi	a4,zero,+000007FF
	bne	s3,a4,000000002306DBB4

l2306DB8C:
	or	a7,a1,t1
	beq	a7,zero,000000002306E464

l2306DB94:
	slli	a5,a1,00000009
	blt	a5,zero,000000002306E46C

l2306DB9C:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+000007FF

l2306DBA8:
	addi	s3,zero,+00000000

l2306DBAC:
	addi	a4,zero,+00000010
	jal	zero,000000002306DCB4

l2306DBB4:
	lui	a4,00000800
	or	a5,a5,a4

l2306DBBC:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306DC74

l2306DBC4:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306DC40

l2306DBCC:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l2306DBF0:
	add	a7,a7,t1
	add	a3,a3,a1
	sltu	a5,a7,t1
	add	a5,a3,a5
	addi	a6,s3,+00000000

l2306DC04:
	slli	a4,a5,00000008
	bge	a4,zero,000000002306E3C0

l2306DC0C:
	addi	a6,a6,+00000001
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306DF00

l2306DC18:
	lui	a0,000FF800
	addi	a0,a0,-00000001
	and	a0,a5,a0
	srli	a4,a7,00000001
	andi	a7,a7,+00000001
	slli	a5,a0,0000001F
	or	a7,a4,a7
	or	a7,a5,a7
	srli	a5,a0,00000001
	jal	zero,000000002306DE90

l2306DC40:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,000000002306DC60

l2306DC54:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l2306DC60:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306DC6C:
	addi	a3,zero,+00000000
	jal	zero,000000002306DBF0

l2306DC74:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,000000002306DC6C

l2306DC80:
	beq	a3,zero,000000002306DDB8

l2306DC84:
	sub	a6,a4,s3
	bne	s3,zero,000000002306DD48

l2306DC8C:
	or	a3,a1,t1
	bne	a3,zero,000000002306DCD0

l2306DC94:
	addi	a4,zero,+000007FF
	bne	a6,a4,000000002306E3C0

l2306DC9C:
	or	a4,a5,a7
	beq	a4,zero,000000002306E47C

l2306DCA4:
	lui	a4,00000400
	and	a4,a5,a4
	sltiu	a4,a4,+00000001
	slli	a4,a4,00000004

l2306DCB4:
	andi	a3,a7,+00000007
	bne	a3,zero,000000002306DED0

l2306DCBC:
	beq	s3,zero,000000002306E544

l2306DCC0:
	andi	a3,a4,+00000001
	beq	a3,zero,000000002306E544

l2306DCC8:
	ori	a4,a4,+00000002
	jal	zero,000000002306E544

l2306DCD0:
	addi	a3,a6,-00000001
	bne	a3,zero,000000002306DCF0

l2306DCD8:
	add	t1,t1,a7
	sltu	a7,t1,a7
	add	a5,a1,a5
	add	a5,a5,a7
	addi	a7,t1,+00000000
	jal	zero,000000002306DB54

l2306DCF0:
	addi	a2,zero,+000007FF
	beq	a6,a2,000000002306DC9C

l2306DCF8:
	addi	a2,zero,+00000038
	blt	a2,a3,000000002306DDAC

l2306DD00:
	addi	a2,zero,+0000001F
	blt	a2,a3,000000002306DD78

l2306DD08:
	addi	a0,zero,+00000020
	sub	a0,a0,a3
	srl	s0,t1,a3
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,s0
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,a3

l2306DD2C:
	add	t1,t1,a7
	add	a3,a3,a5
	sltu	a5,t1,a7
	add	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	jal	zero,000000002306DC04

l2306DD48:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306DD68

l2306DD50:
	or	a4,a5,a7
	beq	a4,zero,000000002306E420

l2306DD58:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF

l2306DD60:
	addi	s3,zero,+00000000
	jal	zero,000000002306E098

l2306DD68:
	lui	a3,00000800
	or	a1,a1,a3
	addi	a3,a6,+00000000
	jal	zero,000000002306DCF8

l2306DD78:
	addi	a2,a3,-00000020
	addi	a6,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	a3,a6,000000002306DD98

l2306DD8C:
	addi	a0,zero,+00000040
	sub	a3,a0,a3
	sll	a0,a1,a3

l2306DD98:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l2306DDA4:
	addi	a3,zero,+00000000
	jal	zero,000000002306DD2C

l2306DDAC:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,000000002306DDA4

l2306DDB8:
	addi	a6,s3,+00000001
	andi	a3,a6,+000007FE
	bne	a3,zero,000000002306DE68

l2306DDC4:
	or	a3,a1,t1
	bne	s3,zero,000000002306DE08

l2306DDCC:
	beq	a3,zero,000000002306E3C4

l2306DDD0:
	or	a4,a5,a7
	beq	a4,zero,000000002306E194

l2306DDD8:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	a3,a7,t1
	add	a1,a5,a3
	slli	a5,a1,00000008
	bge	a5,zero,000000002306E3C8

l2306DDF0:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,a1,a5
	addi	a4,zero,+00000000
	addi	a6,zero,+00000001
	jal	zero,000000002306DCB4

l2306DE08:
	addi	a2,zero,+000007FF
	bne	s3,a2,000000002306DE40

l2306DE10:
	beq	a3,zero,000000002306E5E8

l2306DE14:
	lui	a6,00000400
	and	a6,a1,a6
	sltiu	a6,a6,+00000001
	slli	a6,a6,00000004
	bne	a4,s3,000000002306DE4C

l2306DE28:
	or	a4,a5,a7
	beq	a4,zero,000000002306E5E0

l2306DE30:
	slli	a4,a5,00000009
	blt	a4,zero,000000002306DE48

l2306DE38:
	addi	a6,zero,+00000010
	jal	zero,000000002306DE48

l2306DE40:
	addi	a6,zero,+00000000
	beq	a4,a2,000000002306DE28

l2306DE48:
	beq	a3,zero,000000002306DE5C

l2306DE4C:
	or	a5,a5,a7
	bne	a5,zero,000000002306E434

l2306DE54:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306DE5C:
	addi	s3,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306E4B4

l2306DE68:
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306DE98

l2306DE70:
	add	a7,t1,a7
	add	a3,a1,a5
	sltu	a5,a7,t1
	add	t1,a3,a5
	slli	a5,t1,0000001F
	srli	a7,a7,00000001
	or	a7,a5,a7
	srli	a5,t1,00000001

l2306DE90:
	addi	s3,zero,+00000000
	jal	zero,000000002306E09C

l2306DE98:
	beq	s1,zero,000000002306DEA8

l2306DE9C:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306DEB0

l2306DEA4:
	bne	s2,zero,000000002306DEBC

l2306DEA8:
	addi	a6,zero,+000007FF
	jal	zero,000000002306DF10

l2306DEB0:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306DEBC

l2306DEB8:
	bne	s2,zero,000000002306DEA8

l2306DEBC:
	addi	s3,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE

l2306DECC:
	addi	a4,zero,+00000005

l2306DED0:
	addi	a3,zero,+00000002
	ori	a4,a4,+00000001
	beq	s1,a3,000000002306E4E0

l2306DEDC:
	addi	a3,zero,+00000003
	beq	s1,a3,000000002306E4C8

l2306DEE4:
	bne	s1,zero,000000002306DEF8

l2306DEE8:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	addi	a1,a7,+00000004
	bne	a3,a2,000000002306E4D0

l2306DEF8:
	bne	s3,zero,000000002306DCC8

l2306DEFC:
	jal	zero,000000002306E544

l2306DF00:
	beq	s1,zero,000000002306DF10

l2306DF04:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306DF20

l2306DF0C:
	bne	s2,zero,000000002306E440

l2306DF10:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a4,zero,+00000005
	jal	zero,000000002306E544

l2306DF20:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306E440

l2306DF28:
	bne	s2,zero,000000002306DF10

l2306DF2C:
	jal	zero,000000002306DEBC

l2306DF30:
	bge	zero,a3,000000002306E024

l2306DF34:
	bne	a4,zero,000000002306DFD0

l2306DF38:
	or	a3,a5,a7
	beq	a3,zero,000000002306DB28

l2306DF40:
	addi	a3,a6,-00000001
	bne	a3,zero,000000002306DF60

l2306DF48:
	sub	a7,t1,a7
	sub	a5,a1,a5
	sltu	t1,t1,a7
	sub	a5,a5,t1

l2306DF58:
	addi	a6,zero,+00000001
	jal	zero,000000002306DFB0

l2306DF60:
	addi	a2,zero,+000007FF
	beq	a6,a2,000000002306DB64

l2306DF68:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306E018

l2306DF70:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306DFE4

l2306DF78:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l2306DF9C:
	sub	a7,t1,a7
	sub	a3,a1,a3
	sltu	a5,t1,a7
	sub	a5,a3,a5
	addi	a6,s3,+00000000

l2306DFB0:
	slli	a4,a5,00000008
	bge	a4,zero,000000002306E3C0

l2306DFB8:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,a7,+00000000
	addi	s3,a6,+00000000
	jal	zero,000000002306E2E8

l2306DFD0:
	addi	a4,zero,+000007FF
	beq	s3,a4,000000002306DB8C

l2306DFD8:
	lui	a4,00000800
	or	a5,a5,a4
	jal	zero,000000002306DF68

l2306DFE4:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,000000002306E004

l2306DFF8:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l2306E004:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306E010:
	addi	a3,zero,+00000000
	jal	zero,000000002306DF9C

l2306E018:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,000000002306E010

l2306E024:
	beq	a3,zero,000000002306E164

l2306E028:
	sub	a6,a4,s3
	bne	s3,zero,000000002306E0A4

l2306E030:
	or	a3,a1,t1
	bne	a3,zero,000000002306E05C

l2306E038:
	addi	a4,zero,+000007FF
	addi	s2,t3,+00000000
	bne	a6,a4,000000002306E3C0

l2306E044:
	or	a4,a5,a7
	beq	a4,zero,000000002306E47C

l2306E04C:
	slli	a3,a5,00000009
	addi	a4,zero,+00000000
	blt	a3,zero,000000002306DCB4

l2306E058:
	jal	zero,000000002306DBAC

l2306E05C:
	addi	s0,a6,-00000001
	bne	s0,zero,000000002306E080

l2306E064:
	sub	t1,a7,t1
	sltu	a7,a7,t1
	sub	a5,a5,a1
	sub	a5,a5,a7
	addi	s2,t3,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002306DF58

l2306E080:
	addi	a3,zero,+000007FF
	bne	a6,a3,000000002306E0D0

l2306E088:
	or	a4,a5,a7
	beq	a4,zero,000000002306E488

l2306E090:
	slli	a4,a5,00000009
	addi	s2,t3,+00000000

l2306E098:
	bge	a4,zero,000000002306DBAC

l2306E09C:
	addi	a4,zero,+00000000
	jal	zero,000000002306DCB4

l2306E0A4:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306E0C4

l2306E0AC:
	or	a4,a5,a7
	beq	a4,zero,000000002306E498

l2306E0B4:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF
	addi	s2,t3,+00000000
	jal	zero,000000002306DD60

l2306E0C4:
	lui	a3,00000800
	or	a1,a1,a3
	addi	s0,a6,+00000000

l2306E0D0:
	addi	a3,zero,+00000038
	blt	a3,s0,000000002306E158

l2306E0D8:
	addi	a3,zero,+0000001F
	blt	a3,s0,000000002306E124

l2306E0E0:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,t1,s0
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,a3
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,s0

l2306E104:
	sub	t1,a7,t1
	sub	a3,a5,a3
	sltu	a5,a7,t1
	sub	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	addi	s2,t3,+00000000
	jal	zero,000000002306DFB0

l2306E124:
	addi	a2,s0,-00000020
	addi	a3,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	s0,a3,000000002306E144

l2306E138:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,a1,s0

l2306E144:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l2306E150:
	addi	a3,zero,+00000000
	jal	zero,000000002306E104

l2306E158:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,000000002306E150

l2306E164:
	addi	a3,s3,+00000001
	andi	a3,a3,+000007FE
	bne	a3,zero,000000002306E2BC

l2306E170:
	or	a0,a1,t1
	or	a2,a5,a7
	bne	s3,zero,000000002306E250

l2306E17C:
	bne	a0,zero,000000002306E204

l2306E180:
	bne	a2,zero,000000002306E3D0

l2306E184:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001
	addi	a1,zero,+00000000
	addi	t1,zero,+00000000

l2306E194:
	or	a7,t1,a1
	beq	a7,zero,000000002306E4BC

l2306E19C:
	srli	a5,t1,0000001F
	slli	s3,a1,00000001
	add	s3,s3,a5
	slli	a5,t1,00000001
	andi	a3,a5,+00000007
	addi	a4,zero,+00000000
	beq	a3,zero,000000002306E1E8

l2306E1B8:
	addi	a4,zero,+00000002
	beq	s1,a4,000000002306E404

l2306E1C0:
	addi	a4,zero,+00000003
	beq	s1,a4,000000002306E3E8

l2306E1C8:
	addi	a4,zero,+00000001
	bne	s1,zero,000000002306E1E8

l2306E1D0:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306E1E8

l2306E1DC:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	s3,s3,a5

l2306E1E8:
	srli	s3,s3,00000018
	xori	s3,s3,+00000001
	andi	s3,s3,+00000001
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	jal	zero,000000002306DCB4

l2306E204:
	beq	a2,zero,000000002306E194

l2306E208:
	sub	a3,t1,a7
	sltu	a2,t1,a3
	sub	a4,a1,a5
	sub	a4,a4,a2
	slli	a2,a4,00000008
	bge	a2,zero,000000002306E238

l2306E220:
	sub	t1,a7,t1
	sub	a5,a5,a1
	sltu	a3,a7,t1
	sub	a1,a5,a3

l2306E230:
	addi	s2,t3,+00000000
	jal	zero,000000002306E194

l2306E238:
	or	t1,a3,a4
	bne	t1,zero,000000002306E3DC

l2306E240:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001

l2306E248:
	addi	a1,zero,+00000000
	jal	zero,000000002306E194

l2306E250:
	addi	a3,zero,+000007FF
	bne	s3,a3,000000002306E278

l2306E258:
	beq	a0,zero,000000002306E520

l2306E25C:
	lui	a3,00000400
	and	a3,a1,a3
	sltiu	a3,a3,+00000001
	slli	a3,a3,00000004
	bne	a4,s3,000000002306E52C

l2306E270:
	addi	a4,a3,+00000000
	jal	zero,000000002306E280

l2306E278:
	bne	a4,a3,000000002306E2B4

l2306E27C:
	addi	a4,zero,+00000000

l2306E280:
	beq	a2,zero,000000002306E290

l2306E284:
	slli	a3,a5,00000009
	blt	a3,zero,000000002306E290

l2306E28C:
	addi	a4,zero,+00000010

l2306E290:
	bne	a0,zero,000000002306E530

l2306E294:
	addi	s2,t3,+00000000
	bne	a2,zero,000000002306E4B0

l2306E29C:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a6,zero,+000007FF
	addi	a4,zero,+00000010
	jal	zero,000000002306E544

l2306E2B4:
	addi	a4,zero,+00000000
	jal	zero,000000002306E290

l2306E2BC:
	sub	s4,t1,a7
	sub	s0,a1,a5
	sltu	a3,t1,s4
	sub	s0,s0,a3
	slli	a4,s0,00000008
	bge	a4,zero,000000002306E354

l2306E2D4:
	sub	s4,a7,t1
	sub	a3,a5,a1
	sltu	a5,a7,s4
	sub	s0,a3,a5
	addi	s2,t3,+00000000

l2306E2E8:
	beq	s0,zero,000000002306E360

l2306E2EC:
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0

l2306E2F4:
	addi	a6,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a6,000000002306E370

l2306E300:
	addi	a5,zero,+00000020
	sub	a5,a5,a6
	sll	s0,s0,a6
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	a7,s4,a6

l2306E318:
	blt	a6,s3,000000002306E3B0

l2306E31C:
	sub	a6,a6,s3
	addi	a3,a6,+00000001
	addi	a5,zero,+0000001F
	blt	a5,a3,000000002306E380

l2306E32C:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	sll	t1,s0,a2
	srl	a5,a7,a3
	sll	a2,a7,a2
	or	a5,t1,a5
	sltu	a2,zero,a2
	or	t1,a5,a2
	srl	a1,s0,a3
	jal	zero,000000002306E194

l2306E354:
	or	t1,s4,s0
	bne	t1,zero,000000002306E2E8

l2306E35C:
	jal	zero,000000002306E240

l2306E360:
	addi	a0,s4,+00000000
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,000000002306E2F4

l2306E370:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	a7,zero,+00000000
	jal	zero,000000002306E318

l2306E380:
	addi	a6,a6,-0000001F
	addi	a5,zero,+00000020
	srl	a6,s0,a6
	addi	a4,zero,+00000000
	beq	a3,a5,000000002306E3A0

l2306E394:
	addi	a4,zero,+00000040
	sub	a4,a4,a3
	sll	a4,s0,a4

l2306E3A0:
	or	a5,a7,a4
	sltu	a5,zero,a5
	or	t1,a6,a5
	jal	zero,000000002306E248

l2306E3B0:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a6,s3,a6
	and	a5,s0,a5

l2306E3C0:
	bne	a6,zero,000000002306DE90

l2306E3C4:
	addi	a1,a5,+00000000

l2306E3C8:
	addi	t1,a7,+00000000
	jal	zero,000000002306E194

l2306E3D0:
	addi	a1,a5,+00000000
	addi	t1,a7,+00000000
	jal	zero,000000002306E230

l2306E3DC:
	addi	a1,a4,+00000000
	addi	t1,a3,+00000000
	jal	zero,000000002306E194

l2306E3E8:
	addi	a4,s2,+00000000
	bne	s2,zero,000000002306E1E8

l2306E3F0:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,zero,+00000001
	jal	zero,000000002306E1E8

l2306E404:
	addi	a4,zero,+00000001
	beq	s2,zero,000000002306E1E8

l2306E40C:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,s2,+00000000
	jal	zero,000000002306E1E8

l2306E420:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l2306E428:
	addi	a6,zero,+000007FF

l2306E42C:
	addi	a4,zero,+00000000
	jal	zero,000000002306E544

l2306E434:
	addi	s2,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306E538

l2306E440:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	addi	s3,zero,+00000000
	jal	zero,000000002306DECC

l2306E454:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	s3,zero,+00000000
	jal	zero,000000002306DCB4

l2306E464:
	addi	a5,zero,+00000000
	jal	zero,000000002306E428

l2306E46C:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306E474:
	addi	a6,zero,+000007FF
	jal	zero,000000002306DE90

l2306E47C:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	jal	zero,000000002306E42C

l2306E488:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l2306E490:
	addi	s2,t3,+00000000
	jal	zero,000000002306E42C

l2306E498:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF
	jal	zero,000000002306E490

l2306E4A8:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l2306E4B0:
	addi	s3,zero,+00000000

l2306E4B4:
	addi	a6,zero,+000007FF
	jal	zero,000000002306DCB4

l2306E4BC:
	addi	a5,zero,+00000000
	addi	a6,zero,+00000000
	jal	zero,000000002306E42C

l2306E4C8:
	bne	s2,zero,000000002306DEF8

l2306E4CC:
	addi	a1,a7,+00000008

l2306E4D0:
	sltu	a7,a1,a7
	add	a5,a5,a7
	addi	a7,a1,+00000000
	jal	zero,000000002306DEF8

l2306E4E0:
	beq	s2,zero,000000002306DEF8

l2306E4E4:
	jal	zero,000000002306E4CC

l2306E4E8:
	addi	a7,zero,+00000000
	beq	s1,zero,000000002306E514

l2306E4F0:
	addi	a5,zero,+00000003
	bne	s1,a5,000000002306E508

l2306E4F8:
	beq	s2,zero,000000002306E514

l2306E4FC:
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	jal	zero,000000002306E514

l2306E508:
	addi	a5,zero,+00000002
	bne	s1,a5,000000002306E4FC

l2306E510:
	beq	s2,zero,000000002306E4FC

l2306E514:
	ori	a4,a4,+00000005
	addi	a5,a7,+00000000
	jal	zero,000000002306E564

l2306E520:
	beq	a4,s3,000000002306E27C

l2306E524:
	addi	a4,zero,+00000000
	jal	zero,000000002306E294

l2306E52C:
	addi	a4,a3,+00000000

l2306E530:
	beq	a2,zero,000000002306E4A8

l2306E534:
	addi	s2,zero,+00000000

l2306E538:
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF

l2306E544:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306E564

l2306E54C:
	addi	a6,a6,+00000001
	addi	a3,zero,+000007FF
	beq	a6,a3,000000002306E4E8

l2306E558:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l2306E564:
	slli	a1,a5,0000001D
	srli	a7,a7,00000003
	addi	a3,zero,+000007FF
	or	a7,a1,a7
	srli	a5,a5,00000003
	bne	a6,a3,000000002306E594

l2306E57C:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,000000002306E594

l2306E588:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l2306E594:
	slli	a5,a5,0000000C
	andi	a6,a6,+000007FF
	slli	a6,a6,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a6
	or	a3,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a3,+00000000
	beq	a4,zero,000000002306E5C0

l2306E5BC:
	csrrs	zero,fflags,ra

l2306E5C0:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l2306E5E0:
	beq	a3,zero,000000002306DE5C

l2306E5E4:
	jal	zero,000000002306DE54

l2306E5E8:
	bne	a4,s3,000000002306E474

l2306E5EC:
	addi	a6,zero,+00000000
	jal	zero,000000002306DE28

;; __divdf3: 2306E5F4
;;   Called from:
;;     2301476E (in pa_input)
;;     23015766 (in rfc_config_channel)
;;     230515FA (in cvt)
;;     23052FE6 (in TSEN_Get_Temp)
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
	beq	a6,zero,000000002306E67C

l2306E64C:
	addi	a5,zero,+000007FF
	beq	a6,a5,000000002306E6E0

l2306E654:
	srli	a4,a0,0000001D
	slli	s7,s7,00000003
	or	s7,a4,s7
	lui	a5,00000800
	or	s7,s7,a5
	slli	s3,a0,00000003
	addi	s6,a6,-000003FF

l2306E670:
	addi	s8,zero,+00000000

l2306E674:
	addi	s1,zero,+00000000
	jal	zero,000000002306E700

l2306E67C:
	or	a5,s7,a0
	beq	a5,zero,000000002306E77C

l2306E684:
	beq	s7,zero,000000002306E6C4

l2306E688:
	addi	a0,s7,+00000000
	jal	ra,000000002306C8C0

l2306E690:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306E6D0

l2306E69C:
	addi	a4,zero,+0000001D
	addi	s3,a0,-00000008
	sub	a4,a4,a3
	sll	s7,s7,s3
	srl	a4,s0,a4
	or	s7,a4,s7
	sll	s3,s0,s3

l2306E6B8:
	addi	a6,zero,-000003F3
	sub	s6,a6,a0
	jal	zero,000000002306E670

l2306E6C4:
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,000000002306E690

l2306E6D0:
	addi	s7,a0,-00000028
	sll	s7,s0,s7
	addi	s3,zero,+00000000
	jal	zero,000000002306E6B8

l2306E6E0:
	or	s0,s7,a0
	beq	s0,zero,000000002306E790

l2306E6E8:
	slli	a5,s7,0000000C
	addi	s3,a0,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,000000002306E674

l2306E700:
	srli	a0,s5,00000014
	slli	s0,s5,0000000C
	andi	a6,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s5,s5,0000001F
	beq	a6,zero,000000002306E7A4

l2306E71C:
	addi	a4,zero,+000007FF
	beq	a6,a4,000000002306E80C

l2306E724:
	srli	a5,s9,0000001D
	slli	a0,s0,00000003
	or	a0,a5,a0
	lui	s0,00000800
	or	s0,a0,s0
	slli	a5,s9,00000003
	addi	a0,a6,-000003FF

l2306E740:
	addi	a4,zero,+00000000

l2306E744:
	slli	a3,s8,00000002
	or	a3,a3,a4
	addi	a3,a3,-00000001
	addi	a1,zero,+0000000E
	xor	a2,s4,s5
	sub	a6,s6,a0
	bltu	a1,a3,000000002306E85C

l2306E760:
	auipc	a1,0000001F
	addi	a1,a1,+00000394
	slli	a3,a3,00000002
	add	a3,a3,a1
	lw	a3,a3,+00000000
	add	a3,a3,a1
	jalr	zero,a3,+00000000

l2306E77C:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,000000002306E674

l2306E790:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,000000002306E674

l2306E7A4:
	or	a5,s0,s9
	beq	a5,zero,000000002306E82C

l2306E7AC:
	beq	s0,zero,000000002306E7EC

l2306E7B0:
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0

l2306E7B8:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306E7FC

l2306E7C4:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l2306E7E0:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,000000002306E740

l2306E7EC:
	addi	a0,s9,+00000000
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,000000002306E7B8

l2306E7FC:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,000000002306E7E0

l2306E80C:
	or	a2,s0,s9
	beq	a2,zero,000000002306E840

l2306E814:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,000000002306E854

l2306E820:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,000000002306E744

l2306E82C:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306E744

l2306E840:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,000000002306E744

l2306E854:
	addi	a4,zero,+00000003
	jal	zero,000000002306E744

l2306E85C:
	bltu	s0,s7,000000002306E868

l2306E860:
	bne	s7,s0,000000002306EB4C

l2306E864:
	bltu	s3,a5,000000002306EB4C

l2306E868:
	slli	a1,s7,0000001F
	srli	a4,s3,00000001
	slli	a3,s3,0000001F
	srli	s7,s7,00000001
	or	s3,a1,a4

l2306E87C:
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
	bgeu	a5,a4,000000002306E8D0

l2306E8B8:
	add	a5,a5,a0
	addi	a7,t1,-00000001
	bltu	a5,a0,000000002306E8D0

l2306E8C4:
	bgeu	a5,a4,000000002306E8D0

l2306E8C8:
	addi	a7,t1,-00000002
	add	a5,a5,a0

l2306E8D0:
	sub	a5,a5,a4
	srl	t3,a5,t5
	slli	a4,s3,00000010
	srli	a4,a4,00000010
	and	a5,a5,t5
	addi	s3,t3,+00000000
	add	t1,t4,t3
	slli	a5,a5,00000010
	or	a4,a4,a5
	bgeu	a4,t1,000000002306E910

l2306E8F8:
	add	a4,a4,a0
	addi	s3,t3,-00000001
	bltu	a4,a0,000000002306E910

l2306E904:
	bgeu	a4,t1,000000002306E910

l2306E908:
	addi	s3,t3,-00000002
	add	a4,a4,a0

l2306E910:
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
	bgeu	t1,s0,000000002306E958

l2306E954:
	add	t0,t0,a7

l2306E958:
	lui	t2,00000010
	srli	a7,t1,00000010
	addi	t2,t2,-00000001
	add	t0,a7,t0
	and	a7,t1,t2
	slli	a7,a7,00000010
	and	a5,a5,t2
	add	a7,a7,a5
	bltu	a4,t0,000000002306E988

l2306E97C:
	addi	s0,s3,+00000000
	bne	a4,t0,000000002306E9C8

l2306E984:
	bgeu	a3,a7,000000002306E9C8

l2306E988:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	add	a4,a4,a5
	addi	s0,s3,-00000001
	bltu	a0,a4,000000002306E9A8

l2306E9A0:
	bne	a0,a4,000000002306E9C8

l2306E9A4:
	bltu	a3,a1,000000002306E9C8

l2306E9A8:
	bltu	a4,t0,000000002306E9B4

l2306E9AC:
	bne	t0,a4,000000002306E9C8

l2306E9B0:
	bgeu	a3,a7,000000002306E9C8

l2306E9B4:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	addi	s0,s3,-00000002
	add	a4,a4,a5

l2306E9C8:
	sub	a7,a3,a7
	sub	a4,a4,t0
	sltu	a3,a3,a7
	sub	a4,a4,a3
	addi	a5,zero,-00000001
	beq	a0,a4,000000002306EB04

l2306E9E0:
	srl	t0,a4,t5
	srli	a5,a7,00000010
	and	a4,a4,t5
	addi	a3,t0,+00000000
	add	t1,t4,t0
	slli	a4,a4,00000010
	or	a4,a5,a4
	bgeu	a4,t1,000000002306EA18

l2306EA00:
	add	a4,a4,a0
	addi	a3,t0,-00000001
	bltu	a4,a0,000000002306EA18

l2306EA0C:
	bgeu	a4,t1,000000002306EA18

l2306EA10:
	addi	a3,t0,-00000002
	add	a4,a4,a0

l2306EA18:
	sub	a4,a4,t1
	srl	t1,a4,t5
	slli	a5,a7,00000010
	srli	a5,a5,00000010
	and	a4,a4,t5
	add	t4,t4,t1
	slli	a4,a4,00000010
	or	a4,a5,a4
	addi	a5,t1,+00000000
	bgeu	a4,t4,000000002306EA58

l2306EA40:
	add	a4,a4,a0
	addi	a5,t1,-00000001
	bltu	a4,a0,000000002306EA58

l2306EA4C:
	bgeu	a4,t4,000000002306EA58

l2306EA50:
	addi	a5,t1,-00000002
	add	a4,a4,a0

l2306EA58:
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
	bgeu	a5,t3,000000002306EA98

l2306EA90:
	lui	a7,00000010
	add	t4,t4,a7

l2306EA98:
	lui	t3,00000010
	addi	t3,t3,-00000001
	srli	t1,a5,00000010
	and	a7,a5,t3
	slli	a7,a7,00000010
	and	t5,t5,t3
	add	t1,t1,t4
	add	a7,a7,t5
	bltu	a4,t1,000000002306EAC8

l2306EABC:
	bne	a4,t1,000000002306EE98

l2306EAC0:
	addi	a5,a3,+00000000
	beq	a7,zero,000000002306EB04

l2306EAC8:
	add	a4,a0,a4
	addi	a5,a3,-00000001
	bltu	a4,a0,000000002306EAF8

l2306EAD4:
	bltu	a4,t1,000000002306EAE0

l2306EAD8:
	bne	a4,t1,000000002306EE94

l2306EADC:
	bgeu	a1,a7,000000002306EAFC

l2306EAE0:
	addi	a5,a3,-00000002
	slli	a3,a1,00000001
	sltu	a1,a3,a1
	add	a0,a1,a0
	add	a4,a4,a0
	addi	a1,a3,+00000000

l2306EAF8:
	bne	a4,t1,000000002306EB00

l2306EAFC:
	beq	a1,a7,000000002306EB04

l2306EB00:
	ori	a5,a5,+00000001

l2306EB04:
	addi	a1,a6,+000003FF
	bge	zero,a1,000000002306ECA0

l2306EB0C:
	andi	a4,a5,+00000007
	beq	a4,zero,000000002306EBCC

l2306EB14:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306EBC8

l2306EB20:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306EBBC

l2306EB28:
	bne	s2,zero,000000002306EBCC

l2306EB2C:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,000000002306EBCC

l2306EB38:
	addi	a4,a5,+00000004

l2306EB3C:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,000000002306EBCC

l2306EB4C:
	addi	a6,a6,-00000001
	addi	a3,zero,+00000000
	jal	zero,000000002306E87C
2306EB58                         13 06 0A 00 13 84 0B 00         ........
2306EB60 93 87 09 00 13 07 0C 00 93 06 20 00 63 06 D7 02 .......... .c...
2306EB70 93 06 30 00 63 06 D7 30 93 06 10 00 E3 14 D7 F8 ..0.c..0........
2306EB80 13 05 00 00 93 07 00 00 6F 00 C0 2C 13 86 0A 00 ........o..,....
2306EB90 6F F0 9F FD 93 E4 84 00 13 05 00 00 93 07 00 00 o...............
2306EBA0 13 07 F0 7F 6F 00 C0 05 37 04 08 00 93 07 00 00 ....o...7.......
2306EBB0 13 06 00 00 13 07 30 00 6F F0 1F FB             ......0.o...   

l2306EBBC:
	bne	a2,zero,000000002306EBCC

l2306EBC0:
	addi	a4,a5,+00000008
	jal	zero,000000002306EB3C

l2306EBC8:
	bne	a2,zero,000000002306EBC0

l2306EBCC:
	slli	a4,s0,00000007
	bge	a4,zero,000000002306EBE4

l2306EBD4:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a6,+00000400

l2306EBE4:
	addi	a4,zero,+000007FE
	blt	a4,a1,000000002306EC60

l2306EBEC:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	a0,s0,00000003
	addi	a4,a1,+00000000

l2306EC00:
	slli	a0,a0,0000000C
	andi	a4,a4,+000007FF
	slli	a3,a4,00000014
	srli	a4,a0,0000000C
	slli	a2,a2,0000001F
	or	a4,a4,a3
	or	a3,a4,a2
	addi	a0,a5,+00000000
	addi	a1,a3,+00000000
	beq	s1,zero,000000002306EC2C

l2306EC28:
	csrrs	zero,fflags,ra

l2306EC2C:
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

l2306EC60:
	addi	a5,zero,+00000002
	beq	s2,a5,000000002306EC98

l2306EC68:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306EC88

l2306EC70:
	beq	s2,zero,000000002306EC8C

l2306EC74:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l2306EC7C:
	ori	s1,s1,+00000005
	addi	a0,a5,+00000000
	jal	zero,000000002306EC00

l2306EC88:
	bne	a2,zero,000000002306EC74

l2306EC8C:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306EC7C

l2306EC98:
	bne	a2,zero,000000002306EC8C

l2306EC9C:
	jal	zero,000000002306EC74

l2306ECA0:
	addi	a4,zero,+00000001
	bne	a1,zero,000000002306ED10

l2306ECA8:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,000000002306ED04

l2306ECB4:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306ECFC

l2306ECC0:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306ECEC

l2306ECC8:
	addi	a4,s0,+00000000
	bne	s2,zero,000000002306ED04

l2306ECD0:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,000000002306ED04

l2306ECDC:
	sltiu	a4,a5,-00000004

l2306ECE0:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,000000002306ED04

l2306ECEC:
	addi	a4,s0,+00000000
	bne	a2,zero,000000002306ED04

l2306ECF4:
	sltiu	a4,a5,-00000008
	jal	zero,000000002306ECE0

l2306ECFC:
	addi	a4,s0,+00000000
	bne	a2,zero,000000002306ECF4

l2306ED04:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l2306ED10:
	addi	a0,zero,+00000001
	sub	a0,a0,a1
	addi	a3,zero,+00000038
	blt	a3,a0,000000002306EE14

l2306ED20:
	addi	a3,zero,+0000001F
	blt	a3,a0,000000002306ED88

l2306ED28:
	addi	a6,a6,+0000041E
	srl	a1,a5,a0
	sll	a3,s0,a6
	sll	a5,a5,a6
	or	a3,a3,a1
	sltu	a5,zero,a5
	or	a5,a3,a5
	srl	a0,s0,a0

l2306ED48:
	andi	a3,a5,+00000007
	beq	a3,zero,000000002306EDCC

l2306ED50:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,000000002306EDC8

l2306ED5C:
	addi	a3,zero,+00000003
	beq	s2,a3,000000002306EDBC

l2306ED64:
	bne	s2,zero,000000002306EDCC

l2306ED68:
	andi	a3,a5,+0000000F
	addi	a1,zero,+00000004
	beq	a3,a1,000000002306EDCC

l2306ED74:
	addi	a3,a5,+00000004

l2306ED78:
	sltu	a5,a3,a5
	add	a0,a0,a5
	addi	a5,a3,+00000000
	jal	zero,000000002306EDCC

l2306ED88:
	addi	a3,zero,-0000001F
	sub	a3,a3,a1
	addi	a7,zero,+00000020
	srl	a3,s0,a3
	addi	a1,zero,+00000000
	beq	a0,a7,000000002306EDA8

l2306EDA0:
	addi	a6,a6,+0000043E
	sll	a1,s0,a6

l2306EDA8:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a3,a5
	addi	a0,zero,+00000000
	jal	zero,000000002306ED48

l2306EDBC:
	bne	a2,zero,000000002306EDCC

l2306EDC0:
	addi	a3,a5,+00000008
	jal	zero,000000002306ED78

l2306EDC8:
	bne	a2,zero,000000002306EDC0

l2306EDCC:
	slli	a3,a0,00000008
	bge	a3,zero,000000002306EDEC

l2306EDD4:
	ori	s1,s1,+00000001
	addi	a0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,000000002306EE0C

l2306EDE4:
	addi	a4,zero,+00000001
	jal	zero,000000002306EC00

l2306EDEC:
	srli	a3,a5,00000003
	slli	a5,a0,0000001D
	or	a5,a5,a3
	srli	a0,a0,00000003
	beq	a4,zero,000000002306EC00

l2306EE00:
	andi	a4,s1,+00000001
	beq	a4,zero,000000002306EC00

l2306EE08:
	addi	a4,zero,+00000000

l2306EE0C:
	ori	s1,s1,+00000002
	jal	zero,000000002306EC00

l2306EE14:
	or	a5,a5,s0
	beq	a5,zero,000000002306EE4C

l2306EE1C:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,000000002306EE5C

l2306EE28:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306EE40

l2306EE30:
	addi	a5,zero,+00000005
	beq	s2,zero,000000002306EE48

l2306EE38:
	addi	a5,zero,+00000001
	jal	zero,000000002306EE48

l2306EE40:
	addi	a5,zero,+00000009
	bne	a2,zero,000000002306EE38

l2306EE48:
	srli	a5,a5,00000003

l2306EE4C:
	ori	s1,s1,+00000002
	addi	a0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306EC00

l2306EE5C:
	addi	a5,zero,+00000009
	bne	a2,zero,000000002306EE48

l2306EE64:
	jal	zero,000000002306EE38
2306EE68                         37 05 08 00 93 07 00 00         7.......
2306EE70 13 07 F0 7F 13 06 00 00 93 04 00 01 6F F0 5F D8 ............o._.
2306EE80 37 05 08 00 93 07 00 00 13 07 F0 7F 13 06 00 00 7...............
2306EE90 6F F0 1F D7                                     o...           

l2306EE94:
	addi	a3,a5,+00000000

l2306EE98:
	addi	a5,a3,+00000000
	jal	zero,000000002306EB00

;; __eqdf2: 2306EEA0
;;   Called from:
;;     2305158C (in cvt)
;;     23051636 (in cvt)
;;     23051880 (in flt)
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
	bne	a4,t1,000000002306EEEC

l2306EEDC:
	or	t1,a6,a0
	bne	t1,zero,000000002306EF3C

l2306EEE4:
	bne	a7,a4,000000002306EF60

l2306EEE8:
	jal	zero,000000002306EEF0

l2306EEEC:
	bne	a7,t1,000000002306EEF8

l2306EEF0:
	or	t1,a5,a2
	bne	t1,zero,000000002306EF2C

l2306EEF8:
	addi	a0,zero,+00000001
	bne	a4,a7,000000002306EF64

l2306EF00:
	bne	a6,a5,000000002306EF64

l2306EF04:
	bne	t3,t4,000000002306EF64

l2306EF08:
	beq	a1,a3,000000002306EF24

l2306EF0C:
	bne	a4,zero,000000002306EF64

l2306EF10:
	or	a0,a6,a2
	sltu	a0,zero,a0
	jalr	zero,ra,+00000000

l2306EF1C:
	csrrsi	zero,fflags,00000010
	jal	zero,000000002306EF60

l2306EF24:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l2306EF2C:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306EF58

l2306EF34:
	or	a0,a6,a0
	beq	a0,zero,000000002306EF58

l2306EF3C:
	slli	a4,a6,0000000C
	bge	a4,zero,000000002306EF1C

l2306EF44:
	addi	a4,zero,+000007FF
	addi	a0,zero,+00000001
	bne	a7,a4,000000002306EF64

l2306EF50:
	or	a2,a5,a2
	beq	a2,zero,000000002306EF64

l2306EF58:
	slli	a4,a5,0000000C
	bge	a4,zero,000000002306EF1C

l2306EF60:
	addi	a0,zero,+00000001

l2306EF64:
	jalr	zero,ra,+00000000

;; __gedf2: 2306EF68
;;   Called from:
;;     2305159C (in cvt)
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
	bne	a6,t4,000000002306EFB8

l2306EFA4:
	or	t4,a7,a0
	beq	t4,zero,000000002306F044

l2306EFAC:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,-00000002
	jal	zero,000000002306F000

l2306EFB8:
	bne	a4,t4,000000002306EFC4

l2306EFBC:
	or	t4,a5,a2
	bne	t4,zero,000000002306EFAC

l2306EFC4:
	bne	a6,zero,000000002306F048

l2306EFC8:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,000000002306EFDC

l2306EFD4:
	or	a2,a5,a2
	beq	a2,zero,000000002306F034

l2306EFDC:
	bne	a0,zero,000000002306EFF4

l2306EFE0:
	bne	a1,a3,000000002306EFE8

l2306EFE4:
	bge	a4,a6,000000002306F008

l2306EFE8:
	beq	a1,zero,000000002306F02C

l2306EFEC:
	addi	a1,zero,-00000001
	jal	zero,000000002306F000

l2306EFF4:
	addi	a1,zero,-00000001
	beq	a3,zero,000000002306F000

l2306EFFC:
	addi	a1,a3,+00000000

l2306F000:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306F008:
	bge	a6,a4,000000002306F014

l2306F00C:
	bne	a1,zero,000000002306F000

l2306F010:
	jal	zero,000000002306EFEC

l2306F014:
	bltu	a5,a7,000000002306EFE8

l2306F018:
	bne	a7,a5,000000002306F03C

l2306F01C:
	bltu	t3,t1,000000002306EFE8

l2306F020:
	bltu	t1,t3,000000002306F00C

l2306F024:
	addi	a1,zero,+00000000
	jal	zero,000000002306F000

l2306F02C:
	addi	a1,zero,+00000001
	jal	zero,000000002306F000

l2306F034:
	bne	a0,zero,000000002306F024

l2306F038:
	jal	zero,000000002306EFE8

l2306F03C:
	bltu	a7,a5,000000002306F00C

l2306F040:
	jal	zero,000000002306F024

l2306F044:
	beq	a4,a6,000000002306EFBC

l2306F048:
	bne	a4,zero,000000002306EFE0

l2306F04C:
	addi	a0,zero,+00000000
	jal	zero,000000002306EFD4

;; __ledf2: 2306F054
;;   Called from:
;;     23051564 (in cvt)
;;     230515D2 (in cvt)
;;     230517B2 (in flt)
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
	bne	a6,t4,000000002306F0A4

l2306F090:
	or	t4,a7,a0
	beq	t4,zero,000000002306F130

l2306F098:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,+00000002
	jal	zero,000000002306F0EC

l2306F0A4:
	bne	a4,t4,000000002306F0B0

l2306F0A8:
	or	t4,a5,a2
	bne	t4,zero,000000002306F098

l2306F0B0:
	bne	a6,zero,000000002306F134

l2306F0B4:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,000000002306F0C8

l2306F0C0:
	or	a2,a5,a2
	beq	a2,zero,000000002306F120

l2306F0C8:
	bne	a0,zero,000000002306F0E0

l2306F0CC:
	bne	a1,a3,000000002306F0D4

l2306F0D0:
	bge	a4,a6,000000002306F0F4

l2306F0D4:
	beq	a1,zero,000000002306F118

l2306F0D8:
	addi	a1,zero,-00000001
	jal	zero,000000002306F0EC

l2306F0E0:
	addi	a1,zero,-00000001
	beq	a3,zero,000000002306F0EC

l2306F0E8:
	addi	a1,a3,+00000000

l2306F0EC:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l2306F0F4:
	bge	a6,a4,000000002306F100

l2306F0F8:
	bne	a1,zero,000000002306F0EC

l2306F0FC:
	jal	zero,000000002306F0D8

l2306F100:
	bltu	a5,a7,000000002306F0D4

l2306F104:
	bne	a7,a5,000000002306F128

l2306F108:
	bltu	t3,t1,000000002306F0D4

l2306F10C:
	bltu	t1,t3,000000002306F0F8

l2306F110:
	addi	a1,zero,+00000000
	jal	zero,000000002306F0EC

l2306F118:
	addi	a1,zero,+00000001
	jal	zero,000000002306F0EC

l2306F120:
	bne	a0,zero,000000002306F110

l2306F124:
	jal	zero,000000002306F0D4

l2306F128:
	bltu	a7,a5,000000002306F0F8

l2306F12C:
	jal	zero,000000002306F110

l2306F130:
	beq	a4,a6,000000002306F0A8

l2306F134:
	bne	a4,zero,000000002306F0CC

l2306F138:
	addi	a0,zero,+00000000
	jal	zero,000000002306F0C0

;; __muldf3: 2306F140
;;   Called from:
;;     230146F4 (in pa_input)
;;     2301475E (in pa_input)
;;     2301486C (in pa_adapt)
;;     23015776 (in rfc_config_channel)
;;     2301670E (in rf_pri_rccal_iq)
;;     23018E60 (in phyif_utils_decode)
;;     230249F4 (in tcpip_stack_input)
;;     230515C6 (in cvt)
;;     23051614 (in cvt)
;;     230516DE (in cvt)
;;     23052C3C (in ADC_Parse_Result)
;;     23052C54 (in ADC_Parse_Result)
;;     23052D30 (in ADC_Parse_Result)
;;     23052D48 (in ADC_Parse_Result)
;;     2306C954 (in __floatundisf)
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
	beq	s7,zero,000000002306F1C8

l2306F198:
	addi	a5,zero,+000007FF
	beq	s7,a5,000000002306F22C

l2306F1A0:
	srli	a5,a0,0000001D
	slli	s3,s3,00000003
	or	s3,a5,s3
	lui	a5,00000800
	or	s3,s3,a5
	slli	s4,a0,00000003
	addi	s7,s7,-000003FF

l2306F1BC:
	addi	s8,zero,+00000000

l2306F1C0:
	addi	s1,zero,+00000000
	jal	zero,000000002306F24C

l2306F1C8:
	or	a5,s3,a0
	beq	a5,zero,000000002306F2CC

l2306F1D0:
	beq	s3,zero,000000002306F210

l2306F1D4:
	addi	a0,s3,+00000000
	jal	ra,000000002306C8C0

l2306F1DC:
	addi	a4,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a4,000000002306F21C

l2306F1E8:
	addi	a5,zero,+0000001D
	addi	s4,a0,-00000008
	sub	a5,a5,a4
	sll	s3,s3,s4
	srl	a5,s0,a5
	or	s3,a5,s3
	sll	s4,s0,s4

l2306F204:
	addi	s7,zero,-000003F3
	sub	s7,s7,a0
	jal	zero,000000002306F1BC

l2306F210:
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,000000002306F1DC

l2306F21C:
	addi	s3,a0,-00000028
	sll	s3,s0,s3
	addi	s4,zero,+00000000
	jal	zero,000000002306F204

l2306F22C:
	or	s0,s3,a0
	beq	s0,zero,000000002306F2E0

l2306F234:
	slli	a5,s3,0000000C
	addi	s4,a0,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,000000002306F1C0

l2306F24C:
	srli	a0,s6,00000014
	slli	s0,s6,0000000C
	andi	a0,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s6,s6,0000001F
	beq	a0,zero,000000002306F2F4

l2306F268:
	addi	a4,zero,+000007FF
	beq	a0,a4,000000002306F35C

l2306F270:
	srli	a5,s9,0000001D
	slli	s0,s0,00000003
	or	s0,a5,s0
	lui	a5,00000800
	or	s0,s0,a5
	addi	a0,a0,-000003FF
	slli	a5,s9,00000003

l2306F28C:
	addi	a4,zero,+00000000

l2306F290:
	slli	a3,s8,00000002
	or	a3,a3,a4
	add	a0,s7,a0
	addi	a3,a3,-00000001
	addi	a2,zero,+0000000E
	xor	a6,s5,s6
	addi	a7,a0,+00000001
	bltu	a2,a3,000000002306F420

l2306F2B0:
	auipc	a2,0000001F
	addi	a2,a2,-00000780
	slli	a3,a3,00000002
	add	a3,a3,a2
	lw	a3,a3,+00000000
	add	a3,a3,a2
	jalr	zero,a3,+00000000

l2306F2CC:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,000000002306F1C0

l2306F2E0:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,000000002306F1C0

l2306F2F4:
	or	a5,s0,s9
	beq	a5,zero,000000002306F37C

l2306F2FC:
	beq	s0,zero,000000002306F33C

l2306F300:
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0

l2306F308:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,000000002306F34C

l2306F314:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l2306F330:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,000000002306F28C

l2306F33C:
	addi	a0,s9,+00000000
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,000000002306F308

l2306F34C:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,000000002306F330

l2306F35C:
	or	a2,s0,s9
	beq	a2,zero,000000002306F390

l2306F364:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,000000002306F3A4

l2306F370:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,000000002306F290

l2306F37C:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,000000002306F290

l2306F390:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,000000002306F290

l2306F3A4:
	addi	a4,zero,+00000003
	jal	zero,000000002306F290
2306F3AC                                     37 04 08 00             7...
2306F3B0 93 07 00 00 13 07 F0 7F 13 08 00 00 93 04 00 01 ................

l2306F3C0:
	slli	s0,s0,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	s0,s0,0000000C
	slli	a6,a6,0000001F
	or	s0,s0,a4
	or	a4,s0,a6
	addi	a0,a5,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,000000002306F3EC

l2306F3E8:
	csrrs	zero,fflags,ra

l2306F3EC:
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

l2306F420:
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
	bgeu	a2,t4,000000002306F45C

l2306F458:
	add	t3,t3,t1

l2306F45C:
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
	bgeu	s4,a5,000000002306F4A0

l2306F498:
	lui	a5,00000010
	add	a4,a4,a5

l2306F4A0:
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
	bgeu	a3,a4,000000002306F4F0

l2306F4EC:
	add	t5,t5,a5

l2306F4F0:
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
	bgeu	s3,a5,000000002306F534

l2306F530:
	add	a1,a1,a4

l2306F534:
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
	bge	a4,zero,000000002306F660

l2306F5C4:
	srli	a4,a5,00000001
	andi	a5,a5,+00000001
	or	a5,a4,a5
	slli	a4,s0,0000001F
	or	a5,a5,a4
	srli	s0,s0,00000001

l2306F5DC:
	addi	a1,a7,+000003FF
	bge	zero,a1,000000002306F6F0

l2306F5E4:
	andi	a4,a5,+00000007
	beq	a4,zero,000000002306F678

l2306F5EC:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306F674

l2306F5F8:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306F668

l2306F600:
	bne	s2,zero,000000002306F678

l2306F604:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,000000002306F678

l2306F610:
	addi	a4,a5,+00000004

l2306F614:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,000000002306F678
2306F624             13 88 0A 00 13 84 09 00 93 07 0A 00     ............
2306F630 13 07 0C 00 93 06 20 00 63 00 D7 28 93 06 30 00 ...... .c..(..0.
2306F640 63 04 D7 28 93 06 10 00 E3 1A D7 F8 13 04 00 00 c..(............
2306F650 93 07 00 00 6F 00 00 25 13 08 0B 00 6F F0 9F FD ....o..%....o...

l2306F660:
	addi	a7,a0,+00000000
	jal	zero,000000002306F5DC

l2306F668:
	bne	a6,zero,000000002306F678

l2306F66C:
	addi	a4,a5,+00000008
	jal	zero,000000002306F614

l2306F674:
	bne	a6,zero,000000002306F66C

l2306F678:
	slli	a4,s0,00000007
	bge	a4,zero,000000002306F690

l2306F680:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a7,+00000400

l2306F690:
	addi	a4,zero,+000007FE
	blt	a4,a1,000000002306F6B0

l2306F698:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	s0,s0,00000003
	addi	a4,a1,+00000000
	jal	zero,000000002306F3C0

l2306F6B0:
	addi	a5,zero,+00000002
	beq	s2,a5,000000002306F6E8

l2306F6B8:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306F6D8

l2306F6C0:
	beq	s2,zero,000000002306F6DC

l2306F6C4:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l2306F6CC:
	ori	s1,s1,+00000005
	addi	s0,a5,+00000000
	jal	zero,000000002306F3C0

l2306F6D8:
	bne	a6,zero,000000002306F6C4

l2306F6DC:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306F6CC

l2306F6E8:
	bne	a6,zero,000000002306F6DC

l2306F6EC:
	jal	zero,000000002306F6C4

l2306F6F0:
	addi	a4,zero,+00000001
	bne	a1,zero,000000002306F760

l2306F6F8:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,000000002306F754

l2306F704:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,000000002306F74C

l2306F710:
	addi	a4,zero,+00000003
	beq	s2,a4,000000002306F73C

l2306F718:
	addi	a4,s0,+00000000
	bne	s2,zero,000000002306F754

l2306F720:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306F754

l2306F72C:
	sltiu	a4,a5,-00000004

l2306F730:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,000000002306F754

l2306F73C:
	addi	a4,s0,+00000000
	bne	a6,zero,000000002306F754

l2306F744:
	sltiu	a4,a5,-00000008
	jal	zero,000000002306F730

l2306F74C:
	addi	a4,s0,+00000000
	bne	a6,zero,000000002306F744

l2306F754:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l2306F760:
	addi	a3,zero,+00000001
	sub	a3,a3,a1
	addi	a2,zero,+00000038
	blt	a2,a3,000000002306F864

l2306F770:
	addi	a2,zero,+0000001F
	blt	a2,a3,000000002306F7D8

l2306F778:
	addi	a7,a7,+0000041E
	sll	a2,s0,a7
	srl	a1,a5,a3
	sll	a5,a5,a7
	or	a2,a2,a1
	sltu	a5,zero,a5
	or	a5,a2,a5
	srl	s0,s0,a3

l2306F798:
	andi	a3,a5,+00000007
	beq	a3,zero,000000002306F81C

l2306F7A0:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,000000002306F818

l2306F7AC:
	addi	a3,zero,+00000003
	beq	s2,a3,000000002306F80C

l2306F7B4:
	bne	s2,zero,000000002306F81C

l2306F7B8:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,000000002306F81C

l2306F7C4:
	addi	a3,a5,+00000004

l2306F7C8:
	sltu	a5,a3,a5
	add	s0,s0,a5
	addi	a5,a3,+00000000
	jal	zero,000000002306F81C

l2306F7D8:
	addi	a2,zero,-0000001F
	sub	a2,a2,a1
	addi	a0,zero,+00000020
	srl	a2,s0,a2
	addi	a1,zero,+00000000
	beq	a3,a0,000000002306F7F8

l2306F7F0:
	addi	a7,a7,+0000043E
	sll	a1,s0,a7

l2306F7F8:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a2,a5
	addi	s0,zero,+00000000
	jal	zero,000000002306F798

l2306F80C:
	bne	a6,zero,000000002306F81C

l2306F810:
	addi	a3,a5,+00000008
	jal	zero,000000002306F7C8

l2306F818:
	bne	a6,zero,000000002306F810

l2306F81C:
	slli	a3,s0,00000008
	bge	a3,zero,000000002306F83C

l2306F824:
	ori	s1,s1,+00000001
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,000000002306F85C

l2306F834:
	addi	a4,zero,+00000001
	jal	zero,000000002306F3C0

l2306F83C:
	srli	a3,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a3
	srli	s0,s0,00000003
	beq	a4,zero,000000002306F3C0

l2306F850:
	andi	a4,s1,+00000001
	beq	a4,zero,000000002306F3C0

l2306F858:
	addi	a4,zero,+00000000

l2306F85C:
	ori	s1,s1,+00000002
	jal	zero,000000002306F3C0

l2306F864:
	or	a5,a5,s0
	beq	a5,zero,000000002306F89C

l2306F86C:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,000000002306F8AC

l2306F878:
	addi	a5,zero,+00000003
	beq	s2,a5,000000002306F890

l2306F880:
	addi	a5,zero,+00000005
	beq	s2,zero,000000002306F898

l2306F888:
	addi	a5,zero,+00000001
	jal	zero,000000002306F898

l2306F890:
	addi	a5,zero,+00000009
	bne	a6,zero,000000002306F888

l2306F898:
	srli	a5,a5,00000003

l2306F89C:
	ori	s1,s1,+00000002
	addi	s0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306F3C0

l2306F8AC:
	addi	a5,zero,+00000009
	bne	a6,zero,000000002306F898

l2306F8B4:
	jal	zero,000000002306F888
2306F8B8                         13 04 00 00 93 07 00 00         ........
2306F8C0 13 07 F0 7F 6F F0 DF AF 37 04 08 00 93 07 00 00 ....o...7.......
2306F8D0 13 07 F0 7F 13 08 00 00 6F F0 9F AE             ........o...   

;; __subdf3: 2306F8DC
;;   Called from:
;;     2306C850 (in modf)
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
	bne	a6,a4,000000002306F954

l2306F94C:
	or	a4,a5,t1
	bne	a4,zero,000000002306F958

l2306F954:
	xori	a3,a3,+00000001

l2306F958:
	sub	a4,s1,a6
	bne	a3,s2,000000002306FD78

l2306F960:
	bge	zero,a4,000000002306FAB8

l2306F964:
	bne	a6,zero,000000002306F9C8

l2306F968:
	or	a3,a5,t1
	bne	a3,zero,000000002306F984

l2306F970:
	addi	a5,zero,+000007FF
	beq	a4,a5,000000002306F9AC

l2306F978:
	addi	a5,t3,+00000000

l2306F97C:
	addi	s1,zero,+00000000
	jal	zero,000000002306FC30

l2306F984:
	addi	a3,a4,-00000001
	bne	a3,zero,000000002306F9A4

l2306F98C:
	add	t1,t1,a7
	add	a5,t3,a5
	sltu	a7,t1,a7
	add	a5,a5,a7

l2306F99C:
	addi	a4,zero,+00000001
	jal	zero,000000002306FA3C

l2306F9A4:
	addi	a2,zero,+000007FF
	bne	a4,a2,000000002306F9F4

l2306F9AC:
	or	a5,t3,a7
	beq	a5,zero,0000000023070324

l2306F9B4:
	slli	a5,t3,00000009
	blt	a5,zero,000000002306F978

l2306F9BC:
	addi	a5,t3,+00000000

l2306F9C0:
	addi	s1,zero,+00000010
	jal	zero,000000002306FC30

l2306F9C8:
	addi	a3,zero,+000007FF
	bne	s1,a3,000000002306F9E8

l2306F9D0:
	or	a5,t3,a7
	beq	a5,zero,0000000023070330

l2306F9D8:
	slli	a5,t3,00000009
	blt	a5,zero,0000000023070338

l2306F9E0:
	addi	a5,t3,+00000000
	jal	zero,000000002306FB84

l2306F9E8:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000

l2306F9F4:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306FAAC

l2306F9FC:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306FA78

l2306FA04:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l2306FA28:
	add	t1,t1,a7
	add	a5,a3,t3
	sltu	a7,t1,a7
	add	a5,a5,a7
	addi	a4,s1,+00000000

l2306FA3C:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306FE90

l2306FA44:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306FD48

l2306FA50:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	srli	a7,t1,00000001
	and	a3,a5,a3
	andi	t1,t1,+00000001
	slli	a5,a3,0000001F
	or	t1,a7,t1
	or	a7,a5,t1
	srli	a5,a3,00000001
	jal	zero,000000002306FCD0

l2306FA78:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,000000002306FA98

l2306FA8C:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l2306FA98:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l2306FAA4:
	addi	a3,zero,+00000000
	jal	zero,000000002306FA28

l2306FAAC:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,000000002306FAA4

l2306FAB8:
	beq	a4,zero,000000002306FBE0

l2306FABC:
	sub	a4,a6,s1
	bne	s1,zero,000000002306FB68

l2306FAC4:
	or	a3,t3,a7
	bne	a3,zero,000000002306FAF0

l2306FACC:
	addi	a3,zero,+000007FF
	bne	a4,a3,000000002306FE90

l2306FAD4:
	or	a7,a5,t1
	beq	a7,zero,0000000023070344

l2306FADC:
	slli	a3,a5,00000009
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	blt	a3,zero,000000002306FC30

l2306FAEC:
	jal	zero,000000002306F9C0

l2306FAF0:
	addi	s0,a4,-00000001
	bne	s0,zero,000000002306FB10

l2306FAF8:
	add	a7,a7,t1
	sltu	t1,a7,t1
	add	a5,t3,a5
	add	a5,a5,t1
	addi	t1,a7,+00000000
	jal	zero,000000002306F99C

l2306FB10:
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306FAD4

l2306FB18:
	addi	a4,zero,+00000038
	blt	a4,s0,000000002306FBD4

l2306FB20:
	addi	a4,zero,+0000001F
	blt	a4,s0,000000002306FBA0

l2306FB28:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a3
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l2306FB4C:
	add	a7,a7,t1
	add	s0,s0,a5
	sltu	a5,a7,t1
	add	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	jal	zero,000000002306FA3C

l2306FB68:
	addi	a3,zero,+000007FF
	bne	a6,a3,000000002306FB90

l2306FB70:
	or	a7,a5,t1
	beq	a7,zero,0000000023070304

l2306FB78:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,000000002307033C

l2306FB84:
	addi	a4,zero,+000007FF

l2306FB88:
	addi	a6,zero,+00000000
	jal	zero,000000002306F9C0

l2306FB90:
	lui	a3,00000800
	or	t3,t3,a3
	addi	s0,a4,+00000000
	jal	zero,000000002306FB18

l2306FBA0:
	addi	a4,s0,-00000020
	addi	a3,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a3,000000002306FBC0

l2306FBB4:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l2306FBC0:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306FBCC:
	addi	s0,zero,+00000000
	jal	zero,000000002306FB4C

l2306FBD4:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,000000002306FBCC

l2306FBE0:
	addi	a4,s1,+00000001
	andi	a3,a4,+000007FE
	bne	a3,zero,000000002306FCA8

l2306FBEC:
	or	a3,t3,a7
	bne	s1,zero,000000002306FC4C

l2306FBF4:
	beq	a3,zero,000000002306FE94

l2306FBF8:
	or	a4,a5,t1
	beq	a4,zero,000000002306FFE4

l2306FC00:
	add	t1,a7,t1
	add	a5,t3,a5
	sltu	s0,t1,a7
	add	t3,a5,s0
	slli	a5,t3,00000008
	bge	a5,zero,000000002306FE98

l2306FC18:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,t3,a5
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	addi	a4,zero,+00000001

l2306FC30:
	andi	a3,a7,+00000007
	bne	a3,zero,000000002306FD10

l2306FC38:
	beq	a6,zero,0000000023070110

l2306FC3C:
	andi	a3,s1,+00000001
	beq	a3,zero,0000000023070110

l2306FC44:
	ori	s1,s1,+00000002
	jal	zero,0000000023070110

l2306FC4C:
	addi	a2,zero,+000007FF
	bne	s1,a2,000000002306FC84

l2306FC54:
	beq	a3,zero,0000000023070408

l2306FC58:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a2,000000002306FC90

l2306FC6C:
	or	a4,a5,t1
	beq	a4,zero,00000000230703FC

l2306FC74:
	slli	a4,a5,00000009
	blt	a4,zero,000000002306FC8C

l2306FC7C:
	addi	s1,zero,+00000010
	jal	zero,000000002306FC8C

l2306FC84:
	addi	s1,zero,+00000000
	beq	a6,a2,000000002306FC6C

l2306FC8C:
	beq	a3,zero,0000000023070400

l2306FC90:
	or	a5,a5,t1
	bne	a5,zero,0000000023070100

l2306FC98:
	addi	a5,t3,+00000000
	jal	zero,00000000230700E8

l2306FCA0:
	addi	s1,zero,+00000000
	jal	zero,000000002306FC6C

l2306FCA8:
	addi	a3,zero,+000007FF
	beq	a4,a3,000000002306FCD8

l2306FCB0:
	add	t1,a7,t1
	add	s0,t3,a5
	sltu	a5,t1,a7
	add	t3,s0,a5
	slli	a5,t3,0000001F
	srli	t1,t1,00000001
	or	a7,a5,t1
	srli	a5,t3,00000001

l2306FCD0:
	addi	a6,zero,+00000000
	jal	zero,000000002306F97C

l2306FCD8:
	beq	s3,zero,000000002306FCE8

l2306FCDC:
	addi	a5,zero,+00000003
	bne	s3,a5,000000002306FCF0

l2306FCE4:
	bne	s2,zero,000000002306FCFC

l2306FCE8:
	addi	a4,zero,+000007FF
	jal	zero,000000002306FD58

l2306FCF0:
	addi	a5,zero,+00000002
	bne	s3,a5,000000002306FCFC

l2306FCF8:
	bne	s2,zero,000000002306FCE8

l2306FCFC:
	addi	a6,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE

l2306FD0C:
	addi	s1,zero,+00000005

l2306FD10:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s3,a3,00000000230703AC

l2306FD1C:
	addi	a3,zero,+00000003
	beq	s3,a3,00000000230703A0

l2306FD24:
	bne	s3,zero,00000000230703B0

l2306FD28:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,00000000230703B0

l2306FD34:
	addi	a3,a7,+00000004

l2306FD38:
	sltu	a7,a3,a7
	add	a5,a5,a7
	addi	a7,a3,+00000000
	jal	zero,00000000230703B0

l2306FD48:
	beq	s3,zero,000000002306FD58

l2306FD4C:
	addi	a5,zero,+00000003
	bne	s3,a5,000000002306FD68

l2306FD54:
	bne	s2,zero,0000000023070310

l2306FD58:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	s1,zero,+00000005
	jal	zero,0000000023070110

l2306FD68:
	addi	a5,zero,+00000002
	bne	s3,a5,0000000023070310

l2306FD70:
	bne	s2,zero,000000002306FD58

l2306FD74:
	jal	zero,000000002306FCFC

l2306FD78:
	bge	zero,a4,000000002306FE70

l2306FD7C:
	bne	a6,zero,000000002306FE18

l2306FD80:
	or	a3,a5,t1
	beq	a3,zero,000000002306F970

l2306FD88:
	addi	a3,a4,-00000001
	bne	a3,zero,000000002306FDA8

l2306FD90:
	sub	t1,a7,t1
	sub	a5,t3,a5
	sltu	a7,a7,t1
	sub	a5,a5,a7

l2306FDA0:
	addi	a4,zero,+00000001
	jal	zero,000000002306FDF8

l2306FDA8:
	addi	a2,zero,+000007FF
	beq	a4,a2,000000002306F9AC

l2306FDB0:
	addi	a4,zero,+00000038
	blt	a4,a3,000000002306FE64

l2306FDB8:
	addi	a4,zero,+0000001F
	blt	a4,a3,000000002306FE30

l2306FDC0:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l2306FDE4:
	sub	t1,a7,t1
	sub	a5,t3,a3
	sltu	a7,a7,t1
	sub	a5,a5,a7
	addi	a4,s1,+00000000

l2306FDF8:
	slli	a3,a5,00000008
	bge	a3,zero,000000002306FE90

l2306FE00:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,t1,+00000000
	addi	s1,a4,+00000000
	jal	zero,00000000230701D8

l2306FE18:
	addi	a3,zero,+000007FF
	beq	s1,a3,000000002306F9D0

l2306FE20:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000
	jal	zero,000000002306FDB0

l2306FE30:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,000000002306FE50

l2306FE44:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l2306FE50:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l2306FE5C:
	addi	a3,zero,+00000000
	jal	zero,000000002306FDE4

l2306FE64:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,000000002306FE5C

l2306FE70:
	beq	a4,zero,000000002306FFB4

l2306FE74:
	sub	a4,a6,s1
	bne	s1,zero,000000002306FEEC

l2306FE7C:
	or	a2,t3,a7
	bne	a2,zero,000000002306FEA0

l2306FE84:
	addi	a2,zero,+000007FF
	addi	s2,a3,+00000000
	beq	a4,a2,000000002306FAD4

l2306FE90:
	bne	a4,zero,000000002307038C

l2306FE94:
	addi	t3,a5,+00000000

l2306FE98:
	addi	a7,t1,+00000000
	jal	zero,000000002306FFE4

l2306FEA0:
	addi	s0,a4,-00000001
	bne	s0,zero,000000002306FEC4

l2306FEA8:
	sub	a7,t1,a7
	sltu	t1,t1,a7
	sub	a5,a5,t3
	sub	a5,a5,t1
	addi	s2,a3,+00000000
	addi	t1,a7,+00000000
	jal	zero,000000002306FDA0

l2306FEC4:
	addi	a2,zero,+000007FF
	bne	a4,a2,000000002306FF20

l2306FECC:
	or	a7,a5,t1
	beq	a7,zero,000000002307034C

l2306FED4:
	slli	a2,a5,00000009
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000
	addi	a6,zero,+00000000
	blt	a2,zero,000000002306FC30

l2306FEE8:
	jal	zero,000000002306F9C0

l2306FEEC:
	addi	a2,zero,+000007FF
	bne	a6,a2,000000002306FF14

l2306FEF4:
	or	a7,a5,t1
	beq	a7,zero,0000000023070358

l2306FEFC:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,0000000023070368

l2306FF08:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,000000002306FB88

l2306FF14:
	lui	a2,00000800
	or	t3,t3,a2
	addi	s0,a4,+00000000

l2306FF20:
	addi	a4,zero,+00000038
	blt	a4,s0,000000002306FFA8

l2306FF28:
	addi	a4,zero,+0000001F
	blt	a4,s0,000000002306FF74

l2306FF30:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a2,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l2306FF54:
	sub	a7,t1,a7
	sub	s0,a5,s0
	sltu	a5,t1,a7
	sub	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	addi	s2,a3,+00000000
	jal	zero,000000002306FDF8

l2306FF74:
	addi	a4,s0,-00000020
	addi	a2,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a2,000000002306FF94

l2306FF88:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l2306FF94:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l2306FFA0:
	addi	s0,zero,+00000000
	jal	zero,000000002306FF54

l2306FFA8:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,000000002306FFA0

l2306FFB4:
	addi	a4,s1,+00000001
	andi	a4,a4,+000007FE
	bne	a4,zero,00000000230701AC

l2306FFC0:
	or	a1,t3,a7
	or	a2,a5,t1
	bne	s1,zero,000000002307009C

l2306FFCC:
	bne	a1,zero,0000000023070050

l2306FFD0:
	bne	a2,zero,00000000230702B4

l2306FFD4:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001
	addi	t3,zero,+00000000
	addi	a7,zero,+00000000

l2306FFE4:
	or	a5,a7,t3
	beq	a5,zero,0000000023070394

l2306FFEC:
	srli	a5,a7,0000001F
	slli	a6,t3,00000001
	add	a6,a6,a5
	slli	a5,a7,00000001
	andi	a4,a5,+00000007
	addi	s1,zero,+00000000
	beq	a4,zero,0000000023070038

l23070008:
	addi	a4,zero,+00000002
	beq	s3,a4,00000000230702E8

l23070010:
	addi	a4,zero,+00000003
	beq	s3,a4,00000000230702CC

l23070018:
	addi	s1,zero,+00000001
	bne	s3,zero,0000000023070038

l23070020:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,0000000023070038

l2307002C:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	a6,a6,a5

l23070038:
	srli	a6,a6,00000018
	xori	a6,a6,+00000001
	andi	a6,a6,+00000001
	addi	a5,t3,+00000000
	addi	a4,zero,+00000000
	jal	zero,000000002306FC30

l23070050:
	beq	a2,zero,000000002306FFE4

l23070054:
	sub	a2,a7,t1
	sltu	a1,a7,a2
	sub	a4,t3,a5
	sub	a4,a4,a1
	slli	a1,a4,00000008
	bge	a1,zero,0000000023070084

l2307006C:
	sub	a7,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,a7
	sub	t3,s0,a5

l2307007C:
	addi	s2,a3,+00000000
	jal	zero,000000002306FFE4

l23070084:
	or	a7,a2,a4
	bne	a7,zero,00000000230702C0

l2307008C:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001

l23070094:
	addi	t3,zero,+00000000
	jal	zero,000000002306FFE4

l2307009C:
	addi	a0,zero,+000007FF
	bne	s1,a0,00000000230700D0

l230700A4:
	beq	a1,zero,00000000230703F0

l230700A8:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a0,00000000230700FC

l230700BC:
	beq	a2,zero,00000000230700D8

l230700C0:
	slli	a4,a5,00000009
	blt	a4,zero,00000000230700D8

l230700C8:
	addi	s1,zero,+00000010
	jal	zero,00000000230700D8

l230700D0:
	addi	s1,zero,+00000000
	beq	a6,a0,00000000230700BC

l230700D8:
	bne	a1,zero,00000000230700FC

l230700DC:
	beq	a2,zero,0000000023070374

l230700E0:
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000

l230700E8:
	addi	a6,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,000000002306FC30

l230700F4:
	addi	s1,zero,+00000000
	jal	zero,00000000230700BC

l230700FC:
	beq	a2,zero,000000002306FC98

l23070100:
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a4,zero,+000007FF

l23070110:
	slli	a3,a5,00000008
	bge	a3,zero,0000000023070130

l23070118:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,00000000230703B8

l23070124:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l23070130:
	slli	a3,a5,0000001D
	srli	a7,a7,00000003
	or	a7,a3,a7
	addi	a3,zero,+000007FF
	srli	a5,a5,00000003
	bne	a4,a3,0000000023070160

l23070148:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,0000000023070160

l23070154:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l23070160:
	slli	a5,a5,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a4
	or	a4,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,000000002307018C

l23070188:
	csrrs	zero,fflags,ra

l2307018C:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230701AC:
	sub	s4,a7,t1
	sub	s0,t3,a5
	sltu	a2,a7,s4
	sub	s0,s0,a2
	slli	a4,s0,00000008
	bge	a4,zero,0000000023070244

l230701C4:
	sub	s4,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,s4
	sub	s0,s0,a5
	addi	s2,a3,+00000000

l230701D8:
	beq	s0,zero,0000000023070250

l230701DC:
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0

l230701E4:
	addi	a4,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a4,0000000023070260

l230701F0:
	addi	a5,zero,+00000020
	sub	a5,a5,a4
	sll	s0,s0,a4
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	t1,s4,a4

l23070208:
	blt	a4,s1,00000000230702A0

l2307020C:
	sub	a4,a4,s1
	addi	a5,a4,+00000001
	addi	a3,zero,+0000001F
	blt	a3,a5,0000000023070270

l2307021C:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	sll	a7,s0,a4
	srl	a0,t1,a5
	sll	a4,t1,a4
	or	a7,a7,a0
	sltu	a4,zero,a4
	or	a7,a7,a4
	srl	t3,s0,a5
	jal	zero,000000002306FFE4

l23070244:
	or	a7,s4,s0
	bne	a7,zero,00000000230701D8

l2307024C:
	jal	zero,000000002307008C

l23070250:
	addi	a0,s4,+00000000
	jal	ra,000000002306C8C0
	addi	a0,a0,+00000020
	jal	zero,00000000230701E4

l23070260:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	t1,zero,+00000000
	jal	zero,0000000023070208

l23070270:
	addi	a4,a4,-0000001F
	addi	a2,zero,+00000020
	srl	a4,s0,a4
	addi	a3,zero,+00000000
	beq	a5,a2,0000000023070290

l23070284:
	addi	a3,zero,+00000040
	sub	a3,a3,a5
	sll	a3,s0,a3

l23070290:
	or	a5,t1,a3
	sltu	a5,zero,a5
	or	a7,a4,a5
	jal	zero,0000000023070094

l230702A0:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a4,s1,a4
	and	a5,s0,a5
	jal	zero,000000002306FE90

l230702B4:
	addi	t3,a5,+00000000
	addi	a7,t1,+00000000
	jal	zero,000000002307007C

l230702C0:
	addi	t3,a4,+00000000
	addi	a7,a2,+00000000
	jal	zero,000000002306FFE4

l230702CC:
	addi	s1,s2,+00000000
	bne	s2,zero,0000000023070038

l230702D4:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,zero,+00000001
	jal	zero,0000000023070038

l230702E8:
	addi	s1,zero,+00000001
	beq	s2,zero,0000000023070038

l230702F0:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,s2,+00000000
	jal	zero,0000000023070038
