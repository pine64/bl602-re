;;; Segment .text (23000300)

;; wpa_MD5Init: 23020672
;;   Called from:
;;     2301FA7C (in Bl_hmac_md5)
;;     2301FACC (in Bl_hmac_md5)
;;     2301FB1C (in Bl_hmac_md5)
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

;; wpa_MD5Update: 230206A4
;;   Called from:
;;     2301FA86 (in Bl_hmac_md5)
;;     2301FAD8 (in Bl_hmac_md5)
;;     2301FAE2 (in Bl_hmac_md5)
;;     2301FB28 (in Bl_hmac_md5)
;;     2301FB32 (in Bl_hmac_md5)
;;     23020786 (in wpa_MD5Final)
;;     23020790 (in wpa_MD5Final)
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
	bgeu	a5,a4,00000000230206D4

l230206CE:
	c.lw	s0,20(a5)
	c.addi	a5,00000001
	c.sw	s0,20(a5)

l230206D4:
	c.lw	s0,20(a4)
	srli	a5,s2,0000001D
	addi	s1,zero,+00000040
	c.add	a5,a4
	c.sw	s0,20(a5)
	c.sub	s1,a0
	bltu	s2,s1,000000002302074A

l230206E8:
	addi	a0,a0,+00000058
	c.mv	a2,s1
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,00000000230A382C
	addi	a1,s0,+00000058
	c.mv	a0,s0
	jal	ra,000000002301FDBC
	addi	s4,s0,+00000018

l23020704:
	addi	a5,s1,+0000003F
	add	a1,s3,s1
	bltu	a5,s2,0000000023020732

l23020710:
	c.li	a0,00000000

l23020712:
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
	jal	zero,00000000230A382C

l23020732:
	addi	a2,zero,+00000040
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002301FDBC
	addi	s1,s1,+00000040
	c.j	0000000023020704

l2302074A:
	c.li	s1,00000000
	c.j	0000000023020712

;; wpa_MD5Final: 2302074E
;;   Called from:
;;     2301FA8E (in Bl_hmac_md5)
;;     2301FAEA (in Bl_hmac_md5)
;;     2301FB3A (in Bl_hmac_md5)
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
	jal	ra,00000000230A382C
	c.lw	s0,16(a2)
	addi	a5,zero,+00000037
	c.srli	a2,00000003
	andi	a2,a2,+0000003F
	bltu	a5,a2,00000000230207B4

l23020774:
	addi	a5,zero,+00000038

l23020778:
	lui	a1,000230AF
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,-00000500
	jal	ra,00000000230206A4
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,00000000230206A4
	c.mv	a1,s0
	c.li	a2,00000010
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.mv	a0,s0
	addi	a2,zero,+00000098
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230207B4:
	addi	a5,zero,+00000078
	c.j	0000000023020778

;; rijndaelKeySetupEnc: 230207BA
;;   Called from:
;;     230208D4 (in rijndael_set_key)
;;     230208FE (in rijndael_set_key)
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
	bne	a2,a5,00000000230208B0

l2302083A:
	lui	a3,000230B1
	lui	a4,000230B1
	addi	a3,a3,-000002C0
	addi	a6,a0,+00000090
	addi	a4,a4,-000003C0

l2302084E:
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
	beq	a0,a6,00000000230208B4

l230208AC:
	c.addi	a0,00000010
	c.j	000000002302084E

l230208B0:
	c.li	a0,00000000
	c.jr	ra

l230208B4:
	c.li	a0,0000000A
	c.jr	ra

;; rijndael_set_key: 230208B8
;;   Called from:
;;     2301F814 (in BL_AesEncrypt)
;;     2301F994 (in BL_AesUnWrap)
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
	jal	ra,00000000230207BA
	c.sw	s0,4(a0)
	beq	s2,zero,00000000230208F2

l230208DE:
	sw	zero,s0,+00000000

l230208E2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230208F2:
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.bnez	a0,0000000023020902

l230208F8:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230207BA

l23020902:
	slli	a5,a0,00000004
	c.mv	a4,s1
	slli	a2,a0,00000002
	c.add	a5,s0

l2302090E:
	sub	a3,a2,s2
	c.addi	a5,FFFFFFF0
	blt	s2,a3,0000000023020AAC

l23020918:
	lui	a2,000230AF
	lui	a5,000230B1
	lui	a1,000230AF
	lui	a6,000230AF
	lui	a7,000230AF
	c.li	t1,00000001
	addi	a2,a2,-000004C0
	addi	a5,a5,-000003C0
	addi	a1,a1,+00000740
	addi	a6,a6,-000000C0
	addi	a7,a7,+00000340

l23020942:
	bge	t1,a0,00000000230208E2

l23020946:
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
	c.j	0000000023020942

l23020AAC:
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
	c.j	000000002302090E

;; rijndael_decrypt: 23020ADC
;;   Called from:
;;     2301FA22 (in BL_AesUnWrap)
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
	lui	s2,000230AF
	lui	s1,000230AF
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,000230AF
	lui	t0,000230AF
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-000004C0
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,+00000740
	addi	t2,t2,-000000C0
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+00000340
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

l23020BB6:
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
	beq	s7,zero,0000000023020DCA

l23020D0C:
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
	c.j	0000000023020BB6

l23020DCA:
	lui	t0,000230B0
	addi	t0,t0,-000004C0
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

;; rijndael_encrypt: 23020F1E
;;   Called from:
;;     2301F81E (in BL_AesEncrypt)
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
	lui	s2,000230B0
	lui	s1,000230B1
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,000230B0
	lui	t0,000230B0
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-000003C0
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,-000007C0
	addi	t2,t2,+00000040
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+00000440
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

l23020FF8:
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
	beq	s7,zero,000000002302120C

l2302114E:
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
	c.j	0000000023020FF8

l2302120C:
	lui	t0,000230B1
	addi	t0,t0,-000003C0
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

;; Bl_SHA1ProcessMessageBlock: 23021360
;;   Called from:
;;     230216C8 (in Bl_SHA1Final)
;;     2302171A (in Bl_SHA1Final)
;;     2302184A (in Bl_SHA1Update)
Bl_SHA1ProcessMessageBlock proc
	addi	a2,a0,+0000001C
	c.mv	a4,a2
	addi	a1,a0,+0000005C

l2302136A:
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
	bne	a1,a4,000000002302136A

l23021390:
	lw	a6,a0,+00000000
	lw	t3,a0,+00000004
	lw	t1,a0,+00000008
	lw	t4,a0,+0000000C
	lw	t6,a0,+00000010
	lui	t5,0005A828
	c.li	a5,00000000
	addi	t5,t5,-00000667
	c.li	t0,00000014

l230213B0:
	xor	a3,t1,t4
	and	a3,a3,t3
	xor	a1,a3,t4
	srli	a4,a6,0000001B
	slli	a3,a6,00000005
	c.or	a3,a4
	add	a4,a3,t5
	add	a3,a1,a4
	andi	a4,a5,+00000030
	beq	a4,zero,0000000023021608

l230213D6:
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

l23021418:
	c.add	a4,a3
	slli	a7,t3,0000001E
	srli	a3,t3,00000002
	c.addi	a5,00000001
	c.add	a4,t6
	or	a7,a7,a3
	c.mv	t3,a6
	c.mv	t6,t4
	bne	a5,t0,0000000023021600

l23021432:
	lui	t5,0006ED9F
	addi	t5,t5,-0000045F
	addi	t6,zero,+00000028

l2302143E:
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
	bne	a5,t6,0000000023021612

l230214B2:
	lui	t5,0008F1BC
	addi	t5,t5,-00000324
	addi	t6,zero,+0000003C

l230214BE:
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
	bne	a5,t6,000000002302161A

l23021546:
	lui	t5,000CA62C
	addi	t5,t5,+000001D6
	addi	t6,zero,+00000050

l23021552:
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
	bne	a5,t6,0000000023021622

l230215D6:
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

l23021600:
	c.mv	t4,t1
	c.mv	a6,a4
	c.mv	t1,a7
	c.j	00000000230213B0

l23021608:
	slli	a4,a5,00000002
	c.add	a4,a0
	c.lw	a4,28(a4)
	c.j	0000000023021418

l23021612:
	c.mv	t1,a7
	c.mv	a4,a3
	c.mv	a7,t3
	c.j	000000002302143E

l2302161A:
	c.mv	a7,t3
	c.mv	a3,a1
	c.mv	t3,t4
	c.j	00000000230214BE

l23021622:
	c.mv	t3,t4
	c.mv	a1,a4
	c.mv	t4,a6
	c.j	0000000023021552

;; Bl_SHA1Init: 2302162A
;;   Called from:
;;     2301FBAA (in Bl_hmac_sha1)
;;     2301FC02 (in Bl_hmac_sha1)
;;     2301FC58 (in Bl_hmac_sha1)
Bl_SHA1Init proc
	c.beqz	a0,000000002302166E

l2302162C:
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

l2302166E:
	c.li	a0,00000001
	c.jr	ra

;; Bl_SHA1Final: 23021672
;;   Called from:
;;     2301FBBC (in Bl_hmac_sha1)
;;     2301FC1C (in Bl_hmac_sha1)
;;     2301FC76 (in Bl_hmac_sha1)
Bl_SHA1Final proc
	c.li	a5,00000001
	beq	a0,zero,00000000230217BA

l23021678:
	beq	a1,zero,00000000230217BA

l2302167C:
	lbu	a5,a0,+0000009F
	bne	a5,zero,00000000230217BA

l23021684:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+0000009E
	c.mv	s1,a1
	c.mv	s0,a0
	c.bnez	a5,000000002302173E

l23021696:
	lh	a4,a0,+0000009C
	addi	a2,zero,+00000037
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,a0,+0000009C
	add	a3,a0,a4
	addi	a5,zero,-00000080
	sb	a5,a3,+0000005C
	bge	a2,a4,000000002302179E

l230216BA:
	addi	a4,zero,+0000003F

l230216BE:
	lh	a5,s0,+0000009C
	bge	a4,a5,000000002302177E

l230216C6:
	c.mv	a0,s0
	jal	ra,0000000023021360
	addi	a4,zero,+00000037

l230216D0:
	lh	a5,s0,+0000009C
	bge	a4,a5,000000002302178E

l230216D8:
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
	jal	ra,0000000023021360
	addi	a5,s0,+0000005C
	addi	a4,s0,+0000009C

l23021726:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a4,a5,0000000023021726

l23021730:
	c.li	a5,00000001
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sb	a5,s0,+0000009E

l2302173E:
	c.li	a5,00000000
	c.li	a2,00000014

l23021742:
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
	bne	a5,a2,0000000023021742

l23021764:
	c.mv	a0,s0
	addi	a2,zero,+000000A0
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2302177E:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	00000000230216BE

l2302178E:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	00000000230216D0

l2302179E:
	addi	a4,zero,+00000037

l230217A2:
	lh	a5,s0,+0000009C
	blt	a4,a5,00000000230216D8

l230217AA:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	00000000230217A2

l230217BA:
	c.mv	a0,a5
	c.jr	ra

;; Bl_SHA1Update: 230217BE
;;   Called from:
;;     2301FBB4 (in Bl_hmac_sha1)
;;     2301FC0E (in Bl_hmac_sha1)
;;     2301FC64 (in Bl_hmac_sha1)
;;     2301FC6E (in Bl_hmac_sha1)
;;     2301FCC6 (in Bl_hmac_sha1)
Bl_SHA1Update proc
	c.bnez	a2,00000000230217C4

l230217C0:
	c.li	a0,00000000
	c.jr	ra

l230217C4:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	a0,00000001
	c.beqz	s0,0000000023021806

l230217D6:
	c.beqz	a1,0000000023021806

l230217D8:
	lbu	a5,s0,+0000009E
	c.beqz	a5,00000000230217E8

l230217DE:
	c.li	a5,00000003
	sb	a5,s0,+0000009F
	c.li	a0,00000003
	c.j	0000000023021806

l230217E8:
	lbu	a5,s0,+0000009F
	c.mv	a0,a5
	c.bnez	a5,0000000023021806

l230217F0:
	add	s1,a1,a2
	c.li	s2,00000001
	addi	s3,zero,+00000040

l230217FA:
	beq	a1,s1,0000000023021804

l230217FE:
	lbu	a5,s0,+0000009F
	c.beqz	a5,0000000023021814

l23021804:
	c.li	a0,00000000

l23021806:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23021814:
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
	c.bnez	a4,0000000023021842

l23021836:
	c.lw	s0,24(a4)
	c.addi	a4,00000001
	c.sw	s0,24(a4)
	c.bnez	a4,0000000023021842

l2302183E:
	sb	s2,s0,+0000009F

l23021842:
	bne	a5,s3,0000000023021850

l23021846:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,0000000023021360
	c.lwsp	a2,00000064

l23021850:
	c.addi	a1,00000001
	c.j	00000000230217FA

;; ap_setpsk: 23021854
;;   Called from:
;;     2301F0DC (in apm_start_req_handler)
ap_setpsk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s1,a2
	jal	ra,0000000023019356
	c.beqz	a0,00000000230218A2

l23021866:
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.mv	a0,a1
	jal	ra,00000000230A4220
	c.lwsp	a2,00000064
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,00000000230A382C
	c.mv	a0,s1
	jal	ra,00000000230A4220
	sb	a0,s0,+00000058
	addi	a0,s0,+00000018
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	addi	a2,zero,+00000040
	c.addi16sp	00000020
	jal	zero,00000000230A382C

l230218A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; ap_resetConfiguration: 230218AC
;;   Called from:
;;     23021944 (in InitializeAp)
ap_resetConfiguration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,0000000023019356
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002301936A
	c.beqz	s0,000000002302193A

l230218C4:
	c.beqz	a0,000000002302193A

l230218C6:
	lui	s1,000230B1
	addi	a0,s1,-00000298
	jal	ra,00000000230A4220
	addi	a1,s1,-00000298
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,00000000230A382C
	c.li	s1,00000001
	sw	s1,s0,+000000B8
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	addi	a0,s0,+00000008
	jal	ra,00000000230A3A68
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

l2302193A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; InitializeAp: 23021944
;;   Called from:
;;     230193B4 (in cm_AllocAPResources)
InitializeAp proc
	jal	zero,00000000230218AC

;; ipc_emb2app_rawstatus_get: 23021948
;;   Called from:
;;     23021A1E (in ipc_host_get_rawstatus)
ipc_emb2app_rawstatus_get proc
	lui	a5,00044800
	c.lw	a5,4(a0)
	c.jr	ra

;; ipc_host_init: 23021950
;;   Called from:
;;     2302430E (in bl_ipc_init)
ipc_host_init proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	s3,00000084
	c.mv	s3,a1
	lw	a1,a5,-00000508
	lui	a5,0004200F
	c.swsp	s1,00000088
	c.mv	s1,a2
	lw	a2,a5,-000004C8
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,000230B1
	c.swsp	s2,00000008
	addi	a0,a0,-00000284
	c.mv	s2,a3
	add	a3,a1,a2
	c.swsp	ra,0000008C
	jal	ra,0000000023082388
	lui	a0,00042024
	addi	a0,a0,-000000CC
	jal	ra,000000002307A456
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.mv	a1,s3
	c.sw	s0,32(s1)
	addi	a2,zero,+00000020
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a5,00000002
	c.sw	s0,56(a5)
	sb	a5,s0,+00000035
	c.li	a5,00000008
	sw	a5,s0,+000000A4
	c.lui	a2,00001000
	addi	a5,zero,+000003E0
	sw	a5,s0,+000000A8
	addi	a4,a2,-00000800
	addi	a5,s0,+00000048
	addi	a0,s1,+00000204
	sw	s2,s0,+000000E0
	c.sw	s0,60(a4)
	c.sw	s0,88(a5)
	c.sw	s0,92(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,a2,-00000340
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,00000000230A3A68

;; ipc_host_msg_push: 230219EE
;;   Called from:
;;     230288A2 (in cmd_mgr_llind)
;;     230289BC (in cmd_mgr_queue)
ipc_host_msg_push proc
	c.lw	a1,12(a3)
	c.lw	a0,32(a4)
	c.li	a5,00000000

l230219F4:
	blt	a5,a2,0000000023021A08

l230219F8:
	sw	a1,a0,+000000B0
	lui	a5,00044800
	c.li	a4,00000002
	c.sw	a5,0(a4)
	c.li	a0,00000000
	c.jr	ra

l23021A08:
	add	a6,a3,a5
	lw	a7,a6,+00000000
	add	a6,a4,a5
	c.addi	a5,00000004
	sw	a7,a6,+00000004
	c.j	00000000230219F4

;; ipc_host_get_rawstatus: 23021A1C
;;   Called from:
;;     23028B22 (in bl_irq_bottomhalf)
;;     23028B48 (in bl_irq_bottomhalf)
;;     23028B64 (in bl_irq_bottomhalf)
ipc_host_get_rawstatus proc
	c.lw	a0,32(a0)
	jal	zero,0000000023021948

;; ipc_host_txdesc_get: 23021A22
;;   Called from:
;;     23023ADA (in bl_tx_push)
;;     23023B72 (in bl_tx_resend)
;;     23023BCA (in bl_tx_try_flush)
ipc_host_txdesc_get proc
	c.lw	a0,68(a4)
	c.lw	a0,64(a5)
	bgeu	a5,a4,0000000023021A38

l23021A2A:
	lui	a3,0004200F
	addi	a3,a3,+00000334
	c.lw	a3,0(a2)
	c.addi	a2,00000001
	c.sw	a3,0(a2)

l23021A38:
	addi	a3,a4,+00000004
	beq	a3,a5,0000000023021A5C

l23021A40:
	sub	a4,a5,a4
	c.li	a3,00000004
	c.lw	a0,92(a0)
	bltu	a3,a4,0000000023021A5A

l23021A4C:
	addi	a4,zero,+00000330
	c.andi	a5,00000003
	add	a5,a5,a4
	c.add	a0,a5
	c.jr	ra

l23021A5A:
	c.j	0000000023021A5A

l23021A5C:
	c.li	a0,00000000
	c.jr	ra

;; ipc_host_txdesc_push: 23021A60
;;   Called from:
;;     23023B14 (in bl_tx_push)
ipc_host_txdesc_push proc
	c.lw	a0,64(a5)
	addi	a4,zero,+00000330
	c.andi	a5,00000003
	add	a3,a5,a4
	c.lw	a0,92(a4)
	c.slli	a5,02
	c.add	a4,a3
	c.li	a3,FFFFFFFF
	c.sw	a4,0(a3)
	c.lw	a0,88(a4)
	c.add	a5,a4
	c.sw	a5,0(a1)
	c.lw	a0,64(a5)
	addi	a4,zero,+00000100
	c.addi	a5,00000001
	c.sw	a0,64(a5)
	lui	a5,00044800
	c.sw	a5,0(a4)
	c.jr	ra

;; ipc_host_irq: 23021A8E
;;   Called from:
;;     23028B5E (in bl_irq_bottomhalf)
ipc_host_irq proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	a5,00044800
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.sw	a5,8(a1)
	c.lw	a5,28(s1)
	c.mv	s0,a0
	c.or	s1,a1
	andi	a5,s1,+00000780
	c.beqz	a5,0000000023021B04

l23021AB2:
	lui	s3,000230B1
	addi	s3,s3,-00000244
	c.li	s4,00000007
	c.li	s6,00000001
	c.li	s5,0000000B

l23021AC0:
	sll	a5,s6,s4
	c.and	a5,s1
	c.beqz	a5,0000000023021AFC

l23021AC8:
	lw	a5,s3,+00000000
	lw	s2,s0,+00000044
	and	s2,s2,a5
	c.lw	s0,88(a5)
	c.slli	s2,02
	c.add	a5,s2
	c.lw	a5,0(a1)
	c.beqz	a1,0000000023021AFC

l23021ADE:
	c.lw	s0,0(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5
	c.bnez	a0,0000000023021AFC

l23021AE8:
	c.lw	s0,88(a5)
	c.add	s2,a5
	sw	zero,s2,+00000000
	c.lw	s0,68(a5)
	c.addi	a5,00000001
	c.sw	s0,68(a5)
	jal	ra,0000000023023C7C
	c.j	0000000023021AC8

l23021AFC:
	c.addi	s4,00000001
	c.addi	s3,00000004
	bne	s4,s5,0000000023021AC0

l23021B04:
	jal	ra,0000000023023B32
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023021B28

l23021B0E:
	lbu	a5,s0,+000000AC
	lw	a1,s0,+000000B0
	lw	a0,s0,+000000E0
	c.addi	a5,00000001
	sb	a5,s0,+000000AC
	c.lw	s0,16(a5)
	sw	zero,s0,+000000B0
	c.jalr	a5

l23021B28:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023021B44

l23021B2E:
	lbu	a5,s0,+000000D4
	c.lw	s0,20(a4)
	lw	a0,s0,+000000E0
	c.addi	a5,00000016
	c.slli	a5,03
	c.add	a5,s0
	c.lw	a5,4(a1)
	c.jalr	a4
	c.beqz	a0,0000000023021B2E

l23021B44:
	andi	a5,s1,+00000010
	c.beqz	a5,0000000023021B52

l23021B4A:
	c.lw	s0,24(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5

l23021B52:
	andi	s1,s1,+00000020
	c.beqz	s1,0000000023021B74

l23021B58:
	lw	t1,s0,+0000001C
	lw	a0,s0,+000000E0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	t1

l23021B74:
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

;; ipc_host_enable_irq: 23021B88
;;   Called from:
;;     23022152 (in bl_main_rtthread_start)
;;     23028B42 (in bl_irq_bottomhalf)
ipc_host_enable_irq proc
	lui	a5,00044800
	c.sw	a5,12(a1)
	c.jr	ra

;; ipc_host_disable_irq_e2a: 23021B90
;;   Called from:
;;     230071AE (in bl_irq_handler)
ipc_host_disable_irq_e2a proc
	lui	a5,00044800
	addi	a4,zero,+000007FF
	c.sw	a5,16(a4)
	c.jr	ra

;; bl_main_disconnect: 23021B9C
;;   Called from:
;;     23024934 (in stateConnectedIPNoGuard_disconnect)
;;     23025100 (in stateGlobalGuard_fw_disconnect)
bl_main_disconnect proc
	lui	a0,00042023
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000034
	addi	a0,a0,+000000A0
	c.swsp	ra,00000084
	jal	ra,0000000023022D7E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_powersaving: 23021BB8
;;   Called from:
;;     23024C90 (in stateGlobalGuard_fw_powersaving)
bl_main_powersaving proc
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023022DD4

;; bl_main_denoise: 23021BC6
;;   Called from:
;;     2302515C (in stateConnectedIPYes_exit)
;;     230251C2 (in stateGlobalGuard_denoise)
;;     230251E2 (in stateGlobalGuard_denoise)
bl_main_denoise proc
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023022E16

;; bl_main_monitor: 23021BD4
;;   Called from:
;;     23024620 (in stateIdleGuard_sniffer)
bl_main_monitor proc
	c.addi16sp	FFFFFFC0
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,00000000230A3A68
	lui	a0,00042023
	c.addi4spn	a1,00000008
	addi	a0,a0,+000000A0
	jal	ra,0000000023022614
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_phy_up: 23021BFA
;;   Called from:
;;     2302525A (in stateIfaceDownGuard_phyup)
bl_main_phy_up proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042023
	addi	a0,s0,+000000A0
	c.swsp	ra,00000084
	jal	ra,00000000230228F6
	c.bnez	a0,0000000023021C2A

l23021C0E:
	c.lui	a5,00001000
	addi	s0,s0,+000000A0
	c.add	s0,a5
	lw	a5,s0,-00000220
	ori	a5,a5,+00000004
	sw	a5,s0,+00000DE0

l23021C22:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23021C2A:
	c.li	a0,FFFFFFFF
	c.j	0000000023021C22

;; bl_main_monitor_channel_set: 23021C2E
;;   Called from:
;;     23024602 (in stateSnifferGuard_ChannelSet)
bl_main_monitor_channel_set proc
	c.addi16sp	FFFFFFC0
	c.mv	a2,a0
	lui	a0,00042023
	c.mv	a3,a1
	addi	a0,a0,+000000A0
	c.addi4spn	a1,00000008
	c.swsp	ra,0000009C
	jal	ra,0000000023022650
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_if_remove: 23021C4C
;;   Called from:
;;     23024696 (in stateDisconnect_action_idle)
;;     23025334 (in stateGlobalGuard_stop)
;;     23025410 (in stateGlobalGuard_disable_autoreconnect)
bl_main_if_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,000230B1
	addi	a0,a0,-00000070
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,00042023
	c.mv	a1,s0
	addi	a0,a0,+000000A0
	jal	ra,00000000230229FC
	lui	a0,000230B1
	addi	a0,a0,-00000038
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_raw_send: 23021C86
;;   Called from:
;;     230252D0 (in stateSnifferGuard_raw_send)
bl_main_raw_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023022AEC

;; bl_main_rate_config: 23021C96
;;   Called from:
;;     2302498E (in stateConnectedIPYesGuard_rcconfig)
bl_main_rate_config proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,00000000230228A8

;; bl_main_set_country_code: 23021CA6
;;   Called from:
;;     23025B6A (in wifi_mgmr_set_country_code_internal)
bl_main_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023022544
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	ra,00000000230227D6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_get_channel_nums: 23021CC2
;;   Called from:
;;     23025B8A (in wifi_mgmr_set_country_code_internal)
bl_main_get_channel_nums proc
	jal	zero,00000000230225D8

;; bl_main_if_add: 23021CC6
;;   Called from:
;;     23024D14 (in stateGlobalGuard_AP)
;;     2302520C (in stateIdleGuard_connect)
bl_main_if_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.bnez	a0,0000000023021D48

l23021CDC:
	lui	a1,000230B1
	addi	a1,a1,-000000F8

l23021CE4:
	lui	a0,000230B1
	addi	a0,a0,-000000F4
	jal	ra,0000000023082388
	sltiu	a2,s3,+00000001
	lui	s0,00042023
	c.addi4spn	a4,0000000C
	c.li	a3,00000000
	c.addi	a2,00000002
	addi	a1,s2,+0000003A
	addi	a0,s0,+000000A0
	jal	ra,0000000023022964
	c.mv	s1,a0
	lui	a0,000230B1
	addi	a0,a0,-000000D0
	jal	ra,0000000023082388
	c.bnez	s1,0000000023021D36

l23021D1A:
	lbu	a2,sp,+0000000C
	c.beqz	a2,0000000023021D52

l23021D20:
	lui	a1,000230B1
	lui	a0,000230B1
	addi	a1,a1,-000000B4
	addi	a0,a0,-000000AC
	jal	ra,0000000023082388
	c.li	s1,FFFFFFFB

l23021D36:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23021D48:
	lui	a1,000230B1
	addi	a1,a1,-000000FC
	c.j	0000000023021CE4

l23021D52:
	lui	a5,00042024
	lbu	a1,sp,+0000000D
	addi	s0,s0,+000000A0
	addi	a5,a5,+000000A0
	beq	s3,zero,0000000023021D94

l23021D66:
	sw	a1,a5,+00000E1C

l23021D6A:
	lui	a0,000230B1
	sb	a1,s4,+00000000
	addi	a0,a0,-00000094
	jal	ra,0000000023082388
	lbu	a5,sp,+0000000D
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	c.add	s0,a5
	c.li	a5,00000001
	sw	s2,s0,+00000368
	sb	a5,s0,+000003CF
	c.j	0000000023021D36

l23021D94:
	sw	a1,a5,+00000E20
	c.j	0000000023021D6A

;; bl_main_apm_start: 23021D9A
;;   Called from:
;;     23024DDE (in stateGlobalGuard_AP)
bl_main_apm_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.li	a1,00000000
	c.li	a2,00000004
	c.addi4spn	a0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a4,00000084
	c.mv	s0,a3
	jal	ra,00000000230A3A68
	lui	a0,000230B1
	c.mv	a1,s0
	addi	a0,a0,-000001F4
	jal	ra,0000000023082388
	c.lwsp	a2,000000C4
	c.mv	a5,s0
	lui	s0,00042023
	c.mv	a6,a4
	c.mv	a3,s2
	c.mv	a4,s3
	c.mv	a2,s1
	c.addi4spn	a1,0000001C
	addi	a0,s0,+000000A0
	jal	ra,0000000023022E58
	c.mv	s1,a0
	lui	a0,000230B1
	addi	a0,a0,-000001C4
	jal	ra,0000000023082388
	lbu	a1,sp,+0000001C
	lui	a0,000230B1
	addi	a0,a0,-000001A8
	jal	ra,0000000023082388
	lbu	a1,sp,+0000001D
	lui	a0,000230B1
	addi	a0,a0,-00000190
	jal	ra,0000000023082388
	lbu	a1,sp,+0000001E
	lui	a0,000230B1
	addi	a0,a0,-00000178
	jal	ra,0000000023082388
	lbu	a1,sp,+0000001F
	lui	a0,000230B1
	addi	a0,a0,-00000160
	jal	ra,0000000023082388
	c.lui	a5,00001000
	addi	s0,s0,+000000A0
	c.add	s0,a5
	lbu	a5,sp,+0000001F
	c.mv	a0,s1
	sw	a5,s0,+00000E28
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_apm_stop: 23021E50
;;   Called from:
;;     23025310 (in stateGlobalGuard_stop)
bl_main_apm_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,000230B1
	addi	a0,a0,-00000148
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,00042023
	c.mv	a1,s0
	addi	a0,a0,+000000A0
	jal	ra,0000000023022F98
	c.mv	s0,a0
	lui	a0,000230B1
	addi	a0,a0,-00000118
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_apm_sta_cnt_get: 23021E8C
;;   Called from:
;;     23025BA0 (in wifi_mgmr_ap_sta_cnt_get_internal)
bl_main_apm_sta_cnt_get proc
	c.li	a5,0000000C
	sb	a5,a0,+00000000
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_info_get: 23021E96
;;   Called from:
;;     23025BC6 (in wifi_mgmr_ap_sta_info_get_internal)
bl_main_apm_sta_info_get proc
	c.li	a5,0000001C
	add	a1,a1,a5
	lui	a4,00042023
	addi	a4,a4,+000000A0
	c.lui	a3,00001000
	add	a5,a4,a1
	c.add	a5,a3
	lbu	a2,a5,-00000368
	c.beqz	a2,0000000023021EFE

l23021EB2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a5,-00000367
	addi	a3,a3,-00000370
	c.add	a1,a3
	sb	a2,a0,+00000000
	lbu	a2,a5,-00000368
	c.add	a1,a4
	c.addi	a0,00000002
	sb	a2,a0,+00000FFF
	lb	a2,a5,-00000364
	sw	a2,a0,+0000000E
	lw	a2,a5,-00000360
	sw	a2,a0,+0000000A
	lw	a2,a5,-0000035C
	sw	a2,a0,+00000006
	lbu	a5,a5,-00000358
	c.li	a2,00000006
	sb	a5,a0,+00000012
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23021EFE:
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_delete: 23021F02
;;   Called from:
;;     23021FA8 (in bl_main_apm_remove_all_sta)
;;     23025C04 (in wifi_mgmr_ap_sta_delete_internal)
bl_main_apm_sta_delete proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.li	s2,0000001C
	c.swsp	s3,00000094
	add	s3,a0,s2
	c.swsp	s1,00000098
	c.lui	s1,00001000
	c.swsp	s0,0000001C
	c.swsp	s5,00000090
	addi	s0,s1,-00000370
	lui	s5,00042023
	addi	s2,s5,+000000A0
	c.swsp	s4,00000014
	c.li	a2,00000003
	c.add	s0,s3
	c.mv	s4,a0
	c.li	a1,00000000
	c.add	s0,s2
	c.addi4spn	a0,0000001C
	c.add	s2,s3
	c.swsp	ra,0000009C
	c.add	s1,s2
	jal	ra,00000000230A3A68
	lbu	a3,s1,-00000366
	lui	a0,000230B1
	c.mv	a1,s4
	c.mv	a2,a3
	addi	a0,a0,-00000228
	c.swsp	a3,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,000000A4
	c.mv	a2,s4
	c.addi4spn	a1,0000001C
	addi	a0,s5,+000000A0
	jal	ra,0000000023022FE2
	lbu	a5,sp,+0000001C
	c.li	a0,FFFFFFFF
	c.bnez	a5,0000000023021F72

l23021F66:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.li	a0,00000000

l23021F72:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_apm_remove_all_sta: 23021F84
;;   Called from:
;;     23025320 (in stateGlobalGuard_stop)
bl_main_apm_remove_all_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042024
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	addi	s1,s1,-000002C8
	c.li	s0,00000000
	c.li	s3,00000001
	c.li	s2,0000000C

l23021F9E:
	lbu	a5,s1,+00000000
	bne	a5,s3,0000000023021FAC

l23021FA6:
	c.mv	a0,s0
	jal	ra,0000000023021F02

l23021FAC:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	s1,0000001C
	bne	s0,s2,0000000023021F9E

l23021FB8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_conf_max_sta: 23021FC8
;;   Called from:
;;     23024CDC (in stateGlobalGuard_conf_max_sta)
bl_main_conf_max_sta proc
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023023036

;; bl_main_cfg_task_req: 23021FD6
;;   Called from:
;;     23024C2A (in stateGlobal_cfg_req)
bl_main_cfg_task_req proc
	c.mv	a6,a5
	c.mv	a5,a4
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023023080

;; bl_main_scan: 23021FEE
;;   Called from:
;;     230254FA (in stateDisconnect_enter)
;;     230255D6 (in stateGlobalGuard_fw_scan)
;;     23025708 (in stateConnectedIPYes_enter)
bl_main_scan proc
	lui	a0,00042023
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000000A0
	c.swsp	ra,00000084
	jal	ra,0000000023022A3A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_cfg80211_connect: 23022006
;;   Called from:
;;     230220A6 (in bl_main_connect)
bl_cfg80211_connect proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023022B38
	c.bnez	a0,000000002302202C

l23022012:
	lbu	a4,sp,+0000000C
	c.li	a5,00000009
	c.li	a0,FFFFFFFB
	bltu	a5,a4,000000002302202C

l2302201E:
	lui	a5,000230B1
	addi	a5,a5,-00000234
	c.add	a5,a4
	lb	a0,a5,+00000000

l2302202C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_connect: 23022032
;;   Called from:
;;     230247F6 (in stateDisconnect_action_reconnect)
;;     23024B6C (in stateIdleAction_connect)
bl_main_connect proc
	c.addi16sp	FFFFFED0
	sw	s1,sp,+00000124
	sw	s2,sp,+00000120
	sw	s3,sp,+0000011C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+000000F0
	c.addi4spn	a0,00000020
	sw	s0,sp,+00000128
	c.swsp	a3,0000008C
	c.swsp	a4,0000000C
	c.swsp	a5,00000088
	c.swsp	a6,00000008
	c.swsp	a7,00000084
	sw	ra,sp,+0000012C
	lhu	s0,sp,+00000130
	jal	ra,00000000230A3A68
	c.lwsp	t3,000000A4
	c.lwsp	s8,000000C4
	c.lwsp	s4,000000E4
	c.lwsp	a6,00000008
	c.li	a2,00000008
	c.swsp	zero,00000040
	c.swsp	s3,000000B0
	c.swsp	s2,00000030
	sb	a2,sp,+00000068
	c.swsp	s1,000000D8
	sb	a3,sp,+000000BC
	c.swsp	a4,0000005C
	sb	a5,sp,+000000BD
	c.lwsp	a2,00000028
	beq	a6,zero,0000000023022090

l2302208E:
	c.swsp	a6,0000002C

l23022090:
	c.beqz	s0,000000002302209C

l23022092:
	sh	s0,sp,+00000022
	sb	a7,sp,+00000020
	c.swsp	zero,00000014

l2302209C:
	lui	a0,00042023
	c.addi4spn	a1,00000020
	addi	a0,a0,+000000A0
	jal	ra,0000000023022006
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	lw	s2,sp,+00000120
	lw	s3,sp,+0000011C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; bl_main_event_handle: 230220C4
;;   Called from:
;;     2301471A (in bl_event_handle)
bl_main_event_handle proc
	lui	a0,00042023
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000000A0
	c.swsp	ra,00000084
	jal	ra,0000000023028B10
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023023BAC

;; bl_main_lowlevel_init: 230220DC
;;   Called from:
;;     230220F4 (in bl_main_rtthread_start)
bl_main_lowlevel_init proc
	lui	a0,00042023
	addi	a0,a0,+000000A0
	jal	zero,0000000023028B0C

;; bl_main_rtthread_start: 230220E8
;;   Called from:
;;     23028E3C (in bl606a0_wifi_init)
bl_main_rtthread_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230220DC
	c.lwsp	a2,00000044
	lui	s1,00042023
	addi	s2,s1,+000000A0
	lui	a5,00042023
	sw	s2,a0,+00000000
	addi	a5,a5,+000003F8
	sw	a5,s2,+00000358
	sw	a5,s2,+0000035C
	c.lui	s0,00001000
	lui	a5,0004200D
	c.add	s0,s2
	addi	a5,a5,+0000006C
	addi	a0,s1,+000000A0
	sw	a5,s0,+00000DFC
	jal	ra,000000002302315A
	c.beqz	a0,000000002302214A

l23022130:
	lui	a0,000230B1
	addi	a0,a0,-00000018

l23022138:
	jal	ra,0000000023082388

l2302213C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302214A:
	lw	a0,s2,+00000034
	addi	a1,zero,+000007FF
	jal	ra,0000000023021B88
	jal	ra,00000000230661A0
	addi	a0,s1,+000000A0
	c.jal	00000000230225E2
	c.beqz	a0,000000002302216C

l23022162:
	lui	a0,000230B1
	addi	a0,a0,+00000000
	c.j	0000000023022138

l2302216C:
	c.li	a0,00000005
	jal	ra,0000000023062CC4
	lui	a1,00042024
	addi	a1,a1,-0000017C
	addi	a0,s1,+000000A0
	c.jal	00000000230226DE
	c.bnez	a0,000000002302213C

l23022182:
	lw	a1,s0,-0000021C
	lui	a0,000230B1
	addi	a0,a0,+00000018
	srli	a3,a1,00000008
	srli	a2,a1,00000010
	andi	a4,a1,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	c.srli	a1,00000018
	jal	ra,0000000023082388
	lw	a1,s0,-00000218
	lui	a0,000230B1
	addi	a0,a0,+00000038
	jal	ra,0000000023082388
	lw	a1,s0,-00000214
	lui	a0,000230B1
	addi	a0,a0,+0000005C
	jal	ra,0000000023082388
	lw	a1,s0,-00000210
	lui	a0,000230B1
	addi	a0,a0,+00000080
	jal	ra,0000000023082388
	lw	a1,s0,-0000020C
	lui	a0,000230B1
	addi	a0,a0,+000000A0
	jal	ra,0000000023082388
	lw	a1,s0,-00000208
	lui	a0,000230B1
	addi	a0,a0,+000000C0
	jal	ra,0000000023082388
	addi	a0,s1,+000000A0
	c.jal	000000002302221E
	c.beqz	a0,000000002302220A

l23022200:
	lui	a0,000230B1
	addi	a0,a0,+000000DC
	c.j	0000000023022138

l2302220A:
	addi	a0,s1,+000000A0
	c.jal	0000000023022712
	addi	a0,s1,+000000A0
	c.jal	00000000230227D6
	c.li	a5,00000001
	sb	a5,s0,+00000E6C
	c.j	000000002302213C

;; bl_handle_dynparams: 2302221E
;;   Called from:
;;     230221FC (in bl_main_rtthread_start)
bl_handle_dynparams proc
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	lui	a4,00000040
	c.or	a4,a3
	sw	a4,a5,+00000E00
	lw	a4,a5,-00000204
	lbu	a2,a4,+00000048
	c.beqz	a2,0000000023022244

l2302223A:
	lui	a2,00000058
	c.or	a3,a2
	sw	a3,a5,+00000E00

l23022244:
	lbu	a5,a4,+00000014
	c.beqz	a5,000000002302225A

l2302224A:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	c.lui	a2,00004000
	c.or	a3,a2
	sw	a3,a5,+00000E00

l2302225A:
	c.lw	a4,12(a3)
	c.li	a5,00000005
	bgeu	a5,a3,0000000023022266

l23022262:
	c.li	a5,00000002
	c.sw	a4,12(a5)

l23022266:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a5,a5,-00000204
	c.li	a4,00000002
	c.lw	a5,4(a3)
	bgeu	a4,a3,000000002302227A

l23022276:
	sw	zero,a5,+00000004

l2302227A:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a3,a4,-000001FC
	lw	a5,a4,-00000204
	ori	a2,a3,+00000100
	c.lw	a5,28(a1)
	sh	a2,a4,+00000E04
	lbu	a2,a5,+00000008
	c.beqz	a2,000000002302229E

l23022296:
	ori	a3,a3,+00000101
	sh	a3,a4,+00000E04

l2302229E:
	lbu	a4,a5,+00000017
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.beqz	a4,0000000023022352

l230222AA:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	c.li	a6,00000001
	sb	a6,a4,+00000E0E
	ori	a2,a2,+00000002
	sh	a2,a4,+00000E04
	addi	a2,zero,+00000087
	add	a2,a3,a2
	sh	a2,a4,+00000E14

l230222CC:
	c.li	a4,00000001
	bge	a4,a1,00000000230222E2

l230222D2:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a2,a2,+00000080
	sh	a2,a4,+00000E04

l230222E2:
	lbu	a4,a5,+00000015
	c.beqz	a4,0000000023022312

l230222E8:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a1,a2,+00000020
	sh	a1,a4,+00000E04
	lbu	a1,a5,+00000017
	c.beqz	a1,000000002302236A

l230222FE:
	ori	a2,a2,+00000060
	sh	a2,a4,+00000E04
	addi	a2,zero,+00000096

l2302230A:
	add	a3,a3,a2
	sh	a3,a4,+00000E14

l23022312:
	c.lui	a4,00001000
	c.add	a0,a4
	lhu	a4,a0,-000001FC
	ori	a4,a4,+0000000C
	sh	a4,a0,+00000E04
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002302232C

l23022328:
	sb	zero,a0,+00000E06

l2302232C:
	lbu	a5,a5,+00000019
	c.beqz	a5,0000000023022370

l23022332:
	lui	a1,000230B1
	lui	a0,000230B1
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000000F8
	addi	a0,a0,+0000010C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23022352:
	addi	a2,zero,+00000041
	add	a2,a3,a2
	c.lui	a4,00001000
	c.add	a4,a0
	sh	a2,a4,+00000E14
	c.li	a2,FFFFFFFF
	sb	a2,a4,+00000E0A
	c.j	00000000230222CC

l2302236A:
	addi	a2,zero,+00000048
	c.j	000000002302230A

l23022370:
	c.li	a0,00000000
	c.jr	ra

;; bl_send_msg: 23022374
;;   Called from:
;;     23022606 (in bl_send_reset)
;;     23022642 (in bl_send_monitor_enable)
;;     230226C8 (in bl_send_monitor_channel_set)
;;     23022704 (in bl_send_version_req)
;;     230227B6 (in bl_send_me_config_req)
;;     23022896 (in bl_send_me_chan_config_req)
;;     230228E4 (in bl_send_me_rate_config_req)
;;     23022952 (in bl_send_start)
;;     230229D6 (in bl_send_add_if)
;;     23022A2A (in bl_send_remove_if)
;;     23022AB4 (in bl_send_scanu_req)
;;     23022B22 (in bl_send_scanu_raw_send)
;;     23022D7A (in bl_send_sm_connect_req)
;;     23022DC2 (in bl_send_sm_disconnect_req)
;;     23022E06 (in bl_send_mm_powersaving_req)
;;     23022E48 (in bl_send_mm_denoise_req)
;;     23022F72 (in bl_send_apm_start_req)
;;     23022FD0 (in bl_send_apm_stop_req)
;;     23023024 (in bl_send_apm_sta_del_req)
;;     2302306E (in bl_send_apm_conf_max_sta_req)
;;     230230D2 (in bl_send_cfg_task_req)
bl_send_msg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a4
	c.lui	a4,00001000
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	add	a5,a0,a4
	lw	a5,a5,-00000220
	c.mv	s6,a0
	c.mv	s7,a1
	c.srli	a5,00000002
	c.andi	a5,00000001
	c.mv	s3,a2
	c.mv	s1,a3
	addi	s2,a1,-00000008
	c.bnez	a5,0000000023022408

l230223A6:
	andi	a5,a3,-00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a3,00000001
	beq	a5,a3,0000000023022408

l230223B4:
	c.li	a3,00000005
	beq	s1,a3,0000000023022408

l230223BA:
	addi	a3,zero,+00000023
	beq	s1,a3,0000000023022408

l230223C2:
	addi	a4,a4,+00000401
	beq	a5,a4,0000000023022408

l230223CA:
	addi	a5,zero,+00000032
	beq	s1,a5,0000000023022408

l230223D2:
	lui	a1,000230B1
	lui	a0,000230B2
	c.mv	a2,s1
	addi	a1,a1,+00000188
	addi	a0,a0,-00000310
	jal	ra,0000000023082388

l230223E8:
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.li	s1,FFFFFFF0

l230223F0:
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

l23022408:
	lw	a5,s6,+00000034
	c.bnez	a5,0000000023022424

l2302240E:
	lui	a1,000230B1
	lui	a0,000230B2
	addi	a1,a1,+00000188
	addi	a0,a0,-000002E0
	jal	ra,0000000023082388
	c.j	00000000230223E8

l23022424:
	lhu	a2,s7,-00000008
	addi	a5,zero,+00000041
	c.li	s5,00000001
	beq	a2,a5,0000000023022458

l23022432:
	addi	a5,zero,+00000050
	beq	a2,a5,0000000023022458

l2302243A:
	c.lui	a5,FFFFF000
	addi	a5,a5,-0000040C
	c.add	a5,a2
	c.andi	a5,FFFFFFFB
	c.slli	a5,10
	c.srli	a5,00000010
	c.beqz	a5,0000000023022458

l2302244A:
	c.lui	a5,FFFFE000
	c.andi	a2,FFFFFFFB
	addi	a5,a5,-00000408
	c.add	a2,a5
	sltiu	s5,a2,+00000001

l23022458:
	addi	a0,zero,+00000040
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.bnez	a0,0000000023022486

l23022464:
	c.mv	a0,s2
	jal	ra,0000000023064972
	lui	a1,000230B1
	lui	a0,000230B2
	addi	a2,zero,+00000040
	addi	a1,a1,+00000188
	addi	a0,a0,-000002B4
	jal	ra,0000000023082388
	c.li	s1,FFFFFFF4
	c.j	00000000230223F0

l23022486:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s7,-00000008
	sh	s1,s0,+0000000A
	sw	s2,s0,+0000000C
	sh	a5,s0,+00000008
	sw	s4,s0,+00000010
	beq	s5,zero,00000000230224B2

l230224AC:
	c.li	a5,00000001
	sh	a5,s0,+00000018

l230224B2:
	beq	s3,zero,00000000230224C2

l230224B6:
	lhu	a5,s0,+00000018
	ori	a5,a5,+00000002
	sh	a5,s0,+00000018

l230224C2:
	lw	a5,s6,+00000020
	c.mv	a1,s0
	addi	a0,s6,+00000004
	c.jalr	a5
	c.mv	s1,a0
	bne	s5,zero,00000000230224DC

l230224D4:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.j	00000000230223F0

l230224DC:
	c.lw	s0,60(s1)
	c.j	00000000230223F0

;; bl_msg_zalloc.constprop.3: 230224E0
;;   Called from:
;;     230225F0 (in bl_send_reset)
;;     23022626 (in bl_send_monitor_enable)
;;     23022668 (in bl_send_monitor_channel_set)
;;     230226EE (in bl_send_version_req)
;;     2302272A (in bl_send_me_config_req)
;;     230227EA (in bl_send_me_chan_config_req)
;;     230228C2 (in bl_send_me_rate_config_req)
;;     2302290A (in bl_send_start)
;;     2302297E (in bl_send_add_if)
;;     23022A0E (in bl_send_remove_if)
;;     23022A4A (in bl_send_scanu_req)
;;     23022B08 (in bl_send_scanu_raw_send)
;;     23022B58 (in bl_send_sm_connect_req)
;;     23022D96 (in bl_send_sm_disconnect_req)
;;     23022DE8 (in bl_send_mm_powersaving_req)
;;     23022E2A (in bl_send_mm_denoise_req)
;;     23022E90 (in bl_send_apm_start_req)
;;     23022FB0 (in bl_send_apm_stop_req)
;;     23022FFE (in bl_send_apm_sta_del_req)
;;     2302304E (in bl_send_apm_conf_max_sta_req)
;;     230230A2 (in bl_send_cfg_task_req)
bl_msg_zalloc.constprop.3 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a2
	c.addi	a2,00000008
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.mv	s2,a1
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023022526

l23022502:
	lui	a1,000230B1
	lui	a0,000230B2
	addi	a1,a1,+00000178
	addi	a0,a0,-0000038C
	jal	ra,0000000023082388

l23022516:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23022526:
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000064
	sh	s3,s0,+00000000
	sh	s2,s0,+00000002
	sh	a5,s0,+00000004
	sh	s1,s0,+00000006
	c.addi	s0,00000008
	c.j	0000000023022516

;; bl_msg_update_channel_cfg: 23022544
;;   Called from:
;;     23021CAA (in bl_main_set_country_code)
;;     23028E14 (in bl606a0_wifi_init)
bl_msg_update_channel_cfg proc
	c.addi	sp,FFFFFFE0
	lui	a5,000230B2
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s3,a5,-00000280
	c.li	s1,00000000
	addi	s0,a5,-00000280
	c.li	s4,00000004

l23022564:
	lw	a0,s3,+00000000
	c.mv	a1,s2
	jal	ra,00000000230A3FF4
	c.bnez	a0,00000000230225A8

l23022570:
	c.li	a5,0000000C
	add	a5,s1,a5
	lui	a4,0004200F
	lui	a0,000230B2
	c.mv	a1,s2
	addi	a0,a0,-000003F8
	c.add	a5,s0
	c.lw	a5,4(a2)
	sw	a2,a4,+00000338
	c.lw	a5,8(a4)
	lui	a5,0004200F
	sw	a4,a5,+0000033C

l23022596:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023082388

l230225A8:
	c.addi	s1,00000001
	c.addi	s3,0000000C
	bne	s1,s4,0000000023022564

l230225B0:
	lui	a5,0004200F
	c.li	a4,0000000E
	sw	a4,a5,+00000338
	lui	a5,000230B1
	lui	a4,0004200F
	addi	a5,a5,+000006F4
	lui	a0,000230B2
	sw	a5,a4,+0000033C
	c.li	a2,0000000E
	c.mv	a1,s2
	addi	a0,a0,-000003C8
	c.j	0000000023022596

;; bl_msg_get_channel_nums: 230225D8
;;   Called from:
;;     23021CC2 (in bl_main_get_channel_nums)
bl_msg_get_channel_nums proc
	lui	a5,0004200F
	lw	a0,a5,+00000338
	c.jr	ra

;; bl_send_reset: 230225E2
;;   Called from:
;;     2302215E (in bl_main_rtthread_start)
bl_send_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000000
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,000000002302260A

l230225F6:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l2302260A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_monitor_enable: 23022614
;;   Called from:
;;     23021BEE (in bl_main_monitor)
bl_send_monitor_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,zero,+0000005C
	c.swsp	ra,0000008C
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022646

l2302262C:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	addi	a3,zero,+0000005D
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022374

l23022646:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_monitor_channel_set: 23022650
;;   Called from:
;;     23021C40 (in bl_main_monitor_channel_set)
bl_send_monitor_channel_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	c.mv	s0,a2
	c.li	a1,00000000
	c.li	a2,0000000C
	addi	a0,zero,+0000005E
	c.swsp	ra,0000008C
	c.swsp	a3,00000004
	jal	ra,00000000230224E0
	c.beqz	a0,00000000230226D2

l2302266E:
	addi	a5,s0,-00000001
	c.li	a2,0000000D
	c.mv	a1,a0
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	bltu	a2,a5,00000000230226A8

l2302267E:
	c.li	a5,0000000E
	beq	s0,a5,00000000230226AE

l23022684:
	c.li	a5,00000005
	add	s0,s0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010

l23022696:
	c.sw	a1,0(s0)
	c.beqz	a3,00000000230226CC

l2302269A:
	c.li	a5,00000001
	c.sw	a1,4(a5)
	bne	a3,a5,00000000230226B6

l230226A2:
	sw	zero,a1,+00000008
	c.j	00000000230226B8

l230226A8:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF
	c.j	0000000023022696

l230226AE:
	c.lui	s0,00001000
	addi	s0,s0,-0000064C
	c.j	0000000023022696

l230226B6:
	c.sw	a1,8(a5)

l230226B8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	addi	a3,zero,+0000005F
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022374

l230226CC:
	sw	zero,a1,+00000004
	c.j	00000000230226A2

l230226D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_version_req: 230226DE
;;   Called from:
;;     2302217E (in bl_main_rtthread_start)
bl_send_version_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,0000008C
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022708

l230226F4:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	c.li	a3,00000005
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022374

l23022708:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_me_config_req: 23022712
;;   Called from:
;;     2302220E (in bl_main_rtthread_start)
bl_send_me_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s2,00000000
	addi	a2,zero,+00000034
	c.mv	s2,a0
	c.li	a1,00000005
	addi	a0,s1,+00000400
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230224E0
	c.beqz	a0,00000000230227C8

l23022730:
	c.mv	s0,a0
	lui	a0,000230B2
	c.li	a2,00000000
	c.li	a1,00000001
	addi	a0,a0,-00000330
	jal	ra,0000000023082388
	c.li	a5,00000001
	add	a4,s2,s1
	sh	a5,s0,+0000002E
	lhu	a5,a4,-000001FC
	sh	a5,s0,+00000000
	lbu	a5,a4,-000001F8
	lbu	a4,a4,-000001F9
	c.slli	a5,02
	c.or	a5,a4
	sb	a5,s0,+00000002
	addi	a5,s1,-000001F6
	addi	s1,s1,-000001E6
	c.add	a5,s2
	addi	a4,s0,+00000003
	c.add	s1,s2

l23022774:
	bne	a5,s1,00000000230227BA

l23022778:
	c.lui	a3,00001000
	sh	zero,s0,+00000014
	sw	zero,s0,+00000018
	sb	zero,s0,+0000001C
	add	a5,s2,a3
	lw	a4,a5,-00000204
	c.mv	a1,s0
	c.mv	a0,s2
	lbu	a4,a4,+00000038
	addi	a3,a3,+00000401
	c.li	a2,00000001
	sb	a4,s0,+00000030
	lw	a5,a5,-00000204
	c.li	a4,00000000
	c.lw	a5,60(a5)
	sh	a5,s0,+0000002C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023022374

l230227BA:
	lbu	a3,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a3,a4,+00000FFF
	c.j	0000000023022774

l230227C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_chan_config_req: 230227D6
;;   Called from:
;;     23021CB6 (in bl_main_set_country_code)
;;     23022214 (in bl_main_rtthread_start)
bl_send_me_chan_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	addi	a2,zero,+000000FE
	c.li	a1,00000005
	addi	a0,a0,+00000402
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,000000002302289E

l230227F0:
	c.mv	a1,a0
	sb	zero,a0,+000000FC
	c.li	a2,00000000
	lui	t1,0004200F
	c.li	t3,00000006
	addi	t4,zero,+00000034
	lui	a7,0004200F
	c.li	t5,00000002
	c.li	t6,0000000E

l2302280A:
	lw	a5,t1,+00000338
	bge	a2,a5,0000000023022880

l23022812:
	lbu	a4,a1,+000000FC
	add	a0,a2,t4
	addi	a6,a7,+0000033C
	add	a5,a4,t3
	c.add	a5,a1
	sb	zero,a5,+00000003
	lw	a3,a7,+0000033C
	c.add	a3,a0
	c.lw	a3,8(a3)
	c.andi	a3,00000001
	c.beqz	a3,0000000023022838

l23022834:
	sb	t5,a5,+00000003

l23022838:
	lw	a3,a6,+00000000
	lbu	t0,a5,+00000003
	c.add	a3,a0
	c.lw	a3,8(a3)
	sb	zero,a5,+00000002
	c.andi	a3,0000000A
	sltu	a3,zero,a3
	or	a3,a3,t0
	sb	a3,a5,+00000003
	lw	a3,a6,+00000000
	c.add	a3,a0
	lhu	a3,a3,+00000002
	sh	a3,a5,+00000000
	lw	a3,a6,+00000000
	c.add	a0,a3
	c.lw	a0,16(a3)
	sb	a3,a5,+00000004
	addi	a5,a4,+00000001
	andi	a5,a5,+000000FF
	sb	a5,a1,+000000FC
	bne	a5,t6,000000002302289A

l23022880:
	sb	zero,a1,+000000FD
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a3,00001000
	c.li	a4,00000000
	addi	a3,a3,+00000403
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l2302289A:
	c.addi	a2,00000001
	c.j	000000002302280A

l2302289E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_rate_config_req: 230228A8
;;   Called from:
;;     23021CA2 (in bl_main_rate_config)
bl_send_me_rate_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	c.li	a2,00000004
	c.li	a1,00000005
	addi	a0,a0,+00000410
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,00000000230228E8

l230228C8:
	sb	s2,a0,+00000000
	sh	s1,a0,+00000002
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023022374

l230228E8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_start: 230228F6
;;   Called from:
;;     23021C08 (in bl_main_phy_up)
bl_send_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a2,zero,+00000048
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022956

l23022910:
	c.lui	a1,00001000
	add	s2,s1,a1
	c.li	a5,00000001
	addi	a1,a1,-000001D4
	sw	a5,s2,+00000E2C
	c.add	a1,s1
	addi	a2,zero,+00000040
	c.mv	s0,a0
	jal	ra,00000000230A382C
	lw	a5,s2,-00000204
	c.mv	a1,s0
	c.mv	a0,s1
	c.lw	a5,16(a5)
	c.li	a4,00000000
	c.li	a3,00000003
	c.sw	s0,64(a5)
	lw	a5,s2,-00000204
	c.li	a2,00000001
	c.lw	a5,52(a5)
	sh	a5,s0,+00000044
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022956:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_add_if: 23022964
;;   Called from:
;;     23021D06 (in bl_main_if_add)
bl_send_add_if proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	c.li	a2,00000008
	c.li	a0,00000006
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a4,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,00000000230229E8

l23022984:
	c.li	a2,00000006
	c.mv	s0,a0
	c.mv	a1,s3
	c.addi	a0,00000001
	jal	ra,00000000230A382C
	addi	a2,s1,-00000001
	andi	a2,a2,+000000FF
	c.li	a5,00000008
	c.lwsp	a2,000000C4
	bltu	a5,a2,00000000230229B6

l230229A0:
	lui	a5,000230B1
	addi	a5,a5,+00000148
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5
230229B0 85 47 A3 03 F4 00                               .G....         

l230229B6:
	sb	zero,s0,+00000000
	c.j	00000000230229C2
230229BC                                     85 47 23 00             .G#.
230229C0 F4 00                                           ..             

l230229C2:
	c.mv	a1,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.li	a3,00000007
	c.li	a2,00000001
	c.addi16sp	00000030
	jal	zero,0000000023022374
230229DA                               85 47 A3 03 F4 00           .G....
230229E0 89 47 F1 BF 8D 47 E1 BF                         .G...G..       

l230229E8:
	c.li	a0,FFFFFFF4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
230229F8                         7D 55 C5 BF                     }U..   

;; bl_send_remove_if: 230229FC
;;   Called from:
;;     23021C6C (in bl_main_if_remove)
bl_send_remove_if proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022A2E

l23022A14:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a3,00000009
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022A2E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_req: 23022A3A
;;   Called from:
;;     23021FFA (in bl_main_scan)
bl_send_scanu_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a2,zero,+00000154
	c.mv	s0,a0
	c.li	a1,00000004
	c.lui	a0,00001000
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022AE2

l23022A50:
	c.lui	a5,00001000
	c.add	a5,s0
	lw	a5,a5,-000001E4
	c.mv	a1,a0
	sh	zero,a0,+0000014C
	sb	a5,a0,+0000014E
	lui	a5,0004200F
	lw	a4,a5,+00000338
	lui	a5,000230CC
	addi	a5,a5,-000006B8
	c.lw	a5,0(a3)
	lhu	a5,a5,+00000004
	sb	a4,a0,+0000014F
	sw	a3,a0,+00000140
	sh	a5,a0,+00000144
	addi	a5,zero,+00000100
	sh	a5,a0,+00000150
	sw	zero,a0,+00000148
	c.mv	a5,a0
	c.li	a2,00000000
	andi	a3,a4,+000000FF
	lui	a0,0004200F
	addi	a6,zero,+00000034
	c.li	a7,00000001

l23022AA2:
	blt	a2,a3,0000000023022AB8

l23022AA6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022AB8:
	add	t1,a2,a6
	lw	a4,a0,+0000033C
	c.addi	a2,00000001
	c.addi	a5,00000006
	c.add	a4,t1
	lbu	t1,a4,+00000000
	sb	t1,a5,+00000FFC
	lhu	t1,a4,+00000002
	sb	a7,a5,+00000FFD
	sh	t1,a5,+00000FFA
	c.lw	a4,20(a4)
	sb	a4,a5,+00000FFE
	c.j	0000000023022AA2

l23022AE2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_raw_send: 23022AEC
;;   Called from:
;;     23021C92 (in bl_main_raw_send)
bl_send_scanu_raw_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.lui	s0,00001000
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.li	a1,00000004
	c.li	a2,00000008
	addi	a0,s0,+00000005
	c.swsp	ra,00000094
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022B34

l23022B0E:
	c.mv	a1,a0
	sw	s3,a0,+00000000
	sw	s2,a0,+00000004
	c.addi4spn	a4,0000000C
	addi	a3,s0,+00000006
	c.li	a2,00000001
	c.mv	a0,s1
	jal	ra,0000000023022374

l23022B26:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23022B34:
	c.li	a0,FFFFFFF4
	c.j	0000000023022B26

;; bl_send_sm_connect_req: 23022B38
;;   Called from:
;;     2302200C (in bl_cfg80211_connect)
bl_send_sm_connect_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.lui	a0,00002000
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.mv	s4,a2
	c.li	a1,00000006
	addi	a2,zero,+000001C4
	addi	a0,a0,-00000800
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,00000000230224E0
	beq	a0,zero,0000000023022CEA

l23022B60:
	c.lw	s0,96(a5)
	c.mv	s1,a0
	c.li	s2,00000000
	c.beqz	a5,0000000023022B8C

l23022B68:
	c.lw	s0,100(a4)
	lui	a5,000FFF05
	addi	a5,a5,+000003FF
	c.add	a5,a4
	c.li	a3,00000001
	c.li	s2,00000004
	bgeu	a3,a5,0000000023022B8C

l23022B7C:
	lui	a5,000000FB
	addi	a5,a5,-000003FB
	c.li	s2,00000000
	bne	a4,a5,0000000023022B8C

l23022B8A:
	c.li	s2,00000004

l23022B8C:
	lbu	a5,s0,+00000084
	c.beqz	a5,0000000023022B96

l23022B92:
	ori	s2,s2,+00000001

l23022B96:
	lbu	a5,s0,+00000088
	c.beqz	a5,0000000023022BA0

l23022B9C:
	ori	s2,s2,+00000002

l23022BA0:
	c.lw	s0,92(a4)
	lui	a5,000000FB
	addi	a5,a5,-000003FF
	c.andi	a4,FFFFFFFB
	beq	a4,a5,0000000023022BB4

l23022BB0:
	ori	s2,s2,+00000008

l23022BB4:
	lbu	a4,s0,+00000055
	c.li	a5,00000001
	bne	a4,a5,0000000023022BC2

l23022BBE:
	ori	s2,s2,+00000010

l23022BC2:
	lhu	a5,s0,+00000086
	c.bnez	a5,0000000023022BCE

l23022BC8:
	c.lui	a5,00009000
	addi	a5,a5,-00000772

l23022BCE:
	sh	a5,s1,+00000034
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023022C0C

l23022BD6:
	lbu	a3,a5,+00000000
	addi	a4,zero,+000000FF
	bne	a3,a4,0000000023022C20

l23022BE2:
	lbu	a2,a5,+00000001
	c.li	a4,00000000
	bne	a2,a3,0000000023022C40

l23022BEC:
	lbu	a3,a5,+00000002
	bne	a3,a2,0000000023022C40

l23022BF4:
	lbu	a2,a5,+00000003
	bne	a2,a3,0000000023022C40

l23022BFC:
	lbu	a3,a5,+00000004
	bne	a3,a2,0000000023022C40

l23022C04:
	lbu	a5,a5,+00000005
	bne	a5,a3,0000000023022C40

l23022C0C:
	lui	a1,000230CC
	c.li	a2,00000006
	addi	a1,a1,-000006B8
	addi	a0,s1,+00000022
	jal	ra,00000000230A382C
	c.j	0000000023022C58

l23022C20:
	c.bnez	a3,0000000023022C8A

l23022C22:
	lbu	a4,a5,+00000001
	c.bnez	a4,0000000023022C8A

l23022C28:
	lbu	a4,a5,+00000002
	c.bnez	a4,0000000023022C8A

l23022C2E:
	lbu	a4,a5,+00000003
	c.bnez	a4,0000000023022C8A

l23022C34:
	lbu	a4,a5,+00000004
	c.bnez	a4,0000000023022C8A

l23022C3A:
	lbu	a5,a5,+00000005
	c.beqz	a5,0000000023022C0C

l23022C40:
	c.li	a3,00000006

l23022C42:
	c.lw	s0,56(a5)
	c.add	a5,a4
	lbu	a2,a5,+00000000
	add	a5,s1,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000022
	bne	a4,a3,0000000023022C42

l23022C58:
	c.lui	a5,00001000
	c.add	a5,s3
	lw	a5,a5,-000001E4
	sb	a5,s1,+0000003D
	lhu	a5,s0,+00000002
	c.beqz	a5,0000000023022C8E

l23022C6A:
	lbu	a5,s0,+00000000
	sb	a5,s1,+0000002A
	lhu	a5,s0,+00000002
	sh	a5,s1,+00000028
	c.lw	s0,8(a5)
	c.andi	a5,0000000A
	sltu	a5,zero,a5
	sb	a5,s1,+0000002B

l23022C86:
	c.li	a5,00000000
	c.j	0000000023022CA8

l23022C8A:
	c.li	a4,00000000
	c.j	0000000023022C40

l23022C8E:
	c.li	a5,FFFFFFFF
	sh	a5,s1,+00000028
	c.j	0000000023022C86

l23022C96:
	c.lw	s0,64(a4)
	c.add	a4,a5
	lbu	a3,a4,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000001

l23022CA8:
	c.lw	s0,68(a4)
	bltu	a5,a4,0000000023022C96

l23022CAE:
	sb	a4,s1,+00000000
	sw	s2,s1,+00000030
	c.lw	s0,80(a2)
	addi	a5,zero,+00000100
	bgeu	a5,a2,0000000023022CEE

l23022CC0:
	lui	a1,000230B1
	lui	a0,000230AF
	addi	a2,zero,+0000030A
	addi	a1,a1,+00000194
	addi	a0,a0,-00000790
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23022CDA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23022CEA:
	c.li	a0,FFFFFFF4
	c.j	0000000023022CDA

l23022CEE:
	c.beqz	a2,0000000023022CFA

l23022CF0:
	c.lw	s0,76(a1)
	addi	a0,s1,+00000040
	jal	ra,00000000230A382C

l23022CFA:
	c.lw	s0,80(a5)
	sh	a5,s1,+00000036
	lui	a5,0004200D
	addi	a4,a5,+0000006C
	c.lw	a4,44(a3)
	lbu	a4,a4,+00000030
	addi	a5,a5,+0000006C
	sh	a3,s1,+00000038
	xori	a4,a4,+00000001
	sb	a4,s1,+0000003A
	lbu	a4,s0,+00000048
	c.li	a3,00000008
	bne	a4,a3,0000000023022D2A

l23022D28:
	c.li	a4,00000000

l23022D2A:
	sb	a4,s1,+0000003B
	c.lw	a5,68(a5)
	sb	a5,s1,+0000003C
	c.li	a5,00000001
	sb	a5,s1,+00000140
	lbu	a2,s0,+0000009C
	c.beqz	a2,0000000023022D4C

l23022D40:
	lw	a1,s0,+00000094
	addi	a0,s1,+00000141
	jal	ra,00000000230A382C

l23022D4C:
	lbu	a2,s0,+0000009D
	c.beqz	a2,0000000023022D5E

l23022D52:
	lw	a1,s0,+00000098
	addi	a0,s1,+00000181
	jal	ra,00000000230A382C

l23022D5E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a4,s4
	c.mv	a1,s1
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.lui	a3,00002000
	addi	a3,a3,-000007FF
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022374

;; bl_send_sm_disconnect_req: 23022D7E
;;   Called from:
;;     23021BAC (in bl_main_disconnect)
bl_send_sm_disconnect_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00002000
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a2,00000004
	c.li	a1,00000006
	addi	a0,s1,-000007FD
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022DC6

l23022D9C:
	c.lui	a5,00001000
	sh	s2,a0,+00000000
	c.add	a5,s0
	lw	a5,a5,-000001E4
	c.mv	a1,a0
	addi	a3,s1,-000007FC
	sb	a5,a0,+00000002
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022DC6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_powersaving_req: 23022DD4
;;   Called from:
;;     23021BC2 (in bl_main_powersaving)
bl_send_mm_powersaving_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,zero,+00000031
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022E0A

l23022DEE:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	addi	a3,zero,+00000032
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022E0A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_denoise_req: 23022E16
;;   Called from:
;;     23021BD0 (in bl_main_denoise)
bl_send_mm_denoise_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,zero,+00000030
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022E4C

l23022E30:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	addi	a3,zero,+00000032
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022E4C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_start_req: 23022E58
;;   Called from:
;;     23021DDE (in bl_main_apm_start)
bl_send_apm_start_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.mv	s4,a1
	lui	a1,000230B1
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	addi	a1,a1,+0000016C
	c.mv	s3,a0
	c.mv	s1,a2
	c.addi4spn	a0,00000014
	c.li	a2,0000000C
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s2,a3
	c.swsp	a4,00000084
	c.swsp	a5,00000004
	c.swsp	a6,00000080
	jal	ra,00000000230A382C
	c.lui	a0,00002000
	addi	a2,zero,+000000A8
	c.li	a1,00000007
	addi	a0,a0,-00000400
	jal	ra,00000000230224E0
	beq	a0,zero,0000000023022F94

l23022E98:
	c.lwsp	a2,000000C4
	sb	zero,a0,+00000010
	c.li	a2,0000000D
	addi	a3,a4,-00000001
	c.mv	s0,a0
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	bltu	a2,a3,0000000023022F86

l23022EAE:
	c.li	a3,0000000E
	beq	a4,a3,0000000023022F8C

l23022EB4:
	c.li	a3,00000005
	add	a4,a4,a3
	c.lui	a3,00001000
	addi	a3,a3,-00000699
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010

l23022EC6:
	sh	a4,s0,+0000000E
	c.sw	s0,20(a4)
	addi	a4,zero,+00000064
	sh	a4,s0,+00000028
	c.li	a4,00000008
	c.sw	s0,44(a4)
	c.lui	a4,FFFF9000
	addi	a4,a4,-00000178
	sh	a4,s0,+00000030
	c.li	a4,00000006
	sb	a4,s0,+00000032
	sb	a6,s0,+0000001D
	sb	a5,s0,+00000033
	sb	zero,s0,+00000011
	sb	zero,s0,+00000012
	sw	zero,s0,+00000018
	sb	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000024
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.li	a5,00000001
	sltu	a0,zero,a0
	sb	a5,s0,+00000034
	sb	a0,s0,+00000066
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,s0,+00000045
	jal	ra,00000000230A382C
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a1,s2
	addi	a0,s0,+00000067
	jal	ra,00000000230A382C
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.li	a5,0000000C
	sb	a0,s0,+00000044
	sb	a5,s0,+00000035
	c.li	a2,0000000C
	c.addi4spn	a1,00000014
	addi	a0,s0,+00000036
	jal	ra,00000000230A382C
	addi	a5,zero,+00000101
	c.lui	a3,00002000
	sh	a5,s0,+00000042
	c.mv	a4,s4
	addi	a3,a3,-000003FF
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023022374

l23022F76:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23022F86:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	0000000023022EC6

l23022F8C:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.j	0000000023022EC6

l23022F94:
	c.li	a0,FFFFFFF4
	c.j	0000000023022F76

;; bl_send_apm_stop_req: 23022F98
;;   Called from:
;;     23021E70 (in bl_main_apm_stop)
bl_send_apm_stop_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00002000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000001
	c.li	a1,00000007
	addi	a0,s0,-000003FE
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023022FD4

l23022FB6:
	sb	s2,a0,+00000000
	addi	a3,s0,-000003FD
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23022FD4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_sta_del_req: 23022FE2
;;   Called from:
;;     23021F5A (in bl_main_apm_sta_delete)
bl_send_apm_sta_del_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.lui	s0,00002000
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.li	a1,00000007
	c.li	a2,00000002
	addi	a0,s0,-000003F5
	c.swsp	ra,0000008C
	c.swsp	a3,00000004
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023023028

l23023004:
	c.lwsp	s0,000000A4
	sb	s2,a0,+00000001
	c.lwsp	a2,000000C4
	sb	a3,a0,+00000000
	addi	a3,s0,-000003F4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022374

l23023028:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_apm_conf_max_sta_req: 23023036
;;   Called from:
;;     23021FD2 (in bl_main_conf_max_sta)
bl_send_apm_conf_max_sta_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00002000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000001
	c.li	a1,00000007
	addi	a0,s0,-000003F3
	c.swsp	ra,00000084
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023023072

l23023054:
	sb	s2,a0,+00000000
	addi	a3,s0,-000003F2
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022374

l23023072:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_cfg_task_req: 23023080
;;   Called from:
;;     23021FEA (in bl_main_cfg_task_req)
bl_send_cfg_task_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a1
	c.mv	s4,a0
	c.mv	s3,a2
	c.li	a1,0000000C
	addi	a2,zero,+00000024
	c.lui	a0,00003000
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a3
	c.swsp	a4,00000084
	c.swsp	a5,00000004
	jal	ra,00000000230224E0
	c.beqz	a0,0000000023023148

l230230A8:
	c.sw	a0,0(s1)
	c.li	a3,00000002
	c.mv	s0,a0
	bltu	a3,s1,00000000230230D6

l230230B2:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.beqz	s1,0000000023023116

l230230B8:
	c.mv	a1,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,s4
	c.lwsp	s8,00000088
	c.lui	a3,00003000
	c.li	a4,00000000
	c.addi	a3,00000001
	c.li	a2,00000001
	c.addi16sp	00000030
	jal	zero,0000000023022374

l230230D6:
	c.li	a5,00000003
	beq	s1,a5,0000000023023134

l230230DC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023023142

l230230E6:
	jal	ra,00000000230629C6

l230230EA:
	lui	a3,000230B2
	lui	a2,000230B2
	c.mv	a1,a0
	lui	a0,000230B2
	addi	a5,a3,-00000370
	addi	a6,zero,+0000040F
	addi	a4,zero,+0000040F
	addi	a3,a3,-00000370
	addi	a2,a2,-00000364
	addi	a0,a0,-00000354
	jal	ra,000000002307A208

l23023114:
	c.j	0000000023023114

l23023116:
	slli	a2,a4,00000010
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	c.sw	a0,12(a4)
	c.mv	a3,a5
	c.srli	a2,00000010
	c.li	a1,00000008
	c.addi	a0,00000014
	jal	ra,000000002307AA7E
	c.sw	s0,16(a0)
	c.j	00000000230230B8

l23023134:
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	sw	zero,a0,+00000010
	c.j	00000000230230B8

l23023142:
	jal	ra,00000000230629A4
	c.j	00000000230230EA

l23023148:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000030
	c.jr	ra

;; bl_platform_on: 2302315A
;;   Called from:
;;     2302212A (in bl_main_rtthread_start)
bl_platform_on proc
	lui	a1,00042040
	c.addi	sp,FFFFFFF0
	addi	a4,a1,+00000000
	lui	a5,00042024
	addi	a1,a1,+00000000
	c.swsp	ra,00000084
	sw	a4,a5,+00000F10
	jal	ra,000000002302429E
	c.bnez	a0,0000000023023180

l23023178:
	lui	a5,00044800
	c.li	a4,FFFFFFFF
	c.sw	a5,8(a4)

l23023180:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_pre_switch_ind: 23023186
bl_rx_chan_pre_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_status_ind: 2302318A
bl_rx_rssi_status_ind proc
	lui	a5,0004200F
	lw	a5,a5,+0000035C
	c.beqz	a5,00000000230231AE

l23023194:
	lui	a4,0004200F
	lw	a0,a4,+00000360
	lb	a1,a2,+0000000A
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230231AE:
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_apm_sta_del_ind: 230231B2
bl_rx_apm_sta_del_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,000230B2
	addi	a0,a0,-0000015C
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,0000000023082388
	lbu	a1,s0,+00000008
	lui	a0,000230B2
	addi	a0,a0,-00000144
	jal	ra,0000000023082388
	lbu	a0,s0,+00000008
	c.li	a5,0000000B
	bltu	a5,a0,000000002302320C

l230231E4:
	c.li	a5,0000001C
	add	a0,a0,a5
	c.add	s1,a0
	c.lui	a0,00001000
	c.add	a0,s1
	sb	zero,a0,+00000C98

l230231F4:
	lbu	a2,s0,+00000008
	c.li	a1,00000016
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302320C:
	lui	a0,000230B2
	addi	a0,a0,-0000012C
	jal	ra,0000000023082388
	c.j	00000000230231F4

;; bl_rx_apm_sta_add_ind: 2302321A
bl_rx_apm_sta_add_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	lui	a0,000230B2
	addi	a0,a0,-000001FC
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	c.swsp	s1,00000088
	jal	ra,0000000023082388
	c.lw	s0,8(a1)
	lui	a0,000230B2
	addi	a0,a0,-000001E4
	jal	ra,0000000023082388
	lbu	a5,s0,+00000010
	lbu	a6,s0,+00000011
	lbu	a4,s0,+0000000F
	lbu	a3,s0,+0000000E
	lbu	a2,s0,+0000000D
	lbu	a1,s0,+0000000C
	lui	a0,000230B2
	addi	a0,a0,-000001CC
	jal	ra,0000000023082388
	lbu	a1,s0,+00000012
	lui	a0,000230B2
	addi	a0,a0,-000001A0
	jal	ra,0000000023082388
	lbu	a1,s0,+00000013
	lui	a0,000230B2
	addi	a0,a0,-00000144
	jal	ra,0000000023082388
	lbu	s2,s0,+00000013
	c.li	a5,0000000B
	bltu	a5,s2,0000000023023300

l23023292:
	c.li	a0,0000001C
	add	s2,s2,a0
	c.lui	s1,00001000
	addi	a0,s1,-00000370
	c.li	a2,00000006
	addi	a1,s0,+0000000C
	c.add	a0,s2
	c.add	a0,s3
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000013
	add	a0,s3,s2
	c.add	a0,s1
	sb	a5,a0,+00000C99
	lbu	a5,s0,+00000012
	sb	a5,a0,+00000C9A
	c.li	a5,00000001
	sb	a5,a0,+00000C98
	lb	a5,s0,+00000014
	sb	a5,a0,+00000C9C
	c.lw	s0,24(a5)
	sw	a5,a0,+00000CA0
	c.lw	s0,28(a5)
	sw	a5,a0,+00000CA4
	lbu	a5,s0,+00000020
	sb	a5,a0,+00000CA8

l230232E4:
	lbu	a2,s0,+00000013
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23023300:
	lui	a0,000230B2
	addi	a0,a0,-00000188
	jal	ra,0000000023082388
	c.j	00000000230232E4

;; notify_event_scan_done: 2302330E
;;   Called from:
;;     2302335C (in bl_rx_scanu_join_cfm)
;;     2302336E (in bl_rx_scanu_start_cfm)
notify_event_scan_done proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	addi	a5,zero,+000000EC
	c.swsp	a5,00000084
	lui	a5,0004200F
	sltu	a0,zero,s0
	lw	a5,a5,+00000348
	c.addi	a0,00000001
	c.swsp	a0,00000004
	c.beqz	a5,000000002302334E

l23023342:
	lui	a4,0004200F
	lw	a0,a4,+0000034C
	c.addi4spn	a1,00000008
	c.jalr	a5

l2302334E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_join_cfm: 23023356
bl_rx_scanu_join_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302330E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_scanu_start_cfm: 23023368
bl_rx_scanu_start_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302330E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_switch_ind: 2302337A
bl_rx_chan_switch_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a2,+00000008
	c.li	a1,00000000
	c.li	a2,00000004
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	lw	a5,a5,+00000348
	c.swsp	zero,00000004
	c.swsp	s0,00000084
	c.beqz	a5,00000000230233B2

l230233A6:
	lui	a4,0004200F
	lw	a0,a4,+0000034C
	c.addi4spn	a1,00000008
	c.jalr	a5

l230233B2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_sm_connect_ind: 230233BC
bl_rx_sm_connect_ind proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	lhu	a3,a2,+00000008
	lui	a5,000230B2
	addi	a4,a5,+000003D4
	addi	s3,a5,+000003D4
	c.mv	s1,a0
	c.mv	s0,a2
	c.li	s2,00000000
	c.li	a5,00000010

l230233E0:
	lhu	a2,a4,+00000000
	beq	a2,a3,00000000230233F2

l230233E8:
	c.addi	s2,00000001
	c.addi	a4,00000008
	bne	s2,a5,00000000230233E0

l230233F0:
	c.li	s2,00000000

l230233F2:
	lui	a0,000230B2
	addi	a0,a0,-000000D8
	jal	ra,0000000023082388
	lhu	a1,s0,+00000008
	lui	a0,000230B2
	addi	a0,a0,-000000BC
	c.slli	s2,03
	jal	ra,0000000023082388
	c.add	s2,s3
	lw	a1,s2,+00000004
	lui	a0,000230B2
	addi	a0,a0,-000000A4
	jal	ra,0000000023082388
	lbu	a5,s0,+0000000E
	lbu	a6,s0,+0000000F
	lbu	a4,s0,+0000000D
	lbu	a3,s0,+0000000C
	lbu	a2,s0,+0000000B
	lbu	a1,s0,+0000000A
	lui	a0,000230B2
	addi	a0,a0,-00000088
	jal	ra,0000000023082388
	lbu	a1,s0,+00000011
	lui	a0,000230B2
	addi	a0,a0,-0000005C
	jal	ra,0000000023082388
	lbu	a1,s0,+00000012
	lui	a0,000230B2
	addi	a0,a0,-00000048
	jal	ra,0000000023082388
	lbu	a1,s0,+00000013
	lui	a0,000230B2
	addi	a0,a0,-00000034
	jal	ra,0000000023082388
	lbu	a1,s0,+00000014
	lui	a0,000230B2
	addi	a0,a0,-00000020
	jal	ra,0000000023082388
	lbu	a1,s0,+00000015
	lui	a0,000230B2
	addi	a0,a0,-00000010
	jal	ra,0000000023082388
	lhu	a1,s0,+00000016
	lui	a0,000230B2
	addi	a0,a0,+00000000
	jal	ra,0000000023082388
	lhu	a1,s0,+00000018
	lui	a0,000230B2
	addi	a0,a0,+00000020
	jal	ra,0000000023082388
	lhu	a1,s0,+0000033C
	lui	a0,000230B2
	addi	a0,a0,+00000040
	jal	ra,0000000023082388
	lbu	a1,s0,+0000033E
	lui	a0,000230B2
	addi	a0,a0,+00000050
	jal	ra,0000000023082388
	lhu	a1,s0,+00000340
	lui	a0,000230B2
	addi	a0,a0,+00000064
	jal	ra,0000000023082388
	lbu	a1,s0,+00000342
	lui	a0,000230B2
	addi	a0,a0,+0000007C
	jal	ra,0000000023082388
	lw	a1,s0,+00000344
	lui	a0,000230B2
	addi	a0,a0,+00000090
	jal	ra,0000000023082388
	lw	a1,s0,+00000348
	lui	a0,000230B2
	addi	a0,a0,+000000AC
	jal	ra,0000000023082388
	lhu	a5,s0,+00000008
	c.bnez	a5,00000000230235F2

l2302351C:
	lbu	a4,s0,+00000012
	c.lui	a5,00001000
	c.add	a5,s1
	sw	a4,a5,+00000E24
	c.li	a5,00000001
	c.sw	s1,0(a5)

l2302352C:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.lw	s0,8(a5)
	c.swsp	a5,00000000
	c.lw	s0,12(a5)
	c.swsp	a5,00000080
	lbu	a5,s0,+00000011
	sb	a5,sp,+00000008
	lbu	a5,s0,+00000012
	sb	a5,sp,+00000009
	lbu	a5,s0,+00000013
	sb	a5,sp,+0000000A
	lbu	a5,s0,+00000014
	c.swsp	a5,00000084
	lhu	a5,s0,+0000033C
	sh	a5,sp,+00000010
	lbu	a5,s0,+0000033E
	sb	a5,sp,+00000012
	lhu	a5,s0,+00000340
	sh	a5,sp,+00000014
	lbu	a5,s0,+00000342
	sb	a5,sp,+00000016
	lw	a5,s0,+00000344
	c.swsp	a5,0000000C
	lw	a5,s0,+00000348
	c.swsp	a5,0000008C
	lui	a5,0004200F
	lw	a5,a5,+00000364
	c.beqz	a5,00000000230235A0

l23023594:
	lui	a4,0004200F
	lw	a0,a4,+00000368
	c.mv	a1,sp
	c.jalr	a5

l230235A0:
	lhu	a5,s0,+00000008
	c.bnez	a5,00000000230235E2

l230235A6:
	lbu	a5,s0,+00000011
	addi	a4,zero,+000000C4
	c.li	a2,00000000
	add	a5,a5,a4
	addi	a1,a5,+00000360
	c.add	a1,s1
	c.beqz	a1,00000000230235F8

l230235BC:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,00000000230235F8

l230235C4:
	lui	a1,00023070
	addi	a1,a1,-000000BE
	jal	ra,000000002306A96E
	lw	a0,s1,+00000368
	lui	a1,00023070
	c.li	a2,00000000
	addi	a1,a1,-000001D0
	jal	ra,000000002306A96E

l230235E2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l230235F2:
	sw	zero,s1,+00000000
	c.j	000000002302352C

l230235F8:
	lui	a0,000230B2
	addi	a0,a0,+000000C8
	jal	ra,0000000023082388
	c.j	00000000230235E2

;; bl_rx_sm_disconnect_ind: 23023606
bl_rx_sm_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	lui	a0,000230B2
	addi	a0,a0,+00000104
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	jal	ra,000000002306F4D2
	lhu	a1,s0,+00000008
	c.swsp	a0,00000080
	lui	a0,000230B2
	addi	a0,a0,+0000010C
	jal	ra,0000000023082388
	lbu	a1,s0,+0000000A
	lui	a0,000230B2
	addi	a0,a0,+0000013C
	jal	ra,0000000023082388
	lbu	a1,s0,+0000000B
	lui	a0,000230B2
	addi	a0,a0,+00000154
	lui	s2,0004200F
	jal	ra,0000000023082388
	addi	s2,s2,+0000036C
	lw	a5,s2,+00000000
	c.beqz	a5,0000000023023690

l23023660:
	c.li	a1,00000000
	c.li	a2,00000008
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000008
	lui	a4,0004200F
	lw	a0,a4,+00000370
	sh	a5,sp,+00000008
	lbu	a5,s0,+0000000A
	c.addi4spn	a1,00000008
	sb	a5,sp,+0000000A
	lbu	a5,s0,+0000000B
	c.swsp	a5,00000084
	lw	a5,s2,+00000000
	c.jalr	a5

l23023690:
	lbu	a5,s0,+0000000A
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	addi	a4,a5,+00000360
	c.add	a4,s1
	c.beqz	a4,00000000230236C8

l230236A4:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,00000000230236C8

l230236AC:
	lui	a1,00023070
	c.li	a2,00000000
	addi	a1,a1,-0000007A
	jal	ra,000000002306A96E
	lw	a0,s1,+00000368
	c.addi4spn	a3,00000004
	c.mv	a2,a3
	c.mv	a1,a3
	jal	ra,000000002306A930

l230236C8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_result_ind: 230236D6
bl_rx_scanu_result_ind proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.li	a1,00000000
	c.mv	s0,a2
	c.addi4spn	a0,00000008
	addi	a2,zero,+00000020
	c.swsp	ra,000000BC
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	sb	zero,sp,+00000007
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000024
	addi	a4,zero,+00000080
	andi	a5,a5,+000000FC
	bne	a5,a4,0000000023023946

l23023706:
	lui	s3,0004200F
	lw	a5,s3,+00000340
	addi	s3,s3,+00000340
	beq	a5,zero,000000002302389A

l23023716:
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230A3A68
	lhu	s1,s0,+00000008
	addi	s4,s0,+00000048
	c.mv	s2,s4
	c.li	a5,00000000

l2302372E:
	bge	a5,s1,0000000023023760

l23023732:
	lbu	a4,s2,+00000000
	lbu	a2,s2,+00000001
	bne	a4,zero,00000000230238AC

l2302373E:
	addi	a5,zero,+00000020
	bltu	a5,a2,0000000023023760

l23023746:
	addi	a1,s2,+00000002
	addi	a0,sp,+0000002E
	c.swsp	a2,000000AC
	jal	ra,00000000230A382C
	lbu	a5,s2,+00000001
	c.addi4spn	a4,00000060
	c.add	a5,a4
	sb	zero,a5,+00000FCE

l23023760:
	lhu	a2,s0,+00000008
	c.mv	a5,s4
	c.li	a3,00000000
	c.li	a1,00000003

l2302376A:
	bge	a3,a2,000000002302378A

l2302376E:
	lbu	a0,a5,+00000000
	lbu	a4,a5,+00000001
	bne	a0,a1,00000000230238B4

l2302377A:
	addi	a3,zero,+00000020
	bltu	a3,a4,000000002302378A

l23023782:
	lbu	a5,a5,+00000002
	sb	a5,sp,+00000052

l2302378A:
	lhu	a5,s0,+00000046
	c.andi	a5,00000010
	beq	a5,zero,0000000023023940

l23023794:
	addi	s1,s1,-00000024
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a1,s1
	addi	a2,zero,+00000030
	c.mv	a0,s4
	jal	ra,0000000023015122
	c.mv	a1,a0
	c.li	s2,00000000
	c.beqz	a0,00000000230237DC

l230237AE:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000020
	sb	a5,sp,+00000059
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,00000000230A382C
	addi	a3,sp,+00000007
	c.addi4spn	a2,00000058
	addi	a1,sp,+00000057
	c.addi4spn	a0,00000008
	jal	ra,00000000230162DA
	c.mv	s2,a0

l230237DC:
	lui	a2,000230B2
	c.mv	a1,s1
	c.li	a3,00000004
	addi	a2,a2,-00000240
	c.mv	a0,s4
	jal	ra,000000002301513E
	c.mv	a1,a0
	c.beqz	a0,0000000023023820

l230237F2:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000008
	sb	a5,sp,+00000059
	bne	s2,zero,0000000023023820

l23023802:
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,00000000230A382C
	addi	a2,sp,+00000056
	addi	a1,sp,+00000055
	c.addi4spn	a0,00000008
	jal	ra,000000002301653E

l23023820:
	c.lwsp	s9,000000C4
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.and	a4,a5
	bne	a4,a5,00000000230238DE

l2302382E:
	lbu	a3,sp,+00000056
	lbu	a5,sp,+00000058
	c.or	a5,a3
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.beqz	a5,00000000230238BC

l23023840:
	c.li	a5,00000003
	c.beqz	a3,0000000023023846

l23023844:
	c.li	a5,00000004

l23023846:
	sb	a5,sp,+00000054
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	bne	a4,a5,0000000023023926

l23023854:
	c.li	a5,00000004

l23023856:
	sb	a5,sp,+00000053

l2302385A:
	lbu	a5,s0,+00000020
	lui	a4,0004200F
	lw	a0,a4,+00000344
	sb	a5,sp,+0000004F
	lbu	a5,s0,+00000021
	c.addi4spn	a1,00000028
	sb	a5,sp,+00000050
	lbu	a5,s0,+00000022
	sb	a5,sp,+00000051
	lhu	a5,s0,+00000034
	sh	a5,sp,+00000028
	lhu	a5,s0,+00000036
	sh	a5,sp,+0000002A
	lhu	a5,s0,+00000038
	sh	a5,sp,+0000002C
	lw	a5,s3,+00000000
	c.jalr	a5

l2302389A:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l230238AC:
	c.addi	a2,00000002
	c.add	a5,a2
	c.add	s2,a2
	c.j	000000002302372E

l230238B4:
	c.addi	a4,00000002
	c.add	a3,a4
	c.add	a5,a4
	c.j	000000002302376A

l230238BC:
	c.beqz	a3,0000000023023854

l230238BE:
	c.lwsp	s5,000000A4
	lui	a5,00008001
	addi	a5,a5,-00000800
	c.and	a5,a3
	c.beqz	a5,00000000230238D0

l230238CC:
	c.li	a5,00000002
	c.j	0000000023023846

l230238D0:
	lui	a5,00004000
	addi	a5,a5,+00000400
	c.and	a3,a5
	c.bnez	a3,0000000023023844

l230238DC:
	c.j	00000000230238CC

l230238DE:
	lbu	a5,sp,+00000059
	andi	a3,a5,+00000008
	c.beqz	a3,0000000023023906

l230238E8:
	lbu	a5,sp,+00000056
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,0000000023023840

l230238F4:
	c.beqz	a3,0000000023023926

l230238F6:
	lbu	a5,sp,+00000055

l230238FA:
	andi	a3,a5,+00000008
	c.bnez	a3,00000000230238CC

l23023900:
	c.andi	a5,00000004
	c.bnez	a5,0000000023023844

l23023904:
	c.j	00000000230238CC

l23023906:
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023023920

l2302390C:
	lbu	a5,sp,+00000058
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,0000000023023840

l23023918:
	c.beqz	a3,0000000023023926

l2302391A:
	lbu	a5,sp,+00000057
	c.j	00000000230238FA

l23023920:
	c.li	a5,00000001
	sb	a5,sp,+00000054

l23023926:
	lbu	a5,sp,+00000059
	andi	a4,a5,+00000020
	c.beqz	a4,0000000023023934

l23023930:
	c.li	a5,00000003
	c.j	0000000023023856

l23023934:
	c.andi	a5,00000008
	c.beqz	a5,000000002302393C

l23023938:
	c.li	a5,00000002
	c.j	0000000023023856

l2302393C:
	c.li	a5,00000001
	c.j	0000000023023856

l23023940:
	sb	zero,sp,+00000053
	c.j	000000002302385A

l23023946:
	addi	a4,zero,+00000050
	bne	a5,a4,0000000023023982

l2302394E:
	lui	a0,000230B2
	addi	a0,a0,-000000FC
	jal	ra,0000000023082388
	lui	a5,0004200F
	lw	a3,a5,+00000358
	c.beqz	a3,000000002302389A

l23023964:
	lhu	a4,s0,+0000003E
	lhu	a5,s0,+00000042
	lhu	a1,s0,+0000003C
	lhu	a2,s0,+00000040
	c.slli	a4,10
	c.slli	a5,10
	c.or	a1,a4
	c.or	a2,a5
	c.li	a0,00000000
	c.jalr	a3
	c.j	000000002302389A

l23023982:
	lui	a0,000230B2
	addi	a0,a0,-000000E8
	jal	ra,0000000023082388
	c.j	000000002302389A

;; bl_rx_mesh_path_update_ind: 23023990
bl_rx_mesh_path_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_proxy_update_ind: 23023994
bl_rx_mesh_proxy_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_remain_on_channel_exp_ind: 23023998
bl_rx_remain_on_channel_exp_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_ps_change_ind: 2302399C
bl_rx_ps_change_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_traffic_req_ind: 230239A0
bl_rx_traffic_req_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_counter_ind: 230239A4
bl_rx_csa_counter_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_finish_ind: 230239A8
bl_rx_csa_finish_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_traffic_ind: 230239AC
bl_rx_csa_traffic_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_channel_survey_ind: 230239B0
bl_rx_channel_survey_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_dbg_error_ind: 230239B4
bl_rx_dbg_error_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_cfm: 230239B8
bl_rx_tdls_chan_switch_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_ind: 230239BC
bl_rx_tdls_chan_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_base_ind: 230239C0
bl_rx_tdls_chan_switch_base_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_peer_ps_ind: 230239C4
bl_rx_tdls_peer_ps_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tkip_mic_failure_ind: 230239C8
bl_rx_me_tkip_mic_failure_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tx_credits_update_ind: 230239CC
bl_rx_me_tx_credits_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_path_create_cfm: 230239D0
bl_rx_mesh_path_create_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_peer_update_ind: 230239D4
bl_rx_mesh_peer_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_connect_ind_cb_register: 230239D8
;;   Called from:
;;     23028662 (in wifi_mgmr_event_init)
bl_rx_sm_connect_ind_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+00000364
	lui	a5,0004200F
	sw	a0,a5,+00000368
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_disconnect_ind_cb_register: 230239EC
;;   Called from:
;;     23028670 (in wifi_mgmr_event_init)
bl_rx_sm_disconnect_ind_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+0000036C
	lui	a5,0004200F
	sw	a0,a5,+00000370
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_beacon_ind_cb_register: 23023A00
;;   Called from:
;;     2302867E (in wifi_mgmr_event_init)
bl_rx_beacon_ind_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+00000340
	lui	a5,0004200F
	sw	a0,a5,+00000344
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_probe_resp_ind_cb_register: 23023A14
;;   Called from:
;;     2302868C (in wifi_mgmr_event_init)
bl_rx_probe_resp_ind_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+00000358
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_register: 23023A20
;;   Called from:
;;     23027F7E (in wifi_mgmr_sniffer_register)
bl_rx_pkt_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+00000350
	lui	a5,0004200F
	sw	a0,a5,+00000354
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_unregister: 23023A34
;;   Called from:
;;     23027F8E (in wifi_mgmr_sniffer_unregister)
bl_rx_pkt_cb_unregister proc
	lui	a5,0004200F
	sw	zero,a5,+00000350
	lui	a5,0004200F
	sw	zero,a5,+00000354
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_cb_register: 23023A48
;;   Called from:
;;     2302869A (in wifi_mgmr_event_init)
bl_rx_rssi_cb_register proc
	lui	a5,0004200F
	sw	a1,a5,+0000035C
	lui	a5,0004200F
	sw	a0,a5,+00000360
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_event_register: 23023A5C
;;   Called from:
;;     230286A8 (in wifi_mgmr_event_init)
bl_rx_event_register proc
	lui	a5,0004200F
	sw	a1,a5,+00000348
	lui	a5,0004200F
	sw	a0,a5,+0000034C
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_e2a_handler: 23023A70
;;   Called from:
;;     23014A42 (in ke_msg_send)
bl_rx_e2a_handler proc
	lhu	a5,a0,+00000000
	c.mv	a1,a0
	lui	a0,00042023
	srli	a4,a5,0000000A
	slli	a3,a4,00000002
	lui	a4,000230B2
	addi	a4,a4,+000003A0
	c.add	a4,a3
	c.lw	a4,0(a4)
	andi	a5,a5,+000003FF
	c.slli	a5,02
	c.add	a5,a4
	lui	a4,00042023
	lw	t1,a4,+000000C8
	c.lw	a5,0(a2)
	addi	a0,a0,+000000A4
	c.jr	t1

;; bl_rx_pkt_cb: 23023AA6
;;   Called from:
;;     23023EF2 (in tcpip_stack_input)
bl_rx_pkt_cb proc
	lui	a5,0004200F
	lw	t1,a5,+00000350
	c.mv	a2,a1
	beq	t1,zero,0000000023023AC0

l23023AB4:
	lui	a5,0004200F
	c.mv	a1,a0
	lw	a0,a5,+00000354
	c.jr	t1

l23023AC0:
	c.jr	ra

;; bl_tx_push: 23023AC2
;;   Called from:
;;     23023BA0 (in bl_tx_resend)
;;     23023BEC (in bl_tx_try_flush)
bl_tx_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.lw	a0,52(a0)
	c.mv	s0,a1
	lw	s4,a1,+00000008
	jal	ra,0000000023021A22
	addi	s1,a0,+00000004
	c.mv	s3,a0
	c.bnez	s1,0000000023023AF6

l23023AE6:
	lui	a0,000230B2
	addi	a1,zero,+00000037
	addi	a0,a0,+0000076C
	jal	ra,0000000023082388

l23023AF6:
	addi	a1,s0,+0000000C
	addi	s3,s3,+00000054

l23023AFE:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.addi	s1,00000001
	sb	a5,s1,+00000FFF
	bne	s3,s1,0000000023023AFE

l23023B0E:
	lw	a0,s2,+00000034
	c.mv	a1,s4
	jal	ra,0000000023021A60
	lw	a5,s2,+00000038
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi	a5,00000001
	sw	a5,s2,+00000038
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bl_tx_resend: 23023B32
;;   Called from:
;;     23021B04 (in ipc_host_irq)
bl_tx_resend proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042024
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s4,0004200F
	jal	ra,0000000023063658
	lui	s3,0004200F
	lui	s5,0004200F
	addi	s1,s1,-000000EC

l23023B5A:
	addi	s0,s4,+00000378
	c.lw	s0,0(a4)
	lw	a5,s3,+0000037C
	beq	a4,a5,0000000023023B78

l23023B68:
	addi	s2,s5,-000004CC
	lw	a5,s2,+00000000
	c.lw	a5,52(a0)
	jal	ra,0000000023021A22
	c.bnez	a0,0000000023023B8C

l23023B78:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002306366C

l23023B8C:
	c.lw	s0,0(a5)
	lw	a0,s2,+00000000
	c.andi	a5,00000007
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a4)
	sw	zero,a4,+00000004
	c.lw	a5,0(a1)
	jal	ra,0000000023023AC2
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.j	0000000023023B5A

;; bl_tx_try_flush: 23023BAC
;;   Called from:
;;     230220D8 (in bl_main_event_handle)
bl_tx_try_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,0004200F
	jal	ra,0000000023063658
	lui	s2,00042024

l23023BC2:
	addi	s0,s1,-000004CC
	c.lw	s0,0(a5)
	c.lw	a5,52(a0)
	jal	ra,0000000023021A22
	c.beqz	a0,0000000023023BDC

l23023BD0:
	addi	a0,s2,-000000CC
	jal	ra,000000002307A474
	c.mv	a1,a0
	c.bnez	a0,0000000023023BEA

l23023BDC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002306366C

l23023BEA:
	c.lw	s0,0(a0)
	jal	ra,0000000023023AC2
	c.j	0000000023023BC2

;; bl_txdatacfm: 23023BF2
bl_txdatacfm proc
	c.lw	a1,4(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	sub	s0,zero,a5
	c.andi	s0,00000003
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.add	s0,a5
	c.lw	s0,4(a5)
	c.li	a0,FFFFFFFF
	c.beqz	a5,0000000023023C5C

l23023C0C:
	slli	a4,a5,0000000F
	c.mv	s1,a1
	bge	a4,zero,0000000023023C74

l23023C16:
	lui	s2,0004200F
	addi	s2,s2,+0000037C
	lw	a5,s2,+00000000
	lui	a4,0004200F
	lw	a4,a4,+00000378
	c.addi	a5,00000001
	c.xor	a5,a4
	c.andi	a5,00000007
	c.beqz	a5,0000000023023C68

l23023C32:
	lui	a0,000230B2
	addi	a0,a0,+00000784
	jal	ra,000000002308234C
	lw	a4,s2,+00000000
	lui	a5,00042024
	addi	a5,a5,-000000EC
	andi	a3,a4,+00000007
	c.slli	a3,02
	c.add	a5,a3
	c.addi	a4,00000001
	c.sw	a5,0(s0)
	sw	a4,s2,+00000000

l23023C5A:
	c.li	a0,00000000

l23023C5C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23023C68:
	lui	a0,000230B2
	addi	a0,a0,+00000794
	jal	ra,000000002308234C

l23023C74:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.j	0000000023023C5A

;; bl_tx_notify: 23023C7C
;;   Called from:
;;     23021AF6 (in ipc_host_irq)
bl_tx_notify proc
	lui	a5,0004200F
	lw	a0,a5,+00000374
	c.beqz	a0,0000000023023C90

l23023C86:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	zero,0000000023063940

l23023C90:
	c.jr	ra

;; bl_output: 23023C92
;;   Called from:
;;     23028D7C (in wifi_tx)
bl_output proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.beqz	a0,0000000023023CAE

l23023CA6:
	lbu	a5,a1,+00000041
	c.andi	a5,00000004
	c.bnez	a5,0000000023023CD0

l23023CAE:
	lui	a0,000230B2
	addi	a0,a0,+000006C8
	jal	ra,0000000023082388
	c.li	a0,FFFFFFF5

l23023CBC:
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

l23023CD0:
	lui	s0,0004200F
	addi	s0,s0,+00000374
	c.lw	s0,0(a5)
	c.mv	s2,a0
	c.mv	s1,a2
	c.mv	s5,a3
	c.bnez	a5,0000000023023CE8

l23023CE2:
	jal	ra,0000000023063372
	c.sw	s0,0(a0)

l23023CE8:
	lui	a5,0004200F
	addi	a1,zero,+00000080
	c.mv	a0,s1
	sw	s2,a5,+00000B34
	lw	s3,s1,+00000004
	lhu	s4,s1,+00000008
	jal	ra,0000000023070180
	c.beqz	a0,0000000023023D14

l23023D04:
	lui	a0,000230B2
	addi	a0,a0,+000006E8
	jal	ra,0000000023082388
	c.li	a0,FFFFFFF4
	c.j	0000000023023CBC

l23023D14:
	c.lw	s1,4(a5)
	addi	a2,zero,+0000005C
	c.li	a1,00000000
	sub	s0,zero,a5
	c.andi	s0,00000003
	c.add	s0,a5
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	c.li	a2,00000006
	c.mv	a1,s3
	c.sw	s0,8(s1)
	addi	a0,s0,+0000001C
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s3,+00000006
	addi	a0,s0,+00000022
	jal	ra,00000000230A382C
	c.sw	s0,12(s1)
	lbu	a5,s3,+0000000D
	lbu	a4,s3,+0000000C
	sb	zero,s0,+00000036
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000028
	c.lui	a5,00001000
	c.add	a5,s2
	beq	s5,zero,0000000023023E04

l23023D64:
	lbu	a5,a5,-000001E4

l23023D68:
	c.addi	s4,FFFFFFF2
	sb	a5,s0,+00000037
	sh	zero,s0,+0000003A
	sh	s4,s0,+00000014
	beq	s5,zero,0000000023023E0A

l23023D7A:
	c.lui	a5,00001000
	c.add	s2,a5
	lw	a5,s2,-000001DC
	sb	a5,s0,+00000038

l23023D86:
	addi	s4,s0,+0000003C
	c.mv	s2,s1
	c.li	s3,00000000
	c.li	s5,00000004
	lui	s6,000230B2

l23023D94:
	bne	s3,zero,0000000023023E16

l23023D98:
	lw	a5,s2,+00000004
	addi	a5,a5,+0000008E
	c.sw	s0,60(a5)
	lhu	a5,s2,+0000000A
	addi	a5,a5,-0000008E
	c.sw	s0,76(a5)

l23023DAC:
	lw	s2,s2,+00000000
	c.addi	s3,00000001
	c.addi	s4,00000004
	bne	s2,zero,0000000023023D94

l23023DB8:
	c.li	a5,00000002
	bge	a5,s3,0000000023023DCC

l23023DBE:
	lui	a0,000230B2
	c.mv	a1,s3
	addi	a0,a0,+00000750
	jal	ra,0000000023082388

l23023DCC:
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	s0,16(a5)
	addi	a5,s0,+00000004
	c.sw	s0,24(a5)
	c.mv	a0,s1
	sw	zero,s0,+00000004
	jal	ra,0000000023070452
	jal	ra,0000000023063658
	lui	a0,00042024
	addi	a0,a0,-000000CC
	c.mv	a1,s0
	jal	ra,000000002307A460
	jal	ra,000000002306366C
	jal	ra,00000000230071AA
	c.li	a0,00000000
	c.j	0000000023023CBC

l23023E04:
	lbu	a5,a5,-000001E0
	c.j	0000000023023D68

l23023E0A:
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	000000002302424C
	sb	a0,s0,+00000038
	c.j	0000000023023D86

l23023E16:
	bne	s3,s5,0000000023023E26

l23023E1A:
	lhu	a1,s1,+00000008
	addi	a0,s6,+00000710
	jal	ra,0000000023082388

l23023E26:
	lw	a5,s2,+00000004
	sw	a5,s4,+00000000
	lhu	a5,s2,+0000000A
	sw	a5,s4,+00000010
	c.j	0000000023023DAC

;; bl_radarind: 23023E38
bl_radarind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_msgackind: 23023E3C
bl_msgackind proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,36(a5)
	c.addi	a0,00000004
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_prim_tbtt_ind: 23023E4E
bl_prim_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom: 23023E50
my_pbuf_free_custom proc
	c.lw	a0,20(a0)
	jal	zero,000000002300A756

;; bl_dbgind: 23023E56
bl_dbgind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_sec_tbtt_ind: 23023E5A
bl_sec_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom_fake: 23023E5C
my_pbuf_free_custom_fake proc
	c.jr	ra

;; tcpip_stack_input: 23023E5E
;;   Called from:
;;     2301098A (in rxu_swdesc_upload_evt)
tcpip_stack_input proc
	c.andi	a1,00000001
	c.bnez	a1,0000000023023E66

l23023E62:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23023E66:
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s5,000000B8
	c.swsp	s6,00000038
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	c.sdsp	s0,00000148
	lbu	a5,a2,+00000031
	addi	a1,zero,+000000FF
	bne	a5,a1,0000000023023EB0

l23023E90:
	lui	a5,00042023
	lw	s2,a5,+000003F8
	addi	a5,a5,+000003F8

l23023E9C:
	bne	s2,a5,0000000023023EA4

l23023EA0:
	c.li	s2,00000000
	c.j	0000000023023ED6

l23023EA4:
	lbu	a1,s2,+0000006F
	c.bnez	a1,0000000023023ED6

l23023EAA:
	lw	s2,s2,+00000000
	c.j	0000000023023E9C

l23023EB0:
	c.li	a1,00000001
	c.li	s2,00000000
	blt	a1,a5,0000000023023ED6

l23023EB8:
	addi	a1,zero,+000000C4
	add	a1,a5,a1
	lui	a5,00042023
	addi	a5,a5,+000000A0
	addi	s2,a1,+00000360
	c.add	s2,a5
	c.add	a5,a1
	lbu	a5,a5,+000003CF
	c.beqz	a5,0000000023023EA0

l23023ED6:
	c.lw	a2,48(a5)
	c.mv	s4,a4
	c.swsp	a0,00000094
	andi	a4,a5,+00000002
	c.mv	s6,a3
	c.mv	s0,a2
	c.beqz	a4,0000000023023F74

l23023EE6:
	lw	s1,s4,+00000000
	lhu	a1,a2,+00000000
	c.add	s1,a3
	c.mv	a0,s1
	jal	ra,0000000023023AA6
	lhu	a1,s1,+00000000
	addi	a5,zero,+00000080
	andi	a4,a1,+000000FC
	beq	a4,a5,0000000023023F70

l23023F06:
	addi	a5,a4,-000000A0
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a5,0000000023023F24

l23023F14:
	lhu	a5,s1,+00000018
	c.li	a3,00000001
	c.addi	a5,FFFFFFFA
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,0000000023023F70

l23023F24:
	addi	a5,zero,+000000D0
	bne	a4,a5,0000000023023F36

l23023F2C:
	lbu	a4,s1,+00000018
	c.li	a5,00000006
	beq	a4,a5,0000000023023F70

l23023F36:
	andi	a5,a1,+0000000C
	c.li	a4,00000008
	beq	a5,a4,0000000023023F70

l23023F40:
	andi	a5,a1,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,0000000023023F70

l23023F4C:
	lbu	a7,s1,+00000009
	lbu	a6,s1,+00000008
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	lbu	a3,s1,+00000005
	lbu	a2,s1,+00000004
	lui	a0,000230B3
	addi	a0,a0,-00000764
	jal	ra,0000000023082388

l23023F70:
	c.li	a0,FFFFFFFF
	c.j	00000000230240F4

l23023F74:
	lbu	a3,a2,+00000032
	addi	a4,zero,+000000FF
	beq	a3,a4,0000000023023F96

l23023F80:
	c.andi	a5,00000004
	c.beqz	a5,0000000023023F96

l23023F84:
	lbu	a5,s2,+00000070
	c.bnez	a5,0000000023023F96

l23023F8A:
	lui	a0,000230B3
	addi	a0,a0,-00000730
	jal	ra,0000000023082388

l23023F96:
	jal	ra,00000000230278E2
	c.beqz	a0,000000002302407E

l23023F9C:
	lb	s1,s0,+0000001A
	lb	a4,s0,+00000019
	lui	s5,0004200F
	c.slli	s1,10
	c.srli	s1,00000010
	c.slli	s1,08
	c.or	s1,a4
	jal	ra,00000000230629A4
	lui	a5,0004200F
	lw	a4,a5,+00000388
	c.slli	s1,10
	addi	s3,a5,+00000388
	c.sub	a0,a4
	c.lui	a4,00001000
	lui	a5,0004200F
	addi	a4,a4,-00000060
	c.srli	s1,00000010
	addi	s5,s5,+0000038C
	addi	a5,a5,+00000380
	bge	a4,a0,0000000023023FE4

l23023FDC:
	sw	zero,s5,+00000000
	sw	zero,a5,+00000000

l23023FE4:
	lw	a4,s5,+00000000
	srli	s7,s1,00000004
	andi	s11,s1,+0000000F
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	jal	ra,00000000230629A4
	lhu	a4,s0,+00000012
	lui	a5,0004200F
	sw	a0,s3,+00000000
	c.andi	a4,00000007
	c.li	a3,00000001
	andi	s7,s7,+0000001F
	srli	a7,s1,00000009
	lhu	s9,s0,+00000000
	lb	s10,s0,+00000017
	addi	a5,a5,+00000380
	bgeu	a3,a4,0000000023024114

l23024022:
	lbu	s3,s0,+00000020
	lbu	a4,s0,+0000001F
	addi	a3,zero,+0000007A
	c.slli	s3,08
	or	s3,s3,a4
	c.slli	s3,10
	srai	s3,s3,00000010
	xor	s8,s3,a3
	c.lw	a5,0(a4)
	lw	a2,s5,+00000000
	c.swsp	a7,00000098
	fcvt.s.wu	fa0,a2
	c.swsp	a2,00000018
	c.add	a4,s8
	fcvt.s.w	fa5,a4
	c.sw	a5,0(a4)
	fdiv.s	fa0,fa5,fa0
	jal	ra,00000000230A31AC
	c.lwsp	s4,00000138
	c.lwsp	a6,00000194
	c.swsp	a0,00000004
	lui	a0,000230B3
	c.swsp	a1,00000084
	c.swsp	s8,00000080
	c.swsp	s3,00000000
	c.mv	a6,s7
	c.mv	a5,s11
	c.mv	a4,s1
	c.mv	a3,s10
	c.mv	a1,s9
	addi	a0,a0,-00000708

l2302407A:
	jal	ra,0000000023082388

l2302407E:
	beq	s2,zero,000000002302423A

l23024082:
	lw	a3,s4,+00000010
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000018
	jal	ra,00000000230A3A68
	c.lwsp	a6,000001B4
	lui	a5,00023024
	addi	a5,a5,-000001B0
	c.sw	a3,16(a5)
	c.lwsp	a2,000001F4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	c.sw	a3,20(a5)
	lhu	a5,s4,+00000020
	lw	a4,s4,+00000000
	lui	s3,00023024
	sub	a5,a5,s6
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a4,s6
	c.mv	a1,a5
	jal	ra,0000000023070106
	addi	s0,s4,+00000022
	addi	s1,s4,+00000004
	c.mv	s5,a0
	addi	s4,s4,+00000028
	addi	s3,s3,-000001A4

l230240D6:
	lhu	a5,s0,+00000000
	bne	a5,zero,0000000023024202

l230240DE:
	lw	a1,s2,+00000008
	beq	a1,zero,0000000023023F70

l230240E6:
	c.lw	a1,16(a5)
	c.mv	a0,s5
	c.jalr	a5
	sltu	a0,zero,a0
	sub	a0,zero,a0

l230240F4:
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
	c.ldsp	a3,00000008
	c.addi16sp	00000090
	c.jr	ra

l23024114:
	c.lw	s0,12(a3)
	lw	s8,s5,+00000000
	c.li	a2,00000003
	c.srli	a3,0000000C
	c.andi	a3,0000000F
	lbu	a4,s0,+0000001F
	lw	s3,a5,+00000000
	fcvt.s.wu	fs0,s8
	bgeu	a2,a3,0000000023024180

l23024130:
	lbu	s5,s0,+00000020
	c.swsp	a7,00000098
	c.slli	s5,08
	or	s5,s5,a4
	c.slli	s5,10
	srai	s5,s5,00000010
	addi	a4,zero,+0000007A
	xor	a4,s5,a4
	c.add	s3,a4
	fcvt.s.w	fa0,s3
	sw	s3,a5,+00000000
	c.swsp	a4,00000018
	fdiv.s	fa0,fa0,fs0
	jal	ra,00000000230A31AC
	c.lwsp	a6,000001D4
	c.swsp	a0,00000004
	lui	a0,000230B3
	c.swsp	a1,00000084
	c.swsp	a4,00000080
	c.swsp	s5,00000000
	c.lwsp	s4,00000138
	c.mv	a6,s7
	c.mv	a5,s11
	c.mv	a4,s1
	c.mv	a3,s10
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,a0,-0000069C
	c.j	000000002302407A

l23024180:
	slli	s5,a4,00000018
	srai	s5,s5,00000018
	sub	s5,zero,s5
	c.slli	s5,10
	srai	s5,s5,00000010
	c.mv	a0,s5
	c.swsp	a7,0000009C
	c.swsp	a4,0000001C
	jal	ra,00000000230A307C
	lui	a3,000230AA
	lw	a2,a3,+000003B0
	lw	a3,a3,+000003B4
	jal	ra,00000000230A1B50
	jal	ra,00000000230A2EB8
	c.add	s3,a0
	fcvt.s.w	fa0,s3
	c.lw	s0,36(a3)
	lui	a5,0004200F
	fdiv.s	fa0,fa0,fs0
	addi	a5,a5,+00000380
	c.srli	a3,00000008
	sw	s3,a5,+00000000
	c.andi	a3,00000001
	c.swsp	a3,00000018
	c.swsp	a0,00000098
	jal	ra,00000000230A31AC
	c.lwsp	s4,00000194
	c.lwsp	s8,000001D4
	c.lwsp	t3,00000138
	c.lwsp	a6,000001B4
	c.swsp	a0,00000008
	lui	a0,000230B3
	c.swsp	a1,00000088
	c.swsp	a2,00000084
	c.swsp	a4,00000080
	c.swsp	a7,00000000
	c.swsp	s5,00000004
	c.mv	a7,s7
	c.mv	a6,s11
	c.mv	a5,s1
	c.mv	a4,s10
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,a0,-00000630
	jal	ra,0000000023082388
	c.j	000000002302407E

l23024202:
	c.lw	s1,16(a3)
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000094
	jal	ra,00000000230A3A68
	c.lwsp	a2,000001B4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	sw	s3,a3,+00000010
	lhu	a5,s0,+00000000
	c.lw	s1,0(a4)
	c.addi	s0,00000002
	c.mv	a1,a5
	jal	ra,0000000023070106
	c.mv	a1,a0
	c.mv	a0,s5
	jal	ra,0000000023070476
	c.addi	s1,00000004
	bne	s0,s4,00000000230240D6

l23024238:
	c.j	00000000230240DE

l2302423A:
	lbu	a1,s0,+00000031
	lui	a0,000230B3
	addi	a0,a0,-000005B4
	jal	ra,0000000023082388
	c.j	0000000023023F70

;; bl_utils_idx_lookup: 2302424C
;;   Called from:
;;     23023E0E (in bl_output)
bl_utils_idx_lookup proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.lui	s0,00001000
	addi	s0,s0,-00000370
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.add	s0,a0
	c.li	s1,00000000
	c.li	s3,0000000C

l23024266:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023024282

l2302426C:
	c.addi	s1,00000001
	c.addi	s0,0000001C
	bne	s1,s3,0000000023024266

l23024274:
	lui	a5,00042024
	addi	a5,a5,+000000A0
	lw	s1,a5,-000001D8
	c.j	000000002302428E

l23024282:
	c.li	a2,00000006
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002302426C

l2302428E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl_ipc_init: 2302429E
;;   Called from:
;;     23023172 (in bl_platform_on)
bl_ipc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,00000094
	jal	ra,00000000230A3A68
	lui	a5,00023024
	addi	a5,a5,-000001C8
	c.swsp	a5,00000004
	lui	a5,00023024
	addi	a5,a5,-000001C4
	c.swsp	a5,00000008
	lui	a5,00023024
	addi	a5,a5,-000001AA
	c.swsp	a5,00000088
	lui	a5,00023024
	addi	a5,a5,-0000040E
	c.swsp	a5,00000000
	lui	a5,00023024
	addi	a5,a5,-000001B2
	c.swsp	a5,0000000C
	lui	a5,00023024
	addi	a5,a5,-000001A6
	addi	a0,zero,+000000E4
	c.swsp	a5,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000084
	jal	ra,000000002306488A
	c.sw	s0,52(a0)
	lui	a4,0004200F
	c.mv	a3,s0
	c.mv	a2,s1
	c.mv	a1,sp
	sw	a0,a4,+00000384
	jal	ra,0000000023021950
	addi	a0,s0,+00000004
	jal	ra,0000000023028AB6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_utils_dump: 23024326
;;   Called from:
;;     2301472E (in bl_fw_statistic_dump)
bl_utils_dump proc
	c.addi	sp,FFFFFFE0
	lui	a0,000230B2
	c.swsp	s1,00000088
	addi	a0,a0,+000007B4
	lui	s1,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	s0,s1,+00000384
	c.swsp	s3,00000084
	jal	ra,000000002308234C
	c.lw	s0,0(a5)
	lui	a0,000230B2
	addi	a0,a0,+000007DC
	c.lw	a5,64(a1)
	addi	s1,s1,+00000384
	lui	s3,000230B3
	andi	a2,a1,+00000003
	jal	ra,0000000023082388
	c.lw	s0,0(a5)
	lui	a0,000230B2
	addi	a0,a0,+000007F8
	c.lw	a5,68(a1)
	c.li	s2,00000004
	andi	a2,a1,+00000003
	jal	ra,0000000023082388
	c.lw	s0,0(a5)
	lui	a0,000230B3
	c.li	a1,00000004
	c.lw	a5,64(a2)
	c.lw	a5,68(a5)
	addi	a0,a0,-000007EC
	c.li	s0,00000000
	c.sub	a2,a5
	jal	ra,0000000023082388
	lui	a0,000230B3
	addi	a0,a0,-000007CC
	jal	ra,000000002308234C

l2302439C:
	c.lw	s1,0(a5)
	c.lw	a5,68(a1)
	c.lw	a5,64(a4)
	c.add	a1,s0
	beq	a1,a4,00000000230243D0

l230243A8:
	c.andi	a1,00000003
	addi	a4,a1,+00000010
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,8(a2)
	addi	a0,s3,-000007A4
	c.addi	s0,00000001
	c.lw	a2,4(a4)
	sub	a5,zero,a4
	c.andi	a5,00000003
	c.add	a5,a4
	c.lw	a5,4(a4)
	c.lw	a5,24(a3)
	jal	ra,0000000023082388
	bne	s0,s2,000000002302439C

l230243D0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B3
	addi	a0,a0,-0000078C
	c.addi16sp	00000020
	jal	zero,000000002308234C

;; stateSnifferGuard: 230243E8
stateSnifferGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYesGuard_ip_update: 230243F6
stateConnectedIPYesGuard_ip_update proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; printErrMsg: 23024404
printErrMsg proc
	lui	a0,000230B3
	addi	a0,a0,-000004AC
	jal	zero,0000000023082388

;; stateSnifferExit: 23024410
stateSnifferExit proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+000002C4
	jal	zero,0000000023082388

;; stateSnifferAction: 2302441E
stateSnifferAction proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateConnectedIPNoAction_ipgot: 2302442C
stateConnectedIPNoAction_ipgot proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.lw	a1,4(a4)
	c.mv	s1,a2
	c.mv	s0,a0
	lbu	a2,a4,+00000016
	lbu	a0,a4,+00000015
	lbu	t1,a4,+00000019
	c.slli	a2,08
	c.or	a2,a0
	lbu	a0,a4,+00000017
	lbu	a3,a4,+0000000E
	lbu	a5,a4,+0000000D
	c.slli	a0,10
	c.or	a2,a0
	lbu	a0,a4,+00000018
	c.slli	a3,08
	c.or	a5,a3
	c.slli	a0,18
	c.or	a0,a2
	lbu	a2,a4,+0000001A
	lbu	a3,a4,+0000000F
	lbu	a7,a4,+00000012
	c.slli	a2,08
	or	a2,a2,t1
	lbu	t1,a4,+0000001B
	c.slli	a3,10
	c.or	a3,a5
	c.slli	t1,10
	or	a2,t1,a2
	lbu	t1,a4,+0000001C
	lbu	a5,a4,+00000011
	c.slli	a7,08
	c.slli	t1,18
	or	t1,t1,a2
	lbu	a2,a4,+0000001E
	lbu	a6,a4,+0000001D
	or	a5,a7,a5
	lbu	a7,a4,+00000013
	c.slli	a2,08
	or	a6,a2,a6
	c.slli	a7,10
	lbu	a2,a4,+0000001F
	lbu	a1,a4,+00000010
	or	a7,a7,a5
	lbu	a5,a4,+00000014
	lbu	a4,a4,+00000020
	c.slli	a2,10
	or	a2,a2,a6
	c.slli	a4,18
	c.or	a4,a2
	srli	t3,a4,00000018
	c.swsp	t3,00000018
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.swsp	t3,00000094
	srli	t3,a4,00000008
	andi	a4,a4,+000000FF
	c.swsp	a4,00000090
	srli	a4,t1,00000018
	c.swsp	a4,00000010
	srli	a4,t1,00000010
	andi	a4,a4,+000000FF
	c.swsp	a4,0000008C
	srli	a4,t1,00000008
	andi	t3,t3,+000000FF
	andi	a4,a4,+000000FF
	andi	t1,t1,+000000FF
	c.swsp	t3,00000014
	c.swsp	a4,0000000C
	c.swsp	t1,00000088
	srli	a4,a0,00000018
	c.swsp	a4,00000008
	srli	a4,a0,00000010
	andi	a4,a4,+000000FF
	c.swsp	a4,00000084
	c.slli	a1,18
	srli	a4,a0,00000008
	c.slli	a5,18
	or	a5,a5,a7
	c.or	a1,a3
	andi	a4,a4,+000000FF
	andi	a0,a0,+000000FF
	c.swsp	a4,00000004
	c.swsp	a0,00000080
	srli	a4,a5,00000018
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	lui	a0,000230B3
	c.swsp	a4,00000000
	andi	a2,a2,+000000FF
	srli	a4,a1,00000018
	srli	a7,a7,00000010
	andi	a1,a1,+000000FF
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	c.srli	a3,00000010
	addi	a0,a0,-00000478
	jal	ra,0000000023082388
	c.mv	a1,s0
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.mv	a2,s1
	c.lwsp	t0,00000024
	lui	a0,000230B3
	addi	a0,a0,+00000290
	c.addi16sp	00000050
	jal	zero,0000000023082388

;; stateGlobalEnter: 23024582
stateGlobalEnter proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateGlobalAction: 23024590
stateGlobalAction proc
	lui	a0,000230B3
	addi	a0,a0,-0000014C
	jal	zero,0000000023082388

;; stateConnectingEnter: 2302459C
stateConnectingEnter proc
	c.mv	a1,a0
	lui	a0,000230B3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000130
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002307C270

;; stateSnifferGuard_ChannelSet: 230245BC
stateSnifferGuard_ChannelSet proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	bne	a0,a4,000000002302460E

l230245C6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a1,a5,+00000006
	lbu	a0,a5,+00000002
	lbu	a3,a5,+00000005
	lbu	a4,a5,+00000001
	c.slli	a1,08
	c.slli	a0,08
	c.or	a1,a3
	c.or	a0,a4
	lbu	a3,a5,+00000007
	lbu	a4,a5,+00000003
	c.slli	a3,10
	c.slli	a4,10
	c.or	a3,a1
	c.or	a4,a0
	lbu	a1,a5,+00000008
	lbu	a0,a5,+00000004
	c.slli	a1,18
	c.slli	a0,18
	c.or	a1,a3
	c.or	a0,a4
	jal	ra,0000000023021C2E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302460E:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_sniffer: 23024612
stateIdleGuard_sniffer proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,000000002302462C

l2302461C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023021BD4
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302462C:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPNoExit: 23024630
stateConnectedIPNoExit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,000230B3
	addi	a0,a0,+000002C4
	c.swsp	ra,00000084
	addi	s0,s0,+00000020
	jal	ra,0000000023082388
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023063ED2
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	c.addi	sp,00000010
	jal	zero,0000000023063ED2

;; stateDisconnect_action_idle: 2302466C
stateDisconnect_action_idle proc
	c.mv	a1,a0
	lui	a0,000230B3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000290
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,000230B3
	addi	a0,a0,-00000324
	jal	ra,0000000023082388
	lui	a5,00042024
	c.lwsp	a2,00000020
	lbu	a0,a5,-000000B4
	c.addi	sp,00000010
	jal	zero,0000000023021C4C

;; stateDisconnect_action_reconnect: 2302469A
stateDisconnect_action_reconnect proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,0000000023082388
	lui	a0,000230B3
	addi	a0,a0,-000002FC
	jal	ra,0000000023082388
	addi	s1,s0,+0000004D
	lui	a0,000230B3
	c.mv	a1,s1
	addi	a0,a0,-000002E0
	jal	ra,0000000023082388
	lbu	a1,s0,+0000006F
	lbu	a5,s0,+0000006E
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000070
	addi	a0,a0,-000002C8
	addi	s2,s0,+00000072
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000071
	addi	s3,s0,+000000B3
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lui	a0,000230B3
	c.mv	a1,s2
	addi	a0,a0,-000002AC
	jal	ra,0000000023082388
	lbu	a1,s0,+000000F5
	lbu	a5,s0,+000000F4
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000F6
	addi	a0,a0,-00000298
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000F7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lui	a0,000230B3
	c.mv	a1,s3
	addi	a0,a0,-00000280
	jal	ra,0000000023082388
	lbu	a1,s0,+000000F9
	lbu	a5,s0,+000000F8
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000FA
	addi	a0,a0,-0000026C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000FB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a6,s0,+000000FC
	lbu	a5,s0,+000000FD
	lbu	a4,s0,+000000FE
	lbu	a3,s0,+000000FF
	lbu	a2,s0,+00000100
	lbu	a1,s0,+00000101
	lui	a0,000230B3
	addi	a0,a0,-00000254
	jal	ra,0000000023082388
	lbu	a5,s0,+000000F9
	lbu	a3,s0,+000000F5
	lbu	a1,s0,+0000006F
	lbu	a4,s0,+000000F8
	lbu	a2,s0,+000000F4
	lbu	a0,s0,+0000006E
	c.slli	a5,08
	c.slli	a3,08
	c.slli	a1,08
	c.or	a5,a4
	c.or	a3,a2
	lbu	a4,s0,+000000FA
	lbu	a2,s0,+000000F6
	c.or	a1,a0
	lbu	a0,s0,+00000070
	c.slli	a4,10
	c.slli	a2,10
	c.slli	a0,10
	c.or	a4,a5
	c.or	a2,a3
	lbu	a5,s0,+000000FB
	lbu	a3,s0,+000000F7
	c.or	a0,a1
	lbu	a1,s0,+00000071
	c.slli	a5,18
	c.slli	a3,18
	c.slli	a1,18
	c.or	a1,a0
	c.swsp	zero,00000000
	addi	a6,s0,+000000FC
	c.or	a5,a4
	c.or	a3,a2
	c.mv	a4,s3
	c.mv	a2,s2
	c.mv	a0,s1
	c.li	a7,00000000
	jal	ra,0000000023022032
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a2,00000000
	c.li	a1,00000003
	c.li	a0,00000002
	c.addi16sp	00000030
	jal	zero,000000002307C270

;; ip_obtaining_timeout: 23024810
ip_obtaining_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230641E2
	lui	a0,000230B3
	addi	a0,a0,-000004CC
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230264AA

;; stateConnectedIPNoEnter: 2302482C
stateConnectedIPNoEnter proc
	c.addi16sp	FFFFFFC0
	c.mv	a1,a0
	c.swsp	a0,00000084
	lui	a0,000230B3
	addi	a0,a0,-00000130
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	jal	ra,0000000023082388
	c.lwsp	a2,000000A4
	lui	a4,00023025
	c.lui	a1,00004000
	addi	s0,a3,+00000020
	lui	a0,000230B3
	c.mv	a5,s0
	addi	a4,a4,-000007F0
	c.li	a2,00000000
	addi	a1,a1,-00000568
	addi	a0,a0,-00000408
	jal	ra,0000000023063E50
	jal	ra,00000000230629A4
	c.mv	a2,a0
	c.li	a1,00000001
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.mv	a0,s0
	jal	ra,0000000023063ED2
	jal	ra,0000000023063658
	lui	a5,00042024
	addi	a5,a5,-000000C4
	c.lw	a5,24(s1)
	lw	s3,a5,+0000001C
	lw	s2,a5,+00000020
	lw	s5,a5,+00000024
	lw	s4,a5,+00000028
	lui	s0,00042024
	jal	ra,000000002306366C
	addi	a1,s0,-00000098
	c.beqz	s1,0000000023024910

l230248AE:
	lui	a0,000230B3
	addi	a0,a0,-000003F4
	jal	ra,0000000023082388
	c.addi4spn	a1,00000014
	c.li	a0,00000000
	c.swsp	s5,00000088
	jal	ra,000000002306C324
	c.addi4spn	a1,00000014
	c.li	a0,00000001
	c.swsp	s4,00000088
	jal	ra,000000002306C324
	lui	a1,0002306E
	c.li	a2,00000000
	addi	a1,a1,-00000198
	addi	a0,s0,-00000098
	c.swsp	s1,00000088
	c.swsp	s3,0000000C
	c.swsp	s2,0000008C
	jal	ra,000000002306A96E
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	addi	a0,s0,-00000098
	jal	ra,000000002306A930

l230248F4:
	c.li	a2,00000000
	c.li	a1,00000004
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l23024910:
	lui	a0,000230B3
	addi	a0,a0,-000003D0
	jal	ra,0000000023082388
	addi	a0,s0,-00000098
	jal	ra,0000000023028442
	c.j	00000000230248F4

;; stateConnectedIPNoGuard_disconnect: 23024926
;;   Called from:
;;     23024944 (in stateConnectedIPYesGuard_disconnect)
stateConnectedIPNoGuard_disconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023024940

l23024930:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023021B9C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23024940:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYesGuard_disconnect: 23024944
stateConnectedIPYesGuard_disconnect proc
	jal	zero,0000000023024926

;; stateConnectedIPYesGuard_rcconfig: 23024948
stateConnectedIPYesGuard_rcconfig proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	lbu	a5,s0,+00000000
	bne	a0,a5,0000000023024992

l23024958:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,-00000394
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a5,s0,+00000002
	lbu	a1,s0,+00000001
	c.li	a0,00000000
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,0000000023021C96

l23024992:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateIdleAction_connect: 2302499C
stateIdleAction_connect proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s0,00000014
	c.lw	a1,4(s0)
	c.mv	s4,a0
	lui	a0,000230B3
	sb	zero,s0,+0000002D
	sb	zero,s0,+00000072
	addi	a0,a0,+0000019C
	c.mv	s5,a2
	jal	ra,0000000023082388
	addi	s1,s0,+0000000D
	lui	a0,000230B3
	c.mv	a1,s1
	addi	a0,a0,-000002E0
	jal	ra,0000000023082388
	lbu	a1,s0,+0000002F
	lbu	a5,s0,+0000002E
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000030
	addi	a0,a0,-000002C8
	addi	s2,s0,+00000032
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000031
	addi	s3,s0,+00000073
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lui	a0,000230B3
	c.mv	a1,s2
	addi	a0,a0,-000002AC
	jal	ra,0000000023082388
	lbu	a1,s0,+000000B5
	lbu	a5,s0,+000000B4
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000B6
	addi	a0,a0,-00000298
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000B7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lui	a0,000230B3
	c.mv	a1,s3
	addi	a0,a0,-00000280
	jal	ra,0000000023082388
	lbu	a1,s0,+000000B9
	lbu	a5,s0,+000000B8
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000BA
	addi	a0,a0,-0000026C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000BB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a1,s0,+000000C2
	lui	a0,000230B3
	addi	a0,a0,+000001B8
	jal	ra,0000000023082388
	lbu	a5,s0,+000000C4
	lbu	a1,s0,+000000C3
	lui	a0,000230B3
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,a0,+000001D8
	jal	ra,0000000023082388
	lbu	a5,s0,+000000BD
	lbu	a6,s0,+000000BC
	lbu	a4,s0,+000000BE
	lbu	a3,s0,+000000BF
	lbu	a2,s0,+000000C0
	lbu	a1,s0,+000000C1
	lui	a0,000230B3
	addi	a0,a0,-00000254
	jal	ra,0000000023082388
	lbu	a5,s0,+000000C5
	c.bnez	a5,0000000023024B82

l23024AC6:
	lui	a1,000230B3
	addi	a1,a1,+00000194

l23024ACE:
	lui	a0,000230B3
	addi	a0,a0,+000001F8
	jal	ra,0000000023082388
	lui	a0,00042024
	c.mv	a1,s1
	c.li	a2,FFFFFFFF
	addi	a0,a0,-000000C4
	jal	ra,0000000023028208
	lui	a0,000230B3
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,+00000290
	jal	ra,0000000023082388
	lbu	a5,s0,+000000B9
	lbu	a3,s0,+000000B5
	lbu	a1,s0,+0000002F
	lbu	a4,s0,+000000B8
	lbu	a2,s0,+000000B4
	lbu	a0,s0,+0000002E
	c.slli	a5,08
	c.slli	a3,08
	c.slli	a1,08
	c.or	a5,a4
	c.or	a3,a2
	lbu	a4,s0,+000000BA
	lbu	a2,s0,+000000B6
	c.or	a1,a0
	lbu	a0,s0,+00000030
	lbu	a6,s0,+000000C4
	c.slli	a4,10
	c.slli	a2,10
	c.slli	a0,10
	lbu	t1,s0,+000000C3
	c.or	a4,a5
	c.or	a2,a3
	lbu	a5,s0,+000000BB
	lbu	a3,s0,+000000B7
	c.or	a0,a1
	lbu	a1,s0,+00000031
	lbu	a7,s0,+000000C2
	c.slli	a6,08
	or	a6,a6,t1
	c.slli	a5,18
	c.slli	a3,18
	c.slli	a1,18
	c.swsp	a6,00000000
	c.or	a5,a4
	addi	a6,s0,+000000BC
	c.mv	a4,s3
	c.or	a3,a2
	c.or	a1,a0
	c.mv	a2,s2
	c.mv	a0,s1
	jal	ra,0000000023022032
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23024B82:
	lui	a1,000230B3
	addi	a1,a1,+0000018C
	c.j	0000000023024ACE

;; stateGlobal_cfg_req: 23024B8C
stateGlobal_cfg_req proc
	c.lw	a1,4(a4)
	c.li	a5,00000016
	lbu	a3,a4,+00000000
	bne	a3,a5,0000000023024C36

l23024B98:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a3,a4,+0000001A
	lbu	a2,a4,+00000016
	lbu	a1,a4,+00000012
	lbu	a0,a4,+0000000E
	lbu	t3,a4,+00000019
	lbu	t1,a4,+00000015
	lbu	a7,a4,+00000011
	lbu	a6,a4,+0000000D
	c.slli	a3,08
	c.slli	a2,08
	c.slli	a1,08
	c.slli	a0,08
	or	a3,a3,t3
	or	a2,a2,t1
	lbu	t3,a4,+0000001B
	lbu	t1,a4,+00000017
	or	a1,a1,a7
	or	a0,a0,a6
	lbu	a7,a4,+00000013
	lbu	a6,a4,+0000000F
	c.slli	t3,10
	c.slli	t1,10
	c.slli	a7,10
	c.slli	a6,10
	or	t3,t3,a3
	or	t1,t1,a2
	lbu	a3,a4,+0000001C
	lbu	a2,a4,+00000018
	or	a7,a7,a1
	or	a6,a6,a0
	lbu	a1,a4,+00000014
	lbu	a0,a4,+00000010
	c.slli	a3,18
	c.slli	a2,18
	c.slli	a1,18
	c.slli	a0,18
	c.li	a5,00000000
	addi	a4,a4,+00000021
	or	a3,a3,t3
	or	a2,a2,t1
	or	a1,a1,a7
	or	a0,a0,a6
	jal	ra,0000000023021FD6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23024C36:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_fw_powersaving: 23024C3A
stateGlobalGuard_fw_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,00000010
	lbu	a4,s0,+00000000
	bne	a4,a5,0000000023024C94

l23024C4C:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,+00000024
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a0,s0,+00000002
	lbu	a5,s0,+00000001
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+00000003
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+00000004
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,0000000023021BB8

l23024C94:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_conf_max_sta: 23024C9E
stateGlobalGuard_conf_max_sta proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,0000000A
	lbu	a4,s0,+00000000
	bne	a4,a5,0000000023024CE0

l23024CB0:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,-0000007C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a0,s0,+00000001
	jal	ra,0000000023021FC8

l23024CE0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_AP: 23024CEA
stateGlobalGuard_AP proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,4(s0)
	c.li	a5,00000008
	lbu	a4,s0,+00000000
	bne	a4,a5,0000000023024D2E

l23024D02:
	lui	a2,00042024
	lui	s1,00042024
	addi	a2,a2,-00000044
	addi	a1,s1,-00000028
	c.li	a0,00000000
	jal	ra,0000000023021CC6
	c.beqz	a0,0000000023024D3E

l23024D1A:
	lui	a1,000230B3
	lui	a0,000230B3
	addi	a1,a1,-0000056C
	addi	a0,a0,-00000110
	jal	ra,0000000023082388

l23024D2E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23024D3E:
	lui	a1,00023070
	c.li	a2,00000000
	addi	a1,a1,-000000BE
	addi	a0,s1,-00000028
	jal	ra,000000002306A96E
	lui	a1,00023077
	c.li	a2,00000000
	addi	a1,a1,+000004F0
	addi	a0,s1,-00000028
	jal	ra,000000002306A96E
	addi	s2,s0,+00000011
	lui	a0,000230B3
	c.mv	a1,s2
	addi	a0,a0,-000000EC
	jal	ra,0000000023082388
	addi	s3,s0,+00000037
	lui	a0,000230B3
	c.mv	a1,s3
	addi	a0,a0,-000000C8
	jal	ra,0000000023082388
	lbu	a1,s0,+0000000E
	lbu	a5,s0,+0000000D
	lui	a0,000230B3
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+0000000F
	addi	a0,a0,-000000A4
	lui	s1,00042024
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000010
	addi	s1,s1,-000000C4
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023082388
	lbu	a2,s0,+0000000E
	lbu	a5,s0,+0000000D
	lbu	a4,s0,+00000032
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000F
	lbu	a3,s1,+00000080
	c.mv	a1,s3
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+00000010
	c.mv	a0,s2
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023021D9A
	c.li	a5,00000001
	c.sw	s1,8(a5)
	jal	ra,000000002305F0D0
	c.li	a2,00000000
	c.li	a1,0000000B
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.j	0000000023024D2E

;; stateGlobalGuard_scan_beacon: 23024DF6
stateGlobalGuard_scan_beacon proc
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
	c.swsp	s11,00000084
	c.lw	a1,4(s0)
	lbu	a5,s0,+00000000
	bne	a0,a5,0000000023024FA8

l23024E1C:
	lui	a0,00042024
	addi	a5,a0,-000000C4
	c.lui	a3,00001000
	c.add	a5,a3
	lbu	a4,s0,+0000003B
	lw	a5,a5,+000007C4
	lui	s6,00042025
	addi	s2,a0,-000000C4
	addi	s6,s6,-000000C4
	blt	a5,a4,0000000023024FA8

l23024E40:
	beq	a4,zero,0000000023024FA8

l23024E44:
	lbu	a5,s0,+0000000D
	c.bnez	a5,0000000023024E54

l23024E4A:
	lw	a5,s6,+000007CC
	c.andi	a5,00000001
	beq	a5,zero,0000000023024FA8

l23024E54:
	jal	ra,00000000230629A4
	c.mv	s5,a0
	c.mv	s4,s2
	c.li	s8,00000000
	c.li	s7,FFFFFFFF
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s3,00000000
	addi	s10,s0,+0000000D
	addi	s11,s0,+00000035

l23024E6E:
	lbu	a3,s4,+000002AA
	lw	a4,s6,+000007C4
	bge	a4,a3,0000000023024F1E

l23024E7A:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	a0,s4,+0000027C
	jal	ra,00000000230A3A68
	sb	zero,s4,+000002B0

l23024E8C:
	c.mv	s9,s3

l23024E8E:
	c.addi	s3,00000001
	addi	a5,zero,+00000032
	addi	s4,s4,+0000003C
	bne	s3,a5,0000000023024E6E

l23024E9C:
	c.li	a4,FFFFFFFF
	bne	s9,a4,0000000023024FDE

l23024EA2:
	beq	s1,s9,0000000023024FA8

l23024EA6:
	addi	a0,zero,+0000003C
	add	s1,s1,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	s4,s1,+0000027C
	c.add	s4,s2
	c.mv	a0,s4
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000020
	addi	a1,s0,+0000000D
	c.mv	a0,s4
	add	s3,s2,s1
	jal	ra,00000000230A439C
	c.mv	a0,s4
	sb	zero,s3,+0000029C
	jal	ra,00000000230A4220
	addi	s1,s1,+000002A4
	sw	a0,s3,+000002A0
	c.li	a2,00000006
	addi	a1,s0,+00000035
	add	a0,s2,s1
	jal	ra,00000000230A382C
	lbu	a5,s0,+0000003B
	sb	a5,s3,+000002AA
	lb	a5,s0,+0000003C
	sw	s5,s3,+000002B4
	sb	a5,s3,+000002AB
	lbu	a5,s0,+0000003F
	sb	a5,s3,+000002AE
	lbu	a5,s0,+00000040
	sb	a5,s3,+000002AF
	c.li	a5,00000001
	sb	a5,s3,+000002B0
	c.j	0000000023024FA8

l23024F1E:
	lbu	a4,s4,+000002B0
	c.beqz	a4,0000000023024E8C

l23024F24:
	lw	a4,s4,+000002B4
	beq	s8,zero,0000000023024F34

l23024F2C:
	sub	a3,a4,s7
	bge	a3,zero,0000000023024F38

l23024F34:
	c.mv	s7,a4
	c.mv	s1,s3

l23024F38:
	c.li	a2,00000006
	c.mv	a1,s11
	addi	a0,s4,+000002A4
	jal	ra,00000000230A37A4
	c.li	s8,00000001
	c.bnez	a0,0000000023024E8E

l23024F48:
	addi	a1,s4,+0000027C
	c.mv	a0,s10
	jal	ra,00000000230A3FF4
	c.bnez	a0,0000000023024E8E

l23024F54:
	addi	s1,zero,+0000003C
	add	s1,s3,s1
	lb	a4,s0,+0000003C
	c.add	s1,s2
	lb	a5,s1,+000002AB
	blt	a4,a5,0000000023024FC8

l23024F6A:
	addi	a0,zero,+0000003C
	add	a0,s3,a0
	lbu	a5,s0,+0000003B
	c.add	a0,s2
	sb	a5,a0,+000002AA
	lb	a5,s0,+0000003C
	sb	a5,a0,+000002AB
	lb	a5,s0,+0000003D
	sb	a5,a0,+000002AC
	lb	a5,s0,+0000003E
	sw	s5,a0,+000002B4
	sb	a5,a0,+000002AD
	lbu	a5,s0,+0000003F
	sb	a5,a0,+000002AE
	lbu	a5,s0,+00000040
	sb	a5,a0,+000002AF

l23024FA8:
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
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l23024FC8:
	jal	ra,00000000230629A4
	lw	a5,s1,+000002B4
	c.sub	a0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000449
	bge	a5,a0,0000000023024FA8

l23024FDC:
	c.j	0000000023024F6A

l23024FDE:
	c.mv	s1,s9
	c.j	0000000023024EA6

;; __reload_tsen: 23024FE2
__reload_tsen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230641E2
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302651C

;; event_cb_wifi_event_mgmr: 23024FF2
event_cb_wifi_event_mgmr proc
	lhu	a4,a0,+00000006
	c.li	a5,00000014
	bne	a4,a5,000000002302500E

l23024FFC:
	lui	a1,00023025
	c.li	a2,00000000
	addi	a1,a1,+00000010
	addi	a0,zero,+00000055
	jal	zero,000000002307B972

l2302500E:
	c.jr	ra

;; trigger_auto_denoise: 23025010
trigger_auto_denoise proc
	lui	a5,0004200F
	lw	a5,a5,+00000390
	c.beqz	a5,0000000023025038

l2302501A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026870
	c.lwsp	a2,00000020
	lui	a1,00023025
	c.li	a2,00000000
	addi	a1,a1,+00000010
	addi	a0,zero,+00000055
	c.addi	sp,00000010
	jal	zero,000000002307B972

l23025038:
	c.jr	ra

;; stateDisconnect_exit: 2302503A
stateDisconnect_exit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,000230B3
	addi	a0,a0,+000002C4
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023082388
	lbu	a5,s0,+0000004C
	c.beqz	a5,0000000023025092

l23025058:
	lui	a0,000230B3
	addi	a0,a0,-000001AC
	jal	ra,0000000023082388
	addi	s1,s0,+00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,0000000023063ED2
	c.mv	a0,s1
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,0000000023063ED2
	c.lwsp	a2,00000020
	sb	zero,s0,+0000004C
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23025092:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230B3
	addi	a0,a0,-0000019C
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; disconnect_retry: 230250A6
disconnect_retry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230641E2
	addi	a1,a0,+0000004D
	lui	a0,00042024
	addi	a0,a0,-000000C4
	jal	ra,0000000023028318
	c.beqz	a0,00000000230250D0

l230250C0:
	c.lwsp	a2,00000020
	lui	a0,000230B3
	addi	a0,a0,-00000540
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230250D0:
	lui	a0,000230B3
	addi	a0,a0,-000004F8
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023026038

;; stateGlobalGuard_fw_disconnect: 230250E4
stateGlobalGuard_fw_disconnect proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,0000000F
	bne	a4,a5,000000002302510C

l230250F0:
	lui	a0,000230B3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000010
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	jal	ra,0000000023021B9C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302510C:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYes_exit: 23025110
stateConnectedIPYes_exit proc
	c.mv	a1,a0
	lui	a0,000230B3
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+000002C4
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	zero,00000084
	jal	ra,0000000023082388
	lui	s0,00042024
	lui	a1,0002306E
	c.li	a2,00000000
	addi	a1,a1,-00000198
	addi	a0,s0,-00000098
	jal	ra,000000002306A96E
	c.addi4spn	a3,0000000C
	c.mv	a2,a3
	c.mv	a1,a3
	addi	a0,s0,-00000098
	jal	ra,000000002306A930
	lui	a5,0004200F
	addi	a5,a5,+00000390
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023025160

l23025156:
	c.li	a0,00000000
	sw	zero,a5,+00000000
	jal	ra,0000000023021BC6

l23025160:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; stateGlobalGuard_denoise: 23025168
stateGlobalGuard_denoise proc
	c.lw	a1,4(a3)
	c.li	a5,0000000C
	lbu	a4,a3,+00000000
	bne	a4,a5,00000000230251E8

l23025174:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a3,+00000002
	lbu	a5,a3,+00000001
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+00000003
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a3,+00000004
	c.slli	a5,18
	c.or	a5,a4
	c.beqz	a5,00000000230251D8

l23025196:
	lui	a4,00042025
	addi	a4,a4,-000000C4
	lw	a4,a4,+00000718
	lui	a5,000230B3
	addi	a5,a5,-000003B0
	bne	a4,a5,00000000230251D0

l230251AE:
	lui	a5,0004200F
	addi	a5,a5,+00000390
	c.lw	a5,0(a4)
	c.li	a0,00000003
	c.bnez	a4,00000000230251E2

l230251BC:
	c.li	a4,00000001
	c.li	a0,00000001
	c.sw	a5,0(a4)
	jal	ra,0000000023021BC6
	c.li	a2,00000000
	c.li	a1,00000014
	c.li	a0,00000002
	jal	ra,000000002307C270

l230251D0:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230251D8:
	lui	a5,0004200F
	sw	zero,a5,+00000390
	c.li	a0,00000000

l230251E2:
	jal	ra,0000000023021BC6
	c.j	00000000230251D0

l230251E8:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_connect: 230251EC
stateIdleGuard_connect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023025232

l230251F6:
	lui	a2,00042024
	lui	a1,00042024
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-000000B4
	addi	a1,a1,-00000098
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023021CC6
	c.li	a5,00000001
	c.beqz	a0,000000002302522A

l23025214:
	lui	a1,000230B3
	lui	a0,000230B3
	addi	a1,a1,-00000558
	addi	a0,a0,+00000218
	jal	ra,0000000023082388
	c.li	a5,00000000

l2302522A:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23025232:
	c.li	a5,00000000
	c.mv	a0,a5
	c.jr	ra

;; stateIfaceDownGuard_phyup: 23025238
stateIfaceDownGuard_phyup proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	beq	a0,a5,000000002302525A

l23025246:
	lui	a0,000230B3
	addi	a0,a0,+00000258
	jal	ra,0000000023082388
	c.li	a0,00000000

l23025254:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302525A:
	jal	ra,0000000023021BFA
	sltiu	a0,a0,+00000001
	c.j	0000000023025254

;; stateSnifferGuard_raw_send: 23025264
stateSnifferGuard_raw_send proc
	lui	a5,00042025
	addi	a5,a5,-000000C4
	lw	a4,a5,+00000718
	lui	a5,000230B3
	addi	a5,a5,+00000170
	beq	a4,a5,00000000230252DC

l2302527C:
	lui	a5,000230B3
	addi	a5,a5,+0000023C
	beq	a4,a5,00000000230252DC

l23025288:
	c.lw	a1,4(a5)
	c.li	a4,00000015
	lbu	a3,a5,+00000000
	bne	a3,a4,00000000230252DC

l23025294:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a1,a5,+00000006
	lbu	a0,a5,+00000002
	lbu	a3,a5,+00000005
	lbu	a4,a5,+00000001
	c.slli	a1,08
	c.slli	a0,08
	c.or	a1,a3
	c.or	a0,a4
	lbu	a3,a5,+00000007
	lbu	a4,a5,+00000003
	c.slli	a3,10
	c.slli	a4,10
	c.or	a3,a1
	c.or	a4,a0
	lbu	a1,a5,+00000008
	lbu	a0,a5,+00000004
	c.slli	a1,18
	c.slli	a0,18
	c.or	a1,a3
	c.or	a0,a4
	jal	ra,0000000023021C86
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230252DC:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_stop: 230252E0
stateGlobalGuard_stop proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000009
	bne	a4,a5,000000002302538E

l230252EC:
	c.addi	sp,FFFFFFF0
	lui	a0,000230B3
	c.swsp	s0,00000004
	addi	a0,a0,+000000A0
	lui	s0,00042024
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	s0,s0,-000000C4
	jal	ra,0000000023082388
	lbu	a0,s0,+00000080
	lui	s1,00042024
	jal	ra,0000000023021E50
	lui	a0,000230B3
	addi	a0,a0,+000000C4
	jal	ra,0000000023082388
	jal	ra,0000000023021F84
	lui	a0,000230B3
	addi	a0,a0,+000000F8
	jal	ra,0000000023082388
	lbu	a0,s0,+00000080
	jal	ra,0000000023021C4C
	lui	a0,000230B3
	addi	a0,a0,+0000011C
	jal	ra,0000000023082388
	lui	a2,00023077
	addi	a2,a2,+000004A2
	c.li	a1,00000000
	addi	a0,s1,-00000028
	jal	ra,000000002306A96E
	lui	a0,000230B3
	addi	a0,a0,+00000148
	jal	ra,0000000023082388
	lui	a1,00023070
	c.li	a2,00000000
	addi	a1,a1,-0000014C
	addi	a0,s1,-00000028
	jal	ra,000000002306A96E
	c.li	a2,00000000
	c.li	a1,0000000C
	c.li	a0,00000002
	sw	zero,s0,+00000008
	jal	ra,000000002307C270
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302538E:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_enable_autoreconnect: 23025392
stateGlobalGuard_enable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,00000000230253C2

l2302539C:
	lui	a0,000230B3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000008
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lui	a0,00042024
	c.li	a1,FFFFFFFF
	addi	a0,a0,-000000C4
	jal	ra,0000000023028436
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230253C2:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_disable_autoreconnect: 230253C6
stateGlobalGuard_disable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,000000002302543A

l230253D0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042024
	c.swsp	s1,00000080
	c.lui	a4,00001000
	addi	s1,s0,-000000C4
	c.swsp	ra,00000084
	c.add	a4,s1
	lw	a4,a4,+00000718
	lui	a5,000230B3
	addi	a5,a5,-00000340
	bne	a4,a5,0000000023025420

l230253F4:
	lui	a0,000230B3
	addi	a0,a0,-00000050
	jal	ra,0000000023082388
	lui	a0,000230B3
	addi	a0,a0,-00000324
	jal	ra,0000000023082388
	lbu	a0,s1,+00000010
	jal	ra,0000000023021C4C
	c.li	a0,00000001

l23025416:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23025420:
	lui	a0,000230B3
	addi	a0,a0,-00000024
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFF
	addi	a0,s0,-000000C4
	jal	ra,0000000023028428
	c.li	a0,00000000
	c.j	0000000023025416

l2302543A:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_enter: 2302543E
stateDisconnect_enter proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	a1,a0
	c.mv	s1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	zero,00000084
	lui	s0,00042024
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFF
	addi	a0,s0,-000000C4
	jal	ra,000000002302841A
	c.beqz	a0,0000000023025514

l2302546A:
	addi	s2,s1,+00000020
	lui	a4,00023025
	lui	a0,000230B3
	c.mv	a5,s2
	addi	a4,a4,+000000A6
	c.mv	a3,s1
	c.li	a2,00000000
	addi	a1,zero,+000007D0
	addi	a0,a0,-00000224
	jal	ra,0000000023063E50
	lui	a0,000230B3
	addi	a0,a0,-00000214
	jal	ra,0000000023082388
	jal	ra,00000000230629A4
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	sb	a5,s1,+0000004C

l230254B0:
	c.lui	a5,00001000
	addi	s0,s0,-000000C4
	c.add	s0,a5
	lhu	a2,s0,+00000750
	c.li	a1,00000005
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.addi4spn	a0,0000000C
	jal	ra,0000000023019530
	c.lwsp	a2,000000E4
	lui	s0,00042025
	addi	s0,s0,-000000C4
	c.or	a0,a5
	c.bnez	a0,00000000230254E6

l230254D8:
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,00000002
	jal	ra,000000002307C270
	jal	ra,0000000023019568

l230254E6:
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023025508

l230254EE:
	lui	a0,000230B3
	addi	a0,a0,-000001CC
	jal	ra,0000000023082388
	jal	ra,0000000023021FEE
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23025508:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23025514:
	lui	a0,000230B3
	addi	a0,a0,-000001F0
	jal	ra,0000000023082388
	c.j	00000000230254B0

;; stateGlobalGuard_fw_scan: 23025522
stateGlobalGuard_fw_scan proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000012
	bne	a4,a5,00000000230255DC

l2302552E:
	c.addi	sp,FFFFFFF0
	lui	a5,00042025
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a5,-000000C4
	lw	a5,a5,+00000718
	lui	a4,000230B3
	lui	s0,00042025
	addi	a4,a4,-0000035C
	addi	s0,s0,-000000C4
	beq	a5,a4,000000002302556C

l23025554:
	lui	a4,000230B3
	addi	a4,a4,-00000494
	beq	a5,a4,000000002302556C

l23025560:
	lui	a4,000230B3
	addi	a4,a4,-00000340
	bne	a5,a4,000000002302558E

l2302556C:
	lui	a0,000230B3
	addi	a0,a0,+00000050
	jal	ra,0000000023082388
	lw	a5,s0,+000007C8
	ori	a5,a5,+00000001
	sw	a5,s0,+000007C8

l23025584:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302558E:
	lui	a4,000230B3
	addi	a4,a4,+00000170
	beq	a5,a4,00000000230255CA

l2302559A:
	lui	a4,000230B3
	addi	a4,a4,-000003B0
	beq	a5,a4,00000000230255CA

l230255A6:
	lui	a4,000230B3
	addi	a4,a4,+00000274
	beq	a5,a4,00000000230255CA

l230255B2:
	lui	a0,000230B3
	addi	a0,a0,+00000070
	jal	ra,0000000023082388
	c.li	a2,00000001
	c.li	a1,00000009
	c.li	a0,00000002
	jal	ra,000000002307C270
	c.j	0000000023025584

l230255CA:
	lui	a0,000230B3
	addi	a0,a0,+00000088
	jal	ra,0000000023082388
	jal	ra,0000000023021FEE
	c.j	0000000023025584

l230255DC:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_guard: 230255E0
stateDisconnect_guard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateGlobalExit: 230255EE
stateGlobalExit proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateSnifferEnter: 230255FC
stateSnifferEnter proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateConnectingGuard: 2302560A
stateConnectingGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectingAction_connected: 23025618
stateConnectingAction_connected proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateConnectingAction_disconnect: 23025626
stateConnectingAction_disconnect proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateConnectingExit: 23025634
stateConnectingExit proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+000002C4
	jal	zero,0000000023082388

;; stateIdleAction_sniffer: 23025642
stateIdleAction_sniffer proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateIdleEnter: 23025650
stateIdleEnter proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateIdleExit: 2302565E
stateIdleExit proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateIfaceDownAction_phyup: 2302566C
stateIfaceDownAction_phyup proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateIfaceDownEnter: 2302567A
stateIfaceDownEnter proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,-00000130
	jal	zero,0000000023082388

;; stateIfaceDownExit: 23025688
stateIfaceDownExit proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+000002C4
	jal	zero,0000000023082388

;; stateConnectedIPNoGuard: 23025696
stateConnectedIPNoGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPNoAction_disconnect: 230256A4
stateConnectedIPNoAction_disconnect proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateConnectedIPYesGuard: 230256B2
stateConnectedIPYesGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYes_action: 230256C0
stateConnectedIPYes_action proc
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+00000290
	jal	zero,0000000023082388

;; stateConnectedIPYes_enter: 230256CE
stateConnectedIPYes_enter proc
	c.mv	a1,a0
	lui	a0,000230B3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000130
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023082388
	c.li	a2,00000000
	c.li	a1,00000007
	c.li	a0,00000002
	lui	s0,00042025
	jal	ra,000000002307C270
	addi	s0,s0,-000000C4
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023025716

l230256FC:
	lui	a0,000230B3
	addi	a0,a0,-000001CC
	jal	ra,0000000023082388
	jal	ra,0000000023021FEE
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23025716:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_auth_to_str: 2302571E
;;   Called from:
;;     2302786E (in wifi_mgmr_cli_scanlist)
;;     2307D63C (in scan)
wifi_mgmr_auth_to_str proc
	c.li	a5,00000005
	bltu	a5,a0,0000000023025766

l23025724:
	lui	a5,000230B3
	addi	a5,a5,-00000584
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
23025734             37 35 0B 23 13 05 05 37 82 80 37 35     75.#...7..75
23025740 0B 23 13 05 45 33 82 80 37 35 0B 23 13 05 C5 33 .#..E3..75.#...3
23025750 82 80 37 35 0B 23 13 05 85 34 82 80 37 35 0B 23 ..75.#...4..75.#
23025760 13 05 C5 35 82 80                               ...5..         

l23025766:
	lui	a0,000230B3
	addi	a0,a0,+0000032C
	c.jr	ra
23025770 37 35 0B 23 13 05 45 32 82 80                   75.#..E2..     

;; wifi_mgmr_cipher_to_str: 2302577A
;;   Called from:
;;     23027878 (in wifi_mgmr_cli_scanlist)
wifi_mgmr_cipher_to_str proc
	c.beqz	a0,000000002302579E

l2302577C:
	c.li	a5,00000001
	beq	a0,a5,00000000230257A8

l23025782:
	c.li	a5,00000002
	beq	a0,a5,00000000230257B2

l23025788:
	c.li	a5,00000003
	beq	a0,a5,00000000230257BC

l2302578E:
	c.li	a5,00000004
	beq	a0,a5,00000000230257C6

l23025794:
	lui	a0,000230B3
	addi	a0,a0,+0000032C
	c.jr	ra

l2302579E:
	lui	a0,000230B3
	addi	a0,a0,+00000388
	c.jr	ra

l230257A8:
	lui	a0,000230B3
	addi	a0,a0,+00000370
	c.jr	ra

l230257B2:
	lui	a0,000230B3
	addi	a0,a0,+00000390
	c.jr	ra

l230257BC:
	lui	a0,000230B3
	addi	a0,a0,+00000374
	c.jr	ra

l230257C6:
	lui	a0,000230B3
	addi	a0,a0,+0000037C
	c.jr	ra

;; wifi_mgmr_event_notify: 230257D0
;;   Called from:
;;     23025D0C (in wifi_mgmr_api_connect)
;;     23025E96 (in wifi_mgmr_api_cfg_req)
;;     23025FB4 (in wifi_mgmr_api_ip_got)
;;     2302602C (in wifi_mgmr_api_ip_update)
;;     2302609E (in wifi_mgmr_api_reconnect)
;;     23026110 (in wifi_mgmr_api_disable_autoreconnect)
;;     23026182 (in wifi_mgmr_api_enable_autoreconnect)
;;     230261F4 (in wifi_mgmr_api_disconnect)
;;     2302625E (in wifi_mgmr_api_rate_config)
;;     230262C8 (in wifi_mgmr_api_conf_max_sta)
;;     2302633C (in wifi_mgmr_api_ifaceup)
;;     230263AE (in wifi_mgmr_api_sniffer_enable)
;;     23026496 (in wifi_mgmr_api_scan_item_beacon)
;;     23026510 (in wifi_mgmr_api_fw_disconnect)
;;     23026580 (in wifi_mgmr_api_fw_tsen_reload)
;;     230265F2 (in wifi_mgmr_api_fw_scan)
;;     23026664 (in wifi_mgmr_api_fw_powersaving)
;;     23026786 (in wifi_mgmr_api_ap_start)
;;     230267F4 (in wifi_mgmr_api_ap_stop)
;;     23026864 (in wifi_mgmr_api_idle)
;;     230268CA (in wifi_mgmr_api_denoise_enable)
;;     2302692E (in wifi_mgmr_api_denoise_disable)
;;     2302699E (in wifi_mgmr_api_raw_send)
;;     23028532 (in cb_disconnect_ind)
;;     230285B8 (in cb_connect_ind)
wifi_mgmr_event_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	lui	s1,00042024
	lui	s2,000230B3

l230257E4:
	lbu	a5,s1,-000000C4
	c.beqz	a5,0000000023025854

l230257EA:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,00042025
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.li	a3,FFFFFFFF
	c.mv	a1,s0
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	addi	a0,a0,-00000290
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023061E42
	c.li	a5,00000000
	c.bnez	a0,0000000023025846

l2302581A:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,000230B3
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.mv	a1,s0
	addi	a0,a0,+000003B4
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023082388
	c.li	a5,FFFFFFFF

l23025846:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23025854:
	addi	a0,s2,+00000394
	jal	ra,0000000023082388
	c.li	a0,00000014
	jal	ra,0000000023062CC4
	c.j	00000000230257E4

;; wifi_mgmr_start: 23025864
;;   Called from:
;;     230259BE (in _wifi_mgmr_entry)
wifi_mgmr_start proc
	c.addi16sp	FFFFFEE0
	sw	s0,sp,+00000118
	lui	a2,000230B3
	lui	a1,000230B3
	lui	s0,00042025
	c.li	a5,00000001
	addi	a2,a2,-00000184
	addi	a1,a1,+0000023C
	sw	s4,sp,+00000108
	addi	a0,s0,+00000654
	addi	s4,sp,+00000019
	sw	ra,sp,+0000011C
	c.swsp	a5,00000008
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s3,sp,+0000010C
	sw	s5,sp,+00000104
	c.swsp	s4,00000088
	jal	ra,0000000023028B82
	jal	ra,0000000023028654
	lui	a1,00023025
	c.li	a2,00000000
	addi	a1,a1,-0000000E
	c.li	a0,00000002
	jal	ra,000000002307C2A4
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,00000002
	jal	ra,000000002307C270
	addi	a1,zero,+000000FF
	addi	a0,zero,+000000FF
	jal	ra,0000000023067ABA
	lui	a0,000230B3
	addi	a0,a0,+000003DC
	jal	ra,0000000023082388
	lui	a3,0004200D
	addi	s1,a3,+0000043C
	addi	s1,s1,+00000020
	lui	a4,00023025
	c.lui	a1,00002000
	lui	a0,000230B3
	c.mv	a5,s1
	addi	a4,a4,-0000001E
	addi	a3,a3,+0000043C
	c.li	a2,00000001
	addi	a1,a1,+00000710
	addi	a0,a0,+000003F4
	jal	ra,0000000023063E50
	jal	ra,00000000230629A4
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.mv	a0,s1
	c.li	a3,00000000
	c.li	a1,00000001
	lui	s1,00042025
	lui	s2,000230B3
	lui	s3,000230B3
	jal	ra,0000000023063ED2
	addi	s1,s1,-000000C4
	addi	s2,s2,-0000035C
	addi	s3,s3,-00000340

l23025936:
	lui	s5,00042025

l2302593A:
	c.li	a3,FFFFFFFF
	addi	a2,zero,+000000E0
	c.mv	a1,s4
	addi	a0,s5,-00000290
	jal	ra,000000002306201A
	c.beqz	a0,000000002302593A

l2302594C:
	lbu	a4,sp,+00000019
	c.li	a3,0000000D
	bne	a4,a3,000000002302599E

l23025956:
	lw	a5,s1,+00000718
	sh	zero,sp,+0000000E
	beq	a5,s2,000000002302598A

l23025962:
	beq	a5,s3,000000002302598A

l23025966:
	lui	a4,000230B3
	addi	a4,a4,-000003B0
	beq	a5,a4,000000002302598A

l23025972:
	lui	a4,000230B3
	addi	a4,a4,+00000274
	beq	a5,a4,000000002302598A

l2302597E:
	lui	a4,000230B3
	addi	a4,a4,-00000494
	bne	a5,a4,0000000023025936

l2302598A:
	c.li	a1,00000000
	addi	a0,sp,+0000000E
	jal	ra,00000000230697D2
	lh	a0,sp,+0000000E
	jal	ra,0000000023002E38
	c.j	0000000023025936

l2302599E:
	c.li	a5,00000001
	bgeu	a3,a4,00000000230259AC

l230259A4:
	c.li	a5,00000016
	sltu	a5,a5,a4
	c.slli	a5,01

l230259AC:
	c.addi4spn	a1,00000010
	addi	a0,s0,+00000654
	c.swsp	a5,00000008
	jal	ra,0000000023028B8E
	c.j	0000000023025936

;; _wifi_mgmr_entry: 230259BA
_wifi_mgmr_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025864

;; wifi_mgmr_start_background: 230259C2
;;   Called from:
;;     23000518 (in event_cb_wifi_event)
;;     230259BE (in _wifi_mgmr_entry)
wifi_mgmr_start_background proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,00000000230279D8
	lui	a1,000230B3
	lui	a0,00023026
	c.addi4spn	a5,0000000C
	c.li	a4,0000001C
	c.li	a3,00000000
	addi	a2,zero,+00000300
	addi	a1,a1,+00000408
	addi	a0,a0,-00000646
	c.swsp	zero,00000084
	jal	ra,00000000230626A4
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_init: 230259F0
;;   Called from:
;;     230279EA (in wifi_mgmr_drv_init)
wifi_mgmr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a4,00042025
	c.lui	s0,00001000
	lui	a3,00042025
	addi	a4,a4,-00000290
	addi	a0,s0,-00000740
	addi	a3,a3,-0000026C
	c.li	a2,00000001
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023061D0C
	lui	a5,00042024
	addi	a5,a5,-000000C4
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.lui	a4,00004000
	c.add	a5,s0
	addi	a4,a4,-00000568
	sw	a4,a5,+000007D0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_status_code_clean_internal: 23025A3A
;;   Called from:
;;     23000FCE (in wifiprov_connect_ap_ind)
wifi_mgmr_status_code_clean_internal proc
	lui	a5,00042025
	addi	a5,a5,-000000C4
	sh	zero,a5,+00000750
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_state_get_internal: 23025A4A
;;   Called from:
;;     23027FC2 (in wifi_mgmr_state_get)
wifi_mgmr_state_get_internal proc
	lui	a5,00042024
	addi	a5,a5,-000000C4
	c.lui	a3,00001000
	c.add	a3,a5
	lw	a4,a3,+00000718
	lui	a2,000230B3
	addi	a2,a2,+00000170
	lhu	a3,a3,+00000750
	bne	a4,a2,0000000023025A8E

l23025A6A:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023025A76

l23025A6E:
	c.li	a5,00000011

l23025A70:
	c.sw	a0,0(a5)

l23025A72:
	c.li	a0,00000000
	c.jr	ra

l23025A76:
	c.li	a5,00000001

l23025A78:
	c.sw	a0,0(a5)
	c.li	a5,00000008
	bne	a3,a5,0000000023025A84

l23025A80:
	c.li	a5,00000008
	c.j	0000000023025A70

l23025A84:
	c.li	a5,0000000C
	bne	a3,a5,0000000023025A72

l23025A8A:
	c.li	a5,00000009
	c.j	0000000023025A70

l23025A8E:
	lui	a2,000230B3
	addi	a2,a2,-0000035C
	bne	a4,a2,0000000023025AA6

l23025A9A:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023025AA2

l23025A9E:
	c.li	a5,00000012
	c.j	0000000023025A70

l23025AA2:
	c.li	a5,00000002
	c.j	0000000023025A78

l23025AA6:
	lui	a2,000230B3
	addi	a2,a2,-00000494
	bne	a4,a2,0000000023025ABE

l23025AB2:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023025ABA

l23025AB6:
	c.li	a5,00000013
	c.j	0000000023025A70

l23025ABA:
	c.li	a5,00000003
	c.j	0000000023025A70

l23025ABE:
	lui	a2,000230B3
	addi	a2,a2,-000003B0
	bne	a4,a2,0000000023025AD6

l23025ACA:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023025AD2

l23025ACE:
	c.li	a5,00000014
	c.j	0000000023025A70

l23025AD2:
	c.li	a5,00000004
	c.j	0000000023025A70

l23025AD6:
	lui	a2,000230B3
	addi	a2,a2,-00000340
	bne	a4,a2,0000000023025AEE

l23025AE2:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023025AEA

l23025AE6:
	c.li	a5,00000015
	c.j	0000000023025A70

l23025AEA:
	c.li	a5,00000005
	c.j	0000000023025A78

l23025AEE:
	lui	a5,000230B3
	addi	a5,a5,+0000023C
	bne	a4,a5,0000000023025AFE

l23025AFA:
	c.li	a5,00000006
	c.j	0000000023025A70

l23025AFE:
	lui	a5,000230B3
	addi	a5,a5,+00000274
	bne	a4,a5,0000000023025B0E

l23025B0A:
	c.li	a5,00000007
	c.j	0000000023025A70

l23025B0E:
	sw	zero,a0,+00000000
	c.j	0000000023025A72

;; wifi_mgmr_set_connect_stat_info: 23025B14
;;   Called from:
;;     230285B2 (in cb_connect_ind)
wifi_mgmr_set_connect_stat_info proc
	lhu	a4,a0,+00000000
	lui	a5,00042025
	addi	a5,a5,-000000C4
	sh	a4,a5,+00000750
	lui	a4,00042025
	lui	a5,00042025
	addi	a3,a0,+00000002
	addi	a4,a4,+000006F0
	addi	a2,a0,+00000008
	addi	a5,a5,-000000C4

l23025B3C:
	lbu	a6,a3,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a6,a4,+00000FFF
	bne	a3,a2,0000000023025B3C

l23025B4C:
	lhu	a4,a0,+00000014
	sh	a4,a5,+000007BA
	lbu	a4,a0,+00000012
	sb	a1,a5,+00000752
	sb	a4,a5,+000007BC
	c.jr	ra

;; wifi_mgmr_set_country_code_internal: 23025B62
;;   Called from:
;;     230269B2 (in wifi_mgmr_api_set_country_code)
wifi_mgmr_set_country_code_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,0000000023021CA6
	c.lwsp	a2,00000064
	lui	a0,00042025
	c.li	a2,00000003
	addi	a0,a0,+000006FA
	lui	s0,00042025
	jal	ra,00000000230A439C
	addi	s0,s0,-000000C4
	sb	zero,s0,+000007C0
	jal	ra,0000000023021CC2
	sw	a0,s0,+000007C4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get_internal: 23025B9C
;;   Called from:
;;     23027F0A (in wifi_mgmr_ap_sta_cnt_get)
wifi_mgmr_ap_sta_cnt_get_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023021E8C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get_internal: 23025BAC
;;   Called from:
;;     23027F30 (in wifi_mgmr_ap_sta_info_get)
wifi_mgmr_ap_sta_info_get_internal proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,00000000230A3A68
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023021E96
	lhu	a5,sp,+00000008
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000002
	sh	a5,s0,+00000000
	c.lwsp	s8,000000E4
	c.li	a2,00000006
	c.sw	s0,16(a5)
	c.lwsp	s4,000000E4
	c.sw	s0,12(a5)
	c.lwsp	a6,000000E4
	c.sw	s0,8(a5)
	lbu	a5,sp,+0000001C
	sb	a5,s0,+00000014
	jal	ra,00000000230A382C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete_internal: 23025C00
;;   Called from:
;;     23027F6E (in wifi_mgmr_ap_sta_delete)
wifi_mgmr_ap_sta_delete_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023021F02
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_scan_complete_notify: 23025C10
;;   Called from:
;;     2302863A (in cb_event_ind)
wifi_mgmr_scan_complete_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023028046
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_api_connect: 23025C20
;;   Called from:
;;     23027D84 (in wifi_mgmr_sta_connect)
wifi_mgmr_api_connect proc
	c.addi16sp	FFFFFF10
	c.swsp	s1,000000F0
	c.swsp	s2,00000070
	c.swsp	s5,000000E8
	c.mv	s2,a1
	c.mv	s5,a0
	c.li	a1,00000000
	c.mv	s1,a2
	c.addi4spn	a0,00000008
	addi	a2,zero,+000000C6
	c.swsp	ra,000000F4
	c.swsp	s0,00000074
	c.swsp	s3,000000EC
	c.swsp	s4,0000006C
	c.mv	s3,a3
	c.mv	s4,a4
	c.mv	s0,a5
	jal	ra,00000000230A3A68
	c.li	a5,00000001
	sb	a5,sp,+00000008
	addi	a5,zero,+00000044
	sb	a5,sp,+00000009
	addi	a5,zero,+00000033
	sb	a5,sp,+0000000A
	addi	a5,zero,+00000022
	sb	a5,sp,+0000000B
	c.li	a5,00000011
	sb	a5,sp,+0000000C
	addi	a5,zero,-00000078
	sb	a5,sp,+0000000D
	addi	a5,zero,+00000077
	sb	a5,sp,+0000000E
	addi	a5,zero,+00000066
	sb	a5,sp,+0000000F
	addi	a5,zero,+00000055
	sb	a5,sp,+00000010
	c.mv	a0,s5
	addi	a5,zero,-0000003A
	sb	a5,sp,+00000011
	sb	zero,sp,+00000012
	sb	zero,sp,+00000013
	sb	zero,sp,+00000014
	jal	ra,00000000230A4220
	srli	a5,a0,00000010
	c.mv	a2,a0
	sh	a0,sp,+00000036
	c.mv	a1,s5
	addi	a0,sp,+00000015
	sh	a5,sp,+00000038
	jal	ra,00000000230A382C
	sb	zero,sp,+00000035
	bne	s2,zero,0000000023025D14

l23025CC6:
	c.swsp	zero,000000DC

l23025CC8:
	sb	zero,sp,+0000007A
	c.bnez	s1,0000000023025D48

l23025CCE:
	c.swsp	zero,00000060

l23025CD0:
	sb	zero,sp,+000000BB
	beq	s3,zero,0000000023025CE2

l23025CD8:
	c.li	a2,00000006
	c.mv	a1,s3
	c.addi4spn	a0,000000C4
	jal	ra,00000000230A382C

l23025CE2:
	c.beqz	s0,0000000023025D04

l23025CE4:
	lui	a0,000230B3
	srli	a5,s0,00000008
	c.mv	a2,s0
	c.mv	a1,s4
	addi	a0,a0,+00000414
	sb	s4,sp,+000000CA
	sb	s0,sp,+000000CB
	sb	a5,sp,+000000CC
	jal	ra,0000000023082388

l23025D04:
	c.li	a5,00000001
	c.addi4spn	a0,00000008
	sb	a5,sp,+000000CD
	jal	ra,00000000230257D0
	c.li	a0,00000000
	c.j	0000000023025D28

l23025D14:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.swsp	a0,000000DC
	addi	a5,zero,+00000040
	c.mv	a2,a0
	bgeu	a5,a0,0000000023025D3A

l23025D26:
	c.li	a0,FFFFFFFF

l23025D28:
	c.lwsp	a5,00000130
	c.lwsp	a1,00000114
	c.lwsp	t2,00000134
	c.lwsp	gp,00000158
	c.lwsp	t6,00000068
	c.lwsp	s11,00000088
	c.lwsp	s7,000000A8
	c.addi16sp	000000F0
	c.jr	ra

l23025D3A:
	c.beqz	a0,0000000023025CC8

l23025D3C:
	c.mv	a1,s2
	addi	a0,sp,+0000003A
	jal	ra,00000000230A382C
	c.j	0000000023025CC8

l23025D48:
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.swsp	a0,00000060
	c.beqz	a0,0000000023025CD0

l23025D52:
	addi	a5,zero,+00000040
	bne	a0,a5,0000000023025D26

l23025D5A:
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,sp,+0000007B
	jal	ra,00000000230A382C
	c.j	0000000023025CD0

;; wifi_mgmr_api_cfg_req: 23025D6A
;;   Called from:
;;     23028010 (in wifi_mgmr_cfg_req)
wifi_mgmr_api_cfg_req proc
	addi	a6,zero,+00000020
	bltu	a6,a4,0000000023025EAE

l23025D72:
	c.addi16sp	FFFFFF90
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.mv	s2,a2
	c.mv	s3,a1
	c.swsp	s4,0000002C
	addi	a2,zero,+00000041
	c.mv	s4,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.mv	s0,a4
	c.mv	s1,a3
	c.swsp	s5,000000A8
	c.swsp	ra,000000B4
	c.mv	s5,a5
	jal	ra,00000000230A3A68
	c.li	a5,00000016
	sb	a5,sp,+0000000C
	addi	a5,zero,+00000044
	sb	a5,sp,+0000000D
	addi	a5,zero,+00000033
	sb	a5,sp,+0000000E
	addi	a5,zero,+00000022
	sb	a5,sp,+0000000F
	c.li	a5,00000011
	sb	a5,sp,+00000010
	addi	a5,zero,-00000078
	sb	a5,sp,+00000011
	addi	a5,zero,+00000077
	sb	a5,sp,+00000012
	addi	a5,zero,+00000066
	addi	a4,s0,+000000C6
	sb	a5,sp,+00000013
	addi	a5,zero,+00000055
	sb	a5,sp,+00000014
	srli	a5,a4,00000008
	sb	a5,sp,+00000016
	srli	a5,a4,00000010
	sb	a5,sp,+00000017
	srli	a5,s4,00000008
	sb	a5,sp,+0000001A
	srli	a5,s4,00000010
	sb	a5,sp,+0000001B
	srli	a5,s3,00000008
	sb	a5,sp,+0000001E
	srli	a5,s3,00000010
	sb	a5,sp,+0000001F
	srli	a5,s2,00000008
	sb	a5,sp,+00000022
	srli	a5,s2,00000010
	sb	a5,sp,+00000023
	srli	a5,s1,00000008
	sb	a5,sp,+00000026
	srli	a5,s1,00000010
	sb	a5,sp,+00000027
	srli	a5,s0,00000008
	sb	a4,sp,+00000015
	sb	s4,sp,+00000019
	sb	s3,sp,+0000001D
	sb	s2,sp,+00000021
	sb	s1,sp,+00000025
	sb	a5,sp,+0000002A
	c.srli	a4,00000018
	srli	a5,s0,00000010
	srli	s4,s4,00000018
	srli	s3,s3,00000018
	srli	s2,s2,00000018
	c.srli	s1,00000018
	sb	a5,sp,+0000002B
	sb	a4,sp,+00000018
	sb	s4,sp,+0000001C
	sb	s3,sp,+00000020
	sb	s2,sp,+00000024
	sb	s1,sp,+00000028
	sb	s0,sp,+00000029
	srli	a5,s0,00000018
	sb	a5,sp,+0000002C
	c.beqz	s0,0000000023025E94

l23025E88:
	c.mv	a2,s0
	c.mv	a1,s5
	addi	a0,sp,+0000002D
	jal	ra,00000000230A382C

l23025E94:
	c.addi4spn	a0,0000000C
	jal	ra,00000000230257D0
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.li	a0,00000000
	c.addi16sp	00000070
	c.jr	ra

l23025EAE:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_api_ip_got: 23025EB2
;;   Called from:
;;     23028D00 (in netif_status_callback)
wifi_mgmr_api_ip_got proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a2
	c.li	a1,00000000
	addi	a2,zero,+00000021
	c.addi4spn	a0,0000001C
	c.swsp	ra,000000A4
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	jal	ra,00000000230A3A68
	c.li	a5,00000004
	sb	a5,sp,+0000001C
	addi	a5,zero,+00000044
	sb	a5,sp,+0000001D
	addi	a5,zero,+00000033
	sb	a5,sp,+0000001E
	addi	a5,zero,+00000022
	sb	a5,sp,+0000001F
	c.li	a5,00000011
	sb	a5,sp,+00000020
	addi	a5,zero,-00000078
	sb	a5,sp,+00000021
	addi	a5,zero,+00000077
	sb	a5,sp,+00000022
	addi	a5,zero,+00000066
	sb	a5,sp,+00000023
	addi	a5,zero,+00000055
	sb	a5,sp,+00000024
	addi	a5,zero,+00000021
	sb	a5,sp,+00000025
	srli	a5,s2,00000008
	sb	a5,sp,+0000002A
	srli	a5,s2,00000010
	sb	a5,sp,+0000002B
	srli	a5,s1,00000008
	c.lwsp	a2,000000A4
	sb	a5,sp,+0000002E
	srli	a5,s1,00000010
	sb	a5,sp,+0000002F
	srli	a5,s0,00000008
	c.lwsp	s0,000000C4
	sb	a5,sp,+00000032
	srli	a5,s0,00000010
	sb	a5,sp,+00000033
	srli	a5,a3,00000008
	sb	s2,sp,+00000029
	sb	s1,sp,+0000002D
	sb	s0,sp,+00000031
	sb	a3,sp,+00000035
	sb	a5,sp,+00000036
	srli	s2,s2,00000018
	srli	a5,a3,00000010
	c.srli	s1,00000018
	c.srli	s0,00000018
	c.srli	a3,00000018
	sb	s2,sp,+0000002C
	sb	s1,sp,+00000030
	sb	s0,sp,+00000034
	sb	a5,sp,+00000037
	sb	a3,sp,+00000038
	sb	a4,sp,+00000039
	srli	a5,a4,00000008
	sb	zero,sp,+00000026
	sb	zero,sp,+00000027
	sb	zero,sp,+00000028
	sb	a5,sp,+0000003A
	c.addi4spn	a0,0000001C
	srli	a5,a4,00000010
	c.srli	a4,00000018
	sb	a5,sp,+0000003B
	sb	a4,sp,+0000003C
	jal	ra,00000000230257D0
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; wifi_mgmr_api_ip_update: 23025FC6
;;   Called from:
;;     23027B7E (in wifi_mgmr_sta_ip_set)
;;     23028CD0 (in netif_status_callback)
wifi_mgmr_api_ip_update proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000001E
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_reconnect: 23026038
;;   Called from:
;;     230250E0 (in disconnect_retry)
wifi_mgmr_api_reconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000006
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disable_autoreconnect: 230260AA
;;   Called from:
;;     23027BEC (in wifi_mgmr_sta_autoconnect_disable)
wifi_mgmr_api_disable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000001C
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_enable_autoreconnect: 2302611C
;;   Called from:
;;     23027BDC (in wifi_mgmr_sta_autoconnect_enable)
wifi_mgmr_api_enable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000001D
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disconnect: 2302618E
;;   Called from:
;;     23027B9C (in wifi_mgmr_sta_disconnect)
wifi_mgmr_api_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000005
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_rate_config: 23026200
;;   Called from:
;;     23027FBA (in wifi_mgmr_rate_config)
wifi_mgmr_api_rate_config proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000000B
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	s0,sp,+00000001
	sb	a5,sp,+00000008
	c.srli	s0,00000008
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s0,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_conf_max_sta: 2302626C
;;   Called from:
;;     23027FBE (in wifi_mgmr_conf_max_sta)
wifi_mgmr_api_conf_max_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000000A
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	s0,sp,+00000001
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ifaceup: 230262D6
;;   Called from:
;;     230279EE (in wifi_mgmr_drv_init)
wifi_mgmr_api_ifaceup proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000007
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_sniffer_enable: 23026348
;;   Called from:
;;     23027F9E (in wifi_mgmr_sniffer_enable)
wifi_mgmr_api_sniffer_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000002
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_scan_item_beacon: 230263BA
;;   Called from:
;;     2302849C (in cb_beacon_ind)
wifi_mgmr_api_scan_item_beacon proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.mv	s2,a1
	c.mv	s3,a0
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000049
	c.addi4spn	a0,00000014
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a6,00000080
	c.mv	s0,a5
	c.swsp	a7,00000000
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	jal	ra,00000000230A3A68
	c.li	a5,00000018
	sb	a5,sp,+00000014
	addi	a5,zero,+00000044
	sb	a5,sp,+00000015
	addi	a5,zero,+00000033
	sb	a5,sp,+00000016
	addi	a5,zero,+00000022
	sb	a5,sp,+00000017
	c.li	a5,00000011
	sb	a5,sp,+00000018
	addi	a5,zero,-00000078
	c.lwsp	s0,000000C4
	sb	a5,sp,+00000019
	addi	a5,zero,+00000077
	sb	a5,sp,+0000001A
	addi	a5,zero,+00000066
	sb	a5,sp,+0000001B
	addi	a5,zero,+00000055
	c.mv	a1,a4
	sb	a5,sp,+0000001C
	c.mv	a2,s0
	addi	a5,zero,+00000049
	addi	a0,sp,+00000021
	sb	a5,sp,+0000001D
	sb	zero,sp,+0000001E
	sb	zero,sp,+0000001F
	sb	zero,sp,+00000020
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	srli	a5,s0,00000008
	sb	s0,sp,+00000045
	sb	a5,sp,+00000046
	c.li	a2,00000006
	srli	a5,s0,00000010
	c.mv	a1,a3
	c.srli	s0,00000018
	addi	a0,sp,+00000049
	sb	a5,sp,+00000047
	sb	s0,sp,+00000048
	sb	zero,sp,+00000041
	jal	ra,00000000230A382C
	lbu	a5,sp,+00000080
	c.lwsp	tp,00000008
	c.lwsp	zero,00000028
	c.addi4spn	a0,00000014
	sb	s3,sp,+0000004F
	sb	s2,sp,+00000050
	sb	s1,sp,+00000053
	sb	a5,sp,+00000054
	sb	a6,sp,+00000051
	sb	a7,sp,+00000052
	jal	ra,00000000230257D0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

;; wifi_mgmr_api_fw_disconnect: 230264AA
;;   Called from:
;;     23024828 (in ip_obtaining_timeout)
wifi_mgmr_api_fw_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000000F
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_tsen_reload: 2302651C
;;   Called from:
;;     23024FEE (in __reload_tsen)
wifi_mgmr_api_fw_tsen_reload proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	addi	a4,zero,+00000044
	sb	a4,sp,+00000001
	addi	a4,zero,+00000033
	sb	a4,sp,+00000002
	addi	a4,zero,+00000022
	sb	a4,sp,+00000003
	c.li	a4,00000011
	sb	a4,sp,+00000004
	addi	a4,zero,-00000078
	sb	a4,sp,+00000005
	addi	a4,zero,+00000077
	sb	a4,sp,+00000006
	addi	a4,zero,+00000066
	c.li	a5,0000000D
	sb	a4,sp,+00000007
	c.mv	a0,sp
	addi	a4,zero,+00000055
	sb	a5,sp,+00000000
	sb	a4,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_scan: 2302658C
;;   Called from:
;;     23028004 (in wifi_mgmr_scan)
;;     2302819C (in wifi_mgmr_all_ap_scan)
wifi_mgmr_api_fw_scan proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000012
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_powersaving: 230265FE
;;   Called from:
;;     23027BBE (in wifi_mgmr_sta_powersaving)
;;     23027BCC (in wifi_mgmr_sta_powersaving)
wifi_mgmr_api_fw_powersaving proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000010
	sb	a5,sp,+00000000
	srli	a5,s0,00000008
	sb	a5,sp,+00000002
	srli	a5,s0,00000010
	sb	a5,sp,+00000003
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	s0,sp,+00000001
	sb	a5,sp,+00000008
	c.srli	s0,00000018
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s0,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ap_start: 23026672
;;   Called from:
;;     23027EEA (in wifi_mgmr_ap_start)
wifi_mgmr_api_ap_start proc
	c.bnez	a0,0000000023026678

l23026674:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23026678:
	c.addi16sp	FFFFFF60
	c.swsp	s0,0000004C
	c.swsp	s1,000000C8
	c.swsp	s3,000000C4
	c.mv	s0,a2
	c.mv	s3,a0
	addi	a2,zero,+0000007C
	c.mv	s1,a1
	c.addi4spn	a0,00000004
	c.li	a1,00000000
	c.swsp	ra,000000CC
	c.swsp	s2,00000048
	c.swsp	s4,00000044
	c.mv	s2,a3
	jal	ra,00000000230A3A68
	c.mv	a0,s3
	jal	ra,00000000230A4220
	srli	a5,a0,00000008
	sb	a5,sp,+00000038
	srli	a5,a0,00000010
	sb	a5,sp,+00000039
	srli	a5,a0,00000018
	sb	a0,sp,+00000037
	sb	a5,sp,+0000003A
	addi	s4,zero,+00000020
	bltu	s4,a0,0000000023026744

l230266C4:
	c.bnez	s1,0000000023026738

l230266C6:
	c.li	a5,00000008
	sb	a5,sp,+00000004
	addi	a5,zero,+00000044
	sb	a5,sp,+00000005
	addi	a5,zero,+00000033
	sb	a5,sp,+00000006
	addi	a5,zero,+00000022
	sb	a5,sp,+00000007
	c.li	a5,00000011
	sb	a5,sp,+00000008
	addi	a5,zero,-00000078
	sb	a5,sp,+00000009
	addi	a5,zero,+00000077
	sb	a5,sp,+0000000A
	addi	a5,zero,+00000066
	sb	a5,sp,+0000000B
	addi	a5,zero,+00000055
	sb	a5,sp,+0000000C
	addi	a5,zero,+0000007C
	sb	a5,sp,+0000000D
	c.lwsp	s8,000001F4
	lbu	a2,sp,+00000037
	c.mv	a1,s3
	c.slli	a5,08
	c.or	a2,a5
	addi	a0,sp,+00000015
	sb	zero,sp,+0000000E
	sb	zero,sp,+0000000F
	sb	zero,sp,+00000010
	jal	ra,00000000230A382C
	c.bnez	s1,0000000023026756

l23026734:
	c.swsp	zero,000000BC
	c.j	0000000023026762

l23026738:
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.swsp	a0,000000BC
	bgeu	s4,a0,00000000230266C6

l23026744:
	c.li	a0,FFFFFFFF

l23026746:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.addi16sp	000000A0
	c.jr	ra

l23026756:
	c.lwsp	t4,00000194
	c.mv	a1,s1
	addi	a0,sp,+0000003B
	jal	ra,00000000230A382C

l23026762:
	srli	a5,s0,00000008
	sb	s0,sp,+00000011
	sb	a5,sp,+00000012
	sltu	s2,zero,s2
	srli	a5,s0,00000010
	c.addi4spn	a0,00000004
	c.srli	s0,00000018
	sb	a5,sp,+00000013
	sb	s0,sp,+00000014
	sb	s2,sp,+00000036
	jal	ra,00000000230257D0
	c.li	a0,00000000
	c.j	0000000023026746

;; wifi_mgmr_api_ap_stop: 2302678E
;;   Called from:
;;     23027EFA (in wifi_mgmr_ap_stop)
wifi_mgmr_api_ap_stop proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000009
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_idle: 23026800
;;   Called from:
;;     23027AFE (in wifi_mgmr_sta_disable)
;;     23027FAE (in wifi_mgmr_sniffer_disable)
wifi_mgmr_api_idle proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000000
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_enable: 23026870
;;   Called from:
;;     2302501E (in trigger_auto_denoise)
;;     23027286 (in wifi_denoise_enable_cmd)
wifi_mgmr_api_denoise_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000000C
	sb	a5,sp,+00000000
	c.li	a5,00000001
	sb	a5,sp,+00000001
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_disable: 230268D6
;;   Called from:
;;     23027282 (in wifi_denoise_disable_cmd)
wifi_mgmr_api_denoise_disable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,0000000C
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000001
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_raw_send: 2302693A
;;   Called from:
;;     23027FE0 (in wifi_mgmr_raw_80211_send)
wifi_mgmr_api_raw_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	c.li	a5,00000015
	sb	a5,sp,+00000000
	srli	a5,s1,00000008
	sb	a5,sp,+00000002
	srli	a5,s1,00000010
	sb	a5,sp,+00000003
	srli	a5,s0,00000008
	sb	a5,sp,+00000006
	srli	a5,s0,00000010
	sb	s1,sp,+00000001
	sb	s0,sp,+00000005
	sb	a5,sp,+00000007
	c.srli	s1,00000018
	c.srli	s0,00000018
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s1,sp,+00000004
	sb	s0,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_set_country_code: 230269AE
;;   Called from:
;;     230279E6 (in wifi_mgmr_drv_init)
wifi_mgmr_api_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025B62
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_rf_dump: 230269BE
cmd_rf_dump proc
	c.jr	ra

;; cmd_dump_reset: 230269C0
cmd_dump_reset proc
	lui	a5,0004200F
	c.li	a4,0000000A
	sw	a4,a5,+00000398
	c.jr	ra

;; cmd_wifi_power_table_update: 230269CC
cmd_wifi_power_table_update proc
	c.addi16sp	FFFFFFC0
	lui	a1,000230B3
	addi	a2,zero,+00000026
	addi	a1,a1,+0000048C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000008
	jal	ra,000000002300B4D8
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; cmd_wifi_state_get: 230269EE
cmd_wifi_state_get proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023027FC2
	c.lwsp	a2,000000E4
	c.li	a4,00000015
	bltu	a4,a5,0000000023026A1E

l23026A02:
	lui	a4,000230B3
	c.slli	a5,02
	addi	a4,a4,+00000434
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23026A12:
	lui	a0,000230B3
	addi	a0,a0,+00000648

l23026A1A:
	jal	ra,0000000023082388

l23026A1E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23026A24:
	lui	a0,000230B3
	addi	a0,a0,+00000660
	c.j	0000000023026A1A
23026A2E                                           37 35               75
23026A30 0B 23 13 05 45 67 D5 B7 37 35 0B 23 13 05 C5 68 .#..Eg..75.#...h
23026A40 E9 BF 37 35 0B 23 13 05 05 6B C1 BF 37 35 0B 23 ..75.#...k..75.#
23026A50 13 05 05 6D D9 B7 37 35 0B 23 13 05 85 6E 75 BF ...m..75.#...nu.
23026A60 37 35 0B 23 13 05 45 70 4D BF 37 35 0B 23 13 05 75.#..EpM.75.#..
23026A70 45 72 65 B7 37 35 0B 23 13 05 05 75 79 BF 37 35 Ere.75.#...uy.75
23026A80 0B 23 13 05 85 77 51 BF 37 35 0B 23 13 05 85 79 .#...wQ.75.#...y
23026A90 69 B7 37 35 0B 23 13 05 C5 7A 41 B7 37 35 0B 23 i.75.#...zA.75.#
23026AA0 13 05 45 7C 9D BF 37 35 0B 23 13 05 C5 7D B5 B7 ..E|..75.#...}..

;; wifi_sta_get_state_cmd: 23026AB0
wifi_sta_get_state_cmd proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023027FC2
	c.lwsp	a2,00000084
	lui	a1,000230B3
	lui	a0,000230B4
	addi	a1,a1,+000004B4
	addi	a0,a0,+000004BC
	jal	ra,0000000023082388
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023026AE8

l23026AD6:
	lui	a0,000230B4
	addi	a0,a0,+000004D4

l23026ADE:
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23026AE8:
	c.li	a4,00000001
	bne	a5,a4,0000000023026AF8

l23026AEE:
	lui	a0,000230B4
	addi	a0,a0,+00000500
	c.j	0000000023026ADE

l23026AF8:
	c.li	a4,00000002
	bne	a5,a4,0000000023026B08

l23026AFE:
	lui	a0,000230B4
	addi	a0,a0,+00000528
	c.j	0000000023026ADE

l23026B08:
	c.li	a4,00000003
	bne	a5,a4,0000000023026B18

l23026B0E:
	lui	a0,000230B4
	addi	a0,a0,+00000554
	c.j	0000000023026ADE

l23026B18:
	c.li	a4,00000004
	bne	a5,a4,0000000023026B28

l23026B1E:
	lui	a0,000230B4
	addi	a0,a0,+0000058C
	c.j	0000000023026ADE

l23026B28:
	c.li	a4,00000005
	bne	a5,a4,0000000023026B38

l23026B2E:
	lui	a0,000230B4
	addi	a0,a0,+000005C0
	c.j	0000000023026ADE

l23026B38:
	c.li	a4,00000011
	bne	a5,a4,0000000023026B48

l23026B3E:
	lui	a0,000230B4
	addi	a0,a0,+000005EC
	c.j	0000000023026ADE

l23026B48:
	c.li	a4,00000012
	bne	a5,a4,0000000023026B58

l23026B4E:
	lui	a0,000230B4
	addi	a0,a0,+0000061C
	c.j	0000000023026ADE

l23026B58:
	c.li	a4,00000013
	bne	a5,a4,0000000023026B68

l23026B5E:
	lui	a0,000230B4
	addi	a0,a0,+00000650
	c.j	0000000023026ADE

l23026B68:
	c.li	a4,00000014
	bne	a5,a4,0000000023026B78

l23026B6E:
	lui	a0,000230B4
	addi	a0,a0,+00000690
	c.j	0000000023026ADE

l23026B78:
	c.li	a4,00000015
	bne	a5,a4,0000000023026B88

l23026B7E:
	lui	a0,000230B4
	addi	a0,a0,+000006CC
	c.j	0000000023026ADE

l23026B88:
	c.li	a4,00000006
	bne	a5,a4,0000000023026B98

l23026B8E:
	lui	a0,000230B4
	addi	a0,a0,+00000700
	c.j	0000000023026ADE

l23026B98:
	c.li	a4,00000007
	bne	a5,a4,0000000023026BA8

l23026B9E:
	lui	a0,000230B4
	addi	a0,a0,+00000728
	c.j	0000000023026ADE

l23026BA8:
	c.li	a4,00000008
	bne	a5,a4,0000000023026BB8

l23026BAE:
	lui	a0,000230B4
	addi	a0,a0,+00000754
	c.j	0000000023026ADE

l23026BB8:
	c.li	a4,00000009
	bne	a5,a4,0000000023026BC8

l23026BBE:
	lui	a0,000230B4
	addi	a0,a0,+00000780
	c.j	0000000023026ADE

l23026BC8:
	lui	a0,000230B4
	addi	a0,a0,+000007B0
	c.j	0000000023026ADE

;; wifi_edca_dump_cmd: 23026BD2
wifi_edca_dump_cmd proc
	lui	a0,000230B4
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+00000264
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sb	zero,sp,+0000000D
	sh	zero,sp,+0000000E
	jal	ra,000000002308234C
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000000
	jal	ra,000000002301BCB4
	lui	a0,000230B4
	addi	a0,a0,+00000278
	jal	ra,000000002308234C
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	lui	s0,000230B4
	addi	a0,s0,+00000284
	jal	ra,0000000023082388
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000001
	jal	ra,000000002301BCB4
	lui	a0,000230B4
	addi	a0,a0,+000002B0
	jal	ra,000000002308234C
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000284
	jal	ra,0000000023082388
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000002
	jal	ra,000000002301BCB4
	lui	a0,000230B4
	addi	a0,a0,+000002BC
	jal	ra,000000002308234C
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000284
	jal	ra,0000000023082388
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000003
	jal	ra,000000002301BCB4
	lui	a0,000230B4
	addi	a0,a0,+000002C8
	jal	ra,000000002308234C
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000284
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_ap_sta_list_get_cmd: 23026CE0
wifi_ap_sta_list_get_cmd proc
	c.addi16sp	FFFFFF90
	c.addi4spn	a0,00000024
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	zero,00000090
	sb	zero,sp,+00000023
	jal	ra,0000000023027FC2
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,0000000023026D2A

l23026D08:
	lui	a0,000230B4
	addi	a0,a0,+00000098

l23026D10:
	jal	ra,0000000023082388

l23026D14:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.addi16sp	00000070
	c.jr	ra

l23026D2A:
	addi	a0,sp,+00000023
	jal	ra,0000000023027F06
	lbu	a5,sp,+00000023
	c.bnez	a5,0000000023026D44

l23026D38:
	lui	a0,000230B4
	c.li	a1,00000000
	addi	a0,a0,+000000C0
	c.j	0000000023026D10

l23026D44:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230A3A68
	lui	a0,000230B4
	addi	a0,a0,+000000EC
	jal	ra,0000000023082388
	lui	s0,000230B4
	addi	a0,s0,+000000F8
	jal	ra,0000000023082388
	lui	a0,000230B4
	addi	a0,a0,+00000150
	jal	ra,0000000023082388
	addi	a0,s0,+000000F8
	lui	s3,000230B3
	jal	ra,0000000023082388
	c.li	s2,00000000
	c.li	s1,00000000
	addi	s4,zero,+000000EF
	addi	s5,s3,+000007F8
	c.li	s6,0000000C
	lui	s7,000230B4

l23026D90:
	lbu	a5,sp,+00000023
	bgeu	s1,a5,0000000023026D14

l23026D98:
	c.mv	a1,s1
	c.addi4spn	a0,00000028
	jal	ra,0000000023027F16
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023026E0A

l23026DA6:
	lbu	a2,sp,+00000028
	beq	a2,s4,0000000023026E0A

l23026DAE:
	c.lwsp	a6,000001D4
	c.lwsp	s4,000001B4
	lbu	a1,sp,+0000003C
	addi	a5,s3,+000007F8
	c.li	s0,00000000

l23026DBC:
	lbu	a0,a5,+00000000
	beq	a0,a1,0000000023026DD2

l23026DC4:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	a5,00000008
	bne	s0,s6,0000000023026DBC

l23026DD0:
	c.mv	s0,s2

l23026DD2:
	slli	a5,s0,00000003
	c.add	a5,s5
	c.lw	a5,4(a5)
	c.swsp	a3,00000008
	c.swsp	a4,00000088
	c.swsp	a5,00000004
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002E
	lbu	a6,sp,+0000002D
	c.swsp	a5,00000080
	lbu	a5,sp,+0000002F
	lbu	a4,sp,+0000002B
	lbu	a3,sp,+0000002A
	c.swsp	a5,00000000
	lbu	a5,sp,+0000002C
	c.mv	a1,s1
	addi	a0,s7,+000001A8
	jal	ra,0000000023082388
	c.mv	s2,s0

l23026E0A:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.j	0000000023026D90

;; wifi_ap_sta_delete_cmd: 23026E12
wifi_ap_sta_delete_cmd proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	zero,00000090
	sb	zero,sp,+00000023
	c.li	a5,00000002
	c.mv	s0,a3
	beq	a2,a5,0000000023026E3C

l23026E26:
	c.lw	a3,0(a1)
	lui	a0,000230B4
	addi	a0,a0,-00000070

l23026E30:
	jal	ra,0000000023082388

l23026E34:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l23026E3C:
	c.addi4spn	a0,00000024
	jal	ra,0000000023027FC2
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,0000000023026E54

l23026E4A:
	lui	a0,000230B4
	addi	a0,a0,+00000098
	c.j	0000000023026E30

l23026E54:
	c.lw	s0,4(a1)
	lui	a0,000230B4
	addi	a0,a0,-00000058
	jal	ra,0000000023082388
	c.lw	s0,4(a4)
	c.li	s0,00000000
	c.mv	a0,a4
	c.swsp	a4,0000008C
	jal	ra,00000000230A4220
	c.lwsp	t3,000000C4
	c.mv	a2,a0
	c.li	a6,00000001
	c.add	a0,a4
	sb	zero,a0,+00000000
	c.mv	a1,a0
	c.li	t3,00000009
	c.li	t1,00000005
	c.li	t4,0000000A

l23026E82:
	sub	a5,a0,a1
	blt	a5,a2,0000000023026EC8

l23026E8A:
	andi	s0,s0,+000000FF
	lui	a0,000230B4
	c.mv	a1,a4
	c.mv	a3,s0
	addi	a0,a0,-00000044
	jal	ra,0000000023082388
	lui	a0,000230B4
	c.mv	a1,s0
	addi	a0,a0,-00000014
	jal	ra,0000000023082388
	addi	a0,sp,+00000023
	jal	ra,0000000023027F06
	lbu	a1,sp,+00000023
	c.beqz	a1,0000000023026EBE

l23026EBA:
	bgeu	a1,s0,0000000023026F12

l23026EBE:
	lui	a0,000230B4
	addi	a0,a0,-00000004
	c.j	0000000023026E30

l23026EC8:
	lbu	a3,a1,-00000001
	addi	a5,a3,-00000030
	andi	a5,a5,+000000FF
	bgeu	t3,a5,0000000023026EEC

l23026ED8:
	addi	a5,a3,-00000061
	andi	a5,a5,+000000FF
	bltu	t1,a5,0000000023026EFE

l23026EE4:
	addi	a5,a3,-00000057

l23026EE8:
	andi	a5,a5,+000000FF

l23026EEC:
	add	a5,a5,a6
	c.addi	a1,FFFFFFFF
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	add	a6,a6,t4
	c.j	0000000023026E82

l23026EFE:
	addi	a7,a3,-00000041
	andi	a7,a7,+000000FF
	c.li	a5,00000000
	bltu	t1,a7,0000000023026EEC

l23026F0C:
	addi	a5,a3,-00000037
	c.j	0000000023026EE8

l23026F12:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,00000000230A3A68
	c.mv	a1,s0
	c.addi4spn	a0,00000028
	jal	ra,0000000023027F16
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023026F36

l23026F2A:
	lbu	a2,sp,+00000028
	addi	a5,zero,+000000EF
	bne	a2,a5,0000000023026F42

l23026F36:
	lui	a0,000230B4
	c.mv	a1,s0
	addi	a0,a0,+00000030
	c.j	0000000023026E30

l23026F42:
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002E
	lbu	a6,sp,+0000002D
	c.swsp	a5,00000080
	lbu	a5,sp,+0000002F
	lbu	a4,sp,+0000002B
	lbu	a3,sp,+0000002A
	c.swsp	a5,00000000
	lbu	a5,sp,+0000002C
	lui	a0,000230B4
	c.mv	a1,s0
	addi	a0,a0,+00000048
	jal	ra,0000000023082388
	lbu	a0,sp,+00000028
	jal	ra,0000000023027F6A
	c.j	0000000023026E34

;; cmd_wifi_coex_pta_force_off: 23026F78
cmd_wifi_coex_pta_force_off proc
	c.li	a0,00000000
	jal	zero,00000000230012AE

;; cmd_wifi_coex_pta_force_on: 23026F7E
cmd_wifi_coex_pta_force_on proc
	c.li	a0,00000001
	jal	zero,00000000230012AE

;; cmd_wifi_coex_pti_force_off: 23026F84
cmd_wifi_coex_pti_force_off proc
	c.li	a0,00000000
	jal	zero,000000002300125C

;; cmd_wifi_coex_pti_force_on: 23026F8A
cmd_wifi_coex_pti_force_on proc
	c.li	a0,00000001
	jal	zero,000000002300125C

;; cmd_wifi_coex_rf_force_off: 23026F90
cmd_wifi_coex_rf_force_off proc
	c.li	a0,00000000
	jal	zero,0000000023001252

;; cmd_wifi_coex_rf_force_on: 23026F96
cmd_wifi_coex_rf_force_on proc
	c.li	a0,00000001
	jal	zero,0000000023001252

;; cmd_wifi_mib: 23026F9C
cmd_wifi_mib proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002301B034
	c.lwsp	a2,000000A4
	c.lwsp	t3,00000020
	c.li	a1,0000001E
	c.lw	a3,0(a0)
	c.addi16sp	00000020
	jal	zero,000000002307A480

;; cmd_wifi_cfg: 23026FB4
cmd_wifi_cfg proc
	c.addi16sp	FFFFFFA0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
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
	c.swsp	ra,000000AC
	c.mv	s6,a2
	c.mv	s4,a3
	c.li	s3,00000000
	jal	ra,000000002307A6B0
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s0,00000004
	lui	s7,000230B3
	addi	s5,zero,+00000063
	lui	s8,000230C1
	lui	s9,000230C1
	lui	s10,000230C1
	lui	s11,000230B7

l23026FFC:
	addi	a3,s7,+0000055C
	c.mv	a2,s4
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002307A6CC
	c.li	a3,FFFFFFFF
	addi	a5,zero,+00000074
	addi	a4,zero,+00000076
	addi	a6,zero,+00000065
	addi	a7,zero,+0000003F
	addi	t1,zero,+00000054
	bne	a0,a3,000000002302706E

l23027024:
	c.lwsp	s0,000000C4
	lui	a0,000230B3
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,+00000568
	jal	ra,0000000023082388
	c.li	a5,00000002
	beq	s0,a5,000000002302715E

l2302703E:
	bltu	a5,s0,0000000023027122

l23027042:
	c.li	a5,00000001
	beq	s0,a5,000000002302713C

l23027048:
	lui	a1,000230C1
	lui	a0,000230B3
	addi	a1,a1,-000001D8
	addi	a0,a0,+000005B0
	jal	ra,0000000023082388
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000000

l23027068:
	jal	ra,0000000023028010
	c.j	00000000230270F8

l2302706E:
	beq	a0,s5,000000002302709E

l23027072:
	blt	s5,a0,0000000023027088

l23027076:
	beq	a0,a7,00000000230270E6

l2302707A:
	bne	a0,t1,0000000023026FFC

l2302707E:
	c.lwsp	a2,00000044
	jal	ra,00000000230A3618
	c.mv	s3,a0
	c.j	0000000023026FFC

l23027088:
	beq	a0,a5,00000000230270D2

l2302708C:
	beq	a0,a4,00000000230270DC

l23027090:
	bne	a0,a6,0000000023026FFC

l23027094:
	c.lwsp	a2,00000044
	jal	ra,00000000230A3618
	c.mv	s2,a0
	c.j	0000000023026FFC

l2302709E:
	c.lwsp	a2,00000064
	addi	a0,s8,-0000019C
	jal	ra,00000000230A3FF4
	c.beqz	a0,0000000023027116

l230270AA:
	c.lwsp	a2,00000064
	addi	a0,s9,-000001D8
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002302711A

l230270B6:
	c.lwsp	a2,00000064
	addi	a0,s10,-000001B0
	jal	ra,00000000230A3FF4
	c.beqz	a0,000000002302711E

l230270C2:
	c.lwsp	a2,00000064
	addi	a0,s11,-0000032C
	jal	ra,00000000230A3FF4
	c.bnez	a0,0000000023026FFC

l230270CE:
	c.li	s0,00000002
	c.j	0000000023026FFC

l230270D2:
	c.lwsp	a2,00000044
	jal	ra,00000000230A3618
	c.mv	s1,a0
	c.j	0000000023026FFC

l230270DC:
	c.lwsp	a2,00000044
	jal	ra,00000000230A3618
	c.swsp	a0,00000004
	c.j	0000000023026FFC

l230270E6:
	c.lwsp	s8,00000084
	lw	a1,s4,+00000000
	lui	a0,000230B3
	addi	a0,a0,+00000544
	jal	ra,0000000023082388

l230270F8:
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

l23027116:
	c.li	s0,00000003
	c.j	0000000023026FFC

l2302711A:
	c.li	s0,00000000
	c.j	0000000023026FFC

l2302711E:
	c.li	s0,00000001
	c.j	0000000023026FFC

l23027122:
	c.li	a5,00000003
	beq	s0,a5,0000000023027180

l23027128:
	c.li	a5,00000004
	bne	s0,a5,0000000023027048

l2302712E:
	lui	a0,000230B3
	addi	a0,a0,+000005C0
	jal	ra,0000000023082388
	c.j	00000000230270F8

l2302713C:
	lui	a1,000230C1
	lui	a0,000230B3
	addi	a1,a1,-000001B0
	addi	a0,a0,+000005B0
	jal	ra,0000000023082388
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000001
	c.j	0000000023027068

l2302715E:
	lui	a1,000230B7
	lui	a0,000230B3
	addi	a1,a1,-0000032C
	addi	a0,a0,+000005B0
	jal	ra,0000000023082388
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000002
	c.j	0000000023027068

l23027180:
	lui	a1,000230C1
	lui	a0,000230B3
	addi	a1,a1,-0000019C
	addi	a0,a0,+000005B0
	jal	ra,0000000023082388
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000003
	c.j	0000000023027068

;; cmd_wifi_ap_stop: 230271A2
cmd_wifi_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023027EF6
	c.lwsp	a2,00000020
	lui	a0,000230B3
	addi	a0,a0,+00000528
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; cmd_wifi_ap_start: 230271BC
cmd_wifi_ap_start proc
	c.addi16sp	FFFFFFC0
	c.li	a1,00000000
	c.swsp	s0,0000001C
	c.addi4spn	a0,00000008
	c.mv	s0,a2
	c.li	a2,00000006
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s1,00000098
	c.mv	s2,a3
	jal	ra,00000000230A3A68
	c.addi4spn	a0,00000008
	jal	ra,0000000023066220
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,00000000230A3A68
	lbu	a5,sp,+0000000D
	lbu	a4,sp,+0000000C
	lbu	a3,sp,+0000000B
	lui	a2,000230B3
	addi	a2,a2,+00000504
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000010
	jal	ra,00000000230823DA
	sb	zero,sp,+0000002F
	jal	ra,0000000023027D88
	c.li	a5,00000001
	bne	s0,a5,000000002302722A

l23027212:
	c.li	a4,00000001
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010

l2302721A:
	jal	ra,0000000023027EDC

l2302721E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2302722A:
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,00000000230A3618
	addi	a3,a0,-00000001
	c.li	a5,0000000A
	c.mv	a4,a0
	bltu	a5,a3,000000002302721E

l23027240:
	addi	a2,s0,-00000003
	lui	a3,000230B3
	addi	a3,a3,+0000051C
	sltiu	a2,a2,+00000001
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	c.j	000000002302721A

;; wifi_sniffer_off_cmd: 23027256
wifi_sniffer_off_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027FAA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023027F8A

;; wifi_sniffer_on_cmd: 23027268
wifi_sniffer_on_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027F9A
	c.lwsp	a2,00000020
	lui	a1,00023027
	addi	a1,a1,+00000450
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023027F7A

;; wifi_denoise_disable_cmd: 23027282
wifi_denoise_disable_cmd proc
	jal	zero,00000000230268D6

;; wifi_denoise_enable_cmd: 23027286
wifi_denoise_enable_cmd proc
	jal	zero,0000000023026870

;; wifi_power_saving_off_cmd: 2302728A
wifi_power_saving_off_cmd proc
	c.li	a0,00000000
	jal	zero,0000000023027BA8

;; wifi_power_saving_on_cmd: 23027290
wifi_power_saving_on_cmd proc
	c.li	a0,00000002
	jal	zero,0000000023027BA8

;; wifi_rc_fixed_disable: 23027296
wifi_rc_fixed_disable proc
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	jal	zero,0000000023027FBA

;; wifi_disable_autoreconnect_cmd: 2302729E
wifi_disable_autoreconnect_cmd proc
	jal	zero,0000000023027BE8

;; wifi_enable_autoreconnect_cmd: 230272A2
wifi_enable_autoreconnect_cmd proc
	jal	zero,0000000023027BD8

;; wifi_disconnect_cmd: 230272A6
wifi_disconnect_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027B98
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023027AFA

;; wifi_sta_ip_unset_cmd: 230272C0
wifi_sta_ip_unset_cmd proc
	jal	zero,0000000023027B8A

;; wifi_sta_ip_info: 230272C4
wifi_sta_ip_info proc
	c.addi16sp	FFFFFFA0
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	c.addi4spn	a0,00000010
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	jal	ra,0000000023027B0A
	c.addi4spn	a1,00000020
	c.addi4spn	a0,0000001C
	jal	ra,0000000023027B22
	c.addi4spn	a0,00000024
	jal	ra,0000000023027FC6
	c.addi4spn	a0,00000028
	jal	ra,000000002300B50E
	c.lwsp	tp,00000174
	lui	a0,000230B4
	addi	a0,a0,+000007D0
	jal	ra,0000000023082388
	c.addi4spn	a0,00000010
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B4
	addi	a0,a0,+000007E0
	jal	ra,0000000023082388
	c.addi4spn	a0,00000018
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B4
	addi	a0,a0,+000007F0
	jal	ra,0000000023082388
	c.addi4spn	a0,00000014
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-00000800
	jal	ra,0000000023082388
	c.addi4spn	a0,0000001C
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-000007F0
	jal	ra,0000000023082388
	c.addi4spn	a0,00000020
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-000007E0
	jal	ra,0000000023082388
	lui	a0,000230B5
	addi	a0,a0,-000007D0
	jal	ra,000000002308234C
	lui	s0,000230B4
	addi	a0,s0,+00000430
	jal	ra,000000002308234C
	lb	a4,sp,+0000002B
	lb	a3,sp,+0000002A
	lb	a2,sp,+00000029
	lb	a1,sp,+00000028
	lui	a0,000230B5
	addi	a0,a0,-000007B8
	jal	ra,0000000023082388
	lb	a5,sp,+00000037
	lb	a7,sp,+00000036
	lb	a6,sp,+00000035
	c.swsp	a5,00000000
	lb	a4,sp,+00000033
	lb	a5,sp,+00000034
	lb	a3,sp,+00000032
	lb	a2,sp,+00000031
	lb	a1,sp,+00000030
	lui	a0,000230B5
	addi	a0,a0,-00000778
	jal	ra,0000000023082388
	lb	a5,sp,+0000003F
	lb	a7,sp,+0000003E
	lb	a6,sp,+0000003D
	c.swsp	a5,00000000
	lb	a4,sp,+0000003B
	lb	a5,sp,+0000003C
	lb	a3,sp,+0000003A
	lb	a2,sp,+00000039
	lb	a1,sp,+00000038
	lui	a0,000230B5
	addi	a0,a0,-0000071C
	jal	ra,0000000023082388
	addi	a0,s0,+00000430
	jal	ra,000000002308234C
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; cmd_wifi_raw_send: 230273FA
cmd_wifi_raw_send proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	ra,00000084
	addi	a5,a5,+0000039C
	c.lw	a5,0(a4)
	lui	a0,0004200D
	addi	a2,a0,+00000488
	slli	a3,a4,00000004
	sb	a3,a2,+00000016
	c.addi	a4,00000001
	c.srli	a3,00000008
	c.li	a1,00000018
	addi	a0,a0,+00000488
	sb	a3,a2,+00000017
	c.sw	a5,0(a4)
	jal	ra,0000000023027FD4
	c.beqz	a0,000000002302743E

l2302742E:
	lui	a0,000230B3
	addi	a0,a0,+00000620

l23027436:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002308234C

l2302743E:
	lui	a0,000230B3
	addi	a0,a0,+00000634
	c.j	0000000023027436

;; wifi_scan_cmd: 23027448
wifi_scan_cmd proc
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023027FF0

;; sniffer_cb: 23027450
sniffer_cb proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	addi	a5,a5,+000003A0
	c.swsp	ra,00000084
	c.lw	a5,0(a4)
	lui	s0,0004200F
	addi	s0,s0,+00000394
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	jal	ra,00000000230629A4
	c.lw	s0,0(a5)
	c.sub	a0,a5
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bge	a5,a0,0000000023027484

l2302747E:
	jal	ra,00000000230629A4
	c.sw	s0,0(a0)

l23027484:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; cmd_wifi_dump: 2302748C
cmd_wifi_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a5,00000001
	bge	a5,a2,00000000230274B4

l23027496:
	lui	a0,000230B3
	addi	a0,a0,+000005D0
	jal	ra,000000002308234C
	jal	ra,0000000023063658
	c.li	a0,00000001

l230274A8:
	jal	ra,0000000023014758
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306366C

l230274B4:
	lui	a0,000230B3
	addi	a0,a0,+000005F8
	jal	ra,000000002308234C
	jal	ra,0000000023063658
	c.li	a0,00000000
	c.j	00000000230274A8

;; cmd_wifi_ap_conf_max_sta: 230274C8
cmd_wifi_ap_conf_max_sta proc
	c.li	a5,00000002
	beq	a2,a5,00000000230274DA

l230274CE:
	lui	a0,000230B3
	addi	a0,a0,+000004CC
	jal	zero,0000000023082388

l230274DA:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230A3618
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,000230B3
	addi	a0,a0,+000004EC
	jal	ra,0000000023082388
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023027FBE

;; wifi_mon_cmd: 23027504
wifi_mon_cmd proc
	c.li	a5,00000001
	bge	a5,a2,000000002302750E

l2302750A:
	jal	zero,0000000023027F9A

l2302750E:
	lui	a1,00023027
	addi	a1,a1,+00000450
	c.li	a0,00000000
	jal	zero,0000000023027F7A

;; wifi_rc_fixed_enable: 2302751C
wifi_rc_fixed_enable proc
	c.li	a5,00000004
	beq	a2,a5,000000002302752E

l23027522:
	lui	a0,000230B4
	addi	a0,a0,+00000468
	jal	zero,0000000023082388

l2302752E:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.lw	a3,4(a0)
	c.mv	s0,a3
	jal	ra,00000000230A3618
	c.mv	s1,a0
	andi	s4,a0,+000000FF
	c.lw	s0,8(a0)
	jal	ra,00000000230A3618
	c.mv	s5,a0
	andi	s3,a0,+000000FF
	c.lw	s0,12(a0)
	jal	ra,00000000230A3618
	c.li	a5,00000001
	c.mv	s2,a0
	beq	s4,a5,00000000230275D0

l23027566:
	lui	a1,000230B4
	addi	a1,a1,+0000045C

l2302756E:
	lui	a0,000230B4
	andi	a3,s2,+000000FF
	andi	a2,s5,+000000FF
	addi	a0,a0,+00000488
	jal	ra,0000000023082388
	c.li	a5,00000001
	bne	s4,a5,00000000230275DA

l23027588:
	slli	s0,s1,0000000C
	lui	s1,000000FF
	c.and	s0,s1
	lui	s1,00000020
	c.slli	s2,09
	addi	s1,s1,-00000200
	and	s2,s2,s1
	or	s0,s0,s2
	or	s0,s0,s3
	c.slli	s0,10
	c.srli	s0,00000010

l230275AC:
	lui	a0,000230B4
	c.mv	a1,s0
	addi	a0,a0,+000004AC
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023027FBA

l230275D0:
	lui	a1,000230B4
	addi	a1,a1,+00000454
	c.j	000000002302756E

l230275DA:
	c.li	s0,00000000
	bne	s4,zero,00000000230275AC

l230275E0:
	ori	s0,s3,+00000600
	c.j	00000000230275AC

;; wifi_connect_cmd: 230275E6
wifi_connect_cmd proc
	c.li	a5,00000003
	beq	a2,a5,00000000230275FA

l230275EC:
	c.lw	a3,0(a1)
	lui	a0,000230B4
	addi	a0,a0,+00000244
	jal	zero,0000000023082388

l230275FA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	c.jal	00000000230279FC
	c.lw	s0,8(a2)
	c.lw	s0,4(a1)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi	sp,00000010
	jal	zero,0000000023027D50

;; wifi_sta_ip_set_cmd: 2302761A
wifi_sta_ip_set_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.li	a5,00000006
	beq	a2,a5,000000002302764E

l23027630:
	lui	a0,000230B5
	addi	a0,a0,-000006EC
	jal	ra,000000002308234C

l2302763C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2302764E:
	c.lw	a3,4(a0)
	c.mv	s0,a3
	jal	ra,000000002306F4D2
	c.mv	s1,a0
	c.lw	s0,8(a0)
	jal	ra,000000002306F4D2
	c.mv	s2,a0
	c.lw	s0,12(a0)
	jal	ra,000000002306F4D2
	c.mv	s3,a0
	c.lw	s0,16(a0)
	jal	ra,000000002306F4D2
	c.mv	s4,a0
	c.lw	s0,20(a0)
	lui	s0,000230C7
	jal	ra,000000002306F4D2
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.mv	s5,a0
	c.addi4spn	a0,00000008
	c.swsp	s1,00000004
	jal	ra,000000002306F4EA
	lui	a0,000230B5
	addi	a0,a0,-000006D4
	jal	ra,000000002308234C
	c.addi4spn	a0,0000000C
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s2,00000004
	jal	ra,000000002306F4EA
	lui	a0,000230B5
	addi	a0,a0,-000006CC
	jal	ra,000000002308234C
	c.addi4spn	a0,0000000C
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s3,00000004
	jal	ra,000000002306F4EA
	lui	a0,000230B5
	addi	a0,a0,-000006C4
	jal	ra,000000002308234C
	c.addi4spn	a0,0000000C
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s4,00000004
	jal	ra,000000002306F4EA
	lui	a0,000230B5
	addi	a0,a0,-000006BC
	jal	ra,000000002308234C
	c.addi4spn	a0,0000000C
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s5,00000004
	jal	ra,000000002306F4EA
	lui	a0,000230B5
	addi	a0,a0,-000006B4
	jal	ra,000000002308234C
	c.addi4spn	a0,0000000C
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023027B4C
	c.j	000000002302763C

;; wifi_scan_filter_cmd: 23027748
wifi_scan_filter_cmd proc
	c.li	a5,00000002
	bne	a2,a5,0000000023027760

l2302774E:
	c.lw	a3,4(a5)
	lbu	a0,a5,+00000000
	addi	a0,a0,-00000031
	sltiu	a0,a0,+00000001
	jal	zero,0000000023028014

l23027760:
	c.jr	ra

;; wifi_capcode_cmd: 23027762
wifi_capcode_cmd proc
	addi	a4,a2,-00000001
	c.li	a5,00000001
	bgeu	a5,a4,000000002302777A

l2302776C:
	c.lw	a3,0(a1)
	lui	a0,000230B4
	addi	a0,a0,+000001FC

l23027776:
	jal	zero,0000000023082388

l2302777A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	bne	a2,a5,000000002302779A

l23027784:
	jal	ra,0000000023067B1C
	c.lwsp	s0,00000004
	c.mv	a1,a0
	lui	a0,000230B4
	c.lwsp	a2,00000020
	addi	a0,a0,+00000210
	c.addi	sp,00000010
	c.j	0000000023027776

l2302779A:
	c.lw	a3,4(a0)
	jal	ra,00000000230A3618
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,000230B4
	addi	a0,a0,+0000022C
	jal	ra,0000000023082388
	bge	zero,s0,00000000230277C4

l230277B4:
	andi	a1,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,a1
	c.addi	sp,00000010
	jal	zero,0000000023067ABA

l230277C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cli_scanlist: 230277CC
;;   Called from:
;;     230281BC (in wifi_mgmr_all_ap_scan)
wifi_mgmr_cli_scanlist proc
	lui	a0,000230B4
	c.addi16sp	FFFFFF80
	addi	a0,a0,+000002D4
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	jal	ra,0000000023082388
	lui	a0,000230B4
	lui	s0,00042024
	addi	a0,a0,+000002E8
	addi	s0,s0,-000000C4
	c.lui	s2,00001000
	jal	ra,0000000023082388
	c.li	s1,00000000
	lui	s4,000230B4
	c.add	s2,s0
	lui	s5,000230B4
	addi	s3,zero,+00000032

l2302781A:
	lbu	a5,s0,+000002B0
	c.beqz	a5,00000000230278D6

l23027820:
	jal	ra,00000000230629A4
	lw	a5,s0,+000002B4
	addi	s6,s0,+0000027C
	c.sub	a0,a5
	lw	a5,s2,+000007D0
	bgeu	a0,a5,00000000230278D6

l23027836:
	lbu	a2,s0,+000002AA
	lbu	a3,s0,+000002A4
	lbu	a4,s0,+000002A5
	lbu	a5,s0,+000002A6
	lbu	a6,s0,+000002A7
	lbu	a7,s0,+000002A8
	lbu	a0,s0,+000002AE
	c.swsp	a2,0000009C
	c.swsp	a3,0000001C
	c.swsp	a4,00000098
	c.swsp	a5,00000018
	c.swsp	a6,00000094
	c.swsp	a7,00000014
	lbu	s7,s0,+000002A9
	lb	s8,s0,+000002AB
	lb	s9,s0,+000002AC
	lb	s10,s0,+000002AD
	jal	ra,000000002302571E
	c.mv	s11,a0
	lbu	a0,s0,+000002AF
	jal	ra,000000002302577A
	c.lwsp	s0,00000138
	c.lwsp	a2,00000118
	c.lwsp	a6,000001F4
	c.lwsp	s4,000001D4
	c.lwsp	s8,000001B4
	c.lwsp	t3,00000194
	c.swsp	a0,00000088
	c.swsp	s6,0000000C
	c.swsp	s11,00000008
	c.swsp	s10,00000084
	c.swsp	s9,00000004
	c.swsp	s8,00000080
	c.swsp	s7,00000000
	c.mv	a1,s1
	addi	a0,s5,+00000350
	jal	ra,0000000023082388

l230278A0:
	c.addi	s1,00000001
	addi	s0,s0,+0000003C
	bne	s1,s3,000000002302781A

l230278AA:
	lui	a0,000230B4
	addi	a0,a0,+000003EC
	jal	ra,0000000023082388
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

l230278D6:
	c.mv	a1,s1
	addi	a0,s4,+000003D4
	jal	ra,0000000023082388
	c.j	00000000230278A0

;; wifi_mgmr_ext_dump_needed: 230278E2
;;   Called from:
;;     23023F96 (in tcpip_stack_input)
wifi_mgmr_ext_dump_needed proc
	lui	a5,0004200F
	addi	a5,a5,+00000398
	c.lw	a5,0(a4)
	c.li	a0,00000000
	bge	zero,a4,00000000230278F8

l230278F2:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.li	a0,00000001

l230278F8:
	c.jr	ra

;; wifi_mgmr_cli_init: 230278FA
;;   Called from:
;;     23000B1C (in aos_loop_proc)
wifi_mgmr_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; mac_is_unvalid: 230278FE
;;   Called from:
;;     23027A70 (in wifi_mgmr_sta_enable)
;;     23027A86 (in wifi_mgmr_sta_enable)
;;     23027DCC (in wifi_mgmr_ap_enable)
;;     23027DE2 (in wifi_mgmr_ap_enable)
;;     23027E78 (in wifi_mgmr_ap_mac_get)
mac_is_unvalid proc
	lbu	a5,a0,+00000000
	c.li	a4,00000001
	c.li	a3,00000006

l23027906:
	add	a2,a0,a4
	lbu	a2,a2,+00000000
	bne	a2,a5,000000002302792A

l23027912:
	c.addi	a4,00000001
	bne	a4,a3,0000000023027906

l23027918:
	addi	a0,a5,-00000001
	andi	a0,a0,+000000FF
	sltiu	a0,a0,+000000FE
	xori	a0,a0,+00000001
	c.jr	ra

l2302792A:
	c.li	a0,00000000
	c.jr	ra

;; cb_scan_item_parse: 2302792E
cb_scan_item_parse proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s2,a1,+00000000
	addi	a5,zero,+00000031
	bltu	a5,s2,0000000023027998

l23027946:
	addi	s0,zero,+00000034
	add	s0,s2,s0
	lbu	a5,a2,+0000002E
	c.mv	s1,a2
	c.mv	s3,a1
	addi	a1,s1,+00000028
	c.addi	s2,00000001
	c.add	s0,a0
	sb	a5,s0,+0000002E
	lb	a5,a2,+00000030
	addi	a0,s0,+00000028
	c.li	a2,00000006
	sb	a5,s0,+00000030
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.mv	a0,s0
	sb	zero,s0,+00000020
	jal	ra,00000000230A4220
	c.sw	s0,36(a0)
	lbu	a5,s1,+0000002F
	sb	a5,s0,+0000002F
	sw	s2,s3,+00000000

l23027998:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; cb_scan_complete: 230279A6
cb_scan_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,36(a2)
	c.lw	a1,0(a1)
	lui	a0,000230B5
	addi	a0,a0,-00000644
	jal	ra,0000000023082388
	lui	a5,00042025
	lw	a0,a5,+00000710
	c.beqz	a0,00000000230279D2

l230279C4:
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061344

l230279D2:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_drv_init: 230279D8
;;   Called from:
;;     230259C6 (in wifi_mgmr_start_background)
wifi_mgmr_drv_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023028DCA
	c.mv	a0,s0
	jal	ra,00000000230269AE
	jal	ra,00000000230259F0
	jal	ra,00000000230262D6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_enable: 230279FC
;;   Called from:
;;     23000588 (in event_cb_wifi_event)
;;     23027602 (in wifi_connect_cmd)
;;     2307D76C (in __wifimode_set)
wifi_mgmr_sta_enable proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	a5,a5,+000003A4
	c.lw	a5,0(a3)
	c.li	a4,00000001
	bne	a3,a4,0000000023027A36

l23027A16:
	lui	a0,000230B5
	addi	a0,a0,-00000554
	jal	ra,0000000023082388

l23027A22:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,00042024
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,-000000B8
	c.addi16sp	00000020
	c.jr	ra

l23027A36:
	lui	a0,000230B5
	addi	a0,a0,-00000528
	c.sw	a5,0(a4)
	lui	s0,00042024
	jal	ra,0000000023082388
	lui	s1,00042024
	lui	s2,00042024
	addi	a5,s0,-000000C4
	c.li	a2,00000006
	addi	a1,s2,-000000B3
	addi	a0,s1,-0000005E
	sw	zero,a5,+0000000C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,00000000230A382C
	addi	a0,s1,-0000005E
	jal	ra,00000000230278FE
	addi	s0,s0,-000000C4
	c.beqz	a0,0000000023027AAE

l23027A7A:
	addi	a0,s1,-0000005E
	jal	ra,0000000023066220
	addi	a0,s1,-0000005E
	jal	ra,00000000230278FE
	c.beqz	a0,0000000023027AA0

l23027A8C:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s0,+00000066
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	c.sw	s0,104(a5)

l23027AA0:
	c.li	a2,00000006
	addi	a1,s1,-0000005E
	addi	a0,s2,-000000B3
	jal	ra,00000000230A382C

l23027AAE:
	lui	s1,00042024
	lui	a6,0002306C
	lui	a5,00023029
	addi	a6,a6,-000005A2
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a5,a5,-0000027E
	addi	a0,s1,-00000098
	jal	ra,000000002306A8EC
	c.lui	a5,00007000
	addi	a5,a5,+00000473
	sh	a5,s0,+0000006E
	lbu	a5,s0,+0000006D
	addi	a0,s1,-00000098
	ori	a5,a5,+00000024
	sb	a5,s0,+0000006D
	jal	ra,000000002306FE30
	addi	a0,s1,-00000098
	jal	ra,000000002306FE3A
	c.j	0000000023027A22

;; wifi_mgmr_sta_disable: 23027AFA
;;   Called from:
;;     230272BC (in wifi_disconnect_cmd)
;;     2307D2BC (in cwqap)
;;     2307D746 (in __wifimode_set)
;;     2307D762 (in __wifimode_set)
;;     2307D78E (in __wifimode_set)
wifi_mgmr_sta_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026800
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_ip_get: 23027B0A
;;   Called from:
;;     230003DE (in wifiprov_wifi_state_get)
;;     230272D0 (in wifi_sta_ip_info)
;;     2307CC96 (in cipsta_ip_get)
;;     2307CDCA (in cipsta_ip)
;;     2307D2FC (in cwjap_info)
wifi_mgmr_sta_ip_get proc
	lui	a5,00042024
	addi	a5,a5,-000000C4
	c.lw	a5,48(a4)
	c.sw	a0,0(a4)
	c.lw	a5,52(a4)
	c.li	a0,00000000
	c.sw	a2,0(a4)
	c.lw	a5,56(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; wifi_mgmr_sta_dns_get: 23027B22
;;   Called from:
;;     230272D8 (in wifi_sta_ip_info)
;;     2307CCC8 (in cipsta_ip_get)
;;     2307CDD2 (in cipsta_ip)
wifi_mgmr_sta_dns_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002306C348
	c.lw	a0,0(a5)
	c.li	a0,00000001
	c.sw	s0,0(a5)
	jal	ra,000000002306C348
	c.lw	a0,0(a5)
	c.lwsp	a2,00000064
	c.li	a0,00000000
	c.sw	a1,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_sta_ip_set: 23027B4C
;;   Called from:
;;     23027744 (in wifi_sta_ip_set_cmd)
;;     23027B94 (in wifi_mgmr_sta_ip_unset)
;;     2307CF24 (in cipsta_ip)
wifi_mgmr_sta_ip_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	a0,0000008C
	c.swsp	a1,0000000C
	c.swsp	a2,00000088
	c.swsp	a3,00000008
	c.swsp	a4,00000084
	jal	ra,0000000023063658
	c.lwsp	t3,00000044
	c.lwsp	s8,00000064
	c.lwsp	s4,00000084
	c.lwsp	a6,000000A4
	c.lwsp	a2,000000C4
	lui	a5,00042024
	addi	a5,a5,-000000C4
	c.sw	a5,24(a0)
	c.sw	a5,28(a1)
	c.sw	a5,32(a2)
	c.sw	a5,36(a3)
	c.sw	a5,40(a4)
	jal	ra,000000002306366C
	jal	ra,0000000023025FC6
	c.lwsp	a2,00000130
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_sta_ip_unset: 23027B8A
;;   Called from:
;;     230272C0 (in wifi_sta_ip_unset_cmd)
wifi_mgmr_sta_ip_unset proc
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023027B4C

;; wifi_mgmr_sta_disconnect: 23027B98
;;   Called from:
;;     230272AA (in wifi_disconnect_cmd)
;;     2307D2AE (in cwqap)
;;     2307D738 (in __wifimode_set)
;;     2307D780 (in __wifimode_set)
wifi_mgmr_sta_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302618E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_powersaving: 23027BA8
;;   Called from:
;;     2302728C (in wifi_power_saving_off_cmd)
;;     23027292 (in wifi_power_saving_on_cmd)
wifi_mgmr_sta_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000001
	beq	a0,a5,0000000023027BCC

l23027BB4:
	c.li	a5,00000002
	c.mv	s0,a0
	beq	a0,a5,0000000023027BCC

l23027BBC:
	c.bnez	a0,0000000023027BD4

l23027BBE:
	jal	ra,00000000230265FE

l23027BC2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23027BCC:
	jal	ra,00000000230265FE
	c.li	s0,00000000
	c.j	0000000023027BC2

l23027BD4:
	c.li	s0,FFFFFFFF
	c.j	0000000023027BC2

;; wifi_mgmr_sta_autoconnect_enable: 23027BD8
;;   Called from:
;;     230272A2 (in wifi_enable_autoreconnect_cmd)
;;     2307C584 (in at_key_value_set)
;;     2307D8F8 (in cwjap_cur)
wifi_mgmr_sta_autoconnect_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302611C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_autoconnect_disable: 23027BE8
;;   Called from:
;;     2302729E (in wifi_disable_autoreconnect_cmd)
;;     2307C59C (in at_key_value_set)
;;     2307D91C (in cwjap_cur)
wifi_mgmr_sta_autoconnect_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230260AA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_connect_ind_stat_get: 23027BF8
;;   Called from:
;;     230003E4 (in wifiprov_wifi_state_get)
;;     2307D2F2 (in cwjap_info)
wifi_mgmr_sta_connect_ind_stat_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042025
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,s3,+0000068F
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	jal	ra,00000000230A4220
	addi	s2,s0,+00000003
	bge	zero,a0,0000000023027C30

l23027C1C:
	c.mv	s1,a0
	c.mv	a2,a0
	addi	a1,s3,+0000068F
	c.mv	a0,s2
	c.add	s1,s0
	jal	ra,00000000230A382C
	sb	zero,s1,+00000003

l23027C30:
	lui	s4,00042025
	addi	a0,s4,+000006AF
	jal	ra,00000000230A4220
	c.mv	s1,a0
	addi	s3,s0,+00000023
	bge	zero,a0,0000000023027C58

l23027C46:
	c.mv	a2,a0
	addi	a1,s4,+000006AF
	c.mv	a0,s3
	c.add	s1,s0
	jal	ra,00000000230A382C
	sb	zero,s1,+00000023

l23027C58:
	lui	a1,00042025
	c.li	a2,00000006
	addi	a1,a1,+000006F0
	addi	a0,s0,+000000A4
	jal	ra,00000000230A382C
	lui	a5,00042025
	addi	a5,a5,-000000C4
	lhu	a1,a5,+00000750
	lui	a0,000230B5
	addi	a0,a0,-000005D4
	sh	a1,s0,+00000000
	lbu	a4,a5,+000007BC
	sb	a4,s0,+000000AC
	lhu	a4,a5,+000007BA
	sh	a4,s0,+000000AA
	lbu	a5,a5,+00000752
	sb	a5,s0,+00000002
	jal	ra,0000000023082388
	lbu	a5,s0,+00000002
	lhu	a4,s0,+000000AA
	lbu	a3,s0,+000000AC
	lui	a0,000230B5
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,a0,-000005B0
	jal	ra,0000000023082388
	lbu	a6,s0,+000000A9
	lbu	a5,s0,+000000A8
	lbu	a4,s0,+000000A7
	lbu	a3,s0,+000000A6
	lbu	a2,s0,+000000A5
	lbu	a1,s0,+000000A4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,000230B5
	addi	a0,a0,-00000578
	c.addi16sp	00000020
	jal	zero,0000000023082388

;; wifi_mgmr_sta_ssid_set: 23027CEC
;;   Called from:
;;     23027D66 (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_ssid_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230A4220
	c.beqz	a0,0000000023027D16

l23027CFA:
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042025
	addi	a0,a0,+0000068F
	c.addi	sp,00000010
	jal	zero,00000000230A382C

l23027D16:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_psk_set: 23027D1E
;;   Called from:
;;     23027D6C (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_psk_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230A4220
	c.beqz	a0,0000000023027D48

l23027D2C:
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042025
	addi	a0,a0,+000006AF
	c.addi	sp,00000010
	jal	zero,00000000230A382C

l23027D48:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_connect: 23027D50
;;   Called from:
;;     230006C2 (in event_cb_wifi_event)
;;     23027616 (in wifi_connect_cmd)
;;     2307D8E2 (in cwjap_cur)
wifi_mgmr_sta_connect proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a2
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	a5,00000080
	c.swsp	a6,00000000
	jal	ra,0000000023027CEC
	c.mv	a0,s1
	jal	ra,0000000023027D1E
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	zero,000000E4
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023025C20

;; wifi_mgmr_ap_enable: 23027D88
;;   Called from:
;;     23027208 (in cmd_wifi_ap_start)
;;     2307D798 (in __wifimode_set)
wifi_mgmr_ap_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042024
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	a5,s1,-000000C4
	c.li	a4,00000001
	c.sw	a5,124(a4)
	lui	a5,000010BB
	addi	a5,a5,-00000740
	c.swsp	a5,00000080
	lui	s0,00042024
	lui	a5,00001000
	lui	s2,00042024
	c.addi	a5,FFFFFFFF
	c.li	a2,00000006
	addi	a1,s2,-00000043
	addi	a0,s0,+00000012
	c.swsp	a5,00000004
	c.swsp	zero,00000084
	jal	ra,00000000230A382C
	addi	a0,s0,+00000012
	jal	ra,00000000230278FE
	addi	s1,s1,-000000C4
	c.beqz	a0,0000000023027E0C

l23027DD6:
	addi	a0,s0,+00000012
	jal	ra,0000000023066220
	addi	a0,s0,+00000012
	jal	ra,00000000230278FE
	c.beqz	a0,0000000023027DFE

l23027DE8:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s1,+000000D6
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	sw	a5,s1,+000000D8

l23027DFE:
	c.li	a2,00000006
	addi	a1,s0,+00000012
	addi	a0,s2,-00000043
	jal	ra,00000000230A382C

l23027E0C:
	lui	s0,00042024
	lui	a6,0002306C
	lui	a5,00023029
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a6,a6,-000005A2
	c.li	a4,00000000
	addi	a5,a5,-0000027E
	addi	a0,s0,-00000028
	jal	ra,000000002306A8EC
	c.lui	a5,00007000
	addi	a5,a5,+00000061
	addi	a0,s0,-00000028
	sh	a5,s1,+000000DE
	jal	ra,000000002306FE30
	addi	a0,s0,-00000028
	jal	ra,000000002306FE3A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,00042024
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,-00000048
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_mac_get: 23027E5E
;;   Called from:
;;     2307D174 (in ap_sta_get)
wifi_mgmr_ap_mac_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042024
	c.swsp	s1,00000080
	c.mv	s1,a0
	addi	a0,s0,-00000043
	c.swsp	ra,00000084
	jal	ra,0000000023066134
	addi	a0,s0,-00000043
	jal	ra,00000000230278FE
	c.beqz	a0,0000000023027EA6

l23027E7E:
	lui	a5,00042024
	addi	a5,a5,-000000C4
	addi	a4,zero,-00000040
	sb	a4,a5,+00000081
	c.lui	a4,00004000
	addi	a4,a4,+00000350
	sh	a4,a5,+00000082
	addi	a4,zero,+000000C9
	sh	a4,a5,+00000084
	c.li	a4,00000001
	sb	a4,a5,+00000086

l23027EA6:
	addi	a1,s0,-00000043
	c.mv	a0,s1
	c.li	a2,00000006
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_ip_get: 23027EBE
;;   Called from:
;;     2307D16E (in ap_sta_get)
wifi_mgmr_ap_ip_get proc
	lui	a5,00042024
	addi	a5,a5,-000000C4
	lw	a4,a5,+000000A0
	c.sw	a0,0(a4)
	lw	a4,a5,+000000A4
	c.li	a0,00000000
	c.sw	a1,0(a4)
	lw	a5,a5,+000000A8
	c.sw	a2,0(a5)
	c.jr	ra

;; wifi_mgmr_ap_start: 23027EDC
;;   Called from:
;;     2302721A (in cmd_wifi_ap_start)
;;     2307D80E (in set_apcfg)
wifi_mgmr_ap_start proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.mv	a1,a3
	andi	a3,a2,+000000FF
	c.mv	a2,a4
	c.swsp	ra,00000084
	jal	ra,0000000023026672
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_stop: 23027EF6
;;   Called from:
;;     230271A8 (in cmd_wifi_ap_stop)
;;     2307D74C (in __wifimode_set)
;;     2307D768 (in __wifimode_set)
;;     2307D794 (in __wifimode_set)
wifi_mgmr_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302678E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get: 23027F06
;;   Called from:
;;     23026D2E (in wifi_ap_sta_list_get_cmd)
;;     23026EB0 (in wifi_ap_sta_delete_cmd)
;;     2307D164 (in ap_sta_get)
wifi_mgmr_ap_sta_cnt_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025B9C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get: 23027F16
;;   Called from:
;;     23026D9C (in wifi_ap_sta_list_get_cmd)
;;     23026F20 (in wifi_ap_sta_delete_cmd)
;;     2307D1E2 (in ap_sta_get)
wifi_mgmr_ap_sta_info_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,00000000230A3A68
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023025BAC
	lhu	a5,sp,+00000008
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000002
	sh	a5,s0,+00000000
	c.lwsp	s8,000000E4
	c.li	a2,00000006
	c.sw	s0,16(a5)
	c.lwsp	s4,000000E4
	c.sw	s0,12(a5)
	c.lwsp	a6,000000E4
	c.sw	s0,8(a5)
	lbu	a5,sp,+0000001C
	sb	a5,s0,+00000014
	jal	ra,00000000230A382C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete: 23027F6A
;;   Called from:
;;     23026F72 (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025C00
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_register: 23027F7A
;;   Called from:
;;     2302727E (in wifi_sniffer_on_cmd)
;;     23027518 (in wifi_mon_cmd)
wifi_mgmr_sniffer_register proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023023A20
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_unregister: 23027F8A
;;   Called from:
;;     23027264 (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023023A34
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_enable: 23027F9A
;;   Called from:
;;     2302726C (in wifi_sniffer_on_cmd)
;;     2302750A (in wifi_mon_cmd)
wifi_mgmr_sniffer_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026348
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_disable: 23027FAA
;;   Called from:
;;     2302725A (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026800
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_rate_config: 23027FBA
;;   Called from:
;;     2302729A (in wifi_rc_fixed_disable)
;;     230275CC (in wifi_rc_fixed_enable)
wifi_mgmr_rate_config proc
	jal	zero,0000000023026200

;; wifi_mgmr_conf_max_sta: 23027FBE
;;   Called from:
;;     23027500 (in cmd_wifi_ap_conf_max_sta)
wifi_mgmr_conf_max_sta proc
	jal	zero,000000002302626C

;; wifi_mgmr_state_get: 23027FC2
;;   Called from:
;;     230003D4 (in wifiprov_wifi_state_get)
;;     230269F6 (in cmd_wifi_state_get)
;;     23026AB8 (in wifi_sta_get_state_cmd)
;;     23026CFC (in wifi_ap_sta_list_get_cmd)
;;     23026E3E (in wifi_ap_sta_delete_cmd)
;;     2307D2E2 (in cwjap_info)
wifi_mgmr_state_get proc
	jal	zero,0000000023025A4A

;; wifi_mgmr_rssi_get: 23027FC6
;;   Called from:
;;     230272DE (in wifi_sta_ip_info)
wifi_mgmr_rssi_get proc
	lui	a5,00042024
	lb	a5,a5,-0000004C
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_raw_80211_send: 23027FD4
;;   Called from:
;;     23027428 (in cmd_wifi_raw_send)
wifi_mgmr_raw_80211_send proc
	addi	a5,zero,+000001E0
	blt	a5,a1,0000000023027FEC

l23027FDC:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302693A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23027FEC:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_scan: 23027FF0
;;   Called from:
;;     2302744C (in wifi_scan_cmd)
wifi_mgmr_scan proc
	lui	a5,0004200F
	c.addi	sp,FFFFFFF0
	sw	a1,a5,+000003A8
	lui	a5,0004200F
	c.swsp	ra,00000084
	sw	a0,a5,+000003AC
	jal	ra,000000002302658C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cfg_req: 23028010
;;   Called from:
;;     23027068 (in cmd_wifi_cfg)
wifi_mgmr_cfg_req proc
	jal	zero,0000000023025D6A

;; wifi_mgmr_scan_filter_hidden_ssid: 23028014
;;   Called from:
;;     2302775C (in wifi_scan_filter_cmd)
wifi_mgmr_scan_filter_hidden_ssid proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023063658
	c.lwsp	a2,00000044
	lui	a4,00042025
	addi	a4,a4,-000000C4
	lw	a5,a4,+000007CC
	c.beqz	a0,0000000023028040

l2302802E:
	c.andi	a5,FFFFFFFE

l23028030:
	sw	a5,a4,+000007CC
	jal	ra,000000002306366C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23028040:
	ori	a5,a5,+00000001
	c.j	0000000023028030

;; wifi_mgmr_scan_complete_callback: 23028046
;;   Called from:
;;     23025C14 (in wifi_mgmr_scan_complete_notify)
wifi_mgmr_scan_complete_callback proc
	lui	a1,000230B5
	lui	a0,000230B5
	c.addi	sp,FFFFFFE0
	addi	a1,a1,-00000668
	addi	a0,a0,-000005E8
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023082388
	lui	a5,0004200F
	lw	a5,a5,+000003A8
	c.beqz	a5,000000002302807A

l2302806A:
	c.li	a4,00000001
	c.swsp	a4,00000084
	lui	a4,0004200F
	lw	a0,a4,+000003AC
	c.addi4spn	a1,0000000C
	c.jalr	a5

l2302807A:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_scan_ap_all: 23028082
;;   Called from:
;;     23000362 (in scan_complete_cb)
;;     230281CC (in wifi_mgmr_all_ap_scan)
wifi_mgmr_scan_ap_all proc
	c.addi16sp	FFFFFF90
	c.lui	a5,00001000
	c.swsp	s0,00000034
	lui	s0,00042024
	addi	s0,s0,-000000C4
	c.swsp	s2,00000030
	addi	s2,a5,-00000448
	c.swsp	s1,000000B0
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	ra,000000B4
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s5,a2
	c.add	s2,s0
	add	s1,s0,a5

l230280AC:
	lbu	a5,s0,+000002B0
	c.beqz	a5,000000002302810E

l230280B2:
	addi	a1,s0,+0000027C
	c.swsp	a1,00000084
	jal	ra,00000000230629A4
	lw	a5,s0,+000002B4
	c.lwsp	a2,00000064
	c.sub	a0,a5
	lw	a5,s1,+000007D0
	bgeu	a0,a5,000000002302810E

l230280CC:
	addi	a2,zero,+00000020
	c.addi4spn	a0,0000001C
	jal	ra,00000000230A382C
	c.addi4spn	a0,0000001C
	sb	zero,sp,+0000003C
	jal	ra,00000000230A4220
	c.swsp	a0,00000020
	c.li	a2,00000006
	addi	a1,s0,+000002A4
	c.addi4spn	a0,00000044
	jal	ra,00000000230A382C
	lbu	a5,s0,+000002AA
	c.addi4spn	a2,0000001C
	c.mv	a1,s4
	sb	a5,sp,+0000004A
	lbu	a5,s0,+000002AB
	c.mv	a0,s3
	sb	a5,sp,+0000004C
	lbu	a5,s0,+000002AE
	sb	a5,sp,+0000004B
	c.jalr	s5

l2302810E:
	addi	s0,s0,+0000003C
	bne	s0,s2,00000000230280AC

l23028116:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.li	a0,00000000
	c.addi16sp	00000070
	c.jr	ra

;; wifi_mgmr_all_ap_scan: 2302812A
;;   Called from:
;;     2307D448 (in scan)
wifi_mgmr_all_ap_scan proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	zero,00000084
	c.bnez	a0,000000002302814A

l2302813A:
	c.li	a0,FFFFFFFF

l2302813C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302814A:
	c.beqz	a1,000000002302813A

l2302814C:
	c.lui	s0,00001000
	c.mv	s2,a0
	addi	a0,s0,-000005D8
	c.mv	s3,a1
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.beqz	a0,000000002302813A

l2302815E:
	addi	a2,s0,-000005D8
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a2,00000003
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002306128C
	lui	s0,00042025
	sw	a0,s0,+00000710
	c.bnez	a0,0000000023028184

l2302817C:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.j	000000002302813A

l23028184:
	lui	a5,00023028
	lui	a4,0004200F
	addi	a5,a5,-0000065A
	sw	a5,a4,+000003A8
	lui	a5,0004200F
	sw	s1,a5,+000003AC
	jal	ra,000000002302658C
	lw	a0,s0,+00000710
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000001
	bne	a0,a5,00000000230281BC

l230281B0:
	lui	a0,000230B5
	addi	a0,a0,-000005FC
	jal	ra,0000000023082388

l230281BC:
	jal	ra,00000000230277CC
	lui	a2,00023028
	addi	a2,a2,-000006D2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023028082
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000000
	sw	s1,s2,+00000000
	lw	a0,s0,+00000710
	jal	ra,00000000230619CC
	c.li	a0,00000000
	c.j	000000002302813C

;; wifi_mgmr_status_code_str: 230281E6
wifi_mgmr_status_code_str proc
	c.li	a5,00000010
	bltu	a5,a0,00000000230281FE

l230281EC:
	slli	a5,a0,00000002
	lui	a0,000230B5
	addi	a0,a0,-000006AC
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l230281FE:
	lui	a0,000230B5
	addi	a0,a0,-00000510
	c.jr	ra

;; wifi_mgmr_profile_add: 23028208
;;   Called from:
;;     23024AE6 (in stateIdleAction_connect)
wifi_mgmr_profile_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a4,FFFFFFFF
	c.mv	s1,a1
	beq	a2,a4,000000002302822A

l23028218:
	lbu	a4,a0,+000001B1
	c.beqz	a4,000000002302823C

l2302821E:
	lbu	a4,a0,+00000275
	c.li	a2,FFFFFFFF
	c.bnez	a4,0000000023028230

l23028226:
	c.li	a1,00000001
	c.j	000000002302823E

l2302822A:
	addi	s0,a0,+000000F0
	c.bnez	s0,000000002302825C

l23028230:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a2
	c.addi	sp,00000010
	c.jr	ra

l2302823C:
	c.li	a1,00000000

l2302823E:
	addi	s0,zero,+000000C4
	add	s0,a1,s0
	sw	a1,a0,+00000278
	addi	s0,s0,+000000F0
	c.add	s0,a0
	lui	a0,000230B5
	addi	a0,a0,-000004FC
	jal	ra,0000000023082388

l2302825C:
	addi	a2,zero,+000000C4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000100
	sh	a5,s0,+000000C0
	lbu	a4,s1,+00000022
	lbu	a5,s1,+00000021
	addi	a2,zero,+00000021
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000023
	c.mv	a1,s1
	c.mv	a0,s0
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000024
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,36(a5)
	lbu	a4,s1,+000000A8
	lbu	a5,s1,+000000A7
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+000000A9
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+000000AA
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,108(a5)
	lbu	a4,s1,+000000AC
	lbu	a5,s1,+000000AB
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+000000AD
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+000000AE
	c.slli	a5,18
	c.or	a5,a4
	sw	a5,s0,+000000B4
	c.li	a5,FFFFFFFF
	sb	a5,s0,+000000BF
	jal	ra,00000000230A382C
	addi	a2,zero,+00000041
	addi	a1,s1,+00000025
	addi	a0,s0,+00000028
	jal	ra,00000000230A382C
	addi	a2,zero,+00000041
	addi	a1,s1,+00000066
	addi	a0,s0,+00000070
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s1,+000000AF
	addi	a0,s0,+000000B8
	jal	ra,00000000230A382C
	lbu	a5,s1,+000000B8
	c.li	a2,00000000
	sb	a5,s0,+000000BE
	c.j	0000000023028230

;; wifi_mgmr_profile_get: 23028318
;;   Called from:
;;     230250BA (in disconnect_retry)
wifi_mgmr_profile_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a4,a0,+000001B1
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a4,a5,0000000023028346

l2302832E:
	lbu	a4,a0,+00000275
	c.li	s1,00000001
	c.li	a0,FFFFFFFF
	beq	a4,a5,0000000023028348

l2302833A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23028346:
	c.li	s1,00000000

l23028348:
	lui	a0,000230B5
	c.mv	s0,a1
	addi	a0,a0,-000004D0
	c.mv	a1,s1
	jal	ra,0000000023082388
	addi	a2,zero,+000000B9
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	addi	a1,zero,+000000C4
	add	s1,s1,a1
	addi	a2,zero,+00000021
	c.mv	a0,s0
	add	a4,s2,s1
	lw	a5,a4,+00000114
	addi	a1,s1,+000000F0
	c.add	a1,s2
	srli	a3,a5,00000008
	sb	a5,s0,+00000021
	sb	a3,s0,+00000022
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+00000023
	sb	a5,s0,+00000024
	lw	a5,a4,+0000015C
	srli	a3,a5,00000008
	sb	a5,s0,+000000A7
	sb	a3,s0,+000000A8
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+000000A9
	sb	a5,s0,+000000AA
	lw	a5,a4,+000001A4
	srli	a3,a5,00000008
	sb	a5,s0,+000000AB
	sb	a3,s0,+000000AC
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+000000AD
	sb	a5,s0,+000000AE
	lbu	a5,a4,+000001AE
	sb	a5,s0,+000000B8
	jal	ra,00000000230A382C
	addi	a1,s1,+00000118
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000025
	jal	ra,00000000230A382C
	addi	a1,s1,+00000160
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000066
	jal	ra,00000000230A382C
	addi	a1,s1,+000001A8
	c.li	a2,00000006
	c.add	a1,s2
	addi	a0,s0,+000000AF
	jal	ra,00000000230A382C
	c.li	a0,00000000
	c.j	000000002302833A

;; wifi_mgmr_profile_autoreconnect_is_enabled: 2302841A
;;   Called from:
;;     23025464 (in stateDisconnect_enter)
wifi_mgmr_profile_autoreconnect_is_enabled proc
	c.lui	a5,00001000
	c.add	a0,a5
	lbu	a0,a0,+000007C1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_disable: 23028428
;;   Called from:
;;     23025432 (in stateGlobalGuard_disable_autoreconnect)
wifi_mgmr_profile_autoreconnect_disable proc
	c.lui	a5,00001000
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_enable: 23028436
;;   Called from:
;;     230253B6 (in stateGlobalGuard_enable_autoreconnect)
wifi_mgmr_profile_autoreconnect_enable proc
	c.lui	a5,00001000
	c.add	a0,a5
	sb	zero,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_netif_dhcp_start: 23028442
;;   Called from:
;;     23024920 (in stateConnectedIPNoEnter)
wifi_netif_dhcp_start proc
	lui	a2,0002306E
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-000004FE
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002306A96E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cb_rssi_ind: 2302845C
cb_rssi_ind proc
	lui	a5,00042024
	sb	a1,a5,+00000FB4
	c.jr	ra

;; cb_probe_resp_ind: 23028466
cb_probe_resp_ind proc
	lui	a0,000230B5
	c.mv	a3,a2
	addi	a0,a0,-00000418
	c.mv	a2,a1
	jal	zero,0000000023082388

;; cb_beacon_ind: 23028476
cb_beacon_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+0000002C
	c.mv	a3,a1
	addi	a4,a1,+00000006
	c.swsp	a5,00000000
	lb	a7,a1,+00000029
	lb	a6,a1,+00000028
	c.lw	a1,52(a5)
	lbu	a2,a1,+0000002B
	lbu	a0,a3,+0000002A
	lb	a1,a1,+00000027
	jal	ra,00000000230263BA
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; cb_disconnect_ind: 230284A6
cb_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	lui	a0,000230B5
	addi	a0,a0,-000004A8
	jal	ra,0000000023082388
	c.li	a5,00000013
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	lui	a5,00042025
	addi	a5,a5,-000000C4
	c.li	a4,00000002
	sb	a4,a5,+00000752
	lhu	a4,s0,+00000000
	c.mv	a0,sp
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sh	a4,a5,+00000750
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_connect_ind: 2302853E
cb_connect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,00000000230A3A68
	lhu	a5,s0,+00000000
	c.mv	a0,s0
	c.li	a1,00000001
	sltiu	a5,a5,+00000001
	c.addi	a5,00000013
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,0000000023025B14
	c.mv	a0,sp
	jal	ra,00000000230257D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_event_ind: 230285C4
cb_event_ind proc
	lbu	a4,a1,+00000001
	lbu	a5,a1,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000003
	c.slli	a5,18
	c.or	a5,a4
	c.li	a4,00000001
	beq	a5,a4,000000002302862A

l230285E6:
	c.beqz	a5,00000000230285FA

l230285E8:
	c.li	a4,00000002
	beq	a5,a4,000000002302864C

l230285EE:
	lui	a0,000230B5
	c.mv	a1,a5
	addi	a0,a0,-00000454
	c.j	0000000023028626

l230285FA:
	lbu	a5,a1,+00000005
	lbu	a4,a1,+00000004
	lui	a0,000230B5
	c.slli	a5,08
	c.or	a4,a5
	lbu	a5,a1,+00000006
	lbu	a1,a1,+00000007
	addi	a0,a0,-00000490
	c.slli	a5,10
	c.or	a5,a4
	c.slli	a1,18
	c.or	a1,a5
	lui	a5,00042024
	sw	a1,a5,+00000F40

l23028626:
	jal	zero,0000000023082388

l2302862A:
	lui	a0,000230B5
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000470
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	jal	ra,0000000023025C10
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000009
	c.li	a0,00000002
	c.addi	sp,00000010

l23028648:
	jal	zero,000000002307C270

l2302864C:
	c.li	a2,00000000
	c.li	a1,0000000A
	c.li	a0,00000002
	c.j	0000000023028648

;; wifi_mgmr_event_init: 23028654
;;   Called from:
;;     230258A8 (in wifi_mgmr_start)
wifi_mgmr_event_init proc
	lui	a1,00023028
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+0000053E
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230239D8
	lui	a1,00023028
	addi	a1,a1,+000004A6
	c.li	a0,00000000
	jal	ra,00000000230239EC
	lui	a1,00023028
	addi	a1,a1,+00000476
	c.li	a0,00000000
	jal	ra,0000000023023A00
	lui	a1,00023028
	addi	a1,a1,+00000466
	c.li	a0,00000000
	jal	ra,0000000023023A14
	lui	a1,00023028
	addi	a1,a1,+0000045C
	c.li	a0,00000000
	jal	ra,0000000023023A48
	lui	a1,00023028
	addi	a1,a1,+000005C4
	c.li	a0,00000000
	jal	ra,0000000023023A5C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_mgr_print: 230286B4
cmd_mgr_print proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.lw	s0,16(a5)
	addi	a4,s0,+00000010

l230286CA:
	bne	a5,a4,00000000230286E0

l230286CE:
	c.lw	s0,24(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061344

l230286E0:
	c.lw	a5,0(a5)
	c.j	00000000230286CA

;; cmd_complete.isra.1: 230286E4
;;   Called from:
;;     23028798 (in cmd_mgr_msgind)
;;     23028882 (in cmd_mgr_llind)
;;     23028A12 (in cmd_mgr_queue)
cmd_complete.isra.1 proc
	c.mv	a4,a0
	c.lw	a4,0(a5)
	c.mv	a0,a1
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)
	c.lw	a1,4(a5)
	c.lw	a1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lui	a5,00000100
	addi	a5,a5,+00000100
	c.sw	a1,0(a5)
	lui	a5,00000200
	addi	a5,a5,+00000200
	c.sw	a1,4(a5)
	lhu	a5,a1,+00000018
	ori	a4,a5,+00000020
	sh	a4,a1,+00000018
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023028720

l2302871C:
	jal	zero,0000000023064972

l23028720:
	c.andi	a5,00000018
	c.bnez	a5,0000000023028730

l23028724:
	sw	zero,a1,+0000003C
	c.addi	a0,0000001C
	c.li	a1,00000001
	jal	zero,0000000023060E62

l23028730:
	c.jr	ra

;; cmd_mgr_msgind: 23028732
cmd_mgr_msgind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s1,a0
	addi	s4,a0,-00000004
	c.lw	a0,24(a0)
	c.mv	s2,a1
	c.li	a1,FFFFFFFF
	c.mv	s3,a2
	jal	ra,00000000230617D0
	c.lw	s1,16(s0)
	addi	s5,s1,+00000010

l2302875A:
	bne	s0,s5,0000000023028762

l2302875E:
	c.li	s5,00000000
	c.j	000000002302879C

l23028762:
	lhu	a4,s0,+0000000A
	lhu	a5,s2,+00000000
	bne	a4,a5,00000000230287D6

l2302876E:
	lhu	a5,s0,+00000018
	c.andi	a5,00000010
	c.beqz	a5,00000000230287D6

l23028776:
	bne	s3,zero,00000000230287CC

l2302877A:
	lhu	a5,s0,+00000018
	c.lw	s0,16(a0)
	c.andi	a5,FFFFFFEF
	sh	a5,s0,+00000018
	c.bnez	a0,00000000230287DA

l23028788:
	lhu	a5,s0,+00000018
	c.li	s5,00000001
	c.andi	a5,00000018
	c.bnez	a5,000000002302879C

l23028792:
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,00000000230286E4

l2302879C:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	bne	s5,zero,00000000230287B8

l230287AC:
	beq	s3,zero,00000000230287B8

l230287B0:
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s4
	c.jalr	s3

l230287B8:
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

l230287CC:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s4
	c.jalr	s3
	c.beqz	a0,000000002302877A

l230287D6:
	c.lw	s0,0(s0)
	c.j	000000002302875A

l230287DA:
	lhu	a2,s2,+00000006
	c.beqz	a2,0000000023028788

l230287E0:
	addi	a1,s2,+00000008
	jal	ra,00000000230A382C
	c.j	0000000023028788

;; cmd_mgr_llind: 230287EA
cmd_mgr_llind proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.lw	a0,24(a0)
	c.mv	s2,a1
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.lw	s1,16(s0)
	c.li	a5,00000000
	addi	s4,s1,+00000010
	lui	s5,0004200F
	lui	s6,000230B5
	lui	s7,000230AF
	c.li	s8,00000001

l23028822:
	bne	s0,s4,000000002302882C

l23028826:
	c.li	s0,00000000
	c.bnez	a5,000000002302886C

l2302882A:
	c.j	00000000230288AC

l2302882C:
	c.bnez	a5,0000000023028862

l2302882E:
	c.lw	s0,20(a3)
	lw	a4,s2,+00000014
	bne	a3,a4,0000000023028862

l23028838:
	c.mv	a5,s0
	beq	s0,s2,000000002302885E

l2302883E:
	addi	s3,s5,+000003B0
	lbu	a4,s3,+00000000
	c.bnez	a4,000000002302885E

l23028848:
	addi	a2,zero,+000000CF
	addi	a1,s6,-00000400
	addi	a0,s7,-00000790
	jal	ra,0000000023082388
	c.mv	a5,s0
	sb	s8,s3,+00000000

l2302885E:
	c.lw	s0,0(s0)
	c.j	0000000023028822

l23028862:
	lhu	a4,s0,+00000018
	c.andi	a4,00000004
	c.beqz	a4,000000002302885E

l2302886A:
	c.beqz	a5,0000000023028888

l2302886C:
	lhu	a5,s2,+00000018
	andi	a4,a5,-00000009
	sh	a4,s2,+00000018
	c.andi	a5,00000010
	c.bnez	a5,0000000023028886

l2302887C:
	c.mv	a1,s2
	addi	a0,s1,+00000008
	jal	ra,00000000230286E4

l23028886:
	c.beqz	s0,00000000230288AC

l23028888:
	lhu	a5,s0,+00000018
	c.mv	a1,s0
	c.andi	a5,FFFFFFFB
	sh	a5,s0,+00000018
	c.lw	s0,12(a5)
	c.lw	s1,48(a0)
	lhu	a2,a5,+00000006
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,00000000230219EE
	c.lw	s0,12(a0)
	jal	ra,0000000023064972

l230288AC:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
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

;; cmd_mgr_queue: 230288D2
cmd_mgr_queue proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.lw	a0,24(a0)
	c.mv	s0,a1
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	lbu	a4,s1,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023028916

l230288F4:
	addi	a5,zero,+00000020
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a0,FFFFFFE0

l23028908:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23028916:
	c.lw	s1,16(a5)
	addi	s2,s1,+00000010
	beq	s2,a5,0000000023028A2C

l23028920:
	c.lw	s1,8(a4)
	c.lw	s1,12(a5)
	bne	a4,a5,000000002302893C

l23028928:
	c.li	a5,0000000C
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a0,FFFFFFF4
	c.j	0000000023028908

l2302893C:
	c.lw	s1,20(a5)
	c.li	s3,00000000
	lhu	a5,a5,+00000018
	c.andi	a5,0000000C
	c.beqz	a5,0000000023028956

l23028948:
	lhu	a5,s0,+00000018
	c.li	s3,00000001
	ori	a5,a5,+00000004
	sh	a5,s0,+00000018

l23028956:
	lhu	a5,s0,+00000018
	andi	a4,a5,+00000002
	c.bnez	a4,0000000023028A30

l23028960:
	ori	a5,a5,+00000008

l23028964:
	sh	a5,s0,+00000018
	c.lw	s1,4(a5)
	addi	a4,a5,+00000001
	c.sw	s1,4(a4)
	c.sw	s0,20(a5)
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028986

l2302897E:
	addi	a0,s0,+0000001C
	jal	ra,0000000023060D0C

l23028986:
	c.lw	s1,20(a5)
	c.sw	s1,20(s0)
	sw	s2,s0,+00000000
	c.sw	s0,4(a5)
	c.sw	a5,0(s0)
	lw	s2,s1,+00000008
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.addi	s2,00000001
	sw	s2,s1,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	bne	s3,zero,00000000230289C6

l230289AC:
	c.lw	s0,12(a5)
	c.lw	s1,48(a0)
	c.mv	a1,s0
	lhu	a2,a5,+00000006
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,00000000230219EE
	c.lw	s0,12(a0)
	jal	ra,0000000023064972

l230289C6:
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028A36

l230289CE:
	lui	a4,000000F4
	addi	a4,a4,+00000240
	add	a4,s2,a4
	addi	s3,s0,+0000001C
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023060D58
	c.andi	a0,00000001
	c.bnez	a0,0000000023028A22

l230289EE:
	c.lw	s1,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.li	a5,00000002
	sb	a5,s1,+00000000
	lhu	a5,s0,+00000018
	andi	a5,a5,+00000020
	c.bnez	a5,0000000023028A16

l23028A06:
	addi	a5,zero,+0000006E
	c.sw	s0,60(a5)
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,00000000230286E4

l23028A16:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l23028A22:
	c.mv	a0,s3
	jal	ra,0000000023060F10

l23028A28:
	c.li	a0,00000000
	c.j	0000000023028908

l23028A2C:
	c.li	s3,00000000
	c.j	0000000023028956

l23028A30:
	ori	a5,a5,+00000018
	c.j	0000000023028964

l23028A36:
	sw	zero,s0,+0000003C
	c.j	0000000023028A28

;; cmd_mgr_drain: 23028A3C
cmd_mgr_drain proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.li	a1,FFFFFFFF
	lui	s2,00000100
	jal	ra,00000000230617D0
	c.lw	s0,16(a0)
	lui	s3,00000200
	addi	s4,s0,+00000010
	c.lw	a0,0(s1)
	addi	s2,s2,+00000100
	addi	s3,s3,+00000200

l23028A6C:
	bne	a0,s4,0000000023028A8A

l23028A70:
	c.lw	s0,24(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023061344

l23028A8A:
	c.lw	a0,4(a5)
	c.lw	a0,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	sw	s2,a0,+00000000
	sw	s3,a0,+00000004
	c.lw	s0,8(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,8(a5)
	lhu	a5,a0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028AB0

l23028AA8:
	c.li	a1,00000001
	c.addi	a0,0000001C
	jal	ra,0000000023060E62

l23028AB0:
	c.mv	a0,s1
	c.lw	s1,0(s1)
	c.j	0000000023028A6C

;; bl_cmd_mgr_init: 23028AB6
;;   Called from:
;;     23024316 (in bl_ipc_init)
bl_cmd_mgr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a0,+00000010
	c.mv	s0,a0
	c.sw	a0,16(a5)
	c.sw	a0,20(a5)
	c.li	a0,00000001
	jal	ra,000000002306151C
	c.li	a5,00000008
	c.sw	s0,12(a5)
	lui	a5,00023029
	addi	a5,a5,-0000072E
	c.sw	s0,28(a5)
	lui	a5,00023028
	addi	a5,a5,+000006B4
	c.sw	s0,40(a5)
	lui	a5,00023029
	addi	a5,a5,-000005C4
	c.sw	s0,44(a5)
	lui	a5,00023028
	addi	a5,a5,+000007EA
	c.sw	s0,32(a5)
	lui	a5,00023028
	addi	a5,a5,+00000732
	c.sw	s0,24(a0)
	c.sw	s0,36(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_irqs_init: 23028B0C
;;   Called from:
;;     230220E4 (in bl_main_lowlevel_init)
bl_irqs_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_irq_bottomhalf: 23028B10
;;   Called from:
;;     230220D0 (in bl_main_event_handle)
bl_irq_bottomhalf proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	jal	ra,00000000230629A4
	c.lw	s0,52(a0)
	c.li	s1,00000000
	jal	ra,0000000023021A1C

l23028B26:
	c.bnez	a0,0000000023028B58

l23028B28:
	jal	ra,00000000230629A4
	andi	a5,s1,+00000008
	c.beqz	a5,0000000023028B34

l23028B32:
	c.sw	s0,60(a0)

l23028B34:
	andi	a5,s1,+00000780
	c.beqz	a5,0000000023028B3C

l23028B3A:
	c.sw	s0,64(a0)

l23028B3C:
	c.lw	s0,52(a0)
	addi	a1,zero,+000007FF
	jal	ra,0000000023021B88
	c.lw	s0,52(a0)
	jal	ra,0000000023021A1C
	c.bnez	a0,0000000023028B26

l23028B4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23028B58:
	c.mv	a1,a0
	c.or	s1,a0
	c.lw	s0,52(a0)
	jal	ra,0000000023021A8E
	c.lw	s0,52(a0)
	jal	ra,0000000023021A1C
	c.j	0000000023028B26

;; goToErrorState: 23028B6A
;;   Called from:
;;     23028BB0 (in stateM_handleEvent)
goToErrorState proc
	c.lw	a0,0(a5)
	c.sw	a0,4(a5)
	c.lw	a0,8(a5)
	c.sw	a0,0(a5)
	c.beqz	a5,0000000023028B80

l23028B74:
	lw	t1,a5,+00000014
	beq	t1,zero,0000000023028B80

l23028B7C:
	c.lw	a5,16(a0)
	c.jr	t1

l23028B80:
	c.jr	ra

;; stateM_init: 23028B82
;;   Called from:
;;     230258A4 (in wifi_mgmr_start)
stateM_init proc
	c.beqz	a0,0000000023028B8C

l23028B84:
	c.sw	a0,0(a1)
	sw	zero,a0,+00000004
	c.sw	a0,8(a2)

l23028B8C:
	c.jr	ra

;; stateM_handleEvent: 23028B8E
;;   Called from:
;;     230259B4 (in wifi_mgmr_start)
stateM_handleEvent proc
	c.beqz	a0,0000000023028C64

l23028B90:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a0
	c.li	a0,FFFFFFFE
	c.beqz	a1,0000000023028BB6

l23028BA6:
	c.lw	s0,0(s1)
	c.mv	s2,a1
	c.bnez	s1,0000000023028BC8

l23028BAC:
	c.mv	a0,s0
	c.mv	a1,s2
	jal	ra,0000000023028B6A
	c.li	a0,FFFFFFFF

l23028BB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23028BC8:
	c.lw	s1,12(a5)
	c.li	s5,00000014
	c.bnez	a5,0000000023028BD2

l23028BCE:
	c.li	a0,00000002
	c.j	0000000023028BB6

l23028BD2:
	c.li	s4,00000000

l23028BD4:
	c.lw	s1,12(a5)
	bltu	s4,a5,0000000023028BE0

l23028BDA:
	c.lw	s1,0(s1)
	c.bnez	s1,0000000023028BD2

l23028BDE:
	c.j	0000000023028BCE

l23028BE0:
	add	s3,s4,s5
	c.lw	s1,8(a5)
	c.add	s3,a5
	lw	a4,s3,+00000000
	lw	a5,s2,+00000000
	beq	a4,a5,0000000023028BF8

l23028BF4:
	c.addi	s4,00000001
	c.j	0000000023028BD4

l23028BF8:
	lw	a5,s3,+00000008
	c.beqz	a5,0000000023028C08

l23028BFE:
	lw	a0,s3,+00000004
	c.mv	a1,s2
	c.jalr	a5
	c.beqz	a0,0000000023028BF4

l23028C08:
	lw	s1,s3,+00000010
	c.bnez	s1,0000000023028C12

l23028C0E:
	c.j	0000000023028BAC

l23028C10:
	c.mv	s1,a5

l23028C12:
	c.lw	s1,4(a5)
	c.bnez	a5,0000000023028C10

l23028C16:
	c.lw	s0,0(a5)
	beq	a5,s1,0000000023028C26

l23028C1C:
	c.lw	a5,24(a4)
	c.beqz	a4,0000000023028C26

l23028C20:
	c.lw	a5,16(a0)
	c.mv	a1,s2
	c.jalr	a4

l23028C26:
	lw	a5,s3,+0000000C
	c.beqz	a5,0000000023028C36

l23028C2C:
	c.lw	s0,0(a4)
	c.lw	s1,16(a2)
	c.mv	a1,s2
	c.lw	a4,16(a0)
	c.jalr	a5

l23028C36:
	c.lw	s0,0(a5)
	beq	a5,s1,0000000023028C46

l23028C3C:
	c.lw	s1,20(a5)
	c.beqz	a5,0000000023028C46

l23028C40:
	c.lw	s1,16(a0)
	c.mv	a1,s2
	c.jalr	a5

l23028C46:
	c.lw	s0,0(a5)
	c.sw	s0,0(s1)
	c.li	a0,00000001
	c.sw	s0,4(a5)
	beq	a5,s1,0000000023028BB6

l23028C52:
	c.lw	s0,8(a5)
	c.li	a0,FFFFFFFF
	beq	a5,s1,0000000023028BB6

l23028C5A:
	c.lw	s1,12(a5)
	c.li	a0,00000000
	c.bnez	a5,0000000023028BB6

l23028C60:
	c.li	a0,00000003
	c.j	0000000023028BB6

l23028C64:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; netif_status_callback: 23028C68
netif_status_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	addi	s1,a0,+00000004
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-00000364
	jal	ra,0000000023082388
	addi	a0,s0,+00000008
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-00000338
	jal	ra,0000000023082388
	addi	a0,s0,+0000000C
	jal	ra,000000002306F586
	c.mv	a1,a0
	lui	a0,000230B5
	addi	a0,a0,-0000032C
	jal	ra,0000000023082388
	c.beqz	s1,0000000023028CBC

l23028CB8:
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023028CD0

l23028CBC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,000230B5
	addi	a0,a0,-00000320
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23028CD0:
	jal	ra,0000000023025FC6
	c.lw	s0,8(a1)
	c.lw	s0,12(a2)
	c.li	a0,00000000
	c.lw	s0,4(s1)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306C348
	c.lw	a0,0(a3)
	c.li	a0,00000001
	c.swsp	a3,00000080
	jal	ra,000000002306C348
	c.lwsp	s8,00000004
	c.lw	a0,0(a4)
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023025EB2

;; wifi_tx: 23028D04
wifi_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	a3,a1,+00000008
	addi	a4,zero,+000005EA
	c.mv	a2,a1
	c.mv	a5,a1
	bgeu	a4,a3,0000000023028D64

l23028D1C:
	lui	s0,0004200F
	c.swsp	a1,00000084
	addi	s0,s0,+000003B8
	jal	ra,00000000230629A4
	c.lw	s0,0(a5)
	c.li	s1,FFFFFFF4
	c.lwsp	a2,00000084
	c.sub	a0,a5
	addi	a5,zero,+000007D0
	bgeu	a5,a0,0000000023028D58

l23028D3A:
	lhu	a2,a2,+00000008
	lui	a1,000230CC
	lui	a0,000230B5
	addi	a1,a1,-000006A8
	addi	a0,a0,-000002F8
	jal	ra,0000000023082388
	jal	ra,00000000230629A4
	c.sw	s0,0(a0)

l23028D58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23028D64:
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023028D64

l23028D68:
	lw	a3,a0,-00000020
	lui	a5,0004200F
	c.mv	a1,a0
	lw	a0,a5,+000003B4
	sltiu	a3,a3,+00000001
	c.li	s1,00000000
	jal	ra,0000000023023C92
	c.j	0000000023028D58

;; bl606a0_wifi_netif_init: 23028D82
bl606a0_wifi_netif_init proc
	c.addi	sp,FFFFFFF0
	lui	a4,000230B5
	c.swsp	ra,00000084
	addi	a4,a4,-0000036C
	c.sw	a0,52(a4)
	addi	a4,zero,+000005DC
	sh	a4,a0,+00000038
	c.lui	a4,00001000
	addi	a4,a4,-000005FA
	sh	a4,a0,+00000040
	lui	a4,0002306E
	addi	a4,a4,+0000050E
	c.sw	a0,20(a4)
	lui	a4,00023029
	addi	a4,a4,-000002FC
	lui	a1,00023029
	c.sw	a0,24(a4)
	addi	a1,a1,-00000398
	jal	ra,000000002306FF3C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl606a0_wifi_init: 23028DCA
;;   Called from:
;;     230279E0 (in wifi_mgmr_drv_init)
bl606a0_wifi_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,000230B5
	addi	a0,a0,-000003F0
	c.swsp	ra,0000008C
	jal	ra,0000000023082388
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	c.addi4spn	a0,00000008
	jal	ra,0000000023066220
	lbu	a6,sp,+0000000D
	lbu	a5,sp,+0000000C
	lbu	a4,sp,+0000000B
	lbu	a3,sp,+0000000A
	lbu	a2,sp,+00000009
	lbu	a1,sp,+00000008
	lui	a0,000230B5
	addi	a0,a0,-000003D8
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,0000000023022544
	lui	a0,000230B5
	addi	a0,a0,-000003A4
	jal	ra,0000000023082388
	jal	ra,000000002306618C
	lui	s0,0004200F
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s0,+000003B4
	jal	ra,00000000230A3A68
	addi	a0,s0,+000003B4
	jal	ra,00000000230220E8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; lld_wlcoex_set: 23028E48
;;   Called from:
;;     23031234 (in lld_init)
;;     23031342 (in lld_core_reset)
lld_wlcoex_set proc
	lui	a5,00028000
	c.lw	a5,116(a4)
	lui	a3,000FFE10
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,116(a4)
	lw	a4,a5,+00000100
	c.beqz	a0,0000000023028E6E

l23028E5E:
	lui	a3,00000220
	addi	a3,a3,+000000F3
	c.or	a4,a3

l23028E68:
	sw	a4,a5,+00000100
	c.jr	ra

l23028E6E:
	lui	a3,000FFDE0
	addi	a3,a3,-000000F4
	c.and	a4,a3
	c.j	0000000023028E68

;; coex_dump_ble: 23028E7A
;;   Called from:
;;     23001114 (in cmd_coex_dump)
coex_dump_ble proc
	lui	a0,000230B5
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000002D0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002308234C
	lui	s0,00028000
	lw	a1,s0,+00000100
	lui	a0,000230B5
	addi	a0,a0,-00000298
	jal	ra,0000000023082388
	lw	s0,s0,+00000100
	lui	a0,000230B5
	addi	a0,a0,-00000284
	srli	a1,s0,00000018
	c.andi	a1,00000003
	jal	ra,0000000023082388
	srli	a1,s0,00000014
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-0000026C
	jal	ra,0000000023082388
	srli	a1,s0,00000010
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-00000254
	jal	ra,0000000023082388
	srli	a1,s0,0000000E
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-0000023C
	jal	ra,0000000023082388
	srli	a1,s0,0000000C
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-00000228
	jal	ra,0000000023082388
	srli	a1,s0,0000000A
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-00000214
	jal	ra,0000000023082388
	srli	a1,s0,00000008
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-00000200
	jal	ra,0000000023082388
	srli	a1,s0,00000006
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-000001EC
	jal	ra,0000000023082388
	srli	a1,s0,00000004
	lui	a0,000230B5
	c.andi	a1,00000003
	addi	a0,a0,-000001D8
	jal	ra,0000000023082388
	srli	a1,s0,00000003
	lui	a0,000230B5
	c.andi	a1,00000001
	addi	a0,a0,-000001C4
	jal	ra,0000000023082388
	srli	a1,s0,00000002
	lui	a0,000230B5
	c.andi	a1,00000001
	addi	a0,a0,-000001B0
	jal	ra,0000000023082388
	srli	a1,s0,00000001
	lui	a0,000230B5
	c.andi	a1,00000001
	addi	a0,a0,-0000019C
	jal	ra,0000000023082388
	andi	a1,s0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,000230B5
	addi	a0,a0,-00000188
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; BLE_ROM_patch: 23028F92
BLE_ROM_patch proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000080
	c.swsp	a2,00000004
	c.swsp	a3,00000084
	c.swsp	a4,00000008
	c.swsp	a5,00000088
	c.swsp	a6,0000000C
	c.swsp	a7,0000008C
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; blecontroller_main: 23028FA8
blecontroller_main proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.jalr	a5
	lui	s1,00042025
	c.li	s0,00000001

l23028FC6:
	lw	a0,s1,+00000718
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,00000008
	jal	ra,0000000023061684
	bne	a0,s0,0000000023028FE4

l23028FD6:
	lbu	a5,sp,+00000008
	bne	a5,s0,0000000023028FE4

l23028FDE:
	c.lwsp	a2,00000044
	jal	ra,0000000023029FB4

l23028FE4:
	jal	ra,000000002302A1F4
	c.j	0000000023028FC6

;; BLE_ROM_hook_init: 23028FEA
;;   Called from:
;;     23029130 (in ble_controller_init)
BLE_ROM_hook_init proc
	lui	a5,00023029
	lui	a4,0004200F
	addi	a5,a5,-0000006E
	sw	a5,a4,+000003C8
	lui	a5,000230A4
	lui	a4,0004200F
	addi	a5,a5,-000007D4
	sw	a5,a4,+000003D0
	lui	a5,000230A4
	lui	a4,0004200F
	addi	a5,a5,-00000598
	sw	a5,a4,+000003D4
	lui	a5,000230A3
	lui	a4,0004200F
	addi	a5,a5,+000007A4
	sw	a5,a4,+000003CC
	lui	a5,00023029
	lui	a4,0004200F
	addi	a5,a5,+00000064
	sw	a5,a4,+000003D8
	c.jr	ra

;; rw_main_task_post: 2302903C
;;   Called from:
;;     230290A4 (in rw_main_task_post_from_fw)
;;     230848CC (in bt_onchiphci_send)
rw_main_task_post proc
	c.beqz	a0,0000000023029060

l2302903E:
	lui	a5,00042025
	c.mv	a2,a1
	c.mv	a1,a0
	lw	a0,a5,+00000718
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023061344
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

l23029060:
	c.li	a0,00000000
	c.jr	ra

;; rw_main_task_post_from_fw: 23029064
rw_main_task_post_from_fw proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000002
	sb	a5,sp,+00000008
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.beqz	a5,00000000230290A0

l2302907A:
	lui	a5,00042025
	lw	a0,a5,+00000718
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.addi4spn	a1,00000008
	c.swsp	zero,00000080
	jal	ra,0000000023061550
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bne	a4,a5,000000002302909A

l23029096:
	jal	ra,0000000023062D06

l2302909A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l230290A0:
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,00000008
	jal	ra,000000002302903C
	c.j	000000002302909A

;; bdaddr_init: 230290AA
;;   Called from:
;;     23029172 (in ble_controller_init)
bdaddr_init proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023066220
	lbu	a3,sp,+00000009
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000000D
	sb	a5,sp,+0000000D
	lbu	a5,sp,+0000000C
	sb	a3,sp,+0000000C
	lhu	a3,sp,+0000000A
	sb	a5,sp,+00000009
	slli	a2,a3,00000008
	c.srli	a3,00000008
	c.or	a3,a2
	sh	a3,sp,+0000000A
	addi	a3,zero,+000000FF
	beq	a4,a3,000000002302911E

l230290E8:
	c.addi	a4,00000001
	sb	a4,sp,+00000008

l230290EE:
	c.addi4spn	a0,00000008
	jal	ra,000000002302A578
	lbu	a6,sp,+00000008
	lbu	a5,sp,+00000009
	lbu	a4,sp,+0000000A
	lbu	a3,sp,+0000000B
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000D
	lui	a0,000230B5
	addi	a0,a0,-00000174
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302911E:
	c.addi	a5,00000001
	sb	zero,sp,+00000008
	sb	a5,sp,+00000009
	c.j	00000000230290EE

;; ble_controller_init: 2302912A
;;   Called from:
;;     23000F22 (in ble_stack_start)
ble_controller_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023028FEA
	lui	a0,00002626
	addi	a0,a0,-00000600
	jal	ra,0000000023003140
	lui	a5,0004200F
	sb	zero,a5,+000003BC
	lui	a5,0004200F
	sb	zero,a5,+000003BD
	c.jal	0000000023029292
	addi	a0,zero,+00000048
	jal	ra,00000000230655CA
	lui	a1,00023029
	addi	a1,a1,+000002A0
	addi	a0,zero,+00000048
	jal	ra,0000000023065722
	addi	a0,zero,+00000048
	jal	ra,00000000230655A8
	jal	ra,00000000230290AA
	lui	a5,0004200F
	lw	a0,a5,+000003DC
	jal	ra,000000002302A16A
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000014
	jal	ra,000000002306128C
	lui	a5,00042025
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	sw	a0,a5,+00000718
	lui	a1,000230B5
	lui	a5,00042025
	lui	a0,00023029
	addi	a5,a5,+00000714
	c.li	a3,00000000
	addi	a2,zero,+00000200
	addi	a1,a1,-0000014C
	addi	a0,a0,-00000058
	c.addi16sp	00000020
	jal	zero,00000000230626A4

;; ble_controller_deinit: 230291BC
;;   Called from:
;;     2305013E (in bt_disable_action)
ble_controller_deinit proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.li	a2,00000008
	c.li	a1,00000000
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.addi4spn	a0,00000008
	c.jalr	a5
	addi	a0,zero,+00000048
	lui	s0,00042025
	jal	ra,00000000230655BA
	lw	a0,s0,+00000714
	c.li	s1,00000001
	jal	ra,0000000023062720
	sw	zero,s0,+00000714
	lui	s0,00042025

l230291F2:
	lw	a0,s0,+00000718
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	jal	ra,0000000023061684
	beq	a0,s1,0000000023029218

l23029202:
	lw	a0,s0,+00000718
	jal	ra,00000000230619CC
	c.lwsp	t3,00000020
	sw	zero,s0,+00000718
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23029218:
	c.lwsp	a2,00000044
	c.beqz	a0,00000000230291F2

l2302921C:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002302BDCE
	c.j	00000000230291F2

;; rwble_init: 23029224
;;   Called from:
;;     2302A1CC (in rwip_init)
rwble_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302CA50
	c.li	a0,00000000
	jal	ra,0000000023030F98
	jal	ra,000000002302CD38
	c.li	a0,00000000
	jal	ra,0000000023034088
	lui	a5,00028000
	sw	zero,a5,+00000050
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rwble_reset: 2302924A
;;   Called from:
;;     2302A130 (in rwip_reset)
rwble_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l23029262:
	c.lw	a5,28(a3)
	blt	a3,zero,0000000023029262

l23029268:
	c.lw	a5,28(a4)
	c.lw	a5,32(a4)
	c.lw	a5,36(a5)
	jal	ra,000000002303126A
	c.li	a0,00000001
	jal	ra,0000000023030F98
	jal	ra,000000002302CE06
	c.li	a0,00000001
	jal	ra,0000000023034088
	jal	ra,000000002302CA50
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rwble_isr_clear: 23029292
;;   Called from:
;;     23029150 (in ble_controller_init)
rwble_isr_clear proc
	lui	a5,00028000
	c.lw	a5,16(a4)
	c.beqz	a4,000000002302929E

l2302929A:
	c.li	a4,FFFFFFFF
	c.sw	a5,24(a4)

l2302929E:
	c.jr	ra

;; rwble_isr: 230292A0
rwble_isr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.lui	s2,00010000
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s8,00000004
	c.li	s6,00000001
	lui	s3,0004200F
	addi	s7,s2,+00000008
	lui	s4,0004200F
	c.li	s5,00000001

l230292C8:
	lui	s1,00028000
	lui	s8,0004200F

l230292D0:
	c.lw	s1,16(s0)
	beq	s0,zero,00000000230293EC

l230292D6:
	andi	a5,s0,+00000004
	c.beqz	a5,00000000230292E4

l230292DC:
	c.li	a5,00000004
	c.sw	s1,24(a5)
	jal	ra,000000002302A23E

l230292E4:
	andi	a5,s0,+00000001
	c.beqz	a5,00000000230292F6

l230292EA:
	sw	s6,s1,+00000018
	jal	ra,000000002302A274
	jal	ra,0000000023029CD8

l230292F6:
	andi	a5,s0,+00000080
	c.beqz	a5,0000000023029306

l230292FC:
	addi	a5,zero,+00000080
	c.sw	s1,24(a5)
	jal	ra,0000000023029CD8

l23029306:
	andi	a5,s0,+00000008
	c.beqz	a5,000000002302933C

l2302930C:
	c.li	a5,00000008
	c.sw	s1,24(a5)
	andi	a5,s0,+00000002
	c.beqz	a5,000000002302931C

l23029316:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l2302931C:
	slli	a5,s0,0000000F
	bge	a5,zero,0000000023029336

l23029324:
	lbu	a5,s3,+000003BD
	andi	a5,a5,+000000FF
	c.bnez	a5,0000000023029332

l2302932E:
	sb	s5,s3,+000003BD

l23029332:
	sw	s2,s1,+00000018

l23029336:
	c.li	a0,00000000
	jal	ra,000000002302F8DC

l2302933C:
	and	a5,s0,s7
	bne	a5,s2,0000000023029380

l23029344:
	lbu	a5,s3,+000003BD
	andi	a5,a5,+000000FF
	c.bnez	a5,0000000023029362

l2302934E:
	sb	s5,s3,+000003BD
	lw	a5,s1,+000000A8
	sw	a5,s8,+000003C0
	lw	a5,s1,+000000AC
	sw	a5,s4,+000003C4

l23029362:
	sw	s2,s1,+00000018
	andi	a5,s0,+00000002
	c.beqz	a5,0000000023029372

l2302936C:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l23029372:
	lw	a0,s4,+000003C4
	c.srli	a0,00000010
	andi	a0,a0,+000000FF
	jal	ra,000000002302F932

l23029380:
	andi	a5,s0,+00000100
	c.beqz	a5,000000002302939E

l23029386:
	addi	a5,zero,+00000100
	c.sw	s1,24(a5)
	andi	a5,s0,+00000002
	c.beqz	a5,0000000023029398

l23029392:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l23029398:
	c.li	a0,00000001
	jal	ra,000000002302F8DC

l2302939E:
	andi	a5,s0,+00000002
	c.beqz	a5,00000000230293AC

l230293A4:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	jal	ra,000000002302F922

l230293AC:
	andi	a5,s0,+00000200
	c.beqz	a5,00000000230293BA

l230293B2:
	addi	a5,zero,+00000200
	c.sw	s1,24(a5)
	c.jal	00000000230296D4

l230293BA:
	andi	a5,s0,+00000040
	c.beqz	a5,00000000230293CA

l230293C0:
	addi	a5,zero,+00000040
	c.sw	s1,24(a5)
	jal	ra,000000002302F8D6

l230293CA:
	andi	a5,s0,+00000010
	c.beqz	a5,00000000230293D8

l230293D0:
	c.li	a5,00000010
	c.sw	s1,24(a5)
	jal	ra,00000000230326C0

l230293D8:
	andi	s0,s0,+00000020
	beq	s0,zero,00000000230292D0

l230293E0:
	lui	a5,00028000
	addi	a4,zero,+00000020
	c.sw	a5,24(a4)
	c.j	00000000230292C8

l230293EC:
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

;; ea_conflict_check: 23029404
;;   Called from:
;;     230295A6 (in ea_elt_cancel)
;;     23029B48 (in ea_elt_insert)
ea_conflict_check proc
	c.lw	a1,8(a3)
	c.lw	a0,8(a4)
	lui	a7,00008000
	c.mv	a6,a0
	c.addi	a7,FFFFFFFF
	sub	a0,a3,a4
	and	a0,a0,a7
	lui	t1,00004000
	lhu	a5,a6,+00000014
	lhu	a2,a1,+00000014
	bgeu	t1,a0,000000002302947E

l23029428:
	sub	a3,a4,a3
	and	a3,a3,a7
	sub	a3,zero,a3
	c.bnez	a3,000000002302943A

l23029436:
	bltu	a5,a2,0000000023029482

l2302943A:
	lhu	a1,a1,+00000012
	c.li	a0,00000005
	add	a4,a2,a1
	c.sub	a4,a5
	bge	zero,a4,000000002302947C

l2302944A:
	c.addi	a4,FFFFFFFF
	addi	a7,zero,+00000271
	xor	a4,a4,a7
	c.add	a4,a3
	blt	a4,zero,000000002302947C

l2302945A:
	lhu	a4,a6,+00000012
	c.li	a0,00000004
	c.add	a5,a4
	c.sub	a5,a2
	c.sub	a5,a1
	blt	zero,a5,000000002302947C

l2302946A:
	addi	a0,zero,-00000271
	xor	a5,a5,a0
	add	a0,a5,a3
	slti	a0,a0,+00000000
	c.addi	a0,00000003

l2302947C:
	c.jr	ra

l2302947E:
	c.mv	a3,a0
	c.beqz	a0,0000000023029436

l23029482:
	lhu	a4,a6,+00000012
	c.li	a0,00000000
	c.add	a5,a4
	c.sub	a5,a2
	bge	zero,a5,000000002302947C

l23029490:
	addi	a4,a5,-00000001
	addi	a2,zero,-00000271
	xor	a4,a4,a2
	c.add	a4,a3
	blt	zero,a4,000000002302947C

l230294A2:
	lhu	a4,a1,+00000012
	c.li	a0,00000001
	c.sub	a5,a4
	bge	zero,a5,000000002302947C

l230294AE:
	c.addi	a5,FFFFFFFF
	xor	a0,a5,a2
	c.add	a0,a3
	slti	a0,a0,+00000001
	c.addi	a0,00000001
	c.jr	ra

;; ea_elt_cancel: 230294BE
;;   Called from:
;;     23029BD4 (in ea_elt_insert)
ea_elt_cancel proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,00042013
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s11,0000008C
	addi	a5,s0,+00000188
	lw	s6,a5,+0000000C
	addi	s1,s0,+00000188
	lui	s8,00008000
	c.mv	s4,a0
	c.li	s9,00000000
	c.li	s5,00000005
	addi	s10,zero,+00000271
	c.addi	s8,FFFFFFFF
	addi	s2,s1,+0000000C

l230294FE:
	bne	s6,zero,000000002302953A

l23029502:
	c.lw	s1,12(a5)
	c.beqz	a5,000000002302951C

l23029506:
	lui	a3,00028000
	c.lw	a3,0(a5)
	lui	a4,000F0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00010000
	c.or	a5,a4
	c.sw	a3,0(a5)

l2302951C:
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

l2302953A:
	lhu	a3,s6,+00000010
	lw	s3,s6,+00000000
	srli	a5,a3,0000000E
	c.beqz	a5,000000002302961A

l23029548:
	srai	a4,a3,00000004
	andi	a4,a4,+0000003F
	c.beqz	a4,000000002302961A

l23029552:
	lbu	a2,s6,+00000016
	andi	a5,a3,+0000000F
	andi	a3,a3,-000003F1
	c.add	a5,a2
	sb	a5,s6,+00000016
	addi	a5,a4,-00000001
	c.slli	a5,04
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	srai	a2,a5,0000000C
	sh	a5,s6,+00000010
	c.andi	a2,00000003
	srli	s7,a5,0000000E
	c.mv	a4,s4
	c.li	s11,00000000

l23029582:
	c.bnez	a4,000000002302959E

l23029584:
	c.mv	a2,s6
	c.mv	a1,s9
	c.mv	a0,s2
	jal	ra,000000002302A412
	c.mv	a2,s6
	c.mv	a1,s11
	addi	a0,s0,+00000188
	jal	ra,000000002302A4DC
	c.mv	s6,s9
	c.j	000000002302961A

l2302959E:
	c.mv	a1,a4
	c.mv	a0,s6
	c.swsp	a2,00000084
	c.swsp	a4,00000004
	jal	ra,0000000023029404
	c.beqz	a0,0000000023029584

l230295AC:
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000084
	c.li	a6,00000001
	lui	a7,00004000
	bne	a0,s5,00000000230295C0

l230295BA:
	c.mv	s11,a4
	c.lw	a4,0(a4)
	c.j	0000000023029582

l230295C0:
	lhu	a5,a4,+00000012
	lhu	a3,a4,+00000014
	c.lw	a4,8(a1)
	c.add	a3,a5
	srl	a5,a3,s10
	and	a3,a3,s10
	c.add	a5,a1
	lhu	a1,s6,+00000014
	bgeu	a1,a3,00000000230295E0

l230295DE:
	c.addi	a5,00000001

l230295E0:
	bne	a2,a6,0000000023029620

l230295E4:
	ori	a5,a5,+00000001

l230295E8:
	and	a5,a5,s8
	sw	a5,s6,+00000008
	bgeu	a6,s7,00000000230295BA

l230295F4:
	lw	a1,s6,+0000000C
	sub	a3,a1,a5
	and	a3,a3,s8
	bgeu	a7,a3,000000002302960E

l23029604:
	c.sub	a5,a1
	and	a5,a5,s8
	sub	a3,zero,a5

l2302960E:
	lhu	a5,s6,+00000012
	srl	a5,a5,s10
	bge	a3,a5,00000000230295BA

l2302961A:
	c.mv	s9,s6
	c.mv	s6,s3
	c.j	00000000230294FE

l23029620:
	c.bnez	a2,00000000230295E8

l23029622:
	c.addi	a5,00000001
	c.andi	a5,FFFFFFFE
	c.j	00000000230295E8

;; ea_init: 23029628
;;   Called from:
;;     2302A150 (in rwip_reset)
;;     2302A1D2 (in rwip_init)
ea_init proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042013
	c.swsp	s0,00000004
	addi	s0,a0,+00000188
	addi	a0,a0,+00000188
	c.swsp	ra,00000084
	jal	ra,000000002302A2D6
	addi	a0,s0,+0000000C
	jal	ra,000000002302A2D6
	addi	a0,s0,+00000014
	jal	ra,000000002302A2D6
	c.li	a5,FFFFFFFF
	sw	zero,s0,+00000008
	c.sw	s0,28(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ea_elt_create: 2302965E
;;   Called from:
;;     2302ED80 (in lld_evt_scan_create)
;;     2302EFCC (in lld_evt_update_create)
;;     2302F138 (in lld_evt_move_to_slave)
;;     2302F4CA (in lld_evt_slave_update)
;;     2302F5C6 (in lld_evt_adv_create)
;;     2303171A (in lld_con_start)
;;     23031724 (in lld_con_start)
;;     23031FC4 (in lld_con_update_after_param_req)
ea_elt_create proc
	addi	a2,a0,+0000002C
	c.addi	sp,FFFFFFE0
	c.li	a1,00000000
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002302BA5A
	c.mv	s0,a0
	c.beqz	a0,0000000023029684

l23029676:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.jalr	a5

l23029684:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ea_interval_create: 2302968E
;;   Called from:
;;     2302EE34 (in lld_evt_move_to_master)
;;     2302F13E (in lld_evt_move_to_slave)
ea_interval_create proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302BA5A
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	s0,a0
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ea_interval_insert: 230296B6
;;   Called from:
;;     2302EF70 (in lld_evt_move_to_master)
;;     2302F3EE (in lld_evt_move_to_slave)
ea_interval_insert proc
	c.mv	a1,a0
	lui	a0,00042013
	addi	a0,a0,+0000019C
	jal	zero,000000002302A2FE

;; ea_interval_remove: 230296C4
;;   Called from:
;;     2302E02E (in lld_evt_init)
;;     2302E160 (in lld_evt_elt_delete)
ea_interval_remove proc
	c.mv	a1,a0
	lui	a0,00042013
	c.li	a2,00000000
	addi	a0,a0,+0000019C
	jal	zero,000000002302A39E

;; ea_sw_isr: 230296D4
;;   Called from:
;;     230293B8 (in rwble_isr)
ea_sw_isr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042013
	addi	s0,s0,+00000188
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+0000000C

l230296E8:
	c.lw	s0,12(a5)
	c.bnez	a5,00000000230296F6

l230296EC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230296F6:
	c.mv	a0,s1
	jal	ra,000000002302A36A
	c.lw	a0,36(a5)
	c.beqz	a5,00000000230296E8

l23029700:
	c.jalr	a5
	c.j	00000000230296E8

;; ea_offset_req: 23029704
;;   Called from:
;;     2302F040 (in lld_evt_update_create)
;;     2302F30A (in lld_evt_move_to_slave)
;;     2302F318 (in lld_evt_move_to_slave)
;;     23030D80 (in lld_util_anchor_point_move)
;;     230315B0 (in lld_scan_start)
;;     2303182A (in lld_con_start)
;;     23032110 (in lld_con_update_after_param_req)
;;     23032120 (in lld_con_update_after_param_req)
;;     23032214 (in lld_con_param_rsp)
;;     2303230E (in lld_con_param_req)
ea_offset_req proc
	lhu	a6,a1,+00000000
	beq	a6,zero,0000000023029876

l2302970C:
	lw	t1,a1,+00000004
	c.li	a5,00000001
	slli	t3,t1,00000010
	srli	t3,t3,00000010
	beq	t3,zero,0000000023029878

l2302971E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000084
	c.swsp	s1,00000004
	c.swsp	s2,00000080
	lbu	t4,a0,+0000000E
	bne	t4,a5,0000000023029764

l2302972E:
	lhu	a2,a0,+0000000C

l23029732:
	lui	a5,00042013
	lw	a7,a5,+0000019C
	c.slli	t1,10
	addi	t6,zero,+000000FF
	c.mv	s0,a7
	c.addi	t3,FFFFFFFF
	c.li	t5,00000001
	srli	t1,t1,00000010
	c.mv	t0,a6

l2302974C:
	beq	s0,zero,0000000023029864

l23029750:
	bgeu	a2,a6,000000002302987C

l23029754:
	lhu	a4,a0,+00000012
	bne	a4,t6,000000002302976A

l2302975C:
	sh	a2,a1,+00000008
	c.li	a5,00000000
	c.j	000000002302986A

l23029764:
	lbu	a2,a0,+00000014
	c.j	0000000023029732

l2302976A:
	lhu	a3,s0,+00000004
	c.beqz	a3,00000000230297D4

l23029770:
	lhu	a5,s0,+00000008
	c.beqz	a5,00000000230297D4

l23029776:
	lhu	s1,s0,+0000000A
	lhu	t2,a0,+00000010
	beq	s1,t2,00000000230297D4

l23029782:
	c.mv	t2,a3
	bgeu	a6,a3,000000002302978A

l23029788:
	c.mv	t2,t0

l2302978A:
	lhu	s1,s0,+0000000C
	c.slli	t2,10
	srli	t2,t2,00000010
	bne	s1,a4,00000000230297A8

l23029798:
	bne	a4,t5,00000000230297DC

l2302979C:
	lhu	s1,s0,+0000000E
	lhu	a4,a0,+00000016
	beq	s1,a4,00000000230297DC

l230297A8:
	add	a4,t1,a5
	blt	t2,a4,000000002302987C

l230297B0:
	lhu	a4,s0,+00000006
	c.addi	a5,00000001
	c.add	a4,t2
	c.addi	a4,FFFFFFFF
	or	a4,a4,t2
	c.slli	a4,10
	c.srli	a4,00000010

l230297C2:
	and	s1,a6,t2
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	s1,00000000230297D4

l230297CE:
	and	a3,a3,t2
	c.beqz	a3,00000000230297F0

l230297D4:
	c.lw	s0,0(s0)
	c.mv	a5,a2

l230297D8:
	c.mv	a2,a5
	c.j	000000002302974C

l230297DC:
	add	a4,t1,a5
	blt	t2,a4,000000002302987C

l230297E4:
	lhu	a4,s0,+00000006
	c.addi	a5,FFFFFFFF
	and	a4,a4,t2
	c.j	00000000230297C2

l230297F0:
	and	s1,a2,t2
	add	a3,s1,t3
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	s1,a4,0000000023029886

l23029800:
	bgeu	a5,s1,000000002302980C

l23029804:
	bltu	a3,a4,000000002302982A

l23029808:
	bltu	a5,a3,0000000023029880

l2302980C:
	beq	t4,t5,0000000023029860

l23029810:
	c.addi	a5,00000001
	or	a5,a5,t2

l23029816:
	bgeu	a2,a5,000000002302984C

l2302981A:
	lbu	a3,a0,+00000014
	andi	a4,a5,+00000001
	c.beqz	a3,0000000023029854

l23029824:
	c.beqz	a4,0000000023029858

l23029826:
	c.mv	s0,a7
	c.j	00000000230297D8

l2302982A:
	bne	a4,s1,0000000023029832

l2302982E:
	bgeu	a3,a5,000000002302980C

l23029832:
	bltu	a5,t2,000000002302983E

l23029836:
	and	s2,a5,t2
	bgeu	s2,s1,000000002302980C

l2302983E:
	bltu	a3,t2,00000000230297D4

l23029842:
	and	a3,a3,t2
	bltu	a3,a4,00000000230297D4

l2302984A:
	c.j	000000002302980C

l2302984C:
	c.add	a5,t2
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023029816

l23029854:
	c.mv	s0,a7
	c.beqz	a4,00000000230297D8

l23029858:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023029826

l23029860:
	c.mv	a5,a6
	c.j	0000000023029826

l23029864:
	c.li	a5,00000003
	bltu	a2,a6,000000002302975C

l2302986A:
	c.lwsp	a2,00000004
	c.lwsp	s0,00000024
	c.lwsp	tp,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23029876:
	c.li	a5,00000001

l23029878:
	c.mv	a0,a5
	c.jr	ra

l2302987C:
	c.li	a5,00000003
	c.j	000000002302986A

l23029880:
	bltu	a4,s1,0000000023029832

l23029884:
	c.j	000000002302980C

l23029886:
	bgeu	a3,a4,000000002302980C

l2302988A:
	c.j	000000002302982E

;; ea_time_get_halfslot_rounded: 2302988C
;;   Called from:
;;     23029A1E (in ea_elt_insert)
;;     23029CF8 (in ea_finetimer_isr)
;;     2302EB78 (in lld_evt_schedule_next)
;;     2302EE02 (in lld_evt_scan_create)
;;     2302EE6A (in lld_evt_move_to_master)
;;     2302F644 (in lld_evt_adv_create)
;;     230317BC (in lld_con_start)
ea_time_get_halfslot_rounded proc
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l23029896:
	c.lw	a5,28(a3)
	blt	a3,zero,0000000023029896

l2302989C:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+00000138
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

;; ea_time_get_slot_rounded: 230298AC
;;   Called from:
;;     230298E4 (in ea_prog_timer)
;;     23029948 (in ea_prog_timer)
ea_time_get_slot_rounded proc
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l230298B6:
	c.lw	a5,28(a3)
	blt	a3,zero,00000000230298B6

l230298BC:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+0000006A
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

;; ea_prog_timer: 230298CC
;;   Called from:
;;     23029C62 (in ea_elt_insert)
;;     23029CB6 (in ea_elt_remove)
;;     23029DB0 (in ea_finetimer_isr)
ea_prog_timer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042013
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	s1,FFFFFFFF
	addi	s2,s0,+00000188
	c.swsp	ra,00000084
	sw	s1,s2,+0000001C
	jal	ra,00000000230298AC
	lw	a5,s2,+00000000
	addi	s0,s0,+00000188
	c.beqz	a5,0000000023029998

l230298F2:
	lbu	a2,a5,+00000019
	c.lw	a5,8(a4)
	c.lw	s0,8(a3)
	c.sub	a4,a2
	c.slli	a4,05
	c.srli	a4,00000005
	c.sw	s0,28(a4)
	c.beqz	a3,0000000023029948

l23029904:
	lbu	a2,a3,+00000016
	lbu	a4,a5,+00000016
	bgeu	a2,a4,000000002302991C

l23029910:
	lhu	a4,a5,+00000010
	slli	a2,a4,00000014
	blt	a2,zero,0000000023029988

l2302991C:
	lbu	a4,a3,+00000017

l23029920:
	lbu	a3,a5,+00000019
	bgeu	a3,a4,0000000023029948

l23029928:
	c.lw	a5,8(a5)
	c.sub	a5,a4
	lui	a4,00008000
	addi	a3,a4,-00000001
	c.and	a5,a3
	sub	a4,a5,a0
	c.and	a4,a3
	lui	a3,00004000
	bltu	a3,a4,000000002302998E

l23029944:
	c.beqz	a4,000000002302998E

l23029946:
	c.sw	s0,28(a5)

l23029948:
	jal	ra,00000000230298AC
	c.lw	s0,28(a4)
	lui	a5,00004000
	c.addi	a5,FFFFFFFE
	sub	a4,a0,a4
	bltu	a5,a4,0000000023029966

l2302995C:
	addi	a5,a0,+00000001
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,28(a5)

l23029966:
	c.lw	s0,28(a4)
	lui	a5,00028000
	sw	a4,a5,+000000F8
	c.lw	a5,12(a4)
	c.srli	a4,00000007
	c.andi	a4,00000001
	c.bnez	a4,00000000230299B0

l23029978:
	addi	a4,zero,+00000080
	c.sw	a5,24(a4)
	c.lw	a5,12(a4)
	ori	a4,a4,+00000080
	c.sw	a5,12(a4)
	c.j	00000000230299B0

l23029988:
	lbu	a4,a3,+00000018
	c.j	0000000023029920

l2302998E:
	c.addi	a0,00000001
	c.slli	a0,05
	c.srli	a0,00000005
	c.sw	s0,28(a0)
	c.j	0000000023029948

l23029998:
	c.lw	s0,28(a5)
	bne	a5,s1,0000000023029948

l2302999E:
	lui	a5,00028000
	c.lw	a5,12(a4)
	andi	a4,a4,-00000081
	c.sw	a5,12(a4)
	addi	a4,zero,+00000080
	c.sw	a5,24(a4)

l230299B0:
	lui	a5,0004200F
	lbu	a4,a5,+000003E0
	addi	a3,a5,+000003E0
	c.bnez	a4,00000000230299D2

l230299BE:
	c.srli	a0,0000001A
	c.andi	a0,00000001
	sb	a0,a3,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230299D2:
	slli	a5,a0,00000005
	blt	a5,zero,00000000230299BE

l230299DA:
	c.lw	s0,20(a4)
	lui	a1,00008000

l230299E0:
	c.beqz	a4,00000000230299BE

l230299E2:
	lhu	a2,a4,+00000004
	lhu	a6,a4,+00000006
	or	a5,a1,a2
	sub	a5,a2,a5
	c.add	a5,a6
	or	a5,a5,a2
	sh	a5,a4,+00000006
	c.lw	a4,0(a4)
	c.j	00000000230299E0

;; ea_elt_insert: 23029A00
;;   Called from:
;;     2302EAB6 (in lld_evt_elt_insert)
;;     2302F730 (in lld_evt_end)
ea_elt_insert proc
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
	c.mv	s0,a0
	jal	ra,000000002302988C
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s4,00042013
	lbu	a5,s0,+00000019
	addi	a4,s4,+00000188
	c.lw	a4,8(a4)
	c.addi	a5,00000001
	lui	a3,00008000
	c.add	a5,a0
	addi	a2,a3,-00000001
	c.and	a5,a2
	addi	s5,s4,+00000188
	c.beqz	a4,0000000023029A6C

l23029A4C:
	lbu	a4,a4,+00000017
	c.beqz	a4,0000000023029A6C

l23029A52:
	sub	a3,a5,a0
	c.and	a3,a2
	lui	a2,00004000
	bltu	a2,a3,0000000023029A64

l23029A60:
	bge	a3,a4,0000000023029A6C

l23029A64:
	add	a5,a4,a0
	c.slli	a5,05
	c.srli	a5,00000005

l23029A6C:
	lhu	s6,s0,+00000010
	srli	s8,s6,0000000E
	beq	s8,zero,0000000023029A88

l23029A78:
	srai	a4,s6,0000000C
	c.andi	a4,00000003
	c.li	a3,00000001
	bne	a4,a3,0000000023029AD8

l23029A84:
	ori	a5,a5,+00000001

l23029A88:
	c.lw	s0,8(a4)
	lui	a3,00008000
	c.addi	a3,FFFFFFFF
	sub	a2,a4,a5
	c.and	a2,a3
	lui	a1,00004000
	bgeu	a1,a2,0000000023029AE8

l23029A9E:
	sub	a4,a5,a4
	c.and	a4,a3
	c.beqz	a4,0000000023029AE8

l23029AA6:
	bne	s8,zero,0000000023029AE6

l23029AAA:
	c.li	s1,00000001

l23029AAC:
	lui	a5,0004200F
	lbu	a5,a5,+000003BD
	csrrw	zero,mstatus,zero
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
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l23029AD8:
	c.bnez	a4,0000000023029A88

l23029ADA:
	lui	a0,00008000
	c.addi	a5,00000001
	c.addi	a0,FFFFFFFE
	c.and	a5,a0
	c.j	0000000023029A88

l23029AE6:
	c.sw	s0,8(a5)

l23029AE8:
	c.li	a5,00000001
	bgeu	a5,s8,0000000023029B1E

l23029AEE:
	c.lw	s0,12(a2)
	c.lw	s0,8(a5)
	lui	a3,00008000
	c.addi	a3,FFFFFFFF
	sub	a4,a2,a5
	lui	a1,00004000
	c.and	a4,a3
	bgeu	a1,a4,0000000023029B0E

l23029B06:
	c.sub	a5,a2
	c.and	a5,a3
	sub	a4,zero,a5

l23029B0E:
	lhu	a5,s0,+00000012
	addi	a3,zero,+00000271
	srl	a5,a5,a3
	blt	a4,a5,0000000023029AAA

l23029B1E:
	lw	s1,s5,+00000008
	lw	a2,s5,+00000000
	c.bnez	s1,0000000023029B2A

l23029B28:
	c.mv	s1,a2

l23029B2A:
	srai	s6,s6,0000000C
	lui	s10,00008000
	andi	s6,s6,+00000003
	c.li	s2,00000000
	c.li	s9,00000000
	c.li	s7,00000000
	c.addi	s10,FFFFFFFF
	c.li	s11,00000001

l23029B40:
	c.beqz	s1,0000000023029B86

l23029B42:
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	a2,00000084
	jal	ra,0000000023029404
	c.beqz	a0,0000000023029B86

l23029B4E:
	c.li	a6,00000005
	c.lwsp	a2,00000084
	lui	a7,00004000
	addi	a3,zero,+00000271
	beq	a0,a6,0000000023029C10

l23029B5E:
	lbu	a4,s0,+00000016
	lbu	a5,s1,+00000016
	bgeu	a5,a4,0000000023029BDA

l23029B6A:
	lw	a5,s5,+00000008
	beq	a5,s1,0000000023029BDA

l23029B72:
	bne	s2,zero,0000000023029B78

l23029B76:
	c.mv	s9,s1

l23029B78:
	c.addi	s2,00000001
	andi	a0,a0,+000000FD
	andi	s2,s2,+000000FF
	bne	a0,s11,0000000023029C68

l23029B86:
	beq	s2,zero,0000000023029BB8

l23029B8A:
	addi	a2,s2,-00000001
	andi	a2,a2,+000000FF
	c.mv	a1,s9
	addi	a0,s4,+00000188
	jal	ra,000000002302A39E
	addi	s6,s5,+0000000C

l23029BA0:
	lw	s1,s9,+00000000
	c.addi	s2,FFFFFFFF
	c.mv	a1,s9
	c.mv	a0,s6
	andi	s2,s2,+000000FF
	jal	ra,000000002302A2FE
	c.mv	s9,s1
	bne	s2,zero,0000000023029BA0

l23029BB8:
	beq	s7,zero,0000000023029C5A

l23029BBC:
	c.mv	a2,s0
	c.mv	a1,s7
	addi	a0,s4,+00000188
	jal	ra,000000002302A4DC

l23029BC8:
	lw	a5,s5,+0000000C
	c.li	s1,00000000
	beq	a5,zero,0000000023029AAC

l23029BD2:
	c.mv	a0,s0
	jal	ra,00000000230294BE
	c.j	0000000023029AAC

l23029BDA:
	beq	s8,zero,0000000023029AAA

l23029BDE:
	lhu	a5,s1,+00000012
	lhu	a4,s1,+00000014
	c.lw	s1,8(a1)
	c.add	a4,a5
	srl	a5,a4,a3
	and	a4,a4,a3
	c.add	a5,a1
	lhu	a1,s0,+00000014
	bgeu	a1,a4,0000000023029BFE

l23029BFC:
	c.addi	a5,00000001

l23029BFE:
	bne	s6,s11,0000000023029C4C

l23029C02:
	ori	a5,a5,+00000001

l23029C06:
	and	a5,a5,s10
	c.sw	s0,8(a5)
	c.li	s2,00000000
	c.li	s9,00000000

l23029C10:
	bgeu	s11,s8,0000000023029C3A

l23029C14:
	c.lw	s0,12(a1)
	c.lw	s0,8(a5)
	sub	a4,a1,a5
	and	a4,a4,s10
	bgeu	a7,a4,0000000023029C2E

l23029C24:
	c.sub	a5,a1
	and	a5,a5,s10
	sub	a4,zero,a5

l23029C2E:
	lhu	a5,s0,+00000012
	srl	a5,a5,a3
	blt	a4,a5,0000000023029AAA

l23029C3A:
	lw	a5,s5,+00000008
	beq	a5,s1,0000000023029C56

l23029C42:
	bne	s2,zero,0000000023029C48

l23029C46:
	c.mv	s7,s1

l23029C48:
	c.lw	s1,0(s1)
	c.j	0000000023029B40

l23029C4C:
	bne	s6,zero,0000000023029C06

l23029C50:
	c.addi	a5,00000001
	c.andi	a5,FFFFFFFE
	c.j	0000000023029C06

l23029C56:
	c.mv	s1,a2
	c.j	0000000023029B40

l23029C5A:
	c.mv	a1,s0
	addi	a0,s4,+00000188
	c.jal	000000002302A338
	jal	ra,00000000230298CC
	c.j	0000000023029BC8

l23029C68:
	bltu	s11,s8,0000000023029C14

l23029C6C:
	c.j	0000000023029C42

;; ea_elt_remove: 23029C6E
;;   Called from:
;;     2302E140 (in lld_evt_elt_delete)
;;     2302EC04 (in lld_evt_schedule_next)
;;     2302F8F4 (in lld_evt_end_isr)
ea_elt_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.bnez	a0,0000000023029C94

l23029C82:
	c.li	a0,00000000

l23029C84:
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23029C94:
	lui	a5,00042013
	addi	s1,a5,+00000188
	c.lw	s1,8(a4)
	bne	a4,a0,0000000023029CA8

l23029CA2:
	sw	zero,s1,+00000008
	c.j	0000000023029C82

l23029CA8:
	c.lw	s1,0(a4)
	c.mv	s0,a0
	bne	a0,a4,0000000023029CBC

l23029CB0:
	addi	a0,a5,+00000188
	c.jal	000000002302A36A
	jal	ra,00000000230298CC
	c.j	0000000023029C82

l23029CBC:
	c.mv	a1,a0
	c.li	a2,00000000
	addi	a0,a5,+00000188
	c.jal	000000002302A39E
	c.bnez	a0,0000000023029C82

l23029CC8:
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,+0000000C
	c.jal	000000002302A39E
	c.bnez	a0,0000000023029C82

l23029CD4:
	c.li	a0,00000002
	c.j	0000000023029C84

;; ea_finetimer_isr: 23029CD8
;;   Called from:
;;     230292F2 (in rwble_isr)
;;     23029302 (in rwble_isr)
ea_finetimer_isr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042013
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	a5,s2,+00000188
	c.lw	a5,8(s1)
	c.lw	a5,0(s0)
	jal	ra,000000002302988C
	c.mv	s5,a0
	addi	s3,s2,+00000188
	c.beqz	s1,0000000023029D44

l23029D04:
	c.beqz	s0,0000000023029D80

l23029D06:
	lbu	a4,s1,+00000016
	lbu	a5,s0,+00000016
	bgeu	a4,a5,0000000023029D1E

l23029D12:
	lhu	a5,s0,+00000010
	slli	a4,a5,00000014
	blt	a4,zero,0000000023029DB4

l23029D1E:
	lbu	a4,s1,+00000017

l23029D22:
	c.lw	s0,8(a5)
	lui	a3,00004000
	sub	a5,a5,s5
	c.slli	a5,05
	c.srli	a5,00000005
	bltu	a3,a5,0000000023029D38

l23029D34:
	blt	a4,a5,0000000023029D44

l23029D38:
	c.lw	s1,32(a5)
	c.beqz	a5,0000000023029D40

l23029D3C:
	c.mv	a0,s1
	c.jalr	a5

l23029D40:
	sw	zero,s3,+00000008

l23029D44:
	c.beqz	s0,0000000023029D80

l23029D46:
	lui	s4,00008000
	lui	s6,00004000
	c.addi	s4,FFFFFFFF
	c.addi	s6,FFFFFFFE
	addi	s7,s3,+0000000C

l23029D56:
	lbu	a4,s0,+00000019
	c.lw	s0,8(a5)
	c.sub	a5,a4
	and	a5,a5,s4
	sub	a4,a5,s5
	and	a4,a4,s4
	bgeu	s6,a4,0000000023029DBA

l23029D6E:
	addi	a0,s2,+00000188
	c.jal	000000002302A36A
	c.mv	a1,a0
	c.mv	a0,s7
	c.jal	000000002302A2FE
	lw	s0,s3,+00000000
	c.bnez	s0,0000000023029D56

l23029D80:
	lw	a5,s3,+0000000C
	c.beqz	a5,0000000023029D9C

l23029D86:
	lui	a3,00028000
	c.lw	a3,0(a5)
	lui	a4,000F0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00010000
	c.or	a5,a4
	c.sw	a3,0(a5)

l23029D9C:
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
	jal	zero,00000000230298CC

l23029DB4:
	lbu	a4,s1,+00000018
	c.j	0000000023029D22

l23029DBA:
	bne	a5,s5,0000000023029D80

l23029DBE:
	addi	a0,s2,+00000188
	c.jal	000000002302A36A
	lw	a5,s3,+00000008
	c.mv	s0,a0
	c.beqz	a5,0000000023029DD4

l23029DCC:
	c.lw	a5,32(a5)
	c.beqz	a5,0000000023029DD4

l23029DD0:
	c.mv	a0,s1
	c.jalr	a5

l23029DD4:
	c.lw	s0,28(a5)
	sw	s0,s3,+00000008
	c.beqz	a5,0000000023029D80

l23029DDC:
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023029D80

;; ea_interval_duration_req: 23029DE2
;;   Called from:
;;     2302F030 (in lld_evt_update_create)
;;     2302F2EE (in lld_evt_move_to_slave)
;;     230315A0 (in lld_scan_start)
;;     2303181A (in lld_con_start)
;;     23031F6A (in lld_con_update_after_param_req)
;;     230321C8 (in lld_con_param_rsp)
;;     230322F2 (in lld_con_param_req)
ea_interval_duration_req proc
	lhu	a3,a0,+00000002
	sh	a3,a1,+00000000
	lhu	a6,a0,+00000000
	bgeu	a6,a3,0000000023029E26

l23029DF2:
	lui	a5,00042013
	c.lui	a4,00010000
	lw	a2,a5,+0000019C
	c.addi	a4,FFFFFFFF
	c.li	a5,00000000

l23029E00:
	c.bnez	a2,0000000023029E34

l23029E02:
	c.li	a2,00000001
	bltu	a2,a5,0000000023029E5A

l23029E08:
	lbu	a4,a0,+0000000A
	c.beqz	a4,0000000023029E88

l23029E0E:
	xor	a5,a3,a4

l23029E12:
	add	a5,a4,a5
	c.slli	a5,10
	c.srli	a5,00000010

l23029E1A:
	bltu	a5,a6,0000000023029E26

l23029E1E:
	bltu	a3,a5,0000000023029E26

l23029E22:
	sh	a5,a1,+00000000

l23029E26:
	c.lw	a0,4(a5)
	c.li	a4,00000002
	bgeu	a5,a4,0000000023029E30

l23029E2E:
	c.li	a5,00000002

l23029E30:
	c.sw	a1,4(a5)
	c.jr	ra

l23029E34:
	lhu	t1,a2,+0000000A
	lhu	a7,a0,+00000010
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	beq	t1,a7,0000000023029E56

l23029E46:
	lhu	a7,a2,+00000004
	bgeu	a4,a7,0000000023029E50

l23029E4E:
	c.mv	a7,a4

l23029E50:
	slli	a4,a7,00000010
	c.srli	a4,00000010

l23029E56:
	c.lw	a2,0(a2)
	c.j	0000000023029E00

l23029E5A:
	bltu	a3,a4,0000000023029E64

l23029E5E:
	srl	a5,a3,a4
	c.j	0000000023029E12

l23029E64:
	c.lui	a5,00010000
	c.mv	a2,a3
	c.addi	a5,FFFFFFFF

l23029E6A:
	and	a7,a4,a2
	c.li	t1,00000000
	bne	a7,zero,0000000023029E78

l23029E74:
	c.mv	a5,a2
	c.li	t1,00000001

l23029E78:
	c.addi	a2,FFFFFFFE
	c.slli	a2,10
	c.srli	a2,00000010
	bltu	a2,a6,0000000023029E1A

l23029E82:
	beq	t1,zero,0000000023029E6A

l23029E86:
	c.j	0000000023029E1A

l23029E88:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.j	0000000023029E1E

;; hci_send_2_host: 23029E8E
;;   Called from:
;;     2302CE74 (in llc_discon_event_complete_send)
;;     2302CF6E (in llc_le_con_cmp_evt_send)
;;     2302D1E0 (in llc_le_ch_sel_algo_evt_send)
;;     2302D422 (in llc_con_update_complete_send)
;;     2302D4AA (in llc_ltk_req_send)
;;     2302D506 (in llc_feats_rd_event_send)
;;     2302D56A (in llc_version_rd_event_send)
;;     2302D59A (in llc_common_cmd_complete_send)
;;     2302D5C0 (in llc_common_cmd_status_send)
;;     2302D5E6 (in llc_common_flush_occurred_send)
;;     2302D618 (in llc_common_enc_key_ref_comp_evt_send)
;;     2302D69C (in llc_common_enc_change_evt_send)
;;     2302D6E8 (in llc_common_nb_of_pkt_comp_evt_send)
;;     23032E4A (in llm_end_evt_defer)
;;     23033316 (in llm_le_adv_report_ind)
;;     23033604 (in llm_common_cmd_complete_send)
;;     2303362A (in llm_common_cmd_status_send)
;;     23034610 (in llm_encryption_done)
;;     23035D50 (in fn23035CEA)
;;     23036636 (in llcp_length_rsp_handler)
;;     23037496 (in llcp_length_req_handler)
;;     23037796 (in llc_auth_payl_real_to_ind_handler)
;;     23037F8A (in llc_data_ind_handler)
;;     2303864A (in llm_ecc_result_ind_handler)
;;     23039138 (in hci_le_rd_chnl_map_cmd_handler)
;;     2303918A (in hci_rd_auth_payl_to_cmd_handler)
;;     23039200 (in hci_rd_rssi_cmd_handler)
;;     230392BC (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     23039536 (in hci_wr_auth_payl_to_cmd_handler)
;;     23039598 (in hci_flush_cmd_handler)
;;     2303985A (in hci_le_rd_rfpath_compensation_cmd_handler)
;;     23039892 (in hci_le_rd_trans_pwr_cmd_handler)
;;     230398C8 (in hci_rd_buff_size_cmd_handler)
;;     23039908 (in hci_rd_local_supp_feats_cmd_handler)
;;     23039950 (in hci_rd_local_supp_cmds_cmd_handler)
;;     23039998 (in hci_rd_local_ver_info_cmd_handler)
;;     230399DC (in hci_rd_bd_addr_cmd_handler)
;;     23039A2E (in hci_le_rd_max_data_len_cmd_handler)
;;     23039A6E (in hci_le_rd_suggted_dft_data_len_cmd_handler)
;;     23039AB0 (in hci_le_rd_supp_states_cmd_handler)
;;     23039ADE (in hci_le_rd_wl_size_cmd_handler)
;;     23039B20 (in hci_le_rd_adv_ch_tx_pw_cmd_handler)
;;     23039B64 (in hci_le_rd_local_supp_feats_cmd_handler)
;;     23039B9E (in hci_le_rd_buff_size_cmd_handler)
;;     23039DFE (in hci_le_rand_cmd_handler)
;;     2303A3BA (in hci_le_test_end_cmd_handler)
hci_send_2_host proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	lhu	a3,a0,-00000008
	c.lui	a5,00001000
	addi	a4,a5,-000007FD
	c.mv	s1,a0
	addi	s0,a0,-0000000C
	beq	a3,a4,0000000023029ED6

l23029EAC:
	addi	a5,a5,-000007FC
	beq	a3,a5,0000000023029F16

l23029EB4:
	c.lui	a5,FFFFF000
	addi	a5,a5,+000007FF
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000005
	bltu	a4,a5,0000000023029F06

l23029EC6:
	lui	a4,000230B5
	c.slli	a5,02
	addi	a4,a4,-0000013C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23029ED6:
	lbu	a5,a0,-00000004
	addi	a4,zero,+0000003F
	bltu	a4,a5,0000000023029F1C

l23029EE2:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	lui	a4,00042025
	srli	a2,a5,00000003
	addi	a4,a4,+0000071C
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.slli	a2,03
	c.sub	a5,a2
	sra	a5,a4,a5
	c.andi	a5,00000001
	c.bnez	a5,0000000023029EB4

l23029F06:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302BDCE

l23029F16:
	addi	a5,zero,+0000003E
	c.j	0000000023029EE2

l23029F1C:
	addi	a4,zero,+00000057
	bltu	a4,a5,0000000023029F4A

l23029F24:
	addi	a5,a5,-00000040
	andi	a5,a5,+000000FF
	lui	a4,00042025
	srli	a3,a5,00000003
	addi	a4,a4,+0000071C
	c.add	a4,a3
	lbu	a4,a4,+00000008
	c.slli	a3,03
	c.sub	a5,a3
	sra	a5,a4,a5
	c.andi	a5,00000001
	c.beqz	a5,0000000023029F06

l23029F4A:
	c.mv	a0,s0
	jal	ra,0000000023034F14
	c.j	0000000023029F64
23029F52       85 67 93 87 17 80 63 96 F6 00 81 45 22 85   .g....c....E".
23029F60 EF A0 50 74                                     ..Pt           

l23029F64:
	c.li	a5,00000004
	sh	a5,s0,+00000006
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302BCFA
23029F7A                               22 85 EF A0 50 7F           "...P.
23029F80 D5 B7 03 D6 C4 FF 83 D5 A4 FF 05 65 A1 46 13 05 ...........e.F..
23029F90 65 80 EF 10 B0 4F B7 F7 00 42 83 A7 07 3D A6 85 e....O...B...=..
23029FA0 21 46 2A 89 82 97 22 85 EF 10 70 62 13 04 49 FF !F*..."...pb..I.
23029FB0 CA 84 4D BF                                     ..M.           

;; hci_send_2_controller: 23029FB4
;;   Called from:
;;     23028FE0 (in blecontroller_main)
hci_send_2_controller proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,-00000008
	c.lui	a5,00001000
	addi	a3,a5,-000007FB
	c.mv	s0,a0
	beq	a4,a3,0000000023029FE8

l23029FCA:
	addi	a5,a5,-000007F9
	bne	a4,a5,000000002302A024

l23029FD2:
	lhu	a5,s0,-00000006
	c.li	a4,00000001
	bltu	a4,a5,000000002302A024

l23029FDC:
	c.slli	a5,08
	ori	a5,a5,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002302A010

l23029FE8:
	lhu	a0,a0,-00000004
	jal	ra,0000000023034A70
	c.beqz	a0,000000002302A024

l23029FF2:
	lbu	a5,a0,+00000002
	c.li	a4,00000008
	c.andi	a5,0000000F
	bltu	a4,a5,000000002302A024

l23029FFE:
	lui	a4,000230B5
	c.slli	a5,02
	addi	a4,a4,-00000124
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302A00E                                           81 47               .G

l2302A010:
	sh	a5,s0,+00000FFA
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302BCFA
2302A020 8D 47 FD B7                                     .G..           

l2302A024:
	addi	a0,s0,-0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302BDCE

;; hci_evt_mask_set: 2302A032
;;   Called from:
;;     2302A0CC (in hci_init)
;;     2302A102 (in hci_reset)
;;     23039CAA (in hci_set_evt_mask_page_2_cmd_handler)
;;     23039CCA (in hci_set_evt_mask_cmd_handler)
hci_evt_mask_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000002
	beq	a1,a5,000000002302A04E

l2302A03E:
	c.li	a5,00000003
	beq	a1,a5,000000002302A066

l2302A044:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302A04E:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.mv	a1,a0
	lui	a0,00042025
	c.li	a2,00000008
	addi	a0,a0,+00000724
	c.jalr	a5
	c.j	000000002302A044

l2302A066:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	lui	s0,00042025
	c.mv	a1,a0
	c.li	a2,00000008
	addi	a0,s0,+0000071C
	c.jalr	a5
	lui	a2,000230CC
	addi	a5,s0,+0000071C
	c.li	a4,00000000
	addi	a2,a2,-00000698
	c.li	a1,00000008

l2302A08C:
	add	a3,a2,a4
	lbu	a0,a5,+00000000
	lbu	a3,a3,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.or	a3,a0
	sb	a3,a5,+00000FFF
	bne	a4,a1,000000002302A08C

l2302A0A6:
	c.j	000000002302A044

;; hci_init: 2302A0A8
;;   Called from:
;;     2302A1C8 (in rwip_init)
hci_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFF0
	lui	a0,00042025
	c.swsp	ra,00000084
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,+0000071C
	c.jalr	a5
	lui	a0,000230CC
	c.li	a1,00000003
	addi	a0,a0,-000006A0
	jal	ra,000000002302A032
	c.li	a0,00000000
	jal	ra,0000000023034B42
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023034674

;; hci_reset: 2302A0DE
;;   Called from:
;;     2302A12C (in rwip_reset)
hci_reset proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFF0
	lui	a0,00042025
	c.swsp	ra,00000084
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,+0000071C
	c.jalr	a5
	lui	a0,000230CC
	c.li	a1,00000003
	addi	a0,a0,-000006A0
	jal	ra,000000002302A032
	c.li	a0,00000001
	jal	ra,0000000023034B42
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023034674

;; rwip_reset: 2302A114
;;   Called from:
;;     2302A1F0 (in rwip_init)
;;     23039D1C (in hci_reset_cmd_handler)
rwip_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002302C296
	c.li	a0,00000001
	jal	ra,000000002302B176
	jal	ra,000000002302A0DE
	jal	ra,000000002302924A
	lui	a5,00042013
	addi	a5,a5,+000001A8
	addi	a4,zero,+000000C8
	c.sw	a5,8(a4)
	addi	a4,zero,+00000101
	sh	a4,a5,+0000000C
	c.li	a0,00000001
	sw	zero,a5,+00000004
	jal	ra,0000000023029628
	lui	a5,00042025
	lw	a5,a5,+0000072C
	c.jalr	a5
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rwip_init: 2302A16A
;;   Called from:
;;     2302917E (in ble_controller_init)
rwip_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFF0
	lui	a0,00042013
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	s0,a0,+000001A8
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,+000001A8
	c.jalr	a5
	jal	ra,000000002302C220
	c.lui	s1,00001000
	lui	a1,00042025
	addi	a2,s1,-00000501
	addi	a1,a1,+00000760
	c.li	a0,00000000
	jal	ra,000000002302B9DA
	lui	a5,0004200F
	lw	a1,a5,-000004C4
	addi	a2,s1,+000000B6
	c.li	a0,00000001
	jal	ra,000000002302B9DA
	lui	a0,00042025
	addi	a0,a0,+0000072C
	jal	ra,000000002302C4B0
	c.li	a0,00000000
	jal	ra,000000002302B176
	jal	ra,000000002302A0A8
	jal	ra,0000000023029224
	c.li	a0,00000000
	jal	ra,0000000023029628
	addi	a5,zero,+000000C8
	c.sw	s0,8(a5)
	addi	a5,zero,+00000101
	sw	zero,s0,+00000004
	sh	a5,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302A114

;; rwip_schedule: 2302A1F4
;;   Called from:
;;     23028FE4 (in blecontroller_main)
rwip_schedule proc
	lui	a5,00042013
	lhu	a5,a5,+000001B2
	c.andi	a5,00000001
	c.bnez	a5,000000002302A204

l2302A200:
	jal	zero,000000002302B8FE

l2302A204:
	c.jr	ra

;; rwip_wakeup_delay_set: 2302A206
;;   Called from:
;;     23030AFC (in lld_sleep_init)
rwip_wakeup_delay_set proc
	lui	a5,000000F4
	addi	a5,a5,+00000240
	c.slli	a0,0F
	srl	a0,a0,a5
	lui	a5,00042013
	sw	a0,a5,+000001A8
	c.jr	ra

;; rwip_prevent_sleep_set: 2302A21E
;;   Called from:
;;     2302A244 (in rwip_wakeup)
;;     2302DDDA (in lld_evt_delete_elt_push)
;;     2302E0EC (in lld_evt_elt_delete)
;;     230345AA (in llm_encryption_start)
rwip_prevent_sleep_set proc
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042013
	addi	a5,a5,+000001A8
	lhu	a3,a5,+0000000A
	c.or	a0,a3
	sh	a0,a5,+0000000A
	csrrw	zero,mstatus,zero
	c.jr	ra

;; rwip_wakeup: 2302A23E
;;   Called from:
;;     230292E0 (in rwble_isr)
rwip_wakeup proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302A21E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023030B1E

;; rwip_prevent_sleep_clear: 2302A250
;;   Called from:
;;     2302A294 (in rwip_wakeup_end)
;;     2302DFC4 (in lld_evt_init)
;;     2302E1DE (in lld_evt_delete_elt_handler)
;;     2303465E (in llm_encryption_done)
rwip_prevent_sleep_clear proc
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042013
	addi	a5,a5,+000001A8
	lhu	a3,a5,+0000000A
	xori	a0,a0,-00000001
	c.and	a0,a3
	sh	a0,a5,+0000000A
	csrrw	zero,mstatus,zero
	c.jr	ra

;; rwip_wakeup_end: 2302A274
;;   Called from:
;;     230292EE (in rwble_isr)
rwip_wakeup_end proc
	lui	a5,00042013
	lhu	a5,a5,+000001B2
	c.andi	a5,00000001
	c.beqz	a5,000000002302A298

l2302A280:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023030BD2
	c.li	a0,00000003
	jal	ra,000000002302B838
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002302A250

l2302A298:
	c.jr	ra

;; rwip_sleep_lpcycles_2_us: 2302A29A
;;   Called from:
;;     23030B6C (in lld_sleep_wakeup)
rwip_sleep_lpcycles_2_us proc
	lui	a4,00042013
	addi	a4,a4,+000001A8
	c.lw	a4,4(a5)
	slli	a3,a0,00000008
	c.add	a5,a0
	c.add	a5,a3
	slli	a3,a0,00000003
	c.add	a5,a3
	srli	a3,a5,00000009
	andi	a5,a5,+000001FF
	c.sw	a4,4(a5)
	c.li	a5,0000001E
	add	a0,a0,a5
	c.add	a0,a3
	c.jr	ra

;; rwip_us_2_lpcycles: 2302A2C6
;;   Called from:
;;     23030AC2 (in lld_sleep_init)
;;     23030ACC (in lld_sleep_init)
;;     23030AD6 (in lld_sleep_init)
rwip_us_2_lpcycles proc
	lui	a5,000000F4
	addi	a5,a5,+00000240
	c.slli	a0,0F
	srl	a0,a0,a5
	c.jr	ra

;; ble_co_list_init: 2302A2D6
;;   Called from:
;;     2302963A (in ea_init)
;;     23029642 (in ea_init)
;;     2302964A (in ea_init)
;;     2302B186 (in ecc_init)
;;     2302CA78 (in em_buf_init)
;;     2302CA80 (in em_buf_init)
;;     2302DFCC (in lld_evt_init)
;;     2302DFD4 (in lld_evt_init)
;;     2302DFDC (in lld_evt_init)
;;     2302DFE8 (in lld_evt_init)
;;     2302E07E (in lld_evt_init_evt)
;;     2302E086 (in lld_evt_init_evt)
;;     2302E08E (in lld_evt_init_evt)
;;     2302E096 (in lld_evt_init_evt)
;;     2302FF64 (in lld_pdu_check)
;;     2303071E (in lld_pdu_tx_prog)
;;     2303413C (in llm_init)
;;     230341D4 (in llm_init)
;;     230341E0 (in llm_init)
;;     23034B6A (in hci_tl_init)
;;     23034B72 (in hci_tl_init)
ble_co_list_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302A2F6

l2302A2EE:
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004

l2302A2F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_push_back: 2302A2FE
;;   Called from:
;;     230296C0 (in ea_interval_insert)
;;     23029BAE (in ea_elt_insert)
;;     23029D78 (in ea_finetimer_isr)
;;     2302A510 (in ble_co_list_insert_after)
;;     2302AEE2 (in ecc_multiplication_event_handler)
;;     2302B606 (in ecc_generate_key256)
;;     2302BD28 (in ble_ke_msg_send)
;;     2302CB56 (in em_buf_init)
;;     2302CB74 (in em_buf_init)
;;     2302CB8E (in em_buf_init)
;;     2302CCD8 (in em_buf_tx_free)
;;     2302CD20 (in em_buf_tx_free)
;;     2302DB24 (in lld_evt_deferred_elt_push)
;;     2302DB4A (in lld_evt_elt_wait_insert)
;;     2302DD86 (in lld_evt_schedule)
;;     2302DDCE (in lld_evt_delete_elt_push)
;;     2303011A (in lld_pdu_check)
;;     23030274 (in lld_pdu_data_send)
;;     230302E6 (in lld_pdu_tx_push)
;;     23030620 (in lld_pdu_tx_prog)
;;     23030A82 (in lld_pdu_rx_handler)
;;     23032CAA (in llm_util_bl_add)
;;     230331B8 (in llm_le_adv_report_ind)
;;     2303516C (in ble_ke_task_saved_update)
;;     230352FC (in ble_ke_task_schedule)
;;     230354E6 (in llc_llcp_send)
;;     230386CC (in llm_enc_req_handler)
;;     230396D2 (in llc_hci_acl_data_tx_handler)
;;     23039E2C (in hci_le_enc_cmd_handler)
ble_co_list_push_back proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302A328

l2302A31C:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002302A332

l2302A320:
	c.sw	s1,0(s0)

l2302A322:
	c.sw	s1,4(s0)
	sw	zero,s0,+00000000

l2302A328:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302A332:
	c.lw	s1,4(a5)
	c.sw	a5,0(s0)
	c.j	000000002302A322

;; ble_co_list_push_front: 2302A338
;;   Called from:
;;     23029C60 (in ea_elt_insert)
ble_co_list_push_front proc
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
	c.bnez	a0,000000002302A360

l2302A356:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002302A35C

l2302A35A:
	c.sw	s0,4(s1)

l2302A35C:
	c.sw	s1,0(a5)
	c.sw	s0,0(s1)

l2302A360:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_pop_front: 2302A36A
;;   Called from:
;;     230296F8 (in ea_sw_isr)
;;     23029CB4 (in ea_elt_remove)
;;     23029D72 (in ea_finetimer_isr)
;;     23029DC2 (in ea_finetimer_isr)
;;     2302AD8C (in ecc_multiplication_event_handler)
;;     2302B1A0 (in ecc_init)
;;     2302BFC4 (in ble_ke_timer_schedule)
;;     2302C16C (in ble_ke_timer_clear)
;;     2302C2B2 (in ble_ke_flush)
;;     2302C2C0 (in ble_ke_flush)
;;     2302C2CE (in ble_ke_flush)
;;     2302DB6A (in lld_evt_deferred_elt_pop)
;;     2302DC12 (in lld_evt_elt_wait_get)
;;     2302DEC4 (in lld_evt_deffered_elt_handler)
;;     2302DED4 (in lld_evt_deffered_elt_handler)
;;     2302DFA0 (in lld_evt_init)
;;     2302DFAC (in lld_evt_init)
;;     2302E04C (in lld_evt_init)
;;     2302F8EE (in lld_evt_end_isr)
;;     2302FED2 (in lld_pdu_tx_flush_list)
;;     2302FFDC (in lld_pdu_check)
;;     23030032 (in lld_pdu_check)
;;     2303003E (in lld_pdu_check)
;;     230300EC (in lld_pdu_check)
;;     23030478 (in lld_pdu_tx_prog)
;;     230307C0 (in lld_pdu_tx_flush)
;;     23030E34 (in lld_util_flush_list)
;;     2303367A (in llm_test_mode_start_tx)
;;     2303368C (in llm_test_mode_start_tx)
;;     2303418A (in llm_init)
;;     230345C2 (in llm_encryption_done)
;;     23035286 (in ble_ke_task_schedule)
;;     23084938 (in bt_onchiphci_send)
ble_co_list_pop_front proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002302A38C

l2302A382:
	c.lwsp	a2,00000044

l2302A384:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302A38C:
	c.lw	s0,0(a0)
	c.swsp	a0,00000084
	c.beqz	a0,000000002302A384

l2302A392:
	c.lw	a0,0(a5)
	c.sw	s0,0(a5)
	c.bnez	a5,000000002302A384

l2302A398:
	sw	zero,s0,+00000004
	c.j	000000002302A384

;; ble_co_list_extract: 2302A39E
;;   Called from:
;;     230296D0 (in ea_interval_remove)
;;     23029B98 (in ea_elt_insert)
;;     23029CC4 (in ea_elt_remove)
;;     23029CD0 (in ea_elt_remove)
;;     2302DBF8 (in lld_evt_elt_wait_get)
;;     2302E14C (in lld_evt_elt_delete)
;;     2302E222 (in lld_evt_delete_elt_handler)
;;     2303052A (in lld_pdu_tx_prog)
;;     23032D02 (in llm_util_bl_rem)
ble_co_list_extract proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s0,a2
	c.mv	a3,a2
	sb	zero,sp,+0000000F
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302A3D8

l2302A3C8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302A3D8:
	c.lw	s1,0(a5)
	c.li	a4,00000000

l2302A3DC:
	c.bnez	a5,000000002302A3E6

l2302A3DE:
	lbu	a3,sp,+0000000F
	c.beqz	a3,000000002302A3C8

l2302A3E4:
	c.j	000000002302A3F0

l2302A3E6:
	bne	a5,s2,000000002302A402

l2302A3EA:
	c.li	a3,00000001
	sb	a3,sp,+0000000F

l2302A3F0:
	c.lw	a5,0(a3)
	c.bnez	s0,000000002302A408

l2302A3F4:
	c.bnez	a4,000000002302A40E

l2302A3F6:
	c.sw	s1,0(a3)

l2302A3F8:
	c.lw	s1,4(a3)
	bne	a3,a5,000000002302A3C8

l2302A3FE:
	c.sw	s1,4(a4)
	c.j	000000002302A3C8

l2302A402:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	000000002302A3DC

l2302A408:
	c.addi	s0,FFFFFFFF
	c.mv	a5,a3
	c.j	000000002302A3F0

l2302A40E:
	c.sw	a4,0(a3)
	c.j	000000002302A3F8

;; ble_co_list_extract_after: 2302A412
;;   Called from:
;;     2302958A (in ea_elt_cancel)
ble_co_list_extract_after proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302A446

l2302A436:
	c.bnez	s1,000000002302A452

l2302A438:
	c.lw	s0,0(a5)
	c.lw	a5,0(a5)
	c.sw	s0,0(a5)

l2302A43E:
	c.lw	s0,4(a5)
	bne	a5,s2,000000002302A446

l2302A444:
	c.sw	s0,4(s1)

l2302A446:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302A452:
	lw	a5,s2,+00000000
	c.sw	s1,0(a5)
	c.j	000000002302A43E

;; ble_co_list_find: 2302A45A
;;   Called from:
;;     2302E0D4 (in lld_evt_elt_delete)
;;     2302EBEE (in lld_evt_schedule_next)
ble_co_list_find proc
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
	c.beqz	a0,000000002302A488

l2302A47A:
	lbu	a0,sp,+0000000F

l2302A47E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302A488:
	c.lw	s1,0(a0)

l2302A48A:
	beq	a0,s0,000000002302A490

l2302A48E:
	c.bnez	a0,000000002302A49A

l2302A490:
	sub	a0,s0,a0
	sltiu	a0,a0,+00000001
	c.j	000000002302A47E

l2302A49A:
	c.lw	a0,0(a0)
	c.j	000000002302A48A

;; ble_co_list_merge: 2302A49E
;;   Called from:
;;     230300FE (in lld_pdu_check)
;;     23030718 (in lld_pdu_tx_prog)
ble_co_list_merge proc
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
	c.bnez	a0,000000002302A4CC

l2302A4BC:
	c.lw	s0,0(a4)
	c.lw	s1,0(a5)
	c.bnez	a4,000000002302A4D6

l2302A4C2:
	c.sw	s0,0(a5)

l2302A4C4:
	c.lw	s1,4(a5)
	c.sw	s0,4(a5)
	sw	zero,s1,+00000000

l2302A4CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302A4D6:
	c.lw	s0,4(a4)
	c.sw	a4,0(a5)
	c.j	000000002302A4C4

;; ble_co_list_insert_after: 2302A4DC
;;   Called from:
;;     23029596 (in ea_elt_cancel)
;;     23029BC4 (in ea_elt_insert)
ble_co_list_insert_after proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	s1,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302A530

l2302A500:
	c.bnez	s0,000000002302A514

l2302A502:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302A2FE

l2302A514:
	lw	a5,s2,+00000000

l2302A518:
	beq	a5,s0,000000002302A522

l2302A51C:
	c.beqz	a5,000000002302A502

l2302A51E:
	c.lw	a5,0(a5)
	c.j	000000002302A518

l2302A522:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002302A52A

l2302A526:
	sw	s1,s2,+00000004

l2302A52A:
	c.lw	s0,0(a5)
	c.sw	s1,0(a5)
	c.sw	s0,0(s1)

l2302A530:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_size: 2302A53C
;;   Called from:
;;     2302BD7A (in ble_ke_msg_get_sent_num)
;;     230303B8 (in lld_pdu_tx_prog)
;;     2303318E (in llm_le_adv_report_ind)
ble_co_list_size proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	sh	zero,sp,+0000000E
	addi	a0,sp,+0000000E
	c.jalr	a5
	c.beqz	a0,000000002302A566

l2302A55A:
	lhu	a0,sp,+0000000E

l2302A55E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302A566:
	c.lw	s0,0(a5)

l2302A568:
	lhu	a0,sp,+0000000E
	c.beqz	a5,000000002302A55E

l2302A56E:
	c.addi	a0,00000001
	c.lw	a5,0(a5)
	sh	a0,sp,+0000000E
	c.j	000000002302A568

;; co_bdaddr_set: 2302A578
;;   Called from:
;;     230290F0 (in bdaddr_init)
co_bdaddr_set proc
	lui	a5,0004200F
	lw	t1,a5,+000003D0
	c.mv	a1,a0
	lui	a0,0004200F
	c.li	a2,00000006
	addi	a0,a0,+000003E4
	c.jr	t1

;; co_bdaddr_compare: 2302A58E
;;   Called from:
;;     23031018 (in lld_init)
;;     230329E4 (in llm_util_bd_addr_wl_position)
;;     23032A28 (in llm_util_bd_addr_wl_position)
;;     23032A42 (in llm_util_check_address_validity)
;;     23032B9E (in llm_util_bl_check)
;;     23033338 (in llm_le_adv_report_ind)
;;     23033B9E (in llm_set_adv_en)
;;     23033F94 (in llm_set_scan_en)
;;     23034484 (in llm_create_con)
;;     2303A2DE (in hci_le_set_rand_add_cmd_handler)
co_bdaddr_compare proc
	c.li	a5,00000000
	c.li	a2,00000006

l2302A592:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	bne	a3,a4,000000002302A5B0

l2302A5A6:
	c.addi	a5,00000001
	bne	a5,a2,000000002302A592

l2302A5AC:
	c.li	a0,00000001
	c.jr	ra

l2302A5B0:
	c.li	a0,00000000
	c.jr	ra

;; Mont2GF: 2302A5B4
;;   Called from:
;;     2302B03A (in ecc_multiplication_event_handler)
;;     2302B040 (in ecc_multiplication_event_handler)
;;     2302B09E (in ecc_multiplication_event_handler)
Mont2GF proc
	c.addi	sp,FFFFFFF0
	lui	a1,000230B5
	c.swsp	s0,00000004
	c.li	a5,00000000
	c.mv	s0,a0
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000D
	addi	a1,a1,+00000748
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002302C696
	c.li	a3,00000000
	c.li	a2,00000006
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002302C7C6
	c.li	a3,00000000
	c.li	a2,00000007
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002302C7C6
	c.mv	a4,s0
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002302C9C4
	c.mv	a2,s0
	c.li	a3,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000003
	jal	ra,000000002302C876
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002302C7C6

;; getFinalPoint: 2302A622
;;   Called from:
;;     2302B0A4 (in ecc_multiplication_event_handler)
;;     2302B0AA (in ecc_multiplication_event_handler)
getFinalPoint proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000000
	c.mv	s0,a0
	c.li	a2,00000006
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302C7C6
	c.li	a3,00000000
	c.li	a2,00000007
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002302C7C6
	c.mv	a4,s0
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002302C9C4
	c.mv	a2,s0
	c.li	a3,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000003
	jal	ra,000000002302C876
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002302C7C6

;; pka_point_addition.constprop.3: 2302A678
;;   Called from:
;;     2302AD58 (in pka_addition_win.constprop.1)
;;     2302AED2 (in ecc_multiplication_event_handler)
pka_point_addition.constprop.3 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a0,+00000002
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	andi	s1,s1,+000000FF
	c.mv	s2,a0
	c.mv	s5,a1
	addi	a4,a1,+00000001
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a2
	c.mv	a6,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	addi	s0,s2,+00000001
	addi	s4,s5,+00000002
	c.swsp	ra,00000094
	andi	s0,s0,+000000FF
	jal	ra,000000002302C8CC
	andi	s4,s4,+000000FF
	c.mv	a6,s4
	c.mv	a4,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a6,s1
	c.mv	a4,s5
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a6,s4
	c.mv	a4,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000010
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C836
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C836
	c.mv	a6,s4
	c.mv	a4,s1
	c.mv	a2,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a4,s0
	c.mv	a2,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a6,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a6,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C836
	c.mv	a6,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000009
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,00000012
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C836
	c.mv	a4,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a4,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	addi	a2,s3,+00000002
	c.mv	a6,s2
	c.mv	a4,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a2,s3
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	c.mv	a4,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C836
	c.mv	a6,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C8CC
	addi	a2,s3,+00000001
	c.mv	a4,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002302C836
	jal	ra,000000002302C6F6
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,000000002302C678

;; pka_read_result.constprop.4: 2302A8B4
;;   Called from:
;;     2302AD60 (in pka_addition_win.constprop.1)
;;     2302AF2A (in ecc_multiplication_event_handler)
;;     2302AF56 (in ecc_multiplication_event_handler)
;;     2302B5EE (in ecc_generate_key256)
pka_read_result.constprop.4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	a2,a0
	c.mv	s1,a0
	c.li	a3,00000008
	c.li	a0,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a1
	jal	ra,000000002302C710
	addi	a1,s0,+00000001
	addi	a2,s1,+00000028
	c.li	a3,00000008
	andi	a1,a1,+000000FF
	c.li	a0,00000003
	jal	ra,000000002302C710
	addi	a1,s0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,s1,+00000050
	c.lwsp	tp,00000024
	c.li	a3,00000008
	andi	a1,a1,+000000FF
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002302C710

;; pka_cp_x2_to_x1.constprop.5: 2302A8FA
;;   Called from:
;;     2302AD44 (in pka_addition_win.constprop.1)
;;     2302AE9E (in ecc_multiplication_event_handler)
pka_cp_x2_to_x1.constprop.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a4,a1
	c.mv	a2,a0
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302C7FA
	addi	a4,s1,+00000001
	addi	a2,s0,+00000001
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C7FA
	addi	a2,s0,+00000002
	c.lwsp	s0,00000004
	addi	a4,s1,+00000002
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002302C7FA

;; pka_point_inf_check.constprop.7: 2302A950
;;   Called from:
;;     2302AA82 (in pka_point_double.constprop.2)
;;     2302AD20 (in pka_addition_win.constprop.1)
;;     2302AD2A (in pka_addition_win.constprop.1)
;;     2302AE7E (in ecc_multiplication_event_handler)
;;     2302AE86 (in ecc_multiplication_event_handler)
pka_point_inf_check.constprop.7 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	a2,a0
	c.mv	s4,a1
	addi	a0,sp,+0000000F
	c.li	a4,00000008
	c.li	a3,00000003
	c.li	a1,00000003
	addi	s3,s2,+00000001
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	andi	s3,s3,+000000FF
	jal	ra,000000002302C94C
	c.mv	a2,s3
	addi	a0,sp,+0000000F
	c.li	a4,00000013
	c.li	a3,00000003
	c.li	a1,00000003
	lbu	s5,sp,+0000000F
	jal	ra,000000002302C94C
	lbu	s1,sp,+0000000F
	c.mv	a4,s3
	addi	a0,sp,+0000000F
	c.li	a3,00000003
	c.li	a2,00000014
	c.li	a1,00000003
	jal	ra,000000002302C94C
	lbu	s0,sp,+0000000F
	addi	a2,s2,+00000002
	c.slli	s1,01
	addi	a0,sp,+0000000F
	c.slli	s1,18
	c.li	a4,00000008
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	jal	ra,000000002302C94C
	c.srai	s1,00000018
	c.slli	s0,02
	lbu	a5,sp,+0000000F
	c.or	s0,s1
	or	s0,s0,s5
	c.slli	s0,18
	c.srai	s0,00000018
	c.slli	a5,03
	c.or	s0,a5
	c.slli	s0,18
	c.srai	s0,00000018
	c.addi	s0,FFFFFFF1
	sltiu	s0,s0,+00000001
	sb	s0,s4,+00000000
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; GF2Mont.constprop.8: 2302A9F8
;;   Called from:
;;     2302B2F2 (in ecc_generate_key256)
;;     2302B2FA (in ecc_generate_key256)
GF2Mont.constprop.8 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	lui	a1,000230B5
	c.swsp	s1,00000080
	c.li	a5,00000000
	c.mv	s1,a0
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000000
	addi	a1,a1,+00000788
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002302C696
	c.mv	a1,s1
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000001
	c.li	a0,00000008
	jal	ra,000000002302C696
	addi	a5,zero,+00000100
	c.li	a4,00000001
	c.li	a3,00000003
	c.li	a2,00000001
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002302C9F2
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000001
	c.li	a3,00000004
	c.li	a2,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C876
	c.mv	a2,s0
	c.li	a3,00000008
	c.li	a1,00000004
	c.li	a0,00000003
	jal	ra,000000002302C710
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002302C7C6

;; pka_point_double.constprop.2: 2302AA72
;;   Called from:
;;     2302AEAA (in ecc_multiplication_event_handler)
;;     2302AF0A (in ecc_multiplication_event_handler)
pka_point_double.constprop.2 proc
	c.addi16sp	FFFFFFD0
	addi	a1,sp,+0000001F
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	jal	ra,000000002302A950
	lbu	a5,sp,+0000001F
	bne	a5,zero,000000002302AC8A

l2302AA8E:
	c.li	a7,00000003
	c.mv	a6,s2
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	addi	s0,s2,+00000002
	andi	s0,s0,+000000FF
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.mv	a4,s0
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C836
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000A
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	addi	s1,s2,+00000001
	andi	s1,s1,+000000FF
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s2
	c.li	a5,00000003
	c.mv	a4,s0
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C836
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,00000009
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000B
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000E
	c.li	a3,00000003
	c.li	a2,00000010
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C836
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C836
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,0000000E
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	zero,00000000
	jal	ra,000000002302C8CC
	jal	ra,000000002302C6F6
	jal	ra,000000002302C678

l2302AC8A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; pka_addition_win.constprop.1: 2302AC96
;;   Called from:
;;     2302AF7C (in ecc_multiplication_event_handler)
;;     2302AF96 (in ecc_multiplication_event_handler)
;;     2302AFB4 (in ecc_multiplication_event_handler)
;;     2302AFCE (in ecc_multiplication_event_handler)
;;     2302AFFC (in ecc_multiplication_event_handler)
pka_addition_win.constprop.1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.mv	a1,a0
	c.swsp	s2,00000008
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a0,00000008
	c.mv	s2,a2
	c.li	a2,00000015
	c.swsp	ra,0000008C
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000016
	addi	a1,s1,+00000028
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000017
	addi	a1,s1,+00000050
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000018
	c.mv	a1,s0
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000019
	addi	a1,s0,+00000028
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000001A
	addi	a1,s0,+00000050
	c.li	a0,00000008
	jal	ra,000000002302C696
	addi	a1,sp,+0000000E
	c.li	a0,00000015
	jal	ra,000000002302A950
	addi	a1,sp,+0000000F
	c.li	a0,00000018
	jal	ra,000000002302A950
	lbu	a5,sp,+0000000E
	c.li	a4,00000001
	bne	a5,a4,000000002302AD4A

l2302AD38:
	lbu	a5,sp,+0000000F
	c.li	a1,00000018
	c.beqz	a5,000000002302AD42

l2302AD40:
	c.li	a1,00000002

l2302AD42:
	c.li	a0,0000001B
	jal	ra,000000002302A8FA
	c.j	000000002302AD5C

l2302AD4A:
	lbu	a4,sp,+0000000F
	c.or	a5,a4
	c.bnez	a5,000000002302AD40

l2302AD52:
	c.li	a2,0000001B
	c.li	a1,00000018
	c.li	a0,00000015
	jal	ra,000000002302A678

l2302AD5C:
	c.mv	a0,s2
	c.li	a1,0000001B
	jal	ra,000000002302A8B4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; ecc_multiplication_event_handler: 2302AD70
ecc_multiplication_event_handler proc
	c.addi16sp	FFFFFF70
	c.li	a0,00000000
	c.swsp	s1,000000C0
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	lui	s1,00042026
	jal	ra,000000002302B894
	addi	a0,s1,+0000026C
	jal	ra,000000002302A36A
	beq	a0,zero,000000002302AEE6

l2302AD94:
	c.lw	a0,4(a5)
	c.mv	s0,a0
	beq	a5,zero,000000002302B01A

l2302AD9C:
	lbu	s2,a0,+0000012C
	c.li	a3,00000001
	lw	a4,a0,+00000128
	addi	a5,s2,-00000001
	andi	a5,a5,+000000FF
	bltu	a3,a5,000000002302AF02

l2302ADB2:
	beq	s2,a3,000000002302AEBA

l2302ADB6:
	lw	a1,a0,+00000130

l2302ADBA:
	addi	a5,zero,+0000003F
	c.sub	a5,a4
	addi	a3,zero,+0000007F
	c.sub	a3,a4
	c.srli	a5,00000005
	addi	a5,a5,+0000003C
	c.srli	a3,00000005
	c.slli	a5,02
	addi	a3,a3,+0000003C
	c.add	a5,s0
	c.slli	a3,02
	c.lw	a5,8(a5)
	c.add	a3,s0
	c.lw	a3,8(a3)
	andi	a2,a4,+0000001F
	srl	a5,a5,a2
	srl	a3,a3,a2
	c.andi	a5,00000001
	c.andi	a3,00000001
	c.slli	a5,01
	c.add	a5,a3
	addi	a3,zero,+000000BF
	c.sub	a3,a4
	c.srli	a3,00000005
	addi	a3,a3,+0000003C
	c.slli	a3,02
	c.add	a3,s0
	c.lw	a3,8(a3)
	c.slli	a5,01
	srl	a3,a3,a2
	c.andi	a3,00000001
	c.add	a5,a3
	addi	a3,zero,+000000FF
	sub	a4,a3,a4
	c.srli	a4,00000005
	addi	a4,a4,+0000003C
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,8(a4)
	c.slli	a5,01
	srl	a2,a4,a2
	c.andi	a2,00000001
	c.add	a5,a2
	c.beqz	a5,000000002302AEA2

l2302AE2E:
	addi	a4,zero,+00000078
	add	a5,a5,a4
	c.li	a3,00000003
	addi	a4,zero,+00000039
	c.li	a2,00000015
	c.li	a0,00000008
	addi	a5,a5,-00000078
	add	s2,a1,a5
	c.mv	a1,s2
	c.li	a5,00000000
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000016
	addi	a1,s2,+00000028
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000017
	addi	a1,s2,+00000050
	c.li	a0,00000008
	jal	ra,000000002302C696
	addi	a1,sp,+0000001F
	c.li	a0,00000002
	jal	ra,000000002302A950
	c.addi4spn	a1,00000020
	c.li	a0,00000015
	jal	ra,000000002302A950
	lbu	a5,sp,+0000001F
	c.li	a4,00000001
	bne	a5,a4,000000002302AEC4

l2302AE94:
	lbu	a5,sp,+00000020
	c.bnez	a5,000000002302AEA2

l2302AE9A:
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002302A8FA

l2302AEA2:
	lw	a5,s0,+00000128
	c.beqz	a5,000000002302AED8

l2302AEA8:
	c.li	a0,00000002
	jal	ra,000000002302AA72
	lw	a5,s0,+00000128
	c.addi	a5,FFFFFFFF

l2302AEB4:
	sw	a5,s0,+00000128
	c.j	000000002302AEDC

l2302AEBA:
	lui	a1,000230B5
	addi	a1,a1,+00000040
	c.j	000000002302ADBA

l2302AEC4:
	lbu	a4,sp,+00000020
	c.or	a5,a4
	c.bnez	a5,000000002302AEA2

l2302AECC:
	c.li	a2,00000002
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002302A678
	c.j	000000002302AEA2

l2302AED8:
	sw	zero,s0,+00000004

l2302AEDC:
	c.mv	a1,s0
	addi	a0,s1,+0000026C
	jal	ra,000000002302A2FE

l2302AEE6:
	lw	a5,s1,+0000026C
	c.beqz	a5,000000002302AEF2

l2302AEEC:
	c.li	a0,00000000
	jal	ra,000000002302B838

l2302AEF2:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.addi16sp	00000090
	c.jr	ra

l2302AF02:
	c.li	a5,00000003
	bne	s2,a5,000000002302AF66

l2302AF08:
	c.li	a0,00000005
	jal	ra,000000002302AA72
	lw	a5,s0,+00000128
	addi	a4,zero,+00000040
	c.addi	a5,00000001
	sw	a5,s0,+00000128
	bne	a5,a4,000000002302AF30

l2302AF20:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000078

l2302AF2A:
	jal	ra,000000002302A8B4
	c.j	000000002302AEDC

l2302AF30:
	addi	a4,zero,+00000080
	bne	a5,a4,000000002302AF44

l2302AF38:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000168
	c.j	000000002302AF2A

l2302AF44:
	addi	a4,zero,+000000C0
	bne	a5,a4,000000002302AEDC

l2302AF4C:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000348
	jal	ra,000000002302A8B4
	c.li	a5,00000004
	sb	a5,s0,+0000012C
	sw	s2,s0,+00000128
	c.j	000000002302AEDC

l2302AF66:
	c.li	a3,00000004
	bne	s2,a3,000000002302AEDC

l2302AF6C:
	bne	a4,a5,000000002302AF84

l2302AF70:
	lw	a0,a0,+00000130
	addi	a2,a0,+000000F0
	addi	a1,a0,+00000078
	jal	ra,000000002302AC96
	c.li	a5,00000005
	c.j	000000002302AEB4

l2302AF84:
	c.li	a5,00000005
	bne	a4,a5,000000002302AF9E

l2302AF8A:
	lw	a0,a0,+00000130
	addi	a2,a0,+000001E0
	addi	a1,a0,+00000168
	jal	ra,000000002302AC96
	c.li	a5,00000006
	c.j	000000002302AEB4

l2302AF9E:
	c.li	a5,00000006
	bne	a4,a5,000000002302AFBC

l2302AFA4:
	lw	a0,a0,+00000130
	addi	a2,a0,+00000258
	addi	a1,a0,+00000168
	addi	a0,a0,+00000078
	jal	ra,000000002302AC96
	c.li	a5,00000007
	c.j	000000002302AEB4

l2302AFBC:
	c.li	a3,00000007
	bne	a4,a3,000000002302AFD6

l2302AFC2:
	lw	a0,a0,+00000130
	addi	a2,a0,+000002D0
	addi	a1,a0,+00000258
	jal	ra,000000002302AC96
	c.li	a5,00000009
	c.j	000000002302AEB4

l2302AFD6:
	addi	a3,a4,-00000009
	bltu	a5,a3,000000002302AEDC

l2302AFDE:
	addi	a1,zero,+00000078
	add	a4,a4,a1
	lw	a0,a0,+00000130
	addi	a2,a4,-00000078
	addi	a4,a4,-00000438
	add	a1,a0,a4
	c.add	a2,a0
	addi	a0,a0,+00000348
	jal	ra,000000002302AC96
	lw	a5,s0,+00000128
	c.li	a4,0000000F
	bne	a5,a4,000000002302B016

l2302B00A:
	c.li	a5,00000002
	sb	a5,s0,+0000012C
	addi	a5,zero,+0000003F
	c.j	000000002302AEB4

l2302B016:
	c.addi	a5,00000001
	c.j	000000002302AEB4

l2302B01A:
	lhu	a1,a0,+00000122
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002302AEE6

l2302B026:
	lhu	a0,a0,+00000120
	addi	a3,zero,+00000040
	addi	a2,zero,+000000FF
	jal	ra,000000002302BC8C
	c.mv	s2,a0
	c.li	a0,00000002
	jal	ra,000000002302A5B4
	c.li	a0,00000003
	jal	ra,000000002302A5B4
	lui	s3,0004200F
	lw	a5,s3,+000003D4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.jalr	a5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000D
	c.addi4spn	a1,00000020
	c.li	a0,00000008
	c.li	s4,00000002
	c.swsp	s4,0000009C
	jal	ra,000000002302C696
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,00000000
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302C996
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a4,00000004
	c.li	a3,00000003
	c.li	a5,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	zero,00000000
	jal	ra,000000002302C90C
	jal	ra,000000002302C6F6
	jal	ra,000000002302C678
	c.li	a0,0000000E
	jal	ra,000000002302A5B4
	c.li	a0,00000002
	jal	ra,000000002302A622
	c.li	a0,00000003
	jal	ra,000000002302A622
	lw	a5,s3,+000003D4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.jalr	a5
	lw	a5,s3,+000003D4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.swsp	zero,00000020
	c.swsp	zero,000000A0
	c.addi4spn	a0,00000048
	c.jalr	a5
	c.li	a3,00000008
	c.addi4spn	a2,00000020
	c.li	a1,00000002
	c.li	a0,00000003
	c.swsp	zero,00000034
	c.swsp	zero,000000B4
	jal	ra,000000002302C710
	c.li	a3,00000008
	c.addi4spn	a2,00000048
	c.li	a1,00000003
	c.li	a0,00000003
	jal	ra,000000002302C710
	lbu	a5,s0,+0000012C
	bne	a5,s4,000000002302B0FE

l2302B0F2:
	lw	a0,s0,+00000130
	jal	ra,000000002302BB4A
	sw	zero,s0,+00000130

l2302B0FE:
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.addi4spn	a5,00000020
	addi	a4,s2,+0000001C

l2302B10A:
	lbu	a3,a5,+00000003
	c.addi	a5,00000004
	sb	a3,a4,+00000003
	lhu	a3,a5,-00000002
	sb	a3,a4,+00000002
	lw	a3,a5,-00000004
	c.srli	a3,00000008
	sb	a3,a4,+00000001
	lw	a3,a5,-00000004
	sb	a3,a4,+00000000
	addi	a3,a4,-00000004
	bne	s2,a4,000000002302B172

l2302B136:
	c.addi4spn	a5,00000048
	addi	a4,s2,+0000003C
	addi	a2,s2,+0000001C

l2302B140:
	lbu	a3,a5,+00000003
	c.addi	a4,FFFFFFFC
	c.addi	a5,00000004
	sb	a3,a4,+00000007
	lhu	a3,a5,-00000002
	sb	a3,a4,+00000006
	lw	a3,a5,-00000004
	c.srli	a3,00000008
	sb	a3,a4,+00000005
	lw	a3,a5,-00000004
	sb	a3,a4,+00000004
	bne	a4,a2,000000002302B140

l2302B16A:
	c.mv	a0,s2
	jal	ra,000000002302BCFA
	c.j	000000002302AEE6

l2302B172:
	c.mv	a4,a3
	c.j	000000002302B10A

;; ecc_init: 2302B176
;;   Called from:
;;     2302A128 (in rwip_reset)
;;     2302A1C4 (in rwip_init)
ecc_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00042026
	c.bnez	a0,000000002302B1A8

l2302B182:
	addi	a0,s0,+0000026C
	jal	ra,000000002302A2D6
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002302B
	addi	a1,a1,-00000290
	c.li	a0,00000000
	c.addi	sp,00000010
	c.j	000000002302B7EA

l2302B19C:
	addi	a0,s0,+0000026C
	jal	ra,000000002302A36A
	jal	ra,000000002302BB4A

l2302B1A8:
	lw	a5,s0,+0000026C
	c.bnez	a5,000000002302B19C

l2302B1AE:
	c.j	000000002302B182

;; ecc_generate_key256: 2302B1B0
;;   Called from:
;;     2302B660 (in ecc_gen_new_public_key)
;;     23039C08 (in hci_le_generate_dhkey_cmd_handler)
ecc_generate_key256 proc
	c.addi16sp	FFFFFEA0
	sw	s1,sp,+00000154
	sw	s2,sp,+00000150
	sw	s3,sp,+0000014C
	sw	s4,sp,+00000148
	sw	s5,sp,+00000144
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.mv	s3,a4
	sw	ra,sp,+0000015C
	sw	s0,sp,+00000158
	sw	s6,sp,+00000140
	sw	s7,sp,+0000013C
	sw	s8,sp,+00000138
	sw	s9,sp,+00000134
	sw	s10,sp,+00000130
	c.mv	s2,a0
	c.mv	s1,a5
	jal	ra,000000002302C668
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	c.lwsp	tp,000000A4
	addi	a7,sp,+00000018
	addi	a6,sp,+00000068
	c.swsp	zero,0000000C
	c.swsp	zero,00000034
	c.swsp	zero,00000048
	addi	a4,a1,+0000001C
	c.addi	a2,0000001C
	c.addi	a3,0000001C
	c.mv	t1,a6
	c.mv	t3,a7
	c.mv	s5,a7
	c.mv	s4,a6

l2302B216:
	lbu	a5,a4,+00000003
	lbu	a0,a4,+00000002
	c.addi	t3,00000004
	c.slli	a5,18
	c.slli	a0,10
	c.add	a5,a0
	lbu	a0,a4,+00000000
	c.addi	a2,FFFFFFFC
	c.addi	t1,00000004
	c.add	a5,a0
	lbu	a0,a4,+00000001
	c.addi	a3,FFFFFFFC
	c.slli	a0,08
	c.add	a5,a0
	sw	a5,t3,+00000FFC
	lbu	a0,a2,+00000007
	lbu	a5,a2,+00000006
	c.slli	a0,18
	c.slli	a5,10
	c.add	a0,a5
	lbu	a5,a2,+00000004
	c.add	a0,a5
	lbu	a5,a2,+00000005
	c.slli	a5,08
	c.add	a0,a5
	sw	a0,t1,+00000FFC
	lbu	a5,a3,+00000006
	lbu	a0,a3,+00000007
	c.slli	a5,10
	c.slli	a0,18
	c.add	a0,a5
	lbu	a5,a3,+00000004
	c.add	a0,a5
	lbu	a5,a3,+00000005
	c.slli	a5,08
	c.add	a0,a5
	sw	a0,t1,+00000024
	addi	a5,a4,-00000004
	bne	a1,a4,000000002302B644

l2302B286:
	c.li	a5,00000000
	c.li	a4,00000008

l2302B28A:
	lw	a3,a7,+00000000
	c.bnez	a3,000000002302B298

l2302B290:
	c.addi	a5,00000001
	c.addi	a7,00000004
	bne	a5,a4,000000002302B28A

l2302B298:
	c.li	a4,00000008
	sub	a5,a4,a5
	c.swsp	a5,0000001C
	c.mv	a4,a6
	c.li	a5,00000000
	c.li	a3,00000008

l2302B2A6:
	c.lw	a4,0(a2)
	c.bnez	a2,000000002302B2B2

l2302B2AA:
	c.addi	a5,00000001
	c.addi	a4,00000004
	bne	a5,a3,000000002302B2A6

l2302B2B2:
	c.li	a4,00000008
	sub	a5,a4,a5
	c.swsp	a5,00000044
	c.li	a5,00000000

l2302B2BC:
	lw	a3,a6,+00000028
	c.bnez	a3,000000002302B2CA

l2302B2C2:
	c.addi	a5,00000001
	c.addi	a6,00000004
	bne	a5,a4,000000002302B2BC

l2302B2CA:
	c.li	s6,00000008
	sub	a5,s6,a5
	c.li	a1,00000000
	addi	a0,zero,+00000134
	c.swsp	a5,00000058
	c.swsp	zero,000000C4
	c.swsp	zero,000000D8
	jal	ra,000000002302BA5A
	c.mv	s0,a0
	sb	s2,a0,+0000012C
	sh	s3,a0,+00000120
	sh	s1,a0,+00000122
	c.mv	a1,s4
	c.mv	a0,s4
	jal	ra,000000002302A9F8
	c.addi4spn	a1,00000090
	c.mv	a0,a1
	jal	ra,000000002302A9F8
	lui	s2,0004200F
	lw	a5,s2,+000003D4
	c.li	s3,00000001
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.swsp	s3,00000030
	c.swsp	zero,000000B0
	c.addi4spn	a0,00000040
	lui	s1,0004200F
	c.jalr	a5
	lw	a5,s1,+000003D0
	lui	s9,000230B5
	addi	a1,s9,-000000E0
	addi	a2,zero,+00000020
	c.addi4spn	a0,00000040
	c.jalr	a5
	lw	a5,s1,+000003D0
	c.mv	a1,s4
	addi	a2,zero,+00000020
	c.addi4spn	a0,000000B8
	c.jalr	a5
	c.lwsp	a0,000000E4
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000090
	c.swsp	a5,0000006C
	c.lwsp	a4,000000E4
	c.addi4spn	a0,000000E0
	addi	s8,s0,+00000080
	c.swsp	a5,000000EC
	lw	a5,s1,+000003D0
	addi	s7,s0,+000000A8
	addi	s4,s0,+000000D0
	c.jalr	a5
	c.lwsp	s2,000001F4
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	sw	a5,sp,+00000100
	c.lwsp	s6,000001F4
	c.addi4spn	a0,00000108
	addi	s10,s0,+00000008
	sw	a5,sp,+00000104
	lw	a5,s1,+000003D0
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.addi4spn	a1,000000B8
	sw	a5,sp,+00000128
	c.lwsp	t0,000001F4
	c.mv	a0,s8
	sw	a5,sp,+0000012C
	lw	a5,s1,+000003D0
	c.jalr	a5
	c.lwsp	s11,000000E4
	addi	a2,zero,+00000020
	c.addi4spn	a1,000000E0
	sw	a5,s0,+000000A0
	c.lwsp	t6,000000E4
	c.mv	a0,s7
	sw	a5,s0,+000000A4
	lw	a5,s1,+000003D0
	c.jalr	a5
	lw	a5,sp,+00000100
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000108
	sw	a5,s0,+000000C8
	lw	a5,sp,+00000104
	c.mv	a0,s4
	sw	a5,s0,+000000CC
	lw	a5,s1,+000003D0
	c.jalr	a5
	lw	a5,sp,+00000128
	c.mv	a1,s5
	addi	a2,zero,+00000020
	sw	a5,s0,+000000F0
	lw	a5,sp,+0000012C
	addi	a0,s0,+000000F8
	addi	s5,s0,+00000058
	sw	a5,s0,+000000F4
	lw	a5,s1,+000003D0
	c.jalr	a5
	c.lwsp	s8,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	sw	a5,s0,+00000118
	c.lwsp	t3,000001F4
	c.addi4spn	a0,00000040
	sw	a5,s0,+0000011C
	lw	a5,s2,+000003D4
	c.swsp	s3,00000030
	c.swsp	zero,000000B0
	c.jalr	a5
	lw	a5,s1,+000003D0
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.swsp	zero,000000AC
	c.mv	a0,s10
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a1,s9,-000000E0
	addi	a2,zero,+00000020
	c.sw	s0,40(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	addi	s9,s0,+00000030
	c.sw	s0,44(a5)
	lw	a5,s1,+000003D0
	c.jalr	a5
	lw	a5,s1,+000003D0
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.mv	a0,s9
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.sw	s0,80(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	c.sw	s0,84(a5)
	lw	a5,s2,+000003D4
	c.jalr	a5
	lw	a5,s1,+000003D0
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.swsp	zero,000000AC
	c.mv	a0,s5
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.sw	s0,120(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	c.sw	s0,124(a5)
	lw	a5,s2,+000003D4
	c.jalr	a5
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000000
	addi	a1,a1,+00000788
	c.li	a0,00000008
	c.swsp	s3,000000AC
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000001
	addi	a1,a1,+00000768
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000002
	c.mv	a1,s10
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000003
	c.mv	a1,s9
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000004
	c.mv	a1,s5
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000005
	c.mv	a1,s8
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000006
	c.mv	a1,s7
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000007
	c.mv	a1,s4
	c.li	a0,00000008
	jal	ra,000000002302C696
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000008
	c.addi4spn	a1,00000040
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000009
	addi	a1,a1,-00000080
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000A
	addi	a1,a1,-00000060
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000B
	addi	a1,a1,-00000040
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000C
	addi	a1,a1,-00000020
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000013
	addi	a1,a1,-000000A0
	c.li	a0,00000008
	jal	ra,000000002302C696
	lui	a1,000230B5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000014
	addi	a1,a1,-000000C0
	c.li	a0,00000008
	jal	ra,000000002302C696
	lbu	a4,s0,+0000012C
	addi	a5,zero,+0000003F
	sw	a5,s0,+00000128
	sw	zero,s0,+00000124
	sw	s6,s0,+00000004
	c.li	a5,00000002
	bne	a4,a5,000000002302B5FC

l2302B5E0:
	c.li	a1,00000000
	addi	a0,zero,+00000708
	c.jal	000000002302BA5A
	sw	a0,s0,+00000130
	c.li	a1,00000005
	jal	ra,000000002302A8B4
	c.li	a5,00000003
	sb	a5,s0,+0000012C
	sw	zero,s0,+00000128

l2302B5FC:
	lui	a0,00042026
	c.mv	a1,s0
	addi	a0,a0,+0000026C
	jal	ra,000000002302A2FE
	c.li	a0,00000000
	c.jal	000000002302B838
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
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
	c.li	a0,00000000
	c.addi16sp	00000160
	c.jr	ra

l2302B644:
	c.mv	a4,a5
	c.j	000000002302B216

;; ecc_gen_new_public_key: 2302B648
;;   Called from:
;;     2303A356 (in hci_le_rd_local_p256_public_key_cmd_handler)
ecc_gen_new_public_key proc
	c.mv	a5,a2
	lui	a3,000230B5
	lui	a2,000230B5
	c.mv	a4,a1
	addi	a3,a3,+00000020
	c.mv	a1,a0
	addi	a2,a2,+00000000
	c.li	a0,00000001
	jal	zero,000000002302B1B0

;; ecc_gen_new_secret_key: 2302B664
;;   Called from:
;;     2303103C (in lld_init)
;;     2303A344 (in hci_le_rd_local_p256_public_key_cmd_handler)
ecc_gen_new_secret_key proc
	bne	a1,zero,000000002302B7B4

l2302B668:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,000230B5
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.li	s2,FFFFFFFF
	addi	s1,s1,+000007B0

l2302B67E:
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000000
	sb	a5,s0,+00000001
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000002
	sb	a0,s0,+00000003
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000004
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000006
	sb	a0,s0,+00000007
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000000A
	sb	a0,s0,+0000000B
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+0000000C
	sb	a5,s0,+0000000D
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000000E
	sb	a0,s0,+0000000F
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000010
	sb	a5,s0,+00000011
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000012
	sb	a0,s0,+00000013
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000014
	sb	a5,s0,+00000015
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000016
	sb	a0,s0,+00000017
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+00000018
	sb	a5,s0,+00000019
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000001A
	sb	a0,s0,+0000001B
	jal	ra,0000000023065C28
	srli	a5,a0,00000008
	sb	a0,s0,+0000001C
	sb	a5,s0,+0000001D
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000001E
	sb	a0,s0,+0000001F
	c.li	a5,0000001F

l2302B770:
	add	a4,s0,a5
	lbu	a4,a4,+00000000
	c.bnez	a4,000000002302B788

l2302B77A:
	c.addi	a5,FFFFFFFF
	bne	a5,s2,000000002302B770

l2302B780:
	lbu	a5,s0,+00000000
	beq	a5,zero,000000002302B67E

l2302B788:
	c.li	a5,0000001F

l2302B78A:
	add	a4,s0,a5
	lbu	a3,a4,+00000000
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	bltu	a4,a3,000000002302B67E

l2302B79E:
	bltu	a3,a4,000000002302B7A8

l2302B7A2:
	c.addi	a5,FFFFFFFF
	bne	a5,s2,000000002302B78A

l2302B7A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302B7B4:
	c.jr	ra

;; ble_ke_event_init: 2302B7B6
;;   Called from:
;;     2302C25C (in ble_ke_init)
ble_ke_event_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302B7E4

l2302B7C8:
	lui	a5,0004200F
	c.lwsp	a2,00000020
	lw	t1,a5,+000003D4
	lui	a0,00042026
	addi	a2,zero,+00000030
	c.li	a1,00000000
	addi	a0,a0,+00000274
	c.addi	sp,00000010
	c.jr	t1

l2302B7E4:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_callback_set: 2302B7EA
;;   Called from:
;;     2302B19A (in ecc_init)
;;     2302C01C (in ble_ke_timer_init)
;;     2302DFF6 (in lld_evt_init)
;;     2302E016 (in lld_evt_init)
;;     230340BC (in llm_init)
;;     23035338 (in ble_ke_task_init)
ble_ke_event_callback_set proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302B818

l2302B80A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B818:
	c.li	a5,00000003
	sb	a5,sp,+0000000F
	c.li	a5,00000009
	bltu	a5,s0,000000002302B80A

l2302B824:
	lui	a0,00042026
	c.slli	s0,02
	addi	a0,a0,+00000274
	c.add	a0,s0
	c.sw	a0,4(s1)
	sb	zero,sp,+0000000F
	c.j	000000002302B80A

;; ble_ke_event_set: 2302B838
;;   Called from:
;;     2302A28A (in rwip_wakeup_end)
;;     2302AEEE (in ecc_multiplication_event_handler)
;;     2302B60C (in ecc_generate_key256)
;;     2302BD3A (in ble_ke_msg_send)
;;     2302C106 (in ble_ke_timer_set)
;;     2302C186 (in ble_ke_timer_clear)
;;     2302DDEA (in lld_evt_delete_elt_push)
;;     2302EB12 (in lld_evt_elt_insert)
;;     2302EB62 (in lld_evt_canceled)
;;     2302F7E2 (in lld_evt_end)
;;     2302F892 (in lld_evt_rx)
;;     2302F8D0 (in lld_evt_rx_afs)
;;     2302F8D8 (in lld_evt_timer_isr)
;;     230326C2 (in lld_crypt_isr)
;;     23035176 (in ble_ke_task_saved_update)
ble_ke_event_set proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302B88C

l2302B850:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042026
	c.li	a3,00000009
	addi	a5,a5,+00000274
	bltu	a3,s0,000000002302B872

l2302B866:
	c.li	a0,00000001
	sll	a1,a0,s0
	c.lw	a5,0(a0)
	c.or	a0,a1
	c.sw	a5,0(a0)

l2302B872:
	csrrw	zero,mstatus,zero
	lbu	a5,a5,+0000002C
	c.bnez	a5,000000002302B88C

l2302B87C:
	c.lwsp	s0,00000004
	lui	a5,0004200F
	c.lwsp	a2,00000020
	lw	t1,a5,+000003D8
	c.addi	sp,00000010
	c.jr	t1

l2302B88C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_clear: 2302B894
;;   Called from:
;;     2302AD84 (in ecc_multiplication_event_handler)
;;     2302BF9E (in ble_ke_timer_schedule)
;;     2302DE02 (in lld_evt_deffered_elt_handler)
;;     2302E1A8 (in lld_evt_delete_elt_handler)
;;     230345CA (in llm_encryption_done)
;;     230352D6 (in ble_ke_task_schedule)
ble_ke_event_clear proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302B8D6

l2302B8AC:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a5,00000009
	bltu	a5,s0,000000002302B8D2

l2302B8BA:
	lui	a5,00042026
	addi	a5,a5,+00000274
	c.lw	a5,0(a3)
	c.li	a0,00000001
	sll	a0,a0,s0
	xori	a0,a0,-00000001
	c.and	a0,a3
	c.sw	a5,0(a0)

l2302B8D2:
	csrrw	zero,mstatus,zero

l2302B8D6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_flush: 2302B8DE
;;   Called from:
;;     2302C2EC (in ble_ke_flush)
ble_ke_event_flush proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302B8F8

l2302B8F0:
	lui	a5,00042026
	sw	zero,a5,+00000274

l2302B8F8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_schedule: 2302B8FE
;;   Called from:
;;     2302A200 (in rwip_schedule)
ble_ke_event_schedule proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302B93E

l2302B91C:
	lui	s1,00042026
	c.li	s2,00000001
	lui	s3,00080000
	addi	s4,zero,+00000020
	c.li	s5,0000001F

l2302B92C:
	lw	a4,s1,+00000274
	addi	s0,s1,+00000274

l2302B934:
	c.bnez	a4,000000002302B950

l2302B936:
	c.lw	s0,0(a5)
	sb	zero,s0,+0000002C
	c.bnez	a5,000000002302B92C

l2302B93E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302B950:
	sb	s2,s0,+0000002C
	c.li	a5,00000000

l2302B956:
	srl	a3,s3,a5
	c.and	a3,a4
	c.bnez	a3,000000002302B964

l2302B95E:
	c.addi	a5,00000001
	bne	a5,s4,000000002302B956

l2302B964:
	sub	a5,s5,a5
	andi	a5,a5,+000000FF
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,4(a5)
	c.beqz	a5,000000002302B976

l2302B974:
	c.jalr	a5

l2302B976:
	c.lw	s0,0(a4)
	c.j	000000002302B934

;; ble_ke_mem_is_in_heap: 2302B97A
;;   Called from:
;;     2302BB92 (in ble_ke_free)
ble_ke_mem_is_in_heap proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302B9A8

l2302B99A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B9A8:
	lui	a5,00042026
	addi	a4,s0,+00000004
	addi	a5,a5,+000002A4
	c.slli	a4,02
	c.add	a4,a5
	c.lw	a4,8(a4)
	sb	zero,sp,+0000000F
	bltu	s1,a4,000000002302B99A

l2302B9C2:
	c.addi	s0,00000010
	c.slli	s0,01
	c.add	s0,a5
	lhu	a5,s0,+00000000
	c.add	a5,a4
	bltu	a5,s1,000000002302B99A

l2302B9D2:
	c.li	a5,00000001
	sb	a5,sp,+0000000F
	c.j	000000002302B99A

;; ble_ke_mem_init: 2302B9DA
;;   Called from:
;;     2302A1A0 (in rwip_init)
;;     2302A1B2 (in rwip_init)
ble_ke_mem_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BA4E

l2302B9FE:
	addi	a5,s1,+00000004
	lui	a4,00042026
	addi	a3,s0,+00000003
	addi	a4,a4,+000002A4
	c.slli	a5,02
	c.andi	a3,FFFFFFFC
	c.add	a5,a4
	c.sw	a5,8(a3)
	csrrs	a2,mstatus,zero
	csrrci	a1,mstatus,00000008
	c.add	s0,s2
	c.andi	s0,FFFFFFFC
	c.sub	s0,a3
	sh	s0,a3,+00000002
	c.lw	a5,8(a1)
	c.lui	a3,FFFFA000
	addi	a3,a3,+0000055A
	sh	a3,a1,+00000000
	c.lw	a5,8(a3)
	c.addi	s1,00000010
	c.slli	s1,01
	sw	zero,a3,+00000004
	c.lw	a5,8(a5)
	c.add	s1,a4
	sw	zero,a5,+00000008
	sh	s2,s1,+00000000
	csrrw	zero,mstatus,zero

l2302BA4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_malloc: 2302BA5A
;;   Called from:
;;     2302966E (in ea_elt_create)
;;     23029698 (in ea_interval_create)
;;     2302B2DC (in ecc_generate_key256)
;;     2302B5E6 (in ecc_generate_key256)
;;     2302BCCE (in ble_ke_msg_alloc)
;;     2302C0A8 (in ble_ke_timer_set)
;;     2302D23E (in llc_start)
;;     2302DB02 (in lld_evt_deferred_elt_push)
;;     2302DB34 (in lld_evt_elt_wait_insert)
;;     2302DDAE (in lld_evt_delete_elt_push)
;;     2303022A (in lld_pdu_data_send)
;;     2303088A (in lld_pdu_rx_handler)
;;     23032C66 (in llm_util_bl_add)
;;     2303319C (in llm_le_adv_report_ind)
;;     2303374C (in llm_test_mode_start_tx)
;;     23033896 (in llm_test_mode_start_rx)
;;     230339BC (in llm_set_adv_param)
;;     23033B3A (in llm_set_adv_en)
;;     23033CC8 (in llm_set_adv_data)
;;     23033D9A (in llm_set_scan_rsp_data)
;;     23033E9A (in llm_set_scan_param)
;;     23033F5E (in llm_set_scan_en)
;;     23035490 (in llc_llcp_send)
;;     2303549A (in llc_llcp_send)
ble_ke_malloc proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002302BA84

l2302BA78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	a2,00000044
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302BA84:
	addi	a0,s0,+00000003
	c.andi	a0,FFFFFFFC
	c.swsp	zero,00000084
	c.addi	a0,00000004
	c.li	a5,0000000C
	bgeu	a0,a5,000000002302BA96

l2302BA94:
	c.li	a0,0000000C

l2302BA96:
	csrrs	a6,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a2,00042026
	c.li	a3,00000000
	addi	a2,a2,+000002A4
	c.li	a7,00000001

l2302BAAA:
	add	a5,s1,a3
	c.andi	a5,00000001
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,a2
	c.lw	a5,8(a4)
	addi	t1,a0,+0000000C
	c.li	a5,00000000

l2302BABE:
	c.bnez	a4,000000002302BB10

l2302BAC0:
	c.beqz	a5,000000002302BAD0

l2302BAC2:
	lhu	a4,a5,+00000002
	addi	a1,a0,+0000000C
	bgeu	a4,a1,000000002302BAD0

l2302BACE:
	c.mv	a0,a4

l2302BAD0:
	beq	a3,a7,000000002302BB34

l2302BAD4:
	c.li	a3,00000001
	c.beqz	a5,000000002302BAAA

l2302BAD8:
	lhu	a4,a5,+00000002
	slli	a3,a0,00000010
	c.srli	a3,00000010
	bne	a4,a0,000000002302BB3C

l2302BAE6:
	c.lw	a5,8(a4)
	c.lw	a5,4(a2)
	c.sw	a4,4(a2)
	c.lw	a5,4(a4)
	c.beqz	a4,000000002302BAF4

l2302BAF0:
	c.lw	a5,8(a2)
	c.sw	a4,8(a2)

l2302BAF4:
	c.swsp	a5,00000084
	c.lwsp	a2,000000E4
	sh	a3,a5,+00000002
	c.lwsp	a2,000000C4
	c.lui	a5,FFFF8000
	addi	a5,a5,+00000338
	sh	a5,a4,+00000000
	c.lwsp	a2,000000E4
	c.addi	a5,00000004
	c.swsp	a5,00000084
	c.j	000000002302BB36

l2302BB10:
	lhu	a1,a4,+00000002
	bltu	a1,a0,000000002302BB30

l2302BB18:
	bgeu	a1,t1,000000002302BB24

l2302BB1C:
	lw	t3,a4,+00000008
	beq	t3,zero,000000002302BB30

l2302BB24:
	c.beqz	a5,000000002302BB2E

l2302BB26:
	lhu	t3,a5,+00000002
	bgeu	a1,t3,000000002302BB30

l2302BB2E:
	c.mv	a5,a4

l2302BB30:
	c.lw	a4,4(a4)
	c.j	000000002302BABE

l2302BB34:
	c.bnez	a5,000000002302BAD8

l2302BB36:
	csrrw	zero,mstatus,zero
	c.j	000000002302BA78

l2302BB3C:
	c.sub	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000002
	c.add	a5,a4
	c.j	000000002302BAF4

;; ble_ke_free: 2302BB4A
;;   Called from:
;;     2302B0F6 (in ecc_multiplication_event_handler)
;;     2302B100 (in ecc_multiplication_event_handler)
;;     2302B1A4 (in ecc_init)
;;     2302BDEE (in ble_ke_msg_free)
;;     2302BFDC (in ble_ke_timer_schedule)
;;     2302C198 (in ble_ke_timer_clear)
;;     2302C2D4 (in ble_ke_flush)
;;     2302CDD6 (in llc_stop)
;;     2302DB8A (in lld_evt_deferred_elt_pop)
;;     2302DC2C (in lld_evt_schedule)
;;     2302E01C (in lld_evt_init)
;;     2302E034 (in lld_evt_init)
;;     2302E03C (in lld_evt_init)
;;     2302E042 (in lld_evt_init)
;;     2302E050 (in lld_evt_init)
;;     2302E166 (in lld_evt_elt_delete)
;;     2302E16E (in lld_evt_elt_delete)
;;     2302E174 (in lld_evt_elt_delete)
;;     2302E17E (in lld_evt_elt_delete)
;;     2302E22C (in lld_evt_delete_elt_handler)
;;     2302EB24 (in lld_evt_canceled)
;;     2302EBFE (in lld_evt_schedule_next)
;;     2302FF10 (in lld_pdu_tx_flush_list)
;;     23030044 (in lld_pdu_check)
;;     2303008C (in lld_pdu_check)
;;     230300DC (in lld_pdu_check)
;;     23030588 (in lld_pdu_tx_prog)
;;     230307C8 (in lld_pdu_tx_flush)
;;     230307CE (in lld_pdu_tx_flush)
;;     23030E3A (in lld_util_flush_list)
;;     23031CFA (in lld_con_start)
;;     23031D00 (in lld_con_start)
;;     23031D0C (in lld_con_start)
;;     23032D1A (in llm_util_bl_rem)
;;     230341AE (in llm_init)
;;     230341B6 (in llm_init)
ble_ke_free proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BBDE

l2302BB6C:
	c.lui	a5,FFFFF000
	c.addi	a5,0000000F
	addi	s2,s0,-00000004
	sh	a5,s0,+00000FFC
	lhu	s1,s0,-00000002
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s4,00042026
	c.li	s3,00000000
	addi	s4,s4,+000002A4

l2302BB8E:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002302B97A
	c.beqz	a0,000000002302BBF4

l2302BB98:
	addi	a5,s3,+00000004
	c.slli	a5,02
	c.add	a5,s4
	c.lw	a5,8(a5)
	c.beqz	a5,000000002302BB8E

l2302BBA4:
	c.li	a4,00000000

l2302BBA6:
	c.beqz	a5,000000002302BBFA

l2302BBA8:
	lhu	a3,a5,+00000002
	add	a2,a3,a5
	bne	a2,s2,000000002302BC14

l2302BBB4:
	c.add	s1,a3
	c.slli	s1,10
	c.lw	a5,4(a4)
	c.srli	s1,00000010
	sh	s1,a5,+00000002
	add	a3,s1,a5
	bne	a4,a3,000000002302BBDA

l2302BBC8:
	lhu	a3,a4,+00000002
	c.add	s1,a3
	sh	s1,a5,+00000002
	c.lw	a4,4(a4)
	c.sw	a5,4(a4)
	c.beqz	a4,000000002302BBDA

l2302BBD8:
	c.sw	a4,8(a5)

l2302BBDA:
	csrrw	zero,mstatus,zero

l2302BBDE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302BBF0:
	c.li	s3,00000001
	c.j	000000002302BB8E

l2302BBF4:
	beq	s3,zero,000000002302BBF0

l2302BBF8:
	c.li	a4,00000000

l2302BBFA:
	c.lui	a5,FFFFA000
	sw	s2,a4,+00000004
	addi	a5,a5,+0000055A
	sw	zero,s0,+00000000
	c.sw	s0,4(a4)
	sh	s1,s0,+00000FFE
	sh	a5,s0,+00000FFC
	c.j	000000002302BBDA

l2302BC14:
	bgeu	s2,a5,000000002302BC4E

l2302BC18:
	sw	s2,a4,+00000004
	c.sw	s0,4(a4)
	c.lui	a4,FFFFA000
	addi	a4,a4,+0000055A
	sh	a4,s0,+00000FFC
	add	a4,s1,s2
	bne	a5,a4,000000002302BC46

l2302BC30:
	c.lw	a5,4(a4)
	c.sw	s0,0(a4)
	c.beqz	a4,000000002302BC3A

l2302BC36:
	sw	s2,a4,+00000008

l2302BC3A:
	lhu	a5,a5,+00000002
	c.add	s1,a5

l2302BC40:
	sh	s1,s0,+00000FFE
	c.j	000000002302BBDA

l2302BC46:
	c.sw	s0,0(a5)
	sw	s2,a5,+00000008
	c.j	000000002302BC40

l2302BC4E:
	c.mv	a4,a5
	c.lw	a5,4(a5)
	c.j	000000002302BBA6

;; ble_ke_is_free: 2302BC54
;;   Called from:
;;     23035296 (in ble_ke_task_schedule)
ble_ke_is_free proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302BC7A

l2302BC6E:
	lbu	a0,sp,+0000000F

l2302BC72:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302BC7A:
	lhu	a0,s0,-00000004
	c.lui	a5,FFFF8000
	addi	a5,a5,-00000338
	c.add	a0,a5
	sltu	a0,zero,a0
	c.j	000000002302BC72

;; ble_ke_msg_alloc: 2302BC8C
;;   Called from:
;;     2302B032 (in ecc_multiplication_event_handler)
;;     2302BDB0 (in ble_ke_msg_send_basic)
;;     2302CE5A (in llc_discon_event_complete_send)
;;     2302CEAC (in llc_le_con_cmp_evt_send)
;;     2302D006 (in llc_le_con_cmp_evt_send)
;;     2302D1C6 (in llc_le_ch_sel_algo_evt_send)
;;     2302D3DA (in llc_con_update_complete_send)
;;     2302D46C (in llc_ltk_req_send)
;;     2302D4D4 (in llc_feats_rd_event_send)
;;     2302D52E (in llc_version_rd_event_send)
;;     2302D586 (in llc_common_cmd_complete_send)
;;     2302D5B2 (in llc_common_cmd_status_send)
;;     2302D5D8 (in llc_common_flush_occurred_send)
;;     2302D604 (in llc_common_enc_key_ref_comp_evt_send)
;;     2302D67E (in llc_common_enc_change_evt_send)
;;     2302D6CE (in llc_common_nb_of_pkt_comp_evt_send)
;;     2302F334 (in lld_evt_move_to_slave)
;;     230309A4 (in lld_pdu_rx_handler)
;;     23030A52 (in lld_pdu_rx_handler)
;;     23030D9E (in lld_util_anchor_point_move)
;;     23032DB0 (in llm_end_evt_defer)
;;     2303326E (in llm_le_adv_report_ind)
;;     2303338C (in llm_le_adv_report_ind)
;;     230335F6 (in llm_common_cmd_complete_send)
;;     2303361C (in llm_common_cmd_status_send)
;;     230345F2 (in llm_encryption_done)
;;     23034638 (in llm_encryption_done)
;;     23035660 (in llcp_enc_rsp_handler)
;;     23035D22 (in fn23035CEA)
;;     23036608 (in llcp_length_rsp_handler)
;;     23036DF6 (in llcp_con_param_req_handler)
;;     23036E84 (in llcp_con_param_req_handler)
;;     23037468 (in llcp_length_req_handler)
;;     2303778E (in llc_auth_payl_real_to_ind_handler)
;;     23037A72 (in llc_task_random_gen_request)
;;     23038626 (in llm_ecc_result_ind_handler)
;;     23038680 (in llm_ecc_result_ind_handler)
;;     23038DE2 (in hci_le_ltk_req_reply_cmd_handler)
;;     230390EC (in hci_le_rd_chnl_map_cmd_handler)
;;     23039170 (in hci_rd_auth_payl_to_cmd_handler)
;;     230391D8 (in hci_rd_rssi_cmd_handler)
;;     23039250 (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     230393E8 (in hci_le_con_update_cmd_handler)
;;     230394A2 (in hci_wr_auth_payl_to_cmd_handler)
;;     23039568 (in hci_flush_cmd_handler)
;;     2303983A (in hci_le_rd_rfpath_compensation_cmd_handler)
;;     2303987A (in hci_le_rd_trans_pwr_cmd_handler)
;;     230398B0 (in hci_rd_buff_size_cmd_handler)
;;     230398E6 (in hci_rd_local_supp_feats_cmd_handler)
;;     2303992C (in hci_rd_local_supp_cmds_cmd_handler)
;;     23039972 (in hci_rd_local_ver_info_cmd_handler)
;;     230399BA (in hci_rd_bd_addr_cmd_handler)
;;     230399FE (in hci_le_rd_max_data_len_cmd_handler)
;;     23039A4E (in hci_le_rd_suggted_dft_data_len_cmd_handler)
;;     23039A8E (in hci_le_rd_supp_states_cmd_handler)
;;     23039AD0 (in hci_le_rd_wl_size_cmd_handler)
;;     23039AFE (in hci_le_rd_adv_ch_tx_pw_cmd_handler)
;;     23039B42 (in hci_le_rd_local_supp_feats_cmd_handler)
;;     23039B84 (in hci_le_rd_buff_size_cmd_handler)
;;     23039DB6 (in hci_le_rand_cmd_handler)
;;     2303A3AC (in hci_le_test_end_cmd_handler)
;;     23084892 (in bt_onchiphci_send)
;;     23084920 (in bt_onchiphci_send)
ble_ke_msg_alloc proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.mv	s0,a3
	c.mv	a4,a3
	c.swsp	zero,00000084
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002302BCC8

l2302BCB8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	a2,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302BCC8:
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,000000002302BA5A
	c.li	a5,FFFFFFFF
	c.sw	a0,0(a5)
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	sh	s3,a0,+00000004
	sh	s2,a0,+00000006
	sh	s1,a0,+00000008
	sh	s0,a0,+0000000A
	c.addi	a0,0000000C
	c.swsp	a0,00000084
	c.mv	a2,s0
	c.li	a1,00000000
	c.jalr	a5
	c.j	000000002302BCB8

;; ble_ke_msg_send: 2302BCFA
;;   Called from:
;;     23029F76 (in hci_send_2_host)
;;     2302A01C (in hci_send_2_controller)
;;     2302B16C (in ecc_multiplication_event_handler)
;;     2302BDBE (in ble_ke_msg_send_basic)
;;     2302F3AA (in lld_evt_move_to_slave)
;;     230309FA (in lld_pdu_rx_handler)
;;     23030A74 (in lld_pdu_rx_handler)
;;     23030E1E (in lld_util_anchor_point_move)
;;     23034656 (in llm_encryption_done)
;;     2303569A (in llcp_enc_rsp_handler)
;;     23035846 (in llc_llcp_reject_ind)
;;     23035CB2 (in fn23035C80)
;;     23036740 (in llcp_con_param_rsp_handler)
;;     23036E62 (in llcp_con_param_req_handler)
;;     23037AB2 (in llc_task_random_gen_request)
;;     23038C12 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038E14 (in hci_le_ltk_req_reply_cmd_handler)
;;     23039424 (in hci_le_con_update_cmd_handler)
ble_ke_msg_send proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BD3E

l2302BD14:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,00042026
	addi	a1,s0,-0000000C
	addi	a0,a0,+000002A4
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002302B838

l2302BD3E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_msg_get_sent_num: 2302BD48
;;   Called from:
;;     230331CC (in llm_le_adv_report_ind)
ble_ke_msg_get_sent_num proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	addi	a0,sp,+0000000E
	c.jalr	a5
	c.beqz	a0,000000002302BD6A

l2302BD5E:
	lhu	a0,sp,+0000000E

l2302BD62:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302BD6A:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,00042026
	addi	a0,a0,+000002A4
	jal	ra,000000002302A53C
	csrrw	zero,mstatus,zero
	c.j	000000002302BD62

;; ble_ke_msg_send_basic: 2302BD84
;;   Called from:
;;     2302BFD6 (in ble_ke_timer_schedule)
;;     2302E13A (in lld_evt_elt_delete)
;;     23032E54 (in llm_end_evt_defer)
;;     23035A22 (in llcp_pause_enc_req_handler)
;;     23035A90 (in llcp_start_enc_req_handler)
;;     23035BAA (in llcp_enc_req_handler)
;;     2303765A (in llm_enc_ind_handler)
;;     23037E08 (in llc_chnl_assess_timer_handler)
;;     23038140 (in llc_check_trafic_paused)
;;     2303848A (in llc_pdu_llcp_tx_ack_defer)
;;     23038A8E (in hci_le_set_data_len_cmd_handler)
;;     23039000 (in hci_le_start_enc_cmd_handler)
ble_ke_msg_send_basic proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BDC2

l2302BDA8:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	c.li	a3,00000000
	jal	ra,000000002302BC8C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302BCFA

l2302BDC2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_msg_free: 2302BDCE
;;   Called from:
;;     2302921E (in ble_controller_deinit)
;;     23029F12 (in hci_send_2_host)
;;     2302A02E (in hci_send_2_controller)
;;     2302C2DA (in ble_ke_flush)
;;     2302C2E0 (in ble_ke_flush)
;;     2302CDC8 (in llc_stop)
;;     23032B36 (in llm_util_adv_data_update)
;;     23032B50 (in llm_util_adv_data_update)
;;     23034190 (in llm_init)
;;     2303419E (in llm_init)
;;     230341A8 (in llm_init)
;;     23034616 (in llm_encryption_done)
;;     230352EC (in ble_ke_task_schedule)
;;     2303828C (in llc_util_clear_operation_ptr)
;;     2303A13E (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2303A246 (in hci_le_set_adv_data_cmd_handler)
ble_ke_msg_free proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BDF2

l2302BDE6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302BB4A

l2302BDF2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_cmp_abs_time: 2302BDFA
ble_cmp_abs_time proc
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
	c.beqz	a0,000000002302BE28

l2302BE1A:
	lbu	a0,sp,+0000000F

l2302BE1E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302BE28:
	c.lw	s1,8(a0)
	c.lw	s0,8(a5)
	c.sub	a0,a5
	c.srli	a0,00000016
	c.andi	a0,00000001
	c.j	000000002302BE1E

;; ble_cmp_timer_id: 2302BE34
ble_cmp_timer_id proc
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
	c.beqz	a0,000000002302BE62

l2302BE54:
	lbu	a0,sp,+0000000F

l2302BE58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302BE62:
	lhu	a4,s1,+00000004
	srli	a5,s0,00000010
	c.li	a0,00000000
	bne	a4,a5,000000002302BE58

l2302BE70:
	lhu	a0,s1,+00000006
	c.slli	s0,10
	c.srli	s0,00000010
	c.sub	a0,s0
	sltiu	a0,a0,+00000001
	c.j	000000002302BE58

;; ble_ke_time: 2302BE80
;;   Called from:
;;     2302BF1C (in ble_ke_time_past)
;;     2302C0B6 (in ble_ke_timer_set)
ble_ke_time proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002302BE9A

l2302BE92:
	c.lwsp	a2,00000044

l2302BE94:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302BE9A:
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2302BEA4:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002302BEA4

l2302BEAA:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+00000138
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000009
	c.j	000000002302BE94

;; ble_ke_time_cmp: 2302BEBA
;;   Called from:
;;     2302BF22 (in ble_ke_time_past)
ble_ke_time_cmp proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302BEE8

l2302BEDA:
	lbu	a0,sp,+0000000F

l2302BEDE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302BEE8:
	sub	a0,s0,s1
	c.srli	a0,00000016
	xori	a0,a0,+00000001
	c.andi	a0,00000001
	c.j	000000002302BEDE

;; ble_ke_time_past: 2302BEF6
;;   Called from:
;;     2302BFBA (in ble_ke_timer_schedule)
;;     2302BFEA (in ble_ke_timer_schedule)
;;     2302C0EC (in ble_ke_timer_set)
;;     2302C17E (in ble_ke_timer_clear)
ble_ke_time_past proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302BF1C

l2302BF10:
	lbu	a0,sp,+0000000F

l2302BF14:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302BF1C:
	jal	ra,000000002302BE80
	c.mv	a1,s0
	jal	ra,000000002302BEBA
	c.j	000000002302BF14

;; ble_ke_timer_hw_set: 2302BF28
;;   Called from:
;;     2302BFB2 (in ble_ke_timer_schedule)
;;     2302BFE4 (in ble_ke_timer_schedule)
;;     2302C0E6 (in ble_ke_timer_set)
;;     2302C176 (in ble_ke_timer_clear)
ble_ke_timer_hw_set proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BF62

l2302BF40:
	c.beqz	s0,000000002302BF6A

l2302BF42:
	c.lw	s0,8(a4)
	lui	a5,00028000
	sw	a4,a5,+000000F4
	c.lw	a5,12(a4)
	c.srli	a4,00000006
	c.andi	a4,00000001
	c.bnez	a4,000000002302BF62

l2302BF54:
	addi	a4,zero,+00000040
	c.sw	a5,24(a4)
	c.lw	a5,12(a4)
	ori	a4,a4,+00000040
	c.sw	a5,12(a4)

l2302BF62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302BF6A:
	lui	a4,00028000
	c.lw	a4,12(a5)
	andi	a5,a5,-00000041
	c.sw	a4,12(a5)
	c.j	000000002302BF62

;; ble_ke_timer_schedule: 2302BF78
ble_ke_timer_schedule proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302BFF0

l2302BF90:
	lui	s1,00042026
	addi	s1,s1,+000002A4
	lui	s2,00042026

l2302BF9C:
	c.li	a0,00000003
	jal	ra,000000002302B894
	c.lw	s1,16(s0)
	c.bnez	s0,000000002302BFB6

l2302BFA6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002302BF28

l2302BFB6:
	c.lw	s0,8(a0)
	c.addi	a0,FFFFFFFF
	jal	ra,000000002302BEF6
	c.beqz	a0,000000002302BFE2

l2302BFC0:
	addi	a0,s2,+000002B4
	jal	ra,000000002302A36A
	c.mv	s0,a0
	lhu	a1,a0,+00000006
	lhu	a0,a0,+00000004
	addi	a2,zero,+000000FF
	jal	ra,000000002302BD84
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.j	000000002302BF9C

l2302BFE2:
	c.mv	a0,s0
	jal	ra,000000002302BF28
	c.lw	s0,8(a0)
	jal	ra,000000002302BEF6
	c.bnez	a0,000000002302BFC0

l2302BFF0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_timer_init: 2302BFFC
;;   Called from:
;;     2302C28A (in ble_ke_init)
ble_ke_timer_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302C020

l2302C00E:
	c.lwsp	a2,00000020
	lui	a1,0002302C
	addi	a1,a1,-00000088
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002302B7EA

l2302C020:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_timer_set: 2302C026
;;   Called from:
;;     2302D2A6 (in llc_start)
;;     2302D2C8 (in llc_start)
;;     2302D65E (in llc_common_enc_change_evt_send)
;;     2302D66E (in llc_common_enc_change_evt_send)
;;     2302D79C (in llc_lsto_con_update)
;;     23035706 (in llcp_enc_rsp_handler)
;;     23035EE2 (in llc_llcp_pause_enc_req_pdu_send)
;;     23036068 (in llcp_pause_enc_rsp_handler)
;;     23036184 (in llc_llcp_enc_req_pdu_send)
;;     230363A6 (in llcp_start_enc_rsp_handler)
;;     23036F6E (in llcp_con_param_req_handler)
;;     230370FA (in llc_llcp_terminate_ind_pdu_send)
;;     2303776C (in llc_auth_payl_real_to_ind_handler)
;;     2303777C (in llc_auth_payl_real_to_ind_handler)
;;     23037A56 (in llc_length_req_ind_handler)
;;     23037C0E (in llc_enc_mgt_ind_handler)
;;     23037D16 (in llc_enc_mgt_ind_handler)
;;     23037DA8 (in llc_chnl_assess_timer_handler)
;;     23037E6C (in llc_link_sup_to_ind_handler)
;;     23037F1C (in llc_auth_payl_nearly_to_ind_handler)
;;     2303858E (in llc_pdu_defer)
;;     230385C0 (in llc_pdu_defer)
;;     230385D2 (in llc_pdu_defer)
;;     23038CB6 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038D50 (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     23039082 (in hci_le_rd_rem_used_feats_cmd_handler)
;;     23039518 (in hci_wr_auth_payl_to_cmd_handler)
;;     23039528 (in hci_wr_auth_payl_to_cmd_handler)
;;     2303964E (in hci_rd_rem_ver_info_cmd_handler)
;;     23039F2E (in hci_le_set_host_ch_class_cmd_handler)
ble_ke_timer_set proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
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
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302C110

l2302C052:
	lui	s4,00042026
	addi	a5,s4,+000002A4
	lui	a4,00000400
	c.lw	a5,16(a5)
	addi	s4,s4,+000002A4
	bgeu	s0,a4,000000002302C10A

l2302C068:
	c.bnez	s0,000000002302C06C

l2302C06A:
	c.li	s0,00000001

l2302C06C:
	c.li	s2,00000000
	c.beqz	a5,000000002302C084

l2302C070:
	lhu	a4,a5,+00000004
	bne	a4,s6,000000002302C084

l2302C078:
	lhu	s2,a5,+00000006
	sub	s2,s2,s5
	sltiu	s2,s2,+00000001

l2302C084:
	slli	a2,s6,00000010
	lui	a1,0002302C
	lui	s3,00042026
	or	a2,a2,s5
	addi	a1,a1,-000001CC
	addi	a0,s3,+000002B4
	jal	ra,000000002303501C
	c.mv	s1,a0
	c.bnez	a0,000000002302C0B6

l2302C0A4:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002302BA5A
	c.mv	s1,a0
	sh	s6,a0,+00000004
	sh	s5,a0,+00000006

l2302C0B6:
	jal	ra,000000002302BE80
	c.add	s0,a0
	slli	a5,s0,00000009
	c.srli	a5,00000009
	lui	a2,0002302C
	c.sw	s1,8(a5)
	addi	a2,a2,-00000206
	c.mv	a1,s1
	addi	a0,s3,+000002B4
	jal	ra,0000000023035086
	bne	s2,zero,000000002302C0E2

l2302C0DA:
	lw	a5,s4,+00000010
	bne	a5,s1,000000002302C0EA

l2302C0E2:
	lw	a0,s4,+00000010
	jal	ra,000000002302BF28

l2302C0EA:
	c.mv	a0,s0
	jal	ra,000000002302BEF6
	c.beqz	a0,000000002302C110

l2302C0F2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000003
	c.addi16sp	00000020
	jal	zero,000000002302B838

l2302C10A:
	addi	s0,a4,-00000001
	c.j	000000002302C06C

l2302C110:
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

;; ble_ke_timer_clear: 2302C124
;;   Called from:
;;     2302D6A6 (in llc_common_enc_change_evt_send)
;;     2302D6B0 (in llc_common_enc_change_evt_send)
;;     23035584 (in llcp_ping_rsp_handler)
;;     2303559E (in llcp_terminate_ind_handler)
;;     2303575E (in llc_llcp_reject_ind)
;;     23035796 (in llc_llcp_reject_ind)
;;     23035810 (in llc_llcp_reject_ind)
;;     230358B4 (in llc_llcp_reject_ind)
;;     230359C4 (in llcp_pause_enc_req_handler)
;;     23035B6A (in llcp_enc_req_handler)
;;     23035C6E (in fn23035C5E)
;;     23035C90 (in fn23035C80)
;;     23035CFA (in fn23035CEA)
;;     23035D80 (in fn23035D62)
;;     23035E3C (in llcp_vers_ind_handler)
;;     23035F9E (in llcp_pause_enc_rsp_handler)
;;     2303601A (in llcp_pause_enc_rsp_handler)
;;     23036380 (in llcp_start_enc_rsp_handler)
;;     230364F2 (in llcp_length_rsp_handler)
;;     230366BA (in llcp_con_param_rsp_handler)
;;     23036806 (in llcp_feats_rsp_handler)
;;     23036AF6 (in fn23036ADA)
;;     23036B22 (in fn23036ADA)
;;     2303805A (in fn23038048)
;;     23038064 (in fn23038048)
;;     2303806E (in fn23038048)
;;     23038078 (in fn23038048)
;;     230381F4 (in llc_util_dicon_procedure)
ble_ke_timer_clear proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302C1B8

l2302C146:
	lui	s2,00042026
	addi	s2,s2,+000002A4
	lw	s0,s2,+00000010
	c.beqz	s0,000000002302C1B8

l2302C154:
	lhu	a5,s0,+00000004
	lui	a0,00042026
	bne	a5,s1,000000002302C19C

l2302C160:
	lhu	a5,s0,+00000006
	bne	a5,s3,000000002302C19C

l2302C168:
	addi	a0,a0,+000002B4
	jal	ra,000000002302A36A
	lw	s1,s2,+00000010
	c.mv	a0,s1
	jal	ra,000000002302BF28
	c.beqz	s1,000000002302C18A

l2302C17C:
	c.lw	s1,8(a0)
	jal	ra,000000002302BEF6
	c.beqz	a0,000000002302C18A

l2302C184:
	c.li	a0,00000003
	jal	ra,000000002302B838

l2302C18A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002302BB4A

l2302C19C:
	slli	a2,s1,00000010
	lui	a1,0002302C
	or	a2,a2,s3
	addi	a1,a1,-000001CC
	addi	a0,a0,+000002B4
	jal	ra,000000002303501C
	c.mv	s0,a0
	c.bnez	a0,000000002302C18A

l2302C1B8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; ble_ke_timer_active: 2302C1C6
;;   Called from:
;;     23037EE0 (in llc_auth_payl_nearly_to_ind_handler)
ble_ke_timer_active proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002302C1F4

l2302C1E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302C1F4:
	lui	a5,00042026
	lw	a5,a5,+000002B4

l2302C1FC:
	c.bnez	a5,000000002302C204

l2302C1FE:
	sb	zero,sp,+0000000F
	c.j	000000002302C1E6

l2302C204:
	lhu	a4,a5,+00000004
	bne	a4,s0,000000002302C214

l2302C20C:
	lhu	a4,a5,+00000006
	beq	a4,s1,000000002302C218

l2302C214:
	c.lw	a5,0(a5)
	c.j	000000002302C1FC

l2302C218:
	c.li	a5,00000001
	sb	a5,sp,+0000000F
	c.j	000000002302C1E6

;; ble_ke_init: 2302C220
;;   Called from:
;;     2302A18C (in rwip_init)
ble_ke_init proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302C28E

l2302C234:
	lui	s0,0004200F
	lw	a5,s0,+000003D4
	lui	a0,00042026
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,a0,+000002BC
	c.jalr	a5
	lw	a5,s0,+000003D4
	lui	a0,00042026
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,a0,+000002C4
	c.jalr	a5
	jal	ra,000000002302B7B6
	lui	a5,00042026
	addi	a5,a5,+000002A4
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000000
	sw	zero,a5,+00000004
	sw	zero,a5,+00000010
	sw	zero,a5,+00000014
	jal	ra,0000000023035302
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302BFFC

l2302C28E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_flush: 2302C296
;;   Called from:
;;     2302A122 (in rwip_reset)
ble_ke_flush proc
	lui	a5,0004200F
	lw	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002302C2F0

l2302C2AA:
	lui	s0,00042026

l2302C2AE:
	addi	a0,s0,+000002A4
	jal	ra,000000002302A36A
	c.bnez	a0,000000002302C2DA

l2302C2B8:
	lui	s0,00042026

l2302C2BC:
	addi	a0,s0,+000002AC
	jal	ra,000000002302A36A
	c.bnez	a0,000000002302C2E0

l2302C2C6:
	lui	s0,00042026

l2302C2CA:
	addi	a0,s0,+000002B4
	jal	ra,000000002302A36A
	c.beqz	a0,000000002302C2E6

l2302C2D4:
	jal	ra,000000002302BB4A
	c.j	000000002302C2CA

l2302C2DA:
	jal	ra,000000002302BDCE
	c.j	000000002302C2AE

l2302C2E0:
	jal	ra,000000002302BDCE
	c.j	000000002302C2BC

l2302C2E6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302B8DE

l2302C2F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_force_agc_enable: 2302C2F8
rf_force_agc_enable proc
	c.jr	ra

;; rf_txpwr_dbm_get: 2302C2FA
rf_txpwr_dbm_get proc
	lui	a5,0004200F
	lbu	a0,a5,-000004C0
	c.jr	ra

;; rf_rssi_convert: 2302C304
rf_rssi_convert proc
	c.li	a5,00000002
	sub	a0,a5,a0
	c.slli	a0,18
	c.srai	a0,00000018
	c.jr	ra

;; rf_reg_rd: 2302C310
rf_reg_rd proc
	c.li	a0,00000000
	c.jr	ra

;; rf_reg_wr: 2302C314
rf_reg_wr proc
	c.jr	ra

;; rf_sleep: 2302C316
rf_sleep proc
	lui	a4,00028000
	c.lw	a4,48(a5)
	ori	a5,a5,+00000007
	c.sw	a4,48(a5)
	c.jr	ra

;; rf_txpwr_dec: 2302C324
rf_txpwr_dec proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,-000004C0
	lb	a4,s0,+00000000
	lui	a5,0004200F
	c.swsp	s1,00000080
	c.sub	a4,a0
	c.mv	s1,a0
	lb	a0,a5,+000003EA
	c.swsp	ra,00000084
	c.add	a0,a4
	jal	ra,0000000023003916
	c.beqz	a0,000000002302C356

l2302C34C:
	lbu	a5,s0,+00000000
	c.sub	a5,s1
	sb	a5,s0,+00000000

l2302C356:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; rf_txpwr_inc: 2302C360
rf_txpwr_inc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,-000004C0
	lb	a5,s0,+00000000
	lui	a4,0004200F
	c.swsp	s1,00000080
	c.add	a5,a0
	c.mv	s1,a0
	lb	a0,a4,+000003EA
	c.swsp	ra,00000084
	c.add	a0,a5
	jal	ra,0000000023003916
	c.beqz	a0,000000002302C392

l2302C388:
	lbu	a5,s0,+00000000
	c.add	s1,a5
	sb	s1,s0,+00000000

l2302C392:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; rf_txpwr_max_set: 2302C39C
;;   Called from:
;;     2302C464 (in rf_reset)
rf_txpwr_max_set proc
	lui	a5,0004200F
	lb	a3,a5,-000004C0
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a4,zero,+0000007F
	addi	a5,a5,-000004C0
	bne	a3,a4,000000002302C3B8

l2302C3B6:
	c.li	a0,0000000F

l2302C3B8:
	lui	s0,0004200F
	addi	s0,s0,+000003EA
	sb	a0,a5,+00000000
	lb	a5,s0,+00000000
	c.add	a0,a5
	jal	ra,0000000023003916
	c.bnez	a0,000000002302C3E0

l2302C3D0:
	lb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000F
	c.addi	sp,00000010
	jal	zero,0000000023003916

l2302C3E0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_reset: 2302C3E8
rf_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00028000
	lw	a4,a5,+00000080
	c.lui	a3,FFFF0000
	addi	a3,a3,+000000FF
	andi	a4,a4,-00000100
	ori	a4,a4,+00000042
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	c.and	a4,a3
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	lui	a3,000FF010
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	lui	a3,000003C0
	c.or	a4,a3
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	lui	a3,00081000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	sw	a4,a5,+00000080
	c.li	a4,0000000A
	sw	a4,a5,+000001A4
	addi	a4,zero,+0000007D
	sw	a4,a5,+000001A8
	lw	a4,a5,+000001AC
	andi	a4,a4,-00000040
	ori	a4,a4,+00000028
	sw	a4,a5,+000001AC
	jal	ra,00000000230025A6
	lui	a5,0004200F
	c.lwsp	a2,00000020
	lb	a0,a5,-000004C0
	c.addi	sp,00000010
	jal	zero,000000002302C39C

;; ble_rf_set_pwr_offset: 2302C468
;;   Called from:
;;     2306928E (in hal_board_cfg)
ble_rf_set_pwr_offset proc
	lui	a5,0004200F
	sb	a0,a5,+000003EA
	c.jr	ra

;; ble_controller_set_tx_pwr: 2302C472
;;   Called from:
;;     23069508 (in hal_board_cfg)
ble_controller_set_tx_pwr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.slli	a0,18
	lui	s0,0004200F
	c.srai	a0,00000018
	lui	a5,0004200F
	addi	s0,s0,+000003EA
	sb	a0,a5,+00000B40
	lb	a5,s0,+00000000
	c.swsp	ra,00000084
	c.add	a0,a5
	jal	ra,0000000023003916
	c.bnez	a0,000000002302C4A8

l2302C498:
	lb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000F
	c.addi	sp,00000010
	jal	zero,0000000023003916

l2302C4A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_rf_init: 2302C4B0
;;   Called from:
;;     2302A1BE (in rwip_init)
ble_rf_init proc
	lui	a5,0002302C
	addi	a5,a5,+00000310
	c.sw	a0,32(a5)
	lui	a5,0002302C
	addi	a5,a5,+00000314
	c.sw	a0,36(a5)
	lui	a5,0002302C
	addi	a5,a5,+000002FA
	c.sw	a0,20(a5)
	c.li	a5,0000000F
	sb	a5,a0,+0000002C
	lui	a5,0002302C
	addi	a5,a5,+0000039C
	c.sw	a0,16(a5)
	lui	a5,0002302C
	addi	a5,a5,+00000360
	c.sw	a0,12(a5)
	lui	a5,0002302C
	addi	a5,a5,+00000324
	c.sw	a0,8(a5)
	lui	a5,0002302C
	addi	a5,a5,+00000316
	c.sw	a0,40(a5)
	lui	a5,0002302C
	addi	a5,a5,+000003E8
	c.sw	a0,0(a5)
	lui	a5,0002302C
	addi	a5,a5,+000002F8
	c.sw	a0,4(a5)
	lui	a5,0002302C
	addi	a5,a5,+00000304
	c.sw	a0,28(a5)
	c.jr	ra

;; pka0_write_common_op_first_cfg: 2302C51C
;;   Called from:
;;     2302C812 (in sec_eng_pka0_movdat)
;;     2302C85A (in sec_eng_pka0_msub)
;;     2302C892 (in sec_eng_pka0_mrem)
;;     2302C8F0 (in sec_eng_pka0_mmul)
;;     2302C930 (in sec_eng_pka0_mexp)
;;     2302C966 (in sec_eng_pka0_lcmp)
;;     2302C9B0 (in sec_eng_pka0_lsub)
;;     2302C9DE (in sec_eng_pka0_lmul)
;;     2302CA26 (in sec_eng_pka0_lmul2n)
pka0_write_common_op_first_cfg proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a4
	lui	a4,0004200F
	lw	a4,a4,+000003D4
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.swsp	ra,0000009C
	c.mv	s2,a2
	c.addi4spn	a0,0000001C
	c.li	a2,00000004
	c.swsp	a5,00000004
	c.swsp	a3,00000084
	c.jalr	a4
	sb	s3,sp,+0000001C
	c.lwsp	t3,00000064
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.andi	s1,0000000F
	c.and	a1,a4
	c.slli	s1,08
	c.or	a1,s1
	c.swsp	a1,0000008C
	c.li	a4,00000019
	c.lwsp	s0,000000E4
	beq	s0,a4,000000002302C582

l2302C562:
	lui	a4,000FFF01
	c.lwsp	a2,000000A4
	c.addi	a4,FFFFFFFF
	c.and	a1,a4
	c.slli	s2,0C
	lui	a4,000FF100
	or	a1,a1,s2
	c.andi	a3,0000000F
	c.addi	a4,FFFFFFFF
	c.slli	a3,14
	c.and	a1,a4
	c.or	a1,a3
	c.swsp	a1,0000008C

l2302C582:
	c.lwsp	t3,000000C4
	lui	a3,00081000
	andi	s0,s0,+0000007F
	c.addi	a3,FFFFFFFF
	c.slli	s0,18
	c.and	a4,a3
	c.or	a4,s0
	c.slli	a4,01
	c.slli	a5,1F
	c.srli	a4,00000001
	c.or	a4,a5
	lui	a5,00040004
	sw	a4,a5,+00000340
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; pka0_write_common_op_snd_cfg_S1: 2302C5B2
;;   Called from:
;;     2302C96E (in sec_eng_pka0_lcmp)
;;     2302C9C0 (in sec_eng_pka0_lsub)
;;     2302C9EE (in sec_eng_pka0_lmul)
pka0_write_common_op_snd_cfg_S1 proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,0000000C
	c.li	a1,00000000
	c.li	a2,00000004
	c.jalr	a5
	c.lwsp	a2,00000064
	lui	a5,000FFF01
	c.addi	a5,FFFFFFFF
	c.slli	s1,0C
	c.and	a1,a5
	lui	a5,000FF100
	c.or	a1,s1
	c.addi	a5,FFFFFFFF
	c.andi	s0,0000000F
	c.slli	s0,14
	c.and	a1,a5
	c.or	a1,s0
	lui	a5,00040004
	sw	a1,a5,+00000340
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; pka0_write_common_op_snd_cfg_S1_S2: 2302C5FC
;;   Called from:
;;     2302C872 (in sec_eng_pka0_msub)
;;     2302C908 (in sec_eng_pka0_mmul)
;;     2302C948 (in sec_eng_pka0_mexp)
pka0_write_common_op_snd_cfg_S1_S2 proc
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s2,a2
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,0000001C
	c.li	a1,00000000
	c.li	a2,00000004
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	t3,00000064
	lui	a5,000FFF01
	c.addi	a5,FFFFFFFF
	c.slli	s1,0C
	c.and	a1,a5
	lui	a5,000FF100
	c.or	a1,s1
	c.addi	a5,FFFFFFFF
	c.andi	s0,0000000F
	c.lwsp	a2,000000A4
	c.slli	s0,14
	c.and	a1,a5
	c.or	a1,s0
	c.swsp	a1,0000008C
	sb	s2,sp,+0000001C
	c.andi	a3,0000000F
	slli	a5,a3,00000008
	c.lwsp	t3,000000A4
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.and	a3,a4
	c.or	a3,a5
	lui	a5,00040004
	sw	a3,a5,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; sec_eng_pka0_reset: 2302C668
;;   Called from:
;;     2302B1EE (in ecc_generate_key256)
sec_eng_pka0_reset proc
	lui	a5,00040004
	sw	zero,a5,+00000300
	c.li	a4,00000008
	sw	a4,a5,+00000300
	c.jr	ra

;; sec_eng_pka0_clear_int: 2302C678
;;   Called from:
;;     2302A8B0 (in pka_point_addition.constprop.3)
;;     2302AC86 (in pka_point_double.constprop.2)
;;     2302B098 (in ecc_multiplication_event_handler)
;;     2302C774 (in sec_eng_pka0_read_data)
;;     2302C7F6 (in sec_eng_pka0_clir)
;;     2302C82A (in sec_eng_pka0_movdat)
;;     2302C976 (in sec_eng_pka0_lcmp)
sec_eng_pka0_clear_int proc
	lui	a5,00040004
	lw	a4,a5,+00000300
	ori	a4,a4,+00000200
	sw	a4,a5,+00000300
	lw	a4,a5,+00000300
	andi	a4,a4,-00000201
	sw	a4,a5,+00000300
	c.jr	ra

;; sec_eng_pka0_pld: 2302C696
;;   Called from:
;;     2302A5D0 (in Mont2GF)
;;     2302AA18 (in GF2Mont.constprop.8)
;;     2302AA2A (in GF2Mont.constprop.8)
;;     2302ACB4 (in pka_addition_win.constprop.1)
;;     2302ACC8 (in pka_addition_win.constprop.1)
;;     2302ACDC (in pka_addition_win.constprop.1)
;;     2302ACEE (in pka_addition_win.constprop.1)
;;     2302AD02 (in pka_addition_win.constprop.1)
;;     2302AD16 (in pka_addition_win.constprop.1)
;;     2302AE4C (in ecc_multiplication_event_handler)
;;     2302AE60 (in ecc_multiplication_event_handler)
;;     2302AE74 (in ecc_multiplication_event_handler)
;;     2302B068 (in ecc_multiplication_event_handler)
;;     2302B49C (in ecc_generate_key256)
;;     2302B4B4 (in ecc_generate_key256)
;;     2302B4C6 (in ecc_generate_key256)
;;     2302B4D8 (in ecc_generate_key256)
;;     2302B4EA (in ecc_generate_key256)
;;     2302B4FC (in ecc_generate_key256)
;;     2302B50E (in ecc_generate_key256)
;;     2302B520 (in ecc_generate_key256)
;;     2302B532 (in ecc_generate_key256)
;;     2302B54A (in ecc_generate_key256)
;;     2302B562 (in ecc_generate_key256)
;;     2302B57A (in ecc_generate_key256)
;;     2302B592 (in ecc_generate_key256)
;;     2302B5AA (in ecc_generate_key256)
;;     2302B5C2 (in ecc_generate_key256)
sec_eng_pka0_pld proc
	slli	a6,a0,00000014
	c.slli	a2,0C
	srli	a6,a6,00000014
	c.andi	a3,0000000F
	c.slli	a3,14
	or	a6,a6,a2
	andi	a4,a4,+0000007F
	c.slli	a4,18
	or	a6,a6,a3
	c.slli	a5,1F
	or	a6,a6,a4
	or	a6,a6,a5
	lui	a5,00040004
	sw	a6,a5,+00000340
	c.li	a4,00000000
	andi	a6,a0,+00000007
	addi	a7,a5,+00000340
	addi	a3,a5,+00000360

l2302C6D2:
	blt	a4,a0,000000002302C6D8

l2302C6D6:
	c.jr	ra

l2302C6D8:
	slli	a2,a4,00000002
	andi	a5,a4,+00000007
	c.add	a2,a1
	c.slli	a5,02
	c.lw	a2,0(a2)
	bne	a6,zero,000000002302C6F2

l2302C6EA:
	c.add	a5,a3

l2302C6EC:
	c.sw	a5,0(a2)
	c.addi	a4,00000001
	c.j	000000002302C6D2

l2302C6F2:
	c.add	a5,a7
	c.j	000000002302C6EC

;; sec_eng_pka0_wait_4_isr: 2302C6F6
;;   Called from:
;;     2302A89C (in pka_point_addition.constprop.3)
;;     2302AC82 (in pka_point_double.constprop.2)
;;     2302B094 (in ecc_multiplication_event_handler)
;;     2302C76E (in sec_eng_pka0_read_data)
;;     2302C7EE (in sec_eng_pka0_clir)
;;     2302C820 (in sec_eng_pka0_movdat)
;;     2302C972 (in sec_eng_pka0_lcmp)
sec_eng_pka0_wait_4_isr proc
	lui	a5,00040004
	lw	a5,a5,+00000300
	lui	a4,00040004

l2302C702:
	andi	a5,a5,+00000100
	c.beqz	a5,000000002302C70A

l2302C708:
	c.jr	ra

l2302C70A:
	lw	a5,a4,+00000300
	c.j	000000002302C702

;; sec_eng_pka0_read_data: 2302C710
;;   Called from:
;;     2302A8C6 (in pka_read_result.constprop.4)
;;     2302A8DA (in pka_read_result.constprop.4)
;;     2302A8F6 (in pka_read_result.constprop.4)
;;     2302AA5A (in GF2Mont.constprop.8)
;;     2302B0DA (in ecc_multiplication_event_handler)
;;     2302B0E6 (in ecc_multiplication_event_handler)
sec_eng_pka0_read_data proc
	addi	a5,a0,-00000001
	andi	a5,a5,+000000FF
	c.li	a6,00000009
	c.li	a4,00000000
	bltu	a6,a5,000000002302C730

l2302C720:
	lui	a4,000230B5
	addi	a4,a4,+000007D0
	c.slli	a5,01
	c.add	a5,a4
	lhu	a4,a5,+00000000

l2302C730:
	andi	a4,a4,+000000FF
	bltu	a4,a3,000000002302C7C4

l2302C738:
	c.slli	a1,0C
	c.andi	a0,0000000F
	c.slli	a0,14
	c.or	a1,a3
	c.addi16sp	FFFFFFD0
	c.or	a1,a0
	lui	a5,000B8000
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s2,00040004
	c.or	a1,a5
	sw	a1,s2,+00000340
	c.mv	s0,a3
	sw	zero,s2,+00000340
	c.mv	s1,a2
	addi	s5,s2,+00000340
	jal	ra,000000002302C6F6
	c.li	s3,00000000
	jal	ra,000000002302C678
	andi	s4,s0,+00000007
	c.swsp	zero,00000084
	addi	s2,s2,+00000360
	lui	s6,0004200F

l2302C786:
	blt	s3,s0,000000002302C79E

l2302C78A:
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

l2302C79E:
	andi	a0,s3,+00000007
	c.slli	a0,02
	add	a5,a0,s2
	beq	s4,zero,000000002302C7B0

l2302C7AC:
	add	a5,a0,s5

l2302C7B0:
	c.lw	a5,0(a5)
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.swsp	a5,00000084
	lw	a5,s6,+000003D0
	c.add	a0,s1
	c.addi	s3,00000001
	c.jalr	a5
	c.j	000000002302C786

l2302C7C4:
	c.jr	ra

;; sec_eng_pka0_clir: 2302C7C6
;;   Called from:
;;     2302A5DC (in Mont2GF)
;;     2302A5E8 (in Mont2GF)
;;     2302A61E (in Mont2GF)
;;     2302A632 (in getFinalPoint)
;;     2302A63E (in getFinalPoint)
;;     2302A674 (in getFinalPoint)
;;     2302AA6E (in GF2Mont.constprop.8)
sec_eng_pka0_clir proc
	c.slli	a2,0C
	c.andi	a1,0000000F
	c.slli	a1,14
	c.or	a3,a2
	c.or	a3,a1
	lui	a2,00035000
	sltu	a0,zero,a0
	c.addi	sp,FFFFFFF0
	c.slli	a0,1F
	c.or	a3,a2
	c.swsp	ra,00000084
	lui	a5,00040004
	c.or	a3,a0
	sw	a3,a5,+00000340
	sw	zero,a5,+00000340
	jal	ra,000000002302C6F6
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302C678

;; sec_eng_pka0_movdat: 2302C7FA
;;   Called from:
;;     2302A910 (in pka_cp_x2_to_x1.constprop.5)
;;     2302A92A (in pka_cp_x2_to_x1.constprop.5)
;;     2302A94C (in pka_cp_x2_to_x1.constprop.5)
sec_eng_pka0_movdat proc
	c.addi	sp,FFFFFFF0
	c.mv	a6,a3
	c.swsp	s0,00000004
	c.mv	s0,a0
	sltu	a5,zero,s0
	c.mv	a0,a4
	c.mv	a3,a1
	addi	a4,zero,+00000032
	c.mv	a1,a6
	c.swsp	ra,00000084
	jal	ra,000000002302C51C
	lui	a5,00040004
	sw	zero,a5,+00000340
	c.beqz	s0,000000002302C82E

l2302C820:
	jal	ra,000000002302C6F6
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302C678

l2302C82E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sec_eng_pka0_msub: 2302C836
;;   Called from:
;;     2302A716 (in pka_point_addition.constprop.3)
;;     2302A72C (in pka_point_addition.constprop.3)
;;     2302A7B0 (in pka_point_addition.constprop.3)
;;     2302A7F2 (in pka_point_addition.constprop.3)
;;     2302A866 (in pka_point_addition.constprop.3)
;;     2302A898 (in pka_point_addition.constprop.3)
;;     2302AAD4 (in pka_point_double.constprop.2)
;;     2302AB76 (in pka_point_double.constprop.2)
;;     2302ABE4 (in pka_point_double.constprop.2)
;;     2302AC52 (in pka_point_double.constprop.2)
sec_eng_pka0_msub proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000027
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002302C51C
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002302C5FC

;; sec_eng_pka0_mrem: 2302C876
;;   Called from:
;;     2302A60C (in Mont2GF)
;;     2302A662 (in getFinalPoint)
;;     2302AA4E (in GF2Mont.constprop.8)
sec_eng_pka0_mrem proc
	c.addi16sp	FFFFFFD0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,00000014
	addi	a4,zero,+00000026
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.mv	a0,a7
	c.swsp	ra,00000094
	c.swsp	a6,00000084
	jal	ra,000000002302C51C
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.addi4spn	a0,0000001C
	c.li	a2,00000004
	c.li	a1,00000000
	c.jalr	a5
	c.lwsp	a2,00000008
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	sb	a6,sp,+0000001C
	c.lwsp	t3,000000E4
	c.andi	s0,0000000F
	c.slli	s0,08
	c.and	a5,a4
	c.or	a5,s0
	lui	a4,00040004
	sw	a5,a4,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; sec_eng_pka0_mmul: 2302C8CC
;;   Called from:
;;     2302A6BA (in pka_point_addition.constprop.3)
;;     2302A6D4 (in pka_point_addition.constprop.3)
;;     2302A6EA (in pka_point_addition.constprop.3)
;;     2302A700 (in pka_point_addition.constprop.3)
;;     2302A742 (in pka_point_addition.constprop.3)
;;     2302A758 (in pka_point_addition.constprop.3)
;;     2302A76E (in pka_point_addition.constprop.3)
;;     2302A784 (in pka_point_addition.constprop.3)
;;     2302A79A (in pka_point_addition.constprop.3)
;;     2302A7C6 (in pka_point_addition.constprop.3)
;;     2302A7DC (in pka_point_addition.constprop.3)
;;     2302A808 (in pka_point_addition.constprop.3)
;;     2302A81E (in pka_point_addition.constprop.3)
;;     2302A83A (in pka_point_addition.constprop.3)
;;     2302A850 (in pka_point_addition.constprop.3)
;;     2302A87C (in pka_point_addition.constprop.3)
;;     2302AAA8 (in pka_point_double.constprop.2)
;;     2302AABE (in pka_point_double.constprop.2)
;;     2302AAF2 (in pka_point_double.constprop.2)
;;     2302AB08 (in pka_point_double.constprop.2)
;;     2302AB1E (in pka_point_double.constprop.2)
;;     2302AB34 (in pka_point_double.constprop.2)
;;     2302AB4A (in pka_point_double.constprop.2)
;;     2302AB60 (in pka_point_double.constprop.2)
;;     2302AB8C (in pka_point_double.constprop.2)
;;     2302ABA2 (in pka_point_double.constprop.2)
;;     2302ABB8 (in pka_point_double.constprop.2)
;;     2302ABCE (in pka_point_double.constprop.2)
;;     2302ABFA (in pka_point_double.constprop.2)
;;     2302AC10 (in pka_point_double.constprop.2)
;;     2302AC26 (in pka_point_double.constprop.2)
;;     2302AC3C (in pka_point_double.constprop.2)
;;     2302AC68 (in pka_point_double.constprop.2)
;;     2302AC7E (in pka_point_double.constprop.2)
sec_eng_pka0_mmul proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000025
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002302C51C
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002302C5FC

;; sec_eng_pka0_mexp: 2302C90C
;;   Called from:
;;     2302B090 (in ecc_multiplication_event_handler)
sec_eng_pka0_mexp proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000023
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002302C51C
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002302C5FC

;; sec_eng_pka0_lcmp: 2302C94C
;;   Called from:
;;     2302A978 (in pka_point_inf_check.constprop.7)
;;     2302A98C (in pka_point_inf_check.constprop.7)
;;     2302A9A0 (in pka_point_inf_check.constprop.7)
;;     2302A9BE (in pka_point_inf_check.constprop.7)
sec_eng_pka0_lcmp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s2,a3
	c.mv	a0,a2
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	s1,a4
	c.li	a4,00000019
	c.swsp	ra,00000084
	jal	ra,000000002302C51C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C5B2
	jal	ra,000000002302C6F6
	jal	ra,000000002302C678
	lui	a5,00040004
	lw	a5,a5,+00000300
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.srli	a5,00000018
	c.andi	a5,00000001
	sb	a5,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sec_eng_pka0_lsub: 2302C996
;;   Called from:
;;     2302B07A (in ecc_multiplication_event_handler)
sec_eng_pka0_lsub proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,0000000C
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.li	a4,00000017
	c.mv	a0,a7
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	jal	ra,000000002302C51C
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002302C5B2

;; sec_eng_pka0_lmul: 2302C9C4
;;   Called from:
;;     2302A5FA (in Mont2GF)
;;     2302A650 (in getFinalPoint)
sec_eng_pka0_lmul proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,0000000C
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.li	a4,00000016
	c.mv	a0,a7
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	jal	ra,000000002302C51C
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002302C5B2

;; sec_eng_pka0_lmul2n: 2302C9F2
;;   Called from:
;;     2302AA3C (in GF2Mont.constprop.8)
sec_eng_pka0_lmul2n proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a5
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a2
	c.mv	s4,a1
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.mv	s2,a3
	c.mv	s1,a4
	c.jalr	a5
	c.mv	a3,s4
	c.li	a5,00000000
	c.li	a4,00000013
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302C51C
	c.lwsp	a2,000000E4
	slli	a4,s0,00000011
	c.lui	a3,FFFF8000
	c.srli	a4,00000011
	c.and	a5,a3
	c.or	a5,a4
	lui	a4,00040004
	sw	a5,a4,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; em_buf_init: 2302CA50
;;   Called from:
;;     23029228 (in rwble_init)
;;     23029282 (in rwble_reset)
em_buf_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042026
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	s0,s2,+000002C8
	addi	a0,s2,+000002C8
	sb	zero,s0,+0000015C
	lui	s3,00042026
	jal	ra,000000002302A2D6
	addi	a0,s3,+000002D0
	jal	ra,000000002302A2D6
	lui	a5,00028008
	addi	a4,a5,+000002CA
	sw	a4,s0,+00000158
	addi	s5,s2,+000002C8
	addi	a3,s2,+000002C8
	addi	a5,a5,+000002CE
	c.li	s1,00000000
	addi	s4,s2,+000002C8
	addi	a0,zero,+00000026
	c.lui	a1,FFFF8000
	c.li	a2,00000006

l2302CAAA:
	slli	a4,s1,00000010
	c.srli	a4,00000010
	sh	a4,a3,+00000014
	add	a4,a4,a0
	c.addi	s1,00000001
	c.addi	a3,0000000C
	c.addi	a5,0000000A
	addi	a4,a4,+0000043E
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF6
	sh	zero,a5,+00000FFA
	sh	zero,a5,+00000FF8
	lhu	a4,a5,-0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF4
	lhu	a4,a5,-0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF4
	sh	a1,a5,+00000FF2
	bne	s1,a2,000000002302CAAA

l2302CB02:
	lui	s0,00028008
	addi	s0,s0,+0000030A
	c.lui	s7,FFFF8000
	c.li	s6,0000001A

l2302CB0E:
	sh	s1,s5,+0000005C
	sh	zero,s0,+00000000
	sh	zero,s0,+00000004
	sh	zero,s0,+00000002
	lhu	a5,s0,-00000002
	addi	a1,s5,+00000058
	addi	a0,s2,+000002C8
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000FFE
	lhu	a5,s0,-00000002
	c.addi	s1,00000001
	c.addi	s5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000FFE
	sh	s7,s0,+00000FFC
	jal	ra,000000002302A2FE
	c.addi	s0,0000000A
	bne	s1,s6,000000002302CB0E

l2302CB60:
	lui	a1,00042026
	lui	a5,00005220
	addi	a1,a1,+00000410
	addi	a0,s3,+000002D0
	sw	a5,s4,+0000014C
	jal	ra,000000002302A2FE
	lui	a5,00006260
	lui	a1,00042026
	c.addi	a5,00000001
	addi	a1,a1,+00000418
	addi	a0,s3,+000002D0
	sw	a5,s4,+00000154
	jal	ra,000000002302A2FE
	lui	a5,00028008
	addi	a5,a5,+000003D6
	c.li	a3,00000000
	addi	a0,zero,+00000104
	c.li	a1,0000000E
	c.li	a2,00000008

l2302CBA4:
	c.addi	a3,00000001
	add	a4,a3,a0
	c.addi	a5,0000000E
	addi	a4,a4,+00000626
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF2
	andi	a4,a3,+00000007
	add	a4,a4,a1
	addi	a4,a4,+000003CE
	sh	a4,a5,+00000FEA
	sh	zero,a5,+00000FF6
	lhu	a4,a5,-00000012
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FEE
	lhu	a4,a5,-00000012
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FEE
	bne	a3,a2,000000002302CBA4

l2302CBF8:
	lui	a4,00028008
	c.lui	a2,FFFFC000
	addi	a5,a4,+0000009E
	c.addi	a2,FFFFFFFF
	addi	a3,a4,+0000020E

l2302CC08:
	lhu	a4,a5,+00000000
	addi	a5,a5,+0000005C
	c.and	a4,a2
	sh	a4,a5,+00000FA4
	lhu	a4,a5,-0000004A
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000301
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FB6
	sh	zero,a5,+00000FEE
	bne	a5,a3,000000002302CC08

l2302CC32:
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

;; em_buf_rx_free: 2302CC48
;;   Called from:
;;     23030A02 (in lld_pdu_rx_handler)
;;     23030A90 (in lld_pdu_rx_handler)
;;     23032E94 (in llm_pdu_defer)
;;     23037F42 (in llc_data_ind_handler)
;;     23037F6C (in llc_data_ind_handler)
;;     230849AE (in bt_onchiphci_hanlde_rx_acl)
em_buf_rx_free proc
	c.li	a5,0000000E
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+000003CE
	c.add	a0,a5
	lhu	a5,a0,+00000000
	c.slli	a5,11
	c.srli	a5,00000011
	sh	a5,a0,+00000000
	c.jr	ra

;; em_buf_rx_buff_addr_get: 2302CC66
;;   Called from:
;;     23034FDE (in hci_build_acl_rx_data)
em_buf_rx_buff_addr_get proc
	c.li	a5,0000000E
	add	a5,a0,a5
	lui	a4,00028008
	addi	a0,a4,+000003D6
	c.add	a5,a0
	lhu	a0,a5,+00000000
	c.add	a0,a4
	c.jr	ra

;; em_buf_tx_free: 2302CC7E
;;   Called from:
;;     2302DEC8 (in lld_evt_deffered_elt_handler)
;;     2302DED8 (in lld_evt_deffered_elt_handler)
;;     2302FEF4 (in lld_pdu_tx_flush_list)
;;     230300A6 (in lld_pdu_check)
em_buf_tx_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a0,+00000004
	c.li	a4,0000000A
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000002D2
	c.add	a5,a4
	lhu	a1,a5,+00000000
	c.slli	a1,10
	c.srli	a1,00000010
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	slli	a5,a1,00000010
	c.srai	a5,00000010
	lui	s3,00042026
	c.li	s2,00000000
	bge	a5,zero,000000002302CCDE

l2302CCC0:
	andi	a1,a1,+000000FF
	addi	a1,a1,+00000029
	addi	a5,s3,+000002C8
	c.slli	a1,03
	lui	a0,00042026
	c.add	a1,a5
	addi	a0,a0,+000002D0
	jal	ra,000000002302A2FE
	c.li	s2,00000001

l2302CCDE:
	lhu	a3,s0,+00000004
	c.li	a2,0000000A
	lui	a4,00028008
	add	a3,a3,a2
	addi	a5,a4,+000002CC
	c.mv	a1,s0
	addi	a0,s3,+000002C8
	c.add	a3,a5
	sh	zero,a3,+00000000
	lhu	a3,s0,+00000004
	addi	a5,a4,+000002D2
	addi	a4,a4,+000002CE
	add	a3,a3,a2
	c.add	a3,a5
	sh	zero,a3,+00000000
	lhu	a5,s0,+00000004
	add	a5,a5,a2
	c.add	a5,a4
	sh	zero,a5,+00000000
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llc_init: 2302CD38
;;   Called from:
;;     23029232 (in rwble_init)
llc_init proc
	lui	a1,000230B5
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000007E4
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023035342
	addi	a1,zero,+0000007F
	c.li	a0,00000001
	jal	ra,00000000230353A2
	addi	a1,zero,+0000007F
	addi	a0,zero,+00000101
	jal	ra,00000000230353A2
	lui	a5,0004200F
	c.lwsp	a2,00000020
	lw	t1,a5,+000003D4
	lui	a0,00042026
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,a0,+00000428
	c.addi	sp,00000010
	c.jr	t1

;; llc_stop: 2302CD7A
;;   Called from:
;;     2302CE1A (in llc_reset)
;;     2302CE34 (in llc_reset)
;;     2303807E (in fn23038048)
llc_stop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.slli	a0,08
	ori	a0,a0,+00000001
	c.slli	a0,10
	c.srli	a0,00000010
	addi	a1,zero,+0000007F
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	lui	s0,00042026
	jal	ra,00000000230353A2
	addi	a5,s0,+00000428
	slli	s4,s3,00000002
	c.add	a5,s4
	c.lw	a5,0(a4)
	c.beqz	a4,000000002302CDF4

l2302CDB0:
	addi	s0,s0,+00000428
	c.li	s2,00000000
	c.mv	s1,a5
	c.li	s5,00000004

l2302CDBA:
	c.lw	s1,0(a5)
	slli	a4,s2,00000002
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.beqz	a0,000000002302CDCC

l2302CDC6:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002302BDCE

l2302CDCC:
	c.addi	s2,00000001
	bne	s2,s5,000000002302CDBA

l2302CDD2:
	c.add	s0,s4
	c.lw	s0,0(a0)
	jal	ra,000000002302BB4A
	sw	zero,s0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023032CD0

l2302CDF4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; llc_reset: 2302CE06
;;   Called from:
;;     23029278 (in rwble_reset)
llc_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023035412
	addi	a5,zero,+0000007F
	beq	a0,a5,000000002302CE1E

l2302CE18:
	c.li	a0,00000000
	jal	ra,000000002302CD7A

l2302CE1E:
	addi	a0,zero,+00000101
	jal	ra,0000000023035412
	addi	a5,zero,+0000007F
	beq	a0,a5,000000002302CE38

l2302CE2E:
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002302CD7A

l2302CE38:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; llc_discon_event_complete_send: 2302CE3E
;;   Called from:
;;     23038050 (in fn23038048)
llc_discon_event_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a0,00001000
	c.mv	s0,a2
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a3
	c.mv	s2,a1
	c.li	a3,00000006
	c.mv	a1,s0
	c.li	a2,00000005
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sb	s2,a0,+00000000
	sb	s1,a0,+00000004
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_le_con_cmp_evt_send: 2302CE78
;;   Called from:
;;     2302D37A (in llc_start)
;;     23032D74 (in llm_end_evt_defer)
;;     230387D2 (in lld_stop_ind_handler)
llc_le_con_cmp_evt_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s3,a1
	c.mv	s1,a2
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002302CF72

l2302CE96:
	c.li	a0,00000009
	jal	ra,0000000023032ACE
	bne	a0,zero,000000002302CFF8

l2302CEA0:
	c.lui	a0,00001000
	c.li	a3,00000014
	c.li	a2,00000000
	c.mv	a1,s3
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,00000001
	sb	a5,a0,+00000000
	sb	s2,a0,+00000001
	sh	s3,a0,+00000002
	c.mv	s0,a0
	bne	s2,zero,000000002302CFC0

l2302CEC4:
	c.mv	a0,s3
	jal	ra,0000000023032372
	c.addi	a0,FFFFFFFD
	sltu	a0,zero,a0
	sb	a0,s0,+00000004
	lhu	a5,s1,+00000006
	addi	s2,s0,+00000006
	lui	s3,0004200F
	c.beqz	a5,000000002302CF9C

l2302CEE2:
	addi	a4,zero,+00000034
	addi	a5,a5,-0000022E
	srl	a5,a5,a4
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+0000022E
	c.add	a5,a4
	lhu	a4,a5,+00000000
	c.srli	a4,00000001
	c.andi	a4,00000001
	c.beqz	a4,000000002302CF9C

l2302CF0A:
	lbu	a4,s1,+00000011
	c.beqz	a4,000000002302CF1A

l2302CF10:
	lhu	a5,a5,+00000000
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.beqz	a5,000000002302CF8C

l2302CF1A:
	c.li	a5,00000001
	sb	a5,s0,+00000005
	lhu	a5,s1,+00000006
	lw	a4,s3,+000003D0
	lui	a1,00028008
	c.addi	a5,00000012
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000006
	c.add	a1,a5
	c.mv	a0,s2
	c.jalr	a4

l2302CF3A:
	lhu	a5,s1,+00000000
	sh	a5,s0,+0000000C
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000000E
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000010
	lbu	a5,s0,+00000004
	c.bnez	a5,000000002302CFB6

l2302CF58:
	sb	zero,s0,+00000012

l2302CF5C:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023029E8E

l2302CF72:
	c.li	a0,00000009
	jal	ra,0000000023032ACE
	c.bnez	a0,000000002302CE96

l2302CF7A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302CF8C:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5

l2302CF9C:
	lbu	a5,s1,+0000000E
	c.li	a2,00000006
	addi	a1,s1,+00000008
	c.andi	a5,00000001
	sb	a5,s0,+00000005
	lw	a5,s3,+000003D0
	c.mv	a0,s2
	c.jalr	a5
	c.j	000000002302CF3A

l2302CFB6:
	lbu	a5,s1,+00000010
	sb	a5,s0,+00000012
	c.j	000000002302CF5C

l2302CFC0:
	addi	a4,zero,+0000003C
	bne	s2,a4,000000002302CF5C

l2302CFC8:
	sb	a5,a0,+00000004
	lbu	a5,s1,+0000000E
	sh	zero,a0,+00000002
	sh	zero,a0,+0000000C
	sb	a5,a0,+00000005
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	sh	zero,a0,+0000000E
	sh	zero,a0,+00000010
	c.li	a2,00000006
	addi	a1,s1,+00000008
	c.addi	a0,00000006

l2302CFF4:
	c.jalr	a5
	c.j	000000002302CF5C

l2302CFF8:
	c.lui	a0,00001000
	addi	a3,zero,+00000020
	c.li	a2,00000000
	c.mv	a1,s3
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,0000000A
	sb	a5,a0,+00000000
	sb	s2,a0,+00000001
	sh	s3,a0,+00000002
	c.mv	s0,a0
	bne	s2,zero,000000002302D14E

l2302D01E:
	c.mv	a0,s3
	jal	ra,0000000023032372
	c.addi	a0,FFFFFFFD
	sltu	a0,zero,a0
	sb	a0,s0,+00000004
	lhu	a1,s1,+00000006
	addi	s5,s0,+00000012
	addi	s3,s0,+0000000C
	lui	s4,0004200F
	c.beqz	a1,000000002302D128

l2302D040:
	addi	a5,zero,+00000034
	addi	s2,a1,-0000022E
	srl	s2,s2,a5
	andi	s2,s2,+000000FF
	add	s2,s2,a5
	lui	a5,00028008
	addi	a5,a5,+0000022E
	c.add	s2,a5
	lhu	a5,s2,+00000000
	c.srli	a5,00000001
	c.andi	a5,00000001
	c.beqz	a5,000000002302D0C2

l2302D068:
	lbu	a5,s1,+00000011
	c.beqz	a5,000000002302D078

l2302D06E:
	lhu	a5,s2,+00000000
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.beqz	a5,000000002302D0C2

l2302D078:
	c.addi	a1,00000012
	c.slli	a1,10
	lw	a5,s4,+000003D0
	c.srli	a1,00000010
	lui	a4,00028008
	c.li	a2,00000006
	c.add	a1,a4

l2302D08A:
	c.mv	a0,s5
	c.jalr	a5
	lhu	a5,s2,+00000000
	c.srli	a5,00000005
	c.andi	a5,00000001
	c.beqz	a5,000000002302D0B0

l2302D098:
	lbu	a4,s0,+00000004
	c.li	a5,00000001
	bne	a4,a5,000000002302D0D0

l2302D0A2:
	lui	a5,00028008
	lhu	a5,a5,+00000154
	c.srli	a5,00000002
	c.andi	a5,00000001
	c.bnez	a5,000000002302D0D0

l2302D0B0:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s3

l2302D0BE:
	c.jalr	a5
	c.j	000000002302D0EC

l2302D0C2:
	lui	a5,0004200F
	lw	a5,a5,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	c.j	000000002302D08A

l2302D0D0:
	lhu	a5,s1,+00000006
	lw	a4,s4,+000003D0
	lui	a1,00028008
	addi	a5,a5,+0000002E
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000006
	c.add	a1,a5
	c.mv	a0,s3
	c.jalr	a4

l2302D0EC:
	lbu	a5,s1,+0000000E
	c.li	a2,00000006
	addi	a1,s1,+00000008
	sb	a5,s0,+00000005
	lw	a5,s4,+000003D0
	addi	a0,s0,+00000006
	c.jalr	a5
	lhu	a5,s1,+00000000
	sh	a5,s0,+00000018
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000001A
	lhu	a5,s1,+00000004
	sh	a5,s0,+0000001C
	lbu	a5,s0,+00000004
	c.bnez	a5,000000002302D144

l2302D122:
	sb	zero,s0,+0000001E
	c.j	000000002302CF5C

l2302D128:
	lui	s2,0004200F
	lw	a5,s2,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s3
	c.jalr	a5
	lw	a5,s2,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s5
	c.j	000000002302D0BE

l2302D144:
	lbu	a5,s1,+00000010
	sb	a5,s0,+0000001E
	c.j	000000002302CF5C

l2302D14E:
	addi	a5,zero,+0000003C
	bne	s2,a5,000000002302CF5C

l2302D156:
	c.li	a5,00000001
	sb	a5,a0,+00000004
	lbu	a5,s1,+0000000E
	sh	zero,a0,+00000002
	addi	a1,s1,+00000008
	sb	a5,a0,+00000005
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	sh	zero,a0,+00000018
	sh	zero,a0,+0000001A
	sh	zero,a0,+0000001C
	c.li	a2,00000006
	c.addi	a0,00000006
	c.jalr	a5
	lui	s1,0004200F
	lw	a5,s1,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,s0,+00000012
	c.jalr	a5
	lw	a5,s1,+000003D4
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	c.j	000000002302CFF4

;; llc_le_ch_sel_algo_evt_send: 2302D1A6
;;   Called from:
;;     2302D3B6 (in llc_start)
llc_le_ch_sel_algo_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000013
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002302D1E4

l2302D1BA:
	c.lui	a0,00001000
	c.mv	a1,s0
	c.li	a3,00000006
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a4,00000014
	sb	a4,a0,+00000000
	sb	s1,a0,+00000004
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

l2302D1E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_start: 2302D1EE
;;   Called from:
;;     230330D0 (in llm_con_req_ind)
;;     2303359A (in llm_con_req_tx_cfm)
llc_start proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lhu	s4,a1,+00000074
	lui	s1,00042026
	addi	s0,s1,+00000428
	slli	s8,s4,00000002
	c.add	s0,s8
	slli	s2,s4,00000008
	c.lw	s0,0(a5)
	ori	s2,s2,+00000001
	c.slli	s2,10
	c.mv	s5,a0
	c.mv	s6,a1
	addi	s7,a1,+00000028
	srli	s2,s2,00000010
	addi	s1,s1,+00000428
	c.bnez	a5,000000002302D244

l2302D238:
	c.li	a1,00000000
	addi	a0,zero,+000000A8
	jal	ra,000000002302BA5A
	c.sw	s0,0(a0)

l2302D244:
	add	a5,s1,s8
	c.lw	a5,0(s0)
	lui	s10,0004200F
	lw	a5,s10,+000003D4
	c.li	s9,00000001
	c.li	a2,00000006
	c.li	a1,00000000
	sb	s9,s0,+000000A6
	addi	a0,s0,+0000003C
	c.jalr	a5
	addi	a0,s0,+0000005E
	jal	ra,0000000023032AEC
	addi	a0,s0,+00000063
	jal	ra,0000000023032AEC
	lbu	a4,s6,+0000007B
	lui	s3,00042026
	c.li	a5,00000003
	addi	s3,s3,+00000460
	bne	a4,a5,000000002302D2B6

l2302D284:
	lw	a5,s10,+000003D4
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,+00000014
	c.jalr	a5
	lbu	a5,s3,+00000031
	lhu	a2,s3,+0000002C
	c.mv	a1,s2
	sb	a5,s0,+0000003A
	addi	a0,zero,+00000105
	jal	ra,000000002302C026
	lhu	a5,s6,+0000005E
	bgeu	s9,a5,000000002302D3BA

l2302D2B2:
	sb	s9,s0,+00000039

l2302D2B6:
	sw	s6,s0,+00000010
	lhu	a2,s5,+00000004
	c.mv	a1,s2
	addi	a0,zero,+00000101
	sh	a2,s0,+00000054
	jal	ra,000000002302C026
	c.li	a5,00000008
	sb	a5,s0,+000000A1
	addi	a0,s0,+00000069
	sh	zero,s0,+0000005C
	sb	zero,s0,+000000A2
	jal	ra,0000000023032B00
	c.li	a1,00000000
	c.mv	a0,s2
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	jal	ra,00000000230353A2
	c.add	s1,s8
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000448
	sh	a4,a5,+00000058
	c.mv	a0,s7
	sb	zero,a5,+000000A3
	sb	zero,a5,+000000A4
	jal	ra,0000000023038234
	lhu	a5,s3,+00000020
	sb	zero,s0,+00000052
	c.mv	a2,s5
	sh	a5,s0,+00000042
	lhu	a5,s3,+00000022
	c.mv	a1,s4
	c.li	a0,00000000
	sh	a5,s0,+0000004A
	lui	a5,000001B0
	addi	a5,a5,+000000FB
	c.sw	s0,68(a5)
	c.li	a5,0000001B
	sh	a5,s0,+00000048
	lui	a5,00001481
	addi	a5,a5,-000007B8
	c.sw	s0,76(a5)
	addi	a5,zero,+00000148
	sh	a5,s0,+00000050
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.lw	s1,0(a5)
	sw	zero,a5,+00000000
	c.lw	s1,0(a5)
	sw	zero,a5,+00000004
	c.lw	s1,0(a5)
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sb	zero,a5,+000000A5
	jal	ra,000000002302CE78
	addi	a5,zero,+0000005C
	add	a5,s4,a5
	lui	a4,00028008
	addi	a4,a4,+0000009E
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.add	a5,a4
	lhu	a0,a5,+00000000
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.mv	a2,s5
	c.mv	a1,s4
	c.lwsp	s4,000000A8
	c.lwsp	s8,00000088
	c.srli	a0,0000000E
	c.andi	a0,00000001
	c.addi16sp	00000030
	jal	zero,000000002302D1A6

l2302D3BA:
	sb	zero,s0,+00000039
	c.j	000000002302D2B6

;; llc_con_update_complete_send: 2302D3C0
;;   Called from:
;;     2302D732 (in llc_con_update_ind)
;;     23035870 (in llc_llcp_reject_ind)
;;     23035CDC (in fn23035C80)
;;     2303677A (in llcp_con_param_rsp_handler)
;;     230380DE (in fn230380C6)
;;     23039456 (in hci_le_con_update_cmd_handler)
llc_con_update_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.li	a3,0000000A
	c.mv	s1,a2
	addi	a0,a0,-000007FC
	c.li	a2,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002302BC8C
	c.li	a5,00000003
	sb	a5,a0,+00000000
	sh	s0,a0,+00000002
	lui	a5,00042026
	sb	s2,a0,+00000001
	addi	a5,a5,+00000428
	c.slli	s0,02
	c.beqz	s1,000000002302D426

l2302D3F8:
	lhu	a4,s1,+00000050
	c.add	a5,s0
	c.srli	a4,00000001
	sh	a4,a0,+00000004
	lhu	a4,s1,+00000036
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000006
	c.lw	a5,0(a5)
	lhu	a5,a5,+00000054

l2302D414:
	sh	a5,a0,+00000008

l2302D418:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

l2302D426:
	c.add	a5,s0
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.beqz	a5,000000002302D444

l2302D42E:
	lhu	a4,a5,+0000000E
	sh	a4,a0,+00000004
	lhu	a4,a5,+00000006
	sh	a4,a0,+00000006
	lhu	a5,a5,+00000008
	c.j	000000002302D414

l2302D444:
	sh	zero,a0,+00000004
	sh	zero,a0,+00000006
	sh	zero,a0,+00000008
	c.j	000000002302D418

;; llc_ltk_req_send: 2302D452
;;   Called from:
;;     23037CCE (in llc_enc_mgt_ind_handler)
llc_ltk_req_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,0000000E
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302BC8C
	c.li	a5,00000005
	sh	s2,a0,+00000002
	sb	a5,a0,+00000000
	lbu	a5,s1,+0000000A
	lbu	a4,s1,+00000009
	c.mv	s0,a0
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000000C
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	addi	a1,s1,+00000001
	c.li	a2,00000008
	c.addi	a0,00000004
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_feats_rd_event_send: 2302D4AE
;;   Called from:
;;     23035C7A (in fn23035C5E)
;;     2303683E (in llcp_feats_rsp_handler)
;;     23038044 (in fn2303803C)
;;     230390AE (in hci_le_rd_rem_used_feats_cmd_handler)
llc_feats_rd_event_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.li	a0,00000003
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002302D50A

l2302D4C8:
	c.lui	a0,00001000
	c.mv	a1,s1
	c.li	a3,0000000C
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002302BC8C
	c.li	a5,00000004
	sb	a5,a0,+00000000
	sb	s3,a0,+00000001
	sh	s1,a0,+00000002
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.mv	s0,a0
	c.mv	a1,s2
	c.li	a2,00000008
	c.addi	a0,00000004
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023029E8E

l2302D50A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llc_version_rd_event_send: 2302D518
;;   Called from:
;;     23035E44 (in llcp_vers_ind_handler)
;;     2303809C (in fn23038098)
;;     23039606 (in hci_rd_rem_ver_info_cmd_handler)
llc_version_rd_event_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lui	a0,00001000
	c.li	a3,0000000A
	c.li	a2,0000000C
	addi	a0,a0,-000007FD
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002302BC8C
	lui	a1,00042026
	sh	s0,a0,+00000002
	addi	a1,a1,+00000428
	c.slli	s0,02
	sb	s1,a0,+00000000
	c.add	a1,s0
	c.lw	a1,0(a4)
	lhu	a4,a4,+0000003E
	sh	a4,a0,+00000006
	c.lw	a1,0(a4)
	lhu	a3,a4,+00000040
	sh	a3,a0,+00000008
	lbu	a4,a4,+0000003C
	sb	a4,a0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_common_cmd_complete_send: 2302D56E
;;   Called from:
;;     23038A9C (in hci_le_set_data_len_cmd_handler)
;;     23038B4E (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     23038C3E (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     23038D2E (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     23038E30 (in hci_le_ltk_req_reply_cmd_handler)
llc_common_cmd_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.li	a3,00000004
	c.mv	s1,a1
	addi	a0,a0,-000007FF
	c.mv	a1,s0
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sb	s1,a0,+00000000
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_common_cmd_status_send: 2302D59E
;;   Called from:
;;     23038EC8 (in hci_disconnect_cmd_handler)
;;     23038F38 (in hci_le_start_enc_cmd_handler)
;;     23038F8C (in hci_le_start_enc_cmd_handler)
;;     2303908E (in hci_le_rd_rem_used_feats_cmd_handler)
;;     2303943A (in hci_le_con_update_cmd_handler)
;;     230395D4 (in hci_rd_rem_ver_info_cmd_handler)
;;     230395FE (in hci_rd_rem_ver_info_cmd_handler)
llc_common_cmd_status_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a2
	c.mv	a2,a0
	c.lui	a0,00001000
	c.li	a3,00000001
	addi	a0,a0,-000007FE
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_common_flush_occurred_send: 2302D5C4
;;   Called from:
;;     23039570 (in hci_flush_cmd_handler)
llc_common_flush_occurred_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000011
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sh	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_common_enc_key_ref_comp_evt_send: 2302D5EA
;;   Called from:
;;     230363E4 (in llcp_start_enc_rsp_handler)
;;     230380B4 (in fn230380A2)
llc_common_enc_key_ref_comp_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,00000004
	addi	a2,zero,+00000030
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	sh	s0,a0,+00000002
	sb	s1,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_common_enc_change_evt_send: 2302D61C
;;   Called from:
;;     230357C0 (in llc_llcp_reject_ind)
;;     23035C4A (in fn23035C3C)
;;     2303642C (in llcp_start_enc_rsp_handler)
;;     230380C0 (in fn230380A2)
llc_common_enc_change_evt_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	slli	s0,a0,00000008
	ori	s0,s0,+00000001
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.slli	s0,10
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.srli	s0,00000010
	c.beqz	a1,000000002302D6A0

l2302D63E:
	lui	a5,00042026
	slli	s1,a0,00000002
	addi	a5,a5,+00000428
	c.add	s1,a5
	c.lw	s1,0(a5)
	c.mv	a1,s0
	addi	a0,zero,+00000103
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.sub	a2,a5
	jal	ra,000000002302C026
	c.lw	s1,0(a5)
	c.mv	a1,s0
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002302C026

l2302D672:
	c.lui	a0,00001000
	c.mv	a1,s2
	c.li	a3,00000006
	c.li	a2,00000008
	addi	a0,a0,-000007FD
	jal	ra,000000002302BC8C
	sh	s2,a0,+00000002
	sb	s3,a0,+00000004
	sb	s4,a0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023029E8E

l2302D6A0:
	c.mv	a1,s0
	addi	a0,zero,+00000103
	jal	ra,000000002302C124
	c.mv	a1,s0
	addi	a0,zero,+00000104
	jal	ra,000000002302C124
	c.j	000000002302D672

;; llc_common_nb_of_pkt_comp_evt_send: 2302D6B6
;;   Called from:
;;     230307BA (in lld_pdu_tx_flush)
;;     230384C2 (in llc_pdu_acl_tx_ack_defer)
;;     230396E0 (in llc_hci_acl_data_tx_handler)
;;     230396FE (in llc_hci_acl_data_tx_handler)
llc_common_nb_of_pkt_comp_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,00000006
	c.li	a2,00000013
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002302BC8C
	c.li	a4,00000001
	sh	s0,a0,+00000002
	sh	s1,a0,+00000004
	sb	a4,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023029E8E

;; llc_con_update_ind: 2302D6EC
;;   Called from:
;;     2302DE44 (in lld_evt_deffered_elt_handler)
llc_con_update_ind proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042026
	c.swsp	s2,00000008
	addi	a4,a5,+00000428
	slli	s2,a0,00000002
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.add	a4,s2
	c.lw	a4,0(a3)
	c.mv	s1,a1
	addi	s0,a5,+00000428
	lhu	a4,a3,+0000005C
	andi	a2,a4,+000000C0
	c.beqz	a2,000000002302D736

l2302D718:
	andi	a4,a4,-000000C1
	c.mv	s3,a0
	sh	a4,a3,+0000005C
	c.li	a0,00000002
	jal	ra,0000000023032ACE
	c.beqz	a0,000000002302D736

l2302D72A:
	addi	a2,s1,+00000028
	c.mv	a1,s3
	c.li	a0,00000000
	jal	ra,000000002302D3C0

l2302D736:
	lhu	a3,s1,+0000005E
	add	a5,s0,s2
	c.li	a4,00000001
	c.lw	a5,0(a5)
	bgeu	a4,a3,000000002302D758

l2302D746:
	sb	a4,a5,+00000039

l2302D74A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302D758:
	sb	zero,a5,+00000039
	c.j	000000002302D74A

;; llc_lsto_con_update: 2302D75E
llc_lsto_con_update proc
	lui	a5,00042026
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.add	a5,a4
	c.lw	a5,0(s0)
	lhu	a5,s0,+00000056
	lhu	a2,s0,+00000054
	bgeu	a2,a5,000000002302D782

l2302D780:
	c.mv	a2,a5

l2302D782:
	slli	a1,a0,00000008
	c.slli	a2,01
	c.slli	a2,10
	ori	a1,a1,+00000001
	c.srli	a2,00000010
	c.slli	a1,10
	sh	a2,s0,+00000054
	c.srli	a1,00000010
	addi	a0,zero,+00000101
	jal	ra,000000002302C026
	lhu	a5,s0,+0000005C
	ori	a5,a5,+00000020
	sh	a5,s0,+0000005C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llc_map_update_ind: 2302D7B4
;;   Called from:
;;     2303269C (in lld_ch_map_ind)
llc_map_update_ind proc
	lui	a5,00042026
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000428
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	s1,00000080
	c.add	a5,a4
	c.lw	a5,0(s1)
	c.mv	s0,a0
	c.li	a1,00000005
	addi	s2,s1,+00000063
	c.mv	a0,s2
	jal	ra,0000000023032A54
	lbu	a3,s1,+00000064
	lbu	a5,s1,+00000063
	lui	a4,00028008
	c.slli	a3,08
	c.or	a3,a5
	addi	a5,zero,+0000005C
	add	a5,s0,a5
	addi	a2,a4,+000000AA
	c.slli	a0,08
	c.mv	a1,s2
	c.add	a2,a5
	sh	a3,a2,+00000000
	lbu	a3,s1,+00000066
	lbu	a2,s1,+00000065
	c.slli	a3,08
	c.or	a3,a2
	addi	a2,a4,+000000AC
	c.add	a2,a5
	sh	a3,a2,+00000000
	lbu	a3,s1,+00000067
	addi	a4,a4,+000000AE
	c.add	a5,a4
	c.or	a0,a3
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,a5,+00000000
	c.li	a2,00000005
	addi	a0,s1,+0000005E
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_con_update_finished: 2302D842
;;   Called from:
;;     2302DE4C (in lld_evt_deffered_elt_handler)
llc_con_update_finished proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	slli	s1,a0,00000008
	ori	s1,s1,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,000000002302D8A2

l2302D86E:
	c.mv	s3,a0
	c.mv	a0,s2
	jal	ra,0000000023032372
	lui	s0,00042026
	c.li	a5,00000003
	addi	s0,s0,+00000428
	slli	s4,s2,00000002
	bne	a0,a5,000000002302D8B2

l2302D888:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023038270
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
	c.add	s0,s4
	c.lw	s0,0(a5)
	sb	zero,a5,+000000A3

l2302D8A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302D8B2:
	c.add	s0,s4
	c.lw	s0,0(a3)
	lhu	a5,a3,+0000005C
	andi	a4,a5,+00000400
	c.beqz	a4,000000002302D8DE

l2302D8C0:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230353A2
	c.lw	s0,0(a5)
	lhu	a4,a5,+0000005C
	sb	zero,a5,+000000A4
	andi	a4,a4,-00000401
	sh	a4,a5,+0000005C
	c.j	000000002302D8A2

l2302D8DE:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	sh	a5,a3,+0000005C
	c.j	000000002302D8A2

;; llc_map_update_finished: 2302D8EC
;;   Called from:
;;     2302DE92 (in lld_evt_deffered_elt_handler)
llc_map_update_finished proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	slli	s1,a0,00000008
	ori	s1,s1,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	jal	ra,0000000023035412
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,000000002302D940

l2302D916:
	c.mv	s3,a0
	c.mv	a0,s2
	jal	ra,0000000023032372
	lui	s0,00042026
	c.li	a5,00000003
	addi	s0,s0,+00000428
	c.slli	s2,02
	bne	a0,a5,000000002302D94E

l2302D92E:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230353A2
	c.add	s0,s2
	c.lw	s0,0(a5)
	sb	zero,a5,+000000A3

l2302D940:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302D94E:
	c.add	s0,s2
	c.lw	s0,0(a3)
	lhu	a5,a3,+0000005C
	andi	a4,a5,+00000400
	c.beqz	a4,000000002302D97A

l2302D95C:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230353A2
	c.lw	s0,0(a5)
	lhu	a4,a5,+0000005C
	sb	zero,a5,+000000A4
	andi	a4,a4,-00000401
	sh	a4,a5,+0000005C
	c.j	000000002302D940

l2302D97A:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	sh	a5,a3,+0000005C
	c.j	000000002302D940

;; lld_evt_winsize_change: 2302D988
;;   Called from:
;;     2302E2C2 (in lld_evt_rxwin_compute)
;;     2302F230 (in lld_evt_move_to_slave)
lld_evt_winsize_change proc
	c.lw	a0,44(a5)
	c.lw	a0,48(a4)
	slli	a2,a5,00000010
	c.slli	a4,01
	add	a3,a5,a4
	bge	a2,zero,000000002302D9AC

l2302D99A:
	c.lui	a3,00008000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	addi	a3,zero,+00000271
	add	a5,a5,a3
	add	a3,a5,a4

l2302D9AC:
	c.li	a4,0000000E
	c.mv	a5,a3
	bgeu	a3,a4,000000002302D9B6

l2302D9B4:
	c.li	a5,0000000E

l2302D9B6:
	lhu	a4,a0,+00000050
	lhu	a2,a0,+00000036
	c.srli	a4,00000001
	add	a4,a4,a2
	addi	a2,zero,+00000271
	add	a4,a4,a2
	addi	a4,a4,-00000096
	bltu	a5,a4,000000002302D9E4

l2302D9D4:
	c.bnez	a1,000000002302D9E4

l2302D9D6:
	lbu	a5,a0,+00000056
	ori	a5,a5,+00000010
	sb	a5,a0,+00000056
	c.jr	ra

l2302D9E4:
	c.lui	a4,00004000
	bltu	a3,a4,000000002302DA06

l2302D9EA:
	addi	a4,zero,+00000271
	addi	a5,a5,+00000270
	srl	a5,a5,a4
	c.lui	a4,FFFF8000
	c.or	a5,a4
	lhu	a4,a0,+00000004
	c.slli	a5,10
	c.srli	a5,00000010
	c.beqz	a4,000000002302DA0A

l2302DA04:
	c.addi	a5,00000001

l2302DA06:
	c.slli	a5,10
	c.srli	a5,00000010

l2302DA0A:
	lhu	a4,a0,+0000004C
	addi	a3,zero,+0000005C
	add	a4,a4,a3
	lui	a3,00028008
	addi	a3,a3,+000000A2
	c.add	a4,a3
	sh	a5,a4,+00000000
	c.sw	a0,44(a5)
	c.jr	ra

;; lld_evt_slave_time_compute: 2302DA28
;;   Called from:
;;     2302ECD8 (in lld_evt_schedule_next)
;;     2302F3FA (in lld_evt_move_to_slave)
lld_evt_slave_time_compute proc
	addi	a7,zero,+00000271
	add	a1,a1,a7
	lhu	a5,a0,+0000002C
	lhu	a2,a0,+00000074
	lw	t3,a0,+00000028
	c.add	a1,a5
	srl	a3,a1,a7
	addi	a5,zero,+0000005C
	add	a2,a2,a5
	lui	a5,00028008
	addi	a5,a5,+000000A2
	c.add	a3,t3
	c.slli	a3,05
	c.srli	a3,00000005
	c.add	a5,a2
	lhu	a5,a5,+00000000
	and	t4,a1,a7
	c.slli	a5,10
	c.srli	a5,00000010
	slli	t1,a5,00000010
	srai	t1,t1,00000010
	bge	t1,zero,000000002302DADA

l2302DA72:
	slli	a6,a5,00000011
	srli	a6,a6,00000012
	add	a6,a6,a7
	sub	a1,a1,a6

l2302DA82:
	addi	a1,a1,-00000021
	addi	a7,zero,+00000271
	srl	a4,a1,a7
	c.sw	a0,40(a3)
	sh	t4,a0,+0000002C
	c.add	a4,t3
	c.slli	a4,05
	c.srli	a4,00000005
	c.sw	a0,8(a4)
	and	a6,a1,a7
	bge	t1,zero,000000002302DAE2

l2302DAA4:
	c.slli	a5,11
	c.srli	a5,00000011

l2302DAA8:
	c.lw	a0,80(a4)
	sh	a5,a0,+00000012
	lhu	a4,a4,+00000008
	c.add	a5,a4
	addi	a4,zero,+00000271
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+00000090
	c.add	a2,a4
	sh	a5,a0,+00000012
	slli	a5,a6,00000010
	c.srli	a5,00000010
	sh	a5,a2,+00000000
	sh	a5,a0,+00000014
	c.jr	ra

l2302DADA:
	srli	a4,a5,00000001
	c.sub	a1,a4
	c.j	000000002302DA82

l2302DAE2:
	srl	a5,a5,a7
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002302DAA8

;; lld_evt_prevent_stop: 2302DAEE
lld_evt_prevent_stop proc
	c.jr	ra

;; lld_evt_deferred_elt_push: 2302DAF0
;;   Called from:
;;     2302DC52 (in lld_evt_schedule)
;;     2302EB00 (in lld_evt_elt_insert)
;;     2302EB56 (in lld_evt_canceled)
;;     2302F6E6 (in lld_evt_end)
;;     2302F78A (in lld_evt_end)
;;     2302F886 (in lld_evt_rx)
;;     2302F8C2 (in lld_evt_rx_afs)
lld_evt_deferred_elt_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002302BA5A
	c.lwsp	a2,00000084
	c.sw	a0,4(s1)
	sb	s0,a0,+00000008
	sb	a2,a0,+00000009
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a1,a0
	lui	a0,00042026
	addi	a0,a0,+00000440
	c.addi16sp	00000020
	jal	zero,000000002302A2FE

;; lld_evt_elt_wait_insert: 2302DB28
;;   Called from:
;;     2302EAC8 (in lld_evt_elt_insert)
;;     2302F738 (in lld_evt_end)
lld_evt_elt_wait_insert proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000000
	c.mv	s0,a0
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002302BA5A
	c.sw	a0,4(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,00042026
	addi	a0,a0,+00000438
	c.addi	sp,00000010
	jal	zero,000000002302A2FE

;; lld_evt_deferred_elt_pop: 2302DB4E
;;   Called from:
;;     2302DE0E (in lld_evt_deffered_elt_handler)
;;     2302DE82 (in lld_evt_deffered_elt_handler)
lld_evt_deferred_elt_pop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.swsp	a1,00000084
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,00042026
	addi	a0,a0,+00000440
	jal	ra,000000002302A36A
	c.mv	a5,a0
	csrrw	zero,mstatus,zero
	c.beqz	a0,000000002302DB90

l2302DB76:
	lbu	a4,a0,+00000008
	c.lw	a0,4(s0)
	c.lwsp	a2,00000064
	sb	a4,s1,+00000000
	lbu	a5,a0,+00000009
	sb	a5,a1,+00000000
	jal	ra,000000002302BB4A
	c.mv	a5,s0

l2302DB90:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_get_next_free_slot: 2302DB9C
;;   Called from:
;;     2302F70E (in lld_evt_end)
lld_evt_get_next_free_slot proc
	lui	a5,00042026
	addi	a5,a5,+00000430
	c.lw	a5,0(a4)
	c.beqz	a4,000000002302DBC0

l2302DBA8:
	c.lw	a5,4(a5)
	addi	a4,zero,+00000271
	lhu	a0,a5,+00000012
	c.lw	a5,8(a5)
	srl	a0,a0,a4
	c.add	a0,a5
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

l2302DBC0:
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2302DBCA:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002302DBCA

l2302DBD0:
	c.lw	a5,28(a0)
	c.jr	ra

;; lld_evt_elt_wait_get: 2302DBD4
;;   Called from:
;;     2302DC26 (in lld_evt_schedule)
;;     2302E112 (in lld_evt_elt_delete)
;;     2302EB1E (in lld_evt_canceled)
;;     2302EBF8 (in lld_evt_schedule_next)
lld_evt_elt_wait_get proc
	c.beqz	a0,000000002302DC0A

l2302DBD6:
	c.addi	sp,FFFFFFF0
	lui	a5,00042026
	c.swsp	s0,00000004
	lw	s0,a5,+00000438
	c.swsp	ra,00000084

l2302DBE4:
	c.beqz	s0,000000002302DBFC

l2302DBE6:
	c.lw	s0,4(a5)
	bne	a5,a0,000000002302DC06

l2302DBEC:
	lui	a0,00042026
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,a0,+00000438
	jal	ra,000000002302A39E

l2302DBFC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302DC06:
	c.lw	s0,0(s0)
	c.j	000000002302DBE4

l2302DC0A:
	lui	a0,00042026
	addi	a0,a0,+00000438
	jal	zero,000000002302A36A

;; lld_evt_schedule: 2302DC16
lld_evt_schedule proc
	beq	a0,zero,000000002302DD8A

l2302DC1A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,8(s1)
	jal	ra,000000002302DBD4
	c.beqz	a0,000000002302DC30

l2302DC2C:
	jal	ra,000000002302BB4A

l2302DC30:
	lbu	a5,s0,+0000007B
	c.beqz	a5,000000002302DC3C

l2302DC36:
	c.li	a4,00000005
	bne	a5,a4,000000002302DC82

l2302DC3C:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.beqz	a5,000000002302DC56

l2302DC44:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a2,00000000
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,000000002302DAF0

l2302DC56:
	jal	ra,0000000023032B14
	lui	a5,00042026
	lw	a5,a5,+00000474
	lbu	a5,a5,+00000021
	c.bnez	a5,000000002302DC82

l2302DC68:
	c.lw	s0,8(a4)
	c.lw	s0,92(a5)
	c.sub	a5,a4
	c.mv	a4,a5
	c.slli	a5,10
	c.srai	a5,00000010
	blt	zero,a5,000000002302DC7A

l2302DC78:
	c.li	a4,00000001

l2302DC7A:
	lui	a5,00028008
	sh	a4,a5,+00000160

l2302DC82:
	lbu	a4,s0,+0000007B
	c.li	a5,00000001
	bne	a4,a5,000000002302DCFA

l2302DC8C:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.bnez	a5,000000002302DC44

l2302DC94:
	c.lw	s0,8(a4)
	c.lw	s0,92(a5)
	c.sub	a5,a4
	c.slli	a5,10
	c.srai	a5,00000010
	c.mv	a4,a5
	blt	zero,a5,000000002302DCA6

l2302DCA4:
	c.li	a4,00000001

l2302DCA6:
	slli	a5,a4,00000010
	lui	a3,00028008
	sh	a4,a3,+000001BC
	c.srai	a5,00000010
	c.lui	a4,FFFF8000
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+000001B6
	c.lw	s0,4(a5)
	c.beqz	a5,000000002302DCFA

l2302DCC4:
	lhu	a3,a5,+00000078
	c.lw	s0,8(a4)
	c.lw	a5,8(a5)
	c.sub	a4,a5
	c.slli	a4,05
	c.srli	a4,00000005
	and	a5,a4,a3
	c.li	a4,00000005
	sub	a5,a3,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,000000002302DCEA

l2302DCE4:
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010

l2302DCEA:
	c.srli	a5,00000001
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	lui	a4,00028008
	sh	a5,a4,+000001BA

l2302DCFA:
	lui	a5,0000A002
	c.andi	s1,0000000F
	c.add	s1,a5
	c.slli	s1,02
	sh	zero,s1,+00000000
	lbu	a5,s0,+0000007B
	c.li	a4,00000001
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002302DD20

l2302DD18:
	lhu	a0,s0,+00000074
	jal	ra,0000000023030CE0

l2302DD20:
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	lhu	a3,s0,+00000060
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000D8
	addi	a0,s0,+00000028
	c.add	a5,a4
	sh	a3,a5,+00000000
	lhu	a5,s1,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s1,+00000000
	lhu	a5,s1,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFF0
	ori	a5,a5,+00000002
	sh	a5,s1,+00000000
	lhu	a5,s0,+00000076
	sh	a5,s1,+00000002
	jal	ra,00000000230302F6
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00042026
	addi	a0,a0,+00000430
	c.addi	sp,00000010
	jal	zero,000000002302A2FE

l2302DD8A:
	c.jr	ra

;; lld_evt_delete_elt_push: 2302DD8C
;;   Called from:
;;     2302DEAA (in lld_evt_deffered_elt_handler)
;;     2302F0A4 (in lld_evt_update_create)
;;     2302F184 (in lld_evt_move_to_slave)
;;     2302F430 (in lld_evt_move_to_slave)
;;     2302F834 (in lld_evt_end)
;;     230316B8 (in lld_scan_start)
;;     2303236E (in lld_con_stop)
;;     23032D7E (in llm_end_evt_defer)
lld_evt_delete_elt_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	lbu	a5,a0,+0000007F
	c.bnez	a5,000000002302DDD2

l2302DDA4:
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a0,0000000C
	c.li	a1,00000000
	c.swsp	a2,00000084
	jal	ra,000000002302BA5A
	c.lwsp	a2,00000084
	c.sw	a0,4(s0)
	sb	s2,a0,+00000008
	sb	a2,a0,+00000009
	c.mv	a1,a0
	c.li	a5,00000001
	lui	a0,00042026
	sb	a5,s0,+0000007F
	addi	a0,a0,+00000450
	jal	ra,000000002302A2FE

l2302DDD2:
	csrrw	zero,mstatus,zero
	addi	a0,zero,+00000020
	jal	ra,000000002302A21E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000009
	c.addi16sp	00000020
	jal	zero,000000002302B838

;; lld_evt_deffered_elt_handler: 2302DDEE
lld_evt_deffered_elt_handler proc
	c.addi16sp	FFFFFFD0
	c.li	a0,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	jal	ra,000000002302B894
	addi	a1,sp,+0000000F
	addi	a0,sp,+0000000E
	jal	ra,000000002302DB4E
	c.mv	s0,a0
	c.li	s2,00000003
	c.li	s3,00000004
	c.li	s1,00000001
	c.li	s4,00000002

l2302DE1C:
	c.bnez	s0,000000002302DE32

l2302DE1E:
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

l2302DE32:
	lbu	a5,sp,+0000000E
	addi	s5,s0,+00000028
	bne	a5,s2,000000002302DE8A

l2302DE3E:
	lhu	a0,s0,+00000074
	c.mv	a1,s0
	jal	ra,000000002302D6EC
	lhu	a0,s0,+00000074
	jal	ra,000000002302D842

l2302DE50:
	c.mv	a0,s5
	jal	ra,000000002302FF44
	lbu	a5,sp,+0000000E
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	s1,a5,000000002302DE7A

l2302DE64:
	c.bnez	a0,000000002302DE7A

l2302DE66:
	lhu	a0,s0,+00000074
	addi	a5,a0,-00000002
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s1,a5,000000002302DEE6

l2302DE76:
	jal	ra,0000000023038318

l2302DE7A:
	addi	a1,sp,+0000000F
	addi	a0,sp,+0000000E
	jal	ra,000000002302DB4E
	c.mv	s0,a0
	c.j	000000002302DE1C

l2302DE8A:
	bne	a5,s3,000000002302DE98

l2302DE8E:
	lhu	a0,s0,+00000074
	jal	ra,000000002302D8EC
	c.j	000000002302DE50

l2302DE98:
	bne	a5,s1,000000002302DEB0

l2302DE9C:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.beqz	a5,000000002302DE50

l2302DEA4:
	c.li	a2,00000001
	c.li	a1,00000001

l2302DEA8:
	c.mv	a0,s0
	jal	ra,000000002302DD8C
	c.j	000000002302DE50

l2302DEB0:
	bne	a5,s4,000000002302DE50

l2302DEB4:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,72(a5)
	c.beqz	a5,000000002302DECC

l2302DEC0:
	addi	a0,s0,+00000048
	jal	ra,000000002302A36A
	jal	ra,000000002302CC7E

l2302DECC:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002302DEDC

l2302DED0:
	addi	a0,s0,+00000030
	jal	ra,000000002302A36A
	jal	ra,000000002302CC7E

l2302DEDC:
	csrrw	zero,mstatus,zero
	c.li	a2,00000000
	c.li	a1,00000000
	c.j	000000002302DEA8

l2302DEE6:
	jal	ra,0000000023032D22
	c.j	000000002302DE7A

;; lld_evt_channel_next: 2302DEEC
;;   Called from:
;;     2302EC46 (in lld_evt_schedule_next)
;;     2302ED16 (in lld_evt_schedule_next)
;;     2302EF1A (in lld_evt_move_to_master)
;;     2302F1E8 (in lld_evt_move_to_slave)
lld_evt_channel_next proc
	addi	a5,zero,+0000005C
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+0000009E
	c.add	a0,a5
	lhu	a4,a0,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	srai	a5,a4,00000008
	c.andi	a5,0000001F
	add	a1,a5,a1
	andi	a4,a4,+0000003F
	addi	a5,zero,+00000025
	c.add	a1,a4
	or	a1,a1,a5
	blt	a1,zero,000000002302DF3E

l2302DF22:
	lhu	a5,a0,+00000000
	c.slli	a1,10
	c.srai	a1,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	sh	a1,a0,+00000000
	c.jr	ra

l2302DF3E:
	addi	a1,a1,+00000025
	c.j	000000002302DF22

;; lld_evt_init: 2302DF44
;;   Called from:
;;     230311B2 (in lld_init)
lld_evt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042026
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	a5,s1,+00000430
	sh	zero,a5,+00000028
	sb	zero,a5,+0000002A
	lui	s3,00042026
	lui	s2,00042026
	c.beqz	a0,000000002302DFC8

l2302DF70:
	addi	a0,s3,+00000440
	jal	ra,0000000023030E2A
	addi	a0,s2,+00000448
	jal	ra,0000000023030E2A
	addi	s4,s1,+00000430
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s6,00042026

l2302DF90:
	lw	a5,s4,+00000000
	c.bnez	a5,000000002302DF9C

l2302DF96:
	lw	a5,s4,+00000008
	c.beqz	a5,000000002302DFB2

l2302DF9C:
	addi	a0,s1,+00000430
	jal	ra,000000002302A36A
	c.mv	s0,a0
	c.bnez	a0,000000002302E022

l2302DFA8:
	addi	a0,s6,+00000438
	jal	ra,000000002302A36A
	c.bnez	a0,000000002302E01A

l2302DFB2:
	csrrw	zero,mstatus,zero
	lui	s0,00042026

l2302DFBA:
	lw	a5,s4,+00000020
	c.bnez	a5,000000002302E048

l2302DFC0:
	addi	a0,zero,+00000020
	jal	ra,000000002302A250

l2302DFC8:
	addi	a0,s1,+00000430
	jal	ra,000000002302A2D6
	addi	a0,s3,+00000440
	jal	ra,000000002302A2D6
	addi	a0,s2,+00000448
	jal	ra,000000002302A2D6
	lui	a0,00042026
	addi	a0,a0,+00000450
	jal	ra,000000002302A2D6
	lui	a1,0002302E
	addi	a1,a1,-00000212
	c.li	a0,00000008
	jal	ra,000000002302B7EA
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a1,0002302E
	addi	a1,a1,+00000196
	c.li	a0,00000009
	c.addi16sp	00000020
	jal	zero,000000002302B7EA

l2302E01A:
	c.lw	a0,4(s0)
	jal	ra,000000002302BB4A
	c.beqz	s0,000000002302DFB2

l2302E022:
	addi	a0,s0,+00000028
	jal	ra,0000000023030760
	c.lw	s0,80(a0)
	c.beqz	a0,000000002302E038

l2302E02E:
	jal	ra,00000000230296C4
	c.lw	s0,80(a0)
	jal	ra,000000002302BB4A

l2302E038:
	c.lw	s0,4(a0)
	c.beqz	a0,000000002302E040

l2302E03C:
	jal	ra,000000002302BB4A

l2302E040:
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	c.j	000000002302DF90

l2302E048:
	addi	a0,s0,+00000450
	jal	ra,000000002302A36A
	jal	ra,000000002302BB4A
	c.j	000000002302DFBA

;; lld_evt_init_evt: 2302E056
;;   Called from:
;;     2302ED8A (in lld_evt_scan_create)
;;     2302EFEA (in lld_evt_update_create)
;;     2302F17A (in lld_evt_move_to_slave)
;;     2302F4E6 (in lld_evt_slave_update)
;;     2302F5D0 (in lld_evt_adv_create)
;;     23031780 (in lld_con_start)
;;     23031A8C (in lld_con_start)
;;     23031FE2 (in lld_con_update_after_param_req)
lld_evt_init_evt proc
	lui	a5,00042025
	lbu	a5,a5,+00000758
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	sb	a5,a0,+00000054
	sb	zero,a0,+00000052
	sb	zero,a0,+00000057
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.addi	a0,00000008
	jal	ra,000000002302A2D6
	addi	a0,s0,+00000010
	jal	ra,000000002302A2D6
	addi	a0,s0,+00000018
	jal	ra,000000002302A2D6
	addi	a0,s0,+00000020
	jal	ra,000000002302A2D6
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; lld_evt_elt_delete: 2302E0A8
;;   Called from:
;;     2302E204 (in lld_evt_delete_elt_handler)
;;     23031520 (in lld_adv_stop)
;;     230316CC (in lld_scan_stop)
lld_evt_elt_delete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s7,00000084
	c.mv	s1,a0
	c.mv	s5,a1
	c.mv	s6,a2
	csrrs	s4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s3,00042026
	c.mv	a1,a0
	addi	a0,s3,+00000430
	jal	ra,000000002302A45A
	c.beqz	a0,000000002302E10C

l2302E0DA:
	lbu	a5,s1,+0000007E
	addi	a0,zero,+00000020
	c.li	s0,00000000
	ori	a5,a5,+00000010
	sb	a5,s1,+0000007E
	jal	ra,000000002302A21E

l2302E0F0:
	csrrw	zero,mstatus,zero
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

l2302E10C:
	c.mv	s0,a0
	c.li	s7,00000001

l2302E110:
	c.mv	a0,s1
	jal	ra,000000002302DBD4
	c.mv	s2,a0
	c.bnez	s1,000000002302E186

l2302E11A:
	c.beqz	a0,000000002302E0F0

l2302E11C:
	c.lw	a0,4(s0)

l2302E11E:
	beq	s6,zero,000000002302E13E

l2302E122:
	lhu	a1,s0,+00000074
	bltu	s7,a1,000000002302E190

l2302E12A:
	c.slli	a1,08
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	a2,00000002

l2302E136:
	addi	a0,zero,+00000200
	jal	ra,000000002302BD84

l2302E13E:
	c.mv	a0,s0
	jal	ra,0000000023029C6E
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s3,+00000430
	jal	ra,000000002302A39E
	beq	s5,zero,000000002302E15C

l2302E154:
	addi	a0,s0,+00000028
	jal	ra,0000000023030760

l2302E15C:
	c.lw	s0,80(a0)
	c.beqz	a0,000000002302E16A

l2302E160:
	jal	ra,00000000230296C4
	c.lw	s0,80(a0)
	jal	ra,000000002302BB4A

l2302E16A:
	c.lw	s0,4(a0)
	c.beqz	a0,000000002302E172

l2302E16E:
	jal	ra,000000002302BB4A

l2302E172:
	c.mv	a0,s0
	jal	ra,000000002302BB4A
	beq	s2,zero,000000002302E188

l2302E17C:
	c.mv	a0,s2
	jal	ra,000000002302BB4A
	c.li	s0,00000001
	c.j	000000002302E110

l2302E186:
	c.beqz	s0,000000002302E18C

l2302E188:
	c.li	s0,00000001
	c.j	000000002302E0F0

l2302E18C:
	c.mv	s0,s1
	c.j	000000002302E11E

l2302E190:
	c.li	a2,00000002
	c.li	a1,00000000
	c.j	000000002302E136

;; lld_evt_delete_elt_handler: 2302E196
lld_evt_delete_elt_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000009
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002302B894
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042026
	addi	a3,a5,+00000430
	c.lw	a3,32(s0)
	csrrw	zero,mstatus,zero
	c.li	s2,00000001
	addi	s1,a5,+00000430
	lui	s3,00042026

l2302E1CC:
	c.bnez	s0,000000002302E1F8

l2302E1CE:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,32(a5)
	c.bnez	a5,000000002302E1E2

l2302E1DA:
	addi	a0,zero,+00000020
	jal	ra,000000002302A250

l2302E1E2:
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302E1F8:
	c.lw	s0,4(a0)
	c.beqz	a0,000000002302E20A

l2302E1FC:
	lbu	a2,s0,+00000009
	lbu	a1,s0,+00000008
	jal	ra,000000002302E0A8
	c.mv	s2,a0

l2302E20A:
	lw	s4,s0,+00000000
	beq	s2,zero,000000002302E234

l2302E212:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s3,+00000450
	jal	ra,000000002302A39E
	csrrw	zero,mstatus,zero
	c.mv	a0,s0
	jal	ra,000000002302BB4A

l2302E230:
	c.mv	s0,s4
	c.j	000000002302E1CC

l2302E234:
	csrrs	a5,mstatus,zero
	csrrci	a4,mstatus,00000008
	csrrw	zero,mstatus,zero
	c.j	000000002302E230

;; lld_evt_drift_compute: 2302E242
;;   Called from:
;;     2302E292 (in lld_evt_rxwin_compute)
;;     2302EC5C (in lld_evt_schedule_next)
;;     2302F20C (in lld_evt_move_to_slave)
;;     2302F544 (in lld_evt_slave_update)
lld_evt_drift_compute proc
	lui	a5,00042026
	lbu	a5,a5,+00000458
	lui	a4,000230B5
	addi	a4,a4,-000000F0
	c.slli	a1,01
	c.slli	a5,01
	c.add	a5,a4
	c.add	a4,a1
	lhu	a5,a5,+00000000
	lhu	a4,a4,+00000000
	c.add	a5,a4
	add	a5,a5,a0
	addi	a0,zero,+00000029
	add	a0,a5,a0
	c.srli	a0,00000010
	c.jr	ra

;; lld_evt_rxwin_compute: 2302E274
;;   Called from:
;;     2302ECF4 (in lld_evt_schedule_next)
lld_evt_rxwin_compute proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a0,a0,+00000062
	lhu	a5,s0,+00000078
	lbu	a1,s0,+0000006E
	c.addi	a0,00000001
	add	a0,a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,000000002302E242
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	c.sw	s0,88(a0)
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000A2
	lbu	a1,s0,+00000071
	addi	a0,s0,+00000028
	c.lwsp	a2,00000020
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.sw	s0,84(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	jal	zero,000000002302D988

;; lld_evt_restart: 2302E2C6
;;   Called from:
;;     2302EAF4 (in lld_evt_elt_insert)
;;     2302EB3C (in lld_evt_canceled)
;;     2302F7FA (in lld_evt_end)
lld_evt_restart proc
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
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	s5,a0,+0000007B
	c.li	a5,00000004
	c.mv	s0,a0
	bltu	a5,s5,000000002302E346

l2302E2EC:
	lui	a4,000230B5
	slli	a5,s5,00000002
	addi	a4,a4,+000007F4
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s6,a1
	addi	s7,a0,+00000028
	c.jr	a5
2302E304             B7 67 02 42 83 A7 47 47 B7 54 0B 23     .g.B..GG.T.#
2302E310 93 84 04 F0 83 C7 17 02 95 CF EF 70 F3 10 18 44 ...........p...D
2302E320 83 57 84 07 3D 89 05 05 BA 97 79 89 AA 97 96 07 .W..=.....y.....
2302E330 95 83 1C C4 83 C7 B4 00 19 67 13 07 07 0A BD 8B .........g......
2302E340 D9 8F 23 18 F4 00                               ..#...         

l2302E346:
	lbu	a0,s0,+0000007E
	c.srli	a0,00000004
	xori	a0,a0,+00000001
	c.andi	a0,00000001
	c.j	000000002302E38C
2302E354             EF F0 9F 84 03 C7 D4 00 74 4C E9 77     ........tL.w
2302E360 93 87 07 05 3D 8B 5D 8F B7 07 00 08 23 18 E4 00 ....=.].....#...
2302E370 FD 17 33 87 A6 40 08 C4 54 C4 7D 8F 37 06 00 04 ..3..@..T.}.7...
2302E380 E3 73 E6 FC 15 8D E9 8F 01 45 D5 DF             .s.......E..   

l2302E38C:
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
2302E3A8                         83 47 05 06 A9 C7 83 57         .G.....W
2302E3B0 45 07 13 07 C0 05 B3 87 E7 02 37 87 00 28 93 06 E.........7..(..
2302E3C0 07 0E B6 97 83 D7 07 00 BD 83 95 C7 83 47 15 06 .............G..
2302E3D0 9D C3 83 56 07 1F 83 57 27 1F C2 07 D5 8F 1C D5 ...V...W'.......
2302E3E0 83 57 47 1F 13 F7 F7 3F 93 07 00 27 99 8F 23 16 .WG....?...'..#.
2302E3F0 F5 02 01 45 61 BF 38 4C 83 57 84 07 B7 06 00 08 ...Ea.8L.W......
2302E400 FD 16 BA 97 33 F7 D7 00 7C 48 13 06 10 27 38 CC ....3...|H...'8.
2302E410 B3 D7 C7 02 18 C4 BA 97 37 57 0B 23 03 47 17 F0 ........7W.#.G..
2302E420 F5 8F E9 76 3D 8B 93 86 06 05 55 8F 7C CC 23 18 ...v=.....U.|.#.
2302E430 E4 00 5C C4 09 BF 83 57 C5 05 03 57 05 06 93 86 ..\....W...W....
2302E440 F7 FF C2 06 C1 82 63 16 D7 1E 83 46 D5 06 63 86 ......c....F..c.
2302E450 06 64 85 47 63 8A F6 04 89 47 63 87 F6 1C 63 07 .d.Gc....Gc...c.
2302E460 0B 00 03 55 44 07 85 45 EF F0 5F A8 18 44 83 57 ...UD..E.._..D.W
2302E470 84 07 23 11 04 06 BA 97 03 57 04 06 96 07 95 83 ..#......W......
2302E480 1C C4 05 07 83 47 E4 07 42 07 41 83 23 10 E4 06 .....G..B.A.#...
2302E490 93 F6 27 00 63 87 06 1C 95 46 E3 F6 E6 EA 93 E7 ..'.c....F......
2302E4A0 07 01 23 0F F4 06 45 B5 83 56 45 07 44 41 37 66 ..#...E..VE.DA7f
2302E4B0 02 42 8A 06 13 07 86 42 36 97 1C 43 83 56 85 07 .B.....B6..C.V..
2302E4C0 03 D7 84 07 93 85 84 02 13 09 86 42 63 9E E6 00 ...........Bc...
2302E4D0 83 56 E5 05 03 D7 E4 05 63 98 E6 00 83 D6 47 05 .V......c.....G.
2302E4E0 03 D7 67 05 63 88 E6 00 03 D7 C7 05 13 67 07 08 ..g.c........g..
2302E4F0 23 9E E7 04 83 57 04 06 13 06 80 05 5E 85 23 90 #....W......^.#.
2302E500 F4 06 83 57 C4 05 23 9E F4 04 83 47 04 07 23 88 ...W..#....G..#.
2302E510 F4 06 3C 44 BC C4 7C 44 FC C4 1C 58 9C D8 5C 58 ..<D..|D...X..\X
2302E520 DC D8 3C 40 BC C0 7C 40 FC C0 1C 5C 9C DC 5C 5C ..<@..|@...\..\\
2302E530 DC DC 83 57 44 07 23 9A F4 06 83 47 E4 07 23 8F ...WD.#....G..#.
2302E540 F4 06 83 47 D4 06 A3 86 F4 06 83 57 84 06 23 94 ...G.......W..#.
2302E550 F4 06 83 57 A4 06 23 95 F4 06 83 57 64 07 03 D7 ...W..#....Wd...
2302E560 84 07 23 9B F4 06 3C 48 BC C8 9C 44 99 8F 96 07 ..#...<H...D....
2302E570 95 83 1C C4 83 D6 84 07 B8 48 B3 F7 D7 02 93 06 .........H......
2302E580 10 27 23 13 F7 00 BC 48 03 D7 84 07 23 92 E7 00 .'#....H....#...
2302E590 03 D7 24 01 BC 48 33 77 D7 02 33 37 E0 00 23 94 ..$..H3w..37..#.
2302E5A0 E7 00 83 D7 24 01 B8 48 B3 D7 D7 02 83 56 87 00 ....$..H.....V..
2302E5B0 B6 97 23 14 F7 00 83 47 D4 07 A3 8E F4 06 B7 F7 ..#....G........
2302E5C0 00 42 83 A7 07 3D 82 97 23 22 04 00 23 A2 04 00 .B...=..#"..#...
2302E5D0 23 A8 04 04 83 57 44 07 22 85 8A 07 CA 97 9C 43 #....WD."......C
2302E5E0 03 D6 07 05 83 D5 E7 04 EF 20 B0 06 83 57 44 07 ......... ...WD.
2302E5F0 13 07 C0 05 26 85 B3 87 E7 02 37 87 00 28 93 06 ....&.....7..(..
2302E600 87 0A 13 07 67 0A 01 46 81 45 BE 96 83 D6 06 00 ....g..F.E......
2302E610 BA 97 C2 06 C1 82 23 90 D7 00 EF F0 2F F7 03 55 ......#...../..U
2302E620 44 07 EF F0 CF 93 25 BD 03 55 45 07 EF F0 8F 98 D.....%..UE.....
2302E630 3D B5 E3 16 F7 E2 83 47 D5 06 05 47 63 8A E7 00 =......G...Gc...
2302E640 09 47 63 8D E7 00 A3 06 04 06 23 1E 04 04 01 BD .Gc.......#.....
2302E650 01 46 8D 45 22 85 EF F0 AF C9 F5 B7 01 46 91 45 .F.E"........F.E
2302E660 D5 BF E3 12 0B CE 95 8B 91 C3 91 4A D6 85 22 85 ...........J..".
2302E670 EF 20 B0 0B C9 B9 99 E5 83 47 E5 07 93 F7 F7 07 . .......G......
2302E680 23 0F F5 06 83 57 44 07 13 07 C0 05 B3 87 E7 02 #....WD.........
2302E690 37 87 00 28 93 06 07 0E BE 96 83 D9 06 00 93 D9 7..(............
2302E6A0 F9 00 63 8A 09 06 4E 89 63 1C 0B 06 13 07 27 0A ..c...N.c.....'.
2302E6B0 BA 97 39 47 23 90 E7 00 F3 27 00 30 73 77 04 30 ..9G#....'.0sw.0
2302E6C0 18 58 45 CB 73 90 07 30 23 11 04 06 01 49 83 57 .XE.s..0#....I.W
2302E6D0 44 07 13 07 C0 05 B3 87 E7 02 37 87 00 28 93 06 D.........7..(..
2302E6E0 C7 0D 13 06 E7 0D 13 07 07 0E BE 96 3E 96 83 D5 ............>...
2302E6F0 06 00 83 56 06 00 BA 97 C2 06 CD 8E 14 D4 83 D7 ...V............
2302E700 07 00 A3 08 04 06 13 F7 F7 3F 93 07 00 27 99 8F .........?...'..
2302E710 23 16 F4 02 31 A0 13 19 0B 01 13 59 09 01 85 49 #...1......Y...I
2302E720 83 47 E4 07 13 F7 07 01 E3 1F 07 C0 03 5A 24 06 .G...........Z$.
2302E730 03 55 84 07 13 F7 87 00 05 0A 33 0A 45 03 42 0A .U........3.E.B.
2302E740 13 5A 0A 01 1D C3 83 56 C4 05 03 56 04 06 13 87 .Z.....V...V....
2302E750 F6 FF 42 07 41 83 63 19 E6 2E 83 47 D4 06 05 47 ..B.A.c....G...G
2302E760 63 85 E7 0A 09 47 63 8C E7 2C 22 85 EF F0 9F B0 c....Gc..,".....
2302E770 A5 A4 38 40 21 FB 73 90 07 30 3C 44 B1 F7 03 47 ..8@!.s..0<D...G
2302E780 E4 07 93 77 97 00 A9 F3 83 47 F4 06 95 FF 03 59 ...w.....G.....Y
2302E790 E4 05 B7 66 02 42 83 47 E4 06 83 C6 86 45 7D 19 ...f.B.G.....E}.
2302E7A0 42 09 D5 8F 13 59 09 01 81 EF 93 06 20 1C CA 87 B....Y...... ...
2302E7B0 63 F4 26 01 93 07 20 1C 13 99 07 01 13 59 09 01 c.&... ......Y..
2302E7C0 83 47 D4 06 85 C7 83 57 C4 05 03 56 04 06 93 86 .G.....W...V....
2302E7D0 F7 FF C2 06 C1 82 63 5B D6 00 91 8F F9 17 63 73 ......c[......cs
2302E7E0 F9 00 CA 87 13 99 07 01 13 59 09 01 85 47 63 F6 .........Y...Gc.
2302E7F0 27 01 13 67 07 F8 23 0F E4 06 93 09 19 00 C2 09 '..g..#.........
2302E800 23 11 24 07 93 D9 09 01 D9 B5 03 57 44 07 44 40 #.$........WD.D@
2302E810 B7 67 02 42 0A 07 93 87 87 42 BA 97 03 D7 84 07 .g.B.....B......
2302E820 93 85 84 02 9C 43 63 1E A7 00 83 56 E4 05 03 D7 .....Cc....V....
2302E830 E4 05 63 98 E6 00 83 D6 47 05 03 D7 67 05 63 88 ..c.....G...g.c.
2302E840 E6 00 03 D7 C7 05 13 67 07 08 23 9E E7 04 83 57 .......g..#....W
2302E850 04 06 13 0D 20 4E 93 0C C0 05 23 90 F4 06 1C 54 .... N....#....T
2302E860 37 8C 00 28 5E 85 9C D4 5C 54 DC D4 3C 44 BC C4 7..(^...\T..<D..
2302E870 7C 44 FC C4 1C 58 9C D8 5C 58 DC D8 83 47 04 07 |D...X..\X...G..
2302E880 23 88 F4 06 3C 40 BC C0 7C 40 FC C0 1C 5C 9C DC #...<@..|@...\..
2302E890 5C 5C DC DC 83 57 64 06 23 93 F4 06 83 47 C4 06 \\...Wd.#....G..
2302E8A0 23 86 F4 06 83 57 C4 05 23 9E F4 04 83 47 E4 07 #....W..#....G..
2302E8B0 23 8F F4 06 83 47 D4 06 83 D6 44 07 03 C7 94 01 #....G....D.....
2302E8C0 A3 86 F4 06 83 47 E4 06 B3 86 96 03 23 87 F4 06 .....G......#...
2302E8D0 83 57 84 06 23 94 F4 06 83 57 A4 06 23 95 F4 06 .W..#....W..#...
2302E8E0 83 57 64 07 23 9B F4 06 3C 48 23 99 A4 01 BC C8 .Wd.#...<H#.....
2302E8F0 83 47 C4 06 B3 87 A7 03 FC C8 83 47 D4 07 A3 8E .G.........G....
2302E900 F4 06 83 D7 84 07 99 8F C2 07 13 07 8C 0A BA 96 ................
2302E910 C1 83 23 90 F6 00 83 56 64 06 1C 44 B8 48 86 06 ..#....Vd..D.H..
2302E920 36 9A 83 D6 84 07 42 0A 13 5A 0A 01 B3 F7 D7 02 6.....B..Z......
2302E930 13 0C 2C 0A 23 13 F7 00 BC 48 03 D7 84 07 23 92 ..,.#....H....#.
2302E940 E7 00 03 D6 24 01 13 07 10 27 BC 48 33 76 E6 02 ....$....'.H3v..
2302E950 33 36 C0 00 23 94 C7 00 BC 48 83 D6 24 01 13 06 36..#....H..$...
2302E960 80 05 B3 D6 E6 02 03 D7 87 00 BA 96 23 94 D7 00 ............#...
2302E970 B7 F7 00 42 83 A7 07 3D 82 97 23 22 04 00 23 11 ...B...=..#"..#.
2302E980 04 06 01 46 81 45 26 85 23 A2 04 00 23 A8 04 04 ...F.E&.#...#...
2302E990 EF F0 CF BF 03 55 44 07 EF E0 7F DC 83 45 E4 06 .....UD......E..
2302E9A0 52 85 EF F0 1F 8A 03 47 C4 06 83 57 44 07 85 45 R......G...WD..E
2302E9B0 33 07 A7 03 B3 87 97 03 3A 95 28 CC 5E 85 E2 97 3.......:.(.^...
2302E9C0 83 D7 07 00 7C C8 EF E0 3F FC 85 47 23 06 04 06 ....|...?..G#...
2302E9D0 23 13 04 06 A3 08 F4 06 D2 85 22 85 EF F0 CF 84 #.........".....
2302E9E0 83 57 04 06 23 11 04 06 BE 99 23 10 34 07 63 09 .W..#.....#.4.c.
2302E9F0 09 00 03 55 44 07 93 15 09 01 C1 85 EF F0 0F CF ...UD...........
2302EA00 83 57 C4 05 03 57 04 06 FD 17 C2 07 C1 83 63 1B .W...W........c.
2302EA10 F7 00 83 47 D4 06 99 C7 83 47 E4 07 93 E7 87 00 ...G.....G......
2302EA20 23 0F F4 06 83 47 E4 07 93 F6 27 00 E3 96 06 A6 #....G....'.....
2302EA30 E3 1B 0B 90 95 8B E3 9B 07 C2 8D 4A 05 B9 03 55 ...........J...U
2302EA40 44 07 EF E0 3F D7 15 B3 63 1F D6 02 83 47 D4 06 D...?...c....G..
2302EA50 05 47 63 8F E7 00 09 47 63 84 E7 02 83 47 E4 07 .Gc....Gc....G..
2302EA60 A3 06 04 06 23 1E 04 04 DD 9B 23 0F F4 06 F5 B9 ....#.....#.....
2302EA70 23 13 04 06 01 46 8D 45 22 85 EF F0 6F 87 F9 BF #....F.E"...o...
2302EA80 01 46 91 45 D5 BF DD 9B 23 0F F4 06 F9 B9 1C 45 .F.E....#......E
2302EA90 91 07 96 07 95 83 1C C5 7D B0 E3 12 F7 9C 65 B6 ........}.....e.

;; lld_evt_elt_insert: 2302EAA0
;;   Called from:
;;     2302EB4C (in lld_evt_canceled)
;;     2302ED5A (in lld_evt_schedule_next)
;;     2302F810 (in lld_evt_end)
;;     230314D6 (in lld_adv_start)
;;     23031682 (in lld_scan_start)
;;     23031CAC (in lld_con_start)
;;     23031E5C (in lld_move_to_master)
;;     23032646 (in lld_move_to_slave)
;;     230327EE (in lld_test_mode_tx)
;;     23032962 (in lld_test_mode_rx)
lld_evt_elt_insert proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	s1,00000001
	c.li	s3,0000001E

l2302EAB4:
	c.mv	a0,s0
	jal	ra,0000000023029A00
	beq	a0,s1,000000002302EADE

l2302EABE:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.mv	a0,s0
	jal	ra,000000002302DB28
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302EADE:
	beq	s2,zero,000000002302EAF0

l2302EAE2:
	lbu	a5,s0,+00000016
	bltu	s3,a5,000000002302EAF0

l2302EAEA:
	c.addi	a5,00000001
	sb	a5,s0,+00000016

l2302EAF0:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302E2C6
	c.bnez	a0,000000002302EAB4

l2302EAFA:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002302DAF0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000008
	c.addi16sp	00000020
	jal	zero,000000002302B838

;; lld_evt_canceled: 2302EB16
lld_evt_canceled proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302DBD4
	c.beqz	a0,000000002302EB28

l2302EB24:
	jal	ra,000000002302BB4A

l2302EB28:
	lbu	a5,s0,+00000016
	c.li	a4,0000001E
	bltu	a4,a5,000000002302EB38

l2302EB32:
	c.addi	a5,00000001
	sb	a5,s0,+00000016

l2302EB38:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302E2C6
	c.beqz	a0,000000002302EB50

l2302EB42:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,000000002302EAA0

l2302EB50:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002302DAF0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000008
	c.addi	sp,00000010
	jal	zero,000000002302B838

;; lld_evt_schedule_next: 2302EB66
;;   Called from:
;;     23035504 (in llc_llcp_send)
;;     23039716 (in llc_hci_acl_data_tx_handler)
lld_evt_schedule_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002302988C
	lbu	a4,s0,+0000007B
	c.li	a5,00000004
	bne	a4,a5,000000002302ED5E

l2302EB86:
	lbu	a3,s0,+0000007E
	slli	a5,a3,00000018
	c.srai	a5,00000018
	bge	a5,zero,000000002302ED5E

l2302EB94:
	lbu	s2,s0,+00000019
	lui	s1,00008000
	lhu	s3,s0,+00000078
	addi	a5,s1,-00000001
	c.add	s2,a0
	and	s2,s2,a5
	add	a4,s3,s2
	and	a2,a4,a5
	c.lw	s0,8(a4)
	c.sub	a4,a2
	lui	a2,0000030C
	c.and	a4,a5
	addi	a2,a2,-00000500
	bltu	a2,a4,000000002302ED5E

l2302EBC4:
	c.lw	s0,40(s1)
	sub	s1,s1,s2
	c.and	s1,a5
	bltu	s1,s3,000000002302ED5E

l2302EBD0:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,64(a5)
	c.beqz	a5,000000002302EBE4

l2302EBDC:
	ori	a3,a3,+00000004
	sb	a3,s0,+0000007E

l2302EBE4:
	lui	a0,00042026
	c.mv	a1,s0
	addi	a0,a0,+00000430
	jal	ra,000000002302A45A
	c.mv	s4,a0
	c.bnez	a0,000000002302EC08

l2302EBF6:
	c.mv	a0,s0
	jal	ra,000000002302DBD4
	c.beqz	a0,000000002302EC02

l2302EBFE:
	jal	ra,000000002302BB4A

l2302EC02:
	c.mv	a0,s0
	jal	ra,0000000023029C6E

l2302EC08:
	csrrw	zero,mstatus,zero
	bne	s4,zero,000000002302ED5E

l2302EC10:
	srl	s1,s1,s3
	lhu	a4,s0,+00000078
	lhu	a0,s0,+00000074
	addi	a5,s1,+00000001
	add	a4,a5,a4
	c.lw	s0,40(a5)
	c.slli	s1,10
	c.srli	s1,00000010
	sub	a1,zero,s1
	c.slli	a1,10
	c.srai	a1,00000010
	c.sub	a5,a4
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,40(a5)
	lhu	a5,s0,+00000060
	c.addi	a5,FFFFFFFF
	c.sub	a5,s1
	sh	a5,s0,+00000060
	jal	ra,000000002302DEEC
	lbu	a5,s0,+0000007E
	lbu	a1,s0,+0000006E
	c.mv	a0,s1
	andi	a5,a5,+0000007F
	sb	a5,s0,+0000007E
	jal	ra,000000002302E242
	lhu	a4,s0,+00000074
	addi	a5,zero,+0000005C
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000000A2
	c.add	a4,a5
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a3,a5,00000010
	c.srai	a3,00000010
	bge	a3,zero,000000002302EC94

l2302EC88:
	c.slli	a5,11
	c.srli	a5,00000011
	addi	a3,zero,+00000271
	add	a5,a5,a3

l2302EC94:
	c.slli	a0,01
	sub	a0,a5,a0
	c.li	a5,0000000D
	bgeu	a5,a0,000000002302ECFA

l2302ECA0:
	c.lui	a5,00004000
	bltu	a0,a5,000000002302ECB6

l2302ECA6:
	addi	a5,zero,+00000271
	addi	a0,a0,+00000270
	srl	a0,a0,a5
	c.lui	a5,00008000
	c.or	a0,a5

l2302ECB6:
	slli	a5,a0,00000010
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	lhu	s4,s0,+00000078
	lui	s1,00008000
	lui	s3,0000030C
	c.sw	s0,84(a0)
	c.addi	s1,FFFFFFFF
	addi	s3,s3,-00000500

l2302ECD4:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002302DA28
	c.lw	s0,8(a5)
	sub	a5,s2,a5
	c.and	a5,s1
	bltu	s3,a5,000000002302ECFE

l2302ECE8:
	lhu	a5,s0,+00000062
	c.mv	a0,s0
	c.addi	a5,00000001
	sh	a5,s0,+00000062
	jal	ra,000000002302E274
	c.j	000000002302ECD4

l2302ECFA:
	c.li	a0,0000000E
	c.j	000000002302ECB6

l2302ECFE:
	lhu	a1,s0,+00000062
	lhu	a5,s0,+00000060
	lhu	a0,s0,+00000074
	c.add	a5,a1
	c.addi	a5,00000001
	c.slli	a1,10
	sh	a5,s0,+00000060
	c.srai	a1,00000010
	jal	ra,000000002302DEEC
	lhu	a4,s0,+0000005C
	lbu	a5,s0,+0000007E
	lhu	a3,s0,+00000060
	c.addi	a4,FFFFFFFF
	andi	a5,a5,+000000F7
	c.slli	a4,10
	sb	a5,s0,+0000007E
	c.srli	a4,00000010
	bne	a3,a4,000000002302ED46

l2302ED38:
	lbu	a4,s0,+0000006D
	c.beqz	a4,000000002302ED46

l2302ED3E:
	ori	a5,a5,+00000008
	sb	a5,s0,+0000007E

l2302ED46:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002302EAA0

l2302ED5E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_scan_create: 2302ED70
;;   Called from:
;;     23031564 (in lld_scan_start)
lld_evt_scan_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,000000002302965E
	c.mv	s0,a0
	addi	a0,a0,+00000028
	jal	ra,000000002302E056
	c.li	a5,00000001
	sb	a5,s0,+0000007B
	addi	a5,zero,+0000005C
	sh	s1,s0,+00000074
	add	s1,s1,a5
	c.lwsp	a2,00000064
	c.mv	a0,s0
	c.addi	a1,00000001
	sh	a1,s0,+0000005E
	c.li	a1,00000000
	addi	s1,s1,+0000008E
	sh	s1,s0,+00000076
	jal	ra,0000000023030F2A
	lui	a5,0002302E
	addi	a5,a5,-000003EA
	c.sw	s0,28(a5)
	lui	a5,0002302F
	addi	a5,a5,-000004EA
	c.sw	s0,36(a5)
	lui	a5,0002302E
	addi	a5,a5,-00000512
	c.sw	s0,32(a5)
	c.lui	a5,00001000
	addi	a5,a5,-0000063C
	sh	a5,s0,+00000012
	lui	a5,000230B5
	lbu	a5,a5,-000000FF
	c.lui	a4,00006000
	addi	a4,a4,+00000050
	c.andi	a5,0000000F
	c.or	a5,a4
	sh	a5,s0,+00000010
	addi	a5,zero,+00000200
	sb	zero,s0,+00000017
	sh	a5,s0,+00000018
	jal	ra,000000002302988C
	c.sw	s0,8(a0)
	c.lwsp	t3,00000020
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_move_to_master: 2302EE14
;;   Called from:
;;     23031D22 (in lld_move_to_master)
lld_evt_move_to_master proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s3,00000094
	c.mv	s0,a0
	c.swsp	a3,00000084
	c.mv	s6,a1
	lw	s3,a0,+00000004
	jal	ra,000000002302968E
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	lui	s8,00028008
	add	a5,a5,a4
	addi	a4,s8,+000000CC
	lhu	s4,s3,+00000078
	lw	s1,s3,+00000008
	c.mv	s5,a0
	c.mv	a0,s0
	addi	s8,s8,+000003D2
	c.add	a5,a4
	lhu	s7,a5,+00000000
	sw	zero,s0,+00000004
	jal	ra,00000000230316C0
	jal	ra,000000002302988C
	c.lwsp	a2,000000A4
	c.li	a5,0000000E
	and	s1,s1,s4
	c.slli	s7,01
	c.slli	s7,10
	lui	a2,00004000
	srli	s7,s7,00000010
	add	a3,a3,a5
	lhu	a5,s0,+0000002C
	slli	s2,s1,00000010
	srli	s2,s2,00000010
	c.add	a3,s8
	lhu	a4,a3,+00000000
	c.srli	a4,00000008
	c.slli	a4,03
	c.add	a5,a4
	addi	a5,a5,+0000048E
	addi	a4,zero,+00000271
	srl	a5,a5,a4
	c.lw	s0,40(a4)
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	lui	a4,00008000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sub	s1,a5,s1
	c.and	s1,a4
	and	s1,s1,s4
	add	s0,s4,a5
	c.sub	s0,s1
	c.and	s0,a4
	sub	a3,s0,a5
	c.and	a3,a4
	bgeu	a2,a3,000000002302EEDC

l2302EED4:
	c.sub	a5,s0
	c.and	a5,a4
	sub	a3,zero,a5

l2302EEDC:
	bge	a3,s7,000000002302EEE6

l2302EEE0:
	c.add	s0,s4
	c.slli	s0,05
	c.srli	s0,00000005

l2302EEE6:
	lui	a5,00008000
	sub	s1,a0,s0
	c.addi	a5,FFFFFFFF
	c.and	s1,a5
	lui	a4,00004000
	bgeu	a4,s1,000000002302EF04

l2302EEFA:
	sub	a0,s0,a0
	c.and	a0,a5
	c.bnez	a0,000000002302EF2E

l2302EF02:
	c.li	s1,00000000

l2302EF04:
	xor	s1,s1,s4
	c.mv	a0,s6
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	add	s4,s1,s4
	slli	a1,s1,00000010
	c.srai	a1,00000010
	jal	ra,000000002302DEEC
	lhu	a5,s3,+00000060
	c.add	s1,a5
	sh	s1,s3,+00000060
	c.add	s0,s4
	c.slli	s0,05
	c.srli	s0,00000005

l2302EF2E:
	lhu	a5,s3,+00000078
	sw	s0,s3,+00000008
	addi	a4,zero,+00000271
	sh	a5,s5,+00000004
	lhu	a5,s3,+00000012
	c.mv	a0,s5
	srl	a5,a5,a4
	addi	a4,zero,+0000005C
	sh	a5,s5,+00000008
	lhu	a5,s3,+00000074
	sh	s2,s5,+00000006
	sh	zero,s5,+0000000C
	sh	a5,s5,+0000000A
	lhu	a5,s3,+00000074
	add	a5,a5,a4
	addi	a5,a5,+0000008E
	sh	a5,s5,+0000000E
	jal	ra,00000000230296B6
	c.mv	a0,s3
	sw	s5,s3,+00000050
	c.li	a1,00000002
	jal	ra,0000000023030F2A
	lbu	a5,s3,+0000007E
	c.mv	a0,s3
	ori	a5,a5,+00000002
	sb	a5,s3,+0000007E
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

;; lld_evt_update_create: 2302EFA6
;;   Called from:
;;     23031EB0 (in lld_con_update_req)
lld_evt_update_create proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	c.mv	s2,a0
	addi	a0,zero,+00000058
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	ra,000000AC
	c.mv	s4,a1
	c.mv	s7,a2
	c.mv	s6,a3
	c.mv	s3,a4
	c.mv	s5,a5
	c.mv	s1,a6
	jal	ra,000000002302965E
	c.mv	s0,a0
	beq	a0,zero,000000002302F0F8

l2302EFD6:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	addi	a2,zero,+0000002C
	c.mv	a1,s2
	c.jalr	a5
	addi	a0,s0,+00000028
	jal	ra,000000002302E056
	c.li	a5,00000003
	c.addi	s3,00000001
	sh	s3,s0,+0000005E
	sb	a5,s0,+0000007B
	lhu	a5,s2,+00000074
	addi	a4,zero,+0000005C
	c.addi4spn	a1,0000000C
	sh	a5,sp,+00000028
	add	a5,a5,a4
	c.addi4spn	a0,00000018
	sh	s7,sp,+00000018
	sh	s6,sp,+0000001A
	sh	s4,sp,+00000020
	c.swsp	s4,0000008C
	sb	s5,sp,+00000022
	sb	zero,sp,+00000026
	sh	zero,sp,+0000002A
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000002E
	jal	ra,0000000023029DE2
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sh	zero,sp,+00000024
	sb	zero,sp,+0000002C
	jal	ra,0000000023029704
	c.bnez	a0,000000002302F09E

l2302F046:
	lhu	a5,sp,+0000000C
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	sh	a5,s0,+00000078
	jal	ra,0000000023030C94
	lhu	a3,s2,+0000005E
	c.li	a5,00000006
	lhu	a2,s2,+00000060
	add	a3,a3,a5
	c.lw	s0,8(a0)
	slli	a5,a3,00000010
	lhu	a3,s2,+00000078
	c.srli	a5,00000010
	c.add	a2,a5
	add	a3,a3,a5
	lw	a5,s2,+00000008
	c.slli	a2,10
	c.srli	a2,00000010
	c.add	a3,a5
	lui	a5,00008000
	addi	a1,a5,-00000001
	c.and	a3,a1
	sub	a4,a3,a0
	and	a5,a4,a1
	lui	a4,00004000
	bltu	a4,a5,000000002302F0AE

l2302F09A:
	c.mv	a4,a5
	c.j	000000002302F0BA

l2302F09E:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302DD8C
	lw	a5,zero,+00000008
	c.ebreak

l2302F0AE:
	sub	a4,a0,a3
	and	a5,a4,a1
	sub	a4,zero,a5

l2302F0BA:
	lhu	a1,s0,+00000078
	addi	a5,a1,-00000001
	c.add	a5,a4
	xor	a5,a5,a1
	c.li	a4,00000001
	add	a5,a5,a1
	c.add	a5,a0
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,8(a5)
	sb	a4,s1,+00000004
	sh	a2,s2,+0000005C
	c.lw	s0,8(a5)
	sh	a2,s1,+00000002
	sub	a3,a5,a3
	c.slli	a3,05
	c.srli	a3,00000006
	sh	a3,s1,+00000000
	sw	s0,s2,+00000004
	sb	a4,s2,+0000006D

l2302F0F8:
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

;; lld_evt_move_to_slave: 2302F110
;;   Called from:
;;     23032598 (in lld_move_to_slave)
lld_evt_move_to_slave proc
	c.addi16sp	FFFFFF80
	c.swsp	s3,000000B4
	c.mv	s3,a0
	addi	a0,zero,+00000058
	c.swsp	a1,00000084
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s1,a3
	c.mv	s11,a2
	c.swsp	s2,00000038
	c.swsp	s7,000000AC
	jal	ra,000000002302965E
	c.mv	s0,a0
	jal	ra,000000002302968E
	lui	a4,00028008
	lhu	s4,a4,+00000194
	c.lwsp	a2,00000064
	slli	s10,s4,00000010
	lhu	s4,a4,+00000196
	lhu	s9,a4,+00000198
	lhu	a5,a4,+00000154
	lhu	s6,a1,+00000014
	lbu	s8,a1,+00000021
	c.srli	a5,00000008
	lbu	s5,a1,+00000013
	sb	a5,s3,+00000011
	beq	s0,zero,000000002302F42A

l2302F172:
	addi	s7,s0,+00000028
	c.mv	s2,a0
	c.mv	a0,s7
	jal	ra,000000002302E056
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,000000002302DD8C
	sh	s1,s0,+00000074
	lhu	a5,s3,+00000000
	srli	s8,s8,00000005
	addi	a4,zero,+000004E2
	c.slli	a5,01
	sh	a5,s0,+00000078
	lhu	a5,s3,+00000002
	sb	s8,s0,+0000006E
	sb	zero,s0,+00000071
	c.addi	a5,00000001
	sh	a5,s0,+0000005E
	c.li	a5,00000004
	sb	a5,s0,+0000007B
	c.li	a5,00000002
	sh	a5,s0,+00000064
	lbu	a5,s11,+00000019
	c.slli	s4,10
	c.slli	s9,10
	sh	a4,s0,+00000012
	sb	a5,s0,+00000019
	slli	a4,s6,00000001
	srli	s10,s10,00000010
	srli	s4,s4,00000010
	srli	s9,s9,00000010
	bltu	a5,a4,000000002302F1FA

l2302F1E0:
	lhu	s3,s3,+00000000
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002302DEEC
	c.add	s6,s3
	c.slli	s6,10
	c.li	a5,00000001
	srli	s6,s6,00000010
	sh	a5,s0,+00000060

l2302F1FA:
	addi	s3,s5,+00000002
	c.slli	s6,01
	c.add	s6,s3
	c.slli	s6,10
	srli	s6,s6,00000010
	c.mv	a1,s8
	c.mv	a0,s6
	jal	ra,000000002302E242
	addi	a5,zero,+000004E2
	add	s5,s5,a5
	c.sw	s0,88(a0)
	c.li	a1,00000001
	c.mv	a0,s7
	andi	s9,s9,+000003FF
	c.slli	s4,10
	or	s4,s4,s10
	addi	s5,s5,-00000021
	sw	s5,s0,+00000054
	jal	ra,000000002302D988
	addi	a5,zero,+000003A8
	sub	a5,a5,s9
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+00000270
	bgeu	a4,a5,000000002302F256

l2302F248:
	addi	a5,zero,+00000137
	sub	a5,a5,s9
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	s4,00000001

l2302F256:
	lhu	a4,s0,+00000074
	addi	s5,zero,+0000005C
	sh	a5,s0,+0000002C
	add	a4,a4,s5
	c.lui	a5,00006000
	sw	s4,s0,+00000028
	sh	a5,s0,+00000010
	c.li	a1,00000002
	c.mv	a0,s0
	c.li	s4,00000001
	addi	a4,a4,+0000008E
	sh	a4,s0,+00000076
	lui	a4,0002302E
	addi	a4,a4,-000003EA
	c.sw	s0,28(a4)
	lui	a4,0002302F
	addi	a4,a4,-000004EA
	c.sw	s0,36(a4)
	lui	a4,0002302E
	addi	a4,a4,-00000512
	c.sw	s0,32(a4)
	jal	ra,0000000023030F2A
	lhu	a5,s0,+00000078
	lbu	a4,s0,+0000007E
	c.addi4spn	a1,0000001C
	sh	a5,sp,+00000028
	sh	a5,sp,+0000002A
	c.li	a5,00000002
	c.swsp	a5,00000094
	sh	a5,sp,+00000030
	lhu	a5,s0,+00000074
	ori	a4,a4,+00000002
	sb	a4,s0,+0000007E
	sh	a5,sp,+00000038
	add	a5,a5,s5
	c.addi4spn	a0,00000028
	sh	zero,sp,+0000001C
	c.swsp	zero,00000010
	sh	zero,sp,+00000024
	sb	zero,sp,+00000032
	sb	s4,sp,+00000036
	sh	s4,sp,+0000003A
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000003E
	jal	ra,0000000023029DE2
	c.lw	s0,8(a5)
	lhu	a4,s0,+00000078
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000028
	and	a5,a5,a4
	sh	a5,sp,+00000034
	c.andi	a5,00000001
	sb	a5,sp,+0000003C
	jal	ra,0000000023029704
	c.beqz	a0,000000002302F3AE

l2302F310:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000028
	sb	zero,sp,+00000036
	jal	ra,0000000023029704
	c.bnez	a0,000000002302F3AE

l2302F31E:
	slli	a1,s1,00000008
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a3,zero,+00000022
	c.li	a2,00000002
	addi	a0,zero,+00000109
	jal	ra,000000002302BC8C
	sb	s4,a0,+00000000
	lhu	a1,sp,+0000001C
	c.mv	s1,a0
	srli	a5,a1,00000001
	sh	a5,a0,+00000002
	sh	a5,a0,+00000004
	sh	a5,a0,+0000000E
	sh	a5,a0,+00000010
	lhu	a5,s0,+0000005E
	sb	zero,a0,+00000012
	c.addi	a5,FFFFFFFF
	sh	a5,a0,+00000006
	c.lui	a5,00001000
	addi	a5,a5,-00000448
	sh	a5,a0,+00000008
	lhu	a5,s0,+00000060
	sh	a5,a0,+00000014
	sh	a5,a0,+0000000A
	lhu	a5,s0,+00000060
	sh	a5,a0,+0000000C
	c.lw	s0,8(a2)
	lhu	a0,sp,+00000024
	jal	ra,0000000023030C82
	c.li	a5,FFFFFFFF
	c.srli	a0,00000001
	sh	a0,s1,+00000016
	sh	a5,s1,+00000018
	sh	a5,s1,+0000001A
	sh	a5,s1,+0000001C
	sh	a5,s1,+0000001E
	sh	a5,s1,+00000020
	c.mv	a0,s1
	jal	ra,000000002302BCFA

l2302F3AE:
	lhu	a4,s0,+00000078
	c.lw	s0,8(a5)
	c.mv	a0,s2
	and	a5,a5,a4
	addi	a4,zero,+0000005C
	sh	a5,s2,+00000006
	lhu	a5,s0,+00000078
	sh	a5,s2,+00000004
	c.li	a5,00000002
	sh	a5,s2,+00000008
	lhu	a5,s0,+00000074
	sh	a5,s2,+0000000A
	c.li	a5,00000001
	sh	a5,s2,+0000000C
	lhu	a5,s0,+00000074
	add	a5,a5,a4
	addi	a5,a5,+0000008E
	sh	a5,s2,+0000000E
	jal	ra,00000000230296B6
	c.mv	a1,s6
	sw	s2,s0,+00000050
	c.mv	a0,s0
	jal	ra,000000002302DA28
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000001
	sb	a5,s0,+0000007E

l2302F40A:
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

l2302F42A:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,000000002302DD8C
	c.j	000000002302F40A

;; lld_evt_slave_update: 2302F436
;;   Called from:
;;     230326BC (in lld_con_update_ind)
lld_evt_slave_update proc
	lhu	a4,a1,+00000060
	lhu	a5,a0,+0000000A
	bne	a4,a5,000000002302F4B8

l2302F442:
	lhu	a4,a1,+00000074
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	a4,02
	c.add	a5,a4
	lhu	a4,a0,+00000004
	lhu	a3,a1,+00000078
	c.lw	a5,0(a5)
	c.slli	a4,01
	bne	a3,a4,000000002302F47C

l2302F462:
	lhu	a4,a0,+00000006
	lhu	a3,a1,+0000005E
	c.addi	a4,00000001
	bne	a3,a4,000000002302F47C

l2302F470:
	lhu	a3,a5,+00000054
	lhu	a4,a5,+00000056
	beq	a3,a4,000000002302F488

l2302F47C:
	lhu	a4,a5,+0000005C
	ori	a4,a4,+00000080
	sh	a4,a5,+0000005C

l2302F488:
	lhu	a5,a0,+00000004
	c.slli	a5,01
	sh	a5,a1,+00000078
	lhu	a5,a0,+00000006
	c.addi	a5,00000001
	sh	a5,a1,+0000005E
	lhu	a5,a0,+0000000A
	sh	a5,a1,+0000005C
	c.li	a5,00000001
	sb	a5,a1,+0000006D
	lbu	a5,a1,+0000007E
	ori	a5,a5,+00000009
	sb	a5,a1,+0000007E
	c.jr	ra

l2302F4B8:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002302965E
	c.mv	s2,a0
	c.beqz	a0,000000002302F5A8

l2302F4D2:
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	addi	a2,zero,+0000002C
	c.mv	a1,s0
	c.jalr	a5
	addi	a0,s2,+00000028
	jal	ra,000000002302E056
	lhu	a5,s0,+00000074
	sh	a5,s2,+00000074
	lhu	a5,s1,+00000004
	c.slli	a5,01
	sh	a5,s2,+00000078
	lhu	a5,s1,+00000006
	c.addi	a5,00000001
	sh	a5,s2,+0000005E
	c.li	a5,00000004
	sb	a5,s2,+0000007B
	lbu	a1,s0,+0000006E
	sb	a1,s2,+0000006E
	lhu	a5,s0,+00000064
	sh	a5,s2,+00000064
	lbu	a5,s2,+0000007E
	ori	a5,a5,+00000001
	sb	a5,s2,+0000007E
	c.li	a5,FFFFFFFF
	sh	a5,s2,+00000012
	lbu	a5,s1,+00000001
	lhu	a0,s1,+00000002
	c.add	a0,a5
	lhu	a5,s0,+00000078
	c.slli	a0,01
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,000000002302E242
	sw	a0,s2,+00000058
	lbu	a5,s1,+00000001
	addi	a4,zero,+000004E2
	add	a5,a5,a4
	addi	a5,a5,-00000021
	sw	a5,s2,+00000054
	sw	s2,s0,+00000004
	lhu	a5,s1,+0000000A
	lbu	a4,s0,+0000007E
	lhu	a3,s0,+00000060
	sh	a5,s0,+0000005C
	c.li	a5,00000001
	sb	a5,s0,+0000006D
	lhu	a5,s1,+00000002
	sh	a5,s0,+00000066
	lbu	a5,s1,+00000001
	sb	a5,s0,+0000006C
	ori	a5,a4,+00000001
	sb	a5,s0,+0000007E
	lhu	a5,s1,+0000000A
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	bne	a3,a5,000000002302F5A8

l2302F5A0:
	ori	a4,a4,+00000009
	sb	a4,s0,+0000007E

l2302F5A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; lld_evt_adv_create: 2302F5B4
;;   Called from:
;;     230313A0 (in lld_adv_start)
;;     230326E2 (in lld_test_mode_tx)
;;     23032834 (in lld_test_mode_rx)
lld_evt_adv_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	a3,00000004
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	s0,0000000C
	jal	ra,000000002302965E
	c.mv	s0,a0
	addi	a0,a0,+00000028
	jal	ra,000000002302E056
	c.lui	a5,00001000
	addi	a5,a5,-0000063C
	sh	a5,s0,+00000012
	addi	a5,zero,+0000005C
	sh	s1,s0,+00000074
	add	s1,s1,a5
	c.lwsp	a2,00000084
	sh	zero,s0,+0000007A
	c.li	a1,00000005
	sh	a2,s0,+00000078
	c.mv	a0,s0
	addi	s1,s1,+0000008E
	sh	s1,s0,+00000076
	jal	ra,0000000023030F2A
	addi	a5,zero,+00000200
	sh	a5,s0,+00000018
	lui	a5,0002302E
	addi	a5,a5,-000003EA
	c.sw	s0,28(a5)
	lui	a5,0002302F
	addi	a5,a5,-000004EA
	c.sw	s0,36(a5)
	lui	a5,0002302E
	addi	a5,a5,-00000512
	c.lwsp	s0,000000A4
	c.sw	s0,32(a5)
	c.lui	a5,00006000
	sb	zero,s0,+00000017
	sh	a5,s0,+00000010
	c.bnez	a3,000000002302F644

l2302F638:
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000020
	sb	a5,s0,+0000007E

l2302F644:
	jal	ra,000000002302988C
	c.sw	s0,8(a0)
	c.lwsp	t3,00000020
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_end: 2302F656
;;   Called from:
;;     2302F910 (in lld_evt_end_isr)
lld_evt_end proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a0,+00000074
	addi	a4,zero,+0000005C
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a3,a4,+000000E2
	addi	a1,a4,+000000E4
	addi	a4,a4,+000000E6
	c.add	a3,a5
	c.add	a1,a5
	c.add	a5,a4
	lhu	a2,a3,+00000000
	lhu	s1,a1,+00000000
	lhu	s3,a3,+00000000
	lhu	a5,a5,+00000000
	c.srli	s1,00000008
	c.srli	a2,00000008
	c.srli	a5,00000007
	c.add	s1,a2
	c.slli	s3,10
	c.andi	a5,00000001
	andi	s1,s1,+000000FF
	srli	s3,s3,00000010
	c.beqz	a5,000000002302F6B0

l2302F6AC:
	beq	s1,zero,000000002302F818

l2302F6B0:
	lbu	a5,s0,+0000007E
	andi	a4,a5,+00000010
	c.beqz	a4,000000002302F6EC

l2302F6BA:
	c.li	s2,00000001

l2302F6BC:
	lbu	a1,s0,+0000007A
	bltu	s1,a1,000000002302F760

l2302F6C4:
	sub	a1,s1,a1
	andi	a1,a1,+000000FF
	addi	a0,s0,+00000028
	jal	ra,0000000023030804
	lbu	a4,s0,+0000007B
	c.li	a5,00000002
	bne	a4,a5,000000002302F776

l2302F6DE:
	andi	a2,s1,+00000001
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002302DAF0
	c.j	000000002302F7C0

l2302F6EC:
	andi	a4,a5,+00000040
	c.beqz	a4,000000002302F744

l2302F6F2:
	andi	a5,a5,-00000041
	sb	a5,s0,+0000007E
	lbu	a4,s0,+0000007B
	c.li	a5,00000001
	c.bnez	s1,000000002302F70A

l2302F702:
	lbu	a5,s0,+0000007B
	c.beqz	a5,000000002302F750

l2302F708:
	c.li	a4,00000001

l2302F70A:
	bne	a5,a4,000000002302F6BA

l2302F70E:
	jal	ra,000000002302DB9C
	lui	a5,000230B5
	lbu	a5,a5,-000000FF
	c.lui	a4,FFFFA000
	addi	a4,a4,+00000050
	c.andi	a5,0000000F
	c.or	a5,a4
	sh	a5,s0,+00000010
	c.lw	s0,92(a5)
	c.sw	s0,8(a0)
	c.mv	a0,s0
	c.sw	s0,12(a5)
	jal	ra,0000000023029A00
	c.bnez	a0,000000002302F6BA

l2302F736:
	c.mv	a0,s0
	jal	ra,000000002302DB28
	c.li	s2,00000000
	c.bnez	s1,000000002302F6BC

l2302F740:
	c.li	a4,00000000
	c.j	000000002302F7E8

l2302F744:
	lbu	a5,s0,+0000007D
	sb	a5,s0,+00000016
	c.bnez	s1,000000002302F6BA

l2302F74E:
	c.j	000000002302F702

l2302F750:
	lui	a5,00042026
	lw	a5,a5,+00000474
	lbu	a5,a5,+00000021
	c.bnez	a5,000000002302F6BA

l2302F75E:
	c.j	000000002302F70E

l2302F760:
	lui	a1,000230B6
	lui	a0,000230B6
	addi	a1,a1,-000007F8
	addi	a0,a0,-000007EC
	jal	ra,0000000023082388

l2302F774:
	c.j	000000002302F774

l2302F776:
	lbu	a2,s0,+0000007A
	bltu	s1,a2,000000002302F814

l2302F77E:
	sub	a2,s1,a2
	andi	a2,a2,+000000FF

l2302F786:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302DAF0
	lui	a5,00042026
	lbu	a5,a5,+00000424
	c.addi	s1,FFFFFFFF
	c.li	a4,0000000E
	c.add	a5,s1
	c.li	s1,00000008
	or	a5,a5,s1
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000003D2
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.srli	a5,00000004
	c.andi	a5,00000001
	sb	a5,s0,+0000006F

l2302F7C0:
	lbu	a5,s0,+0000007B
	c.li	a4,00000001
	bne	a5,a4,000000002302F7DC

l2302F7CA:
	lbu	a4,s0,+00000060
	c.beqz	a4,000000002302F7DC

l2302F7D0:
	andi	s3,s3,+000000FF
	beq	s3,zero,000000002302F7DC

l2302F7D8:
	sb	a5,s0,+00000061

l2302F7DC:
	sb	zero,s0,+0000007A
	c.li	a0,00000008
	jal	ra,000000002302B838
	c.li	a4,00000001

l2302F7E8:
	lbu	a5,s0,+0000007E
	andi	a3,a5,+00000030
	c.bnez	a3,000000002302F81C

l2302F7F2:
	beq	s2,zero,000000002302F81C

l2302F7F6:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302E2C6
	c.beqz	a0,000000002302F838

l2302F800:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002302EAA0

l2302F814:
	c.li	a2,00000000
	c.j	000000002302F786

l2302F818:
	c.li	s2,00000001
	c.j	000000002302F740

l2302F81C:
	c.andi	a5,00000010
	c.beqz	a5,000000002302F838

l2302F820:
	c.bnez	a4,000000002302F838

l2302F822:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a2,00000001
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002302DD8C

l2302F838:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_rx: 2302F846
;;   Called from:
;;     2302F92C (in lld_evt_rx_isr)
lld_evt_rx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lhu	a5,a0,+00000074
	addi	a4,zero,+0000005C
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+00000092
	addi	a0,a0,+00000028
	c.add	a5,a4
	lhu	a2,a5,+00000000
	c.srli	a2,0000000C
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,0000000023030804
	lbu	a5,s0,+0000007A
	c.lwsp	a2,00000084
	c.mv	a0,s0
	c.li	a1,00000000
	c.add	a5,a2
	sb	a5,s0,+0000007A
	jal	ra,000000002302DAF0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000008
	c.addi16sp	00000020
	jal	zero,000000002302B838

;; lld_evt_rx_afs: 2302F896
;;   Called from:
;;     2302F93E (in lld_evt_afs_isr)
lld_evt_rx_afs proc
	lbu	a5,a0,+0000007A
	bgeu	a5,a1,000000002302F8D4

l2302F89E:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.sub	a1,a5
	c.swsp	s0,00000004
	andi	a1,a1,+000000FF
	c.mv	s0,a0
	addi	a0,a0,+00000028
	c.swsp	ra,00000084
	jal	ra,0000000023030804
	c.mv	a0,s0
	sb	s1,s0,+0000007A
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302DAF0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000008
	c.addi	sp,00000010
	jal	zero,000000002302B838

l2302F8D4:
	c.j	000000002302F8D4

;; lld_evt_timer_isr: 2302F8D6
;;   Called from:
;;     230293C6 (in rwble_isr)
lld_evt_timer_isr proc
	c.li	a0,00000003
	jal	zero,000000002302B838

;; lld_evt_end_isr: 2302F8DC
;;   Called from:
;;     23029338 (in rwble_isr)
;;     2302939A (in rwble_isr)
lld_evt_end_isr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,00042026
	addi	a0,a0,+00000430
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002302A36A
	c.mv	s0,a0
	jal	ra,0000000023029C6E
	c.beqz	s1,000000002302F914

l2302F8FA:
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000040
	sb	a5,s0,+0000007E

l2302F906:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302F656

l2302F914:
	lhu	a5,s0,+00000010
	c.srli	a5,0000000E
	c.beqz	a5,000000002302F906

l2302F91C:
	sh	zero,s0,+00000010
	c.j	000000002302F906

;; lld_evt_rx_isr: 2302F922
;;   Called from:
;;     230293A8 (in rwble_isr)
lld_evt_rx_isr proc
	lui	a5,00042026
	lw	a0,a5,+00000430
	c.beqz	a0,000000002302F930

l2302F92C:
	jal	zero,000000002302F846

l2302F930:
	c.jr	ra

;; lld_evt_afs_isr: 2302F932
;;   Called from:
;;     2302937C (in rwble_isr)
lld_evt_afs_isr proc
	lui	a5,00042026
	c.mv	a1,a0
	lw	a0,a5,+00000430
	c.beqz	a0,000000002302F942

l2302F93E:
	jal	zero,000000002302F896

l2302F942:
	c.jr	ra

;; lld_pdu_llcp_con_param_req_unpk: 2302F944
lld_pdu_llcp_con_param_req_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200F
	lw	a5,s3,+000003D0
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000008
	c.slli	a1,10
	sh	a5,s1,+00000008
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000001
	addi	a0,sp,+0000000E
	c.jalr	a5
	lbu	a5,sp,+0000000E
	addi	a1,s0,+00000009
	c.slli	a1,10
	sb	a5,s1,+0000000A
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000B
	c.slli	a1,10
	sh	a5,s1,+0000000C
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000D
	c.slli	a1,10
	sh	a5,s1,+0000000E
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000F
	c.slli	a1,10
	sh	a5,s1,+00000010
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000011
	c.slli	a1,10
	sh	a5,s1,+00000012
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000013
	c.slli	a1,10
	sh	a5,s1,+00000014
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000015
	c.slli	a1,10
	sh	a5,s1,+00000016
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000018
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_con_param_rsp_unpk: 2302FACC
lld_pdu_llcp_con_param_rsp_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200F
	lw	a5,s3,+000003D0
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000008
	c.slli	a1,10
	sh	a5,s1,+00000008
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000001
	addi	a0,sp,+0000000E
	c.jalr	a5
	lbu	a5,sp,+0000000E
	addi	a1,s0,+00000009
	c.slli	a1,10
	sb	a5,s1,+0000000A
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000B
	c.slli	a1,10
	sh	a5,s1,+0000000C
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000D
	c.slli	a1,10
	sh	a5,s1,+0000000E
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000F
	c.slli	a1,10
	sh	a5,s1,+00000010
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000011
	c.slli	a1,10
	sh	a5,s1,+00000012
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000013
	c.slli	a1,10
	sh	a5,s1,+00000014
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000015
	c.slli	a1,10
	sh	a5,s1,+00000016
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000018
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_length_req_unpk: 2302FC54
lld_pdu_llcp_length_req_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200F
	lw	a5,s3,+000003D0
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000008
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_length_rsp_unpk: 2302FCEC
lld_pdu_llcp_length_rsp_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200F
	lw	a5,s3,+000003D0
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+000003D0
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000008
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_pack: 2302FD84
;;   Called from:
;;     23030552 (in lld_pdu_tx_prog)
;;     230307FC (in lld_pdu_adv_pack)
lld_pdu_pack proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s11,00000084
	c.mv	s3,a0
	c.mv	s5,a1
	c.mv	s0,a0
	c.mv	s2,a0
	c.li	s4,00000009
	c.li	s7,0000000A
	addi	s8,zero,+00000048
	addi	s9,zero,+0000004C
	addi	s6,zero,+00000042
	lui	s10,0004200F

l2302FDBC:
	lbu	a0,a2,+00000000
	c.beqz	a0,000000002302FEA8

l2302FDC2:
	addi	a0,a0,-00000030
	andi	a5,a0,+000000FF
	c.li	s1,00000000
	bltu	s4,a5,000000002302FE74

l2302FDD0:
	slli	s1,a0,00000010
	c.addi	a2,00000001
	c.srli	s1,00000010

l2302FDD8:
	lbu	a4,a2,+00000000
	addi	a3,a2,+00000001
	addi	a5,a4,-00000030
	andi	a5,a5,+000000FF
	bltu	s4,a5,000000002302FE74

l2302FDEC:
	add	s1,s1,s7
	c.mv	a2,a3
	addi	s1,s1,-00000030
	c.add	s1,a4
	c.slli	s1,10
	c.srli	s1,00000010
	c.j	000000002302FDD8

l2302FDFE:
	lbu	a5,s2,+00000000
	addi	a1,s2,+00000001
	addi	a0,s0,+00000001
	sb	a5,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,s1,000000002302FE26

l2302FE14:
	lw	a5,s10,+000003D0
	addi	a2,s1,-00000001
	c.jalr	a5
	add	a0,s0,s1
	add	a1,s2,s1

l2302FE26:
	c.mv	a2,s11
	c.mv	s0,a0
	c.mv	s2,a1
	c.j	000000002302FDBC

l2302FE2E:
	addi	a1,s2,+00000001
	c.andi	a1,FFFFFFFE
	lhu	a5,a1,+00000000
	addi	a0,s0,+00000002
	c.addi	a1,00000002
	sb	a5,s0,+00000000
	c.srli	a5,00000008
	sb	a5,s0,+00000001
	c.j	000000002302FE26

l2302FE4A:
	addi	a1,s2,+00000003
	c.andi	a1,FFFFFFFC
	c.lw	a1,0(a5)
	addi	a0,s0,+00000004
	c.addi	a1,00000004
	srli	a4,a5,00000008
	sb	a5,s0,+00000000
	sb	a4,s0,+00000001
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+00000002
	sb	a5,s0,+00000003
	c.j	000000002302FE26

l2302FE74:
	lbu	a5,a2,+00000000
	addi	s11,a2,+00000001
	beq	a5,s8,000000002302FE2E

l2302FE80:
	beq	a5,s9,000000002302FE4A

l2302FE84:
	beq	a5,s6,000000002302FDFE

l2302FE88:
	c.li	a0,00000001

l2302FE8A:
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

l2302FEA8:
	sub	s0,s0,s3
	sb	s0,s5,+00000000
	c.j	000000002302FE8A

;; lld_pdu_tx_flush_list: 2302FEB2
;;   Called from:
;;     23030786 (in lld_pdu_tx_flush)
;;     23030790 (in lld_pdu_tx_flush)
;;     2303079A (in lld_pdu_tx_flush)
lld_pdu_tx_flush_list proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a0
	c.li	s0,00000000
	c.li	s3,00000013
	c.li	s4,00000017

l2302FEC8:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.mv	a0,s2
	jal	ra,000000002302A36A
	csrrw	zero,mstatus,zero
	c.beqz	a0,000000002302FF16

l2302FEDC:
	lhu	a5,a0,+00000004
	addi	a4,a5,-00000006
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	s3,a4,000000002302FF06

l2302FEEC:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002302CC7E
	c.beqz	a0,000000002302FF00

l2302FEFA:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF

l2302FF00:
	csrrw	zero,mstatus,zero
	c.j	000000002302FEC8

l2302FF06:
	c.addi	a5,FFFFFFFE
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s4,a5,000000002302FEC8

l2302FF10:
	jal	ra,000000002302BB4A
	c.j	000000002302FEC8

l2302FF16:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; lld_pdu_cntl_aligned_unpk: 2302FF28
lld_pdu_cntl_aligned_unpk proc
	c.mv	a5,a2
	c.beqz	a1,000000002302FF42

l2302FF2C:
	lui	a4,0004200F
	lw	t1,a4,+000003D0
	c.mv	a2,a1
	lui	a1,00028008
	c.add	a1,a0
	addi	a0,a5,+00000001
	c.jr	t1

l2302FF42:
	c.jr	ra

;; lld_pdu_check: 2302FF44
;;   Called from:
;;     2302DE52 (in lld_evt_deffered_elt_handler)
lld_pdu_check proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.mv	s1,a0
	c.addi4spn	a0,00000018
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	jal	ra,000000002302A2D6
	lhu	s2,s1,+0000004C
	csrrs	a5,mstatus,zero
	csrrci	a4,mstatus,00000008
	lw	s3,s1,+00000020
	csrrw	zero,mstatus,zero
	lui	s4,00028008
	addi	a5,s1,+00000020
	c.li	s0,00000000
	c.li	s5,0000000A
	addi	s4,s4,+000002CA
	c.swsp	a5,00000084
	addi	s7,s1,+00000010
	c.lui	s8,FFFF8000
	c.li	s9,00000001
	c.li	s10,00000005

l2302FF98:
	bne	s3,zero,0000000023030012

l2302FF9C:
	addi	s4,s2,-00000002
	slli	a4,s4,00000010
	c.srli	a4,00000010
	c.li	a5,00000001
	bgeu	a5,a4,000000002302FFCC

l2302FFAC:
	c.beqz	s0,000000002302FFCC

l2302FFAE:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lbu	a5,s1,+00000048
	c.sub	a5,s0
	sb	a5,s1,+00000048
	csrrw	zero,mstatus,zero
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230384A6

l2302FFCC:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s3,00042026
	addi	a0,s3,+00000448
	jal	ra,000000002302A36A
	c.mv	s1,a0
	csrrw	zero,mstatus,zero
	c.slli	s4,10
	c.li	s5,00000000
	srli	s4,s4,00000010
	c.li	s6,00000001

l2302FFF0:
	c.bnez	s1,00000000230300B6

l2302FFF2:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s5
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

l23030012:
	lhu	a5,s3,+00000004
	add	a5,a5,s5
	c.add	a5,s4
	lhu	a5,a5,+00000000
	c.srli	a5,0000000F
	c.beqz	a5,000000002302FF9C

l23030024:
	csrrs	s11,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lwsp	a2,00000044
	lw	s3,s3,+00000000
	jal	ra,000000002302A36A
	c.lw	s1,16(a5)
	c.mv	s6,a0
	c.beqz	a5,0000000023030048

l2303003C:
	c.mv	a0,s7
	jal	ra,000000002302A36A
	c.beqz	a0,0000000023030048

l23030044:
	jal	ra,000000002302BB4A

l23030048:
	csrrw	zero,mstatus,zero
	lhu	a5,s6,+00000004
	add	a5,a5,s5
	c.add	a5,s4
	lhu	a3,a5,+00000000
	and	a3,a3,s8
	sh	a3,a5,+00000000
	lhu	a5,s6,+00000004
	bltu	s9,a5,00000000230300A0

l2303006A:
	lbu	a5,s1,+00000048
	c.addi	a5,FFFFFFFF
	sb	a5,s1,+00000048
	csrrs	s11,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,24(a5)
	c.bnez	a5,000000002303008A

l23030080:
	lbu	a5,s1,+00000056
	c.andi	a5,FFFFFFFB
	sb	a5,s1,+00000056

l2303008A:
	c.mv	a0,s6
	jal	ra,000000002302BB4A
	csrrw	zero,mstatus,zero
	lbu	a1,s6,+0000000C
	c.mv	a0,s2
	jal	ra,0000000023038380
	c.j	000000002302FF98

l230300A0:
	bgeu	s10,a5,00000000230300AE

l230300A4:
	c.mv	a0,s6
	jal	ra,000000002302CC7E
	beq	a0,zero,000000002302FF98

l230300AE:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	000000002302FF98

l230300B6:
	lhu	a5,s1,+00000006
	bne	a5,s2,0000000023030116

l230300BE:
	lhu	a0,s1,+00000008
	bgeu	s6,s4,0000000023030108

l230300C6:
	lbu	a4,s1,+0000000A
	lbu	a3,s1,+0000000B
	lbu	a2,s1,+0000000C
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,00000000230384D6

l230300DA:
	c.mv	a0,s1
	jal	ra,000000002302BB4A

l230300E0:
	csrrs	s7,mstatus,zero
	csrrci	a5,mstatus,00000008
	addi	a0,s3,+00000448
	jal	ra,000000002302A36A
	c.mv	s1,a0
	c.bnez	a0,0000000023030102

l230300F4:
	c.lwsp	s8,000000E4
	c.beqz	a5,0000000023030102

l230300F8:
	c.addi4spn	a1,00000018
	addi	a0,s3,+00000448
	jal	ra,000000002302A49E

l23030102:
	csrrw	zero,mstatus,zero
	c.j	000000002302FFF0

l23030108:
	lbu	a1,s1,+00000004
	c.mv	a2,s0
	jal	ra,0000000023032E60
	c.mv	s5,a0
	c.j	00000000230300DA

l23030116:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,000000002302A2FE
	c.j	00000000230300E0

;; lld_pdu_tx_loop: 23030120
;;   Called from:
;;     230314C6 (in lld_adv_start)
;;     23031672 (in lld_scan_start)
;;     230327E6 (in lld_test_mode_tx)
lld_pdu_tx_loop proc
	csrrs	a2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a0,12(a5)
	c.li	a1,0000000A
	lhu	a4,a5,+00000004
	c.li	a5,0000000A
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000002CA
	c.add	a4,a5
	c.lw	a0,8(a5)
	lhu	a3,a4,+00000000
	lhu	a5,a5,+00000004
	add	a5,a5,a1
	c.lui	a1,FFFF8000
	c.and	a3,a1
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	csrrw	zero,mstatus,zero
	c.jr	ra

;; lld_pdu_data_tx_push: 23030166
;;   Called from:
;;     230304D0 (in lld_pdu_tx_prog)
;;     23030654 (in lld_pdu_tx_prog)
lld_pdu_data_tx_push proc
	lbu	a5,a1,+00000004
	c.li	a4,0000000A
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000002CA
	c.add	a4,a5
	sh	zero,a4,+00000000
	c.beqz	a3,000000002303018A

l23030180:
	lbu	a4,a1,+0000000B
	c.addi	a4,00000004
	sb	a4,a1,+0000000B

l2303018A:
	lbu	a3,a1,+0000000B
	lbu	a4,a1,+0000000A
	c.slli	a3,08
	c.or	a3,a4
	lui	a4,00028008
	addi	a6,a4,+000002CC
	c.add	a6,a5
	sh	a3,a6,+00000000
	lhu	a6,a1,+00000008
	addi	a3,a4,+000002CE
	c.add	a3,a5
	sh	a6,a3,+00000000
	c.beqz	a2,00000000230301D0

l230301B4:
	lhu	a3,a1,+00000006
	c.lui	a2,00008000
	addi	a4,a4,+000002D2
	c.add	a5,a4
	c.or	a3,a2
	sh	a3,a5,+00000000
	lbu	a5,a0,+00000048
	c.addi	a5,00000001
	sb	a5,a0,+00000048

l230301D0:
	c.lw	a0,32(a5)
	c.bnez	a5,00000000230301DE

l230301D4:
	c.sw	a0,32(a1)

l230301D6:
	c.sw	a0,36(a1)
	sw	zero,a1,+00000000
	c.jr	ra

l230301DE:
	c.lw	a0,36(a5)
	c.li	a2,0000000A
	lhu	a4,a5,+00000004
	c.li	a5,0000000A
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000002CA
	c.add	a4,a5
	lhu	a5,a1,+00000004
	lhu	a3,a4,+00000000
	add	a5,a5,a2
	c.lui	a2,FFFF8000
	c.and	a3,a2
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	c.lw	a0,32(a5)
	c.beqz	a5,00000000230301D4

l23030218:
	c.lw	a0,36(a5)
	c.sw	a5,0(a1)
	c.j	00000000230301D6

;; lld_pdu_data_send: 2303021E
;;   Called from:
;;     230396F2 (in llc_hci_acl_data_tx_handler)
lld_pdu_data_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000000
	c.mv	s0,a0
	c.li	a0,00000010
	c.swsp	ra,00000084
	jal	ra,000000002302BA5A
	c.beqz	a0,0000000023030286

l23030230:
	lhu	a4,s0,+00000000
	lui	a5,00042026
	addi	a5,a5,+00000428
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	a1,a0
	c.lw	a5,16(a0)
	c.lw	s0,8(a5)
	addi	a0,a0,+00000030
	c.sw	a1,12(a5)
	lhu	a5,s0,+00000000
	sh	a5,a1,+00000006
	lhu	a5,s0,+00000004
	sh	a5,a1,+00000008
	lbu	a5,s0,+00000002
	sb	a5,a1,+0000000A
	c.li	a5,0000001A
	sh	a5,a1,+00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	c.li	a0,00000001

l2303027E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23030286:
	c.li	a0,00000000
	c.j	000000002303027E

;; lld_pdu_tx_push: 2303028A
;;   Called from:
;;     230314B4 (in lld_adv_start)
;;     230314C0 (in lld_adv_start)
;;     2303166A (in lld_scan_start)
;;     2303196E (in lld_con_start)
;;     230327DE (in lld_test_mode_tx)
lld_pdu_tx_push proc
	lhu	a5,a1,+00000004
	c.li	a6,0000000A
	lui	a3,00028008
	add	a5,a5,a6
	c.addi	sp,FFFFFFF0
	addi	a3,a3,+000002CA
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	a2,a0
	addi	a0,a0,+00000030
	c.add	a5,a3
	sh	zero,a5,+00000000
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a2,48(a5)
	c.beqz	a5,00000000230302E6

l230302BA:
	c.lw	a2,52(a5)
	c.li	a2,0000000A
	lhu	a4,a5,+00000004
	lhu	a5,a1,+00000004
	add	a4,a4,a6
	add	a5,a5,a2
	c.add	a4,a3
	lhu	a3,a4,+00000000
	c.lui	a2,FFFF8000
	c.and	a3,a2
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000

l230302E6:
	jal	ra,000000002302A2FE
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_pdu_tx_prog: 230302F6
;;   Called from:
;;     2302DD70 (in lld_evt_schedule)
lld_pdu_tx_prog proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	c.swsp	s7,000000A4
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.lw	a0,24(s0)
	c.mv	s7,a0
	addi	s1,a0,+00000020
	lhu	s5,a0,+0000004C
	c.beqz	s0,0000000023030372
