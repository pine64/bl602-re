;;; Segment .text (23000300)

l230A0304:
	srl	t1,a3,a4
	auipc	a7,0000002B
	addi	a7,a7,+00000168
	add	a7,a7,t1
	lbu	t4,a7,+00000000
	addi	t3,zero,+00000020
	add	t4,t4,a4
	sub	t3,t3,t4
	bne	t3,zero,00000000230A0360

l230A0328:
	bltu	a3,a1,00000000230A0330

l230A032C:
	bltu	a0,a2,00000000230A0340

l230A0330:
	sub	a5,a0,a2
	sub	a1,a1,a3
	sltu	a0,a0,a5
	sub	a6,a1,a0

l230A0340:
	addi	a0,a5,+00000000
	addi	a1,a6,+00000000
	jal	zero,00000000230A0180

l230A034C:
	lui	a7,00001000
	addi	a4,zero,+00000010
	bltu	a3,a7,00000000230A0304

l230A0358:
	addi	a4,zero,+00000018
	jal	zero,00000000230A0304

l230A0360:
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
	bgeu	a7,t5,00000000230A03C8

l230A03B0:
	add	a7,a7,a3
	addi	t1,a4,-00000001
	bltu	a7,a3,00000000230A03C8

l230A03BC:
	bgeu	a7,t5,00000000230A03C8

l230A03C0:
	addi	t1,a4,-00000002
	add	a7,a7,a3

l230A03C8:
	sub	a7,a7,t5
	and	t5,a7,a6
	srl	a7,a7,a6
	slli	t5,t5,00000010
	add	a6,a1,a7
	slli	a1,a5,00000010
	srli	a1,a1,00000010
	or	a1,t5,a1
	addi	a5,a7,+00000000
	bgeu	a1,a6,00000000230A0408

l230A03F0:
	add	a1,a1,a3
	addi	a5,a7,-00000001
	bltu	a1,a3,00000000230A0408

l230A03FC:
	bgeu	a1,a6,00000000230A0408

l230A0400:
	addi	a5,a7,-00000002
	add	a1,a1,a3

l230A0408:
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
	bgeu	a6,a5,00000000230A0450

l230A044C:
	add	t1,t1,t5

l230A0450:
	srli	a5,a6,00000010
	add	t1,a5,t1
	lui	a5,00000010
	addi	a5,a5,-00000001
	and	a6,a6,a5
	slli	a6,a6,00000010
	and	a4,a4,a5
	add	a4,a6,a4
	bltu	a1,t1,00000000230A047C

l230A0474:
	bne	a1,t1,00000000230A0490

l230A0478:
	bgeu	a0,a4,00000000230A0490

l230A047C:
	sub	a2,a4,a2
	sltu	a4,a4,a2
	add	a4,a4,a3
	sub	t1,t1,a4
	addi	a4,a2,+00000000

l230A0490:
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a1,a1,t1
	sub	a1,a1,a0
	sll	a5,a1,t4
	srl	a4,a4,t3
	or	a0,a5,a4
	srl	a1,a1,t3
	jal	zero,00000000230A0180

;; __adddf3: 230A04B4
;;   Called from:
;;     230028E2 (in pa_adapt)
;;     23002C74 (in trpc_get_power_idx)
;;     230032AA (in rfc_init)
;;     230032E8 (in rfc_init)
;;     23003324 (in rfc_init)
;;     23003888 (in rfc_config_channel)
;;     23005DF4 (in rf_pri_get_vco_freq_cw)
;;     23005E3E (in rf_pri_get_vco_idac_cw)
;;     2305CDBC (in parse_value)
;;     2305CE32 (in parse_value)
;;     2305CEC6 (in parse_value)
;;     2308187C (in cvt)
;;     2309D6A0 (in floor)
;;     2309D714 (in floor)
;;     2309D758 (in floor)
;;     2309D794 (in floor)
;;     2309DFAC (in __ieee754_pow)
;;     2309E0E4 (in __ieee754_pow)
;;     2309E104 (in __ieee754_pow)
;;     2309E124 (in __ieee754_pow)
;;     2309E144 (in __ieee754_pow)
;;     2309E164 (in __ieee754_pow)
;;     2309E1B8 (in __ieee754_pow)
;;     2309E1D0 (in __ieee754_pow)
;;     2309E200 (in __ieee754_pow)
;;     2309E214 (in __ieee754_pow)
;;     2309E2AC (in __ieee754_pow)
;;     2309E2D0 (in __ieee754_pow)
;;     2309E368 (in __ieee754_pow)
;;     2309E374 (in __ieee754_pow)
;;     2309E3A4 (in __ieee754_pow)
;;     2309E3B0 (in __ieee754_pow)
;;     2309E3BC (in __ieee754_pow)
;;     2309E488 (in __ieee754_pow)
;;     2309E4C0 (in __ieee754_pow)
;;     2309E4FC (in __ieee754_pow)
;;     2309E5B0 (in __ieee754_pow)
;;     2309E658 (in __ieee754_pow)
;;     2309E674 (in __ieee754_pow)
;;     2309E708 (in __ieee754_pow)
;;     2309E748 (in __ieee754_pow)
;;     2309E7E4 (in __ieee754_pow)
;;     2309EA28 (in __ieee754_pow)
;;     2309ED94 (in __ieee754_sqrt)
;;     2309EEF0 (in rint)
;;     2309EFAC (in rint)
;;     2309F000 (in rint)
;;     2309F120 (in scalbn)
;;     2309F380 (in __floatundisf)
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
	bne	s2,t3,00000000230A0940

l230A0528:
	bge	zero,a3,00000000230A0690

l230A052C:
	bne	a4,zero,00000000230A0594

l230A0530:
	or	a3,a5,a7
	bne	a3,zero,00000000230A054C

l230A0538:
	addi	a5,zero,+000007FF
	beq	a6,a5,00000000230A0574

l230A0540:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,00000000230A08A0

l230A054C:
	addi	a3,a6,-00000001
	bne	a3,zero,00000000230A056C

l230A0554:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	t1,a7,t1
	add	a5,a5,t1

l230A0564:
	addi	a6,zero,+00000001
	jal	zero,00000000230A0614

l230A056C:
	addi	a2,zero,+000007FF
	bne	a6,a2,00000000230A05CC

l230A0574:
	or	a7,a1,t1
	addi	a5,zero,+00000000
	beq	a7,zero,00000000230A0F54

l230A0580:
	slli	a5,a1,00000009
	blt	a5,zero,00000000230A0E64

l230A0588:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	jal	zero,00000000230A05B8

l230A0594:
	addi	a4,zero,+000007FF
	bne	s3,a4,00000000230A05C4

l230A059C:
	or	a7,a1,t1
	beq	a7,zero,00000000230A0E74

l230A05A4:
	slli	a5,a1,00000009
	blt	a5,zero,00000000230A0E7C

l230A05AC:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+000007FF

l230A05B8:
	addi	s3,zero,+00000000

l230A05BC:
	addi	a4,zero,+00000010
	jal	zero,00000000230A06C4

l230A05C4:
	lui	a4,00000800
	or	a5,a5,a4

l230A05CC:
	addi	a4,zero,+00000038
	blt	a4,a3,00000000230A0684

l230A05D4:
	addi	a4,zero,+0000001F
	blt	a4,a3,00000000230A0650

l230A05DC:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l230A0600:
	add	a7,a7,t1
	add	a3,a3,a1
	sltu	a5,a7,t1
	add	a5,a3,a5
	addi	a6,s3,+00000000

l230A0614:
	slli	a4,a5,00000008
	bge	a4,zero,00000000230A0DD0

l230A061C:
	addi	a6,a6,+00000001
	addi	a4,zero,+000007FF
	beq	a6,a4,00000000230A0910

l230A0628:
	lui	a0,000FF800
	addi	a0,a0,-00000001
	and	a0,a5,a0
	srli	a4,a7,00000001
	andi	a7,a7,+00000001
	slli	a5,a0,0000001F
	or	a7,a4,a7
	or	a7,a5,a7
	srli	a5,a0,00000001
	jal	zero,00000000230A08A0

l230A0650:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,00000000230A0670

l230A0664:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l230A0670:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l230A067C:
	addi	a3,zero,+00000000
	jal	zero,00000000230A0600

l230A0684:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,00000000230A067C

l230A0690:
	beq	a3,zero,00000000230A07C8

l230A0694:
	sub	a6,a4,s3
	bne	s3,zero,00000000230A0758

l230A069C:
	or	a3,a1,t1
	bne	a3,zero,00000000230A06E0

l230A06A4:
	addi	a4,zero,+000007FF
	bne	a6,a4,00000000230A0DD0

l230A06AC:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0E8C

l230A06B4:
	lui	a4,00000400
	and	a4,a5,a4
	sltiu	a4,a4,+00000001
	slli	a4,a4,00000004

l230A06C4:
	andi	a3,a7,+00000007
	bne	a3,zero,00000000230A08E0

l230A06CC:
	beq	s3,zero,00000000230A0F54

l230A06D0:
	andi	a3,a4,+00000001
	beq	a3,zero,00000000230A0F54

l230A06D8:
	ori	a4,a4,+00000002
	jal	zero,00000000230A0F54

l230A06E0:
	addi	a3,a6,-00000001
	bne	a3,zero,00000000230A0700

l230A06E8:
	add	t1,t1,a7
	sltu	a7,t1,a7
	add	a5,a1,a5
	add	a5,a5,a7
	addi	a7,t1,+00000000
	jal	zero,00000000230A0564

l230A0700:
	addi	a2,zero,+000007FF
	beq	a6,a2,00000000230A06AC

l230A0708:
	addi	a2,zero,+00000038
	blt	a2,a3,00000000230A07BC

l230A0710:
	addi	a2,zero,+0000001F
	blt	a2,a3,00000000230A0788

l230A0718:
	addi	a0,zero,+00000020
	sub	a0,a0,a3
	srl	s0,t1,a3
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,s0
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,a3

l230A073C:
	add	t1,t1,a7
	add	a3,a3,a5
	sltu	a5,t1,a7
	add	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	jal	zero,00000000230A0614

l230A0758:
	addi	a3,zero,+000007FF
	bne	a4,a3,00000000230A0778

l230A0760:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0E30

l230A0768:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF

l230A0770:
	addi	s3,zero,+00000000
	jal	zero,00000000230A0AA8

l230A0778:
	lui	a3,00000800
	or	a1,a1,a3
	addi	a3,a6,+00000000
	jal	zero,00000000230A0708

l230A0788:
	addi	a2,a3,-00000020
	addi	a6,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	a3,a6,00000000230A07A8

l230A079C:
	addi	a0,zero,+00000040
	sub	a3,a0,a3
	sll	a0,a1,a3

l230A07A8:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l230A07B4:
	addi	a3,zero,+00000000
	jal	zero,00000000230A073C

l230A07BC:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,00000000230A07B4

l230A07C8:
	addi	a6,s3,+00000001
	andi	a3,a6,+000007FE
	bne	a3,zero,00000000230A0878

l230A07D4:
	or	a3,a1,t1
	bne	s3,zero,00000000230A0818

l230A07DC:
	beq	a3,zero,00000000230A0DD4

l230A07E0:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0BA4

l230A07E8:
	add	a7,a7,t1
	add	a5,a1,a5
	sltu	a3,a7,t1
	add	a1,a5,a3
	slli	a5,a1,00000008
	bge	a5,zero,00000000230A0DD8

l230A0800:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,a1,a5
	addi	a4,zero,+00000000
	addi	a6,zero,+00000001
	jal	zero,00000000230A06C4

l230A0818:
	addi	a2,zero,+000007FF
	bne	s3,a2,00000000230A0850

l230A0820:
	beq	a3,zero,00000000230A0FF8

l230A0824:
	lui	a6,00000400
	and	a6,a1,a6
	sltiu	a6,a6,+00000001
	slli	a6,a6,00000004
	bne	a4,s3,00000000230A085C

l230A0838:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0FF0

l230A0840:
	slli	a4,a5,00000009
	blt	a4,zero,00000000230A0858

l230A0848:
	addi	a6,zero,+00000010
	jal	zero,00000000230A0858

l230A0850:
	addi	a6,zero,+00000000
	beq	a4,a2,00000000230A0838

l230A0858:
	beq	a3,zero,00000000230A086C

l230A085C:
	or	a5,a5,a7
	bne	a5,zero,00000000230A0E44

l230A0864:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l230A086C:
	addi	s3,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,00000000230A0EC4

l230A0878:
	addi	a4,zero,+000007FF
	beq	a6,a4,00000000230A08A8

l230A0880:
	add	a7,t1,a7
	add	a3,a1,a5
	sltu	a5,a7,t1
	add	t1,a3,a5
	slli	a5,t1,0000001F
	srli	a7,a7,00000001
	or	a7,a5,a7
	srli	a5,t1,00000001

l230A08A0:
	addi	s3,zero,+00000000
	jal	zero,00000000230A0AAC

l230A08A8:
	beq	s1,zero,00000000230A08B8

l230A08AC:
	addi	a5,zero,+00000003
	bne	s1,a5,00000000230A08C0

l230A08B4:
	bne	s2,zero,00000000230A08CC

l230A08B8:
	addi	a6,zero,+000007FF
	jal	zero,00000000230A0920

l230A08C0:
	addi	a5,zero,+00000002
	bne	s1,a5,00000000230A08CC

l230A08C8:
	bne	s2,zero,00000000230A08B8

l230A08CC:
	addi	s3,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE

l230A08DC:
	addi	a4,zero,+00000005

l230A08E0:
	addi	a3,zero,+00000002
	ori	a4,a4,+00000001
	beq	s1,a3,00000000230A0EF0

l230A08EC:
	addi	a3,zero,+00000003
	beq	s1,a3,00000000230A0ED8

l230A08F4:
	bne	s1,zero,00000000230A0908

l230A08F8:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	addi	a1,a7,+00000004
	bne	a3,a2,00000000230A0EE0

l230A0908:
	bne	s3,zero,00000000230A06D8

l230A090C:
	jal	zero,00000000230A0F54

l230A0910:
	beq	s1,zero,00000000230A0920

l230A0914:
	addi	a5,zero,+00000003
	bne	s1,a5,00000000230A0930

l230A091C:
	bne	s2,zero,00000000230A0E50

l230A0920:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a4,zero,+00000005
	jal	zero,00000000230A0F54

l230A0930:
	addi	a5,zero,+00000002
	bne	s1,a5,00000000230A0E50

l230A0938:
	bne	s2,zero,00000000230A0920

l230A093C:
	jal	zero,00000000230A08CC

l230A0940:
	bge	zero,a3,00000000230A0A34

l230A0944:
	bne	a4,zero,00000000230A09E0

l230A0948:
	or	a3,a5,a7
	beq	a3,zero,00000000230A0538

l230A0950:
	addi	a3,a6,-00000001
	bne	a3,zero,00000000230A0970

l230A0958:
	sub	a7,t1,a7
	sub	a5,a1,a5
	sltu	t1,t1,a7
	sub	a5,a5,t1

l230A0968:
	addi	a6,zero,+00000001
	jal	zero,00000000230A09C0

l230A0970:
	addi	a2,zero,+000007FF
	beq	a6,a2,00000000230A0574

l230A0978:
	addi	a4,zero,+00000038
	blt	a4,a3,00000000230A0A28

l230A0980:
	addi	a4,zero,+0000001F
	blt	a4,a3,00000000230A09F4

l230A0988:
	addi	s0,zero,+00000020
	sub	s0,s0,a3
	srl	a2,a7,a3
	sll	a4,a5,s0
	sll	a7,a7,s0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	a3,a5,a3

l230A09AC:
	sub	a7,t1,a7
	sub	a3,a1,a3
	sltu	a5,t1,a7
	sub	a5,a3,a5
	addi	a6,s3,+00000000

l230A09C0:
	slli	a4,a5,00000008
	bge	a4,zero,00000000230A0DD0

l230A09C8:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,a7,+00000000
	addi	s3,a6,+00000000
	jal	zero,00000000230A0CF8

l230A09E0:
	addi	a4,zero,+000007FF
	beq	s3,a4,00000000230A059C

l230A09E8:
	lui	a4,00000800
	or	a5,a5,a4
	jal	zero,00000000230A0978

l230A09F4:
	addi	a4,a3,-00000020
	addi	a2,zero,+00000020
	srl	a4,a5,a4
	addi	s0,zero,+00000000
	beq	a3,a2,00000000230A0A14

l230A0A08:
	addi	s0,zero,+00000040
	sub	a3,s0,a3
	sll	s0,a5,a3

l230A0A14:
	or	a7,s0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l230A0A20:
	addi	a3,zero,+00000000
	jal	zero,00000000230A09AC

l230A0A28:
	or	a7,a5,a7
	sltu	a7,zero,a7
	jal	zero,00000000230A0A20

l230A0A34:
	beq	a3,zero,00000000230A0B74

l230A0A38:
	sub	a6,a4,s3
	bne	s3,zero,00000000230A0AB4

l230A0A40:
	or	a3,a1,t1
	bne	a3,zero,00000000230A0A6C

l230A0A48:
	addi	a4,zero,+000007FF
	addi	s2,t3,+00000000
	bne	a6,a4,00000000230A0DD0

l230A0A54:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0E8C

l230A0A5C:
	slli	a3,a5,00000009
	addi	a4,zero,+00000000
	blt	a3,zero,00000000230A06C4

l230A0A68:
	jal	zero,00000000230A05BC

l230A0A6C:
	addi	s0,a6,-00000001
	bne	s0,zero,00000000230A0A90

l230A0A74:
	sub	t1,a7,t1
	sltu	a7,a7,t1
	sub	a5,a5,a1
	sub	a5,a5,a7
	addi	s2,t3,+00000000
	addi	a7,t1,+00000000
	jal	zero,00000000230A0968

l230A0A90:
	addi	a3,zero,+000007FF
	bne	a6,a3,00000000230A0AE0

l230A0A98:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0E98

l230A0AA0:
	slli	a4,a5,00000009
	addi	s2,t3,+00000000

l230A0AA8:
	bge	a4,zero,00000000230A05BC

l230A0AAC:
	addi	a4,zero,+00000000
	jal	zero,00000000230A06C4

l230A0AB4:
	addi	a3,zero,+000007FF
	bne	a4,a3,00000000230A0AD4

l230A0ABC:
	or	a4,a5,a7
	beq	a4,zero,00000000230A0EA8

l230A0AC4:
	slli	a4,a5,00000009
	addi	a6,zero,+000007FF
	addi	s2,t3,+00000000
	jal	zero,00000000230A0770

l230A0AD4:
	lui	a3,00000800
	or	a1,a1,a3
	addi	s0,a6,+00000000

l230A0AE0:
	addi	a3,zero,+00000038
	blt	a3,s0,00000000230A0B68

l230A0AE8:
	addi	a3,zero,+0000001F
	blt	a3,s0,00000000230A0B34

l230A0AF0:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,t1,s0
	sll	a2,a1,a0
	sll	t1,t1,a0
	or	a2,a2,a3
	sltu	t1,zero,t1
	or	t1,a2,t1
	srl	a3,a1,s0

l230A0B14:
	sub	t1,a7,t1
	sub	a3,a5,a3
	sltu	a5,a7,t1
	sub	a5,a3,a5
	addi	a7,t1,+00000000
	addi	a6,a4,+00000000
	addi	s2,t3,+00000000
	jal	zero,00000000230A09C0

l230A0B34:
	addi	a2,s0,-00000020
	addi	a3,zero,+00000020
	srl	a2,a1,a2
	addi	a0,zero,+00000000
	beq	s0,a3,00000000230A0B54

l230A0B48:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,a1,s0

l230A0B54:
	or	t1,a0,t1
	sltu	t1,zero,t1
	or	t1,a2,t1

l230A0B60:
	addi	a3,zero,+00000000
	jal	zero,00000000230A0B14

l230A0B68:
	or	a3,a1,t1
	sltu	t1,zero,a3
	jal	zero,00000000230A0B60

l230A0B74:
	addi	a3,s3,+00000001
	andi	a3,a3,+000007FE
	bne	a3,zero,00000000230A0CCC

l230A0B80:
	or	a0,a1,t1
	or	a2,a5,a7
	bne	s3,zero,00000000230A0C60

l230A0B8C:
	bne	a0,zero,00000000230A0C14

l230A0B90:
	bne	a2,zero,00000000230A0DE0

l230A0B94:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001
	addi	a1,zero,+00000000
	addi	t1,zero,+00000000

l230A0BA4:
	or	a7,t1,a1
	beq	a7,zero,00000000230A0ECC

l230A0BAC:
	srli	a5,t1,0000001F
	slli	s3,a1,00000001
	add	s3,s3,a5
	slli	a5,t1,00000001
	andi	a3,a5,+00000007
	addi	a4,zero,+00000000
	beq	a3,zero,00000000230A0BF8

l230A0BC8:
	addi	a4,zero,+00000002
	beq	s1,a4,00000000230A0E14

l230A0BD0:
	addi	a4,zero,+00000003
	beq	s1,a4,00000000230A0DF8

l230A0BD8:
	addi	a4,zero,+00000001
	bne	s1,zero,00000000230A0BF8

l230A0BE0:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,00000000230A0BF8

l230A0BEC:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	s3,s3,a5

l230A0BF8:
	srli	s3,s3,00000018
	xori	s3,s3,+00000001
	andi	s3,s3,+00000001
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	jal	zero,00000000230A06C4

l230A0C14:
	beq	a2,zero,00000000230A0BA4

l230A0C18:
	sub	a3,t1,a7
	sltu	a2,t1,a3
	sub	a4,a1,a5
	sub	a4,a4,a2
	slli	a2,a4,00000008
	bge	a2,zero,00000000230A0C48

l230A0C30:
	sub	t1,a7,t1
	sub	a5,a5,a1
	sltu	a3,a7,t1
	sub	a1,a5,a3

l230A0C40:
	addi	s2,t3,+00000000
	jal	zero,00000000230A0BA4

l230A0C48:
	or	t1,a3,a4
	bne	t1,zero,00000000230A0DEC

l230A0C50:
	addi	s2,s1,-00000002
	sltiu	s2,s2,+00000001

l230A0C58:
	addi	a1,zero,+00000000
	jal	zero,00000000230A0BA4

l230A0C60:
	addi	a3,zero,+000007FF
	bne	s3,a3,00000000230A0C88

l230A0C68:
	beq	a0,zero,00000000230A0F30

l230A0C6C:
	lui	a3,00000400
	and	a3,a1,a3
	sltiu	a3,a3,+00000001
	slli	a3,a3,00000004
	bne	a4,s3,00000000230A0F3C

l230A0C80:
	addi	a4,a3,+00000000
	jal	zero,00000000230A0C90

l230A0C88:
	bne	a4,a3,00000000230A0CC4

l230A0C8C:
	addi	a4,zero,+00000000

l230A0C90:
	beq	a2,zero,00000000230A0CA0

l230A0C94:
	slli	a3,a5,00000009
	blt	a3,zero,00000000230A0CA0

l230A0C9C:
	addi	a4,zero,+00000010

l230A0CA0:
	bne	a0,zero,00000000230A0F40

l230A0CA4:
	addi	s2,t3,+00000000
	bne	a2,zero,00000000230A0EC0

l230A0CAC:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a6,zero,+000007FF
	addi	a4,zero,+00000010
	jal	zero,00000000230A0F54

l230A0CC4:
	addi	a4,zero,+00000000
	jal	zero,00000000230A0CA0

l230A0CCC:
	sub	s4,t1,a7
	sub	s0,a1,a5
	sltu	a3,t1,s4
	sub	s0,s0,a3
	slli	a4,s0,00000008
	bge	a4,zero,00000000230A0D64

l230A0CE4:
	sub	s4,a7,t1
	sub	a3,a5,a1
	sltu	a5,a7,s4
	sub	s0,a3,a5
	addi	s2,t3,+00000000

l230A0CF8:
	beq	s0,zero,00000000230A0D70

l230A0CFC:
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C

l230A0D04:
	addi	a6,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a6,00000000230A0D80

l230A0D10:
	addi	a5,zero,+00000020
	sub	a5,a5,a6
	sll	s0,s0,a6
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	a7,s4,a6

l230A0D28:
	blt	a6,s3,00000000230A0DC0

l230A0D2C:
	sub	a6,a6,s3
	addi	a3,a6,+00000001
	addi	a5,zero,+0000001F
	blt	a5,a3,00000000230A0D90

l230A0D3C:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	sll	t1,s0,a2
	srl	a5,a7,a3
	sll	a2,a7,a2
	or	a5,t1,a5
	sltu	a2,zero,a2
	or	t1,a5,a2
	srl	a1,s0,a3
	jal	zero,00000000230A0BA4

l230A0D64:
	or	t1,s4,s0
	bne	t1,zero,00000000230A0CF8

l230A0D6C:
	jal	zero,00000000230A0C50

l230A0D70:
	addi	a0,s4,+00000000
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A0D04

l230A0D80:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	a7,zero,+00000000
	jal	zero,00000000230A0D28

l230A0D90:
	addi	a6,a6,-0000001F
	addi	a5,zero,+00000020
	srl	a6,s0,a6
	addi	a4,zero,+00000000
	beq	a3,a5,00000000230A0DB0

l230A0DA4:
	addi	a4,zero,+00000040
	sub	a4,a4,a3
	sll	a4,s0,a4

l230A0DB0:
	or	a5,a7,a4
	sltu	a5,zero,a5
	or	t1,a6,a5
	jal	zero,00000000230A0C58

l230A0DC0:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a6,s3,a6
	and	a5,s0,a5

l230A0DD0:
	bne	a6,zero,00000000230A08A0

l230A0DD4:
	addi	a1,a5,+00000000

l230A0DD8:
	addi	t1,a7,+00000000
	jal	zero,00000000230A0BA4

l230A0DE0:
	addi	a1,a5,+00000000
	addi	t1,a7,+00000000
	jal	zero,00000000230A0C40

l230A0DEC:
	addi	a1,a4,+00000000
	addi	t1,a3,+00000000
	jal	zero,00000000230A0BA4

l230A0DF8:
	addi	a4,s2,+00000000
	bne	s2,zero,00000000230A0BF8

l230A0E00:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,zero,+00000001
	jal	zero,00000000230A0BF8

l230A0E14:
	addi	a4,zero,+00000001
	beq	s2,zero,00000000230A0BF8

l230A0E1C:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	s3,s3,a5
	addi	a4,s2,+00000000
	jal	zero,00000000230A0BF8

l230A0E30:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l230A0E38:
	addi	a6,zero,+000007FF

l230A0E3C:
	addi	a4,zero,+00000000
	jal	zero,00000000230A0F54

l230A0E44:
	addi	s2,zero,+00000000
	addi	a4,a6,+00000000
	jal	zero,00000000230A0F48

l230A0E50:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	addi	s3,zero,+00000000
	jal	zero,00000000230A08DC

l230A0E64:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000
	addi	s3,zero,+00000000
	jal	zero,00000000230A06C4

l230A0E74:
	addi	a5,zero,+00000000
	jal	zero,00000000230A0E38

l230A0E7C:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l230A0E84:
	addi	a6,zero,+000007FF
	jal	zero,00000000230A08A0

l230A0E8C:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	jal	zero,00000000230A0E3C

l230A0E98:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000

l230A0EA0:
	addi	s2,t3,+00000000
	jal	zero,00000000230A0E3C

l230A0EA8:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF
	jal	zero,00000000230A0EA0

l230A0EB8:
	addi	a5,a1,+00000000
	addi	a7,t1,+00000000

l230A0EC0:
	addi	s3,zero,+00000000

l230A0EC4:
	addi	a6,zero,+000007FF
	jal	zero,00000000230A06C4

l230A0ECC:
	addi	a5,zero,+00000000
	addi	a6,zero,+00000000
	jal	zero,00000000230A0E3C

l230A0ED8:
	bne	s2,zero,00000000230A0908

l230A0EDC:
	addi	a1,a7,+00000008

l230A0EE0:
	sltu	a7,a1,a7
	add	a5,a5,a7
	addi	a7,a1,+00000000
	jal	zero,00000000230A0908

l230A0EF0:
	beq	s2,zero,00000000230A0908

l230A0EF4:
	jal	zero,00000000230A0EDC

l230A0EF8:
	addi	a7,zero,+00000000
	beq	s1,zero,00000000230A0F24

l230A0F00:
	addi	a5,zero,+00000003
	bne	s1,a5,00000000230A0F18

l230A0F08:
	beq	s2,zero,00000000230A0F24

l230A0F0C:
	addi	a7,zero,-00000001
	addi	a6,zero,+000007FE
	jal	zero,00000000230A0F24

l230A0F18:
	addi	a5,zero,+00000002
	bne	s1,a5,00000000230A0F0C

l230A0F20:
	beq	s2,zero,00000000230A0F0C

l230A0F24:
	ori	a4,a4,+00000005
	addi	a5,a7,+00000000
	jal	zero,00000000230A0F74

l230A0F30:
	beq	a4,s3,00000000230A0C8C

l230A0F34:
	addi	a4,zero,+00000000
	jal	zero,00000000230A0CA4

l230A0F3C:
	addi	a4,a3,+00000000

l230A0F40:
	beq	a2,zero,00000000230A0EB8

l230A0F44:
	addi	s2,zero,+00000000

l230A0F48:
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a6,zero,+000007FF

l230A0F54:
	slli	a3,a5,00000008
	bge	a3,zero,00000000230A0F74

l230A0F5C:
	addi	a6,a6,+00000001
	addi	a3,zero,+000007FF
	beq	a6,a3,00000000230A0EF8

l230A0F68:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l230A0F74:
	slli	a1,a5,0000001D
	srli	a7,a7,00000003
	addi	a3,zero,+000007FF
	or	a7,a1,a7
	srli	a5,a5,00000003
	bne	a6,a3,00000000230A0FA4

l230A0F8C:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,00000000230A0FA4

l230A0F98:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l230A0FA4:
	slli	a5,a5,0000000C
	andi	a6,a6,+000007FF
	slli	a6,a6,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a6
	or	a3,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a3,+00000000
	beq	a4,zero,00000000230A0FD0

l230A0FCC:
	csrrs	zero,fflags,ra

l230A0FD0:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A0FF0:
	beq	a3,zero,00000000230A086C

l230A0FF4:
	jal	zero,00000000230A0864

l230A0FF8:
	bne	a4,s3,00000000230A0E84

l230A0FFC:
	addi	a6,zero,+00000000
	jal	zero,00000000230A0838

;; __divdf3: 230A1004
;;   Called from:
;;     230027D8 (in pa_input)
;;     23003868 (in rfc_config_channel)
;;     2308186A (in cvt)
;;     23083256 (in TSEN_Get_Temp)
;;     2309DB68 (in pow)
;;     2309DE00 (in __ieee754_pow)
;;     2309DE5C (in __ieee754_pow)
;;     2309DE8C (in __ieee754_pow)
;;     2309DEC0 (in __ieee754_pow)
;;     2309DFC4 (in __ieee754_pow)
;;     2309E7BC (in __ieee754_pow)
;;     2309EDD0 (in __ieee754_sqrt)
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
	beq	a6,zero,00000000230A108C

l230A105C:
	addi	a5,zero,+000007FF
	beq	a6,a5,00000000230A10F0

l230A1064:
	srli	a4,a0,0000001D
	slli	s7,s7,00000003
	or	s7,a4,s7
	lui	a5,00000800
	or	s7,s7,a5
	slli	s3,a0,00000003
	addi	s6,a6,-000003FF

l230A1080:
	addi	s8,zero,+00000000

l230A1084:
	addi	s1,zero,+00000000
	jal	zero,00000000230A1110

l230A108C:
	or	a5,s7,a0
	beq	a5,zero,00000000230A118C

l230A1094:
	beq	s7,zero,00000000230A10D4

l230A1098:
	addi	a0,s7,+00000000
	jal	ra,000000002309F27C

l230A10A0:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,00000000230A10E0

l230A10AC:
	addi	a4,zero,+0000001D
	addi	s3,a0,-00000008
	sub	a4,a4,a3
	sll	s7,s7,s3
	srl	a4,s0,a4
	or	s7,a4,s7
	sll	s3,s0,s3

l230A10C8:
	addi	a6,zero,-000003F3
	sub	s6,a6,a0
	jal	zero,00000000230A1080

l230A10D4:
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A10A0

l230A10E0:
	addi	s7,a0,-00000028
	sll	s7,s0,s7
	addi	s3,zero,+00000000
	jal	zero,00000000230A10C8

l230A10F0:
	or	s0,s7,a0
	beq	s0,zero,00000000230A11A0

l230A10F8:
	slli	a5,s7,0000000C
	addi	s3,a0,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,00000000230A1084

l230A1110:
	srli	a0,s5,00000014
	slli	s0,s5,0000000C
	andi	a6,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s5,s5,0000001F
	beq	a6,zero,00000000230A11B4

l230A112C:
	addi	a4,zero,+000007FF
	beq	a6,a4,00000000230A121C

l230A1134:
	srli	a5,s9,0000001D
	slli	a0,s0,00000003
	or	a0,a5,a0
	lui	s0,00000800
	or	s0,a0,s0
	slli	a5,s9,00000003
	addi	a0,a6,-000003FF

l230A1150:
	addi	a4,zero,+00000000

l230A1154:
	slli	a3,s8,00000002
	or	a3,a3,a4
	addi	a3,a3,-00000001
	addi	a1,zero,+0000000E
	xor	a2,s4,s5
	sub	a6,s6,a0
	bltu	a1,a3,00000000230A126C

l230A1170:
	auipc	a1,0000002A
	addi	a1,a1,+00000288
	slli	a3,a3,00000002
	add	a3,a3,a1
	lw	a3,a3,+00000000
	add	a3,a3,a1
	jalr	zero,a3,+00000000

l230A118C:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,00000000230A1084

l230A11A0:
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000
	addi	s6,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,00000000230A1084

l230A11B4:
	or	a5,s0,s9
	beq	a5,zero,00000000230A123C

l230A11BC:
	beq	s0,zero,00000000230A11FC

l230A11C0:
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C

l230A11C8:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,00000000230A120C

l230A11D4:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l230A11F0:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,00000000230A1150

l230A11FC:
	addi	a0,s9,+00000000
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A11C8

l230A120C:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,00000000230A11F0

l230A121C:
	or	a2,s0,s9
	beq	a2,zero,00000000230A1250

l230A1224:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,00000000230A1264

l230A1230:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,00000000230A1154

l230A123C:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,00000000230A1154

l230A1250:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,00000000230A1154

l230A1264:
	addi	a4,zero,+00000003
	jal	zero,00000000230A1154

l230A126C:
	bltu	s0,s7,00000000230A1278

l230A1270:
	bne	s7,s0,00000000230A155C

l230A1274:
	bltu	s3,a5,00000000230A155C

l230A1278:
	slli	a1,s7,0000001F
	srli	a4,s3,00000001
	slli	a3,s3,0000001F
	srli	s7,s7,00000001
	or	s3,a1,a4

l230A128C:
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
	bgeu	a5,a4,00000000230A12E0

l230A12C8:
	add	a5,a5,a0
	addi	a7,t1,-00000001
	bltu	a5,a0,00000000230A12E0

l230A12D4:
	bgeu	a5,a4,00000000230A12E0

l230A12D8:
	addi	a7,t1,-00000002
	add	a5,a5,a0

l230A12E0:
	sub	a5,a5,a4
	srl	t3,a5,t5
	slli	a4,s3,00000010
	srli	a4,a4,00000010
	and	a5,a5,t5
	addi	s3,t3,+00000000
	add	t1,t4,t3
	slli	a5,a5,00000010
	or	a4,a4,a5
	bgeu	a4,t1,00000000230A1320

l230A1308:
	add	a4,a4,a0
	addi	s3,t3,-00000001
	bltu	a4,a0,00000000230A1320

l230A1314:
	bgeu	a4,t1,00000000230A1320

l230A1318:
	addi	s3,t3,-00000002
	add	a4,a4,a0

l230A1320:
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
	bgeu	t1,s0,00000000230A1368

l230A1364:
	add	t0,t0,a7

l230A1368:
	lui	t2,00000010
	srli	a7,t1,00000010
	addi	t2,t2,-00000001
	add	t0,a7,t0
	and	a7,t1,t2
	slli	a7,a7,00000010
	and	a5,a5,t2
	add	a7,a7,a5
	bltu	a4,t0,00000000230A1398

l230A138C:
	addi	s0,s3,+00000000
	bne	a4,t0,00000000230A13D8

l230A1394:
	bgeu	a3,a7,00000000230A13D8

l230A1398:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	add	a4,a4,a5
	addi	s0,s3,-00000001
	bltu	a0,a4,00000000230A13B8

l230A13B0:
	bne	a0,a4,00000000230A13D8

l230A13B4:
	bltu	a3,a1,00000000230A13D8

l230A13B8:
	bltu	a4,t0,00000000230A13C4

l230A13BC:
	bne	t0,a4,00000000230A13D8

l230A13C0:
	bgeu	a3,a7,00000000230A13D8

l230A13C4:
	add	a3,a3,a1
	sltu	a5,a3,a1
	add	a5,a5,a0
	addi	s0,s3,-00000002
	add	a4,a4,a5

l230A13D8:
	sub	a7,a3,a7
	sub	a4,a4,t0
	sltu	a3,a3,a7
	sub	a4,a4,a3
	addi	a5,zero,-00000001
	beq	a0,a4,00000000230A1514

l230A13F0:
	srl	t0,a4,t5
	srli	a5,a7,00000010
	and	a4,a4,t5
	addi	a3,t0,+00000000
	add	t1,t4,t0
	slli	a4,a4,00000010
	or	a4,a5,a4
	bgeu	a4,t1,00000000230A1428

l230A1410:
	add	a4,a4,a0
	addi	a3,t0,-00000001
	bltu	a4,a0,00000000230A1428

l230A141C:
	bgeu	a4,t1,00000000230A1428

l230A1420:
	addi	a3,t0,-00000002
	add	a4,a4,a0

l230A1428:
	sub	a4,a4,t1
	srl	t1,a4,t5
	slli	a5,a7,00000010
	srli	a5,a5,00000010
	and	a4,a4,t5
	add	t4,t4,t1
	slli	a4,a4,00000010
	or	a4,a5,a4
	addi	a5,t1,+00000000
	bgeu	a4,t4,00000000230A1468

l230A1450:
	add	a4,a4,a0
	addi	a5,t1,-00000001
	bltu	a4,a0,00000000230A1468

l230A145C:
	bgeu	a4,t4,00000000230A1468

l230A1460:
	addi	a5,t1,-00000002
	add	a4,a4,a0

l230A1468:
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
	bgeu	a5,t3,00000000230A14A8

l230A14A0:
	lui	a7,00000010
	add	t4,t4,a7

l230A14A8:
	lui	t3,00000010
	addi	t3,t3,-00000001
	srli	t1,a5,00000010
	and	a7,a5,t3
	slli	a7,a7,00000010
	and	t5,t5,t3
	add	t1,t1,t4
	add	a7,a7,t5
	bltu	a4,t1,00000000230A14D8

l230A14CC:
	bne	a4,t1,00000000230A18A8

l230A14D0:
	addi	a5,a3,+00000000
	beq	a7,zero,00000000230A1514

l230A14D8:
	add	a4,a0,a4
	addi	a5,a3,-00000001
	bltu	a4,a0,00000000230A1508

l230A14E4:
	bltu	a4,t1,00000000230A14F0

l230A14E8:
	bne	a4,t1,00000000230A18A4

l230A14EC:
	bgeu	a1,a7,00000000230A150C

l230A14F0:
	addi	a5,a3,-00000002
	slli	a3,a1,00000001
	sltu	a1,a3,a1
	add	a0,a1,a0
	add	a4,a4,a0
	addi	a1,a3,+00000000

l230A1508:
	bne	a4,t1,00000000230A1510

l230A150C:
	beq	a1,a7,00000000230A1514

l230A1510:
	ori	a5,a5,+00000001

l230A1514:
	addi	a1,a6,+000003FF
	bge	zero,a1,00000000230A16B0

l230A151C:
	andi	a4,a5,+00000007
	beq	a4,zero,00000000230A15DC

l230A1524:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,00000000230A15D8

l230A1530:
	addi	a4,zero,+00000003
	beq	s2,a4,00000000230A15CC

l230A1538:
	bne	s2,zero,00000000230A15DC

l230A153C:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,00000000230A15DC

l230A1548:
	addi	a4,a5,+00000004

l230A154C:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,00000000230A15DC

l230A155C:
	addi	a6,a6,-00000001
	addi	a3,zero,+00000000
	jal	zero,00000000230A128C
230A1568                         13 06 0A 00 13 84 0B 00         ........
230A1570 93 87 09 00 13 07 0C 00 93 06 20 00 63 06 D7 02 .......... .c...
230A1580 93 06 30 00 63 06 D7 30 93 06 10 00 E3 14 D7 F8 ..0.c..0........
230A1590 13 05 00 00 93 07 00 00 6F 00 C0 2C 13 86 0A 00 ........o..,....
230A15A0 6F F0 9F FD 93 E4 84 00 13 05 00 00 93 07 00 00 o...............
230A15B0 13 07 F0 7F 6F 00 C0 05 37 04 08 00 93 07 00 00 ....o...7.......
230A15C0 13 06 00 00 13 07 30 00 6F F0 1F FB             ......0.o...   

l230A15CC:
	bne	a2,zero,00000000230A15DC

l230A15D0:
	addi	a4,a5,+00000008
	jal	zero,00000000230A154C

l230A15D8:
	bne	a2,zero,00000000230A15D0

l230A15DC:
	slli	a4,s0,00000007
	bge	a4,zero,00000000230A15F4

l230A15E4:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a6,+00000400

l230A15F4:
	addi	a4,zero,+000007FE
	blt	a4,a1,00000000230A1670

l230A15FC:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	a0,s0,00000003
	addi	a4,a1,+00000000

l230A1610:
	slli	a0,a0,0000000C
	andi	a4,a4,+000007FF
	slli	a3,a4,00000014
	srli	a4,a0,0000000C
	slli	a2,a2,0000001F
	or	a4,a4,a3
	or	a3,a4,a2
	addi	a0,a5,+00000000
	addi	a1,a3,+00000000
	beq	s1,zero,00000000230A163C

l230A1638:
	csrrs	zero,fflags,ra

l230A163C:
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

l230A1670:
	addi	a5,zero,+00000002
	beq	s2,a5,00000000230A16A8

l230A1678:
	addi	a5,zero,+00000003
	beq	s2,a5,00000000230A1698

l230A1680:
	beq	s2,zero,00000000230A169C

l230A1684:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l230A168C:
	ori	s1,s1,+00000005
	addi	a0,a5,+00000000
	jal	zero,00000000230A1610

l230A1698:
	bne	a2,zero,00000000230A1684

l230A169C:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,00000000230A168C

l230A16A8:
	bne	a2,zero,00000000230A169C

l230A16AC:
	jal	zero,00000000230A1684

l230A16B0:
	addi	a4,zero,+00000001
	bne	a1,zero,00000000230A1720

l230A16B8:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,00000000230A1714

l230A16C4:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,00000000230A170C

l230A16D0:
	addi	a4,zero,+00000003
	beq	s2,a4,00000000230A16FC

l230A16D8:
	addi	a4,s0,+00000000
	bne	s2,zero,00000000230A1714

l230A16E0:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,00000000230A1714

l230A16EC:
	sltiu	a4,a5,-00000004

l230A16F0:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,00000000230A1714

l230A16FC:
	addi	a4,s0,+00000000
	bne	a2,zero,00000000230A1714

l230A1704:
	sltiu	a4,a5,-00000008
	jal	zero,00000000230A16F0

l230A170C:
	addi	a4,s0,+00000000
	bne	a2,zero,00000000230A1704

l230A1714:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l230A1720:
	addi	a0,zero,+00000001
	sub	a0,a0,a1
	addi	a3,zero,+00000038
	blt	a3,a0,00000000230A1824

l230A1730:
	addi	a3,zero,+0000001F
	blt	a3,a0,00000000230A1798

l230A1738:
	addi	a6,a6,+0000041E
	srl	a1,a5,a0
	sll	a3,s0,a6
	sll	a5,a5,a6
	or	a3,a3,a1
	sltu	a5,zero,a5
	or	a5,a3,a5
	srl	a0,s0,a0

l230A1758:
	andi	a3,a5,+00000007
	beq	a3,zero,00000000230A17DC

l230A1760:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,00000000230A17D8

l230A176C:
	addi	a3,zero,+00000003
	beq	s2,a3,00000000230A17CC

l230A1774:
	bne	s2,zero,00000000230A17DC

l230A1778:
	andi	a3,a5,+0000000F
	addi	a1,zero,+00000004
	beq	a3,a1,00000000230A17DC

l230A1784:
	addi	a3,a5,+00000004

l230A1788:
	sltu	a5,a3,a5
	add	a0,a0,a5
	addi	a5,a3,+00000000
	jal	zero,00000000230A17DC

l230A1798:
	addi	a3,zero,-0000001F
	sub	a3,a3,a1
	addi	a7,zero,+00000020
	srl	a3,s0,a3
	addi	a1,zero,+00000000
	beq	a0,a7,00000000230A17B8

l230A17B0:
	addi	a6,a6,+0000043E
	sll	a1,s0,a6

l230A17B8:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a3,a5
	addi	a0,zero,+00000000
	jal	zero,00000000230A1758

l230A17CC:
	bne	a2,zero,00000000230A17DC

l230A17D0:
	addi	a3,a5,+00000008
	jal	zero,00000000230A1788

l230A17D8:
	bne	a2,zero,00000000230A17D0

l230A17DC:
	slli	a3,a0,00000008
	bge	a3,zero,00000000230A17FC

l230A17E4:
	ori	s1,s1,+00000001
	addi	a0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,00000000230A181C

l230A17F4:
	addi	a4,zero,+00000001
	jal	zero,00000000230A1610

l230A17FC:
	srli	a3,a5,00000003
	slli	a5,a0,0000001D
	or	a5,a5,a3
	srli	a0,a0,00000003
	beq	a4,zero,00000000230A1610

l230A1810:
	andi	a4,s1,+00000001
	beq	a4,zero,00000000230A1610

l230A1818:
	addi	a4,zero,+00000000

l230A181C:
	ori	s1,s1,+00000002
	jal	zero,00000000230A1610

l230A1824:
	or	a5,a5,s0
	beq	a5,zero,00000000230A185C

l230A182C:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,00000000230A186C

l230A1838:
	addi	a5,zero,+00000003
	beq	s2,a5,00000000230A1850

l230A1840:
	addi	a5,zero,+00000005
	beq	s2,zero,00000000230A1858

l230A1848:
	addi	a5,zero,+00000001
	jal	zero,00000000230A1858

l230A1850:
	addi	a5,zero,+00000009
	bne	a2,zero,00000000230A1848

l230A1858:
	srli	a5,a5,00000003

l230A185C:
	ori	s1,s1,+00000002
	addi	a0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230A1610

l230A186C:
	addi	a5,zero,+00000009
	bne	a2,zero,00000000230A1858

l230A1874:
	jal	zero,00000000230A1848
230A1878                         37 05 08 00 93 07 00 00         7.......
230A1880 13 07 F0 7F 13 06 00 00 93 04 00 01 6F F0 5F D8 ............o._.
230A1890 37 05 08 00 93 07 00 00 13 07 F0 7F 13 06 00 00 7...............
230A18A0 6F F0 1F D7                                     o...           

l230A18A4:
	addi	a3,a5,+00000000

l230A18A8:
	addi	a5,a3,+00000000
	jal	zero,00000000230A1510

;; __eqdf2: 230A18B0
;;   Called from:
;;     2305C88A (in print_number)
;;     230817FC (in cvt)
;;     230818A6 (in cvt)
;;     23081AF0 (in flt)
;;     2309D994 (in pow)
;;     2309D9AC (in pow)
;;     2309DA28 (in pow)
;;     2309DA70 (in pow)
;;     2309DB30 (in pow)
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
	bne	a4,t1,00000000230A18FC

l230A18EC:
	or	t1,a6,a0
	bne	t1,zero,00000000230A194C

l230A18F4:
	bne	a7,a4,00000000230A1970

l230A18F8:
	jal	zero,00000000230A1900

l230A18FC:
	bne	a7,t1,00000000230A1908

l230A1900:
	or	t1,a5,a2
	bne	t1,zero,00000000230A193C

l230A1908:
	addi	a0,zero,+00000001
	bne	a4,a7,00000000230A1974

l230A1910:
	bne	a6,a5,00000000230A1974

l230A1914:
	bne	t3,t4,00000000230A1974

l230A1918:
	beq	a1,a3,00000000230A1934

l230A191C:
	bne	a4,zero,00000000230A1974

l230A1920:
	or	a0,a6,a2
	sltu	a0,zero,a0
	jalr	zero,ra,+00000000

l230A192C:
	csrrsi	zero,fflags,00000010
	jal	zero,00000000230A1970

l230A1934:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A193C:
	addi	a3,zero,+000007FF
	bne	a4,a3,00000000230A1968

l230A1944:
	or	a0,a6,a0
	beq	a0,zero,00000000230A1968

l230A194C:
	slli	a4,a6,0000000C
	bge	a4,zero,00000000230A192C

l230A1954:
	addi	a4,zero,+000007FF
	addi	a0,zero,+00000001
	bne	a7,a4,00000000230A1974

l230A1960:
	or	a2,a5,a2
	beq	a2,zero,00000000230A1974

l230A1968:
	slli	a4,a5,0000000C
	bge	a4,zero,00000000230A192C

l230A1970:
	addi	a0,zero,+00000001

l230A1974:
	jalr	zero,ra,+00000000

;; __gedf2: 230A1978
;;   Called from:
;;     2305C91A (in print_number)
;;     2305CA02 (in print_number)
;;     2308180C (in cvt)
;;     2309D6AC (in floor)
;;     2309D720 (in floor)
;;     2309D7A0 (in floor)
;;     2309E52C (in __ieee754_pow)
;;     2309E878 (in __ieee754_pow)
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
	bne	a6,t4,00000000230A19C8

l230A19B4:
	or	t4,a7,a0
	beq	t4,zero,00000000230A1A54

l230A19BC:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,-00000002
	jal	zero,00000000230A1A10

l230A19C8:
	bne	a4,t4,00000000230A19D4

l230A19CC:
	or	t4,a5,a2
	bne	t4,zero,00000000230A19BC

l230A19D4:
	bne	a6,zero,00000000230A1A58

l230A19D8:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,00000000230A19EC

l230A19E4:
	or	a2,a5,a2
	beq	a2,zero,00000000230A1A44

l230A19EC:
	bne	a0,zero,00000000230A1A04

l230A19F0:
	bne	a1,a3,00000000230A19F8

l230A19F4:
	bge	a4,a6,00000000230A1A18

l230A19F8:
	beq	a1,zero,00000000230A1A3C

l230A19FC:
	addi	a1,zero,-00000001
	jal	zero,00000000230A1A10

l230A1A04:
	addi	a1,zero,-00000001
	beq	a3,zero,00000000230A1A10

l230A1A0C:
	addi	a1,a3,+00000000

l230A1A10:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230A1A18:
	bge	a6,a4,00000000230A1A24

l230A1A1C:
	bne	a1,zero,00000000230A1A10

l230A1A20:
	jal	zero,00000000230A19FC

l230A1A24:
	bltu	a5,a7,00000000230A19F8

l230A1A28:
	bne	a7,a5,00000000230A1A4C

l230A1A2C:
	bltu	t3,t1,00000000230A19F8

l230A1A30:
	bltu	t1,t3,00000000230A1A1C

l230A1A34:
	addi	a1,zero,+00000000
	jal	zero,00000000230A1A10

l230A1A3C:
	addi	a1,zero,+00000001
	jal	zero,00000000230A1A10

l230A1A44:
	bne	a0,zero,00000000230A1A34

l230A1A48:
	jal	zero,00000000230A19F8

l230A1A4C:
	bltu	a7,a5,00000000230A1A1C

l230A1A50:
	jal	zero,00000000230A1A34

l230A1A54:
	beq	a4,a6,00000000230A19CC

l230A1A58:
	bne	a4,zero,00000000230A19F0

l230A1A5C:
	addi	a0,zero,+00000000
	jal	zero,00000000230A19E4

;; __ledf2: 230A1A64
;;   Called from:
;;     2305C8EA (in print_number)
;;     2305C902 (in print_number)
;;     2305C97C (in print_number)
;;     2305C998 (in print_number)
;;     2305C9D8 (in print_number)
;;     230817D4 (in cvt)
;;     23081842 (in cvt)
;;     23081A22 (in flt)
;;     2309D9D4 (in pow)
;;     2309DAE0 (in pow)
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
	bne	a6,t4,00000000230A1AB4

l230A1AA0:
	or	t4,a7,a0
	beq	t4,zero,00000000230A1B40

l230A1AA8:
	csrrsi	zero,fflags,00000010
	addi	a1,zero,+00000002
	jal	zero,00000000230A1AFC

l230A1AB4:
	bne	a4,t4,00000000230A1AC0

l230A1AB8:
	or	t4,a5,a2
	bne	t4,zero,00000000230A1AA8

l230A1AC0:
	bne	a6,zero,00000000230A1B44

l230A1AC4:
	or	a0,a7,a0
	sltiu	a0,a0,+00000001
	bne	a4,zero,00000000230A1AD8

l230A1AD0:
	or	a2,a5,a2
	beq	a2,zero,00000000230A1B30

l230A1AD8:
	bne	a0,zero,00000000230A1AF0

l230A1ADC:
	bne	a1,a3,00000000230A1AE4

l230A1AE0:
	bge	a4,a6,00000000230A1B04

l230A1AE4:
	beq	a1,zero,00000000230A1B28

l230A1AE8:
	addi	a1,zero,-00000001
	jal	zero,00000000230A1AFC

l230A1AF0:
	addi	a1,zero,-00000001
	beq	a3,zero,00000000230A1AFC

l230A1AF8:
	addi	a1,a3,+00000000

l230A1AFC:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230A1B04:
	bge	a6,a4,00000000230A1B10

l230A1B08:
	bne	a1,zero,00000000230A1AFC

l230A1B0C:
	jal	zero,00000000230A1AE8

l230A1B10:
	bltu	a5,a7,00000000230A1AE4

l230A1B14:
	bne	a7,a5,00000000230A1B38

l230A1B18:
	bltu	t3,t1,00000000230A1AE4

l230A1B1C:
	bltu	t1,t3,00000000230A1B08

l230A1B20:
	addi	a1,zero,+00000000
	jal	zero,00000000230A1AFC

l230A1B28:
	addi	a1,zero,+00000001
	jal	zero,00000000230A1AFC

l230A1B30:
	bne	a0,zero,00000000230A1B20

l230A1B34:
	jal	zero,00000000230A1AE4

l230A1B38:
	bltu	a7,a5,00000000230A1B08

l230A1B3C:
	jal	zero,00000000230A1B20

l230A1B40:
	beq	a4,a6,00000000230A1AB8

l230A1B44:
	bne	a4,zero,00000000230A1ADC

l230A1B48:
	addi	a0,zero,+00000000
	jal	zero,00000000230A1AD0

;; __muldf3: 230A1B50
;;   Called from:
;;     2300275E (in pa_input)
;;     230027C8 (in pa_input)
;;     230028D6 (in pa_adapt)
;;     23003878 (in rfc_config_channel)
;;     23004986 (in rf_pri_rccal_iq)
;;     2301984A (in phyif_utils_decode)
;;     230241A8 (in tcpip_stack_input)
;;     2305CDA2 (in parse_value)
;;     2305CE18 (in parse_value)
;;     2305CEB2 (in parse_value)
;;     2305CEE6 (in parse_value)
;;     23081836 (in cvt)
;;     23081884 (in cvt)
;;     2308194E (in cvt)
;;     23082EAC (in ADC_Parse_Result)
;;     23082EC4 (in ADC_Parse_Result)
;;     23082FA0 (in ADC_Parse_Result)
;;     23082FB8 (in ADC_Parse_Result)
;;     2309DDB0 (in __ieee754_pow)
;;     2309DEEC (in __ieee754_pow)
;;     2309DFE0 (in __ieee754_pow)
;;     2309E010 (in __ieee754_pow)
;;     2309E060 (in __ieee754_pow)
;;     2309E090 (in __ieee754_pow)
;;     2309E0AC (in __ieee754_pow)
;;     2309E0C8 (in __ieee754_pow)
;;     2309E0F0 (in __ieee754_pow)
;;     2309E110 (in __ieee754_pow)
;;     2309E130 (in __ieee754_pow)
;;     2309E150 (in __ieee754_pow)
;;     2309E180 (in __ieee754_pow)
;;     2309E19C (in __ieee754_pow)
;;     2309E1C4 (in __ieee754_pow)
;;     2309E1EC (in __ieee754_pow)
;;     2309E22C (in __ieee754_pow)
;;     2309E27C (in __ieee754_pow)
;;     2309E298 (in __ieee754_pow)
;;     2309E2EC (in __ieee754_pow)
;;     2309E330 (in __ieee754_pow)
;;     2309E354 (in __ieee754_pow)
;;     2309E458 (in __ieee754_pow)
;;     2309E474 (in __ieee754_pow)
;;     2309E4A4 (in __ieee754_pow)
;;     2309E5D8 (in __ieee754_pow)
;;     2309E620 (in __ieee754_pow)
;;     2309E644 (in __ieee754_pow)
;;     2309E6B8 (in __ieee754_pow)
;;     2309E6D4 (in __ieee754_pow)
;;     2309E6F4 (in __ieee754_pow)
;;     2309E714 (in __ieee754_pow)
;;     2309E734 (in __ieee754_pow)
;;     2309E754 (in __ieee754_pow)
;;     2309E784 (in __ieee754_pow)
;;     2309E7D8 (in __ieee754_pow)
;;     2309E834 (in __ieee754_pow)
;;     2309E898 (in __ieee754_pow)
;;     2309E8A4 (in __ieee754_pow)
;;     2309E920 (in __ieee754_pow)
;;     2309E944 (in __ieee754_pow)
;;     2309E968 (in __ieee754_pow)
;;     2309E990 (in __ieee754_pow)
;;     2309E9C8 (in __ieee754_pow)
;;     2309E9DC (in __ieee754_pow)
;;     2309E9F0 (in __ieee754_pow)
;;     2309EA7C (in __ieee754_pow)
;;     2309ED88 (in __ieee754_sqrt)
;;     2309F090 (in scalbn)
;;     2309F0F8 (in scalbn)
;;     2309F168 (in scalbn)
;;     2309F19C (in scalbn)
;;     2309F1E4 (in scalbn)
;;     2309F364 (in __floatundisf)
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
	beq	s7,zero,00000000230A1BD8

l230A1BA8:
	addi	a5,zero,+000007FF
	beq	s7,a5,00000000230A1C3C

l230A1BB0:
	srli	a5,a0,0000001D
	slli	s3,s3,00000003
	or	s3,a5,s3
	lui	a5,00000800
	or	s3,s3,a5
	slli	s4,a0,00000003
	addi	s7,s7,-000003FF

l230A1BCC:
	addi	s8,zero,+00000000

l230A1BD0:
	addi	s1,zero,+00000000
	jal	zero,00000000230A1C5C

l230A1BD8:
	or	a5,s3,a0
	beq	a5,zero,00000000230A1CDC

l230A1BE0:
	beq	s3,zero,00000000230A1C20

l230A1BE4:
	addi	a0,s3,+00000000
	jal	ra,000000002309F27C

l230A1BEC:
	addi	a4,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a4,00000000230A1C2C

l230A1BF8:
	addi	a5,zero,+0000001D
	addi	s4,a0,-00000008
	sub	a5,a5,a4
	sll	s3,s3,s4
	srl	a5,s0,a5
	or	s3,a5,s3
	sll	s4,s0,s4

l230A1C14:
	addi	s7,zero,-000003F3
	sub	s7,s7,a0
	jal	zero,00000000230A1BCC

l230A1C20:
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A1BEC

l230A1C2C:
	addi	s3,a0,-00000028
	sll	s3,s0,s3
	addi	s4,zero,+00000000
	jal	zero,00000000230A1C14

l230A1C3C:
	or	s0,s3,a0
	beq	s0,zero,00000000230A1CF0

l230A1C44:
	slli	a5,s3,0000000C
	addi	s4,a0,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000003
	addi	s1,zero,+00000010
	blt	a5,zero,00000000230A1BD0

l230A1C5C:
	srli	a0,s6,00000014
	slli	s0,s6,0000000C
	andi	a0,a0,+000007FF
	addi	a5,s9,+00000000
	srli	s0,s0,0000000C
	srli	s6,s6,0000001F
	beq	a0,zero,00000000230A1D04

l230A1C78:
	addi	a4,zero,+000007FF
	beq	a0,a4,00000000230A1D6C

l230A1C80:
	srli	a5,s9,0000001D
	slli	s0,s0,00000003
	or	s0,a5,s0
	lui	a5,00000800
	or	s0,s0,a5
	addi	a0,a0,-000003FF
	slli	a5,s9,00000003

l230A1C9C:
	addi	a4,zero,+00000000

l230A1CA0:
	slli	a3,s8,00000002
	or	a3,a3,a4
	add	a0,s7,a0
	addi	a3,a3,-00000001
	addi	a2,zero,+0000000E
	xor	a6,s5,s6
	addi	a7,a0,+00000001
	bltu	a2,a3,00000000230A1E30

l230A1CC0:
	auipc	a2,00000029
	addi	a2,a2,+00000774
	slli	a3,a3,00000002
	add	a3,a3,a2
	lw	a3,a3,+00000000
	add	a3,a3,a2
	jalr	zero,a3,+00000000

l230A1CDC:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+00000000
	addi	s8,zero,+00000001
	jal	zero,00000000230A1BD0

l230A1CF0:
	addi	s3,zero,+00000000
	addi	s4,zero,+00000000
	addi	s7,zero,+000007FF
	addi	s8,zero,+00000002
	jal	zero,00000000230A1BD0

l230A1D04:
	or	a5,s0,s9
	beq	a5,zero,00000000230A1D8C

l230A1D0C:
	beq	s0,zero,00000000230A1D4C

l230A1D10:
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C

l230A1D18:
	addi	a3,a0,-0000000B
	addi	a5,zero,+0000001C
	blt	a5,a3,00000000230A1D5C

l230A1D24:
	addi	a4,zero,+0000001D
	addi	a5,a0,-00000008
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s9,a4
	or	s0,a4,s0
	sll	a5,s9,a5

l230A1D40:
	addi	a4,zero,-000003F3
	sub	a0,a4,a0
	jal	zero,00000000230A1C9C

l230A1D4C:
	addi	a0,s9,+00000000
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A1D18

l230A1D5C:
	addi	s0,a0,-00000028
	sll	s0,s9,s0
	addi	a5,zero,+00000000
	jal	zero,00000000230A1D40

l230A1D6C:
	or	a2,s0,s9
	beq	a2,zero,00000000230A1DA0

l230A1D74:
	slli	a4,s0,0000000C
	addi	a0,zero,+000007FF
	blt	a4,zero,00000000230A1DB4

l230A1D80:
	addi	a4,zero,+00000003
	addi	s1,zero,+00000010
	jal	zero,00000000230A1CA0

l230A1D8C:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,00000000230A1CA0

l230A1DA0:
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	addi	a0,zero,+000007FF
	addi	a4,zero,+00000002
	jal	zero,00000000230A1CA0

l230A1DB4:
	addi	a4,zero,+00000003
	jal	zero,00000000230A1CA0
230A1DBC                                     37 04 08 00             7...
230A1DC0 93 07 00 00 13 07 F0 7F 13 08 00 00 93 04 00 01 ................

l230A1DD0:
	slli	s0,s0,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	s0,s0,0000000C
	slli	a6,a6,0000001F
	or	s0,s0,a4
	or	a4,s0,a6
	addi	a0,a5,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,00000000230A1DFC

l230A1DF8:
	csrrs	zero,fflags,ra

l230A1DFC:
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

l230A1E30:
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
	bgeu	a2,t4,00000000230A1E6C

l230A1E68:
	add	t3,t3,t1

l230A1E6C:
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
	bgeu	s4,a5,00000000230A1EB0

l230A1EA8:
	lui	a5,00000010
	add	a4,a4,a5

l230A1EB0:
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
	bgeu	a3,a4,00000000230A1F00

l230A1EFC:
	add	t5,t5,a5

l230A1F00:
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
	bgeu	s3,a5,00000000230A1F44

l230A1F40:
	add	a1,a1,a4

l230A1F44:
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
	bge	a4,zero,00000000230A2070

l230A1FD4:
	srli	a4,a5,00000001
	andi	a5,a5,+00000001
	or	a5,a4,a5
	slli	a4,s0,0000001F
	or	a5,a5,a4
	srli	s0,s0,00000001

l230A1FEC:
	addi	a1,a7,+000003FF
	bge	zero,a1,00000000230A2100

l230A1FF4:
	andi	a4,a5,+00000007
	beq	a4,zero,00000000230A2088

l230A1FFC:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,00000000230A2084

l230A2008:
	addi	a4,zero,+00000003
	beq	s2,a4,00000000230A2078

l230A2010:
	bne	s2,zero,00000000230A2088

l230A2014:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,00000000230A2088

l230A2020:
	addi	a4,a5,+00000004

l230A2024:
	sltu	a5,a4,a5
	add	s0,s0,a5
	addi	a5,a4,+00000000
	jal	zero,00000000230A2088
230A2034             13 88 0A 00 13 84 09 00 93 07 0A 00     ............
230A2040 13 07 0C 00 93 06 20 00 63 00 D7 28 93 06 30 00 ...... .c..(..0.
230A2050 63 04 D7 28 93 06 10 00 E3 1A D7 F8 13 04 00 00 c..(............
230A2060 93 07 00 00 6F 00 00 25 13 08 0B 00 6F F0 9F FD ....o..%....o...

l230A2070:
	addi	a7,a0,+00000000
	jal	zero,00000000230A1FEC

l230A2078:
	bne	a6,zero,00000000230A2088

l230A207C:
	addi	a4,a5,+00000008
	jal	zero,00000000230A2024

l230A2084:
	bne	a6,zero,00000000230A207C

l230A2088:
	slli	a4,s0,00000007
	bge	a4,zero,00000000230A20A0

l230A2090:
	lui	a4,000FF000
	addi	a4,a4,-00000001
	and	s0,s0,a4
	addi	a1,a7,+00000400

l230A20A0:
	addi	a4,zero,+000007FE
	blt	a4,a1,00000000230A20C0

l230A20A8:
	srli	a4,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a4
	srli	s0,s0,00000003
	addi	a4,a1,+00000000
	jal	zero,00000000230A1DD0

l230A20C0:
	addi	a5,zero,+00000002
	beq	s2,a5,00000000230A20F8

l230A20C8:
	addi	a5,zero,+00000003
	beq	s2,a5,00000000230A20E8

l230A20D0:
	beq	s2,zero,00000000230A20EC

l230A20D4:
	addi	a5,zero,-00000001
	addi	a4,zero,+000007FE

l230A20DC:
	ori	s1,s1,+00000005
	addi	s0,a5,+00000000
	jal	zero,00000000230A1DD0

l230A20E8:
	bne	a6,zero,00000000230A20D4

l230A20EC:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,00000000230A20DC

l230A20F8:
	bne	a6,zero,00000000230A20EC

l230A20FC:
	jal	zero,00000000230A20D4

l230A2100:
	addi	a4,zero,+00000001
	bne	a1,zero,00000000230A2170

l230A2108:
	andi	a3,a5,+00000007
	addi	a4,s0,+00000000
	beq	a3,zero,00000000230A2164

l230A2114:
	addi	a4,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a4,00000000230A215C

l230A2120:
	addi	a4,zero,+00000003
	beq	s2,a4,00000000230A214C

l230A2128:
	addi	a4,s0,+00000000
	bne	s2,zero,00000000230A2164

l230A2130:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,00000000230A2164

l230A213C:
	sltiu	a4,a5,-00000004

l230A2140:
	xori	a4,a4,+00000001
	add	a4,a4,s0
	jal	zero,00000000230A2164

l230A214C:
	addi	a4,s0,+00000000
	bne	a6,zero,00000000230A2164

l230A2154:
	sltiu	a4,a5,-00000008
	jal	zero,00000000230A2140

l230A215C:
	addi	a4,s0,+00000000
	bne	a6,zero,00000000230A2154

l230A2164:
	srli	a4,a4,00000018
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001

l230A2170:
	addi	a3,zero,+00000001
	sub	a3,a3,a1
	addi	a2,zero,+00000038
	blt	a2,a3,00000000230A2274

l230A2180:
	addi	a2,zero,+0000001F
	blt	a2,a3,00000000230A21E8

l230A2188:
	addi	a7,a7,+0000041E
	sll	a2,s0,a7
	srl	a1,a5,a3
	sll	a5,a5,a7
	or	a2,a2,a1
	sltu	a5,zero,a5
	or	a5,a2,a5
	srl	s0,s0,a3

l230A21A8:
	andi	a3,a5,+00000007
	beq	a3,zero,00000000230A222C

l230A21B0:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a3,00000000230A2228

l230A21BC:
	addi	a3,zero,+00000003
	beq	s2,a3,00000000230A221C

l230A21C4:
	bne	s2,zero,00000000230A222C

l230A21C8:
	andi	a3,a5,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,00000000230A222C

l230A21D4:
	addi	a3,a5,+00000004

l230A21D8:
	sltu	a5,a3,a5
	add	s0,s0,a5
	addi	a5,a3,+00000000
	jal	zero,00000000230A222C

l230A21E8:
	addi	a2,zero,-0000001F
	sub	a2,a2,a1
	addi	a0,zero,+00000020
	srl	a2,s0,a2
	addi	a1,zero,+00000000
	beq	a3,a0,00000000230A2208

l230A2200:
	addi	a7,a7,+0000043E
	sll	a1,s0,a7

l230A2208:
	or	a5,a1,a5
	sltu	a5,zero,a5
	or	a5,a2,a5
	addi	s0,zero,+00000000
	jal	zero,00000000230A21A8

l230A221C:
	bne	a6,zero,00000000230A222C

l230A2220:
	addi	a3,a5,+00000008
	jal	zero,00000000230A21D8

l230A2228:
	bne	a6,zero,00000000230A2220

l230A222C:
	slli	a3,s0,00000008
	bge	a3,zero,00000000230A224C

l230A2234:
	ori	s1,s1,+00000001
	addi	s0,zero,+00000000
	addi	a5,zero,+00000000
	bne	a4,zero,00000000230A226C

l230A2244:
	addi	a4,zero,+00000001
	jal	zero,00000000230A1DD0

l230A224C:
	srli	a3,a5,00000003
	slli	a5,s0,0000001D
	or	a5,a5,a3
	srli	s0,s0,00000003
	beq	a4,zero,00000000230A1DD0

l230A2260:
	andi	a4,s1,+00000001
	beq	a4,zero,00000000230A1DD0

l230A2268:
	addi	a4,zero,+00000000

l230A226C:
	ori	s1,s1,+00000002
	jal	zero,00000000230A1DD0

l230A2274:
	or	a5,a5,s0
	beq	a5,zero,00000000230A22AC

l230A227C:
	addi	a5,zero,+00000002
	ori	s1,s1,+00000001
	beq	s2,a5,00000000230A22BC

l230A2288:
	addi	a5,zero,+00000003
	beq	s2,a5,00000000230A22A0

l230A2290:
	addi	a5,zero,+00000005
	beq	s2,zero,00000000230A22A8

l230A2298:
	addi	a5,zero,+00000001
	jal	zero,00000000230A22A8

l230A22A0:
	addi	a5,zero,+00000009
	bne	a6,zero,00000000230A2298

l230A22A8:
	srli	a5,a5,00000003

l230A22AC:
	ori	s1,s1,+00000002
	addi	s0,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230A1DD0

l230A22BC:
	addi	a5,zero,+00000009
	bne	a6,zero,00000000230A22A8

l230A22C4:
	jal	zero,00000000230A2298
230A22C8                         13 04 00 00 93 07 00 00         ........
230A22D0 13 07 F0 7F 6F F0 DF AF 37 04 08 00 93 07 00 00 ....o...7.......
230A22E0 13 07 F0 7F 13 08 00 00 6F F0 9F AE             ........o...   

;; __subdf3: 230A22EC
;;   Called from:
;;     2305C8DA (in print_number)
;;     2305C96C (in print_number)
;;     2305CE42 (in parse_value)
;;     2309D8CC (in modf)
;;     2309DDF4 (in __ieee754_pow)
;;     2309DEB4 (in __ieee754_pow)
;;     2309DF88 (in __ieee754_pow)
;;     2309E024 (in __ieee754_pow)
;;     2309E040 (in __ieee754_pow)
;;     2309E054 (in __ieee754_pow)
;;     2309E074 (in __ieee754_pow)
;;     2309E248 (in __ieee754_pow)
;;     2309E25C (in __ieee754_pow)
;;     2309E270 (in __ieee754_pow)
;;     2309E308 (in __ieee754_pow)
;;     2309E31C (in __ieee754_pow)
;;     2309E3D8 (in __ieee754_pow)
;;     2309E3E4 (in __ieee754_pow)
;;     2309E3F0 (in __ieee754_pow)
;;     2309E404 (in __ieee754_pow)
;;     2309E44C (in __ieee754_pow)
;;     2309E518 (in __ieee754_pow)
;;     2309E594 (in __ieee754_pow)
;;     2309E5F8 (in __ieee754_pow)
;;     2309E60C (in __ieee754_pow)
;;     2309E688 (in __ieee754_pow)
;;     2309E69C (in __ieee754_pow)
;;     2309E6E8 (in __ieee754_pow)
;;     2309E728 (in __ieee754_pow)
;;     2309E768 (in __ieee754_pow)
;;     2309E7A8 (in __ieee754_pow)
;;     2309E7F8 (in __ieee754_pow)
;;     2309E804 (in __ieee754_pow)
;;     2309E818 (in __ieee754_pow)
;;     2309E86C (in __ieee754_pow)
;;     2309E904 (in __ieee754_pow)
;;     2309E984 (in __ieee754_pow)
;;     2309E9AC (in __ieee754_pow)
;;     2309EA0C (in __ieee754_pow)
;;     2309EA44 (in __ieee754_pow)
;;     2309EA58 (in __ieee754_pow)
;;     2309EDC4 (in __ieee754_sqrt)
;;     2309EF0C (in rint)
;;     2309EFC8 (in rint)
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
	bne	a6,a4,00000000230A2364

l230A235C:
	or	a4,a5,t1
	bne	a4,zero,00000000230A2368

l230A2364:
	xori	a3,a3,+00000001

l230A2368:
	sub	a4,s1,a6
	bne	a3,s2,00000000230A2788

l230A2370:
	bge	zero,a4,00000000230A24C8

l230A2374:
	bne	a6,zero,00000000230A23D8

l230A2378:
	or	a3,a5,t1
	bne	a3,zero,00000000230A2394

l230A2380:
	addi	a5,zero,+000007FF
	beq	a4,a5,00000000230A23BC

l230A2388:
	addi	a5,t3,+00000000

l230A238C:
	addi	s1,zero,+00000000
	jal	zero,00000000230A2640

l230A2394:
	addi	a3,a4,-00000001
	bne	a3,zero,00000000230A23B4

l230A239C:
	add	t1,t1,a7
	add	a5,t3,a5
	sltu	a7,t1,a7
	add	a5,a5,a7

l230A23AC:
	addi	a4,zero,+00000001
	jal	zero,00000000230A244C

l230A23B4:
	addi	a2,zero,+000007FF
	bne	a4,a2,00000000230A2404

l230A23BC:
	or	a5,t3,a7
	beq	a5,zero,00000000230A2D34

l230A23C4:
	slli	a5,t3,00000009
	blt	a5,zero,00000000230A2388

l230A23CC:
	addi	a5,t3,+00000000

l230A23D0:
	addi	s1,zero,+00000010
	jal	zero,00000000230A2640

l230A23D8:
	addi	a3,zero,+000007FF
	bne	s1,a3,00000000230A23F8

l230A23E0:
	or	a5,t3,a7
	beq	a5,zero,00000000230A2D40

l230A23E8:
	slli	a5,t3,00000009
	blt	a5,zero,00000000230A2D48

l230A23F0:
	addi	a5,t3,+00000000
	jal	zero,00000000230A2594

l230A23F8:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000

l230A2404:
	addi	a4,zero,+00000038
	blt	a4,a3,00000000230A24BC

l230A240C:
	addi	a4,zero,+0000001F
	blt	a4,a3,00000000230A2488

l230A2414:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l230A2438:
	add	t1,t1,a7
	add	a5,a3,t3
	sltu	a7,t1,a7
	add	a5,a5,a7
	addi	a4,s1,+00000000

l230A244C:
	slli	a3,a5,00000008
	bge	a3,zero,00000000230A28A0

l230A2454:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,00000000230A2758

l230A2460:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	srli	a7,t1,00000001
	and	a3,a5,a3
	andi	t1,t1,+00000001
	slli	a5,a3,0000001F
	or	t1,a7,t1
	or	a7,a5,t1
	srli	a5,a3,00000001
	jal	zero,00000000230A26E0

l230A2488:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,00000000230A24A8

l230A249C:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l230A24A8:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l230A24B4:
	addi	a3,zero,+00000000
	jal	zero,00000000230A2438

l230A24BC:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,00000000230A24B4

l230A24C8:
	beq	a4,zero,00000000230A25F0

l230A24CC:
	sub	a4,a6,s1
	bne	s1,zero,00000000230A2578

l230A24D4:
	or	a3,t3,a7
	bne	a3,zero,00000000230A2500

l230A24DC:
	addi	a3,zero,+000007FF
	bne	a4,a3,00000000230A28A0

l230A24E4:
	or	a7,a5,t1
	beq	a7,zero,00000000230A2D54

l230A24EC:
	slli	a3,a5,00000009
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	blt	a3,zero,00000000230A2640

l230A24FC:
	jal	zero,00000000230A23D0

l230A2500:
	addi	s0,a4,-00000001
	bne	s0,zero,00000000230A2520

l230A2508:
	add	a7,a7,t1
	sltu	t1,a7,t1
	add	a5,t3,a5
	add	a5,a5,t1
	addi	t1,a7,+00000000
	jal	zero,00000000230A23AC

l230A2520:
	addi	a3,zero,+000007FF
	beq	a4,a3,00000000230A24E4

l230A2528:
	addi	a4,zero,+00000038
	blt	a4,s0,00000000230A25E4

l230A2530:
	addi	a4,zero,+0000001F
	blt	a4,s0,00000000230A25B0

l230A2538:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a3,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a3
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l230A255C:
	add	a7,a7,t1
	add	s0,s0,a5
	sltu	a5,a7,t1
	add	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	jal	zero,00000000230A244C

l230A2578:
	addi	a3,zero,+000007FF
	bne	a6,a3,00000000230A25A0

l230A2580:
	or	a7,a5,t1
	beq	a7,zero,00000000230A2D14

l230A2588:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,00000000230A2D4C

l230A2594:
	addi	a4,zero,+000007FF

l230A2598:
	addi	a6,zero,+00000000
	jal	zero,00000000230A23D0

l230A25A0:
	lui	a3,00000800
	or	t3,t3,a3
	addi	s0,a4,+00000000
	jal	zero,00000000230A2528

l230A25B0:
	addi	a4,s0,-00000020
	addi	a3,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a3,00000000230A25D0

l230A25C4:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l230A25D0:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l230A25DC:
	addi	s0,zero,+00000000
	jal	zero,00000000230A255C

l230A25E4:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,00000000230A25DC

l230A25F0:
	addi	a4,s1,+00000001
	andi	a3,a4,+000007FE
	bne	a3,zero,00000000230A26B8

l230A25FC:
	or	a3,t3,a7
	bne	s1,zero,00000000230A265C

l230A2604:
	beq	a3,zero,00000000230A28A4

l230A2608:
	or	a4,a5,t1
	beq	a4,zero,00000000230A29F4

l230A2610:
	add	t1,a7,t1
	add	a5,t3,a5
	sltu	s0,t1,a7
	add	t3,a5,s0
	slli	a5,t3,00000008
	bge	a5,zero,00000000230A28A8

l230A2628:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	and	a5,t3,a5
	addi	a7,t1,+00000000
	addi	a6,zero,+00000000
	addi	a4,zero,+00000001

l230A2640:
	andi	a3,a7,+00000007
	bne	a3,zero,00000000230A2720

l230A2648:
	beq	a6,zero,00000000230A2B20

l230A264C:
	andi	a3,s1,+00000001
	beq	a3,zero,00000000230A2B20

l230A2654:
	ori	s1,s1,+00000002
	jal	zero,00000000230A2B20

l230A265C:
	addi	a2,zero,+000007FF
	bne	s1,a2,00000000230A2694

l230A2664:
	beq	a3,zero,00000000230A2E18

l230A2668:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a2,00000000230A26A0

l230A267C:
	or	a4,a5,t1
	beq	a4,zero,00000000230A2E0C

l230A2684:
	slli	a4,a5,00000009
	blt	a4,zero,00000000230A269C

l230A268C:
	addi	s1,zero,+00000010
	jal	zero,00000000230A269C

l230A2694:
	addi	s1,zero,+00000000
	beq	a6,a2,00000000230A267C

l230A269C:
	beq	a3,zero,00000000230A2E10

l230A26A0:
	or	a5,a5,t1
	bne	a5,zero,00000000230A2B10

l230A26A8:
	addi	a5,t3,+00000000
	jal	zero,00000000230A2AF8

l230A26B0:
	addi	s1,zero,+00000000
	jal	zero,00000000230A267C

l230A26B8:
	addi	a3,zero,+000007FF
	beq	a4,a3,00000000230A26E8

l230A26C0:
	add	t1,a7,t1
	add	s0,t3,a5
	sltu	a5,t1,a7
	add	t3,s0,a5
	slli	a5,t3,0000001F
	srli	t1,t1,00000001
	or	a7,a5,t1
	srli	a5,t3,00000001

l230A26E0:
	addi	a6,zero,+00000000
	jal	zero,00000000230A238C

l230A26E8:
	beq	s3,zero,00000000230A26F8

l230A26EC:
	addi	a5,zero,+00000003
	bne	s3,a5,00000000230A2700

l230A26F4:
	bne	s2,zero,00000000230A270C

l230A26F8:
	addi	a4,zero,+000007FF
	jal	zero,00000000230A2768

l230A2700:
	addi	a5,zero,+00000002
	bne	s3,a5,00000000230A270C

l230A2708:
	bne	s2,zero,00000000230A26F8

l230A270C:
	addi	a6,zero,+00000000
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE

l230A271C:
	addi	s1,zero,+00000005

l230A2720:
	addi	a3,zero,+00000002
	ori	s1,s1,+00000001
	beq	s3,a3,00000000230A2DBC

l230A272C:
	addi	a3,zero,+00000003
	beq	s3,a3,00000000230A2DB0

l230A2734:
	bne	s3,zero,00000000230A2DC0

l230A2738:
	andi	a3,a7,+0000000F
	addi	a2,zero,+00000004
	beq	a3,a2,00000000230A2DC0

l230A2744:
	addi	a3,a7,+00000004

l230A2748:
	sltu	a7,a3,a7
	add	a5,a5,a7
	addi	a7,a3,+00000000
	jal	zero,00000000230A2DC0

l230A2758:
	beq	s3,zero,00000000230A2768

l230A275C:
	addi	a5,zero,+00000003
	bne	s3,a5,00000000230A2778

l230A2764:
	bne	s2,zero,00000000230A2D20

l230A2768:
	addi	a5,zero,+00000000
	addi	a7,zero,+00000000
	addi	s1,zero,+00000005
	jal	zero,00000000230A2B20

l230A2778:
	addi	a5,zero,+00000002
	bne	s3,a5,00000000230A2D20

l230A2780:
	bne	s2,zero,00000000230A2768

l230A2784:
	jal	zero,00000000230A270C

l230A2788:
	bge	zero,a4,00000000230A2880

l230A278C:
	bne	a6,zero,00000000230A2828

l230A2790:
	or	a3,a5,t1
	beq	a3,zero,00000000230A2380

l230A2798:
	addi	a3,a4,-00000001
	bne	a3,zero,00000000230A27B8

l230A27A0:
	sub	t1,a7,t1
	sub	a5,t3,a5
	sltu	a7,a7,t1
	sub	a5,a5,a7

l230A27B0:
	addi	a4,zero,+00000001
	jal	zero,00000000230A2808

l230A27B8:
	addi	a2,zero,+000007FF
	beq	a4,a2,00000000230A23BC

l230A27C0:
	addi	a4,zero,+00000038
	blt	a4,a3,00000000230A2874

l230A27C8:
	addi	a4,zero,+0000001F
	blt	a4,a3,00000000230A2840

l230A27D0:
	addi	a2,zero,+00000020
	sub	a2,a2,a3
	srl	s0,t1,a3
	sll	a4,a5,a2
	sll	t1,t1,a2
	or	a4,a4,s0
	sltu	t1,zero,t1
	or	t1,a4,t1
	srl	a3,a5,a3

l230A27F4:
	sub	t1,a7,t1
	sub	a5,t3,a3
	sltu	a7,a7,t1
	sub	a5,a5,a7
	addi	a4,s1,+00000000

l230A2808:
	slli	a3,a5,00000008
	bge	a3,zero,00000000230A28A0

l230A2810:
	lui	s0,00000800
	addi	s0,s0,-00000001
	and	s0,a5,s0
	addi	s4,t1,+00000000
	addi	s1,a4,+00000000
	jal	zero,00000000230A2BE8

l230A2828:
	addi	a3,zero,+000007FF
	beq	s1,a3,00000000230A23E0

l230A2830:
	lui	a3,00000800
	or	a5,a5,a3
	addi	a3,a4,+00000000
	jal	zero,00000000230A27C0

l230A2840:
	addi	a4,a3,-00000020
	addi	a1,zero,+00000020
	srl	a4,a5,a4
	addi	a2,zero,+00000000
	beq	a3,a1,00000000230A2860

l230A2854:
	addi	a2,zero,+00000040
	sub	a3,a2,a3
	sll	a2,a5,a3

l230A2860:
	or	t1,a2,t1
	sltu	t1,zero,t1
	or	t1,a4,t1

l230A286C:
	addi	a3,zero,+00000000
	jal	zero,00000000230A27F4

l230A2874:
	or	t1,a5,t1
	sltu	t1,zero,t1
	jal	zero,00000000230A286C

l230A2880:
	beq	a4,zero,00000000230A29C4

l230A2884:
	sub	a4,a6,s1
	bne	s1,zero,00000000230A28FC

l230A288C:
	or	a2,t3,a7
	bne	a2,zero,00000000230A28B0

l230A2894:
	addi	a2,zero,+000007FF
	addi	s2,a3,+00000000
	beq	a4,a2,00000000230A24E4

l230A28A0:
	bne	a4,zero,00000000230A2D9C

l230A28A4:
	addi	t3,a5,+00000000

l230A28A8:
	addi	a7,t1,+00000000
	jal	zero,00000000230A29F4

l230A28B0:
	addi	s0,a4,-00000001
	bne	s0,zero,00000000230A28D4

l230A28B8:
	sub	a7,t1,a7
	sltu	t1,t1,a7
	sub	a5,a5,t3
	sub	a5,a5,t1
	addi	s2,a3,+00000000
	addi	t1,a7,+00000000
	jal	zero,00000000230A27B0

l230A28D4:
	addi	a2,zero,+000007FF
	bne	a4,a2,00000000230A2930

l230A28DC:
	or	a7,a5,t1
	beq	a7,zero,00000000230A2D5C

l230A28E4:
	slli	a2,a5,00000009
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000
	addi	a6,zero,+00000000
	blt	a2,zero,00000000230A2640

l230A28F8:
	jal	zero,00000000230A23D0

l230A28FC:
	addi	a2,zero,+000007FF
	bne	a6,a2,00000000230A2924

l230A2904:
	or	a7,a5,t1
	beq	a7,zero,00000000230A2D68

l230A290C:
	slli	a4,a5,00000009
	addi	a7,t1,+00000000
	blt	a4,zero,00000000230A2D78

l230A2918:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,00000000230A2598

l230A2924:
	lui	a2,00000800
	or	t3,t3,a2
	addi	s0,a4,+00000000

l230A2930:
	addi	a4,zero,+00000038
	blt	a4,s0,00000000230A29B8

l230A2938:
	addi	a4,zero,+0000001F
	blt	a4,s0,00000000230A2984

l230A2940:
	addi	a0,zero,+00000020
	sub	a0,a0,s0
	srl	a2,a7,s0
	sll	a4,t3,a0
	sll	a7,a7,a0
	or	a4,a4,a2
	sltu	a7,zero,a7
	or	a7,a4,a7
	srl	s0,t3,s0

l230A2964:
	sub	a7,t1,a7
	sub	s0,a5,s0
	sltu	a5,t1,a7
	sub	a5,s0,a5
	addi	t1,a7,+00000000
	addi	a4,a6,+00000000
	addi	s2,a3,+00000000
	jal	zero,00000000230A2808

l230A2984:
	addi	a4,s0,-00000020
	addi	a2,zero,+00000020
	srl	a4,t3,a4
	addi	a0,zero,+00000000
	beq	s0,a2,00000000230A29A4

l230A2998:
	addi	a0,zero,+00000040
	sub	s0,a0,s0
	sll	a0,t3,s0

l230A29A4:
	or	a7,a0,a7
	sltu	a7,zero,a7
	or	a7,a4,a7

l230A29B0:
	addi	s0,zero,+00000000
	jal	zero,00000000230A2964

l230A29B8:
	or	s0,t3,a7
	sltu	a7,zero,s0
	jal	zero,00000000230A29B0

l230A29C4:
	addi	a4,s1,+00000001
	andi	a4,a4,+000007FE
	bne	a4,zero,00000000230A2BBC

l230A29D0:
	or	a1,t3,a7
	or	a2,a5,t1
	bne	s1,zero,00000000230A2AAC

l230A29DC:
	bne	a1,zero,00000000230A2A60

l230A29E0:
	bne	a2,zero,00000000230A2CC4

l230A29E4:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001
	addi	t3,zero,+00000000
	addi	a7,zero,+00000000

l230A29F4:
	or	a5,a7,t3
	beq	a5,zero,00000000230A2DA4

l230A29FC:
	srli	a5,a7,0000001F
	slli	a6,t3,00000001
	add	a6,a6,a5
	slli	a5,a7,00000001
	andi	a4,a5,+00000007
	addi	s1,zero,+00000000
	beq	a4,zero,00000000230A2A48

l230A2A18:
	addi	a4,zero,+00000002
	beq	s3,a4,00000000230A2CF8

l230A2A20:
	addi	a4,zero,+00000003
	beq	s3,a4,00000000230A2CDC

l230A2A28:
	addi	s1,zero,+00000001
	bne	s3,zero,00000000230A2A48

l230A2A30:
	andi	a4,a5,+0000000F
	addi	a3,zero,+00000004
	beq	a4,a3,00000000230A2A48

l230A2A3C:
	sltiu	a5,a5,-00000004
	xori	a5,a5,+00000001
	add	a6,a6,a5

l230A2A48:
	srli	a6,a6,00000018
	xori	a6,a6,+00000001
	andi	a6,a6,+00000001
	addi	a5,t3,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230A2640

l230A2A60:
	beq	a2,zero,00000000230A29F4

l230A2A64:
	sub	a2,a7,t1
	sltu	a1,a7,a2
	sub	a4,t3,a5
	sub	a4,a4,a1
	slli	a1,a4,00000008
	bge	a1,zero,00000000230A2A94

l230A2A7C:
	sub	a7,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,a7
	sub	t3,s0,a5

l230A2A8C:
	addi	s2,a3,+00000000
	jal	zero,00000000230A29F4

l230A2A94:
	or	a7,a2,a4
	bne	a7,zero,00000000230A2CD0

l230A2A9C:
	addi	s2,s3,-00000002
	sltiu	s2,s2,+00000001

l230A2AA4:
	addi	t3,zero,+00000000
	jal	zero,00000000230A29F4

l230A2AAC:
	addi	a0,zero,+000007FF
	bne	s1,a0,00000000230A2AE0

l230A2AB4:
	beq	a1,zero,00000000230A2E00

l230A2AB8:
	lui	s1,00000400
	and	s1,t3,s1
	sltiu	s1,s1,+00000001
	slli	s1,s1,00000004
	bne	a6,a0,00000000230A2B0C

l230A2ACC:
	beq	a2,zero,00000000230A2AE8

l230A2AD0:
	slli	a4,a5,00000009
	blt	a4,zero,00000000230A2AE8

l230A2AD8:
	addi	s1,zero,+00000010
	jal	zero,00000000230A2AE8

l230A2AE0:
	addi	s1,zero,+00000000
	beq	a6,a0,00000000230A2ACC

l230A2AE8:
	bne	a1,zero,00000000230A2B0C

l230A2AEC:
	beq	a2,zero,00000000230A2D84

l230A2AF0:
	addi	a7,t1,+00000000
	addi	s2,a3,+00000000

l230A2AF8:
	addi	a6,zero,+00000000
	addi	a4,zero,+000007FF
	jal	zero,00000000230A2640

l230A2B04:
	addi	s1,zero,+00000000
	jal	zero,00000000230A2ACC

l230A2B0C:
	beq	a2,zero,00000000230A26A8

l230A2B10:
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a7,zero,+00000000
	addi	a4,zero,+000007FF

l230A2B20:
	slli	a3,a5,00000008
	bge	a3,zero,00000000230A2B40

l230A2B28:
	addi	a4,a4,+00000001
	addi	a3,zero,+000007FF
	beq	a4,a3,00000000230A2DC8

l230A2B34:
	lui	a3,000FF800
	addi	a3,a3,-00000001
	and	a5,a5,a3

l230A2B40:
	slli	a3,a5,0000001D
	srli	a7,a7,00000003
	or	a7,a3,a7
	addi	a3,zero,+000007FF
	srli	a5,a5,00000003
	bne	a4,a3,00000000230A2B70

l230A2B58:
	or	a7,a7,a5
	addi	a5,zero,+00000000
	beq	a7,zero,00000000230A2B70

l230A2B64:
	lui	a5,00000080
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000

l230A2B70:
	slli	a5,a5,0000000C
	andi	a4,a4,+000007FF
	slli	a4,a4,00000014
	srli	a5,a5,0000000C
	slli	s2,s2,0000001F
	or	a5,a5,a4
	or	a4,a5,s2
	addi	a0,a7,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,00000000230A2B9C

l230A2B98:
	csrrs	zero,fflags,ra

l230A2B9C:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A2BBC:
	sub	s4,a7,t1
	sub	s0,t3,a5
	sltu	a2,a7,s4
	sub	s0,s0,a2
	slli	a4,s0,00000008
	bge	a4,zero,00000000230A2C54

l230A2BD4:
	sub	s4,t1,a7
	sub	s0,a5,t3
	sltu	a5,t1,s4
	sub	s0,s0,a5
	addi	s2,a3,+00000000

l230A2BE8:
	beq	s0,zero,00000000230A2C60

l230A2BEC:
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C

l230A2BF4:
	addi	a4,a0,-00000008
	addi	a5,zero,+0000001F
	blt	a5,a4,00000000230A2C70

l230A2C00:
	addi	a5,zero,+00000020
	sub	a5,a5,a4
	sll	s0,s0,a4
	srl	a5,s4,a5
	or	s0,a5,s0
	sll	t1,s4,a4

l230A2C18:
	blt	a4,s1,00000000230A2CB0

l230A2C1C:
	sub	a4,a4,s1
	addi	a5,a4,+00000001
	addi	a3,zero,+0000001F
	blt	a3,a5,00000000230A2C80

l230A2C2C:
	addi	a4,zero,+00000020
	sub	a4,a4,a5
	sll	a7,s0,a4
	srl	a0,t1,a5
	sll	a4,t1,a4
	or	a7,a7,a0
	sltu	a4,zero,a4
	or	a7,a7,a4
	srl	t3,s0,a5
	jal	zero,00000000230A29F4

l230A2C54:
	or	a7,s4,s0
	bne	a7,zero,00000000230A2BE8

l230A2C5C:
	jal	zero,00000000230A2A9C

l230A2C60:
	addi	a0,s4,+00000000
	jal	ra,000000002309F27C
	addi	a0,a0,+00000020
	jal	zero,00000000230A2BF4

l230A2C70:
	addi	s0,a0,-00000028
	sll	s0,s4,s0
	addi	t1,zero,+00000000
	jal	zero,00000000230A2C18

l230A2C80:
	addi	a4,a4,-0000001F
	addi	a2,zero,+00000020
	srl	a4,s0,a4
	addi	a3,zero,+00000000
	beq	a5,a2,00000000230A2CA0

l230A2C94:
	addi	a3,zero,+00000040
	sub	a3,a3,a5
	sll	a3,s0,a3

l230A2CA0:
	or	a5,t1,a3
	sltu	a5,zero,a5
	or	a7,a4,a5
	jal	zero,00000000230A2AA4

l230A2CB0:
	lui	a5,000FF800
	addi	a5,a5,-00000001
	sub	a4,s1,a4
	and	a5,s0,a5
	jal	zero,00000000230A28A0

l230A2CC4:
	addi	t3,a5,+00000000
	addi	a7,t1,+00000000
	jal	zero,00000000230A2A8C

l230A2CD0:
	addi	t3,a4,+00000000
	addi	a7,a2,+00000000
	jal	zero,00000000230A29F4

l230A2CDC:
	addi	s1,s2,+00000000
	bne	s2,zero,00000000230A2A48

l230A2CE4:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,zero,+00000001
	jal	zero,00000000230A2A48

l230A2CF8:
	addi	s1,zero,+00000001
	beq	s2,zero,00000000230A2A48

l230A2D00:
	sltiu	a5,a5,-00000008
	xori	a5,a5,+00000001
	add	a6,a6,a5
	addi	s1,s2,+00000000
	jal	zero,00000000230A2A48

l230A2D14:
	addi	a5,zero,+00000000

l230A2D18:
	addi	a4,zero,+000007FF
	jal	zero,00000000230A2D38

l230A2D20:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	addi	a6,zero,+00000000
	jal	zero,00000000230A271C

l230A2D34:
	addi	a7,zero,+00000000

l230A2D38:
	addi	s1,zero,+00000000
	jal	zero,00000000230A2B20

l230A2D40:
	addi	a7,zero,+00000000
	jal	zero,00000000230A2D18

l230A2D48:
	addi	a5,t3,+00000000

l230A2D4C:
	addi	a4,zero,+000007FF
	jal	zero,00000000230A26E0

l230A2D54:
	addi	a5,zero,+00000000
	jal	zero,00000000230A2B20

l230A2D5C:
	addi	a5,zero,+00000000
	addi	s2,a3,+00000000
	jal	zero,00000000230A2B20

l230A2D68:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,00000000230A2D38

l230A2D78:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,00000000230A26E0

l230A2D84:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a4,zero,+000007FF
	addi	s1,zero,+00000010
	jal	zero,00000000230A2B20

l230A2D9C:
	addi	a7,t1,+00000000
	jal	zero,00000000230A26E0

l230A2DA4:
	addi	a7,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230A2D38

l230A2DB0:
	bne	s2,zero,00000000230A2DC0

l230A2DB4:
	addi	a3,a7,+00000008
	jal	zero,00000000230A2748

l230A2DBC:
	bne	s2,zero,00000000230A2DB4

l230A2DC0:
	bne	a6,zero,00000000230A2654

l230A2DC4:
	jal	zero,00000000230A2B20

l230A2DC8:
	addi	a7,zero,+00000000
	beq	s3,zero,00000000230A2DF4

l230A2DD0:
	addi	a5,zero,+00000003
	bne	s3,a5,00000000230A2DE8

l230A2DD8:
	beq	s2,zero,00000000230A2DF4

l230A2DDC:
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	jal	zero,00000000230A2DF4

l230A2DE8:
	addi	a5,zero,+00000002
	bne	s3,a5,00000000230A2DDC

l230A2DF0:
	beq	s2,zero,00000000230A2DDC

l230A2DF4:
	ori	s1,s1,+00000005
	addi	a5,a7,+00000000
	jal	zero,00000000230A2B40

l230A2E00:
	beq	a6,s1,00000000230A2B04

l230A2E04:
	addi	s1,zero,+00000000
	jal	zero,00000000230A2AEC

l230A2E0C:
	bne	a3,zero,00000000230A26A8

l230A2E10:
	addi	a7,t1,+00000000
	jal	zero,00000000230A2AF8

l230A2E18:
	beq	a6,s1,00000000230A26B0

l230A2E1C:
	addi	a7,t1,+00000000
	jal	zero,00000000230A2D4C

;; __unorddf2: 230A2E24
;;   Called from:
;;     2309D964 (in pow)
;;     2309D97C (in pow)
;;     2309DABC (in pow)
__unorddf2 proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	addi	a5,a5,-00000001
	and	a6,a5,a1
	srli	a1,a1,00000014
	and	a5,a5,a3
	andi	a1,a1,+000007FF
	srli	a3,a3,00000014
	addi	a4,zero,+000007FF
	andi	a3,a3,+000007FF
	bne	a1,a4,00000000230A2E58

l230A2E50:
	or	a4,a6,a0
	bne	a4,zero,00000000230A2E80

l230A2E58:
	addi	a7,zero,+000007FF
	addi	a4,zero,+00000000
	bne	a3,a7,00000000230A2E6C

l230A2E64:
	or	a7,a5,a2
	bne	a7,zero,00000000230A2E74

l230A2E6C:
	addi	a0,a4,+00000000
	jalr	zero,ra,+00000000

l230A2E74:
	bne	a1,a3,00000000230A2EA0

l230A2E78:
	or	a0,a6,a0
	beq	a0,zero,00000000230A2E94

l230A2E80:
	slli	a4,a6,0000000C
	bge	a4,zero,00000000230A2EAC

l230A2E88:
	addi	a1,zero,+000007FF
	addi	a4,zero,+00000001
	bne	a3,a1,00000000230A2E6C

l230A2E94:
	or	a2,a5,a2
	addi	a4,zero,+00000001
	beq	a2,zero,00000000230A2E6C

l230A2EA0:
	slli	a3,a5,0000000C
	addi	a4,zero,+00000001
	blt	a3,zero,00000000230A2E6C

l230A2EAC:
	csrrsi	zero,fflags,00000010
	addi	a4,zero,+00000001
	jal	zero,00000000230A2E6C

;; __fixdfsi: 230A2EB8
;;   Called from:
;;     23002C78 (in trpc_get_power_idx)
;;     2300388C (in rfc_config_channel)
;;     23005DF8 (in rf_pri_get_vco_freq_cw)
;;     23005E42 (in rf_pri_get_vco_idac_cw)
;;     2301984E (in phyif_utils_decode)
;;     230241AC (in tcpip_stack_input)
;;     2305CEEE (in parse_value)
;;     2305D9A4 (in cJSON_CreateNumber)
;;     23081888 (in cvt)
;;     23081962 (in cvt)
__fixdfsi proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a3,a1,00000014
	addi	a2,a5,-00000001
	andi	a3,a3,+000007FF
	addi	a4,zero,+000003FE
	and	a2,a2,a1
	srli	a1,a1,0000001F
	blt	a4,a3,00000000230A2EF0

l230A2EDC:
	bne	a3,zero,00000000230A2FA0

l230A2EE0:
	or	a5,a2,a0
	bne	a5,zero,00000000230A2FA0

l230A2EE8:
	addi	a0,a5,+00000000
	jalr	zero,ra,+00000000

l230A2EF0:
	addi	a4,zero,+0000041D
	bge	a4,a3,00000000230A2F34

l230A2EF8:
	lui	a4,00080000
	xori	a4,a4,-00000001
	add	a5,a1,a4
	beq	a1,zero,00000000230A2FAC

l230A2F08:
	addi	a6,zero,+0000041E
	addi	a4,zero,+00000010
	bne	a3,a6,00000000230A2F6C

l230A2F14:
	slli	a2,a2,0000000B
	srli	a3,a0,00000015
	or	a2,a2,a3
	bne	a2,zero,00000000230A2F6C

l230A2F24:
	slli	a4,a0,0000000B
	beq	a4,zero,00000000230A2EE8

l230A2F2C:
	addi	a4,a1,+00000000
	jal	zero,00000000230A2F6C

l230A2F34:
	or	a5,a2,a5
	addi	a2,zero,+00000433
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,00000000230A2F74

l230A2F48:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a5,a5,a0

l230A2F60:
	beq	a1,zero,00000000230A2F68

l230A2F64:
	sub	a5,zero,a5

l230A2F68:
	beq	a4,zero,00000000230A2EE8

l230A2F6C:
	csrrs	zero,fflags,ra
	jal	zero,00000000230A2EE8

l230A2F74:
	addi	a6,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a6,00000000230A2F88

l230A2F80:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l230A2F88:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a3,a0,a3
	sltu	a4,zero,a4
	srl	a5,a5,a3
	jal	zero,00000000230A2F60

l230A2FA0:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,00000000230A2F6C

l230A2FAC:
	addi	a4,zero,+00000010
	jal	zero,00000000230A2F6C

;; __fixunsdfsi: 230A2FB4
;;   Called from:
;;     230032AE (in rfc_init)
;;     230032EC (in rfc_init)
;;     23003328 (in rfc_init)
;;     2300498A (in rf_pri_rccal_iq)
__fixunsdfsi proc
	csrrs	a5,frm,sp
	lui	a4,00000100
	srli	a3,a1,00000014
	addi	a5,a4,-00000001
	andi	a3,a3,+000007FF
	addi	a2,zero,+000003FE
	and	a5,a5,a1
	srli	a1,a1,0000001F
	blt	a2,a3,00000000230A2FE8

l230A2FD8:
	bne	a3,zero,00000000230A3058

l230A2FDC:
	or	a0,a5,a0
	bne	a0,zero,00000000230A3058

l230A2FE4:
	jalr	zero,ra,+00000000

l230A2FE8:
	bne	a1,zero,00000000230A3064

l230A2FEC:
	addi	a2,zero,+0000041E
	blt	a2,a3,00000000230A3070

l230A2FF4:
	addi	a2,zero,+00000433
	or	a5,a5,a4
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,00000000230A302C

l230A3008:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a0,a5,a0

l230A3020:
	beq	a4,zero,00000000230A3078

l230A3024:
	csrrs	zero,fflags,ra
	jalr	zero,ra,+00000000

l230A302C:
	addi	a1,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a1,00000000230A3040

l230A3038:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l230A3040:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a0,a0,a3
	sltu	a4,zero,a4
	srl	a0,a5,a0
	jal	zero,00000000230A3020

l230A3058:
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,00000000230A3024

l230A3064:
	addi	a0,zero,+00000000

l230A3068:
	addi	a4,zero,+00000010
	jal	zero,00000000230A3024

l230A3070:
	addi	a0,zero,-00000001
	jal	zero,00000000230A3068

l230A3078:
	jalr	zero,ra,+00000000

;; __floatsidf: 230A307C
;;   Called from:
;;     2300274E (in pa_input)
;;     230027B8 (in pa_input)
;;     23002C64 (in trpc_get_power_idx)
;;     23003858 (in rfc_config_channel)
;;     2301983A (in phyif_utils_decode)
;;     23024198 (in tcpip_stack_input)
;;     2305C8D2 (in print_number)
;;     2305CDB4 (in parse_value)
;;     2305CE2A (in parse_value)
;;     2305CEBE (in parse_value)
;;     23082EA4 (in ADC_Parse_Result)
;;     23082F98 (in ADC_Parse_Result)
;;     23082FEC (in ADC_Parse_Result)
;;     23083012 (in ADC_Parse_Result)
;;     2308303E (in ADC_Parse_Result)
;;     23083066 (in ADC_Parse_Result)
;;     2309E388 (in __ieee754_pow)
__floatsidf proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	beq	a0,zero,00000000230A311C

l230A3090:
	srai	a5,a0,0000001F
	xor	s0,a5,a0
	sub	s0,s0,a5
	srli	s1,a0,0000001F
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,00000000230A3108

l230A30B8:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0
	addi	a0,s1,+00000000

l230A30D0:
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

l230A3108:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	a0,s1,+00000000

l230A3114:
	addi	s0,zero,+00000000
	jal	zero,00000000230A30D0

l230A311C:
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,00000000230A3114

;; __floatunsidf: 230A3128
;;   Called from:
;;     23003216 (in rfc_init)
;;     23004976 (in rf_pri_rccal_iq)
;;     23005DE4 (in rf_pri_get_vco_freq_cw)
;;     23005E2E (in rf_pri_get_vco_idac_cw)
;;     2309F350 (in __floatundisf)
;;     2309F374 (in __floatundisf)
__floatunsidf proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	s0,a0,+00000000
	beq	a0,zero,00000000230A31A0

l230A313C:
	jal	ra,000000002309F27C
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,00000000230A3190

l230A3150:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0

l230A3164:
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

l230A3190:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	s0,zero,+00000000
	jal	zero,00000000230A3164

l230A31A0:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230A3164

;; __extendsfdf2: 230A31AC
;;   Called from:
;;     230028A0 (in pa_adapt)
;;     230028BE (in pa_adapt)
;;     23002A5C (in pa_adapt)
;;     2300329E (in rfc_init)
;;     230032DC (in rfc_init)
;;     23003316 (in rfc_init)
;;     23024058 (in tcpip_stack_input)
;;     2302415A (in tcpip_stack_input)
;;     230241D0 (in tcpip_stack_input)
;;     23069894 (in bl_tsen_adc_get)
;;     2307798C (in iperf_server_udp_recv_fn)
;;     23077998 (in iperf_server_udp_recv_fn)
;;     230779A6 (in iperf_server_udp_recv_fn)
;;     230779B2 (in iperf_server_udp_recv_fn)
;;     23077BEA (in iperf_client_udp)
;;     23077BF6 (in iperf_client_udp)
;;     23077C02 (in iperf_client_udp)
;;     23077C0E (in iperf_client_udp)
;;     23077E86 (in iperf_server)
;;     23077E92 (in iperf_server)
;;     23077E9E (in iperf_server)
;;     23077EAA (in iperf_server)
;;     2307809C (in iperf_client_tcp)
;;     230780A8 (in iperf_client_tcp)
;;     230780B4 (in iperf_client_tcp)
;;     230780C0 (in iperf_client_tcp)
;;     23082EB8 (in ADC_Parse_Result)
;;     23082FAC (in ADC_Parse_Result)
;;     2308324A (in TSEN_Get_Temp)
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
	beq	s1,zero,00000000230A323C

l230A31E8:
	srli	a5,s0,00000003
	addi	a0,a0,+00000380
	slli	s0,s0,0000001D
	addi	s1,zero,+00000000

l230A31F8:
	slli	a5,a5,0000000C
	andi	a0,a0,+000007FF
	slli	a0,a0,00000014
	srli	a5,a5,0000000C
	or	a5,a5,a0
	slli	s2,s2,0000001F
	or	a4,a5,s2
	addi	a0,s0,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,00000000230A3224

l230A3220:
	csrrs	zero,fflags,ra

l230A3224:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A323C:
	bne	a0,zero,00000000230A3284

l230A3240:
	beq	s0,zero,00000000230A32B0

l230A3244:
	addi	a0,s0,+00000000
	jal	ra,000000002309F27C
	addi	a5,zero,+0000000A
	blt	a5,a0,00000000230A3274

l230A3254:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a4,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a4

l230A3268:
	addi	a4,zero,+00000389
	sub	a0,a4,a0
	jal	zero,00000000230A31F8

l230A3274:
	addi	a5,a0,-0000000B
	sll	a5,s0,a5
	addi	s0,zero,+00000000
	jal	zero,00000000230A3268

l230A3284:
	addi	a5,zero,+00000000
	beq	s0,zero,00000000230A32A8

l230A328C:
	slli	a5,s0,00000009
	blt	a5,zero,00000000230A3298

l230A3294:
	addi	s1,zero,+00000010

l230A3298:
	srli	a5,s0,00000003
	lui	a4,00000080
	slli	s0,s0,0000001D
	or	a5,a5,a4

l230A32A8:
	addi	a0,zero,+000007FF
	jal	zero,00000000230A31F8

l230A32B0:
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	jal	zero,00000000230A31F8

;; __truncdfsf2: 230A32BC
;;   Called from:
;;     23002762 (in pa_input)
;;     230028E6 (in pa_adapt)
;;     23082EC8 (in ADC_Parse_Result)
;;     23082FBC (in ADC_Parse_Result)
;;     2308325A (in TSEN_Get_Temp)
;;     2309F384 (in __floatundisf)
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
	beq	a4,zero,00000000230A34C0

l230A32F0:
	addi	a6,t1,-00000380
	addi	a4,zero,+000000FE
	bge	a4,a6,00000000230A33CC

l230A32FC:
	beq	a7,zero,00000000230A335C

l230A3300:
	addi	a5,zero,+00000003
	bne	a7,a5,00000000230A3350

l230A3308:
	beq	a1,zero,00000000230A335C

l230A330C:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	addi	a4,zero,+00000000
	addi	a2,zero,+00000005

l230A331C:
	addi	a3,zero,+00000002
	ori	a2,a2,+00000001
	beq	a7,a3,00000000230A3558

l230A3328:
	addi	a3,zero,+00000003
	beq	a7,a3,00000000230A354C

l230A3330:
	bne	a7,zero,00000000230A3344

l230A3334:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,00000000230A3344

l230A3340:
	addi	a5,a5,+00000004

l230A3344:
	beq	a4,zero,00000000230A3368

l230A3348:
	ori	a2,a2,+00000002
	jal	zero,00000000230A3368

l230A3350:
	addi	a5,zero,+00000002
	bne	a7,a5,00000000230A330C

l230A3358:
	beq	a1,zero,00000000230A330C

l230A335C:
	addi	a5,zero,+00000000
	addi	a6,zero,+000000FF
	addi	a2,zero,+00000005

l230A3368:
	slli	a4,a5,00000005
	bge	a4,zero,00000000230A3388

l230A3370:
	addi	a6,a6,+00000001
	addi	a4,zero,+000000FF
	beq	a6,a4,00000000230A3560

l230A337C:
	lui	a4,000FC000
	addi	a4,a4,-00000001
	and	a5,a5,a4

l230A3388:
	addi	a4,zero,+000000FF
	srli	a5,a5,00000003
	bne	a6,a4,00000000230A33A0

l230A3394:
	beq	a5,zero,00000000230A33A0

l230A3398:
	lui	a5,00000400
	addi	a1,zero,+00000000

l230A33A0:
	slli	a5,a5,00000009
	andi	a6,a6,+000000FF
	slli	a6,a6,00000017
	srli	a5,a5,00000009
	slli	a1,a1,0000001F
	or	a5,a5,a6
	or	a5,a5,a1
	beq	a2,zero,00000000230A33C4

l230A33C0:
	csrrs	zero,fflags,ra

l230A33C4:
	fmv.w.x	fa0,a5
	jalr	zero,ra,+00000000

l230A33CC:
	blt	zero,a6,00000000230A348C

l230A33D0:
	addi	a4,zero,-00000017
	blt	a6,a4,00000000230A3504

l230A33D8:
	lui	a4,00000800
	addi	a2,zero,+0000001E
	or	a3,a3,a4
	sub	a2,a2,a6
	addi	a4,zero,+0000001F
	blt	a4,a2,00000000230A345C

l230A33F0:
	addi	t1,t1,-0000037E
	srl	a2,a5,a2
	sll	a5,a5,t1
	sltu	a5,zero,a5
	sll	a3,a3,t1
	or	a3,a5,a3
	or	a5,a2,a3

l230A340C:
	beq	a5,zero,00000000230A3540

l230A3410:
	slli	a4,a5,00000001
	andi	a3,a4,+00000007
	addi	a2,zero,+00000000
	beq	a3,zero,00000000230A3448

l230A3420:
	addi	a3,zero,+00000002
	beq	a7,a3,00000000230A3520

l230A3428:
	addi	a3,zero,+00000003
	beq	a7,a3,00000000230A350C

l230A3430:
	addi	a2,zero,+00000001
	bne	a7,zero,00000000230A3448

l230A3438:
	andi	a3,a4,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,00000000230A3448

l230A3444:
	addi	a4,a4,+00000004

l230A3448:
	srli	a4,a4,0000001B
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001
	addi	a6,zero,+00000000
	jal	zero,00000000230A34AC

l230A345C:
	addi	a4,zero,-00000002
	sub	a6,a4,a6
	addi	a0,zero,+00000020
	srl	a6,a3,a6
	addi	a4,zero,+00000000
	beq	a2,a0,00000000230A347C

l230A3474:
	addi	t1,t1,-0000035E
	sll	a4,a3,t1

l230A347C:
	or	a5,a4,a5
	sltu	a5,zero,a5
	or	a5,a6,a5
	jal	zero,00000000230A340C

l230A348C:
	slli	a0,a0,00000006
	sltu	a0,zero,a0
	slli	a3,a3,00000003
	srli	a5,a5,0000001D
	or	a3,a0,a3
	or	a5,a3,a5
	addi	a4,zero,+00000000
	addi	a2,zero,+00000000

l230A34AC:
	andi	a3,a5,+00000007
	bne	a3,zero,00000000230A331C

l230A34B4:
	beq	a4,zero,00000000230A3368

l230A34B8:
	andi	a4,a2,+00000001
	jal	zero,00000000230A3344

l230A34C0:
	or	a5,a3,a5
	bne	t1,zero,00000000230A34D0

l230A34C8:
	sltu	a5,zero,a5
	jal	zero,00000000230A340C

l230A34D0:
	beq	a5,zero,00000000230A3534

l230A34D4:
	addi	a5,zero,+000007FF
	addi	a2,zero,+00000000
	bne	t1,a5,00000000230A34F0

l230A34E0:
	lui	a2,00000400
	and	a2,a3,a2
	sltiu	a2,a2,+00000001
	slli	a2,a2,00000004

l230A34F0:
	slli	a3,a3,00000003
	lui	a5,00002000
	or	a5,a3,a5
	addi	a6,zero,+000000FF
	jal	zero,00000000230A34AC

l230A3504:
	addi	a5,zero,+00000001
	jal	zero,00000000230A3410

l230A350C:
	addi	a2,a1,+00000000
	bne	a1,zero,00000000230A3448

l230A3514:
	addi	a4,a4,+00000008
	addi	a2,zero,+00000001
	jal	zero,00000000230A3448

l230A3520:
	addi	a2,zero,+00000001
	beq	a1,zero,00000000230A3448

l230A3528:
	addi	a4,a4,+00000008
	addi	a2,a1,+00000000
	jal	zero,00000000230A3448

l230A3534:
	addi	a2,zero,+00000000
	addi	a6,zero,+000000FF
	jal	zero,00000000230A3368

l230A3540:
	addi	a6,zero,+00000000
	addi	a2,zero,+00000000
	jal	zero,00000000230A3368

l230A354C:
	bne	a1,zero,00000000230A3344

l230A3550:
	addi	a5,a5,+00000008
	jal	zero,00000000230A3344

l230A3558:
	beq	a1,zero,00000000230A3344

l230A355C:
	jal	zero,00000000230A3550

l230A3560:
	addi	a5,zero,+00000000
	beq	a7,zero,00000000230A358C

l230A3568:
	addi	a4,zero,+00000003
	bne	a7,a4,00000000230A3580

l230A3570:
	beq	a1,zero,00000000230A358C

l230A3574:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	jal	zero,00000000230A358C

l230A3580:
	addi	a4,zero,+00000002
	bne	a7,a4,00000000230A3574

l230A3588:
	beq	a1,zero,00000000230A3574

l230A358C:
	ori	a2,a2,+00000005
	jal	zero,00000000230A3388

;; abort: 230A3594
;;   Called from:
;;     2307CA54 (in at_cmd_init)
;;     230A35F0 (in __assert_func)
abort proc
	addi	sp,sp,-00000010
	addi	a0,zero,+00000006
	sw	ra,sp,+0000000C
	jal	ra,00000000230A3DC0
	addi	a0,zero,+00000001
	jal	ra,00000000230A92E0

;; __assert_func: 230A35AC
;;   Called from:
;;     23080282 (in tcp_sent_callback)
;;     2308037E (in tcp_connected_callback)
;;     230804E2 (in tcp_receive_callback)
;;     23080682 (in udp_send_data)
;;     230807A2 (in tcp_err_callback)
;;     23080A4E (in tcp_send_data)
;;     23080E74 (in bl_cipstart)
;;     230A35A8 (in abort)
;;     230A3614 (in __assert)
__assert_func proc
	auipc	a5,0001EF6B
	addi	a5,a5,+00000750
	lw	a5,a5,+00000000
	addi	sp,sp,-00000010
	addi	a6,a2,+00000000
	sw	ra,sp,+0000000C
	addi	a7,a0,+00000000
	addi	a4,a1,+00000000
	lw	a0,a5,+0000000C
	addi	a2,a3,+00000000
	auipc	a5,00000028
	addi	a5,a5,-00000064
	beq	a6,zero,00000000230A35F4

l230A35E0:
	addi	a3,a7,+00000000
	auipc	a1,00000028
	addi	a1,a1,-00000064
	jal	ra,00000000230A3678
	jal	ra,00000000230A3594

l230A35F4:
	auipc	a5,00000023
	addi	a5,a5,+000007C8
	addi	a6,a5,+00000000
	jal	zero,00000000230A35E0

;; __assert: 230A3604
__assert proc
	addi	sp,sp,-00000010
	addi	a3,a2,+00000000
	addi	a2,zero,+00000000
	sw	ra,sp,+0000000C
	jal	ra,00000000230A35AC

;; atoi: 230A3618
;;   Called from:
;;     23027080 (in cmd_wifi_cfg)
;;     23027096 (in cmd_wifi_cfg)
;;     230270D4 (in cmd_wifi_cfg)
;;     230270DE (in cmd_wifi_cfg)
;;     23027230 (in cmd_wifi_ap_start)
;;     230274E2 (in cmd_wifi_ap_conf_max_sta)
;;     23027542 (in wifi_rc_fixed_enable)
;;     2302754E (in wifi_rc_fixed_enable)
;;     2302755A (in wifi_rc_fixed_enable)
;;     2302779C (in wifi_capcode_cmd)
;;     230566CE (in ble_auth_passkey)
;;     23065D5A (in cmd_gpio_get)
;;     23065E68 (in cmd_gpio_set)
;;     23065E70 (in cmd_gpio_set)
;;     23065FCE (in cmd_gpio_func)
;;     23065FD8 (in cmd_gpio_func)
;;     23065FE2 (in cmd_gpio_func)
;;     23065FEC (in cmd_gpio_func)
;;     23066376 (in cmd_wdt_init)
;;     2306FFD8 (in netif_find)
;;     2307C776 (in at_key_value_get)
;;     2307CAE6 (in at_server_init)
;;     2307CAFC (in at_server_init)
;;     2307D004 (in http_url_req)
;;     2307F270 (in get_di_para)
;;     2307F37C (in get_ip_para)
;;     2307F3FC (in get_ip_para)
;;     23085E1A (in httpc_tcp_recv)
;;     23085EB6 (in httpc_tcp_recv)
;;     230A3614 (in __assert)
atoi proc
	addi	a2,zero,+0000000A
	addi	a1,zero,+00000000
	jal	zero,00000000230A4DD0

;; _atoi_r: 230A3624
_atoi_r proc
	addi	a3,zero,+0000000A
	addi	a2,zero,+00000000
	jal	zero,00000000230A4DB0

;; __errno: 230A3630
;;   Called from:
;;     2307BA6C (in aos_loop_run)
;;     2309DA50 (in pow)
;;     2309DAC4 (in pow)
;;     2309DAFC (in pow)
;;     2309DB4C (in pow)
;;     230A92D0 (in _close)
;;     230A9318 (in _exit)
;;     230A9384 (in _fstat)
;;     230A93E4 (in _kill)
;;     230A9440 (in _lseek)
;;     230A9490 (in _read)
;;     230A9530 (in _sbrk)
;;     230A95AC (in _stat)
;;     230A95FC (in _write)
__errno proc
	auipc	a5,0001EF6B
	addi	a5,a5,+000006CC
	lw	a0,a5,+00000000
	jalr	zero,ra,+00000000

;; _fiprintf_r: 230A3640
_fiprintf_r proc
	addi	sp,sp,-00000040
	addi	t1,sp,+0000002C
	sw	a3,sp,+0000002C
	addi	a3,t1,+00000000
	sw	ra,sp,+0000001C
	sw	a4,sp,+00000030
	sw	a5,sp,+00000034
	sw	a6,sp,+00000038
	sw	a7,sp,+0000003C
	sw	t1,sp,+0000000C
	jal	ra,00000000230A5124
	lw	ra,sp,+0000001C
	addi	sp,sp,+00000040
	jalr	zero,ra,+00000000

;; fiprintf: 230A3678
;;   Called from:
;;     230A35EC (in __assert_func)
fiprintf proc
	addi	sp,sp,-00000040
	sw	a2,sp,+00000028
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	auipc	a0,0001EF6B
	addi	a0,a0,+00000674
	lw	a0,a0,+00000000
	addi	t1,sp,+00000028
	sw	a3,sp,+0000002C
	addi	a3,t1,+00000000
	sw	ra,sp,+0000001C
	sw	a4,sp,+00000030
	sw	a5,sp,+00000034
	sw	a6,sp,+00000038
	sw	a7,sp,+0000003C
	sw	t1,sp,+0000000C
	jal	ra,00000000230A5124
	lw	ra,sp,+0000001C
	addi	sp,sp,+00000040
	jalr	zero,ra,+00000000

;; memchr: 230A36C8
;;   Called from:
;;     23058FB8 (in fdt_get_string)
;;     230590F4 (in fdt_subnode_offset_namelen)
;;     23059A38 (in tc_blfdtdump)
;;     230A74EC (in __sfvwrite_r)
;;     230A7610 (in __sfvwrite_r)
memchr proc
	andi	a5,a0,+00000003
	andi	a6,a1,+000000FF
	beq	a5,zero,00000000230A379C

l230A36D4:
	addi	a5,a2,-00000001
	beq	a2,zero,00000000230A3734

l230A36DC:
	lbu	a4,a0,+00000000
	beq	a4,a6,00000000230A3738

l230A36E4:
	addi	a3,zero,-00000001
	jal	zero,00000000230A36FC

l230A36EC:
	addi	a5,a5,-00000001
	beq	a5,a3,00000000230A3734

l230A36F4:
	lbu	a4,a0,+00000000
	beq	a4,a6,00000000230A3738

l230A36FC:
	addi	a0,a0,+00000001
	andi	a4,a0,+00000003
	bne	a4,zero,00000000230A36EC

l230A3708:
	addi	a4,zero,+00000003
	bltu	a4,a5,00000000230A373C

l230A3710:
	beq	a5,zero,00000000230A3734

l230A3714:
	lbu	a4,a0,+00000000
	beq	a4,a6,00000000230A3738

l230A371C:
	add	a5,a0,a5
	jal	zero,00000000230A372C

l230A3724:
	lbu	a4,a0,+00000000
	beq	a4,a6,00000000230A3738

l230A372C:
	addi	a0,a0,+00000001
	bne	a5,a0,00000000230A3724

l230A3734:
	addi	a0,zero,+00000000

l230A3738:
	jalr	zero,ra,+00000000

l230A373C:
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

l230A3770:
	lw	a4,a0,+00000000
	xor	a4,a7,a4
	add	a3,a4,a1
	xori	a4,a4,-00000001
	and	a4,a3,a4
	and	a4,a4,a2
	bne	a4,zero,00000000230A3714

l230A378C:
	addi	a5,a5,-00000004
	addi	a0,a0,+00000004
	bltu	t1,a5,00000000230A3770

l230A3798:
	jal	zero,00000000230A3710

l230A379C:
	addi	a5,a2,+00000000
	jal	zero,00000000230A3708

;; memcmp: 230A37A4
;;   Called from:
;;     230102F4 (in rxu_cntrl_frame_handle)
;;     230104BC (in rxu_cntrl_frame_handle)
;;     23010798 (in rxu_cntrl_frame_handle)
;;     2301086A (in rxu_cntrl_frame_handle)
;;     23010D3C (in scanu_frame_handler)
;;     2301139E (in scanu_search_by_ssid)
;;     23011412 (in scanu_rm_exist_ssid)
;;     230131C8 (in _aid_list_delete)
;;     23013C46 (in apm_probe_req_handler)
;;     23013E94 (in apm_assoc_req_handler)
;;     230140E0 (in apm_assoc_req_handler)
;;     2301633C (in process_rsn_ie)
;;     230163A8 (in process_rsn_ie)
;;     23016424 (in process_rsn_ie)
;;     23016442 (in process_rsn_ie)
;;     23016490 (in process_rsn_ie)
;;     230164B0 (in process_rsn_ie)
;;     230164DA (in process_rsn_ie)
;;     230164F6 (in process_rsn_ie)
;;     23016512 (in process_rsn_ie)
;;     2301652E (in process_rsn_ie)
;;     2301658A (in process_wpa_ie)
;;     230165AE (in process_wpa_ie)
;;     230165CC (in process_wpa_ie)
;;     23016606 (in process_wpa_ie)
;;     23016622 (in process_wpa_ie)
;;     2301663E (in process_wpa_ie)
;;     2301665A (in process_wpa_ie)
;;     23016AC4 (in IsEAPOL_MICValid)
;;     23016C50 (in parseKeyKDE)
;;     23016F50 (in KeyMgmtSta_IsRxEAPOLValid)
;;     230170F6 (in supplicantAkmIsWpaWpa2)
;;     23017118 (in supplicantAkmIsWpaWpa2)
;;     23017178 (in supplicantAkmIsWpa2)
;;     230172EA (in supplicantConstructContext)
;;     2301730E (in supplicantConstructContext)
;;     23017F98 (in pmkCacheFindPSKElement)
;;     2301A828 (in chan_ctxt_add)
;;     23024288 (in bl_utils_idx_lookup)
;;     23024F40 (in stateGlobalGuard_scan_beacon)
;;     2303D23C (in bt_mesh_beacon_recv)
;;     2303D258 (in bt_mesh_beacon_recv)
;;     2303E4A0 (in net_key_update)
;;     2303E4C0 (in net_key_update)
;;     2303E57E (in net_key_add)
;;     2303EFDA (in mod_sub_va_del)
;;     2303F00C (in va_add)
;;     2303F43C (in app_key_set)
;;     2303F49C (in app_key_set)
;;     23040362 (in mod_sub_list_clear)
;;     23040AE4 (in bt_mesh_ccm_decrypt)
;;     23041E6E (in auth_match)
;;     23041E8A (in auth_match)
;;     23043B06 (in prov_random)
;;     23044644 (in gen_prov_ctl)
;;     23049CC8 (in bl_find_valid_queued_entry)
;;     2304AD22 (in bt_conn_addr_le_cmp)
;;     2304AD42 (in bt_conn_addr_le_cmp)
;;     2304B9AC (in find_ccc_cfg)
;;     2304BA08 (in find_ccc_cfg)
;;     2304BD92 (in find_sc_cfg)
;;     2304C120 (in notify_cb)
;;     2304E6B2 (in id_find)
;;     2304E94E (in set_random_address)
;;     2304EE12 (in bt_unpair)
;;     2304F24E (in id_create.isra.25)
;;     23050368 (in bt_id_create)
;;     2305050E (in init_work)
;;     2305052E (in init_work)
;;     230508E6 (in bt_le_adv_start_internal)
;;     230523C0 (in bt_uuid_cmp)
;;     230547C2 (in smp_public_key)
;;     23054A80 (in smp_pairing_random)
;;     23054E0A (in bt_smp_request_ltk)
;;     23054E1E (in bt_smp_request_ltk)
;;     23054F1A (in bt_smp_sign_verify)
;;     23055542 (in bt_keys_find_addr.part.2)
;;     23055552 (in bt_keys_find_addr.part.2)
;;     230555A8 (in bt_keys_find.part.1)
;;     230555C8 (in bt_keys_find.part.1)
;;     2305561A (in bt_keys_get_addr)
;;     23055630 (in bt_keys_get_addr)
;;     23055652 (in bt_keys_get_addr)
;;     23055670 (in bt_keys_get_addr)
;;     230556AC (in bt_keys_get_addr)
;;     2305580C (in bt_keys_find_irk)
;;     2305582C (in bt_keys_find_irk)
;;     230571D6 (in bt_rpa_irk_matches)
;;     23057ACE (in find_type_cb)
;;     230590DE (in fdt_subnode_offset_namelen)
;;     230591FC (in fdt_get_property_namelen_)
;;     2305AF82 (in ota_tcp_cmd.part.0)
;;     2305DFE2 (in ls_cmd)
;;     23060C56 (in psm_test_cmd)
;;     2306696A (in vfs_uart_init)
;;     23066DC2 (in vfs_uart_init)
;;     2306722C (in hal_gpio_init_from_dts)
;;     2306730A (in hal_gpio_init_from_dts)
;;     23067340 (in hal_gpio_init_from_dts)
;;     23067378 (in hal_gpio_init_from_dts)
;;     2306742A (in hal_gpio_init_from_dts)
;;     23067476 (in hal_gpio_init_from_dts)
;;     23075350 (in ethernet_input)
;;     230770E0 (in dhcp_server_recv)
;;     23077270 (in dhcp_server_recv)
;;     23077324 (in dhcp_server_recv)
;;     2307734E (in dhcp_server_recv)
;;     230783F2 (in file_info)
;;     2307844C (in file_info)
;;     23078704 (in dirent_file)
;;     23078D50 (in romfs_register)
;;     230897F6 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2308990E (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     230899C2 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2308CDF0 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CE00 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF20 (in mbedtls_ssl_prepare_handshake_record)
;;     2308E518 (in mbedtls_ssl_parse_certificate)
;;     2308ED44 (in x509_name_cmp)
;;     2308ED82 (in x509_name_cmp)
;;     2308F5DC (in x509_crt_check_parent)
;;     2308F6CC (in x509_crt_verify_top.isra.7)
;;     2308F76E (in x509_crt_verify_top.isra.7)
;;     2308FA1C (in mbedtls_x509_crt_check_extended_key_usage)
;;     2308FA42 (in mbedtls_x509_crt_check_extended_key_usage)
;;     2308FAFA (in mbedtls_x509_crt_verify_with_profile)
;;     2308FB5A (in mbedtls_x509_crt_verify_with_profile)
;;     2308FB88 (in mbedtls_x509_crt_verify_with_profile)
;;     23090326 (in mbedtls_x509_crt_parse_der)
;;     2309033C (in mbedtls_x509_crt_parse_der)
;;     23096966 (in oid_sig_alg_from_asn1.part.0)
;;     230969A0 (in mbedtls_oid_get_attr_short_name)
;;     230969EE (in mbedtls_oid_get_x509_ext_type)
;;     23096A3C (in mbedtls_oid_get_extended_key_usage)
;;     23096AF0 (in mbedtls_oid_get_pk_alg)
;;     23096B40 (in mbedtls_oid_get_ec_grp)
;;     23096B90 (in mbedtls_oid_get_md_alg)
;;     23096DEE (in mbedtls_pem_read_buffer)
;;     23096E3C (in mbedtls_pem_read_buffer)
;;     23096E54 (in mbedtls_pem_read_buffer)
;;     23096E68 (in mbedtls_pem_read_buffer)
;;     23096E7C (in mbedtls_pem_read_buffer)
;;     2309B664 (in mbedtls_ssl_handshake_server_step)
;;     2309BEA6 (in mbedtls_ssl_handshake_server_step)
;;     230A4654 (in two_way_long_needle)
;;     230A4A94 (in strstr)
memcmp proc
	addi	a5,zero,+00000003
	bgeu	a5,a2,00000000230A37D8

l230A37AC:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	addi	a3,zero,+00000003
	bne	a5,zero,00000000230A381C

l230A37BC:
	lw	a4,a0,+00000000
	lw	a5,a1,+00000000
	bne	a4,a5,00000000230A381C

l230A37C8:
	addi	a2,a2,-00000004
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	a3,a2,00000000230A37BC

l230A37D8:
	addi	a5,a2,-00000001
	beq	a2,zero,00000000230A3814

l230A37E0:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	bne	a4,a3,00000000230A3824

l230A37EC:
	addi	a4,a5,+00000001
	addi	a5,a0,+00000001
	add	a0,a0,a4
	jal	zero,00000000230A380C

l230A37FC:
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	addi	a5,a5,+00000001
	bne	a4,a3,00000000230A3824

l230A380C:
	addi	a1,a1,+00000001
	bne	a5,a0,00000000230A37FC

l230A3814:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A381C:
	addi	a5,a2,-00000001
	jal	zero,00000000230A37E0

l230A3824:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

;; memcpy: 230A382C
;;   Called from:
;;     2300038E (in scan_item_cb)
;;     2300039A (in scan_item_cb)
;;     23000422 (in wifiprov_wifi_state_get)
;;     2300042E (in wifiprov_wifi_state_get)
;;     23002B0A (in trpc_power_get)
;;     23004E78 (in rf_pri_update_tx_power_offset)
;;     230085AA (in mm_sta_add)
;;     23008C86 (in mm_get_rsn_wpa_ie)
;;     230094C2 (in mm_bcn_update)
;;     2300996A (in ps_send_pspoll)
;;     23009978 (in ps_send_pspoll)
;;     2300AD88 (in scan_probe_req_tx)
;;     2300AD94 (in scan_probe_req_tx)
;;     2300ADA2 (in scan_probe_req_tx)
;;     2300AFAE (in sta_mgmt_register)
;;     2300C640 (in txl_frame_get)
;;     2300C8E2 (in txl_frame_send_null_frame)
;;     2300C8F0 (in txl_frame_send_null_frame)
;;     2300C8FC (in txl_frame_send_null_frame)
;;     2300C9EE (in txl_frame_send_qosnull_frame)
;;     2300C9FE (in txl_frame_send_qosnull_frame)
;;     2300CA1A (in txl_frame_send_qosnull_frame)
;;     2300CCCA (in txl_frame_send_eapol_frame)
;;     2300CD98 (in txl_frame_send_eapol_frame)
;;     2300CEC6 (in txl_frame_send_eapol_frame)
;;     2300CEEC (in txl_frame_send_eapol_frame)
;;     2300D098 (in vif_mgmt_register)
;;     2300ECC6 (in rc_update_stats)
;;     2300F140 (in rc_init)
;;     230102B6 (in rxu_cntrl_frame_handle)
;;     230106DC (in rxu_cntrl_frame_handle)
;;     23010E04 (in scanu_frame_handler)
;;     230110DC (in scanu_frame_handler)
;;     23011198 (in scanu_frame_handler)
;;     2301127C (in scanu_frame_handler)
;;     23011684 (in scanu_scan_next)
;;     2301169C (in scanu_scan_next)
;;     23011A00 (in sm_scan_bss)
;;     23011A1E (in sm_scan_bss)
;;     23011A2A (in sm_scan_bss)
;;     23011AAE (in sm_scan_bss)
;;     23011AFC (in sm_join_bss)
;;     23011B0E (in sm_join_bss)
;;     23011B2E (in sm_join_bss)
;;     23011CB6 (in sm_set_bss_param)
;;     23011EB4 (in sm_disconnect)
;;     23011EC2 (in sm_disconnect)
;;     23011ECE (in sm_disconnect)
;;     23011FA8 (in sm_connect_ind)
;;     23012174 (in sm_auth_send)
;;     23012182 (in sm_auth_send)
;;     2301218E (in sm_auth_send)
;;     23012316 (in sm_assoc_req_send)
;;     2301232E (in sm_assoc_req_send)
;;     2301233A (in sm_assoc_req_send)
;;     230127F8 (in sm_handle_supplicant_result)
;;     23012806 (in sm_handle_supplicant_result)
;;     23012812 (in sm_handle_supplicant_result)
;;     23012A3A (in txu_cntrl_sechdr_len_compute)
;;     23012A70 (in txu_cntrl_sechdr_len_compute)
;;     230133D6 (in apm_start_cfm)
;;     23013532 (in apm_set_bss_param)
;;     23013980 (in apm_sta_add)
;;     23013A14 (in apm_send_mlme)
;;     23013A24 (in apm_send_mlme)
;;     23013A30 (in apm_send_mlme)
;;     23013BBC (in apm_bcn_set)
;;     23013BEA (in apm_bcn_set)
;;     23013DBE (in apm_assoc_req_handler)
;;     2301412E (in apm_assoc_req_handler)
;;     230153B2 (in keyMgmtSta_StartSession)
;;     230153C0 (in keyMgmtSta_StartSession)
;;     23015532 (in supplicantInitSession)
;;     2301568A (in supplicantEnable)
;;     23015698 (in supplicantEnable)
;;     230156B8 (in supplicantEnable)
;;     23015712 (in supplicantEnable)
;;     23015720 (in supplicantEnable)
;;     23015B80 (in add_key_to_mac)
;;     23015E80 (in add_mfp_key_to_mac)
;;     23015F10 (in keyMgmtPlumbPairwiseKey)
;;     23016348 (in process_rsn_ie)
;;     23016354 (in process_rsn_ie)
;;     23016360 (in process_rsn_ie)
;;     23016390 (in process_rsn_ie)
;;     230163B6 (in process_rsn_ie)
;;     230163C2 (in process_rsn_ie)
;;     2301640A (in process_rsn_ie)
;;     23016596 (in process_wpa_ie)
;;     230165A2 (in process_wpa_ie)
;;     23016854 (in isApReplayCounterFresh)
;;     23016860 (in isApReplayCounterFresh)
;;     23016936 (in updateApReplayCounter)
;;     23016942 (in updateApReplayCounter)
;;     230169FE (in formEAPOLEthHdr)
;;     23016A0A (in formEAPOLEthHdr)
;;     23016A88 (in IsEAPOL_MICValid)
;;     23016D62 (in parseKeyDataGTK)
;;     23016D7A (in parseKeyDataGTK)
;;     23016D86 (in parseKeyDataGTK)
;;     23016D90 (in parseKeyDataGTK)
;;     23017072 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230172F8 (in supplicantConstructContext)
;;     23017302 (in supplicantConstructContext)
;;     23017326 (in supplicantConstructContext)
;;     23017332 (in supplicantConstructContext)
;;     2301736C (in supplicantConstructContext)
;;     2301737A (in supplicantConstructContext)
;;     230174D8 (in KeyMgmtSta_DeriveKeys)
;;     230174E2 (in KeyMgmtSta_DeriveKeys)
;;     230174EC (in KeyMgmtSta_DeriveKeys)
;;     230174F8 (in KeyMgmtSta_DeriveKeys)
;;     23017504 (in KeyMgmtSta_DeriveKeys)
;;     23017616 (in GetKeyMsgNonceFromEAPOL)
;;     230177D8 (in ProcessRxEAPOL_GrpMsg1)
;;     230177E6 (in ProcessRxEAPOL_GrpMsg1)
;;     230177F4 (in ProcessRxEAPOL_GrpMsg1)
;;     230177FE (in ProcessRxEAPOL_GrpMsg1)
;;     23017AAE (in bl_sha256_crypto_kdf)
;;     23017C00 (in pmkCacheSetPassphrase)
;;     23017FFE (in pmkCacheAddPSK)
;;     23018014 (in pmkCacheAddPSK)
;;     2301832E (in RC4_Encrypt)
;;     2301833A (in RC4_Encrypt)
;;     23018392 (in sha256_compress)
;;     23018714 (in sha256_vector)
;;     230187CC (in hmac_sha256_vector)
;;     2301882C (in hmac_sha256_vector)
;;     23018DAC (in ProcessKeyMgmtDataAp)
;;     23018DB8 (in ProcessKeyMgmtDataAp)
;;     23018F10 (in GenerateGTK_internal)
;;     23018F1E (in GenerateGTK_internal)
;;     23018F36 (in GenerateGTK_internal)
;;     23018F6C (in GenerateGTK_internal)
;;     23018F78 (in GenerateGTK_internal)
;;     23018F84 (in GenerateGTK_internal)
;;     2301907C (in PopulateKeyMsg)
;;     2301910C (in prepareKDE)
;;     2301912C (in prepareKDE)
;;     2301913A (in prepareKDE)
;;     23019200 (in Encrypt_keyData)
;;     23019246 (in Encrypt_keyData)
;;     2301927E (in KeyMgmtAp_DerivePTK)
;;     2301928A (in KeyMgmtAp_DerivePTK)
;;     23019294 (in KeyMgmtAp_DerivePTK)
;;     230192BE (in KeyData_CopyWPAWP2)
;;     23019324 (in InitKeyMgmtInfo)
;;     23019330 (in InitKeyMgmtInfo)
;;     23019434 (in cm_InitConnection)
;;     23019460 (in cm_InitConnection)
;;     2301946C (in cm_InitConnection)
;;     230194C6 (in cm_SetPeerAddr)
;;     230194DC (in cm_SetPeerAddr)
;;     2301950A (in cm_SetComData)
;;     2301AFA4 (in hal_dma_push)
;;     2301B882 (in mm_hw_config_handler)
;;     2301D16E (in me_build_beacon)
;;     2301D17A (in me_build_beacon)
;;     2301D186 (in me_build_beacon)
;;     2301D2B2 (in me_build_beacon)
;;     2301D97E (in me_rc_stats_req_handler)
;;     2301D98E (in me_rc_stats_req_handler)
;;     2301DBBA (in me_chan_config_req_handler)
;;     2301DCCC (in me_config_req_handler)
;;     2301DF36 (in me_sta_add_req_handler)
;;     2301DFA0 (in me_sta_add_req_handler)
;;     2301E106 (in me_sta_add_req_handler)
;;     2301E174 (in scanu_raw_send_req_handler)
;;     2301E498 (in scanu_join_cfm_handler)
;;     2301E65E (in sm_connect_req_handler)
;;     2301E9A6 (in mm_sta_add_cfm_handler)
;;     2301E9F2 (in mm_sta_add_cfm_handler)
;;     2301F02E (in apm_start_req_handler)
;;     2301F052 (in apm_start_req_handler)
;;     2301FAA8 (in Bl_hmac_md5)
;;     2301FB00 (in Bl_hmac_md5)
;;     2301FBD4 (in Bl_hmac_sha1)
;;     2301FC32 (in Bl_hmac_sha1)
;;     2301FC80 (in Bl_hmac_sha1)
;;     2301FD10 (in Bl_PRF)
;;     2301FD28 (in Bl_PRF)
;;     2301FD7C (in Bl_PRF)
;;     230206F2 (in wpa_MD5Update)
;;     2302072E (in wpa_MD5Update)
;;     23020738 (in wpa_MD5Update)
;;     23020760 (in wpa_MD5Final)
;;     2302079A (in wpa_MD5Final)
;;     2302187E (in ap_setpsk)
;;     2302189E (in ap_setpsk)
;;     230218E2 (in ap_resetConfiguration)
;;     230219A6 (in ipc_host_init)
;;     23021EF2 (in bl_main_apm_sta_info_get)
;;     23022928 (in bl_send_start)
;;     2302298C (in bl_send_add_if)
;;     23022C1A (in bl_send_sm_connect_req)
;;     23022CF6 (in bl_send_sm_connect_req)
;;     23022D48 (in bl_send_sm_connect_req)
;;     23022D5A (in bl_send_sm_connect_req)
;;     23022E80 (in bl_send_apm_start_req)
;;     23022F2A (in bl_send_apm_start_req)
;;     23022F3C (in bl_send_apm_start_req)
;;     23022F58 (in bl_send_apm_start_req)
;;     230232A8 (in bl_rx_apm_sta_add_ind)
;;     23023750 (in bl_rx_scanu_result_ind)
;;     230237C6 (in bl_rx_scanu_result_ind)
;;     2302380E (in bl_rx_scanu_result_ind)
;;     23023D34 (in bl_output)
;;     23023D42 (in bl_output)
;;     23024EEE (in stateGlobalGuard_scan_beacon)
;;     23025BF0 (in wifi_mgmr_ap_sta_info_get_internal)
;;     23025CBA (in wifi_mgmr_api_connect)
;;     23025CDE (in wifi_mgmr_api_connect)
;;     23025D42 (in wifi_mgmr_api_connect)
;;     23025D64 (in wifi_mgmr_api_connect)
;;     23025E90 (in wifi_mgmr_api_cfg_req)
;;     23026444 (in wifi_mgmr_api_scan_item_beacon)
;;     23026470 (in wifi_mgmr_api_scan_item_beacon)
;;     2302672E (in wifi_mgmr_api_ap_start)
;;     2302675E (in wifi_mgmr_api_ap_start)
;;     230269DE (in cmd_wifi_power_table_update)
;;     23027970 (in cb_scan_item_parse)
;;     2302797C (in cb_scan_item_parse)
;;     23027A68 (in wifi_mgmr_sta_enable)
;;     23027AAA (in wifi_mgmr_sta_enable)
;;     23027C28 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027C50 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027C66 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027D12 (in wifi_mgmr_sta_ssid_set)
;;     23027D44 (in wifi_mgmr_sta_psk_set)
;;     23027DC4 (in wifi_mgmr_ap_enable)
;;     23027E08 (in wifi_mgmr_ap_enable)
;;     23027EAE (in wifi_mgmr_ap_mac_get)
;;     23027F5A (in wifi_mgmr_ap_sta_info_get)
;;     230280D2 (in wifi_mgmr_scan_ap_all)
;;     230280EA (in wifi_mgmr_scan_ap_all)
;;     230282DA (in wifi_mgmr_profile_add)
;;     230282EA (in wifi_mgmr_profile_add)
;;     230282FA (in wifi_mgmr_profile_add)
;;     23028308 (in wifi_mgmr_profile_add)
;;     230283DE (in wifi_mgmr_profile_get)
;;     230283F0 (in wifi_mgmr_profile_get)
;;     23028402 (in wifi_mgmr_profile_get)
;;     23028412 (in wifi_mgmr_profile_get)
;;     230287E4 (in cmd_mgr_msgind)
;;     2302D832 (in llc_map_update_ind)
;;     230341F2 (in llm_init)
;;     2303695A (in llcp_channel_map_ind_handler)
;;     23039F4E (in hci_le_set_host_ch_class_cmd_handler)
;;     2303AD92 (in blemesh_init)
;;     2303D28A (in bt_mesh_beacon_recv)
;;     2303DEC6 (in hb_pub_send_status)
;;     2303DFC2 (in send_mod_sub_status)
;;     2303E7A2 (in create_mod_app_status.isra.5)
;;     2303E822 (in send_mod_pub_status.isra.7)
;;     2303F056 (in va_add)
;;     2303F4C0 (in app_key_set)
;;     2304077A (in bt_mesh_ccm_encrypt)
;;     230407B2 (in bt_mesh_ccm_encrypt)
;;     230407FC (in bt_mesh_ccm_encrypt)
;;     23040918 (in bt_mesh_ccm_encrypt)
;;     230409C4 (in bt_mesh_ccm_encrypt)
;;     23040A64 (in bt_mesh_ccm_decrypt)
;;     23040A9C (in bt_mesh_ccm_decrypt)
;;     23040BE8 (in bt_mesh_ccm_decrypt)
;;     23040C0E (in bt_mesh_ccm_decrypt)
;;     23040CB6 (in bt_mesh_ccm_decrypt)
;;     23040CFA (in bt_mesh_ccm_decrypt)
;;     23040EA8 (in bt_mesh_k2)
;;     23040EC8 (in bt_mesh_k2)
;;     23040F3A (in bt_mesh_k3)
;;     2304100A (in bt_mesh_net_obfuscate)
;;     230413EC (in bt_mesh_beacon_auth)
;;     23041414 (in bt_mesh_beacon_auth)
;;     23041560 (in health_fault_status)
;;     23041C92 (in bt_mesh_provision)
;;     23041D70 (in bt_mesh_prov_enable)
;;     23041F1C (in net_decrypt.isra.1)
;;     23041F66 (in net_decrypt.isra.1)
;;     230420E2 (in bt_mesh_net_keys_create)
;;     2304222A (in friend_cred_refresh)
;;     23042250 (in friend_cred_refresh)
;;     230425A8 (in bt_mesh_net_revoke_keys)
;;     230425D0 (in bt_mesh_net_revoke_keys)
;;     230425F4 (in bt_mesh_net_revoke_keys)
;;     23043884 (in prov_confirm)
;;     230439E8 (in prov_invite)
;;     23043C12 (in prov_data)
;;     23043D84 (in prov_pub_key)
;;     23043E08 (in prov_start)
;;     23043E92 (in prov_start)
;;     23043F08 (in prov_start)
;;     23043F5A (in prov_start)
;;     23044338 (in gen_prov_cont)
;;     2304446E (in gen_prov_start)
;;     2304453C (in send_pub_key)
;;     23045730 (in bt_mesh_proxy_adv_start)
;;     2304588C (in bt_mesh_proxy_adv_start)
;;     230458C2 (in bt_mesh_proxy_adv_start)
;;     2304591C (in bt_mesh_proxy_adv_start)
;;     230470F2 (in bt_mesh_trans_recv)
;;     23049302 (in net_buf_simple_add_mem)
;;     23049C6E (in _copy)
;;     23049DE0 (in bl_onchiphci_rx_packet_handler)
;;     2304A5DC (in bt_conn_le_start_encryption)
;;     2304A5E8 (in bt_conn_le_start_encryption)
;;     2304A5F4 (in bt_conn_le_start_encryption)
;;     2304AA90 (in bt_conn_add_le)
;;     2304B20C (in bt_conn_create_le)
;;     2304B234 (in bt_conn_create_le)
;;     2304BA60 (in gatt_notify)
;;     2304BBD8 (in gatt_indicate)
;;     2304BD26 (in disconnected_cb)
;;     2304BD4A (in disconnected_cb)
;;     2304BE6C (in read_appearance)
;;     2304BEAA (in read_ppcp)
;;     2304BEFC (in read_name)
;;     2304BF50 (in bt_gatt_attr_read_ccc)
;;     2304BF94 (in bt_gatt_attr_read_service)
;;     2304C014 (in sc_save)
;;     2304C2BE (in bt_gatt_attr_write_ccc)
;;     2304C2F8 (in bt_gatt_attr_write_ccc)
;;     2304C3FC (in bt_gatt_attr_read)
;;     2304C4B2 (in bt_gatt_attr_read_chrc)
;;     2304C4CE (in bt_gatt_attr_read_chrc)
;;     2304C582 (in bt_gatt_foreach_attr_type)
;;     2304D100 (in gatt_read_group_rsp)
;;     2304D396 (in gatt_read_type_rsp)
;;     2304D402 (in read_included_uuid_cb)
;;     2304D582 (in gatt_find_info_rsp)
;;     2304D898 (in bt_gatt_write_without_response_cb)
;;     2304D974 (in bt_gatt_write)
;;     2304D9E4 (in bt_gatt_write)
;;     2304DAD8 (in bt_gatt_subscribe)
;;     2304DE68 (in bt_gatt_disconnected)
;;     2304DEDE (in bt_addr_le_copy)
;;     2304DF1A (in le_pkey_complete)
;;     2304DFF6 (in le_remote_feat_complete)
;;     2304E98A (in set_random_address)
;;     2304EA0C (in hci_id_add)
;;     2304ECAC (in set_ad)
;;     2304F832 (in le_ltk_request)
;;     2304FAD8 (in enh_conn_complete)
;;     2304FCFA (in le_legacy_conn_complete)
;;     2304FD28 (in le_legacy_conn_complete)
;;     2304FD5C (in le_legacy_conn_complete)
;;     2305047C (in init_work)
;;     2305053C (in init_work)
;;     2305056E (in init_work)
;;     230505C8 (in init_work)
;;     23050F64 (in bt_dh_key_gen)
;;     230517A4 (in l2cap_chan_le_send_sdu)
;;     23051B3A (in l2cap_chan_le_recv_seg)
;;     23051B84 (in l2cap_chan_le_recv_seg)
;;     23052340 (in uuid_to_uuid128)
;;     23052360 (in uuid_to_uuid128)
;;     23052390 (in uuid_to_uuid128)
;;     2305245C (in bt_uuid_create)
;;     230524C2 (in bt_uuid_to_str)
;;     230524CE (in bt_uuid_to_str)
;;     230524DC (in bt_uuid_to_str)
;;     230524E8 (in bt_uuid_to_str)
;;     230524F6 (in bt_uuid_to_str)
;;     23052502 (in bt_uuid_to_str)
;;     230527A0 (in smp_sign_buf)
;;     230527B2 (in smp_sign_buf)
;;     230529F2 (in smp_f6)
;;     23052A16 (in smp_f6)
;;     23052AB0 (in smp_g2)
;;     23052D3E (in smp_ident_info)
;;     23052DAA (in smp_encrypt_info)
;;     230531F8 (in sc_smp_send_dhkey_check)
;;     230534D4 (in smp_dhkey_check)
;;     23053524 (in smp_send_pairing_random)
;;     23053574 (in sc_send_public_key)
;;     23053586 (in sc_send_public_key)
;;     230535CA (in send_pairing_rsp)
;;     2305369C (in bt_smp_distribute_keys)
;;     230536E6 (in bt_smp_distribute_keys)
;;     230536F0 (in bt_smp_distribute_keys)
;;     2305371E (in bt_smp_distribute_keys)
;;     2305372A (in bt_smp_distribute_keys)
;;     23053736 (in bt_smp_distribute_keys)
;;     23053766 (in bt_smp_distribute_keys)
;;     230537E2 (in smp_signing_info)
;;     2305387C (in smp_master_ident)
;;     2305388A (in smp_master_ident)
;;     23053A26 (in smp_send_pairing_req)
;;     23053BAC (in smp_pairing_req)
;;     23053E98 (in bt_smp_dhkey_ready)
;;     230541A8 (in smp_c1)
;;     230541B6 (in smp_c1)
;;     230541F2 (in smp_c1)
;;     23054200 (in smp_c1)
;;     2305432A (in smp_pairing_confirm)
;;     23054418 (in smp_pairing_rsp)
;;     23054660 (in smp_ident_addr_info)
;;     23054682 (in smp_ident_addr_info)
;;     2305468C (in smp_ident_addr_info)
;;     230547A0 (in smp_public_key)
;;     230547B0 (in smp_public_key)
;;     23054A26 (in smp_pairing_random)
;;     23054A98 (in smp_pairing_random)
;;     23054AA2 (in smp_pairing_random)
;;     23054B02 (in smp_pairing_random)
;;     23054B0C (in smp_pairing_random)
;;     23054B22 (in smp_pairing_random)
;;     23054D52 (in bt_smp_request_ltk)
;;     23054DCE (in bt_smp_request_ltk)
;;     23054E34 (in bt_smp_request_ltk)
;;     23054E8E (in bt_smp_sign_verify)
;;     23054EDA (in bt_smp_sign_verify)
;;     23054FA0 (in bt_smp_sign)
;;     23055026 (in bt_smp_auth_passkey_entry)
;;     23055490 (in bt_smp_update_keys)
;;     230556E4 (in bt_keys_get_addr)
;;     2305589E (in bt_keys_find_irk)
;;     23056522 (in read_func)
;;     23056578 (in data_cb)
;;     230571AA (in bt_rpa_irk_matches)
;;     230571CC (in bt_rpa_irk_matches)
;;     23057490 (in tc_aes128_set_encrypt_key)
;;     23057B4A (in find_info_cb)
;;     23059E0C (in tc_fdt_wifi_module)
;;     23059E6E (in tc_fdt_wifi_module)
;;     2305A0B6 (in tc_fdt_wifi_module)
;;     2305A2CE (in tc_fdt_wifi_module)
;;     2305A362 (in tc_fdt_wifi_module)
;;     2305A3F6 (in tc_fdt_wifi_module)
;;     2305A488 (in tc_fdt_wifi_module)
;;     2305AD84 (in ota_tcp_cmd.part.0)
;;     2305ADAE (in ota_tcp_cmd.part.0)
;;     2305ADE4 (in ota_tcp_cmd.part.0)
;;     2305ADFE (in ota_tcp_cmd.part.0)
;;     2305AE28 (in ota_tcp_cmd.part.0)
;;     2305AE56 (in ota_tcp_cmd.part.0)
;;     2305AE96 (in ota_tcp_cmd.part.0)
;;     2305B188 (in scan_complete_cb)
;;     2305B260 (in __recv_event)
;;     2305B63C (in wifi_state_get_cb)
;;     2305B6A4 (in write_data)
;;     2305B798 (in __ble_bytes_send)
;;     2305BD8E (in __protocol_send)
;;     2305BE5E (in pro_trans_read)
;;     2305C0A4 (in pro_trans_layer_ack_read)
;;     2305C228 (in __payload_write)
;;     2305C262 (in __payload_write)
;;     2305C2A0 (in __payload_read)
;;     2305C7F8 (in ensure)
;;     2305C834 (in cJSON_strdup)
;;     2305D25A (in print_array.isra.4)
;;     2305D724 (in print_object.isra.3)
;;     2305EB0E (in cli_main_input)
;;     2305EDD4 (in cli_main_input)
;;     23060B26 (in psm_test_cmd)
;;     23061034 (in prvCopyDataToQueue)
;;     2306105E (in prvCopyDataToQueue)
;;     230610BE (in prvCopyDataFromQueue)
;;     23061B6C (in prvWriteBytesToBuffer)
;;     23061B84 (in prvWriteBytesToBuffer)
;;     23061BCE (in prvWriteBytesToBuffer)
;;     23061BEA (in prvWriteBytesToBuffer)
;;     23061C32 (in prvReadBytesFromBuffer)
;;     23061C48 (in prvReadBytesFromBuffer)
;;     23064C32 (in bl_uart_init)
;;     23064E3A (in bl_uart_setconfig)
;;     23064FA0 (in bl_chip_info)
;;     23064FB2 (in bl_chip_info)
;;     23064FFE (in bl_chip_info)
;;     23065C18 (in bl_rand_stream)
;;     230661F8 (in bl_wifi_sta_mac_addr_set)
;;     23066214 (in bl_wifi_ap_mac_addr_set)
;;     2306622E (in bl_wifi_mac_addr_get)
;;     23066276 (in bl_wifi_ap_info_set)
;;     23066288 (in bl_wifi_ap_info_set)
;;     230662E0 (in bl_wifi_sta_info_set)
;;     230662F2 (in bl_wifi_sta_info_set)
;;     23066832 (in vfs_uart_init)
;;     23067DE0 (in hal_board_cfg)
;;     230681CC (in hal_board_cfg)
;;     230682BC (in hal_board_cfg)
;;     2306892C (in hal_board_cfg)
;;     23068A3A (in hal_board_cfg)
;;     23068B08 (in hal_board_cfg)
;;     230695B4 (in hal_board_cfg)
;;     2306963C (in hal_board_cfg)
;;     2306971E (in hal_board_cfg)
;;     230697A6 (in hal_board_cfg)
;;     23069808 (in bl_tsen_adc_get)
;;     230699E8 (in PtTable_Update_Entry)
;;     23069A0C (in PtTable_Update_Entry)
;;     23069AC0 (in PtTable_Get_Active_Entries)
;;     23069B2C (in bl_timer_tick_enable)
;;     2306AB5C (in lwip_sock_make_addr.isra.3)
;;     2306B3C4 (in lwip_accept)
;;     2306B78C (in lwip_sendto)
;;     2306C4AE (in dns_gethostbyname_addrtype)
;;     2306C832 (in lwip_chksum_copy)
;;     2306E030 (in etharp_raw)
;;     2306E03C (in etharp_raw)
;;     2306E048 (in etharp_raw)
;;     2306E054 (in etharp_raw)
;;     2306E182 (in etharp_input)
;;     2306E18E (in etharp_input)
;;     2306E1F2 (in etharp_input)
;;     2306F154 (in ip4_output_if_opt_src)
;;     230704F6 (in pbuf_copy)
;;     230705CE (in pbuf_copy_partial)
;;     23070626 (in pbuf_take)
;;     23070688 (in pbuf_take_at)
;;     23070F38 (in tcp_seg_copy)
;;     230753D0 (in ethernet_output)
;;     230753DC (in ethernet_output)
;;     23076D44 (in icmp_input)
;;     23076EC2 (in icmp_dest_unreach)
;;     23076F76 (in dhcp_client_find_by_ip.isra.0)
;;     23077100 (in dhcp_server_recv)
;;     2307713C (in dhcp_server_recv)
;;     2307716E (in dhcp_server_recv)
;;     2307719C (in dhcp_server_recv)
;;     230771BC (in dhcp_server_recv)
;;     230771D2 (in dhcp_server_recv)
;;     230771EA (in dhcp_server_recv)
;;     23077202 (in dhcp_server_recv)
;;     230772A0 (in dhcp_server_recv)
;;     23077300 (in dhcp_server_recv)
;;     2307739E (in dhcp_server_recv)
;;     230773D0 (in dhcp_server_recv)
;;     2307752E (in dhcpd_start)
;;     23078350 (in romfs_read)
;;     2307837A (in romfs_read)
;;     23078882 (in dirent_file)
;;     23079FFA (in utils_sha256_update.part.0)
;;     2307A05C (in utils_sha256_update.part.0)
;;     2307A97A (in Bl_F_fast.constprop.0)
;;     2307A9B0 (in Bl_F_fast.constprop.0)
;;     2307A9D2 (in Bl_F_fast.constprop.0)
;;     2307AA54 (in utils_wifi_psk_cal_fast_bin)
;;     2307AB50 (in utils_hmac_sha1_fast)
;;     2307ABB0 (in utils_hmac_sha1_fast)
;;     2307AC00 (in utils_hmac_sha1_fast)
;;     2307B28C (in inode_reserve)
;;     2307B92E (in aos_poll_read_fd)
;;     2307B942 (in aos_poll_read_fd)
;;     2307C020 (in _event_write.isra.0)
;;     2307C148 (in event_read)
;;     2307C380 (in at_serial_cfg_set)
;;     2307CC56 (in at_server_notify_with_ctx)
;;     2307D896 (in cwjap_cur)
;;     2307D8AC (in cwjap_cur)
;;     2307E662 (in at_parse)
;;     2307EF96 (in at_set_ap)
;;     2307EFA6 (in at_set_ap)
;;     2307F05E (in at_http_request)
;;     2307F13C (in get_text_para)
;;     2307F1D8 (in get_tdata_para)
;;     2307F3A6 (in get_ip_para)
;;     2307F5A8 (in get_hex_para)
;;     2307FCF6 (in send_data_handler)
;;     2307FD1E (in send_data_handler)
;;     23080128 (in client_ssl_set_alpn)
;;     2308072E (in udp_send_data)
;;     230847CE (in mfg_flash_read_macaddr)
;;     23084C40 (in bl_mtd_write)
;;     230859C4 (in hal_hbn_init)
;;     23085AE2 (in bl_hbn_enter)
;;     2308756C (in block_cipher_df)
;;     230875FC (in block_cipher_df)
;;     23087634 (in block_cipher_df)
;;     23087706 (in ctr_drbg_update_internal)
;;     23087792 (in mbedtls_ctr_drbg_reseed)
;;     23087916 (in mbedtls_ctr_drbg_random_with_add)
;;     23088D2C (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088E12 (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     230890A0 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     230891D0 (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     23089364 (in mbedtls_rsa_rsassa_pss_sign)
;;     230894EE (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2308953E (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230895C4 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23089A8C (in mbedtls_sha256_clone)
;;     2308A7F0 (in mbedtls_sha256_update.part.0)
;;     2308A852 (in mbedtls_sha256_update.part.0)
;;     2308AAC8 (in ssl_swap_epochs)
;;     2308AAD8 (in ssl_swap_epochs)
;;     2308AAE6 (in ssl_swap_epochs)
;;     2308AE0C (in tls_prf_sha256)
;;     2308AE1C (in tls_prf_sha256)
;;     2308B0CC (in mbedtls_ssl_derive_keys)
;;     2308B0D8 (in mbedtls_ssl_derive_keys)
;;     2308B0E6 (in mbedtls_ssl_derive_keys)
;;     2308B28C (in mbedtls_ssl_derive_keys)
;;     2308B29A (in mbedtls_ssl_derive_keys)
;;     2308B32E (in mbedtls_ssl_derive_keys)
;;     2308B33C (in mbedtls_ssl_derive_keys)
;;     2308B780 (in mbedtls_ssl_set_hostname)
;;     2308C19C (in mbedtls_ssl_write_record)
;;     2308C26C (in mbedtls_ssl_write_record)
;;     2308C40A (in mbedtls_ssl_write_record)
;;     2308C488 (in mbedtls_ssl_write_record)
;;     2308C496 (in mbedtls_ssl_write_record)
;;     2308C668 (in mbedtls_ssl_write_record)
;;     2308C84E (in mbedtls_ssl_resend)
;;     2308CE9A (in mbedtls_ssl_prepare_handshake_record)
;;     2308CEB8 (in mbedtls_ssl_prepare_handshake_record)
;;     2308CF9A (in mbedtls_ssl_prepare_handshake_record)
;;     2308D106 (in mbedtls_ssl_prepare_handshake_record)
;;     2308D4F2 (in mbedtls_ssl_write_certificate)
;;     2308D67C (in mbedtls_ssl_write_finished)
;;     2308D884 (in mbedtls_ssl_write)
;;     2308DD30 (in mbedtls_ssl_read_record_layer)
;;     2308DD88 (in mbedtls_ssl_read_record_layer)
;;     2308DE8A (in mbedtls_ssl_read_record_layer)
;;     2308EC4A (in mbedtls_ssl_read)
;;     2308FE06 (in mbedtls_x509_crt_parse_der)
;;     2309148E (in mbedtls_aes_crypt_cbc)
;;     230914C2 (in mbedtls_aes_crypt_cbc)
;;     230914FE (in mbedtls_aes_crypt_cbc)
;;     23091EC2 (in mbedtls_mpi_grow)
;;     23091F22 (in mbedtls_mpi_shrink)
;;     23091FC6 (in mbedtls_mpi_copy)
;;     23092490 (in mpi_montmul)
;;     23092E4A (in mbedtls_mpi_exp_mod)
;;     230936B6 (in mbedtls_cipher_set_iv)
;;     230937E4 (in mbedtls_cipher_update)
;;     23093812 (in mbedtls_cipher_update)
;;     2309386E (in mbedtls_cipher_update)
;;     230942C2 (in mbedtls_debug_print_crt)
;;     23095AB2 (in ecp_mod_koblitz.constprop.0)
;;     23095AFE (in ecp_mod_koblitz.constprop.0)
;;     230960A2 (in mbedtls_gcm_starts)
;;     23096324 (in mbedtls_gcm_finish)
;;     23096C46 (in pem_aes_decrypt)
;;     23096CA8 (in pem_aes_decrypt)
;;     23096CE8 (in pem_aes_decrypt)
;;     23097068 (in mbedtls_md5_clone)
;;     23097CC6 (in mbedtls_md5_update.part.0)
;;     23097D28 (in mbedtls_md5_update.part.0)
;;     23097E80 (in mbedtls_sha1_clone)
;;     230994E6 (in mbedtls_sha1_update.part.0)
;;     23099548 (in mbedtls_sha1_update.part.0)
;;     23099984 (in mbedtls_ssl_handshake_client_step)
;;     23099C8A (in mbedtls_ssl_handshake_client_step)
;;     23099D42 (in mbedtls_ssl_handshake_client_step)
;;     23099FC6 (in mbedtls_ssl_handshake_client_step)
;;     2309A020 (in mbedtls_ssl_handshake_client_step)
;;     2309B486 (in mbedtls_ssl_handshake_server_step)
;;     2309B776 (in mbedtls_ssl_handshake_server_step)
;;     2309B7E2 (in mbedtls_ssl_handshake_server_step)
;;     2309BE20 (in mbedtls_ssl_handshake_server_step)
;;     2309BE36 (in mbedtls_ssl_handshake_server_step)
;;     230A743C (in __sfvwrite_r)
memcpy proc
	xor	a5,a1,a0
	andi	a5,a5,+00000003
	add	a7,a0,a2
	bne	a5,zero,00000000230A389C

l230A383C:
	addi	a5,zero,+00000003
	bgeu	a5,a2,00000000230A389C

l230A3844:
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,00000000230A38BC

l230A3850:
	andi	a2,a7,-00000004
	addi	a5,a2,-00000020
	bltu	a4,a5,00000000230A38F0

l230A385C:
	bgeu	a4,a2,00000000230A3894

l230A3860:
	addi	a3,a1,+00000000
	addi	a5,a4,+00000000

l230A3868:
	lw	a6,a3,+00000000
	addi	a5,a5,+00000004
	addi	a3,a3,+00000004
	sw	a6,a5,+00000FFC
	bltu	a5,a2,00000000230A3868

l230A387C:
	addi	a5,a2,-00000001
	sub	a5,a5,a4
	andi	a5,a5,-00000004
	addi	a5,a5,+00000004
	add	a4,a4,a5
	add	a1,a1,a5

l230A3894:
	bltu	a4,a7,00000000230A38A4

l230A3898:
	jalr	zero,ra,+00000000

l230A389C:
	addi	a4,a0,+00000000
	bgeu	a0,a7,00000000230A3898

l230A38A4:
	lbu	a5,a1,+00000000
	addi	a4,a4,+00000001
	addi	a1,a1,+00000001
	sb	a5,a4,+00000FFF
	bltu	a4,a7,00000000230A38A4

l230A38B8:
	jalr	zero,ra,+00000000

l230A38BC:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	beq	a5,zero,00000000230A3850

l230A38D4:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	bne	a5,zero,00000000230A38BC

l230A38EC:
	jal	zero,00000000230A3850

l230A38F0:
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
	bltu	a4,a5,00000000230A38F0

l230A3944:
	jal	zero,00000000230A385C

;; memmove: 230A3948
;;   Called from:
;;     2300E54E (in rc_sort_samples_tp)
;;     2300E558 (in rc_sort_samples_tp)
;;     2300E562 (in rc_sort_samples_tp)
;;     2308C150 (in mbedtls_ssl_write_record)
;;     2308C9E8 (in mbedtls_ssl_fetch_input)
;;     2308D0F8 (in mbedtls_ssl_prepare_handshake_record)
;;     2308D918 (in mbedtls_ssl_read_record_layer)
;;     230A7478 (in __sfvwrite_r)
;;     230A75B0 (in __sfvwrite_r)
;;     230A7680 (in __sfvwrite_r)
;;     230A76E0 (in __sfvwrite_r)
;;     230A88C8 (in _realloc_r)
;;     230A88D8 (in _realloc_r)
;;     230A8980 (in _realloc_r)
memmove proc
	bgeu	a1,a0,00000000230A3974

l230A394C:
	add	a5,a1,a2
	bgeu	a0,a5,00000000230A3974

l230A3954:
	add	a4,a0,a2
	beq	a2,zero,00000000230A3A4C

l230A395C:
	addi	a5,a5,-00000001
	lbu	a3,a5,+00000000
	addi	a4,a4,-00000001
	sb	a3,a4,+00000000
	bne	a1,a5,00000000230A395C

l230A3970:
	jalr	zero,ra,+00000000

l230A3974:
	addi	a5,zero,+0000000F
	bltu	a5,a2,00000000230A39A8

l230A397C:
	addi	a5,a0,+00000000

l230A3980:
	addi	a3,a2,-00000001
	beq	a2,zero,00000000230A3A5C

l230A3988:
	addi	a3,a3,+00000001
	add	a3,a5,a3

l230A3990:
	addi	a1,a1,+00000001
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	bne	a5,a3,00000000230A3990

l230A39A4:
	jalr	zero,ra,+00000000

l230A39A8:
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,00000000230A3A50

l230A39B4:
	addi	a7,a2,-00000010
	andi	a7,a7,-00000010
	addi	a7,a7,+00000010
	add	a6,a0,a7
	addi	a4,a1,+00000000
	addi	a5,a0,+00000000

l230A39CC:
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
	bne	a6,a5,00000000230A39CC

l230A39F8:
	andi	a4,a2,+0000000C
	add	a1,a1,a7
	andi	a6,a2,+0000000F
	beq	a4,zero,00000000230A3A60

l230A3A08:
	addi	a4,a1,+00000000
	addi	a7,a5,+00000000
	addi	t3,zero,+00000003

l230A3A14:
	addi	a4,a4,+00000004
	lw	t1,a4,-00000004
	addi	a7,a7,+00000004
	sub	a3,a6,a4
	sw	t1,a7,+00000FFC
	add	a3,a1,a3
	bltu	t3,a3,00000000230A3A14

l230A3A30:
	addi	a4,a6,-00000004
	andi	a4,a4,-00000004
	addi	a4,a4,+00000004
	andi	a2,a2,+00000003
	add	a5,a5,a4
	add	a1,a1,a4
	jal	zero,00000000230A3980

l230A3A4C:
	jalr	zero,ra,+00000000

l230A3A50:
	addi	a3,a2,-00000001
	addi	a5,a0,+00000000
	jal	zero,00000000230A3988

l230A3A5C:
	jalr	zero,ra,+00000000

l230A3A60:
	addi	a2,a6,+00000000
	jal	zero,00000000230A3980

;; memset: 230A3A68
;;   Called from:
;;     230003C2 (in wifiprov_wifi_state_get)
;;     230003CE (in wifiprov_wifi_state_get)
;;     2300059C (in event_cb_wifi_event)
;;     230005A8 (in event_cb_wifi_event)
;;     230005B8 (in event_cb_wifi_event)
;;     230005C2 (in event_cb_wifi_event)
;;     230005CC (in event_cb_wifi_event)
;;     230005D8 (in event_cb_wifi_event)
;;     23000610 (in event_cb_wifi_event)
;;     23000642 (in event_cb_wifi_event)
;;     2300064E (in event_cb_wifi_event)
;;     23000678 (in event_cb_wifi_event)
;;     23000E4C (in __usr_at_cmd_demo)
;;     2300151A (in ipc_emb_init)
;;     2300173A (in ipc_emb_tx_evt)
;;     23002D44 (in phy_tcal_reset)
;;     23007E84 (in mm_env_init)
;;     2300855C (in mm_sta_add)
;;     230086F2 (in mm_sta_del)
;;     23008F56 (in mm_bcn_init)
;;     2300909C (in mm_bcn_init_vif)
;;     230099CE (in ps_init)
;;     2300A018 (in bl_init)
;;     2300AB96 (in scan_init)
;;     2300AE6A (in sta_mgmt_entry_init)
;;     2300B192 (in sta_mgmt_add_key)
;;     2300B3E8 (in td_reset)
;;     2300B672 (in txl_cfm_init)
;;     2300B948 (in txl_cntrl_init)
;;     2300C2D4 (in txl_reset)
;;     2300C38E (in txl_frame_init_desc)
;;     2300C45E (in txl_frame_init)
;;     2300CFB2 (in vif_mgmt_init)
;;     2300CFD8 (in vif_mgmt_init)
;;     2300D01A (in vif_mgmt_init)
;;     2300D288 (in vif_mgmt_unregister)
;;     2300D33E (in vif_mgmt_add_key)
;;     2300D6BA (in me_init)
;;     2300EE1C (in rc_update_stats)
;;     2300F0BE (in rc_init)
;;     23010964 (in rxu_swdesc_upload_evt)
;;     23010AB8 (in scanu_init)
;;     23011060 (in scanu_frame_handler)
;;     23011078 (in scanu_frame_handler)
;;     23011082 (in scanu_frame_handler)
;;     23011094 (in scanu_frame_handler)
;;     230110A6 (in scanu_frame_handler)
;;     2301142C (in scanu_rm_exist_ssid)
;;     230131D6 (in _aid_list_delete)
;;     230132FE (in apm_init)
;;     23013DB4 (in apm_assoc_req_handler)
;;     23013FA6 (in apm_assoc_req_handler)
;;     23013FB0 (in apm_assoc_req_handler)
;;     230146BE (in dbg_init)
;;     230149F8 (in ke_msg_alloc)
;;     230151F4 (in GetTxEAPOLBuffer)
;;     23015438 (in init_customApp_mibs)
;;     23015444 (in init_customApp_mibs)
;;     230159E6 (in supplicantInit)
;;     230159F2 (in supplicantInit)
;;     23015B50 (in add_key_to_mac)
;;     23015E4E (in add_mfp_key_to_mac)
;;     23016A92 (in IsEAPOL_MICValid)
;;     23016FA6 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230179B0 (in set_psk)
;;     23017C90 (in pmkCacheInit)
;;     23017CA2 (in pmkCacheInit)
;;     23017E12 (in pmkCacheNewElement)
;;     23018088 (in pmkCacheDeletePSK)
;;     230187C2 (in hmac_sha256_vector)
;;     23018822 (in hmac_sha256_vector)
;;     230189EA (in PrepDefaultEapolMsg)
;;     23018E4C (in InitStaKeyInfo)
;;     2301917E (in prepareKDE)
;;     230193FC (in cm_InitConnection)
;;     23019442 (in cm_InitConnection)
;;     23019450 (in cm_InitConnection)
;;     2301A53A (in chan_init)
;;     2301A556 (in chan_init)
;;     2301A934 (in chan_ctxt_del)
;;     2301B18A (in mm_monitor_enable_req_handler)
;;     2301CC14 (in me_build_associate_req)
;;     2301D31A (in me_build_beacon)
;;     2301D56E (in me_build_probe_rsp)
;;     2301D75C (in me_build_associate_rsp)
;;     2301F60E (in generate_subkey)
;;     2301F6FE (in bl_aes_cmac)
;;     2301FA9E (in Bl_hmac_md5)
;;     2301FAF6 (in Bl_hmac_md5)
;;     2301FBCA (in Bl_hmac_sha1)
;;     2301FC28 (in Bl_hmac_sha1)
;;     2301FD02 (in Bl_PRF)
;;     2302066E (in wpa_MD5Transform)
;;     230207A6 (in wpa_MD5Final)
;;     2302176C (in Bl_SHA1Final)
;;     230218F6 (in ap_resetConfiguration)
;;     23021998 (in ipc_host_init)
;;     230219EA (in ipc_host_init)
;;     23021BE0 (in bl_main_monitor)
;;     23021DB6 (in bl_main_apm_start)
;;     23021F36 (in bl_main_apm_sta_delete)
;;     23021F6C (in bl_main_apm_sta_delete)
;;     23022064 (in bl_main_connect)
;;     2302248C (in bl_send_msg)
;;     23022528 (in bl_msg_zalloc.constprop.3)
;;     2302331C (in notify_event_scan_done)
;;     23023326 (in notify_event_scan_done)
;;     2302338A (in bl_rx_chan_switch_ind)
;;     23023394 (in bl_rx_chan_switch_ind)
;;     23023534 (in bl_rx_sm_connect_ind)
;;     23023666 (in bl_rx_sm_disconnect_ind)
;;     230236F2 (in bl_rx_scanu_result_ind)
;;     2302371E (in bl_rx_scanu_result_ind)
;;     23023D26 (in bl_output)
;;     2302408E (in tcpip_stack_input)
;;     2302420C (in tcpip_stack_input)
;;     230242B2 (in bl_ipc_init)
;;     23024E84 (in stateGlobalGuard_scan_beacon)
;;     23024EBC (in stateGlobalGuard_scan_beacon)
;;     23025BBE (in wifi_mgmr_ap_sta_info_get_internal)
;;     23025C44 (in wifi_mgmr_api_connect)
;;     23025D96 (in wifi_mgmr_api_cfg_req)
;;     23025ECE (in wifi_mgmr_api_ip_got)
;;     23025FD0 (in wifi_mgmr_api_ip_update)
;;     23026042 (in wifi_mgmr_api_reconnect)
;;     230260B4 (in wifi_mgmr_api_disable_autoreconnect)
;;     23026126 (in wifi_mgmr_api_enable_autoreconnect)
;;     23026198 (in wifi_mgmr_api_disconnect)
;;     2302620E (in wifi_mgmr_api_rate_config)
;;     2302627A (in wifi_mgmr_api_conf_max_sta)
;;     230262E0 (in wifi_mgmr_api_ifaceup)
;;     23026352 (in wifi_mgmr_api_sniffer_enable)
;;     230263DE (in wifi_mgmr_api_scan_item_beacon)
;;     230264B4 (in wifi_mgmr_api_fw_disconnect)
;;     23026526 (in wifi_mgmr_api_fw_tsen_reload)
;;     23026596 (in wifi_mgmr_api_fw_scan)
;;     2302660C (in wifi_mgmr_api_fw_powersaving)
;;     23026696 (in wifi_mgmr_api_ap_start)
;;     23026798 (in wifi_mgmr_api_ap_stop)
;;     2302680A (in wifi_mgmr_api_idle)
;;     2302687A (in wifi_mgmr_api_denoise_enable)
;;     230268E0 (in wifi_mgmr_api_denoise_disable)
;;     2302694C (in wifi_mgmr_api_raw_send)
;;     23026D4A (in wifi_ap_sta_list_get_cmd)
;;     23026F18 (in wifi_ap_sta_delete_cmd)
;;     230271D0 (in cmd_wifi_ap_start)
;;     230271E2 (in cmd_wifi_ap_start)
;;     23027F28 (in wifi_mgmr_ap_sta_info_get)
;;     23028164 (in wifi_mgmr_all_ap_scan)
;;     23028264 (in wifi_mgmr_profile_add)
;;     23028360 (in wifi_mgmr_profile_get)
;;     230284B4 (in cb_disconnect_ind)
;;     2302854C (in cb_connect_ind)
;;     23028DE4 (in bl606a0_wifi_init)
;;     23028E34 (in bl606a0_wifi_init)
;;     2303A75A (in blemesh_rpl_clr)
;;     2303A776 (in fault_clear)
;;     2303A7F0 (in blemesh_seg_send)
;;     2303A8FE (in blemesh_net_send)
;;     2303ABF6 (in blemesh_fault_set)
;;     2303AC52 (in blemesh_fault_set)
;;     2303AF92 (in send_friend_poll)
;;     2303B078 (in clear_friendship)
;;     2303B340 (in sub_update)
;;     2303B506 (in send_friend_req.constprop.8)
;;     2303C77A (in bt_mesh_model_publish)
;;     2303C8C8 (in mod_publish)
;;     2303CCF6 (in bt_mesh_adv_create_from_pool)
;;     2303E80E (in send_mod_pub_status.isra.7)
;;     2303FA60 (in bt_mesh_app_key_del)
;;     23040618 (in bt_mesh_subnet_del)
;;     23040714 (in bt_mesh_cfg_reset)
;;     23041CCA (in bt_mesh_reset)
;;     23041D04 (in bt_mesh_reset)
;;     230422E0 (in friend_cred_clear)
;;     230424FC (in bt_mesh_net_create)
;;     2304269E (in bt_mesh_rpl_reset)
;;     23042760 (in bt_mesh_net_iv_update)
;;     230430BE (in bt_mesh_net_recv)
;;     2304380E (in reset_state)
;;     23043E5C (in prov_start)
;;     23043F16 (in prov_start)
;;     23043FA2 (in prov_start)
;;     23044D26 (in proxy_connected)
;;     23044D66 (in proxy_send)
;;     23044D9C (in proxy_send)
;;     230450DC (in proxy_complete_pdu)
;;     230450EE (in proxy_complete_pdu)
;;     23045880 (in bt_mesh_proxy_adv_start)
;;     23046A56 (in send_ack)
;;     23047280 (in bt_mesh_rx_reset)
;;     23047332 (in bt_mesh_heartbeat_send)
;;     23047464 (in send_friend_clear)
;;     23047830 (in friend_clear)
;;     23049C82 (in _set)
;;     23049CB2 (in bl_find_valid_queued_entry)
;;     23049F9A (in bl_handle_queued_msg)
;;     2304A000 (in bl_onchiphci_interface_init)
;;     2304A608 (in bt_conn_le_start_encryption)
;;     2304AA4E (in bt_conn_add_le)
;;     2304B26A (in bt_conn_le_conn_update)
;;     2304C06C (in sc_ccc_cfg_write)
;;     2304CB9C (in update_ccc)
;;     2304EA18 (in hci_id_add)
;;     2304EBF0 (in set_ad)
;;     2304F3A4 (in start_le_scan)
;;     2304F68A (in le_adv_report)
;;     2304F992 (in le_conn_param_req)
;;     2305095E (in bt_le_adv_start_internal)
;;     23050D2A (in bt_set_tx_pwr)
;;     2305110A (in l2cap_chan_tx_init)
;;     23052490 (in bt_uuid_to_str)
;;     230528C0 (in smp_f5)
;;     23052EF8 (in bt_smp_disconnected)
;;     2305322C (in compute_and_send_master_dhcheck)
;;     230532E0 (in compute_and_check_and_send_slave_dhcheck)
;;     230533F6 (in smp_dhkey_check)
;;     230536B2 (in bt_smp_distribute_keys)
;;     230538F2 (in smp_init)
;;     2305420A (in smp_c1)
;;     23054AB8 (in smp_pairing_random)
;;     23054AC2 (in smp_pairing_random)
;;     23054D66 (in bt_smp_request_ltk)
;;     23054DE4 (in bt_smp_request_ltk)
;;     23054E48 (in bt_smp_request_ltk)
;;     2305549E (in bt_smp_update_keys)
;;     230554B8 (in bt_smp_update_keys)
;;     230558DA (in bt_keys_clear)
;;     23055AC8 (in write_func)
;;     23055D66 (in ble_connect)
;;     2305609A (in discover_func)
;;     230564E6 (in read_func)
;;     23056506 (in read_func)
;;     230569A0 (in device_found)
;;     23056ED2 (in ble_tp_notify_task)
;;     23056F14 (in ble_tp_notify_task)
;;     230571B6 (in bt_rpa_irk_matches)
;;     23057754 (in att_req_destroy)
;;     23057EE6 (in bt_att_accept)
;;     2305869C (in att_read_group_req)
;;     23058762 (in att_read_mult_req)
;;     2305881E (in att_read_rsp)
;;     23058950 (in att_read_type_req)
;;     23058A86 (in att_find_type_req)
;;     23058B26 (in att_find_info_req)
;;     23058BCA (in att_write_rsp.constprop.10)
;;     2305A580 (in cmd_blog_info_dump)
;;     2305A644 (in cmd_blog_info_dump)
;;     2305ABCA (in ota_tcp_cmd.part.0)
;;     2305ACDE (in ota_tcp_cmd.part.0)
;;     2305B24E (in __recv_event)
;;     2305B28E (in __recv_event)
;;     2305BA92 (in bl_ble_sync_start)
;;     2305C0D6 (in pro_trans_init)
;;     2305C762 (in cJSON_New_Item)
;;     2305D1AE (in print_array.isra.4)
;;     2305D5F6 (in print_object.isra.3)
;;     2305D600 (in print_object.isra.3)
;;     2305DBBE (in hexdump_cmd)
;;     2305DC10 (in aos_cli_init)
;;     2305DD62 (in aos_cli_printf)
;;     2305DE4E (in proc_onecmd)
;;     2305DEFE (in ls_cmd)
;;     2305DF0A (in ls_cmd)
;;     2305E032 (in ls_cmd)
;;     2305E682 (in cli_getchar)
;;     2305E744 (in cli_main_input)
;;     2305E74E (in cli_main_input)
;;     2305E758 (in cli_main_input)
;;     2305EF70 (in get_dns_request)
;;     2305F102 (in dns_server_init)
;;     2305F40C (in write_status)
;;     2305F614 (in format_sector.constprop.16)
;;     2305F620 (in format_sector.constprop.16)
;;     2305F632 (in format_sector.constprop.16)
;;     2305FF0C (in move_env)
;;     230601AC (in create_env_blob)
;;     2306025A (in create_env_blob)
;;     230602A6 (in create_env_blob)
;;     23060A54 (in ef_port_init)
;;     23060BD0 (in psm_test_cmd)
;;     23060BDA (in psm_test_cmd)
;;     23061B04 (in prvInitialiseNewStreamBuffer)
;;     23061B18 (in prvInitialiseNewStreamBuffer)
;;     23061DD4 (in vStreamBufferDelete)
;;     23061DFE (in vStreamBufferDelete)
;;     2306223A (in prvInitialiseNewTask.isra.2)
;;     2306626A (in bl_wifi_ap_info_set)
;;     230662D4 (in bl_wifi_sta_info_set)
;;     23066580 (in dev_uart_init)
;;     230665DE (in dev_uart_init)
;;     2306718A (in hal_gpio_init_from_dts)
;;     23068982 (in hal_board_cfg)
;;     2306898C (in hal_board_cfg)
;;     2306A482 (in loopset_led_trigger)
;;     2306AB3C (in lwip_sock_make_addr.isra.3)
;;     2306B3A8 (in lwip_accept)
;;     2306BD68 (in dns_send)
;;     2306C974 (in dhcp_create_msg)
;;     2306D346 (in dhcp_recv)
;;     2306DB4A (in dhcp_start)
;;     2306F168 (in ip4_output_if_opt_src)
;;     2306FA5A (in mem_calloc)
;;     2306FD90 (in netif_add)
;;     23070B34 (in raw_new)
;;     23071522 (in tcp_alloc)
;;     23075246 (in udp_new)
;;     230772D0 (in dhcp_server_recv)
;;     23077446 (in dhcp_server_start)
;;     23077724 (in iperf_server_udp)
;;     2307778E (in iperf_server_udp_recv_fn)
;;     23077A48 (in iperf_client_udp)
;;     23077AC8 (in iperf_client_udp)
;;     23077B24 (in iperf_client_udp)
;;     23077CC4 (in iperf_server)
;;     23077D50 (in iperf_server)
;;     23077F1C (in iperf_client_tcp)
;;     23078876 (in dirent_file)
;;     23078968 (in romfs_opendir)
;;     23078CF6 (in romfs_register)
;;     230790D2 (in sntp_send_request)
;;     230792D8 (in utils_sha256_init)
;;     2307AB46 (in utils_hmac_sha1_fast)
;;     2307ABA6 (in utils_hmac_sha1_fast)
;;     2307B116 (in inode_init)
;;     2307B320 (in aos_register_driver)
;;     2307B3A6 (in aos_register_fs)
;;     2307B84C (in aos_loop_init)
;;     2307BCB4 (in aos_task_new)
;;     2307BCC0 (in aos_task_new)
;;     2307BFAE (in event_open)
;;     2307C4FC (in at_key_value_set)
;;     2307CA8C (in at_server_init)
;;     2307CC40 (in at_server_notify_with_ctx)
;;     2307CF84 (in http_url_req)
;;     2307D2D6 (in cwjap_info)
;;     2307D732 (in __wifimode_set)
;;     2307D86E (in cwjap_cur)
;;     2307D880 (in cwjap_cur)
;;     2307DC3E (in domain_name_resolution)
;;     2307E0E0 (in uart_config_handler)
;;     2307E41E (in at_init)
;;     2307E440 (in at_init)
;;     2307E498 (in at_parse)
;;     2307E4AE (in at_parse)
;;     2307E550 (in at_parse)
;;     2307E55E (in at_parse)
;;     2307E652 (in at_parse)
;;     2307E6B6 (in at_parse)
;;     2307E774 (in ble_sync_mode)
;;     2307E9A2 (in ap_cfg_handler)
;;     2307EA0E (in join_ap_handler)
;;     2307EEAC (in at_join_ap)
;;     2307EEBC (in at_join_ap)
;;     2307EF7A (in at_set_ap)
;;     2307EF86 (in at_set_ap)
;;     2307F33C (in get_ip_para)
;;     2307F39C (in get_ip_para)
;;     2307F420 (in get_ip_para)
;;     2307F59E (in get_hex_para)
;;     2307F86A (in at_queue_init)
;;     2307FA0C (in create_tcp_udp_handler)
;;     2307FB8E (in close_network_handler)
;;     2307FC22 (in send_data_handler)
;;     2307FCD4 (in send_data_handler)
;;     2307FE08 (in client_ssl_config_path)
;;     2307FFA0 (in client_ssl_set_sni)
;;     2308004C (in client_ssl_set_alpn)
;;     23080954 (in tcp_accept_callback)
;;     230810AA (in bl_tcpserver)
;;     230834DA (in Sec_Eng_SHA256_Init)
;;     23084342 (in mfg_efuse_read_poweroffset)
;;     2308465E (in mfg_flash_read_poweroffset)
;;     230849EA (in bl_mtd_open)
;;     23084C90 (in bloop_init)
;;     23084D0A (in bloop_timer_init)
;;     23085DFE (in httpc_tcp_recv)
;;     23085E94 (in httpc_tcp_recv)
;;     23086126 (in httpc_init_connection_common.constprop.5)
;;     23086368 (in altcp_alloc)
;;     2308753E (in block_cipher_df)
;;     230875AC (in block_cipher_df)
;;     23087690 (in ctr_drbg_update_internal)
;;     23087726 (in mbedtls_ctr_drbg_init)
;;     2308776A (in mbedtls_ctr_drbg_reseed)
;;     230877F6 (in mbedtls_ctr_drbg_seed_entropy_len)
;;     2308787C (in mbedtls_ctr_drbg_random_with_add)
;;     23087942 (in mbedtls_entropy_init)
;;     23087FDC (in pk_get_pk_alg)
;;     2308862C (in mgf_mask)
;;     23088636 (in mgf_mask)
;;     230886C8 (in mbedtls_rsa_init)
;;     23088CDE (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23089326 (in mbedtls_rsa_rsassa_pss_sign)
;;     230894D8 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23089700 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23089A6C (in mbedtls_sha256_init)
;;     2308B6F2 (in mbedtls_ssl_session_init)
;;     2308B6FC (in mbedtls_ssl_init)
;;     2308BC08 (in ssl_handshake_init)
;;     2308BC36 (in ssl_handshake_init)
;;     2308BE5C (in mbedtls_ssl_config_init)
;;     2308C18C (in mbedtls_ssl_write_record)
;;     2308CEA8 (in mbedtls_ssl_prepare_handshake_record)
;;     2308D07A (in mbedtls_ssl_prepare_handshake_record)
;;     2308D68A (in mbedtls_ssl_write_finished)
;;     2308D6F0 (in mbedtls_ssl_write_finished)
;;     2308E8F4 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308FC40 (in mbedtls_x509_crt_init)
;;     2308FD84 (in mbedtls_x509_crt_parse_der)
;;     2308FD8E (in mbedtls_x509_crt_parse_der)
;;     2308FD98 (in mbedtls_x509_crt_parse_der)
;;     230904BC (in mycalloc)
;;     230907C4 (in mbedtls_aes_init)
;;     23091FB8 (in mbedtls_mpi_copy)
;;     23092080 (in mbedtls_mpi_lset)
;;     23092202 (in mbedtls_mpi_write_binary)
;;     23092460 (in mpi_montmul)
;;     23092D7E (in mbedtls_mpi_exp_mod)
;;     2309360E (in mbedtls_cipher_init)
;;     23093A82 (in mbedtls_cipher_setup)
;;     23093F88 (in mbedtls_debug_print_buf)
;;     2309405E (in mbedtls_debug_print_buf)
;;     2309425A (in mbedtls_debug_print_crt)
;;     23094CC4 (in mbedtls_ecp_group_init)
;;     23095488 (in ecp_mul_comb)
;;     23095A10 (in mbedtls_ecp_check_pub_priv)
;;     23095AA0 (in ecp_mod_koblitz.constprop.0)
;;     23095AF0 (in ecp_mod_koblitz.constprop.0)
;;     23095E64 (in mbedtls_gcm_init)
;;     23095EBC (in mbedtls_gcm_setkey)
;;     23096070 (in mbedtls_gcm_starts)
;;     2309607A (in mbedtls_gcm_starts)
;;     230960EE (in mbedtls_gcm_starts)
;;     23096358 (in mbedtls_gcm_finish)
;;     23096544 (in mbedtls_md_init)
;;     230966C4 (in mbedtls_md_hmac_starts)
;;     230966D2 (in mbedtls_md_hmac_starts)
;;     23096D0A (in mbedtls_pem_init)
;;     23096EA0 (in mbedtls_pem_read_buffer)
;;     23097048 (in mbedtls_md5_init)
;;     23097E60 (in mbedtls_sha1_init)
;;     2309B7D4 (in mbedtls_ssl_handshake_server_step)
;;     2309D1AA (in mbedtls_x509_dn_gets)
;;     230A4A00 (in strstr)
;;     230A6974 (in __sinit.part.0)
;;     230A69E4 (in __sinit.part.0)
;;     230A6A34 (in __sinit.part.0)
;;     230A6AD0 (in __sfmoreglue)
;;     230A6B84 (in __sfp)
memset proc
	addi	t1,zero,+0000000F
	addi	a4,a0,+00000000
	bgeu	t1,a2,00000000230A3AAC

l230A3A74:
	andi	a5,a4,+0000000F
	bne	a5,zero,00000000230A3B18

l230A3A7C:
	bne	a1,zero,00000000230A3B00

l230A3A80:
	andi	a3,a2,-00000010
	andi	a2,a2,+0000000F
	add	a3,a3,a4

l230A3A8C:
	sw	a1,a4,+00000000
	sw	a1,a4,+00000004
	sw	a1,a4,+00000008
	sw	a1,a4,+0000000C
	addi	a4,a4,+00000010
	bltu	a4,a3,00000000230A3A8C

l230A3AA4:
	bne	a2,zero,00000000230A3AAC

l230A3AA8:
	jalr	zero,ra,+00000000

l230A3AAC:
	sub	a3,t1,a2
	slli	a3,a3,00000002
	auipc	t0,00000000
	add	a3,a3,t0

;; fn230A3ABC: 230A3ABC
;;   Called from:
;;     230A3B24 (in memset)
fn230A3ABC proc
	jalr	zero,a3,+0000000C

;; fn230A3AC0: 230A3AC0
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AC0 proc
	sb	a1,a4,+0000000E

;; fn230A3AC4: 230A3AC4
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AC4 proc
	sb	a1,a4,+0000000D

;; fn230A3AC8: 230A3AC8
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AC8 proc
	sb	a1,a4,+0000000C

;; fn230A3ACC: 230A3ACC
;;   Called from:
;;     230A3B24 (in memset)
fn230A3ACC proc
	sb	a1,a4,+0000000B

;; fn230A3AD0: 230A3AD0
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AD0 proc
	sb	a1,a4,+0000000A

;; fn230A3AD4: 230A3AD4
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AD4 proc
	sb	a1,a4,+00000009

;; fn230A3AD8: 230A3AD8
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AD8 proc
	sb	a1,a4,+00000008

;; fn230A3ADC: 230A3ADC
;;   Called from:
;;     230A3B24 (in memset)
fn230A3ADC proc
	sb	a1,a4,+00000007

;; fn230A3AE0: 230A3AE0
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AE0 proc
	sb	a1,a4,+00000006

;; fn230A3AE4: 230A3AE4
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AE4 proc
	sb	a1,a4,+00000005

;; fn230A3AE8: 230A3AE8
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AE8 proc
	sb	a1,a4,+00000004

;; fn230A3AEC: 230A3AEC
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AEC proc
	sb	a1,a4,+00000003

;; fn230A3AF0: 230A3AF0
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AF0 proc
	sb	a1,a4,+00000002

;; fn230A3AF4: 230A3AF4
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AF4 proc
	sb	a1,a4,+00000001

;; fn230A3AF8: 230A3AF8
;;   Called from:
;;     230A3B24 (in memset)
fn230A3AF8 proc
	sb	a1,a4,+00000000
	jalr	zero,ra,+00000000

l230A3B00:
	andi	a1,a1,+000000FF
	slli	a3,a1,00000008
	or	a1,a1,a3
	slli	a3,a1,00000010
	or	a1,a1,a3
	jal	zero,00000000230A3A80

l230A3B18:
	slli	a3,a5,00000002
	auipc	t0,00000000
	add	a3,a3,t0
	addi	t0,ra,+00000000
	jalr	ra,a3,-00000060
	addi	ra,t0,+00000000
	addi	a5,a5,-00000010
	sub	a4,a4,a5
	add	a2,a2,a5
	bgeu	t1,a2,00000000230A3AAC

l230A3B40:
	jal	zero,00000000230A3A7C

;; _init_signal_r.part.0: 230A3B44
;;   Called from:
;;     230A3BA0 (in _init_signal_r)
;;     230A3C10 (in _signal_r)
;;     230A3D80 (in __sigtramp_r)
;;     230A3E08 (in _init_signal)
_init_signal_r.part.0 proc
	addi	sp,sp,-00000010
	addi	a1,zero,+00000080
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	s0,a0,+00000000
	jal	ra,00000000230A7B6C
	sw	a0,s0,+000002DC
	beq	a0,zero,00000000230A3B88

l230A3B64:
	addi	a5,a0,+00000080

l230A3B68:
	sw	zero,a0,+00000000
	addi	a0,a0,+00000004
	bne	a0,a5,00000000230A3B68

l230A3B74:
	addi	a0,zero,+00000000

l230A3B78:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A3B88:
	addi	a0,zero,-00000001
	jal	zero,00000000230A3B78

;; _init_signal_r: 230A3B90
_init_signal_r proc
	lw	a5,a0,+000002DC
	beq	a5,zero,00000000230A3BA0

l230A3B98:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A3BA0:
	jal	zero,00000000230A3B44

;; _signal_r: 230A3BA4
;;   Called from:
;;     230A3DE8 (in signal)
_signal_r proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	addi	a4,zero,+0000001F
	addi	s0,a0,+00000000
	bltu	a4,a1,00000000230A3BE8

l230A3BBC:
	lw	a5,a0,+000002DC
	beq	a5,zero,00000000230A3C08

l230A3BC4:
	slli	a1,a1,00000002
	add	a1,a5,a1
	lw	a5,a1,+00000000
	sw	a2,a1,+00000000

l230A3BD4:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,a5,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A3BE8:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a4,zero,+00000016
	sw	a4,a0,+00000000
	addi	a5,zero,-00000001
	addi	a0,a5,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A3C08:
	sw	a2,sp,+0000000C
	sw	a1,sp,+00000008
	jal	ra,00000000230A3B44
	addi	a5,zero,-00000001
	bne	a0,zero,00000000230A3BD4

l230A3C1C:
	lw	a5,s0,+000002DC
	lw	a2,sp,+0000000C
	lw	a1,sp,+00000008
	jal	zero,00000000230A3BC4

;; _raise_r: 230A3C2C
;;   Called from:
;;     230A3DD0 (in raise)
_raise_r proc
	addi	a5,zero,+0000001F
	bltu	a5,a1,00000000230A3CF8

l230A3C34:
	lw	a5,a0,+000002DC
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	addi	s1,a0,+00000000
	addi	s0,a1,+00000000
	beq	a5,zero,00000000230A3C98

l230A3C54:
	slli	a4,a1,00000002
	add	a5,a5,a4
	lw	a4,a5,+00000000
	beq	a4,zero,00000000230A3C98

l230A3C64:
	addi	a3,zero,+00000001
	beq	a4,a3,00000000230A3CE0

l230A3C6C:
	addi	a3,zero,-00000001
	beq	a4,a3,00000000230A3CC0

l230A3C74:
	addi	a0,a1,+00000000
	sw	zero,a5,+00000000
	jalr	ra,a4,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	addi	a0,zero,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A3C98:
	addi	a0,s1,+00000000
	jal	ra,00000000230A3E84
	addi	a2,s0,+00000000
	lw	s0,sp,+00000008
	lw	ra,sp,+0000000C
	addi	a1,a0,+00000000
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jal	zero,00000000230A3E20

l230A3CC0:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a5,zero,+00000016
	sw	a5,a0,+00000000
	lw	s1,sp,+00000004
	addi	a0,zero,+00000001
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A3CE0:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	addi	a0,zero,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A3CF8:
	addi	a5,zero,+00000016
	sw	a5,a0,+00000000
	addi	a0,zero,-00000001
	jalr	zero,ra,+00000000

;; __sigtramp_r: 230A3D08
;;   Called from:
;;     230A3E1C (in __sigtramp)
__sigtramp_r proc
	addi	a5,zero,+0000001F
	bltu	a5,a1,00000000230A3DB8

l230A3D10:
	lw	a5,a0,+000002DC
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	addi	s0,a0,+00000000
	beq	a5,zero,00000000230A3D7C

l230A3D28:
	slli	a4,a1,00000002
	add	a5,a5,a4
	lw	a4,a5,+00000000
	beq	a4,zero,00000000230A3D68

l230A3D38:
	addi	a3,zero,-00000001
	beq	a4,a3,00000000230A3DA8

l230A3D40:
	addi	a3,zero,+00000001
	beq	a4,a3,00000000230A3D94

l230A3D48:
	addi	a0,a1,+00000000
	sw	zero,a5,+00000000
	jalr	ra,a4,+00000000
	addi	a0,zero,+00000000

l230A3D58:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A3D68:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,zero,+00000001
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A3D7C:
	sw	a1,sp,+0000000C
	jal	ra,00000000230A3B44
	bne	a0,zero,00000000230A3DB0

l230A3D88:
	lw	a5,s0,+000002DC
	lw	a1,sp,+0000000C
	jal	zero,00000000230A3D28

l230A3D94:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,zero,+00000003
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A3DA8:
	addi	a0,zero,+00000002
	jal	zero,00000000230A3D58

l230A3DB0:
	addi	a0,zero,-00000001
	jal	zero,00000000230A3D58

l230A3DB8:
	addi	a0,zero,-00000001
	jalr	zero,ra,+00000000

;; raise: 230A3DC0
;;   Called from:
;;     230A35A0 (in abort)
raise proc
	auipc	a5,0001EF6B
	addi	a5,a5,-000000C4
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A3C2C

;; signal: 230A3DD4
signal proc
	auipc	a5,0001EF6B
	addi	a5,a5,-000000D8
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A3BA4

;; _init_signal: 230A3DEC
_init_signal proc
	auipc	a5,0001EF6B
	addi	a5,a5,-000000F0
	lw	a0,a5,+00000000
	lw	a5,a0,+000002DC
	beq	a5,zero,00000000230A3E08

l230A3E00:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A3E08:
	jal	zero,00000000230A3B44

;; __sigtramp: 230A3E0C
__sigtramp proc
	auipc	a5,0001EF6B
	addi	a5,a5,-00000110
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A3D08

;; _kill_r: 230A3E20
;;   Called from:
;;     230A3CBC (in _raise_r)
_kill_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF83
	sw	zero,a5,+0000096C
	jal	ra,00000000230A93DC
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A3E60

l230A3E50:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A3E60:
	auipc	a5,0001EF83
	addi	a5,a5,-000006B8
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A3E50

l230A3E70:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _getpid_r: 230A3E84
;;   Called from:
;;     230A3C9C (in _raise_r)
_getpid_r proc
	jal	zero,00000000230A9394

;; strchr: 230A3E88
;;   Called from:
;;     23000730 (in event_cb_wifi_event)
;;     2305CB06 (in print_string_ptr)
;;     2305DDF8 (in proc_onecmd)
;;     23077544 (in dhcpd_start)
;;     2307756C (in dhcpd_start)
;;     23077578 (in dhcpd_start)
;;     230787C0 (in dirent_file)
;;     230A44E0 (in strrchr)
;;     230A4500 (in strrchr)
;;     230A4B54 (in strstr)
strchr proc
	andi	a3,a1,+000000FF
	andi	a5,a0,+00000003
	beq	a3,zero,00000000230A3F68

l230A3E94:
	beq	a5,zero,00000000230A3EC0

l230A3E98:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A3F60

l230A3EA0:
	bne	a3,a5,00000000230A3EB4

l230A3EA4:
	jal	zero,00000000230A3FF0

l230A3EA8:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A3F60

l230A3EB0:
	beq	a5,a3,00000000230A3F64

l230A3EB4:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,00000000230A3EA8

l230A3EC0:
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
	bne	a5,zero,00000000230A3F40

l230A3F10:
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
	beq	a5,zero,00000000230A3F10

l230A3F40:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A3F60

l230A3F48:
	bne	a3,a5,00000000230A3F54

l230A3F4C:
	jal	zero,00000000230A3F64

l230A3F50:
	beq	a5,a3,00000000230A3FE8

l230A3F54:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,00000000230A3F50

l230A3F60:
	addi	a0,zero,+00000000

l230A3F64:
	jalr	zero,ra,+00000000

l230A3F68:
	beq	a5,zero,00000000230A3F8C

l230A3F6C:
	lbu	a5,a0,+00000000
	bne	a5,zero,00000000230A3F80

l230A3F74:
	jal	zero,00000000230A3FEC

l230A3F78:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A3F64

l230A3F80:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,00000000230A3F78

l230A3F8C:
	lw	a4,a0,+00000000
	lui	a2,000FEFF0
	addi	a2,a2,-00000101
	add	a5,a4,a2
	lui	a3,00080808
	xori	a4,a4,-00000001
	and	a5,a5,a4
	addi	a3,a3,+00000080
	and	a5,a5,a3
	bne	a5,zero,00000000230A3FD0

l230A3FB4:
	addi	a0,a0,+00000004
	lw	a4,a0,+00000000
	add	a5,a4,a2
	xori	a4,a4,-00000001
	and	a5,a5,a4
	and	a5,a5,a3
	beq	a5,zero,00000000230A3FB4

l230A3FD0:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A3F64

l230A3FD8:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,00000000230A3FD8

l230A3FE4:
	jalr	zero,ra,+00000000

l230A3FE8:
	jalr	zero,ra,+00000000

l230A3FEC:
	jalr	zero,ra,+00000000

l230A3FF0:
	jalr	zero,ra,+00000000

;; strcmp: 230A3FF4
;;   Called from:
;;     2302256A (in bl_msg_update_channel_cfg)
;;     23024F4E (in stateGlobalGuard_scan_beacon)
;;     230270A4 (in cmd_wifi_cfg)
;;     230270B0 (in cmd_wifi_cfg)
;;     230270BC (in cmd_wifi_cfg)
;;     230270C8 (in cmd_wifi_cfg)
;;     230501AE (in bt_set_name)
;;     2305A62E (in cmd_blog_info_dump)
;;     2305A686 (in cmd_blog_info_dump)
;;     2305A740 (in cmd_blog_set_level)
;;     2305A750 (in cmd_blog_set_level)
;;     2305A762 (in cmd_blog_set_level)
;;     2305A774 (in cmd_blog_set_level)
;;     2305A786 (in cmd_blog_set_level)
;;     2305A798 (in cmd_blog_set_level)
;;     2305A7AA (in cmd_blog_set_level)
;;     2305A864 (in cmd_blog_set_level)
;;     2305DE42 (in proc_onecmd)
;;     2305DF20 (in ls_cmd)
;;     2305E0CC (in ls_cmd)
;;     2305E302 (in echo_cmd)
;;     2305E334 (in echo_cmd)
;;     23067726 (in hal_boot2_partition_bus_addr)
;;     2306779C (in hal_boot2_partition_bus_addr)
;;     2306790C (in hal_boot2_partition_addr)
;;     2307B19A (in inode_open)
;;     2307C50A (in at_key_value_set)
;;     2307C534 (in at_key_value_set)
;;     2307C556 (in at_key_value_set)
;;     2307C566 (in at_key_value_set)
;;     2307C5AC (in at_key_value_set)
;;     2307C5E4 (in at_key_value_set)
;;     2307C5F4 (in at_key_value_set)
;;     2307C604 (in at_key_value_set)
;;     2307C616 (in at_key_value_set)
;;     2307C628 (in at_key_value_set)
;;     2307C658 (in at_key_value_get)
;;     2307C676 (in at_key_value_get)
;;     2307C68C (in at_key_value_get)
;;     2307C6A8 (in at_key_value_get)
;;     2307C6BA (in at_key_value_get)
;;     2307C6CE (in at_key_value_get)
;;     2307C6E6 (in at_key_value_get)
;;     2307C704 (in at_key_value_get)
;;     2307C71E (in at_key_value_get)
;;     2307C72E (in at_key_value_get)
;;     2307C73E (in at_key_value_get)
;;     2307C74E (in at_key_value_get)
;;     2307C75E (in at_key_value_get)
;;     2307C76E (in at_key_value_get)
;;     2307E08E (in scan_handler)
;;     2307E09E (in scan_handler)
;;     2307E0B4 (in scan_handler)
;;     2307E5B6 (in at_parse)
;;     2307E6E8 (in at_parse)
;;     2307E82E (in ble_sync_mode)
;;     2307E852 (in ble_sync_mode)
;;     2307E860 (in ble_sync_mode)
;;     2307FAC8 (in create_tcp_udp_handler)
;;     2307FB48 (in create_tcp_udp_handler)
;;     2307FB58 (in create_tcp_udp_handler)
;;     23080216 (in at_scan)
;;     23080226 (in at_scan)
;;     23080238 (in at_scan)
;;     23080248 (in at_scan)
;;     23080C30 (in bl_cipstart)
;;     23080C5C (in bl_cipstart)
;;     23080C6E (in bl_cipstart)
;;     230A78FC (in _setlocale_r)
;;     230A7934 (in _setlocale_r)
;;     230A7948 (in _setlocale_r)
strcmp proc
	or	a4,a0,a1
	addi	t2,zero,-00000001
	andi	a4,a4,+00000003
	bne	a4,zero,00000000230A4100

l230A4004:
	lui	a5,0007F7F8
	addi	a5,a5,-00000081

l230A400C:
	lw	a2,a0,+00000000
	lw	a3,a1,+00000000
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,00000000230A4128

l230A4028:
	bne	a2,a3,00000000230A40B4

l230A402C:
	lw	a2,a0,+00000004
	lw	a3,a1,+00000004
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,00000000230A4120

l230A4048:
	bne	a2,a3,00000000230A40B4

l230A404C:
	lw	a2,a0,+00000008
	lw	a3,a1,+00000008
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,00000000230A4134

l230A4068:
	bne	a2,a3,00000000230A40B4

l230A406C:
	lw	a2,a0,+0000000C
	lw	a3,a1,+0000000C
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,00000000230A4148

l230A4088:
	bne	a2,a3,00000000230A40B4

l230A408C:
	lw	a2,a0,+00000010
	lw	a3,a1,+00000010
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,00000000230A415C

l230A40A8:
	addi	a0,a0,+00000014
	addi	a1,a1,+00000014
	beq	a2,a3,00000000230A400C

l230A40B4:
	slli	a4,a2,00000010
	slli	a5,a3,00000010
	bne	a4,a5,00000000230A40D8

l230A40C0:
	srli	a4,a2,00000010
	srli	a5,a3,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,00000000230A40F0

l230A40D4:
	jalr	zero,ra,+00000000

l230A40D8:
	srli	a4,a4,00000010
	srli	a5,a5,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,00000000230A40F0

l230A40EC:
	jalr	zero,ra,+00000000

l230A40F0:
	andi	a4,a4,+000000FF
	andi	a5,a5,+000000FF
	sub	a0,a4,a5
	jalr	zero,ra,+00000000

l230A4100:
	lbu	a2,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a0,a0,+00000001
	addi	a1,a1,+00000001
	bne	a2,a3,00000000230A4118

l230A4114:
	bne	a2,zero,00000000230A4100

l230A4118:
	sub	a0,a2,a3
	jalr	zero,ra,+00000000

l230A4120:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004

l230A4128:
	bne	a2,a3,00000000230A4100

l230A412C:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A4134:
	addi	a0,a0,+00000008
	addi	a1,a1,+00000008
	bne	a2,a3,00000000230A4100

l230A4140:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A4148:
	addi	a0,a0,+0000000C
	addi	a1,a1,+0000000C
	bne	a2,a3,00000000230A4100

l230A4154:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A415C:
	addi	a0,a0,+00000010
	addi	a1,a1,+00000010
	bne	a2,a3,00000000230A4100

l230A4168:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; strcpy: 230A4170
;;   Called from:
;;     230003F8 (in wifiprov_wifi_state_get)
;;     23000406 (in wifiprov_wifi_state_get)
;;     23000414 (in wifiprov_wifi_state_get)
;;     2304961E (in bt_addr_le_str_real)
;;     2305692E (in bt_addr_le_to_str.constprop.14)
;;     2305A666 (in cmd_blog_info_dump)
;;     2305C8A6 (in print_number)
;;     2305CA6E (in print_string_ptr)
;;     2305CAC4 (in print_string_ptr)
;;     2305D0B8 (in print_array.isra.4)
;;     2305D74A (in print_object.isra.3)
;;     2305DCBE (in ps_cmd)
;;     2305DCEE (in ps_cmd)
;;     2305DD7C (in aos_cli_printf)
;;     23063700 (in vTaskList)
;;     2306505A (in bl_chip_memory_ram)
;;     23065080 (in bl_chip_memory_ram)
;;     230650A4 (in bl_chip_memory_ram)
;;     230775F4 (in iperf_server_udp_entry)
;;     23077628 (in iperf_client_udp_entry)
;;     2307765C (in iperf_server_entry)
;;     23077690 (in iperf_client_tcp_entry)
;;     2307C70E (in at_key_value_get)
;;     2307CCA4 (in cipsta_ip_get)
;;     2307CCB2 (in cipsta_ip_get)
;;     2307CCC0 (in cipsta_ip_get)
;;     2307CCD6 (in cipsta_ip_get)
;;     2307CCE4 (in cipsta_ip_get)
;;     2307CFDC (in http_url_req)
;;     2307D108 (in cb_altcp_recv_fn)
;;     2307D81C (in set_apcfg)
;;     2307EE76 (in at_join_ap)
;;     2307EE80 (in at_join_ap)
;;     2307EEC8 (in at_join_ap)
;;     2307EED4 (in at_join_ap)
;;     23081474 (in bl_cipsslcsni)
;;     23084B7A (in bl_mtd_info)
strcpy proc
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,00000000230A41FC

l230A417C:
	lw	a4,a1,+00000000
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	addi	a2,zero,-00000001
	bne	a5,a2,00000000230A4218

l230A41A0:
	addi	a2,a0,+00000000
	addi	a6,zero,-00000001

l230A41A8:
	addi	a2,a2,+00000004
	addi	a1,a1,+00000004
	sw	a4,a2,+00000FFC
	lw	a4,a1,+00000000
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	beq	a5,a6,00000000230A41A8

l230A41CC:
	lbu	a5,a1,+00000000
	lbu	a4,a1,+00000001
	lbu	a3,a1,+00000002
	sb	a5,a2,+00000000
	beq	a5,zero,00000000230A41F0

l230A41E0:
	sb	a4,a2,+00000001
	beq	a4,zero,00000000230A41F0

l230A41E8:
	sb	a3,a2,+00000002
	bne	a3,zero,00000000230A41F4

l230A41F0:
	jalr	zero,ra,+00000000

l230A41F4:
	sb	zero,a2,+00000003
	jalr	zero,ra,+00000000

l230A41FC:
	addi	a5,a0,+00000000

l230A4200:
	lbu	a4,a1,+00000000
	addi	a5,a5,+00000001
	addi	a1,a1,+00000001
	sb	a4,a5,+00000FFF
	bne	a4,zero,00000000230A4200

l230A4214:
	jalr	zero,ra,+00000000

l230A4218:
	addi	a2,a0,+00000000
	jal	zero,00000000230A41CC

;; strlen: 230A4220
;;   Called from:
;;     23000686 (in event_cb_wifi_event)
;;     2300068E (in event_cb_wifi_event)
;;     2300074A (in event_cb_wifi_event)
;;     23000752 (in event_cb_wifi_event)
;;     23000F4A (in app_delayed_action_bleadv)
;;     23000F60 (in app_delayed_action_bleadv)
;;     23001040 (in app_delayed_action_bleadvstop)
;;     2300853A (in mm_sta_add)
;;     23008578 (in mm_sta_add)
;;     230179B6 (in set_psk)
;;     23017B9A (in pmkCacheFindPSK)
;;     2301898C (in KeyMgmtInit)
;;     23018F46 (in GenerateGTK_internal)
;;     230194F8 (in cm_SetComData)
;;     2302186C (in ap_setpsk)
;;     23021884 (in ap_setpsk)
;;     230218CE (in ap_resetConfiguration)
;;     23022F0A (in bl_send_apm_start_req)
;;     23022F1E (in bl_send_apm_start_req)
;;     23022F30 (in bl_send_apm_start_req)
;;     23022F42 (in bl_send_apm_start_req)
;;     23024ED8 (in stateGlobalGuard_scan_beacon)
;;     23025CA2 (in wifi_mgmr_api_connect)
;;     23025D16 (in wifi_mgmr_api_connect)
;;     23025D4A (in wifi_mgmr_api_connect)
;;     2302669C (in wifi_mgmr_api_ap_start)
;;     2302673A (in wifi_mgmr_api_ap_start)
;;     23026E6A (in wifi_ap_sta_delete_cmd)
;;     23027986 (in cb_scan_item_parse)
;;     23027C10 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027C38 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027CF4 (in wifi_mgmr_sta_ssid_set)
;;     23027CFC (in wifi_mgmr_sta_ssid_set)
;;     23027D26 (in wifi_mgmr_sta_psk_set)
;;     23027D2E (in wifi_mgmr_sta_psk_set)
;;     230280DC (in wifi_mgmr_scan_ap_all)
;;     2303A9F4 (in blemesh_input_str)
;;     2303AA8C (in blemesh_input_num)
;;     2303ABA2 (in blemesh_fault_set)
;;     2303ABFC (in blemesh_fault_set)
;;     2303AC06 (in blemesh_fault_set)
;;     2303AC58 (in blemesh_fault_set)
;;     2303D074 (in beacon_send)
;;     2303D0E0 (in beacon_send)
;;     23040DB8 (in bt_mesh_s1)
;;     23040DF4 (in bt_mesh_k1)
;;     23045718 (in bt_mesh_proxy_adv_start)
;;     2304574A (in bt_mesh_proxy_adv_start)
;;     2304BECE (in read_name)
;;     2304ED0E (in le_adv_update)
;;     23050194 (in bt_set_name)
;;     230501E2 (in bt_set_name)
;;     23055EF0 (in ble_start_advertise)
;;     23056850 (in ble_set_device_name)
;;     23056858 (in ble_set_device_name)
;;     23056888 (in ble_set_device_name)
;;     2305906C (in fdt_get_name)
;;     23059138 (in fdt_subnode_offset)
;;     2305927E (in fdt_getprop)
;;     23059754 (in utilfdt_print_data)
;;     23059B44 (in tc_blfdtdump)
;;     2305A5F6 (in cmd_blog_info_dump)
;;     2305A63A (in cmd_blog_info_dump)
;;     2305A7C8 (in cmd_blog_set_level)
;;     2305A992 (in blog_hexdump_out)
;;     2305A9A4 (in blog_hexdump_out)
;;     2305C816 (in cJSON_strdup)
;;     2305C858 (in update)
;;     2305D206 (in print_array.isra.4)
;;     2305D24C (in print_array.isra.4)
;;     2305D69C (in print_object.isra.3)
;;     2305D6A4 (in print_object.isra.3)
;;     2305D716 (in print_object.isra.3)
;;     2305D752 (in print_object.isra.3)
;;     2305DC68 (in cli_putstr)
;;     2305DCC4 (in ps_cmd)
;;     2305DCD0 (in ps_cmd)
;;     2305DCF6 (in ps_cmd)
;;     2305DD84 (in aos_cli_printf)
;;     2305DFD6 (in ls_cmd)
;;     2305E04A (in ls_cmd)
;;     2305E05C (in ls_cmd)
;;     2305E06A (in ls_cmd)
;;     2305E072 (in ls_cmd)
;;     2305E726 (in cli_main_input)
;;     2305E964 (in cli_main_input)
;;     2305EAF0 (in cli_main_input)
;;     2305EC22 (in cli_main_input)
;;     2305EDC6 (in cli_main_input)
;;     2305F2FC (in find_env_cb)
;;     2305FD18 (in find_env)
;;     2305FE9A (in del_env)
;;     23060172 (in create_env_blob)
;;     230601BC (in create_env_blob)
;;     23060378 (in ef_get_env_blob)
;;     23060396 (in ef_get_env_blob)
;;     23060486 (in ef_del_env)
;;     23060558 (in ef_set_env_blob)
;;     23060576 (in ef_set_env_blob)
;;     230605F0 (in ef_set_env_blob)
;;     23060674 (in ef_set_env)
;;     23060766 (in ef_env_set_default)
;;     23063706 (in vTaskList)
;;     23063740 (in vTaskList)
;;     23067E30 (in hal_board_cfg)
;;     230681E4 (in hal_board_cfg)
;;     23068992 (in hal_board_cfg)
;;     2306BD44 (in dns_send)
;;     2306C3E4 (in dns_gethostbyname_addrtype)
;;     2306CDC4 (in dhcp_option_hostname.isra.0)
;;     230775E6 (in iperf_server_udp_entry)
;;     2307761A (in iperf_client_udp_entry)
;;     2307764E (in iperf_server_entry)
;;     23077682 (in iperf_client_tcp_entry)
;;     230782D8 (in romfs_ioctl)
;;     23078320 (in romfs_read)
;;     230783A8 (in file_info)
;;     230783C8 (in file_info)
;;     230783E6 (in file_info)
;;     230783FC (in file_info)
;;     23078440 (in file_info)
;;     23078454 (in file_info)
;;     230786E2 (in dirent_file)
;;     230786EC (in dirent_file)
;;     230786F8 (in dirent_file)
;;     23078748 (in dirent_file)
;;     230787E4 (in dirent_file)
;;     23078986 (in romfs_opendir)
;;     23078B04 (in romfs_open)
;;     23078B0E (in romfs_open)
;;     23078D44 (in romfs_register)
;;     2307A964 (in Bl_F_fast.constprop.0)
;;     2307AA24 (in utils_wifi_psk_cal_fast_bin)
;;     2307ACA4 (in aos_open)
;;     2307B1A4 (in inode_open)
;;     2307B1B6 (in inode_open)
;;     2307B276 (in inode_reserve)
;;     2307D0F8 (in cb_altcp_recv_fn)
;;     2307D5AC (in scan)
;;     2307D7DE (in set_apcfg)
;;     2307D88A (in cwjap_cur)
;;     2307D8A0 (in cwjap_cur)
;;     2307EE90 (in at_join_ap)
;;     2307EF8C (in at_set_ap)
;;     2307EF9C (in at_set_ap)
;;     2307FFF4 (in client_ssl_set_sni)
;;     230800B6 (in client_ssl_set_alpn)
;;     2308011C (in client_ssl_set_alpn)
;;     230801A4 (in client_ssl_set_alpn)
;;     23081424 (in bl_cipsslcsni)
;;     23084116 (in bflb_platform_printf)
;;     2308607E (in httpc_create_request_string.constprop.6)
;;     2308ADE8 (in tls_prf_sha256)
;;     2308ADFA (in tls_prf_sha256)
;;     2308B75E (in mbedtls_ssl_set_hostname)
;;     2308B7CE (in mbedtls_ssl_conf_alpn_protocols)
;;     2308BE12 (in mbedtls_ssl_free)
;;     2308EDAA (in x509_check_wildcard)
;;     2308FA88 (in mbedtls_x509_crt_verify_with_profile)
;;     23096D72 (in mbedtls_pem_read_buffer)
;;     23096D9E (in mbedtls_pem_read_buffer)
;;     23099B3C (in mbedtls_ssl_handshake_client_step)
;;     23099F5A (in mbedtls_ssl_handshake_client_step)
;;     23099FB2 (in mbedtls_ssl_handshake_client_step)
;;     2309BE74 (in mbedtls_ssl_handshake_server_step)
;;     230A49CC (in strstr)
strlen proc
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,00000000230A4280

l230A422C:
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	addi	a1,zero,-00000001

l230A4238:
	addi	a4,a4,+00000004
	lw	a2,a4,-00000004
	and	a5,a2,a3
	add	a5,a5,a3
	or	a5,a5,a2
	or	a5,a5,a3
	beq	a5,a1,00000000230A4238

l230A4254:
	lbu	a3,a4,-00000004
	sub	a5,a4,a0
	lbu	a2,a4,-00000003
	lbu	a0,a4,-00000002
	beq	a3,zero,00000000230A42A4

l230A4268:
	beq	a2,zero,00000000230A429C

l230A426C:
	sltu	a0,zero,a0
	add	a0,a0,a5
	addi	a0,a0,-00000002
	jalr	zero,ra,+00000000

l230A427C:
	beq	a3,zero,00000000230A422C

l230A4280:
	lbu	a5,a4,+00000000
	addi	a4,a4,+00000001
	andi	a3,a4,+00000003
	bne	a5,zero,00000000230A427C

l230A4290:
	sub	a4,a4,a0
	addi	a0,a4,-00000001
	jalr	zero,ra,+00000000

l230A429C:
	addi	a0,a5,-00000003
	jalr	zero,ra,+00000000

l230A42A4:
	addi	a0,a5,-00000004
	jalr	zero,ra,+00000000

;; strncmp: 230A42AC
;;   Called from:
;;     2305CCA4 (in parse_value)
;;     2305CCC0 (in parse_value)
;;     2305CCF8 (in parse_value)
;;     2305DE34 (in proc_onecmd)
;;     2305EB60 (in cli_main_input)
;;     2305F32E (in find_env_cb)
;;     2305FD60 (in find_env)
;;     23078B1A (in romfs_open)
;;     2307B1AE (in inode_open)
strncmp proc
	beq	a2,zero,00000000230A4380

l230A42B0:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,00000000230A4338

l230A42BC:
	addi	a5,zero,+00000003
	bgeu	a5,a2,00000000230A4338

l230A42C4:
	lw	a5,a0,+00000000
	lw	a4,a1,+00000000
	bne	a5,a4,00000000230A4388

l230A42D0:
	addi	a2,a2,-00000004
	beq	a2,zero,00000000230A4380

l230A42D8:
	lui	t1,000FEFF0
	addi	t1,t1,-00000101
	add	a4,a5,t1
	lui	a7,00080808
	xori	a5,a5,-00000001
	and	a5,a4,a5
	addi	a7,a7,+00000080
	and	a5,a5,a7
	bne	a5,zero,00000000230A4380

l230A42FC:
	addi	t3,zero,+00000003
	jal	zero,00000000230A432C

l230A4304:
	lw	a4,a0,+00000000
	lw	a3,a1,+00000000
	add	a5,a4,t1
	xori	a6,a4,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a4,a3,00000000230A4388

l230A4320:
	addi	a2,a2,-00000004
	beq	a2,zero,00000000230A4380

l230A4328:
	bne	a5,zero,00000000230A4380

l230A432C:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	t3,a2,00000000230A4304

l230A4338:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	bne	a3,a4,00000000230A4378

l230A4348:
	beq	a2,zero,00000000230A4380

l230A434C:
	beq	a4,zero,00000000230A4380

l230A4350:
	addi	a5,a0,+00000001
	add	a2,a0,a2
	jal	zero,00000000230A4368

l230A435C:
	beq	a2,a5,00000000230A4380

l230A4360:
	addi	a5,a5,+00000001
	beq	a4,zero,00000000230A4380

l230A4368:
	addi	a1,a1,+00000001
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	beq	a4,a3,00000000230A435C

l230A4378:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

l230A4380:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A4388:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	beq	a3,a4,00000000230A434C

l230A4398:
	jal	zero,00000000230A4378

;; strncpy: 230A439C
;;   Called from:
;;     23000604 (in event_cb_wifi_event)
;;     23000636 (in event_cb_wifi_event)
;;     23000718 (in event_cb_wifi_event)
;;     23024ECE (in stateGlobalGuard_scan_beacon)
;;     23025B7E (in wifi_mgmr_set_country_code_internal)
;;     23044746 (in bt_mesh_input_string)
;;     230501C8 (in bt_set_name)
;;     2305AA3A (in blog_hexdump_out)
;;     2305EC54 (in cli_main_input)
;;     2305EC96 (in cli_main_input)
;;     2305FF18 (in move_env)
;;     2306A860 (in lwip_gethostbyname)
;;     23078634 (in romfs_readdir)
;;     2307A8D2 (in get_bytearray_from_string)
;;     2307BCD4 (in aos_task_new)
;;     23080C18 (in bl_cipstart)
;;     230849F4 (in bl_mtd_open)
strncpy proc
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,00000000230A4418

l230A43A8:
	addi	a5,zero,+00000003
	addi	a4,a0,+00000000
	bltu	a5,a2,00000000230A4420

l230A43B4:
	beq	a2,zero,00000000230A4414

l230A43B8:
	lbu	a6,a1,+00000000
	addi	a3,a2,-00000001
	addi	a1,a1,+00000001
	sb	a6,a4,+00000000
	addi	a5,a4,+00000001
	beq	a6,zero,00000000230A43FC

l230A43D0:
	add	a2,a4,a2
	add	a3,a4,a3
	jal	zero,00000000230A43EC

l230A43DC:
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	beq	a4,zero,00000000230A4400

l230A43EC:
	addi	a1,a1,+00000001
	sub	a6,a3,a5
	bne	a5,a2,00000000230A43DC

l230A43F8:
	jalr	zero,ra,+00000000

l230A43FC:
	addi	a6,a3,+00000000

l230A4400:
	add	a4,a5,a6
	beq	a6,zero,00000000230A4464

l230A4408:
	addi	a5,a5,+00000001
	sb	zero,a5,+00000FFF
	bne	a5,a4,00000000230A4408

l230A4414:
	jalr	zero,ra,+00000000

l230A4418:
	addi	a4,a0,+00000000
	jal	zero,00000000230A43B4

l230A4420:
	lui	t1,000FEFF0
	lui	a7,00080808
	addi	t1,t1,-00000101
	addi	a7,a7,+00000080
	addi	t3,zero,+00000003

l230A4434:
	lw	a3,a1,+00000000
	add	a5,a3,t1
	xori	a6,a3,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a5,zero,00000000230A43B8

l230A444C:
	addi	a4,a4,+00000004
	addi	a2,a2,-00000004
	sw	a3,a4,+00000FFC
	addi	a1,a1,+00000004
	bltu	t3,a2,00000000230A4434

l230A4460:
	jal	zero,00000000230A43B4

l230A4464:
	jalr	zero,ra,+00000000

;; strnlen: 230A4468
;;   Called from:
;;     230592CA (in fdt_stringlist_count)
;;     23059328 (in fdt_stringlist_get)
;;     23081CDA (in flt)
;;     23081E0A (in flt)
;;     230A46D0 (in two_way_long_needle)
;;     230A4874 (in two_way_long_needle)
;;     230A49DC (in strstr)
;;     230A4BC0 (in strstr)
strnlen proc
	beq	a1,zero,00000000230A4490

l230A446C:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A44A4

l230A4474:
	add	a3,a0,a1
	addi	a5,a0,+00000000
	jal	zero,00000000230A4488

l230A4480:
	lbu	a4,a5,+00000000
	beq	a4,zero,00000000230A4498

l230A4488:
	addi	a5,a5,+00000001
	bne	a5,a3,00000000230A4480

l230A4490:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230A4498:
	sub	a1,a5,a0
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230A44A4:
	addi	a1,zero,+00000000
	jal	zero,00000000230A4490

;; strrchr: 230A44AC
;;   Called from:
;;     2305905C (in fdt_get_name)
strrchr proc
	beq	a1,zero,00000000230A4500

l230A44B0:
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	addi	s0,a1,+00000000
	addi	a5,a0,+00000000
	addi	s1,zero,+00000000
	jal	zero,00000000230A44D8

l230A44D0:
	addi	a5,a0,+00000001
	addi	s1,a0,+00000000

l230A44D8:
	addi	a0,a5,+00000000
	addi	a1,s0,+00000000
	jal	ra,00000000230A3E88
	bne	a0,zero,00000000230A44D0

l230A44E8:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A4500:
	jal	zero,00000000230A3E88

;; two_way_long_needle: 230A4504
;;   Called from:
;;     230A4BEC (in strstr)
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

l230A455C:
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bgeu	a5,s9,00000000230A459C

l230A4570:
	lbu	a1,a1,+00000000
	lbu	a4,a4,+00000000
	bgeu	a1,a4,00000000230A4768

l230A457C:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	s7,a5,s11
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bltu	a5,s9,00000000230A4570

l230A459C:
	addi	a7,zero,+00000001
	addi	a3,zero,+00000001
	addi	a2,zero,+00000000
	addi	a1,zero,-00000001

l230A45AC:
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bgeu	a5,s9,00000000230A45EC

l230A45C0:
	lbu	a0,a0,+00000000
	lbu	a4,a4,+00000000
	bgeu	a4,a0,00000000230A4780

l230A45CC:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	a7,a5,a1
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bltu	a5,s9,00000000230A45C0

l230A45EC:
	addi	a1,a1,+00000001
	addi	s11,s11,+00000001
	bltu	a1,s11,00000000230A4600

l230A45F8:
	addi	s7,a7,+00000000
	addi	s11,a1,+00000000

l230A4600:
	addi	a5,sp,+00000010
	addi	a4,sp,+00000410

l230A4608:
	sw	s9,a5,+00000000
	addi	a5,a5,+00000004
	bne	a4,a5,00000000230A4608

l230A4614:
	addi	s2,s9,-00000001
	add	a1,s1,s9
	addi	a4,s1,+00000000
	add	a2,s1,s2
	beq	s9,zero,00000000230A4648

l230A4628:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000410
	sub	a3,a2,a4
	slli	a5,a5,00000002
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sw	a3,a5,+00000C00
	bne	a4,a1,00000000230A4628

l230A4648:
	addi	a2,s11,+00000000
	add	a1,s1,s7
	addi	a0,s1,+00000000
	jal	ra,00000000230A37A4
	bne	a0,zero,00000000230A480C

l230A465C:
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

l230A468C:
	add	a2,s0,s8
	add	a5,a2,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,00000000230A4720

l230A46AC:
	beq	s6,zero,00000000230A46B8

l230A46B0:
	bgeu	a5,s7,00000000230A46B8

l230A46B4:
	sub	a5,s9,s7

l230A46B8:
	add	s8,s8,a5
	addi	s6,zero,+00000000

l230A46C0:
	sub	a5,s10,s9
	bgeu	a5,s8,00000000230A468C

l230A46C8:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,00000000230A4468
	add	s10,s10,a0
	sub	a5,s10,s9
	bgeu	a5,s8,00000000230A468C

l230A46E0:
	addi	a0,zero,+00000000

l230A46E4:
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

l230A4720:
	addi	a5,s6,+00000000
	bgeu	s6,s11,00000000230A472C

l230A4728:
	addi	a5,s11,+00000000

l230A472C:
	bgeu	a5,s2,00000000230A4798

l230A4730:
	add	a3,s0,a5
	add	a3,a3,s8
	add	a4,s1,a5
	jal	zero,00000000230A4754

l230A4740:
	addi	a5,a5,+00000001
	add	a4,a5,s8
	add	a3,s1,a5
	add	a4,s0,a4
	bgeu	a5,s2,00000000230A4798

l230A4754:
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	beq	a3,a4,00000000230A4740

l230A4760:
	add	s8,s4,s8
	jal	zero,00000000230A46B8

l230A4768:
	beq	a1,a4,00000000230A47F4

l230A476C:
	addi	s11,a2,+00000000
	addi	s7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,00000000230A455C

l230A4780:
	beq	a0,a4,00000000230A4800

l230A4784:
	addi	a1,a2,+00000000
	addi	a7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,00000000230A45AC

l230A4798:
	addi	a3,s5,+00000000
	bgeu	s6,s11,00000000230A495C

l230A47A0:
	lw	a5,sp,+00000008
	add	a5,a5,s8
	lbu	a4,a5,+00000000
	lw	a5,sp,+0000000C
	lbu	a5,a5,+00000000
	beq	a4,a5,00000000230A47CC

l230A47B8:
	jal	zero,00000000230A495C

l230A47BC:
	lbu	a1,a1,+00000000
	lbu	a5,a5,+00000000
	bne	a1,a5,00000000230A47E0

l230A47C8:
	addi	a3,a4,+00000000

l230A47CC:
	addi	a4,a3,-00000001
	add	a5,a4,s8
	add	a1,s1,a4
	add	a5,s0,a5
	bne	s6,a3,00000000230A47BC

l230A47E0:
	addi	a7,s6,+00000001
	bltu	a3,a7,00000000230A4968

l230A47E8:
	add	s8,s8,s7
	sub	s6,s9,s7
	jal	zero,00000000230A46C0

l230A47F4:
	beq	a3,s7,00000000230A4950

l230A47F8:
	addi	a3,a3,+00000001
	jal	zero,00000000230A455C

l230A4800:
	beq	a3,a7,00000000230A4944

l230A4804:
	addi	a3,a3,+00000001
	jal	zero,00000000230A45AC

l230A480C:
	sub	s7,s9,s11
	bltu	s7,s11,00000000230A493C

l230A4814:
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

l230A4840:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,00000000230A48A4

l230A4860:
	add	s8,s8,a5

l230A4864:
	sub	a5,s10,s9
	bgeu	a5,s8,00000000230A4840

l230A486C:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,00000000230A4468
	add	s10,s10,a0
	sub	a5,s10,s9
	bltu	a5,s8,00000000230A46E0

l230A4884:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	bne	a5,zero,00000000230A4860

l230A48A4:
	bgeu	s11,s2,00000000230A48E4

l230A48A8:
	add	a4,a1,s11
	add	a5,s1,s11
	lbu	a2,a4,+00000000
	lbu	a4,a5,+00000000
	addi	a5,s11,+00000000
	beq	a2,a4,00000000230A48D0

l230A48C0:
	jal	zero,00000000230A4930

l230A48C4:
	lbu	a2,a2,+00000000
	lbu	a4,a4,+00000000
	bne	a2,a4,00000000230A4930

l230A48D0:
	addi	a5,a5,+00000001
	add	a4,s8,a5
	add	a2,s1,a5
	add	a4,s0,a4
	bltu	a5,s2,00000000230A48C4

l230A48E4:
	addi	a5,zero,-00000001
	beq	s5,a5,00000000230A4970

l230A48EC:
	add	a5,a1,s5
	lbu	a4,a5,+00000000
	lw	a5,sp,+00000008
	lbu	a5,a5,+00000000
	bne	a4,a5,00000000230A4928

l230A4900:
	add	a4,s8,s6
	add	a5,s1,s6
	add	a4,s0,a4
	addi	a6,s1,-00000001

l230A4910:
	beq	a5,a6,00000000230A4970

l230A4914:
	lbu	a0,a5,+00000000
	lbu	a2,a4,+00000000
	addi	a5,a5,-00000001
	addi	a4,a4,-00000001
	beq	a0,a2,00000000230A4910

l230A4928:
	add	s8,s8,s7
	jal	zero,00000000230A4864

l230A4930:
	add	a3,s4,s8
	add	s8,a3,a5
	jal	zero,00000000230A4864

l230A493C:
	addi	s7,s11,+00000000
	jal	zero,00000000230A4814

l230A4944:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,00000000230A45AC

l230A4950:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,00000000230A455C

l230A495C:
	addi	a3,s11,+00000000
	addi	a7,s6,+00000001
	bgeu	a3,a7,00000000230A47E8

l230A4968:
	addi	a0,a2,+00000000
	jal	zero,00000000230A46E4

l230A4970:
	addi	a0,a1,+00000000
	jal	zero,00000000230A46E4

;; strstr: 230A4978
;;   Called from:
;;     2305A672 (in cmd_blog_info_dump)
;;     2305A6AA (in cmd_blog_info_dump)
;;     2305ADD6 (in ota_tcp_cmd.part.0)
;;     2307CFCC (in http_url_req)
;;     2307CFF4 (in http_url_req)
;;     230903D0 (in mbedtls_x509_crt_parse)
;;     23096D38 (in mbedtls_pem_read_buffer)
;;     23096D64 (in mbedtls_pem_read_buffer)
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
	beq	a1,zero,00000000230A4A9C

l230A49A8:
	lbu	a3,s1,+00000001
	beq	a3,zero,00000000230A4B54

l230A49B0:
	lbu	a2,s1,+00000002
	beq	a2,zero,00000000230A4AC4

l230A49B8:
	lbu	a4,s1,+00000003
	beq	a4,zero,00000000230A4B60

l230A49C0:
	lbu	a5,s1,+00000004
	beq	a5,zero,00000000230A4B04

l230A49C8:
	addi	a0,s1,+00000000
	jal	ra,00000000230A4220
	addi	s2,a0,+00000000
	ori	a1,a0,+00000200
	addi	a0,s0,+00000000
	jal	ra,00000000230A4468
	bltu	a0,s2,00000000230A4B4C

l230A49E4:
	addi	a5,zero,+000000FE
	bltu	a5,s2,00000000230A4BDC

l230A49EC:
	sub	s3,a0,s2
	addi	a2,zero,+00000040
	addi	a1,s2,+00000001
	addi	a0,sp,+00000000
	add	s3,s0,s3
	jal	ra,00000000230A3A68
	beq	s2,zero,00000000230A4A38

l230A4A08:
	andi	a2,s2,+000000FF
	addi	a4,s1,+00000000
	add	a1,s2,s1
	add	a2,s1,a2

l230A4A18:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000040
	sub	a3,a2,a4
	andi	a5,a5,+0000003F
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sb	a3,a5,+00000FC0
	bne	a1,a4,00000000230A4A18

l230A4A38:
	lui	s5,00000001
	addi	s5,s5,-00000800

l230A4A40:
	addi	s0,s0,-00000001
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	lbu	a5,a5,-00000040
	add	s0,s0,a5
	bgeu	s3,s0,00000000230A4A70

l230A4A64:
	jal	zero,00000000230A4BB0

l230A4A68:
	add	s0,s0,s4
	bltu	s3,s0,00000000230A4BB0

l230A4A70:
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	addi	a0,s0,+00000000
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	addi	a2,s2,+00000000
	addi	a1,s1,+00000000
	lbu	s4,a5,-00000040
	jal	ra,00000000230A37A4
	bne	a0,zero,00000000230A4A68

l230A4A9C:
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

l230A4AC4:
	lbu	a5,a0,+00000000
	slli	a1,a1,00000010
	or	a1,a1,a3
	beq	a5,zero,00000000230A4B4C

l230A4AD4:
	addi	a3,a0,+00000001
	lbu	a4,a0,+00000001
	jal	zero,00000000230A4AE4

l230A4AE0:
	addi	a3,a2,+00000000

l230A4AE4:
	slli	a5,a5,00000010
	or	a5,a4,a5
	beq	a4,zero,00000000230A4B4C

l230A4AF0:
	addi	a2,a3,+00000001
	lbu	a4,a3,+00000001
	bne	a1,a5,00000000230A4AE0

l230A4AFC:
	addi	s0,a3,-00000001
	jal	zero,00000000230A4A9C

l230A4B04:
	slli	a5,a3,00000010
	slli	a1,a1,00000018
	lbu	a3,a0,+00000000
	or	a5,a1,a5
	or	a5,a5,a4
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a3,zero,00000000230A4B4C

l230A4B24:
	addi	a4,zero,+00000000
	jal	zero,00000000230A4B34

l230A4B2C:
	beq	a5,a4,00000000230A4BD4

l230A4B30:
	addi	s0,a2,+00000000

l230A4B34:
	slli	a4,a4,00000008
	or	a4,a3,a4
	lbu	a3,s0,+00000001
	addi	a2,s0,+00000001
	bne	a3,zero,00000000230A4B2C

l230A4B48:
	beq	a5,a4,00000000230A4BD4

l230A4B4C:
	addi	s0,zero,+00000000
	jal	zero,00000000230A4A9C

l230A4B54:
	jal	ra,00000000230A3E88
	addi	s0,a0,+00000000
	jal	zero,00000000230A4A9C

l230A4B60:
	lbu	a4,a0,+00000000
	slli	a5,a1,00000018
	slli	a1,a3,00000010
	or	a5,a5,a1
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a4,zero,00000000230A4B4C

l230A4B7C:
	slli	a4,a4,00000008
	addi	a2,a0,+00000001
	lbu	a3,a0,+00000001
	jal	zero,00000000230A4B90

l230A4B8C:
	addi	a2,a1,+00000000

l230A4B90:
	or	a4,a3,a4
	slli	a4,a4,00000008
	beq	a3,zero,00000000230A4B4C

l230A4B9C:
	addi	a1,a2,+00000001
	lbu	a3,a2,+00000001
	bne	a5,a4,00000000230A4B8C

l230A4BA8:
	addi	s0,a2,-00000002
	jal	zero,00000000230A4A9C

l230A4BB0:
	add	a0,s3,s2
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230A4B4C

l230A4BBC:
	addi	a1,s5,+00000000
	jal	ra,00000000230A4468
	add	s3,s3,a0
	bgeu	s3,s0,00000000230A4A40

l230A4BCC:
	addi	s0,zero,+00000000
	jal	zero,00000000230A4A9C

l230A4BD4:
	addi	s0,s0,-00000003
	jal	zero,00000000230A4A9C

l230A4BDC:
	addi	a1,a0,+00000000
	addi	a3,s2,+00000000
	addi	a0,s0,+00000000
	addi	a2,s1,+00000000
	jal	ra,00000000230A4504
	addi	s0,a0,+00000000
	jal	zero,00000000230A4A9C

;; _strtol_l.isra.0: 230A4BF8
;;   Called from:
;;     230A4DB0 (in _strtol_r)
;;     230A4DCC (in strtol_l)
;;     230A4DE8 (in strtol)
_strtol_l.isra.0 proc
	addi	sp,sp,-00000010
	sw	s0,sp,+0000000C
	sw	s1,sp,+00000008
	addi	t2,a0,+00000000
	addi	t1,a1,+00000000
	auipc	t3,00000027
	addi	t3,t3,-0000065B
	jal	zero,00000000230A4C1C

l230A4C18:
	addi	t1,a4,+00000000

l230A4C1C:
	addi	a4,t1,+00000001
	lbu	a5,a4,-00000001
	add	a6,t3,a5
	lbu	a7,a6,+00000000
	andi	a7,a7,+00000008
	bne	a7,zero,00000000230A4C18

l230A4C34:
	addi	a0,zero,+0000002D
	beq	a5,a0,00000000230A4D48

l230A4C3C:
	addi	a0,zero,+0000002B
	beq	a5,a0,00000000230A4CC4

l230A4C44:
	addi	a6,a5,+00000000
	addi	s0,zero,+00000000

l230A4C4C:
	beq	a3,zero,00000000230A4CD4

l230A4C50:
	addi	a5,zero,+00000010
	addi	t6,a3,+00000000
	beq	a3,a5,00000000230A4D60

l230A4C5C:
	lui	t0,00080000
	bne	s0,zero,00000000230A4C68

l230A4C64:
	xori	t0,t0,-00000001

l230A4C68:
	and	s1,t0,t6
	addi	a7,zero,+00000000
	addi	a0,zero,+00000000
	addi	t1,zero,+00000009
	addi	t5,zero,+00000019
	addi	t3,zero,-00000001
	srl	t4,t0,t6

l230A4C84:
	addi	a5,a6,-00000030
	bgeu	t1,a5,00000000230A4C98

l230A4C8C:
	addi	a5,a6,-00000041
	bltu	t5,a5,00000000230A4CE8

l230A4C94:
	addi	a5,a6,-00000037

l230A4C98:
	bge	a5,a3,00000000230A4CF8

l230A4C9C:
	beq	a7,t3,00000000230A4CB8

l230A4CA0:
	addi	a7,zero,-00000001
	bltu	t4,a0,00000000230A4CB8

l230A4CA8:
	beq	t4,a0,00000000230A4D24

l230A4CAC:
	addi	a7,zero,+00000001
	add	a6,t6,a0
	add	a0,a5,a6

l230A4CB8:
	addi	a4,a4,+00000001
	lbu	a6,a4,-00000001
	jal	zero,00000000230A4C84

l230A4CC4:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000000
	addi	a4,t1,+00000002
	bne	a3,zero,00000000230A4C50

l230A4CD4:
	addi	a5,zero,+00000030
	beq	a6,a5,00000000230A4D94

l230A4CDC:
	addi	t6,zero,+0000000A
	addi	a3,zero,+0000000A
	jal	zero,00000000230A4C5C

l230A4CE8:
	addi	a5,a6,-00000061
	bltu	t5,a5,00000000230A4CF8

l230A4CF0:
	addi	a5,a6,-00000057
	blt	a5,a3,00000000230A4C9C

l230A4CF8:
	addi	a5,zero,-00000001
	beq	a7,a5,00000000230A4D2C

l230A4D00:
	beq	s0,zero,00000000230A4D08

l230A4D04:
	sub	a0,zero,a0

l230A4D08:
	beq	a2,zero,00000000230A4D14

l230A4D0C:
	bne	a7,zero,00000000230A4D58

l230A4D10:
	sw	a1,a2,+00000000

l230A4D14:
	lw	s0,sp,+0000000C
	lw	s1,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A4D24:
	blt	s1,a5,00000000230A4CB8

l230A4D28:
	jal	zero,00000000230A4CAC

l230A4D2C:
	addi	a5,zero,+00000022
	sw	a5,t2,+00000000
	addi	a0,t0,+00000000
	beq	a2,zero,00000000230A4D14

l230A4D3C:
	addi	a1,a4,-00000001
	addi	a0,t0,+00000000
	jal	zero,00000000230A4D10

l230A4D48:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000001
	addi	a4,t1,+00000002
	jal	zero,00000000230A4C4C

l230A4D58:
	addi	t0,a0,+00000000
	jal	zero,00000000230A4D3C

l230A4D60:
	addi	a5,zero,+00000030
	bne	a6,a5,00000000230A4D78

l230A4D68:
	lbu	a5,a4,+00000000
	addi	a0,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a0,00000000230A4D80

l230A4D78:
	addi	t6,zero,+00000010
	jal	zero,00000000230A4C5C

l230A4D80:
	lbu	a6,a4,+00000001
	addi	t6,zero,+00000010
	addi	a4,a4,+00000002
	addi	a3,zero,+00000010
	jal	zero,00000000230A4C5C

l230A4D94:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a3,00000000230A4D80

l230A4DA4:
	addi	t6,zero,+00000008
	addi	a3,zero,+00000008
	jal	zero,00000000230A4C5C

;; _strtol_r: 230A4DB0
;;   Called from:
;;     230A362C (in _atoi_r)
_strtol_r proc
	jal	zero,00000000230A4BF8

;; strtol_l: 230A4DB4
strtol_l proc
	auipc	a5,0001EF6A
	addi	a5,a5,-000000B8
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A4BF8

;; strtol: 230A4DD0
;;   Called from:
;;     2305E37C (in mmem_cmd)
;;     2305E38A (in mmem_cmd)
;;     2305E398 (in mmem_cmd)
;;     2305E450 (in pmem_cmd)
;;     2305E48C (in pmem_cmd)
;;     2305E49A (in pmem_cmd)
;;     2307A8E0 (in get_bytearray_from_string)
;;     230A3620 (in atoi)
strtol proc
	auipc	a5,0001EF6A
	addi	a5,a5,-000000D4
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A4BF8

;; _strtoul_l.isra.0: 230A4DEC
;;   Called from:
;;     230A4FC8 (in _strtoul_r)
;;     230A4FE4 (in strtoul_l)
;;     230A5000 (in strtoul)
_strtoul_l.isra.0 proc
	addi	t5,a0,+00000000
	addi	t1,a1,+00000000
	auipc	t3,00000026
	addi	t3,t3,+000007BD
	jal	zero,00000000230A4E04

l230A4E00:
	addi	t1,a4,+00000000

l230A4E04:
	addi	a4,t1,+00000001
	lbu	a5,a4,-00000001
	add	a6,t3,a5
	lbu	a7,a6,+00000000
	andi	a7,a7,+00000008
	bne	a7,zero,00000000230A4E00

l230A4E1C:
	addi	a0,zero,+0000002D
	beq	a5,a0,00000000230A4F2C

l230A4E24:
	addi	a0,zero,+0000002B
	beq	a5,a0,00000000230A4EA0

l230A4E2C:
	addi	a6,a5,+00000000
	addi	t2,zero,+00000000

l230A4E34:
	beq	a3,zero,00000000230A4EB0

l230A4E38:
	addi	a5,zero,+00000010
	beq	a3,a5,00000000230A4F40

l230A4E40:
	addi	t0,zero,-00000001
	srl	t3,t0,a3
	addi	t6,a3,+00000000
	and	t0,t0,a3

l230A4E50:
	addi	a7,zero,+00000000
	addi	a0,zero,+00000000
	addi	t1,zero,+00000009
	addi	t4,zero,+00000019

l230A4E60:
	addi	a5,a6,-00000030
	bgeu	t1,a5,00000000230A4E74

l230A4E68:
	addi	a5,a6,-00000041
	bltu	t4,a5,00000000230A4ED8

l230A4E70:
	addi	a5,a6,-00000037

l230A4E74:
	bge	a5,a3,00000000230A4EE8

l230A4E78:
	blt	a7,zero,00000000230A4ED0

l230A4E7C:
	addi	a7,zero,-00000001
	bltu	t3,a0,00000000230A4E94

l230A4E84:
	beq	a0,t3,00000000230A4F04

l230A4E88:
	addi	a7,zero,+00000001
	add	a6,t6,a0
	add	a0,a5,a6

l230A4E94:
	addi	a4,a4,+00000001
	lbu	a6,a4,-00000001
	jal	zero,00000000230A4E60

l230A4EA0:
	lbu	a6,a4,+00000000
	addi	t2,zero,+00000000
	addi	a4,t1,+00000002
	bne	a3,zero,00000000230A4E38

l230A4EB0:
	addi	a5,zero,+00000030
	beq	a6,a5,00000000230A4F78

l230A4EB8:
	lui	t3,0001999A
	addi	t0,zero,+00000005
	addi	t3,t3,-00000667
	addi	t6,zero,+0000000A
	addi	a3,zero,+0000000A
	jal	zero,00000000230A4E50

l230A4ED0:
	addi	a7,zero,-00000001
	jal	zero,00000000230A4E94

l230A4ED8:
	addi	a5,a6,-00000061
	bltu	t4,a5,00000000230A4EE8

l230A4EE0:
	addi	a5,a6,-00000057
	blt	a5,a3,00000000230A4E78

l230A4EE8:
	blt	a7,zero,00000000230A4F10

l230A4EEC:
	beq	t2,zero,00000000230A4EF4

l230A4EF0:
	sub	a0,zero,a0

l230A4EF4:
	beq	a2,zero,00000000230A4F0C

l230A4EF8:
	bne	a7,zero,00000000230A4F20

l230A4EFC:
	sw	a1,a2,+00000000
	jalr	zero,ra,+00000000

l230A4F04:
	blt	t0,a5,00000000230A4E94

l230A4F08:
	jal	zero,00000000230A4E88

l230A4F0C:
	jalr	zero,ra,+00000000

l230A4F10:
	addi	a5,zero,+00000022
	sw	a5,t5,+00000000
	addi	a0,zero,-00000001
	beq	a2,zero,00000000230A4F3C

l230A4F20:
	addi	a1,a4,-00000001
	sw	a1,a2,+00000000
	jalr	zero,ra,+00000000

l230A4F2C:
	lbu	a6,a4,+00000000
	addi	t2,zero,+00000001
	addi	a4,t1,+00000002
	jal	zero,00000000230A4E34

l230A4F3C:
	jalr	zero,ra,+00000000

l230A4F40:
	addi	a5,zero,+00000030
	bne	a6,a5,00000000230A4FB4

l230A4F48:
	lbu	a5,a4,+00000000
	addi	a0,zero,+00000058
	andi	a5,a5,+000000DF
	bne	a5,a0,00000000230A4FA0

l230A4F58:
	lui	t3,00010000
	lbu	a6,a4,+00000001
	addi	t0,zero,+0000000F
	addi	a4,a4,+00000002
	addi	t3,t3,-00000001
	addi	t6,zero,+00000010
	addi	a3,zero,+00000010
	jal	zero,00000000230A4E50

l230A4F78:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a3,00000000230A4F58

l230A4F88:
	lui	t3,00020000
	addi	t0,zero,+00000007
	addi	t3,t3,-00000001
	addi	t6,zero,+00000008
	addi	a3,zero,+00000008
	jal	zero,00000000230A4E50

l230A4FA0:
	addi	t3,zero,-00000001
	addi	t6,zero,+00000010
	srl	t3,t3,a3
	addi	t0,zero,+0000000F
	jal	zero,00000000230A4E50

l230A4FB4:
	lui	t3,00010000
	addi	t0,zero,+0000000F
	addi	t3,t3,-00000001
	addi	t6,zero,+00000010
	jal	zero,00000000230A4E50

;; _strtoul_r: 230A4FC8
_strtoul_r proc
	jal	zero,00000000230A4DEC

;; strtoul_l: 230A4FCC
strtoul_l proc
	auipc	a5,0001EF6A
	addi	a5,a5,-000002D0
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A4DEC

;; strtoul: 230A4FE8
;;   Called from:
;;     2303AA66 (in blemesh_input_num)
strtoul proc
	auipc	a5,0001EF6A
	addi	a5,a5,-000002EC
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A4DEC

;; stat: 230A5004
stat proc
	auipc	a5,0001EF6A
	addi	a5,a5,-00000308
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A8A60

;; __sprint_r.part.0: 230A501C
;;   Called from:
;;     230A5114 (in __sprint_r)
;;     230A527C (in _vfiprintf_r)
;;     230A538C (in _vfiprintf_r)
;;     230A5568 (in _vfiprintf_r)
;;     230A55C4 (in _vfiprintf_r)
;;     230A57BC (in _vfiprintf_r)
;;     230A580C (in _vfiprintf_r)
;;     230A5C50 (in _vfiprintf_r)
;;     230A5CB0 (in _vfiprintf_r)
;;     230A5D34 (in _vfiprintf_r)
;;     230A5DAC (in _vfiprintf_r)
;;     230A5E1C (in _vfiprintf_r)
;;     230A5EB8 (in _vfiprintf_r)
;;     230A5F54 (in _vfiprintf_r)
;;     230A5FFC (in _vfiprintf_r)
__sprint_r.part.0 proc
	lw	a5,a1,+00000064
	addi	sp,sp,-00000030
	sw	s6,sp,+00000010
	sw	ra,sp,+0000002C
	sw	s0,sp,+00000028
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	sw	s4,sp,+00000018
	sw	s5,sp,+00000014
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	slli	a4,a5,00000012
	addi	s6,a2,+00000000
	bge	a4,zero,00000000230A5104

l230A5058:
	lw	a5,a2,+00000008
	addi	s2,a1,+00000000
	addi	s4,a0,+00000000
	lw	s7,a2,+00000000
	addi	s5,zero,-00000001
	beq	a5,zero,00000000230A50FC

l230A5070:
	lw	s8,s7,+00000004
	lw	s0,s7,+00000000
	srli	s3,s8,00000002
	beq	s3,zero,00000000230A50E8

l230A5080:
	addi	s1,zero,+00000000
	jal	zero,00000000230A5090

l230A5088:
	addi	s0,s0,+00000004
	beq	s3,s1,00000000230A50E4

l230A5090:
	lw	a1,s0,+00000000
	addi	a2,s2,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A6D8C
	addi	s1,s1,+00000001
	bne	a0,s5,00000000230A5088

l230A50A8:
	addi	a0,zero,-00000001

l230A50AC:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	sw	zero,s6,+00000008
	sw	zero,s6,+00000004
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	lw	s8,sp,+00000008
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l230A50E4:
	lw	a5,s6,+00000008

l230A50E8:
	andi	s8,s8,-00000004
	sub	a5,a5,s8
	sw	a5,s6,+00000008
	addi	s7,s7,+00000008
	bne	a5,zero,00000000230A5070

l230A50FC:
	addi	a0,zero,+00000000
	jal	zero,00000000230A50AC

l230A5104:
	jal	ra,00000000230A729C
	jal	zero,00000000230A50AC

;; __sprint_r: 230A510C
__sprint_r proc
	lw	a4,a2,+00000008
	beq	a4,zero,00000000230A5118

l230A5114:
	jal	zero,00000000230A501C

l230A5118:
	sw	zero,a2,+00000004
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; _vfiprintf_r: 230A5124
;;   Called from:
;;     230A3668 (in _fiprintf_r)
;;     230A36B8 (in fiprintf)
;;     230A63C8 (in vfiprintf)
;;     230A6434 (in __sbprintf)
_vfiprintf_r proc
	addi	sp,sp,-00000130
	sw	s3,sp,+0000011C
	sw	s4,sp,+00000118
	sw	s10,sp,+00000100
	sw	ra,sp,+0000012C
	sw	s0,sp,+00000128
	sw	s1,sp,+00000124
	sw	s2,sp,+00000120
	sw	s5,sp,+00000114
	sw	s6,sp,+00000110
	sw	s7,sp,+0000010C
	sw	s8,sp,+00000108
	sw	s9,sp,+00000104
	sw	s11,sp,+000000FC
	sw	a3,sp,+0000000C
	addi	s4,a0,+00000000
	addi	s3,a1,+00000000
	addi	s10,a2,+00000000
	beq	a0,zero,00000000230A5178

l230A5170:
	lw	a5,a0,+00000038
	beq	a5,zero,00000000230A5AF8

l230A5178:
	lh	a4,s3,+0000000C
	slli	a5,a4,00000010
	srli	a5,a5,00000010
	slli	a3,a5,00000012
	blt	a3,zero,00000000230A51B4

l230A518C:
	lw	a3,s3,+00000064
	lui	a5,00000002
	or	a5,a4,a5
	lui	a4,000FFFFE
	addi	a4,a4,-00000001
	and	a4,a3,a4
	sh	a5,s3,+0000000C
	slli	a5,a5,00000010
	sw	a4,s3,+00000064
	srli	a5,a5,00000010

l230A51B4:
	andi	a4,a5,+00000008
	beq	a4,zero,00000000230A5324

l230A51BC:
	lw	a4,s3,+00000010
	beq	a4,zero,00000000230A5324

l230A51C4:
	andi	a5,a5,+0000001A
	addi	a4,zero,+0000000A
	beq	a5,a4,00000000230A5348

l230A51D0:
	lui	a5,000FFFF8
	addi	s1,sp,+0000004C
	xori	a5,a5,-000007D0
	sw	s1,sp,+00000040
	sw	zero,sp,+00000048
	sw	zero,sp,+00000044
	addi	s11,s1,+00000000
	sw	zero,sp,+00000010
	sw	zero,sp,+00000020
	sw	zero,sp,+00000028
	sw	zero,sp,+00000024
	sw	zero,sp,+00000004
	auipc	s5,00000026
	addi	s5,s5,+000004B4
	sw	a5,sp,+0000002C

l230A520C:
	lbu	a5,s10,+00000000
	beq	a5,zero,00000000230A5378

l230A5214:
	addi	a3,zero,+00000025
	beq	a5,a3,00000000230A5FBC

l230A521C:
	addi	s0,s10,+00000000
	jal	zero,00000000230A522C

l230A5224:
	beq	a5,a3,00000000230A536C

l230A5228:
	addi	s0,s2,+00000000

l230A522C:
	lbu	a5,s0,+00000001
	addi	s2,s0,+00000001
	bne	a5,zero,00000000230A5224

l230A5238:
	sub	s6,s2,s10
	beq	s6,zero,00000000230A5378

l230A5240:
	lw	a3,sp,+00000048
	lw	a5,sp,+00000044
	sw	s10,s11,+00000000
	add	a3,s6,a3
	addi	a5,a5,+00000001
	sw	s6,s11,+00000004
	sw	a3,sp,+00000048
	sw	a5,sp,+00000044
	addi	a2,zero,+00000007
	addi	s11,s11,+00000008
	bge	a2,a5,00000000230A5288

l230A526C:
	beq	a3,zero,00000000230A5F74

l230A5270:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5284:
	addi	s11,s1,+00000000

l230A5288:
	lw	a4,sp,+00000004
	lbu	a5,s0,+00000001
	add	a4,a4,s6
	sw	a4,sp,+00000004
	beq	a5,zero,00000000230A5378

l230A529C:
	addi	s10,s2,+00000001
	lbu	a2,s2,+00000001
	sb	zero,sp,+0000003B
	addi	s7,zero,-00000001
	addi	s0,zero,+00000000
	addi	s9,zero,+00000000
	addi	s2,zero,+0000002A
	addi	s10,s10,+00000001
	addi	a1,zero,+0000005A
	addi	a5,a2,-00000020
	bltu	a1,a5,00000000230A54A4

l230A52C8:
	slli	a5,a5,00000002
	add	a5,a5,s5
	lw	a5,a5,+00000000
	add	a5,a5,s5
	jalr	zero,a5,+00000000
230A52DC                                     13 05 0A 00             ....
230A52E0 EF 20 40 5E 83 27 45 00 13 85 07 00 23 22 F1 02 . @^.'E.....#"..
230A52F0 EF E0 1F F3 23 24 A1 02 13 0B 05 00 13 05 0A 00 ....#$..........
230A5300 EF 20 40 5C 83 27 85 00 23 20 F1 02 E3 12 0B 54 . @\.'..# .....T
230A5310 03 46 0D 00 6F F0 5F FA 93 EC 0C 02 03 46 0D 00 .F..o._......F..
230A5320 6F F0 9F F9                                     o...           

l230A5324:
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A648C
	beq	a0,zero,00000000230A5338

l230A5334:
	jal	zero,00000000230A6368

l230A5338:
	lhu	a5,s3,+0000000C
	addi	a4,zero,+0000000A
	andi	a5,a5,+0000001A
	bne	a5,a4,00000000230A51D0

l230A5348:
	lh	a5,s3,+0000000E
	blt	a5,zero,00000000230A51D0

l230A5350:
	lw	a3,sp,+0000000C
	addi	a2,s10,+00000000
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A63CC
	sw	a0,sp,+00000004
	jal	zero,00000000230A53A0

l230A536C:
	sub	s6,s2,s10
	beq	s6,zero,00000000230A529C

l230A5374:
	jal	zero,00000000230A5240

l230A5378:
	lw	a5,sp,+00000048
	beq	a5,zero,00000000230A5390

l230A5380:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C

l230A5390:
	lhu	a5,s3,+0000000C
	andi	a5,a5,+00000040
	beq	a5,zero,00000000230A53A0

l230A539C:
	jal	zero,00000000230A6368

l230A53A0:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	a0,sp,+00000004
	lw	s1,sp,+00000124
	lw	s2,sp,+00000120
	lw	s3,sp,+0000011C
	lw	s4,sp,+00000118
	lw	s5,sp,+00000114
	lw	s6,sp,+00000110
	lw	s7,sp,+0000010C
	lw	s8,sp,+00000108
	lw	s9,sp,+00000104
	lw	s10,sp,+00000100
	lw	s11,sp,+000000FC
	addi	sp,sp,+00000130
	jalr	zero,ra,+00000000
230A53E0 97 67 02 00 93 87 07 46 23 28 F1 00 93 F7 0C 02 .g.....F#(......
230A53F0 63 86 07 52 83 27 C1 00 93 85 77 00 93 F5 85 FF c..R.'....w.....
230A5400 03 AB 05 00 03 AE 45 00 93 87 85 00 23 26 F1 00 ......E.....#&..
230A5410 93 F5 1C 00 63 86 05 00 B3 65 CB 01 E3 9C 05 40 ....c....e.....@
230A5420 13 F9 FC BF 13 06 20 00 A3 0D 01 02 93 06 F0 FF ...... .........
230A5430 63 8C DB 64 B3 65 CB 01 93 7C F9 F7 E3 94 05 20 c..d.e...|..... 
230A5440 63 9E 0B 72 E3 10 06 34 13 7B 19 00 13 0C 01 0F c..r...4.{......
230A5450 E3 14 0B 38 13 89 0B 00 63 D4 6B 01 13 09 0B 00 ...8....c.k.....
230A5460 83 47 B1 03 B3 37 F0 00 33 09 F9 00 6F 00 40 05 .G...7..3...o.@.
230A5470 13 04 00 00 13 05 06 FD 13 0D 1D 00 93 17 24 00 ..............$.
230A5480 03 46 FD FF 33 84 87 00 13 14 14 00 33 04 85 00 .F..3.......3...
230A5490 93 07 90 00 13 05 06 FD E3 F0 A7 FE 93 07 06 FE ................
230A54A0 E3 F4 F5 E2                                     ....           

l230A54A4:
	beq	a2,zero,00000000230A5378

l230A54A8:
	sb	a2,sp,+0000008C
	sb	zero,sp,+0000003B
	addi	s2,zero,+00000001
	addi	s6,zero,+00000001
	addi	s8,sp,+0000008C
	addi	s7,zero,+00000000
	andi	t0,s9,+00000002
	beq	t0,zero,00000000230A54CC

l230A54C8:
	addi	s2,s2,+00000002

l230A54CC:
	lw	a2,sp,+00000044
	andi	t6,s9,+00000084
	lw	a5,sp,+00000048
	addi	a1,a2,+00000001
	addi	t4,a1,+00000000
	bne	t6,zero,00000000230A54EC

l230A54E4:
	sub	t3,s0,s2
	blt	zero,t3,00000000230A5E4C

l230A54EC:
	lbu	a0,sp,+0000003B
	addi	a1,s11,+00000008
	beq	a0,zero,00000000230A552C

l230A54F8:
	addi	a2,sp,+0000003B
	addi	a5,a5,+00000001
	sw	a2,s11,+00000000
	addi	a2,zero,+00000001
	sw	a2,s11,+00000004
	sw	a5,sp,+00000048
	sw	t4,sp,+00000044
	addi	a4,zero,+00000007
	blt	a4,t4,00000000230A5E04

l230A551C:
	addi	a2,t4,+00000000
	addi	s11,a1,+00000000
	addi	t4,t4,+00000001
	addi	a1,a1,+00000008

l230A552C:
	beq	t0,zero,00000000230A5588

l230A5530:
	addi	a2,sp,+0000003C
	addi	a5,a5,+00000002
	sw	a2,s11,+00000000
	addi	a2,zero,+00000002
	sw	a2,s11,+00000004
	sw	a5,sp,+00000048
	sw	t4,sp,+00000044
	addi	a4,zero,+00000007
	bge	a4,t4,00000000230A5DF0

l230A5554:
	beq	a5,zero,00000000230A5FA8

l230A5558:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t6,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5570:
	lw	a2,sp,+00000044
	lw	a5,sp,+00000048
	lw	t6,sp,+00000008
	addi	a1,sp,+00000054
	addi	t4,a2,+00000001
	addi	s11,s1,+00000000

l230A5588:
	addi	a0,zero,+00000080
	beq	t6,a0,00000000230A5BE4

l230A5590:
	sub	s7,s7,s6
	blt	zero,s7,00000000230A5CD4

l230A5598:
	add	a5,s6,a5
	sw	s8,s11,+00000000
	sw	s6,s11,+00000004
	sw	a5,sp,+00000048
	sw	t4,sp,+00000044
	addi	a4,zero,+00000007
	bge	a4,t4,00000000230A55D4

l230A55B4:
	beq	a5,zero,00000000230A5740

l230A55B8:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A55CC:
	lw	a5,sp,+00000048
	addi	a1,s1,+00000000

l230A55D4:
	andi	a3,s9,+00000004
	beq	a3,zero,00000000230A55E4

l230A55DC:
	sub	s6,s0,s2
	blt	zero,s6,00000000230A5758

l230A55E4:
	bge	s0,s2,00000000230A55EC

l230A55E8:
	addi	s0,s2,+00000000

l230A55EC:
	lw	a4,sp,+00000004
	add	a4,a4,s0
	sw	a4,sp,+00000004
	bne	a5,zero,00000000230A5DA0

l230A55FC:
	sw	zero,sp,+00000044
	addi	s11,s1,+00000000
	jal	zero,00000000230A520C
230A5608                         93 F7 0C 02 13 E9 0C 01         ........
230A5610 63 94 07 54 83 27 C1 00 13 86 47 00 83 27 C1 00 c..T.'....G..'..
230A5620 13 0E 00 00 23 26 C1 00 03 AB 07 00 13 06 10 00 ....#&..........
230A5630 6F F0 9F DF 93 EC 0C 08 03 46 0D 00 6F F0 DF C7 o........F..o...
230A5640 83 27 C1 00 A3 0D 01 02 03 AC 07 00 13 87 47 00 .'............G.
230A5650 E3 06 0C 38 93 07 F0 FF 23 24 E1 00 E3 86 FB 22 ...8....#$....."
230A5660 13 86 0B 00 93 05 00 00 13 05 0C 00 EF E0 CF 85 ................
230A5670 03 27 81 00 E3 08 05 4A 33 0B 85 41 23 26 E1 00 .'.....J3..A#&..
230A5680 93 0B 00 00 6F F0 1F DD 93 F7 0C 02 93 E6 0C 01 ....o...........
230A5690 63 9A 07 46 83 27 C1 00 13 86 47 00 83 27 C1 00 c..F.'....G..'..
230A56A0 13 0E 00 00 23 26 C1 00 03 AB 07 00 6F 00 40 47 ....#&......o.@G
230A56B0 93 F7 0C 02 13 E9 0C 01 63 9C 07 46 83 27 C1 00 ........c..F.'..
230A56C0 13 86 47 00 83 27 C1 00 23 26 C1 00 03 AB 07 00 ..G..'..#&......
230A56D0 13 5E FB 41 93 06 0E 00 63 C4 06 38 93 06 F0 FF .^.A....c..8....
230A56E0 63 8A DB 00 33 66 CB 01 93 7C F9 F7 E3 0A 06 08 c...3f...|......
230A56F0 13 89 0C 00 E3 18 0E 1C 93 07 90 00 E3 E4 67 1D ..............g.
230A5700 93 07 0B 03 A3 07 F1 0E 93 0C 09 00 13 0B 10 00 ................
230A5710 13 0C F1 0E 6F F0 1F D4 03 27 C1 00 A3 0D 01 02 ....o....'......
230A5720 13 09 10 00 83 27 07 00 13 07 47 00 23 26 E1 00 .....'....G.#&..
230A5730 23 06 F1 08 13 0B 10 00 13 0C C1 08 6F F0 1F D8 #...........o...

l230A5740:
	sw	zero,sp,+00000044
	andi	a3,s9,+00000004
	beq	a3,zero,00000000230A5F2C

l230A574C:
	sub	s6,s0,s2
	bge	zero,s6,00000000230A5F2C

l230A5754:
	addi	a1,s1,+00000000

l230A5758:
	addi	a4,zero,+00000010
	lw	a3,sp,+00000044
	bge	a4,s6,00000000230A6344

l230A5764:
	auipc	t4,00000026
	addi	t4,t4,+000000BC
	addi	s8,zero,+00000010
	addi	s7,zero,+00000007
	jal	zero,00000000230A578C

l230A5778:
	addi	a2,a3,+00000002
	addi	a1,a1,+00000008
	addi	a3,a4,+00000000

l230A5784:
	addi	s6,s6,-00000010
	bge	s8,s6,00000000230A57E0

l230A578C:
	addi	a5,a5,+00000010
	addi	a4,a3,+00000001
	sw	t4,a1,+00000000
	sw	s8,a1,+00000004
	sw	a5,sp,+00000048
	sw	a4,sp,+00000044
	bge	s7,a4,00000000230A5778

l230A57A8:
	beq	a5,zero,00000000230A5BD4

l230A57AC:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t4,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A57C4:
	lw	a3,sp,+00000044
	addi	s6,s6,-00000010
	lw	a5,sp,+00000048
	addi	a1,s1,+00000000
	addi	a2,a3,+00000001
	lw	t4,sp,+00000008
	blt	s8,s6,00000000230A578C

l230A57E0:
	add	a5,a5,s6
	sw	t4,a1,+00000000
	sw	s6,a1,+00000004
	sw	a5,sp,+00000048
	sw	a2,sp,+00000044
	addi	a4,zero,+00000007
	bge	a4,a2,00000000230A55E4

l230A57FC:
	beq	a5,zero,00000000230A5F2C

l230A5800:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5814:
	lw	a5,sp,+00000048
	jal	zero,00000000230A55E4
230A581C                                     83 47 B1 03             .G..
230A5820 03 46 0D 00 E3 9A 07 A8 93 07 00 02 A3 0D F1 02 .F..............
230A5830 6F F0 9F A8 93 07 B0 02 A3 0D F1 02 03 46 0D 00 o............F..
230A5840 6F F0 9F A7 83 27 C1 00 03 46 0D 00 03 A4 07 00 o....'...F......
230A5850 93 87 47 00 23 26 F1 00 E3 50 04 A6 33 04 80 40 ..G.#&...P..3..@
230A5860 93 EC 4C 00 6F F0 5F A5 93 EC 1C 00 03 46 0D 00 ..L.o._......F..
230A5870 6F F0 9F A4 03 46 0D 00 93 07 1D 00 E3 0C 26 2F o....F........&/
230A5880 13 8D 07 00 13 05 06 FD 93 07 90 00 93 0B 00 00 ................
230A5890 E3 E8 A7 A2 13 0D 1D 00 93 97 2B 00 03 46 FD FF ..........+..F..
230A58A0 33 88 77 01 13 18 18 00 B3 0B A8 00 93 07 90 00 3.w.............
230A58B0 13 05 06 FD E3 F0 A7 FE 6F F0 9F A0 03 46 0D 00 ........o....F..
230A58C0 93 EC 4C 00 6F F0 5F 9F 93 F7 0C 02 63 94 07 28 ..L.o._.....c..(
230A58D0 83 27 C1 00 93 F5 0C 01 13 86 47 00 83 A7 07 00 .'........G.....
230A58E0 E3 9C 05 2A 93 F5 0C 04 E3 8C 05 12 13 9B 07 01 ...*............
230A58F0 23 26 C1 00 13 5B 0B 01 13 0E 00 00 13 89 0C 00 #&...[..........
230A5900 13 06 10 00 6F F0 5F B2 97 67 02 00 93 87 C7 F4 ....o._..g......
230A5910 23 28 F1 00 93 F7 0C 02 E3 9E 07 AC 03 27 C1 00 #(...........'..
230A5920 93 F5 0C 01 83 27 07 00 13 07 47 00 23 26 E1 00 .....'....G.#&..
230A5930 63 96 05 66 93 F5 0C 04 63 8E 05 64 13 9B 07 01 c..f....c..d....
230A5940 13 5B 0B 01 13 0E 00 00 6F F0 9F AC 83 27 C1 00 .[......o....'..
230A5950 03 27 C1 02 13 0E 00 00 03 AB 07 00 93 87 47 00 .'............G.
230A5960 23 26 F1 00 97 67 02 00 93 87 07 EF 13 E9 2C 00 #&...g........,.
230A5970 23 1E E1 02 23 28 F1 00 13 06 20 00 6F F0 DF AA #...#(.... .o...
230A5980 93 F7 0C 02 63 9E 07 16 83 27 C1 00 93 F5 0C 01 ....c....'......
230A5990 13 86 47 00 83 A7 07 00 E3 94 05 20 93 F5 0C 04 ..G........ ....
230A59A0 E3 80 05 0A 13 9B 07 01 13 5B 0B 01 13 0E 00 00 .........[......
230A59B0 93 86 0C 00 23 26 C1 00 6F 00 80 16 03 27 C1 00 ....#&..o....'..
230A59C0 93 F7 0C 02 13 06 47 00 63 92 07 6A 93 F7 0C 01 ......G.c..j....
230A59D0 63 9A 07 7E 93 F7 0C 04 E3 96 07 0C 93 F6 0C 20 c..~........... 
230A59E0 63 82 06 7E 83 27 C1 00 03 27 41 00 23 26 C1 00 c..~.'...'A.#&..
230A59F0 83 A7 07 00 23 80 E7 00 6F F0 5F 81 03 46 0D 00 ....#...o._..F..
230A5A00 93 07 C0 06 63 08 F6 7A 93 EC 0C 01 6F F0 DF 8A ....c..z....o...
230A5A10 03 46 0D 00 93 07 80 06 63 06 F6 78 93 EC 0C 04 .F......c..x....
230A5A20 6F F0 9F 89 93 F7 0C 02 63 92 07 10 03 27 C1 00 o.......c....'..
230A5A30 93 F7 0C 01 13 06 47 00 E3 98 07 16 93 F7 0C 04 ......G.........
230A5A40 63 8E 07 7A 83 27 C1 00 23 26 C1 00 13 89 0C 00 c..z.'..#&......
230A5A50 03 9B 07 00 13 5E FB 41 93 06 0E 00 E3 D0 06 C8 .....^.A........
230A5A60 B3 07 60 41 B3 36 F0 00 33 0E C0 41 33 0E DE 40 ..`A.6..3..A3..@
230A5A70 93 06 D0 02 A3 0D D1 02 93 06 F0 FF 13 8B 07 00 ................
230A5A80 13 06 10 00 E3 98 DB 9A 93 06 10 00 E3 04 D6 C6 ................
230A5A90 93 06 20 00 63 0E D6 0E 13 06 01 0F 6F 00 80 00 .. .c.......o...
230A5AA0 13 06 0C 00 93 15 DE 01 93 76 7B 00 93 57 3B 00 .........v{..W;.
230A5AB0 93 86 06 03 33 EB F5 00 13 5E 3E 00 A3 0F D6 FE ....3....^>.....
230A5AC0 B3 65 CB 01 13 0C F6 FF E3 9C 05 FC 93 77 19 00 .e...........w..
230A5AD0 63 8A 07 0E 93 07 00 03 63 86 F6 0E 13 06 E6 FF c.......c.......
230A5AE0 A3 0F FC FE 93 07 01 0F 33 8B C7 40 93 0C 09 00 ........3..@....
230A5AF0 13 0C 06 00 6F F0 1F 96                         ....o...       

l230A5AF8:
	jal	ra,00000000230A6C10
	jal	zero,00000000230A5178
230A5B00 93 86 0C 00 83 27 C1 00 13 86 77 00 13 76 86 FF .....'....w..v..
230A5B10 03 2B 06 00 03 2E 46 00 93 07 86 00 23 26 F1 00 .+....F.....#&..
230A5B20 13 F9 F6 BF 13 06 00 00 6F F0 1F 90 13 89 0C 00 ........o.......
230A5B30 83 27 C1 00 93 87 77 00 93 F7 87 FF 83 A6 47 00 .'....w.......G.
230A5B40 13 87 87 00 23 26 E1 00 03 AB 07 00 13 8E 06 00 ....#&..........
230A5B50 6F F0 9F B8 13 89 0C 00 83 27 C1 00 13 06 10 00 o........'......
230A5B60 93 86 77 00 93 F6 86 FF 93 87 86 00 23 26 F1 00 ..w.........#&..
230A5B70 03 AB 06 00 03 AE 46 00 6F F0 1F 8B 93 05 10 00 ......F.o.......
230A5B80 63 08 B6 78 93 05 20 00 13 89 0C 00 E3 16 B6 F0 c..x.. .........
230A5B90 13 0C 01 0F 83 27 01 01 93 76 FB 00 13 16 CE 01 .....'...v......
230A5BA0 B3 86 D7 00 83 C6 06 00 93 57 4B 00 13 0C FC FF .........WK.....
230A5BB0 33 6B F6 00 13 5E 4E 00 23 00 DC 00 B3 66 CB 01 3k...^N.#....f..
230A5BC0 E3 9A 06 FC 93 07 01 0F 33 8B 87 41 93 0C 09 00 ........3..A....
230A5BD0 6F F0 5F 88                                     o._.           

l230A5BD4:
	addi	a2,zero,+00000001
	addi	a3,zero,+00000000
	addi	a1,s1,+00000000
	jal	zero,00000000230A5784

l230A5BE4:
	sub	t3,s0,s2
	bge	zero,t3,00000000230A5590

l230A5BEC:
	addi	a0,zero,+00000010
	bge	a0,t3,00000000230A6354

l230A5BF4:
	auipc	t5,00000026
	addi	t5,t5,-000003C4
	addi	t4,zero,+00000010
	addi	t6,zero,+00000007
	jal	zero,00000000230A5C1C

l230A5C08:
	addi	a0,a2,+00000002
	addi	s11,s11,+00000008
	addi	a2,a1,+00000000

l230A5C14:
	addi	t3,t3,-00000010
	bge	t4,t3,00000000230A5C80

l230A5C1C:
	addi	a5,a5,+00000010
	addi	a1,a2,+00000001
	sw	t5,s11,+00000000
	sw	t4,s11,+00000004
	sw	a5,sp,+00000048
	sw	a1,sp,+00000044
	bge	t6,a1,00000000230A5C08

l230A5C38:
	beq	a5,zero,00000000230A5DB8

l230A5C3C:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t5,sp,+00000014
	sw	t3,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5C58:
	lw	t3,sp,+00000008
	lw	a2,sp,+00000044
	addi	t4,zero,+00000010
	addi	t3,t3,-00000010
	lw	a5,sp,+00000048
	addi	s11,s1,+00000000
	addi	a0,a2,+00000001
	lw	t5,sp,+00000014
	addi	t6,zero,+00000007
	blt	t4,t3,00000000230A5C1C

l230A5C80:
	addi	t6,s11,+00000008

l230A5C84:
	add	a5,a5,t3
	sw	t5,s11,+00000000
	sw	t3,s11,+00000004
	sw	a5,sp,+00000048
	sw	a0,sp,+00000044
	addi	a4,zero,+00000007
	bge	a4,a0,00000000230A6020

l230A5CA0:
	beq	a5,zero,00000000230A626C

l230A5CA4:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5CB8:
	lw	a2,sp,+00000044
	sub	s7,s7,s6
	lw	a5,sp,+00000048
	addi	a1,sp,+00000054
	addi	t4,a2,+00000001
	addi	s11,s1,+00000000
	bge	zero,s7,00000000230A5598

l230A5CD4:
	addi	a0,zero,+00000010
	bge	a0,s7,00000000230A625C

l230A5CDC:
	auipc	t5,00000026
	addi	t5,t5,-000004AC
	addi	t3,zero,+00000010
	addi	t6,zero,+00000007
	jal	zero,00000000230A5D04

l230A5CF0:
	addi	t4,a2,+00000002
	addi	s11,s11,+00000008
	addi	a2,a1,+00000000

l230A5CFC:
	addi	s7,s7,-00000010
	bge	t3,s7,00000000230A5D60

l230A5D04:
	addi	a5,a5,+00000010
	addi	a1,a2,+00000001
	sw	t5,s11,+00000000
	sw	t3,s11,+00000004
	sw	a5,sp,+00000048
	sw	a1,sp,+00000044
	bge	t6,a1,00000000230A5CF0

l230A5D20:
	beq	a5,zero,00000000230A5D90

l230A5D24:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t5,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5D3C:
	lw	a2,sp,+00000044
	addi	t3,zero,+00000010
	addi	s7,s7,-00000010
	lw	a5,sp,+00000048
	addi	s11,s1,+00000000
	addi	t4,a2,+00000001
	lw	t5,sp,+00000008
	addi	t6,zero,+00000007
	blt	t3,s7,00000000230A5D04

l230A5D60:
	addi	a2,s11,+00000008

l230A5D64:
	add	a5,a5,s7
	sw	t5,s11,+00000000
	sw	s7,s11,+00000004
	sw	a5,sp,+00000048
	sw	t4,sp,+00000044
	addi	a4,zero,+00000007
	blt	a4,t4,00000000230A5F44

l230A5D80:
	addi	t4,t4,+00000001
	addi	a1,a2,+00000008
	addi	s11,a2,+00000000
	jal	zero,00000000230A5598

l230A5D90:
	addi	t4,zero,+00000001
	addi	a2,zero,+00000000
	addi	s11,s1,+00000000
	jal	zero,00000000230A5CFC

l230A5DA0:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	beq	a0,zero,00000000230A55FC

l230A5DB4:
	jal	zero,00000000230A5390

l230A5DB8:
	addi	a0,zero,+00000001
	addi	a2,zero,+00000000
	addi	s11,s1,+00000000
	jal	zero,00000000230A5C14

l230A5DC8:
	bne	a5,zero,00000000230A5FE8

l230A5DCC:
	lbu	a4,sp,+0000003B
	bne	a4,zero,00000000230A6288

l230A5DD4:
	beq	t0,zero,00000000230A5FC4

l230A5DD8:
	addi	a5,sp,+0000003C
	sw	a5,sp,+0000004C
	addi	a5,zero,+00000002
	sw	a5,sp,+00000050
	addi	t4,zero,+00000001
	addi	a1,sp,+00000054

l230A5DF0:
	addi	a2,t4,+00000000
	addi	s11,a1,+00000000
	addi	t4,t4,+00000001
	addi	a1,a1,+00000008
	jal	zero,00000000230A5588

l230A5E04:
	beq	a5,zero,00000000230A5DD4

l230A5E08:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t6,sp,+00000014
	sw	t0,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5E24:
	lw	a2,sp,+00000044
	lw	a5,sp,+00000048
	addi	a1,sp,+00000054
	addi	t4,a2,+00000001
	addi	s11,s1,+00000000
	lw	t6,sp,+00000014
	lw	t0,sp,+00000008
	jal	zero,00000000230A552C
230A5E44             13 89 0C 00 6F F0 1F C4                 ....o...   

l230A5E4C:
	addi	a0,zero,+00000010
	bge	a0,t3,00000000230A6334

l230A5E54:
	auipc	t4,00000026
	addi	t4,t4,-00000634
	addi	t5,zero,+00000010
	addi	t2,zero,+00000007
	jal	zero,00000000230A5E80

l230A5E68:
	addi	a0,a2,+00000002
	addi	s11,s11,+00000008
	addi	a2,a1,+00000000

l230A5E74:
	addi	t3,t3,-00000010
	bge	t5,t3,00000000230A5EF0

l230A5E7C:
	addi	a1,a2,+00000001

l230A5E80:
	addi	a5,a5,+00000010
	sw	t4,s11,+00000000
	sw	t5,s11,+00000004
	sw	a5,sp,+00000048
	sw	a1,sp,+00000044
	bge	t2,a1,00000000230A5E68

l230A5E98:
	beq	a5,zero,00000000230A5F1C

l230A5E9C:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t4,sp,+0000001C
	sw	t3,sp,+00000018
	sw	t6,sp,+00000014
	sw	t0,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5EC0:
	lw	t3,sp,+00000018
	lw	a2,sp,+00000044
	addi	t5,zero,+00000010
	addi	t3,t3,-00000010
	lw	a5,sp,+00000048
	addi	s11,s1,+00000000
	addi	a0,a2,+00000001
	lw	t4,sp,+0000001C
	addi	t2,zero,+00000007
	lw	t6,sp,+00000014
	lw	t0,sp,+00000008
	blt	t5,t3,00000000230A5E7C

l230A5EF0:
	add	a5,a5,t3
	sw	t4,s11,+00000000
	sw	t3,s11,+00000004
	sw	a5,sp,+00000048
	sw	a0,sp,+00000044
	addi	a2,zero,+00000007
	blt	a2,a0,00000000230A5DC8

l230A5F0C:
	addi	s11,s11,+00000008
	addi	t4,a0,+00000001
	addi	a2,a0,+00000000
	jal	zero,00000000230A54EC

l230A5F1C:
	addi	a2,zero,+00000000
	addi	a0,zero,+00000001
	addi	s11,s1,+00000000
	jal	zero,00000000230A5E74

l230A5F2C:
	bge	s0,s2,00000000230A5F34

l230A5F30:
	addi	s0,s2,+00000000

l230A5F34:
	lw	a5,sp,+00000004
	add	a5,a5,s0
	sw	a5,sp,+00000004
	jal	zero,00000000230A55FC

l230A5F44:
	beq	a5,zero,00000000230A60A4

l230A5F48:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A5F5C:
	lw	t4,sp,+00000044
	lw	a5,sp,+00000048
	addi	a1,sp,+00000054
	addi	t4,t4,+00000001
	addi	s11,s1,+00000000
	jal	zero,00000000230A5598

l230A5F74:
	sw	zero,sp,+00000044
	addi	s11,s1,+00000000
	jal	zero,00000000230A5288
230A5F80 63 98 0B 38 93 0B 00 00 13 0B 00 00 13 0C 01 0F c..8............
230A5F90 6F F0 4F CC 93 F5 0C 20 63 98 05 34 13 8B 07 00 o.O.... c..4....
230A5FA0 13 0E 00 00 6F F0 CF C6                         ....o...       

l230A5FA8:
	addi	a1,sp,+00000054
	addi	t4,zero,+00000001
	addi	a2,zero,+00000000
	addi	s11,s1,+00000000
	jal	zero,00000000230A5588

l230A5FBC:
	addi	s2,s10,+00000000
	jal	zero,00000000230A529C

l230A5FC4:
	addi	a2,zero,+00000000
	addi	a1,sp,+00000054
	addi	t4,zero,+00000001
	addi	s11,s1,+00000000
	jal	zero,00000000230A5588
230A5FD8                         93 07 00 03 A3 07 F1 0E         ........
230A5FE0 13 0C F1 0E 6F F0 0F C7                         ....o...       

l230A5FE8:
	addi	a2,sp,+00000040
	addi	a1,s3,+00000000
	addi	a0,s4,+00000000
	sw	t6,sp,+00000014
	sw	t0,sp,+00000008
	jal	ra,00000000230A501C
	bne	a0,zero,00000000230A5390

l230A6004:
	lw	a2,sp,+00000044
	lw	a5,sp,+00000048
	addi	s11,s1,+00000000
	addi	t4,a2,+00000001
	lw	t6,sp,+00000014
	lw	t0,sp,+00000008
	jal	zero,00000000230A54EC

l230A6020:
	addi	t4,a0,+00000001
	addi	a1,t6,+00000008
	addi	a2,a0,+00000000
	addi	s11,t6,+00000000
	jal	zero,00000000230A5590
230A6034             93 05 00 03 93 EC 2C 00 A3 0E C1 02     ......,.....
230A6040 23 0E B1 02 13 F9 FC BF 13 06 20 00 6F F0 CF BD #......... .o...
230A6050 83 27 01 02 03 46 0D 00 63 80 07 A6 83 C7 07 00 .'...F..c.......
230A6060 63 8C 07 A4 93 EC 0C 40 6F F0 0F A5 83 27 07 00 c......@o....'..
230A6070 03 27 41 00 23 26 C1 00 93 56 F7 41 23 A0 E7 00 .'A.#&...V.A#...
230A6080 23 A2 D7 00 6F F0 8F 98 13 05 0C 00 EF E0 4F 99 #...o.........O.
230A6090 03 27 81 00 13 0B 05 00 93 0B 00 00 23 26 E1 00 .'..........#&..
230A60A0 6F F0 4F BB                                     o.O.           

l230A60A4:
	addi	a4,zero,+00000001
	addi	a5,s6,+00000000
	sw	s8,sp,+0000004C
	sw	s6,sp,+00000050
	sw	s6,sp,+00000048
	sw	a4,sp,+00000044
	addi	a1,sp,+00000054
	jal	zero,00000000230A55D4
230A60C4             93 77 09 40 23 2A F1 00 93 0C 00 00     .w.@#*......
230A60D0 13 0C 01 0F 6F 00 C0 02 93 05 0E 00 13 06 A0 00 ....o...........
230A60E0 93 06 00 00 13 05 0B 00 23 24 C1 01 EF 90 5F B8 ........#$...._.
230A60F0 03 2E 81 00 63 02 0E 22 13 0B 05 00 13 8E 05 00 ....c.."........
230A6100 93 05 0E 00 13 06 A0 00 93 06 00 00 13 05 0B 00 ................
230A6110 23 24 C1 01 EF 90 1F F9 83 27 41 01 13 05 05 03 #$.......'A.....
230A6120 A3 0F AC FE 93 8C 1C 00 13 0C FC FF 03 2E 81 00 ................
230A6130 E3 84 07 FA 83 27 01 02 83 C6 07 00 E3 9E 96 F9 .....'..........
230A6140 93 07 F0 0F E3 8A FC F8 63 16 0E 00 93 07 90 00 ........c.......
230A6150 E3 FA 67 A7 83 27 81 02 83 25 41 02 23 24 C1 01 ..g..'...%A.#$..
230A6160 33 0C FC 40 13 86 07 00 13 05 0C 00 EF E0 0F A3 3..@............
230A6170 03 27 01 02 03 2E 81 00 13 06 A0 00 83 45 17 00 .'...........E..
230A6180 93 06 00 00 13 05 0B 00 B3 37 B0 00 B3 07 F7 00 .........7......
230A6190 93 05 0E 00 23 20 F1 02 93 0C 00 00 EF 90 5F AD ....# ........_.
230A61A0 6F F0 9F F5 03 46 1D 00 93 EC 0C 20 13 0D 1D 00 o....F..... ....
230A61B0 6F F0 8F 90 03 46 1D 00 93 EC 0C 02 13 0D 1D 00 o....F..........
230A61C0 6F F0 8F 8F 83 27 C1 00 03 27 41 00 83 A7 07 00 o....'...'A.....
230A61D0 23 26 C1 00 23 A0 E7 00 6F F0 4F 83 93 07 60 00 #&..#...o.O...`.
230A61E0 13 8B 0B 00 63 EE 77 09 13 09 0B 00 23 26 E1 00 ....c.w.....#&..
230A61F0 17 0C 02 00 13 0C 8C F4 6F F0 4F AC 93 F7 0C 20 ........o.O.... 
230A6200 63 8A 07 0E 83 27 C1 00 13 89 0C 00 23 26 C1 00 c....'......#&..
230A6210 03 8B 07 00 13 5E FB 41 93 06 0E 00 6F F0 CF CB .....^.A....o...
230A6220 93 F5 0C 20 63 86 05 0A 23 26 C1 00 13 FB F7 0F ... c...#&......
230A6230 13 0E 00 00 13 89 0C 00 13 06 10 00 6F F0 CF 9E ............o...
230A6240 93 F5 0C 20 63 8C 05 06 13 FB F7 0F 13 0E 00 00 ... c...........
230A6250 93 86 0C 00 23 26 C1 00 6F F0 9F 8C             ....#&..o...   

l230A625C:
	addi	a2,a1,+00000000
	auipc	t5,00000025
	addi	t5,t5,+000005D0
	jal	zero,00000000230A5D64

l230A626C:
	addi	a1,sp,+00000054
	addi	t4,zero,+00000001
	addi	a2,zero,+00000000
	addi	s11,s1,+00000000
	jal	zero,00000000230A5590
230A6280 13 0B 60 00 6F F0 5F F6                         ..`.o._.       

l230A6288:
	addi	a5,sp,+0000003B
	sw	a5,sp,+0000004C
	addi	a5,zero,+00000001
	sw	a5,sp,+00000050
	addi	t4,zero,+00000001
	addi	a1,sp,+00000054
	jal	zero,00000000230A551C
230A62A4             83 27 C1 00 03 27 41 00 23 26 C1 00     .'...'A.#&..
230A62B0 83 A7 07 00 23 90 E7 00 6F E0 5F F5 13 8B 07 00 ....#...o._.....
230A62C0 13 0E 00 00 93 86 0C 00 23 26 C1 00 6F F0 5F 85 ........#&..o._.
230A62D0 23 26 C1 00 13 8B 07 00 13 0E 00 00 13 89 0C 00 #&..............
230A62E0 13 06 10 00 6F F0 4F 94 13 FB F7 0F 13 0E 00 00 ....o.O.........
230A62F0 6F F0 0F 92 83 27 C1 00 13 89 0C 00 23 26 C1 00 o....'......#&..
230A6300 03 AB 07 00 13 5E FB 41 93 06 0E 00 6F F0 CF BC .....^.A....o...
230A6310 13 89 0C 00 6F F0 CF BE 93 07 90 00 E3 EE 67 DD ....o.........g.
230A6320 6F F0 5F 8A 13 8B 0B 00 23 26 E1 00 93 0B 00 00 o._.....#&......
230A6330 6F F0 4F 92                                     o.O.           

l230A6334:
	addi	a0,a1,+00000000
	auipc	t4,00000025
	addi	t4,t4,+000004E8
	jal	zero,00000000230A5EF0

l230A6344:
	addi	a2,a3,+00000001
	auipc	t4,00000025
	addi	t4,t4,+000004D8
	jal	zero,00000000230A57E0

l230A6354:
	addi	t6,a1,+00000000
	addi	a0,t4,+00000000
	auipc	t5,00000025
	addi	t5,t5,+000004D4
	jal	zero,00000000230A5C84

l230A6368:
	addi	a5,zero,-00000001
	sw	a5,sp,+00000004
	jal	zero,00000000230A53A0
230A6374             03 27 C1 00 83 2B 07 00 13 0C 47 00     .'...+....G.
230A6380 63 D4 0B 00 93 0B F0 FF 03 46 1D 00 23 26 81 01 c........F..#&..
230A6390 13 8D 07 00 6F E0 5F F2 13 89 0C 00 6F F0 0F A8 ....o._.....o...
230A63A0 93 86 0C 00 6F F0 8F AF 13 89 0C 00 6F F0 8F B1 ....o.......o...

;; vfiprintf: 230A63B0
vfiprintf proc
	auipc	a5,0001EF69
	addi	a5,a5,-000006B4
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A5124

;; __sbprintf: 230A63CC
;;   Called from:
;;     230A5360 (in _vfiprintf_r)
__sbprintf proc
	lhu	a5,a1,+0000000C
	lw	t3,a1,+00000064
	lhu	t1,a1,+0000000E
	lw	a7,a1,+0000001C
	lw	a6,a1,+00000024
	addi	sp,sp,-00000480
	andi	a5,a5,-00000003
	addi	a4,zero,+00000400
	sw	s0,sp,+00000478
	sh	a5,sp,+00000014
	addi	s0,a1,+00000000
	addi	a5,sp,+00000070
	addi	a1,sp,+00000008
	sw	s1,sp,+00000474
	sw	s2,sp,+00000470
	sw	ra,sp,+0000047C
	addi	s2,a0,+00000000
	sw	t3,sp,+0000006C
	sh	t1,sp,+00000016
	sw	a7,sp,+00000024
	sw	a6,sp,+0000002C
	sw	a5,sp,+00000008
	sw	a5,sp,+00000018
	sw	a4,sp,+00000010
	sw	a4,sp,+0000001C
	sw	zero,sp,+00000020
	jal	ra,00000000230A5124
	addi	s1,a0,+00000000
	bge	a0,zero,00000000230A6474

l230A6440:
	lhu	a5,sp,+00000014
	andi	a5,a5,+00000040
	beq	a5,zero,00000000230A6458

l230A644C:
	lhu	a5,s0,+0000000C
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C

l230A6458:
	lw	ra,sp,+0000047C
	lw	s0,sp,+00000478
	addi	a0,s1,+00000000
	lw	s2,sp,+00000470
	lw	s1,sp,+00000474
	addi	sp,sp,+00000480
	jalr	zero,ra,+00000000

l230A6474:
	addi	a1,sp,+00000008
	addi	a0,s2,+00000000
	jal	ra,00000000230A6854
	beq	a0,zero,00000000230A6440

l230A6484:
	addi	s1,zero,-00000001
	jal	zero,00000000230A6440

;; __swsetup_r: 230A648C
;;   Called from:
;;     230A532C (in _vfiprintf_r)
;;     230A7388 (in __sfvwrite_r)
;;     230A8CF4 (in __swbuf_r)
__swsetup_r proc
	auipc	a5,0001EF69
	addi	a5,a5,-00000790
	lw	a5,a5,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	addi	s1,a0,+00000000
	addi	s0,a1,+00000000
	beq	a5,zero,00000000230A64BC

l230A64B4:
	lw	a4,a5,+00000038
	beq	a4,zero,00000000230A6544

l230A64BC:
	lh	a4,s0,+0000000C
	slli	a5,a4,00000010
	srli	a5,a5,00000010
	andi	a3,a5,+00000008
	beq	a3,zero,00000000230A6560

l230A64D0:
	lw	a3,s0,+00000010
	beq	a3,zero,00000000230A6588

l230A64D8:
	andi	a4,a5,+00000001
	beq	a4,zero,00000000230A650C

l230A64E0:
	lw	a5,s0,+00000014
	sw	zero,s0,+00000008
	addi	a0,zero,+00000000
	sub	a5,zero,a5
	sw	a5,s0,+00000018
	beq	a3,zero,00000000230A6528

l230A64F8:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A650C:
	andi	a5,a5,+00000002
	addi	a4,zero,+00000000
	bne	a5,zero,00000000230A651C

l230A6518:
	lw	a4,s0,+00000014

l230A651C:
	sw	a4,s0,+00000008
	addi	a0,zero,+00000000
	bne	a3,zero,00000000230A64F8

l230A6528:
	lh	a5,s0,+0000000C
	andi	a4,a5,+00000080
	beq	a4,zero,00000000230A64F8

l230A6534:
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C
	addi	a0,zero,-00000001
	jal	zero,00000000230A64F8

l230A6544:
	addi	a0,a5,+00000000
	jal	ra,00000000230A6C10
	lh	a4,s0,+0000000C
	slli	a5,a4,00000010
	srli	a5,a5,00000010
	andi	a3,a5,+00000008
	bne	a3,zero,00000000230A64D0

l230A6560:
	andi	a3,a5,+00000010
	beq	a3,zero,00000000230A65E0

l230A6568:
	andi	a5,a5,+00000004
	bne	a5,zero,00000000230A65AC

l230A6570:
	lw	a3,s0,+00000010

l230A6574:
	ori	a5,a4,+00000008
	sh	a5,s0,+0000000C
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	bne	a3,zero,00000000230A64D8

l230A6588:
	andi	a4,a5,+00000280
	addi	a2,zero,+00000200
	beq	a4,a2,00000000230A64D8

l230A6594:
	addi	a1,s0,+00000000
	addi	a0,s1,+00000000
	jal	ra,00000000230A7A4C
	lhu	a5,s0,+0000000C
	lw	a3,s0,+00000010
	jal	zero,00000000230A64D8

l230A65AC:
	lw	a1,s0,+00000030
	beq	a1,zero,00000000230A65CC

l230A65B4:
	addi	a5,s0,+00000040
	beq	a1,a5,00000000230A65C8

l230A65BC:
	addi	a0,s1,+00000000
	jal	ra,00000000230A6F7C
	lh	a4,s0,+0000000C

l230A65C8:
	sw	zero,s0,+00000030

l230A65CC:
	lw	a3,s0,+00000010
	andi	a4,a4,-00000025
	sw	zero,s0,+00000004
	sw	a3,s0,+00000000
	jal	zero,00000000230A6574

l230A65E0:
	addi	a5,zero,+00000009
	sw	a5,s1,+00000000
	ori	a4,a4,+00000040
	sh	a4,s0,+0000000C
	addi	a0,zero,-00000001
	jal	zero,00000000230A64F8

;; __sflush_r: 230A65F8
;;   Called from:
;;     230A68B0 (in _fflush_r)
;;     230A9030 (in _fclose_r)
__sflush_r proc
	lh	a5,a1,+0000000C
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	slli	a4,a5,00000010
	srli	a4,a4,00000010
	sw	s3,sp,+0000000C
	sw	ra,sp,+0000001C
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	andi	a3,a4,+00000008
	addi	s0,a1,+00000000
	addi	s3,a0,+00000000
	bne	a3,zero,00000000230A673C

l230A662C:
	lui	a4,00000001
	addi	a4,a4,-00000800
	lw	a3,a1,+00000004
	or	a5,a5,a4
	sh	a5,a1,+0000000C
	bge	zero,a3,00000000230A67C0

l230A6644:
	lw	a4,s0,+00000028
	beq	a4,zero,00000000230A671C

l230A664C:
	slli	a5,a5,00000010
	srli	a5,a5,00000010
	lw	s1,s3,+00000000
	slli	a3,a5,00000013
	sw	zero,s3,+00000000
	lw	a1,s0,+0000001C
	blt	a3,zero,00000000230A67CC

l230A6668:
	addi	a3,zero,+00000001
	addi	a2,zero,+00000000
	addi	a0,s3,+00000000
	jalr	ra,a4,+00000000
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A680C

l230A6680:
	lhu	a5,s0,+0000000C
	lw	a4,s0,+00000028
	lw	a1,s0,+0000001C

l230A668C:
	andi	a5,a5,+00000004
	beq	a5,zero,00000000230A66AC

l230A6694:
	lw	a3,s0,+00000004
	lw	a5,s0,+00000030
	sub	a0,a0,a3
	beq	a5,zero,00000000230A66AC

l230A66A4:
	lw	a5,s0,+0000003C
	sub	a0,a0,a5

l230A66AC:
	addi	a2,a0,+00000000
	addi	a3,zero,+00000000
	addi	a0,s3,+00000000
	jalr	ra,a4,+00000000
	addi	a5,zero,-00000001
	bne	a0,a5,00000000230A67D4

l230A66C4:
	lw	a4,s3,+00000000
	lh	a5,s0,+0000000C
	beq	a4,zero,00000000230A6834

l230A66D0:
	addi	a3,zero,+0000001D
	beq	a4,a3,00000000230A66E0

l230A66D8:
	addi	a3,zero,+00000016
	bne	a4,a3,00000000230A679C

l230A66E0:
	lw	a3,s0,+00000010
	lui	a4,000FFFFF
	addi	a4,a4,+000007FF
	and	a5,a5,a4
	sh	a5,s0,+0000000C
	sw	zero,s0,+00000004
	sw	a3,s0,+00000000

l230A66FC:
	lw	a1,s0,+00000030
	sw	s1,s3,+00000000
	beq	a1,zero,00000000230A671C

l230A6708:
	addi	a5,s0,+00000040
	beq	a1,a5,00000000230A6718

l230A6710:
	addi	a0,s3,+00000000
	jal	ra,00000000230A6F7C

l230A6718:
	sw	zero,s0,+00000030

l230A671C:
	addi	a0,zero,+00000000

l230A6720:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A673C:
	lw	s2,a1,+00000010
	beq	s2,zero,00000000230A671C

l230A6744:
	lw	s1,a1,+00000000
	andi	a4,a4,+00000003
	sw	s2,a1,+00000000
	sub	s1,s1,s2
	addi	a5,zero,+00000000
	bne	a4,zero,00000000230A6760

l230A675C:
	lw	a5,a1,+00000014

l230A6760:
	sw	a5,s0,+00000008
	blt	zero,s1,00000000230A6774

l230A6768:
	jal	zero,00000000230A671C

l230A676C:
	add	s2,s2,a0
	bge	zero,s1,00000000230A671C

l230A6774:
	lw	a5,s0,+00000024
	lw	a1,s0,+0000001C
	addi	a3,s1,+00000000
	addi	a2,s2,+00000000
	addi	a0,s3,+00000000
	jalr	ra,a5,+00000000
	sub	s1,s1,a0
	blt	zero,a0,00000000230A676C

l230A6794:
	lhu	a5,s0,+0000000C
	addi	a0,zero,-00000001

l230A679C:
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A67C0:
	lw	a4,a1,+0000003C
	blt	zero,a4,00000000230A6644

l230A67C8:
	jal	zero,00000000230A671C

l230A67CC:
	lw	a0,s0,+00000050
	jal	zero,00000000230A668C

l230A67D4:
	lhu	a5,s0,+0000000C
	lui	a4,000FFFFF
	addi	a4,a4,+000007FF
	and	a5,a5,a4
	lw	a3,s0,+00000010
	slli	a5,a5,00000010
	srai	a5,a5,00000010

l230A67F0:
	sh	a5,s0,+0000000C
	sw	zero,s0,+00000004
	sw	a3,s0,+00000000
	slli	a4,a5,00000013
	bge	a4,zero,00000000230A66FC

l230A6804:
	sw	a0,s0,+00000050
	jal	zero,00000000230A66FC

l230A680C:
	lw	a5,s3,+00000000
	beq	a5,zero,00000000230A6680

l230A6814:
	addi	a4,zero,+0000001D
	beq	a5,a4,00000000230A6848

l230A681C:
	addi	a4,zero,+00000016
	beq	a5,a4,00000000230A6848

l230A6824:
	lhu	a5,s0,+0000000C
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C
	jal	zero,00000000230A6720

l230A6834:
	lui	a4,000FFFFF
	addi	a4,a4,+000007FF
	lw	a3,s0,+00000010
	and	a5,a5,a4
	jal	zero,00000000230A67F0

l230A6848:
	sw	s1,s3,+00000000
	addi	a0,zero,+00000000
	jal	zero,00000000230A6720

;; _fflush_r: 230A6854
;;   Called from:
;;     230A647C (in __sbprintf)
;;     230A68C8 (in fflush)
;;     230A75C8 (in __sfvwrite_r)
;;     230A76A8 (in __sfvwrite_r)
;;     230A76CC (in __sfvwrite_r)
;;     230A8D54 (in __swbuf_r)
;;     230A8D8C (in __swbuf_r)
_fflush_r proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	addi	s0,a0,+00000000
	beq	a0,zero,00000000230A6870

l230A6868:
	lw	a5,a0,+00000038
	beq	a5,zero,00000000230A688C

l230A6870:
	lh	a5,a1,+0000000C
	bne	a5,zero,00000000230A68A0

l230A6878:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,zero,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A688C:
	sw	a1,sp,+0000000C
	jal	ra,00000000230A6C10
	lw	a1,sp,+0000000C
	lh	a5,a1,+0000000C
	beq	a5,zero,00000000230A6878

l230A68A0:
	addi	a0,s0,+00000000
	lw	s0,sp,+00000018
	lw	ra,sp,+0000001C
	addi	sp,sp,+00000020
	jal	zero,00000000230A65F8

;; fflush: 230A68B4
fflush proc
	addi	a1,a0,+00000000
	beq	a0,zero,00000000230A68CC

l230A68BC:
	auipc	a5,0001EF68
	addi	a5,a5,+00000440
	lw	a0,a5,+00000000
	jal	zero,00000000230A6854

l230A68CC:
	auipc	a5,0001EF68
	addi	a5,a5,+000005D4
	lw	a0,a5,+00000000
	auipc	a1,00000000
	addi	a1,a1,-00000084
	jal	zero,00000000230A77FC

;; __fp_lock: 230A68E4
__fp_lock proc
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; _cleanup_r: 230A68EC
_cleanup_r proc
	auipc	a1,00000002
	addi	a1,a1,+000006E8
	jal	zero,00000000230A77FC

;; __sinit.part.0: 230A68F8
;;   Called from:
;;     230A6BCC (in __sfp)
;;     230A6C1C (in __sinit)
__sinit.part.0 proc
	addi	sp,sp,-00000020
	sw	ra,sp,+0000001C
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	sw	s5,sp,+00000004
	sw	s6,sp,+00000000
	lw	s0,a0,+00000004
	auipc	a4,00000000
	addi	a4,a4,-00000034
	sw	a4,a0,+0000003C
	addi	a5,a0,+000002EC
	addi	a4,zero,+00000003
	sw	a4,a0,+000002E4
	sw	a5,a0,+000002E8
	sw	zero,a0,+000002E0
	addi	a5,zero,+00000004
	addi	s2,a0,+00000000
	sw	a5,s0,+0000000C
	addi	a2,zero,+00000008
	addi	a1,zero,+00000000
	sw	zero,s0,+00000064
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	addi	a0,s0,+0000005C
	jal	ra,00000000230A3A68
	lw	s1,s2,+00000008
	auipc	s6,00000002
	addi	s6,s6,+00000148
	auipc	s5,00000002
	addi	s5,s5,+000001A4
	auipc	s4,00000002
	addi	s4,s4,+00000224
	auipc	s3,00000002
	addi	s3,s3,+00000284
	lui	a5,00000010
	sw	s6,s0,+00000020
	sw	s5,s0,+00000024
	sw	s4,s0,+00000028
	sw	s3,s0,+0000002C
	sw	s0,s0,+0000001C
	addi	a5,a5,+00000009
	sw	a5,s1,+0000000C
	addi	a2,zero,+00000008
	addi	a1,zero,+00000000
	sw	zero,s1,+00000064
	sw	zero,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000008
	sw	zero,s1,+00000010
	sw	zero,s1,+00000014
	sw	zero,s1,+00000018
	addi	a0,s1,+0000005C
	jal	ra,00000000230A3A68
	lw	s0,s2,+0000000C
	lui	a5,00000020
	sw	s6,s1,+00000020
	sw	s5,s1,+00000024
	sw	s4,s1,+00000028
	sw	s3,s1,+0000002C
	sw	s1,s1,+0000001C
	addi	a5,a5,+00000012
	sw	a5,s0,+0000000C
	sw	zero,s0,+00000064
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	addi	a0,s0,+0000005C
	addi	a2,zero,+00000008
	addi	a1,zero,+00000000
	jal	ra,00000000230A3A68
	lw	ra,sp,+0000001C
	sw	s6,s0,+00000020
	sw	s5,s0,+00000024
	sw	s4,s0,+00000028
	sw	s3,s0,+0000002C
	sw	s0,s0,+0000001C
	lw	s0,sp,+00000018
	addi	a5,zero,+00000001
	sw	a5,s2,+00000038
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	lw	s5,sp,+00000004
	lw	s6,sp,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

;; __fp_unlock: 230A6A7C
__fp_unlock proc
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; __sfmoreglue: 230A6A84
;;   Called from:
;;     230A6BDC (in __sfp)
__sfmoreglue proc
	addi	sp,sp,-00000010
	sw	s1,sp,+00000004
	addi	a2,zero,+00000068
	addi	s1,a1,-00000001
	add	s1,s1,a2
	sw	s2,sp,+00000000
	addi	s2,a1,+00000000
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	a1,s1,+00000074
	jal	ra,00000000230A7B6C
	addi	s0,a0,+00000000
	beq	a0,zero,00000000230A6AD4

l230A6AB8:
	addi	a0,a0,+0000000C
	sw	zero,s0,+00000000
	sw	s2,s0,+00000004
	sw	a0,s0,+00000008
	addi	a2,s1,+00000068
	addi	a1,zero,+00000000
	jal	ra,00000000230A3A68

l230A6AD4:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; __sfp: 230A6AF0
__sfp proc
	addi	sp,sp,-00000020
	auipc	a5,0001EF68
	addi	a5,a5,+000003AC
	sw	s2,sp,+00000010
	lw	s2,a5,+00000000
	sw	s3,sp,+0000000C
	sw	ra,sp,+0000001C
	lw	a5,s2,+00000038
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	addi	s3,a0,+00000000
	beq	a5,zero,00000000230A6BC8

l230A6B20:
	addi	s2,s2,+000002E0
	addi	s1,zero,-00000001

l230A6B28:
	lw	a5,s2,+00000004
	lw	s0,s2,+00000008
	addi	a5,a5,-00000001
	bge	a5,zero,00000000230A6B48

l230A6B38:
	jal	zero,00000000230A6BB8

l230A6B3C:
	addi	a5,a5,-00000001
	addi	s0,s0,+00000068
	beq	a5,s1,00000000230A6BB8

l230A6B48:
	lh	a4,s0,+0000000C
	bne	a4,zero,00000000230A6B3C

l230A6B50:
	lui	a5,000FFFF0
	addi	a5,a5,+00000001
	sw	zero,s0,+00000064
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	a5,s0,+0000000C
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	addi	a2,zero,+00000008
	addi	a1,zero,+00000000
	addi	a0,s0,+0000005C
	jal	ra,00000000230A3A68
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	sw	zero,s0,+00000044
	sw	zero,s0,+00000048

l230A6B98:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A6BB8:
	lw	s0,s2,+00000000
	beq	s0,zero,00000000230A6BD4

l230A6BC0:
	addi	s2,s0,+00000000
	jal	zero,00000000230A6B28

l230A6BC8:
	addi	a0,s2,+00000000
	jal	ra,00000000230A68F8
	jal	zero,00000000230A6B20

l230A6BD4:
	addi	a1,zero,+00000004
	addi	a0,s3,+00000000
	jal	ra,00000000230A6A84
	sw	a0,s2,+00000000
	addi	s0,a0,+00000000
	bne	a0,zero,00000000230A6BC0

l230A6BEC:
	addi	a5,zero,+0000000C
	sw	a5,s3,+00000000
	jal	zero,00000000230A6B98

;; _cleanup: 230A6BF8
_cleanup proc
	auipc	a5,0001EF68
	addi	a5,a5,+000002A8
	lw	a0,a5,+00000000
	auipc	a1,00000002
	addi	a1,a1,+000003D0
	jal	zero,00000000230A77FC

;; __sinit: 230A6C10
;;   Called from:
;;     230A5AF8 (in _vfiprintf_r)
;;     230A6548 (in __swsetup_r)
;;     230A6890 (in _fflush_r)
;;     230A6E34 (in fputwc)
;;     230A8D9C (in __swbuf_r)
;;     230A90B4 (in _fclose_r)
__sinit proc
	lw	a5,a0,+00000038
	beq	a5,zero,00000000230A6C1C

l230A6C18:
	jalr	zero,ra,+00000000

l230A6C1C:
	jal	zero,00000000230A68F8

;; __sfp_lock_acquire: 230A6C20
;;   Called from:
;;     230A908C (in _fclose_r)
__sfp_lock_acquire proc
	jalr	zero,ra,+00000000

;; __sfp_lock_release: 230A6C24
;;   Called from:
;;     230A9094 (in _fclose_r)
__sfp_lock_release proc
	jalr	zero,ra,+00000000

;; __sinit_lock_acquire: 230A6C28
__sinit_lock_acquire proc
	jalr	zero,ra,+00000000

;; __sinit_lock_release: 230A6C2C
__sinit_lock_release proc
	jalr	zero,ra,+00000000

;; __fp_lock_all: 230A6C30
__fp_lock_all proc
	auipc	a5,0001EF68
	addi	a5,a5,+000000CC
	lw	a0,a5,+00000000
	auipc	a1,00000000
	addi	a1,a1,-00000358
	jal	zero,00000000230A774C

;; __fp_unlock_all: 230A6C48
__fp_unlock_all proc
	auipc	a5,0001EF68
	addi	a5,a5,+000000B4
	lw	a0,a5,+00000000
	auipc	a1,00000000
	addi	a1,a1,-000001D8
	jal	zero,00000000230A774C

;; __fputwc: 230A6C60
;;   Called from:
;;     230A6DB4 (in _fputwc_r)
;;     230A6E28 (in fputwc)
__fputwc proc
	addi	sp,sp,-00000030
	sw	s0,sp,+00000028
	sw	s3,sp,+0000001C
	sw	s5,sp,+00000014
	sw	ra,sp,+0000002C
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s4,sp,+00000018
	sw	s6,sp,+00000010
	addi	s3,a0,+00000000
	addi	s5,a1,+00000000
	addi	s0,a2,+00000000
	jal	ra,00000000230A7958
	addi	a5,zero,+00000001
	bne	a0,a5,00000000230A6CB8

l230A6C9C:
	addi	a5,s5,-00000001
	addi	a4,zero,+000000FE
	bltu	a4,a5,00000000230A6CB8

l230A6CA8:
	andi	a4,s5,+000000FF
	sb	a4,sp,+0000000C
	addi	s2,zero,+00000001
	jal	zero,00000000230A6CE0

l230A6CB8:
	addi	a3,s0,+0000005C
	addi	a2,s5,+00000000
	addi	a1,sp,+0000000C
	addi	a0,s3,+00000000
	jal	ra,00000000230A8DBC
	addi	a5,zero,-00000001
	addi	s2,a0,+00000000
	beq	a0,a5,00000000230A6D7C

l230A6CD8:
	beq	a0,zero,00000000230A6D74

l230A6CDC:
	lbu	a4,sp,+0000000C

l230A6CE0:
	addi	s1,zero,+00000000
	addi	s4,zero,-00000001
	addi	s6,zero,+0000000A
	jal	zero,00000000230A6D14

l230A6CF0:
	lw	a5,s0,+00000000
	addi	a3,a5,+00000001
	sw	a3,s0,+00000000
	sb	a4,a5,+00000000

l230A6D00:
	addi	s1,s1,+00000001
	addi	a5,sp,+0000000C
	add	a5,a5,s1
	bgeu	s1,s2,00000000230A6D74

l230A6D10:
	lbu	a4,a5,+00000000

l230A6D14:
	lw	a5,s0,+00000008
	addi	a5,a5,-00000001
	sw	a5,s0,+00000008
	bge	a5,zero,00000000230A6CF0

l230A6D24:
	lw	a3,s0,+00000018
	addi	a1,a4,+00000000
	addi	a2,s0,+00000000
	addi	a0,s3,+00000000
	blt	a5,a3,00000000230A6D3C

l230A6D38:
	bne	a4,s6,00000000230A6CF0

l230A6D3C:
	jal	ra,00000000230A8C20
	bne	a0,s4,00000000230A6D00

l230A6D44:
	addi	s2,zero,-00000001

l230A6D48:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	addi	a0,s2,+00000000
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l230A6D74:
	addi	s2,s5,+00000000
	jal	zero,00000000230A6D48

l230A6D7C:
	lhu	a5,s0,+0000000C
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C
	jal	zero,00000000230A6D48

;; _fputwc_r: 230A6D8C
;;   Called from:
;;     230A509C (in __sprint_r.part.0)
_fputwc_r proc
	lh	a5,a2,+0000000C
	slli	a4,a5,00000012
	blt	a4,zero,00000000230A6DB4

l230A6D98:
	lw	a4,a2,+00000064
	lui	a3,00000002
	or	a5,a5,a3
	lui	a3,00000002
	or	a4,a4,a3
	sh	a5,a2,+0000000C
	sw	a4,a2,+00000064

l230A6DB4:
	jal	zero,00000000230A6C60

;; fputwc: 230A6DB8
fputwc proc
	addi	sp,sp,-00000020
	auipc	a5,0001EF68
	addi	a5,a5,-000000C0
	sw	s0,sp,+00000018
	lw	s0,a5,+00000000
	sw	s1,sp,+00000014
	sw	ra,sp,+0000001C
	addi	s1,a0,+00000000
	addi	a2,a1,+00000000
	beq	s0,zero,00000000230A6DE8

l230A6DE0:
	lw	a5,s0,+00000038
	beq	a5,zero,00000000230A6E2C

l230A6DE8:
	lh	a5,a2,+0000000C
	slli	a4,a5,00000012
	blt	a4,zero,00000000230A6E10

l230A6DF4:
	lw	a4,a2,+00000064
	lui	a3,00000002
	or	a5,a5,a3
	lui	a3,00000002
	or	a4,a4,a3
	sh	a5,a2,+0000000C
	sw	a4,a2,+00000064

l230A6E10:
	addi	a0,s0,+00000000
	lw	s0,sp,+00000018
	lw	ra,sp,+0000001C
	addi	a1,s1,+00000000
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jal	zero,00000000230A6C60

l230A6E2C:
	addi	a0,s0,+00000000
	sw	a1,sp,+0000000C
	jal	ra,00000000230A6C10
	lw	a2,sp,+0000000C
	jal	zero,00000000230A6DE8

;; _malloc_trim_r: 230A6E40
;;   Called from:
;;     230A71C0 (in _free_r)
_malloc_trim_r proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	addi	s0,a1,+00000000
	sw	ra,sp,+0000001C
	auipc	s3,0001EF68
	addi	s3,s3,-00000778
	addi	s2,a0,+00000000
	jal	ra,00000000230A8420
	lw	a3,s3,+00000008
	lui	a4,00000001
	addi	a5,a4,-00000011
	lw	s1,a3,+00000004
	sub	s0,a5,s0
	andi	s1,s1,-00000004
	add	s0,s0,s1
	srli	s0,s0,0000000C
	addi	s0,s0,-00000001
	slli	s0,s0,0000000C
	blt	s0,a4,00000000230A6EB0

l230A6E98:
	addi	a1,zero,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	lw	a5,s3,+00000008
	add	a5,a5,s1
	beq	a0,a5,00000000230A6ED8

l230A6EB0:
	addi	a0,s2,+00000000
	jal	ra,00000000230A8424
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	addi	a0,zero,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A6ED8:
	sub	a1,zero,s0
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A6F3C

l230A6EEC:
	auipc	a5,0001EF78
	addi	a5,a5,-000005C8
	lw	a5,a5,+00000000
	lw	a4,s3,+00000008
	sub	s1,s1,s0
	ori	s1,s1,+00000001
	sub	s0,a5,s0
	addi	a0,s2,+00000000
	sw	s1,a4,+00000004
	auipc	a5,0001EF78
	sw	s0,a5,+00000A14
	jal	ra,00000000230A8424
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	addi	a0,zero,+00000001
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A6F3C:
	addi	a1,zero,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	lw	a4,s3,+00000008
	addi	a3,zero,+0000000F
	sub	a5,a0,a4
	bge	a3,a5,00000000230A6EB0

l230A6F58:
	auipc	a3,0001EF68
	addi	a3,a3,-00000258
	lw	a3,a3,+00000000
	ori	a5,a5,+00000001
	sw	a5,a4,+00000004
	sub	a0,a0,a3
	auipc	a5,0001EF78
	sw	a0,a5,+000009B4
	jal	zero,00000000230A6EB0

;; _free_r: 230A6F7C
;;   Called from:
;;     230A65C0 (in __swsetup_r)
;;     230A6714 (in __sflush_r)
;;     230A771C (in __sfvwrite_r)
;;     230A8354 (in _malloc_r)
;;     230A855C (in _realloc_r)
;;     230A86EC (in _realloc_r)
;;     230A9070 (in _fclose_r)
;;     230A9084 (in _fclose_r)
;;     230A90DC (in _fclose_r)
_free_r proc
	beq	a1,zero,00000000230A70B8

l230A6F80:
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	addi	s0,a1,+00000000
	addi	s1,a0,+00000000
	sw	ra,sp,+0000000C
	jal	ra,00000000230A8420
	lw	a1,s0,-00000004
	addi	a4,s0,-00000008
	auipc	a0,0001EF67
	addi	a0,a0,+00000740
	andi	a5,a1,-00000002
	add	a2,a4,a5
	lw	a3,a2,+00000004
	lw	a6,a0,+00000008
	andi	a3,a3,-00000004
	beq	a6,a2,00000000230A7168

l230A6FC4:
	sw	a3,a2,+00000004
	andi	a1,a1,+00000001
	add	a6,a2,a3
	bne	a1,zero,00000000230A7078

l230A6FD4:
	lw	t1,s0,-00000008
	lw	a1,a6,+00000004
	auipc	a7,0001EF67
	addi	a7,a7,+00000710
	sub	a4,a4,t1
	lw	a6,a4,+00000008
	add	a5,a5,t1
	andi	a1,a1,+00000001
	beq	a6,a7,00000000230A713C

l230A6FF8:
	lw	t1,a4,+0000000C
	sw	t1,a6,+0000000C
	sw	a6,t1,+00000008
	beq	a1,zero,00000000230A71EC

l230A7008:
	ori	a3,a5,+00000001
	sw	a3,a4,+00000004
	sw	a5,a2,+00000000

l230A7014:
	addi	a3,zero,+000001FF
	bltu	a3,a5,00000000230A70D0

l230A701C:
	srli	a5,a5,00000003
	addi	a3,a5,+00000001
	slli	a3,a3,00000003
	lw	a1,a0,+00000004
	add	a0,a0,a3
	lw	a2,a0,+00000000
	srai	a3,a5,00000002
	addi	a5,zero,+00000001
	sll	a5,a5,a3
	or	a5,a5,a1
	addi	a3,a0,-00000008
	sw	a3,a4,+0000000C
	sw	a2,a4,+00000008
	auipc	a3,0001EF67
	sw	a5,a3,+00000698
	sw	a4,a0,+00000000
	sw	a4,a2,+0000000C

l230A7060:
	lw	s0,sp,+00000008
	lw	ra,sp,+0000000C
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jal	zero,00000000230A8424

l230A7078:
	lw	a1,a6,+00000004
	andi	a1,a1,+00000001
	bne	a1,zero,00000000230A70BC

l230A7084:
	add	a5,a5,a3
	auipc	a7,0001EF67
	addi	a7,a7,+00000664

l230A7090:
	lw	a3,a2,+00000008
	ori	a6,a5,+00000001
	add	a1,a4,a5
	beq	a3,a7,00000000230A7204

l230A70A0:
	lw	a2,a2,+0000000C
	sw	a2,a3,+0000000C
	sw	a3,a2,+00000008
	sw	a6,a4,+00000004
	sw	a5,a1,+00000000
	jal	zero,00000000230A7014

l230A70B8:
	jalr	zero,ra,+00000000

l230A70BC:
	ori	a3,a5,+00000001
	sw	a3,s0,+00000FFC
	sw	a5,a2,+00000000
	addi	a3,zero,+000001FF
	bgeu	a3,a5,00000000230A701C

l230A70D0:
	srli	a3,a5,00000009
	addi	a2,zero,+00000004
	bltu	a2,a3,00000000230A71C8

l230A70DC:
	srli	a3,a5,00000006
	addi	a1,a3,+00000039
	addi	a2,a3,+00000038
	slli	a1,a1,00000003

l230A70EC:
	add	a1,a0,a1
	lw	a3,a1,+00000000
	addi	a1,a1,-00000008
	beq	a1,a3,00000000230A7228

l230A70FC:
	lw	a2,a3,+00000004
	andi	a2,a2,-00000004
	bgeu	a5,a2,00000000230A7110

l230A7108:
	lw	a3,a3,+00000008
	bne	a1,a3,00000000230A70FC

l230A7110:
	lw	a1,a3,+0000000C

l230A7114:
	sw	a1,a4,+0000000C
	sw	a3,a4,+00000008
	lw	s0,sp,+00000008
	sw	a4,a1,+00000008
	lw	ra,sp,+0000000C
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	sw	a4,a3,+0000000C
	addi	sp,sp,+00000010
	jal	zero,00000000230A8424

l230A713C:
	bne	a1,zero,00000000230A728C

l230A7140:
	lw	a1,a2,+00000008
	lw	a2,a2,+0000000C
	add	a5,a3,a5
	ori	a3,a5,+00000001
	sw	a2,a1,+0000000C
	sw	a1,a2,+00000008
	sw	a3,a4,+00000004
	add	a4,a4,a5
	sw	a5,a4,+00000000
	jal	zero,00000000230A7060

l230A7168:
	andi	a1,a1,+00000001
	add	a5,a5,a3
	bne	a1,zero,00000000230A7190

l230A7174:
	lw	a1,s0,-00000008
	sub	a4,a4,a1
	lw	a3,a4,+0000000C
	lw	a2,a4,+00000008
	add	a5,a5,a1
	sw	a3,a2,+0000000C
	sw	a2,a3,+00000008

l230A7190:
	auipc	a3,0001EF68
	addi	a3,a3,-0000048C
	ori	a2,a5,+00000001
	lw	a3,a3,+00000000
	sw	a2,a4,+00000004
	auipc	a2,0001EF67
	sw	a4,a2,+00000548
	bltu	a5,a3,00000000230A7060

l230A71B0:
	auipc	a5,0001EF68
	addi	a5,a5,+00000580
	lw	a1,a5,+00000000
	addi	a0,s1,+00000000
	jal	ra,00000000230A6E40
	jal	zero,00000000230A7060

l230A71C8:
	addi	a2,zero,+00000014
	bgeu	a2,a3,00000000230A71F4

l230A71D0:
	addi	a2,zero,+00000054
	bltu	a2,a3,00000000230A7248

l230A71D8:
	srli	a3,a5,0000000C
	addi	a1,a3,+0000006F
	addi	a2,a3,+0000006E
	slli	a1,a1,00000003
	jal	zero,00000000230A70EC

l230A71EC:
	add	a5,a5,a3
	jal	zero,00000000230A7090

l230A71F4:
	addi	a1,a3,+0000005C
	addi	a2,a3,+0000005B
	slli	a1,a1,00000003
	jal	zero,00000000230A70EC

l230A7204:
	auipc	a3,0001EF67
	sw	a4,a3,+000004F4
	auipc	a3,0001EF67
	sw	a4,a3,+000004E8
	sw	a7,a4,+0000000C
	sw	a7,a4,+00000008
	sw	a6,a4,+00000004
	sw	a5,a1,+00000000
	jal	zero,00000000230A7060

l230A7228:
	lw	a0,a0,+00000004
	addi	a5,zero,+00000001
	srai	a2,a2,00000002
	sll	a2,a5,a2
	or	a2,a2,a0
	auipc	a5,0001EF67
	sw	a2,a5,+000004AC
	jal	zero,00000000230A7114

l230A7248:
	addi	a2,zero,+00000154
	bltu	a2,a3,00000000230A7264

l230A7250:
	srli	a3,a5,0000000F
	addi	a1,a3,+00000078
	addi	a2,a3,+00000077
	slli	a1,a1,00000003
	jal	zero,00000000230A70EC

l230A7264:
	addi	a2,zero,+00000554
	bltu	a2,a3,00000000230A7280

l230A726C:
	srli	a3,a5,00000012
	addi	a1,a3,+0000007D
	addi	a2,a3,+0000007C
	slli	a1,a1,00000003
	jal	zero,00000000230A70EC

l230A7280:
	addi	a1,zero,+000003F8
	addi	a2,zero,+0000007E
	jal	zero,00000000230A70EC

l230A728C:
	ori	a3,a5,+00000001
	sw	a3,a4,+00000004
	sw	a5,a2,+00000000
	jal	zero,00000000230A7060

;; __sfvwrite_r: 230A729C
;;   Called from:
;;     230A5104 (in __sprint_r.part.0)
__sfvwrite_r proc
	lw	a5,a2,+00000008
	beq	a5,zero,00000000230A75E4

l230A72A4:
	lhu	a5,a1,+0000000C
	addi	sp,sp,-00000030
	sw	s0,sp,+00000028
	sw	s4,sp,+00000018
	sw	s5,sp,+00000014
	sw	ra,sp,+0000002C
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	sw	s6,sp,+00000010
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	sw	s9,sp,+00000004
	sw	s10,sp,+00000000
	andi	a4,a5,+00000008
	addi	s0,a1,+00000000
	addi	s5,a0,+00000000
	addi	s4,a2,+00000000
	beq	a4,zero,00000000230A7380

l230A72F0:
	lw	a4,a1,+00000010
	beq	a4,zero,00000000230A7380

l230A72F8:
	andi	a4,a5,+00000002
	lw	s1,s4,+00000000
	beq	a4,zero,00000000230A73A0

l230A7304:
	lw	a4,s0,+00000024
	lw	a5,s0,+0000001C
	lui	s6,00080000
	addi	s3,zero,+00000000
	addi	s2,zero,+00000000
	xori	s6,s6,-00000400

l230A731C:
	addi	a2,s3,+00000000
	addi	a1,a5,+00000000
	addi	a0,s5,+00000000
	beq	s2,zero,00000000230A7370

l230A732C:
	addi	a3,s2,+00000000
	bgeu	s6,s2,00000000230A7338

l230A7334:
	addi	a3,s6,+00000000

l230A7338:
	jalr	ra,a4,+00000000
	bge	zero,a0,00000000230A75D0

l230A7340:
	lw	a5,s4,+00000008
	add	s3,s3,a0
	sub	s2,s2,a0
	sub	a0,a5,a0
	sw	a0,s4,+00000008
	beq	a0,zero,00000000230A756C

l230A7358:
	lw	a5,s0,+0000001C
	lw	a4,s0,+00000024
	addi	a2,s3,+00000000
	addi	a1,a5,+00000000
	addi	a0,s5,+00000000
	bne	s2,zero,00000000230A732C

l230A7370:
	lw	s3,s1,+00000000
	lw	s2,s1,+00000004
	addi	s1,s1,+00000008
	jal	zero,00000000230A731C

l230A7380:
	addi	a1,s0,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A648C
	bne	a0,zero,00000000230A7744

l230A7390:
	lhu	a5,s0,+0000000C
	lw	s1,s4,+00000000
	andi	a4,a5,+00000002
	bne	a4,zero,00000000230A7304

l230A73A0:
	andi	a4,a5,+00000001
	bne	a4,zero,00000000230A75EC

l230A73A8:
	lw	s9,s0,+00000008
	lw	a0,s0,+00000000
	lui	s7,00080000
	xori	s8,s7,-00000002
	addi	s6,zero,+00000000
	addi	s2,zero,+00000000
	xori	s7,s7,-00000001

l230A73C4:
	beq	s2,zero,00000000230A74C0

l230A73C8:
	andi	a4,a5,+00000200
	beq	a4,zero,00000000230A7624

l230A73D0:
	addi	s10,s9,+00000000
	bltu	s2,s9,00000000230A76B8

l230A73D8:
	andi	a4,a5,+00000480
	beq	a4,zero,00000000230A7470

l230A73E0:
	lw	a3,s0,+00000014
	lw	a1,s0,+00000010
	addi	a4,s2,+00000001
	slli	s3,a3,00000001
	add	a3,s3,a3
	srli	s3,a3,0000001F
	sub	s9,a0,a1
	add	s3,s3,a3
	srai	s3,s3,00000001
	add	a4,a4,s9
	addi	a2,s3,+00000000
	bgeu	s3,a4,00000000230A7418

l230A7410:
	addi	s3,a4,+00000000
	addi	a2,a4,+00000000

l230A7418:
	andi	a5,a5,+00000400
	beq	a5,zero,00000000230A7704

l230A7420:
	addi	a1,a2,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A7B6C
	addi	s10,a0,+00000000
	beq	a0,zero,00000000230A7734

l230A7434:
	lw	a1,s0,+00000010
	addi	a2,s9,+00000000
	jal	ra,00000000230A382C
	lhu	a5,s0,+0000000C
	andi	a5,a5,-00000481
	ori	a5,a5,+00000080
	sh	a5,s0,+0000000C

l230A7450:
	add	a0,s10,s9
	sub	a5,s3,s9
	sw	s10,s0,+00000010
	sw	a0,s0,+00000000
	sw	s3,s0,+00000014
	addi	s9,s2,+00000000
	sw	a5,s0,+00000008
	addi	s10,s2,+00000000

l230A7470:
	addi	a2,s10,+00000000
	addi	a1,s6,+00000000
	jal	ra,00000000230A3948
	lw	a5,s0,+00000008
	lw	a2,s0,+00000000
	addi	s3,s2,+00000000
	sub	s9,a5,s9
	add	a2,a2,s10
	sw	s9,s0,+00000008
	sw	a2,s0,+00000000
	addi	s2,zero,+00000000

l230A749C:
	lw	a5,s4,+00000008
	add	s6,s6,s3
	sub	s3,a5,s3
	sw	s3,s4,+00000008
	beq	s3,zero,00000000230A756C

l230A74B0:
	lw	s9,s0,+00000008
	lw	a0,s0,+00000000
	lhu	a5,s0,+0000000C
	bne	s2,zero,00000000230A73C8

l230A74C0:
	lw	s6,s1,+00000000
	lw	s2,s1,+00000004
	addi	s1,s1,+00000008
	jal	zero,00000000230A73C4

l230A74D0:
	lw	s3,s1,+00000004
	lw	s7,s1,+00000000
	addi	s1,s1,+00000008
	beq	s3,zero,00000000230A74D0

l230A74E0:
	addi	a2,s3,+00000000
	addi	a1,zero,+0000000A
	addi	a0,s7,+00000000
	jal	ra,00000000230A36C8
	beq	a0,zero,00000000230A7618

l230A74F4:
	addi	a0,a0,+00000001
	sub	s6,a0,s7

l230A74FC:
	addi	a5,s6,+00000000

l230A7500:
	addi	s8,s3,+00000000
	bgeu	a5,s3,00000000230A750C

l230A7508:
	addi	s8,a5,+00000000

l230A750C:
	lw	a0,s0,+00000000
	lw	a5,s0,+00000010
	lw	a3,s0,+00000014
	bgeu	a5,a0,00000000230A7528

l230A751C:
	lw	s2,s0,+00000008
	add	s2,a3,s2
	blt	s2,s8,00000000230A75A8

l230A7528:
	blt	s8,a3,00000000230A76D8

l230A752C:
	lw	a5,s0,+00000024
	lw	a1,s0,+0000001C
	addi	a2,s7,+00000000
	addi	a0,s5,+00000000
	jalr	ra,a5,+00000000
	addi	s2,a0,+00000000
	bge	zero,a0,00000000230A75D0

l230A7548:
	sub	s6,s6,s2
	addi	a0,zero,+00000001
	beq	s6,zero,00000000230A76C4

l230A7554:
	lw	a5,s4,+00000008
	add	s7,s7,s2
	sub	s3,s3,s2
	sub	s2,a5,s2
	sw	s2,s4,+00000008
	bne	s2,zero,00000000230A75FC

l230A756C:
	addi	a0,zero,+00000000

l230A7570:
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
	lw	s10,sp,+00000000
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l230A75A8:
	addi	a1,s7,+00000000
	addi	a2,s2,+00000000
	jal	ra,00000000230A3948
	lw	a5,s0,+00000000
	addi	a1,s0,+00000000
	addi	a0,s5,+00000000
	add	a5,a5,s2
	sw	a5,s0,+00000000
	jal	ra,00000000230A6854
	beq	a0,zero,00000000230A7548

l230A75D0:
	lh	a5,s0,+0000000C

l230A75D4:
	ori	a5,a5,+00000040
	sh	a5,s0,+0000000C
	addi	a0,zero,-00000001
	jal	zero,00000000230A7570

l230A75E4:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A75EC:
	addi	s6,zero,+00000000
	addi	a0,zero,+00000000
	addi	s7,zero,+00000000
	addi	s3,zero,+00000000

l230A75FC:
	beq	s3,zero,00000000230A74D0

l230A7600:
	bne	a0,zero,00000000230A74FC

l230A7604:
	addi	a2,s3,+00000000
	addi	a1,zero,+0000000A
	addi	a0,s7,+00000000
	jal	ra,00000000230A36C8
	bne	a0,zero,00000000230A74F4

l230A7618:
	addi	a5,s3,+00000001
	addi	s6,a5,+00000000
	jal	zero,00000000230A7500

l230A7624:
	lw	a5,s0,+00000010
	bltu	a5,a0,00000000230A766C

l230A762C:
	lw	a5,s0,+00000014
	bltu	s2,a5,00000000230A766C

l230A7634:
	addi	a3,s2,+00000000
	bgeu	s8,s2,00000000230A7640

l230A763C:
	addi	a3,s7,+00000000

l230A7640:
	xor	a3,a3,a5
	lw	a4,s0,+00000024
	lw	a1,s0,+0000001C
	addi	a2,s6,+00000000
	addi	a0,s5,+00000000
	add	a3,a3,a5
	jalr	ra,a4,+00000000
	bge	zero,a0,00000000230A75D0

l230A7660:
	addi	s3,a0,+00000000

l230A7664:
	sub	s2,s2,s3
	jal	zero,00000000230A749C

l230A766C:
	addi	s3,s9,+00000000
	bgeu	s2,s9,00000000230A7678

l230A7674:
	addi	s3,s2,+00000000

l230A7678:
	addi	a2,s3,+00000000
	addi	a1,s6,+00000000
	jal	ra,00000000230A3948
	lw	a5,s0,+00000008
	lw	a4,s0,+00000000
	sub	a5,a5,s3
	add	a4,a4,s3
	sw	a5,s0,+00000008
	sw	a4,s0,+00000000
	bne	a5,zero,00000000230A7664

l230A76A0:
	addi	a1,s0,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A6854
	bne	a0,zero,00000000230A75D0

l230A76B0:
	sub	s2,s2,s3
	jal	zero,00000000230A749C

l230A76B8:
	addi	s9,s2,+00000000
	addi	s10,s2,+00000000
	jal	zero,00000000230A7470

l230A76C4:
	addi	a1,s0,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A6854
	beq	a0,zero,00000000230A7554

l230A76D4:
	jal	zero,00000000230A75D0

l230A76D8:
	addi	a2,s8,+00000000
	addi	a1,s7,+00000000
	jal	ra,00000000230A3948
	lw	a4,s0,+00000008
	lw	a5,s0,+00000000
	addi	s2,s8,+00000000
	sub	a4,a4,s8
	add	s8,a5,s8
	sw	a4,s0,+00000008
	sw	s8,s0,+00000000
	jal	zero,00000000230A7548

l230A7704:
	addi	a0,s5,+00000000
	jal	ra,00000000230A8428
	addi	s10,a0,+00000000
	bne	a0,zero,00000000230A7450

l230A7714:
	lw	a1,s0,+00000010
	addi	a0,s5,+00000000
	jal	ra,00000000230A6F7C
	lh	a5,s0,+0000000C
	addi	a4,zero,+0000000C
	sw	a4,s5,+00000000
	andi	a5,a5,-00000081
	jal	zero,00000000230A75D4

l230A7734:
	addi	a5,zero,+0000000C
	sw	a5,s5,+00000000
	lh	a5,s0,+0000000C
	jal	zero,00000000230A75D4

l230A7744:
	addi	a0,zero,-00000001
	jal	zero,00000000230A7570

;; _fwalk: 230A774C
;;   Called from:
;;     230A6C44 (in __fp_lock_all)
;;     230A6C5C (in __fp_unlock_all)
_fwalk proc
	addi	sp,sp,-00000020
	sw	s5,sp,+00000004
	sw	ra,sp,+0000001C
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	s4,sp,+00000008
	sw	s6,sp,+00000000
	addi	s5,a0,+000002E0
	beq	s5,zero,00000000230A77F4

l230A7778:
	addi	s6,a1,+00000000
	addi	s4,zero,+00000000
	addi	s3,zero,+00000001
	addi	s2,zero,-00000001

l230A7788:
	lw	s1,s5,+00000004
	lw	s0,s5,+00000008
	addi	s1,s1,-00000001
	blt	s1,zero,00000000230A77C0

l230A7798:
	lhu	a5,s0,+0000000C
	addi	s1,s1,-00000001
	bgeu	s3,a5,00000000230A77B8

l230A77A4:
	lh	a5,s0,+0000000E
	addi	a0,s0,+00000000
	beq	a5,s2,00000000230A77B8

l230A77B0:
	jalr	ra,s6,+00000000
	or	s4,s4,a0

l230A77B8:
	addi	s0,s0,+00000068
	bne	s1,s2,00000000230A7798

l230A77C0:
	lw	s5,s5,+00000000
	bne	s5,zero,00000000230A7788

l230A77C8:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,s4,+00000000
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	lw	s3,sp,+0000000C
	lw	s4,sp,+00000008
	lw	s5,sp,+00000004
	lw	s6,sp,+00000000
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A77F4:
	addi	s4,zero,+00000000
	jal	zero,00000000230A77C8

;; _fwalk_reent: 230A77FC
;;   Called from:
;;     230A68E0 (in fflush)
;;     230A68F4 (in _cleanup_r)
;;     230A6C0C (in _cleanup)
_fwalk_reent proc
	addi	sp,sp,-00000030
	sw	s5,sp,+00000014
	sw	ra,sp,+0000002C
	sw	s0,sp,+00000028
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s3,sp,+0000001C
	sw	s4,sp,+00000018
	sw	s6,sp,+00000010
	sw	s7,sp,+0000000C
	addi	s5,a0,+000002E0
	beq	s5,zero,00000000230A78B4

l230A782C:
	addi	s7,a1,+00000000
	addi	s6,a0,+00000000
	addi	s4,zero,+00000000
	addi	s3,zero,+00000001
	addi	s2,zero,-00000001

l230A7840:
	lw	s1,s5,+00000004
	lw	s0,s5,+00000008
	addi	s1,s1,-00000001
	blt	s1,zero,00000000230A787C

l230A7850:
	lhu	a5,s0,+0000000C
	addi	s1,s1,-00000001
	bgeu	s3,a5,00000000230A7874

l230A785C:
	lh	a5,s0,+0000000E
	addi	a1,s0,+00000000
	addi	a0,s6,+00000000
	beq	a5,s2,00000000230A7874

l230A786C:
	jalr	ra,s7,+00000000
	or	s4,s4,a0

l230A7874:
	addi	s0,s0,+00000068
	bne	s1,s2,00000000230A7850

l230A787C:
	lw	s5,s5,+00000000
	bne	s5,zero,00000000230A7840

l230A7884:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	addi	a0,s4,+00000000
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l230A78B4:
	addi	s4,zero,+00000000
	jal	zero,00000000230A7884

;; __localeconv_l: 230A78BC
__localeconv_l proc
	addi	a0,a0,+000000F0
	jalr	zero,ra,+00000000

;; _localeconv_r: 230A78C4
_localeconv_r proc
	auipc	a0,0001EF67
	addi	a0,a0,-0000025C
	jalr	zero,ra,+00000000

;; localeconv: 230A78D0
localeconv proc
	auipc	a0,0001EF67
	addi	a0,a0,-00000268
	jalr	zero,ra,+00000000

;; _setlocale_r: 230A78DC
;;   Called from:
;;     230A7978 (in setlocale)
_setlocale_r proc
	beq	a2,zero,00000000230A791C

l230A78E0:
	addi	sp,sp,-00000010
	auipc	a1,00000024
	addi	a1,a1,-0000007C
	addi	a0,a2,+00000000
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	s0,a2,+00000000
	jal	ra,00000000230A3FF4
	bne	a0,zero,00000000230A7928

l230A7904:
	auipc	a0,00000022
	addi	a0,a0,-0000038C

l230A790C:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A791C:
	auipc	a0,00000022
	addi	a0,a0,-000003A4
	jalr	zero,ra,+00000000

l230A7928:
	auipc	a1,00000022
	addi	a1,a1,-000003B0
	addi	a0,s0,+00000000
	jal	ra,00000000230A3FF4
	beq	a0,zero,00000000230A7904

l230A793C:
	auipc	a1,0000001F
	addi	a1,a1,+00000480
	addi	a0,s0,+00000000
	jal	ra,00000000230A3FF4
	beq	a0,zero,00000000230A7904

l230A7950:
	addi	a0,zero,+00000000
	jal	zero,00000000230A790C

;; __locale_mb_cur_max: 230A7958
;;   Called from:
;;     230A6C90 (in __fputwc)
__locale_mb_cur_max proc
	auipc	a0,0001EF67
	lbu	a0,a0,-000002B8
	jalr	zero,ra,+00000000

;; setlocale: 230A7964
setlocale proc
	auipc	a5,0001EF67
	addi	a5,a5,+00000398
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A78DC

;; __swhatbuf_r: 230A797C
;;   Called from:
;;     230A7AA8 (in __smakebuf_r)
__swhatbuf_r proc
	addi	sp,sp,-00000070
	sw	s0,sp,+00000068
	addi	s0,a1,+00000000
	lh	a1,a1,+0000000E
	sw	s1,sp,+00000064
	sw	s2,sp,+00000060
	sw	ra,sp,+0000006C
	addi	s1,a2,+00000000
	addi	s2,a3,+00000000
	blt	a1,zero,00000000230A79F4

l230A79A4:
	addi	a2,sp,+00000008
	jal	ra,00000000230A90F8
	blt	a0,zero,00000000230A79F4

l230A79B0:
	lw	a4,sp,+0000000C
	lui	a5,0000000F
	lw	ra,sp,+0000006C
	and	a5,a5,a4
	lui	a4,000FFFFE
	add	a5,a5,a4
	sltiu	a5,a5,+00000001
	lw	s0,sp,+00000068
	sw	a5,s2,+00000000
	addi	a5,zero,+00000400
	sw	a5,s1,+00000000
	lui	a0,00000001
	lw	s1,sp,+00000064
	lw	s2,sp,+00000060
	addi	a0,a0,-00000800
	addi	sp,sp,+00000070
	jalr	zero,ra,+00000000

l230A79F4:
	lhu	a5,s0,+0000000C
	sw	zero,s2,+00000000
	andi	a5,a5,+00000080
	beq	a5,zero,00000000230A7A28

l230A7A04:
	lw	ra,sp,+0000006C
	lw	s0,sp,+00000068
	addi	a5,zero,+00000040
	sw	a5,s1,+00000000
	lw	s2,sp,+00000060
	lw	s1,sp,+00000064
	addi	a0,zero,+00000000
	addi	sp,sp,+00000070
	jalr	zero,ra,+00000000

l230A7A28:
	lw	ra,sp,+0000006C
	lw	s0,sp,+00000068
	addi	a5,zero,+00000400
	sw	a5,s1,+00000000
	lw	s2,sp,+00000060
	lw	s1,sp,+00000064
	addi	a0,zero,+00000000
	addi	sp,sp,+00000070
	jalr	zero,ra,+00000000

;; __smakebuf_r: 230A7A4C
;;   Called from:
;;     230A659C (in __swsetup_r)
__smakebuf_r proc
	lhu	a4,a1,+0000000C
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	ra,sp,+0000001C
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	andi	a4,a4,+00000002
	addi	s0,a1,+00000000
	beq	a4,zero,00000000230A7A9C

l230A7A70:
	addi	a4,a1,+00000043
	sw	a4,a1,+00000000
	sw	a4,a1,+00000010
	addi	a4,zero,+00000001
	sw	a4,a1,+00000014

l230A7A84:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A7A9C:
	addi	a3,sp,+0000000C
	addi	a2,sp,+00000008
	addi	s1,a0,+00000000
	jal	ra,00000000230A797C
	lw	a1,sp,+00000008
	addi	s2,a0,+00000000
	addi	a0,s1,+00000000
	jal	ra,00000000230A7B6C
	lh	a5,s0,+0000000C
	beq	a0,zero,00000000230A7B10

l230A7AC4:
	auipc	a3,000FFFFF
	addi	a3,a3,-000001D8
	sw	a3,s1,+0000003C
	lw	a3,sp,+00000008
	lw	a4,sp,+0000000C
	ori	a5,a5,+00000080
	sh	a5,s0,+0000000C
	sw	a0,s0,+00000000
	sw	a0,s0,+00000010
	sw	a3,s0,+00000014
	bne	a4,zero,00000000230A7B3C

l230A7AF0:
	or	a5,a5,s2
	sh	a5,s0,+0000000C
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	lw	s2,sp,+00000010
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A7B10:
	andi	a4,a5,+00000200
	bne	a4,zero,00000000230A7A84

l230A7B18:
	andi	a5,a5,-00000004
	ori	a5,a5,+00000002
	addi	a4,s0,+00000043
	sh	a5,s0,+0000000C
	addi	a5,zero,+00000001
	sw	a4,s0,+00000000
	sw	a4,s0,+00000010
	sw	a5,s0,+00000014
	jal	zero,00000000230A7A84

l230A7B3C:
	lh	a1,s0,+0000000E
	addi	a0,s1,+00000000
	jal	ra,00000000230A915C
	bne	a0,zero,00000000230A7B54

l230A7B4C:
	lh	a5,s0,+0000000C
	jal	zero,00000000230A7AF0

l230A7B54:
	lhu	a5,s0,+0000000C
	andi	a5,a5,-00000004
	ori	a5,a5,+00000001
	slli	a5,a5,00000010
	srai	a5,a5,00000010
	jal	zero,00000000230A7AF0

;; _malloc_r: 230A7B6C
;;   Called from:
;;     230A3B58 (in _init_signal_r.part.0)
;;     230A6AAC (in __sfmoreglue)
;;     230A7428 (in __sfvwrite_r)
;;     230A7AB8 (in __smakebuf_r)
;;     230A8500 (in _realloc_r)
;;     230A86C0 (in _realloc_r)
_malloc_r proc
	addi	sp,sp,-00000030
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	ra,sp,+0000002C
	sw	s0,sp,+00000028
	sw	s3,sp,+0000001C
	sw	s4,sp,+00000018
	sw	s5,sp,+00000014
	sw	s6,sp,+00000010
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	sw	s9,sp,+00000004
	addi	s1,a1,+0000000B
	addi	a5,zero,+00000016
	addi	s2,a0,+00000000
	bltu	a5,s1,00000000230A7C14

l230A7BAC:
	addi	a5,zero,+00000010
	bltu	a5,a1,00000000230A7DE8

l230A7BB4:
	jal	ra,00000000230A8420
	addi	s1,zero,+00000010
	addi	a5,zero,+00000018
	addi	a2,zero,+00000002

l230A7BC4:
	auipc	s3,0001EF67
	addi	s3,s3,-000004E0
	add	a5,s3,a5
	lw	s0,a5,+00000004
	addi	a4,a5,-00000008
	beq	s0,a4,00000000230A7E38

l230A7BDC:
	lw	a5,s0,+00000004
	lw	a3,s0,+0000000C
	lw	a2,s0,+00000008
	andi	a5,a5,-00000004

l230A7BEC:
	add	a5,s0,a5
	lw	a4,a5,+00000004
	sw	a3,a2,+0000000C
	sw	a2,a3,+00000008
	ori	a4,a4,+00000001
	addi	a0,s2,+00000000
	sw	a4,a5,+00000004
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A7C14:
	andi	s1,s1,-00000008
	blt	s1,zero,00000000230A7DE8

l230A7C1C:
	bltu	s1,a1,00000000230A7DE8

l230A7C20:
	jal	ra,00000000230A8420
	addi	a5,zero,+000001F7
	bgeu	a5,s1,00000000230A80F8

l230A7C2C:
	srli	a5,s1,00000009
	beq	a5,zero,00000000230A7E28

l230A7C34:
	addi	a4,zero,+00000004
	bltu	a4,a5,00000000230A8090

l230A7C3C:
	srli	a5,s1,00000006
	addi	a2,a5,+00000039
	addi	a0,a5,+00000038
	slli	a3,a2,00000003

l230A7C4C:
	auipc	s3,0001EF67
	addi	s3,s3,-00000568
	add	a3,s3,a3
	lw	s0,a3,+00000004
	addi	a3,a3,-00000008
	beq	a3,s0,00000000230A7C98

l230A7C64:
	lw	a5,s0,+00000004
	addi	a1,zero,+0000000F
	andi	a5,a5,-00000004
	sub	a4,a5,s1
	blt	a1,a4,00000000230A7C94

l230A7C78:
	bge	a4,zero,00000000230A8024

l230A7C7C:
	lw	s0,s0,+0000000C
	beq	a3,s0,00000000230A7C98

l230A7C84:
	lw	a5,s0,+00000004
	andi	a5,a5,-00000004
	sub	a4,a5,s1
	bge	a1,a4,00000000230A7C78

l230A7C94:
	addi	a2,a0,+00000000

l230A7C98:
	lw	s0,s3,+00000010
	auipc	a6,0001EF67
	addi	a6,a6,-000005B0
	beq	s0,a6,00000000230A7E54

l230A7CA8:
	lw	a1,s0,+00000004
	addi	a4,zero,+0000000F
	andi	a1,a1,-00000004
	sub	a5,a1,s1
	blt	a4,a5,00000000230A8124

l230A7CBC:
	auipc	a4,0001EF67
	sw	a6,a4,+00000A3C
	auipc	a4,0001EF67
	sw	a6,a4,+00000A30
	bge	a5,zero,00000000230A8104

l230A7CD0:
	addi	a5,zero,+000001FF
	bltu	a5,a1,00000000230A8030

l230A7CD8:
	srli	a1,a1,00000003
	addi	a5,a1,+00000001
	slli	a5,a5,00000003
	lw	a0,s3,+00000004
	add	a5,s3,a5
	lw	a3,a5,+00000000
	srai	a1,a1,00000002
	addi	a4,zero,+00000001
	sll	a4,a4,a1
	or	a4,a4,a0
	addi	a1,a5,-00000008
	sw	a1,s0,+0000000C
	sw	a3,s0,+00000008
	auipc	a1,0001EF67
	sw	a4,a1,+000009DC
	sw	s0,a5,+00000000
	sw	s0,a3,+0000000C

l230A7D1C:
	srai	a5,a2,00000002
	addi	a3,zero,+00000001
	sll	a3,a3,a5
	bltu	a4,a3,00000000230A7E68

l230A7D2C:
	and	a5,a3,a4
	bne	a5,zero,00000000230A7D58

l230A7D34:
	slli	a3,a3,00000001
	andi	a2,a2,-00000004
	and	a5,a3,a4
	addi	a2,a2,+00000004
	bne	a5,zero,00000000230A7D58

l230A7D48:
	slli	a3,a3,00000001
	and	a5,a3,a4
	addi	a2,a2,+00000004
	beq	a5,zero,00000000230A7D48

l230A7D58:
	addi	a0,zero,+0000000F

l230A7D5C:
	slli	a7,a2,00000003
	add	a7,s3,a7
	addi	a1,a7,+00000000
	addi	t1,a2,+00000000

l230A7D6C:
	lw	s0,a1,+0000000C
	bne	a1,s0,00000000230A7D84

l230A7D74:
	jal	zero,00000000230A80B4

l230A7D78:
	bge	a4,zero,00000000230A80C8

l230A7D7C:
	lw	s0,s0,+0000000C
	beq	a1,s0,00000000230A80B4

l230A7D84:
	lw	a5,s0,+00000004
	andi	a5,a5,-00000004
	sub	a4,a5,s1
	bge	a0,a4,00000000230A7D78

l230A7D94:
	lw	a3,s0,+0000000C
	lw	a2,s0,+00000008
	ori	a1,s1,+00000001
	sw	a1,s0,+00000004
	sw	a3,a2,+0000000C
	sw	a2,a3,+00000008
	add	s1,s0,s1
	auipc	a3,0001EF67
	sw	s1,a3,+00000948
	auipc	a3,0001EF67
	sw	s1,a3,+0000093C
	ori	a3,a4,+00000001
	sw	a6,s1,+0000000C
	sw	a6,s1,+00000008
	sw	a3,s1,+00000004
	add	a5,s0,a5
	addi	a0,s2,+00000000
	sw	a4,a5,+00000000
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A7DE8:
	addi	a5,zero,+0000000C
	sw	a5,s2,+00000000
	addi	a0,zero,+00000000

l230A7DF4:
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

l230A7E28:
	addi	a3,zero,+00000200
	addi	a2,zero,+00000040
	addi	a0,zero,+0000003F
	jal	zero,00000000230A7C4C

l230A7E38:
	lw	s0,a5,+0000000C
	addi	a2,a2,+00000002
	bne	a5,s0,00000000230A7BDC

l230A7E44:
	lw	s0,s3,+00000010
	auipc	a6,0001EF67
	addi	a6,a6,-0000075C
	bne	s0,a6,00000000230A7CA8

l230A7E54:
	lw	a4,s3,+00000004
	srai	a5,a2,00000002
	addi	a3,zero,+00000001
	sll	a3,a3,a5
	bgeu	a4,a3,00000000230A7D2C

l230A7E68:
	lw	s0,s3,+00000008
	lw	s5,s0,+00000004
	andi	s7,s5,-00000004
	bltu	s7,s1,00000000230A7E84

l230A7E78:
	sub	a5,s7,s1
	addi	a4,zero,+0000000F
	blt	a4,a5,00000000230A7FF8

l230A7E84:
	auipc	a5,0001EF68
	addi	a5,a5,-00000754
	auipc	s8,0001EF67
	addi	s8,s8,-0000018C
	lw	s5,a5,+00000000
	lw	a4,s8,+00000000
	addi	a5,zero,-00000001
	add	s4,s0,s7
	add	s5,s1,s5
	beq	a4,a5,00000000230A8214

l230A7EAC:
	lui	a5,00000001
	addi	a5,a5,+0000000F
	add	s5,s5,a5
	lui	a5,000FFFFF
	and	s5,s5,a5

l230A7EC0:
	addi	a1,s5,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	addi	a5,zero,-00000001
	addi	s6,a0,+00000000
	beq	a0,a5,00000000230A8180

l230A7ED8:
	bltu	a0,s4,00000000230A817C

l230A7EDC:
	auipc	s9,0001EF77
	addi	s9,s9,-000005B8
	lw	a5,s9,+00000000
	add	a5,s5,a5
	auipc	a4,0001EF77
	sw	a5,a4,+00000A38
	addi	a4,a5,+00000000
	beq	s4,a0,00000000230A82C4

l230A7EFC:
	lw	a3,s8,+00000000
	addi	a5,zero,-00000001
	beq	a3,a5,00000000230A82E0

l230A7F08:
	sub	a5,s6,s4
	add	a5,a5,a4
	auipc	a4,0001EF77
	sw	a5,a4,+00000A14

l230A7F18:
	andi	s8,s6,+00000007
	beq	s8,zero,00000000230A823C

l230A7F20:
	sub	s6,s6,s8
	lui	a5,00000001
	addi	s6,s6,+00000008
	addi	s4,a5,-00000001
	add	s5,s6,s5
	addi	a5,a5,+00000008
	and	a4,s5,s4
	sub	a5,a5,s8
	sub	a5,a5,a4
	and	s4,a5,s4
	addi	a1,s4,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8338

l230A7F5C:
	sub	a0,a0,s6
	add	s5,a0,s4

l230A7F64:
	lw	a5,s9,+00000000
	auipc	a4,0001EF66
	sw	s6,a4,+00000784
	ori	s5,s5,+00000001
	add	a5,s4,a5
	auipc	a4,0001EF77
	sw	a5,a4,+000009AC
	sw	s5,s6,+00000004
	beq	s0,s3,00000000230A82EC

l230A7F88:
	addi	a2,zero,+0000000F
	bgeu	a2,s7,00000000230A82F4

l230A7F90:
	lw	a3,s0,+00000004
	addi	a4,s7,-0000000C
	andi	a4,a4,-00000008
	andi	a3,a3,+00000001
	or	a3,a3,a4
	sw	a3,s0,+00000004
	addi	a1,zero,+00000005
	add	a3,s0,a4
	sw	a1,a3,+00000004
	sw	a1,a3,+00000008
	bltu	a2,a4,00000000230A834C

l230A7FBC:
	lw	s5,s6,+00000004
	addi	s0,s6,+00000000

l230A7FC4:
	auipc	a4,0001EF67
	addi	a4,a4,+00000768
	lw	a4,a4,+00000000
	bgeu	a4,a5,00000000230A7FDC

l230A7FD4:
	auipc	a4,0001EF67
	sw	a5,a4,+00000758

l230A7FDC:
	auipc	a4,0001EF67
	addi	a4,a4,+0000074C
	lw	a4,a4,+00000000
	bgeu	a4,a5,00000000230A8188

l230A7FEC:
	auipc	a4,0001EF67
	sw	a5,a4,+0000073C
	jal	zero,00000000230A8188

l230A7FF8:
	ori	a4,s1,+00000001
	sw	a4,s0,+00000004
	add	s1,s0,s1
	auipc	a4,0001EF66
	sw	s1,a4,+000006E8
	ori	a5,a5,+00000001
	addi	a0,s2,+00000000
	sw	a5,s1,+00000004
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A8024:
	lw	a3,s0,+0000000C
	lw	a2,s0,+00000008
	jal	zero,00000000230A7BEC

l230A8030:
	srli	a5,a1,00000009
	addi	a4,zero,+00000004
	bgeu	a4,a5,00000000230A8168

l230A803C:
	addi	a4,zero,+00000014
	bltu	a4,a5,00000000230A8270

l230A8044:
	addi	a3,a5,+0000005C
	addi	a4,a5,+0000005B
	slli	a3,a3,00000003

l230A8050:
	add	a3,s3,a3
	lw	a5,a3,+00000000
	addi	a3,a3,-00000008
	beq	a3,a5,00000000230A821C

l230A8060:
	lw	a4,a5,+00000004
	andi	a4,a4,-00000004
	bgeu	a1,a4,00000000230A8074

l230A806C:
	lw	a5,a5,+00000008
	bne	a3,a5,00000000230A8060

l230A8074:
	lw	a3,a5,+0000000C
	lw	a4,s3,+00000004

l230A807C:
	sw	a3,s0,+0000000C
	sw	a5,s0,+00000008
	sw	s0,a3,+00000008
	sw	s0,a5,+0000000C
	jal	zero,00000000230A7D1C

l230A8090:
	addi	a4,zero,+00000014
	bgeu	a4,a5,00000000230A81AC

l230A8098:
	addi	a4,zero,+00000054
	bltu	a4,a5,00000000230A828C

l230A80A0:
	srli	a5,s1,0000000C
	addi	a2,a5,+0000006F
	addi	a0,a5,+0000006E
	slli	a3,a2,00000003
	jal	zero,00000000230A7C4C

l230A80B4:
	addi	t1,t1,+00000001
	andi	a5,t1,+00000003
	addi	a1,a1,+00000008
	bne	a5,zero,00000000230A7D6C

l230A80C4:
	jal	zero,00000000230A81C8

l230A80C8:
	add	a5,s0,a5
	lw	a4,a5,+00000004
	lw	a3,s0,+0000000C
	lw	a2,s0,+00000008
	ori	a4,a4,+00000001
	sw	a4,a5,+00000004
	sw	a3,a2,+0000000C
	addi	a0,s2,+00000000
	sw	a2,a3,+00000008
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A80F8:
	srli	a2,s1,00000003
	addi	a5,s1,+00000008
	jal	zero,00000000230A7BC4

l230A8104:
	add	a1,s0,a1
	lw	a5,a1,+00000004
	addi	a0,s2,+00000000
	ori	a5,a5,+00000001
	sw	a5,a1,+00000004
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A8124:
	ori	a4,s1,+00000001
	sw	a4,s0,+00000004
	add	s1,s0,s1
	auipc	a4,0001EF66
	sw	s1,a4,+000005C8
	auipc	a4,0001EF66
	sw	s1,a4,+000005BC
	ori	a4,a5,+00000001
	sw	a6,s1,+0000000C
	sw	a6,s1,+00000008
	sw	a4,s1,+00000004
	add	a1,s0,a1
	addi	a0,s2,+00000000
	sw	a5,a1,+00000000
	jal	ra,00000000230A8424
	addi	a0,s0,+00000008
	jal	zero,00000000230A7DF4

l230A8168:
	srli	a5,a1,00000006
	addi	a3,a5,+00000039
	addi	a4,a5,+00000038
	slli	a3,a3,00000003
	jal	zero,00000000230A8050

l230A817C:
	beq	s0,s3,00000000230A82A8

l230A8180:
	lw	s0,s3,+00000008
	lw	s5,s0,+00000004

l230A8188:
	andi	s5,s5,-00000004
	sub	a5,s5,s1
	bltu	s5,s1,00000000230A819C

l230A8194:
	addi	a4,zero,+0000000F
	blt	a4,a5,00000000230A7FF8

l230A819C:
	addi	a0,s2,+00000000
	jal	ra,00000000230A8424
	addi	a0,zero,+00000000
	jal	zero,00000000230A7DF4

l230A81AC:
	addi	a2,a5,+0000005C
	addi	a0,a5,+0000005B
	slli	a3,a2,00000003
	jal	zero,00000000230A7C4C

l230A81BC:
	lw	a5,a7,+00000008
	addi	a2,a2,-00000001
	bne	a5,a7,00000000230A83A0

l230A81C8:
	andi	a5,a2,+00000003
	addi	a7,a7,-00000008
	bne	a5,zero,00000000230A81BC

l230A81D4:
	lw	a4,s3,+00000004
	xori	a5,a3,-00000001
	and	a5,a5,a4
	auipc	a4,0001EF66
	sw	a5,a4,+00000508

l230A81E8:
	slli	a3,a3,00000001
	bltu	a5,a3,00000000230A7E68

l230A81F0:
	beq	a3,zero,00000000230A7E68

l230A81F4:
	and	a4,a3,a5
	bne	a4,zero,00000000230A820C

l230A81FC:
	slli	a3,a3,00000001
	and	a4,a3,a5
	addi	t1,t1,+00000004
	beq	a4,zero,00000000230A81FC

l230A820C:
	addi	a2,t1,+00000000
	jal	zero,00000000230A7D5C

l230A8214:
	addi	s5,s5,+00000010
	jal	zero,00000000230A7EC0

l230A821C:
	lw	a0,s3,+00000004
	srai	a1,a4,00000002
	addi	a4,zero,+00000001
	sll	a4,a4,a1
	or	a4,a4,a0
	auipc	a1,0001EF66
	sw	a4,a1,+000004B8
	jal	zero,00000000230A807C

l230A823C:
	lui	a5,00000001
	addi	a4,a5,-00000001
	add	s4,s6,s5
	and	s4,s4,a4
	sub	a5,a5,s4
	and	s4,a5,a4
	addi	a1,s4,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A8A04
	addi	a5,zero,-00000001
	bne	a0,a5,00000000230A7F5C

l230A8268:
	addi	s4,zero,+00000000
	jal	zero,00000000230A7F64

l230A8270:
	addi	a4,zero,+00000054
	bltu	a4,a5,00000000230A8300

l230A8278:
	srli	a5,a1,0000000C
	addi	a3,a5,+0000006F
	addi	a4,a5,+0000006E
	slli	a3,a3,00000003
	jal	zero,00000000230A8050

l230A828C:
	addi	a4,zero,+00000154
	bltu	a4,a5,00000000230A831C

l230A8294:
	srli	a5,s1,0000000F
	addi	a2,a5,+00000078
	addi	a0,a5,+00000077
	slli	a3,a2,00000003
	jal	zero,00000000230A7C4C

l230A82A8:
	auipc	s9,0001EF76
	addi	s9,s9,+0000067C
	lw	a5,s9,+00000000
	add	a4,s5,a5
	auipc	a5,0001EF76
	sw	a4,a5,+0000066C
	jal	zero,00000000230A7EFC

l230A82C4:
	slli	a3,s4,00000014
	bne	a3,zero,00000000230A7EFC

l230A82CC:
	lw	s0,s3,+00000008
	add	s5,s7,s5
	ori	s5,s5,+00000001
	sw	s5,s0,+00000004
	jal	zero,00000000230A7FC4

l230A82E0:
	auipc	a5,0001EF67
	sw	s6,a5,+00000A20
	jal	zero,00000000230A7F18

l230A82EC:
	addi	s0,s6,+00000000
	jal	zero,00000000230A7FC4

l230A82F4:
	addi	a5,zero,+00000001
	sw	a5,s6,+00000004
	jal	zero,00000000230A819C

l230A8300:
	addi	a4,zero,+00000154
	bltu	a4,a5,00000000230A8368

l230A8308:
	srli	a5,a1,0000000F
	addi	a3,a5,+00000078
	addi	a4,a5,+00000077
	slli	a3,a3,00000003
	jal	zero,00000000230A8050

l230A831C:
	addi	a4,zero,+00000554
	bltu	a4,a5,00000000230A8384

l230A8324:
	srli	a5,s1,00000012
	addi	a2,a5,+0000007D
	addi	a0,a5,+0000007C
	slli	a3,a2,00000003
	jal	zero,00000000230A7C4C

l230A8338:
	addi	s8,s8,-00000008
	add	s5,s5,s8
	sub	s5,s5,s6
	addi	s4,zero,+00000000
	jal	zero,00000000230A7F64

l230A834C:
	addi	a1,s0,+00000008
	addi	a0,s2,+00000000
	jal	ra,00000000230A6F7C
	lw	s0,s3,+00000008
	lw	a5,s9,+00000000
	lw	s5,s0,+00000004
	jal	zero,00000000230A7FC4

l230A8368:
	addi	a4,zero,+00000554
	bltu	a4,a5,00000000230A8394

l230A8370:
	srli	a5,a1,00000012
	addi	a3,a5,+0000007D
	addi	a4,a5,+0000007C
	slli	a3,a3,00000003
	jal	zero,00000000230A8050

l230A8384:
	addi	a3,zero,+000003F8
	addi	a2,zero,+0000007F
	addi	a0,zero,+0000007E
	jal	zero,00000000230A7C4C

l230A8394:
	addi	a3,zero,+000003F8
	addi	a4,zero,+0000007E
	jal	zero,00000000230A8050

l230A83A0:
	lw	a5,s3,+00000004
	jal	zero,00000000230A81E8

;; _mbtowc_r: 230A83A8
_mbtowc_r proc
	auipc	a5,0001EF66
	addi	a5,a5,+000001D0
	lw	t1,a5,+000000E4
	jalr	zero,t1,+00000000

;; __ascii_mbtowc: 230A83B8
__ascii_mbtowc proc
	beq	a1,zero,00000000230A83D8

l230A83BC:
	beq	a2,zero,00000000230A8400

l230A83C0:
	beq	a3,zero,00000000230A8410

l230A83C4:
	lbu	a5,a2,+00000000
	sw	a5,a1,+00000000
	lbu	a0,a2,+00000000
	sltu	a0,zero,a0
	jalr	zero,ra,+00000000

l230A83D8:
	addi	sp,sp,-00000010
	addi	a1,sp,+0000000C
	beq	a2,zero,00000000230A8408

l230A83E4:
	beq	a3,zero,00000000230A8418

l230A83E8:
	lbu	a5,a2,+00000000
	sw	a5,a1,+00000000
	lbu	a0,a2,+00000000
	sltu	a0,zero,a0

l230A83F8:
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8400:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l230A8408:
	addi	a0,zero,+00000000
	jal	zero,00000000230A83F8

l230A8410:
	addi	a0,zero,-00000002
	jalr	zero,ra,+00000000

l230A8418:
	addi	a0,zero,-00000002
	jal	zero,00000000230A83F8

;; __malloc_lock: 230A8420
;;   Called from:
;;     230A6E68 (in _malloc_trim_r)
;;     230A6F98 (in _free_r)
;;     230A7BB4 (in _malloc_r)
;;     230A7C20 (in _malloc_r)
;;     230A8464 (in _realloc_r)
__malloc_lock proc
	jalr	zero,ra,+00000000

;; __malloc_unlock: 230A8424
;;   Called from:
;;     230A6EB4 (in _malloc_trim_r)
;;     230A6F18 (in _malloc_trim_r)
;;     230A7074 (in _free_r)
;;     230A7138 (in _free_r)
;;     230A7C08 (in _malloc_r)
;;     230A7DDC (in _malloc_r)
;;     230A8018 (in _malloc_r)
;;     230A80EC (in _malloc_r)
;;     230A8118 (in _malloc_r)
;;     230A815C (in _malloc_r)
;;     230A81A0 (in _malloc_r)
;;     230A8564 (in _realloc_r)
;;     230A8668 (in _realloc_r)
;;     230A87B8 (in _realloc_r)
;;     230A8814 (in _realloc_r)
__malloc_unlock proc
	jalr	zero,ra,+00000000

;; _realloc_r: 230A8428
;;   Called from:
;;     230A7708 (in __sfvwrite_r)
_realloc_r proc
	addi	sp,sp,-00000030
	sw	s3,sp,+0000001C
	sw	ra,sp,+0000002C
	sw	s0,sp,+00000028
	sw	s1,sp,+00000024
	sw	s2,sp,+00000020
	sw	s4,sp,+00000018
	sw	s5,sp,+00000014
	sw	s6,sp,+00000010
	sw	s7,sp,+0000000C
	sw	s8,sp,+00000008
	addi	s3,a2,+00000000
	beq	a1,zero,00000000230A8690

l230A845C:
	addi	s6,a1,+00000000
	addi	s5,a0,+00000000
	jal	ra,00000000230A8420
	addi	s0,s3,+0000000B
	addi	a5,zero,+00000016
	bgeu	a5,s0,00000000230A856C

l230A8474:
	andi	s0,s0,-00000008
	addi	a4,s0,+00000000
	blt	s0,zero,00000000230A8578

l230A8480:
	bltu	s0,s3,00000000230A8578

l230A8484:
	lw	a5,s6,-00000004
	addi	s2,s6,-00000008
	andi	s1,a5,-00000004
	add	s4,s2,s1
	bge	s1,a4,00000000230A863C

l230A8498:
	auipc	a3,0001EF66
	addi	a3,a3,+0000024C
	lw	a2,a3,+00000008
	lw	a3,s4,+00000004
	beq	a2,s4,00000000230A86F4

l230A84AC:
	andi	a2,a3,-00000002
	add	a2,s4,a2
	lw	a2,a2,+00000004
	andi	a2,a2,+00000001
	bne	a2,zero,00000000230A8674

l230A84C0:
	andi	a3,a3,-00000004
	add	a2,s1,a3
	bge	a2,a4,00000000230A881C

l230A84CC:
	andi	a5,a5,+00000001
	bne	a5,zero,00000000230A84F8

l230A84D4:
	lw	s8,s6,-00000008
	sub	s8,s2,s8
	lw	a5,s8,+00000004
	andi	a5,a5,-00000004
	add	a3,a5,a3
	add	s7,a3,s1
	bge	s7,a4,00000000230A85B8

l230A84F0:
	add	s7,s1,a5
	bge	s7,a4,00000000230A884C

l230A84F8:
	addi	a1,s3,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A7B6C
	addi	s3,a0,+00000000
	beq	a0,zero,00000000230A8560

l230A850C:
	lw	a5,s6,-00000004
	addi	a4,a0,-00000008
	andi	a5,a5,-00000002
	add	a5,s2,a5
	beq	a5,a4,00000000230A8838

l230A8520:
	addi	a2,s1,-00000004
	addi	a5,zero,+00000024
	bltu	a5,a2,00000000230A88C4

l230A852C:
	addi	a4,zero,+00000013
	lw	a3,s6,+00000000
	bltu	a4,a2,00000000230A87C0

l230A8538:
	addi	a5,a0,+00000000
	addi	a4,s6,+00000000

l230A8540:
	sw	a3,a5,+00000000
	lw	a3,a4,+00000004
	sw	a3,a5,+00000004
	lw	a4,a4,+00000008
	sw	a4,a5,+00000008

l230A8554:
	addi	a1,s6,+00000000
	addi	a0,s5,+00000000
	jal	ra,00000000230A6F7C

l230A8560:
	addi	a0,s5,+00000000
	jal	ra,00000000230A8424
	jal	zero,00000000230A8584

l230A856C:
	addi	s0,zero,+00000010
	addi	a4,zero,+00000010
	bgeu	s0,s3,00000000230A8484

l230A8578:
	addi	a5,zero,+0000000C
	sw	a5,s5,+00000000
	addi	s3,zero,+00000000

l230A8584:
	lw	ra,sp,+0000002C
	lw	s0,sp,+00000028
	addi	a0,s3,+00000000
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	lw	s8,sp,+00000008
	addi	sp,sp,+00000030
	jalr	zero,ra,+00000000

l230A85B8:
	lw	a5,s4,+0000000C
	lw	a4,s4,+00000008
	addi	a2,s1,-00000004
	addi	a3,zero,+00000024
	sw	a5,a4,+0000000C
	sw	a4,a5,+00000008
	lw	a4,s8,+00000008
	lw	a5,s8,+0000000C
	addi	s3,s8,+00000008
	add	s4,s8,s7
	sw	a5,a4,+0000000C
	sw	a4,a5,+00000008
	bltu	a3,a2,00000000230A88D0

l230A85EC:
	addi	a3,zero,+00000013
	lw	a4,s6,+00000000
	addi	a5,s3,+00000000
	bgeu	a3,a2,00000000230A861C

l230A85FC:
	sw	a4,s8,+00000008
	lw	a4,s6,+00000004
	addi	a5,zero,+0000001B
	sw	a4,s8,+0000000C
	lw	a4,s6,+00000008
	bltu	a5,a2,00000000230A8954

l230A8614:
	addi	a5,s8,+00000010
	addi	s6,s6,+00000008

l230A861C:
	sw	a4,a5,+00000000
	lw	a4,s6,+00000004
	addi	s1,s7,+00000000
	addi	s2,s8,+00000000
	sw	a4,a5,+00000004
	lw	a4,s6,+00000008
	addi	s6,s3,+00000000
	sw	a4,a5,+00000008

l230A863C:
	lw	a2,s2,+00000004
	sub	a5,s1,s0
	addi	a4,zero,+0000000F
	andi	a2,a2,+00000001
	bltu	a4,a5,00000000230A86C4

l230A8650:
	or	a2,s1,a2
	sw	a2,s2,+00000004
	lw	a5,s4,+00000004
	ori	a5,a5,+00000001
	sw	a5,s4,+00000004

l230A8664:
	addi	a0,s5,+00000000
	jal	ra,00000000230A8424
	addi	s3,s6,+00000000
	jal	zero,00000000230A8584

l230A8674:
	andi	a5,a5,+00000001
	bne	a5,zero,00000000230A84F8

l230A867C:
	lw	s8,s6,-00000008
	sub	s8,s2,s8
	lw	a5,s8,+00000004
	andi	a5,a5,-00000004
	jal	zero,00000000230A84F0

l230A8690:
	lw	s0,sp,+00000028
	lw	ra,sp,+0000002C
	lw	s1,sp,+00000024
	lw	s2,sp,+00000020
	lw	s3,sp,+0000001C
	lw	s4,sp,+00000018
	lw	s5,sp,+00000014
	lw	s6,sp,+00000010
	lw	s7,sp,+0000000C
	lw	s8,sp,+00000008
	addi	a1,a2,+00000000
	addi	sp,sp,+00000030
	jal	zero,00000000230A7B6C

l230A86C4:
	or	a2,a2,s0
	sw	a2,s2,+00000004
	add	a1,s2,s0
	ori	a5,a5,+00000001
	sw	a5,a1,+00000004
	lw	a5,s4,+00000004
	addi	a1,a1,+00000008
	addi	a0,s5,+00000000
	ori	a5,a5,+00000001
	sw	a5,s4,+00000004
	jal	ra,00000000230A6F7C
	jal	zero,00000000230A8664

l230A86F4:
	andi	a3,a3,-00000004
	add	a2,s1,a3
	addi	a1,s0,+00000010
	bge	a2,a1,00000000230A87E4

l230A8704:
	andi	a5,a5,+00000001
	bne	a5,zero,00000000230A84F8

l230A870C:
	lw	s8,s6,-00000008
	sub	s8,s2,s8
	lw	a5,s8,+00000004
	andi	a5,a5,-00000004
	add	a3,a5,a3
	add	s4,a3,s1
	blt	s4,a1,00000000230A84F0

l230A8728:
	lw	a5,s8,+0000000C
	lw	a4,s8,+00000008
	addi	a2,s1,-00000004
	addi	a3,zero,+00000024
	sw	a5,a4,+0000000C
	sw	a4,a5,+00000008
	addi	s3,s8,+00000008
	bltu	a3,a2,00000000230A8978

l230A8748:
	addi	a1,zero,+00000013
	lw	a4,s6,+00000000
	addi	a5,s3,+00000000
	bgeu	a1,a2,00000000230A8778

l230A8758:
	sw	a4,s8,+00000008
	lw	a4,s6,+00000004
	addi	a5,zero,+0000001B
	sw	a4,s8,+0000000C
	bltu	a5,a2,00000000230A89C4

l230A876C:
	lw	a4,s6,+00000008
	addi	a5,s8,+00000010
	addi	s6,s6,+00000008

l230A8778:
	sw	a4,a5,+00000000
	lw	a4,s6,+00000004
	sw	a4,a5,+00000004
	lw	a4,s6,+00000008
	sw	a4,a5,+00000008

l230A878C:
	add	a4,s8,s0
	sub	a5,s4,s0
	auipc	a3,0001EF66
	sw	a4,a3,+00000F58
	ori	a5,a5,+00000001
	sw	a5,a4,+00000004
	lw	a5,s8,+00000004
	addi	a0,s5,+00000000
	andi	a5,a5,+00000001
	or	s0,a5,s0
	sw	s0,s8,+00000004
	jal	ra,00000000230A8424
	jal	zero,00000000230A8584

l230A87C0:
	sw	a3,a0,+00000000
	lw	a3,s6,+00000004
	addi	a4,zero,+0000001B
	sw	a3,a0,+00000004
	bltu	a4,a2,00000000230A88EC

l230A87D4:
	addi	a4,s6,+00000008
	addi	a5,a0,+00000008
	lw	a3,s6,+00000008
	jal	zero,00000000230A8540

l230A87E4:
	add	s2,s2,s0
	sub	a5,a2,s0
	auipc	a4,0001EF66
	sw	s2,a4,+00000F00
	ori	a5,a5,+00000001
	sw	a5,s2,+00000004
	lw	a5,s6,-00000004
	addi	a0,s5,+00000000
	addi	s3,s6,+00000000
	andi	a5,a5,+00000001
	or	s0,a5,s0
	sw	s0,s6,+00000FFC
	jal	ra,00000000230A8424
	jal	zero,00000000230A8584

l230A881C:
	lw	a5,s4,+0000000C
	lw	a4,s4,+00000008
	addi	s1,a2,+00000000
	add	s4,s2,a2
	sw	a5,a4,+0000000C
	sw	a4,a5,+00000008
	jal	zero,00000000230A863C

l230A8838:
	lw	a5,a0,-00000004
	andi	a5,a5,-00000004
	add	s1,s1,a5
	add	s4,s2,s1
	jal	zero,00000000230A863C

l230A884C:
	lw	a4,s8,+0000000C
	lw	a3,s8,+00000008
	addi	a2,s1,-00000004
	addi	a1,zero,+00000024
	sw	a4,a3,+0000000C
	sw	a3,a4,+00000008
	addi	s3,s8,+00000008
	add	s4,s8,s7
	bltu	a1,a2,00000000230A88D0

l230A8870:
	addi	a0,zero,+00000013
	lw	a3,s6,+00000000
	addi	a4,s3,+00000000
	bgeu	a0,a2,00000000230A88A0

l230A8880:
	sw	a3,s8,+00000008
	lw	a4,s6,+00000004
	addi	a5,zero,+0000001B
	sw	a4,s8,+0000000C
	bltu	a5,a2,00000000230A8930

l230A8894:
	lw	a3,s6,+00000008
	addi	a4,s8,+00000010
	addi	s6,s6,+00000008

l230A88A0:
	sw	a3,a4,+00000000
	lw	a3,s6,+00000004
	addi	s1,s7,+00000000
	addi	s2,s8,+00000000
	sw	a3,a4,+00000004
	lw	a5,s6,+00000008
	addi	s6,s3,+00000000
	sw	a5,a4,+00000008
	jal	zero,00000000230A863C

l230A88C4:
	addi	a1,s6,+00000000
	jal	ra,00000000230A3948
	jal	zero,00000000230A8554

l230A88D0:
	addi	a1,s6,+00000000
	addi	a0,s3,+00000000
	jal	ra,00000000230A3948
	addi	s6,s3,+00000000
	addi	s1,s7,+00000000
	addi	s2,s8,+00000000
	jal	zero,00000000230A863C

l230A88EC:
	lw	a4,s6,+00000008
	sw	a4,a0,+00000008
	lw	a4,s6,+0000000C
	sw	a4,a0,+0000000C
	beq	a2,a5,00000000230A8910

l230A8900:
	addi	a4,s6,+00000010
	addi	a5,a0,+00000010
	lw	a3,s6,+00000010
	jal	zero,00000000230A8540

l230A8910:
	lw	a3,s6,+00000010
	addi	a4,s6,+00000018
	addi	a5,a0,+00000018
	sw	a3,a0,+00000010
	lw	a3,s6,+00000014
	sw	a3,a0,+00000014
	lw	a3,s6,+00000018
	jal	zero,00000000230A8540

l230A8930:
	lw	a5,s6,+00000008
	sw	a5,s8,+00000010
	lw	a5,s6,+0000000C
	sw	a5,s8,+00000014
	beq	a2,a1,00000000230A8988

l230A8944:
	lw	a3,s6,+00000010
	addi	a4,s8,+00000018
	addi	s6,s6,+00000010
	jal	zero,00000000230A88A0

l230A8954:
	sw	a4,s8,+00000010
	lw	a4,s6,+0000000C
	addi	a5,zero,+00000024
	sw	a4,s8,+00000014
	lw	a4,s6,+00000010
	beq	a2,a5,00000000230A89A8

l230A896C:
	addi	a5,s8,+00000018
	addi	s6,s6,+00000010
	jal	zero,00000000230A861C

l230A8978:
	addi	a1,s6,+00000000
	addi	a0,s3,+00000000
	jal	ra,00000000230A3948
	jal	zero,00000000230A878C

l230A8988:
	lw	a5,s6,+00000010
	addi	a4,s8,+00000020
	addi	s6,s6,+00000018
	sw	a5,s8,+00000018
	lw	a5,s6,-00000004
	sw	a5,s8,+0000001C
	lw	a3,s6,+00000000
	jal	zero,00000000230A88A0

l230A89A8:
	sw	a4,s8,+00000018
	lw	a4,s6,+00000014
	addi	a5,s8,+00000020
	addi	s6,s6,+00000018
	sw	a4,s8,+0000001C
	lw	a4,s6,+00000000
	jal	zero,00000000230A861C

l230A89C4:
	lw	a5,s6,+00000008
	sw	a5,s8,+00000010
	lw	a5,s6,+0000000C
	sw	a5,s8,+00000014
	lw	a4,s6,+00000010
	beq	a2,a3,00000000230A89E8

l230A89DC:
	addi	a5,s8,+00000018
	addi	s6,s6,+00000010
	jal	zero,00000000230A8778

l230A89E8:
	sw	a4,s8,+00000018
	lw	a4,s6,+00000014
	addi	a5,s8,+00000020
	addi	s6,s6,+00000018
	sw	a4,s8,+0000001C
	lw	a4,s6,+00000000
	jal	zero,00000000230A8778

;; _sbrk_r: 230A8A04
;;   Called from:
;;     230A6EA0 (in _malloc_trim_r)
;;     230A6EE0 (in _malloc_trim_r)
;;     230A6F44 (in _malloc_trim_r)
;;     230A7EC8 (in _malloc_r)
;;     230A7F50 (in _malloc_r)
;;     230A825C (in _malloc_r)
_sbrk_r proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a0,+00000000
	addi	a0,a1,+00000000
	auipc	a5,0001EF7E
	sw	zero,a5,+00000D94
	sw	ra,sp,+0000000C
	jal	ra,00000000230A94A0
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8A3C

l230A8A2C:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8A3C:
	auipc	a5,0001EF7E
	addi	a5,a5,-00000294
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A8A2C

l230A8A4C:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _stat_r: 230A8A60
;;   Called from:
;;     230A5018 (in stat)
_stat_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF7E
	sw	zero,a5,+00000D2C
	jal	ra,00000000230A954C
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8AA0

l230A8A90:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8AA0:
	auipc	a5,0001EF7E
	addi	a5,a5,-000002F8
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A8A90

l230A8AB0:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; __sread: 230A8AC4
__sread proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a1,+00000000
	lh	a1,a1,+0000000E
	sw	ra,sp,+0000000C
	jal	ra,00000000230A9220
	blt	a0,zero,00000000230A8AFC

l230A8AE0:
	lw	a5,s0,+00000050
	lw	ra,sp,+0000000C
	add	a5,a5,a0
	sw	a5,s0,+00000050
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8AFC:
	lhu	a5,s0,+0000000C
	lui	a4,000FFFFF
	addi	a4,a4,-00000001
	and	a5,a5,a4
	sh	a5,s0,+0000000C
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; __seofread: 230A8B20
__seofread proc
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; __swrite: 230A8B28
__swrite proc
	lh	a5,a1,+0000000C
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	s3,sp,+0000000C
	sw	ra,sp,+0000001C
	andi	a4,a5,+00000100
	addi	s0,a1,+00000000
	addi	s1,a0,+00000000
	addi	s2,a2,+00000000
	addi	s3,a3,+00000000
	lh	a1,a1,+0000000E
	bne	a4,zero,00000000230A8B98

l230A8B60:
	lui	a4,000FFFFF
	addi	a4,a4,-00000001
	and	a5,a5,a4
	sh	a5,s0,+0000000C
	lw	s0,sp,+00000018
	lw	ra,sp,+0000001C
	addi	a3,s3,+00000000
	addi	a2,s2,+00000000
	lw	s3,sp,+0000000C
	lw	s2,sp,+00000010
	addi	a0,s1,+00000000
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jal	zero,00000000230A8F10

l230A8B98:
	addi	a3,zero,+00000002
	addi	a2,zero,+00000000
	jal	ra,00000000230A91B8
	lh	a5,s0,+0000000C
	lh	a1,s0,+0000000E
	jal	zero,00000000230A8B60

;; __sseek: 230A8BB0
__sseek proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a1,+00000000
	lh	a1,a1,+0000000E
	sw	ra,sp,+0000000C
	jal	ra,00000000230A91B8
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8BF4

l230A8BD0:
	lhu	a5,s0,+0000000C
	lui	a4,00000001
	sw	a0,s0,+00000050
	or	a5,a5,a4
	sh	a5,s0,+0000000C
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8BF4:
	lhu	a5,s0,+0000000C
	lui	a4,000FFFFF
	addi	a4,a4,-00000001
	and	a5,a5,a4
	sh	a5,s0,+0000000C
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; __sclose: 230A8C18
__sclose proc
	lh	a1,a1,+0000000E
	jal	zero,00000000230A8F78

;; __swbuf_r: 230A8C20
;;   Called from:
;;     230A6D3C (in __fputwc)
;;     230A8DB8 (in __swbuf)
__swbuf_r proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	sw	s2,sp,+00000010
	sw	ra,sp,+0000001C
	sw	s3,sp,+0000000C
	addi	s2,a0,+00000000
	addi	s1,a1,+00000000
	addi	s0,a2,+00000000
	beq	a0,zero,00000000230A8C50

l230A8C48:
	lw	a5,a0,+00000038
	beq	a5,zero,00000000230A8D9C

l230A8C50:
	lh	a4,s0,+0000000C
	lw	a5,s0,+00000018
	slli	a3,a4,00000010
	srli	a3,a3,00000010
	sw	a5,s0,+00000008
	andi	a5,a3,+00000008
	beq	a5,zero,00000000230A8CEC

l230A8C6C:
	lw	a5,s0,+00000010
	beq	a5,zero,00000000230A8CEC

l230A8C74:
	slli	a2,a3,00000012
	andi	s3,s1,+000000FF
	andi	s1,s1,+000000FF
	bge	a2,zero,00000000230A8D1C

l230A8C84:
	lw	a4,s0,+00000000
	lw	a3,s0,+00000014
	sub	a5,a4,a5
	bge	a5,a3,00000000230A8D4C

l230A8C94:
	lw	a3,s0,+00000008
	addi	a2,a4,+00000001
	sw	a2,s0,+00000000
	addi	a3,a3,-00000001
	sw	a3,s0,+00000008
	sb	s3,a4,+00000000
	lw	a4,s0,+00000014
	addi	a5,a5,+00000001
	beq	a4,a5,00000000230A8D84

l230A8CB8:
	lhu	a5,s0,+0000000C
	andi	a5,a5,+00000001
	beq	a5,zero,00000000230A8CCC

l230A8CC4:
	addi	a5,zero,+0000000A
	beq	s1,a5,00000000230A8D84

l230A8CCC:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	addi	a0,s1,+00000000
	lw	s2,sp,+00000010
	lw	s1,sp,+00000014
	lw	s3,sp,+0000000C
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A8CEC:
	addi	a1,s0,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A648C
	bne	a0,zero,00000000230A8D94

l230A8CFC:
	lh	a4,s0,+0000000C
	andi	s3,s1,+000000FF
	lw	a5,s0,+00000010
	slli	a3,a4,00000010
	srli	a3,a3,00000010
	slli	a2,a3,00000012
	andi	s1,s1,+000000FF
	blt	a2,zero,00000000230A8C84

l230A8D1C:
	lw	a3,s0,+00000064
	lui	a2,00000002
	or	a4,a4,a2
	lui	a2,000FFFFE
	addi	a2,a2,-00000001
	and	a3,a3,a2
	sh	a4,s0,+0000000C
	lw	a4,s0,+00000000
	sw	a3,s0,+00000064
	lw	a3,s0,+00000014
	sub	a5,a4,a5
	blt	a5,a3,00000000230A8C94

l230A8D4C:
	addi	a1,s0,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A6854
	bne	a0,zero,00000000230A8D94

l230A8D5C:
	lw	a4,s0,+00000000
	lw	a3,s0,+00000008
	addi	a5,zero,+00000001
	addi	a2,a4,+00000001
	addi	a3,a3,-00000001
	sw	a2,s0,+00000000
	sw	a3,s0,+00000008
	sb	s3,a4,+00000000
	lw	a4,s0,+00000014
	bne	a4,a5,00000000230A8CB8

l230A8D84:
	addi	a1,s0,+00000000
	addi	a0,s2,+00000000
	jal	ra,00000000230A6854
	beq	a0,zero,00000000230A8CCC

l230A8D94:
	addi	s1,zero,-00000001
	jal	zero,00000000230A8CCC

l230A8D9C:
	jal	ra,00000000230A6C10
	jal	zero,00000000230A8C50

;; __swbuf: 230A8DA4
__swbuf proc
	auipc	a5,0001EF66
	addi	a5,a5,-000000A8
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A8C20

;; _wcrtomb_r: 230A8DBC
;;   Called from:
;;     230A6CC8 (in __fputwc)
_wcrtomb_r proc
	addi	sp,sp,-00000020
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	auipc	a5,0001EF65
	addi	a5,a5,+000007B0
	sw	ra,sp,+0000001C
	addi	s0,a0,+00000000
	addi	s1,a3,+00000000
	lw	a5,a5,+000000E0
	beq	a1,zero,00000000230A8E04

l230A8DE4:
	jalr	ra,a5,+00000000
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8E18

l230A8DF0:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A8E04:
	addi	a2,zero,+00000000
	addi	a1,sp,+00000004
	jalr	ra,a5,+00000000
	addi	a5,zero,-00000001
	bne	a0,a5,00000000230A8DF0

l230A8E18:
	sw	zero,s1,+00000000
	addi	a5,zero,+0000008A
	sw	a5,s0,+00000000
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

;; wcrtomb: 230A8E38
wcrtomb proc
	addi	sp,sp,-00000020
	auipc	a5,0001EF66
	addi	a5,a5,-00000140
	sw	s0,sp,+00000018
	sw	s1,sp,+00000014
	lw	s0,a5,+00000000
	sw	ra,sp,+0000001C
	auipc	a5,0001EF65
	addi	a5,a5,+00000724
	addi	s1,a2,+00000000
	lw	a5,a5,+000000E0
	addi	a3,a2,+00000000
	beq	a0,zero,00000000230A8E98

l230A8E6C:
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	addi	a0,s0,+00000000
	jalr	ra,a5,+00000000
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8EB0

l230A8E84:
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

l230A8E98:
	addi	a2,zero,+00000000
	addi	a1,sp,+00000004
	addi	a0,s0,+00000000
	jalr	ra,a5,+00000000
	addi	a5,zero,-00000001
	bne	a0,a5,00000000230A8E84

l230A8EB0:
	sw	zero,s1,+00000000
	addi	a5,zero,+0000008A
	sw	a5,s0,+00000000
	lw	ra,sp,+0000001C
	lw	s0,sp,+00000018
	lw	s1,sp,+00000014
	addi	sp,sp,+00000020
	jalr	zero,ra,+00000000

;; _wctomb_r: 230A8ED0
_wctomb_r proc
	auipc	a5,0001EF65
	addi	a5,a5,+000006A8
	lw	t1,a5,+000000E0
	jalr	zero,t1,+00000000

;; __ascii_wctomb: 230A8EE0
__ascii_wctomb proc
	beq	a1,zero,00000000230A8F08

l230A8EE4:
	addi	a5,zero,+000000FF
	bltu	a5,a2,00000000230A8EF8

l230A8EEC:
	sb	a2,a1,+00000000
	addi	a0,zero,+00000001
	jalr	zero,ra,+00000000

l230A8EF8:
	addi	a5,zero,+0000008A
	sw	a5,a0,+00000000
	addi	a0,zero,-00000001
	jalr	zero,ra,+00000000

l230A8F08:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; _write_r: 230A8F10
;;   Called from:
;;     230A8B94 (in __swrite)
_write_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a2,a3,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF7E
	sw	zero,a5,+00000878
	jal	ra,00000000230A95BC
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8F54

l230A8F44:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8F54:
	auipc	a5,0001EF7E
	addi	a5,a5,-000007AC
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A8F44

l230A8F64:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _close_r: 230A8F78
;;   Called from:
;;     230A8C1C (in __sclose)
_close_r proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a0,+00000000
	addi	a0,a1,+00000000
	auipc	a5,0001EF7E
	sw	zero,a5,+00000820
	sw	ra,sp,+0000000C
	jal	ra,00000000230A9288
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A8FB0

l230A8FA0:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A8FB0:
	auipc	a5,0001EF7D
	addi	a5,a5,+000007F8
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A8FA0

l230A8FC0:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _fclose_r: 230A8FD4
;;   Called from:
;;     230A90F4 (in fclose)
_fclose_r proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	s2,sp,+00000000
	beq	a1,zero,00000000230A9008

l230A8FEC:
	addi	s1,a0,+00000000
	addi	s0,a1,+00000000
	beq	a0,zero,00000000230A9000

l230A8FF8:
	lw	a5,a0,+00000038
	beq	a5,zero,00000000230A90B4

l230A9000:
	lh	a5,s0,+0000000C
	bne	a5,zero,00000000230A9028

l230A9008:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	s2,zero,+00000000
	addi	a0,s2,+00000000
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A9028:
	addi	a1,s0,+00000000
	addi	a0,s1,+00000000
	jal	ra,00000000230A65F8
	lw	a5,s0,+0000002C
	addi	s2,a0,+00000000
	beq	a5,zero,00000000230A9050

l230A9040:
	lw	a1,s0,+0000001C
	addi	a0,s1,+00000000
	jalr	ra,a5,+00000000
	blt	a0,zero,00000000230A90C4

l230A9050:
	lhu	a5,s0,+0000000C
	andi	a5,a5,+00000080
	bne	a5,zero,00000000230A90D4

l230A905C:
	lw	a1,s0,+00000030
	beq	a1,zero,00000000230A9078

l230A9064:
	addi	a5,s0,+00000040
	beq	a1,a5,00000000230A9074

l230A906C:
	addi	a0,s1,+00000000
	jal	ra,00000000230A6F7C

l230A9074:
	sw	zero,s0,+00000030

l230A9078:
	lw	a1,s0,+00000044
	beq	a1,zero,00000000230A908C

l230A9080:
	addi	a0,s1,+00000000
	jal	ra,00000000230A6F7C
	sw	zero,s0,+00000044

l230A908C:
	jal	ra,00000000230A6C20
	sh	zero,s0,+0000000C
	jal	ra,00000000230A6C24
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a0,s2,+00000000
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A90B4:
	jal	ra,00000000230A6C10
	lh	a5,s0,+0000000C
	beq	a5,zero,00000000230A9008

l230A90C0:
	jal	zero,00000000230A9028

l230A90C4:
	lhu	a5,s0,+0000000C
	addi	s2,zero,-00000001
	andi	a5,a5,+00000080
	beq	a5,zero,00000000230A905C

l230A90D4:
	lw	a1,s0,+00000010
	addi	a0,s1,+00000000
	jal	ra,00000000230A6F7C
	jal	zero,00000000230A905C

;; fclose: 230A90E4
fclose proc
	auipc	a5,0001EF66
	addi	a5,a5,-000003E8
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,00000000230A8FD4

;; _fstat_r: 230A90F8
;;   Called from:
;;     230A79A8 (in __swhatbuf_r)
_fstat_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF7D
	sw	zero,a5,+00000694
	jal	ra,00000000230A9324
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A9138

l230A9128:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A9138:
	auipc	a5,0001EF7D
	addi	a5,a5,+00000670
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A9128

l230A9148:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _isatty_r: 230A915C
;;   Called from:
;;     230A7B44 (in __smakebuf_r)
_isatty_r proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a0,+00000000
	addi	a0,a1,+00000000
	auipc	a5,0001EF7D
	sw	zero,a5,+0000063C
	sw	ra,sp,+0000000C
	jal	ra,00000000230A939C
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A9194

l230A9184:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A9194:
	auipc	a5,0001EF7D
	addi	a5,a5,+00000614
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A9184

l230A91A4:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _lseek_r: 230A91B8
;;   Called from:
;;     230A8BA0 (in __swrite)
;;     230A8BC4 (in __sseek)
_lseek_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a2,a3,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF7D
	sw	zero,a5,+000005D0
	jal	ra,00000000230A9400
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A91FC

l230A91EC:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A91FC:
	auipc	a5,0001EF7D
	addi	a5,a5,+000005AC
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A91EC

l230A920C:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _read_r: 230A9220
;;   Called from:
;;     230A8AD8 (in __sread)
_read_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a2,a3,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EF7D
	sw	zero,a5,+00000568
	jal	ra,00000000230A9450
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A9264

l230A9254:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A9264:
	auipc	a5,0001EF7D
	addi	a5,a5,+00000544
	lw	a5,a5,+00000000
	beq	a5,zero,00000000230A9254

l230A9274:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _close: 230A9288
;;   Called from:
;;     230A8F94 (in _close_r)
_close proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	addi	a1,zero,+00000000
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+00000039
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,00000000230A92CC

l230A92B8:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A92CC:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A92B8

;; _exit: 230A92E0
;;   Called from:
;;     230A35A8 (in abort)
_exit proc
	addi	a1,zero,+00000000
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+0000005D
	ecall
	blt	a0,zero,00000000230A9304

l230A9300:
	jal	zero,00000000230A9300

l230A9304:
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	s0,a0,+00000000
	sw	ra,sp,+0000000C
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000

l230A9320:
	jal	zero,00000000230A9320

;; _fstat: 230A9324
;;   Called from:
;;     230A911C (in _fstat_r)
;;     230A93A8 (in _isatty)
_fstat proc
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
	addi	a7,zero,+00000050
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,00000000230A9380

l230A935C:
	addi	a0,s1,+00000000
	addi	a1,sp,+00000000
	jal	ra,00000000230A960C
	addi	a0,s0,+00000000
	lw	ra,sp,+0000008C
	lw	s0,sp,+00000088
	lw	s1,sp,+00000084
	addi	sp,sp,+00000090
	jalr	zero,ra,+00000000

l230A9380:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A935C

;; _getpid: 230A9394
;;   Called from:
;;     230A3E84 (in _getpid_r)
_getpid proc
	addi	a0,zero,+00000001
	jalr	zero,ra,+00000000

;; _isatty: 230A939C
;;   Called from:
;;     230A9178 (in _isatty_r)
_isatty proc
	addi	sp,sp,-00000070
	addi	a1,sp,+00000008
	sw	ra,sp,+0000006C
	jal	ra,00000000230A9324
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A93CC

l230A93B4:
	lw	a0,sp,+0000000C
	lw	ra,sp,+0000006C
	srli	a0,a0,0000000D
	andi	a0,a0,+00000001
	addi	sp,sp,+00000070
	jalr	zero,ra,+00000000

l230A93CC:
	lw	ra,sp,+0000006C
	addi	a0,zero,+00000000
	addi	sp,sp,+00000070
	jalr	zero,ra,+00000000

;; _kill: 230A93DC
;;   Called from:
;;     230A3E44 (in _kill_r)
_kill proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	jal	ra,00000000230A3630
	lw	ra,sp,+0000000C
	addi	a5,zero,+00000016
	sw	a5,a0,+00000000
	addi	a0,zero,-00000001
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _lseek: 230A9400
;;   Called from:
;;     230A91E0 (in _lseek_r)
_lseek proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+0000003E
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,00000000230A943C

l230A9428:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A943C:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A9428

;; _read: 230A9450
;;   Called from:
;;     230A9248 (in _read_r)
_read proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+0000003F
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,00000000230A948C

l230A9478:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A948C:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A9478

;; _sbrk: 230A94A0
;;   Called from:
;;     230A8A20 (in _sbrk_r)
_sbrk proc
	auipc	t1,0001EF66
	addi	t1,t1,+00000294
	lw	a5,t1,+00000000
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	addi	a6,a0,+00000000
	bne	a5,zero,00000000230A94EC

l230A94BC:
	addi	a0,zero,+00000000
	addi	a1,zero,+00000000
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a7,zero,+000000D6
	ecall
	addi	a5,zero,-00000001
	beq	a0,a5,00000000230A9530

l230A94E0:
	addi	a5,a0,+00000000
	auipc	a4,0001EF66
	sw	a0,a4,+00000250

l230A94EC:
	add	a0,a6,a5
	addi	a1,zero,+00000000
	addi	a2,zero,+00000000
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+000000D6
	ecall
	lw	a5,t1,+00000000
	add	a6,a6,a5
	bne	a0,a6,00000000230A9530

l230A9518:
	lw	ra,sp,+0000000C
	auipc	a4,0001EF66
	sw	a0,a4,+00000218
	addi	a0,a5,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A9530:
	jal	ra,00000000230A3630
	lw	ra,sp,+0000000C
	addi	a5,zero,+0000000C
	sw	a5,a0,+00000000
	addi	a0,zero,-00000001
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _stat: 230A954C
;;   Called from:
;;     230A8A84 (in _stat_r)
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
	blt	a0,zero,00000000230A95A8

l230A9584:
	addi	a0,s1,+00000000
	addi	a1,sp,+00000000
	jal	ra,00000000230A960C
	addi	a0,s0,+00000000
	lw	ra,sp,+0000008C
	lw	s0,sp,+00000088
	lw	s1,sp,+00000084
	addi	sp,sp,+00000090
	jalr	zero,ra,+00000000

l230A95A8:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A9584

;; _write: 230A95BC
;;   Called from:
;;     230A8F38 (in _write_r)
_write proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	addi	a3,zero,+00000000
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	addi	a7,zero,+00000040
	ecall
	addi	s0,a0,+00000000
	blt	a0,zero,00000000230A95F8

l230A95E4:
	addi	a0,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l230A95F8:
	sub	s0,zero,s0
	jal	ra,00000000230A3630
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,00000000230A95E4

;; _conv_stat: 230A960C
;;   Called from:
;;     230A9364 (in _fstat)
;;     230A958C (in _stat)
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
